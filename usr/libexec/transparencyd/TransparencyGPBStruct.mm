@interface TransparencyGPBStruct
+ (id)descriptor;
@end

@implementation TransparencyGPBStruct

+ (id)descriptor
{
  result = qword_10039C638;
  if (!qword_10039C638)
  {
    LODWORD(v3) = 28;
    result = [TransparencyGPBDescriptor allocDescriptorForClass:TransparencyGPBStruct messageName:@"Struct" fileDescription:off_100388F30 fields:&off_100388F10 fieldCount:1 storageSize:16 flags:v3];
    qword_10039C638 = result;
  }

  return result;
}

@end