@interface CDServiceConnection
- (CDServiceConnection)initWithConnection:(id)a3;
- (CDServiceConnectionDelegate)delegate;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)succinctDescription;
- (void)authenticationSessionDeviceStartedAuthentication:(id)a3;
- (void)authenticationSessionDeviceTappedNotification:(id)a3;
- (void)authenticationSessionDidFailWithError:(id)a3;
- (void)authenticationSessionDidFinishWithResponse:(id)a3;
- (void)authenticationSessionPresentShieldWithStyle:(int64_t)a3 device:(id)a4;
- (void)fetchDaemonStatusWithCompletionHandler:(id)a3;
- (void)performAMSDelegatePurchaseWithRequest:(id)a3 isSandboxPurchase:(BOOL)a4 completionHandler:(id)a5;
- (void)startAuthenticationSessionWithRequest:(id)a3 completionHandler:(id)a4;
@end

@implementation CDServiceConnection

- (CDServiceConnection)initWithConnection:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = CDServiceConnection;
  v6 = [(CDServiceConnection *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_connection, a3);
  }

  return v7;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v4 = a3;
  [BSDescriptionBuilder builderWithObject:self];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10001F97C;
  v5 = v8[3] = &unk_10008A030;
  v9 = v5;
  v10 = self;
  [v5 appendBodySectionWithName:0 multilinePrefix:v4 block:v8];

  v6 = v5;
  return v5;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(CDServiceConnection *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)succinctDescription
{
  v2 = [(CDServiceConnection *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (void)startAuthenticationSessionWithRequest:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v8 = _os_activity_create(&_mh_execute_header, "start authentication session", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v8, &state);

  v9 = +[CDServiceClient currentClient];
  v10 = cps_service_log();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [v9 bundleIdentifier];
    *buf = 138412546;
    v50 = v11;
    v51 = 2112;
    v52 = v6;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Received start authentication session request. client=%@, request=%@", buf, 0x16u);
  }

  v41 = _NSConcreteStackBlock;
  v42 = 3221225472;
  v43 = sub_10001FFFC;
  v44 = &unk_10008A820;
  v12 = v7;
  v45 = v12;
  v13 = objc_retainBlock(&v41);
  v14 = objc_opt_self();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    sub_100064978(self, v9);
  }

  else
  {
    v16 = objc_opt_self();
    v17 = objc_opt_isKindOfClass();

    if (v17)
    {
      v18 = cps_signpost_log();
      v19 = [v6 identifier];
      sub_100064F98(v19, [v19 hash], v18);

      sub_100064A24(self, v9);
    }

    else
    {
      v20 = objc_opt_self();
      v21 = objc_opt_isKindOfClass();

      if (v21)
      {
        sub_100064B18(self, v9);
      }

      else
      {
        v22 = objc_opt_self();
        v23 = objc_opt_isKindOfClass();

        if (v23)
        {
          goto LABEL_17;
        }

        v24 = objc_opt_self();
        v25 = objc_opt_isKindOfClass();

        if (v25)
        {
          sub_100064C3C(self, v9);
          goto LABEL_25;
        }

        v26 = objc_opt_self();
        v27 = objc_opt_isKindOfClass();

        if (v27)
        {
          sub_100064CE8(self, v9);
          goto LABEL_25;
        }

        v28 = objc_opt_self();
        v29 = objc_opt_isKindOfClass();

        if (v29 & 1) != 0 || (objc_opt_self(), v30 = objc_claimAutoreleasedReturnValue(), v31 = objc_opt_isKindOfClass(), v30, (v31))
        {
LABEL_17:
          sub_100064BC4(self, v9, v6, v13);
          goto LABEL_25;
        }

        v32 = objc_opt_self();
        v33 = objc_opt_isKindOfClass();

        if (v33)
        {
          sub_100064D94(self, v9);
        }

        else
        {
          v34 = objc_opt_self();
          v35 = objc_opt_isKindOfClass();

          if (v35)
          {
            sub_100064E40(self, v9);
          }

          else
          {
            v36 = objc_opt_self();
            v37 = objc_opt_isKindOfClass();

            if (v37)
            {
              sub_100064EEC(self, v9);
            }

            else
            {
              v47 = NSDebugDescriptionErrorKey;
              v38 = [NSString stringWithFormat:@"Invalid authentication request: %@", v6, v41, v42, v43, v44];
              v48 = v38;
              v39 = [NSDictionary dictionaryWithObjects:&v48 forKeys:&v47 count:1];
              v40 = [NSError errorWithDomain:CPSErrorDomain code:101 userInfo:v39];
              (v13[2])(v13, v40);
            }
          }
        }
      }
    }
  }

LABEL_25:

  os_activity_scope_leave(&state);
}

- (void)fetchDaemonStatusWithCompletionHandler:(id)a3
{
  v4 = a3;
  v10.opaque[0] = 0;
  v10.opaque[1] = 0;
  v5 = _os_activity_create(&_mh_execute_header, "fetch daemon status", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v5, &v10);

  v6 = [CDServiceClient currentClient:v10.opaque[0]];
  v7 = cps_service_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [v6 bundleIdentifier];
    *buf = 138412290;
    v12 = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Received fetch daemon status request. client=%@", buf, 0xCu);
  }

  if ([v6 hasDaemonStatusEntitlement])
  {
    if (_BSIsInternalInstall())
    {
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      [WeakRetained serviceConnection:self fetchDaemonStatusWithCompletionHandler:v4];
    }

    else
    {
      WeakRetained = [NSError errorWithDomain:CPSErrorDomain code:101 userInfo:0];
      v4[2](v4, 0, WeakRetained);
    }
  }

  else
  {
    WeakRetained = [NSError errorWithDomain:CPSErrorDomain code:103 userInfo:0];
    v4[2](v4, 0, WeakRetained);
  }

  os_activity_scope_leave(&v10);
}

- (void)performAMSDelegatePurchaseWithRequest:(id)a3 isSandboxPurchase:(BOOL)a4 completionHandler:(id)a5
{
  v6 = a4;
  v7 = a3;
  v8 = a5;
  v23.opaque[0] = 0;
  v23.opaque[1] = 0;
  v9 = _os_activity_create(&_mh_execute_header, "perform AMS delegate purchase", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v9, &v23);

  v10 = [CDServiceClient currentClient:v23.opaque[0]];
  v11 = cps_service_log();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [v10 bundleIdentifier];
    *buf = 138412290;
    v25 = v12;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Received perform AMS delegate purchase. client=%@", buf, 0xCu);
  }

  if ([v10 hasAMSDelegatePurchaseEntitlement])
  {
    if (_BSIsInternalInstall())
    {
      v13 = &AMSAccountMediaTypeProduction;
      if (v6)
      {
        v13 = &AMSAccountMediaTypeAppStoreSandbox;
      }

      v14 = [ACAccountStore ams_sharedAccountStoreForMediaType:*v13];
      v15 = [v14 ams_activeiTunesAccount];

      v16 = +[AMSDelegatePurchaseTask bagSubProfile];
      v17 = +[AMSDelegatePurchaseTask bagSubProfileVersion];
      v18 = [AMSBag bagForProfile:v16 profileVersion:v17];

      v19 = [[AMSDelegatePurchaseTask alloc] initWithDelegatePurchaseRequest:v7 bag:v18 account:v15];
      v20 = [v19 performDelegatePurchase];
      [v20 addFinishBlock:v8];
    }

    else
    {
      v22 = cps_service_log();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        sub_1000650C4();
      }

      v15 = [NSError errorWithDomain:CPSErrorDomain code:101 userInfo:0];
      v8[2](v8, 0, v15);
    }
  }

  else
  {
    v21 = cps_service_log();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      sub_100065084();
    }

    v15 = [NSError errorWithDomain:CPSErrorDomain code:103 userInfo:0];
    v8[2](v8, 0, v15);
  }

  os_activity_scope_leave(&v23);
}

- (void)authenticationSessionPresentShieldWithStyle:(int64_t)a3 device:(id)a4
{
  v6 = a4;
  v7 = [[CDServiceClient alloc] initWithConnection:self->_connection];
  if ([(CDServiceClient *)v7 shouldReceiveDeviceEvents])
  {
    v12.opaque[0] = 0;
    v12.opaque[1] = 0;
    v8 = _os_activity_create(&_mh_execute_header, "send present shield event", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v8, &v12);

    v9 = cps_service_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [(CDServiceClient *)v7 bundleIdentifier:v12.opaque[0]];
      *buf = 138412546;
      v14 = v10;
      v15 = 2112;
      v16 = v6;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Sending present shield event to client. client=%@, device=%@", buf, 0x16u);
    }

    v11 = [(NSXPCConnection *)self->_connection remoteObjectProxyWithErrorHandler:&stru_10008A840];
    [v11 authenticationSessionPresentShieldWithStyle:a3 device:v6];

    os_activity_scope_leave(&v12);
  }
}

- (void)authenticationSessionDeviceTappedNotification:(id)a3
{
  v4 = a3;
  v5 = [[CDServiceClient alloc] initWithConnection:self->_connection];
  if ([(CDServiceClient *)v5 shouldReceiveDeviceEvents])
  {
    v10.opaque[0] = 0;
    v10.opaque[1] = 0;
    v6 = _os_activity_create(&_mh_execute_header, "send device accepted notification event", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v6, &v10);

    v7 = cps_service_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [(CDServiceClient *)v5 bundleIdentifier:v10.opaque[0]];
      *buf = 138412546;
      v12 = v8;
      v13 = 2112;
      v14 = v4;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Sending device accepted notification event to client. client=%@, device=%@", buf, 0x16u);
    }

    v9 = [(NSXPCConnection *)self->_connection remoteObjectProxyWithErrorHandler:&stru_10008A860];
    [v9 authenticationSessionDeviceTappedNotification:v4];

    os_activity_scope_leave(&v10);
  }
}

- (void)authenticationSessionDeviceStartedAuthentication:(id)a3
{
  v4 = a3;
  v5 = [[CDServiceClient alloc] initWithConnection:self->_connection];
  if ([(CDServiceClient *)v5 shouldReceiveDeviceEvents])
  {
    v10.opaque[0] = 0;
    v10.opaque[1] = 0;
    v6 = _os_activity_create(&_mh_execute_header, "send device started authentication event", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v6, &v10);

    v7 = cps_service_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [(CDServiceClient *)v5 bundleIdentifier:v10.opaque[0]];
      *buf = 138412546;
      v12 = v8;
      v13 = 2112;
      v14 = v4;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Sending device accepted notification event to client. client=%@, device=%@", buf, 0x16u);
    }

    v9 = [(NSXPCConnection *)self->_connection remoteObjectProxyWithErrorHandler:&stru_10008A880];
    [v9 authenticationSessionDeviceStartedAuthentication:v4];

    os_activity_scope_leave(&v10);
  }
}

- (void)authenticationSessionDidFinishWithResponse:(id)a3
{
  connection = self->_connection;
  v4 = a3;
  v5 = [(NSXPCConnection *)connection remoteObjectProxy];
  [v5 authenticationSessionDidFinishWithResponse:v4];
}

- (void)authenticationSessionDidFailWithError:(id)a3
{
  connection = self->_connection;
  v4 = a3;
  v5 = [(NSXPCConnection *)connection remoteObjectProxy];
  [v5 authenticationSessionDidFailWithError:v4];
}

- (CDServiceConnectionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end