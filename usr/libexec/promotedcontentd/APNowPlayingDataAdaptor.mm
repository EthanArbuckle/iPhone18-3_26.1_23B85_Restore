@interface APNowPlayingDataAdaptor
- (BOOL)_validateParameters:(id *)parameters;
- (id)_biomeStream;
- (id)calculateResultFromEvents;
- (void)_incrementCount:(id)count forKey:(id)key;
- (void)eventReceived:(id)received;
@end

@implementation APNowPlayingDataAdaptor

- (BOOL)_validateParameters:(id *)parameters
{
  v22.receiver = self;
  v22.super_class = APNowPlayingDataAdaptor;
  if (![(APBiomeDataAdaptor *)&v22 _validateParameters:?])
  {
    return 0;
  }

  parameters = [(APDataAdaptor *)self parameters];
  v8 = [parameters objectForKeyedSubscript:@"artist"];
  v9 = [(APDataAdaptor *)self _checkClassType:v8 name:@"artist" expectedClass:objc_opt_class() error:parameters];
  if ((v9 & 1) == 0)
  {
    parameters2 = [(APDataAdaptor *)self parameters];
    v4 = [parameters2 objectForKeyedSubscript:@"genre"];
    if (![(APDataAdaptor *)self _checkClassType:v4 name:@"genre" expectedClass:objc_opt_class() error:parameters])
    {

      v13 = 0;
      goto LABEL_10;
    }
  }

  parameters3 = [(APDataAdaptor *)self parameters];
  v11 = [parameters3 objectForKeyedSubscript:@"minCount"];
  v12 = [(APDataAdaptor *)self _checkClassType:v11 name:@"minCount" expectedClass:objc_opt_class() error:parameters];

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
    parameters4 = [(APDataAdaptor *)self parameters];
    v15 = [parameters4 objectForKeyedSubscript:@"artist"];
    [(APNowPlayingDataAdaptor *)self setArtist:v15];

    parameters5 = [(APDataAdaptor *)self parameters];
    v17 = [parameters5 objectForKeyedSubscript:@"genre"];
    [(APNowPlayingDataAdaptor *)self setGenre:v17];

    parameters6 = [(APDataAdaptor *)self parameters];
    v19 = [parameters6 objectForKeyedSubscript:@"minCount"];
    [(APNowPlayingDataAdaptor *)self setMinCount:v19];

    v20 = +[NSMutableDictionary dictionary];
    [(APNowPlayingDataAdaptor *)self setFoundArtists:v20];

    parameters = +[NSMutableDictionary dictionary];
    [(APNowPlayingDataAdaptor *)self setFoundGenres:parameters];
    v13 = 1;
LABEL_10:

    return v13;
  }

  return 0;
}

- (id)_biomeStream
{
  v2 = BiomeLibrary();
  media = [v2 Media];
  nowPlaying = [media NowPlaying];

  return nowPlaying;
}

- (id)calculateResultFromEvents
{
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  foundArtists = [(APNowPlayingDataAdaptor *)self foundArtists];
  allValues = [foundArtists allValues];

  v5 = [allValues countByEnumeratingWithState:&v27 objects:v32 count:16];
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
          objc_enumerationMutation(allValues);
        }

        intValue = [*(*(&v27 + 1) + 8 * i) intValue];
        minCount = [(APNowPlayingDataAdaptor *)self minCount];
        v7 |= intValue > [minCount intValue];
      }

      v6 = [allValues countByEnumeratingWithState:&v27 objects:v32 count:16];
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
  foundGenres = [(APNowPlayingDataAdaptor *)self foundGenres];
  allValues2 = [foundGenres allValues];

  v15 = [allValues2 countByEnumeratingWithState:&v23 objects:v31 count:16];
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
          objc_enumerationMutation(allValues2);
        }

        intValue2 = [*(*(&v23 + 1) + 8 * j) intValue];
        minCount2 = [(APNowPlayingDataAdaptor *)self minCount];
        v12 |= intValue2 > [minCount2 intValue];
      }

      v16 = [allValues2 countByEnumeratingWithState:&v23 objects:v31 count:16];
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

- (void)eventReceived:(id)received
{
  receivedCopy = received;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || ([receivedCopy eventBody], v5 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v5, (isKindOfClass))
  {
    v7 = receivedCopy;
    eventBody = [v7 eventBody];
    artist = [eventBody artist];
    artist2 = [(APNowPlayingDataAdaptor *)self artist];
    v11 = [artist isEqualToString:artist2];

    if (v11)
    {
      foundArtists = [(APNowPlayingDataAdaptor *)self foundArtists];
      artist3 = [(APNowPlayingDataAdaptor *)self artist];
      [(APNowPlayingDataAdaptor *)self _incrementCount:foundArtists forKey:artist3];
    }

    eventBody2 = [v7 eventBody];
    genre = [eventBody2 genre];
    genre2 = [(APNowPlayingDataAdaptor *)self genre];
    v17 = [genre isEqualToString:genre2];

    if (v17)
    {
      foundGenres = [(APNowPlayingDataAdaptor *)self foundGenres];
      genre3 = [(APNowPlayingDataAdaptor *)self genre];
      [(APNowPlayingDataAdaptor *)self _incrementCount:foundGenres forKey:genre3];
    }
  }

  else
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1002159E4;
    block[3] = &unk_1004790A8;
    v21 = receivedCopy;
    if (qword_1004DF5C8 != -1)
    {
      dispatch_once(&qword_1004DF5C8, block);
    }
  }
}

- (void)_incrementCount:(id)count forKey:(id)key
{
  countCopy = count;
  keyCopy = key;
  v6 = [countCopy objectForKeyedSubscript:keyCopy];
  if (!v6)
  {
    v6 = [NSNumber numberWithInt:0];
    [countCopy setObject:v6 forKey:keyCopy];
  }

  v7 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v6 intValue] + 1);

  [countCopy setObject:v7 forKey:keyCopy];
}

@end