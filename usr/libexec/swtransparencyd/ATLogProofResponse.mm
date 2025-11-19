@interface ATLogProofResponse
+ (id)descriptor;
@end

@implementation ATLogProofResponse

+ (id)descriptor
{
  result = qword_100156060;
  if (!qword_100156060)
  {
    LODWORD(v3) = 28;
    result = [TransparencyGPBDescriptor allocDescriptorForClass:ATLogProofResponse messageName:@"ATLogProofResponse" fileDescription:&unk_1001521E0 fields:&off_100152258 fieldCount:2 storageSize:16 flags:v3];
    qword_100156060 = result;
  }

  return result;
}

@end