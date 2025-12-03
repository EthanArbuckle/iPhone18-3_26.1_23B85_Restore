@interface UARPMetaDataPersonalizationECIDData
- (UARPMetaDataPersonalizationECIDData)init;
- (UARPMetaDataPersonalizationECIDData)initWithLength:(unint64_t)length value:(void *)value;
- (UARPMetaDataPersonalizationECIDData)initWithPropertyListValue:(id)value relativeURL:(id)l;
- (id)description;
@end

@implementation UARPMetaDataPersonalizationECIDData

- (UARPMetaDataPersonalizationECIDData)init
{
  v6.receiver = self;
  v6.super_class = UARPMetaDataPersonalizationECIDData;
  v2 = [(UARPMetaData *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->super._tlvType = -2001563339;
    tlvName = v2->super._tlvName;
    v2->super._tlvName = @"Personalization ECID Data";
  }

  return v3;
}

- (UARPMetaDataPersonalizationECIDData)initWithPropertyListValue:(id)value relativeURL:(id)l
{
  valueCopy = value;
  v6 = [(UARPMetaDataPersonalizationECIDData *)self init];
  v7 = v6;
  if (v6)
  {
    v12.receiver = v6;
    v12.super_class = UARPMetaDataPersonalizationECIDData;
    v8 = [(UARPMetaData *)&v12 dataFromPlistValue:valueCopy];
    ecID = v7->_ecID;
    v7->_ecID = v8;

    v7->super._tlvLength = [(NSData *)v7->_ecID length];
  }

  if (v7->_ecID)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (UARPMetaDataPersonalizationECIDData)initWithLength:(unint64_t)length value:(void *)value
{
  v6 = [(UARPMetaDataPersonalizationECIDData *)self init];
  if (v6)
  {
    v7 = [[NSData alloc] initWithBytes:value length:length];
    ecID = v6->_ecID;
    v6->_ecID = v7;

    v6->super._tlvLength = [(NSData *)v6->_ecID length];
  }

  return v6;
}

- (id)description
{
  tlvName = [(UARPMetaData *)self tlvName];
  ecID = [(UARPMetaDataPersonalizationECIDData *)self ecID];
  v5 = [NSString stringWithFormat:@"<%@: %@>", tlvName, ecID];

  return v5;
}

@end