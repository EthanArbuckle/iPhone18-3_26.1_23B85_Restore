@interface PerApplicationTreeConfigNode
+ (id)descriptor;
@end

@implementation PerApplicationTreeConfigNode

+ (id)descriptor
{
  v2 = qword_10039C8B0;
  if (!qword_10039C8B0)
  {
    LODWORD(v4) = 28;
    v2 = [TransparencyGPBDescriptor allocDescriptorForClass:PerApplicationTreeConfigNode messageName:@"PerApplicationTreeConfigNode" fileDescription:&unk_10038A4D8 fields:&off_10038AA30 fieldCount:3 storageSize:24 flags:v4];
    [v2 setupExtraTextInfo:&unk_1002DF61C];
    qword_10039C8B0 = v2;
  }

  return v2;
}

@end