@interface CKKSListenerCollection
- (CKKSListenerCollection)initWithName:(id)a3;
- (id)description;
- (void)iterateListeners:(id)a3;
- (void)registerListener:(id)a3;
@end

@implementation CKKSListenerCollection

- (void)iterateListeners:(id)a3
{
  v4 = a3;
  v5 = [(CKKSListenerCollection *)self listeners];
  objc_sync_enter(v5);
  v6 = [(CKKSListenerCollection *)self listeners];
  v7 = [v6 keyEnumerator];

  for (i = 0; ; i = v9)
  {
    v9 = [v7 nextObject];

    if (!v9)
    {
      break;
    }

    v10 = [(CKKSListenerCollection *)self listeners];
    v11 = [v10 objectForKey:v9];

    objc_initWeak(&location, v11);
    if (v11)
    {
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1000045F8;
      block[3] = &unk_10000C5B0;
      objc_copyWeak(&v14, &location);
      v13 = v4;
      dispatch_async(v9, block);

      objc_destroyWeak(&v14);
    }

    objc_destroyWeak(&location);
  }

  objc_sync_exit(v5);
}

- (void)registerListener:(id)a3
{
  v16 = a3;
  v4 = [(CKKSListenerCollection *)self listeners];
  objc_sync_enter(v4);
  v5 = [(CKKSListenerCollection *)self listeners];
  v6 = [v5 objectEnumerator];

  v7 = 0;
  v8 = 0;
  while (1)
  {
    v9 = [v6 nextObject];

    if (!v9)
    {
      break;
    }

    v8 |= v9 == v16;
    v7 = v9;
  }

  if (!((v16 == 0) | v8 & 1))
  {
    v10 = [(CKKSListenerCollection *)self name];
    v11 = [NSString stringWithFormat:@"%@-%@", v10, v16];

    v12 = [v11 UTF8String];
    v13 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v14 = dispatch_queue_create(v12, v13);

    v15 = [(CKKSListenerCollection *)self listeners];
    [v15 setObject:v16 forKey:v14];
  }

  objc_sync_exit(v4);
}

- (id)description
{
  v3 = [(CKKSListenerCollection *)self listeners];
  objc_sync_enter(v3);
  v4 = [(CKKSListenerCollection *)self name];
  v5 = [(CKKSListenerCollection *)self listeners];
  v6 = [v5 objectEnumerator];
  v7 = [v6 allObjects];
  v8 = [NSString stringWithFormat:@"<CKKSListenerCollection(%@): %@>", v4, v7];

  objc_sync_exit(v3);

  return v8;
}

- (CKKSListenerCollection)initWithName:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = CKKSListenerCollection;
  v6 = [(CKKSListenerCollection *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_name, a3);
    v8 = +[NSMapTable strongToWeakObjectsMapTable];
    listeners = v7->_listeners;
    v7->_listeners = v8;
  }

  return v7;
}

@end