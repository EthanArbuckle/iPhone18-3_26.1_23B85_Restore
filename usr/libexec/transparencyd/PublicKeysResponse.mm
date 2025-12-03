@interface PublicKeysResponse
+ (id)descriptor;
- (void)setMetadataValue:(id)value key:(id)key;
@end

@implementation PublicKeysResponse

+ (id)descriptor
{
  v2 = qword_10039C7D8;
  if (!qword_10039C7D8)
  {
    LODWORD(v4) = 28;
    v2 = [TransparencyGPBDescriptor allocDescriptorForClass:PublicKeysResponse messageName:@"PublicKeysResponse" fileDescription:&unk_100389FE8 fields:&off_10038A260 fieldCount:11 storageSize:88 flags:v4];
    [v2 setupExtraTextInfo:&unk_1002DF24F];
    qword_10039C7D8 = v2;
  }

  return v2;
}

- (void)setMetadataValue:(id)value key:(id)key
{
  valueCopy = value;
  keyCopy = key;
  if (valueCopy)
  {
    metadata = [(PublicKeysResponse *)self metadata];
    v8 = [metadata mutableCopy];

    if (!v8)
    {
      v8 = objc_alloc_init(NSMutableDictionary);
    }

    [v8 setObject:valueCopy forKeyedSubscript:keyCopy];
    [(PublicKeysResponse *)self setMetadata:v8];
  }
}

@end