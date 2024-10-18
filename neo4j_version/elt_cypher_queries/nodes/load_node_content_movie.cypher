CALL apoc.load.jsonArray('file:///node_content_movie.json.gz')
YIELD value
WITH value
CREATE (n:OMDB_MOVIE{
    id:toInteger(value.id),
    parent_id:toIntegerOrNull(value.parent_id)
});