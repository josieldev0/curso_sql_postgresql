-- =====================================================
-- ÁLGEBRA RELACIONAL	
-- =====================================================
-- PROJECTION
π hcode, name, city, country (hotel)
π tcode, name, country, age, gender (tourist)
π acode, aname, duration_in_minutes (activity)
π hcode, tcode, year, days, cost (stay)
π tcode, acode, year, cost (participate)

-- SELECTION
σ hcode = 'h1' (hotel)
σ year > 2001 (participate)
σ year > 2001 ∧ year ≤ 2004 (participate)
π tcode, acode σ year > 2001 ∧ year ≤ 2004 (participate)
π year, days σ days > 3 (stay)

-- UNIÃO e INTERSECÇÃO
π tcode (participate)
π tcode (stay)

π tcode (participate) ∪ π tcode (stay)
π tcode (participate) ∩ π tcode (stay)

-- JOIN
π turista←tourist.name, activity.aname, ano←year, custo←cost (participate ⟕ participate.tcode = tourist.tcode tourist ⟕ participate.acode = activity.acode activity)

-- AGRUPAMENTOS
π tcode, cost, (participate)
γ tcode ; sum(cost)->soma (participate)
γ tourist.name ; sum(cost)->soma (participate ⟕ participate.tcode = tourist.tcode tourist)

-- =====================================================
-- EXERCÍCIOS ÁLGEBRA RELACIONAL	
-- =====================================================
-- 1. O nome e o país dos turistas com mais de 20 anos e do gênero feminino (project + select)
π name, country σ age > 20 ∧ gender = 'Female' (tourist)

-- 2. O nome do hotel, o nome do cliente, o ano, os dias de hospedagem e custo da hospedagem (join na tabela stay)
π hotel.name, tourist.name, year, days, cost (stay ⟕ stay.hcode = hotel.hcode hotel ⟕ tourist.tcode = stay.tcode tourist)

-- 3. O somatório do custo da hospedagem agrupado pelo nome do hotel (agrupamento e join na tabela stay)
γ hotel.name ; sum(cost)->soma (stay ⟕ stay.hcode = hotel.hcode hotel)