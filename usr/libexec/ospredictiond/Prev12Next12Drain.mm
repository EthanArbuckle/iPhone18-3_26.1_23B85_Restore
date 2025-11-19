@interface Prev12Next12Drain
+ (id)URLOfModelInThisBundle;
+ (void)loadContentsOfURL:(id)a3 configuration:(id)a4 completionHandler:(id)a5;
+ (void)loadWithConfiguration:(id)a3 completionHandler:(id)a4;
- (Prev12Next12Drain)init;
- (Prev12Next12Drain)initWithConfiguration:(id)a3 error:(id *)a4;
- (Prev12Next12Drain)initWithContentsOfURL:(id)a3 configuration:(id)a4 error:(id *)a5;
- (Prev12Next12Drain)initWithContentsOfURL:(id)a3 error:(id *)a4;
- (Prev12Next12Drain)initWithMLModel:(id)a3;
- (id)predictionFromCurrentCapacity:(double)a3 drainOnly:(double)a4 _12hour_only_drain_before:(double)a5 _24hour_only_drain_before:(double)a6 _6hour_only_drain_before:(double)a7 _3hour_only_drain_before:(double)a8 total_drain_before:(double)a9 rolling_mean_24hour_drain_before:(double)a10 rolling_median_24hour_drain_before:(double)a11 rolling_mean_12hour_drain_before:(double)a12 rolling_median_12hour_drain_before:(double)a13 mean_12hour_drain_before:(double)a14 _24HourOnlyDrainBeforePercentileCategoryByUser:(double)a15 rolling30DaysAvgOf24hourOnlyDrainBefore:(double)a16 countsPast24hour_only_drain_before_100_last7Days:(double)a17 countsPast24hour_only_drain_before_100_last30Days:(double)a18 _12HourOnlyDrainBeforePercentileCategory:(double)a19 _24HourOnlyDrainBeforePercentileCategory:(double)a20 error:(id *)a21;
- (id)predictionFromFeatures:(id)a3 error:(id *)a4;
- (id)predictionFromFeatures:(id)a3 options:(id)a4 error:(id *)a5;
- (id)predictionsFromInputs:(id)a3 options:(id)a4 error:(id *)a5;
- (void)predictionFromFeatures:(id)a3 completionHandler:(id)a4;
- (void)predictionFromFeatures:(id)a3 options:(id)a4 completionHandler:(id)a5;
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

- (Prev12Next12Drain)initWithMLModel:(id)a3
{
  v5 = a3;
  if (v5)
  {
    v10.receiver = self;
    v10.super_class = Prev12Next12Drain;
    v6 = [(Prev12Next12Drain *)&v10 init];
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

- (Prev12Next12Drain)init
{
  v3 = [objc_opt_class() URLOfModelInThisBundle];
  v4 = [(Prev12Next12Drain *)self initWithContentsOfURL:v3 error:0];

  return v4;
}

- (Prev12Next12Drain)initWithConfiguration:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [objc_opt_class() URLOfModelInThisBundle];
  v8 = [(Prev12Next12Drain *)self initWithContentsOfURL:v7 configuration:v6 error:a4];

  return v8;
}

- (Prev12Next12Drain)initWithContentsOfURL:(id)a3 error:(id *)a4
{
  v5 = [MLModel modelWithContentsOfURL:a3 error:a4];
  if (v5)
  {
    self = [(Prev12Next12Drain *)self initWithMLModel:v5];
    v6 = self;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (Prev12Next12Drain)initWithContentsOfURL:(id)a3 configuration:(id)a4 error:(id *)a5
{
  v6 = [MLModel modelWithContentsOfURL:a3 configuration:a4 error:a5];
  if (v6)
  {
    self = [(Prev12Next12Drain *)self initWithMLModel:v6];
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
  v8[2] = sub_10004E8C4;
  v8[3] = &unk_100095698;
  v9 = a5;
  v7 = v9;
  [MLModel loadContentsOfURL:a3 configuration:a4 completionHandler:v8];
}

- (id)predictionFromFeatures:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = objc_alloc_init(MLPredictionOptions);
  v8 = [(Prev12Next12Drain *)self predictionFromFeatures:v6 options:v7 error:a4];

  return v8;
}

- (id)predictionFromFeatures:(id)a3 options:(id)a4 error:(id *)a5
{
  v8 = a4;
  v9 = a3;
  v10 = [(Prev12Next12Drain *)self model];
  v11 = [v10 predictionFromFeatures:v9 options:v8 error:a5];

  if (v11)
  {
    v12 = [Prev12Next12DrainOutput alloc];
    v13 = [v11 featureValueForName:@"24hour_only_drain_label_100"];
    v14 = [v13 int64Value];
    v15 = [v11 featureValueForName:@"classProbability"];
    v16 = [v15 dictionaryValue];
    v17 = [(Prev12Next12DrainOutput *)v12 initWith_24hour_only_drain_label_100:v14 classProbability:v16];
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
  v8 = [(Prev12Next12Drain *)self model];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10004EBBC;
  v10[3] = &unk_1000956C0;
  v11 = v6;
  v9 = v6;
  [v8 predictionFromFeatures:v7 completionHandler:v10];
}

- (void)predictionFromFeatures:(id)a3 options:(id)a4 completionHandler:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(Prev12Next12Drain *)self model];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10004EDC4;
  v13[3] = &unk_1000956C0;
  v14 = v8;
  v12 = v8;
  [v11 predictionFromFeatures:v10 options:v9 completionHandler:v13];
}

- (id)predictionFromCurrentCapacity:(double)a3 drainOnly:(double)a4 _12hour_only_drain_before:(double)a5 _24hour_only_drain_before:(double)a6 _6hour_only_drain_before:(double)a7 _3hour_only_drain_before:(double)a8 total_drain_before:(double)a9 rolling_mean_24hour_drain_before:(double)a10 rolling_median_24hour_drain_before:(double)a11 rolling_mean_12hour_drain_before:(double)a12 rolling_median_12hour_drain_before:(double)a13 mean_12hour_drain_before:(double)a14 _24HourOnlyDrainBeforePercentileCategoryByUser:(double)a15 rolling30DaysAvgOf24hourOnlyDrainBefore:(double)a16 countsPast24hour_only_drain_before_100_last7Days:(double)a17 countsPast24hour_only_drain_before_100_last30Days:(double)a18 _12HourOnlyDrainBeforePercentileCategory:(double)a19 _24HourOnlyDrainBeforePercentileCategory:(double)a20 error:(id *)a21
{
  v23 = [[Prev12Next12DrainInput alloc] initWithCurrentCapacity:a3 drainOnly:a4 _12hour_only_drain_before:a5 _24hour_only_drain_before:a6 _6hour_only_drain_before:a7 _3hour_only_drain_before:a8 total_drain_before:a9 rolling_mean_24hour_drain_before:a10 rolling_median_24hour_drain_before:*&a11 rolling_mean_12hour_drain_before:*&a12 rolling_median_12hour_drain_before:*&a13 mean_12hour_drain_before:*&a14 _24HourOnlyDrainBeforePercentileCategoryByUser:*&a15 rolling30DaysAvgOf24hourOnlyDrainBefore:*&a16 countsPast24hour_only_drain_before_100_last7Days:*&a17 countsPast24hour_only_drain_before_100_last30Days:*&a18 _12HourOnlyDrainBeforePercentileCategory:*&a19 _24HourOnlyDrainBeforePercentileCategory:*&a20];
  v24 = [(Prev12Next12Drain *)self predictionFromFeatures:v23 error:a21];

  return v24;
}

- (id)predictionsFromInputs:(id)a3 options:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [[MLArrayBatchProvider alloc] initWithFeatureProviderArray:v8];
  v11 = [(Prev12Next12Drain *)self model];
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
        v16 = [Prev12Next12DrainOutput alloc];
        v17 = [v15 featureValueForName:@"24hour_only_drain_label_100"];
        v18 = [v17 int64Value];
        v19 = [v15 featureValueForName:@"classProbability"];
        v20 = [v19 dictionaryValue];
        v21 = [(Prev12Next12DrainOutput *)v16 initWith_24hour_only_drain_label_100:v18 classProbability:v20];

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