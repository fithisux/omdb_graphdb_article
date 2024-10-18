CALL apoc.load.jsonArray('file:///edge_category_has_category_name.json.gz')
YIELD value
WITH value
MATCH (x:OMDB_CATEGORY {category_id: value.src_category_id}), (y:OMDB_CATEGORY_NAME {category_id: value.dst_category_id, name: value.dst_name, language_iso_639_1: value.dst_language_iso_639_1})
CREATE (x)-[:CATEGORY_HAS_CATEGORY_NAME]->(y);