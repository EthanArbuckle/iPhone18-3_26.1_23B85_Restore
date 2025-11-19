@interface UARPMetaDataMappedAnalyticsAppleModelNumber
- (UARPMetaDataMappedAnalyticsAppleModelNumber)init;
- (UARPMetaDataMappedAnalyticsAppleModelNumber)initWithLength:(unint64_t)a3 value:(void *)a4;
- (UARPMetaDataMappedAnalyticsAppleModelNumber)initWithPropertyListValue:(id)a3 relativeURL:(id)a4;
- (id)description;
- (id)tlvValue;
@end

@implementation UARPMetaDataMappedAnalyticsAppleModelNumber

- (UARPMetaDataMappedAnalyticsAppleModelNumber)init
{
  v6.receiver = self;
  v6.super_class = UARPMetaDataMappedAnalyticsAppleModelNumber;
  v2 = [(UARPMetaData *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->super._tlvType = 538280448;
    tlvName = v2->super._tlvName;
    v2->super._tlvName = @"Mapped Analytics Apple Model Number";
  }

  return v3;
}

- (UARPMetaDataMappedAnalyticsAppleModelNumber)initWithPropertyListValue:(id)a3 relativeURL:(id)a4
{
  v5 = a3;
  v6 = [(UARPMetaDataMappedAnalyticsAppleModelNumber *)self init];
  v7 = v6;
  if (v6)
  {
    v12.receiver = v6;
    v12.super_class = UARPMetaDataMappedAnalyticsAppleModelNumber;
    v8 = [(UARPMetaData *)&v12 stringFromPlistValue:v5];
    appleModelNumber = v7->_appleModelNumber;
    v7->_appleModelNumber = v8;

    v7->super._tlvLength = [(NSString *)v7->_appleModelNumber length];
  }

  if (v7->_appleModelNumber)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (UARPMetaDataMappedAnalyticsAppleModelNumber)initWithLength:(unint64_t)a3 value:(void *)a4
{
  v6 = [(UARPMetaDataMappedAnalyticsAppleModelNumber *)self init];
  if (v6)
  {
    v7 = [[NSString alloc] initWithBytes:a4 length:a3 encoding:4];
    appleModelNumber = v6->_appleModelNumber;
    v6->_appleModelNumber = v7;

    v6->super._tlvLength = [(NSString *)v6->_appleModelNumber length];
  }

  return v6;
}

- (id)tlvValue
{
  v3 = [(UARPMetaDataMappedAnalyticsAppleModelNumber *)self appleModelNumber];
  v6.receiver = self;
  v6.super_class = UARPMetaDataMappedAnalyticsAppleModelNumber;
  v4 = [(UARPMetaData *)&v6 tlvValueWithString:v3];

  return v4;
}

- (id)description
{
  v3 = [(UARPMetaData *)self tlvName];
  v4 = [(UARPMetaDataMappedAnalyticsAppleModelNumber *)self appleModelNumber];
  v5 = [NSString stringWithFormat:@"<%@: %@>", v3, v4];

  return v5;
}

@end