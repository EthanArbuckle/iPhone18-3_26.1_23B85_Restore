@interface PublicKeysRequest
+ (id)descriptor;
@end

@implementation PublicKeysRequest

+ (id)descriptor
{
  v2 = qword_10039C7D0;
  if (!qword_10039C7D0)
  {
    LODWORD(v4) = 28;
    v2 = [TransparencyGPBDescriptor allocDescriptorForClass:PublicKeysRequest messageName:@"PublicKeysRequest" fileDescription:&unk_100389FE8 fields:&off_10038A200 fieldCount:3 storageSize:24 flags:v4];
    [v2 setupExtraTextInfo:&unk_1002DF24A];
    qword_10039C7D0 = v2;
  }

  return v2;
}

@end