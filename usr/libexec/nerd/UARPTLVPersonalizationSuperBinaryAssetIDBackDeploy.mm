@interface UARPTLVPersonalizationSuperBinaryAssetIDBackDeploy
+ (id)metaDataTableEntry;
+ (id)tlvFromPropertyListValue:(id)value;
+ (id)tlvWithLength:(unint64_t)length value:(void *)value;
- (UARPTLVPersonalizationSuperBinaryAssetIDBackDeploy)init;
- (id)description;
- (id)generateTLV;
- (id)tlvValue;
- (void)setAssetID:(unsigned __int16)d;
@end

@implementation UARPTLVPersonalizationSuperBinaryAssetIDBackDeploy

- (UARPTLVPersonalizationSuperBinaryAssetIDBackDeploy)init
{
  v3.receiver = self;
  v3.super_class = UARPTLVPersonalizationSuperBinaryAssetIDBackDeploy;
  return [(UARPMetaDataTLV16BackDeploy *)&v3 init];
}

- (void)setAssetID:(unsigned __int16)d
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  *(&selfCopy->super.super._tlvLength + 2) = d;
  objc_sync_exit(selfCopy);
}

- (id)description
{
  v3 = +[UARPTLVPersonalizationSuperBinaryAssetIDBackDeploy metaDataTableEntry];
  v4 = [v3 objectForKeyedSubscript:@"Name"];
  v5 = [NSString stringWithFormat:@"<%@: %u>", v4, *(&self->super.super._tlvLength + 2)];

  return v5;
}

- (id)generateTLV
{
  v3 = +[UARPTLVPersonalizationSuperBinaryAssetIDBackDeploy tlvType];
  v4 = *(&self->super.super._tlvLength + 2);
  v7.receiver = self;
  v7.super_class = UARPTLVPersonalizationSuperBinaryAssetIDBackDeploy;
  v5 = [(UARPMetaDataTLV16BackDeploy *)&v7 generateTLV:v3 tlvValue:v4];

  return v5;
}

- (id)tlvValue
{
  v2 = *(&self->super.super._tlvLength + 2);
  v5.receiver = self;
  v5.super_class = UARPTLVPersonalizationSuperBinaryAssetIDBackDeploy;
  v3 = [(UARPMetaDataTLV16BackDeploy *)&v5 tlvValue:v2];

  return v3;
}

+ (id)metaDataTableEntry
{
  v6[0] = @"Personalization SuperBinary AssetID";
  v5[0] = @"Name";
  v5[1] = @"Value";
  v2 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", +[UARPTLVPersonalizationSuperBinaryAssetIDBackDeploy tlvType]);
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
    unsignedShortValue = [v4 unsignedShortValue];

    [v5 setAssetID:unsignedShortValue];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)tlvWithLength:(unint64_t)length value:(void *)value
{
  if (length == 2)
  {
    v5 = objc_opt_new();
    [v5 setAssetID:uarpNtohs(*value)];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end