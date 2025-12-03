@interface UARPMetaDataComposeMetaDataHashAlgorithm
- (UARPMetaDataComposeMetaDataHashAlgorithm)init;
- (UARPMetaDataComposeMetaDataHashAlgorithm)initWithLength:(unint64_t)length value:(void *)value;
- (UARPMetaDataComposeMetaDataHashAlgorithm)initWithPropertyListValue:(id)value relativeURL:(id)l;
- (id)description;
- (id)tlvValue;
@end

@implementation UARPMetaDataComposeMetaDataHashAlgorithm

- (UARPMetaDataComposeMetaDataHashAlgorithm)init
{
  v6.receiver = self;
  v6.super_class = UARPMetaDataComposeMetaDataHashAlgorithm;
  v2 = [(UARPMetaData *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->super._tlvType = -1128766717;
    tlvName = v2->super._tlvName;
    v2->super._tlvName = @"Compose MetaData Hash Algorithm";
  }

  return v3;
}

- (UARPMetaDataComposeMetaDataHashAlgorithm)initWithPropertyListValue:(id)value relativeURL:(id)l
{
  valueCopy = value;
  v6 = [(UARPMetaDataComposeMetaDataHashAlgorithm *)self init];
  v7 = v6;
  if (v6)
  {
    v12.receiver = v6;
    v12.super_class = UARPMetaDataComposeMetaDataHashAlgorithm;
    v8 = [(UARPMetaData *)&v12 stringFromPlistValue:valueCopy];
    algorithm = v7->_algorithm;
    v7->_algorithm = v8;

    v7->super._tlvLength = [(NSString *)v7->_algorithm length];
  }

  if (v7->_algorithm)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (UARPMetaDataComposeMetaDataHashAlgorithm)initWithLength:(unint64_t)length value:(void *)value
{
  v6 = [(UARPMetaDataComposeMetaDataHashAlgorithm *)self init];
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
  algorithm = [(UARPMetaDataComposeMetaDataHashAlgorithm *)self algorithm];
  v6.receiver = self;
  v6.super_class = UARPMetaDataComposeMetaDataHashAlgorithm;
  v4 = [(UARPMetaData *)&v6 tlvValueWithString:algorithm];

  return v4;
}

- (id)description
{
  tlvName = [(UARPMetaData *)self tlvName];
  algorithm = [(UARPMetaDataComposeMetaDataHashAlgorithm *)self algorithm];
  v5 = [NSString stringWithFormat:@"<%@: %@>", tlvName, algorithm];

  return v5;
}

@end