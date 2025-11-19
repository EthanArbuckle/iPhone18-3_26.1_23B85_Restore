@interface TransparencyGPBBytesValue
+ (id)descriptor;
@end

@implementation TransparencyGPBBytesValue

+ (id)descriptor
{
  result = qword_1000AEC60;
  if (!qword_1000AEC60)
  {
    LODWORD(v3) = 28;
    result = [TransparencyGPBDescriptor allocDescriptorForClass:TransparencyGPBBytesValue messageName:@"BytesValue" fileDescription:off_1000AD068 fields:&off_1000AD160 fieldCount:1 storageSize:16 flags:v3];
    qword_1000AEC60 = result;
  }

  return result;
}

@end