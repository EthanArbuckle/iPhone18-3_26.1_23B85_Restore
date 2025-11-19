@interface ConsistencyProofRequest_LogConsistencyRequest
+ (id)descriptor;
@end

@implementation ConsistencyProofRequest_LogConsistencyRequest

+ (id)descriptor
{
  v2 = qword_100155FD8;
  if (!qword_100155FD8)
  {
    LODWORD(v4) = 28;
    v2 = [TransparencyGPBDescriptor allocDescriptorForClass:ConsistencyProofRequest_LogConsistencyRequest messageName:@"LogConsistencyRequest" fileDescription:&unk_100151D88 fields:&off_100151DA0 fieldCount:2 storageSize:24 flags:v4];
    [v2 setupExtraTextInfo:&unk_100102F28];
    [v2 setupContainingMessageClass:ConsistencyProofRequest];
    qword_100155FD8 = v2;
  }

  return v2;
}

@end