@interface watch_engage
+ (id)URLOfModelInThisBundle;
+ (void)loadContentsOfURL:(id)a3 configuration:(id)a4 completionHandler:(id)a5;
+ (void)loadWithConfiguration:(id)a3 completionHandler:(id)a4;
- (id)predictionFromFeatures:(id)a3 error:(id *)a4;
- (id)predictionFromFeatures:(id)a3 options:(id)a4 error:(id *)a5;
- (id)predictionFromHour:(double)a3 plugin_battery_level:(double)a4 time_from_plugin:(double)a5 med_dur_1:(double)a6 med_dur_2:(double)a7 med_dur_4:(double)a8 med_dur_8:(double)a9 med_dur_16:(double)a10 med_dur_24:(double)a11 cnt_dur_1:(double)a12 cnt_dur_2:(double)a13 cnt_dur_4:(double)a14 cnt_dur_8:(double)a15 cnt_dur_16:(double)a16 cnt_dur_24:(double)a17 std_dur_1:(double)a18 std_dur_2:(double)a19 std_dur_4:(double)a20 std_dur_8:(double)a21 std_dur_16:(double)a22 std_dur_24:(double)a23 error:(id *)a24;
- (id)predictionsFromInputs:(id)a3 options:(id)a4 error:(id *)a5;
- (void)predictionFromFeatures:(id)a3 completionHandler:(id)a4;
- (void)predictionFromFeatures:(id)a3 options:(id)a4 completionHandler:(id)a5;
- (watch_engage)init;
- (watch_engage)initWithConfiguration:(id)a3 error:(id *)a4;
- (watch_engage)initWithContentsOfURL:(id)a3 configuration:(id)a4 error:(id *)a5;
- (watch_engage)initWithContentsOfURL:(id)a3 error:(id *)a4;
- (watch_engage)initWithMLModel:(id)a3;
@end

@implementation watch_engage

+ (id)URLOfModelInThisBundle
{
  v2 = [NSBundle bundleForClass:objc_opt_class()];
  v3 = [v2 pathForResource:@"watch_engage" ofType:@"mlmodelc"];

  if (v3)
  {
    v4 = [NSURL fileURLWithPath:v3];
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10005E434();
    }

    v4 = 0;
  }

  return v4;
}

- (watch_engage)initWithMLModel:(id)a3
{
  v5 = a3;
  if (v5)
  {
    v10.receiver = self;
    v10.super_class = watch_engage;
    v6 = [(watch_engage *)&v10 init];
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

- (watch_engage)init
{
  v3 = [objc_opt_class() URLOfModelInThisBundle];
  v4 = [(watch_engage *)self initWithContentsOfURL:v3 error:0];

  return v4;
}

- (watch_engage)initWithConfiguration:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [objc_opt_class() URLOfModelInThisBundle];
  v8 = [(watch_engage *)self initWithContentsOfURL:v7 configuration:v6 error:a4];

  return v8;
}

- (watch_engage)initWithContentsOfURL:(id)a3 error:(id *)a4
{
  v5 = [MLModel modelWithContentsOfURL:a3 error:a4];
  if (v5)
  {
    self = [(watch_engage *)self initWithMLModel:v5];
    v6 = self;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (watch_engage)initWithContentsOfURL:(id)a3 configuration:(id)a4 error:(id *)a5
{
  v6 = [MLModel modelWithContentsOfURL:a3 configuration:a4 error:a5];
  if (v6)
  {
    self = [(watch_engage *)self initWithMLModel:v6];
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
  v8[2] = sub_100042F64;
  v8[3] = &unk_100095698;
  v9 = a5;
  v7 = v9;
  [MLModel loadContentsOfURL:a3 configuration:a4 completionHandler:v8];
}

- (id)predictionFromFeatures:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = objc_alloc_init(MLPredictionOptions);
  v8 = [(watch_engage *)self predictionFromFeatures:v6 options:v7 error:a4];

  return v8;
}

- (id)predictionFromFeatures:(id)a3 options:(id)a4 error:(id *)a5
{
  v8 = a4;
  v9 = a3;
  v10 = [(watch_engage *)self model];
  v11 = [v10 predictionFromFeatures:v9 options:v8 error:a5];

  if (v11)
  {
    v12 = [watch_engageOutput alloc];
    v13 = [v11 featureValueForName:@"engage"];
    v14 = [v13 int64Value];
    v15 = [v11 featureValueForName:@"classProbability"];
    v16 = [v15 dictionaryValue];
    v17 = [(watch_engageOutput *)v12 initWithEngage:v14 classProbability:v16];
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
  v8 = [(watch_engage *)self model];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10004325C;
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
  v11 = [(watch_engage *)self model];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100043464;
  v13[3] = &unk_1000956C0;
  v14 = v8;
  v12 = v8;
  [v11 predictionFromFeatures:v10 options:v9 completionHandler:v13];
}

- (id)predictionFromHour:(double)a3 plugin_battery_level:(double)a4 time_from_plugin:(double)a5 med_dur_1:(double)a6 med_dur_2:(double)a7 med_dur_4:(double)a8 med_dur_8:(double)a9 med_dur_16:(double)a10 med_dur_24:(double)a11 cnt_dur_1:(double)a12 cnt_dur_2:(double)a13 cnt_dur_4:(double)a14 cnt_dur_8:(double)a15 cnt_dur_16:(double)a16 cnt_dur_24:(double)a17 std_dur_1:(double)a18 std_dur_2:(double)a19 std_dur_4:(double)a20 std_dur_8:(double)a21 std_dur_16:(double)a22 std_dur_24:(double)a23 error:(id *)a24
{
  v26 = [[watch_engageInput alloc] initWithHour:a3 plugin_battery_level:a4 time_from_plugin:a5 med_dur_1:a6 med_dur_2:a7 med_dur_4:a8 med_dur_8:a9 med_dur_16:a10 med_dur_24:*&a11 cnt_dur_1:*&a12 cnt_dur_2:*&a13 cnt_dur_4:*&a14 cnt_dur_8:*&a15 cnt_dur_16:*&a16 cnt_dur_24:*&a17 std_dur_1:*&a18 std_dur_2:*&a19 std_dur_4:*&a20 std_dur_8:*&a21 std_dur_16:*&a22 std_dur_24:*&a23];
  v27 = [(watch_engage *)self predictionFromFeatures:v26 error:a24];

  return v27;
}

- (id)predictionsFromInputs:(id)a3 options:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [[MLArrayBatchProvider alloc] initWithFeatureProviderArray:v8];
  v11 = [(watch_engage *)self model];
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
        v16 = [watch_engageOutput alloc];
        v17 = [v15 featureValueForName:@"engage"];
        v18 = [v17 int64Value];
        v19 = [v15 featureValueForName:@"classProbability"];
        v20 = [v19 dictionaryValue];
        v21 = [(watch_engageOutput *)v16 initWithEngage:v18 classProbability:v20];

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