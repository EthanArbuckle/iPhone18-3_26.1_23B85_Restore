@interface UARPMetaDataPersonalizationChipEpoch
- (UARPMetaDataPersonalizationChipEpoch)init;
- (UARPMetaDataPersonalizationChipEpoch)initWithLength:(unint64_t)a3 value:(void *)a4;
- (UARPMetaDataPersonalizationChipEpoch)initWithPropertyListValue:(id)a3 relativeURL:(id)a4;
- (id)description;
- (id)tlvValue;
@end

@implementation UARPMetaDataPersonalizationChipEpoch

- (UARPMetaDataPersonalizationChipEpoch)init
{
  v6.receiver = self;
  v6.super_class = UARPMetaDataPersonalizationChipEpoch;
  v2 = [(UARPMetaData *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->super._tlvType = -2001563380;
    v2->super._tlvLength = 4;
    tlvName = v2->super._tlvName;
    v2->super._tlvName = @"Personalization Chip Epoch";
  }

  return v3;
}

- (UARPMetaDataPersonalizationChipEpoch)initWithPropertyListValue:(id)a3 relativeURL:(id)a4
{
  v5 = a3;
  v6 = [(UARPMetaDataPersonalizationChipEpoch *)self init];
  v7 = v6;
  if (!v6)
  {
    goto LABEL_4;
  }

  v11.receiver = v6;
  v11.super_class = UARPMetaDataPersonalizationChipEpoch;
  v8 = [(UARPMetaData *)&v11 numberFromPlistValue:v5];
  v9 = v8;
  if (v8)
  {
    v7->_chipEpoch = [(UARPMetaDataPersonalizationChipEpoch *)v8 unsignedLongValue];

LABEL_4:
    v9 = v7;
  }

  return v9;
}

- (UARPMetaDataPersonalizationChipEpoch)initWithLength:(unint64_t)a3 value:(void *)a4
{
  v6 = [(UARPMetaDataPersonalizationChipEpoch *)self init];
  v7 = v6;
  if (!v6)
  {
    goto LABEL_4;
  }

  v11.receiver = v6;
  v11.super_class = UARPMetaDataPersonalizationChipEpoch;
  v8 = [(UARPMetaData *)&v11 numberWithLength:a3 value:a4];
  v9 = v8;
  if (v8)
  {
    v7->_chipEpoch = [(UARPMetaDataPersonalizationChipEpoch *)v8 unsignedLongValue];

LABEL_4:
    v9 = v7;
  }

  return v9;
}

- (id)tlvValue
{
  v4.receiver = self;
  v4.super_class = UARPMetaDataPersonalizationChipEpoch;
  v2 = [(UARPMetaData *)&v4 tlvValueWithUInt32:[(UARPMetaDataPersonalizationChipEpoch *)self chipEpoch]];

  return v2;
}

- (id)description
{
  v3 = [(UARPMetaData *)self tlvName];
  v4 = [NSString stringWithFormat:@"<%@: %u>", v3, [(UARPMetaDataPersonalizationChipEpoch *)self chipEpoch]];

  return v4;
}

@end