�
 TFRMVENCIMENTOGRUPO 0[  TPF0�TfrmVencimentoGrupofrmVencimentoGrupoCaptionfrmVencimentoGrupoClientHeightoClientWidthgExplicitWidthmExplicitHeight�PixelsPerInch`
TextHeight �TPanelpTopWidthg �TLabellVersionLeftHeight   �TPanelpBottomTopGWidthg �TSpeedButtonsbtnSairLeft   	TGroupBox	GroupBox1Left Top(WidthgHeightAlignalClientTabOrderExplicitLeft� ExplicitTop� ExplicitWidth� ExplicitHeighti TLabelLabel1Left
TopWidth!HeightCaptionGrupo:  TBevelBevel1LeftTop/Width�Height  TLabelLabel2Left
Top7Width8HeightCaption   Referência:  	TComboBoxcmbGrupoLeftWTopWidthZHeightStylecsDropDownList
ItemHeightTabOrder OnChangecmbGrupoChange
OnDropDowncmbGrupoDropDown  TDBGridDBGrRotaLeftWTopOWidth
Height� 
DataSourceDataSource1OptionsdgTitlesdgIndicatordgColumnResize
dgColLines
dgRowLinesdgTabsdgRowSelectdgAlwaysShowSelectiondgConfirmDeletedgCancelOnExit TabOrderTitleFont.CharsetDEFAULT_CHARSETTitleFont.ColorclWindowTextTitleFont.Height�TitleFont.NameTahomaTitleFont.Style Columns	AlignmenttaCenterExpanded	FieldNamecg_rotaTitle.AlignmenttaCenterTitle.CaptionRotaWidthFVisible	 	AlignmenttaCenterExpanded	FieldNamecg_data_venctoTitle.AlignmenttaCenterTitle.Caption
VencimentoWidthPVisible	 	AlignmenttaCenterExpanded	FieldNameLigacoesTitle.AlignmenttaCenterTitle.Caption
   LigaçõesWidthPVisible	    TEditEdReferenciaLeftWTop4WidthZHeightReadOnly	TabOrder   TQueryqryGrupoDatabaseNamedbMainSQL.Stringsselect 	rt_grupofrom	roteirosgroup 	by rt_grupoorder	by rt_grupo     Left� Top0  TQuery
qryRoteiroDatabaseNamedbMainSQL.StringsDselect 	cg_rota, cg_referencia, cg_data_vencto, count(*) as Ligacoesfrom 	cargawhere	cg_grupo = :nGrupo/group	by cg_rota, cg_referencia, cg_data_vencto order	by cg_rota, cg_data_vencto Left� Top0	ParamDataDataType	ftIntegerNamenGrupo	ParamType	ptUnknown    TDataSourceDataSource1DataSet
qryRoteiroOnDataChangeDataSource1DataChangeLeft� Top0     