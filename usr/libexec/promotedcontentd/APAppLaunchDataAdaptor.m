@interface APAppLaunchDataAdaptor
- (BOOL)_validateParameters:(id *)a3;
- (id)_biomeStream;
- (id)calculateResultFromEvents;
- (void)_incrementBundleIDCount:(id)a3;
- (void)eventReceived:(id)a3;
@end

@implementation APAppLaunchDataAdaptor

- (BOOL)_validateParameters:(id *)a3
{
  v16.receiver = self;
  v16.super_class = APAppLaunchDataAdaptor;
  if (![(APBiomeDataAdaptor *)&v16 _validateParameters:?])
  {
    goto LABEL_6;
  }

  v5 = [(APDataAdaptor *)self parameters];
  v6 = [v5 objectForKeyedSubscript:@"bundleIDs"];
  v7 = [(APDataAdaptor *)self _requireClassType:v6 name:@"bundleIDs" expectedClass:objc_opt_class() error:a3];
  if (v7)
  {
    v8 = [(APDataAdaptor *)self parameters];
    v9 = [v8 objectForKeyedSubscript:@"minCount"];
    v10 = [(APDataAdaptor *)self _checkClassType:v9 name:@"minCount" expectedClass:objc_opt_class() error:a3];

    if (v10)
    {
      v11 = [(APDataAdaptor *)self parameters];
      v12 = [v11 objectForKeyedSubscript:@"bundleIDs"];
      v13 = [NSSet setWithArray:v12];
      [(APAppLaunchDataAdaptor *)self setBundleIDs:v13];

      v14 = +[NSMutableDictionary dictionary];
      [(APAppLaunchDataAdaptor *)self setFoundBundleIDs:v14];

      v5 = [(APDataAdaptor *)self parameters];
      v6 = [v5 objectForKeyedSubscript:@"minCount"];
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
  v4 = [v3 InFocus];

  return v4;
}

- (id)calculateResultFromEvents
{
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v3 = [(APAppLaunchDataAdaptor *)self foundBundleIDs];
  v4 = [v3 allValues];

  v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(v4);
        }

        v10 = [*(*(&v14 + 1) + 8 * i) intValue];
        v11 = [(APAppLaunchDataAdaptor *)self minCount];
        v7 |= v10 > [v11 intValue];
      }

      v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
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

- (void)eventReceived:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || ([v4 eventBody], v5 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v5, (isKindOfClass))
  {
    v7 = v4;
    v8 = [(APAppLaunchDataAdaptor *)self bundleIDs];
    v9 = [v7 eventBody];
    v10 = [v9 bundleID];
    v11 = [v8 containsObject:v10];

    if (v11)
    {
      v12 = [v7 eventBody];
      v13 = [v12 starting];

      if (v13)
      {
        v14 = [v7 eventBody];
        v15 = [v14 bundleID];
        [(APAppLaunchDataAdaptor *)self _incrementBundleIDCount:v15];
      }
    }
  }

  else
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100214D58;
    block[3] = &unk_1004790A8;
    v17 = v4;
    if (qword_1004DF5C0 != -1)
    {
      dispatch_once(&qword_1004DF5C0, block);
    }
  }
}

- (void)_incrementBundleIDCount:(id)a3
{
  v9 = a3;
  v4 = [(APAppLaunchDataAdaptor *)self foundBundleIDs];
  v5 = [v4 objectForKeyedSubscript:v9];

  if (!v5)
  {
    v5 = [NSNumber numberWithInt:0];
    v6 = [(APAppLaunchDataAdaptor *)self foundBundleIDs];
    [v6 setObject:v5 forKey:v9];
  }

  v7 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v5 intValue] + 1);

  v8 = [(APAppLaunchDataAdaptor *)self foundBundleIDs];
  [v8 setObject:v7 forKey:v9];
}

@end