@interface TransparencyGPBUInt64Value
+ (id)descriptor;
@end

@implementation TransparencyGPBUInt64Value

+ (id)descriptor
{
  result = qword_10039C6C0;
  if (!qword_10039C6C0)
  {
    LODWORD(v3) = 28;
    result = [TransparencyGPBDescriptor allocDescriptorForClass:TransparencyGPBUInt64Value messageName:@"UInt64Value" fileDescription:off_100389400 fields:&off_100389458 fieldCount:1 storageSize:16 flags:v3];
    qword_10039C6C0 = result;
  }

  return result;
}

@end