@interface WiFiStallDetectOutput
- (WiFiStallDetectOutput)initWithStall:(int64_t)a3 stallProbability:(id)a4;
- (id)featureValueForName:(id)a3;
@end

@implementation WiFiStallDetectOutput

- (WiFiStallDetectOutput)initWithStall:(int64_t)a3 stallProbability:(id)a4
{
  v7 = a4;
  v11.receiver = self;
  v11.super_class = WiFiStallDetectOutput;
  v8 = [(WiFiStallDetectOutput *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_stall = a3;
    objc_storeStrong(&v8->_stallProbability, a4);
  }

  return v9;
}

- (id)featureValueForName:(id)a3
{
  v4 = a3;
  if ([v4 isEqualToString:@"stall"])
  {
    v5 = [MLFeatureValue featureValueWithInt64:[(WiFiStallDetectOutput *)self stall]];
  }

  else if ([v4 isEqualToString:@"stallProbability"])
  {
    v6 = [(WiFiStallDetectOutput *)self stallProbability];
    v5 = [MLFeatureValue featureValueWithDictionary:v6 error:0];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end