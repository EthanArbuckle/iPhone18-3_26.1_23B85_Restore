void sub_10000189C(uint64_t a1, xpc_activity_t activity)
{
  if (xpc_activity_get_state(activity) == 2)
  {
    v3 = [*(a1 + 32) queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10000193C;
    block[3] = &unk_10000C4A0;
    block[4] = *(a1 + 32);
    dispatch_sync(v3, block);
  }
}

id sub_10000193C(uint64_t a1)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "poking gizmo now", v3, 2u);
  }

  return [*(a1 + 32) _sendMessage:&off_10000C9F8 to:IDSDefaultPairedDevice identifier:0 expectReply:0];
}

void sub_100001D18(uint64_t a1)
{
  v2 = [*(a1 + 32) queue];
  v3 = dispatch_source_create(&_dispatch_source_type_data_or, 0, 0, v2);
  v4 = qword_1000113B8;
  qword_1000113B8 = v3;

  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_100001E38;
  handler[3] = &unk_10000C4A0;
  handler[4] = *(a1 + 32);
  dispatch_source_set_event_handler(qword_1000113B8, handler);
  dispatch_activate(qword_1000113B8);
}

id sub_100001DE4(uint64_t a1)
{
  [*(a1 + 32) stopWaitingForDeviceUnlock];
  v2 = *(a1 + 32);

  return [v2 deviceUnlockTimedOut];
}

void sub_100001F98(uint64_t a1)
{
  v2 = [*(a1 + 32) session];

  if (v2)
  {
    v5 = [NSError errorWithDomain:@"com.apple.security.otpaird" code:8 description:@"pairing session timed out"];
    v3 = *(a1 + 32);
    v4 = [v3 session];
    [v3 session:v4 didCompleteWithSuccess:0 error:v5];
  }
}

void sub_1000029F0(uint64_t a1, char a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  v9 = [*(a1 + 32) queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100002AEC;
  block[3] = &unk_10000C450;
  v18 = a2;
  v14 = v7;
  v15 = v8;
  v10 = *(a1 + 40);
  v16 = *(a1 + 32);
  v17 = v10;
  v11 = v8;
  v12 = v7;
  dispatch_async(v9, block);
}

void sub_100002AEC(uint64_t a1)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v2 = *(a1 + 64);
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    *buf = 67109634;
    v27 = v2;
    v28 = 2112;
    v29 = v3;
    v30 = 2112;
    v31 = v4;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "exchangePacket: complete=%d responsePacket=%@ channelError=%@", buf, 0x1Cu);
  }

  v5 = [*(a1 + 48) session];

  if (v5)
  {
    if (*(a1 + 40))
    {
      v6 = objc_alloc_init(NSMutableDictionary);
      [v6 setObject:&off_10000C9A0 forKeyedSubscript:@"m"];
      v7 = [*(a1 + 48) session];
      v8 = [v7 identifier];
      [v6 setObject:v8 forKeyedSubscript:@"session"];

      v9 = [*(a1 + 40) description];
      [v6 setObject:v9 forKeyedSubscript:@"error"];

      v10 = *(a1 + 56);
      if (!v10)
      {
        _os_assert_log();
        _os_crash();
        __break(1u);
      }

      v11 = [v10 fromID];
      v12 = [*(a1 + 56) outgoingResponseIdentifier];
      [*(a1 + 48) _sendMessage:v6 to:v11 identifier:v12];
      v13 = *(a1 + 48);
      v14 = [v13 session];
      v15 = [NSError errorWithDomain:@"com.apple.security.otpaird" code:7 description:@"exchangePacket" underlying:*(a1 + 40)];
      [v13 session:v14 didCompleteWithSuccess:0 error:v15];

      goto LABEL_21;
    }

    if (*(a1 + 32))
    {
      v25[0] = &off_10000C9B8;
      v16 = [*(a1 + 48) session];
      v17 = [v16 identifier];
      v24[2] = @"packet";
      v18 = *(a1 + 32);
      v25[1] = v17;
      v25[2] = v18;
      v19 = [NSDictionary dictionaryWithObjects:v25 forKeys:v24 count:3];

      v20 = *(a1 + 56);
      if (v20)
      {
        v21 = [v20 fromID];
      }

      else
      {
        v21 = IDSDefaultPairedDevice;
      }

      v11 = v21;
      v22 = *(a1 + 56);
      if (v22)
      {
        v12 = [v22 outgoingResponseIdentifier];
      }

      else
      {
        v12 = 0;
      }

      [*(a1 + 48) _sendMessage:v19 to:v11 identifier:v12];
    }

    else
    {
      v12 = 0;
      v11 = 0;
    }

    if (*(a1 + 64) == 1)
    {
      v23 = *(a1 + 48);
      v6 = [v23 session];
      [v23 session:v6 didCompleteWithSuccess:1 error:0];
LABEL_21:
    }
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "pairing session went away, dropping exchangePacket response", buf, 2u);
    }

    v12 = 0;
    v11 = 0;
  }
}

void sub_100003318(uint64_t a1)
{
  v2 = [*(a1 + 32) session];

  if (v2)
  {
    v9 = [*(a1 + 32) session];
    [v9 addCompletionHandler:*(a1 + 40)];
  }

  else
  {
    v3 = [OTPairingSession alloc];
    v4 = [*(a1 + 32) initiator];
    v5 = [*(a1 + 32) deviceInfo];
    v6 = [(OTPairingSession *)v3 initAsInitiator:v4 deviceInfo:v5 identifier:0];
    [*(a1 + 32) setSession:v6];

    [*(a1 + 32) scheduleSessionTimeout];
    v7 = [*(a1 + 32) session];
    [v7 addCompletionHandler:*(a1 + 40)];

    v8 = *(a1 + 32);

    [v8 sendReplyToPacket];
  }
}

void sub_1000036EC(id a1)
{
  qword_1000113A8 = [[OTPairingService alloc] initAsInitiator:0];

  _objc_release_x1();
}

void start()
{
  v0 = objc_autoreleasePoolPush();
  v1 = +[OTPairingService sharedService];
  v2 = qword_1000113C0;
  qword_1000113C0 = v1;

  objc_autoreleasePoolPop(v0);
  dispatch_main();
}

void sub_100003958(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = secLogObjForScope();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Notified that the device name has changed", v6, 2u);
  }

  v5 = [a3 deviceNameUpdateListeners];
  [v5 iterateListeners:&stru_10000C588];
}

void sub_100003E58(id a1)
{
  memset(&__b, 170, sizeof(__b));
  uname(&__b);
  v1 = [NSString stringWithCString:__b.machine encoding:4];
  v2 = qword_1000113C8;
  qword_1000113C8 = v1;
}

void sub_1000045F8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  (*(*(a1 + 32) + 16))();
}