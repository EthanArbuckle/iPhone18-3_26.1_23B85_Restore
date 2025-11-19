@interface _NFXPCSession
- (BOOL)resume;
- (BOOL)suspendWithInfo:(id)a3;
- (NSXPCConnection)connection;
- (id)bundleIdentifier;
- (id)checkSessionAllowed;
- (id)clientName;
- (id)debugDescription;
- (id)powerAssertionIdentifier;
- (int)processIdentifier;
- (void)activateWithToken:(id)a3 completion:(id)a4;
- (void)createHandoffTokenWithCompletion:(id)a3;
- (void)didStartSession:(id)a3;
- (void)endSession:(id)a3;
- (void)handleXPCInvalidation;
- (void)prioritizeSessionWithCompletion:(id)a3;
- (void)releaseObjects;
@end

@implementation _NFXPCSession

- (id)checkSessionAllowed
{
  v6.receiver = self;
  v6.super_class = _NFXPCSession;
  v2 = [(_NFSession *)&v6 checkSessionAllowed];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  return v3;
}

- (void)didStartSession:(id)a3
{
  v8.receiver = self;
  v8.super_class = _NFXPCSession;
  [(_NFSession *)&v8 didStartSession:?];
  if (!a3)
  {
    v5 = +[_NFHardwareManager sharedHardwareManager];
    v6 = [v5 expressModeManager];
    expressModeManager = self->_expressModeManager;
    self->_expressModeManager = v6;
  }
}

- (void)releaseObjects
{
  remoteObject = self->_remoteObject;
  self->_remoteObject = 0;

  v4.receiver = self;
  v4.super_class = _NFXPCSession;
  [(_NFSession *)&v4 releaseObjects];
}

- (BOOL)suspendWithInfo:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = _NFXPCSession;
  v5 = [(_NFSession *)&v8 suspendWithInfo:v4];
  if (v5)
  {
    v6 = [(_NFXPCSession *)self remoteObject];
    [v6 handleSessionSuspended:v4];
  }

  return v5;
}

- (BOOL)resume
{
  v6.receiver = self;
  v6.super_class = _NFXPCSession;
  v3 = [(_NFSession *)&v6 resume];
  if (v3)
  {
    v4 = [(_NFXPCSession *)self remoteObject];
    [v4 handleSessionResumed];
  }

  return v3;
}

- (id)powerAssertionIdentifier
{
  v3 = [(_NFXPCSession *)self clientName];
  v4 = v3;
  if (!v3 || ![(__CFString *)v3 length])
  {

    v4 = @"unavailable";
  }

  v5 = [NSString alloc];
  v6 = [(_NFXPCSession *)self processIdentifier];
  ClassName = object_getClassName(self);
  v10.receiver = self;
  v10.super_class = _NFXPCSession;
  v8 = [v5 initWithFormat:@"process:%@, pid:%d, %s, sessionID:%d", v4, v6, ClassName, -[_NFSession sessionID](&v10, "sessionID")];

  return v8;
}

- (id)clientName
{
  v3 = [(_NFXPCSession *)self connection];

  if (!v3 || (-[_NFXPCSession connection](self, "connection"), v4 = objc_claimAutoreleasedReturnValue(), [v4 NF_clientName], v5 = objc_claimAutoreleasedReturnValue(), v4, !v5))
  {
    v5 = &stru_10031EA18;
  }

  return v5;
}

- (id)debugDescription
{
  v3 = [NSString alloc];
  v4 = [(_NFSession *)self sessionUID];
  v5 = [(_NFXPCSession *)self clientName];
  v6 = [v3 initWithFormat:@"%@, %@", v4, v5];

  return v6;
}

- (int)processIdentifier
{
  v2 = [(_NFXPCSession *)self connection];
  v3 = [v2 processIdentifier];

  return v3;
}

- (id)bundleIdentifier
{
  v3 = [(_NFXPCSession *)self connection];

  if (v3)
  {
    WeakRetained = objc_loadWeakRetained(&self->_connection);
    v5 = [WeakRetained NF_userInfo];
    v6 = [v5 objectForKeyedSubscript:@"BundleIdentifier"];

    if (v6)
    {
      v7 = v6;
    }

    else
    {
      v7 = objc_opt_new();
    }

    v8 = v7;
  }

  else
  {
    v8 = objc_opt_new();
  }

  return v8;
}

- (void)handleXPCInvalidation
{
  obj = self;
  objc_sync_enter(obj);
  [(_NFSession *)obj _internalEndSessionWithDequeue:0 completion:0];
  objc_sync_exit(obj);
}

- (void)endSession:(id)a3
{
  v3.receiver = self;
  v3.super_class = _NFXPCSession;
  [(_NFSession *)&v3 endSession:a3];
}

- (void)prioritizeSessionWithCompletion:(id)a3
{
  v3.receiver = self;
  v3.super_class = _NFXPCSession;
  [(_NFSession *)&v3 prioritizeSessionWithCompletion:a3];
}

- (void)activateWithToken:(id)a3 completion:(id)a4
{
  v4.receiver = self;
  v4.super_class = _NFXPCSession;
  [(_NFSession *)&v4 activateWithToken:a3 completion:a4];
}

- (void)createHandoffTokenWithCompletion:(id)a3
{
  v3.receiver = self;
  v3.super_class = _NFXPCSession;
  [(_NFSession *)&v3 createHandoffTokenWithCompletion:a3];
}

- (NSXPCConnection)connection
{
  WeakRetained = objc_loadWeakRetained(&self->_connection);

  return WeakRetained;
}

@end