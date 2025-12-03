@interface DMDPayloadActionOperation
+ (id)sharedDeclarationOperationQueue;
- (BOOL)isReady;
- (DMDPayloadActionOperation)init;
- (DMDPayloadActionOperation)initWithDatabase:(id)database payloadMetadataObjectID:(id)d payloadIdentifier:(id)identifier;
- (DMDPayloadContext)payloadContext;
- (void)addStatusEntriesFromDictionary:(id)dictionary;
- (void)dealloc;
- (void)endOperationMarkingPayloadMetadata:(id)metadata failedWithError:(id)error;
- (void)endOperationWithPayloadMetadata:(id)metadata;
- (void)enqueueOperation:(id)operation;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)operationWillStart;
- (void)performBackgroundContextBlock:(id)block;
- (void)setDeviceStateProvider:(id)provider;
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
    deviceStateProvider = [(DMDPayloadActionOperation *)self deviceStateProvider];
    isKeychainUnlocked = [deviceStateProvider isKeychainUnlocked];

    if (!isKeychainUnlocked)
    {
      return 0;
    }
  }

  if (![(DMDPayloadActionOperation *)self requiresNetworkTether])
  {
    return 1;
  }

  deviceStateProvider2 = [(DMDPayloadActionOperation *)self deviceStateProvider];
  isNetworkTethered = [deviceStateProvider2 isNetworkTethered];

  return isNetworkTethered;
}

- (void)operationWillStart
{
  [(DMDPayloadActionOperation *)self setDeviceStateProvider:0];
  v3.receiver = self;
  v3.super_class = DMDPayloadActionOperation;
  [(DMDPayloadActionOperation *)&v3 operationWillStart];
}

- (void)setDeviceStateProvider:(id)provider
{
  providerCopy = provider;
  [(DMDDeviceStateProvider *)self->_deviceStateProvider removeObserver:self forKeyPath:@"isNetworkTethered"];
  [(DMDDeviceStateProvider *)self->_deviceStateProvider removeObserver:self forKeyPath:@"isKeychainUnlocked"];
  deviceStateProvider = self->_deviceStateProvider;
  self->_deviceStateProvider = providerCopy;
  v6 = providerCopy;

  [(DMDDeviceStateProvider *)self->_deviceStateProvider addObserver:self forKeyPath:@"isKeychainUnlocked" options:0 context:"DMDPayloadActionOperationObservationContext"];
  [(DMDDeviceStateProvider *)self->_deviceStateProvider addObserver:self forKeyPath:@"isNetworkTethered" options:0 context:"DMDPayloadActionOperationObservationContext"];
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  if (context == "DMDPayloadActionOperationObservationContext")
  {
    [(DMDPayloadActionOperation *)self willChangeValueForKey:@"isReady", object, change];

    [(DMDPayloadActionOperation *)self didChangeValueForKey:@"isReady"];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = DMDPayloadActionOperation;
    [(DMDPayloadActionOperation *)&v7 observeValueForKeyPath:path ofObject:object change:change context:?];
  }
}

- (DMDPayloadActionOperation)initWithDatabase:(id)database payloadMetadataObjectID:(id)d payloadIdentifier:(id)identifier
{
  databaseCopy = database;
  dCopy = d;
  identifierCopy = identifier;
  v21.receiver = self;
  v21.super_class = DMDPayloadActionOperation;
  v12 = [(DMDPayloadActionOperation *)&v21 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_database, database);
    v14 = [dCopy copy];
    payloadMetadataObjectID = v13->_payloadMetadataObjectID;
    v13->_payloadMetadataObjectID = v14;

    v16 = [identifierCopy copy];
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

- (void)performBackgroundContextBlock:(id)block
{
  blockCopy = block;
  if (!blockCopy)
  {
    sub_100085E20(a2, self);
  }

  database = [(DMDPayloadActionOperation *)self database];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10005C30C;
  v8[3] = &unk_1000CE810;
  v9 = blockCopy;
  v7 = blockCopy;
  [database performBackgroundTask:v8];
}

- (void)enqueueOperation:(id)operation
{
  operationCopy = operation;
  subOperations = [(DMDPayloadActionOperation *)self subOperations];

  if (!subOperations)
  {
    v6 = objc_opt_new();
    [(DMDPayloadActionOperation *)self setSubOperations:v6];
  }

  subOperations2 = [(DMDPayloadActionOperation *)self subOperations];
  [subOperations2 addObject:operationCopy];

  sharedDeclarationOperationQueue = [objc_opt_class() sharedDeclarationOperationQueue];
  [sharedDeclarationOperationQueue addOperation:operationCopy];
}

- (void)addStatusEntriesFromDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  stateDictionary = [(DMDPayloadActionOperation *)self stateDictionary];
  [stateDictionary addEntriesFromDictionary:dictionaryCopy];
}

- (void)endOperationMarkingPayloadMetadata:(id)metadata failedWithError:(id)error
{
  v7 = [NSAssertionHandler currentHandler:metadata];
  v6 = NSStringFromSelector(a2);
  [v7 handleFailureInMethod:a2 object:self file:@"DMDPayloadActionOperation.m" lineNumber:142 description:{@"%@ must be implemented by subclasses", v6}];
}

- (void)endOperationWithPayloadMetadata:(id)metadata
{
  metadataCopy = metadata;
  stateDictionary = [(DMDPayloadActionOperation *)self stateDictionary];
  [metadataCopy setStateDictionary:stateDictionary];

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  incomingPayloadMetadataReferences = [metadataCopy incomingPayloadMetadataReferences];
  v7 = [incomingPayloadMetadataReferences countByEnumeratingWithState:&v16 objects:v20 count:16];
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
          objc_enumerationMutation(incomingPayloadMetadataReferences);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v11 updateStateDictionaryIfNeeded];
        }
      }

      v8 = [incomingPayloadMetadataReferences countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  managedObjectContext = [metadataCopy managedObjectContext];
  v15 = 0;
  v13 = [managedObjectContext save:&v15];
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