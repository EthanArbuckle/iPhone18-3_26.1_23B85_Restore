@interface TransparencyGPBInt32Value
+ (id)descriptor;
@end

@implementation TransparencyGPBInt32Value

+ (id)descriptor
{
  result = qword_1000AEC40;
  if (!qword_1000AEC40)
  {
    LODWORD(v3) = 28;
    result = [TransparencyGPBDescriptor allocDescriptorForClass:TransparencyGPBInt32Value messageName:@"Int32Value" fileDescription:off_1000AD068 fields:&off_1000AD0E0 fieldCount:1 storageSize:8 flags:v3];
    qword_1000AEC40 = result;
  }

  return result;
}

@end