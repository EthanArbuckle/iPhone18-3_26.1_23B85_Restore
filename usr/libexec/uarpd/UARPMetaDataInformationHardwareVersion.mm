@interface UARPMetaDataInformationHardwareVersion
- (UARPMetaDataInformationHardwareVersion)init;
- (UARPMetaDataInformationHardwareVersion)initWithLength:(unint64_t)a3 value:(void *)a4;
- (UARPMetaDataInformationHardwareVersion)initWithPropertyListValue:(id)a3 relativeURL:(id)a4;
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

- (UARPMetaDataInformationHardwareVersion)initWithPropertyListValue:(id)a3 relativeURL:(id)a4
{
  v5 = a3;
  v6 = [(UARPMetaDataInformationHardwareVersion *)self init];
  v7 = v6;
  if (v6)
  {
    v12.receiver = v6;
    v12.super_class = UARPMetaDataInformationHardwareVersion;
    v8 = [(UARPMetaData *)&v12 stringFromPlistValue:v5];
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

- (UARPMetaDataInformationHardwareVersion)initWithLength:(unint64_t)a3 value:(void *)a4
{
  v6 = [(UARPMetaDataInformationHardwareVersion *)self init];
  if (v6)
  {
    v7 = [[NSString alloc] initWithBytes:a4 length:a3 encoding:4];
    hardwareVersion = v6->_hardwareVersion;
    v6->_hardwareVersion = v7;

    v6->super._tlvLength = [(NSString *)v6->_hardwareVersion length];
  }

  return v6;
}

- (id)tlvValue
{
  v3 = [(UARPMetaDataInformationHardwareVersion *)self hardwareVersion];
  v6.receiver = self;
  v6.super_class = UARPMetaDataInformationHardwareVersion;
  v4 = [(UARPMetaData *)&v6 tlvValueWithString:v3];

  return v4;
}

- (id)description
{
  v3 = [(UARPMetaData *)self tlvName];
  v4 = [(UARPMetaDataInformationHardwareVersion *)self hardwareVersion];
  v5 = [NSString stringWithFormat:@"<%@: %@>", v3, v4];

  return v5;
}

@end