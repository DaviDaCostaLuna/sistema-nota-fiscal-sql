# sistema-nota-fiscal-sql
Banco de dados de notas fiscais com integração no excel em tempo real 


Objetivo:

Esse projeto simula um sistema de emissão e o controle de notas fiscais, incluindo empresas, clientes, produtos, formas de pagamento, transportadoras e itens de nota.
O banco foi modelado em SQL e conectado em tempo real ao excel para fazer a geração de relatórios e análises.


Estrutura do Banco de Dados:

o sistema contém as seguintes tabelas:

-empresas → dados das empresas emissoras.

-clientes → dados dos clientes.

-produtos → catálogo de produtos.

-formas_pagamento → métodos de pagamento disponíveis.

-transportadoras → empresas responsáveis pela entrega.

-nota_fiscal → cabeçalho da nota fiscal.

-itens_nota_fiscal → produtos vinculados à nota.

-pagamentos_nota → controle dos pagamentos.

-fretes_nota → informações de frete



Relacionamentos:

Uma empresa emite várias notas fiscais.

Cada nota fiscal pertence a um cliente.

Uma nota pode ter vários itens (produtos).

Cada nota possui uma forma de pagamento e pode ter um frete associado.


diagrama ER completo:


<img width="1536" height="1024" alt="image" src="https://github.com/user-attachments/assets/dfd87fd5-53a6-4131-9849-b278d25aabc4" />



Como Usar:
## ⚙️ Como Usar

1. Abra algum cliente SQL da sua preferência (**HeidiSQL foi usado nesse projeto**)  
2. Execute o arquivo `script.sql` para criar o banco e as tabelas.  
3. Execute o arquivo `inserts.sql` para inserir dados de exemplo.  
4. Utilize consultas SQL para gerar relatórios e análises.



Scripts disponíveis:

- `script.sql` → criação do banco e tabelas  
- `inserts.sql` → dados de exemplo para testes  
- `queries.sql` → consultas úteis para relatórios


Tecnologias Usadas:
-XAMPP;
-HeidiSQL;
-Excel;
-GitHub.



Exemplos de Consultas

-- Produtos mais vendidos
SELECT p.nome, SUM(i.quantidade) AS total_vendido
FROM produtos p
JOIN itens_nota_fiscal i ON p.id_produto = i.id_produto
GROUP BY p.nome
ORDER BY total_vendido DESC;



-- Valor total de vendas por empresa
SELECT e.nome_fantasia, SUM(n.valor_total) AS total_vendas
FROM empresas e
JOIN nota_fiscal n ON e.id_empresa = n.id_empresa
GROUP BY e.nome_fantasia;





Autor:
Davi Da Costa Alves Luna.

