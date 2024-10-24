CALL apoc.load.jsonArray('file:///gold_normalized_graph_node_person.json.gz')
YIELD value
WITH value
CREATE (n:OMDB_PERSON {
    person_id:toInteger(value.person_id),
    name:value.name,
    birthday:case value.birthday = 'None' when true then null else date(value.birthday) end,
    deathday:case value.deathday = 'None' when true then null else date(value.deathday) end,
    gender: toString(value.gender),
    aliases: toStringList(value.aliases)
});