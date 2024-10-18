CALL apoc.load.jsonArray('file:///node_content_references.json.gz')
YIELD value
WITH value
CREATE (n:OMDB_CONTENT_REFERENCE {
    content_id:toInteger(value.content_id),
    referenced_id:toIntegerOrNull(value.referenced_id),
    type:value.type
});