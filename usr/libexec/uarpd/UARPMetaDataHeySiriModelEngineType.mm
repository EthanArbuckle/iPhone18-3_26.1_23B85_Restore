@interface UARPMetaDataHeySiriModelEngineType
- (UARPMetaDataHeySiriModelEngineType)init;
- (UARPMetaDataHeySiriModelEngineType)initWithLength:(unint64_t)length value:(void *)value;
- (UARPMetaDataHeySiriModelEngineType)initWithPropertyListValue:(id)value relativeURL:(id)l;
- (id)description;
- (id)tlvValue;
@end

@implementation UARPMetaDataHeySiriModelEngineType

- (UARPMetaDataHeySiriModelEngineType)init
{
  v6.receiver = self;
  v6.super_class = UARPMetaDataHeySiriModelEngineType;
  v2 = [(UARPMetaData *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->super._tlvType = 1619725832;
    v2->super._tlvLength = 2;
    tlvName = v2->super._tlvName;
    v2->super._tlvName = @"HeySiri Model Engine Type";
  }

  return v3;
}

- (UARPMetaDataHeySiriModelEngineType)initWithPropertyListValue:(id)value relativeURL:(id)l
{
  valueCopy = value;
  v6 = [(UARPMetaDataHeySiriModelEngineType *)self init];
  v7 = v6;
  if (!v6)
  {
    goto LABEL_4;
  }

  v11.receiver = v6;
  v11.super_class = UARPMetaDataHeySiriModelEngineType;
  v8 = [(UARPMetaData *)&v11 numberFromPlistValue:valueCopy];
  v9 = v8;
  if (v8)
  {
    v7->_engineType = [(UARPMetaDataHeySiriModelEngineType *)v8 unsignedShortValue];

LABEL_4:
    v9 = v7;
  }

  return v9;
}

- (UARPMetaDataHeySiriModelEngineType)initWithLength:(unint64_t)length value:(void *)value
{
  v6 = [(UARPMetaDataHeySiriModelEngineType *)self init];
  v7 = v6;
  if (!v6)
  {
    goto LABEL_4;
  }

  v11.receiver = v6;
  v11.super_class = UARPMetaDataHeySiriModelEngineType;
  v8 = [(UARPMetaData *)&v11 numberWithLength:length value:value];
  v9 = v8;
  if (v8)
  {
    v7->_engineType = [(UARPMetaDataHeySiriModelEngineType *)v8 unsignedShortValue];

LABEL_4:
    v9 = v7;
  }

  return v9;
}

- (id)tlvValue
{
  v4.receiver = self;
  v4.super_class = UARPMetaDataHeySiriModelEngineType;
  v2 = [(UARPMetaData *)&v4 tlvValueWithUInt16:[(UARPMetaDataHeySiriModelEngineType *)self engineType]];

  return v2;
}

- (id)description
{
  tlvName = [(UARPMetaData *)self tlvName];
  v4 = [NSString stringWithFormat:@"<%@: %u>", tlvName, [(UARPMetaDataHeySiriModelEngineType *)self engineType]];

  return v4;
}

@end