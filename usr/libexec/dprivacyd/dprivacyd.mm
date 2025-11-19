uint64_t start()
{
  v0 = objc_autoreleasePoolPush();
  v1 = objc_opt_new();
  [v1 start];

  objc_autoreleasePoolPop(v0);
  return 0;
}