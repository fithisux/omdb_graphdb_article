CALL apoc.load.jsonArray('file:///node_job.json.gz')
YIELD value
WITH value
CREATE (n:OMDB_JOB {
    job_id:toInteger(value.job_id)
});