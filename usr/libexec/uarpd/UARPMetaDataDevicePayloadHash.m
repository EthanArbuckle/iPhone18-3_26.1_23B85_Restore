@interface UARPMetaDataDevicePayloadHash
- (UARPMetaDataDevicePayloadHash)init;
- (UARPMetaDataDevicePayloadHash)initWithLength:(unint64_t)a3 value:(void *)a4;
- (UARPMetaDataDevicePayloadHash)initWithPayloadHash:(id)a3;
- (UARPMetaDataDevicePayloadHash)initWithPropertyListValue:(id)a3 relativeURL:(id)a4;
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

- (UARPMetaDataDevicePayloadHash)initWithPropertyListValue:(id)a3 relativeURL:(id)a4
{
  v5 = a3;
  v6 = [(UARPMetaDataDevicePayloadHash *)self init];
  v7 = v6;
  if (v6)
  {
    v12.receiver = v6;
    v12.super_class = UARPMetaDataDevicePayloadHash;
    v8 = [(UARPMetaData *)&v12 dataFromPlistValue:v5];
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

- (UARPMetaDataDevicePayloadHash)initWithLength:(unint64_t)a3 value:(void *)a4
{
  v6 = [(UARPMetaDataDevicePayloadHash *)self init];
  if (v6)
  {
    v7 = [[NSData alloc] initWithBytes:a4 length:a3];
    payloadHash = v6->_payloadHash;
    v6->_payloadHash = v7;

    v6->super._tlvLength = [(NSData *)v6->_payloadHash length];
  }

  return v6;
}

- (UARPMetaDataDevicePayloadHash)initWithPayloadHash:(id)a3
{
  v4 = a3;
  v5 = [v4 length];
  v6 = [v4 bytes];

  return [(UARPMetaDataDevicePayloadHash *)self initWithLength:v5 value:v6];
}

- (id)description
{
  v3 = [(UARPMetaData *)self tlvName];
  v4 = [(UARPMetaDataDevicePayloadHash *)self payloadHash];
  v5 = [NSString stringWithFormat:@"<%@: %@>", v3, v4];

  return v5;
}

@end