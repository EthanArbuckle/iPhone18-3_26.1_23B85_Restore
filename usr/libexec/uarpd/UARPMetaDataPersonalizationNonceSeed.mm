@interface UARPMetaDataPersonalizationNonceSeed
- (UARPMetaDataPersonalizationNonceSeed)init;
- (UARPMetaDataPersonalizationNonceSeed)initWithLength:(unint64_t)length value:(void *)value;
- (UARPMetaDataPersonalizationNonceSeed)initWithPropertyListValue:(id)value relativeURL:(id)l;
- (id)description;
@end

@implementation UARPMetaDataPersonalizationNonceSeed

- (UARPMetaDataPersonalizationNonceSeed)init
{
  v6.receiver = self;
  v6.super_class = UARPMetaDataPersonalizationNonceSeed;
  v2 = [(UARPMetaData *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->super._tlvType = -2001563337;
    tlvName = v2->super._tlvName;
    v2->super._tlvName = @"Nonce Seed";
  }

  return v3;
}

- (UARPMetaDataPersonalizationNonceSeed)initWithPropertyListValue:(id)value relativeURL:(id)l
{
  valueCopy = value;
  v6 = [(UARPMetaDataPersonalizationNonceSeed *)self init];
  v7 = v6;
  if (v6)
  {
    v12.receiver = v6;
    v12.super_class = UARPMetaDataPersonalizationNonceSeed;
    v8 = [(UARPMetaData *)&v12 dataFromPlistValue:valueCopy];
    nonceSeed = v7->_nonceSeed;
    v7->_nonceSeed = v8;

    v7->super._tlvLength = [(NSData *)v7->_nonceSeed length];
  }

  if (v7->_nonceSeed)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (UARPMetaDataPersonalizationNonceSeed)initWithLength:(unint64_t)length value:(void *)value
{
  v6 = [(UARPMetaDataPersonalizationNonceSeed *)self init];
  if (v6)
  {
    v7 = [[NSData alloc] initWithBytes:value length:length];
    nonceSeed = v6->_nonceSeed;
    v6->_nonceSeed = v7;

    v6->super._tlvLength = [(NSData *)v6->_nonceSeed length];
  }

  return v6;
}

- (id)description
{
  tlvName = [(UARPMetaData *)self tlvName];
  nonceSeed = [(UARPMetaDataPersonalizationNonceSeed *)self nonceSeed];
  v5 = [NSString stringWithFormat:@"<%@: %@>", tlvName, nonceSeed];

  return v5;
}

@end