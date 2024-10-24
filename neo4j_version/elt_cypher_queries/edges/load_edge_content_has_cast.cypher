CALL apoc.load.jsonArray('file:///gold_normalized_graph_edge_content_has_cast.json.gz')
YIELD value
WITH value
MATCH (x:OMDB_CONTENT {content_id: value.src_content_id}), (y:OMDB_CAST {cast_id: value.dst_cast_id})
CREATE (x)-[:CONTENT_HAS_CAST]->(y);