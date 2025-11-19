@interface TransparencyGPBUInt32Value
+ (id)descriptor;
@end

@implementation TransparencyGPBUInt32Value

+ (id)descriptor
{
  result = qword_10039C6D0;
  if (!qword_10039C6D0)
  {
    LODWORD(v3) = 28;
    result = [TransparencyGPBDescriptor allocDescriptorForClass:TransparencyGPBUInt32Value messageName:@"UInt32Value" fileDescription:off_100389400 fields:&off_100389498 fieldCount:1 storageSize:8 flags:v3];
    qword_10039C6D0 = result;
  }

  return result;
}

@end