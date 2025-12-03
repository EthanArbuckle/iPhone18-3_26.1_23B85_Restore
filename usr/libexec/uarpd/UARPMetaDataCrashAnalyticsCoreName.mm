@interface UARPMetaDataCrashAnalyticsCoreName
- (UARPMetaDataCrashAnalyticsCoreName)init;
- (UARPMetaDataCrashAnalyticsCoreName)initWithLength:(unint64_t)length value:(void *)value;
- (UARPMetaDataCrashAnalyticsCoreName)initWithPropertyListValue:(id)value relativeURL:(id)l;
- (id)description;
- (id)tlvValue;
@end

@implementation UARPMetaDataCrashAnalyticsCoreName

- (UARPMetaDataCrashAnalyticsCoreName)init
{
  v6.receiver = self;
  v6.super_class = UARPMetaDataCrashAnalyticsCoreName;
  v2 = [(UARPMetaData *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->super._tlvType = -252806656;
    tlvName = v2->super._tlvName;
    v2->super._tlvName = @"Crash Analytics Core Name";
  }

  return v3;
}

- (UARPMetaDataCrashAnalyticsCoreName)initWithPropertyListValue:(id)value relativeURL:(id)l
{
  valueCopy = value;
  v6 = [(UARPMetaDataCrashAnalyticsCoreName *)self init];
  v7 = v6;
  if (v6)
  {
    v12.receiver = v6;
    v12.super_class = UARPMetaDataCrashAnalyticsCoreName;
    v8 = [(UARPMetaData *)&v12 stringFromPlistValue:valueCopy];
    coreName = v7->_coreName;
    v7->_coreName = v8;

    v7->super._tlvLength = [(NSString *)v7->_coreName length];
  }

  if (v7->_coreName)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (UARPMetaDataCrashAnalyticsCoreName)initWithLength:(unint64_t)length value:(void *)value
{
  v6 = [(UARPMetaDataCrashAnalyticsCoreName *)self init];
  if (v6)
  {
    v7 = [[NSString alloc] initWithBytes:value length:length encoding:4];
    coreName = v6->_coreName;
    v6->_coreName = v7;

    v6->super._tlvLength = [(NSString *)v6->_coreName length];
  }

  return v6;
}

- (id)tlvValue
{
  coreName = [(UARPMetaDataCrashAnalyticsCoreName *)self coreName];
  v6.receiver = self;
  v6.super_class = UARPMetaDataCrashAnalyticsCoreName;
  v4 = [(UARPMetaData *)&v6 tlvValueWithString:coreName];

  return v4;
}

- (id)description
{
  tlvName = [(UARPMetaData *)self tlvName];
  coreName = [(UARPMetaDataCrashAnalyticsCoreName *)self coreName];
  v5 = [NSString stringWithFormat:@"<%@: %@>", tlvName, coreName];

  return v5;
}

@end