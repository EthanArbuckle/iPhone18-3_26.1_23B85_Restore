@interface KTFlags
- (BOOL)_onqueueContains:(id)a3;
- (KTFlags)initWithQueue:(id)a3 flags:(id)a4;
- (id)conditionForFlag:(id)a3;
- (id)contentsAsString;
- (id)description;
- (id)dumpFlags;
- (void)_onqueueRemoveFlag:(id)a3;
- (void)_onqueueSetFlag:(id)a3;
- (void)setFlag:(id)a3;
@end

@implementation KTFlags

- (KTFlags)initWithQueue:(id)a3 flags:(id)a4
{
  v7 = a3;
  v8 = a4;
  v29.receiver = self;
  v29.super_class = KTFlags;
  v9 = [(KTFlags *)&v29 init];
  v10 = v9;
  if (v9)
  {
    v24 = v7;
    objc_storeStrong(&v9->_queue, a3);
    v11 = +[NSMutableSet set];
    flags = v10->_flags;
    v10->_flags = v11;

    v13 = objc_alloc_init(NSMutableDictionary);
    flagConditions = v10->_flagConditions;
    v10->_flagConditions = v13;

    objc_storeStrong(&v10->_allowableFlags, a4);
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v15 = v8;
    v16 = [v15 countByEnumeratingWithState:&v25 objects:v30 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v26;
      do
      {
        v19 = 0;
        do
        {
          if (*v26 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = *(*(&v25 + 1) + 8 * v19);
          v21 = objc_alloc_init(KTCondition);
          v22 = [(KTFlags *)v10 flagConditions];
          [v22 setObject:v21 forKeyedSubscript:v20];

          v19 = v19 + 1;
        }

        while (v17 != v19);
        v17 = [v15 countByEnumeratingWithState:&v25 objects:v30 count:16];
      }

      while (v17);
    }

    v7 = v24;
  }

  return v10;
}

- (id)description
{
  v2 = [(KTFlags *)self contentsAsString];
  v3 = [NSString stringWithFormat:@"<KTFlags: %@>", v2];

  return v3;
}

- (id)contentsAsString
{
  v3 = [(KTFlags *)self flags];
  v4 = [v3 count];

  if (v4)
  {
    v5 = [(KTFlags *)self flags];
    v6 = [v5 allObjects];
    v7 = [v6 componentsJoinedByString:{@", "}];
  }

  else
  {
    v7 = @"none";
  }

  return v7;
}

- (id)dumpFlags
{
  v2 = [(KTFlags *)self flags];
  v3 = [v2 allObjects];

  return v3;
}

- (BOOL)_onqueueContains:(id)a3
{
  v4 = a3;
  v5 = [(KTFlags *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = [(KTFlags *)self flags];
  LOBYTE(v5) = [v6 containsObject:v4];

  return v5;
}

- (void)_onqueueSetFlag:(id)a3
{
  v4 = a3;
  v5 = [(KTFlags *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = [(KTFlags *)self flags];
  [v6 addObject:v4];
}

- (id)conditionForFlag:(id)a3
{
  v4 = a3;
  v5 = [(KTFlags *)self flagConditions];
  v6 = [v5 objectForKeyedSubscript:v4];

  return v6;
}

- (void)setFlag:(id)a3
{
  v4 = a3;
  v5 = [(KTFlags *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100017158;
  v7[3] = &unk_100094F80;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(v5, v7);
}

- (void)_onqueueRemoveFlag:(id)a3
{
  v4 = a3;
  v5 = [(KTFlags *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = [(KTFlags *)self flags];
  [v6 removeObject:v4];

  v7 = [(KTFlags *)self flagConditions];
  v8 = [v7 objectForKeyedSubscript:v4];
  [v8 fulfill];

  v10 = objc_alloc_init(KTCondition);
  v9 = [(KTFlags *)self flagConditions];
  [v9 setObject:v10 forKeyedSubscript:v4];
}

@end