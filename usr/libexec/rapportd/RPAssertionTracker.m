@interface RPAssertionTracker
+ (id)sharedTracker;
- (BOOL)_timerNeeded;
- (RPAssertionTracker)init;
- (id)descriptionWithLevel:(int)a3;
- (void)_activate;
- (void)_checkAssertions;
- (void)_invalidate;
- (void)_timerStart;
- (void)_timerStop;
- (void)_withAssertionsLock:(id)a3;
- (void)activate;
- (void)invalidate;
- (void)startTracking:(id)a3;
- (void)stopTracking:(id)a3;
@end

@implementation RPAssertionTracker

+ (id)sharedTracker
{
  if (qword_1001D6438 != -1)
  {
    sub_100123DBC();
  }

  v3 = qword_1001D6430;

  return v3;
}

- (RPAssertionTracker)init
{
  v17.receiver = self;
  v17.super_class = RPAssertionTracker;
  v2 = [(RPAssertionTracker *)&v17 init];
  v3 = v2;
  if (v2)
  {
    v2->_assertionsLock._os_unfair_lock_opaque = 0;
    v4 = +[NSMutableSet set];
    assertions = v3->_assertions;
    v3->_assertions = v4;

    v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v7 = dispatch_queue_attr_make_with_qos_class(v6, QOS_CLASS_BACKGROUND, 0);

    v8 = dispatch_queue_create("RPAssertionTracker", v7);
    dispatchQueue = v3->_dispatchQueue;
    v3->_dispatchQueue = v8;

    v10 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, v3->_dispatchQueue);
    checkTimer = v3->_checkTimer;
    v3->_checkTimer = v10;

    v12 = v3->_checkTimer;
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_100090340;
    handler[3] = &unk_1001AA970;
    v16 = v3;
    dispatch_source_set_event_handler(v12, handler);
    v13 = v3->_checkTimer;
    CUDispatchTimerSet();
  }

  return v3;
}

- (id)descriptionWithLevel:(int)a3
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_100002A2C;
  v10 = sub_1000031AC;
  v11 = 0;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100090460;
  v5[3] = &unk_1001AD1A0;
  v5[4] = self;
  v5[5] = &v6;
  [(RPAssertionTracker *)self _withAssertionsLock:v5];
  v3 = [NSString stringWithFormat:@"Assertions: %@", v7[5]];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (void)activate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100090520;
  block[3] = &unk_1001AA970;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_activate
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (dword_1001D4810 <= 30 && (dword_1001D4810 != -1 || _LogCategory_Initialize()))
  {
    sub_100123DD0();
  }

  dispatch_activate(self->_checkTimer);
  dispatch_suspend(self->_checkTimer);
  self->_timerRunning = 0;
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10009060C;
  block[3] = &unk_1001AA970;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_invalidate
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (dword_1001D4810 <= 30 && (dword_1001D4810 != -1 || _LogCategory_Initialize()))
  {
    sub_100123DEC();
  }

  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000906E8;
  v4[3] = &unk_1001AA970;
  v4[4] = self;
  [(RPAssertionTracker *)self _withAssertionsLock:v4];
  checkTimer = self->_checkTimer;
  if (checkTimer)
  {
    if (!self->_timerRunning)
    {
      dispatch_resume(checkTimer);
      checkTimer = self->_checkTimer;
    }

    dispatch_source_cancel(checkTimer);
  }
}

- (void)startTracking:(id)a3
{
  v4 = a3;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10009078C;
  v7[3] = &unk_1001AB488;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(dispatchQueue, v7);
}

- (void)stopTracking:(id)a3
{
  v4 = a3;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000909B4;
  v7[3] = &unk_1001AB488;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(dispatchQueue, v7);
}

- (void)_checkAssertions
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_100002A2C;
  v16 = sub_1000031AC;
  v17 = 0;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100090D34;
  v11[3] = &unk_1001AD1A0;
  v11[4] = self;
  v11[5] = &v12;
  [(RPAssertionTracker *)self _withAssertionsLock:v11];
  v9 = 0u;
  v10 = 0u;
  v7 = 0u;
  v8 = 0u;
  v3 = v13[5];
  v4 = [v3 countByEnumeratingWithState:&v7 objects:v18 count:16];
  if (v4)
  {
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v7 + 1) + 8 * v6) trackerCheckAssertion];
        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v3 countByEnumeratingWithState:&v7 objects:v18 count:16];
    }

    while (v4);
  }

  if (self->_timerRunning && ![(RPAssertionTracker *)self _timerNeeded])
  {
    [(RPAssertionTracker *)self _timerStop];
  }

  _Block_object_dispose(&v12, 8);
}

- (void)_timerStart
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (!self->_timerRunning)
  {
    if (dword_1001D4810 <= 10 && (dword_1001D4810 != -1 || _LogCategory_Initialize()))
    {
      sub_100123EA0();
    }

    self->_timerRunning = 1;
    checkTimer = self->_checkTimer;

    dispatch_resume(checkTimer);
  }
}

- (void)_timerStop
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (self->_timerRunning)
  {
    if (dword_1001D4810 <= 10 && (dword_1001D4810 != -1 || _LogCategory_Initialize()))
    {
      sub_100123EBC();
    }

    self->_timerRunning = 0;
    checkTimer = self->_checkTimer;

    dispatch_suspend(checkTimer);
  }
}

- (BOOL)_timerNeeded
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = sub_100002A2C;
  v17 = sub_1000031AC;
  v18 = 0;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100091078;
  v12[3] = &unk_1001AD1A0;
  v12[4] = self;
  v12[5] = &v13;
  [(RPAssertionTracker *)self _withAssertionsLock:v12];
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v3 = v14[5];
  v4 = [v3 countByEnumeratingWithState:&v8 objects:v19 count:16];
  if (v4)
  {
    v5 = *v9;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v3);
        }

        if ([*(*(&v8 + 1) + 8 * i) state] == 1)
        {
          LOBYTE(v4) = 1;
          goto LABEL_11;
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v8 objects:v19 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  _Block_object_dispose(&v13, 8);
  return v4;
}

- (void)_withAssertionsLock:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_assertionsLock);
  v4[2](v4);

  os_unfair_lock_unlock(&self->_assertionsLock);
}

@end