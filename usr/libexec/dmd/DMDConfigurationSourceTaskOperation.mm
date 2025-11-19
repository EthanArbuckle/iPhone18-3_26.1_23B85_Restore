@interface DMDConfigurationSourceTaskOperation
- (DMDConfigurationSourceController)controller;
- (DMDConfigurationSourceTaskOperation)initWithController:(id)a3;
- (void)_tryConnectingToNamedService:(BOOL)a3 completion:(id)a4;
- (void)dealloc;
- (void)fetchRemoteProxy:(id)a3;
@end

@implementation DMDConfigurationSourceTaskOperation

- (DMDConfigurationSourceTaskOperation)initWithController:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = DMDConfigurationSourceTaskOperation;
  v5 = [(DMDConfigurationSourceTaskOperation *)&v14 init];
  if (v5)
  {
    v6 = [v4 source];
    v7 = [v6 listenerEndpoint];
    anonymousEndpoint = v5->_anonymousEndpoint;
    v5->_anonymousEndpoint = v7;

    v9 = [v4 source];
    v10 = [v9 machServiceName];
    v11 = [v10 copy];
    machServiceName = v5->_machServiceName;
    v5->_machServiceName = v11;
  }

  return v5;
}

- (void)dealloc
{
  [(NSXPCConnection *)self->_connection invalidate];
  v3.receiver = self;
  v3.super_class = DMDConfigurationSourceTaskOperation;
  [(DMDConfigurationSourceTaskOperation *)&v3 dealloc];
}

- (void)fetchRemoteProxy:(id)a3
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100031A5C;
  v4[3] = &unk_1000CECD0;
  v5 = self;
  v6 = a3;
  v3 = v6;
  [(DMDConfigurationSourceTaskOperation *)v5 _tryConnectingToNamedService:0 completion:v4];
}

- (void)_tryConnectingToNamedService:(BOOL)a3 completion:(id)a4
{
  v4 = a3;
  v6 = a4;
  if (v4)
  {
    v7 = [(DMDConfigurationSourceTaskOperation *)self machServiceName];
    if (v7)
    {
      v8 = [NSXPCConnection alloc];
      v9 = [(DMDConfigurationSourceTaskOperation *)self machServiceName];
      v10 = [v8 initWithMachServiceName:v9 options:0];
LABEL_6:
      v12 = v10;
      [(DMDConfigurationSourceTaskOperation *)self setConnection:v10];

      goto LABEL_8;
    }
  }

  else
  {
    v7 = [(DMDConfigurationSourceTaskOperation *)self anonymousEndpoint];
    if (v7)
    {
      v11 = [NSXPCConnection alloc];
      v9 = [(DMDConfigurationSourceTaskOperation *)self anonymousEndpoint];
      v10 = [v11 initWithListenerEndpoint:v9];
      goto LABEL_6;
    }
  }

  [(DMDConfigurationSourceTaskOperation *)self setConnection:0];
LABEL_8:

  v13 = [(DMDConfigurationSourceTaskOperation *)self connection];

  if (v13)
  {
    v14 = DMFConfigurationSourceClientXPCInterface();
    v15 = [(DMDConfigurationSourceTaskOperation *)self connection];
    [v15 setRemoteObjectInterface:v14];

    v16 = [(DMDConfigurationSourceTaskOperation *)self connection];
    [v16 resume];

    v29 = 0;
    v30 = &v29;
    v31 = 0x3032000000;
    v32 = sub_100031F90;
    v33 = sub_100031FA0;
    v34 = 0;
    v17 = [(DMDConfigurationSourceTaskOperation *)self connection];
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_100031FA8;
    v26[3] = &unk_1000CECF8;
    v18 = v6;
    v27 = v18;
    v28 = &v29;
    v19 = [v17 remoteObjectProxyWithErrorHandler:v26];
    v20 = v30[5];
    v30[5] = v19;

    v21 = v30[5];
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_100032000;
    v23[3] = &unk_1000CED20;
    v25 = &v29;
    v24 = v18;
    [v21 probe:v23];

    _Block_object_dispose(&v29, 8);
  }

  else
  {
    v22 = [NSError errorWithDomain:NSCocoaErrorDomain code:4099 userInfo:0];
    (*(v6 + 2))(v6, 0, v22);
  }
}

- (DMDConfigurationSourceController)controller
{
  WeakRetained = objc_loadWeakRetained(&self->_controller);

  return WeakRetained;
}

@end