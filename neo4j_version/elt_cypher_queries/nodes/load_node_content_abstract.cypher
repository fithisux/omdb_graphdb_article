CALL apoc.load.jsonArray('file:///node_content_abstract.json.gz')
YIELD value
WITH value
CREATE (n:OMDB_CONTENT_ABSTRACT {
    content_id:toInteger(value.content_id),
    abstract:value.abstract,
    lang:value.lang
});