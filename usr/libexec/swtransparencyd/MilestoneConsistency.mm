@interface MilestoneConsistency
+ (id)descriptor;
@end

@implementation MilestoneConsistency

+ (id)descriptor
{
  v2 = qword_1001560E8;
  if (!qword_1001560E8)
  {
    LODWORD(v4) = 28;
    v2 = [TransparencyGPBDescriptor allocDescriptorForClass:MilestoneConsistency messageName:@"MilestoneConsistency" fileDescription:&unk_100152420 fields:&off_1001524D8 fieldCount:2 storageSize:24 flags:v4];
    [v2 setupExtraTextInfo:&unk_1001030A4];
    qword_1001560E8 = v2;
  }

  return v2;
}

@end