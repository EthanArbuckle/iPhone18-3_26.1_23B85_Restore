@interface ConsistencyProofRequest_LogConsistencyRequest
+ (id)descriptor;
@end

@implementation ConsistencyProofRequest_LogConsistencyRequest

+ (id)descriptor
{
  v2 = qword_10039C7A8;
  if (!qword_10039C7A8)
  {
    LODWORD(v4) = 28;
    v2 = [TransparencyGPBDescriptor allocDescriptorForClass:ConsistencyProofRequest_LogConsistencyRequest messageName:@"LogConsistencyRequest" fileDescription:&unk_100389FE8 fields:&off_10038A000 fieldCount:2 storageSize:24 flags:v4];
    [v2 setupExtraTextInfo:&unk_1002DF220];
    [v2 setupContainingMessageClass:ConsistencyProofRequest];
    qword_10039C7A8 = v2;
  }

  return v2;
}

@end