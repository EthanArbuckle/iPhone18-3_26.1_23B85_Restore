void sub_1000747FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100074818(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (v5)
  {
    v13 = @"previousSessionInfoMasks";
    v14 = v5;
    v8 = [NSDictionary dictionaryWithObjects:&v14 forKeys:&v13 count:1];
    [WeakRetained sendEvent:7 withDictionary:v8];

    v9 = CarGeneralLogging();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138412290;
      v12 = v5;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "CARAnalytics: Previous unsuccessful connection history fetched. Previous sessions: %@", &v11, 0xCu);
    }
  }

  else
  {
    v9 = CarGeneralLogging();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [v6 localizedDescription];
      v11 = 138412290;
      v12 = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "CARAnalytics: Error in fetching previous unsuccessful connection sessions, Error: %@", &v11, 0xCu);
    }
  }
}

void sub_100074B24(id a1, BOOL a2, NSError *a3)
{
  v3 = a2;
  v4 = a3;
  v5 = CarGeneralLogging();
  v6 = v5;
  if (v3)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "CARAnalytics: sent wirelessPairingCreatedEvent connection event", v7, 2u);
    }
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    sub_100089B28(v4);
  }
}

uint64_t sub_100075134(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t sub_10007565C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 cr_themeAsset_assetIdentifier];
  if (!v4 || ![*(a1 + 32) isEqualToString:v4])
  {
    v14 = 0;
    goto LABEL_30;
  }

  if (*(a1 + 40))
  {
    v5 = [v3 cr_themeAsset_minimumSDKVersion];
    v6 = v5;
    if (v5)
    {
      v7 = [v5 cr_buildVersionCompare:*(a1 + 40)] + 1;
      v8 = CarThemeAssetsLogging();
      v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
      if (v7 > 1)
      {
        if (v9)
        {
          v22 = *(a1 + 40);
          v29 = 138412802;
          v30 = v3;
          v31 = 2112;
          v32 = v6;
          v33 = 2112;
          v34 = v22;
          v21 = "ignoring asset %@, the minimum SDK version of %@ is not valid for SDK: %@";
          goto LABEL_21;
        }

LABEL_22:
        v14 = 0;
LABEL_29:

        goto LABEL_30;
      }

      if (!v9)
      {
        goto LABEL_12;
      }

      v10 = *(a1 + 40);
      v29 = 138412546;
      v30 = v6;
      v31 = 2112;
      v32 = v10;
      v11 = "asset's minimum SDK version of %@ is valid for SDK: %@";
      v12 = v8;
      v13 = 22;
    }

    else
    {
      v8 = CarThemeAssetsLogging();
      if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
LABEL_12:

        goto LABEL_13;
      }

      v15 = *(a1 + 40);
      v29 = 138412290;
      v30 = v15;
      v11 = "asset does not have a minimum SDK version, assuming it works with SDK: %@";
      v12 = v8;
      v13 = 12;
    }

    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, v11, &v29, v13);
    goto LABEL_12;
  }

LABEL_13:
  if (*(a1 + 48))
  {
    v16 = [v3 cr_themeAsset_minimumCompatibilityVersion];
    v6 = v16;
    if (v16)
    {
      v17 = [v16 unsignedIntegerValue];
      v18 = [*(a1 + 48) unsignedIntegerValue];
      v8 = CarThemeAssetsLogging();
      v19 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
      if (v17 > v18)
      {
        if (v19)
        {
          v20 = *(a1 + 48);
          v29 = 138412802;
          v30 = v3;
          v31 = 2112;
          v32 = v6;
          v33 = 2112;
          v34 = v20;
          v21 = "ignoring asset %@, the minimum compatibility version of %@ is not valid for supported compatibility version: %@";
LABEL_21:
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, v21, &v29, 0x20u);
          goto LABEL_22;
        }

        goto LABEL_22;
      }

      if (v19)
      {
        v27 = *(a1 + 48);
        v29 = 138412546;
        v30 = v6;
        v31 = 2112;
        v32 = v27;
        v24 = "asset's minimum compatibility version of %@ is valid for supported compatibility version: %@";
        v25 = v8;
        v26 = 22;
        goto LABEL_27;
      }
    }

    else
    {
      v8 = CarThemeAssetsLogging();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v23 = *(a1 + 48);
        v29 = 138412290;
        v30 = v23;
        v24 = "asset does not have a minimum compatibility version, assuming it works with compatibility version: %@";
        v25 = v8;
        v26 = 12;
LABEL_27:
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, v24, &v29, v26);
      }
    }

    v14 = 1;
    goto LABEL_29;
  }

  v14 = 1;
LABEL_30:

  return v14;
}

void sub_100075C74(uint64_t a1)
{
  v2 = [*(a1 + 32) receiveBuffer];
  if (v2)
  {
    v3 = [*(a1 + 40) length];
    v4 = [v2 length];
    if (__CFADD__(v4, v3) || &v3[v4] > 0x100000)
    {
      v6 = sub_100002A68(2uLL);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_10008A068();
      }

      v5 = +[NSData data];
      [v2 setData:v5];
      goto LABEL_10;
    }

    [v2 appendData:*(a1 + 40)];
    if ([v2 length] <= 6)
    {
      v5 = sub_100002A68(2uLL);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        sub_10008A028();
      }

LABEL_10:

      goto LABEL_32;
    }

    v23 = 0;
    [v2 getBytes:&v23 range:{0, 2}];
    v7 = v23;
    v22 = 0;
    [v2 getBytes:&v22 range:{2, 4}];
    v8 = v22;
    v9 = [v2 length];
    v10 = v9 - 6;
    if (v9 >= 6)
    {
      v13 = bswap32(v8);
      if (v10 < v13)
      {
        v12 = sub_100002A68(2uLL);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
        {
          sub_100089F7C();
        }

        goto LABEL_31;
      }

      if (v10 <= v13)
      {
        v12 = [v2 subdataWithRange:{6, v10}];
        v21 = 0;
        v14 = objc_opt_class();
        v15 = OPACKDecodeData();
        v16 = sub_10003821C(v14, v15);

        v17 = sub_100002A68(2uLL);
        v18 = v17;
        if (v16)
        {
          v19 = bswap32(v7) >> 16;
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 67109378;
            v25 = v19;
            v26 = 2112;
            v27 = v16;
            _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "received message { id: %hu, contents: %@ }", buf, 0x12u);
          }

          v18 = [*(a1 + 32) messageReceiver];
          if (v18 && (objc_opt_respondsToSelector() & 1) != 0)
          {
            [v18 propertyListMessenger:*(a1 + 32) didReceiveMessageWithIdentifier:v19 contents:v16];
          }

          v20 = +[NSData data];
          [v2 setData:v20];
        }

        else if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          sub_100089E98(&v21, v18);
        }

        goto LABEL_31;
      }

      v11 = sub_100002A68(2uLL);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_100089F14();
      }
    }

    else
    {
      v11 = sub_100002A68(2uLL);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_100089FF4();
      }
    }

    v12 = +[NSData data];
    [v2 setData:v12];
LABEL_31:
  }

LABEL_32:
}

void sub_100076520(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = CarGeneralLogging();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "wifid crashed, re-attaching", v4, 2u);
  }

  [v2 _updateWiFiDevice];
  [v2 _powerStateDidChange];
}

void sub_1000765A4(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  v4 = CarGeneralLogging();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "wifi device attached, updating", v5, 2u);
  }

  [v3 _updateWiFiDevice];
}

void sub_100076620(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = CarGeneralLogging();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "wifi power state changed.", v5, 2u);
  }

  [v2 _powerStateDidChange];
  v4 = +[NSNotificationCenter defaultCenter];
  [v4 postNotificationName:@"CRWiFiPowerChangedNotification" object:v2];
}

void sub_100076B10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100076B2C(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  if (v6)
  {
    v9 = v6;
    v7 = v6;
    v8 = *(a1 + 32);
    if (v8 && (*(v8 + 16))(v8, v7))
    {
      *(*(*(a1 + 40) + 8) + 24) = v7;
      CFRetain(*(*(*(a1 + 40) + 8) + 24));
      *a4 = 1;
    }

    CFRelease(v7);
    v6 = v9;
  }
}

id sub_100076C6C(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) _uuidForNetwork:a2];
  v4 = [*(a1 + 40) isEqualToString:v3];

  return v4;
}

id sub_100076D54(uint64_t a1)
{
  v2 = WiFiNetworkGetSSID();
  if (WiFiNetworkIsCarPlay())
  {
    v3 = [*(a1 + 32) isEqualToString:v2];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void sub_1000780FC(uint64_t a1)
{
  v10[0] = @"messageType";
  v10[1] = @"request";
  v11[0] = &off_1000E8290;
  v11[1] = &off_1000E82A8;
  v2 = [NSDictionary dictionaryWithObjects:v11 forKeys:v10 count:2];
  v9 = 0;
  Data = OPACKEncoderCreateData();
  if (Data)
  {
    if ([*(a1 + 32) channelIsOpen])
    {
      v4 = [*(a1 + 32) channel];
      v5 = [v4 sendChannelMessage:Data];

      v6 = sub_100002A68(4uLL);
      v7 = v6;
      if (v5)
      {
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          *v8 = 0;
          _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "sent request for log archive", v8, 2u);
        }
      }

      else if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_10008A180();
      }
    }

    else
    {
      v7 = sub_100002A68(4uLL);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        sub_10008A144();
      }
    }
  }

  else
  {
    v7 = sub_100002A68(4uLL);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_10008A1BC(v2, &v9);
    }
  }
}

void sub_100078348(uint64_t a1)
{
  v11[0] = @"messageType";
  v11[1] = @"request";
  v12[0] = &off_1000E8290;
  v12[1] = &off_1000E82C0;
  v11[2] = @"interval";
  v2 = [NSNumber numberWithUnsignedInteger:*(a1 + 40)];
  v12[2] = v2;
  v3 = [NSDictionary dictionaryWithObjects:v12 forKeys:v11 count:3];

  v10 = 0;
  Data = OPACKEncoderCreateData();
  if (Data)
  {
    if ([*(a1 + 32) channelIsOpen])
    {
      v5 = [*(a1 + 32) channel];
      v6 = [v5 sendChannelMessage:Data];

      v7 = sub_100002A68(4uLL);
      v8 = v7;
      if (v6)
      {
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          *v9 = 0;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "sent request for start statistics", v9, 2u);
        }
      }

      else if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        sub_10008A264();
      }
    }

    else
    {
      v8 = sub_100002A68(4uLL);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        sub_10008A228();
      }
    }
  }

  else
  {
    v8 = sub_100002A68(4uLL);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10008A2A0(v3, &v10);
    }
  }
}

id sub_1000785BC(uint64_t a1)
{
  v2 = [*(a1 + 32) channel];
  [v2 setChannelDelegate:0];

  result = [*(a1 + 32) channelIsOpen];
  if (result)
  {
    v4 = [*(a1 + 32) channel];
    [v4 closeChannel];

    v5 = *(a1 + 32);

    return [v5 setChannelIsOpen:0];
  }

  return result;
}

void sub_1000786F8(uint64_t a1)
{
  v11 = 0;
  objc_opt_class();
  v3 = (a1 + 32);
  v2 = *(a1 + 32);
  v4 = OPACKDecodeData();
  if (v4 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (v5)
  {
    objc_opt_class();
    v6 = [v5 objectForKey:@"messageType"];
    if (v6 && (objc_opt_isKindOfClass() & 1) != 0)
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }

    if (v7)
    {
      v8 = [v7 unsignedIntegerValue];
      if (v8 <= 2)
      {
        if (v8 == 1)
        {
          [*(a1 + 40) _fileQueue_handleFileHeaderMessage:v5];
        }

        else if (v8 == 2)
        {
          [*(a1 + 40) _fileQueue_handleFilePayloadMessage:v5];
        }
      }

      else
      {
        switch(v8)
        {
          case 3:
            v9 = sub_100002A68(4uLL);
            if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
            {
              sub_10008A348();
            }

            goto LABEL_27;
          case 4:
            [*(a1 + 40) _fileQueue_handleStreamPayloadMessage:v5];
            break;
          case 5:
            v9 = sub_100002A68(4uLL);
            if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
            {
              sub_10008A30C();
            }

LABEL_27:

            break;
        }
      }
    }

    else
    {
      v10 = sub_100002A68(4uLL);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_10008A384(v3);
      }
    }
  }

  else
  {
    v7 = sub_100002A68(4uLL);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_10008A3FC((a1 + 32), &v11, v7);
    }
  }
}

void sub_10007A22C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id location)
{
  objc_destroyWeak((v22 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10007A280(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _mainQueue_handleDidDiscoverDevice:v3];
}

void sub_10007A2DC(id a1, NSError *a2)
{
  v2 = a2;
  v3 = sub_100002A68(2uLL);
  v4 = v3;
  if (v2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_10008AA90();
    }
  }

  else if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_10008AB00(v4);
  }
}

void sub_10007A570(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10007A594(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _pairWithBluetoothIdentifier:*(a1 + 32) deviceName:*(a1 + 40)];
}

void sub_10007A7DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10007A800(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _connectWithBluetoothIdentifier:*(a1 + 32) completion:0];
}

void sub_10007AEA8(uint64_t a1, void *a2, int a3, void *a4)
{
  v7 = a2;
  v8 = a4;
  v9 = [v7 identifier];
  v10 = [v9 isEqual:*(a1 + 32)];

  if (v10)
  {
    v11 = sub_100002A68(2uLL);
    v12 = v11;
    if (a3)
    {
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v13 = *(a1 + 32);
        v16 = 141558275;
        v17 = 1752392040;
        v18 = 2113;
        v19 = v13;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "starting BLE pairing to %{private, mask.hash}@", &v16, 0x16u);
      }

      v14 = [*(a1 + 40) centralManager];
      v15 = [v14 sharedPairingAgent];
      [v15 pairPeer:v7];
    }

    else
    {
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_10008AC9C((a1 + 32), v8, v12);
      }

      [*(a1 + 40) _finishedCurrentPairing];
    }
  }
}

void sub_10007B404(uint64_t a1, void *a2, char a3, void *a4)
{
  v7 = a2;
  v8 = a4;
  if (a3)
  {
    v9 = [[CARBluetoothCarPlayService alloc] initWithPeripheral:v7];
    [(CARBluetoothCarPlayService *)v9 setServiceDelegate:*(a1 + 32)];
    v10 = [*(a1 + 32) servicesForBluetoothIdentifiers];
    v11 = [v7 identifier];
    [v10 setObject:v9 forKey:v11];
  }

  else
  {
    v12 = sub_100002A68(2uLL);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_10008AE04();
    }
  }
}

void sub_10007BE08(uint64_t a1)
{
  v2 = sub_100002A68(2uLL);
  if (os_signpost_enabled(v2))
  {
    LOWORD(v5) = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v2, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "OpenedChannel", "", &v5, 2u);
  }

  v3 = sub_100002A68(2uLL);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = *(a1 + 32);
    v5 = 138412290;
    v6 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "activated service: %@", &v5, 0xCu);
  }
}

void sub_10007BFA0(uint64_t a1)
{
  v2 = sub_100002A68(2uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v4 = 138412290;
    v5 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "sent message: %@", &v4, 0xCu);
  }
}

void sub_10007C0E0(uint64_t a1)
{
  v2 = sub_100002A68(2uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    sub_10008AF54(a1);
  }
}

void sub_10007C1F8(void *a1)
{
  v3 = a1 + 4;
  v2 = a1[4];
  v4 = [objc_opt_class() identifier];
  if (v4 == 3)
  {
    v9 = *v3;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = a1[4];
      v10 = a1[5];
      v12 = a1[6];

      [v10 _handleStartSessionMessage:v11 fromService:v12];
    }
  }

  else if (v4 == 1)
  {
    v5 = *v3;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = a1[4];
      v6 = a1[5];
      v8 = a1[6];

      [v6 _handleIdentificationMessage:v7 fromService:v8];
    }
  }

  else
  {
    v13 = sub_100002A68(2uLL);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_10008AFCC(v3);
    }
  }
}

void sub_10007C388(uint64_t a1)
{
  v2 = sub_100002A68(2uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v8 = 138412290;
    v9 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "disconnected service: %@", &v8, 0xCu);
  }

  v4 = [*(a1 + 40) _vehicleForService:*(a1 + 32)];
  if (v4)
  {
    [*(a1 + 40) _removeConnectedVehicle:v4];
  }

  v5 = [*(a1 + 32) peripheral];
  v6 = [v5 identifier];

  v7 = [*(a1 + 40) servicesForBluetoothIdentifiers];
  [v7 removeObjectForKey:v6];
}

void sub_10007D4FC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  dispatch_assert_queue_V2(&_dispatch_main_q);
  if (v5)
  {
    v7 = [v5 BOOLValue];
    v8 = sub_100002A68(2uLL);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 32);
      v10 = @"declined";
      v20 = 1752392040;
      *buf = 141558531;
      if (v7)
      {
        v10 = @"confirmed";
      }

      v21 = 2113;
      v22 = v9;
      v23 = 2114;
      v24 = v10;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "pairing for %{private, mask.hash}@ was %{public}@", buf, 0x20u);
    }

    v11 = [*(a1 + 40) centralManager];
    v12 = [v11 sharedPairingAgent];
    v13 = *(a1 + 48);
    v14 = *(a1 + 56);
    v15 = *(a1 + 64);
    v17 = CBPairingAgentPairingDataPasskeyKey;
    v18 = v14;
    v16 = [NSDictionary dictionaryWithObjects:&v18 forKeys:&v17 count:1];
    [v12 respondToPairingRequest:v13 type:v15 accept:v7 data:v16];
  }

  else
  {
    v11 = sub_100002A68(2uLL);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_10008B2B0();
    }
  }
}

void sub_10007D9F8(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x20u);
}

uint64_t sub_10007DA18()
{
  v0 = type metadata accessor for Logger();
  sub_100080ED0(v0, qword_100108058);
  sub_10007DB00(v0, qword_100108058);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_10007DA9C()
{
  if (qword_100108050 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();

  return sub_10007DB00(v0, qword_100108058);
}

uint64_t sub_10007DB00(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_10007DB38@<X0>(uint64_t a1@<X8>)
{
  if (qword_100108050 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  v3 = sub_10007DB00(v2, qword_100108058);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t variable initialization expression of CRSessionBooster.workQueue()
{
  v8 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v0 = *(v8 - 8);
  v1 = *(v0 + 64);
  __chkstk_darwin();
  v3 = v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *(*(type metadata accessor for OS_dispatch_queue.Attributes() - 8) + 64);
  __chkstk_darwin();
  v5 = *(*(type metadata accessor for DispatchQoS() - 8) + 64);
  __chkstk_darwin();
  v7[1] = sub_10007DE28();
  static DispatchQoS.userInteractive.getter();
  v9 = &_swiftEmptyArrayStorage;
  sub_100080C44(&qword_100107CE8, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_10007DE74(&qword_100107CF0, &unk_1000A40A0);
  sub_100080C8C(&qword_100107CF8, &qword_100107CF0, &unk_1000A40A0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v0 + 104))(v3, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v8);
  return OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
}

unint64_t sub_10007DE28()
{
  result = qword_100107CE0;
  if (!qword_100107CE0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100107CE0);
  }

  return result;
}

uint64_t sub_10007DE74(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_10007DEBC(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_10007DF04@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_10007DFA8();
  result = *(a1 + OBJC_IVAR____TtC7carkitd16CRSessionBooster_workQueue_connection);
  if (!result || (v5 = [result remoteObjectProxy], _bridgeAnyObjectToAny(_:)(), swift_unknownObjectRelease(), sub_10007DE74(&unk_100107E90, qword_1000A40F8), result = swift_dynamicCast(), (result & 1) == 0))
  {
    *a2 = 0;
  }

  return result;
}

void sub_10007DFA8()
{
  v1 = OBJC_IVAR____TtC7carkitd16CRSessionBooster_workQueue_connection;
  if (*(v0 + OBJC_IVAR____TtC7carkitd16CRSessionBooster_workQueue_connection))
  {
    if (qword_100108050 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_10007DB00(v2, qword_100108058);
    oslog = Logger.logObject.getter();
    v3 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(oslog, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      aBlock = v5;
      *v4 = 136315138;
      *(v4 + 4) = sub_100080028(0xD00000000000001BLL, 0x80000001000AA100, &aBlock);
      _os_log_impl(&_mh_execute_header, oslog, v3, "[XPC] %s already connected", v4, 0xCu);
      sub_1000805D0(v5);
    }

    else
    {
    }
  }

  else
  {
    v6 = v0;
    if (qword_100108050 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_10007DB00(v7, qword_100108058);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      aBlock = v11;
      *v10 = 136315138;
      *(v10 + 4) = sub_100080028(0xD00000000000001BLL, 0x80000001000AA100, &aBlock);
      _os_log_impl(&_mh_execute_header, v8, v9, "[XPC] %s start", v10, 0xCu);
      sub_1000805D0(v11);
    }

    v12 = objc_allocWithZone(NSXPCConnection);
    v13 = String._bridgeToObjectiveC()();
    v14 = [v12 initWithMachServiceName:v13 options:4096];

    v15 = CRSessionBoostClientInterface();
    [v14 setExportedInterface:v15];

    [v14 setExportedObject:v0];
    v16 = CRSessionBoostServiceInterface();
    [v14 setRemoteObjectInterface:v16];

    v17 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v33 = sub_100080D40;
    v34 = v17;
    aBlock = _NSConcreteStackBlock;
    v30 = 1107296256;
    v31 = sub_100080F40;
    v32 = &unk_1000E0400;
    v18 = _Block_copy(&aBlock);

    [v14 setInterruptionHandler:v18];
    _Block_release(v18);
    v33 = sub_10007F1FC;
    v34 = 0;
    aBlock = _NSConcreteStackBlock;
    v30 = 1107296256;
    v31 = sub_100080F40;
    v32 = &unk_1000E0428;
    v19 = _Block_copy(&aBlock);
    [v14 setInvalidationHandler:v19];
    _Block_release(v19);
    [v14 activate];
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      aBlock = v23;
      *v22 = 136315138;
      *(v22 + 4) = sub_100080028(0xD00000000000001BLL, 0x80000001000AA100, &aBlock);
      _os_log_impl(&_mh_execute_header, v20, v21, "[XPC] %s done", v22, 0xCu);
      sub_1000805D0(v23);
    }

    v24 = *(v6 + v1);
    *(v6 + v1) = v14;
    v25 = v14;

    v26 = [v25 remoteObjectProxy];
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    sub_10007DE74(&unk_100107E90, qword_1000A40F8);
    if (swift_dynamicCast())
    {
      [v28 activate];
      swift_unknownObjectRelease();
    }
  }
}

id CRSessionBooster.init(sessionStatus:)(void *a1)
{
  v21 = a1;
  ObjectType = swift_getObjectType();
  v18 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v1 = *(v18 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin();
  v4 = v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(*(type metadata accessor for OS_dispatch_queue.Attributes() - 8) + 64);
  __chkstk_darwin();
  v6 = *(*(type metadata accessor for DispatchQoS() - 8) + 64);
  __chkstk_darwin();
  v17 = OBJC_IVAR____TtC7carkitd16CRSessionBooster_workQueue;
  v16[1] = sub_10007DE28();
  static DispatchQoS.userInteractive.getter();
  v23 = &_swiftEmptyArrayStorage;
  sub_100080C44(&qword_100107CE8, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_10007DE74(&qword_100107CF0, &unk_1000A40A0);
  sub_100080C8C(&qword_100107CF8, &qword_100107CF0, &unk_1000A40A0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v1 + 104))(v4, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v18);
  v7 = v19;
  *&v7[v17] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *&v7[OBJC_IVAR____TtC7carkitd16CRSessionBooster_workQueue_connection] = 0;
  if (qword_100108050 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_10007DB00(v8, qword_100108058);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "[booster] init", v11, 2u);
  }

  v12 = v21;
  *&v7[OBJC_IVAR____TtC7carkitd16CRSessionBooster_workQueue_sessionStatus] = v21;
  v22.receiver = v7;
  v22.super_class = ObjectType;
  v13 = v12;
  v14 = objc_msgSendSuper2(&v22, "init");
  [v13 addSessionObserver:v14];
  sub_10007E95C();

  return v14;
}

uint64_t sub_10007E95C()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v14 = *(v1 - 8);
  v2 = *(v14 + 64);
  __chkstk_darwin();
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DispatchQoS();
  v5 = *(v13 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin();
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v0 + OBJC_IVAR____TtC7carkitd16CRSessionBooster_workQueue);
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_100080E80;
  aBlock[5] = v9;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100080F40;
  aBlock[3] = &unk_1000E0450;
  v10 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v15 = &_swiftEmptyArrayStorage;
  sub_100080C44(&qword_100107E70, &type metadata accessor for DispatchWorkItemFlags);
  sub_10007DE74(&qword_100107E78, &qword_1000A40E8);
  sub_100080C8C(&qword_100107E80, &qword_100107E78, &qword_1000A40E8);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v10);
  (*(v14 + 8))(v4, v1);
  (*(v5 + 8))(v8, v13);
}

id CRSessionBooster.__deallocating_deinit()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  if (qword_100108050 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_10007DB00(v3, qword_100108058);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "[booster] deinit", v6, 2u);
  }

  v8.receiver = v1;
  v8.super_class = ObjectType;
  return objc_msgSendSuper2(&v8, "dealloc");
}

uint64_t sub_10007EDF0()
{
  v23 = type metadata accessor for DispatchWorkItemFlags();
  v25 = *(v23 - 8);
  v1 = *(v25 + 64);
  (__chkstk_darwin)();
  v3 = &v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for DispatchQoS();
  v22 = *(v24 - 8);
  v4 = *(v22 + 64);
  (__chkstk_darwin)();
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchTime();
  v21 = v7;
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = (__chkstk_darwin)();
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v19 - v13;
  v19 = *(v0 + OBJC_IVAR____TtC7carkitd16CRSessionBooster_workQueue);
  static DispatchTime.now()();
  + infix(_:_:)();
  v20 = *(v8 + 8);
  v20(v12, v7);
  v15 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_1000808D8;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100080F40;
  aBlock[3] = &unk_1000E03D8;
  v16 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v26 = &_swiftEmptyArrayStorage;
  sub_100080C44(&qword_100107E70, &type metadata accessor for DispatchWorkItemFlags);
  sub_10007DE74(&qword_100107E78, &qword_1000A40E8);
  sub_100080C8C(&qword_100107E80, &qword_100107E78, &qword_1000A40E8);
  v17 = v23;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  _Block_release(v16);
  (*(v25 + 8))(v3, v17);
  (*(v22 + 8))(v6, v24);
  v20(v14, v21);
}

uint64_t sub_10007F1B8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

void sub_10007F1FC()
{
  if (qword_100108050 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_10007DB00(v0, qword_100108058);
  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v1, "[XPC] Connection invalidated", v2, 2u);
  }
}

Swift::Void __swiftcall CRSessionBooster.connectionRequested()()
{
  v1 = v0;
  if (qword_100108050 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10007DB00(v2, qword_100108058);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v8 = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_100080028(0xD000000000000015, 0x80000001000A9F10, &v8);
    _os_log_impl(&_mh_execute_header, v3, v4, "[Session] %s", v5, 0xCu);
    sub_1000805D0(v6);
  }

  v7 = *(v1 + OBJC_IVAR____TtC7carkitd16CRSessionBooster_workQueue);
  __chkstk_darwin();
  sub_10007DE74(&qword_100107D78, &qword_1000A40B0);
  OS_dispatch_queue.sync<A>(execute:)();
  if (v8)
  {
    [v8 connectionRequested];
    swift_unknownObjectRelease();
  }
}

id CRSessionBooster.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

Swift::Void __swiftcall CRSessionBooster.activate()()
{
  if (qword_100108050 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_10007DB00(v0, qword_100108058);
  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v5 = v3;
    *v2 = 136315138;
    *(v2 + 4) = sub_100080028(0x6574617669746361, 0xEA00000000002928, &v5);
    _os_log_impl(&_mh_execute_header, oslog, v1, "[Client] %s", v2, 0xCu);
    sub_1000805D0(v3);
  }
}

uint64_t CRSessionBooster.startedConnectionAttempt(on:)(uint64_t a1)
{
  v2 = v1;
  if (qword_100108050 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10007DB00(v4, qword_100108058);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v11 = v8;
    *v7 = 136315394;
    *(v7 + 4) = sub_100080028(0xD00000000000001DLL, 0x80000001000A9F50, &v11);
    *(v7 + 12) = 2048;
    *(v7 + 14) = a1;
    _os_log_impl(&_mh_execute_header, v5, v6, "[Session] %s transport=%lu", v7, 0x16u);
    sub_1000805D0(v8);
  }

  v9 = *(v2 + OBJC_IVAR____TtC7carkitd16CRSessionBooster_workQueue);
  __chkstk_darwin();
  sub_10007DE74(&qword_100107D78, &qword_1000A40B0);
  result = OS_dispatch_queue.sync<A>(execute:)();
  if (v11)
  {
    [v11 connectionAttempted];
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t CRSessionBooster.cancelledConnectionAttempt(on:)(uint64_t a1)
{
  if (qword_100108050 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10007DB00(v2, qword_100108058);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v8 = v6;
    *v5 = 136315394;
    *(v5 + 4) = sub_100080028(0xD00000000000001FLL, 0x80000001000A9F70, &v8);
    *(v5 + 12) = 2048;
    *(v5 + 14) = a1;
    _os_log_impl(&_mh_execute_header, v3, v4, "[Session] %s transport=%lu", v5, 0x16u);
    sub_1000805D0(v6);
  }

  return sub_10007EDF0();
}

uint64_t CRSessionBooster.sessionDidConnect(_:)(void *a1)
{
  v2 = v1;
  if (qword_100108050 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10007DB00(v4, qword_100108058);
  v5 = a1;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v15 = v10;
    *v8 = 136315394;
    *(v8 + 4) = sub_100080028(0xD000000000000015, 0x80000001000A9F90, &v15);
    *(v8 + 12) = 2112;
    *(v8 + 14) = v5;
    *v9 = v5;
    v11 = v5;
    _os_log_impl(&_mh_execute_header, v6, v7, "[Session] %s session=%@", v8, 0x16u);
    sub_10008061C(v9);

    sub_1000805D0(v10);
  }

  v12 = *(v2 + OBJC_IVAR____TtC7carkitd16CRSessionBooster_workQueue);
  __chkstk_darwin(v13);
  sub_10007DE74(&qword_100107D78, &qword_1000A40B0);
  result = OS_dispatch_queue.sync<A>(execute:)();
  if (v15)
  {
    [v15 sessionConnected];
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t CRSessionBooster.sessionDidDisconnect(_:)(void *a1)
{
  if (qword_100108050 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10007DB00(v2, qword_100108058);
  v3 = a1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v11 = v8;
    *v6 = 136315394;
    *(v6 + 4) = sub_100080028(0xD000000000000018, 0x80000001000A9FB0, &v11);
    *(v6 + 12) = 2112;
    *(v6 + 14) = v3;
    *v7 = v3;
    v9 = v3;
    _os_log_impl(&_mh_execute_header, v4, v5, "[Session] %s session=%@", v6, 0x16u);
    sub_10008061C(v7);

    sub_1000805D0(v8);
  }

  return sub_10007EDF0();
}

uint64_t sub_100080028(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1000800F4(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_100080CE0(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_1000805D0(v11);
  return v7;
}

unint64_t sub_1000800F4(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_100080200(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = _StringObject.sharedUTF8.getter();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

char *sub_100080200(uint64_t a1, unint64_t a2)
{
  v4 = sub_10008024C(a1, a2);
  sub_10008037C(&off_1000E0338);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_10008024C(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return &_swiftEmptyArrayStorage;
  }

  v6 = sub_100080468(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 32, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = _StringObject.sharedUTF8.getter();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 32, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = String.UTF8View._foreignCount()();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_100080468(v10, 0);
        result = _StringGuts._foreignCopyUTF8(into:)();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_10008037C(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_1000804DC(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_100080468(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return &_swiftEmptyArrayStorage;
  }

  sub_10007DE74(&qword_100107E88, &qword_1000A40F0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_1000804DC(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10007DE74(&qword_100107E88, &qword_1000A40F0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t sub_1000805D0(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_10008061C(uint64_t a1)
{
  v2 = sub_10007DE74(&qword_100107D80, &qword_1000A40B8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t _s7carkitd16CRSessionBoosterC7session_9didUpdateySo10CARSessionC_So0G13ConfigurationCtF_0(void *a1)
{
  v2 = v1;
  if (qword_100108050 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10007DB00(v4, qword_100108058);
  v5 = a1;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v15 = v10;
    *v8 = 136315394;
    *(v8 + 4) = sub_100080028(0xD000000000000015, 0x80000001000AA090, &v15);
    *(v8 + 12) = 2112;
    *(v8 + 14) = v5;
    *v9 = v5;
    v11 = v5;
    _os_log_impl(&_mh_execute_header, v6, v7, "[Session] %s session=%@", v8, 0x16u);
    sub_10008061C(v9);

    sub_1000805D0(v10);
  }

  v12 = *(v2 + OBJC_IVAR____TtC7carkitd16CRSessionBooster_workQueue);
  __chkstk_darwin(v13);
  sub_10007DE74(&qword_100107D78, &qword_1000A40B0);
  result = OS_dispatch_queue.sync<A>(execute:)();
  if (v15)
  {
    [v15 sessionDidUpdate];
    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_1000808D8()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = [*(Strong + OBJC_IVAR____TtC7carkitd16CRSessionBooster_workQueue_sessionStatus) currentSession];
    if (v2)
    {

      if (qword_100108050 != -1)
      {
        swift_once();
      }

      v3 = type metadata accessor for Logger();
      sub_10007DB00(v3, qword_100108058);
      v4 = Logger.logObject.getter();
      v5 = static os_log_type_t.debug.getter();
      if (!os_log_type_enabled(v4, v5))
      {
        goto LABEL_17;
      }

      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v17 = v7;
      *v6 = 136315138;
      *(v6 + 4) = sub_100080028(0xD000000000000014, 0x80000001000AA0B0, &v17);
      v8 = "[XPC] %s still connected";
    }

    else
    {
      if (qword_100108050 != -1)
      {
        swift_once();
      }

      v9 = type metadata accessor for Logger();
      sub_10007DB00(v9, qword_100108058);
      v10 = Logger.logObject.getter();
      v11 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        v13 = swift_slowAlloc();
        v17 = v13;
        *v12 = 136315138;
        *(v12 + 4) = sub_100080028(0xD000000000000014, 0x80000001000AA0B0, &v17);
        _os_log_impl(&_mh_execute_header, v10, v11, "[XPC] %s start", v12, 0xCu);
        sub_1000805D0(v13);
      }

      v14 = OBJC_IVAR____TtC7carkitd16CRSessionBooster_workQueue_connection;
      v15 = *&v1[OBJC_IVAR____TtC7carkitd16CRSessionBooster_workQueue_connection];
      if (v15)
      {
        [v15 invalidate];
        v16 = *&v1[v14];
      }

      else
      {
        v16 = 0;
      }

      *&v1[v14] = 0;

      v4 = Logger.logObject.getter();
      v5 = static os_log_type_t.debug.getter();
      if (!os_log_type_enabled(v4, v5))
      {
        goto LABEL_17;
      }

      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v17 = v7;
      *v6 = 136315138;
      *(v6 + 4) = sub_100080028(0xD000000000000014, 0x80000001000AA0B0, &v17);
      v8 = "[XPC] %s done";
    }

    _os_log_impl(&_mh_execute_header, v4, v5, v8, v6, 0xCu);
    sub_1000805D0(v7);

LABEL_17:
  }
}

uint64_t sub_100080C2C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100080C44(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100080C8C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_10007DEBC(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100080CE0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

void sub_100080D40()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    if (qword_100108050 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_10007DB00(v2, qword_100108058);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "[XPC] Connection interrupted", v5, 2u);
    }

    v6 = OBJC_IVAR____TtC7carkitd16CRSessionBooster_workQueue_connection;
    v7 = *&v1[OBJC_IVAR____TtC7carkitd16CRSessionBooster_workQueue_connection];
    if (v7)
    {
      [v7 invalidate];
      v8 = *&v1[v6];
    }

    else
    {
      v8 = 0;
    }

    *&v1[v6] = 0;

    sub_10007E95C();
  }
}

void sub_100080E80()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_10007DFA8();
  }
}

uint64_t *sub_100080ED0(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

void sub_100080F68(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *v3 = 138412546;
  *&v3[4] = *(a1 + 32);
  *&v3[12] = 2114;
  *&v3[14] = a2;
  sub_1000045A4(&_mh_execute_header, a2, a3, "Error presenting bulletin %@: %{public}@", *v3, *&v3[8], *&v3[16]);
}

void sub_100080FE4(uint64_t a1, NSObject *a2)
{
  v2 = *(a1 + 32);
  v3 = 138412290;
  v4 = v2;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "Successfully requested bulletin %@", &v3, 0xCu);
}

void sub_100081060(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *v3 = 138543618;
  *&v3[4] = a1;
  *&v3[12] = 2112;
  *&v3[14] = a2;
  sub_1000045A4(&_mh_execute_header, a2, a3, "No matching action for %{public}@ on bulletin %@", *v3, *&v3[8], *&v3[16]);
}

void sub_1000810D8(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_fault_impl(&_mh_execute_header, a2, OS_LOG_TYPE_FAULT, "No known presented bulletin matching identifier %@", &v2, 0xCu);
}

void sub_100081194(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "failed to open URL to save file: %@", &v2, 0xCu);
}

void sub_10008120C(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = NSStringFromBOOL();
  sub_100006264(&_mh_execute_header, v3, v4, "[NightModeFallback] Posting notification with night mode: %@", v5, v6, v7, v8, 2u);
}

void sub_100081300(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "[NightModeFallback] Failed to get a location with error: %@", &v2, 0xCu);
}

void sub_1000813AC(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = NSStringFromBOOL();
  sub_100006264(&_mh_execute_header, v3, v4, "[NightModeFallback] Initial fallback night mode value: %@", v5, v6, v7, v8, 2u);
}

void sub_1000815D8()
{
  sub_10000B29C();
  sub_10000B28C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_100081654()
{
  sub_10000B29C();
  sub_10000B28C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_100081754(uint64_t a1, void *a2)
{
  v2 = [a2 vehicleName];
  sub_10000B2A8();
  sub_10000B2CC(&_mh_execute_header, v3, v4, "Failed to save vehicle preferences: %@ %@", v5, v6, v7, v8, v9);
}

void sub_1000817E8(uint64_t a1, void *a2)
{
  v2 = [a2 vehicleName];
  sub_10000B2A8();
  sub_10000B2CC(&_mh_execute_header, v3, v4, "Failed to remove vehicle preferences: %@ %@", v5, v6, v7, v8, v9);
}

void sub_10008187C()
{
  sub_10000B274();
  sub_10000B28C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_1000818EC()
{
  sub_10000B274();
  sub_10000B28C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_100081A10(void *a1, NSObject *a2)
{
  [a1 count];
  sub_10000B29C();
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "using cache with %lu vehicles", v3, 0xCu);
}

void sub_100081A98()
{
  sub_10000B274();
  sub_10000B28C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_100081B08()
{
  sub_10000B29C();
  sub_10000B2C0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100081C28()
{
  sub_100006258();
  sub_10000B2C0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100081CA4(id *a1)
{
  v1 = [*a1 streamError];
  sub_10000FB5C(&_mh_execute_header, v2, v3, "L2CAP output stream error: %@", v4, v5, v6, v7, 2u);
}

void sub_100081D30(id *a1)
{
  v1 = [*a1 streamError];
  sub_10000FB5C(&_mh_execute_header, v2, v3, "L2CAP input stream error: %@", v4, v5, v6, v7, 2u);
}

void sub_100081DBC(uint64_t *a1)
{
  v6 = *a1;
  sub_10000B2C0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_100081E34()
{
  sub_100006258();
  sub_10000B2C0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100081E70()
{
  sub_100006258();
  sub_10000B2C0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100081EAC(uint64_t a1)
{
  v6 = *(a1 + 40);
  sub_10000B2C0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_100081F24(void *a1)
{
  v1 = [a1 UUIDString];
  sub_10000FB5C(&_mh_execute_header, v2, v3, "disablesCarPlayFeatures: no vehicle for id %@", v4, v5, v6, v7, 2u);
}

void sub_10008207C(void *a1, NSObject *a2)
{
  v3 = 138412546;
  v4 = a1;
  v5 = 1024;
  v6 = [a1 processIdentifier];
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "certification override service connection is not entitled: %@: process: %i", &v3, 0x12u);
}

void sub_100082118(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "non-string objects in array: %@", &v2, 0xCu);
}

void sub_100082190()
{
  sub_100015A64();
  v1 = [v0 region];
  [v1 center];
  v2 = [sub_100015A58() region];
  [v2 center];
  sub_100015A20();
  sub_100015A38(&_mh_execute_header, v3, v4, "Currently in region with lat/long: {%f, %f}", v5, v6, v7, v8, v9);
}

void sub_100082240(os_log_t log, double a2, double a3)
{
  v3 = 134218240;
  v4 = a2;
  v5 = 2048;
  v6 = a3;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "Creating geofence around lat/long: {%f, %f}", &v3, 0x16u);
}

void sub_1000822C8()
{
  sub_100015A64();
  v1 = [v0 location];
  [v1 latitude];
  v2 = [sub_100015A58() location];
  [v2 longitude];
  sub_100015A70();
  sub_100015A38(&_mh_execute_header, v3, v4, "Geofence already exists around lat/long: {%f, %f}", v5, v6, v7, v8, v9);
}

void sub_100082378()
{
  sub_100015A64();
  v1 = [v0 location];
  [v1 latitude];
  v2 = [sub_100015A58() location];
  [v2 longitude];
  sub_100015A70();
  sub_100015A38(&_mh_execute_header, v3, v4, "Not creating geofence around {%f, %f} since we're at our maximum geofence count.", v5, v6, v7, v8, v9);
}

void sub_100082428()
{
  sub_100015A64();
  [v0 center];
  [sub_100015A58() center];
  sub_100015A20();
  sub_100015A38(&_mh_execute_header, v1, v2, "Begin monitoring for lat/long: {%f, %f}", v3, v4, v5, v6, v7);
}

void sub_1000824B0()
{
  sub_100015A64();
  [v0 center];
  [sub_100015A58() center];
  sub_100015A20();
  sub_100015A38(&_mh_execute_header, v1, v2, "Entered region for lat/long: {%f, %f}", v3, v4, v5, v6, v7);
}

void sub_100082538()
{
  sub_100015A64();
  [v0 center];
  [sub_100015A58() center];
  sub_100015A20();
  sub_100015A38(&_mh_execute_header, v1, v2, "Exited region for lat/long: {%f, %f}", v3, v4, v5, v6, v7);
}

void sub_1000825C0(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_fault_impl(&_mh_execute_header, a2, OS_LOG_TYPE_FAULT, "Location manager failed for Geofencing: %@", &v2, 0xCu);
}

void sub_1000826E8(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "presentHeadUnitPairingPrompt completed with error: %@", &v2, 0xCu);
}

void sub_100082760(char a1, NSObject *a2)
{
  v2 = @"NO";
  if (a1)
  {
    v2 = @"YES";
  }

  v3 = 138543362;
  v4 = v2;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "handleReceivedResponse: %{public}@", &v3, 0xCu);
}

void sub_100082878(uint64_t *a1, NSObject *a2)
{
  v2 = *a1;
  v3 = 138412290;
  v4 = v2;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "CarPlaySetup did invalidate with error %@", &v3, 0xCu);
}

void sub_100082978(uint64_t a1)
{
  v1 = *(a1 + 40);
  sub_100019650();
  sub_10000B2C0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_1000829EC(uint64_t a1)
{
  v1 = *(a1 + 40);
  sub_100019650();
  sub_10000B2C0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_100082A60(uint64_t *a1)
{
  sub_10001965C(a1, __stack_chk_guard);
  sub_100019650();
  sub_10000B28C();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_100082ADC(uint64_t *a1)
{
  sub_10001965C(a1, __stack_chk_guard);
  sub_100019650();
  sub_10000B28C();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_100082B58()
{
  sub_100006258();
  sub_10000B2C0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100082B94()
{
  sub_100006258();
  sub_10000B2C0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100082BD0(int *a1)
{
  v6 = *a1;
  sub_10000B2C0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
}

void sub_100082C48(int *a1)
{
  v6 = *a1;
  sub_10000B2C0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
}

void sub_100082CC0()
{
  sub_100006258();
  sub_10000B2C0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100082CFC()
{
  sub_100006258();
  sub_10000B2C0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100082D38()
{
  sub_100006258();
  sub_10000B2C0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100082E9C(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "received file data reply: %@", &v2, 0xCu);
}

void sub_100082F14()
{
  sub_100006258();
  sub_10000B2C0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100082F50()
{
  sub_100006258();
  sub_10000B2C0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100082F8C()
{
  sub_100006258();
  sub_10000B2C0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100082FC8(uint64_t *a1)
{
  sub_10001965C(a1, __stack_chk_guard);
  sub_100019650();
  sub_10000B2C0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_100083038(uint64_t *a1)
{
  sub_10001965C(a1, __stack_chk_guard);
  v2 = *v1;
  sub_100019650();
  sub_10000B28C();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x12u);
}

void sub_1000830B8(uint64_t *a1)
{
  v1 = *a1;
  sub_10001BB50();
  sub_10001BB30();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_100083138()
{
  sub_10001BB3C();
  sub_10001BB30();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_1000832B4(uint64_t a1)
{
  v1 = *(a1 + 32);
  sub_10001BB50();
  sub_10001BB30();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_100083334(uint64_t a1)
{
  v1 = *(a1 + 32);
  sub_10001BB50();
  sub_10001BB30();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_100083434()
{
  sub_10001BB1C();
  sub_10001BB30();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_1000834B0()
{
  sub_10001BB1C();
  sub_10001BB30();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_1000835AC()
{
  sub_10001BB3C();
  sub_10001BB30();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_100083628()
{
  sub_10001BB3C();
  sub_10001BB30();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_1000836A4()
{
  sub_10001BB1C();
  sub_10001BB30();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_100083720()
{
  sub_10001BB1C();
  sub_10001BB30();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_10008379C()
{
  sub_10001BB1C();
  sub_10001BB30();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_100083818()
{
  sub_10001BB1C();
  sub_10001BB30();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_1000838D8(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "error calling setup prompt presenter service: %@", &v2, 0xCu);
}

void sub_100083994(void *a1)
{
  [a1 processIdentifier];
  sub_1000207C4();
  sub_1000207DC(&_mh_execute_header, v1, v2, "pairing service connection is not entitled: %@: process: %i", v3, v4, v5, v6, v7);
}

void sub_100083A50(void *a1)
{
  [a1 processIdentifier];
  sub_1000207C4();
  sub_1000207DC(&_mh_execute_header, v1, v2, "HUP prompt service connection is not entitled: %@: process: %i", v3, v4, v5, v6, v7);
}

void sub_100083B34(os_log_t log)
{
  v1 = 138412290;
  v2 = 0;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "failed to save vehicle for head unit pairing: %@", &v1, 0xCu);
}

void sub_100083C64()
{
  sub_10001BB3C();
  sub_10001BB30();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_100083CE0()
{
  sub_10001BB3C();
  sub_10001BB30();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_100083E4C(uint64_t a1, NSObject *a2)
{
  v2 = 138412546;
  v3 = 0;
  v4 = 2048;
  v5 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Failed to query for CarPlay MobileAssets asset: %@, queryResult: %ld", &v2, 0x16u);
}

void sub_100083ED0(void *a1)
{
  v6 = [a1 localizedDescription];
  sub_100022154();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_100083F64(void *a1)
{
  v6 = [a1 localizedDescription];
  sub_100022154();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_100084030(void *a1)
{
  [a1 processIdentifier];
  sub_100022154();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x12u);
}

void sub_1000840C8(void *a1)
{
  [a1 processIdentifier];
  sub_100022154();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x12u);
}

void sub_100084160(uint64_t a1, uint64_t *a2)
{
  sub_100036B88(a2, __stack_chk_guard);
  sub_100036B04();
  sub_10000B28C();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x2Au);
}

void sub_1000841D0()
{
  sub_10000B29C();
  sub_10000B2C0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100084240(unsigned int *a1)
{
  v1 = *a1;
  sub_100019650();
  sub_10000B2C0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_1000842B4()
{
  sub_100006258();
  sub_10000B2C0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000842F0()
{
  sub_100006258();
  sub_10000B2C0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10008432C()
{
  sub_10000B29C();
  sub_10000B2C0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10008439C()
{
  sub_10000B29C();
  sub_10000B2C0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10008440C(uint64_t *a1)
{
  sub_10001965C(a1, __stack_chk_guard);
  v2 = *(v1 + 24);
  sub_100019650();
  sub_100036B58(&_mh_execute_header, v3, v4, "deviceSupportedCarPlayFeatures %{public}lu", v5, v6, v7, v8, v9);
}

void sub_100084478(uint64_t *a1)
{
  sub_10001965C(a1, __stack_chk_guard);
  if (*(v3 + 24))
  {
    v4 = @"YES";
  }

  else
  {
    v4 = @"NO";
  }

  *v5 = 134349314;
  *&v5[4] = v1;
  *&v5[12] = 2114;
  *&v5[14] = v4;
  sub_100036B38(&_mh_execute_header, v1, v2, "disablesCarPlayFeatures %{public}lu: %{public}@", *v5, *&v5[8], *&v5[16]);
}

void sub_10008450C(uint64_t *a1)
{
  sub_10001965C(a1, __stack_chk_guard);
  *(v1 + 24);
  sub_100019650();
  sub_100036B58(&_mh_execute_header, v2, v3, "setCarPlayFeaturesDisabled was successful: %{public}@", v4, v5, v6, v7, v8);
}

void sub_100084590(uint64_t *a1)
{
  sub_10001965C(a1, __stack_chk_guard);
  sub_100019650();
  sub_10000B2C0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_100084600(uint64_t *a1)
{
  sub_10001965C(a1, __stack_chk_guard);
  sub_100019650();
  sub_10000B2C0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_1000846D8()
{
  sub_100006258();
  sub_10000B2C0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100084714()
{
  sub_100006258();
  sub_10000B2C0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100084750()
{
  sub_100006258();
  sub_10000B2C0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10008478C()
{
  sub_100006258();
  sub_10000B2C0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000847C8(uint64_t a1, uint64_t *a2)
{
  sub_100036B88(a2, __stack_chk_guard);
  sub_100036B04();
  sub_10000B28C();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x2Au);
}

void sub_100084838()
{
  sub_100006258();
  sub_10000B2C0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100084874(void *a1)
{
  v1 = [a1 description];
  sub_10000B29C();
  sub_100022154();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_100084900()
{
  sub_100006258();
  sub_10000B2C0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10008493C(uint64_t a1)
{
  v1 = *(a1 + 32);
  sub_100019650();
  sub_10000B28C();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_1000849BC()
{
  sub_10000B29C();
  sub_10000B2C0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100084A2C(void *a1)
{
  v1 = [a1 identifier];
  sub_10000B29C();
  sub_100022154();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_100084AB8()
{
  sub_100006258();
  sub_10000B2C0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100084B80()
{
  sub_100006258();
  sub_10000B2C0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

uint64_t sub_100084C30()
{
  dlerror();
  v0 = abort_report_np();
  return sub_100084C54(v0);
}

void sub_100084C54()
{
  sub_10000B29C();
  sub_10000B2C0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100084CC4()
{
  sub_10000B29C();
  sub_10000B2C0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100084D34()
{
  sub_100006258();
  sub_10000B2C0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100084D70(uint64_t a1)
{
  v1 = [*(a1 + 48) identifier];
  sub_10000B29C();
  sub_100022154();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_100084E00()
{
  sub_100006258();
  sub_10000B2C0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100084EB0(uint64_t a1)
{
  v1 = *(a1 + 40);
  sub_100019650();
  sub_10000B2C0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_100084F24()
{
  sub_10000B29C();
  sub_10000B2C0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100084F94()
{
  sub_10000B29C();
  sub_10000B2C0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100085004()
{
  sub_100006258();
  sub_10000B2C0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100085040()
{
  sub_100036B74();
  sub_10000B28C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Au);
}

void sub_1000850D0()
{
  sub_100006258();
  sub_10000B2C0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10008510C()
{
  sub_100036B74();
  sub_10000B28C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
}

void sub_100085194()
{
  sub_100006258();
  sub_10000B2C0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000851D0(uint64_t *a1)
{
  sub_10001965C(a1, __stack_chk_guard);
  v2 = *(*(v1 + 8) + 40);
  sub_100019650();
  sub_10000B2C0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);
}

void sub_100085248()
{
  sub_100006258();
  sub_10000B2C0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100085284()
{
  sub_100006258();
  sub_10000B2C0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000852C0(uint64_t a1, uint64_t *a2)
{
  sub_100036B88(a2, __stack_chk_guard);
  sub_100036B04();
  sub_10000B28C();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x2Au);
}

void sub_100085330()
{
  sub_100006258();
  sub_10000B2C0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10008536C(void *a1)
{
  v1 = [a1 localizedDescription];
  sub_10000B29C();
  sub_100022154();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_1000853F8(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Asset is disabled for AssetID=%@", &v2, 0xCu);
}

void sub_100085E44()
{
  sub_10001BB3C();
  sub_10001BB30();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_100085FD4(void *a1)
{
  v1 = [a1 name];
  sub_10001BB3C();
  sub_10003D5A0();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_10008606C(void *a1)
{
  v1 = [a1 name];
  sub_10001BB3C();
  sub_10003D5A0();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_100086104()
{
  sub_10003D590(__stack_chk_guard);
  if (!(!v2 & v1))
  {
    v3 = off_1000DE8F0[v0];
  }

  sub_10001BB50();
  sub_10001BB30();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x16u);
}

void sub_10008619C()
{
  sub_10003D590(__stack_chk_guard);
  if (!(!v2 & v1))
  {
    v3 = off_1000DE8F0[v0];
  }

  sub_10001BB50();
  sub_10001BB30();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x16u);
}

void sub_100086234()
{
  sub_10003D590(__stack_chk_guard);
  if (!(!v2 & v1))
  {
    v3 = off_1000DE8F0[v0];
  }

  sub_10001BB50();
  sub_10001BB30();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x16u);
}

void sub_1000862CC()
{
  sub_10003D590(__stack_chk_guard);
  if (!(!v2 & v1))
  {
    v3 = off_1000DE8F0[v0];
  }

  sub_10001BB50();
  sub_10001BB30();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x16u);
}

void sub_100086364()
{
  sub_10001BB3C();
  sub_10001BB30();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_1000863E0()
{
  sub_10003D590(__stack_chk_guard);
  if (!(!v2 & v1))
  {
    v3 = off_1000DE8F0[v0];
  }

  sub_10001BB50();
  sub_10001BB30();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x16u);
}

void sub_100086478(id *a1, uint64_t a2)
{
  [*a1 indexOfObject:a2];
  sub_10001BB1C();
  sub_10003D5A0();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x20u);
}

void sub_10008669C(uint64_t a1)
{
  [*(a1 + 64) count];
  sub_10001BB1C();
  sub_10003D5A0();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_100086740()
{
  v1[0] = 136315394;
  sub_10001BB3C();
  _os_log_error_impl(&_mh_execute_header, v0, OS_LOG_TYPE_ERROR, "%s: Car Capabilities plist key %@ is not allowlisted", v1, 0x16u);
}

void sub_10008689C(void *a1, NSObject *a2)
{
  v3 = 138412546;
  v4 = a1;
  v5 = 1024;
  v6 = [a1 processIdentifier];
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "setup prompt service connection is not entitled: %@: process: %i", &v3, 0x12u);
}

void sub_100086AA0(void *a1, NSObject *a2)
{
  v3 = 138412290;
  v4 = [a1 lock_lockdownConnection];
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Failed to get socket for lockdown connection: %@", &v3, 0xCu);
}

void sub_100086B54(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "no CommStats entry in %@", &v2, 0xCu);
}

void sub_100086C40(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  sub_10000B29C();
  sub_100022154();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_100086CCC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  sub_10000B29C();
  sub_100022154();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_100086D58(uint64_t a1, void *a2)
{
  [a2 processIdentifier];
  sub_1000207C4();
  sub_100022154();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x12u);
}

void sub_100086DE0(uint64_t a1, void *a2)
{
  [a2 processIdentifier];
  sub_1000207C4();
  sub_100022154();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x12u);
}

void sub_100086E68()
{
  sub_10000B29C();
  v3 = 2114;
  v4 = v0;
  _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "[removeNavigationOwner] Unable to remove owner %{public}@ connection=%{public}@", v2, 0x16u);
}

void sub_100086FC0(void *a1, _DWORD *a2, NSObject *a3)
{
  *v3 = 138412546;
  *&v3[4] = *a1;
  *&v3[12] = 1024;
  *&v3[14] = *a2;
  sub_1000477A8(&_mh_execute_header, a2, a3, "failed to parse video settings message: %@, error %d", *v3, *&v3[8], *&v3[16]);
}

void sub_1000870A8(uint64_t a1, _DWORD *a2, NSObject *a3)
{
  *v3 = 138412546;
  *&v3[4] = a1;
  *&v3[12] = 1024;
  *&v3[14] = *a2;
  sub_1000477A8(&_mh_execute_header, a2, a3, "failed to encode video settings message: %@, error: %d", *v3, *&v3[8], *&v3[16]);
}

void sub_100087228()
{
  sub_100006258();
  sub_10000B2C0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100087264()
{
  sub_100006258();
  sub_10000B2C0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000872A0()
{
  sub_100006258();
  sub_10000B2C0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000872DC()
{
  sub_100006258();
  sub_10000B2C0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100087318()
{
  sub_10004FF04();
  sub_10000B2C0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100087388()
{
  sub_10004FF04();
  sub_10000B2C0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_1000873F8()
{
  sub_100006258();
  sub_10000B2C0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100087434(uint64_t a1)
{
  v6 = *(a1 + 56);
  sub_10000B2C0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
}

void sub_1000874AC()
{
  sub_10004FF04();
  sub_10000B2C0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10008751C()
{
  sub_10004FF04();
  sub_10000B2C0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10008758C()
{
  sub_10004FF04();
  sub_10000B2C0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_1000875FC()
{
  sub_100006258();
  sub_10000B2C0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100087638()
{
  sub_10004FF04();
  sub_10000B2C0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_1000876A8()
{
  sub_10004FF04();
  sub_10000B2C0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100087718()
{
  sub_10004FF04();
  sub_10000B2C0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100087788()
{
  sub_100006258();
  sub_10000B2C0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100087964()
{
  sub_100006258();
  sub_10000B2C0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000879A0()
{
  sub_100006258();
  sub_10000B2C0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000879DC()
{
  sub_10004FF04();
  sub_10000B2C0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100087A4C()
{
  sub_10004FF04();
  sub_10000B2C0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100087ABC()
{
  sub_100006258();
  sub_10000B2C0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100087AF8()
{
  sub_10004FF04();
  sub_10000B2C0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100087B68(int *a1, int a2, os_log_t log)
{
  v3 = *a1;
  v4[0] = 67109376;
  v4[1] = v3;
  v5 = 1024;
  v6 = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "connected services %i doesn't match expect service mask %i", v4, 0xEu);
}

void sub_100087C08(void *a1, NSObject *a2)
{
  v3[0] = 67109634;
  v3[1] = [a1 processIdentifier];
  v4 = 2112;
  v5 = @"com.apple.private.carkit.app";
  v6 = 2112;
  v7 = @"com.apple.private.carkit.dnd";
  _os_log_fault_impl(&_mh_execute_header, a2, OS_LOG_TYPE_FAULT, "Process %i has neither the %@ nor %@ entitlements", v3, 0x1Cu);
}

void sub_100087CB8(unsigned __int8 *a1, char a2, NSObject *a3)
{
  v5 = [NSNumber numberWithBool:*a1];
  v6 = [NSNumber numberWithBool:a2 & 1];
  v7 = 138543618;
  v8 = v5;
  v9 = 2114;
  v10 = v6;
  _os_log_fault_impl(&_mh_execute_header, a3, OS_LOG_TYPE_FAULT, "Asked for Driving %{public}@, received %{public}@", &v7, 0x16u);
}

void sub_100087D90()
{
  sub_100006258();
  sub_10000B2C0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100087DCC()
{
  sub_100006258();
  sub_10000B2C0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100087E08()
{
  sub_10000B29C();
  sub_10000B2C0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100087E78()
{
  sub_10000B29C();
  sub_10000B2C0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100087EE8(uint64_t a1)
{
  v6 = *(a1 + 32);
  sub_10000B2C0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_100087F60()
{
  sub_10000B29C();
  v3 = 2114;
  v4 = v0;
  _os_log_debug_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEBUG, "cleaning up any assets for id %{public}@ older than version: %{public}@", v2, 0x16u);
}

void sub_100087FE4()
{
  sub_10000B29C();
  sub_10000B2C0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100088054()
{
  sub_100006258();
  sub_10000B2C0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100088090()
{
  sub_100006258();
  sub_10000B2C0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000880CC(uint64_t *a1)
{
  v6 = *a1;
  sub_10000B2C0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_100088144(void *a1, NSObject *a2)
{
  v3[0] = 67109378;
  v3[1] = [a1 processIdentifier];
  v4 = 2112;
  v5 = @"com.apple.private.carkit";
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Process %i does not have the %@ entitlement", v3, 0x12u);
}

void sub_1000881E4(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "failed to connect to monitoring client service %@", &v2, 0xCu);
}

void sub_1000882C4(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *v3 = 138412546;
  *&v3[4] = *(*a1 + 40);
  *&v3[12] = 2048;
  *&v3[14] = a2;
  sub_100037884(&_mh_execute_header, a2, a3, "override asset's minimum compatibility version of %@ is not valid for supported compatibility version: %lu", *v3, *&v3[8], *&v3[16]);
}

void sub_1000883AC(void *a1, uint64_t a2, NSObject *a3)
{
  v5 = [a1 path];
  sub_10000B29C();
  v7 = 2112;
  v8 = a2;
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "failed to create %@: %@", v6, 0x16u);
}

void sub_1000887B4()
{
  sub_100006258();
  sub_10000B2C0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000887F0()
{
  sub_100006258();
  sub_10000B2C0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000888FC()
{
  sub_100006258();
  sub_10000B2C0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000889B4(uint64_t a1, NSObject *a2)
{
  v3 = [*(a1 + 32) localizedDescription];
  v4 = 138412290;
  v5 = v3;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "sysdiagnose failed when gathering CarPlay diagnostics, error: %@", &v4, 0xCu);
}

void sub_100088AB8(unsigned __int8 *a1, char a2, NSObject *a3)
{
  v5 = [NSNumber numberWithBool:*a1];
  v6 = [NSNumber numberWithBool:a2 & 1];
  v7 = 138543618;
  v8 = v5;
  v9 = 2114;
  v10 = v6;
  _os_log_fault_impl(&_mh_execute_header, a3, OS_LOG_TYPE_FAULT, "Asked for DNDWD %{public}@, received %{public}@", &v7, 0x16u);
}

void sub_100088DA4(uint64_t a1, NSObject *a2)
{
  v3[0] = 67109120;
  v3[1] = [objc_opt_class() identifier];
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "failed to send message with ID: %hu", v3, 8u);
}

void sub_100088E38(uint64_t *a1, NSObject *a2)
{
  v2 = *a1;
  v3 = 138412290;
  v4 = v2;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "invalid message contents: %@", &v3, 0xCu);
}

void sub_100088EB4(uint64_t a1, int a2, os_log_t log)
{
  v3 = 138412546;
  v4 = a1;
  v5 = 1024;
  v6 = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "BTDeviceAddressToString(%@) failed with error %d.", &v3, 0x12u);
}

void sub_100089074(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "failed to get a numeric comparison confirmation response: %@", &v2, 0xCu);
}

void sub_1000890EC(void *a1, NSObject *a2)
{
  v3 = [a1 name];
  v4 = 138412290;
  v5 = v3;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "unsupported pairing style %@", &v4, 0xCu);
}

void sub_100089184(void *a1)
{
  v1 = [a1 attributes];
  sub_10000B29C();
  sub_10000FB5C(&_mh_execute_header, v2, v3, "cannot use asset: %@", v4, v5, v6, v7, v8);
}

void sub_100089208()
{
  sub_100006258();
  sub_10000B2C0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100089244(uint64_t *a1)
{
  v6 = *a1;
  sub_10000B2C0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_1000892BC()
{
  sub_100006258();
  sub_10000B2C0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000892F8(uint64_t a1)
{
  v6 = *(a1 + 32);
  sub_10000B2C0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_100089370()
{
  sub_100006258();
  sub_10000B2C0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000893AC()
{
  sub_100006258();
  sub_10000B2C0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000893E8()
{
  sub_10000B29C();
  sub_10000B2C0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100089458(void *a1)
{
  v1 = [a1 attributes];
  sub_10000B29C();
  sub_10000FB5C(&_mh_execute_header, v2, v3, "downloadable asset doesn't have appropriate attributes: %@", v4, v5, v6, v7, v8);
}

void sub_1000894E0()
{
  sub_10000B29C();
  sub_10000B2C0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100089550(uint64_t a1)
{
  v6 = *(a1 + 56);
  sub_10000B2C0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_1000895C8()
{
  sub_10000B29C();
  v3 = 2114;
  v4 = v0;
  _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "found no asset for asset request: %{public}@, however an asset exists for compatibility version %{public}@", v2, 0x16u);
}

void sub_10008964C()
{
  sub_10000B29C();
  sub_10000B2C0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000896BC(void *a1)
{
  v1 = [a1 localizedDescription];
  sub_10000B29C();
  sub_10000FB5C(&_mh_execute_header, v2, v3, "CARAnalytics recorded wirelessReconnectStarted without success: %@", v4, v5, v6, v7, v8);
}

void sub_100089740(void *a1)
{
  v1 = [a1 localizedDescription];
  sub_10000B29C();
  sub_10000FB5C(&_mh_execute_header, v2, v3, "CARAnalytics recorded _wirelessReconnectEnded without success: %@", v4, v5, v6, v7, v8);
}

void sub_1000897C4(void *a1)
{
  v1 = [a1 localizedDescription];
  sub_10000B29C();
  sub_10000FB5C(&_mh_execute_header, v2, v3, "CARAnalytics recorded _wiredReconnectEnded without success: %@", v4, v5, v6, v7, v8);
}

void sub_100089870()
{
  sub_100006258();
  sub_10000B2C0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000898AC()
{
  sub_100006258();
  sub_10000B2C0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000898E8()
{
  sub_100006258();
  sub_10000B2C0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100089924()
{
  sub_100006258();
  sub_10000B2C0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100089960()
{
  sub_100006258();
  sub_10000B2C0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10008999C()
{
  sub_100006258();
  sub_10000B2C0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000899D8()
{
  sub_10000B29C();
  sub_10000B2C0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100089A48()
{
  sub_10000B29C();
  sub_10000B2C0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100089AB8()
{
  sub_10000B29C();
  sub_10000B2C0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100089B28(void *a1)
{
  v1 = [a1 localizedDescription];
  sub_10000B29C();
  sub_10000FB5C(&_mh_execute_header, v2, v3, "CARAnalytics: unable to send wirelessPairingCreatedEvent connection event. Error: %@", v4, v5, v6, v7, v8);
}

void sub_100089C20(uint64_t a1)
{
  v1 = [NSNumber numberWithUnsignedInteger:a1];
  sub_10000B29C();
  sub_10000FB5C(&_mh_execute_header, v2, v3, "Unknown analytics event: %@", v4, v5, v6, v7, v8);
}

void sub_100089CB0(uint64_t a1)
{
  v1 = [NSNumber numberWithUnsignedInteger:a1];
  sub_10000B29C();
  sub_10000FB5C(&_mh_execute_header, v2, v3, "Unsupported calendar unit type: %@", v4, v5, v6, v7, v8);
}

void sub_100089E1C(_DWORD *a1, uint64_t a2, NSObject *a3)
{
  LODWORD(v3) = 67109378;
  HIDWORD(v3) = *a1;
  LOWORD(v4) = 2112;
  *(&v4 + 2) = a2;
  sub_1000477A8(&_mh_execute_header, a2, a3, "failed to encode message, error: %d, contents: %@", v3, v4, WORD4(v4));
}

void sub_100089E98(int *a1, NSObject *a2)
{
  v2 = *a1;
  v3[0] = 67109120;
  v3[1] = v2;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "failed to decode message: %d", v3, 8u);
}

void sub_10008A144()
{
  sub_100006258();
  sub_10000B2C0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10008A180()
{
  sub_100006258();
  sub_10000B2C0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10008A1BC(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  sub_100079C40();
  sub_1000477A8(&_mh_execute_header, v3, v4, "failed to encode log archive request: %@, error: %d");
}

void sub_10008A228()
{
  sub_100006258();
  sub_10000B2C0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10008A264()
{
  sub_100006258();
  sub_10000B2C0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10008A2A0(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  sub_100079C40();
  sub_1000477A8(&_mh_execute_header, v3, v4, "failed to encode start statistics request: %@, error: %d");
}

void sub_10008A30C()
{
  sub_100006258();
  sub_10000B2C0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10008A348()
{
  sub_100006258();
  sub_10000B2C0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10008A384(uint64_t *a1)
{
  v6 = *a1;
  sub_10000B2C0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_10008A3FC(void *a1, _DWORD *a2, NSObject *a3)
{
  *v3 = 138412546;
  *&v3[4] = *a1;
  *&v3[12] = 1024;
  *&v3[14] = *a2;
  sub_1000477A8(&_mh_execute_header, a2, a3, "failed to parse file message: %@, error %d", *v3, *&v3[8], *&v3[16]);
}

void sub_10008A47C()
{
  sub_10000B29C();
  sub_10000B2C0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10008A4EC()
{
  sub_10000B29C();
  sub_10000B2C0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10008A55C()
{
  sub_10000B29C();
  sub_10000B2C0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10008A5CC()
{
  sub_10000B29C();
  sub_10000B2C0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10008A63C()
{
  sub_10000B29C();
  sub_10000B2C0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10008A6AC()
{
  sub_10000B29C();
  sub_10000B2C0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10008A71C()
{
  sub_10000B29C();
  sub_10000B2C0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10008A78C()
{
  sub_100006258();
  sub_10000B2C0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10008A7C8()
{
  sub_10000B29C();
  sub_10000B2C0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10008A838()
{
  sub_100006258();
  sub_10000B2C0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10008A874()
{
  sub_100006258();
  sub_10000B2C0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10008A8B0()
{
  sub_100006258();
  sub_10000B2C0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10008A8EC()
{
  sub_100006258();
  sub_10000B2C0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10008A928()
{
  sub_100006258();
  sub_10000B2C0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10008A964(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  sub_100079C40();
  sub_1000477A8(&_mh_execute_header, v3, v4, "failed to encode file accept message: %@ error: %d");
}

void sub_10008AA14(uint64_t *a1, NSObject *a2)
{
  v2 = *a1;
  v3 = 138412290;
  v4 = v2;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "updating BLE devices for discovery to: %@", &v3, 0xCu);
}

void sub_10008AA90()
{
  sub_10000B29C();
  sub_10000B2C0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10008AB44()
{
  sub_10006BFE4();
  sub_10000B2C0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_10008AC2C()
{
  sub_10000B29C();
  sub_10000B2C0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10008AC9C(void *a1, uint64_t a2, NSObject *a3)
{
  *v3 = 141558531;
  *&v3[4] = 1752392040;
  *&v3[12] = 2113;
  *&v3[14] = *a1;
  *&v3[22] = 2112;
  sub_10007D9F8(&_mh_execute_header, a2, a3, "failed to start BLE pairing, couldn't connect to %{private, mask.hash}@, error: %@", *v3, *&v3[8], *&v3[16], a2);
}

void sub_10008AD94()
{
  sub_10006BFE4();
  sub_10000B2C0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_10008AE04()
{
  sub_10000B29C();
  sub_10000B2C0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10008AE74()
{
  sub_10006BFE4();
  sub_10000B2C0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_10008AEE4()
{
  sub_10006BFE4();
  sub_10000B2C0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_10008AF54(uint64_t a1)
{
  v6 = *(a1 + 32);
  sub_10000B2C0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_10008AFCC(uint64_t *a1)
{
  v6 = *a1;
  sub_10000B2C0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_10008B044()
{
  sub_10006BFE4();
  sub_10000B2C0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_10008B0B4(void *a1, void *a2, NSObject *a3)
{
  v5 = [a1 identifier];
  v6 = [a2 pairingPeripheralIdentifier];
  v7 = 141558787;
  v8 = 1752392040;
  v9 = 2113;
  v10 = v5;
  v11 = 2160;
  v12 = 1752392040;
  v13 = 2113;
  v14 = v6;
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "peerDidFailToCompletePairing %{private, mask.hash}@, current pairing identifier: %{private, mask.hash}@", &v7, 0x2Au);
}

void sub_10008B194(void *a1, uint64_t a2, NSObject *a3)
{
  v5 = [a1 identifier];
  sub_10006BFE4();
  v7 = 2112;
  v8 = a2;
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "fail to BLE pair with %{private, mask.hash}@, error: %@", v6, 0x20u);
}

void sub_10008B240()
{
  sub_10000B29C();
  sub_10000B2C0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10008B2B0()
{
  sub_10000B29C();
  sub_10000B2C0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

CLLocationCoordinate2D CLLocationCoordinate2DMake(CLLocationDegrees latitude, CLLocationDegrees longitude)
{
  v4 = _CLLocationCoordinate2DMake(latitude, longitude);
  v3 = v4.longitude;
  v2 = v4.latitude;
  result.longitude = v3;
  result.latitude = v2;
  return result;
}