uint64_t start()
{
  v0 = objc_autoreleasePoolPush();
  _set_user_dir_suffix();
  WBSSetUpAccessToAppDataContainerWithIdentifier();
  v1 = objc_alloc_init(WBSPasswordBreachHelperListener);
  v2 = qword_100008000;
  qword_100008000 = v1;

  v3 = objc_alloc_init(WBSPasswordBreachPeriodicLookupActivity);
  v4 = qword_100008008;
  qword_100008008 = v3;

  objc_autoreleasePoolPop(v0);
  WBSRunLoopRunUntilTerminationSignal();
  return 0;
}