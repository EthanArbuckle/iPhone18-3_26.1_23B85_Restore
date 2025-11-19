@interface TransparencyGPBField
+ (id)descriptor;
@end

@implementation TransparencyGPBField

+ (id)descriptor
{
  v2 = qword_1000AED20;
  if (!qword_1000AED20)
  {
    LODWORD(v4) = 28;
    v2 = [TransparencyGPBDescriptor allocDescriptorForClass:TransparencyGPBField messageName:@"Field" fileDescription:off_1000AD630 fields:&off_1000AD648 fieldCount:10 storageSize:64 flags:v4];
    [v2 setupExtraTextInfo:&unk_10008C090];
    qword_1000AED20 = v2;
  }

  return v2;
}

@end