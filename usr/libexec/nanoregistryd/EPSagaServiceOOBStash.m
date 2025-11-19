@interface EPSagaServiceOOBStash
- (EPSagaServiceOOBStash)init;
- (id)recallOOBKey;
- (void)_clearOOBKey;
- (void)clearOOBKey;
- (void)storeOOBKeyWithTimeout:(id)a3;
@end

@implementation EPSagaServiceOOBStash

- (EPSagaServiceOOBStash)init
{
  v7.receiver = self;
  v7.super_class = EPSagaServiceOOBStash;
  v2 = [(EPSagaServiceOOBStash *)&v7 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.nanoregistry.saga.service.oobstashexpiration", v3);
    queue = v2->_queue;
    v2->_queue = v4;
  }

  return v2;
}

- (void)storeOOBKeyWithTimeout:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000EE7D4;
  v7[3] = &unk_100175598;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(queue, v7);
}

- (void)_clearOOBKey
{
  keyData = self->_keyData;
  self->_keyData = 0;

  [(AbstractTimer *)self->_keyExpirationTimer invalidate];
  keyExpirationTimer = self->_keyExpirationTimer;
  self->_keyExpirationTimer = 0;
}

- (void)clearOOBKey
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000EE970;
  block[3] = &unk_100175660;
  block[4] = self;
  dispatch_sync(queue, block);
}

- (id)recallOOBKey
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_1000EEA68;
  v10 = sub_1000EEA78;
  v11 = 0;
  queue = self->_queue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000EEA80;
  v5[3] = &unk_1001758D0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

@end