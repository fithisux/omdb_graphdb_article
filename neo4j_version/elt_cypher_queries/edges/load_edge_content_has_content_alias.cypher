CALL apoc.load.jsonArray('file:///gold_normalized_graph_edge_content_has_content_alias.json.gz')
YIELD value
WITH value
MATCH (x:OMDB_CONTENT {content_id: value.src_content_id}), (y:OMDB_CONTENT_ALIAS {name: value.dst_name, language_iso_639_1:value.dst_language_iso_639_1, official_translation: value.dst_official_translation})
CREATE (x)-[:CONTENT_HAS_CONTENT_ALIAS]->(y);