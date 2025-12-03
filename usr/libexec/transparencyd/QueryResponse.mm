@interface QueryResponse
+ (id)descriptor;
- (void)setMetadataValue:(id)value key:(id)key;
@end

@implementation QueryResponse

+ (id)descriptor
{
  v2 = qword_10039C960;
  if (!qword_10039C960)
  {
    LODWORD(v4) = 28;
    v2 = [TransparencyGPBDescriptor allocDescriptorForClass:QueryResponse messageName:@"QueryResponse" fileDescription:&unk_10038AE48 fields:&off_10038AE60 fieldCount:4 storageSize:32 flags:v4];
    [v2 setupExtraTextInfo:&unk_1002DF64D];
    qword_10039C960 = v2;
  }

  return v2;
}

- (void)setMetadataValue:(id)value key:(id)key
{
  valueCopy = value;
  keyCopy = key;
  if (valueCopy)
  {
    metadata = [(QueryResponse *)self metadata];
    v8 = [metadata mutableCopy];

    if (!v8)
    {
      v8 = objc_alloc_init(NSMutableDictionary);
    }

    [v8 setObject:valueCopy forKeyedSubscript:keyCopy];
    [(QueryResponse *)self setMetadata:v8];
  }
}

@end