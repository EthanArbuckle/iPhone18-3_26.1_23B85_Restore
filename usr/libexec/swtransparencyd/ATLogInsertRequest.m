@interface ATLogInsertRequest
+ (id)descriptor;
@end

@implementation ATLogInsertRequest

+ (id)descriptor
{
  v2 = qword_100156048;
  if (!qword_100156048)
  {
    LODWORD(v4) = 28;
    v2 = [TransparencyGPBDescriptor allocDescriptorForClass:ATLogInsertRequest messageName:@"ATLogInsertRequest" fileDescription:&unk_1001521E0 fields:&off_100152160 fieldCount:4 storageSize:32 flags:v4];
    [v2 setupExtraTextInfo:&unk_100103030];
    qword_100156048 = v2;
  }

  return v2;
}

@end