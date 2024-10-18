CALL apoc.load.jsonArray('file:///node_content_movieseries.json.gz')
YIELD value
WITH value
CREATE (n:OMDB_MOVIESERIES {
    id:toInteger(value.id)
});