@interface NMRMediaRemoteUpdater
- (NMRMediaRemoteUpdater)initWithQueue:(id)queue updateBlock:(id)block;
- (void)executeUpdateBlock;
@end

@implementation NMRMediaRemoteUpdater

- (NMRMediaRemoteUpdater)initWithQueue:(id)queue updateBlock:(id)block
{
  queueCopy = queue;
  blockCopy = block;
  v14.receiver = self;
  v14.super_class = NMRMediaRemoteUpdater;
  v9 = [(NMRMediaRemoteUpdater *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_queue, queue);
    v11 = objc_retainBlock(blockCopy);
    updateBlock = v10->_updateBlock;
    v10->_updateBlock = v11;
  }

  return v10;
}

- (void)executeUpdateBlock
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000D8C8;
  block[3] = &unk_100048CD0;
  block[4] = self;
  dispatch_async(queue, block);
}

@end