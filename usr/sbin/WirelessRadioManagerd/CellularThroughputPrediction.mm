@interface CellularThroughputPrediction
+ (id)URLOfModelInThisBundle;
- (CellularThroughputPrediction)init;
- (CellularThroughputPrediction)initWithConfiguration:(id)configuration error:(id *)error;
- (CellularThroughputPrediction)initWithContentsOfURL:(id)l configuration:(id)configuration error:(id *)error;
- (CellularThroughputPrediction)initWithContentsOfURL:(id)l error:(id *)error;
- (CellularThroughputPrediction)initWithMLModel:(id)model;
- (id)predictionFromFeatures:(id)features error:(id *)error;
- (id)predictionFromFeatures:(id)features options:(id)options error:(id *)error;
- (id)predictionFromMaxOfActualLowBandwidth_d:(double)bandwidth_d cellSinr:(double)sinr cellNrRSRQ:(double)q cellLteRSRQ:(double)rQ cellNrRSRP:(double)p lqmScorecellular:(double)scorecellular cellChannelBW:(double)w cellNrSNR:(double)self0 cellRsrp:(double)self1 ratType:(double)self2 cellEstimatedBW:(double)self3 cellNsaEnabled:(double)self4 cellBandInfo:(double)self5 pActualLowBandwidth:(double)self6 NRType:(double)self7 error:(id *)self8;
- (id)predictionsFromInputs:(id)inputs options:(id)options error:(id *)error;
@end

@implementation CellularThroughputPrediction

+ (id)URLOfModelInThisBundle
{
  v2 = [NSBundle bundleForClass:objc_opt_class()];
  v3 = [v2 pathForResource:@"CellularThroughputPrediction" ofType:@"mlmodelc"];

  if (v3)
  {
    v4 = [NSURL fileURLWithPath:v3];
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10015F66C();
    }

    v4 = 0;
  }

  return v4;
}

- (CellularThroughputPrediction)initWithMLModel:(id)model
{
  modelCopy = model;
  v10.receiver = self;
  v10.super_class = CellularThroughputPrediction;
  v6 = [(CellularThroughputPrediction *)&v10 init];
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

- (CellularThroughputPrediction)init
{
  uRLOfModelInThisBundle = [objc_opt_class() URLOfModelInThisBundle];
  v4 = [(CellularThroughputPrediction *)self initWithContentsOfURL:uRLOfModelInThisBundle error:0];

  return v4;
}

- (CellularThroughputPrediction)initWithConfiguration:(id)configuration error:(id *)error
{
  configurationCopy = configuration;
  uRLOfModelInThisBundle = [objc_opt_class() URLOfModelInThisBundle];
  v8 = [(CellularThroughputPrediction *)self initWithContentsOfURL:uRLOfModelInThisBundle configuration:configurationCopy error:error];

  return v8;
}

- (CellularThroughputPrediction)initWithContentsOfURL:(id)l error:(id *)error
{
  lCopy = l;
  v7 = [sub_1000ABBDC() modelWithContentsOfURL:lCopy error:error];

  if (v7)
  {
    self = [(CellularThroughputPrediction *)self initWithMLModel:v7];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (CellularThroughputPrediction)initWithContentsOfURL:(id)l configuration:(id)configuration error:(id *)error
{
  configurationCopy = configuration;
  lCopy = l;
  v10 = [sub_1000ABBDC() modelWithContentsOfURL:lCopy configuration:configurationCopy error:error];

  if (v10)
  {
    self = [(CellularThroughputPrediction *)self initWithMLModel:v10];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)predictionFromFeatures:(id)features error:(id *)error
{
  featuresCopy = features;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2050000000;
  v7 = qword_1002B7EE0;
  v16 = qword_1002B7EE0;
  if (!qword_1002B7EE0)
  {
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1000AC470;
    v12[3] = &unk_10023DCC8;
    v12[4] = &v13;
    sub_1000AC470(v12);
    v7 = v14[3];
  }

  v8 = v7;
  _Block_object_dispose(&v13, 8);
  v9 = objc_alloc_init(v7);
  v10 = [(CellularThroughputPrediction *)self predictionFromFeatures:featuresCopy options:v9 error:error];

  return v10;
}

- (id)predictionFromFeatures:(id)features options:(id)options error:(id *)error
{
  v5 = [(MLModel *)self->_model predictionFromFeatures:features options:options error:error];
  if (v5)
  {
    v6 = [CellularThroughputPredictionOutput alloc];
    v7 = [v5 featureValueForName:@"actualLowBandwidth_d"];
    [v7 doubleValue];
    v8 = [(CellularThroughputPredictionOutput *)v6 initWithActualLowBandwidth_d:?];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)predictionFromMaxOfActualLowBandwidth_d:(double)bandwidth_d cellSinr:(double)sinr cellNrRSRQ:(double)q cellLteRSRQ:(double)rQ cellNrRSRP:(double)p lqmScorecellular:(double)scorecellular cellChannelBW:(double)w cellNrSNR:(double)self0 cellRsrp:(double)self1 ratType:(double)self2 cellEstimatedBW:(double)self3 cellNsaEnabled:(double)self4 cellBandInfo:(double)self5 pActualLowBandwidth:(double)self6 NRType:(double)self7 error:(id *)self8
{
  v20 = [[CellularThroughputPredictionInput alloc] initWithMaxOfActualLowBandwidth_d:bandwidth_d cellSinr:sinr cellNrRSRQ:q cellLteRSRQ:rQ cellNrRSRP:p lqmScorecellular:scorecellular cellChannelBW:w cellNrSNR:r cellRsrp:*&rsrp ratType:*&type cellEstimatedBW:*&bW cellNsaEnabled:*&enabled cellBandInfo:*&info pActualLowBandwidth:*&bandwidth NRType:*&rType];
  v21 = [(CellularThroughputPrediction *)self predictionFromFeatures:v20 error:error];

  return v21;
}

- (id)predictionsFromInputs:(id)inputs options:(id)options error:(id *)error
{
  inputsCopy = inputs;
  optionsCopy = options;
  v24 = 0;
  v25 = &v24;
  v26 = 0x2050000000;
  v10 = qword_1002B7EE8;
  v27 = qword_1002B7EE8;
  if (!qword_1002B7EE8)
  {
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_1000AC4C8;
    v23[3] = &unk_10023DCC8;
    v23[4] = &v24;
    sub_1000AC4C8(v23);
    v10 = v25[3];
  }

  v11 = v10;
  _Block_object_dispose(&v24, 8);
  v12 = [[v10 alloc] initWithFeatureProviderArray:inputsCopy];
  v13 = [(MLModel *)self->_model predictionsFromBatch:v12 options:optionsCopy error:error];
  v14 = v13;
  if (v13)
  {
    v15 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v13 count]);
    if ([v14 count] >= 1)
    {
      v22 = inputsCopy;
      v16 = 0;
      do
      {
        v17 = [v14 featuresAtIndex:{v16, v22}];
        v18 = [CellularThroughputPredictionOutput alloc];
        v19 = [v17 featureValueForName:@"actualLowBandwidth_d"];
        [v19 doubleValue];
        v20 = [(CellularThroughputPredictionOutput *)v18 initWithActualLowBandwidth_d:?];

        [v15 addObject:v20];
        ++v16;
      }

      while (v16 < [v14 count]);
      inputsCopy = v22;
    }
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

@end