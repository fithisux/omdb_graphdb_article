CALL apoc.load.jsonArray('file:///node_content_aliases_iso.json.gz')
YIELD value
WITH value
CREATE (n:OMDB_CONTENT_ALIASES_ISO {
    content_id:toInteger(value.content_id),
    name: value.name,
    official_translation:toBooleanOrNull(value.parent_id),
    language_iso_639_1: value.language_iso_639_1
});