@interface DMDConfigurationSourceTaskOperation
- (DMDConfigurationSourceController)controller;
- (DMDConfigurationSourceTaskOperation)initWithController:(id)controller;
- (void)_tryConnectingToNamedService:(BOOL)service completion:(id)completion;
- (void)dealloc;
- (void)fetchRemoteProxy:(id)proxy;
@end

@implementation DMDConfigurationSourceTaskOperation

- (DMDConfigurationSourceTaskOperation)initWithController:(id)controller
{
  controllerCopy = controller;
  v14.receiver = self;
  v14.super_class = DMDConfigurationSourceTaskOperation;
  v5 = [(DMDConfigurationSourceTaskOperation *)&v14 init];
  if (v5)
  {
    source = [controllerCopy source];
    listenerEndpoint = [source listenerEndpoint];
    anonymousEndpoint = v5->_anonymousEndpoint;
    v5->_anonymousEndpoint = listenerEndpoint;

    source2 = [controllerCopy source];
    machServiceName = [source2 machServiceName];
    v11 = [machServiceName copy];
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

- (void)fetchRemoteProxy:(id)proxy
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100031A5C;
  v4[3] = &unk_1000CECD0;
  selfCopy = self;
  proxyCopy = proxy;
  v3 = proxyCopy;
  [(DMDConfigurationSourceTaskOperation *)selfCopy _tryConnectingToNamedService:0 completion:v4];
}

- (void)_tryConnectingToNamedService:(BOOL)service completion:(id)completion
{
  serviceCopy = service;
  completionCopy = completion;
  if (serviceCopy)
  {
    machServiceName = [(DMDConfigurationSourceTaskOperation *)self machServiceName];
    if (machServiceName)
    {
      v8 = [NSXPCConnection alloc];
      machServiceName2 = [(DMDConfigurationSourceTaskOperation *)self machServiceName];
      v10 = [v8 initWithMachServiceName:machServiceName2 options:0];
LABEL_6:
      v12 = v10;
      [(DMDConfigurationSourceTaskOperation *)self setConnection:v10];

      goto LABEL_8;
    }
  }

  else
  {
    machServiceName = [(DMDConfigurationSourceTaskOperation *)self anonymousEndpoint];
    if (machServiceName)
    {
      v11 = [NSXPCConnection alloc];
      machServiceName2 = [(DMDConfigurationSourceTaskOperation *)self anonymousEndpoint];
      v10 = [v11 initWithListenerEndpoint:machServiceName2];
      goto LABEL_6;
    }
  }

  [(DMDConfigurationSourceTaskOperation *)self setConnection:0];
LABEL_8:

  connection = [(DMDConfigurationSourceTaskOperation *)self connection];

  if (connection)
  {
    v14 = DMFConfigurationSourceClientXPCInterface();
    connection2 = [(DMDConfigurationSourceTaskOperation *)self connection];
    [connection2 setRemoteObjectInterface:v14];

    connection3 = [(DMDConfigurationSourceTaskOperation *)self connection];
    [connection3 resume];

    v29 = 0;
    v30 = &v29;
    v31 = 0x3032000000;
    v32 = sub_100031F90;
    v33 = sub_100031FA0;
    v34 = 0;
    connection4 = [(DMDConfigurationSourceTaskOperation *)self connection];
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_100031FA8;
    v26[3] = &unk_1000CECF8;
    v18 = completionCopy;
    v27 = v18;
    v28 = &v29;
    v19 = [connection4 remoteObjectProxyWithErrorHandler:v26];
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
    (*(completionCopy + 2))(completionCopy, 0, v22);
  }
}

- (DMDConfigurationSourceController)controller
{
  WeakRetained = objc_loadWeakRetained(&self->_controller);

  return WeakRetained;
}

@end