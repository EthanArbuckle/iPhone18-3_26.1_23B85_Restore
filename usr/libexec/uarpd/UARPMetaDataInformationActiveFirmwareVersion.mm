@interface UARPMetaDataInformationActiveFirmwareVersion
- (UARPMetaDataInformationActiveFirmwareVersion)init;
- (UARPMetaDataInformationActiveFirmwareVersion)initWithLength:(unint64_t)a3 value:(void *)a4;
- (UARPMetaDataInformationActiveFirmwareVersion)initWithPropertyListValue:(id)a3 relativeURL:(id)a4;
- (id)description;
- (id)tlvValue;
@end

@implementation UARPMetaDataInformationActiveFirmwareVersion

- (UARPMetaDataInformationActiveFirmwareVersion)init
{
  v6.receiver = self;
  v6.super_class = UARPMetaDataInformationActiveFirmwareVersion;
  v2 = [(UARPMetaData *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->super._tlvType = 5;
    v2->super._tlvLength = 16;
    tlvName = v2->super._tlvName;
    v2->super._tlvName = @"Active Firmware Version";
  }

  return v3;
}

- (UARPMetaDataInformationActiveFirmwareVersion)initWithPropertyListValue:(id)a3 relativeURL:(id)a4
{
  v5 = a3;
  v6 = [(UARPMetaDataInformationActiveFirmwareVersion *)self init];
  v7 = v6;
  if (v6)
  {
    v13.receiver = v6;
    v13.super_class = UARPMetaDataInformationActiveFirmwareVersion;
    v8 = [(UARPMetaData *)&v13 stringFromPlistValue:v5];
    if (v8 && (v9 = [[UARPComponentVersion alloc] initWithVersionString:v8], firmwareVersion = v7->_firmwareVersion, v7->_firmwareVersion = v9, firmwareVersion, v7->_firmwareVersion))
    {
      v11 = v7;
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (UARPMetaDataInformationActiveFirmwareVersion)initWithLength:(unint64_t)a3 value:(void *)a4
{
  v6 = [(UARPMetaDataInformationActiveFirmwareVersion *)self init];
  v7 = v6;
  if (v6 && (v12.receiver = v6, v12.super_class = UARPMetaDataInformationActiveFirmwareVersion, [(UARPMetaData *)&v12 componentVersionWithLength:a3 value:a4], v8 = objc_claimAutoreleasedReturnValue(), firmwareVersion = v7->_firmwareVersion, v7->_firmwareVersion = v8, firmwareVersion, v7->_firmwareVersion))
  {
    v10 = v7;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)tlvValue
{
  v3 = [(UARPMetaDataInformationActiveFirmwareVersion *)self firmwareVersion];
  v6.receiver = self;
  v6.super_class = UARPMetaDataInformationActiveFirmwareVersion;
  v4 = [(UARPMetaData *)&v6 tlvValueWithComponentVersion:v3];

  return v4;
}

- (id)description
{
  v3 = [(UARPMetaData *)self tlvName];
  v4 = [(UARPMetaDataInformationActiveFirmwareVersion *)self firmwareVersion];
  v5 = [NSString stringWithFormat:@"<%@: %@>", v3, v4];

  return v5;
}

@end