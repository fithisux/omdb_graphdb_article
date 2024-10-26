CALL apoc.load.jsonArray('file:///gold_normalized_graph_node_image.json.gz')
YIELD value
WITH value
CREATE (n:OMDB_IMAGE {
    image_id:toInteger(value.image_id),
    object_id:toIntegerOrNull(value.object_id),
    object_type: value.object_type,
    image_version:toIntegerOrNull(value.image_version),
    license_id:toInteger(value.license_id),
    source: value.source,
    author: value.author
});