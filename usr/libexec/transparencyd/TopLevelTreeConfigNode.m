@interface TopLevelTreeConfigNode
+ (id)descriptor;
@end

@implementation TopLevelTreeConfigNode

+ (id)descriptor
{
  v2 = qword_10039C8B8;
  if (!qword_10039C8B8)
  {
    LODWORD(v4) = 28;
    v2 = [TransparencyGPBDescriptor allocDescriptorForClass:TopLevelTreeConfigNode messageName:@"TopLevelTreeConfigNode" fileDescription:&unk_10038A4D8 fields:&off_10038AA90 fieldCount:2 storageSize:16 flags:v4];
    [v2 setupExtraTextInfo:&unk_1002DF630];
    qword_10039C8B8 = v2;
  }

  return v2;
}

@end