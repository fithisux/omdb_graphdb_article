CALL apoc.load.jsonArray('file:///gold_normalized_graph_node_job.json.gz')
YIELD value
WITH value
CREATE (n:OMDB_JOB {
    job_id:toInteger(value.job_id)
});