@interface UARPMetaDataInformationSerialNumber
- (UARPMetaDataInformationSerialNumber)init;
- (UARPMetaDataInformationSerialNumber)initWithLength:(unint64_t)length value:(void *)value;
- (UARPMetaDataInformationSerialNumber)initWithPropertyListValue:(id)value relativeURL:(id)l;
- (id)description;
- (id)tlvValue;
@end

@implementation UARPMetaDataInformationSerialNumber

- (UARPMetaDataInformationSerialNumber)init
{
  v6.receiver = self;
  v6.super_class = UARPMetaDataInformationSerialNumber;
  v2 = [(UARPMetaData *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->super._tlvType = 3;
    tlvName = v2->super._tlvName;
    v2->super._tlvName = @"Serial Number";
  }

  return v3;
}

- (UARPMetaDataInformationSerialNumber)initWithPropertyListValue:(id)value relativeURL:(id)l
{
  valueCopy = value;
  v6 = [(UARPMetaDataInformationSerialNumber *)self init];
  v7 = v6;
  if (v6)
  {
    v12.receiver = v6;
    v12.super_class = UARPMetaDataInformationSerialNumber;
    v8 = [(UARPMetaData *)&v12 stringFromPlistValue:valueCopy];
    serialNumber = v7->_serialNumber;
    v7->_serialNumber = v8;

    v7->super._tlvLength = [(NSString *)v7->_serialNumber length];
  }

  if (v7->_serialNumber)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (UARPMetaDataInformationSerialNumber)initWithLength:(unint64_t)length value:(void *)value
{
  v6 = [(UARPMetaDataInformationSerialNumber *)self init];
  if (v6)
  {
    v7 = [[NSString alloc] initWithBytes:value length:length encoding:4];
    serialNumber = v6->_serialNumber;
    v6->_serialNumber = v7;

    v6->super._tlvLength = [(NSString *)v6->_serialNumber length];
  }

  return v6;
}

- (id)tlvValue
{
  serialNumber = [(UARPMetaDataInformationSerialNumber *)self serialNumber];
  v6.receiver = self;
  v6.super_class = UARPMetaDataInformationSerialNumber;
  v4 = [(UARPMetaData *)&v6 tlvValueWithString:serialNumber];

  return v4;
}

- (id)description
{
  tlvName = [(UARPMetaData *)self tlvName];
  serialNumber = [(UARPMetaDataInformationSerialNumber *)self serialNumber];
  v5 = [NSString stringWithFormat:@"<%@: %@>", tlvName, serialNumber];

  return v5;
}

@end