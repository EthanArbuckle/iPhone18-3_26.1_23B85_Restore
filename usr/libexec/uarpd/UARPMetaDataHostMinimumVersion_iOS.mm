@interface UARPMetaDataHostMinimumVersion_iOS
- (UARPMetaDataHostMinimumVersion_iOS)init;
- (UARPMetaDataHostMinimumVersion_iOS)initWithLength:(unint64_t)length value:(void *)value;
- (UARPMetaDataHostMinimumVersion_iOS)initWithPropertyListValue:(id)value relativeURL:(id)l;
- (id)description;
- (id)tlvValue;
@end

@implementation UARPMetaDataHostMinimumVersion_iOS

- (UARPMetaDataHostMinimumVersion_iOS)init
{
  v6.receiver = self;
  v6.super_class = UARPMetaDataHostMinimumVersion_iOS;
  v2 = [(UARPMetaData *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->super._tlvType = -1003827195;
    tlvName = v2->super._tlvName;
    v2->super._tlvName = @"Minimum iOS Version";
  }

  return v3;
}

- (UARPMetaDataHostMinimumVersion_iOS)initWithPropertyListValue:(id)value relativeURL:(id)l
{
  valueCopy = value;
  v6 = [(UARPMetaDataHostMinimumVersion_iOS *)self init];
  v7 = v6;
  if (v6)
  {
    v12.receiver = v6;
    v12.super_class = UARPMetaDataHostMinimumVersion_iOS;
    v8 = [(UARPMetaData *)&v12 stringFromPlistValue:valueCopy];
    osVersion = v7->_osVersion;
    v7->_osVersion = v8;

    v7->super._tlvLength = [(NSString *)v7->_osVersion length];
  }

  if (v7->_osVersion)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (UARPMetaDataHostMinimumVersion_iOS)initWithLength:(unint64_t)length value:(void *)value
{
  v6 = [(UARPMetaDataHostMinimumVersion_iOS *)self init];
  if (v6)
  {
    v7 = [[NSString alloc] initWithBytes:value length:length encoding:4];
    osVersion = v6->_osVersion;
    v6->_osVersion = v7;

    v6->super._tlvLength = [(NSString *)v6->_osVersion length];
  }

  return v6;
}

- (id)tlvValue
{
  osVersion = [(UARPMetaDataHostMinimumVersion_iOS *)self osVersion];
  v6.receiver = self;
  v6.super_class = UARPMetaDataHostMinimumVersion_iOS;
  v4 = [(UARPMetaData *)&v6 tlvValueWithString:osVersion];

  return v4;
}

- (id)description
{
  tlvName = [(UARPMetaData *)self tlvName];
  osVersion = [(UARPMetaDataHostMinimumVersion_iOS *)self osVersion];
  v5 = [NSString stringWithFormat:@"<%@: %@>", tlvName, osVersion];

  return v5;
}

@end