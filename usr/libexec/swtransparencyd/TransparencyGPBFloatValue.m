@interface TransparencyGPBFloatValue
+ (id)descriptor;
@end

@implementation TransparencyGPBFloatValue

+ (id)descriptor
{
  result = qword_10015D0C8;
  if (!qword_10015D0C8)
  {
    LODWORD(v3) = 28;
    result = [TransparencyGPBDescriptor allocDescriptorForClass:TransparencyGPBFloatValue messageName:@"FloatValue" fileDescription:off_100155B68 fields:&off_100155B80 fieldCount:1 storageSize:8 flags:v3];
    qword_10015D0C8 = result;
  }

  return result;
}

@end