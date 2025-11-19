@interface PRUWBManagerAgent
- (PRUWBDeviceCapabilities)deviceCapabilities;
- (PRUWBManagerAgent)initWithClientReference:(shared_ptr<PRRangingManagerClient>)a3;
- (RoseServiceStateUpdate)currentServiceState;
- (id).cxx_construct;
- (id)getQueue;
- (shared_ptr<PRConfigurationManager>)configurationManager;
- (void)connect;
- (void)disconnect;
- (void)requestAsyncServiceStatusUpdate;
@end

@implementation PRUWBManagerAgent

- (PRUWBDeviceCapabilities)deviceCapabilities
{
  v2 = sub_1000054A8();
  v3 = sub_100014678(v2);
  v4 = sub_1000054A8();
  v5 = sub_100014670(v4);
  v6 = sub_1000054A8();
  v7 = sub_1000149D4(v6);
  v8 = +[NSUserDefaults standardUserDefaults];
  v9 = [v8 BOOLForKey:@"NI_SimulateUnsupportedPlatform"];
  v10 = (v9 ^ 1) & v3;
  v11 = (v9 ^ 1) & v5;
  v12 = (v9 ^ 1) & v7;
  v13 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    v14 = @"NO";
    if (v10)
    {
      v15 = @"YES";
    }

    else
    {
      v15 = @"NO";
    }

    if (v11)
    {
      v16 = @"YES";
    }

    else
    {
      v16 = @"NO";
    }

    v21 = 138413058;
    v22 = v15;
    if (v12)
    {
      v17 = @"YES";
    }

    else
    {
      v17 = @"NO";
    }

    v23 = 2112;
    v24 = v16;
    v25 = 2112;
    v26 = v17;
    if (v9)
    {
      v14 = @"YES";
    }

    v27 = 2112;
    v28 = v14;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "[UWBAgent] query device capabilities. Supports UWB: %@, Supports AoA: %@, Supports NMI: %@, Simulated: %@", &v21, 0x2Au);
  }

  if (v12)
  {
    v18 = 0x10000;
  }

  else
  {
    v18 = 0;
  }

  if (v11)
  {
    v19 = 256;
  }

  else
  {
    v19 = 0;
  }

  return (v18 | v19 | v10);
}

- (PRUWBManagerAgent)initWithClientReference:(shared_ptr<PRRangingManagerClient>)a3
{
  ptr = a3.__ptr_;
  v10.receiver = self;
  v10.super_class = PRUWBManagerAgent;
  v4 = [(PRUWBManagerAgent *)&v10 init:a3.__ptr_];
  v5 = v4;
  if (v4)
  {
    v7 = *ptr;
    v6 = *(ptr + 1);
    if (v6)
    {
      atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
    }

    cntrl = v4->_clientReference.__cntrl_;
    v5->_clientReference.__ptr_ = v7;
    v5->_clientReference.__cntrl_ = v6;
    if (cntrl)
    {
      sub_10000AD84(cntrl);
    }
  }

  return v5;
}

- (id)getQueue
{
  v2 = *(sub_10035D02C() + 7);

  return v2;
}

- (shared_ptr<PRConfigurationManager>)configurationManager
{
  v3 = v2;
  v4 = sub_10035D02C();
  v6 = *(v4 + 407);
  *v3 = *(v4 + 406);
  v3[1] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  result.var1 = v5;
  result.var0 = v4;
  return result;
}

- (void)connect
{
  v3 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v5) = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[UWBAgent] connect with client reference", &v5, 2u);
  }

  v4 = sub_10035D02C();
  sub_10003E810(&v5, self->_clientReference.__ptr_ + 1);
  v6 = v5;
  v5 = 0uLL;
  sub_100361128(v4, &v6);
  if (*(&v6 + 1))
  {
    sub_10000AD84(*(&v6 + 1));
  }

  if (*(&v5 + 1))
  {
    sub_10000AD84(*(&v5 + 1));
  }
}

- (void)disconnect
{
  v3 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v5) = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[UWBAgent] disconnect", &v5, 2u);
  }

  v4 = sub_10035D02C();
  sub_10003E810(&v5, self->_clientReference.__ptr_ + 1);
  v6 = v5;
  v5 = 0uLL;
  sub_100361200(v4, &v6);
  if (*(&v6 + 1))
  {
    sub_10000AD84(*(&v6 + 1));
  }

  if (*(&v5 + 1))
  {
    sub_10000AD84(*(&v5 + 1));
  }
}

- (void)requestAsyncServiceStatusUpdate
{
  v3 = sub_10035D02C();
  sub_10003E810(&v4, self->_clientReference.__ptr_ + 1);
  v6 = v4;
  v7 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  sub_10035D6F0(v3, &v6);
  if (v7)
  {
    std::__shared_weak_count::__release_weak(v7);
  }

  if (v5)
  {
    sub_10000AD84(v5);
  }
}

- (RoseServiceStateUpdate)currentServiceState
{
  v2 = *(**(sub_10035D02C() + 814) + 72);

  return v2();
}

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 2) = 0;
  return self;
}

@end