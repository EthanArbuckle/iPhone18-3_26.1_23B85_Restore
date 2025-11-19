@interface SDPowerChargingStatusNotifier
+ (id)sharedNotifier;
- (SDPowerChargingStatusNotifier)init;
@end

@implementation SDPowerChargingStatusNotifier

- (SDPowerChargingStatusNotifier)init
{
  v7.receiver = self;
  v7.super_class = SDPowerChargingStatusNotifier;
  v2 = [(SDPowerChargingStatusNotifier *)&v7 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.sharing.powerStatusNotifier", v3);
    internalQueue = v2->_internalQueue;
    v2->_internalQueue = v4;
  }

  return v2;
}

+ (id)sharedNotifier
{
  if (qword_10098A160 != -1)
  {
    sub_1001CBD04();
  }

  v3 = qword_10098A158;

  return v3;
}

@end