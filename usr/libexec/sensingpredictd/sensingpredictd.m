void start()
{
  v0 = objc_autoreleasePoolPush();
  LogControl();
  if (dword_100008000 <= 30 && (dword_100008000 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  objc_autoreleasePoolPop(v0);
  dispatch_main();
}