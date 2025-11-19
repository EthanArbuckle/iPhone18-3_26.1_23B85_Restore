@interface TransparencyGPBMethod
+ (id)descriptor;
@end

@implementation TransparencyGPBMethod

+ (id)descriptor
{
  v2 = qword_10039C700;
  if (!qword_10039C700)
  {
    LODWORD(v4) = 28;
    v2 = [TransparencyGPBDescriptor allocDescriptorForClass:TransparencyGPBMethod messageName:@"Method" fileDescription:off_100389650 fields:&off_100389668 fieldCount:7 storageSize:40 flags:v4];
    [v2 setupExtraTextInfo:&unk_1002DF160];
    qword_10039C700 = v2;
  }

  return v2;
}

@end