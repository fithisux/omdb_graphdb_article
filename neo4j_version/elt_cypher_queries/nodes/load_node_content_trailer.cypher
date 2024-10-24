CALL apoc.load.jsonArray('file:///gold_normalized_graph_node_content_trailer.json.gz')
YIELD value
WITH value
CREATE (n:OMDB_CONTENT_TRAILER {
    trailer_id:toInteger(value.trailer_id),
    language_iso_639_1: value.language_iso_639_1,
    source:value.source,
    key:value.key
});