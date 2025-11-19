@interface TransparencyGPBField
+ (id)descriptor;
@end

@implementation TransparencyGPBField

+ (id)descriptor
{
  v2 = qword_10015D090;
  if (!qword_10015D090)
  {
    LODWORD(v4) = 28;
    v2 = [TransparencyGPBDescriptor allocDescriptorForClass:TransparencyGPBField messageName:@"Field" fileDescription:off_1001558B0 fields:&off_1001558C8 fieldCount:10 storageSize:64 flags:v4];
    [v2 setupExtraTextInfo:&unk_100108918];
    qword_10015D090 = v2;
  }

  return v2;
}

@end