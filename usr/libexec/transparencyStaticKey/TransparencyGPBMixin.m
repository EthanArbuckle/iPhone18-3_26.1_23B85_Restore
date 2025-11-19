@interface TransparencyGPBMixin
+ (id)descriptor;
@end

@implementation TransparencyGPBMixin

+ (id)descriptor
{
  result = qword_1000AED68;
  if (!qword_1000AED68)
  {
    LODWORD(v3) = 28;
    result = [TransparencyGPBDescriptor allocDescriptorForClass:TransparencyGPBMixin messageName:@"Mixin" fileDescription:off_1000ADB28 fields:&off_1000ADC20 fieldCount:2 storageSize:24 flags:v3];
    qword_1000AED68 = result;
  }

  return result;
}

@end