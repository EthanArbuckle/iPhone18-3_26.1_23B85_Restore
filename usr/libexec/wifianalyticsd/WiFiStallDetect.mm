@interface WiFiStallDetect
+ (id)URLOfModelInThisBundle;
+ (void)loadContentsOfURL:(id)a3 configuration:(id)a4 completionHandler:(id)a5;
+ (void)loadWithConfiguration:(id)a3 completionHandler:(id)a4;
- (WiFiStallDetect)init;
- (WiFiStallDetect)initWithConfiguration:(id)a3 error:(id *)a4;
- (WiFiStallDetect)initWithContentsOfURL:(id)a3 configuration:(id)a4 error:(id *)a5;
- (WiFiStallDetect)initWithContentsOfURL:(id)a3 error:(id *)a4;
- (WiFiStallDetect)initWithMLModel:(id)a3;
- (id)predictionFromAC_problem_bitfield:(double)a3 TxBE_expiredCompletions:(double)a4 TxBE_failedCompletions:(double)a5 TxBE_noAckCompletions:(double)a6 TxBE_otherErrCompletions:(double)a7 TxBK_expiredCompletions:(double)a8 TxBK_failedCompletions:(double)a9 TxBK_noAckCompletions:(double)a10 TxBK_otherErrCompletions:(double)a11 TxVI_expiredCompletions:(double)a12 TxVI_failedCompletions:(double)a13 TxVI_noAckCompletions:(double)a14 TxVI_otherErrCompletions:(double)a15 TxVO_expiredCompletions:(double)a16 TxVO_failedCompletions:(double)a17 TxVO_noAckCompletions:(double)a18 TxVO_otherErrCompletions:(double)a19 bt_abort:(double)a20 bt_grant:(double)a21 bt_request:(double)a22 bt_uch_latency:(double)a23 cca_bin:(double)a24 completions_chipmodeerror:(double)a25 completions_expired:(double)a26 completions_internalerror:(double)a27 completions_ioerror:(double)a28 completions_noack:(double)a29 completions_nobuf:(double)a30 completions_noremotepeer:(double)a31 completions_noresources:(double)a32 completions_txfailure:(double)a33 roam_count:(double)a34 roam_duration:(double)a35 rssi_bin:(double)a36 snr_bin:(double)a37 error:(id *)a38;
- (id)predictionFromFeatures:(id)a3 error:(id *)a4;
- (id)predictionFromFeatures:(id)a3 options:(id)a4 error:(id *)a5;
- (id)predictionsFromInputs:(id)a3 options:(id)a4 error:(id *)a5;
- (void)predictionFromFeatures:(id)a3 completionHandler:(id)a4;
- (void)predictionFromFeatures:(id)a3 options:(id)a4 completionHandler:(id)a5;
@end

@implementation WiFiStallDetect

+ (id)URLOfModelInThisBundle
{
  v2 = [NSBundle bundleForClass:objc_opt_class()];
  v3 = [v2 pathForResource:@"WiFiStallDetect" ofType:@"mlmodelc"];

  if (v3)
  {
    v4 = [NSURL fileURLWithPath:v3];
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      *v6 = 0;
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Could not load WiFiStallDetect.mlmodelc in the bundle resource", v6, 2u);
    }

    v4 = 0;
  }

  return v4;
}

- (WiFiStallDetect)initWithMLModel:(id)a3
{
  v5 = a3;
  if (v5)
  {
    v10.receiver = self;
    v10.super_class = WiFiStallDetect;
    v6 = [(WiFiStallDetect *)&v10 init];
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

- (WiFiStallDetect)init
{
  v3 = [objc_opt_class() URLOfModelInThisBundle];
  v4 = [(WiFiStallDetect *)self initWithContentsOfURL:v3 error:0];

  return v4;
}

- (WiFiStallDetect)initWithConfiguration:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [objc_opt_class() URLOfModelInThisBundle];
  v8 = [(WiFiStallDetect *)self initWithContentsOfURL:v7 configuration:v6 error:a4];

  return v8;
}

- (WiFiStallDetect)initWithContentsOfURL:(id)a3 error:(id *)a4
{
  v5 = [MLModel modelWithContentsOfURL:a3 error:a4];
  if (v5)
  {
    self = [(WiFiStallDetect *)self initWithMLModel:v5];
    v6 = self;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (WiFiStallDetect)initWithContentsOfURL:(id)a3 configuration:(id)a4 error:(id *)a5
{
  v6 = [MLModel modelWithContentsOfURL:a3 configuration:a4 error:a5];
  if (v6)
  {
    self = [(WiFiStallDetect *)self initWithMLModel:v6];
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
  v8[2] = sub_10009AF14;
  v8[3] = &unk_1000EEA18;
  v9 = a5;
  v7 = v9;
  [MLModel loadContentsOfURL:a3 configuration:a4 completionHandler:v8];
}

- (id)predictionFromFeatures:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = objc_alloc_init(MLPredictionOptions);
  v8 = [(WiFiStallDetect *)self predictionFromFeatures:v6 options:v7 error:a4];

  return v8;
}

- (id)predictionFromFeatures:(id)a3 options:(id)a4 error:(id *)a5
{
  v8 = a4;
  v9 = a3;
  v10 = [(WiFiStallDetect *)self model];
  v11 = [v10 predictionFromFeatures:v9 options:v8 error:a5];

  if (v11)
  {
    v12 = [WiFiStallDetectOutput alloc];
    v13 = [v11 featureValueForName:@"stall"];
    v14 = [v13 int64Value];
    v15 = [v11 featureValueForName:@"stallProbability"];
    v16 = [v15 dictionaryValue];
    v17 = [(WiFiStallDetectOutput *)v12 initWithStall:v14 stallProbability:v16];
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
  v8 = [(WiFiStallDetect *)self model];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10009B20C;
  v10[3] = &unk_1000EEA40;
  v11 = v6;
  v9 = v6;
  [v8 predictionFromFeatures:v7 completionHandler:v10];
}

- (void)predictionFromFeatures:(id)a3 options:(id)a4 completionHandler:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(WiFiStallDetect *)self model];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10009B414;
  v13[3] = &unk_1000EEA40;
  v14 = v8;
  v12 = v8;
  [v11 predictionFromFeatures:v10 options:v9 completionHandler:v13];
}

- (id)predictionFromAC_problem_bitfield:(double)a3 TxBE_expiredCompletions:(double)a4 TxBE_failedCompletions:(double)a5 TxBE_noAckCompletions:(double)a6 TxBE_otherErrCompletions:(double)a7 TxBK_expiredCompletions:(double)a8 TxBK_failedCompletions:(double)a9 TxBK_noAckCompletions:(double)a10 TxBK_otherErrCompletions:(double)a11 TxVI_expiredCompletions:(double)a12 TxVI_failedCompletions:(double)a13 TxVI_noAckCompletions:(double)a14 TxVI_otherErrCompletions:(double)a15 TxVO_expiredCompletions:(double)a16 TxVO_failedCompletions:(double)a17 TxVO_noAckCompletions:(double)a18 TxVO_otherErrCompletions:(double)a19 bt_abort:(double)a20 bt_grant:(double)a21 bt_request:(double)a22 bt_uch_latency:(double)a23 cca_bin:(double)a24 completions_chipmodeerror:(double)a25 completions_expired:(double)a26 completions_internalerror:(double)a27 completions_ioerror:(double)a28 completions_noack:(double)a29 completions_nobuf:(double)a30 completions_noremotepeer:(double)a31 completions_noresources:(double)a32 completions_txfailure:(double)a33 roam_count:(double)a34 roam_duration:(double)a35 rssi_bin:(double)a36 snr_bin:(double)a37 error:(id *)a38
{
  v40 = [[WiFiStallDetectInput alloc] initWithAC_problem_bitfield:a3 TxBE_expiredCompletions:a4 TxBE_failedCompletions:a5 TxBE_noAckCompletions:a6 TxBE_otherErrCompletions:a7 TxBK_expiredCompletions:a8 TxBK_failedCompletions:a9 TxBK_noAckCompletions:a10 TxBK_otherErrCompletions:*&a11 TxVI_expiredCompletions:*&a12 TxVI_failedCompletions:*&a13 TxVI_noAckCompletions:*&a14 TxVI_otherErrCompletions:*&a15 TxVO_expiredCompletions:*&a16 TxVO_failedCompletions:*&a17 TxVO_noAckCompletions:*&a18 TxVO_otherErrCompletions:*&a19 bt_abort:*&a20 bt_grant:*&a21 bt_request:*&a22 bt_uch_latency:*&a23 cca_bin:*&a24 completions_chipmodeerror:*&a25 completions_expired:*&a26 completions_internalerror:*&a27 completions_ioerror:*&a28 completions_noack:*&a29 completions_nobuf:*&a30 completions_noremotepeer:*&a31 completions_noresources:*&a32 completions_txfailure:*&a33 roam_count:*&a34 roam_duration:*&a35 rssi_bin:*&a36 snr_bin:*&a37];
  v41 = [(WiFiStallDetect *)self predictionFromFeatures:v40 error:a38];

  return v41;
}

- (id)predictionsFromInputs:(id)a3 options:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [[MLArrayBatchProvider alloc] initWithFeatureProviderArray:v8];
  v11 = [(WiFiStallDetect *)self model];
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
        v16 = [WiFiStallDetectOutput alloc];
        v17 = [v15 featureValueForName:@"stall"];
        v18 = [v17 int64Value];
        v19 = [v15 featureValueForName:@"stallProbability"];
        v20 = [v19 dictionaryValue];
        v21 = [(WiFiStallDetectOutput *)v16 initWithStall:v18 stallProbability:v20];

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