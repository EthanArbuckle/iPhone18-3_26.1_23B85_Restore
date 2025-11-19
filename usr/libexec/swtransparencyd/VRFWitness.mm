@interface VRFWitness
+ (id)descriptor;
@end

@implementation VRFWitness

+ (id)descriptor
{
  result = qword_100155F50;
  if (!qword_100155F50)
  {
    LODWORD(v3) = 28;
    result = [TransparencyGPBDescriptor allocDescriptorForClass:VRFWitness messageName:@"VRFWitness" fileDescription:&unk_1001516B0 fields:&off_100151650 fieldCount:3 storageSize:24 flags:v3];
    qword_100155F50 = result;
  }

  return result;
}

@end