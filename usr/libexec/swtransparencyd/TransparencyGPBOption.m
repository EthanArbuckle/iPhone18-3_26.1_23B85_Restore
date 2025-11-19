@interface TransparencyGPBOption
+ (id)descriptor;
@end

@implementation TransparencyGPBOption

+ (id)descriptor
{
  result = qword_10015D0A8;
  if (!qword_10015D0A8)
  {
    LODWORD(v3) = 28;
    result = [TransparencyGPBDescriptor allocDescriptorForClass:TransparencyGPBOption messageName:@"Option" fileDescription:off_1001558B0 fields:&off_100155B08 fieldCount:2 storageSize:24 flags:v3];
    qword_10015D0A8 = result;
  }

  return result;
}

@end