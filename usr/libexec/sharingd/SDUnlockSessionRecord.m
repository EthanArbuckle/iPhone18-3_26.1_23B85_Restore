@interface SDUnlockSessionRecord
- (id)description;
@end

@implementation SDUnlockSessionRecord

- (id)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [NSString stringWithFormat:@"<%@ %p> (unlockSession = %ld, expireTime = %lld, keyData = %@)", v4, self, self->_unlockSessionID, self->_expireTime, self->_keyData];

  return v5;
}

@end