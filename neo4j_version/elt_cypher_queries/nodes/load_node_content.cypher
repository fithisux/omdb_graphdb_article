CALL apoc.load.jsonArray('file:///gold_normalized_graph_node_content.json.gz')
YIELD value
WITH value
CREATE (n:OMDB_CONTENT {
    content_id:toInteger(value.content_id),
    name:value.name,
    date:case value.date is null when true then null else datetime.fromepoch(value.date/1000, value.date%1000) end,
    content_type:value.content_type,
    runtime:toIntegerOrNull(value.runtime),
    revenue:toIntegerOrNull(value.revenue),
    budget:toIntegerOrNull(value.budget),
    homepage:value.homepage,
    vote_average: toFloatOrNull(value.vote_average),
    votes_count: toIntegerOrNull(value.votes_count),
    last_update:case value.last_update is null when true then null else datetime.fromepoch(value.last_update/1000, value.last_update%1000) end,
    countries:toStringList(value.countries)
});