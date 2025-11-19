void sub_100001A08(id a1, OS_xpc_object *a2)
{
  v2 = [NSString stringWithUTF8String:xpc_dictionary_get_string(a2, _xpc_event_key_name)];
  v3 = qword_1000DDBC8;
  if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEBUG))
  {
    sub_100074268(v2, v3);
  }

  if (([@"HKHealthDaemonActiveDataCollectionWillStartNotification" isEqualToString:v2] & 1) != 0 || objc_msgSend(@"BTSettingsHRMConnectedNotification", "isEqualToString:", v2))
  {
    v4 = [@"HKHealthDaemonActiveDataCollectionWillStartNotification" isEqualToString:v2];
    v5 = +[FitnessDeviceManager instance];
    [v5 registerWithHealthKit:v4];
  }
}

void sub_100002308(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = qword_1000DDBC8;
    if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
    {
      sub_1000794BC(v7);
    }
  }

  else
  {
    v28 = a1;
    v8 = objc_opt_new();
    v9 = objc_opt_new();
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v29 = v5;
    v10 = v5;
    v11 = [v10 countByEnumeratingWithState:&v30 objects:v38 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v31;
      do
      {
        for (i = 0; i != v12; i = i + 1)
        {
          if (*v31 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v30 + 1) + 8 * i);
          v16 = [v15 name];
          v17 = v16;
          if (v16)
          {
            v18 = v16;
          }

          else
          {
            v18 = @"(loading)";
          }

          [v8 addObject:v18];

          v19 = [v15 identifier];
          [v9 addObject:v19];
        }

        v12 = [v10 countByEnumeratingWithState:&v30 objects:v38 count:16];
      }

      while (v12);
    }

    v20 = qword_1000DDBC8;
    v21 = v28;
    if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
    {
      v22 = v20;
      v23 = [v10 count];
      *buf = 67109378;
      v35 = v23;
      v36 = 2112;
      v37 = v8;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Found %d peripherals with custom property “Fitness”: %@", buf, 0x12u);
    }

    v24 = *(v28 + 32);
    v25 = [v9 copy];
    [v24 updatePairedDevices:v25];

    v26 = [*(v21 + 32) requestedQuantityTypes];
    if ([v26 count])
    {
      v27 = [*(v21 + 32) workoutInSession];

      if (v27)
      {
        [*(v21 + 32) connectTaggedDevices];
      }
    }

    else
    {
    }

    v5 = v29;
  }
}

void sub_100002598()
{
  v0 = +[NSUserDefaults standardUserDefaults];
  v1 = [v0 objectForKey:@"EnableSignposts"];

  byte_1000DDBC0 = [v1 BOOLValue];
}

void sub_100002878(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v27 = a3;
  if (v27)
  {
    v6 = qword_1000DDBC8;
    if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
    {
      sub_10007954C(v6);
    }
  }

  else
  {
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v7 = [v5 countByEnumeratingWithState:&v28 objects:v36 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v29;
      v10 = &qword_1000DDBC8;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v29 != v9)
          {
            objc_enumerationMutation(v5);
          }

          v12 = *(*(&v28 + 1) + 8 * i);
          v13 = +[ConnectionManager instance];
          v14 = [v12 identifier];
          v15 = [v13 peripheralForIdentifier:v14];

          if (v15 && [v15 state] != 2 && (objc_msgSend(*(a1 + 32), "shouldConnectDevice:", v15) & 1) == 0)
          {
            v16 = *v10;
            if (os_log_type_enabled(*v10, OS_LOG_TYPE_DEFAULT))
            {
              v17 = v16;
              v18 = [v15 identifier];
              v19 = [v15 name];
              v20 = v5;
              v21 = a1;
              v22 = v10;
              v23 = v19;
              *buf = 138412546;
              v24 = @"(loading)";
              if (v19)
              {
                v24 = v19;
              }

              v33 = v18;
              v34 = 2112;
              v35 = v24;
              _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "DISCONNECTING %@ “%@”", buf, 0x16u);

              v10 = v22;
              a1 = v21;
              v5 = v20;
            }

            v25 = +[ConnectionManager instance];
            v26 = [v15 identifier];
            [v25 cancelPeripheralConnectionForConnectOnceIdentifier:v26];
          }
        }

        v8 = [v5 countByEnumeratingWithState:&v28 objects:v36 count:16];
      }

      while (v8);
    }
  }
}

void sub_100002B18(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v23 = a3;
  if (v23)
  {
    v6 = qword_1000DDBC8;
    if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
    {
      sub_10007942C(v6);
    }
  }

  else
  {
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v7 = [v5 countByEnumeratingWithState:&v24 objects:v30 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v25;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v25 != v9)
          {
            objc_enumerationMutation(v5);
          }

          v11 = *(*(&v24 + 1) + 8 * i);
          if ([*(a1 + 32) shouldConnectDevice:v11])
          {
            v12 = *(a1 + 32);
            v13 = [v11 identifier];
            v14 = [v12 isPeripheralConnected:v13];

            v15 = qword_1000DDBC8;
            v16 = os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT);
            if (v14)
            {
              if (v16)
              {
                v17 = v15;
                v18 = [v11 name];
                *buf = 138412290;
                v29 = v18;
                _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Tagged device “%@” is already connected", buf, 0xCu);
              }
            }

            else
            {
              if (v16)
              {
                v19 = v15;
                v20 = [v11 name];
                *buf = 138412290;
                v29 = v20;
                _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Connect tagged device “%@”", buf, 0xCu);
              }

              v21 = *(a1 + 32);
              v22 = [v11 identifier];
              [v21 connectPeripheral:v22];
            }
          }
        }

        v8 = [v5 countByEnumeratingWithState:&v24 objects:v30 count:16];
      }

      while (v8);
    }
  }
}

void sub_1000050B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100005504(id a1)
{
  qword_1000DDA08 = objc_opt_new();

  _objc_release_x1();
}

void sub_100006464(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100006C2C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (v4)
  {
    v5 = qword_1000DDBC8;
    if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
    {
      sub_100070E4C(a1, v5, v4);
    }
  }
}

void sub_100007038(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100007060(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = qword_1000DDBC8;
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v8 = [WeakRetained peripheral];
    v9 = [v8 name];
    v10 = [*(a1 + 32) identifier];
    if (a2)
    {
      v11 = "OK";
    }

    else
    {
      v11 = "FAILED - ";
    }

    if (a2)
    {
      v12 = &stru_1000BEA00;
    }

    else
    {
      v12 = [v5 userInfo];
    }

    v13 = 138413058;
    v14 = v9;
    v15 = 2112;
    v16 = v10;
    v17 = 2082;
    v18 = v11;
    v19 = 2112;
    v20 = v12;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Finished data collection on “%@” for %@: %{public}s%@", &v13, 0x2Au);
    if ((a2 & 1) == 0)
    {
    }
  }
}

void sub_1000079F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class sub_100008214(uint64_t a1)
{
  sub_100008264();
  result = objc_getClass("HKQuantityType");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1000DDA18 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_100008264()
{
  if (!qword_1000DDA20)
  {
    qword_1000DDA20 = _sl_dlopen();
  }
}

uint64_t sub_100008334(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_1000DDA20 = result;
  return result;
}

Class sub_1000083A8(uint64_t a1)
{
  sub_100008264();
  result = objc_getClass("HKQuantity");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1000DDA28 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class sub_1000083F8(uint64_t a1)
{
  sub_100008264();
  result = objc_getClass("HKQuantityDatum");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1000DDA30 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class sub_100008448(uint64_t a1)
{
  sub_100008264();
  result = objc_getClass("HKDevice");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1000DDA38 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_1000084A4(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

id sub_10000952C(void *a1)
{
  v2 = qword_1000DDBC8;
  if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEBUG))
  {
    sub_1000712F0(v2, v3, v4, v5, v6, v7, v8, v9);
  }

  return [a1 notifyDidStop];
}

void sub_1000097E0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v29 = WeakRetained;
    if (byte_1000DDBC0 == 1)
    {
      [WeakRetained instanceID];
      kdebug_trace();
      WeakRetained = v29;
    }

    v3 = [WeakRetained groupInit];
    dispatch_group_wait(v3, 0xFFFFFFFFFFFFFFFFLL);

    v4 = [v29 groupStart];
    dispatch_group_wait(v4, 0xFFFFFFFFFFFFFFFFLL);

    v5 = [v29 deviceManagement];

    if (v5)
    {
      v6 = [v29 deviceManagement];
      v7 = [v29 queue];
      IOHIDUserDeviceUnscheduleFromDispatchQueue();
    }

    v8 = [v29 touch];

    if (v8)
    {
      v9 = [v29 touch];
      v10 = [v29 queue];
      IOHIDUserDeviceUnscheduleFromDispatchQueue();
    }

    v11 = [v29 buttons];

    if (v11)
    {
      v12 = [v29 buttons];
      v13 = [v29 queue];
      IOHIDUserDeviceUnscheduleFromDispatchQueue();
    }

    v14 = [v29 inertial];

    if (v14)
    {
      v15 = [v29 inertial];
      v16 = [v29 queue];
      IOHIDUserDeviceUnscheduleFromDispatchQueue();
    }

    v17 = [v29 infrared];

    if (v17)
    {
      v18 = [v29 infrared];
      v19 = [v29 queue];
      IOHIDUserDeviceUnscheduleFromDispatchQueue();
    }

    v20 = [v29 audio];

    if (v20)
    {
      v21 = [v29 audio];
      v22 = [v29 queue];
      IOHIDUserDeviceUnscheduleFromDispatchQueue();
    }

    v23 = [v29 radio];

    if (v23)
    {
      v24 = [v29 radio];
      v25 = [v29 queue];
      IOHIDUserDeviceUnscheduleFromDispatchQueue();
    }

    v26 = [v29 proximity];

    if (v26)
    {
      v27 = [v29 proximity];
      v28 = [v29 queue];
      IOHIDUserDeviceUnscheduleFromDispatchQueue();
    }

    [v29 clearAppleMultitouchDeviceNotification];
    [v29 clearDeviceManagementNotification];
    [v29 clearButtonInterestNotification];
    if ([v29 notificationPort])
    {
      IONotificationPortDestroy([v29 notificationPort]);
      [v29 setNotificationPort:0];
    }

    [v29 setQueue:0];
    WeakRetained = v29;
    if (byte_1000DDBC0 == 1)
    {
      [*(a1 + 32) instanceID];
      kdebug_trace();
      WeakRetained = v29;
    }
  }
}

void sub_10000A09C(uint64_t a1)
{
  if (byte_1000DDBC0 == 1)
  {
    [*(a1 + 32) instanceID];
    kdebug_trace();
  }

  v2 = [*(a1 + 32) properties];
  v3 = +[HIDAppleSiriRemoteDevice getButtonsHIDReportDescriptor:](HIDAppleSiriRemoteDevice, "getButtonsHIDReportDescriptor:", [*(a1 + 32) productID]);
  v22 = [HIDAppleSiriRemoteDevice properties:v2 locationIdOffset:2 hidDescriptor:v3 extendedData:0];

  v4 = IOHIDUserDeviceCreateWithOptions();
  [*(a1 + 32) setButtons:v4];

  v5 = [*(a1 + 32) buttons];

  if (v5)
  {
    v6 = [*(a1 + 32) buttons];
    v7 = IOHIDUserDeviceCopyService();

    if (v7)
    {
      if (!IOServiceAddInterestNotification([*(a1 + 32) notificationPort], v7, "IOGeneralInterest", sub_10000A3B4, *(a1 + 32), (*(a1 + 32) + 60)))
      {
        [*(a1 + 32) verifyButtonDriverOpenedByEventSystem:v7];
      }

      IOObjectRelease(v7);
    }

    v8 = [*(a1 + 32) buttons];
    v9 = *(a1 + 32);
    IOHIDUserDeviceRegisterGetReportWithReturnLengthCallback();

    v10 = [*(a1 + 32) buttons];
    v11 = *(a1 + 32);
    IOHIDUserDeviceRegisterSetReportCallback();

    v12 = [*(a1 + 32) buttons];
    v13 = [*(a1 + 32) queue];
    IOHIDUserDeviceScheduleWithDispatchQueue();
  }

  v14 = +[DoAPAudioRelayHub instance];
  v15 = [*(a1 + 32) peripheral];
  v16 = [v15 identifier];
  v17 = [v16 UUIDString];
  v18 = [*(a1 + 32) properties];
  v19 = [v14 relayWithIdentifier:v17 deviceType:1 properties:v18 codecType:0];
  [*(a1 + 32) setDoapAudioRelay:v19];

  v20 = *(a1 + 32);
  v21 = [v20 doapAudioRelay];
  [v21 setDelegate:v20];

  if (byte_1000DDBC0 == 1)
  {
    [*(a1 + 32) instanceID];
    kdebug_trace();
  }
}

void *sub_10000A3B4(void *a1, const char *a2, int a3)
{
  if (a3 == -536870608)
  {
    return [a1 verifyButtonDriverOpenedByEventSystem:a2];
  }

  return a1;
}

void sub_10000A408(uint64_t a1)
{
  if (byte_1000DDBC0 == 1)
  {
    [*(a1 + 32) instanceID];
    kdebug_trace();
  }

  v2 = [*(a1 + 32) notificationPort];
  v3 = IOServiceMatching("AppleMultitouchDevice");
  if (!IOServiceAddMatchingNotification(v2, "IOServiceFirstMatch", v3, sub_10000A664, *(a1 + 32), (*(a1 + 32) + 52)) && [*(a1 + 32) amdNotification])
  {
      ;
    }
  }

  v4 = [*(a1 + 32) properties];
  v5 = +[HIDAppleSiriRemoteDevice getTouchHIDReportDescriptor];
  v15 = [HIDAppleSiriRemoteDevice properties:v4 locationIdOffset:1 hidDescriptor:v5 extendedData:0];

  v6 = IOHIDUserDeviceCreateWithOptions();
  [*(a1 + 32) setTouch:v6];

  v7 = [*(a1 + 32) touch];

  if (v7)
  {
    v8 = [*(a1 + 32) touch];
    v9 = *(a1 + 32);
    IOHIDUserDeviceRegisterGetReportWithReturnLengthCallback();

    v10 = [*(a1 + 32) touch];
    v11 = *(a1 + 32);
    IOHIDUserDeviceRegisterSetReportCallback();

    v12 = [*(a1 + 32) touch];
    v13 = [*(a1 + 32) queue];
    IOHIDUserDeviceScheduleWithDispatchQueue();
  }

  v14 = [*(a1 + 32) groupTouch];
  dispatch_group_leave(v14);

  if (byte_1000DDBC0 == 1)
  {
    [*(a1 + 32) instanceID];
    kdebug_trace();
  }
}

void sub_10000A664(void *a1, uint64_t a2)
{
  v3 = a1;
  [v3 appleMultitouchDeviceArrived:a2];
  [v3 clearAppleMultitouchDeviceNotification];
}

void sub_10000A6F0(uint64_t a1)
{
  if (byte_1000DDBC0 == 1)
  {
    [*(a1 + 32) instanceID];
    kdebug_trace();
  }

  v2 = [*(a1 + 32) notificationPort];
  v3 = IOServiceMatching("AppleEmbeddedBluetoothDeviceManagement");
  if (!IOServiceAddMatchingNotification(v2, "IOServiceFirstMatch", v3, sub_10000A950, *(a1 + 32), (*(a1 + 32) + 56)) && [*(a1 + 32) deviceMgtNotification])
  {
      ;
    }
  }

  v4 = [*(a1 + 32) properties];
  v5 = +[HIDAppleSiriRemoteDevice getDeviceManagementHIDReportDescriptor];
  v15 = [HIDAppleSiriRemoteDevice properties:v4 locationIdOffset:0 hidDescriptor:v5 extendedData:&off_1000C40D8];

  v6 = IOHIDUserDeviceCreateWithOptions();
  [*(a1 + 32) setDeviceManagement:v6];

  v7 = [*(a1 + 32) deviceManagement];

  if (v7)
  {
    v8 = [*(a1 + 32) deviceManagement];
    v9 = *(a1 + 32);
    IOHIDUserDeviceRegisterSetReportCallback();

    v10 = [*(a1 + 32) deviceManagement];
    v11 = *(a1 + 32);
    IOHIDUserDeviceRegisterGetReportWithReturnLengthCallback();

    v12 = [*(a1 + 32) deviceManagement];
    v13 = [*(a1 + 32) queue];
    IOHIDUserDeviceScheduleWithDispatchQueue();
  }

  v14 = [*(a1 + 32) groupDeviceManagement];
  dispatch_group_leave(v14);

  if (byte_1000DDBC0 == 1)
  {
    [*(a1 + 32) instanceID];
    kdebug_trace();
  }
}

void sub_10000A950(void *a1, uint64_t a2)
{
  v3 = a1;
  [v3 deviceMgtDriverArrived:a2];
  [v3 clearDeviceManagementNotification];
}

void sub_10000A9DC(uint64_t a1)
{
  if (byte_1000DDBC0 == 1)
  {
    [*(a1 + 32) instanceID];
    kdebug_trace();
  }

  v2 = [*(a1 + 32) properties];
  v3 = +[HIDAppleSiriRemoteDevice getInertialHIDReportDescriptor];
  v13 = [HIDAppleSiriRemoteDevice properties:v2 locationIdOffset:3 hidDescriptor:v3 extendedData:0];

  v4 = IOHIDUserDeviceCreateWithOptions();
  [*(a1 + 32) setInertial:v4];

  v5 = [*(a1 + 32) inertial];

  if (v5)
  {
    v6 = [*(a1 + 32) inertial];
    v7 = *(a1 + 32);
    IOHIDUserDeviceRegisterGetReportWithReturnLengthCallback();

    v8 = [*(a1 + 32) inertial];
    v9 = *(a1 + 32);
    IOHIDUserDeviceRegisterSetReportCallback();

    v10 = [*(a1 + 32) inertial];
    v11 = [*(a1 + 32) queue];
    IOHIDUserDeviceScheduleWithDispatchQueue();
  }

  v12 = [*(a1 + 32) groupInertial];
  dispatch_group_leave(v12);

  if (byte_1000DDBC0 == 1)
  {
    [*(a1 + 32) instanceID];
    kdebug_trace();
  }
}

void sub_10000AC04(uint64_t a1)
{
  if (byte_1000DDBC0 == 1)
  {
    [*(a1 + 32) instanceID];
    kdebug_trace();
  }

  v2 = [*(a1 + 32) properties];
  v3 = +[HIDAppleSiriRemoteDevice getProximityHIDReportDescriptor];
  v13 = [HIDAppleSiriRemoteDevice properties:v2 locationIdOffset:7 hidDescriptor:v3 extendedData:0];

  v4 = IOHIDUserDeviceCreateWithOptions();
  [*(a1 + 32) setProximity:v4];

  v5 = [*(a1 + 32) proximity];

  if (v5)
  {
    v6 = [*(a1 + 32) proximity];
    v7 = *(a1 + 32);
    IOHIDUserDeviceRegisterGetReportWithReturnLengthCallback();

    v8 = [*(a1 + 32) proximity];
    v9 = *(a1 + 32);
    IOHIDUserDeviceRegisterSetReportCallback();

    v10 = [*(a1 + 32) proximity];
    v11 = [*(a1 + 32) queue];
    IOHIDUserDeviceScheduleWithDispatchQueue();
  }

  v12 = [*(a1 + 32) groupProximity];
  dispatch_group_leave(v12);

  if (byte_1000DDBC0 == 1)
  {
    [*(a1 + 32) instanceID];
    kdebug_trace();
  }
}

void sub_10000AE2C(uint64_t a1)
{
  v2 = dispatch_time(0, 5000000000);
  if ([*(a1 + 32) productID] == 614 || objc_msgSend(*(a1 + 32), "productID") == 621)
  {
    v3 = [*(a1 + 32) sentHostReadyReport];
    dispatch_semaphore_wait(v3, v2);
  }

  v4 = [*(a1 + 32) gotDeviceExtendedInfoReport];
  dispatch_semaphore_wait(v4, v2);

  v5 = [*(a1 + 32) groupInit];
  v6 = dispatch_get_global_queue(21, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000B01C;
  block[3] = &unk_1000BD398;
  block[4] = *(a1 + 32);
  dispatch_group_async(v5, v6, block);

  v7 = [*(a1 + 32) groupInit];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10000B22C;
  v10[3] = &unk_1000BD398;
  v10[4] = *(a1 + 32);
  dispatch_group_async(v7, v6, v10);

  v8 = [*(a1 + 32) groupInit];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10000B43C;
  v9[3] = &unk_1000BD398;
  v9[4] = *(a1 + 32);
  dispatch_group_async(v8, v6, v9);
}

void sub_10000B01C(uint64_t a1)
{
  if (byte_1000DDBC0 == 1)
  {
    [*(a1 + 32) instanceID];
    kdebug_trace();
  }

  v2 = [*(a1 + 32) properties];
  v3 = +[HIDAppleSiriRemoteDevice getInfraredHIDReportDescriptor];
  v12 = [HIDAppleSiriRemoteDevice properties:v2 locationIdOffset:4 hidDescriptor:v3 extendedData:0];

  v4 = IOHIDUserDeviceCreateWithOptions();
  [*(a1 + 32) setInfrared:v4];

  v5 = [*(a1 + 32) infrared];

  if (v5)
  {
    v6 = [*(a1 + 32) infrared];
    v7 = *(a1 + 32);
    IOHIDUserDeviceRegisterGetReportWithReturnLengthCallback();

    v8 = [*(a1 + 32) infrared];
    v9 = *(a1 + 32);
    IOHIDUserDeviceRegisterSetReportCallback();

    v10 = [*(a1 + 32) infrared];
    v11 = [*(a1 + 32) queue];
    IOHIDUserDeviceScheduleWithDispatchQueue();
  }

  if (byte_1000DDBC0 == 1)
  {
    [*(a1 + 32) instanceID];
    kdebug_trace();
  }
}

void sub_10000B22C(uint64_t a1)
{
  if (byte_1000DDBC0 == 1)
  {
    [*(a1 + 32) instanceID];
    kdebug_trace();
  }

  v2 = [*(a1 + 32) properties];
  v3 = +[HIDAppleSiriRemoteDevice getAudioHIDReportDescriptor];
  v12 = [HIDAppleSiriRemoteDevice properties:v2 locationIdOffset:5 hidDescriptor:v3 extendedData:0];

  v4 = IOHIDUserDeviceCreateWithOptions();
  [*(a1 + 32) setAudio:v4];

  v5 = [*(a1 + 32) audio];

  if (v5)
  {
    v6 = [*(a1 + 32) audio];
    v7 = *(a1 + 32);
    IOHIDUserDeviceRegisterGetReportWithReturnLengthCallback();

    v8 = [*(a1 + 32) audio];
    v9 = *(a1 + 32);
    IOHIDUserDeviceRegisterSetReportCallback();

    v10 = [*(a1 + 32) audio];
    v11 = [*(a1 + 32) queue];
    IOHIDUserDeviceScheduleWithDispatchQueue();
  }

  if (byte_1000DDBC0 == 1)
  {
    [*(a1 + 32) instanceID];
    kdebug_trace();
  }
}

void sub_10000B43C(uint64_t a1)
{
  if (byte_1000DDBC0 == 1)
  {
    [*(a1 + 32) instanceID];
    kdebug_trace();
  }

  v2 = [*(a1 + 32) properties];
  v3 = +[HIDAppleSiriRemoteDevice getRadioHIDReportDescriptor];
  v12 = [HIDAppleSiriRemoteDevice properties:v2 locationIdOffset:6 hidDescriptor:v3 extendedData:0];

  v4 = IOHIDUserDeviceCreateWithOptions();
  [*(a1 + 32) setRadio:v4];

  v5 = [*(a1 + 32) radio];

  if (v5)
  {
    v6 = [*(a1 + 32) radio];
    v7 = *(a1 + 32);
    IOHIDUserDeviceRegisterGetReportWithReturnLengthCallback();

    v8 = [*(a1 + 32) radio];
    v9 = *(a1 + 32);
    IOHIDUserDeviceRegisterSetReportCallback();

    v10 = [*(a1 + 32) radio];
    v11 = [*(a1 + 32) queue];
    IOHIDUserDeviceScheduleWithDispatchQueue();
  }

  if (byte_1000DDBC0 == 1)
  {
    [*(a1 + 32) instanceID];
    kdebug_trace();
  }
}

void sub_10000B64C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    if (byte_1000DDBC0 == 1)
    {
      [WeakRetained instanceID];
      kdebug_trace();
    }

    v4 = -81;
    if ([v2 setReport:&v4 reportLength:1 reportID:175 reportType:2 keyholeID:240] && os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEBUG))
    {
      sub_1000714D0();
    }

    v3 = [v2 sentHostReadyReport];
    dispatch_semaphore_signal(v3);

    if (byte_1000DDBC0 == 1)
    {
      [v2 instanceID];
      kdebug_trace();
    }
  }
}

void sub_10000B770(uint64_t a1)
{
  v2 = [*(a1 + 32) groupInit];
  dispatch_group_wait(v2, 0xFFFFFFFFFFFFFFFFLL);

  v7.receiver = *(a1 + 32);
  v7.super_class = HIDAppleSiriRemoteDevice;
  objc_msgSendSuper2(&v7, "notifyDidStart");
  [*(a1 + 32) logHwFwVersions];
  objc_initWeak(&location, *(a1 + 32));
  v3 = [*(a1 + 32) queue];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10000B87C;
  v4[3] = &unk_1000BD3C0;
  objc_copyWeak(&v5, &location);
  dispatch_async(v3, v4);

  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void sub_10000B87C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained notifyDesiredConnectionParametersDidChange];
    WeakRetained = v2;
  }
}

void sub_10000C280(uint64_t a1)
{
  v4 = +[NSUserDefaults standardUserDefaults];
  v2 = [v4 objectForKey:@"SleepPeripheralLatency"];

  if (v2)
  {
    v3 = [v4 integerForKey:@"SleepPeripheralLatency"];
  }

  else
  {
    v3 = 199;
  }

  if ([*(a1 + 32) latency] != v3)
  {
    [*(a1 + 32) setLatency:v3];
    [*(a1 + 32) notifyDesiredConnectionParametersDidChange];
  }
}

void sub_10000C3E0(uint64_t a1)
{
  if (byte_1000DDBC0 == 1)
  {
    [*(a1 + 32) instanceID];
    kdebug_trace();
  }

  v4 = +[NSUserDefaults standardUserDefaults];
  v2 = [v4 objectForKey:@"NormalPeripheralLatency"];

  if (v2)
  {
    v3 = [v4 integerForKey:@"NormalPeripheralLatency"];
  }

  else
  {
    v3 = 80;
  }

  if ([*(a1 + 32) latency] != v3)
  {
    [*(a1 + 32) setLatency:v3];
    [*(a1 + 32) notifyDesiredConnectionParametersDidChange];
  }

  if (byte_1000DDBC0 == 1)
  {
    [*(a1 + 32) instanceID];
    kdebug_trace();
  }
}

id sub_10000C5B4(uint64_t a1)
{
  result = [*(a1 + 32) latency];
  if (result)
  {
    [*(a1 + 32) setLatency:0];
    v3 = *(a1 + 32);

    return [v3 notifyDesiredConnectionParametersDidChange];
  }

  return result;
}

id sub_10000C814(uint64_t a1)
{
  v1 = *(a1 + 32);
  v4 = @"buttons";
  v5 = v1;
  v2 = [NSDictionary dictionaryWithObjects:&v5 forKeys:&v4 count:1];

  return v2;
}

id sub_10000CC08(uint64_t a1)
{
  v1 = *(a1 + 32);
  v4 = @"proximity";
  v5 = v1;
  v2 = [NSDictionary dictionaryWithObjects:&v5 forKeys:&v4 count:1];

  return v2;
}

void sub_10000D768(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10000D78C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id sub_10000D948(uint64_t a1)
{
  v1 = *(a1 + 32);
  v4 = @"inertial";
  v5 = v1;
  v2 = [NSDictionary dictionaryWithObjects:&v5 forKeys:&v4 count:1];

  return v2;
}

id sub_10000DC74(uint64_t a1)
{
  v4 = @"audio";
  v1 = [*(a1 + 32) description];
  v5 = v1;
  v2 = [NSDictionary dictionaryWithObjects:&v5 forKeys:&v4 count:1];

  return v2;
}

void sub_10000F210(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v8 = 0u;
    v9 = 0u;
    v6 = 0u;
    v7 = 0u;
    v5 = 512;
    if ([*(a1 + 32) productID] == 614)
    {
      v3 = 207;
    }

    else
    {
      v3 = 188;
    }

    if (![WeakRetained getReport:&v6 reportLength:&v5 reportID:v3 reportType:2 keyholeID:240])
    {
      [WeakRetained handleDeviceManagementData:&v6 dataLength:v5];
    }

    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v8 = 0u;
    v9 = 0u;
    v6 = 0u;
    v7 = 0u;
    v5 = 512;
    if ([*(a1 + 32) productID] == 614)
    {
      v4 = 206;
    }

    else
    {
      v4 = 187;
    }

    if (![WeakRetained getReport:&v6 reportLength:&v5 reportID:v4 reportType:2 keyholeID:240])
    {
      [WeakRetained handleDeviceManagementData:&v6 dataLength:v5];
    }
  }
}

void sub_10000F578(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained doapAudioStart];
    v5 = dispatch_time(0, 10000000000);
    v6 = dispatch_semaphore_wait(v4, v5);

    if (v6)
    {
      if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
      {
        sub_100071CCC();
      }

      v7 = [NSString stringWithFormat:@"Timed out after %lld seconds waiting to start Siri", 10];
      v16 = NSLocalizedDescriptionKey;
      v17 = v7;
      v8 = [NSDictionary dictionaryWithObjects:&v17 forKeys:&v16 count:1];
      v9 = [NSError errorWithDomain:NSMachErrorDomain code:-536870186 userInfo:v8];

      (*(*(a1 + 32) + 16))();
      v10 = v3;
      objc_sync_enter(v10);
      v11 = objc_alloc_init(NSMutableArray);
      [v10 setAudioBuffer:v11];

      objc_sync_exit(v10);
    }

    else
    {
      v12 = [v3 queue];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10000F7D8;
      block[3] = &unk_1000BD478;
      objc_copyWeak(&v15, (a1 + 40));
      v14 = *(a1 + 32);
      dispatch_async(v12, block);

      objc_destroyWeak(&v15);
    }
  }
}

void sub_10000F7D8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = WeakRetained;
    objc_sync_enter(v4);
    v5 = dispatch_semaphore_create(0);
    [v4 setDoapAudioStop:v5];

    objc_sync_exit(v4);
    v22 = 408;
    v21 = 0;
    v6 = [v4 setReport:&v22 reportLength:2 reportID:152 reportType:2 keyholeID:240 error:&v21];
    v7 = v21;
    (*(*(a1 + 32) + 16))();
    if (v6)
    {
      if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
      {
        sub_100071D48();
      }

      v8 = v4;
      objc_sync_enter(v8);
      [v8 setDoapAudioStop:0];
      v9 = objc_alloc_init(NSMutableArray);
      [v8 setAudioBuffer:v9];

      objc_sync_exit(v8);
      v10 = [v8 doapAudioStart];
      dispatch_semaphore_signal(v10);
    }

    else
    {
      v10 = v4;
      objc_sync_enter(v10);
      v17 = 0u;
      v18 = 0u;
      v19 = 0u;
      v20 = 0u;
      v11 = [v10 audioBuffer];
      v12 = [v11 countByEnumeratingWithState:&v17 objects:v23 count:16];
      if (v12)
      {
        v13 = *v18;
        do
        {
          v14 = 0;
          do
          {
            if (*v18 != v13)
            {
              objc_enumerationMutation(v11);
            }

            v15 = *(*(&v17 + 1) + 8 * v14);
            v16 = [v10 doapAudioRelay];
            [v16 sendAudioFrame:v15];

            v14 = v14 + 1;
          }

          while (v12 != v14);
          v12 = [v11 countByEnumeratingWithState:&v17 objects:v23 count:16];
        }

        while (v12);
      }

      [v10 setAudioBuffer:0];
      objc_sync_exit(v10);
    }
  }
}

void sub_100010044(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained waitForSiriAudioToStop:*(a1 + 32)];
    WeakRetained = v3;
  }
}

void sub_100010288(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v11 = 152;
    v10 = 0;
    v4 = [WeakRetained setReport:&v11 reportLength:2 reportID:152 reportType:2 keyholeID:240 error:&v10];
    v5 = v10;
    if (v4)
    {
      if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
      {
        sub_100071E0C();
      }

      (*(*(a1 + 32) + 16))();
      v6 = [v3 doapAudioStart];
      dispatch_semaphore_signal(v6);

      v7 = v3;
      objc_sync_enter(v7);
      v8 = objc_alloc_init(NSMutableArray);
      [v7 setAudioBuffer:v8];

      objc_sync_exit(v7);
    }

    else
    {
      v9 = +[NSDate date];
      [v3 setLastAudioDate:v9];

      [v3 waitForSiriAudioToStop:*(a1 + 32)];
    }
  }
}

void sub_100010A78(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

void sub_100010AD0(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 8u);
}

void sub_100010AF0(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0xEu);
}

void sub_100010BC0()
{
  v0 = +[NSNotificationCenter defaultCenter];
  v1 = [v0 addObserverForName:NSUserDefaultsDidChangeNotification object:0 queue:0 usingBlock:&stru_1000BD4B8];

  sub_100002598();
}

void sub_100010C70(id a1)
{
  if (sub_100010B3C() || sub_100010B68() || sub_100010B94())
  {
    qword_1000DDA60 = objc_alloc_init(EndpointManager);

    _objc_release_x1();
  }
}

void sub_1000130E4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (v4)
  {
    v5 = qword_1000DDBC8;
    if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
    {
      sub_100072178(a1, v5, v4);
    }
  }
}

void sub_100013390(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x16u);
}

void sub_100013640(id a1, NSNumber *a2, HIDKeyholeUserDevice *a3, BOOL *a4)
{
  v4 = a3;
  [(HIDKeyholeUserDevice *)v4 setGetReportKeyholeID:240];
  [(HIDKeyholeUserDevice *)v4 setUseKeyholeOnGet:1];
}

void sub_100013F6C(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

BOOL sub_100013F8C()
{

  return os_log_type_enabled(v0, OS_LOG_TYPE_ERROR);
}

void sub_100017C24(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

void sub_100017D40(id a1)
{
  v1 = objc_alloc_init(GenericSiriRemoteListener);
  v2 = qword_1000DDA70;
  qword_1000DDA70 = v1;

  v3 = qword_1000DDA70;
  if (qword_1000DDA70)
  {

    [v3 setUpHidHandlers];
  }

  else if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
  {
    sub_100072B0C();
  }
}

void sub_100017F30(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(a1 + 32);
  v4 = [a3 dataValue];
  [v3 handleAudioData:v4];
}

void sub_100017F88(uint64_t a1, void *a2, int a3)
{
  v5 = a2;
  if (!a3)
  {
    v16 = qword_1000DDBC8;
    if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
    {
      v19 = 138412290;
      v20 = v5;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Destroying doapAudioRelay for GenericSiriRemote device %@", &v19, 0xCu);
    }

    v17 = *(a1 + 32);
    v6 = (a1 + 32);
    v18 = [v17 doapAudioRelay];
    [v18 invalidate];

    [*v6 setDoapAudioRelay:0];
    v12 = 4;
    goto LABEL_9;
  }

  v7 = *(a1 + 32);
  v6 = (a1 + 32);
  v8 = [v7 doapAudioRelay];

  if (!v8)
  {
    v9 = qword_1000DDBC8;
    if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
    {
      v19 = 138412290;
      v20 = v5;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Creating doapAudioRelay for GenericSiriRemote device %@", &v19, 0xCu);
    }

    v10 = +[DoAPAudioRelayHub instance];
    v11 = [v5 propertyForKey:@"PhysicalDeviceUniqueID"];
    v12 = 2;
    v13 = [v10 relayWithIdentifier:v11 deviceType:2 properties:0 codecType:7];
    [*v6 setDoapAudioRelay:v13];

    v14 = *v6;
    v15 = [*v6 doapAudioRelay];
    [v15 setDelegate:v14];

LABEL_9:
    [*v6 setState:v12];
  }
}

id sub_100018564(uint64_t a1)
{
  v4 = @"audio";
  v1 = [*(a1 + 32) description];
  v5 = v1;
  v2 = [NSDictionary dictionaryWithObjects:&v5 forKeys:&v4 count:1];

  return v2;
}

void sub_1000187A4(uint64_t a1)
{
  v2 = [*(a1 + 32) doapAudioStart];
  v3 = dispatch_time(0, 10000000000);
  v4 = dispatch_semaphore_wait(v2, v3);

  if (v4)
  {
    if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
    {
      sub_100071CCC();
    }

    v5 = [NSString stringWithFormat:@"Timed out after %lld seconds waiting to start Siri", 10];
    v13 = NSLocalizedDescriptionKey;
    v14 = v5;
    v6 = [NSDictionary dictionaryWithObjects:&v14 forKeys:&v13 count:1];
    v7 = [NSError errorWithDomain:NSMachErrorDomain code:-536870186 userInfo:v6];

    (*(*(a1 + 40) + 16))();
    v8 = *(a1 + 32);
    objc_sync_enter(v8);
    v9 = objc_alloc_init(NSMutableArray);
    [*(a1 + 32) setAudioBuffer:v9];

    objc_sync_exit(v8);
  }

  else
  {
    v10 = [*(a1 + 32) eventQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000189EC;
    block[3] = &unk_1000BD770;
    block[4] = *(a1 + 32);
    v12 = *(a1 + 40);
    dispatch_async(v10, block);
  }
}

void sub_1000189EC(uint64_t a1)
{
  v2 = dispatch_semaphore_create(0);
  [*(a1 + 32) setDoapAudioStop:v2];

  (*(*(a1 + 40) + 16))();
  v3 = *(a1 + 32);
  objc_sync_enter(v3);
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [*(a1 + 32) audioBuffer];
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = *v12;
    do
    {
      v7 = 0;
      do
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v11 + 1) + 8 * v7);
        v9 = [*(a1 + 32) doapAudioRelay];
        [v9 sendAudioFrame:v8];

        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  v10 = [*(a1 + 32) audioBuffer];
  [v10 removeAllObjects];

  [*(a1 + 32) setAudioBuffer:0];
  objc_sync_exit(v3);
}

id sub_1000192E4(uint64_t a1)
{
  v2 = +[NSDate date];
  [*(a1 + 32) setLastAudioDate:v2];

  v3 = *(a1 + 32);
  v4 = *(a1 + 40);

  return [v3 waitForSiriAudioToStop:v4];
}

void sub_10001949C(id a1)
{
  qword_1000DDA80 = objc_alloc_init(PolicyManager);

  _objc_release_x1();
}

void sub_10001A2E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class sub_10001DCFC(uint64_t a1)
{
  if (!qword_1000DDA98)
  {
    qword_1000DDA98 = _sl_dlopen();
  }

  result = objc_getClass("HKDevice");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1000DDA90 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_10001DDFC(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_1000DDA98 = result;
  return result;
}

id sub_10001E840(uint64_t a1)
{
  v2 = dispatch_time(0, 3000000000);
  if (dispatch_semaphore_wait(*(*(a1 + 32) + 48), v2))
  {
    [*(a1 + 32) sendAnalyticsEvent:@"com.apple.Multitouch.PencilHostReadyTimeout" withPayload:&off_1000C4260];
  }

  v4.receiver = *(a1 + 32);
  v4.super_class = HIDApplePencilDevice;
  return objc_msgSendSuper2(&v4, "notifyDidStart");
}

id sub_10001E948(uint64_t a1)
{
  v2.receiver = *(a1 + 32);
  v2.super_class = HIDApplePencilDevice;
  return objc_msgSendSuper2(&v2, "notifyDidStop");
}

id sub_10001ED10(uint64_t a1, void *a2)
{
  result = kdebug_trace();
  if (a2)
  {

    return [a2 mtWillPowerOn];
  }

  return result;
}

void sub_10001F594(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

BOOL sub_10001F5B4()
{

  return os_log_type_enabled(v0, OS_LOG_TYPE_ERROR);
}

void sub_10002477C(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x22u);
}

void sub_100024CD0(uint64_t a1)
{
  if ([*(a1 + 32) state] == 1)
  {
    [*(a1 + 32) setState:2];
  }

  v2 = [*(a1 + 32) service];
  [v2 hidDeviceDidStart];
}

void sub_100024DB0(uint64_t a1)
{
  [*(a1 + 32) setState:4];
  v2 = [*(a1 + 32) service];
  [v2 hidDeviceDidStop];
}

void sub_100024E80(uint64_t a1)
{
  v1 = [*(a1 + 32) service];
  [v1 hidDeviceDesiredConnectionParametersDidChange];
}

void sub_10002569C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) firstObject];
  [v2 respondToRequest:v3 withResult:*(a1 + 56)];

  v4 = *(a1 + 48);
  if (v4)
  {
    v5 = *(a1 + 32);
    v7 = [*(a1 + 40) firstObject];
    v6 = [v7 central];
    [v5 updateDataSource:v4 central:v6];
  }
}

void sub_10002627C(id *a1)
{
  v2 = a1[4];
  v5 = [a1[5] data];
  v3 = [a1[4] notificationSourceCharacteristic];
  v4 = [a1[6] allObjects];
  [v2 updateValue:v5 forCharacteristic:v3 onSubscribedCentrals:v4];
}

void sub_100026C84(uint64_t a1)
{
  v2 = [*(a1 + 32) activeCentrals];
  [v2 addObject:*(a1 + 40)];

  v4 = [NSNumber numberWithUnsignedInt:*(a1 + 48)];
  v3 = [*(a1 + 32) activeCentralsInterestedCategories];
  [v3 setObject:v4 forKeyedSubscript:*(a1 + 40)];
}

void sub_100026D14(uint64_t a1)
{
  if ([*(a1 + 32) hasTag:@"ANCSAuthorized"])
  {
    v2 = [*(a1 + 40) activeCentrals];
    [v2 addObject:*(a1 + 32)];

    v3 = [NSNumber numberWithUnsignedInt:*(a1 + 48)];
    v4 = [*(a1 + 40) activeCentralsInterestedCategories];
    [v4 setObject:v3 forKeyedSubscript:*(a1 + 32)];

    v5 = [*(a1 + 40) alertMap];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100026E40;
    v8[3] = &unk_1000BD8F8;
    v10 = 5;
    v7 = *(a1 + 32);
    v6 = v7.i64[0];
    v9 = vextq_s8(v7, v7, 8uLL);
    [v5 enumerateKeysAndObjectsUsingBlock:v8];
  }
}

void sub_100026E40(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(a1 + 48);
  v4 = *(a1 + 32);
  v7 = *(a1 + 40);
  v5 = a3;
  v6 = [NSArray arrayWithObjects:&v7 count:1];
  [v4 updateNotificationSource:0 notification:v5 sourceFlags:v3 centrals:{v6, v7}];
}

id sub_100027118(uint64_t a1)
{
  [*(a1 + 32) setActiveCentrals:0];
  v2 = *(a1 + 32);

  return [v2 setActiveCentralsInterestedCategories:0];
}

void sub_10002715C(uint64_t a1)
{
  v2 = [*(a1 + 32) activeCentrals];
  [v2 removeObject:*(a1 + 40)];

  v3 = [*(a1 + 32) activeCentralsInterestedCategories];
  [v3 removeObjectForKey:*(a1 + 40)];
}

void sub_100027288(uint64_t a1)
{
  if (*(a1 + 48) == 1)
  {
    v2 = [*(a1 + 32) hasTag:@"IsHearingAid"];
    v3 = [*(a1 + 40) activeCentrals];
    [v3 addObject:*(a1 + 32)];

    if (v2)
    {
      v4 = 4110;
    }

    else
    {
      v4 = 0xFFFFLL;
    }

    v5 = [NSNumber numberWithUnsignedInt:v4];
    v6 = [*(a1 + 40) activeCentralsInterestedCategories];
    [v6 setObject:v5 forKeyedSubscript:*(a1 + 32)];

    v7 = qword_1000DDBC8;
    if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 32);
      v9 = v7;
      v10 = [v8 identifier];
      v11 = *(a1 + 48);
      v22 = 138412802;
      v23 = v10;
      v24 = 1024;
      v25 = v11;
      v26 = 1024;
      LODWORD(v27) = v4;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Central %@ ancsAuthorization changed to %d, interestedCategory %x", &v22, 0x18u);
    }
  }

  else
  {
    v12 = [*(a1 + 40) activeCentrals];
    [v12 removeObject:*(a1 + 32)];

    v13 = [*(a1 + 40) activeCentralsInterestedCategories];
    [v13 removeObjectForKey:*(a1 + 32)];
  }

  v14 = qword_1000DDBC8;
  if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
  {
    v15 = *(a1 + 48);
    if (*(a1 + 48))
    {
      v16 = @"adding";
    }

    else
    {
      v16 = @"removing";
    }

    v18 = *(a1 + 32);
    v17 = *(a1 + 40);
    v19 = v14;
    v20 = [v17 activeCentrals];
    v21 = [v20 count];
    v22 = 138413058;
    v23 = v18;
    v24 = 1024;
    v25 = v15;
    v26 = 2112;
    v27 = v16;
    v28 = 2048;
    v29 = v21;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Central %@ ancsAuthorization changed to %d. Active centrals after %@ %ld", &v22, 0x26u);
  }
}

uint64_t start(int a1, char *const *a2)
{
  signal(15, 1);
  _set_user_dir_suffix();
  v4 = dispatch_source_create(&_dispatch_source_type_signal, 0xFuLL, 0, &_dispatch_main_q);
  dispatch_source_set_event_handler_f(v4, sub_100028490);
  dispatch_resume(v4);
  v5 = 0;
  do
  {
    v6 = v5;
    v7 = getopt(a1, a2, "c");
    v5 = 1;
  }

  while (v7 == 99);
  if (v7 == -1)
  {
    v8 = optind;
    sub_100038BA0("BTLEServer");
    sub_100010BC0();
    if (v6)
    {
      v9 = +[NSMutableArray array];
      if (a1 != v8)
      {
        v10 = v8 - a1;
        v11 = &a2[v8];
        do
        {
          v12 = *v11++;
          v13 = [NSString stringWithUTF8String:v12];
          v14 = [[NSUUID alloc] initWithUUIDString:v13];
          [v9 addObject:v14];
        }

        while (!__CFADD__(v10++, 1));
      }

      v16 = +[ConnectionManager instance];
      [v16 connectAlways:v9];
    }

    else
    {
      v18 = +[BTLEXpcServer instance];
      v19 = +[DoAPAudioRelayHub instance];
      v20 = +[GenericSiriRemoteListener instance];
      v21 = +[LoggingManager instance];
      if (!sub_100010B10())
      {
        DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
        CFNotificationCenterAddObserver(DarwinNotifyCenter, 0, sub_1000284F0, @"com.apple.language.changed", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
      }
    }

    xpc_set_event_stream_handler("com.apple.notifyd.matching", &_dispatch_main_q, &stru_1000BDA00);

    if (+[FitnessDeviceManager shouldRestartCollecting])
    {
      v23 = +[FitnessDeviceManager instance];
      [v23 registerWithHealthKit:1];

      v24 = +[FitnessDeviceManager instance];
      [v24 loadCollectionState];
    }

    v25 = +[NSRunLoop currentRunLoop];
    [v25 run];

    v17 = 0;
  }

  else
  {
    v17 = 1;
  }

  return v17;
}

void sub_100028490()
{
  v0 = qword_1000DDBC8;
  if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&_mh_execute_header, v0, OS_LOG_TYPE_DEFAULT, "SIGTERM received, exiting", v1, 2u);
  }

  exit(0);
}

void sub_1000284F0()
{
  v0 = qword_1000DDBC8;
  if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&_mh_execute_header, v0, OS_LOG_TYPE_DEFAULT, "Language did change, exiting", v1, 2u);
  }

  exit(1);
}

void sub_100028594(id a1)
{
  qword_1000DDAA0 = objc_alloc_init(CattManager);

  _objc_release_x1();
}

void sub_1000287CC(uint64_t a1, void *a2)
{
  v3 = [a2 firstObject];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 identifier];
    if ([v5 isEqual:*(a1 + 32)])
    {
      v6 = [v4 hasTag:@"_CATT_"];

      if (v6)
      {
        v7 = qword_1000DDBC8;
        if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
        {
          v8 = *(a1 + 32);
          v9 = v7;
          v10 = [v8 UUIDString];
          v13 = 138412290;
          v14 = v10;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Battery Service device '%@' has _CATT_ tag, registering services", &v13, 0xCu);
        }

        v11 = +[CattManager instance];
        [v11 registerServices];

        v12 = +[CattManager instance];
        [v12 setOpportunisticConnection:v4];
      }
    }

    else
    {
    }
  }
}

void sub_10002A05C(id a1, NSNumber *a2, HIDKeyholeUserDevice *a3, BOOL *a4)
{
  v4 = a3;
  [(HIDKeyholeUserDevice *)v4 setGetReportKeyholeID:240];
  [(HIDKeyholeUserDevice *)v4 setUseKeyholeOnGet:1];
}

uint64_t sub_10002A8C0(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(a1 + 32);
  v4 = a3;
  v5 = [NSUUID alloc];
  bytes = xpc_uuid_get_bytes(v4);

  v7 = [v5 initWithUUIDBytes:bytes];
  [v3 addObject:v7];

  return 1;
}

uint64_t sub_10002C680(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = [NSString stringWithUTF8String:a2];
  v7 = a1[5];
  v8 = *(*(a1[4] + 8) + 24);
  v9 = *(v7 + 8 * v8);
  *(v7 + 8 * v8) = v6;

  v10 = sub_10002C72C(v5);

  v11 = a1[6];
  v12 = *(*(a1[4] + 8) + 24);
  v13 = *(v11 + 8 * v12);
  *(v11 + 8 * v12) = v10;

  ++*(*(a1[4] + 8) + 24);
  return 1;
}

__CFString *sub_10002C72C(void *a1)
{
  v1 = a1;
  type = xpc_get_type(v1);
  if (type == &_xpc_type_int64)
  {
    v4 = [NSNumber numberWithLongLong:xpc_int64_get_value(v1)];
LABEL_26:
    v3 = v4;
    goto LABEL_27;
  }

  if (type == &_xpc_type_uint64)
  {
    v4 = [NSNumber numberWithUnsignedLongLong:xpc_uint64_get_value(v1)];
    goto LABEL_26;
  }

  if (type == &_xpc_type_BOOL)
  {
    value = xpc_BOOL_get_value(v1);
    v6 = &__kCFBooleanFalse;
    if (value)
    {
      v6 = &__kCFBooleanTrue;
    }

    v4 = v6;
    goto LABEL_26;
  }

  if (type != &_xpc_type_string)
  {
    if (type == &_xpc_type_data)
    {
      v10 = [NSData alloc];
      bytes_ptr = xpc_data_get_bytes_ptr(v1);
      v4 = [v10 initWithBytes:bytes_ptr length:xpc_data_get_length(v1)];
    }

    else if (type == &_xpc_type_uuid)
    {
      v4 = [[NSUUID alloc] initWithUUIDBytes:xpc_uuid_get_bytes(v1)];
    }

    else if (type == &_xpc_type_array)
    {
      v4 = sub_10002CEA4(v1);
    }

    else if (type == &_xpc_type_dictionary)
    {
      v4 = sub_10002CFF4(v1);
    }

    else if (type == &_xpc_type_fd)
    {
      v4 = [NSNumber numberWithInt:xpc_fd_dup(v1)];
    }

    else
    {
      if (type != &_xpc_type_double)
      {
        NSLog(@"Unknown XPC type: %p", type);
        v3 = 0;
        goto LABEL_27;
      }

      v4 = [NSNumber numberWithDouble:xpc_double_get_value(v1)];
    }

    goto LABEL_26;
  }

  v7 = [NSString stringWithUTF8String:xpc_string_get_string_ptr(v1)];
  v8 = v7;
  v9 = &stru_1000BEA00;
  if (v7)
  {
    v9 = v7;
  }

  v3 = v9;

LABEL_27:

  return v3;
}

id sub_10002CEA4(void *a1)
{
  v1 = a1;
  count = xpc_array_get_count(v1);
  v3 = 8 * count;
  __chkstk_darwin();
  bzero(applier - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v3);
  applier[0] = _NSConcreteStackBlock;
  applier[1] = 3221225472;
  applier[2] = sub_10002D1DC;
  applier[3] = &unk_1000BDB50;
  applier[4] = applier - ((8 * count + 15) & 0xFFFFFFFFFFFFFFF0);
  xpc_array_apply(v1, applier);
  v4 = [[NSArray alloc] initWithObjects:applier - ((8 * count + 15) & 0xFFFFFFFFFFFFFFF0) count:count];
  if (count)
  {
    do
    {

      v3 -= 8;
    }

    while (v3);
  }

  return v4;
}

id sub_10002CFF4(void *a1)
{
  v1 = a1;
  count = xpc_dictionary_get_count(v1);
  v3 = 8 * count;
  __chkstk_darwin();
  v4 = applier - ((8 * count + 15) & 0xFFFFFFFFFFFFFFF0);
  bzero(v4, 8 * count);
  __chkstk_darwin();
  bzero(v4, 8 * count);
  v10[0] = 0;
  v10[1] = v10;
  v10[2] = 0x2020000000;
  v10[3] = 0;
  applier[0] = _NSConcreteStackBlock;
  applier[1] = 3221225472;
  applier[2] = sub_10002D220;
  applier[3] = &unk_1000BDB30;
  applier[4] = v10;
  applier[5] = v4;
  applier[6] = v4;
  xpc_dictionary_apply(v1, applier);
  v5 = [[NSDictionary alloc] initWithObjects:v4 forKeys:v4 count:count];
  _Block_object_dispose(v10, 8);
  if (count)
  {
    v6 = 8 * count;
    do
    {

      v6 -= 8;
    }

    while (v6);
    v7 = v4 - 8;
    do
    {

      v3 -= 8;
    }

    while (v3);
  }

  return v5;
}

uint64_t sub_10002D1DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_10002C72C(a3);
  v6 = *(a1 + 32);
  v7 = *(v6 + 8 * a2);
  *(v6 + 8 * a2) = v5;

  return 1;
}

uint64_t sub_10002D220(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = [NSString stringWithUTF8String:a2];
  v7 = a1[5];
  v8 = *(*(a1[4] + 8) + 24);
  v9 = *(v7 + 8 * v8);
  *(v7 + 8 * v8) = v6;

  v10 = sub_10002C72C(v5);

  v11 = a1[6];
  v12 = *(*(a1[4] + 8) + 24);
  v13 = *(v11 + 8 * v12);
  *(v11 + 8 * v12) = v10;

  ++*(*(a1[4] + 8) + 24);
  return 1;
}

void sub_10002D2CC(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

void sub_10002D6E0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = *(a1 + 32);
  v5 = a4;
  v8 = [v4 outputStream];
  v6 = [v5 bytes];
  v7 = [v5 length];

  [v8 write:v6 maxLength:v7];
}

void sub_10002F120(id a1)
{
  qword_1000DDAB8 = objc_alloc_init(DoAPAudioRelayHub);

  _objc_release_x1();
}

void sub_10002F7F8(id a1, OS_xpc_object *a2)
{
  v2 = qword_1000DDBC8;
  if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "DoAPAudioRelayHub - Event handler fired for previously torn down siri XPC connection", v3, 2u);
  }
}

void sub_10002F86C(id a1, OS_xpc_object *a2)
{
  v2 = qword_1000DDBC8;
  if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "DoAPAudioRelayHub - Event handler fired for previously torn down sound sensor XPC connection", v3, 2u);
  }
}

void sub_10003238C(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = a2;
    v4 = objc_alloc_init(NSKeyedArchiver);
    [v4 encodeObject:v3 forKey:@"kMsgArgError"];

    v7 = @"kMsgArgError";
    v5 = [v4 encodedData];
    v8 = v5;
    v6 = [NSDictionary dictionaryWithObjects:&v8 forKeys:&v7 count:1];
  }

  else
  {
    v6 = 0;
  }

  [*(a1 + 32) sendMsg:"TransportDidStart" args:v6];
}

void sub_1000324EC(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = a2;
    v4 = objc_alloc_init(NSKeyedArchiver);
    [v4 encodeObject:v3 forKey:@"kMsgArgError"];

    v7 = @"kMsgArgError";
    v5 = [v4 encodedData];
    v8 = v5;
    v6 = [NSDictionary dictionaryWithObjects:&v8 forKeys:&v7 count:1];
  }

  else
  {
    v6 = 0;
  }

  [*(a1 + 32) sendMsg:"TransportDidStop" args:v6];
}

void sub_10003293C(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 2u);
}

void sub_100032AE4(id a1)
{
  qword_1000DDAC8 = objc_opt_new();

  _objc_release_x1();
}

void sub_1000335A4(uint64_t a1)
{
  v2 = [NSTimer scheduledTimerWithTimeInterval:*(a1 + 32) target:"logRetrievalComplete" selector:0 userInfo:0 repeats:480.0];
  v3 = *(a1 + 32);
  v4 = *(v3 + 8);
  *(v3 + 8) = v2;

  v5 = +[UARPServiceUARPControllerManager instance];
  [v5 startTapToRadar];
}

BOOL sub_1000339F8(id a1, NSURL *a2, NSError *a3)
{
  v4 = a2;
  v5 = a3;
  if (v5)
  {
    v6 = qword_1000DDBC8;
    if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
    {
      sub_1000756AC(v6, v5, v4);
    }
  }

  return 1;
}

void sub_100033C7C(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void sub_100033CDC(id a1)
{
  qword_1000DDAD8 = objc_alloc_init(ConnectionManager);

  _objc_release_x1();
}

id sub_100036EEC(uint64_t a1, void *a2)
{
  v3 = [a2 identifier];
  v4 = [v3 UUIDString];
  v5 = [*(a1 + 32) identifier];
  v6 = [v5 UUIDString];
  v7 = [v4 isEqual:v6];

  return v7;
}

uint64_t sub_100038BA0(char *category)
{
  qword_1000DDBC8 = os_log_create("com.apple.bluetooth", category);

  return _objc_release_x1();
}

void sub_10003C890(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10003C8A8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10003C8C0(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v10 = a3;
  v8 = [a2 UUID];
  v9 = [v8 isEqual:*(a1 + 32)];

  if (v9)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
    *a4 = 1;
  }
}

void sub_10003CC64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10003CC7C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (([v6 isStarted] & 1) == 0)
  {
    v7 = [v6 priority];
    if (v7 >= [*(a1 + 32) startPriority])
    {
      *(*(*(a1 + 40) + 8) + 24) = 1;
      v8 = [v6 priority];
      if (v8 == [*(a1 + 32) startPriority])
      {
        v9 = qword_1000DDBC8;
        if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
        {
          v10 = v9;
          v11 = [v5 UUID];
          v12 = [*(a1 + 32) peripheral];
          v13 = [v12 name];
          v15 = 138412546;
          v16 = v11;
          v17 = 2112;
          v18 = v13;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Starting service %@ on peripheral %@", &v15, 0x16u);
        }

        v14 = [*(a1 + 32) startingClientServices];
        [v14 addObject:v6];

        [v6 start];
      }
    }
  }
}

id sub_10003D700(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  result = [a3 isPrimary];
  if (result)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a4 = 1;
  }

  return result;
}

void sub_10003E488(id a1)
{
  qword_1000DDAF0 = objc_alloc_init(SDRDiagnosticReporter);

  _objc_release_x1();
}

void sub_10003E4C4(id a1, NSDictionary *a2)
{
  v2 = a2;
  v3 = qword_1000DDBC8;
  if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138412290;
    v5 = v2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Response from DiagnosticReporter - %@", &v4, 0xCu);
  }
}

void sub_1000407E4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  [v4 setIsValid:0];
  v5 = *(a1 + 32);
  v6 = [NSError errorWithDomain:CBErrorDomain code:3 userInfo:0];
  [v5 signalCommandCondition:v4 error:v6];
}

void sub_100040B38(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100040B58(uint64_t a1)
{
  v2 = objc_loadWeakRetained((a1 + 32));
  v1 = [v2 systemMonitor];
  [v2 screenStateChanged:{objc_msgSend(v1, "screenOn")}];
}

uint64_t sub_1000424E0(uint64_t a1)
{
  v2 = [*(a1 + 32) pmService];
  v3 = *(a1 + 40);

  return IOAllowPowerChange(v2, v3);
}

void sub_1000428B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000428CC(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v7 = a2;
  if (![a3 type] && (objc_msgSend(v7, "isNotifying") & 1) == 0)
  {
    *(*(*(a1 + 32) + 8) + 24) = 0;
    *a4 = 1;
  }
}

void sub_100042AD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100042AF8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100042B10(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v9 = a2;
  v8 = a3;
  if (*(a1 + 40) == [v8 ID] && *(a1 + 44) == objc_msgSend(v8, "type"))
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    *a4 = 1;
  }
}

void sub_100042E50(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0x12u);
}

void sub_100043214(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained lock];
  [v3 lock];

  v4 = objc_loadWeakRetained((a1 + 40));
  v5 = [v4 state];

  v6 = objc_loadWeakRetained((a1 + 40));
  v7 = [v6 pending];

  v8 = objc_loadWeakRetained((a1 + 40));
  [v8 setPending:0];

  v9 = objc_loadWeakRetained((a1 + 40));
  v10 = [v9 lock];
  [v10 unlock];

  if (v7)
  {
    v11 = objc_loadWeakRetained((*(a1 + 32) + 16));
    [v11 chargerStateChanged:v5];
  }
}

void sub_100043728(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 16));
  [WeakRetained pairingInfoCompleted];
}

void sub_100045580(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_debug_impl(a1, log, OS_LOG_TYPE_DEBUG, a4, va, 0x16u);
}

void sub_1000464B0(uint64_t a1)
{
  v1 = [*(a1 + 32) hidBluetoothDevice];
  [v1 stop];
}

void sub_10004754C(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x16u);
}

void sub_10004A45C(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

void sub_10004A4C0(id a1)
{
  if (!sub_100010B10())
  {
    qword_1000DDB18 = objc_alloc_init(ServerServiceManager);

    _objc_release_x1();
  }
}

void sub_10004B79C(uint64_t a1, void *a2, void *a3)
{
  v8 = a3;
  v5 = [a2 UUID];
  v6 = [v5 UUIDString];
  v7 = [v6 isEqualToString:CBUUIDAppleNotificationCenterServiceString];

  if (v7)
  {
    [v8 peripheralManager:*(a1 + 32) central:*(a1 + 40) didUpdateANCSAuthorization:*(a1 + 48)];
  }
}

void sub_10004BEA8(uint64_t a1)
{
  dispatch_group_wait(*(*(a1 + 32) + 40), 0xFFFFFFFFFFFFFFFFLL);
  v2 = qword_1000DDBC8;
  if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Stop DoAPSoundSensorRemoteDevice - Queue is clean", v7, 2u);
  }

  v3 = *(a1 + 32);
  v4 = *(v3 + 40);
  *(v3 + 40) = 0;

  v5 = *(a1 + 32);
  v6 = *(v5 + 32);
  *(v5 + 32) = 0;
}

id sub_10004C320(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  if (v1)
  {
    [v1 codec];
    v3 = v5;
  }

  else
  {
    v3 = 0;
  }

  return [v2 selectCodec:v3];
}

id sub_10004C370(uint64_t a1)
{
  v2.receiver = *(a1 + 32);
  v2.super_class = DoAPSoundSensorRemoteDevice;
  return objc_msgSendSuper2(&v2, "notifyDidStart");
}

id sub_10004CC34(uint64_t a1)
{
  v2 = [*(a1 + 32) doapAudioStop];

  if (!v2)
  {
    v3 = dispatch_semaphore_create(0);
    [*(a1 + 32) setDoapAudioStop:v3];
  }

  v4 = *(a1 + 32);

  return [v4 waitForSoundSensorAudioToStop:&stru_1000BE1B8];
}

void sub_10004D550(id a1, NSNumber *a2, HIDKeyholeUserDevice *a3, BOOL *a4)
{
  v4 = a3;
  [(HIDKeyholeUserDevice *)v4 setGetReportKeyholeID:240];
  [(HIDKeyholeUserDevice *)v4 setUseKeyholeOnGet:1];
}

uint64_t *sub_10004F810@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 8) = a2;
  v3 = *result;
  return result;
}

void sub_10004FC18(id a1)
{
  qword_1000DDB28 = objc_alloc_init(BTLEXpcServer);

  _objc_release_x1();
}

void sub_1000510A4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (v4)
  {
    v5 = qword_1000DDBC8;
    if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
    {
      sub_100072178(a1, v5, v4);
    }
  }
}

void sub_100051410(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x1Cu);
}

void sub_100051634(id a1)
{
  qword_1000DDB40 = objc_alloc_init(FitnessDeviceManager);

  _objc_release_x1();
}

void sub_1000521FC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000523A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100052540(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100055998(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000559B4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained stopHeartRateScanTimer];
}

void sub_100055BA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100055BBC(id a1, NSError *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = qword_1000DDBC8;
    if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
    {
      sub_10007978C(v3);
    }
  }
}

void sub_100055CD0(id a1, NSError *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = qword_1000DDBC8;
    if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
    {
      sub_1000798AC(v3);
    }
  }
}

void sub_10005615C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100056180(id *a1, void *a2)
{
  v3 = a2;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100056260;
  v5[3] = &unk_1000BE2F8;
  objc_copyWeak(&v9, a1 + 6);
  v6 = v3;
  v7 = a1[4];
  v8 = a1[5];
  v4 = v3;
  dispatch_async(&_dispatch_main_q, v5);

  objc_destroyWeak(&v9);
}

void sub_100056260(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v23 = a1;
  obj = *(a1 + 32);
  v3 = [obj countByEnumeratingWithState:&v28 objects:v37 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v29;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v29 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v28 + 1) + 8 * i);
        v8 = WeakRetained[3];
        v9 = [v7 identifier];
        v36 = v9;
        v10 = [NSArray arrayWithObjects:&v36 count:1];
        v11 = [v8 retrievePeripheralsWithIdentifiers:v10];
        v12 = [v11 firstObject];

        if (v12)
        {
          [v12 tag:HKQuantityTypeIdentifierHeartRate];
          [v12 setCustomProperty:@"Fitness" value:@"1"];
          v13 = WeakRetained[4];
          v14 = [v7 identifier];
          v25[0] = _NSConcreteStackBlock;
          v25[1] = 3221225472;
          v25[2] = sub_1000565A4;
          v25[3] = &unk_1000BE2D0;
          v25[4] = v7;
          v26 = v12;
          v27 = WeakRetained;
          [v13 getEnabledStatusForPeripheral:v14 withCompletion:v25];
        }

        else
        {
          v15 = qword_1000DDBC8;
          if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
          {
            sub_10007993C(v34, v15, v7, &v35);
          }
        }
      }

      v4 = [obj countByEnumeratingWithState:&v28 objects:v37 count:16];
    }

    while (v4);
  }

  v16 = [*(v23 + 40) mutableCopy];
  [v16 setObject:@"1" forKey:@"HRM_MIGRATION_COMPLETE"];
  v17 = *(v23 + 48);
  v18 = [v16 copy];
  [v17 setPersistentDomain:v18 forName:@"com.apple.BTLEServer"];

  v19 = qword_1000DDBC8;
  if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
  {
    v20 = *(v23 + 32);
    v21 = v19;
    v22 = [v20 count];
    *buf = 134217984;
    v33 = v22;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "HRM migration complete. Migrated %lu devices", buf, 0xCu);
  }
}

void sub_1000565A4(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    v6 = qword_1000DDBC8;
    if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
    {
      sub_1000799D8(a1, v6);
    }

    v7 = *(a1 + 40);
    v8 = @"1";
  }

  else
  {
    v7 = *(a1 + 40);
    if (a2)
    {
      v8 = @"1";
    }

    else
    {
      v8 = @"0";
    }
  }

  [v7 setCustomProperty:@"UpdateHealth" value:v8];
  v9 = *(a1 + 32);
  [*(*(a1 + 48) + 32) removeHealthServicePairing:? withCompletion:?];
  if ([*(*(a1 + 48) + 72) count])
  {
    [*(a1 + 48) updateScan];
  }
}

void sub_1000566C8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = qword_1000DDBC8;
  if (v4)
  {
    if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
    {
      sub_100079A80(a1, v5);
    }
  }

  else if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 32);
    v7 = v5;
    v8 = [v6 identifier];
    v9 = [v8 UUIDString];
    v10 = 138412290;
    v11 = v9;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Successfully migrated HRM device from HK to BT for identifier %@", &v10, 0xCu);
  }
}

Class sub_1000569C4(uint64_t a1)
{
  if (!qword_1000DDB58)
  {
    qword_1000DDB58 = _sl_dlopen();
  }

  result = objc_getClass("HLEHeartRateCollectionObserver");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1000DDB50 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_100056AC4(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_1000DDB58 = result;
  return result;
}

Class sub_100056B38(uint64_t a1)
{
  sub_100056B88();
  result = objc_getClass("HKActiveDataCollectionObserver");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1000DDB60 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_100056B88()
{
  if (!qword_1000DDB68)
  {
    qword_1000DDB68 = _sl_dlopen();
  }
}

uint64_t sub_100056C58(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_1000DDB68 = result;
  return result;
}

Class sub_100056CCC(uint64_t a1)
{
  sub_100056B88();
  result = objc_getClass("HKHealthStore");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1000DDB70 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class sub_100056D1C(uint64_t a1)
{
  sub_100056B88();
  result = objc_getClass("HKDataCollector");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1000DDB78 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class sub_100056D6C(uint64_t a1)
{
  sub_100056B88();
  result = objc_getClass("HKUnit");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1000DDB80 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class sub_100056DBC(uint64_t a1)
{
  if (!qword_1000DDB90)
  {
    qword_1000DDB90 = _sl_dlopen();
  }

  result = objc_getClass("AAAudioRoutingControl");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1000DDB88 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_100056EBC(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_1000DDB90 = result;
  return result;
}

void sub_100057000(id a1)
{
  v1 = qword_1000DDBC8;
  if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "Creating UARPServiceUARPControllerManager", v4, 2u);
  }

  v2 = objc_opt_new();
  v3 = qword_1000DDB98;
  qword_1000DDB98 = v2;
}

void sub_100057AC8(uint64_t a1)
{
  v2 = *(a1 + 32);
  v4 = [*(a1 + 40) uuid];
  v3 = [v2 uarpServiceForAccessoryUuid:v4];
  [v3 sendData:*(a1 + 48)];
}

void sub_1000583D4(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0x16u);
}

void sub_100059470(uint64_t a1)
{
  dispatch_group_wait(*(*(a1 + 32) + 40), 0xFFFFFFFFFFFFFFFFLL);
  v2 = qword_1000DDBC8;
  if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Stop DoAPSiriRemoteDevice - Queue is clean", v7, 2u);
  }

  v3 = *(a1 + 32);
  v4 = *(v3 + 40);
  *(v3 + 40) = 0;

  v5 = *(a1 + 32);
  v6 = *(v5 + 32);
  *(v5 + 32) = 0;
}

id sub_10005992C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  if (v1)
  {
    [v1 codec];
    v3 = v5;
  }

  else
  {
    v3 = 0;
  }

  return [v2 selectCodec:v3];
}

id sub_10005997C(uint64_t a1)
{
  v2.receiver = *(a1 + 32);
  v2.super_class = DoAPSiriRemoteDevice;
  return objc_msgSendSuper2(&v2, "notifyDidStart");
}

void sub_100059F44(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3 && ([v3 error], v5 = objc_claimAutoreleasedReturnValue(), v5, !v5))
  {
    v8 = *(a1 + 32);
    objc_sync_enter(v8);
    if ([*(a1 + 32) state] == 2)
    {
      v9 = qword_1000DDBC8;
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = [*(a1 + 32) peripheral];
        v11 = [v10 identifier];
        v12 = [v11 UUIDString];
        v17 = 138477827;
        v18 = v12;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "DoAPSiri - activateSiri: SiriActivation success for ID %{private}@ received while Active", &v17, 0xCu);
      }
    }

    else if ([*(a1 + 32) state] == 3)
    {
      v13 = qword_1000DDBC8;
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = [*(a1 + 32) peripheral];
        v15 = [v14 identifier];
        v16 = [v15 UUIDString];
        v17 = 138477827;
        v18 = v16;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "DoAPSiri - activateSiri: SiriActivation succeeded for ID %{private}@", &v17, 0xCu);
      }

      [*(a1 + 32) doapStateSet:4];
    }

    objc_sync_exit(v8);
  }

  else
  {
    v6 = qword_1000DDBC8;
    if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
    {
      sub_10007A308(v6, v4);
    }

    if ([*(a1 + 32) state] == 5)
    {
      v7 = [*(a1 + 32) doapAudioStart];
      dispatch_semaphore_signal(v7);
    }

    [*(a1 + 32) stopStreaming:6];
    [*(a1 + 32) clearState];
  }
}

void sub_10005A35C(id a1, AFSiriActivationResult *a2)
{
  v2 = a2;
  v3 = [(AFSiriActivationResult *)v2 error];

  v4 = qword_1000DDBC8;
  if (v3)
  {
    if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
    {
      sub_10007A3B0(v4, v2);
    }
  }

  else if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "DoAPSiri - SiriCancellation success", v5, 2u);
  }
}

id sub_10005A810(uint64_t a1)
{
  v2 = [*(a1 + 32) doapAudioStop];

  if (!v2)
  {
    v3 = dispatch_semaphore_create(0);
    [*(a1 + 32) setDoapAudioStop:v3];
  }

  v4 = *(a1 + 32);

  return [v4 waitForSiriAudioToStop:&stru_1000BE438];
}

void sub_10005AF88(id a1, BOOL a2, NSError *a3)
{
  v3 = a2;
  v4 = a3;
  v5 = qword_1000DDBC8;
  if (v3)
  {
    if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "DoAPSiri - SiriMyriad Score accepted", v6, 2u);
    }
  }

  else if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
  {
    sub_10007A594();
  }
}

void sub_10005B02C(id a1, AFSiriActivationResult *a2)
{
  v2 = a2;
  v3 = qword_1000DDBC8;
  if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138412290;
    v5 = v2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "DoAPSiri - DoAP Button Press and Hold complete: %@", &v4, 0xCu);
  }
}

void sub_10005B0D8(id a1, AFSiriActivationResult *a2)
{
  v2 = a2;
  v3 = qword_1000DDBC8;
  if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138412290;
    v5 = v2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "DoAPSiri - DoAP Button Release complete: %@", &v4, 0xCu);
  }
}

void sub_10005B2A0(uint64_t a1)
{
  v2 = [*(a1 + 32) doapAudioStart];
  v3 = dispatch_time(0, 10000000000);
  v4 = dispatch_semaphore_wait(v2, v3);

  if (v4)
  {
    if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
    {
      sub_10007A640();
    }

    v5 = [NSString stringWithFormat:@"Timed out after %lld seconds waiting to start Siri", 10];
    v17 = NSLocalizedDescriptionKey;
    v18 = v5;
    v6 = [NSDictionary dictionaryWithObjects:&v18 forKeys:&v17 count:1];
    v7 = [NSError errorWithDomain:NSMachErrorDomain code:-536870186 userInfo:v6];

    (*(*(a1 + 40) + 16))();
    v8 = *(a1 + 32);
    objc_sync_enter(v8);
    v9 = [*(a1 + 32) audioBuffer];
    [v9 removeAllObjects];

    objc_sync_exit(v8);
    v10 = [*(a1 + 32) doapAudioStart];
    dispatch_semaphore_signal(v10);

    v11 = *(a1 + 32);
    objc_sync_enter(v11);
    [*(a1 + 32) doapStateSet:2];
    objc_sync_exit(v11);

    [*(a1 + 32) clearState];
  }

  else
  {
    v13 = *(a1 + 32);
    v12 = *(a1 + 40);
    v14 = *(v13 + 32);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10005B520;
    block[3] = &unk_1000BD770;
    block[4] = v13;
    v16 = v12;
    dispatch_async(v14, block);
  }
}

void sub_10005B520(uint64_t a1)
{
  v2 = dispatch_semaphore_create(0);
  v3 = (a1 + 32);
  [*(a1 + 32) setDoapAudioStop:v2];

  v4 = *(a1 + 32);
  if (v4[56] || v4[57])
  {
    (*(*(a1 + 40) + 16))();
    v5 = [*(a1 + 32) audioBuffer];

    if (v5)
    {
      v6 = *v3;
      objc_sync_enter(v6);
      v24 = 0u;
      v25 = 0u;
      v26 = 0u;
      v27 = 0u;
      v7 = [*v3 audioBuffer];
      v8 = [v7 countByEnumeratingWithState:&v24 objects:v28 count:16];
      if (v8)
      {
        v9 = *v25;
        do
        {
          for (i = 0; i != v8; i = i + 1)
          {
            if (*v25 != v9)
            {
              objc_enumerationMutation(v7);
            }

            v11 = *(*(&v24 + 1) + 8 * i);
            v12 = [*v3 doapAudioRelay];
            [v12 sendAudioFrame:v11];
          }

          v8 = [v7 countByEnumeratingWithState:&v24 objects:v28 count:16];
        }

        while (v8);
      }

      v13 = [*v3 audioBuffer];
      [v13 removeAllObjects];

      objc_sync_exit(v6);
    }

    v14 = *v3;
    objc_sync_enter(v14);
    [*v3 doapStateSet:5];
    objc_sync_exit(v14);
  }

  else
  {
    v15 = [v4 startStreaming];
    if (v15)
    {
      v16 = v15;
      v17 = qword_1000DDBC8;
      if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
      {
        sub_10007A6BC((a1 + 32), v17);
      }

      v18 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"Fail to send DoAP StartStream message - device state(%d)", [*v3 state]);
      v29 = NSLocalizedDescriptionKey;
      v30 = v18;
      v19 = [NSDictionary dictionaryWithObjects:&v30 forKeys:&v29 count:1];
      v14 = [NSError errorWithDomain:NSMachErrorDomain code:v16 userInfo:v19];

      [*v3 setDoapAudioStop:0];
      v20 = [*v3 doapAudioStart];
      dispatch_semaphore_signal(v20);
    }

    else
    {
      v14 = 0;
    }

    v21 = [*v3 audioBuffer];

    if (v21)
    {
      v22 = *v3;
      objc_sync_enter(v22);
      v23 = [*v3 audioBuffer];
      [v23 removeAllObjects];

      objc_sync_exit(v22);
    }

    (*(*(a1 + 40) + 16))();
  }
}

void sub_10005BF64(uint64_t a1)
{
  v2 = (a1 + 32);
  v3 = [*(a1 + 32) state];
  v4 = *v2;
  if (v3 == 5)
  {
    v5 = [v4 stopStreaming:0];
    if (v5)
    {
      v6 = v5;
      v7 = qword_1000DDBC8;
      if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
      {
        sub_10007A804(v2, v7);
      }

      v8 = (a1 + 32);
      v9 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"Fail to send DoAP StopStream message - device state(%d)", [*(a1 + 32) state]);
      v21 = NSLocalizedDescriptionKey;
      v22 = v9;
      v10 = [NSDictionary dictionaryWithObjects:&v22 forKeys:&v21 count:1];
      v11 = [NSError errorWithDomain:NSMachErrorDomain code:v6 userInfo:v10];

      (*(*(a1 + 40) + 16))();
      v12 = [*(a1 + 32) doapAudioStart];
      dispatch_semaphore_signal(v12);

      v13 = *v8;
      objc_sync_enter(v13);
      v14 = [*v8 audioBuffer];
      [v14 removeAllObjects];

      objc_sync_exit(v13);
    }

    else
    {
      v17 = +[NSDate date];
      [*(a1 + 32) setLastAudioDate:v17];

      v18 = *(a1 + 32);
      v19 = *(a1 + 40);

      [v18 waitForSiriAudioToStop:v19];
    }
  }

  else if ([v4 state] == 4)
  {
    [*(a1 + 32) stopStreaming:6];
    (*(*(a1 + 40) + 16))();
    obj = *(a1 + 32);
    objc_sync_enter(obj);
    v15 = [*(a1 + 32) audioBuffer];
    [v15 removeAllObjects];

    objc_sync_exit(obj);
  }

  else
  {
    v16 = *(*(a1 + 40) + 16);

    v16();
  }
}

void sub_10005DF40(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0x16u);
}

void sub_10005DF6C(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x16u);
}

void sub_10005E468(uint64_t a1, void *a2)
{
  v3 = a2;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v11 + 1) + 8 * i);
        if ([v8 showsInNotificationCenter])
        {
          v9 = *(*(a1 + 32) + 64);
          v10 = [v8 sectionID];
          [v9 requestNoticesBulletinsForSectionID:v10];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }
}

void sub_10005E6BC(uint64_t a1)
{
  v1 = [*(a1 + 32) bbObserver];
  [v1 invalidate];
}

void sub_10005F88C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 tuIncomingCallAlerts];
  v7 = [v5 objectForKey:v4];

  [*(a1 + 32) removeAlert:v7];
  v6 = [*(a1 + 32) tuIncomingCallAlerts];
  [v6 removeObjectForKey:v4];
}

void sub_10005F92C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [ANCIncomingCallAlert alloc];
  v5 = [*(a1 + 32) tuCallCenter];
  v7 = [(ANCIncomingCallAlert *)v4 initWithCall:v3 callCenter:v5];

  v6 = [*(a1 + 32) tuIncomingCallAlerts];
  [v6 setObject:v7 forKey:v3];

  [*(a1 + 32) addAlert:v7 isPreExisting:0];
}

void sub_10005F9E8(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 tuActiveCallAlerts];
  v7 = [v5 objectForKey:v4];

  [*(a1 + 32) removeAlert:v7];
  v6 = [*(a1 + 32) tuActiveCallAlerts];
  [v6 removeObjectForKey:v4];
}

void sub_10005FA88(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [ANCActiveCallAlert alloc];
  v5 = [*(a1 + 32) tuCallCenter];
  v7 = [(ANCActiveCallAlert *)v4 initWithCall:v3 callCenter:v5];

  v6 = [*(a1 + 32) tuActiveCallAlerts];
  [v6 setObject:v7 forKey:v3];

  [*(a1 + 32) addAlert:v7 isPreExisting:0];
}

void sub_10005FEC4(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 chMissedCallAlerts];
  v6 = [v4 uniqueId];
  v9 = [v5 objectForKeyedSubscript:v6];

  [*(a1 + 32) removeAlert:v9];
  v7 = [*(a1 + 32) chMissedCallAlerts];
  v8 = [v4 uniqueId];

  [v7 removeObjectForKey:v8];
}

void sub_10005FF94(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [ANCMissedCallAlert alloc];
  v5 = [*(a1 + 32) chManager];
  v6 = [*(a1 + 32) queue];
  v9 = [(ANCMissedCallAlert *)v4 initWithRecentCall:v3 manager:v5 queue:v6];

  v7 = [*(a1 + 32) chMissedCallAlerts];
  v8 = [v3 uniqueId];

  [v7 setObject:v9 forKeyedSubscript:v8];
  [*(a1 + 32) addAlert:v9 isPreExisting:*(a1 + 40)];
}

BOOL sub_100060234(id a1, VMVoicemail *a2)
{
  v2 = a2;
  if (([(VMVoicemail *)v2 isBlocked]& 1) != 0 || ([(VMVoicemail *)v2 isDeleted]& 1) != 0 || ([(VMVoicemail *)v2 isTrashed]& 1) != 0)
  {
    v3 = 0;
  }

  else
  {
    v3 = [(VMVoicemail *)v2 isUnread];
  }

  return v3;
}

void sub_100060294(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 vvVoicemailAlerts];
  v7 = [v5 objectForKey:v4];

  [*(a1 + 32) removeAlert:v7];
  v6 = [*(a1 + 32) vvVoicemailAlerts];
  [v6 removeObjectForKey:v4];
}

void sub_100060334(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [ANCVoicemailAlert alloc];
  v5 = [*(a1 + 32) vvManager];
  v6 = [*(a1 + 32) lazyContactStore];
  v7 = [*(a1 + 32) queue];
  v9 = [(ANCVoicemailAlert *)v4 initWithVoicemail:v3 manager:v5 contactStore:v6 queue:v7];

  v8 = [*(a1 + 32) vvVoicemailAlerts];
  [v8 setObject:v9 forKey:v3];

  [*(a1 + 32) addAlert:v9 isPreExisting:*(a1 + 40)];
}

void sub_100064D40(uint64_t a1)
{
  objc_initWeak(&location, *(a1 + 32));
  v2 = [NSNumber numberWithUnsignedChar:*(a1 + 40)];
  v3 = objc_loadWeakRetained(&location);
  v4 = [v3 powerSourceDetails];
  [v4 setObject:v2 forKeyedSubscript:@"Current Capacity"];

  objc_destroyWeak(&location);
}

void sub_100064DE4(uint64_t a1)
{
  objc_initWeak(&location, *(a1 + 32));
  v2 = [*(a1 + 40) powerState];
  v3 = [v2 batteryPresent];

  v4 = [NSNumber numberWithBool:v3];
  v5 = objc_loadWeakRetained(&location);
  v6 = [v5 powerSourceDetails];
  [v6 setObject:v4 forKeyedSubscript:@"Is Present"];

  v7 = [*(a1 + 40) powerState];
  LODWORD(v4) = [v7 batteryChargeState];

  v8 = v4 & 0xFFFFFFFD;
  v9 = objc_loadWeakRetained(&location);
  v10 = [v9 powerSourceDetails];
  v11 = v10;
  if (v8 == 1)
  {
    v12 = @"AC Power";
  }

  else
  {
    v12 = @"Battery Power";
  }

  [v10 setObject:v12 forKeyedSubscript:@"Power Source State"];

  v13 = [NSNumber numberWithInt:v8 == 1];
  v14 = objc_loadWeakRetained(&location);
  v15 = [v14 powerSourceDetails];
  [v15 setObject:v13 forKeyedSubscript:@"Is Charging"];

  objc_destroyWeak(&location);
}

void sub_100065124(uint64_t a1)
{
  objc_initWeak(&location, *(a1 + 32));
  v2 = *(a1 + 40) & 3;
  if (v2 >= 2)
  {
    if (v2 == 2)
    {
      v3 = objc_loadWeakRetained(&location);
      v4 = [v3 powerSourceDetails];
      [v4 setObject:&__kCFBooleanFalse forKeyedSubscript:@"Is Present"];
    }

    else
    {
      v3 = objc_loadWeakRetained(&location);
      v4 = [v3 powerSourceDetails];
      [v4 setObject:&__kCFBooleanTrue forKeyedSubscript:@"Is Present"];
    }
  }

  else
  {
    v3 = objc_loadWeakRetained(&location);
    v4 = [v3 powerSourceDetails];
    [v4 removeObjectForKey:@"Is Present"];
  }

  v5 = (*(a1 + 40) >> 2) & 3;
  if (v5 >= 2)
  {
    if (v5 == 2)
    {
      v6 = objc_loadWeakRetained(&location);
      v7 = [v6 powerSourceDetails];
      [v7 setObject:@"AC Power" forKeyedSubscript:@"Power Source State"];
    }

    else
    {
      v6 = objc_loadWeakRetained(&location);
      v7 = [v6 powerSourceDetails];
      [v7 setObject:@"Battery Power" forKeyedSubscript:@"Power Source State"];
    }
  }

  else
  {
    v6 = objc_loadWeakRetained(&location);
    v7 = [v6 powerSourceDetails];
    [v7 removeObjectForKey:@"Power Source State"];
  }

  v8 = (*(a1 + 40) >> 4) & 3;
  if (v8 >= 2)
  {
    if (v8 == 2)
    {
      v9 = objc_loadWeakRetained(&location);
      v10 = [v9 powerSourceDetails];
      [v10 setObject:&__kCFBooleanFalse forKeyedSubscript:@"Is Charging"];
    }

    else
    {
      v9 = objc_loadWeakRetained(&location);
      v10 = [v9 powerSourceDetails];
      [v10 setObject:&__kCFBooleanTrue forKeyedSubscript:@"Is Charging"];
    }
  }

  else
  {
    v9 = objc_loadWeakRetained(&location);
    v10 = [v9 powerSourceDetails];
    [v10 removeObjectForKey:@"Is Charging"];
  }

  objc_destroyWeak(&location);
}

void sub_1000671D0(uint64_t a1)
{
  v2 = *(a1 + 32);
  objc_sync_enter(v2);
  if ([*(a1 + 32) state] == 1)
  {
    [*(a1 + 32) doapStateSet:2];
  }

  objc_sync_exit(v2);

  v3 = [*(a1 + 32) service];
  [v3 doapDeviceDidStart];
}

void sub_1000672E0(uint64_t a1)
{
  v2 = *(a1 + 32);
  objc_sync_enter(v2);
  [*(a1 + 32) doapStateSet:8];
  objc_sync_exit(v2);

  v3 = [*(a1 + 32) service];
  [v3 doapDeviceDidStop];
}

void sub_100067DAC(id a1)
{
  v1 = objc_alloc_init(HKHealthStore);
  v2 = qword_1000DDBB0;
  qword_1000DDBB0 = v1;

  _objc_release_x1(v1, v2);
}

void sub_1000683B0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (v4)
  {
    v5 = qword_1000DDBC8;
    if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
    {
      sub_10007B980(a1, v5, v4);
    }
  }
}

void sub_100068DC8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (v4)
  {
    v5 = qword_1000DDBC8;
    if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
    {
      sub_10007BD24(a1, v5, v4);
    }
  }
}

void sub_1000699D8(uint64_t a1)
{
  v2 = +[UARPServiceUARPControllerManager instance];
  v3 = [*(a1 + 32) peripheral];
  v4 = [v3 identifier];
  [*(a1 + 32) setUarpOverAACP:{objc_msgSend(v2, "getAndRemoveFromUARPTransportDict:", v4)}];

  v5 = qword_1000DDBC8;
  if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 32);
    v7 = v5;
    LODWORD(v6) = [v6 uarpOverAACP];
    v8 = [*(a1 + 32) peripheral];
    v9 = [v8 identifier];
    v10[0] = 67109378;
    v10[1] = v6;
    v11 = 2112;
    v12 = v9;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "UARPService: setting uarpOverAACP to %u for peripheral %@", v10, 0x12u);
  }
}

void sub_10006BCB0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (v4)
  {
    v5 = qword_1000DDBC8;
    if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
    {
      sub_10007C3F0(a1, v5, v4);
    }
  }
}

void sub_10006C004(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (v4)
  {
    v5 = qword_1000DDBC8;
    if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
    {
      sub_10007C3F0(a1, v5, v4);
    }
  }
}

void sub_10006CD98(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x20u);
}

void sub_10006D3FC(uint64_t a1, const void *a2)
{
  [*(a1 + 32) supportedCommandsDidChange:a2];

  CFRelease(a2);
}

void sub_10006E3EC(uint64_t a1, const void *a2)
{
  [*(a1 + 32) supportedCommandsDidChange:a2];

  CFRelease(a2);
}

void sub_1000702F4(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0x2Eu);
}

void sub_100070314(void *a1)
{
  v2 = a1;
  v3 = [sub_100004F6C() peripheral];
  v4 = [v3 name];
  sub_100004F00();
  sub_100004F4C();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x16u);
}

void sub_1000703C4(void *a1)
{
  v2 = a1;
  v3 = [sub_100004F6C() peripheral];
  v4 = [v3 name];
  sub_100004F00();
  sub_100004F4C();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x16u);
}

void sub_100070474(void *a1)
{
  v2 = a1;
  v3 = [sub_100004F6C() peripheral];
  v4 = [v3 name];
  sub_100004F00();
  sub_100004F4C();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x16u);
}

void sub_100070524(void *a1, uint64_t a2)
{
  v4 = a1;
  v5 = [sub_100004F6C() peripheral];
  v6 = [v5 name];
  v7 = *(a2 + 89);
  sub_100004F20();
  sub_100004F4C();
  _os_log_error_impl(v8, v9, v10, v11, v12, 0x1Cu);
}

void sub_1000705E0()
{
  sub_100004F94();
  v2 = v1;
  v3 = [sub_100004F78() peripheral];
  v4 = [v3 name];
  sub_100004F00();
  sub_100004F84();
  sub_100004F5C();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x20u);
}

void sub_100070694()
{
  sub_100004F94();
  v2 = v1;
  v3 = [sub_100004F78() peripheral];
  v4 = [v3 name];
  sub_100004F00();
  sub_100004F84();
  sub_100004F5C();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x20u);
}

void sub_100070748()
{
  sub_100004F94();
  v2 = v1;
  v3 = [sub_100004F78() peripheral];
  v4 = [v3 name];
  sub_100004F00();
  sub_100004F84();
  sub_100004F5C();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x20u);
}

void sub_1000707FC(void *a1)
{
  v2 = a1;
  v3 = [sub_100004F78() peripheral];
  v4 = [v3 name];
  sub_100004F00();
  sub_100004F5C();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x1Cu);
}

void sub_1000708BC(void *a1)
{
  v2 = a1;
  v3 = [sub_100004F6C() peripheral];
  v4 = [v3 name];
  sub_100004F00();
  sub_100004F4C();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x16u);
}

void sub_10007096C(void *a1)
{
  v2 = a1;
  v3 = [sub_100004F6C() peripheral];
  v4 = [v3 name];
  sub_100004F00();
  sub_100004F4C();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x16u);
}

void sub_100070A1C()
{
  sub_100004F94();
  v3 = v2;
  v4 = [sub_100004F78() peripheral];
  v5 = [v4 name];
  v6 = *v0;
  sub_100004F20();
  sub_100004F5C();
  _os_log_error_impl(v7, v8, v9, v10, v11, 0x1Cu);
}

void sub_100070AD0(void *a1)
{
  v2 = a1;
  v3 = [sub_100004F6C() peripheral];
  v4 = [v3 name];
  sub_100004F00();
  sub_100004F4C();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x16u);
}

void sub_100070B80(void *a1)
{
  v2 = a1;
  v3 = [sub_100004F6C() peripheral];
  v4 = [v3 name];
  sub_100004F00();
  sub_100004F4C();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x16u);
}

void sub_100070C30()
{
  sub_100004F94();
  v3 = v2;
  v4 = [sub_100004F78() peripheral];
  v5 = [v4 name];
  v6 = *v0;
  sub_100004F20();
  sub_100004F5C();
  _os_log_error_impl(v7, v8, v9, v10, v11, 0x1Cu);
}

void sub_100070CF8(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 peripheral];
  v5 = [v4 name];
  sub_100008498();
  sub_1000084A4(&_mh_execute_header, v6, v7, "FitnessService - DeviceInformation ClientService not available for “%@”", v8, v9, v10, v11, v12);
}

void sub_100070DA4(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 identifier];
  sub_100008498();
  _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "createDatum for qty:%@ failed to soft link HKQuantity or HKQuantityDatum class", v5, 0xCu);
}

void sub_100070E4C(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a2;
  v7 = [v5 name];
  v8 = [*(a1 + 40) identifier];
  v9 = [a3 userInfo];
  v10 = 138412802;
  v11 = v7;
  v12 = 2112;
  v13 = v8;
  v14 = 2112;
  v15 = v9;
  _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "InsertDatums failed for “%@” - %@: %@", &v10, 0x20u);
}

void sub_100070F40(void *a1, void *a2, uint64_t a3)
{
  v5 = a1;
  v6 = [a2 peripheral];
  v7 = [v6 name];
  sub_100008498();
  v9 = 2112;
  v10 = a3;
  _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Failed to create data collector for device “%@” quantity type %@", v8, 0x16u);
}

void sub_10007100C(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 peripheral];
  v5 = [v4 name];
  sub_100008498();
  sub_1000084A4(&_mh_execute_header, v6, v7, "Could not create HKDevice for %@, could not soft load HKDevice class", v8, v9, v10, v11, v12);
}

void sub_100071100(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = qword_1000DDBC8;
  if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 134218242;
    v8 = a2;
    v9 = 2112;
    v10 = a1;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "### BatteryLevelStatus ptr is invalid %p with data: %@", &v7, 0x16u);
  }

  *a3 = 0;
}

void sub_1000711C4(uint64_t a1, void *a2)
{
  v4 = qword_1000DDBC8;
  if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    v6 = a1;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "### BatteryLevelStatus failed to convert data to ptr: %@", &v5, 0xCu);
  }

  *a2 = 0;
}

void sub_1000714D0()
{
  sub_100010AA0();
  v2 = 175;
  _os_log_debug_impl(&_mh_execute_header, v0, OS_LOG_TYPE_DEBUG, "error 0x%08X with set feature reportID 0x%02x", v1, 0xEu);
}

void sub_10007154C(void *a1, void *a2)
{
  v3 = a1;
  [a2 instanceID];
  sub_100010AB4();
  sub_100010AD0(&_mh_execute_header, v4, v5, "match for instance ID %u", v6, v7, v8, v9, v10);
}

void sub_1000715D4(uint8_t *a1, void *a2, void *a3, unsigned int *a4)
{
  v7 = a2;
  v8 = [a3 instanceID];
  *a1 = 67109120;
  *a4 = v8;
  _os_log_debug_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "Matched device management driver. Set Bond Management for instance ID %u", a1, 8u);
}

void sub_10007164C(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "Matched AppleMultitouchDevice", buf, 2u);
}

void sub_10007186C(void *a1, void *a2)
{
  v3 = a1;
  [a2 buttonData];
  sub_100010AB4();
  sub_100010AD0(&_mh_execute_header, v4, v5, "Button 0x%04X", v6, v7, v8, v9, v10);
}

void sub_1000718F8()
{
  sub_100010AC0();
  sub_100010A94();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100071968(uint64_t a1)
{
  v6 = *(*a1 + 40);
  sub_100010A94();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_1000719E4(void *a1, void *a2)
{
  v3 = a1;
  [a2 productID];
  sub_100010AB4();
  _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "Input report for unknown productID 0x%02x", v4, 8u);
}

void sub_100071A7C()
{
  sub_100010AB4();
  sub_100010A94();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100071BDC(unsigned __int8 *a1, uint64_t a2, NSObject *a3)
{
  v3 = *a1;
  LOWORD(v4) = 1024;
  HIWORD(v4) = a2;
  sub_100010AF0(&_mh_execute_header, a2, a3, "Invalid report ID 0x%02X expecting 0x%02X", 67109376, v4);
}

void sub_100071C58()
{
  sub_100010AC0();
  LOWORD(v3) = 1024;
  HIWORD(v3) = v0;
  sub_100010AF0(&_mh_execute_header, v0, v1, "Invalid input report ID 0x%02X descriptor 0x%02X: both audio and inertial data present in descriptor", v2, v3);
}

void sub_100071D48()
{
  sub_100010AA0();
  sub_100010A94();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x14u);
}

void sub_100071E0C()
{
  sub_100010AA0();
  sub_100010A94();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x14u);
}

void sub_100071EA0(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Failed to register endpoint %@ with error %@", &v3, 0x16u);
}

void sub_100071F28(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Failed to find endpoint for new pipe %@", &v2, 0xCu);
}

void sub_100071FA0(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Failed to find endpoint for disconnected pipe %@", &v2, 0xCu);
}

void sub_100072018(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 peripheral];
  v5 = [v4 name];
  sub_100013374();
  sub_100013390(&_mh_execute_header, v6, v7, "Parse live observation data for peripheral %{private, mask.hash}@ failed.", v8, v9, v10, v11, v12);
}

void sub_1000720C8(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 peripheral];
  v5 = [v4 name];
  sub_100013374();
  sub_100013390(&_mh_execute_header, v6, v7, "Parse stored observation data for peripheral %{private, mask.hash}@ failed due to unsupported observation type.", v8, v9, v10, v11, v12);
}

void sub_100072178(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a2;
  v6 = [v4 peripheral];
  v7 = [v6 name];
  v8 = [a3 userInfo];
  sub_100013374();
  v11 = v7;
  v12 = 2114;
  v13 = v9;
  _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Save sample for peripheral %{private, mask.hash}@ failed : %{public}@", v10, 0x20u);
}

void sub_10007225C(void *a1, void *a2, unsigned __int16 *a3)
{
  v5 = a1;
  v6 = [a2 peripheral];
  v7 = [v6 name];
  v8 = *a3;
  v9 = 141558531;
  v10 = 1752392040;
  v11 = 2113;
  v12 = v7;
  v13 = 1024;
  v14 = v8;
  _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Unit for peripheral %{private, mask.hash}@: invalid unit %d", &v9, 0x1Cu);
}

void sub_100072344(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 peripheral];
  v5 = [v4 name];
  sub_100013374();
  sub_100013390(&_mh_execute_header, v6, v7, "Value for peripheral %{private, mask.hash}@ parse failed", v8, v9, v10, v11, v12);
}

void sub_1000723F4(void *a1)
{
  if (sub_100013F8C())
  {
    sub_100013F6C(&_mh_execute_header, v2, v3, "Failed to create force interface", v4, v5, v6, v7, 0);
  }

  *a1 = 0;
}

void sub_100072450(void *a1)
{
  if (sub_100013F8C())
  {
    sub_100013F6C(&_mh_execute_header, v2, v3, "Failed to create firmware upgrade interface", v4, v5, v6, v7, 0);
  }

  *a1 = 0;
}

void sub_1000724AC(void *a1)
{
  if (sub_100013F8C())
  {
    sub_100013F6C(&_mh_execute_header, v2, v3, "Failed to create haptics interface", v4, v5, v6, v7, 0);
  }

  *a1 = 0;
}

void sub_100072508(void *a1)
{
  if (sub_100013F8C())
  {
    sub_100013F6C(&_mh_execute_header, v2, v3, "Failed to create motion interface", v4, v5, v6, v7, 0);
  }

  *a1 = 0;
}

void sub_100072564(void *a1)
{
  if (sub_100013F8C())
  {
    sub_100013F6C(&_mh_execute_header, v2, v3, "Failed to create touch interface", v4, v5, v6, v7, 0);
  }

  *a1 = 0;
}

void sub_1000725C0(void *a1)
{
  if (sub_100013F8C())
  {
    sub_100013F6C(&_mh_execute_header, v2, v3, "Failed to create device management interface", v4, v5, v6, v7, 0);
  }

  *a1 = 0;
}

void sub_10007261C(void *a1, void *a2, char a3)
{
  v5 = a1;
  v6 = [a2 loggingIdentifier];
  v7 = 138412546;
  v8 = v6;
  v9 = 1024;
  v10 = a3 & 1;
  _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "%@ unexpectedly receiving authentication status: success=%{BOOL}d", &v7, 0x12u);
}

void sub_1000726E0(os_log_t log)
{
  v1[0] = 67109376;
  v1[1] = 255;
  v2 = 1024;
  v3 = 0;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Received reportID 0x%x on interface %u that collides with host generated report", v1, 0xEu);
}

void sub_100072C14(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = 134218240;
  v4 = a1;
  v5 = 2048;
  v6 = a2;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "activeHIDDeviceCount: %lu -> %lu", &v3, 0x16u);
}

void sub_100072C9C(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 peripheral];
  v10 = [v4 name];
  sub_100004F5C();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x20u);
}

void sub_100072D74(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Could not create HKDevice for %@, could not soft load HKDevice class", &v2, 0xCu);
}

void sub_100072DEC(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = [a2 name];
  v7 = [a3 peripheral];
  v8 = [v7 identifier];
  v9 = [v8 UUIDString];
  v15 = [a2 userInfo];
  sub_10001DE8C();
  _os_log_debug_impl(v10, v11, v12, v13, v14, 0x20u);
}

void sub_100072EFC(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 peripheral];
  v5 = [v4 name];
  v6 = 138412290;
  v7 = v5;
  _os_log_debug_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "DeviceInformation update for %@ - No combo device to update", &v6, 0xCu);
}

void sub_100072FBC(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 peripheral];
  v5 = [v4 name];
  v6 = [a2 cyclingPowerSensorLocationCharacteristic];
  v7 = [v6 value];
  v8 = 138412802;
  v9 = v5;
  v10 = 2048;
  v11 = [v7 length];
  v12 = 2048;
  v13 = 1;
  _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "Cycling Power Sensor Location Characteristic data length does not follow spec for %@, %lu bytes instead of %lu expected", &v8, 0x20u);
}

void sub_1000730C4(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 peripheral];
  v5 = [v4 name];
  sub_10001DE9C();
  sub_100004F5C();
  _os_log_error_impl(v6, v7, v8, v9, v10, 0x1Cu);
}

void sub_100073228(void *a1, void *a2, id *a3)
{
  v5 = a1;
  v6 = [a2 peripheral];
  v7 = [v6 name];
  v8 = [*a3 quantity];
  [v8 _value];
  v9 = [a2 sensorLocationSideString];
  sub_10001DE70();
  sub_10001DE8C();
  _os_log_debug_impl(v10, v11, v12, v13, v14, 0x20u);
}

void sub_100073328(void *a1, void *a2, id *a3)
{
  v5 = a1;
  v6 = [a2 peripheral];
  v7 = [v6 name];
  v8 = [*a3 quantity];
  [v8 _value];
  v9 = [a2 sensorLocationSideString];
  sub_10001DE70();
  sub_10001DE8C();
  _os_log_debug_impl(v10, v11, v12, v13, v14, 0x2Au);
}

void sub_100073438(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 peripheral];
  v5 = [v4 name];
  sub_10001DE9C();
  sub_100004F5C();
  _os_log_error_impl(v6, v7, v8, v9, v10, 0x12u);
}

void sub_1000735C0(void *a1)
{
  if (sub_100013F8C())
  {
    sub_100013F6C(&_mh_execute_header, v2, v3, "[Firefly] Failed to create force interface", v4, v5, v6, v7, 0);
  }

  *a1 = 0;
}

void sub_10007361C(void *a1)
{
  if (sub_100013F8C())
  {
    sub_100013F6C(&_mh_execute_header, v2, v3, "[Firefly] Failed to create radio interface", v4, v5, v6, v7, 0);
  }

  *a1 = 0;
}

void sub_100073678(void *a1)
{
  if (sub_100013F8C())
  {
    sub_100013F6C(&_mh_execute_header, v2, v3, "[Firefly] Failed to create inertial interface", v4, v5, v6, v7, 0);
  }

  *a1 = 0;
}

void sub_1000736D4(void *a1)
{
  if (sub_100013F8C())
  {
    sub_100013F6C(&_mh_execute_header, v2, v3, "[Firefly] Failed to create device mgnt interface", v4, v5, v6, v7, 0);
  }

  *a1 = 0;
}

void sub_100073730()
{
  if (sub_10001F5B4())
  {
    sub_10001F594(&_mh_execute_header, v0, v1, "[Firefly] Failed to create notify queue", v2, v3, v4, v5, 0);
  }
}

void sub_100073784()
{
  if (sub_10001F5B4())
  {
    sub_10001F594(&_mh_execute_header, v0, v1, "[Firefly] Failed to create semaphore", v2, v3, v4, v5, 0);
  }
}

void sub_1000737D8()
{
  if (sub_10001F5B4())
  {
    sub_10001F594(&_mh_execute_header, v0, v1, "[Firefly] Failed to create HID queue", v2, v3, v4, v5, 0);
  }
}

void sub_10007382C()
{
  if (sub_10001F5B4())
  {
    sub_10001F594(&_mh_execute_header, v0, v1, "[Firefly] Failed to create force input report set", v2, v3, v4, v5, 0);
  }
}

void sub_100073880(void *a1)
{
  v2 = a1;
  v3 = [sub_100004F6C() name];
  sub_100004F00();
  sub_100013390(&_mh_execute_header, v4, v5, "UDS consent failed for peripheral %{private, mask.hash}@", v6, v7, v8, v9, v10);
}

void sub_100073910()
{
  sub_100004F94();
  v2 = v1;
  v3 = [sub_100004F78() peripheral];
  v4 = [v3 name];
  sub_100024710();
  sub_100004F5C();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x2Au);
}

void sub_100073A00()
{
  sub_100004F94();
  v2 = v1;
  v3 = [sub_100004F78() peripheral];
  v4 = [v3 name];
  sub_100024710();
  sub_100004F5C();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x2Au);
}

void sub_100073AF0()
{
  sub_100004F94();
  v2 = v1;
  v3 = [sub_100004F78() peripheral];
  v4 = [v3 name];
  sub_100004F00();
  sub_100004F5C();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x20u);
}

void sub_100073BAC()
{
  sub_100004F94();
  v2 = v1;
  v3 = [sub_100004F78() peripheral];
  v4 = [v3 name];
  sub_100004F00();
  sub_100004F5C();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x20u);
}

void sub_100073CA0(char a1, unsigned __int16 *a2, os_log_t log)
{
  v3 = "stored";
  v4 = *a2;
  if (a1)
  {
    v3 = "live";
  }

  v5 = 136315394;
  v6 = v3;
  v7 = 1024;
  v8 = v4;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Missing observation type in %s health observation, flags: %u", &v5, 0x12u);
}

void sub_100073D44(void *a1)
{
  v2 = a1;
  v3 = [sub_100004F6C() peripheral];
  v4 = [v3 name];
  sub_100004F00();
  sub_100013390(&_mh_execute_header, v5, v6, "RACP response for peripheral %{private, mask.hash}@: opCode parse failed", v7, v8, v9, v10, v11);
}

void sub_100073DEC(void *a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v5 = a1;
  v6 = [a2 peripheral];
  v7 = [v6 name];
  v8 = *a3;
  v9 = a2[68];
  sub_100024748();
  sub_10002477C(&_mh_execute_header, v10, v11, "RACP response for peripheral %{private, mask.hash}@: invalid opCode %d, expected opCode %d", v12, v13, v14, v15, v16);
}

void sub_100073EB4(void *a1)
{
  v2 = a1;
  v3 = [sub_100004F6C() peripheral];
  v4 = [v3 name];
  sub_100004F00();
  sub_100013390(&_mh_execute_header, v5, v6, "Request retrieve stored observation for peripheral %{private, mask.hash}@ failed", v7, v8, v9, v10, v11);
}

void sub_100073F5C(void *a1)
{
  v2 = a1;
  v3 = [sub_100004F6C() peripheral];
  v4 = [v3 name];
  sub_100004F00();
  sub_100013390(&_mh_execute_header, v5, v6, "Request retrieve last stored observation for peripheral %{private, mask.hash}@ failed", v7, v8, v9, v10, v11);
}

void sub_100074004(void *a1)
{
  v2 = a1;
  v3 = [sub_100004F6C() peripheral];
  v4 = [v3 name];
  sub_100004F00();
  sub_100013390(&_mh_execute_header, v5, v6, "Request delete stored observation for peripheral %{private, mask.hash}@ failed", v7, v8, v9, v10, v11);
}

void sub_1000740AC(void *a1)
{
  v2 = a1;
  v3 = [sub_100004F6C() peripheral];
  v4 = [v3 name];
  sub_100004F00();
  sub_100013390(&_mh_execute_header, v5, v6, "GHS connection idle timeout for peripheral %{private, mask.hash}@", v7, v8, v9, v10, v11);
}

void sub_100074154(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Received malformed command: %@", &v2, 0xCu);
}

void sub_1000741CC(uint8_t *a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = [a3 central];
  v9 = [v8 identifier];
  *a1 = 138543362;
  *a4 = v9;
  _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Unauthorized central %{public}@ requested info via ANCS, rejecting.", a1, 0xCu);
}

void sub_100074268(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "Received event %@", &v2, 0xCu);
}

void sub_1000742F4(void *a1)
{
  if (sub_100013F8C())
  {
    sub_100013F6C(&_mh_execute_header, v2, v3, "Failed to create wake interface", v4, v5, v6, v7, 0);
  }

  *a1 = 0;
}

void sub_1000744AC(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 connection];
  sub_100008498();
  sub_10002D2CC(&_mh_execute_header, v5, v6, "XPC client disconnection: %@", v7, v8, v9, v10, v11);
}

void sub_100074540(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 description];
  sub_100008498();
  sub_10002D2CC(&_mh_execute_header, v5, v6, "Received XPC message: %@", v7, v8, v9, v10, v11);
}

void sub_1000745D4(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 UUIDString];
  [v4 UTF8String];
  sub_100008498();
  sub_10002D2CC(&_mh_execute_header, v5, v6, "handleUARPAACPTransportChangeMsg received from buds for UUID: %s", v7, v8, v9, v10, v11);
}

void sub_100074670(void *a1, void *a2, uint64_t *a3)
{
  v5 = a1;
  v6 = [a2 UUIDString];
  [v6 UTF8String];
  v7 = *a3;
  sub_100008498();
  v10 = 2048;
  v11 = v8;
  _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "handleUARPDataOverAACPMsg got data, uuid: %s length: %lu", v9, 0x16u);
}

void sub_1000747AC(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 streamError];
  v5 = 138412290;
  v6 = v4;
  _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "handleEvent - NSStreamEventErrorOccurred: %@", &v5, 0xCu);
}

void sub_100074854(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = 134218242;
  v4 = a2;
  v5 = 2112;
  v6 = a1;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "incoming data with size %ld read : %@", &v3, 0x16u);
}

void sub_1000748DC(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = [a2 UUID];
  v7 = [v6 UUIDString];
  v8 = [a3 debugDescription];
  v9 = 138412546;
  v10 = v7;
  v11 = 2112;
  v12 = v8;
  _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Error reading BLE MFi characteristic %@: %@", &v9, 0x16u);
}

void sub_100074A18()
{
  sub_100008498();
  sub_100010A94();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100074AF0()
{
  sub_100008498();
  sub_100010A94();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100074B60(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 soundSensorXpcConnection];
  sub_100008498();
  sub_1000084A4(&_mh_execute_header, v5, v6, "DoAPAudioRelayHub previous Sound Sensor XPC connection still exists (%p). Tear that down.", v7, v8, v9, v10, v11);
}

void sub_100074BF4(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 siriXpcConnection];
  sub_100008498();
  sub_1000084A4(&_mh_execute_header, v5, v6, "DoAPAudioRelayHub previous Siri XPC connection still exists (%p). Tear that down.", v7, v8, v9, v10, v11);
}

void sub_100074C88()
{
  sub_100008498();
  sub_100010A94();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100074CF8()
{
  sub_100008498();
  sub_100010A94();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100074FFC(void *a1)
{
  v2 = a1;
  v3 = [sub_100004F78() peripheral];
  v4 = [v3 name];
  sub_100004F00();
  sub_100004F5C();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x1Cu);
}

void sub_1000750BC(void *a1)
{
  v2 = a1;
  v3 = [sub_100004F78() peripheral];
  v4 = [v3 name];
  sub_100004F00();
  sub_100004F84();
  sub_100004F5C();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x20u);
}

void sub_100075174(void *a1)
{
  v2 = a1;
  v3 = [sub_100004F78() peripheral];
  v4 = [v3 name];
  sub_100004F00();
  sub_100004F84();
  sub_100004F5C();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x20u);
}

void sub_10007522C(void *a1)
{
  v2 = a1;
  v3 = [sub_100004F78() peripheral];
  v4 = [v3 name];
  sub_100004F00();
  sub_100004F84();
  sub_100004F5C();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x20u);
}

void sub_100075540(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 xpcConnection];
  sub_100008498();
  _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "LoggingManager - Received XPC message with missing or invalid kMsgId from %p", v5, 0xCu);
}

void sub_100075628(uint8_t *a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = [a3 path];
  *a1 = 138412290;
  *a4 = v8;
  _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "LoggingManager - Ignoring %@", a1, 0xCu);
}

void sub_1000756AC(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = [a2 localizedDescription];
  v7 = [a3 path];
  v8 = 138412546;
  v9 = v6;
  v10 = 2112;
  v11 = v7;
  _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "logRetrievalComplete - Failed to enumerate. Error: %@, Path: %@", &v8, 0x16u);
}

void sub_100075794(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 name];
  sub_100008498();
  sub_1000084A4(&_mh_execute_header, v5, v6, "Ignore peripheral %@ disconnection event", v7, v8, v9, v10, v11);
}

void sub_100075828()
{
  sub_100008498();
  v3 = 2112;
  v4 = v0;
  _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "peerDidFailToCompletePairing %@ error %@", v2, 0x16u);
}

void sub_1000758AC(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 name];
  sub_100008498();
  _os_log_debug_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "Peripheral %@ is in the connectAlwaysIdentifiersMap.", v5, 0xCu);
}

void sub_100075950(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 name];
  sub_100008498();
  sub_1000084A4(&_mh_execute_header, v5, v6, "Connection timed out for peripheral %@...", v7, v8, v9, v10, v11);
}

void sub_100075B54(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Failed to remove pipe %@ as we weren't tracking it", &v2, 0xCu);
}

void sub_100075BCC(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 pipe];
  v5 = [v4 output];
  v6 = [v5 streamError];
  v7 = [v6 localizedDescription];
  v8 = 138412290;
  v9 = v7;
  _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "Encountered stream error while sending data: %@", &v8, 0xCu);
}

void sub_100075CB4(uint8_t *a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = [a3 description];
  *a1 = 138412290;
  *a4 = v8;
  _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Failed to deserialize JSON message: %@", a1, 0xCu);
}

void sub_100075D38(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 pipe];
  v5 = 138412290;
  v6 = v4;
  _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "Received unexpected end of input stream on pipe %@", &v5, 0xCu);
}

void sub_100075DE0(void *a1, void *a2, uint64_t a3)
{
  v5 = a1;
  v6 = [a2 name];
  v7 = 138412546;
  v8 = v6;
  v9 = 2112;
  v10 = a3;
  _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Error discovering services on peripheral %@: %@", &v7, 0x16u);
}

void sub_1000761AC(_BYTE *a1)
{
  if (sub_100013F8C())
  {
    sub_100013F6C(&_mh_execute_header, v2, v3, "No <Last Timestamp Sync> key found", v4, v5, v6, v7, 0);
  }

  *a1 = 0;
}

void sub_100076208(_BYTE *a1)
{
  if (sub_100013F8C())
  {
    sub_100013F6C(&_mh_execute_header, v2, v3, "No <Timestamp Sync Count> key found", v4, v5, v6, v7, 0);
  }

  *a1 = 0;
}

void sub_100076264(_BYTE *a1)
{
  if (sub_100013F8C())
  {
    sub_100013F6C(&_mh_execute_header, v2, v3, "No <Timestamp Sync Period> key found", v4, v5, v6, v7, 0);
  }

  *a1 = 0;
}

void sub_1000762C0(_BYTE *a1)
{
  if (sub_100013F8C())
  {
    sub_100013F6C(&_mh_execute_header, v2, v3, "No timestamp sync driver exists.", v4, v5, v6, v7, 0);
  }

  *a1 = 0;
}

void sub_10007631C(int *a1, uint64_t a2, os_log_t log)
{
  v3 = *a1;
  v4 = 134218240;
  v5 = a2;
  v6 = 1024;
  v7 = v3;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "Timestamp not received in %lluus (period %ums). Checking if timestamp sync is disabled.", &v4, 0x12u);
}

void sub_1000763A8(_DWORD *a1)
{
  *a1 = 0;
  v1 = qword_1000DDBC8;
  if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "Timestamp sync is disabled.", v2, 2u);
  }
}

void sub_100076454(uint64_t a1, void *a2)
{
  v3 = *(a1 + 48);
  v4 = a2;
  v5 = [v3 UUID];
  v6 = [*(a1 + 40) name];
  v7 = 138412546;
  v8 = v5;
  v9 = 2112;
  v10 = v6;
  _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "Service %@ has timed out on peripheral %@", &v7, 0x16u);
}

void sub_100076714(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = [a3 reportTypeToString:{objc_msgSend(a2, "type")}];
  [a2 ID];
  sub_100042E2C();
  sub_100042E50(&_mh_execute_header, v7, v8, "Did set %@ report for ID #%u", v9, v10, v11, v12, v13);
}

void sub_1000767C8(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = [a3 reportTypeToString:{objc_msgSend(a2, "type")}];
  [a2 ID];
  sub_100042E2C();
  sub_100042E50(&_mh_execute_header, v7, v8, "Started notifications on %@ report for ID #%u", v9, v10, v11, v12, v13);
}

void sub_100076924()
{
  sub_100017C40();
  sub_100042E44();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100076960()
{
  sub_100017C40();
  sub_100042E44();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10007699C(void *a1, uint8_t *buf, int a3, os_log_t log)
{
  *buf = 138412546;
  *(buf + 4) = a1;
  *(buf + 6) = 1024;
  *(buf + 14) = a3;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Could not find %@ report characteristic for ID #%u", buf, 0x12u);
}

void sub_100076AAC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 200);
  sub_100045568();
  sub_100045580(&_mh_execute_header, v3, v4, "Adding DI Read complete listener:%@ to list %@");
}

void sub_100076B20(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  sub_100045568();
  sub_100045580(&_mh_execute_header, v3, v4, "Added DI Read complete listener:%@ to list %@");
}

void sub_100076B8C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 200);
  sub_100045568();
  sub_100045580(&_mh_execute_header, v3, v4, "Removing DI Read complete listener:%@ from list %@");
}

void sub_100076C00(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  sub_100045568();
  sub_100045580(&_mh_execute_header, v3, v4, "Removed DI Read complete listener:%@ from list %@");
}

void sub_100076C6C()
{
  sub_100017C40();
  sub_100042E44();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100076CA8()
{
  sub_100008498();
  v3 = 2112;
  v4 = v0;
  _os_log_debug_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEBUG, "Fitness Classic device FW revision: %@, components: %@", v2, 0x16u);
}

void sub_100076D2C()
{
  sub_100008498();
  sub_100042E44();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100076D9C()
{
  sub_100008498();
  sub_100042E44();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100076E40(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = [a2 UUID];
  v7 = [v6 UUIDString];
  v8 = [a3 debugDescription];
  sub_100047534();
  sub_10004754C(&_mh_execute_header, v9, v10, "Error discovering characteristics for service %@: %@", v11, v12, v13, v14, v15);
}

void sub_100076F6C(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = [a2 UUID];
  v7 = [v6 UUIDString];
  v8 = [a3 debugDescription];
  sub_100047534();
  sub_10004754C(&_mh_execute_header, v9, v10, "Error reading HRM characteristic %@: %@", v11, v12, v13, v14, v15);
}

void sub_100077030(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = [a2 UUID];
  v7 = [v6 UUIDString];
  v8 = [a3 debugDescription];
  sub_100047534();
  sub_10004754C(&_mh_execute_header, v9, v10, "Error setting notify state for HRM characteristic %@: %@", v11, v12, v13, v14, v15);
}

void sub_1000770F4(unsigned __int16 *a1)
{
  v6 = *a1;
  sub_100042E44();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 8u);
}

void sub_10007716C(void *a1, void *a2)
{
  v3 = a1;
  [a2 length];
  sub_100008498();
  _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "HRM packet too small: %lu bytes", v4, 0xCu);
}

void sub_10007768C()
{
  sub_10004A430();
  sub_10004A44C();
  sub_100010A94();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xEu);
}

void sub_100077704()
{
  sub_10004A430();
  sub_10004A44C();
  sub_100010A94();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xEu);
}

void sub_1000777F4(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Error creating DoAP device", buf, 2u);
}

void sub_100077834()
{
  sub_100017C40();
  sub_100010A94();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100077870()
{
  sub_100017C40();
  sub_100010A94();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000778AC()
{
  sub_100017C40();
  sub_100010A94();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000778E8()
{
  sub_100017C40();
  sub_100010A94();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100077924()
{
  sub_100017C40();
  sub_100010A94();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100077960()
{
  sub_100017C40();
  sub_100010A94();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10007799C(void *a1, void *a2)
{
  v3 = a1;
  [a2 UUID];
  objc_claimAutoreleasedReturnValue();
  v4 = [sub_10004A43C() uuidToString:?];
  sub_10004A45C(&_mh_execute_header, v5, v6, "DoAP Started notifications on %@ characteristic", v7, v8, v9, v10, 2u);
}

void sub_100077A50(void *a1, void *a2)
{
  v3 = a1;
  [a2 UUID];
  objc_claimAutoreleasedReturnValue();
  v4 = [sub_10004A43C() uuidToString:?];
  sub_10004A45C(&_mh_execute_header, v5, v6, "DoAP Found CCCD for %@ chracteristic", v7, v8, v9, v10, 2u);
}

void sub_100077B04(void *a1, void *a2)
{
  v3 = a1;
  [a2 UUID];
  objc_claimAutoreleasedReturnValue();
  v4 = [sub_10004A43C() uuidToString:?];
  v5 = 138412290;
  v6 = v4;
  _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "DoAP Missing CCCD for %@ chracteristic", &v5, 0xCu);
}

void sub_100077C08()
{
  sub_100017C40();
  sub_100010A94();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100077C44()
{
  sub_100010AB4();
  sub_100010A94();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100077CB4()
{
  sub_100010AB4();
  LOWORD(v3) = 1024;
  HIWORD(v3) = v0;
  sub_100010AF0(&_mh_execute_header, v0, v1, "DoAP Received payload length(%d) is different to sent length(%d)", v2, v3);
}

void sub_100077D28(uint64_t a1)
{
  v1 = *(a1 + 2);
  sub_10004A430();
  v5 = 1024;
  v6 = v2;
  _os_log_debug_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "DoAP Receive data, packet#[%d] payload length %d", v4, 0xEu);
}

void sub_100077DB0()
{
  sub_100010AB4();
  sub_100010A94();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100077E20()
{
  sub_100010AB4();
  sub_100010A94();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100077EA4(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 characteristic];
  v5 = [v4 UUID];
  v6 = [a2 value];
  sub_10004B9E8();
  v10 = v5;
  v11 = v7;
  v12 = v8;
  _os_log_debug_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "Responding with result %ld to request on characteristic %@: %@", v9, 0x20u);
}

void sub_100077F8C(void *a1, void *a2, uint64_t a3)
{
  v5 = a1;
  v6 = [a2 UUID];
  v7 = 138412546;
  v8 = v6;
  v9 = 2112;
  v10 = a3;
  _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "Updating value on characteristic %@: %@", &v7, 0x16u);
}

void sub_10007804C(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 pendingUpdates];
  [v4 count];
  sub_10002D2CC(&_mh_execute_header, v5, v6, "Queued update, %lu pending", v7, v8, v9, v10, 0);
}

void sub_1000780E8(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = [a2 central];
  v7 = [a3 nameForCentral:v6];
  v8 = [a2 characteristic];
  v9 = [v8 UUID];
  sub_10004B9E8();
  v12 = v10;
  _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "Central %@ sent a read request on characteristic %@", v11, 0x16u);
}

void sub_1000781E0(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 pendingUpdates];
  [v4 count];
  sub_10002D2CC(&_mh_execute_header, v5, v6, "Ready to send updates, %lu pending", v7, v8, v9, v10, 0);
}

void sub_100078498(void *a1)
{
  if (sub_100013F8C())
  {
    sub_100013F6C(&_mh_execute_header, v2, v3, "Failed to create device mgnt interface", v4, v5, v6, v7, 0);
  }

  *a1 = 0;
}

void sub_1000784F4()
{
  sub_10004F81C();
  sub_10004F7E8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xEu);
}

void sub_10007856C(int a1, NSObject *a2)
{
  v2[0] = 67109376;
  v2[1] = a1;
  v3 = 1024;
  v4 = 8;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Invalid super packet header: %u bytes length < %u", v2, 0xEu);
}

void sub_100078668(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 description];
  v5 = 136315138;
  v6 = [v4 UTF8String];
  _os_log_debug_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "piconetClockNotification: %s", &v5, 0xCu);
}

void sub_100078718(uint64_t *a1)
{
  sub_10004F810(a1, __stack_chk_guard);
  sub_10004F7BC();
  sub_10004F7D8();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x14u);
}

void sub_100078790(uint64_t *a1)
{
  sub_10004F810(a1, __stack_chk_guard);
  sub_10004F7F8();
  sub_10004F7E8();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x12u);
}

void sub_1000789E4(unsigned __int8 *a1)
{
  v1 = *a1;
  sub_10004F81C();
  sub_10004F7D8();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xEu);
}

void sub_100078A5C(uint64_t *a1)
{
  sub_10004F810(a1, __stack_chk_guard);
  sub_10004F7BC();
  sub_10004F7D8();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x14u);
}

void sub_100078AD4(uint64_t *a1)
{
  sub_10004F810(a1, __stack_chk_guard);
  sub_10004F7BC();
  sub_10004F7D8();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x14u);
}

void sub_100078BC0(uint64_t *a1)
{
  sub_10004F810(a1, __stack_chk_guard);
  sub_10004F7F8();
  sub_10004F7E8();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x12u);
}

void sub_100078CB8(void *a1, void *a2, uint64_t a3)
{
  v5 = a1;
  v6 = [a2 UUID];
  v7 = 138412546;
  v8 = v6;
  v9 = 2112;
  v10 = a3;
  _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Error publishing service %@: %@", &v7, 0x16u);
}

void sub_100078D8C(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Unexpected XPC server event: %@", &v2, 0xCu);
}

void sub_100078E04(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "XPC server error: %@", &v2, 0xCu);
}

void sub_100078EC0(void *a1)
{
  v2 = a1;
  v3 = [sub_100004F6C() peripheral];
  v4 = [v3 name];
  sub_100013374();
  sub_100013390(&_mh_execute_header, v5, v6, "Parse live observation data for peripheral %{private, mask.hash}@ failed.", v7, v8, v9, v10, v11);
}

void sub_100078F6C(void *a1)
{
  v2 = a1;
  v3 = [sub_100004F6C() peripheral];
  v4 = [v3 name];
  sub_100013374();
  sub_100013390(&_mh_execute_header, v5, v6, "Parse stored observation data for peripheral %{private, mask.hash}@ failed due to unsupported observation type.", v7, v8, v9, v10, v11);
}

void sub_100079018(void *a1, void *a2, unsigned __int16 *a3)
{
  v5 = a1;
  v6 = [a2 peripheral];
  v13 = [v6 name];
  v14 = *a3;
  sub_100051410(&_mh_execute_header, v7, v8, "Unit for peripheral %{private, mask.hash}@: invalid unit %d", v9, v10, v11, v12, 3u);
}

void sub_1000790F0(void *a1)
{
  v2 = a1;
  v3 = [sub_100004F6C() peripheral];
  v4 = [v3 name];
  sub_100013374();
  sub_100013390(&_mh_execute_header, v5, v6, "Peripheral %{private, mask.hash}@ observation value parse failed", v7, v8, v9, v10, v11);
}

void sub_10007919C(void *a1)
{
  v2 = a1;
  v3 = [sub_100004F6C() peripheral];
  v4 = [v3 name];
  sub_100013374();
  sub_100013390(&_mh_execute_header, v5, v6, "Peripheral %{private, mask.hash}@ observation value not saved due to invalid value", v7, v8, v9, v10, v11);
}

void sub_100079248(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 peripheral];
  v5 = [v4 name];
  sub_100013374();
  sub_100051410(&_mh_execute_header, v6, v7, "Observation type for peripheral %{private, mask.hash}@ not supported : %d", v8, v9, v10, v11, v12);
}

void sub_10007942C(void *a1)
{
  v2 = a1;
  v3 = [sub_100004F6C() debugDescription];
  sub_100008498();
  sub_1000084A4(&_mh_execute_header, v4, v5, "Error retrieving tagged peripherals: %@", v6, v7, v8, v9, v10);
}

void sub_1000794BC(void *a1)
{
  v2 = a1;
  v3 = [sub_100004F6C() debugDescription];
  sub_100008498();
  sub_1000084A4(&_mh_execute_header, v4, v5, "Error retrieving peripherals with fitness custom property: %@", v6, v7, v8, v9, v10);
}

void sub_10007954C(void *a1)
{
  v2 = a1;
  v3 = [sub_100004F6C() debugDescription];
  sub_100008498();
  sub_1000084A4(&_mh_execute_header, v4, v5, "Error retrieving peripherals with Fitness custom property: %@", v6, v7, v8, v9, v10);
}

void sub_10007978C(void *a1)
{
  v2 = a1;
  v3 = [sub_100004F6C() description];
  sub_100008498();
  sub_1000084A4(&_mh_execute_header, v4, v5, "Error activating audio routing control: %@", v6, v7, v8, v9, v10);
}

void sub_10007981C(char a1, NSObject *a2)
{
  v2 = @"stopping";
  if (a1)
  {
    v2 = @"starting";
  }

  v3 = 138412290;
  v4 = v2;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "Notify SmartRouting HRM session state changed: %@ collection", &v3, 0xCu);
}

void sub_1000798AC(void *a1)
{
  v2 = a1;
  v3 = [sub_100004F6C() description];
  sub_100008498();
  sub_1000084A4(&_mh_execute_header, v4, v5, "Error notifying HRM session state changed: %@", v6, v7, v8, v9, v10);
}

void sub_10007993C(uint8_t *a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = [a3 identifier];
  v9 = [v8 UUIDString];
  *a1 = 138412290;
  *a4 = v9;
  _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Failed to migrate HealthKit HRM with identifier %@. CBPeripheral does not exist", a1, 0xCu);
}

void sub_1000799D8(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [sub_100004F6C() identifier];
  v6 = [v5 UUIDString];
  sub_100008498();
  sub_1000084A4(&_mh_execute_header, v7, v8, "Failed to get HKHealthService enabled status during HRM migration for identifier %@", v9, v10, v11, v12, v13);
}

void sub_100079A80(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [sub_100004F6C() identifier];
  v6 = [v5 UUIDString];
  sub_100008498();
  sub_1000084A4(&_mh_execute_header, v7, v8, "Failed to remove HKHealthService pairing during HRM migration for identifier %@", v9, v10, v11, v12, v13);
}

void sub_100079B3C()
{
  sub_100008498();
  v3 = 2112;
  v4 = v0;
  _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "addAccessory failed! uarpAccessory:%@ uarpAssetID:%@", v2, 0x16u);
}

void sub_100079BC0()
{
  sub_100008498();
  sub_100010A94();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100079C30()
{
  sub_100008498();
  sub_100010A94();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100079CA0()
{
  sub_100008498();
  sub_100010A94();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100079D50()
{
  sub_100008498();
  sub_100010A94();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100079DC0(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 UUIDString];
  [v4 UTF8String];
  sub_100008498();
  sub_10002D2CC(&_mh_execute_header, v5, v6, "addUARPTransportDict: adding UUID: %s", v7, v8, v9, v10, v11);
}

void sub_100079E5C(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 UUIDString];
  [v4 UTF8String];
  sub_100008498();
  sub_10002D2CC(&_mh_execute_header, v5, v6, "getAndRemoveFromUARPTransportDict: got for UUID: %s", v7, v8, v9, v10, v11);
}

void sub_100079EF8(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 UUIDString];
  [v4 UTF8String];
  sub_100008498();
  sub_10002D2CC(&_mh_execute_header, v5, v6, "getAndRemoveFromUARPTransportDict: did not find anything for UUID: %s", v7, v8, v9, v10, v11);
}

void sub_100079F94(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = [a2 UUIDString];
  [v6 UTF8String];
  [a3 length];
  sub_1000583D4(&_mh_execute_header, v7, v8, "relayAACPUARP - accessory UUID:%s msgLength:%lu", v9, v10, v11, v12, 2u);
}

void sub_10007A058(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  [a3 length];
  sub_1000583D4(&_mh_execute_header, v5, v6, "sendMessageToAccessory - accessory:%@ msgLength:%lu", v7, v8, v9, v10, 2u);
}

void sub_10007A17C()
{
  sub_100017C40();
  sub_100010A94();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10007A1B8()
{
  sub_100010AB4();
  sub_100010A94();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10007A228()
{
  sub_100010AB4();
  sub_100010A94();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10007A298()
{
  sub_100008498();
  sub_100010A94();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10007A308(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 error];
  sub_100008498();
  _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "DoAPSiri - activateSiri: SiriActivation failed: %@", v5, 0xCu);
}

void sub_10007A3B0(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 error];
  sub_100008498();
  sub_100004F4C();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0xCu);
}

void sub_10007A44C()
{
  sub_100017C40();
  sub_100010A94();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10007A488(void *a1, void *a2)
{
  v3 = a1;
  [a2 state];
  sub_100010AB4();
  _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "DoAPSiri - Doap state %d mismatch for Button Event", v4, 8u);
}

void sub_10007A524()
{
  sub_100010AB4();
  sub_100010A94();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10007A594()
{
  sub_100008498();
  sub_100010A94();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10007A604()
{
  sub_100017C40();
  sub_100010A94();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10007A6BC(void **a1, void *a2)
{
  v2 = *a1;
  v3 = a2;
  [v2 state];
  sub_100010AB4();
  sub_100004F4C();
  _os_log_error_impl(v4, v5, v6, v7, v8, 8u);
}

void sub_10007A750()
{
  sub_100017C40();
  sub_100010A94();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10007A78C()
{
  sub_100017C40();
  sub_100010A94();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10007A7C8()
{
  sub_100017C40();
  sub_100010A94();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10007A804(void **a1, void *a2)
{
  v2 = *a1;
  v3 = a2;
  [v2 state];
  sub_100010AB4();
  sub_100004F4C();
  _os_log_error_impl(v4, v5, v6, v7, v8, 8u);
}

void sub_10007A898(uint64_t a1, NSObject *a2)
{
  v2 = 134217984;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Ignoring request to add ellipsis as there is insufficient space. bufferMaxLength = %lu", &v2, 0xCu);
}

void sub_10007A944(void *a1, void *a2, const void *a3)
{
  v6 = a1;
  v7 = [sub_10005DF60() peripheral];
  v8 = [v7 name];
  CFDictionaryGetValue([a2 authInfo], a3);
  sub_10005DF30();
  sub_10005DF40(&_mh_execute_header, v9, v10, "Read certificate for peripheral %@: %@", v11, v12, v13, v14, 2u);
}

void sub_10007AA10(void *a1)
{
  v2 = a1;
  v3 = [sub_100004F6C() peripheral];
  v4 = [v3 name];
  sub_100008498();
  sub_1000084A4(&_mh_execute_header, v5, v6, "Certificate invalid for peripheral %@", v7, v8, v9, v10, v11);
}

void sub_10007AAB8(void *a1, void *a2, const void *a3)
{
  v6 = a1;
  v7 = [sub_10005DF60() peripheral];
  v8 = [v7 name];
  CFDictionaryGetValue([a2 authInfo], a3);
  sub_10005DF30();
  sub_10005DF40(&_mh_execute_header, v9, v10, "Issuing challenge for peripheral %@: %@", v11, v12, v13, v14, 2u);
}

void sub_10007AB84(void *a1, void *a2)
{
  v4 = a1;
  v5 = [sub_10005DF60() peripheral];
  v6 = [v5 name];
  v7 = [a2 versionCharacteristic];
  v8 = [v7 value];
  sub_10005DF30();
  sub_10005DF6C(&_mh_execute_header, v9, v10, "Invalid version for peripheral %@: %@", v11, v12, v13, v14, 2u);
}

void sub_10007AC60(void *a1, void *a2, const void *a3)
{
  v6 = a1;
  v7 = [sub_10005DF60() peripheral];
  v8 = [v7 name];
  CFDictionaryGetValue([a2 authInfo], a3);
  sub_10005DF30();
  sub_10005DF40(&_mh_execute_header, v9, v10, "Read response for peripheral %@: %@", v11, v12, v13, v14, 2u);
}

void sub_10007AD2C(void *a1)
{
  v2 = a1;
  v3 = [sub_100004F6C() peripheral];
  v4 = [v3 name];
  sub_100008498();
  sub_1000084A4(&_mh_execute_header, v5, v6, "Challenge response invalid for peripheral %@", v7, v8, v9, v10, v11);
}

void sub_10007ADD4(void *a1)
{
  v2 = a1;
  v3 = [sub_100004F6C() peripheral];
  v4 = [v3 name];
  sub_100008498();
  _os_log_debug_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEBUG, "Received notification that the response is ready for peripheral %@", v5, 0xCu);
}

void sub_10007AE8C(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 authStateString];
  v5 = [a2 peripheral];
  v6 = [v5 name];
  sub_10005DF30();
  sub_10005DF6C(&_mh_execute_header, v7, v8, "Authentication has timed out (%@) on peripheral %@", v9, v10, v11, v12, 2u);
}

void sub_10007AF54(void *a1)
{
  v2 = a1;
  v3 = [sub_100004F6C() peripheral];
  v4 = [v3 name];
  sub_100008498();
  sub_1000084A4(&_mh_execute_header, v5, v6, "Still no response notification, attempting a last ditch read on peripheral %@", v7, v8, v9, v10, v11);
}

void sub_10007B098(void *a1, void *a2, uint64_t a3)
{
  v5 = a1;
  v6 = [a2 peripheral];
  v7 = [v6 name];
  sub_100008498();
  v9 = 2112;
  v10 = a3;
  _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Failed to read challenge response for peripheral %@: %@", v8, 0x16u);
}

void sub_10007B164(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Error encountered resolving behavior via DND. Defaulting isSilent to NO. error=%@", &v2, 0xCu);
}

void sub_10007B1DC(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 recentCall];
  v5 = 138412290;
  v6 = v4;
  _os_log_fault_impl(&_mh_execute_header, v3, OS_LOG_TYPE_FAULT, "Unable to create a TUCallProvider for call %@", &v5, 0xCu);
}

void sub_10007B53C(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 peripheral];
  v5 = [v4 name];
  v6 = [a2 batteryLevelCharacteristicFormat];
  v7 = [a2 batteryLevelCharacteristic];
  v8 = 138412802;
  v9 = v5;
  v10 = 1024;
  v11 = v6;
  v12 = 2112;
  v13 = v7;
  _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "### Failed to extract battery level for peripheral %@ (0x%04X): %@", &v8, 0x1Cu);
}

void sub_10007B680(void *a1, void *a2, int a3)
{
  v5 = a1;
  v6 = [a2 peripheral];
  v7 = [v6 name];
  v8 = 138412546;
  v9 = v7;
  v10 = 1024;
  v11 = a3;
  _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Failed to update the power source for peripheral %@: 0x%X", &v8, 0x12u);
}

void sub_10007B794(int a1, NSObject *a2)
{
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "DoAP eventIndicator write value - Invalid event type(0x%02x)", v2, 8u);
}

void sub_10007B820(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 peripheral];
  v5 = [v4 name];
  sub_100013374();
  sub_100013390(&_mh_execute_header, v6, v7, "Parse live observation data for peripheral %{private, mask.hash}@ failed due to unsupported device type.", v8, v9, v10, v11, v12);
}

void sub_10007B8D0(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 peripheral];
  v5 = [v4 name];
  sub_100013374();
  sub_100013390(&_mh_execute_header, v6, v7, "Parse stored observation data for peripheral %{private, mask.hash}@ failed due to unsupported device type.", v8, v9, v10, v11, v12);
}

void sub_10007B980(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a2;
  v6 = [v4 peripheral];
  v7 = [v6 name];
  v8 = [a3 userInfo];
  sub_100013374();
  v11 = v7;
  v12 = 2114;
  v13 = v9;
  _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Request authorization to share sample types for peripheral %{private, mask.hash}@ failed : %{public}@", v10, 0x20u);
}

void sub_10007BA64(void *a1)
{
  v2 = a1;
  v3 = [sub_100004F78() peripheral];
  v4 = [v3 name];
  sub_100004F00();
  sub_100051410(&_mh_execute_header, v5, v6, "Parse live observation data for peripheral %{private, mask.hash}@ failed due to unsupported observation type %d.", v7, v8, v9, v10, v11);
}

void sub_10007BB1C(void *a1)
{
  v2 = a1;
  v3 = [sub_100004F6C() peripheral];
  v4 = [v3 name];
  sub_100004F00();
  sub_100013390(&_mh_execute_header, v5, v6, "Parse live observation data for peripheral %{private, mask.hash}@ failed.", v7, v8, v9, v10, v11);
}

void sub_10007BBC4(void *a1)
{
  v2 = a1;
  v3 = [sub_100004F78() peripheral];
  v4 = [v3 name];
  sub_100004F00();
  sub_100051410(&_mh_execute_header, v5, v6, "Parse stored observation data for peripheral %{private, mask.hash}@ failed due to unsupported observation type %d.", v7, v8, v9, v10, v11);
}

void sub_10007BC7C(void *a1)
{
  v2 = a1;
  v3 = [sub_100004F6C() peripheral];
  v4 = [v3 name];
  sub_100004F00();
  sub_100013390(&_mh_execute_header, v5, v6, "Parse stored observation data for peripheral %{private, mask.hash}@ failed", v7, v8, v9, v10, v11);
}

void sub_10007BD24(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a2;
  v6 = [v4 peripheral];
  v7 = [v6 name];
  v8 = [a3 userInfo];
  v9 = 141558531;
  v10 = 1752392040;
  v11 = 2113;
  v12 = v7;
  v13 = 2114;
  v14 = v8;
  _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Save sample for peripheral %{private, mask.hash}@ failed : %{public}@", &v9, 0x20u);
}

void sub_10007BE1C(void *a1, uint64_t a2, unsigned __int16 *a3)
{
  v5 = a1;
  v6 = [sub_100004F78() peripheral];
  v7 = [v6 name];
  v8 = *a3;
  sub_100004F20();
  sub_100051410(&_mh_execute_header, v9, v10, "Unit for peripheral %{private, mask.hash}@: invalid unit %d", v11, v12, v13, v14, v15);
}

void sub_10007BECC(void *a1)
{
  v2 = a1;
  v3 = [sub_100004F6C() peripheral];
  v4 = [v3 name];
  sub_100004F00();
  sub_100013390(&_mh_execute_header, v5, v6, "Peripheral %{private, mask.hash}@ observation value parse failed", v7, v8, v9, v10, v11);
}

void sub_10007BF74(void *a1)
{
  v2 = a1;
  v3 = [sub_100004F6C() peripheral];
  v4 = [v3 name];
  sub_100004F00();
  sub_100013390(&_mh_execute_header, v5, v6, "Peripheral %{private, mask.hash}@ observation value not saved due to invalid value", v7, v8, v9, v10, v11);
}

void sub_10007C01C(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = [a2 peripheral];
  v7 = [v6 identifier];
  v8 = [v7 UUIDString];
  v9 = [a3 length];
  v10 = [a2 uarpOverAACP];
  v11 = "GATT";
  v12 = 138412802;
  v13 = v8;
  if (v10)
  {
    v11 = "AACP";
  }

  v14 = 2048;
  v15 = v9;
  v16 = 2080;
  v17 = v11;
  _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "sendData - peripheral:%@ length:%lu profile: %s", &v12, 0x20u);
}

void sub_10007C214(uint64_t *a1, NSObject *a2)
{
  v2 = *a1;
  v3 = 138412290;
  v4 = v2;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "peripheral:didUpdateNotificationStateForCharacteristic: loggingSuperbinaryURL %@", &v3, 0xCu);
}

void sub_10007C340(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 peripheral];
  v5 = [v4 name];
  sub_100013374();
  sub_100013390(&_mh_execute_header, v6, v7, "Parse live observation data for peripheral %{private, mask.hash}@ failed due to unsupported observation type.", v8, v9, v10, v11, v12);
}

void sub_10007C3F0(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a2;
  v6 = [v4 peripheral];
  v7 = [v6 name];
  v8 = [a3 userInfo];
  sub_100013374();
  sub_10006CD84();
  sub_10006CD98(&_mh_execute_header, v9, v10, "Save sample for peripheral %{private, mask.hash}@ failed : %{public}@", v11, v12, v13, v14, v15);
}

void sub_10007C4B8(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Unsupported observation class type, only numeric type are supported for compound observation", buf, 2u);
}

void sub_10007C4F8(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Unsupported observation type in live/stored health observation", buf, 2u);
}

void sub_10007C538(void *a1, void *a2, unsigned __int16 *a3)
{
  v5 = a1;
  v6 = [a2 peripheral];
  v7 = [v6 name];
  v8 = *a3;
  v9 = 141558531;
  v10 = 1752392040;
  v11 = 2113;
  v12 = v7;
  v13 = 1024;
  v14 = v8;
  _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Unit for peripheral %{private, mask.hash}@: heart rate invalid unit %d", &v9, 0x1Cu);
}

void sub_10007C620(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 peripheral];
  v5 = [v4 name];
  sub_100013374();
  sub_100013390(&_mh_execute_header, v6, v7, "Peripheral %{private, mask.hash}@ observation value not saved due to invalid value", v8, v9, v10, v11, v12);
}

void sub_10007C6D0(void *a1, void *a2, uint64_t a3)
{
  v5 = a1;
  v6 = [a2 peripheral];
  v7 = [v6 name];
  v8 = 138412802;
  v9 = @"wheelCircumferenceMM";
  v10 = 2112;
  v11 = v7;
  v12 = 2112;
  v13 = a3;
  _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Read property “%@” from “%@” = “%@” and can't convert it to a number", &v8, 0x20u);
}

void sub_10007C7B0(void *a1, void *a2, uint64_t a3)
{
  v5 = a1;
  v6 = [a2 peripheral];
  v7 = [v6 name];
  v8 = *(a3 + 10);
  v9 = *(a3 + 12);
  sub_1000702B8();
  sub_1000702F4(&_mh_execute_header, v10, v11, "“%@” READ CSC Measurement CADENCE, CrankRev:%d (0x%04X) last Crank Event Time:%d (0x%04X) (%f in sec)", v12, v13, v14, v15, v16);
}

void sub_10007C86C(void *a1)
{
  v2 = a1;
  v3 = [sub_100004F6C() peripheral];
  v4 = [v3 name];
  sub_100008498();
  sub_1000084A4(&_mh_execute_header, v5, v6, "“%@” cadence data available but not requested", v7, v8, v9, v10, v11);
}

void sub_10007C914(void *a1)
{
  v2 = a1;
  v3 = [sub_100004F6C() peripheral];
  v4 = [v3 name];
  sub_100008498();
  sub_1000084A4(&_mh_execute_header, v5, v6, "“%@” Could not create cycling cadence HKQuantityType", v7, v8, v9, v10, v11);
}

void sub_10007C9BC(void *a1, void *a2, uint64_t a3)
{
  v5 = a1;
  v6 = [a2 peripheral];
  v7 = [v6 name];
  v8 = *(a3 + 4);
  v9 = *(a3 + 8);
  sub_1000702B8();
  sub_1000702F4(&_mh_execute_header, v10, v11, "“%@” READ CSC Measurement SPEED, CumWheelRev:%d (0x%08X) last Wheel Event Time:%d (0x%04X) (%f in sec)", v12, v13, v14, v15, v16);
}

void sub_10007CA78(void *a1)
{
  v2 = a1;
  v3 = [sub_100004F6C() peripheral];
  v4 = [v3 name];
  sub_100008498();
  sub_1000084A4(&_mh_execute_header, v5, v6, "“%@” Could not create cycling speed HKQuantityType", v7, v8, v9, v10, v11);
}

void sub_10007CB20(void *a1)
{
  v2 = a1;
  v3 = [sub_100004F6C() peripheral];
  v4 = [v3 name];
  sub_100008498();
  _os_log_debug_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEBUG, "updatedControlPointCharacteristicValue - “%@”", v5, 0xCu);
}

void sub_10007CBD8(void *a1)
{
  v2 = a1;
  v3 = [sub_100004F6C() peripheral];
  v4 = [v3 name];
  sub_100008498();
  sub_1000084A4(&_mh_execute_header, v5, v6, "“%@” - Missing Cadence & Speed Measurement characteristic", v7, v8, v9, v10, v11);
}

void sub_10007CC80(void *a1)
{
  v2 = a1;
  v3 = [sub_100004F6C() peripheral];
  v4 = [v3 name];
  sub_100008498();
  sub_1000084A4(&_mh_execute_header, v5, v6, "“%@” - Missing Cadence & Speed Feature characteristic", v7, v8, v9, v10, v11);
}

void sub_10007CD28(void *a1)
{
  v2 = a1;
  v3 = [sub_100004F6C() peripheral];
  v4 = [v3 name];
  sub_100008498();
  sub_1000084A4(&_mh_execute_header, v5, v6, "“%@” - Missing Cadence & Speed Control Point characteristic", v7, v8, v9, v10, v11);
}

CFRange CFStringFind(CFStringRef theString, CFStringRef stringToFind, CFStringCompareFlags compareOptions)
{
  v5 = _CFStringFind(theString, stringToFind, compareOptions);
  length = v5.length;
  location = v5.location;
  result.length = length;
  result.location = location;
  return result;
}