@interface TransparencyGPBSourceContext
+ (id)descriptor;
@end

@implementation TransparencyGPBSourceContext

+ (id)descriptor
{
  result = qword_10015D040;
  if (!qword_10015D040)
  {
    LODWORD(v3) = 28;
    result = [TransparencyGPBDescriptor allocDescriptorForClass:TransparencyGPBSourceContext messageName:@"SourceContext" fileDescription:off_100155660 fields:&off_100155640 fieldCount:1 storageSize:16 flags:v3];
    qword_10015D040 = result;
  }

  return result;
}

@end