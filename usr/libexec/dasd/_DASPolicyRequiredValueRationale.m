@interface _DASPolicyRequiredValueRationale
- (_DASPolicyRequiredValueRationale)initWithCondition:(id)a3 withRequiredValue:(double)a4 withCurrentValue:(double)a5;
@end

@implementation _DASPolicyRequiredValueRationale

- (_DASPolicyRequiredValueRationale)initWithCondition:(id)a3 withRequiredValue:(double)a4 withCurrentValue:(double)a5
{
  v9 = a3;
  v13.receiver = self;
  v13.super_class = _DASPolicyRequiredValueRationale;
  v10 = [(_DASPolicyRequiredValueRationale *)&v13 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_condition, a3);
    v11->_currentValue = a5;
    v11->_requiredValue = a4;
  }

  return v11;
}

@end