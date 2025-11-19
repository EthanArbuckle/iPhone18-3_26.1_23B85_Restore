@interface NSPEventsPredictorTrainingInput
- (NSPEventsPredictorTrainingInput)initWithLstm_input:(id)a3 sequential_TimeDistributedDense_dense_BiasAdd_true:(id)a4;
- (id)featureValueForName:(id)a3;
@end

@implementation NSPEventsPredictorTrainingInput

- (NSPEventsPredictorTrainingInput)initWithLstm_input:(id)a3 sequential_TimeDistributedDense_dense_BiasAdd_true:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = NSPEventsPredictorTrainingInput;
  v9 = [(NSPEventsPredictorTrainingInput *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_lstm_input, a3);
    objc_storeStrong(&v10->_sequential_TimeDistributedDense_dense_BiasAdd_true, a4);
  }

  return v10;
}

- (id)featureValueForName:(id)a3
{
  v4 = a3;
  if ([v4 isEqualToString:@"lstm_input"])
  {
    v5 = [(NSPEventsPredictorTrainingInput *)self lstm_input];
LABEL_5:
    v6 = v5;
    v7 = [MLFeatureValue featureValueWithMultiArray:v5];

    goto LABEL_7;
  }

  if ([v4 isEqualToString:@"sequential/TimeDistributedDense/dense/BiasAdd_true"])
  {
    v5 = [(NSPEventsPredictorTrainingInput *)self sequential_TimeDistributedDense_dense_BiasAdd_true];
    goto LABEL_5;
  }

  v7 = 0;
LABEL_7:

  return v7;
}

@end