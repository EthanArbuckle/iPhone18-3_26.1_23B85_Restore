@interface NFBackgroundActivityScheduler
- (NFBackgroundActivityScheduler)init;
@end

@implementation NFBackgroundActivityScheduler

- (NFBackgroundActivityScheduler)init
{
  v12.receiver = self;
  v12.super_class = NFBackgroundActivityScheduler;
  v2 = [(NFBackgroundActivityScheduler *)&v12 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_attr_make_with_qos_class(v3, QOS_CLASS_UTILITY, 0);

    v5 = dispatch_queue_create("com.apple.nfcd.backgroundActivityScheduler", v4);
    queue = v2->_queue;
    v2->_queue = v5;

    v2->_invalidated = 0;
    v7 = objc_opt_new();
    activityMap = v2->_activityMap;
    v2->_activityMap = v7;

    v9 = objc_opt_new();
    callbackMap = v2->_callbackMap;
    v2->_callbackMap = v9;
  }

  return v2;
}

@end