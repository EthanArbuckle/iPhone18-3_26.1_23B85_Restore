@interface _NFXPCSession
- (BOOL)resume;
- (BOOL)suspendWithInfo:(id)info;
- (NSXPCConnection)connection;
- (id)bundleIdentifier;
- (id)checkSessionAllowed;
- (id)clientName;
- (id)debugDescription;
- (id)powerAssertionIdentifier;
- (int)processIdentifier;
- (void)activateWithToken:(id)token completion:(id)completion;
- (void)createHandoffTokenWithCompletion:(id)completion;
- (void)didStartSession:(id)session;
- (void)endSession:(id)session;
- (void)handleXPCInvalidation;
- (void)prioritizeSessionWithCompletion:(id)completion;
- (void)releaseObjects;
@end

@implementation _NFXPCSession

- (id)checkSessionAllowed
{
  v6.receiver = self;
  v6.super_class = _NFXPCSession;
  checkSessionAllowed = [(_NFSession *)&v6 checkSessionAllowed];
  v3 = checkSessionAllowed;
  if (checkSessionAllowed)
  {
    v4 = checkSessionAllowed;
  }

  return v3;
}

- (void)didStartSession:(id)session
{
  v8.receiver = self;
  v8.super_class = _NFXPCSession;
  [(_NFSession *)&v8 didStartSession:?];
  if (!session)
  {
    v5 = +[_NFHardwareManager sharedHardwareManager];
    expressModeManager = [v5 expressModeManager];
    expressModeManager = self->_expressModeManager;
    self->_expressModeManager = expressModeManager;
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

- (BOOL)suspendWithInfo:(id)info
{
  infoCopy = info;
  v8.receiver = self;
  v8.super_class = _NFXPCSession;
  v5 = [(_NFSession *)&v8 suspendWithInfo:infoCopy];
  if (v5)
  {
    remoteObject = [(_NFXPCSession *)self remoteObject];
    [remoteObject handleSessionSuspended:infoCopy];
  }

  return v5;
}

- (BOOL)resume
{
  v6.receiver = self;
  v6.super_class = _NFXPCSession;
  resume = [(_NFSession *)&v6 resume];
  if (resume)
  {
    remoteObject = [(_NFXPCSession *)self remoteObject];
    [remoteObject handleSessionResumed];
  }

  return resume;
}

- (id)powerAssertionIdentifier
{
  clientName = [(_NFXPCSession *)self clientName];
  v4 = clientName;
  if (!clientName || ![(__CFString *)clientName length])
  {

    v4 = @"unavailable";
  }

  v5 = [NSString alloc];
  processIdentifier = [(_NFXPCSession *)self processIdentifier];
  ClassName = object_getClassName(self);
  v10.receiver = self;
  v10.super_class = _NFXPCSession;
  v8 = [v5 initWithFormat:@"process:%@, pid:%d, %s, sessionID:%d", v4, processIdentifier, ClassName, -[_NFSession sessionID](&v10, "sessionID")];

  return v8;
}

- (id)clientName
{
  connection = [(_NFXPCSession *)self connection];

  if (!connection || (-[_NFXPCSession connection](self, "connection"), v4 = objc_claimAutoreleasedReturnValue(), [v4 NF_clientName], v5 = objc_claimAutoreleasedReturnValue(), v4, !v5))
  {
    v5 = &stru_10031EA18;
  }

  return v5;
}

- (id)debugDescription
{
  v3 = [NSString alloc];
  sessionUID = [(_NFSession *)self sessionUID];
  clientName = [(_NFXPCSession *)self clientName];
  v6 = [v3 initWithFormat:@"%@, %@", sessionUID, clientName];

  return v6;
}

- (int)processIdentifier
{
  connection = [(_NFXPCSession *)self connection];
  processIdentifier = [connection processIdentifier];

  return processIdentifier;
}

- (id)bundleIdentifier
{
  connection = [(_NFXPCSession *)self connection];

  if (connection)
  {
    WeakRetained = objc_loadWeakRetained(&self->_connection);
    nF_userInfo = [WeakRetained NF_userInfo];
    v6 = [nF_userInfo objectForKeyedSubscript:@"BundleIdentifier"];

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

- (void)endSession:(id)session
{
  v3.receiver = self;
  v3.super_class = _NFXPCSession;
  [(_NFSession *)&v3 endSession:session];
}

- (void)prioritizeSessionWithCompletion:(id)completion
{
  v3.receiver = self;
  v3.super_class = _NFXPCSession;
  [(_NFSession *)&v3 prioritizeSessionWithCompletion:completion];
}

- (void)activateWithToken:(id)token completion:(id)completion
{
  v4.receiver = self;
  v4.super_class = _NFXPCSession;
  [(_NFSession *)&v4 activateWithToken:token completion:completion];
}

- (void)createHandoffTokenWithCompletion:(id)completion
{
  v3.receiver = self;
  v3.super_class = _NFXPCSession;
  [(_NFSession *)&v3 createHandoffTokenWithCompletion:completion];
}

- (NSXPCConnection)connection
{
  WeakRetained = objc_loadWeakRetained(&self->_connection);

  return WeakRetained;
}

@end