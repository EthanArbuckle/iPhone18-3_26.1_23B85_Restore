@interface FMDOperationQueue
- (BOOL)addRequest:(id)a3;
- (BOOL)cancelRequest:(id)a3;
- (BOOL)replacedExsitingAction:(id)a3;
- (BOOL)shouldAddAction:(id)a3;
- (FMDOperationQueue)initWithIdentifier:(id)a3;
- (id)description;
- (id)wrapAction:(id)a3;
- (void)processRequests;
@end

@implementation FMDOperationQueue

- (FMDOperationQueue)initWithIdentifier:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = FMDOperationQueue;
  v5 = [(FMDOperationQueue *)&v10 init];
  if (v5)
  {
    v6 = objc_alloc_init(NSOperationQueue);
    [(FMDOperationQueue *)v5 setRequestsOperationQueue:v6];

    v7 = [(FMDOperationQueue *)v5 requestsOperationQueue];
    [v7 setMaxConcurrentOperationCount:1];

    v8 = +[NSMutableArray array];
    [(FMDOperationQueue *)v5 setRequests:v8];

    [(FMDOperationQueue *)v5 setIdentifier:v4];
    [(FMDOperationQueue *)v5 setQueueCount:0];
    [(FMDOperationQueue *)v5 setIsPaused:0];
  }

  return v5;
}

- (BOOL)addRequest:(id)a3
{
  v4 = a3;
  if (v4)
  {
    objc_initWeak(&location, self);
    v5 = [(FMDOperationQueue *)self requestsOperationQueue];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1001C34B0;
    v7[3] = &unk_1002CD288;
    objc_copyWeak(&v9, &location);
    v8 = v4;
    [v5 addOperationWithBlock:v7];

    objc_destroyWeak(&v9);
    objc_destroyWeak(&location);
  }

  return v4 != 0;
}

- (BOOL)cancelRequest:(id)a3
{
  v4 = a3;
  if (v4)
  {
    objc_initWeak(&location, self);
    v5 = sub_10017DA30();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v13 = self;
      v14 = 2112;
      v15 = v4;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@ action to be removed - %@", buf, 0x16u);
    }

    v6 = [(FMDOperationQueue *)self requestsOperationQueue];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1001C3818;
    v8[3] = &unk_1002CD288;
    objc_copyWeak(&v10, &location);
    v9 = v4;
    [v6 addOperationWithBlock:v8];

    objc_destroyWeak(&v10);
    objc_destroyWeak(&location);
  }

  return v4 != 0;
}

- (void)processRequests
{
  if ([(FMDOperationQueue *)self isPaused])
  {
    v3 = sub_10017DA30();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v21 = self;
      v4 = "%@ queue paused";
LABEL_10:
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, v4, buf, 0xCu);
    }
  }

  else
  {
    v5 = [(FMDOperationQueue *)self requests];
    v6 = [v5 count];

    if (v6)
    {
      if ([(FMDOperationQueue *)self queueCount]== 1)
      {
        v3 = sub_10017DA30();
        if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
        {
          v7 = [(FMDOperationQueue *)self headAction];
          *buf = 138412546;
          v21 = self;
          v22 = 2112;
          v23 = v7;
          _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%@ Queue BUSY with %@", buf, 0x16u);
        }
      }

      else
      {
        v8 = [(FMDOperationQueue *)self requests];
        v9 = [v8 objectAtIndex:0];
        [(FMDOperationQueue *)self setHeadAction:v9];

        v10 = [(FMDOperationQueue *)self headAction];
        v11 = objc_opt_class();
        v12 = [(FMDOperationQueue *)self headAction];
        v3 = [NSString stringWithFormat:@"%@-%p", v11, v12];

        v13 = sub_10017DA30();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          v21 = self;
          v22 = 2112;
          v23 = v3;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%@ HEAD ACTION - %@", buf, 0x16u);
        }

        v14 = [(FMDOperationQueue *)self headAction];

        if (v14)
        {
          v15 = [(FMDOperationQueue *)self requests];
          [v15 removeObjectAtIndex:0];
        }

        v16 = [(FMDOperationQueue *)self headAction];
        v17 = [(FMDOperationQueue *)self wrapAction:v16];

        v18 = +[ActionManager sharedManager];
        v19 = [v18 enqueueAction:v17];

        [(FMDOperationQueue *)self setQueueCount:[(FMDOperationQueue *)self queueCount]+ 1];
      }
    }

    else
    {
      [(FMDOperationQueue *)self setHeadAction:0];
      v3 = sub_10017DA30();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v21 = self;
        v4 = "%@ no actions found";
        goto LABEL_10;
      }
    }
  }
}

- (id)wrapAction:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = [FMDActionDecorator alloc];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1001C3DE4;
  v8[3] = &unk_1002CD518;
  objc_copyWeak(&v9, &location);
  v6 = [(FMDActionDecorator *)v5 initWithAction:v4 usingCompletion:v8];
  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);

  return v6;
}

- (BOOL)shouldAddAction:(id)a3
{
  v4 = a3;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [(FMDOperationQueue *)self requests];
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        if ([*(*(&v12 + 1) + 8 * i) shouldCancelAction:v4])
        {
          v10 = 0;
          goto LABEL_11;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v10 = 1;
LABEL_11:

  return v10;
}

- (BOOL)replacedExsitingAction:(id)a3
{
  v4 = a3;
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v5 = [(FMDOperationQueue *)self requests];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1001C420C;
  v10[3] = &unk_1002D0E48;
  v6 = v4;
  v11 = v6;
  v12 = &v18;
  v13 = &v14;
  [v5 enumerateObjectsUsingBlock:v10];

  if (*(v15 + 24) == 1)
  {
    v7 = [(FMDOperationQueue *)self requests];
    [v7 replaceObjectAtIndex:v19[3] withObject:v6];

    v8 = *(v15 + 24);
  }

  else
  {
    v8 = 0;
  }

  _Block_object_dispose(&v14, 8);
  _Block_object_dispose(&v18, 8);

  return v8 & 1;
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = [(FMDOperationQueue *)self identifier];
  v5 = [(FMDOperationQueue *)self headAction];
  v6 = [NSString stringWithFormat:@"%@-%p-%@-%@", v3, self, v4, v5];

  return v6;
}

@end