@interface ATLogProofs
+ (id)descriptor;
@end

@implementation ATLogProofs

+ (id)descriptor
{
  v2 = qword_100156068;
  if (!qword_100156068)
  {
    LODWORD(v4) = 28;
    v2 = [TransparencyGPBDescriptor allocDescriptorForClass:ATLogProofs messageName:@"ATLogProofs" fileDescription:&unk_1001521E0 fields:&off_100152298 fieldCount:2 storageSize:24 flags:v4];
    [v2 setupExtraTextInfo:&unk_100103058];
    qword_100156068 = v2;
  }

  return v2;
}

@end