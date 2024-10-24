CALL apoc.load.jsonArray('file:///gold_normalized_graph_edge_category_has_name.json.gz')
YIELD value
WITH value
MATCH (x:OMDB_CATEGORY {category_id: value.src_category_id}), (y:OMDB_CATEGORY_NAME {name: value.dst_name, language_iso_639_1: value.dst_language_iso_639_1})
CREATE (x)-[:CATEGORY_HAS_NAME]->(y);