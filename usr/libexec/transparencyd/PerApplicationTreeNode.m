@interface PerApplicationTreeNode
+ (id)descriptor;
@end

@implementation PerApplicationTreeNode

+ (id)descriptor
{
  v2 = qword_10039C8A0;
  if (!qword_10039C8A0)
  {
    LODWORD(v4) = 28;
    v2 = [TransparencyGPBDescriptor allocDescriptorForClass:PerApplicationTreeNode messageName:@"PerApplicationTreeNode" fileDescription:&unk_10038A4D8 fields:&off_10038A9F0 fieldCount:1 storageSize:16 flags:v4];
    [v2 setupExtraTextInfo:&unk_1002DF612];
    qword_10039C8A0 = v2;
  }

  return v2;
}

@end