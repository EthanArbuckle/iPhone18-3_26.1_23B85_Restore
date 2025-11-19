uint64_t start()
{
  v0 = objc_autoreleasePoolPush();
  while (!atomic_load_explicit(&RSUDefaultLog, memory_order_acquire))
  {
    __RSUAttemptLogCreationImpl();
  }

  v1 = atomic_load(&RSUDefaultLog);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "Daemon starting up...", v5, 2u);
  }

  v2 = objc_opt_new();
  v3 = qword_100008428;
  qword_100008428 = v2;

  objc_autoreleasePoolPop(v0);
  CFRunLoopRun();
  return 0;
}