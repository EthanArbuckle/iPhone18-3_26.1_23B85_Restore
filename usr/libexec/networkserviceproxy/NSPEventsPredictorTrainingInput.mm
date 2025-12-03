@interface NSPEventsPredictorTrainingInput
- (NSPEventsPredictorTrainingInput)initWithLstm_input:(id)lstm_input sequential_TimeDistributedDense_dense_BiasAdd_true:(id)add_true;
- (id)featureValueForName:(id)name;
@end

@implementation NSPEventsPredictorTrainingInput

- (NSPEventsPredictorTrainingInput)initWithLstm_input:(id)lstm_input sequential_TimeDistributedDense_dense_BiasAdd_true:(id)add_true
{
  lstm_inputCopy = lstm_input;
  add_trueCopy = add_true;
  v12.receiver = self;
  v12.super_class = NSPEventsPredictorTrainingInput;
  v9 = [(NSPEventsPredictorTrainingInput *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_lstm_input, lstm_input);
    objc_storeStrong(&v10->_sequential_TimeDistributedDense_dense_BiasAdd_true, add_true);
  }

  return v10;
}

- (id)featureValueForName:(id)name
{
  nameCopy = name;
  if ([nameCopy isEqualToString:@"lstm_input"])
  {
    lstm_input = [(NSPEventsPredictorTrainingInput *)self lstm_input];
LABEL_5:
    v6 = lstm_input;
    v7 = [MLFeatureValue featureValueWithMultiArray:lstm_input];

    goto LABEL_7;
  }

  if ([nameCopy isEqualToString:@"sequential/TimeDistributedDense/dense/BiasAdd_true"])
  {
    lstm_input = [(NSPEventsPredictorTrainingInput *)self sequential_TimeDistributedDense_dense_BiasAdd_true];
    goto LABEL_5;
  }

  v7 = 0;
LABEL_7:

  return v7;
}

@end