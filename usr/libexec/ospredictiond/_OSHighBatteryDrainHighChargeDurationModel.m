@interface _OSHighBatteryDrainHighChargeDurationModel
+ (id)URLOfModelInThisBundle;
+ (void)loadContentsOfURL:(id)a3 configuration:(id)a4 completionHandler:(id)a5;
+ (void)loadWithConfiguration:(id)a3 completionHandler:(id)a4;
- (_OSHighBatteryDrainHighChargeDurationModel)init;
- (_OSHighBatteryDrainHighChargeDurationModel)initWithConfiguration:(id)a3 error:(id *)a4;
- (_OSHighBatteryDrainHighChargeDurationModel)initWithContentsOfURL:(id)a3 configuration:(id)a4 error:(id *)a5;
- (_OSHighBatteryDrainHighChargeDurationModel)initWithContentsOfURL:(id)a3 error:(id *)a4;
- (_OSHighBatteryDrainHighChargeDurationModel)initWithMLModel:(id)a3;
- (id)predictionFromActivity:(double)a3 n_events_prior:(double)a4 batt_weekday_percentile_prior:(double)a5 dist_from_total_mean:(double)a6 drain_since_last_plugin:(double)a7 max_batt_12:(double)a8 mean_activity:(double)a9 mean_daily_plugins:(double)a10 net_drain_since_max:(double)a11 recent_drain_1:(double)a12 recent_drain_15min:(double)a13 recent_drain_3:(double)a14 start_time_secs:(double)a15 user_mean_drain:(double)a16 value:(double)a17 error:(id *)a18;
- (id)predictionFromFeatures:(id)a3 error:(id *)a4;
- (id)predictionFromFeatures:(id)a3 options:(id)a4 error:(id *)a5;
- (id)predictionsFromInputs:(id)a3 options:(id)a4 error:(id *)a5;
- (void)predictionFromFeatures:(id)a3 completionHandler:(id)a4;
- (void)predictionFromFeatures:(id)a3 options:(id)a4 completionHandler:(id)a5;
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

- (_OSHighBatteryDrainHighChargeDurationModel)initWithMLModel:(id)a3
{
  v5 = a3;
  if (v5)
  {
    v10.receiver = self;
    v10.super_class = _OSHighBatteryDrainHighChargeDurationModel;
    v6 = [(_OSHighBatteryDrainHighChargeDurationModel *)&v10 init];
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

- (_OSHighBatteryDrainHighChargeDurationModel)init
{
  v3 = [objc_opt_class() URLOfModelInThisBundle];
  v4 = [(_OSHighBatteryDrainHighChargeDurationModel *)self initWithContentsOfURL:v3 error:0];

  return v4;
}

- (_OSHighBatteryDrainHighChargeDurationModel)initWithConfiguration:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [objc_opt_class() URLOfModelInThisBundle];
  v8 = [(_OSHighBatteryDrainHighChargeDurationModel *)self initWithContentsOfURL:v7 configuration:v6 error:a4];

  return v8;
}

- (_OSHighBatteryDrainHighChargeDurationModel)initWithContentsOfURL:(id)a3 error:(id *)a4
{
  v5 = [MLModel modelWithContentsOfURL:a3 error:a4];
  if (v5)
  {
    self = [(_OSHighBatteryDrainHighChargeDurationModel *)self initWithMLModel:v5];
    v6 = self;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (_OSHighBatteryDrainHighChargeDurationModel)initWithContentsOfURL:(id)a3 configuration:(id)a4 error:(id *)a5
{
  v6 = [MLModel modelWithContentsOfURL:a3 configuration:a4 error:a5];
  if (v6)
  {
    self = [(_OSHighBatteryDrainHighChargeDurationModel *)self initWithMLModel:v6];
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
  v8[2] = sub_1000442B4;
  v8[3] = &unk_100095698;
  v9 = a5;
  v7 = v9;
  [MLModel loadContentsOfURL:a3 configuration:a4 completionHandler:v8];
}

- (id)predictionFromFeatures:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = objc_alloc_init(MLPredictionOptions);
  v8 = [(_OSHighBatteryDrainHighChargeDurationModel *)self predictionFromFeatures:v6 options:v7 error:a4];

  return v8;
}

- (id)predictionFromFeatures:(id)a3 options:(id)a4 error:(id *)a5
{
  v8 = a4;
  v9 = a3;
  v10 = [(_OSHighBatteryDrainHighChargeDurationModel *)self model];
  v11 = [v10 predictionFromFeatures:v9 options:v8 error:a5];

  if (v11)
  {
    v12 = [_OSHighBatteryDrainHighChargeDurationModelOutput alloc];
    v13 = [v11 featureValueForName:@"label"];
    v14 = [v13 int64Value];
    v15 = [v11 featureValueForName:@"classProbability"];
    v16 = [v15 dictionaryValue];
    v17 = [(_OSHighBatteryDrainHighChargeDurationModelOutput *)v12 initWithLabel:v14 classProbability:v16];
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
  v8 = [(_OSHighBatteryDrainHighChargeDurationModel *)self model];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000445AC;
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
  v11 = [(_OSHighBatteryDrainHighChargeDurationModel *)self model];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1000447B4;
  v13[3] = &unk_1000956C0;
  v14 = v8;
  v12 = v8;
  [v11 predictionFromFeatures:v10 options:v9 completionHandler:v13];
}

- (id)predictionFromActivity:(double)a3 n_events_prior:(double)a4 batt_weekday_percentile_prior:(double)a5 dist_from_total_mean:(double)a6 drain_since_last_plugin:(double)a7 max_batt_12:(double)a8 mean_activity:(double)a9 mean_daily_plugins:(double)a10 net_drain_since_max:(double)a11 recent_drain_1:(double)a12 recent_drain_15min:(double)a13 recent_drain_3:(double)a14 start_time_secs:(double)a15 user_mean_drain:(double)a16 value:(double)a17 error:(id *)a18
{
  v20 = [[_OSHighBatteryDrainHighChargeDurationModelInput alloc] initWithActivity:a3 n_events_prior:a4 batt_weekday_percentile_prior:a5 dist_from_total_mean:a6 drain_since_last_plugin:a7 max_batt_12:a8 mean_activity:a9 mean_daily_plugins:a10 net_drain_since_max:*&a11 recent_drain_1:*&a12 recent_drain_15min:*&a13 recent_drain_3:*&a14 start_time_secs:*&a15 user_mean_drain:*&a16 value:*&a17];
  v21 = [(_OSHighBatteryDrainHighChargeDurationModel *)self predictionFromFeatures:v20 error:a18];

  return v21;
}

- (id)predictionsFromInputs:(id)a3 options:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [[MLArrayBatchProvider alloc] initWithFeatureProviderArray:v8];
  v11 = [(_OSHighBatteryDrainHighChargeDurationModel *)self model];
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
        v16 = [_OSHighBatteryDrainHighChargeDurationModelOutput alloc];
        v17 = [v15 featureValueForName:@"label"];
        v18 = [v17 int64Value];
        v19 = [v15 featureValueForName:@"classProbability"];
        v20 = [v19 dictionaryValue];
        v21 = [(_OSHighBatteryDrainHighChargeDurationModelOutput *)v16 initWithLabel:v18 classProbability:v20];

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