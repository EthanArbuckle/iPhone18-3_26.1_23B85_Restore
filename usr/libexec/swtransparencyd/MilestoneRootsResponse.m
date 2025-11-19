@interface MilestoneRootsResponse
+ (id)descriptor;
@end

@implementation MilestoneRootsResponse

+ (id)descriptor
{
  v2 = qword_1001560E0;
  if (!qword_1001560E0)
  {
    LODWORD(v4) = 28;
    v2 = [TransparencyGPBDescriptor allocDescriptorForClass:MilestoneRootsResponse messageName:@"MilestoneRootsResponse" fileDescription:&unk_100152420 fields:&off_100152438 fieldCount:5 storageSize:40 flags:v4];
    [v2 setupExtraTextInfo:&unk_100103098];
    qword_1001560E0 = v2;
  }

  return v2;
}

@end