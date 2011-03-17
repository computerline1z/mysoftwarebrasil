SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ONP_HIDROMETRO]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ONP_HIDROMETRO](
	[cod_hidrometro] [varchar](12) NOT NULL,
	[seq_matricula] [numeric](18, 0) NOT NULL,
	[seq_local] [numeric](18, 0) NULL,
	[cod_marca] [varchar](3) NULL,
	[seq_tamanho_hidrometro] [numeric](18, 0) NULL,
	[val_numero_digitos] [numeric](18, 0) NULL,
	[seq_diametro_ligacao] [numeric](18, 0) NULL,
	[dat_fabricacao] [datetime] NULL,
	[dat_aquisicao] [datetime] NULL,
	[des_classe] [varchar](30) NULL,
 CONSTRAINT [PK_ONP_HIDROMETRO] PRIMARY KEY CLUSTERED 
(
	[cod_hidrometro] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ONP_HISTORICO]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ONP_HISTORICO](
	[seq_matricula] [numeric](18, 0) NOT NULL,
	[cod_referencia] [varchar](8) NOT NULL,
	[val_consumo] [numeric](18, 0) NULL,
	[cod_ocorrencia] [varchar](3) NULL,
 CONSTRAINT [PK__ONP_HISTORICO__0000000000000140] PRIMARY KEY CLUSTERED 
(
	[seq_matricula] ASC,
	[cod_referencia] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ONP_IMPOSTO_DIADEMA]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ONP_IMPOSTO_DIADEMA](
	[cod_imposto] [varchar](16) NOT NULL,
	[val_porcentagem] [numeric](5, 2) NULL,
 CONSTRAINT [PK__ONP_IMPOSTO_DIADEMA__000000000000014C] PRIMARY KEY CLUSTERED 
(
	[cod_imposto] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ONP_LOCALIZACAO_HIDROMETRO]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ONP_LOCALIZACAO_HIDROMETRO](
	[seq_local] [numeric](18, 0) NOT NULL,
	[des_local] [varchar](30) NOT NULL,
 CONSTRAINT [PK__ONP_LOCALIZACAO_HIDROMETRO__0000000000000155] PRIMARY KEY CLUSTERED 
(
	[seq_local] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ONP_LOGRADOURO]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ONP_LOGRADOURO](
	[seq_logradouro] [numeric](18, 0) NOT NULL,
	[des_logradouro] [varchar](60) NOT NULL,
 CONSTRAINT [PK__ONP_LOGRADOURO__000000000000015E] PRIMARY KEY CLUSTERED 
(
	[seq_logradouro] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ONP_MATRICULA]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ONP_MATRICULA](
	[seq_matricula] [numeric](18, 0) NOT NULL,
	[seq_logradouro] [numeric](18, 0) NULL,
	[seq_utilizacao_ligacao] [numeric](18, 0) NULL,
	[nom_cliente] [varchar](40) NULL,
	[val_numero_imovel] [numeric](18, 0) NULL,
	[des_complemento] [varchar](40) NULL,
	[ind_processado] [varchar](1) NULL,
	[seq_rota] [numeric](18, 0) NULL,
	[seq_leitura] [numeric](18, 0) NULL,
	[ind_impresso] [varchar](1) NULL,
	[des_cep] [varchar](12) NULL,
	[seq_zona_abastecimento] [numeric](18, 0) NULL,
	[val_fotos_minima] [numeric](18, 0) NULL,
	[val_fotos_maxima] [numeric](18, 0) NULL,
	[des_inscricao] [varchar](40) NULL,
	[des_endereco_alternativo] [varchar](80) NULL,
 CONSTRAINT [PK__ONP_MATRICULA__0000000000000183] PRIMARY KEY CLUSTERED 
(
	[seq_matricula] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ONP_MATRICULA_ALTERACAO]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ONP_MATRICULA_ALTERACAO](
	[seq_matricula] [numeric](18, 0) NOT NULL,
	[ind_dado_alterado] [varchar](2) NOT NULL,
	[seq_item] [numeric](18, 0) NOT NULL,
	[des_conteudo_anterior] [varchar](40) NOT NULL,
	[des_conteudo_novo] [varchar](40) NOT NULL,
 CONSTRAINT [PK__ONP_MATRICULA_ALTERACAO__0000000000000198] PRIMARY KEY CLUSTERED 
(
	[seq_matricula] ASC,
	[ind_dado_alterado] ASC,
	[seq_item] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ONP_MATRICULA_DIADEMA]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ONP_MATRICULA_DIADEMA](
	[seq_matricula] [numeric](18, 0) NOT NULL,
	[seq_matricula_pai] [numeric](18, 0) NULL,
	[seq_desconto] [numeric](18, 0) NULL,
	[ind_corta_ligacao] [varchar](1) NULL,
	[ind_cortou_ligacao] [varchar](1) NULL,
	[ind_retencao_impostos] [varchar](1) NULL,
	[ind_bloqueio] [varchar](1) NULL,
	[val_dias_bloqueio_anterior] [numeric](18, 0) NULL,
	[val_dias_bloqueio_atual] [numeric](18, 0) NULL,
	[ind_cachorro] [varchar](1) NULL,
	[val_fraudes] [numeric](18, 0) NULL,
	[ind_emite_fatura] [varchar](1) NULL,
	[ind_calcula_fatura] [varchar](1) NULL,
	[ind_tipo_consumidor] [varchar](2) NULL,
	[des_mensagem_1] [varchar](30) NULL,
	[des_mensagem_2] [varchar](180) NULL,
	[dat_bloqueio] [datetime] NULL,
 CONSTRAINT [PK__ONP_MATRICULA_DIADEMA__00000000000001C2] PRIMARY KEY CLUSTERED 
(
	[seq_matricula] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ONP_MATRICULA_SCS]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ONP_MATRICULA_SCS](
	[seq_matricula] [numeric](18, 0) NOT NULL,
	[ind_lancamento] [varchar](1) NULL,
 CONSTRAINT [PK__ONP_MATRICULA_SCS__00000000000001D1] PRIMARY KEY CLUSTERED 
(
	[seq_matricula] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ONP_MATRICULA_SERVICO]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ONP_MATRICULA_SERVICO](
	[seq_item] [numeric](18, 0) NOT NULL,
	[seq_matricula] [numeric](18, 0) NOT NULL,
	[seq_servico] [numeric](18, 0) NULL,
	[ind_solicitante] [varchar](1) NULL,
 CONSTRAINT [PK__ONP_MATRICULA_SERVICO__00000000000001DE] PRIMARY KEY CLUSTERED 
(
	[seq_item] ASC,
	[seq_matricula] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ONP_MATRICULAS_CARGA]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ONP_MATRICULAS_CARGA](
	[seq_matricula] [numeric](18, 0) NOT NULL,
	[ind_carga] [varchar](1) NOT NULL,
	[ind_descarga] [varchar](1) NOT NULL,
 CONSTRAINT [PK__ONP_MATRICULAS_CARGA__00000000000001EF] PRIMARY KEY CLUSTERED 
(
	[seq_matricula] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ONP_MENSAGEM_MOVIMENTO]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ONP_MENSAGEM_MOVIMENTO](
	[seq_mensagem_movimento] [numeric](18, 0) NOT NULL,
	[seq_matricula] [numeric](18, 0) NULL,
	[seq_roteiro] [numeric](18, 0) NULL,
	[seq_grupo_fatura] [numeric](18, 0) NULL,
	[des_mensagem_movimento] [varchar](500) NOT NULL,
	[dat_inicio] [datetime] NULL,
	[dat_final] [datetime] NULL,
	[seq_tipo_documento] [numeric](18, 0) NULL,
 CONSTRAINT [PK__ONP_MENSAGEM_MOVIMENTO__0000000000000204] PRIMARY KEY CLUSTERED 
(
	[seq_mensagem_movimento] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ONP_MOVIMENTO]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ONP_MOVIMENTO](
	[cod_referencia] [varchar](8) NOT NULL,
	[seq_roteiro] [numeric](18, 0) NOT NULL,
	[seq_matricula] [numeric](18, 0) NOT NULL,
	[cod_agente] [numeric](18, 0) NOT NULL,
	[cod_hidrometro] [varchar](12) NULL,
	[seq_tipo_entrega] [numeric](18, 0) NULL,
	[val_leitura_anterior] [numeric](18, 0) NULL,
	[val_leitura_real] [numeric](18, 0) NULL,
	[val_leitura_atribuida] [numeric](18, 0) NULL,
	[val_numero_leituras] [numeric](18, 0) NULL,
	[ind_leitura_divergente] [varchar](1) NULL,
	[val_consumo_medido] [numeric](18, 0) NULL,
	[val_consumo_medio] [numeric](18, 0) NULL,
	[val_consumo_atribuido] [numeric](18, 0) NULL,
	[val_consumo_troca] [numeric](18, 0) NULL,
	[val_consumo_rateado] [numeric](18, 0) NULL,
	[des_banco_debito] [varchar](30) NULL,
	[des_banco_agencia_debito] [varchar](20) NULL,
	[dat_leitura] [datetime] NULL,
	[dat_proxima_leitura] [datetime] NULL,
	[dat_vencimento] [datetime] NULL,
	[dat_leitura_anterior] [datetime] NULL,
	[ind_entrega_especial] [varchar](1) NULL,
	[val_quantidade_pendente] [numeric](18, 0) NULL,
	[val_desconto] [numeric](11, 3) NULL,
	[ind_motivo_retirada] [varchar](1) NULL,
	[dat_troca] [datetime] NULL,
	[ind_situacao_movimento] [varchar](1) NULL,
	[ind_fatura_emitida] [varchar](1) NULL,
	[val_arredonda_anterior] [numeric](3, 2) NULL,
	[val_impressoes] [numeric](18, 0) NULL,
	[val_consumo_estimado] [numeric](18, 0) NULL,
 CONSTRAINT [PK__ONP_MOVIMENTO__0000000000000252] PRIMARY KEY CLUSTERED 
(
	[cod_referencia] ASC,
	[seq_roteiro] ASC,
	[seq_matricula] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ONP_MOVIMENTO_CATEGORIA]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ONP_MOVIMENTO_CATEGORIA](
	[cod_referencia] [varchar](8) NOT NULL,
	[seq_roteiro] [numeric](18, 0) NOT NULL,
	[seq_matricula] [numeric](18, 0) NOT NULL,
	[seq_categoria] [numeric](18, 0) NOT NULL,
	[val_numero_economia] [numeric](18, 0) NULL,
	[val_valor_faturado] [numeric](11, 3) NULL,
 CONSTRAINT [PK__ONP_MOVIMENTO_CATEGORIA__0000000000000272] PRIMARY KEY CLUSTERED 
(
	[cod_referencia] ASC,
	[seq_roteiro] ASC,
	[seq_matricula] ASC,
	[seq_categoria] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ONP_MOVIMENTO_FOTO]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ONP_MOVIMENTO_FOTO](
	[cod_referencia] [varchar](8) NOT NULL,
	[seq_roteiro] [numeric](18, 0) NOT NULL,
	[seq_matricula] [numeric](18, 0) NOT NULL,
	[seq_foto] [numeric](18, 0) NOT NULL,
	[arq_foto] [image] NULL,
	[des_caminho] [varchar](100) NULL,
 CONSTRAINT [PK__ONP_MOVIMENTO_FOTO__0000000000000289] PRIMARY KEY CLUSTERED 
(
	[cod_referencia] ASC,
	[seq_roteiro] ASC,
	[seq_matricula] ASC,
	[seq_foto] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ONP_MOVIMENTO_OCORRENCIA]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ONP_MOVIMENTO_OCORRENCIA](
	[cod_referencia] [varchar](8) NOT NULL,
	[seq_matricula] [numeric](18, 0) NOT NULL,
	[cod_ocorrencia] [numeric](18, 0) NOT NULL,
	[seq_roteiro] [numeric](18, 0) NOT NULL,
	[seq_sequencial] [numeric](18, 0) NOT NULL,
 CONSTRAINT [PK__ONP_MOVIMENTO_OCORRENCIA__000000000000029B] PRIMARY KEY CLUSTERED 
(
	[cod_referencia] ASC,
	[seq_matricula] ASC,
	[cod_ocorrencia] ASC,
	[seq_roteiro] ASC,
	[seq_sequencial] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ONP_MOVIMENTO_TAXA]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ONP_MOVIMENTO_TAXA](
	[seq_taxa] [numeric](18, 0) NOT NULL,
	[cod_referencia] [varchar](8) NOT NULL,
	[seq_matricula] [numeric](18, 0) NOT NULL,
	[seq_categoria] [numeric](18, 0) NOT NULL,
	[seq_roteiro] [numeric](18, 0) NOT NULL,
	[val_economias] [numeric](18, 0) NULL,
	[val_consumo_fixo] [numeric](18, 0) NULL,
	[val_consumo_estimado] [numeric](18, 0) NULL,
	[ind_situacao] [varchar](1) NULL,
 CONSTRAINT [PK__ONP_MOVIMENTO_TAXA__00000000000002B8] PRIMARY KEY CLUSTERED 
(
	[seq_taxa] ASC,
	[cod_referencia] ASC,
	[seq_matricula] ASC,
	[seq_categoria] ASC,
	[seq_roteiro] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ONP_MOVIMENTO_TAXA_SCS]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ONP_MOVIMENTO_TAXA_SCS](
	[seq_taxa] [numeric](18, 0) NOT NULL,
	[cod_referencia] [varchar](8) NOT NULL,
	[seq_matricula] [numeric](18, 0) NOT NULL,
	[seq_categoria] [numeric](18, 0) NOT NULL,
	[seq_roteiro] [numeric](18, 0) NOT NULL,
	[val_percentual_desconto] [numeric](5, 2) NULL,
 CONSTRAINT [PK__ONP_MOVIMENTO_TAXA_SCS__00000000000002CF] PRIMARY KEY CLUSTERED 
(
	[seq_taxa] ASC,
	[cod_referencia] ASC,
	[seq_matricula] ASC,
	[seq_categoria] ASC,
	[seq_roteiro] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ONP_OCORRENCIA]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ONP_OCORRENCIA](
	[cod_ocorrencia] [numeric](18, 0) NOT NULL,
	[des_ocorrencia] [varchar](40) NOT NULL,
	[des_mensagem] [varchar](40) NOT NULL,
	[ind_grupo] [varchar](1) NULL,
	[ind_leitura] [varchar](1) NULL,
	[ind_consumo] [varchar](2) NULL,
	[ind_emite] [varchar](1) NULL,
 CONSTRAINT [PK__ONP_OCORRENCIA__00000000000002E2] PRIMARY KEY CLUSTERED 
(
	[cod_ocorrencia] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ONP_PARAMETRO]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ONP_PARAMETRO](
	[des_nome] [varchar](40) NOT NULL,
	[des_valor] [varchar](150) NULL,
 CONSTRAINT [PK__ONP_PARAMETRO__00000000000002EB] PRIMARY KEY CLUSTERED 
(
	[des_nome] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ONP_PARAMETRO_RETENCAO]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ONP_PARAMETRO_RETENCAO](
	[ind_retencao] [varchar](1) NOT NULL,
	[seq_faixa] [numeric](18, 0) NOT NULL,
	[val_media_inicial] [numeric](18, 0) NULL,
	[val_media_final] [numeric](18, 0) NULL,
	[val_variacao_aviso] [numeric](11, 3) NULL,
	[val_variacao_retencao] [numeric](11, 3) NULL,
	[ind_unidade_variacao] [varchar](1) NULL,
 CONSTRAINT [PK__ONP_PARAMETRO_RETENCAO__00000000000002FE] PRIMARY KEY CLUSTERED 
(
	[ind_retencao] ASC,
	[seq_faixa] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ONP_QUALIDADE_AGUA]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ONP_QUALIDADE_AGUA](
	[seq_zona_abastecimento] [numeric](18, 0) NOT NULL,
	[dat_referencia] [datetime] NOT NULL,
	[seq_parametro] [numeric](18, 0) NOT NULL,
	[des_parametro] [varchar](40) NULL,
	[val_previstas] [numeric](18, 0) NULL,
	[val_realizadas] [numeric](18, 0) NULL,
	[val_fora_limite] [numeric](18, 0) NULL,
	[val_media] [numeric](5, 2) NULL,
 CONSTRAINT [PK__ONP_QUALIDADE_AGUA__0000000000000313] PRIMARY KEY CLUSTERED 
(
	[seq_zona_abastecimento] ASC,
	[dat_referencia] ASC,
	[seq_parametro] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ONP_REFERENCIA_PENDENTE]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ONP_REFERENCIA_PENDENTE](
	[seq_matricula] [numeric](18, 0) NOT NULL,
	[seq_fatura] [numeric](18, 0) NOT NULL,
	[dat_vencimento] [datetime] NOT NULL,
 CONSTRAINT [PK__ONP_REFERENCIA_PENDENTE__000000000000031E] PRIMARY KEY CLUSTERED 
(
	[seq_matricula] ASC,
	[seq_fatura] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ONP_ROTEIRO]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ONP_ROTEIRO](
	[seq_roteiro] [numeric](18, 0) NOT NULL,
	[seq_grupo_fatura] [numeric](18, 0) NULL,
	[ind_fatura] [varchar](1) NULL,
	[dat_base] [datetime] NULL,
	[cod_referencia] [varchar](8) NULL,
	[dat_servidor] [datetime] NULL,
 CONSTRAINT [PK__ONP_ROTEIRO__0000000000000332] PRIMARY KEY CLUSTERED 
(
	[seq_roteiro] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ONP_SERVICO]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ONP_SERVICO](
	[seq_servico] [numeric](18, 0) NOT NULL,
	[des_servico] [varchar](40) NOT NULL,
	[val_servico] [numeric](11, 3) NOT NULL,
 CONSTRAINT [PK__ONP_SERVICO__0000000000000340] PRIMARY KEY CLUSTERED 
(
	[seq_servico] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ONP_SERVICO_FATURA]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ONP_SERVICO_FATURA](
	[seq_matricula] [numeric](18, 0) NOT NULL,
	[seq_item_servico] [numeric](18, 0) NOT NULL,
	[cod_referencia] [varchar](8) NOT NULL,
	[seq_roteiro] [numeric](18, 0) NOT NULL,
	[des_servico] [varchar](60) NULL,
	[seq_plano] [numeric](18, 0) NULL,
	[seq_parcela] [numeric](18, 0) NULL,
	[val_parcela] [numeric](11, 3) NULL,
	[ind_credito] [varchar](1) NULL,
	[val_diferenca_fatura] [numeric](11, 3) NULL,
 CONSTRAINT [PK__ONP_SERVICO_FATURA__0000000000000359] PRIMARY KEY CLUSTERED 
(
	[seq_matricula] ASC,
	[seq_item_servico] ASC,
	[cod_referencia] ASC,
	[seq_roteiro] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ONP_TABELAS_CARGA]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ONP_TABELAS_CARGA](
	[nom_tabela] [varchar](30) NOT NULL,
	[ind_carga] [varchar](1) NOT NULL,
	[ind_descarga] [varchar](1) NOT NULL,
 CONSTRAINT [PK__ONP_TABELAS_CARGA__0000000000000367] PRIMARY KEY CLUSTERED 
(
	[nom_tabela] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ONP_TAXA]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ONP_TAXA](
	[seq_taxa] [numeric](18, 0) NOT NULL,
	[des_taxa] [varchar](60) NOT NULL,
 CONSTRAINT [PK__ONP_TAXA__0000000000000370] PRIMARY KEY CLUSTERED 
(
	[seq_taxa] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ONP_TAXA_TARIFA]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ONP_TAXA_TARIFA](
	[seq_categoria] [numeric](18, 0) NOT NULL,
	[seq_taxa] [numeric](18, 0) NOT NULL,
	[seq_taxa_tarifa] [numeric](18, 0) NOT NULL,
	[seq_taxa_base] [numeric](18, 0) NULL,
	[dat_inicio] [datetime] NULL,
	[ind_tipo_taxa] [varchar](1) NULL,
	[ind_escalonada] [varchar](1) NULL,
	[ind_dias_consumo] [varchar](1) NULL,
	[ind_minimo] [varchar](1) NULL,
	[ind_proporcional] [varchar](1) NULL,
	[val_valor_tarifa] [numeric](11, 3) NULL,
	[val_percentual] [numeric](5, 2) NULL,
 CONSTRAINT [PK__ONP_TAXA_TARIFA__000000000000038D] PRIMARY KEY CLUSTERED 
(
	[seq_categoria] ASC,
	[seq_taxa] ASC,
	[seq_taxa_tarifa] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ONP_TAXA_TARIFA_FAIXA]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ONP_TAXA_TARIFA_FAIXA](
	[seq_categoria] [numeric](18, 0) NOT NULL,
	[seq_taxa_tarifa] [numeric](18, 0) NOT NULL,
	[seq_taxa] [numeric](18, 0) NOT NULL,
	[seq_taxa_tarifa_faixa] [numeric](18, 0) NOT NULL,
	[val_limite_consumo] [numeric](18, 0) NULL,
	[val_valor_tarifa] [numeric](11, 3) NULL,
 CONSTRAINT [PK__ONP_TAXA_TARIFA_FAIXA__00000000000003A7] PRIMARY KEY CLUSTERED 
(
	[seq_categoria] ASC,
	[seq_taxa_tarifa] ASC,
	[seq_taxa] ASC,
	[seq_taxa_tarifa_faixa] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ONP_TAXA_TARIFA_SCS]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ONP_TAXA_TARIFA_SCS](
	[seq_categoria] [numeric](18, 0) NOT NULL,
	[seq_taxa_tarifa] [numeric](18, 0) NOT NULL,
	[seq_taxa] [numeric](18, 0) NOT NULL,
	[val_minimo] [numeric](11, 3) NULL,
 CONSTRAINT [PK__ONP_TAXA_TARIFA_SCS__00000000000003B7] PRIMARY KEY CLUSTERED 
(
	[seq_categoria] ASC,
	[seq_taxa_tarifa] ASC,
	[seq_taxa] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ONP_TIPO_ENTREGA]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ONP_TIPO_ENTREGA](
	[seq_tipo_entrega] [numeric](18, 0) NOT NULL,
	[des_tipo_entrega] [varchar](30) NOT NULL,
 CONSTRAINT [PK__ONP_TIPO_ENTREGA__00000000000003C0] PRIMARY KEY CLUSTERED 
(
	[seq_tipo_entrega] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ONP_UTILIZACAO_LIGACAO]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ONP_UTILIZACAO_LIGACAO](
	[seq_utilizacao_ligacao] [numeric](18, 0) NOT NULL,
	[des_utilizacao_ligacao] [varchar](60) NULL,
 CONSTRAINT [PK__ONP_UTILIZACAO_LIGACAO__00000000000003C9] PRIMARY KEY CLUSTERED 
(
	[seq_utilizacao_ligacao] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ONP_AGENTE]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ONP_AGENTE](
	[cod_agente] [int] IDENTITY(1,1) NOT NULL,
	[nom_agente] [varchar](40) NOT NULL,
	[des_senha] [varchar](40) NOT NULL,
 CONSTRAINT [PK__ONP_AGENTE__0000000000000008] PRIMARY KEY CLUSTERED 
(
	[cod_agente] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ONP_AVISO_DEBITO]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ONP_AVISO_DEBITO](
	[seq_matricula] [int] IDENTITY(1,1) NOT NULL,
	[dat_emissao] [datetime] NOT NULL,
	[ind_documento] [varchar](1) NULL,
	[ind_pagavel] [varchar](1) NULL,
	[val_quantidade_debito] [numeric](18, 0) NULL,
	[val_impressoes] [numeric](18, 0) NULL,
	[ind_protocolado] [varchar](1) NULL,
	[seq_fatura] [numeric](18, 0) NULL,
 CONSTRAINT [PK__ONP_AVISO_DEBITO__000000000000001D] PRIMARY KEY CLUSTERED 
(
	[seq_matricula] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ONP_CATEGORIA]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ONP_CATEGORIA](
	[seq_categoria] [int] IDENTITY(1,1) NOT NULL,
	[des_categoria] [varchar](30) NOT NULL,
 CONSTRAINT [PK__ONP_CATEGORIA__0000000000000026] PRIMARY KEY CLUSTERED 
(
	[seq_categoria] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ONP_CATEGORIA_DIADEMA]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ONP_CATEGORIA_DIADEMA](
	[seq_categoria] [int] IDENTITY(1,1) NOT NULL,
	[val_minimo] [numeric](5, 2) NULL,
 CONSTRAINT [PK__ONP_CATEGORIA_DIADEMA__000000000000002F] PRIMARY KEY CLUSTERED 
(
	[seq_categoria] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ONP_DESCONTO_DIADEMA]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ONP_DESCONTO_DIADEMA](
	[seq_desconto] [int] IDENTITY(1,1) NOT NULL,
	[ind_tipo_desconto] [varchar](1) NULL,
	[val_limite_inicial] [numeric](18, 0) NULL,
	[val_valor_desconto] [numeric](6, 3) NULL,
 CONSTRAINT [PK__ONP_DESCONTO_DIADEMA__000000000000003C] PRIMARY KEY CLUSTERED 
(
	[seq_desconto] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ONP_FATURA]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ONP_FATURA](
	[seq_fatura] [int] IDENTITY(1,1) NOT NULL,
	[cod_referencia] [varchar](8) NOT NULL,
	[seq_roteiro] [numeric](18, 0) NOT NULL,
	[seq_matricula] [numeric](18, 0) NOT NULL,
	[seq_tipo_entrega] [numeric](18, 0) NULL,
	[cod_hidrometro] [varchar](12) NULL,
	[ind_fatura_emitida] [varchar](1) NULL,
	[dat_vencimento] [datetime] NULL,
	[val_arredonda_anterior] [numeric](3, 2) NULL,
	[val_arredonda_atual] [numeric](3, 2) NULL,
	[dat_hora_emissao] [datetime] NULL,
	[val_valor_faturado] [numeric](11, 3) NULL,
	[dat_leitura] [datetime] NULL,
	[dat_leitura_anterior] [datetime] NULL,
	[ind_entrega_especial] [varchar](1) NULL,
	[des_banco_debito] [varchar](30) NULL,
	[des_banco_agencia_debito] [varchar](20) NULL,
	[val_quantidade_pendente] [numeric](18, 0) NULL,
	[val_consumo_medio] [numeric](18, 0) NULL,
	[val_desconto] [numeric](11, 3) NULL,
	[des_linha_digitavel] [varchar](48) NULL,
	[des_codigo_barras] [varchar](44) NULL,
	[val_consumo_medido] [numeric](18, 0) NULL,
	[val_consumo_atribuido] [numeric](18, 0) NULL,
	[val_consumo_rateado] [numeric](18, 0) NULL,
	[val_leitura_anterior] [numeric](18, 0) NULL,
	[val_leitura_real] [numeric](18, 0) NULL,
	[val_leitura_atribuida] [numeric](18, 0) NULL,
	[val_impressoes] [numeric](18, 0) NULL,
	[dat_proxima_leitura] [datetime] NULL,
	[val_valor_credito] [numeric](11, 3) NULL,
 CONSTRAINT [PK_ONP_FATURA] PRIMARY KEY CLUSTERED 
(
	[seq_fatura] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ONP_FATURA_CATEGORIA]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ONP_FATURA_CATEGORIA](
	[seq_categoria] [int] IDENTITY(1,1) NOT NULL,
	[seq_fatura] [numeric](18, 0) NOT NULL,
	[cod_referencia] [varchar](8) NOT NULL,
	[seq_roteiro] [numeric](18, 0) NOT NULL,
	[seq_matricula] [numeric](18, 0) NOT NULL,
	[val_numero_economia] [numeric](18, 0) NULL,
	[val_valor_faturado] [numeric](11, 3) NULL,
 CONSTRAINT [PK_ONP_FATURA_CATEGORIA] PRIMARY KEY CLUSTERED 
(
	[seq_categoria] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ONP_FATURA_IMPOSTO_DIADEMA]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ONP_FATURA_IMPOSTO_DIADEMA](
	[seq_fatura] [int] IDENTITY(1,1) NOT NULL,
	[cod_referencia] [varchar](8) NOT NULL,
	[seq_roteiro] [numeric](18, 0) NOT NULL,
	[seq_matricula] [numeric](18, 0) NOT NULL,
	[cod_imposto] [varchar](16) NOT NULL,
	[val_valor_calculado] [numeric](11, 3) NULL,
 CONSTRAINT [PK_ONP_FATURA_IMPOSTO_DIADEMA] PRIMARY KEY CLUSTERED 
(
	[seq_fatura] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ONP_FATURA_SERVICO]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ONP_FATURA_SERVICO](
	[seq_fatura] [int] IDENTITY(1,1) NOT NULL,
	[seq_item_servico] [numeric](18, 0) NOT NULL,
	[cod_referencia] [varchar](8) NOT NULL,
	[seq_roteiro] [numeric](18, 0) NOT NULL,
	[seq_matricula] [numeric](18, 0) NOT NULL,
	[des_servico] [varchar](60) NULL,
	[seq_parcela] [numeric](18, 0) NULL,
	[val_parcela] [numeric](11, 3) NULL,
	[ind_credito] [varchar](1) NULL,
 CONSTRAINT [PK_ONP_FATURA_SERVICO] PRIMARY KEY CLUSTERED 
(
	[seq_fatura] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ONP_FATURAS_AVISO]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ONP_FATURAS_AVISO](
	[seq_matricula] [int] NOT NULL,
	[seq_fatura] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[cod_referencia] [varchar](8) NULL,
	[dat_vencimento] [datetime] NULL,
	[val_valor_fatura] [numeric](11, 3) NULL,
 CONSTRAINT [PK_ONP_FATURAS_AVISO] PRIMARY KEY CLUSTERED 
(
	[seq_matricula] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ONP_FATURA_TAXA]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ONP_FATURA_TAXA](
	[seq_taxa] [int] IDENTITY(1,1) NOT NULL,
	[seq_categoria] [numeric](18, 0) NOT NULL,
	[seq_fatura] [numeric](18, 0) NOT NULL,
	[cod_referencia] [varchar](8) NOT NULL,
	[seq_roteiro] [numeric](18, 0) NOT NULL,
	[seq_matricula] [numeric](18, 0) NOT NULL,
	[val_numero_economia] [numeric](18, 0) NULL,
	[val_consumo_faturado] [numeric](18, 0) NULL,
	[val_valor_calculado] [numeric](11, 3) NULL,
	[val_valor_faturado] [numeric](11, 3) NULL,
	[ind_situacao] [varchar](1) NULL,
	[ind_tipo_consumo] [varchar](1) NULL,
 CONSTRAINT [PK_ONP_FATURA_TAXA] PRIMARY KEY CLUSTERED 
(
	[seq_taxa] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ONP_GRUPO_FATURA]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ONP_GRUPO_FATURA](
	[seq_grupo_fatura] [int] IDENTITY(1,1) NOT NULL,
	[ind_tipo_vencimento] [varchar](1) NULL,
	[num_dias] [numeric](18, 0) NULL,
	[des_dias_vencimento] [varchar](256) NULL,
 CONSTRAINT [PK__ONP_GRUPO_FATURA__0000000000000114] PRIMARY KEY CLUSTERED 
(
	[seq_grupo_fatura] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
