CALL apoc.load.jsonArray('file:///gold_normalized_graph_edge_person_has_cast.json.gz')
YIELD value
WITH value
MATCH (x:OMDB_PERSON {person_id: value.src_person_id}), (y:OMDB_CAST {cast_id: value.dst_cast_id})
CREATE (x)-[:PERSON_HAS_CAST]->(y);