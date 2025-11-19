@interface UARPMetaDataInformationManufacturerName
- (UARPMetaDataInformationManufacturerName)init;
- (UARPMetaDataInformationManufacturerName)initWithLength:(unint64_t)a3 value:(void *)a4;
- (UARPMetaDataInformationManufacturerName)initWithPropertyListValue:(id)a3 relativeURL:(id)a4;
- (id)description;
- (id)tlvValue;
@end

@implementation UARPMetaDataInformationManufacturerName

- (UARPMetaDataInformationManufacturerName)init
{
  v6.receiver = self;
  v6.super_class = UARPMetaDataInformationManufacturerName;
  v2 = [(UARPMetaData *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->super._tlvType = 1;
    tlvName = v2->super._tlvName;
    v2->super._tlvName = @"Manufacturer Name";
  }

  return v3;
}

- (UARPMetaDataInformationManufacturerName)initWithPropertyListValue:(id)a3 relativeURL:(id)a4
{
  v5 = a3;
  v6 = [(UARPMetaDataInformationManufacturerName *)self init];
  v7 = v6;
  if (v6)
  {
    v12.receiver = v6;
    v12.super_class = UARPMetaDataInformationManufacturerName;
    v8 = [(UARPMetaData *)&v12 stringFromPlistValue:v5];
    manufacturerName = v7->_manufacturerName;
    v7->_manufacturerName = v8;

    v7->super._tlvLength = [(NSString *)v7->_manufacturerName length];
  }

  if (v7->_manufacturerName)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (UARPMetaDataInformationManufacturerName)initWithLength:(unint64_t)a3 value:(void *)a4
{
  v6 = [(UARPMetaDataInformationManufacturerName *)self init];
  if (v6)
  {
    v7 = [[NSString alloc] initWithBytes:a4 length:a3 encoding:4];
    manufacturerName = v6->_manufacturerName;
    v6->_manufacturerName = v7;

    v6->super._tlvLength = [(NSString *)v6->_manufacturerName length];
  }

  return v6;
}

- (id)tlvValue
{
  v3 = [(UARPMetaDataInformationManufacturerName *)self manufacturerName];
  v6.receiver = self;
  v6.super_class = UARPMetaDataInformationManufacturerName;
  v4 = [(UARPMetaData *)&v6 tlvValueWithString:v3];

  return v4;
}

- (id)description
{
  v3 = [(UARPMetaData *)self tlvName];
  v4 = [(UARPMetaDataInformationManufacturerName *)self manufacturerName];
  v5 = [NSString stringWithFormat:@"<%@: %@>", v3, v4];

  return v5;
}

@end