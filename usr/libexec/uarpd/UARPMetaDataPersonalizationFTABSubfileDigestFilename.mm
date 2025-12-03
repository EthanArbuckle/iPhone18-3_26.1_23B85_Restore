@interface UARPMetaDataPersonalizationFTABSubfileDigestFilename
- (UARPMetaDataPersonalizationFTABSubfileDigestFilename)init;
- (UARPMetaDataPersonalizationFTABSubfileDigestFilename)initWithLength:(unint64_t)length value:(void *)value;
- (UARPMetaDataPersonalizationFTABSubfileDigestFilename)initWithPropertyListValue:(id)value relativeURL:(id)l;
- (id)description;
- (id)tlvValue;
@end

@implementation UARPMetaDataPersonalizationFTABSubfileDigestFilename

- (UARPMetaDataPersonalizationFTABSubfileDigestFilename)init
{
  v6.receiver = self;
  v6.super_class = UARPMetaDataPersonalizationFTABSubfileDigestFilename;
  v2 = [(UARPMetaData *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->super._tlvType = -2001563338;
    tlvName = v2->super._tlvName;
    v2->super._tlvName = @"Personalization FTAB Payload Digest Filename";
  }

  return v3;
}

- (UARPMetaDataPersonalizationFTABSubfileDigestFilename)initWithPropertyListValue:(id)value relativeURL:(id)l
{
  valueCopy = value;
  v6 = [(UARPMetaDataPersonalizationFTABSubfileDigestFilename *)self init];
  v7 = v6;
  if (v6)
  {
    v12.receiver = v6;
    v12.super_class = UARPMetaDataPersonalizationFTABSubfileDigestFilename;
    v8 = [(UARPMetaData *)&v12 stringFromPlistValue:valueCopy];
    filename = v7->_filename;
    v7->_filename = v8;

    v7->super._tlvLength = [(NSString *)v7->_filename length];
  }

  if (v7->_filename)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (UARPMetaDataPersonalizationFTABSubfileDigestFilename)initWithLength:(unint64_t)length value:(void *)value
{
  v6 = [(UARPMetaDataPersonalizationFTABSubfileDigestFilename *)self init];
  if (v6)
  {
    v7 = [[NSString alloc] initWithBytes:value length:length encoding:4];
    filename = v6->_filename;
    v6->_filename = v7;

    v6->super._tlvLength = [(NSString *)v6->_filename length];
  }

  return v6;
}

- (id)tlvValue
{
  filename = [(UARPMetaDataPersonalizationFTABSubfileDigestFilename *)self filename];
  v6.receiver = self;
  v6.super_class = UARPMetaDataPersonalizationFTABSubfileDigestFilename;
  v4 = [(UARPMetaData *)&v6 tlvValueWithString:filename];

  return v4;
}

- (id)description
{
  tlvName = [(UARPMetaData *)self tlvName];
  filename = [(UARPMetaDataPersonalizationFTABSubfileDigestFilename *)self filename];
  v5 = [NSString stringWithFormat:@"<%@: %@>", tlvName, filename];

  return v5;
}

@end