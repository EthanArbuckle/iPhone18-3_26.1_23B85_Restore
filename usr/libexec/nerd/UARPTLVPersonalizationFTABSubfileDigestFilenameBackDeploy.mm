@interface UARPTLVPersonalizationFTABSubfileDigestFilenameBackDeploy
+ (id)metaDataTableEntry;
+ (id)tlvFromPropertyListValue:(id)value;
+ (id)tlvWithLength:(unint64_t)length value:(void *)value;
- (UARPTLVPersonalizationFTABSubfileDigestFilenameBackDeploy)init;
- (id)description;
- (id)generateTLV;
- (id)tlvValue;
- (void)setFilename:(id)filename;
@end

@implementation UARPTLVPersonalizationFTABSubfileDigestFilenameBackDeploy

- (UARPTLVPersonalizationFTABSubfileDigestFilenameBackDeploy)init
{
  v3.receiver = self;
  v3.super_class = UARPTLVPersonalizationFTABSubfileDigestFilenameBackDeploy;
  return [(UARPMetaDataTLVStringBackDeploy *)&v3 init];
}

- (void)setFilename:(id)filename
{
  filenameCopy = filename;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v6 = [filenameCopy copy];
  v7 = *(&selfCopy->super.super._tlvLength + 1);
  *(&selfCopy->super.super._tlvLength + 1) = v6;

  objc_sync_exit(selfCopy);
}

- (id)description
{
  v3 = +[UARPTLVPersonalizationFTABSubfileDigestFilenameBackDeploy metaDataTableEntry];
  v4 = [v3 objectForKeyedSubscript:@"Name"];
  v5 = [NSString stringWithFormat:@"<%@: %@>", v4, *(&self->super.super._tlvLength + 1)];

  return v5;
}

- (id)generateTLV
{
  v3 = +[UARPTLVPersonalizationFTABSubfileDigestFilenameBackDeploy tlvType];
  v4 = *(&self->super.super._tlvLength + 1);
  v7.receiver = self;
  v7.super_class = UARPTLVPersonalizationFTABSubfileDigestFilenameBackDeploy;
  v5 = [(UARPMetaDataTLVStringBackDeploy *)&v7 generateTLV:v3 tlvValue:v4];

  return v5;
}

- (id)tlvValue
{
  v2 = *(&self->super.super._tlvLength + 1);
  v5.receiver = self;
  v5.super_class = UARPTLVPersonalizationFTABSubfileDigestFilenameBackDeploy;
  v3 = [(UARPMetaDataTLVStringBackDeploy *)&v5 tlvValue:v2];

  return v3;
}

+ (id)metaDataTableEntry
{
  v6[0] = &off_1000A7F30;
  v5[0] = @"Name";
  v5[1] = @"Value";
  v2 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", +[UARPTLVPersonalizationFTABSubfileDigestFilenameBackDeploy tlvType]);
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
    [v4 setFilename:valueCopy];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)tlvWithLength:(unint64_t)length value:(void *)value
{
  v4 = strndup(value, length);
  v5 = objc_opt_new();
  v6 = [NSString stringWithUTF8String:v4];
  [v5 setFilename:v6];

  free(v4);

  return v5;
}

@end