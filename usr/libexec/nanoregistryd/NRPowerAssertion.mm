@interface NRPowerAssertion
+ (id)sharedInstance;
+ (unsigned)takeAssertionWithSuffix:(id)suffix;
- (BOOL)containsProcessGroup;
- (NRPowerAssertion)init;
- (id)addActivityWithName:(id)name;
- (void)_powerAssertionLockoutTimeout;
- (void)_removeActivityWithUUID:(id)d;
- (void)addActivityGroup:(id)group;
- (void)dumpProcesses:(id)processes isAdded:(BOOL)added;
- (void)releaseAssertion;
- (void)removeActivityWithUUID:(id)d;
- (void)renameAssertionWithSuffix:(id)suffix;
- (void)takeAssertion;
@end

@implementation NRPowerAssertion

+ (id)sharedInstance
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100089CF8;
  block[3] = &unk_1001756A8;
  block[4] = self;
  if (qword_1001B38C0 != -1)
  {
    dispatch_once(&qword_1001B38C0, block);
  }

  v2 = qword_1001B38B8;

  return v2;
}

- (void)addActivityGroup:(id)group
{
  groupCopy = group;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100089DC8;
  v7[3] = &unk_100175598;
  v7[4] = self;
  v8 = groupCopy;
  v6 = groupCopy;
  dispatch_async(queue, v7);
}

- (NRPowerAssertion)init
{
  v13.receiver = self;
  v13.super_class = NRPowerAssertion;
  v2 = [(NRPowerAssertion *)&v13 init];
  if (v2)
  {
    v3 = +[NSMutableDictionary dictionary];
    liveActivityInfos = v2->_liveActivityInfos;
    v2->_liveActivityInfos = v3;

    v5 = +[NSCountedSet set];
    liveActivities = v2->_liveActivities;
    v2->_liveActivities = v5;

    v7 = +[NSMutableArray array];
    activityGroups = v2->_activityGroups;
    v2->_activityGroups = v7;

    v2->_assertion = 0;
    v9 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v10 = dispatch_queue_create("com.apple.nanoregistryd.NRPowerAssertion", v9);
    queue = v2->_queue;
    v2->_queue = v10;
  }

  return v2;
}

- (void)dumpProcesses:(id)processes isAdded:(BOOL)added
{
  addedCopy = added;
  processesCopy = processes;
  v7 = [@"NRPowerAssertion activities: " mutableCopy];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v8 = self->_liveActivityInfos;
  v9 = [(NSMutableDictionary *)v8 countByEnumeratingWithState:&v23 objects:v29 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v24;
    if (addedCopy)
    {
      v12 = @"+";
    }

    else
    {
      v12 = @"-";
    }

    v22 = v12;
    v13 = 1;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v24 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v15 = *(*(&v23 + 1) + 8 * i);
        v16 = [(NSMutableDictionary *)self->_liveActivityInfos objectForKeyedSubscript:v15];
        if ((v13 & 1) == 0)
        {
          [v7 appendString:{@", "}];
        }

        if (processesCopy && [v15 isEqual:processesCopy])
        {
          [v7 appendString:v22];
        }

        name = [v16 name];

        if (name)
        {
          name2 = [v16 name];
          [v7 appendString:name2];
        }

        v13 = 0;
      }

      v10 = [(NSMutableDictionary *)v8 countByEnumeratingWithState:&v23 objects:v29 count:16];
      v13 = 0;
    }

    while (v10);
  }

  v19 = nr_daemon_log();
  v20 = os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT);

  if (v20)
  {
    v21 = nr_daemon_log();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v28 = v7;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
    }
  }
}

- (BOOL)containsProcessGroup
{
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = self->_activityGroups;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        if ([*(*(&v10 + 1) + 8 * i) isSubsetOfSet:{self->_liveActivities, v10}])
        {
          v8 = 1;
          goto LABEL_11;
        }
      }

      v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v8 = 0;
LABEL_11:

  return v8;
}

- (id)addActivityWithName:(id)name
{
  nameCopy = name;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_10008A3F4;
  v16 = sub_10008A404;
  v17 = 0;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10008A40C;
  block[3] = &unk_100175570;
  block[4] = self;
  v10 = nameCopy;
  v11 = &v12;
  v6 = nameCopy;
  dispatch_sync(queue, block);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

+ (unsigned)takeAssertionWithSuffix:(id)suffix
{
  suffixCopy = suffix;
  AssertionID = 0;
  if (suffixCopy)
  {
    v4 = [@"com.apple.nanoregistry" stringByAppendingString:@"."];
    v5 = [v4 stringByAppendingString:suffixCopy];
  }

  else
  {
    v5 = @"com.apple.nanoregistry";
  }

  v22[0] = @"AssertName";
  v22[1] = @"TimeoutSeconds";
  v23[0] = v5;
  v23[1] = &off_100186EE0;
  v22[2] = @"TimeoutAction";
  v22[3] = @"AssertType";
  v23[2] = @"TimeoutActionRelease";
  v23[3] = @"PreventUserIdleSystemSleep";
  v6 = [NSDictionary dictionaryWithObjects:v23 forKeys:v22 count:4];
  v7 = IOPMAssertionCreateWithProperties(v6, &AssertionID);
  v8 = nr_daemon_log();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);

  if (v9)
  {
    v10 = nr_daemon_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [NSNumber numberWithUnsignedInt:AssertionID];
      v12 = [NSNumber numberWithInt:v7];
      *buf = 138412802;
      v17 = v11;
      v18 = 2112;
      v19 = v5;
      v20 = 2114;
      v21 = v12;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "NRPowerAssertion power assertion %@ %@ created status=%{public}@", buf, 0x20u);
    }
  }

  v13 = AssertionID;

  return v13;
}

- (void)takeAssertion
{
  if (!self->_assertion)
  {
    self->_assertion = [objc_opt_class() takeAssertionWithSuffix:self->_assertionSuffix];
  }
}

- (void)releaseAssertion
{
  [objc_opt_class() releaseAssertion:self->_assertion];
  self->_assertion = 0;
  assertionSuffix = self->_assertionSuffix;
  self->_assertionSuffix = 0;
}

- (void)renameAssertionWithSuffix:(id)suffix
{
  suffixCopy = suffix;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10008AAA4;
  v7[3] = &unk_100175598;
  v7[4] = self;
  v8 = suffixCopy;
  v6 = suffixCopy;
  dispatch_async(queue, v7);
}

- (void)_powerAssertionLockoutTimeout
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10008ABAC;
  block[3] = &unk_100175660;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)_removeActivityWithUUID:(id)d
{
  dCopy = d;
  v5 = [(NSMutableDictionary *)self->_liveActivityInfos objectForKeyedSubscript:dCopy];
  v6 = v5;
  if (v5)
  {
    liveActivities = self->_liveActivities;
    name = [v5 name];
    [(NSCountedSet *)liveActivities removeObject:name];

    LOBYTE(liveActivities) = [(NRPowerAssertion *)self containsProcessGroup];
    uuid = [v6 uuid];
    [(NRPowerAssertion *)self dumpProcesses:uuid isAdded:0];

    [(NSMutableDictionary *)self->_liveActivityInfos removeObjectForKey:dCopy];
    if ((liveActivities & 1) == 0)
    {
      [(NRPowerAssertion *)self releaseAssertion];
      if (self->_assertionLockoutTimer)
      {
        v10 = nr_daemon_log();
        v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);

        if (v11)
        {
          v12 = nr_daemon_log();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "NRPowerAssertion stopping/resetting lockout timer", buf, 2u);
          }
        }

        [(AbstractTimer *)self->_assertionLockoutTimer invalidate];
        assertionLockoutTimer = self->_assertionLockoutTimer;
        self->_assertionLockoutTimer = 0;
      }

      if (self->_assertionLockoutTimerDidTimeOut)
      {
        v14 = nr_daemon_log();
        v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);

        if (v15)
        {
          v16 = nr_daemon_log();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            *v22 = 0;
            _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "NRPowerAssertion clearing _assertionLockoutTimerDidTimeOut", v22, 2u);
          }
        }

        self->_assertionLockoutTimerDidTimeOut = 0;
      }

      if (self->_transaction)
      {
        v17 = nr_daemon_log();
        v18 = os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);

        if (v18)
        {
          v19 = nr_daemon_log();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
          {
            *v21 = 0;
            _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Assertion timer reset! No power assertion called for, NRPowerAssertion releasing transaction", v21, 2u);
          }
        }

        transaction = self->_transaction;
        self->_transaction = 0;
      }
    }
  }
}

- (void)removeActivityWithUUID:(id)d
{
  dCopy = d;
  v5 = dCopy;
  if (dCopy)
  {
    queue = self->_queue;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_10008AFE4;
    v7[3] = &unk_100175598;
    v7[4] = self;
    v8 = dCopy;
    dispatch_async(queue, v7);
  }
}

@end