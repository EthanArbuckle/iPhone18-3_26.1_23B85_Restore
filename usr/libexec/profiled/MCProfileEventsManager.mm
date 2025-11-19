@interface MCProfileEventsManager
- (MCProfileEventsManager)init;
- (MCProfileEventsManager)initWithDataProvider:(id)a3;
- (id)_profileEvents;
- (id)_profileEventsOnDisk;
- (id)_timestampFromEvent:(id)a3;
- (id)earlistProfileEventExpiry;
- (void)_saveProfileEvents:(id)a3;
- (void)addEventForProfile:(id)a3 operation:(id)a4 source:(id)a5;
- (void)removeExpiredProfileEvents;
@end

@implementation MCProfileEventsManager

- (MCProfileEventsManager)init
{
  v3 = objc_opt_new();
  v4 = [(MCProfileEventsManager *)self initWithDataProvider:v3];

  return v4;
}

- (MCProfileEventsManager)initWithDataProvider:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = MCProfileEventsManager;
  v6 = [(MCProfileEventsManager *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_dataProvider, a3);
  }

  return v7;
}

- (id)earlistProfileEventExpiry
{
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v3 = [(MCProfileEventsManager *)self _profileEvents];
  v4 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v16;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = [(MCProfileEventsManager *)self _timestampFromEvent:*(*(&v15 + 1) + 8 * i)];
        v10 = v9;
        if (v9)
        {
          if (v6)
          {
            v11 = [v9 earlierDate:v6];

            if (v11 == v10)
            {
              v12 = v10;

              v6 = v12;
            }
          }

          else
          {
            v6 = v9;
          }
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  v13 = [v6 dateByAddingTimeInterval:{+[MCFeatureOverrides profileEventsExpirationInterval](MCFeatureOverrides, "profileEventsExpirationInterval")}];

  return v13;
}

- (void)addEventForProfile:(id)a3 operation:(id)a4 source:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = a3;
  v11 = [(MCProfileEventsManager *)self _profileEvents];
  if (v11)
  {
    v12 = [NSMutableArray arrayWithArray:v11];
  }

  else
  {
    v12 = objc_opt_new();
  }

  v13 = v12;
  v14 = [v10 loggingID];

  v15 = @"Unknown";
  v23 = v14;
  if (v9)
  {
    v15 = v9;
  }

  v21[0] = @"Process";
  v21[1] = @"Operation";
  v22[0] = v15;
  v22[1] = v8;
  v21[2] = @"Timestamp";
  v16 = [(MCProfileEventsManager *)self dataProvider];
  v17 = [v16 currentTime];
  v22[2] = v17;
  v18 = [NSDictionary dictionaryWithObjects:v22 forKeys:v21 count:3];
  v24 = v18;
  v19 = [NSDictionary dictionaryWithObjects:&v24 forKeys:&v23 count:1];

  [v13 insertObject:v19 atIndex:0];
  v20 = +[MCFeatureOverrides profileEventsMaxLength];
  if ([v13 count] > v20)
  {
    [v13 removeObjectsInRange:{v20, objc_msgSend(v13, "count") - v20}];
  }

  [(MCProfileEventsManager *)self _saveProfileEvents:v13];
}

- (void)removeExpiredProfileEvents
{
  v3 = [(MCProfileEventsManager *)self _profileEvents];
  v4 = v3;
  if (v3 && [v3 count])
  {
    v17 = objc_opt_new();
    v5 = [(MCProfileEventsManager *)self dataProvider];
    v6 = [v5 currentTime];

    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v16 = v4;
    v7 = v4;
    v8 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v19;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v19 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v18 + 1) + 8 * i);
          v13 = [(MCProfileEventsManager *)self _timestampFromEvent:v12, v16];
          if (v13)
          {
            v14 = [v13 dateByAddingTimeInterval:{+[MCFeatureOverrides profileEventsExpirationInterval](MCFeatureOverrides, "profileEventsExpirationInterval")}];
            v15 = [v6 earlierDate:v14];

            if (v15 == v6)
            {
              [v17 addObject:v12];
            }
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v9);
    }

    [(MCProfileEventsManager *)self _saveProfileEvents:v17];
    v4 = v16;
  }
}

- (id)_profileEventsOnDisk
{
  v2 = [(MCProfileEventsManager *)self dataProvider];
  v3 = [v2 profileEventsFilePath];
  v4 = [NSData MCDataFromFile:v3];

  if (v4)
  {
    v5 = [NSPropertyListSerialization MCSafePropertyListWithData:v4 options:0 format:0 error:0];
  }

  else
  {
    v5 = 0;
  }

  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = &__NSDictionary0__struct;
  }

  v7 = v6;

  return v6;
}

- (id)_profileEvents
{
  v2 = [(MCProfileEventsManager *)self _profileEventsOnDisk];
  v3 = [v2 objectForKeyedSubscript:@"ProfileEvents"];

  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_timestampFromEvent:(id)a3
{
  v3 = [a3 allValues];
  v4 = [v3 firstObject];

  v5 = [v4 objectForKeyedSubscript:@"Timestamp"];

  return v5;
}

- (void)_saveProfileEvents:(id)a3
{
  v8 = @"ProfileEvents";
  v9 = a3;
  v4 = a3;
  v5 = [NSDictionary dictionaryWithObjects:&v9 forKeys:&v8 count:1];

  v6 = [(MCProfileEventsManager *)self dataProvider];
  v7 = [v6 profileEventsFilePath];
  [v5 MCWriteToBinaryFile:v7];
}

@end