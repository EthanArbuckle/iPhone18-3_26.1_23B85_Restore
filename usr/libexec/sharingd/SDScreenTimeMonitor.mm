@interface SDScreenTimeMonitor
- (SDScreenTimeMonitor)initWithPoliciesChangedHandler:(id)handler;
- (id)bundleIDForActivity:(id)activity;
- (int64_t)cachedPolicyForActivityType:(id)type;
- (int64_t)cachedPolicyForBundleID:(id)d;
- (void)_handlePolicyChange;
- (void)_handleUpdateForPoliciesByBundleIdentifier:(id)identifier;
- (void)_retrieveMissingPolicies;
- (void)_retrievePoliciesForBundleIdentifiers:(id)identifiers;
- (void)_updateBundleIdentifierMappings;
- (void)invalidate;
- (void)requestPoliciesForActivities:(id)activities;
- (void)updateWithActivities:(id)activities;
@end

@implementation SDScreenTimeMonitor

- (SDScreenTimeMonitor)initWithPoliciesChangedHandler:(id)handler
{
  handlerCopy = handler;
  v25.receiver = self;
  v25.super_class = SDScreenTimeMonitor;
  v5 = [(SDScreenTimeMonitor *)&v25 init];
  if (v5)
  {
    v6 = objc_opt_new();
    bundleIdentifierByActivityType = v5->_bundleIdentifierByActivityType;
    v5->_bundleIdentifierByActivityType = v6;

    v8 = objc_opt_new();
    policiesByBundleIdentifier = v5->_policiesByBundleIdentifier;
    v5->_policiesByBundleIdentifier = v8;

    objc_initWeak(&location, v5);
    v10 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v11 = dispatch_queue_create("com.apple.sharing.screenTimeUpdateQueue", v10);
    workQueue = v5->_workQueue;
    v5->_workQueue = v11;

    v13 = [DMFApplicationPolicyMonitor alloc];
    v19 = _NSConcreteStackBlock;
    v20 = 3221225472;
    v21 = sub_1001403B4;
    v22 = &unk_1008CDD98;
    objc_copyWeak(&v23, &location);
    v14 = [v13 initWithPolicyChangeHandler:&v19];
    screenTimeMonitor = v5->_screenTimeMonitor;
    v5->_screenTimeMonitor = v14;

    v16 = [handlerCopy copy];
    policiesChangedHandler = v5->_policiesChangedHandler;
    v5->_policiesChangedHandler = v16;

    atomic_store(0, &v5->_isCacheReady);
    objc_destroyWeak(&v23);
    objc_destroyWeak(&location);
  }

  return v5;
}

- (void)_handlePolicyChange
{
  workQueue = self->_workQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100140468;
  block[3] = &unk_1008CDEA0;
  block[4] = self;
  dispatch_async(workQueue, block);
}

- (void)invalidate
{
  workQueue = self->_workQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100140534;
  block[3] = &unk_1008CDEA0;
  block[4] = self;
  dispatch_async(workQueue, block);
}

- (int64_t)cachedPolicyForBundleID:(id)d
{
  dCopy = d;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  if ([(SDScreenTimeMonitor *)self isCacheReady])
  {
    workQueue = self->_workQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10014069C;
    block[3] = &unk_1008D1580;
    v10 = &v11;
    block[4] = self;
    v9 = dCopy;
    dispatch_sync(workQueue, block);
  }

  v6 = v12[3];
  _Block_object_dispose(&v11, 8);

  return v6;
}

- (void)updateWithActivities:(id)activities
{
  activitiesCopy = activities;
  workQueue = self->_workQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100140794;
  v7[3] = &unk_1008CE028;
  v7[4] = self;
  v8 = activitiesCopy;
  v6 = activitiesCopy;
  dispatch_async(workQueue, v7);
}

- (void)requestPoliciesForActivities:(id)activities
{
  activitiesCopy = activities;
  workQueue = self->_workQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100140930;
  v7[3] = &unk_1008CE028;
  v8 = activitiesCopy;
  selfCopy = self;
  v6 = activitiesCopy;
  dispatch_sync(workQueue, v7);
}

- (int64_t)cachedPolicyForActivityType:(id)type
{
  typeCopy = type;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  if ([(SDScreenTimeMonitor *)self isCacheReady])
  {
    workQueue = self->_workQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100140C40;
    block[3] = &unk_1008D15A8;
    block[4] = self;
    v9 = typeCopy;
    v10 = &v11;
    dispatch_sync(workQueue, block);
  }

  v6 = v12[3];
  _Block_object_dispose(&v11, 8);

  return v6;
}

- (id)bundleIDForActivity:(id)activity
{
  activityCopy = activity;
  activityType = [activityCopy activityType];
  v5 = activityType;
  if (activityType == UIActivityTypeMessage)
  {

    goto LABEL_6;
  }

  if ((activityType != 0) == (UIActivityTypeMessage == 0))
  {

    goto LABEL_8;
  }

  v6 = [(NSString *)activityType isEqual:UIActivityTypeMessage];

  if (v6)
  {
LABEL_6:
    containingAppBundleIdentifier = @"com.apple.MobileSMS";
    goto LABEL_30;
  }

LABEL_8:
  activityType2 = [activityCopy activityType];
  v9 = activityType2;
  if (activityType2 == UIActivityTypeMail)
  {

    goto LABEL_13;
  }

  if ((activityType2 != 0) == (UIActivityTypeMail == 0))
  {

    goto LABEL_15;
  }

  v10 = [(NSString *)activityType2 isEqual:UIActivityTypeMail];

  if (v10)
  {
LABEL_13:
    containingAppBundleIdentifier = @"com.apple.mobilemail";
    goto LABEL_30;
  }

LABEL_15:
  activityType3 = [activityCopy activityType];
  v12 = activityType3;
  if (activityType3 == UIActivityTypeSharePlay)
  {

    goto LABEL_20;
  }

  if ((activityType3 != 0) != (UIActivityTypeSharePlay == 0))
  {
    v13 = [(NSString *)activityType3 isEqual:UIActivityTypeSharePlay];

    if ((v13 & 1) == 0)
    {
      goto LABEL_22;
    }

LABEL_20:
    containingAppBundleIdentifier = @"com.apple.telephonyutilities.callservicesd";
    goto LABEL_30;
  }

LABEL_22:
  applicationExtension = [activityCopy applicationExtension];
  if (applicationExtension)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      containingAppBundleIdentifier = [activityCopy containingAppBundleIdentifier];
    }

    else
    {
      v15 = share_sheet_log();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
      {
        sub_100141724(activityCopy);
      }

      _plugIn = [applicationExtension _plugIn];
      identifier = [_plugIn identifier];
      v18 = [LSPlugInKitProxy pluginKitProxyForIdentifier:identifier];

      containingBundle = [v18 containingBundle];
      containingAppBundleIdentifier = [containingBundle bundleIdentifier];
    }
  }

  else
  {
    containingAppBundleIdentifier = 0;
  }

LABEL_30:

  return containingAppBundleIdentifier;
}

- (void)_updateBundleIdentifierMappings
{
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v3 = self->_activities;
  v4 = [(NSArray *)v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v16;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v16 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v15 + 1) + 8 * i);
        bundleIdentifierByActivityType = self->_bundleIdentifierByActivityType;
        activityType = [v8 activityType];
        v11 = [(NSMutableDictionary *)bundleIdentifierByActivityType objectForKeyedSubscript:activityType];

        if (!v11)
        {
          v12 = [(SDScreenTimeMonitor *)self bundleIDForActivity:v8];
          if (!v12)
          {
            continue;
          }

          v11 = v12;
        }

        v13 = self->_bundleIdentifierByActivityType;
        activityType2 = [v8 activityType];
        [(NSMutableDictionary *)v13 setObject:v11 forKeyedSubscript:activityType2];
      }

      v5 = [(NSArray *)v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v5);
  }
}

- (void)_retrieveMissingPolicies
{
  dispatch_assert_queue_V2(self->_workQueue);
  v3 = objc_opt_new();
  bundleIdentifierByActivityType = self->_bundleIdentifierByActivityType;
  v6 = _NSConcreteStackBlock;
  v7 = 3221225472;
  v8 = sub_1001411A0;
  v9 = &unk_1008D15D0;
  selfCopy = self;
  v5 = v3;
  v11 = v5;
  [(NSMutableDictionary *)bundleIdentifierByActivityType enumerateKeysAndObjectsUsingBlock:&v6];
  if ([v5 count])
  {
    [(SDScreenTimeMonitor *)self _retrievePoliciesForBundleIdentifiers:v5];
  }
}

- (void)_handleUpdateForPoliciesByBundleIdentifier:(id)identifier
{
  [(NSMutableDictionary *)self->_policiesByBundleIdentifier addEntriesFromDictionary:identifier];
  v4 = [NSMutableArray arrayWithCapacity:[(NSMutableDictionary *)self->_policiesByBundleIdentifier count]];
  policiesByBundleIdentifier = self->_policiesByBundleIdentifier;
  v10 = _NSConcreteStackBlock;
  v11 = 3221225472;
  v12 = sub_100141340;
  v13 = &unk_1008D15F8;
  selfCopy = self;
  v6 = v4;
  v15 = v6;
  [(NSMutableDictionary *)policiesByBundleIdentifier enumerateKeysAndObjectsUsingBlock:&v10];
  [(SDScreenTimeMonitor *)self setRestrictedActivityTypes:v6, v10, v11, v12, v13, selfCopy];
  [(SDScreenTimeMonitor *)self setCacheReady:1];
  policiesChangedHandler = [(SDScreenTimeMonitor *)self policiesChangedHandler];

  if (policiesChangedHandler)
  {
    policiesChangedHandler2 = [(SDScreenTimeMonitor *)self policiesChangedHandler];
    v9 = [v6 copy];
    (policiesChangedHandler2)[2](policiesChangedHandler2, v9);
  }
}

- (void)_retrievePoliciesForBundleIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  objc_initWeak(&location, self);
  screenTimeMonitor = self->_screenTimeMonitor;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001414C4;
  v7[3] = &unk_1008D1620;
  v6 = identifiersCopy;
  v8 = v6;
  selfCopy = self;
  objc_copyWeak(&v10, &location);
  [(DMFApplicationPolicyMonitor *)screenTimeMonitor requestPoliciesForBundleIdentifiers:v6 completionHandler:v7];
  objc_destroyWeak(&v10);

  objc_destroyWeak(&location);
}

@end