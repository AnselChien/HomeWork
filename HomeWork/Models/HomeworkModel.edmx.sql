
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 02/01/2023 12:12:10
-- Generated from EDMX file: C:\Users\joey1\source\repos\HomeWork\HomeWork\Models\HomeworkModel.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [Homework];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------


-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[Students]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Students];
GO
IF OBJECT_ID(N'[dbo].[Classes]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Classes];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'Students'
CREATE TABLE [dbo].[Students] (
    [學號] nvarchar(5)  NOT NULL,
    [姓名] nvarchar(20)  NOT NULL,
    [生日] datetime  NOT NULL,
    [Email] nvarchar(20)  NOT NULL
);
GO

-- Creating table 'Classes'
CREATE TABLE [dbo].[Classes] (
    [課號] nvarchar(4)  NOT NULL,
    [課名] nvarchar(20)  NOT NULL,
    [學分數] int  NOT NULL,
    [上課地點] nvarchar(20)  NOT NULL,
    [講師名字] nvarchar(20)  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [學號] in table 'Students'
ALTER TABLE [dbo].[Students]
ADD CONSTRAINT [PK_Students]
    PRIMARY KEY CLUSTERED ([學號] ASC);
GO

-- Creating primary key on [課號] in table 'Classes'
ALTER TABLE [dbo].[Classes]
ADD CONSTRAINT [PK_Classes]
    PRIMARY KEY CLUSTERED ([課號] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------