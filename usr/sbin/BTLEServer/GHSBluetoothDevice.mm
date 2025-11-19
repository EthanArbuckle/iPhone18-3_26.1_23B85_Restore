@interface GHSBluetoothDevice
+ (id)ghsDeviceWithProperties:(id)a3;
- (BOOL)handleLiveHealthObservationsData:(id)a3 observationClassType:(unsigned __int8)a4 observationType:(unsigned int)a5 userID:(unsigned __int8)a6 observationID:(unsigned int)a7 timestamp:(id)a8;
- (BOOL)handleStoredHealthObservationsData:(id)a3 observationClassType:(unsigned __int8)a4 observationType:(unsigned int)a5 userID:(unsigned __int8)a6 observationID:(unsigned int)a7 timestamp:(id)a8;
- (GHSBluetoothDevice)init;
- (GHSBluetoothDevice)initWithProperties:(id)a3 healthStore:(id)a4;
- (GHSBluetoothDevice)initWithProperties:(id)a3 healthStore:(id)a4 healthSampleTypes:(id)a5;
@end

@implementation GHSBluetoothDevice

+ (id)ghsDeviceWithProperties:(id)a3
{
  v3 = a3;
  if (qword_1000DDBB8 != -1)
  {
    sub_10007B80C();
  }

  v4 = [v3 objectForKeyedSubscript:@"kBTDeviceTypeMDCDevSpecKey"];
  v5 = [v4 unsignedIntValue];

  if (v5 > 4110)
  {
    if (v5 != 4111)
    {
      if (v5 == 4113)
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
    if (v5 != 4103)
    {
      if (v5 == 4104)
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
  v8 = [objc_alloc(objc_opt_class()) initWithProperties:v3 healthStore:qword_1000DDBB0];

  return v8;
}

- (BOOL)handleLiveHealthObservationsData:(id)a3 observationClassType:(unsigned __int8)a4 observationType:(unsigned int)a5 userID:(unsigned __int8)a6 observationID:(unsigned int)a7 timestamp:(id)a8
{
  v9 = qword_1000DDBC8;
  if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
  {
    sub_10007B820(v9, self);
  }

  return 0;
}

- (BOOL)handleStoredHealthObservationsData:(id)a3 observationClassType:(unsigned __int8)a4 observationType:(unsigned int)a5 userID:(unsigned __int8)a6 observationID:(unsigned int)a7 timestamp:(id)a8
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

- (GHSBluetoothDevice)initWithProperties:(id)a3 healthStore:(id)a4
{
  v6 = a3;
  v21 = a4;
  v22.receiver = self;
  v22.super_class = GHSBluetoothDevice;
  v7 = [(GHSBluetoothDevice *)&v22 init];
  if (v7)
  {
    v20 = [HKDevice alloc];
    v19 = [v6 objectForKeyedSubscript:@"kGHSDeviceNameKey"];
    v18 = [v6 objectForKeyedSubscript:@"ManufacturerName"];
    v8 = [v6 objectForKeyedSubscript:@"ModelNumber"];
    v9 = [v6 objectForKeyedSubscript:@"HardwareRevision"];
    v10 = [v6 objectForKeyedSubscript:@"FirmwareRevision"];
    v11 = [v6 objectForKeyedSubscript:@"SoftwareRevision"];
    v12 = [v6 objectForKeyedSubscript:@"UUID"];
    v13 = [v6 objectForKeyedSubscript:@"UDIForMedicalDevices"];
    v14 = v9;
    v15 = [v20 initWithName:v19 manufacturer:v18 model:v8 hardwareVersion:v9 firmwareVersion:v10 softwareVersion:v11 localIdentifier:v12 UDIDeviceIdentifier:v13];
    [(GHSBluetoothDevice *)v7 setHkDevice:v15];

    [(GHSBluetoothDevice *)v7 setHkStore:v21];
    v16 = [v6 objectForKeyedSubscript:@"kGHSPDebugLoggingEnabledKey"];
    [(GHSBluetoothDevice *)v7 setDebugLoggingEnabled:v16];
  }

  return v7;
}

- (GHSBluetoothDevice)initWithProperties:(id)a3 healthStore:(id)a4 healthSampleTypes:(id)a5
{
  v8 = a3;
  v25 = a4;
  v24 = a5;
  v28.receiver = self;
  v28.super_class = GHSBluetoothDevice;
  v9 = [(GHSBluetoothDevice *)&v28 init];
  if (v9)
  {
    v23 = [HKDevice alloc];
    v22 = [v8 objectForKeyedSubscript:@"kGHSDeviceNameKey"];
    v21 = [v8 objectForKeyedSubscript:@"ManufacturerName"];
    v10 = [v8 objectForKeyedSubscript:@"ModelNumber"];
    v11 = [v8 objectForKeyedSubscript:@"HardwareRevision"];
    v12 = [v8 objectForKeyedSubscript:@"FirmwareRevision"];
    v13 = [v8 objectForKeyedSubscript:@"SoftwareRevision"];
    v14 = [v8 objectForKeyedSubscript:@"UUID"];
    v15 = [v8 objectForKeyedSubscript:@"UDIForMedicalDevices"];
    v16 = [v23 initWithName:v22 manufacturer:v21 model:v10 hardwareVersion:v11 firmwareVersion:v12 softwareVersion:v13 localIdentifier:v14 UDIDeviceIdentifier:v15];
    [(GHSBluetoothDevice *)v9 setHkDevice:v16];

    [(GHSBluetoothDevice *)v9 setHkStore:v25];
    v17 = [(GHSBluetoothDevice *)v9 hkStore];
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_1000683B0;
    v26[3] = &unk_1000BD528;
    v18 = v9;
    v27 = v18;
    [v17 requestAuthorizationToShareTypes:v24 readTypes:v24 shouldPrompt:0 completion:v26];

    v19 = [v8 objectForKeyedSubscript:@"kGHSPDebugLoggingEnabledKey"];
    [(GHSBluetoothDevice *)v18 setDebugLoggingEnabled:v19];

    v18->_linkIdleTimeout = 30;
  }

  return v9;
}

@end