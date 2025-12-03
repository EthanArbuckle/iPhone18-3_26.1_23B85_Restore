@interface NIServerGRResponderRangingService
+ (id)sharedInstance;
- (BOOL)_updateThrottleRateForDevice:(id)device session:(shared_ptr<rose:(unsigned __int16)session :objects::GRSession>)a4 ticketId:;
- (BOOL)_validateDiscoveryTokenDict:(id)dict;
- (BOOL)throttleSuperframeParticipationWithRate:(float)rate forTicket:(unsigned __int16)ticket clientIdentifier:(id)identifier;
- (id).cxx_construct;
- (id)_getDevice:(shared_ptr<rose::objects::RoseBaseSession>)device;
- (id)_initInternal;
- (id)_internalPrintableState;
- (id)printableState;
- (id)triggerRangingForTicket:(unsigned __int16)ticket device:(id)device updatedDevice:(id)updatedDevice clientIdentifier:(id)identifier uwbAddressRotated:(BOOL)rotated;
- (optional<rose::RoseServiceRequest>)_prepareServiceRequestWithDevice:(SEL)device;
- (optional<unsigned)_getTicket:(shared_ptr<rose::objects::RoseBaseSession>)ticket;
- (optional<unsigned)getSessionTicketForDevice:(id)device clientIdentifier:(id)identifier clientQueue:(id)queue forDelegate:(id)delegate;
- (shared_ptr<rose::objects::GRSession>)_getSession:(unsigned __int16)session;
- (shared_ptr<rose::objects::GRSession>)_getSessionWithAddress:(unint64_t)address;
- (unsigned)_homeAnchorVariantFromDiscoveryToken:(id)token;
- (void)_didReceiveDeviceMotion:(const void *)motion session:(shared_ptr<rose::objects::RoseBaseSession>)session;
- (void)_didReceiveNewSolution:(const void *)solution session:(shared_ptr<rose::objects::RoseBaseSession>)session;
- (void)_didReceiveRemoteData:(const void *)data session:(shared_ptr<rose::objects::RoseBaseSession>)session;
- (void)_getClientDelegateAndQueueMap:(shared_ptr<rose:(id)map :objects::RoseBaseSession>)a3 completion:;
- (void)_sendHangupSignalForSession:(shared_ptr<rose::objects::GRSession>)session;
- (void)_serviceRequestDidUpdateStatus:(ServiceRequestStatusUpdate)status session:(shared_ptr<rose::objects::RoseBaseSession>)session;
- (void)_sessionDidInvalidatedWithReason:(int)reason session:(shared_ptr<rose::objects::RoseBaseSession>)session;
- (void)removeAsInterestedClientIdentifier:(id)identifier;
- (void)stopRangingForTicket:(unsigned __int16)ticket clientIdentifier:(id)identifier uwbAddress:(unint64_t)address sendingHangUp:(BOOL)up;
@end

@implementation NIServerGRResponderRangingService

+ (id)sharedInstance
{
  if (qword_1009EC6B8 != -1)
  {
    sub_100499D0C();
  }

  v3 = qword_1009EC6B0;

  return v3;
}

- (id)_initInternal
{
  v16.receiver = self;
  v16.super_class = NIServerGRResponderRangingService;
  v2 = [(NIServerGRResponderRangingService *)&v16 init];
  v3 = v2;
  if (v2)
  {
    v4 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
    v5 = dispatch_queue_create("com.apple.nearbyd.grsession.responder-singleton-service", v4);
    queue = v2->_queue;
    v2->_queue = v5;

    v7 = objc_opt_new();
    uUIDString = [v7 UUIDString];
    sub_100004A08(&v14, [uUIDString UTF8String]);
    if (*(&v2->_containerIdentifier.__rep_.__l + 23) < 0)
    {
      operator delete(v2->_containerIdentifier.__rep_.__l.__data_);
    }

    *v2->_containerIdentifier.__rep_.__s.__data_ = v14;
    *(&v2->_containerIdentifier.__rep_.__l + 2) = v15;
    HIBYTE(v15) = 0;
    LOBYTE(v14) = 0;

    if (+[NIPlatformInfo isInternalBuild](NIPlatformInfo, "isInternalBuild") || (+[NSUserDefaults standardUserDefaults](NSUserDefaults, "standardUserDefaults"), v9 = objc_claimAutoreleasedReturnValue(), v10 = [v9 BOOLForKey:@"EnableStateDump"], v9, v10))
    {
      v11 = v3->_queue;
      v13 = v3;
      os_state_add_handler();
    }
  }

  return v3;
}

- (optional<unsigned)getSessionTicketForDevice:(id)device clientIdentifier:(id)identifier clientQueue:(id)queue forDelegate:(id)delegate
{
  deviceCopy = device;
  identifierCopy = identifier;
  queueCopy = queue;
  delegateCopy = delegate;
  v30 = 0;
  v31 = &v30;
  v32 = 0x3812000000;
  v33 = sub_10001B430;
  v34 = nullsub_14;
  v35 = 0;
  v36 = 0;
  v37 = 1;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001B448;
  block[3] = &unk_10098A238;
  v15 = identifierCopy;
  v24 = v15;
  selfCopy = self;
  v16 = queueCopy;
  v26 = v16;
  v17 = delegateCopy;
  v27 = v17;
  v18 = deviceCopy;
  v28 = v18;
  v29 = &v30;
  dispatch_sync(queue, block);
  v19 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    if (*(v31 + 50) == 1)
    {
      v20 = *(v31 + 24);
    }

    else
    {
      v20 = 0xFFFF;
    }

    *buf = 67109120;
    v39 = v20;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "#ses-grResponder,Get rose GRSession with ticket: %d", buf, 8u);
  }

  v21 = *(v31 + 12);

  _Block_object_dispose(&v30, 8);
  return v21;
}

- (id)triggerRangingForTicket:(unsigned __int16)ticket device:(id)device updatedDevice:(id)updatedDevice clientIdentifier:(id)identifier uwbAddressRotated:(BOOL)rotated
{
  deviceCopy = device;
  updatedDeviceCopy = updatedDevice;
  identifierCopy = identifier;
  if (deviceCopy && ([deviceCopy cbDevice], v15 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v15, "identifier"), v16 = objc_claimAutoreleasedReturnValue(), v16, v15, v16))
  {
    btAdvertisingAddress = [updatedDeviceCopy btAdvertisingAddress];
    memset(&v53[3], 0, 52);
    v25 = 0;
    v26 = &v25;
    v27 = 0x3032000000;
    v28 = sub_10001BE94;
    v29 = sub_10001BEA4;
    v30 = 0;
    v18 = identifierCopy;
    sub_100004A08(v23, [identifierCopy UTF8String]);
    queue = self->_queue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3321888768;
    block[2] = sub_10001BEAC;
    block[3] = &unk_10098A260;
    block[4] = self;
    if (SHIBYTE(v24) < 0)
    {
      sub_1000056BC(&__p, v23[0], v23[1]);
    }

    else
    {
      __p = *v23;
      v37 = v24;
    }

    v32 = identifierCopy;
    v33 = deviceCopy;
    v21 = updatedDeviceCopy;
    v48 = *v53;
    ticketCopy = ticket;
    v38 = 2;
    v39 = 0;
    v40 = 0;
    v41 = 0;
    v43 = WORD2(btAdvertisingAddress);
    v42 = btAdvertisingAddress;
    v44 = 1;
    v45 = 1;
    v46 = 0;
    v47 = 0;
    v49 = *&v53[16];
    *v50 = *&v53[32];
    *&v50[15] = *&v53[47];
    v34 = v21;
    v35 = &v25;
    rotatedCopy = rotated;
    dispatch_sync(queue, block);
    v20 = v26[5];

    if (SHIBYTE(v37) < 0)
    {
      operator delete(__p);
    }

    if (SHIBYTE(v24) < 0)
    {
      operator delete(v23[0]);
    }

    _Block_object_dispose(&v25, 8);
  }

  else
  {
    v20 = [NSError errorWithDomain:@"com.apple.NearbyInteraction" code:-5887 userInfo:0];
  }

  return v20;
}

- (void)stopRangingForTicket:(unsigned __int16)ticket clientIdentifier:(id)identifier uwbAddress:(unint64_t)address sendingHangUp:(BOOL)up
{
  identifierCopy = identifier;
  queue = self->_queue;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10001C8B4;
  v13[3] = &unk_10098A298;
  selfCopy = self;
  addressCopy = address;
  upCopy = up;
  v14 = identifierCopy;
  ticketCopy = ticket;
  v12 = identifierCopy;
  dispatch_sync(queue, v13);
}

- (BOOL)throttleSuperframeParticipationWithRate:(float)rate forTicket:(unsigned __int16)ticket clientIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  queue = self->_queue;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10001CF04;
  v12[3] = &unk_10098A2C0;
  ticketCopy = ticket;
  rateCopy = rate;
  v12[4] = self;
  v13 = identifierCopy;
  v14 = &v17;
  v10 = identifierCopy;
  dispatch_sync(queue, v12);
  LOBYTE(self) = *(v18 + 24);

  _Block_object_dispose(&v17, 8);
  return self;
}

- (void)removeAsInterestedClientIdentifier:(id)identifier
{
  identifierCopy = identifier;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10001D2FC;
  v7[3] = &unk_10098A2E8;
  v8 = identifierCopy;
  selfCopy = self;
  v6 = identifierCopy;
  dispatch_sync(queue, v7);
}

- (id)printableState
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_10001BE94;
  v10 = sub_10001BEA4;
  v11 = 0;
  queue = self->_queue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10001D664;
  v5[3] = &unk_10098A310;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (id)_internalPrintableState
{
  v3 = objc_opt_new();
  dispatch_assert_queue_V2(self->_queue);
  context = objc_autoreleasePoolPush();
  v4 = objc_opt_new();
  for (i = self->clientMap.__table_.__first_node_.__next_; i; i = *i)
  {
    sub_100023B54(&__p, i + 1);
    clientId = [v15 clientId];
    context = [NSMutableString stringWithFormat:@"[ClientId: %@: <", clientId, context];

    if (v15)
    {
      [v15 interested_tickets];
      if (*(&v17 + 1))
      {
        v8 = v17;
        if (v17)
        {
          v9 = @"TicketId: %hu";
          do
          {
            [context appendFormat:v9, *(v8 + 8)];
            v8 = *v8;
            v9 = @", TicketId: %hu";
          }

          while (v8);
        }
      }
    }

    else
    {
      v18 = 0;
      v16 = 0u;
      v17 = 0u;
    }

    [context appendFormat:@">]"];
    [v4 addObject:context];
    sub_100021914(&v16);

    if (v14 < 0)
    {
      operator delete(__p);
    }
  }

  v10 = [v4 copy];

  objc_autoreleasePoolPop(context);

  return v10;
}

- (optional<rose::RoseServiceRequest>)_prepareServiceRequestWithDevice:(SEL)device
{
  v6 = a4;
  v7 = +[NSUserDefaults standardUserDefaults];
  v8 = [v7 BOOLForKey:@"HomePassiveSensingWantsChannelDiversity"];
  v9 = v8;
  if (v8)
  {
    v10 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#ses-grResponder,* Channel diversity turned ON from default writes.", buf, 2u);
    }
  }

  v11 = sub_1000054A8();
  v12 = sub_10041C958(v11[144]);
  if ([v7 BOOLForKey:@"NIHomePreferAlternativeAntenna"])
  {
    v13 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#ses-grResponder,Using alternative antenna for NI Home ranging", buf, 2u);
    }

    v12 ^= 1u;
  }

  v14 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = v12;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#ses-grResponder,Prefer dedicated antenna for NI Home ranging? %d", buf, 8u);
  }

  if (![v6 systemKeyRelationship] || (objc_msgSend(v6, "cbDevice"), v15 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v15, "model"), v16 = objc_claimAutoreleasedReturnValue(), v17 = v16 == 0, v16, v15, v17))
  {
    discoveryToken = [v6 discoveryToken];
    v24 = [(NIServerGRResponderRangingService *)self _homeAnchorVariantFromDiscoveryToken:discoveryToken];

    if (v24 != 999)
    {
      v22 = 0uLL;
      if (v24 != 2)
      {
        goto LABEL_19;
      }

      goto LABEL_17;
    }

LABEL_18:
    *&v22 = -1;
    *(&v22 + 1) = -1;
    goto LABEL_19;
  }

  cbDevice = [v6 cbDevice];
  model = [cbDevice model];
  v20 = sub_10001E184(model);

  v21 = sub_10041C974(v20);
  if (v21 == 999)
  {
    goto LABEL_18;
  }

  v22 = 0uLL;
  if (v21 == 2)
  {
LABEL_17:
    v22 = xmmword_100548C00;
  }

LABEL_19:
  v32 = 0;
  v33 = 0;
  v34 = 68354305;
  v35 = 0;
  v36 = 0;
  v37 = 0;
  v38 = 0;
  v39 = 0x200000003;
  v40 = 3;
  v41 = v22;
  v42 = 0;
  v43 = 6;
  v44 = v9;
  v45 = v12;
  v46 = 0;
  v47 = 1;
  v48 = 7;
  v25 = sub_10035D02C();
  v26 = *(v25 + 406);
  v27 = *(v25 + 407);
  if (v27)
  {
    atomic_fetch_add_explicit(&v27->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (!v26)
  {
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_10049A3D4();
    }

LABEL_31:
    retstr->var0.__null_state_ = 0;
    retstr->var0.__val_.range_enable_params.nbamms.mms_pkt_type.__engaged_ = 0;
    if (!v27)
    {
      goto LABEL_33;
    }

LABEL_32:
    sub_10000AD84(v27);
    goto LABEL_33;
  }

  if (!sub_1003299D8(v26, &v32, &v32 + 1, 0))
  {
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_FAULT))
    {
      sub_10049A394();
    }

    goto LABEL_31;
  }

  sub_10019CB3C(&v32, buf);
  v28 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    *v30 = 0;
    _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "#ses-grResponder,[WatchNearbyDevices] sleep will be turned off", v30, 2u);
  }

  memcpy(retstr, buf, 0x240uLL);
  retstr->var0.__val_.range_enable_params.nbamms.mms_pkt_type.__engaged_ = 1;
  if (v27)
  {
    goto LABEL_32;
  }

LABEL_33:

  return result;
}

- (BOOL)_updateThrottleRateForDevice:(id)device session:(shared_ptr<rose:(unsigned __int16)session :objects::GRSession>)a4 ticketId:
{
  cntrl = a4.__cntrl_;
  ptr = a4.__ptr_;
  deviceCopy = device;
  [deviceCopy currentHighestThrottleRate];
  v9 = v8;
  v10 = sub_10034041C(*ptr, v8);
  v11 = qword_1009F9820;
  if (v10)
  {
    v12 = qword_1009F9820;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_100342F8C(v10, __p);
      if (v16 >= 0)
      {
        v14 = __p;
      }

      else
      {
        v14 = __p[0];
      }

      *buf = 67109634;
      v18 = cntrl;
      v19 = 2048;
      v20 = v9;
      v21 = 2080;
      v22 = v14;
      _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "#ses-grResponder,#throttle failed to schedule throttling request for ticket: %hu rate %0.2f. Error: %s", buf, 0x1Cu);
      if (v16 < 0)
      {
        operator delete(__p[0]);
      }
    }
  }

  else if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109376;
    v18 = cntrl;
    v19 = 2048;
    v20 = v9;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#ses-grResponder,#throttle succeed to schedule throttling request for ticket: %hu rate %0.2f.", buf, 0x12u);
  }

  return 1;
}

- (void)_sendHangupSignalForSession:(shared_ptr<rose::objects::GRSession>)session
{
  if (*session.__ptr_)
  {
    ptr = session.__ptr_;
    v5 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      if ((*(*ptr + 752) & 0x10000) != 0)
      {
        v6 = *(*ptr + 752);
      }

      else
      {
        v6 = 0xFFFF;
      }

      *buf = 67109120;
      *&buf[4] = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#ses-grResponder,#hangup Sending hangup signal for session with ticket ID: %d", buf, 8u);
    }

    LOBYTE(__ns.__rep_) = 0;
    sub_100025100(buf, 16);
    v7 = *buf;
    **buf = 258;
    *(v7 + 2) = 0;
    v7[1] = 0;
    sub_100340788(*ptr, buf);
    v8.__rep_ = [(NIServerGRResponderRangingService *)self _nominalCycleRate];
    if (v8.__rep_ >= 1)
    {
      v9 = 1000000 * v8.__rep_;
      if (v8.__rep_ >= 0x8637BD057A0)
      {
        v9 = 0x7FFFFFFFFFFFFFFFLL;
      }

      __ns.__rep_ = v9;
      std::this_thread::sleep_for (&__ns);
    }

    if (*buf)
    {
      v12 = *buf;
      operator delete(*buf);
    }
  }
}

- (void)_didReceiveNewSolution:(const void *)solution session:(shared_ptr<rose::objects::RoseBaseSession>)session
{
  var0 = session.var0;
  v7 = *(solution + 1);
  v33 = *solution;
  v34 = v7;
  v35 = *(solution + 2);
  sub_100020458(v36, solution + 48);
  sub_1000206E0(v42, solution + 608);
  sub_1000207A0(v45, solution + 95);
  memcpy(v49, solution + 880, sizeof(v49));
  sub_10002096C(v50, solution + 91);
  v8 = *(var0 + 1);
  v9 = *var0;
  v10 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3321888768;
  v11[2] = sub_10001EB00;
  v11[3] = &unk_10098A368;
  v12 = v33;
  v13 = v34;
  v14 = v35;
  sub_100020458(&v15, v36);
  sub_1000206E0(v21, v42);
  sub_1000207A0(&v24, v45);
  memcpy(v28, v49, sizeof(v28));
  sub_10002096C(&v29, v50);
  [(NIServerGRResponderRangingService *)self _getClientDelegateAndQueueMap:&v9 completion:v11];
  if (v10)
  {
    sub_10000AD84(v10);
  }

  if (v32 == 1 && __p)
  {
    v31 = __p;
    operator delete(__p);
  }

  if (v27 == 1 && v25)
  {
    v26 = v25;
    operator delete(v25);
  }

  if (v23 == 1)
  {
    sub_10002074C(v22, v22[1]);
  }

  if (v20 == 1)
  {
    if (v18)
    {
      v19 = v18;
      operator delete(v18);
    }

    if (v16)
    {
      v17 = v16;
      operator delete(v16);
    }
  }

  if (v53 == 1 && v51)
  {
    v52 = v51;
    operator delete(v51);
  }

  if (v48 == 1 && v46)
  {
    v47 = v46;
    operator delete(v46);
  }

  if (v44 == 1)
  {
    sub_10002074C(v43, v43[1]);
  }

  if (v41 == 1)
  {
    if (v39)
    {
      v40 = v39;
      operator delete(v39);
    }

    if (v37)
    {
      v38 = v37;
      operator delete(v37);
    }
  }
}

- (void)_didReceiveRemoteData:(const void *)data session:(shared_ptr<rose::objects::RoseBaseSession>)session
{
  var0 = session.var0;
  v16 = *data;
  v18 = 0;
  v19 = 0;
  v17 = 0;
  sub_100009A48(&v17, *(data + 1), *(data + 2), *(data + 2) - *(data + 1));
  v20 = *(data + 2);
  v7 = *(var0 + 1);
  v14 = *var0;
  v15 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3321888768;
  v8[2] = sub_10001F268;
  v8[3] = &unk_10098A3D0;
  v9 = v16;
  v11 = 0;
  v12 = 0;
  __p = 0;
  sub_100009A48(&__p, v17, v18, v18 - v17);
  v13 = v20;
  [(NIServerGRResponderRangingService *)self _getClientDelegateAndQueueMap:&v14 completion:v8];
  if (v15)
  {
    sub_10000AD84(v15);
  }

  if (__p)
  {
    v11 = __p;
    operator delete(__p);
  }

  if (v17)
  {
    v18 = v17;
    operator delete(v17);
  }
}

- (void)_serviceRequestDidUpdateStatus:(ServiceRequestStatusUpdate)status session:(shared_ptr<rose::objects::RoseBaseSession>)session
{
  v4 = *(session.var0 + 1);
  v7 = *session.var0;
  v8 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10001F51C;
  v5[3] = &unk_10098A428;
  statusCopy = status;
  [(NIServerGRResponderRangingService *)self _getClientDelegateAndQueueMap:&v7 completion:v5];
  if (v8)
  {
    sub_10000AD84(v8);
  }
}

- (void)_sessionDidInvalidatedWithReason:(int)reason session:(shared_ptr<rose::objects::RoseBaseSession>)session
{
  var0 = session.var0;
  v7 = *(session.var0 + 1);
  v15 = *session.var0;
  v16 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v8 = [(NIServerGRResponderRangingService *)self _getTicket:&v15];
  if (v16)
  {
    sub_10000AD84(v16);
  }

  if ((v8 & 0x10000) != 0)
  {
    v9 = *(var0 + 1);
    v13 = *var0;
    v14 = v9;
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10001F74C;
    v10[3] = &unk_10098A470;
    reasonCopy = reason;
    v12 = v8 & 0xFFFFFF;
    [(NIServerGRResponderRangingService *)self _getClientDelegateAndQueueMap:&v13 completion:v10];
    if (v14)
    {
      sub_10000AD84(v14);
    }
  }

  else if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
  {
    sub_10049A408();
  }
}

- (void)_didReceiveDeviceMotion:(const void *)motion session:(shared_ptr<rose::objects::RoseBaseSession>)session
{
  v4 = *(motion + 9);
  v32 = *(motion + 8);
  v33 = v4;
  v34 = *(motion + 10);
  v5 = *(motion + 5);
  v28 = *(motion + 4);
  v29 = v5;
  v6 = *(motion + 7);
  v30 = *(motion + 6);
  v31 = v6;
  v7 = *(motion + 1);
  v24 = *motion;
  v25 = v7;
  v8 = *(motion + 3);
  v26 = *(motion + 2);
  v27 = v8;
  v9 = *(session.var0 + 1);
  v22 = *session.var0;
  v23 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10001F970;
  v10[3] = &unk_10098A4B8;
  v19 = v32;
  v20 = v33;
  v21 = v34;
  v15 = v28;
  v16 = v29;
  v17 = v30;
  v18 = v31;
  v11 = v24;
  v12 = v25;
  v13 = v26;
  v14 = v27;
  [(NIServerGRResponderRangingService *)self _getClientDelegateAndQueueMap:&v22 completion:v10, session.var1];
  if (v23)
  {
    sub_10000AD84(v23);
  }
}

- (shared_ptr<rose::objects::GRSession>)_getSession:(unsigned __int16)session
{
  v5 = v3;
  sessionCopy = session;
  v6 = sub_1000222CC(&self->serviceMap.__table_.__bucket_list_.__ptr_, &sessionCopy);
  if (v6)
  {
    v10 = &sessionCopy;
    v6 = sub_10002385C(&self->serviceMap.__table_.__bucket_list_.__ptr_, &sessionCopy);
    v8 = v6[4];
    *v5 = v6[3];
    v5[1] = v8;
    if (v8)
    {
      atomic_fetch_add_explicit(v8 + 1, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    *v5 = 0;
    v5[1] = 0;
  }

  result.__cntrl_ = v7;
  result.__ptr_ = v6;
  return result;
}

- (shared_ptr<rose::objects::GRSession>)_getSessionWithAddress:(unint64_t)address
{
  v5 = v3;
  v9[0] = address;
  v6 = sub_100009BCC(&self->deviceMap.__table_.__bucket_list_.__ptr_, v9);
  if (v6)
  {
    v9[2] = v9;
    v8 = sub_100023300(&self->deviceMap.__table_.__bucket_list_.__ptr_, v9)[3];
    -[NIServerGRResponderRangingService _getSession:](self, "_getSession:", [v8 gr_session_ticket_id]);
  }

  else
  {
    *v5 = 0;
    v5[1] = 0;
  }

  result.__cntrl_ = v7;
  result.__ptr_ = v6;
  return result;
}

- (id)_getDevice:(shared_ptr<rose::objects::RoseBaseSession>)device
{
  if (*(*device.var0 + 754))
  {
    var0 = device.var0;
    p_first_node = &self->deviceMap.__table_.__first_node_;
    while (1)
    {
      p_first_node = p_first_node->__next_;
      if (!p_first_node)
      {
        break;
      }

      gr_session_ticket_id = [p_first_node[3].__next_ gr_session_ticket_id];
      v7 = *(*var0 + 752);
      if ((v7 & 0x10000) == 0)
      {
        sub_1000195BC();
      }

      if (gr_session_ticket_id == v7)
      {
        v3 = p_first_node[3].__next_;
        goto LABEL_8;
      }
    }
  }

  v3 = 0;
LABEL_8:

  return v3;
}

- (optional<unsigned)_getTicket:(shared_ptr<rose::objects::RoseBaseSession>)ticket
{
  v3 = *(*ticket.var0 + 752);
  if ((v3 & 0x10000) != 0 && (var0 = ticket.var0, v9 = *(*ticket.var0 + 752), v10 = BYTE2(v3), sub_1000222CC(&self->serviceMap.__table_.__bucket_list_.__ptr_, &v9)))
  {
    if ((*(*var0 + 752) & 0x10000) == 0)
    {
      sub_1000195BC();
    }

    v5 = *(*var0 + 752) & 0xFF00;
    v6 = *(*var0 + 752);
    v7 = 0x10000;
  }

  else
  {
    v7 = 0;
    v6 = 0;
    v5 = 0;
  }

  return (v6 | v7 | v5);
}

- (void)_getClientDelegateAndQueueMap:(shared_ptr<rose:(id)map :objects::RoseBaseSession>)a3 completion:
{
  var0 = a3.var0;
  v6 = a3.var1;
  v7 = *(var0 + 1);
  v14 = *var0;
  v15 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v8 = [(NIServerGRResponderRangingService *)self _getDevice:&v14];
  if (v15)
  {
    sub_10000AD84(v15);
  }

  if (v8)
  {
    [v8 rate_per_client];
    for (i = v13; i; i = *i)
    {
      if (sub_100021574(&self->clientMap.__table_.__bucket_list_.__ptr_, i + 2))
      {
        v16 = (i + 2);
        v10 = [sub_100022718(&self->clientMap.__table_.__bucket_list_.__ptr_ i + 2)[5]];
        v16 = (i + 2);
        v11 = [sub_100022718(&self->clientMap.__table_.__bucket_list_.__ptr_ i + 2)[5]];
        (*(v6 + 2))(v6, v10, v11);
      }
    }

    sub_100021FB4(v12);
  }
}

- (BOOL)_validateDiscoveryTokenDict:(id)dict
{
  dictCopy = dict;
  v4 = dictCopy;
  if (dictCopy)
  {
    v5 = [dictCopy objectForKeyedSubscript:&off_1009C3D10];
    if (v5 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v6 = [v4 objectForKeyedSubscript:&off_1009C3D28];
      if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v7 = 1;
      }

      else
      {
        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
        {
          sub_10049A470();
        }

        v7 = 0;
      }
    }

    else
    {
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
      {
        sub_10049A4A4();
      }

      v7 = 0;
    }
  }

  else
  {
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_10049A4D8();
    }

    v7 = 0;
  }

  return v7;
}

- (unsigned)_homeAnchorVariantFromDiscoveryToken:(id)token
{
  v4 = sub_1003005A0(token);
  if ([(NIServerGRResponderRangingService *)self _validateDiscoveryTokenDict:v4])
  {
    v5 = [v4 objectForKeyedSubscript:&off_1009C3D40];
    if (v5)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v6 = sub_10041C9B4([v5 unsignedIntValue]);
      }

      else
      {
        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
        {
          sub_10049A50C();
        }

        v6 = 999;
      }
    }

    else
    {
      v7 = qword_1009F9820;
      v6 = 0;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
      {
        *v9 = 0;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#ses-grResponder,nil value for HomeAnchorVariant", v9, 2u);
        v6 = 0;
      }
    }
  }

  else
  {
    v6 = 999;
  }

  return v6;
}

- (id).cxx_construct
{
  *(self + 1) = 0u;
  *(self + 2) = 0u;
  *(self + 12) = 1065353216;
  *(self + 56) = 0u;
  *(self + 72) = 0u;
  *(self + 22) = 1065353216;
  *(self + 6) = 0u;
  *(self + 7) = 0u;
  *(self + 32) = 1065353216;
  *(self + 9) = 0uLL;
  *(self + 17) = 0;
  return self;
}

@end