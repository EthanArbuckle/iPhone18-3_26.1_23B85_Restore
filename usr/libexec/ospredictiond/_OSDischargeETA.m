@interface _OSDischargeETA
+ (id)URLOfModelInThisBundle;
+ (void)loadContentsOfURL:(id)a3 configuration:(id)a4 completionHandler:(id)a5;
+ (void)loadWithConfiguration:(id)a3 completionHandler:(id)a4;
- (_OSDischargeETA)init;
- (_OSDischargeETA)initWithConfiguration:(id)a3 error:(id *)a4;
- (_OSDischargeETA)initWithContentsOfURL:(id)a3 configuration:(id)a4 error:(id *)a5;
- (_OSDischargeETA)initWithContentsOfURL:(id)a3 error:(id *)a4;
- (_OSDischargeETA)initWithMLModel:(id)a3;
- (id)predictionFromFeatures:(id)a3 error:(id *)a4;
- (id)predictionFromFeatures:(id)a3 options:(id)a4 error:(id *)a5;
- (id)predictionFromStart_soc:(double)a3 end_soc:(double)a4 temperature:(double)a5 power:(double)a6 prev_median_tt10:(double)a7 error:(id *)a8;
- (id)predictionsFromInputs:(id)a3 options:(id)a4 error:(id *)a5;
- (void)predictionFromFeatures:(id)a3 completionHandler:(id)a4;
- (void)predictionFromFeatures:(id)a3 options:(id)a4 completionHandler:(id)a5;
@end

@implementation _OSDischargeETA

+ (id)URLOfModelInThisBundle
{
  v2 = [NSBundle bundleForClass:objc_opt_class()];
  v3 = [v2 pathForResource:@"_OSDischargeETA" ofType:@"mlmodelc"];

  if (v3)
  {
    v4 = [NSURL fileURLWithPath:v3];
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10005E7DC();
    }

    v4 = 0;
  }

  return v4;
}

- (_OSDischargeETA)initWithMLModel:(id)a3
{
  v5 = a3;
  if (v5)
  {
    v10.receiver = self;
    v10.super_class = _OSDischargeETA;
    v6 = [(_OSDischargeETA *)&v10 init];
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

- (_OSDischargeETA)init
{
  v3 = [objc_opt_class() URLOfModelInThisBundle];
  v4 = [(_OSDischargeETA *)self initWithContentsOfURL:v3 error:0];

  return v4;
}

- (_OSDischargeETA)initWithConfiguration:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [objc_opt_class() URLOfModelInThisBundle];
  v8 = [(_OSDischargeETA *)self initWithContentsOfURL:v7 configuration:v6 error:a4];

  return v8;
}

- (_OSDischargeETA)initWithContentsOfURL:(id)a3 error:(id *)a4
{
  v5 = [MLModel modelWithContentsOfURL:a3 error:a4];
  if (v5)
  {
    self = [(_OSDischargeETA *)self initWithMLModel:v5];
    v6 = self;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (_OSDischargeETA)initWithContentsOfURL:(id)a3 configuration:(id)a4 error:(id *)a5
{
  v6 = [MLModel modelWithContentsOfURL:a3 configuration:a4 error:a5];
  if (v6)
  {
    self = [(_OSDischargeETA *)self initWithMLModel:v6];
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
  v8[2] = sub_100055928;
  v8[3] = &unk_100095698;
  v9 = a5;
  v7 = v9;
  [MLModel loadContentsOfURL:a3 configuration:a4 completionHandler:v8];
}

- (id)predictionFromFeatures:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = objc_alloc_init(MLPredictionOptions);
  v8 = [(_OSDischargeETA *)self predictionFromFeatures:v6 options:v7 error:a4];

  return v8;
}

- (id)predictionFromFeatures:(id)a3 options:(id)a4 error:(id *)a5
{
  v8 = a4;
  v9 = a3;
  v10 = [(_OSDischargeETA *)self model];
  v11 = [v10 predictionFromFeatures:v9 options:v8 error:a5];

  if (v11)
  {
    v12 = [_OSDischargeETAOutput alloc];
    v13 = [v11 featureValueForName:@"binned_hours_to_end"];
    v14 = [v13 stringValue];
    v15 = [v11 featureValueForName:@"classProbability"];
    v16 = [v15 dictionaryValue];
    v17 = [(_OSDischargeETAOutput *)v12 initWithBinned_hours_to_end:v14 classProbability:v16];
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
  v8 = [(_OSDischargeETA *)self model];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100055C28;
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
  v11 = [(_OSDischargeETA *)self model];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100055E38;
  v13[3] = &unk_1000956C0;
  v14 = v8;
  v12 = v8;
  [v11 predictionFromFeatures:v10 options:v9 completionHandler:v13];
}

- (id)predictionFromStart_soc:(double)a3 end_soc:(double)a4 temperature:(double)a5 power:(double)a6 prev_median_tt10:(double)a7 error:(id *)a8
{
  v10 = [[_OSDischargeETAInput alloc] initWithStart_soc:a3 end_soc:a4 temperature:a5 power:a6 prev_median_tt10:a7];
  v11 = [(_OSDischargeETA *)self predictionFromFeatures:v10 error:a8];

  return v11;
}

- (id)predictionsFromInputs:(id)a3 options:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [[MLArrayBatchProvider alloc] initWithFeatureProviderArray:v8];
  v11 = [(_OSDischargeETA *)self model];
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
        v16 = [_OSDischargeETAOutput alloc];
        v17 = [v15 featureValueForName:@"binned_hours_to_end"];
        v18 = [v17 stringValue];
        v19 = [v15 featureValueForName:@"classProbability"];
        v20 = [v19 dictionaryValue];
        v21 = [(_OSDischargeETAOutput *)v16 initWithBinned_hours_to_end:v18 classProbability:v20];

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