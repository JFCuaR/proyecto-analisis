SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Pagos]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Pagos](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](50) NULL,
	[Apellidos] [varchar](50) NULL,
	[Número] [varchar](50) NULL
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CLIENTES]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[CLIENTES](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[NIT] [varchar](15) NULL,
	[NOMBRE] [varchar](50) NULL,
	[EDAD] [varchar](50) NULL,
	[CORREO] [varchar](50) NULL,
	[DIRECCION] [varchar](50) NULL,
	[TELEFONO] [varchar](50) NULL,
 CONSTRAINT [PK_CLIENTES] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[productos1]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[productos1](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[codigo] [varchar](50) NULL,
	[nombre] [varchar](50) NULL,
	[precio] [decimal](18, 2) NULL
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[proveedores1]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[proveedores1](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[codigo] [int] NULL,
	[nombre] [varchar](50) NULL,
	[producto_cod] [int] NULL,
	[nombre_producto] [varchar](50) NULL,
	[cantidad] [int] NULL,
	[fecha_entrega] [datetime] NULL
) ON [PRIMARY]
END
