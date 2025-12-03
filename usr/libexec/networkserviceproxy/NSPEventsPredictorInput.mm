@interface NSPEventsPredictorInput
- (NSPEventsPredictorInput)initWithLstm_input:(id)lstm_input;
- (id)featureValueForName:(id)name;
@end

@implementation NSPEventsPredictorInput

- (NSPEventsPredictorInput)initWithLstm_input:(id)lstm_input
{
  lstm_inputCopy = lstm_input;
  v9.receiver = self;
  v9.super_class = NSPEventsPredictorInput;
  v6 = [(NSPEventsPredictorInput *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_lstm_input, lstm_input);
  }

  return v7;
}

- (id)featureValueForName:(id)name
{
  if ([name isEqualToString:@"lstm_input"])
  {
    lstm_input = [(NSPEventsPredictorInput *)self lstm_input];
    v5 = [MLFeatureValue featureValueWithMultiArray:lstm_input];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end