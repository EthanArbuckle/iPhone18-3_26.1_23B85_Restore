@interface TransparencyGPBBytesValue
+ (id)descriptor;
@end

@implementation TransparencyGPBBytesValue

+ (id)descriptor
{
  result = qword_10039C6E8;
  if (!qword_10039C6E8)
  {
    LODWORD(v3) = 28;
    result = [TransparencyGPBDescriptor allocDescriptorForClass:TransparencyGPBBytesValue messageName:@"BytesValue" fileDescription:off_100389400 fields:&off_1003894F8 fieldCount:1 storageSize:16 flags:v3];
    qword_10039C6E8 = result;
  }

  return result;
}

@end