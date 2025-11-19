@interface SDAutoUnlockCachedEscrowSecret
- (BOOL)isValid;
- (SDAutoUnlockCachedEscrowSecret)initWithEscrowSecret:(id)a3;
- (id)getEscrowSecretCopyIfValid;
@end

@implementation SDAutoUnlockCachedEscrowSecret

- (SDAutoUnlockCachedEscrowSecret)initWithEscrowSecret:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = SDAutoUnlockCachedEscrowSecret;
  v5 = [(SDAutoUnlockCachedEscrowSecret *)&v13 init];
  v6 = v5;
  if (v5)
  {
    [(SDAutoUnlockCachedEscrowSecret *)v5 setEscrowSecret:v4];
    v7 = +[NSDate now];
    v8 = [v7 dateByAddingTimeInterval:3600.0];
    [(SDAutoUnlockCachedEscrowSecret *)v6 setExpireDate:v8];

    v9 = dispatch_time(0, 3600000000000);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100152A24;
    block[3] = &unk_1008CDEA0;
    v12 = v6;
    dispatch_after(v9, &_dispatch_main_q, block);
  }

  return v6;
}

- (BOOL)isValid
{
  v3 = [(SDAutoUnlockCachedEscrowSecret *)self escrowSecret];
  if (v3)
  {
    v4 = [(SDAutoUnlockCachedEscrowSecret *)self expireDate];
    v5 = +[NSDate date];
    v6 = [v4 laterDate:v5];
    v7 = [(SDAutoUnlockCachedEscrowSecret *)self expireDate];
    v8 = v6 == v7;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)getEscrowSecretCopyIfValid
{
  v3 = [(SDAutoUnlockCachedEscrowSecret *)self escrowSecret];
  v4 = [v3 copy];

  v5 = [(SDAutoUnlockCachedEscrowSecret *)self isValid];
  v6 = 0;
  if (v5 && v4)
  {
    v6 = v4;
  }

  return v6;
}

@end