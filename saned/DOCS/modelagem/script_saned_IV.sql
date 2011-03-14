SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[IDA_LIGACOES]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[IDA_LIGACOES](
	[Codigo_Logradouro] [int] NOT NULL,
	[Numero_Imovel] [int] NULL,
	[Complemento] [varchar](10) NULL,
	[Inscricao] [varchar](16) NOT NULL,
	[Grupo] [int] NOT NULL,
	[Setor] [int] NOT NULL,
	[Rota] [int] NOT NULL,
	[Sequencia] [int] NOT NULL,
	[Cachorro] [varchar](1) NULL,
	[CDC] [int] NOT NULL,
	[CDC_Pai] [int] NULL,
	[Media] [int] NULL,
	[Medidor] [varchar](11) NULL,
	[Categoria_Imovel] [int] NOT NULL,
	[Natureza_Ligacao] [int] NOT NULL,
	[Eco_Res] [int] NULL,
	[Eco_Com] [int] NULL,
	[Eco_Ind] [int] NULL,
	[Eco_Pub] [int] NULL,
	[Eco_Soc] [int] NULL,
	[Bloqueado] [varchar](1) NOT NULL,
	[Data_Bloqueio] [datetime] NULL,
	[Data_DesBloqueio] [datetime] NULL,
	[Qtde_Debitos] [int] NULL,
	[Mensagem1] [varchar](30) NULL,
	[Mensagem2] [varchar](180) NULL,
	[Qtde_Registros_Fraude] [int] NULL,
	[Clas_Imovel] [int] NOT NULL,
	[Ident_Consumidor] [int] NOT NULL,
	[Ident_Calculo] [varchar](1) NOT NULL,
	[Emite_Conta] [varchar](1) NOT NULL,
	[Data_Inst_HD] [datetime] NULL,
	[Leitura_Inicial_HD] [int] NULL,
	[Qtde_Ponteiros] [int] NULL,
	[Cortar] [varchar](1) NOT NULL,
	[Nome] [varchar](35) NOT NULL,
	[Agencia] [int] NULL,
	[Banco] [int] NULL,
	[Data_Vencimento] [datetime] NOT NULL,
	[Calcula_Imposto] [varchar](1) NOT NULL,
	[Endereco_Entrega] [varchar](60) NULL,
	[Calcula_Conta] [char](1) NULL,
	[Dias_Bloqueio_Tarifa_Ant] [int] NOT NULL,
	[Dias_Bloqueio_Tarifa_Atual] [int] NOT NULL,
	[Ident_Ligacao_Nova] [varchar](1) NULL,
 CONSTRAINT [PK_IDA_LIGACOES] PRIMARY KEY CLUSTERED 
(
	[Grupo] ASC,
	[CDC] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[IDA_AGENTES]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[IDA_AGENTES](
	[Grupo] [int] NOT NULL,
	[Codigo] [int] NOT NULL,
	[Nome] [varchar](30) NULL,
	[Senha] [varchar](6) NULL,
 CONSTRAINT [PK_IDA_AGENTES] PRIMARY KEY CLUSTERED 
(
	[Grupo] ASC,
	[Codigo] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[IDA_CLASSIFICACAO_IMOVEIS]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[IDA_CLASSIFICACAO_IMOVEIS](
	[Grupo] [int] NOT NULL,
	[Codigo] [int] NOT NULL,
	[Percentual] [decimal](5, 2) NOT NULL,
	[Limite_Inicial] [int] NOT NULL,
	[Descricao] [varchar](20) NULL,
	[Indicativo_Desconto] [int] NOT NULL,
 CONSTRAINT [PK_IDA_CLASSIFICACAO_IMOVEIS] PRIMARY KEY CLUSTERED 
(
	[Grupo] ASC,
	[Codigo] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[IDA_CREDITOS]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[IDA_CREDITOS](
	[Grupo] [int] NOT NULL,
	[CDC] [int] NOT NULL,
	[Valor] [decimal](14, 2) NOT NULL,
 CONSTRAINT [PK_IDA_CREDITOS] PRIMARY KEY CLUSTERED 
(
	[Grupo] ASC,
	[CDC] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[IDA_DEBITOS]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[IDA_DEBITOS](
	[Grupo] [int] NOT NULL,
	[Tipo] [varchar](1) NOT NULL,
	[CDC] [int] NOT NULL,
	[Qtde_Debitos] [int] NOT NULL,
	[Valor_Total] [decimal](14, 2) NOT NULL,
	[Data_Vencimento] [datetime] NOT NULL,
	[Codigo_Barras] [varchar](48) NOT NULL,
 CONSTRAINT [PK_IDA_DEBITOS] PRIMARY KEY CLUSTERED 
(
	[Grupo] ASC,
	[Tipo] ASC,
	[CDC] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[IDA_DEBITOS_ITENS]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[IDA_DEBITOS_ITENS](
	[Grupo] [int] NOT NULL,
	[CDC] [int] NOT NULL,
	[Referencia] [datetime] NOT NULL,
	[Valor] [decimal](14, 2) NOT NULL,
 CONSTRAINT [PK_IDA_DEBITOS_ITENS] PRIMARY KEY CLUSTERED 
(
	[Grupo] ASC,
	[CDC] ASC,
	[Referencia] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[IDA_HISTORICOS_CONSUMO]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[IDA_HISTORICOS_CONSUMO](
	[Grupo] [int] NOT NULL,
	[CDC] [int] NOT NULL,
	[Referencia] [datetime] NOT NULL,
	[Leitura] [int] NOT NULL,
	[Data_Leitura] [datetime] NOT NULL,
	[Consumo] [int] NOT NULL,
	[Dias_Consumo] [int] NOT NULL,
	[Ocorrencia] [int] NULL,
	[Leitura_Real] [int] NULL,
 CONSTRAINT [PK_IDA_HISTORICOS_CONSUMO] PRIMARY KEY CLUSTERED 
(
	[Grupo] ASC,
	[CDC] ASC,
	[Referencia] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[IDA_IDENT_CONSUMIDOR]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[IDA_IDENT_CONSUMIDOR](
	[Grupo] [int] NOT NULL,
	[Codigo] [int] NOT NULL,
	[Descricao] [varchar](20) NULL,
 CONSTRAINT [PK_IDA_IDENT_CONSUMIDOR] PRIMARY KEY CLUSTERED 
(
	[Grupo] ASC,
	[Codigo] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[IDA_IMPOSTOS]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[IDA_IMPOSTOS](
	[Grupo] [int] NOT NULL,
	[Data_Inicial] [datetime] NOT NULL,
	[IR] [decimal](5, 2) NOT NULL,
	[CSLL] [decimal](5, 2) NOT NULL,
	[PIS] [decimal](5, 2) NOT NULL,
	[COFINS] [decimal](5, 2) NOT NULL,
 CONSTRAINT [PK_IDA_IMPOSTOS] PRIMARY KEY CLUSTERED 
(
	[Grupo] ASC,
	[Data_Inicial] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[IDA_LOGRADOUROS]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[IDA_LOGRADOUROS](
	[Grupo] [int] NOT NULL,
	[Codigo] [int] NOT NULL,
	[Nome] [varchar](48) NOT NULL,
 CONSTRAINT [PK_IDA_LOGRADOUROS] PRIMARY KEY CLUSTERED 
(
	[Grupo] ASC,
	[Codigo] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[IDA_MENSAGENS]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[IDA_MENSAGENS](
	[Grupo] [int] NOT NULL,
	[Data_Inicial] [datetime] NOT NULL,
	[Mensagem1] [varchar](60) NULL,
	[Mensagem2] [varchar](60) NULL,
	[Mensagem3] [varchar](60) NULL,
 CONSTRAINT [PK_IDA_MENSAGENS] PRIMARY KEY CLUSTERED 
(
	[Grupo] ASC,
	[Data_Inicial] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[IDA_OCORRENCIAS]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[IDA_OCORRENCIAS](
	[Grupo] [int] NOT NULL,
	[Codigo] [int] NOT NULL,
	[Descricao] [varchar](40) NOT NULL,
	[Calculo] [varchar](1) NOT NULL,
	[Mensagem] [varchar](1) NOT NULL,
	[Acesso] [varchar](1) NOT NULL,
 CONSTRAINT [PK_IDA_OCORRENCIAS] PRIMARY KEY CLUSTERED 
(
	[Grupo] ASC,
	[Codigo] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[IDA_QUALIDADE_AGUA]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[IDA_QUALIDADE_AGUA](
	[Grupo] [int] NOT NULL,
	[Data] [datetime] NOT NULL,
	[Turbidez] [varchar](7) NOT NULL,
	[Cloro] [varchar](7) NOT NULL,
	[Coliformes_Totais] [varchar](7) NOT NULL,
	[Coliformes_Termotolerantes] [varchar](7) NOT NULL,
	[pH] [varchar](7) NOT NULL,
	[Cor] [varchar](7) NOT NULL,
	[Fluoreto] [varchar](7) NOT NULL,
	[Turbidez_Amostras] [int] NULL,
	[Turbidez_Nao_Conformes] [int] NULL,
	[Cloro_Amostras] [int] NULL,
	[Cloro_Nao_Conformes] [int] NULL,
	[Coliformes_Totais_Amostras] [int] NULL,
	[Coliformes_Totais_Nao_Conformes] [int] NULL,
	[Coliformes_Termotolerantes_Amostras] [int] NULL,
	[Coliformes_Termotolerantes_Nao_Conformes] [int] NULL,
	[pH_Amostras] [int] NULL,
	[pH_Nao_Conformes] [int] NULL,
	[Cor_Amostras] [int] NULL,
	[Cor_Nao_Conformes] [int] NULL,
	[Fluoreto_Amostras] [int] NULL,
	[Fluoreto_Nao_Conformes] [int] NULL,
 CONSTRAINT [PK_IDA_QUALIDADE_AGUA] PRIMARY KEY CLUSTERED 
(
	[Grupo] ASC,
	[Data] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[IDA_SEGUNDAS_VIAS]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[IDA_SEGUNDAS_VIAS](
	[Grupo] [int] NOT NULL,
	[CDC] [int] NOT NULL,
	[Referencia] [datetime] NOT NULL,
	[Data_Vencimento] [datetime] NOT NULL,
	[Data_Leitura] [datetime] NOT NULL,
	[Data_Leitura_Anterior] [datetime] NOT NULL,
	[Leitura_Atual] [int] NULL,
	[Leitura_Anterior] [int] NULL,
	[Dias_Consumo] [int] NULL,
	[Consumo_Faturado] [int] NULL,
	[Media] [int] NULL,
	[Ref_Cons_1] [datetime] NULL,
	[Cons_1] [int] NULL,
	[Ref_Cons_2] [datetime] NULL,
	[Cons_2] [int] NULL,
	[Ref_Cons_3] [datetime] NULL,
	[Cons_3] [int] NULL,
	[Ref_Cons_4] [datetime] NULL,
	[Cons_4] [int] NULL,
	[Ref_Cons_5] [datetime] NULL,
	[Cons_5] [int] NULL,
	[Ref_Cons_6] [datetime] NULL,
	[Cons_6] [int] NULL,
	[Servico_01] [varchar](35) NOT NULL,
	[Valor_01] [decimal](14, 2) NOT NULL,
	[Servico_02] [varchar](35) NULL,
	[Valor_02] [decimal](14, 2) NULL,
	[Servico_03] [varchar](35) NULL,
	[Valor_03] [decimal](14, 2) NULL,
	[Servico_04] [varchar](35) NULL,
	[Valor_04] [decimal](14, 2) NULL,
	[Servico_05] [varchar](35) NULL,
	[Valor_05] [decimal](14, 2) NULL,
	[Servico_06] [varchar](35) NULL,
	[Valor_06] [decimal](14, 2) NULL,
	[Servico_07] [varchar](35) NULL,
	[Valor_07] [decimal](14, 2) NULL,
	[Servico_08] [varchar](35) NULL,
	[Valor_08] [decimal](14, 2) NULL,
	[Servico_09] [varchar](35) NULL,
	[Valor_09] [decimal](14, 2) NULL,
	[Valor_Total] [decimal](14, 2) NOT NULL,
	[Codigo_Barras] [varchar](48) NOT NULL,
	[Ocorrencia] [int] NULL,
 CONSTRAINT [PK_IDA_SEGUNDAS_VIAS] PRIMARY KEY CLUSTERED 
(
	[Grupo] ASC,
	[CDC] ASC,
	[Referencia] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[IDA_SERVICOS]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[IDA_SERVICOS](
	[Grupo] [int] NOT NULL,
	[CDC] [int] NOT NULL,
	[Sequencia] [int] NOT NULL,
	[Descricao] [varchar](35) NOT NULL,
	[Valor] [decimal](14, 2) NOT NULL,
 CONSTRAINT [PK_IDA_SERVICOS] PRIMARY KEY CLUSTERED 
(
	[Grupo] ASC,
	[CDC] ASC,
	[Sequencia] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[IDA_TARIFAS]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[IDA_TARIFAS](
	[Grupo] [int] NOT NULL,
	[Data_Vigencia] [datetime] NOT NULL,
	[Categoria] [int] NOT NULL,
	[Limite_Consumo] [int] NOT NULL,
	[Agua] [decimal](14, 2) NOT NULL,
	[Esgoto] [decimal](14, 2) NOT NULL,
 CONSTRAINT [PK_IDA_TARIFAS] PRIMARY KEY CLUSTERED 
(
	[Grupo] ASC,
	[Data_Vigencia] ASC,
	[Categoria] ASC,
	[Limite_Consumo] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[VOLTA_LEITURA]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[VOLTA_LEITURA](
	[Grupo] [int] NOT NULL,
	[Setor] [int] NOT NULL,
	[Rota] [int] NOT NULL,
	[CDC] [int] NOT NULL,
	[Leitura_Ajustada] [int] NULL,
	[Leitura_Real] [int] NULL,
	[Data_Leitura] [datetime] NULL,
	[Consumo_Ajustado] [int] NULL,
	[Esgoto_Ajustado] [int] NULL,
	[Dias_Consumo] [int] NULL,
	[Ocorrencia] [int] NULL,
	[Ident_fraude] [varchar](1) NOT NULL,
	[Indic_cortado] [varchar](1) NOT NULL,
	[Operador] [int] NULL,
	[Flag_Calculo] [varchar](1) NOT NULL,
	[Flag_Emissao] [varchar](1) NOT NULL,
	[Referencia] [datetime] NOT NULL,
	[Data_Emissao] [datetime] NULL,
	[Vencimento] [datetime] NULL,
	[Valor_Agua] [decimal](14, 2) NULL,
	[Valor_Esgoto] [decimal](14, 2) NULL,
	[Valor_Credito] [decimal](14, 2) NULL,
	[Valor_Reducao] [decimal](14, 2) NULL,
	[Valor_IR] [decimal](14, 2) NULL,
	[Valor_CSLL] [decimal](14, 2) NULL,
	[Valor_PIS] [decimal](14, 2) NULL,
	[Valor_COFINS] [decimal](14, 2) NULL,
	[Categoria] [int] NOT NULL,
	[Eco_Res] [int] NOT NULL,
	[Eco_Com] [int] NOT NULL,
	[Eco_Ind] [int] NOT NULL,
	[Eco_Pub] [int] NOT NULL,
	[Eco_Soc] [int] NOT NULL,
	[Consumo_Rateado] [int] NULL,
	[Valor_Saldo_Debito] [decimal](14, 2) NULL,
	[Flag_Lido] [varchar](1) NULL,
	[Flag_Faturado] [varchar](1) NULL,
	[Ocorrencia2] [int] NULL
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[VOLTA_LOG_ATENDIMENTO]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[VOLTA_LOG_ATENDIMENTO](
	[Grupo] [int] NOT NULL,
	[CDC] [int] NOT NULL,
	[Tipo] [char](1) NOT NULL,
	[Referencia] [datetime] NULL,
	[Data_Emissao] [datetime] NOT NULL,
	[Operador] [int] NULL
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[VOLTA_NOVO_REGISTRO]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[VOLTA_NOVO_REGISTRO](
	[Grupo] [int] NOT NULL,
	[Rota] [int] NOT NULL,
	[Complemento] [varchar](10) NULL,
	[Medidor] [varchar](11) NULL,
	[Nome] [varchar](35) NULL,
	[OBS] [varchar](100) NULL,
	[referencia] [datetime] NULL,
	[logradouro] [varchar](48) NULL,
	[numero] [int] NULL
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[VOLTA_ROTEIRO]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[VOLTA_ROTEIRO](
	[Referencia] [datetime] NOT NULL,
	[Grupo] [int] NOT NULL,
	[Rota] [int] NOT NULL,
	[Data_Inicial] [datetime] NOT NULL,
	[Data_Final] [datetime] NOT NULL,
	[Data_Envio] [datetime] NOT NULL,
	[Data_Processamento] [datetime] NULL,
	[Aparelho] [int] NOT NULL,
	[Data_Problema] [datetime] NULL,
	[Chuva] [varchar](1) NOT NULL
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[BACKUP_86706]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[BACKUP_86706](
	[Grupo] [int] NOT NULL,
	[Setor] [int] NOT NULL,
	[Rota] [int] NOT NULL,
	[CDC] [int] NOT NULL,
	[Leitura_Ajustada] [int] NULL,
	[Leitura_Real] [int] NULL,
	[Data_Leitura] [datetime] NULL,
	[Consumo_Ajustado] [int] NULL,
	[Esgoto_Ajustado] [int] NULL,
	[Dias_Consumo] [int] NULL,
	[Ocorrencia] [int] NULL,
	[Ident_fraude] [varchar](1) NOT NULL,
	[Indic_cortado] [varchar](1) NOT NULL,
	[Operador] [int] NULL,
	[Flag_Calculo] [varchar](1) NOT NULL,
	[Flag_Emissao] [varchar](1) NOT NULL,
	[Referencia] [datetime] NOT NULL,
	[Data_Emissao] [datetime] NULL,
	[Vencimento] [datetime] NULL,
	[Valor_Agua] [decimal](14, 2) NULL,
	[Valor_Esgoto] [decimal](14, 2) NULL,
	[Valor_Credito] [decimal](14, 2) NULL,
	[Valor_Reducao] [decimal](14, 2) NULL,
	[Valor_IR] [decimal](14, 2) NULL,
	[Valor_CSLL] [decimal](14, 2) NULL,
	[Valor_PIS] [decimal](14, 2) NULL,
	[Valor_COFINS] [decimal](14, 2) NULL,
	[Categoria] [int] NOT NULL,
	[Eco_Res] [int] NOT NULL,
	[Eco_Com] [int] NOT NULL,
	[Eco_Ind] [int] NOT NULL,
	[Eco_Pub] [int] NOT NULL,
	[Eco_Soc] [int] NOT NULL,
	[Consumo_Rateado] [int] NULL,
	[Valor_Saldo_Debito] [decimal](14, 2) NULL,
	[Flag_Lido] [varchar](1) NULL,
	[Flag_Faturado] [varchar](1) NULL
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[VOLTA_ALTERACAO]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[VOLTA_ALTERACAO](
	[Grupo] [int] NOT NULL,
	[CDC] [int] NOT NULL,
	[Numero_Imovel] [int] NULL,
	[Complemento] [varchar](10) NULL,
	[Medidor] [varchar](11) NULL,
	[Nome_Consumidor] [varchar](35) NULL,
	[observacao] [varchar](100) NULL,
	[referencia] [datetime] NULL
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[teste]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[teste](
	[teste] [char](10) NULL
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[IDA_GRUPOS]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[IDA_GRUPOS](
	[Referencia] [datetime] NOT NULL,
	[Grupo] [int] NOT NULL,
	[Data_Envio] [datetime] NOT NULL,
	[Data_Processamento] [datetime] NULL,
	[Data_Retorno] [datetime] NULL,
	[Data_Leitura] [datetime] NULL,
	[Data_Proxima_Leitura] [datetime] NULL,
	[Qtde_Registros] [int] NOT NULL,
 CONSTRAINT [PK_IDA_GRUPOS] PRIMARY KEY CLUSTERED 
(
	[Referencia] ASC,
	[Grupo] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
END
