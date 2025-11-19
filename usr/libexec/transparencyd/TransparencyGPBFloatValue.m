@interface TransparencyGPBFloatValue
+ (id)descriptor;
@end

@implementation TransparencyGPBFloatValue

+ (id)descriptor
{
  result = qword_10039C6B0;
  if (!qword_10039C6B0)
  {
    LODWORD(v3) = 28;
    result = [TransparencyGPBDescriptor allocDescriptorForClass:TransparencyGPBFloatValue messageName:@"FloatValue" fileDescription:off_100389400 fields:&off_100389418 fieldCount:1 storageSize:8 flags:v3];
    qword_10039C6B0 = result;
  }

  return result;
}

@end