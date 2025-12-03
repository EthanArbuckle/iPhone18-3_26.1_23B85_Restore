@interface _DASBudgetManager
+ (id)sharedInstance;
- (BOOL)isWidgetRefreshBudget:(id)budget;
- (_DASBudgetManager)init;
- (double)balanceForBudgetWithName:(id)name;
- (double)capacityForBudgetWithName:(id)name;
- (id)allBudgets;
- (void)decrementBy:(double)by forBudgetWithName:(id)name;
- (void)reinstantiateConfiguredBudgets;
- (void)reportActivityNoLongerRunning:(id)running;
- (void)reportActivityNoLongerRunningWithParameters:(id)parameters;
- (void)reportActivityRunning:(id)running;
- (void)reportActivityRunningWithParameters:(id)parameters;
- (void)reportUpdateForActivity:(id)activity withDataConsumed:(id)consumed;
- (void)setBalance:(double)balance forBudgetWithName:(id)name;
- (void)setCapacity:(double)capacity forBudgetWithName:(id)name;
@end

@implementation _DASBudgetManager

+ (id)sharedInstance
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100092D04;
  block[3] = &unk_1001B54A0;
  block[4] = self;
  if (qword_10020B5E0 != -1)
  {
    dispatch_once(&qword_10020B5E0, block);
  }

  v2 = qword_10020B5E8;

  return v2;
}

- (_DASBudgetManager)init
{
  v8.receiver = self;
  v8.super_class = _DASBudgetManager;
  v2 = [(_DASBudgetManager *)&v8 init];
  if (v2)
  {
    v3 = +[_DASSystemBudgetManager sharedInstance];
    systemBudgetManager = v2->_systemBudgetManager;
    v2->_systemBudgetManager = v3;

    v5 = +[_DASWidgetRefreshBudgetManager sharedInstance];
    widgetRefreshBudgetManager = v2->_widgetRefreshBudgetManager;
    v2->_widgetRefreshBudgetManager = v5;
  }

  return v2;
}

- (id)allBudgets
{
  v3 = +[NSMutableArray array];
  allBudgets = [(_DASSystemBudgetManager *)self->_systemBudgetManager allBudgets];
  [v3 addObjectsFromArray:allBudgets];

  allBudgets2 = [(_DASWidgetRefreshBudgetManager *)self->_widgetRefreshBudgetManager allBudgets];
  [v3 addObjectsFromArray:allBudgets2];

  return v3;
}

- (double)balanceForBudgetWithName:(id)name
{
  widgetRefreshBudgetManager = self->_widgetRefreshBudgetManager;
  nameCopy = name;
  v6 = [(_DASWidgetRefreshBudgetManager *)widgetRefreshBudgetManager managesBudgetWithName:nameCopy];
  v7 = 8;
  if (v6)
  {
    v7 = 16;
  }

  [*(&self->super.isa + v7) balanceForBudgetWithName:nameCopy];
  v9 = v8;

  return v9;
}

- (double)capacityForBudgetWithName:(id)name
{
  widgetRefreshBudgetManager = self->_widgetRefreshBudgetManager;
  nameCopy = name;
  v6 = [(_DASWidgetRefreshBudgetManager *)widgetRefreshBudgetManager managesBudgetWithName:nameCopy];
  v7 = 8;
  if (v6)
  {
    v7 = 16;
  }

  [*(&self->super.isa + v7) capacityForBudgetWithName:nameCopy];
  v9 = v8;

  return v9;
}

- (void)reinstantiateConfiguredBudgets
{
  widgetRefreshBudgetManager = self->_widgetRefreshBudgetManager;
  if (objc_opt_respondsToSelector())
  {
    [(_DASWidgetRefreshBudgetManager *)self->_widgetRefreshBudgetManager reinstantiateConfiguredBudgets];
  }

  systemBudgetManager = self->_systemBudgetManager;
  if (objc_opt_respondsToSelector())
  {
    v5 = self->_systemBudgetManager;

    [(_DASSystemBudgetManager *)v5 reinstantiateConfiguredBudgets];
  }
}

- (void)setBalance:(double)balance forBudgetWithName:(id)name
{
  widgetRefreshBudgetManager = self->_widgetRefreshBudgetManager;
  nameCopy = name;
  v7 = [(_DASWidgetRefreshBudgetManager *)widgetRefreshBudgetManager managesBudgetWithName:nameCopy];
  v8 = 8;
  if (v7)
  {
    v8 = 16;
  }

  [*(&self->super.isa + v8) setBalance:nameCopy forBudgetWithName:balance];
}

- (void)decrementBy:(double)by forBudgetWithName:(id)name
{
  widgetRefreshBudgetManager = self->_widgetRefreshBudgetManager;
  nameCopy = name;
  v7 = [(_DASWidgetRefreshBudgetManager *)widgetRefreshBudgetManager managesBudgetWithName:nameCopy];
  v8 = 8;
  if (v7)
  {
    v8 = 16;
  }

  [*(&self->super.isa + v8) decrementBy:nameCopy forBudgetWithName:by];
}

- (void)setCapacity:(double)capacity forBudgetWithName:(id)name
{
  widgetRefreshBudgetManager = self->_widgetRefreshBudgetManager;
  nameCopy = name;
  v7 = [(_DASWidgetRefreshBudgetManager *)widgetRefreshBudgetManager managesBudgetWithName:nameCopy];
  v8 = 8;
  if (v7)
  {
    v8 = 16;
  }

  [*(&self->super.isa + v8) setCapacity:nameCopy forBudgetWithName:capacity];
}

- (BOOL)isWidgetRefreshBudget:(id)budget
{
  budgetCopy = budget;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (void)reportActivityRunning:(id)running
{
  runningCopy = running;
  widgetBudgetID = [runningCopy widgetBudgetID];

  if (widgetBudgetID)
  {
    [(_DASWidgetRefreshBudgetManager *)self->_widgetRefreshBudgetManager reportActivityRunning:runningCopy];
  }

  [(_DASSystemBudgetManager *)self->_systemBudgetManager reportActivityRunning:runningCopy];
}

- (void)reportActivityNoLongerRunning:(id)running
{
  runningCopy = running;
  widgetBudgetID = [runningCopy widgetBudgetID];

  if (widgetBudgetID)
  {
    [(_DASWidgetRefreshBudgetManager *)self->_widgetRefreshBudgetManager reportActivityNoLongerRunning:runningCopy];
  }

  [(_DASSystemBudgetManager *)self->_systemBudgetManager reportActivityNoLongerRunning:runningCopy];
}

- (void)reportActivityRunningWithParameters:(id)parameters
{
  parametersCopy = parameters;
  widgetRefreshBudgetManager = self->_widgetRefreshBudgetManager;
  if (objc_opt_respondsToSelector())
  {
    [(_DASWidgetRefreshBudgetManager *)self->_widgetRefreshBudgetManager reportActivityRunningWithParameters:parametersCopy];
  }

  systemBudgetManager = self->_systemBudgetManager;
  if (objc_opt_respondsToSelector())
  {
    [(_DASSystemBudgetManager *)self->_systemBudgetManager reportActivityRunningWithParameters:parametersCopy];
  }
}

- (void)reportActivityNoLongerRunningWithParameters:(id)parameters
{
  parametersCopy = parameters;
  widgetRefreshBudgetManager = self->_widgetRefreshBudgetManager;
  if (objc_opt_respondsToSelector())
  {
    [(_DASWidgetRefreshBudgetManager *)self->_widgetRefreshBudgetManager reportActivityNoLongerRunningWithParameters:parametersCopy];
  }

  systemBudgetManager = self->_systemBudgetManager;
  if (objc_opt_respondsToSelector())
  {
    [(_DASSystemBudgetManager *)self->_systemBudgetManager reportActivityNoLongerRunningWithParameters:parametersCopy];
  }
}

- (void)reportUpdateForActivity:(id)activity withDataConsumed:(id)consumed
{
  activityCopy = activity;
  consumedCopy = consumed;
  widgetRefreshBudgetManager = self->_widgetRefreshBudgetManager;
  if (objc_opt_respondsToSelector())
  {
    [(_DASWidgetRefreshBudgetManager *)self->_widgetRefreshBudgetManager reportUpdateForActivity:activityCopy withDataConsumed:consumedCopy];
  }

  systemBudgetManager = self->_systemBudgetManager;
  if (objc_opt_respondsToSelector())
  {
    [(_DASSystemBudgetManager *)self->_systemBudgetManager reportUpdateForActivity:activityCopy withDataConsumed:consumedCopy];
  }
}

@end