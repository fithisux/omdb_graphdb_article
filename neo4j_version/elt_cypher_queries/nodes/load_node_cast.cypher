CALL apoc.load.jsonArray('file:///gold_normalized_graph_node_cast.json.gz')
YIELD value
WITH value
CREATE (n:OMDB_CAST {
    cast_id:value.cast_id,
    roles:toStringList(value.roles)
});