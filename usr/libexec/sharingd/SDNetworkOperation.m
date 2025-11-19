@interface SDNetworkOperation
- (NSString)description;
- (SDNetworkOperation)initWithKind:(id)a3;
- (SDNetworkOperationDelegate)delegate;
- (void)airDropConnection:(id)a3 event:(int64_t)a4 withResults:(id)a5;
- (void)airDropController:(id)a3 didChange:(id)a4;
- (void)airDropInformation:(id)a3 didChange:(id)a4;
- (void)airDropServer:(id)a3 event:(int64_t)a4 withResults:(id)a5;
- (void)airDropSession:(id)a3 event:(int64_t)a4 withResults:(id)a5;
- (void)airDropStatus:(id)a3 didChange:(id)a4;
- (void)copyPropertyForKey:(id)a3;
- (void)dealloc;
- (void)invalidate;
- (void)networkEjecter:(id)a3 event:(int64_t)a4 withResults:(id)a5;
- (void)networkResolver:(id)a3 event:(int64_t)a4 withResults:(id)a5;
- (void)notifyClientWithPosixError:(int64_t)a3;
- (void)resume;
- (void)setProperty:(void *)a3 forKey:(id)a4;
@end

@implementation SDNetworkOperation

- (void)invalidate
{
  if (self->_operation)
  {
    if ([(NSString *)self->_kind isEqual:kSFOperationKindSender])
    {
      goto LABEL_3;
    }

    if ([(NSString *)self->_kind isEqual:kSFOperationKindListener])
    {
      [self->_operation setDelegate:0];
      [self->_operation invalidate];
      goto LABEL_6;
    }

    if ([(NSString *)self->_kind isEqual:kSFOperationKindReceiver]|| [(NSString *)self->_kind isEqual:kSFOperationKindController])
    {
      goto LABEL_3;
    }

    if ([(NSString *)self->_kind isEqual:kSFOperationKindStatus])
    {
      [self->_operation setDelegate:0];
      [self->_operation stop];
      --dword_1009A0610;
      goto LABEL_6;
    }

    if ([(NSString *)self->_kind isEqual:kSFOperationKindInformation])
    {
      goto LABEL_3;
    }

    if (([(NSString *)self->_kind isEqual:kSFOperationKindLogger]& 1) != 0)
    {
      goto LABEL_6;
    }

    if ([(NSString *)self->_kind isEqual:kSFOperationKindEjecter]|| [(NSString *)self->_kind isEqual:kSFOperationKindResolver])
    {
LABEL_3:
      [self->_operation setDelegate:0];
      [self->_operation stop];
LABEL_6:
      operation = self->_operation;
      self->_operation = 0;
    }
  }

  if (self->_sandboxExtensionHandle)
  {

    sandbox_extension_release();
  }
}

- (void)dealloc
{
  [(SDNetworkOperation *)self invalidate];
  v3.receiver = self;
  v3.super_class = SDNetworkOperation;
  [(SDNetworkOperation *)&v3 dealloc];
}

- (SDNetworkOperation)initWithKind:(id)a3
{
  v5 = a3;
  v15.receiver = self;
  v15.super_class = SDNetworkOperation;
  v6 = [(SDNetworkOperation *)&v15 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_kind, a3);
    operation = v7->_operation;
    v7->_operation = 0;

    connection = v7->_connection;
    v7->_connection = 0;

    v7->_connectionScheduled = 0;
    v10 = objc_opt_new();
    activities = v7->_activities;
    v7->_activities = v10;

    v12 = objc_opt_new();
    properties = v7->_properties;
    v7->_properties = v12;

    v7->_sandboxExtensionHandle = 0;
  }

  return v7;
}

- (void)setProperty:(void *)a3 forKey:(id)a4
{
  v7 = a4;
  if (([v7 isEqual:kSFOperationKindKey] & 1) == 0)
  {
    if (([(NSString *)self->_kind isEqual:kSFOperationKindController]& 1) != 0 || [(NSString *)self->_kind isEqual:kSFOperationKindInformation])
    {
      [self->_operation setProperty:a3 forKey:v7];
    }

    properties = self->_properties;
    if (a3)
    {
      [(NSMutableDictionary *)properties setObject:a3 forKeyedSubscript:v7];
    }

    else
    {
      [(NSMutableDictionary *)properties removeObjectForKey:v7];
    }
  }
}

- (void)copyPropertyForKey:(id)a3
{
  v4 = a3;
  if ([v4 isEqual:kSFOperationKindKey])
  {
    v5 = self->_kind;
  }

  else
  {
    v5 = [(NSMutableDictionary *)self->_properties objectForKeyedSubscript:v4];
  }

  v6 = v5;

  return v6;
}

- (void)airDropStatus:(id)a3 didChange:(id)a4
{
  v5 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained networkOperation:self event:12 withResults:v5];
}

- (void)airDropInformation:(id)a3 didChange:(id)a4
{
  v5 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained networkOperation:self event:12 withResults:v5];
}

- (void)airDropController:(id)a3 didChange:(id)a4
{
  v5 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained networkOperation:self event:12 withResults:v5];
}

- (void)airDropSession:(id)a3 event:(int64_t)a4 withResults:(id)a5
{
  v7 = a5;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained networkOperation:self event:a4 withResults:v7];
}

- (void)airDropServer:(id)a3 event:(int64_t)a4 withResults:(id)a5
{
  v7 = a5;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained networkOperation:self event:a4 withResults:v7];
}

- (void)networkEjecter:(id)a3 event:(int64_t)a4 withResults:(id)a5
{
  v7 = a5;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained networkOperation:self event:a4 withResults:v7];
}

- (void)networkResolver:(id)a3 event:(int64_t)a4 withResults:(id)a5
{
  v7 = a5;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained networkOperation:self event:a4 withResults:v7];
}

- (void)airDropConnection:(id)a3 event:(int64_t)a4 withResults:(id)a5
{
  v7 = a5;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained networkOperation:self event:a4 withResults:v7];
}

- (void)notifyClientWithPosixError:(int64_t)a3
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1001353B8;
  v3[3] = &unk_1008CFD30;
  v3[4] = self;
  v3[5] = a3;
  dispatch_async(&_dispatch_main_q, v3);
}

- (void)resume
{
  if (![(NSString *)self->_kind isEqual:kSFOperationKindSender])
  {
    if ([(NSString *)self->_kind isEqual:kSFOperationKindListener])
    {
      v6 = objc_alloc_init(SDAirDropServer);
      operation = self->_operation;
      self->_operation = v6;

      connection = self->_connection;
      if (connection)
      {
        [self->_operation setClientPid:xpc_connection_get_pid(connection)];
        v9 = sub_10000C344(self->_connection);
        [self->_operation setClientBundleID:v9];
      }

      [self->_operation setDelegate:self];
      v10 = self->_operation;

      [v10 activate];
      return;
    }

    if ([(NSString *)self->_kind isEqual:kSFOperationKindReceiver])
    {
      v11 = self->_operation;
      if (v11)
      {
        if (self->_connectionScheduled)
        {
          if ([v11 accept])
          {
            return;
          }

          v4 = self;
          v5 = 1;
          goto LABEL_5;
        }

        self->_connectionScheduled = 1;

        [v11 schedule];
        return;
      }

      Value = CFDictionaryGetValue(self->_properties, kSFOperationHTTPServerConnectionKey);
      if (Value)
      {
        v41 = Value;
        v42 = CFGetTypeID(Value);
        if (v42 == _CFHTTPServerConnectionGetTypeID())
        {
          v57 = [(NSMutableDictionary *)self->_properties objectForKeyedSubscript:kSFOperationSessionIDKey];
          v43 = [(NSMutableDictionary *)self->_properties objectForKeyedSubscript:kSFOperationContactsOnlyKey];
          v44 = [[SDAirDropConnection alloc] initWithConnection:v41];
          v45 = self->_operation;
          self->_operation = v44;

          [self->_operation setContactsOnly:{objc_msgSend(v43, "BOOLValue")}];
          [self->_operation setSessionID:v57];
          [self->_operation setDelegate:self];
          [self->_operation start];
LABEL_41:

LABEL_54:

          return;
        }

        v49 = airdrop_log();
        if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
        {
          sub_100135DE0(v49);
        }
      }

      else
      {
        v49 = airdrop_log();
        if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
        {
          sub_100135E24(v49);
        }
      }

      return;
    }

    if ([(NSString *)self->_kind isEqual:kSFOperationKindController])
    {
      v18 = SDAirDropController;
LABEL_47:
      v46 = objc_alloc_init(v18);
      v47 = self->_operation;
      self->_operation = v46;

      [self->_operation setDelegate:self];
      v48 = self->_operation;

      [v48 start];
      return;
    }

    if ([(NSString *)self->_kind isEqual:kSFOperationKindInformation])
    {
      v18 = SDAirDropInformation;
      goto LABEL_47;
    }

    if ([(NSString *)self->_kind isEqual:kSFOperationKindStatus])
    {
      ++dword_1009A0610;
      v18 = SDAirDropStatus;
      goto LABEL_47;
    }

    if ([(NSString *)self->_kind isEqual:kSFOperationKindLogger])
    {
      v50 = objc_alloc_init(SDAirDropLogger);
      v51 = self->_operation;
      self->_operation = v50;

      v57 = [(NSMutableDictionary *)self->_properties objectForKeyedSubscript:kSFOperationSessionIDKey];
      v52 = [(NSMutableDictionary *)self->_properties objectForKeyedSubscript:kSFOperationProtocolKey];
      [self->_operation logActivityType:v52 sessionID:v57];

      goto LABEL_54;
    }

    if ([(NSString *)self->_kind isEqual:kSFOperationKindResolver])
    {
      v53 = [(NSMutableDictionary *)self->_properties objectForKeyedSubscript:kSFOperationNodeKey];

      if (v53)
      {
        v57 = [(NSMutableDictionary *)self->_properties objectForKeyedSubscript:kSFOperationFlagsKey];
        v43 = [(NSMutableDictionary *)self->_properties objectForKeyedSubscript:kSFOperationProtocolKey];
        v54 = SDNetworkResolver;
LABEL_66:
        v55 = [[v54 alloc] initWithNode:v53];
        v56 = self->_operation;
        self->_operation = v55;

        [self->_operation setProtocol:v43];
        [self->_operation setDelegate:self];
        [self->_operation setFlags:v57];
        [self->_operation start];
        goto LABEL_41;
      }
    }

    else if ([(NSString *)self->_kind isEqual:kSFOperationKindEjecter])
    {
      v53 = [(NSMutableDictionary *)self->_properties objectForKeyedSubscript:kSFOperationNodeKey];

      if (v53)
      {
        v57 = [(NSMutableDictionary *)self->_properties objectForKeyedSubscript:kSFOperationFlagsKey];
        v43 = [(NSMutableDictionary *)self->_properties objectForKeyedSubscript:kSFOperationProtocolKey];
        v54 = SDNetworkEjecter;
        goto LABEL_66;
      }
    }

    v4 = self;
    v5 = 22;
LABEL_5:

    [(SDNetworkOperation *)v4 notifyClientWithPosixError:v5];
    return;
  }

  v3 = self->_operation;
  if (v3)
  {
    if ([v3 send])
    {
      return;
    }

    v4 = self;
    v5 = 37;
    goto LABEL_5;
  }

  v12 = kSFOperationItemsKey;
  v13 = [(NSMutableDictionary *)self->_properties objectForKeyedSubscript:kSFOperationItemsKey];
  v14 = v13;
  if (v13)
  {
    v15 = [v13 objectForKeyedSubscript:v12];
    v16 = [(NSMutableDictionary *)self->_properties objectForKeyedSubscript:kSFOperationNodeKey];

    if (v15)
    {
      v17 = v16 == 0;
    }

    else
    {
      v17 = 1;
    }

    if (v17)
    {
      [(SDNetworkOperation *)self notifyClientWithPosixError:22];
    }

    else
    {
      v19 = [v14 mutableCopy];
      [v19 removeObjectForKey:v12];
      v20 = [[SDAirDropSession alloc] initWithPerson:v16 items:v15 sandboxExtensions:v19];
      v21 = self->_operation;
      self->_operation = v20;

      v22 = self->_operation;
      v23 = kSFOperationFileIconKey;
      v24 = [(NSMutableDictionary *)self->_properties objectForKeyedSubscript:kSFOperationFileIconKey];
      [v22 setProperty:v24 forKey:v23];

      v25 = self->_operation;
      v26 = kSFOperationSessionIDKey;
      v27 = [(NSMutableDictionary *)self->_properties objectForKeyedSubscript:kSFOperationSessionIDKey];
      [v25 setProperty:v27 forKey:v26];

      v28 = self->_operation;
      v29 = kSFOperationSmallFileIconKey;
      v30 = [(NSMutableDictionary *)self->_properties objectForKeyedSubscript:kSFOperationSmallFileIconKey];
      [v28 setProperty:v30 forKey:v29];

      v31 = self->_operation;
      v32 = kSFOperationItemsDescriptionKey;
      v33 = [(NSMutableDictionary *)self->_properties objectForKeyedSubscript:kSFOperationItemsDescriptionKey];
      [v31 setProperty:v33 forKey:v32];

      v34 = [(NSMutableDictionary *)self->_properties objectForKeyedSubscript:kSFOperationBundleIDKey];
      [self->_operation setClientBundleID:v34];

      v35 = self->_operation;
      v36 = kSFOperationFromShareSheet;
      v37 = [(NSMutableDictionary *)self->_properties objectForKeyedSubscript:kSFOperationFromShareSheet];
      [v35 setProperty:v37 forKey:v36];

      if (self->_connection)
      {
        xpc_connection_get_audit_token();
        memset(v58, 0, sizeof(v58));
        [self->_operation setAuditToken:v58];
        [self->_operation setClientPid:xpc_connection_get_pid(self->_connection)];
        v38 = [self->_operation clientBundleID];

        if (!v38)
        {
          v39 = sub_10000C344(self->_connection);
          [self->_operation setClientBundleID:v39];
        }
      }

      [self->_operation setDelegate:self];
      [self->_operation start];
    }
  }

  else
  {
    [(SDNetworkOperation *)self notifyClientWithPosixError:22];
  }
}

- (NSString)description
{
  if (self->_operation && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v5 = [self->_operation description];
    NSAppendPrintF();
    v3 = 0;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (SDNetworkOperationDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end