-- =============================================
-- RECEITA TOTAL POR OPERADORA E ESTADO
-- Objetivo: Identificar onde cada operadora
-- fatura mais.
-- =============================================

SELECT tc.telecom_partner AS Operadoras,
  tc.state AS Estados,
  COUNT(*) AS Total_Cliente,
  ROUND(SUM(p.valor_mensal) * COUNT(*), 2) AS Receita_total
FROM telecom_churn tc 
JOIN plans p on p.customer_id = tc.customer_id 
GROUP BY tc.telecom_partner,tc.state 
ORDER BY tc.telecom_partner, Receita_total DESC 
