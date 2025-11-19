@interface _DASDataProtectionMaster
+ (id)sharedInstance;
- (BOOL)deviceIsLocked;
- (BOOL)deviceIsPasswordConfigured;
- (BOOL)isDataAvailableFor:(id)a3;
- (BOOL)isDataAvailableForClassA;
- (BOOL)isDataAvailableForClassC;
- (_DASDataProtectionMaster)init;
- (id)registerStateChangeHandler:(id)a3;
- (void)deregisterStateChangeHandler:(id)a3;
- (void)handleKeyBagLockNotification;
@end

@implementation _DASDataProtectionMaster

- (void)handleKeyBagLockNotification
{
  v34[0] = 0;
  v34[1] = v34;
  v34[2] = 0x3032000000;
  v34[3] = sub_100039FFC;
  v34[4] = sub_10003A00C;
  v35 = 0;
  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = sub_100039FFC;
  v32 = sub_10003A00C;
  v33 = 0;
  stateQueue = self->_stateQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100007340;
  block[3] = &unk_1001B61E0;
  block[4] = self;
  block[5] = v34;
  block[6] = &v28;
  dispatch_sync(stateQueue, block);
  v4 = +[NSMutableDictionary dictionary];
  v5 = self->_stateQueue;
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_100007860;
  v24[3] = &unk_1001B5D98;
  v26 = v34;
  v24[4] = self;
  v6 = v4;
  v25 = v6;
  dispatch_sync(v5, v24);
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v20 objects:v37 count:16];
  if (v8)
  {
    v9 = *v21;
    do
    {
      v10 = 0;
      do
      {
        if (*v21 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = [v7 objectForKeyedSubscript:*(*(&v20 + 1) + 8 * v10)];
        [v11 BOOLValue];

        v18 = 0u;
        v19 = 0u;
        v16 = 0u;
        v17 = 0u;
        v12 = v29[5];
        v13 = [v12 countByEnumeratingWithState:&v16 objects:v36 count:16];
        if (v13)
        {
          v14 = *v17;
          do
          {
            v15 = 0;
            do
            {
              if (*v17 != v14)
              {
                objc_enumerationMutation(v12);
              }

              (*(*(*(&v16 + 1) + 8 * v15) + 16))();
              v15 = v15 + 1;
            }

            while (v13 != v15);
            v13 = [v12 countByEnumeratingWithState:&v16 objects:v36 count:16];
          }

          while (v13);
        }

        v10 = v10 + 1;
      }

      while (v10 != v8);
      v8 = [v7 countByEnumeratingWithState:&v20 objects:v37 count:16];
    }

    while (v8);
  }

  _Block_object_dispose(&v28, 8);
  _Block_object_dispose(v34, 8);
}

- (BOOL)isDataAvailableForClassA
{
  if ([(_DASDataProtectionMaster *)self deviceIsLocked])
  {
    return ![(_DASDataProtectionMaster *)self deviceIsPasswordConfigured];
  }

  else
  {
    return 1;
  }
}

- (BOOL)deviceIsLocked
{
  v2 = MGCopyAnswer();
  v3 = v2;
  if (v2)
  {
    CFRelease(v2);
  }

  return v3 == kCFBooleanTrue;
}

- (BOOL)isDataAvailableForClassC
{
  if ([(_DASDataProtectionMaster *)self deviceHasBeenUnlockedSinceBoot])
  {
    return 1;
  }

  else
  {
    return ![(_DASDataProtectionMaster *)self deviceIsPasswordConfigured];
  }
}

+ (id)sharedInstance
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100039CE4;
  block[3] = &unk_1001B54A0;
  block[4] = a1;
  if (qword_10020AF98 != -1)
  {
    dispatch_once(&qword_10020AF98, block);
  }

  v2 = qword_10020AF90;

  return v2;
}

- (_DASDataProtectionMaster)init
{
  v31.receiver = self;
  v31.super_class = _DASDataProtectionMaster;
  v2 = [(_DASDataProtectionMaster *)&v31 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.DuetActivityScheduler.DataProtection.state", 0);
    stateQueue = v2->_stateQueue;
    v2->_stateQueue = v3;

    v2->_deviceFormatedForContentProtection = 0;
    v5 = +[NSMutableDictionary dictionary];
    handlers = v2->_handlers;
    v2->_handlers = v5;

    v7 = +[NSMutableDictionary dictionary];
    availableState = v2->_availableState;
    v2->_availableState = v7;

    v9 = v2->_availableState;
    v10 = +[_DASDataProtectionStateMonitor dataProtectionClassA];
    [(NSMutableDictionary *)v9 setObject:&__kCFBooleanTrue forKeyedSubscript:v10];

    v11 = v2->_availableState;
    v12 = +[_DASDataProtectionStateMonitor dataProtectionClassC];
    [(NSMutableDictionary *)v11 setObject:&__kCFBooleanTrue forKeyedSubscript:v12];

    v13 = v2->_availableState;
    v14 = +[_DASDataProtectionStateMonitor dataProtectionClassD];
    [(NSMutableDictionary *)v13 setObject:&__kCFBooleanTrue forKeyedSubscript:v14];

    v15 = MKBDeviceFormattedForContentProtection();
    v2->_deviceFormatedForContentProtection = v15 != 0;
    if (v15)
    {
      v16 = [NSNumber numberWithBool:[(_DASDataProtectionMaster *)v2 isDataAvailableForClassA]];
      v17 = v2->_availableState;
      v18 = +[_DASDataProtectionStateMonitor dataProtectionClassA];
      [(NSMutableDictionary *)v17 setObject:v16 forKeyedSubscript:v18];

      v19 = [NSNumber numberWithBool:[(_DASDataProtectionMaster *)v2 isDataAvailableForClassC]];
      v20 = v2->_availableState;
      v21 = +[_DASDataProtectionStateMonitor dataProtectionClassC];
      [(NSMutableDictionary *)v20 setObject:v19 forKeyedSubscript:v21];

      v22 = v2->_availableState;
      v23 = +[_DASDataProtectionStateMonitor dataProtectionClassD];
      [(NSMutableDictionary *)v22 setObject:&__kCFBooleanTrue forKeyedSubscript:v23];

      v24 = dispatch_queue_create("com.apple.DuetActivityScheduler.DataProtection.notify", 0);
      notifyQueue = v2->_notifyQueue;
      v2->_notifyQueue = v24;

      v2->_notifyToken = 0;
      objc_initWeak(&location, v2);
      v26 = v2->_notifyQueue;
      v28[0] = _NSConcreteStackBlock;
      v28[1] = 3221225472;
      v28[2] = sub_100006F8C;
      v28[3] = &unk_1001B61B8;
      objc_copyWeak(&v29, &location);
      notify_register_dispatch("com.apple.mobile.keybagd.lock_status", &v2->_notifyToken, v26, v28);
      v2->_notifyEnabled = 1;
      objc_destroyWeak(&v29);
      objc_destroyWeak(&location);
    }
  }

  return v2;
}

- (BOOL)deviceIsPasswordConfigured
{
  v2 = MGCopyAnswer();
  v3 = v2;
  if (v2)
  {
    CFRelease(v2);
  }

  return v3 == kCFBooleanTrue;
}

- (BOOL)isDataAvailableFor:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_deviceFormatedForContentProtection)
  {
    v12 = 0;
    v13 = &v12;
    v14 = 0x2020000000;
    v15 = 0;
    stateQueue = self->_stateQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10003A14C;
    block[3] = &unk_1001B5AB8;
    block[4] = self;
    v10 = v4;
    v11 = &v12;
    dispatch_sync(stateQueue, block);
    v7 = *(v13 + 24);

    _Block_object_dispose(&v12, 8);
  }

  else
  {
    v7 = 1;
  }

  return v7 & 1;
}

- (id)registerStateChangeHandler:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = +[NSUUID UUID];
    stateQueue = self->_stateQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10003A2B4;
    block[3] = &unk_1001B6208;
    block[4] = self;
    v7 = v5;
    v12 = v7;
    v13 = v4;
    dispatch_sync(stateQueue, block);
    v8 = v13;
    v9 = v7;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)deregisterStateChangeHandler:(id)a3
{
  v4 = a3;
  stateQueue = self->_stateQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10003A3A4;
  v7[3] = &unk_1001B56E0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(stateQueue, v7);
}

@end