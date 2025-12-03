@interface GKBulletinMonogramRenderer
+ (void)monogramImageForPlayerID:(id)d playerName:(id)name withCompletion:(id)completion;
@end

@implementation GKBulletinMonogramRenderer

+ (void)monogramImageForPlayerID:(id)d playerName:(id)name withCompletion:(id)completion
{
  nameCopy = name;
  completionCopy = completion;
  v9 = [d componentsSeparatedByString:@":"];
  if ([v9 count] == 2)
  {
    if ([nameCopy length])
    {
      _firstGrapheme = [nameCopy _firstGrapheme];
    }

    else
    {
      _firstGrapheme = @"U";
    }

    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1001A2F78;
    v12[3] = &unk_10036A5D0;
    v16 = vdupq_n_s64(0x4060000000000000uLL);
    v17 = 0x4008000000000000;
    v13 = v9;
    v14 = _firstGrapheme;
    v15 = completionCopy;
    v11 = _firstGrapheme;
    dispatch_async(&_dispatch_main_q, v12);
  }

  else
  {
    (*(completionCopy + 2))(completionCopy, 0);
  }
}

@end