CALL apoc.load.jsonArray('file:///node_job_description.json.gz')
YIELD value
WITH value
CREATE (n:OMDB_JOB_DESCRIPTION {
    job_id:toInteger(value.job_id),
    language_iso_639_1: value.language_iso_639_1,
    name:value.name
});