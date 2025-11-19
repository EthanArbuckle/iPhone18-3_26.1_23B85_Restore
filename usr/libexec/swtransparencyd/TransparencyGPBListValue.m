@interface TransparencyGPBListValue
+ (id)descriptor;
@end

@implementation TransparencyGPBListValue

+ (id)descriptor
{
  result = qword_10015D060;
  if (!qword_10015D060)
  {
    LODWORD(v3) = 28;
    result = [TransparencyGPBDescriptor allocDescriptorForClass:TransparencyGPBListValue messageName:@"ListValue" fileDescription:off_100155698 fields:&off_100155778 fieldCount:1 storageSize:16 flags:v3];
    qword_10015D060 = result;
  }

  return result;
}

@end