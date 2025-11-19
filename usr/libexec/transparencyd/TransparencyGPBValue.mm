@interface TransparencyGPBValue
+ (id)descriptor;
@end

@implementation TransparencyGPBValue

+ (id)descriptor
{
  v2 = qword_10039C640;
  if (!qword_10039C640)
  {
    LODWORD(v4) = 28;
    v2 = [TransparencyGPBDescriptor allocDescriptorForClass:TransparencyGPBValue messageName:@"Value" fileDescription:off_100388F30 fields:&off_100388F48 fieldCount:6 storageSize:48 flags:v4];
    [v2 setupOneofs:off_100389008 count:1 firstHasIndex:0xFFFFFFFFLL];
    qword_10039C640 = v2;
  }

  return v2;
}

@end