@interface CellularThroughputPrediction
+ (id)URLOfModelInThisBundle;
- (CellularThroughputPrediction)init;
- (CellularThroughputPrediction)initWithConfiguration:(id)a3 error:(id *)a4;
- (CellularThroughputPrediction)initWithContentsOfURL:(id)a3 configuration:(id)a4 error:(id *)a5;
- (CellularThroughputPrediction)initWithContentsOfURL:(id)a3 error:(id *)a4;
- (CellularThroughputPrediction)initWithMLModel:(id)a3;
- (id)predictionFromFeatures:(id)a3 error:(id *)a4;
- (id)predictionFromFeatures:(id)a3 options:(id)a4 error:(id *)a5;
- (id)predictionFromMaxOfActualLowBandwidth_d:(double)a3 cellSinr:(double)a4 cellNrRSRQ:(double)a5 cellLteRSRQ:(double)a6 cellNrRSRP:(double)a7 lqmScorecellular:(double)a8 cellChannelBW:(double)a9 cellNrSNR:(double)a10 cellRsrp:(double)a11 ratType:(double)a12 cellEstimatedBW:(double)a13 cellNsaEnabled:(double)a14 cellBandInfo:(double)a15 pActualLowBandwidth:(double)a16 NRType:(double)a17 error:(id *)a18;
- (id)predictionsFromInputs:(id)a3 options:(id)a4 error:(id *)a5;
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

- (CellularThroughputPrediction)initWithMLModel:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = CellularThroughputPrediction;
  v6 = [(CellularThroughputPrediction *)&v10 init];
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

- (CellularThroughputPrediction)init
{
  v3 = [objc_opt_class() URLOfModelInThisBundle];
  v4 = [(CellularThroughputPrediction *)self initWithContentsOfURL:v3 error:0];

  return v4;
}

- (CellularThroughputPrediction)initWithConfiguration:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [objc_opt_class() URLOfModelInThisBundle];
  v8 = [(CellularThroughputPrediction *)self initWithContentsOfURL:v7 configuration:v6 error:a4];

  return v8;
}

- (CellularThroughputPrediction)initWithContentsOfURL:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [sub_1000ABBDC() modelWithContentsOfURL:v6 error:a4];

  if (v7)
  {
    self = [(CellularThroughputPrediction *)self initWithMLModel:v7];
    v8 = self;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (CellularThroughputPrediction)initWithContentsOfURL:(id)a3 configuration:(id)a4 error:(id *)a5
{
  v8 = a4;
  v9 = a3;
  v10 = [sub_1000ABBDC() modelWithContentsOfURL:v9 configuration:v8 error:a5];

  if (v10)
  {
    self = [(CellularThroughputPrediction *)self initWithMLModel:v10];
    v11 = self;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)predictionFromFeatures:(id)a3 error:(id *)a4
{
  v6 = a3;
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
  v10 = [(CellularThroughputPrediction *)self predictionFromFeatures:v6 options:v9 error:a4];

  return v10;
}

- (id)predictionFromFeatures:(id)a3 options:(id)a4 error:(id *)a5
{
  v5 = [(MLModel *)self->_model predictionFromFeatures:a3 options:a4 error:a5];
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

- (id)predictionFromMaxOfActualLowBandwidth_d:(double)a3 cellSinr:(double)a4 cellNrRSRQ:(double)a5 cellLteRSRQ:(double)a6 cellNrRSRP:(double)a7 lqmScorecellular:(double)a8 cellChannelBW:(double)a9 cellNrSNR:(double)a10 cellRsrp:(double)a11 ratType:(double)a12 cellEstimatedBW:(double)a13 cellNsaEnabled:(double)a14 cellBandInfo:(double)a15 pActualLowBandwidth:(double)a16 NRType:(double)a17 error:(id *)a18
{
  v20 = [[CellularThroughputPredictionInput alloc] initWithMaxOfActualLowBandwidth_d:a3 cellSinr:a4 cellNrRSRQ:a5 cellLteRSRQ:a6 cellNrRSRP:a7 lqmScorecellular:a8 cellChannelBW:a9 cellNrSNR:a10 cellRsrp:*&a11 ratType:*&a12 cellEstimatedBW:*&a13 cellNsaEnabled:*&a14 cellBandInfo:*&a15 pActualLowBandwidth:*&a16 NRType:*&a17];
  v21 = [(CellularThroughputPrediction *)self predictionFromFeatures:v20 error:a18];

  return v21;
}

- (id)predictionsFromInputs:(id)a3 options:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
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
  v12 = [[v10 alloc] initWithFeatureProviderArray:v8];
  v13 = [(MLModel *)self->_model predictionsFromBatch:v12 options:v9 error:a5];
  v14 = v13;
  if (v13)
  {
    v15 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v13 count]);
    if ([v14 count] >= 1)
    {
      v22 = v8;
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
      v8 = v22;
    }
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

@end