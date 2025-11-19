@interface TransparencyGPBBoolValue
+ (id)descriptor;
@end

@implementation TransparencyGPBBoolValue

+ (id)descriptor
{
  result = qword_10039C6D8;
  if (!qword_10039C6D8)
  {
    LODWORD(v3) = 28;
    result = [TransparencyGPBDescriptor allocDescriptorForClass:TransparencyGPBBoolValue messageName:@"BoolValue" fileDescription:off_100389400 fields:&off_1003894B8 fieldCount:1 storageSize:4 flags:v3];
    qword_10039C6D8 = result;
  }

  return result;
}

@end