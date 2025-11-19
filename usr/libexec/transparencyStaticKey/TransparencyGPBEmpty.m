@interface TransparencyGPBEmpty
+ (id)descriptor;
@end

@implementation TransparencyGPBEmpty

+ (id)descriptor
{
  result = qword_1000AECD0;
  if (!qword_1000AECD0)
  {
    LODWORD(v3) = 28;
    result = [TransparencyGPBDescriptor allocDescriptorForClass:TransparencyGPBEmpty messageName:@"Empty" fileDescription:off_1000AD558 fields:0 fieldCount:0 storageSize:4 flags:v3];
    qword_1000AECD0 = result;
  }

  return result;
}

@end