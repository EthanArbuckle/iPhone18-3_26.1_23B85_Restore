@interface NPTOFirstUnlockTask
- (NPTOFirstUnlockTask)initWithBlock:(id)block;
- (void)dealloc;
@end

@implementation NPTOFirstUnlockTask

- (NPTOFirstUnlockTask)initWithBlock:(id)block
{
  blockCopy = block;
  v12.receiver = self;
  v12.super_class = NPTOFirstUnlockTask;
  v5 = [(NPTOFirstUnlockTask *)&v12 init];
  if (v5)
  {
    v6 = objc_retainBlock(blockCopy);
    block = v5->_block;
    v5->_block = v6;

    if (qword_10009C658 != -1)
    {
      dispatch_once(&qword_10009C658, &stru_10008BA88);
    }

    v8 = qword_10009C648;
    objc_sync_enter(v8);
    v9 = qword_10009C648;
    v10 = objc_retainBlock(blockCopy);
    [v9 addObject:v10];

    objc_sync_exit(v8);
  }

  return v5;
}

- (void)dealloc
{
  v3 = qword_10009C648;
  objc_sync_enter(v3);
  v4 = qword_10009C648;
  v5 = objc_retainBlock(self->_block);
  [v4 removeObject:v5];

  objc_sync_exit(v3);
  v6.receiver = self;
  v6.super_class = NPTOFirstUnlockTask;
  [(NPTOFirstUnlockTask *)&v6 dealloc];
}

@end