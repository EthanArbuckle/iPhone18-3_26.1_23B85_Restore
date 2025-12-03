@interface UARPMetaDataDevicePayloadHash
- (UARPMetaDataDevicePayloadHash)init;
- (UARPMetaDataDevicePayloadHash)initWithLength:(unint64_t)length value:(void *)value;
- (UARPMetaDataDevicePayloadHash)initWithPayloadHash:(id)hash;
- (UARPMetaDataDevicePayloadHash)initWithPropertyListValue:(id)value relativeURL:(id)l;
- (id)description;
@end

@implementation UARPMetaDataDevicePayloadHash

- (UARPMetaDataDevicePayloadHash)init
{
  v6.receiver = self;
  v6.super_class = UARPMetaDataDevicePayloadHash;
  v2 = [(UARPMetaData *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->super._tlvType = -858619641;
    tlvName = v2->super._tlvName;
    v2->super._tlvName = @"Payload Hash";
  }

  return v3;
}

- (UARPMetaDataDevicePayloadHash)initWithPropertyListValue:(id)value relativeURL:(id)l
{
  valueCopy = value;
  v6 = [(UARPMetaDataDevicePayloadHash *)self init];
  v7 = v6;
  if (v6)
  {
    v12.receiver = v6;
    v12.super_class = UARPMetaDataDevicePayloadHash;
    v8 = [(UARPMetaData *)&v12 dataFromPlistValue:valueCopy];
    payloadHash = v7->_payloadHash;
    v7->_payloadHash = v8;

    v7->super._tlvLength = [(NSData *)v7->_payloadHash length];
  }

  if (v7->_payloadHash)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (UARPMetaDataDevicePayloadHash)initWithLength:(unint64_t)length value:(void *)value
{
  v6 = [(UARPMetaDataDevicePayloadHash *)self init];
  if (v6)
  {
    v7 = [[NSData alloc] initWithBytes:value length:length];
    payloadHash = v6->_payloadHash;
    v6->_payloadHash = v7;

    v6->super._tlvLength = [(NSData *)v6->_payloadHash length];
  }

  return v6;
}

- (UARPMetaDataDevicePayloadHash)initWithPayloadHash:(id)hash
{
  hashCopy = hash;
  v5 = [hashCopy length];
  bytes = [hashCopy bytes];

  return [(UARPMetaDataDevicePayloadHash *)self initWithLength:v5 value:bytes];
}

- (id)description
{
  tlvName = [(UARPMetaData *)self tlvName];
  payloadHash = [(UARPMetaDataDevicePayloadHash *)self payloadHash];
  v5 = [NSString stringWithFormat:@"<%@: %@>", tlvName, payloadHash];

  return v5;
}

@end