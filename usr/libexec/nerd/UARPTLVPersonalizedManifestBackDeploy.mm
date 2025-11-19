@interface UARPTLVPersonalizedManifestBackDeploy
+ (id)metaDataTableEntry;
+ (id)tlvFromPropertyListValue:(id)a3;
+ (id)tlvWithLength:(unint64_t)a3 value:(void *)a4;
- (UARPTLVPersonalizedManifestBackDeploy)init;
- (id)description;
- (id)generateTLV;
- (void)setManifest:(id)a3;
@end

@implementation UARPTLVPersonalizedManifestBackDeploy

- (UARPTLVPersonalizedManifestBackDeploy)init
{
  v3.receiver = self;
  v3.super_class = UARPTLVPersonalizedManifestBackDeploy;
  return [(UARPMetaDataTLVDataBackDeploy *)&v3 init];
}

- (void)setManifest:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v6 = [v4 copy];
  v7 = *(&v5->super.super._tlvLength + 1);
  *(&v5->super.super._tlvLength + 1) = v6;

  objc_sync_exit(v5);
}

- (id)description
{
  v3 = +[UARPTLVPersonalizedManifestBackDeploy metaDataTableEntry];
  v4 = [v3 objectForKeyedSubscript:@"Name"];
  v5 = [NSString stringWithFormat:@"<%@: %@>", v4, *(&self->super.super._tlvLength + 1)];

  return v5;
}

- (id)generateTLV
{
  v3 = +[UARPTLVPersonalizedManifestBackDeploy tlvType];
  v4 = *(&self->super.super._tlvLength + 1);
  v7.receiver = self;
  v7.super_class = UARPTLVPersonalizedManifestBackDeploy;
  v5 = [(UARPMetaDataTLVDataBackDeploy *)&v7 generateTLV:v3 tlvValue:v4];

  return v5;
}

+ (id)metaDataTableEntry
{
  v6[0] = @"Personalized Manifest";
  v5[0] = @"Name";
  v5[1] = @"Value";
  v2 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", +[UARPTLVPersonalizedManifestBackDeploy tlvType]);
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
    v4 = objc_opt_new();
    [v4 setManifest:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)tlvWithLength:(unint64_t)a3 value:(void *)a4
{
  v6 = objc_opt_new();
  v7 = [NSData dataWithBytes:a4 length:a3];
  [v6 setManifest:v7];

  return v6;
}

@end