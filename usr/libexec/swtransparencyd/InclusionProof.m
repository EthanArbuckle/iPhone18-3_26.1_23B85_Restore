@interface InclusionProof
+ (id)descriptor;
@end

@implementation InclusionProof

+ (id)descriptor
{
  v2 = qword_100155F90;
  if (!qword_100155F90)
  {
    LODWORD(v4) = 28;
    v2 = [TransparencyGPBDescriptor allocDescriptorForClass:InclusionProof messageName:@"InclusionProof" fileDescription:&unk_1001516B0 fields:&off_100151AE8 fieldCount:4 storageSize:40 flags:v4];
    [v2 setupExtraTextInfo:&unk_100102EE3];
    qword_100155F90 = v2;
  }

  return v2;
}

@end