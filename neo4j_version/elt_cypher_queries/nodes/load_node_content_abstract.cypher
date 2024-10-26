CALL apoc.load.jsonArray('file:///gold_normalized_graph_node_content_abstract.json.gz')
YIELD value
WITH value
CREATE (n:OMDB_CONTENT_ABSTRACT {
    abstract:value.abstract,
    language_iso_639_1:value.language_iso_639_1
});