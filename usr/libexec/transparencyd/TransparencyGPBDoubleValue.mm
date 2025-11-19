@interface TransparencyGPBDoubleValue
+ (id)descriptor;
@end

@implementation TransparencyGPBDoubleValue

+ (id)descriptor
{
  result = qword_10039C6A8;
  if (!qword_10039C6A8)
  {
    LODWORD(v3) = 28;
    result = [TransparencyGPBDescriptor allocDescriptorForClass:TransparencyGPBDoubleValue messageName:@"DoubleValue" fileDescription:off_100389400 fields:&off_1003893E0 fieldCount:1 storageSize:16 flags:v3];
    qword_10039C6A8 = result;
  }

  return result;
}

@end