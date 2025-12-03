@interface MRBluetoothComponentHandler
+ (id)sharedSingleton;
- (MRBluetoothComponentHandler)init;
- (id)_init;
@end

@implementation MRBluetoothComponentHandler

- (MRBluetoothComponentHandler)init
{
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = NSStringFromSelector("sharedSingleton");
  v7 = NSStringFromSelector(a2);
  +[NSException raise:format:](NSException, "raise:format:", NSInternalInconsistencyException, @"Use +[%@ %@] instead of -%@.", v5, v6, v7);

  return 0;
}

- (id)_init
{
  v9.receiver = self;
  v9.super_class = MRBluetoothComponentHandler;
  v2 = [(MRSystemHealthComponentHandler *)&v9 initWithComponentName:@"Bluetooth"];
  v3 = v2;
  if (v2)
  {
    [(MRBaseComponentHandler *)v2 setComponentName:@"Bluetooth"];
    v4 = objc_opt_new();
    [(MRBaseComponentHandler *)v3 setComponentAuthHandler:v4];

    [(MRBaseComponentHandler *)v3 setComponentId:3];
    [(MRBaseComponentHandler *)v3 setPopUpNotificationTitle:@"BLUETOOTH_FOLLOWUP_TITLE"];
    deviceClass = [(MRBaseComponentHandler *)v3 deviceClass];
    if (deviceClass == 3)
    {
      v6 = @"BLUETOOTH_FOLLOWUP_INFO_IPAD";
    }

    else
    {
      v6 = @"BLUETOOTH_FOLLOWUP_INFO";
    }

    if (deviceClass == 3)
    {
      v7 = @"BLUETOOTH_POPUP_INFO_IPAD";
    }

    else
    {
      v7 = @"BLUETOOTH_POPUP_INFO";
    }

    [(MRBaseComponentHandler *)v3 setFollowUpInfoMessage:v6];
    [(MRBaseComponentHandler *)v3 setPopUpNotificationMessage:v7];
    [(MRBaseComponentHandler *)v3 setUnlockCheckActivityRequired:0];
    [(MRBaseComponentHandler *)v3 setDisplayNotification:0];
    [(MRBaseComponentHandler *)v3 setDisplayModalPopup:0];
    [(MRBaseComponentHandler *)v3 setDisplayFollowup:0];
  }

  return v3;
}

+ (id)sharedSingleton
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000021DC;
  block[3] = &unk_100018610;
  block[4] = self;
  if (qword_10001EA98 != -1)
  {
    dispatch_once(&qword_10001EA98, block);
  }

  v2 = qword_10001EA90;

  return v2;
}

@end