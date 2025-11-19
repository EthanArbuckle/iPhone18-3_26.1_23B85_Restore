@interface TransparencyGPBOption
+ (id)descriptor;
@end

@implementation TransparencyGPBOption

+ (id)descriptor
{
  result = qword_1000AED38;
  if (!qword_1000AED38)
  {
    LODWORD(v3) = 28;
    result = [TransparencyGPBDescriptor allocDescriptorForClass:TransparencyGPBOption messageName:@"Option" fileDescription:off_1000AD630 fields:&off_1000AD888 fieldCount:2 storageSize:24 flags:v3];
    qword_1000AED38 = result;
  }

  return result;
}

@end