@interface LogConsistency
+ (id)descriptor;
@end

@implementation LogConsistency

+ (id)descriptor
{
  v2 = qword_100156070;
  if (!qword_100156070)
  {
    LODWORD(v4) = 28;
    v2 = [TransparencyGPBDescriptor allocDescriptorForClass:LogConsistency messageName:@"LogConsistency" fileDescription:&unk_1001521E0 fields:&off_1001522D8 fieldCount:5 storageSize:48 flags:v4];
    [v2 setupExtraTextInfo:&unk_100103035];
    qword_100156070 = v2;
  }

  return v2;
}

@end