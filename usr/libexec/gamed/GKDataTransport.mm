@interface GKDataTransport
+ (GKDataTransport)transportWithBag:(id)bag clientProxy:(id)proxy credential:(id)credential;
- (GKDataTransport)initWithBag:(id)bag clientProxy:(id)proxy credential:(id)credential;
- (id)errorForBagError:(id)error serverError:(id)serverError;
- (void)postPreconnectRequest:(id)request forBagKey:(id)key result:(id)result;
- (void)postRequest:(id)request forBagKey:(id)key response:(id)response;
- (void)postRequest:(id)request forBagKey:(id)key result:(id)result;
@end

@implementation GKDataTransport

+ (GKDataTransport)transportWithBag:(id)bag clientProxy:(id)proxy credential:(id)credential
{
  credentialCopy = credential;
  proxyCopy = proxy;
  bagCopy = bag;
  v10 = [[GKDataTransport alloc] initWithBag:bagCopy clientProxy:proxyCopy credential:credentialCopy];

  return v10;
}

- (GKDataTransport)initWithBag:(id)bag clientProxy:(id)proxy credential:(id)credential
{
  bagCopy = bag;
  proxyCopy = proxy;
  credentialCopy = credential;
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
    objc_storeStrong(&v14->_storeBag, bag);
    objc_storeStrong(&v15->_clientProxy, proxy);
    objc_storeStrong(&v15->_credential, credential);
    bundleIdentifier = [proxyCopy bundleIdentifier];
    v17 = [NSString stringWithFormat:@"GKDataTransport - %@", bundleIdentifier];
    v18 = [GKActivity named:v17];
    activity = v15->_activity;
    v15->_activity = v18;
  }

  return v15;
}

- (id)errorForBagError:(id)error serverError:(id)serverError
{
  errorCopy = error;
  serverErrorCopy = serverError;
  v7 = serverErrorCopy;
  if (errorCopy && serverErrorCopy)
  {
    userInfo = [serverErrorCopy userInfo];
    v9 = [userInfo mutableCopy];

    [v9 setObject:errorCopy forKeyedSubscript:NSUnderlyingErrorKey];
    domain = [v7 domain];
    v11 = +[NSError errorWithDomain:code:userInfo:](NSError, "errorWithDomain:code:userInfo:", domain, [v7 code], v9);

    goto LABEL_9;
  }

  if (serverErrorCopy)
  {
    v12 = serverErrorCopy;
LABEL_8:
    v11 = v12;
    goto LABEL_9;
  }

  if (errorCopy)
  {
    v12 = errorCopy;
    goto LABEL_8;
  }

  v11 = 0;
LABEL_9:

  return v11;
}

- (void)postRequest:(id)request forBagKey:(id)key response:(id)response
{
  requestCopy = request;
  keyCopy = key;
  responseCopy = response;
  v11 = self->_clientProxy;
  v12 = self->_credential;
  activity = [(GKDataTransport *)self activity];
  keyCopy = [NSString stringWithFormat:@"postRequest method:%@ bagKey:%@", @"default", keyCopy];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_10011B644;
  v20[3] = &unk_100364590;
  v21 = v11;
  v22 = v12;
  selfCopy = self;
  v24 = keyCopy;
  v25 = requestCopy;
  v26 = responseCopy;
  v15 = responseCopy;
  v16 = requestCopy;
  v17 = keyCopy;
  v18 = v12;
  v19 = v11;
  [activity childNamed:keyCopy execute:v20];
}

- (void)postRequest:(id)request forBagKey:(id)key result:(id)result
{
  requestCopy = request;
  keyCopy = key;
  resultCopy = result;
  v11 = self->_clientProxy;
  v12 = self->_credential;
  v13 = [(GKClientProxy *)v11 appSessionForCredential:v12];
  activity = [(GKDataTransport *)self activity];
  v15 = [NSString stringWithFormat:@"%s:%d %s", "GKDataTransport.m", 104, "[GKDataTransport postRequest:forBagKey:result:]"];
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_10011BAC4;
  v22[3] = &unk_100362030;
  v22[4] = self;
  v23 = keyCopy;
  v24 = requestCopy;
  v25 = v13;
  v26 = v11;
  v27 = v12;
  v28 = resultCopy;
  v16 = resultCopy;
  v17 = v12;
  v18 = v11;
  v19 = v13;
  v20 = requestCopy;
  v21 = keyCopy;
  [activity childNamed:v15 execute:v22];
}

- (void)postPreconnectRequest:(id)request forBagKey:(id)key result:(id)result
{
  requestCopy = request;
  keyCopy = key;
  resultCopy = result;
  v11 = self->_clientProxy;
  v12 = self->_credential;
  v13 = [(GKClientProxy *)v11 appSessionForCredential:v12];
  activity = [(GKDataTransport *)self activity];
  v15 = [NSString stringWithFormat:@"%s:%d %s", "GKDataTransport.m", 124, "[GKDataTransport postPreconnectRequest:forBagKey:result:]"];
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_10011BDCC;
  v22[3] = &unk_100362030;
  v22[4] = self;
  v23 = keyCopy;
  v24 = requestCopy;
  v25 = v13;
  v26 = v11;
  v27 = v12;
  v28 = resultCopy;
  v16 = resultCopy;
  v17 = v12;
  v18 = v11;
  v19 = v13;
  v20 = requestCopy;
  v21 = keyCopy;
  [activity childNamed:v15 execute:v22];
}

@end