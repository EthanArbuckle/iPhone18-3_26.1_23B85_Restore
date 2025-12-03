@interface _DASPolicyResponseRationale
- (_DASPolicyResponseRationale)initWithPolicyName:(id)name;
- (id)description;
- (void)addRationaleForCondition:(id)condition withRequiredValue:(double)value withCurrentValue:(double)currentValue;
- (void)addRationaleWithCondition:(id)condition;
@end

@implementation _DASPolicyResponseRationale

- (id)description
{
  if ([(NSMutableArray *)self->_reasons count]|| self->_condition)
  {
    v3 = +[NSMutableString string];
    [(__CFString *)v3 appendString:@"["];
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v4 = self->_reasons;
    v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v14;
      do
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v14 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = [*(*(&v13 + 1) + 8 * i) description];
          [(__CFString *)v3 appendFormat:@"{%@}, ", v9];
        }

        v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v6);
    }

    condition = self->_condition;
    if (condition)
    {
      v11 = [(NSPredicate *)condition description];
      [(__CFString *)v3 appendFormat:@"{%@}", v11];
    }

    [(__CFString *)v3 appendString:@"]"];
  }

  else
  {
    v3 = &stru_1001BA3C0;
  }

  return v3;
}

- (_DASPolicyResponseRationale)initWithPolicyName:(id)name
{
  nameCopy = name;
  v11.receiver = self;
  v11.super_class = _DASPolicyResponseRationale;
  v6 = [(_DASPolicyResponseRationale *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_policyName, name);
    v8 = +[NSMutableArray array];
    reasons = v7->_reasons;
    v7->_reasons = v8;
  }

  return v7;
}

- (void)addRationaleForCondition:(id)condition withRequiredValue:(double)value withCurrentValue:(double)currentValue
{
  conditionCopy = condition;
  v9 = [[_DASPolicyRequiredValueRationale alloc] initWithCondition:conditionCopy withRequiredValue:value withCurrentValue:currentValue];

  [(NSMutableArray *)self->_reasons addObject:v9];
}

- (void)addRationaleWithCondition:(id)condition
{
  conditionCopy = condition;
  v6 = conditionCopy;
  condition = self->_condition;
  p_condition = &self->_condition;
  conditionCopy2 = condition;
  if (condition)
  {
    v13[0] = conditionCopy2;
    v13[1] = conditionCopy;
    v10 = [NSArray arrayWithObjects:v13 count:2];
    v11 = [NSCompoundPredicate andPredicateWithSubpredicates:v10];
    v12 = *p_condition;
    *p_condition = v11;
  }

  else
  {
    objc_storeStrong(p_condition, condition);
  }
}

@end