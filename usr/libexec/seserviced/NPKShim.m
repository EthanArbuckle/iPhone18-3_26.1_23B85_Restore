@interface NPKShim
+ (void)getWatchSnapshot:(id)a3 completion:(id)a4;
+ (void)reclaimUnusedSEMemory:(id)a3 completion:(id)a4;
@end

@implementation NPKShim

+ (void)getWatchSnapshot:(id)a3 completion:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (objc_opt_respondsToSelector())
  {
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100012250;
    v8[3] = &unk_1004C1280;
    v9 = v6;
    [v5 currentSesdSnapshot:v8];
  }

  else
  {
    v7 = SESDefaultLogObject();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Nanopassbook isn't new enough for currentSesdSnapshot", buf, 2u);
    }

    (*(v6 + 2))(v6, 0);
  }
}

+ (void)reclaimUnusedSEMemory:(id)a3 completion:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (objc_opt_respondsToSelector())
  {
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100012548;
    v8[3] = &unk_1004C1280;
    v9 = v6;
    [v5 reclaimUnusedSecureElementMemory:v8];
  }

  else
  {
    v7 = SESDefaultLogObject();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Nanopassbook isn't new enough for reclaimUnusedSEMemory", buf, 2u);
    }

    (*(v6 + 2))(v6, 0);
  }
}

@end