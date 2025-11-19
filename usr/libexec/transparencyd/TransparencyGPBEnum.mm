@interface TransparencyGPBEnum
+ (id)descriptor;
@end

@implementation TransparencyGPBEnum

+ (id)descriptor
{
  result = qword_10039C680;
  if (!qword_10039C680)
  {
    LODWORD(v3) = 28;
    result = [TransparencyGPBDescriptor allocDescriptorForClass:TransparencyGPBEnum messageName:@"Enum" fileDescription:off_100389148 fields:&off_1003892A0 fieldCount:5 storageSize:40 flags:v3];
    qword_10039C680 = result;
  }

  return result;
}

@end