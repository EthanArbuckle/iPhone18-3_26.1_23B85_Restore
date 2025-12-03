@interface CRSetupLockscreenStatus
+ (void)fetchUILockStatus:(id)status;
@end

@implementation CRSetupLockscreenStatus

+ (void)fetchUILockStatus:(id)status
{
  statusCopy = status;
  v4 = dispatch_get_global_queue(2, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10004FFBC;
  block[3] = &unk_1000DD960;
  v7 = statusCopy;
  v5 = statusCopy;
  dispatch_async(v4, block);
}

@end