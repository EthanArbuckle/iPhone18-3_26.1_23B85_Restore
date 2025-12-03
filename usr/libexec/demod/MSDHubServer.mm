@interface MSDHubServer
- (id)taskInfoFromCommandRequest:(id)request;
- (void)ack:(id)ack;
- (void)closeConnection;
- (void)downloadIPACachingHub:(id)hub;
- (void)downloadIPAPreCachingHub:(id)hub;
- (void)downloadManifest:(id)manifest;
- (void)enroll:(id)enroll;
- (void)getAccountSettings:(id)settings;
- (void)getContinuitySettings:(id)settings;
- (void)getFileDownloadCredential:(id)credential;
- (void)handleKVStore:(id)store;
- (void)isEnrolled:(id)enrolled;
- (void)ping:(id)ping;
- (void)reportDone:(id)done;
- (void)reportError:(id)error;
- (void)unenroll:(id)unenroll;
@end

@implementation MSDHubServer

- (void)closeConnection
{
  session = [(MSDServer *)self session];
  [session invalidate];
}

- (void)enroll:(id)enroll
{
  enrollCopy = enroll;
  v5 = sub_100063A54();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "[MSDHubServer enroll:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s is called", &v6, 0xCu);
  }

  [(MSDHubServer *)self setHmacKey:@"hLw5ZITZVjvdLVwAaitNnOsFhl3rDVAtRmKXQuYfxGSJ0n65eotJ569TOz97xmD3s6"];
  [(MSDServer *)self sendRequest:enrollCopy toEndpoint:@"/Register" postData:1 maxRetry:2];
}

- (void)isEnrolled:(id)enrolled
{
  enrolledCopy = enrolled;
  v5 = sub_100063A54();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "[MSDHubServer isEnrolled:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s is called", &v6, 0xCu);
  }

  [(MSDServer *)self sendRequest:enrolledCopy toEndpoint:@"/AuthCheck" postData:0 maxRetry:2];
}

- (void)unenroll:(id)unenroll
{
  unenrollCopy = unenroll;
  v5 = sub_100063A54();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "[MSDHubServer unenroll:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s is called", &v6, 0xCu);
  }

  [(MSDServer *)self sendRequest:unenrollCopy toEndpoint:@"/Unregister" postData:1 maxRetry:2];
}

- (void)downloadManifest:(id)manifest
{
  manifestCopy = manifest;
  v5 = sub_100063A54();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "[MSDHubServer downloadManifest:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s is called", &v6, 0xCu);
  }

  [(MSDServer *)self sendQueryForRequest:manifestCopy toPath:@"/GetManifest" maxRetry:2];
}

- (void)downloadIPACachingHub:(id)hub
{
  hubCopy = hub;
  v5 = sub_100063A54();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "[MSDHubServer downloadIPACachingHub:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s is called", &v6, 0xCu);
  }

  [(MSDServer *)self sendQueryForRequest:hubCopy toPath:@"/GetIPA" maxRetry:2];
}

- (void)downloadIPAPreCachingHub:(id)hub
{
  hubCopy = hub;
  v5 = sub_100063A54();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "[MSDHubServer downloadIPAPreCachingHub:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s is called", &v6, 0xCu);
  }

  [(MSDServer *)self sendRequest:hubCopy toEndpoint:@"/DownloadIPA" postData:1 maxRetry:3];
}

- (void)getFileDownloadCredential:(id)credential
{
  credentialCopy = credential;
  v5 = sub_100063A54();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "[MSDHubServer getFileDownloadCredential:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s is called", &v6, 0xCu);
  }

  [(MSDServer *)self sendQueryForRequest:credentialCopy toPath:@"/GetFileDownloadCredentials" maxRetry:3];
}

- (void)getAccountSettings:(id)settings
{
  settingsCopy = settings;
  v5 = sub_100063A54();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "[MSDHubServer getAccountSettings:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s is called", &v6, 0xCu);
  }

  [(MSDServer *)self sendRequest:settingsCopy toEndpoint:@"/GetAccountSettings" postData:1 maxRetry:2];
}

- (void)getContinuitySettings:(id)settings
{
  settingsCopy = settings;
  v5 = sub_100063A54();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "[MSDHubServer getContinuitySettings:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s is called", &v6, 0xCu);
  }

  [(MSDServer *)self sendRequest:settingsCopy toEndpoint:@"/GetContinuitySettings" postData:1 maxRetry:2];
}

- (void)reportError:(id)error
{
  errorCopy = error;
  v5 = sub_100063A54();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "[MSDHubServer reportError:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s is called", &v6, 0xCu);
  }

  [(MSDServer *)self sendRequest:errorCopy toEndpoint:@"/Error" postData:1 maxRetry:3];
}

- (void)reportDone:(id)done
{
  doneCopy = done;
  v5 = sub_100063A54();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "[MSDHubServer reportDone:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s is called", &v6, 0xCu);
  }

  [(MSDServer *)self sendRequest:doneCopy toEndpoint:@"/Done" postData:1 maxRetry:3];
}

- (void)ping:(id)ping
{
  pingCopy = ping;
  v5 = sub_100063A54();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "[MSDHubServer ping:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s is called", &v6, 0xCu);
  }

  [(MSDServer *)self sendRequest:pingCopy toEndpoint:@"/Ping" postData:1 maxRetry:2];
}

- (void)ack:(id)ack
{
  ackCopy = ack;
  v5 = sub_100063A54();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "[MSDHubServer ack:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s is called", &v6, 0xCu);
  }

  [(MSDServer *)self sendRequest:ackCopy toEndpoint:@"/Ack" postData:1 maxRetry:2];
}

- (void)handleKVStore:(id)store
{
  storeCopy = store;
  v5 = sub_100063A54();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315138;
    v8 = "[MSDHubServer handleKVStore:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s is called", &v7, 0xCu);
  }

  getEndpoint = [storeCopy getEndpoint];
  -[MSDServer sendRequest:toEndpoint:postData:maxRetry:](self, "sendRequest:toEndpoint:postData:maxRetry:", storeCopy, getEndpoint, [storeCopy isPost], 2);
}

- (id)taskInfoFromCommandRequest:(id)request
{
  requestCopy = request;
  v5 = objc_alloc_init(MSDHubSessionTaskInfo);
  server = [requestCopy server];
  [(MSDHubSessionTaskInfo *)v5 setServer:server];

  port = [requestCopy port];
  [(MSDHubSessionTaskInfo *)v5 setPort:port];

  savePath = [requestCopy savePath];
  [(MSDSessionTaskInfo *)v5 setSavePath:savePath];

  hmacKey = [(MSDHubServer *)self hmacKey];
  [(MSDHubSessionTaskInfo *)v5 setHmacKey:hmacKey];

  deviceUDID = [requestCopy deviceUDID];

  [(MSDHubSessionTaskInfo *)v5 setDeviceUDID:deviceUDID];

  return v5;
}

@end