@interface MSDWorkQueueSet
+ (id)sharedInstance;
@end

@implementation MSDWorkQueueSet

+ (id)sharedInstance
{
  if (qword_1001A5A30 != -1)
  {
    sub_1000E76D4();
  }

  v3 = qword_1001A5A28;

  return v3;
}

@end