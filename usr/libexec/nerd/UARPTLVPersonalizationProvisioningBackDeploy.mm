@interface UARPTLVPersonalizationProvisioningBackDeploy
+ (id)metaDataTableEntry;
+ (id)tlvFromPropertyListValue:(id)a3;
+ (id)tlvWithLength:(unint64_t)a3 value:(void *)a4;
- (UARPTLVPersonalizationProvisioningBackDeploy)init;
- (id)description;
- (id)generateTLV;
- (id)tlvValue;
- (void)setProvisioning:(unsigned __int8)a3;
@end

@implementation UARPTLVPersonalizationProvisioningBackDeploy

- (UARPTLVPersonalizationProvisioningBackDeploy)init
{
  v3.receiver = self;
  v3.super_class = UARPTLVPersonalizationProvisioningBackDeploy;
  return [(UARPMetaDataTLV8BackDeploy *)&v3 init];
}

- (void)setProvisioning:(unsigned __int8)a3
{
  v4 = self;
  objc_sync_enter(v4);
  *(&v4->super.super._tlvLength + 4) = a3;
  objc_sync_exit(v4);
}

- (id)description
{
  v3 = +[UARPTLVPersonalizationProvisioningBackDeploy metaDataTableEntry];
  v4 = [v3 objectForKeyedSubscript:@"Name"];
  v5 = [NSString stringWithFormat:@"<%@: 0x%02x>", v4, *(&self->super.super._tlvLength + 4)];

  return v5;
}

- (id)generateTLV
{
  v3 = +[UARPTLVPersonalizationProvisioningBackDeploy tlvType];
  v4 = *(&self->super.super._tlvLength + 4);
  v7.receiver = self;
  v7.super_class = UARPTLVPersonalizationProvisioningBackDeploy;
  v5 = [(UARPMetaDataTLV8BackDeploy *)&v7 generateTLV:v3 tlvValue:v4];

  return v5;
}

- (id)tlvValue
{
  v2 = *(&self->super.super._tlvLength + 4);
  v5.receiver = self;
  v5.super_class = UARPTLVPersonalizationProvisioningBackDeploy;
  v3 = [(UARPMetaDataTLV8BackDeploy *)&v5 tlvValue:v2];

  return v3;
}

+ (id)metaDataTableEntry
{
  v6[0] = @"Personalization Provisioning";
  v5[0] = @"Name";
  v5[1] = @"Value";
  v2 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", +[UARPTLVPersonalizationProvisioningBackDeploy tlvType]);
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

    [v5 setProvisioning:v6];
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
    [v5 setProvisioning:*a4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end