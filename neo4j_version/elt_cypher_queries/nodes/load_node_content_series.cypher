CALL apoc.load.jsonArray('file:///node_content_series.json.gz')
YIELD value
WITH value
CREATE (n:OMDB_SERIES {
    id:toInteger(value.id),
    parent_id:toIntegerOrNull(value.parent_id)
});