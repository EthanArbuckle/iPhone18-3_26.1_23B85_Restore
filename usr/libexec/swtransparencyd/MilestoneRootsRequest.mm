@interface MilestoneRootsRequest
+ (id)descriptor;
@end

@implementation MilestoneRootsRequest

+ (id)descriptor
{
  v2 = qword_1001560D8;
  if (!qword_1001560D8)
  {
    LODWORD(v4) = 28;
    v2 = [TransparencyGPBDescriptor allocDescriptorForClass:MilestoneRootsRequest messageName:@"MilestoneRootsRequest" fileDescription:&unk_100152420 fields:&off_1001523C0 fieldCount:3 storageSize:24 flags:v4];
    [v2 setupExtraTextInfo:&unk_100103090];
    qword_1001560D8 = v2;
  }

  return v2;
}

@end