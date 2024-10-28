CALL apoc.load.jsonArray('file:///gold_normalized_graph_edge_episode_has_series.json.gz')
YIELD value
WITH value
MATCH (x:OMDB_CONTENT {content_id: value.src_content_id}), (y:OMDB_CONTENT {content_id: value.dst_content_id})
CREATE (x)-[:EPISODE_HAS_SERIES]->(y);