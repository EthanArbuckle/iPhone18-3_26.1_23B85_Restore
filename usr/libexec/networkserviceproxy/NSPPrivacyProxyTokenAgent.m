@interface NSPPrivacyProxyTokenAgent
- (void)tokenLowWaterMarkReached;
@end

@implementation NSPPrivacyProxyTokenAgent

- (void)tokenLowWaterMarkReached
{
  v2 = self;
  if (self)
  {
    self = objc_loadWeakRetained(&self->_delegate);
  }

  v3 = self;
  [(NSPPrivacyProxyTokenAgent *)self tokenLowWaterMarkReachedForAgent:v2];
}

@end