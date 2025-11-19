void sub_10000188C(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    free(v1);
  }
}

void sub_100001CD8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100001D08(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _browserStateChanged:a2 error:v5];
}

void sub_100001D74(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v7 = a3;
  v8 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _browserResultChangedFromOldResult:v8 newResult:v7 batchComplete:a4];
}

void sub_100002060(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100002094(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1000020AC(uint64_t a1)
{
  v1 = *(*(*(a1 + 40) + 8) + 40);
  if (!v1)
  {
    return;
  }

  if (dword_100060190 <= 90)
  {
    if (dword_100060190 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_7;
      }

      v1 = *(*(*(a1 + 40) + 8) + 40);
    }

    v3 = v1;
    LogPrintF();
  }

LABEL_7:
  v4 = [*(a1 + 32) completionHandler];
  (*(v4 + 2))(v4, 0, *(*(*(a1 + 40) + 8) + 40));
}

uint64_t sub_100002EE4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100002EFC(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 8);
  obj = *(v1 + 40);
  v2 = *(a1 + 40);
  v3 = CUDescriptionWithLevel();
  NSAppendPrintF();
  objc_storeStrong((v1 + 40), obj);
}

void sub_100002F6C(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 8);
  obj = *(v1 + 40);
  v2 = *(a1 + 40);
  v3 = CUDescriptionWithLevel();
  NSAppendPrintF();
  objc_storeStrong((v1 + 40), obj);
}

void sub_100002FDC(uint64_t a1, void *a2, void *a3)
{
  v4 = *(*(a1 + 32) + 8);
  obj = *(v4 + 40);
  v5 = a3;
  v6 = a2;
  v7 = [v5 discoverySet];
  [v7 count];
  v8 = [v5 discoveryObj];

  NSAppendPrintF();
  objc_storeStrong((v4 + 40), obj);
}

id sub_100003104(uint64_t a1)
{
  if (dword_1000603A0 <= 30 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
  {
    sub_100030DBC();
  }

  v2 = *(a1 + 32);

  return [v2 _activate];
}

id sub_100003594(uint64_t a1)
{
  if (dword_1000603A0 <= 30 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
  {
    sub_100030E40();
  }

  v2 = *(a1 + 32);

  return [v2 _prefsChanged];
}

id sub_1000035FC(uint64_t a1)
{
  if (dword_1000603A0 <= 50 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
  {
    sub_100030E5C();
  }

  v2 = *(a1 + 32);

  return [v2 _removeAllDevicesAndAppAccess];
}

id sub_100003664(uint64_t a1)
{
  if (dword_1000603A0 <= 50 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
  {
    sub_100030E78();
  }

  v2 = *(a1 + 32);

  return [v2 resetWiFiIdentifier:&stru_100058BE8];
}

id sub_1000036F4(uint64_t a1)
{
  [*(a1 + 32) _keychainVerificationDevicesRestoredOnSameDevice];
  v2 = *(a1 + 32);

  return [v2 _updateLocalDeviceCapabilties];
}

void sub_100003738(id a1, OS_xpc_object *a2)
{
  xpc_dictionary_get_string(a2, _xpc_event_key_name);
  if (dword_1000603A0 <= 50 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
  {
    sub_100030E94();
  }
}

id sub_100003818(uint64_t a1)
{
  if (dword_1000603A0 <= 30 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
  {
    sub_100030ED4();
  }

  v2 = *(a1 + 32);

  return [v2 _invalidate];
}

void sub_100003AC4(id a1, NSString *a2, DADaemonDiscovery *a3, BOOL *a4)
{
  v5 = a3;
  [(DADaemonDiscovery *)v5 setDeviceMap:0];
  v4 = [(DADaemonDiscovery *)v5 discoveryObj];
  [v4 invalidate];

  [(DADaemonDiscovery *)v5 setDiscoveryObj:0];
  [(DADaemonDiscovery *)v5 setDiscoverySet:0];
}

void sub_100003C44(uint64_t a1)
{
  v2 = +[WiFiAwareDeviceCapabilities currentDeviceCapabilities];
  if (dword_1000603A0 <= 20 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
  {
    sub_100030F24();
  }

  v3 = [v2 supportedFeatures];
  v4 = [v3 containsObject:&off_10005AB90];

  if (v4)
  {
    v5 = *(a1 + 32);
    v6 = *(v5 + 88);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100003D44;
    block[3] = &unk_100058B58;
    block[4] = v5;
    dispatch_async(v6, block);
  }
}

void sub_100003D44(uint64_t a1)
{
  obj = *(a1 + 32);
  objc_sync_enter(obj);
  *(*(a1 + 32) + 328) |= 0x400uLL;
  objc_sync_exit(obj);
}

void sub_100004A94(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [v6 bundleIdentifier];
  if (dword_1000603A0 <= 50 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
  {
    sub_100031264();
  }

  v4 = [v6 appState];
  v5 = [v4 isPlaceholder];

  if ((v5 & 1) == 0)
  {
    [*(a1 + 32) _updateAppInfo:v3 existingInfoPlistOptions:{objc_msgSend(*(a1 + 32), "appBundleInfoAccessoryOptions:", v3)}];
  }
}

void sub_100004CFC(uint64_t a1, void *a2)
{
  v3 = [a2 bundleIdentifier];
  [*(a1 + 32) addObject:v3];
}

void sub_100004FD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  (*(v9 + 16))(v9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100005010(uint64_t a1)
{
  if (*(*(*(a1 + 32) + 8) + 40) && dword_1000603A0 <= 90)
  {
    if (dword_1000603A0 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        return;
      }

      v2 = *(*(*(a1 + 32) + 8) + 40);
    }

    v3 = CUPrintNSError();
    LogPrintF();
  }
}

void sub_100005774(uint64_t a1, void *a2)
{
  v3 = [a2 appAccessInfoMap];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100005828;
  v4[3] = &unk_100058D58;
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  [v3 enumerateKeysAndObjectsUsingBlock:v4];
}

void sub_100005828(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = [a3 accessoryOptions];
  v6 = 32;
  if ((v5 & 0x40000000) == 0)
  {
    v6 = 40;
  }

  [*(a1 + v6) addObject:v7];
}

void sub_100005A6C(uint64_t a1, void *a2)
{
  v3 = a2;
  if (dword_1000603A0 <= 50 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
  {
    sub_100031670();
  }

  v4 = [v3 appAccessInfoMap];
  v5 = [v4 allKeys];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100005B70;
  v8[3] = &unk_100058DA8;
  v6 = *(a1 + 32);
  v8[4] = v4;
  v8[5] = v6;
  v9 = v3;
  v7 = v3;
  [v5 enumerateObjectsUsingBlock:v8];
}

void sub_100005B70(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) objectForKey:a2];
  v4 = v3;
  if (v3)
  {
    [v3 setState:0];
    v5 = *(a1 + 40);
    v6 = *(a1 + 48);
    v8 = 0;
    [v5 updateAppAccessInfo:v4 accessoryDevice:v6 removalType:1 error:&v8];
    v7 = v8;
    if (dword_1000603A0 <= 50 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }
  }
}

void sub_100005D20(uint64_t a1, void *a2)
{
  v3 = a2;
  if (dword_1000603A0 <= 50 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
  {
    sub_1000316F0();
  }

  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100005DFC;
  v7[3] = &unk_100058D80;
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v8 = v3;
  v9 = v4;
  v6 = v3;
  [v5 enumerateObjectsUsingBlock:v7];
}

void sub_100005DFC(uint64_t a1, void *a2)
{
  v3 = a2;
  if (dword_1000603A0 <= 50 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
  {
    v12 = *(a1 + 32);
    v14 = v3;
    LogPrintF();
  }

  v4 = [v3 appAccessInfoMap];
  v5 = [v4 objectForKey:*(a1 + 32)];
  v6 = v5;
  if (v5)
  {
    [v5 setState:0];
    v7 = *(a1 + 40);
    v21 = 0;
    [v7 updateAppAccessInfo:v6 accessoryDevice:v3 removalType:1 error:&v21];
    v8 = v21;
    if (dword_1000603A0 <= 50 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
    {
      v15 = v3;
      v16 = v8;
      v13 = v6;
      LogPrintF();
    }
  }

  v9 = [v3 accessoryServicesMap];
  if (v9)
  {
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_100005FE0;
    v17[3] = &unk_100058DF8;
    v10 = *(a1 + 32);
    v11 = *(a1 + 40);
    v18 = v10;
    v19 = v11;
    v20 = v3;
    [v9 enumerateKeysAndObjectsUsingBlock:v17];
  }
}

void sub_100005FE0(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = [v4 associatedBundleID];
  v6 = [v5 isEqualToString:a1[4]];

  if (v6)
  {
    [v4 setAuthorizationLevel:1];
    v7 = a1[5];
    v8 = a1[6];
    v9 = 0;
    [v7 saveDeviceAccessoryServiceInfo:v4 device:v8 error:&v9];
  }
}

id sub_1000060F4(uint64_t a1)
{
  v2 = [*(a1 + 32) appBundleInfoAccessoryOptions:*(a1 + 40)];
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);

  return [v3 _updateAppInfo:v4 existingInfoPlistOptions:v2];
}

void sub_100006880(_Unwind_Exception *a1)
{
  (*(v1 + 16))(v1);
  _Block_object_dispose((v2 - 152), 8);
  _Unwind_Resume(a1);
}

void sub_1000068E4(uint64_t a1)
{
  if (*(*(*(a1 + 40) + 8) + 40) && dword_1000603A0 <= 90)
  {
    if (dword_1000603A0 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        return;
      }

      v3 = *(*(*(a1 + 40) + 8) + 40);
    }

    v2 = *(a1 + 32);
    v4 = CUPrintNSError();
    LogPrintF();
  }
}

void sub_1000069B0(uint64_t a1)
{
  v2 = [*(a1 + 32) hasPrefix:@"com.apple."];
  if ([*(a1 + 40) state] == 20)
  {
    if (*(a1 + 80) == 3)
    {
      v3 = 100;
    }

    else
    {
      v3 = 0;
    }
  }

  else
  {
    v3 = 0;
  }

  if (v2)
  {
    v4 = 6;
  }

  else
  {
    v4 = 1;
  }

  v5 = [*(a1 + 48) state];
  v10 = [*(a1 + 40) identifier];
  v6 = [*(a1 + 56) appAccessInfoMap];
  v7 = [v6 count] > 1;
  v8 = [*(*(a1 + 64) + 80) objectForKeyedSubscript:*(a1 + 32)];
  v9 = [v8 discoveryObj];
  +[DADeviceAccessAnalytics markState:deviceID:shared:discovery:flags:sourceApp:atTime:errorCode:](DADeviceAccessAnalytics, "markState:deviceID:shared:discovery:flags:sourceApp:atTime:errorCode:", v5, v10, v7, v9, [*(a1 + 56) flags], v4, *(a1 + 72), v3);
}

void *sub_100006D10(uint64_t a1)
{
  v2 = *(a1 + 32);
  result = *(a1 + 40);
  if (v2 == result[4])
  {
    return [result _checkAppAccessInfo];
  }

  return result;
}

void sub_100006F58(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  [v6 approveTime];
  v8 = v7;
  [v6 endTime];
  v10 = v9;
  v11 = [v6 state];
  v12 = 104;
  if (v11 != 10 && v11 != 20)
  {
    if (([v6 accessoryOptions] & 0x40000000) == 0)
    {
      goto LABEL_16;
    }

    v12 = 112;
    v8 = v10;
  }

  if (*(*(a1 + 32) + v12) - (*(a1 + 56) - v8) <= 0.0)
  {
    if (dword_1000603A0 <= 50 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
    {
      sub_100031864();
    }

    [v6 setState:0];
    v13 = *(a1 + 32);
    v14 = *(a1 + 40);
    v17 = 0;
    v15 = [v13 updateAppAccessInfo:v6 accessoryDevice:v14 removalType:3 error:&v17];
    v16 = v17;
    if ((v15 & 1) == 0 && dword_1000603A0 <= 90 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }
  }

  *(*(*(a1 + 48) + 8) + 24) = 1;
LABEL_16:
}

void sub_100007640(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  (*(v33 + 16))(v33);
  _Block_object_dispose(&a33, 8);
  _Unwind_Resume(a1);
}

void sub_1000076A8(uint64_t a1)
{
  if (*(*(*(a1 + 32) + 8) + 40) && dword_1000603A0 <= 90)
  {
    if (dword_1000603A0 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        return;
      }

      v2 = *(*(*(a1 + 32) + 8) + 40);
    }

    v3 = CUPrintNSError();
    LogPrintF();
  }
}

void *sub_10000776C(uint64_t a1)
{
  v2 = *(a1 + 32);
  result = *(a1 + 40);
  if (v2 == result[6])
  {
    return [result _checkDevices];
  }

  return result;
}

void sub_1000080C0(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    Int64Ranged = CFDictionaryGetInt64Ranged();
    if (Int64Ranged == 25 || Int64Ranged == 20)
    {
      v5 = [[DADevice alloc] initWithPersistentDictionaryRepresentation:v7 error:0];
      if (v5)
      {
        v6 = v5;
        [*(a1 + 32) addObject:v5];
      }
    }
  }
}

void sub_1000086FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  (*(a5 + 16))();
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100008758(uint64_t a1)
{
  if (*(*(*(a1 + 40) + 8) + 40) && dword_1000603A0 <= 90)
  {
    if (dword_1000603A0 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        return;
      }

      v2 = *(*(*(a1 + 40) + 8) + 40);
    }

    v3 = CUPrintNSError();
    v4 = *(a1 + 32);
    LogPrintF();
  }
}

void sub_10000956C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  (*(a22 + 16))();
  _Block_object_dispose(&STACK[0x2B8], 8);
  _Unwind_Resume(a1);
}

void sub_100009670(uint64_t a1)
{
  if (*(*(*(a1 + 32) + 8) + 40) && dword_1000603A0 <= 90)
  {
    if (dword_1000603A0 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        return;
      }

      v2 = *(*(*(a1 + 32) + 8) + 40);
    }

    v3 = CUPrintNSError();
    LogPrintF();
  }
}

void sub_100009734(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = *(a1 + 32);
  v7 = a3;
  v8 = [v6 objectForKeyedSubscript:v5];

  if (!v8)
  {
    v9 = +[NSMutableDictionary dictionary];
    [*(a1 + 32) setObject:v9 forKeyedSubscript:v5];
  }

  v10 = [DADeviceAppAccessInfo alloc];
  v11 = *(*(a1 + 40) + 8);
  obj = *(v11 + 40);
  v12 = [v10 initWithPersistentDictionaryRepresentation:v7 error:&obj];

  objc_storeStrong((v11 + 40), obj);
  if (v12)
  {
    v13 = [*(a1 + 32) objectForKeyedSubscript:v5];
    v14 = [v12 bundleIdentifier];
    [v13 setObject:v12 forKeyedSubscript:v14];
  }
}

void sub_10000984C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = *(a1 + 32);
  v7 = a3;
  v8 = [v6 objectForKeyedSubscript:v5];

  if (!v8)
  {
    v9 = +[NSMutableDictionary dictionary];
    [*(a1 + 32) setObject:v9 forKeyedSubscript:v5];
  }

  v10 = [DADeviceAppAccessInfo alloc];
  v11 = *(*(a1 + 48) + 8);
  obj = *(v11 + 40);
  v12 = [v10 initWithPersistentDictionaryRepresentation:v7 error:&obj];

  objc_storeStrong((v11 + 40), obj);
  if (v12)
  {
    v13 = [*(a1 + 32) objectForKeyedSubscript:v5];
    [v13 setObject:v12 forKeyedSubscript:*(a1 + 40)];
  }
}

void sub_10000994C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [DADeviceAccessoryServiceInfo alloc];
  v8 = *(a1 + 32);
  v11 = 0;
  v9 = [v7 initWithPersistentDictionaryRepresentation:v6 deviceID:v8 error:&v11];

  v10 = v11;
  if (v9)
  {
    [*(a1 + 40) setObject:v9 forKeyedSubscript:v5];
  }

  else if (dword_1000603A0 <= 90 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
  {
    sub_10003198C();
  }
}

void sub_10000A70C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10000A734(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = a2;
  v6 = [v5 configuration];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 associationIdentifier];
    v9 = [*(a1 + 32) associationIdentifier];
    v10 = [v9 isEqualToString:v8];

    if (v10)
    {
      if (dword_1000603A0 <= 50 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
      {
        v15 = *(a1 + 40);
        v16 = *(a1 + 32);
        v14 = v7;
        LogPrintF();
      }

      objc_storeStrong((*(*(a1 + 48) + 8) + 40), v7);
      *a3 = 1;
    }
  }

  v11 = [v5 configurations];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_10000A8DC;
  v17[3] = &unk_100058F60;
  v18 = *(a1 + 32);
  v12 = *(a1 + 40);
  v13 = *(a1 + 48);
  v19 = v12;
  v20 = v13;
  v21 = a3;
  [v11 enumerateObjectsUsingBlock:v17];
}

void sub_10000A8DC(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v12 = a2;
  v7 = [v12 associationIdentifier];
  v8 = [*(a1 + 32) associationIdentifier];
  v9 = [v8 isEqualToString:v7];

  if (v9)
  {
    if (dword_1000603A0 <= 50 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
    {
      v10 = *(a1 + 40);
      v11 = *(a1 + 32);
      LogPrintF();
    }

    objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
    *a4 = 1;
    **(a1 + 56) = 1;
  }
}

void sub_10000BA74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, char a51, uint64_t a52, uint64_t a53, uint64_t a54, char a55)
{
  (*(a17 + 16))();
  _Block_object_dispose(&a51, 8);
  _Block_object_dispose(&a55, 8);
  _Unwind_Resume(a1);
}

void sub_10000BB84(uint64_t a1)
{
  if (dword_1000603A0 <= 30 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
  {
    sub_100031B90(a1);
  }

  v2 = *(*(a1 + 32) + 88);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10000BC40;
  v3[3] = &unk_100058FB0;
  v4 = *(a1 + 40);
  dispatch_async(v2, v3);
}

void sub_10000BC40(uint64_t a1)
{
  if (*(*(*(a1 + 32) + 8) + 24) >= 2)
  {
    if (dword_1000603A0 <= 30 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
    {
      sub_100031BE4();
    }

    v8 = @"GroupableDevicesCount";
    v2 = [NSNumber numberWithInt:*(*(*(a1 + 32) + 8) + 24)];
    v9 = v2;
    v3 = [NSDictionary dictionaryWithObjects:&v9 forKeys:&v8 count:1];

    [DADeviceAccessAnalytics sendAnalytics:v3 forEvent:@"com.apple.Bluetooth.DeviceGroupingUsage"];
  }

  if (*(*(*(a1 + 40) + 8) + 24) >= 2)
  {
    if (dword_1000603A0 <= 30 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
    {
      sub_100031C00();
    }

    v6 = @"GroupableDevicesCount";
    v4 = [NSNumber numberWithInt:*(*(*(a1 + 40) + 8) + 24)];
    v7 = v4;
    v5 = [NSDictionary dictionaryWithObjects:&v7 forKeys:&v6 count:1];

    [DADeviceAccessAnalytics sendAnalytics:v5 forEvent:@"com.apple.Bluetooth.GroupedDevices"];
  }
}

void sub_10000ECB8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if ([v4 accessoryOptions])
  {
    *(*(*(a1 + 32) + 8) + 24) |= 1uLL;
  }

  if (([v4 accessoryOptions] & 2) != 0)
  {
    *(*(*(a1 + 32) + 8) + 24) |= 2uLL;
  }

  v5 = [v4 accessoryOptions];

  if ((v5 & 0x40000000) != 0)
  {
    *(*(*(a1 + 32) + 8) + 24) |= 0x40000000uLL;
  }
}

uint64_t sub_10000ED4C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (*(a1 + 32))
  {
    if (dword_1000603A0 <= 30)
    {
      v6 = v3;
      if (dword_1000603A0 != -1 || (v3 = _LogCategory_Initialize(), v4 = v6, v3))
      {
        sub_100032168();
        v4 = v6;
      }
    }
  }

  return _objc_release_x1(v3, v4);
}

void sub_10000EDDC(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [[DADevice alloc] initWithPersistentDictionaryRepresentation:v5 error:0];
    if (v6)
    {
      [*(a1 + 32) setObject:v6 forKeyedSubscript:v7];
    }
  }
}

void *sub_10000F024(void *result)
{
  if (result[4] == *(result[5] + 72))
  {
    v2 = result;
    if (dword_1000603A0 <= 30 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
    {
      sub_100032288();
    }

    v3 = v2[5];

    return [v3 _checkDevices];
  }

  return result;
}

void sub_10000F474(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = *(a1 + 32);
  v4 = [*(a1 + 40) discoveryObj];

  if (v3 == v4)
  {
    [*(a1 + 48) _discoveryEvent:v5 appID:*(a1 + 56)];
  }
}

void sub_10000F73C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = [v4 appAccessInfoMap];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10000F7F0;
  v7[3] = &unk_100058D58;
  v7[4] = *(a1 + 32);
  v8 = v4;
  v6 = v4;
  [v5 enumerateKeysAndObjectsUsingBlock:v7];
}

void sub_10000F7F0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = [v4 appDiscoveryConfiguration];
    v7 = [v6 flags];
    if ([v5 state] != 25 && (v7 & 0x10) != 0)
    {
      [v5 setState:0];
      v8 = *(a1 + 32);
      v9 = *(a1 + 40);
      v12 = 0;
      [v8 updateAppAccessInfo:v5 accessoryDevice:v9 removalType:1 error:&v12];
      v10 = v12;
      if (dword_1000603A0 <= 50 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
      {
        v11 = *(a1 + 40);
        LogPrintF();
      }
    }
  }
}

void sub_10000F8F0(uint64_t a1)
{
  if ([*(a1 + 32) hasPrefix:@"com.apple."])
  {
    v2 = 6;
  }

  else
  {
    v2 = 1;
  }

  v6 = [*(a1 + 40) identifier];
  v3 = [*(a1 + 40) appAccessInfoMap];
  v4 = [v3 count] > 1;
  v5 = [*(a1 + 48) discoveryObj];
  +[DADeviceAccessAnalytics markState:deviceID:shared:discovery:flags:sourceApp:atTime:errorCode:](DADeviceAccessAnalytics, "markState:deviceID:shared:discovery:flags:sourceApp:atTime:errorCode:", 5, v6, v4, v5, [*(a1 + 40) flags], v2, *(a1 + 56), 0);
}

void sub_10000FC0C(uint64_t a1)
{
  if ([*(a1 + 32) hasPrefix:@"com.apple."])
  {
    v2 = 6;
  }

  else
  {
    v2 = 1;
  }

  v3 = *(a1 + 72);
  v4 = *(a1 + 40);
  v7 = [*(a1 + 48) appAccessInfoDeviceMap];
  v5 = [v7 count] > 1;
  v6 = [*(a1 + 56) discoveryObj];
  +[DADeviceAccessAnalytics markState:deviceID:shared:discovery:flags:sourceApp:atTime:errorCode:](DADeviceAccessAnalytics, "markState:deviceID:shared:discovery:flags:sourceApp:atTime:errorCode:", v3, v4, v5, v6, [*(a1 + 48) flags], v2, *(a1 + 64), 0);
}

uint64_t sub_10001098C(uint64_t result)
{
  if (dword_1000603A0 <= 50)
  {
    v1 = result;
    if (dword_1000603A0 != -1)
    {
      return sub_100032718(v1);
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return sub_100032718(v1);
    }
  }

  return result;
}

void sub_100011828(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  (*(v11 + 16))(v11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100011868(uint64_t a1)
{
  if (*(*(*(a1 + 32) + 8) + 40) && dword_1000603A0 <= 90)
  {
    if (dword_1000603A0 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        return;
      }

      v2 = *(*(*(a1 + 32) + 8) + 40);
    }

    v3 = CUPrintNSError();
    LogPrintF();
  }
}

void sub_100011A14(id a1, NSUUID *a2, NSDictionary *a3, BOOL *a4)
{
  v4 = a3;
  v11 = [(NSDictionary *)v4 objectForKeyedSubscript:@"CBPeripheral"];
  v5 = [(NSDictionary *)v4 objectForKeyedSubscript:@"DADevice"];
  v6 = [(NSDictionary *)v4 objectForKeyedSubscript:@"DiscoveryObj"];

  if (v11)
  {
    v7 = [v11 name];
    if (!v7 || (v8 = v7, [v11 name], v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "length"), v9, v8, !v10))
    {
      if (dword_1000603A0 <= 50 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }
    }
  }
}

void sub_100011EC8(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v42 = a3;
  v7 = a4;
  if (dword_1000603A0 <= 50 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
  {
    v8 = sub_10002D350(a2);
    v40 = *(a1 + 32);
    v41 = v7;
    v38 = v8;
    v39 = v42;
    LogPrintF();
  }

  v9 = [*(a1 + 40) hotspotSSIDPrefixes];
  if ([v9 count])
  {
    v10 = 1;
  }

  else
  {
    v11 = [*(a1 + 40) hotspotSSIDs];
    v10 = [v11 count] != 0;
  }

  v12 = [v42 appConfirmsAuth];
  v13 = v12;
  if (a2 > 19)
  {
    if (a2 != 20)
    {
      if (a2 == 30)
      {
        v21 = [*(a1 + 48) upgradeInProgress];
        if ([*(a1 + 48) upgradeInProgress])
        {
          [*(a1 + 48) setDeviceUpgradeFinished:0 inProgress:0 failed:1];
          v16 = 0;
        }

        else
        {
          v16 = [*(a1 + 56) deviceRequiresMultiTechDiscovery:*(a1 + 48)];
        }

        [*(a1 + 48) setBluetoothOnboardingFinished:0];
        if ([v7 code] == 350014 || v21)
        {
          v22 = [*(a1 + 48) bluetoothIdentifier];
          v23 = [*(a1 + 56) _findDADeviceWithBTIdentifier:v22];
          v24 = [v23 appAccessInfoMap];
          v25 = [v24 objectForKeyedSubscript:*(a1 + 72)];

          if ([v25 state] == 25)
          {

LABEL_59:
            goto LABEL_60;
          }

          *(*(*(a1 + 88) + 8) + 24) = 0;

LABEL_50:
          v33 = [*(a1 + 56) _updateStateForDiscoveryDeviceID:*(a1 + 80) state:*(*(*(a1 + 88) + 8) + 24) appID:*(a1 + 72) referenceDevice:*(a1 + 48)];
          if (v33)
          {
            v22 = v33;
          }

          else
          {
            v34 = [*(a1 + 48) bluetoothIdentifier];
            v22 = [*(a1 + 56) _findDADeviceWithBTIdentifier:v34];

            if (!v22)
            {
              goto LABEL_60;
            }
          }

          v35 = [*(a1 + 48) name];
          [v22 setName:v35];

          if (v42)
          {
            if (a2 == 20 && !v7)
            {
              [v22 setFlags:{objc_msgSend(v22, "flags") | 0x40}];
              if ([v42 pairedWithCTKD])
              {
                [v22 setFlags:{objc_msgSend(v22, "flags") | 0x20}];
              }
            }
          }

          [*(a1 + 32) setState:*(*(*(a1 + 88) + 8) + 24)];
          [*(a1 + 56) updateAppAccessInfo:*(a1 + 32) accessoryDevice:v22 removalType:v16 error:0];
          goto LABEL_59;
        }

LABEL_23:
        *(*(*(a1 + 88) + 8) + 24) = 0;
        goto LABEL_50;
      }

      if (a2 != 40)
      {
        goto LABEL_60;
      }

      v14 = [v42 pairingType];
      v15 = [v42 pairingRequired];
      if (v13 && (v15 & 1) == 0)
      {
        if (dword_1000603A0 <= 90 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
        {
          sub_100032ADC();
        }

        [*(*(a1 + 56) + 304) respondToPairingRequest:*(a1 + 64) type:v14 accept:0 passkey:0];
        goto LABEL_22;
      }

      if (v14)
      {
        if (v14 != 10)
        {
          v31 = v42;
          v32 = [[DAEventDeviceBluetoothPairingRequest alloc] initWithEventType:55 pairingInfo:v31];

          [*(a1 + 56) _discoveryEvent:v32 appID:*(a1 + 72)];
          goto LABEL_48;
        }

        v26 = *(a1 + 64);
        v27 = *(*(a1 + 56) + 304);
        v28 = 10;
        v29 = 1;
      }

      else
      {
        v26 = *(a1 + 64);
        v27 = *(*(a1 + 56) + 304);
        v28 = 0;
        v29 = 0;
      }

      [v27 respondToPairingRequest:v26 type:v28 accept:v29 passkey:0];
LABEL_48:
      v16 = 0;
      v19 = *(*(a1 + 88) + 8);
      v20 = 10;
      goto LABEL_49;
    }

    if ([*(a1 + 48) upgradeInProgress])
    {
      [*(a1 + 48) setDeviceUpgradeFinished:1 inProgress:0 failed:0];
    }

    [*(a1 + 48) setBluetoothOnboardingFinished:1];
    if ([*(a1 + 56) deviceRequiresMultiTechDiscovery:*(a1 + 48)] && (objc_msgSend(*(a1 + 48), "wifiAwareSetupFinished") & 1) == 0)
    {
      goto LABEL_48;
    }

    v17 = [*(a1 + 48) SSID];
    v18 = v17 == 0 && v10;

    if (v18 != 1)
    {
      v30 = [*(a1 + 48) bluetoothIdentifier];

      if (!v30)
      {
        goto LABEL_60;
      }

      v19 = *(*(a1 + 88) + 8);
      if ((v13 & 1) == 0)
      {
        v16 = 0;
        v20 = 25;
        goto LABEL_49;
      }

      v16 = 0;
      goto LABEL_30;
    }

LABEL_29:
    v16 = 0;
    v19 = *(*(a1 + 88) + 8);
LABEL_30:
    v20 = 20;
LABEL_49:
    *(v19 + 24) = v20;
    goto LABEL_50;
  }

  if (!a2)
  {
LABEL_22:
    v16 = 0;
    goto LABEL_23;
  }

  if (a2 == 10 && v12)
  {
    goto LABEL_29;
  }

LABEL_60:
  if (([*(*(a1 + 56) + 304) busy] & 1) == 0)
  {
    v36 = *(a1 + 56);
    v37 = *(v36 + 304);
    *(v36 + 304) = 0;
  }
}

void sub_1000124DC(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v9 = a3;
  v6 = a4;
  if (dword_1000603A0 <= 50 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
  {
    sub_100032B38();
  }

  if (([*(*(a1 + 40) + 304) busy] & 1) == 0)
  {
    v7 = *(a1 + 40);
    v8 = *(v7 + 304);
    *(v7 + 304) = 0;
  }
}

void sub_1000126A8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (dword_1000603A0 <= 50 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
  {
    v10 = v5;
    v11 = v6;
    LogPrintF();
  }

  v7 = [v6 discoverySet];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000127C4;
  v12[3] = &unk_1000591D0;
  v8 = *(a1 + 32);
  v13 = v5;
  v14 = v8;
  v9 = v5;
  [v7 enumerateObjectsUsingBlock:v12];
}

void sub_1000127C4(uint64_t a1, void *a2)
{
  v3 = a2;
  if (dword_1000603A0 <= 50 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
  {
    v9 = *(a1 + 32);
    v10 = v3;
    LogPrintF();
  }

  v4 = [NSMutableArray array:v9];
  v5 = [v3 configuration];
  if (v5)
  {
    [v4 addObject:v5];
  }

  v6 = [v3 configurations];
  if (v6)
  {
    [v4 addObjectsFromArray:v6];
  }

  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100012928;
  v11[3] = &unk_1000591A8;
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v12 = v7;
  v13 = v8;
  [v4 enumerateObjectsUsingBlock:v11];
}

void sub_100012928(uint64_t a1, void *a2)
{
  v3 = a2;
  v11 = v3;
  if (dword_1000603A0 <= 50)
  {
    if (dword_1000603A0 != -1 || (v4 = _LogCategory_Initialize(), v3 = v11, v4))
    {
      v7 = *(a1 + 32);
      v9 = v3;
      LogPrintF();
      v3 = v11;
    }
  }

  v5 = [*(a1 + 40) _parseDADiscoveryConfiguration:{v3, v7, v9}];
  if (dword_1000603A0 <= 50 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
  {
    v8 = *(a1 + 32);
    v10 = v5;
    LogPrintF();
  }

  if ([v5 count])
  {
    [*(*(a1 + 40) + 280) addObjectsFromArray:v5];
    v6 = *(a1 + 40);
    if (!*(v6 + 256))
    {
      objc_storeStrong((v6 + 256), *(a1 + 32));
    }
  }
}

void sub_100012BDC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 objectForKey:CBCentralManagerScanOptionMatchingRulePayloadKey];
  if (v4)
  {
    v5 = 0;
  }

  else
  {
    v5 = [v3 objectForKey:CBCentralManagerScanOptionMatchingRuleServiceUUID];
  }

  v6 = [v3 objectForKey:CBCentralManagerScanOptionFilterIdentifierString];
  if (v5)
  {
    v7 = *(*(a1 + 32) + 264);
    v15 = v5;
    v8 = [NSArray arrayWithObjects:&v15 count:1];
    v9 = [v7 retrieveConnectedPeripheralsWithServices:v8];

    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100012D60;
    v12[3] = &unk_100059220;
    v10 = v6;
    v11 = *(a1 + 32);
    v13 = v10;
    v14 = v11;
    [v9 enumerateObjectsUsingBlock:v12];
  }
}

void sub_100012D60(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_opt_new();
  [v4 setObject:*(a1 + 32) forKey:CBCentralManagerScanOptionFilterIdentifierString];
  [*(a1 + 40) centralManager:*(*(a1 + 40) + 264) didDiscoverPeripheral:v3 advertisementData:v4 RSSI:&off_10005ABC0];
}

void sub_100012DF4(id a1, NSError *a2, NSNumber *a3)
{
  v5 = a2;
  v4 = a3;
  if (dword_1000603A0 <= 50 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
  {
    sub_100032BE0();
  }
}

void sub_100013028(uint64_t a1, void *a2, void *a3)
{
  v15 = a2;
  v5 = a3;
  v6 = [v5 objectForKeyedSubscript:@"ADVData"];
  v7 = [v6 objectForKeyedSubscript:CBAdvertisementDataTimestamp];
  [v7 doubleValue];
  v9 = v8;

  v10 = *(*(a1 + 32) + 128) + *(*(a1 + 32) + 128);
  v11 = *(a1 + 48) - v9;
  if (dword_1000603A0 <= 50 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
  {
    v13 = v11;
    v14 = v10;
    v12 = v15;
    LogPrintF();
  }

  if (v11 > v10)
  {
    if (dword_1000603A0 <= 50 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
    {
      sub_100032C84();
    }

    [*(a1 + 40) addObject:{v5, v12, *&v13, *&v14}];
  }
}

void sub_100013180(uint64_t a1, void *a2)
{
  v3 = a2;
  v13 = [v3 objectForKeyedSubscript:@"CBPeripheral"];
  v4 = [v3 objectForKeyedSubscript:@"ADVData"];
  v5 = [v4 objectForKeyedSubscript:CBAdvertisementDataTimestamp];
  [v5 doubleValue];
  v7 = v6;

  v8 = [v3 objectForKeyedSubscript:@"DADevice"];

  v9 = [v13 identifier];
  [*(*(a1 + 32) + 288) removeObjectForKey:v9];
  v12 = *(a1 + 40) - v7;
  v10 = DAErrorF();
  v11 = [[DADeviceEvent alloc] initWithEventType:41 device:v8 error:{v10, v8, v13, *&v12}];
  [*(a1 + 32) _discoveryEvent:v11 appID:*(*(a1 + 32) + 256)];
}

void *sub_1000133F0(void *result)
{
  v1 = result[5];
  v2 = *(v1 + 312);
  if (result[4] == v2)
  {
    v3 = result;
    *(v1 + 312) = 0;

    if (dword_1000603A0 <= 50 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
    {
      sub_100032D1C();
    }

    [v3[5] _stopBTScan];
    [v3[5] _checkAndReportLostBTDevices];
    result = v3[5];
    if (*(result + 296) == 1)
    {
      [result _startBTScan];
      v4 = v3[5];

      return [v4 _armBTScanTimer];
    }
  }

  return result;
}

void sub_100013654(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = [a3 objectForKeyedSubscript:@"DADevice"];
  v4 = DAErrorF();
  v5 = [[DADeviceEvent alloc] initWithEventType:41 device:v6 error:{v4, v6}];
  [*(a1 + 32) _discoveryEvent:v5 appID:*(*(a1 + 32) + 256)];
}

void sub_10001386C(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [v6 state];
  v4 = [v6 bluetoothIdentifier];
  if (v4)
  {
    if (v3 == 20 || v3 == 25)
    {
    }

    else
    {

      if (v3 != 10)
      {
        goto LABEL_9;
      }
    }

    v5 = [v6 bluetoothIdentifier];
    [*(a1 + 32) addObject:v5];
    if (dword_1000603A0 <= 50 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
    {
      sub_100032DF4();
    }
  }

LABEL_9:
}

void sub_100013BC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100013BDC(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v13 = a2;
  v7 = [v13 bluetoothIdentifier];
  v8 = (a1 + 32);
  v9 = [*(a1 + 32) identifier];
  v10 = [v7 isEqual:v9];

  if (v10)
  {
    v12 = *(a1 + 40);
    v11 = a1 + 40;
    objc_storeStrong((*(v12 + 8) + 40), a2);
    *a4 = 1;
    if (dword_1000603A0 <= 50 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
    {
      sub_100032E74(v11, v8);
    }
  }
}

void sub_100013F2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100013F48(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v12 = a2;
  v7 = [v12 bluetoothIdentifier];
  v8 = (a1 + 32);
  v9 = [v7 isEqual:*(a1 + 32)];

  if (v9)
  {
    v11 = *(a1 + 40);
    v10 = a1 + 40;
    objc_storeStrong((*(v11 + 8) + 40), a2);
    *a4 = 1;
    if (dword_1000603A0 <= 50 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
    {
      sub_100032EF4(v10, v8);
    }
  }
}

void sub_1000141C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000141E0(void *a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v14 = a2;
  v7 = [v14 appAccessInfoMap];
  v8 = [v7 objectForKeyedSubscript:a1[4]];

  v9 = [v14 SSID];
  v10 = a1 + 5;
  v11 = [v9 isEqualToString:a1[5]];

  if (v11)
  {
    if (v8)
    {
      v13 = a1[6];
      v12 = (a1 + 6);
      objc_storeStrong((*(v13 + 8) + 40), a2);
      *a4 = 1;
      if (dword_1000603A0 <= 50 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
      {
        sub_100032F34(v10, v12);
      }
    }
  }
}

void sub_100014CF4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (dword_1000603A0 <= 50 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
  {
    v11 = v5;
    v12 = v6;
    LogPrintF();
  }

  v7 = [v6 discoverySet];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100014E5C;
  v13[3] = &unk_1000593A0;
  v14 = v5;
  v15 = *(a1 + 32);
  v16 = v6;
  v8 = *(a1 + 48);
  v17 = *(a1 + 40);
  v18 = v8;
  v19 = *(a1 + 56);
  v9 = v6;
  v10 = v5;
  [v7 enumerateObjectsUsingBlock:v13];
}

void sub_100014E5C(uint64_t a1, void *a2)
{
  v3 = a2;
  if (dword_1000603A0 <= 50 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
  {
    v11 = *(a1 + 32);
    v14 = v3;
    LogPrintF();
  }

  v4 = [v3 configuration];
  if (v4)
  {
    if (dword_1000603A0 <= 50 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
    {
      v12 = *(a1 + 32);
      v15 = v4;
      LogPrintF();
    }

    v5 = [v4 associationIdentifier];
    v6 = [*(a1 + 40) objectForKeyedSubscript:CBCentralManagerScanOptionFilterIdentifierString];
    v7 = [v6 isEqualToString:v5];

    if (v7)
    {
      if (dword_1000603A0 <= 50 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
      {
        v13 = *(a1 + 32);
        v17 = *(a1 + 48);
        LogPrintF();
        [*(a1 + 56) _reportDiscoveredBTDevice:*(a1 + 64) advertisementData:*(a1 + 40) RSSI:*(a1 + 72) AppID:*(a1 + 32) DADaemonDiscovery:*(a1 + 48) DADiscovery:v3 config:{v4, v17, v3, v4}];
      }

      else
      {
        [*(a1 + 56) _reportDiscoveredBTDevice:*(a1 + 64) advertisementData:*(a1 + 40) RSSI:*(a1 + 72) AppID:*(a1 + 32) DADaemonDiscovery:*(a1 + 48) DADiscovery:v3 config:{v4, v16, v18, v19}];
      }
    }
  }

  v8 = [v3 configurations];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_100015100;
  v20[3] = &unk_100059378;
  v21 = *(a1 + 32);
  v22 = *(a1 + 40);
  v23 = *(a1 + 48);
  v24 = v3;
  v9 = *(a1 + 64);
  v25 = *(a1 + 56);
  v26 = v9;
  v27 = *(a1 + 72);
  v10 = v3;
  [v8 enumerateObjectsUsingBlock:v20];
}

void sub_100015100(uint64_t a1, void *a2)
{
  v3 = a2;
  v10 = v3;
  if (dword_1000603A0 <= 50)
  {
    if (dword_1000603A0 != -1 || (v4 = _LogCategory_Initialize(), v3 = v10, v4))
    {
      v8 = *(a1 + 32);
      v9 = v3;
      LogPrintF();
      v3 = v10;
    }
  }

  v5 = [v3 associationIdentifier];
  v6 = [*(a1 + 40) objectForKeyedSubscript:CBCentralManagerScanOptionFilterIdentifierString];
  v7 = [v6 isEqualToString:v5];

  if (v7)
  {
    if (dword_1000603A0 <= 50 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
    {
      sub_1000330A0(a1);
    }

    [*(a1 + 64) _reportDiscoveredBTDevice:*(a1 + 72) advertisementData:*(a1 + 40) RSSI:*(a1 + 80) AppID:*(a1 + 32) DADaemonDiscovery:*(a1 + 48) DADiscovery:*(a1 + 56) config:v10];
  }
}

void sub_100015474(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000154A8(uint64_t a1)
{
  if (*(*(*(a1 + 32) + 8) + 40) && dword_1000603A0 <= 90)
  {
    if (dword_1000603A0 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        return;
      }

      v2 = *(*(*(a1 + 32) + 8) + 40);
    }

    v3 = CUPrintNSError();
    LogPrintF();
  }
}

void sub_10001556C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (dword_1000603A0 <= 50 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
  {
    v13 = v5;
    v14 = v6;
    LogPrintF();
  }

  v7 = [NSMutableArray array:v13];
  v8 = [v6 localNetworkScannerSet];
  [v8 removeAllObjects];

  v9 = [v6 discoverySet];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100015734;
  v17[3] = &unk_1000591D0;
  v18 = v5;
  v19 = v7;
  v10 = v7;
  v11 = v5;
  [v9 enumerateObjectsUsingBlock:v17];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100015824;
  v15[3] = &unk_1000591A8;
  v15[4] = *(a1 + 32);
  v16 = v6;
  v12 = v6;
  [v10 enumerateObjectsUsingBlock:v15];
}

void sub_100015734(uint64_t a1, void *a2)
{
  v7 = a2;
  if (dword_1000603A0 <= 50 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
  {
    v5 = *(a1 + 32);
    v6 = v7;
    LogPrintF();
  }

  v3 = [v7 configuration];
  if (v3)
  {
    [*(a1 + 40) addObject:v3];
  }

  v4 = [v7 configurations];
  if (v4)
  {
    [*(a1 + 40) addObjectsFromArray:v4];
  }
}

void sub_100015824(uint64_t a1, void *a2)
{
  v3 = a2;
  if (dword_1000603A0 <= 50 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
  {
    sub_100033108(v3);
  }

  v4 = [v3 bonjourServiceName];
  if (v4 || ([v3 bonjourServiceTypes], v4 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v4, "count")))
  {
  }

  else
  {
    v13 = [v3 bonjourTXTRecordData];

    if (!v13)
    {
      goto LABEL_10;
    }
  }

  v19 = 0;
  v5 = [[DALocalNetworkScanner alloc] initWithConfiguration:v3 error:&v19];
  v6 = v19;
  [(DALocalNetworkScanner *)v5 setDispatchQueue:*(*(a1 + 32) + 88)];
  if (v5)
  {
    v7 = [*(a1 + 40) localNetworkScannerSet];
    [v7 addObject:v5];

    v8 = dispatch_group_create();
    dispatch_group_enter(v8);
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_100015A48;
    v17[3] = &unk_1000593F0;
    v18 = v8;
    v9 = v8;
    [(DALocalNetworkScanner *)v5 discoverEndpointWithCompletion:v17];
    v10 = *(*(a1 + 32) + 88);
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100015BDC;
    v14[3] = &unk_100058CB8;
    v11 = *(a1 + 40);
    v12 = *(a1 + 32);
    v15 = v11;
    v16 = v12;
    dispatch_group_notify(v9, v10, v14);
  }

  else
  {
    sub_100033174();
  }

LABEL_10:
}

void sub_100015A48(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100015BD4;
  v8[3] = &unk_100058B58;
  v9 = *(a1 + 32);
  v7 = objc_retainBlock(v8);
  if (v5)
  {
    if (dword_1000603A0 > 50 || dword_1000603A0 == -1 && !_LogCategory_Initialize())
    {
      goto LABEL_6;
    }

LABEL_4:
    LogPrintF();
    goto LABEL_6;
  }

  if (dword_1000603A0 <= 90 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
  {
    goto LABEL_4;
  }

LABEL_6:
  (v7[2])(v7);
}

void sub_100015BDC(uint64_t a1)
{
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  obj = [*(a1 + 32) localNetworkScannerSet];
  v2 = [obj countByEnumeratingWithState:&v31 objects:v35 count:16];
  if (v2)
  {
    v3 = *v32;
    do
    {
      for (i = 0; i != v2; i = i + 1)
      {
        if (*v32 != v3)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v31 + 1) + 8 * i);
        v6 = [v5 discoveredEndpoint];

        if (v6)
        {
          v25 = 0;
          v26 = &v25;
          v27 = 0x3032000000;
          v28 = sub_100002EE4;
          v29 = sub_100002EF4;
          v30 = 0;
          v7 = [v5 discoveryConfiguration];
          v8 = [v7 bundleID];

          v9 = [*(a1 + 40) getDevicesWithFlags:8 appID:0];
          v24[0] = _NSConcreteStackBlock;
          v24[1] = 3221225472;
          v24[2] = sub_100015FD0;
          v24[3] = &unk_100059328;
          v24[4] = v5;
          v24[5] = &v25;
          [v9 enumerateObjectsUsingBlock:v24];
          v10 = [v5 discoveryConfiguration];
          v11 = v26[5];
          if (v11)
          {
            [v11 setDiscoveryConfiguration:v10];
          }

          else
          {
            v12 = objc_alloc_init(DADevice);
            v13 = v26[5];
            v26[5] = v12;

            v14 = +[NSUUID UUID];
            v15 = [v14 UUIDString];
            [v26[5] setIdentifier:v15];

            [v26[5] setDiscoveryConfiguration:v10];
            [v26[5] setFlags:8];
            v16 = [v10 displayName];
            [v26[5] setName:v16];

            v17 = [v10 hotspotSSIDs];
            LOBYTE(v14) = [v17 count] == 0;

            if ((v14 & 1) == 0)
            {
              v18 = [v10 hotspotSSIDs];
              v19 = [v18 firstObject];
              [v26[5] setSSID:v19];
            }

            if (dword_1000603A0 <= 50 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
            {
              v22 = v26[5];
              LogPrintF();
            }
          }

          v20 = [DADeviceEvent alloc];
          v21 = [v20 initWithEventType:40 device:v26[5]];
          [*(a1 + 40) _discoveryEvent:v21 appID:v8];

          _Block_object_dispose(&v25, 8);
        }
      }

      v2 = [obj countByEnumeratingWithState:&v31 objects:v35 count:16];
    }

    while (v2);
  }
}

void sub_100015FA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100015FD0(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v13 = a2;
  v7 = [v13 networkEndpoint];
  v8 = (a1 + 32);
  v9 = [*(a1 + 32) discoveredEndpoint];
  v10 = [v7 isEqual:v9];

  if (v10)
  {
    v12 = *(a1 + 40);
    v11 = a1 + 40;
    objc_storeStrong((*(v12 + 8) + 40), a2);
    *a4 = 1;
    if (dword_1000603A0 <= 50 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
    {
      sub_1000331F0(v11, v8);
    }
  }
}

void sub_100016B88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23)
{
  objc_destroyWeak((v23 + 40));
  objc_destroyWeak(&location);
  _Block_object_dispose(&a23, 8);
  _Unwind_Resume(a1);
}

void sub_100016BC4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (dword_1000603A0 <= 50 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
  {
    v11 = v5;
    v12 = v6;
    LogPrintF();
  }

  v7 = [v6 discoverySet];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100016CF4;
  v13[3] = &unk_100058F88;
  v14 = v5;
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v15 = v8;
  v16 = v9;
  v10 = v5;
  [v7 enumerateObjectsUsingBlock:v13];
}

void sub_100016CF4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 configuration];
  if (v4)
  {
    if (dword_1000603A0 <= 30 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
    {
      sub_1000335B4(a1, v4);
    }

    v5 = [v4 bundleID];
    v6 = [v4 bluetoothCompanyIdentifiers];
    if ([v6 count])
    {
      v7 = 1;
    }

    else
    {
      v8 = [v4 bluetoothCompanyPayload];
      if ([v8 length])
      {
        v7 = 1;
      }

      else
      {
        v9 = [v4 bluetoothCompanyPayloadMask];
        if ([v9 length])
        {
          v7 = 1;
        }

        else
        {
          v10 = [v4 bluetoothNameSubstring];
          if ([v10 length])
          {
            v7 = 1;
          }

          else
          {
            v11 = [v4 bluetoothServicePayload];
            if ([v11 length])
            {
              v7 = 1;
            }

            else
            {
              v36 = [v4 bluetoothServicePayloadMask];
              if ([v36 length])
              {
                v7 = 1;
              }

              else
              {
                v35 = [v4 bluetoothServices];
                v7 = [v35 count] != 0;
              }
            }
          }
        }
      }
    }

    v12 = [v4 wifiAwareServiceName];

    if (v7 && !v12)
    {
      sub_100033654(v5);
      goto LABEL_46;
    }

    v47 = 0u;
    v48 = 0u;
    v46 = 0u;
    v45 = 0u;
    v13 = [v4 hotspotSSIDs];
    v14 = [v13 countByEnumeratingWithState:&v45 objects:v50 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v46;
      do
      {
        for (i = 0; i != v15; i = i + 1)
        {
          if (*v46 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = [[DAWiFiScanDescriptor alloc] initWithSSID:*(*(&v45 + 1) + 8 * i)];
          [(DAWiFiScanDescriptor *)v18 setBundleID:v5];
          [(DAWiFiScanDescriptor *)v18 setConfiguration:v4];
          [*(a1 + 40) addObject:v18];
        }

        v15 = [v13 countByEnumeratingWithState:&v45 objects:v50 count:16];
      }

      while (v15);
    }

    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v19 = [v4 hotspotSSIDPrefixes];
    v20 = [v19 countByEnumeratingWithState:&v41 objects:v49 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v42;
      do
      {
        for (j = 0; j != v21; j = j + 1)
        {
          if (*v42 != v22)
          {
            objc_enumerationMutation(v19);
          }

          v24 = [[DAWiFiScanDescriptor alloc] initWithPrefix:*(*(&v41 + 1) + 8 * j)];
          [(DAWiFiScanDescriptor *)v24 setBundleID:v5];
          [(DAWiFiScanDescriptor *)v24 setConfiguration:v4];
          [*(a1 + 40) addObject:v24];
        }

        v21 = [v19 countByEnumeratingWithState:&v41 objects:v49 count:16];
      }

      while (v21);
    }

    v25 = [v4 wifiAwareServiceName];

    if (v25)
    {
      v26 = [v4 wifiAwareServiceName];
      v27 = [v4 wifiAwareVendorNameMatch];
      v28 = [v4 wifiAwareModelNameMatch];
      v29 = [[DAWiFiScanDescriptor alloc] initWithServiceName:v26 vendorNameMatch:v27 modelNameMatch:v28];
      [(DAWiFiScanDescriptor *)v29 setBundleID:*(a1 + 32)];
      [(DAWiFiScanDescriptor *)v29 setConfiguration:v4];
      [*(a1 + 40) addObject:v29];
    }
  }

  v30 = [v3 configurations];
  v37[0] = _NSConcreteStackBlock;
  v37[1] = 3221225472;
  v37[2] = sub_1000171FC;
  v37[3] = &unk_100059418;
  v38 = *(a1 + 32);
  v39 = *(a1 + 40);
  v40 = v4;
  [v30 enumerateObjectsUsingBlock:v37];
  v31 = [v3 deviceOTANameToBroadcast];

  if (v31)
  {
    v32 = [v3 deviceOTANameToBroadcast];
    v33 = *(*(a1 + 48) + 8);
    v34 = *(v33 + 40);
    *(v33 + 40) = v32;
  }

LABEL_46:
}

void sub_1000171FC(uint64_t a1, void *a2)
{
  v3 = a2;
  if (dword_1000603A0 <= 30 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
  {
    sub_1000336E0(a1, v3);
  }

  v4 = [v3 bluetoothCompanyIdentifiers];
  if ([v4 count])
  {
    v5 = 1;
  }

  else
  {
    v6 = [v3 bluetoothCompanyPayload];
    if ([v6 length])
    {
      v5 = 1;
    }

    else
    {
      v7 = [v3 bluetoothCompanyPayloadMask];
      if ([v7 length])
      {
        v5 = 1;
      }

      else
      {
        v8 = [v3 bluetoothNameSubstring];
        if ([v8 length])
        {
          v5 = 1;
        }

        else
        {
          v9 = [v3 bluetoothServicePayload];
          if ([v9 length])
          {
            v5 = 1;
          }

          else
          {
            v10 = [v3 bluetoothServicePayloadMask];
            if ([v10 length])
            {
              v5 = 1;
            }

            else
            {
              v11 = [v3 bluetoothServices];
              v5 = [v11 count] != 0;
            }
          }
        }
      }
    }
  }

  v12 = [v3 wifiAwareServiceName];

  if (v5 && !v12)
  {
    sub_100033780();
  }

  else
  {
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v13 = [v3 hotspotSSIDs];
    v14 = [v13 countByEnumeratingWithState:&v34 objects:v39 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v35;
      do
      {
        for (i = 0; i != v15; i = i + 1)
        {
          if (*v35 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = [[DAWiFiScanDescriptor alloc] initWithSSID:*(*(&v34 + 1) + 8 * i)];
          [(DAWiFiScanDescriptor *)v18 setBundleID:*(a1 + 32)];
          [(DAWiFiScanDescriptor *)v18 setConfiguration:v3];
          [*(a1 + 40) addObject:v18];
        }

        v15 = [v13 countByEnumeratingWithState:&v34 objects:v39 count:16];
      }

      while (v15);
    }

    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v19 = [v3 hotspotSSIDPrefixes];
    v20 = [v19 countByEnumeratingWithState:&v30 objects:v38 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v31;
      do
      {
        for (j = 0; j != v21; j = j + 1)
        {
          if (*v31 != v22)
          {
            objc_enumerationMutation(v19);
          }

          v24 = [[DAWiFiScanDescriptor alloc] initWithPrefix:*(*(&v30 + 1) + 8 * j)];
          [(DAWiFiScanDescriptor *)v24 setBundleID:*(a1 + 32)];
          [(DAWiFiScanDescriptor *)v24 setConfiguration:v3];
          [*(a1 + 40) addObject:v24];
        }

        v21 = [v19 countByEnumeratingWithState:&v30 objects:v38 count:16];
      }

      while (v21);
    }

    v25 = [v3 wifiAwareServiceName];

    if (v25)
    {
      v26 = [v3 wifiAwareServiceName];
      v27 = [*(a1 + 48) wifiAwareVendorNameMatch];
      v28 = [*(a1 + 48) wifiAwareModelNameMatch];
      v29 = [[DAWiFiScanDescriptor alloc] initWithServiceName:v26 vendorNameMatch:v27 modelNameMatch:v28];
      [(DAWiFiScanDescriptor *)v29 setBundleID:*(a1 + 32)];
      [(DAWiFiScanDescriptor *)v29 setConfiguration:v3];
      [*(a1 + 40) addObject:v29];
    }
  }
}

void sub_1000175F4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (v5)
  {
    if (dword_1000603A0 <= 30 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
    {
      sub_1000337E0();
    }
  }

  else
  {
    if (dword_1000603A0 <= 30 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
    {
      sub_100033820();
    }

    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10001774C;
    v10[3] = &unk_100059468;
    v8 = WeakRetained;
    v9 = *(a1 + 32);
    v11 = v8;
    v12 = v9;
    objc_copyWeak(&v13, (a1 + 40));
    [v6 enumerateKeysAndObjectsUsingBlock:v10];
    objc_destroyWeak(&v13);
  }
}

void sub_10001774C(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (dword_1000603A0 <= 30 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
  {
    v89 = v5;
    v90 = v6;
    LogPrintF();
  }

  v7 = [v5 configuration];
  v8 = [v7 bundleID];

  v9 = [v5 configuration];
  v10 = [v9 existingDeviceIdentifier];

  v95 = a1;
  if (!v10)
  {
    v96 = [a1[5] getDevicesWithFlags:1032 appID:0];
    v104 = 0u;
    v105 = 0u;
    v106 = 0u;
    v107 = 0u;
    obj = v6;
    v97 = [obj countByEnumeratingWithState:&v104 objects:v113 count:16];
    if (!v97)
    {
      goto LABEL_95;
    }

    v91 = v6;
    v93 = v8;
    v94 = *v105;
LABEL_22:
    v24 = 0;
LABEL_23:
    if (*v105 != v94)
    {
      objc_enumerationMutation(obj);
    }

    v98 = v24;
    v25 = *(*(&v104 + 1) + 8 * v24);
    v26 = v5;
    v27 = [v5 configuration];
    v99 = [v27 associationIdentifier];

    v102 = 0u;
    v103 = 0u;
    v100 = 0u;
    v101 = 0u;
    v28 = v96;
    v29 = [v28 countByEnumeratingWithState:&v100 objects:v112 count:16];
    if (!v29)
    {
LABEL_35:

      v5 = v26;
      v40 = v95;
      v41 = v98;
      goto LABEL_46;
    }

    v30 = v29;
    v31 = *v101;
LABEL_27:
    v32 = 0;
    while (1)
    {
      if (*v101 != v31)
      {
        objc_enumerationMutation(v28);
      }

      v33 = *(*(&v100 + 1) + 8 * v32);
      if ([v33 state] != 1)
      {
        v34 = [v33 SSID];
        v35 = [v25 SSID];
        v36 = [v34 isEqualToString:v35];

        if (v36)
        {
          v5 = v26;
          if (dword_1000603A0 <= 30 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
          {
            sub_100033860(v26);
          }

          v42 = [v26 configuration];
          [v33 setDiscoveryConfiguration:v42];

          v40 = v95;
          v41 = v98;
          if ([v25 isUnsecured])
          {
            [v33 setFlags:{objc_msgSend(v33, "flags") | 0x80}];
          }

LABEL_45:
          v44 = v33;

          if (v44)
          {
            goto LABEL_70;
          }

LABEL_46:
          v45 = [v25 serviceName];
          if (v45 && (v46 = v45, [v25 wifiAwareOTAName], v47 = objc_claimAutoreleasedReturnValue(), v47, v46, v47))
          {
            v48 = v40[4];
            v49 = [v25 wifiAwareOTAName];
            v44 = [v48 findAlreadyDiscoveredDeviceForMultiTech:v99 appID:v93 bluetoothIdentifier:0 wifiAwareOTAName:v49];

            if (!v44)
            {
              v44 = objc_alloc_init(DADevice);
              v54 = +[NSUUID UUID];
              v55 = [v54 UUIDString];
              [v44 setIdentifier:v55];

              goto LABEL_60;
            }

            if (dword_1000603A0 <= 30)
            {
              if (dword_1000603A0 != -1 || _LogCategory_Initialize())
              {
                sub_1000338B8();
              }

LABEL_60:
              if (dword_1000603A0 <= 30 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
              {
                sub_1000338F8(v25);
              }
            }

            v56 = [v25 wifiAwareOTAName];
            [v44 setWifiAwareOTAName:v56];

            v57 = [v25 wifiAwareVendorName];
            [v44 setWifiAwareVendorName:v57];

            v58 = [v25 wifiAwareModelName];
            [v44 setWifiAwareModelName:v58];

            [v44 setSignature:{objc_msgSend(v25, "signature")}];
            if (v44)
            {
LABEL_64:
              v59 = [v5 configuration];
              [v44 setDiscoveryConfiguration:v59];

              v60 = [v5 configuration];
              if (([v60 flags] & 0x40) != 0)
              {
                v61 = 1024;
              }

              else
              {
                v61 = 8;
              }

              [v44 setFlags:v61];

              v62 = [v5 configuration];
              v63 = [v62 displayName];
              [v44 setName:v63];

              if (dword_1000603A0 <= 30 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
              {
                sub_10003394C(v5);
              }

              goto LABEL_70;
            }
          }

          else
          {
            v50 = [v25 SSID];

            if (v50)
            {
              v44 = objc_alloc_init(DADevice);
              v51 = +[NSUUID UUID];
              v52 = [v51 UUIDString];
              [v44 setIdentifier:v52];

              v53 = [v25 SSID];
              [v44 setSSID:v53];

              [v44 setNetworkUnsecured:{objc_msgSend(v25, "isUnsecured")}];
              if (v44)
              {
                goto LABEL_64;
              }
            }
          }

          if (dword_1000603A0 <= 90 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
          {
            sub_1000339A4();
          }

          v44 = 0;
LABEL_70:
          v64 = [v44 appAccessInfoMap];
          v65 = [v5 bundleID];
          v66 = [v64 objectForKeyedSubscript:v65];
          v67 = [v66 accessoryOptions];

          WeakRetained = objc_loadWeakRetained(v40 + 6);
          v69 = [v5 bundleID];
          v70 = [WeakRetained appBundleInfoAccessoryOptions:v69];

          v71 = [v44 appAccessInfoMap];
          v72 = [v5 bundleID];
          v73 = [v71 objectForKeyedSubscript:v72];
          if (![v73 state])
          {

LABEL_75:
            v74 = [[DADeviceEvent alloc] initWithEventType:40 device:v44];
            v75 = v40[4];
            v76 = [v5 bundleID];
            [v75 _discoveryEvent:v74 appID:v76];

            goto LABEL_76;
          }

          if ((v70 & 2) != 0 && (v67 & 2) == 0)
          {
            goto LABEL_75;
          }

LABEL_76:
          if ([v40[5] deviceRequiresMultiTechDiscovery:v44] && (!objc_msgSend(v44, "bluetoothSetupFinished") || (objc_msgSend(v44, "wifiAwareSetupFinished") & 1) == 0))
          {
            if (dword_1000603A0 <= 30 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
            {
              sub_1000339E4();
            }

            v77 = [v44 appAccessInfoMap];
            v78 = [v77 objectForKeyedSubscript:v93];

            [v40[4] updateAppAccessInfo:v78 accessoryDevice:v44 removalType:0 error:0];
          }

          v24 = v41 + 1;
          if (v24 == v97)
          {
            v79 = [obj countByEnumeratingWithState:&v104 objects:v113 count:16];
            v97 = v79;
            if (!v79)
            {
              v96 = v28;
              v6 = v91;
              goto LABEL_94;
            }

            goto LABEL_22;
          }

          goto LABEL_23;
        }

        v37 = [v33 wifiAwareDevicePairingID];
        v38 = [v25 wifiAwarePairedID];
        v39 = [v37 isEqual:v38];

        if (v39)
        {
          v5 = v26;
          if (dword_1000603A0 <= 30 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
          {
            sub_100033860(v26);
          }

          v43 = [v26 configuration];
          [v33 setDiscoveryConfiguration:v43];

          [v33 setSignature:{objc_msgSend(v25, "signature")}];
          v40 = v95;
          v41 = v98;
          goto LABEL_45;
        }
      }

      if (v30 == ++v32)
      {
        v30 = [v28 countByEnumeratingWithState:&v100 objects:v112 count:16];
        if (v30)
        {
          goto LABEL_27;
        }

        goto LABEL_35;
      }
    }
  }

  v11 = [v5 configuration];
  v12 = [v11 existingDeviceIdentifier];

  v96 = v12;
  obj = [a1[4] findExistingDeviceForUpgrade:v12 appID:v8];
  if (obj)
  {
    v93 = v8;
    v110 = 0u;
    v111 = 0u;
    v108 = 0u;
    v109 = 0u;
    v13 = v6;
    v14 = [v13 countByEnumeratingWithState:&v108 objects:v114 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v109;
      do
      {
        for (i = 0; i != v15; i = i + 1)
        {
          if (*v109 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v108 + 1) + 8 * i);
          v19 = [v18 serviceName];
          if (v19)
          {
            v20 = v19;
            v21 = [v18 wifiAwareOTAName];
            if (v21)
            {
              v22 = v21;
              v23 = [v18 wifiAwarePairedID];

              if (!v23)
              {
                v80 = [v5 configuration];
                [obj setDiscoveryConfiguration:v80];

                v81 = [v18 wifiAwareOTAName];
                [obj setWifiAwareOTAName:v81];

                v82 = [v18 wifiAwareVendorName];
                [obj setWifiAwareVendorName:v82];

                v83 = [v18 wifiAwareModelName];
                [obj setWifiAwareModelName:v83];

                [obj setSignature:{objc_msgSend(v18, "signature")}];
                [obj setBluetoothOnboardingFinished:1];
                [obj setWiFiAwareOnboardingFinished:0];
                [obj setDeviceUpgradeFinished:0 inProgress:1 failed:0];
                v84 = [[DADeviceEvent alloc] initWithEventType:40 device:obj];
                v85 = v95[4];
                v86 = [v5 bundleID];
                [v85 _discoveryEvent:v84 appID:v86];

                v87 = [obj appAccessInfoMap];
                v88 = [v87 objectForKeyedSubscript:v93];

                [v95[4] updateAppAccessInfo:v88 accessoryDevice:obj removalType:0 error:0];
                goto LABEL_93;
              }
            }

            else
            {
            }
          }
        }

        v15 = [v13 countByEnumeratingWithState:&v108 objects:v114 count:16];
      }

      while (v15);
    }

LABEL_93:

LABEL_94:
    v8 = v93;
  }

LABEL_95:
}

void sub_10001847C(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  v7 = [v6 networkName];
  v8 = [v7 isEqualToString:*(a1 + 32)];

  if (v8)
  {
    if (dword_1000603A0 <= 30 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
    {
      sub_100033A64(v6);
    }

    v9 = *(a1 + 40);
    v12 = 0;
    v10 = [v9 removeKnownNetworkProfile:v6 reason:1 error:&v12];
    v11 = v12;
    if ((v10 & 1) == 0 && dword_1000603A0 <= 90 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
    {
      sub_100033AE8();
    }

    *a4 = 1;
  }

  else if (dword_1000603A0 <= 90 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
  {
    sub_100033A24((a1 + 32));
  }
}

uint64_t sub_1000187C0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    if (dword_1000603A0 <= 90)
    {
      v6 = v3;
      if (dword_1000603A0 != -1 || (v3 = _LogCategory_Initialize(), v4 = v6, v3))
      {
        sub_100033BA8(a1);
LABEL_13:
        v4 = v6;
      }
    }
  }

  else if (dword_1000603A0 <= 90)
  {
    v6 = 0;
    if (dword_1000603A0 != -1 || (v3 = _LogCategory_Initialize(), v4 = 0, v3))
    {
      v3 = sub_100033C18(a1);
      goto LABEL_13;
    }
  }

  return _objc_release_x1(v3, v4);
}

void sub_100019100(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    if (dword_1000603A0 <= 90 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
    {
      sub_100033CB8();
    }

    v4 = *(*(a1 + 32) + 88);
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1000193F4;
    v8[3] = &unk_100059508;
    v5 = &v10;
    v10 = *(a1 + 40);
    v9 = v3;
    dispatch_async(v4, v8);
  }

  else
  {
    v6 = *(*(a1 + 32) + 88);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100019268;
    block[3] = &unk_100059508;
    v5 = &v12;
    v7 = *(a1 + 40);
    block[4] = *(a1 + 32);
    v12 = v7;
    dispatch_async(v6, block);
  }
}

void sub_100019268(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = [*(a1 + 32) getDevicesWithFlags:1032 appID:0];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v13;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v13 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v12 + 1) + 8 * i);
        v8 = [v7 wifiAwareDevicePairingID];

        if (v8)
        {
          v9 = [v7 appAccessInfoMap];
          v10 = [v9 allValues];
          v11 = [v10 firstObject];

          [v11 setState:0];
          [*(a1 + 32) updateAppAccessInfo:v11 accessoryDevice:v7 removalType:6 error:0];
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v4);
  }
}

void sub_1000195D4(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  v7 = [v6 bundleID];
  v8 = [v6 OSSpecificAttributes];
  v9 = [v8 objectForKeyedSubscript:@"AccessoryIdentifier"];

  v10 = (a1 + 32);
  v11 = [*(a1 + 32) isEqualToString:v9];
  v12 = v11;
  if (v11 && ([v6 networkName], v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v13, "isEqualToString:", *(a1 + 40)), v13, (v14 & 1) == 0))
  {
    if (dword_1000603A0 <= 30 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
    {
      sub_100033CF8(v6);
    }

    v25 = *(a1 + 48);
    v35 = 0;
    v26 = [v25 removeKnownNetworkProfile:v6 reason:1 error:&v35];
    v27 = v35;
    if ((v26 & 1) == 0 && dword_1000603A0 <= 90 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
    {
      sub_100033D7C();
    }

    *a4 = 1;
  }

  else
  {
    v15 = [v6 networkName];
    if ([v15 isEqualToString:*(a1 + 40)])
    {
      v16 = [*(a1 + 56) isEqualToString:v7];

      if (v16)
      {
        v32 = a4;
        v17 = [v6 OSSpecificAttributes];
        v18 = [v17 objectForKeyedSubscript:@"DisplayFriendlyName"];

        v19 = [*(a1 + 64) name];
        v20 = [v6 OSSpecificAttributes];
        v21 = [v20 mutableCopy];

        v33 = v19;
        if (v19)
        {
          v22 = v18;
          if (([v18 isEqualToString:v19] & 1) == 0)
          {
            v23 = v32;
            if (dword_1000603A0 <= 30 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
            {
              sub_100033E3C();
            }

            [v21 setObject:v33 forKeyedSubscript:@"DisplayFriendlyName"];
            v24 = 1;
            if (v12)
            {
              goto LABEL_32;
            }

            goto LABEL_27;
          }
        }

        else
        {
          v22 = v18;
        }

        v24 = 0;
        v23 = v32;
        if (v12)
        {
          goto LABEL_32;
        }

LABEL_27:
        if (*v10)
        {
          if (dword_1000603A0 <= 30 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
          {
            sub_100033EA8(v6, (a1 + 32));
          }

          [v21 setObject:*v10 forKeyedSubscript:@"AccessoryIdentifier"];
          v28 = v22;
          goto LABEL_33;
        }

LABEL_32:
        v28 = v22;
        if (!v24)
        {
LABEL_41:
          *v23 = 1;

          goto LABEL_42;
        }

LABEL_33:
        [v6 setOSSpecificAttributes:v21];
        if (dword_1000603A0 <= 30 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
        {
          sub_100033F18(v6);
        }

        v29 = *(a1 + 48);
        v34 = 0;
        v30 = [v29 updateKnownNetworkProfile:v6 properties:0 error:&v34];
        v31 = v34;
        if ((v30 & 1) == 0 && dword_1000603A0 <= 90 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
        {
          sub_100033F84();
        }

        goto LABEL_41;
      }
    }

    else
    {
    }

    if (dword_1000603A0 <= 90 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
    {
      sub_100033DFC((a1 + 40));
    }
  }

LABEL_42:
}

void sub_100019CFC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, id location)
{
  objc_destroyWeak((v27 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100019D20(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v7 = a2;
  v8 = a4;
  if (dword_1000603A0 <= 30 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v9 = *(*(a1 + 32) + 88);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100019E7C;
  block[3] = &unk_1000590C8;
  v15 = v7;
  v10 = *(a1 + 40);
  v11 = *(a1 + 32);
  v16 = v10;
  v17 = v11;
  v18 = *(a1 + 48);
  v19 = v8;
  v20 = a3;
  v12 = v8;
  v13 = v7;
  dispatch_async(v9, block);
}

void sub_100019E7C(uint64_t a1)
{
  v2 = (a1 + 32);
  if (*(a1 + 32))
  {
    if ([*(a1 + 40) upgradeInProgress])
    {
      if (dword_1000603A0 <= 90 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
      {
        sub_100034084(v2);
      }

      v3 = [*(a1 + 40) state];
      [*(a1 + 40) setDeviceUpgradeFinished:0 inProgress:0 failed:1];
LABEL_30:
      v5 = 0;
      goto LABEL_31;
    }

    if (dword_1000603A0 <= 90 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
    {
      sub_100034044(v2);
    }

    v3 = 0;
    if ([*(a1 + 48) deviceRequiresMultiTechDiscovery:*(a1 + 40)])
    {
      v5 = 4;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    if (dword_1000603A0 <= 30 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
    {
      sub_1000340C4();
    }

    if ([*(a1 + 40) upgradeInProgress])
    {
      [*(a1 + 40) setDeviceUpgradeFinished:1 inProgress:0 failed:0];
    }

    [*(a1 + 40) setWiFiAwareOnboardingFinished:1];
    if ([*(a1 + 48) deviceRequiresMultiTechDiscovery:*(a1 + 40)] && !objc_msgSend(*(a1 + 40), "bluetoothSetupFinished"))
    {
      v3 = 10;
    }

    else
    {
      v4 = [*(a1 + 40) discoveryConfiguration];
      if (([v4 flags] & 0x10) != 0)
      {
        v3 = 20;
      }

      else
      {
        v3 = 25;
      }
    }

    v5 = [*(a1 + 40) SSID];

    if (v5)
    {
      if (dword_1000603A0 <= 90 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
      {
        sub_100034044(v2);
      }

      [*(a1 + 40) setSSID:0];
      goto LABEL_30;
    }
  }

LABEL_31:
  v8 = [*(a1 + 56) deviceIdentifier];
  v6 = [*(a1 + 56) bundleIdentifier];
  v7 = [*(a1 + 48) _updateStateForDiscoveryDeviceID:v8 state:v3 appID:v6 referenceDevice:*(a1 + 40)];
  [v7 setWifiAwareDevicePairingID:*(a1 + 64)];
  [*(a1 + 56) setWifiAwarePairingID:*(a1 + 72)];
  if (v7)
  {
    if (dword_1000603A0 <= 30 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
    {
      sub_1000340E0(v7);
    }

    [*(a1 + 56) setState:v3];
    [*(a1 + 48) updateAppAccessInfo:*(a1 + 56) accessoryDevice:v7 removalType:v5 error:0];
  }

  else if (dword_1000603A0 <= 90 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
  {
    sub_10003413C();
  }
}

void sub_10001A164(uint64_t a1)
{
  v4 = [[DAWiFiAwarePairingInfo alloc] initWithWiFiAwareIdentifier:*(a1 + 48) pairingType:*(a1 + 56)];
  v2 = [[DAEventDeviceWiFiAwarePairingRequest alloc] initWithEventType:56 pairingInfo:v4];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _discoveryEvent:v2 appID:*(a1 + 32)];
}

void sub_10001A1FC(uint64_t a1, void *a2)
{
  v5 = a2;
  if (dword_1000603A0 <= 90 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
  {
    sub_100034158();
  }

  v3 = [[DAWiFiAwarePairingInfo alloc] initWithWiFiAwareIdentifier:*(a1 + 48) pairingType:*(a1 + 56)];
  [v3 setPasskey:v5];
  v4 = [[DAEventDeviceWiFiAwarePairingRequest alloc] initWithEventType:56 pairingInfo:v3];
  [*(a1 + 32) _discoveryEvent:v4 appID:*(a1 + 40)];
}

void sub_10001A758(_Unwind_Exception *a1)
{
  (*(v1 + 16))(v1);
  _Block_object_dispose((v2 - 144), 8);
  _Unwind_Resume(a1);
}

void sub_10001A7A4(uint64_t a1)
{
  if (*(*(*(a1 + 48) + 8) + 40) && dword_1000603A0 <= 90 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
  {
    sub_100034174();
  }
}

uint64_t sub_10001A814(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((off_100060388[0])(*(a1 + 64), a2, a3))
  {
    if (dword_1000603A0 <= 30 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
    {
      sub_10003421C();
    }

    v4 = *(a1 + 48);
    v5 = *(a1 + 56);
    nw_endpoint_set_txt_record();
  }

  else
  {
    if (dword_1000603A0 <= 30 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
    {
      sub_100034200();
    }

    v12[0] = @"BundleID";
    v12[1] = @"SupportsBonjour";
    v6 = *(a1 + 40);
    v13[0] = *(a1 + 32);
    v13[1] = &off_10005ABD8;
    v12[2] = @"BonjourServices";
    v7 = [v6 protocolType];
    v8 = [v7 identifier];
    v13[2] = v8;
    v9 = [NSDictionary dictionaryWithObjects:v13 forKeys:v12 count:3];
    v10 = [*(a1 + 40) identifier];
    [DADeviceAccessAnalytics sendAnalyticsInfo:v9 forEvent:@"com.apple.DeviceAccess.BonjourMetadataFailure" withDeviceIdentifier:v10];
  }

  return 1;
}

void sub_10001B228(_Unwind_Exception *a1)
{
  (*(v1 + 16))(v1);
  _Block_object_dispose((v2 - 208), 8);
  _Unwind_Resume(a1);
}

void sub_10001B2B8(uint64_t a1)
{
  if (*(*(*(a1 + 48) + 8) + 40) && dword_1000603A0 <= 90 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
  {
    sub_100034238();
  }
}

uint64_t sub_10001B328(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  v9 = v5;
  if (dword_1000603A0 <= 30 && (dword_1000603A0 != -1 || (v5 = _LogCategory_Initialize(), v6 = v9, v5)))
  {
    v5 = sub_1000342C4();
    v6 = v9;
    if (!v9)
    {
      goto LABEL_9;
    }
  }

  else if (!v6)
  {
    goto LABEL_9;
  }

  if (dword_1000603A0 <= 30)
  {
    if (dword_1000603A0 != -1 || (v5 = _LogCategory_Initialize(), v6 = v9, v5))
    {
      v5 = LogPrintF();
      v6 = v9;
    }
  }

LABEL_9:
  if (a2 == 4)
  {
    v5 = dispatch_semaphore_signal(*(a1 + 56));
  }

  else
  {
    if (a2 != 3)
    {
      goto LABEL_22;
    }

    if (dword_1000603A0 <= 30 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
    {
      sub_100034304(a1);
    }

    v7 = nw_connection_copy_current_path(*(a1 + 32));
    if (nw_path_is_direct())
    {
      if (dword_1000603A0 <= 30 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
      {
        sub_100034348(a1);
      }

      *(*(*(a1 + 64) + 8) + 24) = 1;
    }

    dispatch_semaphore_signal(*(a1 + 56));
  }

  v6 = v9;
LABEL_22:

  return _objc_release_x1(v5, v6);
}

void sub_10001BA30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  (*(v16 + 16))(v16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10001BA84(uint64_t a1)
{
  if (*(*(*(a1 + 56) + 8) + 40) && dword_1000603A0 <= 90 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
  {
    sub_1000343B0();
  }
}

void sub_10001C1D8(uint64_t a1, void *a2)
{
  v3 = a2;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = sub_100002EE4;
  v17 = sub_100002EF4;
  v18 = 0;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10001C3B0;
  v12[3] = &unk_1000596B8;
  v12[4] = *(a1 + 32);
  v12[5] = &v13;
  [v3 enumerateKeysAndObjectsUsingBlock:v12];
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v4 = v14[5];
  v5 = [v4 countByEnumeratingWithState:&v8 objects:v19 count:16];
  if (v5)
  {
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v4);
        }

        [v3 setObject:0 forKeyedSubscript:{*(*(&v8 + 1) + 8 * v7), v8}];
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v4 countByEnumeratingWithState:&v8 objects:v19 count:16];
    }

    while (v5);
  }

  _Block_object_dispose(&v13, 8);
}

void sub_10001C384(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10001C3B0(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  if ([a3 isEqual:*(a1 + 32)])
  {
    v5 = *(*(*(a1 + 40) + 8) + 40);
    if (!v5)
    {
      v6 = objc_alloc_init(NSMutableSet);
      v7 = *(*(a1 + 40) + 8);
      v8 = *(v7 + 40);
      *(v7 + 40) = v6;

      v5 = *(*(*(a1 + 40) + 8) + 40);
    }

    [v5 addObject:v9];
  }
}

void sub_10001C4E0(uint64_t a1, void *a2)
{
  v3 = a2;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = sub_100002EE4;
  v19 = sub_100002EF4;
  v20 = 0;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10001C6C8;
  v12[3] = &unk_1000596B8;
  v13 = *(a1 + 32);
  v14 = &v15;
  [v3 enumerateKeysAndObjectsUsingBlock:v12];
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v4 = v16[5];
  v5 = [v4 countByEnumeratingWithState:&v8 objects:v21 count:16];
  if (v5)
  {
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v4);
        }

        [v3 setObject:0 forKeyedSubscript:{*(*(&v8 + 1) + 8 * v7), v8}];
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v4 countByEnumeratingWithState:&v8 objects:v21 count:16];
    }

    while (v5);
  }

  _Block_object_dispose(&v15, 8);
}

void sub_10001C69C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10001C6C8(uint64_t a1, void *a2, uint64_t a3)
{
  v9 = a2;
  if (([*(a1 + 32) containsObject:a3] & 1) == 0)
  {
    v5 = *(*(*(a1 + 40) + 8) + 40);
    if (!v5)
    {
      v6 = objc_alloc_init(NSMutableSet);
      v7 = *(*(a1 + 40) + 8);
      v8 = *(v7 + 40);
      *(v7 + 40) = v6;

      v5 = *(*(*(a1 + 40) + 8) + 40);
    }

    [v5 addObject:v9];
  }
}

void sub_10001CEA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  (*(v11 + 16))(v11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10001CF00(uint64_t a1)
{
  if (*(*(*(a1 + 32) + 8) + 40) && dword_1000603A0 <= 90)
  {
    if (dword_1000603A0 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        return;
      }

      v2 = *(*(*(a1 + 32) + 8) + 40);
    }

    v3 = CUPrintNSError();
    LogPrintF();
  }
}

uint64_t sub_10001E140()
{
  if (qword_100060870 != -1)
  {
    sub_100034998();
  }

  v0 = dlsym(qword_100060878, "BYSetupAssistantNeedsToRun");
  off_100060398 = v0;

  return v0();
}

uint64_t sub_10001E1C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_100060880 != -1)
  {
    sub_1000349AC();
  }

  v6 = dlsym(qword_100060888, "mdns_signed_browse_result_create_from_data");
  off_100060380[0] = v6;

  return (v6)(a1, a2, a3);
}

uint64_t sub_10001E274(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_100060880 != -1)
  {
    sub_1000349AC();
  }

  v6 = dlsym(qword_100060888, "mdns_signed_browse_result_covers_txt_rdata");
  off_100060388[0] = v6;

  return (v6)(a1, a2, a3);
}

void sub_10001E2F8(void *a1)
{
  v1 = qword_100060880;
  v2 = a1;
  if (v1 != -1)
  {
    sub_1000349AC();
  }

  off_100060390[0] = dlsym(qword_100060888, "mdns_release");
  (off_100060390[0])(v2);
}

uint64_t sub_10001E3A0()
{

  return LogPrintF();
}

uint64_t sub_10001E3B4()
{

  return LogPrintF();
}

uint64_t sub_10001E46C(uint64_t result, uint64_t *a2)
{
  v2 = *(*(*result + 8) + 40);
  v3 = *a2;
  return result;
}

uint64_t sub_10001E4A8()
{

  return objc_opt_isKindOfClass();
}

uint64_t sub_10001E4C0()
{

  return LogPrintF();
}

id sub_10001E504(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39)
{

  return [v39 countByEnumeratingWithState:&a23 objects:&a39 count:16];
}

void sub_10001FA1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 80), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10001FA40(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10001FA58(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = DANestedErrorF();
    v8 = *(*(a1 + 40) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;

    if (dword_100060470 <= 90 && (dword_100060470 != -1 || _LogCategory_Initialize()))
    {
      sub_100034BE8();
    }
  }

  else
  {
    if (dword_100060470 <= 30 && (dword_100060470 != -1 || _LogCategory_Initialize()))
    {
      sub_100034C28();
    }

    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v10 = v6;
    v11 = [v10 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v24;
      do
      {
        v14 = 0;
        do
        {
          if (*v24 != v13)
          {
            objc_enumerationMutation(v10);
          }

          if (dword_100060470 <= 30)
          {
            v15 = *(*(&v23 + 1) + 8 * v14);
            if (dword_100060470 != -1 || _LogCategory_Initialize())
            {
              sub_100034C68(v15);
            }
          }

          v14 = v14 + 1;
        }

        while (v12 != v14);
        v16 = [v10 countByEnumeratingWithState:&v23 objects:v27 count:16];
        v12 = v16;
      }

      while (v16);
    }

    v17 = [*(a1 + 32) _coalesceResults:v10 descriptors:{*(*(a1 + 32) + 96), v23}];
    v18 = *(*(a1 + 48) + 8);
    v19 = *(v18 + 40);
    *(v18 + 40) = v17;
  }

  v20 = *(*(*(a1 + 40) + 8) + 40);
  v21 = *(*(*(a1 + 48) + 8) + 40);
  (*(*(*(a1 + 32) + 16) + 16))();
  v22 = *(a1 + 32);
  if (v22[9] == 1)
  {
    [v22 _queueNextScan];
  }
}

id CUTXTDictionaryCreateWithTXTData(void *a1, uint64_t a2, void *a3)
{
  v4 = a1;
  v5 = [v4 bytes];
  v6 = [v4 length];
  v7 = objc_alloc_init(NSMutableDictionary);
  if (v6)
  {
    v8 = &v6[v5];
    while (1)
    {
      v10 = v5 + 1;
      v9 = *v5;
      if (v8 - (v5 + 1) < v9)
      {
        break;
      }

      v5 += v9 + 1;
      if (v9)
      {
        v11 = v10;
        while (1)
        {
          v12 = *v11;
          v13 = v12 != 61;
          if (v12 == 61)
          {
            break;
          }

          ++v11;
          if (!--v9)
          {
            v11 = v5;
            break;
          }
        }
      }

      else
      {
        v13 = 1;
        v11 = v10;
      }

      v14 = [[NSString alloc] initWithBytes:v10 length:v11 - v10 encoding:4];
      if (!v14)
      {
        if (a3)
        {
LABEL_23:
          *a3 = NSErrorWithOSStatusF();
        }

LABEL_24:

        goto LABEL_25;
      }

      if (v13)
      {
        [v7 setObject:&__kCFBooleanTrue forKeyedSubscript:v14];
        v5 = v11;
      }

      else
      {
        v15 = [[NSString alloc] initWithBytes:v11 + 1 length:v5 - (v11 + 1) encoding:4];
        if (!v15)
        {
          if (a3)
          {
            goto LABEL_23;
          }

          goto LABEL_24;
        }

        v16 = v15;
        [v7 setObject:v15 forKeyedSubscript:v14];
      }

      if (v5 == v8)
      {
        goto LABEL_16;
      }
    }

    if (a3)
    {
      NSErrorWithOSStatusF();
      *a3 = v17 = 0;
      goto LABEL_17;
    }

LABEL_25:
    v17 = 0;
  }

  else
  {
LABEL_16:
    v17 = [v7 copy];
  }

LABEL_17:

  return v17;
}

void sub_100024B20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39)
{
  (*(a13 + 16))();
  _Block_object_dispose(&a39, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100024BA4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id sub_100024BBC(void *a1)
{
  v2 = a1[6];
  result = *(*(v2 + 8) + 40);
  if (!result)
  {
    return result;
  }

  if (dword_1000606C0 <= 90)
  {
    if (dword_1000606C0 == -1)
    {
      v6 = _LogCategory_Initialize();
      v2 = a1[6];
      if (!v6)
      {
        goto LABEL_7;
      }

      v10 = *(*(v2 + 8) + 40);
    }

    v4 = CUPrintNSError();
    v5 = *(a1[4] + 36);
    v11 = CUPrintPID();
    LogPrintF();

    v2 = a1[6];
  }

LABEL_7:
  v7 = *(*(v2 + 8) + 40);
  v8 = a1[4];
  v9 = a1[5];

  return [v8 _xpcSendReplyError:v7 request:v9];
}

void sub_100024E34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_100024E70(void *a1)
{
  v2 = a1[6];
  result = *(*(v2 + 8) + 40);
  if (!result)
  {
    return result;
  }

  if (dword_1000606C0 <= 90)
  {
    if (dword_1000606C0 == -1)
    {
      v6 = _LogCategory_Initialize();
      v2 = a1[6];
      if (!v6)
      {
        goto LABEL_7;
      }

      v10 = *(*(v2 + 8) + 40);
    }

    v4 = CUPrintNSError();
    v5 = *(a1[4] + 36);
    v11 = CUPrintPID();
    LogPrintF();

    v2 = a1[6];
  }

LABEL_7:
  v7 = *(*(v2 + 8) + 40);
  v8 = a1[4];
  v9 = a1[5];

  return [v8 _xpcSendReplyError:v7 request:v9];
}

void *sub_10002605C(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (*(a1 + 40) == result[2])
  {
    return [result _xpcReportDAEvent:a2];
  }

  return result;
}

void sub_100026080(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 48))
  {
    [*(*(*(a1 + 48) + 8) + 40) setObject:&off_10005ABF0 forKeyedSubscript:@"ApplicationState"];
  }

  else
  {
    v3 = [NSNumber numberWithInt:*(v2 + 36)];
    v23 = 0;
    v4 = [RBSProcessHandle handleForIdentifier:v3 error:&v23];
    v5 = v23;

    if (!v5)
    {
      v6 = [v4 currentState];
      v7 = &off_10005AC20;
      if ([v6 taskState] == 4)
      {
        v8 = [v4 currentState];
        v9 = [v8 endowmentNamespaces];
        if ([v9 containsObject:@"com.apple.frontboard.visibility"])
        {
          v7 = &off_10005AC08;
        }
      }

      [*(*(*(a1 + 48) + 8) + 40) setObject:v7 forKeyedSubscript:@"ApplicationState"];
    }
  }

  v10 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [*(*(a1 + 32) + 56) appBundleInfoAccessoryOptions:*(a1 + 40)]);
  [*(*(*(a1 + 48) + 8) + 40) setObject:v10 forKeyedSubscript:@"AccessorySetupKitTechnologySupported"];

  v11 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [*(*(a1 + 32) + 56) applicationHasBluetoothGlobalTCC:*(a1 + 40)]);
  [*(*(*(a1 + 48) + 8) + 40) setObject:v11 forKeyedSubscript:@"BluetoothGlobalTCC"];

  v12 = [*(*(a1 + 32) + 56) appBundleInfoAccessoryDiscoveryOptions:*(a1 + 40)];
  v13 = [v12 objectForKeyedSubscript:@"NSAccessorySetupBluetoothCompanyIdentifiers"];
  [*(*(*(a1 + 48) + 8) + 40) setObject:v13 forKeyedSubscript:@"hasAccessorySetupBluetoothCompanyIdentifiers"];

  v14 = [v12 objectForKeyedSubscript:@"NSAccessorySetupBluetoothNames"];
  [*(*(*(a1 + 48) + 8) + 40) setObject:v14 forKeyedSubscript:@"hasAccessorySetupBluetoothNames"];

  v15 = [v12 objectForKeyedSubscript:@"NSAccessorySetupBluetoothServices"];
  [*(*(*(a1 + 48) + 8) + 40) setObject:v15 forKeyedSubscript:@"hasAccessorySetupBluetoothServices"];

  v16 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [*(a1 + 32) _findSyncExtensionPoint:DAAccessorySetupExtensionPointIdentifier bundleID:*(a1 + 40)]);
  [*(*(*(a1 + 48) + 8) + 40) setObject:v16 forKeyedSubscript:@"hasAccessorySetupDiscoveryExtension"];

  v17 = +[NEConfigurationManager sharedManagerForAllUsers];
  v18 = *(*(a1 + 32) + 64);
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_1000263EC;
  v21[3] = &unk_1000598A0;
  v20 = *(a1 + 40);
  v19 = v20;
  v22 = v20;
  [v17 loadConfigurationsWithCompletionQueue:v18 handler:v21];
}

void sub_1000263EC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v27 = a3;
  v40[0] = _NSConcreteStackBlock;
  v40[1] = 3221225472;
  v40[2] = sub_1000267EC;
  v40[3] = &unk_100058D30;
  v40[4] = *(a1 + 40);
  v29 = objc_retainBlock(v40);
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  obj = v5;
  v25 = [obj countByEnumeratingWithState:&v36 objects:v43 count:16];
  if (v25)
  {
    v31 = 0;
    v26 = *v37;
    while (2)
    {
      for (i = 0; i != v25; i = i + 1)
      {
        if (*v37 != v26)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v36 + 1) + 8 * i);
        v7 = [v6 name];
        if ([v7 isEqualToString:@"com.apple.preferences.networkprivacy"])
        {
          v8 = v6;

          v9 = v8;
        }

        else
        {
          if ([v7 hasPrefix:@"com.apple.preferences.networkprivacy"])
          {
            memset(uu, 0, sizeof(uu));
            v10 = getuid();
            mbr_uid_to_uuid(v10, uu);
            v11 = [[NSUUID alloc] initWithUUIDBytes:uu];
            v12 = [v6 name];
            v13 = [v11 UUIDString];
            v14 = [v12 hasSuffix:v13];

            if (v14)
            {
              v15 = v6;

              v31 = v15;
            }
          }

          v9 = v31;
        }

        if (!v9)
        {
          v31 = 0;
LABEL_29:

          goto LABEL_31;
        }

        v31 = v9;
        v16 = [v9 pathController];
        v34 = 0u;
        v35 = 0u;
        v32 = 0u;
        v33 = 0u;
        v17 = [v16 pathRules];
        v18 = [v17 countByEnumeratingWithState:&v32 objects:v41 count:16];
        if (v18)
        {
          v19 = *v33;
          while (2)
          {
            for (j = 0; j != v18; j = j + 1)
            {
              if (*v33 != v19)
              {
                objc_enumerationMutation(v17);
              }

              v21 = *(*(&v32 + 1) + 8 * j);
              v22 = *(a1 + 32);
              v23 = [v21 matchSigningIdentifier];
              LODWORD(v22) = [v22 isEqualToString:v23];

              if (v22)
              {
                if ([v21 denyMulticast])
                {
                  v24 = &off_10005AC20;
                }

                else
                {
                  v24 = &off_10005AC38;
                }

                [*(*(*(a1 + 40) + 8) + 40) setObject:v24 forKeyedSubscript:@"LocalNetworkGlobalTCC"];

                goto LABEL_29;
              }
            }

            v18 = [v17 countByEnumeratingWithState:&v32 objects:v41 count:16];
            if (v18)
            {
              continue;
            }

            break;
          }
        }
      }

      v25 = [obj countByEnumeratingWithState:&v36 objects:v43 count:16];
      if (v25)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v31 = 0;
  }

LABEL_31:

  (v29[2])();
}

void sub_100027260(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, char a59)
{
  (*(a16 + 16))();
  _Block_object_dispose(&a59, 8);
  _Unwind_Resume(a1);
}

void *sub_1000272FC(void *result)
{
  if (*(*(result[6] + 8) + 40))
  {
    v1 = result;
    if (dword_1000606C0 <= 90 && (dword_1000606C0 != -1 || _LogCategory_Initialize()))
    {
      sub_10003657C(v1);
    }

    v2 = v1[5];
    v3 = *(*(v1[6] + 8) + 40);
    v4 = v1[4];

    return [v4 _xpcSendReplyError:v3 request:v2];
  }

  return result;
}

void *sub_100027398(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 identifier];
  v5 = [*(a1 + 32) deviceIdentifier];
  if ([v4 isEqualToString:v5])
  {
    v6 = v3;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  return v6;
}

void sub_100027410(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) _xpcRemoveDeviceConfirmation:*(a1 + 40) accessInfo:*(a1 + 48) userConfirmed:a2 == 1 request:*(a1 + 56)];
  v2 = qword_100060890;
  qword_100060890 = 0;
}

void sub_100027458(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    if (dword_1000606C0 <= 90 && (dword_1000606C0 != -1 || _LogCategory_Initialize()))
    {
      sub_1000365E4(a1);
    }

    [*(a1 + 32) _xpcSendReplyError:v3 request:*(a1 + 40)];
  }
}

void sub_1000278CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  (*(v31 + 16))(v31);
  _Block_object_dispose(&a31, 8);
  _Unwind_Resume(a1);
}

void *sub_100027930(void *result)
{
  if (*(*(result[6] + 8) + 40))
  {
    v1 = result;
    if (dword_1000606C0 <= 90 && (dword_1000606C0 != -1 || _LogCategory_Initialize()))
    {
      sub_100036650(v1);
    }

    v2 = v1[5];
    v3 = *(*(v1[6] + 8) + 40);
    v4 = v1[4];

    return [v4 _xpcSendReplyError:v3 request:v2];
  }

  return result;
}

void *sub_100027CB0(void *result)
{
  v1 = result[6];
  if (!*(*(v1 + 8) + 40))
  {
    return result;
  }

  v2 = result;
  if (dword_1000606C0 <= 90)
  {
    if (dword_1000606C0 == -1)
    {
      v4 = _LogCategory_Initialize();
      v1 = v2[6];
      if (!v4)
      {
        goto LABEL_7;
      }

      v8 = *(*(v1 + 8) + 40);
    }

    v3 = *(v2[4] + 36);
    v9 = CUPrintPID();
    LogPrintF();

    v1 = v2[6];
  }

LABEL_7:
  v5 = *(*(v1 + 8) + 40);
  v6 = v2[4];
  v7 = v2[5];

  return [v6 _xpcSendReplyError:v5 request:v7];
}

void sub_100027DA0(uint64_t a1, void *a2)
{
  v4 = a2;
  reply = xpc_dictionary_create_reply(*(a1 + 32));
  if (reply)
  {
    if (v4)
    {
      CUXPCEncodeNSError();
    }

    [*(a1 + 40) _xpcSendReply:reply];
  }

  else
  {
    sub_1000366B8();
  }
}

void *sub_100028284(void *result)
{
  v1 = result[6];
  if (!*(*(v1 + 8) + 40))
  {
    return result;
  }

  v2 = result;
  if (dword_1000606C0 <= 90)
  {
    if (dword_1000606C0 == -1)
    {
      v4 = _LogCategory_Initialize();
      v1 = v2[6];
      if (!v4)
      {
        goto LABEL_7;
      }

      v8 = *(*(v1 + 8) + 40);
    }

    v3 = *(v2[4] + 36);
    v9 = CUPrintPID();
    LogPrintF();

    v1 = v2[6];
  }

LABEL_7:
  v5 = *(*(v1 + 8) + 40);
  v6 = v2[4];
  v7 = v2[5];

  return [v6 _xpcSendReplyError:v5 request:v7];
}

void sub_100028798(_Unwind_Exception *a1)
{
  (*(v1 + 16))(v1);
  _Block_object_dispose((v2 - 112), 8);
  _Unwind_Resume(a1);
}

void *sub_1000287E0(void *result)
{
  v1 = result[6];
  if (!*(*(v1 + 8) + 40))
  {
    return result;
  }

  v2 = result;
  if (dword_1000606C0 <= 90)
  {
    if (dword_1000606C0 == -1)
    {
      v4 = _LogCategory_Initialize();
      v1 = v2[6];
      if (!v4)
      {
        goto LABEL_7;
      }

      v8 = *(*(v1 + 8) + 40);
    }

    v3 = *(v2[4] + 36);
    v9 = CUPrintPID();
    LogPrintF();

    v1 = v2[6];
  }

LABEL_7:
  v5 = *(*(v1 + 8) + 40);
  v6 = v2[4];
  v7 = v2[5];

  return [v6 _xpcSendReplyError:v5 request:v7];
}

void sub_100028C18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  (*(v13 + 16))(v13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_100028C5C(void *a1)
{
  v2 = a1[6];
  result = *(*(v2 + 8) + 40);
  if (!result)
  {
    return result;
  }

  if (dword_1000606C0 <= 90)
  {
    if (dword_1000606C0 == -1)
    {
      v6 = _LogCategory_Initialize();
      v2 = a1[6];
      if (!v6)
      {
        goto LABEL_7;
      }

      v10 = *(*(v2 + 8) + 40);
    }

    v4 = CUPrintNSError();
    v5 = *(a1[4] + 36);
    v11 = CUPrintPID();
    LogPrintF();

    v2 = a1[6];
  }

LABEL_7:
  v7 = *(*(v2 + 8) + 40);
  v8 = a1[4];
  v9 = a1[5];

  return [v8 _xpcSendReplyError:v7 request:v9];
}

void sub_1000290A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  (*(v13 + 16))(v13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_1000290E8(void *a1)
{
  v2 = a1[6];
  result = *(*(v2 + 8) + 40);
  if (!result)
  {
    return result;
  }

  if (dword_1000606C0 <= 90)
  {
    if (dword_1000606C0 == -1)
    {
      v6 = _LogCategory_Initialize();
      v2 = a1[6];
      if (!v6)
      {
        goto LABEL_7;
      }

      v10 = *(*(v2 + 8) + 40);
    }

    v4 = CUPrintNSError();
    v5 = *(a1[4] + 36);
    v11 = CUPrintPID();
    LogPrintF();

    v2 = a1[6];
  }

LABEL_7:
  v7 = *(*(v2 + 8) + 40);
  v8 = a1[4];
  v9 = a1[5];

  return [v8 _xpcSendReplyError:v7 request:v9];
}

void sub_100029658(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  (*(a5 + 16))();
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_1000296A8(void *a1)
{
  v2 = a1[6];
  result = *(*(v2 + 8) + 40);
  if (!result)
  {
    return result;
  }

  if (dword_1000606C0 <= 90)
  {
    if (dword_1000606C0 == -1)
    {
      v6 = _LogCategory_Initialize();
      v2 = a1[6];
      if (!v6)
      {
        goto LABEL_7;
      }

      v10 = *(*(v2 + 8) + 40);
    }

    v4 = CUPrintNSError();
    v5 = *(a1[4] + 36);
    v11 = CUPrintPID();
    LogPrintF();

    v2 = a1[6];
  }

LABEL_7:
  v7 = *(*(v2 + 8) + 40);
  v8 = a1[4];
  v9 = a1[5];

  return [v8 _xpcSendReplyError:v7 request:v9];
}

void sub_1000299A0(_Unwind_Exception *a1)
{
  (*(v1 + 16))(v1);
  _Block_object_dispose((v2 - 80), 8);
  _Unwind_Resume(a1);
}

id sub_1000299DC(id result)
{
  v1 = *(*(*(result + 6) + 8) + 40);
  if (v1)
  {
    return [*(result + 4) _xpcSendReplyError:v1 request:*(result + 5)];
  }

  return result;
}

void sub_100029EEC(_Unwind_Exception *a1)
{
  (*(v1 + 16))(v1);
  _Block_object_dispose((v2 - 128), 8);
  _Unwind_Resume(a1);
}

id sub_100029F40(void *a1)
{
  v2 = a1[6];
  result = *(*(v2 + 8) + 40);
  if (!result)
  {
    return result;
  }

  if (dword_1000606C0 <= 90)
  {
    if (dword_1000606C0 == -1)
    {
      v6 = _LogCategory_Initialize();
      v2 = a1[6];
      if (!v6)
      {
        goto LABEL_7;
      }

      v10 = *(*(v2 + 8) + 40);
    }

    v4 = CUPrintNSError();
    v5 = *(a1[4] + 36);
    v11 = CUPrintPID();
    LogPrintF();

    v2 = a1[6];
  }

LABEL_7:
  v7 = *(*(v2 + 8) + 40);
  v8 = a1[4];
  v9 = a1[5];

  return [v8 _xpcSendReplyError:v7 request:v9];
}

void sub_10002A49C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  (*(v27 + 16))(v27);
  _Block_object_dispose(&a27, 8);
  _Unwind_Resume(a1);
}

id sub_10002A4E8(void *a1)
{
  v2 = a1[6];
  result = *(*(v2 + 8) + 40);
  if (!result)
  {
    return result;
  }

  if (dword_1000606C0 <= 90)
  {
    if (dword_1000606C0 == -1)
    {
      v6 = _LogCategory_Initialize();
      v2 = a1[6];
      if (!v6)
      {
        goto LABEL_7;
      }

      v10 = *(*(v2 + 8) + 40);
    }

    v4 = CUPrintNSError();
    v5 = *(a1[4] + 36);
    v11 = CUPrintPID();
    LogPrintF();

    v2 = a1[6];
  }

LABEL_7:
  v7 = *(*(v2 + 8) + 40);
  v8 = a1[4];
  v9 = a1[5];

  return [v8 _xpcSendReplyError:v7 request:v9];
}

void sub_10002A98C(_Unwind_Exception *a1)
{
  (*(v1 + 16))(v1);
  _Block_object_dispose((v2 - 112), 8);
  _Unwind_Resume(a1);
}

id sub_10002A9D8(void *a1)
{
  v2 = a1[6];
  result = *(*(v2 + 8) + 40);
  if (!result)
  {
    return result;
  }

  if (dword_1000606C0 <= 90)
  {
    if (dword_1000606C0 == -1)
    {
      v6 = _LogCategory_Initialize();
      v2 = a1[6];
      if (!v6)
      {
        goto LABEL_7;
      }

      v10 = *(*(v2 + 8) + 40);
    }

    v4 = CUPrintNSError();
    v5 = *(a1[4] + 36);
    v11 = CUPrintPID();
    LogPrintF();

    v2 = a1[6];
  }

LABEL_7:
  v7 = *(*(v2 + 8) + 40);
  v8 = a1[4];
  v9 = a1[5];

  return [v8 _xpcSendReplyError:v7 request:v9];
}

void sub_10002AE40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  (*(v13 + 16))(v13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_10002AE88(void *a1)
{
  v2 = a1[6];
  result = *(*(v2 + 8) + 40);
  if (!result)
  {
    return result;
  }

  if (dword_1000606C0 <= 90)
  {
    if (dword_1000606C0 == -1)
    {
      v6 = _LogCategory_Initialize();
      v2 = a1[6];
      if (!v6)
      {
        goto LABEL_7;
      }

      v10 = *(*(v2 + 8) + 40);
    }

    v4 = CUPrintNSError();
    v5 = *(a1[4] + 36);
    v11 = CUPrintPID();
    LogPrintF();

    v2 = a1[6];
  }

LABEL_7:
  v7 = *(*(v2 + 8) + 40);
  v8 = a1[4];
  v9 = a1[5];

  return [v8 _xpcSendReplyError:v7 request:v9];
}

void sub_10002B1C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  (*(v11 + 16))(v11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_10002B204(void *a1)
{
  v2 = a1[6];
  result = *(*(v2 + 8) + 40);
  if (!result)
  {
    return result;
  }

  if (dword_1000606C0 <= 90)
  {
    if (dword_1000606C0 == -1)
    {
      v6 = _LogCategory_Initialize();
      v2 = a1[6];
      if (!v6)
      {
        goto LABEL_7;
      }

      v10 = *(*(v2 + 8) + 40);
    }

    v4 = CUPrintNSError();
    v5 = *(a1[4] + 36);
    v11 = CUPrintPID();
    LogPrintF();

    v2 = a1[6];
  }

LABEL_7:
  v7 = *(*(v2 + 8) + 40);
  v8 = a1[4];
  v9 = a1[5];

  return [v8 _xpcSendReplyError:v7 request:v9];
}

void sub_10002B604(_Unwind_Exception *a1)
{
  (*(v1 + 16))(v1);
  _Block_object_dispose((v2 - 112), 8);
  _Unwind_Resume(a1);
}

id sub_10002B64C(void *a1)
{
  v2 = a1[6];
  result = *(*(v2 + 8) + 40);
  if (!result)
  {
    return result;
  }

  if (dword_1000606C0 <= 90)
  {
    if (dword_1000606C0 == -1)
    {
      v6 = _LogCategory_Initialize();
      v2 = a1[6];
      if (!v6)
      {
        goto LABEL_7;
      }

      v10 = *(*(v2 + 8) + 40);
    }

    v4 = CUPrintNSError();
    v5 = *(a1[4] + 36);
    v11 = CUPrintPID();
    LogPrintF();

    v2 = a1[6];
  }

LABEL_7:
  v7 = *(*(v2 + 8) + 40);
  v8 = a1[4];
  v9 = a1[5];

  return [v8 _xpcSendReplyError:v7 request:v9];
}

uint64_t start(int a1, uint64_t a2)
{
  if (a1 < 2)
  {
LABEL_9:
    if (dword_100060730 <= 30 && (dword_100060730 != -1 || _LogCategory_Initialize()))
    {
      sub_100036718();
    }

    if ((_set_user_dir_suffix() & 1) == 0 && dword_100060730 <= 90 && (dword_100060730 != -1 || _LogCategory_Initialize()))
    {
      sub_100036738();
    }

    signal(13, 1);
    v6 = objc_alloc_init(DADaemonServer);
    [(DADaemonServer *)v6 activate];
    v7 = +[NSRunLoop mainRunLoop];
    [v7 run];
  }

  else
  {
    v2 = (a2 + 8);
    v3 = a1 - 1;
    while (1)
    {
      v4 = *v2;
      if (**v2 == 45 && v4[1] == 86 && !v4[2])
      {
        break;
      }

      v5 = *v2;
      if (!strcmp_prefix() || !strcmp_prefix())
      {
        break;
      }

      fprintf(__stderrp, "warning: unknown option '%s'\n", v4);
      ++v2;
      if (!--v3)
      {
        goto LABEL_9;
      }
    }

    fprintf(__stdoutp, "DeviceAccess daemon version %s\n", "300.10");
  }

  return 0;
}

void sub_10002BBD8(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(a1 + 32);
  v3 = *(v2 + 8);
  *(v2 + 8) = 0;
}

id sub_10002C0F4(uint64_t a1)
{
  if (dword_1000607A0 <= 30 && (dword_1000607A0 != -1 || _LogCategory_Initialize()))
  {
    sub_1000367F4();
  }

  v2 = *(a1 + 32);

  return [v2 cancelAll];
}

id sub_10002C2DC(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(a1 + 72))
  {
    v3 = 10;
  }

  else
  {
    v3 = 20;
  }

  LOWORD(v6) = *(a1 + 74);
  [v2 _addNewTask:*(a1 + 40) completion:*(a1 + 64) bluetoothOp:v3 pairCTKD:*(a1 + 73) displayName:*(a1 + 48) taskTimeout:*(a1 + 56) appConfirmsAuth:v6 supportsHID:?];
  v4 = *(a1 + 32);

  return [v4 _runNextTask];
}

id sub_10002C46C(uint64_t a1)
{
  LOWORD(v4) = 0;
  [*(a1 + 32) _addNewTask:*(a1 + 40) completion:*(a1 + 48) bluetoothOp:30 pairCTKD:0 displayName:&stru_10005A2C8 taskTimeout:&off_10005AC50 appConfirmsAuth:v4 supportsHID:?];
  v2 = *(a1 + 32);

  return [v2 _runNextTask];
}

void sub_10002C584(uint64_t a1)
{
  v2 = (a1 + 32);
  v1 = *(a1 + 32);
  if (v1[5])
  {
    [v1[5] cancelTimer];
    if (dword_1000607A0 <= 50 && (dword_1000607A0 != -1 || _LogCategory_Initialize()))
    {
      sub_100036958(v2);
    }

    v1 = *v2;
    if (!*(*v2 + 4))
    {
      v12 = v1[5];
      v3 = DAErrorF();
      [*v2 _reportFailure:{v3, v12}];

      v1 = *v2;
    }
  }

  v4 = [v1 _getNextTask];
  v5 = *(*v2 + 5);
  *(*v2 + 5) = v4;

  *(*v2 + 4) = 0;
  v6 = *v2;
  if (*(*v2 + 5))
  {

    [v6 _runNextTask];
  }

  else
  {
    if (dword_1000607A0 <= 50 && (dword_1000607A0 != -1 || _LogCategory_Initialize()))
    {
      sub_1000369A0();
    }

    [*(*v2 + 2) setDelegate:0];
    v7 = *(*v2 + 1);
    *(*v2 + 1) = 0;

    *(*v2 + 56) = 0;
    v8 = *(*v2 + 6);
    *(*v2 + 6) = 0;

    v9 = *(*v2 + 5);
    *(*v2 + 5) = 0;

    v10 = *(*v2 + 3);
    *(*v2 + 3) = 0;

    v11 = *(*v2 + 2);
    *(*v2 + 2) = 0;

    *(*v2 + 59) = 0;
  }
}

void sub_10002C7E8(uint64_t a1)
{
  while (1)
  {
    v2 = *(a1 + 32);
    v3 = *(v2 + 40);
    if (!v3)
    {
      break;
    }

LABEL_4:
    [v3 cancelTimer];
    if (dword_1000607A0 <= 50 && (dword_1000607A0 != -1 || _LogCategory_Initialize()))
    {
      sub_100036A04(a1 + 32);
    }

    v20 = *(*(a1 + 32) + 40);
    v6 = DAErrorF();
    [*(a1 + 32) _reportFailure:{v6, v20}];

    v5 = *(a1 + 32);
LABEL_8:
    v7 = [v5 _getNextTask];
    v8 = *(a1 + 32);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;

    *(*(a1 + 32) + 32) = 0;
  }

  v4 = [*(v2 + 48) count];
  v5 = *(a1 + 32);
  if (v4)
  {
    v3 = *(v5 + 40);
    if (!v3)
    {
      goto LABEL_8;
    }

    goto LABEL_4;
  }

  [*(v5 + 16) setDelegate:0];
  v10 = *(a1 + 32);
  v11 = *(v10 + 8);
  *(v10 + 8) = 0;

  *(*(a1 + 32) + 56) = 0;
  v12 = *(a1 + 32);
  v13 = *(v12 + 48);
  *(v12 + 48) = 0;

  v14 = *(a1 + 32);
  v15 = *(v14 + 40);
  *(v14 + 40) = 0;

  v16 = *(a1 + 32);
  v17 = *(v16 + 24);
  *(v16 + 24) = 0;

  v18 = *(a1 + 32);
  v19 = *(v18 + 16);
  *(v18 + 16) = 0;

  *(*(a1 + 32) + 59) = 0;
}

void sub_10002CF98(uint64_t a1)
{
  if (dword_1000607A0 <= 50 && (dword_1000607A0 != -1 || _LogCategory_Initialize()))
  {
    sub_100036D0C();
  }

  [*(*(a1 + 32) + 8) cancelPeripheralConnection:*(*(a1 + 32) + 24)];
  v2 = *(a1 + 32);
  v3 = *(v2 + 24);
  *(v2 + 24) = 0;

  v4 = [*(*(a1 + 32) + 40) bluetoothUUID];
  v5 = *(*(a1 + 32) + 40);
  v6 = DAErrorF();

  [*(a1 + 32) _reportFailure:{v6, v4, v5}];
}

const __CFString *sub_10002D350(uint64_t a1)
{
  if (a1 <= 19)
  {
    if (!a1)
    {
      return @"DABluetoothEventUnknown";
    }

    if (a1 == 10)
    {
      return @"DABluetoothEventAccessoryConnected";
    }
  }

  else
  {
    switch(a1)
    {
      case 20:
        return @"DABluetoothEventCompleted";
      case 30:
        return @"DABluetoothEventFailed";
      case 40:
        return @"DABluetoothEventPairingRequested";
    }
  }

  return @"?";
}

uint64_t sub_10002E95C()
{

  return LogPrintF();
}

void sub_10002EAD8(void *a1, void *a2)
{
  v3 = a2;
  v4 = [v3 appAccessInfoMap];
  v5 = [v4 objectForKey:a1[4]];
  v6 = v5;
  if (v5 && ([v5 accessoryOptions] & 0x40000000) == 0 && objc_msgSend(v6, "accessoryOptions") != a1[6])
  {
    v7 = a1[6] & [v6 accessoryOptions];
    if (dword_1000603A0 <= 50 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
    {
      v8 = "Updating";
      if (!v7)
      {
        v8 = "Removing";
      }

      v12 = a1[4];
      v13 = v6;
      v11 = v8;
      LogPrintF();
    }

    v9 = a1[5];
    v14 = 0;
    [v9 updateAppAccessInfo:v6 accessoryDevice:v3 removalType:v7 == 0 error:{&v14, v11, v12, v13}];
    v10 = v14;
    if (dword_1000603A0 <= 50 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }
  }
}

void sub_1000311CC()
{
  DADeviceAccessorySetupOptionsToString();
  objc_claimAutoreleasedReturnValue();
  sub_10001E3F8();
  LogPrintF();
}

void sub_1000312E4()
{
  if (dword_1000603A0 <= 90 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
  {
    sub_10001E3B4();
  }
}

void sub_100031344()
{
  sub_10001E3D4();
  if (dword_1000603A0 <= 40 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  *v0 = v1;
}

void sub_1000313D0()
{
  CUPrintNSError();
  objc_claimAutoreleasedReturnValue();
  sub_10001E3E0();
  LogPrintF();
}

void sub_100031424()
{
  if (dword_1000603A0 <= 90 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
  {
    sub_10001E3B4();
  }
}

void sub_100031584()
{
  if (dword_1000603A0 <= 90 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
  {
    sub_10001E3B4();
  }
}

void sub_100031730()
{
  DADeviceAccessorySetupOptionsToString();
  objc_claimAutoreleasedReturnValue();
  sub_10001E4D8();
  LogPrintF();
}

void sub_1000317B4()
{
  v0 = CUPrintDurationDouble();
  LogPrintF();
}

void sub_100031810()
{
  CUPrintDurationDouble();
  objc_claimAutoreleasedReturnValue();
  sub_10001E3E0();
  LogPrintF();
}

void sub_1000318F4()
{
  CUPrintNSError();
  objc_claimAutoreleasedReturnValue();
  sub_10001E3F8();
  LogPrintF();
}

void sub_1000319CC()
{
  if (dword_1000603A0 <= 30)
  {
    sub_10001E434();
    if (!v0 || _LogCategory_Initialize())
    {
      LogPrintF();
    }
  }
}

void sub_100031B04()
{
  sub_10001E3D4();
  if (dword_1000603A0 <= 90 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  *v0 = v1;
}

uint64_t sub_100031B90(uint64_t a1)
{
  v2 = *(*(*(a1 + 40) + 8) + 24);
  v3 = *(*(*(a1 + 48) + 8) + 24);
  return LogPrintF();
}

void sub_100031D98(uint64_t *a1)
{
  v2 = *a1;
  CUPrintNSError();
  objc_claimAutoreleasedReturnValue();
  sub_10001E3F8();
  LogPrintF();
}

void sub_100031FB0(void *a1)
{
  [a1 name];
  objc_claimAutoreleasedReturnValue();
  v2 = [sub_10001E3C8() bundleID];
  LogPrintF();
}

void sub_10003210C(uint64_t *a1)
{
  v2 = *a1;
  CUPrintNSError();
  objc_claimAutoreleasedReturnValue();
  sub_10001E3F8();
  LogPrintF();
}

void sub_100032168()
{
  sub_10001E404();
  v5 = [*(v1 + 40) name];
  v2 = [*(v0 + 40) identifier];
  v3 = *(v0 + 48);
  v4 = CUPrintNSError();
  LogPrintF();
}

void sub_100032230(uint64_t a1)
{
  v2 = *(a1 + 160);
  CUPrintDurationDouble();
  objc_claimAutoreleasedReturnValue();
  sub_10001E3E0();
  LogPrintF();
}

void sub_100032404()
{
  if (dword_1000603A0 <= 90)
  {
    sub_10001E434();
    if (!v0 || _LogCategory_Initialize())
    {
      LogPrintF();
    }
  }
}

void sub_10003261C()
{
  v0 = CUPrintNSError();
  LogPrintF();
}

void sub_1000326B8()
{
  if (dword_1000603A0 <= 90 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
  {
    sub_10001E3B4();
  }
}

uint64_t sub_100032860(uint64_t result)
{
  v1 = result;
  if (dword_1000603A0 <= 90)
  {
    if (dword_1000603A0 != -1 || (result = _LogCategory_Initialize(), result))
    {
      result = LogPrintF();
    }
  }

  *v1 = 0;
  return result;
}

void sub_1000328D4()
{
  if (dword_1000603A0 <= 90 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
  {
    sub_10001E3B4();
  }
}

void sub_100032934()
{
  if (dword_1000603A0 <= 90 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
  {
    sub_10001E3B4();
  }
}

uint64_t sub_1000329D4(uint64_t a1, void *a2)
{
  if (dword_1000603A0 <= 90)
  {
    if (dword_1000603A0 != -1 || (result = _LogCategory_Initialize(), result))
    {
      result = LogPrintF();
    }
  }

  *a2 = 0;
  return result;
}

uint64_t sub_100032A58(uint64_t a1, void *a2)
{
  if (dword_1000603A0 <= 90)
  {
    if (dword_1000603A0 != -1 || (result = _LogCategory_Initialize(), result))
    {
      result = LogPrintF();
    }
  }

  *a2 = 0;
  return result;
}

void sub_100032B38()
{
  sub_10001E3D4();
  v2 = sub_10002D350(v1);
  v3 = *(v0 + 32);
  LogPrintF();
}

void sub_100032BE0()
{
  v0 = CUPrintNSError();
  LogPrintF();
}

void sub_100032CC4(uint64_t a1)
{
  v2 = *(a1 + 128);
  CUPrintDurationDouble();
  objc_claimAutoreleasedReturnValue();
  sub_10001E3E0();
  LogPrintF();
}

uint64_t sub_100032F34(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(*(*a2 + 8) + 40);
  return LogPrintF();
}

uint64_t sub_1000330A0(void *a1)
{
  v4 = a1[7];
  v2 = a1[4];
  v3 = a1[6];
  return LogPrintF();
}

void sub_100033108(void *a1)
{
  v1 = [a1 bundleID];
  LogPrintF();
}

void sub_100033174()
{
  if (dword_1000603A0 <= 90)
  {
    sub_10001E434();
    if (!v0 || _LogCategory_Initialize())
    {
      LogPrintF();
    }
  }
}

void sub_1000331F0(uint64_t a1, id *a2)
{
  v2 = *(*(*a1 + 8) + 40);
  [*a2 discoveredEndpoint];
  objc_claimAutoreleasedReturnValue();
  sub_10001E4D8();
  LogPrintF();
}

void sub_100033264()
{
  DADeviceStateToString();
  objc_claimAutoreleasedReturnValue();
  sub_10001E4D8();
  LogPrintF();
}

void sub_1000332CC()
{
  sub_10001E3D4();
  v1 = v0;
  v2 = [v0 name];
  [v1 identifier];
  objc_claimAutoreleasedReturnValue();
  [sub_10001E3EC() wifiAwarePairingID];
  LogPrintF();
}

void sub_100033364()
{
  sub_10001E3D4();
  v1 = v0;
  v3 = [v0 name];
  [v1 identifier];
  objc_claimAutoreleasedReturnValue();
  sub_10001E3EC();
  v2 = CUPrintNSError();
  LogPrintF();
}

void sub_100033408()
{
  sub_10001E3D4();
  [v1 name];
  objc_claimAutoreleasedReturnValue();
  sub_10001E3EC();
  v2 = CUPrintNSError();
  LogPrintF();
}

void sub_100033480()
{
  sub_10001E3D4();
  v11 = [v1 name];
  v2 = CUPrintNSError();
  sub_10001E460(v2, v3, v4, v5, v6, v7, v8, v9, v10, v0, v2, v11);
  LogPrintF();
}

void sub_1000335B4(uint64_t a1, void *a2)
{
  v5 = *(a1 + 32);
  v19 = [a2 hotspotSSIDs];
  [a2 hotspotSSIDPrefixes];
  objc_claimAutoreleasedReturnValue();
  v6 = [sub_10001E3C8() wifiAwareServiceName];
  sub_10001E4E4(v6, v7, v8, v9, v10, v11, v12, v13, v14, v15, v16, v17, v18, v19);
  LogPrintF();
}

uint64_t sub_100033654(uint64_t a1)
{
  v2 = a1;
  if (dword_1000603A0 <= 50)
  {
    v4 = a1;
    if (dword_1000603A0 != -1 || (a1 = _LogCategory_Initialize(), v2 = v4, a1))
    {
      a1 = LogPrintF();
      v2 = v4;
    }
  }

  return _objc_release_x1(a1, v2);
}

void sub_1000336E0(uint64_t a1, void *a2)
{
  v5 = *(a1 + 32);
  v19 = [a2 hotspotSSIDs];
  [a2 hotspotSSIDPrefixes];
  objc_claimAutoreleasedReturnValue();
  v6 = [sub_10001E3C8() wifiAwareServiceName];
  sub_10001E4E4(v6, v7, v8, v9, v10, v11, v12, v13, v14, v15, v16, v17, v18, v19);
  LogPrintF();
}

void sub_100033780()
{
  if (dword_1000603A0 <= 50 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
  {
    sub_10001E3A0();
  }
}

void sub_100033860(void *a1)
{
  [a1 bundleID];
  objc_claimAutoreleasedReturnValue();
  sub_10001E3F8();
  LogPrintF();
}

void sub_1000338F8(void *a1)
{
  [a1 wifiAwareOTAName];
  objc_claimAutoreleasedReturnValue();
  sub_10001E3E0();
  LogPrintF();
}

void sub_10003394C(void *a1)
{
  [a1 bundleID];
  objc_claimAutoreleasedReturnValue();
  sub_10001E3F8();
  LogPrintF();
}

void sub_100033A64(void *a1)
{
  v12 = [a1 networkName];
  v2 = [a1 bundleID];
  sub_10001E460(v2, v3, v4, v5, v6, v7, v8, v9, v10, v2, v11, v12);
  LogPrintF();
}

void sub_100033AE8()
{
  sub_10001E404();
  [v3 networkName];
  objc_claimAutoreleasedReturnValue();
  [sub_10001E3EC() bundleID];
  objc_claimAutoreleasedReturnValue();
  sub_10001E3C8();
  CUPrintNSError();
  objc_claimAutoreleasedReturnValue();
  sub_10001E450();
  LogPrintF();
}

void sub_100033BA8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = CUPrintNSError();
  LogPrintF();
}

uint64_t sub_100033C18(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  return LogPrintF();
}

void sub_100033CF8(void *a1)
{
  v12 = [a1 networkName];
  v2 = [a1 bundleID];
  sub_10001E460(v2, v3, v4, v5, v6, v7, v8, v9, v10, v2, v11, v12);
  LogPrintF();
}

void sub_100033D7C()
{
  sub_10001E404();
  [v3 networkName];
  objc_claimAutoreleasedReturnValue();
  [sub_10001E3EC() bundleID];
  objc_claimAutoreleasedReturnValue();
  sub_10001E3C8();
  CUPrintNSError();
  objc_claimAutoreleasedReturnValue();
  sub_10001E450();
  LogPrintF();
}

void sub_100033E3C()
{
  sub_10001E3D4();
  v1 = [v0 networkName];
  LogPrintF();
}

void sub_100033EA8(void *a1, uint64_t *a2)
{
  v3 = [a1 networkName];
  v4 = *a2;
  LogPrintF();
}

void sub_100033F18(void *a1)
{
  v1 = [a1 networkName];
  LogPrintF();
}

void sub_100033F84()
{
  sub_10001E404();
  [v3 networkName];
  objc_claimAutoreleasedReturnValue();
  [sub_10001E3EC() bundleID];
  objc_claimAutoreleasedReturnValue();
  sub_10001E3C8();
  CUPrintNSError();
  objc_claimAutoreleasedReturnValue();
  sub_10001E450();
  LogPrintF();
}

void sub_1000340E0(void *a1)
{
  v1 = [a1 wifiAwareDevicePairingID];
  LogPrintF();
}

void sub_100034174()
{
  sub_10001E404();
  v12 = [*(v1 + 32) identifier];
  v2 = *(v0 + 40);
  sub_10001E440();
  v3 = CUPrintNSError();
  sub_10001E460(v3, v4, v5, v6, v7, v8, v9, v10, v11, v2, v3, v12);
  LogPrintF();
}

void sub_100034238()
{
  sub_10001E404();
  v12 = [*(v1 + 32) identifier];
  v2 = *(v0 + 40);
  sub_10001E440();
  v3 = CUPrintNSError();
  sub_10001E460(v3, v4, v5, v6, v7, v8, v9, v10, v11, v2, v3, v12);
  LogPrintF();
}

uint64_t sub_100034304(uint64_t a1)
{
  v2 = *(a1 + 72);
  v3 = *(a1 + 80);
  return LogPrintF();
}

void sub_100034348(uint64_t a1)
{
  v1 = *(a1 + 40);
  [*(a1 + 48) identifier];
  objc_claimAutoreleasedReturnValue();
  sub_10001E4D8();
  LogPrintF();
}

void sub_1000343B0()
{
  sub_10001E404();
  v2 = *(v1 + 32);
  v5 = [*(v1 + 40) identifier];
  v3 = *(v0 + 48);
  sub_10001E440();
  v4 = CUPrintNSError();
  LogPrintF();
}

void *sub_100034448(void *result)
{
  if (result)
  {
    v1 = result;
    result = NSErrorF_safe();
    *v1 = result;
  }

  return result;
}

void *sub_100034498(void *result)
{
  if (result)
  {
    v1 = result;
    result = NSErrorF_safe();
    *v1 = result;
  }

  return result;
}

void *sub_1000344E8(void *result)
{
  if (result)
  {
    v1 = result;
    result = NSErrorF_safe();
    *v1 = result;
  }

  return result;
}

void *sub_100034538(void *result)
{
  if (result)
  {
    v1 = result;
    result = NSErrorF_safe();
    *v1 = result;
  }

  return result;
}

uint64_t sub_100034588(uint64_t result)
{
  if (dword_1000603A0 <= 90)
  {
    if (dword_1000603A0 != -1)
    {
      return LogPrintF();
    }

    v1 = result;
    result = _LogCategory_Initialize();
    if (result)
    {
      v2 = *v1;
      return LogPrintF();
    }
  }

  return result;
}

void sub_100034628()
{
  if (dword_1000603A0 <= 90)
  {
    sub_10001E434();
    if (!v0 || _LogCategory_Initialize())
    {
      LogPrintF();
    }
  }
}

void sub_1000346A8()
{
  if (dword_1000603A0 <= 30)
  {
    sub_10001E434();
    if (!v0 || _LogCategory_Initialize())
    {
      LogPrintF();
    }
  }
}

void sub_100034724()
{
  if (dword_1000603A0 <= 90)
  {
    sub_10001E434();
    if (!v0 || _LogCategory_Initialize())
    {
      LogPrintF();
    }
  }
}

void sub_10003479C(void *a1)
{
  [a1 bundleIdentifier];
  objc_claimAutoreleasedReturnValue();
  sub_10001E3E0();
  LogPrintF();
}

id sub_100034870(uint64_t a1, void *a2)
{
  result = DANestedErrorF();
  *a2 = result;
  return result;
}

void sub_1000348B0(void *a1)
{
  [a1 description];
  objc_claimAutoreleasedReturnValue();
  sub_10001E3E0();
  LogPrintF();
}

void sub_100034920()
{
  v0 = CUPrintXPC();
  LogPrintF();
}

void sub_100034A00(void *a1)
{
  v2 = [a1 serviceName];
  v3 = [a1 configuration];
  LogPrintF();
}

void sub_100034C68(void *a1)
{
  v1 = [a1 networkName];
  LogPrintF();
}

void sub_100034CC0(void *a1)
{
  v1 = [a1 scanResultPredicate];
  LogPrintF();
}

void sub_100034F3C(uint64_t a1)
{
  v1 = objc_retainBlock(*(a1 + 176));
  LogPrintF();
}

void sub_100034F98(uint64_t a1)
{
  v1 = objc_retainBlock(*(a1 + 32));
  LogPrintF();
}

void sub_100034FF4(void *a1)
{
  v1 = [a1 configuration];
  v2 = [v1 serviceName];
  LogPrintF();
}

void sub_100035068(void *a1)
{
  v1 = [a1 configuration];
  v2 = [v1 serviceName];
  LogPrintF();
}

void sub_10003511C(void *a1)
{
  v1 = [a1 serviceName];
  LogPrintF();
}

void sub_100035174(void *a1)
{
  v1 = [a1 serviceName];
  LogPrintF();
}

void sub_1000352D0(uint64_t a1)
{
  v1 = [*(a1 + 160) name];
  LogPrintF();
}

uint64_t sub_1000354B0(uint64_t a1)
{
  v2 = *(a1 + 152);
  v3 = *(a1 + 160);
  return LogPrintF();
}

void sub_100035714(id *a1)
{
  v1 = [*a1 configuration];
  v2 = [v1 serviceName];
  LogPrintF();
}

void sub_1000357CC(void *a1)
{
  v1 = [a1 serviceName];
  LogPrintF();
}

void sub_100035BC0(void *a1)
{
  v2 = [a1 bundleIdentifier];
  v3 = [a1 extensionPointRecord];
  v4 = [v3 identifier];
  LogPrintF();
}

void sub_100035C48(uint64_t a1)
{
  sub_10002B860(a1);
  v1 = CUPrintPID();
  LogPrintF();
}

void sub_100035CB4(id *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v8 = [a1[2] bundleID];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = [a3 bundleID];
  }

  v12 = v10;

  v11 = [a1 accessLevel];
  if (v11 != 4 && (!v12 && v11 == 10 || ([v12 isEqual:a2] & 1) != 0))
  {
    [a1 _xpcReportDAEvent:a4];
  }
}

void sub_100035D78(uint64_t a1)
{
  sub_10002B860(a1);
  v2 = CUPrintPID();
  v1 = CUPrintNSError();
  LogPrintF();
}

void sub_100035E00()
{
  v0 = CUPrintXPC();
  LogPrintF();
}

void sub_100035E5C(uint64_t a1)
{
  v1 = *(a1 + 36);
  v2 = CUPrintPID();
  LogPrintF();
}

void sub_100035F34()
{
  if (dword_1000606C0 <= 90 && (dword_1000606C0 != -1 || _LogCategory_Initialize()))
  {
    sub_10001E3B4();
  }
}

void sub_100035F94()
{
  if (dword_1000606C0 <= 90 && (dword_1000606C0 != -1 || _LogCategory_Initialize()))
  {
    sub_10001E3B4();
  }
}

void sub_100035FF4()
{
  if (dword_1000606C0 <= 90 && (dword_1000606C0 != -1 || _LogCategory_Initialize()))
  {
    sub_10001E3B4();
  }
}

void sub_100036054()
{
  if (dword_1000606C0 <= 90 && (dword_1000606C0 != -1 || _LogCategory_Initialize()))
  {
    sub_10001E3B4();
  }
}

void sub_1000360E8(void *a1, uint64_t a2)
{
  v4 = DAErrorF();
  [a1 _xpcSendReplyError:v4 request:a2];
}

void sub_100036144(uint64_t a1)
{
  sub_10002B860(a1);
  v1 = CUPrintPID();
  LogPrintF();
}

void sub_1000361A0()
{
  if (dword_1000606C0 <= 90 && (dword_1000606C0 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }
}

void sub_10003623C()
{
  v0 = CUPrintNSError();
  LogPrintF();
}

void sub_1000362C8(uint64_t a1)
{
  sub_10002B860(a1);
  v1 = CUPrintPID();
  LogPrintF();
}

void sub_10003638C()
{
  v0 = CUPrintNSError();
  LogPrintF();
}

void sub_100036418()
{
  if (dword_1000606C0 <= 90 && (dword_1000606C0 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }
}

void sub_1000364B4()
{
  v0 = CUPrintNSError();
  LogPrintF();
}

void sub_100036514()
{
  if (dword_1000606C0 <= 90 && (dword_1000606C0 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }
}

void sub_10003657C(uint64_t a1)
{
  sub_10002B850(a1);
  CUPrintPID();
  objc_claimAutoreleasedReturnValue();
  sub_10002B86C();
  LogPrintF();
}

void sub_1000365E4(uint64_t a1)
{
  sub_10002B850(a1);
  v1 = CUPrintPID();
  LogPrintF();
}

void sub_100036650(uint64_t a1)
{
  sub_10002B850(a1);
  CUPrintPID();
  objc_claimAutoreleasedReturnValue();
  sub_10002B86C();
  LogPrintF();
}

void sub_1000366B8()
{
  if (dword_1000606C0 <= 90 && (dword_1000606C0 != -1 || _LogCategory_Initialize()))
  {
    sub_10001E3B4();
  }
}

void sub_100036738()
{
  v0 = *__error();
  v1 = CUPrintErrorCode();
  LogPrintF();
}

void sub_10003679C()
{
  v0 = CUPrintDurationDouble();
  LogPrintF();
}

void sub_100036850()
{
  if (dword_1000607A0 <= 30 && (dword_1000607A0 != -1 || _LogCategory_Initialize()))
  {
    sub_10002E95C();
  }
}

void sub_1000368B0()
{
  if (dword_1000607A0 <= 30 && (dword_1000607A0 != -1 || _LogCategory_Initialize()))
  {
    sub_10002E95C();
  }
}

uint64_t sub_100036910(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 48);
  return LogPrintF();
}

uint64_t sub_1000369BC(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 48);
  return LogPrintF();
}

uint64_t sub_100036A90(uint64_t result)
{
  if (dword_1000607A0 <= 30)
  {
    if (dword_1000607A0 != -1)
    {
      return LogPrintF();
    }

    v1 = result;
    result = _LogCategory_Initialize();
    if (result)
    {
      v2 = *v1;
      return LogPrintF();
    }
  }

  return result;
}

void sub_100036C78(id *a1)
{
  v1 = [*a1 bluetoothUUID];
  LogPrintF();
}

void sub_100036E28(uint64_t a1, uint64_t a2)
{
  v3 = CUPrintNSError();
  v4 = *(a2 + 40);
  v5 = v3;
  LogPrintF();
}