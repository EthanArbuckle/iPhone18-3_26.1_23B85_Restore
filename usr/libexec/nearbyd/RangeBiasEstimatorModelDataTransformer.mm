@interface RangeBiasEstimatorModelDataTransformer
- (RangeBiasEstimatorModelDataTransformer)initWithContentsOfURL:(id)l;
- (id)applyTransformation:(id)transformation;
@end

@implementation RangeBiasEstimatorModelDataTransformer

- (RangeBiasEstimatorModelDataTransformer)initWithContentsOfURL:(id)l
{
  lCopy = l;
  v5 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#bias-est, Initializing RangeBiasEstimatorModelDataTransformer", buf, 2u);
  }

  v13.receiver = self;
  v13.super_class = RangeBiasEstimatorModelDataTransformer;
  v6 = [(RangeBiasEstimatorModelDataTransformer *)&v13 init];
  if (v6)
  {
    v12 = 0;
    v7 = [MLModel modelWithContentsOfURL:lCopy error:&v12];
    v8 = v12;
    dataTransformerModel = v6->_dataTransformerModel;
    v6->_dataTransformerModel = v7;

    if (v8)
    {
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_FAULT))
      {
        sub_1004CB6D4();
      }
    }

    else
    {
      if (v6->_dataTransformerModel)
      {
        v10 = v6;
        goto LABEL_11;
      }

      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_FAULT))
      {
        sub_1004CB748();
      }
    }

    v10 = 0;
LABEL_11:

    goto LABEL_12;
  }

  v10 = 0;
LABEL_12:

  return v10;
}

- (id)applyTransformation:(id)transformation
{
  transformationCopy = transformation;
  v5 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#bias-est, Apply standardization on data", buf, 2u);
  }

  dataTransformerModel = self->_dataTransformerModel;
  v15 = 0;
  v7 = [(MLModel *)dataTransformerModel predictionFromFeatures:transformationCopy error:&v15];
  v8 = v15;
  v9 = v8;
  if (!v7 || v8)
  {
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_FAULT))
    {
      sub_1004CB784();
    }

    v13 = 0;
  }

  else
  {
    v10 = [v7 featureValueForName:@"transformed_features"];
    v11 = [RangeBiasEstimatorInput alloc];
    multiArrayValue = [v10 multiArrayValue];
    v13 = [(RangeBiasEstimatorInput *)v11 initWithData:multiArrayValue];
  }

  return v13;
}

@end