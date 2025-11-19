@interface GKBulletinMonogramRenderer
+ (void)monogramImageForPlayerID:(id)a3 playerName:(id)a4 withCompletion:(id)a5;
@end

@implementation GKBulletinMonogramRenderer

+ (void)monogramImageForPlayerID:(id)a3 playerName:(id)a4 withCompletion:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = [a3 componentsSeparatedByString:@":"];
  if ([v9 count] == 2)
  {
    if ([v7 length])
    {
      v10 = [v7 _firstGrapheme];
    }

    else
    {
      v10 = @"U";
    }

    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1001A2F78;
    v12[3] = &unk_10036A5D0;
    v16 = vdupq_n_s64(0x4060000000000000uLL);
    v17 = 0x4008000000000000;
    v13 = v9;
    v14 = v10;
    v15 = v8;
    v11 = v10;
    dispatch_async(&_dispatch_main_q, v12);
  }

  else
  {
    (*(v8 + 2))(v8, 0);
  }
}

@end