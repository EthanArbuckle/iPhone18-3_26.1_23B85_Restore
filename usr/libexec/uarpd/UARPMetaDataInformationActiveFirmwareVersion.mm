@interface UARPMetaDataInformationActiveFirmwareVersion
- (UARPMetaDataInformationActiveFirmwareVersion)init;
- (UARPMetaDataInformationActiveFirmwareVersion)initWithLength:(unint64_t)length value:(void *)value;
- (UARPMetaDataInformationActiveFirmwareVersion)initWithPropertyListValue:(id)value relativeURL:(id)l;
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

- (UARPMetaDataInformationActiveFirmwareVersion)initWithPropertyListValue:(id)value relativeURL:(id)l
{
  valueCopy = value;
  v6 = [(UARPMetaDataInformationActiveFirmwareVersion *)self init];
  v7 = v6;
  if (v6)
  {
    v13.receiver = v6;
    v13.super_class = UARPMetaDataInformationActiveFirmwareVersion;
    v8 = [(UARPMetaData *)&v13 stringFromPlistValue:valueCopy];
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

- (UARPMetaDataInformationActiveFirmwareVersion)initWithLength:(unint64_t)length value:(void *)value
{
  v6 = [(UARPMetaDataInformationActiveFirmwareVersion *)self init];
  v7 = v6;
  if (v6 && (v12.receiver = v6, v12.super_class = UARPMetaDataInformationActiveFirmwareVersion, [(UARPMetaData *)&v12 componentVersionWithLength:length value:value], v8 = objc_claimAutoreleasedReturnValue(), firmwareVersion = v7->_firmwareVersion, v7->_firmwareVersion = v8, firmwareVersion, v7->_firmwareVersion))
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
  firmwareVersion = [(UARPMetaDataInformationActiveFirmwareVersion *)self firmwareVersion];
  v6.receiver = self;
  v6.super_class = UARPMetaDataInformationActiveFirmwareVersion;
  v4 = [(UARPMetaData *)&v6 tlvValueWithComponentVersion:firmwareVersion];

  return v4;
}

- (id)description
{
  tlvName = [(UARPMetaData *)self tlvName];
  firmwareVersion = [(UARPMetaDataInformationActiveFirmwareVersion *)self firmwareVersion];
  v5 = [NSString stringWithFormat:@"<%@: %@>", tlvName, firmwareVersion];

  return v5;
}

@end