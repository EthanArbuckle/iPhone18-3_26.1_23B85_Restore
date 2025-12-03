@interface CCDServer
- (NSOperationQueue)operationQueue;
- (id)_operationForDeviceUploadRequest:(id)request;
- (id)_operationForEnrollmentRequest:(id)request;
- (id)_requestForDeviceUploadRequestType:(int64_t)type userCredentials:(id)credentials;
- (void)_addOperationToQueue:(id)queue;
- (void)_startProcessForDeviceUploadRequest:(id)request completionBlock:(id)block;
- (void)_startProcessForEnrollmentRequest:(id)request certificateClientNameSuffix:(id)suffix completionBlock:(id)block;
- (void)fetchConfigurationAndActivateAnisetteWithCompletionBlock:(id)block;
- (void)fetchConfigurationWithCompletionBlock:(id)block;
- (void)fetchConfigurationWithoutActivatingAnisetteWithCompletionBlock:(id)block;
- (void)fetchConfigurationWithoutValidationWithCompletionBlock:(id)block;
- (void)makeEndMDMMigrationRequestWithServerUID:(id)d status:(id)status completionBlock:(id)block;
- (void)makeStartMDMMigrationRequestWithCompletionBlock:(id)block;
- (void)provisionallyEnrollWithNonce:(id)nonce completionBlock:(id)block;
- (void)retrieveDeviceUploadOrganizationsWithCredentials:(id)credentials completionBlock:(id)block;
- (void)retrieveDeviceUploadRequestTypesWithCredentials:(id)credentials completionBlock:(id)block;
- (void)retrieveDeviceUploadSoldToIdsForOrganization:(id)organization credentials:(id)credentials completionBlock:(id)block;
- (void)submitDeviceUploadRequest:(id)request credentials:(id)credentials completionBlock:(id)block;
- (void)unenrollWithCompletionBlock:(id)block;
@end

@implementation CCDServer

- (NSOperationQueue)operationQueue
{
  operationQueue = self->_operationQueue;
  if (!operationQueue)
  {
    v4 = objc_opt_new();
    v5 = self->_operationQueue;
    self->_operationQueue = v4;

    [(NSOperationQueue *)self->_operationQueue setMaxConcurrentOperationCount:1];
    operationQueue = self->_operationQueue;
  }

  return operationQueue;
}

- (void)provisionallyEnrollWithNonce:(id)nonce completionBlock:(id)block
{
  blockCopy = block;
  nonceCopy = nonce;
  v8 = objc_opt_new();
  [v8 setNonce:nonceCopy];

  [(CCDServer *)self _startProcessForEnrollmentRequest:v8 completionBlock:blockCopy];
}

- (void)fetchConfigurationWithCompletionBlock:(id)block
{
  blockCopy = block;
  v5 = +[CCDAuthKitUtilities shouldActivateAnisette];
  v6 = *(DEPLogObjects() + 8);
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_INFO);
  if (v5)
  {
    if (v7)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Retrieving cloud configuration and mid", buf, 2u);
    }

    [(CCDServer *)self fetchConfigurationAndActivateAnisetteWithCompletionBlock:blockCopy];
  }

  else
  {
    if (v7)
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Only retrieving cloud configuration", v8, 2u);
    }

    [(CCDServer *)self fetchConfigurationWithoutActivatingAnisetteWithCompletionBlock:blockCopy];
  }
}

- (void)fetchConfigurationAndActivateAnisetteWithCompletionBlock:(id)block
{
  blockCopy = block;
  v33[0] = 0;
  v33[1] = v33;
  v33[2] = 0x2020000000;
  v34 = 0;
  v31[0] = 0;
  v31[1] = v31;
  v31[2] = 0x2020000000;
  v32 = 0;
  v29[0] = 0;
  v29[1] = v29;
  v29[2] = 0x2020000000;
  v30 = 0;
  v27[0] = 0;
  v27[1] = v27;
  v27[2] = 0x3032000000;
  v27[3] = sub_10000A118;
  v27[4] = sub_10000A128;
  v28 = 0;
  v25[0] = 0;
  v25[1] = v25;
  v25[2] = 0x3032000000;
  v25[3] = sub_10000A118;
  v25[4] = sub_10000A128;
  v26 = 0;
  v23[0] = 0;
  v23[1] = v23;
  v23[2] = 0x3032000000;
  v23[3] = sub_10000A118;
  v23[4] = sub_10000A128;
  v24 = objc_alloc_init(NSLock);
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10000A130;
  v15[3] = &unk_10001CB08;
  v17 = v23;
  v18 = v31;
  v5 = blockCopy;
  v16 = v5;
  v19 = v29;
  v20 = v27;
  v21 = v25;
  v22 = v33;
  [CCDAuthKitUtilities midWithCompletion:v15];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10000A210;
  v7[3] = &unk_10001CB30;
  v9 = v23;
  v10 = v33;
  v6 = v5;
  v8 = v6;
  v11 = v29;
  v12 = v27;
  v13 = v25;
  v14 = v31;
  [(CCDServer *)self fetchConfigurationWithoutActivatingAnisetteWithCompletionBlock:v7];

  _Block_object_dispose(v23, 8);
  _Block_object_dispose(v25, 8);

  _Block_object_dispose(v27, 8);
  _Block_object_dispose(v29, 8);
  _Block_object_dispose(v31, 8);
  _Block_object_dispose(v33, 8);
}

- (void)fetchConfigurationWithoutActivatingAnisetteWithCompletionBlock:(id)block
{
  blockCopy = block;
  v5 = objc_opt_new();
  [(CCDServer *)self _startProcessForEnrollmentRequest:v5 completionBlock:blockCopy];
}

- (void)fetchConfigurationWithoutValidationWithCompletionBlock:(id)block
{
  blockCopy = block;
  v5 = objc_opt_new();
  [(CCDServer *)self _startProcessForEnrollmentRequest:v5 completionBlock:blockCopy];
}

- (void)unenrollWithCompletionBlock:(id)block
{
  blockCopy = block;
  v5 = objc_opt_new();
  [(CCDServer *)self _startProcessForEnrollmentRequest:v5 completionBlock:blockCopy];
}

- (void)makeStartMDMMigrationRequestWithCompletionBlock:(id)block
{
  blockCopy = block;
  v5 = objc_opt_new();
  [(CCDServer *)self _startProcessForEnrollmentRequest:v5 completionBlock:blockCopy];
}

- (void)makeEndMDMMigrationRequestWithServerUID:(id)d status:(id)status completionBlock:(id)block
{
  blockCopy = block;
  statusCopy = status;
  dCopy = d;
  v11 = objc_opt_new();
  [v11 setServerUID:dCopy];

  [v11 setStatus:statusCopy];
  [(CCDServer *)self _startProcessForEnrollmentRequest:v11 completionBlock:blockCopy];
}

- (void)retrieveDeviceUploadOrganizationsWithCredentials:(id)credentials completionBlock:(id)block
{
  blockCopy = block;
  v7 = [(CCDServer *)self _requestForDeviceUploadRequestType:0 userCredentials:credentials];
  [(CCDServer *)self _startProcessForDeviceUploadRequest:v7 completionBlock:blockCopy];
}

- (void)retrieveDeviceUploadRequestTypesWithCredentials:(id)credentials completionBlock:(id)block
{
  blockCopy = block;
  v7 = [(CCDServer *)self _requestForDeviceUploadRequestType:1 userCredentials:credentials];
  [(CCDServer *)self _startProcessForDeviceUploadRequest:v7 completionBlock:blockCopy];
}

- (void)retrieveDeviceUploadSoldToIdsForOrganization:(id)organization credentials:(id)credentials completionBlock:(id)block
{
  blockCopy = block;
  organizationCopy = organization;
  v10 = [(CCDServer *)self _requestForDeviceUploadRequestType:2 userCredentials:credentials];
  [v10 setOrganization:organizationCopy];

  [(CCDServer *)self _startProcessForDeviceUploadRequest:v10 completionBlock:blockCopy];
}

- (void)submitDeviceUploadRequest:(id)request credentials:(id)credentials completionBlock:(id)block
{
  blockCopy = block;
  requestCopy = request;
  v10 = [(CCDServer *)self _requestForDeviceUploadRequestType:3 userCredentials:credentials];
  [v10 setSubmitDeviceRequestPayload:requestCopy];

  [(CCDServer *)self _startProcessForDeviceUploadRequest:v10 completionBlock:blockCopy];
}

- (void)_startProcessForDeviceUploadRequest:(id)request completionBlock:(id)block
{
  blockCopy = block;
  v7 = [(CCDServer *)self _operationForDeviceUploadRequest:request];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10000A9A0;
  v9[3] = &unk_10001CB58;
  v10 = blockCopy;
  v8 = blockCopy;
  [v7 setDeviceUploadCompletionBlock:v9];
  [(CCDServer *)self _addOperationToQueue:v7];
}

- (id)_requestForDeviceUploadRequestType:(int64_t)type userCredentials:(id)credentials
{
  credentialsCopy = credentials;
  if (type > 3)
  {
    v7 = 0;
  }

  else
  {
    v6 = *off_10001CBA0[type];
    v7 = objc_opt_new();
  }

  [v7 setUserCredentials:credentialsCopy];

  return v7;
}

- (id)_operationForDeviceUploadRequest:(id)request
{
  requestCopy = request;
  requestType = [requestCopy requestType];
  if (requestType > 3)
  {
    v6 = 0;
  }

  else
  {
    v5 = *off_10001CBC0[requestType];
    v6 = objc_opt_new();
  }

  [v6 setTeslaRequest:requestCopy];

  return v6;
}

- (void)_startProcessForEnrollmentRequest:(id)request certificateClientNameSuffix:(id)suffix completionBlock:(id)block
{
  requestCopy = request;
  blockCopy = block;
  suffixCopy = suffix;
  v11 = objc_opt_new();
  [v11 setClientNameSuffix:suffixCopy];

  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10000ABD8;
  v14[3] = &unk_10001CB80;
  selfCopy = self;
  v17 = blockCopy;
  v15 = requestCopy;
  v12 = requestCopy;
  v13 = blockCopy;
  [v11 setCertificateRetrievalCompletionBlock:v14];
  [(CCDServer *)self _addOperationToQueue:v11];
}

- (void)_addOperationToQueue:(id)queue
{
  queueCopy = queue;
  v5 = *(DEPLogObjects() + 8);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = queueCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Adding operation to the queue: %@", &v7, 0xCu);
  }

  operationQueue = [(CCDServer *)self operationQueue];
  [operationQueue addOperation:queueCopy];
}

- (id)_operationForEnrollmentRequest:(id)request
{
  requestCopy = request;
  requestType = [requestCopy requestType];
  if (requestType > 6)
  {
    v6 = 0;
  }

  else
  {
    v5 = *off_10001CBE0[requestType];
    v6 = objc_opt_new();
  }

  [v6 setTeslaRequest:requestCopy];

  return v6;
}

@end