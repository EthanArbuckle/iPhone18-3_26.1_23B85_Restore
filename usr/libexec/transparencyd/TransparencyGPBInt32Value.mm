@interface TransparencyGPBInt32Value
+ (id)descriptor;
@end

@implementation TransparencyGPBInt32Value

+ (id)descriptor
{
  result = qword_10039C6C8;
  if (!qword_10039C6C8)
  {
    LODWORD(v3) = 28;
    result = [TransparencyGPBDescriptor allocDescriptorForClass:TransparencyGPBInt32Value messageName:@"Int32Value" fileDescription:off_100389400 fields:&off_100389478 fieldCount:1 storageSize:8 flags:v3];
    qword_10039C6C8 = result;
  }

  return result;
}

@end