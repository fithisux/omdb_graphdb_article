CALL apoc.load.jsonArray('file:///node_character.json.gz')
YIELD value
WITH value
CREATE (n:OMDB_CHARACTER {
    id:toInteger(value.id),
    name: value.name
});