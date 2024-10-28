CALL apoc.load.jsonArray('file:///gold_normalized_graph_edge_content_has_content_reference.json.gz')
YIELD value
WITH value
MATCH (x:OMDB_CONTENT {content_id: value.src_content_id}), (y:OMDB_CONTENT_REFERENCE {referenced_id: value.dst_referenced_id, type:value.dst_type})
CREATE (x)-[:CONTENT_HAS_CONTENT_REFERENCE]->(y);