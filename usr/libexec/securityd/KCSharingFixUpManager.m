@interface KCSharingFixUpManager
+ (KCSharingFixUpManager)sharedInstance;
- (KCSharingFixUpManager)init;
- (void)performFixUpOneWithStore:(id)a3 lockStateTracker:(id)a4 WithCompletion:(id)a5;
@end

@implementation KCSharingFixUpManager

- (void)performFixUpOneWithStore:(id)a3 lockStateTracker:(id)a4 WithCompletion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_100080700;
  v19[3] = &unk_100344DC8;
  v11 = v8;
  v20 = v11;
  v12 = v10;
  v21 = v12;
  v13 = [NSBlockOperation blockOperationWithBlock:v19];
  if (v9)
  {
    v14 = [v9 unlockDependency];
    [v13 addNullableDependency:v14];

    [(NSOperationQueue *)self->_fixUpOperationQueue addOperation:v13];
  }

  else
  {
    v15 = KCSharingLogObject();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *v18 = 0;
      _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Looks like we don't have lock state tracker, so skipping fixup", v18, 2u);
    }

    v22 = NSLocalizedDescriptionKey;
    v23 = @"Failed to process FixUp One";
    v16 = [NSDictionary dictionaryWithObjects:&v23 forKeys:&v22 count:1];
    v17 = [NSError errorWithDomain:@"KCSharingErrorDomain" code:44 userInfo:v16];

    (*(v12 + 2))(v12, 0, v17);
  }
}

- (KCSharingFixUpManager)init
{
  v8.receiver = self;
  v8.super_class = KCSharingFixUpManager;
  v2 = [(KCSharingFixUpManager *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(NSOperationQueue);
    fixUpOperationQueue = v2->_fixUpOperationQueue;
    v2->_fixUpOperationQueue = v3;

    v5 = KCSharingLogObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Successfully init for KCSharingFixUp Manager", v7, 2u);
    }
  }

  return v2;
}

+ (KCSharingFixUpManager)sharedInstance
{
  if (qword_10039DC20 != -1)
  {
    dispatch_once(&qword_10039DC20, &stru_100335268);
  }

  v3 = qword_10039DC28;

  return v3;
}

@end