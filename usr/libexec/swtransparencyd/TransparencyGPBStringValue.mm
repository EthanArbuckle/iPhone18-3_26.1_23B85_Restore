@interface TransparencyGPBStringValue
+ (id)descriptor;
@end

@implementation TransparencyGPBStringValue

+ (id)descriptor
{
  result = qword_10015D0F8;
  if (!qword_10015D0F8)
  {
    LODWORD(v3) = 28;
    result = [TransparencyGPBDescriptor allocDescriptorForClass:TransparencyGPBStringValue messageName:@"StringValue" fileDescription:off_100155B68 fields:&off_100155C40 fieldCount:1 storageSize:16 flags:v3];
    qword_10015D0F8 = result;
  }

  return result;
}

@end