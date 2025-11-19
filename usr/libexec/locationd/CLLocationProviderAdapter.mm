@interface CLLocationProviderAdapter
- (BOOL)syncgetLocation:(id *)a3;
- (BOOL)syncgetLocationPrivate:(void *)a3;
- (BOOL)syncgetLocationUnavailable;
- (BOOL)syncgetNotification:(const int *)a3 data:(void *)a4;
- (id)syncgetName;
- (void)fetchLocationWithReply:(id)a3;
- (void)locationProvider;
- (void)register:(id)a3 forNotification:(int)a4 distanceFilter:(double)a5;
- (void)sendSimulatedLocation:(id)a3;
- (void)sendSimulatedLocationUnavailable;
- (void)setSimulationEnabled:(BOOL)a3;
- (void)shutdown;
- (void)start;
- (void)updateNotification:(int)a3 withRegistrationInfo:(id)a4 forClient:(id)a5;
@end

@implementation CLLocationProviderAdapter

- (void)locationProvider
{
  result = [(CLNotifierServiceAdapter *)self notifier];
  if (result)
  {
  }

  return result;
}

- (void)updateNotification:(int)a3 withRegistrationInfo:(id)a4 forClient:(id)a5
{
  v8 = sub_100044180(a4);
  if (v8)
  {
    v9 = v8;
    v10 = [(CLNotifierServiceAdapter *)self notifierClientNumForCoparty:a5];
    v11 = [(CLLocationProviderAdapter *)self locationProvider];
    v12 = v11;
    v14 = a3;
    if (!v11 || ((*(*v11 + 216))(v11, v10, &v14, v9) & 1) == 0)
    {
      if (qword_1025D4600 != -1)
      {
        sub_10190651C();
      }

      v13 = qword_1025D4608;
      if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
      {
        *buf = 134218240;
        v16 = v12;
        v17 = 1024;
        v18 = v10;
        _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_DEBUG, "LocationProvider,Failed to updateRegistrationInfoForClient %p (%d)", buf, 0x12u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101906544();
      }
    }
  }
}

- (void)register:(id)a3 forNotification:(int)a4 distanceFilter:(double)a5
{
  v13 = a5;
  v7 = [(CLNotifierServiceAdapter *)self notifierClientNumForCoparty:a3];
  v8 = [(CLLocationProviderAdapter *)self locationProvider];
  v9 = v8;
  v12 = a4;
  if (!v8 || ((*(*v8 + 224))(v8, v7, &v12, &v13) & 1) == 0)
  {
    if (qword_1025D4600 != -1)
    {
      sub_10190651C();
    }

    v10 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_FAULT))
    {
      *buf = 134349824;
      v23 = v9;
      v24 = 1026;
      v25 = v7;
      v26 = 1026;
      v27 = a4;
      v28 = 2050;
      v29 = v13;
      _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_FAULT, "LocationProvider,Failed to registerForFilteredLocation %{public}p (%{public}d, %{public}d, %{public}f)", buf, 0x22u);
    }

    if (sub_10000A100(121, 0))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4600 != -1)
      {
        sub_10190651C();
      }

      v14 = 134349824;
      v15 = v9;
      v16 = 1026;
      v17 = v7;
      v18 = 1026;
      v19 = a4;
      v20 = 2050;
      v21 = v13;
      v11 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 0, "[CLLocationProviderAdapter register:forNotification:distanceFilter:]", "%s\n", v11);
      if (v11 != buf)
      {
        free(v11);
      }
    }
  }
}

- (void)start
{
  if ([(CLLocationProviderAdapter *)self locationProvider])
  {
    v3 = *(*[(CLLocationProviderAdapter *)self locationProvider]+ 208);

    v3();
  }
}

- (void)shutdown
{
  if ([(CLLocationProviderAdapter *)self locationProvider])
  {
    v3 = *(*[(CLLocationProviderAdapter *)self locationProvider]+ 16);

    v3();
  }
}

- (void)setSimulationEnabled:(BOOL)a3
{
  if ([(CLLocationProviderAdapter *)self locationProvider])
  {
    v4 = *(*[(CLLocationProviderAdapter *)self locationProvider]+ 280);

    v4();
  }
}

- (void)sendSimulatedLocation:(id)a3
{
  [objc_msgSend(a3 gnssOdometerInfo];
  v21[0] = v5;
  [objc_msgSend(a3 "gnssOdometerInfo")];
  v21[1] = v6;
  [objc_msgSend(a3 "gnssOdometerInfo")];
  v21[2] = v7;
  [a3 trustedTimestamp];
  v21[3] = v8;
  v9 = [(CLLocationProviderAdapter *)self locationProvider];
  if (a3)
  {
    [a3 clientLocation];
  }

  else
  {
    v17 = 0u;
    memset(v18, 0, 28);
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v10 = 0u;
  }

  v19[4] = v14;
  v19[5] = v15;
  v19[2] = v12;
  v19[3] = v13;
  *(v20 + 12) = *(v18 + 12);
  v19[7] = v17;
  v20[0] = v18[0];
  v19[6] = v16;
  v19[0] = v10;
  v19[1] = v11;
  (*(*v9 + 264))(v9, v19, v21);
  if (v22)
  {
    sub_100008080(v22);
  }
}

- (void)sendSimulatedLocationUnavailable
{
  v2 = *(*[(CLLocationProviderAdapter *)self locationProvider]+ 272);

  v2();
}

- (BOOL)syncgetNotification:(const int *)a3 data:(void *)a4
{
  v4 = *(*[(CLLocationProviderAdapter *)self locationProvider]+ 128);

  return v4();
}

- (BOOL)syncgetLocation:(id *)a3
{
  v3 = *(*[(CLLocationProviderAdapter *)self locationProvider]+ 232);

  return v3();
}

- (BOOL)syncgetLocationPrivate:(void *)a3
{
  v3 = *(*[(CLLocationProviderAdapter *)self locationProvider]+ 240);

  return v3();
}

- (void)fetchLocationWithReply:(id)a3
{
  *v11 = 0xFFFF;
  *&v11[4] = 0uLL;
  *&v11[20] = xmmword_101C75BF0;
  __asm { FMOV            V0.2D, #-1.0 }

  *&v11[36] = _Q0;
  *&v11[52] = _Q0;
  *&v11[68] = _Q0;
  *&v11[84] = 0;
  *&v11[88] = 0xBFF0000000000000;
  v12 = 0uLL;
  LODWORD(v13) = 0;
  *(&v13 + 4) = 0xBFF0000000000000;
  HIDWORD(v13) = 0x7FFFFFFF;
  memset(v14, 0, 25);
  v9 = [(CLLocationProviderAdapter *)self locationProvider];
  v10 = (*(*v9 + 248))(v9, v11);
  v22 = v12;
  v23 = v13;
  v24[0] = *v14;
  *(v24 + 12) = *&v14[12];
  v18 = *&v11[32];
  v19 = *&v11[48];
  v20 = *&v11[64];
  v21 = *&v11[80];
  v16 = *v11;
  v17 = *&v11[16];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1006A6CBC;
  v15[3] = &unk_10246A7A0;
  (*(a3 + 2))(a3, v10, [v15 copy]);
}

- (BOOL)syncgetLocationUnavailable
{
  v2 = *(*[(CLLocationProviderAdapter *)self locationProvider]+ 256);

  return v2();
}

- (id)syncgetName
{
  v2 = [(CLLocationProviderAdapter *)self locationProvider];
  if (v2[31] < 0)
  {
    sub_100007244(__p, *(v2 + 1), *(v2 + 2));
  }

  else
  {
    v3 = *(v2 + 8);
    v8 = *(v2 + 3);
    *__p = v3;
  }

  if (v8 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  v5 = [NSString stringWithUTF8String:v4, __p[0], __p[1], v8];
  if (SHIBYTE(v8) < 0)
  {
    operator delete(__p[0]);
  }

  return v5;
}

@end