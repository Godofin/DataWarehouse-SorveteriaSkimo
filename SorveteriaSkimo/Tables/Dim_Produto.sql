create table [dbo].[Dim_Produto](
    [SKProduto] nvarchar(50) not null,
    [SKCategoria] NVARCHAR(50) not null,
    [Descrito] nvarchar(200) null, 
    [Embalagem] nvarchar(200) null,
    [Custo] nvarchar(50) null,
    [Preco] nvarchar(50) null

)