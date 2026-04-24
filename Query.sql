USE [master]
GO
/****** Object:  Table [dbo].[DimDate]    Script Date: 4/24/2026 1:55:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DimDate](
	[dateid] [int] NOT NULL,
	[date] [date] NOT NULL,
	[Year] [int] NOT NULL,
	[Quarter] [int] NOT NULL,
	[QuarterName] [nvarchar](50) NOT NULL,
	[Month] [int] NOT NULL,
	[Monthname] [nvarchar](50) NOT NULL,
	[Day] [int] NOT NULL,
	[Weekday] [int] NOT NULL,
	[WeekdayName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_DimDate] PRIMARY KEY CLUSTERED 
(
	[dateid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DimStation]    Script Date: 4/24/2026 1:55:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DimStation](
	[Stationid] [int] NOT NULL,
	[City] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_DimStation] PRIMARY KEY CLUSTERED 
(
	[Stationid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DimTruck]    Script Date: 4/24/2026 1:55:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DimTruck](
	[Truckid] [int] NOT NULL,
	[TruckType] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_DimTruck] PRIMARY KEY CLUSTERED 
(
	[Truckid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FactTrips]    Script Date: 4/24/2026 1:55:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FactTrips](
	[Tripid] [int] NOT NULL,
	[Dateid] [int] NOT NULL,
	[Stationid] [int] NOT NULL,
	[Truckid] [int] NOT NULL,
	[Wastecollected] [float] NOT NULL,
 CONSTRAINT [PK_FactTrips] PRIMARY KEY CLUSTERED 
(
	[Tripid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[fakeJobs]    Script Date: 4/24/2026 1:55:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[fakeJobs](
	[job] [nvarchar](50) NOT NULL,
	[company] [nvarchar](50) NOT NULL,
	[location] [nvarchar](50) NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[FactTrips]  WITH CHECK ADD FOREIGN KEY([Dateid])
REFERENCES [dbo].[DimDate] ([dateid])
GO
ALTER TABLE [dbo].[FactTrips]  WITH CHECK ADD FOREIGN KEY([Stationid])
REFERENCES [dbo].[DimStation] ([Stationid])
GO
ALTER TABLE [dbo].[FactTrips]  WITH CHECK ADD FOREIGN KEY([Truckid])
REFERENCES [dbo].[DimTruck] ([Truckid])
GO
USE [master]
GO
ALTER DATABASE [wasteManagement] SET  READ_WRITE 
GO
