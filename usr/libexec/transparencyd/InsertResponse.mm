@interface InsertResponse
+ (id)descriptor;
@end

@implementation InsertResponse

+ (id)descriptor
{
  v2 = qword_10039C770;
  if (!qword_10039C770)
  {
    LODWORD(v4) = 28;
    v2 = [TransparencyGPBDescriptor allocDescriptorForClass:InsertResponse messageName:@"InsertResponse" fileDescription:&unk_100389868 fields:&off_100389B68 fieldCount:4 storageSize:32 flags:v4];
    [v2 setupExtraTextInfo:&unk_1002DF208];
    qword_10039C770 = v2;
  }

  return v2;
}

@end