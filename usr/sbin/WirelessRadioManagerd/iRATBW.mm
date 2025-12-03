@interface iRATBW
+ (id)URLOfModelInThisBundle;
- (iRATBW)init;
- (iRATBW)initWithConfiguration:(id)configuration error:(id *)error;
- (iRATBW)initWithContentsOfURL:(id)l configuration:(id)configuration error:(id *)error;
- (iRATBW)initWithContentsOfURL:(id)l error:(id *)error;
- (iRATBW)initWithMLModel:(id)model;
- (id)predictionFromCca:(double)cca weighted_average_phyrate_rx:(double)weighted_average_phyrate_rx weighted_average_rssi:(double)weighted_average_rssi weighted_average_snr:(double)weighted_average_snr maxOfActualLowBandwidth_d:(double)bandwidth_d tcpRTTAvg:(double)avg wifChannelType:(double)type wifiguardinterval:(double)self0 isWfiCaptive:(double)self1 wifinumberOfSpatialStreams:(double)self2 error:(id *)self3;
- (id)predictionFromFeatures:(id)features error:(id *)error;
- (id)predictionFromFeatures:(id)features options:(id)options error:(id *)error;
- (id)predictionsFromInputs:(id)inputs options:(id)options error:(id *)error;
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

- (iRATBW)initWithMLModel:(id)model
{
  v5.receiver = self;
  v5.super_class = iRATBW;
  result = [(iRATBW *)&v5 init];
  if (result)
  {
    result->_model = model;
    if (!model)
    {
      return 0;
    }
  }

  return result;
}

- (iRATBW)init
{
  uRLOfModelInThisBundle = [objc_opt_class() URLOfModelInThisBundle];

  return [(iRATBW *)self initWithContentsOfURL:uRLOfModelInThisBundle error:0];
}

- (iRATBW)initWithConfiguration:(id)configuration error:(id *)error
{
  uRLOfModelInThisBundle = [objc_opt_class() URLOfModelInThisBundle];

  return [(iRATBW *)self initWithContentsOfURL:uRLOfModelInThisBundle configuration:configuration error:error];
}

- (iRATBW)initWithContentsOfURL:(id)l error:(id *)error
{
  result = [sub_1000D8114() modelWithContentsOfURL:l error:error];
  if (result)
  {

    return [(iRATBW *)self initWithMLModel:result];
  }

  return result;
}

- (iRATBW)initWithContentsOfURL:(id)l configuration:(id)configuration error:(id *)error
{
  result = [sub_1000D8114() modelWithContentsOfURL:l configuration:configuration error:error];
  if (result)
  {

    return [(iRATBW *)self initWithMLModel:result];
  }

  return result;
}

- (id)predictionFromFeatures:(id)features error:(id *)error
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
  return [(iRATBW *)self predictionFromFeatures:features options:objc_alloc_init(v7) error:error];
}

- (id)predictionFromFeatures:(id)features options:(id)options error:(id *)error
{
  v5 = [(MLModel *)self->_model predictionFromFeatures:features options:options error:error];
  v6 = [iRATBWOutput alloc];
  [objc_msgSend(v5 featureValueForName:{@"actualLowBandwidth_d", "doubleValue"}];

  return [(iRATBWOutput *)v6 initWithActualLowBandwidth_d:?];
}

- (id)predictionFromCca:(double)cca weighted_average_phyrate_rx:(double)weighted_average_phyrate_rx weighted_average_rssi:(double)weighted_average_rssi weighted_average_snr:(double)weighted_average_snr maxOfActualLowBandwidth_d:(double)bandwidth_d tcpRTTAvg:(double)avg wifChannelType:(double)type wifiguardinterval:(double)self0 isWfiCaptive:(double)self1 wifinumberOfSpatialStreams:(double)self2 error:(id *)self3
{
  v15 = [[iRATBWInput alloc] initWithCca:cca weighted_average_phyrate_rx:weighted_average_phyrate_rx weighted_average_rssi:weighted_average_rssi weighted_average_snr:weighted_average_snr maxOfActualLowBandwidth_d:bandwidth_d tcpRTTAvg:avg wifChannelType:type wifiguardinterval:wifiguardinterval isWfiCaptive:*&captive wifinumberOfSpatialStreams:*&streams];

  return [(iRATBW *)self predictionFromFeatures:v15 error:error];
}

- (id)predictionsFromInputs:(id)inputs options:(id)options error:(id *)error
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
  v10 = -[MLModel predictionsFromBatch:options:error:](self->_model, "predictionsFromBatch:options:error:", [[v9 alloc] initWithFeatureProviderArray:inputs], options, error);
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