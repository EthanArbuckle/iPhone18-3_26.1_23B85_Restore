@interface SOSCKCircleStorage
- (SOSCKCircleStorage)init;
- (SOSCKCircleStorage)initWithAccount:(id)account;
@end

@implementation SOSCKCircleStorage

- (SOSCKCircleStorage)initWithAccount:(id)account
{
  accountCopy = account;
  v8.receiver = self;
  v8.super_class = SOSCKCircleStorage;
  v5 = [(SOSCircleStorageTransport *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(SOSCircleStorageTransport *)v5 setAccount:accountCopy];
  }

  return v6;
}

- (SOSCKCircleStorage)init
{
  v5.receiver = self;
  v5.super_class = SOSCKCircleStorage;
  v2 = [(SOSCircleStorageTransport *)&v5 init];
  v3 = v2;
  if (v2)
  {
    sub_1002360B4(v2);
  }

  return v3;
}

@end