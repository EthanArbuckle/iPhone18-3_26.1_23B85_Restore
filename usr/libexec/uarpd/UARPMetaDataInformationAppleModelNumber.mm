@interface UARPMetaDataInformationAppleModelNumber
- (UARPMetaDataInformationAppleModelNumber)init;
- (UARPMetaDataInformationAppleModelNumber)initWithLength:(unint64_t)a3 value:(void *)a4;
- (UARPMetaDataInformationAppleModelNumber)initWithPropertyListValue:(id)a3 relativeURL:(id)a4;
- (id)description;
- (id)tlvValue;
@end

@implementation UARPMetaDataInformationAppleModelNumber

- (UARPMetaDataInformationAppleModelNumber)init
{
  v6.receiver = self;
  v6.super_class = UARPMetaDataInformationAppleModelNumber;
  v2 = [(UARPMetaData *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->super._tlvType = 11;
    tlvName = v2->super._tlvName;
    v2->super._tlvName = @"Apple Model Number";
  }

  return v3;
}

- (UARPMetaDataInformationAppleModelNumber)initWithPropertyListValue:(id)a3 relativeURL:(id)a4
{
  v5 = a3;
  v6 = [(UARPMetaDataInformationAppleModelNumber *)self init];
  v7 = v6;
  if (v6)
  {
    v12.receiver = v6;
    v12.super_class = UARPMetaDataInformationAppleModelNumber;
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

- (UARPMetaDataInformationAppleModelNumber)initWithLength:(unint64_t)a3 value:(void *)a4
{
  v6 = [(UARPMetaDataInformationAppleModelNumber *)self init];
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
  v3 = [(UARPMetaDataInformationAppleModelNumber *)self appleModelNumber];
  v6.receiver = self;
  v6.super_class = UARPMetaDataInformationAppleModelNumber;
  v4 = [(UARPMetaData *)&v6 tlvValueWithString:v3];

  return v4;
}

- (id)description
{
  v3 = [(UARPMetaData *)self tlvName];
  v4 = [(UARPMetaDataInformationAppleModelNumber *)self appleModelNumber];
  v5 = [NSString stringWithFormat:@"<%@: %@>", v3, v4];

  return v5;
}

@end