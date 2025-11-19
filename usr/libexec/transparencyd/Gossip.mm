@interface Gossip
+ (id)descriptor;
@end

@implementation Gossip

+ (id)descriptor
{
  result = qword_10039C7E0;
  if (!qword_10039C7E0)
  {
    LODWORD(v3) = 28;
    result = [TransparencyGPBDescriptor allocDescriptorForClass:Gossip messageName:@"Gossip" fileDescription:&unk_10038A400 fields:&off_10038A3C0 fieldCount:2 storageSize:16 flags:v3];
    qword_10039C7E0 = result;
  }

  return result;
}

@end