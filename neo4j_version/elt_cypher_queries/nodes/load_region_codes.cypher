CALL apoc.load.jsonArray('file:///region_codes.json.gz')
YIELD value
WITH value
CREATE (n:OMDB_REGION_CODE {
    name:value.name,
    alpha2:value.alpha2
});