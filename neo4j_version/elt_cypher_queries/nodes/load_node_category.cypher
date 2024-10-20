CALL apoc.load.jsonArray('file:///node_category.json.gz')
YIELD value
WITH value
CREATE (n:OMDB_CATEGORY {
    category_id:toInteger(value.category_id)
});