@interface RevisionLogInclusionProofRequest
+ (id)descriptor;
@end

@implementation RevisionLogInclusionProofRequest

+ (id)descriptor
{
  v2 = qword_100155FF0;
  if (!qword_100155FF0)
  {
    LODWORD(v4) = 28;
    v2 = [TransparencyGPBDescriptor allocDescriptorForClass:RevisionLogInclusionProofRequest messageName:@"RevisionLogInclusionProofRequest" fileDescription:&unk_100151D88 fields:&off_100151EC0 fieldCount:4 storageSize:24 flags:v4];
    [v2 setupExtraTextInfo:&unk_100102F4D];
    qword_100155FF0 = v2;
  }

  return v2;
}

@end