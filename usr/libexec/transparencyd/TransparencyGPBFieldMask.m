@interface TransparencyGPBFieldMask
+ (id)descriptor;
@end

@implementation TransparencyGPBFieldMask

+ (id)descriptor
{
  result = qword_10039C5F8;
  if (!qword_10039C5F8)
  {
    LODWORD(v3) = 28;
    result = [TransparencyGPBDescriptor allocDescriptorForClass:TransparencyGPBFieldMask messageName:@"FieldMask" fileDescription:off_100388E60 fields:&off_100388E40 fieldCount:1 storageSize:16 flags:v3];
    qword_10039C5F8 = result;
  }

  return result;
}

@end