@interface CMAPrecisionFindingManagerAdapter
- (CMAPrecisionFindingManagerAdapter)initWithFindingManager:(void *)a3;
- (void)didUpdateAnalytics:(id)a3 withError:(id)a4;
- (void)didUpdatePreciseDevicePosition:(id)a3 withError:(id)a4;
@end

@implementation CMAPrecisionFindingManagerAdapter

- (CMAPrecisionFindingManagerAdapter)initWithFindingManager:(void *)a3
{
  v5.receiver = self;
  v5.super_class = CMAPrecisionFindingManagerAdapter;
  result = [(CMAPrecisionFindingManagerAdapter *)&v5 init];
  if (result)
  {
    result->_manager = a3;
  }

  return result;
}

- (void)didUpdatePreciseDevicePosition:(id)a3 withError:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    v8 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_INFO))
    {
      v10 = 138412290;
      v11 = v7;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "#findalgs-watchfindingcontainer,didUpdatePreciseDevicePosition failed with error: %@", &v10, 0xCu);
    }
  }

  else
  {
    manager = self->_manager;
    if (manager)
    {
      (*(*manager + 400))(manager, v6);
    }

    else if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004CB140();
    }
  }
}

- (void)didUpdateAnalytics:(id)a3 withError:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    v8 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_INFO))
    {
      v10 = 138412290;
      v11 = v7;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "#findalgs-watchfindingcontainer,didUpdateAnalytics failed with error: %@", &v10, 0xCu);
    }
  }

  else
  {
    manager = self->_manager;
    if (manager)
    {
      (*(*manager + 408))(manager, v6);
    }

    else if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004CB180();
    }
  }
}

@end