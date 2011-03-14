SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ACQ_DEFINICAO_EQUIPE]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ACQ_DEFINICAO_EQUIPE](
	[seq_definicao_equipe] [numeric](7, 0) NOT NULL,
	[seq_unidade_servico] [numeric](3, 0) NOT NULL,
	[dat_formacao] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[seq_unidade_servico] ASC,
	[seq_definicao_equipe] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF, FILLFACTOR = 90) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[dat_formacao] ASC,
	[seq_unidade_servico] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ACQ_ROTEIRO_SETOR_QUADRA]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ACQ_ROTEIRO_SETOR_QUADRA](
	[seq_roteiro] [numeric](12, 0) NOT NULL,
	[cod_uf] [varchar](2) NOT NULL,
	[seq_localidade] [numeric](9, 0) NOT NULL,
	[seq_setor] [numeric](12, 0) NOT NULL,
	[seq_setor_quadra] [numeric](12, 0) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[seq_roteiro] ASC,
	[cod_uf] ASC,
	[seq_localidade] ASC,
	[seq_setor] ASC,
	[seq_setor_quadra] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ACQ_SITUACAO_IMOVEL]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ACQ_SITUACAO_IMOVEL](
	[seq_situacao_imovel] [numeric](3, 0) NOT NULL,
	[des_situacao_imovel] [varchar](30) NULL,
PRIMARY KEY CLUSTERED 
(
	[seq_situacao_imovel] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ACQ_PESSOA]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ACQ_PESSOA](
	[cod_cpf_cnpj] [varchar](15) NULL,
	[seq_pessoa] [numeric](12, 0) NOT NULL,
	[des_nome] [varchar](60) NULL,
	[num_telefone] [varchar](15) NULL,
	[des_email] [varchar](50) NULL,
	[des_rg] [varchar](11) NULL,
	[des_nome_fantasia] [varchar](60) NULL,
	[des_cidade] [varchar](40) NULL,
	[num_ramal] [numeric](4, 0) NULL,
	[des_logradouro] [varchar](60) NULL,
	[des_numero] [numeric](6, 0) NULL,
	[des_uf] [varchar](2) NULL,
	[des_complemento] [varchar](40) NULL,
	[des_bairro] [varchar](40) NULL,
	[des_cep] [varchar](12) NULL,
PRIMARY KEY CLUSTERED 
(
	[seq_pessoa] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ACQ_SERVICO_ATIVIDADE]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ACQ_SERVICO_ATIVIDADE](
	[seq_atividade] [numeric](3, 0) NOT NULL,
	[seq_servico_manutencao] [numeric](7, 0) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[seq_servico_manutencao] ASC,
	[seq_atividade] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ACQ_PADRAO_IMOVEL]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ACQ_PADRAO_IMOVEL](
	[seq_padrao_imovel] [numeric](3, 0) NOT NULL,
	[des_padrao_imovel] [varchar](30) NULL,
PRIMARY KEY CLUSTERED 
(
	[seq_padrao_imovel] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ACQ_DEFINICAO_EQUIPE_FORMACAO]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ACQ_DEFINICAO_EQUIPE_FORMACAO](
	[cod_equipe_servico] [varchar](10) NOT NULL,
	[seq_unidade_servico] [numeric](3, 0) NOT NULL,
	[seq_definicao_equipe] [numeric](7, 0) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[seq_unidade_servico] ASC,
	[cod_equipe_servico] ASC,
	[seq_definicao_equipe] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ACQ_MATRICULA]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ACQ_MATRICULA](
	[seq_matricula] [numeric](12, 0) NOT NULL,
	[seq_pessoa_proprietario] [numeric](12, 0) NULL,
	[seq_pessoa_cobranca] [numeric](12, 0) NULL,
	[seq_pessoa_inquilino] [numeric](12, 0) NULL,
	[cod_uf] [varchar](2) NULL,
	[seq_localidade] [numeric](9, 0) NULL,
	[seq_setor] [numeric](12, 0) NULL,
	[seq_setor_quadra] [numeric](12, 0) NULL,
	[seq_logradouro] [numeric](9, 0) NULL,
	[seq_matricula_principal] [numeric](12, 0) NULL,
	[ind_entrega_especial] [varchar](1) NULL,
	[seq_face_quadra] [numeric](1, 0) NULL,
	[val_numero_imovel] [numeric](5, 0) NULL,
	[des_complemento] [varchar](60) NULL,
	[des_inscricao_imobiliaria] [varchar](30) NULL,
	[val_numero_moradores] [numeric](4, 0) NULL,
	[des_registro_imovel] [varchar](30) NULL,
	[ind_agrupa_fatura] [varchar](1) NULL CONSTRAINT [N1159]  DEFAULT ('N'),
	[val_dia_vencimento] [numeric](2, 0) NULL,
	[seq_rota] [numeric](7, 0) NULL,
	[seq_leitura] [numeric](7, 0) NULL,
 CONSTRAINT [acq_matricula_p] PRIMARY KEY CLUSTERED 
(
	[seq_matricula] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ACQ_ROTEIRO_LOGRADOURO]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ACQ_ROTEIRO_LOGRADOURO](
	[seq_roteiro] [numeric](12, 0) NOT NULL,
	[seq_item] [numeric](3, 0) NOT NULL,
	[cod_uf] [varchar](2) NULL,
	[seq_localidade] [numeric](9, 0) NULL,
	[seq_logradouro] [numeric](9, 0) NULL,
	[num_inicio_roteiro] [numeric](7, 0) NULL,
	[num_fim_roteiro] [numeric](7, 0) NULL,
PRIMARY KEY CLUSTERED 
(
	[seq_roteiro] ASC,
	[seq_item] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ACQ_TIPO_DESPEJO_ESGOTO]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ACQ_TIPO_DESPEJO_ESGOTO](
	[seq_tipo_despejo_esgoto] [numeric](3, 0) NOT NULL,
	[des_tipo_despejo_esgoto] [varchar](30) NULL,
PRIMARY KEY CLUSTERED 
(
	[seq_tipo_despejo_esgoto] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ACQ_UF]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ACQ_UF](
	[cod_uf] [varchar](2) NOT NULL,
	[nom_uf] [varchar](40) NULL,
PRIMARY KEY CLUSTERED 
(
	[cod_uf] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ACQ_SERVICO_EQUIPAMENTO]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ACQ_SERVICO_EQUIPAMENTO](
	[seq_servico_manutencao] [numeric](7, 0) NOT NULL,
	[seq_equipamento] [numeric](7, 0) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[seq_servico_manutencao] ASC,
	[seq_equipamento] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ACQ_DEFINICAO_EQUIPE_PESSOA]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ACQ_DEFINICAO_EQUIPE_PESSOA](
	[ind_lider] [varchar](1) NULL DEFAULT ('N'),
	[seq_unidade_servico] [numeric](3, 0) NOT NULL,
	[seq_definicao_equipe] [numeric](7, 0) NOT NULL,
	[cod_equipe_servico] [varchar](10) NOT NULL,
	[seq_funcionario] [numeric](12, 0) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[seq_unidade_servico] ASC,
	[seq_definicao_equipe] ASC,
	[cod_equipe_servico] ASC,
	[seq_funcionario] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ACQ_MATRICULA_LIGACAO]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ACQ_MATRICULA_LIGACAO](
	[seq_matricula] [numeric](12, 0) NOT NULL,
	[seq_padrao_imovel] [numeric](3, 0) NULL,
	[seq_situacao_imovel] [numeric](3, 0) NULL,
	[seq_tipo_despejo_esgoto] [numeric](3, 0) NULL,
	[seq_tipo_esgotamento] [numeric](3, 0) NULL,
	[seq_material_cavalete] [numeric](3, 0) NULL,
	[seq_diametro_ligacao] [numeric](3, 0) NULL,
	[seq_tipo_ligacao] [numeric](3, 0) NULL,
	[seq_utilizacao_ligacao] [numeric](3, 0) NULL,
	[seq_zona_abastecimento] [numeric](7, 0) NULL,
	[seq_localizacao_hidrometro] [numeric](3, 0) NULL,
	[ind_protecao_hidrometro] [varchar](1) NULL,
	[ind_reservatorio_superior] [varchar](1) NULL CONSTRAINT [N1165]  DEFAULT ('N'),
	[ind_reservatorio_inferior] [varchar](1) NULL CONSTRAINT [N1166]  DEFAULT ('N'),
	[ind_piscina] [varchar](1) NULL CONSTRAINT [N1167]  DEFAULT ('N'),
	[ind_calcada] [varchar](1) NULL CONSTRAINT [N1168]  DEFAULT ('N'),
	[ind_jardim] [varchar](1) NULL CONSTRAINT [N1169]  DEFAULT ('N'),
	[ind_fonte_alternativa] [varchar](1) NULL,
	[val_limite_sobre_consumo] [numeric](7, 0) NULL,
	[ind_consumo_estimado] [varchar](1) NULL,
	[val_consumo_estimado] [numeric](11, 4) NULL,
	[ind_cor_lacre] [varchar](1) NULL,
	[des_numero_lacre] [varchar](15) NULL,
	[ind_lacre_entrada] [varchar](1) NULL,
	[ind_lacre_saida] [varchar](1) NULL,
 CONSTRAINT [acq_matricula_ligacao_p] PRIMARY KEY CLUSTERED 
(
	[seq_matricula] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ACQ_LOCALIDADE]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ACQ_LOCALIDADE](
	[seq_localidade] [numeric](9, 0) NOT NULL,
	[nom_localidade] [varchar](40) NULL,
	[cod_uf] [varchar](2) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[cod_uf] ASC,
	[seq_localidade] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ACQ_LOGRADOURO]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ACQ_LOGRADOURO](
	[seq_logradouro] [numeric](9, 0) NOT NULL,
	[cod_uf] [varchar](2) NOT NULL,
	[seq_localidade] [numeric](9, 0) NOT NULL,
	[des_logradouro] [varchar](60) NULL,
PRIMARY KEY CLUSTERED 
(
	[cod_uf] ASC,
	[seq_localidade] ASC,
	[seq_logradouro] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ACQ_EMPREITEIRA_CONTRATO]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ACQ_EMPREITEIRA_CONTRATO](
	[seq_contrato_empreiteira] [numeric](3, 0) NOT NULL,
	[seq_empreiteira] [numeric](3, 0) NOT NULL,
	[dat_contrato] [datetime] NULL,
	[dat_validade] [datetime] NULL,
	[des_contrato] [varchar](100) NULL,
	[arq_contrato] [binary](1) NULL,
PRIMARY KEY CLUSTERED 
(
	[seq_empreiteira] ASC,
	[seq_contrato_empreiteira] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ACQ_AVISO]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ACQ_AVISO](
	[seq_aviso] [numeric](7, 0) NOT NULL,
	[seq_matricula] [numeric](12, 0) NOT NULL,
	[dat_recebimento_aviso] [datetime] NULL,
	[seq_politica_corte] [numeric](2, 0) NOT NULL,
	[dat_geracao_aviso] [datetime] NULL,
	[val_valor_debito] [numeric](11, 3) NULL,
	[ind_forma_entrega] [varchar](1) NULL,
	[ind_confirma_entrega] [varchar](1) NOT NULL DEFAULT ('N'),
	[seq_fatura] [numeric](11, 0) NULL,
	[seq_processo_corte] [numeric](7, 0) NULL,
	[ind_pagavel] [varchar](2) NULL,
	[val_quantidade_debito] [numeric](4, 0) NULL,
	[ind_documento] [varchar](1) NULL,
PRIMARY KEY CLUSTERED 
(
	[seq_aviso] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ACQ_SETOR]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ACQ_SETOR](
	[seq_setor] [numeric](12, 0) NOT NULL,
	[des_setor] [varchar](40) NULL,
	[cod_uf] [varchar](2) NOT NULL,
	[seq_localidade] [numeric](9, 0) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[cod_uf] ASC,
	[seq_localidade] ASC,
	[seq_setor] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ACQ_SERVICO_MATERIAL]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ACQ_SERVICO_MATERIAL](
	[seq_material] [numeric](7, 0) NOT NULL,
	[seq_servico_manutencao] [numeric](7, 0) NOT NULL,
	[val_quantidade] [numeric](4, 0) NULL,
PRIMARY KEY CLUSTERED 
(
	[seq_servico_manutencao] ASC,
	[seq_material] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ACQ_EMPREITEIRA_SERVICO]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ACQ_EMPREITEIRA_SERVICO](
	[seq_empreiteira] [numeric](3, 0) NOT NULL,
	[seq_servico_manutencao] [numeric](7, 0) NOT NULL,
	[seq_empreiteira_servico] [numeric](5, 0) NOT NULL,
	[val_valor_servico] [numeric](11, 3) NULL,
	[dat_servico] [datetime] NULL,
	[ind_unidade_servico] [varchar](1) NULL,
	[val_percentual_improdutividade] [numeric](5, 2) NULL,
PRIMARY KEY CLUSTERED 
(
	[seq_empreiteira] ASC,
	[seq_servico_manutencao] ASC,
	[seq_empreiteira_servico] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ACQ_SETOR_QUADRA]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ACQ_SETOR_QUADRA](
	[seq_setor_quadra] [numeric](12, 0) NOT NULL,
	[seq_setor] [numeric](12, 0) NOT NULL,
	[cod_uf] [varchar](2) NOT NULL,
	[seq_localidade] [numeric](9, 0) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[cod_uf] ASC,
	[seq_localidade] ASC,
	[seq_setor] ASC,
	[seq_setor_quadra] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ACQ_SERVICO_OCORRENCIA]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ACQ_SERVICO_OCORRENCIA](
	[seq_ocorrencia_atendimento] [numeric](4, 0) NOT NULL,
	[seq_servico_manutencao] [numeric](7, 0) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[seq_ocorrencia_atendimento] ASC,
	[seq_servico_manutencao] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ACQ_EQUIPAMENTO]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ACQ_EQUIPAMENTO](
	[seq_equipamento] [numeric](7, 0) NOT NULL,
	[des_equipamento] [varchar](80) NULL,
PRIMARY KEY CLUSTERED 
(
	[seq_equipamento] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ACQ_EQUIPE_ESCALA]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ACQ_EQUIPE_ESCALA](
	[seq_equipe_escala] [numeric](3, 0) NOT NULL,
	[cod_equipe_servico] [varchar](10) NOT NULL,
	[dat_escala] [datetime] NULL,
	[des_hora_inicial] [varchar](5) NULL,
	[des_hora_final] [varchar](5) NULL,
	[seq_unidade_servico] [numeric](3, 0) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[cod_equipe_servico] ASC,
	[seq_unidade_servico] ASC,
	[seq_equipe_escala] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ACQ_PLANO_FINANCIAMENTO]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ACQ_PLANO_FINANCIAMENTO](
	[cod_plano_financiamento] [numeric](3, 0) NOT NULL,
	[des_descricao] [varchar](60) NULL,
	[val_numero_parcelas] [numeric](3, 0) NULL,
	[val_percentual_juros] [numeric](6, 3) NULL,
	[val_carencia_parcela] [numeric](3, 0) NULL,
	[ind_tipo_carencia] [varchar](1) NULL,
	[val_percentual_avista] [numeric](6, 3) NULL,
	[ind_tipo_entrada] [varchar](1) NULL,
	[ind_tipo_parcela] [varchar](1) NULL,
	[val_desconto] [numeric](6, 3) NULL,
	[ind_condicao_entrega] [varchar](1) NULL,
 CONSTRAINT [acq_plano_financiamento_p] PRIMARY KEY CLUSTERED 
(
	[cod_plano_financiamento] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ACQ_IMPOSTO_DIADEMA]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ACQ_IMPOSTO_DIADEMA](
	[cod_imposto] [varchar](16) NOT NULL,
	[val_porcentagem] [numeric](5, 2) NULL,
 CONSTRAINT [acq_imposto_diadema_p] PRIMARY KEY CLUSTERED 
(
	[cod_imposto] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ACQ_SOLICITACAO_SERVICO_ITEM]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ACQ_SOLICITACAO_SERVICO_ITEM](
	[seq_solicitacao_servico_item] [numeric](4, 0) NOT NULL,
	[seq_solicitacao_servico] [numeric](7, 0) NOT NULL,
	[seq_servico_manutencao] [numeric](7, 0) NULL,
	[dat_prevista_unidade_servico] [datetime] NULL,
	[seq_ordem_servico] [numeric](7, 0) NULL,
	[des_motivo_solicitacao] [varchar](400) NULL,
	[dat_prevista_cliente] [datetime] NULL,
	[ind_status] [varchar](1) NULL,
PRIMARY KEY CLUSTERED 
(
	[seq_solicitacao_servico] ASC,
	[seq_solicitacao_servico_item] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ACQ_EQUIPE_PESSOA]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ACQ_EQUIPE_PESSOA](
	[cod_equipe_servico] [varchar](10) NOT NULL,
	[ind_lider] [varchar](1) NULL DEFAULT ('N'),
	[seq_funcionario] [numeric](12, 0) NOT NULL,
	[seq_unidade_servico] [numeric](3, 0) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[cod_equipe_servico] ASC,
	[seq_unidade_servico] ASC,
	[seq_funcionario] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ACQ_ESTIMATIVA_CATEGORIA]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ACQ_ESTIMATIVA_CATEGORIA](
	[seq_estimativa_faixa] [numeric](3, 0) NOT NULL,
	[seq_categoria] [numeric](3, 0) NOT NULL,
	[val_inicial] [numeric](7, 0) NULL,
	[val_final] [numeric](7, 0) NULL,
	[val_consumo] [numeric](7, 0) NULL,
	[ind_calculo_consumo] [varchar](1) NULL,
PRIMARY KEY CLUSTERED 
(
	[seq_estimativa_faixa] ASC,
	[seq_categoria] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ACQ_FUNCIONARIO]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ACQ_FUNCIONARIO](
	[seq_funcionario] [numeric](12, 0) NOT NULL,
	[ind_ativo] [varchar](1) NULL DEFAULT ('S'),
	[cod_usuario] [varchar](30) NULL,
PRIMARY KEY CLUSTERED 
(
	[seq_funcionario] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ACQ_ROTEIRO]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ACQ_ROTEIRO](
	[seq_grupo_fatura] [numeric](7, 0) NOT NULL,
	[seq_roteiro] [numeric](12, 0) NOT NULL,
	[ind_criterio_roteiro] [varchar](1) NOT NULL,
	[des_observacao] [varchar](60) NULL,
PRIMARY KEY CLUSTERED 
(
	[seq_roteiro] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ACQ_MOVIMENTO_TAXA_SCS]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ACQ_MOVIMENTO_TAXA_SCS](
	[seq_taxa] [numeric](5, 0) NOT NULL,
	[cod_referencia] [varchar](7) NOT NULL,
	[seq_roteiro] [numeric](12, 0) NOT NULL,
	[seq_matricula] [numeric](12, 0) NOT NULL,
	[seq_categoria] [numeric](3, 0) NOT NULL,
	[val_percentual_desconto] [numeric](5, 2) NULL,
 CONSTRAINT [acq_movimento_taxa_scs_p] PRIMARY KEY CLUSTERED 
(
	[seq_taxa] ASC,
	[cod_referencia] ASC,
	[seq_roteiro] ASC,
	[seq_matricula] ASC,
	[seq_categoria] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ACQ_GRUPO_REFERENCIA]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ACQ_GRUPO_REFERENCIA](
	[cod_referencia] [varchar](7) NOT NULL,
	[ind_fatura] [varchar](1) NULL DEFAULT ('S'),
	[seq_roteiro] [numeric](12, 0) NOT NULL,
	[dat_base] [datetime] NOT NULL,
	[seq_grupo_fatura] [numeric](7, 0) NULL,
PRIMARY KEY CLUSTERED 
(
	[seq_roteiro] ASC,
	[cod_referencia] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ACQ_ORDEM_SERVICO_FISCALIZACAO]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ACQ_ORDEM_SERVICO_FISCALIZACAO](
	[seq_fiscalizacao] [numeric](7, 0) NOT NULL,
	[dat_geracao] [datetime] NOT NULL,
	[dat_execucao] [datetime] NULL,
	[dat_baixa] [datetime] NULL,
	[des_resultado] [varchar](200) NULL,
	[seq_funcionario_execucao] [numeric](12, 0) NULL,
	[seq_funcionario_baixa] [numeric](12, 0) NULL,
	[seq_ordem_servico] [numeric](7, 0) NULL,
PRIMARY KEY CLUSTERED 
(
	[seq_fiscalizacao] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ACQ_SERVICO_FATURA_PLANO]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ACQ_SERVICO_FATURA_PLANO](
	[seq_servico_fatura] [numeric](7, 0) NOT NULL,
	[cod_plano_financiamento] [numeric](3, 0) NOT NULL,
 CONSTRAINT [acq_servico_fatura_plano_p] PRIMARY KEY CLUSTERED 
(
	[seq_servico_fatura] ASC,
	[cod_plano_financiamento] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ACQ_FATURA_CATEGORIA]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ACQ_FATURA_CATEGORIA](
	[seq_categoria] [numeric](3, 0) NOT NULL,
	[seq_fatura] [numeric](11, 0) NOT NULL,
	[val_numero_economia] [numeric](3, 0) NULL,
	[val_valor_faturado] [numeric](11, 3) NULL,
PRIMARY KEY CLUSTERED 
(
	[seq_fatura] ASC,
	[seq_categoria] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ACQ_ORIGEM_LIGACAO]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ACQ_ORIGEM_LIGACAO](
	[seq_origem_ligacao] [numeric](3, 0) NOT NULL,
	[des_origem_ligacao] [varchar](60) NULL,
PRIMARY KEY CLUSTERED 
(
	[seq_origem_ligacao] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ACQ_SERVICO_FATURA_VALOR]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ACQ_SERVICO_FATURA_VALOR](
	[seq_servico_fatura] [numeric](7, 0) NOT NULL,
	[seq_servico_fatura_valor] [numeric](3, 0) NOT NULL,
	[val_valor_servico] [numeric](11, 3) NULL,
	[dat_data_servico] [datetime] NULL,
 CONSTRAINT [acq_servico_fatura_valor_p] PRIMARY KEY CLUSTERED 
(
	[seq_servico_fatura] ASC,
	[seq_servico_fatura_valor] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ACQ_ALTERACAO_CADASTRAL]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ACQ_ALTERACAO_CADASTRAL](
	[seq_roteiro] [numeric](12, 0) NOT NULL,
	[cod_referencia] [varchar](7) NOT NULL,
	[seq_matricula] [numeric](12, 0) NOT NULL,
	[ind_dado_alterado] [varchar](2) NOT NULL,
	[seq_item] [numeric](7, 0) NOT NULL,
	[des_conteudo_anterior] [varchar](40) NULL,
	[des_conteudo_novo] [varchar](40) NULL,
	[ind_status] [varchar](1) NULL,
	[dat_hora_processamento] [datetime] NULL,
	[cod_usuario_processamento] [varchar](30) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[seq_roteiro] ASC,
	[cod_referencia] ASC,
	[seq_matricula] ASC,
	[ind_dado_alterado] ASC,
	[seq_item] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ACQ_ZONA_ABASTECIMENTO]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ACQ_ZONA_ABASTECIMENTO](
	[seq_zona_abastecimento] [numeric](7, 0) NOT NULL,
	[des_zona_abastecimento] [varchar](40) NULL,
PRIMARY KEY CLUSTERED 
(
	[seq_zona_abastecimento] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ACQ_CONTROLE_CONTADOR]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ACQ_CONTROLE_CONTADOR](
	[seq_fatura] [numeric](11, 0) NOT NULL,
	[seq_aviso] [numeric](7, 0) NULL
) ON [PRIMARY]
END
GO
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ACQ_MENSAGEM]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ACQ_MENSAGEM](
	[seq_mensagem] [numeric](7, 0) NOT NULL,
	[des_mensagem] [varchar](500) NULL,
PRIMARY KEY CLUSTERED 
(
	[seq_mensagem] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ACQ_QUALIDADE_AGUA]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ACQ_QUALIDADE_AGUA](
	[dat_referencia] [datetime] NOT NULL,
	[seq_parametro] [numeric](3, 0) NOT NULL,
	[des_parametro] [varchar](40) NULL,
	[val_previstas] [numeric](4, 0) NULL,
	[val_realizadas] [numeric](4, 0) NULL,
	[val_fora_limite] [numeric](4, 0) NULL,
	[val_media] [numeric](5, 2) NULL,
	[seq_zona_abastecimento] [numeric](7, 0) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[seq_zona_abastecimento] ASC,
	[dat_referencia] ASC,
	[seq_parametro] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ACQ_TAXA_TARIFA_FAIXA]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ACQ_TAXA_TARIFA_FAIXA](
	[seq_taxa_tarifa_faixa] [numeric](5, 0) NOT NULL,
	[seq_taxa_tarifa] [numeric](9, 0) NOT NULL,
	[seq_taxa] [numeric](5, 0) NOT NULL,
	[val_limite_consumo] [numeric](7, 0) NULL,
	[val_valor_tarifa] [numeric](11, 3) NULL,
	[seq_categoria] [numeric](3, 0) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[seq_taxa] ASC,
	[seq_taxa_tarifa] ASC,
	[seq_categoria] ASC,
	[seq_taxa_tarifa_faixa] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ACQ_MENSAGEM_MOVIMENTO]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ACQ_MENSAGEM_MOVIMENTO](
	[seq_mensagem_movimento] [numeric](7, 0) NOT NULL,
	[des_mensagem_movimento] [varchar](500) NULL,
	[dat_inicio] [datetime] NULL,
	[dat_final] [datetime] NULL,
	[seq_matricula] [numeric](12, 0) NULL,
	[seq_roteiro] [numeric](12, 0) NULL,
	[seq_grupo_fatura] [numeric](7, 0) NULL,
	[seq_tipo_documento] [numeric](3, 0) NULL,
PRIMARY KEY CLUSTERED 
(
	[seq_mensagem_movimento] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ACQ_TAXA]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ACQ_TAXA](
	[seq_taxa] [numeric](5, 0) NOT NULL,
	[des_taxa] [varchar](60) NULL,
PRIMARY KEY CLUSTERED 
(
	[seq_taxa] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ACQ_TIPO_LOGRADOURO]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ACQ_TIPO_LOGRADOURO](
	[seq_tipo_logradouro] [numeric](9, 0) NOT NULL,
	[des_tipo_logradouro] [varchar](20) NULL,
 CONSTRAINT [acq_tipo_logradouro_p] PRIMARY KEY CLUSTERED 
(
	[seq_tipo_logradouro] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ACQ_POLITICA_FISCALIZACAO]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ACQ_POLITICA_FISCALIZACAO](
	[seq_politica_fiscalizacao] [numeric](3, 0) NOT NULL,
	[des_politica_fiscalizacao] [varchar](40) NULL,
	[ind_todos] [varchar](1) NULL DEFAULT ('N'),
	[val_quantidade_total] [numeric](5, 0) NULL,
	[val_quantidade_fiscalizar] [numeric](5, 0) NULL,
PRIMARY KEY CLUSTERED 
(
	[seq_politica_fiscalizacao] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ACQ_CHECKLIST]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ACQ_CHECKLIST](
	[seq_checklist] [numeric](3, 0) NOT NULL,
	[des_checklist] [varchar](40) NULL,
PRIMARY KEY CLUSTERED 
(
	[seq_checklist] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ACQ_TAXA_MATRICULA]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ACQ_TAXA_MATRICULA](
	[seq_taxa] [numeric](5, 0) NOT NULL,
	[seq_matricula] [numeric](12, 0) NOT NULL,
	[seq_categoria] [numeric](3, 0) NOT NULL,
	[val_numero_economia] [numeric](3, 0) NULL,
	[dat_implantacao] [datetime] NULL,
	[ind_situacao] [varchar](1) NULL,
	[dat_eliminacao] [datetime] NULL,
	[ind_motivo_eliminacao] [varchar](1) NULL,
	[dat_corte] [datetime] NULL,
	[ind_motivo_corte] [varchar](1) NULL,
	[des_leitura_corte] [varchar](15) NULL,
	[val_desconto_especial] [numeric](11, 3) NULL,
	[val_consumo_fixo] [numeric](7, 0) NULL,
	[ind_poder_publico] [varchar](1) NULL DEFAULT ('N'),
	[seq_origem_ligacao] [numeric](3, 0) NULL,
PRIMARY KEY CLUSTERED 
(
	[seq_matricula] ASC,
	[seq_categoria] ASC,
	[seq_taxa] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ACQ_CADASTRO_CLIENTE_DIADEMA]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ACQ_CADASTRO_CLIENTE_DIADEMA](
	[seq_cadastro_cliente_diadema] [numeric](7, 0) NOT NULL,
	[val_numero_imovel] [numeric](5, 0) NULL,
	[des_complemento] [varchar](40) NULL,
	[des_nome_cliente] [varchar](40) NULL,
	[cod_hidrometro] [varchar](12) NULL,
	[val_leitura_atual] [numeric](7, 0) NULL,
	[des_observacao] [varchar](100) NULL,
	[cod_uf] [varchar](2) NULL,
	[seq_localidade] [numeric](9, 0) NULL,
	[seq_logradouro] [numeric](9, 0) NULL,
PRIMARY KEY CLUSTERED 
(
	[seq_cadastro_cliente_diadema] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ACQ_CLIENTE_CATEGORIA_DIADEMA]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ACQ_CLIENTE_CATEGORIA_DIADEMA](
	[seq_categoria] [numeric](3, 0) NOT NULL,
	[seq_cadastro_cliente_diadema] [numeric](7, 0) NOT NULL,
	[val_numero_economias] [numeric](3, 0) NULL,
PRIMARY KEY CLUSTERED 
(
	[seq_categoria] ASC,
	[seq_cadastro_cliente_diadema] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ACQ_MATRICULA_SCS]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ACQ_MATRICULA_SCS](
	[seq_matricula] [numeric](12, 0) NOT NULL,
	[ind_lancamento] [varchar](1) NULL,
PRIMARY KEY CLUSTERED 
(
	[seq_matricula] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ACQ_EQUIPE_TIPO_SERVICO]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ACQ_EQUIPE_TIPO_SERVICO](
	[cod_equipe_servico] [varchar](10) NOT NULL,
	[seq_tipo_servico] [numeric](3, 0) NOT NULL,
	[seq_unidade_servico] [numeric](3, 0) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[cod_equipe_servico] ASC,
	[seq_tipo_servico] ASC,
	[seq_unidade_servico] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ACQ_MOTIVO_FALTA]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ACQ_MOTIVO_FALTA](
	[seq_motivo_falta] [numeric](3, 0) NOT NULL,
	[des_motivo_falta] [varchar](40) NULL,
PRIMARY KEY CLUSTERED 
(
	[seq_motivo_falta] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF, FILLFACTOR = 90) ON [PRIMARY]
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
PRIMARY KEY CLUSTERED 
(
	[des_nome] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ACQ_SERVICO_FATURA]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ACQ_SERVICO_FATURA](
	[seq_servico_fatura] [numeric](7, 0) NOT NULL,
	[des_servico_fatura] [varchar](60) NULL,
	[ind_cobranca_servico] [varchar](1) NULL,
	[ind_calculo_valor_servico] [varchar](1) NULL,
	[des_unidade_quantidade] [varchar](10) NULL,
 CONSTRAINT [acq_servico_fatura_p] PRIMARY KEY CLUSTERED 
(
	[seq_servico_fatura] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ACQ_CLASSIFICACAO_ATENDIMENTO]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ACQ_CLASSIFICACAO_ATENDIMENTO](
	[seq_classificacao_atendimento] [numeric](3, 0) NOT NULL,
	[des_classificacao_atendimento] [varchar](40) NULL,
PRIMARY KEY CLUSTERED 
(
	[seq_classificacao_atendimento] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ACQ_TAXA_TARIFA_SCS]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ACQ_TAXA_TARIFA_SCS](
	[seq_taxa] [numeric](5, 0) NOT NULL,
	[seq_categoria] [numeric](3, 0) NOT NULL,
	[seq_taxa_tarifa] [numeric](9, 0) NOT NULL,
	[val_minimo] [numeric](11, 3) NULL,
PRIMARY KEY CLUSTERED 
(
	[seq_taxa] ASC,
	[seq_categoria] ASC,
	[seq_taxa_tarifa] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ACQ_MOTIVO_CANCELAMENTO_OS]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ACQ_MOTIVO_CANCELAMENTO_OS](
	[seq_motivo_cancelamento] [numeric](3, 0) NOT NULL,
	[des_motivo_cancelamento] [varchar](60) NULL,
PRIMARY KEY CLUSTERED 
(
	[seq_motivo_cancelamento] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ACQ_FATURA_TAXA]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ACQ_FATURA_TAXA](
	[seq_fatura] [numeric](11, 0) NOT NULL,
	[seq_categoria] [numeric](3, 0) NOT NULL,
	[seq_taxa] [numeric](5, 0) NOT NULL,
	[val_numero_economia] [numeric](3, 0) NULL,
	[val_consumo_faturado] [numeric](7, 0) NULL,
	[ind_situacao] [varchar](1) NULL,
	[val_valor_faturado] [numeric](11, 3) NULL,
	[ind_tipo_consumo] [varchar](1) NULL,
	[val_valor_calculado] [numeric](11, 3) NULL,
PRIMARY KEY CLUSTERED 
(
	[seq_fatura] ASC,
	[seq_categoria] ASC,
	[seq_taxa] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ACQ_CATEGORIA_OCORRENCIA]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ACQ_CATEGORIA_OCORRENCIA](
	[seq_categoria_ocorrencia] [numeric](4, 0) NOT NULL,
	[des_categoria_ocorrencia] [varchar](40) NULL,
PRIMARY KEY CLUSTERED 
(
	[seq_categoria_ocorrencia] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ACQ_GRANDE_CONSUMIDOR]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ACQ_GRANDE_CONSUMIDOR](
	[seq_grande_consumidor] [numeric](3, 0) NOT NULL,
	[des_grande_consumidor] [varchar](30) NULL,
PRIMARY KEY CLUSTERED 
(
	[seq_grande_consumidor] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ACQ_MATRICULA_DIADEMA]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ACQ_MATRICULA_DIADEMA](
	[seq_matricula] [numeric](12, 0) NOT NULL,
	[seq_desconto] [numeric](3, 0) NULL,
	[ind_corta_ligacao] [varchar](1) NULL,
	[ind_cortou_ligacao] [varchar](1) NULL,
	[ind_retencao_impostos] [varchar](1) NULL,
	[ind_bloqueio] [varchar](1) NULL,
	[val_dias_bloqueio_anterior] [numeric](7, 0) NULL,
	[val_dias_bloqueio_atual] [numeric](7, 0) NULL,
	[ind_cachorro] [varchar](1) NULL,
	[val_fraudes] [numeric](5, 0) NULL,
	[ind_emite_fatura] [varchar](1) NULL,
	[ind_calcula_fatura] [varchar](1) NULL,
	[ind_tipo_consumidor] [varchar](2) NULL,
	[dat_bloqueio] [datetime] NULL,
	[des_mensagem_1] [varchar](30) NULL,
	[des_mensagem_2] [varchar](180) NULL,
 CONSTRAINT [acq_matricula_diadema_p] PRIMARY KEY CLUSTERED 
(
	[seq_matricula] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ACQ_SETOR_DIRETORIA]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ACQ_SETOR_DIRETORIA](
	[seq_setor_diretoria] [numeric](3, 0) NOT NULL,
	[des_setor_diretoria] [varchar](40) NULL,
	[des_sigla] [varchar](4) NULL,
	[cod_uf] [varchar](2) NULL,
	[seq_localidade] [numeric](9, 0) NULL,
PRIMARY KEY CLUSTERED 
(
	[seq_setor_diretoria] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ACQ_UNIDADE_SERVICO_BAIRRO]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ACQ_UNIDADE_SERVICO_BAIRRO](
	[seq_unidade_servico] [numeric](3, 0) NOT NULL,
	[cod_uf] [varchar](2) NOT NULL,
	[seq_localidade] [numeric](9, 0) NOT NULL,
	[seq_bairro] [numeric](9, 0) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[seq_unidade_servico] ASC,
	[cod_uf] ASC,
	[seq_localidade] ASC,
	[seq_bairro] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ACQ_OCORRENCIA_ATENDIMENTO]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ACQ_OCORRENCIA_ATENDIMENTO](
	[seq_ocorrencia_atendimento] [numeric](4, 0) NOT NULL,
	[des_ocorrencia_atendimento] [varchar](30) NULL,
	[seq_categoria_ocorrencia] [numeric](4, 0) NULL,
PRIMARY KEY CLUSTERED 
(
	[seq_ocorrencia_atendimento] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ACQ_GRUPO_CHECKLIST]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ACQ_GRUPO_CHECKLIST](
	[seq_grupo_fatura] [numeric](7, 0) NOT NULL,
	[cod_referencia] [varchar](7) NOT NULL,
	[seq_checklist_item] [numeric](3, 0) NOT NULL,
	[dat_execucao] [datetime] NULL,
	[ind_status] [varchar](1) NULL,
	[cod_usuario_responsavel] [varchar](30) NULL,
	[des_descricao] [varchar](40) NULL,
PRIMARY KEY CLUSTERED 
(
	[seq_grupo_fatura] ASC,
	[cod_referencia] ASC,
	[seq_checklist_item] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ACQ_UNIDADE_SERVICO]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ACQ_UNIDADE_SERVICO](
	[seq_unidade_servico] [numeric](3, 0) NOT NULL,
	[des_unidade_servico] [varchar](40) NULL,
	[des_sigla] [varchar](4) NULL,
	[cod_uf] [varchar](2) NULL,
	[seq_localidade] [numeric](9, 0) NULL,
	[seq_setor_diretoria] [numeric](3, 0) NULL,
	[seq_empreiteira] [numeric](3, 0) NULL,
	[seq_tipo_unidade_servico] [numeric](3, 0) NULL,
	[seq_politica_fiscalizacao] [numeric](3, 0) NULL,
	[des_vetor_fiscalizacao] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[seq_unidade_servico] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ACQ_UNIDADE_SERVICO_LOCALIDADE]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ACQ_UNIDADE_SERVICO_LOCALIDADE](
	[seq_unidade_servico] [numeric](3, 0) NOT NULL,
	[cod_uf] [varchar](2) NOT NULL,
	[seq_localidade] [numeric](9, 0) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[seq_unidade_servico] ASC,
	[cod_uf] ASC,
	[seq_localidade] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ACQ_ATENDIMENTO_OCORRENCIA]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ACQ_ATENDIMENTO_OCORRENCIA](
	[seq_atendimento] [varchar](10) NOT NULL,
	[seq_item] [numeric](3, 0) NOT NULL,
	[seq_ocorrencia_atendimento] [numeric](4, 0) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[seq_atendimento] ASC,
	[seq_item] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ACQ_VEICULO]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ACQ_VEICULO](
	[seq_veiculo] [numeric](4, 0) NOT NULL,
	[des_veiculo] [varchar](40) NULL,
	[seq_unidade_servico] [numeric](3, 0) NULL,
	[val_km_veiculo] [numeric](7, 0) NULL,
	[des_condutor] [varchar](40) NULL,
PRIMARY KEY CLUSTERED 
(
	[seq_veiculo] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ACQ_UNIDADE_SERVICO_SETOR]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ACQ_UNIDADE_SERVICO_SETOR](
	[seq_unidade_servico] [numeric](3, 0) NOT NULL,
	[cod_uf] [varchar](2) NOT NULL,
	[seq_localidade] [numeric](9, 0) NOT NULL,
	[seq_setor] [numeric](12, 0) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[seq_unidade_servico] ASC,
	[cod_uf] ASC,
	[seq_localidade] ASC,
	[seq_setor] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ACQ_GRUPO_FATURA_CRONOGRAMA]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ACQ_GRUPO_FATURA_CRONOGRAMA](
	[dat_leitura_prevista] [datetime] NOT NULL,
	[dat_vencimento] [datetime] NOT NULL,
	[ind_gerado] [varchar](1) NOT NULL DEFAULT ('N'),
	[ind_enviado] [varchar](1) NOT NULL DEFAULT ('N'),
	[ind_obtido] [varchar](1) NOT NULL DEFAULT ('N'),
	[ind_validado] [varchar](1) NOT NULL DEFAULT ('N'),
	[ind_processado] [varchar](1) NOT NULL DEFAULT ('N'),
	[ind_fatura] [varchar](1) NOT NULL DEFAULT ('N'),
	[seq_roteiro] [numeric](12, 0) NOT NULL,
	[cod_referencia] [varchar](7) NOT NULL,
	[ind_encerrado] [char](1) NOT NULL DEFAULT ('N'),
	[cod_agente] [numeric](3, 0) NULL,
PRIMARY KEY CLUSTERED 
(
	[seq_roteiro] ASC,
	[cod_referencia] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ACQ_ATIVIDADE]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ACQ_ATIVIDADE](
	[seq_atividade] [numeric](3, 0) NOT NULL,
	[des_atividade] [varchar](60) NULL,
PRIMARY KEY CLUSTERED 
(
	[seq_atividade] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ACQ_JORNADA_TRABALHO]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ACQ_JORNADA_TRABALHO](
	[seq_jornada_trabalho] [numeric](3, 0) NOT NULL,
	[ind_tipo_horario_segunda] [varchar](2) NULL,
	[des_hora_inicial_segunda] [varchar](5) NULL,
	[des_hora_final_segunda] [varchar](5) NULL,
	[ind_tipo_horario_terca] [varchar](2) NULL,
	[des_hora_inicial_terca] [varchar](5) NULL,
	[des_hora_final_terca] [varchar](5) NULL,
	[ind_tipo_horario_quarta] [varchar](2) NULL,
	[des_hora_inicial_quarta] [varchar](5) NULL,
	[des_hora_final_quarta] [varchar](5) NULL,
	[ind_tipo_horario_quinta] [varchar](2) NULL,
	[des_hora_inicial_quinta] [varchar](5) NULL,
	[des_hora_final_quinta] [varchar](5) NULL,
	[ind_tipo_horario_sexta] [varchar](2) NULL,
	[des_hora_inicial_sexta] [varchar](5) NULL,
	[des_hora_final_sexta] [varchar](5) NULL,
	[ind_tipo_horario_sabado] [varchar](2) NULL,
	[des_hora_inicial_sabado] [varchar](5) NULL,
	[des_hora_final_sabado] [varchar](5) NULL,
	[ind_tipo_horario_domingo] [varchar](2) NULL,
	[des_hora_inicial_domingo] [varchar](5) NULL,
	[des_hora_final_domingo] [varchar](5) NULL,
	[val_tempo_produtivo] [numeric](5, 2) NULL,
	[des_jornada] [varchar](40) NULL,
PRIMARY KEY CLUSTERED 
(
	[seq_jornada_trabalho] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ACQ_WORKFLOW_EXECUCAO_SERVICO]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ACQ_WORKFLOW_EXECUCAO_SERVICO](
	[seq_workflow_execucao_servico] [numeric](3, 0) NOT NULL,
	[seq_servico_manutencao] [numeric](7, 0) NOT NULL,
	[seq_servico_manutencao_workflow] [numeric](7, 0) NULL,
	[ind_tipo_execucao] [varchar](1) NULL,
PRIMARY KEY CLUSTERED 
(
	[seq_servico_manutencao] ASC,
	[seq_workflow_execucao_servico] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ACQ_AVISO_FATURA]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ACQ_AVISO_FATURA](
	[seq_aviso_fatura] [numeric](7, 0) NOT NULL,
	[seq_fatura] [numeric](11, 0) NULL,
	[seq_aviso] [numeric](7, 0) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[seq_aviso] ASC,
	[seq_aviso_fatura] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[acq_matricula_diadema_BAK]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[acq_matricula_diadema_BAK](
	[seq_matricula] [numeric](12, 0) NOT NULL,
	[seq_desconto] [numeric](3, 0) NULL,
	[ind_corta_ligacao] [varchar](1) NULL,
	[ind_cortou_ligacao] [varchar](1) NULL,
	[ind_retencao_impostos] [varchar](1) NULL,
	[ind_bloqueio] [varchar](1) NULL,
	[val_dias_bloqueio_anterior] [numeric](3, 0) NULL,
	[val_dias_bloqueio_atual] [numeric](3, 0) NULL,
	[ind_cachorro] [varchar](1) NULL,
	[val_fraudes] [numeric](5, 0) NULL,
	[ind_emite_fatura] [varchar](1) NULL,
	[ind_calcula_fatura] [varchar](1) NULL,
	[ind_tipo_consumidor] [varchar](2) NULL,
	[dat_bloqueio] [datetime] NULL,
	[des_mensagem_1] [varchar](30) NULL,
	[des_mensagem_2] [varchar](180) NULL
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SIS_LOG_TABELA_COLUNA]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[SIS_LOG_TABELA_COLUNA](
	[des_uuid] [varchar](40) NOT NULL,
	[des_coluna] [varchar](40) NOT NULL,
	[des_valor_anterior] [varchar](255) NOT NULL,
 CONSTRAINT [sis_log_tabela_coluna_p] PRIMARY KEY CLUSTERED 
(
	[des_uuid] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ACQ_MOVIMENTO_OCORRENCIA]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ACQ_MOVIMENTO_OCORRENCIA](
	[cod_ocorrencia] [numeric](3, 0) NOT NULL,
	[cod_referencia] [varchar](7) NOT NULL,
	[seq_roteiro] [numeric](12, 0) NOT NULL,
	[seq_matricula] [numeric](12, 0) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[cod_ocorrencia] ASC,
	[cod_referencia] ASC,
	[seq_roteiro] ASC,
	[seq_matricula] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ACQ_BAIRRO]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ACQ_BAIRRO](
	[cod_uf] [varchar](2) NOT NULL,
	[seq_localidade] [numeric](9, 0) NOT NULL,
	[seq_bairro] [numeric](9, 0) NOT NULL,
	[des_bairro] [varchar](40) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[cod_uf] ASC,
	[seq_localidade] ASC,
	[seq_bairro] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[onp_matricula_diadema_BAK]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[onp_matricula_diadema_BAK](
	[seq_matricula] [numeric](9, 0) NOT NULL,
	[seq_matricula_pai] [numeric](9, 0) NULL,
	[ind_corta_ligacao] [varchar](1) NULL,
	[ind_cortou_ligacao] [varchar](1) NULL,
	[ind_retencao_impostos] [varchar](1) NULL,
	[ind_bloqueio] [varchar](1) NULL,
	[val_dias_bloqueio] [numeric](3, 0) NULL,
	[ind_cachorro] [varchar](1) NULL,
	[val_fraudes] [numeric](5, 0) NULL,
	[ind_emite_fatura] [varchar](1) NULL,
	[ind_calcula_fatura] [varchar](1) NULL,
	[ind_tipo_consumidor] [varchar](2) NULL,
	[val_percentual_desconto] [numeric](5, 2) NULL,
	[val_consumo_desconto] [numeric](7, 0) NULL,
	[ind_tipo_desconto] [varchar](1) NULL
) ON [PRIMARY]
END
GO
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SIS_CONTROLE_CHAVE]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[SIS_CONTROLE_CHAVE](
	[des_tabela] [varchar](30) NOT NULL,
	[des_chave_tabela] [varchar](60) NOT NULL,
	[val_ultimo_numero] [numeric](17, 0) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[des_tabela] ASC,
	[des_chave_tabela] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SIS_LOG_TABELA]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[SIS_LOG_TABELA](
	[des_uuid] [varchar](40) NOT NULL,
	[des_chave] [varchar](255) NOT NULL,
	[des_tabela] [varchar](40) NOT NULL,
	[cod_usuario_acao] [varchar](30) NOT NULL,
	[ind_acao] [varchar](1) NOT NULL,
	[cod_modulo] [varchar](4) NULL,
	[seq_rotina] [numeric](4, 0) NULL,
	[dat_hora_acao] [datetime] NOT NULL,
	[des_localizacao] [varchar](60) NOT NULL,
 CONSTRAINT [sis_log_tabela_p] PRIMARY KEY CLUSTERED 
(
	[des_uuid] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ACQ_ATENDIMENTO]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ACQ_ATENDIMENTO](
	[seq_atendimento] [varchar](10) NOT NULL,
	[dat_hora_inicio] [datetime] NULL,
	[dat_hora_fim] [datetime] NULL,
	[ind_modo_atendimento] [varchar](1) NULL,
	[ind_emitir_protocolo] [varchar](1) NULL DEFAULT ('N'),
	[des_observacao] [varchar](300) NULL,
	[seq_matricula] [numeric](12, 0) NULL,
	[seq_classificacao_atendimento] [numeric](3, 0) NULL,
	[seq_funcionario_atendente] [numeric](12, 0) NULL,
PRIMARY KEY CLUSTERED 
(
	[seq_atendimento] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ACQ_TIPO_MEDIDOR]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ACQ_TIPO_MEDIDOR](
	[seq_tipo_medidor] [numeric](3, 0) NOT NULL,
	[ind_estimativa] [varchar](1) NULL,
	[ind_tipo_calculo_estimativa] [varchar](1) NULL,
	[des_valor_estimativa] [varchar](30) NULL,
	[des_unidade] [varchar](30) NULL,
	[des_tipo_medidor] [varchar](40) NULL,
PRIMARY KEY CLUSTERED 
(
	[seq_tipo_medidor] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ACQ_MOVIMENTACAO_HIDROMETRO]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ACQ_MOVIMENTACAO_HIDROMETRO](
	[seq_movimentacao_hidrometro] [numeric](4, 0) NOT NULL,
	[cod_hidrometro] [varchar](12) NOT NULL,
	[dat_movimentacao] [datetime] NULL,
	[cod_usuario_movimentacao] [varchar](30) NULL,
	[ind_tipo_movimentacao] [varchar](1) NULL,
	[seq_local_hidrometro] [numeric](3, 0) NULL,
PRIMARY KEY CLUSTERED 
(
	[cod_hidrometro] ASC,
	[seq_movimentacao_hidrometro] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ACQ_TIPO_UNIDADE_SERVICO]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ACQ_TIPO_UNIDADE_SERVICO](
	[seq_tipo_unidade_servico] [numeric](3, 0) NOT NULL,
	[des_tipo_unidade_servico] [varchar](40) NULL,
	[val_prioridade] [numeric](2, 0) NULL,
PRIMARY KEY CLUSTERED 
(
	[seq_tipo_unidade_servico] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ACQ_FUNC_UNIDADE_SERVICO]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ACQ_FUNC_UNIDADE_SERVICO](
	[seq_unidade_servico] [numeric](3, 0) NOT NULL,
	[seq_funcionario] [numeric](12, 0) NOT NULL,
	[ind_padrao] [varchar](1) NULL,
PRIMARY KEY CLUSTERED 
(
	[seq_unidade_servico] ASC,
	[seq_funcionario] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ACQ_EMPREITEIRA]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ACQ_EMPREITEIRA](
	[seq_empreiteira] [numeric](3, 0) NOT NULL,
	[des_nome_empreiteira] [varchar](40) NULL,
	[des_endereco] [varchar](60) NULL,
	[des_numero] [varchar](6) NULL,
	[num_telefone] [varchar](15) NULL,
	[des_cidade] [varchar](40) NULL,
	[des_uf] [varchar](2) NULL,
	[des_complemento] [varchar](40) NULL,
	[des_bairro] [varchar](40) NULL,
	[des_cep] [varchar](12) NULL,
	[num_ramal] [numeric](4, 0) NULL,
	[des_email] [varchar](50) NULL,
	[des_cnpj] [varchar](15) NULL,
	[ind_quantidade_servico] [varchar](1) NULL,
	[val_quantidade_servico] [numeric](5, 0) NULL,
PRIMARY KEY CLUSTERED 
(
	[seq_empreiteira] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ACQ_MOVIMENTO_CATEGORIA]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ACQ_MOVIMENTO_CATEGORIA](
	[seq_categoria] [numeric](3, 0) NOT NULL,
	[cod_referencia] [varchar](7) NOT NULL,
	[seq_roteiro] [numeric](12, 0) NOT NULL,
	[seq_matricula] [numeric](12, 0) NOT NULL,
	[val_numero_economia] [numeric](3, 0) NULL,
	[val_valor_faturado] [numeric](11, 3) NULL,
PRIMARY KEY CLUSTERED 
(
	[cod_referencia] ASC,
	[seq_roteiro] ASC,
	[seq_matricula] ASC,
	[seq_categoria] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ACQ_UNIDADE_FUNCAO]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ACQ_UNIDADE_FUNCAO](
	[seq_unidade_servico] [numeric](3, 0) NOT NULL,
	[seq_funcao_unidade_servico] [numeric](3, 0) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[seq_unidade_servico] ASC,
	[seq_funcao_unidade_servico] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ACQ_GRUPO_FATURA]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ACQ_GRUPO_FATURA](
	[seq_grupo_fatura] [numeric](7, 0) NOT NULL,
	[des_grupo_fatura] [varchar](40) NOT NULL,
	[val_periodicidade_leitura] [numeric](3, 0) NOT NULL,
	[val_periodicidade_fatura] [numeric](3, 0) NOT NULL,
	[ind_tipo_vencimento] [varchar](1) NULL,
	[val_quantidade_dias] [numeric](3, 0) NULL,
	[dat_ultimo_vencimento] [datetime] NULL,
	[des_dias_vencimento] [varchar](256) NULL,
	[seq_checklist] [numeric](3, 0) NULL,
	[val_fotos_minima] [numeric](3, 0) NULL,
	[val_fotos_maxima] [numeric](3, 0) NULL,
PRIMARY KEY CLUSTERED 
(
	[seq_grupo_fatura] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ACQ_CARTEIRA_COBRANCA]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ACQ_CARTEIRA_COBRANCA](
	[seq_carteira_cobranca] [numeric](3, 0) NOT NULL,
	[des_carteira_cobranca] [varchar](40) NULL,
	[ind_ativo] [varchar](1) NULL DEFAULT ('S'),
PRIMARY KEY CLUSTERED 
(
	[seq_carteira_cobranca] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SIS_ROTINA]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[SIS_ROTINA](
	[seq_rotina] [numeric](4, 0) NOT NULL,
	[des_rotina] [varchar](30) NOT NULL,
	[des_url] [varchar](60) NOT NULL,
	[des_sigla] [varchar](10) NOT NULL,
	[ind_rotina_cadastro] [varchar](1) NOT NULL DEFAULT ('N'),
PRIMARY KEY CLUSTERED 
(
	[seq_rotina] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ONP_MATRICULA_DIADEMA]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ONP_MATRICULA_DIADEMA](
	[seq_matricula] [numeric](9, 0) NOT NULL,
	[seq_matricula_pai] [numeric](9, 0) NULL,
	[ind_corta_ligacao] [varchar](1) NULL,
	[ind_cortou_ligacao] [varchar](1) NULL,
	[ind_retencao_impostos] [varchar](1) NULL,
	[ind_bloqueio] [varchar](1) NULL,
	[val_dias_bloqueio] [numeric](7, 0) NULL,
	[ind_cachorro] [varchar](1) NULL,
	[val_fraudes] [numeric](5, 0) NULL,
	[ind_emite_fatura] [varchar](1) NULL,
	[ind_calcula_fatura] [varchar](1) NULL,
	[ind_tipo_consumidor] [varchar](2) NULL,
	[val_percentual_desconto] [numeric](5, 2) NULL,
	[val_consumo_desconto] [numeric](7, 0) NULL,
	[ind_tipo_desconto] [varchar](1) NULL,
PRIMARY KEY CLUSTERED 
(
	[seq_matricula] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SIS_LOG_GENERICO]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[SIS_LOG_GENERICO](
	[des_uuid] [varchar](40) NOT NULL,
	[des_parametros] [varchar](18) NULL,
	[cod_usuario_acao] [varchar](30) NOT NULL,
	[des_acao] [varchar](18) NULL,
	[cod_modulo] [varchar](4) NULL,
	[seq_rotina] [numeric](4, 0) NULL,
	[dat_hora_acao] [datetime] NOT NULL,
	[des_localizacao] [varchar](60) NOT NULL,
 CONSTRAINT [sis_log_generico_p] PRIMARY KEY CLUSTERED 
(
	[des_uuid] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ONP_MATRICULAS_CARGA]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ONP_MATRICULAS_CARGA](
	[seq_matricula] [numeric](9, 0) NOT NULL,
	[ind_carga] [varchar](1) NOT NULL,
	[ind_descarga] [varchar](1) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[seq_matricula] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SIS_MODULO_MENU]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[SIS_MODULO_MENU](
	[cod_menu] [varchar](4) NOT NULL,
	[des_descricao] [varchar](30) NULL,
	[cod_modulo] [varchar](4) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[cod_modulo] ASC,
	[cod_menu] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ACQ_OCORRENCIA_MANUTENCAO]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ACQ_OCORRENCIA_MANUTENCAO](
	[seq_ocorrencia_manutencao] [numeric](3, 0) NOT NULL,
	[des_ocorrencia_manutencao] [varchar](40) NULL,
	[ind_tipo_ocorrencia] [varchar](1) NULL,
PRIMARY KEY CLUSTERED 
(
	[seq_ocorrencia_manutencao] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ACQ_LOCAL_HIDROMETRO]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ACQ_LOCAL_HIDROMETRO](
	[seq_local_hidrometro] [numeric](3, 0) NOT NULL,
	[des_local_hidrometro] [varchar](40) NULL,
	[ind_instalacao] [varchar](1) NULL,
PRIMARY KEY CLUSTERED 
(
	[seq_local_hidrometro] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ACQ_FATURA_SERVICO]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ACQ_FATURA_SERVICO](
	[seq_fatura] [numeric](11, 0) NOT NULL,
	[seq_item_servico] [numeric](3, 0) NOT NULL,
	[seq_servico_fatura] [numeric](7, 0) NULL,
	[seq_parcela] [numeric](3, 0) NULL,
	[ind_documento_origem] [varchar](2) NULL,
	[des_documento] [numeric](10, 0) NULL,
	[val_valor_servico] [numeric](11, 3) NULL,
	[seq_matricula_servico_parcela] [numeric](7, 0) NULL,
 CONSTRAINT [acq_fatura_servico_p] PRIMARY KEY CLUSTERED 
(
	[seq_fatura] ASC,
	[seq_item_servico] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ACQ_CAIXA_FLUXO]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ACQ_CAIXA_FLUXO](
	[seq_caixa_fluxo] [numeric](7, 0) NOT NULL,
	[seq_operador] [numeric](3, 0) NULL,
	[seq_caixa] [numeric](3, 0) NULL,
	[dat_hora_abertura] [datetime] NULL,
	[dat_hora_fechamento] [datetime] NULL,
	[val_saldo_atual] [numeric](11, 3) NULL,
	[seq_lote] [numeric](7, 0) NULL,
PRIMARY KEY CLUSTERED 
(
	[seq_caixa_fluxo] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SIS_MODULO_MENU_ITEM]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[SIS_MODULO_MENU_ITEM](
	[cod_menu_item] [varchar](4) NOT NULL,
	[des_descricao] [varchar](30) NULL,
	[des_classe_controle] [char](40) NULL,
	[cod_menu] [varchar](4) NOT NULL,
	[cod_modulo] [varchar](4) NOT NULL,
	[seq_rotina] [numeric](4, 0) NULL,
PRIMARY KEY CLUSTERED 
(
	[cod_modulo] ASC,
	[cod_menu] ASC,
	[cod_menu_item] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ACQ_OCORRENCIA_MANUTENCAO_HD]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ACQ_OCORRENCIA_MANUTENCAO_HD](
	[seq_ocorrencia_manutencao] [numeric](3, 0) NOT NULL,
	[seq_manutencao_hidrometro] [numeric](4, 0) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[seq_ocorrencia_manutencao] ASC,
	[seq_manutencao_hidrometro] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ACQ_LOCALIZACAO_HIDROMETRO]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ACQ_LOCALIZACAO_HIDROMETRO](
	[seq_localizacao_hidrometro] [numeric](3, 0) NOT NULL,
	[des_localizacao_hidrometro] [varchar](30) NULL,
PRIMARY KEY CLUSTERED 
(
	[seq_localizacao_hidrometro] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ACQ_FORMA_PAGAMENTO]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ACQ_FORMA_PAGAMENTO](
	[seq_forma_pagamento] [numeric](3, 0) NOT NULL,
	[des_forma_pagamento] [varchar](40) NULL,
PRIMARY KEY CLUSTERED 
(
	[seq_forma_pagamento] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SIS_PARAMETRO]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[SIS_PARAMETRO](
	[cod_parametro] [varchar](30) NOT NULL,
	[val_parametro] [varchar](30) NULL,
	[ind_tipo_parametro] [varchar](1) NULL,
PRIMARY KEY CLUSTERED 
(
	[cod_parametro] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ACQ_INDICE_CORRECAO]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ACQ_INDICE_CORRECAO](
	[seq_indice_correcao] [numeric](3, 0) NOT NULL,
	[des_indice_correcao] [varchar](40) NULL,
	[ind_tipo_correcao] [varchar](1) NOT NULL,
 CONSTRAINT [acq_indice_correcao_p] PRIMARY KEY CLUSTERED 
(
	[seq_indice_correcao] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ACQ_OCORRENCIA_SERVICO]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ACQ_OCORRENCIA_SERVICO](
	[cod_ocorrencia] [numeric](3, 0) NOT NULL,
	[seq_servico_manutencao] [numeric](7, 0) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[cod_ocorrencia] ASC,
	[seq_servico_manutencao] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ACQ_LOGRADOURO_BAIRRO]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ACQ_LOGRADOURO_BAIRRO](
	[cod_uf] [varchar](2) NOT NULL,
	[seq_localidade] [numeric](9, 0) NOT NULL,
	[seq_bairro] [numeric](9, 0) NOT NULL,
	[seq_logradouro] [numeric](9, 0) NOT NULL,
	[val_numero_inicial] [numeric](5, 0) NULL,
	[val_numero_final] [numeric](5, 0) NULL,
	[ind_tipo_numeracao] [varchar](1) NULL CONSTRAINT [T3]  DEFAULT ('T'),
PRIMARY KEY CLUSTERED 
(
	[cod_uf] ASC,
	[seq_localidade] ASC,
	[seq_bairro] ASC,
	[seq_logradouro] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ACQ_LOTE_ITEM]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ACQ_LOTE_ITEM](
	[seq_lote_item] [numeric](7, 0) NOT NULL,
	[ind_divergente] [varchar](1) NULL,
	[seq_lote] [numeric](7, 0) NOT NULL,
	[val_valor] [numeric](11, 3) NULL,
	[seq_fatura] [numeric](11, 0) NULL,
	[dat_pagamento] [datetime] NULL,
	[ind_forma_arrecadacao] [varchar](1) NULL,
	[dat_credito] [datetime] NULL,
	[des_codigo_barras] [varchar](48) NULL,
	[cod_banco] [numeric](4, 0) NULL,
	[cod_banco_agencia] [numeric](8, 0) NULL,
	[seq_forma_pagamento] [numeric](3, 0) NULL,
PRIMARY KEY CLUSTERED 
(
	[seq_lote] ASC,
	[seq_lote_item] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SIS_USUARIO_UNIDADE]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[SIS_USUARIO_UNIDADE](
	[cod_usuario] [varchar](30) NOT NULL,
	[seq_unidade] [numeric](3, 0) NOT NULL,
	[cod_grupo] [varchar](6) NOT NULL,
	[ind_administrador] [varchar](1) NULL CONSTRAINT [N1170]  DEFAULT ('N'),
PRIMARY KEY CLUSTERED 
(
	[cod_usuario] ASC,
	[seq_unidade] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ACQ_ORDEM_SERVICO_ACAO]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ACQ_ORDEM_SERVICO_ACAO](
	[seq_ordem_servico_acao] [numeric](7, 0) NOT NULL,
	[des_ordem_servico_acao] [varchar](40) NULL,
	[ind_tipo_acao] [varchar](1) NULL,
PRIMARY KEY CLUSTERED 
(
	[seq_ordem_servico_acao] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ACQ_MANUTENCAO_HIDROMETRO]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ACQ_MANUTENCAO_HIDROMETRO](
	[seq_manutencao_hidrometro] [numeric](4, 0) NOT NULL,
	[dat_manutencao] [datetime] NULL,
	[seq_matricula] [numeric](12, 0) NULL,
	[val_leitura_inicial] [numeric](7, 0) NULL,
	[val_leitura_inicial_nominal] [numeric](7, 0) NULL,
	[val_leitura_final_nominal] [numeric](7, 0) NULL,
	[val_volume_escoado_nominal] [numeric](9, 2) NULL,
	[val_leitura_inicial_transicao] [numeric](7, 0) NULL,
	[val_leitura_final_transicao] [numeric](7, 0) NULL,
	[val_volume_escoado_transicao] [numeric](9, 2) NULL,
	[val_leitura_inicial_minima] [numeric](7, 0) NULL,
	[val_leitura_final_minima] [numeric](7, 0) NULL,
	[val_volume_escoado_minima] [numeric](9, 2) NULL,
	[ind_resultado] [varchar](1) NULL,
	[des_observacao] [varchar](500) NULL,
	[des_laudo] [varchar](300) NULL,
	[ind_estado_medidor] [varchar](1) NULL,
	[cod_hidrometro] [varchar](12) NULL,
PRIMARY KEY CLUSTERED 
(
	[seq_manutencao_hidrometro] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ACQ_MATRICULA_CATEGORIA]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ACQ_MATRICULA_CATEGORIA](
	[seq_matricula] [numeric](12, 0) NOT NULL,
	[seq_categoria] [numeric](3, 0) NOT NULL,
	[val_numero_economia] [numeric](3, 0) NULL,
	[val_area_construida] [numeric](7, 2) NULL,
	[val_consumo_estimado] [numeric](11, 4) NULL,
 CONSTRAINT [acq_matricula_categoria_p] PRIMARY KEY CLUSTERED 
(
	[seq_matricula] ASC,
	[seq_categoria] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ACQ_CAIXA_OPERACAO]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ACQ_CAIXA_OPERACAO](
	[seq_caixa_operacao] [numeric](7, 0) NOT NULL,
	[seq_caixa_fluxo] [numeric](7, 0) NOT NULL,
	[ind_tipo_operacao] [varchar](2) NULL,
	[ind_tipo_documento] [varchar](1) NULL,
	[des_documento_origem] [varchar](30) NULL,
	[des_codigo_barras] [varchar](48) NULL,
	[dat_operacao] [datetime] NULL,
	[dat_vencimento] [datetime] NULL,
	[ind_pago_total] [varchar](1) NULL,
	[val_valor_total] [numeric](11, 3) NULL,
	[ind_autenticado] [varchar](1) NULL,
	[cod_referencia] [varchar](7) NULL,
	[seq_lote] [numeric](7, 0) NULL,
	[seq_lote_item] [numeric](7, 0) NULL,
PRIMARY KEY CLUSTERED 
(
	[seq_caixa_operacao] ASC,
	[seq_caixa_fluxo] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ACQ_POLITICA_CORTE]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ACQ_POLITICA_CORTE](
	[seq_politica_corte] [numeric](2, 0) NOT NULL,
	[val_numero_dias] [numeric](3, 0) NULL,
	[ind_confirma_entrega] [varchar](1) NOT NULL DEFAULT ('N'),
	[ind_evento_anterior] [varchar](1) NULL,
	[ind_tipo_evento] [varchar](1) NULL,
	[ind_tipo_corte] [varchar](1) NULL,
	[des_evento] [varchar](30) NULL,
	[seq_servico_religacao] [numeric](7, 0) NULL,
	[seq_servico_corte] [numeric](7, 0) NULL,
	[seq_servico_fiscalizacao] [numeric](7, 0) NULL,
	[ind_pagavel] [varchar](2) NULL,
PRIMARY KEY CLUSTERED 
(
	[seq_politica_corte] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ACQ_MATERIAL]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ACQ_MATERIAL](
	[seq_material] [numeric](7, 0) NOT NULL,
	[des_material] [varchar](80) NULL,
PRIMARY KEY CLUSTERED 
(
	[seq_material] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ACQ_MATRICULA_SERVICO_PARCELA]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ACQ_MATRICULA_SERVICO_PARCELA](
	[seq_matricula] [numeric](12, 0) NOT NULL,
	[seq_matricula_servico_parcela] [numeric](7, 0) NOT NULL,
	[seq_servico_fatura] [numeric](7, 0) NULL,
	[cod_referencia] [varchar](7) NULL,
	[seq_roteiro] [numeric](12, 0) NULL,
	[seq_fatura] [numeric](11, 0) NULL,
	[seq_item_servico_fatura] [numeric](3, 0) NULL,
	[seq_item_servico_movimento] [numeric](3, 0) NULL,
	[seq_parcela] [numeric](3, 0) NULL,
	[ind_documento_origem] [varchar](2) NULL,
	[des_documento] [varchar](15) NULL,
	[dat_vencimento] [datetime] NULL,
	[val_valor_parcela] [numeric](11, 3) NULL,
	[ind_status] [varchar](1) NULL,
	[ind_motivo_cancelamento] [varchar](1) NULL,
 CONSTRAINT [acq_matricula_servico_parcela_p] PRIMARY KEY CLUSTERED 
(
	[seq_matricula] ASC,
	[seq_matricula_servico_parcela] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ACQ_MATERIAL_CAVALETE]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ACQ_MATERIAL_CAVALETE](
	[seq_material_cavalete] [numeric](3, 0) NOT NULL,
	[des_material_cavalete] [varchar](30) NULL,
PRIMARY KEY CLUSTERED 
(
	[seq_material_cavalete] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ACQ_ESPECIE_PAGAMENTO]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ACQ_ESPECIE_PAGAMENTO](
	[seq_especie_pagamento] [numeric](3, 0) NOT NULL,
	[des_especie_pagamento] [varchar](30) NULL,
	[ind_troco] [varchar](1) NULL DEFAULT ('S'),
	[des_nome_documento] [varchar](30) NULL,
PRIMARY KEY CLUSTERED 
(
	[seq_especie_pagamento] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF, FILLFACTOR = 90) ON [PRIMARY]
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
	[seq_roteiro] [numeric](12, 0) NOT NULL,
	[seq_matricula] [numeric](9, 0) NOT NULL,
	[seq_foto] [numeric](3, 0) NOT NULL,
	[arq_foto] [image] NULL,
	[des_caminho] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[cod_referencia] ASC,
	[seq_roteiro] ASC,
	[seq_matricula] ASC,
	[seq_foto] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ACQ_MOVIMENTO_SERVICO]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ACQ_MOVIMENTO_SERVICO](
	[cod_referencia] [varchar](7) NOT NULL,
	[seq_roteiro] [numeric](12, 0) NOT NULL,
	[seq_matricula] [numeric](12, 0) NOT NULL,
	[seq_item_servico] [numeric](3, 0) NOT NULL,
	[seq_parcela] [numeric](3, 0) NULL,
	[ind_documento_origem] [varchar](2) NULL,
	[des_documento] [numeric](10, 0) NULL,
	[val_valor_servico] [numeric](11, 3) NULL,
	[seq_matricula_servico_parcela] [numeric](7, 0) NULL,
 CONSTRAINT [acq_movimento_servico_p] PRIMARY KEY CLUSTERED 
(
	[cod_referencia] ASC,
	[seq_roteiro] ASC,
	[seq_matricula] ASC,
	[seq_item_servico] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ACQ_MATRICULA_DEB_AUTOMATICO]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ACQ_MATRICULA_DEB_AUTOMATICO](
	[seq_matricula_deb_automatico] [numeric](7, 0) NOT NULL,
	[cod_banco] [numeric](4, 0) NULL,
	[cod_banco_agencia] [numeric](8, 0) NULL,
	[seq_matricula] [numeric](12, 0) NOT NULL,
	[dat_opcao_debito] [datetime] NULL,
	[ind_movimento] [varchar](1) NULL,
	[des_conta_corrente] [varchar](14) NULL,
	[seq_convenio] [numeric](7, 0) NULL,
PRIMARY KEY CLUSTERED 
(
	[seq_matricula] ASC,
	[seq_matricula_deb_automatico] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ACQ_CAIXA_MOVIMENTO]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ACQ_CAIXA_MOVIMENTO](
	[seq_caixa_movimento] [numeric](7, 0) NOT NULL,
	[seq_especie_pagamento] [numeric](3, 0) NULL,
	[val_valor] [numeric](11, 3) NULL,
	[seq_caixa_operacao] [numeric](7, 0) NOT NULL,
	[seq_caixa_fluxo] [numeric](7, 0) NOT NULL,
	[des_documento] [varchar](60) NULL,
PRIMARY KEY CLUSTERED 
(
	[seq_caixa_movimento] ASC,
	[seq_caixa_operacao] ASC,
	[seq_caixa_fluxo] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF, FILLFACTOR = 90) ON [PRIMARY]
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
	[seq_fatura] [numeric](7, 0) NOT NULL,
	[seq_item_servico] [numeric](3, 0) NOT NULL,
	[cod_referencia] [varchar](8) NOT NULL,
	[seq_roteiro] [numeric](12, 0) NOT NULL,
	[seq_matricula] [numeric](9, 0) NOT NULL,
	[des_servico] [varchar](60) NULL,
	[seq_parcela] [numeric](3, 0) NULL,
	[val_parcela] [numeric](11, 3) NULL,
	[ind_credito] [varchar](1) NULL,
PRIMARY KEY CLUSTERED 
(
	[seq_fatura] ASC,
	[seq_item_servico] ASC,
	[cod_referencia] ASC,
	[seq_roteiro] ASC,
	[seq_matricula] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ACQ_PROCESSO_CORTE]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ACQ_PROCESSO_CORTE](
	[seq_processo_corte] [numeric](7, 0) NOT NULL,
	[seq_matricula] [numeric](12, 0) NULL,
	[dat_abertura] [datetime] NULL,
	[dat_fechamento] [datetime] NULL,
	[ind_motivo_fechamento] [varchar](1) NULL,
	[seq_politica_corte] [numeric](2, 0) NULL,
PRIMARY KEY CLUSTERED 
(
	[seq_processo_corte] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ACQ_ORDEM_SERVICO_ATIVIDADE]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ACQ_ORDEM_SERVICO_ATIVIDADE](
	[seq_atividade] [numeric](3, 0) NOT NULL,
	[seq_ordem_servico] [numeric](7, 0) NOT NULL,
	[seq_ordem_servico_item] [numeric](7, 0) NOT NULL,
	[des_hora_inicio] [varchar](8) NULL,
	[des_hora_fim] [varchar](8) NULL,
	[des_observacao] [varchar](400) NULL,
PRIMARY KEY CLUSTERED 
(
	[seq_atividade] ASC,
	[seq_ordem_servico] ASC,
	[seq_ordem_servico_item] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ACQ_MOVIMENTO_TAXA]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ACQ_MOVIMENTO_TAXA](
	[seq_taxa] [numeric](5, 0) NOT NULL,
	[cod_referencia] [varchar](7) NOT NULL,
	[seq_roteiro] [numeric](12, 0) NOT NULL,
	[seq_matricula] [numeric](12, 0) NOT NULL,
	[seq_categoria] [numeric](3, 0) NOT NULL,
	[val_numero_economia] [numeric](3, 0) NULL,
	[val_consumo_faturado] [numeric](7, 0) NULL,
	[val_valor_calculado] [numeric](11, 3) NULL,
	[val_consumo_estimado] [numeric](7, 0) NULL,
	[val_valor_faturado] [numeric](11, 3) NULL,
	[ind_situacao] [varchar](1) NULL,
	[val_consumo_fixo] [numeric](7, 0) NULL,
	[ind_tipo_consumo] [varchar](1) NULL,
 CONSTRAINT [acq_movimento_taxa_p] PRIMARY KEY CLUSTERED 
(
	[seq_taxa] ASC,
	[cod_referencia] ASC,
	[seq_roteiro] ASC,
	[seq_matricula] ASC,
	[seq_categoria] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ACQ_CAIXA_SALDO]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ACQ_CAIXA_SALDO](
	[seq_caixa_saldo] [numeric](7, 0) NOT NULL,
	[seq_caixa_fluxo] [numeric](7, 0) NOT NULL,
	[seq_especie_pagamento] [numeric](3, 0) NULL,
	[val_saldo] [numeric](11, 3) NULL,
PRIMARY KEY CLUSTERED 
(
	[seq_caixa_saldo] ASC,
	[seq_caixa_fluxo] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF, FILLFACTOR = 90) ON [PRIMARY]
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
	[seq_matricula] [numeric](9, 0) NOT NULL,
	[dat_emissao] [datetime] NOT NULL,
	[ind_documento] [varchar](1) NULL,
	[ind_pagavel] [varchar](1) NULL,
	[val_quantidade_debito] [numeric](4, 0) NULL,
	[val_impressoes] [numeric](2, 0) NULL,
	[ind_protocolado] [varchar](1) NULL,
PRIMARY KEY CLUSTERED 
(
	[seq_matricula] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ACQ_MATRICULA_ENTREGA]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ACQ_MATRICULA_ENTREGA](
	[seq_matricula] [numeric](12, 0) NOT NULL,
	[des_email] [varchar](40) NULL,
	[des_cidade] [varchar](40) NULL,
	[des_logradouro] [varchar](60) NULL,
	[des_numero] [numeric](6, 0) NULL,
	[des_uf] [varchar](2) NULL,
	[des_complemento] [varchar](40) NULL,
	[des_bairro] [varchar](40) NULL,
	[des_cep] [varchar](12) NULL,
	[ind_postagem] [varchar](1) NULL DEFAULT ('N'),
	[seq_pessoa_orcamentario] [numeric](12, 0) NULL,
	[seq_pessoa_entrega] [numeric](12, 0) NULL,
PRIMARY KEY CLUSTERED 
(
	[seq_matricula] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ACQ_ORDEM_SERVICO_EQUIPAMENTO]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ACQ_ORDEM_SERVICO_EQUIPAMENTO](
	[seq_equipamento] [numeric](7, 0) NOT NULL,
	[seq_ordem_servico] [numeric](7, 0) NOT NULL,
	[seq_ordem_servico_item] [numeric](7, 0) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[seq_equipamento] ASC,
	[seq_ordem_servico] ASC,
	[seq_ordem_servico_item] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ACQ_TIPO_ENTREGA]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ACQ_TIPO_ENTREGA](
	[seq_tipo_entrega] [numeric](3, 0) NOT NULL,
	[des_tipo_entrega] [varchar](30) NULL,
PRIMARY KEY CLUSTERED 
(
	[seq_tipo_entrega] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF, FILLFACTOR = 90) ON [PRIMARY]
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
	[seq_taxa] [numeric](5, 0) NOT NULL,
	[seq_categoria] [numeric](3, 0) NOT NULL,
	[seq_fatura] [numeric](7, 0) NOT NULL,
	[cod_referencia] [varchar](8) NOT NULL,
	[seq_roteiro] [numeric](12, 0) NOT NULL,
	[seq_matricula] [numeric](9, 0) NOT NULL,
	[val_numero_economia] [numeric](3, 0) NULL,
	[val_consumo_faturado] [numeric](7, 0) NULL,
	[val_valor_calculado] [numeric](11, 3) NULL,
	[val_valor_faturado] [numeric](11, 3) NULL,
	[ind_situacao] [varchar](1) NULL,
	[ind_tipo_consumo] [varchar](1) NULL,
PRIMARY KEY CLUSTERED 
(
	[seq_taxa] ASC,
	[seq_categoria] ASC,
	[seq_fatura] ASC,
	[cod_referencia] ASC,
	[seq_roteiro] ASC,
	[seq_matricula] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ACQ_ORDEM_SERVICO_MATERIAL]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ACQ_ORDEM_SERVICO_MATERIAL](
	[val_quantidade] [numeric](4, 0) NULL,
	[seq_material] [numeric](7, 0) NOT NULL,
	[seq_ordem_servico] [numeric](7, 0) NOT NULL,
	[seq_ordem_servico_item] [numeric](7, 0) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[seq_material] ASC,
	[seq_ordem_servico] ASC,
	[seq_ordem_servico_item] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ACQ_CAMPOS_CADASTRO]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ACQ_CAMPOS_CADASTRO](
	[des_nome_atributo] [varchar](30) NOT NULL,
	[des_campo_tabela] [varchar](40) NULL,
	[ind_alterar] [varchar](1) NULL DEFAULT ('N'),
	[ind_obrigatorio] [varchar](1) NULL DEFAULT ('N'),
	[des_nome_tabela] [varchar](40) NOT NULL,
	[des_tabela] [varchar](40) NULL,
PRIMARY KEY CLUSTERED 
(
	[des_nome_tabela] ASC,
	[des_nome_atributo] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ACQ_BANCO]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ACQ_BANCO](
	[cod_banco] [numeric](4, 0) NOT NULL,
	[des_nome] [varchar](40) NULL,
	[des_nome_abreviado] [varchar](20) NULL,
	[des_endereco_telegrafico] [varchar](40) NULL,
	[cod_cnpj] [varchar](15) NULL,
PRIMARY KEY CLUSTERED 
(
	[cod_banco] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF, FILLFACTOR = 90) ON [PRIMARY]
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
	[seq_categoria] [numeric](3, 0) NOT NULL,
	[seq_fatura] [numeric](7, 0) NOT NULL,
	[cod_referencia] [varchar](8) NOT NULL,
	[seq_roteiro] [numeric](12, 0) NOT NULL,
	[seq_matricula] [numeric](9, 0) NOT NULL,
	[val_numero_economia] [numeric](3, 0) NULL,
	[val_valor_faturado] [numeric](11, 3) NULL,
PRIMARY KEY CLUSTERED 
(
	[seq_categoria] ASC,
	[seq_fatura] ASC,
	[cod_referencia] ASC,
	[seq_roteiro] ASC,
	[seq_matricula] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ACQ_TIPO_DOCUMENTO]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ACQ_TIPO_DOCUMENTO](
	[seq_tipo_documento] [numeric](3, 0) NOT NULL,
	[des_tipo_documento] [varchar](30) NULL,
PRIMARY KEY CLUSTERED 
(
	[seq_tipo_documento] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ACQ_BANCO_AGENCIA]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ACQ_BANCO_AGENCIA](
	[cod_banco_agencia] [numeric](8, 0) NOT NULL,
	[cod_banco] [numeric](4, 0) NOT NULL,
	[des_nome] [varchar](40) NULL,
	[des_endereco] [varchar](40) NULL,
	[des_local] [varchar](40) NULL,
PRIMARY KEY CLUSTERED 
(
	[cod_banco] ASC,
	[cod_banco_agencia] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF, FILLFACTOR = 90) ON [PRIMARY]
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
	[seq_fatura] [numeric](7, 0) NOT NULL,
	[cod_referencia] [varchar](8) NOT NULL,
	[seq_roteiro] [numeric](12, 0) NOT NULL,
	[seq_matricula] [numeric](9, 0) NOT NULL,
	[seq_tipo_entrega] [numeric](3, 0) NULL,
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
	[val_quantidade_pendente] [numeric](4, 0) NULL,
	[val_consumo_medio] [numeric](7, 0) NULL,
	[val_desconto] [numeric](11, 3) NULL,
	[des_linha_digitavel] [varchar](48) NULL,
	[des_codigo_barras] [varchar](44) NULL,
	[val_consumo_medido] [numeric](7, 0) NULL,
	[val_consumo_atribuido] [numeric](7, 0) NULL,
	[val_consumo_rateado] [numeric](7, 0) NULL,
	[val_leitura_anterior] [numeric](7, 0) NULL,
	[val_leitura_real] [numeric](7, 0) NULL,
	[val_leitura_atribuida] [numeric](7, 0) NULL,
	[val_impressoes] [numeric](2, 0) NULL,
	[dat_proxima_leitura] [datetime] NULL,
	[val_valor_credito] [numeric](11, 3) NULL,
PRIMARY KEY CLUSTERED 
(
	[seq_fatura] ASC,
	[cod_referencia] ASC,
	[seq_roteiro] ASC,
	[seq_matricula] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ACQ_CAIXA]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ACQ_CAIXA](
	[seq_caixa] [numeric](3, 0) NOT NULL,
	[des_caixa] [varchar](30) NULL,
PRIMARY KEY CLUSTERED 
(
	[seq_caixa] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ACQ_DEBITO_CONVENIO]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ACQ_DEBITO_CONVENIO](
	[seq_convenio] [numeric](7, 0) NOT NULL,
	[des_convenio] [varchar](30) NULL,
	[cod_banco_credito] [numeric](4, 0) NULL,
	[cod_banco_agencia_credito] [numeric](8, 0) NULL,
	[des_diretorio] [varchar](40) NULL,
	[des_conta_corrente] [varchar](14) NULL,
	[ind_tipo_convenio] [varchar](1) NULL,
	[val_dias_credito] [numeric](3, 0) NULL,
	[cod_convenio] [varchar](20) NULL,
	[cod_banco] [numeric](4, 0) NULL,
PRIMARY KEY CLUSTERED 
(
	[seq_convenio] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SIS_HISTORICO_SENHAS]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[SIS_HISTORICO_SENHAS](
	[seq_historico_senha] [numeric](3, 0) NOT NULL,
	[cod_usuario] [varchar](30) NOT NULL,
	[des_senha] [varchar](18) NULL,
	[dat_inicio_uso] [datetime] NULL,
	[dat_final_uso] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[seq_historico_senha] ASC,
	[cod_usuario] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ACQ_INDICE_CORRECAO_VALOR]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ACQ_INDICE_CORRECAO_VALOR](
	[val_valor_indice] [numeric](11, 6) NULL,
	[dat_inicio_vigencia] [datetime] NOT NULL,
	[seq_indice_correcao] [numeric](3, 0) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[dat_inicio_vigencia] ASC,
	[seq_indice_correcao] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ACQ_DEBITO_RETORNO]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ACQ_DEBITO_RETORNO](
	[seq_debito_retorno] [numeric](7, 0) NOT NULL,
	[seq_convenio] [numeric](7, 0) NOT NULL,
	[dat_geracao] [datetime] NULL,
	[ind_status] [varchar](1) NULL,
	[dat_processamento] [datetime] NULL,
	[des_nome_arquivo] [varchar](80) NULL,
	[val_quantidade_registros] [numeric](6, 2) NULL,
	[val_valor_total] [numeric](17, 2) NULL,
PRIMARY KEY CLUSTERED 
(
	[seq_convenio] ASC,
	[seq_debito_retorno] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ACQ_TIPO_SERVICO]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ACQ_TIPO_SERVICO](
	[seq_tipo_servico] [numeric](3, 0) NOT NULL,
	[des_tipo_servico] [varchar](40) NULL,
	[ind_grupo_servico] [varchar](2) NULL,
 CONSTRAINT [acq_tipo_servico_p] PRIMARY KEY CLUSTERED 
(
	[seq_tipo_servico] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ACQ_LAYOUT_ORDEM_SERVICO]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ACQ_LAYOUT_ORDEM_SERVICO](
	[seq_layout_ordem_servico] [numeric](3, 0) NOT NULL,
	[des_layout_ordem_servico] [varchar](40) NULL,
PRIMARY KEY CLUSTERED 
(
	[seq_layout_ordem_servico] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ACQ_NEGOCIACAO_FATURA]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ACQ_NEGOCIACAO_FATURA](
	[seq_negociacao_fatura] [numeric](7, 0) NOT NULL,
	[seq_negociacao] [numeric](7, 0) NOT NULL,
	[seq_fatura] [numeric](11, 0) NULL,
PRIMARY KEY CLUSTERED 
(
	[seq_negociacao] ASC,
	[seq_negociacao_fatura] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ACQ_AREA_ATUACAO]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ACQ_AREA_ATUACAO](
	[seq_area_atuacao] [numeric](3, 0) NOT NULL,
	[des_area_atuacao] [varchar](40) NULL,
	[ind_estimativa] [varchar](1) NULL,
	[ind_tipo_calculo_estimativa] [varchar](1) NULL,
	[des_valor_estimativa] [varchar](30) NULL,
	[des_unidade_estimativa] [varchar](30) NULL,
 CONSTRAINT [acq_area_atuacao_p] PRIMARY KEY CLUSTERED 
(
	[seq_area_atuacao] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ACQ_BOLETO_BANCARIO]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ACQ_BOLETO_BANCARIO](
	[seq_boleto_bancario] [numeric](9, 0) NOT NULL,
	[des_documento_origem] [varchar](15) NULL,
	[ind_tipo_documento] [varchar](1) NULL,
	[val_parcela_documento] [numeric](3, 0) NULL,
	[seq_carteira_cobranca] [numeric](3, 0) NULL,
	[dat_vencimento] [datetime] NULL,
	[val_valor] [numeric](11, 3) NULL,
	[seq_pessoa_sacado] [numeric](12, 0) NULL,
PRIMARY KEY CLUSTERED 
(
	[seq_boleto_bancario] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ACQ_EQUIPE_SERVICO]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ACQ_EQUIPE_SERVICO](
	[cod_equipe_servico] [varchar](10) NOT NULL,
	[seq_unidade_servico] [numeric](3, 0) NOT NULL,
	[seq_jornada_trabalho] [numeric](3, 0) NULL,
	[val_numero_elementos] [numeric](2, 0) NULL,
PRIMARY KEY CLUSTERED 
(
	[seq_unidade_servico] ASC,
	[cod_equipe_servico] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SIS_GRUPO_ROTINA]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[SIS_GRUPO_ROTINA](
	[cod_grupo] [varchar](6) NOT NULL,
	[ind_gravar] [varchar](1) NOT NULL DEFAULT ('N'),
	[ind_excluir] [varchar](1) NOT NULL DEFAULT ('N'),
	[seq_rotina] [numeric](4, 0) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[cod_grupo] ASC,
	[seq_rotina] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ACQ_LOTE]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ACQ_LOTE](
	[seq_lote] [numeric](7, 0) NOT NULL,
	[dat_geracao] [datetime] NULL,
	[val_valor_arrecadado] [numeric](11, 3) NULL,
	[ind_divergente] [varchar](1) NULL,
	[val_quantidade_documentos] [numeric](7, 0) NULL,
	[ind_status_lote] [varchar](1) NULL,
	[seq_convenio] [numeric](7, 0) NULL,
	[seq_debito_retorno] [numeric](7, 0) NULL,
PRIMARY KEY CLUSTERED 
(
	[seq_lote] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ACQ_LAYOUT_ITEM]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ACQ_LAYOUT_ITEM](
	[seq_layout_ordem_servico] [numeric](3, 0) NOT NULL,
	[ind_layout_grupo] [varchar](2) NOT NULL,
	[ind_layout_item] [varchar](4) NOT NULL,
	[ind_imprime] [varchar](1) NULL DEFAULT ('S'),
PRIMARY KEY CLUSTERED 
(
	[seq_layout_ordem_servico] ASC,
	[ind_layout_grupo] ASC,
	[ind_layout_item] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ACQ_NEGOCIACAO_PARCELA]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ACQ_NEGOCIACAO_PARCELA](
	[seq_negociacao_parcela] [numeric](7, 0) NOT NULL,
	[seq_negociacao] [numeric](7, 0) NOT NULL,
	[val_numero_parcela] [numeric](3, 0) NULL,
	[des_documento] [varchar](10) NULL,
	[val_valor_parcela] [numeric](11, 3) NULL,
	[ind_tipo_parcela] [varchar](1) NULL,
	[dat_vencimento] [datetime] NULL,
	[ind_temporada] [varchar](1) NULL DEFAULT ('N'),
	[seq_matricula_pagamento] [numeric](12, 0) NULL,
PRIMARY KEY CLUSTERED 
(
	[seq_negociacao] ASC,
	[seq_negociacao_parcela] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ACQ_CAIXA_OPERADOR]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ACQ_CAIXA_OPERADOR](
	[cod_usuario] [varchar](30) NULL,
	[seq_operador] [numeric](3, 0) NOT NULL,
	[ind_ativo] [varchar](1) NULL DEFAULT ('S'),
PRIMARY KEY CLUSTERED 
(
	[seq_operador] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SIS_MODULO]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[SIS_MODULO](
	[cod_modulo] [varchar](4) NOT NULL,
	[des_modulo] [varchar](30) NOT NULL,
	[des_sigla] [varchar](10) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[cod_modulo] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ACQ_MOTIVO_BAIXA]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ACQ_MOTIVO_BAIXA](
	[seq_motivo_baixa] [numeric](3, 0) NOT NULL,
	[des_motivo_baixa] [varchar](40) NULL,
PRIMARY KEY CLUSTERED 
(
	[seq_motivo_baixa] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF, FILLFACTOR = 90) ON [PRIMARY]
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
	[seq_matricula] [numeric](9, 0) NOT NULL,
	[ind_dado_alterado] [varchar](2) NOT NULL,
	[seq_item] [numeric](3, 0) NOT NULL,
	[des_conteudo_anterior] [varchar](40) NOT NULL,
	[des_conteudo_novo] [varchar](40) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[seq_matricula] ASC,
	[ind_dado_alterado] ASC,
	[seq_item] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ACQ_MATRICULA_ESPECIAL]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ACQ_MATRICULA_ESPECIAL](
	[seq_matricula] [numeric](12, 0) NOT NULL,
	[ind_ligacao_vip] [varchar](1) NULL DEFAULT ('N'),
	[ind_ligacao_suspeita] [varchar](1) NULL DEFAULT ('N'),
	[ind_ligacao_clandestina] [varchar](1) NULL DEFAULT ('N'),
	[ind_processo_judicial] [varchar](1) NULL DEFAULT ('N'),
	[dat_processo_judicial] [datetime] NULL,
	[ind_categoria_pagamento] [varchar](1) NULL,
	[cod_subsidio] [numeric](3, 0) NULL,
	[seq_grande_consumidor] [numeric](3, 0) NULL,
	[ind_nivel_contaminacao] [varchar](1) NULL,
	[seq_tipo_documento] [numeric](3, 0) NULL,
PRIMARY KEY CLUSTERED 
(
	[seq_matricula] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ACQ_OCORRENCIA]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ACQ_OCORRENCIA](
	[cod_ocorrencia] [numeric](3, 0) NOT NULL,
	[des_ocorrencia] [varchar](40) NULL,
	[des_mensagem] [varchar](40) NULL,
	[des_sigla_ocorrencia] [varchar](10) NULL,
	[ind_grupo] [varchar](1) NULL,
	[ind_leitura] [varchar](1) NULL,
	[ind_consumo] [varchar](2) NULL,
	[ind_emite] [varchar](1) NULL CONSTRAINT [S152]  DEFAULT ('S'),
	[ind_ativo] [varchar](1) NULL CONSTRAINT [S153]  DEFAULT ('S'),
 CONSTRAINT [acq_ocorrencia_p] PRIMARY KEY CLUSTERED 
(
	[cod_ocorrencia] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ACQ_CATEGORIA]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ACQ_CATEGORIA](
	[seq_categoria] [numeric](3, 0) NOT NULL,
	[des_categoria] [varchar](30) NULL,
	[des_reduzida] [varchar](2) NULL,
PRIMARY KEY CLUSTERED 
(
	[seq_categoria] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ACQ_MARCA_HIDROMETRO]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ACQ_MARCA_HIDROMETRO](
	[cod_marca] [varchar](3) NOT NULL,
	[des_marca] [varchar](40) NULL,
PRIMARY KEY CLUSTERED 
(
	[cod_marca] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF, FILLFACTOR = 90) ON [PRIMARY]
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
	[seq_taxa] [numeric](5, 0) NOT NULL,
	[cod_referencia] [varchar](8) NOT NULL,
	[seq_matricula] [numeric](9, 0) NOT NULL,
	[seq_categoria] [numeric](3, 0) NOT NULL,
	[seq_roteiro] [numeric](12, 0) NOT NULL,
	[val_economias] [numeric](3, 0) NULL,
	[val_consumo_fixo] [numeric](7, 0) NULL,
	[val_consumo_estimado] [numeric](7, 0) NULL,
	[ind_situacao] [varchar](1) NULL,
PRIMARY KEY CLUSTERED 
(
	[seq_taxa] ASC,
	[cod_referencia] ASC,
	[seq_matricula] ASC,
	[seq_categoria] ASC,
	[seq_roteiro] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ACQ_CEP]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ACQ_CEP](
	[cod_cep] [varchar](12) NOT NULL,
	[ind_tipo_cep] [varchar](1) NOT NULL,
	[seq_registro] [varchar](30) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[cod_cep] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ACQ_MODELO_HIDROMETRO]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ACQ_MODELO_HIDROMETRO](
	[cod_modelo_hidrometro] [varchar](15) NOT NULL,
	[des_modelo_hidrometro] [varchar](40) NULL,
	[cod_marca] [varchar](3) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[cod_marca] ASC,
	[cod_modelo_hidrometro] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF, FILLFACTOR = 90) ON [PRIMARY]
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
	[seq_roteiro] [numeric](12, 0) NOT NULL,
	[seq_matricula] [numeric](9, 0) NOT NULL,
	[seq_categoria] [numeric](3, 0) NOT NULL,
	[val_numero_economia] [numeric](3, 0) NULL,
	[val_valor_faturado] [numeric](11, 3) NULL,
PRIMARY KEY CLUSTERED 
(
	[cod_referencia] ASC,
	[seq_roteiro] ASC,
	[seq_matricula] ASC,
	[seq_categoria] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ACQ_COMPOSICAO_NUMERO_MEDIDOR]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ACQ_COMPOSICAO_NUMERO_MEDIDOR](
	[seq_composicao_numero_medidor] [numeric](3, 0) NOT NULL,
	[des_composicao_numero_medidor] [varchar](40) NULL,
PRIMARY KEY CLUSTERED 
(
	[seq_composicao_numero_medidor] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
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
	[seq_matricula] [numeric](9, 0) NOT NULL,
	[cod_ocorrencia] [numeric](3, 0) NOT NULL,
	[seq_roteiro] [numeric](12, 0) NOT NULL,
	[seq_sequencial] [numeric](2, 0) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[cod_referencia] ASC,
	[seq_matricula] ASC,
	[cod_ocorrencia] ASC,
	[seq_roteiro] ASC,
	[seq_sequencial] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ACQ_PARAMETRO_RETENCAO]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ACQ_PARAMETRO_RETENCAO](
	[ind_retencao] [varchar](1) NOT NULL,
	[seq_faixa] [numeric](3, 0) NOT NULL,
	[val_media_inicial] [numeric](7, 0) NULL,
	[val_media_final] [numeric](7, 0) NULL,
	[val_variacao_aviso] [numeric](11, 3) NULL,
	[val_variacao_retencao] [numeric](11, 3) NULL,
	[ind_unidade_variacao] [varchar](1) NULL,
PRIMARY KEY CLUSTERED 
(
	[ind_retencao] ASC,
	[seq_faixa] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ACQ_CHECKLIST_ITEM]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ACQ_CHECKLIST_ITEM](
	[seq_checklist_item] [numeric](3, 0) NOT NULL,
	[des_descricao] [varchar](40) NULL,
	[ind_obrigatorio] [varchar](1) NULL DEFAULT ('S'),
	[seq_checklist] [numeric](3, 0) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[seq_checklist] ASC,
	[seq_checklist_item] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ACQ_CAPACIDADE_HIDROMETRO]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ACQ_CAPACIDADE_HIDROMETRO](
	[seq_capacidade_hidrometro] [numeric](3, 0) NOT NULL,
	[des_capacidade_hidrometro] [varchar](40) NULL,
PRIMARY KEY CLUSTERED 
(
	[seq_capacidade_hidrometro] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF, FILLFACTOR = 90) ON [PRIMARY]
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
	[seq_roteiro] [numeric](12, 0) NOT NULL,
	[seq_matricula] [numeric](9, 0) NOT NULL,
	[cod_agente] [numeric](7, 0) NOT NULL,
	[cod_hidrometro] [varchar](12) NULL,
	[seq_tipo_entrega] [numeric](3, 0) NULL,
	[val_leitura_anterior] [numeric](7, 0) NULL,
	[val_leitura_real] [numeric](7, 0) NULL,
	[val_leitura_atribuida] [numeric](7, 0) NULL,
	[val_numero_leituras] [numeric](5, 0) NULL,
	[ind_leitura_divergente] [varchar](1) NULL,
	[val_consumo_medido] [numeric](7, 0) NULL,
	[val_consumo_medio] [numeric](7, 0) NULL,
	[val_consumo_atribuido] [numeric](7, 0) NULL,
	[val_consumo_troca] [numeric](7, 0) NULL,
	[val_consumo_rateado] [numeric](7, 0) NULL,
	[des_banco_debito] [varchar](30) NULL,
	[des_banco_agencia_debito] [varchar](20) NULL,
	[dat_leitura] [datetime] NULL,
	[dat_proxima_leitura] [datetime] NULL,
	[dat_vencimento] [datetime] NULL,
	[dat_leitura_anterior] [datetime] NULL,
	[ind_entrega_especial] [varchar](1) NULL,
	[val_quantidade_pendente] [numeric](4, 0) NULL,
	[val_desconto] [numeric](11, 3) NULL,
	[ind_motivo_retirada] [varchar](1) NULL,
	[dat_troca] [datetime] NULL,
	[ind_situacao_movimento] [varchar](1) NULL,
	[ind_fatura_emitida] [varchar](1) NULL,
	[val_arredonda_anterior] [numeric](3, 2) NULL,
	[val_impressoes] [numeric](2, 0) NULL,
PRIMARY KEY CLUSTERED 
(
	[cod_referencia] ASC,
	[seq_roteiro] ASC,
	[seq_matricula] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ACQ_DIAMETRO_LIGACAO]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ACQ_DIAMETRO_LIGACAO](
	[seq_diametro_ligacao] [numeric](3, 0) NOT NULL,
	[des_diametro_ligacao] [varchar](30) NULL,
	[val_consumo_estimado] [numeric](7, 0) NULL,
PRIMARY KEY CLUSTERED 
(
	[seq_diametro_ligacao] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF, FILLFACTOR = 90) ON [PRIMARY]
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
	[seq_item] [numeric](2, 0) NOT NULL,
	[seq_matricula] [numeric](9, 0) NOT NULL,
	[seq_servico] [numeric](4, 0) NULL,
	[ind_solicitante] [varchar](1) NULL,
PRIMARY KEY CLUSTERED 
(
	[seq_item] ASC,
	[seq_matricula] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ACQ_COMPOSICAO_NUMERO_CAMPO]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ACQ_COMPOSICAO_NUMERO_CAMPO](
	[seq_composicao_numero_campo] [numeric](3, 0) NOT NULL,
	[des_campo] [varchar](40) NULL,
	[val_posicao_inicial] [numeric](3, 0) NULL,
	[val_posicao_final] [numeric](3, 0) NULL,
	[ind_tipo] [varchar](1) NULL,
	[seq_composicao_numero_medidor] [numeric](3, 0) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[seq_composicao_numero_medidor] ASC,
	[seq_composicao_numero_campo] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ACQ_TAMANHO_HIDROMETRO]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ACQ_TAMANHO_HIDROMETRO](
	[seq_tamanho_hidrometro] [numeric](3, 0) NOT NULL,
	[des_tamanho_hidrometro] [varchar](30) NULL,
PRIMARY KEY CLUSTERED 
(
	[seq_tamanho_hidrometro] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF, FILLFACTOR = 90) ON [PRIMARY]
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
	[seq_fatura] [numeric](7, 0) NOT NULL,
	[cod_referencia] [varchar](8) NOT NULL,
	[seq_roteiro] [numeric](12, 0) NOT NULL,
	[seq_matricula] [numeric](9, 0) NOT NULL,
	[cod_imposto] [varchar](16) NOT NULL,
	[val_valor_calculado] [numeric](11, 3) NULL,
PRIMARY KEY CLUSTERED 
(
	[seq_fatura] ASC,
	[cod_referencia] ASC,
	[seq_roteiro] ASC,
	[seq_matricula] ASC,
	[cod_imposto] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ACQ_MATRICULA_HIDROMETRO]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ACQ_MATRICULA_HIDROMETRO](
	[seq_matricula] [numeric](12, 0) NOT NULL,
	[dat_instalacao] [datetime] NULL,
	[val_leitura_instalacao] [numeric](7, 0) NULL,
	[dat_encerramento] [datetime] NULL,
	[val_leitura_encerramento] [numeric](7, 0) NULL,
	[seq_matricula_hidrometro] [numeric](3, 0) NOT NULL,
	[cod_hidrometro] [varchar](12) NULL,
	[ind_motivo_retirada] [varchar](1) NULL,
	[ind_estado_retirada] [varchar](1) NULL,
	[dat_retirada] [datetime] NULL,
	[val_leitura_retirada] [numeric](7, 0) NULL,
PRIMARY KEY CLUSTERED 
(
	[seq_matricula] ASC,
	[seq_matricula_hidrometro] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ACQ_CONTA_CORRENTE]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ACQ_CONTA_CORRENTE](
	[seq_conta_corrente] [numeric](7, 0) NOT NULL,
	[ind_origem_movimento] [varchar](2) NULL,
	[ind_tipo_documento] [varchar](2) NULL,
	[des_numero_documento] [varchar](15) NULL,
	[val_valor] [numeric](11, 3) NULL,
	[dat_movimento] [datetime] NULL,
	[seq_matricula] [numeric](12, 0) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[seq_conta_corrente] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ACQ_HIDROMETRO]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ACQ_HIDROMETRO](
	[cod_hidrometro] [varchar](12) NOT NULL,
	[val_numero_digitos] [numeric](3, 0) NULL,
	[dat_fabricacao] [datetime] NULL,
	[des_classe] [varchar](30) NULL,
	[seq_tamanho_hidrometro] [numeric](3, 0) NULL,
	[ind_tipo_hidrometro] [varchar](1) NULL,
	[dat_aquisicao] [datetime] NULL,
	[seq_diametro_ligacao] [numeric](3, 0) NULL,
	[seq_capacidade_hidrometro] [numeric](3, 0) NULL,
	[ind_status] [varchar](1) NULL,
	[dat_desuso] [datetime] NULL,
	[seq_composicao_numero_medidor] [numeric](3, 0) NULL,
	[cod_marca] [varchar](3) NULL,
	[cod_modelo_hidrometro] [varchar](15) NULL,
	[seq_motivo_baixa] [numeric](3, 0) NULL,
	[ind_transmissao] [varchar](1) NULL,
	[val_vida_util] [numeric](3, 0) NULL,
	[val_periodicidade_afericao] [numeric](3, 0) NULL,
PRIMARY KEY CLUSTERED 
(
	[cod_hidrometro] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ACQ_DESCONTO_DIADEMA]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ACQ_DESCONTO_DIADEMA](
	[seq_desconto] [numeric](3, 0) NOT NULL,
	[ind_tipo_desconto] [varchar](1) NULL,
	[val_limite_inicial] [numeric](7, 0) NULL,
	[val_valor_desconto] [numeric](5, 2) NULL,
 CONSTRAINT [acq_desconto_diadema_p] PRIMARY KEY CLUSTERED 
(
	[seq_desconto] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SIS_POLITICA_SENHA]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[SIS_POLITICA_SENHA](
	[seq_politica] [numeric](3, 0) NOT NULL,
	[val_vida_util] [numeric](4, 0) NULL,
	[val_tamanho_minimo] [numeric](4, 0) NULL,
	[val_tamanho_maximo] [numeric](4, 0) NULL,
	[ind_letras_numeros] [varchar](1) NULL DEFAULT ('N'),
	[val_caracter_especial] [numeric](4, 0) NULL,
	[ind_senha_arbitraria] [varchar](1) NULL DEFAULT ('N'),
	[val_historico_senha] [numeric](4, 0) NULL,
	[val_intervalo_senha] [numeric](4, 0) NULL,
	[des_descricao] [varchar](60) NULL,
PRIMARY KEY CLUSTERED 
(
	[seq_politica] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ACQ_MATRICULA_HISTORICO]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ACQ_MATRICULA_HISTORICO](
	[seq_historico] [numeric](7, 0) NOT NULL,
	[seq_matricula] [numeric](12, 0) NOT NULL,
	[ind_ocorrencia] [varchar](3) NULL,
	[dat_abertura] [datetime] NULL,
	[dat_encerramento] [datetime] NULL,
	[des_descricao] [varchar](40) NULL,
	[des_resumo] [varchar](40) NULL,
PRIMARY KEY CLUSTERED 
(
	[seq_historico] ASC,
	[seq_matricula] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ACQ_DEBITO_REMESSA]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ACQ_DEBITO_REMESSA](
	[seq_debito_remessa] [numeric](7, 0) NOT NULL,
	[seq_convenio] [numeric](7, 0) NOT NULL,
	[ind_status] [varchar](1) NULL,
	[dat_geracao] [datetime] NULL,
	[dat_processamento] [datetime] NULL,
	[val_versao_layout] [numeric](2, 0) NULL,
PRIMARY KEY CLUSTERED 
(
	[seq_convenio] ASC,
	[seq_debito_remessa] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ACQ_AGENTE]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ACQ_AGENTE](
	[cod_agente] [numeric](3, 0) NOT NULL,
	[nom_agente] [varchar](60) NULL,
	[des_senha] [varchar](15) NULL,
	[ind_ativo] [varchar](1) NULL DEFAULT ('S'),
PRIMARY KEY CLUSTERED 
(
	[cod_agente] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ACQ_MATRICULA_LEITURAS]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ACQ_MATRICULA_LEITURAS](
	[dat_leitura] [datetime] NOT NULL,
	[seq_matricula] [numeric](12, 0) NOT NULL,
	[val_leitura_real] [numeric](7, 0) NULL,
	[val_leitura_atribuida] [numeric](7, 0) NULL,
	[cod_hidrometro] [varchar](12) NULL,
	[cod_referencia] [varchar](7) NOT NULL,
	[val_consumo_atribuido] [numeric](7, 0) NULL,
	[seq_grupo_fatura] [numeric](7, 0) NULL,
	[val_consumo_real] [numeric](7, 0) NULL,
	[val_consumo_estimado] [numeric](7, 0) NULL,
PRIMARY KEY CLUSTERED 
(
	[seq_matricula] ASC,
	[dat_leitura] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ACQ_DEBITO_REMESSA_ITEM]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ACQ_DEBITO_REMESSA_ITEM](
	[seq_debito_remessa_item] [numeric](7, 0) NOT NULL,
	[ind_tipo_item] [varchar](1) NULL,
	[seq_convenio] [numeric](7, 0) NOT NULL,
	[seq_debito_remessa] [numeric](7, 0) NOT NULL,
	[seq_fatura] [numeric](11, 0) NULL,
	[des_banco_debito] [varchar](30) NULL,
	[des_agencia_debito] [varchar](20) NULL,
	[des_conta_debito] [varchar](14) NULL,
	[seq_debito_retorno] [numeric](7, 0) NULL,
PRIMARY KEY CLUSTERED 
(
	[seq_convenio] ASC,
	[seq_debito_remessa] ASC,
	[seq_debito_remessa_item] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ACQ_RETIFICACAO_FATURA]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ACQ_RETIFICACAO_FATURA](
	[seq_retificacao_fatura] [numeric](7, 0) NOT NULL,
	[dat_vencimento_alterada] [datetime] NULL,
	[seq_fatura] [numeric](11, 0) NULL,
	[val_leitura_alterada] [numeric](7, 0) NULL,
	[ind_motivo_retificacao] [varchar](2) NULL,
PRIMARY KEY CLUSTERED 
(
	[seq_retificacao_fatura] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SIS_UNIDADE]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[SIS_UNIDADE](
	[seq_unidade] [numeric](3, 0) NOT NULL,
	[des_unidade] [varchar](40) NOT NULL,
	[seq_politica] [numeric](3, 0) NULL,
PRIMARY KEY CLUSTERED 
(
	[seq_unidade] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ACQ_UTILIZACAO_LIGACAO]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ACQ_UTILIZACAO_LIGACAO](
	[seq_utilizacao_ligacao] [numeric](3, 0) NOT NULL,
	[des_utilizacao_ligacao] [varchar](60) NULL,
PRIMARY KEY CLUSTERED 
(
	[seq_utilizacao_ligacao] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SIS_GRUPO]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[SIS_GRUPO](
	[cod_grupo] [varchar](6) NOT NULL,
	[des_grupo] [varchar](30) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[cod_grupo] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ACQ_RETIFICACAO_FATURA_TAXA]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ACQ_RETIFICACAO_FATURA_TAXA](
	[seq_retificacao_fatura_taxa] [numeric](7, 0) NOT NULL,
	[seq_retificacao_fatura] [numeric](7, 0) NOT NULL,
	[val_consumo_faturado_anterior] [numeric](7, 0) NULL,
	[val_consumo_faturado_alterado] [numeric](7, 0) NULL,
	[val_valor_faturado_anterior] [numeric](11, 3) NULL,
	[val_valor_faturado_alterado] [numeric](11, 3) NULL,
	[seq_fatura] [numeric](11, 0) NULL,
	[seq_categoria] [numeric](3, 0) NULL,
	[seq_taxa] [numeric](5, 0) NULL,
PRIMARY KEY CLUSTERED 
(
	[seq_retificacao_fatura] ASC,
	[seq_retificacao_fatura_taxa] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ACQ_TIPO_LIGACAO]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ACQ_TIPO_LIGACAO](
	[seq_tipo_ligacao] [numeric](3, 0) NOT NULL,
	[des_tipo_ligacao] [varchar](30) NULL,
PRIMARY KEY CLUSTERED 
(
	[seq_tipo_ligacao] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ACQ_FATURA]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ACQ_FATURA](
	[seq_fatura] [numeric](11, 0) NOT NULL,
	[cod_referencia] [varchar](7) NULL,
	[seq_roteiro] [numeric](12, 0) NULL,
	[seq_matricula] [numeric](12, 0) NULL,
	[cod_banco_debito] [numeric](4, 0) NULL,
	[cod_banco_agencia_debito] [numeric](8, 0) NULL,
	[seq_tipo_entrega] [numeric](3, 0) NULL,
	[des_conta_debito] [varchar](14) NULL,
	[dat_leitura] [datetime] NULL,
	[dat_leitura_anterior] [datetime] NULL,
	[val_leitura_real] [numeric](7, 0) NULL,
	[val_leitura_atribuida] [numeric](7, 0) NULL,
	[val_leitura_anterior] [numeric](7, 0) NULL,
	[dat_leitura_proxima] [datetime] NULL,
	[val_quantidade_pendente] [numeric](4, 0) NULL,
	[ind_entrega_especial] [varchar](1) NULL,
	[dat_vencimento] [datetime] NULL,
	[dat_hora_emissao] [datetime] NULL,
	[dat_pagamento] [datetime] NULL,
	[dat_cancelamento] [datetime] NULL,
	[val_arredonda_anterior] [numeric](5, 2) NULL,
	[val_arredonda_atual] [numeric](5, 2) NULL,
	[val_desconto] [numeric](11, 3) NULL,
	[ind_fatura_emitida] [varchar](1) NULL CONSTRAINT [N1158]  DEFAULT ('N'),
	[val_consumo_medido] [numeric](7, 0) NULL,
	[val_consumo_medio] [numeric](7, 0) NULL,
	[val_consumo_atribuido] [numeric](7, 0) NULL,
	[val_consumo_estimado] [numeric](7, 0) NULL,
	[ind_status] [varchar](2) NULL,
	[val_valor_faturado] [numeric](11, 3) NULL,
	[des_documento_origem] [varchar](15) NULL,
	[ind_tipo_documento_origem] [varchar](1) NULL,
	[ind_motivo_retificacao] [varchar](2) NULL,
	[val_consumo_rateado] [numeric](7, 0) NULL,
	[val_valor_credito] [numeric](11, 3) NULL,
	[dat_proxima_leitura] [datetime] NULL,
	[cod_hidrometro] [varchar](12) NULL,
	[des_linha_digitavel] [varchar](48) NULL,
	[des_codigo_barras] [varchar](44) NULL,
 CONSTRAINT [acq_fatura_p] PRIMARY KEY CLUSTERED 
(
	[seq_fatura] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SIS_USUARIO]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[SIS_USUARIO](
	[cod_usuario] [varchar](30) NOT NULL,
	[nom_usuario] [varchar](40) NOT NULL,
	[des_senha] [varchar](18) NULL,
	[ind_ativo] [varchar](1) NOT NULL DEFAULT ('S'),
	[ind_acesso_total] [varchar](1) NOT NULL DEFAULT ('N'),
	[cod_grupo_acesso_total] [varchar](6) NULL,
	[seq_unidade_padrao] [numeric](3, 0) NULL,
PRIMARY KEY CLUSTERED 
(
	[cod_usuario] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ACQ_ROTEIRO_CAMINHAMENTO]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ACQ_ROTEIRO_CAMINHAMENTO](
	[seq_roteiro] [numeric](12, 0) NOT NULL,
	[seq_roteiro_caminhamento] [numeric](3, 0) NOT NULL,
	[seq_rota] [numeric](7, 0) NULL,
	[seq_leitura_inicial] [numeric](7, 0) NULL,
	[seq_leitura_final] [numeric](7, 0) NULL,
PRIMARY KEY CLUSTERED 
(
	[seq_roteiro] ASC,
	[seq_roteiro_caminhamento] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ACQ_TIPO_ESGOTAMENTO]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ACQ_TIPO_ESGOTAMENTO](
	[seq_tipo_esgotamento] [numeric](3, 0) NOT NULL,
	[des_tipo_esgotamento] [varchar](30) NULL,
PRIMARY KEY CLUSTERED 
(
	[seq_tipo_esgotamento] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ACQ_FUNCAO_UNIDADE_SERVICO]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ACQ_FUNCAO_UNIDADE_SERVICO](
	[seq_funcao_unidade_servico] [numeric](3, 0) NOT NULL,
	[des_funcao_unidade_servico] [varchar](40) NULL,
PRIMARY KEY CLUSTERED 
(
	[seq_funcao_unidade_servico] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ACQ_NEGOCIACAO]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ACQ_NEGOCIACAO](
	[seq_negociacao] [numeric](7, 0) NOT NULL,
	[seq_plano_negociacao] [numeric](7, 0) NULL,
	[seq_pessoa_primeira_test] [numeric](12, 0) NULL,
	[seq_pessoa_negociador] [numeric](12, 0) NULL,
	[des_nome_negociador] [varchar](60) NULL,
	[cod_cpf_cnpj_negociador] [varchar](15) NULL,
	[cod_identidade] [numeric](8, 0) NULL,
	[des_telefone] [varchar](15) NULL,
	[des_ramal] [varchar](4) NULL,
	[des_nome_segunda_test] [varchar](60) NULL,
	[des_documento_segunda_test] [varchar](20) NULL,
	[val_valor_entrada] [numeric](11, 3) NULL,
	[ind_tipo_cobranca] [varchar](1) NULL,
	[des_documento_avista] [varchar](10) NULL,
	[val_numero_parcelas] [numeric](3, 0) NULL,
	[val_desconto_fatura] [numeric](11, 3) NULL,
	[val_desconto_multa] [numeric](11, 3) NULL,
	[val_desconto_juros] [numeric](11, 3) NULL,
	[val_valor_fatura] [numeric](11, 3) NULL,
	[val_valor_multa] [numeric](11, 3) NULL,
	[val_valor_juros] [numeric](11, 3) NULL,
	[val_valor_correcao] [numeric](11, 3) NULL,
	[dat_negociacao] [datetime] NULL,
	[dat_cancelamento] [datetime] NULL,
	[des_motivo_cancelamento] [varchar](60) NULL,
 CONSTRAINT [acq_negociacao_p] PRIMARY KEY CLUSTERED 
(
	[seq_negociacao] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ACQ_SOLICITACAO_SERVICO]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ACQ_SOLICITACAO_SERVICO](
	[seq_solicitacao_servico] [numeric](7, 0) NOT NULL,
	[seq_matricula] [numeric](12, 0) NULL,
	[seq_funcionario_solicitacao] [numeric](12, 0) NULL,
	[seq_atendimento] [varchar](10) NULL,
	[seq_pessoa] [numeric](12, 0) NULL,
	[cod_uf] [varchar](2) NULL,
	[seq_localidade] [numeric](9, 0) NULL,
	[seq_logradouro] [numeric](9, 0) NULL,
	[seq_documento] [varchar](15) NULL,
	[ind_tipo_documento] [varchar](1) NULL,
	[dat_solicitacao] [datetime] NULL,
	[des_motivo_solicitacao] [varchar](400) NULL,
	[des_observacao] [varchar](300) NULL,
	[des_nome_contato] [varchar](40) NULL,
	[des_fone_contato] [varchar](12) NULL,
	[des_ramal_contato] [numeric](5, 0) NULL,
 CONSTRAINT [acq_solicitacao_servico_p] PRIMARY KEY CLUSTERED 
(
	[seq_solicitacao_servico] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ACQ_HIDROMETRO_DIADEMA]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ACQ_HIDROMETRO_DIADEMA](
	[ind_virtual] [varchar](1) NULL,
	[cod_hidrometro] [varchar](12) NOT NULL,
	[seq_matricula] [numeric](12, 0) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[cod_hidrometro] ASC,
	[seq_matricula] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ACQ_ORDEM_SERVICO]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ACQ_ORDEM_SERVICO](
	[seq_ordem_servico] [numeric](7, 0) NOT NULL,
	[seq_matricula] [numeric](12, 0) NULL,
	[seq_politica_corte] [numeric](2, 0) NULL,
	[seq_aviso] [numeric](7, 0) NULL,
	[cod_equipe_servico] [varchar](10) NULL,
	[seq_unidade_servico] [numeric](3, 0) NULL,
	[seq_veiculo] [numeric](4, 0) NULL,
	[seq_fiscalizacao] [numeric](7, 0) NULL,
	[ind_tipo_corte] [varchar](1) NULL,
	[ind_origem_servico] [varchar](1) NULL,
	[ind_motivo_servico] [varchar](1) NULL,
	[val_leitura] [numeric](7, 0) NULL,
	[dat_pagamento] [datetime] NULL,
	[ind_status] [varchar](2) NULL,
	[ind_impresso] [varchar](1) NULL,
	[val_km_inicio] [numeric](7, 0) NULL,
	[val_km_fim] [numeric](7, 0) NULL,
	[des_documento_origem] [varchar](15) NULL,
 CONSTRAINT [acq_ordem_servico_p] PRIMARY KEY CLUSTERED 
(
	[seq_ordem_servico] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ACQ_SUBSIDIO]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ACQ_SUBSIDIO](
	[cod_subsidio] [numeric](3, 0) NOT NULL,
	[des_subsidio] [varchar](40) NOT NULL,
	[dat_vigencia] [datetime] NULL,
	[dat_expiracao] [datetime] NULL,
	[cod_uf] [varchar](2) NULL,
	[seq_localidade] [numeric](9, 0) NULL,
	[val_desconto] [numeric](5, 2) NULL,
	[val_quantidade] [numeric](12, 0) NULL,
	[val_volume] [numeric](12, 0) NULL,
 CONSTRAINT [acq_subsidio_p] PRIMARY KEY CLUSTERED 
(
	[cod_subsidio] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ACQ_CALENDARIO]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ACQ_CALENDARIO](
	[dat_mes_ano] [datetime] NOT NULL,
	[cod_uf] [varchar](2) NOT NULL,
	[seq_localidade] [numeric](9, 0) NOT NULL,
	[des_dias_faturamento] [varchar](31) NULL,
	[des_dias_servico] [varchar](31) NULL,
	[des_dias_arrecadacao] [varchar](31) NULL,
 CONSTRAINT [acq_calendario_p] PRIMARY KEY CLUSTERED 
(
	[dat_mes_ano] ASC,
	[cod_uf] ASC,
	[seq_localidade] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ACQ_MOVIMENTO_FOTO]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ACQ_MOVIMENTO_FOTO](
	[cod_referencia] [varchar](7) NOT NULL,
	[seq_roteiro] [numeric](12, 0) NOT NULL,
	[seq_matricula] [numeric](12, 0) NOT NULL,
	[seq_foto] [numeric](3, 0) NOT NULL,
	[arq_foto] [image] NULL,
	[des_caminho] [varchar](100) NULL,
 CONSTRAINT [acq_movimento_foto_p] PRIMARY KEY CLUSTERED 
(
	[cod_referencia] ASC,
	[seq_roteiro] ASC,
	[seq_matricula] ASC,
	[seq_foto] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ACQ_FATURA_IMPOSTO_DIADEMA]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ACQ_FATURA_IMPOSTO_DIADEMA](
	[seq_fatura] [numeric](11, 0) NOT NULL,
	[cod_imposto] [varchar](16) NOT NULL,
	[cod_referencia] [varchar](7) NOT NULL,
	[seq_roteiro] [numeric](12, 0) NOT NULL,
	[seq_matricula] [numeric](12, 0) NOT NULL,
	[val_valor_calculado] [numeric](11, 3) NULL,
 CONSTRAINT [acq_fatura_imposto_diadema_p] PRIMARY KEY CLUSTERED 
(
	[seq_fatura] ASC,
	[cod_imposto] ASC,
	[cod_referencia] ASC,
	[seq_roteiro] ASC,
	[seq_matricula] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ACQ_ORDEM_SERVICO_ITEM]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ACQ_ORDEM_SERVICO_ITEM](
	[seq_ordem_servico] [numeric](7, 0) NOT NULL,
	[seq_ordem_servico_item] [numeric](7, 0) NOT NULL,
	[seq_servico_manutencao] [numeric](7, 0) NULL,
	[seq_funcionario_executante] [numeric](12, 0) NULL,
	[seq_motivo_cancelamento] [numeric](3, 0) NULL,
	[seq_ordem_servico_acao] [numeric](7, 0) NULL,
	[cod_plano_financiamento] [numeric](3, 0) NULL,
	[dat_prevista_execucao] [datetime] NULL,
	[des_observacao] [varchar](400) NULL,
	[dat_execucao_unidade_servico] [datetime] NULL,
	[dat_execucao_cliente] [datetime] NULL,
	[dat_execucao] [datetime] NULL,
	[dat_hora_inicio] [datetime] NULL,
	[dat_hora_fim] [datetime] NULL,
	[dat_prorrogacao] [datetime] NULL,
	[dat_cancelamento] [datetime] NULL,
	[des_resultado] [varchar](400) NULL,
	[val_metragem] [numeric](7, 0) NULL,
	[ind_fatura] [varchar](1) NULL,
	[ind_status] [varchar](2) NULL,
 CONSTRAINT [acq_ordem_servico_item_p] PRIMARY KEY CLUSTERED 
(
	[seq_ordem_servico] ASC,
	[seq_ordem_servico_item] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ACQ_SOLICITACAO_SERVICO_FATURA]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ACQ_SOLICITACAO_SERVICO_FATURA](
	[seq_solicitacao_servico] [numeric](7, 0) NOT NULL,
	[seq_solicitacao_servico_item] [numeric](4, 0) NOT NULL,
	[seq_servico_fatura] [numeric](7, 0) NOT NULL,
	[ind_calculo_valor_servico] [varchar](1) NULL,
	[val_valor_servico] [numeric](11, 3) NULL,
	[cod_plano_financiamento] [numeric](3, 0) NULL,
	[val_numero_parcelas] [numeric](3, 0) NULL,
	[val_percentual_juros] [numeric](6, 3) NULL,
	[val_carencia_parcela] [numeric](3, 0) NULL,
	[ind_tipo_carencia] [varchar](1) NULL,
	[val_valor_avista] [numeric](11, 3) NULL,
	[ind_tipo_entrada] [varchar](1) NULL,
	[ind_tipo_parcela] [varchar](1) NULL,
	[val_valor_desconto] [numeric](11, 3) NULL,
	[val_valor_parcela] [numeric](11, 3) NULL,
	[val_quantidade] [numeric](11, 4) NULL,
	[ind_condicao_entrega] [varchar](1) NULL,
 CONSTRAINT [acq_solicitacao_servico_fatura_p] PRIMARY KEY CLUSTERED 
(
	[seq_solicitacao_servico] ASC,
	[seq_solicitacao_servico_item] ASC,
	[seq_servico_fatura] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ACQ_SERVICO_MANUTENCAO_FATURA]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ACQ_SERVICO_MANUTENCAO_FATURA](
	[seq_servico_manutencao] [numeric](7, 0) NOT NULL,
	[seq_servico_fatura] [numeric](7, 0) NOT NULL,
 CONSTRAINT [acq_servico_manutencao_fatura_p] PRIMARY KEY CLUSTERED 
(
	[seq_servico_manutencao] ASC,
	[seq_servico_fatura] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ACQ_PARAMETROS_COBRANCA]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ACQ_PARAMETROS_COBRANCA](
	[seq_area_atuacao] [numeric](3, 0) NOT NULL,
	[seq_servico_juros] [numeric](7, 0) NULL,
	[seq_indice_correcao] [numeric](3, 0) NULL,
	[seq_servico_correcao] [numeric](7, 0) NULL,
	[seq_servico_multa] [numeric](7, 0) NULL,
	[val_percentual_multa] [numeric](5, 2) NULL,
	[ind_periodicidade_multa] [varchar](1) NULL,
	[ind_prazo_multa] [varchar](1) NULL CONSTRAINT [N1171]  DEFAULT ('N'),
	[val_prazo_multa] [numeric](3, 0) NULL,
	[ind_periodo_multa] [varchar](1) NULL,
	[val_periodo_multa] [numeric](3, 0) NULL,
	[val_percentual_juros] [numeric](5, 2) NULL,
	[ind_periodo_juros] [varchar](1) NULL,
	[ind_proporcional_dias] [varchar](1) NULL CONSTRAINT [N1172]  DEFAULT ('N'),
	[ind_prazo_juros] [varchar](1) NULL CONSTRAINT [N1173]  DEFAULT ('N'),
	[val_prazo_juros] [numeric](3, 0) NULL,
	[val_percentual_limite_juros] [numeric](5, 2) NULL,
	[ind_incide_encargos] [varchar](1) NOT NULL CONSTRAINT [N1174]  DEFAULT ('N'),
 CONSTRAINT [acq_parametros_cobranca_p] PRIMARY KEY CLUSTERED 
(
	[seq_area_atuacao] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ACQ_PLANO_NEGOCIACAO]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ACQ_PLANO_NEGOCIACAO](
	[seq_plano_negociacao] [numeric](7, 0) NOT NULL,
	[seq_servico_fatura] [numeric](7, 0) NULL,
	[des_descricao] [varchar](60) NULL,
	[val_minimo_parcelas] [numeric](3, 0) NULL,
	[val_maximo_parcelas] [numeric](3, 0) NULL,
	[val_percentual_juros] [numeric](5, 3) NULL,
	[val_carencia_parcela] [numeric](3, 0) NULL,
	[ind_tipo_carencia] [varchar](1) NULL,
	[val_percentual_avista] [numeric](5, 3) NULL,
	[ind_documento_avista] [varchar](1) NULL,
	[val_valor_minimo_parcela] [numeric](11, 3) NULL,
	[val_valor_maximo_parcela] [numeric](11, 3) NULL,
	[ind_tipo_cobranca] [varchar](1) NULL,
	[val_honorarios] [numeric](11, 3) NULL,
	[ind_tipo_honorarios] [varchar](1) NULL,
	[val_custas_judiciais] [numeric](11, 3) NULL,
	[ind_tipo_custas_judiciais] [varchar](1) NULL,
	[ind_perdao_ultima_parcela] [varchar](1) NULL,
	[dat_inicial_vigencia] [datetime] NULL,
	[dat_final_vigencia] [datetime] NULL,
	[val_desconto_multa_inicial] [numeric](5, 3) NULL,
	[val_desconto_multa_final] [numeric](5, 3) NULL,
	[val_desconto_juros_inicial] [numeric](5, 3) NULL,
	[val_desconto_juros_final] [numeric](5, 3) NULL,
	[val_desconto_valor_inicial] [numeric](5, 3) NULL,
	[val_desconto_valor_final] [numeric](5, 3) NULL,
	[val_desconto_total_inicial] [numeric](5, 3) NULL,
	[val_desconto_total_final] [numeric](5, 3) NULL,
 CONSTRAINT [acq_plano_negociacao_p] PRIMARY KEY CLUSTERED 
(
	[seq_plano_negociacao] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ACQ_SERVICO_LIGACAO_TAXA]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ACQ_SERVICO_LIGACAO_TAXA](
	[seq_servico_manutencao] [numeric](7, 0) NOT NULL,
	[seq_taxa] [numeric](5, 0) NOT NULL,
 CONSTRAINT [acq_servico_ligacao_taxa_p] PRIMARY KEY CLUSTERED 
(
	[seq_servico_manutencao] ASC,
	[seq_taxa] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ACQ_TAXA_TARIFA]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ACQ_TAXA_TARIFA](
	[seq_taxa] [numeric](5, 0) NOT NULL,
	[seq_categoria] [numeric](3, 0) NOT NULL,
	[seq_taxa_tarifa] [numeric](9, 0) NOT NULL,
	[seq_taxa_base] [numeric](5, 0) NULL,
	[dat_inicio] [datetime] NULL,
	[ind_tipo_taxa] [varchar](1) NULL,
	[ind_escalonada] [varchar](1) NULL CONSTRAINT [N1179]  DEFAULT ('N'),
	[ind_dias_consumo] [varchar](1) NULL CONSTRAINT [N1180]  DEFAULT ('N'),
	[ind_minimo] [varchar](1) NULL,
	[val_valor_tarifa] [numeric](11, 3) NULL,
	[val_percentual] [numeric](5, 2) NULL,
	[ind_proporcional] [varchar](1) NULL CONSTRAINT [N1181]  DEFAULT ('N'),
 CONSTRAINT [acq_taxa_tarifa_p] PRIMARY KEY CLUSTERED 
(
	[seq_taxa] ASC,
	[seq_categoria] ASC,
	[seq_taxa_tarifa] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ACQ_ESTIMATIVA_LIGACAO]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ACQ_ESTIMATIVA_LIGACAO](
	[seq_area_atuacao] [numeric](3, 0) NOT NULL,
	[seq_estimativa_faixa] [numeric](3, 0) NOT NULL,
	[val_inicial] [numeric](7, 0) NULL,
	[val_final] [numeric](7, 0) NULL,
	[val_consumo] [numeric](7, 0) NULL,
	[ind_calculo_consumo] [varchar](1) NULL,
 CONSTRAINT [acq_estimativa_ligacao_p] PRIMARY KEY CLUSTERED 
(
	[seq_area_atuacao] ASC,
	[seq_estimativa_faixa] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ACQ_SERVICO_MANUTENCAO]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ACQ_SERVICO_MANUTENCAO](
	[seq_servico_manutencao] [numeric](7, 0) NOT NULL,
	[seq_servico_administrativo] [numeric](7, 0) NULL,
	[seq_tipo_servico] [numeric](3, 0) NULL,
	[seq_funcao_unidade_servico] [numeric](3, 0) NULL,
	[des_servico_manutencao] [varchar](300) NULL,
	[des_servico_reduzida] [varchar](15) NULL,
	[val_prazo_execucao_cliente] [numeric](3, 0) NULL,
	[ind_prazo_execucao_cliente] [varchar](1) NULL,
	[val_prazo_execucao_unidade] [numeric](3, 0) NULL,
	[ind_prazo_execucao_unidade] [varchar](1) NULL,
	[val_tempo_execucao] [numeric](3, 0) NULL,
	[ind_tempo_execucao] [varchar](1) NULL,
	[val_prioridade] [numeric](1, 0) NULL,
	[ind_gravacao] [varchar](1) NULL,
	[ind_medida_faturamento] [varchar](1) NULL,
	[ind_rede] [varchar](1) NULL CONSTRAINT [N1175]  DEFAULT ('N'),
	[ind_garantia] [varchar](1) NULL CONSTRAINT [N1176]  DEFAULT ('N'),
	[val_tempo_garantia] [numeric](3, 0) NULL,
	[ind_tempo_garantia] [varchar](1) NULL,
	[ind_fiscalizado] [varchar](1) NULL CONSTRAINT [N1177]  DEFAULT ('N'),
	[val_numero_elementos] [numeric](2, 0) NULL,
	[ind_integracao_onplace] [varchar](1) NULL CONSTRAINT [N1178]  DEFAULT ('N'),
 CONSTRAINT [acq_servico_manutencao_p] PRIMARY KEY CLUSTERED 
(
	[seq_servico_manutencao] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ACQ_DEBITO_RETORNO_ITEM]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ACQ_DEBITO_RETORNO_ITEM](
	[seq_convenio] [numeric](7, 0) NOT NULL,
	[seq_debito_retorno] [numeric](7, 0) NOT NULL,
	[seq_debito_retorno_item] [numeric](7, 0) NOT NULL,
	[seq_fatura] [numeric](11, 0) NULL,
	[seq_debito_remessa] [numeric](7, 0) NULL,
	[seq_forma_pagamento] [numeric](3, 0) NULL,
	[dat_processamento] [datetime] NULL,
	[ind_tipo_item] [varchar](1) NULL,
	[ind_retorno] [varchar](2) NULL,
	[cod_agencia_debito] [numeric](8, 0) NULL,
	[dat_vencimento] [datetime] NULL,
	[val_valor_debito] [numeric](15, 2) NULL,
	[des_identificacao_empresa] [varchar](20) NULL,
	[dat_pagamento] [datetime] NULL,
	[dat_credito] [datetime] NULL,
	[des_codigo_barras] [varchar](44) NULL,
	[val_valor_pagamento] [numeric](12, 2) NULL,
	[val_valor_tarifa] [numeric](7, 2) NULL,
	[cod_agencia_arrecadadora] [numeric](8, 0) NULL,
	[ind_forma_arrecadacao] [varchar](1) NULL,
	[des_numero_autenticacao] [varchar](23) NULL,
 CONSTRAINT [acq_debito_retorno_item_p] PRIMARY KEY CLUSTERED 
(
	[seq_convenio] ASC,
	[seq_debito_retorno] ASC,
	[seq_debito_retorno_item] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ACQ_PAGAMENTOS]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ACQ_PAGAMENTOS](
	[seq_fatura] [numeric](11, 0) NOT NULL,
	[seq_pagamento] [numeric](7, 0) NOT NULL,
	[cod_banco] [numeric](4, 0) NULL,
	[cod_banco_agencia] [numeric](8, 0) NULL,
	[seq_lote] [numeric](7, 0) NULL,
	[seq_forma_pagamento] [numeric](3, 0) NULL,
	[dat_pagamento] [datetime] NULL,
	[ind_tipo_pagamento] [varchar](1) NULL,
	[val_numero_parcela] [numeric](3, 0) NULL,
	[val_valor_pago] [numeric](11, 3) NULL,
	[ind_forma_arrecadacao] [varchar](1) NULL,
	[ind_status] [varchar](1) NULL,
	[des_documento] [varchar](15) NULL,
	[dat_devolucao] [datetime] NULL,
	[dat_analise] [datetime] NULL,
 CONSTRAINT [acq_pagamentos_p] PRIMARY KEY CLUSTERED 
(
	[seq_fatura] ASC,
	[seq_pagamento] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ACQ_MOVIMENTO]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ACQ_MOVIMENTO](
	[cod_referencia] [varchar](7) NOT NULL,
	[seq_roteiro] [numeric](12, 0) NOT NULL,
	[seq_matricula] [numeric](12, 0) NOT NULL,
	[cod_agente] [numeric](3, 0) NULL,
	[cod_hidrometro] [varchar](12) NULL,
	[cod_banco] [numeric](4, 0) NULL,
	[cod_banco_agencia] [numeric](8, 0) NULL,
	[seq_tipo_entrega] [numeric](3, 0) NULL,
	[des_conta_debito] [varchar](14) NULL,
	[val_numero_digitos] [numeric](1, 0) NULL,
	[dat_leitura] [datetime] NULL,
	[dat_leitura_anterior] [datetime] NULL,
	[val_leitura_real] [numeric](7, 0) NULL,
	[val_leitura_atribuida] [numeric](7, 0) NULL,
	[val_leitura_anterior] [numeric](7, 0) NULL,
	[dat_leitura_proxima] [datetime] NULL,
	[val_consumo_medido] [numeric](7, 0) NULL,
	[val_consumo_atribuido] [numeric](7, 0) NULL,
	[val_consumo_troca] [numeric](7, 0) NULL,
	[dat_troca] [datetime] NULL,
	[ind_motivo_retirada] [varchar](1) NULL,
	[ind_leitura_divergente] [varchar](1) NULL CONSTRAINT [N1160]  DEFAULT ('N'),
	[val_numero_leituras] [numeric](5, 0) NULL,
	[val_consumo_medio] [numeric](7, 0) NULL,
	[val_consumo_estimado] [numeric](7, 0) NULL,
	[val_quantidade_pendente] [numeric](4, 0) NULL,
	[ind_entrega_especial] [varchar](1) NULL,
	[dat_vencimento] [datetime] NULL,
	[val_arredonda_anterior] [numeric](3, 2) NULL,
	[val_arredonda_atual] [numeric](3, 2) NULL,
	[val_desconto] [numeric](11, 3) NULL,
	[ind_fatura_emitida] [varchar](1) NULL CONSTRAINT [N1161]  DEFAULT ('N'),
	[ind_situacao_movimento] [varchar](1) NULL,
	[val_consumo_rateado] [numeric](7, 0) NULL,
	[dat_proxima_leitura] [datetime] NULL,
 CONSTRAINT [acq_movimento_p] PRIMARY KEY CLUSTERED 
(
	[cod_referencia] ASC,
	[seq_roteiro] ASC,
	[seq_matricula] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ACQ_ORDEM_SERVICO_WORKFLOW]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ACQ_ORDEM_SERVICO_WORKFLOW](
	[seq_ordem_servico] [numeric](7, 0) NOT NULL,
	[seq_ordem_servico_item] [numeric](7, 0) NOT NULL,
	[seq_ordem_servico_workflow] [numeric](3, 0) NOT NULL,
	[seq_ordem_servico_gerada] [numeric](7, 0) NULL,
	[ind_tipo_execucao] [varchar](1) NULL,
	[ind_status] [varchar](2) NULL,
 CONSTRAINT [acq_ordem_servico_workflow_p] PRIMARY KEY CLUSTERED 
(
	[seq_ordem_servico] ASC,
	[seq_ordem_servico_item] ASC,
	[seq_ordem_servico_workflow] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
END
GO
IF NOT EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[IND_ENTREGA_ESPECIAL158]') AND parent_object_id = OBJECT_ID(N'[dbo].[ACQ_MATRICULA]'))
ALTER TABLE [dbo].[ACQ_MATRICULA]  WITH CHECK ADD  CONSTRAINT [IND_ENTREGA_ESPECIAL158] CHECK  (([ind_entrega_especial] = '6' or ([ind_entrega_especial] = '5' or ([ind_entrega_especial] = '4' or ([ind_entrega_especial] = '3' or ([ind_entrega_especial] = '2' or ([ind_entrega_especial] = '1' or [ind_entrega_especial] = '0')))))))
GO
ALTER TABLE [dbo].[ACQ_MATRICULA] CHECK CONSTRAINT [IND_ENTREGA_ESPECIAL158]
GO
IF NOT EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[SIM_NAO1573]') AND parent_object_id = OBJECT_ID(N'[dbo].[ACQ_MATRICULA]'))
ALTER TABLE [dbo].[ACQ_MATRICULA]  WITH CHECK ADD  CONSTRAINT [SIM_NAO1573] CHECK  (([ind_agrupa_fatura] = 'N' or [ind_agrupa_fatura] = 'S'))
GO
ALTER TABLE [dbo].[ACQ_MATRICULA] CHECK CONSTRAINT [SIM_NAO1573]
GO
IF NOT EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK__ACQ_DEFIN__ind_l__09746778]') AND parent_object_id = OBJECT_ID(N'[dbo].[ACQ_DEFINICAO_EQUIPE_PESSOA]'))
ALTER TABLE [dbo].[ACQ_DEFINICAO_EQUIPE_PESSOA]  WITH CHECK ADD CHECK  (([ind_lider] = 'N' or [ind_lider] = 'S'))
GO
IF NOT EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[IND_COR_LACRE20]') AND parent_object_id = OBJECT_ID(N'[dbo].[ACQ_MATRICULA_LIGACAO]'))
ALTER TABLE [dbo].[ACQ_MATRICULA_LIGACAO]  WITH CHECK ADD  CONSTRAINT [IND_COR_LACRE20] CHECK  (([ind_cor_lacre] = 'V' or [ind_cor_lacre] = 'A'))
GO
ALTER TABLE [dbo].[ACQ_MATRICULA_LIGACAO] CHECK CONSTRAINT [IND_COR_LACRE20]
GO
IF NOT EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[IND_FONTE_ALTERNATIVA33]') AND parent_object_id = OBJECT_ID(N'[dbo].[ACQ_MATRICULA_LIGACAO]'))
ALTER TABLE [dbo].[ACQ_MATRICULA_LIGACAO]  WITH CHECK ADD  CONSTRAINT [IND_FONTE_ALTERNATIVA33] CHECK  (([ind_fonte_alternativa] = '9' or ([ind_fonte_alternativa] = '8' or ([ind_fonte_alternativa] = '7' or ([ind_fonte_alternativa] = '6' or ([ind_fonte_alternativa] = '5' or ([ind_fonte_alternativa] = '4' or ([ind_fonte_alternativa] = '3' or ([ind_fonte_alternativa] = '2' or ([ind_fonte_alternativa] = '1' or [ind_fonte_alternativa] = '0'))))))))))
GO
ALTER TABLE [dbo].[ACQ_MATRICULA_LIGACAO] CHECK CONSTRAINT [IND_FONTE_ALTERNATIVA33]
GO
IF NOT EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[IND_LACRE38]') AND parent_object_id = OBJECT_ID(N'[dbo].[ACQ_MATRICULA_LIGACAO]'))
ALTER TABLE [dbo].[ACQ_MATRICULA_LIGACAO]  WITH CHECK ADD  CONSTRAINT [IND_LACRE38] CHECK  (([ind_lacre_entrada] = '3' or ([ind_lacre_entrada] = '2' or [ind_lacre_entrada] = '1')))
GO
ALTER TABLE [dbo].[ACQ_MATRICULA_LIGACAO] CHECK CONSTRAINT [IND_LACRE38]
GO
IF NOT EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[IND_LACRE39]') AND parent_object_id = OBJECT_ID(N'[dbo].[ACQ_MATRICULA_LIGACAO]'))
ALTER TABLE [dbo].[ACQ_MATRICULA_LIGACAO]  WITH CHECK ADD  CONSTRAINT [IND_LACRE39] CHECK  (([ind_lacre_saida] = '3' or ([ind_lacre_saida] = '2' or [ind_lacre_saida] = '1')))
GO
ALTER TABLE [dbo].[ACQ_MATRICULA_LIGACAO] CHECK CONSTRAINT [IND_LACRE39]
GO
IF NOT EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[IND_PROTECAO_HD19]') AND parent_object_id = OBJECT_ID(N'[dbo].[ACQ_MATRICULA_LIGACAO]'))
ALTER TABLE [dbo].[ACQ_MATRICULA_LIGACAO]  WITH CHECK ADD  CONSTRAINT [IND_PROTECAO_HD19] CHECK  (([ind_protecao_hidrometro] = '6' or ([ind_protecao_hidrometro] = '5' or ([ind_protecao_hidrometro] = '4' or ([ind_protecao_hidrometro] = '3' or ([ind_protecao_hidrometro] = '2' or [ind_protecao_hidrometro] = '1'))))))
GO
ALTER TABLE [dbo].[ACQ_MATRICULA_LIGACAO] CHECK CONSTRAINT [IND_PROTECAO_HD19]
GO
IF NOT EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[SIM_NAO1574b]') AND parent_object_id = OBJECT_ID(N'[dbo].[ACQ_MATRICULA_LIGACAO]'))
ALTER TABLE [dbo].[ACQ_MATRICULA_LIGACAO]  WITH CHECK ADD  CONSTRAINT [SIM_NAO1574b] CHECK  (([ind_reservatorio_superior] = 'N' or [ind_reservatorio_superior] = 'S'))
GO
ALTER TABLE [dbo].[ACQ_MATRICULA_LIGACAO] CHECK CONSTRAINT [SIM_NAO1574b]
GO
IF NOT EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[SIM_NAO1575b]') AND parent_object_id = OBJECT_ID(N'[dbo].[ACQ_MATRICULA_LIGACAO]'))
ALTER TABLE [dbo].[ACQ_MATRICULA_LIGACAO]  WITH CHECK ADD  CONSTRAINT [SIM_NAO1575b] CHECK  (([ind_reservatorio_inferior] = 'N' or [ind_reservatorio_inferior] = 'S'))
GO
ALTER TABLE [dbo].[ACQ_MATRICULA_LIGACAO] CHECK CONSTRAINT [SIM_NAO1575b]
GO
IF NOT EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[SIM_NAO1576]') AND parent_object_id = OBJECT_ID(N'[dbo].[ACQ_MATRICULA_LIGACAO]'))
ALTER TABLE [dbo].[ACQ_MATRICULA_LIGACAO]  WITH CHECK ADD  CONSTRAINT [SIM_NAO1576] CHECK  (([ind_piscina] = 'N' or [ind_piscina] = 'S'))
GO
ALTER TABLE [dbo].[ACQ_MATRICULA_LIGACAO] CHECK CONSTRAINT [SIM_NAO1576]
GO
IF NOT EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[SIM_NAO1577]') AND parent_object_id = OBJECT_ID(N'[dbo].[ACQ_MATRICULA_LIGACAO]'))
ALTER TABLE [dbo].[ACQ_MATRICULA_LIGACAO]  WITH CHECK ADD  CONSTRAINT [SIM_NAO1577] CHECK  (([ind_calcada] = 'N' or [ind_calcada] = 'S'))
GO
ALTER TABLE [dbo].[ACQ_MATRICULA_LIGACAO] CHECK CONSTRAINT [SIM_NAO1577]
GO
IF NOT EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[SIM_NAO1578]') AND parent_object_id = OBJECT_ID(N'[dbo].[ACQ_MATRICULA_LIGACAO]'))
ALTER TABLE [dbo].[ACQ_MATRICULA_LIGACAO]  WITH CHECK ADD  CONSTRAINT [SIM_NAO1578] CHECK  (([ind_jardim] = 'N' or [ind_jardim] = 'S'))
GO
ALTER TABLE [dbo].[ACQ_MATRICULA_LIGACAO] CHECK CONSTRAINT [SIM_NAO1578]
GO
IF NOT EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[SIM_NAO1579]') AND parent_object_id = OBJECT_ID(N'[dbo].[ACQ_MATRICULA_LIGACAO]'))
ALTER TABLE [dbo].[ACQ_MATRICULA_LIGACAO]  WITH CHECK ADD  CONSTRAINT [SIM_NAO1579] CHECK  (([ind_consumo_estimado] = 'N' or [ind_consumo_estimado] = 'S'))
GO
ALTER TABLE [dbo].[ACQ_MATRICULA_LIGACAO] CHECK CONSTRAINT [SIM_NAO1579]
GO
IF NOT EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK__ACQ_AVISO__ind_c__0E6E26BF]') AND parent_object_id = OBJECT_ID(N'[dbo].[ACQ_AVISO]'))
ALTER TABLE [dbo].[ACQ_AVISO]  WITH CHECK ADD CHECK  (([ind_confirma_entrega] = 'N' or [ind_confirma_entrega] = 'S'))
GO
IF NOT EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK__ACQ_AVISO__ind_f__0C85DE4D]') AND parent_object_id = OBJECT_ID(N'[dbo].[ACQ_AVISO]'))
ALTER TABLE [dbo].[ACQ_AVISO]  WITH CHECK ADD CHECK  (([ind_forma_entrega] = '6' or ([ind_forma_entrega] = '5' or ([ind_forma_entrega] = '4' or ([ind_forma_entrega] = '3' or ([ind_forma_entrega] = '2' or [ind_forma_entrega] = '1'))))))
GO
IF NOT EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK__ACQ_AVISO__ind_p__0F624AF8]') AND parent_object_id = OBJECT_ID(N'[dbo].[ACQ_AVISO]'))
ALTER TABLE [dbo].[ACQ_AVISO]  WITH CHECK ADD CHECK  (([ind_pagavel] = 'N' or [ind_pagavel] = 'S'))
GO
IF NOT EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK__ACQ_EMPRE__ind_u__0E391C95]') AND parent_object_id = OBJECT_ID(N'[dbo].[ACQ_EMPREITEIRA_SERVICO]'))
ALTER TABLE [dbo].[ACQ_EMPREITEIRA_SERVICO]  WITH CHECK ADD CHECK  (([ind_unidade_servico] = 'H' or [ind_unidade_servico] = 'U'))
GO
IF NOT EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[IND_CONDICAO_ENTREGA52]') AND parent_object_id = OBJECT_ID(N'[dbo].[ACQ_PLANO_FINANCIAMENTO]'))
ALTER TABLE [dbo].[ACQ_PLANO_FINANCIAMENTO]  WITH CHECK ADD  CONSTRAINT [IND_CONDICAO_ENTREGA52] CHECK  (([ind_condicao_entrega] = '1' or [ind_condicao_entrega] = '0'))
GO
ALTER TABLE [dbo].[ACQ_PLANO_FINANCIAMENTO] CHECK CONSTRAINT [IND_CONDICAO_ENTREGA52]
GO
IF NOT EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[IND_TIPO_CARENCIA65]') AND parent_object_id = OBJECT_ID(N'[dbo].[ACQ_PLANO_FINANCIAMENTO]'))
ALTER TABLE [dbo].[ACQ_PLANO_FINANCIAMENTO]  WITH CHECK ADD  CONSTRAINT [IND_TIPO_CARENCIA65] CHECK  (([ind_tipo_carencia] = 'V' or [ind_tipo_carencia] = 'D'))
GO
ALTER TABLE [dbo].[ACQ_PLANO_FINANCIAMENTO] CHECK CONSTRAINT [IND_TIPO_CARENCIA65]
GO
IF NOT EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[IND_TIPO_ENTRADA31]') AND parent_object_id = OBJECT_ID(N'[dbo].[ACQ_PLANO_FINANCIAMENTO]'))
ALTER TABLE [dbo].[ACQ_PLANO_FINANCIAMENTO]  WITH CHECK ADD  CONSTRAINT [IND_TIPO_ENTRADA31] CHECK  (([ind_tipo_entrada] = 'B' or [ind_tipo_entrada] = 'G'))
GO
ALTER TABLE [dbo].[ACQ_PLANO_FINANCIAMENTO] CHECK CONSTRAINT [IND_TIPO_ENTRADA31]
GO
IF NOT EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[IND_TIPO_PARCELA83]') AND parent_object_id = OBJECT_ID(N'[dbo].[ACQ_PLANO_FINANCIAMENTO]'))
ALTER TABLE [dbo].[ACQ_PLANO_FINANCIAMENTO]  WITH CHECK ADD  CONSTRAINT [IND_TIPO_PARCELA83] CHECK  (([ind_tipo_parcela] = 'B' or ([ind_tipo_parcela] = 'S' or [ind_tipo_parcela] = 'G')))
GO
ALTER TABLE [dbo].[ACQ_PLANO_FINANCIAMENTO] CHECK CONSTRAINT [IND_TIPO_PARCELA83]
GO
IF NOT EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[IND_STATUS_SOLICITACAO5]') AND parent_object_id = OBJECT_ID(N'[dbo].[ACQ_SOLICITACAO_SERVICO_ITEM]'))
ALTER TABLE [dbo].[ACQ_SOLICITACAO_SERVICO_ITEM]  WITH CHECK ADD  CONSTRAINT [IND_STATUS_SOLICITACAO5] CHECK  (([ind_status] = 5 or ([ind_status] = 4 or ([ind_status] = 3 or ([ind_status] = 2 or ([ind_status] = 1 or [ind_status] = 0))))))
GO
ALTER TABLE [dbo].[ACQ_SOLICITACAO_SERVICO_ITEM] CHECK CONSTRAINT [IND_STATUS_SOLICITACAO5]
GO
IF NOT EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK__ACQ_EQUIP__ind_l__15DA3E5D]') AND parent_object_id = OBJECT_ID(N'[dbo].[ACQ_EQUIPE_PESSOA]'))
ALTER TABLE [dbo].[ACQ_EQUIPE_PESSOA]  WITH CHECK ADD CHECK  (([ind_lider] = 'N' or [ind_lider] = 'S'))
GO
IF NOT EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK__ACQ_ESTIM__ind_c__1A9EF37A]') AND parent_object_id = OBJECT_ID(N'[dbo].[ACQ_ESTIMATIVA_CATEGORIA]'))
ALTER TABLE [dbo].[ACQ_ESTIMATIVA_CATEGORIA]  WITH CHECK ADD CHECK  (([ind_calculo_consumo] = 'C' or [ind_calculo_consumo] = 'F'))
GO
IF NOT EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK__ACQ_FUNCI__ind_a__1BC821DD]') AND parent_object_id = OBJECT_ID(N'[dbo].[ACQ_FUNCIONARIO]'))
ALTER TABLE [dbo].[ACQ_FUNCIONARIO]  WITH CHECK ADD CHECK  (([ind_ativo] = 'N' or [ind_ativo] = 'S'))
GO
IF NOT EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK__ACQ_ROTEI__ind_c__1B0907CE]') AND parent_object_id = OBJECT_ID(N'[dbo].[ACQ_ROTEIRO]'))
ALTER TABLE [dbo].[ACQ_ROTEIRO]  WITH CHECK ADD CHECK  (([ind_criterio_roteiro] = 'Q' or ([ind_criterio_roteiro] = 'L' or [ind_criterio_roteiro] = 'C')))
GO
IF NOT EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK__ACQ_GRUPO__ind_f__1ED998B2]') AND parent_object_id = OBJECT_ID(N'[dbo].[ACQ_GRUPO_REFERENCIA]'))
ALTER TABLE [dbo].[ACQ_GRUPO_REFERENCIA]  WITH CHECK ADD CHECK  (([ind_fatura] = 'N' or [ind_fatura] = 'S'))
GO
IF NOT EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK__ACQ_ALTER__ind_d__21B6055D]') AND parent_object_id = OBJECT_ID(N'[dbo].[ACQ_ALTERACAO_CADASTRAL]'))
ALTER TABLE [dbo].[ACQ_ALTERACAO_CADASTRAL]  WITH CHECK ADD CHECK  (([ind_dado_alterado] = 'CT' or ([ind_dado_alterado] = 'LH' or ([ind_dado_alterado] = 'LG' or ([ind_dado_alterado] = 'DG' or ([ind_dado_alterado] = 'CP' or ([ind_dado_alterado] = 'NM' or ([ind_dado_alterado] = 'NI' or [ind_dado_alterado] = 'HD'))))))))
GO
IF NOT EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK__ACQ_ALTER__ind_s__22AA2996]') AND parent_object_id = OBJECT_ID(N'[dbo].[ACQ_ALTERACAO_CADASTRAL]'))
ALTER TABLE [dbo].[ACQ_ALTERACAO_CADASTRAL]  WITH CHECK ADD CHECK  (([ind_status] = 3 or ([ind_status] = 2 or [ind_status] = 1)))
GO
IF NOT EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK__ACQ_POLIT__ind_t__267ABA7A]') AND parent_object_id = OBJECT_ID(N'[dbo].[ACQ_POLITICA_FISCALIZACAO]'))
ALTER TABLE [dbo].[ACQ_POLITICA_FISCALIZACAO]  WITH CHECK ADD CHECK  (([ind_todos] = 'N' or [ind_todos] = 'S'))
GO
IF NOT EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK__ACQ_TAXA___ind_m__1758727B]') AND parent_object_id = OBJECT_ID(N'[dbo].[ACQ_TAXA_MATRICULA]'))
ALTER TABLE [dbo].[ACQ_TAXA_MATRICULA]  WITH CHECK ADD CHECK  (([ind_motivo_eliminacao] = 'R' or ([ind_motivo_eliminacao] = 'C' or ([ind_motivo_eliminacao] = 'P' or [ind_motivo_eliminacao] = 'S'))))
GO
IF NOT EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK__ACQ_TAXA___ind_m__184C96B4]') AND parent_object_id = OBJECT_ID(N'[dbo].[ACQ_TAXA_MATRICULA]'))
ALTER TABLE [dbo].[ACQ_TAXA_MATRICULA]  WITH CHECK ADD CHECK  (([ind_motivo_corte] = 'R' or ([ind_motivo_corte] = 'C' or ([ind_motivo_corte] = 'P' or [ind_motivo_corte] = 'S'))))
GO
IF NOT EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK__ACQ_TAXA___ind_p__1A34DF26]') AND parent_object_id = OBJECT_ID(N'[dbo].[ACQ_TAXA_MATRICULA]'))
ALTER TABLE [dbo].[ACQ_TAXA_MATRICULA]  WITH CHECK ADD CHECK  (([ind_poder_publico] = 'N' or [ind_poder_publico] = 'S'))
GO
IF NOT EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK__ACQ_TAXA___ind_s__16644E42]') AND parent_object_id = OBJECT_ID(N'[dbo].[ACQ_TAXA_MATRICULA]'))
ALTER TABLE [dbo].[ACQ_TAXA_MATRICULA]  WITH CHECK ADD CHECK  (([ind_situacao] = '5' or ([ind_situacao] = '4' or ([ind_situacao] = '3' or ([ind_situacao] = '2' or [ind_situacao] = '1')))))
GO
IF NOT EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK__ACQ_MATRI__ind_l__1881A0DE]') AND parent_object_id = OBJECT_ID(N'[dbo].[ACQ_MATRICULA_SCS]'))
ALTER TABLE [dbo].[ACQ_MATRICULA_SCS]  WITH CHECK ADD CHECK  (([ind_lancamento] = 7 or ([ind_lancamento] = 4 or ([ind_lancamento] = 3 or ([ind_lancamento] = 1 or [ind_lancamento] = 0)))))
GO
IF NOT EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[IND_CALCULO_VALOR_SERVICO16]') AND parent_object_id = OBJECT_ID(N'[dbo].[ACQ_SERVICO_FATURA]'))
ALTER TABLE [dbo].[ACQ_SERVICO_FATURA]  WITH CHECK ADD  CONSTRAINT [IND_CALCULO_VALOR_SERVICO16] CHECK  (([ind_calculo_valor_servico] = 3 or ([ind_calculo_valor_servico] = 2 or ([ind_calculo_valor_servico] = 1 or [ind_calculo_valor_servico] = 0))))
GO
ALTER TABLE [dbo].[ACQ_SERVICO_FATURA] CHECK CONSTRAINT [IND_CALCULO_VALOR_SERVICO16]
GO
IF NOT EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[IND_COBRANCA_SERVICO25]') AND parent_object_id = OBJECT_ID(N'[dbo].[ACQ_SERVICO_FATURA]'))
ALTER TABLE [dbo].[ACQ_SERVICO_FATURA]  WITH CHECK ADD  CONSTRAINT [IND_COBRANCA_SERVICO25] CHECK  (([ind_cobranca_servico] = 'D' or [ind_cobranca_servico] = 'C'))
GO
ALTER TABLE [dbo].[ACQ_SERVICO_FATURA] CHECK CONSTRAINT [IND_COBRANCA_SERVICO25]
GO
IF NOT EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK__ACQ_FATUR__ind_s__2704CA5F]') AND parent_object_id = OBJECT_ID(N'[dbo].[ACQ_FATURA_TAXA]'))
ALTER TABLE [dbo].[ACQ_FATURA_TAXA]  WITH CHECK ADD CHECK  (([ind_situacao] = '5' or ([ind_situacao] = '4' or ([ind_situacao] = '3' or ([ind_situacao] = '2' or [ind_situacao] = '1')))))
GO
IF NOT EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK__ACQ_FATUR__ind_t__27F8EE98]') AND parent_object_id = OBJECT_ID(N'[dbo].[ACQ_FATURA_TAXA]'))
ALTER TABLE [dbo].[ACQ_FATURA_TAXA]  WITH CHECK ADD CHECK  (([ind_tipo_consumo] = 'F' or ([ind_tipo_consumo] = 'E' or ([ind_tipo_consumo] = 'L' or [ind_tipo_consumo] = 'A'))))
GO
IF NOT EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[SIM_NAO1581]') AND parent_object_id = OBJECT_ID(N'[dbo].[ACQ_MATRICULA_DIADEMA]'))
ALTER TABLE [dbo].[ACQ_MATRICULA_DIADEMA]  WITH NOCHECK ADD  CONSTRAINT [SIM_NAO1581] CHECK  (([ind_corta_ligacao] = 'N' or [ind_corta_ligacao] = 'S'))
GO
ALTER TABLE [dbo].[ACQ_MATRICULA_DIADEMA] CHECK CONSTRAINT [SIM_NAO1581]
GO
IF NOT EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[SIM_NAO1582]') AND parent_object_id = OBJECT_ID(N'[dbo].[ACQ_MATRICULA_DIADEMA]'))
ALTER TABLE [dbo].[ACQ_MATRICULA_DIADEMA]  WITH NOCHECK ADD  CONSTRAINT [SIM_NAO1582] CHECK  (([ind_cortou_ligacao] = 'N' or [ind_cortou_ligacao] = 'S'))
GO
ALTER TABLE [dbo].[ACQ_MATRICULA_DIADEMA] CHECK CONSTRAINT [SIM_NAO1582]
GO
IF NOT EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[SIM_NAO1583]') AND parent_object_id = OBJECT_ID(N'[dbo].[ACQ_MATRICULA_DIADEMA]'))
ALTER TABLE [dbo].[ACQ_MATRICULA_DIADEMA]  WITH NOCHECK ADD  CONSTRAINT [SIM_NAO1583] CHECK  (([ind_retencao_impostos] = 'N' or [ind_retencao_impostos] = 'S'))
GO
ALTER TABLE [dbo].[ACQ_MATRICULA_DIADEMA] CHECK CONSTRAINT [SIM_NAO1583]
GO
IF NOT EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[SIM_NAO1584]') AND parent_object_id = OBJECT_ID(N'[dbo].[ACQ_MATRICULA_DIADEMA]'))
ALTER TABLE [dbo].[ACQ_MATRICULA_DIADEMA]  WITH NOCHECK ADD  CONSTRAINT [SIM_NAO1584] CHECK  (([ind_cachorro] = 'N' or [ind_cachorro] = 'S'))
GO
ALTER TABLE [dbo].[ACQ_MATRICULA_DIADEMA] CHECK CONSTRAINT [SIM_NAO1584]
GO
IF NOT EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[SIM_NAO1585]') AND parent_object_id = OBJECT_ID(N'[dbo].[ACQ_MATRICULA_DIADEMA]'))
ALTER TABLE [dbo].[ACQ_MATRICULA_DIADEMA]  WITH NOCHECK ADD  CONSTRAINT [SIM_NAO1585] CHECK  (([ind_emite_fatura] = 'N' or [ind_emite_fatura] = 'S'))
GO
ALTER TABLE [dbo].[ACQ_MATRICULA_DIADEMA] CHECK CONSTRAINT [SIM_NAO1585]
GO
IF NOT EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[SIM_NAO1586]') AND parent_object_id = OBJECT_ID(N'[dbo].[ACQ_MATRICULA_DIADEMA]'))
ALTER TABLE [dbo].[ACQ_MATRICULA_DIADEMA]  WITH NOCHECK ADD  CONSTRAINT [SIM_NAO1586] CHECK  (([ind_calcula_fatura] = 'N' or [ind_calcula_fatura] = 'S'))
GO
ALTER TABLE [dbo].[ACQ_MATRICULA_DIADEMA] CHECK CONSTRAINT [SIM_NAO1586]
GO
IF NOT EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK__ACQ_GRUPO__ind_s__2F9A1060]') AND parent_object_id = OBJECT_ID(N'[dbo].[ACQ_GRUPO_CHECKLIST]'))
ALTER TABLE [dbo].[ACQ_GRUPO_CHECKLIST]  WITH CHECK ADD CHECK  (([ind_status] = 'D' or [ind_status] = 'E'))
GO
IF NOT EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK__ACQ_GRUPO__ind_e__3552E9B6]') AND parent_object_id = OBJECT_ID(N'[dbo].[ACQ_GRUPO_FATURA_CRONOGRAMA]'))
ALTER TABLE [dbo].[ACQ_GRUPO_FATURA_CRONOGRAMA]  WITH CHECK ADD CHECK  (([ind_enviado] = 'N' or [ind_enviado] = 'S'))
GO
IF NOT EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK__ACQ_GRUPO__ind_e__3EDC53F0]') AND parent_object_id = OBJECT_ID(N'[dbo].[ACQ_GRUPO_FATURA_CRONOGRAMA]'))
ALTER TABLE [dbo].[ACQ_GRUPO_FATURA_CRONOGRAMA]  WITH CHECK ADD CHECK  (([ind_encerrado] = 'N' or [ind_encerrado] = 'S'))
GO
IF NOT EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK__ACQ_GRUPO__ind_f__3CF40B7E]') AND parent_object_id = OBJECT_ID(N'[dbo].[ACQ_GRUPO_FATURA_CRONOGRAMA]'))
ALTER TABLE [dbo].[ACQ_GRUPO_FATURA_CRONOGRAMA]  WITH CHECK ADD CHECK  (([ind_fatura] = 'N' or [ind_fatura] = 'S'))
GO
IF NOT EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK__ACQ_GRUPO__ind_g__336AA144]') AND parent_object_id = OBJECT_ID(N'[dbo].[ACQ_GRUPO_FATURA_CRONOGRAMA]'))
ALTER TABLE [dbo].[ACQ_GRUPO_FATURA_CRONOGRAMA]  WITH CHECK ADD CHECK  (([ind_gerado] = 'N' or [ind_gerado] = 'S'))
GO
IF NOT EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK__ACQ_GRUPO__ind_o__373B3228]') AND parent_object_id = OBJECT_ID(N'[dbo].[ACQ_GRUPO_FATURA_CRONOGRAMA]'))
ALTER TABLE [dbo].[ACQ_GRUPO_FATURA_CRONOGRAMA]  WITH CHECK ADD CHECK  (([ind_obtido] = 'N' or [ind_obtido] = 'S'))
GO
IF NOT EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK__ACQ_GRUPO__ind_p__3B0BC30C]') AND parent_object_id = OBJECT_ID(N'[dbo].[ACQ_GRUPO_FATURA_CRONOGRAMA]'))
ALTER TABLE [dbo].[ACQ_GRUPO_FATURA_CRONOGRAMA]  WITH CHECK ADD CHECK  (([ind_processado] = 'N' or [ind_processado] = 'S'))
GO
IF NOT EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK__ACQ_GRUPO__ind_v__39237A9A]') AND parent_object_id = OBJECT_ID(N'[dbo].[ACQ_GRUPO_FATURA_CRONOGRAMA]'))
ALTER TABLE [dbo].[ACQ_GRUPO_FATURA_CRONOGRAMA]  WITH CHECK ADD CHECK  (([ind_validado] = 'N' or [ind_validado] = 'S'))
GO
IF NOT EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK__ACQ_JORNA__ind_t__33D4B598]') AND parent_object_id = OBJECT_ID(N'[dbo].[ACQ_JORNADA_TRABALHO]'))
ALTER TABLE [dbo].[ACQ_JORNADA_TRABALHO]  WITH CHECK ADD CHECK  (([ind_tipo_horario_segunda] = 'NT' or ([ind_tipo_horario_segunda] = 'ES' or [ind_tipo_horario_segunda] = 'HF')))
GO
IF NOT EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK__ACQ_JORNA__ind_t__34C8D9D1]') AND parent_object_id = OBJECT_ID(N'[dbo].[ACQ_JORNADA_TRABALHO]'))
ALTER TABLE [dbo].[ACQ_JORNADA_TRABALHO]  WITH CHECK ADD CHECK  (([ind_tipo_horario_terca] = 'NT' or ([ind_tipo_horario_terca] = 'ES' or [ind_tipo_horario_terca] = 'HF')))
GO
IF NOT EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK__ACQ_JORNA__ind_t__35BCFE0A]') AND parent_object_id = OBJECT_ID(N'[dbo].[ACQ_JORNADA_TRABALHO]'))
ALTER TABLE [dbo].[ACQ_JORNADA_TRABALHO]  WITH CHECK ADD CHECK  (([ind_tipo_horario_quarta] = 'NT' or ([ind_tipo_horario_quarta] = 'ES' or [ind_tipo_horario_quarta] = 'HF')))
GO
IF NOT EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK__ACQ_JORNA__ind_t__36B12243]') AND parent_object_id = OBJECT_ID(N'[dbo].[ACQ_JORNADA_TRABALHO]'))
ALTER TABLE [dbo].[ACQ_JORNADA_TRABALHO]  WITH CHECK ADD CHECK  (([ind_tipo_horario_quinta] = 'NT' or ([ind_tipo_horario_quinta] = 'ES' or [ind_tipo_horario_quinta] = 'HF')))
GO
IF NOT EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK__ACQ_JORNA__ind_t__37A5467C]') AND parent_object_id = OBJECT_ID(N'[dbo].[ACQ_JORNADA_TRABALHO]'))
ALTER TABLE [dbo].[ACQ_JORNADA_TRABALHO]  WITH CHECK ADD CHECK  (([ind_tipo_horario_sexta] = 'NT' or ([ind_tipo_horario_sexta] = 'ES' or [ind_tipo_horario_sexta] = 'HF')))
GO
IF NOT EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK__ACQ_JORNA__ind_t__38996AB5]') AND parent_object_id = OBJECT_ID(N'[dbo].[ACQ_JORNADA_TRABALHO]'))
ALTER TABLE [dbo].[ACQ_JORNADA_TRABALHO]  WITH CHECK ADD CHECK  (([ind_tipo_horario_sabado] = 'NT' or ([ind_tipo_horario_sabado] = 'ES' or [ind_tipo_horario_sabado] = 'HF')))
GO
IF NOT EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK__ACQ_JORNA__ind_t__398D8EEE]') AND parent_object_id = OBJECT_ID(N'[dbo].[ACQ_JORNADA_TRABALHO]'))
ALTER TABLE [dbo].[ACQ_JORNADA_TRABALHO]  WITH CHECK ADD CHECK  (([ind_tipo_horario_domingo] = 'NT' or ([ind_tipo_horario_domingo] = 'ES' or [ind_tipo_horario_domingo] = 'HF')))
GO
IF NOT EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK__ACQ_WORKF__ind_t__33F4B129]') AND parent_object_id = OBJECT_ID(N'[dbo].[ACQ_WORKFLOW_EXECUCAO_SERVICO]'))
ALTER TABLE [dbo].[ACQ_WORKFLOW_EXECUCAO_SERVICO]  WITH CHECK ADD CHECK  (([ind_tipo_execucao] = 'E' or ([ind_tipo_execucao] = 'D' or [ind_tipo_execucao] = 'A')))
GO
IF NOT EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[SIS_IND_ACAO23]') AND parent_object_id = OBJECT_ID(N'[dbo].[SIS_LOG_TABELA]'))
ALTER TABLE [dbo].[SIS_LOG_TABELA]  WITH CHECK ADD  CONSTRAINT [SIS_IND_ACAO23] CHECK  (([ind_acao] = 'D' or ([ind_acao] = 'U' or [ind_acao] = 'I')))
GO
ALTER TABLE [dbo].[SIS_LOG_TABELA] CHECK CONSTRAINT [SIS_IND_ACAO23]
GO
IF NOT EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK__ACQ_ATEND__ind_e__2A164134]') AND parent_object_id = OBJECT_ID(N'[dbo].[ACQ_ATENDIMENTO]'))
ALTER TABLE [dbo].[ACQ_ATENDIMENTO]  WITH CHECK ADD CHECK  (([ind_emitir_protocolo] = 'N' or [ind_emitir_protocolo] = 'S'))
GO
IF NOT EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK__ACQ_ATEND__ind_m__282DF8C2]') AND parent_object_id = OBJECT_ID(N'[dbo].[ACQ_ATENDIMENTO]'))
ALTER TABLE [dbo].[ACQ_ATENDIMENTO]  WITH CHECK ADD CHECK  (([ind_modo_atendimento] = 'P' or [ind_modo_atendimento] = 'T'))
GO
IF NOT EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK__ACQ_TIPO___ind_e__2882FE7D]') AND parent_object_id = OBJECT_ID(N'[dbo].[ACQ_TIPO_MEDIDOR]'))
ALTER TABLE [dbo].[ACQ_TIPO_MEDIDOR]  WITH CHECK ADD CHECK  (([ind_estimativa] = 'N' or ([ind_estimativa] = 'V' or [ind_estimativa] = 'T')))
GO
IF NOT EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK__ACQ_TIPO___ind_t__297722B6]') AND parent_object_id = OBJECT_ID(N'[dbo].[ACQ_TIPO_MEDIDOR]'))
ALTER TABLE [dbo].[ACQ_TIPO_MEDIDOR]  WITH CHECK ADD CHECK  (([ind_tipo_calculo_estimativa] = 'C' or [ind_tipo_calculo_estimativa] = 'L'))
GO
IF NOT EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK__ACQ_MOVIM__ind_t__28B808A7]') AND parent_object_id = OBJECT_ID(N'[dbo].[ACQ_MOVIMENTACAO_HIDROMETRO]'))
ALTER TABLE [dbo].[ACQ_MOVIMENTACAO_HIDROMETRO]  WITH CHECK ADD CHECK  (([ind_tipo_movimentacao] = '7' or ([ind_tipo_movimentacao] = '6' or ([ind_tipo_movimentacao] = '5' or ([ind_tipo_movimentacao] = '4' or ([ind_tipo_movimentacao] = '3' or ([ind_tipo_movimentacao] = '2' or [ind_tipo_movimentacao] = '1')))))))
GO
IF NOT EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK__ACQ_FUNC___ind_p__2AD55B43]') AND parent_object_id = OBJECT_ID(N'[dbo].[ACQ_FUNC_UNIDADE_SERVICO]'))
ALTER TABLE [dbo].[ACQ_FUNC_UNIDADE_SERVICO]  WITH CHECK ADD CHECK  (([ind_padrao] = 'N' or [ind_padrao] = 'S'))
GO
IF NOT EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK__ACQ_EMPRE__ind_q__2B3F6F97]') AND parent_object_id = OBJECT_ID(N'[dbo].[ACQ_EMPREITEIRA]'))
ALTER TABLE [dbo].[ACQ_EMPREITEIRA]  WITH CHECK ADD CHECK  (([ind_quantidade_servico] = 'H' or [ind_quantidade_servico] = 'S'))
GO
IF NOT EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK__ACQ_GRUPO__ind_t__2C738AF2]') AND parent_object_id = OBJECT_ID(N'[dbo].[ACQ_GRUPO_FATURA]'))
ALTER TABLE [dbo].[ACQ_GRUPO_FATURA]  WITH CHECK ADD CHECK  (([ind_tipo_vencimento] = 'V' or ([ind_tipo_vencimento] = 'L' or [ind_tipo_vencimento] = 'D')))
GO
IF NOT EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK__ACQ_CARTE__ind_a__395884C4]') AND parent_object_id = OBJECT_ID(N'[dbo].[ACQ_CARTEIRA_COBRANCA]'))
ALTER TABLE [dbo].[ACQ_CARTEIRA_COBRANCA]  WITH CHECK ADD CHECK  (([ind_ativo] = 'N' or [ind_ativo] = 'S'))
GO
IF NOT EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK__SIS_ROTIN__ind_r__39AD8A7F]') AND parent_object_id = OBJECT_ID(N'[dbo].[SIS_ROTINA]'))
ALTER TABLE [dbo].[SIS_ROTINA]  WITH CHECK ADD CHECK  (([ind_rotina_cadastro] = 'N' or [ind_rotina_cadastro] = 'S'))
GO
IF NOT EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK__ACQ_OCORR__ind_t__4CF5691D]') AND parent_object_id = OBJECT_ID(N'[dbo].[ACQ_OCORRENCIA_MANUTENCAO]'))
ALTER TABLE [dbo].[ACQ_OCORRENCIA_MANUTENCAO]  WITH CHECK ADD CHECK  (([ind_tipo_ocorrencia] = 'D' or [ind_tipo_ocorrencia] = 'O'))
GO
IF NOT EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK__ACQ_LOCAL__ind_i__4D2A7347]') AND parent_object_id = OBJECT_ID(N'[dbo].[ACQ_LOCAL_HIDROMETRO]'))
ALTER TABLE [dbo].[ACQ_LOCAL_HIDROMETRO]  WITH CHECK ADD CHECK  (([ind_instalacao] = 'N' or [ind_instalacao] = 'S'))
GO
IF NOT EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[IND_DOCUMENTO_ORIGEM_SERVICO_PARCELA95]') AND parent_object_id = OBJECT_ID(N'[dbo].[ACQ_FATURA_SERVICO]'))
ALTER TABLE [dbo].[ACQ_FATURA_SERVICO]  WITH CHECK ADD  CONSTRAINT [IND_DOCUMENTO_ORIGEM_SERVICO_PARCELA95] CHECK  (([ind_documento_origem] = '08' or ([ind_documento_origem] = '07' or ([ind_documento_origem] = '06' or ([ind_documento_origem] = '05' or ([ind_documento_origem] = '04' or ([ind_documento_origem] = '03' or ([ind_documento_origem] = '02' or [ind_documento_origem] = '01'))))))))
GO
ALTER TABLE [dbo].[ACQ_FATURA_SERVICO] CHECK CONSTRAINT [IND_DOCUMENTO_ORIGEM_SERVICO_PARCELA95]
GO
IF NOT EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK__SIS_PARAM__ind_t__5090EFD7]') AND parent_object_id = OBJECT_ID(N'[dbo].[SIS_PARAMETRO]'))
ALTER TABLE [dbo].[SIS_PARAMETRO]  WITH CHECK ADD CHECK  (([ind_tipo_parametro] = 'B' or ([ind_tipo_parametro] = 'N' or [ind_tipo_parametro] = 'S')))
GO
IF NOT EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[IND_TIPO_CORRECAO5]') AND parent_object_id = OBJECT_ID(N'[dbo].[ACQ_INDICE_CORRECAO]'))
ALTER TABLE [dbo].[ACQ_INDICE_CORRECAO]  WITH CHECK ADD  CONSTRAINT [IND_TIPO_CORRECAO5] CHECK  (([ind_tipo_correcao] = 'P' or [ind_tipo_correcao] = 'V'))
GO
ALTER TABLE [dbo].[ACQ_INDICE_CORRECAO] CHECK CONSTRAINT [IND_TIPO_CORRECAO5]
GO
IF NOT EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[IND_TIPO_NUMERACAO3]') AND parent_object_id = OBJECT_ID(N'[dbo].[ACQ_LOGRADOURO_BAIRRO]'))
ALTER TABLE [dbo].[ACQ_LOGRADOURO_BAIRRO]  WITH CHECK ADD  CONSTRAINT [IND_TIPO_NUMERACAO3] CHECK  (([ind_tipo_numeracao] = 'T' or ([ind_tipo_numeracao] = 'I' or [ind_tipo_numeracao] = 'P')))
GO
ALTER TABLE [dbo].[ACQ_LOGRADOURO_BAIRRO] CHECK CONSTRAINT [IND_TIPO_NUMERACAO3]
GO
IF NOT EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK__ACQ_LOTE___ind_d__5224328E]') AND parent_object_id = OBJECT_ID(N'[dbo].[ACQ_LOTE_ITEM]'))
ALTER TABLE [dbo].[ACQ_LOTE_ITEM]  WITH CHECK ADD CHECK  (([ind_divergente] = 'N' or [ind_divergente] = 'S'))
GO
IF NOT EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK__ACQ_LOTE___ind_f__531856C7]') AND parent_object_id = OBJECT_ID(N'[dbo].[ACQ_LOTE_ITEM]'))
ALTER TABLE [dbo].[ACQ_LOTE_ITEM]  WITH CHECK ADD CHECK  (([ind_forma_arrecadacao] = '4' or ([ind_forma_arrecadacao] = '3' or ([ind_forma_arrecadacao] = '2' or [ind_forma_arrecadacao] = '1'))))
GO
IF NOT EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[SIM_NAO1580]') AND parent_object_id = OBJECT_ID(N'[dbo].[SIS_USUARIO_UNIDADE]'))
ALTER TABLE [dbo].[SIS_USUARIO_UNIDADE]  WITH CHECK ADD  CONSTRAINT [SIM_NAO1580] CHECK  (([ind_administrador] = 'N' or [ind_administrador] = 'S'))
GO
ALTER TABLE [dbo].[SIS_USUARIO_UNIDADE] CHECK CONSTRAINT [SIM_NAO1580]
GO
IF NOT EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK__ACQ_ORDEM__ind_t__53A266AC]') AND parent_object_id = OBJECT_ID(N'[dbo].[ACQ_ORDEM_SERVICO_ACAO]'))
ALTER TABLE [dbo].[ACQ_ORDEM_SERVICO_ACAO]  WITH CHECK ADD CHECK  (([ind_tipo_acao] = 3 or ([ind_tipo_acao] = 2 or [ind_tipo_acao] = 1)))
GO
IF NOT EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK__ACQ_MANUT__ind_e__54CB950F]') AND parent_object_id = OBJECT_ID(N'[dbo].[ACQ_MANUTENCAO_HIDROMETRO]'))
ALTER TABLE [dbo].[ACQ_MANUTENCAO_HIDROMETRO]  WITH CHECK ADD CHECK  (([ind_estado_medidor] = '3' or ([ind_estado_medidor] = '2' or [ind_estado_medidor] = '1')))
GO
IF NOT EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK__ACQ_MANUT__ind_r__53D770D6]') AND parent_object_id = OBJECT_ID(N'[dbo].[ACQ_MANUTENCAO_HIDROMETRO]'))
ALTER TABLE [dbo].[ACQ_MANUTENCAO_HIDROMETRO]  WITH CHECK ADD CHECK  (([ind_resultado] = '5' or ([ind_resultado] = '4' or ([ind_resultado] = '3' or ([ind_resultado] = '2 ' or [ind_resultado] = '1')))))
GO
IF NOT EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK__ACQ_CAIXA__ind_t__55F4C372]') AND parent_object_id = OBJECT_ID(N'[dbo].[ACQ_CAIXA_OPERACAO]'))
ALTER TABLE [dbo].[ACQ_CAIXA_OPERACAO]  WITH CHECK ADD CHECK  (([ind_tipo_operacao] = '99' or ([ind_tipo_operacao] = '06' or ([ind_tipo_operacao] = '05' or ([ind_tipo_operacao] = '04' or ([ind_tipo_operacao] = '03' or ([ind_tipo_operacao] = '02' or [ind_tipo_operacao] = '01')))))))
GO
IF NOT EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK__ACQ_CAIXA__ind_t__56E8E7AB]') AND parent_object_id = OBJECT_ID(N'[dbo].[ACQ_CAIXA_OPERACAO]'))
ALTER TABLE [dbo].[ACQ_CAIXA_OPERACAO]  WITH CHECK ADD CHECK  (([ind_tipo_documento] = 'B' or [ind_tipo_documento] = 'F'))
GO
IF NOT EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK__ACQ_POLIT__ind_c__5812160E]') AND parent_object_id = OBJECT_ID(N'[dbo].[ACQ_POLITICA_CORTE]'))
ALTER TABLE [dbo].[ACQ_POLITICA_CORTE]  WITH CHECK ADD CHECK  (([ind_confirma_entrega] = 'N' or [ind_confirma_entrega] = 'S'))
GO
IF NOT EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK__ACQ_POLIT__ind_e__59063A47]') AND parent_object_id = OBJECT_ID(N'[dbo].[ACQ_POLITICA_CORTE]'))
ALTER TABLE [dbo].[ACQ_POLITICA_CORTE]  WITH CHECK ADD CHECK  (([ind_evento_anterior] = 'F' or ([ind_evento_anterior] = 'R ' or ([ind_evento_anterior] = 'C' or ([ind_evento_anterior] = 'N' or ([ind_evento_anterior] = 'D' or [ind_evento_anterior] = 'V'))))))
GO
IF NOT EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK__ACQ_POLIT__ind_p__5BE2A6F2]') AND parent_object_id = OBJECT_ID(N'[dbo].[ACQ_POLITICA_CORTE]'))
ALTER TABLE [dbo].[ACQ_POLITICA_CORTE]  WITH CHECK ADD CHECK  (([ind_pagavel] = 'N' or [ind_pagavel] = 'S'))
GO
IF NOT EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK__ACQ_POLIT__ind_t__59FA5E80]') AND parent_object_id = OBJECT_ID(N'[dbo].[ACQ_POLITICA_CORTE]'))
ALTER TABLE [dbo].[ACQ_POLITICA_CORTE]  WITH CHECK ADD CHECK  (([ind_tipo_evento] = 'F' or ([ind_tipo_evento] = 'R ' or ([ind_tipo_evento] = 'C' or ([ind_tipo_evento] = 'N' or ([ind_tipo_evento] = 'D' or [ind_tipo_evento] = 'V'))))))
GO
IF NOT EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK__ACQ_POLIT__ind_t__5AEE82B9]') AND parent_object_id = OBJECT_ID(N'[dbo].[ACQ_POLITICA_CORTE]'))
ALTER TABLE [dbo].[ACQ_POLITICA_CORTE]  WITH CHECK ADD CHECK  (([ind_tipo_corte] = 'R' or ([ind_tipo_corte] = 'C' or [ind_tipo_corte] = 'S')))
GO
IF NOT EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[IND_CANCELAMENTO_SERVICO_PARCELA41]') AND parent_object_id = OBJECT_ID(N'[dbo].[ACQ_MATRICULA_SERVICO_PARCELA]'))
ALTER TABLE [dbo].[ACQ_MATRICULA_SERVICO_PARCELA]  WITH CHECK ADD  CONSTRAINT [IND_CANCELAMENTO_SERVICO_PARCELA41] CHECK  (([ind_motivo_cancelamento] = 'R'))
GO
ALTER TABLE [dbo].[ACQ_MATRICULA_SERVICO_PARCELA] CHECK CONSTRAINT [IND_CANCELAMENTO_SERVICO_PARCELA41]
GO
IF NOT EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[IND_DOCUMENTO_ORIGEM_SERVICO_PARCELA96]') AND parent_object_id = OBJECT_ID(N'[dbo].[ACQ_MATRICULA_SERVICO_PARCELA]'))
ALTER TABLE [dbo].[ACQ_MATRICULA_SERVICO_PARCELA]  WITH CHECK ADD  CONSTRAINT [IND_DOCUMENTO_ORIGEM_SERVICO_PARCELA96] CHECK  (([ind_documento_origem] = '08' or ([ind_documento_origem] = '07' or ([ind_documento_origem] = '06' or ([ind_documento_origem] = '05' or ([ind_documento_origem] = '04' or ([ind_documento_origem] = '03' or ([ind_documento_origem] = '02' or [ind_documento_origem] = '01'))))))))
GO
ALTER TABLE [dbo].[ACQ_MATRICULA_SERVICO_PARCELA] CHECK CONSTRAINT [IND_DOCUMENTO_ORIGEM_SERVICO_PARCELA96]
GO
IF NOT EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[IND_STATUS_SERVICO_PARCELA39]') AND parent_object_id = OBJECT_ID(N'[dbo].[ACQ_MATRICULA_SERVICO_PARCELA]'))
ALTER TABLE [dbo].[ACQ_MATRICULA_SERVICO_PARCELA]  WITH CHECK ADD  CONSTRAINT [IND_STATUS_SERVICO_PARCELA39] CHECK  (([ind_status] = 'C' or ([ind_status] = 'P' or ([ind_status] = 'F' or [ind_status] = 'A'))))
GO
ALTER TABLE [dbo].[ACQ_MATRICULA_SERVICO_PARCELA] CHECK CONSTRAINT [IND_STATUS_SERVICO_PARCELA39]
GO
IF NOT EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK__ACQ_ESPEC__ind_t__5AB9788F]') AND parent_object_id = OBJECT_ID(N'[dbo].[ACQ_ESPECIE_PAGAMENTO]'))
ALTER TABLE [dbo].[ACQ_ESPECIE_PAGAMENTO]  WITH CHECK ADD CHECK  (([ind_troco] = 'N' or [ind_troco] = 'S'))
GO
IF NOT EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[IND_DOCUMENTO_ORIGEM_SERVICO_PARCELA97]') AND parent_object_id = OBJECT_ID(N'[dbo].[ACQ_MOVIMENTO_SERVICO]'))
ALTER TABLE [dbo].[ACQ_MOVIMENTO_SERVICO]  WITH CHECK ADD  CONSTRAINT [IND_DOCUMENTO_ORIGEM_SERVICO_PARCELA97] CHECK  (([ind_documento_origem] = '08' or ([ind_documento_origem] = '07' or ([ind_documento_origem] = '06' or ([ind_documento_origem] = '05' or ([ind_documento_origem] = '04' or ([ind_documento_origem] = '03' or ([ind_documento_origem] = '02' or [ind_documento_origem] = '01'))))))))
GO
ALTER TABLE [dbo].[ACQ_MOVIMENTO_SERVICO] CHECK CONSTRAINT [IND_DOCUMENTO_ORIGEM_SERVICO_PARCELA97]
GO
IF NOT EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK__ACQ_MATRI__ind_m__5D60DB10]') AND parent_object_id = OBJECT_ID(N'[dbo].[ACQ_MATRICULA_DEB_AUTOMATICO]'))
ALTER TABLE [dbo].[ACQ_MATRICULA_DEB_AUTOMATICO]  WITH CHECK ADD CHECK  (([ind_movimento] = '2' or [ind_movimento] = '1'))
GO
IF NOT EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK__ACQ_PROCE__ind_m__5EBF139D]') AND parent_object_id = OBJECT_ID(N'[dbo].[ACQ_PROCESSO_CORTE]'))
ALTER TABLE [dbo].[ACQ_PROCESSO_CORTE]  WITH CHECK ADD CHECK  (([ind_motivo_fechamento] = 'C' or [ind_motivo_fechamento] = 'P'))
GO
IF NOT EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[IND_SITUACAO_AGUA143]') AND parent_object_id = OBJECT_ID(N'[dbo].[ACQ_MOVIMENTO_TAXA]'))
ALTER TABLE [dbo].[ACQ_MOVIMENTO_TAXA]  WITH CHECK ADD  CONSTRAINT [IND_SITUACAO_AGUA143] CHECK  (([ind_situacao] = '5' or ([ind_situacao] = '4' or ([ind_situacao] = '3' or ([ind_situacao] = '2' or [ind_situacao] = '1')))))
GO
ALTER TABLE [dbo].[ACQ_MOVIMENTO_TAXA] CHECK CONSTRAINT [IND_SITUACAO_AGUA143]
GO
IF NOT EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[IND_TIPO_CONSUMO_FATURADO65]') AND parent_object_id = OBJECT_ID(N'[dbo].[ACQ_MOVIMENTO_TAXA]'))
ALTER TABLE [dbo].[ACQ_MOVIMENTO_TAXA]  WITH CHECK ADD  CONSTRAINT [IND_TIPO_CONSUMO_FATURADO65] CHECK  (([ind_tipo_consumo] = 'F' or ([ind_tipo_consumo] = 'E' or ([ind_tipo_consumo] = 'L' or [ind_tipo_consumo] = 'A'))))
GO
ALTER TABLE [dbo].[ACQ_MOVIMENTO_TAXA] CHECK CONSTRAINT [IND_TIPO_CONSUMO_FATURADO65]
GO
IF NOT EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK__ACQ_MATRI__ind_p__61316BF4]') AND parent_object_id = OBJECT_ID(N'[dbo].[ACQ_MATRICULA_ENTREGA]'))
ALTER TABLE [dbo].[ACQ_MATRICULA_ENTREGA]  WITH CHECK ADD CHECK  (([ind_postagem] = 'N' or [ind_postagem] = 'S'))
GO
IF NOT EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK__ACQ_CAMPO__ind_a__6442E2C9]') AND parent_object_id = OBJECT_ID(N'[dbo].[ACQ_CAMPOS_CADASTRO]'))
ALTER TABLE [dbo].[ACQ_CAMPOS_CADASTRO]  WITH CHECK ADD CHECK  (([ind_alterar] = 'N' or [ind_alterar] = 'S'))
GO
IF NOT EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK__ACQ_CAMPO__ind_o__662B2B3B]') AND parent_object_id = OBJECT_ID(N'[dbo].[ACQ_CAMPOS_CADASTRO]'))
ALTER TABLE [dbo].[ACQ_CAMPOS_CADASTRO]  WITH CHECK ADD CHECK  (([ind_obrigatorio] = 'N' or [ind_obrigatorio] = 'S'))
GO
IF NOT EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK__ACQ_DEBIT__ind_t__40F9A68C]') AND parent_object_id = OBJECT_ID(N'[dbo].[ACQ_DEBITO_CONVENIO]'))
ALTER TABLE [dbo].[ACQ_DEBITO_CONVENIO]  WITH CHECK ADD CHECK  (([ind_tipo_convenio] = '0' or ([ind_tipo_convenio] = '3' or ([ind_tipo_convenio] = '2' or [ind_tipo_convenio] = '1'))))
GO
IF NOT EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK__ACQ_DEBIT__ind_s__43D61337]') AND parent_object_id = OBJECT_ID(N'[dbo].[ACQ_DEBITO_RETORNO]'))
ALTER TABLE [dbo].[ACQ_DEBITO_RETORNO]  WITH CHECK ADD CHECK  (([ind_status] = 'L' or ([ind_status] = 'C' or ([ind_status] = 'P' or [ind_status] = 'R'))))
GO
IF NOT EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[IND_GRUPO_SERVICO23]') AND parent_object_id = OBJECT_ID(N'[dbo].[ACQ_TIPO_SERVICO]'))
ALTER TABLE [dbo].[ACQ_TIPO_SERVICO]  WITH CHECK ADD  CONSTRAINT [IND_GRUPO_SERVICO23] CHECK  (([ind_grupo_servico] = 'AV' or ([ind_grupo_servico] = 'OR' or ([ind_grupo_servico] = 'CC' or ([ind_grupo_servico] = 'RE' or ([ind_grupo_servico] = 'LI' or ([ind_grupo_servico] = 'IN' or ([ind_grupo_servico] = 'CL' or [ind_grupo_servico] = 'AD'))))))))
GO
ALTER TABLE [dbo].[ACQ_TIPO_SERVICO] CHECK CONSTRAINT [IND_GRUPO_SERVICO23]
GO
IF NOT EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[IND_ESTIMATIVA19]') AND parent_object_id = OBJECT_ID(N'[dbo].[ACQ_AREA_ATUACAO]'))
ALTER TABLE [dbo].[ACQ_AREA_ATUACAO]  WITH CHECK ADD  CONSTRAINT [IND_ESTIMATIVA19] CHECK  (([ind_estimativa] = 'N' or ([ind_estimativa] = 'V' or [ind_estimativa] = 'T')))
GO
ALTER TABLE [dbo].[ACQ_AREA_ATUACAO] CHECK CONSTRAINT [IND_ESTIMATIVA19]
GO
IF NOT EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[IND_TIPO_CALCULO_ESTIMATIVA19]') AND parent_object_id = OBJECT_ID(N'[dbo].[ACQ_AREA_ATUACAO]'))
ALTER TABLE [dbo].[ACQ_AREA_ATUACAO]  WITH CHECK ADD  CONSTRAINT [IND_TIPO_CALCULO_ESTIMATIVA19] CHECK  (([ind_tipo_calculo_estimativa] = 'C' or [ind_tipo_calculo_estimativa] = 'L'))
GO
ALTER TABLE [dbo].[ACQ_AREA_ATUACAO] CHECK CONSTRAINT [IND_TIPO_CALCULO_ESTIMATIVA19]
GO
IF NOT EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK__ACQ_BOLET__ind_t__3C34F16F]') AND parent_object_id = OBJECT_ID(N'[dbo].[ACQ_BOLETO_BANCARIO]'))
ALTER TABLE [dbo].[ACQ_BOLETO_BANCARIO]  WITH CHECK ADD CHECK  (([ind_tipo_documento] = '8' or ([ind_tipo_documento] = '7' or ([ind_tipo_documento] = '6' or ([ind_tipo_documento] = '5' or ([ind_tipo_documento] = '4' or ([ind_tipo_documento] = '3' or ([ind_tipo_documento] = '2' or [ind_tipo_documento] = '1'))))))))
GO
IF NOT EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK__SIS_GRUPO__ind_e__3F6663D5]') AND parent_object_id = OBJECT_ID(N'[dbo].[SIS_GRUPO_ROTINA]'))
ALTER TABLE [dbo].[SIS_GRUPO_ROTINA]  WITH CHECK ADD CHECK  (([ind_excluir] = 'N' or [ind_excluir] = 'S'))
GO
IF NOT EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK__SIS_GRUPO__ind_g__3D7E1B63]') AND parent_object_id = OBJECT_ID(N'[dbo].[SIS_GRUPO_ROTINA]'))
ALTER TABLE [dbo].[SIS_GRUPO_ROTINA]  WITH CHECK ADD CHECK  (([ind_gravar] = 'N' or [ind_gravar] = 'S'))
GO
IF NOT EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK__ACQ_LOTE__ind_di__46B27FE2]') AND parent_object_id = OBJECT_ID(N'[dbo].[ACQ_LOTE]'))
ALTER TABLE [dbo].[ACQ_LOTE]  WITH CHECK ADD CHECK  (([ind_divergente] = 'N' or [ind_divergente] = 'S'))
GO
IF NOT EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK__ACQ_LOTE__ind_st__47A6A41B]') AND parent_object_id = OBJECT_ID(N'[dbo].[ACQ_LOTE]'))
ALTER TABLE [dbo].[ACQ_LOTE]  WITH CHECK ADD CHECK  (([ind_status_lote] = 'C' or ([ind_status_lote] = 'F' or ([ind_status_lote] = 'P' or ([ind_status_lote] = 'V' or [ind_status_lote] = 'A')))))
GO
IF NOT EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK__ACQ_LAYOU__ind_i__4A4E069C]') AND parent_object_id = OBJECT_ID(N'[dbo].[ACQ_LAYOUT_ITEM]'))
ALTER TABLE [dbo].[ACQ_LAYOUT_ITEM]  WITH CHECK ADD CHECK  (([ind_imprime] = 'N' or [ind_imprime] = 'S'))
GO
IF NOT EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK__ACQ_LAYOU__ind_l__477199F1]') AND parent_object_id = OBJECT_ID(N'[dbo].[ACQ_LAYOUT_ITEM]'))
ALTER TABLE [dbo].[ACQ_LAYOUT_ITEM]  WITH CHECK ADD CHECK  (([ind_layout_grupo] = '09' or ([ind_layout_grupo] = '08' or ([ind_layout_grupo] = '07' or ([ind_layout_grupo] = '06' or ([ind_layout_grupo] = '05' or ([ind_layout_grupo] = '04' or ([ind_layout_grupo] = '03' or ([ind_layout_grupo] = '02' or [ind_layout_grupo] = '01')))))))))
GO
IF NOT EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK__ACQ_LAYOU__ind_l__4865BE2A]') AND parent_object_id = OBJECT_ID(N'[dbo].[ACQ_LAYOUT_ITEM]'))
ALTER TABLE [dbo].[ACQ_LAYOUT_ITEM]  WITH CHECK ADD CHECK  (([ind_layout_item] = '0901' or ([ind_layout_item] = '0807' or ([ind_layout_item] = '0806' or ([ind_layout_item] = '0805' or ([ind_layout_item] = '0804' or ([ind_layout_item] = '0803' or ([ind_layout_item] = '0802' or ([ind_layout_item] = '0801' or ([ind_layout_item] = '0705' or ([ind_layout_item] = '0704' or ([ind_layout_item] = '0703' or ([ind_layout_item] = '0702' or ([ind_layout_item] = '0701' or ([ind_layout_item] = '0601' or ([ind_layout_item] = '0524' or ([ind_layout_item] = '0523' or ([ind_layout_item] = '0522' or ([ind_layout_item] = '0521' or ([ind_layout_item] = '0520' or ([ind_layout_item] = '0519' or ([ind_layout_item] = '0518' or ([ind_layout_item] = '0517' or ([ind_layout_item] = '0516' or ([ind_layout_item] = '0515' or ([ind_layout_item] = '0514' or ([ind_layout_item] = '0513' or ([ind_layout_item] = '0512' or ([ind_layout_item] = '0511' or ([ind_layout_item] = '0510' or ([ind_layout_item] = '0509' or ([ind_layout_item] = '0508' or ([ind_layout_item] = '0507' or ([ind_layout_item] = '0506' or ([ind_layout_item] = '0505' or ([ind_layout_item] = '0504' or ([ind_layout_item] = '0503' or ([ind_layout_item] = '0502' or ([ind_layout_item] = '0501' or ([ind_layout_item] = '0404' or ([ind_layout_item] = '0403' or ([ind_layout_item] = '0402' or ([ind_layout_item] = '0401' or ([ind_layout_item] = '0309' or ([ind_layout_item] = '0308' or ([ind_layout_item] = '0307' or ([ind_layout_item] = '0306' or ([ind_layout_item] = '0305' or ([ind_layout_item] = '0304' or ([ind_layout_item] = '0303' or ([ind_layout_item] = '0302' or ([ind_layout_item] = '0301' or ([ind_layout_item] = '0206' or ([ind_layout_item] = '0205' or ([ind_layout_item] = '0204' or ([ind_layout_item] = '0203' or ([ind_layout_item] = '0202' or ([ind_layout_item] = '0201' or ([ind_layout_item] = '0115' or ([ind_layout_item] = '0114' or ([ind_layout_item] = '0113' or ([ind_layout_item] = '0112' or ([ind_layout_item] = '0111' or ([ind_layout_item] = '0110' or ([ind_layout_item] = '0109' or ([ind_layout_item] = '0108' or ([ind_layout_item] = '0107' or ([ind_layout_item] = '0106' or ([ind_layout_item] = '0105' or ([ind_layout_item] = '0104' or ([ind_layout_item] = '0103' or ([ind_layout_item] = '0102' or [ind_layout_item] = '0101'))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
GO
IF NOT EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK__ACQ_NEGOC__ind_t__4830B400]') AND parent_object_id = OBJECT_ID(N'[dbo].[ACQ_NEGOCIACAO_PARCELA]'))
ALTER TABLE [dbo].[ACQ_NEGOCIACAO_PARCELA]  WITH CHECK ADD CHECK  (([ind_tipo_parcela] = 'E' or [ind_tipo_parcela] = 'S'))
GO
IF NOT EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK__ACQ_NEGOC__ind_t__4A18FC72]') AND parent_object_id = OBJECT_ID(N'[dbo].[ACQ_NEGOCIACAO_PARCELA]'))
ALTER TABLE [dbo].[ACQ_NEGOCIACAO_PARCELA]  WITH CHECK ADD CHECK  (([ind_temporada] = 'N' or [ind_temporada] = 'S'))
GO
IF NOT EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK__ACQ_CAIXA__ind_a__4B7734FF]') AND parent_object_id = OBJECT_ID(N'[dbo].[ACQ_CAIXA_OPERADOR]'))
ALTER TABLE [dbo].[ACQ_CAIXA_OPERADOR]  WITH CHECK ADD CHECK  (([ind_ativo] = 'N' or [ind_ativo] = 'S'))
GO
IF NOT EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK__ACQ_MATRI__ind_c__6F7F8B4B]') AND parent_object_id = OBJECT_ID(N'[dbo].[ACQ_MATRICULA_ESPECIAL]'))
ALTER TABLE [dbo].[ACQ_MATRICULA_ESPECIAL]  WITH CHECK ADD CHECK  (([ind_categoria_pagamento] = '2' or ([ind_categoria_pagamento] = '1' or [ind_categoria_pagamento] = '0')))
GO
IF NOT EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK__ACQ_MATRI__ind_l__68D28DBC]') AND parent_object_id = OBJECT_ID(N'[dbo].[ACQ_MATRICULA_ESPECIAL]'))
ALTER TABLE [dbo].[ACQ_MATRICULA_ESPECIAL]  WITH CHECK ADD CHECK  (([ind_ligacao_vip] = 'N' or [ind_ligacao_vip] = 'S'))
GO
IF NOT EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK__ACQ_MATRI__ind_l__6ABAD62E]') AND parent_object_id = OBJECT_ID(N'[dbo].[ACQ_MATRICULA_ESPECIAL]'))
ALTER TABLE [dbo].[ACQ_MATRICULA_ESPECIAL]  WITH CHECK ADD CHECK  (([ind_ligacao_suspeita] = 'N' or [ind_ligacao_suspeita] = 'S'))
GO
IF NOT EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK__ACQ_MATRI__ind_l__6CA31EA0]') AND parent_object_id = OBJECT_ID(N'[dbo].[ACQ_MATRICULA_ESPECIAL]'))
ALTER TABLE [dbo].[ACQ_MATRICULA_ESPECIAL]  WITH CHECK ADD CHECK  (([ind_ligacao_clandestina] = 'N' or [ind_ligacao_clandestina] = 'S'))
GO
IF NOT EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK__ACQ_MATRI__ind_n__7073AF84]') AND parent_object_id = OBJECT_ID(N'[dbo].[ACQ_MATRICULA_ESPECIAL]'))
ALTER TABLE [dbo].[ACQ_MATRICULA_ESPECIAL]  WITH CHECK ADD CHECK  (([ind_nivel_contaminacao] = '3' or ([ind_nivel_contaminacao] = '2' or ([ind_nivel_contaminacao] = '1' or [ind_nivel_contaminacao] = '0'))))
GO
IF NOT EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK__ACQ_MATRI__ind_p__6E8B6712]') AND parent_object_id = OBJECT_ID(N'[dbo].[ACQ_MATRICULA_ESPECIAL]'))
ALTER TABLE [dbo].[ACQ_MATRICULA_ESPECIAL]  WITH CHECK ADD CHECK  (([ind_processo_judicial] = 'N' or [ind_processo_judicial] = 'S'))
GO
IF NOT EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[IND_CONSUMO_OCORRENCIA32]') AND parent_object_id = OBJECT_ID(N'[dbo].[ACQ_OCORRENCIA]'))
ALTER TABLE [dbo].[ACQ_OCORRENCIA]  WITH CHECK ADD  CONSTRAINT [IND_CONSUMO_OCORRENCIA32] CHECK  (([ind_consumo] = '10' or ([ind_consumo] = '9' or ([ind_consumo] = '8' or ([ind_consumo] = '7' or ([ind_consumo] = '6' or ([ind_consumo] = '5' or ([ind_consumo] = '4' or ([ind_consumo] = '3' or ([ind_consumo] = '2' or ([ind_consumo] = '1' or [ind_consumo] = '0')))))))))))
GO
ALTER TABLE [dbo].[ACQ_OCORRENCIA] CHECK CONSTRAINT [IND_CONSUMO_OCORRENCIA32]
GO
IF NOT EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[IND_EMITE12]') AND parent_object_id = OBJECT_ID(N'[dbo].[ACQ_OCORRENCIA]'))
ALTER TABLE [dbo].[ACQ_OCORRENCIA]  WITH CHECK ADD  CONSTRAINT [IND_EMITE12] CHECK  (([ind_emite] = 'R' or ([ind_emite] = 'N' or [ind_emite] = 'S')))
GO
ALTER TABLE [dbo].[ACQ_OCORRENCIA] CHECK CONSTRAINT [IND_EMITE12]
GO
IF NOT EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[IND_GRUPO_OCORRENCIA32]') AND parent_object_id = OBJECT_ID(N'[dbo].[ACQ_OCORRENCIA]'))
ALTER TABLE [dbo].[ACQ_OCORRENCIA]  WITH CHECK ADD  CONSTRAINT [IND_GRUPO_OCORRENCIA32] CHECK  (([ind_grupo] = 'O' or ([ind_grupo] = 'I' or ([ind_grupo] = 'H' or ([ind_grupo] = 'D' or [ind_grupo] = 'B')))))
GO
ALTER TABLE [dbo].[ACQ_OCORRENCIA] CHECK CONSTRAINT [IND_GRUPO_OCORRENCIA32]
GO
IF NOT EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[IND_LEITURA_OCORRENCIA32]') AND parent_object_id = OBJECT_ID(N'[dbo].[ACQ_OCORRENCIA]'))
ALTER TABLE [dbo].[ACQ_OCORRENCIA]  WITH CHECK ADD  CONSTRAINT [IND_LEITURA_OCORRENCIA32] CHECK  (([ind_leitura] = 'P' or ([ind_leitura] = 'N' or [ind_leitura] = 'S')))
GO
ALTER TABLE [dbo].[ACQ_OCORRENCIA] CHECK CONSTRAINT [IND_LEITURA_OCORRENCIA32]
GO
IF NOT EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[SIM_NAO1587]') AND parent_object_id = OBJECT_ID(N'[dbo].[ACQ_OCORRENCIA]'))
ALTER TABLE [dbo].[ACQ_OCORRENCIA]  WITH CHECK ADD  CONSTRAINT [SIM_NAO1587] CHECK  (([ind_ativo] = 'N' or [ind_ativo] = 'S'))
GO
ALTER TABLE [dbo].[ACQ_OCORRENCIA] CHECK CONSTRAINT [SIM_NAO1587]
GO
IF NOT EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK__ACQ_CEP__ind_tip__6AEFE058]') AND parent_object_id = OBJECT_ID(N'[dbo].[ACQ_CEP]'))
ALTER TABLE [dbo].[ACQ_CEP]  WITH CHECK ADD CHECK  (([ind_tipo_cep] = 'P' or ([ind_tipo_cep] = 'G' or ([ind_tipo_cep] = 'U' or ([ind_tipo_cep] = 'L' or [ind_tipo_cep] = 'C')))))
GO
IF NOT EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK__ACQ_PARAM__ind_r__6D6238AF]') AND parent_object_id = OBJECT_ID(N'[dbo].[ACQ_PARAMETRO_RETENCAO]'))
ALTER TABLE [dbo].[ACQ_PARAMETRO_RETENCAO]  WITH CHECK ADD CHECK  (([ind_retencao] = 'D' or [ind_retencao] = 'A'))
GO
IF NOT EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK__ACQ_PARAM__ind_u__6E565CE8]') AND parent_object_id = OBJECT_ID(N'[dbo].[ACQ_PARAMETRO_RETENCAO]'))
ALTER TABLE [dbo].[ACQ_PARAMETRO_RETENCAO]  WITH CHECK ADD CHECK  (([ind_unidade_variacao] = 'P' or [ind_unidade_variacao] = 'C'))
GO
IF NOT EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK__ACQ_CHECK__ind_o__6EC0713C]') AND parent_object_id = OBJECT_ID(N'[dbo].[ACQ_CHECKLIST_ITEM]'))
ALTER TABLE [dbo].[ACQ_CHECKLIST_ITEM]  WITH CHECK ADD CHECK  (([ind_obrigatorio] = 'N' or [ind_obrigatorio] = 'S'))
GO
IF NOT EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK__ACQ_COMPO__ind_t__719CDDE7]') AND parent_object_id = OBJECT_ID(N'[dbo].[ACQ_COMPOSICAO_NUMERO_CAMPO]'))
ALTER TABLE [dbo].[ACQ_COMPOSICAO_NUMERO_CAMPO]  WITH CHECK ADD CHECK  (([ind_tipo] = 'D' or ([ind_tipo] = 'N' or [ind_tipo] = 'A')))
GO
IF NOT EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK__ACQ_MATRI__ind_e__753864A1]') AND parent_object_id = OBJECT_ID(N'[dbo].[ACQ_MATRICULA_HIDROMETRO]'))
ALTER TABLE [dbo].[ACQ_MATRICULA_HIDROMETRO]  WITH CHECK ADD CHECK  (([ind_estado_retirada] = 'O' or ([ind_estado_retirada] = 'A' or ([ind_estado_retirada] = 'P' or ([ind_estado_retirada] = 'S' or ([ind_estado_retirada] = 'Q' or [ind_estado_retirada] = 'C'))))))
GO
IF NOT EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK__ACQ_MATRI__ind_m__74444068]') AND parent_object_id = OBJECT_ID(N'[dbo].[ACQ_MATRICULA_HIDROMETRO]'))
ALTER TABLE [dbo].[ACQ_MATRICULA_HIDROMETRO]  WITH CHECK ADD CHECK  (([ind_motivo_retirada] = 'D' or ([ind_motivo_retirada] = 'T' or ([ind_motivo_retirada] = 'V' or ([ind_motivo_retirada] = 'E' or ([ind_motivo_retirada] = 'P' or ([ind_motivo_retirada] = 'C' or ([ind_motivo_retirada] = 'I' or ([ind_motivo_retirada] = 'A' or [ind_motivo_retirada] = 'R')))))))))
GO
IF NOT EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK__ACQ_CONTA__ind_o__74794A92]') AND parent_object_id = OBJECT_ID(N'[dbo].[ACQ_CONTA_CORRENTE]'))
ALTER TABLE [dbo].[ACQ_CONTA_CORRENTE]  WITH CHECK ADD CHECK  (([ind_origem_movimento] = '06' or ([ind_origem_movimento] = '05' or ([ind_origem_movimento] = '04' or ([ind_origem_movimento] = '03' or ([ind_origem_movimento] = '02' or [ind_origem_movimento] = '01'))))))
GO
IF NOT EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK__ACQ_CONTA__ind_t__756D6ECB]') AND parent_object_id = OBJECT_ID(N'[dbo].[ACQ_CONTA_CORRENTE]'))
ALTER TABLE [dbo].[ACQ_CONTA_CORRENTE]  WITH CHECK ADD CHECK  (([ind_tipo_documento] = 'E' or ([ind_tipo_documento] = 'B' or [ind_tipo_documento] = 'F')))
GO
IF NOT EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK__ACQ_HIDRO__ind_s__75A278F5]') AND parent_object_id = OBJECT_ID(N'[dbo].[ACQ_HIDROMETRO]'))
ALTER TABLE [dbo].[ACQ_HIDROMETRO]  WITH CHECK ADD CHECK  (([ind_status] = 'B' or ([ind_status] = 'M' or ([ind_status] = 'U' or [ind_status] = 'L'))))
GO
IF NOT EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK__ACQ_HIDRO__ind_t__74AE54BC]') AND parent_object_id = OBJECT_ID(N'[dbo].[ACQ_HIDROMETRO]'))
ALTER TABLE [dbo].[ACQ_HIDROMETRO]  WITH CHECK ADD CHECK  (([ind_tipo_hidrometro] = 'C' or [ind_tipo_hidrometro] = 'P'))
GO
IF NOT EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK__ACQ_HIDRO__ind_t__76969D2E]') AND parent_object_id = OBJECT_ID(N'[dbo].[ACQ_HIDROMETRO]'))
ALTER TABLE [dbo].[ACQ_HIDROMETRO]  WITH CHECK ADD CHECK  (([ind_transmissao] = '2' or [ind_transmissao] = '1'))
GO
IF NOT EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[IND_TIPO_DESCONTO5]') AND parent_object_id = OBJECT_ID(N'[dbo].[ACQ_DESCONTO_DIADEMA]'))
ALTER TABLE [dbo].[ACQ_DESCONTO_DIADEMA]  WITH CHECK ADD  CONSTRAINT [IND_TIPO_DESCONTO5] CHECK  (([ind_tipo_desconto] = 2 or ([ind_tipo_desconto] = 1 or [ind_tipo_desconto] = 0)))
GO
ALTER TABLE [dbo].[ACQ_DESCONTO_DIADEMA] CHECK CONSTRAINT [IND_TIPO_DESCONTO5]
GO
IF NOT EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK__SIS_POLIT__ind_l__77BFCB91]') AND parent_object_id = OBJECT_ID(N'[dbo].[SIS_POLITICA_SENHA]'))
ALTER TABLE [dbo].[SIS_POLITICA_SENHA]  WITH CHECK ADD CHECK  (([ind_letras_numeros] = 'N' or [ind_letras_numeros] = 'S'))
GO
IF NOT EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK__SIS_POLIT__ind_s__79A81403]') AND parent_object_id = OBJECT_ID(N'[dbo].[SIS_POLITICA_SENHA]'))
ALTER TABLE [dbo].[SIS_POLITICA_SENHA]  WITH CHECK ADD CHECK  (([ind_senha_arbitraria] = 'N' or [ind_senha_arbitraria] = 'S'))
GO
IF NOT EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK__ACQ_MATRI__ind_o__7814D14C]') AND parent_object_id = OBJECT_ID(N'[dbo].[ACQ_MATRICULA_HISTORICO]'))
ALTER TABLE [dbo].[ACQ_MATRICULA_HISTORICO]  WITH CHECK ADD CHECK  (([ind_ocorrencia] = '018' or ([ind_ocorrencia] = '017' or ([ind_ocorrencia] = '016' or ([ind_ocorrencia] = '015' or ([ind_ocorrencia] = '014' or ([ind_ocorrencia] = '013' or ([ind_ocorrencia] = '012' or ([ind_ocorrencia] = '011' or ([ind_ocorrencia] = '010' or ([ind_ocorrencia] = '009' or ([ind_ocorrencia] = '008' or ([ind_ocorrencia] = '007' or ([ind_ocorrencia] = '006' or ([ind_ocorrencia] = '005' or ([ind_ocorrencia] = '004' or ([ind_ocorrencia] = '003' or ([ind_ocorrencia] = '002' or [ind_ocorrencia] = '001'))))))))))))))))))
GO
IF NOT EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK__ACQ_DEBIT__ind_s__7849DB76]') AND parent_object_id = OBJECT_ID(N'[dbo].[ACQ_DEBITO_REMESSA]'))
ALTER TABLE [dbo].[ACQ_DEBITO_REMESSA]  WITH CHECK ADD CHECK  (([ind_status] = 'E' or ([ind_status] = 'G' or [ind_status] = 'P')))
GO
IF NOT EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK__ACQ_AGENT__ind_a__7A672E12]') AND parent_object_id = OBJECT_ID(N'[dbo].[ACQ_AGENTE]'))
ALTER TABLE [dbo].[ACQ_AGENTE]  WITH CHECK ADD CHECK  (([ind_ativo] = 'N' or [ind_ativo] = 'S'))
GO
IF NOT EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK__ACQ_DEBIT__ind_t__7B264821]') AND parent_object_id = OBJECT_ID(N'[dbo].[ACQ_DEBITO_REMESSA_ITEM]'))
ALTER TABLE [dbo].[ACQ_DEBITO_REMESSA_ITEM]  WITH CHECK ADD CHECK  (([ind_tipo_item] = 'Z' or ([ind_tipo_item] = 'J' or ([ind_tipo_item] = 'G' or ([ind_tipo_item] = 'F' or ([ind_tipo_item] = 'E' or ([ind_tipo_item] = 'B' or [ind_tipo_item] = 'A')))))))
GO
IF NOT EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK__ACQ_RETIF__ind_m__7BB05806]') AND parent_object_id = OBJECT_ID(N'[dbo].[ACQ_RETIFICACAO_FATURA]'))
ALTER TABLE [dbo].[ACQ_RETIFICACAO_FATURA]  WITH CHECK ADD CHECK  (([ind_motivo_retificacao] = 'VI' or ([ind_motivo_retificacao] = 'RD' or ([ind_motivo_retificacao] = 'PE' or ([ind_motivo_retificacao] = 'PJ' or ([ind_motivo_retificacao] = 'MC' or ([ind_motivo_retificacao] = 'LI' or ([ind_motivo_retificacao] = 'JP' or ([ind_motivo_retificacao] = 'IE' or ([ind_motivo_retificacao] = 'EE' or ([ind_motivo_retificacao] = 'EC' or ([ind_motivo_retificacao] = 'EA' or ([ind_motivo_retificacao] = 'ER' or ([ind_motivo_retificacao] = 'EI' or [ind_motivo_retificacao] = 'DI'))))))))))))))
GO
IF NOT EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[IND_ENTREGA_ESPECIAL157]') AND parent_object_id = OBJECT_ID(N'[dbo].[ACQ_FATURA]'))
ALTER TABLE [dbo].[ACQ_FATURA]  WITH CHECK ADD  CONSTRAINT [IND_ENTREGA_ESPECIAL157] CHECK  (([ind_entrega_especial] = '6' or ([ind_entrega_especial] = '5' or ([ind_entrega_especial] = '4' or ([ind_entrega_especial] = '3' or ([ind_entrega_especial] = '2' or ([ind_entrega_especial] = '1' or [ind_entrega_especial] = '0')))))))
GO
ALTER TABLE [dbo].[ACQ_FATURA] CHECK CONSTRAINT [IND_ENTREGA_ESPECIAL157]
GO
IF NOT EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[IND_MOTIVO_RETIFICACAO38]') AND parent_object_id = OBJECT_ID(N'[dbo].[ACQ_FATURA]'))
ALTER TABLE [dbo].[ACQ_FATURA]  WITH CHECK ADD  CONSTRAINT [IND_MOTIVO_RETIFICACAO38] CHECK  (([ind_motivo_retificacao] = 'VI' or ([ind_motivo_retificacao] = 'RD' or ([ind_motivo_retificacao] = 'PE' or ([ind_motivo_retificacao] = 'PJ' or ([ind_motivo_retificacao] = 'MC' or ([ind_motivo_retificacao] = 'LI' or ([ind_motivo_retificacao] = 'JP' or ([ind_motivo_retificacao] = 'IE' or ([ind_motivo_retificacao] = 'EE' or ([ind_motivo_retificacao] = 'EC' or ([ind_motivo_retificacao] = 'EA' or ([ind_motivo_retificacao] = 'ER' or ([ind_motivo_retificacao] = 'EI' or [ind_motivo_retificacao] = 'DI'))))))))))))))
GO
ALTER TABLE [dbo].[ACQ_FATURA] CHECK CONSTRAINT [IND_MOTIVO_RETIFICACAO38]
GO
IF NOT EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[IND_STATUS_FATURA70]') AND parent_object_id = OBJECT_ID(N'[dbo].[ACQ_FATURA]'))
ALTER TABLE [dbo].[ACQ_FATURA]  WITH CHECK ADD  CONSTRAINT [IND_STATUS_FATURA70] CHECK  (([ind_status] = 'RE' or ([ind_status] = 'PP' or ([ind_status] = 'GP' or ([ind_status] = 'AG' or ([ind_status] = 'AP' or ([ind_status] = 'NE' or ([ind_status] = 'PD' or ([ind_status] = 'CA' or ([ind_status] = 'PA' or [ind_status] = 'PE'))))))))))
GO
ALTER TABLE [dbo].[ACQ_FATURA] CHECK CONSTRAINT [IND_STATUS_FATURA70]
GO
IF NOT EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[IND_TIPO_DOCUMENTO_ORIGEM115]') AND parent_object_id = OBJECT_ID(N'[dbo].[ACQ_FATURA]'))
ALTER TABLE [dbo].[ACQ_FATURA]  WITH CHECK ADD  CONSTRAINT [IND_TIPO_DOCUMENTO_ORIGEM115] CHECK  (([ind_tipo_documento_origem] = '8' or ([ind_tipo_documento_origem] = '7' or ([ind_tipo_documento_origem] = '6' or ([ind_tipo_documento_origem] = '5' or ([ind_tipo_documento_origem] = '4' or ([ind_tipo_documento_origem] = '3' or ([ind_tipo_documento_origem] = '2' or [ind_tipo_documento_origem] = '1'))))))))
GO
ALTER TABLE [dbo].[ACQ_FATURA] CHECK CONSTRAINT [IND_TIPO_DOCUMENTO_ORIGEM115]
GO
IF NOT EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[SIM_NAO1572]') AND parent_object_id = OBJECT_ID(N'[dbo].[ACQ_FATURA]'))
ALTER TABLE [dbo].[ACQ_FATURA]  WITH CHECK ADD  CONSTRAINT [SIM_NAO1572] CHECK  (([ind_fatura_emitida] = 'N' or [ind_fatura_emitida] = 'S'))
GO
ALTER TABLE [dbo].[ACQ_FATURA] CHECK CONSTRAINT [SIM_NAO1572]
GO
IF NOT EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK__SIS_USUAR__ind_a__014935CB]') AND parent_object_id = OBJECT_ID(N'[dbo].[SIS_USUARIO]'))
ALTER TABLE [dbo].[SIS_USUARIO]  WITH CHECK ADD CHECK  (([ind_ativo] = 'N' or [ind_ativo] = 'S'))
GO
IF NOT EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK__SIS_USUAR__ind_a__03317E3D]') AND parent_object_id = OBJECT_ID(N'[dbo].[SIS_USUARIO]'))
ALTER TABLE [dbo].[SIS_USUARIO]  WITH CHECK ADD CHECK  (([ind_acesso_total] = 'N' or [ind_acesso_total] = 'S'))
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[acq_pessoa_r007]') AND parent_object_id = OBJECT_ID(N'[dbo].[ACQ_NEGOCIACAO]'))
ALTER TABLE [dbo].[ACQ_NEGOCIACAO]  WITH CHECK ADD  CONSTRAINT [acq_pessoa_r007] FOREIGN KEY([seq_pessoa_primeira_test])
REFERENCES [dbo].[ACQ_PESSOA] ([seq_pessoa])
GO
ALTER TABLE [dbo].[ACQ_NEGOCIACAO] CHECK CONSTRAINT [acq_pessoa_r007]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[acq_pessoa_r011]') AND parent_object_id = OBJECT_ID(N'[dbo].[ACQ_NEGOCIACAO]'))
ALTER TABLE [dbo].[ACQ_NEGOCIACAO]  WITH CHECK ADD  CONSTRAINT [acq_pessoa_r011] FOREIGN KEY([seq_pessoa_negociador])
REFERENCES [dbo].[ACQ_PESSOA] ([seq_pessoa])
GO
ALTER TABLE [dbo].[ACQ_NEGOCIACAO] CHECK CONSTRAINT [acq_pessoa_r011]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[acq_plano_negociacao_r001]') AND parent_object_id = OBJECT_ID(N'[dbo].[ACQ_NEGOCIACAO]'))
ALTER TABLE [dbo].[ACQ_NEGOCIACAO]  WITH CHECK ADD  CONSTRAINT [acq_plano_negociacao_r001] FOREIGN KEY([seq_plano_negociacao])
REFERENCES [dbo].[ACQ_PLANO_NEGOCIACAO] ([seq_plano_negociacao])
GO
ALTER TABLE [dbo].[ACQ_NEGOCIACAO] CHECK CONSTRAINT [acq_plano_negociacao_r001]
GO
IF NOT EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[IND_TIPO_PARCELA82]') AND parent_object_id = OBJECT_ID(N'[dbo].[ACQ_NEGOCIACAO]'))
ALTER TABLE [dbo].[ACQ_NEGOCIACAO]  WITH CHECK ADD  CONSTRAINT [IND_TIPO_PARCELA82] CHECK  (([ind_tipo_cobranca] = 'B' or ([ind_tipo_cobranca] = 'S' or [ind_tipo_cobranca] = 'G')))
GO
ALTER TABLE [dbo].[ACQ_NEGOCIACAO] CHECK CONSTRAINT [IND_TIPO_PARCELA82]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[acq_atendimento_r002]') AND parent_object_id = OBJECT_ID(N'[dbo].[ACQ_SOLICITACAO_SERVICO]'))
ALTER TABLE [dbo].[ACQ_SOLICITACAO_SERVICO]  WITH CHECK ADD  CONSTRAINT [acq_atendimento_r002] FOREIGN KEY([seq_atendimento])
REFERENCES [dbo].[ACQ_ATENDIMENTO] ([seq_atendimento])
GO
ALTER TABLE [dbo].[ACQ_SOLICITACAO_SERVICO] CHECK CONSTRAINT [acq_atendimento_r002]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[acq_funcionario_r008]') AND parent_object_id = OBJECT_ID(N'[dbo].[ACQ_SOLICITACAO_SERVICO]'))
ALTER TABLE [dbo].[ACQ_SOLICITACAO_SERVICO]  WITH CHECK ADD  CONSTRAINT [acq_funcionario_r008] FOREIGN KEY([seq_funcionario_solicitacao])
REFERENCES [dbo].[ACQ_FUNCIONARIO] ([seq_funcionario])
GO
ALTER TABLE [dbo].[ACQ_SOLICITACAO_SERVICO] CHECK CONSTRAINT [acq_funcionario_r008]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[acq_logradouro_r006]') AND parent_object_id = OBJECT_ID(N'[dbo].[ACQ_SOLICITACAO_SERVICO]'))
ALTER TABLE [dbo].[ACQ_SOLICITACAO_SERVICO]  WITH CHECK ADD  CONSTRAINT [acq_logradouro_r006] FOREIGN KEY([cod_uf], [seq_localidade], [seq_logradouro])
REFERENCES [dbo].[ACQ_LOGRADOURO] ([cod_uf], [seq_localidade], [seq_logradouro])
GO
ALTER TABLE [dbo].[ACQ_SOLICITACAO_SERVICO] CHECK CONSTRAINT [acq_logradouro_r006]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[acq_matricula_r010]') AND parent_object_id = OBJECT_ID(N'[dbo].[ACQ_SOLICITACAO_SERVICO]'))
ALTER TABLE [dbo].[ACQ_SOLICITACAO_SERVICO]  WITH CHECK ADD  CONSTRAINT [acq_matricula_r010] FOREIGN KEY([seq_matricula])
REFERENCES [dbo].[ACQ_MATRICULA] ([seq_matricula])
GO
ALTER TABLE [dbo].[ACQ_SOLICITACAO_SERVICO] CHECK CONSTRAINT [acq_matricula_r010]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[acq_pessoa_r013]') AND parent_object_id = OBJECT_ID(N'[dbo].[ACQ_SOLICITACAO_SERVICO]'))
ALTER TABLE [dbo].[ACQ_SOLICITACAO_SERVICO]  WITH CHECK ADD  CONSTRAINT [acq_pessoa_r013] FOREIGN KEY([seq_pessoa])
REFERENCES [dbo].[ACQ_PESSOA] ([seq_pessoa])
GO
ALTER TABLE [dbo].[ACQ_SOLICITACAO_SERVICO] CHECK CONSTRAINT [acq_pessoa_r013]
GO
IF NOT EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[IND_TIPO_DOCUMENTO_ORIGEM115b]') AND parent_object_id = OBJECT_ID(N'[dbo].[ACQ_SOLICITACAO_SERVICO]'))
ALTER TABLE [dbo].[ACQ_SOLICITACAO_SERVICO]  WITH CHECK ADD  CONSTRAINT [IND_TIPO_DOCUMENTO_ORIGEM115b] CHECK  (([ind_tipo_documento] = '8' or ([ind_tipo_documento] = '7' or ([ind_tipo_documento] = '6' or ([ind_tipo_documento] = '5' or ([ind_tipo_documento] = '4' or ([ind_tipo_documento] = '3' or ([ind_tipo_documento] = '2' or [ind_tipo_documento] = '1'))))))))
GO
ALTER TABLE [dbo].[ACQ_SOLICITACAO_SERVICO] CHECK CONSTRAINT [IND_TIPO_DOCUMENTO_ORIGEM115b]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[acq_hidrometro_r006]') AND parent_object_id = OBJECT_ID(N'[dbo].[ACQ_HIDROMETRO_DIADEMA]'))
ALTER TABLE [dbo].[ACQ_HIDROMETRO_DIADEMA]  WITH CHECK ADD  CONSTRAINT [acq_hidrometro_r006] FOREIGN KEY([cod_hidrometro])
REFERENCES [dbo].[ACQ_HIDROMETRO] ([cod_hidrometro])
GO
ALTER TABLE [dbo].[ACQ_HIDROMETRO_DIADEMA] CHECK CONSTRAINT [acq_hidrometro_r006]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[acq_matricula_r024]') AND parent_object_id = OBJECT_ID(N'[dbo].[ACQ_HIDROMETRO_DIADEMA]'))
ALTER TABLE [dbo].[ACQ_HIDROMETRO_DIADEMA]  WITH CHECK ADD  CONSTRAINT [acq_matricula_r024] FOREIGN KEY([seq_matricula])
REFERENCES [dbo].[ACQ_MATRICULA] ([seq_matricula])
GO
ALTER TABLE [dbo].[ACQ_HIDROMETRO_DIADEMA] CHECK CONSTRAINT [acq_matricula_r024]
GO
IF NOT EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK__ACQ_HIDRO__ind_v__1A54DAB7]') AND parent_object_id = OBJECT_ID(N'[dbo].[ACQ_HIDROMETRO_DIADEMA]'))
ALTER TABLE [dbo].[ACQ_HIDROMETRO_DIADEMA]  WITH CHECK ADD CHECK  (([ind_virtual] = 'N' or [ind_virtual] = 'S'))
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[acq_aviso_r002]') AND parent_object_id = OBJECT_ID(N'[dbo].[ACQ_ORDEM_SERVICO]'))
ALTER TABLE [dbo].[ACQ_ORDEM_SERVICO]  WITH CHECK ADD  CONSTRAINT [acq_aviso_r002] FOREIGN KEY([seq_aviso])
REFERENCES [dbo].[ACQ_AVISO] ([seq_aviso])
GO
ALTER TABLE [dbo].[ACQ_ORDEM_SERVICO] CHECK CONSTRAINT [acq_aviso_r002]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[acq_equipe_servico_r005]') AND parent_object_id = OBJECT_ID(N'[dbo].[ACQ_ORDEM_SERVICO]'))
ALTER TABLE [dbo].[ACQ_ORDEM_SERVICO]  WITH CHECK ADD  CONSTRAINT [acq_equipe_servico_r005] FOREIGN KEY([seq_unidade_servico], [cod_equipe_servico])
REFERENCES [dbo].[ACQ_EQUIPE_SERVICO] ([seq_unidade_servico], [cod_equipe_servico])
GO
ALTER TABLE [dbo].[ACQ_ORDEM_SERVICO] CHECK CONSTRAINT [acq_equipe_servico_r005]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[acq_matricula_r015]') AND parent_object_id = OBJECT_ID(N'[dbo].[ACQ_ORDEM_SERVICO]'))
ALTER TABLE [dbo].[ACQ_ORDEM_SERVICO]  WITH CHECK ADD  CONSTRAINT [acq_matricula_r015] FOREIGN KEY([seq_matricula])
REFERENCES [dbo].[ACQ_MATRICULA] ([seq_matricula])
GO
ALTER TABLE [dbo].[ACQ_ORDEM_SERVICO] CHECK CONSTRAINT [acq_matricula_r015]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[acq_ordem_servico_fiscalizacao_r001]') AND parent_object_id = OBJECT_ID(N'[dbo].[ACQ_ORDEM_SERVICO]'))
ALTER TABLE [dbo].[ACQ_ORDEM_SERVICO]  WITH CHECK ADD  CONSTRAINT [acq_ordem_servico_fiscalizacao_r001] FOREIGN KEY([seq_fiscalizacao])
REFERENCES [dbo].[ACQ_ORDEM_SERVICO_FISCALIZACAO] ([seq_fiscalizacao])
GO
ALTER TABLE [dbo].[ACQ_ORDEM_SERVICO] CHECK CONSTRAINT [acq_ordem_servico_fiscalizacao_r001]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[acq_politica_corte_r002]') AND parent_object_id = OBJECT_ID(N'[dbo].[ACQ_ORDEM_SERVICO]'))
ALTER TABLE [dbo].[ACQ_ORDEM_SERVICO]  WITH CHECK ADD  CONSTRAINT [acq_politica_corte_r002] FOREIGN KEY([seq_politica_corte])
REFERENCES [dbo].[ACQ_POLITICA_CORTE] ([seq_politica_corte])
GO
ALTER TABLE [dbo].[ACQ_ORDEM_SERVICO] CHECK CONSTRAINT [acq_politica_corte_r002]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[acq_unidade_servico_r009]') AND parent_object_id = OBJECT_ID(N'[dbo].[ACQ_ORDEM_SERVICO]'))
ALTER TABLE [dbo].[ACQ_ORDEM_SERVICO]  WITH CHECK ADD  CONSTRAINT [acq_unidade_servico_r009] FOREIGN KEY([seq_unidade_servico])
REFERENCES [dbo].[ACQ_UNIDADE_SERVICO] ([seq_unidade_servico])
GO
ALTER TABLE [dbo].[ACQ_ORDEM_SERVICO] CHECK CONSTRAINT [acq_unidade_servico_r009]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[acq_veiculo_r001]') AND parent_object_id = OBJECT_ID(N'[dbo].[ACQ_ORDEM_SERVICO]'))
ALTER TABLE [dbo].[ACQ_ORDEM_SERVICO]  WITH CHECK ADD  CONSTRAINT [acq_veiculo_r001] FOREIGN KEY([seq_veiculo])
REFERENCES [dbo].[ACQ_VEICULO] ([seq_veiculo])
GO
ALTER TABLE [dbo].[ACQ_ORDEM_SERVICO] CHECK CONSTRAINT [acq_veiculo_r001]
GO
IF NOT EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[IND_MOTIVO_CORTE30]') AND parent_object_id = OBJECT_ID(N'[dbo].[ACQ_ORDEM_SERVICO]'))
ALTER TABLE [dbo].[ACQ_ORDEM_SERVICO]  WITH CHECK ADD  CONSTRAINT [IND_MOTIVO_CORTE30] CHECK  (([ind_motivo_servico] = 'R' or ([ind_motivo_servico] = 'C' or ([ind_motivo_servico] = 'P' or [ind_motivo_servico] = 'S'))))
GO
ALTER TABLE [dbo].[ACQ_ORDEM_SERVICO] CHECK CONSTRAINT [IND_MOTIVO_CORTE30]
GO
IF NOT EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[IND_ORIGEM_SERVICO30]') AND parent_object_id = OBJECT_ID(N'[dbo].[ACQ_ORDEM_SERVICO]'))
ALTER TABLE [dbo].[ACQ_ORDEM_SERVICO]  WITH CHECK ADD  CONSTRAINT [IND_ORIGEM_SERVICO30] CHECK  (([ind_origem_servico] = 'O' or ([ind_origem_servico] = 'F' or ([ind_origem_servico] = 'R' or ([ind_origem_servico] = 'C' or [ind_origem_servico] = 'S')))))
GO
ALTER TABLE [dbo].[ACQ_ORDEM_SERVICO] CHECK CONSTRAINT [IND_ORIGEM_SERVICO30]
GO
IF NOT EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[IND_STATUS_OS48]') AND parent_object_id = OBJECT_ID(N'[dbo].[ACQ_ORDEM_SERVICO]'))
ALTER TABLE [dbo].[ACQ_ORDEM_SERVICO]  WITH CHECK ADD  CONSTRAINT [IND_STATUS_OS48] CHECK  (([ind_status] = 'AG' or ([ind_status] = 'FR' or ([ind_status] = 'FO' or ([ind_status] = 'FI' or ([ind_status] = 'CA' or ([ind_status] = 'EX' or ([ind_status] = 'PR' or [ind_status] = 'PE'))))))))
GO
ALTER TABLE [dbo].[ACQ_ORDEM_SERVICO] CHECK CONSTRAINT [IND_STATUS_OS48]
GO
IF NOT EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[IND_TIPO_CORTE43]') AND parent_object_id = OBJECT_ID(N'[dbo].[ACQ_ORDEM_SERVICO]'))
ALTER TABLE [dbo].[ACQ_ORDEM_SERVICO]  WITH CHECK ADD  CONSTRAINT [IND_TIPO_CORTE43] CHECK  (([ind_tipo_corte] = 'R' or ([ind_tipo_corte] = 'C' or [ind_tipo_corte] = 'S')))
GO
ALTER TABLE [dbo].[ACQ_ORDEM_SERVICO] CHECK CONSTRAINT [IND_TIPO_CORTE43]
GO
IF NOT EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[SIM_NAO1588]') AND parent_object_id = OBJECT_ID(N'[dbo].[ACQ_ORDEM_SERVICO]'))
ALTER TABLE [dbo].[ACQ_ORDEM_SERVICO]  WITH CHECK ADD  CONSTRAINT [SIM_NAO1588] CHECK  (([ind_impresso] = 'N' or [ind_impresso] = 'S'))
GO
ALTER TABLE [dbo].[ACQ_ORDEM_SERVICO] CHECK CONSTRAINT [SIM_NAO1588]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[acq_localidade_r004]') AND parent_object_id = OBJECT_ID(N'[dbo].[ACQ_SUBSIDIO]'))
ALTER TABLE [dbo].[ACQ_SUBSIDIO]  WITH CHECK ADD  CONSTRAINT [acq_localidade_r004] FOREIGN KEY([cod_uf], [seq_localidade])
REFERENCES [dbo].[ACQ_LOCALIDADE] ([cod_uf], [seq_localidade])
GO
ALTER TABLE [dbo].[ACQ_SUBSIDIO] CHECK CONSTRAINT [acq_localidade_r004]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[acq_localidade_r008]') AND parent_object_id = OBJECT_ID(N'[dbo].[ACQ_CALENDARIO]'))
ALTER TABLE [dbo].[ACQ_CALENDARIO]  WITH CHECK ADD  CONSTRAINT [acq_localidade_r008] FOREIGN KEY([cod_uf], [seq_localidade])
REFERENCES [dbo].[ACQ_LOCALIDADE] ([cod_uf], [seq_localidade])
GO
ALTER TABLE [dbo].[ACQ_CALENDARIO] CHECK CONSTRAINT [acq_localidade_r008]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[acq_movimento_r006]') AND parent_object_id = OBJECT_ID(N'[dbo].[ACQ_MOVIMENTO_FOTO]'))
ALTER TABLE [dbo].[ACQ_MOVIMENTO_FOTO]  WITH CHECK ADD  CONSTRAINT [acq_movimento_r006] FOREIGN KEY([cod_referencia], [seq_roteiro], [seq_matricula])
REFERENCES [dbo].[ACQ_MOVIMENTO] ([cod_referencia], [seq_roteiro], [seq_matricula])
GO
ALTER TABLE [dbo].[ACQ_MOVIMENTO_FOTO] CHECK CONSTRAINT [acq_movimento_r006]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[acq_fatura_r012]') AND parent_object_id = OBJECT_ID(N'[dbo].[ACQ_FATURA_IMPOSTO_DIADEMA]'))
ALTER TABLE [dbo].[ACQ_FATURA_IMPOSTO_DIADEMA]  WITH CHECK ADD  CONSTRAINT [acq_fatura_r012] FOREIGN KEY([seq_fatura])
REFERENCES [dbo].[ACQ_FATURA] ([seq_fatura])
GO
ALTER TABLE [dbo].[ACQ_FATURA_IMPOSTO_DIADEMA] CHECK CONSTRAINT [acq_fatura_r012]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[acq_imposto_diadema_r001]') AND parent_object_id = OBJECT_ID(N'[dbo].[ACQ_FATURA_IMPOSTO_DIADEMA]'))
ALTER TABLE [dbo].[ACQ_FATURA_IMPOSTO_DIADEMA]  WITH CHECK ADD  CONSTRAINT [acq_imposto_diadema_r001] FOREIGN KEY([cod_imposto])
REFERENCES [dbo].[ACQ_IMPOSTO_DIADEMA] ([cod_imposto])
GO
ALTER TABLE [dbo].[ACQ_FATURA_IMPOSTO_DIADEMA] CHECK CONSTRAINT [acq_imposto_diadema_r001]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[acq_movimento_r005]') AND parent_object_id = OBJECT_ID(N'[dbo].[ACQ_FATURA_IMPOSTO_DIADEMA]'))
ALTER TABLE [dbo].[ACQ_FATURA_IMPOSTO_DIADEMA]  WITH CHECK ADD  CONSTRAINT [acq_movimento_r005] FOREIGN KEY([cod_referencia], [seq_roteiro], [seq_matricula])
REFERENCES [dbo].[ACQ_MOVIMENTO] ([cod_referencia], [seq_roteiro], [seq_matricula])
GO
ALTER TABLE [dbo].[ACQ_FATURA_IMPOSTO_DIADEMA] CHECK CONSTRAINT [acq_movimento_r005]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[acq_funcionario_r003]') AND parent_object_id = OBJECT_ID(N'[dbo].[ACQ_ORDEM_SERVICO_ITEM]'))
ALTER TABLE [dbo].[ACQ_ORDEM_SERVICO_ITEM]  WITH CHECK ADD  CONSTRAINT [acq_funcionario_r003] FOREIGN KEY([seq_funcionario_executante])
REFERENCES [dbo].[ACQ_FUNCIONARIO] ([seq_funcionario])
GO
ALTER TABLE [dbo].[ACQ_ORDEM_SERVICO_ITEM] CHECK CONSTRAINT [acq_funcionario_r003]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[acq_motivo_cancelamento_os_r001]') AND parent_object_id = OBJECT_ID(N'[dbo].[ACQ_ORDEM_SERVICO_ITEM]'))
ALTER TABLE [dbo].[ACQ_ORDEM_SERVICO_ITEM]  WITH CHECK ADD  CONSTRAINT [acq_motivo_cancelamento_os_r001] FOREIGN KEY([seq_motivo_cancelamento])
REFERENCES [dbo].[ACQ_MOTIVO_CANCELAMENTO_OS] ([seq_motivo_cancelamento])
GO
ALTER TABLE [dbo].[ACQ_ORDEM_SERVICO_ITEM] CHECK CONSTRAINT [acq_motivo_cancelamento_os_r001]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[acq_ordem_servico_acao_r001]') AND parent_object_id = OBJECT_ID(N'[dbo].[ACQ_ORDEM_SERVICO_ITEM]'))
ALTER TABLE [dbo].[ACQ_ORDEM_SERVICO_ITEM]  WITH CHECK ADD  CONSTRAINT [acq_ordem_servico_acao_r001] FOREIGN KEY([seq_ordem_servico_acao])
REFERENCES [dbo].[ACQ_ORDEM_SERVICO_ACAO] ([seq_ordem_servico_acao])
GO
ALTER TABLE [dbo].[ACQ_ORDEM_SERVICO_ITEM] CHECK CONSTRAINT [acq_ordem_servico_acao_r001]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[acq_ordem_servico_r001]') AND parent_object_id = OBJECT_ID(N'[dbo].[ACQ_ORDEM_SERVICO_ITEM]'))
ALTER TABLE [dbo].[ACQ_ORDEM_SERVICO_ITEM]  WITH CHECK ADD  CONSTRAINT [acq_ordem_servico_r001] FOREIGN KEY([seq_ordem_servico])
REFERENCES [dbo].[ACQ_ORDEM_SERVICO] ([seq_ordem_servico])
GO
ALTER TABLE [dbo].[ACQ_ORDEM_SERVICO_ITEM] CHECK CONSTRAINT [acq_ordem_servico_r001]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[acq_plano_financiamento_r003]') AND parent_object_id = OBJECT_ID(N'[dbo].[ACQ_ORDEM_SERVICO_ITEM]'))
ALTER TABLE [dbo].[ACQ_ORDEM_SERVICO_ITEM]  WITH CHECK ADD  CONSTRAINT [acq_plano_financiamento_r003] FOREIGN KEY([cod_plano_financiamento])
REFERENCES [dbo].[ACQ_PLANO_FINANCIAMENTO] ([cod_plano_financiamento])
GO
ALTER TABLE [dbo].[ACQ_ORDEM_SERVICO_ITEM] CHECK CONSTRAINT [acq_plano_financiamento_r003]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[acq_servico_manutencao_r003]') AND parent_object_id = OBJECT_ID(N'[dbo].[ACQ_ORDEM_SERVICO_ITEM]'))
ALTER TABLE [dbo].[ACQ_ORDEM_SERVICO_ITEM]  WITH CHECK ADD  CONSTRAINT [acq_servico_manutencao_r003] FOREIGN KEY([seq_servico_manutencao])
REFERENCES [dbo].[ACQ_SERVICO_MANUTENCAO] ([seq_servico_manutencao])
GO
ALTER TABLE [dbo].[ACQ_ORDEM_SERVICO_ITEM] CHECK CONSTRAINT [acq_servico_manutencao_r003]
GO
IF NOT EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[IND_STATUS_SERVICO_ITEM18]') AND parent_object_id = OBJECT_ID(N'[dbo].[ACQ_ORDEM_SERVICO_ITEM]'))
ALTER TABLE [dbo].[ACQ_ORDEM_SERVICO_ITEM]  WITH CHECK ADD  CONSTRAINT [IND_STATUS_SERVICO_ITEM18] CHECK  (([ind_status] = 'AG' or ([ind_status] = 'CA' or ([ind_status] = 'BA' or ([ind_status] = 'PR' or ([ind_status] = 'PG' or [ind_status] = 'PE'))))))
GO
ALTER TABLE [dbo].[ACQ_ORDEM_SERVICO_ITEM] CHECK CONSTRAINT [IND_STATUS_SERVICO_ITEM18]
GO
IF NOT EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[SIM_NAO1589]') AND parent_object_id = OBJECT_ID(N'[dbo].[ACQ_ORDEM_SERVICO_ITEM]'))
ALTER TABLE [dbo].[ACQ_ORDEM_SERVICO_ITEM]  WITH CHECK ADD  CONSTRAINT [SIM_NAO1589] CHECK  (([ind_fatura] = 'N' or [ind_fatura] = 'S'))
GO
ALTER TABLE [dbo].[ACQ_ORDEM_SERVICO_ITEM] CHECK CONSTRAINT [SIM_NAO1589]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[acq_plano_financiamento_r004]') AND parent_object_id = OBJECT_ID(N'[dbo].[ACQ_SOLICITACAO_SERVICO_FATURA]'))
ALTER TABLE [dbo].[ACQ_SOLICITACAO_SERVICO_FATURA]  WITH CHECK ADD  CONSTRAINT [acq_plano_financiamento_r004] FOREIGN KEY([cod_plano_financiamento])
REFERENCES [dbo].[ACQ_PLANO_FINANCIAMENTO] ([cod_plano_financiamento])
GO
ALTER TABLE [dbo].[ACQ_SOLICITACAO_SERVICO_FATURA] CHECK CONSTRAINT [acq_plano_financiamento_r004]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[acq_servico_fatura_r011]') AND parent_object_id = OBJECT_ID(N'[dbo].[ACQ_SOLICITACAO_SERVICO_FATURA]'))
ALTER TABLE [dbo].[ACQ_SOLICITACAO_SERVICO_FATURA]  WITH CHECK ADD  CONSTRAINT [acq_servico_fatura_r011] FOREIGN KEY([seq_servico_fatura])
REFERENCES [dbo].[ACQ_SERVICO_FATURA] ([seq_servico_fatura])
GO
ALTER TABLE [dbo].[ACQ_SOLICITACAO_SERVICO_FATURA] CHECK CONSTRAINT [acq_servico_fatura_r011]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[acq_solicitacao_servico_item_r001]') AND parent_object_id = OBJECT_ID(N'[dbo].[ACQ_SOLICITACAO_SERVICO_FATURA]'))
ALTER TABLE [dbo].[ACQ_SOLICITACAO_SERVICO_FATURA]  WITH CHECK ADD  CONSTRAINT [acq_solicitacao_servico_item_r001] FOREIGN KEY([seq_solicitacao_servico], [seq_solicitacao_servico_item])
REFERENCES [dbo].[ACQ_SOLICITACAO_SERVICO_ITEM] ([seq_solicitacao_servico], [seq_solicitacao_servico_item])
GO
ALTER TABLE [dbo].[ACQ_SOLICITACAO_SERVICO_FATURA] CHECK CONSTRAINT [acq_solicitacao_servico_item_r001]
GO
IF NOT EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[IND_CALCULO_VALOR_SERVICO17]') AND parent_object_id = OBJECT_ID(N'[dbo].[ACQ_SOLICITACAO_SERVICO_FATURA]'))
ALTER TABLE [dbo].[ACQ_SOLICITACAO_SERVICO_FATURA]  WITH CHECK ADD  CONSTRAINT [IND_CALCULO_VALOR_SERVICO17] CHECK  (([ind_calculo_valor_servico] = 3 or ([ind_calculo_valor_servico] = 2 or ([ind_calculo_valor_servico] = 1 or [ind_calculo_valor_servico] = 0))))
GO
ALTER TABLE [dbo].[ACQ_SOLICITACAO_SERVICO_FATURA] CHECK CONSTRAINT [IND_CALCULO_VALOR_SERVICO17]
GO
IF NOT EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[IND_CONDICAO_ENTREGA51]') AND parent_object_id = OBJECT_ID(N'[dbo].[ACQ_SOLICITACAO_SERVICO_FATURA]'))
ALTER TABLE [dbo].[ACQ_SOLICITACAO_SERVICO_FATURA]  WITH CHECK ADD  CONSTRAINT [IND_CONDICAO_ENTREGA51] CHECK  (([ind_condicao_entrega] = '1' or [ind_condicao_entrega] = '0'))
GO
ALTER TABLE [dbo].[ACQ_SOLICITACAO_SERVICO_FATURA] CHECK CONSTRAINT [IND_CONDICAO_ENTREGA51]
GO
IF NOT EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[IND_TIPO_CARENCIA64]') AND parent_object_id = OBJECT_ID(N'[dbo].[ACQ_SOLICITACAO_SERVICO_FATURA]'))
ALTER TABLE [dbo].[ACQ_SOLICITACAO_SERVICO_FATURA]  WITH CHECK ADD  CONSTRAINT [IND_TIPO_CARENCIA64] CHECK  (([ind_tipo_carencia] = 'V' or [ind_tipo_carencia] = 'D'))
GO
ALTER TABLE [dbo].[ACQ_SOLICITACAO_SERVICO_FATURA] CHECK CONSTRAINT [IND_TIPO_CARENCIA64]
GO
IF NOT EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[IND_TIPO_ENTRADA30]') AND parent_object_id = OBJECT_ID(N'[dbo].[ACQ_SOLICITACAO_SERVICO_FATURA]'))
ALTER TABLE [dbo].[ACQ_SOLICITACAO_SERVICO_FATURA]  WITH CHECK ADD  CONSTRAINT [IND_TIPO_ENTRADA30] CHECK  (([ind_tipo_entrada] = 'B' or [ind_tipo_entrada] = 'G'))
GO
ALTER TABLE [dbo].[ACQ_SOLICITACAO_SERVICO_FATURA] CHECK CONSTRAINT [IND_TIPO_ENTRADA30]
GO
IF NOT EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[IND_TIPO_PARCELA81]') AND parent_object_id = OBJECT_ID(N'[dbo].[ACQ_SOLICITACAO_SERVICO_FATURA]'))
ALTER TABLE [dbo].[ACQ_SOLICITACAO_SERVICO_FATURA]  WITH CHECK ADD  CONSTRAINT [IND_TIPO_PARCELA81] CHECK  (([ind_tipo_parcela] = 'B' or ([ind_tipo_parcela] = 'S' or [ind_tipo_parcela] = 'G')))
GO
ALTER TABLE [dbo].[ACQ_SOLICITACAO_SERVICO_FATURA] CHECK CONSTRAINT [IND_TIPO_PARCELA81]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[acq_servico_fatura_r010]') AND parent_object_id = OBJECT_ID(N'[dbo].[ACQ_SERVICO_MANUTENCAO_FATURA]'))
ALTER TABLE [dbo].[ACQ_SERVICO_MANUTENCAO_FATURA]  WITH CHECK ADD  CONSTRAINT [acq_servico_fatura_r010] FOREIGN KEY([seq_servico_fatura])
REFERENCES [dbo].[ACQ_SERVICO_FATURA] ([seq_servico_fatura])
GO
ALTER TABLE [dbo].[ACQ_SERVICO_MANUTENCAO_FATURA] CHECK CONSTRAINT [acq_servico_fatura_r010]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[acq_servico_manutencao_r016]') AND parent_object_id = OBJECT_ID(N'[dbo].[ACQ_SERVICO_MANUTENCAO_FATURA]'))
ALTER TABLE [dbo].[ACQ_SERVICO_MANUTENCAO_FATURA]  WITH CHECK ADD  CONSTRAINT [acq_servico_manutencao_r016] FOREIGN KEY([seq_servico_manutencao])
REFERENCES [dbo].[ACQ_SERVICO_MANUTENCAO] ([seq_servico_manutencao])
GO
ALTER TABLE [dbo].[ACQ_SERVICO_MANUTENCAO_FATURA] CHECK CONSTRAINT [acq_servico_manutencao_r016]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[acq_area_atuacao_r001]') AND parent_object_id = OBJECT_ID(N'[dbo].[ACQ_PARAMETROS_COBRANCA]'))
ALTER TABLE [dbo].[ACQ_PARAMETROS_COBRANCA]  WITH CHECK ADD  CONSTRAINT [acq_area_atuacao_r001] FOREIGN KEY([seq_area_atuacao])
REFERENCES [dbo].[ACQ_AREA_ATUACAO] ([seq_area_atuacao])
GO
ALTER TABLE [dbo].[ACQ_PARAMETROS_COBRANCA] CHECK CONSTRAINT [acq_area_atuacao_r001]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[acq_indice_correcao_r001]') AND parent_object_id = OBJECT_ID(N'[dbo].[ACQ_PARAMETROS_COBRANCA]'))
ALTER TABLE [dbo].[ACQ_PARAMETROS_COBRANCA]  WITH CHECK ADD  CONSTRAINT [acq_indice_correcao_r001] FOREIGN KEY([seq_indice_correcao])
REFERENCES [dbo].[ACQ_INDICE_CORRECAO] ([seq_indice_correcao])
GO
ALTER TABLE [dbo].[ACQ_PARAMETROS_COBRANCA] CHECK CONSTRAINT [acq_indice_correcao_r001]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[acq_servico_fatura_r004]') AND parent_object_id = OBJECT_ID(N'[dbo].[ACQ_PARAMETROS_COBRANCA]'))
ALTER TABLE [dbo].[ACQ_PARAMETROS_COBRANCA]  WITH CHECK ADD  CONSTRAINT [acq_servico_fatura_r004] FOREIGN KEY([seq_servico_juros])
REFERENCES [dbo].[ACQ_SERVICO_FATURA] ([seq_servico_fatura])
GO
ALTER TABLE [dbo].[ACQ_PARAMETROS_COBRANCA] CHECK CONSTRAINT [acq_servico_fatura_r004]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[acq_servico_fatura_r005]') AND parent_object_id = OBJECT_ID(N'[dbo].[ACQ_PARAMETROS_COBRANCA]'))
ALTER TABLE [dbo].[ACQ_PARAMETROS_COBRANCA]  WITH CHECK ADD  CONSTRAINT [acq_servico_fatura_r005] FOREIGN KEY([seq_servico_multa])
REFERENCES [dbo].[ACQ_SERVICO_FATURA] ([seq_servico_fatura])
GO
ALTER TABLE [dbo].[ACQ_PARAMETROS_COBRANCA] CHECK CONSTRAINT [acq_servico_fatura_r005]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[acq_servico_fatura_r006]') AND parent_object_id = OBJECT_ID(N'[dbo].[ACQ_PARAMETROS_COBRANCA]'))
ALTER TABLE [dbo].[ACQ_PARAMETROS_COBRANCA]  WITH CHECK ADD  CONSTRAINT [acq_servico_fatura_r006] FOREIGN KEY([seq_servico_correcao])
REFERENCES [dbo].[ACQ_SERVICO_FATURA] ([seq_servico_fatura])
GO
ALTER TABLE [dbo].[ACQ_PARAMETROS_COBRANCA] CHECK CONSTRAINT [acq_servico_fatura_r006]
GO
IF NOT EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[IND_PERIODICIADE_MULTA25]') AND parent_object_id = OBJECT_ID(N'[dbo].[ACQ_PARAMETROS_COBRANCA]'))
ALTER TABLE [dbo].[ACQ_PARAMETROS_COBRANCA]  WITH CHECK ADD  CONSTRAINT [IND_PERIODICIADE_MULTA25] CHECK  (([ind_periodicidade_multa] = '3' or ([ind_periodicidade_multa] = '2' or [ind_periodicidade_multa] = '1')))
GO
ALTER TABLE [dbo].[ACQ_PARAMETROS_COBRANCA] CHECK CONSTRAINT [IND_PERIODICIADE_MULTA25]
GO
IF NOT EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[IND_PERIODO_JUROS25]') AND parent_object_id = OBJECT_ID(N'[dbo].[ACQ_PARAMETROS_COBRANCA]'))
ALTER TABLE [dbo].[ACQ_PARAMETROS_COBRANCA]  WITH CHECK ADD  CONSTRAINT [IND_PERIODO_JUROS25] CHECK  (([ind_periodo_juros] = 'M' or [ind_periodo_juros] = 'D'))
GO
ALTER TABLE [dbo].[ACQ_PARAMETROS_COBRANCA] CHECK CONSTRAINT [IND_PERIODO_JUROS25]
GO
IF NOT EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[IND_PERIODO_MULTA25]') AND parent_object_id = OBJECT_ID(N'[dbo].[ACQ_PARAMETROS_COBRANCA]'))
ALTER TABLE [dbo].[ACQ_PARAMETROS_COBRANCA]  WITH CHECK ADD  CONSTRAINT [IND_PERIODO_MULTA25] CHECK  (([ind_periodo_multa] = '2' or [ind_periodo_multa] = '1'))
GO
ALTER TABLE [dbo].[ACQ_PARAMETROS_COBRANCA] CHECK CONSTRAINT [IND_PERIODO_MULTA25]
GO
IF NOT EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[SIM_NAO1590]') AND parent_object_id = OBJECT_ID(N'[dbo].[ACQ_PARAMETROS_COBRANCA]'))
ALTER TABLE [dbo].[ACQ_PARAMETROS_COBRANCA]  WITH CHECK ADD  CONSTRAINT [SIM_NAO1590] CHECK  (([ind_prazo_multa] = 'N' or [ind_prazo_multa] = 'S'))
GO
ALTER TABLE [dbo].[ACQ_PARAMETROS_COBRANCA] CHECK CONSTRAINT [SIM_NAO1590]
GO
IF NOT EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[SIM_NAO1591]') AND parent_object_id = OBJECT_ID(N'[dbo].[ACQ_PARAMETROS_COBRANCA]'))
ALTER TABLE [dbo].[ACQ_PARAMETROS_COBRANCA]  WITH CHECK ADD  CONSTRAINT [SIM_NAO1591] CHECK  (([ind_proporcional_dias] = 'N' or [ind_proporcional_dias] = 'S'))
GO
ALTER TABLE [dbo].[ACQ_PARAMETROS_COBRANCA] CHECK CONSTRAINT [SIM_NAO1591]
GO
IF NOT EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[SIM_NAO1592]') AND parent_object_id = OBJECT_ID(N'[dbo].[ACQ_PARAMETROS_COBRANCA]'))
ALTER TABLE [dbo].[ACQ_PARAMETROS_COBRANCA]  WITH CHECK ADD  CONSTRAINT [SIM_NAO1592] CHECK  (([ind_prazo_juros] = 'N' or [ind_prazo_juros] = 'S'))
GO
ALTER TABLE [dbo].[ACQ_PARAMETROS_COBRANCA] CHECK CONSTRAINT [SIM_NAO1592]
GO
IF NOT EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[SIM_NAO1593]') AND parent_object_id = OBJECT_ID(N'[dbo].[ACQ_PARAMETROS_COBRANCA]'))
ALTER TABLE [dbo].[ACQ_PARAMETROS_COBRANCA]  WITH CHECK ADD  CONSTRAINT [SIM_NAO1593] CHECK  (([ind_incide_encargos] = 'N' or [ind_incide_encargos] = 'S'))
GO
ALTER TABLE [dbo].[ACQ_PARAMETROS_COBRANCA] CHECK CONSTRAINT [SIM_NAO1593]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[acq_servico_fatura_r007]') AND parent_object_id = OBJECT_ID(N'[dbo].[ACQ_PLANO_NEGOCIACAO]'))
ALTER TABLE [dbo].[ACQ_PLANO_NEGOCIACAO]  WITH CHECK ADD  CONSTRAINT [acq_servico_fatura_r007] FOREIGN KEY([seq_servico_fatura])
REFERENCES [dbo].[ACQ_SERVICO_FATURA] ([seq_servico_fatura])
GO
ALTER TABLE [dbo].[ACQ_PLANO_NEGOCIACAO] CHECK CONSTRAINT [acq_servico_fatura_r007]
GO
IF NOT EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[IND_DOCUMENTO_AVISTA35]') AND parent_object_id = OBJECT_ID(N'[dbo].[ACQ_PLANO_NEGOCIACAO]'))
ALTER TABLE [dbo].[ACQ_PLANO_NEGOCIACAO]  WITH CHECK ADD  CONSTRAINT [IND_DOCUMENTO_AVISTA35] CHECK  (([ind_documento_avista] = 'T' or ([ind_documento_avista] = 'B' or [ind_documento_avista] = 'G')))
GO
ALTER TABLE [dbo].[ACQ_PLANO_NEGOCIACAO] CHECK CONSTRAINT [IND_DOCUMENTO_AVISTA35]
GO
IF NOT EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[IND_TIPO_CARENCIA66]') AND parent_object_id = OBJECT_ID(N'[dbo].[ACQ_PLANO_NEGOCIACAO]'))
ALTER TABLE [dbo].[ACQ_PLANO_NEGOCIACAO]  WITH CHECK ADD  CONSTRAINT [IND_TIPO_CARENCIA66] CHECK  (([ind_tipo_carencia] = 'V' or [ind_tipo_carencia] = 'D'))
GO
ALTER TABLE [dbo].[ACQ_PLANO_NEGOCIACAO] CHECK CONSTRAINT [IND_TIPO_CARENCIA66]
GO
IF NOT EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[IND_TIPO_HONORARIOS69]') AND parent_object_id = OBJECT_ID(N'[dbo].[ACQ_PLANO_NEGOCIACAO]'))
ALTER TABLE [dbo].[ACQ_PLANO_NEGOCIACAO]  WITH CHECK ADD  CONSTRAINT [IND_TIPO_HONORARIOS69] CHECK  (([ind_tipo_honorarios] = 'P' or [ind_tipo_honorarios] = 'A'))
GO
ALTER TABLE [dbo].[ACQ_PLANO_NEGOCIACAO] CHECK CONSTRAINT [IND_TIPO_HONORARIOS69]
GO
IF NOT EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[IND_TIPO_HONORARIOS70]') AND parent_object_id = OBJECT_ID(N'[dbo].[ACQ_PLANO_NEGOCIACAO]'))
ALTER TABLE [dbo].[ACQ_PLANO_NEGOCIACAO]  WITH CHECK ADD  CONSTRAINT [IND_TIPO_HONORARIOS70] CHECK  (([ind_tipo_custas_judiciais] = 'P' or [ind_tipo_custas_judiciais] = 'A'))
GO
ALTER TABLE [dbo].[ACQ_PLANO_NEGOCIACAO] CHECK CONSTRAINT [IND_TIPO_HONORARIOS70]
GO
IF NOT EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[IND_TIPO_PARCELA84]') AND parent_object_id = OBJECT_ID(N'[dbo].[ACQ_PLANO_NEGOCIACAO]'))
ALTER TABLE [dbo].[ACQ_PLANO_NEGOCIACAO]  WITH CHECK ADD  CONSTRAINT [IND_TIPO_PARCELA84] CHECK  (([ind_tipo_cobranca] = 'B' or ([ind_tipo_cobranca] = 'S' or [ind_tipo_cobranca] = 'G')))
GO
ALTER TABLE [dbo].[ACQ_PLANO_NEGOCIACAO] CHECK CONSTRAINT [IND_TIPO_PARCELA84]
GO
IF NOT EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[SIM_NAO1594]') AND parent_object_id = OBJECT_ID(N'[dbo].[ACQ_PLANO_NEGOCIACAO]'))
ALTER TABLE [dbo].[ACQ_PLANO_NEGOCIACAO]  WITH CHECK ADD  CONSTRAINT [SIM_NAO1594] CHECK  (([ind_perdao_ultima_parcela] = 'N' or [ind_perdao_ultima_parcela] = 'S'))
GO
ALTER TABLE [dbo].[ACQ_PLANO_NEGOCIACAO] CHECK CONSTRAINT [SIM_NAO1594]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[acq_servico_manutencao_r017]') AND parent_object_id = OBJECT_ID(N'[dbo].[ACQ_SERVICO_LIGACAO_TAXA]'))
ALTER TABLE [dbo].[ACQ_SERVICO_LIGACAO_TAXA]  WITH CHECK ADD  CONSTRAINT [acq_servico_manutencao_r017] FOREIGN KEY([seq_servico_manutencao])
REFERENCES [dbo].[ACQ_SERVICO_MANUTENCAO] ([seq_servico_manutencao])
GO
ALTER TABLE [dbo].[ACQ_SERVICO_LIGACAO_TAXA] CHECK CONSTRAINT [acq_servico_manutencao_r017]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[acq_taxa_r006]') AND parent_object_id = OBJECT_ID(N'[dbo].[ACQ_SERVICO_LIGACAO_TAXA]'))
ALTER TABLE [dbo].[ACQ_SERVICO_LIGACAO_TAXA]  WITH CHECK ADD  CONSTRAINT [acq_taxa_r006] FOREIGN KEY([seq_taxa])
REFERENCES [dbo].[ACQ_TAXA] ([seq_taxa])
GO
ALTER TABLE [dbo].[ACQ_SERVICO_LIGACAO_TAXA] CHECK CONSTRAINT [acq_taxa_r006]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[acq_categoria_r004]') AND parent_object_id = OBJECT_ID(N'[dbo].[ACQ_TAXA_TARIFA]'))
ALTER TABLE [dbo].[ACQ_TAXA_TARIFA]  WITH CHECK ADD  CONSTRAINT [acq_categoria_r004] FOREIGN KEY([seq_categoria])
REFERENCES [dbo].[ACQ_CATEGORIA] ([seq_categoria])
GO
ALTER TABLE [dbo].[ACQ_TAXA_TARIFA] CHECK CONSTRAINT [acq_categoria_r004]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[acq_taxa_r002]') AND parent_object_id = OBJECT_ID(N'[dbo].[ACQ_TAXA_TARIFA]'))
ALTER TABLE [dbo].[ACQ_TAXA_TARIFA]  WITH CHECK ADD  CONSTRAINT [acq_taxa_r002] FOREIGN KEY([seq_taxa])
REFERENCES [dbo].[ACQ_TAXA] ([seq_taxa])
GO
ALTER TABLE [dbo].[ACQ_TAXA_TARIFA] CHECK CONSTRAINT [acq_taxa_r002]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[acq_taxa_r003]') AND parent_object_id = OBJECT_ID(N'[dbo].[ACQ_TAXA_TARIFA]'))
ALTER TABLE [dbo].[ACQ_TAXA_TARIFA]  WITH CHECK ADD  CONSTRAINT [acq_taxa_r003] FOREIGN KEY([seq_taxa_base])
REFERENCES [dbo].[ACQ_TAXA] ([seq_taxa])
GO
ALTER TABLE [dbo].[ACQ_TAXA_TARIFA] CHECK CONSTRAINT [acq_taxa_r003]
GO
IF NOT EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[IND_TIPO_TAXA29]') AND parent_object_id = OBJECT_ID(N'[dbo].[ACQ_TAXA_TARIFA]'))
ALTER TABLE [dbo].[ACQ_TAXA_TARIFA]  WITH CHECK ADD  CONSTRAINT [IND_TIPO_TAXA29] CHECK  (([ind_tipo_taxa] = 'P' or ([ind_tipo_taxa] = 'C' or [ind_tipo_taxa] = 'F')))
GO
ALTER TABLE [dbo].[ACQ_TAXA_TARIFA] CHECK CONSTRAINT [IND_TIPO_TAXA29]
GO
IF NOT EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[SIM_NAO1599]') AND parent_object_id = OBJECT_ID(N'[dbo].[ACQ_TAXA_TARIFA]'))
ALTER TABLE [dbo].[ACQ_TAXA_TARIFA]  WITH CHECK ADD  CONSTRAINT [SIM_NAO1599] CHECK  (([ind_escalonada] = 'N' or [ind_escalonada] = 'S'))
GO
ALTER TABLE [dbo].[ACQ_TAXA_TARIFA] CHECK CONSTRAINT [SIM_NAO1599]
GO
IF NOT EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[SIM_NAO1600]') AND parent_object_id = OBJECT_ID(N'[dbo].[ACQ_TAXA_TARIFA]'))
ALTER TABLE [dbo].[ACQ_TAXA_TARIFA]  WITH CHECK ADD  CONSTRAINT [SIM_NAO1600] CHECK  (([ind_dias_consumo] = 'N' or [ind_dias_consumo] = 'S'))
GO
ALTER TABLE [dbo].[ACQ_TAXA_TARIFA] CHECK CONSTRAINT [SIM_NAO1600]
GO
IF NOT EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[SIM_NAO1601]') AND parent_object_id = OBJECT_ID(N'[dbo].[ACQ_TAXA_TARIFA]'))
ALTER TABLE [dbo].[ACQ_TAXA_TARIFA]  WITH CHECK ADD  CONSTRAINT [SIM_NAO1601] CHECK  (([ind_minimo] = 'N' or [ind_minimo] = 'S'))
GO
ALTER TABLE [dbo].[ACQ_TAXA_TARIFA] CHECK CONSTRAINT [SIM_NAO1601]
GO
IF NOT EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[SIM_NAO1602]') AND parent_object_id = OBJECT_ID(N'[dbo].[ACQ_TAXA_TARIFA]'))
ALTER TABLE [dbo].[ACQ_TAXA_TARIFA]  WITH CHECK ADD  CONSTRAINT [SIM_NAO1602] CHECK  (([ind_proporcional] = 'N' or [ind_proporcional] = 'S'))
GO
ALTER TABLE [dbo].[ACQ_TAXA_TARIFA] CHECK CONSTRAINT [SIM_NAO1602]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[acq_area_atuacao_r002]') AND parent_object_id = OBJECT_ID(N'[dbo].[ACQ_ESTIMATIVA_LIGACAO]'))
ALTER TABLE [dbo].[ACQ_ESTIMATIVA_LIGACAO]  WITH CHECK ADD  CONSTRAINT [acq_area_atuacao_r002] FOREIGN KEY([seq_area_atuacao])
REFERENCES [dbo].[ACQ_AREA_ATUACAO] ([seq_area_atuacao])
GO
ALTER TABLE [dbo].[ACQ_ESTIMATIVA_LIGACAO] CHECK CONSTRAINT [acq_area_atuacao_r002]
GO
IF NOT EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[IND_CALCULO_CONSUMO22]') AND parent_object_id = OBJECT_ID(N'[dbo].[ACQ_ESTIMATIVA_LIGACAO]'))
ALTER TABLE [dbo].[ACQ_ESTIMATIVA_LIGACAO]  WITH CHECK ADD  CONSTRAINT [IND_CALCULO_CONSUMO22] CHECK  (([ind_calculo_consumo] = 'C' or [ind_calculo_consumo] = 'F'))
GO
ALTER TABLE [dbo].[ACQ_ESTIMATIVA_LIGACAO] CHECK CONSTRAINT [IND_CALCULO_CONSUMO22]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[acq_funcao_unidade_servico_r002]') AND parent_object_id = OBJECT_ID(N'[dbo].[ACQ_SERVICO_MANUTENCAO]'))
ALTER TABLE [dbo].[ACQ_SERVICO_MANUTENCAO]  WITH CHECK ADD  CONSTRAINT [acq_funcao_unidade_servico_r002] FOREIGN KEY([seq_funcao_unidade_servico])
REFERENCES [dbo].[ACQ_FUNCAO_UNIDADE_SERVICO] ([seq_funcao_unidade_servico])
GO
ALTER TABLE [dbo].[ACQ_SERVICO_MANUTENCAO] CHECK CONSTRAINT [acq_funcao_unidade_servico_r002]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[acq_servico_manutencao_r008]') AND parent_object_id = OBJECT_ID(N'[dbo].[ACQ_SERVICO_MANUTENCAO]'))
ALTER TABLE [dbo].[ACQ_SERVICO_MANUTENCAO]  WITH CHECK ADD  CONSTRAINT [acq_servico_manutencao_r008] FOREIGN KEY([seq_servico_administrativo])
REFERENCES [dbo].[ACQ_SERVICO_MANUTENCAO] ([seq_servico_manutencao])
GO
ALTER TABLE [dbo].[ACQ_SERVICO_MANUTENCAO] CHECK CONSTRAINT [acq_servico_manutencao_r008]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[acq_tipo_servico_r002]') AND parent_object_id = OBJECT_ID(N'[dbo].[ACQ_SERVICO_MANUTENCAO]'))
ALTER TABLE [dbo].[ACQ_SERVICO_MANUTENCAO]  WITH CHECK ADD  CONSTRAINT [acq_tipo_servico_r002] FOREIGN KEY([seq_tipo_servico])
REFERENCES [dbo].[ACQ_TIPO_SERVICO] ([seq_tipo_servico])
GO
ALTER TABLE [dbo].[ACQ_SERVICO_MANUTENCAO] CHECK CONSTRAINT [acq_tipo_servico_r002]
GO
IF NOT EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[IND_GRAVACAO_SERVICO21]') AND parent_object_id = OBJECT_ID(N'[dbo].[ACQ_SERVICO_MANUTENCAO]'))
ALTER TABLE [dbo].[ACQ_SERVICO_MANUTENCAO]  WITH CHECK ADD  CONSTRAINT [IND_GRAVACAO_SERVICO21] CHECK  (([ind_gravacao] = '8' or ([ind_gravacao] = '7' or ([ind_gravacao] = '6' or ([ind_gravacao] = '5' or ([ind_gravacao] = '4' or ([ind_gravacao] = '3' or ([ind_gravacao] = '2' or ([ind_gravacao] = '1' or [ind_gravacao] = '0')))))))))
GO
ALTER TABLE [dbo].[ACQ_SERVICO_MANUTENCAO] CHECK CONSTRAINT [IND_GRAVACAO_SERVICO21]
GO
IF NOT EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[IND_MEDIDA_FATURAMENTO20]') AND parent_object_id = OBJECT_ID(N'[dbo].[ACQ_SERVICO_MANUTENCAO]'))
ALTER TABLE [dbo].[ACQ_SERVICO_MANUTENCAO]  WITH CHECK ADD  CONSTRAINT [IND_MEDIDA_FATURAMENTO20] CHECK  (([ind_medida_faturamento] = 'M' or [ind_medida_faturamento] = 'U'))
GO
ALTER TABLE [dbo].[ACQ_SERVICO_MANUTENCAO] CHECK CONSTRAINT [IND_MEDIDA_FATURAMENTO20]
GO
IF NOT EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[IND_PRAZO_EXECUCAO80]') AND parent_object_id = OBJECT_ID(N'[dbo].[ACQ_SERVICO_MANUTENCAO]'))
ALTER TABLE [dbo].[ACQ_SERVICO_MANUTENCAO]  WITH CHECK ADD  CONSTRAINT [IND_PRAZO_EXECUCAO80] CHECK  (([ind_prazo_execucao_cliente] = 'M' or ([ind_prazo_execucao_cliente] = 'D' or [ind_prazo_execucao_cliente] = 'H')))
GO
ALTER TABLE [dbo].[ACQ_SERVICO_MANUTENCAO] CHECK CONSTRAINT [IND_PRAZO_EXECUCAO80]
GO
IF NOT EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[IND_PRAZO_EXECUCAO81]') AND parent_object_id = OBJECT_ID(N'[dbo].[ACQ_SERVICO_MANUTENCAO]'))
ALTER TABLE [dbo].[ACQ_SERVICO_MANUTENCAO]  WITH CHECK ADD  CONSTRAINT [IND_PRAZO_EXECUCAO81] CHECK  (([ind_prazo_execucao_unidade] = 'M' or ([ind_prazo_execucao_unidade] = 'D' or [ind_prazo_execucao_unidade] = 'H')))
GO
ALTER TABLE [dbo].[ACQ_SERVICO_MANUTENCAO] CHECK CONSTRAINT [IND_PRAZO_EXECUCAO81]
GO
IF NOT EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[IND_PRAZO_EXECUCAO82]') AND parent_object_id = OBJECT_ID(N'[dbo].[ACQ_SERVICO_MANUTENCAO]'))
ALTER TABLE [dbo].[ACQ_SERVICO_MANUTENCAO]  WITH CHECK ADD  CONSTRAINT [IND_PRAZO_EXECUCAO82] CHECK  (([ind_tempo_execucao] = 'M' or ([ind_tempo_execucao] = 'D' or [ind_tempo_execucao] = 'H')))
GO
ALTER TABLE [dbo].[ACQ_SERVICO_MANUTENCAO] CHECK CONSTRAINT [IND_PRAZO_EXECUCAO82]
GO
IF NOT EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[IND_PRAZO_EXECUCAO83]') AND parent_object_id = OBJECT_ID(N'[dbo].[ACQ_SERVICO_MANUTENCAO]'))
ALTER TABLE [dbo].[ACQ_SERVICO_MANUTENCAO]  WITH CHECK ADD  CONSTRAINT [IND_PRAZO_EXECUCAO83] CHECK  (([ind_tempo_garantia] = 'M' or ([ind_tempo_garantia] = 'D' or [ind_tempo_garantia] = 'H')))
GO
ALTER TABLE [dbo].[ACQ_SERVICO_MANUTENCAO] CHECK CONSTRAINT [IND_PRAZO_EXECUCAO83]
GO
IF NOT EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[SIM_NAO1595]') AND parent_object_id = OBJECT_ID(N'[dbo].[ACQ_SERVICO_MANUTENCAO]'))
ALTER TABLE [dbo].[ACQ_SERVICO_MANUTENCAO]  WITH CHECK ADD  CONSTRAINT [SIM_NAO1595] CHECK  (([ind_rede] = 'N' or [ind_rede] = 'S'))
GO
ALTER TABLE [dbo].[ACQ_SERVICO_MANUTENCAO] CHECK CONSTRAINT [SIM_NAO1595]
GO
IF NOT EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[SIM_NAO1596]') AND parent_object_id = OBJECT_ID(N'[dbo].[ACQ_SERVICO_MANUTENCAO]'))
ALTER TABLE [dbo].[ACQ_SERVICO_MANUTENCAO]  WITH CHECK ADD  CONSTRAINT [SIM_NAO1596] CHECK  (([ind_garantia] = 'N' or [ind_garantia] = 'S'))
GO
ALTER TABLE [dbo].[ACQ_SERVICO_MANUTENCAO] CHECK CONSTRAINT [SIM_NAO1596]
GO
IF NOT EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[SIM_NAO1597]') AND parent_object_id = OBJECT_ID(N'[dbo].[ACQ_SERVICO_MANUTENCAO]'))
ALTER TABLE [dbo].[ACQ_SERVICO_MANUTENCAO]  WITH CHECK ADD  CONSTRAINT [SIM_NAO1597] CHECK  (([ind_fiscalizado] = 'N' or [ind_fiscalizado] = 'S'))
GO
ALTER TABLE [dbo].[ACQ_SERVICO_MANUTENCAO] CHECK CONSTRAINT [SIM_NAO1597]
GO
IF NOT EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[SIM_NAO1598]') AND parent_object_id = OBJECT_ID(N'[dbo].[ACQ_SERVICO_MANUTENCAO]'))
ALTER TABLE [dbo].[ACQ_SERVICO_MANUTENCAO]  WITH CHECK ADD  CONSTRAINT [SIM_NAO1598] CHECK  (([ind_integracao_onplace] = 'N' or [ind_integracao_onplace] = 'S'))
GO
ALTER TABLE [dbo].[ACQ_SERVICO_MANUTENCAO] CHECK CONSTRAINT [SIM_NAO1598]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[acq_debito_remessa_r002]') AND parent_object_id = OBJECT_ID(N'[dbo].[ACQ_DEBITO_RETORNO_ITEM]'))
ALTER TABLE [dbo].[ACQ_DEBITO_RETORNO_ITEM]  WITH CHECK ADD  CONSTRAINT [acq_debito_remessa_r002] FOREIGN KEY([seq_convenio], [seq_debito_remessa])
REFERENCES [dbo].[ACQ_DEBITO_REMESSA] ([seq_convenio], [seq_debito_remessa])
GO
ALTER TABLE [dbo].[ACQ_DEBITO_RETORNO_ITEM] CHECK CONSTRAINT [acq_debito_remessa_r002]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[acq_debito_retorno_r002]') AND parent_object_id = OBJECT_ID(N'[dbo].[ACQ_DEBITO_RETORNO_ITEM]'))
ALTER TABLE [dbo].[ACQ_DEBITO_RETORNO_ITEM]  WITH CHECK ADD  CONSTRAINT [acq_debito_retorno_r002] FOREIGN KEY([seq_convenio], [seq_debito_retorno])
REFERENCES [dbo].[ACQ_DEBITO_RETORNO] ([seq_convenio], [seq_debito_retorno])
GO
ALTER TABLE [dbo].[ACQ_DEBITO_RETORNO_ITEM] CHECK CONSTRAINT [acq_debito_retorno_r002]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[acq_fatura_r007]') AND parent_object_id = OBJECT_ID(N'[dbo].[ACQ_DEBITO_RETORNO_ITEM]'))
ALTER TABLE [dbo].[ACQ_DEBITO_RETORNO_ITEM]  WITH CHECK ADD  CONSTRAINT [acq_fatura_r007] FOREIGN KEY([seq_fatura])
REFERENCES [dbo].[ACQ_FATURA] ([seq_fatura])
GO
ALTER TABLE [dbo].[ACQ_DEBITO_RETORNO_ITEM] CHECK CONSTRAINT [acq_fatura_r007]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[acq_forma_pagamento_r003]') AND parent_object_id = OBJECT_ID(N'[dbo].[ACQ_DEBITO_RETORNO_ITEM]'))
ALTER TABLE [dbo].[ACQ_DEBITO_RETORNO_ITEM]  WITH CHECK ADD  CONSTRAINT [acq_forma_pagamento_r003] FOREIGN KEY([seq_forma_pagamento])
REFERENCES [dbo].[ACQ_FORMA_PAGAMENTO] ([seq_forma_pagamento])
GO
ALTER TABLE [dbo].[ACQ_DEBITO_RETORNO_ITEM] CHECK CONSTRAINT [acq_forma_pagamento_r003]
GO
IF NOT EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[IND_FORMA_ARRECADACAO_BOLETO30]') AND parent_object_id = OBJECT_ID(N'[dbo].[ACQ_DEBITO_RETORNO_ITEM]'))
ALTER TABLE [dbo].[ACQ_DEBITO_RETORNO_ITEM]  WITH CHECK ADD  CONSTRAINT [IND_FORMA_ARRECADACAO_BOLETO30] CHECK  (([ind_forma_arrecadacao] = '4' or ([ind_forma_arrecadacao] = '3' or ([ind_forma_arrecadacao] = '2' or [ind_forma_arrecadacao] = '1'))))
GO
ALTER TABLE [dbo].[ACQ_DEBITO_RETORNO_ITEM] CHECK CONSTRAINT [IND_FORMA_ARRECADACAO_BOLETO30]
GO
IF NOT EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[IND_RETORNO_DEBITO30]') AND parent_object_id = OBJECT_ID(N'[dbo].[ACQ_DEBITO_RETORNO_ITEM]'))
ALTER TABLE [dbo].[ACQ_DEBITO_RETORNO_ITEM]  WITH CHECK ADD  CONSTRAINT [IND_RETORNO_DEBITO30] CHECK  (([ind_retorno] = '99' or ([ind_retorno] = '98' or ([ind_retorno] = '97' or ([ind_retorno] = '96' or ([ind_retorno] = '30' or ([ind_retorno] = '18' or ([ind_retorno] = '15' or ([ind_retorno] = '14' or ([ind_retorno] = '13' or ([ind_retorno] = '12' or ([ind_retorno] = '10' or ([ind_retorno] = '04' or ([ind_retorno] = '02' or ([ind_retorno] = '01' or [ind_retorno] = '00')))))))))))))))
GO
ALTER TABLE [dbo].[ACQ_DEBITO_RETORNO_ITEM] CHECK CONSTRAINT [IND_RETORNO_DEBITO30]
GO
IF NOT EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[IND_TIPO_RETORNO44]') AND parent_object_id = OBJECT_ID(N'[dbo].[ACQ_DEBITO_RETORNO_ITEM]'))
ALTER TABLE [dbo].[ACQ_DEBITO_RETORNO_ITEM]  WITH CHECK ADD  CONSTRAINT [IND_TIPO_RETORNO44] CHECK  (([ind_tipo_item] = 'Z' or ([ind_tipo_item] = 'J' or ([ind_tipo_item] = 'G' or ([ind_tipo_item] = 'F' or ([ind_tipo_item] = 'E' or ([ind_tipo_item] = 'B' or [ind_tipo_item] = 'A')))))))
GO
ALTER TABLE [dbo].[ACQ_DEBITO_RETORNO_ITEM] CHECK CONSTRAINT [IND_TIPO_RETORNO44]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[acq_banco_agencia_r002]') AND parent_object_id = OBJECT_ID(N'[dbo].[ACQ_PAGAMENTOS]'))
ALTER TABLE [dbo].[ACQ_PAGAMENTOS]  WITH CHECK ADD  CONSTRAINT [acq_banco_agencia_r002] FOREIGN KEY([cod_banco], [cod_banco_agencia])
REFERENCES [dbo].[ACQ_BANCO_AGENCIA] ([cod_banco], [cod_banco_agencia])
GO
ALTER TABLE [dbo].[ACQ_PAGAMENTOS] CHECK CONSTRAINT [acq_banco_agencia_r002]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[acq_fatura_r002]') AND parent_object_id = OBJECT_ID(N'[dbo].[ACQ_PAGAMENTOS]'))
ALTER TABLE [dbo].[ACQ_PAGAMENTOS]  WITH CHECK ADD  CONSTRAINT [acq_fatura_r002] FOREIGN KEY([seq_fatura])
REFERENCES [dbo].[ACQ_FATURA] ([seq_fatura])
GO
ALTER TABLE [dbo].[ACQ_PAGAMENTOS] CHECK CONSTRAINT [acq_fatura_r002]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[acq_forma_pagamento_r002]') AND parent_object_id = OBJECT_ID(N'[dbo].[ACQ_PAGAMENTOS]'))
ALTER TABLE [dbo].[ACQ_PAGAMENTOS]  WITH CHECK ADD  CONSTRAINT [acq_forma_pagamento_r002] FOREIGN KEY([seq_forma_pagamento])
REFERENCES [dbo].[ACQ_FORMA_PAGAMENTO] ([seq_forma_pagamento])
GO
ALTER TABLE [dbo].[ACQ_PAGAMENTOS] CHECK CONSTRAINT [acq_forma_pagamento_r002]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[acq_lote_r002]') AND parent_object_id = OBJECT_ID(N'[dbo].[ACQ_PAGAMENTOS]'))
ALTER TABLE [dbo].[ACQ_PAGAMENTOS]  WITH CHECK ADD  CONSTRAINT [acq_lote_r002] FOREIGN KEY([seq_lote])
REFERENCES [dbo].[ACQ_LOTE] ([seq_lote])
GO
ALTER TABLE [dbo].[ACQ_PAGAMENTOS] CHECK CONSTRAINT [acq_lote_r002]
GO
IF NOT EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[IND_FORMA_ARRECADACAO48]') AND parent_object_id = OBJECT_ID(N'[dbo].[ACQ_PAGAMENTOS]'))
ALTER TABLE [dbo].[ACQ_PAGAMENTOS]  WITH CHECK ADD  CONSTRAINT [IND_FORMA_ARRECADACAO48] CHECK  (([ind_forma_arrecadacao] = '4' or ([ind_forma_arrecadacao] = '3' or ([ind_forma_arrecadacao] = '2' or [ind_forma_arrecadacao] = '1'))))
GO
ALTER TABLE [dbo].[ACQ_PAGAMENTOS] CHECK CONSTRAINT [IND_FORMA_ARRECADACAO48]
GO
IF NOT EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[IND_STATUS_PAGAMENTO29]') AND parent_object_id = OBJECT_ID(N'[dbo].[ACQ_PAGAMENTOS]'))
ALTER TABLE [dbo].[ACQ_PAGAMENTOS]  WITH CHECK ADD  CONSTRAINT [IND_STATUS_PAGAMENTO29] CHECK  (([ind_status] = '7' or ([ind_status] = '6' or ([ind_status] = '5' or ([ind_status] = '4' or ([ind_status] = '3' or ([ind_status] = '2' or [ind_status] = '1')))))))
GO
ALTER TABLE [dbo].[ACQ_PAGAMENTOS] CHECK CONSTRAINT [IND_STATUS_PAGAMENTO29]
GO
IF NOT EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[IND_TIPO_PAGAMENTO32]') AND parent_object_id = OBJECT_ID(N'[dbo].[ACQ_PAGAMENTOS]'))
ALTER TABLE [dbo].[ACQ_PAGAMENTOS]  WITH CHECK ADD  CONSTRAINT [IND_TIPO_PAGAMENTO32] CHECK  (([ind_tipo_pagamento] = 'P' or ([ind_tipo_pagamento] = 'T' or ([ind_tipo_pagamento] = 'C' or ([ind_tipo_pagamento] = 'S' or [ind_tipo_pagamento] = 'M')))))
GO
ALTER TABLE [dbo].[ACQ_PAGAMENTOS] CHECK CONSTRAINT [IND_TIPO_PAGAMENTO32]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[acq_tipo_entrega_r001]') AND parent_object_id = OBJECT_ID(N'[dbo].[ACQ_MOVIMENTO]'))
ALTER TABLE [dbo].[ACQ_MOVIMENTO]  WITH CHECK ADD  CONSTRAINT [acq_tipo_entrega_r001] FOREIGN KEY([seq_tipo_entrega])
REFERENCES [dbo].[ACQ_TIPO_ENTREGA] ([seq_tipo_entrega])
GO
ALTER TABLE [dbo].[ACQ_MOVIMENTO] CHECK CONSTRAINT [acq_tipo_entrega_r001]
GO
IF NOT EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[IND_ENTREGA_ESPECIAL159]') AND parent_object_id = OBJECT_ID(N'[dbo].[ACQ_MOVIMENTO]'))
ALTER TABLE [dbo].[ACQ_MOVIMENTO]  WITH CHECK ADD  CONSTRAINT [IND_ENTREGA_ESPECIAL159] CHECK  (([ind_entrega_especial] = '6' or ([ind_entrega_especial] = '5' or ([ind_entrega_especial] = '4' or ([ind_entrega_especial] = '3' or ([ind_entrega_especial] = '2' or ([ind_entrega_especial] = '1' or [ind_entrega_especial] = '0')))))))
GO
ALTER TABLE [dbo].[ACQ_MOVIMENTO] CHECK CONSTRAINT [IND_ENTREGA_ESPECIAL159]
GO
IF NOT EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[IND_MOTIVO_RETIRADA40]') AND parent_object_id = OBJECT_ID(N'[dbo].[ACQ_MOVIMENTO]'))
ALTER TABLE [dbo].[ACQ_MOVIMENTO]  WITH CHECK ADD  CONSTRAINT [IND_MOTIVO_RETIRADA40] CHECK  (([ind_motivo_retirada] = 'D' or ([ind_motivo_retirada] = 'T' or ([ind_motivo_retirada] = 'V' or ([ind_motivo_retirada] = 'E' or ([ind_motivo_retirada] = 'P' or ([ind_motivo_retirada] = 'C' or ([ind_motivo_retirada] = 'I' or ([ind_motivo_retirada] = 'A' or [ind_motivo_retirada] = 'R')))))))))
GO
ALTER TABLE [dbo].[ACQ_MOVIMENTO] CHECK CONSTRAINT [IND_MOTIVO_RETIRADA40]
GO
IF NOT EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[IND_SITUACAO_MOVIMENTO51]') AND parent_object_id = OBJECT_ID(N'[dbo].[ACQ_MOVIMENTO]'))
ALTER TABLE [dbo].[ACQ_MOVIMENTO]  WITH CHECK ADD  CONSTRAINT [IND_SITUACAO_MOVIMENTO51] CHECK  (([ind_situacao_movimento] = 'N' or ([ind_situacao_movimento] = 'R' or ([ind_situacao_movimento] = 'F' or ([ind_situacao_movimento] = 'C' or ([ind_situacao_movimento] = 'L' or [ind_situacao_movimento] = 'P'))))))
GO
ALTER TABLE [dbo].[ACQ_MOVIMENTO] CHECK CONSTRAINT [IND_SITUACAO_MOVIMENTO51]
GO
IF NOT EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[SIM_NAO1574]') AND parent_object_id = OBJECT_ID(N'[dbo].[ACQ_MOVIMENTO]'))
ALTER TABLE [dbo].[ACQ_MOVIMENTO]  WITH CHECK ADD  CONSTRAINT [SIM_NAO1574] CHECK  (([ind_leitura_divergente] = 'N' or [ind_leitura_divergente] = 'S'))
GO
ALTER TABLE [dbo].[ACQ_MOVIMENTO] CHECK CONSTRAINT [SIM_NAO1574]
GO
IF NOT EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[SIM_NAO1575]') AND parent_object_id = OBJECT_ID(N'[dbo].[ACQ_MOVIMENTO]'))
ALTER TABLE [dbo].[ACQ_MOVIMENTO]  WITH CHECK ADD  CONSTRAINT [SIM_NAO1575] CHECK  (([ind_fatura_emitida] = 'N' or [ind_fatura_emitida] = 'S'))
GO
ALTER TABLE [dbo].[ACQ_MOVIMENTO] CHECK CONSTRAINT [SIM_NAO1575]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[acq_ordem_servico_item_r004]') AND parent_object_id = OBJECT_ID(N'[dbo].[ACQ_ORDEM_SERVICO_WORKFLOW]'))
ALTER TABLE [dbo].[ACQ_ORDEM_SERVICO_WORKFLOW]  WITH CHECK ADD  CONSTRAINT [acq_ordem_servico_item_r004] FOREIGN KEY([seq_ordem_servico], [seq_ordem_servico_item])
REFERENCES [dbo].[ACQ_ORDEM_SERVICO_ITEM] ([seq_ordem_servico], [seq_ordem_servico_item])
GO
ALTER TABLE [dbo].[ACQ_ORDEM_SERVICO_WORKFLOW] CHECK CONSTRAINT [acq_ordem_servico_item_r004]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[acq_ordem_servico_r003]') AND parent_object_id = OBJECT_ID(N'[dbo].[ACQ_ORDEM_SERVICO_WORKFLOW]'))
ALTER TABLE [dbo].[ACQ_ORDEM_SERVICO_WORKFLOW]  WITH CHECK ADD  CONSTRAINT [acq_ordem_servico_r003] FOREIGN KEY([seq_ordem_servico_gerada])
REFERENCES [dbo].[ACQ_ORDEM_SERVICO] ([seq_ordem_servico])
GO
ALTER TABLE [dbo].[ACQ_ORDEM_SERVICO_WORKFLOW] CHECK CONSTRAINT [acq_ordem_servico_r003]
GO
IF NOT EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[IND_STATUS_OS49]') AND parent_object_id = OBJECT_ID(N'[dbo].[ACQ_ORDEM_SERVICO_WORKFLOW]'))
ALTER TABLE [dbo].[ACQ_ORDEM_SERVICO_WORKFLOW]  WITH CHECK ADD  CONSTRAINT [IND_STATUS_OS49] CHECK  (([ind_status] = 'AG' or ([ind_status] = 'FR' or ([ind_status] = 'FO' or ([ind_status] = 'FI' or ([ind_status] = 'CA' or ([ind_status] = 'EX' or ([ind_status] = 'PR' or [ind_status] = 'PE'))))))))
GO
ALTER TABLE [dbo].[ACQ_ORDEM_SERVICO_WORKFLOW] CHECK CONSTRAINT [IND_STATUS_OS49]
GO
IF NOT EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[IND_TIPO_EXECUCAO_WORKFLOW37]') AND parent_object_id = OBJECT_ID(N'[dbo].[ACQ_ORDEM_SERVICO_WORKFLOW]'))
ALTER TABLE [dbo].[ACQ_ORDEM_SERVICO_WORKFLOW]  WITH CHECK ADD  CONSTRAINT [IND_TIPO_EXECUCAO_WORKFLOW37] CHECK  (([ind_tipo_execucao] = 'E' or ([ind_tipo_execucao] = 'D' or [ind_tipo_execucao] = 'A')))
GO
ALTER TABLE [dbo].[ACQ_ORDEM_SERVICO_WORKFLOW] CHECK CONSTRAINT [IND_TIPO_EXECUCAO_WORKFLOW37]
