CALL apoc.load.jsonArray('file:///gold_normalized_graph_node_content_abstract.json.gz')
YIELD value
WITH value
CREATE (n:OMDB_CONTENT_ABSTRACT {
    abstract:value.abstract,
    lang:value.lang
});