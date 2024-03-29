﻿/*
Deployment script for DW_SorveteriaSkimo

This code was generated by a tool.
Changes to this file may cause incorrect behavior and will be lost if
the code is regenerated.
*/

GO
SET ANSI_NULLS, ANSI_PADDING, ANSI_WARNINGS, ARITHABORT, CONCAT_NULL_YIELDS_NULL, QUOTED_IDENTIFIER ON;

SET NUMERIC_ROUNDABORT OFF;


GO
:setvar DatabaseName "DW_SorveteriaSkimo"
:setvar DefaultFilePrefix "DW_SorveteriaSkimo"
:setvar DefaultDataPath "C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\"
:setvar DefaultLogPath "C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\"

GO
:on error exit
GO
/*
Detect SQLCMD mode and disable script execution if SQLCMD mode is not supported.
To re-enable the script after enabling SQLCMD mode, execute the following:
SET NOEXEC OFF; 
*/
:setvar __IsSqlCmdEnabled "True"
GO
IF N'$(__IsSqlCmdEnabled)' NOT LIKE N'True'
    BEGIN
        PRINT N'SQLCMD mode must be enabled to successfully execute this script.';
        SET NOEXEC ON;
    END


GO
USE [$(DatabaseName)];


GO
PRINT N'Dropping Primary Key unnamed constraint on [dbo].[Dim_Produto]...';


GO
ALTER TABLE [dbo].[Dim_Produto] DROP CONSTRAINT [PK__Dim_Prod__3D61EB7F486D745F];


GO
PRINT N'Creating Table [dbo].[Dim_ItensPedidos]...';


GO
CREATE TABLE [dbo].[Dim_ItensPedidos] (
    [SKPedido]          NVARCHAR (50) NOT NULL,
    [SKProduto]         NVARCHAR (50) NOT NULL,
    [QuantidadeVendida] NVARCHAR (50) NULL
);


GO
PRINT N'Creating Table [dbo].[Fato_Pedidos]...';


GO
CREATE TABLE [dbo].[Fato_Pedidos] (
    [SKCliente]      NVARCHAR (50) NOT NULL,
    [SKItensPedidos] NVARCHAR (50) NOT NULL,
    [SKVendedor]     NVARCHAR (50) NOT NULL,
    [DataVenda]      NVARCHAR (11) NOT NULL
);


GO
PRINT N'Update complete.';


GO
