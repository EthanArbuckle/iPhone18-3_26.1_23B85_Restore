@interface UARPMetaDataPersonalizationManifestPrefix
- (UARPMetaDataPersonalizationManifestPrefix)init;
- (UARPMetaDataPersonalizationManifestPrefix)initWithLength:(unint64_t)length value:(void *)value;
- (UARPMetaDataPersonalizationManifestPrefix)initWithPropertyListValue:(id)value relativeURL:(id)l;
- (id)description;
- (id)tlvValue;
@end

@implementation UARPMetaDataPersonalizationManifestPrefix

- (UARPMetaDataPersonalizationManifestPrefix)init
{
  v6.receiver = self;
  v6.super_class = UARPMetaDataPersonalizationManifestPrefix;
  v2 = [(UARPMetaData *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->super._tlvType = -2001563389;
    tlvName = v2->super._tlvName;
    v2->super._tlvName = @"Personalization Manifest Prefix";
  }

  return v3;
}

- (UARPMetaDataPersonalizationManifestPrefix)initWithPropertyListValue:(id)value relativeURL:(id)l
{
  valueCopy = value;
  v6 = [(UARPMetaDataPersonalizationManifestPrefix *)self init];
  v7 = v6;
  if (v6)
  {
    v12.receiver = v6;
    v12.super_class = UARPMetaDataPersonalizationManifestPrefix;
    v8 = [(UARPMetaData *)&v12 stringFromPlistValue:valueCopy];
    ticketPrefix = v7->_ticketPrefix;
    v7->_ticketPrefix = v8;

    v7->super._tlvLength = [(NSString *)v7->_ticketPrefix length];
  }

  if (v7->_ticketPrefix)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (UARPMetaDataPersonalizationManifestPrefix)initWithLength:(unint64_t)length value:(void *)value
{
  v6 = [(UARPMetaDataPersonalizationManifestPrefix *)self init];
  if (v6)
  {
    v7 = [[NSString alloc] initWithBytes:value length:length encoding:4];
    ticketPrefix = v6->_ticketPrefix;
    v6->_ticketPrefix = v7;

    v6->super._tlvLength = [(NSString *)v6->_ticketPrefix length];
  }

  return v6;
}

- (id)tlvValue
{
  ticketPrefix = [(UARPMetaDataPersonalizationManifestPrefix *)self ticketPrefix];
  v6.receiver = self;
  v6.super_class = UARPMetaDataPersonalizationManifestPrefix;
  v4 = [(UARPMetaData *)&v6 tlvValueWithString:ticketPrefix];

  return v4;
}

- (id)description
{
  tlvName = [(UARPMetaData *)self tlvName];
  ticketPrefix = [(UARPMetaDataPersonalizationManifestPrefix *)self ticketPrefix];
  v5 = [NSString stringWithFormat:@"<%@: %@>", tlvName, ticketPrefix];

  return v5;
}

@end