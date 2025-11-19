@interface ATLogProofRequest
+ (id)descriptor;
@end

@implementation ATLogProofRequest

+ (id)descriptor
{
  result = qword_100156058;
  if (!qword_100156058)
  {
    LODWORD(v3) = 28;
    result = [TransparencyGPBDescriptor allocDescriptorForClass:ATLogProofRequest messageName:@"ATLogProofRequest" fileDescription:&unk_1001521E0 fields:&off_100152218 fieldCount:2 storageSize:16 flags:v3];
    qword_100156058 = result;
  }

  return result;
}

@end