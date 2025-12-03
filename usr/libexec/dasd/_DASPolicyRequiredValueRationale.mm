@interface _DASPolicyRequiredValueRationale
- (_DASPolicyRequiredValueRationale)initWithCondition:(id)condition withRequiredValue:(double)value withCurrentValue:(double)currentValue;
@end

@implementation _DASPolicyRequiredValueRationale

- (_DASPolicyRequiredValueRationale)initWithCondition:(id)condition withRequiredValue:(double)value withCurrentValue:(double)currentValue
{
  conditionCopy = condition;
  v13.receiver = self;
  v13.super_class = _DASPolicyRequiredValueRationale;
  v10 = [(_DASPolicyRequiredValueRationale *)&v13 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_condition, condition);
    v11->_currentValue = currentValue;
    v11->_requiredValue = value;
  }

  return v11;
}

@end