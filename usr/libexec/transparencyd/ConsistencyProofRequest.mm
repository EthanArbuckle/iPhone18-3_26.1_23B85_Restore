@interface ConsistencyProofRequest
+ (id)descriptor;
@end

@implementation ConsistencyProofRequest

+ (id)descriptor
{
  v2 = qword_10039C7A0;
  if (!qword_10039C7A0)
  {
    LODWORD(v4) = 28;
    v2 = [TransparencyGPBDescriptor allocDescriptorForClass:ConsistencyProofRequest messageName:@"ConsistencyProofRequest" fileDescription:&unk_100389FE8 fields:&off_100389F48 fieldCount:5 storageSize:32 flags:v4];
    [v2 setupExtraTextInfo:&unk_1002DF218];
    qword_10039C7A0 = v2;
  }

  return v2;
}

@end