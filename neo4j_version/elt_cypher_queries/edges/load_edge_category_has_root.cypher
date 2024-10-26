CALL apoc.load.jsonArray('file:///gold_normalized_graph_edge_category_has_root.json.gz')
YIELD value
WITH value
MATCH (x:OMDB_CATEGORY {category_id: value.src_category_id}), (y:OMDB_CATEGORY {category_id: value.dst_category_id})
CREATE (x)-[:CATEGORY_HAS_ROOT]->(y);