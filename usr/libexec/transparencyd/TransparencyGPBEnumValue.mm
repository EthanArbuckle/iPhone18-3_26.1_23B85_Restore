@interface TransparencyGPBEnumValue
+ (id)descriptor;
@end

@implementation TransparencyGPBEnumValue

+ (id)descriptor
{
  result = qword_10039C688;
  if (!qword_10039C688)
  {
    LODWORD(v3) = 28;
    result = [TransparencyGPBDescriptor allocDescriptorForClass:TransparencyGPBEnumValue messageName:@"EnumValue" fileDescription:off_100389148 fields:&off_100389340 fieldCount:3 storageSize:24 flags:v3];
    qword_10039C688 = result;
  }

  return result;
}

@end