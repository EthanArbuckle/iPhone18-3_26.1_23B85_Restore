@interface FMDAbsintheV3SigningInterface
+ (id)pscSUIURL;
+ (id)sharedInterface;
- (FMDAbsintheV3SigningInterface)init;
- (id)accountForServerInteractionController:(id)controller;
- (id)inFieldCollectionReceipt:(id *)receipt;
- (id)signatureForData:(id)data requestUUID:(id)d mode:(unint64_t)mode error:(id *)error;
- (void)didReceiveAuthFailureForRequest:(id)request;
- (void)didReceiveServerAlertForRequest:(id)request;
- (void)signatureForData:(id)data requestUUID:(id)d mode:(unint64_t)mode cause:(id)cause completion:(id)completion;
@end

@implementation FMDAbsintheV3SigningInterface

+ (id)sharedInterface
{
  if (qword_1003144E0 != -1)
  {
    sub_100226110();
  }

  v3 = qword_1003144D8;

  return v3;
}

- (FMDAbsintheV3SigningInterface)init
{
  v12.receiver = self;
  v12.super_class = FMDAbsintheV3SigningInterface;
  v2 = [(FMDAbsintheV3SigningInterface *)&v12 init];
  if (v2)
  {
    v3 = objc_alloc_init(NSOperationQueue);
    [(FMDAbsintheV3SigningInterface *)v2 setOperationQueue:v3];

    operationQueue = [(FMDAbsintheV3SigningInterface *)v2 operationQueue];
    [operationQueue setMaxConcurrentOperationCount:1];

    v5 = objc_alloc_init(FMDDirectServerChannel);
    v13[0] = v5;
    v6 = objc_alloc_init(FMDCadmiumServerChannel);
    v13[1] = v6;
    v7 = [NSArray arrayWithObjects:v13 count:2];

    v8 = [[FMDServerInteractionController alloc] initWithChannels:v7 delegate:v2];
    [(FMDAbsintheV3SigningInterface *)v2 setServerInteractionController:v8];

    v9 = objc_alloc_init(FMStateCapture);
    [(FMDAbsintheV3SigningInterface *)v2 setStateCapture:v9];

    stateCapture = [(FMDAbsintheV3SigningInterface *)v2 stateCapture];
    [stateCapture setStateCaptureBlock:&stru_1002CD698];
  }

  return v2;
}

- (id)signatureForData:(id)data requestUUID:(id)d mode:(unint64_t)mode error:(id *)error
{
  dataCopy = data;
  dCopy = d;
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = sub_10000A994;
  v29 = sub_100002A94;
  v30 = 0;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = sub_10000A994;
  v23 = sub_100002A94;
  v24 = 0;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1001347D8;
  v15[3] = &unk_1002CD6C0;
  v17 = &v25;
  v18 = &v19;
  v12 = [[FMSynchronizer alloc] initWithDescription:@"absintheSynchronizer" andTimeout:-1.0];
  v16 = v12;
  [(FMDAbsintheV3SigningInterface *)self signatureForData:dataCopy requestUUID:dCopy mode:mode cause:0 completion:v15];
  [v12 wait];
  if (error)
  {
    *error = v20[5];
  }

  v13 = v26[5];

  _Block_object_dispose(&v19, 8);
  _Block_object_dispose(&v25, 8);

  return v13;
}

- (void)signatureForData:(id)data requestUUID:(id)d mode:(unint64_t)mode cause:(id)cause completion:(id)completion
{
  dataCopy = data;
  v19 = _NSConcreteStackBlock;
  v20 = 3221225472;
  v21 = sub_1001349B4;
  v22 = &unk_1002CD6E8;
  dCopy = d;
  causeCopy = cause;
  selfCopy = self;
  v26 = dataCopy;
  completionCopy = completion;
  modeCopy = mode;
  v13 = completionCopy;
  v14 = dataCopy;
  v15 = causeCopy;
  v16 = dCopy;
  v17 = [NSBlockOperation blockOperationWithBlock:&v19];
  v18 = [(FMDAbsintheV3SigningInterface *)self operationQueue:v19];
  [v18 addOperation:v17];
}

- (id)inFieldCollectionReceipt:(id *)receipt
{
  v4 = MAECopyPCRTToken();
  v5 = 0;
  if (v5)
  {

    v6 = sub_100002880();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      sub_100226124(v5, v6);
    }

    if (receipt)
    {
      v7 = v5;
      v4 = 0;
      *receipt = v5;
    }

    else
    {
      v4 = 0;
    }
  }

  return v4;
}

- (void)didReceiveAuthFailureForRequest:(id)request
{
  v3 = sub_100002880();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Auth failure received in identityV3Session.", v4, 2u);
  }
}

- (void)didReceiveServerAlertForRequest:(id)request
{
  requestCopy = request;
  alertFromServerResponse = [requestCopy alertFromServerResponse];

  if (alertFromServerResponse)
  {
    v5 = sub_100002880();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_10022619C(requestCopy, v5);
    }
  }
}

- (id)accountForServerInteractionController:(id)controller
{
  v3 = +[FMDServiceProvider activeServiceProvider];
  account = [v3 account];

  return account;
}

+ (id)pscSUIURL
{
  v2 = container_system_group_path_for_identifier();
  if (v2)
  {
    v3 = v2;
    v4 = sub_100002880();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315138;
      v9 = v3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "System group container path is %s", &v8, 0xCu);
    }

    v5 = [NSURL fileURLWithFileSystemRepresentation:v3 isDirectory:1 relativeToURL:0];
    free(v3);
  }

  else
  {
    v5 = 0;
  }

  v6 = [v5 URLByAppendingPathComponent:@"Library/ProvenanceV2/psc.sui" isDirectory:0];

  return v6;
}

@end