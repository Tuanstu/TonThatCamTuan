USE [master]
GO
/****** Object:  Database [TonThatCamTuanDeAn]    Script Date: 2/1/2024 8:10:22 PM ******/
CREATE DATABASE [TonThatCamTuanDeAn]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'TonThatCamTuanDeAn', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\TonThatCamTuanDeAn.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'TonThatCamTuanDeAn_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\TonThatCamTuanDeAn_log.ldf' , SIZE = 73728KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [TonThatCamTuanDeAn] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [TonThatCamTuanDeAn].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [TonThatCamTuanDeAn] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [TonThatCamTuanDeAn] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [TonThatCamTuanDeAn] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [TonThatCamTuanDeAn] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [TonThatCamTuanDeAn] SET ARITHABORT OFF 
GO
ALTER DATABASE [TonThatCamTuanDeAn] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [TonThatCamTuanDeAn] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [TonThatCamTuanDeAn] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [TonThatCamTuanDeAn] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [TonThatCamTuanDeAn] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [TonThatCamTuanDeAn] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [TonThatCamTuanDeAn] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [TonThatCamTuanDeAn] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [TonThatCamTuanDeAn] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [TonThatCamTuanDeAn] SET  ENABLE_BROKER 
GO
ALTER DATABASE [TonThatCamTuanDeAn] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [TonThatCamTuanDeAn] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [TonThatCamTuanDeAn] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [TonThatCamTuanDeAn] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [TonThatCamTuanDeAn] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [TonThatCamTuanDeAn] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [TonThatCamTuanDeAn] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [TonThatCamTuanDeAn] SET RECOVERY FULL 
GO
ALTER DATABASE [TonThatCamTuanDeAn] SET  MULTI_USER 
GO
ALTER DATABASE [TonThatCamTuanDeAn] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [TonThatCamTuanDeAn] SET DB_CHAINING OFF 
GO
ALTER DATABASE [TonThatCamTuanDeAn] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [TonThatCamTuanDeAn] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [TonThatCamTuanDeAn] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [TonThatCamTuanDeAn] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'TonThatCamTuanDeAn', N'ON'
GO
ALTER DATABASE [TonThatCamTuanDeAn] SET QUERY_STORE = ON
GO
ALTER DATABASE [TonThatCamTuanDeAn] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [TonThatCamTuanDeAn]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 2/1/2024 8:10:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Admin]    Script Date: 2/1/2024 8:10:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Admin](
	[Id] [nvarchar](100) NOT NULL,
	[AdminName] [nvarchar](10) NULL,
 CONSTRAINT [PK_Admin] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order]    Script Date: 2/1/2024 8:10:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[Id] [nvarchar](450) NOT NULL,
	[ProductId] [nvarchar](450) NULL,
	[ProductQuantity] [int] NULL,
	[UserName] [nvarchar](150) NULL,
	[Sodienthoai] [nchar](10) NULL,
	[Diachi] [nvarchar](150) NULL,
	[Ngaytao] [nvarchar](100) NULL,
	[OrderId] [nvarchar](450) NULL,
 CONSTRAINT [PK_Order] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 2/1/2024 8:10:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[Id] [nvarchar](450) NOT NULL,
	[ProductName] [nvarchar](150) NULL,
	[Price] [money] NULL,
	[Image] [nvarchar](1000) NULL,
	[Detail] [nvarchar](150) NULL,
	[Filter] [nvarchar](max) NULL,
	[Material] [nvarchar](max) NULL,
	[Size] [nvarchar](max) NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TaiKhoan]    Script Date: 2/1/2024 8:10:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TaiKhoan](
	[Id] [nvarchar](450) NOT NULL,
	[UserName] [nvarchar](max) NULL,
	[NormalizedUserName] [nvarchar](max) NULL,
	[Email] [nvarchar](max) NULL,
	[NormalizedEmail] [nvarchar](max) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[Role] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_TaKhoans] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 2/1/2024 8:10:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[Id] [nvarchar](100) NOT NULL,
	[UserName] [nvarchar](150) NULL,
	[Phone] [varchar](10) NULL,
	[Adress] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20231016083552_init', N'7.0.12')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20231018110743_init', N'7.0.12')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20231021204146_init', N'7.0.12')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20231110041800_edit', N'7.0.13')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20231111125607_ini', N'7.0.13')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20231112044300_edit', N'7.0.13')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20231112045915_edit', N'7.0.13')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20231112101620_int', N'7.0.12')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20231123155438_init', N'7.0.13')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20231123155751_initTaikhoan', N'7.0.13')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20231128223221_taikhoan', N'7.0.13')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240125173726_init', N'7.0.12')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240125193903_edit', N'7.0.12')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240126050757_newest', N'7.0.13')
GO
INSERT [dbo].[Order] ([Id], [ProductId], [ProductQuantity], [UserName], [Sodienthoai], [Diachi], [Ngaytao], [OrderId]) VALUES (N'31d970c5-892a-4887-906a-81e3876af14f', N'db210c45-fb7e-4f7d-8447-c7a2482857bc', 3, N'Stuart', N'0909000999', N'Nguyen Van Cu', N'Thu Feb 01 2024 19:41:20 GMT+0700 (Indochina Time)', N'16f8e601-d746-475e-afda-96adcce109e9')
INSERT [dbo].[Order] ([Id], [ProductId], [ProductQuantity], [UserName], [Sodienthoai], [Diachi], [Ngaytao], [OrderId]) VALUES (N'bbfd598e-2e77-4f8b-914f-83919ca3e618', N'1575a300-8776-48b4-bf34-cbb8f5beb732', 5, N'Tuan', N'00000     ', N'Nguyen Bieu', N'Thu Feb 01 2024 19:48:00 GMT+0700 (Indochina Time)', N'552ac8af-0ac1-43cb-a7e5-3d9b2bddcedf')
INSERT [dbo].[Order] ([Id], [ProductId], [ProductQuantity], [UserName], [Sodienthoai], [Diachi], [Ngaytao], [OrderId]) VALUES (N'bcfb55be-51f5-4e20-baf3-f8cd53defcd4', N'b6fbc05e-70ba-4aca-8052-2c427b376e4c', 4, N'Tuan', N'00000     ', N'Nguyen Bieu', N'Thu Feb 01 2024 19:48:00 GMT+0700 (Indochina Time)', N'552ac8af-0ac1-43cb-a7e5-3d9b2bddcedf')
INSERT [dbo].[Order] ([Id], [ProductId], [ProductQuantity], [UserName], [Sodienthoai], [Diachi], [Ngaytao], [OrderId]) VALUES (N'e1ecd168-6393-4877-a11d-b33ef73dd868', N'1575a300-8776-48b4-bf34-cbb8f5beb732', 4, N'Stuart', N'0909000999', N'Nguyen Van Cu', N'Thu Feb 01 2024 19:41:20 GMT+0700 (Indochina Time)', N'16f8e601-d746-475e-afda-96adcce109e9')
GO
INSERT [dbo].[Product] ([Id], [ProductName], [Price], [Image], [Detail], [Filter], [Material], [Size]) VALUES (N'39a13781-4b7c-4fc3-b028-a8bc3765ef54', N'Product 2', 5.0000, N'[{"UrlImage":"\\images\\8de8fe76-5870-4d94-b954-05e1a2adf001-product-2.png","Position":1},{"UrlImage":"\\images\\25c5f835-b6d9-4f21-91fc-fc7ab10a9dd0-product-3.png","Position":2}]', N'Ghế có chân', N'Ghế có chân product 2 product 2 5', N'Vải cotton', N'20cm x 50cm')
INSERT [dbo].[Product] ([Id], [ProductName], [Price], [Image], [Detail], [Filter], [Material], [Size]) VALUES (N'b6fbc05e-70ba-4aca-8052-2c427b376e4c', N'Product 3', 7.0000, N'[{"UrlImage":"\\images\\bcb7c9a9-b9c5-4769-b925-3b2752744335-product-3.png","Position":1},{"UrlImage":"\\images\\7c5232fb-679c-4aa4-b8d4-83a1c6d62acd-product-1.png","Position":2}]', N'Ghế có chân', N'Ghế có chân product 3 product 3 7', N'Vải cotton', N'20cm x 50 cm')
INSERT [dbo].[Product] ([Id], [ProductName], [Price], [Image], [Detail], [Filter], [Material], [Size]) VALUES (N'c0dc13b8-c335-4794-bef5-8499a51078b3', N'Product 6', 7.0000, N'[{"UrlImage":"\\images\\2188906a-f196-4deb-b3ae-7f192e054662-product-3.png","Position":1}]', N'Ghế xanh lá cây', N'Ghế xanh lá cây product 6 product 6 7', N'Vải cotton', N'20cm x 50cm')
INSERT [dbo].[Product] ([Id], [ProductName], [Price], [Image], [Detail], [Filter], [Material], [Size]) VALUES (N'c6fd33ee-e717-4c02-bad5-2d115317f0f6', N'Product 5', 9.0000, N'[{"UrlImage":"\\images\\aaf622fc-d326-44ec-b80d-b10b86b0c54a-product-3.png","Position":1},{"UrlImage":"\\images\\0cc69392-7c4e-4743-8606-3d61f1083f77-product-2.png","Position":2}]', N'Ghế xoay được', N'Ghế xoay được product 5 product 5 9', N'Vải cotton', N'20cm x 50 cm')
INSERT [dbo].[Product] ([Id], [ProductName], [Price], [Image], [Detail], [Filter], [Material], [Size]) VALUES (N'd8c21b51-17e9-4e5d-bbf8-f5d0fec395ca', N'Product 1000', 8.0000, N'[{"UrlImage":"\\images\\83207715-a76d-4dee-97e0-bfd9a283f115-product-2.png","Position":1},{"UrlImage":"\\images\\8d114e49-07d2-459b-a2e2-64a270b4889f-sofa.png","Position":2}]', N'ghe cao sofa', N'ghe cao sofa product 1000 product 1000 8', N'vai cotton', N'20 x 30')
INSERT [dbo].[Product] ([Id], [ProductName], [Price], [Image], [Detail], [Filter], [Material], [Size]) VALUES (N'db210c45-fb7e-4f7d-8447-c7a2482857bc', N'Product 1', 10.0000, N'[{"UrlImage":"\\images\\39658a4a-daa2-4424-8955-de4b7d469baf-product-1.png","Position":1},{"UrlImage":"\\images\\496bde28-a978-4276-90d4-dc573f508ac1-product-2.png","Position":2}]', N'Ghế có chân, màu xám tặng kèm gối', N'Ghế có chân, màu xám tặng kèm gối product 1 product 1 10', N'Vải cotton', N'20cm x 50 cm')
GO
INSERT [dbo].[TaiKhoan] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Role]) VALUES (N'0323e32f-2260-46a3-8a79-fc471bc6053f', N'ohyeah', N'OHYEAH', N'what@gmail.com', N'WHAT@GMAIL.COM', 1, N'pmWkWSBCL51Bfkhn79xPuKBKHz//H6B+mY6G9/eieuM=', N'edd763e0-a35c-48aa-ab9d-f7d68c0bd71d', N'cee26612-2ca6-421f-93b5-39f90f427b1e', NULL, 0, 0, NULL, 0, 0, N'')
INSERT [dbo].[TaiKhoan] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Role]) VALUES (N'0b311486-85a3-4116-9eda-113c961e0775', N'Okela', N'OKELA', N'Okela@gmail.com', N'OKELA@GMAIL.COM', 1, N'dBH4fXMYbaGxQYQeV3FK03D5VbOUkLbYkLOuCDEn6io=', N'01aadc89-8b4c-4f21-9e7e-65cb6686fdf8', N'2e53d067-323f-4c69-b8b3-3068f1409020', NULL, 0, 0, NULL, 0, 0, N'admin')
INSERT [dbo].[TaiKhoan] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Role]) VALUES (N'35d6474f-1b9f-4f74-8c0e-675568800d56', N'Plswork', N'PLSWORK', N'Plswork@gmail.com', N'PLSWORK@GMAIL.COM', 1, N'HAmU8VDoLLhxuGzTgmnemkKtPkHUWIzb95h/HtfJ9d4=', N'e4581005-a359-42d0-aad5-d2262d2c494e', N'1bb5bfea-9933-411d-bc09-1e4e0ec67862', NULL, 0, 0, NULL, 0, 0, N'admin')
INSERT [dbo].[TaiKhoan] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Role]) VALUES (N'3adb4e07-03dc-4a9a-9942-dbf46c7f321e', N'Tuan', N'TUAN', N'tuan@gmail.com', N'TUAN@GMAIL.COM', 1, N'uLUARd5oI6Mlk9YfK2eCFEYruzhY8x8FOyNWCj6/wDs=', N'c5e56ed1-0887-4d01-80ff-a992b4826bef', N'45d50128-4ad5-4cf7-a96c-8e54f82aee14', NULL, 0, 0, NULL, 0, 0, N'User')
INSERT [dbo].[TaiKhoan] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Role]) VALUES (N'5f900c49-e8e0-4544-b8f3-0b44c8c84868', N'hmmm', N'HMMM', N'ok@gmail.com', N'OK@GMAIL.COM', 1, N'lsrjXOipsCRBeL8o5JZsLOG4OFcjqWprg4hYzdbKCh4=', N'50d1d68f-f869-42e5-ab96-90301b137adf', N'20a7ad30-dac2-4337-a16b-36da316893ab', NULL, 0, 0, NULL, 0, 0, N'')
INSERT [dbo].[TaiKhoan] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Role]) VALUES (N'69379323-396f-48e5-b593-d4f818a22e96', N'2222', N'2222', N'help@gmail', N'HELP@GMAIL', 1, N'lsrjXOipsCRBeL8o5JZsLOG4OFcjqWprg4hYzdbKCh4=', N'2550d8a2-f749-4c48-a1a6-d91db3fad06c', N'078f6453-48a9-4278-ae95-80bf6e4bc4dc', NULL, 0, 0, NULL, 0, 0, N'')
INSERT [dbo].[TaiKhoan] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Role]) VALUES (N'7844d5f5-8a2b-47fe-ab33-a351582d5455', N'hieuroi', N'HIEUROI', N'hieuroi@gmail.com', N'HIEUROI@GMAIL.COM', 1, N'j0Mz0N7niYmoj1K+Ptir1hgqLocQJaKIRHVYYAq+0eU=', N'4ff649e5-7cf9-4251-8d95-6e7767fdf914', N'db1a0562-4837-4677-8fa1-3ebc75657bae', NULL, 0, 0, NULL, 0, 0, N'admin')
INSERT [dbo].[TaiKhoan] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Role]) VALUES (N'7c3c5295-7508-4fa4-af04-1c69e0ccb078', N'new', N'NEW', N'new@gmail.com', N'NEW@GMAIL.COM', 1, N'EVB6Di9eadXfpApiob17buV+a82FxnybhDGzb/8hxDc=', N'6db0d123-f908-49e4-81b5-752254910ac3', N'2adc2ca9-989b-4127-9618-759eb1a993bf', NULL, 0, 0, NULL, 0, 0, N'admin')
INSERT [dbo].[TaiKhoan] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Role]) VALUES (N'8ca79a60-690d-4d21-b4a5-8cbd46871967', N'help', N'HELP', N'admin1@gmail.com', N'ADMIN1@GMAIL.COM', 1, N'pmWkWSBCL51Bfkhn79xPuKBKHz//H6B+mY6G9/eieuM=', N'b3f2d4ab-4dae-4157-a02d-bbd1c7db0ab8', N'bdc21b6e-dcee-4c44-bdab-78ed288632c3', NULL, 0, 0, NULL, 0, 0, N'')
INSERT [dbo].[TaiKhoan] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Role]) VALUES (N'8f03a6de-f80d-4fc7-a13f-55d53857f817', N'123123', N'123123', N'123', N'123', 1, N'12312', N'90cf72dc-52e6-4ced-83d0-070cee055f92', N'70443ba3-f586-4280-be7d-bfea3e62ca1a', NULL, 0, 0, NULL, 0, 0, N'')
INSERT [dbo].[TaiKhoan] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Role]) VALUES (N'8f4b046f-e1b8-4266-a81c-9d660f25f3ce', N'usertest', N'USERTEST', N'usertest@gmail.com', N'USERTEST@GMAIL.COM', 1, N'OtNhk27Z742DXXRa3yTXGRhueE7G/ppSXusARYg9X5E=', N'82b42dab-2516-4f8e-b292-564ead582a39', N'9d49fda9-8dd4-40b1-87ae-c07f3ec96386', NULL, 0, 0, NULL, 0, 0, N'user')
INSERT [dbo].[TaiKhoan] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Role]) VALUES (N'9c3457ad-bab6-4983-b518-62097b739c7c', N'admin', N'ADMIN', N'admin@gmail.com', N'ADMIN@GMAIL.COM', 1, N'JBP7NwmwWTnwTPLpL30Il/wllvmtC4qeqFXHv+uq6JI=', N'50f75173-8c9a-48b3-890a-65816474a602', N'08947c15-0ed8-4bfe-bb78-3ebfe6c5b248', NULL, 0, 0, NULL, 0, 0, N'')
INSERT [dbo].[TaiKhoan] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Role]) VALUES (N'a2a26644-b367-4472-96e9-16003c5c4582', N'ok', N'OK', N'ahiii@gmail.com', N'AHIII@GMAIL.COM', 1, N'asdf', N'd308a49e-baac-46e3-83e6-0c3dc4c0b3f9', N'fbb80ba5-ceb5-453e-b19c-3e22e3509848', NULL, 0, 0, NULL, 0, 0, N'')
INSERT [dbo].[TaiKhoan] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Role]) VALUES (N'd8f0af09-3fcd-4b8a-b160-e97fc3898d94', N'TuanAdmin', N'TUANADMIN', N'tuanadmin@gmail.com', N'TUANADMIN@GMAIL.COM', 1, N'uLUARd5oI6Mlk9YfK2eCFEYruzhY8x8FOyNWCj6/wDs=', N'b02ffe99-b80e-4c4f-9e7e-9d6ceb3aaecc', N'1fadf1fe-2f2f-48fc-b43f-d951920509a1', NULL, 0, 0, NULL, 0, 0, N'Admin')
INSERT [dbo].[TaiKhoan] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Role]) VALUES (N'e4d05b74-58fb-43d9-8893-e404de24ba8d', N'thanhcongdi', N'THANHCONGDI', N'thanhcongdi@gmail.com', N'THANHCONGDI@GMAIL.COM', 1, N'AYI/VTGWGAitP9RQS7pnlUxYkJUmO4e4yAC40gFc1v4=', N'1648cc5b-c88a-41d3-ac16-70205ac2ea09', N'41d89180-0a07-4fbc-abe9-e1b307c839b7', NULL, 0, 0, NULL, 0, 0, N'')
GO
ALTER TABLE [dbo].[TaiKhoan] ADD  DEFAULT (N'') FOR [Role]
GO
USE [master]
GO
ALTER DATABASE [TonThatCamTuanDeAn] SET  READ_WRITE 
GO
