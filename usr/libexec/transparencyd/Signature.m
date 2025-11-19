@interface Signature
+ (id)descriptor;
@end

@implementation Signature

+ (id)descriptor
{
  v2 = qword_10039C858;
  if (!qword_10039C858)
  {
    LODWORD(v4) = 28;
    v2 = [TransparencyGPBDescriptor allocDescriptorForClass:Signature messageName:@"Signature" fileDescription:&unk_10038A4D8 fields:&off_10038A530 fieldCount:3 storageSize:24 flags:v4];
    [v2 setupExtraTextInfo:&unk_1002DF58D];
    qword_10039C858 = v2;
  }

  return v2;
}

@end