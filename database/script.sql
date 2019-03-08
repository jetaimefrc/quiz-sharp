USE [master]
GO
/****** Object:  Database [PRN_Quizlet]    Script Date: 3/6/2019 10:19:34 AM ******/
CREATE DATABASE [QuizSharp]
GO
USE [QuizSharp]
GO
/****** Object:  Table [dbo].[Quiz]    Script Date: 3/6/2019 10:19:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Quiz](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[term] [text] NOT NULL,
	[definition] [text] NOT NULL,
	[createdDate] [datetime] NOT NULL,
 CONSTRAINT [PK_Quiz] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Set_Study]    Script Date: 3/6/2019 10:19:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Set_Study](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[title] [nvarchar](max) NOT NULL,
	[user_id] [int] NOT NULL,
 CONSTRAINT [PK_Set_Study] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Set_Study_Quiz]    Script Date: 3/6/2019 10:19:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Set_Study_Quiz](
	[quiz_id] [int] NOT NULL,
	[set_study_id] [int] NOT NULL,
 CONSTRAINT [PK_Set_Study_Quiz] PRIMARY KEY CLUSTERED 
(
	[quiz_id] ASC,
	[set_study_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 3/6/2019 10:19:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[username] [varchar](50) NOT NULL,
	[password] [varchar](50) NOT NULL,
	[avatar_url] [nvarchar](max) NOT NULL,
	[gmail] [varchar](100) NOT NULL,
	[dob] [date] NOT NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Quiz] ON 

INSERT [dbo].[Quiz] ([id], [term], [definition], [createdDate]) VALUES (1, N'XXX', N'PORN', CAST(N'2019-03-06T10:13:56.497' AS DateTime))
INSERT [dbo].[Quiz] ([id], [term], [definition], [createdDate]) VALUES (2, N'Array', N'(n.) a large group of people or things', CAST(N'2019-03-06T10:13:58.670' AS DateTime))
INSERT [dbo].[Quiz] ([id], [term], [definition], [createdDate]) VALUES (3, N'environment', N'the natural', CAST(N'2019-03-06T10:14:00.133' AS DateTime))
INSERT [dbo].[Quiz] ([id], [term], [definition], [createdDate]) VALUES (4, N'habitat', N'A natural area where a plant or animal lives', CAST(N'2019-03-06T10:14:01.940' AS DateTime))
INSERT [dbo].[Quiz] ([id], [term], [definition], [createdDate]) VALUES (5, N'pollution', N'damage to air ,water, et', CAST(N'2019-03-06T10:14:03.030' AS DateTime))
INSERT [dbo].[Quiz] ([id], [term], [definition], [createdDate]) VALUES (6, N'extend', N'to reach past , get bigger', CAST(N'2019-03-06T10:14:04.470' AS DateTime))
INSERT [dbo].[Quiz] ([id], [term], [definition], [createdDate]) VALUES (7, N'fell', N'v, to cut down', CAST(N'2019-03-06T10:14:05.950' AS DateTime))
INSERT [dbo].[Quiz] ([id], [term], [definition], [createdDate]) VALUES (8, N'cut or knock down (a tree or a person)', N'bring down (with a missile)', CAST(N'2019-03-06T10:14:08.070' AS DateTime))
INSERT [dbo].[Quiz] ([id], [term], [definition], [createdDate]) VALUES (9, N'nutrients', N'n , the goodness in food', CAST(N'2019-03-06T10:14:09.473' AS DateTime))
INSERT [dbo].[Quiz] ([id], [term], [definition], [createdDate]) VALUES (10, N'aquatic', N'adj, living in the water', CAST(N'2019-03-06T10:14:11.203' AS DateTime))
INSERT [dbo].[Quiz] ([id], [term], [definition], [createdDate]) VALUES (11, N'vanish', N'v, to disappear', CAST(N'2019-03-06T10:14:12.293' AS DateTime))
INSERT [dbo].[Quiz] ([id], [term], [definition], [createdDate]) VALUES (12, N'myriad', N'adj, many , numerous', CAST(N'2019-03-06T10:14:13.703' AS DateTime))
INSERT [dbo].[Quiz] ([id], [term], [definition], [createdDate]) VALUES (13, N'intact', N'adj, whole , complete', CAST(N'2019-03-06T10:14:15.000' AS DateTime))
INSERT [dbo].[Quiz] ([id], [term], [definition], [createdDate]) VALUES (14, N'intercept', N'v, to catch , to interrupt the progress of something', CAST(N'2019-03-06T10:14:16.360' AS DateTime))
INSERT [dbo].[Quiz] ([id], [term], [definition], [createdDate]) VALUES (15, N'stabilize', N'v, to keep from changing , maintain.', CAST(N'2019-03-06T10:14:19.417' AS DateTime))
INSERT [dbo].[Quiz] ([id], [term], [definition], [createdDate]) VALUES (16, N'erosion', N'n, loss of soil from the action of water or wind', CAST(N'2019-03-06T10:14:21.523' AS DateTime))
INSERT [dbo].[Quiz] ([id], [term], [definition], [createdDate]) VALUES (17, N'vegetation', N'n, plants', CAST(N'2019-03-06T10:14:23.453' AS DateTime))
INSERT [dbo].[Quiz] ([id], [term], [definition], [createdDate]) VALUES (18, N'inhibit', N'v, to prevent , slow down', CAST(N'2019-03-06T10:14:24.607' AS DateTime))
INSERT [dbo].[Quiz] ([id], [term], [definition], [createdDate]) VALUES (19, N'defense', N'n, protection', CAST(N'2019-03-06T10:14:25.953' AS DateTime))
INSERT [dbo].[Quiz] ([id], [term], [definition], [createdDate]) VALUES (20, N'deforestation', N'n, the removal of all trees from a large area logging', CAST(N'2019-03-06T10:14:27.627' AS DateTime))
SET IDENTITY_INSERT [dbo].[Quiz] OFF
SET IDENTITY_INSERT [dbo].[Set_Study] ON 

INSERT [dbo].[Set_Study] ([id], [title], [user_id]) VALUES (1, N'IELTs 9.0', 1)
INSERT [dbo].[Set_Study] ([id], [title], [user_id]) VALUES (2, N'IELTs 8.0', 2)
INSERT [dbo].[Set_Study] ([id], [title], [user_id]) VALUES (3, N'IELTs 7.0', 3)
INSERT [dbo].[Set_Study] ([id], [title], [user_id]) VALUES (4, N'IELTs 6.0', 4)
INSERT [dbo].[Set_Study] ([id], [title], [user_id]) VALUES (5, N'IELTs 5.0', 6)
SET IDENTITY_INSERT [dbo].[Set_Study] OFF
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (1, 1)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (2, 1)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (3, 1)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (4, 1)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (5, 2)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (6, 2)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (7, 2)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (8, 2)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (9, 3)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (10, 3)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (11, 3)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (12, 3)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (13, 4)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (14, 4)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (15, 4)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (16, 4)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (17, 5)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (18, 5)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (19, 5)
INSERT [dbo].[Set_Study_Quiz] ([quiz_id], [set_study_id]) VALUES (20, 5)
SET IDENTITY_INSERT [dbo].[User] ON 

INSERT [dbo].[User] ([id], [username], [password], [avatar_url], [gmail], [dob]) VALUES (1, N'nhattq', N'123456', N'1.png', N'demonslight@gmail.com', CAST(N'1998-09-20' AS Date))
INSERT [dbo].[User] ([id], [username], [password], [avatar_url], [gmail], [dob]) VALUES (2, N'hoapn', N'123456', N'2.png', N'thaycacac@gmail.com', CAST(N'1998-03-06' AS Date))
INSERT [dbo].[User] ([id], [username], [password], [avatar_url], [gmail], [dob]) VALUES (3, N'hiepdq', N'123456', N'3.png', N'bacodekiller@gmail.com', CAST(N'1998-02-05' AS Date))
INSERT [dbo].[User] ([id], [username], [password], [avatar_url], [gmail], [dob]) VALUES (4, N'trangnt', N'123456', N'4.png', N'trangnt@gmail.com', CAST(N'1998-03-06' AS Date))
INSERT [dbo].[User] ([id], [username], [password], [avatar_url], [gmail], [dob]) VALUES (6, N'hoangph', N'123456', N'5.png', N'hoangph@gmil.com', CAST(N'1998-03-04' AS Date))
SET IDENTITY_INSERT [dbo].[User] OFF
SET ANSI_PADDING ON
GO
/****** Object:  Index [Unique_Gmail]    Script Date: 3/6/2019 10:19:34 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [Unique_Gmail] ON [dbo].[User]
(
	[gmail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Quiz] ADD  CONSTRAINT [DF_Quiz_createdDate]  DEFAULT (getdate()) FOR [createdDate]
GO
ALTER TABLE [dbo].[Set_Study]  WITH CHECK ADD  CONSTRAINT [FK_Set_Study_User] FOREIGN KEY([user_id])
REFERENCES [dbo].[User] ([id])
GO
ALTER TABLE [dbo].[Set_Study] CHECK CONSTRAINT [FK_Set_Study_User]
GO
ALTER TABLE [dbo].[Set_Study_Quiz]  WITH CHECK ADD  CONSTRAINT [FK_Set_Study_Quiz_Quiz] FOREIGN KEY([quiz_id])
REFERENCES [dbo].[Quiz] ([id])
GO
ALTER TABLE [dbo].[Set_Study_Quiz] CHECK CONSTRAINT [FK_Set_Study_Quiz_Quiz]
GO
ALTER TABLE [dbo].[Set_Study_Quiz]  WITH CHECK ADD  CONSTRAINT [FK_Set_Study_Quiz_Set_Study] FOREIGN KEY([set_study_id])
REFERENCES [dbo].[Set_Study] ([id])
GO
ALTER TABLE [dbo].[Set_Study_Quiz] CHECK CONSTRAINT [FK_Set_Study_Quiz_Set_Study]
GO
USE [master]
GO
ALTER DATABASE [QuizSharp] SET  READ_WRITE 
GO
