@interface base_engage
+ (id)URLOfModelInThisBundle;
+ (void)loadContentsOfURL:(id)l configuration:(id)configuration completionHandler:(id)handler;
+ (void)loadWithConfiguration:(id)configuration completionHandler:(id)handler;
- (base_engage)init;
- (base_engage)initWithConfiguration:(id)configuration error:(id *)error;
- (base_engage)initWithContentsOfURL:(id)l configuration:(id)configuration error:(id *)error;
- (base_engage)initWithContentsOfURL:(id)l error:(id *)error;
- (base_engage)initWithMLModel:(id)model;
- (id)predictionFromClassic_time_between_uses_med_dur_1:(double)classic_time_between_uses_med_dur_1 classic_time_between_uses_med_dur_2:(double)classic_time_between_uses_med_dur_2 classic_time_between_uses_med_dur_4:(double)classic_time_between_uses_med_dur_4 classic_time_between_uses_med_dur_24:(double)classic_time_between_uses_med_dur_24 classic_time_between_uses_std_dur_1:(double)classic_time_between_uses_std_dur_1 classic_time_between_uses_std_dur_2:(double)classic_time_between_uses_std_dur_2 classic_time_between_uses_std_dur_4:(double)classic_time_between_uses_std_dur_4 classic_time_between_uses_std_dur_24:(double)self0 hour:(double)self1 is_weekend:(double)self2 hour_plus_0:(double)self3 hour_plus_1:(double)self4 hour_plus_2:(double)self5 hour_plus_3:(double)self6 hour_plus_4:(double)self7 hour_plus_5:(double)self8 hours_until_use:(double)self9 meaningful_undercharge_rolling_average:(double)meaningful_undercharge_rolling_average error:(id *)error;
- (id)predictionFromFeatures:(id)features error:(id *)error;
- (id)predictionFromFeatures:(id)features options:(id)options error:(id *)error;
- (id)predictionsFromInputs:(id)inputs options:(id)options error:(id *)error;
- (void)predictionFromFeatures:(id)features completionHandler:(id)handler;
- (void)predictionFromFeatures:(id)features options:(id)options completionHandler:(id)handler;
@end

@implementation base_engage

+ (id)URLOfModelInThisBundle
{
  v2 = [NSBundle bundleForClass:objc_opt_class()];
  v3 = [v2 pathForResource:@"base_engage" ofType:@"mlmodelc"];

  if (v3)
  {
    v4 = [NSURL fileURLWithPath:v3];
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10005E554();
    }

    v4 = 0;
  }

  return v4;
}

- (base_engage)initWithMLModel:(id)model
{
  modelCopy = model;
  if (modelCopy)
  {
    v10.receiver = self;
    v10.super_class = base_engage;
    v6 = [(base_engage *)&v10 init];
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

- (base_engage)init
{
  uRLOfModelInThisBundle = [objc_opt_class() URLOfModelInThisBundle];
  v4 = [(base_engage *)self initWithContentsOfURL:uRLOfModelInThisBundle error:0];

  return v4;
}

- (base_engage)initWithConfiguration:(id)configuration error:(id *)error
{
  configurationCopy = configuration;
  uRLOfModelInThisBundle = [objc_opt_class() URLOfModelInThisBundle];
  v8 = [(base_engage *)self initWithContentsOfURL:uRLOfModelInThisBundle configuration:configurationCopy error:error];

  return v8;
}

- (base_engage)initWithContentsOfURL:(id)l error:(id *)error
{
  v5 = [MLModel modelWithContentsOfURL:l error:error];
  if (v5)
  {
    self = [(base_engage *)self initWithMLModel:v5];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (base_engage)initWithContentsOfURL:(id)l configuration:(id)configuration error:(id *)error
{
  v6 = [MLModel modelWithContentsOfURL:l configuration:configuration error:error];
  if (v6)
  {
    self = [(base_engage *)self initWithMLModel:v6];
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
  v8[2] = sub_100047BB8;
  v8[3] = &unk_100095698;
  handlerCopy = handler;
  v7 = handlerCopy;
  [MLModel loadContentsOfURL:l configuration:configuration completionHandler:v8];
}

- (id)predictionFromFeatures:(id)features error:(id *)error
{
  featuresCopy = features;
  v7 = objc_alloc_init(MLPredictionOptions);
  v8 = [(base_engage *)self predictionFromFeatures:featuresCopy options:v7 error:error];

  return v8;
}

- (id)predictionFromFeatures:(id)features options:(id)options error:(id *)error
{
  optionsCopy = options;
  featuresCopy = features;
  model = [(base_engage *)self model];
  v11 = [model predictionFromFeatures:featuresCopy options:optionsCopy error:error];

  if (v11)
  {
    v12 = [base_engageOutput alloc];
    v13 = [v11 featureValueForName:@"engage"];
    int64Value = [v13 int64Value];
    v15 = [v11 featureValueForName:@"classProbability"];
    dictionaryValue = [v15 dictionaryValue];
    v17 = [(base_engageOutput *)v12 initWithEngage:int64Value classProbability:dictionaryValue];
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (void)predictionFromFeatures:(id)features completionHandler:(id)handler
{
  handlerCopy = handler;
  featuresCopy = features;
  model = [(base_engage *)self model];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100047EB0;
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
  model = [(base_engage *)self model];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1000480B8;
  v13[3] = &unk_1000956C0;
  v14 = handlerCopy;
  v12 = handlerCopy;
  [model predictionFromFeatures:featuresCopy options:optionsCopy completionHandler:v13];
}

- (id)predictionFromClassic_time_between_uses_med_dur_1:(double)classic_time_between_uses_med_dur_1 classic_time_between_uses_med_dur_2:(double)classic_time_between_uses_med_dur_2 classic_time_between_uses_med_dur_4:(double)classic_time_between_uses_med_dur_4 classic_time_between_uses_med_dur_24:(double)classic_time_between_uses_med_dur_24 classic_time_between_uses_std_dur_1:(double)classic_time_between_uses_std_dur_1 classic_time_between_uses_std_dur_2:(double)classic_time_between_uses_std_dur_2 classic_time_between_uses_std_dur_4:(double)classic_time_between_uses_std_dur_4 classic_time_between_uses_std_dur_24:(double)self0 hour:(double)self1 is_weekend:(double)self2 hour_plus_0:(double)self3 hour_plus_1:(double)self4 hour_plus_2:(double)self5 hour_plus_3:(double)self6 hour_plus_4:(double)self7 hour_plus_5:(double)self8 hours_until_use:(double)self9 meaningful_undercharge_rolling_average:(double)meaningful_undercharge_rolling_average error:(id *)error
{
  v23 = [[base_engageInput alloc] initWithClassic_time_between_uses_med_dur_1:classic_time_between_uses_med_dur_1 classic_time_between_uses_med_dur_2:classic_time_between_uses_med_dur_2 classic_time_between_uses_med_dur_4:classic_time_between_uses_med_dur_4 classic_time_between_uses_med_dur_24:classic_time_between_uses_med_dur_24 classic_time_between_uses_std_dur_1:classic_time_between_uses_std_dur_1 classic_time_between_uses_std_dur_2:classic_time_between_uses_std_dur_2 classic_time_between_uses_std_dur_4:classic_time_between_uses_std_dur_4 classic_time_between_uses_std_dur_24:classic_time_between_uses_std_dur_24 hour:*&hour is_weekend:*&is_weekend hour_plus_0:*&hour_plus_0 hour_plus_1:*&hour_plus_1 hour_plus_2:*&hour_plus_2 hour_plus_3:*&hour_plus_3 hour_plus_4:*&hour_plus_4 hour_plus_5:*&hour_plus_5 hours_until_use:*&hours_until_use meaningful_undercharge_rolling_average:*&meaningful_undercharge_rolling_average];
  v24 = [(base_engage *)self predictionFromFeatures:v23 error:error];

  return v24;
}

- (id)predictionsFromInputs:(id)inputs options:(id)options error:(id *)error
{
  inputsCopy = inputs;
  optionsCopy = options;
  v10 = [[MLArrayBatchProvider alloc] initWithFeatureProviderArray:inputsCopy];
  model = [(base_engage *)self model];
  v12 = [model predictionsFromBatch:v10 options:optionsCopy error:error];

  if (v12)
  {
    v13 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v12 count]);
    if ([v12 count] >= 1)
    {
      v23 = v10;
      v24 = optionsCopy;
      v25 = inputsCopy;
      v14 = 0;
      do
      {
        v15 = [v12 featuresAtIndex:v14];
        v16 = [base_engageOutput alloc];
        v17 = [v15 featureValueForName:@"engage"];
        int64Value = [v17 int64Value];
        v19 = [v15 featureValueForName:@"classProbability"];
        dictionaryValue = [v19 dictionaryValue];
        v21 = [(base_engageOutput *)v16 initWithEngage:int64Value classProbability:dictionaryValue];

        [v13 addObject:v21];
        ++v14;
      }

      while (v14 < [v12 count]);
      optionsCopy = v24;
      inputsCopy = v25;
      v10 = v23;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

@end