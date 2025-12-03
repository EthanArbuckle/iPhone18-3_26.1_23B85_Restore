@interface NSPPrivacyProxyTokenAgent
- (void)tokenLowWaterMarkReached;
@end

@implementation NSPPrivacyProxyTokenAgent

- (void)tokenLowWaterMarkReached
{
  selfCopy = self;
  if (self)
  {
    self = objc_loadWeakRetained(&self->_delegate);
  }

  selfCopy2 = self;
  [(NSPPrivacyProxyTokenAgent *)self tokenLowWaterMarkReachedForAgent:selfCopy];
}

@end