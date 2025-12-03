@interface DMDMobileGestalt
+ (NSData)wifiAddressData;
+ (NSNumber)dataAvailable;
+ (NSNumber)dataCapacity;
+ (NSString)bluetoothAddress;
+ (NSString)buildVersion;
+ (NSString)deviceClass;
+ (NSString)ethernetMacAddress;
+ (NSString)marketingName;
+ (NSString)mobileSubscriberCountryCode;
+ (NSString)mobileSubscriberNetworkCode;
+ (NSString)modelNumber;
+ (NSString)phoneNumber;
+ (NSString)productType;
+ (NSString)productVersion;
+ (NSString)serialNumber;
+ (NSString)uniqueDeviceID;
+ (NSString)userAssignedDeviceName;
+ (NSString)wifiAddress;
+ (unint64_t)deviceType;
@end

@implementation DMDMobileGestalt

+ (unint64_t)deviceType
{
  deviceClass = [self deviceClass];
  if ([deviceClass isEqualToString:@"iPhone"])
  {
    v3 = 1;
  }

  else if ([deviceClass isEqualToString:@"iPod"])
  {
    v3 = 2;
  }

  else if ([deviceClass isEqualToString:@"iPad"])
  {
    v3 = 3;
  }

  else if ([deviceClass isEqualToString:@"AppleTV"])
  {
    v3 = 4;
  }

  else if ([deviceClass isEqualToString:@"Watch"])
  {
    v3 = 5;
  }

  else if ([deviceClass isEqualToString:@"AudioAccessory"])
  {
    v3 = 6;
  }

  else if ([deviceClass isEqualToString:@"RealityDevice"])
  {
    v3 = 8;
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 138477827;
      v6 = deviceClass;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Unknown device type %{private}@", &v5, 0xCu);
    }

    v3 = 0;
  }

  return v3;
}

+ (NSString)deviceClass
{
  v2 = MGCopyAnswer();

  return v2;
}

+ (NSString)productType
{
  v2 = MGCopyAnswer();

  return v2;
}

+ (NSString)productVersion
{
  v2 = MGCopyAnswer();

  return v2;
}

+ (NSString)buildVersion
{
  v2 = MGCopyAnswer();

  return v2;
}

+ (NSString)marketingName
{
  v2 = MGCopyAnswer();

  return v2;
}

+ (NSString)serialNumber
{
  v2 = MGCopyAnswer();

  return v2;
}

+ (NSString)modelNumber
{
  v2 = MGCopyAnswer();

  return v2;
}

+ (NSString)uniqueDeviceID
{
  v2 = MGCopyAnswer();

  return v2;
}

+ (NSString)userAssignedDeviceName
{
  v2 = MGCopyAnswer();

  return v2;
}

+ (NSNumber)dataCapacity
{
  v2 = MGCopyAnswer();
  v3 = [v2 objectForKeyedSubscript:kMGQDiskUsageTotalDataCapacity];
  if (v3)
  {
    v4 = v3;
    [v3 floatValue];
    v6 = [NSNumber numberWithDouble:v5 * 9.31322575e-10];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (NSNumber)dataAvailable
{
  v2 = MGCopyAnswer();
  v3 = [v2 objectForKeyedSubscript:kMGQDiskUsageAmountDataAvailable];
  if (v3)
  {
    v4 = v3;
    [v3 floatValue];
    v6 = [NSNumber numberWithDouble:v5 * 9.31322575e-10];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (NSString)ethernetMacAddress
{
  v2 = MGCopyAnswer();

  return v2;
}

+ (NSString)bluetoothAddress
{
  v2 = MGCopyAnswer();

  return v2;
}

+ (NSString)wifiAddress
{
  v2 = MGCopyAnswer();

  return v2;
}

+ (NSData)wifiAddressData
{
  v2 = MGCopyAnswer();

  return v2;
}

+ (NSString)phoneNumber
{
  v2 = MGCopyAnswer();

  return v2;
}

+ (NSString)mobileSubscriberCountryCode
{
  v2 = MGCopyAnswer();

  return v2;
}

+ (NSString)mobileSubscriberNetworkCode
{
  v2 = MGCopyAnswer();

  return v2;
}

@end