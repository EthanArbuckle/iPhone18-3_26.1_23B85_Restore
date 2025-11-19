@interface PairingNotification
- (PairingNotification)initWithType:(int)a3 passkey:(unint64_t)a4 device:(id)a5;
@end

@implementation PairingNotification

- (PairingNotification)initWithType:(int)a3 passkey:(unint64_t)a4 device:(id)a5
{
  v8.receiver = self;
  v8.super_class = PairingNotification;
  result = [(UserNotification *)&v8 initWithType:4 device:a5 bundleID:0];
  if (result)
  {
    result->_pairingType = a3;
    result->_passkey = a4;
  }

  return result;
}

@end