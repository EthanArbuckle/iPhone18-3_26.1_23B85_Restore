@interface _OSDischargeETAOutput
- (_OSDischargeETAOutput)initWithBinned_hours_to_end:(id)binned_hours_to_end classProbability:(id)probability;
- (id)featureValueForName:(id)name;
@end

@implementation _OSDischargeETAOutput

- (_OSDischargeETAOutput)initWithBinned_hours_to_end:(id)binned_hours_to_end classProbability:(id)probability
{
  binned_hours_to_endCopy = binned_hours_to_end;
  probabilityCopy = probability;
  v12.receiver = self;
  v12.super_class = _OSDischargeETAOutput;
  v9 = [(_OSDischargeETAOutput *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_binned_hours_to_end, binned_hours_to_end);
    objc_storeStrong(&v10->_classProbability, probability);
  }

  return v10;
}

- (id)featureValueForName:(id)name
{
  nameCopy = name;
  if ([nameCopy isEqualToString:@"binned_hours_to_end"])
  {
    binned_hours_to_end = [(_OSDischargeETAOutput *)self binned_hours_to_end];
    v6 = [MLFeatureValue featureValueWithString:binned_hours_to_end];
LABEL_5:
    v7 = v6;

    goto LABEL_7;
  }

  if ([nameCopy isEqualToString:@"classProbability"])
  {
    binned_hours_to_end = [(_OSDischargeETAOutput *)self classProbability];
    v6 = [MLFeatureValue featureValueWithDictionary:binned_hours_to_end error:0];
    goto LABEL_5;
  }

  v7 = 0;
LABEL_7:

  return v7;
}

@end