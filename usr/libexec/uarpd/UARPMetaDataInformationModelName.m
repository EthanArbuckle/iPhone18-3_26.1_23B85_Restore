@interface UARPMetaDataInformationModelName
- (UARPMetaDataInformationModelName)init;
- (UARPMetaDataInformationModelName)initWithLength:(unint64_t)a3 value:(void *)a4;
- (UARPMetaDataInformationModelName)initWithPropertyListValue:(id)a3 relativeURL:(id)a4;
- (id)description;
- (id)tlvValue;
@end

@implementation UARPMetaDataInformationModelName

- (UARPMetaDataInformationModelName)init
{
  v6.receiver = self;
  v6.super_class = UARPMetaDataInformationModelName;
  v2 = [(UARPMetaData *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->super._tlvType = 2;
    tlvName = v2->super._tlvName;
    v2->super._tlvName = @"Model Name";
  }

  return v3;
}

- (UARPMetaDataInformationModelName)initWithPropertyListValue:(id)a3 relativeURL:(id)a4
{
  v5 = a3;
  v6 = [(UARPMetaDataInformationModelName *)self init];
  v7 = v6;
  if (v6)
  {
    v12.receiver = v6;
    v12.super_class = UARPMetaDataInformationModelName;
    v8 = [(UARPMetaData *)&v12 stringFromPlistValue:v5];
    modelName = v7->_modelName;
    v7->_modelName = v8;

    v7->super._tlvLength = [(NSString *)v7->_modelName length];
  }

  if (v7->_modelName)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (UARPMetaDataInformationModelName)initWithLength:(unint64_t)a3 value:(void *)a4
{
  v6 = [(UARPMetaDataInformationModelName *)self init];
  if (v6)
  {
    v7 = [[NSString alloc] initWithBytes:a4 length:a3 encoding:4];
    modelName = v6->_modelName;
    v6->_modelName = v7;

    v6->super._tlvLength = [(NSString *)v6->_modelName length];
  }

  return v6;
}

- (id)tlvValue
{
  v3 = [(UARPMetaDataInformationModelName *)self modelName];
  v6.receiver = self;
  v6.super_class = UARPMetaDataInformationModelName;
  v4 = [(UARPMetaData *)&v6 tlvValueWithString:v3];

  return v4;
}

- (id)description
{
  v3 = [(UARPMetaData *)self tlvName];
  v4 = [(UARPMetaDataInformationModelName *)self modelName];
  v5 = [NSString stringWithFormat:@"<%@: %@>", v3, v4];

  return v5;
}

@end