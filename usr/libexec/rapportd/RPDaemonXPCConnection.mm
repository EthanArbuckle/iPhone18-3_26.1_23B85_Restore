@interface RPDaemonXPCConnection
- (BOOL)_entitledForLabel:(id)label error:(id *)error;
- (RPDaemonXPCConnection)initWithDaemon:(id)daemon xpcConnection:(id)connection;
- (void)_invalidateAssertions;
- (void)activateAssertionWithIdentifier:(id)identifier;
- (void)connectionInvalidated;
- (void)diagnosticCommand:(id)command params:(id)params completion:(id)completion;
- (void)diagnosticLogControl:(id)control completion:(id)completion;
- (void)diagnosticShow:(id)show level:(int)level completion:(id)completion;
- (void)primaryAccountSignedInWithCompletion:(id)completion;
- (void)primaryAccountSignedOutWithCompletion:(id)completion;
- (void)regenerateSelfIdentity:(id)identity withCompletion:(id)completion;
- (void)regenerateTemporarySelfIdentityWithCompletion:(id)completion;
- (void)removeAdHocPairedIdentity:(id)identity completion:(id)completion;
- (void)removeSessionPairedIdentity:(id)identity completion:(id)completion;
- (void)serverCreateDeviceMappingInternal:(int)internal applicationService:(id)service deviceID:(id)d endpointID:(id)iD completion:(id)completion;
- (void)serverExchangeQUICPublicKeyFor:(id)for publicKey:(id)key completion:(id)completion;
@end

@implementation RPDaemonXPCConnection

- (RPDaemonXPCConnection)initWithDaemon:(id)daemon xpcConnection:(id)connection
{
  daemonCopy = daemon;
  connectionCopy = connection;
  v13.receiver = self;
  v13.super_class = RPDaemonXPCConnection;
  v9 = [(RPDaemonXPCConnection *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_daemon, daemon);
    objc_storeStrong(&v10->_xpcCnx, connection);
    v11 = v10;
  }

  return v10;
}

- (void)connectionInvalidated
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (dword_1001D3730 <= 20 && (dword_1001D3730 != -1 || _LogCategory_Initialize()))
  {
    sub_1001174A0(self);
  }

  [(RPDaemonXPCConnection *)self _invalidateAssertions];
}

- (BOOL)_entitledForLabel:(id)label error:(id *)error
{
  labelCopy = label;
  if (!self->_entitledClient)
  {
    p_xpcCnx = &self->_xpcCnx;
    v9 = [(NSXPCConnection *)self->_xpcCnx cuValueForEntitlementNoCache:@"com.apple.rapport.Client"];
    v10 = [v9 isEqual:&__kCFBooleanTrue];

    if (v10)
    {
      v7 = 1;
      self->_entitledClient = 1;
      goto LABEL_11;
    }

    v11 = RPErrorF();
    if (dword_1001D3730 <= 60 && (dword_1001D3730 != -1 || _LogCategory_Initialize()))
    {
      sub_1001174E8(p_xpcCnx);
      if (!error)
      {
        goto LABEL_10;
      }
    }

    else if (!error)
    {
LABEL_10:

      v7 = 0;
      goto LABEL_11;
    }

    v12 = v11;
    *error = v11;
    goto LABEL_10;
  }

  v7 = 1;
LABEL_11:

  return v7;
}

- (void)activateAssertionWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v4 = [(RPDaemonXPCConnection *)self _entitledForLabel:@"ActivateAssertion" error:0];
  v5 = identifierCopy;
  if (v4)
  {
    v6 = identifierCopy;
    if (v6)
    {
      if ([(NSMutableSet *)self->_assertions containsObject:v6])
      {
        if (dword_1001D3730 > 30 || dword_1001D3730 == -1 && !_LogCategory_Initialize())
        {
          goto LABEL_21;
        }
      }

      else
      {
        assertions = self->_assertions;
        if (!assertions)
        {
          v8 = objc_alloc_init(NSMutableSet);
          v9 = self->_assertions;
          self->_assertions = v8;

          assertions = self->_assertions;
        }

        [(NSMutableSet *)assertions addObject:v6];
        v10 = [(NSCountedSet *)self->_daemon->_assertions countForObject:v6];
        v11 = self->_daemon->_assertions;
        if (!v11)
        {
          v12 = objc_alloc_init(NSCountedSet);
          daemon = self->_daemon;
          v14 = daemon->_assertions;
          daemon->_assertions = v12;

          v11 = self->_daemon->_assertions;
        }

        [(NSCountedSet *)v11 addObject:v6];
        if (dword_1001D3730 <= 30 && (dword_1001D3730 != -1 || _LogCategory_Initialize()))
        {
          LogPrintF();
        }

        if (v10 || ([v6 isEqual:@"com.apple.rapport.KeepAlive"] & 1) != 0 || dword_1001D3730 > 30 || dword_1001D3730 == -1 && !_LogCategory_Initialize())
        {
          goto LABEL_21;
        }
      }

      sub_100117534();
    }

LABEL_21:

    v5 = identifierCopy;
  }
}

- (void)_invalidateAssertions
{
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v3 = self->_assertions;
  v4 = [(NSMutableSet *)v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v15;
    do
    {
      v7 = 0;
      do
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v14 + 1) + 8 * v7);
        v9 = [(NSCountedSet *)self->_daemon->_assertions countForObject:v8, v11, v12, v13];
        [(NSCountedSet *)self->_daemon->_assertions removeObject:v8];
        if (dword_1001D3730 <= 30 && (dword_1001D3730 != -1 || _LogCategory_Initialize()))
        {
          v11 = v8;
          v12 = v9;
          v13 = (v9 - 1);
          LogPrintF();
        }

        if (v9 == 1 && ([v8 isEqual:@"com.apple.rapport.KeepAlive"] & 1) == 0 && dword_1001D3730 <= 30 && (dword_1001D3730 != -1 || _LogCategory_Initialize()))
        {
          sub_100117570();
        }

        v7 = v7 + 1;
      }

      while (v5 != v7);
      v10 = [(NSMutableSet *)v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
      v5 = v10;
    }

    while (v10);
  }

  [(NSMutableSet *)self->_assertions removeAllObjects];
}

- (void)diagnosticCommand:(id)command params:(id)params completion:(id)completion
{
  commandCopy = command;
  paramsCopy = params;
  completionCopy = completion;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v22 = 0;
  [(RPDaemonXPCConnection *)self _entitledForLabel:@"DiagnosticCommand" error:&v22];
  v11 = v22;
  if (v11)
  {
    if (completionCopy)
    {
      completionCopy[2](completionCopy, 0, v11);
    }

    goto LABEL_19;
  }

  if (!commandCopy)
  {
    if (!completionCopy)
    {
      goto LABEL_19;
    }

    goto LABEL_21;
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v12 = self->_daemon->_subDaemons;
  v13 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v18 objects:v23 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v19;
    while (2)
    {
      for (i = 0; i != v14; i = i + 1)
      {
        if (*v19 != v15)
        {
          objc_enumerationMutation(v12);
        }

        if ([*(*(&v18 + 1) + 8 * i) diagnosticCommand:commandCopy params:paramsCopy])
        {

          goto LABEL_17;
        }
      }

      v14 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v18 objects:v23 count:16];
      if (v14)
      {
        continue;
      }

      break;
    }
  }

  if (![(RPDaemon *)self->_daemon diagnosticCommand:commandCopy params:paramsCopy])
  {
    if (!completionCopy)
    {
      goto LABEL_19;
    }

LABEL_21:
    v17 = RPErrorF();
    completionCopy[2](completionCopy, 0, v17);

    goto LABEL_19;
  }

LABEL_17:
  if (completionCopy)
  {
    (completionCopy)[2](completionCopy, &__NSDictionary0__struct, 0);
  }

LABEL_19:
}

- (void)diagnosticLogControl:(id)control completion:(id)completion
{
  controlCopy = control;
  completionCopy = completion;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v10 = 0;
  [(RPDaemonXPCConnection *)self _entitledForLabel:@"DiagnosticLogControl" error:&v10];
  v8 = v10;
  if (!v8)
  {
    if (controlCopy && ([controlCopy UTF8String], LogControl()))
    {
      if (!completionCopy)
      {
        goto LABEL_4;
      }
    }

    else
    {
      LogShow();
      if (!completionCopy)
      {
        goto LABEL_4;
      }
    }

    goto LABEL_3;
  }

  if (completionCopy)
  {
LABEL_3:
    v9 = NSPrintF();
    completionCopy[2](completionCopy, v9);
  }

LABEL_4:
}

- (void)diagnosticShow:(id)show level:(int)level completion:(id)completion
{
  showCopy = show;
  completionCopy = completion;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v13 = 0;
  [(RPDaemonXPCConnection *)self _entitledForLabel:@"DiagnosticShow" error:&v13];
  v9 = v13;
  if (!v9)
  {
    if (showCopy && [showCopy rangeOfString:@"ident" options:9] != 0x7FFFFFFFFFFFFFFFLL)
    {
      v11 = +[RPIdentityDaemon sharedIdentityDaemon];
      v10 = CUDescriptionWithLevel();

      if (!completionCopy)
      {
        goto LABEL_15;
      }
    }

    else
    {
      if ([showCopy isEqual:@"kc"])
      {
        [(RPDaemon *)self->_daemon keychainStateString];
      }

      else
      {
        CUDescriptionWithLevel();
      }
      v10 = ;
      if (!completionCopy)
      {
        goto LABEL_15;
      }
    }

    if (v10)
    {
      completionCopy[2](completionCopy, v10);
    }

    else
    {
      v12 = NSPrintF();
      completionCopy[2](completionCopy, v12);
    }

    goto LABEL_15;
  }

  if (completionCopy)
  {
    v10 = NSPrintF();
    completionCopy[2](completionCopy, v10);
LABEL_15:
  }
}

- (void)regenerateSelfIdentity:(id)identity withCompletion:(id)completion
{
  identityCopy = identity;
  completionCopy = completion;
  xpcCnx = self->_xpcCnx;
  p_xpcCnx = &self->_xpcCnx;
  v9 = [(NSXPCConnection *)xpcCnx cuValueForEntitlementNoCache:@"com.apple.rapport.RegenerateIdentity"];
  v10 = [v9 isEqual:&__kCFBooleanTrue];

  if (v10)
  {
    v11 = +[RPPeopleDaemon sharedPeopleDaemon];
    [v11 regenerateSelfIdentity:identityCopy];

    completionCopy[2](completionCopy, 0);
  }

  else
  {
    v12 = RPErrorF();
    if (dword_1001D3730 <= 60 && (dword_1001D3730 != -1 || _LogCategory_Initialize()))
    {
      sub_1001175B0(p_xpcCnx);
    }

    (completionCopy)[2](completionCopy, v12);
  }
}

- (void)regenerateTemporarySelfIdentityWithCompletion:(id)completion
{
  completionCopy = completion;
  xpcCnx = self->_xpcCnx;
  p_xpcCnx = &self->_xpcCnx;
  v6 = [(NSXPCConnection *)xpcCnx cuValueForEntitlementNoCache:@"com.apple.rapport.RegenerateIdentity"];
  v7 = [v6 isEqual:&__kCFBooleanTrue];

  if (v7)
  {
    v8 = +[RPIdentityDaemon sharedIdentityDaemon];
    [v8 regenerateTemporarySelfIdentity];

    completionCopy[2](completionCopy, 0);
  }

  else
  {
    v9 = RPErrorF();
    if (dword_1001D3730 <= 60 && (dword_1001D3730 != -1 || _LogCategory_Initialize()))
    {
      sub_1001175FC(p_xpcCnx);
    }

    (completionCopy)[2](completionCopy, v9);
  }
}

- (void)primaryAccountSignedInWithCompletion:(id)completion
{
  completionCopy = completion;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  xpcCnx = self->_xpcCnx;
  p_xpcCnx = &self->_xpcCnx;
  v6 = [(NSXPCConnection *)xpcCnx cuValueForEntitlementNoCache:@"com.apple.rapport.Client"];
  v7 = [v6 isEqual:&__kCFBooleanTrue];

  if (v7)
  {
    if (dword_1001D3730 <= 30 && (dword_1001D3730 != -1 || _LogCategory_Initialize()))
    {
      sub_100117694(p_xpcCnx);
    }

    v8 = +[RPDaemon sharedDaemon];
    [v8 postDaemonInfoChanges:64];

    completionCopy[2](completionCopy, 0);
  }

  else
  {
    v9 = RPErrorF();
    if (dword_1001D3730 <= 60 && (dword_1001D3730 != -1 || _LogCategory_Initialize()))
    {
      sub_100117648(p_xpcCnx);
    }

    (completionCopy)[2](completionCopy, v9);
  }
}

- (void)primaryAccountSignedOutWithCompletion:(id)completion
{
  completionCopy = completion;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  xpcCnx = self->_xpcCnx;
  p_xpcCnx = &self->_xpcCnx;
  v7 = [(NSXPCConnection *)xpcCnx cuValueForEntitlementNoCache:@"com.apple.rapport.Client"];
  v8 = [v7 isEqual:&__kCFBooleanTrue];

  if (v8)
  {
    if (dword_1001D3730 <= 30 && (dword_1001D3730 != -1 || _LogCategory_Initialize()))
    {
      sub_100117728(p_xpcCnx);
    }

    v9 = objc_alloc_init(CUKeychainItem);
    [v9 setAccessGroup:@"com.apple.rapport"];
    [v9 setSyncType:3];
    v10 = objc_alloc_init(CUKeychainManager);
    v31 = 0;
    v25 = v9;
    v11 = [v10 copyItemsMatchingItem:v9 flags:10 error:&v31];
    v12 = v31;
    if (v12 && dword_1001D3730 <= 90 && (dword_1001D3730 != -1 || _LogCategory_Initialize()))
    {
      sub_100117770();
    }

    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v13 = v11;
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
          if (dword_1001D3730 <= 30 && (dword_1001D3730 != -1 || _LogCategory_Initialize()))
          {
            sub_1001177B0();
          }

          v26 = 0;
          v19 = [v10 removeItemMatchingItem:v18 error:&v26];
          v20 = v26;
          v12 = v20;
          if (v19)
          {
            v21 = v20 == 0;
          }

          else
          {
            v21 = 0;
          }

          if (!v21 && dword_1001D3730 <= 90 && (dword_1001D3730 != -1 || _LogCategory_Initialize()))
          {
            LogPrintF();
          }

          v17 = v17 + 1;
        }

        while (v15 != v17);
        v22 = [v13 countByEnumeratingWithState:&v27 objects:v32 count:16];
        v15 = v22;
      }

      while (v22);
    }

    v23 = +[RPDaemon sharedDaemon];
    [v23 postDaemonInfoChanges:16];

    completionCopy[2](completionCopy, 0);
  }

  else
  {
    v24 = RPErrorF();
    if (dword_1001D3730 <= 60 && (dword_1001D3730 != -1 || _LogCategory_Initialize()))
    {
      sub_1001176DC(p_xpcCnx);
    }

    (completionCopy)[2](completionCopy, v24);
  }
}

- (void)serverCreateDeviceMappingInternal:(int)internal applicationService:(id)service deviceID:(id)d endpointID:(id)iD completion:(id)completion
{
  serviceCopy = service;
  dCopy = d;
  iDCopy = iD;
  completionCopy = completion;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v27 = 0;
  v16 = [(RPDaemonXPCConnection *)self _entitledForLabel:@"createDeviceMapping" error:&v27];
  v17 = v27;
  if (v16)
  {
    v18 = +[RPCompanionLinkDaemon sharedCompanionLinkDaemon];
    v19 = [v18 findDeviceFromID:dCopy];

    if (v19)
    {
      switch(internal)
      {
        case 2:
          [RPNWListener queryDeviceToApplicationServiceMapping:serviceCopy device:v19 completion:completionCopy];
          break;
        case 1:
          v25 = [RPNWListener addDeviceToApplicationServiceMapping:serviceCopy device:v19 completion:completionCopy];
          break;
        case 0:
          v20 = +[RPNWEndpoint dduiEndpointsKey];
          v21 = [RPNWEndpoint addEndpointMapping:v19 endpointID:iDCopy applicationService:serviceCopy discoverySessionID:v20 shouldAutomapListener:0];

          if ((v21 & 1) == 0)
          {
            v22 = RPErrorF();

            v17 = v22;
          }

          if (completionCopy)
          {
            v23 = +[RPNWNetworkAgent sharedNetworkAgent];
            networkAgentID = [v23 networkAgentID];
            completionCopy[2](completionCopy, networkAgentID, v17);
          }

          break;
        default:
          goto LABEL_19;
      }
    }

    else
    {
      if (dword_1001D3730 <= 90 && (dword_1001D3730 != -1 || _LogCategory_Initialize()))
      {
        sub_1001177F0();
        if (!completionCopy)
        {
          goto LABEL_20;
        }

        goto LABEL_19;
      }

      if (completionCopy)
      {
LABEL_19:
        v26 = RPErrorF();

        completionCopy[2](completionCopy, 0, v26);
        v17 = v26;
      }
    }

LABEL_20:

    goto LABEL_21;
  }

  if (completionCopy)
  {
    completionCopy[2](completionCopy, 0, v17);
  }

LABEL_21:
}

- (void)serverExchangeQUICPublicKeyFor:(id)for publicKey:(id)key completion:(id)completion
{
  forCopy = for;
  keyCopy = key;
  completionCopy = completion;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v14 = 0;
  v11 = [(RPDaemonXPCConnection *)self _entitledForLabel:@"serverExchangeQUICPublicKeyFor" error:&v14];
  v12 = v14;
  if (v11)
  {
    v13 = +[RPNWNetworkAgent sharedNetworkAgent];
    [v13 exchangeQUICPublicKeyFor:forCopy publicKey:keyCopy completion:completionCopy];
  }

  else if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy, 0, 0, v12);
  }
}

- (void)removeSessionPairedIdentity:(id)identity completion:(id)completion
{
  identityCopy = identity;
  completionCopy = completion;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v10 = 0;
  [(RPDaemonXPCConnection *)self _entitledForLabel:@"removeSessionPairedIdentity" error:&v10];
  v8 = v10;
  if (v8)
  {
    if (completionCopy)
    {
      completionCopy[2](completionCopy, v8);
    }
  }

  else
  {
    v9 = +[RPIdentityDaemon sharedIdentityDaemon];
    [v9 removeSessionPairedIdentityWithIdentifier:identityCopy];

    if (completionCopy)
    {
      completionCopy[2](completionCopy, 0);
    }
  }
}

- (void)removeAdHocPairedIdentity:(id)identity completion:(id)completion
{
  identityCopy = identity;
  completionCopy = completion;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v10 = 0;
  [(RPDaemonXPCConnection *)self _entitledForLabel:@"removeAdHocPairedIdentity" error:&v10];
  v8 = v10;
  if (v8)
  {
    if (completionCopy)
    {
      completionCopy[2](completionCopy, v8);
    }
  }

  else
  {
    v9 = +[RPIdentityDaemon sharedIdentityDaemon];
    [v9 removeAdHocPairedIdentityWithIdentifier:identityCopy];

    if (completionCopy)
    {
      completionCopy[2](completionCopy, 0);
    }
  }
}

@end