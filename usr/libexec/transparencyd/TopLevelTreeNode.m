@interface TopLevelTreeNode
+ (id)descriptor;
@end

@implementation TopLevelTreeNode

+ (id)descriptor
{
  v2 = qword_10039C8A8;
  if (!qword_10039C8A8)
  {
    LODWORD(v4) = 28;
    v2 = [TransparencyGPBDescriptor allocDescriptorForClass:TopLevelTreeNode messageName:@"TopLevelTreeNode" fileDescription:&unk_10038A4D8 fields:&off_10038AA10 fieldCount:1 storageSize:16 flags:v4];
    [v2 setupExtraTextInfo:&unk_1002DF617];
    qword_10039C8A8 = v2;
  }

  return v2;
}

@end