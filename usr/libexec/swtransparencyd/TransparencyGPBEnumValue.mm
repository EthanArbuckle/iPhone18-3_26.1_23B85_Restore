@interface TransparencyGPBEnumValue
+ (id)descriptor;
@end

@implementation TransparencyGPBEnumValue

+ (id)descriptor
{
  result = qword_10015D0A0;
  if (!qword_10015D0A0)
  {
    LODWORD(v3) = 28;
    result = [TransparencyGPBDescriptor allocDescriptorForClass:TransparencyGPBEnumValue messageName:@"EnumValue" fileDescription:off_1001558B0 fields:&off_100155AA8 fieldCount:3 storageSize:24 flags:v3];
    qword_10015D0A0 = result;
  }

  return result;
}

@end