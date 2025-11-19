@interface _DASWidgetRefreshBudget
- (_DASWidgetRefreshBudget)initWithCoder:(id)a3;
- (_DASWidgetRefreshBudget)initWithDictionary:(id)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _DASWidgetRefreshBudget

- (_DASWidgetRefreshBudget)initWithDictionary:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = _DASWidgetRefreshBudget;
  v5 = [(_DASBudget *)&v11 initWithDictionary:v4];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"budgetID"];
    widgetBudgetID = v5->_widgetBudgetID;
    v5->_widgetBudgetID = v6;

    if (!v5->_widgetBudgetID)
    {
      v8 = [v4 objectForKeyedSubscript:@"widgetID"];
      v9 = v5->_widgetBudgetID;
      v5->_widgetBudgetID = v8;
    }
  }

  return v5;
}

- (id)description
{
  v3 = [(_DASBudget *)self name];
  v4 = [v3 stringByReplacingOccurrencesOfString:@"com.apple.dasd.widget_" withString:&stru_1001BA3C0];

  [(_DASBudget *)self balance];
  v6 = v5;
  [(_DASBudget *)self capacity];
  v8 = [NSString stringWithFormat:@"<_DASWidgetBudget %@: %12.2lf/%12.2lf>", v4, v6, v7];

  return v8;
}

- (id)dictionaryRepresentation
{
  v6.receiver = self;
  v6.super_class = _DASWidgetRefreshBudget;
  v3 = [(_DASBudget *)&v6 dictionaryRepresentation];
  v4 = [v3 mutableCopy];

  [v4 setObject:self->_widgetBudgetID forKeyedSubscript:@"budgetID"];

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = _DASWidgetRefreshBudget;
  v4 = a3;
  [(_DASBudget *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_widgetBudgetID forKey:{@"budgetID", v5.receiver, v5.super_class}];
}

- (_DASWidgetRefreshBudget)initWithCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = _DASWidgetRefreshBudget;
  v5 = [(_DASBudget *)&v10 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectForKey:@"budgetID"];
    [(_DASWidgetRefreshBudget *)v5 setWidgetBudgetID:v6];

    v7 = [(_DASWidgetRefreshBudget *)v5 widgetBudgetID];

    if (!v7)
    {
      v8 = [v4 decodeObjectForKey:@"widgetID"];
      [(_DASWidgetRefreshBudget *)v5 setWidgetBudgetID:v8];
    }
  }

  return v5;
}

@end