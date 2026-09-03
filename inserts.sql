INSERT INTO empresas (
    razao_social, nome_fantasia, cnpj, telefone, email, cidade, cep, endereco
) VALUES
('Casa do Escritório Ltda.', 'Casa do Escritório', '11222333000144',
    '1133445566', 'contato@casadoescritorio.com', 'São Paulo', '01505000',
    'Rua do Papel, 120'),
('Mundo Digital Eletrônicos Ltda.', 'Mundo Digital', '22333444000155',
    '1144556677', 'vendas@mundodigital.com', 'Campinas', '13010000',
    'Avenida das Inovações, 350'),
('Papelaria Estudantil Ltda.', 'Papelaria Estudantil', '33444555000166',
    '1155667788', 'contato@papelariaestudantil.com', 'Osasco', '06100000',
    'Rua dos Estudantes, 80'),
('Conecta Tecnologia Ltda.', 'Conecta Tech', '44555666000177',
    '1166778899', 'suporte@conectatech.com', 'Santo André', '09010000',
    'Avenida Industrial, 700'),
('Comercial Horizonte Ltda.', 'Horizonte Comercial', '55666777000188',
    '1177889900', 'vendas@horizonte.com', 'São Bernardo do Campo', '09700000',
    'Rua Horizonte, 250');

INSERT INTO clientes (
    nome_razao_social, cpf, telefone, email, cidade, cep, endereco
) VALUES
('Fernanda Souza Lima', '67890123456',
    '11987650006', 'fernanda@email.com', 'São Paulo', '05050000',
    'Rua das Acácias, 120'),
('Rafael Martins Pereira', '78901234567',
    '11987650007', 'rafael@email.com', 'Campinas', '13100000',
    'Avenida das Nações, 300'),
('Beatriz Carvalho Gomes', '89012345678',
    '11987650008', 'beatriz@email.com', 'Osasco', '06200000',
    'Rua do Sol, 25'),
('Gabriel Rocha Mendes', '90123456789',
    '11987650009', 'gabriel@email.com', 'Guarulhos', '07200000',
    'Rua das Árvores, 78'),
('Juliana Mendes Ribeiro', '01234567890',
    '11987650010', 'juliana@email.com', 'Santo André', '09100000',
    'Avenida Portugal, 450'),
('Matheus Cardoso Alves', '13579246801',
    '11987650011', 'matheus@email.com', 'São Paulo', '02100000',
    'Rua da Esperança, 90'),
('Camila Rodrigues Silva', '24680135792',
    '11987650012', 'camila@email.com', 'São Bernardo do Campo', '09800000',
    'Rua das Margaridas, 150'),
('Pedro Augusto Nunes', '35792468013',
    '11987650013', 'pedro@email.com', 'Diadema', '09900000',
    'Avenida dos Trabalhadores, 60'),
('Larissa Freitas Costa', '46801357924',
    '11987650014', 'larissa@email.com', 'Mauá', '09300000',
    'Rua das Violetas, 35'),
('Eduardo Vieira Santos', '57924680135',
    '11987650015', 'eduardo@email.com', 'São Paulo', '01100000',
    'Rua do Comércio, 500');
    
    
    
    
    
    
    
   INSERT INTO produtos (
    nome, descricao, codigo_barras, valor_unitario, estoque, data_expedicao
) VALUES
('Notebook TechNova Pro', 'Notebook com 16GB de memória RAM',
    '7890000000001', 3500.00, 15, '2026-08-31'),
('Mouse Óptico USB', 'Mouse óptico com conexão USB',
    '7890000000002', 45.90, 50, '2026-08-31'),
('Teclado Mecânico RGB', 'Teclado mecânico com iluminação RGB',
    '7890000000003', 250.00, 20, '2026-08-31'),
('Monitor LED 24 Polegadas', 'Monitor Full HD de 24 polegadas',
    '7890000000004', 899.90, 12, '2026-08-31'),
('Cabo HDMI 2 Metros', 'Cabo HDMI versão 2.0',
    '7890000000005', 35.00, 100, '2026-08-31');

INSERT INTO formas_pagamento (descricao) VALUES
('Dinheiro'),
('PIX'),
('Cartão de Crédito'),
('Cartão de Débito'),
('Boleto Bancário');

INSERT INTO transportadoras (
    razao_social, cnpj, telefone, cidade, endereco
) VALUES
('Rápido Brasil Transportes', '11111111000111',
    '11955550001', 'São Paulo', 'Rua das Cargas, 100'),
('LogExpress Entregas', '22222222000122',
    '11955550002', 'Guarulhos', 'Avenida Logística, 200'),
('TransSul Cargas Ltda.', '33333333000133',
    '11955550003', 'Santo André', 'Rua dos Caminhões, 50');

INSERT INTO nota_fiscal (
    numero_nota, data_emissao, id_empresa, id_cliente,
    tipo_operacao, valor_produtos, valor_desconto,
    valor_frete, valor_seguro, valor_total, status) 
	 VALUES
(1001, '2026-08-20', 1, 1,
    'Venda de produtos', 341.80, 0.00,
    20.00, 0.00, 361.80, 'PAGA'),
(1002, '2026-08-22', 2, 2,
    'Venda de produtos', 3570.00, 0.00,
    50.00, 0.00, 3620.00, 'PENDENTE'),
(1003, '2026-08-25', 3, 3,
    'Venda de produtos', 899.90, 0.00,
    0.00, 0.00, 899.90, 'PAGA'),
(1004, '2026-08-28', 1, 4,
    'Venda de produtos', 172.70, 10.00,
    0.00, 0.00, 162.70, 'PAGA');

INSERT INTO itens_nota_fiscal (
    id_nota, id_produto, quantidade,
    valor_unitario, desconto, valor_total_item) 
	 VALUES
(1, 2, 2, 45.90, 0.00, 91.80),
(1, 3, 1, 250.00, 0.00, 250.00),

(2, 1, 1, 3500.00, 0.00, 3500.00),
(2, 5, 2, 35.00, 0.00, 70.00),

(3, 4, 1, 899.90, 0.00, 899.90),

(4, 2, 3, 45.90, 0.00, 137.70),
(4, 5, 1, 35.00, 10.00, 25.00);

INSERT INTO pagamentos_nota (
    id_nota, id_forma_pagamento, valor_pago,
    data_pagamento, parcelas, status_pagamento) 
	 VALUES
(1, 2, 361.80, '2026-08-20', 1, 'PAGO'),
(2, 3, 3620.00, NULL, 10, 'PENDENTE'),
(3, 4, 899.90, '2026-08-25', 1, 'PAGO'),
(4, 1, 162.70, '2026-08-28', 1, 'PAGO');

INSERT INTO fretes_nota (
    id_nota, id_transportadora,
    modalidade_frete, placa_veiculo, valor_frete) 
	 VALUES
(1, 1, 'Por conta do emitente', 'ABC1D23', 20.00),
(2, 2, 'Por conta do emitente', 'DEF4G56', 50.00);
    
   
	
	
