SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[descarga]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[descarga](
	[dg_grupo] [int] NOT NULL,
	[dg_setor] [int] NULL,
	[dg_rota] [int] NOT NULL,
	[dg_referencia] [datetime] NOT NULL,
	[dg_matricula] [int] NOT NULL,
	[dg_leitura_ajustada] [int] NULL,
	[dg_leitura_real] [int] NULL,
	[dg_consumo_ajustado] [int] NULL,
	[dg_consumo_rateado] [int] NULL,
	[dg_situacao_consumo] [int] NULL,
	[dg_dias_consumo] [int] NULL,
	[dg_ocorrencia] [int] NULL,
	[dg_flag_calculada] [varchar](1) NULL,
	[dg_flag_emitida] [varchar](1) NULL,
	[dg_flag_cortado] [varchar](1) NULL,
	[dg_flag_aviso] [varchar](1) NULL,
	[dg_valor_agua] [decimal](14, 2) NULL,
	[dg_valor_esgoto] [decimal](14, 2) NULL,
	[dg_valor_servico] [decimal](14, 2) NULL,
	[dg_valor_saldo_credito] [decimal](14, 2) NULL,
	[dg_valor_devolucao] [decimal](14, 2) NULL,
	[dg_valor_saldo_debito] [decimal](14, 2) NULL,
	[dg_valor_ir] [decimal](14, 2) NULL,
	[dg_valor_csll] [decimal](14, 2) NULL,
	[dg_valor_pis] [decimal](14, 2) NULL,
	[dg_valor_cofins] [decimal](14, 2) NULL,
	[dg_leitura_agente] [int] NULL,
	[dg_forma_entrega] [int] NULL,
	[dg_data_leitura] [datetime] NULL,
	[dg_vias] [int] NULL,
	[dg_motivo_nao_faturamento] [int] NULL,
	[dg_agente] [int] NULL,
	[dg_status] [int] NULL,
	[dg_consumo_medido] [int] NULL,
	[dg_consumo_faturado_res] [int] NULL,
	[dg_consumo_faturado_com] [int] NULL,
	[dg_consumo_faturado_ind] [int] NULL,
	[dg_consumo_faturado_pub] [int] NULL,
	[dg_consumo_faturado_soc] [int] NULL,
	[dg_consumo_faturado_ea] [int] NULL,
	[dg_valor_credito] [decimal](15, 2) NULL,
	[dg_consumo_ajustado_esg] [int] NULL,
	[dg_consumo_medido_esg] [int] NULL,
	[dg_consumo_faturado_esg_res] [int] NULL,
	[dg_consumo_faturado_esg_com] [int] NULL,
	[dg_consumo_faturado_esg_ind] [int] NULL,
	[dg_consumo_faturado_esg_pub] [int] NULL,
	[dg_consumo_faturado_esg_soc] [int] NULL,
	[dg_consumo_faturado_esg_ea] [int] NULL,
	[dg_consumo_rateado_esg] [int] NULL,
	[dg_flag_fraude] [char](1) NULL,
	[dg_flag_faturado] [char](1) NULL DEFAULT ('S'),
	[dg_flag_lido] [char](1) NULL DEFAULT ('N'),
	[dg_ocorrencia2] [int] NULL,
 CONSTRAINT [pk_descarga] PRIMARY KEY CLUSTERED 
(
	[dg_grupo] ASC,
	[dg_matricula] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[descarga01coletor]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[descarga01coletor](
	[dg_grupo] [int] NOT NULL,
	[dg_setor] [int] NULL,
	[dg_rota] [int] NOT NULL,
	[dg_referencia] [datetime] NOT NULL,
	[dg_matricula] [int] NOT NULL,
	[dg_leitura_ajustada] [int] NULL,
	[dg_leitura_real] [int] NULL,
	[dg_consumo_ajustado] [int] NULL,
	[dg_consumo_rateado] [int] NULL,
	[dg_situacao_consumo] [int] NULL,
	[dg_dias_consumo] [int] NULL,
	[dg_ocorrencia] [int] NULL,
	[dg_flag_calculada] [varchar](1) NULL,
	[dg_flag_emitida] [varchar](1) NULL,
	[dg_flag_cortado] [varchar](1) NULL,
	[dg_flag_aviso] [varchar](1) NULL,
	[dg_valor_agua] [decimal](14, 2) NULL,
	[dg_valor_esgoto] [decimal](14, 2) NULL,
	[dg_valor_servico] [decimal](14, 2) NULL,
	[dg_valor_saldo_credito] [decimal](14, 2) NULL,
	[dg_valor_devolucao] [decimal](14, 2) NULL,
	[dg_valor_saldo_debito] [decimal](14, 2) NULL,
	[dg_valor_ir] [decimal](14, 2) NULL,
	[dg_valor_csll] [decimal](14, 2) NULL,
	[dg_valor_pis] [decimal](14, 2) NULL,
	[dg_valor_cofins] [decimal](14, 2) NULL,
	[dg_leitura_agente] [int] NULL,
	[dg_forma_entrega] [int] NULL,
	[dg_data_leitura] [datetime] NULL,
	[dg_vias] [int] NULL,
	[dg_motivo_nao_faturamento] [int] NULL,
	[dg_agente] [int] NULL,
	[dg_status] [int] NULL,
	[dg_consumo_medido] [int] NULL,
	[dg_consumo_faturado_res] [int] NULL,
	[dg_consumo_faturado_com] [int] NULL,
	[dg_consumo_faturado_ind] [int] NULL,
	[dg_consumo_faturado_pub] [int] NULL,
	[dg_consumo_faturado_soc] [int] NULL,
	[dg_consumo_faturado_ea] [int] NULL,
	[dg_valor_credito] [decimal](15, 2) NULL,
	[dg_consumo_ajustado_esg] [int] NULL,
	[dg_consumo_medido_esg] [int] NULL,
	[dg_consumo_faturado_esg_res] [int] NULL,
	[dg_consumo_faturado_esg_com] [int] NULL,
	[dg_consumo_faturado_esg_ind] [int] NULL,
	[dg_consumo_faturado_esg_pub] [int] NULL,
	[dg_consumo_faturado_esg_soc] [int] NULL,
	[dg_consumo_faturado_esg_ea] [int] NULL,
	[dg_consumo_rateado_esg] [int] NULL,
	[dg_flag_fraude] [char](1) NULL,
	[dg_flag_faturado] [char](1) NULL,
	[dg_flag_lido] [char](1) NULL
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[descargas_01coletor]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[descargas_01coletor](
	[dg_grupo] [int] NOT NULL,
	[dg_setor] [int] NULL,
	[dg_rota] [int] NOT NULL,
	[dg_referencia] [datetime] NOT NULL,
	[dg_matricula] [int] NOT NULL,
	[dg_leitura_ajustada] [int] NULL,
	[dg_leitura_real] [int] NULL,
	[dg_consumo_ajustado] [int] NULL,
	[dg_consumo_rateado] [int] NULL,
	[dg_situacao_consumo] [int] NULL,
	[dg_dias_consumo] [int] NULL,
	[dg_ocorrencia] [int] NULL,
	[dg_flag_calculada] [varchar](1) NULL,
	[dg_flag_emitida] [varchar](1) NULL,
	[dg_flag_cortado] [varchar](1) NULL,
	[dg_flag_aviso] [varchar](1) NULL,
	[dg_valor_agua] [decimal](14, 2) NULL,
	[dg_valor_esgoto] [decimal](14, 2) NULL,
	[dg_valor_servico] [decimal](14, 2) NULL,
	[dg_valor_saldo_credito] [decimal](14, 2) NULL,
	[dg_valor_devolucao] [decimal](14, 2) NULL,
	[dg_valor_saldo_debito] [decimal](14, 2) NULL,
	[dg_valor_ir] [decimal](14, 2) NULL,
	[dg_valor_csll] [decimal](14, 2) NULL,
	[dg_valor_pis] [decimal](14, 2) NULL,
	[dg_valor_cofins] [decimal](14, 2) NULL,
	[dg_leitura_agente] [int] NULL,
	[dg_forma_entrega] [int] NULL,
	[dg_data_leitura] [datetime] NULL,
	[dg_vias] [int] NULL,
	[dg_motivo_nao_faturamento] [int] NULL,
	[dg_agente] [int] NULL,
	[dg_status] [int] NULL,
	[dg_consumo_medido] [int] NULL,
	[dg_consumo_faturado_res] [int] NULL,
	[dg_consumo_faturado_com] [int] NULL,
	[dg_consumo_faturado_ind] [int] NULL,
	[dg_consumo_faturado_pub] [int] NULL,
	[dg_consumo_faturado_soc] [int] NULL,
	[dg_consumo_faturado_ea] [int] NULL,
	[dg_valor_credito] [decimal](15, 2) NULL,
	[dg_consumo_ajustado_esg] [int] NULL,
	[dg_consumo_medido_esg] [int] NULL,
	[dg_consumo_faturado_esg_res] [int] NULL,
	[dg_consumo_faturado_esg_com] [int] NULL,
	[dg_consumo_faturado_esg_ind] [int] NULL,
	[dg_consumo_faturado_esg_pub] [int] NULL,
	[dg_consumo_faturado_esg_soc] [int] NULL,
	[dg_consumo_faturado_esg_ea] [int] NULL,
	[dg_consumo_rateado_esg] [int] NULL,
	[dg_flag_fraude] [char](1) NULL,
	[dg_flag_faturado] [char](1) NULL,
	[dg_flag_lido] [char](1) NULL
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[descargas_20coletor]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[descargas_20coletor](
	[dg_grupo] [int] NOT NULL,
	[dg_setor] [int] NULL,
	[dg_rota] [int] NOT NULL,
	[dg_referencia] [datetime] NOT NULL,
	[dg_matricula] [int] NOT NULL,
	[dg_leitura_ajustada] [int] NULL,
	[dg_leitura_real] [int] NULL,
	[dg_consumo_ajustado] [int] NULL,
	[dg_consumo_rateado] [int] NULL,
	[dg_situacao_consumo] [int] NULL,
	[dg_dias_consumo] [int] NULL,
	[dg_ocorrencia] [int] NULL,
	[dg_flag_calculada] [varchar](1) NULL,
	[dg_flag_emitida] [varchar](1) NULL,
	[dg_flag_cortado] [varchar](1) NULL,
	[dg_flag_aviso] [varchar](1) NULL,
	[dg_valor_agua] [decimal](14, 2) NULL,
	[dg_valor_esgoto] [decimal](14, 2) NULL,
	[dg_valor_servico] [decimal](14, 2) NULL,
	[dg_valor_saldo_credito] [decimal](14, 2) NULL,
	[dg_valor_devolucao] [decimal](14, 2) NULL,
	[dg_valor_saldo_debito] [decimal](14, 2) NULL,
	[dg_valor_ir] [decimal](14, 2) NULL,
	[dg_valor_csll] [decimal](14, 2) NULL,
	[dg_valor_pis] [decimal](14, 2) NULL,
	[dg_valor_cofins] [decimal](14, 2) NULL,
	[dg_leitura_agente] [int] NULL,
	[dg_forma_entrega] [int] NULL,
	[dg_data_leitura] [datetime] NULL,
	[dg_vias] [int] NULL,
	[dg_motivo_nao_faturamento] [int] NULL,
	[dg_agente] [int] NULL,
	[dg_status] [int] NULL,
	[dg_consumo_medido] [int] NULL,
	[dg_consumo_faturado_res] [int] NULL,
	[dg_consumo_faturado_com] [int] NULL,
	[dg_consumo_faturado_ind] [int] NULL,
	[dg_consumo_faturado_pub] [int] NULL,
	[dg_consumo_faturado_soc] [int] NULL,
	[dg_consumo_faturado_ea] [int] NULL,
	[dg_valor_credito] [decimal](15, 2) NULL,
	[dg_consumo_ajustado_esg] [int] NULL,
	[dg_consumo_medido_esg] [int] NULL,
	[dg_consumo_faturado_esg_res] [int] NULL,
	[dg_consumo_faturado_esg_com] [int] NULL,
	[dg_consumo_faturado_esg_ind] [int] NULL,
	[dg_consumo_faturado_esg_pub] [int] NULL,
	[dg_consumo_faturado_esg_soc] [int] NULL,
	[dg_consumo_faturado_esg_ea] [int] NULL,
	[dg_consumo_rateado_esg] [int] NULL,
	[dg_flag_fraude] [char](1) NULL,
	[dg_flag_faturado] [char](1) NULL,
	[dg_flag_lido] [char](1) NULL
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[des_01_desconto]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[des_01_desconto](
	[dg_grupo] [int] NOT NULL,
	[dg_setor] [int] NULL,
	[dg_rota] [int] NOT NULL,
	[dg_referencia] [datetime] NOT NULL,
	[dg_matricula] [int] NOT NULL,
	[dg_leitura_ajustada] [int] NULL,
	[dg_leitura_real] [int] NULL,
	[dg_consumo_ajustado] [int] NULL,
	[dg_consumo_rateado] [int] NULL,
	[dg_situacao_consumo] [int] NULL,
	[dg_dias_consumo] [int] NULL,
	[dg_ocorrencia] [int] NULL,
	[dg_flag_calculada] [varchar](1) NULL,
	[dg_flag_emitida] [varchar](1) NULL,
	[dg_flag_cortado] [varchar](1) NULL,
	[dg_flag_aviso] [varchar](1) NULL,
	[dg_valor_agua] [decimal](14, 2) NULL,
	[dg_valor_esgoto] [decimal](14, 2) NULL,
	[dg_valor_servico] [decimal](14, 2) NULL,
	[dg_valor_saldo_credito] [decimal](14, 2) NULL,
	[dg_valor_devolucao] [decimal](14, 2) NULL,
	[dg_valor_saldo_debito] [decimal](14, 2) NULL,
	[dg_valor_ir] [decimal](14, 2) NULL,
	[dg_valor_csll] [decimal](14, 2) NULL,
	[dg_valor_pis] [decimal](14, 2) NULL,
	[dg_valor_cofins] [decimal](14, 2) NULL,
	[dg_leitura_agente] [int] NULL,
	[dg_forma_entrega] [int] NULL,
	[dg_data_leitura] [datetime] NULL,
	[dg_vias] [int] NULL,
	[dg_motivo_nao_faturamento] [int] NULL,
	[dg_agente] [int] NULL,
	[dg_status] [int] NULL,
	[dg_consumo_medido] [int] NULL,
	[dg_consumo_faturado_res] [int] NULL,
	[dg_consumo_faturado_com] [int] NULL,
	[dg_consumo_faturado_ind] [int] NULL,
	[dg_consumo_faturado_pub] [int] NULL,
	[dg_consumo_faturado_soc] [int] NULL,
	[dg_consumo_faturado_ea] [int] NULL,
	[dg_valor_credito] [decimal](15, 2) NULL,
	[dg_consumo_ajustado_esg] [int] NULL,
	[dg_consumo_medido_esg] [int] NULL,
	[dg_consumo_faturado_esg_res] [int] NULL,
	[dg_consumo_faturado_esg_com] [int] NULL,
	[dg_consumo_faturado_esg_ind] [int] NULL,
	[dg_consumo_faturado_esg_pub] [int] NULL,
	[dg_consumo_faturado_esg_soc] [int] NULL,
	[dg_consumo_faturado_esg_ea] [int] NULL,
	[dg_consumo_rateado_esg] [int] NULL,
	[dg_flag_fraude] [char](1) NULL,
	[dg_flag_faturado] [char](1) NULL,
	[dg_flag_lido] [char](1) NULL
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[senha_coleta]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[senha_coleta](
	[sc_data_vigencia] [datetime] NOT NULL,
	[sc_senha] [varchar](10) NOT NULL,
	[sc_chave] [varchar](15) NULL,
	[sc_data_atualiz] [datetime] NULL,
 CONSTRAINT [pk_senha_coleta] PRIMARY KEY CLUSTERED 
(
	[sc_data_vigencia] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[historico_carga]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[historico_carga](
	[hc_grupo] [int] NULL,
	[hc_rota] [int] NULL,
	[hc_referencia] [datetime] NULL,
	[hc_versao_onplace] [varchar](30) NULL,
	[hc_versao_sistema] [int] NULL,
	[hc_data_atualiz] [datetime] NULL,
	[hc_nome_atualiz] [varchar](15) NULL
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[sanedonplace].[descarga_19022]') AND type in (N'U'))
BEGIN
CREATE TABLE [sanedonplace].[descarga_19022](
	[dg_grupo] [int] NOT NULL,
	[dg_setor] [int] NULL,
	[dg_rota] [int] NOT NULL,
	[dg_referencia] [datetime] NOT NULL,
	[dg_matricula] [int] NOT NULL,
	[dg_leitura_ajustada] [int] NULL,
	[dg_leitura_real] [int] NULL,
	[dg_consumo_ajustado] [int] NULL,
	[dg_consumo_rateado] [int] NULL,
	[dg_situacao_consumo] [int] NULL,
	[dg_dias_consumo] [int] NULL,
	[dg_ocorrencia] [int] NULL,
	[dg_flag_calculada] [varchar](1) NULL,
	[dg_flag_emitida] [varchar](1) NULL,
	[dg_flag_cortado] [varchar](1) NULL,
	[dg_flag_aviso] [varchar](1) NULL,
	[dg_valor_agua] [decimal](14, 2) NULL,
	[dg_valor_esgoto] [decimal](14, 2) NULL,
	[dg_valor_servico] [decimal](14, 2) NULL,
	[dg_valor_saldo_credito] [decimal](14, 2) NULL,
	[dg_valor_devolucao] [decimal](14, 2) NULL,
	[dg_valor_saldo_debito] [decimal](14, 2) NULL,
	[dg_valor_ir] [decimal](14, 2) NULL,
	[dg_valor_csll] [decimal](14, 2) NULL,
	[dg_valor_pis] [decimal](14, 2) NULL,
	[dg_valor_cofins] [decimal](14, 2) NULL,
	[dg_leitura_agente] [int] NULL,
	[dg_forma_entrega] [int] NULL,
	[dg_data_leitura] [datetime] NULL,
	[dg_vias] [int] NULL,
	[dg_motivo_nao_faturamento] [int] NULL,
	[dg_agente] [int] NULL,
	[dg_status] [int] NULL,
	[dg_consumo_medido] [int] NULL,
	[dg_consumo_faturado_res] [int] NULL,
	[dg_consumo_faturado_com] [int] NULL,
	[dg_consumo_faturado_ind] [int] NULL,
	[dg_consumo_faturado_pub] [int] NULL,
	[dg_consumo_faturado_soc] [int] NULL,
	[dg_consumo_faturado_ea] [int] NULL,
	[dg_valor_credito] [decimal](15, 2) NULL,
	[dg_consumo_ajustado_esg] [int] NULL,
	[dg_consumo_medido_esg] [int] NULL,
	[dg_consumo_faturado_esg_res] [int] NULL,
	[dg_consumo_faturado_esg_com] [int] NULL,
	[dg_consumo_faturado_esg_ind] [int] NULL,
	[dg_consumo_faturado_esg_pub] [int] NULL,
	[dg_consumo_faturado_esg_soc] [int] NULL,
	[dg_consumo_faturado_esg_ea] [int] NULL,
	[dg_consumo_rateado_esg] [int] NULL,
	[dg_flag_fraude] [char](1) NULL,
	[dg_flag_faturado] [char](1) NULL,
	[dg_flag_lido] [char](1) NULL,
	[dg_ocorrencia2] [int] NULL
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[acesso]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[acesso](
	[ac_id] [int] NOT NULL,
	[ac_ordem] [int] NOT NULL,
	[ac_name] [varchar](50) NOT NULL,
	[ac_caption] [varchar](50) NOT NULL,
	[ac_nivel] [int] NOT NULL,
	[ac_onclick] [bit] NOT NULL,
 CONSTRAINT [pk_acesso] PRIMARY KEY CLUSTERED 
(
	[ac_id] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[agentes]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[agentes](
	[ag_grupo] [int] NULL,
	[ag_referencia] [datetime] NOT NULL,
	[ag_codigo] [int] NOT NULL,
	[ag_nome] [varchar](30) NULL,
	[ag_senha] [varchar](6) NULL
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[apoio_monitor]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[apoio_monitor](
	[am_grupo] [int] NOT NULL,
	[am_rota] [int] NOT NULL,
	[am_referencia] [datetime] NOT NULL,
	[am_endereco] [varchar](100) NULL,
	[am_num_inicio] [varchar](10) NULL,
	[am_num_fim] [varchar](10) NULL,
	[am_seq_inicio] [int] NULL,
	[am_seq_fim] [int] NULL,
	[am_qtde_lig] [int] NULL
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[carga]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[carga](
	[cg_matricula] [int] NOT NULL,
	[cg_matricula_pai] [int] NULL,
	[cg_referencia] [datetime] NOT NULL,
	[cg_grupo] [int] NOT NULL,
	[cg_setor] [int] NULL,
	[cg_rota] [int] NULL,
	[cg_sequencia] [int] NULL,
	[cg_endereco] [varchar](48) NULL,
	[cg_num_imovel] [varchar](7) NULL,
	[cg_complemento] [varchar](10) NULL,
	[cg_inscricao] [varchar](16) NOT NULL,
	[cg_nome] [varchar](40) NULL,
	[cg_numero_hd] [varchar](11) NULL,
	[cg_capacidade_hidrometro] [int] NULL,
	[cg_leitura_ant] [int] NULL,
	[cg_ocorrencia_ant] [int] NULL,
	[cg_data_leit_ant] [datetime] NULL,
	[cg_consumo_medio] [int] NULL,
	[cg_economia_res] [int] NULL,
	[cg_economia_com] [int] NULL,
	[cg_economia_ind] [int] NULL,
	[cg_economia_pub] [int] NULL,
	[cg_economia_soc] [int] NULL,
	[cg_economia_ea] [int] NULL,
	[cg_categoria] [int] NULL,
	[cg_qtde_debito_ant] [int] NOT NULL,
	[cg_data_vencto] [datetime] NULL,
	[cg_mensagem1] [varchar](30) NULL,
	[cg_mensagem2] [varchar](180) NULL,
	[cg_codigo_banco] [int] NULL,
	[cg_agencia] [int] NULL,
	[cg_flag_troca] [char](1) NOT NULL,
	[cg_leitura_inicial] [int] NULL,
	[cg_data_instalacao_hd] [datetime] NULL,
	[cg_consumo_anterior] [int] NULL,
	[cg_cachorro] [varchar](1) NULL,
	[cg_natureza_ligacao] [int] NOT NULL,
	[cg_bloqueado] [varchar](1) NOT NULL,
	[cg_qtde_registros_fraude] [int] NULL,
	[cg_desconto] [int] NOT NULL,
	[cg_ident_consumidor] [int] NOT NULL,
	[cg_ident_calculo] [varchar](1) NOT NULL,
	[cg_flag_emite_conta] [char](1) NOT NULL,
	[cg_flag_cortar] [char](1) NOT NULL,
	[cg_flag_calcula_imposto] [char](1) NOT NULL,
	[cg_entrega_alternativa] [varchar](60) NULL,
	[cg_flag_calcula_conta] [char](1) NULL,
	[cg_dias_bloqueio_tarifa_ant] [int] NOT NULL,
	[cg_dias_bloqueio_tarifa_atual] [int] NOT NULL,
	[cg_virtual] [varchar](1) NULL,
	[cg_cod_logradouro] [int] NULL,
	[cg_data_bloqueio] [datetime] NULL,
	[cg_data_desbloqueio] [datetime] NULL,
	[cg_proxima_leitura] [datetime] NULL,
 CONSTRAINT [pk_carga] PRIMARY KEY CLUSTERED 
(
	[cg_grupo] ASC,
	[cg_matricula] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[chave]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[chave](
	[ch_chave] [varchar](15) NOT NULL,
	[ch_senha] [varchar](15) NOT NULL CONSTRAINT [DF_chave_ch_senha]  DEFAULT (''),
	[ch_nome] [varchar](30) NULL,
	[ch_status] [bit] NULL CONSTRAINT [DF__chave__ch_status__36B12243]  DEFAULT (1)
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[chave_acesso]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[chave_acesso](
	[ca_chave] [varchar](16) NOT NULL,
	[ca_id] [int] NOT NULL,
	[ca_status] [bit] NOT NULL,
 CONSTRAINT [pk_chave_acesso] PRIMARY KEY CLUSTERED 
(
	[ca_chave] ASC,
	[ca_id] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[carga_historico]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[carga_historico](
	[cg_matricula] [int] NOT NULL,
	[cg_matricula_pai] [int] NULL,
	[cg_referencia] [datetime] NOT NULL,
	[cg_grupo] [int] NOT NULL,
	[cg_setor] [int] NULL,
	[cg_rota] [int] NULL,
	[cg_sequencia] [int] NULL,
	[cg_endereco] [varchar](48) NULL,
	[cg_num_imovel] [varchar](7) NULL,
	[cg_complemento] [varchar](10) NULL,
	[cg_inscricao] [varchar](16) NOT NULL,
	[cg_nome] [varchar](40) NULL,
	[cg_numero_hd] [varchar](11) NULL,
	[cg_capacidade_hidrometro] [int] NULL,
	[cg_leitura_ant] [int] NULL,
	[cg_ocorrencia_ant] [int] NULL,
	[cg_data_leit_ant] [datetime] NULL,
	[cg_consumo_medio] [int] NULL,
	[cg_economia_res] [int] NULL,
	[cg_economia_com] [int] NULL,
	[cg_economia_ind] [int] NULL,
	[cg_economia_pub] [int] NULL,
	[cg_economia_soc] [int] NULL,
	[cg_economia_ea] [int] NULL,
	[cg_categoria] [int] NULL,
	[cg_qtde_debito_ant] [int] NOT NULL,
	[cg_data_vencto] [datetime] NULL,
	[cg_mensagem1] [varchar](30) NULL,
	[cg_mensagem2] [varchar](180) NULL,
	[cg_codigo_banco] [int] NULL,
	[cg_agencia] [int] NULL,
	[cg_flag_troca] [char](1) NOT NULL,
	[cg_leitura_inicial] [int] NULL,
	[cg_data_instalacao_hd] [datetime] NULL,
	[cg_consumo_anterior] [int] NULL,
	[cg_cachorro] [varchar](1) NULL,
	[cg_natureza_ligacao] [int] NOT NULL,
	[cg_bloqueado] [varchar](1) NOT NULL,
	[cg_qtde_registros_fraude] [int] NULL,
	[cg_desconto] [int] NOT NULL,
	[cg_ident_consumidor] [int] NOT NULL,
	[cg_ident_calculo] [varchar](1) NOT NULL,
	[cg_flag_emite_conta] [char](1) NOT NULL,
	[cg_flag_cortar] [char](1) NOT NULL,
	[cg_flag_calcula_imposto] [char](1) NOT NULL,
	[cg_entrega_alternativa] [varchar](60) NULL,
	[cg_flag_calcula_conta] [char](1) NULL,
	[cg_dias_bloqueio_tarifa_ant] [int] NOT NULL,
	[cg_dias_bloqueio_tarifa_atual] [int] NOT NULL,
	[cg_virtual] [varchar](1) NULL,
	[cg_cod_logradouro] [int] NULL,
	[cg_data_bloqueio] [datetime] NULL,
	[cg_data_desbloqueio] [datetime] NULL,
	[cg_proxima_leitura] [datetime] NULL,
 CONSTRAINT [pk_carga_historico] PRIMARY KEY CLUSTERED 
(
	[cg_grupo] ASC,
	[cg_referencia] ASC,
	[cg_matricula] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[creditos]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[creditos](
	[cr_matricula] [int] NOT NULL,
	[cr_grupo] [int] NOT NULL,
	[cr_referencia] [datetime] NOT NULL,
	[cr_valor] [decimal](14, 2) NOT NULL
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[debitos]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[debitos](
	[db_matricula] [int] NOT NULL,
	[db_grupo] [int] NULL,
	[db_rota] [int] NOT NULL,
	[db_referencia] [datetime] NOT NULL,
	[db_tipo] [varchar](1) NOT NULL,
	[db_qtde_debitos] [int] NOT NULL,
	[db_valor_total] [decimal](14, 2) NOT NULL,
	[db_data_vencimento] [datetime] NOT NULL,
	[db_codigo_barras] [varchar](48) NOT NULL
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[descarga_historico]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[descarga_historico](
	[dg_grupo] [int] NOT NULL,
	[dg_setor] [int] NULL,
	[dg_rota] [int] NOT NULL,
	[dg_referencia] [datetime] NOT NULL,
	[dg_matricula] [int] NOT NULL,
	[dg_leitura_ajustada] [int] NULL,
	[dg_leitura_real] [int] NULL,
	[dg_consumo_ajustado] [int] NULL,
	[dg_consumo_rateado] [int] NULL,
	[dg_situacao_consumo] [int] NULL,
	[dg_dias_consumo] [int] NULL,
	[dg_ocorrencia] [int] NULL,
	[dg_flag_calculada] [varchar](1) NULL,
	[dg_flag_emitida] [varchar](1) NULL,
	[dg_flag_cortado] [varchar](1) NULL,
	[dg_flag_aviso] [varchar](1) NULL,
	[dg_valor_agua] [decimal](14, 2) NULL,
	[dg_valor_esgoto] [decimal](14, 2) NULL,
	[dg_valor_servico] [decimal](14, 2) NULL,
	[dg_valor_saldo_credito] [decimal](14, 2) NULL,
	[dg_valor_devolucao] [decimal](14, 2) NULL,
	[dg_valor_saldo_debito] [decimal](14, 2) NULL,
	[dg_valor_ir] [decimal](14, 2) NULL,
	[dg_valor_csll] [decimal](14, 2) NULL,
	[dg_valor_pis] [decimal](14, 2) NULL,
	[dg_valor_cofins] [decimal](14, 2) NULL,
	[dg_leitura_agente] [int] NULL,
	[dg_forma_entrega] [int] NULL,
	[dg_data_leitura] [datetime] NULL,
	[dg_vias] [int] NULL,
	[dg_motivo_nao_faturamento] [int] NULL,
	[dg_agente] [int] NULL,
	[dg_status] [int] NULL,
	[dg_consumo_medido] [int] NULL,
	[dg_consumo_faturado_res] [int] NULL,
	[dg_consumo_faturado_com] [int] NULL,
	[dg_consumo_faturado_ind] [int] NULL,
	[dg_consumo_faturado_pub] [int] NULL,
	[dg_consumo_faturado_soc] [int] NULL,
	[dg_consumo_faturado_ea] [int] NULL,
	[dg_valor_credito] [decimal](15, 2) NULL,
	[dg_consumo_ajustado_esg] [int] NULL,
	[dg_consumo_medido_esg] [int] NULL,
	[dg_consumo_faturado_esg_res] [int] NULL,
	[dg_consumo_faturado_esg_com] [int] NULL,
	[dg_consumo_faturado_esg_ind] [int] NULL,
	[dg_consumo_faturado_esg_pub] [int] NULL,
	[dg_consumo_faturado_esg_soc] [int] NULL,
	[dg_consumo_faturado_esg_ea] [int] NULL,
	[dg_consumo_rateado_esg] [int] NULL,
	[dg_flag_fraude] [char](1) NULL,
	[dg_flag_faturado] [char](1) NULL,
	[dg_flag_lido] [char](1) NULL,
	[dg_ocorrencia2] [int] NULL,
 CONSTRAINT [pk_descarga_historico] PRIMARY KEY CLUSTERED 
(
	[dg_grupo] ASC,
	[dg_referencia] ASC,
	[dg_matricula] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[debitos_itens]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[debitos_itens](
	[di_matricula] [int] NOT NULL,
	[di_grupo] [int] NOT NULL,
	[di_referencia] [datetime] NOT NULL,
	[di_referencia_debito] [datetime] NOT NULL,
	[di_valor] [decimal](14, 2) NOT NULL,
	[di_sequencia] [int] NULL
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[descarga_alteracoes]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[descarga_alteracoes](
	[al_grupo] [int] NULL,
	[al_rota] [int] NULL,
	[al_referencia] [datetime] NULL,
	[al_matricula] [int] NULL,
	[al_tipo] [int] NULL,
	[al_descricao] [varchar](50) NULL,
	[al_agente] [int] NULL,
	[al_datahora] [datetime] NULL
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LEITURAS_G08]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[LEITURAS_G08](
	[CDC] [float] NULL,
	[LEIT] [float] NULL,
	[OCORRENCIA] [float] NULL,
	[DATA] [smalldatetime] NULL,
	[F5] [nvarchar](255) NULL,
	[F6] [nvarchar](255) NULL,
	[F7] [nvarchar](255) NULL
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[descarga_seg_vias]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[descarga_seg_vias](
	[ds_grupo] [int] NOT NULL,
	[ds_setor] [int] NULL,
	[ds_rota] [int] NOT NULL,
	[ds_referencia] [datetime] NOT NULL,
	[ds_matricula] [int] NOT NULL,
	[ds_referencia_seg_via] [datetime] NOT NULL,
	[ds_data_emissao] [datetime] NOT NULL
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GRUPO_09]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[GRUPO_09](
	[CDC] [float] NULL,
	[ROTA] [nvarchar](255) NULL,
	[LEIT] [float] NULL,
	[OCORRENCIA] [float] NULL
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[descontos]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[descontos](
	[de_grupo] [int] NOT NULL,
	[de_referencia] [datetime] NOT NULL,
	[de_codigo] [int] NOT NULL,
	[de_percentual] [decimal](5, 2) NOT NULL,
	[de_limite_inicial] [int] NOT NULL,
	[de_tipo_desconto] [int] NOT NULL
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[G12_18]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[G12_18](
	[Data da Leitura] [nvarchar](255) NULL,
	[Agente] [float] NULL,
	[CDC] [float] NULL,
	[Situacao] [nvarchar](255) NULL,
	[Leitura Real] [float] NULL,
	[Leitura Atribuida] [float] NULL,
	[Ocorrencias] [float] NULL,
	[Consumo Medido] [float] NULL,
	[Consumo Atribuido] [float] NULL,
	[Consumo Rateado] [nvarchar](255) NULL,
	[Emissoes] [float] NULL,
	[Forma de Entrega] [float] NULL
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[historico_consumo]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[historico_consumo](
	[hc_matricula] [int] NOT NULL,
	[hc_grupo] [int] NULL,
	[hc_referencia] [datetime] NOT NULL,
	[hc_setor_leitura] [int] NULL,
	[hc_consumo] [int] NULL,
	[hc_ocorrencia_leitura] [char](2) NULL,
	[hc_dias_consumo] [int] NULL,
	[hc_ref_historico] [datetime] NULL,
	[hc_leitura] [int] NOT NULL,
	[hc_data_leitura] [datetime] NOT NULL,
	[hc_sequencia] [int] NULL,
	[hc_leitura_real] [int] NULL
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[impostos]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[impostos](
	[ip_grupo] [int] NULL,
	[ip_referencia] [datetime] NOT NULL,
	[ip_data_inicial] [datetime] NOT NULL,
	[ip_ir] [decimal](5, 2) NOT NULL,
	[ip_csll] [decimal](5, 2) NOT NULL,
	[ip_pis] [decimal](5, 2) NOT NULL,
	[ip_cofins] [decimal](5, 2) NOT NULL
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[medicao]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[medicao](
	[md_grupo] [int] NOT NULL,
	[md_rota] [int] NOT NULL,
	[md_referencia] [datetime] NOT NULL,
	[md_agente] [int] NOT NULL,
	[md_data_leitura] [datetime] NOT NULL,
	[md_hora_inicio] [datetime] NULL,
	[md_hora_fim] [datetime] NULL,
	[md_ligacoes] [int] NULL,
	[md_leitura_campo] [int] NULL,
	[md_analise] [int] NULL,
	[md_faturado_normal] [int] NULL,
	[md_faturado_media] [int] NULL,
	[md_faturado_minima] [int] NULL,
	[md_emitidas] [int] NULL,
	[md_emitidas_2_vezes] [int] NULL,
	[md_nao_emitidas] [int] NULL,
	[md_emitidas_aviso] [int] NULL,
	[md_entrega_mao] [int] NULL,
	[md_entrega_visinho] [int] NULL,
	[md_entrega_porta] [int] NULL,
	[md_entraga_correio] [int] NULL,
	[md_entrega_recusado] [int] NULL,
	[md_entrega_outro] [int] NULL,
	[md_nao_exec] [int] NULL,
	[md_fraude] [int] NULL,
	[md_para_corte] [int] NULL,
	[md_cortado] [int] NULL,
	[md_consumo_medido] [int] NULL,
	[md_consumo_medido_esg] [int] NULL,
	[md_consumo_faturado_res] [int] NULL,
	[md_consumo_faturado_res_esg] [int] NULL,
	[md_consumo_faturado_com] [int] NULL,
	[md_consumo_faturado_com_esg] [int] NULL,
	[md_consumo_faturado_ind] [int] NULL,
	[md_consumo_faturado_ind_esg] [int] NULL,
	[md_consumo_faturado_pub] [int] NULL,
	[md_consumo_faturado_pub_esg] [int] NULL,
	[md_consumo_faturado_soc] [int] NULL,
	[md_consumo_faturado_soc_esg] [int] NULL,
	[md_consumo_faturado_ea] [int] NULL,
	[md_consumo_faturado_ea_esg] [int] NULL,
	[md_valor_agua] [decimal](15, 2) NULL,
	[md_valor_esgoto] [decimal](15, 2) NULL,
	[md_valor_servico] [decimal](15, 2) NULL,
	[md_valor_credito] [decimal](15, 2) NULL,
	[md_valor_devolucao] [decimal](15, 2) NULL,
	[md_valor_ir] [decimal](15, 2) NULL,
	[md_valor_csll] [decimal](15, 2) NULL,
	[md_valor_pis] [decimal](15, 2) NULL,
	[md_valor_cofins] [decimal](15, 2) NULL,
	[md_valor_saldo_debito] [decimal](15, 2) NULL,
	[md_valor_saldo_credito] [decimal](15, 2) NULL,
	[md_emitidas_2_vias] [int] NULL,
	[md_alteracoes_cadastro] [int] NULL,
	[md_inclusao_cadastro] [int] NULL,
	[md_leituras_real] [int] NULL DEFAULT (0)
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[mensagens]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[mensagens](
	[mg_grupo] [int] NULL,
	[mg_referencia] [datetime] NOT NULL,
	[mg_data_inicial] [datetime] NOT NULL,
	[mg_descricao1] [varchar](62) NULL,
	[mg_descricao2] [varchar](62) NULL,
	[mg_descricao3] [varchar](62) NULL
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ocorrencias]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ocorrencias](
	[oc_grupo] [int] NULL,
	[oc_referencia] [datetime] NOT NULL,
	[oc_codigo] [int] NOT NULL,
	[oc_descricao] [varchar](40) NOT NULL,
	[oc_calculo] [varchar](1) NOT NULL,
	[oc_mensagem] [varchar](1) NOT NULL,
	[oc_acesso] [varchar](1) NOT NULL
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[parametros]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[parametros](
	[NATUREZA] [varchar](3) NULL,
	[EMPRESA] [varchar](4) NULL,
	[DIRETORIO] [varchar](50) NULL,
	[server_ip] [varchar](50) NULL,
	[server_db] [varchar](50) NULL,
	[server_db_movimento] [varchar](50) NULL,
	[server_user] [varchar](50) NULL,
	[server_pass] [varchar](50) NULL
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[qualidades_agua]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[qualidades_agua](
	[qa_grupo] [int] NULL,
	[qa_referencia] [datetime] NOT NULL,
	[qa_data] [datetime] NOT NULL,
	[qa_turbidez] [varchar](7) NOT NULL,
	[qa_cloro] [varchar](7) NOT NULL,
	[qa_coliformes_totais] [varchar](7) NOT NULL,
	[qa_coliformes_termotolerantes] [varchar](7) NOT NULL,
	[qa_ph] [varchar](7) NOT NULL,
	[qa_cor] [varchar](7) NOT NULL,
	[qa_fluoreto] [varchar](7) NOT NULL,
	[qa_turbidez_Amostras] [int] NULL,
	[qa_cloro_Amostras] [int] NULL,
	[qa_cloro_Nao_Conformes] [int] NULL,
	[qa_coliformes_Totais_Amostras] [int] NULL,
	[qa_coliformes_Totais_Nao_Conformes] [int] NULL,
	[qa_coliformes_Termotolerantes_Amostras] [int] NULL,
	[qa_coliformes_Termotolerantes_Nao_Conformes] [int] NULL,
	[qa_pH_Amostras] [int] NULL,
	[qa_pH_Nao_Conformes] [int] NULL,
	[qa_cor_Amostras] [int] NULL,
	[qa_cor_Nao_Conformes] [int] NULL,
	[qa_fluoreto_Amostras] [int] NULL,
	[qa_fluoreto_Nao_Conformes] [int] NULL,
	[qa_turbidez_Nao_Conformes] [int] NULL
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[report_conta]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[report_conta](
	[rc_grupo] [int] NULL,
	[rc_setor] [int] NULL,
	[rc_rota] [int] NULL,
	[rc_sequencia] [int] NULL,
	[rc_matricula] [int] NULL,
	[rc_referencia] [datetime] NULL,
	[rc_nome] [varchar](50) NULL,
	[rc_endereco] [varchar](50) NULL,
	[rc_num_imovel] [varchar](7) NULL,
	[rc_complemento] [varchar](10) NULL,
	[rc_entrega_alternativa] [varchar](60) NULL,
	[rc_inscricao] [varchar](16) NULL,
	[rc_numero_hd] [varchar](11) NULL,
	[rc_data_vencto] [datetime] NULL,
	[rc_economia_res] [int] NULL,
	[rc_economia_com] [int] NULL,
	[rc_economia_ind] [int] NULL,
	[rc_economia_pub] [int] NULL,
	[rc_economia_soc] [int] NULL,
	[rc_economia_ea] [int] NULL,
	[rc_desc_natureza_ligacao] [varchar](10) NULL,
	[rc_consumo_medio] [int] NULL,
	[rc_data_leit_ant] [datetime] NULL,
	[rc_leitura_ant] [int] NULL,
	[rc_data_leitura] [datetime] NULL,
	[rc_leitura_ajustada] [int] NULL,
	[rc_proxima_leitura] [datetime] NULL,
	[rc_consumo] [int] NULL,
	[rc_dias_consumo] [int] NULL,
	[rc_desc_ocorrencia] [varchar](60) NULL,
	[rc_servico1] [varchar](50) NULL,
	[rc_servico2] [varchar](50) NULL,
	[rc_servico3] [varchar](50) NULL,
	[rc_servico4] [varchar](50) NULL,
	[rc_servico5] [varchar](50) NULL,
	[rc_servico6] [varchar](50) NULL,
	[rc_servico7] [varchar](50) NULL,
	[rc_servico8] [varchar](50) NULL,
	[rc_servico9] [varchar](50) NULL,
	[rc_valor1] [decimal](15, 2) NULL,
	[rc_valor2] [decimal](15, 2) NULL,
	[rc_valor3] [decimal](15, 2) NULL,
	[rc_valor4] [decimal](15, 2) NULL,
	[rc_valor5] [decimal](15, 2) NULL,
	[rc_valor6] [decimal](15, 2) NULL,
	[rc_valor7] [decimal](15, 2) NULL,
	[rc_valor8] [decimal](15, 2) NULL,
	[rc_valor9] [decimal](15, 2) NULL,
	[rc_valor_total] [decimal](15, 2) NULL,
	[rc_barra] [varchar](55) NULL,
	[rc_controle_barra] [varchar](55) NULL,
	[rc_mensagem_barra1] [varchar](60) NULL,
	[rc_mensagem_barra2] [varchar](60) NULL,
	[rc_mensagem_barra3] [varchar](60) NULL,
	[rc_hist_ref_1] [datetime] NULL,
	[rc_hist_ref_2] [datetime] NULL,
	[rc_hist_ref_3] [datetime] NULL,
	[rc_hist_ref_4] [datetime] NULL,
	[rc_hist_ref_5] [datetime] NULL,
	[rc_hist_ref_6] [datetime] NULL,
	[rc_hist_cons_1] [int] NULL,
	[rc_hist_cons_2] [int] NULL,
	[rc_hist_cons_3] [int] NULL,
	[rc_hist_cons_4] [int] NULL,
	[rc_hist_cons_5] [int] NULL,
	[rc_hist_cons_6] [int] NULL,
	[rc_tarif_faixa_titulo] [varchar](10) NULL,
	[rc_tarif_faixa_1] [varchar](10) NULL,
	[rc_tarif_faixa_2] [varchar](10) NULL,
	[rc_tarif_faixa_3] [varchar](10) NULL,
	[rc_tarif_faixa_4] [varchar](10) NULL,
	[rc_tarif_faixa_5] [varchar](10) NULL,
	[rc_tarif_faixa_6] [varchar](10) NULL,
	[rc_tarif_faixa_7] [varchar](10) NULL,
	[rc_tarif_cons_titulo] [varchar](10) NULL,
	[rc_tarif_cons_1] [varchar](10) NULL,
	[rc_tarif_cons_2] [varchar](10) NULL,
	[rc_tarif_cons_3] [varchar](10) NULL,
	[rc_tarif_cons_4] [varchar](10) NULL,
	[rc_tarif_cons_5] [varchar](10) NULL,
	[rc_tarif_cons_6] [varchar](10) NULL,
	[rc_tarif_cons_7] [varchar](10) NULL,
	[rc_tarif_tarifa_titulo] [varchar](10) NULL,
	[rc_tarif_tarifa_1] [decimal](15, 2) NULL,
	[rc_tarif_tarifa_2] [decimal](15, 2) NULL,
	[rc_tarif_tarifa_3] [decimal](15, 2) NULL,
	[rc_tarif_tarifa_4] [decimal](15, 2) NULL,
	[rc_tarif_tarifa_5] [decimal](15, 2) NULL,
	[rc_tarif_tarifa_6] [decimal](15, 2) NULL,
	[rc_tarif_tarifa_7] [decimal](15, 2) NULL,
	[rc_tarif_valor_titulo] [varchar](10) NULL,
	[rc_tarif_valor_1] [decimal](15, 2) NULL,
	[rc_tarif_valor_2] [decimal](15, 2) NULL,
	[rc_tarif_valor_3] [decimal](15, 2) NULL,
	[rc_tarif_valor_4] [decimal](15, 2) NULL,
	[rc_tarif_valor_5] [decimal](15, 2) NULL,
	[rc_tarif_valor_6] [decimal](15, 2) NULL,
	[rc_tarif_valor_7] [decimal](15, 2) NULL,
	[rc_qa_data] [datetime] NULL,
	[rc_qa_turbidez] [varchar](10) NULL,
	[rc_qa_cloro] [varchar](10) NULL,
	[rc_qa_coliformes_totais] [varchar](10) NULL,
	[rc_qa_coliformes_termotolerantes] [varchar](10) NULL,
	[rc_qa_ph] [varchar](10) NULL,
	[rc_qa_cor] [varchar](10) NULL,
	[rc_qa_fluoreto] [varchar](10) NULL,
	[rc_mensagem1] [varchar](62) NULL,
	[rc_mensagem2] [varchar](62) NULL,
	[rc_mensagem3] [varchar](62) NULL,
	[rc_hist_ocor_1] [int] NULL,
	[rc_hist_ocor_2] [int] NULL,
	[rc_hist_ocor_3] [int] NULL,
	[rc_hist_ocor_4] [int] NULL,
	[rc_hist_ocor_5] [int] NULL,
	[rc_hist_ocor_6] [int] NULL,
	[rc_vias] [int] NULL
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[report_ocorrencia]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[report_ocorrencia](
	[ro_grupo] [int] NOT NULL,
	[ro_referencia] [datetime] NOT NULL,
	[ro_tabela] [varchar](50) NULL,
	[ro_matricula] [int] NULL,
	[ro_descricao] [varchar](150) NULL
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[roteiros]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[roteiros](
	[rt_grupo] [int] NOT NULL,
	[rt_rota] [int] NOT NULL,
	[rt_referencia] [datetime] NOT NULL,
	[rt_data_vencto] [datetime] NOT NULL,
	[rt_data_recepcao] [datetime] NOT NULL,
	[rt_ordem_inicial] [int] NOT NULL,
	[rt_ordem_final] [int] NOT NULL,
	[rt_ind_leitura] [int] NOT NULL,
	[rt_leitura_prev] [datetime] NOT NULL,
	[rt_maleta] [int] NULL,
	[rt_data_carga] [datetime] NULL,
	[rt_data_descarga] [datetime] NULL,
	[rt_data_transmissao] [datetime] NULL,
	[rt_agente] [int] NULL,
	[rt_data_prox_leitura] [datetime] NULL,
	[rt_ind_chuva] [char](1) NULL DEFAULT ('N'),
	[rt_carga_coleta] [int] NULL DEFAULT (0),
	[rt_versao_onplace] [varchar](30) NULL,
 CONSTRAINT [pk_roteiros] PRIMARY KEY CLUSTERED 
(
	[rt_grupo] ASC,
	[rt_rota] ASC,
	[rt_referencia] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[segundas_vias]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[segundas_vias](
	[sv_matricula] [int] NOT NULL,
	[sv_grupo] [int] NULL,
	[sv_rota] [int] NOT NULL,
	[sv_referencia] [datetime] NOT NULL,
	[sv_referencia_seg_via] [datetime] NOT NULL,
	[sv_data_vencimento] [datetime] NOT NULL,
	[sv_data_leitura] [datetime] NOT NULL,
	[sv_data_leitura_anterior] [datetime] NOT NULL,
	[sv_leitura_atual] [int] NULL,
	[sv_leitura_anterior] [int] NULL,
	[sv_dias_consumo] [int] NULL,
	[sv_consumo_faturado] [int] NULL,
	[sv_media] [int] NULL,
	[sv_ref_cons_1] [datetime] NULL,
	[sv_cons_1] [int] NULL,
	[sv_ref_cons_2] [datetime] NULL,
	[sv_cons_2] [int] NULL,
	[sv_ref_cons_3] [datetime] NULL,
	[sv_cons_3] [int] NULL,
	[sv_ref_cons_4] [datetime] NULL,
	[sv_cons_4] [int] NULL,
	[sv_ref_cons_5] [datetime] NULL,
	[sv_cons_5] [int] NULL,
	[sv_ref_cons_6] [datetime] NULL,
	[sv_cons_6] [int] NULL,
	[sv_servico_01] [varchar](35) NOT NULL,
	[sv_valor_01] [decimal](14, 2) NOT NULL,
	[sv_servico_02] [varchar](35) NULL,
	[sv_valor_02] [decimal](14, 2) NULL,
	[sv_servico_03] [varchar](35) NULL,
	[sv_valor_03] [decimal](14, 2) NULL,
	[sv_servico_04] [varchar](35) NULL,
	[sv_valor_04] [decimal](14, 2) NULL,
	[sv_servico_05] [varchar](35) NULL,
	[sv_valor_05] [decimal](14, 2) NULL,
	[sv_servico_06] [varchar](35) NULL,
	[sv_valor_06] [decimal](14, 2) NULL,
	[sv_servico_07] [varchar](35) NULL,
	[sv_valor_07] [decimal](14, 2) NULL,
	[sv_servico_08] [varchar](35) NULL,
	[sv_valor_08] [decimal](14, 2) NULL,
	[sv_servico_09] [varchar](35) NULL,
	[sv_valor_09] [decimal](14, 2) NULL,
	[sv_valor_total] [decimal](14, 2) NOT NULL,
	[sv_codigo_barras] [varchar](48) NOT NULL,
	[sv_ocorrencia] [int] NULL
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Servicos]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Servicos](
	[sr_grupo] [int] NULL,
	[sr_rota] [int] NOT NULL,
	[sr_referencia] [datetime] NOT NULL,
	[sr_matricula] [int] NOT NULL,
	[sr_sequencia] [int] NOT NULL,
	[sr_descricao] [varchar](35) NOT NULL,
	[sr_valor] [decimal](14, 2) NOT NULL,
	[sr_ind_credito] [varchar](1) NULL
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sysconfig]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[sysconfig](
	[sy_client] [varchar](60) NOT NULL,
	[sy_cnpj] [varchar](14) NOT NULL,
	[sy_chave] [varchar](25) NOT NULL,
	[sy_date] [datetime] NOT NULL
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sysversao]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[sysversao](
	[sv_versao] [int] NOT NULL,
	[sv_date] [datetime] NOT NULL,
	[sv_versao_psion] [int] NULL,
	[sv_versao_onplace] [varchar](30) NULL
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tabelas]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tabelas](
	[tb_tabela] [varchar](40) NOT NULL,
	[tb_campo] [varchar](40) NOT NULL,
	[tb_campo_amigavel] [varchar](40) NOT NULL,
	[tb_valor] [int] NOT NULL,
	[tb_descricao] [varchar](100) NOT NULL
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tarifas]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tarifas](
	[tr_grupo] [int] NOT NULL,
	[tr_referencia] [datetime] NOT NULL,
	[tr_categoria] [int] NOT NULL,
	[tr_data_inicial] [datetime] NOT NULL,
	[tr_faixa_inicial] [int] NOT NULL,
	[tr_faixa_final] [int] NOT NULL,
	[tr_agua] [decimal](8, 2) NULL,
	[tr_esgoto] [decimal](8, 2) NULL,
	[tr_sequencia] [int] NULL,
 CONSTRAINT [pk_tarifas] PRIMARY KEY CLUSTERED 
(
	[tr_referencia] ASC,
	[tr_grupo] ASC,
	[tr_data_inicial] ASC,
	[tr_categoria] ASC,
	[tr_faixa_inicial] ASC,
	[tr_faixa_final] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[problema_equipamento]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[problema_equipamento](
	[pe_data] [datetime] NOT NULL,
	[pe_maleta] [int] NOT NULL,
	[pe_agente] [int] NOT NULL,
	[pe_grupo] [int] NOT NULL,
	[pe_rota] [int] NOT NULL,
	[pe_descricao] [varchar](100) NULL,
 CONSTRAINT [pk_problema_equipamento] PRIMARY KEY CLUSTERED 
(
	[pe_data] ASC,
	[pe_maleta] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
END
