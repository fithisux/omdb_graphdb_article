CALL apoc.load.jsonArray('file:///node_person_alias.json.gz')
YIELD value
WITH value
CREATE (n:OMDB_PERSON_ALIAS {
    person_id:toInteger(value.person_id),
    name:value.name
});