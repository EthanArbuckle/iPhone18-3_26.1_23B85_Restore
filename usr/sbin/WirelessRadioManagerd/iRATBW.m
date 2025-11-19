@interface iRATBW
+ (id)URLOfModelInThisBundle;
- (iRATBW)init;
- (iRATBW)initWithConfiguration:(id)a3 error:(id *)a4;
- (iRATBW)initWithContentsOfURL:(id)a3 configuration:(id)a4 error:(id *)a5;
- (iRATBW)initWithContentsOfURL:(id)a3 error:(id *)a4;
- (iRATBW)initWithMLModel:(id)a3;
- (id)predictionFromCca:(double)a3 weighted_average_phyrate_rx:(double)a4 weighted_average_rssi:(double)a5 weighted_average_snr:(double)a6 maxOfActualLowBandwidth_d:(double)a7 tcpRTTAvg:(double)a8 wifChannelType:(double)a9 wifiguardinterval:(double)a10 isWfiCaptive:(double)a11 wifinumberOfSpatialStreams:(double)a12 error:(id *)a13;
- (id)predictionFromFeatures:(id)a3 error:(id *)a4;
- (id)predictionFromFeatures:(id)a3 options:(id)a4 error:(id *)a5;
- (id)predictionsFromInputs:(id)a3 options:(id)a4 error:(id *)a5;
@end

@implementation iRATBW

+ (id)URLOfModelInThisBundle
{
  v2 = [[NSBundle bundleForClass:?]ofType:"pathForResource:ofType:", @"iRATBW", @"mlmodelc"];
  if (v2)
  {

    return [NSURL fileURLWithPath:v2];
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10015F99C();
    }

    return 0;
  }
}

- (iRATBW)initWithMLModel:(id)a3
{
  v5.receiver = self;
  v5.super_class = iRATBW;
  result = [(iRATBW *)&v5 init];
  if (result)
  {
    result->_model = a3;
    if (!a3)
    {
      return 0;
    }
  }

  return result;
}

- (iRATBW)init
{
  v3 = [objc_opt_class() URLOfModelInThisBundle];

  return [(iRATBW *)self initWithContentsOfURL:v3 error:0];
}

- (iRATBW)initWithConfiguration:(id)a3 error:(id *)a4
{
  v7 = [objc_opt_class() URLOfModelInThisBundle];

  return [(iRATBW *)self initWithContentsOfURL:v7 configuration:a3 error:a4];
}

- (iRATBW)initWithContentsOfURL:(id)a3 error:(id *)a4
{
  result = [sub_1000D8114() modelWithContentsOfURL:a3 error:a4];
  if (result)
  {

    return [(iRATBW *)self initWithMLModel:result];
  }

  return result;
}

- (iRATBW)initWithContentsOfURL:(id)a3 configuration:(id)a4 error:(id *)a5
{
  result = [sub_1000D8114() modelWithContentsOfURL:a3 configuration:a4 error:a5];
  if (result)
  {

    return [(iRATBW *)self initWithMLModel:result];
  }

  return result;
}

- (id)predictionFromFeatures:(id)a3 error:(id *)a4
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3052000000;
  v13 = sub_1000D8678;
  v7 = qword_1002B8120;
  v14 = sub_1000D8688;
  v15 = qword_1002B8120;
  if (!qword_1002B8120)
  {
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1000D88AC;
    v9[3] = &unk_10023DCC8;
    v9[4] = &v10;
    sub_1000D88AC(v9);
    v7 = v11[5];
  }

  _Block_object_dispose(&v10, 8);
  return [(iRATBW *)self predictionFromFeatures:a3 options:objc_alloc_init(v7) error:a4];
}

- (id)predictionFromFeatures:(id)a3 options:(id)a4 error:(id *)a5
{
  v5 = [(MLModel *)self->_model predictionFromFeatures:a3 options:a4 error:a5];
  v6 = [iRATBWOutput alloc];
  [objc_msgSend(v5 featureValueForName:{@"actualLowBandwidth_d", "doubleValue"}];

  return [(iRATBWOutput *)v6 initWithActualLowBandwidth_d:?];
}

- (id)predictionFromCca:(double)a3 weighted_average_phyrate_rx:(double)a4 weighted_average_rssi:(double)a5 weighted_average_snr:(double)a6 maxOfActualLowBandwidth_d:(double)a7 tcpRTTAvg:(double)a8 wifChannelType:(double)a9 wifiguardinterval:(double)a10 isWfiCaptive:(double)a11 wifinumberOfSpatialStreams:(double)a12 error:(id *)a13
{
  v15 = [[iRATBWInput alloc] initWithCca:a3 weighted_average_phyrate_rx:a4 weighted_average_rssi:a5 weighted_average_snr:a6 maxOfActualLowBandwidth_d:a7 tcpRTTAvg:a8 wifChannelType:a9 wifiguardinterval:a10 isWfiCaptive:*&a11 wifinumberOfSpatialStreams:*&a12];

  return [(iRATBW *)self predictionFromFeatures:v15 error:a13];
}

- (id)predictionsFromInputs:(id)a3 options:(id)a4 error:(id *)a5
{
  v17 = 0;
  v18 = &v17;
  v19 = 0x3052000000;
  v20 = sub_1000D8678;
  v9 = qword_1002B8128;
  v21 = sub_1000D8688;
  v22 = qword_1002B8128;
  if (!qword_1002B8128)
  {
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_1000D8904;
    v16[3] = &unk_10023DCC8;
    v16[4] = &v17;
    sub_1000D8904(v16);
    v9 = v18[5];
  }

  _Block_object_dispose(&v17, 8);
  v10 = -[MLModel predictionsFromBatch:options:error:](self->_model, "predictionsFromBatch:options:error:", [[v9 alloc] initWithFeatureProviderArray:a3], a4, a5);
  v11 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v10 count]);
  if ([v10 count] >= 1)
  {
    v12 = 0;
    do
    {
      v13 = [v10 featuresAtIndex:v12];
      v14 = [iRATBWOutput alloc];
      [objc_msgSend(v13 featureValueForName:{@"actualLowBandwidth_d", "doubleValue"}];
      [(NSMutableArray *)v11 addObject:[(iRATBWOutput *)v14 initWithActualLowBandwidth_d:?]];
      ++v12;
    }

    while (v12 < [v10 count]);
  }

  return v11;
}

@end