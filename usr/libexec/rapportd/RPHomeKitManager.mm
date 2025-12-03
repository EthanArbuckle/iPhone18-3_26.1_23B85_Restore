@interface RPHomeKitManager
- (BOOL)personalRequestsStateForAccessory:(id)accessory;
- (RPHomeKitManager)initWithQueue:(id)queue;
- (id)filterHomeKitUserIdentifiers:(id)identifiers;
- (id)homeHubDeviceWithIdentifier:(id)identifier;
- (id)homeKitUserIdentifiers;
- (void)_setupHome;
- (void)getPairingIdentityFromHomeWithAccessory:(id)accessory completionHandler:(id)handler;
- (void)home:(id)home didUpdateRoom:(id)room forAccessory:(id)accessory;
- (void)invalidate;
- (void)resetHomeKitUserIdentifiers;
- (void)setCurrentHome:(id)home;
- (void)setCurrentUser:(id)user;
- (void)user:(id)user didUpdateAssistantAccessControl:(id)control forHome:(id)home;
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
    selfCopy = self;
    homes = [(HMHomeManager *)self->_homeManager homes];
    v6 = [homes countByEnumeratingWithState:&v22 objects:v26 count:16];
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
            objc_enumerationMutation(homes);
          }

          v11 = *(*(&v22 + 1) + 8 * i);
          currentUser = [v11 currentUser];
          if (currentUser)
          {
            v13 = currentUser;
            currentUser2 = [v11 currentUser];
            uniqueIdentifier = [currentUser2 uniqueIdentifier];

            if (uniqueIdentifier)
            {
              if (!v8)
              {
                v8 = +[NSMutableArray array];
              }

              currentUser3 = [v11 currentUser];
              uniqueIdentifier2 = [currentUser3 uniqueIdentifier];
              [(NSArray *)v8 addObject:uniqueIdentifier2];
            }
          }
        }

        v7 = [homes countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v7);
    }

    else
    {
      v8 = 0;
    }

    v18 = selfCopy->_homeKitCurrentUserIDs;
    selfCopy->_homeKitCurrentUserIDs = v8;
    v19 = v8;

    v4 = selfCopy->_homeKitCurrentUserIDs;
  }

  return v4;
}

- (void)resetHomeKitUserIdentifiers
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  homeKitCurrentUserIDs = self->_homeKitCurrentUserIDs;
  self->_homeKitCurrentUserIDs = 0;
}

- (RPHomeKitManager)initWithQueue:(id)queue
{
  queueCopy = queue;
  v12.receiver = self;
  v12.super_class = RPHomeKitManager;
  v6 = [(RPHomeKitManager *)&v12 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_dispatchQueue, queue);
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

- (id)filterHomeKitUserIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  selfCopy = self;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v5 = +[NSMutableArray array];
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v6 = identifiersCopy;
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
        obj = [(HMHomeManager *)selfCopy->_homeManager homes];
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
              users = [v12 users];
              v15 = [users countByEnumeratingWithState:&v34 objects:v46 count:16];
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
                      objc_enumerationMutation(users);
                    }

                    uniqueIdentifier = [*(*(&v34 + 1) + 8 * j) uniqueIdentifier];
                    [v13 addObject:uniqueIdentifier];
                  }

                  v16 = [users countByEnumeratingWithState:&v34 objects:v46 count:16];
                }

                while (v16);
              }

              currentUser = [v12 currentUser];

              if (currentUser)
              {
                currentUser2 = [v12 currentUser];
                uniqueIdentifier2 = [currentUser2 uniqueIdentifier];
                [v13 addObject:uniqueIdentifier2];
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

- (id)homeHubDeviceWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  [(RPHomeKitManager *)self _setupHome];
  currentHome = [(RPHomeKitManager *)self currentHome];
  v6 = [currentHome accessoryWithSiriEndpointIdentifier:identifierCopy];

  return v6;
}

- (BOOL)personalRequestsStateForAccessory:(id)accessory
{
  accessoryCopy = accessory;
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
      accessories = [v6 accessories];
      v8 = [accessories countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v8)
      {
        v9 = *v15;
        while (2)
        {
          for (i = 0; i != v8; i = i + 1)
          {
            if (*v15 != v9)
            {
              objc_enumerationMutation(accessories);
            }

            siriEndpointIdentifier = [*(*(&v14 + 1) + 8 * i) siriEndpointIdentifier];
            v12 = [siriEndpointIdentifier isEqual:accessoryCopy];

            if (v12)
            {
              LOBYTE(v8) = 1;
              goto LABEL_15;
            }
          }

          v8 = [accessories countByEnumeratingWithState:&v14 objects:v18 count:16];
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

- (void)setCurrentUser:(id)user
{
  userCopy = user;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  p_currentUser = &self->_currentUser;
  if (!self->_currentUser)
  {
    goto LABEL_15;
  }

  uniqueIdentifier = [userCopy uniqueIdentifier];
  uniqueIdentifier2 = [(HMUser *)*p_currentUser uniqueIdentifier];
  v8 = [uniqueIdentifier isEqual:uniqueIdentifier2];

  v9 = userCopy;
  if ((v8 & 1) == 0)
  {
LABEL_15:
    if (dword_1001D3C50 <= 30 && (dword_1001D3C50 != -1 || _LogCategory_Initialize()))
    {
      sub_100118F3C(userCopy);
    }

    if (*p_currentUser)
    {
      [(HMUser *)*p_currentUser setDelegate:0];
    }

    objc_storeStrong(&self->_currentUser, user);
    [(HMUser *)self->_currentUser setDelegate:self];
    v9 = userCopy;
  }
}

- (void)setCurrentHome:(id)home
{
  homeCopy = home;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v5 = homeCopy;
  if (!self->_currentHome)
  {
    if (dword_1001D3C50 <= 30 && (dword_1001D3C50 != -1 || _LogCategory_Initialize()))
    {
      sub_100118F98(homeCopy);
    }

    objc_storeStrong(&self->_currentHome, home);
    [(HMHome *)self->_currentHome setDelegate:self];
    v5 = homeCopy;
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
    homes = [(HMHomeManager *)self->_homeManager homes];
    v4 = [homes countByEnumeratingWithState:&v11 objects:v15 count:16];
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
            objc_enumerationMutation(homes);
          }

          v8 = *(*(&v11 + 1) + 8 * i);
          currentUser = [v8 currentUser];

          if (currentUser)
          {
            [(RPHomeKitManager *)self setCurrentHome:v8];
            currentUser2 = [v8 currentUser];
            [(RPHomeKitManager *)self setCurrentUser:currentUser2];

            goto LABEL_13;
          }
        }

        v5 = [homes countByEnumeratingWithState:&v11 objects:v15 count:16];
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

- (void)getPairingIdentityFromHomeWithAccessory:(id)accessory completionHandler:(id)handler
{
  handlerCopy = handler;
  homeManager = self->_homeManager;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10005CE64;
  v9[3] = &unk_1001ACA28;
  v10 = handlerCopy;
  v8 = handlerCopy;
  [(HMHomeManager *)homeManager currentUserPairingIdentityForHomeContainingAccessoryWithUniqueIdentifier:accessory completionHandler:v9];
}

- (void)user:(id)user didUpdateAssistantAccessControl:(id)control forHome:(id)home
{
  userCopy = user;
  homeCopy = home;
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10005D090;
  block[3] = &unk_1001AB130;
  block[4] = self;
  v13 = userCopy;
  v14 = homeCopy;
  v10 = homeCopy;
  v11 = userCopy;
  dispatch_async(dispatchQueue, block);
}

- (void)home:(id)home didUpdateRoom:(id)room forAccessory:(id)accessory
{
  roomCopy = room;
  accessoryCopy = accessory;
  siriEndpointProfile = [accessoryCopy siriEndpointProfile];

  if (siriEndpointProfile)
  {
    dispatchQueue = self->_dispatchQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10005D20C;
    block[3] = &unk_1001AB130;
    block[4] = self;
    v12 = roomCopy;
    v13 = accessoryCopy;
    dispatch_async(dispatchQueue, block);
  }
}

@end