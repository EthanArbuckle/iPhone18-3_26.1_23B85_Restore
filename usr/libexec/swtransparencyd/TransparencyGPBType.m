@interface TransparencyGPBType
+ (id)descriptor;
@end

@implementation TransparencyGPBType

+ (id)descriptor
{
  result = qword_10015D088;
  if (!qword_10015D088)
  {
    LODWORD(v3) = 28;
    result = [TransparencyGPBDescriptor allocDescriptorForClass:TransparencyGPBType messageName:@"Type" fileDescription:off_1001558B0 fields:&off_1001557F0 fieldCount:6 storageSize:48 flags:v3];
    qword_10015D088 = result;
  }

  return result;
}

@end