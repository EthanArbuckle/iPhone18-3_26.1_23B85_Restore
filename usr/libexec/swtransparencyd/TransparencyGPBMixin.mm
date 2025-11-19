@interface TransparencyGPBMixin
+ (id)descriptor;
@end

@implementation TransparencyGPBMixin

+ (id)descriptor
{
  result = qword_10015D120;
  if (!qword_10015D120)
  {
    LODWORD(v3) = 28;
    result = [TransparencyGPBDescriptor allocDescriptorForClass:TransparencyGPBMixin messageName:@"Mixin" fileDescription:off_100155DB8 fields:&off_100155EB0 fieldCount:2 storageSize:24 flags:v3];
    qword_10015D120 = result;
  }

  return result;
}

@end