@interface PerApplicationTreeNode
+ (id)descriptor;
@end

@implementation PerApplicationTreeNode

+ (id)descriptor
{
  v2 = qword_100155FA8;
  if (!qword_100155FA8)
  {
    LODWORD(v4) = 28;
    v2 = [TransparencyGPBDescriptor allocDescriptorForClass:PerApplicationTreeNode messageName:@"PerApplicationTreeNode" fileDescription:&unk_1001516B0 fields:&off_100151BC8 fieldCount:1 storageSize:16 flags:v4];
    [v2 setupExtraTextInfo:&unk_100102EEE];
    qword_100155FA8 = v2;
  }

  return v2;
}

@end