CALL apoc.load.jsonArray('file:///gold_normalized_graph_edge_content_has_content_link.json.gz')
YIELD value
WITH value
MATCH (x:OMDB_CONTENT {content_id: value.src_content_id}), (y:OMDB_CONTENT_CONTENT_LINK {source: value.dst_source, key: value.dst_key, language_iso_639_1:value.dst_language_iso_639_1})
CREATE (x)-[:CONTENT_HAS_CONTENT_LINK]->(y);