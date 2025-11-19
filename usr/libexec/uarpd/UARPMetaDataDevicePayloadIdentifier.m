@interface UARPMetaDataDevicePayloadIdentifier
- (UARPMetaDataDevicePayloadIdentifier)init;
- (UARPMetaDataDevicePayloadIdentifier)initWithLength:(unint64_t)a3 value:(void *)a4;
- (UARPMetaDataDevicePayloadIdentifier)initWithPropertyListValue:(id)a3 relativeURL:(id)a4;
- (id)description;
- (id)tlvValue;
@end

@implementation UARPMetaDataDevicePayloadIdentifier

- (UARPMetaDataDevicePayloadIdentifier)init
{
  v6.receiver = self;
  v6.super_class = UARPMetaDataDevicePayloadIdentifier;
  v2 = [(UARPMetaData *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->super._tlvType = -858619619;
    v2->super._tlvLength = 8;
    tlvName = v2->super._tlvName;
    v2->super._tlvName = @"Payload Identifier";
  }

  return v3;
}

- (UARPMetaDataDevicePayloadIdentifier)initWithPropertyListValue:(id)a3 relativeURL:(id)a4
{
  v5 = a3;
  v6 = [(UARPMetaDataDevicePayloadIdentifier *)self init];
  if (v6)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v5 unsignedLongLongValue];
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v8 = 0;
        goto LABEL_8;
      }

      v7 = [v5 integerValue];
    }

    v6->_payloadIdentifier = v7;
  }

  v8 = v6;
LABEL_8:

  return v8;
}

- (UARPMetaDataDevicePayloadIdentifier)initWithLength:(unint64_t)a3 value:(void *)a4
{
  v6 = [(UARPMetaDataDevicePayloadIdentifier *)self init];
  v7 = v6;
  if (!v6)
  {
    goto LABEL_4;
  }

  v11.receiver = v6;
  v11.super_class = UARPMetaDataDevicePayloadIdentifier;
  v8 = [(UARPMetaData *)&v11 numberWithLength:a3 value:a4];
  v9 = v8;
  if (v8)
  {
    v7->_payloadIdentifier = [(UARPMetaDataDevicePayloadIdentifier *)v8 unsignedLongValue];

LABEL_4:
    v9 = v7;
  }

  return v9;
}

- (id)tlvValue
{
  v4.receiver = self;
  v4.super_class = UARPMetaDataDevicePayloadIdentifier;
  v2 = [(UARPMetaData *)&v4 tlvValueWithUInt64:[(UARPMetaDataDevicePayloadIdentifier *)self payloadIdentifier]];

  return v2;
}

- (id)description
{
  v3 = [(UARPMetaData *)self tlvName];
  v4 = [NSString stringWithFormat:@"<%@: %llu>", v3, [(UARPMetaDataDevicePayloadIdentifier *)self payloadIdentifier]];

  return v4;
}

@end