@interface UARPMetaDataInformationHardwareVersion
- (UARPMetaDataInformationHardwareVersion)init;
- (UARPMetaDataInformationHardwareVersion)initWithLength:(unint64_t)length value:(void *)value;
- (UARPMetaDataInformationHardwareVersion)initWithPropertyListValue:(id)value relativeURL:(id)l;
- (id)description;
- (id)tlvValue;
@end

@implementation UARPMetaDataInformationHardwareVersion

- (UARPMetaDataInformationHardwareVersion)init
{
  v6.receiver = self;
  v6.super_class = UARPMetaDataInformationHardwareVersion;
  v2 = [(UARPMetaData *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->super._tlvType = 4;
    tlvName = v2->super._tlvName;
    v2->super._tlvName = @"Hardware Version";
  }

  return v3;
}

- (UARPMetaDataInformationHardwareVersion)initWithPropertyListValue:(id)value relativeURL:(id)l
{
  valueCopy = value;
  v6 = [(UARPMetaDataInformationHardwareVersion *)self init];
  v7 = v6;
  if (v6)
  {
    v12.receiver = v6;
    v12.super_class = UARPMetaDataInformationHardwareVersion;
    v8 = [(UARPMetaData *)&v12 stringFromPlistValue:valueCopy];
    hardwareVersion = v7->_hardwareVersion;
    v7->_hardwareVersion = v8;

    v7->super._tlvLength = [(NSString *)v7->_hardwareVersion length];
  }

  if (v7->_hardwareVersion)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (UARPMetaDataInformationHardwareVersion)initWithLength:(unint64_t)length value:(void *)value
{
  v6 = [(UARPMetaDataInformationHardwareVersion *)self init];
  if (v6)
  {
    v7 = [[NSString alloc] initWithBytes:value length:length encoding:4];
    hardwareVersion = v6->_hardwareVersion;
    v6->_hardwareVersion = v7;

    v6->super._tlvLength = [(NSString *)v6->_hardwareVersion length];
  }

  return v6;
}

- (id)tlvValue
{
  hardwareVersion = [(UARPMetaDataInformationHardwareVersion *)self hardwareVersion];
  v6.receiver = self;
  v6.super_class = UARPMetaDataInformationHardwareVersion;
  v4 = [(UARPMetaData *)&v6 tlvValueWithString:hardwareVersion];

  return v4;
}

- (id)description
{
  tlvName = [(UARPMetaData *)self tlvName];
  hardwareVersion = [(UARPMetaDataInformationHardwareVersion *)self hardwareVersion];
  v5 = [NSString stringWithFormat:@"<%@: %@>", tlvName, hardwareVersion];

  return v5;
}

@end