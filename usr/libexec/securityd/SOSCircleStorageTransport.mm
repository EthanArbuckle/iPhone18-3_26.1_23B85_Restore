@interface SOSCircleStorageTransport
- (SOSCircleStorageTransport)init;
- (SOSCircleStorageTransport)initWithAccount:(id)a3;
@end

@implementation SOSCircleStorageTransport

- (SOSCircleStorageTransport)initWithAccount:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = SOSCircleStorageTransport;
  v5 = [(SOSCircleStorageTransport *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(SOSCircleStorageTransport *)v5 setAccount:v4];
  }

  return v6;
}

- (SOSCircleStorageTransport)init
{
  v3.receiver = self;
  v3.super_class = SOSCircleStorageTransport;
  return [(SOSCircleStorageTransport *)&v3 init];
}

@end