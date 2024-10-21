CALL apoc.load.jsonArray('file:///edge_job_has_description.json.gz')
YIELD value
WITH value
MATCH (x:OMDB_JOB {job_id: value.src_job_id}), (y:OMDB_JOB_DESCRIPTION {name: value.dst_name, language_iso_639_1: value.dst_language_iso_639_1})
CREATE (x)-[:JOB_HAS_DESCRIPTION]->(y);