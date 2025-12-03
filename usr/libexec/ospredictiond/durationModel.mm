@interface durationModel
+ (id)URLOfModelInThisBundle;
+ (void)loadContentsOfURL:(id)l configuration:(id)configuration completionHandler:(id)handler;
+ (void)loadWithConfiguration:(id)configuration completionHandler:(id)handler;
- (durationModel)init;
- (durationModel)initWithConfiguration:(id)configuration error:(id *)error;
- (durationModel)initWithContentsOfURL:(id)l configuration:(id)configuration error:(id *)error;
- (durationModel)initWithContentsOfURL:(id)l error:(id *)error;
- (durationModel)initWithMLModel:(id)model;
- (id)predictionFromFeatures:(id)features error:(id *)error;
- (id)predictionFromFeatures:(id)features options:(id)options error:(id *)error;
- (id)predictionFromPlugin_battery_level:(double)plugin_battery_level time_from_plugin:(double)time_from_plugin med_dur_1:(double)med_dur_1 med_dur_2:(double)med_dur_2 med_dur_4:(double)med_dur_4 med_dur_8:(double)med_dur_8 med_dur_16:(double)med_dur_16 med_dur_24:(double)self0 cnt_dur_1:(double)self1 cnt_dur_2:(double)self2 cnt_dur_4:(double)self3 cnt_dur_8:(double)self4 cnt_dur_16:(double)self5 cnt_dur_24:(double)self6 std_dur_1:(double)self7 std_dur_2:(double)self8 std_dur_4:(double)self9 std_dur_8:(double)std_dur_8 std_dur_16:(double)std_dur_16 std_dur_24:(double)std_dur_24 weekday_med_dur_1:(double)weekday_med_dur_1 weekday_med_dur_2:(double)weekday_med_dur_2 weekday_med_dur_4:(double)weekday_med_dur_4 weekday_med_dur_8:(double)weekday_med_dur_8 weekday_med_dur_24:(double)weekday_med_dur_24 weekday_std_dur_4:(double)weekday_std_dur_4 error:(id *)error;
- (id)predictionsFromInputs:(id)inputs options:(id)options error:(id *)error;
- (void)predictionFromFeatures:(id)features completionHandler:(id)handler;
- (void)predictionFromFeatures:(id)features options:(id)options completionHandler:(id)handler;
@end

@implementation durationModel

+ (id)URLOfModelInThisBundle
{
  v2 = [NSBundle bundleForClass:objc_opt_class()];
  v3 = [v2 pathForResource:@"durationModel" ofType:@"mlmodelc"];

  if (v3)
  {
    v4 = [NSURL fileURLWithPath:v3];
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10005E59C();
    }

    v4 = 0;
  }

  return v4;
}

- (durationModel)initWithMLModel:(id)model
{
  modelCopy = model;
  if (modelCopy)
  {
    v10.receiver = self;
    v10.super_class = durationModel;
    v6 = [(durationModel *)&v10 init];
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

- (durationModel)init
{
  uRLOfModelInThisBundle = [objc_opt_class() URLOfModelInThisBundle];
  v4 = [(durationModel *)self initWithContentsOfURL:uRLOfModelInThisBundle error:0];

  return v4;
}

- (durationModel)initWithConfiguration:(id)configuration error:(id *)error
{
  configurationCopy = configuration;
  uRLOfModelInThisBundle = [objc_opt_class() URLOfModelInThisBundle];
  v8 = [(durationModel *)self initWithContentsOfURL:uRLOfModelInThisBundle configuration:configurationCopy error:error];

  return v8;
}

- (durationModel)initWithContentsOfURL:(id)l error:(id *)error
{
  v5 = [MLModel modelWithContentsOfURL:l error:error];
  if (v5)
  {
    self = [(durationModel *)self initWithMLModel:v5];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (durationModel)initWithContentsOfURL:(id)l configuration:(id)configuration error:(id *)error
{
  v6 = [MLModel modelWithContentsOfURL:l configuration:configuration error:error];
  if (v6)
  {
    self = [(durationModel *)self initWithMLModel:v6];
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
  v8[2] = sub_1000490BC;
  v8[3] = &unk_100095698;
  handlerCopy = handler;
  v7 = handlerCopy;
  [MLModel loadContentsOfURL:l configuration:configuration completionHandler:v8];
}

- (id)predictionFromFeatures:(id)features error:(id *)error
{
  featuresCopy = features;
  v7 = objc_alloc_init(MLPredictionOptions);
  v8 = [(durationModel *)self predictionFromFeatures:featuresCopy options:v7 error:error];

  return v8;
}

- (id)predictionFromFeatures:(id)features options:(id)options error:(id *)error
{
  optionsCopy = options;
  featuresCopy = features;
  model = [(durationModel *)self model];
  v11 = [model predictionFromFeatures:featuresCopy options:optionsCopy error:error];

  if (v11)
  {
    v12 = [durationModelOutput alloc];
    v13 = [v11 featureValueForName:@"duration_pred"];
    [v13 doubleValue];
    v14 = [(durationModelOutput *)v12 initWithDuration_pred:?];
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
  model = [(durationModel *)self model];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100049374;
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
  model = [(durationModel *)self model];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100049534;
  v13[3] = &unk_1000956C0;
  v14 = handlerCopy;
  v12 = handlerCopy;
  [model predictionFromFeatures:featuresCopy options:optionsCopy completionHandler:v13];
}

- (id)predictionFromPlugin_battery_level:(double)plugin_battery_level time_from_plugin:(double)time_from_plugin med_dur_1:(double)med_dur_1 med_dur_2:(double)med_dur_2 med_dur_4:(double)med_dur_4 med_dur_8:(double)med_dur_8 med_dur_16:(double)med_dur_16 med_dur_24:(double)self0 cnt_dur_1:(double)self1 cnt_dur_2:(double)self2 cnt_dur_4:(double)self3 cnt_dur_8:(double)self4 cnt_dur_16:(double)self5 cnt_dur_24:(double)self6 std_dur_1:(double)self7 std_dur_2:(double)self8 std_dur_4:(double)self9 std_dur_8:(double)std_dur_8 std_dur_16:(double)std_dur_16 std_dur_24:(double)std_dur_24 weekday_med_dur_1:(double)weekday_med_dur_1 weekday_med_dur_2:(double)weekday_med_dur_2 weekday_med_dur_4:(double)weekday_med_dur_4 weekday_med_dur_8:(double)weekday_med_dur_8 weekday_med_dur_24:(double)weekday_med_dur_24 weekday_std_dur_4:(double)weekday_std_dur_4 error:(id *)error
{
  v31 = [[durationModelInput alloc] initWithPlugin_battery_level:plugin_battery_level time_from_plugin:time_from_plugin med_dur_1:med_dur_1 med_dur_2:med_dur_2 med_dur_4:med_dur_4 med_dur_8:med_dur_8 med_dur_16:med_dur_16 med_dur_24:med_dur_24 cnt_dur_1:*&cnt_dur_1 cnt_dur_2:*&cnt_dur_2 cnt_dur_4:*&cnt_dur_4 cnt_dur_8:*&cnt_dur_8 cnt_dur_16:*&cnt_dur_16 cnt_dur_24:*&cnt_dur_24 std_dur_1:*&std_dur_1 std_dur_2:*&std_dur_2 std_dur_4:*&std_dur_4 std_dur_8:*&std_dur_8 std_dur_16:*&std_dur_16 std_dur_24:*&std_dur_24 weekday_med_dur_1:*&weekday_med_dur_1 weekday_med_dur_2:*&weekday_med_dur_2 weekday_med_dur_4:*&weekday_med_dur_4 weekday_med_dur_8:*&weekday_med_dur_8 weekday_med_dur_24:*&weekday_med_dur_24 weekday_std_dur_4:*&weekday_std_dur_4];
  v32 = [(durationModel *)self predictionFromFeatures:v31 error:error];

  return v32;
}

- (id)predictionsFromInputs:(id)inputs options:(id)options error:(id *)error
{
  inputsCopy = inputs;
  optionsCopy = options;
  v10 = [[MLArrayBatchProvider alloc] initWithFeatureProviderArray:inputsCopy];
  model = [(durationModel *)self model];
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
        v16 = [durationModelOutput alloc];
        v17 = [v15 featureValueForName:@"duration_pred"];
        [v17 doubleValue];
        v18 = [(durationModelOutput *)v16 initWithDuration_pred:?];

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