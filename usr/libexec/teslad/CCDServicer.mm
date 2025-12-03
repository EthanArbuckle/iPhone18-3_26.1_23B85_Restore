@interface CCDServicer
- (CCDServicer)initWithXPCConnection:(id)connection server:(id)server;
- (void)dealloc;
- (void)fetchConfigurationWithCompletionBlock:(id)block;
- (void)fetchConfigurationWithoutValidationWithCompletionBlock:(id)block;
- (void)makeEndMDMMigrationRequestWithServerUID:(id)d status:(id)status completionBlock:(id)block;
- (void)makeStartMDMMigrationRequestWithCompletionBlock:(id)block;
- (void)pingWithCompletionBlock:(id)block;
- (void)provisionallyEnrollWithNonce:(id)nonce completionBlock:(id)block;
- (void)retrieveDeviceUploadOrganizationsWithCredentials:(id)credentials completionBlock:(id)block;
- (void)retrieveDeviceUploadRequestTypesWithCredentials:(id)credentials completionBlock:(id)block;
- (void)retrieveDeviceUploadSoldToIdsForOrganization:(id)organization credentials:(id)credentials completionBlock:(id)block;
- (void)submitDeviceUploadRequest:(id)request credentials:(id)credentials completionBlock:(id)block;
- (void)unenrollWithCompletionBlock:(id)block;
@end

@implementation CCDServicer

- (CCDServicer)initWithXPCConnection:(id)connection server:(id)server
{
  connectionCopy = connection;
  serverCopy = server;
  v12.receiver = self;
  v12.super_class = CCDServicer;
  v9 = [(CCDServicer *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_xpcConnection, connection);
    objc_storeStrong(&v10->_server, server);
  }

  return v10;
}

- (void)dealloc
{
  [(NSXPCConnection *)self->_xpcConnection invalidate];
  v3.receiver = self;
  v3.super_class = CCDServicer;
  [(CCDServicer *)&v3 dealloc];
}

- (void)provisionallyEnrollWithNonce:(id)nonce completionBlock:(id)block
{
  blockCopy = block;
  nonceCopy = nonce;
  server = [(CCDServicer *)self server];
  [server provisionallyEnrollWithNonce:nonceCopy completionBlock:blockCopy];
}

- (void)fetchConfigurationWithCompletionBlock:(id)block
{
  blockCopy = block;
  server = [(CCDServicer *)self server];
  [server fetchConfigurationWithCompletionBlock:blockCopy];
}

- (void)fetchConfigurationWithoutValidationWithCompletionBlock:(id)block
{
  blockCopy = block;
  server = [(CCDServicer *)self server];
  [server fetchConfigurationWithoutValidationWithCompletionBlock:blockCopy];
}

- (void)unenrollWithCompletionBlock:(id)block
{
  blockCopy = block;
  server = [(CCDServicer *)self server];
  [server unenrollWithCompletionBlock:blockCopy];
}

- (void)retrieveDeviceUploadOrganizationsWithCredentials:(id)credentials completionBlock:(id)block
{
  blockCopy = block;
  credentialsCopy = credentials;
  server = [(CCDServicer *)self server];
  [server retrieveDeviceUploadOrganizationsWithCredentials:credentialsCopy completionBlock:blockCopy];
}

- (void)retrieveDeviceUploadRequestTypesWithCredentials:(id)credentials completionBlock:(id)block
{
  blockCopy = block;
  credentialsCopy = credentials;
  server = [(CCDServicer *)self server];
  [server retrieveDeviceUploadRequestTypesWithCredentials:credentialsCopy completionBlock:blockCopy];
}

- (void)retrieveDeviceUploadSoldToIdsForOrganization:(id)organization credentials:(id)credentials completionBlock:(id)block
{
  blockCopy = block;
  credentialsCopy = credentials;
  organizationCopy = organization;
  server = [(CCDServicer *)self server];
  [server retrieveDeviceUploadSoldToIdsForOrganization:organizationCopy credentials:credentialsCopy completionBlock:blockCopy];
}

- (void)submitDeviceUploadRequest:(id)request credentials:(id)credentials completionBlock:(id)block
{
  blockCopy = block;
  credentialsCopy = credentials;
  requestCopy = request;
  server = [(CCDServicer *)self server];
  [server submitDeviceUploadRequest:requestCopy credentials:credentialsCopy completionBlock:blockCopy];
}

- (void)makeStartMDMMigrationRequestWithCompletionBlock:(id)block
{
  blockCopy = block;
  if ((+[DMCFeatureFlags isMDMMigrationEnabled]& 1) != 0)
  {
    server = [(CCDServicer *)self server];
    [server makeStartMDMMigrationRequestWithCompletionBlock:blockCopy];
  }

  else
  {
    v5 = *(DEPLogObjects() + 8);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "MDMMigration feature flag is not enabled. Return...", buf, 2u);
    }

    (*(blockCopy + 2))(blockCopy, 0, 0, 0);
  }
}

- (void)makeEndMDMMigrationRequestWithServerUID:(id)d status:(id)status completionBlock:(id)block
{
  dCopy = d;
  statusCopy = status;
  blockCopy = block;
  if ((+[DMCFeatureFlags isMDMMigrationEnabled]& 1) != 0)
  {
    server = [(CCDServicer *)self server];
    [server makeEndMDMMigrationRequestWithServerUID:dCopy status:statusCopy completionBlock:blockCopy];
  }

  else
  {
    v12 = *(DEPLogObjects() + 8);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "MDMMigration feature flag is not enabled. Return...", v13, 2u);
    }

    (*(blockCopy + 2))(blockCopy, 0, 0, 0);
  }
}

- (void)pingWithCompletionBlock:(id)block
{
  blockCopy = block;
  server = [(CCDServicer *)self server];
  [server pingWithCompletionBlock:blockCopy];
}

@end