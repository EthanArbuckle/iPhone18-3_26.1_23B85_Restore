@interface RevisionLogInclusionProofRequest
+ (id)descriptor;
@end

@implementation RevisionLogInclusionProofRequest

+ (id)descriptor
{
  v2 = qword_10039C7C0;
  if (!qword_10039C7C0)
  {
    LODWORD(v4) = 28;
    v2 = [TransparencyGPBDescriptor allocDescriptorForClass:RevisionLogInclusionProofRequest messageName:@"RevisionLogInclusionProofRequest" fileDescription:&unk_100389FE8 fields:&off_10038A120 fieldCount:4 storageSize:24 flags:v4];
    [v2 setupExtraTextInfo:&unk_1002DF245];
    qword_10039C7C0 = v2;
  }

  return v2;
}

@end