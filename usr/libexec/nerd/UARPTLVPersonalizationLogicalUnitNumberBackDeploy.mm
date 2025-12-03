@interface UARPTLVPersonalizationLogicalUnitNumberBackDeploy
+ (id)metaDataTableEntry;
+ (id)tlvFromPropertyListValue:(id)value;
+ (id)tlvWithLength:(unint64_t)length value:(void *)value;
- (UARPTLVPersonalizationLogicalUnitNumberBackDeploy)init;
- (id)description;
- (id)generateTLV;
- (id)tlvValue;
- (void)setLogicalUnitNumber:(unsigned int)number;
@end

@implementation UARPTLVPersonalizationLogicalUnitNumberBackDeploy

- (UARPTLVPersonalizationLogicalUnitNumberBackDeploy)init
{
  v3.receiver = self;
  v3.super_class = UARPTLVPersonalizationLogicalUnitNumberBackDeploy;
  return [(UARPMetaDataTLV32BackDeploy *)&v3 init];
}

- (void)setLogicalUnitNumber:(unsigned int)number
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  *(&selfCopy->super.super._tlvLength + 1) = number;
  objc_sync_exit(selfCopy);
}

- (id)description
{
  v3 = +[UARPTLVPersonalizationLogicalUnitNumberBackDeploy metaDataTableEntry];
  v4 = [v3 objectForKeyedSubscript:@"Name"];
  v5 = [NSString stringWithFormat:@"<%@: 0x%08x>", v4, *(&self->super.super._tlvLength + 1)];

  return v5;
}

- (id)generateTLV
{
  v3 = +[UARPTLVPersonalizationLogicalUnitNumberBackDeploy tlvType];
  v4 = *(&self->super.super._tlvLength + 1);
  v7.receiver = self;
  v7.super_class = UARPTLVPersonalizationLogicalUnitNumberBackDeploy;
  v5 = [(UARPMetaDataTLV32BackDeploy *)&v7 generateTLV:v3 tlvValue:v4];

  return v5;
}

- (id)tlvValue
{
  v2 = *(&self->super.super._tlvLength + 1);
  v5.receiver = self;
  v5.super_class = UARPTLVPersonalizationLogicalUnitNumberBackDeploy;
  v3 = [(UARPMetaDataTLV32BackDeploy *)&v5 tlvValue:v2];

  return v3;
}

+ (id)metaDataTableEntry
{
  v6[0] = &off_1000A7F18;
  v5[0] = @"Name";
  v5[1] = @"Value";
  v2 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", +[UARPTLVPersonalizationLogicalUnitNumberBackDeploy tlvType]);
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
    unsignedLongValue = [v4 unsignedLongValue];

    [v5 setLogicalUnitNumber:unsignedLongValue];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)tlvWithLength:(unint64_t)length value:(void *)value
{
  if (length == 4)
  {
    v5 = objc_opt_new();
    [v5 setLogicalUnitNumber:uarpNtohl(*value)];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end