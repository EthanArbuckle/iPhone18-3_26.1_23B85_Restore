@interface TrackingDevice
- (TrackingDevice)initWithDevice:(id)a3 type:(unsigned __int8)a4 timeoutValue:(unsigned __int8)a5 targetCore:(unsigned __int8)a6 rssiThreshold:(unsigned __int8)a7 rssiThresholdGone:(unsigned __int8)a8 invalidRssiHandling:(unsigned __int8)a9 rssiPrecision:(unsigned __int8)a10 rssiPrecisionGone:(unsigned __int8)a11 eventConfiguration:(unsigned __int8)a12 vseBuffering:(unsigned __int8)a13 rssiIncreaseScanThreshold:(unsigned __int8)a14 rssiIncreaseScanWindowThreshold:(unsigned __int16)a15 rssiIncreaseScanIntervalThreshold:(unsigned __int16)a16 rssiIncreaseScanTimeoutThreshold:(unsigned __int16)a17 sensorTimeoutBetweenIncreaseScan:(unsigned __int16)a18;
- (id)description;
@end

@implementation TrackingDevice

- (TrackingDevice)initWithDevice:(id)a3 type:(unsigned __int8)a4 timeoutValue:(unsigned __int8)a5 targetCore:(unsigned __int8)a6 rssiThreshold:(unsigned __int8)a7 rssiThresholdGone:(unsigned __int8)a8 invalidRssiHandling:(unsigned __int8)a9 rssiPrecision:(unsigned __int8)a10 rssiPrecisionGone:(unsigned __int8)a11 eventConfiguration:(unsigned __int8)a12 vseBuffering:(unsigned __int8)a13 rssiIncreaseScanThreshold:(unsigned __int8)a14 rssiIncreaseScanWindowThreshold:(unsigned __int16)a15 rssiIncreaseScanIntervalThreshold:(unsigned __int16)a16 rssiIncreaseScanTimeoutThreshold:(unsigned __int16)a17 sensorTimeoutBetweenIncreaseScan:(unsigned __int16)a18
{
  v22 = a4;
  v25 = a3;
  v33.receiver = self;
  v33.super_class = TrackingDevice;
  v26 = [(TrackingDevice *)&v33 init];
  v27 = v26;
  if (v26)
  {
    objc_storeStrong(&v26->_deviceUUID, a3);
    v28 = [NSNumber numberWithUnsignedChar:v22];
    v29 = [NSMutableSet setWithObject:v28];
    appleTypes = v27->_appleTypes;
    v27->_appleTypes = v29;

    if (a5 <= 0)
    {
      v31 = 7;
    }

    else
    {
      v31 = a5;
    }

    v27->_timeoutValue = v31;
    v27->_targetCore = a6;
    v27->_rssiThreshold = a7;
    v27->_rssiThresholdGone = a8;
    v27->_invalidRssiHandling = a9;
    v27->_rssiPrecision = a10;
    v27->_rssiPrecisionGone = a11;
    v27->_eventConfiguration = a12;
    v27->_vseBuffering = a13;
    v27->_rssiIncreaseScanThreshold = a14;
    v27->_rssiIncreaseScanWindowThreshold = a15;
    v27->_rssiIncreaseScanIntervalThreshold = a16;
    v27->_rssiIncreaseScanTimeoutThreshold = a17;
    v27->_sensorTimeoutBetweenIncreaseScan = a18;
    v27->_currentState = 2;
  }

  return v27;
}

- (id)description
{
  if (self->_currentState - 1 > 2)
  {
    v4 = @"Not Set";
  }

  else
  {
    v4 = off_100B06BE8[(self->_currentState - 1)];
  }

  v5 = [NSString stringWithFormat:@"Tracking: %@ - state %@ - timeout value: %d - types: %@ rssi:%d:%d:%d tc:%d eCfg:%d:%d", self->_deviceUUID, v4, self->_timeoutValue, self->_appleTypes, self->_rssiThreshold, self->_rssiPrecision, self->_invalidRssiHandling, self->_targetCore, self->_eventConfiguration, self->_vseBuffering, v2];

  return v5;
}

@end