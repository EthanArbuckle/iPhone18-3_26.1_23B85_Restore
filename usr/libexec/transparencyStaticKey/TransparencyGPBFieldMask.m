@interface TransparencyGPBFieldMask
+ (id)descriptor;
@end

@implementation TransparencyGPBFieldMask

+ (id)descriptor
{
  result = qword_1000AEC68;
  if (!qword_1000AEC68)
  {
    LODWORD(v3) = 28;
    result = [TransparencyGPBDescriptor allocDescriptorForClass:TransparencyGPBFieldMask messageName:@"FieldMask" fileDescription:off_1000AD1A0 fields:&off_1000AD180 fieldCount:1 storageSize:16 flags:v3];
    qword_1000AEC68 = result;
  }

  return result;
}

@end