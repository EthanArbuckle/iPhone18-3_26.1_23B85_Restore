@interface EPIDSDevicePairingAgent
- (EPIDSDevicePairingAgent)initWithRemoteObjects:(id)a3;
- (void)addIDSPairingAgentObserver:(id)a3;
- (void)removeIDSPairingAgentObserver:(id)a3;
- (void)update;
@end

@implementation EPIDSDevicePairingAgent

- (EPIDSDevicePairingAgent)initWithRemoteObjects:(id)a3
{
  v5 = a3;
  v6 = [(EPIDSDevicePairingAgent *)self init];
  if (v6)
  {
    v7 = +[NSPointerArray weakObjectsPointerArray];
    pairingAgentObservers = v6->_pairingAgentObservers;
    v6->_pairingAgentObservers = v7;

    objc_storeStrong(&v6->_remoteObjects, a3);
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v9 = v6->_remoteObjects;
    v10 = [(NSArray *)v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v16;
      do
      {
        v13 = 0;
        do
        {
          if (*v16 != v12)
          {
            objc_enumerationMutation(v9);
          }

          [*(*(&v15 + 1) + 8 * v13) addConnectivityObserver:{v6, v15}];
          v13 = v13 + 1;
        }

        while (v11 != v13);
        v11 = [(NSArray *)v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v11);
    }
  }

  return v6;
}

- (void)addIDSPairingAgentObserver:(id)a3
{
  [(NSPointerArray *)self->_pairingAgentObservers addPointer:a3];
  pairingAgentObservers = self->_pairingAgentObservers;

  [(NSPointerArray *)pairingAgentObservers compact];
}

- (void)removeIDSPairingAgentObserver:(id)a3
{
  v7 = a3;
  v4 = [(NSPointerArray *)self->_pairingAgentObservers count];
  if (v4 >= 1)
  {
    v5 = v4;
    v6 = 0;
    while ([(NSPointerArray *)self->_pairingAgentObservers pointerAtIndex:v6]!= v7)
    {
      if (v5 == ++v6)
      {
        goto LABEL_7;
      }
    }

    [(NSPointerArray *)self->_pairingAgentObservers removePointerAtIndex:v6];
  }

LABEL_7:
}

- (void)update
{
  if (!self->_isDisabled && !self->_isPaired)
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v3 = self->_remoteObjects;
    v4 = [(NSArray *)v3 countByEnumeratingWithState:&v19 objects:v24 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = 0;
      v7 = *v20;
      do
      {
        for (i = 0; i != v5; i = i + 1)
        {
          if (*v20 != v7)
          {
            objc_enumerationMutation(v3);
          }

          v9 = [*(*(&v19 + 1) + 8 * i) defaultPairedDevice];
          if ([v9 maxCompatibilityVersion] != 0x7FFFFFFFFFFFFFFFLL)
          {
            ++v6;
          }
        }

        v5 = [(NSArray *)v3 countByEnumeratingWithState:&v19 objects:v24 count:16];
      }

      while (v5);
    }

    else
    {
      v6 = 0;
    }

    if (v6 == [(NSArray *)self->_remoteObjects count])
    {
      self->_isPaired = 1;
      v15 = 0u;
      v16 = 0u;
      v17 = 0u;
      v18 = 0u;
      v10 = [(NSPointerArray *)self->_pairingAgentObservers allObjects];
      v11 = [v10 countByEnumeratingWithState:&v15 objects:v23 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v16;
        do
        {
          for (j = 0; j != v12; j = j + 1)
          {
            if (*v16 != v13)
            {
              objc_enumerationMutation(v10);
            }

            [*(*(&v15 + 1) + 8 * j) idsPairingAgentIDSDidPair:self];
          }

          v12 = [v10 countByEnumeratingWithState:&v15 objects:v23 count:16];
        }

        while (v12);
      }
    }
  }
}

@end