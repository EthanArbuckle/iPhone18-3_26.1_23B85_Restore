@interface UARPMetaDataInformationAssetIdentifier
- (UARPMetaDataInformationAssetIdentifier)init;
- (UARPMetaDataInformationAssetIdentifier)initWithLength:(unint64_t)a3 value:(void *)a4;
- (UARPMetaDataInformationAssetIdentifier)initWithPropertyListValue:(id)a3 relativeURL:(id)a4;
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

- (UARPMetaDataInformationAssetIdentifier)initWithPropertyListValue:(id)a3 relativeURL:(id)a4
{
  v5 = a3;
  v6 = [(UARPMetaDataInformationAssetIdentifier *)self init];
  v7 = v6;
  if (v6)
  {
    v12.receiver = v6;
    v12.super_class = UARPMetaDataInformationAssetIdentifier;
    v8 = [(UARPMetaData *)&v12 stringFromPlistValue:v5];
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

- (UARPMetaDataInformationAssetIdentifier)initWithLength:(unint64_t)a3 value:(void *)a4
{
  v6 = [(UARPMetaDataInformationAssetIdentifier *)self init];
  if (v6)
  {
    v7 = [[NSString alloc] initWithBytes:a4 length:a3 encoding:4];
    assetIdentifier = v6->_assetIdentifier;
    v6->_assetIdentifier = v7;

    v6->super._tlvLength = [(NSString *)v6->_assetIdentifier length];
  }

  return v6;
}

- (id)tlvValue
{
  v3 = [(UARPMetaDataInformationAssetIdentifier *)self assetIdentifier];
  v6.receiver = self;
  v6.super_class = UARPMetaDataInformationAssetIdentifier;
  v4 = [(UARPMetaData *)&v6 tlvValueWithString:v3];

  return v4;
}

- (id)description
{
  v3 = [(UARPMetaData *)self tlvName];
  v4 = [(UARPMetaDataInformationAssetIdentifier *)self assetIdentifier];
  v5 = [NSString stringWithFormat:@"<%@: %@>", v3, v4];

  return v5;
}

@end