@interface SignedObject
+ (id)descriptor;
@end

@implementation SignedObject

+ (id)descriptor
{
  result = qword_100155F68;
  if (!qword_100155F68)
  {
    LODWORD(v3) = 28;
    result = [TransparencyGPBDescriptor allocDescriptorForClass:SignedObject messageName:@"SignedObject" fileDescription:&unk_1001516B0 fields:&off_100151768 fieldCount:2 storageSize:24 flags:v3];
    qword_100155F68 = result;
  }

  return result;
}

@end