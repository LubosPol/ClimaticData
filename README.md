# Vývoj průměrné světové teploty
### Prezentace v Power BI, data o vývoji průměrné teploty, CO2, vztah k rostoucí populaci a HDP. <br> 
<b><i>Power BI presentation, data on average temperature, CO2, relationship to growing population and GDP.</i></b>
<br><br><br>
<u>Tato prezentace obsahuje tři stránky:</u>
- První stránka `Průměrné teploty v období 1900 - 2012`  zobrazuje vývoj celosvětové teploty v období 1900 - 2012 na úrovni jednotlivých států. Pro potřeby srovnání grafu jednotlivých států podle velikosti klimatické změny (od největšího rozdílu teplot po nejmenší) byla data o světových teplotách zpracována pomocí [SQL dotazu](sql/global_temperatures.sql), výsledkem je tabulka s výpočtem sklonu (slope) přímky lineárního trendu.
- Druhá stránka `Vývoj průměrné teploty mezi lety 1961 - 2022`  zobrazuje současné tempo růstu celosvětové teplotní anomálie od roku 1980 do roku 2022. Srovnávací základnou jsou teploty v období 1960 - 1980. Dále je zde uvedeno porovnání jednotlivých kalendářních měsíců přes zkoumané období a detailní pohled na změny teplot pro jednotlivé země.
- Třetí stránka `Vývoj průměrné teploty mezi lety 1961 - 2022 - závislosti` zobrazuje možné souvislosti tůstu průměrné teploty v závislosti na CO2, rostoucí populaci a HDP jednotlivých zemí.

Zdroje dat:
 - statistická data o populaci a HDP pochází z databáze [*Engeto*](https://engeto.cz/),
 - data o globálních teplotách z domény FAOSTAT, konkrétní soubor dat je stažen z [*kaggle*](https://www.kaggle.com/datasets/sevgisarac/temperature-change),
 - zdrojem dat o emisích CO2 je web [globalcarbonproject](https://www.globalcarbonproject.org/), konkrétní soubor dat je stažen z [*zenodo*](https://zenodo.org/record/7215364#.Y3y3sezMIeY).

[zdrojová data](data/)

### Seznam změn:
- 2023-05-23:
  - zpřístupnění první verze 