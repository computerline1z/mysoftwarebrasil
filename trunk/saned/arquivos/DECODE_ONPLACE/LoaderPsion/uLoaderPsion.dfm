�
 TFLOADERPSION 0�  TPF0TfLoaderPsionfLoaderPsionLeft Top BorderIconsbiSystemMenu
biMinimize BorderStylebsSingleCaption5   Strategos Engenharia Informática e Consultoria Ltda.ClientHeight�ClientWidthNColor	clBtnFaceFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameTahoma
Font.Style OldCreateOrderPositionpoScreenCenterOnClose	FormCloseOnCreate
FormCreateOnShowFormShowPixelsPerInch`
TextHeight TPanelPanel1Left Top WidthNHeight)AlignalTopCaption   Conexão com o PsionColorclNavyFont.CharsetDEFAULT_CHARSET
Font.ColorclWhiteFont.Height�	Font.NameTahoma
Font.StylefsBold 
ParentFontTabOrder  TLabellVersionAlignWithMargins	LeftTopWidthBHeight!AlignalRight	AlignmenttaRightJustifyCaption   Caption VersãoFont.CharsetDEFAULT_CHARSET
Font.ColorclWhiteFont.Height�	Font.NameComic Sans MS
Font.StylefsBold 
ParentFontLayouttlCenterExplicitHeight   	TGroupBox	GroupBox1Left Top)WidthNHeight� AlignalTopCaptionArquivo para cargaTabOrder TLabelLabel1LeftTop WidthHeightCaptionNome:  TLabelLabel2Left5Top:WidthHeightCaption7   Lista de arquivos de carga (*.mcp) no mesmo diretório:  TLabelLabel3Left5Top� Width� HeightCaption!Click no arquivo para selecionar.  TEditEdNomeLeft5TopWidth~HeightReadOnly	TabOrder   TBitBtnBitBtBuscarLeft�TopWidthiHeightCaption&BuscarTabOrderOnClickBitBtBuscarClick
Glyph.Data
z  v  BMv      v   (                                    �  �   �� �   � � ��   ���   �  �   �� �   � � ��  ��� UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU_�����UU     UUUwwwww_UP����UWu�UUUu�P𸸸��UW�_UUUW_P�����W�u����P��    W�WwwwwuP�����UUW�UUUW�UP�����UUW�UU_�UUP��� UUW_UUwuUUU��UUUUUu��UUUUUp UUUUUWwuUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU	NumGlyphs  TFileListBoxFileListBoxLeft5TopMWidth~HeightdCtl3D	
ItemHeightMask*.mcpParentCtl3D
ShowGlyphs	TabOrderOnClickFileListBoxClick   	TGroupBox	GroupBox2Left Top� Width� HeightBCaption
AplicativoTabOrder TButtonbttAplicativoLeftTopWidthyHeightCaptionCarregar AplicativoEnabledTabOrder OnClickbttCargaClick   	TGroupBox	GroupBox3Left� Top� WidthHeightBCaptionBanco de dadosTabOrder TButtonbttCargaLeftTopWidthyHeightCaptionCarregar bancoEnabledTabOrder OnClickbttCargaClick  TButtonbttDescargaLeft� TopWidthyHeightCaptionDescargaTabOrderOnClickbttDescargaClick   	TGroupBox	GroupBox4Left TopBWidthNHeightKAlignalBottomTabOrder TLabelLInformacaoLeftTop:Width�Height	AlignmenttaCenterAutoSize  TBitBtn	BitBtSairLeft�TopWidthiHeightCaptionSai&rTabOrder OnClickBitBtSairClick
Glyph.Data
z  v  BMv      v   (                                    �  �   �� �   � � ��   ���   �  �   �� �   � � ��  ��� 3     33wwwww33����33w?33333���33s�3333���337?3333��3333333��3333333��3333333��3333333��3333333��333�333���333w3333��3333333��33?3333���333333���33w��33     33wwwwws3	NumGlyphs  TAnimateAnimateLeftTopWidth�Height-AutoSize	CommonAVIaviCopyFile	StopFrame   	TGroupBox	GroupBox5Left�Top� Width� HeightBCaption   Rol EletrônicoTabOrder TButtonbttDescargaRolLeftTopWidthyHeightCaptionDescarga RolEnabledTabOrder OnClickbttDescargaClick   TOpenDialog
OpenDialog
DefaultExt*.mcpFilterNArquivo de Carga (*.mcp)|*.mcp|Aplicativo (*.img)|*.img|Emulador (*.ldd)|*.ldd
InitialDirC:\OnPlace\Saned\Carga	OptionsExofExNoPlacesBar TitleArquivos para cargaLeft�Toph  	TDatabasedbMain	AliasNameOnPlaceSANEDDatabaseNamedbMainLoginPromptParams.StringsPASSWORD=strsanedUSER NAME=sanedonplace SessionNameDefaultLeftTop�   TQueryqryGeralDatabaseNamedbMainLeftTop�   TQueryQrExecSysConfigDatabaseNamedbMainSQL.StringsCREATE TABLE dbo.sysconfig#(sy_client 	varchar2(60) NOT NULL ,!sy_cnpj   varchar2(14) NOT NULL ,!sy_chave  varchar2(25) NOT NULL ,sy_date   datetime NOT NULL) Left`Top�   TQueryQrExisteSysConfigDatabaseNamedbMainSQL.Stringsselect	count(*) as Existefrom	dbo.sysobjectswhere	name like 'sysconfig' LeftBTop�  TIntegerFieldQrExisteSysConfigExiste	FieldNameExiste   TQueryQrDadosSysCoonfigDatabaseNamedbMainSQL.StringsDselect	sy_client, sy_cnpj, sy_chave, sy_date, getdate() as DataAtualfrom 	dbo.sysconfig Left~Top�  TStringFieldQrDadosSysCoonfigsy_client	FieldName	sy_clientOriginsysconfig.sy_clientSize<  TStringFieldQrDadosSysCoonfigsy_cnpj	FieldNamesy_cnpjOriginsysconfig.sy_cnpjSize  TStringFieldQrDadosSysCoonfigsy_chave	FieldNamesy_chaveOriginsysconfig.sy_chaveSize  TDateTimeFieldQrDadosSysCoonfigsy_date	FieldNamesy_dateOriginsysconfig.sy_date  TDateTimeFieldQrDadosSysCoonfigDataAtual	FieldName	DataAtual   TSaveDialog
SaveDialog
DefaultExt*.csvFileNameRolFilterArquivo de Rol|*.csvTitleArquivo de RolLeft�Toph            @   4         @   4         @   4         @   4         @   4         @   4         @   4              �                                                                                                                                                                                                     