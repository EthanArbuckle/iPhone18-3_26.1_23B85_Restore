@interface UARPTLVPersonalizationManifestSuffixBackDeploy
+ (id)metaDataTableEntry;
+ (id)tlvFromPropertyListValue:(id)value;
+ (id)tlvWithLength:(unint64_t)length value:(void *)value;
- (UARPTLVPersonalizationManifestSuffixBackDeploy)init;
- (id)description;
- (id)generateTLV;
- (id)tlvValue;
- (void)setManifestSuffix:(id)suffix;
@end

@implementation UARPTLVPersonalizationManifestSuffixBackDeploy

- (UARPTLVPersonalizationManifestSuffixBackDeploy)init
{
  v3.receiver = self;
  v3.super_class = UARPTLVPersonalizationManifestSuffixBackDeploy;
  return [(UARPMetaDataTLVStringBackDeploy *)&v3 init];
}

- (void)setManifestSuffix:(id)suffix
{
  suffixCopy = suffix;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v6 = [suffixCopy copy];
  v7 = *(&selfCopy->super.super._tlvLength + 1);
  *(&selfCopy->super.super._tlvLength + 1) = v6;

  objc_sync_exit(selfCopy);
}

- (id)description
{
  v3 = +[UARPTLVPersonalizationManifestSuffixBackDeploy metaDataTableEntry];
  v4 = [v3 objectForKeyedSubscript:@"Name"];
  v5 = [NSString stringWithFormat:@"<%@: %@>", v4, *(&self->super.super._tlvLength + 1)];

  return v5;
}

- (id)generateTLV
{
  v3 = +[UARPTLVPersonalizationManifestSuffixBackDeploy tlvType];
  v4 = *(&self->super.super._tlvLength + 1);
  v7.receiver = self;
  v7.super_class = UARPTLVPersonalizationManifestSuffixBackDeploy;
  v5 = [(UARPMetaDataTLVStringBackDeploy *)&v7 generateTLV:v3 tlvValue:v4];

  return v5;
}

- (id)tlvValue
{
  v2 = *(&self->super.super._tlvLength + 1);
  v5.receiver = self;
  v5.super_class = UARPTLVPersonalizationManifestSuffixBackDeploy;
  v3 = [(UARPMetaDataTLVStringBackDeploy *)&v5 tlvValue:v2];

  return v3;
}

+ (id)metaDataTableEntry
{
  v6[0] = @"Personalization Manifest Suffix";
  v5[0] = @"Name";
  v5[1] = @"Value";
  v2 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", +[UARPTLVPersonalizationManifestSuffixBackDeploy tlvType]);
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
    [v4 setManifestSuffix:valueCopy];
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
  v7 = [[NSString alloc] initWithBytes:value length:length encoding:4];
  [v6 setManifestSuffix:v7];

  return v6;
}

@end