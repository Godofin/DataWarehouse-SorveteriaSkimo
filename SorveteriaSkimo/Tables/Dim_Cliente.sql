create table [dbo].[Dim_Cliente](
    [SKCliente] nvarchar(50) not null PRIMARY KEY,
    [Nome] NVARCHAR(50) not null,
    [Endereco] nvarchar(200) null, 
    [Estado] nvarchar(200) null,
    [Cep] nvarchar(50) null,
    [Bairro] nvarchar(50),
    [Cidade] nvarchar(50) null,
    [Nascimento] nvarchar(11) null,
    [Genero] nvarchar(1) null
)