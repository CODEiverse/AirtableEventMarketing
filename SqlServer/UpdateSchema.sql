
    SET ANSI_NULLS ON
    GO

    SET QUOTED_IDENTIFIER ON
    GO
    
    
      -- TABLE: Attendance
      -- TABLE: EventDate
      -- TABLE: VIP
      -- TABLE: Venue

      -- CREATE DATABASE
      IF NOT EXISTS (SELECT * from sys.databases WHERE name = 'AirtableEventMarketing')
      BEGIN
          CREATE DATABASE [AirtableEventMarketing];
      END
        GO
        
     USE [AirtableEventMarketing];
GO
      
        -- TABLE: Attendance
        -- ****** Object:  Table [dbo].[Attendance]   Script Date:  ******
        IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Attendance]') AND type in (N'U')) 
        BEGIN
        CREATE TABLE [dbo].[Attendance] (
          [AttendanceId] NVARCHAR(150) NOT NULL
          -- TEXT.
        ,
          [Notes] NVARCHAR(200) NULL
          -- TEXT.
        ,
          [Event] NVARCHAR(150) NULL
          -- TEXT.
        ,
          [Person] NVARCHAR(150) NULL
          -- TEXT.
        ,
          [Invited] BIT NULL
          -- BOOLEAN.
        ,
          [RSVPed] BIT NULL
          -- BOOLEAN.
        ,
          [Showedup] BIT NULL
          -- BOOLEAN.
        ,
          [Name] NVARCHAR(150) NULL
          -- TEXT.
        ,
          [createdTime] DATETIME NULL
          -- DATETIME.
        ,
        
        CONSTRAINT [PK_Attendance] PRIMARY KEY CLUSTERED
          (
            [AttendanceId] ASC
          )
        
        ) ON [PRIMARY]
        END
        GO

        -- TABLE: EventDate
        -- ****** Object:  Table [dbo].[EventDate]   Script Date:  ******
        IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[EventDate]') AND type in (N'U')) 
        BEGIN
        CREATE TABLE [dbo].[EventDate] (
          [EventDateId] NVARCHAR(150) NOT NULL
          -- TEXT.
        ,
          [Name] NVARCHAR(150) NULL
          -- TEXT.
        ,
          [Type] NVARCHAR(150) NULL
          -- TEXT.
        ,
          [StartDate] DATE NULL
          -- xs:date.
        ,
          [Details] NVARCHAR(max) NULL
          -- TEXT.
        ,
          [EndDate] DATE NULL
          -- xs:date.
        ,
          [Venue] NVARCHAR(150) NULL
          -- TEXT.
        ,
          [ofAttendees] INT NULL
          -- INT32.
        ,
          [ofInvites] INT NULL
          -- INT32.
        ,
          [createdTime] DATETIME NULL
          -- DATETIME.
        ,
        
        CONSTRAINT [PK_EventDate] PRIMARY KEY CLUSTERED
          (
            [EventDateId] ASC
          )
        
        ) ON [PRIMARY]
        END
        GO

        -- TABLE: VIP
        -- ****** Object:  Table [dbo].[VIP]   Script Date:  ******
        IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[VIP]') AND type in (N'U')) 
        BEGIN
        CREATE TABLE [dbo].[VIP] (
          [VIPId] NVARCHAR(150) NOT NULL
          -- TEXT.
        ,
          [Name] NVARCHAR(150) NULL
          -- TEXT.
        ,
          [Location] NVARCHAR(150) NULL
          -- TEXT.
        ,
          [Email] NVARCHAR(150) NULL
          -- TEXT.
        ,
          [Address] NVARCHAR(150) NULL
          -- TEXT.
        ,
          [Type] NVARCHAR(150) NULL
          -- TEXT.
        ,
          [Notes] NVARCHAR(200) NULL
          -- TEXT.
        ,
          [Eventsattended] INT NULL
          -- INT32.
        ,
          [createdTime] DATETIME NULL
          -- DATETIME.
        ,
        
        CONSTRAINT [PK_VIP] PRIMARY KEY CLUSTERED
          (
            [VIPId] ASC
          )
        
        ) ON [PRIMARY]
        END
        GO

        -- TABLE: Venue
        -- ****** Object:  Table [dbo].[Venue]   Script Date:  ******
        IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Venue]') AND type in (N'U')) 
        BEGIN
        CREATE TABLE [dbo].[Venue] (
          [VenueId] NVARCHAR(150) NOT NULL
          -- TEXT.
        ,
          [Name] NVARCHAR(150) NULL
          -- TEXT.
        ,
          [Address] NVARCHAR(150) NULL
          -- TEXT.
        ,
          [Notes] NVARCHAR(200) NULL
          -- TEXT.
        ,
          [MapCache] NVARCHAR(max) NULL
          -- TEXT.
        ,
          [createdTime] DATETIME NULL
          -- DATETIME.
        ,
        
        CONSTRAINT [PK_Venue] PRIMARY KEY CLUSTERED
          (
            [VenueId] ASC
          )
        
        ) ON [PRIMARY]
        END
        GO


      
DECLARE @ObjectName NVARCHAR(100)

    
    -- COUNT: 9
    IF NOT EXISTS(SELECT * FROM sys.columns WHERE Name = N'AttendanceId' AND Object_ID = Object_ID(N'Attendance'))
    BEGIN
            ALTER TABLE [dbo].[Attendance] ADD [AttendanceId] NVARCHAR(150) NULL;
    END

    
    -- COUNT: 9
    IF NOT EXISTS(SELECT * FROM sys.columns WHERE Name = N'Notes' AND Object_ID = Object_ID(N'Attendance'))
    BEGIN
            ALTER TABLE [dbo].[Attendance] ADD [Notes] NVARCHAR(200) NULL;
    END

    
    ELSE
    BEGIN 


        ALTER TABLE [dbo].[Attendance] ALTER COLUMN [Notes] NVARCHAR(200) NULL;

    

	END

    
    -- COUNT: 9
    IF NOT EXISTS(SELECT * FROM sys.columns WHERE Name = N'Event' AND Object_ID = Object_ID(N'Attendance'))
    BEGIN
            ALTER TABLE [dbo].[Attendance] ADD [Event] NVARCHAR(150) NULL;
    END

    
    ELSE
    BEGIN 


        ALTER TABLE [dbo].[Attendance] ALTER COLUMN [Event] NVARCHAR(150) NULL;

    

	END

    
    -- COUNT: 9
    IF NOT EXISTS(SELECT * FROM sys.columns WHERE Name = N'Person' AND Object_ID = Object_ID(N'Attendance'))
    BEGIN
            ALTER TABLE [dbo].[Attendance] ADD [Person] NVARCHAR(150) NULL;
    END

    
    ELSE
    BEGIN 


        ALTER TABLE [dbo].[Attendance] ALTER COLUMN [Person] NVARCHAR(150) NULL;

    

	END

    
    -- COUNT: 9
    IF NOT EXISTS(SELECT * FROM sys.columns WHERE Name = N'Invited' AND Object_ID = Object_ID(N'Attendance'))
    BEGIN
            ALTER TABLE [dbo].[Attendance] ADD [Invited] BIT NULL;
    END

    
    ELSE
    BEGIN 


        ALTER TABLE [dbo].[Attendance] ALTER COLUMN [Invited] BIT NULL;

    

	END

    
    -- COUNT: 9
    IF NOT EXISTS(SELECT * FROM sys.columns WHERE Name = N'RSVPed' AND Object_ID = Object_ID(N'Attendance'))
    BEGIN
            ALTER TABLE [dbo].[Attendance] ADD [RSVPed] BIT NULL;
    END

    
    ELSE
    BEGIN 


        ALTER TABLE [dbo].[Attendance] ALTER COLUMN [RSVPed] BIT NULL;

    

	END

    
    -- COUNT: 9
    IF NOT EXISTS(SELECT * FROM sys.columns WHERE Name = N'Showedup' AND Object_ID = Object_ID(N'Attendance'))
    BEGIN
            ALTER TABLE [dbo].[Attendance] ADD [Showedup] BIT NULL;
    END

    
    ELSE
    BEGIN 


        ALTER TABLE [dbo].[Attendance] ALTER COLUMN [Showedup] BIT NULL;

    

	END

    
    -- COUNT: 9
    IF NOT EXISTS(SELECT * FROM sys.columns WHERE Name = N'Name' AND Object_ID = Object_ID(N'Attendance'))
    BEGIN
            ALTER TABLE [dbo].[Attendance] ADD [Name] NVARCHAR(150) NULL;
    END

    
    ELSE
    BEGIN 


        ALTER TABLE [dbo].[Attendance] ALTER COLUMN [Name] NVARCHAR(150) NULL;

    

	END

    
    -- COUNT: 9
    IF NOT EXISTS(SELECT * FROM sys.columns WHERE Name = N'createdTime' AND Object_ID = Object_ID(N'Attendance'))
    BEGIN
            ALTER TABLE [dbo].[Attendance] ADD [createdTime] DATETIME NULL;
    END

    
    ELSE
    BEGIN 


        ALTER TABLE [dbo].[Attendance] ALTER COLUMN [createdTime] DATETIME NULL;

    

	END

    
    -- COUNT: 12
    IF NOT EXISTS(SELECT * FROM sys.columns WHERE Name = N'EventDateId' AND Object_ID = Object_ID(N'EventDate'))
    BEGIN
            ALTER TABLE [dbo].[EventDate] ADD [EventDateId] NVARCHAR(150) NULL;
    END

    
    -- COUNT: 12
    IF NOT EXISTS(SELECT * FROM sys.columns WHERE Name = N'Name' AND Object_ID = Object_ID(N'EventDate'))
    BEGIN
            ALTER TABLE [dbo].[EventDate] ADD [Name] NVARCHAR(150) NULL;
    END

    
    ELSE
    BEGIN 


        ALTER TABLE [dbo].[EventDate] ALTER COLUMN [Name] NVARCHAR(150) NULL;

    

	END

    
    -- COUNT: 12
    IF NOT EXISTS(SELECT * FROM sys.columns WHERE Name = N'Type' AND Object_ID = Object_ID(N'EventDate'))
    BEGIN
            ALTER TABLE [dbo].[EventDate] ADD [Type] NVARCHAR(150) NULL;
    END

    
    ELSE
    BEGIN 


        ALTER TABLE [dbo].[EventDate] ALTER COLUMN [Type] NVARCHAR(150) NULL;

    

	END

    
    -- COUNT: 12
    IF NOT EXISTS(SELECT * FROM sys.columns WHERE Name = N'StartDate' AND Object_ID = Object_ID(N'EventDate'))
    BEGIN
            ALTER TABLE [dbo].[EventDate] ADD [StartDate] DATE NULL;
    END

    
    ELSE
    BEGIN 


        ALTER TABLE [dbo].[EventDate] ALTER COLUMN [StartDate] DATE NULL;

    

	END

    
    -- COUNT: 12
    IF NOT EXISTS(SELECT * FROM sys.columns WHERE Name = N'Details' AND Object_ID = Object_ID(N'EventDate'))
    BEGIN
            ALTER TABLE [dbo].[EventDate] ADD [Details] NVARCHAR(max) NULL;
    END

    
    ELSE
    BEGIN 


        ALTER TABLE [dbo].[EventDate] ALTER COLUMN [Details] NVARCHAR(max) NULL;

    

	END

    
    -- COUNT: 12
    IF NOT EXISTS(SELECT * FROM sys.columns WHERE Name = N'EndDate' AND Object_ID = Object_ID(N'EventDate'))
    BEGIN
            ALTER TABLE [dbo].[EventDate] ADD [EndDate] DATE NULL;
    END

    
    ELSE
    BEGIN 


        ALTER TABLE [dbo].[EventDate] ALTER COLUMN [EndDate] DATE NULL;

    

	END

    
    -- COUNT: 12
    IF NOT EXISTS(SELECT * FROM sys.columns WHERE Name = N'Venue' AND Object_ID = Object_ID(N'EventDate'))
    BEGIN
            ALTER TABLE [dbo].[EventDate] ADD [Venue] NVARCHAR(150) NULL;
    END

    
    ELSE
    BEGIN 


        ALTER TABLE [dbo].[EventDate] ALTER COLUMN [Venue] NVARCHAR(150) NULL;

    

	END

    
    -- COUNT: 12
    IF NOT EXISTS(SELECT * FROM sys.columns WHERE Name = N'ofAttendees' AND Object_ID = Object_ID(N'EventDate'))
    BEGIN
            ALTER TABLE [dbo].[EventDate] ADD [ofAttendees] INT NULL;
    END

    
    ELSE
    BEGIN 


        ALTER TABLE [dbo].[EventDate] ALTER COLUMN [ofAttendees] INT NULL;

    

	END

    
    -- COUNT: 12
    IF NOT EXISTS(SELECT * FROM sys.columns WHERE Name = N'ofInvites' AND Object_ID = Object_ID(N'EventDate'))
    BEGIN
            ALTER TABLE [dbo].[EventDate] ADD [ofInvites] INT NULL;
    END

    
    ELSE
    BEGIN 


        ALTER TABLE [dbo].[EventDate] ALTER COLUMN [ofInvites] INT NULL;

    

	END

    
    -- COUNT: 12
    IF NOT EXISTS(SELECT * FROM sys.columns WHERE Name = N'createdTime' AND Object_ID = Object_ID(N'EventDate'))
    BEGIN
            ALTER TABLE [dbo].[EventDate] ADD [createdTime] DATETIME NULL;
    END

    
    ELSE
    BEGIN 


        ALTER TABLE [dbo].[EventDate] ALTER COLUMN [createdTime] DATETIME NULL;

    

	END

    
    -- COUNT: 10
    IF NOT EXISTS(SELECT * FROM sys.columns WHERE Name = N'VIPId' AND Object_ID = Object_ID(N'VIP'))
    BEGIN
            ALTER TABLE [dbo].[VIP] ADD [VIPId] NVARCHAR(150) NULL;
    END

    
    -- COUNT: 10
    IF NOT EXISTS(SELECT * FROM sys.columns WHERE Name = N'Name' AND Object_ID = Object_ID(N'VIP'))
    BEGIN
            ALTER TABLE [dbo].[VIP] ADD [Name] NVARCHAR(150) NULL;
    END

    
    ELSE
    BEGIN 


        ALTER TABLE [dbo].[VIP] ALTER COLUMN [Name] NVARCHAR(150) NULL;

    

	END

    
    -- COUNT: 10
    IF NOT EXISTS(SELECT * FROM sys.columns WHERE Name = N'Location' AND Object_ID = Object_ID(N'VIP'))
    BEGIN
            ALTER TABLE [dbo].[VIP] ADD [Location] NVARCHAR(150) NULL;
    END

    
    ELSE
    BEGIN 


        ALTER TABLE [dbo].[VIP] ALTER COLUMN [Location] NVARCHAR(150) NULL;

    

	END

    
    -- COUNT: 10
    IF NOT EXISTS(SELECT * FROM sys.columns WHERE Name = N'Email' AND Object_ID = Object_ID(N'VIP'))
    BEGIN
            ALTER TABLE [dbo].[VIP] ADD [Email] NVARCHAR(150) NULL;
    END

    
    ELSE
    BEGIN 


        ALTER TABLE [dbo].[VIP] ALTER COLUMN [Email] NVARCHAR(150) NULL;

    

	END

    
    -- COUNT: 10
    IF NOT EXISTS(SELECT * FROM sys.columns WHERE Name = N'Address' AND Object_ID = Object_ID(N'VIP'))
    BEGIN
            ALTER TABLE [dbo].[VIP] ADD [Address] NVARCHAR(150) NULL;
    END

    
    ELSE
    BEGIN 


        ALTER TABLE [dbo].[VIP] ALTER COLUMN [Address] NVARCHAR(150) NULL;

    

	END

    
    -- COUNT: 10
    IF NOT EXISTS(SELECT * FROM sys.columns WHERE Name = N'Type' AND Object_ID = Object_ID(N'VIP'))
    BEGIN
            ALTER TABLE [dbo].[VIP] ADD [Type] NVARCHAR(150) NULL;
    END

    
    ELSE
    BEGIN 


        ALTER TABLE [dbo].[VIP] ALTER COLUMN [Type] NVARCHAR(150) NULL;

    

	END

    
    -- COUNT: 10
    IF NOT EXISTS(SELECT * FROM sys.columns WHERE Name = N'Notes' AND Object_ID = Object_ID(N'VIP'))
    BEGIN
            ALTER TABLE [dbo].[VIP] ADD [Notes] NVARCHAR(200) NULL;
    END

    
    ELSE
    BEGIN 


        ALTER TABLE [dbo].[VIP] ALTER COLUMN [Notes] NVARCHAR(200) NULL;

    

	END

    
    -- COUNT: 10
    IF NOT EXISTS(SELECT * FROM sys.columns WHERE Name = N'Eventsattended' AND Object_ID = Object_ID(N'VIP'))
    BEGIN
            ALTER TABLE [dbo].[VIP] ADD [Eventsattended] INT NULL;
    END

    
    ELSE
    BEGIN 


        ALTER TABLE [dbo].[VIP] ALTER COLUMN [Eventsattended] INT NULL;

    

	END

    
    -- COUNT: 10
    IF NOT EXISTS(SELECT * FROM sys.columns WHERE Name = N'createdTime' AND Object_ID = Object_ID(N'VIP'))
    BEGIN
            ALTER TABLE [dbo].[VIP] ADD [createdTime] DATETIME NULL;
    END

    
    ELSE
    BEGIN 


        ALTER TABLE [dbo].[VIP] ALTER COLUMN [createdTime] DATETIME NULL;

    

	END

    
    -- COUNT: 7
    IF NOT EXISTS(SELECT * FROM sys.columns WHERE Name = N'VenueId' AND Object_ID = Object_ID(N'Venue'))
    BEGIN
            ALTER TABLE [dbo].[Venue] ADD [VenueId] NVARCHAR(150) NULL;
    END

    
    -- COUNT: 7
    IF NOT EXISTS(SELECT * FROM sys.columns WHERE Name = N'Name' AND Object_ID = Object_ID(N'Venue'))
    BEGIN
            ALTER TABLE [dbo].[Venue] ADD [Name] NVARCHAR(150) NULL;
    END

    
    ELSE
    BEGIN 


        ALTER TABLE [dbo].[Venue] ALTER COLUMN [Name] NVARCHAR(150) NULL;

    

	END

    
    -- COUNT: 7
    IF NOT EXISTS(SELECT * FROM sys.columns WHERE Name = N'Address' AND Object_ID = Object_ID(N'Venue'))
    BEGIN
            ALTER TABLE [dbo].[Venue] ADD [Address] NVARCHAR(150) NULL;
    END

    
    ELSE
    BEGIN 


        ALTER TABLE [dbo].[Venue] ALTER COLUMN [Address] NVARCHAR(150) NULL;

    

	END

    
    -- COUNT: 7
    IF NOT EXISTS(SELECT * FROM sys.columns WHERE Name = N'Notes' AND Object_ID = Object_ID(N'Venue'))
    BEGIN
            ALTER TABLE [dbo].[Venue] ADD [Notes] NVARCHAR(200) NULL;
    END

    
    ELSE
    BEGIN 


        ALTER TABLE [dbo].[Venue] ALTER COLUMN [Notes] NVARCHAR(200) NULL;

    

	END

    
    -- COUNT: 7
    IF NOT EXISTS(SELECT * FROM sys.columns WHERE Name = N'MapCache' AND Object_ID = Object_ID(N'Venue'))
    BEGIN
            ALTER TABLE [dbo].[Venue] ADD [MapCache] NVARCHAR(max) NULL;
    END

    
    ELSE
    BEGIN 


        ALTER TABLE [dbo].[Venue] ALTER COLUMN [MapCache] NVARCHAR(max) NULL;

    

	END

    
    -- COUNT: 7
    IF NOT EXISTS(SELECT * FROM sys.columns WHERE Name = N'createdTime' AND Object_ID = Object_ID(N'Venue'))
    BEGIN
            ALTER TABLE [dbo].[Venue] ADD [createdTime] DATETIME NULL;
    END

    
    ELSE
    BEGIN 


        ALTER TABLE [dbo].[Venue] ALTER COLUMN [createdTime] DATETIME NULL;

    

	END

    

              -- ****** KEYS FOR Table [dbo].[Attendance]
          -- FK for Event :: 0 :: Attendance :: EventDate
          IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Attendance_EventDate]') AND parent_object_id = OBJECT_ID(N'[dbo].[Attendance]'))
              IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Attendance_EventDate]') AND parent_object_id = OBJECT_ID(N'[dbo].[Attendance]'))
                ALTER TABLE [dbo].[Attendance]  WITH CHECK ADD  CONSTRAINT [FK_Attendance_EventDate] FOREIGN KEY([Event])
                    REFERENCES [dbo].[EventDate] (EventDateId)
                GO

          IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Attendance_EventDate]') AND parent_object_id = OBJECT_ID(N'[dbo].[Attendance]'))
            ALTER TABLE [dbo].[Attendance] CHECK CONSTRAINT [FK_Attendance_EventDate]
            GO
          
          -- FK for Person :: 0 :: Attendance :: VIP
          IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Attendance_VIP]') AND parent_object_id = OBJECT_ID(N'[dbo].[Attendance]'))
              IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Attendance_VIP]') AND parent_object_id = OBJECT_ID(N'[dbo].[Attendance]'))
                ALTER TABLE [dbo].[Attendance]  WITH CHECK ADD  CONSTRAINT [FK_Attendance_VIP] FOREIGN KEY([Person])
                    REFERENCES [dbo].[VIP] (VIPId)
                GO

          IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Attendance_VIP]') AND parent_object_id = OBJECT_ID(N'[dbo].[Attendance]'))
            ALTER TABLE [dbo].[Attendance] CHECK CONSTRAINT [FK_Attendance_VIP]
            GO
          

              -- ****** KEYS FOR Table [dbo].[EventDate]
          -- FK for Venue :: 1 :: EventDate :: Venue
          IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_EventDate_Venue]') AND parent_object_id = OBJECT_ID(N'[dbo].[EventDate]'))
              IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_EventDate_Venue]') AND parent_object_id = OBJECT_ID(N'[dbo].[EventDate]'))
                ALTER TABLE [dbo].[EventDate]  WITH CHECK ADD  CONSTRAINT [FK_EventDate_Venue] FOREIGN KEY([Venue])
                    REFERENCES [dbo].[Venue] (VenueId)
                GO

          IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_EventDate_Venue]') AND parent_object_id = OBJECT_ID(N'[dbo].[EventDate]'))
            ALTER TABLE [dbo].[EventDate] CHECK CONSTRAINT [FK_EventDate_Venue]
            GO
          

              -- ****** KEYS FOR Table [dbo].[VIP]

              -- ****** KEYS FOR Table [dbo].[Venue]


            SELECT 'Successful' as Value
            FROM (SELECT NULL AS FIELD) as Result
            FOR XML AUTO

          