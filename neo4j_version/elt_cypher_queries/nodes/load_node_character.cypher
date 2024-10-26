CALL apoc.load.jsonArray('file:///gold_normalized_graph_node_character.json.gz')
YIELD value
WITH value
CREATE (n:OMDB_CHARACTER {
    id:toInteger(value.id),
    name: value.name
});