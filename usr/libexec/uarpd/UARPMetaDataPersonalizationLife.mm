@interface UARPMetaDataPersonalizationLife
- (UARPMetaDataPersonalizationLife)init;
- (UARPMetaDataPersonalizationLife)initWithLength:(unint64_t)length value:(void *)value;
- (UARPMetaDataPersonalizationLife)initWithPropertyListValue:(id)value relativeURL:(id)l;
- (id)description;
- (id)tlvValue;
@end

@implementation UARPMetaDataPersonalizationLife

- (UARPMetaDataPersonalizationLife)init
{
  v6.receiver = self;
  v6.super_class = UARPMetaDataPersonalizationLife;
  v2 = [(UARPMetaData *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->super._tlvType = -2001563343;
    v2->super._tlvLength = 1;
    tlvName = v2->super._tlvName;
    v2->super._tlvName = @"Personalization Life";
  }

  return v3;
}

- (UARPMetaDataPersonalizationLife)initWithPropertyListValue:(id)value relativeURL:(id)l
{
  valueCopy = value;
  v6 = [(UARPMetaDataPersonalizationLife *)self init];
  v7 = v6;
  if (!v6)
  {
    goto LABEL_4;
  }

  v11.receiver = v6;
  v11.super_class = UARPMetaDataPersonalizationLife;
  v8 = [(UARPMetaData *)&v11 numberFromPlistValue:valueCopy];
  v9 = v8;
  if (v8)
  {
    v7->_life = [(UARPMetaDataPersonalizationLife *)v8 unsignedCharValue];

LABEL_4:
    v9 = v7;
  }

  return v9;
}

- (UARPMetaDataPersonalizationLife)initWithLength:(unint64_t)length value:(void *)value
{
  v6 = [(UARPMetaDataPersonalizationLife *)self init];
  v7 = v6;
  if (!v6)
  {
    goto LABEL_4;
  }

  v11.receiver = v6;
  v11.super_class = UARPMetaDataPersonalizationLife;
  v8 = [(UARPMetaData *)&v11 numberWithLength:length value:value];
  v9 = v8;
  if (v8)
  {
    v7->_life = [(UARPMetaDataPersonalizationLife *)v8 unsignedCharValue];

LABEL_4:
    v9 = v7;
  }

  return v9;
}

- (id)tlvValue
{
  v4.receiver = self;
  v4.super_class = UARPMetaDataPersonalizationLife;
  v2 = [(UARPMetaData *)&v4 tlvValueWithUInt8:[(UARPMetaDataPersonalizationLife *)self life]];

  return v2;
}

- (id)description
{
  tlvName = [(UARPMetaData *)self tlvName];
  life = [(UARPMetaDataPersonalizationLife *)self life];
  v5 = @"YES";
  if (!life)
  {
    v5 = @"NO";
  }

  v6 = [NSString stringWithFormat:@"<%@: %@>", tlvName, v5];

  return v6;
}

@end