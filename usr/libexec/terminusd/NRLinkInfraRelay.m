@interface NRLinkInfraRelay
- (id)initLinkWithQueue:(id)a3 linkDelegate:(id)a4 nrUUID:(id)a5 wifiInterfaceName:(id)a6 localOuterEndpoint:(id)a7 remoteOuterEndpoint:(id)a8 listenerPortString:(id)a9;
- (unsigned)metric;
@end

@implementation NRLinkInfraRelay

- (unsigned)metric
{
  v3.receiver = self;
  v3.super_class = NRLinkInfraRelay;
  return [(NRLinkWiFi *)&v3 metric]+ 18;
}

- (id)initLinkWithQueue:(id)a3 linkDelegate:(id)a4 nrUUID:(id)a5 wifiInterfaceName:(id)a6 localOuterEndpoint:(id)a7 remoteOuterEndpoint:(id)a8 listenerPortString:(id)a9
{
  v11.receiver = self;
  v11.super_class = NRLinkInfraRelay;
  v9 = [(NRLinkWiFi *)&v11 initLinkWithQueue:a3 linkDelegate:a4 nrUUID:a5 wifiInterfaceName:a6 localOuterEndpoint:a7 remoteOuterEndpoint:a8 listenerPortString:a9];
  [v9 setSubtype:104];
  return v9;
}

@end