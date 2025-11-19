@interface RevisionLogInclusionProofResponse
+ (id)descriptor;
@end

@implementation RevisionLogInclusionProofResponse

+ (id)descriptor
{
  v2 = qword_100155FF8;
  if (!qword_100155FF8)
  {
    LODWORD(v4) = 28;
    v2 = [TransparencyGPBDescriptor allocDescriptorForClass:RevisionLogInclusionProofResponse messageName:@"RevisionLogInclusionProofResponse" fileDescription:&unk_100151D88 fields:&off_100151F40 fieldCount:3 storageSize:24 flags:v4];
    [v2 setupExtraTextInfo:&unk_100102FB0];
    qword_100155FF8 = v2;
  }

  return v2;
}

@end