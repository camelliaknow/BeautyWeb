USE [化妆品类目]
GO
/****** Object:  Table [dbo].[beauty]    Script Date: 2024/6/3 23:17:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[beauty](
	[商品名称] [char](150) NOT NULL,
	[商品价格] [float] NULL,
 CONSTRAINT [PK_beauty] PRIMARY KEY CLUSTERED 
(
	[商品名称] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
