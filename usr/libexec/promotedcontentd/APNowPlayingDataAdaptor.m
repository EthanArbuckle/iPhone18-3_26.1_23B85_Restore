@interface APNowPlayingDataAdaptor
- (BOOL)_validateParameters:(id *)a3;
- (id)_biomeStream;
- (id)calculateResultFromEvents;
- (void)_incrementCount:(id)a3 forKey:(id)a4;
- (void)eventReceived:(id)a3;
@end

@implementation APNowPlayingDataAdaptor

- (BOOL)_validateParameters:(id *)a3
{
  v22.receiver = self;
  v22.super_class = APNowPlayingDataAdaptor;
  if (![(APBiomeDataAdaptor *)&v22 _validateParameters:?])
  {
    return 0;
  }

  v7 = [(APDataAdaptor *)self parameters];
  v8 = [v7 objectForKeyedSubscript:@"artist"];
  v9 = [(APDataAdaptor *)self _checkClassType:v8 name:@"artist" expectedClass:objc_opt_class() error:a3];
  if ((v9 & 1) == 0)
  {
    v3 = [(APDataAdaptor *)self parameters];
    v4 = [v3 objectForKeyedSubscript:@"genre"];
    if (![(APDataAdaptor *)self _checkClassType:v4 name:@"genre" expectedClass:objc_opt_class() error:a3])
    {

      v13 = 0;
      goto LABEL_10;
    }
  }

  v10 = [(APDataAdaptor *)self parameters];
  v11 = [v10 objectForKeyedSubscript:@"minCount"];
  v12 = [(APDataAdaptor *)self _checkClassType:v11 name:@"minCount" expectedClass:objc_opt_class() error:a3];

  if ((v9 & 1) == 0)
  {

    if ((v12 & 1) == 0)
    {
      return 0;
    }

    goto LABEL_8;
  }

  if (v12)
  {
LABEL_8:
    v14 = [(APDataAdaptor *)self parameters];
    v15 = [v14 objectForKeyedSubscript:@"artist"];
    [(APNowPlayingDataAdaptor *)self setArtist:v15];

    v16 = [(APDataAdaptor *)self parameters];
    v17 = [v16 objectForKeyedSubscript:@"genre"];
    [(APNowPlayingDataAdaptor *)self setGenre:v17];

    v18 = [(APDataAdaptor *)self parameters];
    v19 = [v18 objectForKeyedSubscript:@"minCount"];
    [(APNowPlayingDataAdaptor *)self setMinCount:v19];

    v20 = +[NSMutableDictionary dictionary];
    [(APNowPlayingDataAdaptor *)self setFoundArtists:v20];

    v7 = +[NSMutableDictionary dictionary];
    [(APNowPlayingDataAdaptor *)self setFoundGenres:v7];
    v13 = 1;
LABEL_10:

    return v13;
  }

  return 0;
}

- (id)_biomeStream
{
  v2 = BiomeLibrary();
  v3 = [v2 Media];
  v4 = [v3 NowPlaying];

  return v4;
}

- (id)calculateResultFromEvents
{
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v3 = [(APNowPlayingDataAdaptor *)self foundArtists];
  v4 = [v3 allValues];

  v5 = [v4 countByEnumeratingWithState:&v27 objects:v32 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v28;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v28 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v10 = [*(*(&v27 + 1) + 8 * i) intValue];
        v11 = [(APNowPlayingDataAdaptor *)self minCount];
        v7 |= v10 > [v11 intValue];
      }

      v6 = [v4 countByEnumeratingWithState:&v27 objects:v32 count:16];
    }

    while (v6);

    if (v7)
    {
      v12 = 1;
      goto LABEL_21;
    }
  }

  else
  {
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v13 = [(APNowPlayingDataAdaptor *)self foundGenres];
  v14 = [v13 allValues];

  v15 = [v14 countByEnumeratingWithState:&v23 objects:v31 count:16];
  if (v15)
  {
    v16 = v15;
    v12 = 0;
    v17 = *v24;
    do
    {
      for (j = 0; j != v16; j = j + 1)
      {
        if (*v24 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = [*(*(&v23 + 1) + 8 * j) intValue];
        v20 = [(APNowPlayingDataAdaptor *)self minCount];
        v12 |= v19 > [v20 intValue];
      }

      v16 = [v14 countByEnumeratingWithState:&v23 objects:v31 count:16];
    }

    while (v16);
  }

  else
  {
    v12 = 0;
  }

LABEL_21:
  v21 = [NSNumber numberWithBool:v12 & 1];

  return v21;
}

- (void)eventReceived:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || ([v4 eventBody], v5 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v5, (isKindOfClass))
  {
    v7 = v4;
    v8 = [v7 eventBody];
    v9 = [v8 artist];
    v10 = [(APNowPlayingDataAdaptor *)self artist];
    v11 = [v9 isEqualToString:v10];

    if (v11)
    {
      v12 = [(APNowPlayingDataAdaptor *)self foundArtists];
      v13 = [(APNowPlayingDataAdaptor *)self artist];
      [(APNowPlayingDataAdaptor *)self _incrementCount:v12 forKey:v13];
    }

    v14 = [v7 eventBody];
    v15 = [v14 genre];
    v16 = [(APNowPlayingDataAdaptor *)self genre];
    v17 = [v15 isEqualToString:v16];

    if (v17)
    {
      v18 = [(APNowPlayingDataAdaptor *)self foundGenres];
      v19 = [(APNowPlayingDataAdaptor *)self genre];
      [(APNowPlayingDataAdaptor *)self _incrementCount:v18 forKey:v19];
    }
  }

  else
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1002159E4;
    block[3] = &unk_1004790A8;
    v21 = v4;
    if (qword_1004DF5C8 != -1)
    {
      dispatch_once(&qword_1004DF5C8, block);
    }
  }
}

- (void)_incrementCount:(id)a3 forKey:(id)a4
{
  v8 = a3;
  v5 = a4;
  v6 = [v8 objectForKeyedSubscript:v5];
  if (!v6)
  {
    v6 = [NSNumber numberWithInt:0];
    [v8 setObject:v6 forKey:v5];
  }

  v7 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v6 intValue] + 1);

  [v8 setObject:v7 forKey:v5];
}

@end