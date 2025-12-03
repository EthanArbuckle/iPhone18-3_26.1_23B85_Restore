@interface UARPTLVPersonalizationNonceBackDeploy
+ (id)metaDataTableEntry;
+ (id)tlvFromPropertyListValue:(id)value;
+ (id)tlvWithLength:(unint64_t)length value:(void *)value;
- (UARPTLVPersonalizationNonceBackDeploy)init;
- (id)description;
- (id)generateTLV;
- (void)setNonce:(id)nonce;
@end

@implementation UARPTLVPersonalizationNonceBackDeploy

- (UARPTLVPersonalizationNonceBackDeploy)init
{
  v3.receiver = self;
  v3.super_class = UARPTLVPersonalizationNonceBackDeploy;
  return [(UARPMetaDataTLVDataBackDeploy *)&v3 init];
}

- (void)setNonce:(id)nonce
{
  nonceCopy = nonce;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v6 = [nonceCopy copy];
  v7 = *(&selfCopy->super.super._tlvLength + 1);
  *(&selfCopy->super.super._tlvLength + 1) = v6;

  objc_sync_exit(selfCopy);
}

- (id)description
{
  v3 = +[UARPTLVPersonalizationNonceBackDeploy metaDataTableEntry];
  v4 = [v3 objectForKeyedSubscript:@"Name"];
  v5 = [NSString stringWithFormat:@"<%@: %@>", v4, *(&self->super.super._tlvLength + 1)];

  return v5;
}

- (id)generateTLV
{
  v3 = +[UARPTLVPersonalizationNonceBackDeploy tlvType];
  v4 = *(&self->super.super._tlvLength + 1);
  v7.receiver = self;
  v7.super_class = UARPTLVPersonalizationNonceBackDeploy;
  v5 = [(UARPMetaDataTLVDataBackDeploy *)&v7 generateTLV:v3 tlvValue:v4];

  return v5;
}

+ (id)metaDataTableEntry
{
  v6[0] = @"Personalization Nonce";
  v5[0] = @"Name";
  v5[1] = @"Value";
  v2 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", +[UARPTLVPersonalizationNonceBackDeploy tlvType]);
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
    v4 = objc_opt_new();
    [v4 setNonce:valueCopy];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)tlvWithLength:(unint64_t)length value:(void *)value
{
  v6 = objc_opt_new();
  v7 = [NSData dataWithBytes:value length:length];
  [v6 setNonce:v7];

  return v6;
}

@end