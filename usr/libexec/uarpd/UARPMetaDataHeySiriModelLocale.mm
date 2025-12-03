@interface UARPMetaDataHeySiriModelLocale
- (UARPMetaDataHeySiriModelLocale)init;
- (UARPMetaDataHeySiriModelLocale)initWithLength:(unint64_t)length value:(void *)value;
- (UARPMetaDataHeySiriModelLocale)initWithPropertyListValue:(id)value relativeURL:(id)l;
- (id)description;
- (id)tlvValue;
@end

@implementation UARPMetaDataHeySiriModelLocale

- (UARPMetaDataHeySiriModelLocale)init
{
  v6.receiver = self;
  v6.super_class = UARPMetaDataHeySiriModelLocale;
  v2 = [(UARPMetaData *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->super._tlvType = 1619725825;
    tlvName = v2->super._tlvName;
    v2->super._tlvName = @"HeySiri Model Locale";
  }

  return v3;
}

- (UARPMetaDataHeySiriModelLocale)initWithPropertyListValue:(id)value relativeURL:(id)l
{
  valueCopy = value;
  v6 = [(UARPMetaDataHeySiriModelLocale *)self init];
  v7 = v6;
  if (v6)
  {
    v12.receiver = v6;
    v12.super_class = UARPMetaDataHeySiriModelLocale;
    v8 = [(UARPMetaData *)&v12 stringFromPlistValue:valueCopy];
    modelLocale = v7->_modelLocale;
    v7->_modelLocale = v8;

    v7->super._tlvLength = [(NSString *)v7->_modelLocale length];
  }

  if (v7->_modelLocale)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (UARPMetaDataHeySiriModelLocale)initWithLength:(unint64_t)length value:(void *)value
{
  v6 = [(UARPMetaDataHeySiriModelLocale *)self init];
  if (v6)
  {
    v7 = [[NSString alloc] initWithBytes:value length:length encoding:4];
    modelLocale = v6->_modelLocale;
    v6->_modelLocale = v7;

    v6->super._tlvLength = [(NSString *)v6->_modelLocale length];
  }

  return v6;
}

- (id)tlvValue
{
  modelLocale = [(UARPMetaDataHeySiriModelLocale *)self modelLocale];
  v6.receiver = self;
  v6.super_class = UARPMetaDataHeySiriModelLocale;
  v4 = [(UARPMetaData *)&v6 tlvValueWithString:modelLocale];

  return v4;
}

- (id)description
{
  tlvName = [(UARPMetaData *)self tlvName];
  modelLocale = [(UARPMetaDataHeySiriModelLocale *)self modelLocale];
  v5 = [NSString stringWithFormat:@"<%@: %@>", tlvName, modelLocale];

  return v5;
}

@end