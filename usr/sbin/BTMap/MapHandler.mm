@interface MapHandler
- (MapHandler)init;
- (MapHandlerDelegate)delegate;
@end

@implementation MapHandler

- (MapHandler)init
{
  v6.receiver = self;
  v6.super_class = MapHandler;
  v2 = [(MapHandler *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(NSMutableSet);
    pendingSendGuids = v2->_pendingSendGuids;
    v2->_pendingSendGuids = v3;
  }

  return v2;
}

- (MapHandlerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end