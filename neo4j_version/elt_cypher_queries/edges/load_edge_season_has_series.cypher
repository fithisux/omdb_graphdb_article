CALL apoc.load.jsonArray('file:///edge_season_has_series.json.gz')
YIELD value
WITH value
MATCH (x:OMDB_CONTENT {content_id: value.src_id}), (y:OMDB_CONTENT {content_id: value.dst_id})
CREATE (x)-[:SEASON_HAS_SERIES]->(y);