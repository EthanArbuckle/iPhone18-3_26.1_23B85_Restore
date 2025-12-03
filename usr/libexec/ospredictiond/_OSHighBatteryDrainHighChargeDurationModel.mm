@interface _OSHighBatteryDrainHighChargeDurationModel
+ (id)URLOfModelInThisBundle;
+ (void)loadContentsOfURL:(id)l configuration:(id)configuration completionHandler:(id)handler;
+ (void)loadWithConfiguration:(id)configuration completionHandler:(id)handler;
- (_OSHighBatteryDrainHighChargeDurationModel)init;
- (_OSHighBatteryDrainHighChargeDurationModel)initWithConfiguration:(id)configuration error:(id *)error;
- (_OSHighBatteryDrainHighChargeDurationModel)initWithContentsOfURL:(id)l configuration:(id)configuration error:(id *)error;
- (_OSHighBatteryDrainHighChargeDurationModel)initWithContentsOfURL:(id)l error:(id *)error;
- (_OSHighBatteryDrainHighChargeDurationModel)initWithMLModel:(id)model;
- (id)predictionFromActivity:(double)activity n_events_prior:(double)n_events_prior batt_weekday_percentile_prior:(double)batt_weekday_percentile_prior dist_from_total_mean:(double)dist_from_total_mean drain_since_last_plugin:(double)drain_since_last_plugin max_batt_12:(double)max_batt_12 mean_activity:(double)mean_activity mean_daily_plugins:(double)self0 net_drain_since_max:(double)self1 recent_drain_1:(double)self2 recent_drain_15min:(double)self3 recent_drain_3:(double)self4 start_time_secs:(double)self5 user_mean_drain:(double)self6 value:(double)self7 error:(id *)self8;
- (id)predictionFromFeatures:(id)features error:(id *)error;
- (id)predictionFromFeatures:(id)features options:(id)options error:(id *)error;
- (id)predictionsFromInputs:(id)inputs options:(id)options error:(id *)error;
- (void)predictionFromFeatures:(id)features completionHandler:(id)handler;
- (void)predictionFromFeatures:(id)features options:(id)options completionHandler:(id)handler;
@end

@implementation _OSHighBatteryDrainHighChargeDurationModel

+ (id)URLOfModelInThisBundle
{
  v2 = [NSBundle bundleForClass:objc_opt_class()];
  v3 = [v2 pathForResource:@"_OSHighBatteryDrainHighChargeDurationModel" ofType:@"mlmodelc"];

  if (v3)
  {
    v4 = [NSURL fileURLWithPath:v3];
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10005E47C();
    }

    v4 = 0;
  }

  return v4;
}

- (_OSHighBatteryDrainHighChargeDurationModel)initWithMLModel:(id)model
{
  modelCopy = model;
  if (modelCopy)
  {
    v10.receiver = self;
    v10.super_class = _OSHighBatteryDrainHighChargeDurationModel;
    v6 = [(_OSHighBatteryDrainHighChargeDurationModel *)&v10 init];
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

- (_OSHighBatteryDrainHighChargeDurationModel)init
{
  uRLOfModelInThisBundle = [objc_opt_class() URLOfModelInThisBundle];
  v4 = [(_OSHighBatteryDrainHighChargeDurationModel *)self initWithContentsOfURL:uRLOfModelInThisBundle error:0];

  return v4;
}

- (_OSHighBatteryDrainHighChargeDurationModel)initWithConfiguration:(id)configuration error:(id *)error
{
  configurationCopy = configuration;
  uRLOfModelInThisBundle = [objc_opt_class() URLOfModelInThisBundle];
  v8 = [(_OSHighBatteryDrainHighChargeDurationModel *)self initWithContentsOfURL:uRLOfModelInThisBundle configuration:configurationCopy error:error];

  return v8;
}

- (_OSHighBatteryDrainHighChargeDurationModel)initWithContentsOfURL:(id)l error:(id *)error
{
  v5 = [MLModel modelWithContentsOfURL:l error:error];
  if (v5)
  {
    self = [(_OSHighBatteryDrainHighChargeDurationModel *)self initWithMLModel:v5];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (_OSHighBatteryDrainHighChargeDurationModel)initWithContentsOfURL:(id)l configuration:(id)configuration error:(id *)error
{
  v6 = [MLModel modelWithContentsOfURL:l configuration:configuration error:error];
  if (v6)
  {
    self = [(_OSHighBatteryDrainHighChargeDurationModel *)self initWithMLModel:v6];
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
  v8[2] = sub_1000442B4;
  v8[3] = &unk_100095698;
  handlerCopy = handler;
  v7 = handlerCopy;
  [MLModel loadContentsOfURL:l configuration:configuration completionHandler:v8];
}

- (id)predictionFromFeatures:(id)features error:(id *)error
{
  featuresCopy = features;
  v7 = objc_alloc_init(MLPredictionOptions);
  v8 = [(_OSHighBatteryDrainHighChargeDurationModel *)self predictionFromFeatures:featuresCopy options:v7 error:error];

  return v8;
}

- (id)predictionFromFeatures:(id)features options:(id)options error:(id *)error
{
  optionsCopy = options;
  featuresCopy = features;
  model = [(_OSHighBatteryDrainHighChargeDurationModel *)self model];
  v11 = [model predictionFromFeatures:featuresCopy options:optionsCopy error:error];

  if (v11)
  {
    v12 = [_OSHighBatteryDrainHighChargeDurationModelOutput alloc];
    v13 = [v11 featureValueForName:@"label"];
    int64Value = [v13 int64Value];
    v15 = [v11 featureValueForName:@"classProbability"];
    dictionaryValue = [v15 dictionaryValue];
    v17 = [(_OSHighBatteryDrainHighChargeDurationModelOutput *)v12 initWithLabel:int64Value classProbability:dictionaryValue];
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
  model = [(_OSHighBatteryDrainHighChargeDurationModel *)self model];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000445AC;
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
  model = [(_OSHighBatteryDrainHighChargeDurationModel *)self model];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1000447B4;
  v13[3] = &unk_1000956C0;
  v14 = handlerCopy;
  v12 = handlerCopy;
  [model predictionFromFeatures:featuresCopy options:optionsCopy completionHandler:v13];
}

- (id)predictionFromActivity:(double)activity n_events_prior:(double)n_events_prior batt_weekday_percentile_prior:(double)batt_weekday_percentile_prior dist_from_total_mean:(double)dist_from_total_mean drain_since_last_plugin:(double)drain_since_last_plugin max_batt_12:(double)max_batt_12 mean_activity:(double)mean_activity mean_daily_plugins:(double)self0 net_drain_since_max:(double)self1 recent_drain_1:(double)self2 recent_drain_15min:(double)self3 recent_drain_3:(double)self4 start_time_secs:(double)self5 user_mean_drain:(double)self6 value:(double)self7 error:(id *)self8
{
  v20 = [[_OSHighBatteryDrainHighChargeDurationModelInput alloc] initWithActivity:activity n_events_prior:n_events_prior batt_weekday_percentile_prior:batt_weekday_percentile_prior dist_from_total_mean:dist_from_total_mean drain_since_last_plugin:drain_since_last_plugin max_batt_12:max_batt_12 mean_activity:mean_activity mean_daily_plugins:mean_daily_plugins net_drain_since_max:*&net_drain_since_max recent_drain_1:*&recent_drain_1 recent_drain_15min:*&recent_drain_15min recent_drain_3:*&recent_drain_3 start_time_secs:*&start_time_secs user_mean_drain:*&user_mean_drain value:*&value];
  v21 = [(_OSHighBatteryDrainHighChargeDurationModel *)self predictionFromFeatures:v20 error:error];

  return v21;
}

- (id)predictionsFromInputs:(id)inputs options:(id)options error:(id *)error
{
  inputsCopy = inputs;
  optionsCopy = options;
  v10 = [[MLArrayBatchProvider alloc] initWithFeatureProviderArray:inputsCopy];
  model = [(_OSHighBatteryDrainHighChargeDurationModel *)self model];
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
        v16 = [_OSHighBatteryDrainHighChargeDurationModelOutput alloc];
        v17 = [v15 featureValueForName:@"label"];
        int64Value = [v17 int64Value];
        v19 = [v15 featureValueForName:@"classProbability"];
        dictionaryValue = [v19 dictionaryValue];
        v21 = [(_OSHighBatteryDrainHighChargeDurationModelOutput *)v16 initWithLabel:int64Value classProbability:dictionaryValue];

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