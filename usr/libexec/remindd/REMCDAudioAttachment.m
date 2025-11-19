@interface REMCDAudioAttachment
+ (id)cdEntityName;
@end

@implementation REMCDAudioAttachment

+ (id)cdEntityName
{
  v2 = +[REMLogStore utility];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
  {
    sub_1007695D0(v2);
  }

  return @"REMCDAudioAttachment";
}

@end