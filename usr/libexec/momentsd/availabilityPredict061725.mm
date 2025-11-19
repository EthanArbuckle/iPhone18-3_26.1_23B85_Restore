@interface availabilityPredict061725
+ (id)URLOfModelInThisBundle;
+ (void)loadContentsOfURL:(id)a3 configuration:(id)a4 completionHandler:(id)a5;
+ (void)loadWithConfiguration:(id)a3 completionHandler:(id)a4;
- (availabilityPredict061725)init;
- (availabilityPredict061725)initWithConfiguration:(id)a3 error:(id *)a4;
- (availabilityPredict061725)initWithContentsOfURL:(id)a3 configuration:(id)a4 error:(id *)a5;
- (availabilityPredict061725)initWithContentsOfURL:(id)a3 error:(id *)a4;
- (availabilityPredict061725)initWithMLModel:(id)a3;
- (id)predictionFromDowntimeStartHour:(double)a3 downtimeEndHour:(double)a4 hour:(double)a5 weekday:(double)a6 motionActivityCount:(double)a7 motionActivityCountShortLookback:(double)a8 motionActivityOverlapCountShortLookback:(double)a9 engagementCount:(double)a10 engagementCountMidLookback:(double)a11 engagementCountBin1MidLookback:(double)a12 healthandfitnessScreentimeCount:(double)a13 healthandfitnessScreentimeCountMidLookback:(double)a14 healthandfitnessScreentimeCountShortLookback:(double)a15 screentimeCount:(double)a16 screentimeSameWeekdayProbability:(double)a17 screentimeCountShortLookback:(double)a18 overMedianScreentimeSameWeekdayProbability:(double)a19 overMedianScreentimeSameWeekdayProbabilityShortLookback:(double)a20 over20MinScreentimeSameWeekdayProbability:(double)a21 over20MinScreentimeCountMidLookback:(double)a22 callCount:(double)a23 musicCount:(double)a24 musicCountShortLookback:(double)a25 atHomeCount:(double)a26 atHomeCountShortLookback:(double)a27 atWorkCount:(double)a28 atWorkSameWeekdayProbability:(double)a29 atWorkCountShortLookback:(double)a30 weekdayPrevScreentimeCount:(double)a31 firstScreentimeOfDay:(double)a32 lastScreentimeOfDay:(double)a33 isAfternoon:(double)a34 isEvening:(double)a35 isMorning:(double)a36 isNight:(double)a37 error:(id *)a38;
- (id)predictionFromFeatures:(id)a3 error:(id *)a4;
- (id)predictionFromFeatures:(id)a3 options:(id)a4 error:(id *)a5;
- (id)predictionsFromInputs:(id)a3 options:(id)a4 error:(id *)a5;
- (void)predictionFromFeatures:(id)a3 completionHandler:(id)a4;
- (void)predictionFromFeatures:(id)a3 options:(id)a4 completionHandler:(id)a5;
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

- (availabilityPredict061725)initWithMLModel:(id)a3
{
  v5 = a3;
  if (v5)
  {
    v10.receiver = self;
    v10.super_class = availabilityPredict061725;
    v6 = [(availabilityPredict061725 *)&v10 init];
    v7 = v6;
    if (v6)
    {
      objc_storeStrong(&v6->_model, a3);
    }

    self = v7;
    v8 = self;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (availabilityPredict061725)init
{
  v3 = [objc_opt_class() URLOfModelInThisBundle];
  v4 = [(availabilityPredict061725 *)self initWithContentsOfURL:v3 error:0];

  return v4;
}

- (availabilityPredict061725)initWithConfiguration:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [objc_opt_class() URLOfModelInThisBundle];
  v8 = [(availabilityPredict061725 *)self initWithContentsOfURL:v7 configuration:v6 error:a4];

  return v8;
}

- (availabilityPredict061725)initWithContentsOfURL:(id)a3 error:(id *)a4
{
  v5 = [MLModel modelWithContentsOfURL:a3 error:a4];
  if (v5)
  {
    self = [(availabilityPredict061725 *)self initWithMLModel:v5];
    v6 = self;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (availabilityPredict061725)initWithContentsOfURL:(id)a3 configuration:(id)a4 error:(id *)a5
{
  v6 = [MLModel modelWithContentsOfURL:a3 configuration:a4 error:a5];
  if (v6)
  {
    self = [(availabilityPredict061725 *)self initWithMLModel:v6];
    v7 = self;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (void)loadWithConfiguration:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [a1 URLOfModelInThisBundle];
  [a1 loadContentsOfURL:v8 configuration:v7 completionHandler:v6];
}

+ (void)loadContentsOfURL:(id)a3 configuration:(id)a4 completionHandler:(id)a5
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = __79__availabilityPredict061725_loadContentsOfURL_configuration_completionHandler___block_invoke;
  v8[3] = &unk_100340B08;
  v9 = a5;
  v7 = v9;
  [MLModel loadContentsOfURL:a3 configuration:a4 completionHandler:v8];
}

- (id)predictionFromFeatures:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = objc_alloc_init(MLPredictionOptions);
  v8 = [(availabilityPredict061725 *)self predictionFromFeatures:v6 options:v7 error:a4];

  return v8;
}

- (id)predictionFromFeatures:(id)a3 options:(id)a4 error:(id *)a5
{
  v8 = a4;
  v9 = a3;
  v10 = [(availabilityPredict061725 *)self model];
  v11 = [v10 predictionFromFeatures:v9 options:v8 error:a5];

  if (v11)
  {
    v12 = [availabilityPredict061725Output alloc];
    v13 = [v11 featureValueForName:@"target"];
    v14 = [v13 int64Value];
    v15 = [v11 featureValueForName:@"classProbability"];
    v16 = [v15 dictionaryValue];
    v17 = [(availabilityPredict061725Output *)v12 initWithTarget:v14 classProbability:v16];
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (void)predictionFromFeatures:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(availabilityPredict061725 *)self model];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = __70__availabilityPredict061725_predictionFromFeatures_completionHandler___block_invoke;
  v10[3] = &unk_100340B30;
  v11 = v6;
  v9 = v6;
  [v8 predictionFromFeatures:v7 completionHandler:v10];
}

- (void)predictionFromFeatures:(id)a3 options:(id)a4 completionHandler:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(availabilityPredict061725 *)self model];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = __78__availabilityPredict061725_predictionFromFeatures_options_completionHandler___block_invoke;
  v13[3] = &unk_100340B30;
  v14 = v8;
  v12 = v8;
  [v11 predictionFromFeatures:v10 options:v9 completionHandler:v13];
}

- (id)predictionFromDowntimeStartHour:(double)a3 downtimeEndHour:(double)a4 hour:(double)a5 weekday:(double)a6 motionActivityCount:(double)a7 motionActivityCountShortLookback:(double)a8 motionActivityOverlapCountShortLookback:(double)a9 engagementCount:(double)a10 engagementCountMidLookback:(double)a11 engagementCountBin1MidLookback:(double)a12 healthandfitnessScreentimeCount:(double)a13 healthandfitnessScreentimeCountMidLookback:(double)a14 healthandfitnessScreentimeCountShortLookback:(double)a15 screentimeCount:(double)a16 screentimeSameWeekdayProbability:(double)a17 screentimeCountShortLookback:(double)a18 overMedianScreentimeSameWeekdayProbability:(double)a19 overMedianScreentimeSameWeekdayProbabilityShortLookback:(double)a20 over20MinScreentimeSameWeekdayProbability:(double)a21 over20MinScreentimeCountMidLookback:(double)a22 callCount:(double)a23 musicCount:(double)a24 musicCountShortLookback:(double)a25 atHomeCount:(double)a26 atHomeCountShortLookback:(double)a27 atWorkCount:(double)a28 atWorkSameWeekdayProbability:(double)a29 atWorkCountShortLookback:(double)a30 weekdayPrevScreentimeCount:(double)a31 firstScreentimeOfDay:(double)a32 lastScreentimeOfDay:(double)a33 isAfternoon:(double)a34 isEvening:(double)a35 isMorning:(double)a36 isNight:(double)a37 error:(id *)a38
{
  v40 = [[availabilityPredict061725Input alloc] initWithDowntimeStartHour:a3 downtimeEndHour:a4 hour:a5 weekday:a6 motionActivityCount:a7 motionActivityCountShortLookback:a8 motionActivityOverlapCountShortLookback:a9 engagementCount:a10 engagementCountMidLookback:*&a11 engagementCountBin1MidLookback:*&a12 healthandfitnessScreentimeCount:*&a13 healthandfitnessScreentimeCountMidLookback:*&a14 healthandfitnessScreentimeCountShortLookback:*&a15 screentimeCount:*&a16 screentimeSameWeekdayProbability:*&a17 screentimeCountShortLookback:*&a18 overMedianScreentimeSameWeekdayProbability:*&a19 overMedianScreentimeSameWeekdayProbabilityShortLookback:*&a20 over20MinScreentimeSameWeekdayProbability:*&a21 over20MinScreentimeCountMidLookback:*&a22 callCount:*&a23 musicCount:*&a24 musicCountShortLookback:*&a25 atHomeCount:*&a26 atHomeCountShortLookback:*&a27 atWorkCount:*&a28 atWorkSameWeekdayProbability:*&a29 atWorkCountShortLookback:*&a30 weekdayPrevScreentimeCount:*&a31 firstScreentimeOfDay:*&a32 lastScreentimeOfDay:*&a33 isAfternoon:*&a34 isEvening:*&a35 isMorning:*&a36 isNight:*&a37];
  v41 = [(availabilityPredict061725 *)self predictionFromFeatures:v40 error:a38];

  return v41;
}

- (id)predictionsFromInputs:(id)a3 options:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [[MLArrayBatchProvider alloc] initWithFeatureProviderArray:v8];
  v11 = [(availabilityPredict061725 *)self model];
  v12 = [v11 predictionsFromBatch:v10 options:v9 error:a5];

  if (v12)
  {
    v13 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v12 count]);
    if ([v12 count] >= 1)
    {
      v23 = v10;
      v24 = v9;
      v25 = v8;
      v14 = 0;
      do
      {
        v15 = [v12 featuresAtIndex:v14];
        v16 = [availabilityPredict061725Output alloc];
        v17 = [v15 featureValueForName:@"target"];
        v18 = [v17 int64Value];
        v19 = [v15 featureValueForName:@"classProbability"];
        v20 = [v19 dictionaryValue];
        v21 = [(availabilityPredict061725Output *)v16 initWithTarget:v18 classProbability:v20];

        [v13 addObject:v21];
        ++v14;
      }

      while (v14 < [v12 count]);
      v9 = v24;
      v8 = v25;
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