@interface PRNearbyInteractionService
+ (id)serviceWithQueue:(id)a3;
- (BOOL)shouldAcceptNewConnection:(id)a3;
- (NSArray)machServicesNames;
- (PRNearbyInteractionService)initWithQueue:(id)a3;
@end

@implementation PRNearbyInteractionService

- (PRNearbyInteractionService)initWithQueue:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v11 = +[NSAssertionHandler currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"PRNearbyInteractionService.mm" lineNumber:26 description:{@"Invalid parameter not satisfying: %@", @"queue"}];
  }

  v12.receiver = self;
  v12.super_class = PRNearbyInteractionService;
  v6 = [(PRNearbyInteractionService *)&v12 init];
  if (v6)
  {
    v7 = [[NIServerSessionManager alloc] initWithQueue:v5];
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

+ (id)serviceWithQueue:(id)a3
{
  v3 = a3;
  v4 = [[PRNearbyInteractionService alloc] initWithQueue:v3];

  return v4;
}

- (NSArray)machServicesNames
{
  v4[0] = @"com.apple.nearbyd.xpc.nearbyinteraction";
  v4[1] = @"com.apple.nearbyd.xpc.nearbyinteraction.observer";
  v2 = [NSArray arrayWithObjects:v4 count:2];

  return v2;
}

- (BOOL)shouldAcceptNewConnection:(id)a3
{
  v4 = a3;
  v5 = [v4 serviceName];
  v6 = [v5 isEqualToString:@"com.apple.nearbyd.xpc.nearbyinteraction.observer"];

  LOBYTE(self) = [(NIServerSessionManager *)self->_sessionManager registerSessionWithConnection:v4 observerSession:v6];
  return self;
}

@end