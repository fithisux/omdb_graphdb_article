CALL apoc.load.jsonArray('file:///node_content_link.json.gz')
YIELD value
WITH value
CREATE (n:OMDB_CONTENT_LINK {
    content_id:toInteger(value.content_id),
    source: value.source,
    key:value.key,
    language_iso_639_1: value.language_iso_639_1
});