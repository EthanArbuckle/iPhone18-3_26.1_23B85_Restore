@interface FMDFMIPUnregisterDeviceInfoAccessoryAdaptor
- (FMDFMIPUnregisterDeviceInfoAccessoryAdaptor)initWithAccessory:(id)a3 unregisterToken:(id)a4;
@end

@implementation FMDFMIPUnregisterDeviceInfoAccessoryAdaptor

- (FMDFMIPUnregisterDeviceInfoAccessoryAdaptor)initWithAccessory:(id)a3 unregisterToken:(id)a4
{
  v6 = a3;
  v7 = a4;
  v16.receiver = self;
  v16.super_class = FMDFMIPUnregisterDeviceInfoAccessoryAdaptor;
  v8 = [(FMDFMIPUnregisterDeviceInfoAccessoryAdaptor *)&v16 init];
  v9 = v8;
  if (v8)
  {
    [(FMDFMIPUnregisterDeviceInfoAccessoryAdaptor *)v8 setAccessory:v6];
    v10 = [v6 udid];
    [(FMDFMIPUnregisterDeviceInfo *)v9 setUdid:v10];

    v11 = [v6 serialNumber];
    [(FMDFMIPUnregisterDeviceInfo *)v9 setSerialNumber:v11];

    v12 = [v6 productType];
    [(FMDFMIPUnregisterDeviceInfo *)v9 setProductType:v12];

    v13 = [v6 productVersion];
    [(FMDFMIPUnregisterDeviceInfo *)v9 setProductVersion:v13];

    v14 = [v6 buildVersion];
    [(FMDFMIPUnregisterDeviceInfo *)v9 setBuildVersion:v14];

    -[FMDFMIPUnregisterDeviceInfo setPaired:](v9, "setPaired:", [v6 paired]);
    -[FMDFMIPUnregisterDeviceInfo setMigrationConfirmed:](v9, "setMigrationConfirmed:", [v6 migrationPossible]);
    [(FMDFMIPUnregisterDeviceInfo *)v9 setDisableContext:7];
    [(FMDFMIPUnregisterDeviceInfo *)v9 setUnregisterToken:v7];
  }

  return v9;
}

@end