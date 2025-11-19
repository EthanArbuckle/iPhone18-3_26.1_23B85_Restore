@interface TransparencyGPBOption
+ (id)descriptor;
@end

@implementation TransparencyGPBOption

+ (id)descriptor
{
  result = qword_10039C690;
  if (!qword_10039C690)
  {
    LODWORD(v3) = 28;
    result = [TransparencyGPBDescriptor allocDescriptorForClass:TransparencyGPBOption messageName:@"Option" fileDescription:off_100389148 fields:&off_1003893A0 fieldCount:2 storageSize:24 flags:v3];
    qword_10039C690 = result;
  }

  return result;
}

@end