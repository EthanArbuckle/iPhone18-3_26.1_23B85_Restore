@interface TransparencyGPBValue
+ (id)descriptor;
@end

@implementation TransparencyGPBValue

+ (id)descriptor
{
  v2 = qword_10015D058;
  if (!qword_10015D058)
  {
    LODWORD(v4) = 28;
    v2 = [TransparencyGPBDescriptor allocDescriptorForClass:TransparencyGPBValue messageName:@"Value" fileDescription:off_100155698 fields:&off_1001556B0 fieldCount:6 storageSize:48 flags:v4];
    [v2 setupOneofs:off_100155770 count:1 firstHasIndex:0xFFFFFFFFLL];
    qword_10015D058 = v2;
  }

  return v2;
}

@end