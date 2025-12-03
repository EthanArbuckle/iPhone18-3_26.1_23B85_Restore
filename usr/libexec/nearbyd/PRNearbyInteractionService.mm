@interface PRNearbyInteractionService
+ (id)serviceWithQueue:(id)queue;
- (BOOL)shouldAcceptNewConnection:(id)connection;
- (NSArray)machServicesNames;
- (PRNearbyInteractionService)initWithQueue:(id)queue;
@end

@implementation PRNearbyInteractionService

- (PRNearbyInteractionService)initWithQueue:(id)queue
{
  queueCopy = queue;
  if (!queueCopy)
  {
    v11 = +[NSAssertionHandler currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"PRNearbyInteractionService.mm" lineNumber:26 description:{@"Invalid parameter not satisfying: %@", @"queue"}];
  }

  v12.receiver = self;
  v12.super_class = PRNearbyInteractionService;
  v6 = [(PRNearbyInteractionService *)&v12 init];
  if (v6)
  {
    v7 = [[NIServerSessionManager alloc] initWithQueue:queueCopy];
    sessionManager = v6->_sessionManager;
    v6->_sessionManager = v7;

    v9 = +[NSUserDefaults standardUserDefaults];
    if ([v9 BOOLForKey:@"NISessionEnableInternalObserver"])
    {
      [(NIServerSessionManager *)v6->_sessionManager enableInternalObserverSession];
    }
  }

  return v6;
}

+ (id)serviceWithQueue:(id)queue
{
  queueCopy = queue;
  v4 = [[PRNearbyInteractionService alloc] initWithQueue:queueCopy];

  return v4;
}

- (NSArray)machServicesNames
{
  v4[0] = @"com.apple.nearbyd.xpc.nearbyinteraction";
  v4[1] = @"com.apple.nearbyd.xpc.nearbyinteraction.observer";
  v2 = [NSArray arrayWithObjects:v4 count:2];

  return v2;
}

- (BOOL)shouldAcceptNewConnection:(id)connection
{
  connectionCopy = connection;
  serviceName = [connectionCopy serviceName];
  v6 = [serviceName isEqualToString:@"com.apple.nearbyd.xpc.nearbyinteraction.observer"];

  LOBYTE(self) = [(NIServerSessionManager *)self->_sessionManager registerSessionWithConnection:connectionCopy observerSession:v6];
  return self;
}

@end