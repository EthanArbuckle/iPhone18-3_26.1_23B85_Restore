@interface TransparencyGPBApi
+ (id)descriptor;
@end

@implementation TransparencyGPBApi

+ (id)descriptor
{
  result = qword_10015D110;
  if (!qword_10015D110)
  {
    LODWORD(v3) = 28;
    result = [TransparencyGPBDescriptor allocDescriptorForClass:TransparencyGPBApi messageName:@"Api" fileDescription:off_100155DB8 fields:&off_100155CD8 fieldCount:7 storageSize:56 flags:v3];
    qword_10015D110 = result;
  }

  return result;
}

@end