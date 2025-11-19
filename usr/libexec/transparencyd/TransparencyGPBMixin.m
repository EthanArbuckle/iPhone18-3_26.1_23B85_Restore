@interface TransparencyGPBMixin
+ (id)descriptor;
@end

@implementation TransparencyGPBMixin

+ (id)descriptor
{
  result = qword_10039C708;
  if (!qword_10039C708)
  {
    LODWORD(v3) = 28;
    result = [TransparencyGPBDescriptor allocDescriptorForClass:TransparencyGPBMixin messageName:@"Mixin" fileDescription:off_100389650 fields:&off_100389748 fieldCount:2 storageSize:24 flags:v3];
    qword_10039C708 = result;
  }

  return result;
}

@end