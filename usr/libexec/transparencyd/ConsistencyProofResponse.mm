@interface ConsistencyProofResponse
+ (id)descriptor;
- (void)setMetadataValue:(id)a3 key:(id)a4;
@end

@implementation ConsistencyProofResponse

+ (id)descriptor
{
  v2 = qword_10039C7B0;
  if (!qword_10039C7B0)
  {
    LODWORD(v4) = 28;
    v2 = [TransparencyGPBDescriptor allocDescriptorForClass:ConsistencyProofResponse messageName:@"ConsistencyProofResponse" fileDescription:&unk_100389FE8 fields:&off_10038A040 fieldCount:4 storageSize:24 flags:v4];
    [v2 setupExtraTextInfo:&unk_1002DF228];
    qword_10039C7B0 = v2;
  }

  return v2;
}

- (void)setMetadataValue:(id)a3 key:(id)a4
{
  v9 = a3;
  v6 = a4;
  if (v9)
  {
    v7 = [(ConsistencyProofResponse *)self metadata];
    v8 = [v7 mutableCopy];

    if (!v8)
    {
      v8 = objc_alloc_init(NSMutableDictionary);
    }

    [v8 setObject:v9 forKeyedSubscript:v6];
    [(ConsistencyProofResponse *)self setMetadata:v8];
  }
}

@end