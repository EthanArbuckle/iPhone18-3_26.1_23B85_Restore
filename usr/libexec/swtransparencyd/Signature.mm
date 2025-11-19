@interface Signature
+ (id)descriptor;
@end

@implementation Signature

+ (id)descriptor
{
  v2 = qword_100155F60;
  if (!qword_100155F60)
  {
    LODWORD(v4) = 28;
    v2 = [TransparencyGPBDescriptor allocDescriptorForClass:Signature messageName:@"Signature" fileDescription:&unk_1001516B0 fields:&off_100151708 fieldCount:3 storageSize:24 flags:v4];
    [v2 setupExtraTextInfo:&unk_100102E69];
    qword_100155F60 = v2;
  }

  return v2;
}

@end