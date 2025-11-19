@interface WCM_AntBlockPowerLimitPolicy
- (WCM_AntBlockPowerLimitPolicy)init;
- (WCM_AntBlockPowerLimitPolicy)initWithPlatformId:(unint64_t)a3 AntBlockPowerLimitPlist:(id)a4;
- (id)getAntBlockConfigNbClient;
- (id)getAntBlockConfigXpcMsgOnClient:(unsigned int)a3;
- (void)readAntBlockPowerLimitPolicyPlist;
@end

@implementation WCM_AntBlockPowerLimitPolicy

- (WCM_AntBlockPowerLimitPolicy)init
{
  v30.receiver = self;
  v30.super_class = WCM_AntBlockPowerLimitPolicy;
  v2 = [(WCM_AntBlockPowerLimitPolicy *)&v30 init];
  v3 = [[AntBlockPowerLimitPolicyClientCnv alloc] initWithClient:0];
  mWiFiPolicy = v2->_mWiFiPolicy;
  v2->_mWiFiPolicy = v3;

  v5 = [[AntBlockPowerLimitPolicyClientCamera alloc] initWithClient:2];
  mFrontCamPolicy = v2->_mFrontCamPolicy;
  v2->_mFrontCamPolicy = v5;

  v7 = [[AntBlockPowerLimitPolicyClientCamera alloc] initWithClient:3];
  mFaceIdCamPolicy = v2->_mFaceIdCamPolicy;
  v2->_mFaceIdCamPolicy = v7;

  v9 = [[AntBlockPowerLimitPolicyClientCamera alloc] initWithClient:5];
  mRearTeleCamPolicy = v2->_mRearTeleCamPolicy;
  v2->_mRearTeleCamPolicy = v9;

  v11 = [[AntBlockPowerLimitPolicyClientCamera alloc] initWithClient:8];
  mRearWideCamPolicy = v2->_mRearWideCamPolicy;
  v2->_mRearWideCamPolicy = v11;

  v13 = [[AntBlockPowerLimitPolicyClientCamera alloc] initWithClient:4];
  mRearUltraWideCamPolicy = v2->_mRearUltraWideCamPolicy;
  v2->_mRearUltraWideCamPolicy = v13;

  v15 = objc_alloc_init(AntBlockPowerLimitPolicyClientUwb);
  mUwbPolicy = v2->_mUwbPolicy;
  v2->_mUwbPolicy = v15;

  v17 = [[AntBlockPowerLimitPolicyClientE85 alloc] initWithClient:6];
  mE85Policy = v2->_mE85Policy;
  v2->_mE85Policy = v17;

  v19 = objc_alloc_init(AntBlockPowerLimitPolicyClientGnssImd);
  mGnssImdPolicy = v2->_mGnssImdPolicy;
  v2->_mGnssImdPolicy = v19;

  v21 = [[AntBlockPowerLimitPolicyClientSFBM alloc] initWithClient:9];
  mSFBMPolicy = v2->_mSFBMPolicy;
  v2->_mSFBMPolicy = v21;

  v23 = objc_alloc_init(AntBlockPowerLimitPolicyClientNB);
  mNBPolicy = v2->_mNBPolicy;
  v2->_mNBPolicy = v23;

  v25 = objc_alloc_init(AntBlockPowerLimitPolicyClientTimesharing);
  mTimesharingPolicy = v2->_mTimesharingPolicy;
  v2->_mTimesharingPolicy = v25;

  v27 = objc_alloc_init(AntMappingClient);
  mAntMappingPolicy = v2->_mAntMappingPolicy;
  v2->_mAntMappingPolicy = v27;

  v2->mPlatformId = 0;
  return v2;
}

- (WCM_AntBlockPowerLimitPolicy)initWithPlatformId:(unint64_t)a3 AntBlockPowerLimitPlist:(id)a4
{
  v6 = a4;
  v36.receiver = self;
  v36.super_class = WCM_AntBlockPowerLimitPolicy;
  v7 = [(WCM_AntBlockPowerLimitPolicy *)&v36 init];
  v8 = [[AntBlockPowerLimitPolicyClientCnv alloc] initWithClient:0];
  mWiFiPolicy = v7->_mWiFiPolicy;
  v7->_mWiFiPolicy = v8;

  v10 = [[AntBlockPowerLimitPolicyClientCamera alloc] initWithClient:2];
  mFrontCamPolicy = v7->_mFrontCamPolicy;
  v7->_mFrontCamPolicy = v10;

  v12 = [[AntBlockPowerLimitPolicyClientCamera alloc] initWithClient:3];
  mFaceIdCamPolicy = v7->_mFaceIdCamPolicy;
  v7->_mFaceIdCamPolicy = v12;

  v14 = [[AntBlockPowerLimitPolicyClientCamera alloc] initWithClient:5];
  mRearTeleCamPolicy = v7->_mRearTeleCamPolicy;
  v7->_mRearTeleCamPolicy = v14;

  v16 = [[AntBlockPowerLimitPolicyClientCamera alloc] initWithClient:8];
  mRearWideCamPolicy = v7->_mRearWideCamPolicy;
  v7->_mRearWideCamPolicy = v16;

  v18 = [[AntBlockPowerLimitPolicyClientCamera alloc] initWithClient:4];
  mRearUltraWideCamPolicy = v7->_mRearUltraWideCamPolicy;
  v7->_mRearUltraWideCamPolicy = v18;

  v20 = objc_alloc_init(AntBlockPowerLimitPolicyClientUwb);
  mUwbPolicy = v7->_mUwbPolicy;
  v7->_mUwbPolicy = v20;

  v22 = [[AntBlockPowerLimitPolicyClientE85 alloc] initWithClient:6];
  mE85Policy = v7->_mE85Policy;
  v7->_mE85Policy = v22;

  v24 = objc_alloc_init(AntBlockPowerLimitPolicyClientGnssImd);
  mGnssImdPolicy = v7->_mGnssImdPolicy;
  v7->_mGnssImdPolicy = v24;

  v26 = [[AntBlockPowerLimitPolicyClientSFBM alloc] initWithClient:9];
  mSFBMPolicy = v7->_mSFBMPolicy;
  v7->_mSFBMPolicy = v26;

  v28 = objc_alloc_init(AntBlockPowerLimitPolicyClientNB);
  mNBPolicy = v7->_mNBPolicy;
  v7->_mNBPolicy = v28;

  v30 = objc_alloc_init(AntBlockPowerLimitPolicyClientTimesharing);
  mTimesharingPolicy = v7->_mTimesharingPolicy;
  v7->_mTimesharingPolicy = v30;

  v32 = objc_alloc_init(AntMappingClient);
  mAntMappingPolicy = v7->_mAntMappingPolicy;
  v7->_mAntMappingPolicy = v32;

  mPlistFileName = v7->mPlistFileName;
  v7->mPlatformId = a3;
  v7->mPlistFileName = v6;

  [(WCM_AntBlockPowerLimitPolicy *)v7 readAntBlockPowerLimitPolicyPlist];
  return v7;
}

- (void)readAntBlockPowerLimitPolicyPlist
{
  mPlistFileName = self->mPlistFileName;
  if (mPlistFileName)
  {
    v22 = 0;
    v4 = sub_10009D018(mPlistFileName, @"plist");
    v21 = 0;
    v5 = [NSPropertyListSerialization propertyListWithData:v4 options:2 format:&v22 error:&v21];
    v6 = v21;
    if (v5)
    {
      v7 = @"init: Antenna blocking policy Plist File Found";
    }

    else
    {
      v7 = @"init: No antenna blocking policy Plist File Found";
    }

    [WCM_Logging logLevel:3 message:v7];
    v8 = [v5 objectForKey:@"Wifi_Client"];
    if (v8)
    {
      [(AntBlockPowerLimitPolicyClientCnv *)self->_mWiFiPolicy extractPolicy:v8];
    }

    v9 = [v5 objectForKey:@"Front_Camera_Client"];

    if (v9)
    {
      [(AntBlockPowerLimitPolicyClientCamera *)self->_mFrontCamPolicy extractPolicy:v9];
    }

    v10 = [v5 objectForKey:@"FaceId_Camera_Client"];

    if (v10)
    {
      [(AntBlockPowerLimitPolicyClientCamera *)self->_mFaceIdCamPolicy extractPolicy:v10];
    }

    v11 = [v5 objectForKey:@"Rear_Ultra_Wide_Camera_Client"];

    if (v11)
    {
      [(AntBlockPowerLimitPolicyClientCamera *)self->_mRearUltraWideCamPolicy extractPolicy:v11];
    }

    v12 = [v5 objectForKey:@"Rear_Wide_Camera_Client"];

    if (v12)
    {
      [(AntBlockPowerLimitPolicyClientCamera *)self->_mRearWideCamPolicy extractPolicy:v12];
    }

    v13 = [v5 objectForKey:@"Rear_Tele_Camera_Client"];

    if (v13)
    {
      [(AntBlockPowerLimitPolicyClientCamera *)self->_mRearTeleCamPolicy extractPolicy:v13];
    }

    v14 = [v5 objectForKey:@"Uwb_Client"];

    if (v14)
    {
      [(AntBlockPowerLimitPolicyClientUwb *)self->_mUwbPolicy extractPolicy:v14];
    }

    v15 = [v5 objectForKey:@"E85_Client"];

    if (v15)
    {
      [(AntBlockPowerLimitPolicyClientE85 *)self->_mE85Policy extractPolicy:v15];
    }

    v16 = [v5 objectForKey:@"GNSS_IMD_Client"];

    if (v16)
    {
      [(AntBlockPowerLimitPolicyClientGnssImd *)self->_mGnssImdPolicy extractPolicy:v16];
    }

    v17 = [v5 objectForKey:@"SFBM_Client"];

    if (v17)
    {
      [(AntBlockPowerLimitPolicyClient *)self->_mSFBMPolicy extractPolicy:v17];
    }

    v18 = [v5 objectForKey:@"NB_MMS_Client"];

    if (v18)
    {
      [(AntBlockPowerLimitPolicyClientNB *)self->_mNBPolicy extractPolicy:v18];
    }

    v19 = [v5 objectForKey:@"Timesharing_Client"];

    if (v19)
    {
      [(AntBlockPowerLimitPolicyClientTimesharing *)self->_mTimesharingPolicy extractPolicy:v19];
    }

    v20 = [v5 objectForKey:@"Ant_Mapping_Client"];

    if (v20)
    {
      [(AntMappingClient *)self->_mAntMappingPolicy extractPolicy:v20];
    }
  }

  else
  {

    [WCM_Logging logLevel:0 message:@"init: Error: Antenna blocking, power limiting policy plist name is nil!"];
  }
}

- (id)getAntBlockConfigXpcMsgOnClient:(unsigned int)a3
{
  if (a3 <= 0xB && ((0xF7Fu >> a3) & 1) != 0)
  {
    v5 = [*(&self->super.isa + qword_1001991A8[a3]) constructXpcMessage];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)getAntBlockConfigNbClient
{
  mNBPolicy = self->_mNBPolicy;
  if (mNBPolicy)
  {
    mNBPolicy = [mNBPolicy getPolicy];
    v2 = vars8;
  }

  return mNBPolicy;
}

@end