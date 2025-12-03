@interface tte_v1
+ (id)URLOfModelInThisBundle;
+ (void)loadContentsOfURL:(id)l configuration:(id)configuration completionHandler:(id)handler;
+ (void)loadWithConfiguration:(id)configuration completionHandler:(id)handler;
- (id)predictionFromFeatures:(id)features error:(id *)error;
- (id)predictionFromFeatures:(id)features options:(id)options error:(id *)error;
- (id)predictionFromStateOfCharge:(double)charge Curr_SoC_Median:(double)median Curr_SoC_SD:(double)d Curr_SoC_10th_Percentile:(double)percentile Curr_SoC_IQ1:(double)q1 Curr_SoC_IQ3:(double)q3 Curr_SoC_90th_Percentile:(double)c_90th_Percentile error:(id *)self0;
- (id)predictionsFromInputs:(id)inputs options:(id)options error:(id *)error;
- (tte_v1)init;
- (tte_v1)initWithConfiguration:(id)configuration error:(id *)error;
- (tte_v1)initWithContentsOfURL:(id)l configuration:(id)configuration error:(id *)error;
- (tte_v1)initWithContentsOfURL:(id)l error:(id *)error;
- (tte_v1)initWithMLModel:(id)model;
- (void)predictionFromFeatures:(id)features completionHandler:(id)handler;
- (void)predictionFromFeatures:(id)features options:(id)options completionHandler:(id)handler;
@end

@implementation tte_v1

+ (id)URLOfModelInThisBundle
{
  v2 = [NSBundle bundleForClass:objc_opt_class()];
  v3 = [v2 pathForResource:@"tte_v1" ofType:@"mlmodelc"];

  if (v3)
  {
    v4 = [NSURL fileURLWithPath:v3];
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10005E704();
    }

    v4 = 0;
  }

  return v4;
}

- (tte_v1)initWithMLModel:(id)model
{
  modelCopy = model;
  if (modelCopy)
  {
    v10.receiver = self;
    v10.super_class = tte_v1;
    v6 = [(tte_v1 *)&v10 init];
    v7 = v6;
    if (v6)
    {
      objc_storeStrong(&v6->_model, model);
    }

    self = v7;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (tte_v1)init
{
  uRLOfModelInThisBundle = [objc_opt_class() URLOfModelInThisBundle];
  v4 = [(tte_v1 *)self initWithContentsOfURL:uRLOfModelInThisBundle error:0];

  return v4;
}

- (tte_v1)initWithConfiguration:(id)configuration error:(id *)error
{
  configurationCopy = configuration;
  uRLOfModelInThisBundle = [objc_opt_class() URLOfModelInThisBundle];
  v8 = [(tte_v1 *)self initWithContentsOfURL:uRLOfModelInThisBundle configuration:configurationCopy error:error];

  return v8;
}

- (tte_v1)initWithContentsOfURL:(id)l error:(id *)error
{
  v5 = [MLModel modelWithContentsOfURL:l error:error];
  if (v5)
  {
    self = [(tte_v1 *)self initWithMLModel:v5];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (tte_v1)initWithContentsOfURL:(id)l configuration:(id)configuration error:(id *)error
{
  v6 = [MLModel modelWithContentsOfURL:l configuration:configuration error:error];
  if (v6)
  {
    self = [(tte_v1 *)self initWithMLModel:v6];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

+ (void)loadWithConfiguration:(id)configuration completionHandler:(id)handler
{
  handlerCopy = handler;
  configurationCopy = configuration;
  uRLOfModelInThisBundle = [self URLOfModelInThisBundle];
  [self loadContentsOfURL:uRLOfModelInThisBundle configuration:configurationCopy completionHandler:handlerCopy];
}

+ (void)loadContentsOfURL:(id)l configuration:(id)configuration completionHandler:(id)handler
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100052324;
  v8[3] = &unk_100095698;
  handlerCopy = handler;
  v7 = handlerCopy;
  [MLModel loadContentsOfURL:l configuration:configuration completionHandler:v8];
}

- (id)predictionFromFeatures:(id)features error:(id *)error
{
  featuresCopy = features;
  v7 = objc_alloc_init(MLPredictionOptions);
  v8 = [(tte_v1 *)self predictionFromFeatures:featuresCopy options:v7 error:error];

  return v8;
}

- (id)predictionFromFeatures:(id)features options:(id)options error:(id *)error
{
  optionsCopy = options;
  featuresCopy = features;
  model = [(tte_v1 *)self model];
  v11 = [model predictionFromFeatures:featuresCopy options:optionsCopy error:error];

  if (v11)
  {
    v12 = [tte_v1Output alloc];
    v13 = [v11 featureValueForName:@"tte"];
    [v13 doubleValue];
    v14 = [(tte_v1Output *)v12 initWithTte:?];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (void)predictionFromFeatures:(id)features completionHandler:(id)handler
{
  handlerCopy = handler;
  featuresCopy = features;
  model = [(tte_v1 *)self model];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000525DC;
  v10[3] = &unk_1000956C0;
  v11 = handlerCopy;
  v9 = handlerCopy;
  [model predictionFromFeatures:featuresCopy completionHandler:v10];
}

- (void)predictionFromFeatures:(id)features options:(id)options completionHandler:(id)handler
{
  handlerCopy = handler;
  optionsCopy = options;
  featuresCopy = features;
  model = [(tte_v1 *)self model];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10005279C;
  v13[3] = &unk_1000956C0;
  v14 = handlerCopy;
  v12 = handlerCopy;
  [model predictionFromFeatures:featuresCopy options:optionsCopy completionHandler:v13];
}

- (id)predictionFromStateOfCharge:(double)charge Curr_SoC_Median:(double)median Curr_SoC_SD:(double)d Curr_SoC_10th_Percentile:(double)percentile Curr_SoC_IQ1:(double)q1 Curr_SoC_IQ3:(double)q3 Curr_SoC_90th_Percentile:(double)c_90th_Percentile error:(id *)self0
{
  v12 = [[tte_v1Input alloc] initWithStateOfCharge:charge Curr_SoC_Median:median Curr_SoC_SD:d Curr_SoC_10th_Percentile:percentile Curr_SoC_IQ1:q1 Curr_SoC_IQ3:q3 Curr_SoC_90th_Percentile:c_90th_Percentile];
  v13 = [(tte_v1 *)self predictionFromFeatures:v12 error:error];

  return v13;
}

- (id)predictionsFromInputs:(id)inputs options:(id)options error:(id *)error
{
  inputsCopy = inputs;
  optionsCopy = options;
  v10 = [[MLArrayBatchProvider alloc] initWithFeatureProviderArray:inputsCopy];
  model = [(tte_v1 *)self model];
  v12 = [model predictionsFromBatch:v10 options:optionsCopy error:error];

  if (v12)
  {
    v13 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v12 count]);
    if ([v12 count] >= 1)
    {
      v14 = 0;
      do
      {
        v15 = [v12 featuresAtIndex:v14];
        v16 = [tte_v1Output alloc];
        v17 = [v15 featureValueForName:@"tte"];
        [v17 doubleValue];
        v18 = [(tte_v1Output *)v16 initWithTte:?];

        [v13 addObject:v18];
        ++v14;
      }

      while (v14 < [v12 count]);
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

@end