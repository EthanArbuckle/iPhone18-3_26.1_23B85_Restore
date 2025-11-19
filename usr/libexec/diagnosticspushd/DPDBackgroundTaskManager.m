@interface DPDBackgroundTaskManager
+ (id)sharedInstance;
@end

@implementation DPDBackgroundTaskManager

+ (id)sharedInstance
{
  if (qword_10001C8B0 != -1)
  {
    swift_once();
  }

  v3 = qword_10001D028;

  return v3;
}

@end