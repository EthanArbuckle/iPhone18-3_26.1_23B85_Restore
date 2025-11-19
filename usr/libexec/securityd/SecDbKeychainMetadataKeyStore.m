@interface SecDbKeychainMetadataKeyStore
+ (id)sharedStore;
+ (void)resetSharedStore;
- (BOOL)readKeyDataForClass:(int)a3 fromDb:(__OpaqueSecDbConnection *)a4 actualKeyclass:(int *)a5 wrappedKey:(id *)a6 error:(id *)a7;
- (id)_init;
- (id)keyForKeyclass:(int)a3 keybag:(int)a4 keySpecifier:(id)a5 allowWrites:(BOOL)a6 error:(id *)a7;
- (void)_onQueueDropAllKeys;
- (void)_onQueueDropClassAKeys;
- (void)dealloc;
- (void)dropAllKeys;
- (void)dropClassAKeys;
@end

@implementation SecDbKeychainMetadataKeyStore

+ (id)sharedStore
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_1001F8768;
  v10 = sub_1001F8778;
  v11 = 0;
  if (qword_10039E310 != -1)
  {
    dispatch_once(&qword_10039E310, &stru_100344AF0);
  }

  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10000FFEC;
  v5[3] = &unk_1003449E0;
  v5[4] = &v6;
  v5[5] = a1;
  dispatch_sync(qword_10039E2F0, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (id)keyForKeyclass:(int)a3 keybag:(int)a4 keySpecifier:(id)a5 allowWrites:(BOOL)a6 error:(id *)a7
{
  v13 = a5;
  if (a7)
  {
    off_10039D5F8();
    v15 = v14;
    if (*v14 == 1)
    {
      v29 = +[NSAssertionHandler currentHandler];
      v26 = objc_opt_class();
      v27 = NSStringFromClass(v26);
      v28 = NSStringFromSelector(a2);
      [v29 handleFailureInMethod:a2 object:self file:@"SecDbKeychainMetadataKeyStore.m" lineNumber:335 description:{@"re-entering -[%@ %@] - that shouldn't happen!", v27, v28}];
    }

    *v15 = 1;
    if (a3 < 32)
    {
      v16 = a3;
    }

    else
    {
      v16 = a3 & 0x1F;
      v17 = sub_100006274("SanitizeKeyclass");
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        *buf = 67109376;
        *&buf[4] = a3;
        LOWORD(v54) = 1024;
        *(&v54 + 2) = a3 & 0x1F;
        _os_log_debug_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEBUG, "sanitizing request for keyclass %d to keyclass %d", buf, 0xEu);
      }
    }

    *buf = 0;
    v54 = buf;
    v55 = 0x3032000000;
    v56 = sub_1001F8768;
    v57 = sub_1001F8778;
    v58 = 0;
    v47 = 0;
    v48 = &v47;
    v49 = 0x3032000000;
    v50 = sub_1001F8768;
    v51 = sub_1001F8778;
    v52 = 0;
    v43 = 0;
    v44 = &v43;
    v45 = 0x2020000000;
    v46 = 0;
    v39 = 0;
    v40 = &v39;
    v41 = 0x2020000000;
    v42 = 1;
    queue = self->_queue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1001F8780;
    block[3] = &unk_100344AD0;
    v32 = buf;
    v33 = &v39;
    block[4] = self;
    v34 = &v43;
    v36 = v16;
    v37 = a4;
    v38 = a6;
    v31 = v13;
    v35 = &v47;
    dispatch_sync(queue, block);
    if (*(v40 + 24) == 1)
    {
      v21 = *(v54 + 5);
      if (v21)
      {
        goto LABEL_20;
      }
    }

    v22 = v48[5];
    if (v22)
    {
      *a7 = v22;
      v23 = v44[3];
      if (!v23)
      {
LABEL_19:
        v24 = *(v54 + 5);
        *(v54 + 5) = 0;

        v21 = *(v54 + 5);
LABEL_20:
        *v15 = 0;
        v19 = v21;

        _Block_object_dispose(&v39, 8);
        _Block_object_dispose(&v43, 8);
        _Block_object_dispose(&v47, 8);

        _Block_object_dispose(buf, 8);
        goto LABEL_21;
      }

      v44[3] = 0;
      CFRelease(v23);
    }

    else
    {
      *a7 = v44[3];
      v44[3] = 0;
    }

    if (!*a7)
    {
      sub_100089FEC(@"Execution has encountered an unexpected state", 1405091854);
    }

    goto LABEL_19;
  }

  v18 = sub_100006274("SecError");
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "keyForKeyclass called without error param, this is a bug", buf, 2u);
  }

  v19 = 0;
LABEL_21:

  return v19;
}

- (BOOL)readKeyDataForClass:(int)a3 fromDb:(__OpaqueSecDbConnection *)a4 actualKeyclass:(int *)a5 wrappedKey:(id *)a6 error:(id *)a7
{
  dispatch_assert_queue_V2(self->_queue);
  v31 = 0;
  v32 = &v31;
  v33 = 0x3032000000;
  v34 = sub_1001F8768;
  v35 = sub_1001F8778;
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
  v17[2] = sub_1001F93D0;
  v17[3] = &unk_100344A80;
  v18 = a3;
  v17[4] = &v27;
  v17[5] = &v19;
  v17[8] = a4;
  v17[9] = a5;
  v17[6] = &v31;
  v17[7] = &v23;
  v12 = sub_10001489C(a4, @"SELECT data, actualKeyclass FROM metadatakeys WHERE keyclass = ?", &v22, v17);
  v13 = (v12 & v28[3]);
  *(v28 + 24) &= v12;
  if (v13 == 1 && (v24[3] & 1) != 0)
  {
    *a6 = v32[5];
    v14 = 1;
  }

  else
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

  _Block_object_dispose(&v19, 8);
  _Block_object_dispose(&v23, 8);
  _Block_object_dispose(&v27, 8);
  _Block_object_dispose(&v31, 8);

  return v14;
}

- (void)_onQueueDropAllKeys
{
  dispatch_assert_queue_V2(self->_queue);
  v3 = sub_100006274("SecDbKeychainMetadataKeyStore");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "dropping all metadata keys", v4, 2u);
  }

  [(NSMutableDictionary *)self->_keysDict removeAllObjects];
}

- (void)dropAllKeys
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001F9ED0;
  block[3] = &unk_100346018;
  block[4] = self;
  dispatch_sync(queue, block);
}

- (void)_onQueueDropClassAKeys
{
  dispatch_assert_queue_V2(self->_queue);
  v3 = sub_100006274("SecDbKeychainMetadataKeyStore");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "dropping class A metadata keys", v4, 2u);
  }

  [(NSMutableDictionary *)self->_keysDict setObject:0 forKeyedSubscript:&off_100365140];
  [(NSMutableDictionary *)self->_keysDict setObject:0 forKeyedSubscript:&off_100365158];
  [(NSMutableDictionary *)self->_keysDict setObject:0 forKeyedSubscript:&off_100365170];
}

- (void)dropClassAKeys
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001FA004;
  block[3] = &unk_100346018;
  block[4] = self;
  dispatch_sync(queue, block);
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
    v10[2] = sub_10001C008;
    v10[3] = &unk_100344A08;
    objc_copyWeak(&v11, &location);
    notify_register_dispatch("com.apple.mobile.keybagd.lock_status", &v2->_keybagNotificationToken, v8, v10);
    objc_destroyWeak(&v11);
    objc_destroyWeak(&location);
  }

  return v2;
}

+ (void)resetSharedStore
{
  if (qword_10039E310 != -1)
  {
    dispatch_once(&qword_10039E310, &stru_100344AF0);
  }

  v3 = qword_10039E2F0;

  dispatch_sync(v3, &stru_1003449B8);
}

@end