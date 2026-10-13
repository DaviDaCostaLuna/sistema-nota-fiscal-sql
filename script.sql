

CREATE DATABASE notas_fiscais;
USE notas_fiscais;

CREATE TABLE empresas (
    id_empresa INT AUTO_INCREMENT PRIMARY KEY,
    razao_social VARCHAR(100) NOT NULL,
    nome_fantasia VARCHAR(100),
    cnpj VARCHAR(14) NOT NULL UNIQUE,
    telefone VARCHAR(20),
    email VARCHAR(100),
    cidade VARCHAR(100),
    cep VARCHAR(8),
    endereco VARCHAR(100)
);

CREATE TABLE clientes (
    id_cliente INT AUTO_INCREMENT PRIMARY KEY,
    nome_razao_social VARCHAR(100) NOT NULL,
    cpf VARCHAR(11) NOT NULL UNIQUE,
    telefone VARCHAR(20),
    email VARCHAR(100),
    cidade VARCHAR(100),
    cep VARCHAR(8),
    endereco VARCHAR(100)
);

CREATE TABLE produtos (
    id_produto INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    descricao VARCHAR(200),
    codigo_barras VARCHAR(20),
    valor_unitario DECIMAL(10,2) NOT NULL,
    estoque INT NOT NULL,
    data_expedicao DATE
);

CREATE TABLE nota_fiscal (
    id_nota INT AUTO_INCREMENT PRIMARY KEY,
    numero_nota INT NOT NULL,
    data_emissao DATE NOT NULL,
    id_empresa INT NOT NULL,
    id_cliente INT NOT NULL,
    tipo_operacao VARCHAR(100),
    valor_produtos DECIMAL(10,2) NOT NULL DEFAULT 0.00,
    valor_desconto DECIMAL(10,2) NOT NULL DEFAULT 0.00,
    valor_frete DECIMAL(10,2) NOT NULL DEFAULT 0.00,
    valor_seguro DECIMAL(10,2) NOT NULL DEFAULT 0.00,
    valor_total DECIMAL(10,2) NOT NULL DEFAULT 0.00,
    status VARCHAR(100),

    FOREIGN KEY (id_empresa) REFERENCES empresas(id_empresa),
    FOREIGN KEY (id_cliente) REFERENCES clientes(id_cliente)
);

CREATE TABLE itens_nota_fiscal (
    id_item INT AUTO_INCREMENT PRIMARY KEY,
    id_nota INT NOT NULL,
    id_produto INT NOT NULL,
    quantidade INT NOT NULL,
    valor_unitario DECIMAL(10,2) NOT NULL,
    desconto DECIMAL(10,2) NOT NULL DEFAULT 0.00,
    valor_total_item DECIMAL(10,2) NOT NULL,

    FOREIGN KEY (id_nota) REFERENCES nota_fiscal(id_nota),
    FOREIGN KEY (id_produto) REFERENCES produtos(id_produto)
);

CREATE TABLE formas_pagamento (
    id_forma_pagamento INT AUTO_INCREMENT PRIMARY KEY,
    descricao VARCHAR(100) NOT NULL
);

CREATE TABLE pagamentos_nota (
    id_pagamento INT AUTO_INCREMENT PRIMARY KEY,
    id_nota INT NOT NULL,
    id_forma_pagamento INT NOT NULL,
    valor_pago DECIMAL(10,2) NOT NULL,
    data_pagamento DATE,
    parcelas INT,
    status_pagamento VARCHAR(100),

    FOREIGN KEY (id_nota) REFERENCES nota_fiscal(id_nota),
    FOREIGN KEY (id_forma_pagamento)
        REFERENCES formas_pagamento(id_forma_pagamento)
);

CREATE TABLE transportadoras (
    id_transportadora INT AUTO_INCREMENT PRIMARY KEY,
    razao_social VARCHAR(100) NOT NULL,
    cnpj VARCHAR(14),
    telefone VARCHAR(20),
    cidade VARCHAR(100),
    endereco VARCHAR(100)
);

CREATE TABLE fretes_nota (
    id_frete INT AUTO_INCREMENT PRIMARY KEY,
    id_nota INT NOT NULL,
    id_transportadora INT,
    modalidade_frete VARCHAR(100),
    placa_veiculo VARCHAR(20),
    valor_frete DECIMAL(10,2) NOT NULL DEFAULT 0.00,

    FOREIGN KEY (id_nota) REFERENCES nota_fiscal(id_nota),
    FOREIGN KEY (id_transportadora)
        REFERENCES transportadoras(id_transportadora)
);
