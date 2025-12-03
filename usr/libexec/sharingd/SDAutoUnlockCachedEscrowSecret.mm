@interface SDAutoUnlockCachedEscrowSecret
- (BOOL)isValid;
- (SDAutoUnlockCachedEscrowSecret)initWithEscrowSecret:(id)secret;
- (id)getEscrowSecretCopyIfValid;
@end

@implementation SDAutoUnlockCachedEscrowSecret

- (SDAutoUnlockCachedEscrowSecret)initWithEscrowSecret:(id)secret
{
  secretCopy = secret;
  v13.receiver = self;
  v13.super_class = SDAutoUnlockCachedEscrowSecret;
  v5 = [(SDAutoUnlockCachedEscrowSecret *)&v13 init];
  v6 = v5;
  if (v5)
  {
    [(SDAutoUnlockCachedEscrowSecret *)v5 setEscrowSecret:secretCopy];
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
  escrowSecret = [(SDAutoUnlockCachedEscrowSecret *)self escrowSecret];
  if (escrowSecret)
  {
    expireDate = [(SDAutoUnlockCachedEscrowSecret *)self expireDate];
    v5 = +[NSDate date];
    v6 = [expireDate laterDate:v5];
    expireDate2 = [(SDAutoUnlockCachedEscrowSecret *)self expireDate];
    v8 = v6 == expireDate2;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)getEscrowSecretCopyIfValid
{
  escrowSecret = [(SDAutoUnlockCachedEscrowSecret *)self escrowSecret];
  v4 = [escrowSecret copy];

  isValid = [(SDAutoUnlockCachedEscrowSecret *)self isValid];
  v6 = 0;
  if (isValid && v4)
  {
    v6 = v4;
  }

  return v6;
}

@end