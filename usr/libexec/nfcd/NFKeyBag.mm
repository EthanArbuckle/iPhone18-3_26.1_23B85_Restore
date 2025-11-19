@interface NFKeyBag
- (NFKeyBag)init;
@end

@implementation NFKeyBag

- (NFKeyBag)init
{
  v5.receiver = self;
  v5.super_class = NFKeyBag;
  v2 = [(NFKeyBag *)&v5 init];
  v3 = v2;
  if (v2)
  {
    v2->_notifyToken = -1;
    *&v2->_hasBeenUnlocked = 0;
    v2->_isLocked = 0;
    sub_100206C84(v2);
  }

  return v3;
}

@end