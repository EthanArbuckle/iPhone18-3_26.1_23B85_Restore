@interface BatchUpdateResponse_UpdateResponseData
+ (id)descriptor;
@end

@implementation BatchUpdateResponse_UpdateResponseData

+ (id)descriptor
{
  v2 = qword_10039C768;
  if (!qword_10039C768)
  {
    LODWORD(v4) = 28;
    v2 = [TransparencyGPBDescriptor allocDescriptorForClass:BatchUpdateResponse_UpdateResponseData messageName:@"UpdateResponseData" fileDescription:&unk_100389868 fields:&off_100389B00 fieldCount:3 storageSize:32 flags:v4];
    [v2 setupOneofs:off_100389B60 count:1 firstHasIndex:0xFFFFFFFFLL];
    [v2 setupExtraTextInfo:&unk_1002DF1D1];
    [v2 setupContainingMessageClass:BatchUpdateResponse];
    qword_10039C768 = v2;
  }

  return v2;
}

@end