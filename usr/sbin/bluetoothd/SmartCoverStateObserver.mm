@interface SmartCoverStateObserver
- (SmartCoverStateObserver)init;
- (void)smartCoverStateDidChange:(int64_t)a3;
@end

@implementation SmartCoverStateObserver

- (void)smartCoverStateDidChange:(int64_t)a3
{
  v4 = sub_100017F4C();
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1004A1AB8;
  v5[3] = &unk_100ADF8F8;
  v5[4] = a3;
  sub_10000CA94(v4, v5);
}

- (SmartCoverStateObserver)init
{
  v18 = 0;
  v19 = &v18;
  v20 = 0x2050000000;
  v3 = qword_100B6E808;
  v21 = qword_100B6E808;
  if (!qword_100B6E808)
  {
    *buf = _NSConcreteStackBlock;
    v14 = 3221225472;
    v15 = sub_1004AB708;
    v16 = &unk_100AE1120;
    v17 = &v18;
    sub_1004AB708(buf);
    v3 = v19[3];
  }

  v4 = v3;
  _Block_object_dispose(&v18, 8);
  if (v3)
  {
    v12.receiver = self;
    v12.super_class = SmartCoverStateObserver;
    v5 = [(SmartCoverStateObserver *)&v12 init];
    if (v5)
    {
      v6 = [v3 sharedInstance];
      v7 = [v6 registerSmartCoverStateObserver:v5];
      observability = v5->observability;
      v5->observability = v7;

      if (!v5->observability && os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
      {
        sub_1008315A8();
      }
    }

    self = v5;
    v9 = self;
  }

  else
  {
    v10 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "SpringBoardServices framework is missing", buf, 2u);
    }

    v9 = 0;
  }

  return v9;
}

@end