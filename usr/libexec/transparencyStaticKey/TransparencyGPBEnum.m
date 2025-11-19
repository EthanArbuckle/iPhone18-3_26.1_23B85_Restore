@interface TransparencyGPBEnum
+ (id)descriptor;
@end

@implementation TransparencyGPBEnum

+ (id)descriptor
{
  result = qword_1000AED28;
  if (!qword_1000AED28)
  {
    LODWORD(v3) = 28;
    result = [TransparencyGPBDescriptor allocDescriptorForClass:TransparencyGPBEnum messageName:@"Enum" fileDescription:off_1000AD630 fields:&off_1000AD788 fieldCount:5 storageSize:40 flags:v3];
    qword_1000AED28 = result;
  }

  return result;
}

@end