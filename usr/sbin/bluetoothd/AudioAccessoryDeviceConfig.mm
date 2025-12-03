@interface AudioAccessoryDeviceConfig
- (AudioAccessoryDeviceConfig)initWithXPCObject:(id)object error:(id *)error;
@end

@implementation AudioAccessoryDeviceConfig

- (AudioAccessoryDeviceConfig)initWithXPCObject:(id)object error:(id *)error
{
  objectCopy = object;
  v24.receiver = self;
  v24.super_class = AudioAccessoryDeviceConfig;
  v7 = [(AudioAccessoryDeviceConfig *)&v24 init];
  if (!v7)
  {
    if (!error)
    {
      goto LABEL_51;
    }

LABEL_50:
    NSErrorF_safe();
    *error = v22 = 0;
    goto LABEL_46;
  }

  if (xpc_get_type(objectCopy) != &_xpc_type_dictionary)
  {
    if (!error)
    {
      goto LABEL_51;
    }

    goto LABEL_50;
  }

  v25 = 0;
  v8 = CUXPCDecodeUInt64RangedEx();
  if (v8 == 6)
  {
    v7->_allowOffListeningMode = v25;
  }

  else if (v8 == 5)
  {
    goto LABEL_51;
  }

  v25 = 0;
  v9 = CUXPCDecodeUInt64RangedEx();
  if (v9 == 6)
  {
    v7->_allowTemporaryManagedPairing = v25;
  }

  else if (v9 == 5)
  {
    goto LABEL_51;
  }

  v25 = 0;
  v10 = CUXPCDecodeUInt64RangedEx();
  if (v10 == 6)
  {
    v7->_autoANCStrength = v25;
  }

  else if (v10 == 5)
  {
    goto LABEL_51;
  }

  v25 = 0;
  v11 = CUXPCDecodeUInt64RangedEx();
  if (v11 == 6)
  {
    v7->_enableDynamicEndOfCharge = v25;
  }

  else if (v11 == 5)
  {
    goto LABEL_51;
  }

  v25 = 0;
  v12 = CUXPCDecodeUInt64RangedEx();
  if (v12 == 6)
  {
    v7->_enableHearingAidGainSwipe = v25;
  }

  else if (v12 == 5)
  {
    goto LABEL_51;
  }

  v25 = 0;
  v13 = CUXPCDecodeUInt64RangedEx();
  if (v13 == 6)
  {
    v7->_enableHearingAssist = v25;
  }

  else if (v13 == 5)
  {
    goto LABEL_51;
  }

  v25 = 0;
  v14 = CUXPCDecodeUInt64RangedEx();
  if (v14 == 6)
  {
    v7->_enableHearingProtectionPPE = v25;
  }

  else if (v14 == 5)
  {
    goto LABEL_51;
  }

  v25 = 0;
  v15 = CUXPCDecodeUInt64RangedEx();
  if (v15 == 6)
  {
    v7->_enableHeartRateMonitor = v25;
  }

  else if (v15 == 5)
  {
    goto LABEL_51;
  }

  v25 = 0;
  v16 = CUXPCDecodeUInt64RangedEx();
  if (v16 == 6)
  {
    v7->_enableSiriMultitone = v25;
  }

  else if (v16 == 5)
  {
    goto LABEL_51;
  }

  v25 = 0;
  v17 = CUXPCDecodeUInt64RangedEx();
  if (v17 == 6)
  {
    v7->_enableSleepDetection = v25;
  }

  else if (v17 == 5)
  {
    goto LABEL_51;
  }

  v25 = 0;
  v18 = CUXPCDecodeUInt64RangedEx();
  if (v18 == 6)
  {
    v7->_hearingAidEnrolled = v25;
  }

  else if (v18 == 5)
  {
    goto LABEL_51;
  }

  v25 = 0;
  v19 = CUXPCDecodeUInt64RangedEx();
  if (v19 == 6)
  {
    v7->_hearingAidToggle = v25;
  }

  else if (v19 == 5)
  {
    goto LABEL_51;
  }

  v25 = 0;
  v20 = CUXPCDecodeUInt64RangedEx();
  if (v20 == 6)
  {
    v7->_hearingAidV2SourceRegionSupport = v25;
  }

  else if (v20 == 5)
  {
    goto LABEL_51;
  }

  v25 = 0;
  v21 = CUXPCDecodeUInt64RangedEx();
  if (v21 != 6)
  {
    if (v21 != 5)
    {
      goto LABEL_45;
    }

LABEL_51:
    v22 = 0;
    goto LABEL_46;
  }

  v7->_rawGesturesConfiguration = v25;
LABEL_45:
  v22 = v7;
LABEL_46:

  return v22;
}

@end