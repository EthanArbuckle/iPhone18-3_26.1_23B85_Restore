@interface TransparencyGPBInt32Value
+ (id)descriptor;
@end

@implementation TransparencyGPBInt32Value

+ (id)descriptor
{
  result = qword_10015D0E0;
  if (!qword_10015D0E0)
  {
    LODWORD(v3) = 28;
    result = [TransparencyGPBDescriptor allocDescriptorForClass:TransparencyGPBInt32Value messageName:@"Int32Value" fileDescription:off_100155B68 fields:&off_100155BE0 fieldCount:1 storageSize:8 flags:v3];
    qword_10015D0E0 = result;
  }

  return result;
}

@end