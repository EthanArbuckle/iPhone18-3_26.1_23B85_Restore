@interface TransparencyGPBSourceContext
+ (id)descriptor;
@end

@implementation TransparencyGPBSourceContext

+ (id)descriptor
{
  result = qword_1000AEC88;
  if (!qword_1000AEC88)
  {
    LODWORD(v3) = 28;
    result = [TransparencyGPBDescriptor allocDescriptorForClass:TransparencyGPBSourceContext messageName:@"SourceContext" fileDescription:off_1000AD358 fields:&off_1000AD338 fieldCount:1 storageSize:16 flags:v3];
    qword_1000AEC88 = result;
  }

  return result;
}

@end