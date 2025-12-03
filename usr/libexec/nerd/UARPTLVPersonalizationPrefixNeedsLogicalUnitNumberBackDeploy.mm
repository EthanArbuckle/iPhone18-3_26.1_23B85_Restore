@interface UARPTLVPersonalizationPrefixNeedsLogicalUnitNumberBackDeploy
+ (id)metaDataTableEntry;
+ (id)tlvFromPropertyListValue:(id)value;
+ (id)tlvWithLength:(unint64_t)length value:(void *)value;
- (UARPTLVPersonalizationPrefixNeedsLogicalUnitNumberBackDeploy)init;
- (id)generateTLV;
- (id)tlvValue;
- (void)setPrefixNeedsLogicalUnitNumber:(unsigned __int8)number;
@end

@implementation UARPTLVPersonalizationPrefixNeedsLogicalUnitNumberBackDeploy

- (UARPTLVPersonalizationPrefixNeedsLogicalUnitNumberBackDeploy)init
{
  v3.receiver = self;
  v3.super_class = UARPTLVPersonalizationPrefixNeedsLogicalUnitNumberBackDeploy;
  return [(UARPMetaDataTLV8BackDeploy *)&v3 init];
}

- (void)setPrefixNeedsLogicalUnitNumber:(unsigned __int8)number
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  *(&selfCopy->super.super._tlvLength + 4) = number;
  objc_sync_exit(selfCopy);
}

- (id)generateTLV
{
  v3 = +[UARPTLVPersonalizationPrefixNeedsLogicalUnitNumberBackDeploy tlvType];
  v4 = *(&self->super.super._tlvLength + 4);
  v7.receiver = self;
  v7.super_class = UARPTLVPersonalizationPrefixNeedsLogicalUnitNumberBackDeploy;
  v5 = [(UARPMetaDataTLV8BackDeploy *)&v7 generateTLV:v3 tlvValue:v4];

  return v5;
}

- (id)tlvValue
{
  v2 = *(&self->super.super._tlvLength + 4);
  v5.receiver = self;
  v5.super_class = UARPTLVPersonalizationPrefixNeedsLogicalUnitNumberBackDeploy;
  v3 = [(UARPMetaDataTLV8BackDeploy *)&v5 tlvValue:v2];

  return v3;
}

+ (id)metaDataTableEntry
{
  v6[0] = @"Personalization Prefix Needs Logical Unit Number";
  v5[0] = @"Name";
  v5[1] = @"Value";
  v2 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", +[UARPTLVPersonalizationPrefixNeedsLogicalUnitNumberBackDeploy tlvType]);
  v6[1] = v2;
  v3 = [NSDictionary dictionaryWithObjects:v6 forKeys:v5 count:2];

  return v3;
}

+ (id)tlvFromPropertyListValue:(id)value
{
  valueCopy = value;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = valueCopy;
    v5 = objc_opt_new();
    unsignedCharValue = [v4 unsignedCharValue];

    [v5 setPrefixNeedsLogicalUnitNumber:unsignedCharValue];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)tlvWithLength:(unint64_t)length value:(void *)value
{
  if (length == 1)
  {
    v5 = objc_opt_new();
    [v5 setPrefixNeedsLogicalUnitNumber:*value];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end