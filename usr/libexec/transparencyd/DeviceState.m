@interface DeviceState
+ (id)descriptor;
@end

@implementation DeviceState

+ (id)descriptor
{
  v2 = qword_10039C758;
  if (!qword_10039C758)
  {
    LODWORD(v4) = 28;
    v2 = [TransparencyGPBDescriptor allocDescriptorForClass:DeviceState messageName:@"DeviceState" fileDescription:&unk_100389868 fields:&off_100389A00 fieldCount:5 storageSize:48 flags:v4];
    [v2 setupExtraTextInfo:&unk_1002DF1BB];
    qword_10039C758 = v2;
  }

  return v2;
}

@end