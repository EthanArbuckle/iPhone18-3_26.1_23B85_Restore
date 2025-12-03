@interface FMDConcurrentMutableDictionary
- (FMDConcurrentMutableDictionary)initWithDictionary:(id)dictionary;
- (id)nativeDictionary;
- (id)objectForKey:(id)key;
- (unint64_t)count;
- (void)removeObjectForKey:(id)key;
- (void)setObject:(id)object forKey:(id)key;
@end

@implementation FMDConcurrentMutableDictionary

- (FMDConcurrentMutableDictionary)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v11.receiver = self;
  v11.super_class = FMDConcurrentMutableDictionary;
  v5 = [(FMDConcurrentMutableDictionary *)&v11 init];
  if (v5)
  {
    v6 = [dictionaryCopy mutableCopy];
    underlyingDictionary = v5->_underlyingDictionary;
    v5->_underlyingDictionary = v6;

    v8 = dispatch_queue_create("com.apple.icloud.FMCore.FMMutableDict.modQueue", 0);
    dictModQueue = v5->_dictModQueue;
    v5->_dictModQueue = v8;
  }

  return v5;
}

- (unint64_t)count
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  dictModQueue = [(FMDConcurrentMutableDictionary *)self dictModQueue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1001C2C98;
  v6[3] = &unk_1002CD260;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(dictModQueue, v6);

  v4 = v8[3];
  _Block_object_dispose(&v7, 8);
  return v4;
}

- (id)objectForKey:(id)key
{
  keyCopy = key;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_10000AB44;
  v16 = sub_100002B6C;
  v17 = 0;
  dictModQueue = [(FMDConcurrentMutableDictionary *)self dictModQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001C2E38;
  block[3] = &unk_1002CDA70;
  v10 = keyCopy;
  v11 = &v12;
  block[4] = self;
  v6 = keyCopy;
  dispatch_sync(dictModQueue, block);

  v7 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v7;
}

- (void)setObject:(id)object forKey:(id)key
{
  objectCopy = object;
  keyCopy = key;
  dictModQueue = [(FMDConcurrentMutableDictionary *)self dictModQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001C2F80;
  block[3] = &unk_1002CDD98;
  block[4] = self;
  v12 = objectCopy;
  v13 = keyCopy;
  v9 = keyCopy;
  v10 = objectCopy;
  dispatch_async(dictModQueue, block);
}

- (void)removeObjectForKey:(id)key
{
  keyCopy = key;
  dictModQueue = [(FMDConcurrentMutableDictionary *)self dictModQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001C308C;
  v7[3] = &unk_1002CD478;
  v7[4] = self;
  v8 = keyCopy;
  v6 = keyCopy;
  dispatch_async(dictModQueue, v7);
}

- (id)nativeDictionary
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_10000AB44;
  v11 = sub_100002B6C;
  v12 = 0;
  dictModQueue = [(FMDConcurrentMutableDictionary *)self dictModQueue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1001C31FC;
  v6[3] = &unk_1002CD260;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(dictModQueue, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

@end