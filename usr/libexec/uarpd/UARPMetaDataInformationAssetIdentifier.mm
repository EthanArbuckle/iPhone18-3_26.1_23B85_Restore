@interface UARPMetaDataInformationAssetIdentifier
- (UARPMetaDataInformationAssetIdentifier)init;
- (UARPMetaDataInformationAssetIdentifier)initWithLength:(unint64_t)length value:(void *)value;
- (UARPMetaDataInformationAssetIdentifier)initWithPropertyListValue:(id)value relativeURL:(id)l;
- (id)description;
- (id)tlvValue;
@end

@implementation UARPMetaDataInformationAssetIdentifier

- (UARPMetaDataInformationAssetIdentifier)init
{
  v6.receiver = self;
  v6.super_class = UARPMetaDataInformationAssetIdentifier;
  v2 = [(UARPMetaData *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->super._tlvType = 13;
    tlvName = v2->super._tlvName;
    v2->super._tlvName = @"Asset Identifier";
  }

  return v3;
}

- (UARPMetaDataInformationAssetIdentifier)initWithPropertyListValue:(id)value relativeURL:(id)l
{
  valueCopy = value;
  v6 = [(UARPMetaDataInformationAssetIdentifier *)self init];
  v7 = v6;
  if (v6)
  {
    v12.receiver = v6;
    v12.super_class = UARPMetaDataInformationAssetIdentifier;
    v8 = [(UARPMetaData *)&v12 stringFromPlistValue:valueCopy];
    assetIdentifier = v7->_assetIdentifier;
    v7->_assetIdentifier = v8;

    v7->super._tlvLength = [(NSString *)v7->_assetIdentifier length];
  }

  if (v7->_assetIdentifier)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (UARPMetaDataInformationAssetIdentifier)initWithLength:(unint64_t)length value:(void *)value
{
  v6 = [(UARPMetaDataInformationAssetIdentifier *)self init];
  if (v6)
  {
    v7 = [[NSString alloc] initWithBytes:value length:length encoding:4];
    assetIdentifier = v6->_assetIdentifier;
    v6->_assetIdentifier = v7;

    v6->super._tlvLength = [(NSString *)v6->_assetIdentifier length];
  }

  return v6;
}

- (id)tlvValue
{
  assetIdentifier = [(UARPMetaDataInformationAssetIdentifier *)self assetIdentifier];
  v6.receiver = self;
  v6.super_class = UARPMetaDataInformationAssetIdentifier;
  v4 = [(UARPMetaData *)&v6 tlvValueWithString:assetIdentifier];

  return v4;
}

- (id)description
{
  tlvName = [(UARPMetaData *)self tlvName];
  assetIdentifier = [(UARPMetaDataInformationAssetIdentifier *)self assetIdentifier];
  v5 = [NSString stringWithFormat:@"<%@: %@>", tlvName, assetIdentifier];

  return v5;
}

@end