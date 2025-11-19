id sub_1000B3B4C(uint64_t a1)
{
  v1 = a1 + 32;
  result = *(*(a1 + 32) + 464);
  if (result != -1)
  {
    state64 = 0;
    result = notify_get_state(result, &state64);
    if (*(*v1 + 468) != state64)
    {
      *(*v1 + 468) = state64;
      if (dword_1001D4BA0 <= 30 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
      {
        sub_100129E88(v1);
      }

      v3 = *v1;
      v4 = *(*v1 + 468);
      v5[0] = _NSConcreteStackBlock;
      v5[1] = 3221225472;
      v5[2] = sub_1000B3C38;
      v5[3] = &unk_1001AEDB8;
      v5[4] = v3;
      return [v3 _bluetoothUseCaseFromWombatState:v4 resultBlock:v5];
    }
  }

  return result;
}

void sub_1000B3C38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(*(a1 + 32) + 88);
  if (v5)
  {
    v9 = [v5 dispatchQueue];

    if (v9)
    {
      v10 = *(*(a1 + 32) + 88);

      [v10 updateUseCase:a2 bleScanRate:a3 bleScanRateScreenOff:a4];
    }
  }
}

void sub_1000B3CCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(*(a1 + 32) + 88);
  if (v5)
  {
    v9 = [v5 dispatchQueue];

    if (v9)
    {
      v10 = *(*(a1 + 32) + 88);

      [v10 updateUseCase:a2 bleScanRate:a3 bleScanRateScreenOff:a4];
    }
  }
}

id sub_1000B3F44(uint64_t a1)
{
  if (dword_1001D4BA0 <= 20 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
  {
    sub_100129F80();
  }

  v2 = *(a1 + 32);
  v3 = v2[117];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000B3FF8;
  v5[3] = &unk_1001AEDB8;
  v5[4] = v2;
  return [v2 _bluetoothUseCaseFromWombatState:v3 resultBlock:v5];
}

void sub_1000B3FF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(*(a1 + 32) + 88);
  if (v5)
  {
    v9 = [v5 dispatchQueue];

    if (v9)
    {
      v10 = *(*(a1 + 32) + 88);

      [v10 updateUseCase:a2 bleScanRate:a3 bleScanRateScreenOff:a4];
    }
  }
}

void sub_1000B4154(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(*(a1 + 32) + 88);
  if (v5)
  {
    v9 = [v5 dispatchQueue];

    if (v9)
    {
      v10 = *(*(a1 + 32) + 88);

      [v10 updateUseCase:a2 bleScanRate:a3 bleScanRateScreenOff:a4];
    }
  }
}

void sub_1000B489C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *sub_1000B48BC(void *result, void *a2, uint64_t a3, _BYTE *a4)
{
  if (result[4] == a3)
  {
    v5 = result;
    result = [a2 unsignedIntValue];
    *(*(v5[5] + 8) + 24) = result;
    *a4 = 1;
  }

  return result;
}

uint64_t sub_1000B4B3C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = [v4 accountAltDSID];
  if (v5 && (v6 = v5, [*(a1 + 32) accountAltDSID], v7 = objc_claimAutoreleasedReturnValue(), v7, v6, v7))
  {
    v8 = [v4 accountAltDSID];
    v9 = [*(a1 + 32) accountAltDSID];
  }

  else
  {
    v8 = [v4 accountID];
    v9 = [*(a1 + 32) accountID];
  }

  v10 = v9;
  v11 = v8;
  v12 = v10;
  v13 = v12;
  if (v11 == v12)
  {
  }

  else
  {
    if ((v11 != 0) == (v12 == 0))
    {

LABEL_12:
      v15 = 0;
      goto LABEL_13;
    }

    v14 = [v11 isEqual:v12];

    if ((v14 & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  v15 = 1;
LABEL_13:

  return v15;
}

void sub_1000B4E30(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 328);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000B4ED0;
  v4[3] = &unk_1001AF0C0;
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v5 = v3;
  v6 = *(a1 + 48);
  [v2 enumerateKeysAndObjectsUsingBlock:v4];
}

void sub_1000B4ED0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if ((*(*(a1 + 40) + 16))())
  {
    v7 = *(*(a1 + 32) + 600);
    if (!v7 || ([v6 identifier], v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v7, "isEqualToString:", v8), v8, (v9 & 1) == 0))
    {
      v28[0] = _NSConcreteStackBlock;
      v28[1] = 3221225472;
      v28[2] = sub_1000B5144;
      v28[3] = &unk_1001AF098;
      v31 = *(a1 + 48);
      v10 = v5;
      v11 = *(a1 + 32);
      v29 = v10;
      v30 = v11;
      v12 = objc_retainBlock(v28);
      v13 = *(*(a1 + 32) + 528);
      if (!v13)
      {
        v14 = objc_alloc_init(NSMutableDictionary);
        v15 = *(a1 + 32);
        v16 = *(v15 + 528);
        *(v15 + 528) = v14;

        v13 = *(*(a1 + 32) + 528);
      }

      v17 = [v13 objectForKeyedSubscript:v10];
      if (v17)
      {
        v18 = v17;
        (v12[2])(v12, v17);
      }

      else
      {
        v19 = objc_alloc_init(RPCompanionLinkClient);
        v20 = objc_alloc_init(RPCompanionLinkDevice);
        [v20 setIdentifier:v10];
        [v19 setDispatchQueue:*(*(a1 + 32) + 592)];
        [v19 setDestinationDevice:v20];
        [v19 setControlFlags:6];
        [v19 setServiceType:@"com.apple.devicediscoveryui.rapportwake"];
        v23[0] = _NSConcreteStackBlock;
        v23[1] = 3221225472;
        v23[2] = sub_1000B5410;
        v23[3] = &unk_1001ABF30;
        v18 = v19;
        v21 = *(a1 + 32);
        v24 = v18;
        v25 = v21;
        v22 = v10;
        v26 = v22;
        v27 = v12;
        [v18 activateWithCompletion:v23];
        [*(*(a1 + 32) + 528) setObject:v18 forKeyedSubscript:v22];
      }
    }
  }
}

void sub_1000B5144(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 48);
  if (v4 == 2)
  {
    v5 = 4;
  }

  else
  {
    v5 = 1;
  }

  if (v4 == 1)
  {
    v6 = 3;
  }

  else
  {
    v6 = v5;
  }

  if (dword_1001D4BA0 <= 30 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
  {
    sub_10012A118(v6, a1);
  }

  v7 = [*(*(a1 + 40) + 536) UUIDString];
  v8 = [NSNumber numberWithUnsignedInteger:v6];
  v9 = [NSDictionary dictionaryWithObjectsAndKeys:v7, @"sesID", v8, @"actionType", 0];

  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000B52D4;
  v11[3] = &unk_1001AF070;
  v12 = *(a1 + 32);
  v13 = v3;
  v14 = *(a1 + 40);
  v10 = v3;
  [v10 sendRequestID:@"_ccConfirmStart" request:v9 options:0 responseHandler:v11];
}

void sub_1000B52D4(uint64_t a1, void *a2, void *a3, void *a4)
{
  v11 = a2;
  v7 = a3;
  v8 = a4;
  if (v8)
  {
    if (dword_1001D4BA0 > 90)
    {
      goto LABEL_10;
    }

    if (dword_1001D4BA0 != -1 || _LogCategory_Initialize())
    {
      v9 = *(a1 + 32);
      v10 = v8;
      LogPrintF();
    }
  }

  if (dword_1001D4BA0 <= 40 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
  {
    v9 = v11;
    v10 = *(a1 + 32);
    LogPrintF();
  }

LABEL_10:
  [*(a1 + 40) invalidate];
  [*(*(a1 + 48) + 528) setObject:0 forKeyedSubscript:*(a1 + 32)];
}

void sub_1000B5410(uint64_t a1, void *a2)
{
  v5 = a2;
  if (v5)
  {
    [*(a1 + 32) invalidate];
    [*(*(a1 + 40) + 528) setObject:0 forKeyedSubscript:*(a1 + 48)];
    if (dword_1001D4BA0 <= 90 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
    {
      v4 = *(a1 + 48);
      LogPrintF();
    }
  }

  else
  {
    v3 = *(a1 + 32);
    (*(*(a1 + 56) + 16))();
  }
}

void sub_1000B59C0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (dword_1001D4BA0 <= 30 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
  {
    sub_10012A388();
  }

  v7 = [*(*(a1 + 32) + 536) UUIDString];
  v8 = [NSNumber numberWithUnsignedInteger:2];
  v9 = [NSDictionary dictionaryWithObjectsAndKeys:v7, @"sesID", v8, @"actionType", 0];

  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000B5B38;
  v12[3] = &unk_1001AF0E8;
  v13 = v6;
  v14 = v5;
  v10 = v5;
  v11 = v6;
  [v11 sendRequestID:@"_ccConfirmStart" request:v9 options:0 responseHandler:v12];
}

void sub_1000B5B38(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v9 = a4;
  [*(a1 + 32) invalidate];
  v5 = v9;
  if (v9)
  {
    if (dword_1001D4BA0 > 90)
    {
      goto LABEL_11;
    }

    if (dword_1001D4BA0 == -1)
    {
      v7 = _LogCategory_Initialize();
      v5 = v9;
      if (!v7)
      {
        goto LABEL_11;
      }
    }

    v8 = *(a1 + 40);
    LogPrintF();
LABEL_5:
    v5 = v9;
    goto LABEL_11;
  }

  if (dword_1001D4BA0 <= 30)
  {
    if (dword_1001D4BA0 != -1 || (v6 = _LogCategory_Initialize(), v5 = 0, v6))
    {
      sub_10012A3D0(a1);
      goto LABEL_5;
    }
  }

LABEL_11:
}

void sub_1000B5F24(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1[4];
  if (v3)
  {
    [v4 invalidate];
    if (dword_1001D4BA0 <= 90 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
    {
      v6 = a1[5];
      LogPrintF();
    }
  }

  else
  {
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1000B6028;
    v7[3] = &unk_1001AEFF8;
    v5 = a1[6];
    v7[4] = a1[7];
    v7[5] = v4;
    v7[6] = a1[5];
    [v4 sendEventID:@"_ccExit" event:v5 options:0 completion:v7];
  }
}

void sub_1000B6028(uint64_t a1, void *a2)
{
  v6 = a2;
  dispatch_assert_queue_V2(*(*(a1 + 32) + 592));
  [*(a1 + 40) invalidate];
  v3 = v6;
  if (v6)
  {
    if (dword_1001D4BA0 <= 90)
    {
      if (dword_1001D4BA0 != -1 || (v4 = _LogCategory_Initialize(), v3 = v6, v4))
      {
        sub_10012A414();
LABEL_13:
        v3 = v6;
      }
    }
  }

  else if (dword_1001D4BA0 <= 30)
  {
    if (dword_1001D4BA0 != -1 || (v5 = _LogCategory_Initialize(), v3 = 0, v5))
    {
      sub_10012A454(a1);
      goto LABEL_13;
    }
  }
}

id sub_1000B6784(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 336);
  if (v2)
  {
    v3 = v2;
    dispatch_source_cancel(v3);
    v4 = *(a1 + 32);
    v5 = *(v4 + 336);
    *(v4 + 336) = 0;
  }

  if (dword_1001D4BA0 <= 30 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
  {
    sub_10012A540();
  }

  v6 = *(a1 + 32);

  return [v6 _changeDiscoverySessionStateForDevice:0 startReason:0];
}

void sub_1000B6948(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 344);
  if (v2)
  {
    v3 = v2;
    dispatch_source_cancel(v3);
    v4 = *(a1 + 32);
    v5 = *(v4 + 344);
    *(v4 + 344) = 0;
  }

  v6 = *(a1 + 32);
  if (v6[75])
  {
    v7 = [v6 _findMatchingDeviceWithIdentifier:?];
    v10 = v7;
    if (!v7 || (v8 = [v7 inDiscoverySession], v9 = v10, (v8 & 1) == 0))
    {
      if (dword_1001D4BA0 <= 30 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
      {
        sub_10012A59C();
      }

      [*(a1 + 32) _changeDiscoverySessionStateForDevice:0 startReason:0];
      v9 = v10;
    }
  }
}

void sub_1000B7008(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v4 = [v5 client];
  LODWORD(a1) = [v4 isEqual:*(a1 + 32)];

  if (a1)
  {
    [v5 invalidate];
  }
}

id sub_1000B7728(uint64_t a1, int a2)
{
  v4 = [*(a1 + 32) pairingInfo];

  if (!v4)
  {
    if (a2 != 1)
    {
      return [*(*(a1 + 48) + 56) _update];
    }

LABEL_9:
    v7 = [*(a1 + 40) linkType];
    v8 = *(a1 + 48);
    if (*(v8 + 40))
    {
      v9 = v7;
      v10 = [*(v8 + 80) remoteObjectProxy];
      v11 = [NSNumber numberWithInt:v9];
      [v10 remoteDisplayUpdateDataLinkType:v11];
    }

    v12 = sub_1000AA650();
    v13 = sub_1000AA650();
    v14 = os_signpost_id_make_with_pointer(v13, *(a1 + 48));

    if (v14 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
    {
      *v16 = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v12, OS_SIGNPOST_EVENT, v14, "RPConnectionStateReady", "RPConnectionStateReady", v16, 2u);
    }

    return [*(*(a1 + 48) + 56) _update];
  }

  if (a2)
  {
    if (a2 != 1)
    {
      return [*(*(a1 + 48) + 56) _update];
    }

    v5 = [*(a1 + 40) peerDeviceInfo];
    v6 = [v5 verifiedIdentity];

    if (dword_1001D4BA0 <= 30 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
    {
      sub_10012A66C(a1);
    }

    [*(*(a1 + 48) + 56) _changeDiscoverySessionStateForDevice:v6 startReason:*(*(*(a1 + 48) + 56) + 557)];

    goto LABEL_9;
  }

  [*(a1 + 32) setNeedsAWDL:0];
  if (dword_1001D4BA0 <= 30 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
  {
    sub_10012A650();
  }

  return [*(*(a1 + 48) + 56) _update];
}

void sub_1000B7E78(uint64_t a1, void *a2)
{
  v3 = a2;
  v7 = v3;
  if (dword_1001D4BA0 <= 90)
  {
    if (dword_1001D4BA0 != -1 || (v4 = _LogCategory_Initialize(), v3 = v7, v4))
    {
      v6 = *(a1 + 32);
      LogPrintF();
      v3 = v7;
    }
  }

  v5 = *(a1 + 40);
  if (v5)
  {
    (*(v5 + 16))(v5, v7);
    v3 = v7;
  }
}

void sub_1000B7F38(uint64_t a1, void *a2)
{
  v5 = a2;
  if (v5)
  {
    if (dword_1001D4BA0 <= 90 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
    {
      sub_10012A780(a1);
    }
  }

  else
  {
    if (dword_1001D4BA0 <= 30 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
    {
      sub_10012A7C8(a1);
    }

    if (GestaltGetDeviceClass() == 1 || GestaltGetDeviceClass() == 3)
    {
      [*(*(a1 + 48) + 56) _postNotificationForWombatActivity:1];
    }
  }

  v3 = *(a1 + 56);
  v4 = v5;
  if (v3)
  {
    (*(v3 + 16))(v3, v5);
    v4 = v5;
  }
}

void sub_1000B846C(uint64_t a1, void *a2)
{
  v3 = a2;
  if (dword_1001D4BA0 <= 90 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
  {
    sub_10012A8CC();
  }

  (*(*(a1 + 32) + 16))();
}

void sub_1000B850C(uint64_t a1, void *a2)
{
  v3 = a2;
  if (dword_1001D4BA0 <= 90 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
  {
    sub_10012A90C();
  }

  (*(*(a1 + 32) + 16))();
}

void sub_1000B89F0(uint64_t a1)
{
  v2 = [off_1001D4CF8[0]() defaultWorkspace];
  v3 = *(a1 + 32);
  v7 = 0;
  v4 = [v2 openSensitiveURL:v3 withOptions:0 error:&v7];
  v5 = v7;

  if ((v4 & 1) == 0 && dword_1001D4BA0 <= 90 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
  {
    v6 = *(a1 + 32);
    LogPrintF();
  }
}

void sub_1000B8B34(uint64_t a1)
{
  error = 0;
  v2 = objc_opt_new();
  v3 = off_1001D4D08(@"CC_DISABLED_HEADER");
  [v2 setObject:v3 forKeyedSubscript:kCFUserNotificationAlertHeaderKey];

  v4 = off_1001D4D08(@"CC_DISABLED_CANCEL");
  [v2 setObject:v4 forKeyedSubscript:kCFUserNotificationAlternateButtonTitleKey];

  v5 = off_1001D4D08(@"CC_DISABLED_SETTINGS");
  [v2 setObject:v5 forKeyedSubscript:kCFUserNotificationDefaultButtonTitleKey];

  v6 = off_1001D4D08(@"CC_DISABLED_MESSAGE");
  [v2 setObject:v6 forKeyedSubscript:kCFUserNotificationAlertMessageKey];

  v7 = CFUserNotificationCreate(0, 0.0, 1uLL, &error, v2);
  if (error)
  {
    if (dword_1001D4BA0 <= 30 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }
  }

  else
  {
    v8 = v7;
    responseFlags = 0;
    CFUserNotificationReceiveResponse(v7, 0.0, &responseFlags);
    if ((responseFlags & 3) == 0)
    {
      [*(a1 + 32) _handleContinuityCameraDisabledAlertResponse];
    }

    CFRelease(v8);
  }
}

void sub_1000B8FCC(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if ([*(a1 + 32) shouldReportDevice:?])
  {
    v4 = [*(*(a1 + 40) + 80) remoteObjectProxy];
    [v4 remoteDisplayFoundDevice:v5];
  }
}

uint64_t sub_1000B9C04(uint64_t result)
{
  if (!*(result + 32))
  {
    return result;
  }

  v1 = result;
  if (dword_1001D4BA0 <= 90)
  {
    if (dword_1001D4BA0 != -1)
    {
LABEL_4:
      LogPrintF();
      goto LABEL_6;
    }

    if (_LogCategory_Initialize())
    {
      v4 = *(v1 + 32);
      goto LABEL_4;
    }
  }

LABEL_6:
  result = *(v1 + 40);
  if (result)
  {
    v2 = *(v1 + 32);
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

Class sub_1000BAC0C()
{
  if (qword_1001D6518 != -1)
  {
    sub_10012AF38();
  }

  result = objc_getClass("SFDeviceDiscovery");
  qword_1001D6510 = result;
  off_1001D4C10[0] = sub_1000BAC60;
  return result;
}

void sub_1000BAC98(id a1)
{
  v1 = LogCategoryCopyOSLogHandle();
  v2 = qword_1001D6528;
  qword_1001D6528 = v1;
}

Class sub_1000BACD4()
{
  if (qword_1001D6518 != -1)
  {
    sub_10012AF38();
  }

  result = objc_getClass("SFService");
  qword_1001D6538 = result;
  off_1001D4C18[0] = sub_1000BAD28;
  return result;
}

id sub_1000BAD34()
{
  if (qword_1001D6540 != -1)
  {
    sub_10012AF4C();
  }

  v1 = qword_1001D6508;

  return v1;
}

void sub_1000BAD78(id a1)
{
  if (qword_1001D6518 != -1)
  {
    sub_10012AF38();
  }

  v1 = dlsym(qword_1001D6520, "SFServiceIdentifierRemoteDisplay");
  if (v1)
  {
    objc_storeStrong(&qword_1001D6508, *v1);
  }

  off_1001D4C20 = sub_1000BADE0;
}

uint64_t sub_1000BADEC()
{
  if (qword_1001D6548 != -1)
  {
    sub_10012AF60();
  }

  v0 = dlsym(qword_1001D6550, "FigContinuityCaptureGetUserPreferenceDisabled");
  off_1001D4D00[0] = v0;

  return v0();
}

Class sub_1000BAE70()
{
  if (qword_1001D6518 != -1)
  {
    sub_10012AF38();
  }

  result = objc_getClass("SFAuthenticationManager");
  qword_1001D6558 = result;
  off_1001D4C30 = sub_1000BAEC4;
  return result;
}

Class sub_1000BAED0()
{
  if (qword_1001D6568 != -1)
  {
    sub_10012AF74();
  }

  result = objc_getClass("LSApplicationWorkspace");
  qword_1001D6560 = result;
  off_1001D4CF8[0] = sub_1000BAF24;
  return result;
}

id sub_1000BAF5C(void *a1)
{
  v1 = qword_1001D6578;
  v2 = a1;
  if (v1 != -1)
  {
    sub_10012AF88();
  }

  off_1001D4D08 = dlsym(qword_1001D6580, "RPUILocalizedString");
  v3 = (off_1001D4D08)(v2);

  return v3;
}

id sub_1000BB00C(uint64_t a1)
{
  v2 = *(a1 + 80);

  return [v2 processIdentifier];
}

void sub_1000BB068(id a1)
{
  v1 = objc_alloc_init(RPStatusDaemon);
  v2 = qword_1001D6588;
  qword_1001D6588 = v1;
}

void sub_1000BB59C(id a1, NSDictionary *a2, NSDictionary *a3)
{
  v5 = a2;
  v4 = a3;
  if (dword_1001D4D10 <= 20 && (dword_1001D4D10 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }
}

void sub_1000BC970(uint64_t a1, void *a2, void *a3, void *a4)
{
  v10 = a2;
  v7 = a3;
  v8 = a4;
  v9 = [v7 objectForKey:@"senderID"];
  if ([v9 length])
  {
    objc_storeStrong((*(a1 + 32) + 24), v9);
  }

  [*(a1 + 32) _handleSiriStart:v10 options:v7 responseHandler:v8];
}

uint64_t sub_1000BD7E4()
{
  v0 = type metadata accessor for Logger();
  sub_1000C5A94(v0, qword_1001D65A8);
  v1 = sub_10000BB0C(v0, qword_1001D65A8);
  v2 = sub_1001061B0();
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

Swift::Int sub_1000BD884()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_1000BD8F8()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

uint64_t *sub_1000BD93C@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = *result > 1;
  if (*result > 1)
  {
    v2 = 0;
  }

  *a2 = v2;
  *(a2 + 8) = v3;
  return result;
}

uint64_t sub_1000BD964()
{
  if (!*v0)
  {
    return 0x65766973736170;
  }

  if (*v0 == 1)
  {
    return 0x657669746361;
  }

  v2 = *v0;
  result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
  __break(1u);
  return result;
}

Swift::Int sub_1000BD9EC()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_1000BDA60()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

id sub_1000BDAB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _OWORD *a5)
{
  v6 = v5;
  v35 = a3;
  v36 = a4;
  v34 = a2;
  v9 = type metadata accessor for NWBrowser.Descriptor();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = (&v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = objc_allocWithZone(v6);
  v15 = OBJC_IVAR____TtC8rapportd15RPPairingClient_attemptCounts;
  *&v14[v15] = sub_1000C44E8(_swiftEmptyArrayStorage);
  v16 = OBJC_IVAR____TtC8rapportd15RPPairingClient_pairingBrowser;
  *&v14[OBJC_IVAR____TtC8rapportd15RPPairingClient_pairingBrowser] = 0;
  v17 = OBJC_IVAR____TtC8rapportd15RPPairingClient_peerIdentityMap;
  *&v14[v17] = sub_1000C45E4(_swiftEmptyArrayStorage);
  v18 = OBJC_IVAR____TtC8rapportd15RPPairingClient_encryptionStreams;
  *&v14[v18] = sub_1000C46E8(_swiftEmptyArrayStorage);
  *&v14[OBJC_IVAR____TtC8rapportd15RPPairingClient_selfRPIdentity] = 0;
  v19 = &v14[OBJC_IVAR____TtC8rapportd15RPPairingClient_endpointsChangedHandler];
  *v19 = 0;
  *(v19 + 1) = 0;
  *&v14[OBJC_IVAR____TtC8rapportd15RPPairingClient_browseMode] = a1;
  *&v14[OBJC_IVAR____TtC8rapportd15RPPairingClient_currentPairingEndpoints] = _swiftEmptyArrayStorage;
  v20 = RPPairingBonjourServiceName.unsafeMutableAddressor();
  object = v20->_object;
  *v13 = v20->_countAndFlagsBits;
  v13[1] = object;
  v13[2] = 0;
  v13[3] = 0;
  (*(v10 + 104))(v13, enum case for NWBrowser.Descriptor.bonjourWithTXTRecord(_:), v9);
  type metadata accessor for NWParameters();

  sub_100108AD8();
  v22 = type metadata accessor for NWBrowser();
  v23 = *(v22 + 48);
  v24 = *(v22 + 52);
  swift_allocObject();
  v25 = NWBrowser.init(for:using:)();
  v26 = *&v14[v16];
  *&v14[v16] = v25;

  v27 = &v14[OBJC_IVAR____TtC8rapportd15RPPairingClient_selfPairingIdentity];
  v28 = a5[1];
  *v27 = *a5;
  *(v27 + 1) = v28;
  v29 = a5[3];
  *(v27 + 2) = a5[2];
  *(v27 + 3) = v29;
  v30 = &v14[OBJC_IVAR____TtC8rapportd15RPPairingClient_serviceName];
  v31 = v35;
  *v30 = v34;
  *(v30 + 1) = v31;
  *&v14[OBJC_IVAR____TtC8rapportd15RPPairingClient_queue] = v36;
  v37.receiver = v14;
  v37.super_class = v6;
  return objc_msgSendSuper2(&v37, "init");
}

uint64_t sub_1000BDCF0()
{
  v1 = sub_1000C4810(&qword_1001D4F68, &qword_100149690);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v16 - v3;
  v5 = type metadata accessor for TaskPriority();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = v0;
  v7 = v0;
  sub_1000BE36C(0, 0, v4, &unk_1001496A0, v6);

  v8 = &v7[OBJC_IVAR____TtC8rapportd15RPPairingClient_serviceName];
  result = *&v7[OBJC_IVAR____TtC8rapportd15RPPairingClient_serviceName];
  if (result != 0xD00000000000001FLL || 0x8000000100178DC0 != *&v7[OBJC_IVAR____TtC8rapportd15RPPairingClient_serviceName + 8])
  {
    result = _stringCompareWithSmolCheck(_:_:expecting:)();
    if ((result & 1) == 0 && !*&v7[OBJC_IVAR____TtC8rapportd15RPPairingClient_browseMode])
    {
      v11 = sub_1000E0A84();
      v12 = *v8;
      v13 = v8[1];
      v14 = *v11;

      v15._countAndFlagsBits = v12;
      v15._object = v13;
      RPPairingDaemon.startAdHocPairingBLEAdvertiser(for:)(v15);
    }
  }

  return result;
}

uint64_t sub_1000BDEAC()
{
  v1 = *(v0 + 16);
  sub_1000C5AF8(0, &qword_1001D5030, RPClient_ptr);
  v2 = *(v1 + OBJC_IVAR____TtC8rapportd15RPPairingClient_queue);
  v3 = swift_task_alloc();
  *(v0 + 24) = v3;
  *v3 = v0;
  v3[1] = sub_1000BDF6C;

  return sub_100108600(v2);
}

uint64_t sub_1000BDF6C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 24);
  v6 = *v2;

  if (v1)
  {
    v7 = *(v6 + 8);

    return v7();
  }

  else
  {
    *(v4 + 32) = a1;

    return _swift_task_switch(sub_1000BE0B8, 0, 0);
  }
}

uint64_t sub_1000BE0B8()
{
  v1 = v0[2];
  v2 = *(v1 + OBJC_IVAR____TtC8rapportd15RPPairingClient_selfRPIdentity);
  *(v1 + OBJC_IVAR____TtC8rapportd15RPPairingClient_selfRPIdentity) = v0[4];

  sub_1000BE134();
  v3 = v0[1];

  return v3();
}

void sub_1000BE134()
{
  if (*&v0[OBJC_IVAR____TtC8rapportd15RPPairingClient_pairingBrowser])
  {
    v1 = qword_1001D65A0;
    v2 = *&v0[OBJC_IVAR____TtC8rapportd15RPPairingClient_pairingBrowser];

    if (v1 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_10000BB0C(v3, qword_1001D65A8);
    v4 = v0;
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      *v7 = 136315138;
      v14 = *&v4[OBJC_IVAR____TtC8rapportd15RPPairingClient_browseMode];
      v15 = v8;
      sub_1000C5B50();
      v9 = dispatch thunk of CustomStringConvertible.description.getter();
      v11 = sub_1000C3440(v9, v10, &v15);

      *(v7 + 4) = v11;
      _os_log_impl(&_mh_execute_header, v5, v6, "Starting to browse for endpoints in %s mode", v7, 0xCu);
      sub_1000C5604(v8);
    }

    *(swift_allocObject() + 16) = v4;
    v12 = v4;
    NWBrowser.stateUpdateHandler.setter();
    swift_allocObject();
    swift_unknownObjectWeakInit();

    NWBrowser.browseResultsChangedHandler.setter();

    v13 = *&v12[OBJC_IVAR____TtC8rapportd15RPPairingClient_queue];
    NWBrowser.start(queue:)();
  }
}

uint64_t sub_1000BE36C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_1000C4810(&qword_1001D4F68, &qword_100149690);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = v24 - v10;
  sub_1000C5808(a3, v24 - v10, &qword_1001D4F68, &qword_100149690);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1000C59E0(v11, &qword_1001D4F68, &qword_100149690);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = dispatch thunk of Actor.unownedExecutor.getter();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = String.utf8CString.getter() + 32;

      if (v19 | v17)
      {
        v25[0] = 0;
        v25[1] = 0;
        v21 = v25;
        v25[2] = v17;
        v25[3] = v19;
      }

      else
      {
        v21 = 0;
      }

      v24[1] = 7;
      v24[2] = v21;
      v24[3] = v20;
      v22 = swift_task_create();

      sub_1000C59E0(a3, &qword_1001D4F68, &qword_100149690);

      return v22;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1000C59E0(a3, &qword_1001D4F68, &qword_100149690);
  if (v19 | v17)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v17;
    v25[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_1000BE618()
{
  v1 = v0;
  if (qword_1001D65A0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000BB0C(v2, qword_1001D65A8);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Browsers stopping", v5, 2u);
  }

  if (*(v1 + OBJC_IVAR____TtC8rapportd15RPPairingClient_pairingBrowser))
  {
    v6 = *(v1 + OBJC_IVAR____TtC8rapportd15RPPairingClient_pairingBrowser);

    NWBrowser.cancel()();
  }

  v7 = (v1 + OBJC_IVAR____TtC8rapportd15RPPairingClient_serviceName);
  v8 = *(v1 + OBJC_IVAR____TtC8rapportd15RPPairingClient_serviceName) == 0xD00000000000001FLL && 0x8000000100178DC0 == *(v1 + OBJC_IVAR____TtC8rapportd15RPPairingClient_serviceName + 8);
  if (!v8 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 && !*(v1 + OBJC_IVAR____TtC8rapportd15RPPairingClient_browseMode))
  {
    v9 = sub_1000E0A84();
    v10 = *v7;
    v11 = v7[1];
    v12 = *v9;

    v13._countAndFlagsBits = v10;
    v13._object = v11;
    RPPairingDaemon.stopAdHocPairingBLEAdvertiser(for:)(v13);
  }

  v14 = OBJC_IVAR____TtC8rapportd15RPPairingClient_attemptCounts;
  swift_beginAccess();
  v15 = *(v1 + v14);
  *(v1 + v14) = &_swiftEmptyDictionarySingleton;
}

uint64_t sub_1000BE7E0(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return _swift_task_switch(sub_1000BE804, 0, 0);
}

uint64_t sub_1000BE804()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];
  v4 = swift_task_alloc();
  v0[5] = v4;
  v4[2] = v1;
  v4[3] = v3;
  v4[4] = v2;
  v5 = async function pointer to withTaskGroup<A, B>(of:returning:isolation:body:)[1];
  v6 = swift_task_alloc();
  v0[6] = v6;
  *v6 = v0;
  v6[1] = sub_1000BE900;

  return withTaskGroup<A, B>(of:returning:isolation:body:)(v0 + 7);
}

uint64_t sub_1000BE900()
{
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 40);
  v4 = *v0;

  return _swift_task_switch(sub_1000BEA18, 0, 0);
}

uint64_t sub_1000BEA30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[12] = a4;
  v5[13] = a5;
  v5[10] = a2;
  v5[11] = a3;
  v5[9] = a1;
  v6 = sub_1000C4810(&qword_1001D5000, &qword_100149850);
  v5[14] = v6;
  v7 = *(v6 - 8);
  v5[15] = v7;
  v8 = *(v7 + 64) + 15;
  v5[16] = swift_task_alloc();
  v9 = *(*(sub_1000C4810(&qword_1001D4F68, &qword_100149690) - 8) + 64) + 15;
  v5[17] = swift_task_alloc();
  v5[18] = swift_task_alloc();
  v5[19] = swift_task_alloc();

  return _swift_task_switch(sub_1000BEB54, 0, 0);
}

uint64_t sub_1000BEB54()
{
  v1 = v0[19];
  v3 = v0[10];
  v2 = v0[11];
  v4 = type metadata accessor for TaskPriority();
  v5 = *(v4 - 8);
  v49 = *(v5 + 56);
  v49(v1, 1, 1, v4);
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *(v6 + 24) = 0;
  sub_1000BF738(v1, &unk_100149860, v6);
  v7 = sub_1000C59E0(v1, &qword_1001D4F68, &qword_100149690);
  v11 = *(v2 + OBJC_IVAR____TtC8rapportd15RPPairingClient_currentPairingEndpoints);
  if (v11 >> 62)
  {
    if (v11 < 0)
    {
      v39 = *(v2 + OBJC_IVAR____TtC8rapportd15RPPairingClient_currentPairingEndpoints);
    }

    v40 = *(v2 + OBJC_IVAR____TtC8rapportd15RPPairingClient_currentPairingEndpoints);
    v7 = _CocoaArrayWrapper.endIndex.getter();
    v11 = v40;
    v12 = v7;
    v0[20] = v7;
    if (!v7)
    {
      goto LABEL_19;
    }
  }

  else
  {
    v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v0[20] = v12;
    if (!v12)
    {
      goto LABEL_19;
    }
  }

  if (v12 < 1)
  {
    __break(1u);
    return TaskGroup.Iterator.next(isolation:)(v7, v8, v9, v10);
  }

  v48 = v4;
  v44 = v11 & 0xC000000000000001;
  v45 = *v0[10];
  v43 = (v5 + 48);
  v42 = (v5 + 8);
  v13 = v11;

  v14 = v13;
  v15 = 0;
  v46 = v12;
  v47 = v13;
  do
  {
    v51 = v15;
    if (v44)
    {
      v18 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v18 = *(v14 + 8 * v15 + 32);
    }

    v19 = v18;
    v21 = v0[17];
    v20 = v0[18];
    v22 = v0[12];
    v23 = v0[13];
    v24 = v0[11];
    v49(v20, 1, 1, v48);
    v25 = swift_allocObject();
    v25[2] = 0;
    v26 = v25 + 2;
    v25[3] = 0;
    v25[4] = v19;
    v25[5] = v24;
    v25[6] = v22;
    v25[7] = v23;
    sub_1000C5808(v20, v21, &qword_1001D4F68, &qword_100149690);
    LODWORD(v20) = (*v43)(v21, 1, v48);
    v50 = v19;
    v27 = v24;

    v28 = v0[17];
    if (v20 == 1)
    {
      sub_1000C59E0(v0[17], &qword_1001D4F68, &qword_100149690);
    }

    else
    {
      TaskPriority.rawValue.getter();
      (*v42)(v28, v48);
    }

    if (*v26)
    {
      v29 = v25[3];
      v30 = *v26;
      swift_getObjectType();
      swift_unknownObjectRetain();
      v31 = dispatch thunk of Actor.unownedExecutor.getter();
      v33 = v32;
      swift_unknownObjectRelease();
    }

    else
    {
      v31 = 0;
      v33 = 0;
    }

    v34 = swift_allocObject();
    *(v34 + 16) = &unk_100149878;
    *(v34 + 24) = v25;

    if (v33 | v31)
    {
      v16 = v0 + 2;
      v0[2] = 0;
      v0[3] = 0;
      v0[4] = v31;
      v0[5] = v33;
    }

    else
    {
      v16 = 0;
    }

    ++v15;
    v17 = v0[18];
    v0[6] = 1;
    v0[7] = v16;
    v0[8] = v45;
    swift_task_create();

    sub_1000C59E0(v17, &qword_1001D4F68, &qword_100149690);
    v14 = v47;
  }

  while (v46 != v51 + 1);

LABEL_19:
  v35 = v0[16];
  v0[21] = *v0[10];
  TaskGroup.makeAsyncIterator()();
  v0[22] = 0;
  v36 = async function pointer to TaskGroup.Iterator.next(isolation:)[1];
  v37 = swift_task_alloc();
  v0[23] = v37;
  *v37 = v0;
  v37[1] = sub_1000BEFEC;
  v38 = v0[16];
  v10 = v0[14];
  v7 = (v0 + 24);
  v8 = 0;
  v9 = 0;

  return TaskGroup.Iterator.next(isolation:)(v7, v8, v9, v10);
}

uint64_t sub_1000BEFEC()
{
  v1 = *(*v0 + 184);
  v3 = *v0;

  return _swift_task_switch(sub_1000BF0E8, 0, 0);
}

uint64_t sub_1000BF0E8()
{
  v1 = *(v0 + 192);
  if (v1 == 2)
  {
    v2 = 1;
LABEL_17:
    v12 = *(v0 + 168);
    TaskGroup.cancelAll()();
    goto LABEL_18;
  }

  if (v1 == 3)
  {
    v2 = 0;
LABEL_18:
    v13 = *(v0 + 144);
    v14 = *(v0 + 152);
    v15 = *(v0 + 136);
    v16 = *(v0 + 72);
    (*(*(v0 + 120) + 8))(*(v0 + 128), *(v0 + 112));
    *v16 = v2;

    v17 = *(v0 + 8);

    return v17();
  }

  if ((v1 & 1) == 0)
  {
    if (qword_1001D65A0 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_10000BB0C(v3, qword_1001D65A8);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v4, v5))
    {
      goto LABEL_16;
    }

    v6 = "Pairing attempt timed out";
    goto LABEL_15;
  }

  v7 = *(v0 + 176);
  v8 = __OFADD__(v7, 1);
  v9 = v7 + 1;
  if (v8)
  {
    __break(1u);
    goto LABEL_25;
  }

  if (v9 == *(v0 + 160))
  {
    if (qword_1001D65A0 == -1)
    {
LABEL_13:
      v10 = type metadata accessor for Logger();
      sub_10000BB0C(v10, qword_1001D65A8);
      v4 = Logger.logObject.getter();
      v5 = static os_log_type_t.error.getter();
      if (!os_log_type_enabled(v4, v5))
      {
LABEL_16:

        v2 = 0;
        goto LABEL_17;
      }

      v6 = "Pairing failed to all endpoints";
LABEL_15:
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, v6, v11, 2u);

      goto LABEL_16;
    }

LABEL_25:
    swift_once();
    goto LABEL_13;
  }

  *(v0 + 176) = v9;
  v19 = async function pointer to TaskGroup.Iterator.next(isolation:)[1];
  v20 = swift_task_alloc();
  *(v0 + 184) = v20;
  *v20 = v0;
  v20[1] = sub_1000BEFEC;
  v21 = *(v0 + 128);
  v22 = *(v0 + 112);

  return TaskGroup.Iterator.next(isolation:)(v0 + 192, 0, 0, v22);
}

uint64_t sub_1000BF3AC(uint64_t a1)
{
  v1[2] = a1;
  v2 = type metadata accessor for ContinuousClock();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();

  return _swift_task_switch(sub_1000BF46C, 0, 0);
}

uint64_t sub_1000BF46C()
{
  v1 = *(v0 + 40);
  static Clock<>.continuous.getter();
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  *v2 = v0;
  v2[1] = sub_1000BF538;
  v3 = *(v0 + 40);

  return sub_1000C2D98(0xD02AB486CEDC0000, 0, 0, 0, 1);
}

uint64_t sub_1000BF538()
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  v4 = *v1;

  v5 = v2[5];
  v6 = v2[4];
  v7 = v2[3];
  if (v0)
  {

    (*(v6 + 8))(v5, v7);
    v8 = sub_1000C5EF4;
  }

  else
  {
    (*(v6 + 8))(v5, v7);
    v8 = sub_1000BF6D0;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_1000BF6D0()
{
  v1 = *(v0 + 40);
  **(v0 + 16) = 0;

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1000BF738(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_1000C4810(&qword_1001D4F68, &qword_100149690);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = v22 - v10;
  sub_1000C5808(a1, v22 - v10, &qword_1001D4F68, &qword_100149690);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_1000C59E0(v11, &qword_1001D4F68, &qword_100149690);
    if (*(a3 + 16))
    {
LABEL_3:
      v14 = *(a3 + 24);
      swift_getObjectType();
      swift_unknownObjectRetain();
      v15 = dispatch thunk of Actor.unownedExecutor.getter();
      v17 = v16;
      swift_unknownObjectRelease();
      goto LABEL_6;
    }
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
    if (*(a3 + 16))
    {
      goto LABEL_3;
    }
  }

  v15 = 0;
  v17 = 0;
LABEL_6:
  v18 = *v4;
  v19 = swift_allocObject();
  *(v19 + 16) = a2;
  *(v19 + 24) = a3;
  v20 = (v17 | v15);
  if (v17 | v15)
  {
    v23[0] = 0;
    v23[1] = 0;
    v20 = v23;
    v23[2] = v15;
    v23[3] = v17;
  }

  v22[1] = 1;
  v22[2] = v20;
  v22[3] = v18;
  swift_task_create();
}

uint64_t sub_1000BF94C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[6] = a6;
  v7[7] = a7;
  v7[4] = a4;
  v7[5] = a5;
  v7[3] = a1;
  return _swift_task_switch(sub_1000BF974, 0, 0);
}

uint64_t sub_1000BF974()
{
  v20 = v0;
  if (qword_1001D65A0 != -1)
  {
    swift_once();
  }

  v1 = v0[4];
  v2 = type metadata accessor for Logger();
  v0[8] = sub_10000BB0C(v2, qword_1001D65A8);
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[4];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v19 = v8;
    *v7 = 136315138;
    v0[2] = v6;
    v9 = type metadata accessor for RPPairingEndpoint();
    v10 = sub_1000DC030((v0 + 2), v9);
    v12 = sub_1000C3440(v10, v11, &v19);

    *(v7 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v4, v5, "Attempting pairing with %s", v7, 0xCu);
    sub_1000C5604(v8);
  }

  v13 = swift_task_alloc();
  v0[9] = v13;
  *v13 = v0;
  v13[1] = sub_1000BFB60;
  v14 = v0[6];
  v15 = v0[7];
  v16 = v0[4];
  v17 = v0[5];

  return sub_1000BFD50(v16, v14, v15, 0, 0);
}

uint64_t sub_1000BFB60(char a1)
{
  v2 = *(*v1 + 72);
  v4 = *v1;
  *(*v1 + 80) = a1;

  return _swift_task_switch(sub_1000BFC60, 0, 0);
}

uint64_t sub_1000BFC60()
{
  if (*(v0 + 80) == 1)
  {
    v1 = *(v0 + 64);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, v3, "Pairing attempt succeeded", v4, 2u);
    }

    v5 = 2;
  }

  else
  {
    v5 = 1;
  }

  **(v0 + 24) = v5;
  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_1000BFD50(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  *(v6 + 824) = v5;
  *(v6 + 816) = a5;
  *(v6 + 968) = a4;
  *(v6 + 808) = a3;
  *(v6 + 800) = a2;
  *(v6 + 792) = a1;
  v7 = type metadata accessor for String.Encoding();
  *(v6 + 832) = v7;
  v8 = *(v7 - 8);
  *(v6 + 840) = v8;
  v9 = *(v8 + 64) + 15;
  *(v6 + 848) = swift_task_alloc();

  return _swift_task_switch(sub_1000BFE24, 0, 0);
}

uint64_t sub_1000BFE24()
{
  v1 = *(v0 + 848);
  v2 = *(v0 + 840);
  v3 = *(v0 + 832);
  v4 = *(v0 + 808);
  v5 = *(v0 + 800);
  static String.Encoding.utf8.getter();
  v6 = String.data(using:allowLossyConversion:)();
  v8 = v7;
  *(v0 + 856) = v6;
  *(v0 + 864) = v7;
  (*(v2 + 8))(v1, v3);
  if (v8 >> 60 == 15)
  {
    if (qword_1001D65A0 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_10000BB0C(v9, qword_1001D65A8);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v10, v11, "Unable to convert pin string to data", v12, 2u);
    }

    goto LABEL_26;
  }

  v55 = v6;
  v13 = *(v0 + 824);
  v14 = *(v0 + 792);
  v15 = RPPairingSPAKE2PlusClientIdentity.unsafeMutableAddressor();
  object = v15->_object;
  countAndFlagsBits = v15->_countAndFlagsBits;
  v17 = v14 + OBJC_IVAR____TtC8rapportd17RPPairingEndpoint_txtRecord;
  v18 = *(v14 + OBJC_IVAR____TtC8rapportd17RPPairingEndpoint_txtRecord + 64);
  *(v0 + 872) = v18;
  v19 = *(v17 + 72);
  *(v0 + 880) = v19;
  v20 = OBJC_IVAR____TtC8rapportd15RPPairingClient_attemptCounts;
  *(v0 + 888) = OBJC_IVAR____TtC8rapportd15RPPairingClient_attemptCounts;
  swift_beginAccess();
  v21 = *(v13 + v20);
  v22 = *(v21 + 16);

  if (v22 && (v23 = sub_1000C39E8(v18, v19), (v24 & 1) != 0))
  {
    v25 = *(*(v21 + 56) + 8 * v23);
    swift_endAccess();
    if (v25 >= 6)
    {

      if (qword_1001D65A0 != -1)
      {
        swift_once();
      }

      v26 = *(v0 + 792);
      v27 = type metadata accessor for Logger();
      sub_10000BB0C(v27, qword_1001D65A8);
      v28 = v26;
      v10 = Logger.logObject.getter();
      v29 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v10, v29))
      {
        v30 = *(v0 + 792);
        v31 = swift_slowAlloc();
        v32 = swift_slowAlloc();
        *v31 = 138412290;
        *(v31 + 4) = v30;
        *v32 = v30;
        v33 = v30;
        _os_log_impl(&_mh_execute_header, v10, v29, "Maximum pairing attempts reached for %@", v31, 0xCu);
        sub_1000C59E0(v32, &qword_1001D55A0, &unk_100149890);
      }

      v34 = v55;
      v35 = v8;
LABEL_25:
      sub_1000C5928(v34, v35);
LABEL_26:

      goto LABEL_27;
    }
  }

  else
  {
    swift_endAccess();
    v25 = 1;
  }

  v53 = v8;
  v36 = *(v0 + 824);
  v52 = *(v0 + 808);
  v37 = *(v0 + 800);
  swift_beginAccess();
  v38 = *(v13 + v20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v56 = *(v13 + v20);
  *(v13 + v20) = 0x8000000000000000;
  sub_1000C417C(v25, v18, v19, isUniquelyReferenced_nonNull_native);
  *(v13 + v20) = v56;
  swift_endAccess();
  type metadata accessor for NWParameters();
  v40 = *(v36 + OBJC_IVAR____TtC8rapportd15RPPairingClient_queue);
  v41 = sub_100108B1C(v37, v52, countAndFlagsBits, object, v18, v19);
  *(v0 + 896) = v41;

  if (!v41)
  {
    if (qword_1001D65A0 != -1)
    {
      swift_once();
    }

    v44 = type metadata accessor for Logger();
    sub_10000BB0C(v44, qword_1001D65A8);
    v10 = Logger.logObject.getter();
    v45 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v10, v45))
    {
      v46 = swift_slowAlloc();
      *v46 = 0;
      _os_log_impl(&_mh_execute_header, v10, v45, "Unable to create connection parameters", v46, 2u);
    }

    v34 = v55;
    v35 = v53;
    goto LABEL_25;
  }

  v42 = *(v0 + 816);
  if (!v42)
  {
    v51 = *(v0 + 792);
    type metadata accessor for RPPairingDistributedActor();
    type metadata accessor for NWActorSystem();
    static NWActorSystem.default.getter();
    sub_1000C593C(&qword_1001D5008, type metadata accessor for RPPairingDistributedActor);
    v42 = static DistributedActor<>.discover(_:connectionParameters:using:invalidationHandler:)();
  }

  *(v0 + 904) = v42;
  v43 = *(v0 + 816);
  if (*(v0 + 968))
  {

    sub_1000C5928(v55, v53);

LABEL_27:
    v47 = *(v0 + 848);

    v48 = *(v0 + 8);

    return v48(0);
  }

  v50 = swift_task_alloc();
  *(v0 + 912) = v50;
  *v50 = v0;
  v50[1] = sub_1000C05CC;

  return sub_1000C8EA8(v0 + 144, v55, v53);
}

uint64_t sub_1000C05CC()
{
  v2 = *v1;
  v3 = *(*v1 + 912);
  v8 = *v1;
  *(*v1 + 920) = v0;

  if (v0)
  {
    v4 = sub_1000C0F84;
  }

  else
  {
    v5 = v2[10];
    v2[13] = v2[9];
    v2[14] = v5;
    v6 = v2[12];
    v2[15] = v2[11];
    v2[16] = v6;
    v4 = sub_1000C06F0;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1000C06F0()
{
  v29 = v0;
  v1 = *(v0 + 152);
  if (v1)
  {
    *(v0 + 80) = *(v0 + 144);
    *(v0 + 88) = v1;
    v2 = *(v0 + 176);
    *(v0 + 96) = *(v0 + 160);
    *(v0 + 112) = v2;
    *(v0 + 128) = *(v0 + 192);
    if (qword_1001D65A0 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    *(v0 + 928) = sub_10000BB0C(v3, qword_1001D65A8);
    v4 = *(v0 + 224);
    *(v0 + 272) = *(v0 + 208);
    *(v0 + 288) = v4;
    v5 = *(v0 + 256);
    *(v0 + 304) = *(v0 + 240);
    *(v0 + 320) = v5;
    sub_1000C5984(v0 + 272, v0 + 336);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    sub_1000C59E0(v0 + 144, &qword_1001D5010, &qword_10014B2B0);
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v28 = v9;
      *v8 = 136315138;
      v10 = *(v0 + 96);
      *(v0 + 656) = *(v0 + 80);
      *(v0 + 672) = v10;
      v11 = *(v0 + 128);
      *(v0 + 688) = *(v0 + 112);
      *(v0 + 704) = v11;
      v12 = sub_1000DC030(v0 + 656, &type metadata for RPPairingIdentity);
      v14 = sub_1000C3440(v12, v13, &v28);

      *(v8 + 4) = v14;
      _os_log_impl(&_mh_execute_header, v6, v7, "Saving remote identity: %s", v8, 0xCu);
      sub_1000C5604(v9);
    }

    type metadata accessor for RPPairingSession();
    v15 = swift_task_alloc();
    *(v0 + 936) = v15;
    *v15 = v0;
    v15[1] = sub_1000C0A50;

    return sub_1000ED708(v0 + 80);
  }

  else
  {
    if (qword_1001D65A0 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    sub_10000BB0C(v17, qword_1001D65A8);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();
    v20 = os_log_type_enabled(v18, v19);
    v21 = *(v0 + 904);
    v22 = *(v0 + 896);
    v23 = *(v0 + 864);
    v24 = *(v0 + 856);
    if (v20)
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&_mh_execute_header, v18, v19, "No remote identity received from pairAndReceiveIdentity", v25, 2u);
    }

    sub_1000C5928(v24, v23);

    v26 = *(v0 + 848);

    v27 = *(v0 + 8);

    return v27(0);
  }
}

uint64_t sub_1000C0A50()
{
  v2 = *(*v1 + 936);
  v5 = *v1;
  *(*v1 + 944) = v0;

  if (v0)
  {
    v3 = sub_1000C1188;
  }

  else
  {
    v3 = sub_1000C0B64;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1000C0B64()
{
  v29 = v0;
  v1 = *(v0 + 928);
  v2 = *(v0 + 824);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 824);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v28 = v7;
    *v6 = 136315138;
    v8 = (v5 + OBJC_IVAR____TtC8rapportd15RPPairingClient_selfPairingIdentity);
    v10 = *(v5 + OBJC_IVAR____TtC8rapportd15RPPairingClient_selfPairingIdentity);
    v9 = *(v5 + OBJC_IVAR____TtC8rapportd15RPPairingClient_selfPairingIdentity + 16);
    v11 = *(v5 + OBJC_IVAR____TtC8rapportd15RPPairingClient_selfPairingIdentity + 48);
    *(v0 + 496) = *(v5 + OBJC_IVAR____TtC8rapportd15RPPairingClient_selfPairingIdentity + 32);
    *(v0 + 512) = v11;
    *(v0 + 464) = v10;
    *(v0 + 480) = v9;
    v12 = *v8;
    v13 = v8[1];
    v14 = v8[3];
    *(v0 + 560) = v8[2];
    *(v0 + 576) = v14;
    *(v0 + 528) = v12;
    *(v0 + 544) = v13;
    sub_1000C5984(v0 + 464, v0 + 592);
    v15 = sub_1000DC030(v0 + 528, &type metadata for RPPairingIdentity);
    v17 = v16;
    v18 = *(v0 + 544);
    *(v0 + 400) = *(v0 + 528);
    *(v0 + 416) = v18;
    v19 = *(v0 + 576);
    *(v0 + 432) = *(v0 + 560);
    *(v0 + 448) = v19;
    sub_1000C5A40(v0 + 400);
    v20 = sub_1000C3440(v15, v17, &v28);

    *(v6 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v3, v4, "Sending self identity: %s", v6, 0xCu);
    sub_1000C5604(v7);
  }

  v21 = *(v0 + 904);
  v22 = (*(v0 + 824) + OBJC_IVAR____TtC8rapportd15RPPairingClient_selfPairingIdentity);
  v23 = v22[3];
  v25 = *v22;
  v24 = v22[1];
  *(v0 + 48) = v22[2];
  *(v0 + 64) = v23;
  *(v0 + 16) = v25;
  *(v0 + 32) = v24;
  v26 = swift_task_alloc();
  *(v0 + 952) = v26;
  *v26 = v0;
  v26[1] = sub_1000C0D74;

  return sub_1000CA0C8(v0 + 16);
}

uint64_t sub_1000C0D74()
{
  v2 = *(*v1 + 952);
  v5 = *v1;
  *(*v1 + 960) = v0;

  if (v0)
  {
    v3 = sub_1000C13A4;
  }

  else
  {
    v3 = sub_1000C0E88;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1000C0E88()
{
  v1 = v0[113];
  v2 = v0[112];
  v3 = v0[111];
  v4 = v0[110];
  v5 = v0[109];
  v6 = v0[108];
  v7 = v0[107];
  v8 = v0[103];
  swift_beginAccess();
  sub_1000C3B18(v5, v4);
  swift_endAccess();

  sub_1000C5928(v7, v6);
  sub_1000C59E0((v0 + 18), &qword_1001D5010, &qword_10014B2B0);

  v9 = v0[106];

  v10 = v0[1];

  return v10(1);
}

uint64_t sub_1000C0F84()
{
  v1 = v0[115];
  if (qword_1001D65A0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000BB0C(v2, qword_1001D65A8);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[113];
  v7 = v0[112];
  v8 = v0[108];
  v9 = v0[107];
  if (v5)
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    swift_errorRetain();
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 4) = v12;
    *v11 = v12;
    _os_log_impl(&_mh_execute_header, v3, v4, "Unable to execute pairAndReceiveIdentity: %@", v10, 0xCu);
    sub_1000C59E0(v11, &qword_1001D55A0, &unk_100149890);

    sub_1000C5928(v9, v8);
  }

  else
  {
    v13 = v0[113];

    sub_1000C5928(v9, v8);
  }

  v14 = v0[106];

  v15 = v0[1];

  return v15(0);
}

uint64_t sub_1000C1188()
{
  sub_1000C59E0((v0 + 18), &qword_1001D5010, &qword_10014B2B0);
  v1 = v0[118];
  if (qword_1001D65A0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000BB0C(v2, qword_1001D65A8);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[113];
  v7 = v0[112];
  v8 = v0[108];
  v9 = v0[107];
  if (v5)
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    swift_errorRetain();
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 4) = v12;
    *v11 = v12;
    _os_log_impl(&_mh_execute_header, v3, v4, "Unable to execute pairAndReceiveIdentity: %@", v10, 0xCu);
    sub_1000C59E0(v11, &qword_1001D55A0, &unk_100149890);

    sub_1000C5928(v9, v8);
  }

  else
  {
    v13 = v0[113];

    sub_1000C5928(v9, v8);
  }

  v14 = v0[106];

  v15 = v0[1];

  return v15(0);
}

uint64_t sub_1000C13A4()
{
  v1 = v0[120];
  v2 = v0[116];
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[120];
  v7 = v0[113];
  v8 = v0[112];
  v9 = v0[108];
  v10 = v0[107];
  if (v5)
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138412290;
    swift_errorRetain();
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 4) = v13;
    *v12 = v13;
    _os_log_impl(&_mh_execute_header, v3, v4, "Unable to execute shareIdentity: %@", v11, 0xCu);
    sub_1000C59E0(v12, &qword_1001D55A0, &unk_100149890);

    sub_1000C5928(v10, v9);
    sub_1000C59E0((v0 + 18), &qword_1001D5010, &qword_10014B2B0);
  }

  else
  {
    v14 = v0[113];

    sub_1000C5928(v10, v9);
    sub_1000C59E0((v0 + 18), &qword_1001D5010, &qword_10014B2B0);
  }

  v15 = v0[106];

  v16 = v0[1];

  return v16(0);
}

void sub_1000C15CC()
{
  v1 = v0;
  v2 = type metadata accessor for NWBrowser.Descriptor();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = (&v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_1001D65A0 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_10000BB0C(v7, qword_1001D65A8);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, v9, "Restarting pairing bonjour browsing", v10, 2u);
  }

  v11 = RPPairingBonjourServiceName.unsafeMutableAddressor();
  object = v11->_object;
  *v6 = v11->_countAndFlagsBits;
  v6[1] = object;
  v6[2] = 0;
  v6[3] = 0;
  (*(v3 + 104))(v6, enum case for NWBrowser.Descriptor.bonjourWithTXTRecord(_:), v2);
  type metadata accessor for NWParameters();

  sub_100108AD8();
  v13 = type metadata accessor for NWBrowser();
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  v16 = NWBrowser.init(for:using:)();
  v17 = *(v1 + OBJC_IVAR____TtC8rapportd15RPPairingClient_pairingBrowser);
  *(v1 + OBJC_IVAR____TtC8rapportd15RPPairingClient_pairingBrowser) = v16;

  sub_1000BE134();
}

void sub_1000C17D0()
{
  if (qword_1001D65A0 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_10000BB0C(v0, qword_1001D65A8);
  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v1, "Actor no longer valid", v2, 2u);
  }
}

uint64_t sub_1000C18B8(uint64_t a1, char *a2)
{
  v47 = a1;
  v3 = sub_1000C4810(&qword_1001D4F68, &qword_100149690);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v46 = &v43 - v5;
  v6 = type metadata accessor for NWBrowser.State();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v11 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v43 - v12;
  v14 = type metadata accessor for DispatchPredicate();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = (&v43 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = *&a2[OBJC_IVAR____TtC8rapportd15RPPairingClient_queue];
  *v18 = v19;
  (*(v15 + 104))(v18, enum case for DispatchPredicate.onQueue(_:), v14);
  v20 = v19;
  v21 = _dispatchPreconditionTest(_:)();
  (*(v15 + 8))(v18, v14);
  if (v21)
  {
    if (qword_1001D65A0 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v22 = type metadata accessor for Logger();
  sub_10000BB0C(v22, qword_1001D65A8);
  v23 = *(v7 + 16);
  v23(v13, v47, v6);
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v45 = v7;
    v28 = v27;
    v48 = v27;
    *v26 = 136315138;
    v29 = sub_1000DC030(v13, v6);
    v43 = v23;
    v44 = v11;
    v30 = v29;
    v31 = a2;
    v33 = v32;
    v34 = v13;
    v35 = *(v45 + 8);
    v35(v34, v6);
    v36 = sub_1000C3440(v30, v33, &v48);
    a2 = v31;
    v23 = v43;

    *(v26 + 4) = v36;
    v11 = v44;
    _os_log_impl(&_mh_execute_header, v24, v25, "Pairing browser state changed to %s", v26, 0xCu);
    sub_1000C5604(v28);
    v7 = v45;
  }

  else
  {

    v37 = v13;
    v35 = *(v7 + 8);
    v35(v37, v6);
  }

  v23(v11, v47, v6);
  result = (*(v7 + 88))(v11, v6);
  if (result == enum case for NWBrowser.State.failed(_:))
  {
    v39 = type metadata accessor for TaskPriority();
    v40 = v46;
    (*(*(v39 - 8) + 56))(v46, 1, 1, v39);
    v41 = swift_allocObject();
    v41[2] = 0;
    v41[3] = 0;
    v41[4] = a2;
    v42 = a2;
    sub_1000C1E34(0, 0, v40, &unk_1001498C0, v41);

    return (v35)(v11, v6);
  }

  if (result == enum case for NWBrowser.State.waiting(_:) || result != enum case for NWBrowser.State.setup(_:) && result != enum case for NWBrowser.State.ready(_:) && result != enum case for NWBrowser.State.cancelled(_:))
  {
    return (v35)(v11, v6);
  }

  return result;
}

uint64_t sub_1000C1DD4()
{
  v1 = *(v0 + 16);
  sub_1000C15CC();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1000C1E34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1000C4810(&qword_1001D4F68, &qword_100149690);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v27 - v11;
  sub_1000C5808(a3, v27 - v11, &qword_1001D4F68, &qword_100149690);
  v13 = type metadata accessor for TaskPriority();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_1000C59E0(v12, &qword_1001D4F68, &qword_100149690);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = dispatch thunk of Actor.unownedExecutor.getter();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = String.utf8CString.getter() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      sub_1000C59E0(a3, &qword_1001D4F68, &qword_100149690);

      return v25;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1000C59E0(a3, &qword_1001D4F68, &qword_100149690);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

void sub_1000C2134(uint64_t a1)
{
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = (&v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9 = *(Strong + OBJC_IVAR____TtC8rapportd15RPPairingClient_queue);
    *v6 = v9;
    (*(v3 + 104))(v6, enum case for DispatchPredicate.onQueue(_:), v2);
    v10 = v9;
    LOBYTE(v9) = _dispatchPreconditionTest(_:)();
    (*(v3 + 8))(v6, v2);
    if (v9)
    {
      sub_1000C4AF8(a1);
    }

    else
    {
      __break(1u);
    }
  }
}

id sub_1000C23CC(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v54 = type metadata accessor for NWEndpoint();
  v53 = *(v54 - 8);
  v4 = *(v53 + 64);
  v5 = (__chkstk_darwin)();
  v51 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v52 = &v48 - v7;
  v8 = type metadata accessor for NWBrowser.Result.Metadata();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for NWTXTRecord();
  v55 = *(v13 - 8);
  v14 = *(v55 + 64);
  v15 = __chkstk_darwin(v13);
  v17 = &v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v48 - v18;
  v20 = OBJC_IVAR____TtC8rapportd17RPPairingEndpoint__identity;
  sub_1000C4810(&qword_1001D4F78, &qword_1001496C0);
  *&v59 = 0;
  v21 = sub_1000DE8D8(&v59);
  v56 = v20;
  *(v1 + v20) = v21;
  v22 = OBJC_IVAR____TtC8rapportd17RPPairingEndpoint__pakeConfiguration;
  sub_1000C4810(&qword_1001D4F80, &unk_1001496C8);
  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  v61 = 0u;
  v60 = 0u;
  v59 = 0u;
  *(v1 + v22) = sub_1000DE8D8(&v59);
  NWBrowser.Result.metadata.getter();
  if ((*(v9 + 88))(v12, v8) == enum case for NWBrowser.Result.Metadata.bonjour(_:))
  {
    v50 = v22;
    v23 = a1;
    (*(v9 + 96))(v12, v8);
    v24 = v55;
    (*(v55 + 32))(v19, v12, v13);
    (*(v24 + 16))(v17, v19, v13);
    sub_1000CC454(v17, &v59);
    v25 = *(&v63 + 1);
    if (*(&v63 + 1))
    {
      v49 = v13;
      v69 = v61;
      v70 = v62;
      v71 = v63;
      v67 = v59;
      v68 = v60;
      v66 = v64;
      v26 = v52;
      NWBrowser.Result.endpoint.getter();
      v27 = NWEndpoint.nw.getter();
      v28 = v53;
      v29 = v54;
      (*(v53 + 8))(v26, v54);
      if (v27)
      {
        nw_endpoint_get_bonjour_service_name(v27);
        v30 = String.init(cString:)();
        v31 = (v2 + OBJC_IVAR____TtC8rapportd17RPPairingEndpoint_identifier);
        *v31 = v30;
        v31[1] = v32;
        v33 = v51;
        NWBrowser.Result.endpoint.getter();
        swift_unknownObjectRelease();
        (*(v24 + 8))(v19, v49);
        (*(v28 + 32))(v2 + OBJC_IVAR____TtC8rapportd17RPPairingEndpoint_nwEndpoint, v33, v29);
        v34 = v2 + OBJC_IVAR____TtC8rapportd17RPPairingEndpoint_txtRecord;
        v35 = v70;
        *(v34 + 2) = v69;
        *(v34 + 3) = v35;
        v36 = v71;
        v37 = v68;
        *v34 = v67;
        *(v34 + 1) = v37;
        *(v34 + 8) = v36;
        *(v34 + 9) = v25;
        *(v34 + 5) = v66;
        v58.receiver = v2;
        v58.super_class = ObjectType;
        v38 = objc_msgSendSuper2(&v58, "init");
        v39 = type metadata accessor for NWBrowser.Result();
        (*(*(v39 - 8) + 8))(v23, v39);
        return v38;
      }

      sub_1000C59E0(&v59, &qword_1001D4F88, &qword_1001496D8);
      v43 = type metadata accessor for NWBrowser.Result();
      (*(*(v43 - 8) + 8))(v23, v43);
      (*(v24 + 8))(v19, v49);
    }

    else
    {
      v42 = type metadata accessor for NWBrowser.Result();
      (*(*(v42 - 8) + 8))(v23, v42);
      (*(v24 + 8))(v19, v13);
    }

    v22 = v50;
  }

  else
  {
    v41 = type metadata accessor for NWBrowser.Result();
    (*(*(v41 - 8) + 8))(a1, v41);
    (*(v9 + 8))(v12, v8);
  }

  v44 = *(v2 + v56);

  v45 = *(v2 + v22);

  v46 = *((swift_isaMask & *v2) + 0x30);
  v47 = *((swift_isaMask & *v2) + 0x34);
  swift_deallocPartialClassInstance();
  return 0;
}

uint64_t sub_1000C2AA8()
{
  *&v12[0] = 0;
  *(&v12[0] + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(18);
  v13 = v12[0];
  swift_getObjectType();
  v1._countAndFlagsBits = _typeName(_:qualified:)();
  String.append(_:)(v1);

  v2._countAndFlagsBits = 8250;
  v2._object = 0xE200000000000000;
  String.append(_:)(v2);
  String.append(_:)(*(v0 + OBJC_IVAR____TtC8rapportd17RPPairingEndpoint_identifier));
  v3._countAndFlagsBits = 8236;
  v3._object = 0xE200000000000000;
  String.append(_:)(v3);
  type metadata accessor for NWEndpoint();
  _print_unlocked<A, B>(_:_:)();
  v4._countAndFlagsBits = 8236;
  v4._object = 0xE200000000000000;
  String.append(_:)(v4);
  v5 = *(v0 + OBJC_IVAR____TtC8rapportd17RPPairingEndpoint_txtRecord + 48);
  v12[2] = *(v0 + OBJC_IVAR____TtC8rapportd17RPPairingEndpoint_txtRecord + 32);
  v12[3] = v5;
  v6 = *(v0 + OBJC_IVAR____TtC8rapportd17RPPairingEndpoint_txtRecord + 80);
  v12[4] = *(v0 + OBJC_IVAR____TtC8rapportd17RPPairingEndpoint_txtRecord + 64);
  v12[5] = v6;
  v7 = *(v0 + OBJC_IVAR____TtC8rapportd17RPPairingEndpoint_txtRecord + 16);
  v12[0] = *(v0 + OBJC_IVAR____TtC8rapportd17RPPairingEndpoint_txtRecord);
  v12[1] = v7;
  _print_unlocked<A, B>(_:_:)();
  v8._countAndFlagsBits = 8236;
  v8._object = 0xE200000000000000;
  String.append(_:)(v8);
  v9 = *(v0 + OBJC_IVAR____TtC8rapportd17RPPairingEndpoint__identity);
  sub_1000DE818(v12);
  v10 = *&v12[0];
  sub_1000C5AF8(0, &qword_1001D4F90, RPIdentity_ptr);
  sub_1000C526C();
  DefaultStringInterpolation.appendInterpolation<A>(_:)();

  return v13;
}

id RPSwiftMemoryTest_objCClass.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1000C2D98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = type metadata accessor for ContinuousClock.Instant();
  *(v6 + 64) = v12;
  v13 = *(v12 - 8);
  *(v6 + 72) = v13;
  v14 = *(v13 + 64) + 15;
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return _swift_task_switch(sub_1000C2E98, 0, 0);
}

uint64_t sub_1000C2E98()
{
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[8];
  v4 = v0[9];
  v5 = v0[7];
  v6 = type metadata accessor for ContinuousClock();
  v7 = sub_1000C593C(&qword_1001D5020, &type metadata accessor for ContinuousClock);
  dispatch thunk of Clock.now.getter();
  sub_1000C593C(&qword_1001D5028, &type metadata accessor for ContinuousClock.Instant);
  dispatch thunk of InstantProtocol.advanced(by:)();
  v8 = *(v4 + 8);
  v0[12] = v8;
  v0[13] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v1, v3);
  v9 = async function pointer to dispatch thunk of Clock.sleep(until:tolerance:)[1];
  v10 = swift_task_alloc();
  v0[14] = v10;
  *v10 = v0;
  v10[1] = sub_1000C3028;
  v11 = v0[11];
  v12 = v0[7];

  return dispatch thunk of Clock.sleep(until:tolerance:)(v11, v0 + 2, v6, v7);
}

uint64_t sub_1000C3028()
{
  v2 = *(*v1 + 112);
  v3 = *(*v1 + 104);
  v4 = *(*v1 + 96);
  v5 = *(*v1 + 88);
  v6 = *(*v1 + 64);
  v7 = *v1;
  v7[15] = v0;

  v4(v5, v6);
  if (v0)
  {

    return _swift_task_switch(sub_1000C31E4, 0, 0);
  }

  else
  {
    v9 = v7[10];
    v8 = v7[11];

    v10 = v7[1];

    return v10();
  }
}

uint64_t sub_1000C31E4()
{
  v2 = v0[10];
  v1 = v0[11];

  v3 = v0[1];
  v4 = v0[15];

  return v3();
}

uint64_t sub_1000C3250(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1000C3348;

  return v7(a1);
}

uint64_t sub_1000C3348()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1000C3440(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1000C350C(v11, 0, 0, 1, a1, a2);
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
    sub_1000C5650(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_1000C5604(v11);
  return v7;
}

unint64_t sub_1000C350C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_1000C3618(a5, a6);
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

char *sub_1000C3618(uint64_t a1, unint64_t a2)
{
  v4 = sub_1000C3664(a1, a2);
  sub_1000C3794(&off_1001AF3B0);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_1000C3664(uint64_t a1, unint64_t a2)
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

  v6 = sub_1000C3880(v5, 0);
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
        v7 = sub_1000C3880(v10, 0);
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

uint64_t sub_1000C3794(uint64_t result)
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

  result = sub_1000C38F4(result, v12, 1, v3);
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

void *sub_1000C3880(uint64_t a1, uint64_t a2)
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

  sub_1000C4810(&qword_1001D4FF8, &qword_100149D60);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_1000C38F4(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000C4810(&qword_1001D4FF8, &qword_100149D60);
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

unint64_t sub_1000C39E8(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v6 = Hasher._finalize()();

  return sub_1000C3A60(a1, a2, v6);
}

unint64_t sub_1000C3A60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_1000C3B18(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = *v2;
  v5 = sub_1000C39E8(a1, a2);
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  v7 = v5;
  v8 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *v3;
  v14 = *v3;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_1000C4014();
    v10 = v14;
  }

  v11 = *(*(v10 + 48) + 16 * v7 + 8);

  v12 = *(*(v10 + 56) + 8 * v7);
  sub_1000C3E64(v7, v10);
  *v3 = v10;
  return v12;
}

uint64_t sub_1000C3BC4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_1000C4810(&qword_1001D5018, &qword_1001498A0);
  v38 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v37 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v38 & 1) == 0)
      {
        v26 = v22[1];
      }

      v27 = *(v8 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v37;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v10, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_1000C3E64(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      Hasher.init(_seed:)();

      String.hash(into:)();
      v13 = Hasher._finalize()();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        if (v14 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v14 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v14)
      {
LABEL_10:
        v15 = *(a2 + 48);
        v16 = (v15 + 16 * v3);
        v17 = (v15 + 16 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
        }

        v18 = *(a2 + 56);
        v19 = (v18 + 8 * v3);
        v20 = (v18 + 8 * v6);
        if (v3 != v6 || v19 >= v20 + 1)
        {
          *v19 = *v20;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}

void *sub_1000C4014()
{
  v1 = v0;
  sub_1000C4810(&qword_1001D5018, &qword_1001498A0);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = *(*(v2 + 56) + 8 * v17);
        v22 = (*(v4 + 48) + 16 * v17);
        *v22 = v20;
        v22[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v21;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

unint64_t sub_1000C417C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_1000C39E8(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_15;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_1000C3BC4(v16, a4 & 1);
      v20 = *v5;
      result = sub_1000C39E8(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_16:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = result;
      sub_1000C4014();
      result = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    *(v22[7] + 8 * result) = a1;
    return result;
  }

  v22[(result >> 6) + 8] |= 1 << result;
  v23 = (v22[6] + 16 * result);
  *v23 = a2;
  v23[1] = a3;
  *(v22[7] + 8 * result) = a1;
  v24 = v22[2];
  v15 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v15)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v22[2] = v25;
}

uint64_t sub_1000C42E0(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_1000C43D4;

  return v6(v2 + 32);
}

uint64_t sub_1000C43D4()
{
  v1 = *v0;
  v2 = *(*v0 + 24);
  v3 = *(*v0 + 16);
  v6 = *v0;

  *v3 = *(v1 + 32);
  v4 = *(v6 + 8);

  return v4();
}

unint64_t sub_1000C44E8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000C4810(&qword_1001D5018, &qword_1001498A0);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_1000C39E8(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_1000C45E4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000C4810(&qword_1001D5048, &qword_1001498E8);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_1000C39E8(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_1000C46E8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000C4810(&qword_1001D5040, &qword_1001498E0);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 2)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v15 = *i;

      v7 = v15;
      v8 = *(&v15 + 1);
      result = sub_1000C39E8(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 16 * result) = v15;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_1000C4810(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_1000C4858()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1000C48EC;

  return sub_1000BDE8C(v3, v4, v5, v2);
}

uint64_t sub_1000C48EC()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1000C49E0(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_1000C5EF0;

  return sub_1000BEA30(a1, a2, v6, v7, v8);
}

uint64_t sub_1000C4AA4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_1000C4AF8(uint64_t a1)
{
  v2 = v1;
  v78 = type metadata accessor for UUID();
  v4 = *(v78 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v78);
  v7 = &v70 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = type metadata accessor for NWBrowser.Result();
  v8 = *(v77 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v77);
  v76 = &v70 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchPredicate();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = (&v70 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = *(v2 + OBJC_IVAR____TtC8rapportd15RPPairingClient_queue);
  *v15 = v16;
  (*(v12 + 104))(v15, enum case for DispatchPredicate.onQueue(_:), v11);
  v17 = v16;
  LOBYTE(v16) = _dispatchPreconditionTest(_:)();
  (*(v12 + 8))(v15, v11);
  if ((v16 & 1) == 0)
  {
LABEL_45:
    __break(1u);
LABEL_46:
    swift_once();
    goto LABEL_27;
  }

  v71 = v4;
  v81 = &_swiftEmptyArrayStorage;
  v18 = a1 + 56;
  v19 = 1 << *(a1 + 32);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & *(a1 + 56);
  v72 = v2;
  v74 = (v2 + OBJC_IVAR____TtC8rapportd15RPPairingClient_serviceName);
  v22 = (v19 + 63) >> 6;
  v75 = v8 + 16;

  v23 = 0;
  v73 = &_swiftEmptyArrayStorage;
  v24 = a1;
  while (v21)
  {
LABEL_10:
    v26 = __clz(__rbit64(v21));
    v21 &= v21 - 1;
    v27 = v76;
    (*(v8 + 16))(v76, *(v24 + 48) + *(v8 + 72) * (v26 | (v23 << 6)), v77);
    v28 = objc_allocWithZone(type metadata accessor for RPPairingEndpoint());
    v29 = sub_1000C23CC(v27);
    if (v29)
    {
      v30 = v29;
      v31 = v24;
      v32 = *&v29[OBJC_IVAR____TtC8rapportd17RPPairingEndpoint_txtRecord + 80];
      v33 = *&v29[OBJC_IVAR____TtC8rapportd17RPPairingEndpoint_txtRecord + 88];
      v34 = v32 == *v74 && v33 == v74[1];
      if (v34 || (v35 = *&v29[OBJC_IVAR____TtC8rapportd17RPPairingEndpoint_txtRecord + 80], (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
      {
LABEL_23:
        v39 = v30;
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v81 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v81 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v40 = *((v81 & 0xFFFFFFFFFFFFFF8) + 0x10);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

        v73 = v81;
        v24 = v31;
      }

      else
      {

        v36 = RPPairingReceiverAppServiceName.unsafeMutableAddressor();
        if (v32 == v36->_countAndFlagsBits && v33 == v36->_object)
        {

          goto LABEL_23;
        }

        v38 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v38)
        {
          goto LABEL_23;
        }

        v24 = v31;
      }
    }
  }

  while (1)
  {
    v25 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      __break(1u);
      goto LABEL_45;
    }

    if (v25 >= v22)
    {
      break;
    }

    v21 = *(v18 + 8 * v25);
    ++v23;
    if (v21)
    {
      v23 = v25;
      goto LABEL_10;
    }
  }

  if (qword_1001D65A0 != -1)
  {
    goto LABEL_46;
  }

LABEL_27:
  v41 = type metadata accessor for Logger();
  sub_10000BB0C(v41, qword_1001D65A8);
  v42 = v73;

  v43 = Logger.logObject.getter();
  v44 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v79 = v46;
    *v45 = 136315138;
    if (v42 >> 62)
    {
      v47 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v47 = *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v80 = v47;
    v48 = sub_1000DC030(&v80, &type metadata for Int);
    v50 = sub_1000C3440(v48, v49, &v79);

    *(v45 + 4) = v50;

    _os_log_impl(&_mh_execute_header, v43, v44, "Pairing browser endpoints changed: %s", v45, 0xCu);
    sub_1000C5604(v46);
  }

  else
  {
  }

  v51 = OBJC_IVAR____TtC8rapportd15RPPairingClient_currentPairingEndpoints;
  v52 = v72;
  v53 = *(v72 + OBJC_IVAR____TtC8rapportd15RPPairingClient_currentPairingEndpoints);
  *(v72 + OBJC_IVAR____TtC8rapportd15RPPairingClient_currentPairingEndpoints) = v42;

  if (!*(v52 + OBJC_IVAR____TtC8rapportd15RPPairingClient_browseMode))
  {
    v80 = &_swiftEmptyArrayStorage;
    v55 = *(v52 + v51);
    if (v55 >> 62)
    {
      if (v55 < 0)
      {
        v66 = *(v52 + v51);
      }

      result = _CocoaArrayWrapper.endIndex.getter();
      v56 = result;
      if (!result)
      {
        goto LABEL_51;
      }

LABEL_35:
      if (v56 >= 1)
      {
        v57 = (v71 + 8);

        v58 = 0;
        do
        {
          if ((v55 & 0xC000000000000001) != 0)
          {
            v59 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            v59 = *(v55 + 8 * v58 + 32);
          }

          v60 = v59;
          v61 = [objc_allocWithZone(RPEndpoint) init];
          NWEndpoint.endpointUUID()();
          UUID.uuidString.getter();
          (*v57)(v7, v78);
          v62 = String._bridgeToObjectiveC()();

          [v61 setIdentifier:v62];

          v63 = v61;
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((v80 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v80 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v64 = *((v80 & 0xFFFFFFFFFFFFFF8) + 0x10);
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          ++v58;
          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        }

        while (v56 != v58);
        v65 = v80;

        v52 = v72;
        goto LABEL_52;
      }

      __break(1u);
    }

    else
    {
      v56 = *((v55 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v56)
      {
        goto LABEL_35;
      }

LABEL_51:
      v65 = &_swiftEmptyArrayStorage;
LABEL_52:
      v67 = v52 + OBJC_IVAR____TtC8rapportd15RPPairingClient_endpointsChangedHandler;
      swift_beginAccess();
      v68 = *v67;
      if (*v67)
      {
        v69 = *(v67 + 8);

        v68(v65);
        sub_1000134D4(v68);
      }
    }
  }

  return result;
}

unint64_t sub_1000C526C()
{
  result = qword_1001D4F98;
  if (!qword_1001D4F98)
  {
    sub_1000C5AF8(255, &qword_1001D4F90, RPIdentity_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D4F98);
  }

  return result;
}

unint64_t sub_1000C52D8()
{
  result = qword_1001D4FA0;
  if (!qword_1001D4FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D4FA0);
  }

  return result;
}

uint64_t type metadata accessor for RPPairingEndpoint()
{
  result = qword_1001D67D0;
  if (!qword_1001D67D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000C53B4()
{
  result = type metadata accessor for NWEndpoint();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PairingResult(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_20;
  }

  v2 = a2 + 2;
  if (a2 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 <= 1)
  {
    if (!v4)
    {
      goto LABEL_20;
    }

    v5 = a1[1];
    if (!a1[1])
    {
      goto LABEL_20;
    }

    return (*a1 | (v5 << 8)) - 2;
  }

  if (v4 == 2)
  {
    v5 = *(a1 + 1);
    if (*(a1 + 1))
    {
      return (*a1 | (v5 << 8)) - 2;
    }
  }

  else
  {
    v5 = *(a1 + 1);
    if (v5)
    {
      return (*a1 | (v5 << 8)) - 2;
    }
  }

LABEL_20:
  v7 = *a1;
  v8 = v7 >= 2;
  v9 = v7 - 2;
  if (!v8)
  {
    v9 = -1;
  }

  if (v9 + 1 >= 2)
  {
    return v9;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for PairingResult(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 2;
  if (a3 + 2 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xFE)
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_1000C55CC(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 2)
  {
    return v1 - 1;
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_1000C55E4(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 1;
  }

  return result;
}

uint64_t sub_1000C5604(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_1000C5650(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1000C56B0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1000C5EF0;

  return sub_1000BF3AC(a1);
}

uint64_t sub_1000C5748(uint64_t a1)
{
  v4 = v1[4];
  v5 = v1[5];
  v7 = v1[6];
  v6 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1000C48EC;

  return sub_1000BF94C(a1, v8, v9, v4, v5, v7, v6);
}

uint64_t sub_1000C5808(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_1000C4810(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1000C5870(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1000C5EF0;

  return sub_1000C42E0(a1, v5);
}

uint64_t sub_1000C5928(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1000C4AA4(a1, a2);
  }

  return a1;
}

uint64_t sub_1000C593C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000C59E0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_1000C4810(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t *sub_1000C5A94(uint64_t a1, uint64_t *a2)
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

uint64_t sub_1000C5AF8(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

unint64_t sub_1000C5B50()
{
  result = qword_1001D5038;
  if (!qword_1001D5038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D5038);
  }

  return result;
}

uint64_t sub_1000C5BA4()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000C5BE4()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1000C5EF0;

  return sub_1000C1DB4(v3, v4, v5, v2);
}

uint64_t sub_1000C5C78(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1000C5EF0;

  return sub_1000C3250(a1, v5);
}

uint64_t getEnumTagSinglePayload for PairingError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PairingError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1000C5E98()
{
  result = qword_1001D6860[0];
  if (!qword_1001D6860[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1001D6860);
  }

  return result;
}

uint64_t sub_1000C5EF8(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  (*(*(*(*v5 + 80) - 8) + 32))(v5 + *(*v5 + 96), a1);
  return v5;
}

Swift::Bool __swiftcall DiscoverableApplicationServiceExtensionConfiguration.accept(connection:)(NSXPCConnection connection)
{
  [(objc_class *)connection.super.isa setExportedObject:v1];
  v3 = [objc_opt_self() interfaceWithProtocol:&OBJC_PROTOCOL____TtP7Network33DiscoverableApplicationServiceXPC_];
  [(objc_class *)connection.super.isa setExportedInterface:v3];

  [(objc_class *)connection.super.isa resume];
  return 1;
}

uint64_t DiscoverableApplicationServiceExtensionConfiguration.fetchConfigurationData(reply:)(void (*a1)(uint64_t, unint64_t, void))
{
  v3 = *(*v1 + 96);
  v4 = *v1;
  v12 = *(*v1 + 80);
  v5 = v12;
  v13 = *(*(v4 + 88) + 16);
  v6 = sub_1000C6170(v11);
  (*(*(v5 - 8) + 16))(v6, v1 + v3, v5);
  v7 = static DiscoverableApplicationServiceCoder.createXPCData(discoverableService:)();
  v9 = v8;
  sub_1000C5604(v11);
  sub_1000C61D4(v7, v9);
  a1(v7, v9, 0);
  sub_1000C4AA4(v7, v9);
  return sub_1000C4AA4(v7, v9);
}

uint64_t *sub_1000C6170(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_1000C61D4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_1000C6228(int a1, int a2, void *aBlock)
{
  v3 = _Block_copy(aBlock);
  *(swift_allocObject() + 16) = v3;

  DiscoverableApplicationServiceExtensionConfiguration.fetchConfigurationData(reply:)(sub_1000C6620);
}

void sub_1000C62B8(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 >> 60 == 15)
  {
    isa = 0;
    if (a3)
    {
LABEL_3:
      v7 = _convertErrorToNSError(_:)();
      goto LABEL_6;
    }
  }

  else
  {
    isa = Data._bridgeToObjectiveC()().super.isa;
    if (a3)
    {
      goto LABEL_3;
    }
  }

  v7 = 0;
LABEL_6:
  v8 = v7;
  (*(a4 + 16))(a4, isa);
}

uint64_t DiscoverableApplicationServiceExtensionConfiguration.__deallocating_deinit()
{
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 96));
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t sub_1000C646C(NSXPCConnection a1)
{
  v2 = *v1;
  DiscoverableApplicationServiceExtensionConfiguration.accept(connection:)(a1);
  return 1;
}

uint64_t DiscoverableApplicationServiceExtension.configuration.getter(uint64_t a1)
{
  v3 = *(a1 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(a1);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for DiscoverableApplicationServiceExtensionConfiguration();
  (*(v3 + 16))(v6, v1, a1);
  return sub_1000C5EF8(v6);
}

uint64_t sub_1000C658C(uint64_t a1)
{
  v1 = *(a1 + 80);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1000C6658()
{
  v0 = type metadata accessor for Logger();
  sub_1000C5A94(v0, qword_1001D6A78);
  v1 = sub_10000BB0C(v0, qword_1001D6A78);
  v2 = sub_10010ACCC();
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1000C66E4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1000C61D4(a1, a2);
  }

  return a1;
}

unint64_t sub_1000C6968()
{
  result = qword_1001D54F0;
  if (!qword_1001D54F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1001D54F0);
  }

  return result;
}

unint64_t sub_1000C69B4()
{
  result = qword_1001D5F50;
  if (!qword_1001D5F50)
  {
    type metadata accessor for OS_dispatch_queue.Attributes();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D5F50);
  }

  return result;
}

uint64_t sub_1000C6A0C(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_1000C6A54()
{
  v0 = sub_1000C4810(&qword_1001D5050, &qword_100149A58);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v11 - v3;
  v5 = sub_1000C4810(&qword_1001D5058, &qword_100149A60);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v11 - v8;
  (*(v1 + 104))(v4, enum case for AsyncStream.Continuation.BufferingPolicy.unbounded<A>(_:), v0);
  AsyncStream.init(_:bufferingPolicy:_:)();
  AsyncStream.makeAsyncIterator()();
  return (*(v6 + 8))(v9, v5);
}

void sub_1000C6C0C(uint64_t a1, uint64_t a2)
{
  v39 = a1;
  v4 = sub_1000C4810(&qword_1001D5098, &qword_100149D38);
  v5 = *(v4 - 8);
  v40 = *(v5 + 64);
  __chkstk_darwin(v4);
  v7 = &v32 - v6;
  v8 = [objc_allocWithZone(CBDiscovery) init];
  [v8 setDispatchQueue:*(a2 + 112)];
  [v8 addDiscoveryType:1];
  v33 = v8;
  [v8 setUseCase:131090];
  v9 = swift_allocObject();
  swift_weakInit();
  v41 = *(v5 + 16);
  v41(v7, a1, v4);
  v10 = *(v5 + 80);
  v11 = (v10 + 24) & ~v10;
  v12 = swift_allocObject();
  *(v12 + 16) = v9;
  v34 = *(v5 + 32);
  v34(v12 + v11, v7, v4);
  v46 = sub_1000C81E8;
  v47 = v12;
  aBlock = _NSConcreteStackBlock;
  v43 = 1107296256;
  v44 = sub_10000BAA4;
  v45 = &unk_1001AF940;
  v13 = _Block_copy(&aBlock);

  [v8 setDeviceFoundHandler:v13];
  _Block_release(v13);
  v14 = swift_allocObject();
  v38 = a2;
  swift_weakInit();
  v35 = v5 + 16;
  v41(v7, v39, v4);
  v36 = v10;
  v15 = swift_allocObject();
  *(v15 + 16) = v14;
  v16 = v11;
  v17 = v15 + v11;
  v18 = v7;
  v37 = v5 + 32;
  v19 = v34;
  v34(v17, v7, v4);
  v20 = v19;
  v46 = sub_1000C8220;
  v47 = v15;
  aBlock = _NSConcreteStackBlock;
  v43 = 1107296256;
  v44 = sub_10000BAA4;
  v45 = &unk_1001AF990;
  v21 = _Block_copy(&aBlock);

  v22 = v33;
  [v33 setDeviceLostHandler:v21];
  _Block_release(v21);
  *(swift_allocObject() + 16) = v22;
  v23 = v22;
  v24 = v39;
  AsyncStream.Continuation.onTermination.setter();
  if (qword_1001D6A70 != -1)
  {
    swift_once();
  }

  v25 = type metadata accessor for Logger();
  sub_10000BB0C(v25, qword_1001D6A78);
  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    *v28 = 0;
    _os_log_impl(&_mh_execute_header, v26, v27, "Starting to scan for IdentitySync", v28, 2u);
  }

  v29 = swift_allocObject();
  swift_weakInit();
  v41(v7, v24, v4);
  v30 = swift_allocObject();
  *(v30 + 16) = v29;
  v20(v30 + v16, v18, v4);
  v46 = sub_1000C83AC;
  v47 = v30;
  aBlock = _NSConcreteStackBlock;
  v43 = 1107296256;
  v44 = sub_1000C7408;
  v45 = &unk_1001AFA08;
  v31 = _Block_copy(&aBlock);

  [v23 activateWithCompletion:v31];
  _Block_release(v31);
}

uint64_t sub_1000C7198(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1000C4810(&qword_1001D5098, &qword_100149D38);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v27 - v12;
  v14 = sub_1000C4810(&qword_1001D4F68, &qword_100149690);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = &v27 - v16;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v19 = [a1 identifier];
    if (v19)
    {
      v27 = a4;
      v20 = v19;
      v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v29 = a5;
      v22 = v21;

      v23 = type metadata accessor for TaskPriority();
      (*(*(v23 - 8) + 56))(v17, 1, 1, v23);
      (*(v10 + 16))(v13, a3, v9);
      v24 = (*(v10 + 80) + 48) & ~*(v10 + 80);
      v25 = swift_allocObject();
      *(v25 + 2) = 0;
      *(v25 + 3) = 0;
      *(v25 + 4) = v28;
      *(v25 + 5) = v22;
      (*(v10 + 32))(&v25[v24], v13, v9);
      *&v25[(v11 + v24 + 7) & 0xFFFFFFFFFFFFFFF8] = a1;
      v26 = a1;
      sub_1000C1E34(0, 0, v17, v29, v25);
    }
  }

  return result;
}

void sub_1000C7408(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

uint64_t sub_1000C7474(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[14] = a6;
  v7[15] = a7;
  v7[12] = a4;
  v7[13] = a5;
  v8 = sub_1000C4810(&qword_1001D50A0, &qword_100149D58);
  v7[16] = v8;
  v9 = *(v8 - 8);
  v7[17] = v9;
  v10 = *(v9 + 64) + 15;
  v7[18] = swift_task_alloc();

  return _swift_task_switch(sub_1000C7544, 0, 0);
}

uint64_t sub_1000C7544()
{
  v37 = v0;
  if (qword_1001D6A70 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 104);
  v2 = type metadata accessor for Logger();
  sub_10000BB0C(v2, qword_1001D6A78);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = *(v0 + 96);
    v5 = *(v0 + 104);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v36 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_1000C3440(v6, v5, &v36);
    _os_log_impl(&_mh_execute_header, v3, v4, "Found IdentitySync device: %s", v7, 0xCu);
    sub_1000C5604(v8);
  }

  v9 = *(v0 + 120);
  v10 = sub_1000CEA74();
  v34 = v11;
  v35 = v10;
  v12 = [v9 airdropTempAuthTagData];
  if (v12)
  {
    v13 = v12;
    v14 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v30 = v15;
    v32 = v14;
  }

  else
  {
    v30 = 0xF000000000000000;
    v32 = 0;
  }

  v16 = [*(v0 + 120) btAddressData];
  if (v16)
  {
    v17 = v16;
    v18 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v20 = v19;
  }

  else
  {
    v18 = 0;
    v20 = 0xF000000000000000;
  }

  v21 = *(v0 + 136);
  v22 = *(v0 + 144);
  v23 = *(v0 + 128);
  v24 = *(v0 + 104);
  v25 = *(v0 + 112);
  v26 = *(v0 + 96);
  v27 = [*(v0 + 120) airdropVersion];
  *(v0 + 16) = v26;
  *(v0 + 24) = v24;
  *(v0 + 32) = 1;
  *(v0 + 40) = v35;
  *(v0 + 48) = v34;
  *(v0 + 56) = v33;
  *(v0 + 64) = v31;
  *(v0 + 72) = v18;
  *(v0 + 80) = v20;
  *(v0 + 88) = v27;

  sub_1000C4810(&qword_1001D5098, &qword_100149D38);
  AsyncStream.Continuation.yield(_:)();
  (*(v21 + 8))(v22, v23);

  v28 = *(v0 + 8);

  return v28();
}

uint64_t sub_1000C77F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[14] = a6;
  v7[15] = a7;
  v7[12] = a4;
  v7[13] = a5;
  v8 = sub_1000C4810(&qword_1001D50A0, &qword_100149D58);
  v7[16] = v8;
  v9 = *(v8 - 8);
  v7[17] = v9;
  v10 = *(v9 + 64) + 15;
  v7[18] = swift_task_alloc();

  return _swift_task_switch(sub_1000C78C0, 0, 0);
}

uint64_t sub_1000C78C0()
{
  v37 = v0;
  if (qword_1001D6A70 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 104);
  v2 = type metadata accessor for Logger();
  sub_10000BB0C(v2, qword_1001D6A78);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = *(v0 + 96);
    v5 = *(v0 + 104);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v36 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_1000C3440(v6, v5, &v36);
    _os_log_impl(&_mh_execute_header, v3, v4, "Lost IdentitySync device: %s", v7, 0xCu);
    sub_1000C5604(v8);
  }

  v9 = *(v0 + 120);
  v10 = sub_1000CEA74();
  v34 = v11;
  v35 = v10;
  v12 = [v9 airdropTempAuthTagData];
  if (v12)
  {
    v13 = v12;
    v14 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v30 = v15;
    v32 = v14;
  }

  else
  {
    v30 = 0xF000000000000000;
    v32 = 0;
  }

  v16 = [*(v0 + 120) btAddressData];
  if (v16)
  {
    v17 = v16;
    v18 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v20 = v19;
  }

  else
  {
    v18 = 0;
    v20 = 0xF000000000000000;
  }

  v21 = *(v0 + 136);
  v22 = *(v0 + 144);
  v23 = *(v0 + 128);
  v24 = *(v0 + 104);
  v25 = *(v0 + 112);
  v26 = *(v0 + 96);
  v27 = [*(v0 + 120) airdropVersion];
  *(v0 + 16) = v26;
  *(v0 + 24) = v24;
  *(v0 + 32) = 0;
  *(v0 + 40) = v35;
  *(v0 + 48) = v34;
  *(v0 + 56) = v33;
  *(v0 + 64) = v31;
  *(v0 + 72) = v18;
  *(v0 + 80) = v20;
  *(v0 + 88) = v27;

  sub_1000C4810(&qword_1001D5098, &qword_100149D38);
  AsyncStream.Continuation.yield(_:)();
  (*(v21 + 8))(v22, v23);

  v28 = *(v0 + 8);

  return v28();
}

id sub_1000C7B9C()
{
  ObjectType = swift_getObjectType();
  v12 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v1 = *(v12 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v12);
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for OS_dispatch_queue.Attributes();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  v7 = type metadata accessor for DispatchQoS();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  swift_defaultActor_initialize();
  v9 = sub_1000C6968();
  v11[1] = "SData@NSError>16";
  v11[2] = v9;
  static DispatchQoS.default.getter();
  v15 = &_swiftEmptyArrayStorage;
  sub_1000C69B4();
  sub_1000C4810(&unk_1001D5500, &qword_100149A50);
  sub_1000C7E9C(&qword_1001D5F60, &unk_1001D5500, &qword_100149A50);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v1 + 104))(v4, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v12);
  v0[14] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v14.receiver = v0;
  v14.super_class = ObjectType;
  return objc_msgSendSuper2(&v14, "init");
}

uint64_t sub_1000C7E20()
{
  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_1000C7E9C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1000C6A0C(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000C7EE4()
{
  v1 = sub_1000C4810(&qword_1001D5050, &qword_100149A58);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v13 - v4;
  v6 = sub_1000C4810(&qword_1001D5058, &qword_100149A60);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v13 - v9;
  v11 = *v0;
  (*(v2 + 104))(v5, enum case for AsyncStream.Continuation.BufferingPolicy.unbounded<A>(_:), v1);
  AsyncStream.init(_:bufferingPolicy:_:)();
  AsyncStream.makeAsyncIterator()();

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_1000C80B0(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1000C80CC(uint64_t a1)
{
  v1 = *(a1 + 8) >> 60;
  if (((4 * v1) & 0xC) != 0)
  {
    return 16 - ((4 * v1) & 0xC | (v1 >> 2));
  }

  else
  {
    return 0;
  }
}

__n128 sub_1000C80F4(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 57) = *(a2 + 57);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1000C8118(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 73))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1000C8160(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 72) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 73) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 73) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1000C8208(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000C82DC()
{
  v1 = sub_1000C4810(&qword_1001D5098, &qword_100149D38);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_1000C83AC(uint64_t a1)
{
  v2 = v1;
  v4 = *(*(sub_1000C4810(&qword_1001D5098, &qword_100149D38) - 8) + 80);
  v5 = *(v2 + 16);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (a1)
    {
      if (qword_1001D6A70 != -1)
      {
        swift_once();
      }

      v7 = type metadata accessor for Logger();
      sub_10000BB0C(v7, qword_1001D6A78);
      swift_errorRetain();
      v8 = Logger.logObject.getter();
      v9 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        v11 = swift_slowAlloc();
        *v10 = 138412290;
        v12 = _swift_stdlib_bridgeErrorToNSError();
        *(v10 + 4) = v12;
        *v11 = v12;
        _os_log_impl(&_mh_execute_header, v8, v9, "Failed scanning start for IdentitySync - %@", v10, 0xCu);
        sub_1000C59E0(v11, &qword_1001D55A0, &unk_100149890);
      }

      else
      {
      }

      sub_1000C4810(&qword_1001D5098, &qword_100149D38);
      AsyncStream.Continuation.finish()();
    }

    else
    {
      if (qword_1001D6A70 != -1)
      {
        swift_once();
      }

      v13 = type metadata accessor for Logger();
      sub_10000BB0C(v13, qword_1001D6A78);
      v14 = Logger.logObject.getter();
      v15 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        *v16 = 0;
        _os_log_impl(&_mh_execute_header, v14, v15, "Scan start success for IdentitySync", v16, 2u);
      }
    }
  }

  return result;
}

uint64_t sub_1000C8650()
{
  v2 = *(sub_1000C4810(&qword_1001D5098, &qword_100149D38) - 8);
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6 = *(v0 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_1000C48EC;

  return sub_1000C77F0(v7, v8, v9, v4, v5, v0 + v3, v6);
}

uint64_t sub_1000C8770(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000C4810(&qword_1001D4F68, &qword_100149690);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000C87E0()
{
  v1 = sub_1000C4810(&qword_1001D5098, &qword_100149D38);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  v7 = *(v0 + 40);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_1000C88CC()
{
  v2 = *(sub_1000C4810(&qword_1001D5098, &qword_100149D38) - 8);
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6 = *(v0 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_1000C5EF0;

  return sub_1000C7474(v7, v8, v9, v4, v5, v0 + v3, v6);
}

uint64_t sub_1000C8A00()
{
  v0 = type metadata accessor for Logger();
  sub_1000C5A94(v0, qword_1001D6C18);
  v1 = sub_10000BB0C(v0, qword_1001D6C18);
  v2 = sub_1001061B0();
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1000C8A8C(uint64_t a1, void *a2, uint64_t a3, unint64_t a4, _OWORD *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v38 = a8;
  v39 = a6;
  v40 = a7;
  v35 = a3;
  v36 = a4;
  v34 = a2;
  v37 = a9;
  v32 = type metadata accessor for NWActorID();
  v12 = *(v32 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v32);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v9 + 48);
  v17 = *(v9 + 52);
  v18 = swift_allocObject();
  swift_defaultActor_initialize();
  v19 = OBJC_IVAR____TtC8rapportd25RPPairingDistributedActor_sessionCompleted;
  sub_1000C4810(&qword_1001D50A8, &unk_100149D80);
  LOBYTE(v41[0]) = 0;
  *(v18 + v19) = sub_1000DE8D8(v41);
  *(v18 + OBJC_IVAR____TtC8rapportd25RPPairingDistributedActor_pairingSession) = 0;
  *(v18 + OBJC_IVAR____TtC8rapportd25RPPairingDistributedActor_encryptionStream) = 0;
  *(v18 + OBJC_IVAR____TtC8rapportd25RPPairingDistributedActor_timeoutTask) = 0;
  v20 = OBJC_IVAR____TtC8rapportd25RPPairingDistributedActor_actorSystem;
  *(v18 + OBJC_IVAR____TtC8rapportd25RPPairingDistributedActor_actorSystem) = a1;
  v41[0] = a1;
  v33 = a1;
  v31 = type metadata accessor for NWActorSystem();
  sub_1000CBF14(&qword_1001D50B0, &type metadata accessor for NWActorSystem);
  sub_1000CBF14(&qword_1001D5008, type metadata accessor for RPPairingDistributedActor);

  dispatch thunk of DistributedActorSystem.assignID<A>(_:)();
  (*(v12 + 32))(v18 + OBJC_IVAR____TtC8rapportd25RPPairingDistributedActor_id, v15, v32);
  v21 = (v18 + OBJC_IVAR____TtC8rapportd25RPPairingDistributedActor_pairingData);
  v23 = v35;
  v22 = v36;
  *v21 = v35;
  v21[1] = v22;
  v24 = (v18 + OBJC_IVAR____TtC8rapportd25RPPairingDistributedActor_selfIdentity);
  v25 = a5[3];
  v24[2] = a5[2];
  v24[3] = v25;
  v26 = a5[1];
  *v24 = *a5;
  v24[1] = v26;
  v27 = v34;
  *(v18 + OBJC_IVAR____TtC8rapportd25RPPairingDistributedActor_queue) = v34;
  v41[8] = *(v18 + v20);
  v28 = v22;
  sub_1000C66E4(v23, v22);
  sub_1000C8DD0(a5, v41);
  v29 = v27;

  dispatch thunk of DistributedActorSystem.actorReady<A>(_:)();
  sub_1000134D4(v38);
  sub_1000134D4(v39);

  sub_1000C8E40(a5);
  sub_1000C5928(v23, v28);

  return v18;
}

uint64_t type metadata accessor for RPPairingDistributedActor()
{
  result = qword_1001D6FF0;
  if (!qword_1001D6FF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000C8DD0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000C4810(&qword_1001D5010, &qword_10014B2B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000C8E40(uint64_t a1)
{
  v2 = sub_1000C4810(&qword_1001D5010, &qword_10014B2B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000C8EA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[30] = a3;
  v4[31] = v3;
  v4[28] = a1;
  v4[29] = a2;
  v5 = type metadata accessor for RemoteCallTarget();
  v4[32] = v5;
  v6 = *(v5 - 8);
  v4[33] = v6;
  v7 = *(v6 + 64) + 15;
  v4[34] = swift_task_alloc();
  v8 = sub_1000C4810(&qword_1001D50B8, &qword_100149DA0);
  v4[35] = v8;
  v9 = *(v8 - 8);
  v4[36] = v9;
  v10 = *(v9 + 64) + 15;
  v4[37] = swift_task_alloc();
  v11 = type metadata accessor for NWActorSystemInvocationEncoder();
  v4[38] = v11;
  v12 = *(v11 - 8);
  v4[39] = v12;
  v13 = *(v12 + 64) + 15;
  v4[40] = swift_task_alloc();

  return _swift_task_switch(sub_1000C9030, 0, 0);
}

uint64_t sub_1000C9030()
{
  v1 = v0[31];
  if (swift_distributed_actor_is_remote())
  {
    v2 = v0[40];
    v3 = v0[37];
    v4 = v0[30];
    v5 = v0[29];
    v6 = *(v0[31] + OBJC_IVAR____TtC8rapportd25RPPairingDistributedActor_actorSystem);
    NWActorSystem.makeInvocationEncoder()();
    v0[26] = v5;
    v0[27] = v4;
    sub_1000C61D4(v5, v4);
    RemoteCallArgument.init(label:name:value:)();
    sub_1000C9F00();
    sub_1000C9F54();
    NWActorSystemInvocationEncoder.recordArgument<A>(_:)();
    v7 = v0[40];
    v8 = sub_1000C4810(&qword_1001D50D0, &unk_100149DB0);
    NWActorSystemInvocationEncoder.recordErrorType<A>(_:)();
    v9 = v0[40];
    v10 = sub_1000C4810(&qword_1001D5010, &qword_10014B2B0);
    sub_1000C9FFC(&qword_1001D50D8, sub_1000C9FA8);
    sub_1000C9FFC(&qword_1001D50E8, sub_1000CA074);
    NWActorSystemInvocationEncoder.recordReturnType<A>(_:)();
    v11 = v0[40];
    NWActorSystemInvocationEncoder.doneRecording()();
    if (v12)
    {
      v13 = v0[40];
      v14 = v0[38];
      v15 = v0[39];
      (*(v0[36] + 8))(v0[37], v0[35]);
      (*(v15 + 8))(v13, v14);
      v16 = v0[40];
      v17 = v0[37];
      v18 = v0[34];

      v19 = v0[1];

      return v19();
    }

    else
    {
      v25 = v0[34];
      RemoteCallTarget.init(_:)();
      v26 = async function pointer to NWActorSystem.remoteCall<A, B, C>(on:target:invocation:throwing:returning:)[1];
      v27 = swift_task_alloc();
      v0[41] = v27;
      v28 = type metadata accessor for RPPairingDistributedActor();
      sub_1000CBF14(&qword_1001D5008, type metadata accessor for RPPairingDistributedActor);
      *v27 = v0;
      v27[1] = sub_1000C9430;
      v29 = v0[40];
      v30 = v0[34];
      v31 = v0[31];

      return NWActorSystem.remoteCall<A, B, C>(on:target:invocation:throwing:returning:)(v0 + 18, v31, v30, v29, v8, v10, v28, v8);
    }
  }

  else
  {
    v21 = swift_task_alloc();
    v0[43] = v21;
    *v21 = v0;
    v21[1] = sub_1000C9648;
    v22 = v0[30];
    v23 = v0[31];
    v24 = v0[29];

    return sub_1000C9BCC((v0 + 10), v24, v22);
  }
}

uint64_t sub_1000C9430()
{
  v2 = *(*v1 + 328);
  v5 = *v1;
  *(*v1 + 336) = v0;

  if (v0)
  {
    v3 = sub_1000C97BC;
  }

  else
  {
    v3 = sub_1000C9544;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1000C9544()
{
  v2 = *(v0 + 312);
  v1 = *(v0 + 320);
  v4 = *(v0 + 296);
  v3 = *(v0 + 304);
  v5 = *(v0 + 280);
  v6 = *(v0 + 288);
  (*(*(v0 + 264) + 8))(*(v0 + 272), *(v0 + 256));
  (*(v6 + 8))(v4, v5);
  (*(v2 + 8))(v1, v3);
  v7 = *(v0 + 160);
  *(v0 + 16) = *(v0 + 144);
  *(v0 + 32) = v7;
  v8 = *(v0 + 192);
  *(v0 + 48) = *(v0 + 176);
  *(v0 + 64) = v8;
  v9 = *(v0 + 320);
  v10 = *(v0 + 296);
  v11 = *(v0 + 272);
  v12 = *(v0 + 224);

  v13 = *(v0 + 16);
  v14 = *(v0 + 32);
  v15 = *(v0 + 64);
  v12[2] = *(v0 + 48);
  v12[3] = v15;
  *v12 = v13;
  v12[1] = v14;
  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_1000C9648()
{
  v2 = *v1;
  v3 = *(*v1 + 344);
  v4 = *v1;

  if (v0)
  {
    v5 = *(v2 + 320);
    v6 = *(v2 + 296);
    v7 = *(v2 + 272);
  }

  else
  {
    v9 = *(v2 + 96);
    *(v2 + 16) = *(v2 + 80);
    *(v2 + 32) = v9;
    v10 = *(v2 + 128);
    *(v2 + 48) = *(v2 + 112);
    *(v2 + 64) = v10;
    v11 = *(v2 + 320);
    v12 = *(v2 + 296);
    v13 = *(v2 + 272);
    v14 = *(v2 + 224);

    v15 = *(v2 + 16);
    v16 = *(v2 + 32);
    v17 = *(v2 + 64);
    v14[2] = *(v2 + 48);
    v14[3] = v17;
    *v14 = v15;
    v14[1] = v16;
  }

  v8 = *(v4 + 8);

  return v8();
}

uint64_t sub_1000C97BC()
{
  v2 = v0[39];
  v1 = v0[40];
  v4 = v0[37];
  v3 = v0[38];
  v5 = v0[35];
  v6 = v0[36];
  (*(v0[33] + 8))(v0[34], v0[32]);
  (*(v6 + 8))(v4, v5);
  (*(v2 + 8))(v1, v3);
  v7 = v0[42];
  v8 = v0[40];
  v9 = v0[37];
  v10 = v0[34];

  v11 = v0[1];

  return v11();
}

uint64_t sub_1000C989C(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v5 = *a2;
  v3[2] = *a2;
  v6 = *(v5 - 8);
  v3[3] = v6;
  v7 = *(v6 + 64) + 15;
  v8 = swift_task_alloc();
  v3[4] = v8;
  result = swift_conformsToProtocol2();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  NWActorSystemInvocationDecoder.decodeNextArgument<A>()();
  v10 = *v8;
  v11 = v8[1];
  v12 = swift_task_alloc();
  v3[5] = v12;
  *v12 = v3;
  v12[1] = sub_1000C9A54;

  return sub_1000C8EA8(a3, v10, v11);
}

uint64_t sub_1000C9A54()
{
  v1 = *(*v0 + 40);
  v2 = *(*v0 + 32);
  v3 = *(*v0 + 24);
  v4 = *(*v0 + 16);
  v7 = *v0;

  (*(v3 + 8))(v2, v4);

  v5 = *(v7 + 8);

  return v5();
}

uint64_t sub_1000C9BCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[20] = a3;
  v4[21] = v3;
  v4[18] = a1;
  v4[19] = a2;
  return _swift_task_switch(sub_1000C9BF0, v3, 0);
}

uint64_t sub_1000C9BF0()
{
  v1 = *(v0 + 160);
  v2 = (*(v0 + 168) + OBJC_IVAR____TtC8rapportd25RPPairingDistributedActor_pairingData);
  v4 = *v2;
  v3 = v2[1];
  if (v1 >> 60 == 15)
  {
    if (v3 >> 60 == 15)
    {
      v5 = *(v0 + 152);
      sub_1000C61D4(v5, *(v0 + 160));
      sub_1000C66E4(v4, v3);
      sub_1000C5928(v5, v1);
LABEL_12:
      if (qword_1001D6C10 != -1)
      {
        swift_once();
      }

      v17 = type metadata accessor for Logger();
      sub_10000BB0C(v17, qword_1001D6C18);
      v18 = Logger.logObject.getter();
      v19 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        *v20 = 0;
        _os_log_impl(&_mh_execute_header, v18, v19, "Pairing SUCCESS, returning self identity", v20, 2u);
      }

      v21 = *(v0 + 168);

      v22 = *(v21 + OBJC_IVAR____TtC8rapportd25RPPairingDistributedActor_selfIdentity + 48);
      v24 = *(v21 + OBJC_IVAR____TtC8rapportd25RPPairingDistributedActor_selfIdentity);
      v23 = *(v21 + OBJC_IVAR____TtC8rapportd25RPPairingDistributedActor_selfIdentity + 16);
      *(v0 + 48) = *(v21 + OBJC_IVAR____TtC8rapportd25RPPairingDistributedActor_selfIdentity + 32);
      *(v0 + 64) = v22;
      *(v0 + 16) = v24;
      *(v0 + 32) = v23;
      sub_1000C8DD0(v0 + 16, v0 + 80);
      v11 = *(v0 + 16);
      v12 = *(v0 + 32);
      v13 = *(v0 + 48);
      v14 = *(v0 + 64);
      goto LABEL_17;
    }

    goto LABEL_5;
  }

  if (v3 >> 60 == 15)
  {
LABEL_5:
    v6 = *(v0 + 152);
    sub_1000C61D4(v6, *(v0 + 160));
    sub_1000C66E4(v4, v3);
    sub_1000C5928(v6, v1);
    sub_1000C5928(v4, v3);
    goto LABEL_6;
  }

  v15 = *(v0 + 152);
  sub_1000C61D4(v15, *(v0 + 160));
  sub_1000C66E4(v4, v3);
  v16 = sub_1000CB904(v15, v1, v4, v3);
  sub_1000C5928(v4, v3);
  sub_1000C5928(v15, v1);
  if (v16)
  {
    goto LABEL_12;
  }

LABEL_6:
  if (qword_1001D6C10 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_10000BB0C(v7, qword_1001D6C18);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, v9, "Pairing FAIL", v10, 2u);
  }

  v11 = 0uLL;
  v12 = 0uLL;
  v13 = 0uLL;
  v14 = 0uLL;
LABEL_17:
  v25 = *(v0 + 144);
  *v25 = v11;
  v25[1] = v12;
  v25[2] = v13;
  v25[3] = v14;
  v26 = *(v0 + 8);

  return v26();
}

unint64_t sub_1000C9F00()
{
  result = qword_1001D50C0;
  if (!qword_1001D50C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D50C0);
  }

  return result;
}

unint64_t sub_1000C9F54()
{
  result = qword_1001D50C8;
  if (!qword_1001D50C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D50C8);
  }

  return result;
}

unint64_t sub_1000C9FA8()
{
  result = qword_1001D50E0;
  if (!qword_1001D50E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D50E0);
  }

  return result;
}

uint64_t sub_1000C9FFC(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1000C6A0C(&qword_1001D5010, &qword_10014B2B0);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1000CA074()
{
  result = qword_1001D50F0;
  if (!qword_1001D50F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D50F0);
  }

  return result;
}

uint64_t sub_1000CA0C8(uint64_t a1)
{
  v2[18] = a1;
  v2[19] = v1;
  v3 = type metadata accessor for RemoteCallTarget();
  v2[20] = v3;
  v4 = *(v3 - 8);
  v2[21] = v4;
  v5 = *(v4 + 64) + 15;
  v2[22] = swift_task_alloc();
  v6 = sub_1000C4810(&qword_1001D50F8, &qword_100149E40);
  v2[23] = v6;
  v7 = *(v6 - 8);
  v2[24] = v7;
  v8 = *(v7 + 64) + 15;
  v2[25] = swift_task_alloc();
  v9 = type metadata accessor for NWActorSystemInvocationEncoder();
  v2[26] = v9;
  v10 = *(v9 - 8);
  v2[27] = v10;
  v11 = *(v10 + 64) + 15;
  v2[28] = swift_task_alloc();

  return _swift_task_switch(sub_1000CA24C, 0, 0);
}

uint64_t sub_1000CA24C()
{
  v1 = *(v0 + 152);
  if (swift_distributed_actor_is_remote())
  {
    v2 = *(v0 + 224);
    v3 = *(v0 + 200);
    v4 = *(v0 + 144);
    v5 = *(*(v0 + 152) + OBJC_IVAR____TtC8rapportd25RPPairingDistributedActor_actorSystem);
    NWActorSystem.makeInvocationEncoder()();
    v6 = *v4;
    v7 = v4[1];
    v8 = v4[3];
    *(v0 + 48) = v4[2];
    *(v0 + 64) = v8;
    *(v0 + 16) = v6;
    *(v0 + 32) = v7;
    sub_1000C5984(v4, v0 + 80);
    RemoteCallArgument.init(label:name:value:)();
    sub_1000C9FA8();
    sub_1000CA074();
    NWActorSystemInvocationEncoder.recordArgument<A>(_:)();
    v9 = *(v0 + 224);
    v10 = sub_1000C4810(&qword_1001D50D0, &unk_100149DB0);
    NWActorSystemInvocationEncoder.recordErrorType<A>(_:)();
    v11 = *(v0 + 224);
    NWActorSystemInvocationEncoder.doneRecording()();
    if (v12)
    {
      v13 = *(v0 + 224);
      v14 = *(v0 + 208);
      v15 = *(v0 + 216);
      (*(*(v0 + 192) + 8))(*(v0 + 200), *(v0 + 184));
      (*(v15 + 8))(v13, v14);
      v16 = *(v0 + 224);
      v17 = *(v0 + 200);
      v18 = *(v0 + 176);

      v19 = *(v0 + 8);

      return v19();
    }

    else
    {
      v24 = *(v0 + 176);
      RemoteCallTarget.init(_:)();
      v25 = async function pointer to NWActorSystem.remoteCallVoid<A, B>(on:target:invocation:throwing:)[1];
      v26 = swift_task_alloc();
      *(v0 + 232) = v26;
      v27 = type metadata accessor for RPPairingDistributedActor();
      v28 = sub_1000CBF14(&qword_1001D5008, type metadata accessor for RPPairingDistributedActor);
      *v26 = v0;
      v26[1] = sub_1000CA56C;
      v29 = *(v0 + 224);
      v30 = *(v0 + 176);
      v31 = *(v0 + 152);

      return NWActorSystem.remoteCallVoid<A, B>(on:target:invocation:throwing:)(v31, v30, v29, v10, v27, v10, v28, &protocol self-conformance witness table for Error);
    }
  }

  else
  {
    v21 = swift_task_alloc();
    *(v0 + 248) = v21;
    *v21 = v0;
    v21[1] = sub_1000CA760;
    v22 = *(v0 + 144);
    v23 = *(v0 + 152);

    return sub_1000CA990(v22);
  }
}

uint64_t sub_1000CA56C()
{
  v2 = *(*v1 + 232);
  v5 = *v1;
  *(*v1 + 240) = v0;

  if (v0)
  {
    v3 = sub_1000CA8B0;
  }

  else
  {
    v3 = sub_1000CA680;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1000CA680()
{
  v2 = v0[27];
  v1 = v0[28];
  v4 = v0[25];
  v3 = v0[26];
  v5 = v0[23];
  v6 = v0[24];
  (*(v0[21] + 8))(v0[22], v0[20]);
  (*(v6 + 8))(v4, v5);
  (*(v2 + 8))(v1, v3);
  v7 = v0[28];
  v8 = v0[25];
  v9 = v0[22];

  v10 = v0[1];

  return v10();
}

uint64_t sub_1000CA760()
{
  v1 = *v0;
  v2 = *(*v0 + 248);
  v8 = *v0;

  v3 = v1[28];
  v4 = v1[25];
  v5 = v1[22];

  v6 = *(v8 + 8);

  return v6();
}

uint64_t sub_1000CA8B0()
{
  v2 = v0[27];
  v1 = v0[28];
  v4 = v0[25];
  v3 = v0[26];
  v5 = v0[23];
  v6 = v0[24];
  (*(v0[21] + 8))(v0[22], v0[20]);
  (*(v6 + 8))(v4, v5);
  (*(v2 + 8))(v1, v3);
  v7 = v0[30];
  v8 = v0[28];
  v9 = v0[25];
  v10 = v0[22];

  v11 = v0[1];

  return v11();
}

uint64_t sub_1000CA9B0()
{
  v18 = v0;
  if (qword_1001D6C10 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 144);
  v2 = type metadata accessor for Logger();
  sub_10000BB0C(v2, qword_1001D6C18);
  sub_1000C5984(v1, v0 + 16);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  sub_1000C5A40(v1);
  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 144);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v17 = v7;
    *v6 = 136315138;
    v8 = v5[3];
    v10 = *v5;
    v9 = v5[1];
    *(v0 + 112) = v5[2];
    *(v0 + 128) = v8;
    *(v0 + 80) = v10;
    *(v0 + 96) = v9;
    v11 = sub_1000DC030(v0 + 80, &type metadata for RPPairingIdentity);
    v13 = sub_1000C3440(v11, v12, &v17);

    *(v6 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v3, v4, "Saving shared identity: %s", v6, 0xCu);
    sub_1000C5604(v7);
  }

  type metadata accessor for RPPairingSession();
  v14 = swift_task_alloc();
  *(v0 + 152) = v14;
  *v14 = v0;
  v14[1] = sub_1000CABAC;
  v15 = *(v0 + 144);

  return sub_1000ED708(v15);
}

uint64_t sub_1000CABAC()
{
  v1 = *(*v0 + 152);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1000CACA0()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC8rapportd25RPPairingDistributedActor_id;
  v3 = OBJC_IVAR____TtC8rapportd25RPPairingDistributedActor_actorSystem;
  type metadata accessor for NWActorSystem();
  sub_1000CBF14(&qword_1001D50B0, &type metadata accessor for NWActorSystem);
  dispatch thunk of DistributedActorSystem.resignID(_:)();
  v4 = type metadata accessor for NWActorID();
  (*(*(v4 - 8) + 8))(v0 + v2, v4);
  v5 = *(v0 + v3);

  sub_1000C5928(*(v1 + OBJC_IVAR____TtC8rapportd25RPPairingDistributedActor_pairingData), *(v1 + OBJC_IVAR____TtC8rapportd25RPPairingDistributedActor_pairingData + 8));
  sub_1000CBC04(*(v1 + OBJC_IVAR____TtC8rapportd25RPPairingDistributedActor_selfIdentity), *(v1 + OBJC_IVAR____TtC8rapportd25RPPairingDistributedActor_selfIdentity + 8), *(v1 + OBJC_IVAR____TtC8rapportd25RPPairingDistributedActor_selfIdentity + 16), *(v1 + OBJC_IVAR____TtC8rapportd25RPPairingDistributedActor_selfIdentity + 24), *(v1 + OBJC_IVAR____TtC8rapportd25RPPairingDistributedActor_selfIdentity + 32), *(v1 + OBJC_IVAR____TtC8rapportd25RPPairingDistributedActor_selfIdentity + 40), *(v1 + OBJC_IVAR____TtC8rapportd25RPPairingDistributedActor_selfIdentity + 48), *(v1 + OBJC_IVAR____TtC8rapportd25RPPairingDistributedActor_selfIdentity + 56));
  v6 = *(v0 + OBJC_IVAR____TtC8rapportd25RPPairingDistributedActor_sessionCompleted);

  v7 = *(v0 + OBJC_IVAR____TtC8rapportd25RPPairingDistributedActor_timeoutTask);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_1000CAE04()
{
  if (swift_distributed_actor_is_remote())
  {
    v1 = OBJC_IVAR____TtC8rapportd25RPPairingDistributedActor_id;
    v2 = type metadata accessor for NWActorID();
    (*(*(v2 - 8) + 8))(v0 + v1, v2);
    v3 = *(v0 + OBJC_IVAR____TtC8rapportd25RPPairingDistributedActor_actorSystem);

    swift_defaultActor_destroy();
  }

  else
  {
    sub_1000CACA0();
  }

  return _swift_defaultActor_deallocate(v0);
}

Swift::Int sub_1000CAEA0()
{
  Hasher.init(_seed:)();
  type metadata accessor for RPPairingDistributedActor();
  sub_1000CBF14(&qword_1001D5100, type metadata accessor for RPPairingDistributedActor);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1000CAF44()
{
  if ((__isLocalActor(_:)() & 1) == 0)
  {
    type metadata accessor for RPPairingDistributedActor();
    return buildDefaultDistributedRemoteActorExecutor<A>(_:)();
  }

  return v0;
}

uint64_t sub_1000CAF98(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  type metadata accessor for RPPairingDistributedActor();
  type metadata accessor for NWActorSystem();
  sub_1000CBF14(&qword_1001D50B0, &type metadata accessor for NWActorSystem);
  result = dispatch thunk of DistributedActorSystem.resolve<A>(id:as:)();
  if (!v2 && !result)
  {
    v6 = swift_distributedActor_remote_initialize();
    v7 = OBJC_IVAR____TtC8rapportd25RPPairingDistributedActor_id;
    v8 = type metadata accessor for NWActorID();
    (*(*(v8 - 8) + 16))(v6 + v7, a1, v8);
    *(v6 + OBJC_IVAR____TtC8rapportd25RPPairingDistributedActor_actorSystem) = v4;

    return v6;
  }

  return result;
}

uint64_t sub_1000CB114()
{
  v1 = *v0;
  type metadata accessor for RPPairingDistributedActor();
  sub_1000CBF14(&qword_1001D5008, type metadata accessor for RPPairingDistributedActor);
  return DistributedActor.hash(into:)();
}

Swift::Int sub_1000CB190()
{
  v2 = *v0;
  Hasher.init(_seed:)();
  type metadata accessor for RPPairingDistributedActor();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1000CB1EC@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC8rapportd25RPPairingDistributedActor_id;
  v5 = type metadata accessor for NWActorID();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_1000CB268(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = type metadata accessor for RPPairingDistributedActor();
  v5 = sub_1000CBF14(&qword_1001D5008, type metadata accessor for RPPairingDistributedActor);

  return static DistributedActor.== infix(_:_:)(v2, v3, v4, v5);
}

uint64_t sub_1000CB2F4()
{
  v1 = *v0;
  type metadata accessor for RPPairingDistributedActor();
  sub_1000CBF14(&qword_1001D5008, type metadata accessor for RPPairingDistributedActor);
  sub_1000CBF14(&qword_1001D5288, &type metadata accessor for NWActorID);
  return DistributedActor<>.encode(to:)();
}

uint64_t sub_1000CB3BC@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for RPPairingDistributedActor();
  sub_1000CBF14(&qword_1001D5008, type metadata accessor for RPPairingDistributedActor);
  sub_1000CBF14(&qword_1001D5280, &type metadata accessor for NWActorID);
  result = DistributedActor<>.init(from:)();
  if (!v1)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_1000CB48C@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v5 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v5 != 2)
    {
      if (result)
      {
        v6 = 1;
        goto LABEL_30;
      }

LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v7 = result;
    v8 = *(a2 + 16);
    v9 = *(a2 + 24);
    v10 = __DataStorage._bytes.getter();
    if (v10)
    {
      v11 = __DataStorage._offset.getter();
      if (__OFSUB__(v8, v11))
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v10 += v8 - v11;
    }

    v12 = __OFSUB__(v9, v8);
    v13 = v9 - v8;
    if (!v12)
    {
      result = __DataStorage._length.getter();
      if (result >= v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = result;
      }

      if (!v7)
      {
        goto LABEL_37;
      }

      if (!v10)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      result = v7;
      if (v10 == v7)
      {
LABEL_27:
        v6 = 1;
        goto LABEL_30;
      }

LABEL_16:
      result = memcmp(result, v10, v14);
      v6 = result == 0;
      goto LABEL_30;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!v5)
  {
    __s2 = a2;
    v20 = a3;
    v21 = BYTE2(a3);
    v22 = BYTE3(a3);
    v23 = BYTE4(a3);
    v24 = BYTE5(a3);
    if (result)
    {
      result = memcmp(result, &__s2, BYTE6(a3));
      v6 = result == 0;
LABEL_30:
      *a4 = v6;
      return result;
    }

    __break(1u);
    goto LABEL_36;
  }

  v15 = a2;
  v16 = (a2 >> 32) - a2;
  if (a2 >> 32 < a2)
  {
    __break(1u);
    goto LABEL_32;
  }

  v17 = result;
  v10 = __DataStorage._bytes.getter();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = __DataStorage._offset.getter();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = __DataStorage._length.getter();
  if (result >= v16)
  {
    v14 = v16;
  }

  else
  {
    v14 = result;
  }

  if (!v17)
  {
    goto LABEL_38;
  }

  if (v10)
  {
    result = v17;
    if (v10 == v17)
    {
      goto LABEL_27;
    }

    goto LABEL_16;
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_1000CB6BC(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v13[0] = a1;
      LOWORD(v13[1]) = a2;
      BYTE2(v13[1]) = BYTE2(a2);
      BYTE3(v13[1]) = BYTE3(a2);
      BYTE4(v13[1]) = BYTE4(a2);
      BYTE5(v13[1]) = BYTE5(a2);
      goto LABEL_9;
    }

    v8 = a1;
    v9 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

LABEL_7:
    v10 = sub_1000CB84C(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    sub_1000C4AA4(a3, a4);
    return v10 & 1;
  }

  if (v7 == 2)
  {
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    goto LABEL_7;
  }

  memset(v13, 0, 14);
LABEL_9:
  sub_1000CB48C(v13, a3, a4, &v12);
  v10 = v4;
  sub_1000C4AA4(a3, a4);
  if (!v4)
  {
    v10 = v12;
  }

  return v10 & 1;
}

uint64_t sub_1000CB84C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = __DataStorage._bytes.getter();
  v11 = result;
  if (result)
  {
    result = __DataStorage._offset.getter();
    if (__OFSUB__(a1, result))
    {
LABEL_9:
      __break(1u);
      return result;
    }

    v11 += a1 - result;
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_9;
  }

  __DataStorage._length.getter();
  sub_1000CB48C(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

uint64_t sub_1000CB904(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a2 >> 62;
  v5 = a4 >> 62;
  if (a2 >> 62 == 3)
  {
    v6 = 0;
    if (!result && a2 == 0xC000000000000000 && a4 >> 62 == 3)
    {
      v6 = 0;
      if (!a3 && a4 == 0xC000000000000000)
      {
        return 1;
      }
    }

    goto LABEL_14;
  }

  if (!v4)
  {
    v6 = BYTE6(a2);
    goto LABEL_14;
  }

  if (v4 == 1)
  {
    LODWORD(v6) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v6 = v6;
LABEL_14:
    if (v5 > 1)
    {
      if (v5 != 2)
      {
        return v6 == 0;
      }

      v11 = *(a3 + 16);
      v10 = *(a3 + 24);
      v9 = __OFSUB__(v10, v11);
      v12 = v10 - v11;
      if (!v9)
      {
        if (v6 != v12)
        {
          return 0;
        }

        goto LABEL_21;
      }

      __break(1u);
    }

    else
    {
      if (!v5)
      {
        if (v6 != BYTE6(a4))
        {
          return 0;
        }

LABEL_21:
        if (v6 >= 1)
        {
          v13 = result;
          sub_1000C61D4(a3, a4);
          return sub_1000CB6BC(v13, a2, a3, a4) & 1;
        }

        return 1;
      }

      if (!__OFSUB__(HIDWORD(a3), a3))
      {
        if (v6 != HIDWORD(a3) - a3)
        {
          return 0;
        }

        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  v8 = *(result + 16);
  v7 = *(result + 24);
  v9 = __OFSUB__(v7, v8);
  v6 = v7 - v8;
  if (!v9)
  {
    goto LABEL_14;
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_1000CBA6C(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v2[2] = *a2;
  v4 = *(v3 - 8);
  v2[3] = v4;
  v5 = *(v4 + 64) + 15;
  v6 = swift_task_alloc();
  v2[4] = v6;
  result = swift_conformsToProtocol2();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  NWActorSystemInvocationDecoder.decodeNextArgument<A>()();
  v8 = swift_task_alloc();
  v2[5] = v8;
  *v8 = v2;
  v8[1] = sub_1000C9A54;

  return sub_1000CA0C8(v6);
}

void sub_1000CBC04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, unint64_t a8)
{
  if (a2)
  {

    sub_1000C4AA4(a5, a6);

    sub_1000C4AA4(a7, a8);
  }
}

uint64_t sub_1000CBE38()
{
  result = type metadata accessor for NWActorID();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1000CBF14(unint64_t *a1, void (*a2)(uint64_t))
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

__n128 sub_1000CBF5C@<Q0>(unint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, unint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X6>, unint64_t a8@<X7>, __n128 *a9@<X8>, __n128 a10, unint64_t a11, unint64_t a12)
{
  result = a10;
  a9->n128_u64[0] = a1;
  a9->n128_u64[1] = a2;
  a9[1].n128_u64[0] = a3;
  a9[1].n128_u64[1] = a4;
  a9[2].n128_u64[0] = a5;
  a9[2].n128_u64[1] = a6;
  a9[3].n128_u64[0] = a7;
  a9[3].n128_u64[1] = a8;
  a9[4] = a10;
  a9[5].n128_u64[0] = a11;
  a9[5].n128_u64[1] = a12;
  return result;
}

uint64_t sub_1000CBF8C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE200000000000000;
  v4 = 29793;
  v5 = 0xE300000000000000;
  v6 = 7171684;
  v7 = 0xE300000000000000;
  v8 = 6580595;
  if (a1 != 4)
  {
    v8 = 28275;
    v7 = 0xE200000000000000;
  }

  if (a1 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 7171687;
  if (a1 != 1)
  {
    v9 = 7171686;
  }

  if (a1)
  {
    v4 = v9;
    v3 = 0xE300000000000000;
  }

  if (a1 <= 2u)
  {
    v10 = v4;
  }

  else
  {
    v10 = v6;
  }

  if (v2 <= 2)
  {
    v11 = v3;
  }

  else
  {
    v11 = v5;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v13 = 0xE300000000000000;
      if (v10 != 7171684)
      {
        goto LABEL_33;
      }
    }

    else if (a2 == 4)
    {
      v13 = 0xE300000000000000;
      if (v10 != 6580595)
      {
        goto LABEL_33;
      }
    }

    else
    {
      v13 = 0xE200000000000000;
      if (v10 != 28275)
      {
LABEL_33:
        v14 = _stringCompareWithSmolCheck(_:_:expecting:)();
        goto LABEL_34;
      }
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v12 = 7171687;
    }

    else
    {
      v12 = 7171686;
    }

    v13 = 0xE300000000000000;
    if (v10 != v12)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v13 = 0xE200000000000000;
    if (v10 != 29793)
    {
      goto LABEL_33;
    }
  }

  if (v11 != v13)
  {
    goto LABEL_33;
  }

  v14 = 1;
LABEL_34:

  return v14 & 1;
}

Swift::Int sub_1000CC120()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1000CC1F8()
{
  *v0;
  *v0;
  *v0;
  String.hash(into:)();
}

Swift::Int sub_1000CC2C0()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_1000CC394@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000CDA68(*a1);
  *a2 = result;
  return result;
}

void sub_1000CC3C4(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE200000000000000;
  v4 = 29793;
  v5 = 0xE300000000000000;
  v6 = 7171684;
  v7 = 0xE300000000000000;
  v8 = 6580595;
  if (v2 != 4)
  {
    v8 = 28275;
    v7 = 0xE200000000000000;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 7171687;
  if (v2 != 1)
  {
    v9 = 7171686;
  }

  if (*v1)
  {
    v4 = v9;
    v3 = 0xE300000000000000;
  }

  if (*v1 <= 2u)
  {
    v10 = v4;
  }

  else
  {
    v10 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v10;
  a1[1] = v3;
}

uint64_t sub_1000CC454@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = NWTXTRecord.subscript.getter();
  if (!v5 || (v6 = sub_1000CDD48(v4), v7 >> 60 == 15))
  {
    v8 = type metadata accessor for NWTXTRecord();
    result = (*(*(v8 - 8) + 8))(a1, v8);
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0;
LABEL_4:
    v20 = 0;
    v21 = 0;
    goto LABEL_5;
  }

  v34 = v7;
  v35 = v6;
  v22 = NWTXTRecord.subscript.getter();
  v19 = v23;
  if (!v23)
  {
    v30 = type metadata accessor for NWTXTRecord();
    (*(*(v30 - 8) + 8))(a1, v30);
    result = sub_1000C5928(v35, v34);
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    goto LABEL_4;
  }

  v33 = v22;
  v24 = NWTXTRecord.subscript.getter();
  v21 = v25;
  if (v25)
  {
    v20 = v24;
    v32 = NWTXTRecord.subscript.getter();
    v13 = v26;
    v14 = NWTXTRecord.subscript.getter();
    v15 = v27;
    v16 = NWTXTRecord.subscript.getter();
    v17 = v28;
    v29 = type metadata accessor for NWTXTRecord();
    result = (*(*(v29 - 8) + 8))(a1, v29);
    v12 = v32;
    v18 = v33;
    v11 = v34;
    v10 = v35;
  }

  else
  {
    v31 = type metadata accessor for NWTXTRecord();
    (*(*(v31 - 8) + 8))(a1, v31);

    result = sub_1000C5928(v35, v34);
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v20 = 0;
  }

LABEL_5:
  *a2 = v10;
  a2[1] = v11;
  a2[2] = v12;
  a2[3] = v13;
  a2[4] = v14;
  a2[5] = v15;
  a2[6] = v16;
  a2[7] = v17;
  a2[8] = v18;
  a2[9] = v19;
  a2[10] = v20;
  a2[11] = v21;
  return result;
}

uint64_t sub_1000CC6E4()
{
  v1 = v0;
  sub_1000C4810(&qword_1001D5290, &qword_10014A0B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10014A090;
  *(inited + 32) = 29793;
  *(inited + 40) = 0xE200000000000000;
  *&v17 = sub_1000CC9C4(*v0, *(v0 + 8));
  sub_1000C4810(&qword_1001D5298, &qword_10014A0B8);
  sub_1000C7E9C(&qword_1001D52A0, &qword_1001D5298, &qword_10014A0B8);
  v3 = BidirectionalCollection<>.joined(separator:)();
  v5 = v4;

  *(inited + 48) = v3;
  *(inited + 56) = v5;
  *(inited + 64) = 6580595;
  *(inited + 72) = 0xE300000000000000;
  v6 = *(v1 + 64);
  v7 = *(v1 + 80);
  *(inited + 80) = v6;
  *(inited + 96) = 28275;
  *(inited + 104) = 0xE200000000000000;
  v16 = v7;
  v17 = v6;
  *(inited + 112) = v7;
  sub_1000CE6A4(&v17, v15);
  sub_1000CE6A4(&v16, v15);
  sub_1000CE590(inited);
  swift_setDeallocating();
  sub_1000C4810(&qword_1001D52A8, &qword_10014A0C0);
  swift_arrayDestroy();
  result = NWTXTRecord.init(_:)();
  if (*(v1 + 24))
  {
    v9 = *(v1 + 16);
    v10 = *(v1 + 24);

    result = NWTXTRecord.subscript.setter();
  }

  if (*(v1 + 40))
  {
    v11 = *(v1 + 32);
    v12 = *(v1 + 40);

    result = NWTXTRecord.subscript.setter();
  }

  if (*(v1 + 56))
  {
    v13 = *(v1 + 48);
    v14 = *(v1 + 56);

    return NWTXTRecord.subscript.setter();
  }

  return result;
}

uint64_t sub_1000CC910(uint64_t a1, unint64_t a2)
{
  sub_1000CC9C4(a1, a2);
  sub_1000C4810(&qword_1001D5298, &qword_10014A0B8);
  sub_1000C7E9C(&qword_1001D52A0, &qword_1001D5298, &qword_10014A0B8);
  v2 = BidirectionalCollection<>.joined(separator:)();

  return v2;
}

unint64_t *sub_1000CC9C4(uint64_t a1, unint64_t a2)
{
  v4 = a2 >> 62;
  v30 = HIDWORD(a1);
  if ((a2 >> 62) <= 1)
  {
    if (!v4)
    {
      v5 = BYTE6(a2);
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  if (v4 != 2)
  {
    return &_swiftEmptyArrayStorage;
  }

  v7 = *(a1 + 16);
  v6 = *(a1 + 24);
  v5 = v6 - v7;
  if (__OFSUB__(v6, v7))
  {
    __break(1u);
LABEL_8:
    if (__OFSUB__(HIDWORD(a1), a1))
    {
      goto LABEL_49;
    }

    v5 = HIDWORD(a1) - a1;
  }

LABEL_10:
  v8 = &_swiftEmptyArrayStorage;
  if (v5)
  {
    v45 = &_swiftEmptyArrayStorage;
    sub_1000CCDC8(0, v5 & ~(v5 >> 63), 0);
    if (v4)
    {
      if (v4 == 2)
      {
        v9 = *(a1 + 16);
      }

      else
      {
        v9 = a1;
      }
    }

    else
    {
      v9 = 0;
    }

    v32 = v9;
    if (v5 < 0)
    {
      goto LABEL_48;
    }

    v10 = 0;
    v8 = v45;
    v29 = &v33 + v9;
    v31 = v4;
    do
    {
      if (v10 >= v5)
      {
        __break(1u);
LABEL_41:
        __break(1u);
LABEL_42:
        __break(1u);
LABEL_43:
        __break(1u);
LABEL_44:
        __break(1u);
LABEL_45:
        __break(1u);
LABEL_46:
        __break(1u);
LABEL_47:
        __break(1u);
LABEL_48:
        __break(1u);
LABEL_49:
        __break(1u);
LABEL_50:
        __break(1u);
LABEL_51:
        __break(1u);
      }

      v11 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        goto LABEL_41;
      }

      v12 = v32 + v10;
      if (v4 == 2)
      {
        if (v12 < *(a1 + 16))
        {
          goto LABEL_43;
        }

        if (v12 >= *(a1 + 24))
        {
          goto LABEL_45;
        }

        v17 = __DataStorage._bytes.getter();
        if (!v17)
        {
          goto LABEL_51;
        }

        v14 = v17;
        v18 = __DataStorage._offset.getter();
        v16 = v12 - v18;
        if (__OFSUB__(v12, v18))
        {
          goto LABEL_47;
        }
      }

      else
      {
        if (v4 != 1)
        {
          if (v12 >= BYTE6(a2))
          {
            goto LABEL_42;
          }

          v33 = a1;
          v34 = BYTE2(a1);
          v35 = BYTE3(a1);
          v36 = v30;
          v37 = BYTE5(a1);
          v38 = BYTE6(a1);
          v39 = HIBYTE(a1);
          v40 = a2;
          v41 = BYTE2(a2);
          v42 = BYTE3(a2);
          v43 = BYTE4(a2);
          v44 = BYTE5(a2);
          v19 = v29[v10];
          goto LABEL_36;
        }

        if (v12 < a1 || v12 >= a1 >> 32)
        {
          goto LABEL_44;
        }

        v13 = __DataStorage._bytes.getter();
        if (!v13)
        {
          goto LABEL_50;
        }

        v14 = v13;
        v15 = __DataStorage._offset.getter();
        v16 = v12 - v15;
        if (__OFSUB__(v12, v15))
        {
          goto LABEL_46;
        }
      }

      v19 = *(v14 + v16);
LABEL_36:
      sub_1000C4810(&qword_1001D52C0, &qword_10014A240);
      v20 = swift_allocObject();
      *(v20 + 16) = xmmword_10014A0A0;
      *(v20 + 56) = &type metadata for UInt8;
      *(v20 + 64) = &protocol witness table for UInt8;
      *(v20 + 32) = v19;
      v21 = String.init(format:_:)();
      v45 = v8;
      v24 = v8[2];
      v23 = v8[3];
      if (v24 >= v23 >> 1)
      {
        v28 = v21;
        v26 = v22;
        sub_1000CCDC8((v23 > 1), v24 + 1, 1);
        v22 = v26;
        v21 = v28;
        v8 = v45;
      }

      v8[2] = v24 + 1;
      v25 = &v8[2 * v24];
      v25[4] = v21;
      v25[5] = v22;
      ++v10;
      LODWORD(v4) = v31;
    }

    while (v11 != v5);
  }

  return v8;
}

_BYTE *sub_1000CCD34@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v3 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    *a3 = result;
    a3[1] = 0xC000000000000000;
    return result;
  }

  if (v3 <= 14)
  {
    result = sub_1000CDAB4(result, a2);
    v8 = a3;
    v6 = v9 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (v3 >= 0x7FFFFFFF)
    {
      result = sub_1000CDB6C(result, a2);
      v6 = v10 | 0x8000000000000000;
    }

    else
    {
      result = sub_1000CDBE8(result, a2);
      v6 = v5 | 0x4000000000000000;
    }

    v8 = a3;
  }

  *v8 = result;
  v8[1] = v6;
  return result;
}

char *sub_1000CCDC8(char *a1, int64_t a2, char a3)
{
  result = sub_1000CCE08(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1000CCDE8(char *a1, int64_t a2, char a3)
{
  result = sub_1000CCF14(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1000CCE08(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000C4810(&qword_1001D52C8, &qword_10014A248);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1000CCF14(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000C4810(&qword_1001D52E0, &qword_10014A260);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

unsigned __int8 *sub_1000CD020(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v63 = a1;
  v64 = a2;

  result = String.init<A>(_:)();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_1000CD5F4();
    v36 = v35;

    v5 = v36;
    if ((v36 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = _StringObject.sharedUTF8.getter();
      v7 = v62;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v20 = v7 - 1;
        if (v20)
        {
          v21 = a3 + 48;
          v22 = a3 + 55;
          v23 = a3 + 87;
          if (a3 > 10)
          {
            v21 = 58;
          }

          else
          {
            v23 = 97;
            v22 = 65;
          }

          if (result)
          {
            LOBYTE(v13) = 0;
            v24 = result + 1;
            v15 = 1;
            do
            {
              v25 = *v24;
              if (v25 < 0x30 || v25 >= v21)
              {
                if (v25 < 0x41 || v25 >= v22)
                {
                  v18 = 0;
                  if (v25 < 0x61 || v25 >= v23)
                  {
                    goto LABEL_127;
                  }

                  v26 = -87;
                }

                else
                {
                  v26 = -55;
                }
              }

              else
              {
                v26 = -48;
              }

              v27 = v13 * a3;
              if ((v27 & 0xFF00) != 0)
              {
                goto LABEL_126;
              }

              v13 = v27 + (v25 + v26);
              if ((v13 >> 8))
              {
                goto LABEL_126;
              }

              ++v24;
              --v20;
            }

            while (v20);
LABEL_46:
            v15 = 0;
            v18 = v13;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v18 = 0;
        v15 = 1;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v28 = a3 + 48;
        v29 = a3 + 55;
        v30 = a3 + 87;
        if (a3 > 10)
        {
          v28 = 58;
        }

        else
        {
          v30 = 97;
          v29 = 65;
        }

        if (result)
        {
          LOBYTE(v31) = 0;
          v15 = 1;
          do
          {
            v32 = *result;
            if (v32 < 0x30 || v32 >= v28)
            {
              if (v32 < 0x41 || v32 >= v29)
              {
                v18 = 0;
                if (v32 < 0x61 || v32 >= v30)
                {
                  goto LABEL_127;
                }

                v33 = -87;
              }

              else
              {
                v33 = -55;
              }
            }

            else
            {
              v33 = -48;
            }

            v34 = v31 * a3;
            if ((v34 & 0xFF00) != 0)
            {
              goto LABEL_126;
            }

            v31 = v34 + (v32 + v33);
            if ((v31 >> 8))
            {
              goto LABEL_126;
            }

            ++result;
            --v7;
          }

          while (v7);
          v15 = 0;
          v18 = v31;
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          LOBYTE(v13) = 0;
          v14 = result + 1;
          v15 = 1;
          while (1)
          {
            v16 = *v14;
            if (v16 < 0x30 || v16 >= v10)
            {
              if (v16 < 0x41 || v16 >= v11)
              {
                v18 = 0;
                if (v16 < 0x61 || v16 >= v12)
                {
                  goto LABEL_127;
                }

                v17 = -87;
              }

              else
              {
                v17 = -55;
              }
            }

            else
            {
              v17 = -48;
            }

            v19 = v13 * a3;
            if ((v19 & 0xFF00) != 0)
            {
              goto LABEL_126;
            }

            v13 = v19 - (v16 + v17);
            if ((v13 & 0xFFFFFF00) != 0)
            {
              goto LABEL_126;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v18 = 0;
        v15 = 0;
LABEL_127:

        return (v18 | (v15 << 8));
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v37 = HIBYTE(v5) & 0xF;
  v63 = v6;
  v64 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v37)
      {
        LOBYTE(v39) = 0;
        v55 = a3 + 48;
        v56 = a3 + 55;
        v57 = a3 + 87;
        if (a3 > 10)
        {
          v55 = 58;
        }

        else
        {
          v57 = 97;
          v56 = 65;
        }

        v58 = &v63;
        v15 = 1;
        while (1)
        {
          v59 = *v58;
          if (v59 < 0x30 || v59 >= v55)
          {
            if (v59 < 0x41 || v59 >= v56)
            {
              v18 = 0;
              if (v59 < 0x61 || v59 >= v57)
              {
                goto LABEL_127;
              }

              v60 = -87;
            }

            else
            {
              v60 = -55;
            }
          }

          else
          {
            v60 = -48;
          }

          v61 = v39 * a3;
          if ((v61 & 0xFF00) != 0)
          {
            goto LABEL_126;
          }

          v39 = v61 + (v59 + v60);
          if ((v39 >> 8))
          {
            goto LABEL_126;
          }

          v58 = (v58 + 1);
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v37)
    {
      v38 = v37 - 1;
      if (v38)
      {
        LOBYTE(v39) = 0;
        v40 = a3 + 48;
        v41 = a3 + 55;
        v42 = a3 + 87;
        if (a3 > 10)
        {
          v40 = 58;
        }

        else
        {
          v42 = 97;
          v41 = 65;
        }

        v43 = &v63 + 1;
        v15 = 1;
        while (1)
        {
          v44 = *v43;
          if (v44 < 0x30 || v44 >= v40)
          {
            if (v44 < 0x41 || v44 >= v41)
            {
              v18 = 0;
              if (v44 < 0x61 || v44 >= v42)
              {
                goto LABEL_127;
              }

              v45 = -87;
            }

            else
            {
              v45 = -55;
            }
          }

          else
          {
            v45 = -48;
          }

          v46 = v39 * a3;
          if ((v46 & 0xFF00) != 0)
          {
            goto LABEL_126;
          }

          v39 = v46 - (v44 + v45);
          if ((v39 & 0xFFFFFF00) != 0)
          {
            goto LABEL_126;
          }

          ++v43;
          if (!--v38)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v37)
  {
    v47 = v37 - 1;
    if (v47)
    {
      LOBYTE(v39) = 0;
      v48 = a3 + 48;
      v49 = a3 + 55;
      v50 = a3 + 87;
      if (a3 > 10)
      {
        v48 = 58;
      }

      else
      {
        v50 = 97;
        v49 = 65;
      }

      v51 = &v63 + 1;
      v15 = 1;
      do
      {
        v52 = *v51;
        if (v52 < 0x30 || v52 >= v48)
        {
          if (v52 < 0x41 || v52 >= v49)
          {
            v18 = 0;
            if (v52 < 0x61 || v52 >= v50)
            {
              goto LABEL_127;
            }

            v53 = -87;
          }

          else
          {
            v53 = -55;
          }
        }

        else
        {
          v53 = -48;
        }

        v54 = v39 * a3;
        if ((v54 & 0xFF00) != 0)
        {
          goto LABEL_126;
        }

        v39 = v54 + (v52 + v53);
        if ((v39 >> 8))
        {
          goto LABEL_126;
        }

        ++v51;
        --v47;
      }

      while (v47);
LABEL_125:
      v15 = 0;
      v18 = v39;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_1000CD5F4()
{
  v0 = String.subscript.getter();
  v4 = sub_1000CD674(v0, v1, v2, v3);

  return v4;
}

uint64_t sub_1000CD674(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) == 0)
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v15[0] = a3;
      v15[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return static String._uncheckedFromUTF8(_:)();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  v9 = Substring.UTF8View.distance(from:to:)();
  if (!v9)
  {
    v11 = &_swiftEmptyArrayStorage;
    goto LABEL_13;
  }

  v10 = v9;
  v11 = sub_1000C3880(v9, 0);
  v12 = sub_1000CD7CC(v15, (v11 + 4), v10, a1, a2, a3, a4);

  if (v12 == v10)
  {
LABEL_13:
    v13 = v11[2];
    v14 = static String._uncheckedFromUTF8(_:)();

    return v14;
  }

  __break(1u);
LABEL_11:
  _StringObject.sharedUTF8.getter();
LABEL_4:

  return static String._uncheckedFromUTF8(_:)();
}

unint64_t sub_1000CD7CC(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_1000CD9EC(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = String.UTF8View._foreignSubscript(position:)();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = _StringObject.sharedUTF8.getter();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_1000CD9EC(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = String.UTF8View._foreignIndex(after:)();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_1000CD9EC(unsigned __int16 a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = String.UTF16View.index(_:offsetBy:)();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = String.UTF8View._foreignIndex(_:offsetBy:)();
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

unint64_t sub_1000CDA68(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1001AFA80, v2);

  if (v3 >= 6)
  {
    return 6;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1000CDAB4(_BYTE *__src, _BYTE *a2)
{
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v9 = v3;
  v8 = 0;
  v7 = 0;
  if (__src)
  {
    if (a2 != __src)
    {
      memcpy(&__dst, __src, v2);
      return __dst;
    }
  }

  return result;
}

uint64_t sub_1000CDB6C(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  v3 = type metadata accessor for __DataStorage();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  result = __DataStorage.init(bytes:length:)();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    type metadata accessor for Data.RangeReference();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

uint64_t sub_1000CDBE8(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  v3 = type metadata accessor for __DataStorage();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  result = __DataStorage.init(bytes:length:)();
  if (v2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v2 > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    return v2 << 32;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_1000CDC6C(uint64_t a1)
{
  v9 = sub_1000C4810(&qword_1001D52D0, &unk_10014A250);
  v10 = sub_1000C7E9C(&qword_1001D52D8, &qword_1001D52D0, &unk_10014A250);
  v8[0] = a1;
  v2 = sub_1000CE97C(v8, v9);
  v3 = (*v2 + 32);
  v4 = *(*v2 + 16);

  sub_1000CCD34(v3, &v3[v4], &v7);
  v5 = v7;
  sub_1000C5604(v8);
  return v5;
}

uint64_t sub_1000CDD48(uint64_t a1)
{
  if (String.count.getter())
  {
    goto LABEL_150;
  }

  result = String.count.getter();
  if (!result)
  {
    v4 = &_swiftEmptyArrayStorage;
    goto LABEL_11;
  }

  v3 = result;
  v84 = &_swiftEmptyArrayStorage;
  result = sub_1000CCDE8(0, result & ~(result >> 63), 0);
  if ((v3 & 0x8000000000000000) == 0)
  {
    v4 = v84;
    do
    {
      v5 = String.subscript.getter();
      v84 = v4;
      v8 = v4[2];
      v7 = v4[3];
      if (v8 >= v7 >> 1)
      {
        v10 = a1;
        v11 = v5;
        v12 = v6;
        sub_1000CCDE8((v7 > 1), v8 + 1, 1);
        v6 = v12;
        v5 = v11;
        a1 = v10;
        v4 = v84;
      }

      v4[2] = v8 + 1;
      v9 = &v4[2 * v8];
      v9[4] = v5;
      v9[5] = v6;
      result = String.index(after:)();
      --v3;
    }

    while (v3);
LABEL_11:
    v83 = v4[2];
    if (v83)
    {
      v13 = 0;
      v14 = 0;
      v15 = v4[2];
      while (1)
      {
        v16 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        v17 = __OFADD__(v14, 2);
        v14 += 2;
        if (v17)
        {
          v14 = 0x7FFFFFFFFFFFFFFFLL;
        }

        ++v13;
        if (v14 >= v83)
        {
          goto LABEL_19;
        }
      }

      __break(1u);
LABEL_153:
      __break(1u);
LABEL_154:
      __break(1u);
LABEL_155:
      __break(1u);
LABEL_156:
      __break(1u);
LABEL_157:
      __break(1u);
      goto LABEL_158;
    }

    v16 = 0;
LABEL_19:
    v86 = &_swiftEmptyArrayStorage;
    result = sub_1000CCDC8(0, v16 & ~(v16 >> 63), 0);
    if (v16 < 0)
    {
      goto LABEL_165;
    }

    v18 = v86;
    if (v16)
    {
      v19 = 0;
      v20 = (v4 + 4);
      do
      {
        if (v19 >= v83)
        {
          goto LABEL_153;
        }

        v21 = v19 + 2;
        if (__OFADD__(v19, 2))
        {
          v22 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v22 = v19 + 2;
        }

        if ((v19 & 0x8000000000000000) != 0)
        {
          goto LABEL_154;
        }

        v23 = v4[2];
        if (v19 >= v23)
        {
          goto LABEL_155;
        }

        if (v19 + 1 >= v23)
        {
          goto LABEL_156;
        }

        v24 = *&v20[16 * v19 + 8];
        v25 = &v20[16 * v19 + 16];
        v26 = *v25;
        v27 = v25[1];
        v84 = *&v20[16 * v19];
        v85 = v24;
        v28 = v18;
        swift_bridgeObjectRetain_n();

        v29._countAndFlagsBits = v26;
        v29._object = v27;
        String.append(_:)(v29);

        v18 = v28;
        v30 = v84;
        v86 = v28;
        v31 = v28[2];
        v32 = v18[3];
        if (v31 >= v32 >> 1)
        {
          result = sub_1000CCDC8((v32 > 1), v31 + 1, 1);
          v18 = v86;
        }

        v18[2] = v31 + 1;
        v33 = &v18[2 * v31];
        *(v33 + 4) = v30;
        *(v33 + 5) = v24;
        v19 = v22;
        --v16;
      }

      while (v16);
      if (v22 >= v83)
      {
LABEL_33:
        v34 = v18;

LABEL_34:
        v35 = v34;
        v36 = v34[2];
        if (v36)
        {
          v37 = 0;
          v38 = &_swiftEmptyArrayStorage;
          while (1)
          {
            if (v37 >= v35[2])
            {
              goto LABEL_157;
            }

            v39 = &v34[2 * v37 + 4];
            v40 = *v39;
            v41 = v39[1];
            ++v37;
            v42 = HIBYTE(v41) & 0xF;
            v43 = v40 & 0xFFFFFFFFFFFFLL;
            if ((v41 & 0x2000000000000000) != 0)
            {
              v44 = HIBYTE(v41) & 0xF;
            }

            else
            {
              v44 = v40 & 0xFFFFFFFFFFFFLL;
            }

            if (!v44)
            {
              goto LABEL_121;
            }

            if ((v41 & 0x1000000000000000) == 0)
            {
              break;
            }

            LOWORD(v40) = sub_1000CD020(v40, v41, 16);

            v35 = v34;
            if ((v40 & 0x100) == 0)
            {
LABEL_124:
              result = swift_isUniquelyReferenced_nonNull_native();
              if ((result & 1) == 0)
              {
                result = sub_1000C38F4(0, *(v38 + 2) + 1, 1, v38);
                v38 = result;
              }

              v64 = *(v38 + 2);
              v63 = *(v38 + 3);
              if (v64 >= v63 >> 1)
              {
                result = sub_1000C38F4((v63 > 1), v64 + 1, 1, v38);
                v35 = v34;
                v38 = result;
              }

              else
              {
                v35 = v34;
              }

              *(v38 + 2) = v64 + 1;
              v38[v64 + 32] = v40;
            }

LABEL_121:
            if (v37 == v36)
            {
              goto LABEL_147;
            }
          }

          if ((v41 & 0x2000000000000000) != 0)
          {
            v84 = v40;
            v85 = v41 & 0xFFFFFFFFFFFFFFLL;
            if (v40 == 43)
            {
              if (!v42)
              {
                goto LABEL_161;
              }

              if (--v42)
              {
                LOBYTE(v40) = 0;
                v55 = &v84 + 1;
                while (1)
                {
                  v56 = *v55;
                  v57 = v56 - 48;
                  if ((v56 - 48) >= 0xA)
                  {
                    if ((v56 - 65) < 6)
                    {
                      v57 = v56 - 55;
                    }

                    else
                    {
                      if ((v56 - 97) > 5)
                      {
                        goto LABEL_119;
                      }

                      v57 = v56 - 87;
                    }
                  }

                  if (v40 > 0xFu)
                  {
                    break;
                  }

                  LOBYTE(v40) = v57 + 16 * v40;
                  ++v55;
                  if (!--v42)
                  {
                    goto LABEL_120;
                  }
                }
              }
            }

            else if (v40 == 45)
            {
              if (!v42)
              {
                goto LABEL_163;
              }

              if (--v42)
              {
                LOBYTE(v40) = 0;
                v49 = &v84 + 1;
                while (1)
                {
                  v50 = *v49;
                  v51 = v50 - 48;
                  if ((v50 - 48) >= 0xA)
                  {
                    if ((v50 - 65) < 6)
                    {
                      v51 = v50 - 55;
                    }

                    else
                    {
                      if ((v50 - 97) > 5)
                      {
                        goto LABEL_119;
                      }

                      v51 = v50 - 87;
                    }
                  }

                  if (v40 > 0xFu)
                  {
                    break;
                  }

                  LODWORD(v40) = 16 * (v40 & 0xF) - v51;
                  if ((v40 & 0xFFFFFF00) != 0)
                  {
                    break;
                  }

                  ++v49;
                  if (!--v42)
                  {
                    goto LABEL_120;
                  }
                }
              }
            }

            else if (v42)
            {
              LOBYTE(v40) = 0;
              v60 = &v84;
              while (1)
              {
                v61 = *v60;
                v62 = v61 - 48;
                if ((v61 - 48) >= 0xA)
                {
                  if ((v61 - 65) < 6)
                  {
                    v62 = v61 - 55;
                  }

                  else
                  {
                    if ((v61 - 97) > 5)
                    {
                      goto LABEL_119;
                    }

                    v62 = v61 - 87;
                  }
                }

                if (v40 > 0xFu)
                {
                  break;
                }

                LOBYTE(v40) = v62 + 16 * v40;
                v60 = (v60 + 1);
                if (!--v42)
                {
                  goto LABEL_120;
                }
              }
            }

            goto LABEL_119;
          }

          if ((v40 & 0x1000000000000000) != 0)
          {
            result = (v41 & 0xFFFFFFFFFFFFFFFLL) + 32;
          }

          else
          {
            result = _StringObject.sharedUTF8.getter();
            v35 = v34;
          }

          v45 = *result;
          if (v45 == 43)
          {
            if (v43 < 1)
            {
              goto LABEL_164;
            }

            v42 = v43 - 1;
            if (v43 == 1)
            {
              goto LABEL_119;
            }

            if (result)
            {
              LOBYTE(v40) = 0;
              v52 = (result + 1);
              while (1)
              {
                v53 = *v52;
                v54 = v53 - 48;
                if ((v53 - 48) >= 0xA)
                {
                  if ((v53 - 65) < 6)
                  {
                    v54 = v53 - 55;
                  }

                  else
                  {
                    if ((v53 - 97) > 5)
                    {
                      goto LABEL_119;
                    }

                    v54 = v53 - 87;
                  }
                }

                if (v40 > 0xFu)
                {
                  goto LABEL_119;
                }

                LOBYTE(v40) = v54 + 16 * v40;
                ++v52;
                if (!--v42)
                {
                  goto LABEL_120;
                }
              }
            }
          }

          else if (v45 == 45)
          {
            if (v43 < 1)
            {
              goto LABEL_162;
            }

            v42 = v43 - 1;
            if (v43 == 1)
            {
              goto LABEL_119;
            }

            if (result)
            {
              LOBYTE(v40) = 0;
              v46 = (result + 1);
              while (1)
              {
                v47 = *v46;
                v48 = v47 - 48;
                if ((v47 - 48) >= 0xA)
                {
                  if ((v47 - 65) < 6)
                  {
                    v48 = v47 - 55;
                  }

                  else
                  {
                    if ((v47 - 97) > 5)
                    {
                      goto LABEL_119;
                    }

                    v48 = v47 - 87;
                  }
                }

                if (v40 > 0xFu)
                {
                  goto LABEL_119;
                }

                LODWORD(v40) = 16 * (v40 & 0xF) - v48;
                if ((v40 & 0xFFFFFF00) != 0)
                {
                  goto LABEL_119;
                }

                ++v46;
                if (!--v42)
                {
                  goto LABEL_120;
                }
              }
            }
          }

          else
          {
            if (!v43)
            {
LABEL_119:
              LOBYTE(v40) = 0;
              LOBYTE(v42) = 1;
LABEL_120:
              LOBYTE(v86) = v42;
              if ((v42 & 1) == 0)
              {
                goto LABEL_124;
              }

              goto LABEL_121;
            }

            if (result)
            {
              LOBYTE(v40) = 0;
              while (1)
              {
                v58 = *result;
                v59 = v58 - 48;
                if ((v58 - 48) >= 0xA)
                {
                  if ((v58 - 65) < 6)
                  {
                    v59 = v58 - 55;
                  }

                  else
                  {
                    if ((v58 - 97) > 5)
                    {
                      goto LABEL_119;
                    }

                    v59 = v58 - 87;
                  }
                }

                if (v40 > 0xFu)
                {
                  goto LABEL_119;
                }

                LOBYTE(v40) = v59 + 16 * v40;
                ++result;
                if (!--v43)
                {
                  LOBYTE(v42) = 0;
                  goto LABEL_120;
                }
              }
            }
          }

          LOBYTE(v40) = 0;
          LOBYTE(v42) = 0;
          goto LABEL_120;
        }

        v38 = &_swiftEmptyArrayStorage;
LABEL_147:

        v80 = String.count.getter();

        v81 = *(v38 + 2);
        if (!v81)
        {
          goto LABEL_166;
        }

        if (v80 / v81 == 2)
        {
          v82 = sub_1000CDC6C(v38);

          return v82;
        }

LABEL_150:

        return 0;
      }
    }

    else
    {
      if (!v83)
      {
        v34 = v86;

        goto LABEL_34;
      }

      v21 = 0;
    }

    v65 = &v4[2 * v21 + 7];
    while (1)
    {
      v66 = v21 + 2;
      v67 = __OFADD__(v21, 2);
      if ((v21 & 0x8000000000000000) != 0)
      {
        break;
      }

      v68 = v4[2];
      if (v21 >= v68)
      {
        goto LABEL_159;
      }

      v69 = v21 + 1;
      if (v69 >= v68)
      {
        goto LABEL_160;
      }

      v70 = *(v65 - 2);
      v71 = *(v65 - 1);
      v72 = *v65;
      v84 = *(v65 - 3);
      v85 = v70;
      v73 = v18;
      swift_bridgeObjectRetain_n();

      v74._countAndFlagsBits = v71;
      v74._object = v72;
      String.append(_:)(v74);

      v18 = v73;
      v75 = v84;
      v86 = v73;
      v76 = v73[2];
      v77 = v18[3];
      if (v76 >= v77 >> 1)
      {
        result = sub_1000CCDC8((v77 > 1), v76 + 1, 1);
        v18 = v86;
      }

      v65 += 4;
      v18[2] = v76 + 1;
      v78 = &v18[2 * v76];
      *(v78 + 4) = v75;
      *(v78 + 5) = v70;
      v79 = !v67;
      v21 = v69 + 1;
      if (v66 >= v83)
      {
        v79 = 0;
      }

      if (!v79)
      {
        goto LABEL_33;
      }
    }

LABEL_158:
    __break(1u);
LABEL_159:
    __break(1u);
LABEL_160:
    __break(1u);
LABEL_161:
    __break(1u);
LABEL_162:
    __break(1u);
LABEL_163:
    __break(1u);
LABEL_164:
    __break(1u);
LABEL_165:
    __break(1u);
LABEL_166:
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_1000CE590(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000C4810(&qword_1001D52B8, &qword_10014A238);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_1000C39E8(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}