@interface TransparencyGPBBoolValue
+ (id)descriptor;
@end

@implementation TransparencyGPBBoolValue

+ (id)descriptor
{
  result = qword_10015D0F0;
  if (!qword_10015D0F0)
  {
    LODWORD(v3) = 28;
    result = [TransparencyGPBDescriptor allocDescriptorForClass:TransparencyGPBBoolValue messageName:@"BoolValue" fileDescription:off_100155B68 fields:&off_100155C20 fieldCount:1 storageSize:4 flags:v3];
    qword_10015D0F0 = result;
  }

  return result;
}

@end