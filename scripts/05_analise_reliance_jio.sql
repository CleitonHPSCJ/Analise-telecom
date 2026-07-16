-- =============================================
-- ANÁLISE DA RELIANCE JIO EM Uttarakhand
-- Objetivo: Entender por que a Reliance Jio
-- tem maior rentabilidade nesse estado.
-- =============================================

SELECT tc.telecom_partner AS Operadoras,
  tc.state AS Estados,
  p.plano AS Plano,
  COUNT(*) AS Total_Cliente,
  ROUND(SUM(p.valor_mensal) * COUNT(*), 2) AS Receita_total
FROM telecom_churn tc 
JOIN plans p on p.customer_id = tc.customer_id 
WHERE tc.state = 'Uttarakhand'
GROUP BY tc.telecom_partner,tc.state , p.plano 
ORDER BY Receita_total DESC 
