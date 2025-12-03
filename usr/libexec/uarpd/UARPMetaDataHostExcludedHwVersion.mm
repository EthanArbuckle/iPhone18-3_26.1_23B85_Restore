@interface UARPMetaDataHostExcludedHwVersion
- (UARPMetaDataHostExcludedHwVersion)init;
- (UARPMetaDataHostExcludedHwVersion)initWithLength:(unint64_t)length value:(void *)value;
- (UARPMetaDataHostExcludedHwVersion)initWithPropertyListValue:(id)value relativeURL:(id)l;
- (id)description;
- (id)tlvValue;
@end

@implementation UARPMetaDataHostExcludedHwVersion

- (UARPMetaDataHostExcludedHwVersion)init
{
  v6.receiver = self;
  v6.super_class = UARPMetaDataHostExcludedHwVersion;
  v2 = [(UARPMetaData *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->super._tlvType = -1003827190;
    tlvName = v2->super._tlvName;
    v2->super._tlvName = @"Excluded Hardware Version";
  }

  return v3;
}

- (UARPMetaDataHostExcludedHwVersion)initWithPropertyListValue:(id)value relativeURL:(id)l
{
  valueCopy = value;
  v6 = [(UARPMetaDataHostExcludedHwVersion *)self init];
  v7 = v6;
  if (v6)
  {
    v12.receiver = v6;
    v12.super_class = UARPMetaDataHostExcludedHwVersion;
    v8 = [(UARPMetaData *)&v12 stringFromPlistValue:valueCopy];
    hwVersion = v7->_hwVersion;
    v7->_hwVersion = v8;

    v7->super._tlvLength = [(NSString *)v7->_hwVersion length];
  }

  if (v7->_hwVersion)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (UARPMetaDataHostExcludedHwVersion)initWithLength:(unint64_t)length value:(void *)value
{
  v6 = [(UARPMetaDataHostExcludedHwVersion *)self init];
  if (v6)
  {
    v7 = [[NSString alloc] initWithBytes:value length:length encoding:4];
    hwVersion = v6->_hwVersion;
    v6->_hwVersion = v7;

    v6->super._tlvLength = [(NSString *)v6->_hwVersion length];
  }

  return v6;
}

- (id)tlvValue
{
  hwVersion = [(UARPMetaDataHostExcludedHwVersion *)self hwVersion];
  v6.receiver = self;
  v6.super_class = UARPMetaDataHostExcludedHwVersion;
  v4 = [(UARPMetaData *)&v6 tlvValueWithString:hwVersion];

  return v4;
}

- (id)description
{
  tlvName = [(UARPMetaData *)self tlvName];
  hwVersion = [(UARPMetaDataHostExcludedHwVersion *)self hwVersion];
  v5 = [NSString stringWithFormat:@"<%@: %@>", tlvName, hwVersion];

  return v5;
}

@end