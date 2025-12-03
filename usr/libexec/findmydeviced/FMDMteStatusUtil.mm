@interface FMDMteStatusUtil
+ (void)fetchMteStatusWithCompletion:(id)completion;
@end

@implementation FMDMteStatusUtil

+ (void)fetchMteStatusWithCompletion:(id)completion
{
  completionCopy = completion;
  v17 = 0;
  v4 = [CKKSControl CKKSControlObject:0 error:&v17];
  v5 = v17;
  if (v5)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 == 0;
  }

  if (v6)
  {
    v7 = sub_100002880();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_10022EBFC(v5, v7, v8, v9, v10, v11, v12, v13);
    }

    v14 = [v5 description];
    completionCopy[2](completionCopy, @"controlObjCreationError", v14);
  }

  else
  {
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_1001D7364;
    v15[3] = &unk_1002D11B0;
    v16 = completionCopy;
    [v4 rpcStatus:@"Manatee" reply:v15];
    v14 = v16;
  }
}

@end