@interface CKKSListenerCollection
- (CKKSListenerCollection)initWithName:(id)name;
- (id)description;
- (void)iterateListeners:(id)listeners;
- (void)registerListener:(id)listener;
@end

@implementation CKKSListenerCollection

- (void)iterateListeners:(id)listeners
{
  listenersCopy = listeners;
  listeners = [(CKKSListenerCollection *)self listeners];
  objc_sync_enter(listeners);
  listeners2 = [(CKKSListenerCollection *)self listeners];
  keyEnumerator = [listeners2 keyEnumerator];

  for (i = 0; ; i = nextObject)
  {
    nextObject = [keyEnumerator nextObject];

    if (!nextObject)
    {
      break;
    }

    listeners3 = [(CKKSListenerCollection *)self listeners];
    v11 = [listeners3 objectForKey:nextObject];

    objc_initWeak(&location, v11);
    if (v11)
    {
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10016A530;
      block[3] = &unk_1003445C0;
      objc_copyWeak(&v14, &location);
      v13 = listenersCopy;
      dispatch_async(nextObject, block);

      objc_destroyWeak(&v14);
    }

    objc_destroyWeak(&location);
  }

  objc_sync_exit(listeners);
}

- (void)registerListener:(id)listener
{
  listenerCopy = listener;
  listeners = [(CKKSListenerCollection *)self listeners];
  objc_sync_enter(listeners);
  listeners2 = [(CKKSListenerCollection *)self listeners];
  objectEnumerator = [listeners2 objectEnumerator];

  v7 = 0;
  v8 = 0;
  while (1)
  {
    nextObject = [objectEnumerator nextObject];

    if (!nextObject)
    {
      break;
    }

    v8 |= nextObject == listenerCopy;
    v7 = nextObject;
  }

  if (!((listenerCopy == 0) | v8 & 1))
  {
    name = [(CKKSListenerCollection *)self name];
    listenerCopy = [NSString stringWithFormat:@"%@-%@", name, listenerCopy];

    uTF8String = [listenerCopy UTF8String];
    v13 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v14 = dispatch_queue_create(uTF8String, v13);

    listeners3 = [(CKKSListenerCollection *)self listeners];
    [listeners3 setObject:listenerCopy forKey:v14];
  }

  objc_sync_exit(listeners);
}

- (id)description
{
  listeners = [(CKKSListenerCollection *)self listeners];
  objc_sync_enter(listeners);
  name = [(CKKSListenerCollection *)self name];
  listeners2 = [(CKKSListenerCollection *)self listeners];
  objectEnumerator = [listeners2 objectEnumerator];
  allObjects = [objectEnumerator allObjects];
  v8 = [NSString stringWithFormat:@"<CKKSListenerCollection(%@): %@>", name, allObjects];

  objc_sync_exit(listeners);

  return v8;
}

- (CKKSListenerCollection)initWithName:(id)name
{
  nameCopy = name;
  v11.receiver = self;
  v11.super_class = CKKSListenerCollection;
  v6 = [(CKKSListenerCollection *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_name, name);
    v8 = +[NSMapTable strongToWeakObjectsMapTable];
    listeners = v7->_listeners;
    v7->_listeners = v8;
  }

  return v7;
}

@end