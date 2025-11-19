@interface TransparencyGPBBytesValue
+ (id)descriptor;
@end

@implementation TransparencyGPBBytesValue

+ (id)descriptor
{
  result = qword_10015D100;
  if (!qword_10015D100)
  {
    LODWORD(v3) = 28;
    result = [TransparencyGPBDescriptor allocDescriptorForClass:TransparencyGPBBytesValue messageName:@"BytesValue" fileDescription:off_100155B68 fields:&off_100155C60 fieldCount:1 storageSize:16 flags:v3];
    qword_10015D100 = result;
  }

  return result;
}

@end