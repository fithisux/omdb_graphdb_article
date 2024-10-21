CALL apoc.load.jsonArray('file:///edge_series_has_movieseries.json.gz')
YIELD value
WITH value
MATCH (x:OMDB_CONTENT {content_id: value.src_id}), (y:OMDB_CONTENT {content_id: value.dst_id})
CREATE (x)-[:SERIES_HAS_MOVIESERIES]->(y);