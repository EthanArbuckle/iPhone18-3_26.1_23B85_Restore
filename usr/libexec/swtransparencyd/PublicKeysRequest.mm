@interface PublicKeysRequest
+ (id)descriptor;
@end

@implementation PublicKeysRequest

+ (id)descriptor
{
  v2 = qword_100156000;
  if (!qword_100156000)
  {
    LODWORD(v4) = 28;
    v2 = [TransparencyGPBDescriptor allocDescriptorForClass:PublicKeysRequest messageName:@"PublicKeysRequest" fileDescription:&unk_100151D88 fields:&off_100151FA0 fieldCount:3 storageSize:24 flags:v4];
    [v2 setupExtraTextInfo:&unk_100102F52];
    qword_100156000 = v2;
  }

  return v2;
}

@end