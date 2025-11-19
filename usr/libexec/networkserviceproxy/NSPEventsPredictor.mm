@interface NSPEventsPredictor
+ (id)URLOfModelInThisBundle;
+ (void)loadContentsOfURL:(id)a3 configuration:(id)a4 completionHandler:(id)a5;
+ (void)loadWithConfiguration:(id)a3 completionHandler:(id)a4;
- (NSPEventsPredictor)init;
- (NSPEventsPredictor)initWithConfiguration:(id)a3 error:(id *)a4;
- (NSPEventsPredictor)initWithContentsOfURL:(id)a3 configuration:(id)a4 error:(id *)a5;
- (NSPEventsPredictor)initWithContentsOfURL:(id)a3 error:(id *)a4;
- (NSPEventsPredictor)initWithMLModel:(id)a3;
- (id)predictionFromFeatures:(id)a3 error:(id *)a4;
- (id)predictionFromFeatures:(id)a3 options:(id)a4 error:(id *)a5;
- (id)predictionFromLstm_input:(id)a3 error:(id *)a4;
- (id)predictionsFromInputs:(id)a3 options:(id)a4 error:(id *)a5;
@end

@implementation NSPEventsPredictor

+ (id)URLOfModelInThisBundle
{
  v2 = [NSBundle bundleForClass:objc_opt_class()];
  v3 = [v2 pathForResource:@"NSPEventsPredictor" ofType:@"mlmodelc"];

  if (v3)
  {
    v4 = [NSURL fileURLWithPath:v3];
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      *v6 = 0;
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Could not load NSPEventsPredictor.mlmodelc in the bundle resource", v6, 2u);
    }

    v4 = 0;
  }

  return v4;
}

- (NSPEventsPredictor)initWithMLModel:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = NSPEventsPredictor;
  v6 = [(NSPEventsPredictor *)&v10 init];
  v7 = v6;
  if (v6 && (objc_storeStrong(&v6->_model, a3), v7->_model))
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (NSPEventsPredictor)init
{
  v3 = [objc_opt_class() URLOfModelInThisBundle];
  v4 = [(NSPEventsPredictor *)self initWithContentsOfURL:v3 error:0];

  return v4;
}

- (NSPEventsPredictor)initWithConfiguration:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [objc_opt_class() URLOfModelInThisBundle];
  v8 = [(NSPEventsPredictor *)self initWithContentsOfURL:v7 configuration:v6 error:a4];

  return v8;
}

- (NSPEventsPredictor)initWithContentsOfURL:(id)a3 error:(id *)a4
{
  v5 = [MLModel modelWithContentsOfURL:a3 error:a4];
  if (v5)
  {
    self = [(NSPEventsPredictor *)self initWithMLModel:v5];
    v6 = self;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (NSPEventsPredictor)initWithContentsOfURL:(id)a3 configuration:(id)a4 error:(id *)a5
{
  v6 = [MLModel modelWithContentsOfURL:a3 configuration:a4 error:a5];
  if (v6)
  {
    self = [(NSPEventsPredictor *)self initWithMLModel:v6];
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
  v8[2] = sub_10003B000;
  v8[3] = &unk_100109BA0;
  v9 = a5;
  v7 = v9;
  [MLModel loadContentsOfURL:a3 configuration:a4 completionHandler:v8];
}

- (id)predictionFromFeatures:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = objc_alloc_init(MLPredictionOptions);
  v8 = [(NSPEventsPredictor *)self predictionFromFeatures:v6 options:v7 error:a4];

  return v8;
}

- (id)predictionFromFeatures:(id)a3 options:(id)a4 error:(id *)a5
{
  v8 = a4;
  v9 = a3;
  v10 = [(NSPEventsPredictor *)self model];
  v11 = [v10 predictionFromFeatures:v9 options:v8 error:a5];

  if (v11)
  {
    v12 = [NSPEventsPredictorOutput alloc];
    v13 = [v11 featureValueForName:@"Identity"];
    v14 = [v13 multiArrayValue];
    v15 = [(NSPEventsPredictorOutput *)v12 initWithIdentity:v14];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (id)predictionFromLstm_input:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [[NSPEventsPredictorInput alloc] initWithLstm_input:v6];

  v8 = [(NSPEventsPredictor *)self predictionFromFeatures:v7 error:a4];

  return v8;
}

- (id)predictionsFromInputs:(id)a3 options:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [[MLArrayBatchProvider alloc] initWithFeatureProviderArray:v8];
  v11 = [(NSPEventsPredictor *)self model];
  v12 = [v11 predictionsFromBatch:v10 options:v9 error:a5];

  if (v12)
  {
    v13 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v12 count]);
    if ([v12 count] >= 1)
    {
      v21 = v9;
      v22 = v8;
      v14 = 0;
      do
      {
        v15 = [v12 featuresAtIndex:{v14, v21, v22}];
        v16 = [NSPEventsPredictorOutput alloc];
        v17 = [v15 featureValueForName:@"Identity"];
        v18 = [v17 multiArrayValue];
        v19 = [(NSPEventsPredictorOutput *)v16 initWithIdentity:v18];

        [v13 addObject:v19];
        ++v14;
      }

      while (v14 < [v12 count]);
      v9 = v21;
      v8 = v22;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

@end