@interface GKDataTransport
+ (GKDataTransport)transportWithBag:(id)a3 clientProxy:(id)a4 credential:(id)a5;
- (GKDataTransport)initWithBag:(id)a3 clientProxy:(id)a4 credential:(id)a5;
- (id)errorForBagError:(id)a3 serverError:(id)a4;
- (void)postPreconnectRequest:(id)a3 forBagKey:(id)a4 result:(id)a5;
- (void)postRequest:(id)a3 forBagKey:(id)a4 response:(id)a5;
- (void)postRequest:(id)a3 forBagKey:(id)a4 result:(id)a5;
@end

@implementation GKDataTransport

+ (GKDataTransport)transportWithBag:(id)a3 clientProxy:(id)a4 credential:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [[GKDataTransport alloc] initWithBag:v9 clientProxy:v8 credential:v7];

  return v10;
}

- (GKDataTransport)initWithBag:(id)a3 clientProxy:(id)a4 credential:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (!os_log_GKGeneral)
  {
    v12 = GKOSLoggers();
  }

  v13 = os_log_GKTrace;
  if (os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "GKDataTransport: initWithBag:", buf, 2u);
  }

  v21.receiver = self;
  v21.super_class = GKDataTransport;
  v14 = [(GKDataTransport *)&v21 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_storeBag, a3);
    objc_storeStrong(&v15->_clientProxy, a4);
    objc_storeStrong(&v15->_credential, a5);
    v16 = [v10 bundleIdentifier];
    v17 = [NSString stringWithFormat:@"GKDataTransport - %@", v16];
    v18 = [GKActivity named:v17];
    activity = v15->_activity;
    v15->_activity = v18;
  }

  return v15;
}

- (id)errorForBagError:(id)a3 serverError:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = v6;
  if (v5 && v6)
  {
    v8 = [v6 userInfo];
    v9 = [v8 mutableCopy];

    [v9 setObject:v5 forKeyedSubscript:NSUnderlyingErrorKey];
    v10 = [v7 domain];
    v11 = +[NSError errorWithDomain:code:userInfo:](NSError, "errorWithDomain:code:userInfo:", v10, [v7 code], v9);

    goto LABEL_9;
  }

  if (v6)
  {
    v12 = v6;
LABEL_8:
    v11 = v12;
    goto LABEL_9;
  }

  if (v5)
  {
    v12 = v5;
    goto LABEL_8;
  }

  v11 = 0;
LABEL_9:

  return v11;
}

- (void)postRequest:(id)a3 forBagKey:(id)a4 response:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = self->_clientProxy;
  v12 = self->_credential;
  v13 = [(GKDataTransport *)self activity];
  v14 = [NSString stringWithFormat:@"postRequest method:%@ bagKey:%@", @"default", v9];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_10011B644;
  v20[3] = &unk_100364590;
  v21 = v11;
  v22 = v12;
  v23 = self;
  v24 = v9;
  v25 = v8;
  v26 = v10;
  v15 = v10;
  v16 = v8;
  v17 = v9;
  v18 = v12;
  v19 = v11;
  [v13 childNamed:v14 execute:v20];
}

- (void)postRequest:(id)a3 forBagKey:(id)a4 result:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = self->_clientProxy;
  v12 = self->_credential;
  v13 = [(GKClientProxy *)v11 appSessionForCredential:v12];
  v14 = [(GKDataTransport *)self activity];
  v15 = [NSString stringWithFormat:@"%s:%d %s", "GKDataTransport.m", 104, "[GKDataTransport postRequest:forBagKey:result:]"];
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_10011BAC4;
  v22[3] = &unk_100362030;
  v22[4] = self;
  v23 = v9;
  v24 = v8;
  v25 = v13;
  v26 = v11;
  v27 = v12;
  v28 = v10;
  v16 = v10;
  v17 = v12;
  v18 = v11;
  v19 = v13;
  v20 = v8;
  v21 = v9;
  [v14 childNamed:v15 execute:v22];
}

- (void)postPreconnectRequest:(id)a3 forBagKey:(id)a4 result:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = self->_clientProxy;
  v12 = self->_credential;
  v13 = [(GKClientProxy *)v11 appSessionForCredential:v12];
  v14 = [(GKDataTransport *)self activity];
  v15 = [NSString stringWithFormat:@"%s:%d %s", "GKDataTransport.m", 124, "[GKDataTransport postPreconnectRequest:forBagKey:result:]"];
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_10011BDCC;
  v22[3] = &unk_100362030;
  v22[4] = self;
  v23 = v9;
  v24 = v8;
  v25 = v13;
  v26 = v11;
  v27 = v12;
  v28 = v10;
  v16 = v10;
  v17 = v12;
  v18 = v11;
  v19 = v13;
  v20 = v8;
  v21 = v9;
  [v14 childNamed:v15 execute:v22];
}

@end