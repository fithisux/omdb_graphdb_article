CALL apoc.load.jsonArray('file:///node_content_episode.json.gz')
YIELD value
WITH value
CREATE (n:OMDB_EPISODE {
    id:toInteger(value.id),
    series_id:toIntegerOrNull(value.series_id),
    season_id:toIntegerOrNull(value.season_id)
});