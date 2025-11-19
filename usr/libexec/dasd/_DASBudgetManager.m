@interface _DASBudgetManager
+ (id)sharedInstance;
- (BOOL)isWidgetRefreshBudget:(id)a3;
- (_DASBudgetManager)init;
- (double)balanceForBudgetWithName:(id)a3;
- (double)capacityForBudgetWithName:(id)a3;
- (id)allBudgets;
- (void)decrementBy:(double)a3 forBudgetWithName:(id)a4;
- (void)reinstantiateConfiguredBudgets;
- (void)reportActivityNoLongerRunning:(id)a3;
- (void)reportActivityNoLongerRunningWithParameters:(id)a3;
- (void)reportActivityRunning:(id)a3;
- (void)reportActivityRunningWithParameters:(id)a3;
- (void)reportUpdateForActivity:(id)a3 withDataConsumed:(id)a4;
- (void)setBalance:(double)a3 forBudgetWithName:(id)a4;
- (void)setCapacity:(double)a3 forBudgetWithName:(id)a4;
@end

@implementation _DASBudgetManager

+ (id)sharedInstance
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100092D04;
  block[3] = &unk_1001B54A0;
  block[4] = a1;
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
  v4 = [(_DASSystemBudgetManager *)self->_systemBudgetManager allBudgets];
  [v3 addObjectsFromArray:v4];

  v5 = [(_DASWidgetRefreshBudgetManager *)self->_widgetRefreshBudgetManager allBudgets];
  [v3 addObjectsFromArray:v5];

  return v3;
}

- (double)balanceForBudgetWithName:(id)a3
{
  widgetRefreshBudgetManager = self->_widgetRefreshBudgetManager;
  v5 = a3;
  v6 = [(_DASWidgetRefreshBudgetManager *)widgetRefreshBudgetManager managesBudgetWithName:v5];
  v7 = 8;
  if (v6)
  {
    v7 = 16;
  }

  [*(&self->super.isa + v7) balanceForBudgetWithName:v5];
  v9 = v8;

  return v9;
}

- (double)capacityForBudgetWithName:(id)a3
{
  widgetRefreshBudgetManager = self->_widgetRefreshBudgetManager;
  v5 = a3;
  v6 = [(_DASWidgetRefreshBudgetManager *)widgetRefreshBudgetManager managesBudgetWithName:v5];
  v7 = 8;
  if (v6)
  {
    v7 = 16;
  }

  [*(&self->super.isa + v7) capacityForBudgetWithName:v5];
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

- (void)setBalance:(double)a3 forBudgetWithName:(id)a4
{
  widgetRefreshBudgetManager = self->_widgetRefreshBudgetManager;
  v9 = a4;
  v7 = [(_DASWidgetRefreshBudgetManager *)widgetRefreshBudgetManager managesBudgetWithName:v9];
  v8 = 8;
  if (v7)
  {
    v8 = 16;
  }

  [*(&self->super.isa + v8) setBalance:v9 forBudgetWithName:a3];
}

- (void)decrementBy:(double)a3 forBudgetWithName:(id)a4
{
  widgetRefreshBudgetManager = self->_widgetRefreshBudgetManager;
  v9 = a4;
  v7 = [(_DASWidgetRefreshBudgetManager *)widgetRefreshBudgetManager managesBudgetWithName:v9];
  v8 = 8;
  if (v7)
  {
    v8 = 16;
  }

  [*(&self->super.isa + v8) decrementBy:v9 forBudgetWithName:a3];
}

- (void)setCapacity:(double)a3 forBudgetWithName:(id)a4
{
  widgetRefreshBudgetManager = self->_widgetRefreshBudgetManager;
  v9 = a4;
  v7 = [(_DASWidgetRefreshBudgetManager *)widgetRefreshBudgetManager managesBudgetWithName:v9];
  v8 = 8;
  if (v7)
  {
    v8 = 16;
  }

  [*(&self->super.isa + v8) setCapacity:v9 forBudgetWithName:a3];
}

- (BOOL)isWidgetRefreshBudget:(id)a3
{
  v3 = a3;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (void)reportActivityRunning:(id)a3
{
  v5 = a3;
  v4 = [v5 widgetBudgetID];

  if (v4)
  {
    [(_DASWidgetRefreshBudgetManager *)self->_widgetRefreshBudgetManager reportActivityRunning:v5];
  }

  [(_DASSystemBudgetManager *)self->_systemBudgetManager reportActivityRunning:v5];
}

- (void)reportActivityNoLongerRunning:(id)a3
{
  v5 = a3;
  v4 = [v5 widgetBudgetID];

  if (v4)
  {
    [(_DASWidgetRefreshBudgetManager *)self->_widgetRefreshBudgetManager reportActivityNoLongerRunning:v5];
  }

  [(_DASSystemBudgetManager *)self->_systemBudgetManager reportActivityNoLongerRunning:v5];
}

- (void)reportActivityRunningWithParameters:(id)a3
{
  v6 = a3;
  widgetRefreshBudgetManager = self->_widgetRefreshBudgetManager;
  if (objc_opt_respondsToSelector())
  {
    [(_DASWidgetRefreshBudgetManager *)self->_widgetRefreshBudgetManager reportActivityRunningWithParameters:v6];
  }

  systemBudgetManager = self->_systemBudgetManager;
  if (objc_opt_respondsToSelector())
  {
    [(_DASSystemBudgetManager *)self->_systemBudgetManager reportActivityRunningWithParameters:v6];
  }
}

- (void)reportActivityNoLongerRunningWithParameters:(id)a3
{
  v6 = a3;
  widgetRefreshBudgetManager = self->_widgetRefreshBudgetManager;
  if (objc_opt_respondsToSelector())
  {
    [(_DASWidgetRefreshBudgetManager *)self->_widgetRefreshBudgetManager reportActivityNoLongerRunningWithParameters:v6];
  }

  systemBudgetManager = self->_systemBudgetManager;
  if (objc_opt_respondsToSelector())
  {
    [(_DASSystemBudgetManager *)self->_systemBudgetManager reportActivityNoLongerRunningWithParameters:v6];
  }
}

- (void)reportUpdateForActivity:(id)a3 withDataConsumed:(id)a4
{
  v9 = a3;
  v6 = a4;
  widgetRefreshBudgetManager = self->_widgetRefreshBudgetManager;
  if (objc_opt_respondsToSelector())
  {
    [(_DASWidgetRefreshBudgetManager *)self->_widgetRefreshBudgetManager reportUpdateForActivity:v9 withDataConsumed:v6];
  }

  systemBudgetManager = self->_systemBudgetManager;
  if (objc_opt_respondsToSelector())
  {
    [(_DASSystemBudgetManager *)self->_systemBudgetManager reportUpdateForActivity:v9 withDataConsumed:v6];
  }
}

@end