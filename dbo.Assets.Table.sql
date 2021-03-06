USE [財經系統]
GO
/****** Object:  Table [dbo].[Assets]    Script Date: 2021/4/8 上午 11:34:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Assets](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Date] [nvarchar](50) NULL,
	[Sub] [nvarchar](50) NULL,
	[Usefor] [nvarchar](50) NULL,
	[Money] [int] NULL,
	[IncomeAndExpenditure] [nvarchar](50) NULL,
	[Total] [int] NULL,
	[User_ID] [varchar](50) NULL,
 CONSTRAINT [PK_Assets] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Assets] ON 

INSERT [dbo].[Assets] ([ID], [Date], [Sub], [Usefor], [Money], [IncomeAndExpenditure], [Total], [User_ID]) VALUES (198, N'2021-04-01', N'零用金', N'asd', 10000, N'收入', 10000, NULL)
INSERT [dbo].[Assets] ([ID], [Date], [Sub], [Usefor], [Money], [IncomeAndExpenditure], [Total], [User_ID]) VALUES (201, N'2021-04-13', N'零用金', N'asd', 500, N'收入', 10500, NULL)
INSERT [dbo].[Assets] ([ID], [Date], [Sub], [Usefor], [Money], [IncomeAndExpenditure], [Total], [User_ID]) VALUES (202, N'2021-04-14', N'零用金', N'asd', 5000, N'支出', 5500, NULL)
INSERT [dbo].[Assets] ([ID], [Date], [Sub], [Usefor], [Money], [IncomeAndExpenditure], [Total], [User_ID]) VALUES (203, N'2021-04-07', N'零用金', N'asd', 200, N'支出', 5300, NULL)
INSERT [dbo].[Assets] ([ID], [Date], [Sub], [Usefor], [Money], [IncomeAndExpenditure], [Total], [User_ID]) VALUES (204, N'2021-04-07', N'零用金', N'買東西 ', 200, N'支出', 5100, NULL)
INSERT [dbo].[Assets] ([ID], [Date], [Sub], [Usefor], [Money], [IncomeAndExpenditure], [Total], [User_ID]) VALUES (205, N'2021-04-08', N'零用金', N'asd', 100, N'支出', 5000, NULL)
INSERT [dbo].[Assets] ([ID], [Date], [Sub], [Usefor], [Money], [IncomeAndExpenditure], [Total], [User_ID]) VALUES (206, N'2021-04-19', N'零用金', N'買東西 ', 3000, N'支出', 2000, NULL)
INSERT [dbo].[Assets] ([ID], [Date], [Sub], [Usefor], [Money], [IncomeAndExpenditure], [Total], [User_ID]) VALUES (207, N'2021-04-08', N'零用金', N'd', 2000, N'收入', 4000, NULL)
INSERT [dbo].[Assets] ([ID], [Date], [Sub], [Usefor], [Money], [IncomeAndExpenditure], [Total], [User_ID]) VALUES (208, N'2021-04-09', N'薪資支出', N'買東西 ', 200, N'收入', 4200, NULL)
INSERT [dbo].[Assets] ([ID], [Date], [Sub], [Usefor], [Money], [IncomeAndExpenditure], [Total], [User_ID]) VALUES (209, N'2021-04-08', N'營業收入', N'asd', 200, N'收入', 4400, NULL)
INSERT [dbo].[Assets] ([ID], [Date], [Sub], [Usefor], [Money], [IncomeAndExpenditure], [Total], [User_ID]) VALUES (210, N'2021-04-20', N'營業收入', N'買東西 ', 555, N'收入', 4955, NULL)
INSERT [dbo].[Assets] ([ID], [Date], [Sub], [Usefor], [Money], [IncomeAndExpenditure], [Total], [User_ID]) VALUES (211, N'2021-04-05', N'營業收入', N'asd', 555, N'收入', 5510, NULL)
INSERT [dbo].[Assets] ([ID], [Date], [Sub], [Usefor], [Money], [IncomeAndExpenditure], [Total], [User_ID]) VALUES (212, N'2021-04-06', N'營業收入', N'asd', 200, N'收入', 5710, NULL)
INSERT [dbo].[Assets] ([ID], [Date], [Sub], [Usefor], [Money], [IncomeAndExpenditure], [Total], [User_ID]) VALUES (213, N'2021-04-22', N'營業收入', N'asd', 10000, N'收入', 15710, NULL)
INSERT [dbo].[Assets] ([ID], [Date], [Sub], [Usefor], [Money], [IncomeAndExpenditure], [Total], [User_ID]) VALUES (214, N'2021-04-05', N'營業收入', N'asd', 555, N'收入', 16265, NULL)
SET IDENTITY_INSERT [dbo].[Assets] OFF
GO
