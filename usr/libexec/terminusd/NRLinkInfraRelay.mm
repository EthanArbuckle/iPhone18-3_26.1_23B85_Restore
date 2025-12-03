@interface NRLinkInfraRelay
- (id)initLinkWithQueue:(id)queue linkDelegate:(id)delegate nrUUID:(id)d wifiInterfaceName:(id)name localOuterEndpoint:(id)endpoint remoteOuterEndpoint:(id)outerEndpoint listenerPortString:(id)string;
- (unsigned)metric;
@end

@implementation NRLinkInfraRelay

- (unsigned)metric
{
  v3.receiver = self;
  v3.super_class = NRLinkInfraRelay;
  return [(NRLinkWiFi *)&v3 metric]+ 18;
}

- (id)initLinkWithQueue:(id)queue linkDelegate:(id)delegate nrUUID:(id)d wifiInterfaceName:(id)name localOuterEndpoint:(id)endpoint remoteOuterEndpoint:(id)outerEndpoint listenerPortString:(id)string
{
  v11.receiver = self;
  v11.super_class = NRLinkInfraRelay;
  v9 = [(NRLinkWiFi *)&v11 initLinkWithQueue:queue linkDelegate:delegate nrUUID:d wifiInterfaceName:name localOuterEndpoint:endpoint remoteOuterEndpoint:outerEndpoint listenerPortString:string];
  [v9 setSubtype:104];
  return v9;
}

@end