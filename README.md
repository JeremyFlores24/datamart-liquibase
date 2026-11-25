# Despliegue del data mart del club de vóley

Liquibase versiona la estructura del data mart (tablas Delta en Databricks) y GitHub Actions la despliega.

- `liquibase/changelog/`: changelogs (2 archivos, 8 changesets) + archivo maestro
- `liquibase/pom.xml`: Liquibase + extensión de Databricks + driver JDBC
- `.github/workflows/deploy-datamart.yml`: flujo que ejecuta `liquibase update`

El despliegue crea el esquema `club_voley_dev` (ambiente de desarrollo) sin tocar el esquema `club_voley` del prototipo.

Secretos necesarios en GitHub (Settings > Secrets and variables > Actions):
- `DATABRICKS_JDBC_URL`: URL JDBC del SQL Warehouse
- `DATABRICKS_TOKEN`: token personal de Databricks
