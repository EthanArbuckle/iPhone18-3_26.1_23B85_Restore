@interface UARPMetaDataInformationFriendlyName
- (UARPMetaDataInformationFriendlyName)init;
- (UARPMetaDataInformationFriendlyName)initWithLength:(unint64_t)length value:(void *)value;
- (UARPMetaDataInformationFriendlyName)initWithPropertyListValue:(id)value relativeURL:(id)l;
- (id)description;
- (id)tlvValue;
@end

@implementation UARPMetaDataInformationFriendlyName

- (UARPMetaDataInformationFriendlyName)init
{
  v6.receiver = self;
  v6.super_class = UARPMetaDataInformationFriendlyName;
  v2 = [(UARPMetaData *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->super._tlvType = 9;
    tlvName = v2->super._tlvName;
    v2->super._tlvName = @"Friendly Name";
  }

  return v3;
}

- (UARPMetaDataInformationFriendlyName)initWithPropertyListValue:(id)value relativeURL:(id)l
{
  valueCopy = value;
  v6 = [(UARPMetaDataInformationFriendlyName *)self init];
  v7 = v6;
  if (v6)
  {
    v12.receiver = v6;
    v12.super_class = UARPMetaDataInformationFriendlyName;
    v8 = [(UARPMetaData *)&v12 stringFromPlistValue:valueCopy];
    friendlyName = v7->_friendlyName;
    v7->_friendlyName = v8;

    v7->super._tlvLength = [(NSString *)v7->_friendlyName length];
  }

  if (v7->_friendlyName)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (UARPMetaDataInformationFriendlyName)initWithLength:(unint64_t)length value:(void *)value
{
  v6 = [(UARPMetaDataInformationFriendlyName *)self init];
  if (v6)
  {
    v7 = [[NSString alloc] initWithBytes:value length:length encoding:4];
    friendlyName = v6->_friendlyName;
    v6->_friendlyName = v7;

    v6->super._tlvLength = [(NSString *)v6->_friendlyName length];
  }

  return v6;
}

- (id)tlvValue
{
  friendlyName = [(UARPMetaDataInformationFriendlyName *)self friendlyName];
  v6.receiver = self;
  v6.super_class = UARPMetaDataInformationFriendlyName;
  v4 = [(UARPMetaData *)&v6 tlvValueWithString:friendlyName];

  return v4;
}

- (id)description
{
  tlvName = [(UARPMetaData *)self tlvName];
  friendlyName = [(UARPMetaDataInformationFriendlyName *)self friendlyName];
  v5 = [NSString stringWithFormat:@"<%@: %@>", tlvName, friendlyName];

  return v5;
}

@end