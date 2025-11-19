@interface NSPEventsPredictorInput
- (NSPEventsPredictorInput)initWithLstm_input:(id)a3;
- (id)featureValueForName:(id)a3;
@end

@implementation NSPEventsPredictorInput

- (NSPEventsPredictorInput)initWithLstm_input:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = NSPEventsPredictorInput;
  v6 = [(NSPEventsPredictorInput *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_lstm_input, a3);
  }

  return v7;
}

- (id)featureValueForName:(id)a3
{
  if ([a3 isEqualToString:@"lstm_input"])
  {
    v4 = [(NSPEventsPredictorInput *)self lstm_input];
    v5 = [MLFeatureValue featureValueWithMultiArray:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end