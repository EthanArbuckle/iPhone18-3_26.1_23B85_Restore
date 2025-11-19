@interface TransparencyGPBEmpty
+ (id)descriptor;
@end

@implementation TransparencyGPBEmpty

+ (id)descriptor
{
  result = qword_10015D008;
  if (!qword_10015D008)
  {
    LODWORD(v3) = 28;
    result = [TransparencyGPBDescriptor allocDescriptorForClass:TransparencyGPBEmpty messageName:@"Empty" fileDescription:off_100155470 fields:0 fieldCount:0 storageSize:4 flags:v3];
    qword_10015D008 = result;
  }

  return result;
}

@end