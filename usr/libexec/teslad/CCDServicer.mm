@interface CCDServicer
- (CCDServicer)initWithXPCConnection:(id)a3 server:(id)a4;
- (void)dealloc;
- (void)fetchConfigurationWithCompletionBlock:(id)a3;
- (void)fetchConfigurationWithoutValidationWithCompletionBlock:(id)a3;
- (void)makeEndMDMMigrationRequestWithServerUID:(id)a3 status:(id)a4 completionBlock:(id)a5;
- (void)makeStartMDMMigrationRequestWithCompletionBlock:(id)a3;
- (void)pingWithCompletionBlock:(id)a3;
- (void)provisionallyEnrollWithNonce:(id)a3 completionBlock:(id)a4;
- (void)retrieveDeviceUploadOrganizationsWithCredentials:(id)a3 completionBlock:(id)a4;
- (void)retrieveDeviceUploadRequestTypesWithCredentials:(id)a3 completionBlock:(id)a4;
- (void)retrieveDeviceUploadSoldToIdsForOrganization:(id)a3 credentials:(id)a4 completionBlock:(id)a5;
- (void)submitDeviceUploadRequest:(id)a3 credentials:(id)a4 completionBlock:(id)a5;
- (void)unenrollWithCompletionBlock:(id)a3;
@end

@implementation CCDServicer

- (CCDServicer)initWithXPCConnection:(id)a3 server:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = CCDServicer;
  v9 = [(CCDServicer *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_xpcConnection, a3);
    objc_storeStrong(&v10->_server, a4);
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

- (void)provisionallyEnrollWithNonce:(id)a3 completionBlock:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(CCDServicer *)self server];
  [v8 provisionallyEnrollWithNonce:v7 completionBlock:v6];
}

- (void)fetchConfigurationWithCompletionBlock:(id)a3
{
  v4 = a3;
  v5 = [(CCDServicer *)self server];
  [v5 fetchConfigurationWithCompletionBlock:v4];
}

- (void)fetchConfigurationWithoutValidationWithCompletionBlock:(id)a3
{
  v4 = a3;
  v5 = [(CCDServicer *)self server];
  [v5 fetchConfigurationWithoutValidationWithCompletionBlock:v4];
}

- (void)unenrollWithCompletionBlock:(id)a3
{
  v4 = a3;
  v5 = [(CCDServicer *)self server];
  [v5 unenrollWithCompletionBlock:v4];
}

- (void)retrieveDeviceUploadOrganizationsWithCredentials:(id)a3 completionBlock:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(CCDServicer *)self server];
  [v8 retrieveDeviceUploadOrganizationsWithCredentials:v7 completionBlock:v6];
}

- (void)retrieveDeviceUploadRequestTypesWithCredentials:(id)a3 completionBlock:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(CCDServicer *)self server];
  [v8 retrieveDeviceUploadRequestTypesWithCredentials:v7 completionBlock:v6];
}

- (void)retrieveDeviceUploadSoldToIdsForOrganization:(id)a3 credentials:(id)a4 completionBlock:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(CCDServicer *)self server];
  [v11 retrieveDeviceUploadSoldToIdsForOrganization:v10 credentials:v9 completionBlock:v8];
}

- (void)submitDeviceUploadRequest:(id)a3 credentials:(id)a4 completionBlock:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(CCDServicer *)self server];
  [v11 submitDeviceUploadRequest:v10 credentials:v9 completionBlock:v8];
}

- (void)makeStartMDMMigrationRequestWithCompletionBlock:(id)a3
{
  v4 = a3;
  if ((+[DMCFeatureFlags isMDMMigrationEnabled]& 1) != 0)
  {
    v6 = [(CCDServicer *)self server];
    [v6 makeStartMDMMigrationRequestWithCompletionBlock:v4];
  }

  else
  {
    v5 = *(DEPLogObjects() + 8);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "MDMMigration feature flag is not enabled. Return...", buf, 2u);
    }

    (*(v4 + 2))(v4, 0, 0, 0);
  }
}

- (void)makeEndMDMMigrationRequestWithServerUID:(id)a3 status:(id)a4 completionBlock:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ((+[DMCFeatureFlags isMDMMigrationEnabled]& 1) != 0)
  {
    v11 = [(CCDServicer *)self server];
    [v11 makeEndMDMMigrationRequestWithServerUID:v8 status:v9 completionBlock:v10];
  }

  else
  {
    v12 = *(DEPLogObjects() + 8);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "MDMMigration feature flag is not enabled. Return...", v13, 2u);
    }

    (*(v10 + 2))(v10, 0, 0, 0);
  }
}

- (void)pingWithCompletionBlock:(id)a3
{
  v4 = a3;
  v5 = [(CCDServicer *)self server];
  [v5 pingWithCompletionBlock:v4];
}

@end