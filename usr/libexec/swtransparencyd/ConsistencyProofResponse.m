@interface ConsistencyProofResponse
+ (id)descriptor;
@end

@implementation ConsistencyProofResponse

+ (id)descriptor
{
  v2 = qword_100155FE0;
  if (!qword_100155FE0)
  {
    LODWORD(v4) = 28;
    v2 = [TransparencyGPBDescriptor allocDescriptorForClass:ConsistencyProofResponse messageName:@"ConsistencyProofResponse" fileDescription:&unk_100151D88 fields:&off_100151DE0 fieldCount:4 storageSize:24 flags:v4];
    [v2 setupExtraTextInfo:&unk_100102F30];
    qword_100155FE0 = v2;
  }

  return v2;
}

@end