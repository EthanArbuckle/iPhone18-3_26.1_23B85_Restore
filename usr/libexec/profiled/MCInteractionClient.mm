@interface MCInteractionClient
- (BOOL)didBeginInstallingNextProfileData:(id)a3;
- (BOOL)didFinishInstallationWithIdentifier:(id)a3 error:(id)a4;
- (BOOL)didUpdateStatus:(id)a3;
- (BOOL)requestCurrentPasscodeOutExtractablePasscodeContext:(id *)a3;
- (BOOL)requestCurrentPasscodeOutPasscodeContext:(id *)a3;
- (BOOL)requestMAIDSignIn:(id)a3 personaID:(id)a4 outError:(id *)a5 isCancelled:(BOOL *)a6;
- (BOOL)requestUserInput:(id)a3 delegate:(id)a4 outResult:(id *)a5;
- (BOOL)showUserWarnings:(id)a3 outResult:(BOOL *)a4;
- (MCInteractionClient)initWithXPCClientConnection:(id)a3;
- (void)_receivedUserInput:(id)a3 preflight:(BOOL)a4 payloadIndex:(unint64_t)a5 delegate:(id)a6 semaphore:(id)a7 error:(id)a8 outResponses:(id)a9;
- (void)requestManagedRestoreWithManagedAppleID:(id)a3 personaID:(id)a4;
- (void)setDefaultStatus:(id)a3;
- (void)waitForEnrollmentToFinishWithPersonaID:(id)a3;
@end

@implementation MCInteractionClient

- (MCInteractionClient)initWithXPCClientConnection:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = MCInteractionClient;
  v5 = [(MCInteractionClient *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(MCInteractionClient *)v5 setXpcConnection:v4];
  }

  return v6;
}

- (BOOL)requestUserInput:(id)a3 delegate:(id)a4 outResult:(id *)a5
{
  v8 = a3;
  v9 = a4;
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
  v13 = [(MCInteractionClient *)self xpcConnection];
  v14 = [v13 remoteObjectProxyWithErrorHandler:v12];
  v20 = _NSConcreteStackBlock;
  v21 = 3221225472;
  v22 = sub_10001686C;
  v23 = &unk_10011BF08;
  objc_copyWeak(&v27, &location);
  v15 = v9;
  v24 = v15;
  v16 = v11;
  v25 = v16;
  v17 = v10;
  v26 = v17;
  [v14 doMCICDidRequestUserInput:v8 completion:&v20];

  v18 = dispatch_time(0, 900000000000);
  dispatch_semaphore_wait(v16, v18);
  *a5 = [v17 copy];

  objc_destroyWeak(&v27);
  objc_destroyWeak(&location);

  return 1;
}

- (BOOL)requestMAIDSignIn:(id)a3 personaID:(id)a4 outError:(id *)a5 isCancelled:(BOOL *)a6
{
  v10 = a3;
  v11 = a4;
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
  v14 = [(MCInteractionClient *)self xpcConnection];
  v15 = [v14 remoteObjectProxyWithErrorHandler:v13];
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
  [v15 doMCICDidRequestMAIDSignIn:v10 personaID:v11 completion:v22];

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

  if (a5)
  {
    *a5 = v39[5];
  }

  *a6 = *(v35 + 24);
  v19 = *(v45 + 24);

  _Block_object_dispose(&v30, 8);
  _Block_object_dispose(&v34, 8);
  _Block_object_dispose(&v38, 8);

  _Block_object_dispose(&v44, 8);
  return v19;
}

- (void)requestManagedRestoreWithManagedAppleID:(id)a3 personaID:(id)a4
{
  v6 = a3;
  v7 = a4;
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
  v8 = [(MCInteractionClient *)self xpcConnection];
  v9 = [v8 remoteObjectProxyWithErrorHandler:&stru_10011BF50];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10001706C;
  v10[3] = &unk_10011BF78;
  v10[4] = v15;
  v10[5] = v13;
  v10[6] = v11;
  [v9 doMCICDidRequestManagedRestoreWithManagedAppleID:v6 personaID:v7 completion:v10];

  _Block_object_dispose(v11, 8);
  _Block_object_dispose(v13, 8);

  _Block_object_dispose(v15, 8);
}

- (void)_receivedUserInput:(id)a3 preflight:(BOOL)a4 payloadIndex:(unint64_t)a5 delegate:(id)a6 semaphore:(id)a7 error:(id)a8 outResponses:(id)a9
{
  v13 = a4;
  v15 = a3;
  v16 = a6;
  v17 = a7;
  v18 = a8;
  v19 = a9;
  if (os_log_type_enabled(_MCLogObjects[8], OS_LOG_TYPE_DEBUG))
  {
    sub_1000C2224();
    if (v13)
    {
      goto LABEL_3;
    }

LABEL_5:
    [v19 addObjectsFromArray:v15];
    dispatch_semaphore_signal(v17);
    goto LABEL_6;
  }

  if (!v13)
  {
    goto LABEL_5;
  }

LABEL_3:
  v34 = 0;
  [v16 interactionClient:self didRequestPreflightUserInputResponses:v15 forPayloadIndex:a5 outError:{&v34, v18}];
  v20 = v34;
  v32[0] = _NSConcreteStackBlock;
  v32[1] = 3221225472;
  v32[2] = sub_1000173F0;
  v32[3] = &unk_10011BEE0;
  v21 = v17;
  v33 = v21;
  v22 = objc_retainBlock(v32);
  objc_initWeak(&location, self);
  v23 = [(MCInteractionClient *)self xpcConnection];
  v24 = [v23 remoteObjectProxyWithErrorHandler:v22];
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_1000174D4;
  v26[3] = &unk_10011BF08;
  objc_copyWeak(&v30, &location);
  v27 = v16;
  v28 = v21;
  v29 = v19;
  [v24 doMCICDidFinishPreflightWithError:v20 completion:v26];

  objc_destroyWeak(&v30);
  objc_destroyWeak(&location);

  v18 = v25;
LABEL_6:
}

- (BOOL)showUserWarnings:(id)a3 outResult:(BOOL *)a4
{
  v6 = a3;
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
  v9 = [(MCInteractionClient *)self xpcConnection];
  v10 = [v9 remoteObjectProxyWithErrorHandler:v8];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1000178E0;
  v15[3] = &unk_10011BFC8;
  v17 = &v22;
  v18 = &v28;
  v11 = v7;
  v16 = v11;
  [v10 doMCICDidRequestShowUserWarnings:v6 completion:v15];

  v12 = dispatch_time(0, 600000000000);
  if (dispatch_semaphore_wait(v11, v12) || v23[5])
  {
    v13 = 0;
  }

  else
  {
    *a4 = *(v29 + 24);
    v13 = 1;
  }

  _Block_object_dispose(&v22, 8);
  _Block_object_dispose(&v28, 8);

  return v13;
}

- (BOOL)didFinishInstallationWithIdentifier:(id)a3 error:(id)a4
{
  v6 = a3;
  v7 = a4;
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
  v10 = [(MCInteractionClient *)self xpcConnection];
  v11 = [v10 remoteObjectProxyWithErrorHandler:v9];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100017BF4;
  v15[3] = &unk_10011BEE0;
  v16 = v8;
  v12 = v8;
  [v11 doMCICDidFinishInstallationWithIdentifier:v6 error:v7 completion:v15];

  v13 = dispatch_time(0, 10000000);
  dispatch_semaphore_wait(v12, v13);

  return 1;
}

- (BOOL)didUpdateStatus:(id)a3
{
  v5 = a3;
  if (os_log_type_enabled(_MCLogObjects[8], OS_LOG_TYPE_DEBUG))
  {
    sub_1000C23BC();
  }

  objc_storeStrong(&self->_lastStatus, a3);
  if (!v5)
  {
    v5 = self->_defaultStatus;
  }

  v6 = [(MCInteractionClient *)self xpcConnection];
  v7 = [v6 remoteObjectProxyWithErrorHandler:&stru_10011BFE8];
  [v7 doMCICDidUpdateStatus:v5 completion:&stru_10011BFE8];

  return 1;
}

- (BOOL)didBeginInstallingNextProfileData:(id)a3
{
  v4 = a3;
  if (os_log_type_enabled(_MCLogObjects[8], OS_LOG_TYPE_DEBUG))
  {
    sub_1000C2444();
  }

  v5 = [(MCInteractionClient *)self xpcConnection];
  v6 = [v5 remoteObjectProxyWithErrorHandler:&stru_10011C008];
  [v6 doMCICDidBeginInstallingNextProfileData:v4 completion:&stru_10011C008];

  return 1;
}

- (BOOL)requestCurrentPasscodeOutPasscodeContext:(id *)a3
{
  if (os_log_type_enabled(_MCLogObjects[8], OS_LOG_TYPE_DEBUG))
  {
    sub_1000C24CC();
  }

  return [(MCInteractionClient *)self _requestCurrentPasscodeExtractable:0 outPasscodeContext:a3];
}

- (BOOL)requestCurrentPasscodeOutExtractablePasscodeContext:(id *)a3
{
  if (os_log_type_enabled(_MCLogObjects[8], OS_LOG_TYPE_DEBUG))
  {
    sub_1000C2554();
  }

  return [(MCInteractionClient *)self _requestCurrentPasscodeExtractable:1 outPasscodeContext:a3];
}

- (void)waitForEnrollmentToFinishWithPersonaID:(id)a3
{
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000185E4;
  v11[3] = &unk_10011BEE0;
  v4 = dispatch_semaphore_create(0);
  v12 = v4;
  v5 = objc_retainBlock(v11);
  v6 = [(MCInteractionClient *)self xpcConnection];
  v7 = [v6 remoteObjectProxyWithErrorHandler:v5];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000186E8;
  v9[3] = &unk_10011B688;
  v10 = v4;
  v8 = v4;
  [v7 doMCICWaitForEnrollmentToFinishWithCompletion:v9];

  dispatch_semaphore_wait(v8, 0x4E94914F0000uLL);
}

- (void)setDefaultStatus:(id)a3
{
  v5 = a3;
  objc_storeStrong(&self->_defaultStatus, a3);
  if (!self->_lastStatus)
  {
    [(MCInteractionClient *)self didUpdateStatus:self->_defaultStatus];
  }
}

@end