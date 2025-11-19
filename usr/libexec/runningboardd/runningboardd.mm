uint64_t start()
{
  v0 = objc_autoreleasePoolPush();
  +[RBDaemon run];
  objc_autoreleasePoolPop(v0);
  CFRunLoopRun();
  return 0;
}