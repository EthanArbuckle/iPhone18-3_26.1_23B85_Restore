@interface VerifySyncRequest
+ (id)descriptor;
@end

@implementation VerifySyncRequest

+ (id)descriptor
{
  v2 = qword_10039C788;
  if (!qword_10039C788)
  {
    LODWORD(v4) = 28;
    v2 = [TransparencyGPBDescriptor allocDescriptorForClass:VerifySyncRequest messageName:@"VerifySyncRequest" fileDescription:&unk_100389868 fields:&off_100389CE8 fieldCount:8 storageSize:56 flags:v4];
    [v2 setupExtraTextInfo:&unk_1002DF1DC];
    qword_10039C788 = v2;
  }

  return v2;
}

@end