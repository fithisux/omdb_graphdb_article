CALL apoc.load.jsonArray('file:///gold_normalized_graph_node_content_person_link.json.gz')
YIELD value
WITH value
CREATE (n:OMDB_CONTENT_PERSON_LINK {
    source: value.source,
    key:value.key,
    language_iso_639_1: value.language_iso_639_1
});