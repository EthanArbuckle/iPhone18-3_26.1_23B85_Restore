@interface _DASDefaultsBudgetPersistence
+ (id)persistence;
- (NSDate)lastModulationDate;
- (_DASDefaultsBudgetPersistence)init;
- (id)convertNameFromFullToCompact:(id)a3;
- (id)loadBudgetsWithExpectedNames:(id)a3;
- (void)saveBudgets:(id)a3;
- (void)saveModulationDate:(id)a3;
- (void)updateBudget:(id)a3;
@end

@implementation _DASDefaultsBudgetPersistence

- (_DASDefaultsBudgetPersistence)init
{
  v18.receiver = self;
  v18.super_class = _DASDefaultsBudgetPersistence;
  v2 = [(_DASDefaultsBudgetPersistence *)&v18 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.dasd.budgetPersistence.defaultsqueue", v3);
    queue = v2->_queue;
    v2->_queue = v4;

    v6 = os_log_create("com.apple.duetactivityscheduler", "budgetDefaults");
    log = v2->_log;
    v2->_log = v6;

    v8 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.dasd.widgetRefreshBudgets"];
    defaults = v2->_defaults;
    v2->_defaults = v8;

    v10 = [(NSUserDefaults *)v2->_defaults objectForKey:@"budgets"];
    v11 = [v10 mutableCopy];
    budgetsInfo = v2->_budgetsInfo;
    v2->_budgetsInfo = v11;

    if (!v2->_budgetsInfo)
    {
      v13 = objc_alloc_init(NSMutableDictionary);
      v14 = v2->_budgetsInfo;
      v2->_budgetsInfo = v13;
    }

    v15 = [(NSUserDefaults *)v2->_defaults objectForKey:@"lastModulation"];
    lastModulationDate = v2->_lastModulationDate;
    v2->_lastModulationDate = v15;
  }

  return v2;
}

+ (id)persistence
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000187AC;
  block[3] = &unk_1001B54A0;
  block[4] = a1;
  if (qword_10020AE18 != -1)
  {
    dispatch_once(&qword_10020AE18, block);
  }

  v2 = qword_10020AE20;

  return v2;
}

- (id)loadBudgetsWithExpectedNames:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(NSMutableArray);
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000188B8;
  block[3] = &unk_1001B56B8;
  block[4] = self;
  v13 = v4;
  v7 = v5;
  v14 = v7;
  v8 = v4;
  dispatch_sync(queue, block);
  v9 = v14;
  v10 = v7;

  return v7;
}

- (void)saveBudgets:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100018BF4;
  v7[3] = &unk_1001B56E0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(queue, v7);
}

- (void)updateBudget:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100018E10;
  v7[3] = &unk_1001B56E0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(queue, v7);
}

- (void)saveModulationDate:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100018F4C;
  v7[3] = &unk_1001B56E0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(queue, v7);
}

- (NSDate)lastModulationDate
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_100019088;
  v10 = sub_100019098;
  v11 = 0;
  queue = self->_queue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000190A0;
  v5[3] = &unk_1001B5708;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (id)convertNameFromFullToCompact:(id)a3
{
  v3 = a3;
  v4 = [v3 copy];
  if ([v3 hasPrefix:@"com.apple.dasd.widget"])
  {
    v5 = [v3 substringFromIndex:{objc_msgSend(@"com.apple.dasd.widget", "length")}];

    v4 = v5;
  }

  return v4;
}

@end