@interface WiFiStallDetect
+ (id)URLOfModelInThisBundle;
+ (void)loadContentsOfURL:(id)l configuration:(id)configuration completionHandler:(id)handler;
+ (void)loadWithConfiguration:(id)configuration completionHandler:(id)handler;
- (WiFiStallDetect)init;
- (WiFiStallDetect)initWithConfiguration:(id)configuration error:(id *)error;
- (WiFiStallDetect)initWithContentsOfURL:(id)l configuration:(id)configuration error:(id *)error;
- (WiFiStallDetect)initWithContentsOfURL:(id)l error:(id *)error;
- (WiFiStallDetect)initWithMLModel:(id)model;
- (id)predictionFromAC_problem_bitfield:(double)c_problem_bitfield TxBE_expiredCompletions:(double)completions TxBE_failedCompletions:(double)e_failedCompletions TxBE_noAckCompletions:(double)ackCompletions TxBE_otherErrCompletions:(double)errCompletions TxBK_expiredCompletions:(double)k_expiredCompletions TxBK_failedCompletions:(double)k_failedCompletions TxBK_noAckCompletions:(double)self0 TxBK_otherErrCompletions:(double)self1 TxVI_expiredCompletions:(double)self2 TxVI_failedCompletions:(double)self3 TxVI_noAckCompletions:(double)self4 TxVI_otherErrCompletions:(double)self5 TxVO_expiredCompletions:(double)self6 TxVO_failedCompletions:(double)self7 TxVO_noAckCompletions:(double)self8 TxVO_otherErrCompletions:(double)self9 bt_abort:(double)bt_abort bt_grant:(double)bt_grant bt_request:(double)bt_request bt_uch_latency:(double)bt_uch_latency cca_bin:(double)cca_bin completions_chipmodeerror:(double)completions_chipmodeerror completions_expired:(double)completions_expired completions_internalerror:(double)completions_internalerror completions_ioerror:(double)completions_ioerror completions_noack:(double)completions_noack completions_nobuf:(double)c_problem_bitfield0 completions_noremotepeer:(double)c_problem_bitfield1 completions_noresources:(double)c_problem_bitfield2 completions_txfailure:(double)c_problem_bitfield3 roam_count:(double)c_problem_bitfield4 roam_duration:(double)c_problem_bitfield5 rssi_bin:(double)c_problem_bitfield6 snr_bin:(double)c_problem_bitfield7 error:(id *)c_problem_bitfield8;
- (id)predictionFromFeatures:(id)features error:(id *)error;
- (id)predictionFromFeatures:(id)features options:(id)options error:(id *)error;
- (id)predictionsFromInputs:(id)inputs options:(id)options error:(id *)error;
- (void)predictionFromFeatures:(id)features completionHandler:(id)handler;
- (void)predictionFromFeatures:(id)features options:(id)options completionHandler:(id)handler;
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

- (WiFiStallDetect)initWithMLModel:(id)model
{
  modelCopy = model;
  if (modelCopy)
  {
    v10.receiver = self;
    v10.super_class = WiFiStallDetect;
    v6 = [(WiFiStallDetect *)&v10 init];
    v7 = v6;
    if (v6)
    {
      objc_storeStrong(&v6->_model, model);
    }

    self = v7;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (WiFiStallDetect)init
{
  uRLOfModelInThisBundle = [objc_opt_class() URLOfModelInThisBundle];
  v4 = [(WiFiStallDetect *)self initWithContentsOfURL:uRLOfModelInThisBundle error:0];

  return v4;
}

- (WiFiStallDetect)initWithConfiguration:(id)configuration error:(id *)error
{
  configurationCopy = configuration;
  uRLOfModelInThisBundle = [objc_opt_class() URLOfModelInThisBundle];
  v8 = [(WiFiStallDetect *)self initWithContentsOfURL:uRLOfModelInThisBundle configuration:configurationCopy error:error];

  return v8;
}

- (WiFiStallDetect)initWithContentsOfURL:(id)l error:(id *)error
{
  v5 = [MLModel modelWithContentsOfURL:l error:error];
  if (v5)
  {
    self = [(WiFiStallDetect *)self initWithMLModel:v5];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (WiFiStallDetect)initWithContentsOfURL:(id)l configuration:(id)configuration error:(id *)error
{
  v6 = [MLModel modelWithContentsOfURL:l configuration:configuration error:error];
  if (v6)
  {
    self = [(WiFiStallDetect *)self initWithMLModel:v6];
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
  v8[2] = sub_10009AF14;
  v8[3] = &unk_1000EEA18;
  handlerCopy = handler;
  v7 = handlerCopy;
  [MLModel loadContentsOfURL:l configuration:configuration completionHandler:v8];
}

- (id)predictionFromFeatures:(id)features error:(id *)error
{
  featuresCopy = features;
  v7 = objc_alloc_init(MLPredictionOptions);
  v8 = [(WiFiStallDetect *)self predictionFromFeatures:featuresCopy options:v7 error:error];

  return v8;
}

- (id)predictionFromFeatures:(id)features options:(id)options error:(id *)error
{
  optionsCopy = options;
  featuresCopy = features;
  model = [(WiFiStallDetect *)self model];
  v11 = [model predictionFromFeatures:featuresCopy options:optionsCopy error:error];

  if (v11)
  {
    v12 = [WiFiStallDetectOutput alloc];
    v13 = [v11 featureValueForName:@"stall"];
    int64Value = [v13 int64Value];
    v15 = [v11 featureValueForName:@"stallProbability"];
    dictionaryValue = [v15 dictionaryValue];
    v17 = [(WiFiStallDetectOutput *)v12 initWithStall:int64Value stallProbability:dictionaryValue];
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (void)predictionFromFeatures:(id)features completionHandler:(id)handler
{
  handlerCopy = handler;
  featuresCopy = features;
  model = [(WiFiStallDetect *)self model];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10009B20C;
  v10[3] = &unk_1000EEA40;
  v11 = handlerCopy;
  v9 = handlerCopy;
  [model predictionFromFeatures:featuresCopy completionHandler:v10];
}

- (void)predictionFromFeatures:(id)features options:(id)options completionHandler:(id)handler
{
  handlerCopy = handler;
  optionsCopy = options;
  featuresCopy = features;
  model = [(WiFiStallDetect *)self model];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10009B414;
  v13[3] = &unk_1000EEA40;
  v14 = handlerCopy;
  v12 = handlerCopy;
  [model predictionFromFeatures:featuresCopy options:optionsCopy completionHandler:v13];
}

- (id)predictionFromAC_problem_bitfield:(double)c_problem_bitfield TxBE_expiredCompletions:(double)completions TxBE_failedCompletions:(double)e_failedCompletions TxBE_noAckCompletions:(double)ackCompletions TxBE_otherErrCompletions:(double)errCompletions TxBK_expiredCompletions:(double)k_expiredCompletions TxBK_failedCompletions:(double)k_failedCompletions TxBK_noAckCompletions:(double)self0 TxBK_otherErrCompletions:(double)self1 TxVI_expiredCompletions:(double)self2 TxVI_failedCompletions:(double)self3 TxVI_noAckCompletions:(double)self4 TxVI_otherErrCompletions:(double)self5 TxVO_expiredCompletions:(double)self6 TxVO_failedCompletions:(double)self7 TxVO_noAckCompletions:(double)self8 TxVO_otherErrCompletions:(double)self9 bt_abort:(double)bt_abort bt_grant:(double)bt_grant bt_request:(double)bt_request bt_uch_latency:(double)bt_uch_latency cca_bin:(double)cca_bin completions_chipmodeerror:(double)completions_chipmodeerror completions_expired:(double)completions_expired completions_internalerror:(double)completions_internalerror completions_ioerror:(double)completions_ioerror completions_noack:(double)completions_noack completions_nobuf:(double)c_problem_bitfield0 completions_noremotepeer:(double)c_problem_bitfield1 completions_noresources:(double)c_problem_bitfield2 completions_txfailure:(double)c_problem_bitfield3 roam_count:(double)c_problem_bitfield4 roam_duration:(double)c_problem_bitfield5 rssi_bin:(double)c_problem_bitfield6 snr_bin:(double)c_problem_bitfield7 error:(id *)c_problem_bitfield8
{
  v40 = [[WiFiStallDetectInput alloc] initWithAC_problem_bitfield:c_problem_bitfield TxBE_expiredCompletions:completions TxBE_failedCompletions:e_failedCompletions TxBE_noAckCompletions:ackCompletions TxBE_otherErrCompletions:errCompletions TxBK_expiredCompletions:k_expiredCompletions TxBK_failedCompletions:k_failedCompletions TxBK_noAckCompletions:k_noAckCompletions TxBK_otherErrCompletions:*&k_otherErrCompletions TxVI_expiredCompletions:*&i_expiredCompletions TxVI_failedCompletions:*&i_failedCompletions TxVI_noAckCompletions:*&i_noAckCompletions TxVI_otherErrCompletions:*&i_otherErrCompletions TxVO_expiredCompletions:*&o_expiredCompletions TxVO_failedCompletions:*&o_failedCompletions TxVO_noAckCompletions:*&o_noAckCompletions TxVO_otherErrCompletions:*&o_otherErrCompletions bt_abort:*&bt_abort bt_grant:*&bt_grant bt_request:*&bt_request bt_uch_latency:*&bt_uch_latency cca_bin:*&cca_bin completions_chipmodeerror:*&completions_chipmodeerror completions_expired:*&completions_expired completions_internalerror:*&completions_internalerror completions_ioerror:*&completions_ioerror completions_noack:*&completions_noack completions_nobuf:*&completions_nobuf completions_noremotepeer:*&completions_noremotepeer completions_noresources:*&completions_noresources completions_txfailure:*&completions_txfailure roam_count:*&roam_count roam_duration:*&roam_duration rssi_bin:*&rssi_bin snr_bin:*&snr_bin];
  v41 = [(WiFiStallDetect *)self predictionFromFeatures:v40 error:error];

  return v41;
}

- (id)predictionsFromInputs:(id)inputs options:(id)options error:(id *)error
{
  inputsCopy = inputs;
  optionsCopy = options;
  v10 = [[MLArrayBatchProvider alloc] initWithFeatureProviderArray:inputsCopy];
  model = [(WiFiStallDetect *)self model];
  v12 = [model predictionsFromBatch:v10 options:optionsCopy error:error];

  if (v12)
  {
    v13 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v12 count]);
    if ([v12 count] >= 1)
    {
      v23 = v10;
      v24 = optionsCopy;
      v25 = inputsCopy;
      v14 = 0;
      do
      {
        v15 = [v12 featuresAtIndex:v14];
        v16 = [WiFiStallDetectOutput alloc];
        v17 = [v15 featureValueForName:@"stall"];
        int64Value = [v17 int64Value];
        v19 = [v15 featureValueForName:@"stallProbability"];
        dictionaryValue = [v19 dictionaryValue];
        v21 = [(WiFiStallDetectOutput *)v16 initWithStall:int64Value stallProbability:dictionaryValue];

        [v13 addObject:v21];
        ++v14;
      }

      while (v14 < [v12 count]);
      optionsCopy = v24;
      inputsCopy = v25;
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