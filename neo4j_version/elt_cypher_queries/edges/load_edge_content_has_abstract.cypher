CALL apoc.load.jsonArray('file:///edge_content_has_abstract.json.gz')
YIELD value
WITH value
MATCH (x:OMDB_CONTENT {content_id: value.src_content_id}), (y:OMDB_CONTENT_ABSTRACT {abstract: value.dst_abstract, lang: value.dst_lang})
CREATE (x)-[:CONTENT_HAS_ABSTRACT]->(y);