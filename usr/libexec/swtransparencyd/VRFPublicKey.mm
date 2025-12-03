@interface VRFPublicKey
+ (id)descriptor;
- (BOOL)needsRefresh;
@end

@implementation VRFPublicKey

- (BOOL)needsRefresh
{
  v2 = objc_getAssociatedObject(self, @"needsRefresh");
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

+ (id)descriptor
{
  v2 = qword_100155F58;
  if (!qword_100155F58)
  {
    LODWORD(v4) = 28;
    v2 = [TransparencyGPBDescriptor allocDescriptorForClass:VRFPublicKey messageName:@"VRFPublicKey" fileDescription:&unk_1001516B0 fields:&off_1001516C8 fieldCount:2 storageSize:16 flags:v4];
    [v2 setupExtraTextInfo:&unk_100102E64];
    qword_100155F58 = v2;
  }

  return v2;
}

@end