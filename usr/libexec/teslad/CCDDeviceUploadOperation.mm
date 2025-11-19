@interface CCDDeviceUploadOperation
- (void)completeOperationWithResponse:(id)a3 error:(id)a4;
@end

@implementation CCDDeviceUploadOperation

- (void)completeOperationWithResponse:(id)a3 error:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CCDDeviceUploadOperation *)self deviceUploadCompletionBlock];

  if (v8)
  {
    if (v7)
    {
      v9 = *(DEPLogObjects() + 8);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v12 = 138412290;
        v13 = v7;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Error: %@", &v12, 0xCu);
      }
    }

    v10 = [(CCDDeviceUploadOperation *)self deviceUploadCompletionBlock];
    (v10)[2](v10, v6, v7);
  }

  else
  {
    v11 = *(DEPLogObjects() + 8);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v12) = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "No completion block, canceling operation", &v12, 2u);
    }

    [(CCDDeviceUploadOperation *)self cancel];
  }
}

@end