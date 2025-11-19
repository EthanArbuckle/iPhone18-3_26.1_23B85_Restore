@interface UARPMetaDataCrashAnalyticsCoreName
- (UARPMetaDataCrashAnalyticsCoreName)init;
- (UARPMetaDataCrashAnalyticsCoreName)initWithLength:(unint64_t)a3 value:(void *)a4;
- (UARPMetaDataCrashAnalyticsCoreName)initWithPropertyListValue:(id)a3 relativeURL:(id)a4;
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

- (UARPMetaDataCrashAnalyticsCoreName)initWithPropertyListValue:(id)a3 relativeURL:(id)a4
{
  v5 = a3;
  v6 = [(UARPMetaDataCrashAnalyticsCoreName *)self init];
  v7 = v6;
  if (v6)
  {
    v12.receiver = v6;
    v12.super_class = UARPMetaDataCrashAnalyticsCoreName;
    v8 = [(UARPMetaData *)&v12 stringFromPlistValue:v5];
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

- (UARPMetaDataCrashAnalyticsCoreName)initWithLength:(unint64_t)a3 value:(void *)a4
{
  v6 = [(UARPMetaDataCrashAnalyticsCoreName *)self init];
  if (v6)
  {
    v7 = [[NSString alloc] initWithBytes:a4 length:a3 encoding:4];
    coreName = v6->_coreName;
    v6->_coreName = v7;

    v6->super._tlvLength = [(NSString *)v6->_coreName length];
  }

  return v6;
}

- (id)tlvValue
{
  v3 = [(UARPMetaDataCrashAnalyticsCoreName *)self coreName];
  v6.receiver = self;
  v6.super_class = UARPMetaDataCrashAnalyticsCoreName;
  v4 = [(UARPMetaData *)&v6 tlvValueWithString:v3];

  return v4;
}

- (id)description
{
  v3 = [(UARPMetaData *)self tlvName];
  v4 = [(UARPMetaDataCrashAnalyticsCoreName *)self coreName];
  v5 = [NSString stringWithFormat:@"<%@: %@>", v3, v4];

  return v5;
}

@end