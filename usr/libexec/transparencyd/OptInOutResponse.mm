@interface OptInOutResponse
+ (id)descriptor;
@end

@implementation OptInOutResponse

+ (id)descriptor
{
  v2 = qword_10039C780;
  if (!qword_10039C780)
  {
    LODWORD(v4) = 28;
    v2 = [TransparencyGPBDescriptor allocDescriptorForClass:OptInOutResponse messageName:@"OptInOutResponse" fileDescription:&unk_100389868 fields:&off_100389C68 fieldCount:4 storageSize:32 flags:v4];
    [v2 setupExtraTextInfo:&unk_1002DF210];
    qword_10039C780 = v2;
  }

  return v2;
}

@end