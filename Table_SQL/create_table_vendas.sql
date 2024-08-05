-- Table: public.vendas

-- DROP TABLE IF EXISTS public.vendas;

CREATE TABLE IF NOT EXISTS public.vendas
(
    id character varying(50) COLLATE pg_catalog."default" NOT NULL DEFAULT nextval('vendas_id_seq'::regclass),
    produto character varying(255) COLLATE pg_catalog."default" NOT NULL,
    quantidade integer NOT NULL,
    valor_total numeric(10,2) NOT NULL,
    CONSTRAINT vendas_pkey PRIMARY KEY (id)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.vendas
    OWNER to postgres;