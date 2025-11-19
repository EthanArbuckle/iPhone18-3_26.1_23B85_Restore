@interface TransparencyGPBEnumValue
+ (id)descriptor;
@end

@implementation TransparencyGPBEnumValue

+ (id)descriptor
{
  result = qword_1000AED30;
  if (!qword_1000AED30)
  {
    LODWORD(v3) = 28;
    result = [TransparencyGPBDescriptor allocDescriptorForClass:TransparencyGPBEnumValue messageName:@"EnumValue" fileDescription:off_1000AD630 fields:&off_1000AD828 fieldCount:3 storageSize:24 flags:v3];
    qword_1000AED30 = result;
  }

  return result;
}

@end