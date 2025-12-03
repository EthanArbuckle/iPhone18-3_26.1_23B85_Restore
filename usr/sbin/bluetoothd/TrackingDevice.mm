@interface TrackingDevice
- (TrackingDevice)initWithDevice:(id)device type:(unsigned __int8)type timeoutValue:(unsigned __int8)value targetCore:(unsigned __int8)core rssiThreshold:(unsigned __int8)threshold rssiThresholdGone:(unsigned __int8)gone invalidRssiHandling:(unsigned __int8)handling rssiPrecision:(unsigned __int8)self0 rssiPrecisionGone:(unsigned __int8)self1 eventConfiguration:(unsigned __int8)self2 vseBuffering:(unsigned __int8)self3 rssiIncreaseScanThreshold:(unsigned __int8)self4 rssiIncreaseScanWindowThreshold:(unsigned __int16)self5 rssiIncreaseScanIntervalThreshold:(unsigned __int16)self6 rssiIncreaseScanTimeoutThreshold:(unsigned __int16)self7 sensorTimeoutBetweenIncreaseScan:(unsigned __int16)self8;
- (id)description;
@end

@implementation TrackingDevice

- (TrackingDevice)initWithDevice:(id)device type:(unsigned __int8)type timeoutValue:(unsigned __int8)value targetCore:(unsigned __int8)core rssiThreshold:(unsigned __int8)threshold rssiThresholdGone:(unsigned __int8)gone invalidRssiHandling:(unsigned __int8)handling rssiPrecision:(unsigned __int8)self0 rssiPrecisionGone:(unsigned __int8)self1 eventConfiguration:(unsigned __int8)self2 vseBuffering:(unsigned __int8)self3 rssiIncreaseScanThreshold:(unsigned __int8)self4 rssiIncreaseScanWindowThreshold:(unsigned __int16)self5 rssiIncreaseScanIntervalThreshold:(unsigned __int16)self6 rssiIncreaseScanTimeoutThreshold:(unsigned __int16)self7 sensorTimeoutBetweenIncreaseScan:(unsigned __int16)self8
{
  typeCopy = type;
  deviceCopy = device;
  v33.receiver = self;
  v33.super_class = TrackingDevice;
  v26 = [(TrackingDevice *)&v33 init];
  v27 = v26;
  if (v26)
  {
    objc_storeStrong(&v26->_deviceUUID, device);
    v28 = [NSNumber numberWithUnsignedChar:typeCopy];
    v29 = [NSMutableSet setWithObject:v28];
    appleTypes = v27->_appleTypes;
    v27->_appleTypes = v29;

    if (value <= 0)
    {
      valueCopy = 7;
    }

    else
    {
      valueCopy = value;
    }

    v27->_timeoutValue = valueCopy;
    v27->_targetCore = core;
    v27->_rssiThreshold = threshold;
    v27->_rssiThresholdGone = gone;
    v27->_invalidRssiHandling = handling;
    v27->_rssiPrecision = precision;
    v27->_rssiPrecisionGone = precisionGone;
    v27->_eventConfiguration = configuration;
    v27->_vseBuffering = buffering;
    v27->_rssiIncreaseScanThreshold = scanThreshold;
    v27->_rssiIncreaseScanWindowThreshold = windowThreshold;
    v27->_rssiIncreaseScanIntervalThreshold = intervalThreshold;
    v27->_rssiIncreaseScanTimeoutThreshold = timeoutThreshold;
    v27->_sensorTimeoutBetweenIncreaseScan = scan;
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