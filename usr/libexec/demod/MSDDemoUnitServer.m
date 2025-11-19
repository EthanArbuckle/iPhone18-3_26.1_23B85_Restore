@interface MSDDemoUnitServer
- (MSDDemoUnitServer)init;
- (id)taskInfoFromCommandRequest:(id)a3;
- (void)checkIn:(id)a3;
- (void)findMyHub:(id)a3;
- (void)markAsNotDemo:(id)a3;
- (void)storeSearch:(id)a3;
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

- (void)findMyHub:(id)a3
{
  v4 = a3;
  [v4 logicSync];
  v5 = [v4 getUrl];
  [(MSDServer *)self sendRequest:v4 toEndpoint:v5 postData:1 maxRetry:3];
}

- (void)checkIn:(id)a3
{
  v4 = a3;
  v5 = [v4 getUrl];
  [(MSDServer *)self sendRequest:v4 toEndpoint:v5 postData:1 maxRetry:3];
}

- (void)markAsNotDemo:(id)a3
{
  v4 = a3;
  v5 = [v4 getUrl];
  [(MSDServer *)self sendRequest:v4 toEndpoint:v5 postData:1 maxRetry:3];
}

- (void)storeSearch:(id)a3
{
  v4 = a3;
  v5 = [v4 getUrl];
  [(MSDServer *)self sendQueryForRequest:v4 toPath:v5 maxRetry:3];
}

- (id)taskInfoFromCommandRequest:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(MSDFMHSessionTaskInfo);
  v6 = [v4 server];
  [(MSDHubSessionTaskInfo *)v5 setServer:v6];

  v7 = [v4 port];
  [(MSDHubSessionTaskInfo *)v5 setPort:v7];

  v8 = [(MSDDemoUnitServer *)self hmacKey];
  [(MSDHubSessionTaskInfo *)v5 setHmacKey:v8];

  v9 = [v4 deviceUDID];
  [(MSDHubSessionTaskInfo *)v5 setDeviceUDID:v9];

  -[MSDFMHSessionTaskInfo setUseBAAAuthentication:](v5, "setUseBAAAuthentication:", [v4 useBAAAuthentication]);
  v10 = [v4 urlOverride];

  [(MSDFMHSessionTaskInfo *)v5 setFmhURLOverride:v10];

  return v5;
}

@end