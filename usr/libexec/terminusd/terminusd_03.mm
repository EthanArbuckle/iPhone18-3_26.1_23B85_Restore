void sub_100041DD8(uint64_t a1, void *a2)
{
  v12 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = WeakRetained[4];
    v6 = _NRCopyLogObjectForNRUUID();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v8 = v4[4];
      v9 = _NRCopyLogObjectForNRUUID();
      v10 = [v4 copyDescription];
      v11 = *(a1 + 32);
      _NRLogWithArgs();
    }
  }
}

void sub_100041EB4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v10 = WeakRetained;
    v3 = WeakRetained[4];
    v4 = _NRCopyLogObjectForNRUUID();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    WeakRetained = v10;
    if (IsLevelEnabled)
    {
      v6 = v10[4];
      v7 = _NRCopyLogObjectForNRUUID();
      v8 = [v10 copyDescription];
      v9 = *(a1 + 32);
      _NRLogWithArgs();

      WeakRetained = v10;
    }
  }
}

void sub_100041F88(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = WeakRetained[4];
    v7 = _NRCopyLogObjectForNRUUID();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v9 = v5[4];
      v10 = _NRCopyLogObjectForNRUUID();
      v11 = [v5 copyDescription];
      LogString = *(a1 + 32);
      v38 = v3;
      v35 = 990;
      v36 = v11;
      v33 = "";
      v34 = "[NRLinkWiFi setupIKECallbacksClassC]_block_invoke_7";
      _NRLogWithArgs();
    }

    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v39 = v3;
    v12 = v3;
    v13 = [v12 countByEnumeratingWithState:&v40 objects:v44 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v41;
      do
      {
        for (i = 0; i != v14; i = i + 1)
        {
          if (*v41 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v40 + 1) + 8 * i);
          v18 = [v17 notifyStatus];
          v19 = [v17 notifyData];
          v20 = v5[4];
          v21 = _NRCopyLogObjectForNRUUID();
          v22 = _NRLogIsLevelEnabled();

          if (v22)
          {
            v23 = v5[4];
            v24 = _NRCopyLogObjectForNRUUID();
            LogString = v18;
            v38 = v19;
            v35 = 1319;
            v36 = [v5 copyDescription];
            v33 = "";
            v34 = "[NRLinkWiFi handleNotifyCode:payload:]";
            _NRLogWithArgs();
          }

          switch(v18)
          {
            case 0xBDDF:
              v26 = [[NSString alloc] initWithData:v19 encoding:4];
              v27 = v5[4];
              v28 = _NRCopyLogObjectForNRUUID();
              v29 = _NRLogIsLevelEnabled();

              if (v29)
              {
                v30 = v5[4];
                v31 = _NRCopyLogObjectForNRUUID();
                v36 = [v5 copyDescription];
                LogString = _NRKeyCreateLogString();
                v35 = 1327;
                v33 = "";
                v34 = "[NRLinkWiFi handleNotifyCode:payload:]";
                _NRLogWithArgs();
              }

              v32 = [v5 nrUUID];
              sub_1001756C0(NRDLocalDevice, v26, v32);

              break;
            case 0xC60D:
              sub_100171CD8(NRDLocalDevice, v19, v5[4]);
              [v5 checkProxyAgentWithForceUpdate:0];
              break;
            case 0xC60E:
              v25 = [v5 linkDelegate];
              [v25 linkDidReceiveData:v5 data:v19];

              break;
          }
        }

        v14 = [v12 countByEnumeratingWithState:&v40 objects:v44 count:16];
      }

      while (v14);
    }

    v3 = v39;
  }
}

void sub_10004230C(char *val)
{
  if ((val[249] & 1) == 0)
  {
    val[249] = 1;
    v1 = *(val + 263);
    if ((5 * v1) >= 0x1F)
    {
      *(val + 263) = 0;
      v1 = *(val + 263);
    }

    *(val + 263) = v1 + 1;
    objc_initWeak(&location, val);
    v3 = dispatch_time(0x8000000000000000, 1000000000 * (5 * *(val + 263)));
    v4 = [val queue];
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_100043214;
    v5[3] = &unk_1001FC730;
    objc_copyWeak(&v6, &location);
    dispatch_after(v3, v4, v5);

    objc_destroyWeak(&v6);
    objc_destroyWeak(&location);
  }
}

void sub_100042448(uint64_t a1)
{
  if ([a1 state] == 255)
  {
    v3 = *(a1 + 32);
    v4 = _NRCopyLogObjectForNRUUID();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v6 = *(a1 + 32);
      v14 = _NRCopyLogObjectForNRUUID();
      v12 = [a1 copyDescription];
      _NRLogWithArgs();
    }
  }

  else
  {
    if ([a1 state] == 8)
    {
      v2 = @"restarting IKE session while link is ready";
    }

    else
    {
      v7 = *(a1 + 32);
      v8 = _NRCopyLogObjectForNRUUID();
      v9 = _NRLogIsLevelEnabled();

      if (v9)
      {
        v10 = *(a1 + 32);
        v11 = _NRCopyLogObjectForNRUUID();
        v13 = [a1 copyDescription];
        _NRLogWithArgs();
      }

      if (++*(a1 + 251) < 0xAu)
      {
        v15.receiver = a1;
        v15.super_class = NRLinkWiFi;
        objc_msgSendSuper2(&v15, "invalidateIKESessionForClass:", 3);
        [a1 setIkeClassDEstablished:0];
        *(a1 + 83) = 0;
        [a1 invalidateIKESession:a1 + 295];
        *(a1 + 259) = 0;
        sub_100042650(a1);
        return;
      }

      v2 = @"ClassC session hit max retries";
    }

    [a1 cancelWithReason:v2];
  }
}

void sub_100042650(_BYTE *a1)
{
  v1 = a1;
  if (a1[248] != 1)
  {
    if (a1[112] == 2)
    {
      if (![a1 hasCompanionDatapath] || objc_msgSend(v1, "virtualInterface"))
      {
        if (*(v1 + 295))
        {
          return;
        }

        v4 = [v1 nrUUID];
        v5 = sub_100163A30(NRDLocalDevice, v4);

        if (v5)
        {
          v6 = v5[10];

          if (v6)
          {
            v7 = sub_100146654(v5, 1);
            v8 = [v1 localInterfaceName];
            [v7 setOutgoingInterfaceName:v8];

            v9 = [v1 remoteOuterEndpoint];
            [v7 setRemoteEndpoint:v9];

            [v7 setRequestChildlessSA:{objc_msgSend(v1, "hasCompanionDatapath") ^ 1}];
            [v7 setRandomizeLocalPort:1];
            v10 = sub_100147400(1, v5, 3);
            v41.receiver = v1;
            v41.super_class = NRLinkWiFi;
            objc_msgSendSuper2(&v41, "invalidateIKESessionForClass:", 3);
            [v1 setIkeClassDEstablished:0];
            *(v1 + 83) = 0;
            [v1 invalidateIKESession:v1 + 295];
            v41.receiver = 0;
            v41.super_class = &v41;
            v43 = 0;
            v42 = 0x2020000000;
            v11 = [NEIKEv2Session alloc];
            v12 = v5;
            v13 = sub_100146D34(0, 0);
            [v13 setMode:2];
            [v13 setReplayWindowSize:4];
            sub_100147008(v13, v12, 1);

            v14 = *(v1 + 8);
            v40[0] = _NSConcreteStackBlock;
            v40[1] = 3221225472;
            v40[2] = sub_100042D40;
            v40[3] = &unk_1001FAA10;
            v40[4] = &v41;
            v15 = [v11 initWithIKEConfig:v7 firstChildConfig:v13 sessionConfig:v10 queue:v14 ipsecInterface:objc_msgSend(v1 ikeSocketHandler:"virtualInterface") kernelSASessionName:v40 packetDelegate:{@"terminusIKE-WiFi-ClassC", 0}];
            v16 = *(v1 + 295);
            *(v1 + 295) = v15;

            if (*(v1 + 295))
            {
              sub_100040BCC(v1);
              v17 = *(v1 + 311);
              if (v17)
              {
                ++v17[9];
              }

              v18 = nr_absolute_time();
              v19 = *(v1 + 311);
              if (v19)
              {
                v19[5] = v18;
              }

              [v1 reportEvent:3015 detailsFormat:@"ClassC %@", *(v1 + 295)];
              [*(v1 + 295) connect];
            }

            else
            {
              sub_100042DA4(v1, *(v41.super_class + 6));
            }

            _Block_object_dispose(&v41, 8);

            goto LABEL_23;
          }

          v20 = *(v1 + 32);
          v21 = _NRCopyLogObjectForNRUUID();
          IsLevelEnabled = _NRLogIsLevelEnabled();

          if (!IsLevelEnabled)
          {
LABEL_23:

            return;
          }

          v23 = *(v1 + 32);
          v24 = _NRCopyLogObjectForNRUUID();
          v25 = [v1 copyDescription];
          _NRLogWithArgs();
LABEL_22:

          goto LABEL_23;
        }

LABEL_31:
        v34 = *(v1 + 32);
        v35 = _NRCopyLogObjectForNRUUID();
        v36 = _NRLogIsLevelEnabled();

        if (!v36)
        {
          goto LABEL_23;
        }

        v37 = *(v1 + 32);
        v24 = _NRCopyLogObjectForNRUUID();
        v25 = [v1 copyDescription];
        _NRLogWithArgs();
        goto LABEL_22;
      }

      v29 = sub_100040008();
      v30 = _NRLogIsLevelEnabled();

      if (v30)
      {
        v31 = sub_100040008();
        _NRLogWithArgs();
      }
    }

    else
    {
      v26 = sub_100040008();
      v27 = _NRLogIsLevelEnabled();

      if (v27)
      {
        v28 = sub_100040008();
        _NRLogWithArgs();
      }
    }

    v1 = _os_log_pack_size();
    v5 = (&v38 - ((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0));
    v32 = *__error();
    v33 = _os_log_pack_fill();
    *v33 = 136446210;
    *(v33 + 4) = "[NRLinkWiFi setupIPsec]";
    sub_100040008();
    _NRLogAbortWithPack();
    __break(1u);
    goto LABEL_31;
  }

  objc_opt_self();
  if (qword_100228E88 != -1)
  {
    dispatch_once(&qword_100228E88, &stru_1001FA180);
  }

  v39 = qword_100228E80;
  v2 = [v1 localInterfaceName];
  v3 = [v1 localOuterEndpoint];
  sub_100016A08(v39, v1, v2, v3);
}

uint64_t sub_100042D40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = getpid();
  v10 = *(*(a1 + 32) + 8) + 24;

  return _NEHelperGetIKESocketWithResult(a3, a4, a5, v9, v10);
}

void sub_100042DA4(uint64_t a1, const char *a2)
{
  ++*(a1 + 259);
  if ([a1 subtype] == 103 || objc_msgSend(a1, "subtype") == 102 || objc_msgSend(a1, "subtype") == 104)
  {
    v4 = 1000000000;
  }

  else
  {
    v4 = 250000000;
  }

  if (*(a1 + 259) > 4u)
  {
    if (strerror_r(a2, __strerrbuf, 0x80uLL))
    {
      LOBYTE(__strerrbuf[0]) = 0;
    }

    if (qword_100228F90 != -1)
    {
      dispatch_once(&qword_100228F90, &stru_1001FAA30);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_100228F90 != -1)
      {
        dispatch_once(&qword_100228F90, &stru_1001FAA30);
      }

      v6 = qword_100228F88;
      v11 = a2;
      v12 = __strerrbuf;
      v10 = [a1 copyDescription];
      _NRLogWithArgs();
    }

    [a1 cancelWithReason:{@"IKE session creation hit max retries", v10, v11, v12}];
  }

  else
  {
    if (a2 == 2 || a2 == 51)
    {
      if (strerror_r(a2, __strerrbuf, 0x80uLL))
      {
        LOBYTE(__strerrbuf[0]) = 0;
      }

      if (qword_100228F90 != -1)
      {
        dispatch_once(&qword_100228F90, &stru_1001FAA30);
      }

      if (_NRLogIsLevelEnabled())
      {
        if (qword_100228F90 != -1)
        {
          dispatch_once(&qword_100228F90, &stru_1001FAA30);
        }

        v5 = qword_100228F88;
        v15 = a2;
        v16 = __strerrbuf;
        v13 = [a1 copyDescription];
        v14 = *(a1 + 259);
        v11 = "[NRLinkWiFi retrySetupIPsec:]";
        v12 = 272;
        v10 = "";
        _NRLogWithArgs();
      }
    }

    else
    {
      if (strerror_r(a2, __strerrbuf, 0x80uLL))
      {
        LOBYTE(__strerrbuf[0]) = 0;
      }

      if (qword_100228F90 != -1)
      {
        dispatch_once(&qword_100228F90, &stru_1001FAA30);
      }

      if (_NRLogIsLevelEnabled())
      {
        if (qword_100228F90 != -1)
        {
          dispatch_once(&qword_100228F90, &stru_1001FAA30);
        }

        v7 = qword_100228F88;
        v12 = a2;
        v13 = __strerrbuf;
        v10 = [a1 copyDescription];
        v11 = *(a1 + 259);
        _NRLogWithArgs();
      }
    }

    [a1 reportEvent:{3026, v10, v11, v12, v13, v14, v15, v16}];
    objc_initWeak(__strerrbuf, a1);
    v8 = dispatch_time(0, v4);
    v9 = [a1 queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000431BC;
    block[3] = &unk_1001FC730;
    objc_copyWeak(&v18, __strerrbuf);
    dispatch_after(v8, v9, block);

    objc_destroyWeak(&v18);
    objc_destroyWeak(__strerrbuf);
  }
}

void sub_1000431BC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = [WeakRetained state] == 255;
    WeakRetained = v3;
    if (!v2)
    {
      sub_100042650(v3);
      WeakRetained = v3;
    }
  }
}

void sub_100043214(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    WeakRetained[249] = 0;
    v2 = WeakRetained;
    sub_100042448(WeakRetained);
    WeakRetained = v2;
  }
}

char *sub_100043264(char *result)
{
  if (!result)
  {
    return result;
  }

  v1 = result;
  if (!objc_opt_class())
  {
    v2 = *(v1 + 4);
    v3 = _NRCopyLogObjectForNRUUID();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v5 = *(v1 + 4);
      v6 = _NRCopyLogObjectForNRUUID();
      v16 = [v1 copyDescription];
      _NRLogWithArgs();
    }
  }

  if (*(v1 + 303))
  {
    goto LABEL_8;
  }

  v7 = objc_alloc_init(NWNetworkOfInterestManager);
  v8 = *(v1 + 303);
  *(v1 + 303) = v7;

  v9 = *(v1 + 303);
  if (v9)
  {
    v10 = v9;
    v11 = [v1 queue];
    [v10 setQueue:v11];

    [*(v1 + 303) setDelegate:v1];
LABEL_8:
    v12 = nr_absolute_time();
    v13 = *(v1 + 311);
    if (v13)
    {
      *(v13 + 112) = v12;
      v14 = *(v1 + 311);
      if (v14)
      {
        ++v14[13];
      }
    }

    else
    {
      v14 = 0;
    }

    v15 = *(v1 + 303);

    return [v15 trackNOIAnyForInterfaceType:1 options:0];
  }

  if (qword_100228F90 != -1)
  {
    dispatch_once(&qword_100228F90, &stru_1001FAA30);
  }

  result = _NRLogIsLevelEnabled();
  if (result)
  {
    if (qword_100228F90 != -1)
    {
      dispatch_once(&qword_100228F90, &stru_1001FAA30);
    }

    return _NRLogWithArgs();
  }

  return result;
}

void sub_1000434AC(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v11 = WeakRetained;
    v4 = WeakRetained[4];
    v5 = _NRCopyLogObjectForNRUUID();
    if (a2)
    {
      IsLevelEnabled = _NRLogIsLevelEnabled();

      WeakRetained = v11;
      if (!IsLevelEnabled)
      {
        goto LABEL_7;
      }
    }

    else
    {
      v7 = _NRLogIsLevelEnabled();

      WeakRetained = v11;
      if (!v7)
      {
        goto LABEL_7;
      }
    }

    v8 = v11[4];
    v9 = _NRCopyLogObjectForNRUUID();
    v10 = [v11 copyDescription];
    _NRLogWithArgs();

    WeakRetained = v11;
  }

LABEL_7:
}

void sub_1000435D0(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained && [WeakRetained state] != 255)
  {
    if (v3)
    {
      v6 = *(v5 + 295);
      v7 = [v3 dataUsingEncoding:4];
      v8 = [[NEIKEv2PrivateNotify alloc] initWithNotifyStatus:48607 notifyData:v7];
      v9 = *(v5 + 4);
      v10 = _NRCopyLogObjectForNRUUID();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      if (IsLevelEnabled)
      {
        v12 = *(v5 + 4);
        v13 = _NRCopyLogObjectForNRUUID();
        v23 = 1229;
        v24 = [v5 copyDescription];
        v21 = "";
        v22 = "[NRLinkWiFi getOrSendIDSDeviceID]_block_invoke";
        _NRLogWithArgs();
      }

      v28 = v8;
      v14 = [NSArray arrayWithObjects:&v28 count:1, v21, v22, v23, v24];
      v15 = [v5 queue];
      v26[0] = _NSConcreteStackBlock;
      v26[1] = 3221225472;
      v26[2] = sub_100043874;
      v26[3] = &unk_1001FC018;
      objc_copyWeak(&v27, (a1 + 32));
      [v6 sendPrivateNotifies:v14 maxRetries:10 retryIntervalInMilliseconds:1000 callbackQueue:v15 callback:v26];

      objc_destroyWeak(&v27);
    }

    else
    {
      v16 = *(v5 + 4);
      v17 = _NRCopyLogObjectForNRUUID();
      v18 = _NRLogIsLevelEnabled();

      if (v18)
      {
        v19 = *(v5 + 4);
        v20 = _NRCopyLogObjectForNRUUID();
        v25 = [v5 copyDescription];
        _NRLogWithArgs();
      }
    }
  }
}

void sub_100043874(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v11 = WeakRetained;
    v4 = WeakRetained[4];
    v5 = _NRCopyLogObjectForNRUUID();
    if (a2)
    {
      IsLevelEnabled = _NRLogIsLevelEnabled();

      WeakRetained = v11;
      if (!IsLevelEnabled)
      {
        goto LABEL_7;
      }
    }

    else
    {
      v7 = _NRLogIsLevelEnabled();

      WeakRetained = v11;
      if (!v7)
      {
        goto LABEL_7;
      }
    }

    v8 = v11[4];
    v9 = _NRCopyLogObjectForNRUUID();
    v10 = [v11 copyDescription];
    _NRLogWithArgs();

    WeakRetained = v11;
  }

LABEL_7:
}

void sub_100043BA4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_100043BC8(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v21 = WeakRetained;
    v4 = [WeakRetained state] == 255;
    WeakRetained = v21;
    if (!v4)
    {
      v21[83] = 0;
      if (!a2)
      {
        v11 = *(v21 + 4);
        v12 = _NRCopyLogObjectForNRUUID();
        IsLevelEnabled = _NRLogIsLevelEnabled();

        if (IsLevelEnabled)
        {
          v14 = *(v21 + 4);
          v15 = _NRCopyLogObjectForNRUUID();
          v18 = 762;
          v19 = [v21 copyDescription];
          v16 = "";
          v17 = "[NRLinkWiFi checkPeerAvailabilityWithForceAggressive:]_block_invoke";
          _NRLogWithArgs();
        }

        [v21 cancelWithReason:{@"Dead Peer Detection", v16, v17, v18, v19}];
        goto LABEL_11;
      }

      v5 = *(v21 + 311);
      if (v5)
      {
        ++v5[16];
      }

      v6 = *(v21 + 4);
      v7 = _NRCopyLogObjectForNRUUID();
      v8 = _NRLogIsLevelEnabled();

      WeakRetained = v21;
      if (v8)
      {
        v9 = *(v21 + 4);
        v10 = _NRCopyLogObjectForNRUUID();
        v20 = [v21 copyDescription];
        _NRLogWithArgs();

LABEL_11:
        WeakRetained = v21;
      }
    }
  }
}

void sub_100043E38(uint64_t a1)
{
  if (!a1 || *(a1 + 271) == -1)
  {
    return;
  }

  if (!&_symptom_new)
  {
    v7 = *(a1 + 32);
    v8 = _NRCopyLogObjectForNRUUID();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (!IsLevelEnabled)
    {
      return;
    }

    v10 = *(a1 + 32);
    v23 = _NRCopyLogObjectForNRUUID();
    v22 = [a1 copyDescription];
    _NRLogWithArgs();

    goto LABEL_28;
  }

  if ([a1 hasCompanionDatapath])
  {
    [a1 virtualInterface];
    v2 = NEVirtualInterfaceCopyName();
    if (v2)
    {
      goto LABEL_6;
    }

LABEL_16:
    v11 = *(a1 + 32);
    v12 = _NRCopyLogObjectForNRUUID();
    v13 = _NRLogIsLevelEnabled();

    if (v13)
    {
      v14 = *(a1 + 32);
      v15 = _NRCopyLogObjectForNRUUID();
      v21 = [a1 copyDescription];
      _NRLogWithArgs();
    }

    v16 = 0;
    goto LABEL_29;
  }

  v2 = [a1 localInterfaceName];
  if (!v2)
  {
    goto LABEL_16;
  }

LABEL_6:
  v23 = v2;
  if (qword_100229278 != -1)
  {
    dispatch_once(&qword_100229278, &stru_1001FC410);
  }

  if (!symptom_new())
  {
    if (qword_100228F90 != -1)
    {
      dispatch_once(&qword_100228F90, &stru_1001FAA30);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_100228F90 != -1)
      {
        dispatch_once(&qword_100228F90, &stru_1001FAA30);
      }

      _NRLogWithArgs();
    }

    goto LABEL_28;
  }

  [v23 length];
  [v23 UTF8String];
  symptom_set_additional_qualifier();
  v3 = symptom_send();
  notify_cancel(*(a1 + 271));
  *(a1 + 271) = -1;
  v4 = *(a1 + 32);
  v5 = _NRCopyLogObjectForNRUUID();
  if (v3)
  {
    v6 = _NRLogIsLevelEnabled();

    if (v6)
    {
      goto LABEL_27;
    }
  }

  else
  {
    v17 = _NRLogIsLevelEnabled();

    if (v17)
    {
LABEL_27:
      v18 = *(a1 + 32);
      v19 = _NRCopyLogObjectForNRUUID();
      v20 = [a1 copyDescription];
      _NRLogWithArgs();
    }
  }

LABEL_28:
  v16 = v23;
LABEL_29:
}

void sub_100044684(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000446AC(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v17 = WeakRetained;
    if ([WeakRetained state] == 255)
    {
      v4 = *(v17 + 4);
      v5 = _NRCopyLogObjectForNRUUID();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      WeakRetained = v17;
      if (!IsLevelEnabled)
      {
        goto LABEL_10;
      }

      v7 = *(v17 + 4);
      v8 = _NRCopyLogObjectForNRUUID();
      v15 = [v17 copyDescription];
      _NRLogWithArgs();
    }

    else if (*(v17 + 271) == a2)
    {
      [v17 reportEvent:11004 detailsFormat:@"#%u", ++*(v17 + 267)];
      [v17 checkPeerAvailabilityWithForceAggressive:0];
    }

    else
    {
      v9 = *(v17 + 4);
      v10 = _NRCopyLogObjectForNRUUID();
      v11 = _NRLogIsLevelEnabled();

      WeakRetained = v17;
      if (!v11)
      {
        goto LABEL_10;
      }

      v12 = *(v17 + 4);
      v13 = _NRCopyLogObjectForNRUUID();
      v14 = [v17 copyDescription];
      v16 = *(v17 + 271);
      _NRLogWithArgs();
    }

    WeakRetained = v17;
  }

LABEL_10:
}

void sub_100045068(uint64_t a1)
{
  if (a1)
  {
    v2 = sub_100163A30(NRDLocalDevice, *(a1 + 32));
    v3 = objc_alloc_init(NRPairingParameters);
    v4 = [a1 localInterfaceName];
    if (v3)
    {
      objc_storeStrong(&v3->_localInterfaceName, v4);
    }

    v5 = [a1 localOuterEndpoint];
    if (v3)
    {
      objc_storeStrong(&v3->_localEndpoint, v5);
    }

    v6 = [a1 remoteOuterEndpoint];
    v7 = v6;
    if (v3)
    {
      objc_storeStrong(&v3->_remoteEndpoint, v6);

      v3->_isResponder = *(a1 + 248);
      v3->_serializeIKESessions = 1;
      v3->_deferIKESessionInvalidation = *(a1 + 248);
    }

    else
    {
    }

    objc_initWeak(&location, a1);
    v8 = sub_100012448([NRPairingClient alloc], *(a1 + 8), *(a1 + 32), &v3->super.isa);
    objc_initWeak(&from, v8);
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_100045AD0;
    v19[3] = &unk_1001FA998;
    objc_copyWeak(&v20, &location);
    objc_copyWeak(&v21, &from);
    v9 = v19;
    v10 = v9;
    if (v8 && (*(v8 + 10) & 1) == 0)
    {
      v11 = objc_retainBlock(v9);
      v12 = v8[18];
      v8[18] = v11;
    }

    sub_1000127C0(v8);
    [a1 setPairingClient:v8];
    v13 = *(a1 + 32);
    v14 = _NRCopyLogObjectForNRUUID();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v16 = *(a1 + 32);
      v17 = _NRCopyLogObjectForNRUUID();
      v18 = [a1 copyDescription];
      _NRLogWithArgs();
    }

    objc_destroyWeak(&v21);
    objc_destroyWeak(&v20);
    objc_destroyWeak(&from);

    objc_destroyWeak(&location);
  }
}

void sub_10004530C(uint64_t a1)
{
  if (!a1)
  {
    return;
  }

  v2 = *(a1 + 32);
  v3 = _NRCopyLogObjectForNRUUID();
  IsLevelEnabled = _NRLogIsLevelEnabled();

  if (IsLevelEnabled)
  {
    v5 = *(a1 + 32);
    v6 = _NRCopyLogObjectForNRUUID();
    v22 = 461;
    v23 = [a1 copyDescription];
    v20 = "";
    v21 = "[NRLinkWiFi initiateConnection]";
    _NRLogWithArgs();
  }

  if (*(a1 + 248))
  {
    goto LABEL_8;
  }

  v7 = [a1 remoteOuterEndpoint];

  if (v7)
  {
    if ([a1 setupVirtualInterface])
    {
      [a1 setPowerAssertionState:1];
LABEL_8:
      [a1 reportEvent:{3001, v20, v21, v22, v23}];

      sub_100042650(a1);
      return;
    }

    if ([a1 state] != 255)
    {
      v8 = *(a1 + 32);
      v9 = _NRCopyLogObjectForNRUUID();
      v10 = _NRLogIsLevelEnabled();

      if (v10)
      {
        v11 = *(a1 + 32);
        v12 = _NRCopyLogObjectForNRUUID();
        v22 = 227;
        v23 = [a1 copyDescription];
        v20 = "";
        v21 = "[NRLinkWiFi retrySetupVirtualInterface]";
        _NRLogWithArgs();
      }

      if (++*(a1 + 255) > 9u)
      {
        v15 = *(a1 + 32);
        v16 = _NRCopyLogObjectForNRUUID();
        v17 = _NRLogIsLevelEnabled();

        if (v17)
        {
          v18 = *(a1 + 32);
          v19 = _NRCopyLogObjectForNRUUID();
          v20 = [a1 copyDescription];
          _NRLogWithArgs();
        }

        [a1 cancelWithReason:{@"IPsec interface setup hit max retries", v20, v21, v22, v23}];
      }

      else
      {
        [a1 reportEvent:3025];
        objc_initWeak(&location, a1);
        v13 = dispatch_time(0, 250000000);
        v14 = [a1 queue];
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_100045A6C;
        block[3] = &unk_1001FC730;
        objc_copyWeak(&v25, &location);
        dispatch_after(v13, v14, block);

        objc_destroyWeak(&v25);
        objc_destroyWeak(&location);
      }
    }
  }

  else
  {

    [a1 cancelWithReason:@"No remote outer endpoint present"];
  }
}

void sub_100045628(uint64_t a1)
{
  if (a1 && !*(a1 + 327))
  {
    bonjour_service = nw_browse_descriptor_create_bonjour_service("_nr._tcp", "local");
    v3 = nw_parameters_create();
    nw_parameters_set_use_awdl();
    v4 = [a1 localInterfaceName];
    [v4 UTF8String];
    v5 = nw_interface_create_with_name();
    nw_parameters_require_interface(v3, v5);
    v6 = nw_browser_create(bonjour_service, v3);
    objc_initWeak(&location, a1);
    state_changed_handler[0] = _NSConcreteStackBlock;
    state_changed_handler[1] = 3221225472;
    state_changed_handler[2] = sub_1000458AC;
    state_changed_handler[3] = &unk_1001FA9C0;
    objc_copyWeak(&v17, &location);
    nw_browser_set_state_changed_handler(v6, state_changed_handler);
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_100045998;
    handler[3] = &unk_1001FA9E8;
    objc_copyWeak(&v15, &location);
    nw_browser_set_browse_results_changed_handler(v6, handler);
    v7 = [a1 queue];
    nw_browser_set_queue(v6, v7);

    nw_browser_start(v6);
    objc_storeStrong((a1 + 327), v6);
    v8 = *(a1 + 32);
    v9 = _NRCopyLogObjectForNRUUID();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v11 = *(a1 + 32);
      v12 = _NRCopyLogObjectForNRUUID();
      v13 = [a1 copyDescription];
      _NRLogWithArgs();
    }

    objc_destroyWeak(&v15);
    objc_destroyWeak(&v17);
    objc_destroyWeak(&location);
  }
}

void sub_10004587C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 104));
  _Unwind_Resume(a1);
}

void sub_1000458AC(uint64_t a1, uint64_t a2, void *a3)
{
  v12 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    if ([WeakRetained state] != 255)
    {
      v6 = v5[4];
      v7 = _NRCopyLogObjectForNRUUID();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      if (IsLevelEnabled)
      {
        v9 = v5[4];
        v10 = _NRCopyLogObjectForNRUUID();
        v11 = [v5 copyDescription];
        _NRLogWithArgs();
      }
    }
  }
}

void sub_100045998(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v9 = WeakRetained;
    v2 = [WeakRetained state] == 255;
    WeakRetained = v9;
    if (!v2)
    {
      v3 = v9[4];
      v4 = _NRCopyLogObjectForNRUUID();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      WeakRetained = v9;
      if (IsLevelEnabled)
      {
        v6 = v9[4];
        v7 = _NRCopyLogObjectForNRUUID();
        v8 = [v9 copyDescription];
        _NRLogWithArgs();

        WeakRetained = v9;
      }
    }
  }
}

void sub_100045A6C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = [WeakRetained state] == 255;
    WeakRetained = v3;
    if (!v2)
    {
      [v3 setStartRequested:0];
      [v3 start];
      WeakRetained = v3;
    }
  }
}

void sub_100045AD0(uint64_t a1, int a2, unsigned int a3)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v22 = WeakRetained;
    v7 = [WeakRetained state] == 255;
    WeakRetained = v22;
    if (!v7)
    {
      v8 = objc_loadWeakRetained((a1 + 40));
      if (!v8)
      {
        goto LABEL_30;
      }

      v9 = [v22 pairingClient];

      if (v9 != v8)
      {
        goto LABEL_30;
      }

      v10 = [v22 pairingClient];
      v11 = v10;
      if (v10)
      {
        v12 = *(v10 + 48);
      }

      else
      {
        LOBYTE(v12) = 0;
      }

      v13 = objc_alloc_init(NSMutableString);
      v14 = v13;
      if (v12)
      {
        [v13 appendFormat:@"PairingSessionConnected | "];
        if ((v12 & 2) == 0)
        {
LABEL_9:
          if ((v12 & 4) == 0)
          {
            goto LABEL_10;
          }

          goto LABEL_17;
        }
      }

      else if ((v12 & 2) == 0)
      {
        goto LABEL_9;
      }

      [v14 appendFormat:@"ClassDVerified | "];
      if ((v12 & 4) == 0)
      {
LABEL_10:
        if ((v12 & 8) == 0)
        {
          goto LABEL_11;
        }

        goto LABEL_18;
      }

LABEL_17:
      [v14 appendFormat:@"ClassCVerified | "];
      if ((v12 & 8) == 0)
      {
LABEL_11:
        if ((v12 & 0x10) == 0)
        {
          goto LABEL_12;
        }

        goto LABEL_19;
      }

LABEL_18:
      [v14 appendFormat:@"ClassAVerified | "];
      if ((v12 & 0x10) == 0)
      {
LABEL_12:

        if (a3)
        {
LABEL_13:
          if (a3 > 8)
          {
            v15 = @"None";
          }

          else
          {
            v15 = *(&off_1001FA108 + (a3 - 1));
          }

          [v22 cancelWithReason:{@"pairing client error: %@ mask: %@", v15, v14}];
LABEL_29:

LABEL_30:
          WeakRetained = v22;
          goto LABEL_31;
        }

LABEL_20:
        if ((a2 - 1) > 6)
        {
          v15 = @"Invalid";
        }

        else
        {
          v15 = *(&off_1001FA148 + (a2 - 1));
        }

        v16 = v22[4];
        v17 = _NRCopyLogObjectForNRUUID();
        IsLevelEnabled = _NRLogIsLevelEnabled();

        if (IsLevelEnabled)
        {
          v19 = v22[4];
          v20 = _NRCopyLogObjectForNRUUID();
          v21 = [v22 copyDescription];
          _NRLogWithArgs();
        }

        if (a2 == 5)
        {
          sub_10004530C(v22);
        }

        goto LABEL_29;
      }

LABEL_19:
      [v14 appendFormat:@"PairingCompleted | "];

      if (a3)
      {
        goto LABEL_13;
      }

      goto LABEL_20;
    }
  }

LABEL_31:
}

id sub_100046E64()
{
  if (qword_100228FA0 != -1)
  {
    dispatch_once(&qword_100228FA0, &stru_1001FAAA0);
  }

  v1 = qword_100228F98;

  return v1;
}

void sub_100046EB8(id a1)
{
  v1 = os_log_create("com.apple.networkrelay", "");
  v2 = qword_100228F98;
  qword_100228F98 = v1;

  _objc_release_x1(v1, v2);
}

void sub_100047AF0(void *a1, int a2, void *a3)
{
  if (a1)
  {
    v5 = a3;
    v9 = objc_alloc_init(NSMutableDictionary);
    [v9 setObject:off_1001FAAE8[a2 - 10003] forKeyedSubscript:@"State"];
    [v9 setObject:v5 forKeyedSubscript:@"SessionID"];

    v6 = [a1 clients];
    v7 = [v6 count];

    if (v7 && (a2 == 10009 || a2 == 10003))
    {
      v8 = [a1 clients];
      [v9 setObject:v8 forKeyedSubscript:@"QuickRelayClients"];
    }

    sub_100008D1C(@"IDS Session", v9);
  }
}

id sub_100047C04(id result)
{
  if (result)
  {
    v1 = result;
    v2 = [result queue];
    dispatch_assert_queue_V2(v2);

    [v1 reportEvent:10017];
    if (gNRPacketLoggingEnabled == 1)
    {
      v3 = *(v1 + 32);
      v4 = _NRCopyLogObjectForNRUUID();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      if (IsLevelEnabled)
      {
        v6 = *(v1 + 32);
        v7 = _NRCopyLogObjectForNRUUID();
        v8 = [v1 copyDescription];
        _NRLogWithArgs();
      }
    }

    sub_100047D2C(v1);
    if (*(v1 + 249) == 1)
    {
      dispatch_resume(*(v1 + 367));
      *(v1 + 249) = 0;
    }

    return [v1 suspend];
  }

  return result;
}

void sub_100047D2C(uint64_t a1)
{
  if (!a1)
  {
    return;
  }

  v2 = *(a1 + 32);
  v3 = _NRCopyLogObjectForNRUUID();
  IsLevelEnabled = _NRLogIsLevelEnabled();

  if (IsLevelEnabled)
  {
    v5 = *(a1 + 32);
    v6 = _NRCopyLogObjectForNRUUID();
    v18 = 742;
    v19 = [a1 copyDescription];
    v17 = "[NRLinkQuickRelay invalidateIDSSession]";
    _NRLogWithArgs();
  }

  *(a1 + 256) = 0;
  [a1 reportEvent:10014 detailsFormat:@"%@", *(a1 + 279), v17, v18, v19];
  v7 = *(a1 + 279);
  if (v7)
  {
    v8 = v7;
    v9 = [a1 queue];
    [v8 setDelegate:0 queue:v9];

    [*(a1 + 279) endSession];
    v10 = *(a1 + 279);
    *(a1 + 279) = 0;

    v11 = *(a1 + 687);
    if (*(a1 + 252) == 1)
    {
      if (!v11)
      {
        goto LABEL_18;
      }

      if (!v11[19])
      {
        goto LABEL_18;
      }

      v12 = nr_absolute_time();
      v13 = *(a1 + 687);
      if (!v13)
      {
        goto LABEL_18;
      }

      v14 = &OBJC_IVAR___NRAnalyticsCmpnLinkQuickRelay__idsSessionEnd;
      goto LABEL_17;
    }

    if (v11)
    {
      if (!v11[15])
      {
        if (!v11[17])
        {
          goto LABEL_18;
        }

        v12 = nr_absolute_time();
        v13 = *(a1 + 687);
        if (!v13)
        {
          goto LABEL_18;
        }

        v14 = &OBJC_IVAR___NRAnalyticsCmpnLinkQuickRelay__idsSessionReceiveInvitationEnd;
        goto LABEL_17;
      }

      v12 = nr_absolute_time();
      v13 = *(a1 + 687);
      if (v13)
      {
        v14 = &OBJC_IVAR___NRAnalyticsCmpnLinkQuickRelay__idsSessionSendInvitationEnd;
LABEL_17:
        *(v13 + *v14) = v12;
      }
    }

LABEL_18:
    *(a1 + 252) = 0;
    *(a1 + 248) = 0;
    *(a1 + 253) = 0;
  }

  sub_100047F74(a1);
  v15 = *(a1 + 655);
  if (v15)
  {
    dispatch_source_cancel(v15);
    v16 = *(a1 + 655);
    *(a1 + 655) = 0;
  }
}

void sub_100047F74(uint64_t a1)
{
  if (a1)
  {
    if (*(a1 + 255) == 1)
    {
      [a1 removeObserver:a1 forKeyPath:@"_connection.connectionState" context:0];
      *(a1 + 255) = 0;
    }

    v2 = [a1 connection];

    if (v2)
    {
      v3 = *(a1 + 32);
      v4 = _NRCopyLogObjectForNRUUID();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      if (IsLevelEnabled)
      {
        v6 = *(a1 + 32);
        v7 = _NRCopyLogObjectForNRUUID();
        v8 = [a1 copyDescription];
        [a1 connection];
        v14 = v13 = v8;
        v12 = 733;
        v10 = "";
        v11 = "[NRLinkQuickRelay invalidateConnection]";
        _NRLogWithArgs();
      }

      v9 = [a1 connection];
      [v9 cancel];

      [a1 setConnection:0];
    }
  }
}

void sub_100048164(uint64_t a1)
{
  v2 = [*(a1 + 32) connection];
  v3 = [v2 connectionState];

  v4 = *(a1 + 32);
  if (v3 > 2)
  {
    switch(v3)
    {
      case 3:
        v5 = @"Ready";
        goto LABEL_15;
      case 4:
        v5 = @"Failed";
        goto LABEL_15;
      case 5:
        v5 = @"Cancelled";
        goto LABEL_15;
    }

LABEL_12:
    v5 = [[NSString alloc] initWithFormat:@"Unknown[%lld]", v3];
    v6 = *(a1 + 32);
    goto LABEL_16;
  }

  if (!v3)
  {
    v5 = @"Invalid";
    goto LABEL_15;
  }

  if (v3 == 1)
  {
    v5 = @"Waiting";
    goto LABEL_15;
  }

  if (v3 != 2)
  {
    goto LABEL_12;
  }

  v5 = @"Preparing";
LABEL_15:
  v6 = *(a1 + 32);
LABEL_16:
  v7 = [v6 connection];
  [v4 reportEvent:10020 detailsFormat:@"%@ %@", v5, v7];

  if (v3 == 3)
  {
    sub_100048794(*(a1 + 32));
    v8 = [*(a1 + 32) ikeClassDEstablished];
    v9 = *(a1 + 32);
    if (v8 && v9 && *(v9 + 311))
    {
      objc_initWeak(location, v9);
      v10 = nr_absolute_time();
      v11 = *(a1 + 32);
      if (v11)
      {
        v12 = v10;
        v13 = *(v11 + 687);
        if (v13)
        {
          v13[21] = v12;
        }
      }

      else
      {
        v13 = 0;
      }

      v14 = *(a1 + 32);
      if (v14)
      {
        v14 = *(v14 + 311);
      }

      v15 = v14;
      v16 = [*(a1 + 32) queue];
      v49[0] = _NSConcreteStackBlock;
      v49[1] = 3221225472;
      v49[2] = sub_100048A70;
      v49[3] = &unk_1001FC018;
      objc_copyWeak(&v50, location);
      [v15 sendKeepaliveWithRetries:3 retryIntervalInMilliseconds:3000 callbackQueue:v16 callback:v49];

      objc_destroyWeak(&v50);
      objc_destroyWeak(location);
      v9 = *(a1 + 32);
    }

    v17 = [v9 ikeClassCEstablished];
    v18 = *(a1 + 32);
    if (v17 && v18 && *(v18 + 319))
    {
      objc_initWeak(location, v18);
      v19 = nr_absolute_time();
      v20 = *(a1 + 32);
      if (v20)
      {
        v21 = v19;
        v22 = *(v20 + 687);
        if (v22)
        {
          v22[23] = v21;
        }
      }

      else
      {
        v22 = 0;
      }

      v23 = *(a1 + 32);
      if (v23)
      {
        v23 = *(v23 + 319);
      }

      v24 = v23;
      v25 = [*(a1 + 32) queue];
      v47[0] = _NSConcreteStackBlock;
      v47[1] = 3221225472;
      v47[2] = sub_100048B88;
      v47[3] = &unk_1001FC018;
      objc_copyWeak(&v48, location);
      [v24 sendKeepaliveWithRetries:3 retryIntervalInMilliseconds:3000 callbackQueue:v25 callback:v47];

      objc_destroyWeak(&v48);
      objc_destroyWeak(location);
      v18 = *(a1 + 32);
    }

    if (![v18 ikeClassCEstablished] || (objc_msgSend(*(a1 + 32), "ikeClassDEstablished") & 1) == 0)
    {
      v26 = *(a1 + 32);
      if (v26 && (*(v26 + 258) = 0, (v27 = *(a1 + 32)) != 0))
      {
        *(v27 + 259) = 0;
        v28 = *(a1 + 32);
      }

      else
      {
        v28 = 0;
      }

      sub_100048CA0(v28);
      v29 = *(a1 + 32);
      if (!v29)
      {
        return;
      }

      if (*(v29 + 251) == 1)
      {
        *(v29 + 251) = 0;
        v30 = *(a1 + 32);
        if (!v30)
        {
          return;
        }

        if (*(v30 + 249) == 1)
        {
          dispatch_resume(*(v30 + 367));
          v31 = *(a1 + 32);
          if (!v31)
          {
            return;
          }

          *(v31 + 249) = 0;
        }
      }
    }

    v32 = *(a1 + 32);
    if (v32)
    {
      v33 = [v32 queue];
      dispatch_assert_queue_V2(v33);

      v34 = *(v32 + 655);
      if (v34)
      {
        dispatch_source_cancel(v34);
        v35 = *(v32 + 655);
        *(v32 + 655) = 0;
      }

      if ([v32 state] == 255)
      {
        v41 = v32[4];
        v42 = _NRCopyLogObjectForNRUUID();
        IsLevelEnabled = _NRLogIsLevelEnabled();

        if (IsLevelEnabled)
        {
          v44 = v32[4];
          v45 = _NRCopyLogObjectForNRUUID();
          v46 = [v32 copyDescription];
          _NRLogWithArgs();
        }
      }

      else if (!*(v32 + 655))
      {
        v36 = [v32 queue];
        v37 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, v36);

        v38 = dispatch_time(0x8000000000000000, 10000000000);
        dispatch_source_set_timer(v37, v38, 0x2540BE400uLL, 0);
        objc_initWeak(&from, v32);
        location[0] = _NSConcreteStackBlock;
        location[1] = 3221225472;
        location[2] = sub_100049448;
        location[3] = &unk_1001FC730;
        objc_copyWeak(&v52, &from);
        dispatch_source_set_event_handler(v37, location);
        dispatch_resume(v37);
        v39 = *(v32 + 655);
        *(v32 + 655) = v37;

        objc_destroyWeak(&v52);
        objc_destroyWeak(&from);
      }
    }
  }

  else if ((v3 & 0xFFFFFFFFFFFFFFFELL) == 4)
  {
    v40 = *(a1 + 32);

    sub_100047D2C(v40);
  }
}

void sub_100048768(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 96));
  _Unwind_Resume(a1);
}

void sub_100048794(uint64_t a1)
{
  if (!a1)
  {
    return;
  }

  dispatch_assert_queue_V2(*(a1 + 8));
  if (*(a1 + 16) == 255)
  {
    v4 = *(a1 + 32);
    v5 = _NRCopyLogObjectForNRUUID();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (!IsLevelEnabled)
    {
      return;
    }

LABEL_9:
    v10 = *(a1 + 32);
    v20 = _NRCopyLogObjectForNRUUID();
    v11 = [a1 copyDescription];
    _NRLogWithArgs();

LABEL_15:

    return;
  }

  v2 = *(a1 + 695);
  if (!v2)
  {
    v7 = *(a1 + 32);
    v8 = _NRCopyLogObjectForNRUUID();
    v9 = _NRLogIsLevelEnabled();

    if (!v9)
    {
      return;
    }

    goto LABEL_9;
  }

  if ([v2 connectionState] == 3)
  {
    objc_initWeak(&location, a1);
    v3 = *(a1 + 695);
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_10004EBE4;
    v21[3] = &unk_1001FAFC0;
    objc_copyWeak(&v22, &location);
    [v3 readDatagramsWithMinimumCount:1 maximumCount:0xFFFFFFFFLL completionHandler:v21];
    objc_destroyWeak(&v22);
    objc_destroyWeak(&location);
    return;
  }

  v12 = *(a1 + 695);
  v13 = [v12 connectionState];
  if (v13 >= 6)
  {
    v14 = [[NSString alloc] initWithFormat:@"Unknown[%lld]", v13];
  }

  else
  {
    v14 = *(&off_1001FAB20 + v13);
  }

  [a1 reportEvent:10021 detailsFormat:@"cannot read from connection %@ state %@", v12, v14];

  v15 = *(a1 + 32);
  v16 = _NRCopyLogObjectForNRUUID();
  v17 = _NRLogIsLevelEnabled();

  if (v17)
  {
    v18 = *(a1 + 32);
    v20 = _NRCopyLogObjectForNRUUID();
    v19 = [a1 copyDescription];
    [*(a1 + 695) connectionState];
    _NRLogWithArgs();

    goto LABEL_15;
  }
}

void sub_100048A54(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_100048A70(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v12 = WeakRetained;
    v4 = WeakRetained[4];
    v5 = _NRCopyLogObjectForNRUUID();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v7 = v12[4];
      v8 = _NRCopyLogObjectForNRUUID();
      v9 = [v12 copyDescription];
      _NRLogWithArgs();
    }

    WeakRetained = v12;
    if (a2)
    {
      v10 = nr_absolute_time();
      v11 = *(v12 + 687);
      if (v11)
      {
        *(v11 + 176) = v10;
      }

      sub_10004B914(v12);
      WeakRetained = v12;
    }
  }
}

void sub_100048B88(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v12 = WeakRetained;
    v4 = WeakRetained[4];
    v5 = _NRCopyLogObjectForNRUUID();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v7 = v12[4];
      v8 = _NRCopyLogObjectForNRUUID();
      v9 = [v12 copyDescription];
      _NRLogWithArgs();
    }

    WeakRetained = v12;
    if (a2)
    {
      v10 = nr_absolute_time();
      v11 = *(v12 + 687);
      if (v11)
      {
        *(v11 + 192) = v10;
      }

      sub_10004B914(v12);
      WeakRetained = v12;
    }
  }
}

void sub_100048CA0(uint64_t a1)
{
  if (!a1)
  {
    return;
  }

  v2 = [a1 queue];
  dispatch_assert_queue_V2(v2);

  v3 = *(a1 + 327);
  if (v3)
  {
    goto LABEL_3;
  }

  if (![a1 hasCompanionDatapath])
  {
    goto LABEL_10;
  }

  v4 = [*(a1 + 279) sessionID];
  v59 = [NSString stringWithFormat:@"Terminus QuickRelay link <%@>", v4];

  v5 = sub_1001482F4(v59, a1, 1, 0, 0, 0);
  v6 = *(a1 + 327);
  *(a1 + 327) = v5;

  v7 = *(a1 + 327);
  if (!v7)
  {
    v39 = *(a1 + 32);
    v40 = _NRCopyLogObjectForNRUUID();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      goto LABEL_36;
    }

    goto LABEL_37;
  }

  [a1 setVirtualInterface:{objc_msgSend(v7, "virtualInterface")}];
  if (([a1 setInterfaceSubfamily] & 1) == 0)
  {
    v42 = *(a1 + 32);
    v43 = _NRCopyLogObjectForNRUUID();
    v44 = _NRLogIsLevelEnabled();

    if (v44)
    {
      goto LABEL_36;
    }

    goto LABEL_37;
  }

  if (([a1 setNoACKPrioritization] & 1) == 0)
  {
    v45 = *(a1 + 32);
    v46 = _NRCopyLogObjectForNRUUID();
    v47 = _NRLogIsLevelEnabled();

    if (v47)
    {
LABEL_36:
      v48 = *(a1 + 32);
      v49 = _NRCopyLogObjectForNRUUID();
      v50 = [a1 copyDescription];
      _NRLogWithArgs();
    }

LABEL_37:

    return;
  }

  v8 = sub_100163A30(NRDLocalDevice, *(a1 + 32));
  if (!v8)
  {
    v52 = sub_100046E64();
    v53 = _NRLogIsLevelEnabled();

    if (v53)
    {
      v54 = sub_100046E64();
      _NRLogWithArgs();
    }

    _os_log_pack_size();
    __chkstk_darwin();
    v55 = *__error();
    v56 = _os_log_pack_fill();
    *v56 = 136446210;
    *(v56 + 4) = "[NRLinkQuickRelay setupIPsec]";
    sub_100046E64();
    _NRLogAbortWithPack();
  }

  v9 = v8;
  v10 = sub_100173200(v8);
  [*(a1 + 327) setLocalAddresses:v10];

  [a1 virtualInterface];
  v11 = sub_100003490();
  dispatch_assert_queue_V2(v11);

  v12 = sub_100003490();
  dispatch_assert_queue_V2(v12);

  v13 = sub_1001677D0(v9, @"0");
  v14 = [v13 hostname];

  NEVirtualInterfaceAddIPv6Route();
  [a1 virtualInterface];
  v15 = sub_100003490();
  dispatch_assert_queue_V2(v15);

  v16 = sub_100003490();
  dispatch_assert_queue_V2(v16);

  v17 = sub_100167B9C(v9, @"0");
  v18 = [v17 hostname];

  NEVirtualInterfaceAddIPv6Route();
  [a1 virtualInterface];
  NEVirtualInterfaceUpdateAdHocService();
  [*(a1 + 327) setAvailability:0];

  v3 = v59;
LABEL_3:

LABEL_10:
  if (([a1 hasCompanionDatapath] & 1) == 0 && !sub_100049614(a1))
  {
    return;
  }

  v19 = [a1 queue];
  dispatch_assert_queue_V2(v19);

  if (*(a1 + 254) == 1 && !*(a1 + 303))
  {
    v20 = sub_100146840(1);
    if ([a1 hasCompanionDatapath])
    {
      [v20 setRequestChildlessSA:0];
    }

    v21 = [[NEIKEv2Listener alloc] initWithListenerIKEConfig:v20 kernelSASessionName:@"terminusIKE-QuickRelay-Listener" packetDelegate:a1 listenerQueue:*(a1 + 8) delegate:a1 delegateQueue:*(a1 + 8)];
    v22 = *(a1 + 303);
    *(a1 + 303) = v21;

    v23 = *(a1 + 303);
    v24 = *(a1 + 32);
    v25 = _NRCopyLogObjectForNRUUID();
    if (v23)
    {
      v26 = _NRLogIsLevelEnabled();

      if (!v26)
      {
LABEL_19:

        goto LABEL_20;
      }
    }

    else
    {
      v51 = _NRLogIsLevelEnabled();

      if (!v51)
      {
        goto LABEL_19;
      }
    }

    v27 = *(a1 + 32);
    v28 = _NRCopyLogObjectForNRUUID();
    v29 = [a1 copyDescription];
    _NRLogWithArgs();

    goto LABEL_19;
  }

LABEL_20:
  if ([a1 ikeClassDEstablished])
  {
    v30 = *(a1 + 32);
    v31 = _NRCopyLogObjectForNRUUID();
    v32 = _NRLogIsLevelEnabled();

    if (v32)
    {
      v33 = *(a1 + 32);
      v34 = _NRCopyLogObjectForNRUUID();
      v57 = [a1 copyDescription];
      _NRLogWithArgs();
    }
  }

  else
  {
    sub_100049D84(a1, 4);
  }

  if ([a1 ikeClassCEstablished])
  {
    v35 = *(a1 + 32);
    v36 = _NRCopyLogObjectForNRUUID();
    v37 = _NRLogIsLevelEnabled();

    if (!v37)
    {
      return;
    }

    v38 = *(a1 + 32);
    v59 = _NRCopyLogObjectForNRUUID();
    v58 = [a1 copyDescription];
    _NRLogWithArgs();

    goto LABEL_37;
  }

  sub_100049D84(a1, 3);
}

void sub_100049448(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    if (*(WeakRetained + 463) == *(WeakRetained + 439) && *(WeakRetained + 471) == *(WeakRetained + 455) && *(WeakRetained + 423) == *(WeakRetained + 415))
    {
      v10 = WeakRetained;
      v2 = *(WeakRetained + 279);
      v3 = [v2 sessionID];
      sub_100047AF0(v10, 10009, v3);

      sub_100047C04(v10);
      WeakRetained = v10;
    }

    else
    {
      if (gNRPacketLoggingEnabled == 1)
      {
        v11 = WeakRetained;
        v4 = *(WeakRetained + 4);
        v5 = _NRCopyLogObjectForNRUUID();
        IsLevelEnabled = _NRLogIsLevelEnabled();

        WeakRetained = v11;
        if (IsLevelEnabled)
        {
          v7 = *(v11 + 4);
          v8 = _NRCopyLogObjectForNRUUID();
          v9 = [v11 copyDescription];
          _NRLogWithArgs();

          WeakRetained = v11;
        }
      }

      *(WeakRetained + 471) = *(WeakRetained + 455);
      *(WeakRetained + 463) = *(WeakRetained + 439);
      *(WeakRetained + 423) = *(WeakRetained + 415);
    }
  }
}

uint64_t sub_100049614(void *a1)
{
  v2 = [a1 queue];
  dispatch_assert_queue_V2(v2);

  if (([a1 hasCompanionDatapath] & 1) != 0 || objc_msgSend(a1, "virtualInterface"))
  {
    return 1;
  }

  v4 = getpid();
  v5 = sub_10013EF7C(v4);
  v69[0] = 0;
  v69[1] = 0;
  [v5 getUUIDBytes:v69];
  v6 = [a1 queue];
  [a1 setVirtualInterface:NEVirtualInterfaceCreateNexusExtended()];

  if ([a1 virtualInterface])
  {
    [a1 virtualInterface];
    NEVirtualInterfaceEnableFlowswitch();
    v7 = [a1 nrUUID];
    v8 = sub_100163A30(NRDLocalDevice, v7);

    if (!v8)
    {
      v62 = sub_100046E64();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      if (IsLevelEnabled)
      {
        v64 = sub_100046E64();
        _NRLogWithArgs();
      }

      _os_log_pack_size();
      v65 = *__error();
      v66 = _os_log_pack_fill();
      *v66 = 136446210;
      *(v66 + 4) = "[NRLinkQuickRelay setupUTUN]";
      sub_100046E64();
      _NRLogAbortWithPack();
    }

    [a1 virtualInterface];
    v9 = sub_100003490();
    dispatch_assert_queue_V2(v9);

    v10 = sub_100003490();
    dispatch_assert_queue_V2(v10);

    v11 = sub_1001672A0(v8, @"0");
    v12 = [v11 hostname];

    v13 = NEVirtualInterfaceAddAddress();
    if (v13)
    {
      [a1 virtualInterface];
      v14 = sub_100003490();
      dispatch_assert_queue_V2(v14);

      v15 = sub_100003490();
      dispatch_assert_queue_V2(v15);

      v16 = sub_1001679E0(v8, @"0");
      v17 = [v16 hostname];

      v18 = NEVirtualInterfaceAddAddress();
      if (v18)
      {
        [a1 virtualInterface];
        v19 = sub_100003490();
        dispatch_assert_queue_V2(v19);

        v20 = sub_1001730E8(v8);
        v21 = [v20 hostname];

        v22 = NEVirtualInterfaceAddAddress();
        if (v22)
        {
          [a1 virtualInterface];
          if (NEVirtualInterfaceAddAddress())
          {
            [a1 virtualInterface];
            v23 = sub_100172EF0(v8);
            v24 = NEVirtualInterfaceAddIPv6Route();

            if (v24)
            {
              [a1 virtualInterface];
              v25 = sub_100172F58(v8);
              v26 = NEVirtualInterfaceAddIPv6Route();

              if (v26)
              {
                [a1 virtualInterface];
                if (NEVirtualInterfaceUpdateAdHocService())
                {
                  [a1 virtualInterface];
                  v27 = NEVirtualInterfaceCopyName();
                  v28 = a1[4];
                  v29 = _NRCopyLogObjectForNRUUID();
                  v30 = _NRLogIsLevelEnabled();

                  if (v30)
                  {
                    v31 = a1[4];
                    v32 = _NRCopyLogObjectForNRUUID();
                    v67 = [a1 copyDescription];
                    _NRLogWithArgs();
                  }

                  [a1 setLocalInterfaceName:v27];

                  v33 = 1;
                  goto LABEL_35;
                }

                v56 = a1[4];
                v57 = _NRCopyLogObjectForNRUUID();
                v58 = _NRLogIsLevelEnabled();

                if (!v58)
                {
                  goto LABEL_33;
                }

                goto LABEL_32;
              }

              v53 = a1[4];
              v54 = _NRCopyLogObjectForNRUUID();
              v55 = _NRLogIsLevelEnabled();

              if (v55)
              {
LABEL_32:
                v59 = a1[4];
                v60 = _NRCopyLogObjectForNRUUID();
                v61 = [a1 copyDescription];
                _NRLogWithArgs();
              }
            }

            else
            {
              v50 = a1[4];
              v51 = _NRCopyLogObjectForNRUUID();
              v52 = _NRLogIsLevelEnabled();

              if (v52)
              {
                goto LABEL_32;
              }
            }
          }

          else
          {
            v47 = a1[4];
            v48 = _NRCopyLogObjectForNRUUID();
            v49 = _NRLogIsLevelEnabled();

            if (v49)
            {
              goto LABEL_32;
            }
          }
        }

        else
        {
          v44 = a1[4];
          v45 = _NRCopyLogObjectForNRUUID();
          v46 = _NRLogIsLevelEnabled();

          if (v46)
          {
            goto LABEL_32;
          }
        }
      }

      else
      {
        v41 = a1[4];
        v42 = _NRCopyLogObjectForNRUUID();
        v43 = _NRLogIsLevelEnabled();

        if (v43)
        {
          goto LABEL_32;
        }
      }
    }

    else
    {
      v38 = a1[4];
      v39 = _NRCopyLogObjectForNRUUID();
      v40 = _NRLogIsLevelEnabled();

      if (v40)
      {
        goto LABEL_32;
      }
    }

LABEL_33:
    [a1 invalidateVirtualInterface];
    goto LABEL_34;
  }

  v34 = a1[4];
  v35 = _NRCopyLogObjectForNRUUID();
  v36 = _NRLogIsLevelEnabled();

  if (v36)
  {
    v37 = a1[4];
    v8 = _NRCopyLogObjectForNRUUID();
    v68 = [a1 copyDescription];
    _NRLogWithArgs();

LABEL_34:
    v33 = 0;
LABEL_35:

    goto LABEL_36;
  }

  v33 = 0;
LABEL_36:

  return v33;
}

void sub_100049D84(uint64_t a1, int a2)
{
  v4 = [a1 queue];
  dispatch_assert_queue_V2(v4);

  if ((*(a1 + 254) & 1) == 0)
  {
    v5 = sub_10004A258(a1, a2);
    if (!*v5)
    {
      v6 = v5;
      String = NRDataProtectionClassCreateString();
      v8 = [a1 nrUUID];
      v9 = sub_100163A30(NRDLocalDevice, v8);

      if (v9)
      {
        v10 = sub_100164D70(v9, a2);

        if (v10)
        {
          v11 = String;
          v12 = sub_100147400(1, v9, a2);
          v13 = [NWAddressEndpoint endpointWithHostname:@"::" port:@"0"];
          v14 = [NEIKEv2ConfigurationMessage alloc];
          v15 = [[NEIKEv2InitiatorTransportIPv6Address alloc] initWithAddress:v13];
          v54[0] = v15;
          v51 = v13;
          v16 = [[NEIKEv2ResponderTransportIPv6Address alloc] initWithAddress:v13];
          v54[1] = v16;
          v17 = [NSArray arrayWithObjects:v54 count:2];
          v18 = [v14 initWithWithAttributes:v17];
          v52 = v12;
          [v12 setConfigurationRequest:v18];

          v53 = v9;
          v19 = sub_100146654(v9, 0);
          v20 = *(a1 + 56);
          if (([a1 hasCompanionDatapath] & 1) == 0)
          {
            [v19 setRequestChildlessSA:1];
            v20 = 0;
          }

          String = v11;
          v21 = [[NSString alloc] initWithFormat:@"terminusIKE-QuickRelay-%@", v11];
          v22 = [NEIKEv2Session alloc];
          v23 = v53;
          v24 = sub_100146D34(0, 0);
          sub_100147008(v24, v23, 0);

          v25 = v22;
          v26 = v52;
          v27 = [v25 initWithIKEConfig:v19 firstChildConfig:v24 sessionConfig:v52 queue:*(a1 + 8) ipsecInterface:v20 ikeSocketHandler:0 kernelSASessionName:v21 packetDelegate:a1];
          v28 = *v6;
          *v6 = v27;

          if (!*v6)
          {
            v45 = *(a1 + 32);
            v46 = _NRCopyLogObjectForNRUUID();
            IsLevelEnabled = _NRLogIsLevelEnabled();

            v29 = v51;
            v26 = v52;
            if (IsLevelEnabled)
            {
              v48 = *(a1 + 32);
              v49 = _NRCopyLogObjectForNRUUID();
              v50 = [a1 copyDescription];
              _NRLogWithArgs();

              v26 = v52;
            }

            goto LABEL_21;
          }

          [a1 reportEvent:3015 detailsFormat:@"%@ %@", String, *v6];
          sub_10004A3CC(a1, a2);
          if (a2 == 3)
          {
            v40 = nr_absolute_time();
            v41 = *(a1 + 687);
            if (!v41)
            {
              v32 = 0;
              v29 = v51;
              goto LABEL_19;
            }

            *(v41 + 40) = v40;
            v32 = *(a1 + 687);
            v29 = v51;
            if (v32)
            {
              v33 = &OBJC_IVAR___NRAnalyticsCmpnLink__ikeClassCAttempts;
              goto LABEL_18;
            }
          }

          else
          {
            v29 = v51;
            if (a2 != 4)
            {
LABEL_20:
              [*v6 connect];
LABEL_21:

              v9 = v53;
              goto LABEL_22;
            }

            v30 = nr_absolute_time();
            v31 = *(a1 + 687);
            if (!v31)
            {
              v32 = 0;
              goto LABEL_19;
            }

            *(v31 + 56) = v30;
            v32 = *(a1 + 687);
            if (v32)
            {
              v33 = &OBJC_IVAR___NRAnalyticsCmpnLink__ikeClassDAttempts;
LABEL_18:
              ++*&v32[*v33];
            }
          }

LABEL_19:

          goto LABEL_20;
        }

        v34 = *(a1 + 32);
        v35 = _NRCopyLogObjectForNRUUID();
        v36 = _NRLogIsLevelEnabled();

        if (!v36)
        {
LABEL_22:

          return;
        }
      }

      else
      {
        v42 = *(a1 + 32);
        v43 = _NRCopyLogObjectForNRUUID();
        v44 = _NRLogIsLevelEnabled();

        if (!v44)
        {
          goto LABEL_22;
        }
      }

      v37 = *(a1 + 32);
      v38 = _NRCopyLogObjectForNRUUID();
      v39 = [a1 copyDescription];
      _NRLogWithArgs();

      goto LABEL_22;
    }
  }
}

uint64_t sub_10004A258(uint64_t result, int a2)
{
  if (result)
  {
    if (a2 == 4)
    {
      v2 = &OBJC_IVAR___NRLinkQuickRelay__ikeSessionClassD;
      goto LABEL_6;
    }

    if (a2 == 3)
    {
      v2 = &OBJC_IVAR___NRLinkQuickRelay__ikeSessionClassC;
LABEL_6:
      result += *v2;
      return result;
    }

    v3 = sub_100046E64();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v5 = sub_100046E64();
      String = NRDataProtectionClassCreateString();
      _NRLogWithArgs();
    }

    _os_log_pack_size();
    v6 = *__error();
    v7 = _os_log_pack_fill();
    v8 = NRDataProtectionClassCreateString();
    *v7 = 136446466;
    *(v7 + 4) = "[NRLinkQuickRelay ikeSessionPointerForDataProtectionClass:]";
    *(v7 + 12) = 2112;
    *(v7 + 14) = v8;
    sub_100046E64();
    v9 = _NRLogAbortWithPack();
    return sub_10004A3CC(v9);
  }

  return result;
}

void sub_10004A3CC(void *a1, int a2)
{
  if (a1)
  {
    v4 = [a1 queue];
    dispatch_assert_queue_V2(v4);

    String = NRDataProtectionClassCreateString();
    v6 = *sub_10004A258(a1, a2);
    v7 = v6;
    if (v6)
    {
      v8 = v6;
      [v8 setClientQueue:a1[1]];
      objc_initWeak(location, a1);
      v56[0] = _NSConcreteStackBlock;
      v56[1] = 3221225472;
      v56[2] = sub_10004A974;
      v56[3] = &unk_1001FB810;
      objc_copyWeak(&v59, location);
      v9 = String;
      v57 = v9;
      v10 = v8;
      v58 = v10;
      v60 = a2;
      [v10 setStateUpdateBlock:v56];
      v51[0] = _NSConcreteStackBlock;
      v51[1] = 3221225472;
      v51[2] = sub_10004AFAC;
      v51[3] = &unk_1001FB838;
      objc_copyWeak(&v54, location);
      v11 = v9;
      v52 = v11;
      v12 = v10;
      v53 = v12;
      v55 = a2;
      [v12 setChildStateUpdateBlock:v51];
      v47[0] = _NSConcreteStackBlock;
      v47[1] = 3221225472;
      v47[2] = sub_10004B114;
      v47[3] = &unk_1001FB860;
      objc_copyWeak(&v50, location);
      v13 = v11;
      v48 = v13;
      v14 = v12;
      v49 = v14;
      [v14 setConfigurationUpdateBlock:v47];
      v43[0] = _NSConcreteStackBlock;
      v43[1] = 3221225472;
      v43[2] = sub_10004B1F4;
      v43[3] = &unk_1001FB888;
      objc_copyWeak(&v46, location);
      v15 = v13;
      v44 = v15;
      v16 = v14;
      v45 = v16;
      [v16 setTrafficSelectorUpdateBlock:v43];
      v39[0] = _NSConcreteStackBlock;
      v39[1] = 3221225472;
      v39[2] = sub_10004B2F4;
      v39[3] = &unk_1001FB8B0;
      objc_copyWeak(&v42, location);
      v17 = v15;
      v40 = v17;
      v18 = v16;
      v41 = v18;
      [v18 setAdditionalAddressesUpdateBlock:v39];
      v35[0] = _NSConcreteStackBlock;
      v35[1] = 3221225472;
      v35[2] = sub_10004B3D4;
      v35[3] = &unk_1001FB8D8;
      objc_copyWeak(&v38, location);
      v19 = v17;
      v36 = v19;
      v20 = v18;
      v37 = v20;
      [v20 setShortDPDEventBlock:v35];
      v31[0] = _NSConcreteStackBlock;
      v31[1] = 3221225472;
      v31[2] = sub_10004B4A8;
      v31[3] = &unk_1001FB8B0;
      objc_copyWeak(&v34, location);
      v32 = v19;
      v21 = v20;
      v33 = v21;
      [v21 setPrivateNotifyStatusEvent:v31];
      v22 = a1[4];
      v23 = _NRCopyLogObjectForNRUUID();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      if (IsLevelEnabled)
      {
        v25 = a1[4];
        v26 = _NRCopyLogObjectForNRUUID();
        v30 = [a1 copyDescription];
        _NRLogWithArgs();
      }

      objc_destroyWeak(&v34);
      objc_destroyWeak(&v38);

      objc_destroyWeak(&v42);
      objc_destroyWeak(&v46);

      objc_destroyWeak(&v50);
      objc_destroyWeak(&v54);

      objc_destroyWeak(&v59);
      objc_destroyWeak(location);
    }

    else
    {
      v27 = sub_100046E64();
      v28 = _NRLogIsLevelEnabled();

      if (v28)
      {
        v29 = sub_100046E64();
        _NRLogWithArgs();
      }
    }
  }
}

void sub_10004A8E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, id a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, id a50)
{
  objc_destroyWeak((v52 + 48));
  objc_destroyWeak((v50 + 48));
  objc_destroyWeak((v51 + 48));
  objc_destroyWeak(&a43);
  objc_destroyWeak(&a50);
  objc_destroyWeak((v53 - 192));
  objc_destroyWeak((v53 - 128));
  objc_destroyWeak((v53 - 112));
  _Unwind_Resume(a1);
}

void sub_10004A974(uint64_t a1, uint64_t a2, void *a3)
{
  v66 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (!WeakRetained)
  {
    goto LABEL_56;
  }

  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  SessionStateString = NEIKEv2CreateSessionStateString();
  if (!v66)
  {
    [WeakRetained reportEvent:3009 detailsFormat:@"%@ session %@ changed state to %@", v6, v7, SessionStateString];

    if (a2 > 2)
    {
      if (a2 == 3)
      {
        v24 = *(WeakRetained + 4);
        v25 = _NRCopyLogObjectForNRUUID();
        IsLevelEnabled = _NRLogIsLevelEnabled();

        if (IsLevelEnabled)
        {
          v27 = *(WeakRetained + 4);
          v28 = _NRCopyLogObjectForNRUUID();
          v29 = [WeakRetained copyDescription];
          v59 = *(a1 + 32);
          v63 = *(a1 + 40);
          _NRLogWithArgs();
        }

        v30 = *(a1 + 56);
        if (v30 == 4)
        {
          [WeakRetained setIkeClassDEstablished:0];
        }

        else if (v30 == 3)
        {
          [WeakRetained setIkeClassCEstablished:0];
        }

        if (WeakRetained[252] == 1)
        {
          sub_10004B718(WeakRetained, *(a1 + 56));
        }

        else
        {
          [WeakRetained invalidateIKESessionForClass:*(a1 + 56)];
        }

        goto LABEL_56;
      }

      if (a2 == 4)
      {
        [WeakRetained cancelWithReason:{@"%@ session %@ got unexpected MOBIKE state", *(a1 + 32), *(a1 + 40)}];
        goto LABEL_56;
      }
    }

    else
    {
      if (a2 == 1)
      {
        if ([WeakRetained state] == 1)
        {
          v18 = *(WeakRetained + 4);
          v19 = _NRCopyLogObjectForNRUUID();
          v20 = _NRLogIsLevelEnabled();

          if (v20)
          {
            v21 = *(WeakRetained + 4);
            v22 = _NRCopyLogObjectForNRUUID();
            v23 = [WeakRetained copyDescription];
            v58 = *(a1 + 32);
            v62 = *(a1 + 40);
            v56 = 1241;
            v57 = v23;
            v54 = "";
            v55 = "[NRLinkQuickRelay setupIKECallbacksForClass:]_block_invoke";
            _NRLogWithArgs();
          }

          [WeakRetained changeStateTo:{5, v54, v55, v56, v57, v58, v62}];
          goto LABEL_56;
        }

        v31 = [WeakRetained state];
        v32 = *(WeakRetained + 4);
        v33 = _NRCopyLogObjectForNRUUID();
        if (v31 == 5)
        {
          v34 = _NRLogIsLevelEnabled();

          if (!v34)
          {
            goto LABEL_56;
          }
        }

        else
        {
          v50 = _NRLogIsLevelEnabled();

          if (!v50)
          {
            goto LABEL_56;
          }
        }

        goto LABEL_55;
      }

      if (a2 == 2)
      {
        v10 = *(a1 + 56);
        if (v10 == 3)
        {
          v35 = nr_absolute_time();
          v36 = *(WeakRetained + 687);
          if (v36)
          {
            *(v36 + 48) = v35;
          }

          [WeakRetained setIkeClassCEstablished:1];
          WeakRetained[259] = 0;
          v13 = objc_alloc_init(NSDate);
          sub_10004B904(WeakRetained, v13);
        }

        else
        {
          if (v10 != 4)
          {
LABEL_41:
            v37 = WeakRetained[16];
            if ((v37 - 8) < 2)
            {
              v38 = *(WeakRetained + 4);
              v39 = _NRCopyLogObjectForNRUUID();
              v40 = _NRLogIsLevelEnabled();

              if (v40)
              {
                goto LABEL_46;
              }

              goto LABEL_47;
            }

            if (v37 == 5)
            {
              v41 = *(WeakRetained + 4);
              v42 = _NRCopyLogObjectForNRUUID();
              v43 = _NRLogIsLevelEnabled();

              if (v43)
              {
LABEL_46:
                v44 = *(WeakRetained + 4);
                v45 = _NRCopyLogObjectForNRUUID();
                v46 = [WeakRetained copyDescription];
                v60 = *(a1 + 32);
                v64 = *(a1 + 40);
                _NRLogWithArgs();
              }

LABEL_47:
              sub_10004B914(WeakRetained);
              goto LABEL_56;
            }

            v47 = *(WeakRetained + 4);
            v48 = _NRCopyLogObjectForNRUUID();
            v49 = _NRLogIsLevelEnabled();

            if (!v49)
            {
              goto LABEL_56;
            }

LABEL_55:
            v51 = *(WeakRetained + 4);
            v52 = _NRCopyLogObjectForNRUUID();
            v53 = [WeakRetained copyDescription];
            v61 = *(a1 + 32);
            v65 = *(a1 + 40);
            _NRLogWithArgs();

            goto LABEL_56;
          }

          v11 = nr_absolute_time();
          v12 = *(WeakRetained + 687);
          if (v12)
          {
            *(v12 + 64) = v11;
          }

          [WeakRetained setIkeClassDEstablished:1];
          WeakRetained[258] = 0;
          v13 = objc_alloc_init(NSDate);
          sub_10004B8F4(WeakRetained, v13);
        }

        goto LABEL_41;
      }
    }

    v15 = *(a1 + 32);
    v16 = *(a1 + 40);
    v17 = NEIKEv2CreateSessionStateString();
    [WeakRetained cancelWithReason:{@"%@ session %@ got bad IKE state %@", v15, v16, v17}];

    goto LABEL_56;
  }

  [WeakRetained reportEvent:3018 detailsFormat:@"%@ session %@ got IKE error %@ with state %@", v6, v7, v66, SessionStateString];

  v9 = *(a1 + 56);
  if (v9 == 3)
  {
    [WeakRetained setIkeClassCEstablished:0];
  }

  else if (v9 == 4)
  {
    [WeakRetained setIkeClassDEstablished:0];
  }

  v14 = *(a1 + 56);
  if ((WeakRetained[248] & 1) == 0)
  {
    [WeakRetained processIKEDisconnection:v14 error:v66];
    if ([WeakRetained state] == 255)
    {
      goto LABEL_56;
    }

    v14 = *(a1 + 56);
  }

  if (WeakRetained[252] == 1)
  {
    sub_10004B718(WeakRetained, v14);
  }

  else
  {
    [WeakRetained invalidateIKESessionForClass:v14];
  }

LABEL_56:
}

void sub_10004AFAC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v14 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    if (v14)
    {
      v8 = *(a1 + 32);
      v9 = *(a1 + 40);
      SessionStateString = NEIKEv2CreateSessionStateString();
      [WeakRetained reportEvent:3018 detailsFormat:@"%@ session %@ got child %u state update %@ error %@", v8, v9, a2, SessionStateString, v14];

      if ((WeakRetained[248] & 1) == 0)
      {
        [WeakRetained processIKEDisconnection:*(a1 + 56) error:v14];
        if ([WeakRetained state] == 255)
        {
          goto LABEL_12;
        }
      }
    }

    else
    {
      v11 = *(a1 + 32);
      v12 = *(a1 + 40);
      if (a3 != 3)
      {
        v13 = NEIKEv2CreateSessionStateString();
        [WeakRetained reportEvent:3009 detailsFormat:@"%@ session %@ child %u state update %@", v11, v12, a2, v13];

        goto LABEL_12;
      }

      [WeakRetained reportEvent:3018 detailsFormat:@"%@ session %@ got child %u Disconnected state with no error", v11, *(a1 + 40), a2];
    }

    if (WeakRetained[252] == 1)
    {
      sub_10004B718(WeakRetained, *(a1 + 56));
    }

    else
    {
      [WeakRetained invalidateIKESessionForClass:*(a1 + 56)];
    }
  }

LABEL_12:
}

void sub_10004B114(uint64_t a1, void *a2)
{
  v13 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = WeakRetained[4];
    v6 = _NRCopyLogObjectForNRUUID();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v8 = v4[4];
      v9 = _NRCopyLogObjectForNRUUID();
      v10 = [v4 copyDescription];
      v12 = *(a1 + 40);
      v11 = *(a1 + 32);
      _NRLogWithArgs();
    }
  }
}

void sub_10004B1F4(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v17 = a3;
  v6 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    v9 = WeakRetained[4];
    v10 = _NRCopyLogObjectForNRUUID();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v12 = v8[4];
      v13 = _NRCopyLogObjectForNRUUID();
      v14 = [v8 copyDescription];
      v15 = *(a1 + 32);
      v16 = *(a1 + 40);
      _NRLogWithArgs();
    }
  }
}

void sub_10004B2F4(uint64_t a1, void *a2)
{
  v13 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = WeakRetained[4];
    v6 = _NRCopyLogObjectForNRUUID();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v8 = v4[4];
      v9 = _NRCopyLogObjectForNRUUID();
      v10 = [v4 copyDescription];
      v12 = *(a1 + 40);
      v11 = *(a1 + 32);
      _NRLogWithArgs();
    }
  }
}

void sub_10004B3D4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v11 = WeakRetained;
    v3 = WeakRetained[4];
    v4 = _NRCopyLogObjectForNRUUID();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    WeakRetained = v11;
    if (IsLevelEnabled)
    {
      v6 = v11[4];
      v7 = _NRCopyLogObjectForNRUUID();
      v8 = [v11 copyDescription];
      v9 = *(a1 + 32);
      v10 = *(a1 + 40);
      _NRLogWithArgs();

      WeakRetained = v11;
    }
  }
}

void sub_10004B4A8(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = WeakRetained[4];
    v7 = _NRCopyLogObjectForNRUUID();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v9 = v5[4];
      v10 = _NRCopyLogObjectForNRUUID();
      v11 = [v5 copyDescription];
      v31 = *(a1 + 40);
      v32 = v3;
      v29 = v11;
      v30 = *(a1 + 32);
      v27 = "[NRLinkQuickRelay setupIKECallbacksForClass:]_block_invoke_7";
      v28 = 1372;
      v26 = "";
      _NRLogWithArgs();
    }

    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v33 = v3;
    v12 = v3;
    v13 = [v12 countByEnumeratingWithState:&v34 objects:v38 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v35;
      do
      {
        for (i = 0; i != v14; i = i + 1)
        {
          if (*v35 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v34 + 1) + 8 * i);
          v18 = [v17 notifyStatus];
          v19 = [v17 notifyData];
          v20 = v5[4];
          v21 = _NRCopyLogObjectForNRUUID();
          v22 = _NRLogIsLevelEnabled();

          if (v22)
          {
            v23 = v5[4];
            v24 = _NRCopyLogObjectForNRUUID();
            v30 = v18;
            v31 = v19;
            v28 = 1383;
            v29 = [v5 copyDescription];
            v26 = "";
            v27 = "[NRLinkQuickRelay handleNotifyCode:payload:]";
            _NRLogWithArgs();
          }

          if (v18 == 50702)
          {
            v25 = [v5 linkDelegate];
            [v25 linkDidReceiveData:v5 data:v19];
          }
        }

        v14 = [v12 countByEnumeratingWithState:&v34 objects:v38 count:16];
      }

      while (v14);
    }

    v3 = v33;
  }
}

id sub_10004B718(uint64_t a1, uint64_t a2)
{
  v4 = [a1 queue];
  dispatch_assert_queue_V2(v4);

  [a1 invalidateIKESessionForClass:a2];
  if (a2 == 4)
  {
    if (++*(a1 + 258) >= 3u)
    {
      v12 = *(a1 + 32);
      v13 = _NRCopyLogObjectForNRUUID();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      if (IsLevelEnabled)
      {
        v15 = *(a1 + 32);
        v16 = _NRCopyLogObjectForNRUUID();
        v19 = [a1 copyDescription];
        _NRLogWithArgs();
      }

      v10 = a1;
      v11 = 10023;
      goto LABEL_11;
    }
  }

  else if (a2 == 3 && ++*(a1 + 259) >= 3u)
  {
    v5 = *(a1 + 32);
    v6 = _NRCopyLogObjectForNRUUID();
    v7 = _NRLogIsLevelEnabled();

    if (v7)
    {
      v8 = *(a1 + 32);
      v9 = _NRCopyLogObjectForNRUUID();
      v18 = [a1 copyDescription];
      _NRLogWithArgs();
    }

    v10 = a1;
    v11 = 10024;
LABEL_11:

    return [v10 reportEvent:v11];
  }

  return sub_100049D84(a1, a2);
}

void sub_10004B914(uint64_t a1)
{
  v2 = [a1 queue];
  dispatch_assert_queue_V2(v2);

  if ([a1 state] != 255)
  {
    sub_10004BA40(a1);
    if ([a1 hasCompanionDatapath])
    {
      [*(a1 + 327) setAvailability:1];
    }

    else if ([a1 virtualInterface])
    {
      [a1 virtualInterface];
      NEVirtualInterfaceSetRankNever();
      [a1 virtualInterface];
      NEVirtualInterfaceUpdateAdHocService();
    }

    if (*(a1 + 251) == 1)
    {
      *(a1 + 251) = 0;
      if (*(a1 + 249) == 1)
      {
        dispatch_resume(*(a1 + 367));
        *(a1 + 249) = 0;
      }
    }

    [a1 changeStateTo:8];
    v3 = [a1 linkDelegate];
    [v3 linkIsReady:a1];
  }
}

void sub_10004BA40(uint64_t a1)
{
  v2 = [a1 queue];
  dispatch_assert_queue_V2(v2);

  if (!*(a1 + 343))
  {
    v228[0] = 0;
    v228[1] = 0;
    if ([a1 hasCompanionDatapath])
    {
      v3 = [*(a1 + 327) nexusInstances];
    }

    else
    {
      v3 = sub_10013F0B0([a1 virtualInterface]);
    }

    v4 = v3;
    v5 = *(a1 + 32);
    v6 = _NRCopyLogObjectForNRUUID();
    if (v4)
    {
      IsLevelEnabled = _NRLogIsLevelEnabled();

      if (IsLevelEnabled)
      {
        v8 = *(a1 + 32);
        v9 = _NRCopyLogObjectForNRUUID();
        v198 = [a1 copyDescription];
        _NRLogWithArgs();
      }

      if ([v4 count] == 1)
      {
        v10 = [v4 firstObject];
        [v10 getUUIDBytes:v228];
        if (!os_channel_attr_create())
        {
          v24 = *(a1 + 32);
          v25 = _NRCopyLogObjectForNRUUID();
          v26 = _NRLogIsLevelEnabled();

          if (v26)
          {
            goto LABEL_129;
          }

          goto LABEL_27;
        }

        os_channel_attr_set();
        extended = os_channel_create_extended();
        v12 = extended;
        if (!extended)
        {
          v27 = __error();
          if (strerror_r(*v27, v227, 0x80uLL))
          {
            LOBYTE(v227[0]) = 0;
          }

          if (qword_100228FA0 != -1)
          {
            dispatch_once(&qword_100228FA0, &stru_1001FAAA0);
          }

          if (_NRLogIsLevelEnabled())
          {
            v28 = sub_100046E64();
            _NRLogWithArgs();
          }

          [a1 virtualInterface];
          NEVirtualInterfaceDisableChannel();
          os_channel_attr_destroy();
          goto LABEL_27;
        }

        *(a1 + 343) = extended;
        v227[0] = 0;
        v13 = os_channel_attr_get();
        v14 = *(a1 + 32);
        v15 = _NRCopyLogObjectForNRUUID();
        if (v13)
        {
          v16 = _NRLogIsLevelEnabled();

          if (v16)
          {
            goto LABEL_129;
          }

          goto LABEL_27;
        }

        v29 = _NRLogIsLevelEnabled();

        if (v29)
        {
          v30 = *(a1 + 32);
          v31 = _NRCopyLogObjectForNRUUID();
          v199 = [a1 copyDescription];
          _NRLogWithArgs();
        }

        v227[0] = 0;
        v32 = os_channel_attr_get();
        v33 = *(a1 + 32);
        v34 = _NRCopyLogObjectForNRUUID();
        if (v32)
        {
          v35 = _NRLogIsLevelEnabled();

          if (v35)
          {
            goto LABEL_129;
          }

          goto LABEL_27;
        }

        v36 = _NRLogIsLevelEnabled();

        if (v36)
        {
          v37 = *(a1 + 32);
          v38 = _NRCopyLogObjectForNRUUID();
          v200 = [a1 copyDescription];
          _NRLogWithArgs();
        }

        v227[0] = 0;
        v39 = os_channel_attr_get();
        v40 = *(a1 + 32);
        v41 = _NRCopyLogObjectForNRUUID();
        if (v39)
        {
          v42 = _NRLogIsLevelEnabled();

          if (v42)
          {
            goto LABEL_129;
          }

          goto LABEL_27;
        }

        v43 = _NRLogIsLevelEnabled();

        if (v43)
        {
          v44 = *(a1 + 32);
          v45 = _NRCopyLogObjectForNRUUID();
          v201 = [a1 copyDescription];
          _NRLogWithArgs();
        }

        v227[0] = 0;
        v46 = os_channel_attr_get();
        v47 = *(a1 + 32);
        v48 = _NRCopyLogObjectForNRUUID();
        if (v46)
        {
          v49 = _NRLogIsLevelEnabled();

          if (v49)
          {
            goto LABEL_129;
          }

          goto LABEL_27;
        }

        v50 = _NRLogIsLevelEnabled();

        if (v50)
        {
          v51 = *(a1 + 32);
          v52 = _NRCopyLogObjectForNRUUID();
          v202 = [a1 copyDescription];
          _NRLogWithArgs();
        }

        v227[0] = 0;
        v53 = os_channel_attr_get();
        v54 = *(a1 + 32);
        v55 = _NRCopyLogObjectForNRUUID();
        if (v53)
        {
          v56 = _NRLogIsLevelEnabled();

          if (v56)
          {
            goto LABEL_129;
          }

          goto LABEL_27;
        }

        v57 = _NRLogIsLevelEnabled();

        if (v57)
        {
          v58 = *(a1 + 32);
          v59 = _NRCopyLogObjectForNRUUID();
          v203 = [a1 copyDescription];
          _NRLogWithArgs();
        }

        v227[0] = 0;
        v60 = os_channel_attr_get();
        v61 = *(a1 + 32);
        v62 = _NRCopyLogObjectForNRUUID();
        if (v60)
        {
          v63 = _NRLogIsLevelEnabled();

          if (v63)
          {
            goto LABEL_129;
          }

          goto LABEL_27;
        }

        v64 = _NRLogIsLevelEnabled();

        if (v64)
        {
          v65 = *(a1 + 32);
          v66 = _NRCopyLogObjectForNRUUID();
          v204 = [a1 copyDescription];
          _NRLogWithArgs();
        }

        v227[0] = 0;
        v67 = os_channel_attr_get();
        v68 = *(a1 + 32);
        v69 = _NRCopyLogObjectForNRUUID();
        if (v67)
        {
          v70 = _NRLogIsLevelEnabled();

          if (v70)
          {
            goto LABEL_129;
          }

          goto LABEL_27;
        }

        v71 = _NRLogIsLevelEnabled();

        if (v71)
        {
          v72 = *(a1 + 32);
          v73 = _NRCopyLogObjectForNRUUID();
          v205 = [a1 copyDescription];
          _NRLogWithArgs();
        }

        v227[0] = 0;
        v74 = os_channel_attr_get();
        v75 = *(a1 + 32);
        v76 = _NRCopyLogObjectForNRUUID();
        if (v74)
        {
          v77 = _NRLogIsLevelEnabled();

          if (v77)
          {
            goto LABEL_129;
          }

          goto LABEL_27;
        }

        v78 = _NRLogIsLevelEnabled();

        if (v78)
        {
          v79 = *(a1 + 32);
          v80 = _NRCopyLogObjectForNRUUID();
          v206 = [a1 copyDescription];
          _NRLogWithArgs();
        }

        v227[0] = 0;
        v81 = os_channel_attr_get();
        v82 = *(a1 + 32);
        v83 = _NRCopyLogObjectForNRUUID();
        if (v81)
        {
          v84 = _NRLogIsLevelEnabled();

          if (v84)
          {
            goto LABEL_129;
          }

          goto LABEL_27;
        }

        v85 = _NRLogIsLevelEnabled();

        if (v85)
        {
          v86 = *(a1 + 32);
          v87 = _NRCopyLogObjectForNRUUID();
          v207 = [a1 copyDescription];
          _NRLogWithArgs();
        }

        v227[0] = 0;
        v88 = os_channel_attr_get();
        v89 = *(a1 + 32);
        v90 = _NRCopyLogObjectForNRUUID();
        if (v88)
        {
          v91 = _NRLogIsLevelEnabled();

          if (v91)
          {
            goto LABEL_129;
          }

          goto LABEL_27;
        }

        v92 = _NRLogIsLevelEnabled();

        if (v92)
        {
          v93 = *(a1 + 32);
          v94 = _NRCopyLogObjectForNRUUID();
          v208 = [a1 copyDescription];
          _NRLogWithArgs();
        }

        v227[0] = 0;
        v95 = os_channel_attr_get();
        v96 = *(a1 + 32);
        v97 = _NRCopyLogObjectForNRUUID();
        if (v95)
        {
          v98 = _NRLogIsLevelEnabled();

          if (v98)
          {
            goto LABEL_129;
          }

          goto LABEL_27;
        }

        v99 = _NRLogIsLevelEnabled();

        if (v99)
        {
          v100 = *(a1 + 32);
          v101 = _NRCopyLogObjectForNRUUID();
          v209 = [a1 copyDescription];
          _NRLogWithArgs();
        }

        v227[0] = 0;
        v102 = os_channel_attr_get();
        v103 = *(a1 + 32);
        v104 = _NRCopyLogObjectForNRUUID();
        if (v102)
        {
          v105 = _NRLogIsLevelEnabled();

          if (v105)
          {
            goto LABEL_129;
          }

          goto LABEL_27;
        }

        v106 = _NRLogIsLevelEnabled();

        if (v106)
        {
          v107 = *(a1 + 32);
          v108 = _NRCopyLogObjectForNRUUID();
          v210 = [a1 copyDescription];
          _NRLogWithArgs();
        }

        v227[0] = 0;
        v109 = os_channel_attr_get();
        v110 = *(a1 + 32);
        v111 = _NRCopyLogObjectForNRUUID();
        if (v109)
        {
          v112 = _NRLogIsLevelEnabled();

          if (v112)
          {
            goto LABEL_129;
          }

          goto LABEL_27;
        }

        v113 = _NRLogIsLevelEnabled();

        if (v113)
        {
          v114 = *(a1 + 32);
          v115 = _NRCopyLogObjectForNRUUID();
          v211 = [a1 copyDescription];
          _NRLogWithArgs();
        }

        v227[0] = 0;
        v116 = os_channel_attr_get();
        v117 = *(a1 + 32);
        v118 = _NRCopyLogObjectForNRUUID();
        if (v116)
        {
          v119 = _NRLogIsLevelEnabled();

          if (v119)
          {
            goto LABEL_129;
          }

          goto LABEL_27;
        }

        v120 = _NRLogIsLevelEnabled();

        if (v120)
        {
          v121 = *(a1 + 32);
          v122 = _NRCopyLogObjectForNRUUID();
          v212 = [a1 copyDescription];
          _NRLogWithArgs();
        }

        v227[0] = 0;
        v123 = os_channel_attr_get();
        v124 = *(a1 + 32);
        v125 = _NRCopyLogObjectForNRUUID();
        if (v123)
        {
          v126 = _NRLogIsLevelEnabled();

          if (v126)
          {
            goto LABEL_129;
          }

          goto LABEL_27;
        }

        v127 = _NRLogIsLevelEnabled();

        if (v127)
        {
          v128 = *(a1 + 32);
          v129 = _NRCopyLogObjectForNRUUID();
          v213 = [a1 copyDescription];
          _NRLogWithArgs();
        }

        v227[0] = 0;
        v130 = os_channel_attr_get();
        v131 = *(a1 + 32);
        v132 = _NRCopyLogObjectForNRUUID();
        if (v130)
        {
          v133 = _NRLogIsLevelEnabled();

          if (v133)
          {
            goto LABEL_129;
          }

          goto LABEL_27;
        }

        v134 = _NRLogIsLevelEnabled();

        if (v134)
        {
          v135 = *(a1 + 32);
          v136 = _NRCopyLogObjectForNRUUID();
          v214 = [a1 copyDescription];
          _NRLogWithArgs();
        }

        v227[0] = 0;
        v137 = os_channel_attr_get();
        v138 = *(a1 + 32);
        v139 = _NRCopyLogObjectForNRUUID();
        if (v137)
        {
          v140 = _NRLogIsLevelEnabled();

          if (v140)
          {
            goto LABEL_129;
          }

          goto LABEL_27;
        }

        v141 = _NRLogIsLevelEnabled();

        if (v141)
        {
          v142 = *(a1 + 32);
          v143 = _NRCopyLogObjectForNRUUID();
          v215 = [a1 copyDescription];
          _NRLogWithArgs();
        }

        v227[0] = 0;
        v144 = os_channel_attr_get();
        v145 = *(a1 + 32);
        v146 = _NRCopyLogObjectForNRUUID();
        if (v144)
        {
          v147 = _NRLogIsLevelEnabled();

          if (v147)
          {
            goto LABEL_129;
          }

          goto LABEL_27;
        }

        v148 = _NRLogIsLevelEnabled();

        if (v148)
        {
          v149 = *(a1 + 32);
          v150 = _NRCopyLogObjectForNRUUID();
          v216 = [a1 copyDescription];
          _NRLogWithArgs();
        }

        os_channel_attr_destroy();
        v151 = *(a1 + 343);
        os_channel_ring_id();
        v152 = *(a1 + 343);
        v153 = os_channel_rx_ring();
        *(a1 + 351) = v153;
        if (!v153)
        {
          v174 = *(a1 + 32);
          v175 = _NRCopyLogObjectForNRUUID();
          v176 = _NRLogIsLevelEnabled();

          if (v176)
          {
            goto LABEL_129;
          }

          goto LABEL_27;
        }

        v154 = *(a1 + 343);
        os_channel_ring_id();
        v155 = *(a1 + 343);
        v156 = os_channel_tx_ring();
        *(a1 + 359) = v156;
        if (!v156)
        {
          v177 = *(a1 + 32);
          v178 = _NRCopyLogObjectForNRUUID();
          v179 = _NRLogIsLevelEnabled();

          if (v179)
          {
            goto LABEL_129;
          }

          goto LABEL_27;
        }

        v157 = *(a1 + 343);
        fd = os_channel_get_fd();
        if ((fd & 0x80000000) != 0)
        {
          v180 = *(a1 + 32);
          v181 = _NRCopyLogObjectForNRUUID();
          v182 = _NRLogIsLevelEnabled();

          if (v182)
          {
LABEL_129:
            v183 = *(a1 + 32);
            v184 = _NRCopyLogObjectForNRUUID();
            v217 = [a1 copyDescription];
            _NRLogWithArgs();
          }

LABEL_27:

          goto LABEL_28;
        }

        v159 = dispatch_group_create();
        if (v159)
        {
          v160 = v159;
          v161 = dispatch_source_create(&_dispatch_source_type_read, fd, 0, *(a1 + 8));
          v162 = *(a1 + 367);
          *(a1 + 367) = v161;

          if (*(a1 + 367))
          {
            objc_initWeak(v227, a1);
            v163 = *(a1 + 367);
            v225[0] = _NSConcreteStackBlock;
            v225[1] = 3221225472;
            v225[2] = sub_10004D6C4;
            v225[3] = &unk_1001FC730;
            objc_copyWeak(&v226, v227);
            dispatch_source_set_event_handler(v163, v225);
            dispatch_group_enter(v160);
            v164 = *(a1 + 367);
            v223[0] = _NSConcreteStackBlock;
            v223[1] = 3221225472;
            v223[2] = sub_10004DC0C;
            v223[3] = &unk_1001FD3C8;
            v165 = v160;
            v224 = v165;
            dispatch_source_set_cancel_handler(v164, v223);
            dispatch_activate(*(a1 + 367));
            v166 = dispatch_source_create(&_dispatch_source_type_write, fd, 0, *(a1 + 8));
            v167 = *(a1 + 375);
            *(a1 + 375) = v166;

            v168 = *(a1 + 375);
            if (v168)
            {
              v221[0] = _NSConcreteStackBlock;
              v221[1] = 3221225472;
              v221[2] = sub_10004DC14;
              v221[3] = &unk_1001FC730;
              objc_copyWeak(&v222, v227);
              dispatch_source_set_event_handler(v168, v221);
              dispatch_group_enter(v165);
              v169 = *(a1 + 375);
              v219[0] = _NSConcreteStackBlock;
              v219[1] = 3221225472;
              v219[2] = sub_10004E264;
              v219[3] = &unk_1001FD3C8;
              v170 = v165;
              v220 = v170;
              dispatch_source_set_cancel_handler(v169, v219);
              *(a1 + 250) = 1;
              v171 = *(a1 + 8);
              v218[0] = _NSConcreteStackBlock;
              v218[1] = 3221225472;
              v218[2] = sub_10004E26C;
              v218[3] = &unk_1001FCDD8;
              v218[4] = v12;
              dispatch_group_notify(v170, v171, v218);
              v172 = *(a1 + 383);
              *(a1 + 383) = v170;
              v173 = v170;

              objc_destroyWeak(&v222);
              objc_destroyWeak(&v226);
              objc_destroyWeak(v227);
              goto LABEL_27;
            }

            v193 = sub_100046E64();
            v194 = _NRLogIsLevelEnabled();

            if (v194)
            {
              v195 = sub_100046E64();
              _NRLogWithArgs();
            }

            _os_log_pack_size();
            __chkstk_darwin();
            v196 = *__error();
            v197 = _os_log_pack_fill();
            *v197 = 136446210;
            *(v197 + 4) = "[NRLinkQuickRelay setupNexus]";
            sub_100046E64();
            _NRLogAbortWithPack();
LABEL_139:
            __break(1u);
            return;
          }

          v190 = sub_100046E64();
          v191 = _NRLogIsLevelEnabled();

          if (v191)
          {
            v192 = sub_100046E64();
            _NRLogWithArgs();
          }
        }

        else
        {
          v185 = sub_100046E64();
          v186 = _NRLogIsLevelEnabled();

          if (v186)
          {
            v187 = sub_100046E64();
            _NRLogWithArgs();
          }
        }

        _os_log_pack_size();
        __chkstk_darwin();
        v188 = *__error();
        v189 = _os_log_pack_fill();
        *v189 = 136446210;
        *(v189 + 4) = "[NRLinkQuickRelay setupNexus]";
        sub_100046E64();
        _NRLogAbortWithPack();
        goto LABEL_139;
      }

      v18 = *(a1 + 32);
      v19 = _NRCopyLogObjectForNRUUID();
      v20 = _NRLogIsLevelEnabled();

      if (v20)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v17 = _NRLogIsLevelEnabled();

      if (v17)
      {
LABEL_17:
        v21 = *(a1 + 32);
        v22 = _NRCopyLogObjectForNRUUID();
        v23 = [a1 copyDescription];
        _NRLogWithArgs();
      }
    }

LABEL_28:
  }
}

void sub_10004D698(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 200));
  objc_destroyWeak((v1 + 208));
  _Unwind_Resume(a1);
}

void sub_10004D6C4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    if (WeakRetained[16] == 255)
    {
      v9 = *(WeakRetained + 4);
      v10 = _NRCopyLogObjectForNRUUID();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      if (IsLevelEnabled)
      {
        v12 = *(v2 + 4);
        v3 = _NRCopyLogObjectForNRUUID();
        v13 = [v2 copyDescription];
        _NRLogWithArgs();
LABEL_25:

        goto LABEL_26;
      }
    }

    else
    {
      if (gNRPacketLoggingEnabled == 1)
      {
        v30 = *(WeakRetained + 4);
        v31 = _NRCopyLogObjectForNRUUID();
        v32 = _NRLogIsLevelEnabled();

        if (v32)
        {
          v33 = *(v2 + 4);
          v34 = _NRCopyLogObjectForNRUUID();
          v38 = [v2 copyDescription];
          _NRLogWithArgs();
        }
      }

      ++*(v2 + 495);
      if (*(v2 + 279))
      {
        v3 = v2;
        v4 = [v3 queue];
        dispatch_assert_queue_V2(v4);

        v5 = v2[16];
        if (v5 == 255)
        {
          v6 = *(v3 + 4);
          v7 = _NRCopyLogObjectForNRUUID();
          v8 = _NRLogIsLevelEnabled();

          if (v8)
          {
            goto LABEL_23;
          }

LABEL_26:

          goto LABEL_27;
        }

        if (v5 == 1)
        {
          v35 = *(v3 + 4);
          v36 = _NRCopyLogObjectForNRUUID();
          v37 = _NRLogIsLevelEnabled();

          if (!v37)
          {
            goto LABEL_26;
          }

          goto LABEL_23;
        }

        if (*(v3 + 343))
        {
          v14 = *(v3 + 695);
          if (!v14 || [v14 connectionState] != 3)
          {
            if (gNRPacketLoggingEnabled != 1)
            {
              goto LABEL_26;
            }

            v18 = *(v3 + 4);
            v19 = _NRCopyLogObjectForNRUUID();
            v20 = _NRLogIsLevelEnabled();

            if (!v20)
            {
              goto LABEL_26;
            }

            v21 = *(v3 + 4);
            v13 = _NRCopyLogObjectForNRUUID();
            v22 = [v3 copyDescription];
            v39 = sub_10004E274([*(v3 + 695) connectionState]);
            _NRLogWithArgs();

            goto LABEL_24;
          }

          if (v3[249] != 1)
          {
            v44 = 0;
            v27 = sub_10004E2D0(v3, &v44);
            objc_initWeak(&location, v3);
            *(v3 + 431) += v44;
            v28 = [v3 connection];
            v40[0] = _NSConcreteStackBlock;
            v40[1] = 3221225472;
            v40[2] = sub_10004E90C;
            v40[3] = &unk_1001FAAC8;
            objc_copyWeak(v42, &location);
            v29 = v27;
            v41 = v29;
            v42[1] = v44;
            [v28 writeDatagrams:v29 completionHandler:v40];

            dispatch_suspend(*(v3 + 367));
            v3[249] = 1;

            objc_destroyWeak(v42);
            objc_destroyWeak(&location);

            goto LABEL_26;
          }

          if (gNRPacketLoggingEnabled != 1)
          {
            goto LABEL_26;
          }

          v15 = *(v3 + 4);
          v16 = _NRCopyLogObjectForNRUUID();
          v17 = _NRLogIsLevelEnabled();

          if (!v17)
          {
            goto LABEL_26;
          }
        }

        else
        {
          v23 = *(v3 + 4);
          v24 = _NRCopyLogObjectForNRUUID();
          v25 = _NRLogIsLevelEnabled();

          if (!v25)
          {
            goto LABEL_26;
          }
        }

LABEL_23:
        v26 = *(v3 + 4);
        v13 = _NRCopyLogObjectForNRUUID();
        v22 = [v3 copyDescription];
        _NRLogWithArgs();
LABEL_24:

        goto LABEL_25;
      }

      v2[251] = 1;
      dispatch_suspend(*(v2 + 367));
      v2[249] = 1;
    }
  }

LABEL_27:
}

void sub_10004DBE8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 64));
  _Unwind_Resume(a1);
}

void sub_10004DC14(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    if (*(WeakRetained + 16) != 255)
    {
      if (gNRPacketLoggingEnabled == 1)
      {
        v36 = WeakRetained[4];
        v37 = _NRCopyLogObjectForNRUUID();
        IsLevelEnabled = _NRLogIsLevelEnabled();

        if (IsLevelEnabled)
        {
          v39 = v2[4];
          v40 = _NRCopyLogObjectForNRUUID();
          v53 = 962;
          v54 = [v2 copyDescription];
          v51 = "";
          v52 = "[NRLinkQuickRelay setupNexus]_block_invoke";
          _NRLogWithArgs();
        }
      }

      ++*(v2 + 503);
      v3 = v2;
      v4 = [v3 queue];
      dispatch_assert_queue_V2(v4);

      if (*(v2 + 16) == 255)
      {
        v30 = *(v3 + 4);
        v31 = _NRCopyLogObjectForNRUUID();
        v32 = _NRLogIsLevelEnabled();

        if (v32)
        {
          v33 = *(v3 + 4);
          v34 = _NRCopyLogObjectForNRUUID();
          v56 = [v3 copyDescription];
          _NRLogWithArgs();
        }
      }

      else if ([*(v3 + 391) count])
      {
        v59 = v2;
        v5 = *(v3 + 343);
        os_channel_ring_id();
        v6 = *(v3 + 343);
        os_channel_tx_ring();
        v72 = 0u;
        v73 = 0u;
        v70 = 0u;
        v71 = 0u;
        v66 = 0u;
        v67 = 0u;
        v68 = 0u;
        v69 = 0u;
        obj = *(v3 + 391);
        v61 = [obj countByEnumeratingWithState:&v66 objects:v74 count:16];
        v7 = 0;
        v8 = 0;
        i = 0;
        if (v61)
        {
          v60 = *v67;
          while (2)
          {
            v10 = 0;
            v11 = v7;
            v7 += v61;
            do
            {
              if (*v67 != v60)
              {
                objc_enumerationMutation(obj);
              }

              v64 = v10;
              v12 = *(*(&v66 + 1) + 8 * v10);
              v13 = [v12 length];
              v14 = [v12 bytes];
              next_slot = os_channel_get_next_slot();
              if (!next_slot)
              {
                v7 = v11;
                goto LABEL_37;
              }

              v65 = v11;
              v62 = v13;
              v16 = v13;
              if (v13 >= 1)
              {
                for (i = next_slot; ; i = v21)
                {
                  v17 = *(v3 + 263);
                  if (*(v3 + 263))
                  {
                    *v71 = 503316480;
                    v17 = *(v3 + 263);
                  }

                  if ((WORD1(v70) - v17) >= v16)
                  {
                    v18 = v16;
                  }

                  else
                  {
                    v18 = WORD1(v70) - v17;
                  }

                  WORD1(v70) = v17 + v18;
                  v19 = v18;
                  memcpy((v71 + v17), v14, v18);
                  os_channel_set_slot_properties();
                  v16 -= v18;
                  if (v16 < 1)
                  {
                    v8 = (v18 + v8);
                    goto LABEL_26;
                  }

                  v20 = os_channel_get_next_slot();
                  if (!v20)
                  {
                    break;
                  }

                  v21 = v20;
                  if (gNRPacketLoggingEnabled)
                  {
                    v22 = *(v3 + 4);
                    v23 = _NRCopyLogObjectForNRUUID();
                    v58 = _NRLogIsLevelEnabled();

                    if (v58)
                    {
                      v24 = *(v3 + 4);
                      v25 = _NRCopyLogObjectForNRUUID();
                      v53 = 2153;
                      v54 = [v3 copyDescription];
                      v51 = "";
                      v52 = "NRLinkLoopQRToInterface";
                      _NRLogWithArgs();
                    }
                  }

                  v14 += v19;
                  v8 = (v19 + v8);
                }

                if (gNRPacketLoggingEnabled)
                {
                  v46 = *(v3 + 4);
                  v47 = _NRCopyLogObjectForNRUUID();
                  v48 = _NRLogIsLevelEnabled();

                  if (v48)
                  {
                    v49 = *(v3 + 4);
                    v50 = _NRCopyLogObjectForNRUUID();
                    v53 = 2150;
                    v54 = [v3 copyDescription];
                    v51 = "";
                    v52 = "NRLinkLoopQRToInterface";
                    _NRLogWithArgs();
                  }
                }

LABEL_36:
                v7 = v65;
                goto LABEL_37;
              }

LABEL_26:
              if (v16)
              {
                goto LABEL_36;
              }

              *(v3 + 487) += v62;
              v11 = v65 + 1;
              v10 = v64 + 1;
            }

            while ((v64 + 1) != v61);
            v61 = [obj countByEnumeratingWithState:&v66 objects:v74 count:16];
            if (v61)
            {
              continue;
            }

            break;
          }
        }

LABEL_37:

        if (gNRPacketLoggingEnabled == 1)
        {
          v41 = *(v3 + 4);
          v42 = _NRCopyLogObjectForNRUUID();
          v43 = _NRLogIsLevelEnabled();

          if (v43)
          {
            v44 = *(v3 + 4);
            v45 = _NRCopyLogObjectForNRUUID();
            v54 = [v3 copyDescription];
            v57 = v8;
            v53 = 2168;
            v51 = "";
            v52 = "NRLinkLoopQRToInterface";
            _NRLogWithArgs();
          }
        }

        if (i)
        {
          os_channel_advance_slot();
          v35 = *(v3 + 343);
          os_channel_sync();
          if (v7 >= 1)
          {
            do
            {
              [*(v3 + 391) removeFirstObject];
              --v7;
            }

            while (v7);
          }
        }

        v2 = v59;
      }

      else
      {
        dispatch_suspend(*(v3 + 375));
        v3[250] = 1;
      }

      goto LABEL_42;
    }

    v26 = WeakRetained[4];
    v27 = _NRCopyLogObjectForNRUUID();
    v28 = _NRLogIsLevelEnabled();

    if (v28)
    {
      v29 = v2[4];
      v3 = _NRCopyLogObjectForNRUUID();
      v55 = [v2 copyDescription];
      _NRLogWithArgs();

LABEL_42:
    }
  }
}

id sub_10004E274(unint64_t a1)
{
  if (a1 >= 6)
  {
    return [[NSString alloc] initWithFormat:@"Unknown[%lld]", a1];
  }

  else
  {
    return *(&off_1001FAB20 + a1);
  }
}

id sub_10004E2D0(void *a1, void *a2)
{
  v3 = a1;
  v4 = v3;
  if (*(v3 + 16) == 255)
  {
    v24 = v3[4];
    v25 = _NRCopyLogObjectForNRUUID();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      goto LABEL_37;
    }

    goto LABEL_38;
  }

  if (!*(v3 + 343))
  {
    v29 = v3[4];
    v30 = _NRCopyLogObjectForNRUUID();
    v31 = _NRLogIsLevelEnabled();

    if (v31)
    {
LABEL_37:
      v32 = *(v4 + 4);
      v33 = _NRCopyLogObjectForNRUUID();
      v34 = [v4 copyDescription];
      _NRLogWithArgs();
    }

LABEL_38:
    v28 = 0;
    goto LABEL_43;
  }

  os_channel_ring_id();
  v5 = *(v4 + 343);
  os_channel_rx_ring();
  v6 = objc_alloc_init(NSMutableArray);
  if (os_channel_get_next_slot())
  {
    v47 = v6;
    v48 = a2;
    while (1)
    {
      v7 = -*(v4 + 263);
      *(v4 + 479) += v7;
      v8 = objc_alloc_init(NSMutableData);
      v9 = v49;
      bzero(v49, 0x800uLL);
      if (v7 >= 0x7FCu)
      {
        v10 = v7 + 5;
        v11 = malloc_type_calloc(1uLL, v10, 0x69A3AB9AuLL);
        if (!v11)
        {
          v41 = sub_100046E64();
          v42 = _NRLogIsLevelEnabled();

          if (v42)
          {
            v43 = sub_100046E64();
            _NRLogWithArgs();
          }

          _os_log_pack_size();
          __chkstk_darwin();
          v44 = *__error();
          v45 = _os_log_pack_fill();
          *v45 = 136446722;
          *(v45 + 4) = "NRLinkLoopInterfaceToQRInner";
          *(v45 + 12) = 2048;
          *(v45 + 14) = 1;
          *(v45 + 22) = 2048;
          *(v45 + 24) = v10;
          sub_100046E64();
          _NRLogAbortWithPack();
        }

        v9 = v11;
      }

      v12 = nrPacketToTLV();
      v13 = *v9;
      if (v13 > 0x65)
      {
        if (*v9 <= 0x67u)
        {
          if (v13 == 102)
          {
            v14 = &OBJC_IVAR___NRLinkQuickRelay__sentKnownIPv6Hdr_TCP;
          }

          else
          {
            v14 = &OBJC_IVAR___NRLinkQuickRelay__sentKnownIPv6Hdr_TCP_ECT0;
          }

          goto LABEL_25;
        }

        if (v13 == 104)
        {
          v14 = &OBJC_IVAR___NRLinkQuickRelay__sentKnownIPv6Hdr_ESP_ClassC;
          goto LABEL_25;
        }

        if (v13 == 105)
        {
          v14 = &OBJC_IVAR___NRLinkQuickRelay__sentKnownIPv6Hdr_ESP_ClassC_ECT0;
          goto LABEL_25;
        }
      }

      else
      {
        if (*v9 > 0x63u)
        {
          if (v13 == 100)
          {
            v14 = &OBJC_IVAR___NRLinkQuickRelay__sentKnownIPv6Hdr_ESP;
          }

          else
          {
            v14 = &OBJC_IVAR___NRLinkQuickRelay__sentKnownIPv6Hdr_ESP_ECT0;
          }

          goto LABEL_25;
        }

        v14 = &OBJC_IVAR___NRLinkQuickRelay__sentUncompressedIP;
        if (v13 == 2)
        {
          goto LABEL_25;
        }

        if (v13 == 3)
        {
          v14 = &OBJC_IVAR___NRLinkQuickRelay__sentEncapsulated6LoWPAN;
LABEL_25:
          ++*&v4[*v14];
        }
      }

      v15 = *(v9 + 1);
      [v8 appendBytes:? length:?];
      if (v9 != v49)
      {
        free(v9);
      }

      if (gNRPacketLoggingEnabled == 1)
      {
        v17 = *(v4 + 4);
        v18 = _NRCopyLogObjectForNRUUID();
        v19 = _NRLogIsLevelEnabled();

        if (v19)
        {
          v20 = *(v4 + 4);
          v21 = _NRCopyLogObjectForNRUUID();
          v22 = [v4 copyDescription];
          StringFromNRTLVType = createStringFromNRTLVType();
          [v8 length];
          _NRLogWithArgs();
        }
      }

      v6 = v47;
      [v47 addObject:v8];
      next_slot = os_channel_get_next_slot();
      if (v48)
      {
        *v48 += v12;
      }

      if (!next_slot)
      {
        os_channel_advance_slot();
        v27 = *(v4 + 343);
        os_channel_sync();
        v28 = v47;
        goto LABEL_42;
      }
    }
  }

  v35 = *(v4 + 4);
  v36 = _NRCopyLogObjectForNRUUID();
  v37 = _NRLogIsLevelEnabled();

  if (v37)
  {
    v38 = *(v4 + 4);
    v39 = _NRCopyLogObjectForNRUUID();
    v46 = [v4 copyDescription];
    _NRLogWithArgs();
  }

  v28 = 0;
LABEL_42:

LABEL_43:

  return v28;
}

void sub_10004E90C(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    if (v3)
    {
      v6 = WeakRetained[4];
      v7 = _NRCopyLogObjectForNRUUID();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      if (IsLevelEnabled)
      {
        v9 = v5[4];
        v10 = _NRCopyLogObjectForNRUUID();
        v26 = [v5 copyDescription];
        v27 = [*(a1 + 32) count];
        v25 = 2077;
        v23 = "";
        v24 = "NRLinkLoopInterfaceToQR_block_invoke";
        _NRLogWithArgs();
      }

      *(v5 + 447) += *(a1 + 48);
      v11 = [v5 connection];
      v12 = [v5 connection];
      v13 = [v12 connectionState];
      if (v13 >= 6)
      {
        v14 = [[NSString alloc] initWithFormat:@"Unknown[%lld]", v13];
      }

      else
      {
        v14 = *(&off_1001FAB20 + v13);
      }

      [v5 reportEvent:10022 detailsFormat:@"connection %@ state %@ error %@", v11, v14, v3];
    }

    else
    {
      *(WeakRetained + 439) += *(a1 + 48);
    }

    v15 = [v5 queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10004EBB0;
    block[3] = &unk_1001FD3C8;
    v16 = v5;
    v30 = v16;
    dispatch_async(v15, block);

    if (gNRPacketLoggingEnabled == 1)
    {
      v17 = v16[4];
      v18 = _NRCopyLogObjectForNRUUID();
      v19 = _NRLogIsLevelEnabled();

      if (v19)
      {
        v20 = v16[4];
        v21 = _NRCopyLogObjectForNRUUID();
        v22 = [v16 copyDescription];
        v28 = *(a1 + 48);
        [*(a1 + 32) count];
        _NRLogWithArgs();
      }
    }
  }
}

void sub_10004EBB0(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (*(v1 + 249) == 1)
  {
    *(v1 + 249) = 0;
    dispatch_resume(*(*(a1 + 32) + 367));
  }
}

void sub_10004EBE4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    v9 = [WeakRetained queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10004ECD8;
    block[3] = &unk_1001FD088;
    v11 = v6;
    v12 = v8;
    v13 = v5;
    dispatch_async(v9, block);
  }
}

void sub_10004ECD8(uint64_t a1)
{
  v3 = *(a1 + 32);
  if (!v3)
  {
    v158 = 0u;
    v159 = 0u;
    v156 = 0u;
    v157 = 0u;
    v146 = *(a1 + 48);
    v147 = [v146 countByEnumeratingWithState:&v156 objects:v161 count:16];
    if (!v147)
    {
LABEL_95:

      sub_100048794(*(a1 + 40));
      return;
    }

    v11 = 0;
    v12 = *v157;
    v145 = *v157;
    while (1)
    {
      if (v12 != v145)
      {
        objc_enumerationMutation(v146);
      }

      v148 = v11;
      v13 = *(*(&v156 + 1) + 8 * v11);
      if ([v13 length] > 2)
      {
        break;
      }

      v14 = v13;
      v15 = *(*(a1 + 40) + 32);
      v16 = _NRCopyLogObjectForNRUUID();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      if (IsLevelEnabled)
      {
        v18 = *(*(a1 + 40) + 32);
        v19 = _NRCopyLogObjectForNRUUID();
        v20 = [*(a1 + 40) copyDescription];
        [v14 length];
        _NRLogWithArgs();
LABEL_14:

LABEL_15:
      }

LABEL_92:
      v11 = v148 + 1;
      if (v148 + 1 >= v147)
      {
        v147 = [v146 countByEnumeratingWithState:&v156 objects:v161 count:16];
        if (!v147)
        {
          goto LABEL_95;
        }

        v11 = 0;
      }

      v12 = *v157;
    }

    v21 = [v13 length];
    v143 = v13;
    v144 = [v13 bytes];
    v22 = v21;
    *(*(a1 + 40) + 455) += v21;
    if (!v21)
    {
      goto LABEL_92;
    }

    v23 = v144;
    v24 = &v144[v21];
    v153 = &v144[v22];
    while (1)
    {
      if ((v23 + 3) > v24)
      {
        v71 = *(*(a1 + 40) + 32);
        v72 = _NRCopyLogObjectForNRUUID();
        v73 = _NRLogIsLevelEnabled();

        if (!v73)
        {
          goto LABEL_92;
        }

        v74 = *(*(a1 + 40) + 32);
        v19 = _NRCopyLogObjectForNRUUID();
        v20 = [*(a1 + 40) copyDescription];
        _NRLogWithArgs();
        goto LABEL_14;
      }

      v154 = v23;
      v25 = *v23;
      v26 = *(v23 + 1);
      v27 = __rev16(v26);
      v28 = (v27 + 5);
      v155 = v27 + 5;
      if (&v23[v28] > v24)
      {
        v75 = *(*(a1 + 40) + 32);
        v76 = _NRCopyLogObjectForNRUUID();
        v77 = _NRLogIsLevelEnabled();

        if (!v77)
        {
          goto LABEL_92;
        }

        v78 = *(*(a1 + 40) + 32);
        v19 = _NRCopyLogObjectForNRUUID();
        v1 = [*(a1 + 40) copyDescription];
        _NRLogWithArgs();
        goto LABEL_91;
      }

      if (v25 < 100)
      {
        if (v155 >= v27 + 3)
        {
          v30 = v27 + 3;
        }

        else
        {
          v30 = v27 + 5;
        }

        if (v27 == -5)
        {
          p_vtable = NRSCDInterfaceConfig.vtable;
          if (qword_100228FA0 == -1)
          {
            goto LABEL_110;
          }

          goto LABEL_133;
        }

        v149 = v27 + 3;
        v31 = os_inet_checksum();
        LODWORD(v1) = v27 + 3;
        if (v27 + 3 > v155)
        {
          v102 = sub_100046E64();
          v103 = _NRLogIsLevelEnabled();

          v101 = "nrChecksumIOVecInner";
          if (v103)
          {
            v104 = sub_100046E64();
            _NRLogWithArgs();
          }

          goto LABEL_117;
        }

        p_vtable = v155;
        if (v155 < v28)
        {
          v117 = v30 >= v155;
          v118 = sub_100046E64();
          v119 = _NRLogIsLevelEnabled();

          if (v155 < v27 + 4)
          {
            if (v119)
            {
              v129 = sub_100046E64();
              IOVecString = createIOVecString();
              _NRLogWithArgs();
            }
          }

          else if (v119)
          {
            v120 = sub_100046E64();
            v134 = createIOVecString();
            _NRLogWithArgs();
          }

          _os_log_pack_size();
          __chkstk_darwin();
          v121 = *__error();
          v122 = _os_log_pack_fill();
          v123 = createIOVecString();
          sub_10005015C(v122, "nrChecksumIOVecInner", v123, v117, v149);
          goto LABEL_132;
        }

        if (v23[v149] != ~v31 || v23[v149 + 1] != (~v31 & 0xFF00) >> 8)
        {
          v79 = sub_100046E64();
          v80 = _NRLogIsLevelEnabled();

          if (v80)
          {
            v81 = sub_100046E64();
            v130 = v154[v149];
            v131 = v154[v149 + 1];
            _NRLogWithArgs();
          }

LABEL_89:
          v82 = *(*(a1 + 40) + 32);
          v83 = _NRCopyLogObjectForNRUUID();
          v84 = _NRLogIsLevelEnabled();

          if (v84)
          {
            v85 = *(*(a1 + 40) + 32);
            v19 = _NRCopyLogObjectForNRUUID();
            v1 = [*(a1 + 40) copyDescription];
            StringFromNRTLVType = createStringFromNRTLVType();
            v140 = createIOVecString();
            _NRLogWithArgs();

LABEL_91:
            goto LABEL_15;
          }

          goto LABEL_92;
        }

        v24 = v153;
        if (v25 <= 100)
        {
LABEL_27:
          if (v25 <= 2)
          {
            if (v25 == 1)
            {
              v33 = *(*(a1 + 40) + 32);
              v34 = _NRCopyLogObjectForNRUUID();
              v35 = _NRLogIsLevelEnabled();

              if (v35)
              {
                v36 = *(*(a1 + 40) + 32);
                v37 = _NRCopyLogObjectForNRUUID();
                v132 = [*(a1 + 40) copyDescription];
                _NRLogWithArgs();
              }

              goto LABEL_20;
            }

            v29 = &OBJC_IVAR___NRLinkQuickRelay__recvUncompressedIP;
            if (v25 == 2)
            {
              goto LABEL_59;
            }
          }

          else
          {
            switch(v25)
            {
              case 3:
                v29 = &OBJC_IVAR___NRLinkQuickRelay__recvEncapsulated6LoWPAN;
                goto LABEL_59;
              case 4:
                v38 = [[NSData alloc] initWithBytes:v23 + 3 length:v27];
                v1 = *(a1 + 40);
                v150 = *(v1 + 519);
                IKEv2PacketString = createIKEv2PacketString();
                v142 = [v38 length];
                v40 = [*(a1 + 40) connection];
                v41 = [*(a1 + 40) connection];
                v42 = [v41 connectionState];
                if (v42 >= 6)
                {
                  v43 = [[NSString alloc] initWithFormat:@"Unknown[%lld]", v42];
                }

                else
                {
                  v43 = *(&off_1001FAB20 + v42);
                }

                [v1 reportEvent:3007 detailsFormat:@"Receiving IKEv2 packet #%llu %@ len %llu connection %@ state %@", v150, IKEv2PacketString, v142, v40, v43];

                ++*(*(a1 + 40) + 519);
                v54 = *(a1 + 40);
                v55 = *(v54 + 335);
                if (v55)
                {
                  [v55 receivePacketData:v38];
                }

                else
                {
                  v56 = *(v54 + 32);
                  v57 = _NRCopyLogObjectForNRUUID();
                  v58 = _NRLogIsLevelEnabled();

                  if (v58)
                  {
                    v59 = *(*(a1 + 40) + 32);
                    v60 = _NRCopyLogObjectForNRUUID();
                    v138 = [*(a1 + 40) copyDescription];
                    _NRLogWithArgs();
                  }

                  [*(*(a1 + 40) + 671) addObject:v38];
                }

                goto LABEL_20;
              case 100:
                v29 = &OBJC_IVAR___NRLinkQuickRelay__recvKnownIPv6Hdr_ESP;
                goto LABEL_59;
            }
          }

          goto LABEL_20;
        }
      }

      else
      {
        v160[0] = 0;
        LODWORD(v1) = v27 + 3;
        if (v155 <= v27 + 3)
        {
          goto LABEL_122;
        }

        __memcpy_chk();
        v24 = v153;
        if (v160[0] != ((v26 ^ (v25 >> 4)) | (((16 * v25) ^ (v26 >> 8)) << 8)))
        {
          goto LABEL_89;
        }

        if (v25 <= 100)
        {
          goto LABEL_27;
        }
      }

      if (v25 <= 102)
      {
        if (v25 == 101)
        {
          v29 = &OBJC_IVAR___NRLinkQuickRelay__recvKnownIPv6Hdr_ESP_ECT0;
        }

        else
        {
          v29 = &OBJC_IVAR___NRLinkQuickRelay__recvKnownIPv6Hdr_TCP;
        }

LABEL_59:
        ++*(*(a1 + 40) + *v29);
        v1 = v160;
        bzero(v160, 0x800uLL);
        if (v27 >= 0x7D9)
        {
          if (v27 == 0xFFD8)
          {
            v107 = sub_100046E64();
            v108 = _NRLogIsLevelEnabled();

            if (v108)
            {
              v109 = sub_100046E64();
              _NRLogWithArgs();
            }

            _os_log_pack_size();
            __chkstk_darwin();
            v110 = *__error();
            v111 = _os_log_pack_fill();
            *v111 = 136446210;
            *(v111 + 4) = "[NRLinkQuickRelay readDatagramFromSession]_block_invoke_2";
            goto LABEL_121;
          }

          v44 = malloc_type_calloc(1uLL, (v27 + 40), 0x20CD4179uLL);
          if (!v44)
          {
            v124 = sub_100046E64();
            v125 = _NRLogIsLevelEnabled();

            if (v125)
            {
              v126 = sub_100046E64();
              _NRLogWithArgs();
            }

            p_vtable = _os_log_pack_size();
            __chkstk_darwin();
            v127 = *__error();
            v128 = _os_log_pack_fill();
            *v128 = 136446722;
            *(v128 + 4) = "[NRLinkQuickRelay readDatagramFromSession]_block_invoke";
            *(v128 + 12) = 2048;
            *(v128 + 14) = 1;
            *(v128 + 22) = 2048;
            *(v128 + 24) = (v27 + 40);
            while (1)
            {
LABEL_132:
              sub_100046E64();
              _NRLogAbortWithPack();
LABEL_133:
              dispatch_once(&qword_100228FA0, &stru_1001FAAA0);
LABEL_110:
              v101 = "nrChecksumUpdate";
              if (_NRLogIsLevelEnabled())
              {
                if (*(p_vtable + 4000) != -1)
                {
                  dispatch_once(&qword_100228FA0, &stru_1001FAAA0);
                }

                _NRLogWithArgs();
              }

LABEL_117:
              _os_log_pack_size();
              __chkstk_darwin();
              v105 = *__error();
              v106 = _os_log_pack_fill();
              *v106 = 136446210;
              *(v106 + 4) = v101;
LABEL_121:
              sub_100046E64();
              _NRLogAbortWithPack();
LABEL_122:
              v112 = sub_100046E64();
              v113 = _NRLogIsLevelEnabled();

              if (v113)
              {
                v114 = sub_100046E64();
                v136 = createIOVecString();
                _NRLogWithArgs();
              }

              _os_log_pack_size();
              __chkstk_darwin();
              v115 = *__error();
              p_vtable = _os_log_pack_fill();
              v116 = createIOVecString();
              sub_100050120(p_vtable, "nrWriteIOVecToBuffer", 0, 2, v1, v116);
            }
          }

          v1 = v44;
          v24 = v153;
        }

        v45 = *(a1 + 40);
        v46 = nrTLVToPacket();
        if (gNRPacketLoggingEnabled == 1)
        {
          v61 = *(*(a1 + 40) + 32);
          v62 = _NRCopyLogObjectForNRUUID();
          v63 = _NRLogIsLevelEnabled();

          if (v63)
          {
            v64 = *(*(a1 + 40) + 32);
            v151 = _NRCopyLogObjectForNRUUID();
            v142 = [*(a1 + 40) copyDescription];
            v65 = createStringFromNRTLVType();
            [v143 length];
            _NRLogWithArgs();
          }
        }

        if (v46)
        {
          v47 = objc_alloc_init(NSMutableData);
          [v47 appendBytes:v1 length:v46];
          [*(*(a1 + 40) + 391) addObject:v47];
          goto LABEL_68;
        }

        v48 = *(*(a1 + 40) + 32);
        v49 = _NRCopyLogObjectForNRUUID();
        v50 = _NRLogIsLevelEnabled();

        if (v50)
        {
          v51 = *(*(a1 + 40) + 32);
          v47 = _NRCopyLogObjectForNRUUID();
          v52 = [*(a1 + 40) copyDescription];
          v133 = createStringFromNRTLVType();
          _NRLogWithArgs();

LABEL_68:
        }

        if (v1 != v160)
        {
          free(v1);
        }

        v53 = *(a1 + 40);
        if (*(v53 + 250) == 1)
        {
          if (gNRPacketLoggingEnabled == 1)
          {
            v66 = *(v53 + 32);
            v67 = _NRCopyLogObjectForNRUUID();
            v68 = _NRLogIsLevelEnabled();

            v53 = *(a1 + 40);
            if (v68)
            {
              v69 = *(v53 + 32);
              v70 = _NRCopyLogObjectForNRUUID();
              v139 = [*(a1 + 40) copyDescription];
              _NRLogWithArgs();

              v53 = *(a1 + 40);
            }
          }

          dispatch_resume(*(v53 + 375));
          *(*(a1 + 40) + 250) = 0;
        }

        goto LABEL_20;
      }

      switch(v25)
      {
        case 'g':
          v29 = &OBJC_IVAR___NRLinkQuickRelay__recvKnownIPv6Hdr_TCP_ECT0;
          goto LABEL_59;
        case 'h':
          v29 = &OBJC_IVAR___NRLinkQuickRelay__recvKnownIPv6Hdr_ESP_ClassC;
          goto LABEL_59;
        case 'i':
          v29 = &OBJC_IVAR___NRLinkQuickRelay__recvKnownIPv6Hdr_ESP_ClassC_ECT0;
          goto LABEL_59;
      }

LABEL_20:
      v23 += v155;
      if (v23 >= v24)
      {
        goto LABEL_92;
      }
    }
  }

  v4 = v3;
  if ([v4 code] == 89)
  {
    v5 = [v4 domain];
    v6 = [v5 isEqualToString:NSPOSIXErrorDomain];

    if (v6)
    {
      v7 = *(*(a1 + 40) + 32);
      v8 = _NRCopyLogObjectForNRUUID();
      v9 = _NRLogIsLevelEnabled();

      if (!v9)
      {
        return;
      }

      v10 = *(*(a1 + 40) + 32);
      v152 = _NRCopyLogObjectForNRUUID();
      v137 = [*(a1 + 40) copyDescription];
      _NRLogWithArgs();

      goto LABEL_106;
    }
  }

  else
  {
  }

  v87 = *(a1 + 40);
  v88 = [v87 connection];
  v89 = [*(a1 + 40) connection];
  v90 = [v89 connectionState];
  if (v90 >= 6)
  {
    v91 = [[NSString alloc] initWithFormat:@"Unknown[%lld]", v90];
  }

  else
  {
    v91 = *(&off_1001FAB20 + v90);
  }

  [v87 reportEvent:10021 detailsFormat:@"connection %@ state %@ error %@", v88, v91, *(a1 + 32)];

  v92 = *(*(a1 + 40) + 32);
  v93 = _NRCopyLogObjectForNRUUID();
  v94 = _NRLogIsLevelEnabled();

  if (v94)
  {
    v95 = *(*(a1 + 40) + 32);
    v152 = _NRCopyLogObjectForNRUUID();
    v96 = [*(a1 + 40) copyDescription];
    v97 = [*(a1 + 40) connection];
    v98 = [*(a1 + 40) connection];
    v99 = [v98 connectionState];
    if (v99 >= 6)
    {
      v100 = [[NSString alloc] initWithFormat:@"Unknown[%lld]", v99];
    }

    else
    {
      v100 = *(&off_1001FAB20 + v99);
    }

    v141 = *(a1 + 32);
    _NRLogWithArgs();

LABEL_106:
  }
}

double sub_100050120(uint64_t a1, uint64_t a2, int a3, int a4, int a5, uint64_t a6)
{
  *&result = 136447234;
  *a1 = 136447234;
  *(a1 + 4) = a2;
  *(a1 + 12) = 1024;
  *(a1 + 14) = a3;
  *(a1 + 18) = 1024;
  *(a1 + 20) = a4;
  *(a1 + 24) = 1024;
  *(a1 + 26) = a5;
  *(a1 + 30) = 2112;
  *(a1 + 32) = a6;
  return result;
}

double sub_10005015C(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5)
{
  *&result = 136446978;
  *a1 = 136446978;
  *(a1 + 4) = a2;
  *(a1 + 12) = 2112;
  *(a1 + 14) = a3;
  *(a1 + 22) = 1024;
  *(a1 + 24) = a4;
  *(a1 + 28) = 1024;
  *(a1 + 30) = a5;
  return result;
}

void sub_100050704(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) destination];
  v14 = 0;
  v4 = [v2 datagramConnectionForSessionDestination:v3 uid:501 error:&v14];
  v5 = v14;

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10005081C;
  v9[3] = &unk_1001FAA80;
  v6 = *(a1 + 48);
  v9[4] = *(a1 + 56);
  v10 = *(a1 + 40);
  v11 = v4;
  v12 = *(a1 + 32);
  v13 = v5;
  v7 = v5;
  v8 = v4;
  dispatch_async(v6, v9);
}

void sub_10005081C(uint64_t a1)
{
  v2 = [*(a1 + 32) queue];
  dispatch_assert_queue_V2(v2);

  v3 = *(a1 + 32);
  if (*(a1 + 40))
  {
    v4 = *(v3 + 279);
    if (v4)
    {
      v5 = v4;
      v6 = [*(a1 + 40) sessionID];
      v7 = *(a1 + 32);
      if (v7)
      {
        v8 = *(v7 + 279);
      }

      else
      {
        v8 = 0;
      }

      v9 = [v8 sessionID];
      v10 = [v6 isEqualToString:v9];

      v3 = *(a1 + 32);
      if (v10)
      {
        [v3 setConnection:*(a1 + 48)];
        v11 = [*(a1 + 32) connection];

        v12 = *(a1 + 32);
        if (v11)
        {
          if (v12)
          {
            v13 = *(v12 + 279);
          }

          else
          {
            v13 = 0;
          }

          v14 = v13;
          v15 = [v14 sessionID];
          sub_100047AF0(v12, 10008, v15);

          v16 = *(a1 + 32);
          v17 = *(a1 + 40);
          v18 = [v16 connection];
          [v16 reportEvent:10008 detailsFormat:@"session %@ connection %@", v17, v18];

          v19 = *(a1 + 32);
          if (!v19 || (*(v19 + 255) & 1) == 0)
          {
            [v19 addObserver:*(a1 + 32) forKeyPath:@"_connection.connectionState" options:5 context:0];
            *(*(a1 + 32) + 255) = 1;
            v19 = *(a1 + 32);
          }

          v20 = *(v19 + 32);
          v21 = _NRCopyLogObjectForNRUUID();
          IsLevelEnabled = _NRLogIsLevelEnabled();

          if (IsLevelEnabled)
          {
            v23 = *(*(a1 + 32) + 32);
            v43 = _NRCopyLogObjectForNRUUID();
            v24 = [*(a1 + 32) copyDescription];
            v40 = [*(a1 + 32) connection];
            _NRLogWithArgs();
          }
        }

        else
        {
          [v12 cancelWithReason:{@"No datagram connection for session %@ service %@ error %@", *(a1 + 40), *(a1 + 56), *(a1 + 64)}];
        }

        return;
      }
    }

    else
    {
      v3 = *(a1 + 32);
    }
  }

  v25 = *(v3 + 32);
  v26 = _NRCopyLogObjectForNRUUID();
  v27 = _NRLogIsLevelEnabled();

  if (v27)
  {
    v28 = *(*(a1 + 32) + 32);
    v29 = _NRCopyLogObjectForNRUUID();
    v30 = [*(a1 + 32) copyDescription];
    v31 = *(a1 + 32);
    if (v31)
    {
      v32 = *(v31 + 279);
    }

    v42 = *(a1 + 40);
    _NRLogWithArgs();
  }

  if (*(a1 + 48))
  {
    v33 = *(*(a1 + 32) + 32);
    v34 = _NRCopyLogObjectForNRUUID();
    v35 = _NRLogIsLevelEnabled();

    if (v35)
    {
      v36 = *(*(a1 + 32) + 32);
      v37 = _NRCopyLogObjectForNRUUID();
      v39 = [*(a1 + 32) copyDescription];
      v41 = *(a1 + 48);
      _NRLogWithArgs();
    }

    v38 = *(a1 + 48);

    [v38 cancel];
  }
}

void sub_1000522F4(uint64_t a1, void *a2)
{
  if (a1)
  {
    objc_storeStrong((a1 + 319), a2);
  }
}

void sub_100052CA0(uint64_t a1, void *a2)
{
  v3 = a2;
  v39 = v3;
  if (!v3)
  {
    if (gNRPacketLoggingEnabled == 1)
    {
      v25 = *(*(a1 + 32) + 32);
      v26 = _NRCopyLogObjectForNRUUID();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      if (IsLevelEnabled)
      {
        v28 = *(*(a1 + 32) + 32);
        v29 = _NRCopyLogObjectForNRUUID();
        v36 = [*(a1 + 32) copyDescription];
        v38 = [*(a1 + 40) length];
        v34 = 1714;
        v30 = "";
        v32 = "[NRLinkQuickRelay writeDatagramToSession:]_block_invoke";
        _NRLogWithArgs();
      }
    }

    v16 = [*(a1 + 40) length];
    v17 = *(a1 + 32);
    v18 = 439;
    goto LABEL_14;
  }

  if ([v3 code] != 89 || (objc_msgSend(v39, "domain"), v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "isEqualToString:", NSPOSIXErrorDomain), v4, !v5))
  {
    v11 = *(a1 + 32);
    v12 = [v11 connection];
    v13 = [*(a1 + 32) connection];
    v14 = [v13 connectionState];
    if (v14 >= 6)
    {
      v15 = [[NSString alloc] initWithFormat:@"Unknown[%lld]", v14];
    }

    else
    {
      v15 = *(&off_1001FAB20 + v14);
    }

    [v11 reportEvent:10022 detailsFormat:@"connection %@ state %@ error %@", v12, v15, v39];

    v19 = *(*(a1 + 32) + 32);
    v20 = _NRCopyLogObjectForNRUUID();
    v21 = _NRLogIsLevelEnabled();

    if (v21)
    {
      v22 = *(*(a1 + 32) + 32);
      v23 = _NRCopyLogObjectForNRUUID();
      v24 = [*(a1 + 32) copyDescription];
      v33 = [*(a1 + 40) length];
      v35 = v39;
      v31 = v24;
      _NRLogWithArgs();
    }

    v16 = [*(a1 + 40) length];
    v17 = *(a1 + 32);
    v18 = 447;
LABEL_14:
    *(v17 + v18) += v16;
    goto LABEL_15;
  }

  v6 = *(*(a1 + 32) + 32);
  v7 = _NRCopyLogObjectForNRUUID();
  v8 = _NRLogIsLevelEnabled();

  if (v8)
  {
    v9 = *(*(a1 + 32) + 32);
    v10 = _NRCopyLogObjectForNRUUID();
    v37 = [*(a1 + 32) copyDescription];
    _NRLogWithArgs();
  }

LABEL_15:
}

void sub_10005321C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100053248(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v13 = WeakRetained;
    if (a2)
    {
      v4 = WeakRetained[4];
      v5 = _NRCopyLogObjectForNRUUID();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      WeakRetained = v13;
      if (!IsLevelEnabled)
      {
        goto LABEL_7;
      }
    }

    else
    {
      [WeakRetained cancelWithReason:@"Did not receive response to control notify"];
      v7 = v13[4];
      v8 = _NRCopyLogObjectForNRUUID();
      v9 = _NRLogIsLevelEnabled();

      WeakRetained = v13;
      if (!v9)
      {
        goto LABEL_7;
      }
    }

    v10 = v13[4];
    v11 = _NRCopyLogObjectForNRUUID();
    v12 = [v13 copyDescription];
    _NRLogWithArgs();

    WeakRetained = v13;
  }

LABEL_7:
}

void sub_1000535E8(uint64_t a1)
{
  if (!a1)
  {
    return;
  }

  v2 = [a1 queue];
  dispatch_assert_queue_V2(v2);

  if (++*(a1 + 257) >= 3u)
  {
    [a1 reportEvent:10025];
    if (*(a1 + 251) != 1)
    {
      return;
    }

    v27 = sub_10004E2D0(a1, 0);
    v3 = *(a1 + 32);
    v4 = _NRCopyLogObjectForNRUUID();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v6 = *(a1 + 32);
      v7 = _NRCopyLogObjectForNRUUID();
      v26 = [a1 copyDescription];
      [v27 count];
      _NRLogWithArgs();
    }

    *(a1 + 251) = 0;
    if (*(a1 + 249) == 1)
    {
      dispatch_resume(*(a1 + 367));
      *(a1 + 249) = 0;
    }

    goto LABEL_18;
  }

  if (*(a1 + 16) == 255)
  {
    v11 = *(a1 + 32);
    v12 = _NRCopyLogObjectForNRUUID();
    v13 = _NRLogIsLevelEnabled();

    if (!v13)
    {
      return;
    }

    goto LABEL_17;
  }

  if (!sub_1000539DC(a1))
  {
    return;
  }

  if (*(a1 + 256) == 1)
  {
    v8 = *(a1 + 32);
    v9 = _NRCopyLogObjectForNRUUID();
    v10 = _NRLogIsLevelEnabled();

    if (!v10)
    {
      return;
    }

LABEL_17:
    v17 = *(a1 + 32);
    v27 = _NRCopyLogObjectForNRUUID();
    v18 = [a1 copyDescription];
    _NRLogWithArgs();

LABEL_18:

    return;
  }

  if (*(a1 + 279))
  {
    v14 = *(a1 + 32);
    v15 = _NRCopyLogObjectForNRUUID();
    v16 = _NRLogIsLevelEnabled();

    if (!v16)
    {
      return;
    }

    goto LABEL_17;
  }

  *(a1 + 256) = 1;
  v19 = *(a1 + 271);
  v20 = [a1 queue];
  v21 = [a1 description];
  if (qword_1002292C0 != -1)
  {
    dispatch_once(&qword_1002292C0, &stru_1001FC4B0);
  }

  v22 = qword_1002292C8;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100053C00;
  block[3] = &unk_1001FCE28;
  v29 = v21;
  v30 = v19;
  v31 = v20;
  v32 = a1;
  v23 = v20;
  v24 = v19;
  v25 = v21;
  dispatch_async(v22, block);
}

uint64_t sub_1000539DC(void *a1)
{
  v1 = a1;
  if (a1)
  {
    v2 = [a1 queue];
    dispatch_assert_queue_V2(v2);

    v3 = *(v1 + 271);
    v4 = *(v1 + 32);
    v5 = _NRCopyLogObjectForNRUUID();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (!v3)
    {
      if (IsLevelEnabled)
      {
        v9 = *(v1 + 32);
        v10 = _NRCopyLogObjectForNRUUID();
        v15 = [v1 copyDescription];
        _NRLogWithArgs();
      }

      v11 = [[IDSService alloc] initWithService:@"com.apple.private.alloy.terminus"];
      if (!v11)
      {
        if (qword_100228FA0 != -1)
        {
          dispatch_once(&qword_100228FA0, &stru_1001FAAA0);
        }

        if (_NRLogIsLevelEnabled())
        {
          if (qword_100228FA0 != -1)
          {
            dispatch_once(&qword_100228FA0, &stru_1001FAAA0);
          }

          _NRLogWithArgs();
        }

        v8 = 0;
        v1 = 0;
        goto LABEL_18;
      }

      v8 = v11;
      v12 = [v1 queue];
      [v8 addDelegate:v1 queue:v12];

      objc_storeStrong((v1 + 271), v8);
LABEL_9:
      v1 = 1;
LABEL_18:

      return v1;
    }

    if (IsLevelEnabled)
    {
      v7 = *(v1 + 32);
      v8 = _NRCopyLogObjectForNRUUID();
      v14 = [v1 copyDescription];
      v16 = *(v1 + 271);
      _NRLogWithArgs();

      goto LABEL_9;
    }

    return 1;
  }

  return v1;
}

void sub_100053C00(uint64_t a1)
{
  if (qword_100228FA0 != -1)
  {
    dispatch_once(&qword_100228FA0, &stru_1001FAAA0);
  }

  if (_NRLogIsLevelEnabled())
  {
    if (qword_100228FA0 != -1)
    {
      dispatch_once(&qword_100228FA0, &stru_1001FAAA0);
    }

    v35 = 643;
    v37 = *(a1 + 32);
    v31 = "";
    v33 = "[NRLinkQuickRelay setupIDSSessionAndSendInvitation]_block_invoke";
    _NRLogWithArgs();
  }

  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  v2 = [*(a1 + 40) devices];
  v3 = [v2 countByEnumeratingWithState:&v53 objects:v60 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v54;
LABEL_9:
    v6 = 0;
    while (1)
    {
      if (*v54 != v5)
      {
        objc_enumerationMutation(v2);
      }

      v7 = *(*(&v53 + 1) + 8 * v6);
      if ([v7 isDefaultPairedDevice])
      {
        break;
      }

      if (v4 == ++v6)
      {
        v4 = [v2 countByEnumeratingWithState:&v53 objects:v60 count:16];
        if (v4)
        {
          goto LABEL_9;
        }

        goto LABEL_15;
      }
    }

    v8 = v7;

    if (!v8)
    {
      goto LABEL_31;
    }

    if (qword_100228FA0 != -1)
    {
      dispatch_once(&qword_100228FA0, &stru_1001FAAA0);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_100228FA0 != -1)
      {
        dispatch_once(&qword_100228FA0, &stru_1001FAAA0);
      }

      v38 = *(a1 + 32);
      v40 = v8;
      v34 = "[NRLinkQuickRelay setupIDSSessionAndSendInvitation]_block_invoke";
      v36 = 665;
      v32 = "";
      _NRLogWithArgs();
    }

    v9 = [[IDSAccountController alloc] initWithService:@"com.apple.private.alloy.terminus"];
    v10 = [v9 accounts];
    if (qword_100228FA0 != -1)
    {
      dispatch_once(&qword_100228FA0, &stru_1001FAAA0);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_100228FA0 != -1)
      {
        dispatch_once(&qword_100228FA0, &stru_1001FAAA0);
      }

      v38 = *(a1 + 32);
      v40 = v10;
      v34 = "[NRLinkQuickRelay setupIDSSessionAndSendInvitation]_block_invoke";
      v36 = 670;
      v32 = "";
      _NRLogWithArgs();
    }

    v42 = v9;
    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    v11 = v10;
    v12 = [v11 countByEnumeratingWithState:&v48 objects:v59 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v49;
LABEL_39:
      v16 = 0;
      while (1)
      {
        if (*v49 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v17 = *(*(&v48 + 1) + 8 * v16);
        if (v17)
        {
          if ([*(*(&v48 + 1) + 8 * v16) isActive])
          {
            break;
          }
        }

        if (v13 == ++v16)
        {
          v13 = [v11 countByEnumeratingWithState:&v48 objects:v59 count:16];
          if (!v13)
          {
            goto LABEL_58;
          }

          goto LABEL_39;
        }
      }

      v43 = v17;

      if (qword_100228FA0 != -1)
      {
        dispatch_once(&qword_100228FA0, &stru_1001FAAA0);
      }

      if (_NRLogIsLevelEnabled())
      {
        if (qword_100228FA0 != -1)
        {
          dispatch_once(&qword_100228FA0, &stru_1001FAAA0);
        }

        v38 = *(a1 + 32);
        v40 = v43;
        v34 = "[NRLinkQuickRelay setupIDSSessionAndSendInvitation]_block_invoke";
        v36 = 690;
        v32 = "";
        _NRLogWithArgs();
      }

      v18 = [v8 pushToken];
      v19 = [v8 identities];
      v20 = [v8 service];
      v41 = v18;
      v21 = _IDSCopyIDForPushTokenAndIdentitiesWithService();
      v22 = [IDSSession alloc];
      v23 = [NSSet setWithObject:v21];
      v57[0] = IDSSessionSingleChannelDirectModeKey;
      v57[1] = IDSSessionForceInternetInvitationKey;
      v58[0] = &__kCFBooleanTrue;
      v58[1] = &__kCFBooleanTrue;
      v24 = [NSDictionary dictionaryWithObjects:v58 forKeys:v57 count:2];
      v25 = [v22 initWithAccount:v43 destinations:v23 options:v24];

      if (qword_100228FA0 != -1)
      {
        dispatch_once(&qword_100228FA0, &stru_1001FAAA0);
      }

      if (_NRLogIsLevelEnabled())
      {
        if (qword_100228FA0 != -1)
        {
          dispatch_once(&qword_100228FA0, &stru_1001FAAA0);
        }

        v39 = *(a1 + 32);
        _NRLogWithArgs();
      }

      v44[0] = _NSConcreteStackBlock;
      v44[1] = 3221225472;
      v44[2] = sub_100054498;
      v44[3] = &unk_1001FD088;
      v26 = *(a1 + 48);
      v44[4] = *(a1 + 56);
      v45 = v25;
      v46 = v21;
      v27 = v21;
      v28 = v25;
      dispatch_async(v26, v44);

      v29 = v42;
    }

    else
    {
LABEL_58:

      if (qword_100228FA0 != -1)
      {
        dispatch_once(&qword_100228FA0, &stru_1001FAAA0);
      }

      v29 = v42;
      if (_NRLogIsLevelEnabled())
      {
        if (qword_100228FA0 != -1)
        {
          dispatch_once(&qword_100228FA0, &stru_1001FAAA0);
        }

        _NRLogWithArgs();
      }

      v47[0] = _NSConcreteStackBlock;
      v47[1] = 3221225472;
      v47[2] = sub_10005444C;
      v47[3] = &unk_1001FD3C8;
      v30 = *(a1 + 48);
      v47[4] = *(a1 + 56);
      dispatch_async(v30, v47);
    }
  }

  else
  {
LABEL_15:

LABEL_31:
    if (qword_100228FA0 != -1)
    {
      dispatch_once(&qword_100228FA0, &stru_1001FAAA0);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_100228FA0 != -1)
      {
        dispatch_once(&qword_100228FA0, &stru_1001FAAA0);
      }

      _NRLogWithArgs();
    }

    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100054400;
    block[3] = &unk_1001FD3C8;
    v15 = *(a1 + 48);
    block[4] = *(a1 + 56);
    dispatch_async(v15, block);
  }
}

id sub_100054400(uint64_t a1)
{
  v2 = [*(a1 + 32) queue];
  dispatch_assert_queue_V2(v2);

  v3 = *(a1 + 32);

  return [v3 suspend];
}

id sub_10005444C(uint64_t a1)
{
  v2 = [*(a1 + 32) queue];
  dispatch_assert_queue_V2(v2);

  v3 = *(a1 + 32);

  return [v3 suspend];
}

void sub_100054498(id *a1)
{
  v2 = [a1[4] queue];
  dispatch_assert_queue_V2(v2);

  *(a1[4] + 256) = 0;
  v3 = a1[4];
  if (*(v3 + 16) == 255)
  {
    v19 = v3[4];
    v20 = _NRCopyLogObjectForNRUUID();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v22 = *(a1[4] + 4);
      v28 = _NRCopyLogObjectForNRUUID();
      v27 = [a1[4] copyDescription];
      _NRLogWithArgs();
    }
  }

  else
  {
    v4 = a1[5];
    v5 = [a1[4] queue];
    [v4 setDelegate:v3 queue:v5];

    v6 = a1[4];
    if (v6)
    {
      objc_storeStrong((v6 + 279), a1[5]);
      v7 = a1[4];
      if (v7)
      {
        objc_storeStrong((v7 + 287), a1[6]);
        v8 = a1[4];
        if (v8)
        {
          v9 = [v8 queue];
          dispatch_assert_queue_V2(v9);

          v10 = *(v8 + 4);
          v11 = _NRCopyLogObjectForNRUUID();
          v12 = _NRLogIsLevelEnabled();

          if (v12)
          {
            v13 = *(v8 + 4);
            v14 = _NRCopyLogObjectForNRUUID();
            v25 = 791;
            v26 = [v8 copyDescription];
            v23 = "";
            v24 = "[NRLinkQuickRelay sendInvitation]";
            _NRLogWithArgs();
          }

          v8[253] = 1;
          [*(v8 + 279) sendInvitation];
          v15 = *(v8 + 279);
          v16 = [v15 sessionID];
          sub_100047AF0(v8, 10003, v16);

          [v8 reportEvent:10003 detailsFormat:@"%@", *(v8 + 279)];
          ++*(v8 + 415);
          v17 = nr_absolute_time();
          v18 = *(v8 + 687);
          if (v18)
          {
            *(v18 + 120) = v17;
          }
        }
      }
    }
  }
}

uint64_t sub_10005674C()
{
  if (dword_100228380 != -1)
  {
LABEL_2:
    v0 = sub_10013A56C();
    if (qword_100228FC0 != -1)
    {
      dispatch_once(&qword_100228FC0, &stru_1001FABC0);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_100228FC0 != -1)
      {
        dispatch_once(&qword_100228FC0, &stru_1001FABC0);
      }

      _NRLogWithArgs();
    }

    if (notify_set_state(dword_100228380, v0))
    {
      if (qword_100228FC0 != -1)
      {
        dispatch_once(&qword_100228FC0, &stru_1001FABC0);
      }

      if (!_NRLogIsLevelEnabled())
      {
        goto LABEL_27;
      }

      if (qword_100228FC0 == -1)
      {
LABEL_26:
        _NRLogWithArgs();
LABEL_27:
        result = notify_cancel(dword_100228380);
        dword_100228380 = -1;
        return result;
      }
    }

    else
    {
      result = notify_post("com.apple.private.restrict-post.networkrelay.endpointcache");
      if (!result)
      {
        return result;
      }

      if (qword_100228FC0 != -1)
      {
        dispatch_once(&qword_100228FC0, &stru_1001FABC0);
      }

      if (!_NRLogIsLevelEnabled())
      {
        goto LABEL_27;
      }

      if (qword_100228FC0 == -1)
      {
        goto LABEL_26;
      }
    }

    dispatch_once(&qword_100228FC0, &stru_1001FABC0);
    goto LABEL_26;
  }

  result = notify_register_check("com.apple.private.restrict-post.networkrelay.endpointcache", &dword_100228380);
  if (result)
  {
    dword_100228380 = -1;
    if (qword_100228FC0 != -1)
    {
      dispatch_once(&qword_100228FC0, &stru_1001FABC0);
    }

    result = _NRLogIsLevelEnabled();
    if (result)
    {
      if (qword_100228FC0 != -1)
      {
        dispatch_once(&qword_100228FC0, &stru_1001FABC0);
      }

      return _NRLogWithArgs();
    }
  }

  else if (dword_100228380 != -1)
  {
    goto LABEL_2;
  }

  return result;
}

void sub_100056A04(id a1)
{
  v1 = os_log_create("com.apple.networkrelay", "");
  v2 = qword_100228FB8;
  qword_100228FB8 = v1;

  _objc_release_x1(v1, v2);
}

char *sub_100056A48(char *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!a1)
  {
    goto LABEL_15;
  }

  if (!v6)
  {
    v18 = sub_100056D2C();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v20 = sub_100056D2C();
      _NRLogWithArgs();

      v16 = 0;
      goto LABEL_6;
    }

LABEL_15:
    v16 = 0;
    goto LABEL_6;
  }

  v30.receiver = a1;
  v30.super_class = TXSContext;
  v8 = objc_msgSendSuper2(&v30, "init");
  if (!v8)
  {
    v21 = sub_100056D2C();
    v22 = _NRLogIsLevelEnabled();

    a1 = "[TXSContext initWithRequest:onConnection:]";
    if (v22)
    {
      v23 = sub_100056D2C();
      _NRLogWithArgs();
    }

    goto LABEL_14;
  }

  v10 = v8;
  objc_setProperty_atomic(v8, v9, v7, 8);
  objc_setProperty_atomic(v10, v11, v5, 16);
  v12 = v5;
  reply = xpc_dictionary_create_reply(v12);
  if (!reply)
  {
    v24 = sub_100056D2C();
    v25 = _NRLogIsLevelEnabled();

    a1 = "nr_xpc_dictionary_create_reply";
    if (v25)
    {
      v26 = sub_100056D2C();
      _NRLogWithArgs();
    }

LABEL_14:
    v5 = _os_log_pack_size();
    v7 = &v29 - ((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0);
    v27 = *__error();
    v28 = _os_log_pack_fill();
    *v28 = 136446210;
    *(v28 + 4) = a1;
    sub_100056D2C();
    _NRLogAbortWithPack();
    goto LABEL_15;
  }

  v14 = reply;

  objc_setProperty_atomic(v10, v15, v14, 24);
  a1 = v10;
  v16 = a1;
LABEL_6:

  return v16;
}

id sub_100056D2C()
{
  if (qword_100228FC0 != -1)
  {
    dispatch_once(&qword_100228FC0, &stru_1001FABC0);
  }

  v1 = qword_100228FB8;

  return v1;
}

id sub_100056D80(void *self, const char *a2)
{
  if (!self)
  {
    return 0;
  }

  v3 = self[4];
  if (!v3)
  {
    Property = objc_getProperty(self, a2, 8, 1);
    pid = xpc_connection_get_pid(Property);
    v6 = [[NSString alloc] initWithFormat:@"unknown:%d", pid];
    bzero(buffer, 0x400uLL);
    if (pid >= 1 && proc_pidpath(pid, buffer, 0x400u) >= 1 && buffer[0])
    {
      v7 = [[NSString alloc] initWithFormat:@"%s:%d", buffer, pid];

      v6 = v7;
    }

    v8 = self[4];
    self[4] = v6;

    v3 = self[4];
  }

  return v3;
}

void *sub_100056ED8(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (a1)
  {
    v14.receiver = a1;
    v14.super_class = TXSHandler;
    v6 = objc_msgSendSuper2(&v14, "init");
    if (!v6)
    {
      v9 = sub_100056D2C();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      if (IsLevelEnabled)
      {
        v11 = sub_100056D2C();
        _NRLogWithArgs();
      }

      _os_log_pack_size();
      v12 = *__error();
      v13 = _os_log_pack_fill();
      *v13 = 136446210;
      *(v13 + 4) = "[TXSHandler initWithHandlerFunction:allowedEntitlementGroup:]";
      sub_100056D2C();
      _NRLogAbortWithPack();
    }

    a1 = v6;
    v6[2] = a2;
    objc_setProperty_atomic(v6, v7, v5, 8);
  }

  return a1;
}

void *sub_10005703C(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v38.receiver = a1;
  v38.super_class = TerminusdXPCServer;
  v1 = objc_msgSendSuper2(&v38, "init");
  if (!v1)
  {
    v29 = sub_100056D2C();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v31 = sub_100056D2C();
      _NRLogWithArgs();
    }

    _os_log_pack_size();
    v32 = *__error();
    v33 = _os_log_pack_fill();
    *v33 = 136446210;
    *(v33 + 4) = "[TerminusdXPCServer initInternal]";
    sub_100056D2C();
    _NRLogAbortWithPack();
    return 0;
  }

  v2 = v1;
  v3 = sub_100003490();
  objc_setProperty_atomic(v2, v4, v3, 8);

  Property = objc_getProperty(v2, v5, 8, 1);
  dispatch_assert_queue_V2(Property);
  v7 = objc_alloc_init(NSMutableDictionary);
  objc_setProperty_atomic(v2, v8, v7, 32);

  v9 = objc_alloc_init(NSMutableSet);
  objc_setProperty_atomic(v2, v10, v9, 40);

  v11 = objc_alloc_init(NSMutableSet);
  objc_setProperty_atomic(v2, v12, v11, 24);

  sub_10005738C(v2);
  v13 = objc_alloc_init(NSMutableArray);
  objc_setProperty_atomic(v2, v14, v13, 48);

  v37 = 0u;
  v36 = 0u;
  v35 = 0u;
  v34 = 0u;
  v16 = objc_getProperty(v2, v15, 40, 1);
  v17 = [v16 countByEnumeratingWithState:&v34 objects:v40 count:16];
  if (v17)
  {
    v19 = v17;
    v20 = *v35;
    do
    {
      for (i = 0; i != v19; i = i + 1)
      {
        if (*v35 != v20)
        {
          objc_enumerationMutation(v16);
        }

        v22 = *(*(&v34 + 1) + 8 * i);
        v23 = objc_getProperty(v2, v18, 48, 1);
        v39 = v22;
        v24 = v23;
        v25 = [NSArray arrayWithObjects:&v39 count:1, v34];
        [v24 addObject:v25];
      }

      v19 = [v16 countByEnumeratingWithState:&v34 objects:v40 count:16];
    }

    while (v19);
  }

  objc_setProperty_atomic(v2, v26, 0, 40);
  sub_100058E60(v2, v27);
  return v2;
}

void sub_10005738C(void *a1)
{
  v2 = [NSString alloc];
  v3 = [v2 initWithUTF8String:nrXPCEntitlementPing];
  v296 = v3;
  v4 = [NSArray arrayWithObjects:&v296 count:1];
  v297 = v4;
  v5 = [NSArray arrayWithObjects:&v297 count:1];
  sub_1000591D8(a1, sub_10006CEA4, 1, v5);

  v6 = [NSString alloc];
  v7 = nrXPCEntitlementCompanionLink;
  v8 = [v6 initWithUTF8String:nrXPCEntitlementCompanionLink];
  v294 = v8;
  v9 = [NSArray arrayWithObjects:&v294 count:1];
  v295 = v9;
  v10 = [NSArray arrayWithObjects:&v295 count:1];
  sub_1000591D8(a1, sub_10006CCC8, 25, v10);

  v11 = [[NSString alloc] initWithUTF8String:v7];
  v292 = v11;
  v12 = [NSArray arrayWithObjects:&v292 count:1];
  v293 = v12;
  v13 = [NSArray arrayWithObjects:&v293 count:1];
  sub_1000591D8(a1, sub_10006CAEC, 2, v13);

  v14 = [[NSString alloc] initWithUTF8String:v7];
  v290 = v14;
  v15 = [NSArray arrayWithObjects:&v290 count:1];
  v291 = v15;
  v16 = [NSArray arrayWithObjects:&v291 count:1];
  sub_1000591D8(a1, sub_10006C910, 3, v16);

  v17 = [NSString alloc];
  v18 = [v17 initWithUTF8String:nrXPCEntitlementCompanionLinkIsEnabled];
  v288 = v18;
  v19 = [NSArray arrayWithObjects:&v288 count:1];
  v289 = v19;
  v20 = [NSArray arrayWithObjects:&v289 count:1];
  sub_1000591D8(a1, sub_10006C6E0, 12, v20);

  v21 = [[NSString alloc] initWithUTF8String:v7];
  v286 = v21;
  v22 = [NSArray arrayWithObjects:&v286 count:1];
  v287 = v22;
  v23 = [NSArray arrayWithObjects:&v287 count:1];
  sub_1000591D8(a1, sub_10006C4A0, 4, v23);

  v24 = [NSString alloc];
  v25 = nrXPCEntitlementDiagnostic;
  v26 = [v24 initWithUTF8String:nrXPCEntitlementDiagnostic];
  v284 = v26;
  v27 = [NSArray arrayWithObjects:&v284 count:1];
  v285 = v27;
  v28 = [NSArray arrayWithObjects:&v285 count:1];
  sub_1000591D8(a1, sub_10006BFC4, 21, v28);

  v29 = [[NSString alloc] initWithUTF8String:v25];
  v282 = v29;
  v30 = [NSArray arrayWithObjects:&v282 count:1];
  v283 = v30;
  v31 = [NSArray arrayWithObjects:&v283 count:1];
  sub_1000591D8(a1, sub_10006B39C, 22, v31);

  v32 = [[NSString alloc] initWithUTF8String:v25];
  v280 = v32;
  v33 = [NSArray arrayWithObjects:&v280 count:1];
  v281 = v33;
  v34 = [NSArray arrayWithObjects:&v281 count:1];
  sub_1000591D8(a1, sub_100069D40, 33, v34);

  v35 = [[NSString alloc] initWithUTF8String:v7];
  v278 = v35;
  v36 = [NSArray arrayWithObjects:&v278 count:1];
  v279 = v36;
  v37 = [NSArray arrayWithObjects:&v279 count:1];
  sub_1000591D8(a1, sub_100069AEC, 5, v37);

  v38 = [[NSString alloc] initWithUTF8String:v7];
  v276 = v38;
  v39 = [NSArray arrayWithObjects:&v276 count:1];
  v277 = v39;
  v40 = [NSArray arrayWithObjects:&v277 count:1];
  sub_1000591D8(a1, sub_1000697D0, 48, v40);

  v41 = [NSString alloc];
  v42 = nrXPCEntitlementDevicesRead;
  v43 = [v41 initWithUTF8String:nrXPCEntitlementDevicesRead];
  v274 = v43;
  v44 = [NSArray arrayWithObjects:&v274 count:1];
  v275 = v44;
  v45 = [NSArray arrayWithObjects:&v275 count:1];
  sub_1000591D8(a1, sub_100068DB4, 6, v45);

  v46 = [[NSString alloc] initWithUTF8String:v7];
  v272 = v46;
  v47 = [NSArray arrayWithObjects:&v272 count:1];
  v273 = v47;
  v48 = [NSArray arrayWithObjects:&v273 count:1];
  sub_1000591D8(a1, sub_100068674, 7, v48);

  v49 = [[NSString alloc] initWithUTF8String:v7];
  v270 = v49;
  v50 = [NSArray arrayWithObjects:&v270 count:1];
  v271 = v50;
  v51 = [NSArray arrayWithObjects:&v271 count:1];
  sub_1000591D8(a1, sub_100067FE4, 31, v51);

  v52 = [[NSString alloc] initWithUTF8String:v42];
  v268 = v52;
  v53 = [NSArray arrayWithObjects:&v268 count:1];
  v269 = v53;
  v54 = [NSArray arrayWithObjects:&v269 count:1];
  sub_1000591D8(a1, sub_1000678F0, 13, v54);

  v55 = [[NSString alloc] initWithUTF8String:v42];
  v266 = v55;
  v56 = [NSArray arrayWithObjects:&v266 count:1];
  v267 = v56;
  v57 = [NSArray arrayWithObjects:&v267 count:1];
  sub_1000591D8(a1, sub_1000671F8, 50, v57);

  v58 = [[NSString alloc] initWithUTF8String:v42];
  v264 = v58;
  v59 = [NSArray arrayWithObjects:&v264 count:1];
  v265 = v59;
  v60 = [NSArray arrayWithObjects:&v265 count:1];
  sub_1000591D8(a1, sub_100066958, 46, v60);

  v61 = [[NSString alloc] initWithUTF8String:v42];
  v262 = v61;
  v62 = [NSArray arrayWithObjects:&v262 count:1];
  v263 = v62;
  v63 = [NSArray arrayWithObjects:&v263 count:1];
  sub_1000591D8(a1, sub_10006674C, 45, v63);

  v64 = [NSString alloc];
  v65 = nrXPCEntitlementTesting;
  v66 = [v64 initWithUTF8String:nrXPCEntitlementTesting];
  v260 = v66;
  v67 = [NSArray arrayWithObjects:&v260 count:1];
  v261 = v67;
  v68 = [NSArray arrayWithObjects:&v261 count:1];
  sub_1000591D8(a1, sub_1000662F4, 20, v68);

  v69 = [NSString alloc];
  v70 = nrXPCEntitlementDevicesWrite;
  v71 = [v69 initWithUTF8String:nrXPCEntitlementDevicesWrite];
  v258 = v71;
  v72 = [NSArray arrayWithObjects:&v258 count:1];
  v259 = v72;
  v73 = [NSArray arrayWithObjects:&v259 count:1];
  sub_1000591D8(a1, sub_100064B28, 14, v73);

  v74 = [[NSString alloc] initWithUTF8String:v70];
  v256 = v74;
  v75 = [NSArray arrayWithObjects:&v256 count:1];
  v257 = v75;
  v76 = [NSArray arrayWithObjects:&v257 count:1];
  sub_1000591D8(a1, sub_100064520, 15, v76);

  v77 = [[NSString alloc] initWithUTF8String:v70];
  v254 = v77;
  v78 = [NSArray arrayWithObjects:&v254 count:1];
  v255 = v78;
  v79 = [NSArray arrayWithObjects:&v255 count:1];
  sub_1000591D8(a1, sub_100063EF0, 19, v79);

  v80 = [[NSString alloc] initWithUTF8String:v70];
  v252 = v80;
  v81 = [NSArray arrayWithObjects:&v252 count:1];
  v253 = v81;
  v82 = [NSArray arrayWithObjects:&v253 count:1];
  sub_1000591D8(a1, sub_100063960, 16, v82);

  v83 = [[NSString alloc] initWithUTF8String:v70];
  v250 = v83;
  v84 = [NSArray arrayWithObjects:&v250 count:1];
  v251 = v84;
  v85 = [NSArray arrayWithObjects:&v251 count:1];
  sub_1000591D8(a1, sub_1000633D0, 17, v85);

  v86 = [[NSString alloc] initWithUTF8String:v65];
  v248 = v86;
  v87 = [NSArray arrayWithObjects:&v248 count:1];
  v249 = v87;
  v88 = [NSArray arrayWithObjects:&v249 count:1];
  sub_1000591D8(a1, sub_100063020, 18, v88);

  v89 = [[NSString alloc] initWithUTF8String:v65];
  v246 = v89;
  v90 = [NSArray arrayWithObjects:&v246 count:1];
  v247 = v90;
  v91 = [NSArray arrayWithObjects:&v247 count:1];
  sub_1000591D8(a1, sub_100062C9C, 47, v91);

  v92 = [[NSString alloc] initWithUTF8String:v65];
  v244 = v92;
  v93 = [NSArray arrayWithObjects:&v244 count:1];
  v245 = v93;
  v94 = [NSArray arrayWithObjects:&v245 count:1];
  sub_1000591D8(a1, sub_100062A78, 23, v94);

  v95 = [[NSString alloc] initWithUTF8String:v65];
  v242 = v95;
  v96 = [NSArray arrayWithObjects:&v242 count:1];
  v243 = v96;
  v97 = [NSArray arrayWithObjects:&v243 count:1];
  sub_1000591D8(a1, sub_100062854, 24, v97);

  v98 = [NSString alloc];
  v99 = [v98 initWithUTF8String:nrXPCEntitlementDeviceMonitor];
  v240 = v99;
  v100 = [NSArray arrayWithObjects:&v240 count:1];
  v241 = v100;
  v101 = [NSArray arrayWithObjects:&v241 count:1];
  sub_1000591D8(a1, sub_100061F04, 10, v101);

  v102 = [NSString alloc];
  v103 = [v102 initWithUTF8String:nrXPCEntitlementDevicePreferences];
  v238 = v103;
  v104 = [NSArray arrayWithObjects:&v238 count:1];
  v239 = v104;
  v105 = [NSArray arrayWithObjects:&v239 count:1];
  sub_1000591D8(a1, sub_100060B24, 11, v105);

  v106 = [NSString alloc];
  v107 = [v106 initWithUTF8String:nrXPCEntitlementTestLinkRecommendation];
  v236 = v107;
  v108 = [NSArray arrayWithObjects:&v236 count:1];
  v237 = v108;
  v109 = [NSArray arrayWithObjects:&v237 count:1];
  sub_1000591D8(a1, sub_100060950, 26, v109);

  v110 = [[NSString alloc] initWithUTF8String:v65];
  v234 = v110;
  v111 = [NSArray arrayWithObjects:&v234 count:1];
  v235 = v111;
  v112 = [NSArray arrayWithObjects:&v235 count:1];
  sub_1000591D8(a1, sub_100060724, 27, v112);

  v113 = [[NSString alloc] initWithUTF8String:v65];
  v232 = v113;
  v114 = [NSArray arrayWithObjects:&v232 count:1];
  v233 = v114;
  v115 = [NSArray arrayWithObjects:&v233 count:1];
  sub_1000591D8(a1, sub_10005FED8, 28, v115);

  v116 = [[NSString alloc] initWithUTF8String:v65];
  v230 = v116;
  v117 = [NSArray arrayWithObjects:&v230 count:1];
  v231 = v117;
  v118 = [NSArray arrayWithObjects:&v231 count:1];
  sub_1000591D8(a1, sub_10005FC5C, 38, v118);

  v119 = [[NSString alloc] initWithUTF8String:v65];
  v228 = v119;
  v120 = [NSArray arrayWithObjects:&v228 count:1];
  v229 = v120;
  v121 = [NSArray arrayWithObjects:&v229 count:1];
  sub_1000591D8(a1, sub_10005F868, 29, v121);

  v122 = [[NSString alloc] initWithUTF8String:v65];
  v226 = v122;
  v123 = [NSArray arrayWithObjects:&v226 count:1];
  v227 = v123;
  v124 = [NSArray arrayWithObjects:&v227 count:1];
  sub_1000591D8(a1, sub_10005F5E4, 37, v124);

  v125 = [[NSString alloc] initWithUTF8String:v65];
  v224 = v125;
  v126 = [NSArray arrayWithObjects:&v224 count:1];
  v225 = v126;
  v127 = [NSArray arrayWithObjects:&v225 count:1];
  sub_1000591D8(a1, sub_10005F1F0, 30, v127);

  v128 = [[NSString alloc] initWithUTF8String:v65];
  v222 = v128;
  v129 = [NSArray arrayWithObjects:&v222 count:1];
  v223 = v129;
  v130 = [NSArray arrayWithObjects:&v223 count:1];
  sub_1000591D8(a1, sub_10005EDD0, 51, v130);

  v131 = [[NSString alloc] initWithUTF8String:v65];
  v220 = v131;
  v132 = [NSArray arrayWithObjects:&v220 count:1];
  v221 = v132;
  v133 = [NSArray arrayWithObjects:&v221 count:1];
  sub_1000591D8(a1, sub_10005E910, 39, v133);

  v134 = [[NSString alloc] initWithUTF8String:v65];
  v218 = v134;
  v135 = [NSArray arrayWithObjects:&v218 count:1];
  v219 = v135;
  v136 = [NSArray arrayWithObjects:&v219 count:1];
  sub_1000591D8(a1, sub_10005E100, 40, v136);

  v137 = [[NSString alloc] initWithUTF8String:v65];
  v216 = v137;
  v138 = [NSArray arrayWithObjects:&v216 count:1];
  v217 = v138;
  v139 = [NSArray arrayWithObjects:&v217 count:1];
  sub_1000591D8(a1, sub_10005DCD4, 43, v139);

  v140 = [[NSString alloc] initWithUTF8String:v65];
  v214 = v140;
  v141 = [NSArray arrayWithObjects:&v214 count:1];
  v215 = v141;
  v142 = [NSArray arrayWithObjects:&v215 count:1];
  sub_1000591D8(a1, sub_10005D7B4, 34, v142);

  v143 = [NSString alloc];
  v144 = [v143 initWithUTF8String:nrXPCEntitlementFixedInterfaceMode];
  v212 = v144;
  v145 = [NSArray arrayWithObjects:&v212 count:1];
  v213 = v145;
  v146 = [NSArray arrayWithObjects:&v213 count:1];
  sub_1000591D8(a1, sub_10005D224, 32, v146);

  v147 = [[NSString alloc] initWithUTF8String:v42];
  v210 = v147;
  v148 = [NSArray arrayWithObjects:&v210 count:1];
  v211 = v148;
  v149 = [NSArray arrayWithObjects:&v211 count:1];
  sub_1000591D8(a1, sub_10005CDFC, 35, v149);

  v150 = [NSString alloc];
  v151 = [v150 initWithUTF8String:nrXPCEntitlementRetryConnections];
  v208 = v151;
  v152 = [NSArray arrayWithObjects:&v208 count:1];
  v209 = v152;
  v153 = [NSArray arrayWithObjects:&v209 count:1];
  sub_1000591D8(a1, sub_10005CA20, 36, v153);

  v154 = [NSString alloc];
  v155 = [v154 initWithUTF8String:nrXPCEntitlementXPCComm];
  v206 = v155;
  v156 = [NSArray arrayWithObjects:&v206 count:1];
  v207 = v156;
  v157 = [NSArray arrayWithObjects:&v207 count:1];
  sub_1000591D8(a1, sub_10005C294, 41, v157);

  v158 = [[NSString alloc] initWithUTF8String:v65];
  v204 = v158;
  v159 = [NSArray arrayWithObjects:&v204 count:1];
  v205 = v159;
  v160 = [NSArray arrayWithObjects:&v205 count:1];
  sub_1000591D8(a1, sub_10005BF3C, 42, v160);

  v161 = [[NSString alloc] initWithUTF8String:v65];
  v202 = v161;
  v162 = [NSArray arrayWithObjects:&v202 count:1];
  v203 = v162;
  v163 = [NSArray arrayWithObjects:&v203 count:1];
  sub_1000591D8(a1, sub_10005BD68, 44, v163);

  v164 = [NSString alloc];
  v165 = nrXPCEntitlementPairing;
  v166 = [v164 initWithUTF8String:nrXPCEntitlementPairing];
  v200 = v166;
  v167 = [NSArray arrayWithObjects:&v200 count:1];
  v201 = v167;
  v168 = [NSArray arrayWithObjects:&v201 count:1];
  sub_1000591D8(a1, sub_1000030E4, 49, v168);

  v169 = [NSString alloc];
  v170 = [v169 initWithUTF8String:nrXPCEntitlementIdentityProxy];
  v198 = v170;
  v171 = [NSArray arrayWithObjects:&v198 count:1];
  v199 = v171;
  v172 = [NSArray arrayWithObjects:&v199 count:1];
  sub_1000591D8(a1, sub_10005B908, 52, v172);

  v173 = [[NSString alloc] initWithUTF8String:v65];
  v196 = v173;
  v174 = [NSArray arrayWithObjects:&v196 count:1];
  v197 = v174;
  v175 = [NSArray arrayWithObjects:&v197 count:1];
  sub_1000591D8(a1, sub_10005B504, 53, v175);

  v176 = [[NSString alloc] initWithUTF8String:v65];
  v194 = v176;
  v177 = [NSArray arrayWithObjects:&v194 count:1];
  v195 = v177;
  v178 = [NSArray arrayWithObjects:&v195 count:1];
  sub_1000591D8(a1, sub_10005B228, 55, v178);

  v179 = [[NSString alloc] initWithUTF8String:v165];
  v192 = v179;
  v180 = [NSArray arrayWithObjects:&v192 count:1];
  v193 = v180;
  v181 = [NSArray arrayWithObjects:&v193 count:1];
  sub_1000591D8(a1, sub_10005A828, 54, v181);

  v182 = [[NSString alloc] initWithUTF8String:v70];
  v190 = v182;
  v183 = [NSArray arrayWithObjects:&v190 count:1];
  v191 = v183;
  v184 = [NSArray arrayWithObjects:&v191 count:1];
  sub_1000591D8(a1, sub_100059DEC, 56, v184);

  v185 = [[NSString alloc] initWithUTF8String:v70];
  v188 = v185;
  v186 = [NSArray arrayWithObjects:&v188 count:1];
  v189 = v186;
  v187 = [NSArray arrayWithObjects:&v189 count:1];
  sub_1000591D8(a1, sub_10005969C, 57, v187);
}

void sub_100058E60(void *a1, const char *a2)
{
  Property = objc_getProperty(a1, a2, 8, 1);
  dispatch_assert_queue_V2(Property);
  v4 = nrXPCServiceName;
  v6 = objc_getProperty(a1, v5, 8, 1);
  mach_service = xpc_connection_create_mach_service(v4, v6, 1uLL);
  objc_setProperty_atomic(a1, v8, mach_service, 16);

  if (!objc_getProperty(a1, v9, 16, 1))
  {
    v16 = sub_100056D2C();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v18 = sub_100056D2C();
      _NRLogWithArgs();
    }

LABEL_9:
    _os_log_pack_size();
    v22 = *__error();
    v23 = _os_log_pack_fill();
    *v23 = 136446210;
    *(v23 + 4) = "[TerminusdXPCServer startXPCListener]";
    sub_100056D2C();
    _NRLogAbortWithPack();
    __break(1u);
  }

  v11 = objc_getProperty(a1, v10, 16, 1);
  if (xpc_get_type(v11) != &_xpc_type_connection)
  {
    v19 = sub_100056D2C();
    v20 = _NRLogIsLevelEnabled();

    if (v20)
    {
      v21 = sub_100056D2C();
      _NRLogWithArgs();
    }

    goto LABEL_9;
  }

  objc_initWeak(&location, a1);
  v13 = objc_getProperty(a1, v12, 16, 1);
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_1000018C8;
  handler[3] = &unk_1001FABA0;
  objc_copyWeak(&v25, &location);
  handler[4] = a1;
  xpc_connection_set_event_handler(v13, handler);

  v15 = objc_getProperty(a1, v14, 16, 1);
  xpc_connection_resume(v15);

  objc_destroyWeak(&v25);
  objc_destroyWeak(&location);
}

void sub_100059188(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 48));
  _Unwind_Resume(a1);
}

uint64_t sub_1000591C0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1000591D8(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = a4;
  if (a2)
  {
    v8 = sub_100056ED8([TXSHandler alloc], a2, v7);
    if (v8)
    {
      v9 = [NSNumber numberWithUnsignedLongLong:a3];
      v11 = [objc_getProperty(a1 v10];

      if (v11)
      {
        if (qword_100228FC0 != -1)
        {
          dispatch_once(&qword_100228FC0, &stru_1001FABC0);
        }

        if (!_NRLogIsLevelEnabled())
        {
          goto LABEL_47;
        }

        if (qword_100228FC0 != -1)
        {
          dispatch_once(&qword_100228FC0, &stru_1001FABC0);
        }

        v12 = qword_100228FB8;
        StringFromNRXPCType = createStringFromNRXPCType();
      }

      else
      {
        v44 = 0u;
        v45 = 0u;
        v42 = 0u;
        v43 = 0u;
        v14 = v7;
        v37 = [v14 countByEnumeratingWithState:&v42 objects:v47 count:16];
        if (v37)
        {
          v35 = v7;
          v15 = 0;
          v16 = *v43;
          v36 = v14;
          v34 = *v43;
          do
          {
            for (i = 0; i != v37; i = i + 1)
            {
              if (*v43 != v16)
              {
                objc_enumerationMutation(v14);
              }

              v18 = *(*(&v42 + 1) + 8 * i);
              v38 = 0u;
              v39 = 0u;
              v40 = 0u;
              v41 = 0u;
              v19 = v18;
              v20 = [v19 countByEnumeratingWithState:&v38 objects:v46 count:16];
              if (v20)
              {
                v21 = v20;
                v22 = *v39;
                while (2)
                {
                  for (j = 0; j != v21; j = j + 1)
                  {
                    if (*v39 != v22)
                    {
                      objc_enumerationMutation(v19);
                    }

                    v24 = *(*(&v38 + 1) + 8 * j);
                    if (([v24 hasPrefix:@"com.apple."] & 1) == 0)
                    {
                      if (qword_100228FC0 != -1)
                      {
                        dispatch_once(&qword_100228FC0, &stru_1001FABC0);
                      }

                      v7 = v35;
                      if (_NRLogIsLevelEnabled())
                      {
                        if (qword_100228FC0 != -1)
                        {
                          dispatch_once(&qword_100228FC0, &stru_1001FABC0);
                        }

                        v27 = qword_100228FB8;
                        v33 = createStringFromNRXPCType();
                        _NRLogWithArgs();
                      }

                      goto LABEL_47;
                    }

                    [objc_getProperty(a1 v25];
                  }

                  v21 = [v19 countByEnumeratingWithState:&v38 objects:v46 count:16];
                  if (v21)
                  {
                    continue;
                  }

                  break;
                }

                v15 = 1;
                v14 = v36;
                v16 = v34;
              }
            }

            v37 = [v14 countByEnumeratingWithState:&v42 objects:v47 count:16];
          }

          while (v37);

          v7 = v35;
          if (v15)
          {
            [objc_getProperty(a1 v26];
            goto LABEL_47;
          }
        }

        else
        {
        }

        if (qword_100228FC0 != -1)
        {
          dispatch_once(&qword_100228FC0, &stru_1001FABC0);
        }

        if (!_NRLogIsLevelEnabled())
        {
          goto LABEL_47;
        }

        if (qword_100228FC0 != -1)
        {
          dispatch_once(&qword_100228FC0, &stru_1001FABC0);
        }

        v12 = qword_100228FB8;
        StringFromNRXPCType = createStringFromNRXPCType();
      }

      _NRLogWithArgs();
    }

    else
    {
      v31 = sub_100056D2C();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      if (!IsLevelEnabled)
      {
LABEL_48:

        goto LABEL_49;
      }

      v9 = sub_100056D2C();
      _NRLogWithArgs();
    }

LABEL_47:

    goto LABEL_48;
  }

  v28 = sub_100056D2C();
  v29 = _NRLogIsLevelEnabled();

  if (v29)
  {
    v30 = sub_100056D2C();
    _NRLogWithArgs();
  }

LABEL_49:
}

uint64_t sub_10005969C(void *a1)
{
  v1 = a1;
  if (qword_100228FC0 != -1)
  {
    dispatch_once(&qword_100228FC0, &stru_1001FABC0);
  }

  if (_NRLogIsLevelEnabled())
  {
    if (qword_100228FC0 != -1)
    {
      dispatch_once(&qword_100228FC0, &stru_1001FABC0);
    }

    v3 = qword_100228FB8;
    if (v1)
    {
      v4 = v1[4];
      if (!v4)
      {
        Property = objc_getProperty(v1, v2, 8, 1);
        pid = xpc_connection_get_pid(Property);
        v7 = [[NSString alloc] initWithFormat:@"unknown:%d", pid];
        bzero(buffer, 0x400uLL);
        if (pid >= 1 && proc_pidpath(pid, buffer, 0x400u) >= 1 && buffer[0])
        {
          v8 = [[NSString alloc] initWithFormat:@"%s:%d", buffer, pid];

          v7 = v8;
        }

        v9 = v1[4];
        v1[4] = v7;

        v4 = v1[4];
      }

      v10 = v4;
    }

    else
    {
      v10 = 0;
    }

    v27 = 859;
    v28 = v10;
    v25 = "";
    v26 = "handleScrubAllDevices";
    _NRLogWithArgs();
  }

  v31[0] = _NSConcreteStackBlock;
  v31[1] = 3221225472;
  v32 = sub_100059CCC;
  v33 = &unk_1001FBF50;
  v34 = v1;
  v30 = v1;
  v29 = v31;
  v11 = objc_opt_self();
  v12 = sub_100003490();
  dispatch_assert_queue_V2(v12);

  sub_1001619D8();
  v13 = [qword_100229428 copy];
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v14 = v13;
  v15 = [v14 countByEnumeratingWithState:&v35 objects:buffer count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v36;
    do
    {
      for (i = 0; i != v16; i = i + 1)
      {
        if (*v36 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v35 + 1) + 8 * i);
        v20 = sub_100163B2C(NRDLocalDevice, v19, 0);
        v21 = v20;
        if (!v20)
        {
          v23 = qword_100229428;
LABEL_29:
          [v23 setObject:0 forKeyedSubscript:{v25, v26, v27, v28}];
LABEL_30:
          sub_1000B76C8(v19, 0);
          sub_100164E90(v21);
          if (qword_100229448)
          {
            [qword_100229448 setObject:0 forKeyedSubscript:v19];
          }

          if (qword_100229450)
          {
            [qword_100229450 setObject:0 forKeyedSubscript:v19];
          }

          if (qword_100229458)
          {
            [qword_100229458 setObject:0 forKeyedSubscript:v19];
          }

          if (qword_100229478)
          {
            [qword_100229478 setObject:0 forKeyedSubscript:v19];
          }

          if (qword_100229488 != -1)
          {
            dispatch_once(&qword_100229488, &stru_1001FD018);
          }

          if (_NRLogIsLevelEnabled())
          {
            if (qword_100229488 != -1)
            {
              dispatch_once(&qword_100229488, &stru_1001FD018);
            }

            v27 = 3018;
            v28 = v21;
            v25 = "";
            v26 = "+[NRDLocalDevice scrubAllDevicesWithCompletionBlock:]";
LABEL_20:
            _NRLogWithArgs();
            goto LABEL_21;
          }

          goto LABEL_21;
        }

        v22 = *(v20 + 48);
        if (v22)
        {
          if (qword_100229488 != -1)
          {
            dispatch_once(&qword_100229488, &stru_1001FD018);
          }

          if (_NRLogIsLevelEnabled())
          {
            if (qword_100229488 != -1)
            {
              dispatch_once(&qword_100229488, &stru_1001FD018);
            }

            v27 = 2987;
            v28 = v19;
            v25 = "";
            v26 = "+[NRDLocalDevice scrubAllDevicesWithCompletionBlock:]";
            goto LABEL_20;
          }

          goto LABEL_21;
        }

        if ((v22 & 2) == 0)
        {
          [qword_100229428 setObject:0 forKeyedSubscript:v19];
          if (v21[7])
          {
            v23 = qword_100229430;
            goto LABEL_29;
          }

          goto LABEL_30;
        }

        if (qword_100229488 != -1)
        {
          dispatch_once(&qword_100229488, &stru_1001FD018);
        }

        if (_NRLogIsLevelEnabled())
        {
          if (qword_100229488 != -1)
          {
            dispatch_once(&qword_100229488, &stru_1001FD018);
          }

          v27 = 2990;
          v28 = v19;
          v25 = "";
          v26 = "+[NRDLocalDevice scrubAllDevicesWithCompletionBlock:]";
          goto LABEL_20;
        }

LABEL_21:
      }

      v16 = [v14 countByEnumeratingWithState:&v35 objects:buffer count:16];
    }

    while (v16);
  }

  sub_1001629FC(v11, 1);
  if (qword_100229488 != -1)
  {
    dispatch_once(&qword_100229488, &stru_1001FD018);
  }

  if (_NRLogIsLevelEnabled())
  {
    if (qword_100229488 != -1)
    {
      dispatch_once(&qword_100229488, &stru_1001FD018);
    }

    _NRLogWithArgs();
  }

  v32(v29, 0, 0);

  return -2000;
}

void sub_100059CCC(uint64_t a1, int64_t a2, void *a3)
{
  v18 = a3;
  sub_10005674C();
  Property = *(a1 + 32);
  if (Property)
  {
    Property = objc_getProperty(Property, v5, 24, 1);
  }

  xpc_dictionary_set_int64(Property, nrXPCKeyResult, a2);
  if (v18)
  {
    v9 = v18;
    v10 = *(a1 + 32);
    if (v10)
    {
      v10 = objc_getProperty(v10, v8, 24, 1);
    }

    v11 = nrXPCKeyErrorDescription;
    v12 = v10;
    xpc_dictionary_set_string(v12, v11, [v9 UTF8String]);
  }

  v13 = *(a1 + 32);
  if (v13)
  {
    v13 = objc_getProperty(v13, v7, 8, 1);
  }

  v15 = v13;
  v16 = *(a1 + 32);
  if (v16)
  {
    v17 = objc_getProperty(v16, v14, 24, 1);
  }

  else
  {
    v17 = 0;
  }

  xpc_connection_send_message(v15, v17);
}

uint64_t sub_100059DEC(void *a1)
{
  Property = a1;
  v3 = Property;
  if (Property)
  {
    Property = objc_getProperty(Property, v2, 16, 1);
  }

  v4 = Property;
  v5 = v4;
  if (!v4)
  {
    v33 = sub_100056D2C();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      goto LABEL_79;
    }

    goto LABEL_80;
  }

  if (!nrXPCKeyNRUUID)
  {
    v35 = sub_100056D2C();
    v36 = _NRLogIsLevelEnabled();

    if (v36)
    {
      goto LABEL_79;
    }

    goto LABEL_80;
  }

  uuid = xpc_dictionary_get_uuid(v4, nrXPCKeyNRUUID);
  if (!uuid)
  {
    v37 = sub_100056D2C();
    v38 = _NRLogIsLevelEnabled();

    if (v38)
    {
      goto LABEL_79;
    }

    goto LABEL_80;
  }

  v7 = uuid;
  if (uuid_is_null(uuid))
  {
    v39 = sub_100056D2C();
    v40 = _NRLogIsLevelEnabled();

    if (v40)
    {
LABEL_79:
      v41 = sub_100056D2C();
      _NRLogWithArgs();
    }

LABEL_80:

    goto LABEL_81;
  }

  v8 = [[NSUUID alloc] initWithUUIDBytes:v7];

  if (v8)
  {
    if (qword_100228FC0 != -1)
    {
      dispatch_once(&qword_100228FC0, &stru_1001FABC0);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_100228FC0 != -1)
      {
        dispatch_once(&qword_100228FC0, &stru_1001FABC0);
      }

      v10 = qword_100228FB8;
      if (v3)
      {
        v11 = v3[4];
        if (!v11)
        {
          v12 = objc_getProperty(v3, v9, 8, 1);
          pid = xpc_connection_get_pid(v12);
          v14 = [[NSString alloc] initWithFormat:@"unknown:%d", pid];
          bzero(buffer, 0x400uLL);
          if (pid >= 1 && proc_pidpath(pid, buffer, 0x400u) >= 1 && buffer[0])
          {
            v15 = [[NSString alloc] initWithFormat:@"%s:%d", buffer, pid];

            v14 = v15;
          }

          v16 = v3[4];
          v3[4] = v14;

          v11 = v3[4];
        }

        v17 = v11;
      }

      else
      {
        v17 = 0;
      }

      [v8 UUIDString];
      v52 = v50 = v17;
      v49 = 837;
      v48 = "handleScrubDeviceByNRUUID";
      _NRLogWithArgs();
    }

    objc_opt_self();
    if (qword_1002290C0 != -1)
    {
      dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
    }

    v19 = qword_1002290B8;
    if (v3)
    {
      v20 = objc_getProperty(v3, v18, 8, 1);
    }

    else
    {
      v20 = 0;
    }

    sub_1000CA9A0(v19, 0, v20);

    v53[0] = _NSConcreteStackBlock;
    v53[1] = 3221225472;
    v54 = sub_10005A708;
    v55 = &unk_1001FBF50;
    v56 = v3;
    v21 = v8;
    v22 = v53;
    v23 = objc_opt_self();
    v24 = sub_100003490();
    dispatch_assert_queue_V2(v24);

    if (_NRIsUUIDNonZero())
    {
      sub_1001619D8();
      v25 = sub_100163B2C(NRDLocalDevice, v21, 0);
      if (!v25)
      {
        if (qword_100229488 != -1)
        {
          dispatch_once(&qword_100229488, &stru_1001FD018);
        }

        if (_NRLogIsLevelEnabled())
        {
          if (qword_100229488 != -1)
          {
            dispatch_once(&qword_100229488, &stru_1001FD018);
          }

          _NRLogWithArgs();
        }

        v28 = [[NSString alloc] initWithFormat:@"Unknown NRUUID %@", v21];
        v54(v22, -2008, v28);

        v26 = 0;
        goto LABEL_69;
      }

      v26 = v25;
      v27 = *(v25 + 48);
      if (v27)
      {
        if (qword_100229488 != -1)
        {
          dispatch_once(&qword_100229488, &stru_1001FD018);
        }

        if (_NRLogIsLevelEnabled())
        {
          if (qword_100229488 != -1)
          {
            dispatch_once(&qword_100229488, &stru_1001FD018);
          }

          v49 = 2938;
          v50 = v21;
          v48 = "+[NRDLocalDevice scrubDeviceWithNRUUID:completionBlock:]";
          _NRLogWithArgs();
        }

        v29 = [[NSString alloc] initWithFormat:@"Registered NRUUID %@", v21, v48, v49, v50, v52];
      }

      else
      {
        if ((v27 & 2) == 0)
        {
          [qword_100229428 setObject:0 forKeyedSubscript:v21];
          if (v26[7])
          {
            [qword_100229430 setObject:0 forKeyedSubscript:?];
          }

          sub_1000B76C8(v21, 0);
          sub_100164E90(v26);
          sub_1001629FC(v23, 1);
          if (qword_100229448)
          {
            [qword_100229448 setObject:0 forKeyedSubscript:v21];
          }

          if (qword_100229450)
          {
            [qword_100229450 setObject:0 forKeyedSubscript:v21];
          }

          if (qword_100229458)
          {
            [qword_100229458 setObject:0 forKeyedSubscript:v21];
          }

          if (qword_100229478)
          {
            [qword_100229478 setObject:0 forKeyedSubscript:v21];
          }

          if (qword_100229488 != -1)
          {
            dispatch_once(&qword_100229488, &stru_1001FD018);
          }

          if (_NRLogIsLevelEnabled())
          {
            if (qword_100229488 != -1)
            {
              dispatch_once(&qword_100229488, &stru_1001FD018);
            }

            _NRLogWithArgs();
          }

          v54(v22, 0, 0);
          goto LABEL_69;
        }

        if (qword_100229488 != -1)
        {
          dispatch_once(&qword_100229488, &stru_1001FD018);
        }

        if (_NRLogIsLevelEnabled())
        {
          if (qword_100229488 != -1)
          {
            dispatch_once(&qword_100229488, &stru_1001FD018);
          }

          v49 = 2942;
          v50 = v21;
          v48 = "+[NRDLocalDevice scrubDeviceWithNRUUID:completionBlock:]";
          _NRLogWithArgs();
        }

        v29 = [[NSString alloc] initWithFormat:@"Enabled NRUUID %@", v21, v48, v49, v50, v52];
      }

      v30 = v29;
      v54(v22, -2005, v29);
    }

    else
    {
      v46 = sub_10015B480();
      v47 = _NRLogIsLevelEnabled();

      if (!v47)
      {
        goto LABEL_70;
      }

      v26 = sub_10015B480();
      _NRLogWithArgs();
    }

LABEL_69:

LABEL_70:
    v31 = -2000;
    goto LABEL_71;
  }

LABEL_81:
  v42 = sub_100056D2C();
  v43 = _NRLogIsLevelEnabled();

  if (v43)
  {
    v44 = sub_100056D2C();
    v51 = sub_100056D80(v3, v45);
    _NRLogWithArgs();
  }

  v31 = -2005;
LABEL_71:

  return v31;
}

void sub_10005A708(uint64_t a1, int64_t a2, void *a3)
{
  v18 = a3;
  sub_10005674C();
  Property = *(a1 + 32);
  if (Property)
  {
    Property = objc_getProperty(Property, v5, 24, 1);
  }

  xpc_dictionary_set_int64(Property, nrXPCKeyResult, a2);
  if (v18)
  {
    v9 = v18;
    v10 = *(a1 + 32);
    if (v10)
    {
      v10 = objc_getProperty(v10, v8, 24, 1);
    }

    v11 = nrXPCKeyErrorDescription;
    v12 = v10;
    xpc_dictionary_set_string(v12, v11, [v9 UTF8String]);
  }

  v13 = *(a1 + 32);
  if (v13)
  {
    v13 = objc_getProperty(v13, v7, 8, 1);
  }

  v15 = v13;
  v16 = *(a1 + 32);
  if (v16)
  {
    v17 = objc_getProperty(v16, v14, 24, 1);
  }

  else
  {
    v17 = 0;
  }

  xpc_connection_send_message(v15, v17);
}

uint64_t sub_10005A828(void *a1)
{
  Property = a1;
  v3 = Property;
  if (Property)
  {
    Property = objc_getProperty(Property, v2, 16, 1);
  }

  v4 = Property;
  v5 = v4;
  if (!v4)
  {
    v33 = sub_100056D2C();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      goto LABEL_37;
    }

    goto LABEL_38;
  }

  if (!nrXPCKeyNRUUID)
  {
    v35 = sub_100056D2C();
    v36 = _NRLogIsLevelEnabled();

    if (v36)
    {
      goto LABEL_37;
    }

    goto LABEL_38;
  }

  uuid = xpc_dictionary_get_uuid(v4, nrXPCKeyNRUUID);
  if (!uuid)
  {
    v37 = sub_100056D2C();
    v38 = _NRLogIsLevelEnabled();

    if (v38)
    {
      goto LABEL_37;
    }

    goto LABEL_38;
  }

  v7 = uuid;
  if (uuid_is_null(uuid))
  {
    v39 = sub_100056D2C();
    v40 = _NRLogIsLevelEnabled();

    if (v40)
    {
LABEL_37:
      v41 = sub_100056D2C();
      _NRLogWithArgs();
    }

LABEL_38:

    goto LABEL_39;
  }

  v8 = [[NSUUID alloc] initWithUUIDBytes:v7];

  if (v8)
  {
    if (qword_100228FC0 != -1)
    {
      dispatch_once(&qword_100228FC0, &stru_1001FABC0);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_100228FC0 != -1)
      {
        dispatch_once(&qword_100228FC0, &stru_1001FABC0);
      }

      v10 = qword_100228FB8;
      if (v3)
      {
        v11 = v3[4];
        if (!v11)
        {
          v12 = objc_getProperty(v3, v9, 8, 1);
          pid = xpc_connection_get_pid(v12);
          v14 = [[NSString alloc] initWithFormat:@"unknown:%d", pid];
          bzero(buffer, 0x400uLL);
          if (pid >= 1 && proc_pidpath(pid, buffer, 0x400u) >= 1 && LOBYTE(buffer[0]))
          {
            v15 = [[NSString alloc] initWithFormat:@"%s:%d", buffer, pid];

            v14 = v15;
          }

          v16 = v3[4];
          v3[4] = v14;

          v11 = v3[4];
        }

        v17 = v11;
      }

      else
      {
        v17 = 0;
      }

      v47 = [v8 UUIDString];
      _NRLogWithArgs();
    }

    v48[0] = _NSConcreteStackBlock;
    v48[1] = 3221225472;
    v49 = sub_10005AE10;
    v50 = &unk_1001FAC60;
    v51 = v8;
    v52 = v3;
    v18 = v8;
    v19 = v48;
    v20 = v18;
    objc_opt_self();
    objc_opt_self();
    if (qword_1002290C0 != -1)
    {
      dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
    }

    v21 = qword_1002290B8;
    v22 = v20;
    v23 = v19;
    v24 = v23;
    if (v21)
    {
      v25 = v21[5];
      if (v25)
      {
        buffer[0] = _NSConcreteStackBlock;
        buffer[1] = 3221225472;
        buffer[2] = sub_1000C987C;
        buffer[3] = &unk_1001FB328;
        v26 = v22;
        v54 = v26;
        v55 = v24;
        v27 = buffer;
        v28 = v26;
        v29 = sub_100022944([NRBluetoothPairer alloc], v28);

        v30 = *(v25 + 24);
        sub_100022CE8(v29, v30, v27);
      }

      else
      {
        v49(v23, 22, @"Already unpaired or bluetooth device not found");
      }
    }

    v31 = -2000;
    goto LABEL_29;
  }

LABEL_39:
  v42 = sub_100056D2C();
  v43 = _NRLogIsLevelEnabled();

  if (v43)
  {
    v44 = sub_100056D2C();
    v46 = sub_100056D80(v3, v45);
    _NRLogWithArgs();
  }

  v31 = -2005;
LABEL_29:

  return v31;
}

void sub_10005AE10(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = *(a1 + 32);
  v6 = _NRCopyLogObjectForNRUUID();
  IsLevelEnabled = _NRLogIsLevelEnabled();

  if (IsLevelEnabled)
  {
    v8 = *(a1 + 32);
    v9 = _NRCopyLogObjectForNRUUID();
    _NRLogWithArgs();
  }

  objc_opt_self();
  if (qword_1002290C0 != -1)
  {
    dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
  }

  v11 = qword_1002290B8;
  v12 = *(a1 + 40);
  if (v12)
  {
    Property = objc_getProperty(v12, v10, 8, 1);
  }

  else
  {
    Property = 0;
  }

  sub_1000CA9A0(v11, 0, Property);

  v14 = sub_100163B2C(NRDLocalDevice, *(a1 + 32), 0);
  if (v14)
  {
    v15 = *(a1 + 32);
    v29[0] = _NSConcreteStackBlock;
    v29[1] = 3221225472;
    v29[2] = sub_10005B0A0;
    v29[3] = &unk_1001FAC60;
    v30 = v15;
    v31 = *(a1 + 40);
    sub_10016BD8C(NRDLocalDevice, v30, v29);
  }

  else
  {
    v16 = *(a1 + 32);
    v17 = _NRCopyLogObjectForNRUUID();
    v18 = _NRLogIsLevelEnabled();

    if (v18)
    {
      v20 = *(a1 + 32);
      v21 = _NRCopyLogObjectForNRUUID();
      _NRLogWithArgs();
    }

    v22 = *(a1 + 40);
    if (v22)
    {
      v22 = objc_getProperty(v22, v19, 24, 1);
    }

    xpc_dictionary_set_int64(v22, nrXPCKeyResult, -2008);
    v24 = *(a1 + 40);
    if (v24)
    {
      v24 = objc_getProperty(v24, v23, 8, 1);
    }

    v26 = v24;
    v27 = *(a1 + 40);
    if (v27)
    {
      v28 = objc_getProperty(v27, v25, 24, 1);
    }

    else
    {
      v28 = 0;
    }

    xpc_connection_send_message(v26, v28);
  }
}

void sub_10005B0A0(uint64_t a1, int64_t a2, void *a3)
{
  v23 = a3;
  sub_10005674C();
  v5 = *(a1 + 32);
  v6 = _NRCopyLogObjectForNRUUID();
  IsLevelEnabled = _NRLogIsLevelEnabled();

  if (IsLevelEnabled)
  {
    v9 = *(a1 + 32);
    v10 = _NRCopyLogObjectForNRUUID();
    _NRLogWithArgs();
  }

  Property = *(a1 + 40);
  if (Property)
  {
    Property = objc_getProperty(Property, v8, 24, 1);
  }

  xpc_dictionary_set_int64(Property, nrXPCKeyResult, a2);
  if (v23)
  {
    v14 = v23;
    v15 = *(a1 + 40);
    if (v15)
    {
      v15 = objc_getProperty(v15, v13, 24, 1);
    }

    v16 = nrXPCKeyErrorDescription;
    v17 = v15;
    xpc_dictionary_set_string(v17, v16, [v14 UTF8String]);
  }

  v18 = *(a1 + 40);
  if (v18)
  {
    v18 = objc_getProperty(v18, v12, 8, 1);
  }

  v20 = v18;
  v21 = *(a1 + 40);
  if (v21)
  {
    v22 = objc_getProperty(v21, v19, 24, 1);
  }

  else
  {
    v22 = 0;
  }

  xpc_connection_send_message(v20, v22);
}

uint64_t sub_10005B228(void *a1)
{
  Property = a1;
  v3 = Property;
  if (Property)
  {
    Property = objc_getProperty(Property, v2, 16, 1);
  }

  v4 = xpc_dictionary_get_BOOL(Property, nrXPCKeySimulateSlicingEnabled);
  if (qword_100228FC0 != -1)
  {
    dispatch_once(&qword_100228FC0, &stru_1001FABC0);
  }

  if (_NRLogIsLevelEnabled())
  {
    if (qword_100228FC0 != -1)
    {
      dispatch_once(&qword_100228FC0, &stru_1001FABC0);
    }

    v6 = qword_100228FB8;
    if (v3)
    {
      v7 = v3[4];
      if (!v7)
      {
        v8 = objc_getProperty(v3, v5, 8, 1);
        pid = xpc_connection_get_pid(v8);
        v10 = [[NSString alloc] initWithFormat:@"unknown:%d", pid];
        bzero(buffer, 0x400uLL);
        if (pid >= 1 && proc_pidpath(pid, buffer, 0x400u) >= 1 && buffer[0])
        {
          v11 = [[NSString alloc] initWithFormat:@"%s:%d", buffer, pid];

          v10 = v11;
        }

        v12 = v3[4];
        v3[4] = v10;

        v7 = v3[4];
      }

      v13 = v7;
    }

    else
    {
      v13 = 0;
    }

    _NRLogWithArgs();
  }

  if (qword_1002290B0 != -1)
  {
    dispatch_once(&qword_1002290B0, &stru_1001FB278);
  }

  if (_NRLogIsLevelEnabled())
  {
    if (qword_1002290B0 != -1)
    {
      dispatch_once(&qword_1002290B0, &stru_1001FB278);
    }

    _NRLogWithArgs();
  }

  if (v4)
  {
    v14 = [NSNumber numberWithBool:1];
    sub_1000B7458(0, @"simulateSlicingEnabled", v14);
  }

  else
  {
    sub_1000B76C8(0, @"simulateSlicingEnabled");
  }

  return 0;
}

uint64_t sub_10005B504(void *a1)
{
  Property = a1;
  v3 = Property;
  if (Property)
  {
    Property = objc_getProperty(Property, v2, 16, 1);
  }

  v29 = xpc_dictionary_get_BOOL(Property, nrXPCKeyTestCompanionAPL);
  if (qword_100228FC0 != -1)
  {
    dispatch_once(&qword_100228FC0, &stru_1001FABC0);
  }

  if (_NRLogIsLevelEnabled())
  {
    if (qword_100228FC0 != -1)
    {
      dispatch_once(&qword_100228FC0, &stru_1001FABC0);
    }

    v5 = qword_100228FB8;
    if (v3)
    {
      v6 = v3[4];
      if (!v6)
      {
        v7 = objc_getProperty(v3, v4, 8, 1);
        pid = xpc_connection_get_pid(v7);
        v9 = [[NSString alloc] initWithFormat:@"unknown:%d", pid];
        bzero(buffer, 0x400uLL);
        if (pid >= 1 && proc_pidpath(pid, buffer, 0x400u) >= 1 && buffer[0])
        {
          v10 = [[NSString alloc] initWithFormat:@"%s:%d", buffer, pid];

          v9 = v10;
        }

        v11 = v3[4];
        v3[4] = v9;

        v6 = v3[4];
      }

      v12 = v6;
    }

    else
    {
      v12 = 0;
    }

    v27 = v12;
    v28 = v29;
    v26 = 1122;
    v24 = "";
    v25 = "handleSetCompanionAPLForTesting";
    _NRLogWithArgs();
  }

  v13 = [NSNumber numberWithBool:v29, v24, v25, v26, v27, v28];
  if (qword_1002290B0 != -1)
  {
    dispatch_once(&qword_1002290B0, &stru_1001FB278);
  }

  if (_NRLogIsLevelEnabled())
  {
    if (qword_1002290B0 != -1)
    {
      dispatch_once(&qword_1002290B0, &stru_1001FB278);
    }

    _NRLogWithArgs();
  }

  sub_1000B7458(0, @"companionAPLAllowed", v13);
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v14 = sub_10016C8BC();
  v15 = [v14 countByEnumeratingWithState:&v30 objects:buffer count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v31;
    do
    {
      for (i = 0; i != v16; i = i + 1)
      {
        if (*v31 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v22 = sub_100163A30(NRDLocalDevice, *(*(&v30 + 1) + 8 * i));
        if (sub_100169428(v22))
        {
          objc_opt_self();
          if (qword_1002290C0 != -1)
          {
            dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
          }

          v19 = qword_1002290B8;
          if (v22)
          {
            v20 = v22[3];
          }

          else
          {
            v20 = 0;
          }

          v21 = v20;
          sub_1000CA5A8(v19, v29, v21);
        }
      }

      v16 = [v14 countByEnumeratingWithState:&v30 objects:buffer count:16];
    }

    while (v16);
  }

  return 0;
}

uint64_t sub_10005B908(void *a1)
{
  v1 = a1;
  if (qword_100228FC0 != -1)
  {
    dispatch_once(&qword_100228FC0, &stru_1001FABC0);
  }

  if (_NRLogIsLevelEnabled())
  {
    if (qword_100228FC0 != -1)
    {
      dispatch_once(&qword_100228FC0, &stru_1001FABC0);
    }

    v3 = qword_100228FB8;
    if (v1)
    {
      v4 = v1[4];
      if (!v4)
      {
        Property = objc_getProperty(v1, v2, 8, 1);
        pid = xpc_connection_get_pid(Property);
        v7 = [[NSString alloc] initWithFormat:@"unknown:%d", pid];
        bzero(buffer, 0x400uLL);
        if (pid >= 1 && proc_pidpath(pid, buffer, 0x400u) >= 1 && buffer[0])
        {
          v8 = [[NSString alloc] initWithFormat:@"%s:%d", buffer, pid];

          v7 = v8;
        }

        v9 = v1[4];
        v1[4] = v7;

        v4 = v1[4];
      }

      v10 = v4;
    }

    else
    {
      v10 = 0;
    }

    _NRLogWithArgs();
  }

  v11 = objc_alloc_init(NSMutableDictionary);
  objc_opt_self();
  if (qword_1002290C0 != -1)
  {
    dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
  }

  v12 = qword_1002290B8;
  v13 = v12;
  if (v12)
  {
    v14 = *(v12 + 15);
  }

  else
  {
    v14 = 0;
  }

  v15 = v14;
  [v11 setObject:v15 forKeyedSubscript:@"id-ref"];

  objc_opt_self();
  if (qword_1002290C0 != -1)
  {
    dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
  }

  v16 = qword_1002290B8;
  v17 = v16;
  if (v16)
  {
    v18 = *(v16 + 14);
  }

  else
  {
    v18 = 0;
  }

  v19 = v18;
  [v11 setObject:v19 forKeyedSubscript:@"cert-ref"];

  objc_opt_self();
  if (qword_1002290C0 != -1)
  {
    dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
  }

  v20 = qword_1002290B8;
  v21 = v20;
  if (v20)
  {
    v22 = *(v20 + 16);
  }

  else
  {
    v22 = 0;
  }

  v23 = v22;
  [v11 setObject:v23 forKeyedSubscript:@"key-ref"];

  v24 = _CFXPCCreateXPCObjectFromCFObject();
  if (v24)
  {
    if (qword_100228FC0 != -1)
    {
      dispatch_once(&qword_100228FC0, &stru_1001FABC0);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_100228FC0 != -1)
      {
        dispatch_once(&qword_100228FC0, &stru_1001FABC0);
      }

      _NRLogWithArgs();
    }

    if (v1)
    {
      v26 = objc_getProperty(v1, v25, 24, 1);
    }

    else
    {
      v26 = 0;
    }

    xpc_dictionary_set_value(v26, nrXPCKeyIdentityProxyReferences, v24);
    v27 = 0;
  }

  else
  {
    v29 = sub_100056D2C();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v31 = sub_100056D2C();
      _NRLogWithArgs();
    }

    v27 = -2001;
  }

  return v27;
}

uint64_t sub_10005BD68(void *a1)
{
  v1 = a1;
  if (qword_100228FC0 != -1)
  {
    dispatch_once(&qword_100228FC0, &stru_1001FABC0);
  }

  if (_NRLogIsLevelEnabled())
  {
    if (qword_100228FC0 != -1)
    {
      dispatch_once(&qword_100228FC0, &stru_1001FABC0);
    }

    v3 = qword_100228FB8;
    if (v1)
    {
      v4 = v1[4];
      if (!v4)
      {
        Property = objc_getProperty(v1, v2, 8, 1);
        pid = xpc_connection_get_pid(Property);
        v7 = [[NSString alloc] initWithFormat:@"unknown:%d", pid];
        bzero(buffer, 0x400uLL);
        if (pid >= 1 && proc_pidpath(pid, buffer, 0x400u) >= 1 && buffer[0])
        {
          v8 = [[NSString alloc] initWithFormat:@"%s:%d", buffer, pid];

          v7 = v8;
        }

        v9 = v1[4];
        v1[4] = v7;

        v4 = v1[4];
      }

      v10 = v4;
    }

    else
    {
      v10 = 0;
    }

    _NRLogWithArgs();
  }

  return 0;
}

uint64_t sub_10005BF3C(void *a1)
{
  Property = a1;
  v3 = Property;
  if (Property)
  {
    Property = objc_getProperty(Property, v2, 16, 1);
  }

  v4 = xpc_dictionary_get_BOOL(Property, nrXPCKeyEnableBluetoothPacketParser);
  if (qword_100228FC0 != -1)
  {
    dispatch_once(&qword_100228FC0, &stru_1001FABC0);
  }

  if (_NRLogIsLevelEnabled())
  {
    if (qword_100228FC0 != -1)
    {
      dispatch_once(&qword_100228FC0, &stru_1001FABC0);
    }

    v6 = qword_100228FB8;
    if (v3)
    {
      v7 = v3[4];
      if (!v7)
      {
        v8 = objc_getProperty(v3, v5, 8, 1);
        pid = xpc_connection_get_pid(v8);
        v10 = [[NSString alloc] initWithFormat:@"unknown:%d", pid];
        bzero(buffer, 0x400uLL);
        if (pid >= 1 && proc_pidpath(pid, buffer, 0x400u) >= 1 && buffer[0])
        {
          v11 = [[NSString alloc] initWithFormat:@"%s:%d", buffer, pid];

          v10 = v11;
        }

        v12 = v3[4];
        v3[4] = v10;

        v7 = v3[4];
      }

      v13 = v7;
    }

    else
    {
      v13 = 0;
    }

    _NRLogWithArgs();
  }

  objc_opt_self();
  if (qword_1002290C0 != -1)
  {
    dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
  }

  v14 = qword_1002290B8;
  if (v14)
  {
    if (qword_1002290F0 != -1)
    {
      dispatch_once(&qword_1002290F0, &stru_1001FB680);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_1002290F0 != -1)
      {
        dispatch_once(&qword_1002290F0, &stru_1001FB680);
      }

      _NRLogWithArgs();
    }

    if (v4)
    {
      v15 = [NSNumber numberWithBool:1];
      sub_1000B7458(0, @"EnableBluetoothPacketParser", v15);

      v21 = "YES";
    }

    else
    {
      sub_1000B76C8(0, @"EnableBluetoothPacketParser");
      v21 = "NO";
    }

    sub_1000B926C(v14, 1039, @"%s", v16, v17, v18, v19, v20, v21);
  }

  return 0;
}

uint64_t sub_10005C294(void *a1)
{
  Property = a1;
  v3 = Property;
  if (Property)
  {
    Property = objc_getProperty(Property, v2, 16, 1);
  }

  v4 = Property;
  v5 = v4;
  if (!v4)
  {
    v47 = sub_100056D2C();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      goto LABEL_61;
    }

    goto LABEL_62;
  }

  if (!nrXPCKeyDeviceIdentifier)
  {
    v49 = sub_100056D2C();
    v50 = _NRLogIsLevelEnabled();

    if (v50)
    {
      goto LABEL_61;
    }

    goto LABEL_62;
  }

  uuid = xpc_dictionary_get_uuid(v4, nrXPCKeyDeviceIdentifier);
  if (!uuid)
  {
    v51 = sub_100056D2C();
    v52 = _NRLogIsLevelEnabled();

    if (v52)
    {
      goto LABEL_61;
    }

    goto LABEL_62;
  }

  v7 = uuid;
  if (uuid_is_null(uuid))
  {
    v53 = sub_100056D2C();
    v54 = _NRLogIsLevelEnabled();

    if (v54)
    {
LABEL_61:
      v55 = sub_100056D2C();
      _NRLogWithArgs();
    }

LABEL_62:

    goto LABEL_63;
  }

  v8 = [[NSUUID alloc] initWithUUIDBytes:v7];

  if (v8)
  {
    if (qword_100228FC0 != -1)
    {
      dispatch_once(&qword_100228FC0, &stru_1001FABC0);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_100228FC0 != -1)
      {
        dispatch_once(&qword_100228FC0, &stru_1001FABC0);
      }

      v11 = qword_100228FB8;
      if (v3)
      {
        v12 = v3[4];
        if (!v12)
        {
          v13 = objc_getProperty(v3, v10, 8, 1);
          pid = xpc_connection_get_pid(v13);
          v15 = [[NSString alloc] initWithFormat:@"unknown:%d", pid];
          bzero(&buffer, 0x400uLL);
          if (pid >= 1 && proc_pidpath(pid, &buffer, 0x400u) >= 1 && buffer)
          {
            v16 = [[NSString alloc] initWithFormat:@"%s:%d", &buffer, pid];

            v15 = v16;
          }

          v17 = v3[4];
          v3[4] = v15;

          v12 = v3[4];
        }

        v18 = v12;
      }

      else
      {
        v18 = 0;
      }

      v62 = v8;
      v63 = v18;
      v61 = 1412;
      v59 = "";
      v60 = "handleXPCComm";
      _NRLogWithArgs();
    }

    if (v3)
    {
      v19 = objc_getProperty(v3, v9, 16, 1);
    }

    else
    {
      v19 = 0;
    }

    v20 = xpc_dictionary_get_dictionary(v19, nrXPCKeyXPCCommNotification);
    objc_opt_self();
    if (qword_1002290C0 != -1)
    {
      dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
    }

    v22 = qword_1002290B8;
    if (v3)
    {
      v23 = objc_getProperty(v3, v21, 8, 1);
    }

    else
    {
      v23 = 0;
    }

    v24 = v8;
    v25 = v23;
    v26 = v20;
    if (v22)
    {
      v27 = [v22[28] objectForKeyedSubscript:v24];
      v28 = v25;
      v29 = v26;
      if (v27 && *(v27 + 14) == 1 && (*(v27 + 43) & 1) == 0)
      {
        v64 = v25;
        [*(v27 + 184) addObject:v28];
        v30 = *(v27 + 96);
        v31 = _NRCopyLogObjectForNRUUID();
        v32 = _NRLogIsLevelEnabled();

        if (v32)
        {
          v33 = *(v27 + 96);
          v34 = _NRCopyLogObjectForNRUUID();
          v61 = 7993;
          v62 = v29;
          v59 = "";
          v60 = "[NRDDeviceConductor processXPCCommNotificationForConnection:notificationDictionary:]";
          _NRLogWithArgs();
        }

        dispatch_assert_queue_V2(*(v27 + 136));
        v35 = sub_100163A30(NRDLocalDevice, *(v27 + 96));
        v36 = v35;
        if (v35)
        {
          v37 = *(v35 + 144);
        }

        else
        {
          v37 = 0;
        }

        v38 = v37;
        v39 = [v38 getDefaultLinkSubtypeForLinkType:1];

        v40 = sub_1000EA2C8(v27, 1, v39);
        v25 = v64;
        if (v40)
        {
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();
          if (v29)
          {
            if ((isKindOfClass & 1) != 0 && [v40 state] != 255)
            {
              buffer = 0;
              p_buffer = &buffer;
              v68 = 0x3032000000;
              v69 = sub_1000FD2F4;
              v70 = sub_1000FD304;
              v71 = 0;
              applier[0] = _NSConcreteStackBlock;
              applier[1] = 3221225472;
              applier[2] = sub_10011447C;
              applier[3] = &unk_1001FBB10;
              applier[4] = v27;
              applier[5] = &buffer;
              xpc_dictionary_apply(v29, applier);
              sub_100091434(v40, p_buffer[5]);
              _Block_object_dispose(&buffer, 8);
            }
          }
        }

        if ([*(v27 + 192) count])
        {
          sub_100114680(v27, 0);
        }
      }

      v42 = xpc_connection_get_pid(v28);
      v43 = sub_10013EF7C(v42);
      v44 = v22[33];
      v22[33] = v43;

      if (!v22[33])
      {
        if (qword_1002290F0 != -1)
        {
          dispatch_once(&qword_1002290F0, &stru_1001FB680);
        }

        if (_NRLogIsLevelEnabled())
        {
          if (qword_1002290F0 != -1)
          {
            dispatch_once(&qword_1002290F0, &stru_1001FB680);
          }

          _NRLogWithArgs();
        }
      }
    }

    v45 = 0;
    goto LABEL_52;
  }

LABEL_63:
  v56 = sub_100056D2C();
  v57 = _NRLogIsLevelEnabled();

  if (!v57)
  {
    v45 = -2005;
    goto LABEL_53;
  }

  v24 = sub_100056D2C();
  v26 = sub_100056D80(v3, v58);
  _NRLogWithArgs();
  v45 = -2005;
LABEL_52:

LABEL_53:
  return v45;
}