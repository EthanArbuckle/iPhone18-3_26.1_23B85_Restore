@interface UARPMetaDataDevicePayloadSignature
- (UARPMetaDataDevicePayloadSignature)init;
- (UARPMetaDataDevicePayloadSignature)initWithLength:(unint64_t)a3 value:(void *)a4;
- (UARPMetaDataDevicePayloadSignature)initWithPropertyListValue:(id)a3 relativeURL:(id)a4;
- (id)description;
@end

@implementation UARPMetaDataDevicePayloadSignature

- (UARPMetaDataDevicePayloadSignature)init
{
  v6.receiver = self;
  v6.super_class = UARPMetaDataDevicePayloadSignature;
  v2 = [(UARPMetaData *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->super._tlvType = -858619642;
    tlvName = v2->super._tlvName;
    v2->super._tlvName = @"Payload Signature";
  }

  return v3;
}

- (UARPMetaDataDevicePayloadSignature)initWithPropertyListValue:(id)a3 relativeURL:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(UARPMetaDataDevicePayloadSignature *)self init];
  v9 = v8;
  if (v8)
  {
    v23.receiver = v8;
    v23.super_class = UARPMetaDataDevicePayloadSignature;
    v10 = [(UARPMetaData *)&v23 dataFromPlistValue:v6];
    payloadSignature = v9->_payloadSignature;
    v9->_payloadSignature = v10;

    v12 = v9->_payloadSignature;
    if (v12)
    {
      v9->super._tlvLength = [(NSData *)v12 length];
      v13 = v9;
    }

    else
    {
      v22.receiver = v9;
      v22.super_class = UARPMetaDataDevicePayloadSignature;
      v14 = [(UARPMetaData *)&v22 stringFromPlistValue:v6];
      if (v14)
      {
        v15 = [v7 path];
        v24[0] = v15;
        v24[1] = v14;
        v16 = [NSArray arrayWithObjects:v24 count:2];
        v17 = [NSString pathWithComponents:v16];

        v18 = [NSURL fileURLWithPath:v17];
        v19 = [NSData dataWithContentsOfURL:v18];
        v20 = v9->_payloadSignature;
        v9->_payloadSignature = v19;

        v9->super._tlvLength = [(NSData *)v9->_payloadSignature length];
        v13 = v9;
      }

      else
      {
        v13 = 0;
      }
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (UARPMetaDataDevicePayloadSignature)initWithLength:(unint64_t)a3 value:(void *)a4
{
  v6 = [(UARPMetaDataDevicePayloadSignature *)self init];
  if (v6)
  {
    v7 = [[NSData alloc] initWithBytes:a4 length:a3];
    payloadSignature = v6->_payloadSignature;
    v6->_payloadSignature = v7;

    v6->super._tlvLength = [(NSData *)v6->_payloadSignature length];
  }

  return v6;
}

- (id)description
{
  v3 = [(UARPMetaData *)self tlvName];
  v4 = [(UARPMetaDataDevicePayloadSignature *)self payloadSignature];
  v5 = [NSString stringWithFormat:@"<%@: %@>", v3, v4];

  return v5;
}

@end