@interface WiFiStallDetectOutput
- (WiFiStallDetectOutput)initWithStall:(int64_t)stall stallProbability:(id)probability;
- (id)featureValueForName:(id)name;
@end

@implementation WiFiStallDetectOutput

- (WiFiStallDetectOutput)initWithStall:(int64_t)stall stallProbability:(id)probability
{
  probabilityCopy = probability;
  v11.receiver = self;
  v11.super_class = WiFiStallDetectOutput;
  v8 = [(WiFiStallDetectOutput *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_stall = stall;
    objc_storeStrong(&v8->_stallProbability, probability);
  }

  return v9;
}

- (id)featureValueForName:(id)name
{
  nameCopy = name;
  if ([nameCopy isEqualToString:@"stall"])
  {
    v5 = [MLFeatureValue featureValueWithInt64:[(WiFiStallDetectOutput *)self stall]];
  }

  else if ([nameCopy isEqualToString:@"stallProbability"])
  {
    stallProbability = [(WiFiStallDetectOutput *)self stallProbability];
    v5 = [MLFeatureValue featureValueWithDictionary:stallProbability error:0];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end