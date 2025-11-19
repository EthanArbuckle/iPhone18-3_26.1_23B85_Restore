@interface QueryRequest
+ (id)descriptor;
@end

@implementation QueryRequest

+ (id)descriptor
{
  v2 = qword_10039C958;
  if (!qword_10039C958)
  {
    LODWORD(v4) = 28;
    v2 = [TransparencyGPBDescriptor allocDescriptorForClass:QueryRequest messageName:@"QueryRequest" fileDescription:&unk_10038AE48 fields:&off_10038ADC8 fieldCount:4 storageSize:32 flags:v4];
    [v2 setupExtraTextInfo:&unk_1002DF648];
    qword_10039C958 = v2;
  }

  return v2;
}

@end