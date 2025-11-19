uint64_t start()
{
  v0 = objc_autoreleasePoolPush();
  [@"com.apple.metrickitd" UTF8String];
  _set_user_dir_suffix();
  v1 = +[MXCore sharedCore];
  if (v1)
  {
    do
    {
      v2 = +[NSRunLoop currentRunLoop];
      v3 = +[NSDate distantFuture];
      v4 = [v2 runMode:NSDefaultRunLoopMode beforeDate:v3];
    }

    while ((v4 & 1) != 0);
    v5 = 0;
  }

  else
  {
    NSLog(@"Failed to start core");
    v5 = 1;
  }

  objc_autoreleasePoolPop(v0);
  return v5;
}