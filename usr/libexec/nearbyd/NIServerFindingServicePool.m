@interface NIServerFindingServicePool
+ (id)sharedInstance;
- (NIServerFindingServicePool)init;
- (id).cxx_construct;
- (id)allServicesPrintableState;
- (id)serviceForToken:(id)a3 createIfNotExists:(BOOL)a4;
- (id)servicePoolPrintableState;
- (void)logSessionEvent:(id)a3;
- (void)logSessionSummary:(id)a3;
- (void)setService:(id)a3 forToken:(id)a4;
@end

@implementation NIServerFindingServicePool

- (NIServerFindingServicePool)init
{
  v9.receiver = self;
  v9.super_class = NIServerFindingServicePool;
  v2 = [(NIServerFindingServicePool *)&v9 init];
  if (v2)
  {
    v3 = objc_opt_new();
    v4 = *(v2 + 1);
    *(v2 + 1) = v3;

    sub_1002181C0(v2 + 2, 0x3CuLL);
    sub_1002181C0(v2 + 8, 6uLL);
    *(v2 + 60) = 0;
    if (+[NIPlatformInfo isInternalBuild](NIPlatformInfo, "isInternalBuild") || (+[NSUserDefaults standardUserDefaults](NSUserDefaults, "standardUserDefaults"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 BOOLForKey:@"EnableStateDump"], v5, v6))
    {
      v8 = v2;
      os_state_add_handler();
    }
  }

  return v2;
}

+ (id)sharedInstance
{
  if (qword_1009F2598 != -1)
  {
    sub_1004AFC74();
  }

  v3 = qword_1009F2590;

  return v3;
}

- (void)setService:(id)a3 forToken:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    std::mutex::lock((self + 112));
    if (!v6)
    {
      v11 = qword_1009F9820;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
      {
        v13 = 138543362;
        v14 = v7;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#find-ses,FindingServicePool remove service for token: %{public}@", &v13, 0xCu);
      }

      [*(self + 1) removeObjectForKey:v7];
      goto LABEL_13;
    }

    v8 = [*(self + 1) objectForKeyedSubscript:v7];

    if (v8)
    {
      v9 = [*(self + 1) objectForKeyedSubscript:v7];
      v10 = [v9 isEqual:v6];

      if (v10)
      {
LABEL_13:
        std::mutex::unlock((self + 112));
        goto LABEL_14;
      }

      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_FAULT))
      {
        sub_1004AFC88();
      }
    }

    else
    {
      v12 = qword_1009F9820;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
      {
        v13 = 138543362;
        v14 = v7;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#find-ses,FindingServicePool replace nil service for token: %{public}@. Race condition (OK)", &v13, 0xCu);
      }
    }

    [*(self + 1) setObject:v6 forKey:v7];
    goto LABEL_13;
  }

LABEL_14:
}

- (id)serviceForToken:(id)a3 createIfNotExists:(BOOL)a4
{
  v6 = a3;
  std::mutex::lock((self + 112));
  if (a4)
  {
    v7 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v17 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#find-ses,FindingServicePool provide service for token: %{public}@", buf, 0xCu);
    }

    v8 = (self + 8);
    v9 = [*(self + 1) objectForKeyedSubscript:v6];
    v10 = v9 == 0;

    if (v10)
    {
      v11 = *(self + 60);
      *(self + 60) = v11 + 1;
      v12 = [NSString stringWithFormat:@"com.apple.nearbyd.finding.service-%d", v11];
      if (*(self + 60) >= 100)
      {
        *(self + 60) = 0;
      }

      v13 = [[NIServerFindingService alloc] initWithLabel:v12];
      [*v8 setObject:v13 forKeyedSubscript:v6];
    }
  }

  else
  {
    v8 = (self + 8);
  }

  v14 = [*v8 objectForKeyedSubscript:v6];
  std::mutex::unlock((self + 112));

  return v14;
}

- (void)logSessionEvent:(id)a3
{
  v4 = a3;
  std::mutex::lock((self + 176));
  sub_1003466C0(v4, self + 2);
  std::mutex::unlock((self + 176));
}

- (void)logSessionSummary:(id)a3
{
  v4 = a3;
  std::mutex::lock((self + 176));
  sub_1003466C0(v4, self + 8);
  std::mutex::unlock((self + 176));
}

- (id)servicePoolPrintableState
{
  v3 = objc_opt_new();
  std::mutex::lock((self + 112));
  v4 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"Active sessions (%d)", [*(self + 1) count]);
  [v3 addObject:v4];

  v5 = [*(self + 1) allKeys];
  v6 = sub_100346A18(v5, 10, 1);
  [v3 addObjectsFromArray:v6];

  std::mutex::unlock((self + 112));
  v7 = +[NIServerFindingServiceObserverRelay sharedInstance];
  v8 = [v7 observerTokens];

  v9 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"Observers (%d)", [v8 count]);
  [v3 addObject:v9];

  v10 = sub_100346A18(v8, 10, 1);
  [v3 addObjectsFromArray:v10];

  std::mutex::lock((self + 176));
  v11 = [NSString stringWithFormat:@"Session summaries (max %d)", *(self + 13)];
  [v3 addObject:v11];

  v12 = *(self + 9);
  if (*(self + 10) != v12)
  {
    v13 = *(self + 12);
    v14 = *(v12 + 8 * (v13 / 0xAA)) + 24 * (v13 % 0xAA);
    v15 = *(v12 + 8 * ((*(self + 13) + v13) / 0xAA)) + 24 * ((*(self + 13) + v13) % 0xAA);
    if (v14 != v15)
    {
      v35 = v8;
      v16 = 0;
      v17 = (v12 + 8 * (v13 / 0xAA));
      do
      {
        if (*(v14 + 23) < 0)
        {
          sub_1000056BC(__p, *v14, *(v14 + 8));
        }

        else
        {
          v18 = *v14;
          v37 = *(v14 + 16);
          *__p = v18;
        }

        v19 = HIBYTE(v37);
        v20 = HIBYTE(v37);
        if (v37 < 0)
        {
          v19 = __p[1];
        }

        if (v19)
        {
          [v3 addObject:@"-----"];
          if (v37 >= 0)
          {
            v21 = __p;
          }

          else
          {
            v21 = __p[0];
          }

          v22 = [NSString stringWithFormat:@"%s", v21];
          [v3 addObject:v22];

          v16 = 1;
          v20 = HIBYTE(v37);
        }

        if (v20 < 0)
        {
          operator delete(__p[0]);
        }

        v14 += 24;
        if (v14 - *v17 == 4080)
        {
          v23 = v17[1];
          ++v17;
          v14 = v23;
        }
      }

      while (v14 != v15);
      v8 = v35;
      if (v16)
      {
        [v3 addObject:@"-----"];
      }
    }
  }

  v24 = [NSString stringWithFormat:@"Session events (max %d)", *(self + 7)];
  [v3 addObject:v24];

  v25 = *(self + 3);
  if (*(self + 4) != v25)
  {
    v26 = *(self + 6);
    v27 = *(v25 + 8 * (v26 / 0xAA)) + 24 * (v26 % 0xAA);
    v28 = *(v25 + 8 * ((*(self + 7) + v26) / 0xAA)) + 24 * ((*(self + 7) + v26) % 0xAA);
    if (v27 != v28)
    {
      v29 = (v25 + 8 * (v26 / 0xAA));
      do
      {
        if (*(v27 + 23) < 0)
        {
          sub_1000056BC(__p, *v27, *(v27 + 8));
        }

        else
        {
          v30 = *v27;
          v37 = *(v27 + 16);
          *__p = v30;
        }

        if (SHIBYTE(v37) < 0)
        {
          if (!__p[1])
          {
            goto LABEL_33;
          }

          v31 = __p[0];
        }

        else
        {
          if (!HIBYTE(v37))
          {
            goto LABEL_34;
          }

          v31 = __p;
        }

        v32 = [NSString stringWithFormat:@"    %s", v31];
        [v3 addObject:v32];

        if (SHIBYTE(v37) < 0)
        {
LABEL_33:
          operator delete(__p[0]);
        }

LABEL_34:
        v27 += 24;
        if (v27 - *v29 == 4080)
        {
          v33 = v29[1];
          ++v29;
          v27 = v33;
        }
      }

      while (v27 != v28);
    }
  }

  std::mutex::unlock((self + 176));

  return v3;
}

- (id)allServicesPrintableState
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_100241B3C;
  v11 = sub_100241B4C;
  v12 = objc_opt_new();
  std::mutex::lock((self + 112));
  v3 = *(self + 1);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100241B54;
  v6[3] = &unk_1009A0300;
  v6[4] = &v7;
  [v3 enumerateKeysAndObjectsUsingBlock:v6];
  std::mutex::unlock((self + 112));
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (id).cxx_construct
{
  *(self + 5) = 0u;
  *(self + 6) = 0u;
  *(self + 3) = 0u;
  *(self + 4) = 0u;
  *(self + 1) = 0u;
  *(self + 2) = 0u;
  *(self + 14) = 850045863;
  *(self + 120) = 0u;
  *(self + 136) = 0u;
  *(self + 152) = 0u;
  *(self + 21) = 0;
  *(self + 22) = 850045863;
  *(self + 184) = 0u;
  *(self + 200) = 0u;
  *(self + 216) = 0u;
  *(self + 29) = 0;
  return self;
}

@end