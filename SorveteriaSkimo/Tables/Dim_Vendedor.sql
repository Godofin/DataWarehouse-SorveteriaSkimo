create table [dbo].[Dim_Vendedor](
    [SKVendedor] nvarchar(50) not null PRIMARY KEY,
    [Nome] NVARCHAR(200) not null,
    [Bairro] nvarchar(200) null, 
    [Admissao] nvarchar(11) null,
    [Comissao] nvarchar(10) null
)