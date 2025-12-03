@interface RPNWNearbyInvitationDiscoverySession
- (RPNWNearbyInvitationDiscoverySession)init;
- (id)description;
- (void)addMappingForDevice:(id)device endpointID:(id)d;
- (void)dealloc;
- (void)removeAllDevices;
- (void)removeDevice:(id)device;
- (void)startDiscovery;
- (void)stopDiscovery;
- (void)updateMappingForDevice:(id)device;
@end

@implementation RPNWNearbyInvitationDiscoverySession

- (RPNWNearbyInvitationDiscoverySession)init
{
  v7.receiver = self;
  v7.super_class = RPNWNearbyInvitationDiscoverySession;
  v2 = [(RPNWNearbyInvitationDiscoverySession *)&v7 init];
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
  v2.super_class = RPNWNearbyInvitationDiscoverySession;
  [(RPNWNearbyInvitationDiscoverySession *)&v2 dealloc];
}

- (id)description
{
  v3 = objc_alloc_init(NSMutableString);
  [v3 appendFormat:@"  RPNWNearbyInvitationDiscoverySession[%p] id=%@\n", self, self->_discoverySessionID];
  v4 = [RPNWNearbyInvitationEndpoint listEndpointsForDiscoverySession:self->_discoverySessionID];
  [v3 appendString:v4];

  return v3;
}

- (void)addMappingForDevice:(id)device endpointID:(id)d
{
  if ([RPNWNearbyInvitationEndpoint addEndpointMapping:device endpointID:d applicationService:self->_applicationService discoverySessionID:self->_discoverySessionID])
  {

    [(RPNWNearbyInvitationDiscoverySession *)self updateClientBrowseResult];
  }
}

- (void)updateMappingForDevice:(id)device
{
  if ([RPNWNearbyInvitationEndpoint updateEndpointMapping:device discoverySessionID:self->_discoverySessionID])
  {

    [(RPNWNearbyInvitationDiscoverySession *)self updateClientBrowseResult];
  }
}

- (void)removeDevice:(id)device
{
  if ([RPNWNearbyInvitationEndpoint removeEndpointMapping:device discoverySessionID:self->_discoverySessionID])
  {

    [(RPNWNearbyInvitationDiscoverySession *)self updateClientBrowseResult];
  }
}

- (void)removeAllDevices
{
  if (self->_discoverySessionID)
  {
    if (dword_1001D3B70 <= 30 && (dword_1001D3B70 != -1 || _LogCategory_Initialize()))
    {
      sub_100118B94(self);
    }

    [RPNWNearbyInvitationEndpoint removeDiscoverySessionFromAllEndpoints:self->_discoverySessionID];
    discoverySessionID = self->_discoverySessionID;
    self->_discoverySessionID = 0;
  }
}

- (void)startDiscovery
{
  if (self->_discoveryClient)
  {
    if (dword_1001D3B70 <= 90 && (dword_1001D3B70 != -1 || _LogCategory_Initialize()))
    {
      sub_100118C20();
    }
  }

  else
  {
    v3 = objc_alloc_init(RPNWNearbyInvitationPeer);
    discoveryClient = self->_discoveryClient;
    self->_discoveryClient = v3;

    v5 = self->_discoveryClient;
    applicationService = self->_applicationService;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10005AB30;
    v10[3] = &unk_1001ACA00;
    v10[4] = self;
    v8[4] = self;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10005ABA4;
    v9[3] = &unk_1001ACA00;
    v9[4] = self;
    v7[4] = self;
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_10005ABB0;
    v8[3] = &unk_1001ACA00;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_10005ABBC;
    v7[3] = &unk_1001AA970;
    [(RPNWNearbyInvitationPeer *)v5 startDiscovery:applicationService foundHandler:v10 updateHandler:v9 lostHandler:v8 invalidationHandler:v7];
  }
}

- (void)stopDiscovery
{
  if (self->_discoveryClient)
  {
    if (dword_1001D3B70 <= 30 && (dword_1001D3B70 != -1 || _LogCategory_Initialize()))
    {
      sub_100118C40(self);
    }

    [(RPNWNearbyInvitationPeer *)self->_discoveryClient stopDiscovery];
    discoveryClient = self->_discoveryClient;
    self->_discoveryClient = 0;
  }

  [(RPNWNearbyInvitationDiscoverySession *)self removeAllDevices];
}

@end