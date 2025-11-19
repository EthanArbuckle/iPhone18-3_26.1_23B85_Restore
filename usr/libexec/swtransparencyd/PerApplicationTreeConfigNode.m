@interface PerApplicationTreeConfigNode
+ (id)descriptor;
@end

@implementation PerApplicationTreeConfigNode

+ (id)descriptor
{
  v2 = qword_100155FB8;
  if (!qword_100155FB8)
  {
    LODWORD(v4) = 28;
    v2 = [TransparencyGPBDescriptor allocDescriptorForClass:PerApplicationTreeConfigNode messageName:@"PerApplicationTreeConfigNode" fileDescription:&unk_1001516B0 fields:&off_100151C08 fieldCount:3 storageSize:24 flags:v4];
    [v2 setupExtraTextInfo:&unk_100102EF8];
    qword_100155FB8 = v2;
  }

  return v2;
}

@end