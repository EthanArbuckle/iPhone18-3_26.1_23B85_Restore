@interface VerifySyncRequest_DeviceData
+ (id)descriptor;
@end

@implementation VerifySyncRequest_DeviceData

+ (id)descriptor
{
  v2 = qword_10039C790;
  if (!qword_10039C790)
  {
    LODWORD(v4) = 28;
    v2 = [TransparencyGPBDescriptor allocDescriptorForClass:VerifySyncRequest_DeviceData messageName:@"DeviceData" fileDescription:&unk_100389868 fields:&off_100389DE8 fieldCount:8 storageSize:56 flags:v4];
    [v2 setupExtraTextInfo:&unk_1002DF1EA];
    [v2 setupContainingMessageClass:VerifySyncRequest];
    qword_10039C790 = v2;
  }

  return v2;
}

@end