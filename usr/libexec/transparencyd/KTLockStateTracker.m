@interface KTLockStateTracker
+ (id)globalTracker;
- (BOOL)checkErrorChainForLockState:(id)a3;
- (BOOL)hasBeenUnlocked;
- (BOOL)isLocked;
- (BOOL)isLockedError:(id)a3;
- (BOOL)lockedError:(id)a3;
- (KTLockStateTracker)initWithProvider:(id)a3;
- (NSDate)lastUnlockTime;
- (id)description;
- (void)_onqueueRecheck;
- (void)addLockStateObserver:(id)a3;
- (void)dealloc;
- (void)recheck;
- (void)resetUnlockDependency;
@end

@implementation KTLockStateTracker

- (void)_onqueueRecheck
{
  v3 = [(KTLockStateTracker *)self queue];
  dispatch_assert_queue_V2(v3);

  v4 = [(KTLockStateTracker *)self queueIsLocked];
  v5 = [(KTLockStateTracker *)self lockStateProvider];
  -[KTLockStateTracker setQueueIsLocked:](self, "setQueueIsLocked:", [v5 queryAKSLocked]);

  if (v4 == [(KTLockStateTracker *)self queueIsLocked]&& (byte_10039CA70 & 1) != 0)
  {
    return;
  }

  byte_10039CA70 = 1;
  if ([(KTLockStateTracker *)self queueIsLocked])
  {
    [(KTLockStateTracker *)self resetUnlockDependency];
    if ((v4 & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v6 = [(KTLockStateTracker *)self operationQueue];
    v7 = [(KTLockStateTracker *)self unlockDependency];
    [v6 addOperation:v7];

    [(KTLockStateTracker *)self setUnlockDependency:0];
  }

  v8 = +[NSDate date];
  [(KTLockStateTracker *)self setLastUnlockedTime:v8];

LABEL_8:
  v9 = [(KTLockStateTracker *)self queueIsLocked];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v10 = self->_observers;
  v11 = [(NSHashTable *)v10 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = v9 ^ 1;
    v14 = *v22;
LABEL_10:
    v15 = 0;
    while (1)
    {
      if (*v22 != v14)
      {
        objc_enumerationMutation(v10);
      }

      v16 = *(*(&v21 + 1) + 8 * v15);
      if (!v16)
      {
        break;
      }

      v17 = v16;
      v18 = dispatch_get_global_queue(21, 0);
      v19[0] = _NSConcreteStackBlock;
      v19[1] = 3221225472;
      v19[2] = sub_1001E7BFC;
      v19[3] = &unk_1003285A8;
      v19[4] = v17;
      v20 = v13;
      dispatch_async(v18, v19);

      if (v12 == ++v15)
      {
        v12 = [(NSHashTable *)v10 countByEnumeratingWithState:&v21 objects:v25 count:16];
        if (v12)
        {
          goto LABEL_10;
        }

        break;
      }
    }
  }
}

- (BOOL)hasBeenUnlocked
{
  v2 = [(KTLockStateTracker *)self lockStateProvider];
  v3 = [v2 hasBeenUnlocked];

  return v3;
}

- (KTLockStateTracker)initWithProvider:(id)a3
{
  v5 = a3;
  v23.receiver = self;
  v23.super_class = KTLockStateTracker;
  v6 = [(KTLockStateTracker *)&v23 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_lockStateProvider, a3);
    v8 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v9 = dispatch_queue_create("lock-state-tracker", v8);
    queue = v7->_queue;
    v7->_queue = v9;

    v11 = objc_alloc_init(NSOperationQueue);
    operationQueue = v7->_operationQueue;
    v7->_operationQueue = v11;

    v7->_notify_token = -1;
    v7->_queueIsLocked = 1;
    v13 = +[NSHashTable weakObjectsHashTable];
    observers = v7->_observers;
    v7->_observers = v13;

    [(KTLockStateTracker *)v7 resetUnlockDependency];
    objc_initWeak(&location, v7);
    v15 = v7->_queue;
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_1001E76EC;
    handler[3] = &unk_10031A548;
    objc_copyWeak(&v21, &location);
    notify_register_dispatch("com.apple.mobile.keybagd.lock_status", &v7->_notify_token, v15, handler);
    v16 = v7->_queue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1001E772C;
    block[3] = &unk_1003175E0;
    objc_copyWeak(&v19, &location);
    dispatch_async(v16, block);
    objc_destroyWeak(&v19);
    objc_destroyWeak(&v21);
    objc_destroyWeak(&location);
  }

  return v7;
}

- (void)dealloc
{
  notify_token = self->_notify_token;
  if (notify_token != -1)
  {
    notify_cancel(notify_token);
  }

  v4.receiver = self;
  v4.super_class = KTLockStateTracker;
  [(KTLockStateTracker *)&v4 dealloc];
}

- (BOOL)isLocked
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = self->_queue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1001E786C;
  v5[3] = &unk_10031DC58;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (NSDate)lastUnlockTime
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_1001E799C;
  v11 = sub_1001E79AC;
  v12 = 0;
  v3 = [(KTLockStateTracker *)self queue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1001E79B4;
  v6[3] = &unk_10031A9E0;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v3, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (id)description
{
  v3 = [(KTLockStateTracker *)self isLocked];
  v4 = [(KTLockStateTracker *)self hasBeenUnlocked];
  if (v3)
  {
    v5 = @"locked";
  }

  else
  {
    v5 = @"unlocked";
  }

  if (v3)
  {
    v6 = [(KTLockStateTracker *)self lastUnlockedTime];
  }

  else
  {
    v6 = @"now";
  }

  v7 = @" stillLocked";
  if (v4)
  {
    v7 = &stru_10032E8E8;
  }

  v8 = [NSString stringWithFormat:@"<KTLockStateTracker: %@ last:%@%@>", v5, v6, v7];
  if (v3)
  {
  }

  return v8;
}

- (void)resetUnlockDependency
{
  v3 = [(KTLockStateTracker *)self unlockDependency];
  if (!v3 || (v4 = v3, -[KTLockStateTracker unlockDependency](self, "unlockDependency"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 isPending], v5, v4, (v6 & 1) == 0))
  {
    v7 = [KTResultOperation named:@"keybag-unlocked-dependency" withBlock:&stru_100328580];
    [v7 setDescriptionErrorCode:2];
    [(KTLockStateTracker *)self setUnlockDependency:v7];
  }
}

- (void)recheck
{
  v3 = [(KTLockStateTracker *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001E7C94;
  block[3] = &unk_100316FE0;
  block[4] = self;
  dispatch_sync(v3, block);
}

- (BOOL)lockedError:(id)a3
{
  v3 = a3;
  if ([v3 code] == -25308)
  {
    v4 = [v3 domain];
    if ([v4 isEqualToString:@"securityd"])
    {
      v5 = 1;
    }

    else
    {
      v6 = [v3 domain];
      v5 = [v6 isEqualToString:kCFErrorDomainOSStatus];
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)checkErrorChainForLockState:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  do
  {
    v6 = [(KTLockStateTracker *)self lockedError:v5];
    if (v6)
    {
      break;
    }

    v7 = [v5 userInfo];
    v8 = [v7 objectForKeyedSubscript:NSUnderlyingErrorKey];

    v5 = v8;
  }

  while (v8);

  return v6;
}

- (BOOL)isLockedError:(id)a3
{
  v4 = [(KTLockStateTracker *)self checkErrorChainForLockState:a3];
  if (v4)
  {
    v5 = [(KTLockStateTracker *)self queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1001E7E7C;
    block[3] = &unk_100316FE0;
    block[4] = self;
    dispatch_sync(v5, block);
  }

  return v4;
}

- (void)addLockStateObserver:(id)a3
{
  v4 = a3;
  v5 = [(KTLockStateTracker *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001E7F7C;
  v7[3] = &unk_1003180E0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

+ (id)globalTracker
{
  if (qword_10039CA80 != -1)
  {
    sub_10025CEB0();
  }

  v3 = qword_10039CA78;

  return v3;
}

@end