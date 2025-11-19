@interface ConsistencyProofRequest
+ (id)descriptor;
@end

@implementation ConsistencyProofRequest

+ (id)descriptor
{
  v2 = qword_100155FD0;
  if (!qword_100155FD0)
  {
    LODWORD(v4) = 28;
    v2 = [TransparencyGPBDescriptor allocDescriptorForClass:ConsistencyProofRequest messageName:@"ConsistencyProofRequest" fileDescription:&unk_100151D88 fields:&off_100151CE8 fieldCount:5 storageSize:32 flags:v4];
    [v2 setupExtraTextInfo:&unk_100102F20];
    qword_100155FD0 = v2;
  }

  return v2;
}

@end