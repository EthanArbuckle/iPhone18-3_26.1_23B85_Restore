@interface RPPeopleXPCConnection
- (BOOL)_entitledAndReturnError:(id)error error:(id *)a4;
- (RPPeopleXPCConnection)initWithDaemon:(id)daemon xpcCnx:(id)cnx;
- (void)clientDevice:(id)device updatedMeasurement:(id)measurement;
- (void)clientDeviceChanged:(id)changed changes:(unsigned int)changes;
- (void)clientDeviceFound:(id)found report:(BOOL)report;
- (void)clientDeviceLost:(id)lost;
- (void)connectionInvalidated;
- (void)xpcPeopleAddAppleID:(id)d completion:(id)completion;
- (void)xpcPeopleDiscoveryActivate:(id)activate completion:(id)completion;
- (void)xpcPeopleDiscoveryUpdate:(id)update;
- (void)xpcPeopleRemoveAppleID:(id)d completion:(id)completion;
@end

@implementation RPPeopleXPCConnection

- (RPPeopleXPCConnection)initWithDaemon:(id)daemon xpcCnx:(id)cnx
{
  daemonCopy = daemon;
  cnxCopy = cnx;
  v13.receiver = self;
  v13.super_class = RPPeopleXPCConnection;
  v9 = [(RPPeopleXPCConnection *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_daemon, daemon);
    objc_storeStrong(&v10->_xpcCnx, cnx);
    v11 = v10;
  }

  return v10;
}

- (void)connectionInvalidated
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (dword_1001D4910 <= 20 && (dword_1001D4910 != -1 || _LogCategory_Initialize()))
  {
    sub_1001264AC(self);
  }

  v5 = self->_activatedDiscovery;
  if (v5)
  {
    [(NSMutableSet *)self->_daemon->_discoveryClients removeObject:v5];
  }

  [(RPPeopleDiscovery *)self->_activatedDiscovery invalidate];
  activatedDiscovery = self->_activatedDiscovery;
  self->_activatedDiscovery = 0;

  xpcCnx = self->_xpcCnx;
  self->_xpcCnx = 0;
}

- (BOOL)_entitledAndReturnError:(id)error error:(id *)a4
{
  errorCopy = error;
  xpcCnx = self->_xpcCnx;
  p_xpcCnx = &self->_xpcCnx;
  v9 = [(NSXPCConnection *)xpcCnx cuValueForEntitlementNoCache:errorCopy];
  v10 = [v9 isEqual:&__kCFBooleanTrue];

  if ((v10 & 1) == 0)
  {
    if (dword_1001D4910 <= 90 && (dword_1001D4910 != -1 || _LogCategory_Initialize()))
    {
      sub_1001264F4(p_xpcCnx);
      if (!a4)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }

    if (a4)
    {
LABEL_6:
      *a4 = RPErrorF();
    }
  }

LABEL_7:

  return v10;
}

- (void)clientDeviceFound:(id)found report:(BOOL)report
{
  reportCopy = report;
  foundCopy = found;
  v6 = self->_activatedDiscovery;
  if (v6)
  {
    flags = [foundCopy flags];
    if ((self->_discoveryDeviceFlags & flags) != 0)
    {
      v8 = flags;
      identifier = [foundCopy identifier];
      if (!identifier)
      {
LABEL_33:

        goto LABEL_34;
      }

      v10 = [(NSMutableDictionary *)self->_discoveredDevices objectForKeyedSubscript:identifier];
      if (v10)
      {
        if ((v8 & 1) == 0)
        {
          goto LABEL_6;
        }
      }

      else
      {
        discoveredDevices = self->_discoveredDevices;
        if (!discoveredDevices)
        {
          v13 = objc_alloc_init(NSMutableDictionary);
          v14 = self->_discoveredDevices;
          self->_discoveredDevices = v13;

          discoveredDevices = self->_discoveredDevices;
        }

        [(NSMutableDictionary *)discoveredDevices setObject:foundCopy forKeyedSubscript:identifier];
        if ((v8 & 1) == 0)
        {
LABEL_6:
          accountID = [foundCopy accountID];
          if (!accountID)
          {
            if ((self->_discoveryDeviceFlags & 0x1000) == 0)
            {
              if (dword_1001D4910 <= 60 && (dword_1001D4910 != -1 || _LogCategory_Initialize()))
              {
                sub_100126618();
              }

              goto LABEL_32;
            }

            accountID = identifier;
          }

LABEL_16:
          v15 = [(NSMutableDictionary *)self->_discoveredPeople objectForKeyedSubscript:accountID];
          v16 = v15;
          if (!v15)
          {
            remoteObjectProxy2 = objc_alloc_init(RPPerson);
            [remoteObjectProxy2 setIdentifier:accountID];
            [remoteObjectProxy2 updateWithRPDevice:foundCopy];
            discoveredPeople = self->_discoveredPeople;
            if (!discoveredPeople)
            {
              v20 = objc_alloc_init(NSMutableDictionary);
              v21 = self->_discoveredPeople;
              self->_discoveredPeople = v20;

              discoveredPeople = self->_discoveredPeople;
            }

            [(NSMutableDictionary *)discoveredPeople setObject:remoteObjectProxy2 forKeyedSubscript:accountID];
            if (dword_1001D4910 <= 30 && (dword_1001D4910 != -1 || _LogCategory_Initialize()))
            {
              sub_1001265B8();
              if (!reportCopy)
              {
                goto LABEL_30;
              }
            }

            else if (!reportCopy)
            {
              goto LABEL_30;
            }

            remoteObjectProxy = [(NSXPCConnection *)self->_xpcCnx remoteObjectProxy];
            [remoteObjectProxy xpcPersonFound:remoteObjectProxy2];

            goto LABEL_30;
          }

          v17 = [v15 updateWithRPDevice:foundCopy];
          if (([(RPPeopleDiscovery *)self->_activatedDiscovery changeFlags]& v17) != 0)
          {
            if (dword_1001D4910 <= 30 && (dword_1001D4910 != -1 || _LogCategory_Initialize()))
            {
              sub_100126548();
              if (!reportCopy)
              {
                goto LABEL_31;
              }

              goto LABEL_22;
            }

            if (reportCopy)
            {
LABEL_22:
              remoteObjectProxy2 = [(NSXPCConnection *)self->_xpcCnx remoteObjectProxy];
              [remoteObjectProxy2 xpcPersonChanged:v16 changes:v17];
LABEL_30:
            }
          }

LABEL_31:

LABEL_32:
          goto LABEL_33;
        }
      }

      accountID = @"$icloud";
      goto LABEL_16;
    }
  }

LABEL_34:
}

- (void)clientDeviceLost:(id)lost
{
  lostCopy = lost;
  identifier = [lostCopy identifier];
  if (identifier)
  {
    v5 = [(NSMutableDictionary *)self->_discoveredDevices objectForKeyedSubscript:identifier];
    if (!v5)
    {
LABEL_28:

      goto LABEL_29;
    }

    if ([lostCopy flags])
    {
      accountID = @"$icloud";
    }

    else
    {
      accountID = [lostCopy accountID];
      if (!accountID)
      {
        if ((self->_discoveryDeviceFlags & 0x1000) == 0)
        {
          if (dword_1001D4910 <= 60 && (dword_1001D4910 != -1 || _LogCategory_Initialize()))
          {
            sub_100126778();
          }

          goto LABEL_28;
        }

        accountID = identifier;
      }
    }

    v7 = [(NSMutableDictionary *)self->_discoveredPeople objectForKeyedSubscript:accountID];
    v8 = v7;
    if (!v7)
    {
      if (dword_1001D4910 <= 60 && (dword_1001D4910 != -1 || _LogCategory_Initialize()))
      {
        sub_100126738();
      }

      goto LABEL_27;
    }

    v9 = [v7 removeRPDevice:lostCopy];
    devices = [v8 devices];
    v11 = [devices count];

    if (v11)
    {
      if (([(RPPeopleDiscovery *)self->_activatedDiscovery changeFlags]& v9) == 0)
      {
LABEL_27:

        goto LABEL_28;
      }

      if (dword_1001D4910 <= 30 && (dword_1001D4910 != -1 || _LogCategory_Initialize()))
      {
        sub_100126658();
      }

      remoteObjectProxy = [(NSXPCConnection *)self->_xpcCnx remoteObjectProxy];
      [remoteObjectProxy xpcPersonChanged:v8 changes:v9];
    }

    else
    {
      [(NSMutableDictionary *)self->_discoveredPeople setObject:0 forKeyedSubscript:accountID];
      if (dword_1001D4910 <= 30 && (dword_1001D4910 != -1 || _LogCategory_Initialize()))
      {
        sub_1001266C8();
      }

      remoteObjectProxy = [(NSXPCConnection *)self->_xpcCnx remoteObjectProxy];
      [remoteObjectProxy xpcPersonLost:v8];
    }

    goto LABEL_27;
  }

LABEL_29:
}

- (void)clientDeviceChanged:(id)changed changes:(unsigned int)changes
{
  changesCopy = changes;
  changedCopy = changed;
  identifier = [changedCopy identifier];
  if (identifier)
  {
    v7 = [(NSMutableDictionary *)self->_discoveredDevices objectForKeyedSubscript:identifier];
    if (v7)
    {
      flags = [changedCopy flags];
      if (flags)
      {
        accountID = @"$icloud";
      }

      else
      {
        accountID = [changedCopy accountID];
        if (!accountID)
        {
          if ((self->_discoveryDeviceFlags & 0x1000) == 0)
          {
            if (dword_1001D4910 <= 60 && (dword_1001D4910 != -1 || _LogCategory_Initialize()))
            {
              sub_100126828();
            }

            goto LABEL_22;
          }

          accountID = identifier;
        }
      }

      v10 = [(NSMutableDictionary *)self->_discoveredPeople objectForKeyedSubscript:accountID];
      v11 = v10;
      if (v10)
      {
        if ((self->_discoveryDeviceFlags & flags) != 0)
        {
          v12 = [v10 updateWithRPDevice:changedCopy] | ((changesCopy & 0x25B) != 0);
          if (([(RPPeopleDiscovery *)self->_activatedDiscovery changeFlags]& v12) != 0)
          {
            if (dword_1001D4910 <= 30 && (dword_1001D4910 != -1 || _LogCategory_Initialize()))
            {
              sub_1001267B8();
            }

            remoteObjectProxy = [(NSXPCConnection *)self->_xpcCnx remoteObjectProxy];
            [remoteObjectProxy xpcPersonChanged:v11 changes:v12];
          }
        }

        else
        {
          [(RPPeopleXPCConnection *)self clientDeviceLost:changedCopy];
        }
      }

      else
      {
        [(RPPeopleXPCConnection *)self clientDeviceFound:changedCopy report:1];
      }

      goto LABEL_22;
    }

    [(RPPeopleXPCConnection *)self clientDeviceFound:changedCopy report:1];
LABEL_22:
  }
}

- (void)clientDevice:(id)device updatedMeasurement:(id)measurement
{
  deviceCopy = device;
  measurementCopy = measurement;
  identifier = [deviceCopy identifier];
  if (identifier)
  {
    v8 = [(NSMutableDictionary *)self->_discoveredDevices objectForKeyedSubscript:identifier];
    if (v8)
    {
      if ([deviceCopy flags])
      {
        accountID = @"$icloud";
      }

      else
      {
        accountID = [deviceCopy accountID];
        if (!accountID)
        {
          goto LABEL_10;
        }
      }

      v10 = [(NSMutableDictionary *)self->_discoveredPeople objectForKeyedSubscript:accountID];
      if (v10)
      {
        remoteObjectProxy = [(NSXPCConnection *)self->_xpcCnx remoteObjectProxy];
        [remoteObjectProxy xpcPersonID:accountID deviceID:identifier updatedMeasurement:measurementCopy];
      }
    }

LABEL_10:
  }
}

- (void)xpcPeopleAddAppleID:(id)d completion:(id)completion
{
  dCopy = d;
  completionCopy = completion;
  if (self->_entitledFriendAccount)
  {
    v8 = 0;
    goto LABEL_4;
  }

  v14 = 0;
  v9 = [(RPPeopleXPCConnection *)self _entitledAndReturnError:@"com.apple.rapport.FriendAccount" error:&v14];
  v8 = v14;
  self->_entitledFriendAccount = v9;
  if (v9)
  {
LABEL_4:
    dispatch_assert_queue_V2(self->_dispatchQueue);
    if (dword_1001D4910 <= 40 && (dword_1001D4910 != -1 || _LogCategory_Initialize()))
    {
      sub_100126868();
    }

    [(RPPeopleDaemon *)self->_daemon _updateFriendIdentityWithAppleID:dCopy contactID:0 sendersKnownAlias:0 userAdded:1 updateDateRequested:0 suggestedContactIDs:0];
    if (dword_1001D4910 <= 30 && (dword_1001D4910 != -1 || _LogCategory_Initialize()))
    {
      sub_1001268A8();
    }

    v10 = objc_alloc_init(RPCloudMessageContext);
    v11 = [(NSMutableDictionary *)self->_daemon->_friendAccountIdentityMap objectForKeyedSubscript:dCopy];
    v12 = v11;
    if (v11)
    {
      sendersKnownAlias = [v11 sendersKnownAlias];
      [(RPCloudMessageContext *)v10 setSendersKnownAlias:sendersKnownAlias];
    }

    [(RPPeopleDaemon *)self->_daemon _sendCloudIdentityFrameType:64 destinationID:dCopy flags:1 msgCtx:v10];
    if (completionCopy)
    {
      completionCopy[2](completionCopy, 0);
    }

    goto LABEL_15;
  }

  if (completionCopy)
  {
    (completionCopy)[2](completionCopy, v8);
  }

LABEL_15:
}

- (void)xpcPeopleRemoveAppleID:(id)d completion:(id)completion
{
  dCopy = d;
  completionCopy = completion;
  if (self->_entitledFriendAccount)
  {
    v8 = 0;
    goto LABEL_4;
  }

  v31 = 0;
  v9 = [(RPPeopleXPCConnection *)self _entitledAndReturnError:@"com.apple.rapport.FriendAccount" error:&v31];
  v8 = v31;
  self->_entitledFriendAccount = v9;
  if (v9)
  {
LABEL_4:
    if (dword_1001D4910 <= 40 && (dword_1001D4910 != -1 || _LogCategory_Initialize()))
    {
      sub_1001268DC();
    }

    v10 = [(NSMutableDictionary *)self->_daemon->_friendAccountIdentityMap objectForKeyedSubscript:dCopy];
    v11 = v10 != 0;
    if (v10)
    {
      if (dword_1001D4910 <= 40 && (dword_1001D4910 != -1 || _LogCategory_Initialize()))
      {
        sub_10012691C();
      }

      [(NSMutableDictionary *)self->_daemon->_friendAccountIdentityMap setObject:0 forKeyedSubscript:dCopy];
      self->_daemon->_needsFriendAccountUpdate = 1;
      v12 = +[RPIdentityDaemon sharedIdentityDaemon];
      [v12 removeIdentity:v10 error:0];
    }

    v24 = v10;
    v25 = v8;
    v26 = completionCopy;
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    allKeys = [(NSMutableDictionary *)self->_daemon->_friendDeviceIdentityMap allKeys];
    v14 = [allKeys countByEnumeratingWithState:&v27 objects:v32 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v28;
      do
      {
        v17 = 0;
        do
        {
          if (*v28 != v16)
          {
            objc_enumerationMutation(allKeys);
          }

          v18 = *(*(&v27 + 1) + 8 * v17);
          v19 = [(NSMutableDictionary *)self->_daemon->_friendDeviceIdentityMap objectForKeyedSubscript:v18];
          accountID = [v19 accountID];
          if ([accountID isEqual:dCopy])
          {
            if (dword_1001D4910 <= 40 && (dword_1001D4910 != -1 || _LogCategory_Initialize()))
            {
              sub_10012695C();
            }

            [(NSMutableDictionary *)self->_daemon->_friendDeviceIdentityMap setObject:0 forKeyedSubscript:v18];
            v21 = +[RPIdentityDaemon sharedIdentityDaemon];
            [v21 removeIdentity:v19 error:0];

            v11 = 1;
          }

          v17 = v17 + 1;
        }

        while (v15 != v17);
        v22 = [allKeys countByEnumeratingWithState:&v27 objects:v32 count:16];
        v15 = v22;
      }

      while (v22);
    }

    completionCopy = v26;
    if (v26)
    {
      if (v11)
      {
        v26[2](v26, 0);
      }

      else
      {
        v23 = RPErrorF();
        v26[2](v26, v23);
      }
    }

    v8 = v25;
    goto LABEL_33;
  }

  if (completionCopy)
  {
    completionCopy[2](completionCopy, v8);
  }

LABEL_33:
}

- (void)xpcPeopleDiscoveryActivate:(id)activate completion:(id)completion
{
  activateCopy = activate;
  completionCopy = completion;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (self->_entitledPeople)
  {
    v9 = 0;
  }

  else
  {
    v23 = 0;
    v10 = [(RPPeopleXPCConnection *)self _entitledAndReturnError:@"com.apple.rapport.people" error:&v23];
    v9 = v23;
    self->_entitledPeople = v10;
    if (!v10)
    {
      if (completionCopy)
      {
        completionCopy[2](completionCopy, 0, v9);
      }

      goto LABEL_28;
    }
  }

  if (!self->_activatedDiscovery)
  {
    discoveryMode = [activateCopy discoveryMode];
    if (discoveryMode == 200)
    {
      v12 = 2;
    }

    else
    {
      if (discoveryMode != 400)
      {
        goto LABEL_17;
      }

      v12 = 16;
    }

    [activateCopy setDiscoveryFlags:{objc_msgSend(activateCopy, "discoveryFlags") | v12}];
LABEL_17:
    if (dword_1001D4910 <= 30 && (dword_1001D4910 != -1 || _LogCategory_Initialize()))
    {
      sub_1001269D0(self);
    }

    [activateCopy setDispatchQueue:self->_dispatchQueue];
    discoveryFlags = [activateCopy discoveryFlags];
    self->_discoveryDeviceFlags = (discoveryFlags >> 1) & 0x10 | discoveryFlags & 0xA | (discoveryFlags >> 2) & 4 | (discoveryFlags >> 1) & 0x20 | (discoveryFlags >> 2) & 1 | (discoveryFlags >> 1) & 0xC0 | (((discoveryFlags >> 10) & 1) << 12);
    objc_storeStrong(&self->_activatedDiscovery, activate);
    discoveryClients = self->_daemon->_discoveryClients;
    if (!discoveryClients)
    {
      v15 = objc_alloc_init(NSMutableSet);
      daemon = self->_daemon;
      v17 = daemon->_discoveryClients;
      daemon->_discoveryClients = v15;

      discoveryClients = self->_daemon->_discoveryClients;
    }

    [(NSMutableSet *)discoveryClients addObject:activateCopy];
    discoveredDevices = self->_daemon->_discoveredDevices;
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_1000A3334;
    v22[3] = &unk_1001AEAF0;
    v22[4] = self;
    [(NSMutableDictionary *)discoveredDevices enumerateKeysAndObjectsUsingBlock:v22];
    if (completionCopy)
    {
      allValues = [(NSMutableDictionary *)self->_discoveredPeople allValues];
      v20 = allValues;
      if (allValues)
      {
        v21 = allValues;
      }

      else
      {
        v21 = &__NSArray0__struct;
      }

      (completionCopy)[2](completionCopy, v21, 0);
    }

    [(RPPeopleDaemon *)self->_daemon _update];
    goto LABEL_28;
  }

  if (dword_1001D4910 <= 30 && (dword_1001D4910 != -1 || _LogCategory_Initialize()))
  {
    sub_10012699C();
    if (!completionCopy)
    {
      goto LABEL_28;
    }

    goto LABEL_9;
  }

  if (completionCopy)
  {
LABEL_9:
    (completionCopy)[2](completionCopy, &__NSArray0__struct, 0);
  }

LABEL_28:
}

- (void)xpcPeopleDiscoveryUpdate:(id)update
{
  updateCopy = update;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (self->_activatedDiscovery)
  {
    discoveryMode = [updateCopy discoveryMode];
    if (discoveryMode == 200)
    {
      v5 = 2;
    }

    else
    {
      if (discoveryMode != 400)
      {
        goto LABEL_11;
      }

      v5 = 16;
    }

    [updateCopy setDiscoveryFlags:{objc_msgSend(updateCopy, "discoveryFlags") | v5}];
LABEL_11:
    discoveryFlags = [(RPPeopleDiscovery *)self->_activatedDiscovery discoveryFlags];
    discoveryFlags2 = [updateCopy discoveryFlags];
    if (discoveryFlags2 != discoveryFlags)
    {
      if (dword_1001D4910 <= 30 && (dword_1001D4910 != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
        [(RPPeopleDiscovery *)self->_activatedDiscovery setDiscoveryFlags:discoveryFlags2, discoveryFlags, &unk_100149203, discoveryFlags2, &unk_100149203];
      }

      else
      {
        [(RPPeopleDiscovery *)self->_activatedDiscovery setDiscoveryFlags:discoveryFlags2, v9, v10, v11, v12];
      }
    }

    v8 = (discoveryFlags2 >> 1) & 0x10 | discoveryFlags2 & 0xA | (discoveryFlags2 >> 2) & 4 | (discoveryFlags2 >> 1) & 0x20 | (discoveryFlags2 >> 2) & 1 | (discoveryFlags2 >> 1) & 0xC0 | (((discoveryFlags2 >> 10) & 1) << 12);
    if (v8 == self->_discoveryDeviceFlags)
    {
      if (discoveryFlags2 == discoveryFlags)
      {
        goto LABEL_22;
      }
    }

    else
    {
      self->_discoveryDeviceFlags = v8;
    }

    [(RPPeopleDaemon *)self->_daemon _update];
    goto LABEL_22;
  }

  if (dword_1001D4910 <= 90 && (dword_1001D4910 != -1 || _LogCategory_Initialize()))
  {
    sub_100126A24();
  }

LABEL_22:
}

@end