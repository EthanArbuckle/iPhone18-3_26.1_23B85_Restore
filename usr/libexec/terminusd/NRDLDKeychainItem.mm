@interface NRDLDKeychainItem
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation NRDLDKeychainItem

- (id)copyWithZone:(_NSZone *)zone
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  if (self)
  {
    isChanged = self->_isChanged;
    if (!result)
    {
      return result;
    }
  }

  else
  {
    isChanged = 0;
    if (!result)
    {
      return result;
    }
  }

  *(result + 8) = isChanged;
  return result;
}

@end