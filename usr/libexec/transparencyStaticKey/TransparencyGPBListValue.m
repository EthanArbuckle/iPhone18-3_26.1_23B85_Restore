@interface TransparencyGPBListValue
+ (id)descriptor;
@end

@implementation TransparencyGPBListValue

+ (id)descriptor
{
  result = qword_1000AEDF8;
  if (!qword_1000AEDF8)
  {
    LODWORD(v3) = 28;
    result = [TransparencyGPBDescriptor allocDescriptorForClass:TransparencyGPBListValue messageName:@"ListValue" fileDescription:off_1000AE088 fields:&off_1000AE168 fieldCount:1 storageSize:16 flags:v3];
    qword_1000AEDF8 = result;
  }

  return result;
}

@end