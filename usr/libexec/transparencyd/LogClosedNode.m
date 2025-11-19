@interface LogClosedNode
+ (id)descriptor;
@end

@implementation LogClosedNode

+ (id)descriptor
{
  v2 = qword_10039C8C0;
  if (!qword_10039C8C0)
  {
    LODWORD(v4) = 28;
    v2 = [TransparencyGPBDescriptor allocDescriptorForClass:LogClosedNode messageName:@"LogClosedNode" fileDescription:&unk_10038A4D8 fields:&off_10038AAD0 fieldCount:2 storageSize:16 flags:v4];
    [v2 setupExtraTextInfo:&unk_1002DF638];
    qword_10039C8C0 = v2;
  }

  return v2;
}

@end