USE [master]
GO
/****** Object:  Database [J3LP0017_Photographer]    Script Date: 3/4/2021 5:13:22 PM ******/
CREATE DATABASE [J3LP0017_Photographer]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'J3LP0017_Photographer', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\J3LP0017_Photographer.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'J3LP0017_Photographer_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\J3LP0017_Photographer_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [J3LP0017_Photographer] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [J3LP0017_Photographer].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [J3LP0017_Photographer] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [J3LP0017_Photographer] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [J3LP0017_Photographer] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [J3LP0017_Photographer] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [J3LP0017_Photographer] SET ARITHABORT OFF 
GO
ALTER DATABASE [J3LP0017_Photographer] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [J3LP0017_Photographer] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [J3LP0017_Photographer] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [J3LP0017_Photographer] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [J3LP0017_Photographer] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [J3LP0017_Photographer] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [J3LP0017_Photographer] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [J3LP0017_Photographer] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [J3LP0017_Photographer] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [J3LP0017_Photographer] SET  ENABLE_BROKER 
GO
ALTER DATABASE [J3LP0017_Photographer] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [J3LP0017_Photographer] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [J3LP0017_Photographer] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [J3LP0017_Photographer] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [J3LP0017_Photographer] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [J3LP0017_Photographer] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [J3LP0017_Photographer] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [J3LP0017_Photographer] SET RECOVERY FULL 
GO
ALTER DATABASE [J3LP0017_Photographer] SET  MULTI_USER 
GO
ALTER DATABASE [J3LP0017_Photographer] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [J3LP0017_Photographer] SET DB_CHAINING OFF 
GO
ALTER DATABASE [J3LP0017_Photographer] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [J3LP0017_Photographer] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [J3LP0017_Photographer] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [J3LP0017_Photographer] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'J3LP0017_Photographer', N'ON'
GO
ALTER DATABASE [J3LP0017_Photographer] SET QUERY_STORE = OFF
GO
USE [J3LP0017_Photographer]
GO
/****** Object:  Table [dbo].[Contact]    Script Date: 3/4/2021 5:13:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contact](
	[address] [nvarchar](1000) NULL,
	[city] [nvarchar](100) NULL,
	[country] [nvarchar](100) NULL,
	[tel] [varchar](15) NULL,
	[email] [varchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Gallery]    Script Date: 3/4/2021 5:13:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Gallery](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[title] [nvarchar](255) NULL,
	[image] [varchar](1000) NULL,
	[groupGallery] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Home]    Script Date: 3/4/2021 5:13:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Home](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[title] [nvarchar](255) NULL,
	[image] [varchar](1000) NULL,
	[description] [ntext] NULL,
	[link] [varchar](1000) NULL,
	[altText] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[View]    Script Date: 3/4/2021 5:13:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[View](
	[viewed] [int] NULL
) ON [PRIMARY]
GO
INSERT [dbo].[Contact] ([address], [city], [country], [tel], [email]) VALUES (N'FPT University', N'Ha Noi', N'Viet Nam', N'12345', N'your-email@your-email.com')
GO
SET IDENTITY_INSERT [dbo].[Gallery] ON 

INSERT [dbo].[Gallery] ([id], [title], [image], [groupGallery]) VALUES (1, N'image 1', N'/kingphotos.com/view/images/gallery1/image1.jpg', 1)
INSERT [dbo].[Gallery] ([id], [title], [image], [groupGallery]) VALUES (2, N'image 2', N'/kingphotos.com/view/images/gallery1/image2.jpg', 1)
INSERT [dbo].[Gallery] ([id], [title], [image], [groupGallery]) VALUES (3, N'image 3', N'/kingphotos.com/view/images/gallery1/image3.jpg', 1)
INSERT [dbo].[Gallery] ([id], [title], [image], [groupGallery]) VALUES (4, N'image 4', N'/kingphotos.com/view/images/gallery1/image4.jpg', 1)
INSERT [dbo].[Gallery] ([id], [title], [image], [groupGallery]) VALUES (5, N'image 5', N'/kingphotos.com/view/images/gallery1/image5.jpg', 1)
INSERT [dbo].[Gallery] ([id], [title], [image], [groupGallery]) VALUES (6, N'image 6', N'/kingphotos.com/view/images/gallery1/image6.jpg', 1)
INSERT [dbo].[Gallery] ([id], [title], [image], [groupGallery]) VALUES (7, N'image 7', N'/kingphotos.com/view/images/gallery1/image7.jpg', 1)
INSERT [dbo].[Gallery] ([id], [title], [image], [groupGallery]) VALUES (8, N'image 8', N'/kingphotos.com/view/images/gallery2/image8.jpg', 1)
INSERT [dbo].[Gallery] ([id], [title], [image], [groupGallery]) VALUES (9, N'image 1', N'/kingphotos.com/view/images/gallery2/image1.jpg', 2)
INSERT [dbo].[Gallery] ([id], [title], [image], [groupGallery]) VALUES (10, N'image 2', N'/kingphotos.com/view/images/gallery2/image2.jpg', 2)
INSERT [dbo].[Gallery] ([id], [title], [image], [groupGallery]) VALUES (11, N'image 3', N'/kingphotos.com/view/images/gallery2/image3.jpg', 2)
INSERT [dbo].[Gallery] ([id], [title], [image], [groupGallery]) VALUES (12, N'image 4', N'/kingphotos.com/view/images/gallery2/image4.jpg', 2)
INSERT [dbo].[Gallery] ([id], [title], [image], [groupGallery]) VALUES (13, N'image 5', N'/kingphotos.com/view/images/gallery2/image5.jpg', 2)
INSERT [dbo].[Gallery] ([id], [title], [image], [groupGallery]) VALUES (14, N'image 6', N'/kingphotos.com/view/images/gallery2/image6.jpg', 2)
INSERT [dbo].[Gallery] ([id], [title], [image], [groupGallery]) VALUES (15, N'image 7', N'/kingphotos.com/view/images/gallery2/image7.jpg', 2)
INSERT [dbo].[Gallery] ([id], [title], [image], [groupGallery]) VALUES (16, N'image 8', N'/kingphotos.com/view/images/gallery2/image8.jpg', 2)
INSERT [dbo].[Gallery] ([id], [title], [image], [groupGallery]) VALUES (17, N'image 1', N'/kingphotos.com/view/images/gallery3/image1.jpg', 3)
INSERT [dbo].[Gallery] ([id], [title], [image], [groupGallery]) VALUES (18, N'image 2', N'/kingphotos.com/view/images/gallery3/image2.jpg', 3)
INSERT [dbo].[Gallery] ([id], [title], [image], [groupGallery]) VALUES (19, N'image 3', N'/kingphotos.com/view/images/gallery3/image3.jpg', 3)
INSERT [dbo].[Gallery] ([id], [title], [image], [groupGallery]) VALUES (20, N'image 4', N'/kingphotos.com/view/images/gallery3/image4.jpg', 3)
INSERT [dbo].[Gallery] ([id], [title], [image], [groupGallery]) VALUES (21, N'image 5', N'/kingphotos.com/view/images/gallery3/image5.jpg', 3)
INSERT [dbo].[Gallery] ([id], [title], [image], [groupGallery]) VALUES (22, N'image 6', N'/kingphotos.com/view/images/gallery3/image6.jpg', 3)
INSERT [dbo].[Gallery] ([id], [title], [image], [groupGallery]) VALUES (23, N'image 7', N'/kingphotos.com/view/images/gallery3/image7.jpg', 3)
INSERT [dbo].[Gallery] ([id], [title], [image], [groupGallery]) VALUES (24, N'image 8', N'/kingphotos.com/view/images/gallery3/image8.jpg', 3)
INSERT [dbo].[Gallery] ([id], [title], [image], [groupGallery]) VALUES (25, N'image 1', N'/kingphotos.com/view/images/gallery1/image1.jpg', 4)
INSERT [dbo].[Gallery] ([id], [title], [image], [groupGallery]) VALUES (26, N'image 2', N'/kingphotos.com/view/images/gallery1/image2.jpg', 4)
INSERT [dbo].[Gallery] ([id], [title], [image], [groupGallery]) VALUES (27, N'image 3', N'/kingphotos.com/view/images/gallery1/image3.jpg', 4)
INSERT [dbo].[Gallery] ([id], [title], [image], [groupGallery]) VALUES (28, N'image 4', N'/kingphotos.com/view/images/gallery1/image4.jpg', 4)
INSERT [dbo].[Gallery] ([id], [title], [image], [groupGallery]) VALUES (29, N'image 5', N'/kingphotos.com/view/images/gallery1/image5.jpg', 4)
INSERT [dbo].[Gallery] ([id], [title], [image], [groupGallery]) VALUES (30, N'image 6', N'/kingphotos.com/view/images/gallery1/image6.jpg', 4)
INSERT [dbo].[Gallery] ([id], [title], [image], [groupGallery]) VALUES (31, N'image 7', N'/kingphotos.com/view/images/gallery1/image7.jpg', 4)
INSERT [dbo].[Gallery] ([id], [title], [image], [groupGallery]) VALUES (32, N'image 8', N'/kingphotos.com/view/images/gallery1/image8.jpg', 4)
INSERT [dbo].[Gallery] ([id], [title], [image], [groupGallery]) VALUES (33, N'image 1', N'/kingphotos.com/view/images/gallery2/image1.jpg', 5)
INSERT [dbo].[Gallery] ([id], [title], [image], [groupGallery]) VALUES (34, N'image 2', N'/kingphotos.com/view/images/gallery2/image2.jpg', 5)
INSERT [dbo].[Gallery] ([id], [title], [image], [groupGallery]) VALUES (35, N'image 3', N'/kingphotos.com/view/images/gallery2/image3.jpg', 5)
INSERT [dbo].[Gallery] ([id], [title], [image], [groupGallery]) VALUES (36, N'image 4', N'/kingphotos.com/view/images/gallery2/image4.jpg', 5)
INSERT [dbo].[Gallery] ([id], [title], [image], [groupGallery]) VALUES (37, N'image 5', N'/kingphotos.com/view/images/gallery2/image5.jpg', 5)
INSERT [dbo].[Gallery] ([id], [title], [image], [groupGallery]) VALUES (38, N'image 6', N'/kingphotos.com/view/images/gallery2/image6.jpg', 5)
INSERT [dbo].[Gallery] ([id], [title], [image], [groupGallery]) VALUES (39, N'image 7', N'/kingphotos.com/view/images/gallery2/image7.jpg', 5)
INSERT [dbo].[Gallery] ([id], [title], [image], [groupGallery]) VALUES (40, N'image 8', N'/kingphotos.com/view/images/gallery2/image8.jpg', 5)
INSERT [dbo].[Gallery] ([id], [title], [image], [groupGallery]) VALUES (41, N'image 1', N'/kingphotos.com/view/images/gallery3/image1.jpg', 6)
INSERT [dbo].[Gallery] ([id], [title], [image], [groupGallery]) VALUES (42, N'image 2', N'/kingphotos.com/view/images/gallery3/image2.jpg', 6)
INSERT [dbo].[Gallery] ([id], [title], [image], [groupGallery]) VALUES (43, N'image 3', N'/kingphotos.com/view/images/gallery3/image3.jpg', 6)
INSERT [dbo].[Gallery] ([id], [title], [image], [groupGallery]) VALUES (44, N'image 4', N'/kingphotos.com/view/images/gallery3/image4.jpg', 6)
INSERT [dbo].[Gallery] ([id], [title], [image], [groupGallery]) VALUES (45, N'image 5', N'/kingphotos.com/view/images/gallery3/image5.jpg', 6)
INSERT [dbo].[Gallery] ([id], [title], [image], [groupGallery]) VALUES (46, N'image 6', N'/kingphotos.com/view/images/gallery3/image6.jpg', 6)
INSERT [dbo].[Gallery] ([id], [title], [image], [groupGallery]) VALUES (47, N'image 7', N'/kingphotos.com/view/images/gallery3/image7.jpg', 6)
INSERT [dbo].[Gallery] ([id], [title], [image], [groupGallery]) VALUES (48, N'image 8', N'/kingphotos.com/view/images/gallery3/image8.jpg', 6)
SET IDENTITY_INSERT [dbo].[Gallery] OFF
GO
SET IDENTITY_INSERT [dbo].[Home] ON 

INSERT [dbo].[Home] ([id], [title], [image], [description], [link], [altText]) VALUES (1, N'View Gallery 1', N'/kingphotos.com/view/images/home/gallery1.jpg', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation', N'/kingphotos.com/gallery?groupGallery=1', N'Gallery 1')
INSERT [dbo].[Home] ([id], [title], [image], [description], [link], [altText]) VALUES (2, N'View Gallery 2', N'/kingphotos.com/view/images/home/gallery2.jpg', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation', N'/kingphotos.com/gallery?groupGallery=2', N'Gallery 2')
INSERT [dbo].[Home] ([id], [title], [image], [description], [link], [altText]) VALUES (3, N'View Gallery 3', N'/kingphotos.com/view/images/home/gallery3.jpg', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation', N'/kingphotos.com/gallery?groupGallery=3', N'Gallery 3')
INSERT [dbo].[Home] ([id], [title], [image], [description], [link], [altText]) VALUES (6, N'View Gallery 4', N'/kingphotos.com/view/images/home/gallery1.jpg', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation', N'/kingphotos.com/gallery?groupGallery=4', N'Gallery 4')
INSERT [dbo].[Home] ([id], [title], [image], [description], [link], [altText]) VALUES (7, N'View Gallery 5', N'/kingphotos.com/view/images/home/gallery2.jpg', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation', N'/kingphotos.com/gallery?groupGallery=5', N'Gallery 5')
INSERT [dbo].[Home] ([id], [title], [image], [description], [link], [altText]) VALUES (8, N'View Gallery 6', N'/kingphotos.com/view/images/home/gallery3.jpg', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation', N'/kingphotos.com/gallery?groupGallery=6', N'Gallery 6')
SET IDENTITY_INSERT [dbo].[Home] OFF
GO
INSERT [dbo].[View] ([viewed]) VALUES (20)
GO
USE [master]
GO
ALTER DATABASE [J3LP0017_Photographer] SET  READ_WRITE 
GO
