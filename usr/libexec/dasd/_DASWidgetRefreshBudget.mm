@interface _DASWidgetRefreshBudget
- (_DASWidgetRefreshBudget)initWithCoder:(id)coder;
- (_DASWidgetRefreshBudget)initWithDictionary:(id)dictionary;
- (id)description;
- (id)dictionaryRepresentation;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _DASWidgetRefreshBudget

- (_DASWidgetRefreshBudget)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v11.receiver = self;
  v11.super_class = _DASWidgetRefreshBudget;
  v5 = [(_DASBudget *)&v11 initWithDictionary:dictionaryCopy];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"budgetID"];
    widgetBudgetID = v5->_widgetBudgetID;
    v5->_widgetBudgetID = v6;

    if (!v5->_widgetBudgetID)
    {
      v8 = [dictionaryCopy objectForKeyedSubscript:@"widgetID"];
      v9 = v5->_widgetBudgetID;
      v5->_widgetBudgetID = v8;
    }
  }

  return v5;
}

- (id)description
{
  name = [(_DASBudget *)self name];
  v4 = [name stringByReplacingOccurrencesOfString:@"com.apple.dasd.widget_" withString:&stru_1001BA3C0];

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
  dictionaryRepresentation = [(_DASBudget *)&v6 dictionaryRepresentation];
  v4 = [dictionaryRepresentation mutableCopy];

  [v4 setObject:self->_widgetBudgetID forKeyedSubscript:@"budgetID"];

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = _DASWidgetRefreshBudget;
  coderCopy = coder;
  [(_DASBudget *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_widgetBudgetID forKey:{@"budgetID", v5.receiver, v5.super_class}];
}

- (_DASWidgetRefreshBudget)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = _DASWidgetRefreshBudget;
  v5 = [(_DASBudget *)&v10 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectForKey:@"budgetID"];
    [(_DASWidgetRefreshBudget *)v5 setWidgetBudgetID:v6];

    widgetBudgetID = [(_DASWidgetRefreshBudget *)v5 widgetBudgetID];

    if (!widgetBudgetID)
    {
      v8 = [coderCopy decodeObjectForKey:@"widgetID"];
      [(_DASWidgetRefreshBudget *)v5 setWidgetBudgetID:v8];
    }
  }

  return v5;
}

@end