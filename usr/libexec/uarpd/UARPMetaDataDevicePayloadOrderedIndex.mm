@interface UARPMetaDataDevicePayloadOrderedIndex
- (UARPMetaDataDevicePayloadOrderedIndex)init;
- (UARPMetaDataDevicePayloadOrderedIndex)initWithLength:(unint64_t)length value:(void *)value;
- (UARPMetaDataDevicePayloadOrderedIndex)initWithPropertyListValue:(id)value relativeURL:(id)l;
- (id)description;
- (id)tlvValue;
@end

@implementation UARPMetaDataDevicePayloadOrderedIndex

- (UARPMetaDataDevicePayloadOrderedIndex)init
{
  v6.receiver = self;
  v6.super_class = UARPMetaDataDevicePayloadOrderedIndex;
  v2 = [(UARPMetaData *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->super._tlvType = -858619621;
    v2->super._tlvLength = 2;
    tlvName = v2->super._tlvName;
    v2->super._tlvName = @"Payload Ordered Index";
  }

  return v3;
}

- (UARPMetaDataDevicePayloadOrderedIndex)initWithPropertyListValue:(id)value relativeURL:(id)l
{
  valueCopy = value;
  v6 = [(UARPMetaDataDevicePayloadOrderedIndex *)self init];
  v7 = v6;
  if (!v6)
  {
    goto LABEL_4;
  }

  v11.receiver = v6;
  v11.super_class = UARPMetaDataDevicePayloadOrderedIndex;
  v8 = [(UARPMetaData *)&v11 numberFromPlistValue:valueCopy];
  v9 = v8;
  if (v8)
  {
    v7->_payloadOrderedIndex = [(UARPMetaDataDevicePayloadOrderedIndex *)v8 unsignedShortValue];

LABEL_4:
    v9 = v7;
  }

  return v9;
}

- (UARPMetaDataDevicePayloadOrderedIndex)initWithLength:(unint64_t)length value:(void *)value
{
  v6 = [(UARPMetaDataDevicePayloadOrderedIndex *)self init];
  v7 = v6;
  if (!v6)
  {
    goto LABEL_4;
  }

  v11.receiver = v6;
  v11.super_class = UARPMetaDataDevicePayloadOrderedIndex;
  v8 = [(UARPMetaData *)&v11 numberWithLength:length value:value];
  v9 = v8;
  if (v8)
  {
    v7->_payloadOrderedIndex = [(UARPMetaDataDevicePayloadOrderedIndex *)v8 unsignedShortValue];

LABEL_4:
    v9 = v7;
  }

  return v9;
}

- (id)tlvValue
{
  v4.receiver = self;
  v4.super_class = UARPMetaDataDevicePayloadOrderedIndex;
  v2 = [(UARPMetaData *)&v4 tlvValueWithUInt16:[(UARPMetaDataDevicePayloadOrderedIndex *)self payloadOrderedIndex]];

  return v2;
}

- (id)description
{
  tlvName = [(UARPMetaData *)self tlvName];
  v4 = [NSString stringWithFormat:@"<%@: %u>", tlvName, [(UARPMetaDataDevicePayloadOrderedIndex *)self payloadOrderedIndex]];

  return v4;
}

@end