@interface FMDFMIPUnregisterDeviceInfoAccessoryAdaptor
- (FMDFMIPUnregisterDeviceInfoAccessoryAdaptor)initWithAccessory:(id)accessory unregisterToken:(id)token;
@end

@implementation FMDFMIPUnregisterDeviceInfoAccessoryAdaptor

- (FMDFMIPUnregisterDeviceInfoAccessoryAdaptor)initWithAccessory:(id)accessory unregisterToken:(id)token
{
  accessoryCopy = accessory;
  tokenCopy = token;
  v16.receiver = self;
  v16.super_class = FMDFMIPUnregisterDeviceInfoAccessoryAdaptor;
  v8 = [(FMDFMIPUnregisterDeviceInfoAccessoryAdaptor *)&v16 init];
  v9 = v8;
  if (v8)
  {
    [(FMDFMIPUnregisterDeviceInfoAccessoryAdaptor *)v8 setAccessory:accessoryCopy];
    udid = [accessoryCopy udid];
    [(FMDFMIPUnregisterDeviceInfo *)v9 setUdid:udid];

    serialNumber = [accessoryCopy serialNumber];
    [(FMDFMIPUnregisterDeviceInfo *)v9 setSerialNumber:serialNumber];

    productType = [accessoryCopy productType];
    [(FMDFMIPUnregisterDeviceInfo *)v9 setProductType:productType];

    productVersion = [accessoryCopy productVersion];
    [(FMDFMIPUnregisterDeviceInfo *)v9 setProductVersion:productVersion];

    buildVersion = [accessoryCopy buildVersion];
    [(FMDFMIPUnregisterDeviceInfo *)v9 setBuildVersion:buildVersion];

    -[FMDFMIPUnregisterDeviceInfo setPaired:](v9, "setPaired:", [accessoryCopy paired]);
    -[FMDFMIPUnregisterDeviceInfo setMigrationConfirmed:](v9, "setMigrationConfirmed:", [accessoryCopy migrationPossible]);
    [(FMDFMIPUnregisterDeviceInfo *)v9 setDisableContext:7];
    [(FMDFMIPUnregisterDeviceInfo *)v9 setUnregisterToken:tokenCopy];
  }

  return v9;
}

@end