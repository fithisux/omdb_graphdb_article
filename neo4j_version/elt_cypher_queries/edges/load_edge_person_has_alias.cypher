CALL apoc.load.jsonArray('file:///edge_person_has_alias.json.gz')
YIELD value
WITH value
MATCH (x:OMDB_PERSON {person_id: value.src_person_id}), (y:OMDB_PERSON_ALIAS {name: value.dst_name})
CREATE (x)-[:PERSON_HAS_ALIAS]->(y);