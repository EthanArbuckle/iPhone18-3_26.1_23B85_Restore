@interface UARPMetaDataPersonalizationSuffixNeedsLogicalUnitNumber
- (UARPMetaDataPersonalizationSuffixNeedsLogicalUnitNumber)init;
- (UARPMetaDataPersonalizationSuffixNeedsLogicalUnitNumber)initWithLength:(unint64_t)length value:(void *)value;
- (UARPMetaDataPersonalizationSuffixNeedsLogicalUnitNumber)initWithPropertyListValue:(id)value relativeURL:(id)l;
- (id)description;
- (id)tlvValue;
@end

@implementation UARPMetaDataPersonalizationSuffixNeedsLogicalUnitNumber

- (UARPMetaDataPersonalizationSuffixNeedsLogicalUnitNumber)init
{
  v6.receiver = self;
  v6.super_class = UARPMetaDataPersonalizationSuffixNeedsLogicalUnitNumber;
  v2 = [(UARPMetaData *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->super._tlvType = -2001563340;
    v2->super._tlvLength = 1;
    tlvName = v2->super._tlvName;
    v2->super._tlvName = @"Personalization Manifest Suffix";
  }

  return v3;
}

- (UARPMetaDataPersonalizationSuffixNeedsLogicalUnitNumber)initWithPropertyListValue:(id)value relativeURL:(id)l
{
  valueCopy = value;
  v6 = [(UARPMetaDataPersonalizationSuffixNeedsLogicalUnitNumber *)self init];
  v7 = v6;
  if (!v6)
  {
    goto LABEL_4;
  }

  v11.receiver = v6;
  v11.super_class = UARPMetaDataPersonalizationSuffixNeedsLogicalUnitNumber;
  v8 = [(UARPMetaData *)&v11 numberFromPlistValue:valueCopy];
  v9 = v8;
  if (v8)
  {
    v7->_suffixNeedsLogicalUnitNumber = [(UARPMetaDataPersonalizationSuffixNeedsLogicalUnitNumber *)v8 unsignedCharValue];

LABEL_4:
    v9 = v7;
  }

  return v9;
}

- (UARPMetaDataPersonalizationSuffixNeedsLogicalUnitNumber)initWithLength:(unint64_t)length value:(void *)value
{
  v6 = [(UARPMetaDataPersonalizationSuffixNeedsLogicalUnitNumber *)self init];
  v7 = v6;
  if (!v6)
  {
    goto LABEL_4;
  }

  v11.receiver = v6;
  v11.super_class = UARPMetaDataPersonalizationSuffixNeedsLogicalUnitNumber;
  v8 = [(UARPMetaData *)&v11 numberWithLength:length value:value];
  v9 = v8;
  if (v8)
  {
    v7->_suffixNeedsLogicalUnitNumber = [(UARPMetaDataPersonalizationSuffixNeedsLogicalUnitNumber *)v8 unsignedCharValue];

LABEL_4:
    v9 = v7;
  }

  return v9;
}

- (id)tlvValue
{
  v4.receiver = self;
  v4.super_class = UARPMetaDataPersonalizationSuffixNeedsLogicalUnitNumber;
  v2 = [(UARPMetaData *)&v4 tlvValueWithUInt8:[(UARPMetaDataPersonalizationSuffixNeedsLogicalUnitNumber *)self suffixNeedsLogicalUnitNumber]];

  return v2;
}

- (id)description
{
  tlvName = [(UARPMetaData *)self tlvName];
  suffixNeedsLogicalUnitNumber = [(UARPMetaDataPersonalizationSuffixNeedsLogicalUnitNumber *)self suffixNeedsLogicalUnitNumber];
  v5 = @"YES";
  if (!suffixNeedsLogicalUnitNumber)
  {
    v5 = @"NO";
  }

  v6 = [NSString stringWithFormat:@"<%@: %@>", tlvName, v5];

  return v6;
}

@end