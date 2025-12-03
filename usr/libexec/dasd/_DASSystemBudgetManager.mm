@interface _DASSystemBudgetManager
+ (id)identifierWithActivity:(id)activity;
+ (id)involvedProcessesForActivity:(id)activity withIdentifier:(id)identifier;
+ (id)sharedInstance;
- (_DASSystemBudgetManager)init;
- (double)balanceForBudgetWithName:(id)name;
- (double)capacityForBudgetWithName:(id)name;
- (id)allBudgets;
- (id)budgetKeyPathForBudgetName:(id)name;
- (id)customBANetworkingBudget;
- (id)dataBudgetForActivity:(id)activity;
- (id)defaultSystemCellularBudget;
- (id)defaultSystemEnergyBudget;
- (id)getMissingBudgetsWithExistingBudgets:(id)budgets;
- (id)remoteWidgetBudget;
- (void)decrementBy:(double)by forBudgetWithName:(id)name;
- (void)instantiateConfiguredBudgets;
- (void)onBudgetChange:(id)change;
- (void)postNotificationWithBudget:(id)budget;
- (void)reportActivityNoLongerRunning:(id)running;
- (void)reportActivityNoLongerRunningWithParameters:(id)parameters;
- (void)reportActivityRunning:(id)running;
- (void)reportActivityRunningWithParameters:(id)parameters;
- (void)reportMetricsForNetworkUsage:(double)usage forDataBudget:(id)budget totalUsage:(double)totalUsage usageInCell:(double)cell usageInInexpensive:(double)inexpensive forActivity:(id)activity;
- (void)reportUpdateForActivity:(id)activity withDataConsumed:(id)consumed;
- (void)setBalance:(double)balance forBudgetWithName:(id)name;
- (void)setCapacity:(double)capacity forBudgetWithName:(id)name;
- (void)startTrackingActivity:(id)activity;
- (void)stopTrackingActivity:(id)activity;
- (void)unlocked_instantiateConfiguredBudgets;
- (void)updateContextStore:(id)store;
@end

@implementation _DASSystemBudgetManager

- (_DASSystemBudgetManager)init
{
  v35.receiver = self;
  v35.super_class = _DASSystemBudgetManager;
  v2 = [(_DASSystemBudgetManager *)&v35 init];
  if (v2)
  {
    v3 = os_log_create("com.apple.duetactivityscheduler", "systemBudgetManager");
    log = v2->_log;
    v2->_log = v3;

    v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v6 = dispatch_queue_attr_make_with_qos_class(v5, QOS_CLASS_UTILITY, 0);
    v7 = dispatch_queue_create("com.apple.dasd.systemBudgetManagement", v6);
    queue = v2->_queue;
    v2->_queue = v7;

    v9 = +[_DASSharedMemoryBudgetPersistence persistence];
    sharedMemoryPersistence = v2->_sharedMemoryPersistence;
    v2->_sharedMemoryPersistence = v9;

    v11 = +[_DASNetworkUsageTracker sharedInstance];
    networkUsageTracker = v2->_networkUsageTracker;
    v2->_networkUsageTracker = v11;

    v33[0] = _NSConcreteStackBlock;
    v33[1] = 3221225472;
    v33[2] = sub_10003E6B8;
    v33[3] = &unk_1001B62E0;
    v13 = v2;
    v34 = v13;
    v14 = [_DASEnergyUsageTracker instanceWithReportingHandler:v33];
    energyUsageTracker = v13->_energyUsageTracker;
    v13->_energyUsageTracker = v14;

    v13->_lock._os_unfair_lock_opaque = 0;
    [(_DASSystemBudgetManager *)v13 instantiateConfiguredBudgets];
    v31[0] = _NSConcreteStackBlock;
    v31[1] = 3221225472;
    v31[2] = sub_10003E894;
    v31[3] = &unk_1001B6308;
    v16 = v13;
    v32 = v16;
    v17 = objc_retainBlock(v31);
    v18 = v16[3];
    v29[0] = _NSConcreteStackBlock;
    v29[1] = 3221225472;
    v29[2] = sub_10003E8A0;
    v29[3] = &unk_1001B6330;
    v30 = v17;
    v19 = v17;
    [v18 enumerateKeysAndObjectsUsingBlock:v29];
    allValues = [v16[3] allValues];
    v21 = [_DASBudgetModulator modulatorForBudgetTypes:@"System" withBudgets:allValues persistence:v2->_sharedMemoryPersistence withQueue:v2->_queue];
    v22 = v16[4];
    v16[4] = v21;

    [(_DASNetworkUsageTracker *)v2->_networkUsageTracker setModulator:v16[4]];
    allValues2 = [v16[3] allValues];
    [v16 updateContextStore:allValues2];

    out_token = 0;
    v24 = dispatch_get_global_queue(-32768, 0);
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_10003E8B0;
    handler[3] = &unk_1001B5B78;
    v27 = v16;
    notify_register_dispatch("com.apple.dasd.budgetnotifications", &out_token, v24, handler);
  }

  return v2;
}

+ (id)sharedInstance
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10003E9EC;
  block[3] = &unk_1001B54A0;
  block[4] = self;
  if (qword_10020AFE0 != -1)
  {
    dispatch_once(&qword_10020AFE0, block);
  }

  v2 = qword_10020AFE8;

  return v2;
}

- (id)defaultSystemEnergyBudget
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0x4069000000000000;
  v6 = _NSConcreteStackBlock;
  v7 = 3221225472;
  v8 = sub_10003EB60;
  v9 = &unk_1001B5708;
  selfCopy = self;
  v11 = &v12;
  if (qword_10020AFF0 != -1)
  {
    dispatch_once(&qword_10020AFF0, &v6);
  }

  v2 = v13[3];
  v3 = [NSDate now:v6];
  v4 = [_DASBudget budgetWithName:@"com.apple.dasd.systemEnergy" capacity:2 allocationType:v3 lastModulatedDate:v2];

  _Block_object_dispose(&v12, 8);

  return v4;
}

- (id)defaultSystemCellularBudget
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0x4189000000000000;
  v6 = _NSConcreteStackBlock;
  v7 = 3221225472;
  v8 = sub_10003ECD0;
  v9 = &unk_1001B5708;
  selfCopy = self;
  v11 = &v12;
  if (qword_10020AFF8 != -1)
  {
    dispatch_once(&qword_10020AFF8, &v6);
  }

  v2 = v13[3];
  v3 = [NSDate now:v6];
  v4 = [_DASBudget budgetWithName:@"com.apple.dasd.systemCellular" capacity:1 allocationType:v3 lastModulatedDate:v2];

  _Block_object_dispose(&v12, 8);

  return v4;
}

- (id)customBANetworkingBudget
{
  v2 = +[NSDate now];
  v3 = [_DASBudget budgetWithName:@"com.apple.dasd.baCellular" capacity:0 allocationType:v2 lastModulatedDate:174762.0];

  return v3;
}

- (id)remoteWidgetBudget
{
  v2 = +[NSDate now];
  v3 = [_DASBudget budgetWithName:@"com.apple.dasd.remoteWidget" capacity:0 allocationType:v2 lastModulatedDate:750.0];

  return v3;
}

- (id)dataBudgetForActivity:(id)activity
{
  activityCopy = activity;
  clientDataBudgetName = [activityCopy clientDataBudgetName];

  budgets = self->_budgets;
  if (clientDataBudgetName)
  {
    clientDataBudgetName2 = [activityCopy clientDataBudgetName];
    v8 = [(NSDictionary *)budgets objectForKeyedSubscript:clientDataBudgetName2];
  }

  else
  {
    v8 = [(NSDictionary *)budgets objectForKeyedSubscript:@"com.apple.dasd.systemCellular"];
  }

  return v8;
}

- (void)instantiateConfiguredBudgets
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10003EF20;
  block[3] = &unk_1001B5668;
  block[4] = self;
  dispatch_sync(queue, block);
}

- (void)unlocked_instantiateConfiguredBudgets
{
  sharedMemoryPersistence = self->_sharedMemoryPersistence;
  requiredBudgetNames = [(_DASSystemBudgetManager *)self requiredBudgetNames];
  v5 = [(_DASBudgetPersisting *)sharedMemoryPersistence loadBudgetsWithExpectedNames:requiredBudgetNames];

  v6 = objc_alloc_init(NSMutableArray);
  [(NSDictionary *)v6 addObjectsFromArray:v5];
  v7 = [(NSDictionary *)v6 count];
  log = self->_log;
  v9 = os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT);
  if (v7)
  {
    if (!v9)
    {
      goto LABEL_7;
    }

    *buf = 138412290;
    v32 = v6;
    v10 = "Found stored budgets: %@";
    v11 = log;
    v12 = 12;
  }

  else
  {
    if (!v9)
    {
      goto LABEL_7;
    }

    *buf = 0;
    v10 = "No stored budgets";
    v11 = log;
    v12 = 2;
  }

  _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, v10, buf, v12);
LABEL_7:
  v13 = [(_DASSystemBudgetManager *)self getMissingBudgetsWithExistingBudgets:v6];
  v14 = objc_alloc_init(NSMutableDictionary);
  [v14 addEntriesFromDictionary:v13];
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v15 = v6;
  v16 = [(NSDictionary *)v15 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v27;
    do
    {
      for (i = 0; i != v17; i = i + 1)
      {
        if (*v27 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v26 + 1) + 8 * i);
        name = [v20 name];
        [v14 setObject:v20 forKeyedSubscript:name];
      }

      v17 = [(NSDictionary *)v15 countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v17);
  }

  v22 = [v14 copy];
  budgets = self->_budgets;
  self->_budgets = v22;

  v24 = self->_log;
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    v25 = self->_budgets;
    *buf = 138412290;
    v32 = v25;
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Loaded + new Budgets: %@", buf, 0xCu);
  }
}

- (id)getMissingBudgetsWithExistingBudgets:(id)budgets
{
  budgetsCopy = budgets;
  context = objc_autoreleasePoolPush();
  v5 = +[NSMutableDictionary dictionary];
  requiredBudgetNames = [(_DASSystemBudgetManager *)self requiredBudgetNames];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  obj = budgetsCopy;
  v7 = [obj countByEnumeratingWithState:&v32 objects:v39 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v33;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v33 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v32 + 1) + 8 * i);
        name = [v11 name];

        if (name)
        {
          name2 = [v11 name];
          [requiredBudgetNames removeObject:name2];
        }

        else
        {
          log = self->_log;
          if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "Skipping adding stored budget without a name", buf, 2u);
          }
        }
      }

      v8 = [obj countByEnumeratingWithState:&v32 objects:v39 count:16];
    }

    while (v8);
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v15 = requiredBudgetNames;
  v16 = [v15 countByEnumeratingWithState:&v28 objects:v38 count:16];
  if (!v16)
  {
    v18 = 0;
    goto LABEL_32;
  }

  v17 = v16;
  v18 = 0;
  v19 = *v29;
  do
  {
    for (j = 0; j != v17; j = j + 1)
    {
      if (*v29 != v19)
      {
        objc_enumerationMutation(v15);
      }

      v21 = *(*(&v28 + 1) + 8 * j);
      if ([v21 isEqualToString:@"com.apple.dasd.systemEnergy"])
      {
        defaultSystemEnergyBudget = [(_DASSystemBudgetManager *)self defaultSystemEnergyBudget];
      }

      else if ([v21 isEqualToString:@"com.apple.dasd.systemCellular"])
      {
        defaultSystemEnergyBudget = [(_DASSystemBudgetManager *)self defaultSystemCellularBudget];
      }

      else if ([v21 isEqualToString:@"com.apple.dasd.baCellular"])
      {
        defaultSystemEnergyBudget = [(_DASSystemBudgetManager *)self customBANetworkingBudget];
      }

      else
      {
        if (![v21 isEqualToString:@"com.apple.dasd.remoteWidget"])
        {
          goto LABEL_26;
        }

        defaultSystemEnergyBudget = [(_DASSystemBudgetManager *)self remoteWidgetBudget];
      }

      v23 = defaultSystemEnergyBudget;

      v18 = v23;
LABEL_26:
      [v5 setObject:v18 forKeyedSubscript:v21];
      v24 = self->_log;
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v37 = v18;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Added missing budget: %@", buf, 0xCu);
      }
    }

    v17 = [v15 countByEnumeratingWithState:&v28 objects:v38 count:16];
  }

  while (v17);
LABEL_32:

  objc_autoreleasePoolPop(context);

  return v5;
}

- (id)budgetKeyPathForBudgetName:(id)name
{
  nameCopy = name;
  v4 = @"com.apple.dasd.baCellular";
  if ([nameCopy isEqualToString:@"com.apple.dasd.baCellular"] || (v4 = @"com.apple.dasd.remoteWidget", objc_msgSend(nameCopy, "isEqualToString:", @"com.apple.dasd.remoteWidget")))
  {
    v5 = [NSString stringWithFormat:@"/system/budget/%@", v4];
    v6 = [_CDContextualKeyPath keyPathWithKey:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)postNotificationWithBudget:(id)budget
{
  budgetCopy = budget;
  [budgetCopy balance];
  v4 = v3;
  name = [budgetCopy name];
  v6 = [name isEqualToString:@"com.apple.dasd.systemEnergy"];

  if (v6)
  {
    v7 = @"Negative";
    if (v4 > 0.0)
    {
      v7 = @"Positive";
    }

    v8 = [NSString stringWithFormat:@"Energy Budget is %@", v7];
    [budgetCopy balance];
    v10 = [NSString stringWithFormat:@"Exact budget value is %.0lf", v9];
    v11 = +[_DASNotificationManager sharedManager];
    v12 = v11;
    v13 = v8;
    v14 = v10;
    v15 = 0;
  }

  else
  {
    name2 = [budgetCopy name];
    v17 = [name2 isEqualToString:@"com.apple.dasd.systemCellular"];

    if (!v17)
    {
      goto LABEL_10;
    }

    v18 = @"Negative";
    if (v4 > 0.0)
    {
      v18 = @"Positive";
    }

    v8 = [NSString stringWithFormat:@"Data Budget is %@", v18];
    [budgetCopy balance];
    v10 = [NSString stringWithFormat:@"Exact budget value is %.1lfMB", v19 * 0.000000953674316];
    v11 = +[_DASNotificationManager sharedManager];
    v12 = v11;
    v15 = @"network";
    v13 = v8;
    v14 = v10;
  }

  [v11 postNotificationAtDate:0 withTitle:v13 withTextContent:v14 icon:v15 url:0 expirationDate:0];

LABEL_10:
}

- (void)onBudgetChange:(id)change
{
  changeCopy = change;
  [changeCopy balance];
  v6 = [NSNumber numberWithInt:v5 > 0.0];
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    v8 = log;
    name = [changeCopy name];
    v20 = 138412546;
    v21 = name;
    v22 = 2114;
    v23 = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Updating budget status for %@ to %{public}@", &v20, 0x16u);
  }

  v10 = +[_CDClientContext userContext];
  name2 = [changeCopy name];
  v12 = [name2 isEqualToString:@"com.apple.dasd.systemEnergy"];

  if (v12)
  {
    v13 = +[_CDContextQueries keyPathForEnergyBudgetRemainingStatus];
LABEL_7:
    v16 = v13;
LABEL_8:
    [v10 setObject:v6 forKeyedSubscript:v16];
    goto LABEL_9;
  }

  name3 = [changeCopy name];
  v15 = [name3 isEqualToString:@"com.apple.dasd.systemCellular"];

  if (v15)
  {
    v13 = +[_CDContextQueries keyPathForNetworkingBudgetRemainingStatus];
    goto LABEL_7;
  }

  name4 = [changeCopy name];
  v16 = [(_DASSystemBudgetManager *)self budgetKeyPathForBudgetName:name4];

  if (v16)
  {
    goto LABEL_8;
  }

LABEL_9:

  v17 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.duetactivityscheduler"];
  v18 = [v17 BOOLForKey:@"postBudgetNotifications"];

  if (v18)
  {
    [(_DASSystemBudgetManager *)self postNotificationWithBudget:changeCopy];
  }
}

- (void)updateContextStore:(id)store
{
  storeCopy = store;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = [storeCopy countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(storeCopy);
        }

        [(_DASSystemBudgetManager *)self onBudgetChange:*(*(&v9 + 1) + 8 * v8)];
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [storeCopy countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

+ (id)involvedProcessesForActivity:(id)activity withIdentifier:(id)identifier
{
  identifierCopy = identifier;
  activityCopy = activity;
  v7 = +[NSMutableSet set];
  relatedApplications = [activityCopy relatedApplications];
  involvedProcesses = [activityCopy involvedProcesses];

  if ([involvedProcesses count])
  {
    [v7 addObjectsFromArray:involvedProcesses];
  }

  if ([relatedApplications count])
  {
    [v7 addObjectsFromArray:relatedApplications];
  }

  if (identifierCopy)
  {
    [v7 addObject:identifierCopy];
  }

  return v7;
}

+ (id)identifierWithActivity:(id)activity
{
  activityCopy = activity;
  clientName = [activityCopy clientName];
  if ([clientName isEqualToString:_DASClientNameXPCActivity])
  {
    goto LABEL_5;
  }

  clientName2 = [activityCopy clientName];
  if (([clientName2 isEqualToString:_DASClientNameBGST] & 1) != 0 || objc_msgSend(activityCopy, "delayedStart"))
  {

LABEL_5:
    goto LABEL_6;
  }

  userInfo = [activityCopy userInfo];
  v11 = [userInfo objectForKeyedSubscript:kNWEndpointKey];

  if (v11)
  {
    bundleId2 = @"nsurlsessiond";
    goto LABEL_18;
  }

LABEL_6:
  bundleId = [activityCopy bundleId];

  if (bundleId)
  {
    bundleId2 = [activityCopy bundleId];
    goto LABEL_18;
  }

  if ([activityCopy pid])
  {
    bundleId2 = +[_DASUtils processNameFromPID:](_DASUtils, "processNameFromPID:", [activityCopy pid]);
    if (bundleId2)
    {
      goto LABEL_18;
    }

    v8 = [_DASDaemonLogger logForCategory:@"systemBudgetManager"];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10011DF3C(activityCopy);
    }
  }

  v9 = [_DASDaemonLogger logForCategory:@"systemBudgetManager"];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    sub_10011DFF8(activityCopy);
  }

  bundleId2 = 0;
LABEL_18:

  return bundleId2;
}

- (id)allBudgets
{
  v3 = +[NSMutableArray array];
  budgets = self->_budgets;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10003FE84;
  v8[3] = &unk_1001B5D48;
  v9 = v3;
  v5 = v3;
  [(NSDictionary *)budgets enumerateKeysAndObjectsUsingBlock:v8];
  v6 = [v5 copy];

  return v6;
}

- (double)balanceForBudgetWithName:(id)name
{
  v3 = [(NSDictionary *)self->_budgets objectForKeyedSubscript:name];
  [v3 balance];
  v5 = v4;

  return v5;
}

- (double)capacityForBudgetWithName:(id)name
{
  v3 = [(NSDictionary *)self->_budgets objectForKeyedSubscript:name];
  [v3 capacity];
  v5 = v4;

  return v5;
}

- (void)setBalance:(double)balance forBudgetWithName:(id)name
{
  nameCopy = name;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 134218242;
    balanceCopy = balance;
    v12 = 2112;
    v13 = nameCopy;
    _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "Set Balance: %.2lf for %@", &v10, 0x16u);
  }

  v8 = [(NSDictionary *)self->_budgets objectForKeyedSubscript:nameCopy];
  v9 = v8;
  if (v8)
  {
    [v8 setBalance:balance];
    [(_DASSystemBudgetManager *)self updateBudget:v9];
  }
}

- (void)decrementBy:(double)by forBudgetWithName:(id)name
{
  nameCopy = name;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 134218242;
    byCopy = by;
    v12 = 2112;
    v13 = nameCopy;
    _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "Decrement budget by: %.2lf for %@", &v10, 0x16u);
  }

  v8 = [(NSDictionary *)self->_budgets objectForKeyedSubscript:nameCopy];
  v9 = v8;
  if (v8)
  {
    [v8 decrementBy:by];
    [(_DASSystemBudgetManager *)self updateBudget:v9];
  }
}

- (void)setCapacity:(double)capacity forBudgetWithName:(id)name
{
  v6 = [(NSDictionary *)self->_budgets objectForKeyedSubscript:name];
  if (v6)
  {
    v7 = v6;
    [v6 setCapacity:capacity];
    [(_DASSystemBudgetManager *)self updateBudget:v7];
    v6 = v7;
  }
}

- (void)stopTrackingActivity:(id)activity
{
  activityCopy = activity;
  [(_DASEnergyUsageTracker *)self->_energyUsageTracker stopTrackingActivity:activityCopy];
  [(_DASNetworkUsageTracker *)self->_networkUsageTracker stopTrackingActivity:activityCopy];
  if (v5 > 0.0)
  {
    v6 = v5;
    v7 = [(_DASSystemBudgetManager *)self dataBudgetForActivity:activityCopy];
    [v7 decrementBy:v6];
    [(_DASBudgetPersisting *)self->_sharedMemoryPersistence updateBudget:v7];
    v8 = [_DASDaemonLogger logForCategory:@"networkbudgeting"];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 134218498;
      v16 = v6;
      v17 = 2112;
      v18 = activityCopy;
      v19 = 2114;
      v20 = v7;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Decremented data budget by %f for activity %@, data budget is now %{public}@", &v15, 0x20u);
    }
  }

  if ([activityCopy targetDevice] == 3)
  {
    startDate = [activityCopy startDate];
    if (startDate)
    {
      v10 = startDate;
      widgetID = [activityCopy widgetID];
      if (!widgetID)
      {
LABEL_12:

        goto LABEL_13;
      }

      v12 = widgetID;
      v13 = [(NSMutableSet *)self->_remoteActivities containsObject:activityCopy];

      if (v13)
      {
        v10 = [(NSDictionary *)self->_budgets objectForKeyedSubscript:@"com.apple.dasd.remoteWidget"];
        [v10 decrementBy:1.0];
        [(_DASBudgetPersisting *)self->_sharedMemoryPersistence updateBudget:v10];
        v14 = [_DASDaemonLogger logForCategory:@"remoteWidgetsBudget"];
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          v15 = 138412546;
          v16 = *&activityCopy;
          v17 = 2114;
          v18 = v10;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Decremented remote widget budget for activity %@, remote budget is now %{public}@", &v15, 0x16u);
        }

        [(NSMutableSet *)self->_remoteActivities removeObject:activityCopy];
        goto LABEL_12;
      }
    }
  }

LABEL_13:
}

- (void)reportActivityNoLongerRunning:(id)running
{
  runningCopy = running;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100040588;
  v7[3] = &unk_1001B56E0;
  v7[4] = self;
  v8 = runningCopy;
  v6 = runningCopy;
  dispatch_sync(queue, v7);
}

- (void)startTrackingActivity:(id)activity
{
  activityCopy = activity;
  [(_DASEnergyUsageTracker *)self->_energyUsageTracker startTrackingActivity:activityCopy];
  [(_DASNetworkUsageTracker *)self->_networkUsageTracker startTrackingActivity:activityCopy];
  if ([activityCopy targetDevice] == 3)
  {
    remoteActivities = self->_remoteActivities;
    if (!remoteActivities)
    {
      v5 = +[NSMutableSet set];
      v6 = self->_remoteActivities;
      self->_remoteActivities = v5;

      remoteActivities = self->_remoteActivities;
    }

    [(NSMutableSet *)remoteActivities addObject:activityCopy];
  }
}

- (void)reportActivityRunning:(id)running
{
  runningCopy = running;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000406C8;
  v7[3] = &unk_1001B56E0;
  v7[4] = self;
  v8 = runningCopy;
  v6 = runningCopy;
  dispatch_sync(queue, v7);
}

- (void)reportActivityRunningWithParameters:(id)parameters
{
  parametersCopy = parameters;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10004076C;
  v7[3] = &unk_1001B56E0;
  v7[4] = self;
  v8 = parametersCopy;
  v6 = parametersCopy;
  dispatch_sync(queue, v7);
}

- (void)reportActivityNoLongerRunningWithParameters:(id)parameters
{
  parametersCopy = parameters;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100040810;
  v7[3] = &unk_1001B56E0;
  v7[4] = self;
  v8 = parametersCopy;
  v6 = parametersCopy;
  dispatch_sync(queue, v7);
}

- (void)reportUpdateForActivity:(id)activity withDataConsumed:(id)consumed
{
  activityCopy = activity;
  consumedCopy = consumed;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000408E4;
  block[3] = &unk_1001B56B8;
  v12 = consumedCopy;
  selfCopy = self;
  v14 = activityCopy;
  v9 = activityCopy;
  v10 = consumedCopy;
  dispatch_sync(queue, block);
}

- (void)reportMetricsForNetworkUsage:(double)usage forDataBudget:(id)budget totalUsage:(double)totalUsage usageInCell:(double)cell usageInInexpensive:(double)inexpensive forActivity:(id)activity
{
  budgetCopy = budget;
  activityCopy = activity;
  v9 = activityCopy;
  v10 = budgetCopy;
  AnalyticsSendEventLazy();
}

@end