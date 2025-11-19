@interface OctagonFlags
- (BOOL)_onqueueContains:(id)a3;
- (OctagonFlags)initWithQueue:(id)a3 flags:(id)a4;
- (id)conditionForFlag:(id)a3;
- (id)conditionForFlagIfPresent:(id)a3;
- (id)contentsAsString;
- (id)description;
- (id)dumpFlags;
- (void)_onqueueRemoveFlag:(id)a3;
- (void)_onqueueSetFlag:(id)a3;
- (void)setFlag:(id)a3;
@end

@implementation OctagonFlags

- (void)_onqueueRemoveFlag:(id)a3
{
  v14 = a3;
  v5 = [(OctagonFlags *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = [(OctagonFlags *)self allowableFlags];
  v7 = [v6 containsObject:v14];

  if ((v7 & 1) == 0)
  {
    v13 = +[NSAssertionHandler currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"OctagonFlags.m" lineNumber:85 description:{@"state machine tried to handle unknown flag %@", v14}];
  }

  v8 = [(OctagonFlags *)self flags];
  [v8 removeObject:v14];

  v9 = [(OctagonFlags *)self flagConditions];
  v10 = [v9 objectForKeyedSubscript:v14];
  [v10 fulfill];

  v11 = objc_alloc_init(CKKSCondition);
  v12 = [(OctagonFlags *)self flagConditions];
  [v12 setObject:v11 forKeyedSubscript:v14];
}

- (void)setFlag:(id)a3
{
  v4 = a3;
  v5 = [(OctagonFlags *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100108BD4;
  v7[3] = &unk_100343E38;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(v5, v7);
}

- (id)conditionForFlagIfPresent:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_100108D24;
  v16 = sub_100108D34;
  v17 = 0;
  v5 = [(OctagonFlags *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100108D3C;
  block[3] = &unk_100344920;
  block[4] = self;
  v10 = v4;
  v11 = &v12;
  v6 = v4;
  dispatch_sync(v5, block);

  v7 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v7;
}

- (id)conditionForFlag:(id)a3
{
  v4 = a3;
  v5 = [(OctagonFlags *)self flagConditions];
  v6 = [v5 objectForKeyedSubscript:v4];

  return v6;
}

- (void)_onqueueSetFlag:(id)a3
{
  v4 = a3;
  v5 = [(OctagonFlags *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = [(OctagonFlags *)self flags];
  [v6 addObject:v4];
}

- (BOOL)_onqueueContains:(id)a3
{
  v4 = a3;
  v5 = [(OctagonFlags *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = [(OctagonFlags *)self flags];
  LOBYTE(v5) = [v6 containsObject:v4];

  return v5;
}

- (id)dumpFlags
{
  v2 = [(OctagonFlags *)self flags];
  v3 = [v2 allObjects];

  return v3;
}

- (id)contentsAsString
{
  v3 = [(OctagonFlags *)self flags];
  v4 = [v3 count];

  if (v4)
  {
    v5 = [(OctagonFlags *)self flags];
    v6 = [v5 allObjects];
    v7 = [v6 componentsJoinedByString:{@", "}];
  }

  else
  {
    v7 = @"none";
  }

  return v7;
}

- (id)description
{
  v2 = [(OctagonFlags *)self contentsAsString];
  v3 = [NSString stringWithFormat:@"<OctagonFlags: %@>", v2];

  return v3;
}

- (OctagonFlags)initWithQueue:(id)a3 flags:(id)a4
{
  v7 = a3;
  v8 = a4;
  v29.receiver = self;
  v29.super_class = OctagonFlags;
  v9 = [(OctagonFlags *)&v29 init];
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
          v21 = objc_alloc_init(CKKSCondition);
          v22 = [(OctagonFlags *)v10 flagConditions];
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

@end