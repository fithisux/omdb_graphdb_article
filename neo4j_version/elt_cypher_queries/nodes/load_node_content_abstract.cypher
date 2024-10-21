CALL apoc.load.jsonArray('file:///node_content_abstract.json.gz')
YIELD value
WITH value
CREATE (n:OMDB_CONTENT_ABSTRACT {
    abstract:value.abstract,
    lang:value.lang
});