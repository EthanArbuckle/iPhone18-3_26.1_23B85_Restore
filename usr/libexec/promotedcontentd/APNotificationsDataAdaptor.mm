@interface APNotificationsDataAdaptor
- (BOOL)_validateParameters:(id *)a3;
- (id)_biomeStream;
- (id)calculateResultFromEvents;
- (void)_incrementBundleIDCount:(id)a3;
- (void)eventReceived:(id)a3;
@end

@implementation APNotificationsDataAdaptor

- (BOOL)_validateParameters:(id *)a3
{
  v15.receiver = self;
  v15.super_class = APNotificationsDataAdaptor;
  if ([(APBiomeDataAdaptor *)&v15 _validateParameters:?])
  {
    v5 = [(APDataAdaptor *)self parameters];
    v6 = [v5 objectForKeyedSubscript:@"bundleIDs"];
    v7 = [(APDataAdaptor *)self _requireClassType:v6 name:@"bundleIDs" expectedClass:objc_opt_class() error:a3];
    if (!v7)
    {

      goto LABEL_7;
    }

    v8 = [(APDataAdaptor *)self parameters];
    v9 = [v8 objectForKeyedSubscript:@"minCount"];
    v10 = [(APDataAdaptor *)self _checkClassType:v9 name:@"minCount" expectedClass:objc_opt_class() error:a3];

    if (v10)
    {
      v11 = [(APDataAdaptor *)self parameters];
      v12 = [v11 objectForKeyedSubscript:@"bundleIDs"];
      v13 = [NSSet setWithArray:v12];
      [(APNotificationsDataAdaptor *)self setBundleIDs:v13];

      v5 = +[NSMutableDictionary dictionary];
      [(APNotificationsDataAdaptor *)self setFoundBundleIDs:v5];
LABEL_7:

      return v7;
    }
  }

  return 0;
}

- (id)_biomeStream
{
  v2 = BiomeLibrary();
  v3 = [v2 Notification];
  v4 = [v3 Usage];

  return v4;
}

- (id)calculateResultFromEvents
{
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v3 = [(APNotificationsDataAdaptor *)self foundBundleIDs];
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
        v11 = [(APNotificationsDataAdaptor *)self minCount];
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
    v8 = [(APNotificationsDataAdaptor *)self bundleIDs];
    v9 = [v7 eventBody];
    v10 = [v9 bundleID];
    v11 = [v8 containsObject:v10];

    if (v11)
    {
      v12 = [v7 eventBody];
      v13 = [v12 bundleID];
      [(APNotificationsDataAdaptor *)self _incrementBundleIDCount:v13];
    }
  }

  else
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10021A604;
    block[3] = &unk_1004790A8;
    v15 = v4;
    if (qword_1004DF638 != -1)
    {
      dispatch_once(&qword_1004DF638, block);
    }
  }
}

- (void)_incrementBundleIDCount:(id)a3
{
  v9 = a3;
  v4 = [(APNotificationsDataAdaptor *)self foundBundleIDs];
  v5 = [v4 objectForKeyedSubscript:v9];

  if (!v5)
  {
    v5 = [NSNumber numberWithInt:0];
    v6 = [(APNotificationsDataAdaptor *)self foundBundleIDs];
    [v6 setObject:v5 forKey:v9];
  }

  v7 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v5 intValue] + 1);

  v8 = [(APNotificationsDataAdaptor *)self foundBundleIDs];
  [v8 setObject:v7 forKey:v9];
}

@end