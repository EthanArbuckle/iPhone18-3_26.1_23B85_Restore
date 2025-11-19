@interface CRSetupLockscreenStatus
+ (void)fetchUILockStatus:(id)a3;
@end

@implementation CRSetupLockscreenStatus

+ (void)fetchUILockStatus:(id)a3
{
  v3 = a3;
  v4 = dispatch_get_global_queue(2, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10004FFBC;
  block[3] = &unk_1000DD960;
  v7 = v3;
  v5 = v3;
  dispatch_async(v4, block);
}

@end