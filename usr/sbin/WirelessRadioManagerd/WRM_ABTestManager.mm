@interface WRM_ABTestManager
- (BOOL)getRLHandoverPolicyEnabled;
- (WRM_ABTestManager)init;
- (id)getRLHandoverPolicyExperimentId;
@end

@implementation WRM_ABTestManager

- (BOOL)getRLHandoverPolicyEnabled
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  mQueue = self->mQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000087B4;
  v5[3] = &unk_10023EC48;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(mQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (id)getRLHandoverPolicyExperimentId
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_100055A48;
  v10 = sub_100055A58;
  v11 = 0;
  mQueue = self->mQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100016DE4;
  v5[3] = &unk_10023EC48;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(mQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (WRM_ABTestManager)init
{
  v28.receiver = self;
  v28.super_class = WRM_ABTestManager;
  v2 = [(WRM_ABTestManager *)&v28 init];
  v3 = dispatch_queue_create("com.apple.WirelessRadioManager.ABTestManagerQueue", 0);
  mQueue = v2->mQueue;
  v2->mQueue = v3;

  mTrialCallbackToken = v2->mTrialCallbackToken;
  v2->mTrialCallbackToken = 0;

  v6 = [TRIClient clientWithIdentifier:350];
  mTrialClient = v2->mTrialClient;
  v2->mTrialClient = v6;

  v2->mRLHandoverPolicyEnabled = 0;
  mRLHandoverPolicyExId = v2->mRLHandoverPolicyExId;
  v2->mRLHandoverPolicyExId = 0;

  v9 = [(TRIClient *)v2->mTrialClient levelForFactor:@"RLHandoverPolicyEnabled" withNamespaceName:@"TELEPHONY_WIFI_CELLULAR_HANDOVER_POLICY"];
  v10 = v9;
  if (v9)
  {
    v2->mRLHandoverPolicyEnabled = [v9 BOOLeanValue];
    v11 = [(TRIClient *)v2->mTrialClient experimentIdentifiersWithNamespaceName:@"TELEPHONY_WIFI_CELLULAR_HANDOVER_POLICY"];
    v12 = v2->mRLHandoverPolicyExId;
    v2->mRLHandoverPolicyExId = v11;

    mRLHandoverPolicyEnabled = v2->mRLHandoverPolicyEnabled;
    v14 = [(TRIExperimentIdentifiers *)v2->mRLHandoverPolicyExId experimentId];
    v15 = [(TRIExperimentIdentifiers *)v2->mRLHandoverPolicyExId deploymentId];
    v16 = [(TRIExperimentIdentifiers *)v2->mRLHandoverPolicyExId treatmentId];
    [WCM_Logging logLevel:25 message:@"trial initial mRLHandoverPolicyEnabled=%d, exId=%@, deployId=%d, treatmentId=%@", mRLHandoverPolicyEnabled, v14, v15, v16];
  }

  else
  {
    [WCM_Logging logLevel:25 message:@"trial mRLHandoverPolicyEnabled initial not active"];
  }

  v17 = objc_autoreleasePoolPush();
  objc_initWeak(&location, v2);
  v18 = v2->mTrialClient;
  v19 = v2->mQueue;
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_1000558DC;
  v24[3] = &unk_10023EC20;
  objc_copyWeak(&v26, &location);
  v20 = v2;
  v25 = v20;
  v21 = [(TRIClient *)v18 addUpdateHandlerForNamespaceName:@"TELEPHONY_WIFI_CELLULAR_HANDOVER_POLICY" queue:v19 usingBlock:v24];
  v22 = v2->mTrialCallbackToken;
  v2->mTrialCallbackToken = v21;

  if (v2->mTrialCallbackToken)
  {
    [WCM_Logging logLevel:25 message:@"trial mRLHandoverPolicyEnabled addUpdateHandlerForNamespaceName returned token=%@", v2->mTrialCallbackToken];
  }

  else
  {
    [WCM_Logging logLevel:25 message:@"trial mRLHandoverPolicyEnabled addUpdateHandlerForNamespaceName failed"];
  }

  objc_destroyWeak(&v26);
  objc_destroyWeak(&location);
  objc_autoreleasePoolPop(v17);

  return v20;
}

@end