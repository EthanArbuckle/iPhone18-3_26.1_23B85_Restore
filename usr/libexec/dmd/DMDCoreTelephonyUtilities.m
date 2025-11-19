@interface DMDCoreTelephonyUtilities
+ (BOOL)_supportsVoiceRoaming;
+ (BOOL)dataRoamingEnabled;
+ (BOOL)hasCDMA;
+ (BOOL)hasGSM;
+ (BOOL)isRoaming;
+ (BOOL)isSubscriptionRoaming:(id)a3 client:(id)a4;
+ (BOOL)voiceRoamingEnabled;
+ (NSString)ICCID;
+ (NSString)IMEI;
+ (NSString)MEID;
+ (NSString)carrierBundleVersion;
+ (NSString)carrierName;
+ (NSString)currentMobileCountryCode;
+ (NSString)currentMobileNetworkCode;
+ (NSString)currentNetworkName;
+ (NSString)modemFirmwareVersion;
+ (id)formattedICCIDStringFromString:(id)a3;
+ (id)formattedIMEIStringFromString:(id)a3;
+ (void)setDataRoamingEnabled:(BOOL)a3;
+ (void)setVoiceRoamingEnabled:(BOOL)a3;
+ (void)withCurrentDataServiceDescriptorDo:(id)a3;
@end

@implementation DMDCoreTelephonyUtilities

+ (id)formattedIMEIStringFromString:(id)a3
{
  if (a3)
  {
    v3 = [NSMutableString stringWithString:?];
    if ([v3 length] >= 3)
    {
      [v3 insertString:@" " atIndex:2];
    }

    if ([v3 length] >= 0xA)
    {
      [v3 insertString:@" " atIndex:9];
    }

    if ([v3 length] >= 0x11)
    {
      [v3 insertString:@" " atIndex:16];
    }

    v4 = [v3 copy];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)formattedICCIDStringFromString:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v4 = [NSMutableString stringWithString:v3];
    if ([v3 length] >= 4 && objc_msgSend(v3, "length") >= 5)
    {
      v5 = 0;
      v6 = 4;
      do
      {
        if ([v3 length] > v6)
        {
          [v4 insertString:@" " atIndex:(v5 + v6)];
          ++v5;
        }

        v6 = (v6 + 4);
      }

      while ([v3 length] > v6);
    }

    v7 = [v4 copy];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (NSString)IMEI
{
  v3 = sub_1000323EC();
  v4 = [v3 IMEI];

  if ([v4 length])
  {
    v5 = [a1 formattedIMEIStringFromString:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (NSString)MEID
{
  if (qword_1000FF0A0 != -1)
  {
    sub_100081414();
  }

  v3 = qword_1000FF098;

  return v3;
}

+ (NSString)modemFirmwareVersion
{
  if (+[DMDMobileGestalt hasCellularDataCapability])
  {
    if (qword_1000FF0B0 != -1)
    {
      sub_100081428();
    }

    v2 = qword_1000FF0A8;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

+ (NSString)ICCID
{
  if (+[DMDMobileGestalt hasCellularDataCapability])
  {
    v3 = sub_1000323EC();
    v4 = [v3 ICCID];

    if ([v4 length])
    {
      v5 = [a1 formattedICCIDStringFromString:v4];
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (NSString)currentNetworkName
{
  if (!+[DMDMobileGestalt hasCellularDataCapability])
  {
    v6 = 0;
    goto LABEL_13;
  }

  v2 = sub_100032A20();
  v3 = sub_100032A64(v2);
  if (v3)
  {
    v8 = 0;
    v4 = [v2 getLocalizedOperatorName:v3 error:&v8];
    v5 = v8;
    if (v4)
    {
      if ([v4 length])
      {
        v6 = v4;
LABEL_11:

        goto LABEL_12;
      }
    }

    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10008143C();
    }

    v6 = 0;
    goto LABEL_11;
  }

  v6 = 0;
LABEL_12:

LABEL_13:

  return v6;
}

+ (NSString)carrierName
{
  v2 = sub_100032A20();
  v3 = sub_100032A64(v2);
  v4 = [[CTBundle alloc] initWithBundleType:1];
  v8 = 0;
  v5 = [v2 copyCarrierBundleValue:v3 key:@"CarrierName" bundleType:v4 error:&v8];
  v6 = v8;
  if (!v5 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100081504();
  }

  return v5;
}

+ (NSString)carrierBundleVersion
{
  v2 = sub_100032A20();
  v3 = sub_100032A64(v2);
  if (v3)
  {
    v8 = 0;
    v4 = [v2 copyCarrierBundleVersion:v3 error:&v8];
    v5 = v8;
    if (!v4 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100081574();
    }

    v6 = v4;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (NSString)currentMobileCountryCode
{
  if (!+[DMDMobileGestalt hasCellularDataCapability])
  {
    goto LABEL_11;
  }

  v2 = sub_100032A20();
  v3 = sub_100032A64(v2);
  if (!v3)
  {
LABEL_10:

LABEL_11:
    v5 = 0;
    goto LABEL_12;
  }

  v4 = v3;
  v8 = 0;
  v5 = [v2 copyMobileCountryCode:v3 error:&v8];
  v6 = v8;
  if (!v5)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_1000815E4();
    }

    goto LABEL_10;
  }

  if (![v5 length])
  {

    v5 = 0;
  }

LABEL_12:

  return v5;
}

+ (NSString)currentMobileNetworkCode
{
  if (!+[DMDMobileGestalt hasCellularDataCapability])
  {
    goto LABEL_11;
  }

  v2 = sub_100032A20();
  v3 = sub_100032A64(v2);
  if (!v3)
  {
LABEL_10:

LABEL_11:
    v5 = 0;
    goto LABEL_12;
  }

  v4 = v3;
  v8 = 0;
  v5 = [v2 copyMobileNetworkCode:v3 error:&v8];
  v6 = v8;
  if (!v5)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100081654();
    }

    goto LABEL_10;
  }

  if (![v5 length])
  {

    v5 = 0;
  }

LABEL_12:

  return v5;
}

+ (BOOL)dataRoamingEnabled
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  if (+[DMDMobileGestalt hasCellularDataCapability])
  {
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = sub_1000330C8;
    v4[3] = &unk_1000CEDB0;
    v4[4] = &v5;
    [objc_opt_class() withCurrentDataServiceDescriptorDo:v4];
  }

  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

+ (void)setDataRoamingEnabled:(BOOL)a3
{
  if (+[DMDMobileGestalt hasCellularDataCapability])
  {
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = sub_10003324C;
    v4[3] = &unk_1000CEDD0;
    v5 = a3;
    [objc_opt_class() withCurrentDataServiceDescriptorDo:v4];
  }
}

+ (void)withCurrentDataServiceDescriptorDo:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    sub_100081884(a2, a1);
  }

  v6 = sub_100032A20();
  v9 = 0;
  v7 = [v6 getCurrentDataServiceDescriptorSync:&v9];
  v8 = v9;
  v5[2](v5, v7, v8);
}

+ (BOOL)isSubscriptionRoaming:(id)a3 client:(id)a4
{
  v8 = 0;
  v4 = [a4 copyRegistrationStatus:a3 error:&v8];
  v5 = v8;
  if (v4)
  {
    v6 = [v4 isEqualToString:kCTRegistrationStatusRegisteredRoaming];
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_1000818F8();
    }

    v6 = 0;
  }

  return v6;
}

+ (BOOL)isRoaming
{
  v2 = +[DMDMobileGestalt hasCellularDataCapability];
  if (v2)
  {
    v3 = sub_100032A20();
    v4 = sub_100032A64(v3);
    v5 = [objc_opt_class() isSubscriptionRoaming:v4 client:v3];

    LOBYTE(v2) = v5;
  }

  return v2;
}

+ (BOOL)voiceRoamingEnabled
{
  if (![a1 _supportsVoiceRoaming])
  {
    return 0;
  }

  v2 = _CTServerConnectionCreate();
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = _CTServerConnectionGetEnableOnlyHomeNetwork() >> 32 == 0;
  CFRelease(v3);
  return v4;
}

+ (void)setVoiceRoamingEnabled:(BOOL)a3
{
  v3 = a3;
  if ([a1 _supportsVoiceRoaming])
  {
    if ([a1 voiceRoamingEnabled] == v3)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_100081988();
      }
    }

    else
    {
      v5 = _CTServerConnectionCreate();
      if (v5)
      {
        v6 = v5;
        _CTServerConnectionSetEnableOnlyHomeNetwork();
        CFRelease(v6);
      }
    }
  }
}

+ (BOOL)hasGSM
{
  v2 = [a1 IMEI];
  v3 = v2 != 0;

  return v3;
}

+ (BOOL)hasCDMA
{
  v2 = [a1 MEID];
  v3 = v2 != 0;

  return v3;
}

+ (BOOL)_supportsVoiceRoaming
{
  if (!+[DMDMobileGestalt hasTelephonyCapability])
  {
    v7 = 0;
    goto LABEL_12;
  }

  v2 = sub_100032A20();
  v3 = sub_100032A64(v2);
  v4 = [[CTBundle alloc] initWithBundleType:1];
  v11 = 0;
  v5 = [v2 copyCarrierBundleValue:v3 key:@"ShowVoiceRoamingSwitch" bundleType:v4 error:&v11];
  v6 = v11;
  if (v5)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v5 BOOLValue];
      v8 = 1;
      goto LABEL_11;
    }

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100081A04();
    }
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100081A74();
  }

  v8 = 0;
  v7 = 0;
LABEL_11:

  if (!v8)
  {
    LOBYTE(v7) = 0;
    return v7;
  }

LABEL_12:
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    v9 = @"NO";
    if (v7)
    {
      v9 = @"YES";
    }

    *buf = 138543362;
    v13 = v9;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "device supports voice roaming: %{public}@", buf, 0xCu);
  }

  return v7;
}

@end