@interface MKBDeviceLockModelEducationalMode
- (BOOL)isPermanentlyBlocked;
- (BOOL)isTemporarilyBlocked;
- (BOOL)isWipePending;
- (double)timeUntilUnblockedSinceReferenceDate;
- (id)_lockStateValueForKey:(id)key ofType:(Class)type;
- (unint64_t)failedPasscodeAttempts;
- (void)_loadLockState;
- (void)_persistentStateQueue_beginSpeculativeFailureCharge;
- (void)_persistentStateQueue_cancelSpeculativeFailureCharge;
- (void)_persistentStateQueue_loadLockState;
- (void)_persistentStateQueue_rollbackSpeculativeFailureCharge;
- (void)_persistentStateQueue_unlockFailed;
- (void)_persistentStateQueue_unlockSucceeded;
- (void)_setLockStateValue:(id)value forKey:(id)key;
- (void)dealloc;
- (void)notePasscodeEntryBegan;
- (void)notePasscodeEntryCancelled;
- (void)notePasscodeUnlockFailed;
- (void)notePasscodeUnlockSucceeded;
@end

@implementation MKBDeviceLockModelEducationalMode

- (void)dealloc
{
  persistentStateQueue = self->_persistentStateQueue;
  if (persistentStateQueue)
  {
    dispatch_release(persistentStateQueue);
  }

  v4.receiver = self;
  v4.super_class = MKBDeviceLockModelEducationalMode;
  [(MKBDeviceLockModelEducationalMode *)&v4 dealloc];
}

- (void)notePasscodeEntryBegan
{
  persistentStateQueue = self->_persistentStateQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000ACC8;
  block[3] = &unk_100034C80;
  block[4] = self;
  dispatch_sync(persistentStateQueue, block);
}

- (void)notePasscodeEntryCancelled
{
  persistentStateQueue = self->_persistentStateQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000AD44;
  block[3] = &unk_100034C80;
  block[4] = self;
  dispatch_sync(persistentStateQueue, block);
}

- (void)notePasscodeUnlockSucceeded
{
  persistentStateQueue = self->_persistentStateQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000ADC0;
  block[3] = &unk_100034C80;
  block[4] = self;
  dispatch_sync(persistentStateQueue, block);
}

- (void)notePasscodeUnlockFailed
{
  persistentStateQueue = self->_persistentStateQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000AE3C;
  block[3] = &unk_100034C80;
  block[4] = self;
  dispatch_sync(persistentStateQueue, block);
}

- (BOOL)isPermanentlyBlocked
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 1;
  persistentStateQueue = self->_persistentStateQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10000AEF4;
  v5[3] = &unk_100034F00;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(persistentStateQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (BOOL)isTemporarilyBlocked
{
  +[NSDate timeIntervalSinceReferenceDate];
  v4 = v3;
  [(MKBDeviceLockModelEducationalMode *)self timeUntilUnblockedSinceReferenceDate];
  return v4 < v5;
}

- (double)timeUntilUnblockedSinceReferenceDate
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  persistentStateQueue = self->_persistentStateQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10000AFFC;
  v5[3] = &unk_100034F00;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(persistentStateQueue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (BOOL)isWipePending
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  persistentStateQueue = self->_persistentStateQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10000B0BC;
  v5[3] = &unk_100034F00;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(persistentStateQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (unint64_t)failedPasscodeAttempts
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  persistentStateQueue = self->_persistentStateQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10000B17C;
  v5[3] = &unk_100034F00;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(persistentStateQueue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)_persistentStateQueue_beginSpeculativeFailureCharge
{
  if (!self->_speculativePasscodeFailureChargeOutstanding)
  {
    self->_speculativePasscodeFailureChargeOutstanding = 1;
    failedPasscodeAttempts = self->_failedPasscodeAttempts;
    v4 = failedPasscodeAttempts + 1;
    self->_failedPasscodeAttempts = failedPasscodeAttempts + 1;
    v5 = failedPasscodeAttempts - 9;
    v6 = 0.0;
    if (failedPasscodeAttempts - 9 >= 0xFFFFFFFFFFFFFFFCLL)
    {
      v6 = dbl_10002F2F8[failedPasscodeAttempts - 5];
    }

    p_originalDefaultsForRollback = &self->_originalDefaultsForRollback;
    if (self->_originalDefaultsForRollback)
    {
      sub_10001C920(p_originalDefaultsForRollback, a2, self);
    }

    v11[0] = @"MKBDeviceLockPendingWipe";
    v12[0] = [NSNumber numberWithBool:self->_pendingWipe];
    v11[1] = @"MKBDeviceLockBlockTimeIntervalSinceReferenceDate";
    v12[1] = [NSNumber numberWithDouble:self->_unblockTime];
    v11[2] = @"MKBDeviceLockBlocked";
    v12[2] = [NSNumber numberWithBool:self->_permanentlyBlocked];
    v11[3] = @"MKBDeviceLockFailedAttempts";
    v12[3] = [NSNumber numberWithUnsignedInteger:self->_failedPasscodeAttempts];
    v8 = [NSDictionary dictionaryWithObjects:v12 forKeys:v11 count:4];
    self->_originalDefaultsForRollback = v8;
    v9 = v8;
    [(MKBDeviceLockModelEducationalMode *)self _setLockStateValue:[NSNumber forKey:"numberWithUnsignedInteger:" numberWithUnsignedInteger:?], @"MKBDeviceLockFailedAttempts"];
    if (v5 >= 0xFFFFFFFFFFFFFFFCLL)
    {
      +[NSDate timeIntervalSinceReferenceDate];
      [(MKBDeviceLockModelEducationalMode *)self _setLockStateValue:[NSNumber forKey:"numberWithDouble:" numberWithDouble:?], @"MKBDeviceLockBlockTimeIntervalSinceReferenceDate"];
    }

    if (v4 >= 0xA)
    {
      [(MKBDeviceLockModelEducationalMode *)self _setLockStateValue:&__kCFBooleanTrue forKey:@"MKBDeviceLockPendingWipe"];
    }

    [(MKBDeviceLockModelEducationalMode *)self _persistentStateQueue_loadLockState];
  }
}

- (void)_persistentStateQueue_cancelSpeculativeFailureCharge
{
  self->_speculativePasscodeFailureChargeOutstanding = 0;

  self->_originalDefaultsForRollback = 0;
}

- (void)_persistentStateQueue_rollbackSpeculativeFailureCharge
{
  if (self->_speculativePasscodeFailureChargeOutstanding)
  {
    [(MKBDeviceLockModelEducationalMode *)self _setLockStateValue:[(NSDictionary *)self->_originalDefaultsForRollback objectForKeyedSubscript:@"MKBDeviceLockPendingWipe"] forKey:@"MKBDeviceLockPendingWipe"];
    [(MKBDeviceLockModelEducationalMode *)self _setLockStateValue:[(NSDictionary *)self->_originalDefaultsForRollback objectForKeyedSubscript:@"MKBDeviceLockBlocked"] forKey:@"MKBDeviceLockBlocked"];
    [(MKBDeviceLockModelEducationalMode *)self _setLockStateValue:[(NSDictionary *)self->_originalDefaultsForRollback objectForKeyedSubscript:@"MKBDeviceLockBlockTimeIntervalSinceReferenceDate"] forKey:@"MKBDeviceLockBlockTimeIntervalSinceReferenceDate"];
    [(MKBDeviceLockModelEducationalMode *)self _setLockStateValue:[(NSDictionary *)self->_originalDefaultsForRollback objectForKeyedSubscript:@"MKBDeviceLockFailedAttempts"] forKey:@"MKBDeviceLockFailedAttempts"];
    [(MKBDeviceLockModelEducationalMode *)self _persistentStateQueue_loadLockState];

    [(MKBDeviceLockModelEducationalMode *)self _persistentStateQueue_cancelSpeculativeFailureCharge];
  }
}

- (void)_persistentStateQueue_unlockSucceeded
{
  [(MKBDeviceLockModelEducationalMode *)self _persistentStateQueue_cancelSpeculativeFailureCharge];
  [(MKBDeviceLockModelEducationalMode *)self _setLockStateValue:0 forKey:@"MKBDeviceLockBlocked"];
  [(MKBDeviceLockModelEducationalMode *)self _setLockStateValue:0 forKey:@"MKBDeviceLockBlockTimeIntervalSinceReferenceDate"];
  [(MKBDeviceLockModelEducationalMode *)self _setLockStateValue:0 forKey:@"MKBDeviceLockPendingWipe"];
  [(MKBDeviceLockModelEducationalMode *)self _setLockStateValue:0 forKey:@"MKBDeviceLockFailedAttempts"];

  [(MKBDeviceLockModelEducationalMode *)self _persistentStateQueue_loadLockState];
}

- (void)_persistentStateQueue_unlockFailed
{
  [(MKBDeviceLockModelEducationalMode *)self _persistentStateQueue_cancelSpeculativeFailureCharge];

  [(MKBDeviceLockModelEducationalMode *)self _persistentStateQueue_loadLockState];
}

- (void)_persistentStateQueue_loadLockState
{
  v3 = [(MKBDeviceLockModelEducationalMode *)self _lockStateValueForKey:@"MKBDeviceLockBlockTimeIntervalSinceReferenceDate" ofType:objc_opt_class()];
  if (v3)
  {
    [v3 doubleValue];
  }

  else
  {
    [+[NSDate distantPast](NSDate timeIntervalSinceReferenceDate];
  }

  self->_unblockTime = v4;
  self->_pendingWipe = [-[MKBDeviceLockModelEducationalMode _lockStateValueForKey:ofType:](self _lockStateValueForKey:@"MKBDeviceLockPendingWipe" ofType:{objc_opt_class()), "BOOLValue"}];
  self->_permanentlyBlocked = [-[MKBDeviceLockModelEducationalMode _lockStateValueForKey:ofType:](self _lockStateValueForKey:@"MKBDeviceLockBlocked" ofType:{objc_opt_class()), "BOOLValue"}];
  self->_failedPasscodeAttempts = [-[MKBDeviceLockModelEducationalMode _lockStateValueForKey:ofType:](self _lockStateValueForKey:@"MKBDeviceLockFailedAttempts" ofType:{objc_opt_class()), "unsignedIntegerValue"}];
}

- (void)_loadLockState
{
  v3 = [NSMutableDictionary dictionaryWithContentsOfFile:self->_lockStatePath];
  self->_lockStateCache = v3;
  if (!v3)
  {
    self->_lockStateCache = objc_alloc_init(NSMutableDictionary);
  }
}

- (id)_lockStateValueForKey:(id)key ofType:(Class)type
{
  lockStateCache = self->_lockStateCache;
  if (!lockStateCache)
  {
    [(MKBDeviceLockModelEducationalMode *)self _loadLockState:key];
    lockStateCache = self->_lockStateCache;
  }

  v7 = [-[NSMutableDictionary objectForKeyedSubscript:](lockStateCache objectForKeyedSubscript:{self->_uid, type), "objectForKeyedSubscript:", key}];
  if (objc_opt_isKindOfClass())
  {
    return v7;
  }

  else
  {
    return 0;
  }
}

- (void)_setLockStateValue:(id)value forKey:(id)key
{
  v7 = [(NSMutableDictionary *)self->_lockStateCache objectForKeyedSubscript:self->_uid];
  if (value)
  {
    if (!v7)
    {
      [(NSMutableDictionary *)self->_lockStateCache setObject:+[NSMutableDictionary forKeyedSubscript:"dictionary"], self->_uid];
    }

    [-[NSMutableDictionary objectForKeyedSubscript:](self->_lockStateCache objectForKeyedSubscript:{self->_uid), "setObject:forKeyedSubscript:", value, key}];
  }

  else
  {
    [v7 removeObjectForKey:key];
  }

  [(NSMutableDictionary *)self->_lockStateCache writeToFile:self->_lockStatePath atomically:1];

  sync();
}

@end