@interface KTFlags
- (BOOL)_onqueueContains:(id)contains;
- (KTFlags)initWithQueue:(id)queue flags:(id)flags;
- (id)conditionForFlag:(id)flag;
- (id)contentsAsString;
- (id)description;
- (id)dumpFlags;
- (void)_onqueueRemoveFlag:(id)flag;
- (void)_onqueueSetFlag:(id)flag;
- (void)setFlag:(id)flag;
@end

@implementation KTFlags

- (KTFlags)initWithQueue:(id)queue flags:(id)flags
{
  queueCopy = queue;
  flagsCopy = flags;
  v29.receiver = self;
  v29.super_class = KTFlags;
  v9 = [(KTFlags *)&v29 init];
  v10 = v9;
  if (v9)
  {
    v24 = queueCopy;
    objc_storeStrong(&v9->_queue, queue);
    v11 = +[NSMutableSet set];
    flags = v10->_flags;
    v10->_flags = v11;

    v13 = objc_alloc_init(NSMutableDictionary);
    flagConditions = v10->_flagConditions;
    v10->_flagConditions = v13;

    objc_storeStrong(&v10->_allowableFlags, flags);
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v15 = flagsCopy;
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
          flagConditions = [(KTFlags *)v10 flagConditions];
          [flagConditions setObject:v21 forKeyedSubscript:v20];

          v19 = v19 + 1;
        }

        while (v17 != v19);
        v17 = [v15 countByEnumeratingWithState:&v25 objects:v30 count:16];
      }

      while (v17);
    }

    queueCopy = v24;
  }

  return v10;
}

- (id)description
{
  contentsAsString = [(KTFlags *)self contentsAsString];
  v3 = [NSString stringWithFormat:@"<KTFlags: %@>", contentsAsString];

  return v3;
}

- (id)contentsAsString
{
  flags = [(KTFlags *)self flags];
  v4 = [flags count];

  if (v4)
  {
    flags2 = [(KTFlags *)self flags];
    allObjects = [flags2 allObjects];
    v7 = [allObjects componentsJoinedByString:{@", "}];
  }

  else
  {
    v7 = @"none";
  }

  return v7;
}

- (id)dumpFlags
{
  flags = [(KTFlags *)self flags];
  allObjects = [flags allObjects];

  return allObjects;
}

- (BOOL)_onqueueContains:(id)contains
{
  containsCopy = contains;
  queue = [(KTFlags *)self queue];
  dispatch_assert_queue_V2(queue);

  flags = [(KTFlags *)self flags];
  LOBYTE(queue) = [flags containsObject:containsCopy];

  return queue;
}

- (void)_onqueueSetFlag:(id)flag
{
  flagCopy = flag;
  queue = [(KTFlags *)self queue];
  dispatch_assert_queue_V2(queue);

  flags = [(KTFlags *)self flags];
  [flags addObject:flagCopy];
}

- (id)conditionForFlag:(id)flag
{
  flagCopy = flag;
  flagConditions = [(KTFlags *)self flagConditions];
  v6 = [flagConditions objectForKeyedSubscript:flagCopy];

  return v6;
}

- (void)setFlag:(id)flag
{
  flagCopy = flag;
  queue = [(KTFlags *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001B4C20;
  v7[3] = &unk_1003180E0;
  v7[4] = self;
  v8 = flagCopy;
  v6 = flagCopy;
  dispatch_sync(queue, v7);
}

- (void)_onqueueRemoveFlag:(id)flag
{
  flagCopy = flag;
  queue = [(KTFlags *)self queue];
  dispatch_assert_queue_V2(queue);

  allowableFlags = [(KTFlags *)self allowableFlags];
  v7 = [allowableFlags containsObject:flagCopy];

  if ((v7 & 1) == 0)
  {
    sub_10025B3E8(a2, self, flagCopy);
  }

  flags = [(KTFlags *)self flags];
  [flags removeObject:flagCopy];

  flagConditions = [(KTFlags *)self flagConditions];
  v10 = [flagConditions objectForKeyedSubscript:flagCopy];
  [v10 fulfill];

  v11 = objc_alloc_init(KTCondition);
  flagConditions2 = [(KTFlags *)self flagConditions];
  [flagConditions2 setObject:v11 forKeyedSubscript:flagCopy];
}

@end