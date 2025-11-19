@interface TransparencyGPBStruct
+ (id)descriptor;
@end

@implementation TransparencyGPBStruct

+ (id)descriptor
{
  result = qword_10015D050;
  if (!qword_10015D050)
  {
    LODWORD(v3) = 28;
    result = [TransparencyGPBDescriptor allocDescriptorForClass:TransparencyGPBStruct messageName:@"Struct" fileDescription:off_100155698 fields:&off_100155678 fieldCount:1 storageSize:16 flags:v3];
    qword_10015D050 = result;
  }

  return result;
}

@end