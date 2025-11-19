@interface TransparencyGPBSourceContext
+ (id)descriptor;
@end

@implementation TransparencyGPBSourceContext

+ (id)descriptor
{
  result = qword_10039C628;
  if (!qword_10039C628)
  {
    LODWORD(v3) = 28;
    result = [TransparencyGPBDescriptor allocDescriptorForClass:TransparencyGPBSourceContext messageName:@"SourceContext" fileDescription:off_100388EF8 fields:&off_100388ED8 fieldCount:1 storageSize:16 flags:v3];
    qword_10039C628 = result;
  }

  return result;
}

@end