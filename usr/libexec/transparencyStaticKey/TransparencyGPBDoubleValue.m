@interface TransparencyGPBDoubleValue
+ (id)descriptor;
@end

@implementation TransparencyGPBDoubleValue

+ (id)descriptor
{
  result = qword_1000AEC20;
  if (!qword_1000AEC20)
  {
    LODWORD(v3) = 28;
    result = [TransparencyGPBDescriptor allocDescriptorForClass:TransparencyGPBDoubleValue messageName:@"DoubleValue" fileDescription:off_1000AD068 fields:&off_1000AD048 fieldCount:1 storageSize:16 flags:v3];
    qword_1000AEC20 = result;
  }

  return result;
}

@end