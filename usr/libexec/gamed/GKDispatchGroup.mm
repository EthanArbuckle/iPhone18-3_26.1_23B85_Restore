@interface GKDispatchGroup
- (void)performOnQueue:(id)queue block:(id)block;
@end

@implementation GKDispatchGroup

- (void)performOnQueue:(id)queue block:(id)block
{
  queueCopy = queue;
  blockCopy = block;
  if (!queueCopy)
  {
    sub_100292FFC(a2, self);
  }

  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10015CBF8;
  v11[3] = &unk_100368000;
  v12 = queueCopy;
  v13 = blockCopy;
  v9 = blockCopy;
  v10 = queueCopy;
  [(GKDispatchGroup *)self perform:v11];
}

@end