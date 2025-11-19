@interface ServerRPC
- (id)batchQuery;
- (id)singleQuery;
@end

@implementation ServerRPC

- (id)batchQuery
{
  if ([(ServerRPC *)self rpcType]== 1)
  {
    v3 = self;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)singleQuery
{
  if ([(ServerRPC *)self rpcType])
  {
    v3 = 0;
  }

  else
  {
    v3 = self;
  }

  return v3;
}

@end