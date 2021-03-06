
/****** Nombre: Ricardo Bido Lebron, Matricula: 19-MIIN-1-057, Seccion: 0541 ******/

/****** Object:  Database [ServicioselectricosDB]    Script Date: 12/14/2021 11:53:15 AM ******/
/****** Object:  Database [ServicioselectricosDB]    Script Date: 12/14/2021 11:53:15 AM ******/
/****** Object:  Database [ServicioselectricosDB]    Script Date: 12/14/2021 11:53:15 AM ******/
/****** Object:  Database [ServicioselectricosDB]    Script Date: 12/14/2021 11:53:15 AM ******/

CREATE DATABASE [ServicioselectricosDB]
GO
USE [ServicioselectricosDB]
GO

/****** Object:  Table [dbo].[Categorias]    Script Date: 12/14/2021 11:53:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categorias](
	[Categoria_ID] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Categorias] PRIMARY KEY CLUSTERED 
(
	[Categoria_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Clientes]    Script Date: 12/14/2021 11:53:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Clientes](
	[Cliente_ID] [int] IDENTITY(1,1) NOT NULL,
	[Ced_RNC] [nvarchar](50) NOT NULL,
	[Nombre_Completo] [nvarchar](50) NOT NULL,
	[Direccion] [nvarchar](50) NOT NULL,
	[Telefono] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Clientes] PRIMARY KEY CLUSTERED 
(
	[Cliente_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Empleados]    Script Date: 12/14/2021 11:53:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Empleados](
	[Empleado_ID] [int] IDENTITY(1,1) NOT NULL,
	[Primer_Nombre] [nvarchar](50) NOT NULL,
	[Primer_Apellido] [nvarchar](50) NOT NULL,
	[Edad] [int] NOT NULL,
	[Fecha_Nacimiento] [date] NOT NULL,
	[Activo] [nchar](10) NOT NULL,
	[telefono] [nvarchar](20) NOT NULL,
	[salario] [numeric](18, 0) NOT NULL,
 CONSTRAINT [PK_Empleados] PRIMARY KEY CLUSTERED 
(
	[Empleado_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Facturacion]    Script Date: 12/14/2021 11:53:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Facturacion](
	[Factura_ID] [int] IDENTITY(1,1) NOT NULL,
	[Cliente_ID] [int] NOT NULL,
	[Empleado_ID] [int] NOT NULL,
	[Servicio_ID] [int] NOT NULL,
	[Precio_Unitario] [numeric](18, 0) NOT NULL,
	[Cantidad] [int] NOT NULL,
	[Total]  AS ([Precio_unitario]*[Cantidad]),
 CONSTRAINT [PK_Facturacion] PRIMARY KEY CLUSTERED 
(
	[Factura_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Productos]    Script Date: 12/14/2021 11:53:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Productos](
	[Producto_ID] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nvarchar](50) NOT NULL,
	[Categoria_ID] [int] NOT NULL,
	[Precio_Unitario] [numeric](18, 0) NOT NULL,
	[Cantidad] [int] NOT NULL,
 CONSTRAINT [PK_Productos] PRIMARY KEY CLUSTERED 
(
	[Producto_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Servicios]    Script Date: 12/14/2021 11:53:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Servicios](
	[Servicio_ID] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nvarchar](50) NOT NULL,
	[Tipo] [nvarchar](50) NOT NULL,
	[Precio_Unitario] [numeric](18, 0) NOT NULL,
 CONSTRAINT [PK_Servicios] PRIMARY KEY CLUSTERED 
(
	[Servicio_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Categorias] ON 

INSERT [dbo].[Categorias] ([Categoria_ID], [Nombre]) VALUES (1, N'Tuberias')
INSERT [dbo].[Categorias] ([Categoria_ID], [Nombre]) VALUES (2, N'Abrazaderas')
INSERT [dbo].[Categorias] ([Categoria_ID], [Nombre]) VALUES (3, N'Coopling')
INSERT [dbo].[Categorias] ([Categoria_ID], [Nombre]) VALUES (4, N'Cables')
INSERT [dbo].[Categorias] ([Categoria_ID], [Nombre]) VALUES (5, N'Conectores')
SET IDENTITY_INSERT [dbo].[Categorias] OFF
GO
SET IDENTITY_INSERT [dbo].[Clientes] ON 

INSERT [dbo].[Clientes] ([Cliente_ID], [Ced_RNC], [Nombre_Completo], [Direccion], [Telefono]) VALUES (1, N'001-1234567-8', N'Etoon ', N'Parque industrial Itabo ', N'809-665-4885')
INSERT [dbo].[Clientes] ([Cliente_ID], [Ced_RNC], [Nombre_Completo], [Direccion], [Telefono]) VALUES (2, N'002-2345678-9', N' Edward ', N'Parque industrial Itabo ', N'809-988-9982')
INSERT [dbo].[Clientes] ([Cliente_ID], [Ced_RNC], [Nombre_Completo], [Direccion], [Telefono]) VALUES (3, N'003-3456789-0', N'Baxter', N'Parque industrial Itabo ', N'809-779-8789')
INSERT [dbo].[Clientes] ([Cliente_ID], [Ced_RNC], [Nombre_Completo], [Direccion], [Telefono]) VALUES (4, N'004-5678910-1', N'Grupo CCN', N'Av. Luperon #157', N'809-604-4545')
INSERT [dbo].[Clientes] ([Cliente_ID], [Ced_RNC], [Nombre_Completo], [Direccion], [Telefono]) VALUES (5, N'005-6789101-2', N'Grupo Ramos ', N'AV. Independencies K12  ', N'809-880-2030')
INSERT [dbo].[Clientes] ([Cliente_ID], [Ced_RNC], [Nombre_Completo], [Direccion], [Telefono]) VALUES (6, N'006-7890123-4', N'Combat ', N'Parque industrial Itabo ', N'809-363-9988')
INSERT [dbo].[Clientes] ([Cliente_ID], [Ced_RNC], [Nombre_Completo], [Direccion], [Telefono]) VALUES (7, N'007-8910111-2', N'Restaurante el Meson ', N'Parque industrial Itabo ', N'809-871-1587')
INSERT [dbo].[Clientes] ([Cliente_ID], [Ced_RNC], [Nombre_Completo], [Direccion], [Telefono]) VALUES (8, N'008-9101112-3', N'Laurenton ', N'Parque industrial Itabo', N'809-554-0025')
SET IDENTITY_INSERT [dbo].[Clientes] OFF
GO
SET IDENTITY_INSERT [dbo].[Empleados] ON 

INSERT [dbo].[Empleados] ([Empleado_ID], [Primer_Nombre], [Primer_Apellido], [Edad], [Fecha_Nacimiento], [Activo], [telefono], [salario]) VALUES (1, N'Ricardo ', N'Bido', 37, CAST(N'1984-08-09' AS Date), N'si        ', N'809-604-3339', CAST(50 AS Numeric(18, 0)))
INSERT [dbo].[Empleados] ([Empleado_ID], [Primer_Nombre], [Primer_Apellido], [Edad], [Fecha_Nacimiento], [Activo], [telefono], [salario]) VALUES (2, N'Marino', N'Made', 25, CAST(N'1996-06-07' AS Date), N'si        ', N'809-334-7878', CAST(30 AS Numeric(18, 0)))
INSERT [dbo].[Empleados] ([Empleado_ID], [Primer_Nombre], [Primer_Apellido], [Edad], [Fecha_Nacimiento], [Activo], [telefono], [salario]) VALUES (3, N'Gari', N'Figari', 40, CAST(N'1981-04-08' AS Date), N'si        ', N'809-687-5456', CAST(25 AS Numeric(18, 0)))
INSERT [dbo].[Empleados] ([Empleado_ID], [Primer_Nombre], [Primer_Apellido], [Edad], [Fecha_Nacimiento], [Activo], [telefono], [salario]) VALUES (4, N'Brauli', N'Astacio', 25, CAST(N'1996-05-08' AS Date), N'si        ', N'809-323-4463', CAST(20 AS Numeric(18, 0)))
INSERT [dbo].[Empleados] ([Empleado_ID], [Primer_Nombre], [Primer_Apellido], [Edad], [Fecha_Nacimiento], [Activo], [telefono], [salario]) VALUES (5, N'Jorge', N'Acevedo', 45, CAST(N'1976-10-03' AS Date), N'si        ', N'829-669-3215', CAST(35 AS Numeric(18, 0)))
INSERT [dbo].[Empleados] ([Empleado_ID], [Primer_Nombre], [Primer_Apellido], [Edad], [Fecha_Nacimiento], [Activo], [telefono], [salario]) VALUES (6, N'Eneri', N'Medrano', 28, CAST(N'1993-01-09' AS Date), N'si        ', N'849-879-2583', CAST(20 AS Numeric(18, 0)))
INSERT [dbo].[Empleados] ([Empleado_ID], [Primer_Nombre], [Primer_Apellido], [Edad], [Fecha_Nacimiento], [Activo], [telefono], [salario]) VALUES (7, N'Lelis', N'Meran', 25, CAST(N'1996-02-10' AS Date), N'si        ', N'849-666-3366', CAST(30 AS Numeric(18, 0)))
SET IDENTITY_INSERT [dbo].[Empleados] OFF
GO
SET IDENTITY_INSERT [dbo].[Facturacion] ON 

INSERT [dbo].[Facturacion] ([Factura_ID], [Cliente_ID], [Empleado_ID], [Servicio_ID], [Precio_Unitario], [Cantidad]) VALUES (1, 1, 1, 1, CAST(1000 AS Numeric(18, 0)), 3)
SET IDENTITY_INSERT [dbo].[Facturacion] OFF
GO
SET IDENTITY_INSERT [dbo].[Productos] ON 

INSERT [dbo].[Productos] ([Producto_ID], [Nombre], [Categoria_ID], [Precio_Unitario], [Cantidad]) VALUES (1, N'Tuberia EMT. 3/4', 1, CAST(350 AS Numeric(18, 0)), 50)
INSERT [dbo].[Productos] ([Producto_ID], [Nombre], [Categoria_ID], [Precio_Unitario], [Cantidad]) VALUES (2, N'Tuberia IMC. 3/4', 1, CAST(450 AS Numeric(18, 0)), 45)
INSERT [dbo].[Productos] ([Producto_ID], [Nombre], [Categoria_ID], [Precio_Unitario], [Cantidad]) VALUES (3, N'Tuberia PVC. ½ Electric. ', 1, CAST(100 AS Numeric(18, 0)), 35)
INSERT [dbo].[Productos] ([Producto_ID], [Nombre], [Categoria_ID], [Precio_Unitario], [Cantidad]) VALUES (4, N'Abrazadera tipo U ¾ EMT. ', 2, CAST(30 AS Numeric(18, 0)), 60)
INSERT [dbo].[Productos] ([Producto_ID], [Nombre], [Categoria_ID], [Precio_Unitario], [Cantidad]) VALUES (5, N'Abrazadera de unitron ¾ IMC. ', 2, CAST(45 AS Numeric(18, 0)), 50)
INSERT [dbo].[Productos] ([Producto_ID], [Nombre], [Categoria_ID], [Precio_Unitario], [Cantidad]) VALUES (6, N'Coopling EMT. 3/4', 3, CAST(35 AS Numeric(18, 0)), 60)
INSERT [dbo].[Productos] ([Producto_ID], [Nombre], [Categoria_ID], [Precio_Unitario], [Cantidad]) VALUES (7, N'Alambre calibre 12 ', 4, CAST(25 AS Numeric(18, 0)), 1500)
SET IDENTITY_INSERT [dbo].[Productos] OFF
GO
SET IDENTITY_INSERT [dbo].[Servicios] ON 

INSERT [dbo].[Servicios] ([Servicio_ID], [Nombre], [Tipo], [Precio_Unitario]) VALUES (1, N'Mantenimiento A Equipos Y Maquinarias', N'Mantenimiento', CAST(10000 AS Numeric(18, 0)))
INSERT [dbo].[Servicios] ([Servicio_ID], [Nombre], [Tipo], [Precio_Unitario]) VALUES (2, N'Instalaciones De Puertas Automáticas', N'Instalacion', CAST(15000 AS Numeric(18, 0)))
INSERT [dbo].[Servicios] ([Servicio_ID], [Nombre], [Tipo], [Precio_Unitario]) VALUES (3, N'Instalaciones Eléctricas Industriales', N'Instalacion', CAST(25000 AS Numeric(18, 0)))
INSERT [dbo].[Servicios] ([Servicio_ID], [Nombre], [Tipo], [Precio_Unitario]) VALUES (4, N'Construcion De Transfer Room Para Cuartos Limpios', N'Instalacion', CAST(10000 AS Numeric(18, 0)))
INSERT [dbo].[Servicios] ([Servicio_ID], [Nombre], [Tipo], [Precio_Unitario]) VALUES (5, N'Automatizaciones De Sistemas Eléctricos', N'Instalacion', CAST(20000 AS Numeric(18, 0)))
INSERT [dbo].[Servicios] ([Servicio_ID], [Nombre], [Tipo], [Precio_Unitario]) VALUES (6, N'Mantenimiento De Motores Eléctricos', N'Mantenimiento', CAST(2000 AS Numeric(18, 0)))
SET IDENTITY_INSERT [dbo].[Servicios] OFF
GO
ALTER TABLE [dbo].[Facturacion]  WITH CHECK ADD  CONSTRAINT [FK_Facturacion_Clientes] FOREIGN KEY([Cliente_ID])
REFERENCES [dbo].[Clientes] ([Cliente_ID])
GO
ALTER TABLE [dbo].[Facturacion] CHECK CONSTRAINT [FK_Facturacion_Clientes]
GO
ALTER TABLE [dbo].[Facturacion]  WITH CHECK ADD  CONSTRAINT [FK_Facturacion_Empleados] FOREIGN KEY([Empleado_ID])
REFERENCES [dbo].[Empleados] ([Empleado_ID])
GO
ALTER TABLE [dbo].[Facturacion] CHECK CONSTRAINT [FK_Facturacion_Empleados]
GO
ALTER TABLE [dbo].[Facturacion]  WITH CHECK ADD  CONSTRAINT [FK_Facturacion_Servicios] FOREIGN KEY([Servicio_ID])
REFERENCES [dbo].[Servicios] ([Servicio_ID])
GO
ALTER TABLE [dbo].[Facturacion] CHECK CONSTRAINT [FK_Facturacion_Servicios]
GO
ALTER TABLE [dbo].[Productos]  WITH CHECK ADD  CONSTRAINT [FK_Productos_Categorias] FOREIGN KEY([Categoria_ID])
REFERENCES [dbo].[Categorias] ([Categoria_ID])
GO
ALTER TABLE [dbo].[Productos] CHECK CONSTRAINT [FK_Productos_Categorias]
GO
USE [master]
GO
ALTER DATABASE [ServicioselectricosDB] SET  READ_WRITE 
GO
