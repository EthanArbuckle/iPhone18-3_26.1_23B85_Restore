@interface CLTrackingAvoidanceAISFetchRecord
- (CLTrackingAvoidanceAISFetchRecord)initWithUUID:(id)a3 deviceType:(unint64_t)a4;
- (void)dealloc;
@end

@implementation CLTrackingAvoidanceAISFetchRecord

- (CLTrackingAvoidanceAISFetchRecord)initWithUUID:(id)a3 deviceType:(unint64_t)a4
{
  v12.receiver = self;
  v12.super_class = CLTrackingAvoidanceAISFetchRecord;
  v6 = [(CLTrackingAvoidanceAISFetchRecord *)&v12 init];
  v7 = v6;
  if (v6)
  {
    [(CLTrackingAvoidanceAISFetchRecord *)v6 setIdentifier:a3];
    NSSelectorFromString(@"initWithDeviceUUID:deviceType:productData:manufacturerName: modelName:firmwareVersion:accessoryCategory:accessoryCapabilities:serialNumber:protocolImplementation:networkID:batteryType:batteryLevel:");
    v8 = objc_opt_respondsToSelector();
    v9 = [TAAccessoryInformation alloc];
    if (v8)
    {
      v10 = [v9 initWithDeviceUUID:a3 deviceType:a4 productData:0 manufacturerName:0 modelName:0 firmwareVersion:0 accessoryCategory:0 accessoryCapabilities:0 serialNumber:0 protocolImplementation:0 networkID:0 batteryType:0 batteryLevel:0];
    }

    else
    {
      v10 = [v9 initWithDeviceUUID:a3 deviceType:a4 productData:0 manufacturerName:0 modelName:0 firmwareVersion:0 accessoryCategory:0 accessoryCapabilities:0];
    }

    v7->_accessoryInfo = v10;
    v7->_fetchGroup = dispatch_group_create();
    v7->_allSuccess = 1;
  }

  return v7;
}

- (void)dealloc
{
  self->_identifier = 0;

  self->_accessoryInfo = 0;
  v3.receiver = self;
  v3.super_class = CLTrackingAvoidanceAISFetchRecord;
  [(CLTrackingAvoidanceAISFetchRecord *)&v3 dealloc];
}

@end