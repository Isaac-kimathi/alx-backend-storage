-- SQL script that ranks country origins of bands ordered by number of (non-unique) fans
-- column names must be origin and nb_fans
-- script must be executivable in any database

SELECT origin, SUM(fans) As nb_fans
	FROM metal_bands
	GROUP BY origin
	ORDER BY nb_fans DESC;
