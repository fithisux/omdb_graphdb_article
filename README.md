
## Neo4j version (gold normalized graph model)
It generates a Neo4j graph database from the OMDB gold normalized graph model [OMDB DBT PROJECT](https://github.com/fithisux/omdb_manual_dataset/tree/main).

Run first your neo4j

```
docker run \
    -p 7474:7474 -p 7687:7687 \
    --name neo4j-apoc \
    --volume="C:\work\omdb_graphdb_article\neo4j_version\data":/data \
    --volume="C:\work\omdb_graphdb_article\neo4j_version\logs":/logs \
    --volume="C:\work\omdb_graphdb_article\neo4j_version\conf":/conf \
    --volume="C:\work\omdb_graphdb_article\neo4j_version\export_elt":/import \
    -e NEO4J_apoc_export_file_enabled=true \
    -e NEO4J_apoc_import_file_enabled=true \
    -e NEO4J_apoc_import_file_use__neo4j__config=true \
    -e NEO4J_PLUGINS=\[\"apoc\"\] \
    -e NEO4J_dbms_security_procedures_unrestricted="apoc.load.*" \
    neo4j:latest
```
Checkout the above repo and run the dbt pipeline (see REDMAE there). 
Please run the [neo4j_export.ipynb](neo4j_version/neo4j_export.ipynb) notebook while having fixed if necessary the paths in order to export to json.gz.
Please run the [neo4j_load.ipynb](neo4j_version/neo4j_load.ipynb) to load graph to neo4j.