@interface TransparencyGPBInt64Value
+ (id)descriptor;
@end

@implementation TransparencyGPBInt64Value

+ (id)descriptor
{
  result = qword_1000AEC30;
  if (!qword_1000AEC30)
  {
    LODWORD(v3) = 28;
    result = [TransparencyGPBDescriptor allocDescriptorForClass:TransparencyGPBInt64Value messageName:@"Int64Value" fileDescription:off_1000AD068 fields:&off_1000AD0A0 fieldCount:1 storageSize:16 flags:v3];
    qword_1000AEC30 = result;
  }

  return result;
}

@end