@interface UARPMetaDataPersonalizedManifest
- (UARPMetaDataPersonalizedManifest)init;
- (UARPMetaDataPersonalizedManifest)initWithLength:(unint64_t)length value:(void *)value;
- (UARPMetaDataPersonalizedManifest)initWithPropertyListValue:(id)value relativeURL:(id)l;
- (id)description;
@end

@implementation UARPMetaDataPersonalizedManifest

- (UARPMetaDataPersonalizedManifest)init
{
  v6.receiver = self;
  v6.super_class = UARPMetaDataPersonalizedManifest;
  v2 = [(UARPMetaData *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->super._tlvType = -2001563344;
    tlvName = v2->super._tlvName;
    v2->super._tlvName = @"Personalized Manifest";
  }

  return v3;
}

- (UARPMetaDataPersonalizedManifest)initWithPropertyListValue:(id)value relativeURL:(id)l
{
  valueCopy = value;
  v6 = [(UARPMetaDataPersonalizedManifest *)self init];
  v7 = v6;
  if (v6)
  {
    v12.receiver = v6;
    v12.super_class = UARPMetaDataPersonalizedManifest;
    v8 = [(UARPMetaData *)&v12 dataFromPlistValue:valueCopy];
    manifest = v7->_manifest;
    v7->_manifest = v8;

    v7->super._tlvLength = [(NSData *)v7->_manifest length];
  }

  if (v7->_manifest)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (UARPMetaDataPersonalizedManifest)initWithLength:(unint64_t)length value:(void *)value
{
  v6 = [(UARPMetaDataPersonalizedManifest *)self init];
  if (v6)
  {
    v7 = [[NSData alloc] initWithBytes:value length:length];
    manifest = v6->_manifest;
    v6->_manifest = v7;

    v6->super._tlvLength = [(NSData *)v6->_manifest length];
  }

  return v6;
}

- (id)description
{
  tlvName = [(UARPMetaData *)self tlvName];
  manifest = [(UARPMetaDataPersonalizedManifest *)self manifest];
  v5 = [NSString stringWithFormat:@"<%@: %@>", tlvName, manifest];

  return v5;
}

@end