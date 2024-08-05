CREATE OR REPLACE FUNCTION inserir_produto(
    p_id VARCHAR(50),
    p_nome VARCHAR(100),
    p_descricao TEXT,
    p_preco NUMERIC(10,2),
    p_quantidade INTEGER
)
RETURNS VOID AS
$$
BEGIN
    INSERT INTO public.produtos (id, nome, descricao, preco, quantidade)
    VALUES (p_id, p_nome, p_descricao, p_preco, p_quantidade);
END;
$$
LANGUAGE plpgsql;
