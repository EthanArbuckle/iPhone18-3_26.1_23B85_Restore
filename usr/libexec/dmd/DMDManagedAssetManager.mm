@interface DMDManagedAssetManager
- (void)promptUserToLoginToiTunesIfNeededTitle:(id)a3 message:(id)a4 assertion:(id)a5 completionBlock:(id)a6;
@end

@implementation DMDManagedAssetManager

- (void)promptUserToLoginToiTunesIfNeededTitle:(id)a3 message:(id)a4 assertion:(id)a5 completionBlock:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = +[SSAccountStore defaultStore];
  v15 = [v14 activeAccount];

  if (!v15)
  {
    v18 = +[DMDUserNotificationManager sharedManager];
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_10004FD14;
    v19[3] = &unk_1000CF4A0;
    v19[4] = self;
    v20 = v12;
    v21 = v13;
    [v18 promptUserToLogIntoiTunesWithTitle:v10 message:v11 assertion:v20 completionBlock:v19];

    v17 = v20;
    goto LABEL_5;
  }

  if (v13)
  {
    v16 = dispatch_get_global_queue(0, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10004FCCC;
    block[3] = &unk_1000CF450;
    v24 = v13;
    v23 = v12;
    dispatch_async(v16, block);

    v17 = v24;
LABEL_5:
  }
}

@end