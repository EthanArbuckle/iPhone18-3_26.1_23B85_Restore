@interface MSDHubServer
- (id)taskInfoFromCommandRequest:(id)a3;
- (void)ack:(id)a3;
- (void)closeConnection;
- (void)downloadIPACachingHub:(id)a3;
- (void)downloadIPAPreCachingHub:(id)a3;
- (void)downloadManifest:(id)a3;
- (void)enroll:(id)a3;
- (void)getAccountSettings:(id)a3;
- (void)getContinuitySettings:(id)a3;
- (void)getFileDownloadCredential:(id)a3;
- (void)handleKVStore:(id)a3;
- (void)isEnrolled:(id)a3;
- (void)ping:(id)a3;
- (void)reportDone:(id)a3;
- (void)reportError:(id)a3;
- (void)unenroll:(id)a3;
@end

@implementation MSDHubServer

- (void)closeConnection
{
  v2 = [(MSDServer *)self session];
  [v2 invalidate];
}

- (void)enroll:(id)a3
{
  v4 = a3;
  v5 = sub_100063A54();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "[MSDHubServer enroll:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s is called", &v6, 0xCu);
  }

  [(MSDHubServer *)self setHmacKey:@"hLw5ZITZVjvdLVwAaitNnOsFhl3rDVAtRmKXQuYfxGSJ0n65eotJ569TOz97xmD3s6"];
  [(MSDServer *)self sendRequest:v4 toEndpoint:@"/Register" postData:1 maxRetry:2];
}

- (void)isEnrolled:(id)a3
{
  v4 = a3;
  v5 = sub_100063A54();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "[MSDHubServer isEnrolled:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s is called", &v6, 0xCu);
  }

  [(MSDServer *)self sendRequest:v4 toEndpoint:@"/AuthCheck" postData:0 maxRetry:2];
}

- (void)unenroll:(id)a3
{
  v4 = a3;
  v5 = sub_100063A54();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "[MSDHubServer unenroll:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s is called", &v6, 0xCu);
  }

  [(MSDServer *)self sendRequest:v4 toEndpoint:@"/Unregister" postData:1 maxRetry:2];
}

- (void)downloadManifest:(id)a3
{
  v4 = a3;
  v5 = sub_100063A54();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "[MSDHubServer downloadManifest:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s is called", &v6, 0xCu);
  }

  [(MSDServer *)self sendQueryForRequest:v4 toPath:@"/GetManifest" maxRetry:2];
}

- (void)downloadIPACachingHub:(id)a3
{
  v4 = a3;
  v5 = sub_100063A54();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "[MSDHubServer downloadIPACachingHub:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s is called", &v6, 0xCu);
  }

  [(MSDServer *)self sendQueryForRequest:v4 toPath:@"/GetIPA" maxRetry:2];
}

- (void)downloadIPAPreCachingHub:(id)a3
{
  v4 = a3;
  v5 = sub_100063A54();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "[MSDHubServer downloadIPAPreCachingHub:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s is called", &v6, 0xCu);
  }

  [(MSDServer *)self sendRequest:v4 toEndpoint:@"/DownloadIPA" postData:1 maxRetry:3];
}

- (void)getFileDownloadCredential:(id)a3
{
  v4 = a3;
  v5 = sub_100063A54();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "[MSDHubServer getFileDownloadCredential:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s is called", &v6, 0xCu);
  }

  [(MSDServer *)self sendQueryForRequest:v4 toPath:@"/GetFileDownloadCredentials" maxRetry:3];
}

- (void)getAccountSettings:(id)a3
{
  v4 = a3;
  v5 = sub_100063A54();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "[MSDHubServer getAccountSettings:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s is called", &v6, 0xCu);
  }

  [(MSDServer *)self sendRequest:v4 toEndpoint:@"/GetAccountSettings" postData:1 maxRetry:2];
}

- (void)getContinuitySettings:(id)a3
{
  v4 = a3;
  v5 = sub_100063A54();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "[MSDHubServer getContinuitySettings:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s is called", &v6, 0xCu);
  }

  [(MSDServer *)self sendRequest:v4 toEndpoint:@"/GetContinuitySettings" postData:1 maxRetry:2];
}

- (void)reportError:(id)a3
{
  v4 = a3;
  v5 = sub_100063A54();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "[MSDHubServer reportError:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s is called", &v6, 0xCu);
  }

  [(MSDServer *)self sendRequest:v4 toEndpoint:@"/Error" postData:1 maxRetry:3];
}

- (void)reportDone:(id)a3
{
  v4 = a3;
  v5 = sub_100063A54();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "[MSDHubServer reportDone:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s is called", &v6, 0xCu);
  }

  [(MSDServer *)self sendRequest:v4 toEndpoint:@"/Done" postData:1 maxRetry:3];
}

- (void)ping:(id)a3
{
  v4 = a3;
  v5 = sub_100063A54();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "[MSDHubServer ping:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s is called", &v6, 0xCu);
  }

  [(MSDServer *)self sendRequest:v4 toEndpoint:@"/Ping" postData:1 maxRetry:2];
}

- (void)ack:(id)a3
{
  v4 = a3;
  v5 = sub_100063A54();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "[MSDHubServer ack:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s is called", &v6, 0xCu);
  }

  [(MSDServer *)self sendRequest:v4 toEndpoint:@"/Ack" postData:1 maxRetry:2];
}

- (void)handleKVStore:(id)a3
{
  v4 = a3;
  v5 = sub_100063A54();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315138;
    v8 = "[MSDHubServer handleKVStore:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s is called", &v7, 0xCu);
  }

  v6 = [v4 getEndpoint];
  -[MSDServer sendRequest:toEndpoint:postData:maxRetry:](self, "sendRequest:toEndpoint:postData:maxRetry:", v4, v6, [v4 isPost], 2);
}

- (id)taskInfoFromCommandRequest:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(MSDHubSessionTaskInfo);
  v6 = [v4 server];
  [(MSDHubSessionTaskInfo *)v5 setServer:v6];

  v7 = [v4 port];
  [(MSDHubSessionTaskInfo *)v5 setPort:v7];

  v8 = [v4 savePath];
  [(MSDSessionTaskInfo *)v5 setSavePath:v8];

  v9 = [(MSDHubServer *)self hmacKey];
  [(MSDHubSessionTaskInfo *)v5 setHmacKey:v9];

  v10 = [v4 deviceUDID];

  [(MSDHubSessionTaskInfo *)v5 setDeviceUDID:v10];

  return v5;
}

@end