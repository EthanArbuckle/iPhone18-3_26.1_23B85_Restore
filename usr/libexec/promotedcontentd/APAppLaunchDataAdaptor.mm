@interface APAppLaunchDataAdaptor
- (BOOL)_validateParameters:(id *)parameters;
- (id)_biomeStream;
- (id)calculateResultFromEvents;
- (void)_incrementBundleIDCount:(id)count;
- (void)eventReceived:(id)received;
@end

@implementation APAppLaunchDataAdaptor

- (BOOL)_validateParameters:(id *)parameters
{
  v16.receiver = self;
  v16.super_class = APAppLaunchDataAdaptor;
  if (![(APBiomeDataAdaptor *)&v16 _validateParameters:?])
  {
    goto LABEL_6;
  }

  parameters = [(APDataAdaptor *)self parameters];
  v6 = [parameters objectForKeyedSubscript:@"bundleIDs"];
  v7 = [(APDataAdaptor *)self _requireClassType:v6 name:@"bundleIDs" expectedClass:objc_opt_class() error:parameters];
  if (v7)
  {
    parameters2 = [(APDataAdaptor *)self parameters];
    v9 = [parameters2 objectForKeyedSubscript:@"minCount"];
    v10 = [(APDataAdaptor *)self _checkClassType:v9 name:@"minCount" expectedClass:objc_opt_class() error:parameters];

    if (v10)
    {
      parameters3 = [(APDataAdaptor *)self parameters];
      v12 = [parameters3 objectForKeyedSubscript:@"bundleIDs"];
      v13 = [NSSet setWithArray:v12];
      [(APAppLaunchDataAdaptor *)self setBundleIDs:v13];

      v14 = +[NSMutableDictionary dictionary];
      [(APAppLaunchDataAdaptor *)self setFoundBundleIDs:v14];

      parameters = [(APDataAdaptor *)self parameters];
      v6 = [parameters objectForKeyedSubscript:@"minCount"];
      [(APAppLaunchDataAdaptor *)self setMinCount:v6];
      goto LABEL_5;
    }

LABEL_6:
    LOBYTE(v7) = 0;
    return v7;
  }

LABEL_5:

  return v7;
}

- (id)_biomeStream
{
  v2 = BiomeLibrary();
  v3 = [v2 App];
  inFocus = [v3 InFocus];

  return inFocus;
}

- (id)calculateResultFromEvents
{
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  foundBundleIDs = [(APAppLaunchDataAdaptor *)self foundBundleIDs];
  allValues = [foundBundleIDs allValues];

  v5 = [allValues countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v15;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(allValues);
        }

        intValue = [*(*(&v14 + 1) + 8 * i) intValue];
        minCount = [(APAppLaunchDataAdaptor *)self minCount];
        v7 |= intValue > [minCount intValue];
      }

      v6 = [allValues countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  else
  {
    v7 = 0;
  }

  v12 = [NSNumber numberWithBool:v7 & 1];

  return v12;
}

- (void)eventReceived:(id)received
{
  receivedCopy = received;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || ([receivedCopy eventBody], v5 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v5, (isKindOfClass))
  {
    v7 = receivedCopy;
    bundleIDs = [(APAppLaunchDataAdaptor *)self bundleIDs];
    eventBody = [v7 eventBody];
    bundleID = [eventBody bundleID];
    v11 = [bundleIDs containsObject:bundleID];

    if (v11)
    {
      eventBody2 = [v7 eventBody];
      starting = [eventBody2 starting];

      if (starting)
      {
        eventBody3 = [v7 eventBody];
        bundleID2 = [eventBody3 bundleID];
        [(APAppLaunchDataAdaptor *)self _incrementBundleIDCount:bundleID2];
      }
    }
  }

  else
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100214D58;
    block[3] = &unk_1004790A8;
    v17 = receivedCopy;
    if (qword_1004DF5C0 != -1)
    {
      dispatch_once(&qword_1004DF5C0, block);
    }
  }
}

- (void)_incrementBundleIDCount:(id)count
{
  countCopy = count;
  foundBundleIDs = [(APAppLaunchDataAdaptor *)self foundBundleIDs];
  v5 = [foundBundleIDs objectForKeyedSubscript:countCopy];

  if (!v5)
  {
    v5 = [NSNumber numberWithInt:0];
    foundBundleIDs2 = [(APAppLaunchDataAdaptor *)self foundBundleIDs];
    [foundBundleIDs2 setObject:v5 forKey:countCopy];
  }

  v7 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v5 intValue] + 1);

  foundBundleIDs3 = [(APAppLaunchDataAdaptor *)self foundBundleIDs];
  [foundBundleIDs3 setObject:v7 forKey:countCopy];
}

@end