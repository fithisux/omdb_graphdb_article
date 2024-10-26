match (n:OMDB_CONTENT)
SET n:$(toUpper(n.content_type));