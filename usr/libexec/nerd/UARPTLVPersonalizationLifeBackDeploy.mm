@interface UARPTLVPersonalizationLifeBackDeploy
+ (id)metaDataTableEntry;
+ (id)tlvFromPropertyListValue:(id)value;
+ (id)tlvWithLength:(unint64_t)length value:(void *)value;
- (UARPTLVPersonalizationLifeBackDeploy)init;
- (id)description;
- (id)generateTLV;
- (id)tlvValue;
- (void)setLife:(unsigned __int8)life;
@end

@implementation UARPTLVPersonalizationLifeBackDeploy

- (UARPTLVPersonalizationLifeBackDeploy)init
{
  v3.receiver = self;
  v3.super_class = UARPTLVPersonalizationLifeBackDeploy;
  return [(UARPMetaDataTLV8BackDeploy *)&v3 init];
}

- (void)setLife:(unsigned __int8)life
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  *(&selfCopy->super.super._tlvLength + 4) = life;
  objc_sync_exit(selfCopy);
}

- (id)description
{
  v3 = +[UARPTLVPersonalizationLifeBackDeploy metaDataTableEntry];
  v4 = [v3 objectForKeyedSubscript:@"Name"];
  v5 = [NSString stringWithFormat:@"<%@: 0x%02x>", v4, *(&self->super.super._tlvLength + 4)];

  return v5;
}

- (id)generateTLV
{
  v3 = +[UARPTLVPersonalizationLifeBackDeploy tlvType];
  v4 = *(&self->super.super._tlvLength + 4);
  v7.receiver = self;
  v7.super_class = UARPTLVPersonalizationLifeBackDeploy;
  v5 = [(UARPMetaDataTLV8BackDeploy *)&v7 generateTLV:v3 tlvValue:v4];

  return v5;
}

- (id)tlvValue
{
  v2 = *(&self->super.super._tlvLength + 4);
  v5.receiver = self;
  v5.super_class = UARPTLVPersonalizationLifeBackDeploy;
  v3 = [(UARPMetaDataTLV8BackDeploy *)&v5 tlvValue:v2];

  return v3;
}

+ (id)metaDataTableEntry
{
  v6[0] = @"Personalization Life";
  v5[0] = @"Name";
  v5[1] = @"Value";
  v2 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", +[UARPTLVPersonalizationLifeBackDeploy tlvType]);
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

    [v5 setLife:unsignedCharValue];
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
    [v5 setLife:*value];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end