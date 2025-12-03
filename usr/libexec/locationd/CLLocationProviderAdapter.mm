@interface CLLocationProviderAdapter
- (BOOL)syncgetLocation:(id *)location;
- (BOOL)syncgetLocationPrivate:(void *)private;
- (BOOL)syncgetLocationUnavailable;
- (BOOL)syncgetNotification:(const int *)notification data:(void *)data;
- (id)syncgetName;
- (void)fetchLocationWithReply:(id)reply;
- (void)locationProvider;
- (void)register:(id)register forNotification:(int)notification distanceFilter:(double)filter;
- (void)sendSimulatedLocation:(id)location;
- (void)sendSimulatedLocationUnavailable;
- (void)setSimulationEnabled:(BOOL)enabled;
- (void)shutdown;
- (void)start;
- (void)updateNotification:(int)notification withRegistrationInfo:(id)info forClient:(id)client;
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

- (void)updateNotification:(int)notification withRegistrationInfo:(id)info forClient:(id)client
{
  v8 = sub_100044180(info);
  if (v8)
  {
    v9 = v8;
    v10 = [(CLNotifierServiceAdapter *)self notifierClientNumForCoparty:client];
    locationProvider = [(CLLocationProviderAdapter *)self locationProvider];
    v12 = locationProvider;
    notificationCopy = notification;
    if (!locationProvider || ((*(*locationProvider + 216))(locationProvider, v10, &notificationCopy, v9) & 1) == 0)
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

- (void)register:(id)register forNotification:(int)notification distanceFilter:(double)filter
{
  filterCopy = filter;
  v7 = [(CLNotifierServiceAdapter *)self notifierClientNumForCoparty:register];
  locationProvider = [(CLLocationProviderAdapter *)self locationProvider];
  v9 = locationProvider;
  notificationCopy = notification;
  if (!locationProvider || ((*(*locationProvider + 224))(locationProvider, v7, &notificationCopy, &filterCopy) & 1) == 0)
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
      notificationCopy2 = notification;
      v28 = 2050;
      v29 = filterCopy;
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
      notificationCopy3 = notification;
      v20 = 2050;
      v21 = filterCopy;
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

- (void)setSimulationEnabled:(BOOL)enabled
{
  if ([(CLLocationProviderAdapter *)self locationProvider])
  {
    v4 = *(*[(CLLocationProviderAdapter *)self locationProvider]+ 280);

    v4();
  }
}

- (void)sendSimulatedLocation:(id)location
{
  [objc_msgSend(location gnssOdometerInfo];
  v21[0] = v5;
  [objc_msgSend(location "gnssOdometerInfo")];
  v21[1] = v6;
  [objc_msgSend(location "gnssOdometerInfo")];
  v21[2] = v7;
  [location trustedTimestamp];
  v21[3] = v8;
  locationProvider = [(CLLocationProviderAdapter *)self locationProvider];
  if (location)
  {
    [location clientLocation];
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
  (*(*locationProvider + 264))(locationProvider, v19, v21);
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

- (BOOL)syncgetNotification:(const int *)notification data:(void *)data
{
  v4 = *(*[(CLLocationProviderAdapter *)self locationProvider]+ 128);

  return v4();
}

- (BOOL)syncgetLocation:(id *)location
{
  v3 = *(*[(CLLocationProviderAdapter *)self locationProvider]+ 232);

  return v3();
}

- (BOOL)syncgetLocationPrivate:(void *)private
{
  v3 = *(*[(CLLocationProviderAdapter *)self locationProvider]+ 240);

  return v3();
}

- (void)fetchLocationWithReply:(id)reply
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
  locationProvider = [(CLLocationProviderAdapter *)self locationProvider];
  v10 = (*(*locationProvider + 248))(locationProvider, v11);
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
  (*(reply + 2))(reply, v10, [v15 copy]);
}

- (BOOL)syncgetLocationUnavailable
{
  v2 = *(*[(CLLocationProviderAdapter *)self locationProvider]+ 256);

  return v2();
}

- (id)syncgetName
{
  locationProvider = [(CLLocationProviderAdapter *)self locationProvider];
  if (locationProvider[31] < 0)
  {
    sub_100007244(__p, *(locationProvider + 1), *(locationProvider + 2));
  }

  else
  {
    v3 = *(locationProvider + 8);
    v8 = *(locationProvider + 3);
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