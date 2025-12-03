@interface UARPMetaDataComposePayloadHashAlgorithm
- (UARPMetaDataComposePayloadHashAlgorithm)init;
- (UARPMetaDataComposePayloadHashAlgorithm)initWithLength:(unint64_t)length value:(void *)value;
- (UARPMetaDataComposePayloadHashAlgorithm)initWithPropertyListValue:(id)value relativeURL:(id)l;
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

- (UARPMetaDataComposePayloadHashAlgorithm)initWithPropertyListValue:(id)value relativeURL:(id)l
{
  valueCopy = value;
  v6 = [(UARPMetaDataComposePayloadHashAlgorithm *)self init];
  v7 = v6;
  if (v6)
  {
    v13.receiver = v6;
    v13.super_class = UARPMetaDataComposePayloadHashAlgorithm;
    v8 = [(UARPMetaData *)&v13 stringFromPlistValue:valueCopy];
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

- (UARPMetaDataComposePayloadHashAlgorithm)initWithLength:(unint64_t)length value:(void *)value
{
  v6 = [(UARPMetaDataComposePayloadHashAlgorithm *)self init];
  if (v6)
  {
    v7 = [[NSString alloc] initWithBytes:value length:length encoding:4];
    algorithm = v6->_algorithm;
    v6->_algorithm = v7;

    v6->super._tlvLength = [(NSString *)v6->_algorithm length];
  }

  return v6;
}

- (id)tlvValue
{
  algorithm = [(UARPMetaDataComposePayloadHashAlgorithm *)self algorithm];
  v6.receiver = self;
  v6.super_class = UARPMetaDataComposePayloadHashAlgorithm;
  v4 = [(UARPMetaData *)&v6 tlvValueWithString:algorithm];

  return v4;
}

- (id)description
{
  tlvName = [(UARPMetaData *)self tlvName];
  algorithm = [(UARPMetaDataComposePayloadHashAlgorithm *)self algorithm];
  v5 = [NSString stringWithFormat:@"<%@: %@>", tlvName, algorithm];

  return v5;
}

@end