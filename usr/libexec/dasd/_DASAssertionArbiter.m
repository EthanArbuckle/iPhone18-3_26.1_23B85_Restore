@interface _DASAssertionArbiter
- (BOOL)areAssertionsValidForActivity:(id)a3;
- (BOOL)doesAuditToken:(id *)a3 haveEntitlement:(id)a4;
- (BOOL)isBackgroundFetchActivity:(id)a3;
- (BOOL)shouldCreateAssertionForActivity:(id)a3;
- (BOOL)shouldTakeGPUAssertionFor:(id)a3;
- (_DASAssertionArbiter)initWithDelegate:(id)a3;
- (_DASAssertionArbiterDelegate)handlerDelegate;
- (void)assertionGroup:(id)a3 wasInvalidatedForActivity:(id)a4;
- (void)cleanupForActivity:(id)a3;
@end

@implementation _DASAssertionArbiter

- (_DASAssertionArbiter)initWithDelegate:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = _DASAssertionArbiter;
  v5 = [(_DASAssertionArbiter *)&v12 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_handlerDelegate, v4);
    v7 = +[NSMutableDictionary dictionary];
    assertionGroups = v6->_assertionGroups;
    v6->_assertionGroups = v7;

    v9 = os_log_create("com.apple.duetactivityscheduler", "AssertionArbiter");
    log = v6->_log;
    v6->_log = v9;
  }

  return v6;
}

- (void)cleanupForActivity:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v6 = [(NSMutableDictionary *)v5->_assertionGroups objectForKeyedSubscript:v4];
  if (v6)
  {
    log = v5->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412290;
      v9 = v6;
      _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "Cleaning up assertions for %@", &v8, 0xCu);
    }

    [v6 invalidate];
    [(NSMutableDictionary *)v5->_assertionGroups removeObjectForKey:v4];
  }

  objc_sync_exit(v5);
}

- (BOOL)areAssertionsValidForActivity:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v6 = [(NSMutableDictionary *)v5->_assertionGroups objectForKeyedSubscript:v4];
  v7 = [v6 isActive];

  objc_sync_exit(v5);
  return v7;
}

- (BOOL)shouldCreateAssertionForActivity:(id)a3
{
  v4 = a3;
  if (([v4 isBackgroundTaskActivity] & 1) != 0 || -[_DASAssertionArbiter isBackgroundFetchActivity:](self, "isBackgroundFetchActivity:", v4))
  {
    v5 = 1;
  }

  else
  {
    v6 = [v4 launchReason];
    v5 = [v6 isEqualToString:_DASLaunchReasonHealthKit];
  }

  return v5;
}

- (BOOL)isBackgroundFetchActivity:(id)a3
{
  v3 = a3;
  v4 = [v3 launchReason];
  if ([v4 isEqualToString:_DASLaunchReasonBackgroundFetch])
  {
    v5 = 1;
  }

  else
  {
    v6 = [v3 launchReason];
    if ([v6 isEqualToString:_DASLaunchReasonBackgroundRemoteNotification])
    {
      v5 = 1;
    }

    else
    {
      v7 = [v3 launchReason];
      if ([v7 isEqualToString:_DASLaunchReasonNSURLSessionComplete])
      {
        v5 = 1;
      }

      else
      {
        v8 = [v3 launchReason];
        v5 = [v8 isEqualToString:_DASLaunchReasonNSURLSessionAuthorizationRequired];
      }
    }
  }

  return v5;
}

- (BOOL)shouldTakeGPUAssertionFor:(id)a3
{
  v4 = a3;
  v5 = [v4 continuedProcessingWrapper];
  v6 = [v5 resources];

  if ((v6 & 1) == 0)
  {
LABEL_9:
    v7 = 0;
    goto LABEL_10;
  }

  if (!-[_DASAssertionArbiter doesPID:haveEntitlement:](self, "doesPID:haveEntitlement:", [v4 pid], @"com.apple.developer.background-tasks.continued-processing.gpu"))
  {
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
    {
      sub_10011ED50(v4, log);
    }

    goto LABEL_9;
  }

  if (!+[_DASDeviceQuery supportsBackgroundGPU])
  {
    if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
    {
      sub_10011EE20();
    }

    goto LABEL_9;
  }

  v7 = 1;
LABEL_10:

  return v7;
}

- (BOOL)doesAuditToken:(id *)a3 haveEntitlement:(id)a4
{
  v6 = a4;
  v7 = *&a3->var0[4];
  *token.val = *a3->var0;
  *&token.val[4] = v7;
  v8 = SecTaskCreateWithAuditToken(0, &token);
  if (v8)
  {
    v9 = v8;
    *token.val = 0;
    v10 = SecTaskCopyValueForEntitlement(v8, v6, &token);
    if (os_log_type_enabled(self->_log, OS_LOG_TYPE_DEBUG))
    {
      sub_10011EFE4();
      if (!v10)
      {
        goto LABEL_10;
      }
    }

    else if (!v10)
    {
      goto LABEL_10;
    }

    if (objc_opt_respondsToSelector())
    {
      v11 = [v10 BOOLValue];
LABEL_11:
      v13 = *token.val;
      if (*token.val)
      {
        v14 = [*token.val code];
        log = self->_log;
        if (v14 == 3)
        {
          if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
          {
            *v17 = 0;
            _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "sectask entitlement check made for not-running process", v17, 2u);
          }
        }

        else if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
        {
          sub_10011F060();
        }
      }

      CFRelease(v9);

      goto LABEL_19;
    }

LABEL_10:
    v11 = 0;
    goto LABEL_11;
  }

  v12 = self->_log;
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    sub_10011F0C8(v12);
  }

  v11 = 0;
LABEL_19:

  return v11;
}

- (void)assertionGroup:(id)a3 wasInvalidatedForActivity:(id)a4
{
  v8 = a3;
  v6 = a4;
  v7 = self;
  objc_sync_enter(v7);
  [(NSMutableDictionary *)v7->_assertionGroups removeObjectForKey:v6];
  objc_sync_exit(v7);
}

- (_DASAssertionArbiterDelegate)handlerDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_handlerDelegate);

  return WeakRetained;
}

@end