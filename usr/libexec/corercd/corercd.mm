uint64_t start()
{
  v0 = objc_autoreleasePoolPush();
  v1 = objc_opt_new();
  if (gLogCategory_CoreRC <= 40 && (gLogCategory_CoreRC != -1 || _LogCategory_Initialize()))
  {
    sub_100000978();
  }

  inactive = dispatch_workloop_create_inactive("corercd - Workloop");
  if (inactive)
  {
    v3 = inactive;
    dispatch_workloop_set_scheduler_priority();
    dispatch_activate(v3);
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_10000096C;
    v5[3] = &unk_100004088;
    v5[4] = v1;
    v5[5] = v3;
    dispatch_async(v3, v5);

    dispatch_main();
  }

  sub_100000998(v1, v0);
  return 1;
}

void sub_100000998(void *a1, void *a2)
{
  if (gLogCategory_CoreRC <= 120 && (gLogCategory_CoreRC != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  [a1 invalidate];

  objc_autoreleasePoolPop(a2);
}