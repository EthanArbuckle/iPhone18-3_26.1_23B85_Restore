@interface TransparencyGPBEmpty
+ (id)descriptor;
@end

@implementation TransparencyGPBEmpty

+ (id)descriptor
{
  result = qword_10039C5F0;
  if (!qword_10039C5F0)
  {
    LODWORD(v3) = 28;
    result = [TransparencyGPBDescriptor allocDescriptorForClass:TransparencyGPBEmpty messageName:@"Empty" fileDescription:off_100388DC8 fields:0 fieldCount:0 storageSize:4 flags:v3];
    qword_10039C5F0 = result;
  }

  return result;
}

@end