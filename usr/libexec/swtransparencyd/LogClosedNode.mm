@interface LogClosedNode
+ (id)descriptor;
@end

@implementation LogClosedNode

+ (id)descriptor
{
  v2 = qword_100155FC8;
  if (!qword_100155FC8)
  {
    LODWORD(v4) = 28;
    v2 = [TransparencyGPBDescriptor allocDescriptorForClass:LogClosedNode messageName:@"LogClosedNode" fileDescription:&unk_1001516B0 fields:&off_100151CA8 fieldCount:2 storageSize:16 flags:v4];
    [v2 setupExtraTextInfo:&unk_100102F18];
    qword_100155FC8 = v2;
  }

  return v2;
}

@end