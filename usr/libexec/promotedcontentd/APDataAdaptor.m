@interface APDataAdaptor
+ (id)dispatchQueue;
- (BOOL)_checkClassType:(id)a3 name:(id)a4 expectedClass:(Class)a5 error:(id *)a6;
- (BOOL)_requireClassType:(id)a3 name:(id)a4 expectedClass:(Class)a5 error:(id *)a6;
- (BOOL)_validateParameters:(id *)a3;
- (BOOL)addData:(id)a3;
- (void)_run:(id)a3;
- (void)clearAllData;
- (void)clearDataWithPredicate:(id)a3;
- (void)runWithParameters:(id)a3 handler:(id)a4;
- (void)runWithParametersSync:(id)a3 handler:(id)a4;
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

- (void)runWithParametersSync:(id)a3 handler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = APLogForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 138543618;
    v27 = objc_opt_class();
    v28 = 2114;
    v29 = v6;
    v9 = v27;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Running data source %{public}@ synchronously with parameters %{public}@", buf, 0x16u);
  }

  v18 = _NSConcreteStackBlock;
  v19 = 3221225472;
  v20 = sub_100217A18;
  v21 = &unk_100479198;
  v10 = dispatch_semaphore_create(0);
  v22 = v10;
  v11 = v7;
  v23 = v11;
  [(APDataAdaptor *)self runWithParameters:v6 handler:&v18];
  v12 = dispatch_time(0, 5000000000);
  if (dispatch_semaphore_wait(v10, v12))
  {
    v13 = [(APDataAdaptor *)self identifier];
    v14 = [(APDataAdaptor *)self parameters];
    v15 = [NSString stringWithFormat:@"Adaptor '%@' timed out (parameters %@)", v13, v14, v18, v19, v20, v21, v22];

    v24 = NSLocalizedDescriptionKey;
    v25 = v15;
    v16 = [NSDictionary dictionaryWithObjects:&v25 forKeys:&v24 count:1];
    v17 = [NSError errorWithDomain:@"com.apple.ap.dataadaptors" code:5205 userInfo:v16];

    (*(v11 + 2))(v11, 0, 0, v17);
  }
}

- (void)runWithParameters:(id)a3 handler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = APLogForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 138543618;
    v14 = objc_opt_class();
    v15 = 2114;
    v16 = v6;
    v9 = v14;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Running data source %{public}@ with parameters %{public}@", buf, 0x16u);
  }

  [(APDataAdaptor *)self setParameters:v6];
  v12 = 0;
  v10 = [(APDataAdaptor *)self _validateParameters:&v12];
  v11 = v12;
  if (v10)
  {
    [(APDataAdaptor *)self _run:v7];
  }

  else
  {
    (*(v7 + 2))(v7, 0, 0, v11);
  }
}

- (BOOL)addData:(id)a3
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

- (void)clearDataWithPredicate:(id)a3
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

- (BOOL)_checkClassType:(id)a3 name:(id)a4 expectedClass:(Class)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a4;
  if (v10 && (objc_opt_isKindOfClass() & 1) == 0)
  {
    if (a6)
    {
      v12 = [(APDataAdaptor *)self identifier];
      v13 = NSStringFromClass(a5);
      v14 = [NSString stringWithFormat:@"%@: parameter '%@' must be of type %@.", v12, v11, v13];

      v17 = NSLocalizedDescriptionKey;
      v18 = v14;
      v15 = [NSDictionary dictionaryWithObjects:&v18 forKeys:&v17 count:1];
      *a6 = [NSError errorWithDomain:@"com.apple.ap.dataadaptors" code:5201 userInfo:v15];

      LOBYTE(a6) = 0;
    }
  }

  else
  {
    LOBYTE(a6) = 1;
  }

  return a6;
}

- (BOOL)_requireClassType:(id)a3 name:(id)a4 expectedClass:(Class)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a4;
  if (v10)
  {
    LOBYTE(a6) = [(APDataAdaptor *)self _checkClassType:v10 name:v11 expectedClass:a5 error:a6];
  }

  else if (a6)
  {
    v12 = [(APDataAdaptor *)self identifier];
    v13 = [NSString stringWithFormat:@"%@: missing required parameter '%@'.", v12, v11];

    v16 = NSLocalizedDescriptionKey;
    v17 = v13;
    v14 = [NSDictionary dictionaryWithObjects:&v17 forKeys:&v16 count:1];
    *a6 = [NSError errorWithDomain:@"com.apple.ap.dataadaptors" code:5202 userInfo:v14];

    LOBYTE(a6) = 0;
  }

  return a6;
}

- (void)_run:(id)a3
{
  v4 = a3;
  v5 = [(APDataAdaptor *)self identifier];
  v6 = [NSString stringWithFormat:@"Adaptor '%@' does not override _run method.", v5];

  v9 = NSLocalizedDescriptionKey;
  v10 = v6;
  v7 = [NSDictionary dictionaryWithObjects:&v10 forKeys:&v9 count:1];
  v8 = [NSError errorWithDomain:@"com.apple.ap.dataadaptors" code:5206 userInfo:v7];

  (*(v4 + 2))(v4, 0, 0, v8);
}

- (BOOL)_validateParameters:(id *)a3
{
  if ([(APDataAdaptor *)self allowEmptyParameters])
  {
    return 1;
  }

  v5 = [(APDataAdaptor *)self parameters];
  v6 = [v5 count];

  if (v6)
  {
    return 1;
  }

  v8 = [(APDataAdaptor *)self identifier];
  v9 = [NSString stringWithFormat:@"Adaptor '%@' requires at least one parameter", v8];

  if (a3)
  {
    v11 = NSLocalizedDescriptionKey;
    v12 = v9;
    v10 = [NSDictionary dictionaryWithObjects:&v12 forKeys:&v11 count:1];
    *a3 = [NSError errorWithDomain:@"com.apple.ap.dataadaptors" code:5202 userInfo:v10];
  }

  return 0;
}

@end