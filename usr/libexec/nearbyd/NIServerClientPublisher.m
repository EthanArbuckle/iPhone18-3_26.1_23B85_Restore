@interface NIServerClientPublisher
+ (id)publisherForClient:(id)a3;
- (NIServerClientPublisher)initWithClient:(id)a3;
- (void)addObservers:(id)a3;
- (void)didDiscoverNearbyObject:(id)a3;
- (void)didGenerateShareableConfigurationData:(id)a3 forObject:(id)a4;
- (void)didProcessAcwgM1MsgWithResponse:(id)a3 error:(id)a4;
- (void)didProcessAcwgM3MsgWithResponse:(id)a3 error:(id)a4;
- (void)didProcessAcwgRangingSessionResumeRequestMsgWithResponse:(id)a3 error:(id)a4;
- (void)didReceiveAopSFZoneUpdate:(id)a3;
- (void)didRemoveNearbyObjects:(id)a3 withReason:(unint64_t)a4;
- (void)didStartAcwgRanging:(int64_t)a3;
- (void)didSuspendAcwgRanging:(int64_t)a3;
- (void)didUpdateAlgorithmState:(id)a3 forObject:(id)a4;
- (void)didUpdateDLTDOAMeasurements:(id)a3;
- (void)didUpdateHealthStatus:(int64_t)a3;
- (void)didUpdateLocalDiscoveryToken:(id)a3;
- (void)didUpdateMotionState:(int64_t)a3;
- (void)didUpdateNICoordinates:(id)a3;
- (void)didUpdateNearbyObjects:(id)a3;
- (void)didUpdateState:(int64_t)a3 forItem:(id)a4;
- (void)object:(id)a3 didUpdateRegion:(id)a4 previousRegion:(id)a5;
- (void)relayDCKMessage:(id)a3;
- (void)removeObservers:(id)a3;
- (void)systemDidUpdateState:(id)a3;
- (void)uwbSessionDidFailWithError:(id)a3;
- (void)uwbSessionDidInvalidateWithError:(id)a3;
- (void)uwbSessionInterruptedWithReason:(int64_t)a3 timestamp:(double)a4;
- (void)uwbSessionInterruptionReasonEnded:(int64_t)a3 timestamp:(double)a4;
@end

@implementation NIServerClientPublisher

- (NIServerClientPublisher)initWithClient:(id)a3
{
  v6 = a3;
  if (!v6)
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
    objc_storeStrong(&v7->_client, a3);
    v9 = objc_opt_new();
    observers = v8->_observers;
    v8->_observers = v9;
  }

  return v8;
}

+ (id)publisherForClient:(id)a3
{
  v3 = a3;
  v4 = [[NIServerClientPublisher alloc] initWithClient:v3];

  return v4;
}

- (void)addObservers:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_observersLock);
  [(NSMutableSet *)self->_observers addObjectsFromArray:v4];

  os_unfair_lock_unlock(&self->_observersLock);
}

- (void)removeObservers:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_observersLock);
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v5 = v4;
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

- (void)didDiscoverNearbyObject:(id)a3
{
  v4 = a3;
  [(NIServerClient *)self->_client didDiscoverNearbyObject:v4];
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

        [*(*(&v9 + 1) + 8 * v8) didDiscoverNearbyObject:{v4, v9}];
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }

  os_unfair_lock_unlock(&self->_observersLock);
}

- (void)didRemoveNearbyObjects:(id)a3 withReason:(unint64_t)a4
{
  v6 = a3;
  [(NIServerClient *)self->_client didRemoveNearbyObjects:v6 withReason:a4];
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

        [*(*(&v11 + 1) + 8 * v10) didRemoveNearbyObjects:v6 withReason:{a4, v11}];
        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [(NSMutableSet *)v7 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }

  os_unfair_lock_unlock(&self->_observersLock);
}

- (void)didUpdateHealthStatus:(int64_t)a3
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

        [*(*(&v9 + 1) + 8 * v8) didUpdateHealthStatus:{a3, v9}];
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }

  os_unfair_lock_unlock(&self->_observersLock);
}

- (void)didGenerateShareableConfigurationData:(id)a3 forObject:(id)a4
{
  v6 = a3;
  v7 = a4;
  [(NIServerClient *)self->_client didGenerateShareableConfigurationData:v6 forObject:v7];
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

        [*(*(&v12 + 1) + 8 * v11) didGenerateShareableConfigurationData:v6 forObject:{v7, v12}];
        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [(NSMutableSet *)v8 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v9);
  }

  os_unfair_lock_unlock(&self->_observersLock);
}

- (void)didUpdateLocalDiscoveryToken:(id)a3
{
  v4 = a3;
  [(NIServerClient *)self->_client didUpdateLocalDiscoveryToken:v4];
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

        [*(*(&v9 + 1) + 8 * v8) didUpdateLocalDiscoveryToken:{v4, v9}];
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }

  os_unfair_lock_unlock(&self->_observersLock);
}

- (void)didUpdateNearbyObjects:(id)a3
{
  v4 = a3;
  [(NIServerClient *)self->_client didUpdateNearbyObjects:v4];
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

        [*(*(&v9 + 1) + 8 * v8) didUpdateNearbyObjects:{v4, v9}];
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }

  os_unfair_lock_unlock(&self->_observersLock);
}

- (void)object:(id)a3 didUpdateRegion:(id)a4 previousRegion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  [(NIServerClient *)self->_client object:v8 didUpdateRegion:v9 previousRegion:v10];
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

        [*(*(&v15 + 1) + 8 * v14) object:v8 didUpdateRegion:v9 previousRegion:{v10, v15}];
        v14 = v14 + 1;
      }

      while (v12 != v14);
      v12 = [(NSMutableSet *)v11 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v12);
  }

  os_unfair_lock_unlock(&self->_observersLock);
}

- (void)didUpdateMotionState:(int64_t)a3
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

        [*(*(&v9 + 1) + 8 * v8) didUpdateMotionState:{a3, v9}];
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }

  os_unfair_lock_unlock(&self->_observersLock);
}

- (void)relayDCKMessage:(id)a3
{
  v4 = a3;
  [(NIServerClient *)self->_client relayDCKMessage:v4];
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

        [*(*(&v9 + 1) + 8 * v8) relayDCKMessage:{v4, v9}];
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }

  os_unfair_lock_unlock(&self->_observersLock);
}

- (void)uwbSessionDidFailWithError:(id)a3
{
  v4 = a3;
  [(NIServerClient *)self->_client uwbSessionDidFailWithError:v4];
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

        [*(*(&v9 + 1) + 8 * v8) uwbSessionDidFailWithError:{v4, v9}];
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }

  os_unfair_lock_unlock(&self->_observersLock);
}

- (void)uwbSessionDidInvalidateWithError:(id)a3
{
  v4 = a3;
  [(NIServerClient *)self->_client uwbSessionDidInvalidateWithError:v4];
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

        [*(*(&v9 + 1) + 8 * v8) uwbSessionDidInvalidateWithError:{v4, v9}];
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }

  os_unfair_lock_unlock(&self->_observersLock);
}

- (void)uwbSessionInterruptedWithReason:(int64_t)a3 timestamp:(double)a4
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

        [*(*(&v11 + 1) + 8 * v10) uwbSessionInterruptedWithReason:a3 timestamp:{a4, v11}];
        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [(NSMutableSet *)v7 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }

  os_unfair_lock_unlock(&self->_observersLock);
}

- (void)uwbSessionInterruptionReasonEnded:(int64_t)a3 timestamp:(double)a4
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

        [*(*(&v11 + 1) + 8 * v10) uwbSessionInterruptionReasonEnded:a3 timestamp:{a4, v11}];
        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [(NSMutableSet *)v7 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }

  os_unfair_lock_unlock(&self->_observersLock);
}

- (void)didUpdateAlgorithmState:(id)a3 forObject:(id)a4
{
  v6 = a3;
  v7 = a4;
  [(NIServerClient *)self->_client didUpdateAlgorithmState:v6 forObject:v7];
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

        [*(*(&v12 + 1) + 8 * v11) didUpdateAlgorithmState:v6 forObject:{v7, v12}];
        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [(NSMutableSet *)v8 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v9);
  }

  os_unfair_lock_unlock(&self->_observersLock);
}

- (void)didProcessAcwgM1MsgWithResponse:(id)a3 error:(id)a4
{
  v6 = a3;
  v7 = a4;
  [(NIServerClient *)self->_client didProcessAcwgM1MsgWithResponse:v6 error:v7];
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

        [*(*(&v12 + 1) + 8 * v11) didProcessAcwgM1MsgWithResponse:v6 error:{v7, v12}];
        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [(NSMutableSet *)v8 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v9);
  }

  os_unfair_lock_unlock(&self->_observersLock);
}

- (void)didProcessAcwgM3MsgWithResponse:(id)a3 error:(id)a4
{
  v6 = a3;
  v7 = a4;
  [(NIServerClient *)self->_client didProcessAcwgM3MsgWithResponse:v6 error:v7];
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

        [*(*(&v12 + 1) + 8 * v11) didProcessAcwgM3MsgWithResponse:v6 error:{v7, v12}];
        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [(NSMutableSet *)v8 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v9);
  }

  os_unfair_lock_unlock(&self->_observersLock);
}

- (void)didProcessAcwgRangingSessionResumeRequestMsgWithResponse:(id)a3 error:(id)a4
{
  v6 = a3;
  v7 = a4;
  [(NIServerClient *)self->_client didProcessAcwgRangingSessionResumeRequestMsgWithResponse:v6 error:v7];
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

        [*(*(&v12 + 1) + 8 * v11) didProcessAcwgRangingSessionResumeRequestMsgWithResponse:v6 error:{v7, v12}];
        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [(NSMutableSet *)v8 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v9);
  }

  os_unfair_lock_unlock(&self->_observersLock);
}

- (void)didStartAcwgRanging:(int64_t)a3
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

        [*(*(&v9 + 1) + 8 * v8) didStartAcwgRanging:{a3, v9}];
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }

  os_unfair_lock_unlock(&self->_observersLock);
}

- (void)didSuspendAcwgRanging:(int64_t)a3
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

        [*(*(&v9 + 1) + 8 * v8) didSuspendAcwgRanging:{a3, v9}];
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }

  os_unfair_lock_unlock(&self->_observersLock);
}

- (void)didReceiveAopSFZoneUpdate:(id)a3
{
  v4 = a3;
  [(NIServerClient *)self->_client didReceiveAopSFZoneUpdate:v4];
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

        [*(*(&v9 + 1) + 8 * v8) didReceiveAopSFZoneUpdate:{v4, v9}];
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }

  os_unfair_lock_unlock(&self->_observersLock);
}

- (void)systemDidUpdateState:(id)a3
{
  v4 = a3;
  [(NIServerClient *)self->_client systemDidUpdateState:v4];
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

        [*(*(&v9 + 1) + 8 * v8) systemDidUpdateState:{v4, v9}];
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }

  os_unfair_lock_unlock(&self->_observersLock);
}

- (void)didUpdateState:(int64_t)a3 forItem:(id)a4
{
  v6 = a4;
  [(NIServerClient *)self->_client didUpdateState:a3 forItem:v6];
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

        [*(*(&v11 + 1) + 8 * v10) didUpdateState:a3 forItem:{v6, v11}];
        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [(NSMutableSet *)v7 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }

  os_unfair_lock_unlock(&self->_observersLock);
}

- (void)didUpdateNICoordinates:(id)a3
{
  v4 = a3;
  [(NIServerClient *)self->_client didUpdateNICoordinates:v4];
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

        [*(*(&v9 + 1) + 8 * v8) didUpdateNICoordinates:{v4, v9}];
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }

  os_unfair_lock_unlock(&self->_observersLock);
}

- (void)didUpdateDLTDOAMeasurements:(id)a3
{
  v4 = a3;
  [(NIServerClient *)self->_client didUpdateDLTDOAMeasurements:v4];
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

        [*(*(&v9 + 1) + 8 * v8) didUpdateDLTDOAMeasurements:{v4, v9}];
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