@interface UARPMetaDataPersonalizationLogicalUnitNumber
- (UARPMetaDataPersonalizationLogicalUnitNumber)init;
- (UARPMetaDataPersonalizationLogicalUnitNumber)initWithLength:(unint64_t)a3 value:(void *)a4;
- (UARPMetaDataPersonalizationLogicalUnitNumber)initWithPropertyListValue:(id)a3 relativeURL:(id)a4;
- (id)description;
- (id)tlvValue;
@end

@implementation UARPMetaDataPersonalizationLogicalUnitNumber

- (UARPMetaDataPersonalizationLogicalUnitNumber)init
{
  v6.receiver = self;
  v6.super_class = UARPMetaDataPersonalizationLogicalUnitNumber;
  v2 = [(UARPMetaData *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->super._tlvType = -2001563355;
    v2->super._tlvLength = 4;
    tlvName = v2->super._tlvName;
    v2->super._tlvName = @"Personalization Logical Unit Number";
  }

  return v3;
}

- (UARPMetaDataPersonalizationLogicalUnitNumber)initWithPropertyListValue:(id)a3 relativeURL:(id)a4
{
  v5 = a3;
  v6 = [(UARPMetaDataPersonalizationLogicalUnitNumber *)self init];
  v7 = v6;
  if (!v6)
  {
    goto LABEL_4;
  }

  v11.receiver = v6;
  v11.super_class = UARPMetaDataPersonalizationLogicalUnitNumber;
  v8 = [(UARPMetaData *)&v11 numberFromPlistValue:v5];
  v9 = v8;
  if (v8)
  {
    v7->_logicalUnitNumber = [(UARPMetaDataPersonalizationLogicalUnitNumber *)v8 unsignedLongValue];

LABEL_4:
    v9 = v7;
  }

  return v9;
}

- (UARPMetaDataPersonalizationLogicalUnitNumber)initWithLength:(unint64_t)a3 value:(void *)a4
{
  v6 = [(UARPMetaDataPersonalizationLogicalUnitNumber *)self init];
  v7 = v6;
  if (!v6)
  {
    goto LABEL_4;
  }

  v11.receiver = v6;
  v11.super_class = UARPMetaDataPersonalizationLogicalUnitNumber;
  v8 = [(UARPMetaData *)&v11 numberWithLength:a3 value:a4];
  v9 = v8;
  if (v8)
  {
    v7->_logicalUnitNumber = [(UARPMetaDataPersonalizationLogicalUnitNumber *)v8 unsignedLongValue];

LABEL_4:
    v9 = v7;
  }

  return v9;
}

- (id)tlvValue
{
  v4.receiver = self;
  v4.super_class = UARPMetaDataPersonalizationLogicalUnitNumber;
  v2 = [(UARPMetaData *)&v4 tlvValueWithUInt32:[(UARPMetaDataPersonalizationLogicalUnitNumber *)self logicalUnitNumber]];

  return v2;
}

- (id)description
{
  v3 = [(UARPMetaData *)self tlvName];
  v4 = [NSString stringWithFormat:@"<%@: %u>", v3, [(UARPMetaDataPersonalizationLogicalUnitNumber *)self logicalUnitNumber]];

  return v4;
}

@end