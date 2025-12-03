@interface ANCNotification
- (ANCNotification)initWithUID:(unsigned int)d alert:(id)alert;
@end

@implementation ANCNotification

- (ANCNotification)initWithUID:(unsigned int)d alert:(id)alert
{
  alertCopy = alert;
  v11.receiver = self;
  v11.super_class = ANCNotification;
  v8 = [(ANCNotification *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_UID = d;
    objc_storeStrong(&v8->_alert, alert);
    v9->_isDirty = 1;
  }

  return v9;
}

@end