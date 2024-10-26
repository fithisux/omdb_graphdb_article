CREATE REL TABLE OMDB_BUSINESS_CATEGORY_HAS_PARENT(FROM OMDB_BUSINESS_CATEGORY TO OMDB_BUSINESS_CATEGORY);
CREATE REL TABLE OMDB_BUSINESS_CATEGORY_HAS_ROOT(FROM OMDB_BUSINESS_CATEGORY TO OMDB_BUSINESS_CATEGORY);
CREATE REL TABLE OMDB_BUSINESS_EPISODE_HAS_CAST(FROM OMDB_BUSINESS_EPISODE TO OMDB_BUSINESS_CAST);
CREATE REL TABLE OMDB_BUSINESS_EPISODE_HAS_CATEGORY(FROM OMDB_BUSINESS_EPISODE TO OMDB_BUSINESS_CATEGORY);
CREATE REL TABLE OMDB_BUSINESS_EPISODE_HAS_KEYWORD(FROM OMDB_BUSINESS_EPISODE TO OMDB_BUSINESS_CATEGORY);
CREATE REL TABLE OMDB_BUSINESS_EPISODE_HAS_SEASON(FROM OMDB_BUSINESS_EPISODE TO OMDB_BUSINESS_SEASON);
CREATE REL TABLE OMDB_BUSINESS_EPISODE_HAS_SERIES(FROM OMDB_BUSINESS_EPISODE TO OMDB_BUSINESS_SERIES);
CREATE REL TABLE OMDB_BUSINESS_MOVIE_HAS_CAST(FROM OMDB_BUSINESS_MOVIE TO OMDB_BUSINESS_CAST);
CREATE REL TABLE OMDB_BUSINESS_MOVIE_HAS_CATEGORY(FROM OMDB_BUSINESS_MOVIE TO OMDB_BUSINESS_CATEGORY);
CREATE REL TABLE OMDB_BUSINESS_MOVIE_HAS_KEYWORD(FROM OMDB_BUSINESS_MOVIE TO OMDB_BUSINESS_CATEGORY);
CREATE REL TABLE OMDB_BUSINESS_MOVIE_HAS_MOVIESERIES(FROM OMDB_BUSINESS_MOVIE TO OMDB_BUSINESS_MOVIESERIES);
CREATE REL TABLE OMDB_BUSINESS_MOVIESERIES_HAS_CAST(FROM OMDB_BUSINESS_MOVIESERIES TO OMDB_BUSINESS_CAST);
CREATE REL TABLE OMDB_BUSINESS_MOVIESERIES_HAS_CATEGORY(FROM OMDB_BUSINESS_MOVIESERIES TO OMDB_BUSINESS_CATEGORY);
CREATE REL TABLE OMDB_BUSINESS_MOVIESERIES_HAS_KEYWORD(FROM OMDB_BUSINESS_MOVIESERIES TO OMDB_BUSINESS_CATEGORY);
CREATE REL TABLE OMDB_BUSINESS_PERSON_HAS_CAST(FROM OMDB_BUSINESS_PERSON TO OMDB_BUSINESS_CAST);
CREATE REL TABLE OMDB_BUSINESS_SEASON_HAS_CAST(FROM OMDB_BUSINESS_SEASON TO OMDB_BUSINESS_CAST);
CREATE REL TABLE OMDB_BUSINESS_SEASON_HAS_CATEGORY(FROM OMDB_BUSINESS_SEASON TO OMDB_BUSINESS_CATEGORY);
CREATE REL TABLE OMDB_BUSINESS_SEASON_HAS_KEYWORD(FROM OMDB_BUSINESS_SEASON TO OMDB_BUSINESS_CATEGORY);
CREATE REL TABLE OMDB_BUSINESS_SEASON_HAS_SERIES(FROM OMDB_BUSINESS_SEASON TO OMDB_BUSINESS_SERIES);
CREATE REL TABLE OMDB_BUSINESS_SERIES_HAS_CAST(FROM OMDB_BUSINESS_SERIES TO OMDB_BUSINESS_CAST);
CREATE REL TABLE OMDB_BUSINESS_SERIES_HAS_CATEGORY(FROM OMDB_BUSINESS_SERIES TO OMDB_BUSINESS_CATEGORY);
CREATE REL TABLE OMDB_BUSINESS_SERIES_HAS_KEYWORD(FROM OMDB_BUSINESS_SERIES TO OMDB_BUSINESS_CATEGORY);
CREATE REL TABLE OMDB_BUSINESS_SERIES_HAS_MOVIESERIES(FROM OMDB_BUSINESS_SERIES TO OMDB_BUSINESS_MOVIESERIES);