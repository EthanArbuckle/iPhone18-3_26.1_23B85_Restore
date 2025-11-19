@interface TransparencyGPBMethod
+ (id)descriptor;
@end

@implementation TransparencyGPBMethod

+ (id)descriptor
{
  v2 = qword_1000AED60;
  if (!qword_1000AED60)
  {
    LODWORD(v4) = 28;
    v2 = [TransparencyGPBDescriptor allocDescriptorForClass:TransparencyGPBMethod messageName:@"Method" fileDescription:off_1000ADB28 fields:&off_1000ADB40 fieldCount:7 storageSize:40 flags:v4];
    [v2 setupExtraTextInfo:&unk_10008C0A0];
    qword_1000AED60 = v2;
  }

  return v2;
}

@end