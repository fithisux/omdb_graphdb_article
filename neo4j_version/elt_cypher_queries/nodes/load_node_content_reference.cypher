CALL apoc.load.jsonArray('file:///gold_normalized_graph_node_content_reference.json.gz')
YIELD value
WITH value
CREATE (n:OMDB_CONTENT_REFERENCE {
    referenced_id:toIntegerOrNull(value.referenced_id),
    type:value.type
});