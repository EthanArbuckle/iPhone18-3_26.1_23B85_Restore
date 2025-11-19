@interface TransparencyGPBFieldMask
+ (id)descriptor;
@end

@implementation TransparencyGPBFieldMask

+ (id)descriptor
{
  result = qword_10015D010;
  if (!qword_10015D010)
  {
    LODWORD(v3) = 28;
    result = [TransparencyGPBDescriptor allocDescriptorForClass:TransparencyGPBFieldMask messageName:@"FieldMask" fileDescription:off_100155508 fields:&off_1001554E8 fieldCount:1 storageSize:16 flags:v3];
    qword_10015D010 = result;
  }

  return result;
}

@end