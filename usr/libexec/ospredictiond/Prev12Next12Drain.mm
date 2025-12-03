@interface Prev12Next12Drain
+ (id)URLOfModelInThisBundle;
+ (void)loadContentsOfURL:(id)l configuration:(id)configuration completionHandler:(id)handler;
+ (void)loadWithConfiguration:(id)configuration completionHandler:(id)handler;
- (Prev12Next12Drain)init;
- (Prev12Next12Drain)initWithConfiguration:(id)configuration error:(id *)error;
- (Prev12Next12Drain)initWithContentsOfURL:(id)l configuration:(id)configuration error:(id *)error;
- (Prev12Next12Drain)initWithContentsOfURL:(id)l error:(id *)error;
- (Prev12Next12Drain)initWithMLModel:(id)model;
- (id)predictionFromCurrentCapacity:(double)capacity drainOnly:(double)only _12hour_only_drain_before:(double)_12hour_only_drain_before _24hour_only_drain_before:(double)_24hour_only_drain_before _6hour_only_drain_before:(double)_6hour_only_drain_before _3hour_only_drain_before:(double)_3hour_only_drain_before total_drain_before:(double)total_drain_before rolling_mean_24hour_drain_before:(double)self0 rolling_median_24hour_drain_before:(double)self1 rolling_mean_12hour_drain_before:(double)self2 rolling_median_12hour_drain_before:(double)self3 mean_12hour_drain_before:(double)self4 _24HourOnlyDrainBeforePercentileCategoryByUser:(double)self5 rolling30DaysAvgOf24hourOnlyDrainBefore:(double)self6 countsPast24hour_only_drain_before_100_last7Days:(double)self7 countsPast24hour_only_drain_before_100_last30Days:(double)self8 _12HourOnlyDrainBeforePercentileCategory:(double)self9 _24HourOnlyDrainBeforePercentileCategory:(double)percentileCategory error:(id *)error;
- (id)predictionFromFeatures:(id)features error:(id *)error;
- (id)predictionFromFeatures:(id)features options:(id)options error:(id *)error;
- (id)predictionsFromInputs:(id)inputs options:(id)options error:(id *)error;
- (void)predictionFromFeatures:(id)features completionHandler:(id)handler;
- (void)predictionFromFeatures:(id)features options:(id)options completionHandler:(id)handler;
@end

@implementation Prev12Next12Drain

+ (id)URLOfModelInThisBundle
{
  v2 = [NSBundle bundleForClass:objc_opt_class()];
  v3 = [v2 pathForResource:@"Prev12Next12Drain" ofType:@"mlmodelc"];

  if (v3)
  {
    v4 = [NSURL fileURLWithPath:v3];
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10005E62C();
    }

    v4 = 0;
  }

  return v4;
}

- (Prev12Next12Drain)initWithMLModel:(id)model
{
  modelCopy = model;
  if (modelCopy)
  {
    v10.receiver = self;
    v10.super_class = Prev12Next12Drain;
    v6 = [(Prev12Next12Drain *)&v10 init];
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

- (Prev12Next12Drain)init
{
  uRLOfModelInThisBundle = [objc_opt_class() URLOfModelInThisBundle];
  v4 = [(Prev12Next12Drain *)self initWithContentsOfURL:uRLOfModelInThisBundle error:0];

  return v4;
}

- (Prev12Next12Drain)initWithConfiguration:(id)configuration error:(id *)error
{
  configurationCopy = configuration;
  uRLOfModelInThisBundle = [objc_opt_class() URLOfModelInThisBundle];
  v8 = [(Prev12Next12Drain *)self initWithContentsOfURL:uRLOfModelInThisBundle configuration:configurationCopy error:error];

  return v8;
}

- (Prev12Next12Drain)initWithContentsOfURL:(id)l error:(id *)error
{
  v5 = [MLModel modelWithContentsOfURL:l error:error];
  if (v5)
  {
    self = [(Prev12Next12Drain *)self initWithMLModel:v5];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (Prev12Next12Drain)initWithContentsOfURL:(id)l configuration:(id)configuration error:(id *)error
{
  v6 = [MLModel modelWithContentsOfURL:l configuration:configuration error:error];
  if (v6)
  {
    self = [(Prev12Next12Drain *)self initWithMLModel:v6];
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
  v8[2] = sub_10004E8C4;
  v8[3] = &unk_100095698;
  handlerCopy = handler;
  v7 = handlerCopy;
  [MLModel loadContentsOfURL:l configuration:configuration completionHandler:v8];
}

- (id)predictionFromFeatures:(id)features error:(id *)error
{
  featuresCopy = features;
  v7 = objc_alloc_init(MLPredictionOptions);
  v8 = [(Prev12Next12Drain *)self predictionFromFeatures:featuresCopy options:v7 error:error];

  return v8;
}

- (id)predictionFromFeatures:(id)features options:(id)options error:(id *)error
{
  optionsCopy = options;
  featuresCopy = features;
  model = [(Prev12Next12Drain *)self model];
  v11 = [model predictionFromFeatures:featuresCopy options:optionsCopy error:error];

  if (v11)
  {
    v12 = [Prev12Next12DrainOutput alloc];
    v13 = [v11 featureValueForName:@"24hour_only_drain_label_100"];
    int64Value = [v13 int64Value];
    v15 = [v11 featureValueForName:@"classProbability"];
    dictionaryValue = [v15 dictionaryValue];
    v17 = [(Prev12Next12DrainOutput *)v12 initWith_24hour_only_drain_label_100:int64Value classProbability:dictionaryValue];
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
  model = [(Prev12Next12Drain *)self model];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10004EBBC;
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
  model = [(Prev12Next12Drain *)self model];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10004EDC4;
  v13[3] = &unk_1000956C0;
  v14 = handlerCopy;
  v12 = handlerCopy;
  [model predictionFromFeatures:featuresCopy options:optionsCopy completionHandler:v13];
}

- (id)predictionFromCurrentCapacity:(double)capacity drainOnly:(double)only _12hour_only_drain_before:(double)_12hour_only_drain_before _24hour_only_drain_before:(double)_24hour_only_drain_before _6hour_only_drain_before:(double)_6hour_only_drain_before _3hour_only_drain_before:(double)_3hour_only_drain_before total_drain_before:(double)total_drain_before rolling_mean_24hour_drain_before:(double)self0 rolling_median_24hour_drain_before:(double)self1 rolling_mean_12hour_drain_before:(double)self2 rolling_median_12hour_drain_before:(double)self3 mean_12hour_drain_before:(double)self4 _24HourOnlyDrainBeforePercentileCategoryByUser:(double)self5 rolling30DaysAvgOf24hourOnlyDrainBefore:(double)self6 countsPast24hour_only_drain_before_100_last7Days:(double)self7 countsPast24hour_only_drain_before_100_last30Days:(double)self8 _12HourOnlyDrainBeforePercentileCategory:(double)self9 _24HourOnlyDrainBeforePercentileCategory:(double)percentileCategory error:(id *)error
{
  v23 = [[Prev12Next12DrainInput alloc] initWithCurrentCapacity:capacity drainOnly:only _12hour_only_drain_before:_12hour_only_drain_before _24hour_only_drain_before:_24hour_only_drain_before _6hour_only_drain_before:_6hour_only_drain_before _3hour_only_drain_before:_3hour_only_drain_before total_drain_before:total_drain_before rolling_mean_24hour_drain_before:rolling_mean_24hour_drain_before rolling_median_24hour_drain_before:*&rolling_median_24hour_drain_before rolling_mean_12hour_drain_before:*&rolling_mean_12hour_drain_before rolling_median_12hour_drain_before:*&rolling_median_12hour_drain_before mean_12hour_drain_before:*&mean_12hour_drain_before _24HourOnlyDrainBeforePercentileCategoryByUser:*&user rolling30DaysAvgOf24hourOnlyDrainBefore:*&before countsPast24hour_only_drain_before_100_last7Days:*&days countsPast24hour_only_drain_before_100_last30Days:*&past24hour_only_drain_before_100_last30Days _12HourOnlyDrainBeforePercentileCategory:*&category _24HourOnlyDrainBeforePercentileCategory:*&percentileCategory];
  v24 = [(Prev12Next12Drain *)self predictionFromFeatures:v23 error:error];

  return v24;
}

- (id)predictionsFromInputs:(id)inputs options:(id)options error:(id *)error
{
  inputsCopy = inputs;
  optionsCopy = options;
  v10 = [[MLArrayBatchProvider alloc] initWithFeatureProviderArray:inputsCopy];
  model = [(Prev12Next12Drain *)self model];
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
        v16 = [Prev12Next12DrainOutput alloc];
        v17 = [v15 featureValueForName:@"24hour_only_drain_label_100"];
        int64Value = [v17 int64Value];
        v19 = [v15 featureValueForName:@"classProbability"];
        dictionaryValue = [v19 dictionaryValue];
        v21 = [(Prev12Next12DrainOutput *)v16 initWith_24hour_only_drain_label_100:int64Value classProbability:dictionaryValue];

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