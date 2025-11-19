@interface HRCServiceInfo
+ (id)makeDevice:(id)a3 aaDevice:(id)a4;
+ (id)propertyForKey:(id)a3 service:(id)a4 withDefault:(id)a5;
- (BOOL)streaming;
- (HRCServiceInfo)initWithService:(id)a3;
@end

@implementation HRCServiceInfo

+ (id)propertyForKey:(id)a3 service:(id)a4 withDefault:(id)a5
{
  v7 = a5;
  v8 = [a4 propertyForKey:a3];
  if (v8)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v9 = [v8 description];

      v8 = v9;
    }
  }

  else
  {
    v8 = v7;
    v7 = 0;
  }

  return v8;
}

+ (id)makeDevice:(id)a3 aaDevice:(id)a4
{
  v5 = a3;
  v6 = a4;
  v28 = v5;
  v29 = v6;
  if (!v6)
  {
    v15 = [HRCServiceInfo propertyForKey:@"Product" service:v5 withDefault:@"UNKNOWN"];
    v16 = [NSString stringWithUTF8String:"kBTFirmwareRevisionKey"];
    v27 = v15;
    v30 = [HRCServiceInfo propertyForKey:v16 service:v28 withDefault:0];

    v17 = [v28 propertyForKey:@"ProductID"];
    v12 = sub_1000124CC([v17 unsignedIntValue]);
    v18 = [HRCServiceInfo propertyForKey:@"Manufacturer" service:v28 withDefault:0];
    v11 = [HRCServiceInfo propertyForKey:@"BluetoothID" service:v28 withDefault:0];

    v19 = 0;
    goto LABEL_74;
  }

  v7 = [v6 name];
  v8 = v7;
  v9 = @"UNKNOWN";
  if (v7)
  {
    v9 = v7;
  }

  v10 = v9;

  v30 = [v29 firmwareVersion];
  v11 = [v29 identifier];
  v12 = sub_1000124CC([v29 productID]);
  v13 = [v29 productID];
  if (v13 <= 21759)
  {
    if (v13 > 8193)
    {
      switch(v13)
      {
        case 8194:
          v14 = "AirPods1,1";
          break;
        case 8195:
          v14 = "PowerBeats3,1";
          break;
        case 8197:
          v14 = "BeatsX1,1";
          break;
        case 8198:
          v14 = "BeatsSolo3,1";
          break;
        case 8201:
          v14 = "BeatsStudio3,2";
          break;
        case 8202:
          v14 = "Device1,8202";
          break;
        case 8203:
          v14 = "PowerbeatsPro1,1";
          break;
        case 8204:
          v14 = "BeatsSoloPro1,1";
          break;
        case 8205:
          v14 = "Powerbeats4,1";
          break;
        case 8206:
          v14 = "AirPodsPro1,1";
          break;
        case 8207:
          v14 = "AirPods1,3";
          break;
        case 8208:
          v14 = "Device1,8208";
          break;
        case 8209:
          v14 = "BeatsStudioBuds1,1";
          break;
        case 8210:
          v14 = "Device1,8210";
          break;
        case 8211:
          v14 = "Device1,8211";
          break;
        case 8212:
          v14 = "Device1,8212";
          break;
        case 8213:
          v14 = "Device1,8213";
          break;
        case 8214:
          v14 = "BeatsStudioBuds1,2";
          break;
        case 8215:
          v14 = "BeatsStudioPro1,1";
          break;
        case 8216:
          v14 = "Device1,8216";
          break;
        case 8217:
          v14 = "Device1,8217";
          break;
        case 8218:
          v14 = "Device1,8218";
          break;
        case 8219:
          v14 = "Device1,8219";
          break;
        case 8220:
          v14 = "Device1,8220";
          break;
        case 8221:
          v14 = "Powerb3,1";
          break;
        case 8222:
          v14 = "Device1,8222";
          break;
        case 8223:
          v14 = "Device1,8223";
          break;
        case 8224:
          v14 = "Device1,8224";
          break;
        case 8228:
          v14 = "Device1,8228";
          break;
        case 8229:
          v14 = "Device1,8229";
          break;
        case 8230:
          v14 = "Device1,8230";
          break;
        case 8231:
          v14 = "AirPods3,4";
          break;
        case 8232:
          v14 = "Device1,8232";
          break;
        case 8233:
          v14 = "Device1,8233";
          break;
        case 8239:
          v14 = "Device1,8239";
          break;
        default:
          goto LABEL_72;
      }

      goto LABEL_73;
    }

    switch(v13)
    {
      case 0:
        v14 = "Invalid";
        goto LABEL_73;
      case 614:
        v14 = "ATVRemote1,1";
        goto LABEL_73;
      case 621:
        v14 = "ATVRemote1,2";
        goto LABEL_73;
    }

LABEL_72:
    v14 = "?";
    goto LABEL_73;
  }

  if (v13 > 28943)
  {
    if (v13 <= 29714)
    {
      if (v13 == 28944)
      {
        v14 = "AudioAccessory1,2";
        goto LABEL_73;
      }

      if (v13 == 29455)
      {
        v14 = "AppleTV11,1";
        goto LABEL_73;
      }

      goto LABEL_72;
    }

    if (v13 == 29715)
    {
      v14 = "AudioAccessory5,1";
      goto LABEL_73;
    }

    if (v13 == 65533)
    {
      v14 = "HeGn";
      goto LABEL_73;
    }

    if (v13 != 65534)
    {
      goto LABEL_72;
    }

    v14 = "ApGn";
  }

  else
  {
    if (v13 <= 28419)
    {
      if (v13 == 21760)
      {
        v14 = "Device1,21760";
        goto LABEL_73;
      }

      if (v13 == 22034)
      {
        v14 = "Device1,22034";
        goto LABEL_73;
      }

      goto LABEL_72;
    }

    if (v13 == 28420)
    {
      v14 = "AppleTV5,3";
      goto LABEL_73;
    }

    if (v13 == 28936)
    {
      v14 = "AppleTV6,2";
      goto LABEL_73;
    }

    if (v13 != 28943)
    {
      goto LABEL_72;
    }

    v14 = "AudioAccessory1,1";
  }

LABEL_73:
  v19 = [NSString stringWithCString:v14 encoding:4];
  v18 = @"Apple Inc.";
  v27 = v10;
LABEL_74:
  v20 = [[HRCDevice alloc] initWithName:v27 manufacturer:v18 model:v12 hardwareVersion:v19 firmwareVersion:v30 softwareVersion:0 localIdentifier:0 UDIDeviceIdentifier:0 bluetoothIdentifier:v11];
  v21 = sub_10000132C();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    v22 = [v20 name];
    v23 = [v20 manufacturer];
    v24 = [v20 hardwareVersion];
    v25 = [v20 bluetoothIdentifier];
    *buf = 138544386;
    v32 = v22;
    v33 = 2114;
    v34 = v23;
    v35 = 2114;
    v36 = v12;
    v37 = 2114;
    v38 = v24;
    v39 = 2114;
    v40 = v25;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Creating device name:%{public}@, mfg:%{public}@, model:%{public}@, hwVer:%{public}@, id:%{public}@", buf, 0x34u);
  }

  return v20;
}

- (HRCServiceInfo)initWithService:(id)a3
{
  v5 = a3;
  v28.receiver = self;
  v28.super_class = HRCServiceInfo;
  v6 = [(HRCServiceInfo *)&v28 init];
  objc_storeStrong(&v6->_service, a3);
  v7 = objc_opt_new();
  uuid = v6->_uuid;
  v6->_uuid = v7;

  service = v6->_service;
  v10 = [NSString stringWithUTF8String:"BT_ADDR"];
  v11 = [(HIDServiceClient *)service propertyForKey:v10];
  bluetoothAddress = v6->_bluetoothAddress;
  v6->_bluetoothAddress = v11;

  v13 = [(HIDServiceClient *)v6->_service propertyForKey:@"Transport"];
  v14 = [NSString stringWithUTF8String:"Virtual"];
  v15 = [v13 isEqual:v14];

  if (v15)
  {
    v6->_virtualDevice = 1;
  }

  else if (([v13 isEqual:@"BT-AACP"] & 1) == 0)
  {
    v16 = sub_10000132C();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
    {
      sub_100016F44();
    }
  }

  v17 = sub_10000132C();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = v6->_bluetoothAddress;
    v19 = [NSMutableString stringWithCapacity:17];
    *v37 = _NSConcreteStackBlock;
    v38 = 3221225472;
    v39 = sub_100016EA4;
    v40 = &unk_100040D38;
    v20 = v19;
    v41 = v20;
    [(NSData *)v18 enumerateByteRangesUsingBlock:v37];

    v21 = v6->_uuid;
    virtualDevice = v6->_virtualDevice;
    *buf = 138544130;
    v30 = v20;
    v31 = 2114;
    v32 = v5;
    v33 = 2114;
    v34 = v21;
    v35 = 1024;
    v36 = virtualDevice;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "AACP HR service BT_ADDR:%{public}@ Added:%{public}@ UUID:%{public}@, virtual: %{BOOL}d", buf, 0x26u);
  }

  v23 = [(HIDServiceClient *)v6->_service propertyForKey:@"Simulator"];
  if (v23)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if ([v23 BOOLValue])
      {
        v6->_simulator = 1;
        v24 = [v5 propertyForKey:@"ProductID"];
        v6->_simProductID = [v24 unsignedIntValue];
        v25 = sub_10000132C();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          simProductID = v6->_simProductID;
          *v37 = 67109120;
          *&v37[4] = simProductID;
          _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "AACP Simulator detected id 0x%x", v37, 8u);
        }
      }
    }
  }

  return v6;
}

- (BOOL)streaming
{
  v2 = [(HRCServiceInfo *)self service];
  v3 = [v2 propertyForKey:@"ReportInterval"];

  LOBYTE(v2) = [v3 isEqualToNumber:&off_1000432A0];
  return v2;
}

@end