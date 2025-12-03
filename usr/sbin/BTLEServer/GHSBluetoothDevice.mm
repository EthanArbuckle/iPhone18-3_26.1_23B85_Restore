@interface GHSBluetoothDevice
+ (id)ghsDeviceWithProperties:(id)properties;
- (BOOL)handleLiveHealthObservationsData:(id)data observationClassType:(unsigned __int8)type observationType:(unsigned int)observationType userID:(unsigned __int8)d observationID:(unsigned int)iD timestamp:(id)timestamp;
- (BOOL)handleStoredHealthObservationsData:(id)data observationClassType:(unsigned __int8)type observationType:(unsigned int)observationType userID:(unsigned __int8)d observationID:(unsigned int)iD timestamp:(id)timestamp;
- (GHSBluetoothDevice)init;
- (GHSBluetoothDevice)initWithProperties:(id)properties healthStore:(id)store;
- (GHSBluetoothDevice)initWithProperties:(id)properties healthStore:(id)store healthSampleTypes:(id)types;
@end

@implementation GHSBluetoothDevice

+ (id)ghsDeviceWithProperties:(id)properties
{
  propertiesCopy = properties;
  if (qword_1000DDBB8 != -1)
  {
    sub_10007B80C();
  }

  v4 = [propertiesCopy objectForKeyedSubscript:@"kBTDeviceTypeMDCDevSpecKey"];
  unsignedIntValue = [v4 unsignedIntValue];

  if (unsignedIntValue > 4110)
  {
    if (unsignedIntValue != 4111)
    {
      if (unsignedIntValue == 4113)
      {
        v6 = off_1000BC868;
        goto LABEL_13;
      }

      goto LABEL_10;
    }

    v6 = off_1000BC888;
  }

  else
  {
    if (unsignedIntValue != 4103)
    {
      if (unsignedIntValue == 4104)
      {
        v6 = off_1000BC880;
        goto LABEL_13;
      }

LABEL_10:
      v6 = off_1000BC878;
      goto LABEL_13;
    }

    v6 = off_1000BC870;
  }

LABEL_13:
  v7 = *v6;
  v8 = [objc_alloc(objc_opt_class()) initWithProperties:propertiesCopy healthStore:qword_1000DDBB0];

  return v8;
}

- (BOOL)handleLiveHealthObservationsData:(id)data observationClassType:(unsigned __int8)type observationType:(unsigned int)observationType userID:(unsigned __int8)d observationID:(unsigned int)iD timestamp:(id)timestamp
{
  v9 = qword_1000DDBC8;
  if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
  {
    sub_10007B820(v9, self);
  }

  return 0;
}

- (BOOL)handleStoredHealthObservationsData:(id)data observationClassType:(unsigned __int8)type observationType:(unsigned int)observationType userID:(unsigned __int8)d observationID:(unsigned int)iD timestamp:(id)timestamp
{
  v9 = qword_1000DDBC8;
  if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
  {
    sub_10007B8D0(v9, self);
  }

  return 0;
}

- (GHSBluetoothDevice)init
{
  v3 = [NSString stringWithUTF8String:"[GHSBluetoothDevice init]"];
  [NSException raise:NSInvalidArgumentException format:@"Calling %@ is not allowed", v3];

  return 0;
}

- (GHSBluetoothDevice)initWithProperties:(id)properties healthStore:(id)store
{
  propertiesCopy = properties;
  storeCopy = store;
  v22.receiver = self;
  v22.super_class = GHSBluetoothDevice;
  v7 = [(GHSBluetoothDevice *)&v22 init];
  if (v7)
  {
    v20 = [HKDevice alloc];
    v19 = [propertiesCopy objectForKeyedSubscript:@"kGHSDeviceNameKey"];
    v18 = [propertiesCopy objectForKeyedSubscript:@"ManufacturerName"];
    v8 = [propertiesCopy objectForKeyedSubscript:@"ModelNumber"];
    v9 = [propertiesCopy objectForKeyedSubscript:@"HardwareRevision"];
    v10 = [propertiesCopy objectForKeyedSubscript:@"FirmwareRevision"];
    v11 = [propertiesCopy objectForKeyedSubscript:@"SoftwareRevision"];
    v12 = [propertiesCopy objectForKeyedSubscript:@"UUID"];
    v13 = [propertiesCopy objectForKeyedSubscript:@"UDIForMedicalDevices"];
    v14 = v9;
    v15 = [v20 initWithName:v19 manufacturer:v18 model:v8 hardwareVersion:v9 firmwareVersion:v10 softwareVersion:v11 localIdentifier:v12 UDIDeviceIdentifier:v13];
    [(GHSBluetoothDevice *)v7 setHkDevice:v15];

    [(GHSBluetoothDevice *)v7 setHkStore:storeCopy];
    v16 = [propertiesCopy objectForKeyedSubscript:@"kGHSPDebugLoggingEnabledKey"];
    [(GHSBluetoothDevice *)v7 setDebugLoggingEnabled:v16];
  }

  return v7;
}

- (GHSBluetoothDevice)initWithProperties:(id)properties healthStore:(id)store healthSampleTypes:(id)types
{
  propertiesCopy = properties;
  storeCopy = store;
  typesCopy = types;
  v28.receiver = self;
  v28.super_class = GHSBluetoothDevice;
  v9 = [(GHSBluetoothDevice *)&v28 init];
  if (v9)
  {
    v23 = [HKDevice alloc];
    v22 = [propertiesCopy objectForKeyedSubscript:@"kGHSDeviceNameKey"];
    v21 = [propertiesCopy objectForKeyedSubscript:@"ManufacturerName"];
    v10 = [propertiesCopy objectForKeyedSubscript:@"ModelNumber"];
    v11 = [propertiesCopy objectForKeyedSubscript:@"HardwareRevision"];
    v12 = [propertiesCopy objectForKeyedSubscript:@"FirmwareRevision"];
    v13 = [propertiesCopy objectForKeyedSubscript:@"SoftwareRevision"];
    v14 = [propertiesCopy objectForKeyedSubscript:@"UUID"];
    v15 = [propertiesCopy objectForKeyedSubscript:@"UDIForMedicalDevices"];
    v16 = [v23 initWithName:v22 manufacturer:v21 model:v10 hardwareVersion:v11 firmwareVersion:v12 softwareVersion:v13 localIdentifier:v14 UDIDeviceIdentifier:v15];
    [(GHSBluetoothDevice *)v9 setHkDevice:v16];

    [(GHSBluetoothDevice *)v9 setHkStore:storeCopy];
    hkStore = [(GHSBluetoothDevice *)v9 hkStore];
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_1000683B0;
    v26[3] = &unk_1000BD528;
    v18 = v9;
    v27 = v18;
    [hkStore requestAuthorizationToShareTypes:typesCopy readTypes:typesCopy shouldPrompt:0 completion:v26];

    v19 = [propertiesCopy objectForKeyedSubscript:@"kGHSPDebugLoggingEnabledKey"];
    [(GHSBluetoothDevice *)v18 setDebugLoggingEnabled:v19];

    v18->_linkIdleTimeout = 30;
  }

  return v9;
}

@end