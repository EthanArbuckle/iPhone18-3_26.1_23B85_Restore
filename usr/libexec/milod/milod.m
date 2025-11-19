uint64_t start()
{
  v0 = objc_autoreleasePoolPush();
  if (qword_100008018 != -1)
  {
    sub_1000009F8();
  }

  v1 = qword_100008020;
  if (os_log_type_enabled(qword_100008020, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "milod started", v5, 2u);
  }

  v2 = objc_opt_new();
  [v2 start];
  objc_autoreleasePoolPop(v0);
  v3 = +[NSRunLoop mainRunLoop];
  [v3 run];

  return 1;
}

void sub_1000009B4(id a1)
{
  qword_100008020 = os_log_create("com.apple.MicroLocation", "MicroLocation");

  _objc_release_x1();
}