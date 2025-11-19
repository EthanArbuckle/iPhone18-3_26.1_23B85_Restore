@interface UARPMetaDataPersonalizationProductionMode
- (UARPMetaDataPersonalizationProductionMode)init;
- (UARPMetaDataPersonalizationProductionMode)initWithLength:(unint64_t)a3 value:(void *)a4;
- (UARPMetaDataPersonalizationProductionMode)initWithPropertyListValue:(id)a3 relativeURL:(id)a4;
- (id)description;
- (id)tlvValue;
@end

@implementation UARPMetaDataPersonalizationProductionMode

- (UARPMetaDataPersonalizationProductionMode)init
{
  v6.receiver = self;
  v6.super_class = UARPMetaDataPersonalizationProductionMode;
  v2 = [(UARPMetaData *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->super._tlvType = -2001563381;
    v2->super._tlvLength = 4;
    tlvName = v2->super._tlvName;
    v2->super._tlvName = @"Personalization Production Mode";
  }

  return v3;
}

- (UARPMetaDataPersonalizationProductionMode)initWithPropertyListValue:(id)a3 relativeURL:(id)a4
{
  v5 = a3;
  v6 = [(UARPMetaDataPersonalizationProductionMode *)self init];
  v7 = v6;
  if (!v6)
  {
    goto LABEL_4;
  }

  v11.receiver = v6;
  v11.super_class = UARPMetaDataPersonalizationProductionMode;
  v8 = [(UARPMetaData *)&v11 numberFromPlistValue:v5];
  v9 = v8;
  if (v8)
  {
    v7->_productionMode = [(UARPMetaDataPersonalizationProductionMode *)v8 unsignedLongValue];

LABEL_4:
    v9 = v7;
  }

  return v9;
}

- (UARPMetaDataPersonalizationProductionMode)initWithLength:(unint64_t)a3 value:(void *)a4
{
  v6 = [(UARPMetaDataPersonalizationProductionMode *)self init];
  v7 = v6;
  if (!v6)
  {
    goto LABEL_4;
  }

  v11.receiver = v6;
  v11.super_class = UARPMetaDataPersonalizationProductionMode;
  v8 = [(UARPMetaData *)&v11 numberWithLength:a3 value:a4];
  v9 = v8;
  if (v8)
  {
    v7->_productionMode = [(UARPMetaDataPersonalizationProductionMode *)v8 unsignedLongValue];

LABEL_4:
    v9 = v7;
  }

  return v9;
}

- (id)tlvValue
{
  v4.receiver = self;
  v4.super_class = UARPMetaDataPersonalizationProductionMode;
  v2 = [(UARPMetaData *)&v4 tlvValueWithUInt32:[(UARPMetaDataPersonalizationProductionMode *)self productionMode]];

  return v2;
}

- (id)description
{
  v3 = [(UARPMetaData *)self tlvName];
  v4 = [NSString stringWithFormat:@"<%@: %u>", v3, [(UARPMetaDataPersonalizationProductionMode *)self productionMode]];

  return v4;
}

@end