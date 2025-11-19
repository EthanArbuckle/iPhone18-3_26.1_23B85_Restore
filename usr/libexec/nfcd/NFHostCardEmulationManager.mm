@interface NFHostCardEmulationManager
- (NFHostCardEmulationManager)init;
@end

@implementation NFHostCardEmulationManager

- (NFHostCardEmulationManager)init
{
  v8.receiver = self;
  v8.super_class = NFHostCardEmulationManager;
  v2 = [(NFHostCardEmulationManager *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(NSMutableArray);
    sessions = v2->_sessions;
    v2->_sessions = v3;

    v5 = objc_alloc_init(NSMutableArray);
    apduLog = v2->_apduLog;
    v2->_apduLog = v5;
  }

  return v2;
}

@end