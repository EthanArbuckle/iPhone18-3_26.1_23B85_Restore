@interface TransparencyGPBUInt64Value
+ (id)descriptor;
@end

@implementation TransparencyGPBUInt64Value

+ (id)descriptor
{
  result = qword_10015D0D8;
  if (!qword_10015D0D8)
  {
    LODWORD(v3) = 28;
    result = [TransparencyGPBDescriptor allocDescriptorForClass:TransparencyGPBUInt64Value messageName:@"UInt64Value" fileDescription:off_100155B68 fields:&off_100155BC0 fieldCount:1 storageSize:16 flags:v3];
    qword_10015D0D8 = result;
  }

  return result;
}

@end