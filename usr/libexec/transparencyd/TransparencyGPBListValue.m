@interface TransparencyGPBListValue
+ (id)descriptor;
@end

@implementation TransparencyGPBListValue

+ (id)descriptor
{
  result = qword_10039C648;
  if (!qword_10039C648)
  {
    LODWORD(v3) = 28;
    result = [TransparencyGPBDescriptor allocDescriptorForClass:TransparencyGPBListValue messageName:@"ListValue" fileDescription:off_100388F30 fields:&off_100389010 fieldCount:1 storageSize:16 flags:v3];
    qword_10039C648 = result;
  }

  return result;
}

@end