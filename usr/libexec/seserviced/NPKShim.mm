@interface NPKShim
+ (void)getWatchSnapshot:(id)snapshot completion:(id)completion;
+ (void)reclaimUnusedSEMemory:(id)memory completion:(id)completion;
@end

@implementation NPKShim

+ (void)getWatchSnapshot:(id)snapshot completion:(id)completion
{
  snapshotCopy = snapshot;
  completionCopy = completion;
  if (objc_opt_respondsToSelector())
  {
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100012250;
    v8[3] = &unk_1004C1280;
    v9 = completionCopy;
    [snapshotCopy currentSesdSnapshot:v8];
  }

  else
  {
    v7 = SESDefaultLogObject();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Nanopassbook isn't new enough for currentSesdSnapshot", buf, 2u);
    }

    (*(completionCopy + 2))(completionCopy, 0);
  }
}

+ (void)reclaimUnusedSEMemory:(id)memory completion:(id)completion
{
  memoryCopy = memory;
  completionCopy = completion;
  if (objc_opt_respondsToSelector())
  {
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100012548;
    v8[3] = &unk_1004C1280;
    v9 = completionCopy;
    [memoryCopy reclaimUnusedSecureElementMemory:v8];
  }

  else
  {
    v7 = SESDefaultLogObject();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Nanopassbook isn't new enough for reclaimUnusedSEMemory", buf, 2u);
    }

    (*(completionCopy + 2))(completionCopy, 0);
  }
}

@end