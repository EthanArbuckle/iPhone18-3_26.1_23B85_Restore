@interface VerifySyncResponse
+ (id)descriptor;
@end

@implementation VerifySyncResponse

+ (id)descriptor
{
  v2 = qword_10039C798;
  if (!qword_10039C798)
  {
    LODWORD(v4) = 28;
    v2 = [TransparencyGPBDescriptor allocDescriptorForClass:VerifySyncResponse messageName:@"VerifySyncResponse" fileDescription:&unk_100389868 fields:&off_100389EE8 fieldCount:3 storageSize:16 flags:v4];
    [v2 setupExtraTextInfo:&unk_1002DF1CC];
    qword_10039C798 = v2;
  }

  return v2;
}

@end