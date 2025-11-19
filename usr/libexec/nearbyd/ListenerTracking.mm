@interface ListenerTracking
- (NIServerAccessoryGATTServiceListener)listener;
@end

@implementation ListenerTracking

- (NIServerAccessoryGATTServiceListener)listener
{
  WeakRetained = objc_loadWeakRetained(&self->_listener);

  return WeakRetained;
}

@end