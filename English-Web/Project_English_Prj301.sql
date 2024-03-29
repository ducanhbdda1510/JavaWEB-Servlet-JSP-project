
use [master]
go 
Create database [Project_English_Prj301]
go
USE [Project_English_Prj301]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 3/21/2022 1:12:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[firstName] [nvarchar](50) NULL,
	[lastName] [nvarchar](50) NULL,
	[Username] [varchar](100) NULL,
	[Password] [varchar](100) NULL,
	[type] [int] NULL,
	[img] [nvarchar](500) NULL,
	[phone] [char](10) NULL,
	[DOB] [date] NULL,
	[gender] [bit] NULL,
	[Create_at] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Course]    Script Date: 3/21/2022 1:12:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Course](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](100) NULL,
	[instruction] [nvarchar](500) NULL,
	[description] [nvarchar](500) NULL,
	[schedule] [int] NULL,
	[lesson] [int] NULL,
	[week] [int] NULL,
	[img] [nvarchar](500) NULL,
	[price] [float] NULL,
	[teacherId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Learn]    Script Date: 3/21/2022 1:12:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Learn](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[studentId] [int] NULL,
	[courseId] [int] NULL,
	[registerDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Schedule]    Script Date: 3/21/2022 1:12:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Schedule](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[start] [varchar](10) NULL,
	[end] [varchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Teacher]    Script Date: 3/21/2022 1:12:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Teacher](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](100) NULL,
	[position] [nvarchar](100) NULL,
	[gender] [bit] NULL,
	[img] [nvarchar](500) NULL,
	[instruction] [nvarchar](500) NULL,
	[achievement] [nvarchar](500) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Account] ON 

INSERT [dbo].[Account] ([id], [firstName], [lastName], [Username], [Password], [type], [img], [phone], [DOB], [gender], [Create_at]) VALUES (1, N'AD', N'Admin', N'Admin', N'Admin', 1, NULL, NULL, NULL, NULL, CAST(N'2022-02-11T16:55:57.627' AS DateTime))
INSERT [dbo].[Account] ([id], [firstName], [lastName], [Username], [Password], [type], [img], [phone], [DOB], [gender], [Create_at]) VALUES (2, N'Đức', N'Anh', N'Ducanh', N'ducanh123', 0, N'https://img2.thuthuatphanmem.vn/uploads/2019/04/20/kieu-toc-nam-han-quoc-dep-nhat-hien-nay_104312542.jpg', N'0987654321', CAST(N'2022-03-18' AS Date), 1, CAST(N'2022-03-01T22:59:52.583' AS DateTime))
INSERT [dbo].[Account] ([id], [firstName], [lastName], [Username], [Password], [type], [img], [phone], [DOB], [gender], [Create_at]) VALUES (3, N'Anh', N'Anh', N'anhad', N'12345', 0, N'https://img2.thuthuatphanmem.vn/uploads/2019/04/20/kieu-toc-nam-han-quoc-dep-nhat-hien-nay_104312542.jpg', N'1234567890', CAST(N'2022-03-07' AS Date), 0, CAST(N'2022-03-16T05:54:30.577' AS DateTime))
INSERT [dbo].[Account] ([id], [firstName], [lastName], [Username], [Password], [type], [img], [phone], [DOB], [gender], [Create_at]) VALUES (4, N'dasdasd', N'asdasd', N'asdasd', N'asdasd', 0, N'https://img2.thuthuatphanmem.vn/uploads/2019/04/20/kieu-toc-nam-han-quoc-dep-nhat-hien-nay_104312542.jpg', N'1234567890', CAST(N'2022-03-25' AS Date), 0, CAST(N'2022-03-16T06:23:21.430' AS DateTime))
SET IDENTITY_INSERT [dbo].[Account] OFF
GO
SET IDENTITY_INSERT [dbo].[Course] ON 

INSERT [dbo].[Course] ([id], [name], [instruction], [description], [schedule], [lesson], [week], [img], [price], [teacherId]) VALUES (1, N'Writing Project', N'We will teach you how to write A Report for Project', N'This Couse will be ...', 1, 4, 12, N'/English_Education/images/img_1.jpg', 20, 2)
INSERT [dbo].[Course] ([id], [name], [instruction], [description], [schedule], [lesson], [week], [img], [price], [teacherId]) VALUES (2, N'Team Work to Learn', N'In here, we learn to share how you learn English for Class', N'This is', 2, 4, 12, N'/English_Education/images/img_2.jpg', 50, 1)
INSERT [dbo].[Course] ([id], [name], [instruction], [description], [schedule], [lesson], [week], [img], [price], [teacherId]) VALUES (3, N'Use Google for Learn', N'We must to learn how to learn by yourself, google is the best choose', N'This is', 3, 6, 8, N'/English_Education/images/img_3.jpg', 35, 3)
INSERT [dbo].[Course] ([id], [name], [instruction], [description], [schedule], [lesson], [week], [img], [price], [teacherId]) VALUES (4, N'Learn With Laptop and Book', N'Good way to learn', N'This is ...', 4, 3, 9, N'/English_Education/images/img_4.jpg', 25, 3)
INSERT [dbo].[Course] ([id], [name], [instruction], [description], [schedule], [lesson], [week], [img], [price], [teacherId]) VALUES (5, N'English for Kid', N'If you want your child smarter', N'This is', 6, 10, 20, N'/English_Education/images/img_5.jpg', 100, 2)
INSERT [dbo].[Course] ([id], [name], [instruction], [description], [schedule], [lesson], [week], [img], [price], [teacherId]) VALUES (6, N'Learn to ...', N'adasdasd', N'sdada', 1, 3, 12, N'https://thukyluat.vn/uploads/image/2021/01/16/Diem-lai-toan-bo-van-ban-trong-linh-vuc-giao-duc-ban-hanh-trong-nam-2020.png', 15, 2)
INSERT [dbo].[Course] ([id], [name], [instruction], [description], [schedule], [lesson], [week], [img], [price], [teacherId]) VALUES (7, N'Learn marth with English', N'Được phát triển cả toán và tiếng anh cùng lúc', N'Rất hữu dụng cho tương lai', 1, 6, 18, N'https://vnn-imgs-f.vgcloud.vn/2021/11/27/09/thi-truc-tuyen-khai-pha-tai-nang-toan-hoc-viet-nam-1.jpg', 30, 1)
SET IDENTITY_INSERT [dbo].[Course] OFF
GO
SET IDENTITY_INSERT [dbo].[Learn] ON 

INSERT [dbo].[Learn] ([id], [studentId], [courseId], [registerDate]) VALUES (1, 2, 1, CAST(N'2022-03-14T02:46:59.063' AS DateTime))
INSERT [dbo].[Learn] ([id], [studentId], [courseId], [registerDate]) VALUES (2, 2, 3, CAST(N'2022-03-15T21:30:16.550' AS DateTime))
INSERT [dbo].[Learn] ([id], [studentId], [courseId], [registerDate]) VALUES (3, 2, 3, CAST(N'2022-03-15T21:31:15.997' AS DateTime))
INSERT [dbo].[Learn] ([id], [studentId], [courseId], [registerDate]) VALUES (4, 2, 3, CAST(N'2022-03-15T21:31:49.463' AS DateTime))
INSERT [dbo].[Learn] ([id], [studentId], [courseId], [registerDate]) VALUES (5, 2, 3, CAST(N'2022-03-15T21:59:00.577' AS DateTime))
INSERT [dbo].[Learn] ([id], [studentId], [courseId], [registerDate]) VALUES (6, 2, 2, CAST(N'2022-03-16T05:36:55.117' AS DateTime))
INSERT [dbo].[Learn] ([id], [studentId], [courseId], [registerDate]) VALUES (7, 2, 3, CAST(N'2022-03-16T05:37:02.053' AS DateTime))
INSERT [dbo].[Learn] ([id], [studentId], [courseId], [registerDate]) VALUES (8, 2, 2, CAST(N'2022-03-21T11:56:39.523' AS DateTime))
SET IDENTITY_INSERT [dbo].[Learn] OFF
GO
SET IDENTITY_INSERT [dbo].[Schedule] ON 

INSERT [dbo].[Schedule] ([id], [start], [end]) VALUES (1, N'07:30:00', N'09:00:00')
INSERT [dbo].[Schedule] ([id], [start], [end]) VALUES (2, N'09:00:00', N'10:30:00')
INSERT [dbo].[Schedule] ([id], [start], [end]) VALUES (3, N'10:30:00', N'12:00:00')
INSERT [dbo].[Schedule] ([id], [start], [end]) VALUES (4, N'12:00:00', N'13:30:00')
INSERT [dbo].[Schedule] ([id], [start], [end]) VALUES (5, N'13:30:00', N'15:00:00')
INSERT [dbo].[Schedule] ([id], [start], [end]) VALUES (6, N'15:00:00', N'16:30:00')
INSERT [dbo].[Schedule] ([id], [start], [end]) VALUES (7, N'16:30:00', N'18:00:00')
SET IDENTITY_INSERT [dbo].[Schedule] OFF
GO
SET IDENTITY_INSERT [dbo].[Teacher] ON 

INSERT [dbo].[Teacher] ([id], [name], [position], [gender], [img], [instruction], [achievement]) VALUES (1, N'Benjamin Stone', N'English Teacher', 1, N'/English_Education/images/person_1.jpg', N'Turndown for what !!!', N'Best Yasuo in Home')
INSERT [dbo].[Teacher] ([id], [name], [position], [gender], [img], [instruction], [achievement]) VALUES (2, N'Katleen Stone', N'Psychology Teacher', 0, N'/English_Education/images/person_2.jpg', N'Love God', N'Best English in Ukraina ')
INSERT [dbo].[Teacher] ([id], [name], [position], [gender], [img], [instruction], [achievement]) VALUES (3, N'Sadie White', N'Teamwork Teacher', 0, N'/English_Education/images/person_3.jpg', N'Try Hard to have Good Thing', N'10 year teacher in Harvart')
SET IDENTITY_INSERT [dbo].[Teacher] OFF
GO
ALTER TABLE [dbo].[Account] ADD  DEFAULT ((0)) FOR [type]
GO
ALTER TABLE [dbo].[Account] ADD  DEFAULT (getdate()) FOR [Create_at]
GO
ALTER TABLE [dbo].[Learn] ADD  DEFAULT (getdate()) FOR [registerDate]
GO
ALTER TABLE [dbo].[Course]  WITH CHECK ADD FOREIGN KEY([schedule])
REFERENCES [dbo].[Schedule] ([id])
GO
ALTER TABLE [dbo].[Course]  WITH CHECK ADD FOREIGN KEY([teacherId])
REFERENCES [dbo].[Teacher] ([id])
GO
ALTER TABLE [dbo].[Learn]  WITH CHECK ADD FOREIGN KEY([courseId])
REFERENCES [dbo].[Course] ([id])
GO
ALTER TABLE [dbo].[Learn]  WITH CHECK ADD FOREIGN KEY([studentId])
REFERENCES [dbo].[Account] ([id])
GO
