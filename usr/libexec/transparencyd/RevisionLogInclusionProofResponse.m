@interface RevisionLogInclusionProofResponse
+ (id)descriptor;
- (void)setMetadataValue:(id)a3 key:(id)a4;
@end

@implementation RevisionLogInclusionProofResponse

+ (id)descriptor
{
  v2 = qword_10039C7C8;
  if (!qword_10039C7C8)
  {
    LODWORD(v4) = 28;
    v2 = [TransparencyGPBDescriptor allocDescriptorForClass:RevisionLogInclusionProofResponse messageName:@"RevisionLogInclusionProofResponse" fileDescription:&unk_100389FE8 fields:&off_10038A1A0 fieldCount:3 storageSize:24 flags:v4];
    [v2 setupExtraTextInfo:&unk_1002DF2A0];
    qword_10039C7C8 = v2;
  }

  return v2;
}

- (void)setMetadataValue:(id)a3 key:(id)a4
{
  v9 = a3;
  v6 = a4;
  if (v9)
  {
    v7 = [(RevisionLogInclusionProofResponse *)self metadata];
    v8 = [v7 mutableCopy];

    if (!v8)
    {
      v8 = objc_alloc_init(NSMutableDictionary);
    }

    [v8 setObject:v9 forKeyedSubscript:v6];
    [(RevisionLogInclusionProofResponse *)self setMetadata:v8];
  }
}

@end