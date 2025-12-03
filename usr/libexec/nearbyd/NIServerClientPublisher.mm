@interface NIServerClientPublisher
+ (id)publisherForClient:(id)client;
- (NIServerClientPublisher)initWithClient:(id)client;
- (void)addObservers:(id)observers;
- (void)didDiscoverNearbyObject:(id)object;
- (void)didGenerateShareableConfigurationData:(id)data forObject:(id)object;
- (void)didProcessAcwgM1MsgWithResponse:(id)response error:(id)error;
- (void)didProcessAcwgM3MsgWithResponse:(id)response error:(id)error;
- (void)didProcessAcwgRangingSessionResumeRequestMsgWithResponse:(id)response error:(id)error;
- (void)didReceiveAopSFZoneUpdate:(id)update;
- (void)didRemoveNearbyObjects:(id)objects withReason:(unint64_t)reason;
- (void)didStartAcwgRanging:(int64_t)ranging;
- (void)didSuspendAcwgRanging:(int64_t)ranging;
- (void)didUpdateAlgorithmState:(id)state forObject:(id)object;
- (void)didUpdateDLTDOAMeasurements:(id)measurements;
- (void)didUpdateHealthStatus:(int64_t)status;
- (void)didUpdateLocalDiscoveryToken:(id)token;
- (void)didUpdateMotionState:(int64_t)state;
- (void)didUpdateNICoordinates:(id)coordinates;
- (void)didUpdateNearbyObjects:(id)objects;
- (void)didUpdateState:(int64_t)state forItem:(id)item;
- (void)object:(id)object didUpdateRegion:(id)region previousRegion:(id)previousRegion;
- (void)relayDCKMessage:(id)message;
- (void)removeObservers:(id)observers;
- (void)systemDidUpdateState:(id)state;
- (void)uwbSessionDidFailWithError:(id)error;
- (void)uwbSessionDidInvalidateWithError:(id)error;
- (void)uwbSessionInterruptedWithReason:(int64_t)reason timestamp:(double)timestamp;
- (void)uwbSessionInterruptionReasonEnded:(int64_t)ended timestamp:(double)timestamp;
@end

@implementation NIServerClientPublisher

- (NIServerClientPublisher)initWithClient:(id)client
{
  clientCopy = client;
  if (!clientCopy)
  {
    v12 = +[NSAssertionHandler currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"NIServerClientPublisher.mm" lineNumber:18 description:{@"Invalid parameter not satisfying: %@", @"client"}];
  }

  v13.receiver = self;
  v13.super_class = NIServerClientPublisher;
  v7 = [(NIServerClientPublisher *)&v13 init];
  v8 = v7;
  if (v7)
  {
    v7->_observersLock._os_unfair_lock_opaque = 0;
    objc_storeStrong(&v7->_client, client);
    v9 = objc_opt_new();
    observers = v8->_observers;
    v8->_observers = v9;
  }

  return v8;
}

+ (id)publisherForClient:(id)client
{
  clientCopy = client;
  v4 = [[NIServerClientPublisher alloc] initWithClient:clientCopy];

  return v4;
}

- (void)addObservers:(id)observers
{
  observersCopy = observers;
  os_unfair_lock_lock(&self->_observersLock);
  [(NSMutableSet *)self->_observers addObjectsFromArray:observersCopy];

  os_unfair_lock_unlock(&self->_observersLock);
}

- (void)removeObservers:(id)observers
{
  observersCopy = observers;
  os_unfair_lock_lock(&self->_observersLock);
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v5 = observersCopy;
  v6 = [v5 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v6)
  {
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v5);
        }

        [(NSMutableSet *)self->_observers removeObject:*(*(&v9 + 1) + 8 * v8), v9];
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v5 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }

  os_unfair_lock_unlock(&self->_observersLock);
}

- (void)didDiscoverNearbyObject:(id)object
{
  objectCopy = object;
  [(NIServerClient *)self->_client didDiscoverNearbyObject:objectCopy];
  os_unfair_lock_lock(&self->_observersLock);
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v5 = self->_observers;
  v6 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v6)
  {
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v9 + 1) + 8 * v8) didDiscoverNearbyObject:{objectCopy, v9}];
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }

  os_unfair_lock_unlock(&self->_observersLock);
}

- (void)didRemoveNearbyObjects:(id)objects withReason:(unint64_t)reason
{
  objectsCopy = objects;
  [(NIServerClient *)self->_client didRemoveNearbyObjects:objectsCopy withReason:reason];
  os_unfair_lock_lock(&self->_observersLock);
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v7 = self->_observers;
  v8 = [(NSMutableSet *)v7 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v8)
  {
    v9 = *v12;
    do
    {
      v10 = 0;
      do
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(v7);
        }

        [*(*(&v11 + 1) + 8 * v10) didRemoveNearbyObjects:objectsCopy withReason:{reason, v11}];
        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [(NSMutableSet *)v7 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }

  os_unfair_lock_unlock(&self->_observersLock);
}

- (void)didUpdateHealthStatus:(int64_t)status
{
  [(NIServerClient *)self->_client didUpdateHealthStatus:?];
  os_unfair_lock_lock(&self->_observersLock);
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v5 = self->_observers;
  v6 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v6)
  {
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v9 + 1) + 8 * v8) didUpdateHealthStatus:{status, v9}];
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }

  os_unfair_lock_unlock(&self->_observersLock);
}

- (void)didGenerateShareableConfigurationData:(id)data forObject:(id)object
{
  dataCopy = data;
  objectCopy = object;
  [(NIServerClient *)self->_client didGenerateShareableConfigurationData:dataCopy forObject:objectCopy];
  os_unfair_lock_lock(&self->_observersLock);
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v8 = self->_observers;
  v9 = [(NSMutableSet *)v8 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v9)
  {
    v10 = *v13;
    do
    {
      v11 = 0;
      do
      {
        if (*v13 != v10)
        {
          objc_enumerationMutation(v8);
        }

        [*(*(&v12 + 1) + 8 * v11) didGenerateShareableConfigurationData:dataCopy forObject:{objectCopy, v12}];
        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [(NSMutableSet *)v8 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v9);
  }

  os_unfair_lock_unlock(&self->_observersLock);
}

- (void)didUpdateLocalDiscoveryToken:(id)token
{
  tokenCopy = token;
  [(NIServerClient *)self->_client didUpdateLocalDiscoveryToken:tokenCopy];
  os_unfair_lock_lock(&self->_observersLock);
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v5 = self->_observers;
  v6 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v6)
  {
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v9 + 1) + 8 * v8) didUpdateLocalDiscoveryToken:{tokenCopy, v9}];
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }

  os_unfair_lock_unlock(&self->_observersLock);
}

- (void)didUpdateNearbyObjects:(id)objects
{
  objectsCopy = objects;
  [(NIServerClient *)self->_client didUpdateNearbyObjects:objectsCopy];
  os_unfair_lock_lock(&self->_observersLock);
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v5 = self->_observers;
  v6 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v6)
  {
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v9 + 1) + 8 * v8) didUpdateNearbyObjects:{objectsCopy, v9}];
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }

  os_unfair_lock_unlock(&self->_observersLock);
}

- (void)object:(id)object didUpdateRegion:(id)region previousRegion:(id)previousRegion
{
  objectCopy = object;
  regionCopy = region;
  previousRegionCopy = previousRegion;
  [(NIServerClient *)self->_client object:objectCopy didUpdateRegion:regionCopy previousRegion:previousRegionCopy];
  os_unfair_lock_lock(&self->_observersLock);
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v11 = self->_observers;
  v12 = [(NSMutableSet *)v11 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v12)
  {
    v13 = *v16;
    do
    {
      v14 = 0;
      do
      {
        if (*v16 != v13)
        {
          objc_enumerationMutation(v11);
        }

        [*(*(&v15 + 1) + 8 * v14) object:objectCopy didUpdateRegion:regionCopy previousRegion:{previousRegionCopy, v15}];
        v14 = v14 + 1;
      }

      while (v12 != v14);
      v12 = [(NSMutableSet *)v11 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v12);
  }

  os_unfair_lock_unlock(&self->_observersLock);
}

- (void)didUpdateMotionState:(int64_t)state
{
  [(NIServerClient *)self->_client didUpdateMotionState:?];
  os_unfair_lock_lock(&self->_observersLock);
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v5 = self->_observers;
  v6 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v6)
  {
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v9 + 1) + 8 * v8) didUpdateMotionState:{state, v9}];
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }

  os_unfair_lock_unlock(&self->_observersLock);
}

- (void)relayDCKMessage:(id)message
{
  messageCopy = message;
  [(NIServerClient *)self->_client relayDCKMessage:messageCopy];
  os_unfair_lock_lock(&self->_observersLock);
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v5 = self->_observers;
  v6 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v6)
  {
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v9 + 1) + 8 * v8) relayDCKMessage:{messageCopy, v9}];
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }

  os_unfair_lock_unlock(&self->_observersLock);
}

- (void)uwbSessionDidFailWithError:(id)error
{
  errorCopy = error;
  [(NIServerClient *)self->_client uwbSessionDidFailWithError:errorCopy];
  os_unfair_lock_lock(&self->_observersLock);
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v5 = self->_observers;
  v6 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v6)
  {
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v9 + 1) + 8 * v8) uwbSessionDidFailWithError:{errorCopy, v9}];
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }

  os_unfair_lock_unlock(&self->_observersLock);
}

- (void)uwbSessionDidInvalidateWithError:(id)error
{
  errorCopy = error;
  [(NIServerClient *)self->_client uwbSessionDidInvalidateWithError:errorCopy];
  os_unfair_lock_lock(&self->_observersLock);
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v5 = self->_observers;
  v6 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v6)
  {
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v9 + 1) + 8 * v8) uwbSessionDidInvalidateWithError:{errorCopy, v9}];
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }

  os_unfair_lock_unlock(&self->_observersLock);
}

- (void)uwbSessionInterruptedWithReason:(int64_t)reason timestamp:(double)timestamp
{
  [NIServerClient uwbSessionInterruptedWithReason:"uwbSessionInterruptedWithReason:timestamp:" timestamp:?];
  os_unfair_lock_lock(&self->_observersLock);
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v7 = self->_observers;
  v8 = [(NSMutableSet *)v7 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v8)
  {
    v9 = *v12;
    do
    {
      v10 = 0;
      do
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(v7);
        }

        [*(*(&v11 + 1) + 8 * v10) uwbSessionInterruptedWithReason:reason timestamp:{timestamp, v11}];
        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [(NSMutableSet *)v7 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }

  os_unfair_lock_unlock(&self->_observersLock);
}

- (void)uwbSessionInterruptionReasonEnded:(int64_t)ended timestamp:(double)timestamp
{
  [NIServerClient uwbSessionInterruptionReasonEnded:"uwbSessionInterruptionReasonEnded:timestamp:" timestamp:?];
  os_unfair_lock_lock(&self->_observersLock);
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v7 = self->_observers;
  v8 = [(NSMutableSet *)v7 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v8)
  {
    v9 = *v12;
    do
    {
      v10 = 0;
      do
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(v7);
        }

        [*(*(&v11 + 1) + 8 * v10) uwbSessionInterruptionReasonEnded:ended timestamp:{timestamp, v11}];
        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [(NSMutableSet *)v7 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }

  os_unfair_lock_unlock(&self->_observersLock);
}

- (void)didUpdateAlgorithmState:(id)state forObject:(id)object
{
  stateCopy = state;
  objectCopy = object;
  [(NIServerClient *)self->_client didUpdateAlgorithmState:stateCopy forObject:objectCopy];
  os_unfair_lock_lock(&self->_observersLock);
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v8 = self->_observers;
  v9 = [(NSMutableSet *)v8 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v9)
  {
    v10 = *v13;
    do
    {
      v11 = 0;
      do
      {
        if (*v13 != v10)
        {
          objc_enumerationMutation(v8);
        }

        [*(*(&v12 + 1) + 8 * v11) didUpdateAlgorithmState:stateCopy forObject:{objectCopy, v12}];
        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [(NSMutableSet *)v8 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v9);
  }

  os_unfair_lock_unlock(&self->_observersLock);
}

- (void)didProcessAcwgM1MsgWithResponse:(id)response error:(id)error
{
  responseCopy = response;
  errorCopy = error;
  [(NIServerClient *)self->_client didProcessAcwgM1MsgWithResponse:responseCopy error:errorCopy];
  os_unfair_lock_lock(&self->_observersLock);
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v8 = self->_observers;
  v9 = [(NSMutableSet *)v8 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v9)
  {
    v10 = *v13;
    do
    {
      v11 = 0;
      do
      {
        if (*v13 != v10)
        {
          objc_enumerationMutation(v8);
        }

        [*(*(&v12 + 1) + 8 * v11) didProcessAcwgM1MsgWithResponse:responseCopy error:{errorCopy, v12}];
        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [(NSMutableSet *)v8 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v9);
  }

  os_unfair_lock_unlock(&self->_observersLock);
}

- (void)didProcessAcwgM3MsgWithResponse:(id)response error:(id)error
{
  responseCopy = response;
  errorCopy = error;
  [(NIServerClient *)self->_client didProcessAcwgM3MsgWithResponse:responseCopy error:errorCopy];
  os_unfair_lock_lock(&self->_observersLock);
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v8 = self->_observers;
  v9 = [(NSMutableSet *)v8 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v9)
  {
    v10 = *v13;
    do
    {
      v11 = 0;
      do
      {
        if (*v13 != v10)
        {
          objc_enumerationMutation(v8);
        }

        [*(*(&v12 + 1) + 8 * v11) didProcessAcwgM3MsgWithResponse:responseCopy error:{errorCopy, v12}];
        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [(NSMutableSet *)v8 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v9);
  }

  os_unfair_lock_unlock(&self->_observersLock);
}

- (void)didProcessAcwgRangingSessionResumeRequestMsgWithResponse:(id)response error:(id)error
{
  responseCopy = response;
  errorCopy = error;
  [(NIServerClient *)self->_client didProcessAcwgRangingSessionResumeRequestMsgWithResponse:responseCopy error:errorCopy];
  os_unfair_lock_lock(&self->_observersLock);
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v8 = self->_observers;
  v9 = [(NSMutableSet *)v8 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v9)
  {
    v10 = *v13;
    do
    {
      v11 = 0;
      do
      {
        if (*v13 != v10)
        {
          objc_enumerationMutation(v8);
        }

        [*(*(&v12 + 1) + 8 * v11) didProcessAcwgRangingSessionResumeRequestMsgWithResponse:responseCopy error:{errorCopy, v12}];
        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [(NSMutableSet *)v8 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v9);
  }

  os_unfair_lock_unlock(&self->_observersLock);
}

- (void)didStartAcwgRanging:(int64_t)ranging
{
  [(NIServerClient *)self->_client didStartAcwgRanging:?];
  os_unfair_lock_lock(&self->_observersLock);
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v5 = self->_observers;
  v6 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v6)
  {
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v9 + 1) + 8 * v8) didStartAcwgRanging:{ranging, v9}];
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }

  os_unfair_lock_unlock(&self->_observersLock);
}

- (void)didSuspendAcwgRanging:(int64_t)ranging
{
  [(NIServerClient *)self->_client didSuspendAcwgRanging:?];
  os_unfair_lock_lock(&self->_observersLock);
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v5 = self->_observers;
  v6 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v6)
  {
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v9 + 1) + 8 * v8) didSuspendAcwgRanging:{ranging, v9}];
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }

  os_unfair_lock_unlock(&self->_observersLock);
}

- (void)didReceiveAopSFZoneUpdate:(id)update
{
  updateCopy = update;
  [(NIServerClient *)self->_client didReceiveAopSFZoneUpdate:updateCopy];
  os_unfair_lock_lock(&self->_observersLock);
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v5 = self->_observers;
  v6 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v6)
  {
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v9 + 1) + 8 * v8) didReceiveAopSFZoneUpdate:{updateCopy, v9}];
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }

  os_unfair_lock_unlock(&self->_observersLock);
}

- (void)systemDidUpdateState:(id)state
{
  stateCopy = state;
  [(NIServerClient *)self->_client systemDidUpdateState:stateCopy];
  os_unfair_lock_lock(&self->_observersLock);
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v5 = self->_observers;
  v6 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v6)
  {
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v9 + 1) + 8 * v8) systemDidUpdateState:{stateCopy, v9}];
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }

  os_unfair_lock_unlock(&self->_observersLock);
}

- (void)didUpdateState:(int64_t)state forItem:(id)item
{
  itemCopy = item;
  [(NIServerClient *)self->_client didUpdateState:state forItem:itemCopy];
  os_unfair_lock_lock(&self->_observersLock);
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v7 = self->_observers;
  v8 = [(NSMutableSet *)v7 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v8)
  {
    v9 = *v12;
    do
    {
      v10 = 0;
      do
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(v7);
        }

        [*(*(&v11 + 1) + 8 * v10) didUpdateState:state forItem:{itemCopy, v11}];
        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [(NSMutableSet *)v7 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }

  os_unfair_lock_unlock(&self->_observersLock);
}

- (void)didUpdateNICoordinates:(id)coordinates
{
  coordinatesCopy = coordinates;
  [(NIServerClient *)self->_client didUpdateNICoordinates:coordinatesCopy];
  os_unfair_lock_lock(&self->_observersLock);
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v5 = self->_observers;
  v6 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v6)
  {
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v9 + 1) + 8 * v8) didUpdateNICoordinates:{coordinatesCopy, v9}];
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }

  os_unfair_lock_unlock(&self->_observersLock);
}

- (void)didUpdateDLTDOAMeasurements:(id)measurements
{
  measurementsCopy = measurements;
  [(NIServerClient *)self->_client didUpdateDLTDOAMeasurements:measurementsCopy];
  os_unfair_lock_lock(&self->_observersLock);
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v5 = self->_observers;
  v6 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v6)
  {
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v9 + 1) + 8 * v8) didUpdateDLTDOAMeasurements:{measurementsCopy, v9}];
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }

  os_unfair_lock_unlock(&self->_observersLock);
}

@end