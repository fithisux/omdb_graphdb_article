CALL apoc.load.jsonArray('file:///gold_normalized_graph_edge_content_has_keyword.json.gz')
YIELD value
WITH value
MATCH (x:OMDB_CONTENT {content_id: value.src_content_id}), (y:OMDB_CATEGORY {category_id: value.dst_category_id})
CREATE (x)-[:CONTENT_HAS_KEYWORD]->(y);