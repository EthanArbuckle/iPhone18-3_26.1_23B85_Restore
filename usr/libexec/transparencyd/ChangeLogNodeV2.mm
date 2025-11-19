@interface ChangeLogNodeV2
+ (id)descriptor;
@end

@implementation ChangeLogNodeV2

+ (id)descriptor
{
  result = qword_10039C898;
  if (!qword_10039C898)
  {
    LODWORD(v3) = 28;
    result = [TransparencyGPBDescriptor allocDescriptorForClass:ChangeLogNodeV2 messageName:@"ChangeLogNodeV2" fileDescription:&unk_10038A4D8 fields:&off_10038A9D0 fieldCount:1 storageSize:16 flags:v3];
    qword_10039C898 = result;
  }

  return result;
}

@end