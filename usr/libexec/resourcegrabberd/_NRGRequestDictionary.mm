@interface _NRGRequestDictionary
- (_NRGRequestDictionary)init;
- (id)objectForKey:(id)key;
- (void)removeObjectForKey:(id)key;
- (void)setObject:(id)object forKey:(id)key;
@end

@implementation _NRGRequestDictionary

- (_NRGRequestDictionary)init
{
  v8.receiver = self;
  v8.super_class = _NRGRequestDictionary;
  v2 = [(_NRGRequestDictionary *)&v8 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.nanoresourcegrabber.requests", &_dispatch_queue_attr_concurrent);
    queue = v2->_queue;
    v2->_queue = v3;

    v5 = objc_opt_new();
    dictionary = v2->_dictionary;
    v2->_dictionary = v5;
  }

  return v2;
}

- (id)objectForKey:(id)key
{
  keyCopy = key;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_10000EE60;
  v16 = sub_10000EE70;
  v17 = 0;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000EE78;
  block[3] = &unk_100020698;
  v10 = keyCopy;
  v11 = &v12;
  block[4] = self;
  v6 = keyCopy;
  dispatch_sync(queue, block);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

- (void)setObject:(id)object forKey:(id)key
{
  objectCopy = object;
  keyCopy = key;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000EF8C;
  block[3] = &unk_1000205F8;
  block[4] = self;
  v12 = objectCopy;
  v13 = keyCopy;
  v9 = keyCopy;
  v10 = objectCopy;
  dispatch_barrier_sync(queue, block);
}

- (void)removeObjectForKey:(id)key
{
  keyCopy = key;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10000F038;
  v7[3] = &unk_100020648;
  v7[4] = self;
  v8 = keyCopy;
  v6 = keyCopy;
  dispatch_barrier_sync(queue, v7);
}

@end