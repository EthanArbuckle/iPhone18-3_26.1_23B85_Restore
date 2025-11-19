@interface PRRangingServiceProxy
- (PRRangingServiceProxy)initWithConnection:(id)a3 queue:(id)a4;
- (id).cxx_construct;
- (void)activate;
- (void)configureForP2PRanging:(id)a3 options:(id)a4 reply:(id)a5;
- (void)connectWithClientInfo:(id)a3;
- (void)dealloc;
- (void)didFailWithError:(id)a3;
- (void)didReceiveNewSolutions:(id)a3;
- (void)rangingRequestDidUpdateStatus:(unint64_t)a3;
- (void)rangingServiceDidUpdateState:(unint64_t)a3 cause:(int64_t)a4;
- (void)remoteDevice:(id)a3 didChangeState:(int64_t)a4;
- (void)startP2PRanging:(id)a3 reply:(id)a4;
- (void)stopP2PRanging:(id)a3 reply:(id)a4;
- (void)terminate;
@end

@implementation PRRangingServiceProxy

- (PRRangingServiceProxy)initWithConnection:(id)a3 queue:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (v7)
  {
    if (v8)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v16 = +[NSAssertionHandler currentHandler];
    [v16 handleFailureInMethod:a2 object:self file:@"PRRangingServiceProxy.mm" lineNumber:38 description:{@"Invalid parameter not satisfying: %@", @"connection"}];

    if (v9)
    {
      goto LABEL_3;
    }
  }

  v17 = +[NSAssertionHandler currentHandler];
  [v17 handleFailureInMethod:a2 object:self file:@"PRRangingServiceProxy.mm" lineNumber:39 description:{@"Invalid parameter not satisfying: %@", @"queue"}];

LABEL_3:
  v20.receiver = self;
  v20.super_class = PRRangingServiceProxy;
  v10 = [(PRRangingServiceProxy *)&v20 init];
  v11 = v10;
  if (v10)
  {
    v10->_terminated = 0;
    v12 = [[PRNSXPCConnection alloc] initWithConnection:v7];
    connWrapper = v11->_connWrapper;
    v11->_connWrapper = v12;

    objc_initWeak(&location, v11);
    sub_10005AC10();
  }

  v14 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "PRRangingServiceProxy init", buf, 2u);
  }

  return 0;
}

- (void)connectWithClientInfo:(id)a3
{
  v5 = a3;
  v6 = qword_1009F9820;
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [v5 objectForKey:PRProcessNameKey];
    v8 = [v5 objectForKey:PRProcessIdentifierKey];
    v9 = 138412546;
    v10 = v7;
    v11 = 1024;
    v12 = [v8 intValue];
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "PRGenericRanging: XPC connection created. Process name: %@, pid: %d", &v9, 0x12u);
  }

  objc_storeStrong(&self->_clientInfo, a3);
  [(PRRangingServiceProxy *)self activate];
}

- (void)dealloc
{
  if (!self->_terminated)
  {
    [(PRRangingServiceProxy *)self terminate];
  }

  v3 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "PRRangingServiceProxy dealloc", buf, 2u);
  }

  v4.receiver = self;
  v4.super_class = PRRangingServiceProxy;
  [(PRRangingServiceProxy *)&v4 dealloc];
}

- (void)activate
{
  v3 = sub_10035D02C();
  sub_10003E810(&v6, self->_rangingManagerClient.__ptr_ + 1);
  v7 = v6;
  v6 = 0uLL;
  sub_100361128(v3, &v7);
  if (*(&v7 + 1))
  {
    sub_10000AD84(*(&v7 + 1));
  }

  if (*(&v6 + 1))
  {
    sub_10000AD84(*(&v6 + 1));
  }

  v4 = sub_10035D02C();
  sub_10003E810(&v6, self->_rangingManagerClient.__ptr_ + 1);
  v5 = v6;
  if (*(&v6 + 1))
  {
    atomic_fetch_add_explicit((*(&v6 + 1) + 16), 1uLL, memory_order_relaxed);
  }

  sub_10035D6F0(v4, &v5);
  if (*(&v5 + 1))
  {
    std::__shared_weak_count::__release_weak(*(&v5 + 1));
  }

  if (*(&v6 + 1))
  {
    sub_10000AD84(*(&v6 + 1));
  }
}

- (void)terminate
{
  [(PRRangingClientProtocol *)self->_connWrapper invalidate];
  v3 = sub_10035D02C();
  cntrl = self->_rangingManagerClient.__cntrl_;
  ptr = self->_rangingManagerClient.__ptr_;
  v6 = cntrl;
  if (cntrl)
  {
    atomic_fetch_add_explicit(cntrl + 1, 1uLL, memory_order_relaxed);
  }

  sub_100361200(v3, &ptr);
  if (v6)
  {
    sub_10000AD84(v6);
  }

  self->_terminated = 1;
}

- (void)didFailWithError:(id)a3
{
  v4 = a3;
  connWrapper = self->_connWrapper;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000592C8;
  v7[3] = &unk_10098B638;
  v8 = v4;
  v6 = v4;
  [(PRRangingClientProtocol *)connWrapper actOnRemoteObjectAndScheduleBarrierBlock:v7];
}

- (void)didReceiveNewSolutions:(id)a3
{
  v4 = a3;
  connWrapper = self->_connWrapper;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100059408;
  v7[3] = &unk_10098B638;
  v8 = v4;
  v6 = v4;
  [(PRRangingClientProtocol *)connWrapper actOnRemoteObjectAndScheduleBarrierBlock:v7];
}

- (void)rangingServiceDidUpdateState:(unint64_t)a3 cause:(int64_t)a4
{
  connWrapper = self->_connWrapper;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100059508;
  v5[3] = &unk_10098B658;
  v5[4] = a3;
  v5[5] = a4;
  [(PRRangingClientProtocol *)connWrapper actOnRemoteObjectAndScheduleBarrierBlock:v5];
}

- (void)rangingRequestDidUpdateStatus:(unint64_t)a3
{
  connWrapper = self->_connWrapper;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100059608;
  v4[3] = &unk_10098B678;
  v4[4] = a3;
  [(PRRangingClientProtocol *)connWrapper actOnRemoteObjectAndScheduleBarrierBlock:v4];
}

- (void)remoteDevice:(id)a3 didChangeState:(int64_t)a4
{
  v6 = a3;
  connWrapper = self->_connWrapper;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10005974C;
  v9[3] = &unk_10098BB48;
  v10 = v6;
  v11 = a4;
  v8 = v6;
  [(PRRangingClientProtocol *)connWrapper actOnRemoteObjectAndScheduleBarrierBlock:v9];
}

- (void)configureForP2PRanging:(id)a3 options:(id)a4 reply:(id)a5
{
  v9 = a3;
  v64 = a4;
  v10 = a5;
  v11 = qword_1009F9820;
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [(NSDictionary *)self->_clientInfo objectForKey:PRProcessNameKey];
    v13 = [(NSDictionary *)self->_clientInfo objectForKey:PRProcessIdentifierKey];
    *buf = 138412546;
    *&buf[4] = v12;
    *&buf[12] = 1024;
    *&buf[14] = [v13 intValue];
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "PRGenericRanging: XPC command - configureForP2PRanging. Process name: %@, pid: %d", buf, 0x12u);
  }

  if (!v9)
  {
    v61 = +[NSAssertionHandler currentHandler];
    [v61 handleFailureInMethod:a2 object:self file:@"PRRangingServiceProxy.mm" lineNumber:150 description:{@"Invalid parameter not satisfying: %@", @"remoteDevice"}];
  }

  v14 = sub_10035D02C();
  v15 = (*(*v14[814] + 72))(v14[814]);
  v16 = v15;
  sub_100004A08(buf, (&off_10098BC60)[v15 >> 32]);
  if (v78 >= 0)
  {
    v17 = buf;
  }

  else
  {
    v17 = *buf;
  }

  v18 = [NSString stringWithFormat:@"Ranging service is not ready. Reason: %s", v17];
  if (v78 < 0)
  {
    operator delete(*buf);
  }

  if ((v16 - 3) <= 0xFFFFFFFD)
  {
    v98 = NSLocalizedDescriptionKey;
    v99 = v18;
    v19 = [NSDictionary dictionaryWithObjects:&v99 forKeys:&v98 count:1];
    v20 = PRErrorWithCodeAndUserInfo(101, v19);

    v10[2](v10, 0, v20);
    goto LABEL_78;
  }

  if (self->_p2pServiceId)
  {
    v21 = sub_10035D02C();
    sub_10003E810(buf, self->_rangingManagerClient.__ptr_ + 1);
    v71 = *buf;
    v72 = *&buf[8];
    if (*&buf[8])
    {
      atomic_fetch_add_explicit((*&buf[8] + 16), 1uLL, memory_order_relaxed);
    }

    v22 = sub_10035DEEC(v21, &v71, self->_p2pServiceId);
    if (v72)
    {
      std::__shared_weak_count::__release_weak(v72);
    }

    if (*&buf[8])
    {
      sub_10000AD84(*&buf[8]);
    }

    if ((v22 & 1) == 0)
    {
      v96 = NSLocalizedDescriptionKey;
      v97 = @"Failed to override P2P job.";
      v38 = [NSDictionary dictionaryWithObjects:&v97 forKeys:&v96 count:1];
      v20 = PRErrorWithCodeAndUserInfo(105, v38);

      v10[2](v10, 0, v20);
      goto LABEL_78;
    }
  }

  v20 = [v64 objectForKey:PRP2PArgsRangingRole];
  if (!v20 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v94 = NSLocalizedDescriptionKey;
    v95 = @"No session role provided.";
    v36 = [NSDictionary dictionaryWithObjects:&v95 forKeys:&v94 count:1];
    v37 = PRErrorWithCodeAndUserInfo(100, v36);

    v10[2](v10, 0, v37);
    goto LABEL_78;
  }

  if ([v20 intValue] && objc_msgSend(v20, "intValue") != 1)
  {
    v92 = NSLocalizedDescriptionKey;
    v93 = @"Invalid session role provided.";
    v39 = [NSDictionary dictionaryWithObjects:&v93 forKeys:&v92 count:1];
    v40 = PRErrorWithCodeAndUserInfo(100, v39);

    v10[2](v10, 0, v40);
    goto LABEL_78;
  }

  v23 = sub_10035D02C();
  v24 = v23[406];
  v25 = v23[407];
  if (v25)
  {
    atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v62 = v25;
  if (!v24)
  {
    v90 = NSLocalizedDescriptionKey;
    v91 = @"Configuration Manager Error.";
    v42 = [NSDictionary dictionaryWithObjects:&v91 forKeys:&v90 count:1];
    v63 = PRErrorWithCodeAndUserInfo(999, v42);

    v10[2](v10, 0, v63);
    goto LABEL_76;
  }

  v63 = [v64 objectForKey:PRDebugConfigArgUWBChannel];
  if (v63 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v26 = [v63 intValue];
    v34 = sub_1004282F4(v26, v27, v28, v29, v30, v31, v32, v33);
    v35 = 256;
  }

  else
  {
    v34 = 0;
    v35 = 0;
  }

  v41 = [v9 roseMACAddress];
  [v41 getBytes:&v89 length:8];

  v83 = 1;
  v84 = 0;
  v85 = 0;
  v86 = v89;
  v87 = 1;
  v88 = 0;
  v69 = 0;
  v70 = &v83;
  if (!sub_1003299D8(v24, &v68, &v69, v35 | v34))
  {
    v81 = NSLocalizedDescriptionKey;
    v82 = @"Failed to find usable UWB channel for service request.";
    v43 = [NSDictionary dictionaryWithObjects:&v82 forKeys:&v81 count:1];
    v44 = PRErrorWithCodeAndUserInfo(999, v43);

    v10[2](v10, 0, v44);
    goto LABEL_76;
  }

  if ([v20 intValue])
  {
    sub_10019C27C(&v68, buf);
  }

  else
  {
    sub_10019BF40(&v68, buf);
  }

  v45 = qword_1009F9820;
  if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
  {
    if ((v80[57] & 1) == 0)
    {
      sub_1000195BC();
    }

    *v75 = 67109120;
    *&v75[4] = v80[56];
    _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, "[P2PDEBUG] post prep req uwbChannel %hhu", v75, 8u);
  }

  v46 = v64;
  if (v64)
  {
    v67 = 0;
    v47 = sub_10002A358(v64, v80, &v67);
    v48 = v67;
    v49 = v48;
    if ((v47 & 1) == 0)
    {
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
      {
        sub_10049D39C();
      }

      v10[2](v10, 0, v49);
      goto LABEL_75;
    }

    v46 = v64;
  }

  v49 = [v46 objectForKey:PRDebugConfigArgSolutionVariant];
  if (v49)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v50 = qword_1009F9820;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
      {
        *v75 = 0;
        _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_DEFAULT, "P2P Ranging: PRDebugConfigArgSolutionVariant passed as an option.", v75, 2u);
      }

      v51 = [v49 intValue];
      switch(v51)
      {
        case 0u:
          v55 = qword_1009F9820;
          if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
          {
            *v75 = 0;
            _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_DEFAULT, "   PRRoseSolutionNotSensorFused", v75, 2u);
          }

          v53 = 1;
          goto LABEL_65;
        case 2u:
          v54 = qword_1009F9820;
          if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
          {
            *v75 = 0;
            _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_DEFAULT, "   PRRoseSolutionRawRangeSensorFusionAngle", v75, 2u);
          }

          v53 = 5;
          goto LABEL_65;
        case 1u:
          v52 = qword_1009F9820;
          if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
          {
            *v75 = 0;
            _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_DEFAULT, "   PRRoseSolutionSensorFused", v75, 2u);
          }

          v53 = 3;
LABEL_65:
          v79 = v53;
          break;
      }
    }
  }

  v56 = sub_10035D02C();
  sub_10003E810(v75, self->_rangingManagerClient.__ptr_ + 1);
  v65 = *v75;
  v66 = v76;
  if (v76)
  {
    atomic_fetch_add_explicit(&v76->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v57 = sub_10035D888(v56, &v65);
  if (v66)
  {
    std::__shared_weak_count::__release_weak(v66);
  }

  if (v76)
  {
    sub_10000AD84(v76);
  }

  if ((v57 & 0x10000) != 0)
  {
    v60 = self;
    objc_sync_enter(v60);
    self->_p2pServiceId = v57;
    objc_sync_exit(v60);

    v10[2](v10, 1, 0);
    [(PRRangingServiceProxy *)v60 remoteDevice:v9 didChangeState:1];
  }

  else
  {
    v73 = NSLocalizedDescriptionKey;
    v74 = @"Register for service failed";
    v58 = [NSDictionary dictionaryWithObjects:&v74 forKeys:&v73 count:1];
    v59 = PRErrorWithCodeAndUserInfo(101, v58);

    v10[2](v10, 0, v59);
  }

LABEL_75:

LABEL_76:
  if (v62)
  {
    sub_10000AD84(v62);
  }

LABEL_78:
}

- (void)startP2PRanging:(id)a3 reply:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (!v7)
  {
    v18 = +[NSAssertionHandler currentHandler];
    [v18 handleFailureInMethod:a2 object:self file:@"PRRangingServiceProxy.mm" lineNumber:270 description:{@"Invalid parameter not satisfying: %@", @"remoteDevice"}];
  }

  v9 = qword_1009F9820;
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [(NSDictionary *)self->_clientInfo objectForKey:PRProcessNameKey];
    v11 = [(NSDictionary *)self->_clientInfo objectForKey:PRProcessIdentifierKey];
    *buf = 138412546;
    v28 = v10;
    v29 = 1024;
    v30 = [v11 intValue];
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "PRGenericRanging: XPC command - startP2PRanging. Process name: %@, pid: %d", buf, 0x12u);
  }

  v12 = [v7 roseMACAddress];
  [v12 getBytes:&v42 length:8];

  *buf = 1;
  LOBYTE(v28) = 0;
  v31 = 0;
  v32 = v42;
  v33 = 1;
  v34 = 0;
  v35 = 1;
  v36 = 50000;
  v37 = 1;
  v38 = 10000000;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  if (!self->_p2pServiceId)
  {
    v25 = NSLocalizedDescriptionKey;
    v26 = @"Must configure for ranging before calling start ranging.";
    v15 = [NSDictionary dictionaryWithObjects:&v26 forKeys:&v25 count:1];
    v16 = PRErrorWithCodeAndUserInfo(102, v15);

    v8[2](v8, 0, v16);
LABEL_16:

    goto LABEL_17;
  }

  v13 = sub_10035D02C();
  sub_10003E810(&v19, self->_rangingManagerClient.__ptr_ + 1);
  v21 = v19;
  v22 = v20;
  if (v20)
  {
    atomic_fetch_add_explicit(&v20->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v14 = sub_10035E614(v13, &v21, self->_p2pServiceId);
  if (v22)
  {
    std::__shared_weak_count::__release_weak(v22);
  }

  if (v20)
  {
    sub_10000AD84(v20);
  }

  if ((v14 & 1) == 0)
  {
    v23 = NSLocalizedDescriptionKey;
    v24 = @"Initate user triggered ranging failed";
    v17 = [NSDictionary dictionaryWithObjects:&v24 forKeys:&v23 count:1];
    v16 = PRErrorWithCodeAndUserInfo(102, v17);

    v8[2](v8, 0, v16);
    goto LABEL_16;
  }

  v8[2](v8, 1, 0);
LABEL_17:
}

- (void)stopP2PRanging:(id)a3 reply:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (!v7)
  {
    v17 = +[NSAssertionHandler currentHandler];
    [v17 handleFailureInMethod:a2 object:self file:@"PRRangingServiceProxy.mm" lineNumber:312 description:{@"Invalid parameter not satisfying: %@", @"remoteDevice"}];
  }

  v9 = qword_1009F9820;
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [(NSDictionary *)self->_clientInfo objectForKey:PRProcessNameKey];
    v11 = [(NSDictionary *)self->_clientInfo objectForKey:PRProcessIdentifierKey];
    *buf = 138412546;
    *&buf[4] = v10;
    *&buf[12] = 1024;
    *&buf[14] = [v11 intValue];
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "PRGenericRanging: XPC command - stopP2PRanging. Process name: %@, pid: %d", buf, 0x12u);
  }

  if (!self->_p2pServiceId)
  {
    v22 = NSLocalizedDescriptionKey;
    v23 = @"This remote device is unknown";
    v14 = [NSDictionary dictionaryWithObjects:&v23 forKeys:&v22 count:1];
    v15 = PRErrorWithCodeAndUserInfo(103, v14);

    v8[2](v8, 0, v15);
LABEL_16:

    goto LABEL_17;
  }

  v12 = sub_10035D02C();
  sub_10003E810(buf, self->_rangingManagerClient.__ptr_ + 1);
  v18 = *buf;
  v19 = *&buf[8];
  if (*&buf[8])
  {
    atomic_fetch_add_explicit((*&buf[8] + 16), 1uLL, memory_order_relaxed);
  }

  v13 = sub_10035F214(v12, &v18, self->_p2pServiceId);
  if (v19)
  {
    std::__shared_weak_count::__release_weak(v19);
  }

  if (*&buf[8])
  {
    sub_10000AD84(*&buf[8]);
  }

  if ((v13 & 1) == 0)
  {
    v20 = NSLocalizedDescriptionKey;
    v21 = @"Stop ranging failed";
    v16 = [NSDictionary dictionaryWithObjects:&v21 forKeys:&v20 count:1];
    v15 = PRErrorWithCodeAndUserInfo(103, v16);

    v8[2](v8, 0, v15);
    goto LABEL_16;
  }

  v8[2](v8, 1, 0);
LABEL_17:
}

- (id).cxx_construct
{
  *(self + 2) = 0;
  *(self + 3) = 0;
  return self;
}

@end