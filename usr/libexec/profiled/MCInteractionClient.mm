@interface MCInteractionClient
- (BOOL)didBeginInstallingNextProfileData:(id)data;
- (BOOL)didFinishInstallationWithIdentifier:(id)identifier error:(id)error;
- (BOOL)didUpdateStatus:(id)status;
- (BOOL)requestCurrentPasscodeOutExtractablePasscodeContext:(id *)context;
- (BOOL)requestCurrentPasscodeOutPasscodeContext:(id *)context;
- (BOOL)requestMAIDSignIn:(id)in personaID:(id)d outError:(id *)error isCancelled:(BOOL *)cancelled;
- (BOOL)requestUserInput:(id)input delegate:(id)delegate outResult:(id *)result;
- (BOOL)showUserWarnings:(id)warnings outResult:(BOOL *)result;
- (MCInteractionClient)initWithXPCClientConnection:(id)connection;
- (void)_receivedUserInput:(id)input preflight:(BOOL)preflight payloadIndex:(unint64_t)index delegate:(id)delegate semaphore:(id)semaphore error:(id)error outResponses:(id)responses;
- (void)requestManagedRestoreWithManagedAppleID:(id)d personaID:(id)iD;
- (void)setDefaultStatus:(id)status;
- (void)waitForEnrollmentToFinishWithPersonaID:(id)d;
@end

@implementation MCInteractionClient

- (MCInteractionClient)initWithXPCClientConnection:(id)connection
{
  connectionCopy = connection;
  v8.receiver = self;
  v8.super_class = MCInteractionClient;
  v5 = [(MCInteractionClient *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(MCInteractionClient *)v5 setXpcConnection:connectionCopy];
  }

  return v6;
}

- (BOOL)requestUserInput:(id)input delegate:(id)delegate outResult:(id *)result
{
  inputCopy = input;
  delegateCopy = delegate;
  if (os_log_type_enabled(_MCLogObjects[8], OS_LOG_TYPE_DEBUG))
  {
    sub_1000C208C();
  }

  v10 = objc_alloc_init(NSMutableArray);
  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_100016788;
  v29[3] = &unk_10011BEE0;
  v11 = dispatch_semaphore_create(0);
  v30 = v11;
  v12 = objc_retainBlock(v29);
  objc_initWeak(&location, self);
  xpcConnection = [(MCInteractionClient *)self xpcConnection];
  v14 = [xpcConnection remoteObjectProxyWithErrorHandler:v12];
  v20 = _NSConcreteStackBlock;
  v21 = 3221225472;
  v22 = sub_10001686C;
  v23 = &unk_10011BF08;
  objc_copyWeak(&v27, &location);
  v15 = delegateCopy;
  v24 = v15;
  v16 = v11;
  v25 = v16;
  v17 = v10;
  v26 = v17;
  [v14 doMCICDidRequestUserInput:inputCopy completion:&v20];

  v18 = dispatch_time(0, 900000000000);
  dispatch_semaphore_wait(v16, v18);
  *result = [v17 copy];

  objc_destroyWeak(&v27);
  objc_destroyWeak(&location);

  return 1;
}

- (BOOL)requestMAIDSignIn:(id)in personaID:(id)d outError:(id *)error isCancelled:(BOOL *)cancelled
{
  inCopy = in;
  dCopy = d;
  if (os_log_type_enabled(_MCLogObjects[8], OS_LOG_TYPE_DEBUG))
  {
    sub_1000C2114();
  }

  v44 = 0;
  v45 = &v44;
  v46 = 0x2020000000;
  v47 = 0;
  v38 = 0;
  v39 = &v38;
  v40 = 0x3032000000;
  v41 = sub_100016C3C;
  v42 = sub_100016C4C;
  v43 = 0;
  v34 = 0;
  v35 = &v34;
  v36 = 0x2020000000;
  v37 = 0;
  v30 = 0;
  v31 = &v30;
  v32 = 0x2020000000;
  v33 = 1;
  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_100016C54;
  v28[3] = &unk_10011BEE0;
  v12 = dispatch_semaphore_create(0);
  v29 = v12;
  v13 = objc_retainBlock(v28);
  xpcConnection = [(MCInteractionClient *)self xpcConnection];
  v15 = [xpcConnection remoteObjectProxyWithErrorHandler:v13];
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_100016D38;
  v22[3] = &unk_10011BF30;
  v24 = &v44;
  v25 = &v38;
  v26 = &v34;
  v27 = &v30;
  v16 = v12;
  v23 = v16;
  [v15 doMCICDidRequestMAIDSignIn:inCopy personaID:dCopy completion:v22];

  v17 = dispatch_time(0, 900000000000);
  dispatch_semaphore_wait(v16, v17);
  if (*(v31 + 24) == 1)
  {
    v18 = _MCLogObjects[8];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *v21 = 0;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "MAID sign in request timed out after 15 mins", v21, 2u);
    }
  }

  if (error)
  {
    *error = v39[5];
  }

  *cancelled = *(v35 + 24);
  v19 = *(v45 + 24);

  _Block_object_dispose(&v30, 8);
  _Block_object_dispose(&v34, 8);
  _Block_object_dispose(&v38, 8);

  _Block_object_dispose(&v44, 8);
  return v19;
}

- (void)requestManagedRestoreWithManagedAppleID:(id)d personaID:(id)iD
{
  dCopy = d;
  iDCopy = iD;
  if (os_log_type_enabled(_MCLogObjects[8], OS_LOG_TYPE_DEBUG))
  {
    sub_1000C219C();
  }

  v15[0] = 0;
  v15[1] = v15;
  v15[2] = 0x2020000000;
  v16 = 0;
  v13[0] = 0;
  v13[1] = v13;
  v13[2] = 0x3032000000;
  v13[3] = sub_100016C3C;
  v13[4] = sub_100016C4C;
  v14 = 0;
  v11[0] = 0;
  v11[1] = v11;
  v11[2] = 0x2020000000;
  v12 = 0;
  xpcConnection = [(MCInteractionClient *)self xpcConnection];
  v9 = [xpcConnection remoteObjectProxyWithErrorHandler:&stru_10011BF50];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10001706C;
  v10[3] = &unk_10011BF78;
  v10[4] = v15;
  v10[5] = v13;
  v10[6] = v11;
  [v9 doMCICDidRequestManagedRestoreWithManagedAppleID:dCopy personaID:iDCopy completion:v10];

  _Block_object_dispose(v11, 8);
  _Block_object_dispose(v13, 8);

  _Block_object_dispose(v15, 8);
}

- (void)_receivedUserInput:(id)input preflight:(BOOL)preflight payloadIndex:(unint64_t)index delegate:(id)delegate semaphore:(id)semaphore error:(id)error outResponses:(id)responses
{
  preflightCopy = preflight;
  inputCopy = input;
  delegateCopy = delegate;
  semaphoreCopy = semaphore;
  errorCopy = error;
  responsesCopy = responses;
  if (os_log_type_enabled(_MCLogObjects[8], OS_LOG_TYPE_DEBUG))
  {
    sub_1000C2224();
    if (preflightCopy)
    {
      goto LABEL_3;
    }

LABEL_5:
    [responsesCopy addObjectsFromArray:inputCopy];
    dispatch_semaphore_signal(semaphoreCopy);
    goto LABEL_6;
  }

  if (!preflightCopy)
  {
    goto LABEL_5;
  }

LABEL_3:
  v34 = 0;
  [delegateCopy interactionClient:self didRequestPreflightUserInputResponses:inputCopy forPayloadIndex:index outError:{&v34, errorCopy}];
  v20 = v34;
  v32[0] = _NSConcreteStackBlock;
  v32[1] = 3221225472;
  v32[2] = sub_1000173F0;
  v32[3] = &unk_10011BEE0;
  v21 = semaphoreCopy;
  v33 = v21;
  v22 = objc_retainBlock(v32);
  objc_initWeak(&location, self);
  xpcConnection = [(MCInteractionClient *)self xpcConnection];
  v24 = [xpcConnection remoteObjectProxyWithErrorHandler:v22];
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_1000174D4;
  v26[3] = &unk_10011BF08;
  objc_copyWeak(&v30, &location);
  v27 = delegateCopy;
  v28 = v21;
  v29 = responsesCopy;
  [v24 doMCICDidFinishPreflightWithError:v20 completion:v26];

  objc_destroyWeak(&v30);
  objc_destroyWeak(&location);

  errorCopy = v25;
LABEL_6:
}

- (BOOL)showUserWarnings:(id)warnings outResult:(BOOL *)result
{
  warningsCopy = warnings;
  if (os_log_type_enabled(_MCLogObjects[8], OS_LOG_TYPE_DEBUG))
  {
    sub_1000C22AC();
  }

  v28 = 0;
  v29 = &v28;
  v30 = 0x2020000000;
  v31 = 0;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = sub_100016C3C;
  v26 = sub_100016C4C;
  v27 = 0;
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_1000177DC;
  v19[3] = &unk_10011BFA0;
  v21 = &v22;
  v7 = dispatch_semaphore_create(0);
  v20 = v7;
  v8 = objc_retainBlock(v19);
  xpcConnection = [(MCInteractionClient *)self xpcConnection];
  v10 = [xpcConnection remoteObjectProxyWithErrorHandler:v8];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1000178E0;
  v15[3] = &unk_10011BFC8;
  v17 = &v22;
  v18 = &v28;
  v11 = v7;
  v16 = v11;
  [v10 doMCICDidRequestShowUserWarnings:warningsCopy completion:v15];

  v12 = dispatch_time(0, 600000000000);
  if (dispatch_semaphore_wait(v11, v12) || v23[5])
  {
    v13 = 0;
  }

  else
  {
    *result = *(v29 + 24);
    v13 = 1;
  }

  _Block_object_dispose(&v22, 8);
  _Block_object_dispose(&v28, 8);

  return v13;
}

- (BOOL)didFinishInstallationWithIdentifier:(id)identifier error:(id)error
{
  identifierCopy = identifier;
  errorCopy = error;
  if (os_log_type_enabled(_MCLogObjects[8], OS_LOG_TYPE_DEBUG))
  {
    sub_1000C2334();
  }

  [(MCInteractionClient *)self setPasscodeContextWrapper:0];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100017B10;
  v17[3] = &unk_10011BEE0;
  v8 = dispatch_semaphore_create(0);
  v18 = v8;
  v9 = objc_retainBlock(v17);
  xpcConnection = [(MCInteractionClient *)self xpcConnection];
  v11 = [xpcConnection remoteObjectProxyWithErrorHandler:v9];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100017BF4;
  v15[3] = &unk_10011BEE0;
  v16 = v8;
  v12 = v8;
  [v11 doMCICDidFinishInstallationWithIdentifier:identifierCopy error:errorCopy completion:v15];

  v13 = dispatch_time(0, 10000000);
  dispatch_semaphore_wait(v12, v13);

  return 1;
}

- (BOOL)didUpdateStatus:(id)status
{
  statusCopy = status;
  if (os_log_type_enabled(_MCLogObjects[8], OS_LOG_TYPE_DEBUG))
  {
    sub_1000C23BC();
  }

  objc_storeStrong(&self->_lastStatus, status);
  if (!statusCopy)
  {
    statusCopy = self->_defaultStatus;
  }

  xpcConnection = [(MCInteractionClient *)self xpcConnection];
  v7 = [xpcConnection remoteObjectProxyWithErrorHandler:&stru_10011BFE8];
  [v7 doMCICDidUpdateStatus:statusCopy completion:&stru_10011BFE8];

  return 1;
}

- (BOOL)didBeginInstallingNextProfileData:(id)data
{
  dataCopy = data;
  if (os_log_type_enabled(_MCLogObjects[8], OS_LOG_TYPE_DEBUG))
  {
    sub_1000C2444();
  }

  xpcConnection = [(MCInteractionClient *)self xpcConnection];
  v6 = [xpcConnection remoteObjectProxyWithErrorHandler:&stru_10011C008];
  [v6 doMCICDidBeginInstallingNextProfileData:dataCopy completion:&stru_10011C008];

  return 1;
}

- (BOOL)requestCurrentPasscodeOutPasscodeContext:(id *)context
{
  if (os_log_type_enabled(_MCLogObjects[8], OS_LOG_TYPE_DEBUG))
  {
    sub_1000C24CC();
  }

  return [(MCInteractionClient *)self _requestCurrentPasscodeExtractable:0 outPasscodeContext:context];
}

- (BOOL)requestCurrentPasscodeOutExtractablePasscodeContext:(id *)context
{
  if (os_log_type_enabled(_MCLogObjects[8], OS_LOG_TYPE_DEBUG))
  {
    sub_1000C2554();
  }

  return [(MCInteractionClient *)self _requestCurrentPasscodeExtractable:1 outPasscodeContext:context];
}

- (void)waitForEnrollmentToFinishWithPersonaID:(id)d
{
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000185E4;
  v11[3] = &unk_10011BEE0;
  v4 = dispatch_semaphore_create(0);
  v12 = v4;
  v5 = objc_retainBlock(v11);
  xpcConnection = [(MCInteractionClient *)self xpcConnection];
  v7 = [xpcConnection remoteObjectProxyWithErrorHandler:v5];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000186E8;
  v9[3] = &unk_10011B688;
  v10 = v4;
  v8 = v4;
  [v7 doMCICWaitForEnrollmentToFinishWithCompletion:v9];

  dispatch_semaphore_wait(v8, 0x4E94914F0000uLL);
}

- (void)setDefaultStatus:(id)status
{
  statusCopy = status;
  objc_storeStrong(&self->_defaultStatus, status);
  if (!self->_lastStatus)
  {
    [(MCInteractionClient *)self didUpdateStatus:self->_defaultStatus];
  }
}

@end