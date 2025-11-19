@interface BatchUpdateResponse
+ (id)descriptor;
@end

@implementation BatchUpdateResponse

+ (id)descriptor
{
  v2 = qword_10039C760;
  if (!qword_10039C760)
  {
    LODWORD(v4) = 28;
    v2 = [TransparencyGPBDescriptor allocDescriptorForClass:BatchUpdateResponse messageName:@"BatchUpdateResponse" fileDescription:&unk_100389868 fields:&off_100389AA0 fieldCount:3 storageSize:24 flags:v4];
    [v2 setupExtraTextInfo:&unk_1002DF1CC];
    qword_10039C760 = v2;
  }

  return v2;
}

@end