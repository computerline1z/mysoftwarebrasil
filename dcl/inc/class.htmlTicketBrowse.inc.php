<?php
/*
 * $Id: class.htmlTicketBrowse.inc.php 105 2008-03-03 02:48:17Z mdean $
 *
 * This file is part of Double Choco Latte.
 * Copyright (C) 1999-2004 Free Software Foundation
 *
 * Double Choco Latte is free software; you can redistribute it and/or
 * modify it under the terms of the GNU General Public License
 * as published by the Free Software Foundation; either version 2
 * of the License, or (at your option) any later version.
 *
 * Double Choco Latte is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.
 *
 * Select License Info from the Help menu to view the terms and conditions of this license.
 */

LoadStringResource('vw');
LoadStringResource('tck');
class htmlTicketBrowse
{
	var $sPagingMenuAction;
	var $oView;
	var $oDB;
	
	function htmlTicketBrowse()
	{
		$this->sPagingMenuAction = 'htmlTicketBrowse.Page';
		
		$this->oView = null;
		$this->oDB = CreateObject('dcl.dbTickets');
	}

	function Render(&$oView)
	{
		global $dcl_info, $g_oSec;

		if (!is_object($oView))
		{
			trigger_error('[htmlTicketBrowse::Render] ' . STR_VW_VIEWOBJECTNOTPASSED);
			return;
		}

		if (!$g_oSec->HasAnyPerm(array(DCL_ENTITY_TICKET => array($g_oSec->PermArray(DCL_PERM_VIEW), $g_oSec->PermArray(DCL_PERM_VIEWSUBMITTED), $g_oSec->PermArray(DCL_PERM_VIEWACCOUNT)))))
			return PrintPermissionDenied();

		$this->oView = &$oView;
		
		// Reset start row if filter changes
		if (isset($_REQUEST['filter']) && $_REQUEST['filter'] == 'Filter')
			$oView->startrow = 0;

		if (!$this->_Execute())
			return;

		$oTable = CreateObject('dcl.htmlTable');
		$iEndOffset = 0;
		for ($iColumn = count($oView->groups); $iColumn < $this->oDB->NumFields(); $iColumn++)
		{
			$sFieldName = $this->oDB->GetFieldName($iColumn);
			if ($sFieldName == 'ticketid')
				$oTable->assign('ticket_id_ordinal', $iColumn);
			else if ($sFieldName == '_num_tags_')
			{
				$iEndOffset--;
				$oTable->assign('num_tags_ordinal', $iColumn);
			}
			else if ($sFieldName == 'tag_desc')
			{
				$oTable->assign('tag_ordinal', $iColumn);
			}
		}

		$oTable->setData($this->oDB->FetchAllRows());
		
		for ($iColumn = 0; $iColumn < count($this->oView->groups); $iColumn++)
		{
			$oTable->addGroup($iColumn);
			$oTable->addColumn('');
		}
		
		foreach ($this->oView->columnhdrs as $sColumn)
		{
			$oTable->addColumn($sColumn, 'string');
		}
		
		$aOptions = array('Export' => array('menuAction' => 'boViews.export', 'hasPermission' => true));

		foreach ($aOptions as $sDisplay => $aOption)
		{
			if ($aOption['hasPermission'])
			{
				$oTable->addToolbar($aOption['menuAction'], $sDisplay);
			}
		}

		$oDB = new dclDB;

		$sSQL = $this->oView->GetSQL(true);
		if ($oDB->Query($sSQL) == -1)
			return;

		$oDB->next_record();
		$iRecords = $oDB->f(0);
		$oDB->FreeResult();

		if ($this->oView->numrows > 0)
		{
			if ($iRecords % $this->oView->numrows == 0)
				$oTable->assign('VAL_PAGES', strval($iRecords / $this->oView->numrows));
			else
				$oTable->assign('VAL_PAGES', strval(ceil($iRecords / $this->oView->numrows)));

			$oTable->assign('VAL_PAGE', strval(($this->oView->startrow / $this->oView->numrows) + 1));
		}
		else
		{
			$oTable->assign('VAL_PAGES', '0');
			$oTable->assign('VAL_PAGE', '0');
		}

		$oTable->assign('VAL_ENDOFFSET', $iEndOffset);
		$oTable->assign('VAL_FILTERMENUACTION', $this->sPagingMenuAction);
		$oTable->assign('VAL_FILTERSTARTROW', $this->oView->startrow);
		$oTable->assign('VAL_FILTERNUMROWS', $this->oView->numrows);
		$oTable->assign('VAL_FILTERSTATUS', isset($_REQUEST['filterStatus']) ? $_REQUEST['filterStatus'] : -1);
		$oTable->assign('VAL_FILTERTYPE', isset($_REQUEST['filterType']) ? $_REQUEST['filterType'] : -1);
		$oTable->assign('VAL_FILTERREPORTTO', isset($_REQUEST['filterReportto']) ? $_REQUEST['filterReportto'] : -1);
		$oTable->assign('VAL_FILTERPRODUCT', isset($_REQUEST['filterProduct']) ? $_REQUEST['filterProduct'] : -1);
		$oTable->assign('VAL_VIEWSETTINGS', $this->oView->GetForm());
		$oTable->assign('VAL_ISPUBLIC', $g_oSec->IsPublicUser());

		$oTable->setCaption($this->oView->title);
		$oTable->setShowChecks(false);
		$oTable->sTemplate = 'htmlTableTicket.tpl';
		$oTable->render();
	}

	function Page()
	{
		global $dcl_info, $g_oSec;

		commonHeader();
		if (!$g_oSec->HasAnyPerm(array(DCL_ENTITY_TICKET => array($g_oSec->PermArray(DCL_PERM_VIEW), $g_oSec->PermArray(DCL_PERM_VIEWSUBMITTED), $g_oSec->PermArray(DCL_PERM_VIEWACCOUNT)))))
			return PrintPermissionDenied();

		$oView = CreateObject('dcl.boView');
		$oView->SetFromURL();

		if (IsSet($_REQUEST['jumptopage']) && IsSet($_REQUEST['startrow']) && IsSet($_REQUEST['numrows']))
		{
			$iPage = (int)$_REQUEST['jumptopage'];
			if ($iPage < 1)
				$iPage = 1;

			$oView->startrow = ($iPage - 1) * (int)$_REQUEST['numrows'];

			if ($oView->startrow < 0)
				$oView->startrow = 0;

			$oView->numrows = (int)$_REQUEST['numrows'];
		}
		else
		{
			$oView->numrows = 25;
			$oView->startrow = 0;
		}

		$filterStatus = -1;
		if (IsSet($_REQUEST['filterStatus']))
			$filterStatus =@ DCL_Sanitize::ToSignedInt($_REQUEST['filterStatus']);
			
		$filterReportto = @DCL_Sanitize::ToInt($_REQUEST['filterReportto']);
		$filterProduct = @DCL_Sanitize::ToInt($_REQUEST['filterProduct']);
		$filterType = @DCL_Sanitize::ToInt($_REQUEST['filterType']);

		$oView->RemoveDef('filternot', 'statuses.dcl_status_type');
		$oView->RemoveDef('filter', 'statuses.dcl_status_type');
		$oView->RemoveDef('filter', 'status');
		if ($filterStatus !== null && $filterStatus != 0)
		{
			if ($filterStatus == -1)
				$oView->AddDef('filternot', 'statuses.dcl_status_type', '2');
			else if ($filterStatus == -2)
				$oView->AddDef('filter', 'statuses.dcl_status_type', '2');
			else if ($filterStatus !== null)
				$oView->AddDef('filter', 'status', $filterStatus);
		}
		else
			$oView->RemoveDef('filter', 'status');

		if ($filterReportto !== null && $filterReportto > 0)
			$oView->ReplaceDef('filter', 'responsible', $filterReportto);
		else
			$oView->RemoveDef('filter', 'responsible');

		if ($filterProduct !== null && $filterProduct > 0)
			$oView->ReplaceDef('filter', 'product', $filterProduct);
		else
			$oView->RemoveDef('filter', 'product');

		if ($filterType !== null && $filterType > 0)
			$oView->ReplaceDef('filter', 'type', $filterType);
		else
			$oView->RemoveDef('filter', 'type');

		$this->sColumnTitle = STR_CMMN_OPTIONS;
		$this->bShowPager = true;
		$this->Render($oView);
	}
	
	function _Execute()
	{
		if ($this->oView->numrows > 0 || $this->oView->startrow > 0)
			$result = $this->oDB->LimitQuery($this->oView->GetSQL(), $this->oView->startrow, $this->oView->numrows);
		else
			$result = $this->oDB->Query($this->oView->GetSQL());

		if ($result == -1)
		{
			return false;
		}

		return true;
	}
}
?>