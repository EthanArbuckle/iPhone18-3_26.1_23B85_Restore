@interface BatchUpdateRequest_UpdateData
+ (id)descriptor;
@end

@implementation BatchUpdateRequest_UpdateData

+ (id)descriptor
{
  v2 = qword_10039C750;
  if (!qword_10039C750)
  {
    LODWORD(v4) = 28;
    v2 = [TransparencyGPBDescriptor allocDescriptorForClass:BatchUpdateRequest_UpdateData messageName:@"UpdateData" fileDescription:&unk_100389868 fields:&off_100389880 fieldCount:12 storageSize:72 flags:v4];
    [v2 setupExtraTextInfo:&unk_1002DF1A1];
    [v2 setupContainingMessageClass:BatchUpdateRequest];
    qword_10039C750 = v2;
  }

  return v2;
}

@end