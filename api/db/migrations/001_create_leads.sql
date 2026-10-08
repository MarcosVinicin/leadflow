CREATE TABLE leads(
    id  INTEGER GENERATED ALWAYS AS IDENTITY  PRIMARY KEY,
    nome TEXT NOT NULL,
    email  TEXT NOT NULL UNIQUE,
    telefone TEXT,
    origem TEXT NOT NULL DEFAULT 'manual',
    etapa TEXT NOT NULL DEFAULT 'novo' CHECK (etapa IN('novo','contato','proposta', 'fechado','perdido')),
    criado_em TIMESTAMPTZ NOT NULL DEFAULT now()
);