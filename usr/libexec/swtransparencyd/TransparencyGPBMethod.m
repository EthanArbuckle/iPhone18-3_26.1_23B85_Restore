@interface TransparencyGPBMethod
+ (id)descriptor;
@end

@implementation TransparencyGPBMethod

+ (id)descriptor
{
  v2 = qword_10015D118;
  if (!qword_10015D118)
  {
    LODWORD(v4) = 28;
    v2 = [TransparencyGPBDescriptor allocDescriptorForClass:TransparencyGPBMethod messageName:@"Method" fileDescription:off_100155DB8 fields:&off_100155DD0 fieldCount:7 storageSize:40 flags:v4];
    [v2 setupExtraTextInfo:&unk_100108980];
    qword_10015D118 = v2;
  }

  return v2;
}

@end