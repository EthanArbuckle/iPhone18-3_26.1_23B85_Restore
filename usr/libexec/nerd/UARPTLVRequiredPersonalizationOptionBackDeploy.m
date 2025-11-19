@interface UARPTLVRequiredPersonalizationOptionBackDeploy
+ (id)metaDataTableEntry;
+ (id)tlvFromPropertyListValue:(id)a3;
+ (id)tlvWithLength:(unint64_t)a3 value:(void *)a4;
- (UARPTLVRequiredPersonalizationOptionBackDeploy)init;
- (id)description;
- (id)generateTLV;
- (id)tlvValue;
- (void)setTssOption:(unsigned int)a3;
@end

@implementation UARPTLVRequiredPersonalizationOptionBackDeploy

- (UARPTLVRequiredPersonalizationOptionBackDeploy)init
{
  v3.receiver = self;
  v3.super_class = UARPTLVRequiredPersonalizationOptionBackDeploy;
  return [(UARPMetaDataTLV32BackDeploy *)&v3 init];
}

- (void)setTssOption:(unsigned int)a3
{
  v4 = self;
  objc_sync_enter(v4);
  *(&v4->super.super._tlvLength + 1) = a3;
  objc_sync_exit(v4);
}

- (id)description
{
  v3 = +[UARPTLVRequiredPersonalizationOptionBackDeploy metaDataTableEntry];
  v4 = [v3 objectForKeyedSubscript:@"Name"];
  v5 = [UARPMetaDataTLVBackDeploy tlvTypeName:*(&self->super.super._tlvLength + 1)];
  v6 = [NSString stringWithFormat:@"<%@: %@>", v4, v5];

  return v6;
}

- (id)generateTLV
{
  v3 = +[UARPTLVRequiredPersonalizationOptionBackDeploy tlvType];
  v4 = *(&self->super.super._tlvLength + 1);
  v7.receiver = self;
  v7.super_class = UARPTLVRequiredPersonalizationOptionBackDeploy;
  v5 = [(UARPMetaDataTLV32BackDeploy *)&v7 generateTLV:v3 tlvValue:v4];

  return v5;
}

- (id)tlvValue
{
  v2 = *(&self->super.super._tlvLength + 1);
  v5.receiver = self;
  v5.super_class = UARPTLVRequiredPersonalizationOptionBackDeploy;
  v3 = [(UARPMetaDataTLV32BackDeploy *)&v5 tlvValue:v2];

  return v3;
}

+ (id)metaDataTableEntry
{
  v6[0] = @"Required Personalization Option";
  v5[0] = @"Name";
  v5[1] = @"Value";
  v2 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", +[UARPTLVRequiredPersonalizationOptionBackDeploy tlvType]);
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
    v6 = [v4 unsignedLongValue];

    [v5 setTssOption:v6];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)tlvWithLength:(unint64_t)a3 value:(void *)a4
{
  if (a3 == 4)
  {
    v5 = objc_opt_new();
    [v5 setTssOption:uarpNtohl(*a4)];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end