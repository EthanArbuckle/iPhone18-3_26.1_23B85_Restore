@interface BatchUpdateRequest
+ (id)descriptor;
@end

@implementation BatchUpdateRequest

+ (id)descriptor
{
  v2 = qword_10039C748;
  if (!qword_10039C748)
  {
    LODWORD(v4) = 28;
    v2 = [TransparencyGPBDescriptor allocDescriptorForClass:BatchUpdateRequest messageName:@"BatchUpdateRequest" fileDescription:&unk_100389868 fields:&off_1003897E8 fieldCount:4 storageSize:32 flags:v4];
    [v2 setupExtraTextInfo:&unk_1002DF19C];
    qword_10039C748 = v2;
  }

  return v2;
}

@end