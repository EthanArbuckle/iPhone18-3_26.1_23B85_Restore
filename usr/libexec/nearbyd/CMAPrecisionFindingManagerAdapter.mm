@interface CMAPrecisionFindingManagerAdapter
- (CMAPrecisionFindingManagerAdapter)initWithFindingManager:(void *)manager;
- (void)didUpdateAnalytics:(id)analytics withError:(id)error;
- (void)didUpdatePreciseDevicePosition:(id)position withError:(id)error;
@end

@implementation CMAPrecisionFindingManagerAdapter

- (CMAPrecisionFindingManagerAdapter)initWithFindingManager:(void *)manager
{
  v5.receiver = self;
  v5.super_class = CMAPrecisionFindingManagerAdapter;
  result = [(CMAPrecisionFindingManagerAdapter *)&v5 init];
  if (result)
  {
    result->_manager = manager;
  }

  return result;
}

- (void)didUpdatePreciseDevicePosition:(id)position withError:(id)error
{
  positionCopy = position;
  errorCopy = error;
  if (errorCopy)
  {
    v8 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_INFO))
    {
      v10 = 138412290;
      v11 = errorCopy;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "#findalgs-watchfindingcontainer,didUpdatePreciseDevicePosition failed with error: %@", &v10, 0xCu);
    }
  }

  else
  {
    manager = self->_manager;
    if (manager)
    {
      (*(*manager + 400))(manager, positionCopy);
    }

    else if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004CB140();
    }
  }
}

- (void)didUpdateAnalytics:(id)analytics withError:(id)error
{
  analyticsCopy = analytics;
  errorCopy = error;
  if (errorCopy)
  {
    v8 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_INFO))
    {
      v10 = 138412290;
      v11 = errorCopy;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "#findalgs-watchfindingcontainer,didUpdateAnalytics failed with error: %@", &v10, 0xCu);
    }
  }

  else
  {
    manager = self->_manager;
    if (manager)
    {
      (*(*manager + 408))(manager, analyticsCopy);
    }

    else if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004CB180();
    }
  }
}

@end