@interface UARPTLVPersonalizationChipEpochBackDeploy
+ (id)metaDataTableEntry;
+ (id)tlvFromPropertyListValue:(id)value;
+ (id)tlvWithLength:(unint64_t)length value:(void *)value;
- (UARPTLVPersonalizationChipEpochBackDeploy)init;
- (id)description;
- (id)generateTLV;
- (id)tlvValue;
- (void)setChipEpoch:(unsigned int)epoch;
@end

@implementation UARPTLVPersonalizationChipEpochBackDeploy

- (UARPTLVPersonalizationChipEpochBackDeploy)init
{
  v3.receiver = self;
  v3.super_class = UARPTLVPersonalizationChipEpochBackDeploy;
  return [(UARPMetaDataTLV32BackDeploy *)&v3 init];
}

- (void)setChipEpoch:(unsigned int)epoch
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  *(&selfCopy->super.super._tlvLength + 1) = epoch;
  objc_sync_exit(selfCopy);
}

- (id)description
{
  v3 = +[UARPTLVPersonalizationChipEpochBackDeploy metaDataTableEntry];
  v4 = [v3 objectForKeyedSubscript:@"Name"];
  v5 = [NSString stringWithFormat:@"<%@: 0x%08x>", v4, *(&self->super.super._tlvLength + 1)];

  return v5;
}

- (id)generateTLV
{
  v3 = +[UARPTLVPersonalizationChipEpochBackDeploy tlvType];
  v4 = *(&self->super.super._tlvLength + 1);
  v7.receiver = self;
  v7.super_class = UARPTLVPersonalizationChipEpochBackDeploy;
  v5 = [(UARPMetaDataTLV32BackDeploy *)&v7 generateTLV:v3 tlvValue:v4];

  return v5;
}

- (id)tlvValue
{
  v2 = *(&self->super.super._tlvLength + 1);
  v5.receiver = self;
  v5.super_class = UARPTLVPersonalizationChipEpochBackDeploy;
  v3 = [(UARPMetaDataTLV32BackDeploy *)&v5 tlvValue:v2];

  return v3;
}

+ (id)metaDataTableEntry
{
  v6[0] = @"Personalization Chip Epoch";
  v5[0] = @"Name";
  v5[1] = @"Value";
  v2 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", +[UARPTLVPersonalizationChipEpochBackDeploy tlvType]);
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

    [v5 setChipEpoch:unsignedLongValue];
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
    [v5 setChipEpoch:uarpNtohl(*value)];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end