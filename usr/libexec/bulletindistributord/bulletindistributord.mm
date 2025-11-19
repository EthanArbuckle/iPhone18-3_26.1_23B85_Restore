uint64_t start()
{
  v0 = objc_autoreleasePoolPush();
  v1 = dispatch_get_global_queue(0, 0);
  signal(15, 1);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100000A68;
  block[3] = &unk_100004138;
  v7 = v1;
  v2 = qword_100008028;
  v3 = v1;
  if (v2 != -1)
  {
    dispatch_once(&qword_100008028, block);
  }

  v4 = BLTWorkQueue();
  dispatch_async(v4, &stru_1000040F0);

  objc_autoreleasePoolPop(v0);
  CFRunLoopRun();
  return 0;
}

void sub_1000009E0(id a1)
{
  v1 = +[BLTBulletinDistributor sharedDistributor];
  v2 = qword_100008018;
  qword_100008018 = v1;

  v4 = +[BLTTestServiceServer sharedTestServer];
  [v4 resume];
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(DarwinNotifyCenter, BLTDaemonRestartedNotification, 0, 0, 1u);
}

void sub_100000A68(uint64_t a1)
{
  v1 = dispatch_source_create(&_dispatch_source_type_signal, 0xFuLL, 0, *(a1 + 32));
  v2 = qword_100008020;
  qword_100008020 = v1;

  dispatch_source_set_event_handler(qword_100008020, &stru_100004110);
  v3 = qword_100008020;

  dispatch_activate(v3);
}