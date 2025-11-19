@interface TransparencyGPBApi
+ (id)descriptor;
@end

@implementation TransparencyGPBApi

+ (id)descriptor
{
  result = qword_10039C6F8;
  if (!qword_10039C6F8)
  {
    LODWORD(v3) = 28;
    result = [TransparencyGPBDescriptor allocDescriptorForClass:TransparencyGPBApi messageName:@"Api" fileDescription:off_100389650 fields:&off_100389570 fieldCount:7 storageSize:56 flags:v3];
    qword_10039C6F8 = result;
  }

  return result;
}

@end