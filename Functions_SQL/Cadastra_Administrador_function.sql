CREATE OR REPLACE FUNCTION inserir_administrador(
    p_id VARCHAR(50),
    p_nome VARCHAR(100),
    p_email VARCHAR(100),
    p_senha VARCHAR(100)
)
RETURNS VOID AS
$$
BEGIN
    INSERT INTO public.administradores (id, nome, email, senha)
    VALUES (p_id, p_nome, p_email, p_senha);
END;
$$
LANGUAGE plpgsql;
