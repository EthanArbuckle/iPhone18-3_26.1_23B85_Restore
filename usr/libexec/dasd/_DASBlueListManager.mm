@interface _DASBlueListManager
+ (id)managerWithContext:(id)context;
+ (int64_t)nextHoursBudgetWithPreviousBudget:(int64_t)budget;
- (BOOL)shouldBlueListPushes;
- (_DASBlueListManager)initWithContext:(id)context;
- (void)decrementPushBudgetRemaining;
- (void)registerForBlueListNotifications;
- (void)setupResetTimer;
- (void)updateBudgetsForNextSlot;
- (void)updateGlobalBudget:(int64_t)budget;
@end

@implementation _DASBlueListManager

+ (int64_t)nextHoursBudgetWithPreviousBudget:(int64_t)budget
{
  v3 = (budget + 8);
  if (v3 > 12.0)
  {
    return 12.0;
  }

  return v3;
}

+ (id)managerWithContext:(id)context
{
  contextCopy = context;
  v5 = [[self alloc] initWithContext:contextCopy];

  return v5;
}

- (_DASBlueListManager)initWithContext:(id)context
{
  contextCopy = context;
  v23.receiver = self;
  v23.super_class = _DASBlueListManager;
  v6 = [(_DASBlueListManager *)&v23 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_context, context);
    v8 = [_CDContextualKeyPath keyPathWithKey:@"/push/bluelist"];
    blueListKeyPath = v7->_blueListKeyPath;
    v7->_blueListKeyPath = v8;

    v10 = [_CDContextualKeyPath keyPathWithKey:@"/push/globalBudget"];
    pushBudgetKeyPath = v7->_pushBudgetKeyPath;
    v7->_pushBudgetKeyPath = v10;

    v12 = [_CDContextualKeyPath keyPathWithKey:@"/push/globalBudgetResetDate"];
    pushBudgetResetKeyPath = v7->_pushBudgetResetKeyPath;
    v7->_pushBudgetResetKeyPath = v12;

    v14 = [(_CDLocalContext *)v7->_context objectForKeyedSubscript:v7->_blueListKeyPath];
    v7->_blueListEnabled = [v14 BOOLValue];

    v15 = [(_CDLocalContext *)v7->_context objectForKeyedSubscript:v7->_pushBudgetKeyPath];
    v16 = v15;
    if (v15)
    {
      v7->_pushBudget = [v15 integerValue];
    }

    else
    {
      [(_DASBlueListManager *)v7 updateGlobalBudget:8];
    }

    v17 = +[NSDate date];
    v18 = [(_CDLocalContext *)v7->_context objectForKeyedSubscript:v7->_pushBudgetResetKeyPath];
    v19 = v18;
    if (v18 && ([v18 timeIntervalSinceDate:v17], v20 >= 0.0))
    {
      v21 = v19;
    }

    else
    {
      v21 = [NSDate dateWithTimeInterval:v17 sinceDate:3600.0];

      [(_CDLocalContext *)v7->_context setObject:v21 forKeyedSubscript:v7->_pushBudgetResetKeyPath];
      if (v16)
      {
        [(_DASBlueListManager *)v7 updateBudgetsForNextSlot];
      }
    }

    [(_DASBlueListManager *)v7 registerForBlueListNotifications];
    [(_DASBlueListManager *)v7 setupResetTimer];
  }

  return v7;
}

- (void)updateGlobalBudget:(int64_t)budget
{
  obj = self;
  objc_sync_enter(obj);
  obj->_pushBudget = budget & ~(budget >> 63);
  v4 = [NSNumber numberWithInteger:?];
  [(_CDLocalContext *)obj->_context setObject:v4 forKeyedSubscript:obj->_pushBudgetKeyPath];

  [(_DASBlueListManager *)obj updateBlueListStatus:[(_DASBlueListManager *)obj shouldBlueListPushes]];
  objc_sync_exit(obj);
}

- (void)updateBudgetsForNextSlot
{
  v3 = [objc_opt_class() nextHoursBudgetWithPreviousBudget:self->_pushBudget];

  [(_DASBlueListManager *)self updateGlobalBudget:v3];
}

- (void)decrementPushBudgetRemaining
{
  obj = self;
  objc_sync_enter(obj);
  [(_DASBlueListManager *)obj updateGlobalBudget:obj->_pushBudget - 1];
  objc_sync_exit(obj);
}

- (void)setupResetTimer
{
  v3 = dispatch_get_global_queue(-32768, 0);
  v4 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, v3);
  budgetResetTimer = self->_budgetResetTimer;
  self->_budgetResetTimer = v4;

  v6 = self->_budgetResetTimer;
  v7 = dispatch_walltime(0, 3600000000000);
  dispatch_source_set_timer(v6, v7, 0x34630B8A000uLL, 0x174876E800uLL);
  v8 = self->_budgetResetTimer;
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_1000AC4B0;
  handler[3] = &unk_1001B5668;
  handler[4] = self;
  dispatch_source_set_event_handler(v8, handler);
  dispatch_resume(self->_budgetResetTimer);
}

- (BOOL)shouldBlueListPushes
{
  context = self->_context;
  v4 = +[_CDContextQueries keyPathForThermalPressureLevel];
  v5 = [(_CDLocalContext *)context objectForKeyedSubscript:v4];
  intValue = [v5 intValue];

  if (intValue > 20 || self->_pushBudget < 1)
  {
    v7 = 1;
  }

  else if (([_DASSystemContext isPluggedIn:self->_context]& 1) != 0)
  {
    v7 = 0;
  }

  else
  {
    v9 = self->_context;
    v10 = +[_CDContextQueries keyPathForBatteryLevel];
    v11 = [(_CDLocalContext *)v9 objectForKeyedSubscript:v10];
    intValue2 = [v11 intValue];

    v13 = self->_context;
    v14 = +[_CDContextQueries keyPathForWiFiConnectionQuality];
    v15 = [(_CDLocalContext *)v13 objectForKeyedSubscript:v14];

    v16 = self->_context;
    v17 = +[_CDContextQueries keyPathForWiredConnectionQuality];
    v18 = [(_CDLocalContext *)v16 objectForKeyedSubscript:v17];

    v19 = self->_context;
    v20 = +[_CDContextQueries keyPathForCellConnectionQuality];
    v21 = [(_CDLocalContext *)v19 objectForKeyedSubscript:v20];

    v22 = [v15 integerValue] <= 49 && objc_msgSend(v18, "integerValue") <= 49 && objc_msgSend(v21, "integerValue") < 100;
    v23 = +[NSProcessInfo processInfo];
    isLowPowerModeEnabled = [v23 isLowPowerModeEnabled];

    if (intValue2 >= 21)
    {
      v7 = v22 | isLowPowerModeEnabled;
    }

    else
    {
      v7 = 1;
    }
  }

  return v7 & 1;
}

- (void)registerForBlueListNotifications
{
  v3 = +[_CDContextQueries keyPathForThermalPressureLevel];
  v16 = +[_CDContextQueries keyPathForPluginStatus];
  v22 = v3;
  v20 = [_CDContextualPredicate predicateForKeyPath:v3 withFormat:@"self.%@.value > %@", v3, &off_1001CA318];
  v4 = +[_CDContextQueries keyPathForWiFiConnectionQuality];
  v5 = +[_CDContextQueries keyPathForWiredConnectionQuality];
  v6 = +[_CDContextQueries keyPathForCellConnectionQuality];
  v19 = [_CDContextualPredicate predicateForKeyPath:v4 withFormat:@"self.%@.value < %@", v4, &off_1001CA330];
  v21 = v5;
  v18 = [_CDContextualPredicate predicateForKeyPath:v5 withFormat:@"self.%@.value < %@", v5, &off_1001CA330];
  v17 = [_CDContextualPredicate predicateForKeyPath:v6 withFormat:@"self.%@.value < %@", v6, &off_1001CA348];
  v25[0] = v20;
  v25[1] = v19;
  v25[2] = v18;
  v25[3] = v17;
  v7 = [NSArray arrayWithObjects:v25 count:4];
  v8 = [_CDContextualPredicate andPredicateWithSubpredicates:v7];

  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_1000ACB58;
  v24[3] = &unk_1001B7BD8;
  v24[4] = self;
  v9 = objc_retainBlock(v24);
  v10 = [_CDContextualChangeRegistration localNonWakingRegistrationWithIdentifier:@"com.apple.dasd.blueListEnable" contextualPredicate:v8 callback:v9];
  v11 = [_CDContextualPredicate notPredicateWithSubpredicate:v8];
  v12 = [_CDContextualChangeRegistration localNonWakingRegistrationWithIdentifier:@"com.apple.dasd.blueListEnable" contextualPredicate:v11 callback:v9];

  v13 = [_CDContextualPredicate predicateForChangeAtKeyPath:v16];
  v14 = [_CDContextualChangeRegistration localNonWakingRegistrationWithIdentifier:@"com.apple.dasd.blueListPlugin" contextualPredicate:v13 callback:v9];

  [(_CDLocalContext *)self->_context registerCallback:v10];
  [(_CDLocalContext *)self->_context registerCallback:v12];
  [(_CDLocalContext *)self->_context registerCallback:v14];
  [(_DASBlueListManager *)self updateBlueListStatus:[(_DASBlueListManager *)self shouldBlueListPushes]];
  v15 = dispatch_get_global_queue(-32768, 0);
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_1000ACC74;
  handler[3] = &unk_1001B5B78;
  handler[4] = self;
  notify_register_dispatch("com.apple.system.lowpowermode", &self->_lpmNotifyToken, v15, handler);
}

@end