@interface availabilityPredict061725
+ (id)URLOfModelInThisBundle;
+ (void)loadContentsOfURL:(id)l configuration:(id)configuration completionHandler:(id)handler;
+ (void)loadWithConfiguration:(id)configuration completionHandler:(id)handler;
- (availabilityPredict061725)init;
- (availabilityPredict061725)initWithConfiguration:(id)configuration error:(id *)error;
- (availabilityPredict061725)initWithContentsOfURL:(id)l configuration:(id)configuration error:(id *)error;
- (availabilityPredict061725)initWithContentsOfURL:(id)l error:(id *)error;
- (availabilityPredict061725)initWithMLModel:(id)model;
- (id)predictionFromDowntimeStartHour:(double)hour downtimeEndHour:(double)endHour hour:(double)a5 weekday:(double)weekday motionActivityCount:(double)count motionActivityCountShortLookback:(double)lookback motionActivityOverlapCountShortLookback:(double)shortLookback engagementCount:(double)self0 engagementCountMidLookback:(double)self1 engagementCountBin1MidLookback:(double)self2 healthandfitnessScreentimeCount:(double)self3 healthandfitnessScreentimeCountMidLookback:(double)self4 healthandfitnessScreentimeCountShortLookback:(double)self5 screentimeCount:(double)self6 screentimeSameWeekdayProbability:(double)self7 screentimeCountShortLookback:(double)self8 overMedianScreentimeSameWeekdayProbability:(double)self9 overMedianScreentimeSameWeekdayProbabilityShortLookback:(double)probabilityShortLookback over20MinScreentimeSameWeekdayProbability:(double)sameWeekdayProbability over20MinScreentimeCountMidLookback:(double)screentimeCountMidLookback callCount:(double)callCount musicCount:(double)musicCount musicCountShortLookback:(double)musicCountShortLookback atHomeCount:(double)homeCount atHomeCountShortLookback:(double)homeCountShortLookback atWorkCount:(double)workCount atWorkSameWeekdayProbability:(double)workSameWeekdayProbability atWorkCountShortLookback:(double)hour0 weekdayPrevScreentimeCount:(double)hour1 firstScreentimeOfDay:(double)hour2 lastScreentimeOfDay:(double)hour3 isAfternoon:(double)hour4 isEvening:(double)hour5 isMorning:(double)hour6 isNight:(double)hour7 error:(id *)hour8;
- (id)predictionFromFeatures:(id)features error:(id *)error;
- (id)predictionFromFeatures:(id)features options:(id)options error:(id *)error;
- (id)predictionsFromInputs:(id)inputs options:(id)options error:(id *)error;
- (void)predictionFromFeatures:(id)features completionHandler:(id)handler;
- (void)predictionFromFeatures:(id)features options:(id)options completionHandler:(id)handler;
@end

@implementation availabilityPredict061725

+ (id)URLOfModelInThisBundle
{
  v2 = [NSBundle bundleForClass:objc_opt_class()];
  v3 = [v2 pathForResource:@"availabilityPredict061725" ofType:@"mlmodelc"];

  if (v3)
  {
    v4 = [NSURL fileURLWithPath:v3];
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      +[availabilityPredict061725 URLOfModelInThisBundle];
    }

    v4 = 0;
  }

  return v4;
}

- (availabilityPredict061725)initWithMLModel:(id)model
{
  modelCopy = model;
  if (modelCopy)
  {
    v10.receiver = self;
    v10.super_class = availabilityPredict061725;
    v6 = [(availabilityPredict061725 *)&v10 init];
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

- (availabilityPredict061725)init
{
  uRLOfModelInThisBundle = [objc_opt_class() URLOfModelInThisBundle];
  v4 = [(availabilityPredict061725 *)self initWithContentsOfURL:uRLOfModelInThisBundle error:0];

  return v4;
}

- (availabilityPredict061725)initWithConfiguration:(id)configuration error:(id *)error
{
  configurationCopy = configuration;
  uRLOfModelInThisBundle = [objc_opt_class() URLOfModelInThisBundle];
  v8 = [(availabilityPredict061725 *)self initWithContentsOfURL:uRLOfModelInThisBundle configuration:configurationCopy error:error];

  return v8;
}

- (availabilityPredict061725)initWithContentsOfURL:(id)l error:(id *)error
{
  v5 = [MLModel modelWithContentsOfURL:l error:error];
  if (v5)
  {
    self = [(availabilityPredict061725 *)self initWithMLModel:v5];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (availabilityPredict061725)initWithContentsOfURL:(id)l configuration:(id)configuration error:(id *)error
{
  v6 = [MLModel modelWithContentsOfURL:l configuration:configuration error:error];
  if (v6)
  {
    self = [(availabilityPredict061725 *)self initWithMLModel:v6];
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
  v8[2] = __79__availabilityPredict061725_loadContentsOfURL_configuration_completionHandler___block_invoke;
  v8[3] = &unk_100340B08;
  handlerCopy = handler;
  v7 = handlerCopy;
  [MLModel loadContentsOfURL:l configuration:configuration completionHandler:v8];
}

- (id)predictionFromFeatures:(id)features error:(id *)error
{
  featuresCopy = features;
  v7 = objc_alloc_init(MLPredictionOptions);
  v8 = [(availabilityPredict061725 *)self predictionFromFeatures:featuresCopy options:v7 error:error];

  return v8;
}

- (id)predictionFromFeatures:(id)features options:(id)options error:(id *)error
{
  optionsCopy = options;
  featuresCopy = features;
  model = [(availabilityPredict061725 *)self model];
  v11 = [model predictionFromFeatures:featuresCopy options:optionsCopy error:error];

  if (v11)
  {
    v12 = [availabilityPredict061725Output alloc];
    v13 = [v11 featureValueForName:@"target"];
    int64Value = [v13 int64Value];
    v15 = [v11 featureValueForName:@"classProbability"];
    dictionaryValue = [v15 dictionaryValue];
    v17 = [(availabilityPredict061725Output *)v12 initWithTarget:int64Value classProbability:dictionaryValue];
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
  model = [(availabilityPredict061725 *)self model];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = __70__availabilityPredict061725_predictionFromFeatures_completionHandler___block_invoke;
  v10[3] = &unk_100340B30;
  v11 = handlerCopy;
  v9 = handlerCopy;
  [model predictionFromFeatures:featuresCopy completionHandler:v10];
}

- (void)predictionFromFeatures:(id)features options:(id)options completionHandler:(id)handler
{
  handlerCopy = handler;
  optionsCopy = options;
  featuresCopy = features;
  model = [(availabilityPredict061725 *)self model];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = __78__availabilityPredict061725_predictionFromFeatures_options_completionHandler___block_invoke;
  v13[3] = &unk_100340B30;
  v14 = handlerCopy;
  v12 = handlerCopy;
  [model predictionFromFeatures:featuresCopy options:optionsCopy completionHandler:v13];
}

- (id)predictionFromDowntimeStartHour:(double)hour downtimeEndHour:(double)endHour hour:(double)a5 weekday:(double)weekday motionActivityCount:(double)count motionActivityCountShortLookback:(double)lookback motionActivityOverlapCountShortLookback:(double)shortLookback engagementCount:(double)self0 engagementCountMidLookback:(double)self1 engagementCountBin1MidLookback:(double)self2 healthandfitnessScreentimeCount:(double)self3 healthandfitnessScreentimeCountMidLookback:(double)self4 healthandfitnessScreentimeCountShortLookback:(double)self5 screentimeCount:(double)self6 screentimeSameWeekdayProbability:(double)self7 screentimeCountShortLookback:(double)self8 overMedianScreentimeSameWeekdayProbability:(double)self9 overMedianScreentimeSameWeekdayProbabilityShortLookback:(double)probabilityShortLookback over20MinScreentimeSameWeekdayProbability:(double)sameWeekdayProbability over20MinScreentimeCountMidLookback:(double)screentimeCountMidLookback callCount:(double)callCount musicCount:(double)musicCount musicCountShortLookback:(double)musicCountShortLookback atHomeCount:(double)homeCount atHomeCountShortLookback:(double)homeCountShortLookback atWorkCount:(double)workCount atWorkSameWeekdayProbability:(double)workSameWeekdayProbability atWorkCountShortLookback:(double)hour0 weekdayPrevScreentimeCount:(double)hour1 firstScreentimeOfDay:(double)hour2 lastScreentimeOfDay:(double)hour3 isAfternoon:(double)hour4 isEvening:(double)hour5 isMorning:(double)hour6 isNight:(double)hour7 error:(id *)hour8
{
  v40 = [[availabilityPredict061725Input alloc] initWithDowntimeStartHour:hour downtimeEndHour:endHour hour:a5 weekday:weekday motionActivityCount:count motionActivityCountShortLookback:lookback motionActivityOverlapCountShortLookback:shortLookback engagementCount:engagementCount engagementCountMidLookback:*&midLookback engagementCountBin1MidLookback:*&bin1MidLookback healthandfitnessScreentimeCount:*&screentimeCount healthandfitnessScreentimeCountMidLookback:*&countMidLookback healthandfitnessScreentimeCountShortLookback:*&countShortLookback screentimeCount:*&a16 screentimeSameWeekdayProbability:*&probability screentimeCountShortLookback:*&screentimeCountShortLookback overMedianScreentimeSameWeekdayProbability:*&weekdayProbability overMedianScreentimeSameWeekdayProbabilityShortLookback:*&probabilityShortLookback over20MinScreentimeSameWeekdayProbability:*&sameWeekdayProbability over20MinScreentimeCountMidLookback:*&screentimeCountMidLookback callCount:*&callCount musicCount:*&musicCount musicCountShortLookback:*&musicCountShortLookback atHomeCount:*&homeCount atHomeCountShortLookback:*&homeCountShortLookback atWorkCount:*&workCount atWorkSameWeekdayProbability:*&workSameWeekdayProbability atWorkCountShortLookback:*&workCountShortLookback weekdayPrevScreentimeCount:*&prevScreentimeCount firstScreentimeOfDay:*&day lastScreentimeOfDay:*&ofDay isAfternoon:*&afternoon isEvening:*&evening isMorning:*&morning isNight:*&night];
  v41 = [(availabilityPredict061725 *)self predictionFromFeatures:v40 error:error];

  return v41;
}

- (id)predictionsFromInputs:(id)inputs options:(id)options error:(id *)error
{
  inputsCopy = inputs;
  optionsCopy = options;
  v10 = [[MLArrayBatchProvider alloc] initWithFeatureProviderArray:inputsCopy];
  model = [(availabilityPredict061725 *)self model];
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
        v16 = [availabilityPredict061725Output alloc];
        v17 = [v15 featureValueForName:@"target"];
        int64Value = [v17 int64Value];
        v19 = [v15 featureValueForName:@"classProbability"];
        dictionaryValue = [v19 dictionaryValue];
        v21 = [(availabilityPredict061725Output *)v16 initWithTarget:int64Value classProbability:dictionaryValue];

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