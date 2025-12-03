@interface NIServerRangingAuthSession
- (NIServerRangingAuthSession)initWithResourcesManager:(id)manager configuration:(id)configuration error:(id *)error;
- (id).cxx_construct;
- (id)configure;
- (id)disableAllServices;
- (id)generateRandomSecureKey;
- (id)pause;
- (id)run;
- (void)invalidate;
- (void)wifiRangingRangeError:(const int *)error;
- (void)wifiRangingRangeResults:(const void *)results;
- (void)wifiRangingReadiness:(const int *)readiness;
@end

@implementation NIServerRangingAuthSession

- (NIServerRangingAuthSession)initWithResourcesManager:(id)manager configuration:(id)configuration error:(id *)error
{
  managerCopy = manager;
  configurationCopy = configuration;
  v11 = objc_opt_class();
  if (v11 != objc_opt_class())
  {
    v20 = +[NSAssertionHandler currentHandler];
    [v20 handleFailureInMethod:a2 object:self file:@"NIServerRangingAuthSession.mm" lineNumber:49 description:@"NIServerRangingAuthSession given invalid configuration."];
  }

  v22.receiver = self;
  v22.super_class = NIServerRangingAuthSession;
  v12 = [(NIServerBaseSession *)&v22 initWithResourcesManager:managerCopy configuration:configurationCopy error:error];
  if (v12)
  {
    clientConnectionQueue = [managerCopy clientConnectionQueue];
    v14 = *(v12 + 8);
    *(v12 + 8) = clientConnectionQueue;

    v15 = [configurationCopy copy];
    v16 = *(v12 + 17);
    *(v12 + 17) = v15;

    if (managerCopy)
    {
      [managerCopy protobufLogger];
      v17 = v21;
    }

    else
    {
      v17 = 0uLL;
    }

    v18 = *(v12 + 10);
    *(v12 + 72) = v17;
    if (v18)
    {
      sub_10000AD84(v18);
    }

    operator new();
  }

  return 0;
}

- (void)invalidate
{
  if (self->_wifiRangingSession.__ptr_)
  {
    disableAllServices = [(NIServerRangingAuthSession *)self disableAllServices];
    v4 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v7 = disableAllServices;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#ses-secure-ranging,Invalidate. Error: %@", buf, 0xCu);
    }
  }

  v5.receiver = self;
  v5.super_class = NIServerRangingAuthSession;
  [(NIServerBaseSession *)&v5 invalidate];
}

- (id)disableAllServices
{
  p_wifiRangingSession = &self->_wifiRangingSession;
  ptr = self->_wifiRangingSession.__ptr_;
  if (ptr)
  {
    sub_10003FFEC(ptr);
    cntrl = p_wifiRangingSession->__cntrl_;
    p_wifiRangingSession->__ptr_ = 0;
    p_wifiRangingSession->__cntrl_ = 0;
    if (cntrl)
    {
      sub_10000AD84(cntrl);
      v5 = p_wifiRangingSession->__cntrl_;
      p_wifiRangingSession->__ptr_ = 0;
      p_wifiRangingSession->__cntrl_ = 0;
      if (v5)
      {
        sub_10000AD84(v5);
      }
    }

    else
    {
      p_wifiRangingSession->__ptr_ = 0;
      p_wifiRangingSession->__cntrl_ = 0;
    }
  }

  return 0;
}

- (id)configure
{
  if (!self->_configuration)
  {
    sub_1004A4D18();
  }

  v12.receiver = self;
  v12.super_class = NIServerRangingAuthSession;
  resourcesManager = [(NIServerBaseSession *)&v12 resourcesManager];
  if ([resourcesManager entitlementGranted:8])
  {
    selfCopy = self;
    serverSessionIdentifier = [resourcesManager serverSessionIdentifier];
    uUIDString = [serverSessionIdentifier UUIDString];

    v7 = uUIDString;
    sub_100004A08(&__p, [uUIDString UTF8String]);
    operator new();
  }

  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
  {
    sub_1004A4C98();
  }

  v13 = NSLocalizedDescriptionKey;
  v14 = @"Missing entitlement";
  v8 = [NSDictionary dictionaryWithObjects:&v14 forKeys:&v13 count:1];
  v9 = [NSError errorWithDomain:@"com.apple.NearbyInteraction" code:-5888 userInfo:v8];

  return v9;
}

- (id)run
{
  v20.receiver = self;
  v20.super_class = NIServerRangingAuthSession;
  resourcesManager = [(NIServerBaseSession *)&v20 resourcesManager];
  lifecycleSupervisor = [resourcesManager lifecycleSupervisor];
  [lifecycleSupervisor runWithConfigurationCalled];

  v5 = +[NSData data];
  secureRangingKey = self->_secureRangingKey;
  self->_secureRangingKey = v5;

  peerToken = [(NIRangingAuthConfiguration *)self->_configuration peerToken];
  v8 = sub_1003005A0(peerToken);

  if (v8)
  {
    v9 = [v8 objectForKeyedSubscript:&off_1009C3E00];
    if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v10 = [v8 objectForKeyedSubscript:&off_1009C3E18];
      if (v10 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        peerToken2 = [(NIRangingAuthConfiguration *)self->_configuration peerToken];
        peerToken = self->_peerToken;
        self->_peerToken = peerToken2;

        objc_storeStrong(&self->_peerMacAddress, v9);
        objc_storeStrong(&self->_secureRangingKey, v10);
        if (self->_wifiRangingSession.__ptr_)
        {
          if ([(NIRangingAuthConfiguration *)self->_configuration isResponder])
          {
            v13 = 2;
          }

          else
          {
            v13 = 1;
          }

          sub_10003FBFC(v19, self->_peerMacAddress, v13, self->_secureRangingKey);
          sub_100040350(self->_wifiRangingSession.__ptr_, v19);
        }

        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
        {
          sub_1004A4D44();
        }

        remote = [resourcesManager remote];
        v21 = NSLocalizedDescriptionKey;
        v22 = @"Failed to start WiFi service. session is nil";
        v16 = [NSDictionary dictionaryWithObjects:&v22 forKeys:&v21 count:1];
        v17 = [NSError errorWithDomain:@"com.apple.NearbyInteraction" code:-5887 userInfo:v16];
        [remote uwbSessionDidFailWithError:v17];

        v14 = 0;
      }

      else
      {
        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
        {
          sub_1004A4DC4();
        }

        v14 = [NSError errorWithDomain:@"com.apple.NearbyInteraction" code:-10012 userInfo:0];
      }
    }

    else
    {
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
      {
        sub_1004A4E04();
      }

      v14 = [NSError errorWithDomain:@"com.apple.NearbyInteraction" code:-10012 userInfo:0];
    }
  }

  else
  {
    v14 = [NSError errorWithDomain:@"com.apple.NearbyInteraction" code:-10012 userInfo:0];
  }

  return v14;
}

- (id)pause
{
  disableAllServices = [(NIServerRangingAuthSession *)self disableAllServices];
  v7.receiver = self;
  v7.super_class = NIServerRangingAuthSession;
  resourcesManager = [(NIServerBaseSession *)&v7 resourcesManager];
  lifecycleSupervisor = [resourcesManager lifecycleSupervisor];
  [lifecycleSupervisor pauseCalled];

  return disableAllServices;
}

- (void)wifiRangingRangeResults:(const void *)results
{
  v5 = [[NINearbyObject alloc] initWithToken:self->_peerToken];
  __p = 0;
  v36 = 0;
  v37 = 0;
  v7 = *results;
  v32 = v5;
  if (*results != *(results + 1))
  {
    *&v6 = 136315138;
    v31 = v6;
    v8 = *(v7 + 24);
    if (*(v7 + 32) != v8)
    {
      v9 = 0;
      v10 = 0;
      do
      {
        v11 = v8 + v9;
        v12 = *v11;
        v13 = *(v11 + 8);
        v14 = *(v11 + 9);
        v15 = sub_100005348(*(v11 + 16));
        v16 = v12 * 0.0149896229;
        v17 = qword_1009F9820;
        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134218240;
          *&buf[4] = v16;
          v39 = 1024;
          v40 = v13;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#ses-secure-ranging,Wifi RTT measurement: %f, CoreID: %i", buf, 0x12u);
        }

        *buf = 0;
        [(NSData *)self->_peerMacAddress getBytes:buf length:8, v31];
        v18 = v13 | &_mh_execute_header;
        v19 = v14 | &_mh_execute_header;
        *&v34[1] = 0;
        v34[5] = 0;
        v20 = v36;
        if (v36 >= v37)
        {
          v22 = 0x34F72C234F72C235 * ((v36 - __p) >> 3);
          v23 = v22 + 1;
          if ((v22 + 1) > 0x11A7B9611A7B961)
          {
            sub_100019B38();
          }

          if (0x69EE58469EE5846ALL * ((v37 - __p) >> 3) > v23)
          {
            v23 = 0x69EE58469EE5846ALL * ((v37 - __p) >> 3);
          }

          if ((0x34F72C234F72C235 * ((v37 - __p) >> 3)) >= 0x8D3DCB08D3DCB0)
          {
            v24 = 0x11A7B9611A7B961;
          }

          else
          {
            v24 = v23;
          }

          if (v24)
          {
            sub_1001BDD74(&__p, v24);
          }

          v25 = 8 * ((v36 - __p) >> 3);
          *v25 = *buf;
          *(v25 + 8) = v15;
          *(v25 + 16) = v16;
          *(v25 + 20) = 2;
          *(v25 + 24) = 0;
          *(v25 + 36) = 0;
          *(v25 + 48) = v18;
          *(v25 + 56) = v19;
          *(v25 + 64) = 0;
          *(v25 + 72) = 0;
          *(v25 + 80) = 0;
          *(v25 + 88) = 0;
          *(v25 + 96) = 0;
          *(v25 + 104) = 0;
          *(v25 + 112) = 0;
          *(v25 + 120) = 0;
          *(v25 + 128) = 0;
          *(v25 + 152) = 0;
          *(v25 + 160) = 0;
          *(v25 + 168) = 0;
          *(v25 + 176) = 0;
          *(v25 + 178) = 0;
          *(v25 + 179) = *v34;
          *(v25 + 183) = *&v34[4];
          *(v25 + 192) = 0;
          *(v25 + 200) = 0;
          *(v25 + 208) = 0;
          *(v25 + 216) = 0;
          *(v25 + 224) = 0;
          v21 = 232 * v22 + 232;
          v26 = (v25 - (v36 - __p));
          memcpy(v26, __p, v36 - __p);
          v27 = __p;
          __p = v26;
          v36 = v21;
          v37 = 0;
          if (v27)
          {
            operator delete(v27);
          }
        }

        else
        {
          *v36 = *buf;
          *(v20 + 1) = v15;
          *(v20 + 4) = v16;
          *(v20 + 5) = 2;
          v20[24] = 0;
          v20[36] = 0;
          *(v20 + 6) = v18;
          *(v20 + 7) = v19;
          v20[64] = 0;
          v20[72] = 0;
          *(v20 + 40) = 0;
          v20[88] = 0;
          v20[96] = 0;
          v20[104] = 0;
          v20[112] = 0;
          *(v20 + 30) = 0;
          v20[128] = 0;
          v20[152] = 0;
          v20[160] = 0;
          v20[168] = 0;
          v20[176] = 0;
          v20[178] = 0;
          *(v20 + 179) = *v34;
          *(v20 + 183) = *&v34[4];
          v20[192] = 0;
          v20[200] = 0;
          v20[208] = 0;
          v20[216] = 0;
          v21 = (v20 + 232);
          v20[224] = 0;
        }

        v36 = v21;
        ++v10;
        v8 = *(v7 + 24);
        v9 += 24;
      }

      while (0xAAAAAAAAAAAAAAABLL * ((*(v7 + 32) - v8) >> 3) > v10);
    }

    sub_100044BE4(*(v7 + 48));
    sub_1000450B4(*(v7 + 48));
    operator new();
  }

  v28 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "#ses-secure-ranging,One-shot ranging session complete, invalidating session...", buf, 2u);
  }

  [(NIServerRangingAuthSession *)self invalidate];
  v33.receiver = self;
  v33.super_class = NIServerRangingAuthSession;
  invalidationHandler = [(NIServerBaseSession *)&v33 invalidationHandler];
  v30 = [NSError errorWithDomain:@"com.apple.NearbyInteraction" code:-10008 userInfo:0];
  (invalidationHandler)[2](invalidationHandler, v30);

  if (__p)
  {
    v36 = __p;
    operator delete(__p);
  }
}

- (void)wifiRangingRangeError:(const int *)error
{
  sub_100040B10(*error, __p);
  if (v16 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  v5 = [NSString stringWithUTF8String:v4];
  v6 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
  {
    sub_1004A4E44(&v16, __p, v6);
  }

  v17 = NSLocalizedDescriptionKey;
  v18 = v5;
  v7 = [NSDictionary dictionaryWithObjects:&v18 forKeys:&v17 count:1];
  v8 = [NSError errorWithDomain:@"com.apple.NearbyInteraction" code:-5887 userInfo:v7];

  clientQueue = self->_clientQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001BCC64;
  block[3] = &unk_10098A2E8;
  block[4] = self;
  v10 = v8;
  v14 = v10;
  dispatch_async(clientQueue, block);
  v11 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#ses-secure-ranging,One-shot ranging session error, invalidating session...", v12, 2u);
  }

  if (v16 < 0)
  {
    operator delete(__p[0]);
  }
}

- (void)wifiRangingReadiness:(const int *)readiness
{
  v4 = qword_1009F9820;
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    sub_100040B4C(*readiness, __p);
    if (v7 >= 0)
    {
      v5 = __p;
    }

    else
    {
      v5 = __p[0];
    }

    *buf = 136315138;
    v9 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#ses-secure-ranging,Readiness update: %s", buf, 0xCu);
    if (v7 < 0)
    {
      operator delete(__p[0]);
    }
  }
}

- (id)generateRandomSecureKey
{
  v2 = 64;
  v3 = [NSMutableData dataWithCapacity:64];
  while (1)
  {
    bytes = 0;
    if (SecRandomCopyBytes(kSecRandomDefault, 1uLL, &bytes))
    {
      break;
    }

    [v3 appendBytes:&bytes length:1];
    if (!--v2)
    {
      v4 = v3;
      goto LABEL_6;
    }
  }

  v4 = 0;
LABEL_6:

  return v4;
}

- (id).cxx_construct
{
  *(self + 6) = 0;
  *(self + 7) = 0;
  *(self + 9) = 0;
  *(self + 10) = 0;
  *(self + 11) = 0;
  *(self + 12) = 0;
  return self;
}

@end