@interface ANCNotification
- (ANCNotification)initWithUID:(unsigned int)a3 alert:(id)a4;
@end

@implementation ANCNotification

- (ANCNotification)initWithUID:(unsigned int)a3 alert:(id)a4
{
  v7 = a4;
  v11.receiver = self;
  v11.super_class = ANCNotification;
  v8 = [(ANCNotification *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_UID = a3;
    objc_storeStrong(&v8->_alert, a4);
    v9->_isDirty = 1;
  }

  return v9;
}

@end