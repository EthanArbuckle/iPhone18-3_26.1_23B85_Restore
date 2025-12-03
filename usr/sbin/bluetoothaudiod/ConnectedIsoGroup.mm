@interface ConnectedIsoGroup
- (BOOL)allCoupledCISEstablished;
- (ConnectedIsoGroup)initWithCIGParams:(id)params;
- (id)getCISwithDeviceID:(id)d;
- (id)getCISwithID:(unsigned __int8)d;
- (unsigned)addCIS;
- (unsigned)addCISwithASE:(id)e forDevice:(id)device;
- (void)removeCISwithID:(unsigned __int8)d;
@end

@implementation ConnectedIsoGroup

- (ConnectedIsoGroup)initWithCIGParams:(id)params
{
  paramsCopy = params;
  v11.receiver = self;
  v11.super_class = ConnectedIsoGroup;
  v6 = [(ConnectedIsoGroup *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_cigParams, params);
    v7->_numOfCIS = 0;
    v8 = objc_alloc_init(NSMutableSet);
    cisSet = v7->_cisSet;
    v7->_cisSet = v8;

    *&v7->_currentCisID = 0;
    v7->_tearDownInProgress = 0;
  }

  return v7;
}

- (unsigned)addCISwithASE:(id)e forDevice:(id)device
{
  deviceCopy = device;
  eCopy = e;
  currentCisID = [(ConnectedIsoGroup *)self currentCisID];
  [(ConnectedIsoGroup *)self setCurrentCisID:(currentCisID + 1)];
  [(ConnectedIsoGroup *)self setNumOfCIS:([(ConnectedIsoGroup *)self numOfCIS]+ 1)];
  v9 = [[LeCisParams alloc] initWithCISID:currentCisID];
  v10 = [[ConnectedIsoStream alloc] initWithCISParams:v9 withASE:eCopy];
  [(ConnectedIsoStream *)v10 setDeviceID:deviceCopy];

  cisSet = [(ConnectedIsoGroup *)self cisSet];
  [cisSet addObject:v10];

  [eCopy setCisID:currentCisID];
  return currentCisID;
}

- (unsigned)addCIS
{
  currentCisID = [(ConnectedIsoGroup *)self currentCisID];
  [(ConnectedIsoGroup *)self setCurrentCisID:(currentCisID + 1)];
  [(ConnectedIsoGroup *)self setNumOfCIS:([(ConnectedIsoGroup *)self numOfCIS]+ 1)];
  v4 = [[LeCisParams alloc] initWithCISID:currentCisID];
  v5 = [[ConnectedIsoStream alloc] initWithCISParams:v4];
  [(ConnectedIsoStream *)v5 setDeviceID:0];
  cisSet = [(ConnectedIsoGroup *)self cisSet];
  [cisSet addObject:v5];

  return currentCisID;
}

- (void)removeCISwithID:(unsigned __int8)d
{
  dCopy = d;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  cisSet = [(ConnectedIsoGroup *)self cisSet];
  v6 = [cisSet countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v16 != v8)
      {
        objc_enumerationMutation(cisSet);
      }

      v10 = *(*(&v15 + 1) + 8 * v9);
      cisParams = [v10 cisParams];
      cisID = [cisParams cisID];

      if (cisID == dCopy)
      {
        break;
      }

      if (v7 == ++v9)
      {
        v7 = [cisSet countByEnumeratingWithState:&v15 objects:v19 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        goto LABEL_12;
      }
    }

    v13 = v10;

    if (!v13)
    {
      return;
    }

    [(ConnectedIsoGroup *)self setNumOfCIS:([(ConnectedIsoGroup *)self numOfCIS]- 1)];
    cisSet2 = [(ConnectedIsoGroup *)self cisSet];
    [cisSet2 removeObject:v13];

    cisSet = v13;
  }

LABEL_12:
}

- (id)getCISwithID:(unsigned __int8)d
{
  dCopy = d;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  cisSet = [(ConnectedIsoGroup *)self cisSet];
  v5 = [cisSet countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(cisSet);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        cisParams = [v9 cisParams];
        cisID = [cisParams cisID];

        if (cisID == dCopy)
        {
          v12 = v9;
          goto LABEL_11;
        }
      }

      v6 = [cisSet countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v12 = 0;
LABEL_11:

  return v12;
}

- (id)getCISwithDeviceID:(id)d
{
  dCopy = d;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  cisSet = [(ConnectedIsoGroup *)self cisSet];
  v6 = [cisSet countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = *v13;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(cisSet);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        deviceID = [v9 deviceID];

        if (deviceID == dCopy)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [cisSet countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (BOOL)allCoupledCISEstablished
{
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  cisSet = [(ConnectedIsoGroup *)self cisSet];
  v4 = [cisSet countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v12;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(cisSet);
        }

        deviceID = [*(*(&v11 + 1) + 8 * i) deviceID];

        if (deviceID)
        {
          ++v6;
        }
      }

      v5 = [cisSet countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  return [(ConnectedIsoGroup *)self numEstablishedCIS]== v6;
}

@end