CREATE OR REPLACE VIEW v_global_temperatures AS
SELECT 
	YEAR(gc.dt) AS 'Year',
	avg(gc.AverageTemperature) AS 'AverageTemperature',
	gc.Country
FROM `globallandtemperaturesbycountry.csv` gc  
WHERE gc.AverageTemperatureUncertainty < 1
GROUP BY year(gc.dt), gc.country
HAVING count(MONTH(gc.dt)) >= 12
ORDER BY gc.country, gc.dt
;

CREATE OR REPLACE VIEW v_global_temperatures_slope AS
SELECT
	Country, 
	(COUNT(*)*SUM(Year*AverageTemperature) - SUM(Year)*SUM(AverageTemperature)) / (COUNT(*)*SUM(Year*Year) - SUM(Year)*SUM(Year)) AS 'slope'
FROM v_global_temperatures
WHERE country != 'Antarctica'
GROUP BY Country
ORDER BY (COUNT(*)*SUM(Year*AverageTemperature) - SUM(Year)*SUM(AverageTemperature)) / (COUNT(*)*SUM(Year*Year) - SUM(Year)*SUM(Year))
;

CREATE OR REPLACE TABLE t_global_temperatures AS
SELECT 
	vgt.`Year`,
	vgt.AverageTemperature,
	vgt.Country,
	vgts.slope 
FROM v_global_temperatures vgt 
JOIN v_global_temperatures_slope vgts 
	ON vgt.Country = vgts.Country 
;

SELECT * FROM t_global_temperatures tgt WHERE Country = 'Czech Republic';
SELECT * FROM v_global_temperatures vgt WHERE Country = 'Czech Republic';