@interface ConsistencyProofResponse
+ (id)descriptor;
- (void)setMetadataValue:(id)value key:(id)key;
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

- (void)setMetadataValue:(id)value key:(id)key
{
  valueCopy = value;
  keyCopy = key;
  if (valueCopy)
  {
    metadata = [(ConsistencyProofResponse *)self metadata];
    v8 = [metadata mutableCopy];

    if (!v8)
    {
      v8 = objc_alloc_init(NSMutableDictionary);
    }

    [v8 setObject:valueCopy forKeyedSubscript:keyCopy];
    [(ConsistencyProofResponse *)self setMetadata:v8];
  }
}

@end