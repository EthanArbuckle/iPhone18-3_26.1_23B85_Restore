@interface TransparencyGPBUInt32Value
+ (id)descriptor;
@end

@implementation TransparencyGPBUInt32Value

+ (id)descriptor
{
  result = qword_1000AEC48;
  if (!qword_1000AEC48)
  {
    LODWORD(v3) = 28;
    result = [TransparencyGPBDescriptor allocDescriptorForClass:TransparencyGPBUInt32Value messageName:@"UInt32Value" fileDescription:off_1000AD068 fields:&off_1000AD100 fieldCount:1 storageSize:8 flags:v3];
    qword_1000AEC48 = result;
  }

  return result;
}

@end