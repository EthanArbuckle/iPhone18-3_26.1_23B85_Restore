@interface DMDSecureUnarchiveFromPayloadMetadataDataTransformer
+ (id)allowedTopLevelClasses;
+ (void)initialize;
@end

@implementation DMDSecureUnarchiveFromPayloadMetadataDataTransformer

+ (void)initialize
{
  if (qword_1000FF258 != -1)
  {
    sub_100085FC8();
  }
}

+ (id)allowedTopLevelClasses
{
  if (qword_1000FF268 != -1)
  {
    sub_100085FDC();
  }

  v3 = qword_1000FF260;

  return v3;
}

@end