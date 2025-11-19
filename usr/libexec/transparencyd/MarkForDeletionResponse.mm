@interface MarkForDeletionResponse
+ (id)descriptor;
@end

@implementation MarkForDeletionResponse

+ (id)descriptor
{
  v2 = qword_10039C778;
  if (!qword_10039C778)
  {
    LODWORD(v4) = 28;
    v2 = [TransparencyGPBDescriptor allocDescriptorForClass:MarkForDeletionResponse messageName:@"MarkForDeletionResponse" fileDescription:&unk_100389868 fields:&off_100389BE8 fieldCount:4 storageSize:32 flags:v4];
    [v2 setupExtraTextInfo:&unk_1002DF210];
    qword_10039C778 = v2;
  }

  return v2;
}

@end