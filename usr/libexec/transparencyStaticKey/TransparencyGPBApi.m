@interface TransparencyGPBApi
+ (id)descriptor;
@end

@implementation TransparencyGPBApi

+ (id)descriptor
{
  result = qword_1000AED58;
  if (!qword_1000AED58)
  {
    LODWORD(v3) = 28;
    result = [TransparencyGPBDescriptor allocDescriptorForClass:TransparencyGPBApi messageName:@"Api" fileDescription:off_1000ADB28 fields:&off_1000ADA48 fieldCount:7 storageSize:56 flags:v3];
    qword_1000AED58 = result;
  }

  return result;
}

@end