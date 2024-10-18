CALL apoc.load.jsonArray('file:///node_content_season.json.gz')
YIELD value
WITH value
CREATE (n:OMDB_SEASON {
    id:toInteger(value.id),
    parent_id:toIntegerOrNull(value.parent_id)
});