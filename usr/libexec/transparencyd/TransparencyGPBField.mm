@interface TransparencyGPBField
+ (id)descriptor;
@end

@implementation TransparencyGPBField

+ (id)descriptor
{
  v2 = qword_10039C678;
  if (!qword_10039C678)
  {
    LODWORD(v4) = 28;
    v2 = [TransparencyGPBDescriptor allocDescriptorForClass:TransparencyGPBField messageName:@"Field" fileDescription:off_100389148 fields:&off_100389160 fieldCount:10 storageSize:64 flags:v4];
    [v2 setupExtraTextInfo:&unk_1002DF108];
    qword_10039C678 = v2;
  }

  return v2;
}

@end