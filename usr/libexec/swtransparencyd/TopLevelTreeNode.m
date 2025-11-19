@interface TopLevelTreeNode
+ (id)descriptor;
@end

@implementation TopLevelTreeNode

+ (id)descriptor
{
  v2 = qword_100155FB0;
  if (!qword_100155FB0)
  {
    LODWORD(v4) = 28;
    v2 = [TransparencyGPBDescriptor allocDescriptorForClass:TopLevelTreeNode messageName:@"TopLevelTreeNode" fileDescription:&unk_1001516B0 fields:&off_100151BE8 fieldCount:1 storageSize:16 flags:v4];
    [v2 setupExtraTextInfo:&unk_100102EF3];
    qword_100155FB0 = v2;
  }

  return v2;
}

@end