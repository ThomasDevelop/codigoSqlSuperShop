-- Table: public.fornecedores

-- DROP TABLE IF EXISTS public.fornecedores;

CREATE TABLE IF NOT EXISTS public.fornecedores
(
    id character varying(50) COLLATE pg_catalog."default" NOT NULL,
    nome character varying(100) COLLATE pg_catalog."default" NOT NULL,
    cnpj character varying(20) COLLATE pg_catalog."default" NOT NULL,
    email character varying(100) COLLATE pg_catalog."default" NOT NULL,
    senha character varying(100) COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT fornecedores_pkey PRIMARY KEY (id),
    CONSTRAINT fornecedores_cnpj_key UNIQUE (cnpj),
    CONSTRAINT fornecedores_email_key UNIQUE (email)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.fornecedores
    OWNER to postgres;