CALL apoc.load.jsonArray('file:///node_person_alias.json.gz')
YIELD value
WITH value
CREATE (n:OMDB_PERSON_ALIAS {
    name:value.name
});