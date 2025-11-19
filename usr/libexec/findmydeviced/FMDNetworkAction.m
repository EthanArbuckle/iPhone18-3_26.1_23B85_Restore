@interface FMDNetworkAction
- (FMDNetworkAction)initWithRequest:(id)a3 andServerInteractionController:(id)a4;
- (NSString)description;
- (id)actionType;
- (void)runWithCompletion:(id)a3;
- (void)willCancelAction;
@end

@implementation FMDNetworkAction

- (FMDNetworkAction)initWithRequest:(id)a3 andServerInteractionController:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = FMDNetworkAction;
  v9 = [(FMDNetworkAction *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_request, a3);
    objc_storeStrong(&v10->_serverInteractionController, a4);
  }

  return v10;
}

- (id)actionType
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (void)runWithCompletion:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = sub_10017DA30();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(FMDNetworkAction *)self request];
    *buf = 138412546;
    *&buf[4] = self;
    *&buf[12] = 2112;
    *&buf[14] = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@ run for request - %@", buf, 0x16u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v28 = sub_10000A938;
  v29 = sub_100002A74;
  v7 = [(FMDNetworkAction *)self request];
  v30 = [v7 completionHandler];

  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_100127468;
  v18[3] = &unk_1002CD198;
  objc_copyWeak(&v21, &location);
  v18[4] = self;
  v20 = buf;
  v8 = v4;
  v19 = v8;
  v9 = objc_retainBlock(v18);
  v10 = sub_10017DA30();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    sub_100225538(self, v9);
  }

  v11 = [(FMDNetworkAction *)self request];
  [v11 setCompletionHandler:v9];

  v12 = [(FMDNetworkAction *)self request];
  if ([v12 cancelled])
  {
  }

  else
  {
    v13 = [(FMDNetworkAction *)self serverInteractionController];
    v14 = [(FMDNetworkAction *)self request];
    v15 = [v13 enqueueRequest:v14];

    if (v15)
    {
      goto LABEL_12;
    }
  }

  v16 = sub_10017DA30();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = [(FMDNetworkAction *)self request];
    *v23 = 138412546;
    v24 = self;
    v25 = 2112;
    v26 = v17;
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
    v4 = [(FMDNetworkAction *)self request];
    v7 = 138412546;
    v8 = self;
    v9 = 2112;
    v10 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%@ will cancel request: %@", &v7, 0x16u);
  }

  v5 = [(FMDNetworkAction *)self serverInteractionController];
  v6 = [(FMDNetworkAction *)self request];
  [v5 cancelRequest:v6];
}

- (NSString)description
{
  v3 = objc_opt_class();
  v4 = [(FMDNetworkAction *)self request];
  v5 = [NSString stringWithFormat:@"%@-%p:%@", v3, self, v4];

  return v5;
}

@end