@interface dynamic_scheduling
+ (id)URLOfModelInThisBundle;
+ (void)loadContentsOfURL:(id)a3 configuration:(id)a4 completionHandler:(id)a5;
+ (void)loadWithConfiguration:(id)a3 completionHandler:(id)a4;
- (dynamic_scheduling)init;
- (dynamic_scheduling)initWithConfiguration:(id)a3 error:(id *)a4;
- (dynamic_scheduling)initWithContentsOfURL:(id)a3 configuration:(id)a4 error:(id *)a5;
- (dynamic_scheduling)initWithContentsOfURL:(id)a3 error:(id *)a4;
- (dynamic_scheduling)initWithMLModel:(id)a3;
- (id)predictionFromFeatures:(id)a3 error:(id *)a4;
- (id)predictionFromFeatures:(id)a3 options:(id)a4 error:(id *)a5;
- (id)predictionFromPlugin_battery_level:(double)a3 time_from_plugin:(double)a4 med_dur_1:(double)a5 med_dur_2:(double)a6 med_dur_4:(double)a7 med_dur_8:(double)a8 med_dur_16:(double)a9 med_dur_24:(double)a10 cnt_dur_1:(double)a11 cnt_dur_2:(double)a12 cnt_dur_4:(double)a13 cnt_dur_8:(double)a14 cnt_dur_16:(double)a15 cnt_dur_24:(double)a16 std_dur_1:(double)a17 std_dur_2:(double)a18 std_dur_4:(double)a19 std_dur_8:(double)a20 std_dur_16:(double)a21 std_dur_24:(double)a22 weekday_med_dur_1:(double)a23 weekday_med_dur_2:(double)a24 weekday_med_dur_4:(double)a25 weekday_med_dur_8:(double)a26 weekday_med_dur_24:(double)a27 weekday_std_dur_4:(double)a28 error:(id *)a29;
- (id)predictionsFromInputs:(id)a3 options:(id)a4 error:(id *)a5;
- (void)predictionFromFeatures:(id)a3 completionHandler:(id)a4;
- (void)predictionFromFeatures:(id)a3 options:(id)a4 completionHandler:(id)a5;
@end

@implementation dynamic_scheduling

+ (id)URLOfModelInThisBundle
{
  v2 = [NSBundle bundleForClass:objc_opt_class()];
  v3 = [v2 pathForResource:@"dynamic_scheduling" ofType:@"mlmodelc"];

  if (v3)
  {
    v4 = [NSURL fileURLWithPath:v3];
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10005E794();
    }

    v4 = 0;
  }

  return v4;
}

- (dynamic_scheduling)initWithMLModel:(id)a3
{
  v5 = a3;
  if (v5)
  {
    v10.receiver = self;
    v10.super_class = dynamic_scheduling;
    v6 = [(dynamic_scheduling *)&v10 init];
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

- (dynamic_scheduling)init
{
  v3 = [objc_opt_class() URLOfModelInThisBundle];
  v4 = [(dynamic_scheduling *)self initWithContentsOfURL:v3 error:0];

  return v4;
}

- (dynamic_scheduling)initWithConfiguration:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [objc_opt_class() URLOfModelInThisBundle];
  v8 = [(dynamic_scheduling *)self initWithContentsOfURL:v7 configuration:v6 error:a4];

  return v8;
}

- (dynamic_scheduling)initWithContentsOfURL:(id)a3 error:(id *)a4
{
  v5 = [MLModel modelWithContentsOfURL:a3 error:a4];
  if (v5)
  {
    self = [(dynamic_scheduling *)self initWithMLModel:v5];
    v6 = self;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (dynamic_scheduling)initWithContentsOfURL:(id)a3 configuration:(id)a4 error:(id *)a5
{
  v6 = [MLModel modelWithContentsOfURL:a3 configuration:a4 error:a5];
  if (v6)
  {
    self = [(dynamic_scheduling *)self initWithMLModel:v6];
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
  v8[2] = sub_1000548DC;
  v8[3] = &unk_100095698;
  v9 = a5;
  v7 = v9;
  [MLModel loadContentsOfURL:a3 configuration:a4 completionHandler:v8];
}

- (id)predictionFromFeatures:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = objc_alloc_init(MLPredictionOptions);
  v8 = [(dynamic_scheduling *)self predictionFromFeatures:v6 options:v7 error:a4];

  return v8;
}

- (id)predictionFromFeatures:(id)a3 options:(id)a4 error:(id *)a5
{
  v8 = a4;
  v9 = a3;
  v10 = [(dynamic_scheduling *)self model];
  v11 = [v10 predictionFromFeatures:v9 options:v8 error:a5];

  if (v11)
  {
    v12 = [dynamic_schedulingOutput alloc];
    v13 = [v11 featureValueForName:@"charge_duration"];
    [v13 doubleValue];
    v14 = [(dynamic_schedulingOutput *)v12 initWithCharge_duration:?];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (void)predictionFromFeatures:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(dynamic_scheduling *)self model];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100054B94;
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
  v11 = [(dynamic_scheduling *)self model];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100054D54;
  v13[3] = &unk_1000956C0;
  v14 = v8;
  v12 = v8;
  [v11 predictionFromFeatures:v10 options:v9 completionHandler:v13];
}

- (id)predictionFromPlugin_battery_level:(double)a3 time_from_plugin:(double)a4 med_dur_1:(double)a5 med_dur_2:(double)a6 med_dur_4:(double)a7 med_dur_8:(double)a8 med_dur_16:(double)a9 med_dur_24:(double)a10 cnt_dur_1:(double)a11 cnt_dur_2:(double)a12 cnt_dur_4:(double)a13 cnt_dur_8:(double)a14 cnt_dur_16:(double)a15 cnt_dur_24:(double)a16 std_dur_1:(double)a17 std_dur_2:(double)a18 std_dur_4:(double)a19 std_dur_8:(double)a20 std_dur_16:(double)a21 std_dur_24:(double)a22 weekday_med_dur_1:(double)a23 weekday_med_dur_2:(double)a24 weekday_med_dur_4:(double)a25 weekday_med_dur_8:(double)a26 weekday_med_dur_24:(double)a27 weekday_std_dur_4:(double)a28 error:(id *)a29
{
  v31 = [[dynamic_schedulingInput alloc] initWithPlugin_battery_level:a3 time_from_plugin:a4 med_dur_1:a5 med_dur_2:a6 med_dur_4:a7 med_dur_8:a8 med_dur_16:a9 med_dur_24:a10 cnt_dur_1:*&a11 cnt_dur_2:*&a12 cnt_dur_4:*&a13 cnt_dur_8:*&a14 cnt_dur_16:*&a15 cnt_dur_24:*&a16 std_dur_1:*&a17 std_dur_2:*&a18 std_dur_4:*&a19 std_dur_8:*&a20 std_dur_16:*&a21 std_dur_24:*&a22 weekday_med_dur_1:*&a23 weekday_med_dur_2:*&a24 weekday_med_dur_4:*&a25 weekday_med_dur_8:*&a26 weekday_med_dur_24:*&a27 weekday_std_dur_4:*&a28];
  v32 = [(dynamic_scheduling *)self predictionFromFeatures:v31 error:a29];

  return v32;
}

- (id)predictionsFromInputs:(id)a3 options:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [[MLArrayBatchProvider alloc] initWithFeatureProviderArray:v8];
  v11 = [(dynamic_scheduling *)self model];
  v12 = [v11 predictionsFromBatch:v10 options:v9 error:a5];

  if (v12)
  {
    v13 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v12 count]);
    if ([v12 count] >= 1)
    {
      v14 = 0;
      do
      {
        v15 = [v12 featuresAtIndex:v14];
        v16 = [dynamic_schedulingOutput alloc];
        v17 = [v15 featureValueForName:@"charge_duration"];
        [v17 doubleValue];
        v18 = [(dynamic_schedulingOutput *)v16 initWithCharge_duration:?];

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