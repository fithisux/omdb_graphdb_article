CALL apoc.load.jsonArray('file:///node_category.json.gz')
YIELD value
WITH value
CREATE (n:OMDB_CATEGORY {
    category_id:toInteger(value.category_id),
    parent_id:toInteger(value.parent_id),
    root_id:toInteger(value.root_id)
});