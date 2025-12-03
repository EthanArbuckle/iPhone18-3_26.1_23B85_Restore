@interface WiFiAccountStoreManager
+ (id)sharedWiFiAccountStoreManager;
- (BOOL)isManagedAppleID;
- (WiFiAccountStoreManager)init;
- (void)_updateIsManagedAppleIDAndNotify:(BOOL)notify;
- (void)dealloc;
- (void)registerCallback:(void *)callback withContext:(void *)context;
@end

@implementation WiFiAccountStoreManager

+ (id)sharedWiFiAccountStoreManager
{
  if (qword_100298560 != -1)
  {
    sub_100156D50();
  }

  return qword_100298558;
}

- (WiFiAccountStoreManager)init
{
  v8.receiver = self;
  v8.super_class = WiFiAccountStoreManager;
  v2 = [(WiFiAccountStoreManager *)&v8 init];
  if (!v2)
  {
    v7 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: Failed in super-init", "-[WiFiAccountStoreManager init]"}];
    }

    goto LABEL_12;
  }

  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v4 = dispatch_queue_create("com.apple.wifid.accountstore", v3);
  v2->_dispatchQueue = v4;
  if (!v4)
  {
    v7 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: null dispatchQueue", "-[WiFiAccountStoreManager init]"}];
    }

    goto LABEL_12;
  }

  v5 = objc_alloc_init(ACAccountStore);
  v2->_accountStore = v5;
  if (!v5)
  {
    v7 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: Null _accountStore", "-[WiFiAccountStoreManager init]"}];
    }

LABEL_12:
    objc_autoreleasePoolPop(v7);

    return 0;
  }

  [(WiFiAccountStoreManager *)v2 _updateIsManagedAppleIDAndNotify:0];
  [+[NSNotificationCenter defaultCenter](NSNotificationCenter addObserver:"addObserver:selector:name:object:" selector:v2 name:"_accountStoreDidChange:" object:ACAccountStoreDidChangeNotification, 0];
  return v2;
}

- (void)dealloc
{
  [+[NSNotificationCenter defaultCenter](NSNotificationCenter removeObserver:"removeObserver:name:object:" name:self object:ACAccountStoreDidChangeNotification, 0];
  dispatchQueue = self->_dispatchQueue;
  if (dispatchQueue)
  {
    dispatch_release(dispatchQueue);
  }

  callback = self->_callback;
  if (callback)
  {
    _Block_release(callback);
    self->_callback = 0;
  }

  if (self->_context)
  {
    self->_context = 0;
  }

  accountStore = self->_accountStore;
  if (accountStore)
  {
  }

  v6.receiver = self;
  v6.super_class = WiFiAccountStoreManager;
  [(WiFiAccountStoreManager *)&v6 dealloc];
}

- (void)registerCallback:(void *)callback withContext:(void *)context
{
  [(WiFiAccountStoreManager *)self setCallback:callback];

  [(WiFiAccountStoreManager *)self setContext:context];
}

- (BOOL)isManagedAppleID
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10006B144;
  v4[3] = &unk_10025F818;
  v4[4] = self;
  v4[5] = &v5;
  dispatch_sync([(WiFiAccountStoreManager *)self dispatchQueue], v4);
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

- (void)_updateIsManagedAppleIDAndNotify:(BOOL)notify
{
  v7[0] = 0;
  v7[1] = v7;
  v7[2] = 0x2020000000;
  v8 = [-[ACAccountStore aa_primaryAppleAccount](-[WiFiAccountStoreManager accountStore](self "accountStore")];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10006B230;
  block[3] = &unk_10025F840;
  block[4] = self;
  block[5] = v7;
  notifyCopy = notify;
  dispatch_sync([(WiFiAccountStoreManager *)self dispatchQueue], block);
  _Block_object_dispose(v7, 8);
}

@end