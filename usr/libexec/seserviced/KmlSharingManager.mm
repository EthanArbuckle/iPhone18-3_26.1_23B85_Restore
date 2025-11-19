@interface KmlSharingManager
- (KmlSharingManager)init;
- (void)onAlarm:(id)a3;
- (void)setAppletLockState:(BOOL)a3;
@end

@implementation KmlSharingManager

- (KmlSharingManager)init
{
  v9.receiver = self;
  v9.super_class = KmlSharingManager;
  v2 = [(KmlSharingManager *)&v9 init];
  if (v2)
  {
    v3 = +[NSMutableArray array];
    validShareInitiatorEndpoints = v2->_validShareInitiatorEndpoints;
    v2->_validShareInitiatorEndpoints = v3;

    v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v6 = dispatch_queue_create("com.apple.sesd.kml.sharingManager", v5);
    ksmQueue = v2->_ksmQueue;
    v2->_ksmQueue = v6;

    *&v2->_alarmCheckedOnFirstunlock = 0;
  }

  return v2;
}

- (void)setAppletLockState:(BOOL)a3
{
  ksmQueue = self->_ksmQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1003892D8;
  v4[3] = &unk_1004C2ED0;
  v4[4] = self;
  v5 = a3;
  dispatch_async(ksmQueue, v4);
}

- (void)onAlarm:(id)a3
{
  v4 = a3;
  ksmQueue = self->_ksmQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100389510;
  v7[3] = &unk_1004C22F0;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(ksmQueue, v7);
}

@end