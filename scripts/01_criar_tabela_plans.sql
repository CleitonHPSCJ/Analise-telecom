-- =============================================
-- CRIAÇÃO DA TABELA DE PLANOS
-- Objetivo: Criar uma tabela fictícia de planos
-- para cruzar com os dados de clientes.
-- =============================================

CREATE TABLE plans AS
SELECT 
    customer_id,
    CASE 
        WHEN RANDOM() < 0.33 THEN 'Plano Básico'
        WHEN RANDOM() < 0.66 THEN 'Plano Padrão'
        ELSE 'Plano Premium'
    END AS plano,
    CASE 
        WHEN RANDOM() < 0.33 THEN 29.99
        WHEN RANDOM() < 0.66 THEN 49.99
        ELSE 79.99
    END AS valor_mensal
FROM telecom_churn;
