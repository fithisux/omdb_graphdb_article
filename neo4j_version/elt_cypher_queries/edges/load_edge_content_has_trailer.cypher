CALL apoc.load.jsonArray('file:///edge_content_has_trailer.json.gz')
YIELD value
WITH value
MATCH (x:OMDB_CONTENT {content_id: value.src_content_id}), (y:OMDB_CONTENT_TRAILER {trailer_id: value.dst_trailer_id})
CREATE (x)-[:CONTENT_HAS_TRAILER]->(y);