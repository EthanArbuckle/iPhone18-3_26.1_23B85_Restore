@interface TransparencyGPBFloatValue
+ (id)descriptor;
@end

@implementation TransparencyGPBFloatValue

+ (id)descriptor
{
  result = qword_1000AEC28;
  if (!qword_1000AEC28)
  {
    LODWORD(v3) = 28;
    result = [TransparencyGPBDescriptor allocDescriptorForClass:TransparencyGPBFloatValue messageName:@"FloatValue" fileDescription:off_1000AD068 fields:&off_1000AD080 fieldCount:1 storageSize:8 flags:v3];
    qword_1000AEC28 = result;
  }

  return result;
}

@end