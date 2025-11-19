uint64_t start()
{
  v0 = objc_autoreleasePoolPush();
  if ((_set_user_dir_suffix() & 1) == 0 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    v3 = *__error();
    v4[0] = 67109120;
    v4[1] = v3;
    _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Unable to set private sandbox for com.apple.triald, errno: %d", v4, 8u);
  }

  v1 = NSTemporaryDirectory();
  objc_autoreleasePoolPop(v0);
  TRIDServerRun();
  return 0;
}

void sub_100000C9C(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = objc_opt_class();
  InstanceMethod = class_getInstanceMethod(v4, "descriptionWithLocale:");
  if (!InstanceMethod)
  {
    v7 = +[NSAssertionHandler currentHandler];
    [v7 handleFailureInMethod:*(a1 + 40) object:*(a1 + 32) file:@"TRIDaemonScopedSwizzling.m" lineNumber:28 description:@"failed to lookup -[NSDate descriptionWithLocale:]"];
  }

  v6 = class_getInstanceMethod(v4, "tri_memoryFriendlyDescriptionWithLocale:");
  if (!v6)
  {
    v8 = +[NSAssertionHandler currentHandler];
    [v8 handleFailureInMethod:*(a1 + 40) object:*(a1 + 32) file:@"TRIDaemonScopedSwizzling.m" lineNumber:30 description:@"failed to lookup -[NSDate tri_memoryFriendlyDescriptionWithLocale:]"];
  }

  method_exchangeImplementations(InstanceMethod, v6);

  objc_autoreleasePoolPop(v2);
}

id sub_100000F5C(uint64_t a1)
{
  v2 = [*(a1 + 32) tri_memoryFriendlyDescriptionWithLocale:*(a1 + 40)];
  if (!v2)
  {
    v4 = +[NSAssertionHandler currentHandler];
    [v4 handleFailureInMethod:*(a1 + 48) object:*(a1 + 32) file:@"TRIDaemonScopedSwizzling.m" lineNumber:53 description:{@"Expression was unexpectedly nil/false: %@", @"[self tri_memoryFriendlyDescriptionWithLocale:locale]"}];
  }

  return v2;
}