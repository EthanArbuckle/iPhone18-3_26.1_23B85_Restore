@interface ChangeLogNodeV2
+ (id)descriptor;
@end

@implementation ChangeLogNodeV2

+ (id)descriptor
{
  result = qword_100155FA0;
  if (!qword_100155FA0)
  {
    LODWORD(v3) = 28;
    result = [TransparencyGPBDescriptor allocDescriptorForClass:ChangeLogNodeV2 messageName:@"ChangeLogNodeV2" fileDescription:&unk_1001516B0 fields:&off_100151BA8 fieldCount:1 storageSize:16 flags:v3];
    qword_100155FA0 = result;
  }

  return result;
}

@end