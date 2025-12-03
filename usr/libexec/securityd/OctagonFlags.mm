@interface OctagonFlags
- (BOOL)_onqueueContains:(id)contains;
- (OctagonFlags)initWithQueue:(id)queue flags:(id)flags;
- (id)conditionForFlag:(id)flag;
- (id)conditionForFlagIfPresent:(id)present;
- (id)contentsAsString;
- (id)description;
- (id)dumpFlags;
- (void)_onqueueRemoveFlag:(id)flag;
- (void)_onqueueSetFlag:(id)flag;
- (void)setFlag:(id)flag;
@end

@implementation OctagonFlags

- (void)_onqueueRemoveFlag:(id)flag
{
  flagCopy = flag;
  queue = [(OctagonFlags *)self queue];
  dispatch_assert_queue_V2(queue);

  allowableFlags = [(OctagonFlags *)self allowableFlags];
  v7 = [allowableFlags containsObject:flagCopy];

  if ((v7 & 1) == 0)
  {
    v13 = +[NSAssertionHandler currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"OctagonFlags.m" lineNumber:85 description:{@"state machine tried to handle unknown flag %@", flagCopy}];
  }

  flags = [(OctagonFlags *)self flags];
  [flags removeObject:flagCopy];

  flagConditions = [(OctagonFlags *)self flagConditions];
  v10 = [flagConditions objectForKeyedSubscript:flagCopy];
  [v10 fulfill];

  v11 = objc_alloc_init(CKKSCondition);
  flagConditions2 = [(OctagonFlags *)self flagConditions];
  [flagConditions2 setObject:v11 forKeyedSubscript:flagCopy];
}

- (void)setFlag:(id)flag
{
  flagCopy = flag;
  queue = [(OctagonFlags *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100108BD4;
  v7[3] = &unk_100343E38;
  v7[4] = self;
  v8 = flagCopy;
  v6 = flagCopy;
  dispatch_sync(queue, v7);
}

- (id)conditionForFlagIfPresent:(id)present
{
  presentCopy = present;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_100108D24;
  v16 = sub_100108D34;
  v17 = 0;
  queue = [(OctagonFlags *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100108D3C;
  block[3] = &unk_100344920;
  block[4] = self;
  v10 = presentCopy;
  v11 = &v12;
  v6 = presentCopy;
  dispatch_sync(queue, block);

  v7 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v7;
}

- (id)conditionForFlag:(id)flag
{
  flagCopy = flag;
  flagConditions = [(OctagonFlags *)self flagConditions];
  v6 = [flagConditions objectForKeyedSubscript:flagCopy];

  return v6;
}

- (void)_onqueueSetFlag:(id)flag
{
  flagCopy = flag;
  queue = [(OctagonFlags *)self queue];
  dispatch_assert_queue_V2(queue);

  flags = [(OctagonFlags *)self flags];
  [flags addObject:flagCopy];
}

- (BOOL)_onqueueContains:(id)contains
{
  containsCopy = contains;
  queue = [(OctagonFlags *)self queue];
  dispatch_assert_queue_V2(queue);

  flags = [(OctagonFlags *)self flags];
  LOBYTE(queue) = [flags containsObject:containsCopy];

  return queue;
}

- (id)dumpFlags
{
  flags = [(OctagonFlags *)self flags];
  allObjects = [flags allObjects];

  return allObjects;
}

- (id)contentsAsString
{
  flags = [(OctagonFlags *)self flags];
  v4 = [flags count];

  if (v4)
  {
    flags2 = [(OctagonFlags *)self flags];
    allObjects = [flags2 allObjects];
    v7 = [allObjects componentsJoinedByString:{@", "}];
  }

  else
  {
    v7 = @"none";
  }

  return v7;
}

- (id)description
{
  contentsAsString = [(OctagonFlags *)self contentsAsString];
  v3 = [NSString stringWithFormat:@"<OctagonFlags: %@>", contentsAsString];

  return v3;
}

- (OctagonFlags)initWithQueue:(id)queue flags:(id)flags
{
  queueCopy = queue;
  flagsCopy = flags;
  v29.receiver = self;
  v29.super_class = OctagonFlags;
  v9 = [(OctagonFlags *)&v29 init];
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
          v21 = objc_alloc_init(CKKSCondition);
          flagConditions = [(OctagonFlags *)v10 flagConditions];
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

@end