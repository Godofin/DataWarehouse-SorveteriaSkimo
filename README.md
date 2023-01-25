# Criação DataWareHouse - Sorveteria Skimo

## Objetivo

- O objetivo desse projeto, é colocar em prática os conhecimentos adquiridos durante os estudos de Business Intelligence.

## Ferramentas utilizadas

- Para esse projeto, foram utilizadas as seguintes ferramentas:

  - Figma
  - Integration Services
  - Excel
  - Power BI

## Fonte de dados

- A fonte de dados utilizada para esse projeto, foi disponibilizada pela empresa Alura, que é uma escola de educação no rumo da tecnologia auxiliando com os conhecimentos.
- A fonte de dados, foi disponibilizada em formato de arquivo .csv, que é um arquivo de texto, que contém dados separados por vírgulas, podendo ser aberto em qualquer editor de texto.
- A fonte de dados, contém informações de vendas de uma sorveteria, que foi disponibilizada em 6 arquivos, sendo eles:
  - Vendas
  - Produtos
  - Clientes
  - Pedidos
  - Itens Pedidos
  - Categoria

## Modelagem do Data Warehouse

- Para iniciar o projeto, foi necessário fazer a modelagem do Data Warehouse, para isso, foi utilizado o Figma, que é uma ferramenta de prototipação de interface, que permite criar wireframes, protótipos de baixa e alta fidelidade, além de permitir a colaboração em tempo real. E também, bastante utilizada em times de scrum para realização de retrospectivas.
- Dentro do figma, foi utilizado o modelo de dados floco de neve, que é um modelo de dados que permite a integração de dados de diferentes fontes, e também, permite a integração de dados de diferentes níveis de granularidade.
- O resultado da modelagem, pode ser visto abaixo: ![Modelagem do Data Warehouse](/imgs/Modelagem%20SnowFlake.jpg)

## ETL

- Para a realização do ETL, foi utilizado o Integration Services, que é uma ferramenta de integração de dados, que permite a extração, transformação e carregamento de dados, e também, permite a criação de pipelines de dados.

### Criação das tabelas no Banco de dados
- Se deu início ao processo de ELT, criando um novo projeto de banco de dados no Visual Studio e criando uma nova conexão com o banco de dados, que foi utilizado o SQL Server. E, seguindo foi realizado a criação das tabelas, seguindo o modelo de dados floco de neve, que foi criado no Figma. Com isso, houve a criação de 6 tabelas, sendo elas:
  - Dimensão Categoria(Dim_Categoria)
  - Dimensão Cliente(Dim_Cliente)
  - Dimensão Produto(Dim_Produto)
  - Dimensão Itens Pedido(Dim_ItensPedidos)
  - Dimensão Vendedores(Dim_Vendedor)
  - Fato Pedido(Fat0_Pedido)
- O script de criação pode ser observado em anexo.(SorveteriaSkimo)

### Extração, Transformação e Carregamento dos dados(ETL)

- Para realizarmos a extração dos dados, foi utilizado o integration services. Houve a criação de um novo projeto dentro do schema do visual studio, onde usamos o ControlFlow para definirmos a ordem de execução dos nossos pacotes de dados, e também, usamos o DataFlow para definirmos a extração, transformação e carregamento dos dados.
- Em Control Flow, foi criado 6 pacotes de dados, sendo eles:
    -Dim_Categoria
    -Dim_Cliente
    -Dim_Produto
    -Dim_ItensPedidos
    -Dim_Vendedor
    -Fato_Pedido
- Dentro desses pacotes de dados ocorreu o processo de extração de dados, realizando a conexão com os arquivos em .CSV, realizando o mapping dos dados, e também, realizando a conexão com o banco de dados, para que os dados fossem carregados.
- Abaixo, pode ser observado o processo de extração e transformação dos dados, de maneira genérica de como é o processo: ![Processo de ETL](/imgs/ProcessorETL.jpg)

## Power BI
- Com o processo de ETL realizado, foi possível realizar a criação de um dashboard no Power BI, para que pudéssemos visualizar os dados de maneira mais amigável.
- O dashboard está disponibilizado na pasta "Dashboards".



