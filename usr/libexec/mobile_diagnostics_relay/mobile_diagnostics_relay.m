void sub_100001138(id a1)
{
  qword_100026490 = objc_alloc_init(MDRLogger);

  _objc_release_x1();
}

void sub_10000146C(id a1)
{
  qword_100026498 = objc_alloc_init(MigrationBroadcaster);

  _objc_release_x1();
}

void sub_100001734(uint64_t a1)
{
  v2 = *(a1 + 32);
  if ((v2[24] & 1) == 0)
  {
    do
    {
      usleep(0x186A0u);
      v2 = *(a1 + 32);
    }

    while (v2[24] != 1);
  }

  v3 = *(a1 + 40);
  if (v3)
  {
    (*(v3 + 16))(*(a1 + 40), 1);
    v2 = *(a1 + 32);
  }

  v4 = [v2 getRefactoredServiceUUID];
  v19 = CBAdvertisementDataServiceUUIDsKey;
  v5 = [CBUUID UUIDWithString:v4];
  v18 = v5;
  v6 = [NSArray arrayWithObjects:&v18 count:1];
  v20 = v6;
  v7 = [NSDictionary dictionaryWithObjects:&v20 forKeys:&v19 count:1];

  v8 = [NSString stringWithFormat:@"Start advertising %@", v4];
  v9 = [*(a1 + 32) logger];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v17 = v8;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
  }

  v10 = [*(a1 + 32) peripheralManager];
  [v10 startAdvertising:v7];

  v11 = +[DeviceUtility sharedInstance];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100001990;
  v15[3] = &unk_1000208A8;
  v15[4] = *(a1 + 32);
  v12 = [v11 createRepeatTimer:3 callback:v15];
  v13 = *(a1 + 32);
  v14 = *(v13 + 48);
  *(v13 + 48) = v12;
}

_BYTE *sub_100001990(uint64_t a1)
{
  result = *(a1 + 32);
  if (result[56] == 1)
  {
    return [result updateAdvertising];
  }

  return result;
}

void sub_100001A2C(uint64_t a1)
{
  v2 = [*(a1 + 32) peripheralManager];
  v3 = [v2 isAdvertising];

  if (v3)
  {
    v4 = [NSString stringWithFormat:@"Stop advertising"];
    v5 = [*(a1 + 32) logger];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138543362;
      v8 = v4;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}@", &v7, 0xCu);
    }

    v6 = [*(a1 + 32) peripheralManager];
    [v6 stopAdvertising];
  }
}

void sub_100001BBC(uint64_t a1)
{
  v2 = *(a1 + 32);
  if ((v2[24] & 1) == 0)
  {
    do
    {
      usleep(0x186A0u);
      v2 = *(a1 + 32);
    }

    while (v2[24] != 1);
  }

  v3 = [v2 getRefactoredServiceUUID];
  v13 = CBAdvertisementDataServiceUUIDsKey;
  v4 = [CBUUID UUIDWithString:v3];
  v12 = v4;
  v5 = [NSArray arrayWithObjects:&v12 count:1];
  v14 = v5;
  v6 = [NSDictionary dictionaryWithObjects:&v14 forKeys:&v13 count:1];

  v7 = [NSString stringWithFormat:@"Start advertising %@", v3];
  v8 = [*(a1 + 32) logger];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v11 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
  }

  v9 = [*(a1 + 32) peripheralManager];
  [v9 startAdvertising:v6];
}

void sub_100002178(id a1)
{
  qword_1000264A8 = objc_alloc_init(ServiceScanner);

  _objc_release_x1();
}

void sub_10000273C(uint64_t a1)
{
  v2 = *(a1 + 32);
  if ((v2[40] & 1) == 0)
  {
    do
    {
      usleep(0x186A0u);
      v2 = *(a1 + 32);
    }

    while (v2[40] != 1);
  }

  [v2 allocatePeripheralsArray];
  v3 = *(*(a1 + 32) + 64);
  if (v3 == 2)
  {
    v4 = [CBUUID UUIDWithString:@"C1C46849-CFBD-4949-A1A5-1E693FA4BA92"];
    v14 = v4;
    v9 = &v14;
LABEL_8:
    v10 = [NSArray arrayWithObjects:v9 count:1];
    v11 = *(a1 + 32);
    v5 = *(v11 + 56);
    *(v11 + 56) = v10;
    goto LABEL_9;
  }

  if (v3)
  {
    v4 = [CBUUID UUIDWithString:@"C1C46849-CFBD-4949-A1A5-1E693FA4BA91"];
    v13 = v4;
    v9 = &v13;
    goto LABEL_8;
  }

  v4 = [CBUUID UUIDWithString:@"C1C46849-CFBD-4949-A1A5-1E693FA4BA91"];
  v15[0] = v4;
  v5 = [CBUUID UUIDWithString:@"C1C46849-CFBD-4949-A1A5-1E693FA4BA92"];
  v15[1] = v5;
  v6 = [NSArray arrayWithObjects:v15 count:2];
  v7 = *(a1 + 32);
  v8 = *(v7 + 56);
  *(v7 + 56) = v6;

LABEL_9:
  v12 = [*(a1 + 32) centralManager];
  [v12 scanForPeripheralsWithServices:*(*(a1 + 32) + 56) options:0];
}

id sub_100002964(uint64_t a1)
{
  v2 = [*(a1 + 32) centralManager];
  v3 = [v2 isScanning];

  if (v3)
  {
    v4 = [NSString stringWithFormat:@"Stop scanning Store Paring Service"];
    v5 = [*(a1 + 32) logger];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138543362;
      v9 = v4;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}@", &v8, 0xCu);
    }

    v6 = [*(a1 + 32) centralManager];
    [v6 stopScan];
  }

  return [*(a1 + 32) disconnectAllPeripherals];
}

uint64_t sub_100002AF0(uint64_t a1)
{
  v2 = +[NSMutableArray array];
  v3 = *(a1 + 32);
  v4 = *(v3 + 32);
  *(v3 + 32) = v2;

  return _objc_release_x1();
}

id sub_100002BE4(uint64_t a1)
{
  result = *(*(a1 + 32) + 32);
  if (result)
  {
    result = [result containsObject:*(a1 + 40)];
    if ((result & 1) == 0)
    {
      v3 = [*(a1 + 40) identifier];
      v4 = [*(a1 + 40) name];
      v5 = [NSString stringWithFormat:@"Peripheral: %@ (%@) | Discovered", v3, v4];

      v6 = [*(a1 + 32) logger];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v9 = v5;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
      }

      v7 = [*(a1 + 32) centralManager];
      [v7 connectPeripheral:*(a1 + 40) options:0];

      return [*(*(a1 + 32) + 32) addObject:*(a1 + 40)];
    }
  }

  return result;
}

void sub_100002DD8(uint64_t a1)
{
  if ([*(a1 + 32) state] == 2)
  {
    v2 = [*(a1 + 32) identifier];
    v3 = [*(a1 + 32) name];
    v4 = [NSString stringWithFormat:@"Peripheral: %@ (%@) | Cancel connection", v2, v3];

    v5 = [*(a1 + 40) logger];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v8 = v4;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
    }

    v6 = [*(a1 + 40) centralManager];
    [v6 cancelPeripheralConnection:*(a1 + 32)];
  }
}

void sub_100002F80(uint64_t a1)
{
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v2 = *(*(a1 + 32) + 32);
  v3 = [v2 countByEnumeratingWithState:&v15 objects:v21 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v16;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v16 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v15 + 1) + 8 * i);
        if ([v7 state] == 2)
        {
          v8 = [v7 identifier];
          v9 = [v7 name];
          v10 = [NSString stringWithFormat:@"Peripheral: %@ (%@) | Cancel connection", v8, v9];

          v11 = [*(a1 + 32) logger];
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            v20 = v10;
            _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
          }

          v12 = [*(a1 + 32) centralManager];
          [v12 cancelPeripheralConnection:v7];
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v15 objects:v21 count:16];
    }

    while (v4);
  }

  [*(*(a1 + 32) + 32) removeAllObjects];
  v13 = *(a1 + 32);
  v14 = *(v13 + 32);
  *(v13 + 32) = 0;
}

void sub_100004670(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0x16u);
}

void sub_100004724(id a1)
{
  qword_1000264B8 = objc_alloc_init(DeviceUtility);

  _objc_release_x1();
}

uint64_t sub_100005058(uint64_t a1)
{
  v2 = [NSString stringWithFormat:@"Timer %p fired", *(a1 + 32)];
  v3 = [*(a1 + 40) logger];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_10001308C(v2, v3, v4, v5, v6, v7, v8, v9);
  }

  return (*(*(a1 + 48) + 16))();
}

void sub_1000050F0(uint64_t a1)
{
  v2 = [NSString stringWithFormat:@"Timer %p cancelled.", *(a1 + 32)];
  v3 = [*(a1 + 40) logger];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_10001308C(v2, v3, v4, v5, v6, v7, v8, v9);
  }
}

void sub_100005198(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

void sub_10000526C(id a1)
{
  qword_1000264C8 = objc_alloc_init(HapticPlayer);

  _objc_release_x1();
}

void sub_100005590(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v22 + 32));
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000055C8(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [NSString stringWithFormat:@"CHHapticEngine stopped: %ld", a2];
  v5 = [WeakRetained logger];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v7 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
  }
}

void sub_1000056AC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained[2] startAndReturnError:0];
}

void sub_1000060F0(id a1)
{
  qword_1000264D8 = objc_alloc_init(HIDEventMonitor);

  _objc_release_x1();
}

void sub_1000061B4(uint64_t a1, void *a2)
{
  v2 = a2;
  if (!v2)
  {
    v6 = [NSString stringWithFormat:@"HIDEventMonitor context is nil in callback!"];
    v7 = [0 logger];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1000132F0();
    }

    goto LABEL_10;
  }

  if (IOHIDEventGetType() == 3 && IOHIDEventGetIntegerValue() == 12)
  {
    IntegerValue = IOHIDEventGetIntegerValue();
    v4 = IOHIDEventGetIntegerValue();
    switch(IntegerValue)
    {
      case 48:
        v5 = @"Power Button";
        break;
      case 234:
        v5 = @"Volume- Button";
        break;
      case 233:
        v5 = @"Volume+ Button";
        break;
      default:
        v5 = @"Unknown Button";
        break;
    }

    v8 = [NSString stringWithFormat:@"HID Event: %@ pressed %d", v5, v4];
    v9 = [v2 logger];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v20 = v8;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
    }

    if ((IntegerValue - 233) <= 1)
    {
      if (!v4)
      {
        [v2 cancelLongPressTimer];
        goto LABEL_11;
      }

      v10 = &OBJC_IVAR___HIDEventMonitor__volumeDownPressed;
      if (IntegerValue == 233)
      {
        v10 = &OBJC_IVAR___HIDEventMonitor__volumeUpPressed;
      }

      v2[*v10] = 1;
      if (v2[41] == 1 && v2[42] == 1)
      {
        if (v2[40] == 1)
        {
          v6 = [NSString stringWithFormat:@"Should never be here, return"];
          v7 = [v2 logger];
          if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
          {
            sub_1000132F0();
          }

LABEL_10:

          goto LABEL_11;
        }

        v11 = +[DeviceUtility sharedInstance];
        v17[0] = _NSConcreteStackBlock;
        v17[1] = 3221225472;
        v17[2] = sub_1000065B4;
        v17[3] = &unk_1000208A8;
        v12 = v2;
        v18 = v12;
        v13 = [v11 createOneshotTimer:2 callback:v17];
        v14 = *(v12 + 4);
        *(v12 + 4) = v13;

        if (*(v12 + 4))
        {
          v12[40] = 1;
          v15 = [NSString stringWithFormat:@"Long press timer started"];
          v16 = [v12 logger];
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            v20 = v15;
            _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
          }
        }

        else
        {
          v15 = [NSString stringWithFormat:@"Failed to create long press timer!"];
          v16 = [v12 logger];
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            sub_1000132F0();
          }
        }
      }
    }
  }

LABEL_11:
}

id sub_1000065B4(uint64_t a1)
{
  v2 = [NSString stringWithFormat:@"Long press timer fired"];
  v3 = [*(a1 + 32) logger];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543362;
    v8 = v2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}@", &v7, 0xCu);
  }

  v4 = *(a1 + 32);
  v5 = v4[7];
  if (v5)
  {
    (*(v5 + 16))(v4[7], 1);
    v4 = *(a1 + 32);
  }

  return [v4 cancelLongPressTimer];
}

void sub_1000069D0(uint64_t a1, void *a2)
{
  v2 = a2;
  if (!v2)
  {
    v7 = [NSString stringWithFormat:@"HIDEventMonitor context is nil in callback!"];
    v8 = [0 logger];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_1000133D8();
    }

    goto LABEL_12;
  }

  if (IOHIDEventGetType() == 3 && IOHIDEventGetIntegerValue() == 12)
  {
    IntegerValue = IOHIDEventGetIntegerValue();
    if (IntegerValue)
    {
      v4 = IntegerValue;
      v5 = IOHIDEventGetIntegerValue();
      switch(v5)
      {
        case 48:
          v6 = @"Power Button";
          break;
        case 234:
          v6 = @"Volume- Button";
          break;
        case 233:
          v6 = @"Volume+ Button";
          break;
        default:
          v6 = @"Unknown Button";
          break;
      }

      v9 = [NSString stringWithFormat:@"HID Event: %@ pressed %d", v6, v4];
      v10 = [v2 logger];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v21 = v9;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
      }

      if (v5 == 48)
      {
        if (v2[6])
        {
          v11 = [NSString stringWithFormat:@"Paring combo string is %@", v2[6]];
          v12 = [v2 logger];
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            v21 = v11;
            _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
          }

          if ([v2[6] length])
          {
            v13 = +[HapticPlayer sharedInstance];
            [v13 playHapticForDuration:0.1];

            v14 = v2[8];
            if (v14)
            {
              v15 = [v2[6] copy];
              v14[2](v14, v15);
            }
          }

          v7 = v2[6];
          v2[6] = 0;
          goto LABEL_12;
        }

        v18 = +[NSMutableString string];
        v19 = v2[6];
        v2[6] = v18;

LABEL_34:
        v7 = +[HapticPlayer sharedInstance];
        [v7 playHapticForDuration:0.1];
LABEL_12:

        goto LABEL_13;
      }

      if ((v5 - 233) <= 1)
      {
        v16 = v2[6];
        if (v16)
        {
          if (v5 == 233)
          {
            v17 = @"U";
          }

          else
          {
            v17 = @"D";
          }

          [v16 appendString:v17];
          goto LABEL_34;
        }
      }
    }
  }

LABEL_13:
}

void sub_100007204(id a1)
{
  qword_1000264E8 = objc_alloc_init(NFCTagReader);

  _objc_release_x1();
}

void sub_100007504(uint64_t a1)
{
  v2 = [[NFCTagReaderSession alloc] initWithPollingOption:1 delegate:*(a1 + 32) queue:0];
  v3 = *(a1 + 32);
  v4 = *(v3 + 16);
  *(v3 + 16) = v2;

  if (*(*(a1 + 32) + 16))
  {
    v5 = [NSString stringWithFormat:@"Session %@ | Start reading NFC tag...", *(*(a1 + 32) + 16)];
    v6 = [*(a1 + 32) logger];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v10 = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
    }

    [*(*(a1 + 32) + 16) beginSession];
  }

  else
  {
    v7 = [NSString stringWithFormat:@"Failed to init NFC reader sesssion"];
    v8 = [*(a1 + 32) logger];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_100013548();
    }
  }
}

void sub_1000076EC(uint64_t a1)
{
  v2 = [NSString stringWithFormat:@"Session %@ | Stop reading NFC tag.", *(*(a1 + 32) + 16)];
  v3 = [*(a1 + 32) logger];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v7 = v2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
  }

  [*(*(a1 + 32) + 16) invalidateSession];
  v4 = *(a1 + 32);
  v5 = *(v4 + 16);
  *(v4 + 16) = 0;
}

void sub_100007C3C(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = *(a1 + 32);
    v4 = [a2 localizedDescription];
    v5 = [NSString stringWithFormat:@"Session %@ | Failed to connect to NFC tag with error: %@", v3, v4];

    v6 = [*(a1 + 40) logger];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_14;
    }

    goto LABEL_15;
  }

  if ([*(a1 + 48) type] != 4)
  {
    v5 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"Session %@ | Unsupport tag type: %ld", *(a1 + 32), [*(a1 + 48) type]);
    v6 = [*(a1 + 40) logger];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
LABEL_14:
      sub_1000135BC();
    }

LABEL_15:

    [*(a1 + 40) tryReadAgain:*(a1 + 32)];
    return;
  }

  v7 = *(a1 + 48);
  v8 = [v7 identifier];
  v9 = +[NSMutableString string];
  v10 = [v8 bytes];
  if ([v8 length])
  {
    v11 = 0;
    do
    {
      [v9 appendFormat:@"%02X", v10[v11++]];
    }

    while (v11 < [v8 length]);
  }

  v12 = [NSString stringWithFormat:@"Session %@ | Read MIFARE tag UID: %@", *(a1 + 32), v9];
  v13 = [*(a1 + 40) logger];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v20 = v12;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
  }

  v14 = +[HapticPlayer sharedInstance];
  [v14 playHapticForDuration:0.1];

  v15 = *(a1 + 40);
  if (v15[5])
  {
    v16 = v15[4];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100007F4C;
    block[3] = &unk_100020918;
    block[4] = v15;
    v18 = v9;
    dispatch_async(v16, block);

    v15 = *(a1 + 40);
  }

  [v15 tryReadAgain:*(a1 + 32)];
}

void sub_1000082A0(id a1)
{
  qword_1000264F8 = objc_alloc_init(NotificationListener);

  _objc_release_x1();
}

void sub_10000844C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_100008474(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 16) objectForKeyedSubscript:*(a1 + 40)];
  v3 = v2;
  if (v2)
  {
    *(*(*(a1 + 48) + 8) + 24) = [v2 intValue];
  }

  else
  {
    v4 = 1;
    while (1)
    {
      v5 = v4;
      *(*(*(a1 + 56) + 8) + 24) = notify_register_check([*(a1 + 40) UTF8String], (*(*(a1 + 48) + 8) + 24));
      v6 = *(*(*(a1 + 56) + 8) + 24);
      if (!v6)
      {
        break;
      }

      v7 = [NSString stringWithFormat:@"notify_register_check(%@) failed: %lu", *(a1 + 40), v6];
      v8 = [*(a1 + 32) logger];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446466;
        v11 = "[NotificationListener _tokenForName:]_block_invoke";
        v12 = 2114;
        v13 = v7;
        _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%{public}s: %{public}@", buf, 0x16u);
      }

      v4 = 0;
      if ((v5 & 1) == 0)
      {
        goto LABEL_10;
      }
    }

    v9 = [NSNumber numberWithInt:*(*(*(a1 + 48) + 8) + 24)];
    [*(*(a1 + 32) + 16) setObject:v9 forKeyedSubscript:*(a1 + 40)];
  }

LABEL_10:
}

void sub_100008864(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 24);
  v3 = [NSNumber numberWithInt:*(a1 + 48)];
  v7 = [v2 objectForKeyedSubscript:v3];

  v4 = v7;
  if (v7)
  {
    v5 = [v7 pointerValue];
    v6 = v5;
    if (v5)
    {
      (*(v5 + 16))(v5, *(a1 + 40));
    }

    v4 = v7;
  }
}

id sub_100008BBC(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) _stateForToken:a2];
  v5 = *(a1 + 32);

  return [v5 _executeCallbackForToken:a2 withState:v4];
}

void sub_100008D30(id a1, NSNumber *a2, NSValue *a3, BOOL *a4)
{
  v5 = a3;
  notify_cancel([(NSNumber *)a2 intValue]);
  v6 = [(NSValue *)v5 pointerValue];
}

const __CFString *sub_100008DF8(unint64_t a1)
{
  if (a1 > 6)
  {
    return @"Unknown State";
  }

  else
  {
    return *(&off_100020D98 + a1);
  }
}

void sub_100008F80(id a1)
{
  qword_100026508 = objc_alloc_init(StateMachineController);

  _objc_release_x1();
}

void *sub_100009524(uint64_t a1)
{
  v2 = sub_100008DF8(*(*(a1 + 32) + 32));
  v3 = [NSString stringWithFormat:@"Got SIGTERM in state <%@>", v2];

  v4 = [*(a1 + 32) logger];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v9 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
  }

  result = *(a1 + 32);
  if (result[4] == 6)
  {
    [result runCleanupBlock];
    v6 = [NSString stringWithFormat:@"Daemon will exit soon due to SIGTERM"];
    v7 = [*(a1 + 32) logger];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v9 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
    }

    exit(0);
  }

  return result;
}

void sub_100009A10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  _Block_object_dispose(&a25, 8);
  _Block_object_dispose(&a31, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100009A54(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100009A6C(uint64_t a1)
{
  v2 = [NSString stringWithFormat:@"Timeout waiting for device to connect, exiting"];
  v3 = [*(a1 + 32) logger];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138543362;
    v5 = v2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}@", &v4, 0xCu);
  }

  exit(0);
}

void sub_100009B10(uint64_t a1, void *a2, int a3)
{
  v5 = a2;
  if (!v5 || a3)
  {
    v9 = [NSString stringWithFormat:@"FATAL! Device browser is canceled"];
    v10 = [*(a1 + 32) logger];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_10001375C();
    }

    exit(1);
  }

  v6 = *(a1 + 40);
  v14 = v5;
  v15 = *(a1 + 32);
  v16 = *(a1 + 48);
  v17 = *(a1 + 56);
  remote_device_set_connected_callback();
  v7 = *(a1 + 40);
  v11 = *(a1 + 32);
  v12 = *(a1 + 48);
  v13 = *(a1 + 56);
  v8 = v14;
  remote_device_set_disconnected_callback();
}

void sub_100009CB4(uint64_t a1)
{
  v2 = +[DeviceUtility sharedInstance];
  v3 = [v2 getRemoteProductType:*(a1 + 32)];

  v4 = +[DeviceUtility sharedInstance];
  v5 = [v4 getRemoteUDID:*(a1 + 32)];

  v6 = +[DeviceUtility sharedInstance];
  v7 = [v6 isNCMDevice:*(a1 + 32)];

  v8 = [NSString stringWithFormat:@"Device connnected: ProductType %@, UDID %@, isNCM %d", v3, v5, v7];
  v9 = [*(a1 + 40) logger];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v18 = v8;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
  }

  if (v7 && [v3 isEqual:*(a1 + 48)])
  {
    if (*(*(*(a1 + 56) + 8) + 40))
    {
      v10 = [NSString stringWithFormat:@"Ignore device connection: already has one device connected"];
      v11 = [*(a1 + 40) logger];
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v18 = v10;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
      }
    }

    else
    {
      v12 = [NSString stringWithFormat:@"(OK) %@ connnected", v3];
      v13 = [*(a1 + 40) logger];
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v18 = v12;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
      }

      if (*(*(*(a1 + 64) + 8) + 40))
      {
        v14 = +[DeviceUtility sharedInstance];
        [v14 cancelTimer:*(*(*(a1 + 64) + 8) + 40)];

        v15 = *(*(a1 + 64) + 8);
        v16 = *(v15 + 40);
        *(v15 + 40) = 0;
      }

      objc_storeStrong((*(*(a1 + 56) + 8) + 40), v5);
      [*(a1 + 40) handleRemoteDeviceAttachEvent];
    }
  }
}

void sub_100009F7C(uint64_t a1)
{
  v2 = +[DeviceUtility sharedInstance];
  v3 = [v2 getRemoteProductType:*(a1 + 32)];

  v4 = +[DeviceUtility sharedInstance];
  v5 = [v4 getRemoteUDID:*(a1 + 32)];

  v6 = +[DeviceUtility sharedInstance];
  v7 = [v6 isNCMDevice:*(a1 + 32)];

  v8 = [NSString stringWithFormat:@"Device disconnnected: ProductType %@, UDID %@, isNCM %d", v3, v5, v7];
  v9 = [*(a1 + 40) logger];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v18 = v8;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
  }

  if (v7 && [v3 isEqual:*(a1 + 48)])
  {
    v10 = *(*(*(a1 + 56) + 8) + 40);
    if (v10 && [v10 isEqualToString:v5])
    {
      v11 = [NSString stringWithFormat:@"%@ disconnnected", v3];
      v12 = [*(a1 + 40) logger];
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v18 = v11;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
      }

      v13 = *(*(a1 + 56) + 8);
      v14 = *(v13 + 40);
      *(v13 + 40) = 0;

      [*(a1 + 40) handleRemoteDeviceDetachEvent];
    }

    else
    {
      v15 = [NSString stringWithFormat:@"Ignore device disconnection: not my desired one"];
      v16 = [*(a1 + 40) logger];
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v18 = v15;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
      }
    }
  }
}

void sub_10000A288(uint64_t a1)
{
  v2 = [NSString stringWithFormat:@"%s enter", "[StateMachineController handleRemoteDeviceAttachEvent]_block_invoke"];
  v3 = [*(a1 + 32) logger];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_1000137D0();
  }

  v4 = *(*(a1 + 32) + 32);
  if (v4)
  {
    v5 = sub_100008DF8(v4);
    v6 = [NSString stringWithFormat:@"Event 'Remote Device Attach' ignored in state <%@>", v5];

    v7 = [*(a1 + 32) logger];
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
LABEL_7:

      goto LABEL_19;
    }

    *buf = 138543362;
    v20 = v6;
LABEL_6:
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
    goto LABEL_7;
  }

  v8 = +[MDRStateRecorder sharedInstance];
  v9 = [v8 returnSavedState];

  if ((v9 - 1) > 4)
  {
    if (v9 == 6)
    {
      v6 = [NSString stringWithFormat:@"Nothing to do for state <%@>", @"Waiting For Migration Did Finish"];
      v7 = [*(a1 + 32) logger];
      if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_7;
      }

      *buf = 138543362;
      v20 = v6;
      goto LABEL_6;
    }

    v15 = [NSString stringWithFormat:@"A fresh start"];
    v16 = [*(a1 + 32) logger];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v20 = v15;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
    }

    v13 = *(a1 + 32);
    v14 = 1;
  }

  else
  {
    v10 = sub_100008DF8(v9);
    v11 = [NSString stringWithFormat:@"Recovering state <%@> from last exception", v10];

    v12 = [*(a1 + 32) logger];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v20 = v11;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
    }

    v13 = *(a1 + 32);
    v14 = v9;
  }

  [v13 transitionToState:v14];
LABEL_19:
  v17 = [NSString stringWithFormat:@"%s exits", "[StateMachineController handleRemoteDeviceAttachEvent]_block_invoke"];
  v18 = [*(a1 + 32) logger];
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    sub_1000137D0();
  }
}

void sub_10000A65C(uint64_t a1)
{
  v2 = [NSString stringWithFormat:@"%s enter", "[StateMachineController handleRemoteDeviceDetachEvent]_block_invoke"];
  v3 = [*(a1 + 32) logger];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_1000137D0();
  }

  v4 = *(a1 + 32);
  v5 = v4[4];
  if (v5 <= 6)
  {
    if (((1 << v5) & 0x1E) != 0)
    {
      [v4 transitionToState:0];
    }

    else
    {
      v6 = sub_100008DF8(v4[4]);
      v7 = [NSString stringWithFormat:@"Event 'Remote Device Detach' ignored in state <%@>", v6];

      v8 = [*(a1 + 32) logger];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v12 = v7;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
      }
    }
  }

  v9 = [NSString stringWithFormat:@"%s exits", "[StateMachineController handleRemoteDeviceDetachEvent]_block_invoke"];
  v10 = [*(a1 + 32) logger];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    sub_1000137D0();
  }
}

void sub_10000A8A8(uint64_t a1)
{
  v2 = [NSString stringWithFormat:@"%s enter", "[StateMachineController handleTimerTimeoutEvent]_block_invoke"];
  v3 = [*(a1 + 32) logger];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_1000137D0();
  }

  v4 = *(a1 + 32);
  v5 = v4[4];
  if (v5 <= 6)
  {
    if (((1 << v5) & 0x71) != 0)
    {
      v6 = sub_100008DF8(v4[4]);
      v7 = [NSString stringWithFormat:@"Event 'Timer Timeout' ignored in state <%@>", v6];

      v8 = [*(a1 + 32) logger];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v12 = v7;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
      }
    }

    else
    {
      [v4 transitionToState:0];
    }
  }

  v9 = [NSString stringWithFormat:@"%s exits", "[StateMachineController handleTimerTimeoutEvent]_block_invoke"];
  v10 = [*(a1 + 32) logger];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    sub_1000137D0();
  }
}

id sub_10000AFC8(uint64_t a1)
{
  v2 = [NSString stringWithFormat:@"Timeout waiting for wakeup event"];
  v3 = [*(a1 + 32) logger];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138543362;
    v6 = v2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}@", &v5, 0xCu);
  }

  return [*(a1 + 32) handleTimerTimeoutEvent];
}

void sub_10000B0A0(uint64_t a1)
{
  v2 = +[DeviceUtility sharedInstance];
  [v2 cancelTimer:*(a1 + 32)];

  v3 = +[HIDEventMonitor sharedInstance];
  [v3 unregisterWakeupEventCallback];
}

void sub_10000B114(uint64_t a1, char a2)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 64);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10000B194;
  v4[3] = &unk_100020BD0;
  v5 = a2;
  v4[4] = v2;
  dispatch_async(v3, v4);
}

id *sub_10000B194(id *result)
{
  if (*(result + 40) == 1)
  {
    v1 = result;
    v2 = [NSString stringWithFormat:@"(OK) Detected wakeup event."];
    v3 = [v1[4] logger];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = 138543362;
      v5 = v2;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}@", &v4, 0xCu);
    }

    [v1[4] runCleanupBlock];
    [v1[4] triggerSuccessFeedback];
    return [v1[4] handleButtonWakeupEvent];
  }

  return result;
}

void sub_10000B304(uint64_t a1)
{
  v2 = [NSString stringWithFormat:@"%s enter", "[StateMachineController handleButtonWakeupEvent]_block_invoke"];
  v3 = [*(a1 + 32) logger];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_1000137D0();
  }

  v4 = *(a1 + 32);
  if (v4[4] == 1)
  {
    [v4 transitionToState:2];
  }

  else
  {
    v5 = sub_100008DF8(v4[4]);
    v6 = [NSString stringWithFormat:@"Event 'Button Wakeup' ignored in state <%@>", v5];

    v7 = [*(a1 + 32) logger];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v11 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
    }
  }

  v8 = [NSString stringWithFormat:@"%s exits", "[StateMachineController handleButtonWakeupEvent]_block_invoke"];
  v9 = [*(a1 + 32) logger];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    sub_1000137D0();
  }
}

id sub_10000B6F0(uint64_t a1)
{
  v2 = [NSString stringWithFormat:@"Timeout waiting for scanning store service"];
  v3 = [*(a1 + 32) logger];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138543362;
    v6 = v2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}@", &v5, 0xCu);
  }

  return [*(a1 + 32) handleTimerTimeoutEvent];
}

void sub_10000B7C8(uint64_t a1)
{
  v2 = +[DeviceUtility sharedInstance];
  [v2 cancelTimer:*(a1 + 32)];

  v3 = +[ServiceScanner sharedInstance];
  [v3 unregisterServiceDetectCallback];
}

void sub_10000B83C(uint64_t a1, char a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  v4 = *(v3 + 64);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000B8BC;
  block[3] = &unk_100020C20;
  v6 = a2;
  block[4] = v3;
  block[5] = a3;
  dispatch_async(v4, block);
}

void *sub_10000B8BC(void *result)
{
  if (*(result + 48) == 1)
  {
    v1 = result;
    v2 = [NSString stringWithFormat:@"(OK) Detected store service. Paring version is %ld", result[5]];
    v3 = [v1[4] logger];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v6 = v2;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
    }

    [v1[4] runCleanupBlock];
    [v1[4] triggerSuccessFeedback];
    v4 = +[MDRStateRecorder sharedInstance];
    [v4 recordParingVersion:v1[5]];

    return [v1[4] handleStoreServiceDetectedEvent];
  }

  return result;
}

void sub_10000BA54(uint64_t a1)
{
  v2 = [NSString stringWithFormat:@"%s enter", "[StateMachineController handleStoreServiceDetectedEvent]_block_invoke"];
  v3 = [*(a1 + 32) logger];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_1000137D0();
  }

  v4 = *(a1 + 32);
  if (v4[4] == 2)
  {
    [v4 transitionToState:3];
  }

  else
  {
    v5 = sub_100008DF8(v4[4]);
    v6 = [NSString stringWithFormat:@"Event 'Store Service Detected' ignored in state <%@>", v5];

    v7 = [*(a1 + 32) logger];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v11 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
    }
  }

  v8 = [NSString stringWithFormat:@"%s exits", "[StateMachineController handleStoreServiceDetectedEvent]_block_invoke"];
  v9 = [*(a1 + 32) logger];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    sub_1000137D0();
  }
}

id sub_10000BFB8(uint64_t a1)
{
  v2 = [NSString stringWithFormat:@"Timeout waiting for paring with HID"];
  v3 = [*(a1 + 32) logger];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138543362;
    v6 = v2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}@", &v5, 0xCu);
  }

  return [*(a1 + 32) handleTimerTimeoutEvent];
}

void sub_10000C090(uint64_t a1)
{
  v2 = +[DeviceUtility sharedInstance];
  [v2 cancelTimer:*(a1 + 32)];

  v3 = +[HIDEventMonitor sharedInstance];
  [v3 unregisterParingEventCallback];

  v4 = +[ServiceScanner sharedInstance];
  [v4 cancelFetchingDeviceID];
}

void sub_10000C120(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [NSString stringWithFormat:@"Get keyCombo: %@", v3];
  v5 = [*(a1 + 32) logger];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v14 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
  }

  v6 = +[ServiceScanner sharedInstance];
  [v6 cancelFetchingDeviceID];

  v7 = *(a1 + 32);
  v8 = *(v7 + 64);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000C290;
  block[3] = &unk_100020918;
  v11 = v3;
  v12 = v7;
  v9 = v3;
  dispatch_async(v8, block);
}

void sub_10000C290(uint64_t a1)
{
  v2 = +[ServiceScanner sharedInstance];
  v3 = [v2 fetchingDeviceIDWithParingCode:*(a1 + 32)];

  if (v3 && [v3 length])
  {
    v4 = [NSString stringWithFormat:@"(OK) Paring successfully with device ID %@", v3];
    v5 = [*(a1 + 40) logger];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v10 = v4;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
    }

    [*(a1 + 40) runCleanupBlock];
    [*(a1 + 40) triggerSuccessFeedback];
    v6 = +[MDRStateRecorder sharedInstance];
    [v6 recordDeviceID:v3];

    [*(a1 + 40) handleParingSuccessEvent];
  }

  else
  {
    v7 = [NSString stringWithFormat:@"No valid deviceID returned"];
    v8 = [*(a1 + 40) logger];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v10 = v7;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
    }
  }
}

id sub_10000C6D0(uint64_t a1)
{
  v2 = [NSString stringWithFormat:@"Timeout waiting for paring with NFC"];
  v3 = [*(a1 + 32) logger];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138543362;
    v6 = v2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}@", &v5, 0xCu);
  }

  return [*(a1 + 32) handleTimerTimeoutEvent];
}

void sub_10000C7A8(uint64_t a1)
{
  v2 = +[DeviceUtility sharedInstance];
  [v2 cancelTimer:*(a1 + 32)];

  v3 = +[NFCTagReader sharedInstance];
  [v3 unregisterAll];

  v4 = +[ServiceScanner sharedInstance];
  [v4 cancelFetchingDeviceID];
}

void sub_10000C838(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [NSString stringWithFormat:@"Read tag UID: %@", v3];
  v5 = [*(a1 + 32) logger];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v14 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
  }

  v6 = +[ServiceScanner sharedInstance];
  [v6 cancelFetchingDeviceID];

  v7 = *(a1 + 32);
  v8 = *(v7 + 64);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000C9A8;
  block[3] = &unk_100020918;
  v11 = v3;
  v12 = v7;
  v9 = v3;
  dispatch_async(v8, block);
}

void sub_10000C9A8(uint64_t a1)
{
  v2 = +[ServiceScanner sharedInstance];
  v3 = [v2 fetchingDeviceIDWithParingCode:*(a1 + 32)];

  if (v3 && [v3 length])
  {
    v4 = [NSString stringWithFormat:@"(OK) Paring successfully with device ID %@", v3];
    v5 = [*(a1 + 40) logger];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v10 = v4;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
    }

    [*(a1 + 40) runCleanupBlock];
    [*(a1 + 40) triggerSuccessFeedback];
    v6 = +[MDRStateRecorder sharedInstance];
    [v6 recordDeviceID:v3];

    [*(a1 + 40) handleParingSuccessEvent];
  }

  else
  {
    v7 = [NSString stringWithFormat:@"No valid deviceID returned"];
    v8 = [*(a1 + 40) logger];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v10 = v7;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
    }
  }
}

void sub_10000CBE4(uint64_t a1)
{
  v2 = [NSString stringWithFormat:@"%s enter", "[StateMachineController handleParingSuccessEvent]_block_invoke"];
  v3 = [*(a1 + 32) logger];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_1000137D0();
  }

  v4 = *(a1 + 32);
  if (v4[4] == 3)
  {
    [v4 transitionToState:4];
  }

  else
  {
    v5 = sub_100008DF8(v4[4]);
    v6 = [NSString stringWithFormat:@"Event 'Paring Success' ignored in state <%@>", v5];

    v7 = [*(a1 + 32) logger];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v11 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
    }
  }

  v8 = [NSString stringWithFormat:@"%s exits", "[StateMachineController handleParingSuccessEvent]_block_invoke"];
  v9 = [*(a1 + 32) logger];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    sub_1000137D0();
  }
}

void sub_10000D058(id a1)
{
  v1 = +[NotificationListener sharedInstance];
  [v1 unregisterAll];
}

void sub_10000D0A0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 64);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10000D11C;
  v4[3] = &unk_100020CB8;
  v4[4] = v2;
  v4[5] = a2;
  dispatch_async(v3, v4);
}

void sub_10000D11C(uint64_t a1)
{
  v2 = [NSString stringWithFormat:@"(OK) DataMigration Percentage updated to %lld", *(a1 + 40)];
  v3 = [*(a1 + 32) logger];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v5 = v2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
  }

  if (*(a1 + 40) >= 2uLL)
  {
    [*(a1 + 32) runCleanupBlock];
    [*(a1 + 32) triggerSuccessFeedback];
    [*(a1 + 32) handleMigrationStartedEvent];
  }
}

void sub_10000D294(uint64_t a1)
{
  v2 = [NSString stringWithFormat:@"%s enter", "[StateMachineController handleMigrationStartedEvent]_block_invoke"];
  v3 = [*(a1 + 32) logger];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_1000137D0();
  }

  v4 = *(a1 + 32);
  if (v4[4] == 4)
  {
    [v4 transitionToState:5];
  }

  else
  {
    v5 = sub_100008DF8(v4[4]);
    v6 = [NSString stringWithFormat:@"Event 'Migration Started' ignored in state <%@>", v5];

    v7 = [*(a1 + 32) logger];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v11 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
    }
  }

  v8 = [NSString stringWithFormat:@"%s exits", "[StateMachineController handleMigrationStartedEvent]_block_invoke"];
  v9 = [*(a1 + 32) logger];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    sub_1000137D0();
  }
}

void sub_10000D9B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  _Block_object_dispose(&a26, 8);
  _Block_object_dispose((v26 - 144), 8);
  _Unwind_Resume(a1);
}

void sub_10000D9FC(id a1)
{
  v1 = +[NotificationListener sharedInstance];
  [v1 unregisterAll];

  v2 = +[MigrationBroadcaster sharedInstance];
  [v2 stopAdvertising];
}

void sub_10000DA68(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = [NSString stringWithFormat:@"(OK) Start broadcasting migration status"];
    v4 = [*(a1 + 32) logger];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 138543362;
      v6 = v3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}@", &v5, 0xCu);
    }
  }
}

__n128 sub_10000DB34(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = *(*(a1 + 32) + 64);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10000DBC4;
  v5[3] = &unk_100020D28;
  v6 = v2;
  v7 = *(a1 + 48);
  v8 = a2;
  dispatch_async(v3, v5);
  return result;
}

void sub_10000DBC4(uint64_t a1)
{
  v1 = *(a1 + 56);
  if (v1 != *(*(*(a1 + 40) + 8) + 24))
  {
    v3 = [NSString stringWithFormat:@"Updated DataMigration MinsRemaining to %lld", v1];
    v4 = [*(a1 + 32) logger];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v7 = v3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
    }

    *(*(*(a1 + 40) + 8) + 24) = *(a1 + 56);
    if (*(*(*(a1 + 48) + 8) + 24) != 100)
    {
      v5 = +[MigrationBroadcaster sharedInstance];
      [v5 setMigrationPercentage:*(*(*(a1 + 48) + 8) + 24) minsRemaining:*(a1 + 56) didFinish:0];
    }
  }
}

__n128 sub_10000DD04(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = *(*(a1 + 32) + 64);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10000DD94;
  v5[3] = &unk_100020D28;
  v6 = v2;
  v7 = *(a1 + 48);
  v8 = a2;
  dispatch_async(v3, v5);
  return result;
}

void sub_10000DD94(uint64_t a1)
{
  v1 = *(a1 + 56);
  if (v1 != *(*(*(a1 + 40) + 8) + 24))
  {
    v3 = [NSString stringWithFormat:@"Updated DataMigration Percentage to %lld", v1];
    v4 = [*(a1 + 32) logger];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v8 = v3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
    }

    *(*(*(a1 + 40) + 8) + 24) = *(a1 + 56);
    v5 = +[MigrationBroadcaster sharedInstance];
    [v5 setMigrationPercentage:*(a1 + 56) minsRemaining:*(*(*(a1 + 48) + 8) + 24) didFinish:0];

    if (*(a1 + 56) == 100)
    {
      v6 = +[NotificationListener sharedInstance];
      [v6 unregisterAll];

      [*(a1 + 32) handleMigrationTransferCompletedEvent];
    }
  }
}

void sub_10000DF6C(uint64_t a1)
{
  v2 = [NSString stringWithFormat:@"%s enter", "[StateMachineController handleMigrationTransferCompletedEvent]_block_invoke"];
  v3 = [*(a1 + 32) logger];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_1000137D0();
  }

  v4 = *(a1 + 32);
  if (v4[4] == 5)
  {
    [v4 transitionToState:6];
  }

  else
  {
    v5 = sub_100008DF8(v4[4]);
    v6 = [NSString stringWithFormat:@"Event 'Migration Transfer Compeleted' ignored in state <%@>", v5];

    v7 = [*(a1 + 32) logger];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v11 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
    }
  }

  v8 = [NSString stringWithFormat:@"%s exits", "[StateMachineController handleMigrationTransferCompletedEvent]_block_invoke"];
  v9 = [*(a1 + 32) logger];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    sub_1000137D0();
  }
}

void sub_10000E8E4(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 64);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000E97C;
  block[3] = &unk_1000208A8;
  v3 = *(a1 + 40);
  dispatch_async(v1, block);
}

intptr_t sub_10000E97C(uint64_t a1)
{
  v2 = +[NotificationListener sharedInstance];
  [v2 unregisterAll];

  v3 = *(a1 + 32);

  return dispatch_semaphore_signal(v3);
}

intptr_t sub_10000E9CC(intptr_t result, int a2)
{
  if (a2)
  {
    return dispatch_semaphore_signal(*(result + 32));
  }

  return result;
}

void sub_10000EB70(uint64_t a1)
{
  v2 = [NSString stringWithFormat:@"Daemon has been idle for long time, exiting"];
  v3 = [*(a1 + 32) logger];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138543362;
    v5 = v2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}@", &v4, 0xCu);
  }

  exit(0);
}

void sub_10000F01C(id a1)
{
  qword_100026518 = objc_alloc_init(MDRStateRecorder);

  _objc_release_x1();
}

void sub_10000FA78(uint64_t a1, __CFDictionary *a2)
{
  properties = 0;
  Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (Mutable)
  {
    v4 = Mutable;
    CFDictionarySetValue(Mutable, @"Status", @"Failure");
    v5 = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    v6 = v5;
    if (!v5)
    {
      sub_100011B6C("gather_gas_gauge_info", @"Could not create service matching properties");
      LODWORD(v8) = 0;
LABEL_15:
      if (properties)
      {
        CFRelease(properties);
      }

      if (v8)
      {
        IOObjectRelease(v8);
      }

      if (v6)
      {
        CFRelease(v6);
      }

      CFRelease(v4);
      return;
    }

    CFDictionarySetValue(v5, @"built-in", kCFBooleanTrue);
    v7 = IOServiceMatching("IOPMPowerSource");
    v8 = v7;
    if (v7)
    {
      CFDictionarySetValue(v7, @"IOPropertyMatch", v6);
      MatchingService = IOServiceGetMatchingService(kIOMasterPortDefault, v8);
      LODWORD(v8) = MatchingService;
      if (MatchingService)
      {
        if (!IORegistryEntryCreateCFProperties(MatchingService, &properties, kCFAllocatorDefault, 0))
        {
          theDict = properties;
          v13 = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
          if (v13)
          {
            v14 = v13;
            CFArrayAppendValue(v13, @"CycleCount");
            CFArrayAppendValue(v14, @"DesignCapacity");
            CFArrayAppendValue(v14, @"MaxCapacity");
            v15 = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
            if (v15)
            {
              v16 = v15;
              CFDictionarySetValue(v15, @"MaxCapacity", @"FullChargeCapacity");
              Count = CFArrayGetCount(v14);
              if (Count >= 1)
              {
                v18 = Count;
                for (i = 0; i != v18; ++i)
                {
                  ValueAtIndex = CFArrayGetValueAtIndex(v14, i);
                  if (ValueAtIndex)
                  {
                    v21 = ValueAtIndex;
                    Value = CFDictionaryGetValue(theDict, ValueAtIndex);
                    if (Value)
                    {
                      v23 = Value;
                      v24 = CFDictionaryGetValue(v16, v21);
                      if (v24)
                      {
                        v25 = v24;
                      }

                      else
                      {
                        v25 = v21;
                      }

                      CFDictionarySetValue(v4, v25, v23);
                    }

                    else
                    {
                      sub_100011B6C("filter_properties", @"Could not lookup value for %@", v21, v26);
                    }
                  }

                  else
                  {
                    sub_100011B6C("filter_properties", @"Could not extract key %d of %d", i, v18);
                  }
                }
              }

              CFRelease(v16);
            }

            else
            {
              sub_100011B6C("filter_properties", @"Could not create empty dictionary for key map");
            }

            CFRelease(v14);
          }

          else
          {
            sub_100011B6C("filter_properties", @"Could not create empty array for desired keys");
          }

          CFDictionarySetValue(v4, @"Status", @"Success");
          v10 = @"GasGauge";
          v12 = a2;
          v11 = v4;
          goto LABEL_14;
        }

        sub_100011B6C("gather_gas_gauge_info", @"Could not create properties\n");
        v10 = @"Status";
        v11 = @"CreatePropertiesFailed";
      }

      else
      {
        sub_100011B6C("gather_gas_gauge_info", @"Could not find the %s service", "IOPMPowerSource");
        v10 = @"Status";
        v11 = @"ServiceLookupFailed";
      }
    }

    else
    {
      sub_100011B6C("gather_gas_gauge_info", @"Could not create matching dictionary");
      v10 = @"Status";
      v11 = @"ServiceMatchingFailed";
    }

    v12 = v4;
LABEL_14:
    CFDictionarySetValue(v12, v10, v11);
    goto LABEL_15;
  }

  sub_100011B6C("gather_gas_gauge_info", @"Could not create empty dictionary");
}

void sub_10000FE44(uint64_t a1, __CFDictionary *a2)
{
  Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (Mutable)
  {
    v4 = Mutable;
    CFDictionarySetValue(Mutable, @"Status", @"Failure");
    CFDictionarySetValue(v4, @"Connection", @"Unplugged");
    v5 = IOServiceMatching("IOHDMIService");
    if (v5)
    {
      MatchingService = IOServiceGetMatchingService(kIOMasterPortDefault, v5);
      if (MatchingService)
      {
        v7 = MatchingService;
        CFDictionarySetValue(v4, @"Connection", @"Plugged");
        v8 = 0;
        v9 = @"Success";
LABEL_5:
        CFDictionarySetValue(v4, @"Status", v9);
        CFDictionarySetValue(a2, @"HDMI", v4);
        goto LABEL_6;
      }

      v10 = IOServiceMatching("AppleANX9836");
      if (v10)
      {
        v11 = IOServiceGetMatchingService(kIOMasterPortDefault, v10);
        v7 = v11;
        if (v11)
        {
          CFProperty = IORegistryEntryCreateCFProperty(v11, @"ds_plugged", kCFAllocatorDefault, 0);
          v8 = CFProperty;
          if (!CFProperty)
          {
            v9 = @"CreatePropertiesFailed";
            goto LABEL_5;
          }

          v13 = CFGetTypeID(CFProperty);
          if (v13 != CFBooleanGetTypeID())
          {
            v9 = @"GetPlugStatusTypeMismatch";
            goto LABEL_5;
          }

          Value = CFBooleanGetValue(v8);
          v15 = "PLUGGED";
          if (!Value)
          {
            v15 = "UNPLUGGED";
          }

          sub_100011B6C("gather_hdmi_info", @"downstream %s\n", v15);
          if (!CFBooleanGetValue(v8))
          {
            v9 = @"GetPlugStatusValueFailred";
            goto LABEL_5;
          }

          CFDictionarySetValue(v4, @"Connection", @"Plugged");
        }

        else
        {
          sub_100011B6C("gather_hdmi_info", @"Could not find the AppleANX9836 service");
          v8 = 0;
        }

        CFDictionarySetValue(v4, @"Status", @"Success");
        CFDictionarySetValue(a2, @"HDMI", v4);
        if (!v7)
        {
LABEL_7:
          if (v8)
          {
            CFRelease(v8);
          }

          goto LABEL_21;
        }

LABEL_6:
        IOObjectRelease(v7);
        goto LABEL_7;
      }
    }

    sub_100011B6C("gather_hdmi_info", @"Could not create matching dictionary");
    CFDictionarySetValue(v4, @"Status", @"ServiceMatchingFailed");
    CFDictionarySetValue(a2, @"HDMI", v4);
LABEL_21:

    CFRelease(v4);
    return;
  }

  sub_100011B6C("gather_hdmi_info", @"Could not create empty dictionary");
}

void sub_10001011C(const __CFDictionary *a1, __CFDictionary *a2)
{
  mainPort = 0;
  if (a1)
  {
    if (!a2)
    {
      sub_100011B6C("gather_ioreg_info", @"%s, Bad parameter.", "gather_ioreg_info");
      return;
    }

    if (IOMasterPort(bootstrap_port, &mainPort))
    {
      sub_100011B6C("gather_ioreg_info", @"can't obtain I/O Kit's master port");
    }

    RootEntry = IORegistryGetRootEntry(mainPort);
    if (RootEntry)
    {
      v5 = RootEntry;
      Value = CFDictionaryGetValue(a1, @"CurrentPlane");
      v7 = CFDictionaryGetValue(a1, @"EntryName");
      v8 = CFDictionaryGetValue(a1, @"EntryClass");
      if (Value)
      {
        v19 = 0u;
        v20 = 0u;
        v17 = 0u;
        v18 = 0u;
        v15 = 0u;
        v16 = 0u;
        *buffer = 0u;
        v14 = 0u;
        if (!CFStringGetCString(Value, buffer, 128, 0x8000100u))
        {
          sub_100011B6C("gather_ioreg_info", @"Can't convert plane name to io_name_t");
          goto LABEL_23;
        }

        sub_100011B6C("gather_ioreg_info", @"IOReg query plane %s", buffer);
        v9 = sub_100010364(v5, buffer);
      }

      else
      {
        if (v7)
        {
          v8 = v7;
          v10 = 0;
        }

        else
        {
          if (!v8)
          {
            goto LABEL_23;
          }

          v10 = 1;
        }

        v9 = sub_10001089C(v8, v10);
      }

      v11 = v9;
      if (v9)
      {
        CFDictionarySetValue(a2, @"IORegistry", v9);
        CFRelease(v11);
LABEL_24:
        IOObjectRelease(v5);
        return;
      }

LABEL_23:
      sub_100011B6C("gather_ioreg_info", @"Can't create ioreg dict.");
      goto LABEL_24;
    }

    sub_100011B6C("gather_ioreg_info", @"Can't get root entry.");
  }

  else
  {

    sub_100011B6C("gather_ioreg_info", @"Request message is not valid.");
  }
}

__CFDictionary *sub_100010364(io_registry_entry_t a1, const char *a2)
{
  busyState = 0;
  valuePtr = a1;
  memset(name, 0, 128);
  memset(className, 0, sizeof(className));
  v36 = 0;
  iterator = 0;
  Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  v5 = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
  NameInPlane = IORegistryEntryGetNameInPlane(a1, a2, name);
  if (NameInPlane)
  {
    sub_100011B6C("create_ioreg_dict", @"IORegistryEntryGetNameInPlane has failed with error %d.", NameInPlane);
    goto LABEL_8;
  }

  v7 = CFStringCreateWithCString(kCFAllocatorDefault, name, 0x8000100u);
  if (v7)
  {
    v8 = v7;
    CFDictionarySetValue(Mutable, @"name", v7);
    CFRelease(v8);
  }

  else
  {
    sub_100011B6C("create_ioreg_dict", @"Can't create CFString for entry name.");
  }

  Class = IOObjectGetClass(a1, className);
  if (Class)
  {
    sub_100011B6C("create_ioreg_dict", @"IOObjectGetClass has failed with error %d.", Class);
    goto LABEL_8;
  }

  v12 = CFStringCreateWithCString(kCFAllocatorDefault, className, 0x8000100u);
  if (v12)
  {
    v13 = v12;
    CFDictionarySetValue(Mutable, @"className", v12);
    v14 = CFStringCreateMutable(kCFAllocatorDefault, 512);
    Copy = CFStringCreateCopy(0, v13);
    CFStringInsert(v14, 0, Copy);
    v16 = IOObjectCopySuperclassForClass(Copy);
    CFRelease(Copy);
    if (v16)
    {
      do
      {
        CFStringInsert(v14, 0, @" : ");
        CFStringInsert(v14, 0, v16);
        v17 = IOObjectCopySuperclassForClass(v16);
        CFRelease(v16);
        v16 = v17;
      }

      while (v17);
    }

    CFRelease(v13);
    if (v14)
    {
      CFDictionarySetValue(Mutable, @"inheritance", v14);
      CFRelease(v14);
    }

    else
    {
      sub_100011B6C("create_ioreg_dict", @"Can't create inheritance string.");
    }
  }

  else
  {
    sub_100011B6C("create_ioreg_dict", @"Can't create CFString for className.");
  }

  v18 = malloc_type_malloc(0xC800uLL, 0xA3FBE122uLL);
  v10 = v18;
  if (!v18)
  {
    sub_100011B6C("create_ioreg_dict", @"Failed to get space for state string.");
    goto LABEL_25;
  }

  *v18 = 0;
  v19 = v18;
  if (!IOObjectConformsTo(a1, "IOService"))
  {
LABEL_38:
    RetainCount = IOObjectGetRetainCount(a1);
    sprintf(v19, "retain %d", RetainCount);
    v27 = CFStringCreateWithCString(kCFAllocatorDefault, v10, 0x8000100u);
    if (v27)
    {
      v28 = v27;
      CFDictionarySetValue(Mutable, @"state", v27);
      CFRelease(v28);
    }

    else
    {
      sub_100011B6C("create_ioreg_dict", @"Can't create CFString for state.");
    }

    free(v10);
    v29 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, &valuePtr);
    if (v29)
    {
      v30 = v29;
      CFDictionarySetValue(Mutable, @"regEntry", v29);
      CFRelease(v30);
    }

    else
    {
      sub_100011B6C("create_ioreg_dict", @"Can't create CFNumber for regEntry");
    }

    ChildIterator = IORegistryEntryGetChildIterator(valuePtr, a2, &iterator);
    if (ChildIterator)
    {
      sub_100011B6C("create_ioreg_dict", @"IORegistryEntryGetChildIterator has failed with error %d.", ChildIterator);
    }

    else
    {
      v32 = IOIteratorNext(iterator);
      if (v32)
      {
        v33 = v32;
        do
        {
          v34 = sub_100010364(v33, a2);
          CFArrayAppendValue(v5, v34);
          IOObjectRelease(v33);
          v33 = IOIteratorNext(iterator);
        }

        while (v33);
      }

      IOObjectRelease(iterator);
      if (CFArrayGetCount(v5))
      {
        CFDictionarySetValue(Mutable, @"children", v5);
      }
    }

LABEL_8:
    v10 = 0;
    if (!v5)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  State = IOServiceGetState();
  if (State)
  {
    sub_100011B6C("create_ioreg_dict", @"IOServiceGetState has failed with error %d.", State);
    goto LABEL_25;
  }

  v21 = "!";
  if ((v36 & 2) != 0)
  {
    v22 = &unk_10001B43B;
  }

  else
  {
    v22 = "!";
  }

  if ((v36 & 4) != 0)
  {
    v21 = &unk_10001B43B;
  }

  if (v36)
  {
    v23 = "in";
  }

  else
  {
    v23 = &unk_10001B43B;
  }

  v24 = __sprintf_chk(v10, 0, 0xC800uLL, "%sregistered, %smatched, %sactive, ", v22, v21, v23);
  v25 = IOServiceGetBusyState(a1, &busyState);
  if (!v25)
  {
    v19 = &v10[v24 + sprintf(&v10[v24], "busy %d, ", busyState)];
    goto LABEL_38;
  }

  sub_100011B6C("create_ioreg_dict", @"IOServiceGetBusyState has failed with error %d.", v25);
LABEL_25:
  if (v5)
  {
LABEL_9:
    CFRelease(v5);
  }

LABEL_10:
  if (v10)
  {
    free(v10);
  }

  return Mutable;
}

CFMutableDictionaryRef sub_10001089C(const __CFString *a1, int a2)
{
  v4 = malloc_type_malloc(0x80uLL, 0x100004077774924uLL);
  properties = 0;
  CFStringGetCString(a1, v4, 128, 0x8000100u);
  if (v4)
  {
    if (a2)
    {
      sub_100011B6C("copy_prop_matches_name", @"IOReg query class %s", v4);
      v5 = IOServiceMatching(v4);
    }

    else
    {
      sub_100011B6C("copy_prop_matches_name", @"IOReg query entry %s", v4);
      v5 = IOServiceNameMatching(v4);
    }

    if (v5)
    {
      MatchingService = IOServiceGetMatchingService(kIOMasterPortDefault, v5);
      if (MatchingService)
      {
        v8 = MatchingService;
        if (IORegistryEntryCreateCFProperties(MatchingService, &properties, kCFAllocatorDefault, 0))
        {
          sub_100011B6C("copy_prop_matches_name", @"Could not create property.");
        }

        IOObjectRelease(v8);
        v6 = properties;
        goto LABEL_14;
      }

      sub_100011B6C("copy_prop_matches_name", @"Could not get service.");
    }

    else
    {
      sub_100011B6C("copy_prop_matches_name", @"Could not get name matching dictionary.");
    }

    v6 = 0;
LABEL_14:
    free(v4);
    return v6;
  }

  sub_100011B6C("copy_prop_matches_name", @"Could not get ioreg entry name.");
  return 0;
}

void sub_100010A08(const __CFDictionary *a1, __CFDictionary *a2)
{
  Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (!Mutable)
  {
    return;
  }

  v5 = Mutable;
  CFDictionarySetValue(Mutable, @"Status", @"Success");
  if (a2)
  {
    if (a1)
    {
      Value = CFDictionaryGetValue(a1, @"MobileGestaltKeys");
      if (Value)
      {
        v7 = Value;
        TypeID = CFArrayGetTypeID();
        if (TypeID == CFGetTypeID(v7))
        {
          Count = CFArrayGetCount(v7);
          if (Count >= 1)
          {
            v10 = Count;
            v11 = 0;
            while (1)
            {
              ValueAtIndex = CFArrayGetValueAtIndex(v7, v11);
              v13 = CFStringGetTypeID();
              if (v13 != CFGetTypeID(ValueAtIndex))
              {
                break;
              }

              if (v10 == ++v11)
              {
                goto LABEL_10;
              }
            }

            sub_100011B6C("gather_mobile_gestalt_info", @"Keys passed in are not all strings");
            goto LABEL_20;
          }

LABEL_10:
          v14 = MGCopyAnswer();
          if (!v14 || (v15 = v14, v16 = CFBooleanGetTypeID(), v16 != CFGetTypeID(v15)) || !CFBooleanGetValue(v15))
          {
            sub_100011B6C("gather_mobile_gestalt_info", @"MobileGestalt query function has been deprecated");
            v19 = @"MobileGestaltDeprecated";
LABEL_21:
            CFDictionarySetValue(v5, @"Status", v19);
            goto LABEL_22;
          }

          CFRelease(v15);
          v17 = MGCopyMultipleAnswers();
          if (v17)
          {
            v18 = v17;
            CFDictionaryApplyFunction(v17, sub_100010C4C, v5);
            CFRelease(v18);
            goto LABEL_22;
          }

          sub_100011B6C("gather_mobile_gestalt_info", @"MobileGestalt didn't return anything");
        }

        else
        {
          sub_100011B6C("gather_mobile_gestalt_info", @"Keys passed in are not an array");
        }
      }

      else
      {
        sub_100011B6C("gather_mobile_gestalt_info", @"Did not find any keys to lookup");
      }
    }

LABEL_20:
    v19 = @"MobileGestaltFailed";
    goto LABEL_21;
  }

LABEL_22:
  CFDictionarySetValue(a2, @"MobileGestalt", v5);

  CFRelease(v5);
}

void sub_100010C60(uint64_t a1, __CFDictionary *a2)
{
  Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (Mutable)
  {
    v4 = Mutable;
    sub_100011B6C("gather_nand_info", @"Could not gather the NAND information as this function has been deprecated");
    CFDictionarySetValue(v4, @"Status", @"NANDInfoDeprecated");
    CFDictionarySetValue(a2, @"NAND", v4);

    CFRelease(v4);
  }

  else
  {

    sub_100011B6C("gather_nand_info", @"Could not create dictionary to contain NAND information");
  }
}

void sub_100010D24(uint64_t a1, __CFDictionary *a2)
{
  Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (Mutable)
  {
    v4 = Mutable;
    sub_100011B6C("gather_wifi_info", @"Could not gather the Wifi information as this function has been deprecated");
    CFDictionarySetValue(v4, @"Status", @"WifiInfoDeprecated");
    CFDictionarySetValue(a2, @"WiFi", v4);

    CFRelease(v4);
  }

  else
  {

    sub_100011B6C("gather_wifi_info", @"Could not create empty dictionary");
  }
}

char *sub_100010DE8(const __CFString *a1)
{
  if (!a1)
  {
    return 0;
  }

  Length = CFStringGetLength(a1);
  MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
  v4 = malloc_type_malloc(MaximumSizeForEncoding + 1, 0x100004077774924uLL);
  CFStringGetCString(a1, v4, MaximumSizeForEncoding + 1, 0x8000100u);
  return v4;
}

void sub_100010E68(CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }
}

uint64_t sub_100010E74()
{
  openlog("mobile_diagnostics_relay", 1, 24);
  secure_lockdown_checkin();
  sub_100011B6C("handle_lockdown_connection", @"Could not checkin with lockdown.");
  return 0;
}

uint64_t sub_100011750(const __CFDictionary *a1)
{
  syslog(7, "entering cfUserNotificationThread");
  if (a1)
  {
    Value = CFDictionaryGetValue(a1, @"Request");
    if (Value && (v3 = CFEqual(Value, @"Shutdown"), error = 0, v4 = CFUserNotificationCreate(kCFAllocatorDefault, 0.0, 3uLL, &error, a1), syslog(7, "creating notification returned %d", error), v4) && (v3 ? (v5 = sub_100011B04) : (v5 = sub_100011B38), RunLoopSource = CFUserNotificationCreateRunLoopSource(kCFAllocatorDefault, v4, v5, 0), CFRelease(v4), RunLoopSource))
    {
      syslog(7, "about to put up CFUserNotification now");
      Current = CFRunLoopGetCurrent();
      CFRunLoopAddSource(Current, RunLoopSource, kCFRunLoopCommonModes);
      CFRelease(RunLoopSource);
      CFRelease(a1);
      syslog(7, "running runloop");
      CFRunLoopRun();
      syslog(7, "exiting cfUserNotificationThread");
    }

    else
    {
      CFRelease(a1);
    }
  }

  return 0;
}

uint64_t sub_1000118B0()
{
  mach_service = xpc_connection_create_mach_service("com.apple.mobile.diagnostics_relay.lockdown", 0, 1uLL);
  if (mach_service)
  {
    v1 = mach_service;
    xpc_connection_set_event_handler(mach_service, &stru_100020E10);
    xpc_connection_resume(v1);
    sub_100011B6C("start_lockdown_listener", @"Lockdown listener started");
    return 0;
  }

  else
  {
    sub_100011B6C("start_lockdown_listener", @"Could not create listener for %s", "com.apple.mobile.diagnostics_relay.lockdown");
    return 0xFFFFFFFFLL;
  }
}

void sub_100011940(id a1, void *a2)
{
  if (xpc_get_type(a2) == &_xpc_type_connection)
  {
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 0x40000000;
    handler[2] = sub_100011A0C;
    handler[3] = &unk_100020E30;
    handler[4] = a2;
    xpc_connection_set_event_handler(a2, handler);
    xpc_connection_resume(a2);
  }

  else
  {

    sub_100011B6C("start_lockdown_listener_block_invoke", @"Not a connection type");
  }
}

void sub_100011A0C(uint64_t a1, void *a2)
{
  if (a2 == &_xpc_error_connection_invalid)
  {

    sub_100011B6C("start_lockdown_listener_block_invoke_2", @"Connection invalid");
  }

  else
  {
    sub_100011B6C("start_lockdown_listener_block_invoke_2", @"Got an incoming lockdown connection");
    if (lockdown_copy_checkin_info())
    {
      sub_100011B6C("start_lockdown_listener_block_invoke_2", @"Failed to get lockdown checkin info");
    }

    else
    {
      Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      CFDictionarySetValue(Mutable, kLockdownCheckinConnectionInfoKey, 0);
      sub_100010E74();
      xpc_connection_cancel(*(a1 + 32));
      if (Mutable)
      {
        CFRelease(Mutable);
      }
    }
  }
}

uint64_t sub_100011B04()
{
  syslog(7, "CFUserNotificationCallback for SHUTDOWN was called");

  return sub_100012204();
}

uint64_t sub_100011B38()
{
  syslog(7, "CFUserNotificationCallback for REBOOT was called");

  return sub_100011EC0();
}

void sub_100011B6C(uint64_t a1, CFStringRef format, ...)
{
  va_start(va, format);
  v3 = CFStringCreateWithFormatAndArguments(kCFAllocatorDefault, 0, format, va);
  if (v3)
  {
    v4 = v3;
    CFStringGetCString(v3, buffer, 1024, 0x8000100u);
    CFRelease(v4);
  }

  if (a1)
  {
    syslog(3, "%s: %s");
  }

  else
  {
    syslog(3, "%s");
  }
}

uint64_t sub_100011C40(const __CFDictionary *a1)
{
  v2 = MGCopyAnswer();
  if (!v2)
  {
    sub_100011B6C("do_obliterate", @"obliteration denied: not running internal build.");
    return 1;
  }

  v3 = v2;
  TypeID = CFBooleanGetTypeID();
  if (TypeID == CFGetTypeID(v3) && CFBooleanGetValue(v3))
  {
    Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    if (Mutable)
    {
      v6 = Mutable;
      if (a1)
      {
        Value = CFDictionaryGetValue(a1, @"DataPartitionOnly");
        if (!Value)
        {
          goto LABEL_18;
        }
      }

      else
      {
        Value = kCFBooleanFalse;
        if (!kCFBooleanFalse)
        {
          goto LABEL_18;
        }
      }

      v10 = CFBooleanGetTypeID();
      if (v10 == CFGetTypeID(Value) && CFBooleanGetValue(Value))
      {
        v11 = &kObliterateDataPartition;
LABEL_19:
        CFDictionarySetValue(v6, kObliterationTypeKey, *v11);
        CFDictionarySetValue(v6, kDisplayProgressBarKey, kCFBooleanTrue);
        valuePtr = 3;
        sub_100011B6C("do_obliterate", @"REPLY REQUESTED and delay set for %d secs\n", 3);
        v12 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, &valuePtr);
        if (v12)
        {
          CFDictionarySetValue(v6, kObliterationDelayAfterReplyKey, v12);
        }

        else
        {
          sub_100011B6C("do_obliterate", @"Can't set obliteration delay ");
        }

        CFRelease(v12);
        CFDictionarySetValue(v6, kObliterationMessageKey, @"MobileDiagnosticsRelay executed SIOP.");
        sub_100011B6C("do_obliterate", @"obliteration starting: SIOP orders being transmitted.");
        v13 = Mobile_Obliterate();
        v8 = v13;
        if (v13)
        {
          sub_100011B6C("do_obliterate", @"SIOP orders failed (%d): how did we end up here?", v13);
        }

        else
        {
          sub_100011B6C("do_obliterate", @"SIOP orders accepted: welcome to the Stone Age.", v14);
        }

        CFRelease(v6);
        goto LABEL_10;
      }

LABEL_18:
      v11 = &kObliterationTypeWipeAndBrick;
      goto LABEL_19;
    }

    sub_100011B6C("do_obliterate", @"Could not create CFDictionary.");
  }

  else
  {
    sub_100011B6C("do_obliterate", @"obliteration denied: not running internal build.");
  }

  v8 = 1;
LABEL_10:
  CFRelease(v3);
  return v8;
}

uint64_t sub_100011EC0()
{
  if (!access("/sbin/reboot", 0))
  {
    v2[0] = "/sbin/reboot";
    v2[1] = 0;
    v0 = sub_100011F70(v2);
    if (!v0)
    {
      return 0;
    }

LABEL_5:
    fprintf(__stderrp, "unable to restart, error code: %d - exiting\n", v0);
    exit(1);
  }

  v0 = reboot3();
  if (v0)
  {
    goto LABEL_5;
  }

  return 0;
}

uint64_t sub_100011F70(const char **a1)
{
  fprintf(__stderrp, "executing %s\n", *a1);
  if (pipe(v27) != -1)
  {
    v2 = fork();
    if (v2 == -1)
    {
      v12 = __stderrp;
      v13 = *a1;
      v14 = __error();
      v15 = strerror(*v14);
      fprintf(v12, "fork %s failed: %s\n", v13, v15);
      close(*v27);
LABEL_11:
      close(*&v27[4]);
      return 0xFFFFFFFFLL;
    }

    v3 = v2;
    if (!v2)
    {
      if (dup2(*&v27[4], 1) == -1)
      {
        goto LABEL_8;
      }

      if (dup2(*&v27[4], 2) == -1)
      {
        _exit(2);
      }

      close(*v27);
      if (execv(*a1, a1) == -1)
      {
        v4 = __stderrp;
        v5 = *a1;
        v6 = __error();
        v7 = strerror(*v6);
        fprintf(v4, "execv: %s: %s", v5, v7);
LABEL_8:
        _exit(1);
      }

      goto LABEL_11;
    }

    v18 = *v27;
    close(*&v27[4]);
    if (v18 == -1)
    {
      return 0xFFFFFFFFLL;
    }

    v19 = read(v18, v27, 0x3FFuLL);
    if (v19 >= 1)
    {
      do
      {
        v27[v19] = 0;
        fputs(v27, __stderrp);
        v19 = read(v18, v27, 0x3FFuLL);
      }

      while (v19 > 0);
    }

    v26 = 0;
    if (waitpid(v3, &v26, 0) != -1)
    {
      if ((v26 & 0x7F) == 0x7F)
      {
        v24 = *a1;
        fprintf(__stderrp, "%s was stopped by signal %d\n");
      }

      else
      {
        if ((v26 & 0x7F) == 0)
        {
          v16 = BYTE1(v26);
LABEL_25:
          close(v18);
          return v16;
        }

        v25 = *a1;
        fprintf(__stderrp, "%s was terminated by signal %d\n");
      }

      v16 = 0xFFFFFFFFLL;
      goto LABEL_25;
    }

    v16 = *__error();
    v20 = __stderrp;
    v21 = *a1;
    v22 = __error();
    v23 = strerror(*v22);
    fprintf(v20, "waitpid failed for %s: %s\n", v21, v23);
    goto LABEL_25;
  }

  v8 = __stderrp;
  v9 = *a1;
  v10 = __error();
  v11 = strerror(*v10);
  fprintf(v8, "pipe failed while preparing to execute %s: %s\n", v9, v11);
  return 0xFFFFFFFFLL;
}

uint64_t sub_100012204()
{
  if (!access("/sbin/halt", 0))
  {
    v2 = off_100020E50;
    v0 = sub_100011F70(&v2);
    if (!v0)
    {
      return 0;
    }

LABEL_5:
    fprintf(__stderrp, "unable to shutdown, return code:%d - exiting\n", v0);
    exit(1);
  }

  v0 = reboot3();
  if (v0)
  {
    goto LABEL_5;
  }

  return 0;
}

uint64_t sub_1000122B4()
{
  mainPort = 0;
  v0 = IOMasterPort(bootstrap_port, &mainPort);
  if (!v0)
  {
    v2 = IOPMFindPowerManagement(mainPort);
    if (v2)
    {
      v0 = IOPMSleepSystem(v2);
      if (v0)
      {
        fprintf(__stderrp, "sleep failed (0x%08x)\n", v0);
      }
    }

    else
    {
      v0 = 3758097136;
      fprintf(__stderrp, "sleep failed - cannot find power management (0x%08x)\n", -536870160);
    }
  }

  return v0;
}

uint64_t start()
{
  if (sub_1000118B0())
  {
    exit(1);
  }

  v0 = objc_autoreleasePoolPush();
  xpc_set_event_stream_handler("com.apple.iokit.matching", &_dispatch_main_q, &stru_100020E80);
  v1 = +[NSRunLoop mainRunLoop];
  [v1 run];

  objc_autoreleasePoolPop(v0);
  return 0;
}

void sub_1000123D4(id a1, OS_xpc_object *a2)
{
  v3 = [NSString stringWithUTF8String:xpc_dictionary_get_string(a2, _xpc_event_key_name)];
  if ([v3 hasPrefix:@"com.apple.usbhub.attach"])
  {
    v2 = +[StateMachineController sharedInstance];
    [v2 handleIOMatchEvent:v3];
  }
}

void sub_10001246C(const __CFDictionary *a1)
{
  v1[0] = 0;
  v1[1] = "\t";
  v1[2] = __stderrp;
  sub_100012544(a1, v1);
}

void sub_1000124AC(const __CFDictionary *a1, uint64_t a2)
{
  v2[0] = 0;
  v2[1] = "\t";
  v2[2] = a2;
  sub_100012544(a1, v2);
}

void sub_1000124E0(const __CFDictionary *a1, uint64_t a2)
{
  v2[1] = a2;
  v2[2] = __stderrp;
  v2[0] = 0;
  sub_100012544(a1, v2);
}

void sub_100012518(const __CFDictionary *a1, uint64_t a2, uint64_t a3)
{
  v3[1] = a3;
  v3[2] = a2;
  v3[0] = 0;
  sub_100012544(a1, v3);
}

void sub_100012544(const __CFDictionary *a1, void *a2)
{
  if (a1)
  {
    v3 = a1;
    v4 = CFGetTypeID(a1);
    if (v4 == CFDictionaryGetTypeID())
    {

      CFDictionaryApplyFunction(v3, sub_100012720, a2);
      return;
    }

    v5 = CFGetTypeID(v3);
    if (v5 == CFArrayGetTypeID())
    {
      v6.length = CFArrayGetCount(v3);
      v6.location = 0;

      CFArrayApplyFunction(v3, v6, sub_100012788, a2);
      return;
    }

    v7 = CFGetTypeID(v3);
    if (v7 == CFTreeGetTypeID())
    {

      sub_10001281C(v3, a2);
      return;
    }

    v8 = CFGetTypeID(v3);
    if (v8 == CFBagGetTypeID())
    {

      CFBagApplyFunction(v3, sub_1000128A0, a2);
      return;
    }

    a1 = v3;
  }

  sub_1000126C8(a1, a2);
}

void sub_1000126C8(const void *a1, uint64_t a2)
{
  v3 = sub_1000128B4(a1);
  sub_100012A34(v3, 0, a2);
  if (v3)
  {

    free(v3);
  }
}

void sub_100012720(const void *a1, const void *a2, uint64_t a3)
{
  v5 = sub_1000128B4(a1);
  sub_100012A34(v5, a2, a3);
  if (v5)
  {

    free(v5);
  }
}

void sub_100012788(const void *a1, uint64_t a2)
{
  v4 = *(a2 + 4);
  *(a2 + 4) = v4 + 1;
  snprintf(__str, 0x100uLL, "%d", v4);
  sub_100012A34(__str, a1, a2);
}

void sub_10001281C(__CFTree *a1, uint64_t a2)
{
  memset(&context, 0, sizeof(context));
  v4 = *a2 + 1;
  v6 = *(a2 + 8);
  v5[0] = v4;
  v5[1] = 0;
  CFTreeGetContext(a1, &context);
  sub_100012A34(&unk_10001B43B, context.info, a2);
  CFTreeApplyFunctionToChildren(a1, sub_10001281C, v5);
}

_WORD *sub_1000128B4(const void *a1)
{
  if (a1 && (TypeID = CFDataGetTypeID(), TypeID == CFGetTypeID(a1)) && (v3 = CFDataGetLength(a1), BytePtr = CFDataGetBytePtr(a1), v5 = 2 * v3 + 3, (v6 = malloc_type_malloc(v5, 0x541AC063uLL)) != 0))
  {
    v7 = v6;
    strlcpy(v6, "0x", v5);
    v8 = v7 + 1;
    if (v3 >= 1)
    {
      do
      {
        v9 = *BytePtr++;
        snprintf(__str, 3uLL, "%02hX", v9);
        *v8++ = *__str;
        --v3;
      }

      while (v3);
    }

    *v8 = 0;
  }

  else
  {
    v10 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%@", a1);
    if (v10)
    {
      v11 = 1;
    }

    else
    {
      v11 = a1 == 0;
    }

    if (v11)
    {
      v12 = v10;
    }

    else
    {
      v12 = @"<error getting string representation>";
    }

    Length = CFStringGetLength(v12);
    MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
    v7 = malloc_type_malloc(MaximumSizeForEncoding + 1, 0xB506A442uLL);
    if (v7 && !CFStringGetCString(v12, v7, MaximumSizeForEncoding + 1, 0x8000100u))
    {
      free(v7);
      v7 = 0;
    }

    if (v12)
    {
      CFRelease(v12);
    }
  }

  return v7;
}

void sub_100012A34(char *a1, const void *a2, uint64_t a3)
{
  if (*a3 >= 1)
  {
    v6 = 0;
    do
    {
      fputs(*(a3 + 8), *(a3 + 16));
      ++v6;
    }

    while (v6 < *a3);
  }

  fputs(a1, *(a3 + 16));
  if (a2)
  {
    if (a1 && *a1)
    {
      fputc(58, *(a3 + 16));
    }

    v7 = CFGetTypeID(a2);
    if (v7 == CFDictionaryGetTypeID() || (v8 = CFGetTypeID(a2), v8 == CFArrayGetTypeID()) || (v9 = CFGetTypeID(a2), v9 == CFTreeGetTypeID()) || (v10 = CFGetTypeID(a2), v10 == CFBagGetTypeID()))
    {
      fputc(10, *(a3 + 16));
      v14[0] = *a3 + 1;
      v14[1] = 0;
      v15 = *(a3 + 8);
      sub_100012544(a2, v14);
    }

    else
    {
      v12 = sub_1000128B4(a2);
      if (a1 && *a1)
      {
        fputc(32, *(a3 + 16));
      }

      v13 = *(a3 + 16);
      if (v12)
      {
        fprintf(v13, "%s\n", v12);

        free(v12);
      }

      else
      {

        fwrite("(NULL)\n", 7uLL, 1uLL, v13);
      }
    }
  }

  else
  {
    v11 = *(a3 + 16);

    fputc(10, v11);
  }
}

void sub_100012C38(uint64_t a1, NSObject *a2)
{
  v2 = 136446466;
  v3 = "[MigrationBroadcaster peripheralManagerDidUpdateState:]";
  v4 = 2114;
  v5 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "%{public}s: %{public}@", &v2, 0x16u);
}

void sub_100013644(uint64_t a1, NSObject *a2)
{
  v2 = 136446466;
  v3 = "[NotificationListener _tokenForName:]";
  v4 = 2114;
  v5 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "%{public}s: %{public}@", &v2, 0x16u);
}

void sub_1000136D0(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "%{public}@", &v2, 0xCu);
}