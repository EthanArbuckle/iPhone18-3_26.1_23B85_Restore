@interface SecDbKeychainMetadataKeyStore
+ (id)sharedStore;
+ (void)resetSharedStore;
- (BOOL)readKeyDataForClass:(int)a3 fromDb:(__OpaqueSecDbConnection *)a4 actualKeyclass:(int *)a5 wrappedKey:(id *)a6 error:(id *)a7;
- (id)_init;
- (void)_onQueueDropAllKeys;
- (void)_onQueueDropClassAKeys;
- (void)dealloc;
- (void)dropAllKeys;
- (void)dropClassAKeys;
@end

@implementation SecDbKeychainMetadataKeyStore

+ (void)resetSharedStore
{
  if (qword_100073730 != -1)
  {
    sub_10003E610();
  }

  v3 = qword_100073718;

  dispatch_sync(v3, &stru_100059EC0);
}

+ (id)sharedStore
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_1000127E8;
  v10 = sub_1000127F8;
  v11 = 0;
  if (qword_100073730 != -1)
  {
    sub_10003E624();
  }

  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100012800;
  v5[3] = &unk_100059EE8;
  v5[4] = &v6;
  v5[5] = a1;
  dispatch_sync(qword_100073718, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (id)_init
{
  v13.receiver = self;
  v13.super_class = SecDbKeychainMetadataKeyStore;
  v2 = [(SecDbKeychainMetadataKeyStore *)&v13 init];
  if (v2)
  {
    v3 = objc_alloc_init(NSMutableDictionary);
    keysDict = v2->_keysDict;
    v2->_keysDict = v3;

    v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v6 = dispatch_queue_create("SecDbKeychainMetadataKeyStore", v5);
    queue = v2->_queue;
    v2->_queue = v6;

    v2->_keybagNotificationToken = -1;
    objc_initWeak(&location, v2);
    v8 = v2->_queue;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1000129CC;
    v10[3] = &unk_100059F10;
    objc_copyWeak(&v11, &location);
    notify_register_dispatch("com.apple.mobile.keybagd.lock_status", &v2->_keybagNotificationToken, v8, v10);
    objc_destroyWeak(&v11);
    objc_destroyWeak(&location);
  }

  return v2;
}

- (void)dealloc
{
  keybagNotificationToken = self->_keybagNotificationToken;
  if (keybagNotificationToken != -1)
  {
    notify_cancel(keybagNotificationToken);
    self->_keybagNotificationToken = -1;
  }

  v4.receiver = self;
  v4.super_class = SecDbKeychainMetadataKeyStore;
  [(SecDbKeychainMetadataKeyStore *)&v4 dealloc];
}

- (void)dropClassAKeys
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100012BB4;
  block[3] = &unk_100059F38;
  block[4] = self;
  dispatch_sync(queue, block);
}

- (void)_onQueueDropClassAKeys
{
  dispatch_assert_queue_V2(self->_queue);
  v3 = secLogObjForScope("SecDbKeychainMetadataKeyStore");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "dropping class A metadata keys", v4, 2u);
  }

  [(NSMutableDictionary *)self->_keysDict setObject:0 forKeyedSubscript:&off_10006C220];
  [(NSMutableDictionary *)self->_keysDict setObject:0 forKeyedSubscript:&off_10006C238];
  [(NSMutableDictionary *)self->_keysDict setObject:0 forKeyedSubscript:&off_10006C250];
}

- (void)dropAllKeys
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100012CE8;
  block[3] = &unk_100059F38;
  block[4] = self;
  dispatch_sync(queue, block);
}

- (void)_onQueueDropAllKeys
{
  dispatch_assert_queue_V2(self->_queue);
  v3 = secLogObjForScope("SecDbKeychainMetadataKeyStore");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "dropping all metadata keys", v4, 2u);
  }

  [(NSMutableDictionary *)self->_keysDict removeAllObjects];
}

- (BOOL)readKeyDataForClass:(int)a3 fromDb:(__OpaqueSecDbConnection *)a4 actualKeyclass:(int *)a5 wrappedKey:(id *)a6 error:(id *)a7
{
  dispatch_assert_queue_V2(self->_queue);
  v31 = 0;
  v32 = &v31;
  v33 = 0x3032000000;
  v34 = sub_1000127E8;
  v35 = sub_1000127F8;
  v36 = 0;
  v27 = 0;
  v28 = &v27;
  v29 = 0x2020000000;
  v30 = 1;
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 0;
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_10001381C;
  v17[3] = &unk_100059FB0;
  v18 = a3;
  v17[4] = &v27;
  v17[5] = &v19;
  v17[8] = a4;
  v17[9] = a5;
  v17[6] = &v31;
  v17[7] = &v23;
  v12 = SecDbPrepare(a4, @"SELECT data, actualKeyclass FROM metadatakeys WHERE keyclass = ?", &v22, v17);
  v13 = (v12 & v28[3]) == 0;
  *(v28 + 24) &= v12;
  if (v13 || (v24[3] & 1) == 0)
  {
    v15 = v20[3];
    if (a7)
    {
      *a7 = v15;
      v20[3] = 0;
    }

    else if (v15)
    {
      v20[3] = 0;
      CFRelease(v15);
    }

    v14 = 0;
    *a5 = 0;
  }

  else
  {
    *a6 = v32[5];
    v14 = 1;
  }

  _Block_object_dispose(&v19, 8);
  _Block_object_dispose(&v23, 8);
  _Block_object_dispose(&v27, 8);
  _Block_object_dispose(&v31, 8);

  return v14;
}

@end