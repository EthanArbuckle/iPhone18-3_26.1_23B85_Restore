@interface UARPMetaDataInformationModelName
- (UARPMetaDataInformationModelName)init;
- (UARPMetaDataInformationModelName)initWithLength:(unint64_t)length value:(void *)value;
- (UARPMetaDataInformationModelName)initWithPropertyListValue:(id)value relativeURL:(id)l;
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

- (UARPMetaDataInformationModelName)initWithPropertyListValue:(id)value relativeURL:(id)l
{
  valueCopy = value;
  v6 = [(UARPMetaDataInformationModelName *)self init];
  v7 = v6;
  if (v6)
  {
    v12.receiver = v6;
    v12.super_class = UARPMetaDataInformationModelName;
    v8 = [(UARPMetaData *)&v12 stringFromPlistValue:valueCopy];
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

- (UARPMetaDataInformationModelName)initWithLength:(unint64_t)length value:(void *)value
{
  v6 = [(UARPMetaDataInformationModelName *)self init];
  if (v6)
  {
    v7 = [[NSString alloc] initWithBytes:value length:length encoding:4];
    modelName = v6->_modelName;
    v6->_modelName = v7;

    v6->super._tlvLength = [(NSString *)v6->_modelName length];
  }

  return v6;
}

- (id)tlvValue
{
  modelName = [(UARPMetaDataInformationModelName *)self modelName];
  v6.receiver = self;
  v6.super_class = UARPMetaDataInformationModelName;
  v4 = [(UARPMetaData *)&v6 tlvValueWithString:modelName];

  return v4;
}

- (id)description
{
  tlvName = [(UARPMetaData *)self tlvName];
  modelName = [(UARPMetaDataInformationModelName *)self modelName];
  v5 = [NSString stringWithFormat:@"<%@: %@>", tlvName, modelName];

  return v5;
}

@end