@interface ServerRPC
- (id)batchQuery;
- (id)singleQuery;
@end

@implementation ServerRPC

- (id)batchQuery
{
  if ([(ServerRPC *)self rpcType]== 1)
  {
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)singleQuery
{
  if ([(ServerRPC *)self rpcType])
  {
    selfCopy = 0;
  }

  else
  {
    selfCopy = self;
  }

  return selfCopy;
}

@end