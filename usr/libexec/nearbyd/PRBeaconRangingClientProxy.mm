@interface PRBeaconRangingClientProxy
- (BOOL)createBeaconListenerJob:(id *)job;
- (PRBeaconRangingClientProxy)initWithConnection:(id)connection queue:(id)queue;
- (id).cxx_construct;
- (void)activate;
- (void)clearBeaconAllowlist:(id)allowlist;
- (void)connectWithClientInfo:(id)info;
- (void)dealloc;
- (void)didFailWithError:(id)error;
- (void)didReceiveNewSolutions:(id)solutions;
- (void)disablePTSInitiating:(id)initiating;
- (void)enablePTSInitiating:(id)initiating reply:(id)reply;
- (void)pushBeaconAllowlist:(id)allowlist reply:(id)reply;
- (void)rangingRequestDidUpdateStatus:(unint64_t)status;
- (void)rangingServiceDidUpdateState:(unint64_t)state cause:(int64_t)cause;
- (void)startBeaconing:(int64_t)beaconing options:(id)options reply:(id)reply;
- (void)stopBeaconing:(int64_t)beaconing reply:(id)reply;
- (void)terminate;
@end

@implementation PRBeaconRangingClientProxy

- (PRBeaconRangingClientProxy)initWithConnection:(id)connection queue:(id)queue
{
  selfCopy = self;
  connectionCopy = connection;
  queueCopy = queue;
  if (!connectionCopy)
  {
    v17 = +[NSAssertionHandler currentHandler];
    [v17 handleFailureInMethod:a2 object:self file:@"PRBeaconRangingClientProxy.mm" lineNumber:43 description:{@"Invalid parameter not satisfying: %@", @"connection"}];
  }

  v19.receiver = self;
  v19.super_class = PRBeaconRangingClientProxy;
  selfCopy = 0;
  v9 = [(PRBeaconRangingClientProxy *)&v19 init];
  v10 = v9;
  selfCopy = v9;
  if (v9)
  {
    *(v9 + 44) = 0;
    v11 = *(v9 + 4);
    *(v9 + 4) = 0;

    v12 = [[PRNSXPCConnection alloc] initWithConnection:connectionCopy];
    v13 = *(v10 + 1);
    *(v10 + 1) = v12;

    sub_1000523E8();
  }

  v14 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "PRBeaconRangingClientProxy init", buf, 2u);
  }

  v15 = selfCopy;

  return v15;
}

- (void)connectWithClientInfo:(id)info
{
  infoCopy = info;
  v6 = qword_1009F9820;
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [infoCopy objectForKey:PRProcessNameKey];
    v8 = [infoCopy objectForKey:PRProcessIdentifierKey];
    v9 = 138412546;
    v10 = v7;
    v11 = 1024;
    intValue = [v8 intValue];
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "PRBeaconRanging: XPC connection created. Process name: %@, pid: %d", &v9, 0x12u);
  }

  objc_storeStrong(self + 4, info);
  [(PRBeaconRangingClientProxy *)self activate];
}

- (void)dealloc
{
  if ((*(self + 44) & 1) == 0)
  {
    [(PRBeaconRangingClientProxy *)self terminate];
  }

  [*(self + 1) invalidate];
  v3 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "PRBeaconRangingClientProxy dealloc", buf, 2u);
  }

  v4.receiver = self;
  v4.super_class = PRBeaconRangingClientProxy;
  [(PRBeaconRangingClientProxy *)&v4 dealloc];
}

- (void)activate
{
  v3 = sub_10035D02C();
  sub_10003E810(&v6, (*(self + 2) + 8));
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
  sub_10003E810(&v6, (*(self + 2) + 8));
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
  v3 = sub_10035D02C();
  v4 = *(self + 3);
  v6 = *(self + 2);
  v7 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_100361200(v3, &v6);
  if (v7)
  {
    sub_10000AD84(v7);
  }

  *(self + 44) = 1;
  v5 = *(self + 18);
  *(self + 18) = 0;
}

- (void)didFailWithError:(id)error
{
  errorCopy = error;
  v5 = *(self + 1);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10004FE60;
  v7[3] = &unk_10098B638;
  v8 = errorCopy;
  v6 = errorCopy;
  [v5 actOnRemoteObjectAndScheduleBarrierBlock:v7];
}

- (void)didReceiveNewSolutions:(id)solutions
{
  solutionsCopy = solutions;
  v4 = *(self + 18);
  v26[0] = self + 144;
  v5 = v4;
  v26[1] = voucher_adopt();
  if (*(self + 20))
  {
    v6 = sub_100005288();
    v7 = *(self + 6);
    std::mutex::lock((self + 80));
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v8 = solutionsCopy;
    v9 = [v8 countByEnumeratingWithState:&v22 objects:v28 count:16];
    if (v9)
    {
      v10 = v6 - v7;
      v11 = *v23;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v23 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v22 + 1) + 8 * i);
          *buf = [v13 mac_addr];
          *&buf[8] = v10;
          sub_100052568(self + 56, buf);
          if (v14)
          {
            v15 = qword_1009F9820;
            if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
            {
              mac_addr = [v13 mac_addr];
              *buf = 134283777;
              *&buf[4] = mac_addr;
              *&buf[12] = 2050;
              *&buf[14] = v10;
              _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "PtsSession, responder, %{private}llx, latency, %{public}0.3f", buf, 0x16u);
            }
          }
        }

        v9 = [v8 countByEnumeratingWithState:&v22 objects:v28 count:16];
      }

      while (v9);
    }

    std::mutex::unlock((self + 80));
  }

  v17 = *(self + 1);
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_1000501B8;
  v20[3] = &unk_10098B638;
  v18 = solutionsCopy;
  v21 = v18;
  [v17 actOnRemoteObjectAndScheduleBarrierBlock:v20];

  sub_1000523AC(v26);
}

- (void)rangingServiceDidUpdateState:(unint64_t)state cause:(int64_t)cause
{
  v4 = *(self + 1);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000502B8;
  v5[3] = &unk_10098B658;
  v5[4] = state;
  v5[5] = cause;
  [v4 actOnRemoteObjectAndScheduleBarrierBlock:v5];
}

- (void)rangingRequestDidUpdateStatus:(unint64_t)status
{
  v5 = self + 144;
  v4 = *(self + 18);
  v9[0] = self + 144;
  v6 = v4;
  v9[1] = voucher_adopt();
  v7 = *(v5 - 17);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000503F8;
  v8[3] = &unk_10098B678;
  v8[4] = status;
  [v7 actOnRemoteObjectAndScheduleBarrierBlock:v8];
  sub_1000523AC(v9);
}

- (void)startBeaconing:(int64_t)beaconing options:(id)options reply:(id)reply
{
  optionsCopy = options;
  replyCopy = reply;
  v10 = qword_1009F9820;
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [*(self + 4) objectForKey:PRProcessNameKey];
    v12 = [*(self + 4) objectForKey:PRProcessIdentifierKey];
    *buf = 138412546;
    v19 = v11;
    v20 = 1024;
    intValue = [v12 intValue];
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "PRBeaconRanging: XPC command - startBeaconing. Process name: %@, pid: %d", buf, 0x12u);
  }

  if (beaconing == 1)
  {
    [(PRBeaconRangingClientProxy *)self enablePTSInitiating:optionsCopy reply:replyCopy];
    v13 = voucher_copy();
    v14 = *(self + 18);
    *(self + 18) = v13;
  }

  else
  {
    v16 = NSLocalizedDescriptionKey;
    v17 = @"Asked to enable unsupported ranging subtype.";
    v15 = [NSDictionary dictionaryWithObjects:&v17 forKeys:&v16 count:1];
    v14 = PRErrorWithCodeAndUserInfo(100, v15);

    replyCopy[2](replyCopy, 0, v14);
  }
}

- (void)stopBeaconing:(int64_t)beaconing reply:(id)reply
{
  replyCopy = reply;
  v7 = qword_1009F9820;
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [*(self + 4) objectForKey:PRProcessNameKey];
    v9 = [*(self + 4) objectForKey:PRProcessIdentifierKey];
    *buf = 138412546;
    v16 = v8;
    v17 = 1024;
    intValue = [v9 intValue];
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "PRBeaconRanging: XPC command - stopBeaconing. Process name: %@, pid: %d", buf, 0x12u);
  }

  v10 = *(self + 18);
  *(self + 18) = 0;

  if (beaconing == 1)
  {
    [(PRBeaconRangingClientProxy *)self disablePTSInitiating:replyCopy];
  }

  else
  {
    v13 = NSLocalizedDescriptionKey;
    v14 = @"Asked to disable unsupported ranging subtype.";
    v11 = [NSDictionary dictionaryWithObjects:&v14 forKeys:&v13 count:1];
    v12 = PRErrorWithCodeAndUserInfo(100, v11);

    replyCopy[2](replyCopy, 0, v12);
  }
}

- (void)pushBeaconAllowlist:(id)allowlist reply:(id)reply
{
  allowlistCopy = allowlist;
  replyCopy = reply;
  v55 = replyCopy;
  v7 = qword_1009F9820;
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [*(self + 4) objectForKey:PRProcessNameKey];
    v9 = [*(self + 4) objectForKey:PRProcessIdentifierKey];
    *buf = 138412546;
    *&buf[4] = v8;
    *&buf[12] = 1024;
    *&buf[14] = [v9 intValue];
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "PRBeaconRanging: XPC command - pushBeaconAllowlist. Process name: %@, pid: %d", buf, 0x12u);
  }

  if (![allowlistCopy count])
  {
    v61 = NSLocalizedDescriptionKey;
    v62 = @"Must provide at least one beacon to allowlist.";
    v40 = [NSDictionary dictionaryWithObjects:&v62 forKeys:&v61 count:1];
    v41 = PRErrorWithCodeAndUserInfo(106, v40);
    replyCopy[2](replyCopy, 0, v41);

    goto LABEL_40;
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (!*(selfCopy + 21))
  {
    v11 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "No beacon listener job defined. Creating.", buf, 2u);
    }

    v54 = 0;
    v12 = [(PRBeaconRangingClientProxy *)selfCopy createBeaconListenerJob:&v54];
    v13 = v54;
    v14 = v13;
    if ((v12 & 1) == 0)
    {
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
      {
        sub_10049D0AC();
      }

      replyCopy[2](replyCopy, 0, v14);

      objc_sync_exit(selfCopy);
      goto LABEL_40;
    }
  }

  objc_sync_exit(selfCopy);
  v45 = selfCopy;

  v15 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    *&buf[4] = allowlistCopy;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "PRBeaconClient: allowlist the following devices: %@", buf, 0xCu);
  }

  memset(buf, 0, sizeof(buf));
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v16 = allowlistCopy;
  v17 = [v16 countByEnumeratingWithState:&v50 objects:v59 count:16];
  if (v17)
  {
    v18 = *v51;
    obj = v16;
    while (2)
    {
      for (i = 0; i != v17; i = i + 1)
      {
        if (*v51 != v18)
        {
          objc_enumerationMutation(obj);
        }

        v20 = *(*(&v50 + 1) + 8 * i);
        btAdvAddress = [v20 btAdvAddress];
        if (!btAdvAddress || ([v20 btAdvAddress], v22 = objc_claimAutoreleasedReturnValue(), v23 = objc_msgSend(v22, "length") == 6, v22, btAdvAddress, !v23))
        {
          v42 = v55;
          v57 = NSLocalizedDescriptionKey;
          v58 = @"Beacon has invalid BT Adv Address.";
          v43 = [NSDictionary dictionaryWithObjects:&v58 forKeys:&v57 count:1, v45];
          v44 = PRErrorWithCodeAndUserInfo(106, v43);
          v42[2](v42, 0, v44);

          v39 = obj;
          goto LABEL_37;
        }

        btAdvAddress2 = [v20 btAdvAddress];
        [btAdvAddress2 getBytes:&v48 length:6];

        v25 = 0;
        for (j = 5; j != 2; --j)
        {
          v27 = *(&v48 + v25);
          *(&v48 + v25) = *(&v48 + j);
          *(&v48 + j) = v27;
          ++v25;
        }

        v28 = *&buf[8];
        if (*&buf[8] >= *&buf[16])
        {
          v30 = 0xCCCCCCCCCCCCCCCDLL * ((*&buf[8] - *buf) >> 3);
          v31 = v30 + 1;
          if (v30 + 1 > 0x666666666666666)
          {
            sub_100019B38();
          }

          if (0x999999999999999ALL * ((*&buf[16] - *buf) >> 3) > v31)
          {
            v31 = 0x999999999999999ALL * ((*&buf[16] - *buf) >> 3);
          }

          if (0xCCCCCCCCCCCCCCCDLL * ((*&buf[16] - *buf) >> 3) >= 0x333333333333333)
          {
            v32 = 0x666666666666666;
          }

          else
          {
            v32 = v31;
          }

          if (v32)
          {
            sub_10005263C(buf, v32);
          }

          v33 = 8 * ((*&buf[8] - *buf) >> 3);
          *v33 = 2;
          *(v33 + 4) = 0;
          *(v33 + 20) = 0;
          *(v33 + 29) = 0;
          v34 = v48;
          *(v33 + 34) = v49;
          *(v33 + 30) = v34;
          *(v33 + 36) = 1;
          v29 = 40 * v30 + 40;
          v35 = 40 * v30 - (*&buf[8] - *buf);
          memcpy((v33 - (*&buf[8] - *buf)), *buf, *&buf[8] - *buf);
          v36 = *buf;
          *buf = v35;
          *&buf[8] = v29;
          *&buf[16] = 0;
          if (v36)
          {
            operator delete(v36);
          }
        }

        else
        {
          **&buf[8] = 2;
          *(v28 + 4) = 0;
          *(v28 + 20) = 0;
          *(v28 + 29) = 0;
          *(v28 + 30) = v48;
          *(v28 + 34) = v49;
          *(v28 + 36) = 1;
          v29 = v28 + 40;
        }

        *&buf[8] = v29;
      }

      v16 = obj;
      v17 = [obj countByEnumeratingWithState:&v50 objects:v59 count:16];
      if (v17)
      {
        continue;
      }

      break;
    }
  }

  v37 = sub_10035D02C();
  v56[0] = off_10098B718;
  v56[1] = &v55;
  v56[3] = v56;
  sub_10035F80C(v37, buf, v56);
  sub_10005280C(v56);
  v38 = voucher_copy();
  v39 = *(v45 + 18);
  *(v45 + 18) = v38;
LABEL_37:

  if (*buf)
  {
    *&buf[8] = *buf;
    operator delete(*buf);
  }

  replyCopy = v55;
LABEL_40:
}

- (void)clearBeaconAllowlist:(id)allowlist
{
  allowlistCopy = allowlist;
  v4 = qword_1009F9820;
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [*(self + 4) objectForKey:PRProcessNameKey];
    v6 = [*(self + 4) objectForKey:PRProcessIdentifierKey];
    *buf = 138412546;
    v12 = v5;
    v13 = 1024;
    intValue = [v6 intValue];
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "PRBeaconRanging: XPC command - clearBeaconAllowlist. Process name: %@, pid: %d", buf, 0x12u);
  }

  v7 = *(self + 18);
  *(self + 18) = 0;

  v8 = sub_10035D02C();
  v10[0] = off_10098B7A8;
  v10[1] = &allowlistCopy;
  v10[3] = v10;
  sub_10035FA60(v8, v10);
  sub_10005280C(v10);
}

- (void)enablePTSInitiating:(id)initiating reply:(id)reply
{
  replyCopy = reply;
  v6 = sub_10035D02C();
  v7 = *(v6 + 406);
  v8 = *(v6 + 407);
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (!v7)
  {
    v39 = NSLocalizedDescriptionKey;
    v40 = @"Configuration Manager Error.";
    v23 = [NSDictionary dictionaryWithObjects:&v40 forKeys:&v39 count:1];
    v24 = PRErrorWithCodeAndUserInfo(999, v23);
    replyCopy[2](replyCopy, 0, v24);

    goto LABEL_30;
  }

  v31 = 0;
  if (!sub_1003299D8(v7, &v30, &v31, 0))
  {
    v37 = NSLocalizedDescriptionKey;
    v38 = @"Failed to prepare service request.";
    v25 = [NSDictionary dictionaryWithObjects:&v38 forKeys:&v37 count:1];
    v26 = PRErrorWithCodeAndUserInfo(101, v25);
    replyCopy[2](replyCopy, 0, v26);

    goto LABEL_30;
  }

  sub_10019B230(&v30, v35);
  v9 = +[NSUserDefaults standardUserDefaults];
  v10 = [v9 URLForKey:@"P2SConfigPlistPath"];
  v11 = [NSDictionary dictionaryWithContentsOfURL:v10];

  if (v11)
  {
    v12 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "============================================", buf, 2u);
    }

    v13 = qword_1009F9820;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = [v11 description];
      *buf = 138412290;
      *&buf[4] = v14;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "PRBeaconRangingClientProxy options dict:\n%@", buf, 0xCu);
    }

    v15 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "============================================", buf, 2u);
    }

    v29 = 0;
    v16 = sub_10002A358(v11, v36, &v29);
    v17 = v29;
    v18 = v17;
    if ((v16 & 1) == 0)
    {
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
      {
        sub_10049D0E8();
      }

      replyCopy[2](replyCopy, 0, v18);

      goto LABEL_29;
    }
  }

  v19 = sub_10035D02C();
  sub_10003E810(buf, (*(self + 2) + 8));
  v28 = *buf;
  if (*&buf[8])
  {
    atomic_fetch_add_explicit((*&buf[8] + 16), 1uLL, memory_order_relaxed);
  }

  v20 = sub_10035D888(v19, &v28);
  if (*(&v28 + 1))
  {
    std::__shared_weak_count::__release_weak(*(&v28 + 1));
  }

  if (*&buf[8])
  {
    sub_10000AD84(*&buf[8]);
  }

  if ((v20 & 0x10000) != 0)
  {
    *(self + 6) = sub_100005288();
    std::mutex::lock((self + 80));
    sub_10002074C(self + 56, *(self + 8));
    *(self + 8) = 0;
    *(self + 9) = 0;
    *(self + 7) = self + 64;
    std::mutex::unlock((self + 80));
    *(self + 20) = v20;
    replyCopy[2](replyCopy, 1, 0);
    v27 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "PtsSession, start", buf, 2u);
    }
  }

  else
  {
    v32 = NSLocalizedDescriptionKey;
    v33 = @"Register for service failed";
    v21 = [NSDictionary dictionaryWithObjects:&v33 forKeys:&v32 count:1, v28];
    v22 = PRErrorWithCodeAndUserInfo(101, v21);
    replyCopy[2](replyCopy, 0, v22);
  }

LABEL_29:

LABEL_30:
  if (v8)
  {
    sub_10000AD84(v8);
  }
}

- (void)disablePTSInitiating:(id)initiating
{
  initiatingCopy = initiating;
  v4 = sub_100005288();
  v5 = *(self + 6);
  std::mutex::lock((self + 80));
  v6 = v4 - v5;
  v7 = *(self + 18);
  v8 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109376;
    *&buf[4] = v7;
    *&buf[8] = 2048;
    *&buf[10] = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "PtsMetric, session, numOfResponders, %d, sessionDuration, %0.3f", buf, 0x12u);
  }

  v33 = _NSConcreteStackBlock;
  v34 = 3221225472;
  v35 = sub_100051BEC;
  v36 = &unk_10098B698;
  v38 = v7;
  v37 = v6;
  selfCopy = self;
  AnalyticsSendEventLazy();
  v9 = *(self + 7);
  v10 = self + 64;
  if (v9 != v10)
  {
    do
    {
      v11 = qword_1009F9820;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
      {
        v12 = *(v9 + 5);
        *buf = 134218240;
        *&buf[4] = v12;
        *&buf[12] = 1024;
        *&buf[14] = v7;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "PtsMetric, responderLatency, %0.3f, numOfResponders, %d", buf, 0x12u);
      }

      v13 = *(v9 + 5);
      v27 = _NSConcreteStackBlock;
      v28 = 3221225472;
      v29 = sub_100051CF0;
      v30 = &unk_10098B698;
      v31 = v13;
      v32 = v7;
      AnalyticsSendEventLazy();
      v14 = *(v9 + 1);
      if (v14)
      {
        do
        {
          v15 = v14;
          v14 = *v14;
        }

        while (v14);
      }

      else
      {
        do
        {
          v15 = *(v9 + 2);
          v16 = *v15 == v9;
          v9 = v15;
        }

        while (!v16);
      }

      v9 = v15;
    }

    while (v15 != v10);
  }

  std::mutex::unlock((selfCopy + 80));
  if (!*(selfCopy + 20))
  {
    v17 = initiatingCopy;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_10049D158();
    }

    v41 = NSLocalizedDescriptionKey;
    v42 = @"Asked to cancel, but no point to share initiator job defined";
    selfCopy = [NSDictionary dictionaryWithObjects:&v42 forKeys:&v41 count:1, selfCopy];
    v21 = PRErrorWithCodeAndUserInfo(999, selfCopy);

    (*(initiatingCopy + 2))(initiatingCopy, 0, v21);
    goto LABEL_25;
  }

  v17 = initiatingCopy;
  v18 = sub_10035D02C();
  sub_10003E810(buf, (*(selfCopy + 2) + 8));
  v25 = *buf;
  v26 = *&buf[8];
  if (*&buf[8])
  {
    atomic_fetch_add_explicit((*&buf[8] + 16), 1uLL, memory_order_relaxed);
  }

  v19 = sub_10035DEEC(v18, &v25, *(selfCopy + 20));
  if (v26)
  {
    std::__shared_weak_count::__release_weak(v26);
  }

  if (*&buf[8])
  {
    sub_10000AD84(*&buf[8]);
  }

  if ((v19 & 1) == 0)
  {
    v39 = NSLocalizedDescriptionKey;
    v40 = @"Unregistering for service failed";
    v21 = [NSDictionary dictionaryWithObjects:&v40 forKeys:&v39 count:1];
    v22 = PRErrorWithCodeAndUserInfo(999, v21);
    (*(initiatingCopy + 2))(initiatingCopy, 0, v22);

LABEL_25:
    goto LABEL_26;
  }

  *(selfCopy + 20) = 0;
  (*(initiatingCopy + 2))(initiatingCopy, 1, 0);
LABEL_26:
}

- (BOOL)createBeaconListenerJob:(id *)job
{
  v5 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "PRBeaconRangingClientProxy::createBeaconListenerJob", buf, 2u);
  }

  v6 = sub_10035D02C();
  v7 = *(v6 + 406);
  v8 = *(v6 + 407);
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (!v7)
  {
    if (!job)
    {
      goto LABEL_38;
    }

    v32 = NSLocalizedDescriptionKey;
    v33 = @"Configuration Manager Error.";
    v19 = [NSDictionary dictionaryWithObjects:&v33 forKeys:&v32 count:1];
    *job = PRErrorWithCodeAndUserInfo(999, v19);

    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_10049D194();
    }

LABEL_32:
    LOBYTE(job) = 0;
    goto LABEL_38;
  }

  v24 = 0;
  if (!sub_1003299D8(v7, &v23, &v24, 0))
  {
    if (!job)
    {
      goto LABEL_38;
    }

    v30 = NSLocalizedDescriptionKey;
    v31 = @"Failed to prepare service request.";
    v20 = [NSDictionary dictionaryWithObjects:&v31 forKeys:&v30 count:1];
    *job = PRErrorWithCodeAndUserInfo(101, v20);

    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_10049D194();
    }

    goto LABEL_32;
  }

  sub_10019B6AC(&v23, buf);
  v9 = +[NSUserDefaults standardUserDefaults];
  v10 = [v9 URLForKey:@"P2SConfigPlistPath"];
  v11 = [NSDictionary dictionaryWithContentsOfURL:v10];

  if (v11)
  {
    v12 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v27) = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "============================================", &v27, 2u);
    }

    v13 = qword_1009F9820;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = [v11 description];
      LODWORD(v27) = 138412290;
      *(&v27 + 4) = v14;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "PRBeaconRangingClientProxy responder options dict:\n%@", &v27, 0xCu);
    }

    v15 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v27) = 0;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "============================================", &v27, 2u);
    }

    if ((sub_10002A358(v11, v29, job) & 1) == 0)
    {
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
      {
        sub_10049D1D0();
      }

LABEL_36:
      LOBYTE(job) = 0;
      goto LABEL_37;
    }
  }

  v16 = sub_10035D02C();
  sub_10003E810(&v27, (*(self + 2) + 8));
  v22 = v27;
  if (*(&v27 + 1))
  {
    atomic_fetch_add_explicit((*(&v27 + 1) + 16), 1uLL, memory_order_relaxed);
  }

  v17 = sub_10035D888(v16, &v22);
  if (*(&v22 + 1))
  {
    std::__shared_weak_count::__release_weak(*(&v22 + 1));
  }

  if (*(&v27 + 1))
  {
    sub_10000AD84(*(&v27 + 1));
  }

  if ((v17 & 0x10000) == 0)
  {
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_10049D20C();
    }

    if (!job)
    {
      goto LABEL_37;
    }

    v25 = NSLocalizedDescriptionKey;
    v26 = @"Failed to register for job: point to share responder";
    v18 = [NSDictionary dictionaryWithObjects:&v26 forKeys:&v25 count:1];
    *job = PRErrorWithCodeAndUserInfo(101, v18);

    goto LABEL_36;
  }

  *(self + 21) = v17;
  LOBYTE(job) = 1;
LABEL_37:

LABEL_38:
  if (v8)
  {
    sub_10000AD84(v8);
  }

  return job;
}

- (id).cxx_construct
{
  *(self + 2) = 0;
  *(self + 3) = 0;
  *(self + 8) = 0;
  *(self + 7) = self + 64;
  *(self + 9) = 0;
  *(self + 10) = 850045863;
  *(self + 88) = 0u;
  *(self + 104) = 0u;
  *(self + 120) = 0u;
  *(self + 136) = 0u;
  return self;
}

@end