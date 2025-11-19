@interface TransparencyGPBStringValue
+ (id)descriptor;
@end

@implementation TransparencyGPBStringValue

+ (id)descriptor
{
  result = qword_10039C6E0;
  if (!qword_10039C6E0)
  {
    LODWORD(v3) = 28;
    result = [TransparencyGPBDescriptor allocDescriptorForClass:TransparencyGPBStringValue messageName:@"StringValue" fileDescription:off_100389400 fields:&off_1003894D8 fieldCount:1 storageSize:16 flags:v3];
    qword_10039C6E0 = result;
  }

  return result;
}

@end