@interface _OSDischargeETAOutput
- (_OSDischargeETAOutput)initWithBinned_hours_to_end:(id)a3 classProbability:(id)a4;
- (id)featureValueForName:(id)a3;
@end

@implementation _OSDischargeETAOutput

- (_OSDischargeETAOutput)initWithBinned_hours_to_end:(id)a3 classProbability:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = _OSDischargeETAOutput;
  v9 = [(_OSDischargeETAOutput *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_binned_hours_to_end, a3);
    objc_storeStrong(&v10->_classProbability, a4);
  }

  return v10;
}

- (id)featureValueForName:(id)a3
{
  v4 = a3;
  if ([v4 isEqualToString:@"binned_hours_to_end"])
  {
    v5 = [(_OSDischargeETAOutput *)self binned_hours_to_end];
    v6 = [MLFeatureValue featureValueWithString:v5];
LABEL_5:
    v7 = v6;

    goto LABEL_7;
  }

  if ([v4 isEqualToString:@"classProbability"])
  {
    v5 = [(_OSDischargeETAOutput *)self classProbability];
    v6 = [MLFeatureValue featureValueWithDictionary:v5 error:0];
    goto LABEL_5;
  }

  v7 = 0;
LABEL_7:

  return v7;
}

@end