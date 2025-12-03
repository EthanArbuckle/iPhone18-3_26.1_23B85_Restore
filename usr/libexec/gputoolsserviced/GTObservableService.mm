@interface GTObservableService
- (GTObservableService)init;
- (unint64_t)registerObserver:(id)observer;
- (void)deregisterObserver:(unint64_t)observer;
- (void)deregisterObserversForConnection:(id)connection path:(id)path;
- (void)notifyAll:(id)all;
@end

@implementation GTObservableService

- (GTObservableService)init
{
  v6.receiver = self;
  v6.super_class = GTObservableService;
  v2 = [(GTObservableService *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    observerIdToObserver = v2->_observerIdToObserver;
    v2->_observerIdToObserver = v3;

    v2->_nextObserverId = 1;
  }

  return v2;
}

- (unint64_t)registerObserver:(id)observer
{
  observerIdToObserver = self->_observerIdToObserver;
  nextObserverId = self->_nextObserverId;
  self->_nextObserverId = nextObserverId + 1;
  observerCopy = observer;
  v6 = [NSNumber numberWithUnsignedLongLong:nextObserverId];
  [(NSMutableDictionary *)observerIdToObserver setObject:observerCopy forKeyedSubscript:v6];

  return nextObserverId;
}

- (void)deregisterObserver:(unint64_t)observer
{
  observerIdToObserver = self->_observerIdToObserver;
  v4 = [NSNumber numberWithUnsignedLongLong:observer];
  [(NSMutableDictionary *)observerIdToObserver removeObjectForKey:v4];
}

- (void)deregisterObserversForConnection:(id)connection path:(id)path
{
  connectionCopy = connection;
  pathCopy = path;
  v8 = connectionCopy;
  v26 = pathCopy;
  v25 = [[NSMutableArray alloc] initWithCapacity:{-[NSMutableDictionary count](self->_observerIdToObserver, "count")}];
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  obj = self->_observerIdToObserver;
  v9 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v34 objects:v39 count:16];
  v27 = connectionCopy;
  if (v9)
  {
    v10 = v9;
    v29 = *v35;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v35 != v29)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v34 + 1) + 8 * i);
        v13 = [(NSMutableDictionary *)self->_observerIdToObserver objectForKeyedSubscript:v12];
        connection = [v8 connection];
        connection2 = [v13 connection];
        v15Connection = [connection2 connection];
        v17 = v15Connection;
        if (connection == v15Connection)
        {
          replyPath = [v13 replyPath];
          v19 = MessagePathEndsWith(replyPath, v26);

          v8 = v27;
          if (v19)
          {
            [v25 addObject:v12];
          }
        }

        else
        {
        }
      }

      v10 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v34 objects:v39 count:16];
    }

    while (v10);
  }

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v20 = v25;
  v21 = [v20 countByEnumeratingWithState:&v30 objects:v38 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v31;
    do
    {
      for (j = 0; j != v22; j = j + 1)
      {
        if (*v31 != v23)
        {
          objc_enumerationMutation(v20);
        }

        -[GTObservableService deregisterObserver:](self, "deregisterObserver:", [*(*(&v30 + 1) + 8 * j) unsignedLongValue]);
      }

      v22 = [v20 countByEnumeratingWithState:&v30 objects:v38 count:16];
    }

    while (v22);
  }
}

- (void)notifyAll:(id)all
{
  allCopy = all;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = self->_observerIdToObserver;
  v6 = [(NSMutableDictionary *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [(NSMutableDictionary *)self->_observerIdToObserver objectForKeyedSubscript:*(*(&v11 + 1) + 8 * v9), v11];
        allCopy[2](allCopy, v10);

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [(NSMutableDictionary *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }
}

@end