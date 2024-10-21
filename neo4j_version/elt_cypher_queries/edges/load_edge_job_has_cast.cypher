CALL apoc.load.jsonArray('file:///edge_job_has_cast.json.gz')
YIELD value
WITH value
MATCH (x:OMDB_JOB {job_id: value.src_job_id}), (y:OMDB_CAST {cast_id: value.dst_cast_id})
CREATE (x)-[:JOB_HAS_CAST]->(y);