@interface NIServerVisionDataDistributor
+ (id)sharedProvider;
- (id)initPrivate;
- (void)processVisionInput:(id)input;
- (void)registerForVisionInput:(id)input;
- (void)unregisterForVisionInput:(id)input;
@end

@implementation NIServerVisionDataDistributor

- (id)initPrivate
{
  v7.receiver = self;
  v7.super_class = NIServerVisionDataDistributor;
  v2 = [(NIServerVisionDataDistributor *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v2->_lock._os_unfair_lock_opaque = 0;
    v4 = +[NSHashTable weakObjectsHashTable];
    consumers = v3->_consumers;
    v3->_consumers = v4;
  }

  return v3;
}

+ (id)sharedProvider
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10026D864;
  block[3] = &unk_10098AD98;
  block[4] = self;
  if (qword_1009F2648 != -1)
  {
    dispatch_once(&qword_1009F2648, block);
  }

  v2 = qword_1009F2640;

  return v2;
}

- (void)processVisionInput:(id)input
{
  inputCopy = input;
  [inputCopy timestamp];
  v6 = sub_1002FE75C(&self->_machTimeConverter, v5);
  if (v7)
  {
    [inputCopy overrideTimestamp:*&v6];
    os_unfair_lock_lock(&self->_lock);
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v8 = self->_consumers;
    selfCopy = self;
    v9 = [(NSHashTable *)v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v9)
    {
      v10 = *v18;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v18 != v10)
          {
            objc_enumerationMutation(v8);
          }

          v12 = *(*(&v17 + 1) + 8 * i);
          getQueueForInputingData = [v12 getQueueForInputingData];
          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_10026DA94;
          block[3] = &unk_10098A2E8;
          block[4] = v12;
          v16 = inputCopy;
          dispatch_async(getQueueForInputingData, block);
        }

        v9 = [(NSHashTable *)v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v9);
    }

    os_unfair_lock_unlock(&selfCopy->_lock);
  }
}

- (void)registerForVisionInput:(id)input
{
  inputCopy = input;
  os_unfair_lock_lock(&self->_lock);
  if (([inputCopy supportsCameraAssistance] & 1) == 0)
  {
    sub_1004B52AC();
  }

  [(NSHashTable *)self->_consumers addObject:inputCopy];
  os_unfair_lock_unlock(&self->_lock);
}

- (void)unregisterForVisionInput:(id)input
{
  inputCopy = input;
  os_unfair_lock_lock(&self->_lock);
  [(NSHashTable *)self->_consumers removeObject:inputCopy];

  os_unfair_lock_unlock(&self->_lock);
}

@end