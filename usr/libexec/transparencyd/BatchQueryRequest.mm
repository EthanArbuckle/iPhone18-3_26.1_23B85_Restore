@interface BatchQueryRequest
+ (id)descriptor;
@end

@implementation BatchQueryRequest

+ (id)descriptor
{
  result = qword_10039C968;
  if (!qword_10039C968)
  {
    LODWORD(v3) = 28;
    result = [TransparencyGPBDescriptor allocDescriptorForClass:BatchQueryRequest messageName:@"BatchQueryRequest" fileDescription:&unk_10038AE48 fields:&off_10038AEE0 fieldCount:3 storageSize:24 flags:v3];
    qword_10039C968 = result;
  }

  return result;
}

@end