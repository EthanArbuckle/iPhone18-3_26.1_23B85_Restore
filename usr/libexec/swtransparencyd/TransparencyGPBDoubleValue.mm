@interface TransparencyGPBDoubleValue
+ (id)descriptor;
@end

@implementation TransparencyGPBDoubleValue

+ (id)descriptor
{
  result = qword_10015D0C0;
  if (!qword_10015D0C0)
  {
    LODWORD(v3) = 28;
    result = [TransparencyGPBDescriptor allocDescriptorForClass:TransparencyGPBDoubleValue messageName:@"DoubleValue" fileDescription:off_100155B68 fields:&off_100155B48 fieldCount:1 storageSize:16 flags:v3];
    qword_10015D0C0 = result;
  }

  return result;
}

@end