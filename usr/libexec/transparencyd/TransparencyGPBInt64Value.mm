@interface TransparencyGPBInt64Value
+ (id)descriptor;
@end

@implementation TransparencyGPBInt64Value

+ (id)descriptor
{
  result = qword_10039C6B8;
  if (!qword_10039C6B8)
  {
    LODWORD(v3) = 28;
    result = [TransparencyGPBDescriptor allocDescriptorForClass:TransparencyGPBInt64Value messageName:@"Int64Value" fileDescription:off_100389400 fields:&off_100389438 fieldCount:1 storageSize:16 flags:v3];
    qword_10039C6B8 = result;
  }

  return result;
}

@end