@interface RPHomeKitManager
- (BOOL)personalRequestsStateForAccessory:(id)a3;
- (RPHomeKitManager)initWithQueue:(id)a3;
- (id)filterHomeKitUserIdentifiers:(id)a3;
- (id)homeHubDeviceWithIdentifier:(id)a3;
- (id)homeKitUserIdentifiers;
- (void)_setupHome;
- (void)getPairingIdentityFromHomeWithAccessory:(id)a3 completionHandler:(id)a4;
- (void)home:(id)a3 didUpdateRoom:(id)a4 forAccessory:(id)a5;
- (void)invalidate;
- (void)resetHomeKitUserIdentifiers;
- (void)setCurrentHome:(id)a3;
- (void)setCurrentUser:(id)a3;
- (void)user:(id)a3 didUpdateAssistantAccessControl:(id)a4 forHome:(id)a5;
@end

@implementation RPHomeKitManager

- (id)homeKitUserIdentifiers
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  homeKitCurrentUserIDs = self->_homeKitCurrentUserIDs;
  if (homeKitCurrentUserIDs)
  {
    v4 = homeKitCurrentUserIDs;
  }

  else
  {
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v21 = self;
    v5 = [(HMHomeManager *)self->_homeManager homes];
    v6 = [v5 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = 0;
      v9 = *v23;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v23 != v9)
          {
            objc_enumerationMutation(v5);
          }

          v11 = *(*(&v22 + 1) + 8 * i);
          v12 = [v11 currentUser];
          if (v12)
          {
            v13 = v12;
            v14 = [v11 currentUser];
            v15 = [v14 uniqueIdentifier];

            if (v15)
            {
              if (!v8)
              {
                v8 = +[NSMutableArray array];
              }

              v16 = [v11 currentUser];
              v17 = [v16 uniqueIdentifier];
              [(NSArray *)v8 addObject:v17];
            }
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v7);
    }

    else
    {
      v8 = 0;
    }

    v18 = v21->_homeKitCurrentUserIDs;
    v21->_homeKitCurrentUserIDs = v8;
    v19 = v8;

    v4 = v21->_homeKitCurrentUserIDs;
  }

  return v4;
}

- (void)resetHomeKitUserIdentifiers
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  homeKitCurrentUserIDs = self->_homeKitCurrentUserIDs;
  self->_homeKitCurrentUserIDs = 0;
}

- (RPHomeKitManager)initWithQueue:(id)a3
{
  v5 = a3;
  v12.receiver = self;
  v12.super_class = RPHomeKitManager;
  v6 = [(RPHomeKitManager *)&v12 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_dispatchQueue, a3);
    v8 = [objc_alloc(off_1001D3CC0()) initWithOptions:32780 cachePolicy:2];
    v9 = [objc_alloc(off_1001D3CC8()) initWithHomeMangerConfiguration:v8];
    homeManager = v7->_homeManager;
    v7->_homeManager = v9;
  }

  return v7;
}

- (void)invalidate
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (!self->_invalidateCalled)
  {
    self->_invalidateCalled = 1;
    [(HMHomeManager *)self->_homeManager setDelegate:0];
    homeManager = self->_homeManager;
    self->_homeManager = 0;

    [(HMUser *)self->_currentUser setDelegate:0];
    currentUser = self->_currentUser;
    self->_currentUser = 0;

    [(HMHome *)self->_currentHome setDelegate:0];
    currentHome = self->_currentHome;
    self->_currentHome = 0;

    mediaGroupsChangedHandler = self->_mediaGroupsChangedHandler;
    self->_mediaGroupsChangedHandler = 0;

    personalRequestsStateChangedHandler = self->_personalRequestsStateChangedHandler;
    self->_personalRequestsStateChangedHandler = 0;

    roomUpdatedHandler = self->_roomUpdatedHandler;
    self->_roomUpdatedHandler = 0;

    if (dword_1001D3C50 <= 30 && (dword_1001D3C50 != -1 || _LogCategory_Initialize()))
    {
      sub_100118F1C();
    }
  }
}

- (id)filterHomeKitUserIdentifiers:(id)a3
{
  v4 = a3;
  v29 = self;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v5 = +[NSMutableArray array];
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v6 = v4;
  v30 = [v6 countByEnumeratingWithState:&v42 objects:v48 count:16];
  if (v30)
  {
    v26 = *v43;
    v27 = v6;
    v28 = v5;
    do
    {
      v7 = 0;
      do
      {
        if (*v43 != v26)
        {
          objc_enumerationMutation(v6);
        }

        v31 = v7;
        v33 = *(*(&v42 + 1) + 8 * v7);
        v38 = 0u;
        v39 = 0u;
        v40 = 0u;
        v41 = 0u;
        obj = [(HMHomeManager *)v29->_homeManager homes];
        v8 = [obj countByEnumeratingWithState:&v38 objects:v47 count:16];
        if (v8)
        {
          v9 = v8;
          v10 = *v39;
          while (2)
          {
            for (i = 0; i != v9; i = i + 1)
            {
              if (*v39 != v10)
              {
                objc_enumerationMutation(obj);
              }

              v12 = *(*(&v38 + 1) + 8 * i);
              v13 = +[NSMutableArray array];
              v34 = 0u;
              v35 = 0u;
              v36 = 0u;
              v37 = 0u;
              v14 = [v12 users];
              v15 = [v14 countByEnumeratingWithState:&v34 objects:v46 count:16];
              if (v15)
              {
                v16 = v15;
                v17 = *v35;
                do
                {
                  for (j = 0; j != v16; j = j + 1)
                  {
                    if (*v35 != v17)
                    {
                      objc_enumerationMutation(v14);
                    }

                    v19 = [*(*(&v34 + 1) + 8 * j) uniqueIdentifier];
                    [v13 addObject:v19];
                  }

                  v16 = [v14 countByEnumeratingWithState:&v34 objects:v46 count:16];
                }

                while (v16);
              }

              v20 = [v12 currentUser];

              if (v20)
              {
                v21 = [v12 currentUser];
                v22 = [v21 uniqueIdentifier];
                [v13 addObject:v22];
              }

              v23 = [v13 containsObject:v33];

              if (v23)
              {

                v5 = v28;
                goto LABEL_25;
              }
            }

            v9 = [obj countByEnumeratingWithState:&v38 objects:v47 count:16];
            if (v9)
            {
              continue;
            }

            break;
          }
        }

        v5 = v28;
        [v28 addObject:v33];
LABEL_25:
        v7 = v31 + 1;
        v6 = v27;
      }

      while ((v31 + 1) != v30);
      v30 = [v27 countByEnumeratingWithState:&v42 objects:v48 count:16];
    }

    while (v30);
  }

  if ([v5 count])
  {
    v24 = [v6 mutableCopy];
    [v24 removeObjectsInArray:v5];
  }

  else
  {
    v24 = v6;
  }

  return v24;
}

- (id)homeHubDeviceWithIdentifier:(id)a3
{
  v4 = a3;
  [(RPHomeKitManager *)self _setupHome];
  v5 = [(RPHomeKitManager *)self currentHome];
  v6 = [v5 accessoryWithSiriEndpointIdentifier:v4];

  return v6;
}

- (BOOL)personalRequestsStateForAccessory:(id)a3
{
  v4 = a3;
  [(RPHomeKitManager *)self _setupHome];
  currentUser = self->_currentUser;
  if (currentUser)
  {
    v6 = [(HMUser *)currentUser assistantAccessControlForHome:self->_currentHome];
    if ([v6 isEnabled])
    {
      v16 = 0u;
      v17 = 0u;
      v14 = 0u;
      v15 = 0u;
      v7 = [v6 accessories];
      v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v8)
      {
        v9 = *v15;
        while (2)
        {
          for (i = 0; i != v8; i = i + 1)
          {
            if (*v15 != v9)
            {
              objc_enumerationMutation(v7);
            }

            v11 = [*(*(&v14 + 1) + 8 * i) siriEndpointIdentifier];
            v12 = [v11 isEqual:v4];

            if (v12)
            {
              LOBYTE(v8) = 1;
              goto LABEL_15;
            }
          }

          v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
          if (v8)
          {
            continue;
          }

          break;
        }
      }

LABEL_15:
    }

    else
    {
      LOBYTE(v8) = 0;
    }
  }

  else
  {
    LOBYTE(v8) = 0;
  }

  return v8;
}

- (void)setCurrentUser:(id)a3
{
  v10 = a3;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  p_currentUser = &self->_currentUser;
  if (!self->_currentUser)
  {
    goto LABEL_15;
  }

  v6 = [v10 uniqueIdentifier];
  v7 = [(HMUser *)*p_currentUser uniqueIdentifier];
  v8 = [v6 isEqual:v7];

  v9 = v10;
  if ((v8 & 1) == 0)
  {
LABEL_15:
    if (dword_1001D3C50 <= 30 && (dword_1001D3C50 != -1 || _LogCategory_Initialize()))
    {
      sub_100118F3C(v10);
    }

    if (*p_currentUser)
    {
      [(HMUser *)*p_currentUser setDelegate:0];
    }

    objc_storeStrong(&self->_currentUser, a3);
    [(HMUser *)self->_currentUser setDelegate:self];
    v9 = v10;
  }
}

- (void)setCurrentHome:(id)a3
{
  v6 = a3;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v5 = v6;
  if (!self->_currentHome)
  {
    if (dword_1001D3C50 <= 30 && (dword_1001D3C50 != -1 || _LogCategory_Initialize()))
    {
      sub_100118F98(v6);
    }

    objc_storeStrong(&self->_currentHome, a3);
    [(HMHome *)self->_currentHome setDelegate:self];
    v5 = v6;
  }
}

- (void)_setupHome
{
  if (!self->_currentUser || !self->_currentHome)
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v3 = [(HMHomeManager *)self->_homeManager homes];
    v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v12;
      while (2)
      {
        for (i = 0; i != v5; i = i + 1)
        {
          if (*v12 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = *(*(&v11 + 1) + 8 * i);
          v9 = [v8 currentUser];

          if (v9)
          {
            [(RPHomeKitManager *)self setCurrentHome:v8];
            v10 = [v8 currentUser];
            [(RPHomeKitManager *)self setCurrentUser:v10];

            goto LABEL_13;
          }
        }

        v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
        if (v5)
        {
          continue;
        }

        break;
      }
    }

LABEL_13:
  }
}

- (void)getPairingIdentityFromHomeWithAccessory:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  homeManager = self->_homeManager;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10005CE64;
  v9[3] = &unk_1001ACA28;
  v10 = v6;
  v8 = v6;
  [(HMHomeManager *)homeManager currentUserPairingIdentityForHomeContainingAccessoryWithUniqueIdentifier:a3 completionHandler:v9];
}

- (void)user:(id)a3 didUpdateAssistantAccessControl:(id)a4 forHome:(id)a5
{
  v7 = a3;
  v8 = a5;
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10005D090;
  block[3] = &unk_1001AB130;
  block[4] = self;
  v13 = v7;
  v14 = v8;
  v10 = v8;
  v11 = v7;
  dispatch_async(dispatchQueue, block);
}

- (void)home:(id)a3 didUpdateRoom:(id)a4 forAccessory:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = [v8 siriEndpointProfile];

  if (v9)
  {
    dispatchQueue = self->_dispatchQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10005D20C;
    block[3] = &unk_1001AB130;
    block[4] = self;
    v12 = v7;
    v13 = v8;
    dispatch_async(dispatchQueue, block);
  }
}

@end