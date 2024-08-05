-- Table: public.administradores

-- DROP TABLE IF EXISTS public.administradores;

CREATE TABLE IF NOT EXISTS public.administradores
(
    id character varying(50) COLLATE pg_catalog."default" NOT NULL,
    nome character varying(100) COLLATE pg_catalog."default" NOT NULL,
    email character varying(100) COLLATE pg_catalog."default" NOT NULL,
    senha character varying(100) COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT administradores_pkey PRIMARY KEY (id),
    CONSTRAINT administradores_email_key UNIQUE (email)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.administradores
    OWNER to postgres;