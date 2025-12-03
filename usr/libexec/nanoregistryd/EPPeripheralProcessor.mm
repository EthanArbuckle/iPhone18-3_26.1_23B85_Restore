@interface EPPeripheralProcessor
- (EPPeripheralProcessor)initWithDeviceIDs:(id)ds block:(id)block completion:(id)completion;
- (void)update;
@end

@implementation EPPeripheralProcessor

- (EPPeripheralProcessor)initWithDeviceIDs:(id)ds block:(id)block completion:(id)completion
{
  dsCopy = ds;
  blockCopy = block;
  completionCopy = completion;
  v22.receiver = self;
  v22.super_class = EPPeripheralProcessor;
  v12 = [(EPPeripheralProcessor *)&v22 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_me, v12);
    objc_storeStrong(&v13->_deviceIDs, ds);
    v14 = objc_retainBlock(blockCopy);
    v15 = v13->_block;
    v13->_block = v14;

    v16 = objc_retainBlock(completionCopy);
    completion = v13->_completion;
    v13->_completion = v16;

    v18 = +[EPFactory queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000F955C;
    block[3] = &unk_100175660;
    v21 = v13;
    dispatch_async(v18, block);
  }

  return v13;
}

- (void)update
{
  if (self->_me)
  {
    centralManager = self->_centralManager;
    if (!centralManager)
    {
      v4 = +[EPFactory sharedFactory];
      v5 = [v4 newCentralManagerWithDelegate:self];
      v6 = self->_centralManager;
      self->_centralManager = v5;

      centralManager = self->_centralManager;
    }

    if ([(EPResource *)centralManager availability]== 1)
    {
      manager = [(EPCentralManager *)self->_centralManager manager];
      v8 = [manager retrievePeripheralsWithIdentifiers:self->_deviceIDs];
      v16 = 0u;
      v17 = 0u;
      v18 = 0u;
      v19 = 0u;
      v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v17;
        do
        {
          v12 = 0;
          do
          {
            if (*v17 != v11)
            {
              objc_enumerationMutation(v8);
            }

            v13 = *(*(&v16 + 1) + 8 * v12);
            (*(self->_block + 2))();
            v12 = v12 + 1;
          }

          while (v10 != v12);
          v10 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
        }

        while (v10);
      }

      completion = self->_completion;
      if (completion)
      {
        completion[2]();
      }

      me = self->_me;
      self->_me = 0;
    }
  }
}

@end