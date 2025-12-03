@interface UARPMetaDataPersonalizationManifestSuffix
- (UARPMetaDataPersonalizationManifestSuffix)init;
- (UARPMetaDataPersonalizationManifestSuffix)initWithLength:(unint64_t)length value:(void *)value;
- (UARPMetaDataPersonalizationManifestSuffix)initWithPropertyListValue:(id)value relativeURL:(id)l;
- (id)description;
- (id)tlvValue;
@end

@implementation UARPMetaDataPersonalizationManifestSuffix

- (UARPMetaDataPersonalizationManifestSuffix)init
{
  v6.receiver = self;
  v6.super_class = UARPMetaDataPersonalizationManifestSuffix;
  v2 = [(UARPMetaData *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->super._tlvType = -2001563340;
    tlvName = v2->super._tlvName;
    v2->super._tlvName = @"Personalization Manifest Suffix";
  }

  return v3;
}

- (UARPMetaDataPersonalizationManifestSuffix)initWithPropertyListValue:(id)value relativeURL:(id)l
{
  valueCopy = value;
  v6 = [(UARPMetaDataPersonalizationManifestSuffix *)self init];
  v7 = v6;
  if (v6)
  {
    v12.receiver = v6;
    v12.super_class = UARPMetaDataPersonalizationManifestSuffix;
    v8 = [(UARPMetaData *)&v12 stringFromPlistValue:valueCopy];
    manifestSuffix = v7->_manifestSuffix;
    v7->_manifestSuffix = v8;

    v7->super._tlvLength = [(NSString *)v7->_manifestSuffix length];
  }

  if (v7->_manifestSuffix)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (UARPMetaDataPersonalizationManifestSuffix)initWithLength:(unint64_t)length value:(void *)value
{
  v6 = [(UARPMetaDataPersonalizationManifestSuffix *)self init];
  if (v6)
  {
    v7 = [[NSString alloc] initWithBytes:value length:length encoding:4];
    manifestSuffix = v6->_manifestSuffix;
    v6->_manifestSuffix = v7;

    v6->super._tlvLength = [(NSString *)v6->_manifestSuffix length];
  }

  return v6;
}

- (id)tlvValue
{
  manifestSuffix = [(UARPMetaDataPersonalizationManifestSuffix *)self manifestSuffix];
  v6.receiver = self;
  v6.super_class = UARPMetaDataPersonalizationManifestSuffix;
  v4 = [(UARPMetaData *)&v6 tlvValueWithString:manifestSuffix];

  return v4;
}

- (id)description
{
  tlvName = [(UARPMetaData *)self tlvName];
  manifestSuffix = [(UARPMetaDataPersonalizationManifestSuffix *)self manifestSuffix];
  v5 = [NSString stringWithFormat:@"<%@: %@>", tlvName, manifestSuffix];

  return v5;
}

@end