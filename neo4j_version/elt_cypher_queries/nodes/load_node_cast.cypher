CALL apoc.load.jsonArray('file:///node_cast.json.gz')
YIELD value
WITH value
CREATE (n:OMDB_CAST {
    content_id:toInteger(value.content_id),
    person_id:toInteger(value.person_id),
    job_id:toInteger(value.job_id),
    roles:toStringList(value.roles)
});