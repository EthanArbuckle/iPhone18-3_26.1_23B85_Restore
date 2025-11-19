@interface TransparencyGPBInt64Value
+ (id)descriptor;
@end

@implementation TransparencyGPBInt64Value

+ (id)descriptor
{
  result = qword_10015D0D0;
  if (!qword_10015D0D0)
  {
    LODWORD(v3) = 28;
    result = [TransparencyGPBDescriptor allocDescriptorForClass:TransparencyGPBInt64Value messageName:@"Int64Value" fileDescription:off_100155B68 fields:&off_100155BA0 fieldCount:1 storageSize:16 flags:v3];
    qword_10015D0D0 = result;
  }

  return result;
}

@end