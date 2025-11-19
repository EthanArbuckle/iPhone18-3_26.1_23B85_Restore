@interface ConnectedIsoGroup
- (BOOL)allCoupledCISEstablished;
- (ConnectedIsoGroup)initWithCIGParams:(id)a3;
- (id)getCISwithDeviceID:(id)a3;
- (id)getCISwithID:(unsigned __int8)a3;
- (unsigned)addCIS;
- (unsigned)addCISwithASE:(id)a3 forDevice:(id)a4;
- (void)removeCISwithID:(unsigned __int8)a3;
@end

@implementation ConnectedIsoGroup

- (ConnectedIsoGroup)initWithCIGParams:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = ConnectedIsoGroup;
  v6 = [(ConnectedIsoGroup *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_cigParams, a3);
    v7->_numOfCIS = 0;
    v8 = objc_alloc_init(NSMutableSet);
    cisSet = v7->_cisSet;
    v7->_cisSet = v8;

    *&v7->_currentCisID = 0;
    v7->_tearDownInProgress = 0;
  }

  return v7;
}

- (unsigned)addCISwithASE:(id)a3 forDevice:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(ConnectedIsoGroup *)self currentCisID];
  [(ConnectedIsoGroup *)self setCurrentCisID:(v8 + 1)];
  [(ConnectedIsoGroup *)self setNumOfCIS:([(ConnectedIsoGroup *)self numOfCIS]+ 1)];
  v9 = [[LeCisParams alloc] initWithCISID:v8];
  v10 = [[ConnectedIsoStream alloc] initWithCISParams:v9 withASE:v7];
  [(ConnectedIsoStream *)v10 setDeviceID:v6];

  v11 = [(ConnectedIsoGroup *)self cisSet];
  [v11 addObject:v10];

  [v7 setCisID:v8];
  return v8;
}

- (unsigned)addCIS
{
  v3 = [(ConnectedIsoGroup *)self currentCisID];
  [(ConnectedIsoGroup *)self setCurrentCisID:(v3 + 1)];
  [(ConnectedIsoGroup *)self setNumOfCIS:([(ConnectedIsoGroup *)self numOfCIS]+ 1)];
  v4 = [[LeCisParams alloc] initWithCISID:v3];
  v5 = [[ConnectedIsoStream alloc] initWithCISParams:v4];
  [(ConnectedIsoStream *)v5 setDeviceID:0];
  v6 = [(ConnectedIsoGroup *)self cisSet];
  [v6 addObject:v5];

  return v3;
}

- (void)removeCISwithID:(unsigned __int8)a3
{
  v3 = a3;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = [(ConnectedIsoGroup *)self cisSet];
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
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
        objc_enumerationMutation(v5);
      }

      v10 = *(*(&v15 + 1) + 8 * v9);
      v11 = [v10 cisParams];
      v12 = [v11 cisID];

      if (v12 == v3)
      {
        break;
      }

      if (v7 == ++v9)
      {
        v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
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
    v14 = [(ConnectedIsoGroup *)self cisSet];
    [v14 removeObject:v13];

    v5 = v13;
  }

LABEL_12:
}

- (id)getCISwithID:(unsigned __int8)a3
{
  v3 = a3;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = [(ConnectedIsoGroup *)self cisSet];
  v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        v10 = [v9 cisParams];
        v11 = [v10 cisID];

        if (v11 == v3)
        {
          v12 = v9;
          goto LABEL_11;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
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

- (id)getCISwithDeviceID:(id)a3
{
  v4 = a3;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [(ConnectedIsoGroup *)self cisSet];
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = *v13;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        v10 = [v9 deviceID];

        if (v10 == v4)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
  v3 = [(ConnectedIsoGroup *)self cisSet];
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(v3);
        }

        v9 = [*(*(&v11 + 1) + 8 * i) deviceID];

        if (v9)
        {
          ++v6;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
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