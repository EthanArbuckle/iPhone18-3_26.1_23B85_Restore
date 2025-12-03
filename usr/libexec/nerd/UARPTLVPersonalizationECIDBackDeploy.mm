@interface UARPTLVPersonalizationECIDBackDeploy
+ (id)metaDataTableEntry;
+ (id)tlvFromPropertyListValue:(id)value;
+ (id)tlvWithLength:(unint64_t)length value:(void *)value;
- (UARPTLVPersonalizationECIDBackDeploy)init;
- (id)description;
- (id)generateTLV;
- (id)tlvValue;
- (void)setEcID:(unint64_t)d;
@end

@implementation UARPTLVPersonalizationECIDBackDeploy

- (UARPTLVPersonalizationECIDBackDeploy)init
{
  v3.receiver = self;
  v3.super_class = UARPTLVPersonalizationECIDBackDeploy;
  return [(UARPMetaDataTLV64BackDeploy *)&v3 init];
}

- (void)setEcID:(unint64_t)d
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  *(&selfCopy->super.super._tlvLength + 1) = d;
  objc_sync_exit(selfCopy);
}

- (id)description
{
  v3 = +[UARPTLVPersonalizationECIDBackDeploy metaDataTableEntry];
  v4 = [v3 objectForKeyedSubscript:@"Name"];
  v5 = [NSString stringWithFormat:@"<%@: 0x%016llx>", v4, *(&self->super.super._tlvLength + 1)];

  return v5;
}

- (id)generateTLV
{
  v3 = +[UARPTLVPersonalizationECIDBackDeploy tlvType];
  v4 = *(&self->super.super._tlvLength + 1);
  v7.receiver = self;
  v7.super_class = UARPTLVPersonalizationECIDBackDeploy;
  v5 = [(UARPMetaDataTLV64BackDeploy *)&v7 generateTLV:v3 tlvValue:v4];

  return v5;
}

- (id)tlvValue
{
  v2 = *(&self->super.super._tlvLength + 1);
  v5.receiver = self;
  v5.super_class = UARPTLVPersonalizationECIDBackDeploy;
  v3 = [(UARPMetaDataTLV64BackDeploy *)&v5 tlvValue:v2];

  return v3;
}

+ (id)metaDataTableEntry
{
  v6[0] = @"Personalization ECID";
  v5[0] = @"Name";
  v5[1] = @"Value";
  v2 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", +[UARPTLVPersonalizationECIDBackDeploy tlvType]);
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
    unsignedLongLongValue = [v4 unsignedLongLongValue];

    [v5 setEcID:unsignedLongLongValue];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)tlvWithLength:(unint64_t)length value:(void *)value
{
  if (length == 8)
  {
    v5 = objc_opt_new();
    [v5 setEcID:uarpNtohll(*value)];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end