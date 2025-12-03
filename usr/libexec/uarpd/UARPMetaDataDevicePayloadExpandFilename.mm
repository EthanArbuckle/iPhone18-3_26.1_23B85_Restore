@interface UARPMetaDataDevicePayloadExpandFilename
- (UARPMetaDataDevicePayloadExpandFilename)init;
- (UARPMetaDataDevicePayloadExpandFilename)initWithLength:(unint64_t)length value:(void *)value;
- (UARPMetaDataDevicePayloadExpandFilename)initWithPropertyListValue:(id)value relativeURL:(id)l;
- (id)description;
- (id)tlvValue;
@end

@implementation UARPMetaDataDevicePayloadExpandFilename

- (UARPMetaDataDevicePayloadExpandFilename)init
{
  v6.receiver = self;
  v6.super_class = UARPMetaDataDevicePayloadExpandFilename;
  v2 = [(UARPMetaData *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->super._tlvType = -858619631;
    tlvName = v2->super._tlvName;
    v2->super._tlvName = @"Payload Expand Filename";
  }

  return v3;
}

- (UARPMetaDataDevicePayloadExpandFilename)initWithPropertyListValue:(id)value relativeURL:(id)l
{
  valueCopy = value;
  v6 = [(UARPMetaDataDevicePayloadExpandFilename *)self init];
  v7 = v6;
  if (v6)
  {
    v12.receiver = v6;
    v12.super_class = UARPMetaDataDevicePayloadExpandFilename;
    v8 = [(UARPMetaData *)&v12 stringFromPlistValue:valueCopy];
    expandFilename = v7->_expandFilename;
    v7->_expandFilename = v8;

    v7->super._tlvLength = [(NSString *)v7->_expandFilename length];
  }

  if (v7->_expandFilename)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (UARPMetaDataDevicePayloadExpandFilename)initWithLength:(unint64_t)length value:(void *)value
{
  v6 = [(UARPMetaDataDevicePayloadExpandFilename *)self init];
  if (v6)
  {
    v7 = [[NSString alloc] initWithBytes:value length:length encoding:4];
    expandFilename = v6->_expandFilename;
    v6->_expandFilename = v7;

    v6->super._tlvLength = [(NSString *)v6->_expandFilename length];
  }

  return v6;
}

- (id)tlvValue
{
  expandFilename = [(UARPMetaDataDevicePayloadExpandFilename *)self expandFilename];
  v6.receiver = self;
  v6.super_class = UARPMetaDataDevicePayloadExpandFilename;
  v4 = [(UARPMetaData *)&v6 tlvValueWithString:expandFilename];

  return v4;
}

- (id)description
{
  tlvName = [(UARPMetaData *)self tlvName];
  expandFilename = [(UARPMetaDataDevicePayloadExpandFilename *)self expandFilename];
  v5 = [NSString stringWithFormat:@"<%@: %@>", tlvName, expandFilename];

  return v5;
}

@end