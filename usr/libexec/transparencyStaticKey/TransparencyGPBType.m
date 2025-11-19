@interface TransparencyGPBType
+ (id)descriptor;
@end

@implementation TransparencyGPBType

+ (id)descriptor
{
  result = qword_1000AED18;
  if (!qword_1000AED18)
  {
    LODWORD(v3) = 28;
    result = [TransparencyGPBDescriptor allocDescriptorForClass:TransparencyGPBType messageName:@"Type" fileDescription:off_1000AD630 fields:&off_1000AD570 fieldCount:6 storageSize:48 flags:v3];
    qword_1000AED18 = result;
  }

  return result;
}

@end