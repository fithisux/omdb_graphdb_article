CALL apoc.load.jsonArray('file:///edge_content_has_country.json.gz')
YIELD value
WITH value
MATCH (x:OMDB_CONTENT {content_id: value.src_content_id}), (y:REGION_CODES {alpha2: value.dst_alpha2})
CREATE (x)-[:CONTENT_HAS_COUNTRY]->(y);