CALL apoc.load.jsonArray('file:///node_content_alias.json.gz')
YIELD value
WITH value
CREATE (n:OMDB_CONTENT_ALIAS {
    name: value.name,
    official_translation:toBooleanOrNull(value.parent_id),
    language_iso_639_1: value.language_iso_639_1
});