�
 TFRMMAIN 0�
  TPF0TfrmMainfrmMainLeftITop� CaptionfrmMainClientHeight�ClientWidthiColor	clBtnFaceFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameTahoma
Font.Style 	FormStyle	fsMDIFormMenuSMMainOldCreateOrderPositionpoDesktopCenterOnClose	FormCloseOnCreate
FormCreateOnShowFormShowPixelsPerInch`
TextHeight 
TStatusBar
StatusBar1Left Top�WidthiHeightPanelsText   Selecione OpçãoWidth�  	AlignmenttaCenterTextCAPSWidth2 	AlignmenttaCenterTextNUMWidth2 	AlignmenttaCenterTextSCROLLWidth2 	AlignmenttaCenterTextDATEWidth2 	AlignmenttaCenterTextTIMEWidth2 	AlignmenttaCenterText   VersãoWidth2 	AlignmenttaCenterText
13/09/2000Widthd Width2  ParentShowHintShowHint  
TSMainMenuSMMainMenuDatasetCSMenu  TQueryqryMenuDatabaseNamedbMainSQL.Stringsselect 	ac_nivel as nivel,	ac_caption as caption,	ac_name as name,	ac_onclick as onclick from chave, acesso, chave_acessowhere ch_chave = :chaveand ch_chave = ca_chaveand ac_id = ca_idand ch_status = 1and ca_status = 1order by ac_ordem Left#	ParamDataDataTypeftStringNamechave	ParamType	ptUnknown    TTimerTimer1EnabledIntervalOnTimerTimer1TimerTopH  TClientDataSetCSMenu
Aggregates Params Top   TQueryQrParametrosDatabaseNamedbMainSQL.Stringsselect	*from 	dbo.parametros Left$TopF TStringFieldQrParametrosNATUREZA	FieldNameNATUREZAOriginDBMAIN.parametros.NATUREZASize  TStringFieldQrParametrosEMPRESA	FieldNameEMPRESAOriginDBMAIN.parametros.EMPRESASize  TStringFieldQrParametrosDIRETORIO	FieldName	DIRETORIOOriginDBMAIN.parametros.DIRETORIOSize2   TQueryQrExecSysConfigDatabaseNamedbMainSQL.StringsCREATE TABLE dbo.sysconfig#(sy_client 	varchar2(60) NOT NULL ,!sy_cnpj   varchar2(14) NOT NULL ,!sy_chave  varchar2(25) NOT NULL ,sy_date   datetime NOT NULL) LefthTop  TQueryQrExisteSysConfigDatabaseNamedbMainSQL.Stringsselect	count(*) as Existefrom	dbo.sysobjectswhere	name like 'sysconfig' LeftJTop TIntegerFieldQrExisteSysConfigExiste	FieldNameExiste   TQueryQrDadosSysCoonfigDatabaseNamedbMainSQL.StringsDselect	sy_client, sy_cnpj, sy_chave, sy_date, getdate() as DataAtualfrom 	dbo.sysconfig Left� Top TStringFieldQrDadosSysCoonfigsy_client	FieldName	sy_clientOriginsysconfig.sy_clientSize<  TStringFieldQrDadosSysCoonfigsy_cnpj	FieldNamesy_cnpjOriginsysconfig.sy_cnpjSize  TStringFieldQrDadosSysCoonfigsy_chave	FieldNamesy_chaveOriginsysconfig.sy_chaveSize  TDateTimeFieldQrDadosSysCoonfigsy_date	FieldNamesy_dateOriginsysconfig.sy_date  TDateTimeFieldQrDadosSysCoonfigDataAtual	FieldName	DataAtual        