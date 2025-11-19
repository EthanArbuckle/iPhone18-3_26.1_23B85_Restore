@interface NRQueueTable
+ (id)sharedTable;
- (NRQueueTable)init;
- (id)objectForKeyedSubscript:(id)a3;
- (id)queueWithDispatchQueue:(id)a3;
- (void)enumerateQueuesWithBlock:(id)a3;
- (void)removeQueue:(id)a3;
@end

@implementation NRQueueTable

- (NRQueueTable)init
{
  v9.receiver = self;
  v9.super_class = NRQueueTable;
  v2 = [(NRQueueTable *)&v9 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, 0);
    v4 = dispatch_queue_create("com.apple.NanoRegistry.NRQueue.queueTable", v3);
    queueTableQueue = v2->_queueTableQueue;
    v2->_queueTableQueue = v4;

    v6 = +[NSMutableDictionary dictionary];
    queueTable = v2->_queueTable;
    v2->_queueTable = v6;
  }

  return v2;
}

+ (id)sharedTable
{
  if (qword_1001B3AB8 != -1)
  {
    sub_100103C30();
  }

  v3 = qword_1001B3AC0;

  return v3;
}

- (id)objectForKeyedSubscript:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_1000D75B4;
  v16 = sub_1000D75C4;
  v17 = 0;
  queueTableQueue = self->_queueTableQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000D75CC;
  block[3] = &unk_100175BE0;
  v10 = v4;
  v11 = &v12;
  block[4] = self;
  v6 = v4;
  dispatch_sync(queueTableQueue, block);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

- (void)enumerateQueuesWithBlock:(id)a3
{
  v4 = a3;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = sub_1000D75B4;
  v21 = sub_1000D75C4;
  v22 = 0;
  queueTableQueue = self->_queueTableQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000D784C;
  block[3] = &unk_1001758D0;
  block[4] = self;
  block[5] = &v17;
  dispatch_sync(queueTableQueue, block);
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = v18[5];
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v23 count:16];
  if (v7)
  {
    v8 = *v13;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v13 != v8)
      {
        objc_enumerationMutation(v6);
      }

      v10 = [*(*(&v12 + 1) + 8 * v9) nonretainedObjectValue];
      v11 = v4[2](v4, v10);

      if ((v11 & 1) == 0)
      {
        break;
      }

      if (v7 == ++v9)
      {
        v7 = [v6 countByEnumeratingWithState:&v12 objects:v23 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  _Block_object_dispose(&v17, 8);
}

- (id)queueWithDispatchQueue:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_1000D75B4;
  v16 = sub_1000D75C4;
  v17 = 0;
  queueTableQueue = self->_queueTableQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000D79C4;
  block[3] = &unk_100175BE0;
  v10 = v4;
  v11 = &v12;
  block[4] = self;
  v6 = v4;
  dispatch_sync(queueTableQueue, block);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

- (void)removeQueue:(id)a3
{
  v4 = a3;
  queueTableQueue = self->_queueTableQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000D7C08;
  v7[3] = &unk_100175598;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queueTableQueue, v7);
}

@end