@interface APDataAdaptor
+ (id)dispatchQueue;
- (BOOL)_checkClassType:(id)type name:(id)name expectedClass:(Class)class error:(id *)error;
- (BOOL)_requireClassType:(id)type name:(id)name expectedClass:(Class)class error:(id *)error;
- (BOOL)_validateParameters:(id *)parameters;
- (BOOL)addData:(id)data;
- (void)_run:(id)_run;
- (void)clearAllData;
- (void)clearDataWithPredicate:(id)predicate;
- (void)runWithParameters:(id)parameters handler:(id)handler;
- (void)runWithParametersSync:(id)sync handler:(id)handler;
@end

@implementation APDataAdaptor

+ (id)dispatchQueue
{
  if (qword_1004DF608 != -1)
  {
    sub_100393904();
  }

  v3 = qword_1004DF600;

  return v3;
}

- (void)runWithParametersSync:(id)sync handler:(id)handler
{
  syncCopy = sync;
  handlerCopy = handler;
  v8 = APLogForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 138543618;
    v27 = objc_opt_class();
    v28 = 2114;
    v29 = syncCopy;
    v9 = v27;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Running data source %{public}@ synchronously with parameters %{public}@", buf, 0x16u);
  }

  v18 = _NSConcreteStackBlock;
  v19 = 3221225472;
  v20 = sub_100217A18;
  v21 = &unk_100479198;
  v10 = dispatch_semaphore_create(0);
  v22 = v10;
  v11 = handlerCopy;
  v23 = v11;
  [(APDataAdaptor *)self runWithParameters:syncCopy handler:&v18];
  v12 = dispatch_time(0, 5000000000);
  if (dispatch_semaphore_wait(v10, v12))
  {
    identifier = [(APDataAdaptor *)self identifier];
    parameters = [(APDataAdaptor *)self parameters];
    v15 = [NSString stringWithFormat:@"Adaptor '%@' timed out (parameters %@)", identifier, parameters, v18, v19, v20, v21, v22];

    v24 = NSLocalizedDescriptionKey;
    v25 = v15;
    v16 = [NSDictionary dictionaryWithObjects:&v25 forKeys:&v24 count:1];
    v17 = [NSError errorWithDomain:@"com.apple.ap.dataadaptors" code:5205 userInfo:v16];

    (*(v11 + 2))(v11, 0, 0, v17);
  }
}

- (void)runWithParameters:(id)parameters handler:(id)handler
{
  parametersCopy = parameters;
  handlerCopy = handler;
  v8 = APLogForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 138543618;
    v14 = objc_opt_class();
    v15 = 2114;
    v16 = parametersCopy;
    v9 = v14;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Running data source %{public}@ with parameters %{public}@", buf, 0x16u);
  }

  [(APDataAdaptor *)self setParameters:parametersCopy];
  v12 = 0;
  v10 = [(APDataAdaptor *)self _validateParameters:&v12];
  v11 = v12;
  if (v10)
  {
    [(APDataAdaptor *)self _run:handlerCopy];
  }

  else
  {
    (*(handlerCopy + 2))(handlerCopy, 0, 0, v11);
  }
}

- (BOOL)addData:(id)data
{
  v3 = APLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    v7 = 138412290;
    v8 = v5;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "DataAdaptor %@ does not support addition.", &v7, 0xCu);
  }

  return 0;
}

- (void)clearAllData
{
  v2 = APLogForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v3 = objc_opt_class();
    v4 = NSStringFromClass(v3);
    v5 = 138412290;
    v6 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "DataAdaptor %@ does not support deletion.", &v5, 0xCu);
  }
}

- (void)clearDataWithPredicate:(id)predicate
{
  v3 = APLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    v6 = 138412290;
    v7 = v5;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "DataAdaptor %@ does not support deletion.", &v6, 0xCu);
  }
}

- (BOOL)_checkClassType:(id)type name:(id)name expectedClass:(Class)class error:(id *)error
{
  typeCopy = type;
  nameCopy = name;
  if (typeCopy && (objc_opt_isKindOfClass() & 1) == 0)
  {
    if (error)
    {
      identifier = [(APDataAdaptor *)self identifier];
      v13 = NSStringFromClass(class);
      v14 = [NSString stringWithFormat:@"%@: parameter '%@' must be of type %@.", identifier, nameCopy, v13];

      v17 = NSLocalizedDescriptionKey;
      v18 = v14;
      v15 = [NSDictionary dictionaryWithObjects:&v18 forKeys:&v17 count:1];
      *error = [NSError errorWithDomain:@"com.apple.ap.dataadaptors" code:5201 userInfo:v15];

      LOBYTE(error) = 0;
    }
  }

  else
  {
    LOBYTE(error) = 1;
  }

  return error;
}

- (BOOL)_requireClassType:(id)type name:(id)name expectedClass:(Class)class error:(id *)error
{
  typeCopy = type;
  nameCopy = name;
  if (typeCopy)
  {
    LOBYTE(error) = [(APDataAdaptor *)self _checkClassType:typeCopy name:nameCopy expectedClass:class error:error];
  }

  else if (error)
  {
    identifier = [(APDataAdaptor *)self identifier];
    nameCopy = [NSString stringWithFormat:@"%@: missing required parameter '%@'.", identifier, nameCopy];

    v16 = NSLocalizedDescriptionKey;
    v17 = nameCopy;
    v14 = [NSDictionary dictionaryWithObjects:&v17 forKeys:&v16 count:1];
    *error = [NSError errorWithDomain:@"com.apple.ap.dataadaptors" code:5202 userInfo:v14];

    LOBYTE(error) = 0;
  }

  return error;
}

- (void)_run:(id)_run
{
  _runCopy = _run;
  identifier = [(APDataAdaptor *)self identifier];
  v6 = [NSString stringWithFormat:@"Adaptor '%@' does not override _run method.", identifier];

  v9 = NSLocalizedDescriptionKey;
  v10 = v6;
  v7 = [NSDictionary dictionaryWithObjects:&v10 forKeys:&v9 count:1];
  v8 = [NSError errorWithDomain:@"com.apple.ap.dataadaptors" code:5206 userInfo:v7];

  (*(_runCopy + 2))(_runCopy, 0, 0, v8);
}

- (BOOL)_validateParameters:(id *)parameters
{
  if ([(APDataAdaptor *)self allowEmptyParameters])
  {
    return 1;
  }

  parameters = [(APDataAdaptor *)self parameters];
  v6 = [parameters count];

  if (v6)
  {
    return 1;
  }

  identifier = [(APDataAdaptor *)self identifier];
  v9 = [NSString stringWithFormat:@"Adaptor '%@' requires at least one parameter", identifier];

  if (parameters)
  {
    v11 = NSLocalizedDescriptionKey;
    v12 = v9;
    v10 = [NSDictionary dictionaryWithObjects:&v12 forKeys:&v11 count:1];
    *parameters = [NSError errorWithDomain:@"com.apple.ap.dataadaptors" code:5202 userInfo:v10];
  }

  return 0;
}

@end