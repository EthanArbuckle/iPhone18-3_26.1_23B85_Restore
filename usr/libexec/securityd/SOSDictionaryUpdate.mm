@interface SOSDictionaryUpdate
- (BOOL)hasChanged:(__CFDictionary *)changed;
- (SOSDictionaryUpdate)init;
- (void)dealloc;
- (void)onqueueFreeHashBuff;
- (void)reset;
@end

@implementation SOSDictionaryUpdate

- (void)reset
{
  queue = [(SOSDictionaryUpdate *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10022B144;
  block[3] = &unk_100346018;
  block[4] = self;
  dispatch_sync(queue, block);
}

- (BOOL)hasChanged:(__CFDictionary *)changed
{
  v4 = sub_10022B238(changed);
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  queue = [(SOSDictionaryUpdate *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10022B41C;
  block[3] = &unk_1003472B0;
  block[5] = &v8;
  block[6] = v4;
  block[4] = self;
  dispatch_sync(queue, block);

  LOBYTE(self) = *(v9 + 24);
  _Block_object_dispose(&v8, 8);
  return self;
}

- (void)onqueueFreeHashBuff
{
  queue = [(SOSDictionaryUpdate *)self queue];
  dispatch_assert_queue_V2(queue);

  currentHashBuf = self->currentHashBuf;
  if (currentHashBuf)
  {
    free(currentHashBuf);
    self->currentHashBuf = 0;
  }
}

- (void)dealloc
{
  [(SOSDictionaryUpdate *)self reset];
  v3.receiver = self;
  v3.super_class = SOSDictionaryUpdate;
  [(SOSDictionaryUpdate *)&v3 dealloc];
}

- (SOSDictionaryUpdate)init
{
  v7.receiver = self;
  v7.super_class = SOSDictionaryUpdate;
  v2 = [(SOSDictionaryUpdate *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v2->currentHashBuf = 0;
    v4 = dispatch_queue_create("SOSDictionaryUpdate", 0);
    queue = v3->_queue;
    v3->_queue = v4;
  }

  return v3;
}

@end