@interface UARPMetaDataPersonalizationManifestSuffix
- (UARPMetaDataPersonalizationManifestSuffix)init;
- (UARPMetaDataPersonalizationManifestSuffix)initWithLength:(unint64_t)a3 value:(void *)a4;
- (UARPMetaDataPersonalizationManifestSuffix)initWithPropertyListValue:(id)a3 relativeURL:(id)a4;
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

- (UARPMetaDataPersonalizationManifestSuffix)initWithPropertyListValue:(id)a3 relativeURL:(id)a4
{
  v5 = a3;
  v6 = [(UARPMetaDataPersonalizationManifestSuffix *)self init];
  v7 = v6;
  if (v6)
  {
    v12.receiver = v6;
    v12.super_class = UARPMetaDataPersonalizationManifestSuffix;
    v8 = [(UARPMetaData *)&v12 stringFromPlistValue:v5];
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

- (UARPMetaDataPersonalizationManifestSuffix)initWithLength:(unint64_t)a3 value:(void *)a4
{
  v6 = [(UARPMetaDataPersonalizationManifestSuffix *)self init];
  if (v6)
  {
    v7 = [[NSString alloc] initWithBytes:a4 length:a3 encoding:4];
    manifestSuffix = v6->_manifestSuffix;
    v6->_manifestSuffix = v7;

    v6->super._tlvLength = [(NSString *)v6->_manifestSuffix length];
  }

  return v6;
}

- (id)tlvValue
{
  v3 = [(UARPMetaDataPersonalizationManifestSuffix *)self manifestSuffix];
  v6.receiver = self;
  v6.super_class = UARPMetaDataPersonalizationManifestSuffix;
  v4 = [(UARPMetaData *)&v6 tlvValueWithString:v3];

  return v4;
}

- (id)description
{
  v3 = [(UARPMetaData *)self tlvName];
  v4 = [(UARPMetaDataPersonalizationManifestSuffix *)self manifestSuffix];
  v5 = [NSString stringWithFormat:@"<%@: %@>", v3, v4];

  return v5;
}

@end