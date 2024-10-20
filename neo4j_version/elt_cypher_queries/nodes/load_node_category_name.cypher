CALL apoc.load.jsonArray('file:///node_category_name.json.gz')
YIELD value
WITH value
CREATE (n:OMDB_CATEGORY_NAME {
    name:value.name,
    language_iso_639_1:value.language_iso_639_1
});