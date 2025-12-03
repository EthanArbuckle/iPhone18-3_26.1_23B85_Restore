@interface _DASAssertionArbiter
- (BOOL)areAssertionsValidForActivity:(id)activity;
- (BOOL)doesAuditToken:(id *)token haveEntitlement:(id)entitlement;
- (BOOL)isBackgroundFetchActivity:(id)activity;
- (BOOL)shouldCreateAssertionForActivity:(id)activity;
- (BOOL)shouldTakeGPUAssertionFor:(id)for;
- (_DASAssertionArbiter)initWithDelegate:(id)delegate;
- (_DASAssertionArbiterDelegate)handlerDelegate;
- (void)assertionGroup:(id)group wasInvalidatedForActivity:(id)activity;
- (void)cleanupForActivity:(id)activity;
@end

@implementation _DASAssertionArbiter

- (_DASAssertionArbiter)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v12.receiver = self;
  v12.super_class = _DASAssertionArbiter;
  v5 = [(_DASAssertionArbiter *)&v12 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_handlerDelegate, delegateCopy);
    v7 = +[NSMutableDictionary dictionary];
    assertionGroups = v6->_assertionGroups;
    v6->_assertionGroups = v7;

    v9 = os_log_create("com.apple.duetactivityscheduler", "AssertionArbiter");
    log = v6->_log;
    v6->_log = v9;
  }

  return v6;
}

- (void)cleanupForActivity:(id)activity
{
  activityCopy = activity;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v6 = [(NSMutableDictionary *)selfCopy->_assertionGroups objectForKeyedSubscript:activityCopy];
  if (v6)
  {
    log = selfCopy->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412290;
      v9 = v6;
      _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "Cleaning up assertions for %@", &v8, 0xCu);
    }

    [v6 invalidate];
    [(NSMutableDictionary *)selfCopy->_assertionGroups removeObjectForKey:activityCopy];
  }

  objc_sync_exit(selfCopy);
}

- (BOOL)areAssertionsValidForActivity:(id)activity
{
  activityCopy = activity;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v6 = [(NSMutableDictionary *)selfCopy->_assertionGroups objectForKeyedSubscript:activityCopy];
  isActive = [v6 isActive];

  objc_sync_exit(selfCopy);
  return isActive;
}

- (BOOL)shouldCreateAssertionForActivity:(id)activity
{
  activityCopy = activity;
  if (([activityCopy isBackgroundTaskActivity] & 1) != 0 || -[_DASAssertionArbiter isBackgroundFetchActivity:](self, "isBackgroundFetchActivity:", activityCopy))
  {
    v5 = 1;
  }

  else
  {
    launchReason = [activityCopy launchReason];
    v5 = [launchReason isEqualToString:_DASLaunchReasonHealthKit];
  }

  return v5;
}

- (BOOL)isBackgroundFetchActivity:(id)activity
{
  activityCopy = activity;
  launchReason = [activityCopy launchReason];
  if ([launchReason isEqualToString:_DASLaunchReasonBackgroundFetch])
  {
    v5 = 1;
  }

  else
  {
    launchReason2 = [activityCopy launchReason];
    if ([launchReason2 isEqualToString:_DASLaunchReasonBackgroundRemoteNotification])
    {
      v5 = 1;
    }

    else
    {
      launchReason3 = [activityCopy launchReason];
      if ([launchReason3 isEqualToString:_DASLaunchReasonNSURLSessionComplete])
      {
        v5 = 1;
      }

      else
      {
        launchReason4 = [activityCopy launchReason];
        v5 = [launchReason4 isEqualToString:_DASLaunchReasonNSURLSessionAuthorizationRequired];
      }
    }
  }

  return v5;
}

- (BOOL)shouldTakeGPUAssertionFor:(id)for
{
  forCopy = for;
  continuedProcessingWrapper = [forCopy continuedProcessingWrapper];
  resources = [continuedProcessingWrapper resources];

  if ((resources & 1) == 0)
  {
LABEL_9:
    v7 = 0;
    goto LABEL_10;
  }

  if (!-[_DASAssertionArbiter doesPID:haveEntitlement:](self, "doesPID:haveEntitlement:", [forCopy pid], @"com.apple.developer.background-tasks.continued-processing.gpu"))
  {
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
    {
      sub_10011ED50(forCopy, log);
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

- (BOOL)doesAuditToken:(id *)token haveEntitlement:(id)entitlement
{
  entitlementCopy = entitlement;
  v7 = *&token->var0[4];
  *token.val = *token->var0;
  *&token.val[4] = v7;
  v8 = SecTaskCreateWithAuditToken(0, &token);
  if (v8)
  {
    v9 = v8;
    *token.val = 0;
    v10 = SecTaskCopyValueForEntitlement(v8, entitlementCopy, &token);
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
      bOOLValue = [v10 BOOLValue];
LABEL_11:
      v13 = *token.val;
      if (*token.val)
      {
        code = [*token.val code];
        log = self->_log;
        if (code == 3)
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
    bOOLValue = 0;
    goto LABEL_11;
  }

  v12 = self->_log;
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    sub_10011F0C8(v12);
  }

  bOOLValue = 0;
LABEL_19:

  return bOOLValue;
}

- (void)assertionGroup:(id)group wasInvalidatedForActivity:(id)activity
{
  groupCopy = group;
  activityCopy = activity;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(NSMutableDictionary *)selfCopy->_assertionGroups removeObjectForKey:activityCopy];
  objc_sync_exit(selfCopy);
}

- (_DASAssertionArbiterDelegate)handlerDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_handlerDelegate);

  return WeakRetained;
}

@end