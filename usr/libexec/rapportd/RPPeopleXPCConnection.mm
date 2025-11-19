@interface RPPeopleXPCConnection
- (BOOL)_entitledAndReturnError:(id)a3 error:(id *)a4;
- (RPPeopleXPCConnection)initWithDaemon:(id)a3 xpcCnx:(id)a4;
- (void)clientDevice:(id)a3 updatedMeasurement:(id)a4;
- (void)clientDeviceChanged:(id)a3 changes:(unsigned int)a4;
- (void)clientDeviceFound:(id)a3 report:(BOOL)a4;
- (void)clientDeviceLost:(id)a3;
- (void)connectionInvalidated;
- (void)xpcPeopleAddAppleID:(id)a3 completion:(id)a4;
- (void)xpcPeopleDiscoveryActivate:(id)a3 completion:(id)a4;
- (void)xpcPeopleDiscoveryUpdate:(id)a3;
- (void)xpcPeopleRemoveAppleID:(id)a3 completion:(id)a4;
@end

@implementation RPPeopleXPCConnection

- (RPPeopleXPCConnection)initWithDaemon:(id)a3 xpcCnx:(id)a4
{
  v7 = a3;
  v8 = a4;
  v13.receiver = self;
  v13.super_class = RPPeopleXPCConnection;
  v9 = [(RPPeopleXPCConnection *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_daemon, a3);
    objc_storeStrong(&v10->_xpcCnx, a4);
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

- (BOOL)_entitledAndReturnError:(id)a3 error:(id *)a4
{
  v6 = a3;
  xpcCnx = self->_xpcCnx;
  p_xpcCnx = &self->_xpcCnx;
  v9 = [(NSXPCConnection *)xpcCnx cuValueForEntitlementNoCache:v6];
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

- (void)clientDeviceFound:(id)a3 report:(BOOL)a4
{
  v4 = a4;
  v23 = a3;
  v6 = self->_activatedDiscovery;
  if (v6)
  {
    v7 = [v23 flags];
    if ((self->_discoveryDeviceFlags & v7) != 0)
    {
      v8 = v7;
      v9 = [v23 identifier];
      if (!v9)
      {
LABEL_33:

        goto LABEL_34;
      }

      v10 = [(NSMutableDictionary *)self->_discoveredDevices objectForKeyedSubscript:v9];
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

        [(NSMutableDictionary *)discoveredDevices setObject:v23 forKeyedSubscript:v9];
        if ((v8 & 1) == 0)
        {
LABEL_6:
          v11 = [v23 accountID];
          if (!v11)
          {
            if ((self->_discoveryDeviceFlags & 0x1000) == 0)
            {
              if (dword_1001D4910 <= 60 && (dword_1001D4910 != -1 || _LogCategory_Initialize()))
              {
                sub_100126618();
              }

              goto LABEL_32;
            }

            v11 = v9;
          }

LABEL_16:
          v15 = [(NSMutableDictionary *)self->_discoveredPeople objectForKeyedSubscript:v11];
          v16 = v15;
          if (!v15)
          {
            v18 = objc_alloc_init(RPPerson);
            [v18 setIdentifier:v11];
            [v18 updateWithRPDevice:v23];
            discoveredPeople = self->_discoveredPeople;
            if (!discoveredPeople)
            {
              v20 = objc_alloc_init(NSMutableDictionary);
              v21 = self->_discoveredPeople;
              self->_discoveredPeople = v20;

              discoveredPeople = self->_discoveredPeople;
            }

            [(NSMutableDictionary *)discoveredPeople setObject:v18 forKeyedSubscript:v11];
            if (dword_1001D4910 <= 30 && (dword_1001D4910 != -1 || _LogCategory_Initialize()))
            {
              sub_1001265B8();
              if (!v4)
              {
                goto LABEL_30;
              }
            }

            else if (!v4)
            {
              goto LABEL_30;
            }

            v22 = [(NSXPCConnection *)self->_xpcCnx remoteObjectProxy];
            [v22 xpcPersonFound:v18];

            goto LABEL_30;
          }

          v17 = [v15 updateWithRPDevice:v23];
          if (([(RPPeopleDiscovery *)self->_activatedDiscovery changeFlags]& v17) != 0)
          {
            if (dword_1001D4910 <= 30 && (dword_1001D4910 != -1 || _LogCategory_Initialize()))
            {
              sub_100126548();
              if (!v4)
              {
                goto LABEL_31;
              }

              goto LABEL_22;
            }

            if (v4)
            {
LABEL_22:
              v18 = [(NSXPCConnection *)self->_xpcCnx remoteObjectProxy];
              [v18 xpcPersonChanged:v16 changes:v17];
LABEL_30:
            }
          }

LABEL_31:

LABEL_32:
          goto LABEL_33;
        }
      }

      v11 = @"$icloud";
      goto LABEL_16;
    }
  }

LABEL_34:
}

- (void)clientDeviceLost:(id)a3
{
  v13 = a3;
  v4 = [v13 identifier];
  if (v4)
  {
    v5 = [(NSMutableDictionary *)self->_discoveredDevices objectForKeyedSubscript:v4];
    if (!v5)
    {
LABEL_28:

      goto LABEL_29;
    }

    if ([v13 flags])
    {
      v6 = @"$icloud";
    }

    else
    {
      v6 = [v13 accountID];
      if (!v6)
      {
        if ((self->_discoveryDeviceFlags & 0x1000) == 0)
        {
          if (dword_1001D4910 <= 60 && (dword_1001D4910 != -1 || _LogCategory_Initialize()))
          {
            sub_100126778();
          }

          goto LABEL_28;
        }

        v6 = v4;
      }
    }

    v7 = [(NSMutableDictionary *)self->_discoveredPeople objectForKeyedSubscript:v6];
    v8 = v7;
    if (!v7)
    {
      if (dword_1001D4910 <= 60 && (dword_1001D4910 != -1 || _LogCategory_Initialize()))
      {
        sub_100126738();
      }

      goto LABEL_27;
    }

    v9 = [v7 removeRPDevice:v13];
    v10 = [v8 devices];
    v11 = [v10 count];

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

      v12 = [(NSXPCConnection *)self->_xpcCnx remoteObjectProxy];
      [v12 xpcPersonChanged:v8 changes:v9];
    }

    else
    {
      [(NSMutableDictionary *)self->_discoveredPeople setObject:0 forKeyedSubscript:v6];
      if (dword_1001D4910 <= 30 && (dword_1001D4910 != -1 || _LogCategory_Initialize()))
      {
        sub_1001266C8();
      }

      v12 = [(NSXPCConnection *)self->_xpcCnx remoteObjectProxy];
      [v12 xpcPersonLost:v8];
    }

    goto LABEL_27;
  }

LABEL_29:
}

- (void)clientDeviceChanged:(id)a3 changes:(unsigned int)a4
{
  v4 = a4;
  v14 = a3;
  v6 = [v14 identifier];
  if (v6)
  {
    v7 = [(NSMutableDictionary *)self->_discoveredDevices objectForKeyedSubscript:v6];
    if (v7)
    {
      v8 = [v14 flags];
      if (v8)
      {
        v9 = @"$icloud";
      }

      else
      {
        v9 = [v14 accountID];
        if (!v9)
        {
          if ((self->_discoveryDeviceFlags & 0x1000) == 0)
          {
            if (dword_1001D4910 <= 60 && (dword_1001D4910 != -1 || _LogCategory_Initialize()))
            {
              sub_100126828();
            }

            goto LABEL_22;
          }

          v9 = v6;
        }
      }

      v10 = [(NSMutableDictionary *)self->_discoveredPeople objectForKeyedSubscript:v9];
      v11 = v10;
      if (v10)
      {
        if ((self->_discoveryDeviceFlags & v8) != 0)
        {
          v12 = [v10 updateWithRPDevice:v14] | ((v4 & 0x25B) != 0);
          if (([(RPPeopleDiscovery *)self->_activatedDiscovery changeFlags]& v12) != 0)
          {
            if (dword_1001D4910 <= 30 && (dword_1001D4910 != -1 || _LogCategory_Initialize()))
            {
              sub_1001267B8();
            }

            v13 = [(NSXPCConnection *)self->_xpcCnx remoteObjectProxy];
            [v13 xpcPersonChanged:v11 changes:v12];
          }
        }

        else
        {
          [(RPPeopleXPCConnection *)self clientDeviceLost:v14];
        }
      }

      else
      {
        [(RPPeopleXPCConnection *)self clientDeviceFound:v14 report:1];
      }

      goto LABEL_22;
    }

    [(RPPeopleXPCConnection *)self clientDeviceFound:v14 report:1];
LABEL_22:
  }
}

- (void)clientDevice:(id)a3 updatedMeasurement:(id)a4
{
  v12 = a3;
  v6 = a4;
  v7 = [v12 identifier];
  if (v7)
  {
    v8 = [(NSMutableDictionary *)self->_discoveredDevices objectForKeyedSubscript:v7];
    if (v8)
    {
      if ([v12 flags])
      {
        v9 = @"$icloud";
      }

      else
      {
        v9 = [v12 accountID];
        if (!v9)
        {
          goto LABEL_10;
        }
      }

      v10 = [(NSMutableDictionary *)self->_discoveredPeople objectForKeyedSubscript:v9];
      if (v10)
      {
        v11 = [(NSXPCConnection *)self->_xpcCnx remoteObjectProxy];
        [v11 xpcPersonID:v9 deviceID:v7 updatedMeasurement:v6];
      }
    }

LABEL_10:
  }
}

- (void)xpcPeopleAddAppleID:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
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

    [(RPPeopleDaemon *)self->_daemon _updateFriendIdentityWithAppleID:v6 contactID:0 sendersKnownAlias:0 userAdded:1 updateDateRequested:0 suggestedContactIDs:0];
    if (dword_1001D4910 <= 30 && (dword_1001D4910 != -1 || _LogCategory_Initialize()))
    {
      sub_1001268A8();
    }

    v10 = objc_alloc_init(RPCloudMessageContext);
    v11 = [(NSMutableDictionary *)self->_daemon->_friendAccountIdentityMap objectForKeyedSubscript:v6];
    v12 = v11;
    if (v11)
    {
      v13 = [v11 sendersKnownAlias];
      [(RPCloudMessageContext *)v10 setSendersKnownAlias:v13];
    }

    [(RPPeopleDaemon *)self->_daemon _sendCloudIdentityFrameType:64 destinationID:v6 flags:1 msgCtx:v10];
    if (v7)
    {
      v7[2](v7, 0);
    }

    goto LABEL_15;
  }

  if (v7)
  {
    (v7)[2](v7, v8);
  }

LABEL_15:
}

- (void)xpcPeopleRemoveAppleID:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
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

    v10 = [(NSMutableDictionary *)self->_daemon->_friendAccountIdentityMap objectForKeyedSubscript:v6];
    v11 = v10 != 0;
    if (v10)
    {
      if (dword_1001D4910 <= 40 && (dword_1001D4910 != -1 || _LogCategory_Initialize()))
      {
        sub_10012691C();
      }

      [(NSMutableDictionary *)self->_daemon->_friendAccountIdentityMap setObject:0 forKeyedSubscript:v6];
      self->_daemon->_needsFriendAccountUpdate = 1;
      v12 = +[RPIdentityDaemon sharedIdentityDaemon];
      [v12 removeIdentity:v10 error:0];
    }

    v24 = v10;
    v25 = v8;
    v26 = v7;
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v13 = [(NSMutableDictionary *)self->_daemon->_friendDeviceIdentityMap allKeys];
    v14 = [v13 countByEnumeratingWithState:&v27 objects:v32 count:16];
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
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v27 + 1) + 8 * v17);
          v19 = [(NSMutableDictionary *)self->_daemon->_friendDeviceIdentityMap objectForKeyedSubscript:v18];
          v20 = [v19 accountID];
          if ([v20 isEqual:v6])
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
        v22 = [v13 countByEnumeratingWithState:&v27 objects:v32 count:16];
        v15 = v22;
      }

      while (v22);
    }

    v7 = v26;
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

  if (v7)
  {
    v7[2](v7, v8);
  }

LABEL_33:
}

- (void)xpcPeopleDiscoveryActivate:(id)a3 completion:(id)a4
{
  v7 = a3;
  v8 = a4;
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
      if (v8)
      {
        v8[2](v8, 0, v9);
      }

      goto LABEL_28;
    }
  }

  if (!self->_activatedDiscovery)
  {
    v11 = [v7 discoveryMode];
    if (v11 == 200)
    {
      v12 = 2;
    }

    else
    {
      if (v11 != 400)
      {
        goto LABEL_17;
      }

      v12 = 16;
    }

    [v7 setDiscoveryFlags:{objc_msgSend(v7, "discoveryFlags") | v12}];
LABEL_17:
    if (dword_1001D4910 <= 30 && (dword_1001D4910 != -1 || _LogCategory_Initialize()))
    {
      sub_1001269D0(self);
    }

    [v7 setDispatchQueue:self->_dispatchQueue];
    v13 = [v7 discoveryFlags];
    self->_discoveryDeviceFlags = (v13 >> 1) & 0x10 | v13 & 0xA | (v13 >> 2) & 4 | (v13 >> 1) & 0x20 | (v13 >> 2) & 1 | (v13 >> 1) & 0xC0 | (((v13 >> 10) & 1) << 12);
    objc_storeStrong(&self->_activatedDiscovery, a3);
    discoveryClients = self->_daemon->_discoveryClients;
    if (!discoveryClients)
    {
      v15 = objc_alloc_init(NSMutableSet);
      daemon = self->_daemon;
      v17 = daemon->_discoveryClients;
      daemon->_discoveryClients = v15;

      discoveryClients = self->_daemon->_discoveryClients;
    }

    [(NSMutableSet *)discoveryClients addObject:v7];
    discoveredDevices = self->_daemon->_discoveredDevices;
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_1000A3334;
    v22[3] = &unk_1001AEAF0;
    v22[4] = self;
    [(NSMutableDictionary *)discoveredDevices enumerateKeysAndObjectsUsingBlock:v22];
    if (v8)
    {
      v19 = [(NSMutableDictionary *)self->_discoveredPeople allValues];
      v20 = v19;
      if (v19)
      {
        v21 = v19;
      }

      else
      {
        v21 = &__NSArray0__struct;
      }

      (v8)[2](v8, v21, 0);
    }

    [(RPPeopleDaemon *)self->_daemon _update];
    goto LABEL_28;
  }

  if (dword_1001D4910 <= 30 && (dword_1001D4910 != -1 || _LogCategory_Initialize()))
  {
    sub_10012699C();
    if (!v8)
    {
      goto LABEL_28;
    }

    goto LABEL_9;
  }

  if (v8)
  {
LABEL_9:
    (v8)[2](v8, &__NSArray0__struct, 0);
  }

LABEL_28:
}

- (void)xpcPeopleDiscoveryUpdate:(id)a3
{
  v13 = a3;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (self->_activatedDiscovery)
  {
    v4 = [v13 discoveryMode];
    if (v4 == 200)
    {
      v5 = 2;
    }

    else
    {
      if (v4 != 400)
      {
        goto LABEL_11;
      }

      v5 = 16;
    }

    [v13 setDiscoveryFlags:{objc_msgSend(v13, "discoveryFlags") | v5}];
LABEL_11:
    v6 = [(RPPeopleDiscovery *)self->_activatedDiscovery discoveryFlags];
    v7 = [v13 discoveryFlags];
    if (v7 != v6)
    {
      if (dword_1001D4910 <= 30 && (dword_1001D4910 != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
        [(RPPeopleDiscovery *)self->_activatedDiscovery setDiscoveryFlags:v7, v6, &unk_100149203, v7, &unk_100149203];
      }

      else
      {
        [(RPPeopleDiscovery *)self->_activatedDiscovery setDiscoveryFlags:v7, v9, v10, v11, v12];
      }
    }

    v8 = (v7 >> 1) & 0x10 | v7 & 0xA | (v7 >> 2) & 4 | (v7 >> 1) & 0x20 | (v7 >> 2) & 1 | (v7 >> 1) & 0xC0 | (((v7 >> 10) & 1) << 12);
    if (v8 == self->_discoveryDeviceFlags)
    {
      if (v7 == v6)
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