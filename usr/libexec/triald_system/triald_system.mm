uint64_t start()
{
  v0 = objc_autoreleasePoolPush();
  if ((_set_user_dir_suffix() & 1) == 0 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    v4 = *__error();
    v5[0] = 67109120;
    v5[1] = v4;
    _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Unable to set private sandbox for com.apple.triald.system, errno: %d", v5, 8u);
  }

  v1 = NSTemporaryDirectory();
  v2 = TRILogCategory_Server();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v5[0]) = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "triald_system started", v5, 2u);
  }

  TRIDSystemServerRun();
  objc_autoreleasePoolPop(v0);
  return 0;
}