@interface DMDPayloadActionOperation
+ (id)sharedDeclarationOperationQueue;
- (BOOL)isReady;
- (DMDPayloadActionOperation)init;
- (DMDPayloadActionOperation)initWithDatabase:(id)a3 payloadMetadataObjectID:(id)a4 payloadIdentifier:(id)a5;
- (DMDPayloadContext)payloadContext;
- (void)addStatusEntriesFromDictionary:(id)a3;
- (void)dealloc;
- (void)endOperationMarkingPayloadMetadata:(id)a3 failedWithError:(id)a4;
- (void)endOperationWithPayloadMetadata:(id)a3;
- (void)enqueueOperation:(id)a3;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)operationWillStart;
- (void)performBackgroundContextBlock:(id)a3;
- (void)setDeviceStateProvider:(id)a3;
@end

@implementation DMDPayloadActionOperation

+ (id)sharedDeclarationOperationQueue
{
  if (qword_1000FF250 != -1)
  {
    sub_100085E0C();
  }

  v3 = qword_1000FF248;

  return v3;
}

- (void)dealloc
{
  [(DMDDeviceStateProvider *)self->_deviceStateProvider removeObserver:self forKeyPath:@"isNetworkTethered"];
  [(DMDDeviceStateProvider *)self->_deviceStateProvider removeObserver:self forKeyPath:@"isKeychainUnlocked"];
  v3 = self->_transaction;
  v4 = dispatch_time(0, 5000000000);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = nullsub_3;
  block[3] = &unk_1000CE5A0;
  v8 = v3;
  v5 = v3;
  dispatch_after(v4, &_dispatch_main_q, block);

  v6.receiver = self;
  v6.super_class = DMDPayloadActionOperation;
  [(DMDPayloadActionOperation *)&v6 dealloc];
}

- (DMDPayloadActionOperation)init
{
  v8.receiver = self;
  v8.super_class = DMDPayloadActionOperation;
  v2 = [(DMDPayloadActionOperation *)&v8 init];
  v3 = v2;
  if (v2)
  {
    v4 = [(DMDPayloadActionOperation *)v2 description];
    [v4 UTF8String];
    v5 = os_transaction_create();
    transaction = v3->_transaction;
    v3->_transaction = v5;
  }

  return v3;
}

- (BOOL)isReady
{
  v8.receiver = self;
  v8.super_class = DMDPayloadActionOperation;
  if (![(DMDPayloadActionOperation *)&v8 isReady])
  {
    return 0;
  }

  if ([(DMDPayloadActionOperation *)self requiresUnlockedKeychain])
  {
    v3 = [(DMDPayloadActionOperation *)self deviceStateProvider];
    v4 = [v3 isKeychainUnlocked];

    if (!v4)
    {
      return 0;
    }
  }

  if (![(DMDPayloadActionOperation *)self requiresNetworkTether])
  {
    return 1;
  }

  v5 = [(DMDPayloadActionOperation *)self deviceStateProvider];
  v6 = [v5 isNetworkTethered];

  return v6;
}

- (void)operationWillStart
{
  [(DMDPayloadActionOperation *)self setDeviceStateProvider:0];
  v3.receiver = self;
  v3.super_class = DMDPayloadActionOperation;
  [(DMDPayloadActionOperation *)&v3 operationWillStart];
}

- (void)setDeviceStateProvider:(id)a3
{
  v4 = a3;
  [(DMDDeviceStateProvider *)self->_deviceStateProvider removeObserver:self forKeyPath:@"isNetworkTethered"];
  [(DMDDeviceStateProvider *)self->_deviceStateProvider removeObserver:self forKeyPath:@"isKeychainUnlocked"];
  deviceStateProvider = self->_deviceStateProvider;
  self->_deviceStateProvider = v4;
  v6 = v4;

  [(DMDDeviceStateProvider *)self->_deviceStateProvider addObserver:self forKeyPath:@"isKeychainUnlocked" options:0 context:"DMDPayloadActionOperationObservationContext"];
  [(DMDDeviceStateProvider *)self->_deviceStateProvider addObserver:self forKeyPath:@"isNetworkTethered" options:0 context:"DMDPayloadActionOperationObservationContext"];
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  if (a6 == "DMDPayloadActionOperationObservationContext")
  {
    [(DMDPayloadActionOperation *)self willChangeValueForKey:@"isReady", a4, a5];

    [(DMDPayloadActionOperation *)self didChangeValueForKey:@"isReady"];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = DMDPayloadActionOperation;
    [(DMDPayloadActionOperation *)&v7 observeValueForKeyPath:a3 ofObject:a4 change:a5 context:?];
  }
}

- (DMDPayloadActionOperation)initWithDatabase:(id)a3 payloadMetadataObjectID:(id)a4 payloadIdentifier:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v21.receiver = self;
  v21.super_class = DMDPayloadActionOperation;
  v12 = [(DMDPayloadActionOperation *)&v21 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_database, a3);
    v14 = [v10 copy];
    payloadMetadataObjectID = v13->_payloadMetadataObjectID;
    v13->_payloadMetadataObjectID = v14;

    v16 = [v11 copy];
    payloadIdentifier = v13->_payloadIdentifier;
    v13->_payloadIdentifier = v16;

    v18 = objc_opt_new();
    stateDictionary = v13->_stateDictionary;
    v13->_stateDictionary = v18;
  }

  return v13;
}

- (DMDPayloadContext)payloadContext
{
  payloadContext = self->_payloadContext;
  if (!payloadContext)
  {
    v4 = objc_opt_new();
    v5 = self->_payloadContext;
    self->_payloadContext = v4;

    payloadContext = self->_payloadContext;
  }

  return payloadContext;
}

- (void)performBackgroundContextBlock:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    sub_100085E20(a2, self);
  }

  v6 = [(DMDPayloadActionOperation *)self database];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10005C30C;
  v8[3] = &unk_1000CE810;
  v9 = v5;
  v7 = v5;
  [v6 performBackgroundTask:v8];
}

- (void)enqueueOperation:(id)a3
{
  v4 = a3;
  v5 = [(DMDPayloadActionOperation *)self subOperations];

  if (!v5)
  {
    v6 = objc_opt_new();
    [(DMDPayloadActionOperation *)self setSubOperations:v6];
  }

  v7 = [(DMDPayloadActionOperation *)self subOperations];
  [v7 addObject:v4];

  v8 = [objc_opt_class() sharedDeclarationOperationQueue];
  [v8 addOperation:v4];
}

- (void)addStatusEntriesFromDictionary:(id)a3
{
  v4 = a3;
  v5 = [(DMDPayloadActionOperation *)self stateDictionary];
  [v5 addEntriesFromDictionary:v4];
}

- (void)endOperationMarkingPayloadMetadata:(id)a3 failedWithError:(id)a4
{
  v7 = [NSAssertionHandler currentHandler:a3];
  v6 = NSStringFromSelector(a2);
  [v7 handleFailureInMethod:a2 object:self file:@"DMDPayloadActionOperation.m" lineNumber:142 description:{@"%@ must be implemented by subclasses", v6}];
}

- (void)endOperationWithPayloadMetadata:(id)a3
{
  v4 = a3;
  v5 = [(DMDPayloadActionOperation *)self stateDictionary];
  [v4 setStateDictionary:v5];

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = [v4 incomingPayloadMetadataReferences];
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v11 updateStateDictionaryIfNeeded];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  v12 = [v4 managedObjectContext];
  v15 = 0;
  v13 = [v12 save:&v15];
  v14 = v15;

  if (v13)
  {
    [(DMDPayloadActionOperation *)self endOperationWithResultObject:0];
  }

  else
  {
    [(DMDPayloadActionOperation *)self endOperationWithError:v14];
  }
}

@end