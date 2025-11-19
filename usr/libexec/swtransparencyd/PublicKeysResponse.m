@interface PublicKeysResponse
+ (id)descriptor;
- (void)setMetadataValue:(id)a3 key:(id)a4;
@end

@implementation PublicKeysResponse

+ (id)descriptor
{
  v2 = qword_100156008;
  if (!qword_100156008)
  {
    LODWORD(v4) = 28;
    v2 = [TransparencyGPBDescriptor allocDescriptorForClass:PublicKeysResponse messageName:@"PublicKeysResponse" fileDescription:&unk_100151D88 fields:&off_100152000 fieldCount:11 storageSize:88 flags:v4];
    [v2 setupExtraTextInfo:&unk_100102F57];
    qword_100156008 = v2;
  }

  return v2;
}

- (void)setMetadataValue:(id)a3 key:(id)a4
{
  v9 = a3;
  v6 = a4;
  if (v9)
  {
    v7 = [(PublicKeysResponse *)self metadata];
    v8 = [v7 mutableCopy];

    if (!v8)
    {
      v8 = objc_alloc_init(NSMutableDictionary);
    }

    [v8 setObject:v9 forKeyedSubscript:v6];
    [(PublicKeysResponse *)self setMetadata:v8];
  }
}

@end