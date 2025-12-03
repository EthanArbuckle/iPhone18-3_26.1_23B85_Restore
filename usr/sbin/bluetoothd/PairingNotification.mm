@interface PairingNotification
- (PairingNotification)initWithType:(int)type passkey:(unint64_t)passkey device:(id)device;
@end

@implementation PairingNotification

- (PairingNotification)initWithType:(int)type passkey:(unint64_t)passkey device:(id)device
{
  v8.receiver = self;
  v8.super_class = PairingNotification;
  result = [(UserNotification *)&v8 initWithType:4 device:device bundleID:0];
  if (result)
  {
    result->_pairingType = type;
    result->_passkey = passkey;
  }

  return result;
}

@end