-- =============================================
-- ANÁLISE DE IDADE E GÊNERO POR OPERADORA
-- Objetivo: Identificar o perfil demográfico
-- de cada operadora.
-- =============================================

SELECT tc.telecom_partner AS Operadoras,
  ROUND(AVG(tc.age )) AS Idade_media,
  tc.gender AS Genero,
  COUNT(*) AS Clienets
FROM telecom_churn tc 
GROUP BY tc.telecom_partner, tc.gender 
ORDER BY tc.telecom_partner, Genero  DESC 
