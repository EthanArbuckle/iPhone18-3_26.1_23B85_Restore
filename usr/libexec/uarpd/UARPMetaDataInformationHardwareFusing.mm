@interface UARPMetaDataInformationHardwareFusing
- (UARPMetaDataInformationHardwareFusing)init;
- (UARPMetaDataInformationHardwareFusing)initWithLength:(unint64_t)length value:(void *)value;
- (UARPMetaDataInformationHardwareFusing)initWithPropertyListValue:(id)value relativeURL:(id)l;
- (id)description;
- (id)tlvValue;
@end

@implementation UARPMetaDataInformationHardwareFusing

- (UARPMetaDataInformationHardwareFusing)init
{
  v6.receiver = self;
  v6.super_class = UARPMetaDataInformationHardwareFusing;
  v2 = [(UARPMetaData *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->super._tlvType = 10;
    tlvName = v2->super._tlvName;
    v2->super._tlvName = @"Hardware Fusing";
  }

  return v3;
}

- (UARPMetaDataInformationHardwareFusing)initWithPropertyListValue:(id)value relativeURL:(id)l
{
  valueCopy = value;
  v6 = [(UARPMetaDataInformationHardwareFusing *)self init];
  v7 = v6;
  if (v6)
  {
    v12.receiver = v6;
    v12.super_class = UARPMetaDataInformationHardwareFusing;
    v8 = [(UARPMetaData *)&v12 stringFromPlistValue:valueCopy];
    hardwareFusing = v7->_hardwareFusing;
    v7->_hardwareFusing = v8;

    v7->super._tlvLength = [(NSString *)v7->_hardwareFusing length];
  }

  if (v7->_hardwareFusing)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (UARPMetaDataInformationHardwareFusing)initWithLength:(unint64_t)length value:(void *)value
{
  v6 = [(UARPMetaDataInformationHardwareFusing *)self init];
  if (v6)
  {
    v7 = [[NSString alloc] initWithBytes:value length:length encoding:4];
    hardwareFusing = v6->_hardwareFusing;
    v6->_hardwareFusing = v7;

    v6->super._tlvLength = [(NSString *)v6->_hardwareFusing length];
  }

  return v6;
}

- (id)tlvValue
{
  hardwareFusing = [(UARPMetaDataInformationHardwareFusing *)self hardwareFusing];
  v6.receiver = self;
  v6.super_class = UARPMetaDataInformationHardwareFusing;
  v4 = [(UARPMetaData *)&v6 tlvValueWithString:hardwareFusing];

  return v4;
}

- (id)description
{
  tlvName = [(UARPMetaData *)self tlvName];
  hardwareFusing = [(UARPMetaDataInformationHardwareFusing *)self hardwareFusing];
  v5 = [NSString stringWithFormat:@"<%@: %@>", tlvName, hardwareFusing];

  return v5;
}

@end