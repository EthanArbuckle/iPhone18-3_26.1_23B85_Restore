@interface CLStreamedLocationProviderServerDiscoverer
+ (BOOL)iOSSourceVersionNewEnough:(id *)enough;
+ (BOOL)macOSSourceVersionNewEnough:(id *)enough;
+ (BOOL)validateRemoteDeviceForStreaming:(id)streaming;
- (id)deviceWithEffectiveID:(id)d;
- (id)initOnQueue:(id)queue;
- (void)dealloc;
- (void)findCandidateServersWithCompletion:(id)completion;
- (void)invalidate;
- (void)invalidateAndReleaseProbeClients;
@end

@implementation CLStreamedLocationProviderServerDiscoverer

- (id)initOnQueue:(id)queue
{
  v7.receiver = self;
  v7.super_class = CLStreamedLocationProviderServerDiscoverer;
  v4 = [(CLStreamedLocationProviderServerDiscoverer *)&v7 init];
  if (v4)
  {
    v4->_workQ = dispatch_queue_create("CLStreamedLocationProviderServerDiscoverer.workQueue", 0);
    v4->_requestQ = dispatch_queue_create("CLStreamedLocationProviderServerDiscoverer.requestQueue", 0);
    v4->_nearbyDeviceListener = objc_alloc_init(RPCompanionLinkClient);
    sub_10001A3E8();
    if (sub_100717D04())
    {
      [(RPCompanionLinkClient *)v4->_nearbyDeviceListener setFlags:1];
      v5 = 4;
    }

    else
    {
      v5 = 65538;
    }

    [(RPCompanionLinkClient *)v4->_nearbyDeviceListener setControlFlags:v5];
    [(RPCompanionLinkClient *)v4->_nearbyDeviceListener setDispatchQueue:queue];
    [(RPCompanionLinkClient *)v4->_nearbyDeviceListener setDeviceFoundHandler:&stru_102456648];
    [(RPCompanionLinkClient *)v4->_nearbyDeviceListener setDeviceLostHandler:&stru_102456668];
    [(RPCompanionLinkClient *)v4->_nearbyDeviceListener activateWithCompletion:&stru_1024566A8];
  }

  return v4;
}

- (void)dealloc
{
  [(CLStreamedLocationProviderServerDiscoverer *)self invalidate];
  v3.receiver = self;
  v3.super_class = CLStreamedLocationProviderServerDiscoverer;
  [(CLStreamedLocationProviderServerDiscoverer *)&v3 dealloc];
}

- (void)invalidate
{
  [(RPCompanionLinkClient *)self->_nearbyDeviceListener invalidate];

  self->_nearbyDeviceListener = 0;

  [(CLStreamedLocationProviderServerDiscoverer *)self invalidateAndReleaseProbeClients];
}

- (void)invalidateAndReleaseProbeClients
{
  probeClients = self->_probeClients;
  if (probeClients)
  {
    v10 = 0u;
    v11 = 0u;
    v8 = 0u;
    v9 = 0u;
    v4 = [(NSMutableArray *)probeClients countByEnumeratingWithState:&v8 objects:v12 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v9;
      do
      {
        v7 = 0;
        do
        {
          if (*v9 != v6)
          {
            objc_enumerationMutation(probeClients);
          }

          [*(*(&v8 + 1) + 8 * v7) invalidate];
          v7 = v7 + 1;
        }

        while (v5 != v7);
        v5 = [(NSMutableArray *)probeClients countByEnumeratingWithState:&v8 objects:v12 count:16];
      }

      while (v5);
    }
  }

  self->_probeClients = 0;
}

- (id)deviceWithEffectiveID:(id)d
{
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  activeDevices = [(RPCompanionLinkClient *)[(CLStreamedLocationProviderServerDiscoverer *)self nearbyDeviceListener] activeDevices];
  v5 = [activeDevices countByEnumeratingWithState:&v13 objects:v23 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(activeDevices);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        if ([objc_msgSend(v9 "effectiveIdentifier")])
        {
          if (qword_1025D47B0 != -1)
          {
            sub_10188FE40();
          }

          v10 = qword_1025D47B8;
          if (os_log_type_enabled(qword_1025D47B8, OS_LOG_TYPE_DEBUG))
          {
            uTF8String = [d UTF8String];
            *buf = 68289283;
            v18 = 0;
            v19 = 2082;
            v20 = "";
            v21 = 2081;
            v22 = uTF8String;
            _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#Multiclient found an active device with effective ID, effectiveID:%{private, location:escape_only}s}", buf, 0x1Cu);
          }

          return v9;
        }
      }

      v6 = [activeDevices countByEnumeratingWithState:&v13 objects:v23 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  return 0;
}

+ (BOOL)iOSSourceVersionNewEnough:(id *)enough
{
  if (enough->var0 < 16)
  {
    return 0;
  }

  if (enough->var0 == 16)
  {
    return enough->var1 > 3;
  }

  return 1;
}

+ (BOOL)macOSSourceVersionNewEnough:(id *)enough
{
  if (enough->var0 < 14)
  {
    return 0;
  }

  if (enough->var0 == 14)
  {
    return enough->var1 > 3;
  }

  return 1;
}

+ (BOOL)validateRemoteDeviceForStreaming:(id)streaming
{
  statusFlags = [streaming statusFlags];
  if ([objc_msgSend(streaming "model")])
  {
    sub_10001A3E8();
    if (!sub_100717D04())
    {
      if (qword_1025D47B0 != -1)
      {
        sub_10188FE2C();
      }

      v5 = qword_1025D47B8;
      if (!os_log_type_enabled(qword_1025D47B8, OS_LOG_TYPE_INFO))
      {
        return 0;
      }

      *buf = 68289026;
      *&buf[4] = 0;
      *v23 = 2082;
      *&v23[2] = "";
      v6 = "{msg%{public}.0s:#Multiclient not a VM, so not using mac}";
      v7 = v5;
      v8 = 18;
      goto LABEL_42;
    }

    if (streaming)
    {
      [streaming operatingSystemVersion];
    }

    else
    {
      *buf = 0;
      *v23 = 0;
      *&v23[8] = 0;
    }

    if (![CLStreamedLocationProviderServerDiscoverer macOSSourceVersionNewEnough:buf])
    {
      if (qword_1025D47B0 != -1)
      {
        sub_10188FE40();
      }

      v12 = qword_1025D47B8;
      if (!os_log_type_enabled(qword_1025D47B8, OS_LOG_TYPE_INFO))
      {
        return 0;
      }

      name = [streaming name];
      if (streaming)
      {
        [streaming operatingSystemVersion];
        v14 = v21;
        [streaming operatingSystemVersion];
        v15 = v20;
      }

      else
      {
        v15 = 0;
        v14 = 0;
      }

      *buf = 68289795;
      *&buf[4] = 0;
      *v23 = 2082;
      *&v23[2] = "";
      *&v23[10] = 2113;
      *&v23[12] = name;
      v24 = 2050;
      model = v14;
      v26 = 2050;
      v27 = v15;
      v6 = "{msg%{public}.0s:#Multiclient macOS device running too-old software, ignoring, name:%{private, location:escape_only}@, major:%{public}ld, minor:%{public}ld}";
      goto LABEL_41;
    }

    return 1;
  }

  if ([objc_msgSend(streaming "model")])
  {
    if (streaming)
    {
      [streaming operatingSystemVersion];
    }

    else
    {
      *buf = 0;
      *v23 = 0;
      *&v23[8] = 0;
    }

    if (![CLStreamedLocationProviderServerDiscoverer iOSSourceVersionNewEnough:buf])
    {
      if (qword_1025D47B0 != -1)
      {
        sub_10188FE40();
      }

      v12 = qword_1025D47B8;
      if (!os_log_type_enabled(qword_1025D47B8, OS_LOG_TYPE_INFO))
      {
        return 0;
      }

      name2 = [streaming name];
      if (streaming)
      {
        [streaming operatingSystemVersion];
        v17 = v21;
        [streaming operatingSystemVersion];
        v18 = v20;
      }

      else
      {
        v18 = 0;
        v17 = 0;
      }

      *buf = 68289795;
      *&buf[4] = 0;
      *v23 = 2082;
      *&v23[2] = "";
      *&v23[10] = 2113;
      *&v23[12] = name2;
      v24 = 2050;
      model = v17;
      v26 = 2050;
      v27 = v18;
      v6 = "{msg%{public}.0s:#Multiclient iOS device running too-old software, ignoring, name:%{private, location:escape_only}@, major:%{public}ld, minor:%{public}ld}";
LABEL_41:
      v7 = v12;
      v8 = 48;
LABEL_42:
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_INFO, v6, buf, v8);
      return 0;
    }

    return 1;
  }

  sub_10001A3E8();
  if (!sub_100717D04() || (statusFlags & 0x1000000) == 0)
  {
    if (qword_1025D47B0 != -1)
    {
      sub_10188FE2C();
    }

    v11 = qword_1025D47B8;
    if (!os_log_type_enabled(qword_1025D47B8, OS_LOG_TYPE_INFO))
    {
      return 0;
    }

    *buf = 68289795;
    *&buf[4] = 0;
    *v23 = 2082;
    *&v23[2] = "";
    *&v23[10] = 2113;
    *&v23[12] = [streaming name];
    v24 = 2114;
    model = [streaming model];
    v26 = 1026;
    LODWORD(v27) = (statusFlags >> 24) & 1;
    v6 = "{msg%{public}.0s:#Multiclient candidate is neither a phone nor a mac host, skipping, name:%{private, location:escape_only}@, model:%{public, location:escape_only}@, USB?:%{public}hhd}";
    v7 = v11;
    v8 = 44;
    goto LABEL_42;
  }

  if (qword_1025D47B0 != -1)
  {
    sub_10188FE2C();
  }

  v9 = qword_1025D47B8;
  v10 = 1;
  if (os_log_type_enabled(qword_1025D47B8, OS_LOG_TYPE_INFO))
  {
    *buf = 68289283;
    *&buf[4] = 0;
    *v23 = 2082;
    *&v23[2] = "";
    *&v23[10] = 2113;
    *&v23[12] = [streaming name];
    _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_INFO, "{msg%{public}.0s:#Multiclient accepting this device because it looks like it's our host, name:%{private, location:escape_only}@}", buf, 0x1Cu);
  }

  return v10;
}

- (void)findCandidateServersWithCompletion:(id)completion
{
  v23 = +[NSMutableDictionary dictionary];
  v22 = +[NSMutableDictionary dictionary];
  [v22 setObject:objc_msgSend(-[RPCompanionLinkClient localDevice](-[CLStreamedLocationProviderServerDiscoverer nearbyDeviceListener](self forKeyedSubscript:{"nearbyDeviceListener"), "localDevice"), "effectiveIdentifier"), @"kCLLocationSTreamingMessageRapportDeviceIDKey"}];
  if (!self->_probeClients)
  {
    self->_probeClients = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(-[RPCompanionLinkClient activeDevices](-[CLStreamedLocationProviderServerDiscoverer nearbyDeviceListener](self, "nearbyDeviceListener"), "activeDevices"), "count")}];
  }

  sub_10001A3E8();
  v26 = 0u;
  if (sub_100717D04())
  {
    v4 = 0x380000103C04;
  }

  else
  {
    v4 = 532482;
  }

  v27 = 0uLL;
  v28 = 0uLL;
  v29 = 0uLL;
  activeDevices = [(RPCompanionLinkClient *)[(CLStreamedLocationProviderServerDiscoverer *)self nearbyDeviceListener] activeDevices];
  v6 = [activeDevices countByEnumeratingWithState:&v26 objects:v42 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v27;
    v20 = RPOptionStatusFlags;
    v21 = RPOptionTimeoutSeconds;
    v19 = RPOptionAllowUnauthenticated;
    do
    {
      v9 = 0;
      do
      {
        if (*v27 != v8)
        {
          objc_enumerationMutation(activeDevices);
        }

        v10 = *(*(&v26 + 1) + 8 * v9);
        statusFlags = [v10 statusFlags];
        sub_10001A3E8();
        if (!sub_100717D04() || (statusFlags & 0x1000000) != 0)
        {
          if ([CLStreamedLocationProviderServerDiscoverer validateRemoteDeviceForStreaming:v10])
          {
            v15 = objc_alloc_init(RPCompanionLinkClient);
            [v15 setDispatchQueue:{-[CLStreamedLocationProviderServerDiscoverer workQ](self, "workQ")}];
            sub_10001A3E8();
            if (sub_100717D04())
            {
              [v15 setControlFlags:v4];
              [v15 setFlags:1];
              v32[0] = v21;
              v32[1] = v19;
              v33[0] = &off_10254E960;
              v33[1] = &__kCFBooleanTrue;
              v32[2] = v20;
              v33[2] = [NSNumber numberWithUnsignedLongLong:v4];
              v16 = [NSDictionary dictionaryWithObjects:v33 forKeys:v32 count:3];
            }

            else
            {
              [v15 setControlFlags:2];
              v30[0] = v21;
              v30[1] = v20;
              v31[0] = &off_10254E960;
              v31[1] = [NSNumber numberWithUnsignedLongLong:v4];
              v16 = [NSDictionary dictionaryWithObjects:v31 forKeys:v30 count:2];
              [v15 setControlFlags:{objc_msgSend(v15, "controlFlags") | 0x100}];
            }

            [v15 setDestinationDevice:v10];
            v25[0] = _NSConcreteStackBlock;
            v25[1] = 3221225472;
            v25[2] = sub_10048F630;
            v25[3] = &unk_102456720;
            v25[4] = v15;
            v25[5] = self;
            v25[6] = v22;
            v25[7] = v16;
            v25[8] = v23;
            [v15 activateWithCompletion:v25];
            [(NSMutableArray *)[(CLStreamedLocationProviderServerDiscoverer *)self probeClients] addObject:v15];
          }
        }

        else
        {
          if (qword_1025D47B0 != -1)
          {
            sub_10188FE40();
          }

          v12 = qword_1025D47B8;
          if (os_log_type_enabled(qword_1025D47B8, OS_LOG_TYPE_DEBUG))
          {
            name = [v10 name];
            model = [v10 model];
            *buf = 68289538;
            v35 = 0;
            v36 = 2082;
            v37 = "";
            v38 = 2114;
            v39 = name;
            v40 = 2114;
            v41 = model;
            _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#Multiclient skipping this device because it's not the host, name:%{public, location:escape_only}@, model:%{public, location:escape_only}@}", buf, 0x26u);
          }
        }

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [activeDevices countByEnumeratingWithState:&v26 objects:v42 count:16];
    }

    while (v7);
  }

  v17 = dispatch_time(0, 5000000000);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10048FC0C;
  block[3] = &unk_102456748;
  block[4] = v23;
  block[5] = completion;
  dispatch_after(v17, [(RPCompanionLinkClient *)[(CLStreamedLocationProviderServerDiscoverer *)self nearbyDeviceListener] dispatchQueue], block);
}

@end