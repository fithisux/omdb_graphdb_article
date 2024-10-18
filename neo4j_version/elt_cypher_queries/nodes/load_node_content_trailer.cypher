CALL apoc.load.jsonArray('file:///node_content_trailer.json.gz')
YIELD value
WITH value
CREATE (n:OMDB_CONTENT_TRAILER {
    content_id:toInteger(value.content_id),
    trailer_id:toInteger(value.trailer_id),
    language_iso_639_1: value.language_iso_639_1,
    source:value.source,
    key:value.key
});