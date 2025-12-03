@interface UARPMetaDataPersonalizationFTABSubfileDigest
- (UARPMetaDataPersonalizationFTABSubfileDigest)init;
- (UARPMetaDataPersonalizationFTABSubfileDigest)initWithLength:(unint64_t)length value:(void *)value;
- (UARPMetaDataPersonalizationFTABSubfileDigest)initWithPropertyListValue:(id)value relativeURL:(id)l;
- (id)description;
@end

@implementation UARPMetaDataPersonalizationFTABSubfileDigest

- (UARPMetaDataPersonalizationFTABSubfileDigest)init
{
  v6.receiver = self;
  v6.super_class = UARPMetaDataPersonalizationFTABSubfileDigest;
  v2 = [(UARPMetaData *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->super._tlvType = -2001563373;
    tlvName = v2->super._tlvName;
    v2->super._tlvName = @"Personalization FTAB Payload Digest";
  }

  return v3;
}

- (UARPMetaDataPersonalizationFTABSubfileDigest)initWithPropertyListValue:(id)value relativeURL:(id)l
{
  valueCopy = value;
  v6 = [(UARPMetaDataPersonalizationFTABSubfileDigest *)self init];
  v7 = v6;
  if (v6)
  {
    v12.receiver = v6;
    v12.super_class = UARPMetaDataPersonalizationFTABSubfileDigest;
    v8 = [(UARPMetaData *)&v12 dataFromPlistValue:valueCopy];
    digest = v7->_digest;
    v7->_digest = v8;

    v7->super._tlvLength = [(NSData *)v7->_digest length];
  }

  if (v7->_digest)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (UARPMetaDataPersonalizationFTABSubfileDigest)initWithLength:(unint64_t)length value:(void *)value
{
  v6 = [(UARPMetaDataPersonalizationFTABSubfileDigest *)self init];
  if (v6)
  {
    v7 = [[NSData alloc] initWithBytes:value length:length];
    digest = v6->_digest;
    v6->_digest = v7;

    v6->super._tlvLength = [(NSData *)v6->_digest length];
  }

  return v6;
}

- (id)description
{
  tlvName = [(UARPMetaData *)self tlvName];
  digest = [(UARPMetaDataPersonalizationFTABSubfileDigest *)self digest];
  v5 = [NSString stringWithFormat:@"<%@: %@>", tlvName, digest];

  return v5;
}

@end