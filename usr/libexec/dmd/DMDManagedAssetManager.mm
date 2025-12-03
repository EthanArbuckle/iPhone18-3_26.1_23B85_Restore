@interface DMDManagedAssetManager
- (void)promptUserToLoginToiTunesIfNeededTitle:(id)title message:(id)message assertion:(id)assertion completionBlock:(id)block;
@end

@implementation DMDManagedAssetManager

- (void)promptUserToLoginToiTunesIfNeededTitle:(id)title message:(id)message assertion:(id)assertion completionBlock:(id)block
{
  titleCopy = title;
  messageCopy = message;
  assertionCopy = assertion;
  blockCopy = block;
  v14 = +[SSAccountStore defaultStore];
  activeAccount = [v14 activeAccount];

  if (!activeAccount)
  {
    v18 = +[DMDUserNotificationManager sharedManager];
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_10004FD14;
    v19[3] = &unk_1000CF4A0;
    v19[4] = self;
    v20 = assertionCopy;
    v21 = blockCopy;
    [v18 promptUserToLogIntoiTunesWithTitle:titleCopy message:messageCopy assertion:v20 completionBlock:v19];

    v17 = v20;
    goto LABEL_5;
  }

  if (blockCopy)
  {
    v16 = dispatch_get_global_queue(0, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10004FCCC;
    block[3] = &unk_1000CF450;
    v24 = blockCopy;
    v23 = assertionCopy;
    dispatch_async(v16, block);

    v17 = v24;
LABEL_5:
  }
}

@end