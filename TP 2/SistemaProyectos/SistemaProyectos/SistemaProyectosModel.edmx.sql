
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 05/14/2015 19:03:17
-- Generated from EDMX file: c:\users\esteban\documents\visual studio 2013\Projects\SistemaProyectos\SistemaProyectos\Model1.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [BDSistemaProyectos];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------


-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------


-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'UsuarioSet'
CREATE TABLE [dbo].[UsuarioSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Nombre] nvarchar(max)  NOT NULL,
    [Apellido] nvarchar(max)  NOT NULL,
    [Dni] nvarchar(max)  NOT NULL,
    [Contraseña] nvarchar(max)  NOT NULL,
    [Sistema_Id] int  NOT NULL
);
GO

-- Creating table 'SistemaSet'
CREATE TABLE [dbo].[SistemaSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [NombreError] nvarchar(max)  NOT NULL,
    [ValorDemora] int  NOT NULL,
    [ValorPosible] int  NOT NULL,
    [CalculoCategoria] int  NOT NULL
);
GO

-- Creating table 'ProyectoSet'
CREATE TABLE [dbo].[ProyectoSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Nombre] nvarchar(max)  NOT NULL,
    [Fecha] datetime  NOT NULL,
    [Descripcion] nvarchar(max)  NOT NULL,
    [Gerente] int  NOT NULL,
    [Usuario_Id] int  NOT NULL
);
GO

-- Creating table 'FactoresSet'
CREATE TABLE [dbo].[FactoresSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Nombre] nvarchar(max)  NOT NULL,
    [Valores] int  NOT NULL,
    [Proyecto_Id] int  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [Id] in table 'UsuarioSet'
ALTER TABLE [dbo].[UsuarioSet]
ADD CONSTRAINT [PK_UsuarioSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'SistemaSet'
ALTER TABLE [dbo].[SistemaSet]
ADD CONSTRAINT [PK_SistemaSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'ProyectoSet'
ALTER TABLE [dbo].[ProyectoSet]
ADD CONSTRAINT [PK_ProyectoSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'FactoresSet'
ALTER TABLE [dbo].[FactoresSet]
ADD CONSTRAINT [PK_FactoresSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [Sistema_Id] in table 'UsuarioSet'
ALTER TABLE [dbo].[UsuarioSet]
ADD CONSTRAINT [FK_SistemaUsuario]
    FOREIGN KEY ([Sistema_Id])
    REFERENCES [dbo].[SistemaSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_SistemaUsuario'
CREATE INDEX [IX_FK_SistemaUsuario]
ON [dbo].[UsuarioSet]
    ([Sistema_Id]);
GO

-- Creating foreign key on [Usuario_Id] in table 'ProyectoSet'
ALTER TABLE [dbo].[ProyectoSet]
ADD CONSTRAINT [FK_UsuarioProyecto]
    FOREIGN KEY ([Usuario_Id])
    REFERENCES [dbo].[UsuarioSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_UsuarioProyecto'
CREATE INDEX [IX_FK_UsuarioProyecto]
ON [dbo].[ProyectoSet]
    ([Usuario_Id]);
GO

-- Creating foreign key on [Proyecto_Id] in table 'FactoresSet'
ALTER TABLE [dbo].[FactoresSet]
ADD CONSTRAINT [FK_ProyectoFactores]
    FOREIGN KEY ([Proyecto_Id])
    REFERENCES [dbo].[ProyectoSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ProyectoFactores'
CREATE INDEX [IX_FK_ProyectoFactores]
ON [dbo].[FactoresSet]
    ([Proyecto_Id]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------