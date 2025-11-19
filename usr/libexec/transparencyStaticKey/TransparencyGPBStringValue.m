@interface TransparencyGPBStringValue
+ (id)descriptor;
@end

@implementation TransparencyGPBStringValue

+ (id)descriptor
{
  result = qword_1000AEC58;
  if (!qword_1000AEC58)
  {
    LODWORD(v3) = 28;
    result = [TransparencyGPBDescriptor allocDescriptorForClass:TransparencyGPBStringValue messageName:@"StringValue" fileDescription:off_1000AD068 fields:&off_1000AD140 fieldCount:1 storageSize:16 flags:v3];
    qword_1000AEC58 = result;
  }

  return result;
}

@end