@interface VRFPublicKey
+ (id)descriptor;
- (BOOL)needsRefresh;
@end

@implementation VRFPublicKey

+ (id)descriptor
{
  v2 = qword_10039C850;
  if (!qword_10039C850)
  {
    LODWORD(v4) = 28;
    v2 = [TransparencyGPBDescriptor allocDescriptorForClass:VRFPublicKey messageName:@"VRFPublicKey" fileDescription:&unk_10038A4D8 fields:&off_10038A4F0 fieldCount:2 storageSize:16 flags:v4];
    [v2 setupExtraTextInfo:&unk_1002DF588];
    qword_10039C850 = v2;
  }

  return v2;
}

- (BOOL)needsRefresh
{
  v2 = objc_getAssociatedObject(self, @"needsRefresh");
  v3 = [v2 BOOLValue];

  return v3;
}

@end