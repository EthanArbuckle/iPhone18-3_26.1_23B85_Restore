@interface TopLevelTreeConfigNode
+ (id)descriptor;
@end

@implementation TopLevelTreeConfigNode

+ (id)descriptor
{
  v2 = qword_100155FC0;
  if (!qword_100155FC0)
  {
    LODWORD(v4) = 28;
    v2 = [TransparencyGPBDescriptor allocDescriptorForClass:TopLevelTreeConfigNode messageName:@"TopLevelTreeConfigNode" fileDescription:&unk_1001516B0 fields:&off_100151C68 fieldCount:2 storageSize:16 flags:v4];
    [v2 setupExtraTextInfo:&unk_100102F10];
    qword_100155FC0 = v2;
  }

  return v2;
}

@end