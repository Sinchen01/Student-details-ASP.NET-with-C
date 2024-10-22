USE [DBLStudent ]
GO
/****** Object:  Table [dbo].[tblCourse]    Script Date: 11/03/2017 01:48:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblCourse](
	[CourseId] [int] IDENTITY(100,1) NOT NULL,
	[CourseName] [varchar](50) NOT NULL,
 CONSTRAINT [PK_tblCourse] PRIMARY KEY CLUSTERED 
(
	[CourseId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblstudent]    Script Date: 11/03/2017 01:48:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblstudent](
	[StudentId] [int] IDENTITY(400,1) NOT NULL,
	[StudentUSN] [varchar](50) NOT NULL,
	[StudentName] [varchar](50) NOT NULL,
	[Address] [varchar](max) NOT NULL,
	[CourseId] [int] NOT NULL,
	[YOA] [varchar](50) NOT NULL,
 CONSTRAINT [PK_tblstudent] PRIMARY KEY CLUSTERED 
(
	[StudentId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  ForeignKey [FK_tblstudent_tblCourse]    Script Date: 11/03/2017 01:48:49 ******/
ALTER TABLE [dbo].[tblstudent]  WITH CHECK ADD  CONSTRAINT [FK_tblstudent_tblCourse] FOREIGN KEY([CourseId])
REFERENCES [dbo].[tblCourse] ([CourseId])
GO
ALTER TABLE [dbo].[tblstudent] CHECK CONSTRAINT [FK_tblstudent_tblCourse]
GO
