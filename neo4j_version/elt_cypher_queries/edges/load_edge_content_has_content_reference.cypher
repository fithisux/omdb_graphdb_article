CALL apoc.load.jsonArray('file:///edge_content_has_content_refrence.json.gz')
YIELD value
WITH value
MATCH (x:OMDB_CONTENT {content_id: value.src_content_id}), (y:OMDB_CONTENT_REFERENCE {source: value.dst_referenced_id, language_iso_639_1:value.dst_type})
CREATE (x)-[:CONTENT_HAS_CONTENT_ALIAS]->(y);