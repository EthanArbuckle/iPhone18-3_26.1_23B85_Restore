@interface TransparencyGPBType
+ (id)descriptor;
@end

@implementation TransparencyGPBType

+ (id)descriptor
{
  result = qword_10039C670;
  if (!qword_10039C670)
  {
    LODWORD(v3) = 28;
    result = [TransparencyGPBDescriptor allocDescriptorForClass:TransparencyGPBType messageName:@"Type" fileDescription:off_100389148 fields:&off_100389088 fieldCount:6 storageSize:48 flags:v3];
    qword_10039C670 = result;
  }

  return result;
}

@end