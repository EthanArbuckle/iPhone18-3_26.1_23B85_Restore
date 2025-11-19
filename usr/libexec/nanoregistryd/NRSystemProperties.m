@interface NRSystemProperties
+ (NRSystemProperties)sharedInstance;
- (NRSystemProperties)init;
@end

@implementation NRSystemProperties

+ (NRSystemProperties)sharedInstance
{
  if (qword_1001B3A38 != -1)
  {
    sub_100102E3C();
  }

  v3 = qword_1001B3A30;

  return v3;
}

- (NRSystemProperties)init
{
  v13.receiver = self;
  v13.super_class = NRSystemProperties;
  v2 = [(NRSystemProperties *)&v13 init];
  if (v2)
  {
    v3 = MGGetStringAnswer();
    productType = v2->_productType;
    v2->_productType = v3;

    v5 = MGCopyAnswer();
    serialNumber = v2->_serialNumber;
    v2->_serialNumber = v5;

    v7 = MGCopyAnswer();
    chipID = v2->_chipID;
    v2->_chipID = v7;

    v2->_isCellularCapable = MGGetBoolAnswer();
    v2->_isBluetoothCapable = MGGetBoolAnswer();
    v2->_internalInstall = MGGetBoolAnswer();
    v2->_isVirtualDevice = MGGetBoolAnswer();
    v9 = MGCopyAnswer();
    v10 = [NSNumber numberWithInt:NRRawVersionFromString()];
    encodedSystemVersion = v2->_encodedSystemVersion;
    v2->_encodedSystemVersion = v10;
  }

  return v2;
}

@end