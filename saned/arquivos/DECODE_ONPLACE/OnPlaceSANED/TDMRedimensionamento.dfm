�
 TDMREDIMENSIONAMENTO 0�M  TPF0TDMRedimensionamentoDMRedimensionamentoOldCreateOrderHeight� Widtho TQueryqryGeralDatabaseNamedbMainLefthTop  TQueryqryGrupoDatabaseNamedbMainSQL.Stringsselect 	rt_grupofrom	roteiros$where	rt_ind_leitura between 1 and 4group 	by rt_grupo Left Top  TQuery
qryRoteiroDatabaseNamedbMainSQL.Strings6select 	rt_grupo, rt_rota, rt_maleta,  rt_referencia, 	rt_agente, ag_nome,	(select 	count(*)	from	carga	where	rt_grupo = cg_grupo$	and	rt_rota = cg_rota) as qtde_lig,1	rt_ind_chuva, rt_ordem_inicial, rt_ordem_final, ^	(select max(rt_ind_leitura) from roteiros aux where aux.rt_grupo= pri.rt_grupo) as ind_grupo,	(select 	count(*)	from	carga	where	cg_grupo = rt_grupo	and	cg_rota != rt_rota	and 	cg_matricula_pai > 0	and 	cg_matricula_pai in 		(select 	cg_matricula_pai		from 	carga		where	cg_grupo = rt_grupo		and	cg_rota = rt_rota		and	cg_matricula_pai > 0%		and	cg_matricula_pai = cg_matricula2		group by cg_matricula_pai)) as Qtde_Divergencia,&	Isnull((select sum(md_leitura_campo) 	from 	medicao 	where 	md_grupo = rt_grupo *	and 	md_rota = rt_rota),0) as Qtde_Lidas,	isnull((select count(*) 	from 	descarga	where 	dg_grupo = rt_grupo	and	dg_rota = rt_rota9	and 	dg_ocorrencia not in (0,71,72)),0) Qtde_Ocorrenciasfrom	roteiros prileft	outer join agenteson	ag_codigo = rt_agenteand	ag_grupo = rt_grupowhere   	rt_grupo =  :nGrupoorder	by rt_rota     Left TopH	ParamDataDataType	ftIntegerNamenGrupo	ParamType	ptUnknown   TIntegerFieldqryRoteirort_grupo	FieldNamert_grupo  TIntegerFieldqryRoteirort_rota	FieldNamert_rota  TIntegerFieldqryRoteirort_maleta	FieldName	rt_maleta  TDateTimeFieldqryRoteirort_referencia	FieldNamert_referencia  TIntegerFieldqryRoteirort_agente	FieldName	rt_agente  TStringFieldqryRoteiroag_nome	FieldNameag_nomeSize  TIntegerFieldqryRoteiroqtde_lig	FieldNameqtde_lig  TStringFieldqryRoteirort_ind_chuva	FieldNamert_ind_chuva	FixedChar	Size  TIntegerFieldqryRoteirort_ordem_inicial	FieldNamert_ordem_inicial  TIntegerFieldqryRoteirort_ordem_final	FieldNamert_ordem_final  TIntegerFieldqryRoteiroind_grupo	FieldName	ind_grupo  TIntegerFieldqryRoteiroQtde_Divergencia	FieldNameQtde_Divergencia  TIntegerFieldqryRoteiroQtde_Lidas	FieldName
Qtde_Lidas  TIntegerFieldqryRoteiroQtde_Ocorrencias	FieldNameQtde_Ocorrencias   TQuery	qryAgenteDatabaseNamedbMainSQL.Stringsselect 	ag_codigo, ag_nomefrom	agenteswhere      ag_grupo = :nGrupoorder	by ag_nome     LefthTopH	ParamDataDataType	ftIntegerNamenGrupo	ParamType	ptUnknown    TQueryqryAtualizarDatabaseNamedbMainLeft� Top  
TRvProjectRvPrjRedimensionamentoLeft TopHRaveBlobNew
�; �; ��ۃ5�@RAVE�   
SYSTEM �  SYSTEMd  �(;��@                  ����            �         ����           ��          ����                                            	             
    �                                   TClass     Value     7-  !  !=  %  &  *  *=  /  /=  :=  |  +  +=  <  <-  <<  <=  
<>  =  -=  ==  >  	->  >=  >>  AND  AS  BOOLEAN BYTE CHAR CURRENCY 
DIV  DOUBLE EXTENDED 	FALSE  INTEGER IS  MOD  NOT  NUL     OR  ORD   POINTER SHL  SHORTINT SHR  SINGLE SMALLINT STRING TCLASS TRUE U-  U+  WORD XOR    �@     SysFunc �  SysFuncd  �(;��@SYSTEM6    S1         I1       S1       S1   Default       S1   	    E1 	      S1   Index   Count       S1  Index   Count         Source   S1  Index         S1       Substr   S1       S1   S2       S1   S2       S1       S1       S1       Ch   Count       S1       S1       X       Value 
      S1   
    DateTime       S1       Date       S1       Time       S1       X       X 	  	    X 	  	    X 	  	    X 	  	    X 	  	    X 	  	    X 	  	    X 	      X 	      X        	    Range              X 	  	    X 	  	                Date       Date   Year  Month  Day        Time   Hour  Min  Sec  MSec        Year   Month   Day       Hour   Min   Sec   MSec            Value   Quote       Format   Value 	  8Abs ��� AbsExt ��ArcTan ��"Beep -���BreakupDate 0�(�7BreakupTime 1�=�NChr �\�gCompare �ˀ�CompareCase �߀�Copy gxCos  �(�3
CreateDate 2�T�e
CreateTime 3�k�	CurrToStr �m�xDate .�	�DateTimeToStr ����	DateToStr ����	DayOfWeek /��"Delete ~��Exp "�J�U
FloatToStr VaFormatFloat 6����Frac #�[�fInsert 	����IntToStr Length 
����Ln $�l�w	LowerCase �K�VMakeStr �&�4 nil Now 4����Odd '����Pi (����Pos ����	QuotedStr 5����Random )����	Randomize *�ς�Round %�}��ShowMessage  	Sin !�9�DSqr +�ۂ�Sqrt ,���	StrToCurr �~��	StrToDate ��StrToDateTime ����
StrToFloat EPStrToInt  +StrToIntDef 1?	StrToTime ���	TDateTime	TimeToStr �Ӂ�Trim ���TrimLeft ��	TrimRight �� Trunc &����	UpperCase �:�E��
 ���    
 ���     
 ���     
 ��� (    
 ���     
 ���
     
 ���( 0    
 ���(     
 ���(     
 ���     
 ��� (    
 ��� (    
 ��� (    
 ���     
 ���     
 ���     
 ��� (    
 ���     
 ���     
 ���
     
 ���     
 ���	     
 ���     
 ���     
 ���     
 ���     
 ���     
 ���     
 ���     
 ���
     
 ���
     
 ���
     
 ���
     
 ���
     
 ���
     
 ���
     
 ���
     
 ���
     
 ���      
 ���     
 ���     
 ���     
 ���
     
 ���
     
 ���     
 ���     
 ���     
 ���0(     
 ���80(     
 ���( 0    
 ���0( 8    
 ���     
 ��� (    
 ��� 
(    ��@   ��6ABS� ABSEXT�ARCTAN�"BEEP�BREAKUPDATE�7BREAKUPTIME�NCHR�gCOMPARE��COMPARECASE��COPYxCOS�3
CREATEDATE�e
CREATETIME�	CURRTOSTR�xDATE�DATETIMETOSTR��	DATETOSTR��	DAYOFWEEK�"DELETE��EXP�U
FLOATTOSTRaFORMATFLOAT��FRAC�fINSERT��INTTOSTRLENGTH��LN�w	LOWERCASE�VMAKESTR�4NOW��ODD��PI��POS��	QUOTEDSTR��RANDOM��	RANDOMIZE��ROUND��SHOWMESSAGE	SIN�DSQR��SQRT��	STRTOCURR��	STRTODATE��STRTODATETIME��
STRTOFLOATPSTRTOINT+STRTOINTDEF?	STRTOTIME��	TIMETOSTR��TRIM��TRIMLEFT�	TRIMRIGHT� TRUNC��	UPPERCASE�ERvClass z@  RvClassd  �p=��@SYSTEMSysFunc��                                                               #                                                X Y     Left Top Right Bottom     Name 	PaperSize 
PaperWidth PaperHeight     Name RaveBin                   Value              Value                                                   Value       Value       Value       Value                           	GetLocked , 	SetLocked - 
GetVisible . 
SetVisible / Show 0 Hide 1 MoveForward 2 
MoveBehind 3 BringToFront 4 
SendToBack 5 XU2I 6 YU2I 7 XI2U 8 YI2U 9 PageLeft : PageTop ; 	PageRight < 
PageBottom = LockedVisibleTRaveComponent          Value               Value              Value               Value               Value              Value               Value            "    Value  "          &    Value  &             Value              Value              Value              Value              Value              Value               Value                 Left   Top         P1  %  P2  %                                        9GetFontJustify ? SetFontJustify @ GetBackColor A SetBackColor B GetForeColor C SetForeColor D GetFillStyle E SetFillStyle F GetText G SetText H GetLineWidth I SetLineWidth J GetLineWidthType K SetLineWidthType L GetLineStyle M SetLineStyle N GetBoundsRect O SetBoundsRect P GetLeft Q SetLeft R GetRight S SetRight T GetTop U SetTop V 	GetBottom W 	SetBottom X GetWidth Y SetWidth Z 	GetHeight [ 	SetHeight \ GetDisplayOn ] SetDisplayOn ^ Reflect _ SetPos ` SetSize a AdjLeft b AdjTop c AdjWidth d 	AdjHeight e VAnchor f HAnchor g FontJustify 	BackColor	ForeColor	FillStyle Text	
	LineWidthLineWidthType 	LineStyle "
BoundsRect &LeftRightTopBottomWidthHeight	DisplayOn   >TRaveControlk      hTRaveContainerControlk      >TRaveContainerComponent         Value              Value         GetDescription k SetDescription l GetFullName m SetFullName n DescriptionFullName jTRaveProjectItem
         Value              Value               Value            o    Value  o             Value              Value               Value               Value              Value              Value              Value              "GetBin p SetBin q GetBinCustom r SetBinCustom s GetGotoMode t SetGotoMode u GetGotoPage v SetGotoPage w GetGridLines x SetGridLines y GetGridSpacing z SetGridSpacing { GetOrientation | SetOrientation } GetPageHeight ~ SetPageHeight  GetPageWidth �� SetPageWidth �� GetPaperSize �� SetPaperSize �� GetWasteFit �� SetWasteFit �� Global �� Bin	BinCustomGotoMode GotoPage o	GridLines	
GridSpacingOrientation 
PageHeight	PageWidth	PaperSizeWasteFit o	TRavePage9      oTRaveDataObject
��amAppearance amPositioning  	anhCenter anhLeft  	anhResize anhRight 	anhSpread 
anhStretch 	anvBottom 	anvCenter 	anvResize 	anvSpread 
anvStretch anvTop  bkOpaque 
bkTransparent 
 blAll blBottom blLeft blLeftBottom 	blLeftRight 	blLeftTop 
blNoBottom blNoLeft blNone  	blNoRight blNoTop blRight blRightBottom 

blRightTop blTop blTopBottom BoldOffB0BoldOnB1
BOXLINEALL   BOXLINEBOTTOM   BOXLINELEFT   BOXLINELEFTBOTTOM	   BOXLINELEFTRIGHT   BOXLINELEFTTOP   BOXLINENOBOTTOM   BOXLINENOLEFT   BOXLINENONE    BOXLINENORIGHT   BOXLINENOTOP   BOXLINERIGHT   BOXLINERIGHTBOTTOM
   BOXLINERIGHTTOP   
BOXLINETOP   BOXLINETOPBOTTOM   bsBDiagonal $bsClear $bsCross $bsDiagCross $bsFDiagonal $bsHorizontal $bsSolid $ 
bsVertical $clAqua �� clBlack    clBlackCherry@ @ clBlue  � clBlueGreen �@ clBrown�@  clBubbleGum��� clDarkPurple@ � 
clDeepBlue @� clForestGreen @@ 	clFuchsia� � clGold��@ clGray��� clGreen �  clGreenApple �@ clGreenBlue �� 
clLavender��� clLemon��� clLightPurple� � clLime �  clMaroon�   clMistGreen��� clNavy  � clNightBlue  @ clNightGreen @  
clNightRed@   clOlive��  clOrange��  clPeach��@ clPeriwinkle��� clPink��� clPinkCarnation��� clPlum� @ clPurple� � clRed�   	clRedClay�@@ clRoyalBlue  � 
clSeaGreen �� clSilver��� 	clSkyBlue��� clTeal �� 
clTealBlue �� 
clTealGray@�� clVioletRed� � clWhite��� clYellow��  clYellowGreen��  destCustomFile destFile destNone destPreview destPrinter  doAll doParent  doPreviewOnly doPrinterOnly dsDC dsIC dsNone  dtBCD dtBlob 		dtBoolean 
dtCurrency dtDate 
dtDateTime dtFloat 	dtGraphic 	dtInteger dtMemo 
dtString  dtTime dupHorizontal 
dupSimplex  dupVertical faAll  
faBaseline  faBold faBottom faItalic faName faSize faTop faUnderline fmInside  	fmOutside fmSplit 	fpDefault   fpFixed  
fpVariable  fsBDiagonal fsBold ! fsClear fsCross fsDiagCross fsFDiagonal fsHorizontal fsItalic !fsNone fsSolid  fsStrikeOut !fsUnderline !
fsVertical 
gmCallEach 
gmGotoDone  gmGotoNotDone 	ItalicOffI0ItalicOnI1JustifyBlockJBJustifyCenterJCJustifyLeftJLJustifyRightJRlhmFont 	lhmLinesPerInch 	 lhmUser 	midCurrDateInter midCurrDateLong midCurrDateShort  midCurrDateUS midCurrentPage midCurrTime24 midCurrTimeAMPM midCurrTimeLong midCurrTimeShort midDriverName midFirstPage midLastPage 	midPortName midPrinterName midRelativePage midTotalPages 
	midUser01 	midUser02 	midUser03 	midUser04 	midUser05 	midUser06 	midUser07 	midUser08 	midUser09 	midUser10 	midUser11 	midUser12 	midUser13 	midUser14 	midUser15 	midUser16 	midUser17  	midUser18 !	midUser19 "	midUser20 #mmFixed mmScaled  NA ���	pcDefault *pcFalse * pcTrue *	pdDefault )pdHorizontal )	pdSimplex ) 
pdVertical )pjBlock pjBottom pjCenter  pjLeft pjMiddle pjRight pjTop  pmBlack # pmCopy #pmMask #pmMaskNotPen #	pmMaskPenNot #pmMerge #
pmMergeNotPen #pmMergePenNot #pmNop #pmNot #	pmNotCopy #	pmNotMask #
pmNotMerge #pmNotXor #pmWhite #pmXor #	poDefault poLandScape 
poPortrait  	prDefault +prDraft + prHigh +prLow +prMedium +psClear "psDash "	psDashDot "psDashDotDot "psDot "psInsideFrame "psSolid " rdFile 	rdPreview  	rdPrinter reBeginPage  	reEndPage 	RPTFBlockBRPTFBoldB
RPTFCenterC	RPTFColorCRPTFFirstIndentF
RPTFIgnore 	RPTFInfix
RPTFItalicIRPTFJustifyJRPTFLeftLRPTFLeftIndentLRPTFNameNRPTFOff0RPTFOn1	RPTFPitchH
RPTFPrefixRPTFResetParagraphRRPTFResetStyler	RPTFRightRRPTFRightIndentGRPTFSeparatorRPTFSizeZRPTFStrikeoutKRPTFSubscriptS
RPTFSuffixRPTFSuperscriptPRPTFUnderlineUrtBothCm rtBothIn 	rtHorizCm 	rtHorizIn rtNone  rtVertCm rtVertIn smFile smMemory  
smTempFile smUser soAllowPrintFromPreview soNoGenerate soPreviewModal soShowStatus 
soUseFiler  soWaitForOK ssAllowCollate ssAllowCopies ssAllowDestFile ssAllowDestPreview ssAllowDestPrinter ssAllowDuplex ssAllowPreviewSetup ssAllowPrinterSetup ssAllowSetup  StrikeoutOffK0StrikeoutOnK1SubscriptOffS0SubscriptOnS1SuperscriptOffP0SuperscriptOnP1TAccuracyMethod TBKMode 
	TBoxLines TBrushStyle $TColorTDestination TDeviceState 
TDisplayOn TDuplex 	TFileName
TFontAlign TFontAttribute 
TFontPitch  
TFontStyle !TFormatString
TFrameMode 	TGotoMode tjBlock tjCenter  tjLeft tjNone tjRight TLineHeightMethod 	TLineWidthType TMacroID TMarginMethod TOrientation TPaperSizeName 'TPenMode #	TPenStyle "TPrintJustify TPrintJustifyVert TPrintUnits TRaveAnchorTRaveBinTRaveBinName (TRaveComponent >TRaveComponent.BringToFront 4����TRaveComponent.GetLocked , TRaveComponent.GetVisible .#.TRaveComponent.Hide 1U^TRaveComponent.MoveBehind 3s|TRaveComponent.MoveForward 2dmTRaveComponent.PageBottom =�#�.TRaveComponent.PageLeft :����TRaveComponent.PageRight <��TRaveComponent.PageTop ;��TRaveComponent.SendToBack 5����TRaveComponent.SetLocked -TRaveComponent.SetVisible /4@TRaveComponent.Show 0FOTRaveComponent.XI2U 8�Ȁ�TRaveComponent.XU2I 6����TRaveComponent.YI2U 9�܀�TRaveComponent.YU2I 7����TRaveContainerComponent jTRaveContainerControl iTRaveControl hTRaveControl.AdjHeight e�Ѓ�TRaveControl.AdjLeft b����TRaveControl.AdjTop c����TRaveControl.AdjWidth d����TRaveControl.GetBackColor A�W�bTRaveControl.GetBottom W�؂�TRaveControl.GetBoundsRect O�L�WTRaveControl.GetDisplayOn ]�A�LTRaveControl.GetFillStyle E����TRaveControl.GetFontJustify ?�4�?TRaveControl.GetForeColor C�z��TRaveControl.GetHeight [��)TRaveControl.GetLeft Q�o�zTRaveControl.GetLineStyle M�)�4TRaveControl.GetLineWidth I���TRaveControl.GetLineWidthType K��TRaveControl.GetRight S����TRaveControl.GetText G����TRaveControl.GetTop U����TRaveControl.GetWidth Y���TRaveControl.HAnchor g���TRaveControl.Reflect _�d�mTRaveControl.SetBackColor B�h�tTRaveControl.SetBottom X���TRaveControl.SetBoundsRect P�]�iTRaveControl.SetDisplayOn ^�R�^TRaveControl.SetFillStyle F����TRaveControl.SetFontJustify @�E�QTRaveControl.SetForeColor D����TRaveControl.SetHeight \�/�;TRaveControl.SetLeft R����TRaveControl.SetLineStyle N�:�FTRaveControl.SetLineWidth J�� TRaveControl.SetLineWidthType L��#TRaveControl.SetPos `�s��TRaveControl.SetRight T����TRaveControl.SetSize a����TRaveControl.SetText H�с�TRaveControl.SetTop V�Ƃ�TRaveControl.SetWidth Z��TRaveControl.VAnchor f���TRaveDataObject ��TRaveFieldNameTRaveFillStyle 
TRaveFloatTRaveHAnchor TRaveMemoString	TRavePage ��TRavePage.GetBin p�I�TTRavePage.GetBinCustom r�l�wTRavePage.GetGotoMode t����TRavePage.GetGotoPage v����TRavePage.GetGridLines x�Մ�TRavePage.GetGridSpacing z���TRavePage.GetOrientation |��&TRavePage.GetPageHeight ~�>�ITRavePage.GetPageWidth ���a�lTRavePage.GetPaperSize ������TRavePage.GetWasteFit ������TRavePage.Global ��  TRavePage.SetBin q�Z�fTRavePage.SetBinCustom s�}��TRavePage.SetGotoMode u����TRavePage.SetGotoPage w�Ä�TRavePage.SetGridLines y���TRavePage.SetGridSpacing {�	�TRavePage.SetOrientation }�,�8TRavePage.SetPageHeight �O�[TRavePage.SetPageWidth ���r�~TRavePage.SetPaperSize ������TRavePage.SetWasteFit ������TRavePaperSize
TRavePoint %TRavePrinterCollate *TRavePrinterDuplex )TRavePrinterResolution +TRaveProjectItem oTRaveProjectItem.GetDescription k��TRaveProjectItem.GetFullName m�&�1TRaveProjectItem.SetDescription l�� TRaveProjectItem.SetFullName n�7�C	TRaveRect &
TRaveUnitsTRaveVAnchor TReportDest TReportEventType TRPDataType 
TRulerType TStreamMode TSystemOption TSystemSetup TTabJustify TTitleString
TUserLevel TVersion
ulAdvanced 
ulBeginner  ulIntermediate unCM UnderlineOffU0UnderlineOnU1unInch  unMM unPoint unUser wtPixels wtPoints   ��
 ���      
 ���     
 ���      
 ���     
 ���    
 ���    
 ���    
 ���    
 ���    
 ���    
 ��� (    
 ��� (    
 ��� (    
 ��� (    
 ���     
 ���     
 ���     
 ���     
 ���     
 ���     
 ���     
 ���     
 ���     
 ���     
 ���     
 ���     
 ���     
 ���     
 ���     
 ���     
 ���     
 ���     
 ���     
 ���     
 ���     
 ���      
 ���     
 ���     
 ���     
 ���     
 ���     
 ���     
 ���     
 ���     
 ���     
 ���     
 ���     
 ���     
 ���     
 ���     
 ���    
 ���(     
 ���(     
 ���     
 ���     
 ���     
 ���     
 ���     
 ���     
 ���     
 ���     
 ���     
 ���     
 ���     
 ���     
 ���     
 ���     
 ���     
 ���     
 ���     
 ���     
 ���     
 ���     
 ���     
 ���     
 ���     
 ���     
 ���     
 ���     
 ���     
 ���     
 ���     
 ���     
 ���      
 ���     ��@   ��UTRAVECOMPONENT.BRINGTOFRONT��TRAVECOMPONENT.GETLOCKEDTRAVECOMPONENT.GETVISIBLE.TRAVECOMPONENT.HIDE^TRAVECOMPONENT.MOVEBEHIND|TRAVECOMPONENT.MOVEFORWARDmTRAVECOMPONENT.PAGEBOTTOM�.TRAVECOMPONENT.PAGELEFT��TRAVECOMPONENT.PAGERIGHT�TRAVECOMPONENT.PAGETOP�TRAVECOMPONENT.SENDTOBACK��TRAVECOMPONENT.SETLOCKEDTRAVECOMPONENT.SETVISIBLE@TRAVECOMPONENT.SHOWOTRAVECOMPONENT.XI2U��TRAVECOMPONENT.XU2I��TRAVECOMPONENT.YI2U��TRAVECOMPONENT.YU2I��TRAVECONTROL.ADJHEIGHT��TRAVECONTROL.ADJLEFT��TRAVECONTROL.ADJTOP��TRAVECONTROL.ADJWIDTH��TRAVECONTROL.GETBACKCOLOR�bTRAVECONTROL.GETBOTTOM��TRAVECONTROL.GETBOUNDSRECT�WTRAVECONTROL.GETDISPLAYON�LTRAVECONTROL.GETFILLSTYLE��TRAVECONTROL.GETFONTJUSTIFY�?TRAVECONTROL.GETFORECOLOR��TRAVECONTROL.GETHEIGHT�)TRAVECONTROL.GETLEFT�zTRAVECONTROL.GETLINESTYLE�4TRAVECONTROL.GETLINEWIDTH��TRAVECONTROL.GETLINEWIDTHTYPE�TRAVECONTROL.GETRIGHT��TRAVECONTROL.GETTEXT��TRAVECONTROL.GETTOP��TRAVECONTROL.GETWIDTH�TRAVECONTROL.HANCHOR��TRAVECONTROL.REFLECT�mTRAVECONTROL.SETBACKCOLOR�tTRAVECONTROL.SETBOTTOM��TRAVECONTROL.SETBOUNDSRECT�iTRAVECONTROL.SETDISPLAYON�^TRAVECONTROL.SETFILLSTYLE��TRAVECONTROL.SETFONTJUSTIFY�QTRAVECONTROL.SETFORECOLOR��TRAVECONTROL.SETHEIGHT�;TRAVECONTROL.SETLEFT��TRAVECONTROL.SETLINESTYLE�FTRAVECONTROL.SETLINEWIDTH� TRAVECONTROL.SETLINEWIDTHTYPE�#TRAVECONTROL.SETPOS��TRAVECONTROL.SETRIGHT��TRAVECONTROL.SETSIZE��TRAVECONTROL.SETTEXT��TRAVECONTROL.SETTOP��TRAVECONTROL.SETWIDTH�TRAVECONTROL.VANCHOR��TRAVEPAGE.GETBIN�TTRAVEPAGE.GETBINCUSTOM�wTRAVEPAGE.GETGOTOMODE��TRAVEPAGE.GETGOTOPAGE��TRAVEPAGE.GETGRIDLINES��TRAVEPAGE.GETGRIDSPACING�TRAVEPAGE.GETORIENTATION�&TRAVEPAGE.GETPAGEHEIGHT�ITRAVEPAGE.GETPAGEWIDTH�lTRAVEPAGE.GETPAPERSIZE��TRAVEPAGE.GETWASTEFIT��TRAVEPAGE.SETBIN�fTRAVEPAGE.SETBINCUSTOM��TRAVEPAGE.SETGOTOMODE��TRAVEPAGE.SETGOTOPAGE��TRAVEPAGE.SETGRIDLINES��TRAVEPAGE.SETGRIDSPACING�TRAVEPAGE.SETORIENTATION�8TRAVEPAGE.SETPAGEHEIGHT�[TRAVEPAGE.SETPAGEWIDTH�~TRAVEPAGE.SETPAPERSIZE��TRAVEPAGE.SETWASTEFIT��TRAVEPROJECTITEM.GETDESCRIPTION�TRAVEPROJECTITEM.GETFULLNAME�1TRAVEPROJECTITEM.SETDESCRIPTION� TRAVEPROJECTITEM.SETFULLNAME�CRvBase �m  RvBased  ��@��@SYSTEMSysFuncRvClass��              Value              Value                        Value              Value                   Value                                  Value              Value                                                      Value              Value              Value              Value                        Value              Value              Value              Value              Value              Value              Value              Value              Value              Value               Value               Value              Value              Value              Value              Value              Value              Value              Value              Value              Value              Value              Value              Value              Value              Value              Value              Value              Value                                       Value              Value              Value              Value                        Value              Value              Value              Value              Value              Value              Value              Value              Value          	    Value 	             Value              Value              Value              Value              Value              Value              Value              Value              Value              Value              Value          
    Value 
             Value              Value              Value              Value         X1   Y1   X2   Y2   X3   Y3   X4   Y4         X1   Y1   X2   Y2   X3   Y3   X4   Y4         X1   Y1   X2   Y2         X   Y         X   Y         X1   Y1   X2   Y2   X3   Y3   X4   Y4         X1   Y1   X2   Y2         X1   Y1   X2   Y2   X3   Y3         NewColor   NewStyle $        NewName   NewSize         NewColor   NewStyle "  NewWidth   NewMode #                                           NewXPos   NewYPos                          Text   Pos   Justify   Margin   Width         Text         Text   Pos         Text   Justify         Text   Justify         Text   Pos         Text   Pos   Width         Text         Text   Pos         X   Y   Text         Text   Ch   Pos         Text                                                                                  Index       Index                 Index       Index                 Index       Index       
NewColumns   Between         Width   Between                NewPos   
NewJustify   NewWidth   	NewMargin   NewLines   NewShade                              	LeftWidth   
RightWidth   TopWidth   BottomWidth   ShadeOverride         Index       Index       Index       Width         Text       Value   Width       MacroID       VarName       VarName   VarValue                �KGetCurrentPage  GetTextFieldWidth  SetTextFieldWidth  GetIgnoreRPTF  SetIgnoreRPTF  GetCursorXPos  GetCursorYPos  GetXPos  SetXPos 	 GetYPos 
 SetYPos  GetRelativePage  GetPageNumOffset  SetPageNumOffset  GetPageInvalid  GetOutputInvalid  GetXDPI  GetYDPI  
GetLineNum  
SetLineNum  GetColumnNum  SetColumnNum  
GetColumns  GetColumnStart  GetColumnEnd  GetColumnWidth  GetLeftWaste  GetRightWaste  GetTopWaste  GetBottomWaste  GetSectionLeft  SetSectionLeft   GetSectionTop ! SetSectionTop " GetSectionBottom # SetSectionBottom $ GetSectionRight % SetSectionRight & GetPageHeight ' GetPageWidth ( GetBold ) SetBold * GetUnderline + SetUnderline , 	GetItalic - 	SetItalic . GetStrikeout / SetStrikeout 0 GetSuperscript 1 SetSuperscript 2 GetSubscript 3 SetSubscript 4 GetFontRotation 5 SetFontRotation 6 GetFontColor 7 SetFontColor 8 GetFontName 9 SetFontName : GetFontSize ; SetFontSize < GetFontPitch = SetFontPitch > GetFontCharset ? SetFontCharset @ GetFontAlign A SetFontAlign B 
GetLineTop C 
SetLineTop D GetLineMiddle E SetLineMiddle F GetLineBottom G SetLineBottom H 
GetFontTop I 
SetFontTop J GetFontBaseline K SetFontBaseline L GetFontBottom M SetFontBottom N GetTabJustify O SetTabJustify P GetTransparentBitmaps Q SetTransparentBitmaps R GetParaJustify S SetParaJustify T GetNoBufferLine U SetNoBufferLine V GetNoNTColorFix W SetNoNTColorFix X GetUseDrawText Y SetUseDrawText Z GetCurrentPass [ SetCurrentPass \ GetTotalPasses ] SetTotalPasses ^ GetFixedTabWidth _ SetFixedTabWidth ` GetPrinterIndex a SetPrinterIndex b GetDeviceName c GetDriverName d GetPort e 
GetAborted f GetPrinting g 
GetOriginX h 
SetOriginX i 
GetOriginY j 
SetOriginY k 
GetBKColor l 
SetBKColor m GetLineHeight n SetLineHeight o GetAscentHeight p GetDescentHeight q GetFontHeight r SetFontHeight s GetFontWidth t SetFontWidth u GetOutputName v SetOutputName w GetNoPrinterPageHeight x SetNoPrinterPageHeight y GetNoPrinterPageWidth z SetNoPrinterPageWidth { GetFirstPage | SetFirstPage } GetLastPage ~ SetLastPage  GetSelection �� SetSelection �� GetStatusFormat �� SetStatusFormat �� GetLineHeightMethod �� SetLineHeightMethod �� GetLinesPerInch �� SetLinesPerInch �� GetUnits �� SetUnits �� GetUnitsFactor �� SetUnitsFactor �� GetMarginLeft �� SetMarginLeft �� GetMarginRight �� SetMarginRight �� GetMarginTop �� SetMarginTop �� GetMarginBottom �� SetMarginBottom �� GetTabShade �� SetTabShade �� GetTabColor �� SetTabColor �� GetBoxLineColor �� SetBoxLineColor �� GetTitle �� SetTitle �� GetTextBKMode �� SetTextBKMode �� 	GetCopies �� 	SetCopies �� GetOrientation �� SetOrientation �� 	GetScaleX �� 	SetScaleX �� 	GetScaleY �� 	SetScaleY �� Arc �� Chord �� Ellipse �� LineTo �� MoveTo �� Pie �� 	Rectangle �� 	RoundRect �� SetBrush �� SetFont �� SetPen �� CR �� LF �� CRLF �� NewLine �� SoftLine �� GotoXY �� Home �� 	LinesLeft �� ColumnLinesLeft �� PrintJustify �� Print �� PrintCenter �� PrintHeader �� PrintFooter �� 	PrintLeft �� 
PrintBlock �� Println �� 
PrintRight �� PrintXY �� PrintCharJustify �� PrintTab �� AllowPreviewOnly �� AllowPrinterOnly �� AllowAll �� ResetLineHeight �� 
AdjustLine �� 	NewColumn �� 
GotoHeader �� 
GotoFooter �� SetTopOfPage �� PopPos �� PushPos �� 
RestorePos �� SavePos �� PopTabs �� PushTabs �� RestoreTabs �� SaveTabs �� PopFont �� PushFont �� RestoreFont �� SaveFont �� 
SetColumns �� SetColumnWidth �� ClearColumns �� SetTab �� 	ClearTabs �� ClearAllTabs �� 	ResetTabs �� Tab �� TabStart �� TabEnd �� TabWidth �� FinishTabBox �� 	TextWidth �� TruncateText �� Macro �� PIVar �� SetPIVar �� NewPage �� CurrentPage TextFieldWidth
IgnoreRPTF
CursorXPos 
CursorYPos XPos	YPos
RelativePage PageNumOffsetPageInvalid OutputInvalid XDPI YDPI LineNum	ColumnNumColumns ColumnStart 	ColumnEnd ColumnWidth 	LeftWaste 
RightWaste TopWaste BottomWaste SectionLeft SectionRight%&
SectionTop!"SectionBottom#$
PageHeight' 	PageWidth( Bold)*	Underline+,Italic-.	Strikeout/0Superscript12	Subscript34FontRotation56	FontColor78FontName9:FontSize;<	FontPitch =>FontCharset?@	FontAlignABLineTopCD
LineMiddleEF
LineBottomGHFontTopIJFontBaselineKL
FontBottomMN
TabJustifyOPTransparentBitmapsQRParaJustifySTNoBufferLineUVNoNTColorFixWXUseDrawTextYZCurrentPass[\TotalPasses]^FixedTabWidth_`PrinterIndexab
DeviceNamec 
DriverNamed Porte Abortedf Printingg OriginXhiOriginYjkBKColorlm
LineHeightnoAscentHeightp DescentHeightq 
FontHeightrs	FontWidthtu
OutputNamevwNoPrinterPageHeightxyNoPrinterPageWidthz{	FirstPage|}LastPage~	Selection����StatusFormat����LineHeightMethod	����LinesPerInch����Units����UnitsFactor����
MarginLeft����MarginRight����	MarginTop����MarginBottom����TabShade����TabColor����BoxLineColor����Title����
TextBKMode
����Copies����Orientation����ScaleX����ScaleY����TBaseReport��
   
�� PageSettingsUsed �� TBaseReport ��TBaseReport.AdjustLine �ʃ�%TBaseReport.AllowAll �Ȃ��TBaseReport.AllowPreviewOnly �Ƃ���TBaseReport.AllowPrinterOnly �ǂ��TBaseReport.Arc ������TBaseReport.Chord ����TBaseReport.ClearAllTabs ������TBaseReport.ClearColumns �݄o�xTBaseReport.ClearTabs �߄���TBaseReport.ColumnLinesLeft ������TBaseReport.CR �� 	TBaseReport.CRLF ��'TBaseReport.Ellipse ����TBaseReport.FinishTabBox ��)�5TBaseReport.GetAborted f�]�hTBaseReport.GetAscentHeight p��TBaseReport.GetBKColor l�Ō�TBaseReport.GetBold )�V�aTBaseReport.GetBottomWaste ����TBaseReport.GetBoxLineColor ���Ə�TBaseReport.GetColumnEnd �B�MTBaseReport.GetColumnNum ���TBaseReport.GetColumns � �+TBaseReport.GetColumnStart �1�<TBaseReport.GetColumnWidth �S�^TBaseReport.GetCopies ���/�:TBaseReport.GetCurrentPage ����TBaseReport.GetCurrentPass [����TBaseReport.GetCursorXPos ���TBaseReport.GetCursorYPos ��TBaseReport.GetDescentHeight q��'TBaseReport.GetDeviceName c�*�5TBaseReport.GetDriverName d�;�FTBaseReport.GetFirstPage |�܍�TBaseReport.GetFixedTabWidth _���TBaseReport.GetFontAlign A�׉�TBaseReport.GetFontBaseline K����TBaseReport.GetFontBottom M����TBaseReport.GetFontCharset ?����TBaseReport.GetFontColor 7�(�3TBaseReport.GetFontHeight r�-�8TBaseReport.GetFontName 9�K�VTBaseReport.GetFontPitch =����TBaseReport.GetFontRotation 5��TBaseReport.GetFontSize ;�n�yTBaseReport.GetFontTop I�c�nTBaseReport.GetFontWidth t�P�[TBaseReport.GetIgnoreRPTF �ׅ�TBaseReport.GetItalic -�y��TBaseReport.GetLastPage ~���
TBaseReport.GetLeftWaste �d�oTBaseReport.GetLineBottom G�@�KTBaseReport.GetLineHeight n���TBaseReport.GetLineHeightMethod ���h�sTBaseReport.GetLineMiddle E��(TBaseReport.GetLineNum �چ�TBaseReport.GetLinesPerInch ������TBaseReport.GetLineTop C���TBaseReport.GetMarginBottom ���]�hTBaseReport.GetMarginLeft �����TBaseReport.GetMarginRight ����"TBaseReport.GetMarginTop ���:�ETBaseReport.GetNoBufferLine U�5�@TBaseReport.GetNoNTColorFix W�X�c"TBaseReport.GetNoPrinterPageHeight x����!TBaseReport.GetNoPrinterPageWidth z����TBaseReport.GetOrientation ���R�]TBaseReport.GetOriginX h���TBaseReport.GetOriginY j����TBaseReport.GetOutputInvalid ����TBaseReport.GetOutputName v�s�~TBaseReport.GetPageHeight '�4�?TBaseReport.GetPageInvalid ����TBaseReport.GetPageNumOffset �s�~TBaseReport.GetPageWidth (�E�PTBaseReport.GetParaJustify S��TBaseReport.GetPort e�L�WTBaseReport.GetPrinterIndex a��TBaseReport.GetPrinting g�n�yTBaseReport.GetRelativePage �b�mTBaseReport.GetRightWaste �u��TBaseReport.GetScaleX ���u��TBaseReport.GetScaleY ������TBaseReport.GetSectionBottom #���TBaseReport.GetSectionLeft ����TBaseReport.GetSectionRight %��TBaseReport.GetSectionTop !�ˇ�TBaseReport.GetSelection ���"�-TBaseReport.GetStatusFormat ���E�PTBaseReport.GetStrikeout /����TBaseReport.GetSubscript 3���TBaseReport.GetSuperscript 1����TBaseReport.GetTabColor ������TBaseReport.GetTabJustify O�̊�TBaseReport.GetTabShade ������TBaseReport.GetTextBKMode ����TBaseReport.GetTextFieldWidth ����TBaseReport.GetTitle �����TBaseReport.GetTopWaste ����TBaseReport.GetTotalPasses ]����!TBaseReport.GetTransparentBitmaps Q���TBaseReport.GetUnderline +  TBaseReport.GetUnits ������TBaseReport.GetUnitsFactor ���ю�TBaseReport.GetUseDrawText Y�{��TBaseReport.GetXDPI ����TBaseReport.GetXPos ��'TBaseReport.GetYDPI �Ɇ�TBaseReport.GetYPos 
�?�JTBaseReport.GotoFooter �̓I�RTBaseReport.GotoHeader �̃:�CTBaseReport.GotoXY ��KZTBaseReport.Home ��`iTBaseReport.LF ��TBaseReport.LinesLeft ��ozTBaseReport.LineTo ����TBaseReport.Macro ��f�tTBaseReport.MoveTo ����,TBaseReport.NewColumn �˃+�4TBaseReport.NewLine ��-6TBaseReport.NewPage �쐻 TBaseReport.Pie ���2�WTBaseReport.PIVar ��z��TBaseReport.PopFont �׃��TBaseReport.PopPos �σg�rTBaseReport.PopTabs �Ӄ���TBaseReport.Print ������TBaseReport.PrintBlock ����(TBaseReport.PrintCenter ����TBaseReport.PrintCharJustify �ām�TBaseReport.PrintFooter �����TBaseReport.PrintHeader ���׀�TBaseReport.PrintJustify ������TBaseReport.PrintLeft ����TBaseReport.Println ���.�:TBaseReport.PrintRight �@�OTBaseReport.PrintTab �Ł���TBaseReport.PrintXY �ÁU�gTBaseReport.PushFont �؄�TBaseReport.PushPos �Ѓx��TBaseReport.PushTabs �ԃ�TBaseReport.Rectangle ���]�rTBaseReport.ResetLineHeight �Ƀ�TBaseReport.ResetTabs �ᄿ��TBaseReport.RestoreFont �ل�+TBaseReport.RestorePos �у���TBaseReport.RestoreTabs �ՃӃ�TBaseReport.RoundRect ���x��TBaseReport.SaveFont �ڄ1�?TBaseReport.SavePos �҃���TBaseReport.SaveTabs �փ��TBaseReport.SetBKColor m�֌�TBaseReport.SetBold *�g�sTBaseReport.SetBoxLineColor ���׏�TBaseReport.SetBrush ������TBaseReport.SetColumnNum ��TBaseReport.SetColumns �ۄE�TTBaseReport.SetColumnWidth �܄Z�iTBaseReport.SetCopies ���@�LTBaseReport.SetCurrentPass \����TBaseReport.SetFirstPage }���TBaseReport.SetFixedTabWidth `���TBaseReport.SetFont ������TBaseReport.SetFontAlign B���TBaseReport.SetFontBaseline L����TBaseReport.SetFontBottom N����TBaseReport.SetFontCharset @�ŉ�TBaseReport.SetFontColor 8�9�ETBaseReport.SetFontHeight s�>�JTBaseReport.SetFontName :�\�hTBaseReport.SetFontPitch >����TBaseReport.SetFontRotation 6��"TBaseReport.SetFontSize <���TBaseReport.SetFontTop J�t��TBaseReport.SetFontWidth u�a�mTBaseReport.SetIgnoreRPTF ���TBaseReport.SetItalic .����TBaseReport.SetLastPage ��TBaseReport.SetLineBottom H�Q�]TBaseReport.SetLineHeight o���TBaseReport.SetLineHeightMethod ���y��TBaseReport.SetLineMiddle F�.�:TBaseReport.SetLineNum ���TBaseReport.SetLinesPerInch ������TBaseReport.SetLineTop D��TBaseReport.SetMarginBottom ���n�zTBaseReport.SetMarginLeft ����TBaseReport.SetMarginRight ���(�4TBaseReport.SetMarginTop ���K�WTBaseReport.SetNoBufferLine V�F�RTBaseReport.SetNoNTColorFix X�i�u"TBaseReport.SetNoPrinterPageHeight y����!TBaseReport.SetNoPrinterPageWidth {�ʍ�TBaseReport.SetOrientation ���c�oTBaseReport.SetOriginX i����TBaseReport.SetOriginY k����TBaseReport.SetOutputName w����TBaseReport.SetPageNumOffset ����TBaseReport.SetParaJustify T�#�/TBaseReport.SetPen ���ł�TBaseReport.SetPIVar �녎��TBaseReport.SetPrinterIndex b��$TBaseReport.SetScaleX ������TBaseReport.SetScaleY ������TBaseReport.SetSectionBottom $���TBaseReport.SetSectionLeft  ����TBaseReport.SetSectionRight &�"�.TBaseReport.SetSectionTop "�܇�TBaseReport.SetSelection ���3�?TBaseReport.SetStatusFormat ���V�bTBaseReport.SetStrikeout 0����TBaseReport.SetSubscript 4���TBaseReport.SetSuperscript 2�Ј�TBaseReport.SetTab �ބ~��TBaseReport.SetTabColor ������TBaseReport.SetTabJustify P�݊�TBaseReport.SetTabShade ������TBaseReport.SetTextBKMode ����)TBaseReport.SetTextFieldWidth �Ņ�TBaseReport.SetTitle �����TBaseReport.SetTopOfPage �΃X�aTBaseReport.SetTotalPasses ^�ҋ�!TBaseReport.SetTransparentBitmaps R� �TBaseReport.SetUnderline ,  TBaseReport.SetUnits ������TBaseReport.SetUnitsFactor �����TBaseReport.SetUseDrawText Z����TBaseReport.SetXPos 	�-�9TBaseReport.SetYPos �P�\TBaseReport.SoftLine ��<ETBaseReport.Tab ��΄�TBaseReport.TabEnd ���TBaseReport.TabStart ����TBaseReport.TabWidth ���#TBaseReport.TextWidth ��;�ITBaseReport.TruncateText ��O�`
��
 ���    
 ���    
 ���    
 ���    
 ���    
 ���(     
 ���    
 ���     
 ���     
 ���?@80(     
 ���     
 ���(     
 ���(     
 ���(     
 ���(     
 ���0(     
 ���     
 ���(     
 ���0(     
 ���0(     
 ���     
 ���?X?P?H?@80(     $
 ���?X?P?H?@80(     $
 ���80(     
 ���(     
 ���(     
 ���?X?P?H?@80(     $
 ���80(     
 ���?H?@80(     
 ���(     
 ���(     
 ���80(     
 ���    
 ���    
 ���    
 ���    
 ���    
 ���    
 ���    
 ���    
 ���    
 ���      
 ���      
 ���  (    
 ���  (    
 ���      
 ���      
 ���  (    
 ���  (    
 ���      
 ���      
 ���  (    
 ���  (    
 ���(     
 ���(     
 ���    
 ���?H?@80(     
 ���    
 ���    
 ���    
 ���?@80(     
 ��� (    
 ��� (    
 ��� (    
 ���     
 ��� (    
 ���( 0    
 ��� (    
 ��� (    
 ���(     
 ���     
 ���     
 ���     
 ���      
 ���     
 ���     
 ���     
 ���     
 ���     
 ���     
 ���     
 ���     
 ���     
 ���     
 ���      
 ���      
 ���     
 ���     
 ���     
 ���     
 ���     
 ���     
 ���     
 ���     
 ���     
 ���     
 ���     
 ���     
 ���     
 ���     
 ���     
 ���     
 ���     
 ���     
 ���     
 ���     
 ���     
 ���     
 ���     
 ���     
 ���      
 ���     
 ���      
 ���     
 ���      
 ���     
 ���      
 ���     
 ���      
 ���     
 ���     
 ���     
 ���     
 ���     
 ���     
 ���     
 ���     
 ���     
 ���     
 ���     
 ���     
 ���     
 ���     
 ���     
 ���     
 ���     
 ���     
 ���     
 ���     
 ���     
 ���     
 ���     
 ���     
 ���     
 ���     
 ���     
 ���     
 ���     
 ���      
 ���     
 ���     
 ���     
 ���      
 ���     
 ���      
 ���     
 ���      
 ���     
 ���     
 ���     
 ���     
 ���     
 ���     
 ���     
 ���     
 ���     
 ���     
 ���     
 ���     
 ���      
 ���      
 ���     
 ���     
 ���     
 ���     
 ���     
 ���     
 ���     
 ���     
 ���     
 ���     
 ���     
 ���     
 ���     
 ���     
 ���     
 ���     
 ���     
 ���     
 ���     
 ���     
 ���     
 ���     
 ���     
 ���     
 ���     
 ���     
 ���     
 ���     
 ���     
 ���     
 ���     
 ���     
 ���     
 ���     
 ���     
 ���     
 ���     
 ���     
 ���     
 ���     
 ���     
 ���     
 ���     
 ���     
 ���     
 ���     
 ���     
 ���     
 ���     
 ���     
 ���     
 ���     
 ���     
 ���     
 ���     
 ���     
 ���     
 ���     
 ���     
 ���     
 ���     
 ���     
	���
   w��	�1	���	�	`��@   ����TBASEREPORT.ADJUSTLINE�%TBASEREPORT.ALLOWALL�TBASEREPORT.ALLOWPREVIEWONLY��TBASEREPORT.ALLOWPRINTERONLY��TBASEREPORT.ARC��TBASEREPORT.CHORD��TBASEREPORT.CLEARALLTABS��TBASEREPORT.CLEARCOLUMNS�xTBASEREPORT.CLEARTABS��TBASEREPORT.COLUMNLINESLEFT��TBASEREPORT.CR	TBASEREPORT.CRLF'TBASEREPORT.ELLIPSE�TBASEREPORT.FINISHTABBOX�5TBASEREPORT.GETABORTED�hTBASEREPORT.GETASCENTHEIGHT�TBASEREPORT.GETBKCOLOR��TBASEREPORT.GETBOLD�aTBASEREPORT.GETBOTTOMWASTE��TBASEREPORT.GETBOXLINECOLOR��TBASEREPORT.GETCOLUMNEND�MTBASEREPORT.GETCOLUMNNUM�TBASEREPORT.GETCOLUMNS�+TBASEREPORT.GETCOLUMNSTART�<TBASEREPORT.GETCOLUMNWIDTH�^TBASEREPORT.GETCOPIES�:TBASEREPORT.GETCURRENTPAGE��TBASEREPORT.GETCURRENTPASS��TBASEREPORT.GETCURSORXPOS�TBASEREPORT.GETCURSORYPOS�TBASEREPORT.GETDESCENTHEIGHT�'TBASEREPORT.GETDEVICENAME�5TBASEREPORT.GETDRIVERNAME�FTBASEREPORT.GETFIRSTPAGE��TBASEREPORT.GETFIXEDTABWIDTH��TBASEREPORT.GETFONTALIGN��TBASEREPORT.GETFONTBASELINE��TBASEREPORT.GETFONTBOTTOM��TBASEREPORT.GETFONTCHARSET��TBASEREPORT.GETFONTCOLOR�3TBASEREPORT.GETFONTHEIGHT�8TBASEREPORT.GETFONTNAME�VTBASEREPORT.GETFONTPITCH��TBASEREPORT.GETFONTROTATION�TBASEREPORT.GETFONTSIZE�yTBASEREPORT.GETFONTTOP�nTBASEREPORT.GETFONTWIDTH�[TBASEREPORT.GETIGNORERPTF��TBASEREPORT.GETITALIC��TBASEREPORT.GETLASTPAGE�
TBASEREPORT.GETLEFTWASTE�oTBASEREPORT.GETLINEBOTTOM�KTBASEREPORT.GETLINEHEIGHT��TBASEREPORT.GETLINEHEIGHTMETHOD�sTBASEREPORT.GETLINEMIDDLE�(TBASEREPORT.GETLINENUM��TBASEREPORT.GETLINESPERINCH��TBASEREPORT.GETLINETOP�TBASEREPORT.GETMARGINBOTTOM�hTBASEREPORT.GETMARGINLEFT��TBASEREPORT.GETMARGINRIGHT�"TBASEREPORT.GETMARGINTOP�ETBASEREPORT.GETNOBUFFERLINE�@TBASEREPORT.GETNONTCOLORFIX�c"TBASEREPORT.GETNOPRINTERPAGEHEIGHT��!TBASEREPORT.GETNOPRINTERPAGEWIDTH��TBASEREPORT.GETORIENTATION�]TBASEREPORT.GETORIGINX��TBASEREPORT.GETORIGINY��TBASEREPORT.GETOUTPUTINVALID��TBASEREPORT.GETOUTPUTNAME�~TBASEREPORT.GETPAGEHEIGHT�?TBASEREPORT.GETPAGEINVALID��TBASEREPORT.GETPAGENUMOFFSET�~TBASEREPORT.GETPAGEWIDTH�PTBASEREPORT.GETPARAJUSTIFY�TBASEREPORT.GETPORT�WTBASEREPORT.GETPRINTERINDEX�TBASEREPORT.GETPRINTING�yTBASEREPORT.GETRELATIVEPAGE�mTBASEREPORT.GETRIGHTWASTE��TBASEREPORT.GETSCALEX��TBASEREPORT.GETSCALEY��TBASEREPORT.GETSECTIONBOTTOM��TBASEREPORT.GETSECTIONLEFT��TBASEREPORT.GETSECTIONRIGHT�TBASEREPORT.GETSECTIONTOP��TBASEREPORT.GETSELECTION�-TBASEREPORT.GETSTATUSFORMAT�PTBASEREPORT.GETSTRIKEOUT��TBASEREPORT.GETSUBSCRIPT��TBASEREPORT.GETSUPERSCRIPT��TBASEREPORT.GETTABCOLOR��TBASEREPORT.GETTABJUSTIFY��TBASEREPORT.GETTABSHADE��TBASEREPORT.GETTEXTBKMODE�TBASEREPORT.GETTEXTFIELDWIDTH��TBASEREPORT.GETTITLE��TBASEREPORT.GETTOPWASTE��TBASEREPORT.GETTOTALPASSES��!TBASEREPORT.GETTRANSPARENTBITMAPS��TBASEREPORT.GETUNITS��TBASEREPORT.GETUNITSFACTOR��TBASEREPORT.GETUSEDRAWTEXT��TBASEREPORT.GETXDPI��TBASEREPORT.GETXPOS�'TBASEREPORT.GETYDPI��TBASEREPORT.GETYPOS�JTBASEREPORT.GOTOFOOTER�RTBASEREPORT.GOTOHEADER�CTBASEREPORT.GOTOXYZTBASEREPORT.HOMEiTBASEREPORT.LFTBASEREPORT.LINESLEFTzTBASEREPORT.LINETO�TBASEREPORT.MACRO�tTBASEREPORT.MOVETO�,TBASEREPORT.NEWCOLUMN�4TBASEREPORT.NEWLINE6TBASEREPORT.PIE�WTBASEREPORT.PIVAR��TBASEREPORT.POPFONT�TBASEREPORT.POPPOS�rTBASEREPORT.POPTABS��TBASEREPORT.PRINT��TBASEREPORT.PRINTBLOCK�(TBASEREPORT.PRINTCENTER��TBASEREPORT.PRINTCHARJUSTIFY�TBASEREPORT.PRINTFOOTER��TBASEREPORT.PRINTHEADER��TBASEREPORT.PRINTJUSTIFY��TBASEREPORT.PRINTLEFT�TBASEREPORT.PRINTLN�:TBASEREPORT.PRINTRIGHT�OTBASEREPORT.PRINTTAB��TBASEREPORT.PRINTXY�gTBASEREPORT.PUSHFONT�TBASEREPORT.PUSHPOS��TBASEREPORT.PUSHTABS��TBASEREPORT.RECTANGLE�rTBASEREPORT.RESETLINEHEIGHT�TBASEREPORT.RESETTABS��TBASEREPORT.RESTOREFONT�+TBASEREPORT.RESTOREPOS��TBASEREPORT.RESTORETABS��TBASEREPORT.ROUNDRECT��TBASEREPORT.SAVEFONT�?TBASEREPORT.SAVEPOS��TBASEREPORT.SAVETABS��TBASEREPORT.SETBKCOLOR��TBASEREPORT.SETBOLD�sTBASEREPORT.SETBOXLINECOLOR��TBASEREPORT.SETBRUSH��TBASEREPORT.SETCOLUMNNUM�TBASEREPORT.SETCOLUMNS�TTBASEREPORT.SETCOLUMNWIDTH�iTBASEREPORT.SETCOPIES�LTBASEREPORT.SETCURRENTPASS��TBASEREPORT.SETFIRSTPAGE��TBASEREPORT.SETFIXEDTABWIDTH�TBASEREPORT.SETFONT��TBASEREPORT.SETFONTALIGN��TBASEREPORT.SETFONTBASELINE��TBASEREPORT.SETFONTBOTTOM��TBASEREPORT.SETFONTCHARSET��TBASEREPORT.SETFONTCOLOR�ETBASEREPORT.SETFONTHEIGHT�JTBASEREPORT.SETFONTNAME�hTBASEREPORT.SETFONTPITCH��TBASEREPORT.SETFONTROTATION�"TBASEREPORT.SETFONTSIZE��TBASEREPORT.SETFONTTOP��TBASEREPORT.SETFONTWIDTH�mTBASEREPORT.SETIGNORERPTF��TBASEREPORT.SETITALIC��TBASEREPORT.SETLASTPAGE�TBASEREPORT.SETLINEBOTTOM�]TBASEREPORT.SETLINEHEIGHT�TBASEREPORT.SETLINEHEIGHTMETHOD��TBASEREPORT.SETLINEMIDDLE�:TBASEREPORT.SETLINENUM��TBASEREPORT.SETLINESPERINCH��TBASEREPORT.SETLINETOP�TBASEREPORT.SETMARGINBOTTOM�zTBASEREPORT.SETMARGINLEFT�TBASEREPORT.SETMARGINRIGHT�4TBASEREPORT.SETMARGINTOP�WTBASEREPORT.SETNOBUFFERLINE�RTBASEREPORT.SETNONTCOLORFIX�u"TBASEREPORT.SETNOPRINTERPAGEHEIGHT��!TBASEREPORT.SETNOPRINTERPAGEWIDTH��TBASEREPORT.SETORIENTATION�oTBASEREPORT.SETORIGINX��TBASEREPORT.SETORIGINY��TBASEREPORT.SETOUTPUTNAME��TBASEREPORT.SETPAGENUMOFFSET��TBASEREPORT.SETPARAJUSTIFY�/TBASEREPORT.SETPEN��TBASEREPORT.SETPIVAR��TBASEREPORT.SETPRINTERINDEX�$TBASEREPORT.SETSCALEX��TBASEREPORT.SETSCALEY��TBASEREPORT.SETSECTIONBOTTOM�TBASEREPORT.SETSECTIONLEFT��TBASEREPORT.SETSECTIONRIGHT�.TBASEREPORT.SETSECTIONTOP��TBASEREPORT.SETSELECTION�?TBASEREPORT.SETSTATUSFORMAT�bTBASEREPORT.SETSTRIKEOUT��TBASEREPORT.SETSUBSCRIPT��TBASEREPORT.SETSUPERSCRIPT��TBASEREPORT.SETTAB��TBASEREPORT.SETTABCOLOR��TBASEREPORT.SETTABJUSTIFY��TBASEREPORT.SETTABSHADE��TBASEREPORT.SETTEXTBKMODE�)TBASEREPORT.SETTEXTFIELDWIDTH��TBASEREPORT.SETTITLE�TBASEREPORT.SETTOPOFPAGE�aTBASEREPORT.SETTOTALPASSES��!TBASEREPORT.SETTRANSPARENTBITMAPS�TBASEREPORT.SETUNITS��TBASEREPORT.SETUNITSFACTOR��TBASEREPORT.SETUSEDRAWTEXT��TBASEREPORT.SETXPOS�9TBASEREPORT.SETYPOS�\TBASEREPORT.SOFTLINEETBASEREPORT.TAB��TBASEREPORT.TABEND�TBASEREPORT.TABSTART��TBASEREPORT.TABWIDTH�#TBASEREPORT.TEXTWIDTH�ITBASEREPORT.TRUNCATETEXT�`RvData �#  RvDatad  c'F��@SYSTEMSysFuncRvClass[         Value              Value              Value              Value              Value                              	     
                                  GetDescription  SetDescription  GetFieldName  SetFieldName  GetFullName  SetFullName  GetNullText  SetNullText  GetSize 	 SetSize 
 DataType  AsString  	AsBoolean  	AsInteger  AsFloat  
AsCurrency  
AsDateTime  AsDate  AsTime  AsBlob  DataSize  IsNull  Description	FieldNameFullNameNullTextSize	
>TRaveDataField         Value         GetDisplayFormat  SetDisplayFormat  DisplayFormat TRaveFormattedField      TRaveStringField         Value              Value         GetTextTrue  SetTextTrue  GetTextFalse  SetTextFalse  TextTrue	TextFalse TRaveBooleanField      TRaveIntegerField      TRaveFloatField      TRaveCurrencyField      #TRaveBCDField      TRaveDateTimeField      %TRaveDateField      %TRaveTimeField      TRaveBlobField      (TRaveMemoField      (TRaveGraphicField                              ReqRows       	FieldName        Amount                          
First + Next , GetCurrentRow - EOF . CheckRowsLeft / FieldByName 0 Peek 1 Unpeek 2 Empty 3 Saving 4 ��TRaveBaseDataView
         Value              Value         	GetActive 6 	SetActive 7 GetConnectionName 8 SetConnectionName 9 ActiveConnectionName 5TRaveDataView         Value              Value              Value              Value         GetDatasource ; SetDatasource < 
GetOptions = 
SetOptions > GetPassword ? SetPassword @ GetUsername A SetUsername B 
DatasourceOptionsPasswordUsernameTRaveDBAuth      C      C         Value              Value         
GetAuthDesign D 
GetAuthRun E GetLinkPoolSize F SetLinkPoolSize G GetLinkType H SetLinkType I 
AuthDesign C AuthRun C LinkPoolSizeLinkType��TRaveDatabase      J    Value  J             Value         GetDatabase K SetDatabase L GetQuery M SetQuery N Database JQuery 5TRaveDriverDataView    	AUserName   	APassword       IsValidUser P ��TRaveBaseSecurity
    Value              SetCaseMatters R GetCaseMatters S CaseMatters QTRaveSimpleSecurity    Value  5          5    Value              Value              	SetDataView U GetDataView V SetUserField W GetUserField X SetPasswordField Y GetPasswordField Z DataView 5	UserFieldPasswordField QTRaveLookupSecurity]TDateTRaveBaseDataView 5TRaveBaseDataView.CheckRowsLeft /�"�0TRaveBaseDataView.Empty 3�k�vTRaveBaseDataView.EOF .��TRaveBaseDataView.FieldByName 0�6�DTRaveBaseDataView.First +���TRaveBaseDataView.GetCurrentRow -��TRaveBaseDataView.Next ,���TRaveBaseDataView.Peek 1�J�VTRaveBaseDataView.Saving 4�|��TRaveBaseDataView.Unpeek 2�\�eTRaveBaseSecurity QTRaveBaseSecurity.IsValidUser P��TRaveBCDField $TRaveBlobField (TRaveBooleanField  TRaveBooleanField.GetTextFalse ����TRaveBooleanField.GetTextTrue ����TRaveBooleanField.SetTextFalse �ҁ�TRaveBooleanField.SetTextTrue ����TRaveCurrencyField #TRaveDatabase JTRaveDatabase.GetAuthDesign D�_�jTRaveDatabase.GetAuthRun E�p�{TRaveDatabase.GetLinkPoolSize F����TRaveDatabase.GetLinkType H����TRaveDatabase.SetLinkPoolSize G����TRaveDatabase.SetLinkType I����TRaveDataField TRaveDataField.AsBlob �H�STRaveDataField.AsBoolean �р�TRaveDataField.AsCurrency ��TRaveDataField.AsDate �&�1TRaveDataField.AsDateTime �� TRaveDataField.AsFloat ���TRaveDataField.AsInteger ���TRaveDataField.AsString ����TRaveDataField.AsTime �7�BTRaveDataField.DataSize �Y�dTRaveDataField.DataType ����TRaveDataField.GetDescription  TRaveDataField.GetFieldName #.TRaveDataField.GetFullName FQTRaveDataField.GetNullText itTRaveDataField.GetSize 	����TRaveDataField.IsNull �j�uTRaveDataField.SetDescription TRaveDataField.SetFieldName 4@TRaveDataField.SetFullName WcTRaveDataField.SetNullText z��TRaveDataField.SetSize 
����TRaveDataView :TRaveDataView.GetActive 6����TRaveDataView.GetConnectionName 8����TRaveDataView.SetActive 7����TRaveDataView.SetConnectionName 9����TRaveDateField &TRaveDateTimeField %TRaveDBAuth CTRaveDBAuth.GetDatasource ;�ӂ�TRaveDBAuth.GetOptions =���TRaveDBAuth.GetPassword ?��$TRaveDBAuth.GetUsername A�<�GTRaveDBAuth.SetDatasource <���TRaveDBAuth.SetOptions >��TRaveDBAuth.SetPassword @�*�6TRaveDBAuth.SetUsername B�M�YTRaveDriverDataView OTRaveDriverDataView.GetDatabase K�ǃ�TRaveDriverDataView.GetQuery M���TRaveDriverDataView.SetDatabase L�؃�TRaveDriverDataView.SetQuery N���TRaveFloatField "TRaveFormattedField $TRaveFormattedField.GetDisplayFormat �{��$TRaveFormattedField.SetDisplayFormat ����TRaveGraphicField *TRaveIntegerField !TRaveLookupSecurity [TRaveLookupSecurity.GetDataView V�Y�d$TRaveLookupSecurity.GetPasswordField Z���� TRaveLookupSecurity.GetUserField X�|��TRaveLookupSecurity.SetDataView U�G�S$TRaveLookupSecurity.SetPasswordField Y���� TRaveLookupSecurity.SetUserField W�j�vTRaveMemoField )TRaveSimpleSecurity T"TRaveSimpleSecurity.GetCaseMatters S�6�A"TRaveSimpleSecurity.SetCaseMatters R�$�0TRaveStringField TRaveTimeField 'TTime ��
 ���     
 ���     
 ���     
 ���     
 ���     
 ���     
 ���     
 ���     
 ���     
 ���     
 ���     
 ���     
 ���      
 ���     
 ���     
 ���	     
 ���     
 ���     
 ���     
 ���     
 ���     
 ���      
 ���     
 ���     
 ���     
 ���     
 ���     
 ���     
 ���    
 ���    
 ���    
 ���      
 ���  (    
 ��� (    
 ���     
 ���    
 ���      
 ���      
 ���      
 ���     
 ���     
 ���     
 ���     
 ���     
 ���     
 ���     
 ���     
 ���     
 ���     
 ���     
 ���     
 ���     
 ���     
 ���     
 ���     
 ���     
 ���     
 ���     
 ���     
 ���     
 ���(  0    
 ���     
 ���      
 ���     
 ���     
 ���     
 ���     
 ���     
 ���     ��@   ��ETRAVEBASEDATAVIEW.CHECKROWSLEFT�0TRAVEBASEDATAVIEW.EMPTY�vTRAVEBASEDATAVIEW.EOF�TRAVEBASEDATAVIEW.FIELDBYNAME�DTRAVEBASEDATAVIEW.FIRST��TRAVEBASEDATAVIEW.GETCURRENTROW�TRAVEBASEDATAVIEW.NEXT��TRAVEBASEDATAVIEW.PEEK�VTRAVEBASEDATAVIEW.SAVING��TRAVEBASEDATAVIEW.UNPEEK�eTRAVEBASESECURITY.ISVALIDUSER�TRAVEBOOLEANFIELD.GETTEXTFALSE��TRAVEBOOLEANFIELD.GETTEXTTRUE��TRAVEBOOLEANFIELD.SETTEXTFALSE��TRAVEBOOLEANFIELD.SETTEXTTRUE��TRAVEDATABASE.GETAUTHDESIGN�jTRAVEDATABASE.GETAUTHRUN�{TRAVEDATABASE.GETLINKPOOLSIZE��TRAVEDATABASE.GETLINKTYPE��TRAVEDATABASE.SETLINKPOOLSIZE��TRAVEDATABASE.SETLINKTYPE��TRAVEDATAFIELD.ASBLOB�STRAVEDATAFIELD.ASBOOLEAN��TRAVEDATAFIELD.ASCURRENCY�TRAVEDATAFIELD.ASDATE�1TRAVEDATAFIELD.ASDATETIME� TRAVEDATAFIELD.ASFLOAT��TRAVEDATAFIELD.ASINTEGER��TRAVEDATAFIELD.ASSTRING��TRAVEDATAFIELD.ASTIME�BTRAVEDATAFIELD.DATASIZE�dTRAVEDATAFIELD.DATATYPE��TRAVEDATAFIELD.GETDESCRIPTIONTRAVEDATAFIELD.GETFIELDNAME.TRAVEDATAFIELD.GETFULLNAMEQTRAVEDATAFIELD.GETNULLTEXTtTRAVEDATAFIELD.GETSIZE��TRAVEDATAFIELD.ISNULL�uTRAVEDATAFIELD.SETDESCRIPTIONTRAVEDATAFIELD.SETFIELDNAME@TRAVEDATAFIELD.SETFULLNAMEcTRAVEDATAFIELD.SETNULLTEXT��TRAVEDATAFIELD.SETSIZE��TRAVEDATAVIEW.GETACTIVE��TRAVEDATAVIEW.GETCONNECTIONNAME��TRAVEDATAVIEW.SETACTIVE��TRAVEDATAVIEW.SETCONNECTIONNAME��TRAVEDBAUTH.GETDATASOURCE��TRAVEDBAUTH.GETOPTIONS�TRAVEDBAUTH.GETPASSWORD�$TRAVEDBAUTH.GETUSERNAME�GTRAVEDBAUTH.SETDATASOURCE��TRAVEDBAUTH.SETOPTIONS�TRAVEDBAUTH.SETPASSWORD�6TRAVEDBAUTH.SETUSERNAME�YTRAVEDRIVERDATAVIEW.GETDATABASE��TRAVEDRIVERDATAVIEW.GETQUERY��TRAVEDRIVERDATAVIEW.SETDATABASE��TRAVEDRIVERDATAVIEW.SETQUERY�$TRAVEFORMATTEDFIELD.GETDISPLAYFORMAT��$TRAVEFORMATTEDFIELD.SETDISPLAYFORMAT��TRAVELOOKUPSECURITY.GETDATAVIEW�d$TRAVELOOKUPSECURITY.GETPASSWORDFIELD�� TRAVELOOKUPSECURITY.GETUSERFIELD��TRAVELOOKUPSECURITY.SETDATAVIEW�S$TRAVELOOKUPSECURITY.SETPASSWORDFIELD�� TRAVELOOKUPSECURITY.SETUSERFIELD�v"TRAVESIMPLESECURITY.GETCASEMATTERS�A"TRAVESIMPLESECURITY.SETCASEMATTERS�0RvProj �  RvProjd  �BD��@SYSTEMSysFuncRvClass            Value              Value              Value          ��    Value ��         *    Value *         )    Value )             Value              Value          +    Value +        GetAlwaysGenerate  SetAlwaysGenerate  GetCategory  SetCategory  	GetCopies  	SetCopies  GetFirstPage  SetFirstPage 	 
GetCollate 
 
SetCollate  	GetDuplex  	SetDuplex  GetMaxPages  SetMaxPages  
GetPrinter  
SetPrinter  GetResolution  SetResolution  AlwaysGenerateCategoryCopies	FirstPage��Collate*	
Duplex)MaxPagesPrinter
Resolution+oTRaveReport"         Value              Value         Name   DefRoot >  >    Param   Value         Param       	GetUnits  SetUnits  GetUnitsFactor  SetUnitsFactor  FindRaveComponent  SetParam  GetParam  UnitsUnitsFactoroTRaveProjectManager"
tkDataView tkExport tkPage 	tkProject  tkReport tkReportPage TRaveProjectManager %TRaveProjectManager.FindRaveComponent ����TRaveProjectManager.GetParam ����TRaveProjectManager.GetUnits �;�F"TRaveProjectManager.GetUnitsFactor �^�iTRaveProjectManager.SetParam ����TRaveProjectManager.SetUnits �L�X"TRaveProjectManager.SetUnitsFactor �o�{TRaveReport TRaveReport.GetAlwaysGenerate  TRaveReport.GetCategory #.TRaveReport.GetCollate 
����TRaveReport.GetCopies FQTRaveReport.GetDuplex ����TRaveReport.GetFirstPage itTRaveReport.GetMaxPages �Ҁ�TRaveReport.GetPrinter ��� TRaveReport.GetResolution ��#TRaveReport.SetAlwaysGenerate TRaveReport.SetCategory 4@TRaveReport.SetCollate ����TRaveReport.SetCopies WcTRaveReport.SetDuplex ����TRaveReport.SetFirstPage 	z��TRaveReport.SetMaxPages ���TRaveReport.SetPrinter ��TRaveReport.SetResolution �)�5TTagKind  ��
 ���      
 ���     
 ���     
 ���     
 ���     
 ���     
 ���     
 ���     
 ���     
 ���     
 ���     
 ���     
 ���     
 ���     
 ���     
 ���     
 ���     
 ���     
 ���     
 ���     
 ���     
 ���     
 ���( 0    
 ���(     
 ��� (    ��@   ��%TRAVEPROJECTMANAGER.FINDRAVECOMPONENT��TRAVEPROJECTMANAGER.GETPARAM��TRAVEPROJECTMANAGER.GETUNITS�F"TRAVEPROJECTMANAGER.GETUNITSFACTOR�iTRAVEPROJECTMANAGER.SETPARAM��TRAVEPROJECTMANAGER.SETUNITS�X"TRAVEPROJECTMANAGER.SETUNITSFACTOR�{TRAVEREPORT.GETALWAYSGENERATETRAVEREPORT.GETCATEGORY.TRAVEREPORT.GETCOLLATE��TRAVEREPORT.GETCOPIESQTRAVEREPORT.GETDUPLEX��TRAVEREPORT.GETFIRSTPAGEtTRAVEREPORT.GETMAXPAGES��TRAVEREPORT.GETPRINTER� TRAVEREPORT.GETRESOLUTION�#TRAVEREPORT.SETALWAYSGENERATETRAVEREPORT.SETCATEGORY@TRAVEREPORT.SETCOLLATE��TRAVEREPORT.SETCOPIEScTRAVEREPORT.SETDUPLEX��TRAVEREPORT.SETFIRSTPAGE��TRAVEREPORT.SETMAXPAGES��TRAVEREPORT.SETPRINTER�TRAVEREPORT.SETRESOLUTION�5RvCsStd �  RvCsStdd  )TJ��@SYSTEMRvClassRvDataSysFunc;   Name Size Color           Value          GetFont  SetFont  Font >TRaveFontMaster         Value          5    Value 5             Value         	GetInitValue  SetInitValue  GetInitDataView  SetInitDataView  GetInitDataField 	 SetInitDataField 
 	InitValueInitDataView5InitDataField>TRavePageNumInit          Value               Value               Value          	GetFontMirror  SetFontMirror  GetColor  SetColor  GetFont  SetFont  
FontMirror ColorFont hTRaveCustomText��         Value              Value         GetRotation  SetRotation  GetTruncate  SetTruncate  RotationTruncate 	TRaveText��         Value         GetWasteFit  SetWasteFit  WasteFitiTRaveSectionl             Value               Value              Value          5    Value 5                  GetMatchSide  SetMatchSide  GetFileLink  SetFileLink  GetDataField   SetDataField ! GetDataView " SetDataView # 	ImageName $ ImageFilter % 	MatchSide FileLink	DataFieldDataView5hTRaveBaseImagex              	ImageName ' ImageFilter (  &TRaveGraphicImagex      )TRaveBitmapx      )TRaveMetaFilex         Value              Value              Value         	GetCaseMatters , SetCaseMatters - GetReplaceString . SetReplaceString / GetSearchToken 0 SetSearchToken 1 CaseMattersReplaceStringSearchTokenTRaveMailMergeItem	         Value              Value              Value              Value         GetContainsRTF 3 SetContainsRTF 4 GetExpandParent 5 SetExpandParent 6 GetMemoText 7 SetMemoText 8 GetTruncate 9 SetTruncate : ContainsRTFExpandParentTextTruncate 	TRaveMemo��?msBoth msHeight msInside msWidth  
TMatchSide TRaveBaseImage &TRaveBaseImage.GetDataField  ����TRaveBaseImage.GetDataView "�ǁ�TRaveBaseImage.GetFileLink ����TRaveBaseImage.GetMatchSide �^�iTRaveBaseImage.ImageFilter %  TRaveBaseImage.ImageName $  TRaveBaseImage.SetDataField !����TRaveBaseImage.SetDataView #�؁�TRaveBaseImage.SetFileLink ����TRaveBaseImage.SetMatchSide �o�{TRaveBitmap *TRaveCustomText TRaveCustomText.GetColor ����TRaveCustomText.GetFont �Ҁ�TRaveCustomText.GetFontMirror ����TRaveCustomText.SetColor ����TRaveCustomText.SetFont ���TRaveCustomText.SetFontMirror ����	TRaveFont TRaveFontMaster TRaveFontMaster.GetFont  TRaveFontMaster.SetFont TRaveGraphicImage )TRaveGraphicImage.ImageFilter (���TRaveGraphicImage.ImageName '���TRaveMailMergeItem 2!TRaveMailMergeItem.GetCaseMatters ,��#TRaveMailMergeItem.GetReplaceString .�/�:!TRaveMailMergeItem.GetSearchToken 0�R�]!TRaveMailMergeItem.SetCaseMatters -��)#TRaveMailMergeItem.SetReplaceString /�@�L!TRaveMailMergeItem.SetSearchToken 1�c�o	TRaveMemo ;TRaveMemo.GetContainsRTF 3�u��TRaveMemo.GetExpandParent 5����TRaveMemo.GetMemoText 7����TRaveMemo.GetTruncate 9�ނ�TRaveMemo.SetContainsRTF 4����TRaveMemo.SetExpandParent 6����TRaveMemo.SetMemoText 8�̂�TRaveMemo.SetTruncate :���TRaveMetaFile +TRavePageNumInit !TRavePageNumInit.GetInitDataField 	it TRavePageNumInit.GetInitDataView FQTRavePageNumInit.GetInitValue #.!TRavePageNumInit.SetInitDataField 
z�� TRavePageNumInit.SetInitDataView WcTRavePageNumInit.SetInitValue 4@TRaveSection TRaveSection.GetWasteFit �;�FTRaveSection.SetWasteFit �L�X	TRaveText TRaveText.GetRotation ��� TRaveText.GetTruncate ��#TRaveText.SetRotation ��TRaveText.SetTruncate �)�5 �
 ���     
 ���     
 ���     
 ���     
 ���     
 ���     
 ���     
 ���     
 ���     
 ���     
 ���     
 ���     
 ���     
 ���     
 ���     
 ���     
 ���      
 ���     
 ���      
 ���     
 ���     
 ���     
 ���     
 ���     
 ���     
 ���     
 ���     
 ���     
 ���     
 ���     
 ���      
 ���     
 ���     
 ���     
 ���     
 ���     
 ���      
 ���     
 ���      
 ���     
 ���     
 ���     
 ���      
 ���     ��@   �,TRAVEBASEIMAGE.GETDATAFIELD��TRAVEBASEIMAGE.GETDATAVIEW��TRAVEBASEIMAGE.GETFILELINK��TRAVEBASEIMAGE.GETMATCHSIDE�iTRAVEBASEIMAGE.SETDATAFIELD��TRAVEBASEIMAGE.SETDATAVIEW��TRAVEBASEIMAGE.SETFILELINK��TRAVEBASEIMAGE.SETMATCHSIDE�{TRAVECUSTOMTEXT.GETCOLOR��TRAVECUSTOMTEXT.GETFONT��TRAVECUSTOMTEXT.GETFONTMIRROR��TRAVECUSTOMTEXT.SETCOLOR��TRAVECUSTOMTEXT.SETFONT��TRAVECUSTOMTEXT.SETFONTMIRROR��TRAVEFONTMASTER.GETFONTTRAVEFONTMASTER.SETFONTTRAVEGRAPHICIMAGE.IMAGEFILTER�TRAVEGRAPHICIMAGE.IMAGENAME��!TRAVEMAILMERGEITEM.GETCASEMATTERS�#TRAVEMAILMERGEITEM.GETREPLACESTRING�:!TRAVEMAILMERGEITEM.GETSEARCHTOKEN�]!TRAVEMAILMERGEITEM.SETCASEMATTERS�)#TRAVEMAILMERGEITEM.SETREPLACESTRING�L!TRAVEMAILMERGEITEM.SETSEARCHTOKEN�oTRAVEMEMO.GETCONTAINSRTF��TRAVEMEMO.GETEXPANDPARENT��TRAVEMEMO.GETMEMOTEXT��TRAVEMEMO.GETTRUNCATE��TRAVEMEMO.SETCONTAINSRTF��TRAVEMEMO.SETEXPANDPARENT��TRAVEMEMO.SETMEMOTEXT��TRAVEMEMO.SETTRUNCATE��!TRAVEPAGENUMINIT.GETINITDATAFIELDt TRAVEPAGENUMINIT.GETINITDATAVIEWQTRAVEPAGENUMINIT.GETINITVALUE.!TRAVEPAGENUMINIT.SETINITDATAFIELD�� TRAVEPAGENUMINIT.SETINITDATAVIEWcTRAVEPAGENUMINIT.SETINITVALUE@TRAVESECTION.GETWASTEFIT�FTRAVESECTION.SETWASTEFIT�XTRAVETEXT.GETROTATION� TRAVETEXT.GETTRUNCATE�#TRAVETEXT.SETROTATION�TRAVETEXT.SETTRUNCATE�5RvCsData �4  RvCsDatad  �\M��@SYSTEMSysFuncRvClassRvDataRvCsStdm         Value          5    Value 5         5    Value 5             Value              Value              Value         GetDataField  SetDataField  GetDataView  SetDataView  GetLookupDataView  SetLookupDataView  GetLookupField  SetLookupField  GetLookupDisplay 	 SetLookupDisplay 
 GetLookupInvalid  SetLookupInvalid  	DataFieldDataView5LookupDataView5LookupFieldLookupDisplay	
LookupInvalidTRaveDataText��         Value          5    Value 5        GetDataField  SetDataField  GetDataView  SetDataView  	DataFieldDataView5;TRaveDataMemo��                      Value           >    Value >             Value          5    Value 5             Value              Value               Value           >    Value >             Value          	    GetCalcType  SetCalcType  GetController  SetController  GetCountBlanks  SetCountBlanks  GetDataView  SetDataView  GetDataField  SetDataField   GetDisplayFormat ! SetDisplayFormat " GetDisplayType # SetDisplayType $ GetInitializer % SetInitializer & GetRunningTotal ' SetRunningTotal ( GetValue ) Value	 CalcType 
Controller>CountBlanksDataView5	DataField	
DisplayFormatDisplayType Initializer>RunningTotalTRaveCalcText��     	              Value              Value              Value               Value          GetValue + 	GetIsNull , GetDestParam - SetDestParam . GetDestPIVar / SetDestPIVar 0 GetDisplayFormat 1 SetDisplayFormat 2 GetDisplayType 3 SetDisplayType 4 Value	 IsNull 	DestParam	DestPIVarDisplayFormatDisplayType 	
>TRaveCalcVariable      5    Value  5             Value          5    Value 5         	    Value 	              Value            5    Value  5             Value          5    Value 5         	    Value 	              Value                Value                Value          $GetSrc1CalcVar 6 SetSrc1CalcVar 7 GetSrc1DataField 8 SetSrc1DataField 9 GetSrc1DataView : SetSrc1DataView ; GetSrc1Value < SetSrc1Value = GetSrc1Function > SetSrc1Function ? GetSrc2CalcVar @ SetSrc2CalcVar A GetSrc2DataField B SetSrc2DataField C GetSrc2DataView D SetSrc2DataView E GetSrc2Value F SetSrc2Value G GetSrc2Function H SetSrc2Function I GetOperator J SetOperator K GetResultFunction L SetResultFunction M Operator ResultFunction Src1CalcVar 5Src1DataFieldSrc1DataView5	Src1Value	Src1Function 	
Src2CalcVar 5Src2DataFieldSrc2DataView5	Src2Value	Src2Function  5TRaveCalcOpJ          Value            5    Value  5         >    Value >             Value          5    Value 5             Value          >    Value >             Value         GetCalcType O SetCalcType P 
GetCalcVar Q 
SetCalcVar R GetController S SetController T GetCountBlanks U SetCountBlanks V GetDataView W SetDataView X GetDataField Y SetDataField Z GetInitializer [ SetInitializer \ GetRunningTotal ] SetRunningTotal ^ CalcType CalcVar 5
Controller>CountBlanksDataView5	
	DataFieldInitializer>RunningTotal 5TRaveCalcTotal1      5    Value  5             Value          	    Value 	        	GetInitCalcVar ` SetInitCalcVar a GetInitDataField b SetInitDataField c GetInitValue d SetInitValue e InitCalcVar 5InitDataField	InitValue	>TRaveCalcController         Value              Value          5    Value 5        	GetCompareCase g SetCompareCase h GetDataField i SetDataField j GetDataView k SetDataView l CompareCase	DataFieldDataView5TRaveDataMirrorSectionu��cfAbs cfArcTan cfCos cfDec cfFrac cfHoursToTime cfInc cfMinsToTime cfNeg cfNone  	cfPercent cfRandom cfRound cfRound1 cfRound2 cfRound3 cfRound4 cfRound5 cfSecsToTime cfSin cfSqr 	cfSqrt 
cfTimeToHours cfTimeToMins cfTimeToSecs cfTrunc coAdd  	coAverage coDiv coExp 	coGreater coLesser coMod coMul coSub 	ctAverage ctCount  ctMax ctMin ctSum dtDateTimeFormat dtNumericFormat  TRaveCalcController f"TRaveCalcController.GetInitCalcVar `�΅�$TRaveCalcController.GetInitDataField b��� TRaveCalcController.GetInitValue d��"TRaveCalcController.SetInitCalcVar a�߅�$TRaveCalcController.SetInitDataField c�� TRaveCalcController.SetInitValue e�%�1TRaveCalcFunction TRaveCalcOp NTRaveCalcOp.GetOperator J�p�{TRaveCalcOp.GetResultFunction L����TRaveCalcOp.GetSrc1CalcVar 6��TRaveCalcOp.GetSrc1DataField 8�5�@TRaveCalcOp.GetSrc1DataView :�X�cTRaveCalcOp.GetSrc1Function >����TRaveCalcOp.GetSrc1Value <�{��TRaveCalcOp.GetSrc2CalcVar @����TRaveCalcOp.GetSrc2DataField B���TRaveCalcOp.GetSrc2DataView D��TRaveCalcOp.GetSrc2Function H�M�XTRaveCalcOp.GetSrc2Value F�*�5TRaveCalcOp.SetOperator K����TRaveCalcOp.SetResultFunction M����TRaveCalcOp.SetSrc1CalcVar 7�#�/TRaveCalcOp.SetSrc1DataField 9�F�RTRaveCalcOp.SetSrc1DataView ;�i�uTRaveCalcOp.SetSrc1Function ?����TRaveCalcOp.SetSrc1Value =����TRaveCalcOp.SetSrc2CalcVar A�҃�TRaveCalcOp.SetSrc2DataField C���TRaveCalcOp.SetSrc2DataView E��$TRaveCalcOp.SetSrc2Function I�^�jTRaveCalcOp.SetSrc2Value G�;�GTRaveCalcOperator TRaveCalcText *TRaveCalcText.GetCalcType ��#TRaveCalcText.GetController �;�FTRaveCalcText.GetCountBlanks �^�iTRaveCalcText.GetDataField ����TRaveCalcText.GetDataView ����TRaveCalcText.GetDisplayFormat !�ǁ�TRaveCalcText.GetDisplayType #���TRaveCalcText.GetInitializer %��TRaveCalcText.GetRunningTotal '�0�;TRaveCalcText.GetValue )�S�^TRaveCalcText.SetCalcType �)�5TRaveCalcText.SetController �L�XTRaveCalcText.SetCountBlanks �o�{TRaveCalcText.SetDataField  ����TRaveCalcText.SetDataView ����TRaveCalcText.SetDisplayFormat "�؁�TRaveCalcText.SetDisplayType $���TRaveCalcText.SetInitializer &��*TRaveCalcText.SetRunningTotal (�A�MTRaveCalcTotal _TRaveCalcTotal.GetCalcType O����TRaveCalcTotal.GetCalcVar Q�ل�TRaveCalcTotal.GetController S���TRaveCalcTotal.GetCountBlanks U��*TRaveCalcTotal.GetDataField Y�e�pTRaveCalcTotal.GetDataView W�B�MTRaveCalcTotal.GetInitializer [����TRaveCalcTotal.GetRunningTotal ]����TRaveCalcTotal.SetCalcType P�Ǆ�TRaveCalcTotal.SetCalcVar R���TRaveCalcTotal.SetController T��TRaveCalcTotal.SetCountBlanks V�0�<TRaveCalcTotal.SetDataField Z�v��TRaveCalcTotal.SetDataView X�S�_TRaveCalcTotal.SetInitializer \����TRaveCalcTotal.SetRunningTotal ^����TRaveCalcType TRaveCalcVariable 5TRaveCalcVariable.GetDestParam -����TRaveCalcVariable.GetDestPIVar /����"TRaveCalcVariable.GetDisplayFormat 1�̂� TRaveCalcVariable.GetDisplayType 3���TRaveCalcVariable.GetIsNull ,�u��TRaveCalcVariable.GetValue +�d�oTRaveCalcVariable.SetDestParam .����TRaveCalcVariable.SetDestPIVar 0����"TRaveCalcVariable.SetDisplayFormat 2�݂� TRaveCalcVariable.SetDisplayType 4� �TRaveDataMemo TRaveDataMemo.GetDataField �Ҁ�TRaveDataMemo.GetDataView ��� TRaveDataMemo.SetDataField ���TRaveDataMemo.SetDataView ��TRaveDataMirrorSection m%TRaveDataMirrorSection.GetCompareCase g�7�B#TRaveDataMirrorSection.GetDataField i�Z�e"TRaveDataMirrorSection.GetDataView k�}��%TRaveDataMirrorSection.SetCompareCase h�H�T#TRaveDataMirrorSection.SetDataField j�k�w"TRaveDataMirrorSection.SetDataView l����TRaveDataText TRaveDataText.GetDataField  TRaveDataText.GetDataView #.TRaveDataText.GetLookupDataView FQTRaveDataText.GetLookupDisplay 	����TRaveDataText.GetLookupField itTRaveDataText.GetLookupInvalid ����TRaveDataText.SetDataField TRaveDataText.SetDataView 4@TRaveDataText.SetLookupDataView WcTRaveDataText.SetLookupDisplay 
����TRaveDataText.SetLookupField z��TRaveDataText.SetLookupInvalid ����TRaveDisplayType  ��
 ���     
 ���     
 ���     
 ���     
 ���     
 ���     
 ���     
 ���     
 ���     
 ���     
 ���     
 ���     
 ���     
 ���     
 ���     
 ���     
 ���     
 ���     
 ���     
 ���     
 ���      
 ���     
 ���     
 ���     
 ���     
 ���     
 ���     
 ���     
 ���     
 ���     
 ���     
 ���     
 ���      
 ���     
 ���     
 ���     
 ���      
 ���     
 ���     
 ���     
 ���     
 ���     
 ���     
 ���     
 ���     
 ���     
 ���     
 ���     
 ���     
 ���     
 ���     
 ���     
 ��� 
    
 ���     
 ���     
 ���     
 ���     
 ���     
 ���     
 ���     
 ���     
 ���     
 ��� 
    
 ���     
 ���     
 ���     
 ���     
 ���     
 ���     
 ���     
 ���     
 ���     
 ���     
 ���     
 ���     
 ���      
 ���     
 ���     
 ���     
 ���     
 ���     
 ���     
 ���     
 ���      
 ���     
 ���     
 ���     
 ���     
 ���     
 ���     
 ��� 
    
 ���      
 ���     
 ���     
 ���     
 ���     
 ���     ��@   ��a"TRAVECALCCONTROLLER.GETINITCALCVAR��$TRAVECALCCONTROLLER.GETINITDATAFIELD�� TRAVECALCCONTROLLER.GETINITVALUE�"TRAVECALCCONTROLLER.SETINITCALCVAR��$TRAVECALCCONTROLLER.SETINITDATAFIELD� TRAVECALCCONTROLLER.SETINITVALUE�1TRAVECALCOP.GETOPERATOR�{TRAVECALCOP.GETRESULTFUNCTION��TRAVECALCOP.GETSRC1CALCVAR�TRAVECALCOP.GETSRC1DATAFIELD�@TRAVECALCOP.GETSRC1DATAVIEW�cTRAVECALCOP.GETSRC1FUNCTION��TRAVECALCOP.GETSRC1VALUE��TRAVECALCOP.GETSRC2CALCVAR��TRAVECALCOP.GETSRC2DATAFIELD��TRAVECALCOP.GETSRC2DATAVIEW�TRAVECALCOP.GETSRC2FUNCTION�XTRAVECALCOP.GETSRC2VALUE�5TRAVECALCOP.SETOPERATOR��TRAVECALCOP.SETRESULTFUNCTION��TRAVECALCOP.SETSRC1CALCVAR�/TRAVECALCOP.SETSRC1DATAFIELD�RTRAVECALCOP.SETSRC1DATAVIEW�uTRAVECALCOP.SETSRC1FUNCTION��TRAVECALCOP.SETSRC1VALUE��TRAVECALCOP.SETSRC2CALCVAR��TRAVECALCOP.SETSRC2DATAFIELD�TRAVECALCOP.SETSRC2DATAVIEW�$TRAVECALCOP.SETSRC2FUNCTION�jTRAVECALCOP.SETSRC2VALUE�GTRAVECALCTEXT.GETCALCTYPE�#TRAVECALCTEXT.GETCONTROLLER�FTRAVECALCTEXT.GETCOUNTBLANKS�iTRAVECALCTEXT.GETDATAFIELD��TRAVECALCTEXT.GETDATAVIEW��TRAVECALCTEXT.GETDISPLAYFORMAT��TRAVECALCTEXT.GETDISPLAYTYPE��TRAVECALCTEXT.GETINITIALIZER�TRAVECALCTEXT.GETRUNNINGTOTAL�;TRAVECALCTEXT.GETVALUE�^TRAVECALCTEXT.SETCALCTYPE�5TRAVECALCTEXT.SETCONTROLLER�XTRAVECALCTEXT.SETCOUNTBLANKS�{TRAVECALCTEXT.SETDATAFIELD��TRAVECALCTEXT.SETDATAVIEW��TRAVECALCTEXT.SETDISPLAYFORMAT��TRAVECALCTEXT.SETDISPLAYTYPE�TRAVECALCTEXT.SETINITIALIZER�*TRAVECALCTEXT.SETRUNNINGTOTAL�MTRAVECALCTOTAL.GETCALCTYPE��TRAVECALCTOTAL.GETCALCVAR��TRAVECALCTOTAL.GETCONTROLLER�TRAVECALCTOTAL.GETCOUNTBLANKS�*TRAVECALCTOTAL.GETDATAFIELD�pTRAVECALCTOTAL.GETDATAVIEW�MTRAVECALCTOTAL.GETINITIALIZER��TRAVECALCTOTAL.GETRUNNINGTOTAL��TRAVECALCTOTAL.SETCALCTYPE��TRAVECALCTOTAL.SETCALCVAR��TRAVECALCTOTAL.SETCONTROLLER�TRAVECALCTOTAL.SETCOUNTBLANKS�<TRAVECALCTOTAL.SETDATAFIELD��TRAVECALCTOTAL.SETDATAVIEW�_TRAVECALCTOTAL.SETINITIALIZER��TRAVECALCTOTAL.SETRUNNINGTOTAL��TRAVECALCVARIABLE.GETDESTPARAM��TRAVECALCVARIABLE.GETDESTPIVAR��"TRAVECALCVARIABLE.GETDISPLAYFORMAT�� TRAVECALCVARIABLE.GETDISPLAYTYPE��TRAVECALCVARIABLE.GETISNULL��TRAVECALCVARIABLE.GETVALUE�oTRAVECALCVARIABLE.SETDESTPARAM��TRAVECALCVARIABLE.SETDESTPIVAR��"TRAVECALCVARIABLE.SETDISPLAYFORMAT�� TRAVECALCVARIABLE.SETDISPLAYTYPE�TRAVEDATAMEMO.GETDATAFIELD��TRAVEDATAMEMO.GETDATAVIEW� TRAVEDATAMEMO.SETDATAFIELD��TRAVEDATAMEMO.SETDATAVIEW�%TRAVEDATAMIRRORSECTION.GETCOMPARECASE�B#TRAVEDATAMIRRORSECTION.GETDATAFIELD�e"TRAVEDATAMIRRORSECTION.GETDATAVIEW��%TRAVEDATAMIRRORSECTION.SETCOMPARECASE�T#TRAVEDATAMIRRORSECTION.SETDATAFIELD�w"TRAVEDATAMIRRORSECTION.SETDATAVIEW��TRAVEDATATEXT.GETDATAFIELDTRAVEDATATEXT.GETDATAVIEW.TRAVEDATATEXT.GETLOOKUPDATAVIEWQTRAVEDATATEXT.GETLOOKUPDISPLAY��TRAVEDATATEXT.GETLOOKUPFIELDtTRAVEDATATEXT.GETLOOKUPINVALID��TRAVEDATATEXT.SETDATAFIELDTRAVEDATATEXT.SETDATAVIEW@TRAVEDATATEXT.SETLOOKUPDATAVIEWcTRAVEDATATEXT.SETLOOKUPDISPLAY��TRAVEDATATEXT.SETLOOKUPFIELD��TRAVEDATATEXT.SETLOOKUPINVALID��RvCsDraw l  RvCsDrawd  |oH��@SYSTEMSysFuncRvClass     hTRaveGraphicBasek         Value          "    Value "             Value              Value              Value         GetColor  SetColor  GetLineStyle  SetLineStyle  GetLineWidth  SetLineWidth  GetLineWidthType  SetLineWidthType 	 GetNESW 
 SetNESW  Color	LineStyle"	LineWidthLineWidthTypeNESW	
 	TRaveLinez      
TRaveHLinez      
TRaveVLinez    Value              Value              Value "         "    Value              SetForeColor  GetForeColor  SetLineWidth  GetLineWidth  SetLineStyle  GetLineStyle  SetBackColor  GetBackColor  BorderColorBorderStyle"BorderWidthBorderWidthType	FillColor TRaveSurface}         Value              Value         
GetHRadius  
SetHRadius  
GetVRadius  
SetVRadius  HRadiusVRadius TRaveRectangle��      TRaveSquare��      TRaveEllipse}      TRaveCircle}TRaveCircle TRaveEllipse TRaveGraphicBase 
TRaveHLine 	TRaveLine TRaveLine.GetColor  TRaveLine.GetLineStyle #.TRaveLine.GetLineWidth FQTRaveLine.GetLineWidthType itTRaveLine.GetNESW 
����TRaveLine.SetColor TRaveLine.SetLineStyle 4@TRaveLine.SetLineWidth WcTRaveLine.SetLineWidthType 	z��TRaveLine.SetNESW ����TRaveRectangle TRaveRectangle.GetHRadius �;�FTRaveRectangle.GetVRadius �^�iTRaveRectangle.SetHRadius �L�XTRaveRectangle.SetVRadius �o�{TRaveSquare TRaveSurface TRaveSurface.GetBackColor �*�5TRaveSurface.GetForeColor ����TRaveSurface.GetLineStyle ��TRaveSurface.GetLineWidth ���TRaveSurface.SetBackColor ��$TRaveSurface.SetForeColor ����TRaveSurface.SetLineStyle ���TRaveSurface.SetLineWidth �Ҁ�
TRaveVLine  ��
 ���     
 ���     
 ���     
 ���     
 ���     
 ���     
 ���     
 ���     
 ���      
 ���     
 ���     
 ���     
 ���     
 ���     
 ���     
 ���     
 ���     
 ���     
 ���     
 ���     
 ���     
 ���     ��@   ��TRAVELINE.GETCOLORTRAVELINE.GETLINESTYLE.TRAVELINE.GETLINEWIDTHQTRAVELINE.GETLINEWIDTHTYPEtTRAVELINE.GETNESW��TRAVELINE.SETCOLORTRAVELINE.SETLINESTYLE@TRAVELINE.SETLINEWIDTHcTRAVELINE.SETLINEWIDTHTYPE��TRAVELINE.SETNESW��TRAVERECTANGLE.GETHRADIUS�FTRAVERECTANGLE.GETVRADIUS�iTRAVERECTANGLE.SETHRADIUS�XTRAVERECTANGLE.SETVRADIUS�{TRAVESURFACE.GETBACKCOLOR�5TRAVESURFACE.GETFORECOLOR��TRAVESURFACE.GETLINESTYLE�TRAVESURFACE.GETLINEWIDTH��TRAVESURFACE.SETBACKCOLOR�$TRAVESURFACE.SETFORECOLOR��TRAVESURFACE.SETLINESTYLE�TRAVESURFACE.SETLINEWIDTH��RvCsRpt !  RvCsRptd  /P��@SYSTEMSysFuncRvClassRvDataRvCsStdG                  Value              Value         
GetColumns  
SetColumns  GetColumnSpacing  SetColumnSpacing  ColumnsColumnSpacingiTRaveRegionw               Value              Value              Value          5    Value 5             Value              Value               Value               Value              Value         	GetRegion 	 GetAllowSplit 
 SetAllowSplit  GetDesignerHide  SetDesignerHide  GetFinishNewPage  SetFinishNewPage  GetGroupDataView  SetGroupDataView  GetGroupKey  SetGroupKey  GetMinHeightLeft  SetMinHeightLeft  GetPositionMode  SetPositionMode  GetPositionValue  SetPositionValue  GetStartNewPage  SetStartNewPage  Region  
AllowSplitDesignerHideFinishNewPageGroupDataView5	GroupKey
MinHeightLeftPositionMode PositionValueStartNewPagei	TRaveBand��         Value              Value              Value              Value              Value              Value              Value              Value         
GetColumns  
SetColumns  GetColumnSpacing  SetColumnSpacing   GetKeepBodyTogether ! SetKeepBodyTogether " GetKeepRowTogether # SetKeepRowTogether $ 
GetMaxRows % 
SetMaxRows & GetInitToFirst ' SetInitToFirst ( GetOrphanRows ) SetOrphanRows * GetWidowRows + SetWidowRows , ColumnsColumnSpacingKeepBodyTogetherKeepRowTogetherMaxRows	
InitToFirst
OrphanRows	WidowRows TRaveIterateBand��     5    Value 5             Value          5    Value 5             Value              Value         GetDataView . SetDataView / GetDetailKey 0 SetDetailKey 1 GetMasterDataView 2 SetMasterDataView 3 GetMasterKey 4 SetMasterKey 5 
GetSortKey 6 
SetSortKey 7 DataView5	DetailKeyMasterDataView5	MasterKeySortKey	
 -TRaveDataBand��     5    Value 5             Value              Value          5    Value 5             Value              Value              Value         GetDataView 9 SetDataView : GetDetailKey ; SetDetailKey < GetInitToFirst = SetInitToFirst > GetMasterDataView ? SetMasterDataView @ GetMasterKey A SetMasterKey B 
GetMaxRows C 
SetMaxRows D 
GetSortKey E 
SetSortKey F DataView5	DetailKeyInitToFirstMasterDataView5	MasterKey	
MaxRowsSortKey>TRaveDataCycleUplBodyFooter plBodyHeader  plDetail plGroupFooter plGroupHeader plMaster plRowFooter plRowHeader 
pmAbsolute pmOffset  	pmOverlay poFirst  poNewColumn 	poNewPage TBandPositionMode TBandPrintLoc TBandPrintOcc 	TRaveBand TRaveBand.GetAllowSplit 
WbTRaveBand.GetDesignerHide z��TRaveBand.GetFinishNewPage ����TRaveBand.GetGroupDataView ����TRaveBand.GetGroupKey ���TRaveBand.GetMinHeightLeft ��TRaveBand.GetPositionMode �)�4TRaveBand.GetPositionValue �L�WTRaveBand.GetRegion 	FQTRaveBand.GetStartNewPage �o�zTRaveBand.SetAllowSplit htTRaveBand.SetDesignerHide ����TRaveBand.SetFinishNewPage ����TRaveBand.SetGroupDataView �р�TRaveBand.SetGroupKey �� TRaveBand.SetMinHeightLeft ��#TRaveBand.SetPositionMode �:�FTRaveBand.SetPositionValue �]�iTRaveBand.SetStartNewPage ����TRaveDataBand 8TRaveDataBand.GetDataView .����TRaveDataBand.GetDetailKey 0�͂�TRaveDataBand.GetMasterDataView 2����TRaveDataBand.GetMasterKey 4��TRaveDataBand.GetSortKey 6�6�ATRaveDataBand.SetDataView /����TRaveDataBand.SetDetailKey 1�ނ�TRaveDataBand.SetMasterDataView 3��TRaveDataBand.SetMasterKey 5�$�0TRaveDataBand.SetSortKey 7�G�STRaveDataCycle GTRaveDataCycle.GetDataView 9�Y�dTRaveDataCycle.GetDetailKey ;�|��TRaveDataCycle.GetInitToFirst =���� TRaveDataCycle.GetMasterDataView ?��TRaveDataCycle.GetMasterKey A���TRaveDataCycle.GetMaxRows C��TRaveDataCycle.GetSortKey E�+�6TRaveDataCycle.SetDataView :�j�vTRaveDataCycle.SetDetailKey <����TRaveDataCycle.SetInitToFirst >���� TRaveDataCycle.SetMasterDataView @�Ӄ�TRaveDataCycle.SetMasterKey B���TRaveDataCycle.SetMaxRows D��%TRaveDataCycle.SetSortKey F�<�HTRaveIterateBand -TRaveIterateBand.GetColumns ����!TRaveIterateBand.GetColumnSpacing ����TRaveIterateBand.GetInitToFirst '�A�L$TRaveIterateBand.GetKeepBodyTogether !�؁�#TRaveIterateBand.GetKeepRowTogether #���TRaveIterateBand.GetMaxRows %��)TRaveIterateBand.GetOrphanRows )�d�oTRaveIterateBand.GetWidowRows +����TRaveIterateBand.SetColumns ����!TRaveIterateBand.SetColumnSpacing  �Ɓ�TRaveIterateBand.SetInitToFirst (�R�^$TRaveIterateBand.SetKeepBodyTogether "���#TRaveIterateBand.SetKeepRowTogether $��TRaveIterateBand.SetMaxRows &�/�;TRaveIterateBand.SetOrphanRows *�u��TRaveIterateBand.SetWidowRows ,����TRaveRegion TRaveRegion.GetColumns  TRaveRegion.GetColumnSpacing #.TRaveRegion.SetColumns TRaveRegion.SetColumnSpacing 4@ �O
 ���     
 ���     
 ���     
 ���     
 ���     
 ���      
 ���     
 ���      
 ���     
 ���      
 ���     
 ���     
 ���     
 ���     
 ���     
 ���     
 ���     
 ���     
 ���     
 ���     
 ���     
 ���      
 ���     
 ���     
 ���     
 ���     
 ���     
 ���      
 ���     
 ���      
 ���     
 ���     
 ���     
 ���      
 ���     
 ���     
 ���     
 ���     
 ���     
 ���     
 ���     
 ���     
 ���     
 ���     
 ���     
 ���     
 ���     
 ���     
 ���     
 ���     
 ���     
 ���     
 ���     
 ���      
 ���     
 ���     
 ���     
 ���     
 ���     
 ���     
 ���     
 ���     
 ���     ��@   �N?TRAVEBAND.GETALLOWSPLITbTRAVEBAND.GETDESIGNERHIDE��TRAVEBAND.GETFINISHNEWPAGE��TRAVEBAND.GETGROUPDATAVIEW��TRAVEBAND.GETGROUPKEY��TRAVEBAND.GETMINHEIGHTLEFT�TRAVEBAND.GETPOSITIONMODE�4TRAVEBAND.GETPOSITIONVALUE�WTRAVEBAND.GETREGIONQTRAVEBAND.GETSTARTNEWPAGE�zTRAVEBAND.SETALLOWSPLITtTRAVEBAND.SETDESIGNERHIDE��TRAVEBAND.SETFINISHNEWPAGE��TRAVEBAND.SETGROUPDATAVIEW��TRAVEBAND.SETGROUPKEY� TRAVEBAND.SETMINHEIGHTLEFT�#TRAVEBAND.SETPOSITIONMODE�FTRAVEBAND.SETPOSITIONVALUE�iTRAVEBAND.SETSTARTNEWPAGE��TRAVEDATABAND.GETDATAVIEW��TRAVEDATABAND.GETDETAILKEY��TRAVEDATABAND.GETMASTERDATAVIEW��TRAVEDATABAND.GETMASTERKEY�TRAVEDATABAND.GETSORTKEY�ATRAVEDATABAND.SETDATAVIEW��TRAVEDATABAND.SETDETAILKEY��TRAVEDATABAND.SETMASTERDATAVIEW�TRAVEDATABAND.SETMASTERKEY�0TRAVEDATABAND.SETSORTKEY�STRAVEDATACYCLE.GETDATAVIEW�dTRAVEDATACYCLE.GETDETAILKEY��TRAVEDATACYCLE.GETINITTOFIRST�� TRAVEDATACYCLE.GETMASTERDATAVIEW��TRAVEDATACYCLE.GETMASTERKEY��TRAVEDATACYCLE.GETMAXROWS�TRAVEDATACYCLE.GETSORTKEY�6TRAVEDATACYCLE.SETDATAVIEW�vTRAVEDATACYCLE.SETDETAILKEY��TRAVEDATACYCLE.SETINITTOFIRST�� TRAVEDATACYCLE.SETMASTERDATAVIEW��TRAVEDATACYCLE.SETMASTERKEY�TRAVEDATACYCLE.SETMAXROWS�%TRAVEDATACYCLE.SETSORTKEY�HTRAVEITERATEBAND.GETCOLUMNS��!TRAVEITERATEBAND.GETCOLUMNSPACING��TRAVEITERATEBAND.GETINITTOFIRST�L$TRAVEITERATEBAND.GETKEEPBODYTOGETHER��#TRAVEITERATEBAND.GETKEEPROWTOGETHER�TRAVEITERATEBAND.GETMAXROWS�)TRAVEITERATEBAND.GETORPHANROWS�oTRAVEITERATEBAND.GETWIDOWROWS��TRAVEITERATEBAND.SETCOLUMNS��!TRAVEITERATEBAND.SETCOLUMNSPACING��TRAVEITERATEBAND.SETINITTOFIRST�^$TRAVEITERATEBAND.SETKEEPBODYTOGETHER��#TRAVEITERATEBAND.SETKEEPROWTOGETHER�TRAVEITERATEBAND.SETMAXROWS�;TRAVEITERATEBAND.SETORPHANROWS��TRAVEITERATEBAND.SETWIDOWROWS��TRAVEREGION.GETCOLUMNSTRAVEREGION.GETCOLUMNSPACING.TRAVEREGION.SETCOLUMNSTRAVEREGION.SETCOLUMNSPACING@Report1 TRaveProjectManagerRaveProjectModule���   RaveProjectX ����@SYSTEMRvBaseRvClassRvDataRvProjSysFunc+RaveProject+Report1  	DataView1:  RaveProject Report1��@     CompileNeeded FalseFullNameRaveProject
Categories 
Parameters PIVars UnitsFactor       ��?  	DataView1TRaveDataView    TRaveDataView	DataView1CompileNeeded FalseFullName	DataView1ConnectionNameRvDSCRedimensionamento 
 TRaveIntegerFieldDataView1rt_grupo	FieldNamert_grupoFullNamert_grupoSize   TRaveIntegerFieldDataView1rt_rota	FieldNamert_rotaFullNamert_rotaSize   TRaveIntegerFieldDataView1rt_maleta	FieldName	rt_maletaFullName	rt_maletaSize   TRaveDateTimeFieldDataView1rt_referencia	FieldNamert_referenciaFullNamert_referenciaSizeDisplayFormatMM/yyyy   TRaveIntegerFieldDataView1rt_agente	FieldName	rt_agenteFullName	rt_agenteSize   TRaveStringFieldDataView1ag_nome	FieldNameag_nomeFullNameag_nomeSize   TRaveStringFieldDataView1rt_ind_chuva	FieldNamert_ind_chuvaFullNamert_ind_chuvaSize   TRaveIntegerFieldDataView1qtde_lig	FieldNameqtde_ligFullNameqtde_ligSize   TRaveIntegerFieldDataView1seq_inicial	FieldNameseq_inicialFullNameseq_inicialSize   TRaveIntegerFieldDataView1seq_final	FieldName	seq_finalFullName	seq_finalSize  Report1 ��  Page1 Page1Page1 TRaveReportReport1Moduleso   Report1X ����@SYSTEMRvBaseRvClassRvDataSysFunc+RaveProject+Report1_Page1  Page1�� ��@     CompileNeeded FalseFullNameReport1	FirstPage Report1.Page1
Parameters PIVars    ��   	TRavePagePage1Module���  Report1_Page1X ����@SYSTEMRvBaseRvClassRvCsDataRvCsDrawRvCsRptRvCsStdRvDataSysFunc+RaveProject+Report1    Self         Self         Self         Self         Self   Value        Self     5 BandCabecalho BandDetalhe84 Bitmap1* 	DataText1 
DataText10l 
DataText11p 
DataText12�� 
DataText13�� 
DataText14�� 
DataText15�� 
DataText16�� 
DataText17�� 
DataText18�� 	DataText2 	DataText3( 	DataText4D 	DataText5< 	DataText6L 	DataText7T 	DataText8X 	DataText9h HLine1 HLine2\ HLine3�� Region1  Text1 Text10t Text11x Text12| Text13�� Text14�� Text15�� Text16�� Text17�� Text18�� Text190Text19_OnBeforePrint s  Text2 Text3  Text4$ Text5@ Text68 Text7H Text8P Text9d 
TextPagina,TextPagina_OnAfterPrint   TextPagina_OnAfterReport  TextPagina_OnBeforePrint  TextPagina_OnBeforeReport ] TextPagina_OnGetText h  VLine1` VLine2������
���
���
���� ��    	1   Hw�    I	��
���
��� 
���� ��    	1   Hw� 	����@   �� CompileNeeded FalseFullNamePage1Bin	GridLinesGridSpacing ��������?Orientation 
poPortrait	PaperSize	
Parameters PIVars   TRaveRegionRegion1Height �����̴@Left  �������?Top  �������?Width       �@ColumnSpacing            	TRaveBandBandCabecalhoAnchor	BandStylePrintLocplGroupHeader PrintOccpoFirst	poNewPagepoNewColumn  ControllerBand BandDetalheGroupDataView 	DataView1GroupKeyrt_grupoHeight H=
ףp��?MinHeightLeft          PositionValue            TRaveDataText	DataText1FontCharsetColor NameTahomaSizeStylefsBold  FontJustify pjLeftLeft hfffff� @Textrt_grupoTop )\�����?Width pfffff��?	DataFieldrt_grupoDataView 	DataView1   TRaveBitmapBitmap1Height ��������?Left ��������?Top H�p=
ף�?Width ��������?ImageData��¾�  BM��      B   (   �   y        |�                   |  �     �����������������������������������������������������������������������������������������������������������������������������������������������������������������������������  �����������������������������������������������������������������������������������������������������������������������������������������������������������������������������  �����������������������������������������������������������������������������������������������������������������������������������������������������������������������������  �����������������������������������������������������������������������������������������������������������������������������������������������������������������������������  �����������������������������������������������������������������������������������������������������������������������������������������������������������������������������  �����������������������������������������������������������������������������������������������������������������������������������������������������������������������������  �����������������������������������������������������������������������������������������������������������������������������������������������������������������������������  �����������������������������������������������������������������������������������������������������������������������������������������������������������������������������  �����������������������������������������������������������������������������������������������������������������������������������������������������������������������������  �����������������������������������������������������������������������������������������������������������������������������������������������������������������������������  �����������������������������������������������������������������������������������������������������������������������������������������������������������������������������  �����������������������������������������������������������������������������������������������������������������������������������������������������������������������������  �����������{����������������������{����{�������{����{������������w�w����������������{�w�����{����{�����������������������{�����������������{�������������������{���������������������������  �����������{CcCCCCCCCd�sR��������g  B  �^�������s!  g��������b  B  �V��    �=��������d!  �5�����1F   ������������sN�cBCCCCCCC  c����RJ�cBCCCCCBC  1F�����B�dBC�k-9g�����g  BCCCCCCCC�)%c��������������  �����������                          ��������Zk      c�������{      Zk�������C    C��RJ      ��������Z      {o�����0F      ����������{"                        c���B                        1F���sR                  �����9g                          k-�������������  �����������{�d��������    B  k-������Zk  B  9g�������{      Zk������RJ  !  �{���      9g�������    !������RJ    c���������w        �	!!!!!!!!�9g��    B    ������"!  RJ���5        )%�5�1�       ���9gB���������  !!  1F������������  �����������{�����������c      ������Zk  "  9g�������{      :k������      �=����B    �RJ�=�=�=�A�=  !  :k������RJ    c���������  !  {o������������J)  c  �1�������B    RJ�9g  !  !������V  "  !��������������s  !  �������������  ����������������������!      �{�����Zk  "  9g�������{      ������)%     ������  !              "  ��������RJ    c��������s  !  1F�������������      ���������    RJ�!  !  ��������9  "  Zk�������������      �������������  ���������������{�s�s�s�s�s�s1F  "    ������Zk  "  9g�������{      FRN1F1FRJB     �w������J)  B"        BB  �V�������RJ    c��������Z  B  Zo����������w��{o  !  �9��������!    sN�      !�������Zk  !  �A������{�s�s�s�s�s|s�1  B  �������������  ������������l1B                 !  �=������Zk  "  9g�������{    B             !!�8g�����:k    ���s��^      ��������RJ    c��������R  B!"                  g��9g  !  RN��������!    tR�     J)��������w  !  �1���s)%                  "    �R������������  �����������                          �1�������Zk  "  9g�������{    "                      Zk������    �s��!    �=��������RJ    c��������R  BB                    c��9g  !  �R��������      1F�     k-��������  !  �1��s                          RJ�������������  ����������1F  C  ��V�V�R�R�R�R�R�^�{��������Zk  "  9g�������{      �b�wZozozozo{ogC   ������g    *%��w      ���������RJ    c��������Z  B  �51F�9�=�=�=�=�=�=l1Zk��{o     1F���������9�5�1�^�     !�������{s  !  �9�!  C  *%�V�V�R�R�R�R�Vc���������������  ����������)%  !  ������������������Zk  "  g�������{      {s��������R    B�������    �B    �=���������1J    c�������Zo  !  �V�������������      !��������������     �������sN  B  �V�B    �������������������������  ����������))  !  �w������������������{  "  �s�������{      �{�������B    B������sN    c�    �{����������R    c��������      "��������������  "  �s�������������9  C  �5������"     ��B    B������������������������  ����������2J  C  !1F�RsNsNsNsNsNsNsN2J�s�wsN�V�V�V�^sR  B  SN�^�V�V�VsN�w�      1F�R2JRJRJRJRJ�5  B  !�������    !   	!�����^sN�V�V�Vc�=    d�b�Z�V�V�VsN�w�B  B  ��N�Z�Z�Z�Z�Z�Z�Z�Z�R{o�Zk        1F�^�Z�Z�Z�Z�Z�Z�Z�V9g��    B  !�^{oZkRJ  B  B��	%  C  �RN�RsNsNsNsNsNsNsJRJ�w������������  �����������"                          �{�s            !!!            c�    !                      {o��������5    !  Zo����J)            !!              �w���1                          c���Z                          �=���s                      k-����s                            �������������  �������������1!                      �{�s                              c�                        �9g���������w      c�����K-                              �w����Z�                      8g����w)%                      B����F�            ��^������w*)                        �������������  ���������������{{oZozozozozozozoZo9k�w�w9gzozozozozoZoZoZozozozozo[o9g�w�w9kZkzoZoZoZoZozoZoZk�s������������ZkZkZk�s�����ZkZk{ozozozozoZoZoZozozozozoZo9g�w�������wZkZozozozozozo[o9k�s�������{ZkZozozozozozo[oZkZo��������sZk{o�������������wZoZozozozozozozoZo9g�w������������  �����������������������������������������������������������������������������������������������������������������������������������������������������������������������������  �����������������������������������������������������������������������������������������������������������������������������������������������������������������������������  �����������������������������������������������������������������������������������������������������������������������������������������������������������������������������  �����������������������������������������������������������������������������������������������������������������������������������������������������������������������������  �����������������������������������������������������������������������������������������������������������������������������������������������������������������������������  �����������������������������������������������������������������������������������������������������������������������������������������������������������������������������  �����������������������������������������������������������������������������������������������������������������������������������������������������������������������������  ���������������������������������������������������������������������������������{wo�j�]kU�n��������������������������������������������������������������������������������������  ���������������������������������������������������������������������������{wRf�Y0^ @MJQ�Q�U�Us^1Z�L0b�{�����������������������������������������������������������������������������������  �������������������������������������������������������������������������wRb�HBD @g�U(QJU�YQ H�fbLQ�]�L D�]����������������������������������������������������������������������������������  ����������������������������������������������������������������������frb < <�H�YRbk)U�Y�YIUbH D�YJUBH�L�L�Ysb0ZjUZs��������������������������������������������������������������������������������  ������������������������������������������������������������������ZwQ <�U�H)Q�Y(U D�]AH DbH�L�Y�f9k�oRb�]�]�YkY�P�P�j HUZw������������������������������������������������������������������������������  ������������������������������������������������������������������Y�D�Q�f�j^�Y�L DkUsbQ�Y�YjY�P H�fbLU�]U H H H�]�Y H�P�L�]�����������������������������������������������������������������������������  ����������������������������������������������������������������U 0�H�Yk�P DAH�L1^Zk{o�f�]�P H!L H�Y�b H LbL�YQb(UAL�f D H H H H�P�n���������������������������������������������������������������������������  �������������������������������������������������������������0bMA@^�YbL�Y @�L�U�b(UkYjY H�Y�f^�P H�f HbL�P�P�LUk�s�f�YRbQbRb^^�^�j��������������������������������������������������������������������������  �����������������������������������������������������������{w @�H�YIUBL <^)U�Y1bjYbL H�fALBL H HU�b9kkIYb1b1ff�a�X0fQf�abX�\�\]�X�a�f(YY{������������������������������������������������������������������������  �����������������������������������������������������������] 8)MZo�]jYJU1^�oRbUbLAL D�Y�Y HU�]b�aYRfsfsjAT T T T T�X�a P�a�a PbT�T TRf T)YU1j�����������������������������������������������������������������������  ����������������������������������������������������������LB@�Y�j DAH�L0^kBL�P�Y�]�Y�]�o�]j]�a�\�XAT T�f PY�j)] P�XAT�aYbT T�a�f TAT�X0b T Tj]Y]����������������������������������������������������������������������  �������������������������������������������������������� @ 8�P�Y�L @�L�]AL�Y LcL H H1^�j1f�jJ] PAT�XAT�]b@TATAT�fRf T TRf T�T�T TY�j PI](]AT�X TJ]JY L���������������������������������������������������������������������  ������������������������������������������������������Yw�H�HZo�fZkk9k�oRbRb�Y H H�Y�j]YY P1b�f�X T TRfYAT�TAT PJ]Qb)]I]bT�T�X�XAT)Yk�abT�X�X�XAT�]kY�T�v�������������������������������������������������������������������  �����������������������������������������������������9s�Q{o�s�o�o{o�o�o{o�o�o�og9kja P Psf�X�T T�XRfb TsfAT�X�Xj]�a�]�a�sRf�af0f0f1j�e�e�o�eka�eff�a�j:k�T�s������������������������������������������������������������������  ������������������������������������������������������b�o�s�w�{��������{�w�oZk0b�X�a PATATcTAT�]�oZoka1f�e�e(ab\Ja�esj�\ \A\ \ \ Xka�\f \ XA\A\ \�`Rjf T�e�����������������������������������������������������������������  ����������������������������������������������������{s�{���������������{�s�obbT�]0b�e�e�\�e�e(a XA\A\B\ \9k \b\9kA\b\�\�\�`rf X�\�j \�\�\ \sj \�eka T�\����������������������������������������������������������������  �����������������������������������������������������������������������w�k�oje \b\ Xf)a Xkb\b\�\ \f�e \ \)a{o X�\ \sf(ab\ \Jasj X�\�\�j \ \�j�` TAX���������������������������������������������������������������  �������������������������������������������������������������������������o�k�a Xa�j Xb\�\�j X�\c\�j \�\�\ X�e�j X�\�j X�\�\ \�ef X�ekaA\�\b\Zo�\ Tj]�{�������������������������������������������������������������  ��������������������������������������������������������������������������{�o�fsj X�\�\ \�e�j X1f)a X�\�\�\ X1f�aka�` XA\ \A\ X�ea�eA\A\c\ \�\Zo X0f T�r������������������������������������������������������������  ����������������������������������������������������������������������������o�kka Xb\b\ X�a�ef X�\�\�\](a�\9k{o(a�a�e�e�e�aIa�j�j�\ja]�\ Xa�j�e X P�i�����������������������������������������������������������  �����������������������������������������������������������������������������s�osf \Ia�eIa�sf�e0j�i�i�i�ie�i�okeejejejeje�dsj�oje�e1jrjsj�eZoka�a T�a����������������������������������������������������������  ������������������������������������������������������������������������������w�k�oIebde�jRj `@`@`A`A` `b`�eA`k `A`b`a`A` `�j�d�j ` ` `A` `Jek�d�djka�j���������������������������������������������������������  �������������������������������������������������������������������������������{�k�j `sj `�e1j `�d�`�d `Rj�d `�e�j `�d�` `1j�e `j1j `�d�`A`rj `�j ` `a` \�e��������������������������������������������������������  ���������������������������������������������������������������������������������o�k�i \ `�jje `�dA`e1j `�d `�j�e `�`b`�n `�d `�j(e@`b`(e0j `Ie�j `�d `�ae�������������������������������������������������������  ����������������������������������������������������������������������������������s�k�i ` `Zo�dA`A`�jb`�`�`�` `k�` `Qj�e `�`�`A`9kA` `jeb` `0j�i `�d�j X�i������������������������������������������������������  �����������������������������������������������������������������������������������w�kQj `b`9o `�i�e `�`b`�` `�`�j `o `�`�`�` `e�j `sjA`�d�d `k `�ejeb` X�r�����������������������������������������������������  ������������������������������������������������������������������������������������{�k�j `(eRj1jb`�`�`�`�`�`A`�e9o�`�`�`�`�`�` `fRjIe `A` ` `�`Qjke�db`�` \�����������������������������������������������������  �������������������������������������������������������������������������������������{�kZkeYo1j�ijj1nQn1n1n�i�oj�i0jj0j0jjji�o�i�e0jjfIe�j�j `�`�` \ \����������������������������������������������������  ���������������������������������������������������������������������������������������oZk h�i h hAh h h h h�i�h�j h hAhAhbh hji�i�nAh�h�h�h�hJi�o�i�i�ij�\sn���������������������������������������������������  ����������������������������������������������������������{�w�w�w�{��������������������������s{g(i�i h�h�h�hAhiRj h�h�j h�h�h�hAh�n hji1j h�h�h hj�irn h�h�h�h�e{{��������������������������������������������������  �������������������������������������������������������{�o9k{k�f{k�k�k�k�s�������������������������s{gsj�h h�h�h h�jbh�h hj�i h�h h�i�i h h�j�hAh�h�h�n hrj�i hAhi�e(m��������������������������������������������������  ������������������������������������������������������sRf dIi�i h h�n�h�i[k�k�w������������������������s�gZo hbh h�i�i h�h�h ho�hahAho@h�hbh�h�j h hj�i hAh9oAh h�ji d��������������������������������������������������  ����������������������������������������������������9kRf h�h�j h�h hi1j h h�j�k�o������������������������{�k�j h�h�j h�h�h�hAh�ho h�i�i h�h�h h�i�i hoah�h h�isj h�n h d��������������������������������������������������  ���������������������������������������������������sf di�i1j h hAhAh hj�h)iAh dRj�k������������������������{�k�j�m d hahAhAhah dkijsj h h h h h h�iji�i hAhAh hQj�iki h d�v�������������������������������������������������  ��������������������������������������������������9kbdi�h{o�i(i�i�i�i�i�i{o1j�i�i(ik�k�w������������������������kYk�iki�i�i�i�i�i�h�o�j�irjQj0j1jjj�o�i�i�i�i�i�i�oji�iJes�������������������������������������������������  �������������������������������������������������{oi�m�mkm�o�m�m�m�m�mkm�l�onAlmm l�m�g�w������������������������k�k�l l�l�l�lAlJm9oRn l�l�l�l�lalkm9o�mblmjm�m�m�o�mn�i{w�������������������������������������������������  �������������������������������������������������{je lAl l�mn1n lAlAlAl l�m�l�n�l l�lbl l�l�g�s������������������������o�gm l�lbl lzo l�m�m l�lblblAl�n l�n@lAlbl l�m�mm l h{w�������������������������������������������������  ������������������������������������������������o�ibl�lblZo l1nQn l�lbl�l�n l�l�o l�l�lbl l�nZk�o������������������������s�g�m l l�nkm l lo�lbl�l lRn(m lJm�n l�lblYo lRn�l h�{�������������������������������������������������  ������������������������������������������������(i�l�m l0n�m l lo�lbl l�n�l�l l�msn l�l l[o�l l�k�k������������������������w�g�m)m�n l�lAl�l�n lblmRn l�l l�nm l1n�m l�l�mi��������������������������������������������������  ������������������������������������������������Ad l0n l9o l�lAlm�n l�mn l�l�l l�n(m l�nrn lAl lk�g������������������������{�g�k lAl�l�l lRn�m l�n�lbl�lbl�l�n l9o l�l lIi�o��������������������������������������������������  ������������������������������������������������{ h l�lRn�m lAl l l0n�ln l l lAl l lrn�l�n lAlbl l l�j�k�{�����������������������{�k�j l lAl l l�njmJm lblAlbl l�m�n�m l�l le�{��������������������������������������������������  ������������������������������������������������{1jsn�i�ojn1nn�m�i�o0n�m�m�m�m�mImRn�o(mIm�mkm�mJm�l:o�k�w������������������������ok�m�in�mj�o�m1nRnQn1nn�i�o�ij�i�e�s���������������������������������������������������  �����������������������������������������������{{ `@h�h{o�i h�h�h�h�hZo�ibhii(iJi�h1j�o�h�hi�hiii h�j�g�s������������������������s�g)i hah�i�i�i h�h�h�h h�i�ni d `�o����������������������������������������������������  ������������������������������������������������ d hrjAh�n�h h�h hQj�h1j�h hbhbhAh h�nbh�j hbhbhbhbh h�hki�h�k�o������������������������w�k�iIi�h h�jbhbh�h h(iQj hjAd�o�����������������������������������������������������  �������������������������������������������������h d�n h�ho h�hbh�n h�hk h�h�h h0j�i d�i�j h�h�h�h!h�jbh h�h�k�o�������������������������k�k(i h�hQj hAh h�j h d�f�s������������������������������������������������������  ������������������������������������������������m�d0j@h h�jki d�ij h h�i�i h�hAho h�h h�n(i h�h h�iki h�h h�m�k�k�������������������������s�k{k�i�jIiAh0j�ije{k�{�������������������������������������������������������  �������������������������������������������������z(e�h hAh h�n d�n�h�h�h h�n�h dRj�i h�hbhAhoAhAh�h�j h�h�h�h h�isj�k�{�������������������������w�o�k�k�k�k�s�{���������������������������������������������������������  ��������������������������������������������������j)e�iIiAhji9o�i h h@h hbhsn h�n hbhbh�h hiRj hsj�hAh�hbh�h h�h(i(i�k�{����������������������������������������������������������������������������������������  ��������������������������������������������������{ X�d�efJe�oRj�i0nj�i(i1jZo(i�h(ii�h�h hn�j�iAh�h�h�h�h�hAhj�h�i�k�w���������������������������������������������������������������������������������������  ��������������������������������������������������ki \b`@` `j�jA`�`�`)ejeIe�o�i�eRjsj�j�jsj�i�osjsj�j�jsjsjsj�esj�oeke�k�s��������������������������������������������������������������������������������������  ����������������������������������������������������` \�deje(e1j `�`b` `IeIe�j ` ` ` ` ` `(e�i1j ` `@`A` ` ` `1j�dsj \e�k�o�������������������������������������������������������������������������������������  ���������������������������������������������������� \ \�eke `�j(eA`�dA`�j `)e�j `�d�`�`A`�j `�esj `�d�`�d `1jIe `�iRj \A`Yk�o������������������������������������������������������������������������������������  ����������������������������������������������������� Xf�db`A`�jA`A`(ej@` `0j�i `�d `�i�e ` `�j�e `�db`�dsj `�d `�jJe ` `rf�k�{����������������������������������������������������������������������������������  �����������������������������������������������������{{�a `�d `Ierj `0j(ea`�d `�j�dA`A`kA`�`�` `9o�`b` `sj�db`�`�` `9o�` `je�j�k�s���������������������������������������������������������������������������������  ������������������������������������������������������{w \�`�d `jej `b`�`A`�`k `�ej `�`�`@`eo `e0j `�`�`�` `�d�j `Rj \je�k�s��������������������������������������������������������������������������������  ��������������������������������������������������������{I]ja�i(eZoQj�de�d�d `ke�irj ` `A`@`A` `�i�i�ecdb`�d�d�d�dbd�i�o�e�eke�e�k�o�������������������������������������������������������������������������������  ���������������������������������������������������������{ T Xb\�a�s�a1fsjsfrj�e�o{o�e�jrjrjrjrj�e�o9o)af�e�e�ef�a�e�o)ab\�\ Xb\{k�k�w�����������������������������������������������������������������������������  �����������������������������������������������������������\ T�e)asj X \A\b\ X�e1f(aA\�\�\�\�\b\�j�ja X�\A\A\ \ X�j \�jB\b\�\A\ X9o�k�s����������������������������������������������������������������������������  ������������������������������������������������������������\Qf Xfrj X�\b\�`�e X�jb\A\�\�\ \�eka X{oA\b\�\�\ \f�e X�\�j X�\b\afA\�k�o���������������������������������������������������������������������������  �������������������������������������������������������������n T X�jka \A\�e�a X�\�j \�\�\A\�jb\ Xa8k X�\�\b\�j \�\ \�e1f X \�j�\ X XRf�o�w�������������������������������������������������������������������������  ��������������������������������������������������������������r T Xka XRf�\�\ \)aRj \A\Ia�e \�\ \�a�j X \QfjaA\�\�\ Xsj�`�`keA\ake�e�fZg�o�{�����������������������������������������������������������������������  ��������������������������������������������������������������Yw T XRf�\�e X�\�\ X�a1f X1f�\b\�\�\ Xf�e X�j XA\b\�`�`�\�jo]�]�aI]�X P�X�j�k�s�w�������������{�oZo������������������������������������������������������  ����������������������������������������������������������������ka)]�ska�`�`�`�` \�ef)a \�`�`�`�`b\sjZo�a�eQffb0b�]sf�fsf�T PAT�X T�f T T�]�o�o�s�s�w�{�{�{�w�w�s{o�o9gR^�������������������������������������������������������  ������������������������������������������������������������������XjY{o�aRfrfQffI]Zk9o�arfRfsfrbb�]�osfAT�T�TbT T P�f P�X�j0bAT T�X�f P�Xf^�Y�j�o�k�o�o�o�o�o�s�o�b�L��������������������������������������������������������  ������������������������������������������������������������������0j L�] P TbTbTATk]�]b P TAT T P(]�X)]�f�X T�X�T�Xsf TbT Tj]�j�X]Y�asb�P H DUIY�]k0^1^�f�]rb 8kU���������������������������������������������������������  �������������������������������������������������������������������sn Pb�XbTbTI]�] P�]�fbTAT�XATRfbT T�X�j�a T Pbj] TBT T TbX�f�o�o�]AL�PbL H�]jY)U D <�P�Y�L 0jU����������������������������������������������������������  ���������������������������������������������������������������������{�T�]�X PQf�X�T T�X�f�X PI]0b T�XAT P�]Rf T�f T�X�ab�a�YUsb@LIY�]IUkY�Y�o1^)UIU)U�j)Q <�j�����������������������������������������������������������  �����������������������������������������������������������������������a)Y�X1f PATAT P T0fcX�aAT T�X�X]�\�a�o�s�a�YQ�P�L D^)U H HbL�]�]{o�L H�P�]:k <�H�{������������������������������������������������������������  �����������������������������������������������������������������������0jgRfJ]�a�a�a�a�]k9o�a�aRf�f�b^�PQb�]sb�Y�PAL LBLsb HU1b�f�L�L�Y DJY�Y)MA@�Y��������������������������������������������������������������  ������������������������������������������������������������������������Zw1^�UU(UJUjU�P^�f�f�YAL H H H�P�f H L�T�]�]U�]�f�]�Y�L D Dsb�P�Y�H 8�Yzw���������������������������������������������������������������  ��������������������������������������������������������������������������sj�LAH LAL L�f H HjYQbkYbL Hsb�P L�P�P�P�Y�f�o^�YQJU�P^�s�U�H�L{s�����������������������������������������������������������������  ����������������������������������������������������������������������������{�Y�L H�YU HbP LbL�]Qb�Y9oUUIU�YjU H1^cL @�P�Y�Y9k�U <�Lo�������������������������������������������������������������������  ������������������������������������������������������������������������������n�Y�fsb^�]^0^�YjU�o^Rbsb(U H @jY�]�L^kUBD�DI�LZs���������������������������������������������������������������������  ��������������������������������������������������������������������������������])QjU�U�L D @(QQ @bL�P�Yrb�f�f1^�UI�H�H{s�{�����������������������������������������������������������������������  ��������������������������������������������������������������������������������{w(U�HkU�Y^8k)U�UjQMcD�H�U <�L^o���������������������������������������������������������������������������  �����������������������������������������������������������������������������������Rf�YjQBD�Q�U�YRb1b�w�{�������������������������������������������������������������������������������  �������������������������������������������������������������������������������������Zw���������������������������������������������������������������������������������������  �����������������������������������������������������������������������������������������������������������������������������������������������������������������������������  �����������������������������������������������������������������������������������������������������������������������������������������������������������������������������  �����������������������������������������������������������������������������������������������������������������������������������������������������������������������������  �����������������������������������������������������������������������������������������������������������������������������������������������������������������������������  �����������������������������������������������������������������������������������������������������������������������������������������������������������������������������  �����������������������������������������������������������������������������������������������������������������������������������������������������������������������������  �����������������������������������������������������������������������������������������������������������������������������������������������������������������������������  �����������������������������������������������������������������������������������������������������������������������������������������������������������������������������  �����������������������������������������������������������������������������������������������������������������������������������������������������������������������������      
TRaveHLineHLine1Height          Left          	LineWidth       ��?NESW FalseTop ��������?Width @    �@   	TRaveTextText1FontCharsetColor NameTahomaSizeStylefsBold  FontJustify pjLeftLeft ��������?Text Rol Controle de Ciclo de LeituraTop x���(\��?Width �����̜@   	TRaveTextText2FontCharsetColor NameTahomaSizeStyle  FontJustify pjLeftLeft ��������?TextGrupo:Top )\�����?Width       ��?   	TRaveTextText4FontCharsetColor NameTahomaSizeStyle  FontJustify pjLeftLeft ��������?TextRefer�ncia:Top �Q����?Width �fffff��?   TRaveDataText	DataText3FontCharsetColor NameTahomaSizeStylefsBold  FontJustify pjLeftLeft hfffff� @Textrt_referenciaTop �Q����?Width `fffff��?	DataFieldrt_referenciaDataView 	DataView1   	TRaveText
TextPaginaOnBeforeReportModuleOwner Report1.Page1Position]NameOnBeforeReportSender 
TextPagina OnAfterReportModuleOwner Report1.Page1PositionNameOnAfterReportSender 
TextPagina OnBeforePrintBody_   nPagina := (StrToIntDef(TextPagina.Text,0) + 1);
   TextPagina.Text := IntToStr(NPagina-1);Headervar
   nPagina : Integer;ModuleOwner Report1.Page1PositionNameOnBeforePrintSender 
TextPagina OnAfterPrintModuleOwner Report1.Page1Position NameOnAfterPrintSender 
TextPagina FontCharsetColor NameTahomaSizeStyle  FontJustify pjLeftLeft �������@Text1Top `�(\����?Width @     ��?	OnGetTextModuleOwner Report1.Page1PositionhName	OnGetTextSender 
TextPagina    	TRaveTextText19OnBeforePrintBody[   nPagina := StrToIntDef(TextPagina.Text,0) + 1;
   TextPagina.Text := IntToStr(NPagina);Headervar
   nPagina : Integer;ModuleOwner Report1.Page1PositionsNameOnBeforePrintSender Text19 FontCharsetColor NameTahomaSizeStyle  FontJustify pjLeftLeft �������@TextP�gina:Top `�(\����?Width       ��?   	TRaveTextText3FontCharsetColor NameTahomaSize
StylefsBold  FontJustify pjLeftLeft ��(\����?TextRotaTop (\���(��?Width  ��Q���?   
TRaveHLineHLine3Height          Left          	LineWidth       ��?NESW FalseTop ���Q���?Width       �@   	TRaveTextText5FontCharsetColor NameTahomaSize
Style  FontJustify pjRightLeft @�z�G��?TextSeq. InicialTop  \���(��?Width �(\�����?   	TRaveTextText6FontCharsetColor NameTahomaSize
Style  FontJustify pjRightLeft @�z�G��?Text
Seq. FinalTop �G�z���?Width �(\�����?   
TRaveVLineVLine2Height �G�z���?Left Ȝ������?	LineWidth       ��?NESW FalseTop ��������?Width             	TRaveTextText7FontCharsetColor NameTahomaSize
Style  FontJustify pjCenterLeft ���Q���?Text
LeituristaTop ��(\����?Width `fffff��?   
TRaveVLineVLine3Height �G�z���?Left  �(\��� @	LineWidth       ��?NESW FalseTop ��������?Width             	TRaveTextText8FontCharsetColor NameTahomaSize
Style  FontJustify pjCenterLeft �(\���� @TextData LeituraTop ��(\����?Width `fffff��?   
TRaveVLineVLine5Height �G�z���?Left �R���@	LineWidth       ��?NESW FalseTop ��������?Width             	TRaveTextText9FontCharsetColor NameTahomaSize
Style  FontJustify pjCenterLeft 33333�@TextQtde deTop (\���(��?Width R����?   	TRaveTextText10FontCharsetColor NameTahomaSize
Style  FontJustify pjCenterLeft 33333�@TextLiga��esTop �G�z���?Width R����?   
TRaveVLineVLine7Height �G�z���?Left gffff�@	LineWidth       ��?NESW FalseTop ��������?Width             	TRaveTextText11FontCharsetColor NameTahomaSize
Style  FontJustify pjCenterLeft 8���Q�@TextQtdeTop (\���(��?Width R����?   	TRaveTextText12FontCharsetColor NameTahomaSize
Style  FontJustify pjCenterLeft 8���Q�@TextLidasTop �G�z���?Width R����?   
TRaveVLineVLine9Height �G�z���?Left @�Q���@	LineWidth       ��?NESW FalseTop ��������?Width             	TRaveTextText13FontCharsetColor NameTahomaSize
Style  FontJustify pjCenterLeft ��Q��@TextQtdeTop (\���(��?Width R����?   	TRaveTextText14FontCharsetColor NameTahomaSize
Style  FontJustify pjCenterLeft ��Q��@TextPendenteTop �G�z���?Width R����?   
TRaveVLineVLine11Height �G�z���?Left ���Q�@	LineWidth       ��?NESW FalseTop ��������?Width             	TRaveTextText15FontCharsetColor NameTahomaSize
Style  FontJustify pjCenterLeft �(\����@TextDataTop (\���(��?Width ��������?   	TRaveTextText16FontCharsetColor NameTahomaSize
Style  FontJustify pjCenterLeft 8�z�G�@TextTransmiss�oTop �G�z���?Width ��������?   
TRaveVLineVLine13Height �G�z���?Left ��Q��@	LineWidth       ��?NESW FalseTop ��������?Width             	TRaveTextText17FontCharsetColor NameTahomaSize
Style  FontJustify pjCenterLeft  �z�G�@Text
Observa��oTop ��(\����?Width `fffff��?   TRaveDataBandBandDetalheAnchor	BandStylePrintLocplDetail  Height ����Q��?MinHeightLeft          PositionValue          ColumnSpacing          	DetailKeyrt_grupoDataView 	DataView1  TRaveDataText	DataText5FontCharsetColor NameTahomaSize
StylefsBold  FontJustify pjLeftLeft ��(\����?Textrt_rotaTop ��p=
ף�?Width  ��Q���?	DataFieldrt_rotaDataView 	DataView1   TRaveDataText	DataText6FontCharsetColor NameTahomaSize
Style  FontJustify pjRightLeft P�z�G��?Textseq_inicialTop أp=
ף�?Width  )\�����?	DataFieldseq_inicialDataView 	DataView1   
TRaveHLineHLine2Height          Left          	LineWidth       ��?NESW FalseTop @���Q��?Width       �@   
TRaveVLineVLine1Height  33333��?Left ��������?	LineWidth       ��?NESW FalseTop �p=
ף�?Width             TRaveDataText	DataText2FontCharsetColor NameTahomaSize
Style  FontJustify pjRightLeft X�z�G��?Text	seq_finalTop H���Q��?Width  )\�����?	DataField	seq_finalDataView 	DataView1   
TRaveVLineVLine4Height  33333��?Left  �(\��� @	LineWidth       ��?NESW FalseTop �p=
ף�?Width             TRaveDataText	DataText4FontCharsetColor NameTahomaSize
Style  FontJustify pjLeftLeft ���Q���?Text	rt_agenteTop أp=
ף�?Width �����̌�?	DataField	rt_agenteDataView 	DataView1   TRaveDataText	DataText7FontCharsetColor NameTahomaSize
Style  FontJustify pjLeftLeft ���Q���?Textag_nomeTop H���Q��?Width �����̌�?	DataFieldag_nomeDataView 	DataView1   
TRaveVLineVLine6Height  33333��?Left �R���@	LineWidth       ��?NESW FalseTop �p=
ף�?Width             TRaveDataText	DataText8FontCharsetColor NameTahomaSize
Style  FontJustify pjCenterLeft `�Q���@Textqtde_ligTop ��(\����?Width R����?	DataFieldqtde_ligDataView 	DataView1   
TRaveVLineVLine8Height  33333��?Left �fffff�@	LineWidth       ��?NESW FalseTop �p=
ף�?Width             
TRaveVLineVLine10Height  33333��?Left h33333�@	LineWidth       ��?NESW FalseTop �p=
ף�?Width             
TRaveVLineVLine12Height  33333��?Left ���Q�@	LineWidth       ��?NESW FalseTop          Width             
TRaveVLineVLine14Height  33333��?Left ��Q��@	LineWidth       ��?NESW FalseTop          Width             	TRaveBand
BandFooterAnchor	BandStylePrintLocplGroupFooter  Height ���Q���?MinHeightLeft          PositionValue            TRaveCalcText	CalcText1FontCharset Color NameTahomaSize
Style  FontJustify pjCenterLeft ��Q���@TextSum(qtde_lig)Top ��(\����?Width �Q����?
Controller BandDetalheDataView 	DataView1	DataFieldqtde_lig   	TRaveTextText18FontCharsetColor NameTahomaSize
StylefsBold  FontJustify pjLeftLeft ��Q��� @TextTotal de Liga��es:Top ��(\����?Width  )\�����?    TRvDataSetConnectionRvDSCRedimensionamentoRuntimeVisibilityrtDeveloperDataSetqryRedimensionamentoLeft Top�   TRvRenderPDFRvRenderPDFDisplayNameAdobe Acrobat (PDF)FileExtension*.pdf
EmbedFontsImageQualityZMetafileDPI,FontEncodingfeWinAnsiEncodingDocInfo.Creator*Rave Reports (http://www.nevrona.com/rave)DocInfo.ProducerNevrona DesignsBufferDocument	DisableHyperlinksLeft Top  TQueryqryRedimensionamentoDatabaseNamedbMainSQL.Strings6select 	rt_grupo, rt_rota, rt_maleta,  rt_referencia, 	rt_agente, ag_nome, 	rt_ind_chuva, 	count(*) as qtde_lig,$	min( cg_sequencia) as seq_inicial,  	max( cg_sequencia) as seq_finalfrom	carga, roteiros prileft	outer join agenteson	ag_codigo = rt_agenteand	ag_grupo = rt_grupowhere   rt_grupo = :nGrupoand	rt_grupo = cg_grupoand	rt_rota = cg_rota9group   by rt_grupo, rt_rota, rt_maleta,  rt_referencia, 	rt_agente, ag_nome, 	rt_ind_chuva7order	by rt_grupo, rt_rota, rt_maleta,  rt_referencia, 	rt_agente, ag_nome, 	rt_ind_chuva Left Top� 	ParamDataDataType	ftIntegerNamenGrupo	ParamType	ptUnknown   TIntegerFieldqryRedimensionamentort_grupo	FieldNamert_grupo  TIntegerFieldqryRedimensionamentort_rota	FieldNamert_rota  TIntegerFieldqryRedimensionamentort_maleta	FieldName	rt_maleta  TDateTimeField!qryRedimensionamentort_referencia	FieldNamert_referencia  TIntegerFieldqryRedimensionamentort_agente	FieldName	rt_agente  TStringFieldqryRedimensionamentoag_nome	FieldNameag_nomeSize  TStringField qryRedimensionamentort_ind_chuva	FieldNamert_ind_chuva	FixedChar	Size  TIntegerFieldqryRedimensionamentoqtde_lig	FieldNameqtde_lig  TIntegerFieldqryRedimensionamentoseq_inicial	FieldNameseq_inicial  TIntegerFieldqryRedimensionamentoseq_final	FieldName	seq_final        