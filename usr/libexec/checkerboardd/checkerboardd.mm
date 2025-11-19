void sub_100001004(uint64_t a1, void *a2, int a3)
{
  v5 = a2;
  v6 = CheckerBoardLogHandleForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v15 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "DeviceDiscovery: remoteDevice: %@", buf, 0xCu);
  }

  v7 = CheckerBoardLogHandleForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    LODWORD(v15) = a3;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "DeviceDiscovery: canceling: %i", buf, 8u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v9 = WeakRetained;
  if (v5 && (a3 & 1) == 0)
  {
    v10 = [WeakRetained dispatchQueue];
    v13 = *(a1 + 32);
    remote_device_set_connected_callback();

    v11 = [v9 dispatchQueue];
    v12 = *(a1 + 32);
    remote_device_set_disconnected_callback();
  }
}

void sub_100001210(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = CheckerBoardLogHandleForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "DeviceDiscovery: device connected callback %@", &v7, 0xCu);
  }

  v5 = [[CBDRemoteDeviceConnection alloc] initWithRemoteDevice:v3];
  v6 = [*(a1 + 32) delegate];
  [v6 didConnectDeviceConnection:v5];
}

void sub_100001304(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = CheckerBoardLogHandleForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "DeviceDiscovery: device disconnected callback %@", &v7, 0xCu);
  }

  v5 = [[CBDRemoteDeviceConnection alloc] initWithRemoteDevice:v3];
  v6 = [*(a1 + 32) delegate];
  [v6 didDisconnectDeviceConnection:v5];
}

uint64_t start()
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Hello, World! checkerboardd is alive!", v5, 2u);
  }

  v0 = objc_alloc_init(CBDMainController);
  v1 = qword_100016A28;
  qword_100016A28 = v0;

  [qword_100016A28 start];
  v2 = objc_autoreleasePoolPush();
  v3 = +[NSRunLoop mainRunLoop];
  [v3 run];

  objc_autoreleasePoolPop(v2);
  return 0;
}

void sub_100002C78(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100002C94(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_copyWeak(&v4, (a1 + 32));
  xpc_remote_connection_set_event_handler();
  xpc_remote_connection_activate();
  objc_destroyWeak(&v4);
}

void sub_100002D5C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = xpc_copy_description(v3);
  v5 = CheckerBoardLogHandleForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 136315138;
    v11 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Remote XPC Service: Server received message: %s", &v10, 0xCu);
  }

  free(v4);
  type = xpc_get_type(v3);
  if (type == &_xpc_type_dictionary)
  {
    v8 = objc_autoreleasePoolPush();
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    [WeakRetained _handleEvent:v3];

    objc_autoreleasePoolPop(v8);
  }

  else
  {
    if (type == &_xpc_type_error)
    {
      v7 = objc_loadWeakRetained((a1 + 32));
      [v7 _handleError:v3];
    }

    else
    {
      v7 = CheckerBoardLogHandleForCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        sub_1000070D8();
      }
    }
  }
}

void sub_1000031A0(_Unwind_Exception *exception_object, int a2)
{
  if (a2 == 1)
  {
    v2 = objc_begin_catch(exception_object);
    v3 = CheckerBoardLogHandleForCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_100007240();
    }

    objc_end_catch();
    JUMPOUT(0x100003180);
  }

  _Unwind_Resume(exception_object);
}

void sub_100003210(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = CheckerBoardLogHandleForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "XPC object decoded as: %@", &v6, 0xCu);
  }

  if (v3)
  {
    if ([v3 isMemberOfClass:objc_opt_class()])
    {
      [v3 setConnection:*(a1 + 32)];
    }

    [*(a1 + 40) _dispatchReceivedMessage:v3 event:*(a1 + 48) client:*(a1 + 32)];
  }

  else
  {
    v5 = CheckerBoardLogHandleForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_1000072B4();
    }
  }
}

void sub_100003494(id *a1)
{
  v2 = CheckerBoardLogHandleForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = a1[4];
    v4 = [a1[5] delegate];
    *buf = 138412546;
    v16 = v3;
    v17 = 2112;
    v18 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Dispatching message to delegate; message = %@, delegate = %@", buf, 0x16u);
  }

  v5 = [a1[5] delegate];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100003624;
  v12[3] = &unk_1000104B0;
  v6 = a1[4];
  *&v7 = v6;
  *(&v7 + 1) = a1[5];
  v11 = v7;
  v8 = a1[6];
  v9 = a1[7];
  *&v10 = v8;
  *(&v10 + 1) = v9;
  v13 = v11;
  v14 = v10;
  [v5 didReceiveRemoteXPCMessage:v6 completion:v12];
}

void sub_100003624(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = CheckerBoardLogHandleForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = [*(a1 + 40) delegate];
    v8 = 138412802;
    v9 = v5;
    v10 = 2112;
    v11 = v6;
    v12 = 2112;
    v13 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Delegate acknowledged message receipt; message = %@, delegate = %@, reply = %@", &v8, 0x20u);
  }

  if (v3)
  {
    [*(a1 + 40) _sendReply:v3 event:*(a1 + 48) client:*(a1 + 56)];
  }

  else if ([*(a1 + 32) replyClass])
  {
    v7 = CheckerBoardLogHandleForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_100007398((a1 + 32), a1);
    }
  }
}

void sub_1000039B8(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x16u);
}

uint64_t sub_100003F30(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = [NSString stringWithUTF8String:a2];
  type = xpc_get_type(v5);
  if (type == &_xpc_type_BOOL)
  {
    v10 = [NSNumber numberWithBool:xpc_BOOL_get_value(v5)];
LABEL_16:
    v11 = v10;
    [*(a1 + 32) setObject:v10 forKeyedSubscript:v6];

    goto LABEL_17;
  }

  v8 = type;
  if (type == &_xpc_type_int64)
  {
    v10 = [NSNumber numberWithLongLong:xpc_int64_get_value(v5)];
    goto LABEL_16;
  }

  if (type == &_xpc_type_uint64)
  {
    v10 = [NSNumber numberWithUnsignedLongLong:xpc_uint64_get_value(v5)];
    goto LABEL_16;
  }

  if (type == &_xpc_type_double)
  {
    v10 = [NSNumber numberWithDouble:xpc_double_get_value(v5)];
    goto LABEL_16;
  }

  if (type == &_xpc_type_string)
  {
    v10 = [NSString stringWithUTF8String:xpc_string_get_string_ptr(v5)];
    goto LABEL_16;
  }

  if (type == &_xpc_type_uuid)
  {
    v10 = [[NSUUID alloc] initWithUUIDBytes:xpc_uuid_get_bytes(v5)];
    goto LABEL_16;
  }

  v9 = CheckerBoardLogHandleForCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138412802;
    v14 = v6;
    v15 = 2112;
    v16 = v8;
    v17 = 2112;
    v18 = v5;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Property key [%@] with unhandled type [%@]: %@", &v13, 0x20u);
  }

LABEL_17:
  return 1;
}

void sub_100004AC0(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 40))
  {
    v3 = [*(a1 + 32) replyWithSuccess:a2 == 0 error:a2];
    (*(*(a1 + 40) + 16))();
  }
}

void sub_100004BBC(id a1)
{
  v1 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___CBLocalServiceClientInterface];
  v2 = qword_100016A38;
  qword_100016A38 = v1;

  v3 = qword_100016A38;
  v4 = [NSSet setWithObject:objc_opt_class()];
  [v3 setClasses:v4 forSelector:"setProxyServer:completion:" argumentIndex:0 ofReply:0];
}

void sub_100004CA8(id a1)
{
  qword_100016A48 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___CBLocalServiceServerInterface];

  _objc_release_x1();
}

void sub_100005484(id a1)
{
  v1 = CheckerBoardLogHandleForCategory();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "Local XPC connection interrupted.", v2, 2u);
  }
}

void sub_1000054F0(id a1)
{
  v1 = CheckerBoardLogHandleForCategory();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "Local XPC connection invalidated.", v2, 2u);
  }
}

void sub_100005738(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = CheckerBoardLogHandleForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Local XPC - setProxyServer:completion: Can't get remote proxy object %@", &v5, 0xCu);
  }

  (*(*(a1 + 32) + 16))();
}

void sub_1000059B8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = CheckerBoardLogHandleForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Local XPC - startDiagnostics: Can't get remote proxy object %@", &v5, 0xCu);
  }

  (*(*(a1 + 32) + 16))();
}

void sub_100005F8C(uint64_t a1)
{
  v2 = CheckerBoardLogHandleForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v7 = 138412290;
    v8 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Connect to device: %@", &v7, 0xCu);
  }

  v4 = [*(a1 + 40) hostDevice];

  if (v4)
  {
    v5 = CheckerBoardLogHandleForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 32);
      v7 = 138412290;
      v8 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Error: attempt to connect already-connected host device %@", &v7, 0xCu);
    }
  }

  else
  {
    [*(a1 + 40) setHostDevice:*(a1 + 32)];
  }
}

void sub_100006168(uint64_t a1)
{
  v2 = CheckerBoardLogHandleForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v9 = 138412290;
    v10 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Disconnect to device: %@", &v9, 0xCu);
  }

  v4 = [*(a1 + 40) hostDevice];
  v5 = [v4 isEqual:*(a1 + 32)];

  if (v5)
  {
    v6 = [*(a1 + 40) hostDevice];
    [v6 invalidate];

    [*(a1 + 40) setHostDevice:0];
  }

  else
  {
    v7 = CheckerBoardLogHandleForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 32);
      v9 = 138412290;
      v10 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Error: attempt to disconnect a different device %@", &v9, 0xCu);
    }
  }
}

void sub_100006958(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 40))
  {
    v3 = [*(a1 + 32) replyWithSuccess:a2 == 0 error:a2];
    (*(*(a1 + 40) + 16))();
  }
}

void sub_100006FE8(uint64_t a1, NSObject *a2)
{
  v2 = 134217984;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Unrecognized version while decoding message: %llu", &v2, 0xCu);
}

void sub_100007060(uint64_t a1, NSObject *a2)
{
  v2 = 136315138;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Magic incorrect while decoding message: %s", &v2, 0xCu);
}

void sub_1000072F4(uint64_t a1, void *a2)
{
  v8 = [a2 delegate];
  sub_1000039B8(&_mh_execute_header, v2, v3, "Received message, but delegate unable to receive it; message = %@, delegate = %@", v4, v5, v6, v7, 2u);
}

void sub_100007398(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v9 = [*(a2 + 40) delegate];
  sub_1000039B8(&_mh_execute_header, v3, v4, "Did not get a reply message from delegate, but message has a reply class. May be a bug in the delegate. message = %@, delegate = %@", v5, v6, v7, v8, 2u);
}