@interface long_duration
+ (id)URLOfModelInThisBundle;
+ (void)loadContentsOfURL:(id)l configuration:(id)configuration completionHandler:(id)handler;
+ (void)loadWithConfiguration:(id)configuration completionHandler:(id)handler;
- (id)predictionFromClassic_time_between_uses_med_dur_1:(double)classic_time_between_uses_med_dur_1 classic_time_between_uses_med_dur_2:(double)classic_time_between_uses_med_dur_2 classic_time_between_uses_med_dur_4:(double)classic_time_between_uses_med_dur_4 classic_time_between_uses_med_dur_24:(double)classic_time_between_uses_med_dur_24 classic_time_between_uses_std_dur_1:(double)classic_time_between_uses_std_dur_1 classic_time_between_uses_std_dur_2:(double)classic_time_between_uses_std_dur_2 classic_time_between_uses_std_dur_4:(double)classic_time_between_uses_std_dur_4 classic_time_between_uses_std_dur_24:(double)self0 hour:(double)self1 is_weekend:(double)self2 hour_plus_0:(double)self3 hour_plus_1:(double)self4 hour_plus_2:(double)self5 hour_plus_3:(double)self6 hour_plus_4:(double)self7 hour_plus_5:(double)self8 hours_until_use:(double)self9 meaningful_undercharge_rolling_average:(double)meaningful_undercharge_rolling_average error:(id *)error;
- (id)predictionFromFeatures:(id)features error:(id *)error;
- (id)predictionFromFeatures:(id)features options:(id)options error:(id *)error;
- (id)predictionsFromInputs:(id)inputs options:(id)options error:(id *)error;
- (long_duration)init;
- (long_duration)initWithConfiguration:(id)configuration error:(id *)error;
- (long_duration)initWithContentsOfURL:(id)l configuration:(id)configuration error:(id *)error;
- (long_duration)initWithContentsOfURL:(id)l error:(id *)error;
- (long_duration)initWithMLModel:(id)model;
- (void)predictionFromFeatures:(id)features completionHandler:(id)handler;
- (void)predictionFromFeatures:(id)features options:(id)options completionHandler:(id)handler;
@end

@implementation long_duration

+ (id)URLOfModelInThisBundle
{
  v2 = [NSBundle bundleForClass:objc_opt_class()];
  v3 = [v2 pathForResource:@"long_duration" ofType:@"mlmodelc"];

  if (v3)
  {
    v4 = [NSURL fileURLWithPath:v3];
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10005E74C();
    }

    v4 = 0;
  }

  return v4;
}

- (long_duration)initWithMLModel:(id)model
{
  modelCopy = model;
  if (modelCopy)
  {
    v10.receiver = self;
    v10.super_class = long_duration;
    v6 = [(long_duration *)&v10 init];
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

- (long_duration)init
{
  uRLOfModelInThisBundle = [objc_opt_class() URLOfModelInThisBundle];
  v4 = [(long_duration *)self initWithContentsOfURL:uRLOfModelInThisBundle error:0];

  return v4;
}

- (long_duration)initWithConfiguration:(id)configuration error:(id *)error
{
  configurationCopy = configuration;
  uRLOfModelInThisBundle = [objc_opt_class() URLOfModelInThisBundle];
  v8 = [(long_duration *)self initWithContentsOfURL:uRLOfModelInThisBundle configuration:configurationCopy error:error];

  return v8;
}

- (long_duration)initWithContentsOfURL:(id)l error:(id *)error
{
  v5 = [MLModel modelWithContentsOfURL:l error:error];
  if (v5)
  {
    self = [(long_duration *)self initWithMLModel:v5];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (long_duration)initWithContentsOfURL:(id)l configuration:(id)configuration error:(id *)error
{
  v6 = [MLModel modelWithContentsOfURL:l configuration:configuration error:error];
  if (v6)
  {
    self = [(long_duration *)self initWithMLModel:v6];
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
  v8[2] = sub_1000534E8;
  v8[3] = &unk_100095698;
  handlerCopy = handler;
  v7 = handlerCopy;
  [MLModel loadContentsOfURL:l configuration:configuration completionHandler:v8];
}

- (id)predictionFromFeatures:(id)features error:(id *)error
{
  featuresCopy = features;
  v7 = objc_alloc_init(MLPredictionOptions);
  v8 = [(long_duration *)self predictionFromFeatures:featuresCopy options:v7 error:error];

  return v8;
}

- (id)predictionFromFeatures:(id)features options:(id)options error:(id *)error
{
  optionsCopy = options;
  featuresCopy = features;
  model = [(long_duration *)self model];
  v11 = [model predictionFromFeatures:featuresCopy options:optionsCopy error:error];

  if (v11)
  {
    v12 = [long_durationOutput alloc];
    v13 = [v11 featureValueForName:@"duration_pred"];
    [v13 doubleValue];
    v14 = [(long_durationOutput *)v12 initWithDuration_pred:?];
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
  model = [(long_duration *)self model];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000537A0;
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
  model = [(long_duration *)self model];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100053960;
  v13[3] = &unk_1000956C0;
  v14 = handlerCopy;
  v12 = handlerCopy;
  [model predictionFromFeatures:featuresCopy options:optionsCopy completionHandler:v13];
}

- (id)predictionFromClassic_time_between_uses_med_dur_1:(double)classic_time_between_uses_med_dur_1 classic_time_between_uses_med_dur_2:(double)classic_time_between_uses_med_dur_2 classic_time_between_uses_med_dur_4:(double)classic_time_between_uses_med_dur_4 classic_time_between_uses_med_dur_24:(double)classic_time_between_uses_med_dur_24 classic_time_between_uses_std_dur_1:(double)classic_time_between_uses_std_dur_1 classic_time_between_uses_std_dur_2:(double)classic_time_between_uses_std_dur_2 classic_time_between_uses_std_dur_4:(double)classic_time_between_uses_std_dur_4 classic_time_between_uses_std_dur_24:(double)self0 hour:(double)self1 is_weekend:(double)self2 hour_plus_0:(double)self3 hour_plus_1:(double)self4 hour_plus_2:(double)self5 hour_plus_3:(double)self6 hour_plus_4:(double)self7 hour_plus_5:(double)self8 hours_until_use:(double)self9 meaningful_undercharge_rolling_average:(double)meaningful_undercharge_rolling_average error:(id *)error
{
  v23 = [[long_durationInput alloc] initWithClassic_time_between_uses_med_dur_1:classic_time_between_uses_med_dur_1 classic_time_between_uses_med_dur_2:classic_time_between_uses_med_dur_2 classic_time_between_uses_med_dur_4:classic_time_between_uses_med_dur_4 classic_time_between_uses_med_dur_24:classic_time_between_uses_med_dur_24 classic_time_between_uses_std_dur_1:classic_time_between_uses_std_dur_1 classic_time_between_uses_std_dur_2:classic_time_between_uses_std_dur_2 classic_time_between_uses_std_dur_4:classic_time_between_uses_std_dur_4 classic_time_between_uses_std_dur_24:classic_time_between_uses_std_dur_24 hour:*&hour is_weekend:*&is_weekend hour_plus_0:*&hour_plus_0 hour_plus_1:*&hour_plus_1 hour_plus_2:*&hour_plus_2 hour_plus_3:*&hour_plus_3 hour_plus_4:*&hour_plus_4 hour_plus_5:*&hour_plus_5 hours_until_use:*&hours_until_use meaningful_undercharge_rolling_average:*&meaningful_undercharge_rolling_average];
  v24 = [(long_duration *)self predictionFromFeatures:v23 error:error];

  return v24;
}

- (id)predictionsFromInputs:(id)inputs options:(id)options error:(id *)error
{
  inputsCopy = inputs;
  optionsCopy = options;
  v10 = [[MLArrayBatchProvider alloc] initWithFeatureProviderArray:inputsCopy];
  model = [(long_duration *)self model];
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
        v16 = [long_durationOutput alloc];
        v17 = [v15 featureValueForName:@"duration_pred"];
        [v17 doubleValue];
        v18 = [(long_durationOutput *)v16 initWithDuration_pred:?];

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