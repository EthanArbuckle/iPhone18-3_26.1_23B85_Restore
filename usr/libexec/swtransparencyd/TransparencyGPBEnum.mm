@interface TransparencyGPBEnum
+ (id)descriptor;
@end

@implementation TransparencyGPBEnum

+ (id)descriptor
{
  result = qword_10015D098;
  if (!qword_10015D098)
  {
    LODWORD(v3) = 28;
    result = [TransparencyGPBDescriptor allocDescriptorForClass:TransparencyGPBEnum messageName:@"Enum" fileDescription:off_1001558B0 fields:&off_100155A08 fieldCount:5 storageSize:40 flags:v3];
    qword_10015D098 = result;
  }

  return result;
}

@end