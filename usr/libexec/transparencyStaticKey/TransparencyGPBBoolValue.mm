@interface TransparencyGPBBoolValue
+ (id)descriptor;
@end

@implementation TransparencyGPBBoolValue

+ (id)descriptor
{
  result = qword_1000AEC50;
  if (!qword_1000AEC50)
  {
    LODWORD(v3) = 28;
    result = [TransparencyGPBDescriptor allocDescriptorForClass:TransparencyGPBBoolValue messageName:@"BoolValue" fileDescription:off_1000AD068 fields:&off_1000AD120 fieldCount:1 storageSize:4 flags:v3];
    qword_1000AEC50 = result;
  }

  return result;
}

@end