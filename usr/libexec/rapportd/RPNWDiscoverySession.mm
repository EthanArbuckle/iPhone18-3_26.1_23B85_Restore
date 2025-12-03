@interface RPNWDiscoverySession
- (RPNWDiscoverySession)init;
- (id)description;
- (void)addMappingForDevice:(id)device endpointID:(id)d;
- (void)dealloc;
- (void)removeAllDevices;
- (void)removeDevice:(id)device;
- (void)stopDiscovery;
- (void)updateClientBrowseResult;
- (void)updateMappingForDevice:(id)device;
@end

@implementation RPNWDiscoverySession

- (void)updateClientBrowseResult
{
  browseResponse = self->_browseResponse;
  browseClient = self->_browseClient;
  browseToken = [(RPNWAgentClient *)self->_browseAgentClient browseToken];
  [RPNWEndpoint updateClientBrowseResult:browseClient browseResponse:browseResponse token:browseToken agentUUID:self->_agentUUID agentClientID:self->_agentClientID agentClientPID:self->_pid applicationService:self->_applicationService discoverySessionID:self->_discoverySessionID predicate:self->_predicate];
}

- (RPNWDiscoverySession)init
{
  v7.receiver = self;
  v7.super_class = RPNWDiscoverySession;
  v2 = [(RPNWDiscoverySession *)&v7 init];
  if (v2)
  {
    v3 = +[NSUUID UUID];
    discoverySessionID = v2->_discoverySessionID;
    v2->_discoverySessionID = v3;

    v5 = v2;
  }

  return v2;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = RPNWDiscoverySession;
  [(RPNWDiscoverySession *)&v2 dealloc];
}

- (id)description
{
  v3 = objc_alloc_init(NSMutableString);
  [v3 appendFormat:@"  RPNWDiscoverySession[%p] id=%@\n", self, self->_discoverySessionID];
  v4 = [RPNWEndpoint listEndpointsForDiscoverySession:self->_discoverySessionID];
  [v3 appendString:v4];

  return v3;
}

- (void)addMappingForDevice:(id)device endpointID:(id)d
{
  if ([RPNWEndpoint addEndpointMapping:device endpointID:d applicationService:self->_applicationService discoverySessionID:self->_discoverySessionID shouldAutomapListener:1])
  {

    [(RPNWDiscoverySession *)self updateClientBrowseResult];
  }
}

- (void)updateMappingForDevice:(id)device
{
  if ([RPNWEndpoint updateEndpointMapping:device discoverySessionID:self->_discoverySessionID])
  {

    [(RPNWDiscoverySession *)self updateClientBrowseResult];
  }
}

- (void)removeDevice:(id)device
{
  if ([RPNWEndpoint removeEndpointMapping:device discoverySessionID:self->_discoverySessionID immediate:1])
  {

    [(RPNWDiscoverySession *)self updateClientBrowseResult];
  }
}

- (void)removeAllDevices
{
  if (self->_discoverySessionID)
  {
    if (dword_1001D45C8 <= 30 && (dword_1001D45C8 != -1 || _LogCategory_Initialize()))
    {
      sub_10011FB0C(&self->super.isa);
    }

    [RPNWEndpoint removeDiscoverySession:self->_discoverySessionID];
    discoverySessionID = self->_discoverySessionID;
    self->_discoverySessionID = 0;
  }
}

- (void)stopDiscovery
{
  if (self->_discoveryClient)
  {
    if (dword_1001D45C8 <= 30 && (dword_1001D45C8 != -1 || _LogCategory_Initialize()))
    {
      sub_10011FCB8(&self->super.isa);
    }

    [(RPNWPeer *)self->_discoveryClient stopDiscovery];
    discoveryClient = self->_discoveryClient;
    self->_discoveryClient = 0;
  }

  v4 = +[_TtC8rapportd27RPApplicationServiceMonitor shared];
  uUIDString = [(NSUUID *)self->_discoverySessionID UUIDString];
  [v4 deregisterForNotificationsWithIdentifier:uUIDString];

  [(RPNWDiscoverySession *)self removeAllDevices];
}

@end