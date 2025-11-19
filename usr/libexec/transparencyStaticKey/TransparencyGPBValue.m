@interface TransparencyGPBValue
+ (id)descriptor;
@end

@implementation TransparencyGPBValue

+ (id)descriptor
{
  v2 = qword_1000AEDF0;
  if (!qword_1000AEDF0)
  {
    LODWORD(v4) = 28;
    v2 = [TransparencyGPBDescriptor allocDescriptorForClass:TransparencyGPBValue messageName:@"Value" fileDescription:off_1000AE088 fields:&off_1000AE0A0 fieldCount:6 storageSize:48 flags:v4];
    [v2 setupOneofs:off_1000AE160 count:1 firstHasIndex:0xFFFFFFFFLL];
    qword_1000AEDF0 = v2;
  }

  return v2;
}

@end