@interface TransparencyGPBUInt64Value
+ (id)descriptor;
@end

@implementation TransparencyGPBUInt64Value

+ (id)descriptor
{
  result = qword_1000AEC38;
  if (!qword_1000AEC38)
  {
    LODWORD(v3) = 28;
    result = [TransparencyGPBDescriptor allocDescriptorForClass:TransparencyGPBUInt64Value messageName:@"UInt64Value" fileDescription:off_1000AD068 fields:&off_1000AD0C0 fieldCount:1 storageSize:16 flags:v3];
    qword_1000AEC38 = result;
  }

  return result;
}

@end