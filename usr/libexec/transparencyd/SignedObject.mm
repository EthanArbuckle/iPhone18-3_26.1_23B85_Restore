@interface SignedObject
+ (id)descriptor;
@end

@implementation SignedObject

+ (id)descriptor
{
  result = qword_10039C860;
  if (!qword_10039C860)
  {
    LODWORD(v3) = 28;
    result = [TransparencyGPBDescriptor allocDescriptorForClass:SignedObject messageName:@"SignedObject" fileDescription:&unk_10038A4D8 fields:&off_10038A590 fieldCount:2 storageSize:24 flags:v3];
    qword_10039C860 = result;
  }

  return result;
}

@end