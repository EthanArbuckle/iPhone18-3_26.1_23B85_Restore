@interface FMDNetworkAction
- (FMDNetworkAction)initWithRequest:(id)request andServerInteractionController:(id)controller;
- (NSString)description;
- (id)actionType;
- (void)runWithCompletion:(id)completion;
- (void)willCancelAction;
@end

@implementation FMDNetworkAction

- (FMDNetworkAction)initWithRequest:(id)request andServerInteractionController:(id)controller
{
  requestCopy = request;
  controllerCopy = controller;
  v12.receiver = self;
  v12.super_class = FMDNetworkAction;
  v9 = [(FMDNetworkAction *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_request, request);
    objc_storeStrong(&v10->_serverInteractionController, controller);
  }

  return v10;
}

- (id)actionType
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (void)runWithCompletion:(id)completion
{
  completionCopy = completion;
  objc_initWeak(&location, self);
  v5 = sub_10017DA30();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    request = [(FMDNetworkAction *)self request];
    *buf = 138412546;
    *&buf[4] = self;
    *&buf[12] = 2112;
    *&buf[14] = request;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@ run for request - %@", buf, 0x16u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v28 = sub_10000A938;
  v29 = sub_100002A74;
  request2 = [(FMDNetworkAction *)self request];
  completionHandler = [request2 completionHandler];

  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_100127468;
  v18[3] = &unk_1002CD198;
  objc_copyWeak(&v21, &location);
  v18[4] = self;
  v20 = buf;
  v8 = completionCopy;
  v19 = v8;
  v9 = objc_retainBlock(v18);
  v10 = sub_10017DA30();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    sub_100225538(self, v9);
  }

  request3 = [(FMDNetworkAction *)self request];
  [request3 setCompletionHandler:v9];

  request4 = [(FMDNetworkAction *)self request];
  if ([request4 cancelled])
  {
  }

  else
  {
    serverInteractionController = [(FMDNetworkAction *)self serverInteractionController];
    request5 = [(FMDNetworkAction *)self request];
    v15 = [serverInteractionController enqueueRequest:request5];

    if (v15)
    {
      goto LABEL_12;
    }
  }

  v16 = sub_10017DA30();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    request6 = [(FMDNetworkAction *)self request];
    *v23 = 138412546;
    selfCopy = self;
    v25 = 2112;
    v26 = request6;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%@ request cancelled or did not enqueue: %@", v23, 0x16u);
  }

  if (v8)
  {
    v8[2](v8);
  }

LABEL_12:

  objc_destroyWeak(&v21);
  _Block_object_dispose(buf, 8);

  objc_destroyWeak(&location);
}

- (void)willCancelAction
{
  v3 = sub_10017DA30();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    request = [(FMDNetworkAction *)self request];
    v7 = 138412546;
    selfCopy = self;
    v9 = 2112;
    v10 = request;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%@ will cancel request: %@", &v7, 0x16u);
  }

  serverInteractionController = [(FMDNetworkAction *)self serverInteractionController];
  request2 = [(FMDNetworkAction *)self request];
  [serverInteractionController cancelRequest:request2];
}

- (NSString)description
{
  v3 = objc_opt_class();
  request = [(FMDNetworkAction *)self request];
  v5 = [NSString stringWithFormat:@"%@-%p:%@", v3, self, request];

  return v5;
}

@end