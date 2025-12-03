@interface NSPEventsNormalizer
+ (id)URLOfModelInThisBundle;
+ (void)loadContentsOfURL:(id)l configuration:(id)configuration completionHandler:(id)handler;
+ (void)loadWithConfiguration:(id)configuration completionHandler:(id)handler;
- (NSPEventsNormalizer)init;
- (NSPEventsNormalizer)initWithConfiguration:(id)configuration error:(id *)error;
- (NSPEventsNormalizer)initWithContentsOfURL:(id)l configuration:(id)configuration error:(id *)error;
- (NSPEventsNormalizer)initWithContentsOfURL:(id)l error:(id *)error;
- (NSPEventsNormalizer)initWithMLModel:(id)model;
- (id)predictionFromFeatures:(id)features error:(id *)error;
- (id)predictionFromFeatures:(id)features options:(id)options error:(id *)error;
- (id)predictionFromNormalizer_input:(id)normalizer_input error:(id *)error;
- (id)predictionsFromInputs:(id)inputs options:(id)options error:(id *)error;
@end

@implementation NSPEventsNormalizer

+ (id)URLOfModelInThisBundle
{
  v2 = [NSBundle bundleForClass:objc_opt_class()];
  v3 = [v2 pathForResource:@"NSPEventsNormalizer" ofType:@"mlmodelc"];

  if (v3)
  {
    v4 = [NSURL fileURLWithPath:v3];
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      *v6 = 0;
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Could not load NSPEventsNormalizer.mlmodelc in the bundle resource", v6, 2u);
    }

    v4 = 0;
  }

  return v4;
}

- (NSPEventsNormalizer)initWithMLModel:(id)model
{
  modelCopy = model;
  v10.receiver = self;
  v10.super_class = NSPEventsNormalizer;
  v6 = [(NSPEventsNormalizer *)&v10 init];
  v7 = v6;
  if (v6 && (objc_storeStrong(&v6->_model, model), v7->_model))
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (NSPEventsNormalizer)init
{
  uRLOfModelInThisBundle = [objc_opt_class() URLOfModelInThisBundle];
  v4 = [(NSPEventsNormalizer *)self initWithContentsOfURL:uRLOfModelInThisBundle error:0];

  return v4;
}

- (NSPEventsNormalizer)initWithConfiguration:(id)configuration error:(id *)error
{
  configurationCopy = configuration;
  uRLOfModelInThisBundle = [objc_opt_class() URLOfModelInThisBundle];
  v8 = [(NSPEventsNormalizer *)self initWithContentsOfURL:uRLOfModelInThisBundle configuration:configurationCopy error:error];

  return v8;
}

- (NSPEventsNormalizer)initWithContentsOfURL:(id)l error:(id *)error
{
  v5 = [MLModel modelWithContentsOfURL:l error:error];
  if (v5)
  {
    self = [(NSPEventsNormalizer *)self initWithMLModel:v5];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (NSPEventsNormalizer)initWithContentsOfURL:(id)l configuration:(id)configuration error:(id *)error
{
  v6 = [MLModel modelWithContentsOfURL:l configuration:configuration error:error];
  if (v6)
  {
    self = [(NSPEventsNormalizer *)self initWithMLModel:v6];
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
  v8[2] = sub_10004E11C;
  v8[3] = &unk_100109BA0;
  handlerCopy = handler;
  v7 = handlerCopy;
  [MLModel loadContentsOfURL:l configuration:configuration completionHandler:v8];
}

- (id)predictionFromFeatures:(id)features error:(id *)error
{
  featuresCopy = features;
  v7 = objc_alloc_init(MLPredictionOptions);
  v8 = [(NSPEventsNormalizer *)self predictionFromFeatures:featuresCopy options:v7 error:error];

  return v8;
}

- (id)predictionFromFeatures:(id)features options:(id)options error:(id *)error
{
  optionsCopy = options;
  featuresCopy = features;
  model = [(NSPEventsNormalizer *)self model];
  v11 = [model predictionFromFeatures:featuresCopy options:optionsCopy error:error];

  if (v11)
  {
    v12 = [NSPEventsNormalizerOutput alloc];
    v13 = [v11 featureValueForName:@"Identity"];
    multiArrayValue = [v13 multiArrayValue];
    v15 = [(NSPEventsNormalizerOutput *)v12 initWithIdentity:multiArrayValue];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (id)predictionFromNormalizer_input:(id)normalizer_input error:(id *)error
{
  normalizer_inputCopy = normalizer_input;
  v7 = [[NSPEventsNormalizerInput alloc] initWithNormalizer_input:normalizer_inputCopy];

  v8 = [(NSPEventsNormalizer *)self predictionFromFeatures:v7 error:error];

  return v8;
}

- (id)predictionsFromInputs:(id)inputs options:(id)options error:(id *)error
{
  inputsCopy = inputs;
  optionsCopy = options;
  v10 = [[MLArrayBatchProvider alloc] initWithFeatureProviderArray:inputsCopy];
  model = [(NSPEventsNormalizer *)self model];
  v12 = [model predictionsFromBatch:v10 options:optionsCopy error:error];

  if (v12)
  {
    v13 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v12 count]);
    if ([v12 count] >= 1)
    {
      v21 = optionsCopy;
      v22 = inputsCopy;
      v14 = 0;
      do
      {
        v15 = [v12 featuresAtIndex:{v14, v21, v22}];
        v16 = [NSPEventsNormalizerOutput alloc];
        v17 = [v15 featureValueForName:@"Identity"];
        multiArrayValue = [v17 multiArrayValue];
        v19 = [(NSPEventsNormalizerOutput *)v16 initWithIdentity:multiArrayValue];

        [v13 addObject:v19];
        ++v14;
      }

      while (v14 < [v12 count]);
      optionsCopy = v21;
      inputsCopy = v22;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

@end