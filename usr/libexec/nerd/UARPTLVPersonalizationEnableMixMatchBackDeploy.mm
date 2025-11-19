@interface UARPTLVPersonalizationEnableMixMatchBackDeploy
+ (id)metaDataTableEntry;
+ (id)tlvFromPropertyListValue:(id)a3;
+ (id)tlvWithLength:(unint64_t)a3 value:(void *)a4;
- (UARPTLVPersonalizationEnableMixMatchBackDeploy)init;
- (id)description;
- (id)generateTLV;
- (id)tlvValue;
- (void)setEnableMixMatch:(unsigned __int8)a3;
@end

@implementation UARPTLVPersonalizationEnableMixMatchBackDeploy

- (UARPTLVPersonalizationEnableMixMatchBackDeploy)init
{
  v3.receiver = self;
  v3.super_class = UARPTLVPersonalizationEnableMixMatchBackDeploy;
  return [(UARPMetaDataTLV8BackDeploy *)&v3 init];
}

- (void)setEnableMixMatch:(unsigned __int8)a3
{
  v4 = self;
  objc_sync_enter(v4);
  *(&v4->super.super._tlvLength + 4) = a3;
  objc_sync_exit(v4);
}

- (id)description
{
  v3 = +[UARPTLVPersonalizationEnableMixMatchBackDeploy metaDataTableEntry];
  v4 = [v3 objectForKeyedSubscript:@"Name"];
  v5 = v4;
  if (*(&self->super.super._tlvLength + 4))
  {
    v6 = @"YES";
  }

  else
  {
    v6 = @"NO";
  }

  v7 = [NSString stringWithFormat:@"<%@: %@>", v4, v6];

  return v7;
}

- (id)generateTLV
{
  v3 = +[UARPTLVPersonalizationEnableMixMatchBackDeploy tlvType];
  v4 = *(&self->super.super._tlvLength + 4);
  v7.receiver = self;
  v7.super_class = UARPTLVPersonalizationEnableMixMatchBackDeploy;
  v5 = [(UARPMetaDataTLV8BackDeploy *)&v7 generateTLV:v3 tlvValue:v4];

  return v5;
}

- (id)tlvValue
{
  v2 = *(&self->super.super._tlvLength + 4);
  v5.receiver = self;
  v5.super_class = UARPTLVPersonalizationEnableMixMatchBackDeploy;
  v3 = [(UARPMetaDataTLV8BackDeploy *)&v5 tlvValue:v2];

  return v3;
}

+ (id)metaDataTableEntry
{
  v6[0] = @"Personalization Enable Mix Match";
  v5[0] = @"Name";
  v5[1] = @"Value";
  v2 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", +[UARPTLVPersonalizationEnableMixMatchBackDeploy tlvType]);
  v6[1] = v2;
  v3 = [NSDictionary dictionaryWithObjects:v6 forKeys:v5 count:2];

  return v3;
}

+ (id)tlvFromPropertyListValue:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
    v5 = objc_opt_new();
    v6 = [v4 unsignedCharValue];

    [v5 setEnableMixMatch:v6];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)tlvWithLength:(unint64_t)a3 value:(void *)a4
{
  if (a3 == 1)
  {
    v5 = objc_opt_new();
    [v5 setEnableMixMatch:*a4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end