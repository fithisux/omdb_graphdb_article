
# Graph Gold Models for the OMDB dataset


## Introduction

Before proceeding make yourself a favor and create a virtual environemnt. Tested with Python 3.12.7 on Windows x64 10. What's on the menu? 
A Neo4j graph database from the OMDB gold **normalized** graph model [OMDB Manual Dataset](https://github.com/fithisux/omdb_manual_dataset/tree/main). A Kuzu database from the OMDB gold **business** graph model [OMDB DBT PROJECT](https://github.com/fithisux/omdb_manual_dataset/tree/main). Capabilities of the databases allows to have 2 completely different modeling processes with important subtleties.

Enjoy!

## Medium Article

There is an [article](https://medium.com/@fithis2001/comprehensive-gold-modelling-for-the-omdb-dataset-00285d0a83b1) for this.

## Neo4j version (gold normalized graph model)

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

Login to `http://localhost:7474` (username/password https://hub.docker.com/_/neo4j) and replace the default password with `pass1234`
Checkout the above repo and run the dbt pipeline (see REDMAE there). 
Please run the [neo4j_export.ipynb](neo4j_version/neo4j_export.ipynb) notebook while having fixed if necessary the paths in order to export to json.gz.
Please run the [neo4j_load.ipynb](neo4j_version/neo4j_load.ipynb) to load graph to neo4j.

![image](/screenshots/neo4j.png)

## Kuzudb version (gold business graph model)

Checkout the above repo and run the dbt pipeline (see REDMAE there). 
Please run the [kuzudb_export.ipynb](kuzudb_version/kuzudb_export.ipynb) notebook while having fixed if necessary the paths in order to export to json.
Please run the [kuzudb_load.ipynb](kuzudb_version/kuzudb_load.ipynb) to load graph to kuzudb.

Explorer through

```
 docker run -p 8000:8000 \
           -v c:/work/omdb_graphdb_article/kuzudb_version/kuzudb_elt:/database \
           --rm kuzudb/explorer:latest

```

![image](/screenshots/kuzu.png)
