@interface TransparencyGPBStruct
+ (id)descriptor;
@end

@implementation TransparencyGPBStruct

+ (id)descriptor
{
  result = qword_1000AEDE8;
  if (!qword_1000AEDE8)
  {
    LODWORD(v3) = 28;
    result = [TransparencyGPBDescriptor allocDescriptorForClass:TransparencyGPBStruct messageName:@"Struct" fileDescription:off_1000AE088 fields:&off_1000AE068 fieldCount:1 storageSize:16 flags:v3];
    qword_1000AEDE8 = result;
  }

  return result;
}

@end