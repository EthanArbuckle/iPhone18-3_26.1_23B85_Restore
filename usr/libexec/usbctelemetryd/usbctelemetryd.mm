void sub_100001918(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

uint64_t start()
{
  v0 = objc_autoreleasePoolPush();
  v1 = os_log_create("com.apple.usbctelemetryd", "Analytics");
  v2 = IOServiceMatching("AppleHPMARM");
  existing = 0;
  IOServiceGetMatchingServices(kIOMainPortDefault, v2, &existing);
  v3 = IOIteratorNext(existing);
  if (v3)
  {
    v4 = v3;
    do
    {
      v5 = [AppleHPM createWithBusService:v4 andLogger:v1];
      v6 = v5;
      if (v5)
      {
        [v5 collectAllAnalytics];
        v7 = [v6 getEventName];
        v8 = [v6 _analyticsDict];
        AnalyticsSendEvent();
      }

      IOObjectRelease(v4);
      v4 = IOIteratorNext(existing);
    }

    while (v4);
  }

  IOObjectRelease(existing);

  objc_autoreleasePoolPop(v0);
  return 0;
}