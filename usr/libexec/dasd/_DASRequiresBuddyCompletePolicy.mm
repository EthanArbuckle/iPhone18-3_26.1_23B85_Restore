@interface _DASRequiresBuddyCompletePolicy
+ (id)policyInstance;
- (BOOL)appliesToActivity:(id)activity;
- (BOOL)buddyCompleteWithActivity:(id)activity withState:(id)state;
- (_DASRequiresBuddyCompletePolicy)init;
- (id)responseForActivity:(id)activity withState:(id)state;
- (void)_updateCache;
@end

@implementation _DASRequiresBuddyCompletePolicy

- (_DASRequiresBuddyCompletePolicy)init
{
  v11.receiver = self;
  v11.super_class = _DASRequiresBuddyCompletePolicy;
  v2 = [(_DASRequiresBuddyCompletePolicy *)&v11 init];
  v3 = v2;
  if (v2)
  {
    policyName = v2->_policyName;
    v2->_policyName = @"Requires Buddy Complete Policy";

    v5 = objc_opt_new();
    buddyCompleteForUserIdentifier = v3->_buddyCompleteForUserIdentifier;
    v3->_buddyCompleteForUserIdentifier = v5;

    v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v8 = dispatch_queue_create("com.apple.dasd.buddyComplete", v7);
    queue = v3->_queue;
    v3->_queue = v8;

    v3->_fwIsAvailable = sub_100046A60() != 0;
  }

  return v3;
}

- (void)_updateCache
{
  if (self->_fwIsAvailable)
  {
    dispatch_assert_queue_V2(self->_queue);
    v23 = 0;
    v24 = &v23;
    v25 = 0x2020000000;
    v3 = off_10020B0A0;
    v26 = off_10020B0A0;
    if (!off_10020B0A0)
    {
      v22[0] = _NSConcreteStackBlock;
      v22[1] = 3221225472;
      v22[2] = sub_100046BA4;
      v22[3] = &unk_1001B5798;
      v22[4] = &v23;
      sub_100046BA4(v22);
      v3 = v24[3];
    }

    _Block_object_dispose(&v23, 8);
    if (!v3)
    {
      sub_10011E650();
      __break(1u);
    }

    v4 = v3();
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    keyEnumerator = [(NSMutableDictionary *)self->_buddyCompleteForUserIdentifier keyEnumerator];
    v6 = [keyEnumerator countByEnumeratingWithState:&v18 objects:v27 count:16];
    if (v6)
    {
      v7 = *v19;
      do
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v19 != v7)
          {
            objc_enumerationMutation(keyEnumerator);
          }

          v9 = *(*(&v18 + 1) + 8 * i);
          v10 = [NSNumber numberWithBool:v4 ^ 1u];
          [(NSMutableDictionary *)self->_buddyCompleteForUserIdentifier setObject:v10 forKeyedSubscript:v9];
        }

        v6 = [keyEnumerator countByEnumeratingWithState:&v18 objects:v27 count:16];
      }

      while (v6);
    }

    timer = self->_timer;
    if (v4)
    {
      if (!timer)
      {
        v12 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, self->_queue);
        v13 = self->_timer;
        self->_timer = v12;

        v14 = self->_timer;
        dispatch_set_qos_class_fallback();
        dispatch_source_set_timer(self->_timer, 0, 0x37E11D600uLL, 0x3B9ACA00uLL);
        v15 = self->_timer;
        handler[0] = _NSConcreteStackBlock;
        handler[1] = 3221225472;
        handler[2] = sub_1000465A8;
        handler[3] = &unk_1001B5668;
        handler[4] = self;
        dispatch_source_set_event_handler(v15, handler);
        dispatch_activate(self->_timer);
      }
    }

    else if (timer)
    {
      dispatch_source_cancel(timer);
      v16 = self->_timer;
      self->_timer = 0;
    }
  }
}

+ (id)policyInstance
{
  if (qword_10020B088 != -1)
  {
    sub_10011E674();
  }

  v3 = qword_10020B090;

  return v3;
}

- (BOOL)appliesToActivity:(id)activity
{
  activityCopy = activity;
  v5 = activityCopy;
  if (self->_fwIsAvailable)
  {
    if ([activityCopy requiresBuddyComplete])
    {
      v6 = 1;
    }

    else
    {
      fastPass = [v5 fastPass];
      v6 = fastPass != 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)buddyCompleteWithActivity:(id)activity withState:(id)state
{
  activityCopy = activity;
  v6 = activityCopy;
  if (self->_fwIsAvailable)
  {
    v14 = 0;
    v15 = &v14;
    v16 = 0x2020000000;
    v17 = 0;
    queue = self->_queue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10004679C;
    block[3] = &unk_1001B5AB8;
    v11 = activityCopy;
    selfCopy = self;
    v13 = &v14;
    dispatch_sync(queue, block);
    v8 = *(v15 + 24);

    _Block_object_dispose(&v14, 8);
  }

  else
  {
    v8 = 1;
  }

  return v8 & 1;
}

- (id)responseForActivity:(id)activity withState:(id)state
{
  activityCopy = activity;
  v7 = [(_DASRequiresBuddyCompletePolicy *)self buddyCompleteWithActivity:activityCopy withState:state];
  v8 = [[_DASPolicyResponseRationale alloc] initWithPolicyName:self->_policyName];
  v9 = [NSNumber numberWithBool:v7];
  v10 = [NSPredicate predicateWithFormat:@"buddyComplete = %@", v9];
  [(_DASPolicyResponseRationale *)v8 addRationaleWithCondition:v10];

  if (v7)
  {
    v11 = 0;
  }

  else if ([(_DASRequiresBuddyCompletePolicy *)self appliesToActivity:activityCopy])
  {
    v11 = 33;
  }

  else
  {
    v11 = 0;
  }

  v12 = [_DASPolicyResponse policyResponseWithDecision:v11 validityDuration:v8 rationale:0x384uLL];

  return v12;
}

@end