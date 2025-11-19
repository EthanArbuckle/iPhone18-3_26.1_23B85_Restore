@interface UARPMetaDataComposePayloadHashAlgorithm
- (UARPMetaDataComposePayloadHashAlgorithm)init;
- (UARPMetaDataComposePayloadHashAlgorithm)initWithLength:(unint64_t)a3 value:(void *)a4;
- (UARPMetaDataComposePayloadHashAlgorithm)initWithPropertyListValue:(id)a3 relativeURL:(id)a4;
- (id)description;
- (id)tlvValue;
@end

@implementation UARPMetaDataComposePayloadHashAlgorithm

- (UARPMetaDataComposePayloadHashAlgorithm)init
{
  v6.receiver = self;
  v6.super_class = UARPMetaDataComposePayloadHashAlgorithm;
  v2 = [(UARPMetaData *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->super._tlvType = -1128766720;
    tlvName = v2->super._tlvName;
    v2->super._tlvName = @"Compose Payload Hash Algorithm";

    v3->_hashAlgorithm = 0;
  }

  return v3;
}

- (UARPMetaDataComposePayloadHashAlgorithm)initWithPropertyListValue:(id)a3 relativeURL:(id)a4
{
  v5 = a3;
  v6 = [(UARPMetaDataComposePayloadHashAlgorithm *)self init];
  v7 = v6;
  if (v6)
  {
    v13.receiver = v6;
    v13.super_class = UARPMetaDataComposePayloadHashAlgorithm;
    v8 = [(UARPMetaData *)&v13 stringFromPlistValue:v5];
    algorithm = v7->_algorithm;
    v7->_algorithm = v8;

    v7->super._tlvLength = [(NSString *)v7->_algorithm length];
  }

  v10 = v7->_algorithm;
  if (v10)
  {
    v7->_hashAlgorithm = UARPLayer3HashAlgorithmValue(v10);
    v11 = v7;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (UARPMetaDataComposePayloadHashAlgorithm)initWithLength:(unint64_t)a3 value:(void *)a4
{
  v6 = [(UARPMetaDataComposePayloadHashAlgorithm *)self init];
  if (v6)
  {
    v7 = [[NSString alloc] initWithBytes:a4 length:a3 encoding:4];
    algorithm = v6->_algorithm;
    v6->_algorithm = v7;

    v6->super._tlvLength = [(NSString *)v6->_algorithm length];
  }

  return v6;
}

- (id)tlvValue
{
  v3 = [(UARPMetaDataComposePayloadHashAlgorithm *)self algorithm];
  v6.receiver = self;
  v6.super_class = UARPMetaDataComposePayloadHashAlgorithm;
  v4 = [(UARPMetaData *)&v6 tlvValueWithString:v3];

  return v4;
}

- (id)description
{
  v3 = [(UARPMetaData *)self tlvName];
  v4 = [(UARPMetaDataComposePayloadHashAlgorithm *)self algorithm];
  v5 = [NSString stringWithFormat:@"<%@: %@>", v3, v4];

  return v5;
}

@end