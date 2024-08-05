CREATE OR REPLACE FUNCTION inserir_fornecedor(
    p_id VARCHAR(50),
    p_nome VARCHAR(100),
    p_cnpj VARCHAR(20),
    p_email VARCHAR(100),
    p_senha VARCHAR(100)
)
RETURNS VOID AS
$$
BEGIN
    INSERT INTO public.fornecedores (id, nome, cnpj, email, senha)
    VALUES (p_id, p_nome, p_cnpj, p_email, p_senha);
END;
$$
LANGUAGE plpgsql;
