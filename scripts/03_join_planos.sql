-- =============================================
-- CRUZAMENTO DE DADOS: CLIENTES + PLANOS
-- Objetivo: Descobrir qual operadora tem mais
-- clientes no plano Premium.
-- =============================================

SELECT tc.telecom_partner AS Operadoras,
  p.plano AS Planos,
  tc.state AS Estados,
  COUNT(*) AS Total_de_Clientes,
  ROUND( AVG(p.valor_mensal ), 2) Valor_medio,
  ROUND( AVG(p.valor_mensal) * COUNT(*), 2) AS Receita_total
FROM telecom_churn tc 
JOIN plans p on p.customer_id = tc.customer_id 
GROUP BY tc.telecom_partner, p.plano, tc.state 
ORDER BY tc.telecom_partner, Receita_total DESC 
