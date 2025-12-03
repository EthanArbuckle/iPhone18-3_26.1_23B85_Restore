@interface CCDDeviceUploadOperation
- (void)completeOperationWithResponse:(id)response error:(id)error;
@end

@implementation CCDDeviceUploadOperation

- (void)completeOperationWithResponse:(id)response error:(id)error
{
  responseCopy = response;
  errorCopy = error;
  deviceUploadCompletionBlock = [(CCDDeviceUploadOperation *)self deviceUploadCompletionBlock];

  if (deviceUploadCompletionBlock)
  {
    if (errorCopy)
    {
      v9 = *(DEPLogObjects() + 8);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v12 = 138412290;
        v13 = errorCopy;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Error: %@", &v12, 0xCu);
      }
    }

    deviceUploadCompletionBlock2 = [(CCDDeviceUploadOperation *)self deviceUploadCompletionBlock];
    (deviceUploadCompletionBlock2)[2](deviceUploadCompletionBlock2, responseCopy, errorCopy);
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