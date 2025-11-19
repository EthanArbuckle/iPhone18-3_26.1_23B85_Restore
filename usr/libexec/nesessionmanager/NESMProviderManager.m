@interface NESMProviderManager
- (NESMProviderManager)init;
@end

@implementation NESMProviderManager

- (NESMProviderManager)init
{
  v14.receiver = self;
  v14.super_class = NESMProviderManager;
  v2 = [(NESMProviderManager *)&v14 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("NESMProviderManager queue", v3);
    queue = v2->_queue;
    v2->_queue = v4;

    v6 = v2->_queue;
    v7 = xpc_event_publisher_create();
    eventPublisher = v2->_eventPublisher;
    v2->_eventPublisher = v7;

    v9 = objc_alloc_init(NSMutableDictionary);
    registrationMap = v2->_registrationMap;
    v2->_registrationMap = v9;

    v11 = objc_alloc_init(NSMutableArray);
    extensionsBeingUpdated = v2->_extensionsBeingUpdated;
    v2->_extensionsBeingUpdated = v11;
  }

  return v2;
}

@end