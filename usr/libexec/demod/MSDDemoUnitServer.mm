@interface MSDDemoUnitServer
- (MSDDemoUnitServer)init;
- (id)taskInfoFromCommandRequest:(id)request;
- (void)checkIn:(id)in;
- (void)findMyHub:(id)hub;
- (void)markAsNotDemo:(id)demo;
- (void)storeSearch:(id)search;
@end

@implementation MSDDemoUnitServer

- (MSDDemoUnitServer)init
{
  v6.receiver = self;
  v6.super_class = MSDDemoUnitServer;
  v2 = [(MSDDemoUnitServer *)&v6 init];
  if (v2)
  {
    v3 = [(MSDSession *)[MSDFMHSession alloc] initWithCellularAccess:1];
    [(MSDServer *)v2 setSession:v3];

    [(MSDDemoUnitServer *)v2 setHmacKey:@"5ff0cc558c0b18b1563e6f53591cf2ee7d18f0cc66c1b76696885f10b42b9b2df1"];
    v4 = v2;
  }

  return v2;
}

- (void)findMyHub:(id)hub
{
  hubCopy = hub;
  [hubCopy logicSync];
  getUrl = [hubCopy getUrl];
  [(MSDServer *)self sendRequest:hubCopy toEndpoint:getUrl postData:1 maxRetry:3];
}

- (void)checkIn:(id)in
{
  inCopy = in;
  getUrl = [inCopy getUrl];
  [(MSDServer *)self sendRequest:inCopy toEndpoint:getUrl postData:1 maxRetry:3];
}

- (void)markAsNotDemo:(id)demo
{
  demoCopy = demo;
  getUrl = [demoCopy getUrl];
  [(MSDServer *)self sendRequest:demoCopy toEndpoint:getUrl postData:1 maxRetry:3];
}

- (void)storeSearch:(id)search
{
  searchCopy = search;
  getUrl = [searchCopy getUrl];
  [(MSDServer *)self sendQueryForRequest:searchCopy toPath:getUrl maxRetry:3];
}

- (id)taskInfoFromCommandRequest:(id)request
{
  requestCopy = request;
  v5 = objc_alloc_init(MSDFMHSessionTaskInfo);
  server = [requestCopy server];
  [(MSDHubSessionTaskInfo *)v5 setServer:server];

  port = [requestCopy port];
  [(MSDHubSessionTaskInfo *)v5 setPort:port];

  hmacKey = [(MSDDemoUnitServer *)self hmacKey];
  [(MSDHubSessionTaskInfo *)v5 setHmacKey:hmacKey];

  deviceUDID = [requestCopy deviceUDID];
  [(MSDHubSessionTaskInfo *)v5 setDeviceUDID:deviceUDID];

  -[MSDFMHSessionTaskInfo setUseBAAAuthentication:](v5, "setUseBAAAuthentication:", [requestCopy useBAAAuthentication]);
  urlOverride = [requestCopy urlOverride];

  [(MSDFMHSessionTaskInfo *)v5 setFmhURLOverride:urlOverride];

  return v5;
}

@end