@interface ATLogInsertResponse
+ (id)descriptor;
@end

@implementation ATLogInsertResponse

+ (id)descriptor
{
  result = qword_100156050;
  if (!qword_100156050)
  {
    LODWORD(v3) = 28;
    result = [TransparencyGPBDescriptor allocDescriptorForClass:ATLogInsertResponse messageName:@"ATLogInsertResponse" fileDescription:&unk_1001521E0 fields:&off_1001521F8 fieldCount:1 storageSize:8 flags:v3];
    qword_100156050 = result;
  }

  return result;
}

@end