id sub_100114094(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  dispatch_assert_queue_V2(*(a1 + 136));
  v2 = [*(a1 + 144) count];
  sub_1000EC910(a1, 1013, @"%u available", v3, v4, v5, v6, v7, v2);
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v8 = *(a1 + 144);
  v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v15;
    do
    {
      v12 = 0;
      do
      {
        if (*v15 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [*(*(&v14 + 1) + 8 * v12) cancelWithReason:@"Cancelling all links"];
        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v10);
  }

  sub_10010073C(a1, 0);
  [*(a1 + 144) removeAllObjects];
  return v2;
}

void sub_1001141F4(uint64_t a1, int a2)
{
  dispatch_assert_queue_V2(*(a1 + 136));
  if (*(a1 + 17) != a2)
  {
    sub_1000EC910(a1, 1033, @"%d -> %d", v4, v5, v6, v7, v8, *(a1 + 17));
    *(a1 + 17) = a2;
    if (a2)
    {
      sub_1000F2504(a1, @"Device setup in progress", v9, v10, v11, v12, v13, v14, v26);
    }

    if (*(a1 + 8) == 1 && (*(a1 + 17) & 1) == 0)
    {
      dispatch_assert_queue_V2(*(a1 + 136));
      objc_opt_self();
      if (qword_1002290C0 != -1)
      {
        dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
      }

      v15 = qword_1002290B8;
      v16 = v15;
      if (v15)
      {
        v17 = *(v15 + 6);
      }

      else
      {
        v17 = 0;
      }

      v27 = v17;

      v18 = v27;
      if (v27 && (v19 = v27[3], dispatch_assert_queue_V2(v19), v19, v18 = v27, *(v27 + 10) >= 1))
      {
        v20 = *(a1 + 15);

        if ((v20 & 1) == 0)
        {
          v21 = *(a1 + 96);
          v22 = _NRCopyLogObjectForNRUUID();
          IsLevelEnabled = _NRLogIsLevelEnabled();

          if (IsLevelEnabled)
          {
            v24 = *(a1 + 96);
            v25 = _NRCopyLogObjectForNRUUID();
            _NRLogWithArgs();
          }

          [a1 preferWiFiRequestAvailable];
        }
      }

      else
      {
      }
    }
  }
}

void sub_1001143D0(uint64_t a1, void *a2)
{
  v6 = a2;
  if (a1)
  {
    dispatch_assert_queue_V2(*(a1 + 136));
    if (v6)
    {
      [*(a1 + 200) addObject:v6];
    }

    else
    {
      v3 = sub_1000E83DC();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      if (IsLevelEnabled)
      {
        v5 = sub_1000E83DC();
        _NRLogWithArgs();
      }
    }
  }
}

uint64_t sub_10011447C(uint64_t a1, const char *a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 32);
  if (v6)
  {
    v7 = *(v6 + 96);
  }

  v8 = _NRCopyLogObjectForNRUUID();
  IsLevelEnabled = _NRLogIsLevelEnabled();

  if (IsLevelEnabled)
  {
    v10 = *(a1 + 32);
    if (v10)
    {
      v11 = *(v10 + 96);
    }

    v12 = _NRCopyLogObjectForNRUUID();
    _NRLogWithArgs();
  }

  if (!strcmp(a2, kNRXPCCommNotificationTypeXPCommDictionary))
  {
    if (xpc_get_type(v5) == &_xpc_type_dictionary)
    {
      v20 = _CFXPCCreateCFObjectFromXPCObject();
      v21 = *(*(a1 + 40) + 8);
      v22 = *(v21 + 40);
      *(v21 + 40) = v20;

      v23 = *(a1 + 32);
      if (v23)
      {
        v24 = *(v23 + 96);
      }

      v25 = _NRCopyLogObjectForNRUUID();
      v26 = _NRLogIsLevelEnabled();

      if (v26)
      {
        v27 = *(a1 + 32);
        if (v27)
        {
          v27 = v27[12];
        }

        v28 = v27;
        v19 = _NRCopyLogObjectForNRUUID();
        v30 = *(*(*(a1 + 40) + 8) + 40);
        _NRLogWithArgs();

        goto LABEL_21;
      }
    }

    else
    {
      v13 = *(a1 + 32);
      if (v13)
      {
        v14 = *(v13 + 96);
      }

      v15 = _NRCopyLogObjectForNRUUID();
      v16 = _NRLogIsLevelEnabled();

      if (v16)
      {
        v17 = *(a1 + 32);
        if (v17)
        {
          v18 = *(v17 + 96);
        }

        v19 = _NRCopyLogObjectForNRUUID();
        _NRLogWithArgs();
LABEL_21:
      }
    }
  }

  return 1;
}

void sub_100114680(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1 && *(a1 + 14) == 1)
  {
    v4 = [*(a1 + 184) count];
    if (!v3 || v4)
    {
      v47 = v3;
      v68 = 0u;
      v69 = 0u;
      v66 = 0u;
      v67 = 0u;
      v48 = *(a1 + 192);
      v52 = [v48 countByEnumeratingWithState:&v66 objects:v72 count:16];
      if (v52)
      {
        v51 = *v67;
        v50 = kNRXPCCommNotificationTypeXPCommDictionary;
        v49 = nrXPCKeyXPCCommNotification;
        do
        {
          v8 = 0;
          do
          {
            if (*v67 != v51)
            {
              objc_enumerationMutation(v48);
            }

            v9 = *(*(&v66 + 1) + 8 * v8);
            v10 = xpc_dictionary_create(0, 0, 0);
            if (!v10)
            {
              if (qword_100229160 != -1)
              {
                dispatch_once(&qword_100229160, &stru_1001FBC40);
              }

              v38 = qword_100229158;
              IsLevelEnabled = _NRLogIsLevelEnabled();

              if (!IsLevelEnabled)
              {
                goto LABEL_48;
              }

              goto LABEL_47;
            }

            v11 = v10;
            v12 = xpc_dictionary_create(0, 0, 0);
            if (!v12)
            {
              if (qword_100229160 != -1)
              {
                dispatch_once(&qword_100229160, &stru_1001FBC40);
              }

              v40 = qword_100229158;
              v41 = _NRLogIsLevelEnabled();

              if (!v41)
              {
                goto LABEL_48;
              }

              goto LABEL_47;
            }

            v13 = v12;
            v56 = v8;
            v53 = _CFXPCCreateXPCObjectFromCFObject();
            xpc_dictionary_set_value(v13, v50, v53);
            v54 = v13;
            xpc_dictionary_set_value(v11, v49, v13);
            v64 = 0u;
            v65 = 0u;
            v62 = 0u;
            v63 = 0u;
            v14 = *(a1 + 184);
            v15 = [v14 countByEnumeratingWithState:&v62 objects:v71 count:16];
            if (v15)
            {
              v16 = v15;
              v17 = *v63;
              do
              {
                for (i = 0; i != v16; i = i + 1)
                {
                  if (*v63 != v17)
                  {
                    objc_enumerationMutation(v14);
                  }

                  xpc_connection_send_message(*(*(&v62 + 1) + 8 * i), v11);
                  v19 = *(a1 + 96);
                  v20 = _NRCopyLogObjectForNRUUID();
                  v21 = _NRLogIsLevelEnabled();

                  if (v21)
                  {
                    v22 = *(a1 + 96);
                    v23 = _NRCopyLogObjectForNRUUID();
                    _NRLogWithArgs();
                  }
                }

                v16 = [v14 countByEnumeratingWithState:&v62 objects:v71 count:16];
              }

              while (v16);
            }

            v8 = v56 + 1;
          }

          while ((v56 + 1) != v52);
          v52 = [v48 countByEnumeratingWithState:&v66 objects:v72 count:16];
        }

        while (v52);
      }

      [*(a1 + 192) removeAllObjects];
      v3 = v47;
      if (v47)
      {
        v24 = xpc_dictionary_create(0, 0, 0);
        if (!v24 || (v25 = v24, (v26 = xpc_dictionary_create(0, 0, 0)) == 0))
        {
          while (1)
          {
            v45 = sub_1000E83DC();
            v46 = _NRLogIsLevelEnabled();

            if (v46)
            {
LABEL_47:
              v42 = sub_1000E83DC();
              _NRLogWithArgs();
            }

LABEL_48:
            _os_log_pack_size();
            __chkstk_darwin();
            v43 = *__error();
            v44 = _os_log_pack_fill();
            sub_1000F4320(v44, "nr_xpc_dictionary_create");
            sub_1000E83DC();
            _NRLogAbortWithPack();
          }
        }

        v27 = v26;
        v55 = _CFXPCCreateXPCObjectFromCFObject();
        xpc_dictionary_set_value(v27, kNRXPCCommNotificationTypeXPCommDictionary, v55);
        v57 = v27;
        xpc_dictionary_set_value(v25, nrXPCKeyXPCCommNotification, v27);
        v60 = 0u;
        v61 = 0u;
        v58 = 0u;
        v59 = 0u;
        v28 = *(a1 + 184);
        v29 = [v28 countByEnumeratingWithState:&v58 objects:v70 count:16];
        if (v29)
        {
          v30 = v29;
          v31 = *v59;
          do
          {
            for (j = 0; j != v30; j = j + 1)
            {
              if (*v59 != v31)
              {
                objc_enumerationMutation(v28);
              }

              xpc_connection_send_message(*(*(&v58 + 1) + 8 * j), v25);
              v33 = *(a1 + 96);
              v34 = _NRCopyLogObjectForNRUUID();
              v35 = _NRLogIsLevelEnabled();

              if (v35)
              {
                v36 = *(a1 + 96);
                v37 = _NRCopyLogObjectForNRUUID();
                _NRLogWithArgs();
              }
            }

            v30 = [v28 countByEnumeratingWithState:&v58 objects:v70 count:16];
          }

          while (v30);
        }

        v3 = v47;
      }
    }

    else
    {
      v5 = *(a1 + 192);
      if (!v5)
      {
        v6 = objc_alloc_init(NSMutableArray);
        v7 = *(a1 + 192);
        *(a1 + 192) = v6;

        v5 = *(a1 + 192);
      }

      [v5 addObject:v3];
    }
  }
}

void sub_100114D18(_BYTE *a1, int a2)
{
  if (a1)
  {
    v2 = a2;
    if (a1[68] != a2 && a1[14] == 1 && a1[47] == 1 && a1[49] == 1)
    {
      if (qword_100229160 != -1)
      {
        dispatch_once(&qword_100229160, &stru_1001FBC40);
      }

      if (_NRLogIsLevelEnabled())
      {
        if (qword_100229160 != -1)
        {
          dispatch_once(&qword_100229160, &stru_1001FBC40);
        }

        _NRLogWithArgs();
      }

      a1[68] = v2;

      sub_1000FAEC0(a1);
    }
  }
}

void sub_100114E3C(void *a1)
{
  if (a1[4])
  {
    v2 = +[NRPairedDeviceRegistry sharedInstance];
    v3 = [v2 deviceForBluetoothID:a1[4]];
    if (!v3)
    {
      v49 = a1[5];
      if (v49)
      {
        v50 = *(v49 + 96);
      }

      v51 = _NRCopyLogObjectForNRUUID();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      if (IsLevelEnabled)
      {
        v53 = a1[5];
        if (v53)
        {
          v53 = v53[12];
        }

        v54 = v53;
        v55 = _NRCopyLogObjectForNRUUID();
        v74 = a1[6];
        _NRLogWithArgs();
      }

      v56 = a1[5];
      if (v56)
      {
        *(v56 + 11) = 0;
      }

      goto LABEL_51;
    }

    v4 = [[NPSDomainAccessor alloc] initWithDomain:@"com.apple.system.prefs" pairedDevice:v3];
    if (!v4)
    {
      v5 = a1[5];
      if (v5)
      {
        v6 = *(v5 + 96);
      }

      v7 = _NRCopyLogObjectForNRUUID();
      v8 = _NRLogIsLevelEnabled();

      if (v8)
      {
        v9 = a1[5];
        if (v9)
        {
          v10 = *(v9 + 96);
        }

        v11 = _NRCopyLogObjectForNRUUID();
        v65 = 8909;
        v69 = v3;
        v57 = "";
        v61 = "[NRDDeviceConductor updatePerpetualStandaloneMeadowStateWithDispatchGroup:]_block_invoke_2";
        _NRLogWithArgs();
      }

      v12 = a1[5];
      if (v12)
      {
        *(v12 + 11) = 0;
      }
    }

    v13 = [v4 copyKeyList];
    v14 = a1[5];
    if (v14)
    {
      v15 = *(v14 + 96);
    }

    v16 = _NRCopyLogObjectForNRUUID();
    v17 = _NRLogIsLevelEnabled();

    if (v17)
    {
      v18 = a1[5];
      if (v18)
      {
        v19 = *(v18 + 96);
      }

      v20 = _NRCopyLogObjectForNRUUID();
      v66 = 8914;
      v70 = v13;
      v58 = "";
      v62 = "[NRDDeviceConductor updatePerpetualStandaloneMeadowStateWithDispatchGroup:]_block_invoke_2";
      _NRLogWithArgs();
    }

    v77 = 0;
    v21 = [v4 BOOLForKey:@"PerpetualMeadowStandaloneWiFiEnabled" keyExistsAndHasValidFormat:&v77, v58, v62, v66, v70];
    v22 = a1[5];
    if (v22)
    {
      v23 = *(v22 + 96);
    }

    v24 = _NRCopyLogObjectForNRUUID();
    v25 = _NRLogIsLevelEnabled();

    if (v25)
    {
      v26 = a1[5];
      if (v26)
      {
        v27 = *(v26 + 96);
      }

      v28 = _NRCopyLogObjectForNRUUID();
      v71 = v21;
      v75 = v77;
      v67 = 8919;
      v59 = "";
      v63 = "[NRDDeviceConductor updatePerpetualStandaloneMeadowStateWithDispatchGroup:]_block_invoke_2";
      _NRLogWithArgs();
    }

    v77 = 0;
    v29 = [v4 BOOLForKey:@"PerpetualMeadowStandaloneCellularEnabled" keyExistsAndHasValidFormat:&v77, v59, v63, v67, v71, v75];
    v30 = a1[5];
    if (v30)
    {
      v31 = *(v30 + 96);
    }

    v32 = _NRCopyLogObjectForNRUUID();
    v33 = _NRLogIsLevelEnabled();

    if (v33)
    {
      v34 = a1[5];
      if (v34)
      {
        v35 = *(v34 + 96);
      }

      v36 = _NRCopyLogObjectForNRUUID();
      v72 = v29;
      v76 = v77;
      v68 = 8924;
      v60 = "";
      v64 = "[NRDDeviceConductor updatePerpetualStandaloneMeadowStateWithDispatchGroup:]_block_invoke_2";
      _NRLogWithArgs();
    }

    [v4 invalidate];
    v37 = a1[5];
    if (v37)
    {
      v38 = *(v37 + 11);
      *(v37 + 11) = (v21 | v29) & 1;
      v39 = a1[5];
      if (v39)
      {
        if ((*(v39 + 11) ^ v38))
        {
          v40 = *(v39 + 96);
          goto LABEL_34;
        }
      }

      else if (v38)
      {
LABEL_34:
        v41 = _NRCopyLogObjectForNRUUID();
        v42 = _NRLogIsLevelEnabled();

        if (v42)
        {
          v43 = a1[5];
          if (v43)
          {
            v43 = v43[12];
          }

          v44 = v43;
          v45 = _NRCopyLogObjectForNRUUID();
          v46 = a1[5];
          if (v46)
          {
            v47 = *(v46 + 11) & 1;
          }

          v73 = a1[6];
          _NRLogWithArgs();
        }
      }
    }

LABEL_51:
    return;
  }

  v48 = a1[5];
  if (v48)
  {
    *(v48 + 11) = 0;
  }
}

void sub_1001152AC(id a1)
{
  v1 = _NRCopySerialQueueAttr();
  v2 = dispatch_queue_create("com.apple.networkrelay.NanoRegistry", v1);

  if (!v2)
  {
    v4 = sub_1000E83DC();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v6 = sub_1000E83DC();
      _NRLogWithArgs();
    }

    _os_log_pack_size();
    __chkstk_darwin();
    v7 = *__error();
    v8 = _os_log_pack_fill();
    *v8 = 136446466;
    *(v8 + 4) = "nr_dispatch_queue_create";
    *(v8 + 12) = 2080;
    *(v8 + 14) = "com.apple.networkrelay.NanoRegistry";
    sub_1000E83DC();
    _NRLogAbortWithPack();
  }

  v3 = qword_100229148;
  qword_100229148 = v2;
}

void *sub_100115508(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v16.receiver = a1;
  v16.super_class = NRDIDSKeyManager;
  v1 = objc_msgSendSuper2(&v16, "init");
  if (!v1)
  {
    v8 = sub_10011573C();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v10 = sub_10011573C();
      _NRLogWithArgs();
    }

    goto LABEL_10;
  }

  v2 = v1;
  v3 = sub_100003490();
  v4 = v2[2];
  v2[2] = v3;

  v5 = objc_alloc_init(NSMutableDictionary);
  v6 = v2[6];
  v2[6] = v5;

  if (!v2[6])
  {
    v11 = sub_10011573C();
    v12 = _NRLogIsLevelEnabled();

    if (v12)
    {
      v13 = sub_10011573C();
      _NRLogWithArgs();
    }

LABEL_10:
    _os_log_pack_size();
    v14 = *__error();
    v15 = _os_log_pack_fill();
    *v15 = 136446210;
    *(v15 + 4) = "[NRDIDSKeyManager initInternal]";
    sub_10011573C();
    _NRLogAbortWithPack();
    return 0;
  }

  return v2;
}

id sub_10011573C()
{
  if (qword_100229180 != -1)
  {
    dispatch_once(&qword_100229180, &stru_1001FBD48);
  }

  v1 = qword_100229178;

  return v1;
}

void sub_100115790(id a1)
{
  v1 = os_log_create("com.apple.networkrelay", "");
  v2 = qword_100229178;
  qword_100229178 = v1;

  _objc_release_x1(v1, v2);
}

void sub_1001157D4(id a1)
{
  v1 = sub_100115508([NRDIDSKeyManager alloc]);
  v2 = qword_100229168;
  qword_100229168 = v1;

  _objc_release_x1(v1, v2);
}

uint64_t sub_100115814(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    dispatch_assert_queue_V2(*(a1 + 16));
    v4 = [v3 fullIdentity];
    if (v4)
    {
      a1 = *(v4 + 3);
      if (a1)
      {
        CFRetain(*(v4 + 3));
        goto LABEL_5;
      }

      v8 = sub_10011573C();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      if (IsLevelEnabled)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v6 = sub_10011573C();
      v7 = _NRLogIsLevelEnabled();

      if (v7)
      {
LABEL_9:
        v10 = sub_10011573C();
        _NRLogWithArgs();
      }
    }

    a1 = 0;
  }

LABEL_5:

  return a1;
}

uint64_t sub_1001158E4(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    dispatch_assert_queue_V2(*(a1 + 16));
    v4 = [v3 publicIdentity];
    if (v4)
    {
      a1 = *(v4 + 2);
      if (a1)
      {
        CFRetain(*(v4 + 2));
        goto LABEL_5;
      }

      v8 = sub_10011573C();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      if (IsLevelEnabled)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v6 = sub_10011573C();
      v7 = _NRLogIsLevelEnabled();

      if (v7)
      {
LABEL_9:
        v10 = sub_10011573C();
        _NRLogWithArgs();
      }
    }

    a1 = 0;
  }

LABEL_5:

  return a1;
}

void sub_1001159B4(uint64_t a1, int a2)
{
  if (a1)
  {
    dispatch_assert_queue_V2(*(a1 + 16));
    if (*(a1 + 8) == 1)
    {
      if (a2)
      {
        *(a1 + 9) = 1;
      }
    }

    else
    {
      *(a1 + 8) = 1;
      if (!*(a1 + 56))
      {
        v4 = objc_alloc_init(NRAnalyticsKeyManager);
        v5 = *(a1 + 56);
        *(a1 + 56) = v4;
      }

      sub_1000059A8(0, 5500, &stru_1001FDE68, 0);
      v6 = nr_absolute_time();
      v7 = *(a1 + 56);
      if (v7)
      {
        *(v7 + 24) = v6;
      }

      if (qword_100229188 != -1)
      {
        dispatch_once(&qword_100229188, &stru_1001FBD68);
      }

      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100115AE4;
      block[3] = &unk_1001FD3C8;
      block[4] = a1;
      dispatch_async(qword_100229190, block);
    }
  }
}

uint64_t sub_100115AE4(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (qword_100229188 != -1)
  {
    dispatch_once(&qword_100229188, &stru_1001FBD68);
  }

  return IDSLocalPairingGetPairingRecordsWithCompletionBlock();
}

void sub_100115B84(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = v9;
  v11 = *(a1 + 32);
  if (v11)
  {
    v12 = *(v11 + 16);
  }

  else
  {
    v12 = 0;
  }

  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100115C84;
  v16[3] = &unk_1001FCE28;
  v16[4] = v11;
  v17 = v9;
  v18 = v7;
  v19 = v8;
  v13 = v8;
  v14 = v7;
  v15 = v10;
  dispatch_async(v12, v16);
}

id sub_100115C84(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = *(v2 + 16);
  }

  else
  {
    v3 = 0;
  }

  dispatch_assert_queue_V2(v3);
  v4 = *(v1 + 32);
  if (v4)
  {
    *(v4 + 8) = 0;
  }

  v5 = nr_absolute_time();
  v11 = *(v1 + 32);
  if (v11)
  {
    v12 = *(v11 + 56);
    if (v12)
    {
      *(v12 + 32) = v5;
    }
  }

  v13 = *(v1 + 48);
  if (!*(v1 + 40) && v13 && *(v1 + 56))
  {
    v97 = *(v1 + 56);
    sub_100116C78(*(v1 + 32), 5501, @"%@ %@", v6, v7, v8, v9, v10, *(v1 + 48));
    v18 = *(v1 + 32);
    if (v18 && ((v19 = *(v18 + 56)) == 0 || (*(v19 + 16) = 1, (v18 = *(v1 + 32)) != 0)))
    {
      v20 = *(v18 + 56);
    }

    else
    {
      v20 = 0;
    }

    [v20 submit];
    v21 = *(v1 + 32);
    v22 = *(v1 + 48);
    v23 = &qword_100229000;
    v24 = &qword_100229000;
    if (v21)
    {
      dispatch_assert_queue_V2(*(v21 + 16));
      if (v22)
      {
        *&v111 = 0;
        v25 = [v22 fullIdentityClassD:&v111];
        v26 = v111;
        v27 = v26;
        if (!v25 || v26)
        {
          if (qword_100229180 != -1)
          {
            dispatch_once(&qword_100229180, &stru_1001FBD48);
          }

          if (_NRLogIsLevelEnabled())
          {
            if (qword_100229180 != -1)
            {
              dispatch_once(&qword_100229180, &stru_1001FBD48);
            }

            v98 = 132;
            v99 = v27;
            v95 = "";
            v97 = "[NRDIDSKeyManager ingestIDSLocalDeviceRecord:]";
            _NRLogWithArgs();
          }
        }

        else
        {
          v28 = sub_100115814(v21, v25);
          if (qword_100229180 != -1)
          {
            dispatch_once(&qword_100229180, &stru_1001FBD48);
          }

          if (_NRLogIsLevelEnabled())
          {
            if (qword_100229180 != -1)
            {
              dispatch_once(&qword_100229180, &stru_1001FBD48);
            }

            v29 = qword_100229178;
            if (v28)
            {
              v116[0] = 0;
              SecKeyCopyPublicBytes();
              v30 = v116[0];
              v116[0] = 0;
              LogString = _NRKeyCreateLogString();
            }

            else
            {
              LogString = @"[nil]";
            }

            v98 = 128;
            v99 = LogString;
            v95 = "";
            v97 = "[NRDIDSKeyManager ingestIDSLocalDeviceRecord:]";
            _NRLogWithArgs();
          }

          objc_storeStrong((v21 + 24), v25);
          if (v28)
          {
            CFRelease(v28);
          }
        }

        v115 = 0;
        v32 = [v22 fullIdentityClassC:&v115];
        v33 = v115;
        v34 = v33;
        if (!v32 || v33)
        {
          if (qword_100229180 != -1)
          {
            dispatch_once(&qword_100229180, &stru_1001FBD48);
          }

          if (_NRLogIsLevelEnabled())
          {
            if (qword_100229180 != -1)
            {
              dispatch_once(&qword_100229180, &stru_1001FBD48);
            }

            v98 = 147;
            v99 = v34;
            v95 = "";
            v97 = "[NRDIDSKeyManager ingestIDSLocalDeviceRecord:]";
            _NRLogWithArgs();
          }
        }

        else
        {
          v35 = sub_100115814(v21, v32);
          if (qword_100229180 != -1)
          {
            dispatch_once(&qword_100229180, &stru_1001FBD48);
          }

          if (_NRLogIsLevelEnabled())
          {
            if (qword_100229180 != -1)
            {
              dispatch_once(&qword_100229180, &stru_1001FBD48);
            }

            v36 = qword_100229178;
            if (v35)
            {
              v116[0] = 0;
              SecKeyCopyPublicBytes();
              v37 = v116[0];
              v116[0] = 0;
              v38 = _NRKeyCreateLogString();
            }

            else
            {
              v38 = @"[nil]";
            }

            v98 = 143;
            v99 = v38;
            v95 = "";
            v97 = "[NRDIDSKeyManager ingestIDSLocalDeviceRecord:]";
            _NRLogWithArgs();
          }

          objc_storeStrong((v21 + 32), v32);
          if (v35)
          {
            CFRelease(v35);
          }
        }

        v110 = 0;
        v39 = [v22 fullIdentityClassA:&v110];
        v40 = v110;
        v41 = v40;
        if (!v39 || v40)
        {
          if (qword_100229180 != -1)
          {
            dispatch_once(&qword_100229180, &stru_1001FBD48);
          }

          if (_NRLogIsLevelEnabled())
          {
            if (qword_100229180 != -1)
            {
              dispatch_once(&qword_100229180, &stru_1001FBD48);
            }

            v98 = 162;
            v99 = v41;
            v95 = "";
            v97 = "[NRDIDSKeyManager ingestIDSLocalDeviceRecord:]";
            _NRLogWithArgs();
          }
        }

        else
        {
          v42 = sub_100115814(v21, v39);
          if (qword_100229180 != -1)
          {
            dispatch_once(&qword_100229180, &stru_1001FBD48);
          }

          if (_NRLogIsLevelEnabled())
          {
            if (qword_100229180 != -1)
            {
              dispatch_once(&qword_100229180, &stru_1001FBD48);
            }

            v43 = qword_100229178;
            if (v42)
            {
              v116[0] = 0;
              SecKeyCopyPublicBytes();
              v44 = v116[0];
              v116[0] = 0;
              v45 = _NRKeyCreateLogString();
            }

            else
            {
              v45 = @"[nil]";
            }

            v98 = 158;
            v99 = v45;
            v95 = "";
            v97 = "[NRDIDSKeyManager ingestIDSLocalDeviceRecord:]";
            _NRLogWithArgs();
          }

          objc_storeStrong((v21 + 40), v39);
          if (v42)
          {
            CFRelease(v42);
          }
        }

        v23 = &qword_100229000;
        v24 = &qword_100229000;
      }

      else
      {
        v89 = sub_10011573C();
        IsLevelEnabled = _NRLogIsLevelEnabled();

        if (IsLevelEnabled)
        {
          v91 = sub_10011573C();
          v95 = "[NRDIDSKeyManager ingestIDSLocalDeviceRecord:]";
          _NRLogWithArgs();
        }
      }
    }

    v46 = *(v1 + 32);
    v47 = *(v1 + 56);
    if (v46)
    {
      v105 = v46;
      dispatch_assert_queue_V2(*(v46 + 16));
      if (v47)
      {
        v101 = v47;
        v102 = v1;
        v113 = 0u;
        v114 = 0u;
        v111 = 0u;
        v112 = 0u;
        obj = v47;
        v48 = v46;
        v104 = [obj countByEnumeratingWithState:&v111 objects:v116 count:16];
        if (v104)
        {
          v103 = *v112;
          do
          {
            for (i = 0; i != v104; i = i + 1)
            {
              if (*v112 != v103)
              {
                objc_enumerationMutation(obj);
              }

              v52 = *(*(&v111 + 1) + 8 * i);
              v51 = [obj objectForKeyedSubscript:{v52, v95, v97, v98, v99, v100}];
              v53 = [*(v48 + 48) objectForKeyedSubscript:v52];
              if (!v53)
              {
                v53 = objc_alloc_init(NRDIDSKMDeviceRecord);
              }

              v110 = 0;
              v54 = [v51 publicIdentityClassD:&v110];
              v55 = v110;
              v56 = v55;
              if (v54)
              {
                v57 = v55 == 0;
              }

              else
              {
                v57 = 0;
              }

              v107 = v51;
              if (v57)
              {
                v60 = sub_1001158E4(v48, v54);
                if (v23[48] != -1)
                {
                  dispatch_once(&qword_100229180, &stru_1001FBD48);
                }

                v61 = v24[47];
                if (_NRLogIsLevelEnabled())
                {
                  if (v23[48] != -1)
                  {
                    dispatch_once(&qword_100229180, &stru_1001FBD48);
                  }

                  v62 = v24[47];
                  v63 = [v52 UUIDString];
                  if (v60)
                  {
                    v115 = 0;
                    SecKeyCopyPublicBytes();
                    v64 = v115;
                    v115 = 0;
                    v65 = _NRKeyCreateLogString();

                    v48 = v105;
                  }

                  else
                  {
                    v65 = @"[nil]";
                  }

                  v99 = v63;
                  v100 = v65;
                  v98 = 187;
                  v95 = "";
                  v97 = "[NRDIDSKeyManager ingestIDSPairedDevicesRecords:]";
                  _NRLogWithArgs();

                  v23 = &qword_100229000;
                  v24 = &qword_100229000;
                  v51 = v107;
                }

                if (v53)
                {
                  objc_storeStrong(&v53->_remoteIDSClassDIdentity, v54);
                }

                if (v60)
                {
                  CFRelease(v60);
                }
              }

              else
              {
                if (v23[48] != -1)
                {
                  dispatch_once(&qword_100229180, &stru_1001FBD48);
                }

                v58 = v24[47];
                if (_NRLogIsLevelEnabled())
                {
                  if (v23[48] != -1)
                  {
                    dispatch_once(&qword_100229180, &stru_1001FBD48);
                  }

                  v59 = v24[47];
                  v99 = [v52 UUIDString];
                  v100 = v56;
                  v98 = 192;
                  v95 = "";
                  v97 = "[NRDIDSKeyManager ingestIDSPairedDevicesRecords:]";
                  _NRLogWithArgs();

                  v48 = v105;
                  v51 = v107;
                }
              }

              v109 = 0;
              v66 = [v51 publicIdentityClassC:&v109];
              v67 = v109;
              v68 = v67;
              if (!v66 || v67)
              {
                if (v23[48] != -1)
                {
                  dispatch_once(&qword_100229180, &stru_1001FBD48);
                }

                v75 = v24[47];
                if (_NRLogIsLevelEnabled())
                {
                  if (v23[48] != -1)
                  {
                    dispatch_once(&qword_100229180, &stru_1001FBD48);
                  }

                  v76 = v24[47];
                  v99 = [v52 UUIDString];
                  v100 = v68;
                  v98 = 208;
                  v95 = "";
                  v97 = "[NRDIDSKeyManager ingestIDSPairedDevicesRecords:]";
                  _NRLogWithArgs();

                  v48 = v105;
                  v51 = v107;
                }
              }

              else
              {
                v69 = sub_1001158E4(v48, v66);
                if (v23[48] != -1)
                {
                  dispatch_once(&qword_100229180, &stru_1001FBD48);
                }

                v70 = v24[47];
                if (_NRLogIsLevelEnabled())
                {
                  if (v23[48] != -1)
                  {
                    dispatch_once(&qword_100229180, &stru_1001FBD48);
                  }

                  v71 = v24[47];
                  v72 = [v52 UUIDString];
                  if (v69)
                  {
                    v115 = 0;
                    SecKeyCopyPublicBytes();
                    v73 = v115;
                    v115 = 0;
                    v74 = _NRKeyCreateLogString();

                    v48 = v105;
                  }

                  else
                  {
                    v74 = @"[nil]";
                  }

                  v99 = v72;
                  v100 = v74;
                  v98 = 203;
                  v95 = "";
                  v97 = "[NRDIDSKeyManager ingestIDSPairedDevicesRecords:]";
                  _NRLogWithArgs();

                  v23 = &qword_100229000;
                  v24 = &qword_100229000;
                  v51 = v107;
                }

                if (v53)
                {
                  objc_storeStrong(&v53->_remoteIDSClassCIdentity, v66);
                }

                if (v69)
                {
                  CFRelease(v69);
                }
              }

              v108 = 0;
              v77 = [v51 publicIdentityClassA:&v108];
              v78 = v108;
              v79 = v78;
              if (!v77 || v78)
              {
                if (v23[48] != -1)
                {
                  dispatch_once(&qword_100229180, &stru_1001FBD48);
                }

                v86 = v24[47];
                if (_NRLogIsLevelEnabled())
                {
                  if (v23[48] != -1)
                  {
                    dispatch_once(&qword_100229180, &stru_1001FBD48);
                  }

                  v50 = v24[47];
                  v99 = [v52 UUIDString];
                  v100 = v79;
                  v98 = 224;
                  v95 = "";
                  v97 = "[NRDIDSKeyManager ingestIDSPairedDevicesRecords:]";
                  _NRLogWithArgs();

                  v48 = v105;
                  v51 = v107;
                }
              }

              else
              {
                v80 = sub_1001158E4(v48, v77);
                if (v23[48] != -1)
                {
                  dispatch_once(&qword_100229180, &stru_1001FBD48);
                }

                v81 = v24[47];
                if (_NRLogIsLevelEnabled())
                {
                  if (v23[48] != -1)
                  {
                    dispatch_once(&qword_100229180, &stru_1001FBD48);
                  }

                  v82 = v24[47];
                  v83 = [v52 UUIDString];
                  if (v80)
                  {
                    v115 = 0;
                    SecKeyCopyPublicBytes();
                    v84 = v115;
                    v115 = 0;
                    v85 = _NRKeyCreateLogString();

                    v48 = v105;
                  }

                  else
                  {
                    v85 = @"[nil]";
                  }

                  v99 = v83;
                  v100 = v85;
                  v98 = 219;
                  v95 = "";
                  v97 = "[NRDIDSKeyManager ingestIDSPairedDevicesRecords:]";
                  _NRLogWithArgs();

                  v23 = &qword_100229000;
                  v24 = &qword_100229000;
                  v51 = v107;
                }

                if (v53)
                {
                  objc_storeStrong(&v53->_remoteIDSClassAIdentity, v77);
                }

                if (v80)
                {
                  CFRelease(v80);
                }
              }

              [*(v48 + 48) setObject:v53 forKeyedSubscript:v52];
            }

            v104 = [obj countByEnumeratingWithState:&v111 objects:v116 count:16];
          }

          while (v104);
        }

        v47 = v101;
        v1 = v102;
      }

      else
      {
        v92 = sub_10011573C();
        v93 = _NRLogIsLevelEnabled();

        if (v93)
        {
          v94 = sub_10011573C();
          _NRLogWithArgs();
        }
      }
    }

    result = *(v1 + 32);
    if (result)
    {
      result = sub_100116D00(result, 0);
      v87 = *(v1 + 32);
      if (v87)
      {
        if (*(v87 + 9) == 1)
        {
          *(v87 + 9) = 0;
          v88 = *(v1 + 32);

          return sub_1001159B4(v88, 0);
        }
      }
    }
  }

  else
  {
    v96 = *(v1 + 56);
    sub_100116C78(*(v1 + 32), 5502, @"%@ %@ %@", v6, v7, v8, v9, v10, v13);
    v14 = *(v1 + 32);
    if (v14 && ((v15 = *(v14 + 56)) == 0 || (*(v15 + 16) = 0, (v14 = *(v1 + 32)) != 0)))
    {
      v16 = *(v14 + 56);
    }

    else
    {
      v16 = 0;
    }

    return [v16 submit];
  }

  return result;
}

void sub_100116C78(uint64_t a1, int a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (a1)
  {
    v10 = a3;
    v11 = [[NSString alloc] initWithFormat:v10 arguments:&a9];

    sub_1000059A8(0, a2, &stru_1001FDE68, v11);
  }
}

void sub_100116D00(uint64_t a1, int a2)
{
  if (a1)
  {
    v3 = a1;
    dispatch_assert_queue_V2(*(a1 + 16));
    v94 = 0u;
    v95 = 0u;
    v92 = 0u;
    v93 = 0u;
    v4 = *(v3 + 48);
    v63 = [v4 countByEnumeratingWithState:&v92 objects:v99 count:16];
    if (v63)
    {
      v5 = 0;
      v6 = 0;
      v61 = *v93;
      v67 = a2;
      v62 = v4;
      v66 = v3;
      do
      {
        v7 = 0;
        do
        {
          if (*v93 != v61)
          {
            objc_enumerationMutation(v4);
          }

          v8 = *(*(&v92 + 1) + 8 * v7);
          v9 = *(v3 + 48);
          v65 = v8;
          v10 = [v9 objectForKeyedSubscript:v8];

          if (v10)
          {
            v11 = v10[4];
          }

          else
          {
            v11 = 0;
          }

          v64 = v7;
          v12 = [v11 copy];
          v88 = 0u;
          v89 = 0u;
          v90 = 0u;
          v91 = 0u;
          obj = v12;
          v75 = [obj countByEnumeratingWithState:&v88 objects:v98 count:16];
          if (v75)
          {
            v74 = *v89;
            do
            {
              for (i = 0; i != v75; i = i + 1)
              {
                if (*v89 != v74)
                {
                  objc_enumerationMutation(obj);
                }

                v14 = *(*(&v88 + 1) + 8 * i);
                if (v14)
                {
                  v15 = *(v14 + 9) != 4;
                  v16 = (*(v14 + 9) - 5) < 0xFEu;
                }

                else
                {
                  v16 = 1;
                  v15 = 1;
                }

                v17 = *(v3 + 24);
                if (!v17)
                {
                  goto LABEL_46;
                }

                if (!v10)
                {

LABEL_46:
                  if (v14)
                  {
                    if (*(v14 + 8))
                    {
                      v5 |= a2;
                    }

                    else
                    {
                      v5 = 1;
                      *(v14 + 8) = 1;
                    }
                  }

                  else
                  {
                    v5 = 1;
                  }

                  v6 = 1;
                  continue;
                }

                v18 = v10[1];

                if (!v18)
                {
                  goto LABEL_46;
                }

                if (v15)
                {
                  v19 = *(v3 + 32);
                  if (!v19)
                  {
                    goto LABEL_46;
                  }

                  v20 = v10[2];

                  if (!v20)
                  {
                    goto LABEL_46;
                  }
                }

                if (v16)
                {
                  v21 = *(v3 + 40);
                  if (!v21)
                  {
                    goto LABEL_46;
                  }

                  v22 = v10[3];

                  if (!v22)
                  {
                    goto LABEL_46;
                  }
                }

                if (qword_100229180 != -1)
                {
                  dispatch_once(&qword_100229180, &stru_1001FBD48);
                }

                if (_NRLogIsLevelEnabled())
                {
                  if (qword_100229180 != -1)
                  {
                    dispatch_once(&qword_100229180, &stru_1001FBD48);
                  }

                  if (v14)
                  {
                    v23 = *(v14 + 9);
                  }

                  v24 = qword_100229178;
                  String = NRDataProtectionClassCreateString();
                  v60 = v65;
                  v58 = 347;
                  v56 = "";
                  v57 = "[NRDIDSKeyManager checkOutstandingQueriesForceQueryIDS:]";
                  _NRLogWithArgs();
                }

                v71 = v6;
                v72 = v5;
                v70 = *(v3 + 24);
                v69 = *(v3 + 32);
                v25 = v3;
                v26 = *(v3 + 40);
                v27 = v10[1];
                v28 = v10[2];
                v29 = v10[3];
                if (v14)
                {
                  v30 = *(v14 + 16);
                  objc_setProperty_nonatomic_copy(v14, v31, 0, 16);
                }

                else
                {
                  v30 = 0;
                }

                [v10[4] removeObject:{v14, v56, v57, v58, String, v60}];
                if (![v10[4] count])
                {
                  v32 = v10[4];
                  v10[4] = 0;
                }

                v33 = *(v25 + 16);
                block[0] = _NSConcreteStackBlock;
                block[1] = 3221225472;
                block[2] = sub_1001175B8;
                block[3] = &unk_1001FBCD8;
                v86 = v29;
                v87 = v30;
                v81 = v70;
                v82 = v69;
                v83 = v26;
                v84 = v27;
                v85 = v28;
                v68 = v29;
                v34 = v28;
                v35 = v27;
                v36 = v26;
                v37 = v69;
                v38 = v70;
                v39 = v30;
                dispatch_async(v33, block);

                v3 = v66;
                a2 = v67;
                v6 = v71;
                v5 = v72;
              }

              v75 = [obj countByEnumeratingWithState:&v88 objects:v98 count:16];
            }

            while (v75);
          }

          v7 = v64 + 1;
          v4 = v62;
        }

        while ((v64 + 1) != v63);
        v63 = [v62 countByEnumeratingWithState:&v92 objects:v99 count:16];
      }

      while (v63);

      if (v5)
      {
        sub_1001159B4(v3, a2);
      }

      if (v6)
      {
        dispatch_assert_queue_V2(*(v3 + 16));
        if (*(v3 + 10))
        {
          return;
        }

        *(v3 + 10) = 1;
        objc_opt_self();
        if (qword_1002294C8 != -1)
        {
          dispatch_once(&qword_1002294C8, &stru_1001FD250);
        }

        v40 = qword_1002294C0;
        v96[0] = _NSConcreteStackBlock;
        v96[1] = 3221225472;
        v96[2] = sub_1001175D8;
        v96[3] = &unk_1001FBCB0;
        v96[4] = v3;
        v41 = v96;
        if (v40)
        {
          dispatch_assert_queue_V2(v40[2]);
          if (qword_1002294D8 != -1)
          {
            dispatch_once(&qword_1002294D8, &stru_1001FD2C0);
          }

          if (_NRLogIsLevelEnabled())
          {
            if (qword_1002294D8 != -1)
            {
              dispatch_once(&qword_1002294D8, &stru_1001FD2C0);
            }

            _NRLogWithArgs();
          }

          v42 = objc_retainBlock(v41);
          v43 = v40[3];
          v40[3] = v42;

          sub_100180B5C(v40);
        }

        goto LABEL_68;
      }
    }

    else
    {
    }

    v78 = 0u;
    v79 = 0u;
    v76 = 0u;
    v77 = 0u;
    v40 = *(v3 + 48);
    v44 = [(dispatch_queue_t *)v40 countByEnumeratingWithState:&v76 objects:v97 count:16];
    if (v44)
    {
      v45 = v44;
      v46 = *v77;
LABEL_73:
      v47 = 0;
      while (1)
      {
        if (*v77 != v46)
        {
          objc_enumerationMutation(v40);
        }

        v48 = *(*(&v76 + 1) + 8 * v47);
        v49 = *(v3 + 48);
        v50 = [v49 objectForKeyedSubscript:v48];
        v51 = v50;
        if (v50)
        {
          v50 = v50[4];
        }

        v52 = [v50 count];

        if (v52)
        {
          break;
        }

        if (v45 == ++v47)
        {
          v45 = [(dispatch_queue_t *)v40 countByEnumeratingWithState:&v76 objects:v97 count:16];
          if (v45)
          {
            goto LABEL_73;
          }

          goto LABEL_81;
        }
      }

LABEL_68:

      return;
    }

LABEL_81:

    dispatch_assert_queue_V2(*(v3 + 16));
    if (*(v3 + 10) == 1)
    {
      *(v3 + 10) = 0;
      objc_opt_self();
      if (qword_1002294C8 != -1)
      {
        dispatch_once(&qword_1002294C8, &stru_1001FD250);
      }

      v53 = qword_1002294C0;
      v54 = v53;
      if (v53)
      {
        dispatch_assert_queue_V2(*(v53 + 2));
        if (qword_1002294D8 != -1)
        {
          dispatch_once(&qword_1002294D8, &stru_1001FD2C0);
        }

        if (_NRLogIsLevelEnabled())
        {
          if (qword_1002294D8 != -1)
          {
            dispatch_once(&qword_1002294D8, &stru_1001FD2C0);
          }

          _NRLogWithArgs();
        }

        v55 = v54[3];
        v54[3] = 0;

        if (!v54[3] && !v54[5] && !v54[6])
        {
          sub_100181504(v54);
        }
      }
    }
  }
}

uint64_t sub_1001175D8(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = *(v2 + 16);
  }

  else
  {
    v3 = 0;
  }

  dispatch_assert_queue_V2(v3);
  v4 = *(a1 + 32);

  return sub_100116D00(v4, 1);
}

void sub_100117628(id a1)
{
  v1 = _NRCopySerialQueueAttr();
  v2 = dispatch_queue_create("terminusd.IdentityServices.pairingRecords", v1);

  if (!v2)
  {
    v4 = sub_10011573C();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v6 = sub_10011573C();
      _NRLogWithArgs();
    }

    _os_log_pack_size();
    __chkstk_darwin();
    v7 = *__error();
    v8 = _os_log_pack_fill();
    *v8 = 136446466;
    *(v8 + 4) = "nr_dispatch_queue_create";
    *(v8 + 12) = 2080;
    *(v8 + 14) = "terminusd.IdentityServices.pairingRecords";
    sub_10011573C();
    _NRLogAbortWithPack();
  }

  v3 = qword_100229190;
  qword_100229190 = v2;
}

void sub_1001177A8(uint64_t a1, void *a2, unsigned __int8 a3, void *a4)
{
  v31 = a2;
  v7 = a4;
  dispatch_assert_queue_V2(*(a1 + 16));
  if (v7)
  {
    v8 = objc_alloc_init(NRIDSKMOutstandingQuery);
    if (v8)
    {
      v10 = v8;
      v8->_minDataProtectionClass = a3;
      objc_setProperty_nonatomic_copy(v8, v9, v7, 16);
      if (qword_100229180 != -1)
      {
        dispatch_once(&qword_100229180, &stru_1001FBD48);
      }

      if (_NRLogIsLevelEnabled())
      {
        if (qword_100229180 != -1)
        {
          dispatch_once(&qword_100229180, &stru_1001FBD48);
        }

        v11 = qword_100229178;
        String = NRDataProtectionClassCreateString();
        _NRLogWithArgs();
      }

      v12 = [*(a1 + 48) objectForKeyedSubscript:{v31, v31}];
      if (v12 || (v12 = objc_alloc_init(NRDIDSKMDeviceRecord)) != 0)
      {
        v13 = v12;
        outstandingQueries = v12->_outstandingQueries;
        if (outstandingQueries || (v15 = objc_alloc_init(NSMutableArray), v16 = v13->_outstandingQueries, v13->_outstandingQueries = v15, v16, (outstandingQueries = v13->_outstandingQueries) != 0))
        {
          [(NSMutableArray *)outstandingQueries addObject:v10];
          [*(a1 + 48) setObject:v13 forKeyedSubscript:v31];
          sub_100116D00(a1, 0);

LABEL_14:
          goto LABEL_15;
        }

        v25 = sub_10011573C();
        IsLevelEnabled = _NRLogIsLevelEnabled();

        if (IsLevelEnabled)
        {
          v27 = sub_10011573C();
          _NRLogWithArgs();
        }
      }

      else
      {
        v22 = sub_10011573C();
        v23 = _NRLogIsLevelEnabled();

        if (v23)
        {
          v24 = sub_10011573C();
          _NRLogWithArgs();
        }
      }
    }

    else
    {
      v19 = sub_10011573C();
      v20 = _NRLogIsLevelEnabled();

      if (v20)
      {
        v21 = sub_10011573C();
        _NRLogWithArgs();
      }
    }

    _os_log_pack_size();
    __chkstk_darwin();
    v28 = *__error();
    v29 = _os_log_pack_fill();
    *v29 = 136446210;
    *(v29 + 4) = "[NRDIDSKeyManager internalQueryIDSKeysForBluetoothUUID:minDataProtectionClass:completionBlock:]";
    sub_10011573C();
    _NRLogAbortWithPack();
  }

  v17 = sub_10011573C();
  v18 = _NRLogIsLevelEnabled();

  if (v18)
  {
    v10 = sub_10011573C();
    _NRLogWithArgs();
    goto LABEL_14;
  }

LABEL_15:
}

void sub_100117C3C(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7)
{
  v13 = a2;
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v90 = a6;
  v89 = a7;
  v17 = *(a1 + 32);
  if (v17)
  {
    dispatch_assert_queue_V2(*(v17 + 16));
    if (v13)
    {
      goto LABEL_3;
    }

LABEL_67:
    v79 = sub_10011573C();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (!IsLevelEnabled)
    {
      goto LABEL_55;
    }

    goto LABEL_68;
  }

  dispatch_assert_queue_V2(0);
  if (!v13)
  {
    goto LABEL_67;
  }

LABEL_3:
  if (!v16)
  {
    v69 = sub_10011573C();
    v70 = _NRLogIsLevelEnabled();

    if (!v70)
    {
      goto LABEL_55;
    }

LABEL_68:
    v81 = sub_10011573C();
    _NRLogWithArgs();

    goto LABEL_55;
  }

  v18 = *(a1 + 80);
  if ((v18 | 2) != 3)
  {
    goto LABEL_10;
  }

  if (!v14)
  {
    v71 = sub_10011573C();
    v72 = _NRLogIsLevelEnabled();

    if (!v72)
    {
      goto LABEL_55;
    }

    goto LABEL_68;
  }

  if (!v90)
  {
    v73 = sub_10011573C();
    v74 = _NRLogIsLevelEnabled();

    if (!v74)
    {
      goto LABEL_55;
    }

    goto LABEL_68;
  }

  if (v18 != 1)
  {
    goto LABEL_10;
  }

  if (!v15)
  {
    v75 = sub_10011573C();
    v76 = _NRLogIsLevelEnabled();

    if (!v76)
    {
      goto LABEL_55;
    }

    goto LABEL_68;
  }

  if (!v89)
  {
    v77 = sub_10011573C();
    v78 = _NRLogIsLevelEnabled();

    if (!v78)
    {
      goto LABEL_55;
    }

    goto LABEL_68;
  }

LABEL_10:
  v19 = sub_1001158E4(*(a1 + 32), v16);
  v20 = sub_100115814(*(a1 + 32), v13);
  v21 = *(a1 + 40);
  v93 = 0;
  v88 = v13;
  v22 = [v16 signAndProtectData:v21 withSigner:v13 error:&v93];
  v23 = v93;
  v86 = v16;
  if (v23 || !v22)
  {
    if (qword_100229180 != -1)
    {
      dispatch_once(&qword_100229180, &stru_1001FBD48);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_100229180 != -1)
      {
        dispatch_once(&qword_100229180, &stru_1001FBD48);
      }

      v82 = *(a1 + 48);
      v84 = v23;
      _NRLogWithArgs();
    }

    v31 = *(a1 + 32);
    v25 = [*(a1 + 48) UUIDString];
    v84 = v23;
    sub_100116C78(v31, 5504, @"ClassD BT<%@>: %@", v32, v33, v34, v35, v36, v25);
  }

  else
  {
    v24 = *(a1 + 32);
    v25 = [*(a1 + 48) UUIDString];
    sub_100116C78(v24, 5503, @"ClassD BT<%@>", v26, v27, v28, v29, v30, v25);
  }

  v37 = 0;
  v87 = v14;
  if (v14 && v90)
  {
    v38 = *(a1 + 56);
    if (v38)
    {
      v92 = 0;
      v37 = [v90 signAndProtectData:v38 withSigner:v14 error:&v92];
      v39 = v92;
      if (v39 || !v37)
      {
        if (qword_100229180 != -1)
        {
          dispatch_once(&qword_100229180, &stru_1001FBD48);
        }

        if (_NRLogIsLevelEnabled())
        {
          if (qword_100229180 != -1)
          {
            dispatch_once(&qword_100229180, &stru_1001FBD48);
          }

          v83 = *(a1 + 48);
          v84 = v39;
          _NRLogWithArgs();
        }

        v47 = *(a1 + 32);
        v41 = [*(a1 + 48) UUIDString];
        v84 = v39;
        sub_100116C78(v47, 5504, @"ClassC BT<%@>: %@", v48, v49, v50, v51, v52, v41);
      }

      else
      {
        v40 = *(a1 + 32);
        v41 = [*(a1 + 48) UUIDString];
        sub_100116C78(v40, 5503, @"ClassC BT<%@>", v42, v43, v44, v45, v46, v41);
      }
    }

    else
    {
      v37 = 0;
    }
  }

  v53 = 0;
  if (v15 && v89)
  {
    v54 = *(a1 + 64);
    if (v54)
    {
      v91 = 0;
      v53 = [v89 signAndProtectData:v54 withSigner:v15 error:&v91];
      v55 = v91;
      v85 = v15;
      if (v55 || !v53)
      {
        if (qword_100229180 != -1)
        {
          dispatch_once(&qword_100229180, &stru_1001FBD48);
        }

        if (_NRLogIsLevelEnabled())
        {
          if (qword_100229180 != -1)
          {
            dispatch_once(&qword_100229180, &stru_1001FBD48);
          }

          v83 = *(a1 + 48);
          v84 = v55;
          _NRLogWithArgs();
        }

        v63 = *(a1 + 32);
        v57 = [*(a1 + 48) UUIDString];
        sub_100116C78(v63, 5504, @"ClassA BT<%@>: %@", v64, v65, v66, v67, v68, v57);
      }

      else
      {
        v56 = *(a1 + 32);
        v57 = [*(a1 + 48) UUIDString];
        sub_100116C78(v56, 5503, @"ClassA BT<%@>", v58, v59, v60, v61, v62, v57);
      }

      v15 = v85;
    }

    else
    {
      v53 = 0;
    }
  }

  (*(*(a1 + 72) + 16))();
  if (v19)
  {
    CFRelease(v19);
  }

  if (v20)
  {
    CFRelease(v20);
  }

  v14 = v87;
  v13 = v88;
  v16 = v86;
LABEL_55:
}

void sub_10011829C(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v7 = a2;
  v8 = a5;
  v9 = a1[4];
  if (v9)
  {
    dispatch_assert_queue_V2(*(v9 + 16));
    if (v7)
    {
      goto LABEL_3;
    }

LABEL_19:
    v25 = sub_10011573C();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (!IsLevelEnabled)
    {
      goto LABEL_15;
    }

    goto LABEL_20;
  }

  dispatch_assert_queue_V2(0);
  if (!v7)
  {
    goto LABEL_19;
  }

LABEL_3:
  if (!v8)
  {
    v23 = sub_10011573C();
    v24 = _NRLogIsLevelEnabled();

    if (!v24)
    {
      goto LABEL_15;
    }

LABEL_20:
    v27 = sub_10011573C();
    _NRLogWithArgs();

    goto LABEL_15;
  }

  v10 = a1[5];
  v29 = 0;
  v11 = [v7 verifyAndExposeData:v10 withSigner:v8 error:&v29];
  v17 = v29;
  if (v17 || !v11)
  {
    if (qword_100229180 != -1)
    {
      dispatch_once(&qword_100229180, &stru_1001FBD48);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_100229180 != -1)
      {
        dispatch_once(&qword_100229180, &stru_1001FBD48);
      }

      v28 = a1[6];
      _NRLogWithArgs();
    }

    sub_100116C78(a1[4], 5506, @"ClassD BT<%@>: %@", v18, v19, v20, v21, v22, a1[6]);
  }

  else
  {
    sub_100116C78(a1[4], 5505, @"ClassD BT<%@>", v12, v13, v14, v15, v16, a1[6]);
  }

  (*(a1[7] + 16))();

LABEL_15:
}

void sub_1001184A4(uint64_t *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, void *a6)
{
  v8 = a3;
  v9 = a6;
  v10 = a1[4];
  if (v10)
  {
    dispatch_assert_queue_V2(*(v10 + 16));
    if (v8)
    {
      goto LABEL_3;
    }

LABEL_19:
    v26 = sub_10011573C();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (!IsLevelEnabled)
    {
      goto LABEL_15;
    }

    goto LABEL_20;
  }

  dispatch_assert_queue_V2(0);
  if (!v8)
  {
    goto LABEL_19;
  }

LABEL_3:
  if (!v9)
  {
    v24 = sub_10011573C();
    v25 = _NRLogIsLevelEnabled();

    if (!v25)
    {
      goto LABEL_15;
    }

LABEL_20:
    v28 = sub_10011573C();
    _NRLogWithArgs();

    goto LABEL_15;
  }

  v11 = a1[5];
  v30 = 0;
  v12 = [v8 verifyAndExposeData:v11 withSigner:v9 error:&v30];
  v18 = v30;
  if (v18 || !v12)
  {
    if (qword_100229180 != -1)
    {
      dispatch_once(&qword_100229180, &stru_1001FBD48);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_100229180 != -1)
      {
        dispatch_once(&qword_100229180, &stru_1001FBD48);
      }

      v29 = a1[6];
      _NRLogWithArgs();
    }

    sub_100116C78(a1[4], 5506, @"ClassC BT<%@>: %@", v19, v20, v21, v22, v23, a1[6]);
  }

  else
  {
    sub_100116C78(a1[4], 5505, @"ClassC BT<%@>", v13, v14, v15, v16, v17, a1[6]);
  }

  (*(a1[7] + 16))();

LABEL_15:
}

void sub_1001186AC(uint64_t *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, void *a7)
{
  v9 = a4;
  v10 = a7;
  v11 = a1[4];
  if (v11)
  {
    dispatch_assert_queue_V2(*(v11 + 16));
    if (v9)
    {
      goto LABEL_3;
    }

LABEL_25:
    v27 = sub_10011573C();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (!IsLevelEnabled)
    {
      goto LABEL_21;
    }

    goto LABEL_26;
  }

  dispatch_assert_queue_V2(0);
  if (!v9)
  {
    goto LABEL_25;
  }

LABEL_3:
  if (!v10)
  {
    v25 = sub_10011573C();
    v26 = _NRLogIsLevelEnabled();

    if (!v26)
    {
      goto LABEL_21;
    }

LABEL_26:
    v29 = sub_10011573C();
    _NRLogWithArgs();

    goto LABEL_21;
  }

  v12 = a1[5];
  v32 = 0;
  v13 = [v9 verifyAndExposeData:v12 withSigner:v10 error:&v32];
  v19 = v32;
  if (v19 || !v13)
  {
    if (qword_100229180 != -1)
    {
      dispatch_once(&qword_100229180, &stru_1001FBD48);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_100229180 != -1)
      {
        dispatch_once(&qword_100229180, &stru_1001FBD48);
      }

      v31 = a1[6];
      _NRLogWithArgs();
    }

    if (qword_100229180 != -1)
    {
      dispatch_once(&qword_100229180, &stru_1001FBD48);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_100229180 != -1)
      {
        dispatch_once(&qword_100229180, &stru_1001FBD48);
      }

      v30 = a1[6];
      _NRLogWithArgs();
    }

    sub_100116C78(a1[4], 5506, @"ClassA BT<%@>: %@", v20, v21, v22, v23, v24, a1[6]);
  }

  else
  {
    sub_100116C78(a1[4], 5505, @"ClassA BT<%@>", v14, v15, v16, v17, v18, a1[6]);
  }

  (*(a1[7] + 16))();

LABEL_21:
}

void sub_100118C70(id a1)
{
  v1 = os_log_create("com.apple.networkrelay", "");
  v2 = qword_1002291A8;
  qword_1002291A8 = v1;

  _objc_release_x1(v1, v2);
}

id sub_10011903C(id a1)
{
  if (a1)
  {
    v2 = *(a1 + 4);
    if (!v2)
    {
      v3 = a1;
      v4 = *(a1 + 2);
      v5 = sub_1001190A4(v4);
      v6 = v3[4];
      v3[4] = v5;

      v2 = v3[4];
    }

    a1 = v2;
    v1 = vars8;
  }

  return a1;
}

id sub_1001190A4(uint64_t a1)
{
  if (a1)
  {
    v1 = nw_agent_client_copy_endpoint();
    if (v1 && (device_id = nw_endpoint_get_device_id()) != 0 && *device_id)
    {
      v3 = [NSString stringWithUTF8String:device_id];
    }

    else
    {
      objc_opt_self();
      v4 = sub_100003490();
      dispatch_assert_queue_V2(v4);

      sub_1001619D8();
      v20 = 0u;
      v21 = 0u;
      v18 = 0u;
      v19 = 0u;
      v5 = qword_100229428;
      v6 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v6)
      {
        v7 = v6;
        v8 = *v19;
LABEL_9:
        v9 = 0;
        while (1)
        {
          if (*v19 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = [qword_100229428 objectForKeyedSubscript:*(*(&v18 + 1) + 8 * v9)];
          v11 = sub_100169428(v10);
          v12 = !v10 || v11 == 0;
          if (!v12 && (*(v10 + 48) & 2) != 0)
          {
            break;
          }

          if (v7 == ++v9)
          {
            v7 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
            if (!v7)
            {
              goto LABEL_20;
            }

            goto LABEL_9;
          }
        }

        v13 = *(v10 + 40);
      }

      else
      {
LABEL_20:

        v10 = 0;
        v13 = 0;
      }

      v3 = v13;

      if (v3)
      {
        if (qword_1002291B0 != -1)
        {
          dispatch_once(&qword_1002291B0, &stru_1001FBE70);
        }

        if (_NRLogIsLevelEnabled())
        {
          if (qword_1002291B0 != -1)
          {
            dispatch_once(&qword_1002291B0, &stru_1001FBE70);
          }

          _NRLogWithArgs();
        }

        if (v10)
        {
          v14 = *(v10 + 40);
        }

        else
        {
          v14 = 0;
        }

        v3 = v14;
      }
    }

    goto LABEL_32;
  }

  v16 = sub_100119370();
  IsLevelEnabled = _NRLogIsLevelEnabled();

  if (IsLevelEnabled)
  {
    v1 = sub_100119370();
    _NRLogWithArgs();
    v3 = 0;
LABEL_32:

    goto LABEL_33;
  }

  v3 = 0;
LABEL_33:

  return v3;
}

id sub_100119370()
{
  if (qword_1002291B0 != -1)
  {
    dispatch_once(&qword_1002291B0, &stru_1001FBE70);
  }

  v1 = qword_1002291A8;

  return v1;
}

id sub_1001196E0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (!a1)
  {
LABEL_23:
    v8 = 0;
    goto LABEL_20;
  }

  if (!v3)
  {
    v15 = sub_100119370();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v17 = sub_100119370();
      _NRLogWithArgs();
    }

    goto LABEL_23;
  }

  [*(a1 + 48) objectForKeyedSubscript:v3];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = v21 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v19;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v18 + 1) + 8 * i);
        if (v11)
        {
          v12 = *(v11 + 48);
        }

        else
        {
          v12 = 0;
        }

        v13 = sub_1001198B4(v12);
        if (v13)
        {
          if (!v8)
          {
            v8 = objc_alloc_init(NSMutableArray);
          }

          if (([v8 containsObject:v13] & 1) == 0)
          {
            [v8 addObject:v13];
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v7);
  }

  else
  {
    v8 = 0;
  }

LABEL_20:
  return v8;
}

uint64_t sub_1001198B4(void *a1)
{
  v1 = a1;
  v2 = nw_agent_client_copy_parameters();
  v3 = nw_parameters_copy_default_protocol_stack(v2);
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_1001199DC;
  v11 = sub_1001199EC;
  v12 = 0;
  iterate_block[0] = _NSConcreteStackBlock;
  iterate_block[1] = 3221225472;
  iterate_block[2] = sub_1001199F4;
  iterate_block[3] = &unk_1001FBE50;
  iterate_block[4] = &v7;
  nw_protocol_stack_iterate_application_protocols(v3, iterate_block);
  if (v8[5])
  {
    v4 = nw_quic_options_copy_local_public_key();
  }

  else
  {
    v4 = 0;
  }

  _Block_object_dispose(&v7, 8);

  return v4;
}

void sub_1001199C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1001199DC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1001199F4(uint64_t a1, void *a2)
{
  is_quic = a2;
  v5 = is_quic;
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    v7 = is_quic;
    is_quic = nw_protocol_options_is_quic(is_quic);
    v5 = v7;
    if (is_quic)
    {
      objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
      v5 = v7;
    }
  }

  return _objc_release_x1(is_quic, v5);
}

void sub_10011A590(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = sub_10011B31C([NRASMListenRequest alloc], v5);
  v9 = v7;
  if (v7 && (objc_setProperty_nonatomic_copy(v7, v8, v6, 72), (v10 = sub_10011B080(v9)) != 0))
  {
    v11 = v10;
    v12 = nw_agent_client_copy_path();
    v13 = nw_path_copy_effective_local_endpoint(v12);
    objc_storeStrong(v9 + 8, v13);

    if (qword_1002291B0 != -1)
    {
      dispatch_once(&qword_1002291B0, &stru_1001FBE70);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_1002291B0 != -1)
      {
        dispatch_once(&qword_1002291B0, &stru_1001FBE70);
      }

      v14 = qword_1002291A8;
      v15 = v9[2];
      v16 = v9[8];
      v17 = v9[7];
      v18 = v14;
      v32 = v16;
      v33 = v17;
      v28 = 1172;
      v29 = v11;
      v30 = v5;
      v31 = v15;
      v26 = "";
      v27 = "[NRApplicationServiceManager setupListenerAgent]_block_invoke";
      _NRLogWithArgs();
    }

    v19 = *(a1 + 32);
    if (v19)
    {
      v20 = *(v19 + 32);
    }

    else
    {
      v20 = 0;
    }

    [v20 setObject:v9 forKeyedSubscript:{v11, v26, v27, v28, v29, v30, v31, v32, v33}];
    v21 = +[NSUUID UUID];
    v35[0] = 0;
    v35[1] = 0;
    [v21 getUUIDBytes:v35];
    [v11 UTF8String];
    application_service = nw_endpoint_create_application_service();
    v34[0] = 0;
    v34[1] = 0;
    v23 = *(a1 + 32);
    if (v23)
    {
      v24 = *(v23 + 96);
    }

    else
    {
      v24 = 0;
    }

    [v24 getUUIDBytes:v34];
    nw_endpoint_set_agent_identifier();
    v25 = nw_array_create();
    nw_array_append();
    v6[2](v6, v25);
    sub_10011B75C(*(a1 + 32));
  }

  else
  {
    if (qword_1002291B0 != -1)
    {
      dispatch_once(&qword_1002291B0, &stru_1001FBE70);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_1002291B0 != -1)
      {
        dispatch_once(&qword_1002291B0, &stru_1001FBE70);
      }

      _NRLogWithArgs();
    }

    v11 = 0;
  }
}

void sub_10011A8B4(uint64_t a1, void *a2)
{
  v3 = a2;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v4 = *(a1 + 32);
  if (v4)
  {
    v5 = *(v4 + 32);
  }

  else
  {
    v5 = 0;
  }

  v6 = [v5 allValues];
  v7 = [v6 countByEnumeratingWithState:&v43 objects:v48 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v44;
    do
    {
      v10 = 0;
      do
      {
        if (*v44 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v43 + 1) + 8 * v10);
        if (v11)
        {
          if (v11[6] == v3)
          {
            goto LABEL_16;
          }
        }

        else if (!v3)
        {
LABEL_16:
          v13 = v11;

          if (!v11)
          {
            goto LABEL_41;
          }

          v14 = sub_10011B080(v13);
          if (qword_1002291B0 != -1)
          {
            dispatch_once(&qword_1002291B0, &stru_1001FBE70);
          }

          if (_NRLogIsLevelEnabled())
          {
            if (qword_1002291B0 != -1)
            {
              dispatch_once(&qword_1002291B0, &stru_1001FBE70);
            }

            v15 = v13[2];
            v16 = qword_1002291A8;
            v33 = v3;
            v34 = v15;
            v31 = 1200;
            v32 = v14;
            v29 = "";
            v30 = "[NRApplicationServiceManager setupListenerAgent]_block_invoke_2";
            _NRLogWithArgs();
          }

          v17 = *(a1 + 32);
          if (v17)
          {
            v18 = *(v17 + 32);
          }

          else
          {
            v18 = 0;
          }

          [v18 setObject:0 forKeyedSubscript:{v14, v29, v30, v31, v32, v33, v34}];
          v19 = v13[7];
          v20 = v19;
          if (v19 && v19[11] == 1)
          {
            v21 = v13[8];

            if (v21)
            {
              v41 = 0u;
              v42 = 0u;
              v39 = 0u;
              v40 = 0u;
              v22 = *(a1 + 32);
              if (v22)
              {
                v22 = v22[7];
              }

              v20 = v22;
              v23 = [v20 countByEnumeratingWithState:&v39 objects:v47 count:16];
              if (v23)
              {
                v24 = v23;
                v35 = v3;
                v25 = *v40;
                do
                {
                  for (i = 0; i != v24; i = i + 1)
                  {
                    if (*v40 != v25)
                    {
                      objc_enumerationMutation(v20);
                    }

                    v27 = *(*(&v39 + 1) + 8 * i);
                    if (v27)
                    {
                      v28 = *(v27 + 72);
                    }

                    else
                    {
                      v28 = 0;
                    }

                    block[0] = _NSConcreteStackBlock;
                    block[1] = 3221225472;
                    block[2] = sub_10011B2EC;
                    block[3] = &unk_1001FD088;
                    block[4] = v27;
                    v37 = v14;
                    v38 = v13;
                    dispatch_async(v28, block);
                  }

                  v24 = [v20 countByEnumeratingWithState:&v39 objects:v47 count:16];
                }

                while (v24);
                v3 = v35;
              }

              goto LABEL_48;
            }
          }

          else
          {
LABEL_48:
          }

          goto LABEL_50;
        }

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v12 = [v6 countByEnumeratingWithState:&v43 objects:v48 count:16];
      v8 = v12;
    }

    while (v12);
  }

LABEL_41:
  if (qword_1002291B0 != -1)
  {
    dispatch_once(&qword_1002291B0, &stru_1001FBE70);
  }

  if (_NRLogIsLevelEnabled())
  {
    if (qword_1002291B0 != -1)
    {
      dispatch_once(&qword_1002291B0, &stru_1001FBE70);
    }

    _NRLogWithArgs();
  }

LABEL_50:
}

void sub_10011ACD8(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = nw_agent_client_copy_endpoint();
  v4 = v3;
  if (v3 && nw_endpoint_get_type(v3) == nw_endpoint_type_address)
  {
    sub_10011AFC0(*(a1 + 32), v5, 1);
  }
}

void sub_10011AD4C(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = nw_agent_client_copy_endpoint();
  v4 = v3;
  if (v3 && nw_endpoint_get_type(v3) == nw_endpoint_type_address)
  {
    sub_10011ADBC(*(a1 + 32), v5);
  }
}

void sub_10011ADBC(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v4 = *(a1 + 120);
    v5 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v5)
    {
      v6 = *v16;
      do
      {
        v7 = 0;
        do
        {
          if (*v16 != v6)
          {
            objc_enumerationMutation(v4);
          }

          v8 = *(*(&v15 + 1) + 8 * v7);
          if (v8)
          {
            if (v8[2] == v3)
            {
              goto LABEL_15;
            }
          }

          else if (!v3)
          {
LABEL_15:
            v5 = v8;
            goto LABEL_16;
          }

          v7 = (v7 + 1);
        }

        while (v5 != v7);
        v9 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
        v5 = v9;
      }

      while (v9);
    }

LABEL_16:

    [*(a1 + 120) removeObject:{v5, v15}];
    if (v5 && v5[3])
    {
      objc_opt_self();
      if (qword_100229410 != -1)
      {
        dispatch_once(&qword_100229410, &stru_1001FCD98);
      }

      v10 = qword_100229408;
      v11 = *(a1 + 24);
      v12 = v5[3];
      v13 = v11;
      sub_100159FB0(v10, v13, v12);

      objc_opt_self();
      if (qword_100229410 != -1)
      {
        dispatch_once(&qword_100229410, &stru_1001FCD98);
      }

      v14 = qword_100229408;
      sub_10015A52C(v14);
    }
  }
}

void sub_10011AFC0(uint64_t a1, void *a2, BOOL a3)
{
  v9 = a2;
  if (a1)
  {
    v6 = objc_alloc_init(NRASMFlow);
    v7 = v6;
    if (v6)
    {
      objc_storeStrong(&v6->_client, a2);
      v7->_incoming = a3;
      v8 = sub_1001190A4(v9);
      objc_storeStrong(&v7->_deviceIdentifier, v8);
    }

    else
    {
      v8 = sub_1001190A4(v9);
    }

    [*(a1 + 120) addObject:v7];
  }
}

id sub_10011B080(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  if (!a1[6])
  {
    v21 = sub_100119370();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v23 = sub_100119370();
      _NRLogWithArgs();
    }

    return 0;
  }

  v2 = a1[3];
  if (!v2)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v3 = a1[6];
      v4 = nw_agent_client_copy_browse_descriptor();
      v5 = v4;
      if (!v4)
      {
        goto LABEL_25;
      }

      application_service_name = nw_browse_descriptor_get_application_service_name(v4);
      if (!application_service_name)
      {
        goto LABEL_25;
      }

      goto LABEL_7;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = a1[6];
      v10 = nw_agent_client_copy_endpoint();
      v5 = v10;
      if (!v10)
      {
        goto LABEL_25;
      }

      if (nw_endpoint_get_type(v10) != (nw_endpoint_type_url|nw_endpoint_type_host))
      {
        if (nw_endpoint_get_type(v5) == nw_endpoint_type_address)
        {
          v13 = a1[5];
          if (v13)
          {
            *uu = 0;
            v25 = 0;
            [v13 getUUIDBytes:uu];
            if (!uuid_is_null(uu))
            {
              v14 = nw_path_copy_path_for_client();
              v15 = nw_path_copy_endpoint();
              v16 = v15;
              if (v15)
              {
                if (nw_endpoint_get_type(v15) == (nw_endpoint_type_url|nw_endpoint_type_host))
                {
                  v17 = nw_endpoint_get_application_service_name();
                  if (v17)
                  {
                    v18 = [NSString stringWithUTF8String:v17];
                    v19 = a1[3];
                    a1[3] = v18;
                  }
                }
              }
            }
          }
        }

        goto LABEL_25;
      }

      application_service_name = nw_endpoint_get_application_service_name();
      if (!application_service_name)
      {
LABEL_25:

        goto LABEL_26;
      }
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
LABEL_26:
        v2 = a1[3];
        goto LABEL_27;
      }

      v11 = a1[6];
      v12 = nw_agent_client_copy_advertise_descriptor();
      v5 = v12;
      if (!v12)
      {
        goto LABEL_25;
      }

      application_service_name = nw_advertise_descriptor_get_application_service_name(v12);
      if (!application_service_name)
      {
        goto LABEL_25;
      }
    }

LABEL_7:
    v7 = [NSString stringWithUTF8String:application_service_name];
    v8 = a1[3];
    a1[3] = v7;

    goto LABEL_25;
  }

LABEL_27:

  return v2;
}

id sub_10011B2EC(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = a1[6];
  if (v4)
  {
    v5 = *(v4 + 64);
  }

  else
  {
    v5 = 0;
  }

  return [v2 didStopAdvertiseRequestForASName:v3 endpoint:v5 asClient:v2];
}

id *sub_10011B31C(void *a1, void *a2)
{
  v4 = a2;
  if (!a1)
  {
LABEL_35:
    v35 = 0;
    goto LABEL_31;
  }

  v49.receiver = a1;
  v49.super_class = NRASMRequest;
  v5 = objc_msgSendSuper2(&v49, "init");
  if (!v5)
  {
    v37 = sub_100119370();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v39 = sub_100119370();
      _NRLogWithArgs();
    }

    _os_log_pack_size();
    v40 = *__error();
    v41 = _os_log_pack_fill();
    *v41 = 136446210;
    *(v41 + 4) = "[NRASMRequest initWithClient:]";
    sub_100119370();
    _NRLogAbortWithPack();
    goto LABEL_35;
  }

  v6 = v5;
  objc_storeStrong(v5 + 6, a2);
  v7 = nw_agent_client_copy_path();
  v52[0] = 0;
  v52[1] = 0;
  nw_path_get_client_id();
  v8 = [[NSUUID alloc] initWithUUIDBytes:v52];
  v9 = v6[4];
  v6[4] = v8;

  v10 = nw_agent_client_copy_parameters();
  pid = nw_parameters_get_pid();
  *(v6 + 2) = pid;
  v12 = sub_10013CB6C(pid, 0);
  account_id = nw_parameters_get_account_id();
  v14 = objc_alloc_init(NRASMRequestMetadata);
  v15 = v6[7];
  v6[7] = v14;

  v51[0] = 0;
  v51[1] = 0;
  nw_parameters_get_parent_id();
  v16 = [[NSUUID alloc] initWithUUIDBytes:v51];
  v17 = v6[5];
  v6[5] = v16;

  v18 = &dispatch_group_enter_ptr;
  if (!account_id)
  {
    goto LABEL_30;
  }

  if (!strcmp(account_id, "com.apple.network.local-asquic"))
  {
    v32 = v6[7];
    if (v32)
    {
      v32[8] = 1;
    }

    goto LABEL_30;
  }

  v19 = [NSString stringWithUTF8String:account_id];
  if (![v19 hasPrefix:@"com.apple.networkrelay.encoded"])
  {
    goto LABEL_27;
  }

  v43 = v12;
  v44 = v4;
  v20 = [v19 stringByReplacingOccurrencesOfString:@"com.apple.networkrelay.encoded" withString:&stru_1001FDE68];

  v42 = v20;
  v21 = [v20 componentsSeparatedByString:@"."];
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v22 = [v21 countByEnumeratingWithState:&v45 objects:v50 count:16];
  if (!v22)
  {
    goto LABEL_26;
  }

  v23 = v22;
  v24 = *v46;
  do
  {
    for (i = 0; i != v23; i = i + 1)
    {
      if (*v46 != v24)
      {
        objc_enumerationMutation(v21);
      }

      v26 = *(*(&v45 + 1) + 8 * i);
      if ([v26 isEqualToString:@"c"])
      {
        v27 = v6[7];
        if (!v27)
        {
          continue;
        }

        v28 = v27 + 9;
        goto LABEL_23;
      }

      if ([v26 isEqualToString:@"q"])
      {
        v29 = v6[7];
        if (!v29)
        {
          continue;
        }

        v28 = v29 + 10;
        goto LABEL_23;
      }

      if ([v26 isEqualToString:@"r"])
      {
        v30 = v6[7];
        if (!v30)
        {
          continue;
        }

        v28 = v30 + 11;
        goto LABEL_23;
      }

      if ([v26 isEqualToString:@"l"])
      {
        v31 = v6[7];
        if (v31)
        {
          v28 = v31 + 8;
LABEL_23:
          *v28 = 1;
          continue;
        }
      }
    }

    v23 = [v21 countByEnumeratingWithState:&v45 objects:v50 count:16];
  }

  while (v23);
LABEL_26:

  v19 = v42;
  v12 = v43;
  v4 = v44;
  v18 = &dispatch_group_enter_ptr;
LABEL_27:

LABEL_30:
  v33 = [objc_alloc(v18[469]) initWithFormat:@"%@ (c: %@, p: %@)", v12, v6[4], v6[5]];
  v34 = v6[2];
  v6[2] = v33;

  v35 = v6;
LABEL_31:

  return v35;
}

void sub_10011B75C(id *a1)
{
  if (a1)
  {
    v1 = a1;
    v24 = objc_alloc_init(NSMutableArray);
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    obj = v1[8];
    v2 = [obj countByEnumeratingWithState:&v38 objects:v44 count:16];
    if (v2)
    {
      v3 = v2;
      v4 = *v39;
      v22 = *v39;
      v23 = v1;
      do
      {
        v5 = 0;
        v25 = v3;
        do
        {
          if (*v39 != v4)
          {
            objc_enumerationMutation(obj);
          }

          v6 = *(*(&v38 + 1) + 8 * v5);
          v7 = [v1[4] objectForKeyedSubscript:v6];
          if (v7)
          {
            v8 = [v1[8] objectForKeyedSubscript:v6];
            if (v8)
            {
              v9 = nw_array_create();
              v28 = v8;
              nw_array_append();
              v27 = v9;
              (*(v7[9] + 16))();
              v36 = 0u;
              v37 = 0u;
              v34 = 0u;
              v35 = 0u;
              v10 = v1[7];
              v11 = [v10 countByEnumeratingWithState:&v34 objects:v43 count:16];
              if (v11)
              {
                v12 = v11;
                v13 = *v35;
                do
                {
                  for (i = 0; i != v12; i = i + 1)
                  {
                    if (*v35 != v13)
                    {
                      objc_enumerationMutation(v10);
                    }

                    v15 = *(*(&v34 + 1) + 8 * i);
                    if (v15)
                    {
                      v16 = *(v15 + 72);
                    }

                    else
                    {
                      v16 = 0;
                    }

                    block[0] = _NSConcreteStackBlock;
                    block[1] = 3221225472;
                    block[2] = sub_10011BAB8;
                    block[3] = &unk_1001FD060;
                    block[4] = v15;
                    block[5] = v6;
                    dispatch_async(v16, block);
                  }

                  v12 = [v10 countByEnumeratingWithState:&v34 objects:v43 count:16];
                }

                while (v12);
              }

              [v24 addObject:v6];
              v4 = v22;
              v1 = v23;
              v3 = v25;
              v8 = v28;
            }
          }

          else
          {
            notify_post([v6 UTF8String]);
          }

          v5 = v5 + 1;
        }

        while (v5 != v3);
        v3 = [obj countByEnumeratingWithState:&v38 objects:v44 count:16];
      }

      while (v3);
    }

    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v17 = v24;
    v18 = [v17 countByEnumeratingWithState:&v29 objects:v42 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v30;
      do
      {
        for (j = 0; j != v19; j = j + 1)
        {
          if (*v30 != v20)
          {
            objc_enumerationMutation(v17);
          }

          [v1[8] setObject:0 forKeyedSubscript:*(*(&v29 + 1) + 8 * j)];
        }

        v19 = [v17 countByEnumeratingWithState:&v29 objects:v42 count:16];
      }

      while (v19);
    }
  }
}

void sub_10011BAC4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = sub_10011B31C([NRASMBrowseRequest alloc], v5);
  v9 = v7;
  if (v7)
  {
    objc_setProperty_nonatomic_copy(v7, v8, v6, 64);
    v10 = sub_10011B080(v9);
    v11 = qword_1002291B0;
    if (v10)
    {
      v12 = v10;
      if (qword_1002291B0 != -1)
      {
        dispatch_once(&qword_1002291B0, &stru_1001FBE70);
      }

      if (_NRLogIsLevelEnabled())
      {
        if (qword_1002291B0 != -1)
        {
          dispatch_once(&qword_1002291B0, &stru_1001FBE70);
        }

        v13 = qword_1002291A8;
        v14 = v9[2];
        v15 = v9[7];
        v16 = v13;
        v35 = v14;
        v36 = v15;
        v33 = v12;
        v34 = v5;
        v31 = "[NRApplicationServiceManager setupResolverAgent]_block_invoke";
        v32 = 633;
        v30 = "";
        _NRLogWithArgs();
      }

      v17 = *(a1 + 32);
      if (v17)
      {
        v18 = *(v17 + 40);
      }

      else
      {
        v18 = 0;
      }

      v19 = [v18 objectForKeyedSubscript:{v12, v30, v31, v32, v33, v34, v35, v36}];
      if (!v19)
      {
        v19 = objc_alloc_init(NSMutableArray);
      }

      [v19 addObject:v9];
      v20 = *(a1 + 32);
      if (v20)
      {
        v21 = *(v20 + 40);
      }

      else
      {
        v21 = 0;
      }

      [v21 setObject:v19 forKeyedSubscript:v12];
      v44 = 0u;
      v45 = 0u;
      v42 = 0u;
      v43 = 0u;
      v22 = *(a1 + 32);
      v38 = v6;
      v39 = v5;
      v37 = v9;
      if (v22)
      {
        v22 = v22[7];
      }

      v23 = v22;
      v24 = [v23 countByEnumeratingWithState:&v42 objects:v46 count:16];
      if (v24)
      {
        v25 = v24;
        v26 = *v43;
        do
        {
          for (i = 0; i != v25; i = i + 1)
          {
            if (*v43 != v26)
            {
              objc_enumerationMutation(v23);
            }

            v28 = *(*(&v42 + 1) + 8 * i);
            if (v28)
            {
              v29 = *(v28 + 72);
            }

            else
            {
              v29 = 0;
            }

            block[0] = _NSConcreteStackBlock;
            block[1] = 3221225472;
            block[2] = sub_10011D76C;
            block[3] = &unk_1001FD060;
            block[4] = v28;
            v41 = v12;
            dispatch_async(v29, block);
          }

          v25 = [v23 countByEnumeratingWithState:&v42 objects:v46 count:16];
        }

        while (v25);
      }

      v6 = v38;
      v5 = v39;
      v9 = v37;
      goto LABEL_37;
    }
  }

  else
  {
    v11 = qword_1002291B0;
  }

  if (v11 != -1)
  {
    dispatch_once(&qword_1002291B0, &stru_1001FBE70);
  }

  if (_NRLogIsLevelEnabled())
  {
    if (qword_1002291B0 != -1)
    {
      dispatch_once(&qword_1002291B0, &stru_1001FBE70);
    }

    _NRLogWithArgs();
  }

  v12 = 0;
LABEL_37:
}

void sub_10011BE74(uint64_t a1, void *a2)
{
  v3 = a2;
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v44 = a1;
  v4 = *(a1 + 32);
  if (v4)
  {
    v4 = v4[5];
  }

  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v55 objects:v61 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v56;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v56 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(v44 + 32);
        if (v11)
        {
          v12 = *(v11 + 40);
        }

        else
        {
          v12 = 0;
        }

        v13 = [v12 objectForKeyedSubscript:*(*(&v55 + 1) + 8 * i)];
        v51 = 0u;
        v52 = 0u;
        v53 = 0u;
        v54 = 0u;
        v14 = v13;
        v15 = [v14 countByEnumeratingWithState:&v51 objects:v60 count:16];
        if (v15)
        {
          v16 = v15;
          v17 = *v52;
          while (2)
          {
            v18 = 0;
            do
            {
              if (*v52 != v17)
              {
                objc_enumerationMutation(v14);
              }

              v19 = *(*(&v51 + 1) + 8 * v18);
              if (v19)
              {
                if (v19[6] == v3)
                {
                  goto LABEL_7;
                }
              }

              else if (!v3)
              {
LABEL_7:
                v10 = v19;

                if (!v19)
                {
                  goto LABEL_8;
                }

                v21 = sub_10011B080(v10);
                if (v21)
                {
                  if (qword_1002291B0 != -1)
                  {
                    dispatch_once(&qword_1002291B0, &stru_1001FBE70);
                  }

                  if (_NRLogIsLevelEnabled())
                  {
                    if (qword_1002291B0 != -1)
                    {
                      dispatch_once(&qword_1002291B0, &stru_1001FBE70);
                    }

                    v22 = v10[2];
                    v23 = qword_1002291A8;
                    v41 = v3;
                    v42 = v22;
                    v39 = 672;
                    v40 = v21;
                    v37 = "";
                    v38 = "[NRApplicationServiceManager setupResolverAgent]_block_invoke_3";
                    _NRLogWithArgs();
                  }

                  v24 = *(v44 + 32);
                  if (v24)
                  {
                    v25 = *(v24 + 40);
                  }

                  else
                  {
                    v25 = 0;
                  }

                  v26 = [v25 objectForKeyedSubscript:{v21, v37, v38, v39, v40, v41, v42}];
                  [v26 removeObject:v10];
                  if (![v26 count])
                  {
                    v27 = *(v44 + 32);
                    if (v27)
                    {
                      v28 = *(v27 + 40);
                    }

                    else
                    {
                      v28 = 0;
                    }

                    [v28 setObject:0 forKeyedSubscript:v21];
                    v49 = 0u;
                    v50 = 0u;
                    v47 = 0u;
                    v48 = 0u;
                    v29 = *(v44 + 32);
                    v43 = v26;
                    if (v29)
                    {
                      v29 = v29[7];
                    }

                    v30 = v29;
                    v31 = [v30 countByEnumeratingWithState:&v47 objects:v59 count:16];
                    if (v31)
                    {
                      v32 = v31;
                      v33 = *v48;
                      do
                      {
                        for (j = 0; j != v32; j = j + 1)
                        {
                          if (*v48 != v33)
                          {
                            objc_enumerationMutation(v30);
                          }

                          v35 = *(*(&v47 + 1) + 8 * j);
                          if (v35)
                          {
                            v36 = *(v35 + 72);
                          }

                          else
                          {
                            v36 = 0;
                          }

                          block[0] = _NSConcreteStackBlock;
                          block[1] = 3221225472;
                          block[2] = sub_10011D760;
                          block[3] = &unk_1001FD060;
                          block[4] = v35;
                          v46 = v21;
                          dispatch_async(v36, block);
                        }

                        v32 = [v30 countByEnumeratingWithState:&v47 objects:v59 count:16];
                      }

                      while (v32);
                    }

                    v26 = v43;
                  }
                }

                else
                {
                  if (qword_1002291B0 != -1)
                  {
                    dispatch_once(&qword_1002291B0, &stru_1001FBE70);
                  }

                  if (_NRLogIsLevelEnabled())
                  {
                    if (qword_1002291B0 != -1)
                    {
                      dispatch_once(&qword_1002291B0, &stru_1001FBE70);
                    }

                    _NRLogWithArgs();
                  }
                }

                goto LABEL_67;
              }

              v18 = v18 + 1;
            }

            while (v16 != v18);
            v20 = [v14 countByEnumeratingWithState:&v51 objects:v60 count:16];
            v16 = v20;
            if (v20)
            {
              continue;
            }

            break;
          }
        }

LABEL_8:
        ;
      }

      v7 = [v5 countByEnumeratingWithState:&v55 objects:v61 count:16];
    }

    while (v7);
  }

  if (qword_1002291B0 != -1)
  {
    dispatch_once(&qword_1002291B0, &stru_1001FBE70);
  }

  if (_NRLogIsLevelEnabled())
  {
    if (qword_1002291B0 != -1)
    {
      dispatch_once(&qword_1002291B0, &stru_1001FBE70);
    }

    _NRLogWithArgs();
  }

LABEL_67:
}

void sub_10011C3D4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = sub_10011B31C([NRASMResolveRequest alloc], v5);
  v9 = v7;
  v55 = v6;
  if (!v7)
  {
    sub_1001190A4(v5);

    v12 = qword_1002291B0;
    goto LABEL_57;
  }

  objc_setProperty_nonatomic_copy(v7, v8, v6, 72);
  v10 = sub_1001190A4(v5);
  objc_storeStrong(v9 + 10, v10);

  v11 = sub_10011B080(v9);
  v12 = qword_1002291B0;
  if (!v11)
  {
LABEL_57:
    if (v12 != -1)
    {
      dispatch_once(&qword_1002291B0, &stru_1001FBE70);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_1002291B0 != -1)
      {
        dispatch_once(&qword_1002291B0, &stru_1001FBE70);
      }

      _NRLogWithArgs();
    }

    v13 = 0;
    goto LABEL_64;
  }

  v13 = v11;
  if (qword_1002291B0 != -1)
  {
    dispatch_once(&qword_1002291B0, &stru_1001FBE70);
  }

  if (_NRLogIsLevelEnabled())
  {
    if (qword_1002291B0 != -1)
    {
      dispatch_once(&qword_1002291B0, &stru_1001FBE70);
    }

    v14 = qword_1002291A8;
    v15 = v9[2];
    v16 = v9[7];
    v17 = v14;
    v50 = v15;
    v51 = v16;
    v48 = v13;
    v49 = v5;
    v46 = "[NRApplicationServiceManager setupResolverAgent]_block_invoke_5";
    v47 = 700;
    v45 = "";
    _NRLogWithArgs();
  }

  v18 = *(a1 + 32);
  if (v18)
  {
    v19 = *(v18 + 48);
  }

  else
  {
    v19 = 0;
  }

  v20 = [v19 objectForKeyedSubscript:{v13, v45, v46, v47, v48, v49, v50, v51}];
  if (!v20)
  {
    v20 = objc_alloc_init(NSMutableArray);
  }

  v53 = v20;
  v54 = v5;
  if ([v20 count])
  {
    v52 = a1;
    v64 = 0u;
    v65 = 0u;
    v62 = 0u;
    v63 = 0u;
    v21 = v20;
    v22 = [v21 countByEnumeratingWithState:&v62 objects:v67 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v63;
LABEL_17:
      v25 = 0;
      while (1)
      {
        if (*v63 != v24)
        {
          objc_enumerationMutation(v21);
        }

        v26 = *(*(&v62 + 1) + 8 * v25);
        if (v26)
        {
          if (v26[64])
          {
            goto LABEL_18;
          }

          v27 = sub_10011D6D4(v26);
        }

        else
        {
          v27 = 0;
        }

        v28 = sub_10011D6D4(v9);
        v29 = [v27 isEqualToString:v28];

        if (v29)
        {

          [v21 addObject:v9];
          v33 = *(v52 + 32);
          if (v33)
          {
            v34 = *(v33 + 48);
          }

          else
          {
            v34 = 0;
          }

          v35 = v53;
          [v34 setObject:v21 forKeyedSubscript:v13];
          if (qword_1002291B0 != -1)
          {
            dispatch_once(&qword_1002291B0, &stru_1001FBE70);
          }

          if (_NRLogIsLevelEnabled())
          {
            if (qword_1002291B0 != -1)
            {
              dispatch_once(&qword_1002291B0, &stru_1001FBE70);
            }

            _NRLogWithArgs();
          }

          goto LABEL_55;
        }

LABEL_18:
        if (v23 == ++v25)
        {
          v23 = [v21 countByEnumeratingWithState:&v62 objects:v67 count:16];
          if (!v23)
          {
            break;
          }

          goto LABEL_17;
        }
      }
    }

    [v21 addObject:v9];
    a1 = v52;
    v36 = *(v52 + 32);
    if (v36)
    {
      v31 = *(v36 + 48);
    }

    else
    {
      v31 = 0;
    }

    v32 = v21;
  }

  else
  {
    [v20 addObject:v9];
    v30 = *(a1 + 32);
    if (v30)
    {
      v31 = *(v30 + 48);
    }

    else
    {
      v31 = 0;
    }

    v32 = v20;
  }

  [v31 setObject:v32 forKeyedSubscript:v13];
  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v37 = *(a1 + 32);
  if (v37)
  {
    v37 = v37[7];
  }

  v38 = v37;
  v39 = [v38 countByEnumeratingWithState:&v58 objects:v66 count:16];
  if (v39)
  {
    v40 = v39;
    v41 = *v59;
    do
    {
      for (i = 0; i != v40; i = i + 1)
      {
        if (*v59 != v41)
        {
          objc_enumerationMutation(v38);
        }

        v43 = *(*(&v58 + 1) + 8 * i);
        if (v43)
        {
          v44 = *(v43 + 72);
        }

        else
        {
          v44 = 0;
        }

        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_10011D754;
        block[3] = &unk_1001FD060;
        block[4] = v43;
        v57 = v13;
        dispatch_async(v44, block);
      }

      v40 = [v38 countByEnumeratingWithState:&v58 objects:v66 count:16];
    }

    while (v40);
  }

  v35 = v53;
  v5 = v54;
LABEL_55:

LABEL_64:
}

void sub_10011C9A8(uint64_t a1, void *a2)
{
  v3 = a2;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v4 = *(a1 + 32);
  if (v4)
  {
    v4 = v4[6];
  }

  obj = v4;
  v5 = [obj countByEnumeratingWithState:&v37 objects:v42 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v38;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v38 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(a1 + 32);
        if (v10)
        {
          v11 = *(v10 + 48);
        }

        else
        {
          v11 = 0;
        }

        v12 = [v11 objectForKeyedSubscript:*(*(&v37 + 1) + 8 * i)];
        v33 = 0u;
        v34 = 0u;
        v35 = 0u;
        v36 = 0u;
        v13 = v12;
        v14 = [v13 countByEnumeratingWithState:&v33 objects:v41 count:16];
        if (v14)
        {
          v15 = v14;
          v16 = *v34;
          while (2)
          {
            v17 = 0;
            do
            {
              if (*v34 != v16)
              {
                objc_enumerationMutation(v13);
              }

              v18 = *(*(&v33 + 1) + 8 * v17);
              if (v18)
              {
                if (v18[6] == v3)
                {
                  goto LABEL_7;
                }
              }

              else if (!v3)
              {
LABEL_7:
                v9 = v18;

                if (!v18)
                {
                  goto LABEL_8;
                }

                v20 = sub_10011B080(v9);
                if (v20)
                {
                  if (qword_1002291B0 != -1)
                  {
                    dispatch_once(&qword_1002291B0, &stru_1001FBE70);
                  }

                  if (_NRLogIsLevelEnabled())
                  {
                    if (qword_1002291B0 != -1)
                    {
                      dispatch_once(&qword_1002291B0, &stru_1001FBE70);
                    }

                    v21 = v9[2];
                    v22 = qword_1002291A8;
                    v30 = v3;
                    v31 = v21;
                    v28 = 754;
                    v29 = v20;
                    v26 = "";
                    v27 = "[NRApplicationServiceManager setupResolverAgent]_block_invoke_7";
                    _NRLogWithArgs();
                  }

                  v23 = *(a1 + 32);
                  if (v23)
                  {
                    v24 = *(v23 + 48);
                  }

                  else
                  {
                    v24 = 0;
                  }

                  v25 = [v24 objectForKeyedSubscript:{v20, v26, v27, v28, v29, v30, v31}];
                  [v25 removeObject:v9];
                  sub_10011D508(*(a1 + 32), v20);
                }

                else
                {
                  if (qword_1002291B0 != -1)
                  {
                    dispatch_once(&qword_1002291B0, &stru_1001FBE70);
                  }

                  if (_NRLogIsLevelEnabled())
                  {
                    if (qword_1002291B0 != -1)
                    {
                      dispatch_once(&qword_1002291B0, &stru_1001FBE70);
                    }

                    _NRLogWithArgs();
                  }
                }

                goto LABEL_50;
              }

              v17 = v17 + 1;
            }

            while (v15 != v17);
            v19 = [v13 countByEnumeratingWithState:&v33 objects:v41 count:16];
            v15 = v19;
            if (v19)
            {
              continue;
            }

            break;
          }
        }

LABEL_8:
        ;
      }

      v6 = [obj countByEnumeratingWithState:&v37 objects:v42 count:16];
    }

    while (v6);
  }

  if (qword_1002291B0 != -1)
  {
    dispatch_once(&qword_1002291B0, &stru_1001FBE70);
  }

  if (_NRLogIsLevelEnabled())
  {
    if (qword_1002291B0 != -1)
    {
      dispatch_once(&qword_1002291B0, &stru_1001FBE70);
    }

    _NRLogWithArgs();
  }

LABEL_50:
}

void sub_10011CDC0(uint64_t a1, void *a2)
{
  v21 = a2;
  v3 = sub_10011B31C([NRASMResolveRequest alloc], v21);
  v4 = sub_10011B080(v3);
  if (v4)
  {
    if (qword_1002291B0 != -1)
    {
      dispatch_once(&qword_1002291B0, &stru_1001FBE70);
    }

    if (!_NRLogIsLevelEnabled())
    {
      goto LABEL_9;
    }

    if (qword_1002291B0 == -1)
    {
      v5 = qword_1002291A8;
      if (v3)
      {
LABEL_7:
        v6 = v3[2];
        v7 = v3[7];
LABEL_8:
        v8 = v5;
        v19 = v6;
        v20 = v7;
        v17 = v4;
        v18 = v21;
        v15 = "[NRApplicationServiceManager setupResolverAgent]_block_invoke_8";
        v16 = 781;
        v14 = "";
        _NRLogWithArgs();

LABEL_9:
        if (v3)
        {
          *(v3 + 65) = 1;
          *(v3 + 64) = 1;
        }

        v9 = *(a1 + 32);
        if (v9)
        {
          v10 = *(v9 + 48);
        }

        else
        {
          v10 = 0;
        }

        v11 = [v10 objectForKeyedSubscript:{v4, v14, v15, v16, v17, v18, v19, v20}];
        if ([v11 count])
        {
          [v11 addObject:v3];
          v12 = *(a1 + 32);
          if (v12)
          {
            v13 = *(v12 + 48);
          }

          else
          {
            v13 = 0;
          }

          [v13 setObject:v11 forKeyedSubscript:v4];
        }

        else
        {
          if (qword_1002291B0 != -1)
          {
            dispatch_once(&qword_1002291B0, &stru_1001FBE70);
          }

          if (_NRLogIsLevelEnabled())
          {
            if (qword_1002291B0 != -1)
            {
              dispatch_once(&qword_1002291B0, &stru_1001FBE70);
            }

            _NRLogWithArgs();
          }
        }

        sub_10011AFC0(*(a1 + 32), v21, 0);

        goto LABEL_30;
      }
    }

    else
    {
      dispatch_once(&qword_1002291B0, &stru_1001FBE70);
      v5 = qword_1002291A8;
      if (v3)
      {
        goto LABEL_7;
      }
    }

    v6 = 0;
    v7 = 0;
    goto LABEL_8;
  }

  if (qword_1002291B0 != -1)
  {
    dispatch_once(&qword_1002291B0, &stru_1001FBE70);
  }

  if (_NRLogIsLevelEnabled())
  {
    if (qword_1002291B0 != -1)
    {
      dispatch_once(&qword_1002291B0, &stru_1001FBE70);
    }

    _NRLogWithArgs();
  }

LABEL_30:
}

void sub_10011D0BC(uint64_t a1, void *a2)
{
  v3 = a2;
  sub_10011ADBC(*(a1 + 32), v3);
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v4 = *(a1 + 32);
  if (v4)
  {
    v4 = v4[6];
  }

  obj = v4;
  v5 = [obj countByEnumeratingWithState:&v40 objects:v45 count:16];
  if (!v5)
  {
LABEL_38:

    v9 = 0;
    goto LABEL_39;
  }

  v6 = v5;
  v7 = *v41;
LABEL_6:
  v8 = 0;
  while (1)
  {
    if (*v41 != v7)
    {
      objc_enumerationMutation(obj);
    }

    v10 = *(a1 + 32);
    v11 = v10 ? *(v10 + 48) : 0;
    v12 = [v11 objectForKeyedSubscript:*(*(&v40 + 1) + 8 * v8)];
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v13 = v12;
    v14 = [v13 countByEnumeratingWithState:&v36 objects:v44 count:16];
    if (v14)
    {
      break;
    }

LABEL_25:

LABEL_8:
    if (++v8 == v6)
    {
      v6 = [obj countByEnumeratingWithState:&v40 objects:v45 count:16];
      if (!v6)
      {
        goto LABEL_38;
      }

      goto LABEL_6;
    }
  }

  v15 = v14;
  v16 = *v37;
LABEL_15:
  v17 = 0;
  while (1)
  {
    if (*v37 != v16)
    {
      objc_enumerationMutation(v13);
    }

    v18 = *(*(&v36 + 1) + 8 * v17);
    if (!v18)
    {
      break;
    }

    if (v18[6] == v3)
    {
      goto LABEL_7;
    }

LABEL_20:
    if (v15 == ++v17)
    {
      v19 = [v13 countByEnumeratingWithState:&v36 objects:v44 count:16];
      v15 = v19;
      if (v19)
      {
        goto LABEL_15;
      }

      goto LABEL_25;
    }
  }

  if (v3)
  {
    goto LABEL_20;
  }

LABEL_7:
  v9 = v18;

  if (!v18)
  {
    goto LABEL_8;
  }

  if (*(v9 + 65))
  {
    v20 = sub_10011B080(v9);
    if (v20)
    {
      if (qword_1002291B0 != -1)
      {
        dispatch_once(&qword_1002291B0, &stru_1001FBE70);
      }

      if (_NRLogIsLevelEnabled())
      {
        if (qword_1002291B0 != -1)
        {
          dispatch_once(&qword_1002291B0, &stru_1001FBE70);
        }

        v21 = qword_1002291A8;
        v22 = v9[7];
        v23 = v9[2];
        v24 = v21;
        v33 = v23;
        v34 = v22;
        v31 = v20;
        v32 = v3;
        v29 = "[NRApplicationServiceManager setupResolverAgent]_block_invoke_9";
        v30 = 826;
        v28 = "";
        _NRLogWithArgs();
      }

      v25 = *(a1 + 32);
      if (v25)
      {
        v26 = *(v25 + 48);
      }

      else
      {
        v26 = 0;
      }

      v27 = [v26 objectForKeyedSubscript:{v20, v28, v29, v30, v31, v32, v33, v34}];
      [v27 removeObject:v9];
      sub_10011D508(*(a1 + 32), v20);
    }

    else
    {
      if (qword_1002291B0 != -1)
      {
        dispatch_once(&qword_1002291B0, &stru_1001FBE70);
      }

      if (_NRLogIsLevelEnabled())
      {
        if (qword_1002291B0 != -1)
        {
          dispatch_once(&qword_1002291B0, &stru_1001FBE70);
        }

        _NRLogWithArgs();
      }
    }

    goto LABEL_52;
  }

LABEL_39:
  if (qword_1002291B0 != -1)
  {
    dispatch_once(&qword_1002291B0, &stru_1001FBE70);
  }

  if (_NRLogIsLevelEnabled())
  {
    if (qword_1002291B0 != -1)
    {
      dispatch_once(&qword_1002291B0, &stru_1001FBE70);
    }

    _NRLogWithArgs();
  }

LABEL_52:
}

void sub_10011D508(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v4 = [*(a1 + 48) objectForKeyedSubscript:v3];
    if (![v4 count])
    {
      [*(a1 + 48) setObject:0 forKeyedSubscript:v3];
      v16 = 0u;
      v17 = 0u;
      v14 = 0u;
      v15 = 0u;
      v5 = *(a1 + 56);
      v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v6)
      {
        v7 = v6;
        v8 = *v15;
        do
        {
          v9 = 0;
          do
          {
            if (*v15 != v8)
            {
              objc_enumerationMutation(v5);
            }

            v10 = *(*(&v14 + 1) + 8 * v9);
            if (v10)
            {
              v11 = *(v10 + 72);
            }

            else
            {
              v11 = 0;
            }

            v12[0] = _NSConcreteStackBlock;
            v12[1] = 3221225472;
            v12[2] = sub_10011D6C8;
            v12[3] = &unk_1001FD060;
            v12[4] = v10;
            v13 = v3;
            dispatch_async(v11, v12);

            v9 = v9 + 1;
          }

          while (v7 != v9);
          v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
        }

        while (v7);
      }
    }
  }
}

id sub_10011D6D4(id a1)
{
  if (a1)
  {
    v2 = *(a1 + 10);
    if (!v2)
    {
      v3 = a1;
      v4 = *(a1 + 6);
      v5 = sub_1001190A4(v4);
      v6 = v3[10];
      v3[10] = v5;

      v2 = v3[10];
    }

    a1 = v2;
    v1 = vars8;
  }

  return a1;
}

void sub_10011DE24(uint64_t a1)
{
  if (!a1)
  {
    return;
  }

  v1 = a1;
  if (*(a1 + 9))
  {
    return;
  }

  v2 = *(a1 + 64);
  v3 = &qword_100229000;
  v4 = &qword_100229000;
  if (!v2)
  {
    goto LABEL_62;
  }

  v5 = *(v1 + 10);

  if (v5)
  {
    goto LABEL_62;
  }

  objc_opt_self();
  if (qword_1002291A0 != -1)
  {
    dispatch_once(&qword_1002291A0, &stru_1001FBD88);
  }

  v6 = *(v1 + 64);
  v7 = qword_100229198;
  v8 = v6;
  v55 = v7;
  if (!v7)
  {
    goto LABEL_61;
  }

  v54 = v8;
  if (!v8)
  {
    v44 = sub_100119370();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    v8 = 0;
    if (IsLevelEnabled)
    {
      v46 = sub_100119370();
      _NRLogWithArgs();

      v8 = 0;
    }

    goto LABEL_61;
  }

  v53 = [NEPolicyResult dropWithFlags:4];
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  obj = v7[15];
  v9 = [obj countByEnumeratingWithState:&v60 objects:v64 count:16];
  if (!v9)
  {
    v35 = obj;
    goto LABEL_59;
  }

  v51 = v1;
  v10 = 0;
  v11 = *v61;
  v12 = v54;
  v13 = obj;
  v14 = v9;
  v57 = *v61;
  while (2)
  {
    v15 = 0;
    v56 = v14;
    do
    {
      if (*v61 != v11)
      {
        objc_enumerationMutation(v13);
      }

      v16 = *(*(&v60 + 1) + 8 * v15);
      v17 = sub_10011903C(v16);
      v18 = [v17 isEqualToString:v12];

      if (v18)
      {
        if (v16)
        {
          v19 = *(v16 + 16);
        }

        v20 = nw_agent_client_copy_endpoint();
        if (v20)
        {
          v21 = [NWAddressEndpoint endpointWithCEndpoint:v20];
          v22 = [v21 addressFamily];
          v23 = objc_alloc_init(NSMutableArray);
          v24 = +[NEPolicyCondition allInterfaces];
          [v23 addObject:v24];

          if (v22 == 30)
          {
            v25 = 128;
          }

          else
          {
            v25 = 32;
          }

          v58 = [NEPolicyCondition flowRemoteAddress:v21 prefix:v25, v47, v48, v49, v50];
          [v23 addObject:?];
          if (v16)
          {
            v26 = *(v16 + 16);
          }

          v27 = nw_agent_client_copy_parameters();
          pid = nw_parameters_get_pid();
          if (pid)
          {
            v29 = [NEPolicyCondition effectivePID:pid];
            [v23 addObject:v29];
          }

          v30 = [[NEPolicy alloc] initWithOrder:1 result:v53 conditions:v23];
          if (v16)
          {
            *(v16 + 9) = 1;
          }

          objc_opt_self();
          if (qword_100229410 != -1)
          {
            dispatch_once(&qword_100229410, &stru_1001FCD98);
          }

          v31 = qword_100229408;
          v32 = v55[3];
          v33 = sub_100159E00(v31, v32, v30);
          if (v16)
          {
            objc_storeStrong((v16 + 24), v33);
          }

          v10 = 1;
          v12 = v54;
          v13 = obj;
          v14 = v56;
        }

        else
        {
          if (qword_1002291B0 != -1)
          {
            dispatch_once(&qword_1002291B0, &stru_1001FBE70);
          }

          if (!_NRLogIsLevelEnabled())
          {
            goto LABEL_16;
          }

          if (qword_1002291B0 != -1)
          {
            dispatch_once(&qword_1002291B0, &stru_1001FBE70);
          }

          if (v16)
          {
            v34 = *(v16 + 16);
          }

          else
          {
            v34 = 0;
          }

          v21 = qword_1002291A8;
          v49 = 1270;
          v50 = v34;
          v47 = "";
          v48 = "[NRApplicationServiceManager cancelAllFlowsForDeviceID:]";
          _NRLogWithArgs();
        }

        v11 = v57;
LABEL_16:
      }

      v15 = v15 + 1;
    }

    while (v14 != v15);
    v14 = [v13 countByEnumeratingWithState:&v60 objects:v64 count:16];
    if (v14)
    {
      continue;
    }

    break;
  }

  v1 = v51;
  v4 = &qword_100229000;
  v3 = &qword_100229000;
  if (v10)
  {
    if (qword_1002291B0 != -1)
    {
      dispatch_once(&qword_1002291B0, &stru_1001FBE70);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_1002291B0 != -1)
      {
        dispatch_once(&qword_1002291B0, &stru_1001FBE70);
      }

      _NRLogWithArgs();
    }

    objc_opt_self();
    if (qword_100229410 != -1)
    {
      dispatch_once(&qword_100229410, &stru_1001FCD98);
    }

    v35 = qword_100229408;
    sub_10015A52C(v35);
LABEL_59:
  }

  v8 = v54;
LABEL_61:

LABEL_62:
  *(v1 + 9) = 1;
  v36 = *(v1 + 56);
  v37 = _NRCopyLogObjectForNRUUID();
  v38 = _NRLogIsLevelEnabled();

  if (v38)
  {
    v39 = *(v1 + 56);
    v40 = _NRCopyLogObjectForNRUUID();
    _NRLogWithArgs();
  }

  objc_opt_self();
  if (v3[52] == -1)
  {
    v41 = v4[51];
    if (v41)
    {
      goto LABEL_66;
    }
  }

  else
  {
    dispatch_once(&qword_1002291A0, &stru_1001FBD88);
    v41 = v4[51];
    if (v41)
    {
LABEL_66:
      v42 = v41[2];
      v43 = v1;
      v59 = v41;
      dispatch_assert_queue_V2(v42);
      [v59[7] removeObject:v43];
    }
  }
}

void sub_10011E510(id a1)
{
  v1 = objc_alloc_init(NRApplicationServiceManager);
  v2 = qword_100229198;
  qword_100229198 = v1;

  _objc_release_x1(v1, v2);
}

uint64_t sub_10011E694(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(a1 + 8) == 1)
  {
    [*(a1 + 48) objectForKeyedSubscript:v3];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v4 = v18 = 0u;
    v5 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v5)
    {
      v6 = 0;
      v7 = 0;
      v8 = *v16;
      do
      {
        if (*v16 == v8)
        {
          v9 = *(&v15 + 1);
          do
          {
            if (*v9)
            {
              v10 = *(*v9 + 65);
              v6 |= v10 ^ 1;
              v7 |= v10;
            }

            else
            {
              v6 = 1;
            }

            v9 += 8;
            --v5;
          }

          while (v5);
        }

        else
        {
          for (i = 0; i != v5; ++i)
          {
            if (*v16 != v8)
            {
              objc_enumerationMutation(v4);
            }

            v12 = *(*(&v15 + 1) + 8 * i);
            if (v12)
            {
              v13 = *(v12 + 65);
              v6 |= v13 ^ 1;
              v7 |= v13;
            }

            else
            {
              v6 = 1;
            }
          }
        }

        v5 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v5);
      LOBYTE(v5) = v7 & (v6 ^ 1);
    }
  }

  else
  {
    LOBYTE(v5) = 1;
  }

  return v5 & 1;
}

uint64_t sub_10011E848(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  device_id = nw_endpoint_get_device_id();
  if (device_id)
  {
    v6 = device_id;
    v7 = sub_10011D6D4(*(a1 + 32));
    v8 = [NSString stringWithUTF8String:v6];
    v9 = [v7 isEqualToString:v8];

    if (v9)
    {
      v10 = *(a1 + 40);
      nw_array_append();
    }
  }

  return 1;
}

nw_endpoint_t sub_10011E8EC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (!a1)
  {
    goto LABEL_10;
  }

  if (!v3)
  {
    v10 = sub_100119370();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v6 = sub_100119370();
      _NRLogWithArgs();
      goto LABEL_7;
    }

LABEL_10:
    v9 = 0;
    goto LABEL_9;
  }

  v5 = [*(a1 + 32) objectForKeyedSubscript:v3];
  v6 = v5;
  if (!v5)
  {
LABEL_7:
    v9 = 0;
    goto LABEL_8;
  }

  v7 = *(v5 + 48);
  v8 = nw_agent_client_copy_path();
  v9 = nw_path_copy_effective_local_endpoint(v8);

LABEL_8:
LABEL_9:

  return v9;
}

id *sub_10011E9B8(id *a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (a1)
  {
    v28.receiver = a1;
    v28.super_class = NRApplicationServiceClient;
    v10 = objc_msgSendSuper2(&v28, "init");
    if (!v10)
    {
      v23 = sub_100119370();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      if (IsLevelEnabled)
      {
        v25 = sub_100119370();
        _NRLogWithArgs();
      }

      _os_log_pack_size();
      v26 = *__error();
      v27 = _os_log_pack_fill();
      *v27 = 136446210;
      *(v27 + 4) = "[NRApplicationServiceClient initWithDelegate:delegateQueue:nrUUID:]";
      sub_100119370();
      _NRLogAbortWithPack();
    }

    v11 = v10;
    v10[5] = atomic_fetch_add_explicit(&qword_1002287C8, 1uLL, memory_order_relaxed);
    objc_storeWeak(v10 + 6, v7);
    objc_storeStrong(v11 + 9, a3);
    objc_storeStrong(v11 + 7, a4);
    v12 = objc_alloc_init(NSMutableArray);
    v13 = v11[2];
    v11[2] = v12;

    v14 = objc_alloc_init(NSMutableArray);
    v15 = v11[3];
    v11[3] = v14;

    v16 = objc_alloc_init(NSMutableArray);
    v17 = v11[4];
    v11[4] = v16;

    v18 = sub_100163A30(NRDLocalDevice, v11[7]);
    v19 = v18;
    if (v18)
    {
      objc_storeStrong(v11 + 8, *(v18 + 40));
      v20 = v19[18];
    }

    else
    {
      objc_storeStrong(v11 + 8, 0);
      v20 = 0;
    }

    v21 = v20;
    *(v11 + 10) = [v21 hasCompanionDatapath];

    a1 = v11;
  }

  return a1;
}

void sub_10011EC08(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1 && (*(a1 + 9) & 1) == 0)
  {
    v10 = v3;
    if (v3)
    {
      objc_opt_self();
      if (qword_1002291A0 != -1)
      {
        dispatch_once(&qword_1002291A0, &stru_1001FBD88);
      }

      v4 = qword_100229198;
      v5 = v10;
      if (!v4)
      {
        goto LABEL_15;
      }

      v6 = *(v4 + 72);
      if (v6)
      {

LABEL_10:
        [v5 UTF8String];
        v7 = nw_interface_create_with_name();
        if (*(v4 + 72))
        {
          nw_agent_add_to_interface();
        }

        if (*(v4 + 88))
        {
          nw_agent_add_to_interface();
        }

        goto LABEL_15;
      }

      if (*(v4 + 88))
      {
        goto LABEL_10;
      }

LABEL_15:

      v3 = v10;
      goto LABEL_16;
    }

    v8 = sub_100119370();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    v3 = 0;
    if (IsLevelEnabled)
    {
      v5 = sub_100119370();
      _NRLogWithArgs();
      goto LABEL_15;
    }
  }

LABEL_16:
}

void sub_10011ED4C(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1 && (*(a1 + 9) & 1) == 0)
  {
    v8 = v3;
    objc_opt_self();
    if (qword_1002291A0 != -1)
    {
      dispatch_once(&qword_1002291A0, &stru_1001FBD88);
    }

    v4 = qword_100229198;
    v5 = v8;
    if (!v4)
    {
      goto LABEL_14;
    }

    v6 = *(v4 + 72);
    if (v6)
    {
    }

    else if (!*(v4 + 88))
    {
LABEL_14:

      v3 = v8;
      goto LABEL_15;
    }

    [v5 UTF8String];
    v7 = nw_interface_create_with_name();
    if (*(v4 + 72))
    {
      nw_agent_remove_from_interface();
    }

    if (*(v4 + 88))
    {
      nw_agent_remove_from_interface();
    }

    goto LABEL_14;
  }

LABEL_15:
}

uint64_t sub_10011EE44(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1 && (*(a1 + 9) & 1) == 0)
  {
    objc_opt_self();
    if (qword_1002291A0 != -1)
    {
      dispatch_once(&qword_1002291A0, &stru_1001FBD88);
    }

    v5 = qword_100229198;
    v6 = v3;
    v7 = v6;
    if (v5)
    {
      if (v6)
      {
        [*(v5 + 48) objectForKeyedSubscript:v6];
        v17 = 0u;
        v18 = 0u;
        v19 = 0u;
        v8 = v20 = 0u;
        IsLevelEnabled = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
        if (IsLevelEnabled)
        {
          v9 = *v18;
          while (2)
          {
            for (i = 0; i != IsLevelEnabled; ++i)
            {
              if (*v18 != v9)
              {
                objc_enumerationMutation(v8);
              }

              v11 = *(*(&v17 + 1) + 8 * i);
              if (v11)
              {
                v12 = *(v11 + 56);
                if (v12)
                {
                  v13 = v12[9];

                  if (v13)
                  {
                    IsLevelEnabled = 1;
                    goto LABEL_20;
                  }
                }
              }
            }

            IsLevelEnabled = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
            if (IsLevelEnabled)
            {
              continue;
            }

            break;
          }
        }

LABEL_20:
      }

      else
      {
        v15 = sub_100119370();
        IsLevelEnabled = _NRLogIsLevelEnabled();

        if (IsLevelEnabled)
        {
          v16 = sub_100119370();
          _NRLogWithArgs();

          IsLevelEnabled = 0;
        }
      }
    }

    else
    {
      IsLevelEnabled = 0;
    }
  }

  else
  {
    IsLevelEnabled = 0;
  }

  return IsLevelEnabled;
}

uint64_t sub_10011F034(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1 && (*(a1 + 9) & 1) == 0)
  {
    objc_opt_self();
    if (qword_1002291A0 != -1)
    {
      dispatch_once(&qword_1002291A0, &stru_1001FBD88);
    }

    v4 = qword_100229198;
    v5 = v3;
    v6 = v5;
    if (v4)
    {
      if (v5)
      {
        [*(v4 + 40) objectForKeyedSubscript:v5];
        v29 = 0u;
        v30 = 0u;
        v31 = 0u;
        v7 = v32 = 0u;
        v8 = [v7 countByEnumeratingWithState:&v29 objects:v34 count:16];
        if (v8)
        {
          v9 = v8;
          v10 = *v30;
          while (2)
          {
            for (i = 0; i != v9; i = i + 1)
            {
              if (*v30 != v10)
              {
                objc_enumerationMutation(v7);
              }

              v12 = *(*(&v29 + 1) + 8 * i);
              if (v12)
              {
                v13 = *(v12 + 56);
                if (v13)
                {
                  v14 = v13[8];

                  if (v14)
                  {
                    v4 = 1;
                    v15 = v7;
                    goto LABEL_32;
                  }
                }
              }
            }

            v9 = [v7 countByEnumeratingWithState:&v29 objects:v34 count:16];
            if (v9)
            {
              continue;
            }

            break;
          }
        }

        [*(v4 + 48) objectForKeyedSubscript:v6];
        v25 = 0u;
        v26 = 0u;
        v27 = 0u;
        v15 = v28 = 0u;
        v4 = [v15 countByEnumeratingWithState:&v25 objects:v33 count:16];
        if (v4)
        {
          v16 = *v26;
          while (2)
          {
            for (j = 0; j != v4; ++j)
            {
              if (*v26 != v16)
              {
                objc_enumerationMutation(v15);
              }

              v18 = *(*(&v25 + 1) + 8 * j);
              if (v18)
              {
                v19 = *(v18 + 56);
                if (v19)
                {
                  v20 = v19[8];

                  if (v20)
                  {
                    v4 = 1;
                    goto LABEL_31;
                  }
                }
              }
            }

            v4 = [v15 countByEnumeratingWithState:&v25 objects:v33 count:16];
            if (v4)
            {
              continue;
            }

            break;
          }
        }

LABEL_31:

LABEL_32:
      }

      else
      {
        v22 = sub_100119370();
        IsLevelEnabled = _NRLogIsLevelEnabled();

        if (IsLevelEnabled)
        {
          v24 = sub_100119370();
          _NRLogWithArgs();
        }

        v4 = 0;
      }
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t sub_10011F2E4(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1 && (*(a1 + 9) & 1) == 0)
  {
    objc_opt_self();
    if (qword_1002291A0 != -1)
    {
      dispatch_once(&qword_1002291A0, &stru_1001FBD88);
    }

    v4 = qword_100229198;
    v5 = v3;
    v6 = v5;
    if (v4)
    {
      if (v5)
      {
        [*(v4 + 40) objectForKeyedSubscript:v5];
        v29 = 0u;
        v30 = 0u;
        v31 = 0u;
        v7 = v32 = 0u;
        v8 = [v7 countByEnumeratingWithState:&v29 objects:v34 count:16];
        if (v8)
        {
          v9 = v8;
          v10 = *v30;
          while (2)
          {
            for (i = 0; i != v9; i = i + 1)
            {
              if (*v30 != v10)
              {
                objc_enumerationMutation(v7);
              }

              v12 = *(*(&v29 + 1) + 8 * i);
              if (v12)
              {
                v13 = *(v12 + 56);
                if (v13)
                {
                  v14 = v13[10];

                  if (v14)
                  {
                    v4 = 1;
                    v15 = v7;
                    goto LABEL_32;
                  }
                }
              }
            }

            v9 = [v7 countByEnumeratingWithState:&v29 objects:v34 count:16];
            if (v9)
            {
              continue;
            }

            break;
          }
        }

        [*(v4 + 48) objectForKeyedSubscript:v6];
        v25 = 0u;
        v26 = 0u;
        v27 = 0u;
        v15 = v28 = 0u;
        v4 = [v15 countByEnumeratingWithState:&v25 objects:v33 count:16];
        if (v4)
        {
          v16 = *v26;
          while (2)
          {
            for (j = 0; j != v4; ++j)
            {
              if (*v26 != v16)
              {
                objc_enumerationMutation(v15);
              }

              v18 = *(*(&v25 + 1) + 8 * j);
              if (v18)
              {
                v19 = *(v18 + 56);
                if (v19)
                {
                  v20 = v19[10];

                  if (v20)
                  {
                    v4 = 1;
                    goto LABEL_31;
                  }
                }
              }
            }

            v4 = [v15 countByEnumeratingWithState:&v25 objects:v33 count:16];
            if (v4)
            {
              continue;
            }

            break;
          }
        }

LABEL_31:

LABEL_32:
      }

      else
      {
        v22 = sub_100119370();
        IsLevelEnabled = _NRLogIsLevelEnabled();

        if (IsLevelEnabled)
        {
          v24 = sub_100119370();
          _NRLogWithArgs();
        }

        v4 = 0;
      }
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void sub_10011F7D4(void *a1)
{
  v2 = a1[4];
  if (v2)
  {
    WeakRetained = objc_loadWeakRetained((v2 + 16));
  }

  else
  {
    WeakRetained = 0;
  }

  v4 = WeakRetained;
  [WeakRetained linkDidReceiveData:a1[5] data:a1[6]];
}

void sub_10011F834(id a1)
{
  v1 = os_log_create("com.apple.networkrelay", "");
  v2 = qword_1002291B8;
  qword_1002291B8 = v1;

  _objc_release_x1(v1, v2);
}

id sub_10011FA74()
{
  if (qword_1002291C0 != -1)
  {
    dispatch_once(&qword_1002291C0, &stru_1001FBE90);
  }

  v1 = qword_1002291B8;

  return v1;
}

void sub_10011FAC8(uint64_t a1)
{
  v43 = [*(a1 + 32) nrUUID];
  v2 = *(a1 + 40);
  if (v2)
  {
    WeakRetained = objc_loadWeakRetained((v2 + 16));
  }

  else
  {
    WeakRetained = 0;
  }

  [WeakRetained linkIsUnavailable:*(a1 + 32)];

  v4 = *(a1 + 40);
  if (v4 && *(v4 + 32) == 1)
  {
    if (qword_1002291C0 != -1)
    {
      dispatch_once(&qword_1002291C0, &stru_1001FBE90);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_1002291C0 != -1)
      {
        dispatch_once(&qword_1002291C0, &stru_1001FBE90);
      }

      _NRLogWithArgs();
    }

    v5 = *(a1 + 40);
    v6 = v43;
    if (!v5)
    {
      v29 = 0;
      goto LABEL_32;
    }

    v7 = *(v5 + 24);
    dispatch_assert_queue_V2(v7);

    if (([v5 shouldCreateLinkForNRUUID:v6] & 1) == 0)
    {
      v30 = *(v5 + 8);
      StringFromNRLinkType = createStringFromNRLinkType();
      [v5 reportEvent:3017 detailsFormat:@"unsupported link type: %@", StringFromNRLinkType];
      v29 = 0;
      goto LABEL_31;
    }

    v8 = [*(v5 + 56) hostname];
    objc_opt_self();
    if (qword_100228E88 != -1)
    {
      dispatch_once(&qword_100228E88, &stru_1001FA180);
    }

    v9 = qword_100228E80;
    v10 = @"62743";
    if (!v9)
    {
      v10 = 0;
    }

    v11 = v10;
    v12 = [NWAddressEndpoint endpointWithHostname:v8 port:v11];

    v13 = [NRLinkFixedInterface alloc];
    v14 = *(v5 + 24);
    v15 = *(v5 + 64);
    objc_opt_self();
    if (qword_100228E88 != -1)
    {
      dispatch_once(&qword_100228E88, &stru_1001FA180);
    }

    v16 = qword_100228E80;
    if (v16)
    {
      v17 = @"62743";
    }

    else
    {
      v17 = 0;
    }

    v18 = v17;
    v19 = v14;
    v20 = v5;
    v21 = v6;
    v22 = v15;
    StringFromNRLinkType = v12;
    v24 = v18;
    if (!v13)
    {
      goto LABEL_47;
    }

    if (v19)
    {
      if (v21)
      {
        if (_NRIsUUIDNonZero())
        {
          if (v22)
          {
            v44.receiver = v13;
            v44.super_class = NRLinkFixedInterface;
            v25 = objc_msgSendSuper2(&v44, "initLinkWithQueue:linkDelegate:nrUUID:", v19, v20, v21);
            if (v25)
            {
              v26 = v25;
              [v25 setType:2];
              [v26 setSubtype:101];
              [v26 setLocalInterfaceName:v22];
              [v26 setLocalOuterEndpoint:0];
              [v26 setRemoteOuterEndpoint:StringFromNRLinkType];
              objc_storeStrong((v26 + 279), v17);
              v27 = [v21 UUIDString];
              [v26 reportEvent:3000 details:v27];

              v28 = [v26 linkDelegate];
              [v28 linkIsAvailable:v26];

              v13 = v26;
              v29 = v13;
LABEL_29:

LABEL_31:
LABEL_32:

              goto LABEL_33;
            }

            v36 = sub_10007478C();
            IsLevelEnabled = _NRLogIsLevelEnabled();

            if (IsLevelEnabled)
            {
              v38 = sub_10007478C();
              _NRLogWithArgs();
            }

            v13 = 0;
LABEL_47:
            v29 = 0;
            goto LABEL_29;
          }

          v34 = sub_10007478C();
          v42 = _NRLogIsLevelEnabled();

          if (!v42)
          {
            goto LABEL_47;
          }
        }

        else
        {
          v33 = sub_10007478C();
          v41 = _NRLogIsLevelEnabled();

          if (!v41)
          {
            goto LABEL_47;
          }
        }
      }

      else
      {
        v32 = sub_10007478C();
        v40 = _NRLogIsLevelEnabled();

        if (!v40)
        {
          goto LABEL_47;
        }
      }
    }

    else
    {
      v31 = sub_10007478C();
      v39 = _NRLogIsLevelEnabled();

      if (!v39)
      {
        goto LABEL_47;
      }
    }

    v35 = sub_10007478C();
    _NRLogWithArgs();

    v29 = 0;
    goto LABEL_29;
  }

LABEL_33:
}

void sub_100120214(uint64_t a1)
{
  if ([*(a1 + 32) state] == 9)
  {
    v2 = *(a1 + 40);
    if (v2)
    {
      WeakRetained = objc_loadWeakRetained((v2 + 16));
    }

    else
    {
      WeakRetained = 0;
    }

    v6 = WeakRetained;
    [WeakRetained linkIsSuspended:*(a1 + 32)];
  }

  else
  {
    if (qword_1002291C0 != -1)
    {
      dispatch_once(&qword_1002291C0, &stru_1001FBE90);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_1002291C0 != -1)
      {
        dispatch_once(&qword_1002291C0, &stru_1001FBE90);
      }

      v4 = *(a1 + 40);
      v5 = *(a1 + 32);
      _NRLogWithArgs();
    }
  }
}

void sub_100120514(uint64_t a1)
{
  if ([*(a1 + 32) state] == 8)
  {
    v2 = *(a1 + 40);
    if (v2)
    {
      WeakRetained = objc_loadWeakRetained((v2 + 16));
    }

    else
    {
      WeakRetained = 0;
    }

    v6 = WeakRetained;
    [WeakRetained linkIsReady:*(a1 + 32)];
  }

  else
  {
    if (qword_1002291C0 != -1)
    {
      dispatch_once(&qword_1002291C0, &stru_1001FBE90);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_1002291C0 != -1)
      {
        dispatch_once(&qword_1002291C0, &stru_1001FBE90);
      }

      v4 = *(a1 + 40);
      v5 = *(a1 + 32);
      _NRLogWithArgs();
    }
  }
}

void sub_100120834(uint64_t a1)
{
  if ([*(a1 + 32) state] == 1)
  {
    v2 = *(a1 + 40);
    if (v2)
    {
      WeakRetained = objc_loadWeakRetained((v2 + 16));
    }

    else
    {
      WeakRetained = 0;
    }

    v6 = WeakRetained;
    [WeakRetained linkIsAvailable:*(a1 + 32)];
  }

  else
  {
    if (qword_1002291C0 != -1)
    {
      dispatch_once(&qword_1002291C0, &stru_1001FBE90);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_1002291C0 != -1)
      {
        dispatch_once(&qword_1002291C0, &stru_1001FBE90);
      }

      v4 = *(a1 + 40);
      v5 = *(a1 + 32);
      _NRLogWithArgs();
    }
  }
}

void sub_100121148(id a1)
{
  v1 = os_log_create("com.apple.networkrelay", "");
  v2 = qword_1002291C8;
  qword_1002291C8 = v1;

  _objc_release_x1(v1, v2);
}

id sub_10012141C()
{
  if (qword_1002291D0 != -1)
  {
    dispatch_once(&qword_1002291D0, &stru_1001FBED8);
  }

  v1 = qword_1002291C8;

  return v1;
}

void sub_100121470(void *a1)
{
  v2 = a1[4];
  if (v2)
  {
    WeakRetained = objc_loadWeakRetained((v2 + 16));
  }

  else
  {
    WeakRetained = 0;
  }

  v4 = WeakRetained;
  [WeakRetained linkDidReceiveData:a1[5] data:a1[6]];
}

void sub_10012161C(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    WeakRetained = objc_loadWeakRetained((v2 + 16));
  }

  else
  {
    WeakRetained = 0;
  }

  v4 = WeakRetained;
  [WeakRetained linkIsUnavailable:*(a1 + 40)];
}

void sub_10012167C(uint64_t a1)
{
  if (a1)
  {
    *(a1 + 36) = nw_path_get_status(*(a1 + 56));
    v2 = *(a1 + 36);
    if (v2 == 2)
    {
      v3 = [*(a1 + 40) copy];
      v41 = 0u;
      v42 = 0u;
      v43 = 0u;
      v44 = 0u;
      v4 = v3;
      v5 = [v4 countByEnumeratingWithState:&v41 objects:v47 count:16];
      if (v5)
      {
        v6 = v5;
        v7 = *v42;
        do
        {
          for (i = 0; i != v6; i = i + 1)
          {
            if (*v42 != v7)
            {
              objc_enumerationMutation(v4);
            }

            v9 = *(*(&v41 + 1) + 8 * i);
            if (([v9 ikeClassCEstablished] & 1) != 0 || objc_msgSend(v9, "ikeClassDEstablished"))
            {
              [v9 suspend];
            }

            else
            {
              [v9 cancelWithReason:@"No network route"];
            }
          }

          v6 = [v4 countByEnumeratingWithState:&v41 objects:v47 count:16];
        }

        while (v6);
      }

      v2 = *(a1 + 36);
    }

    if (v2 == 1)
    {
      v39 = 0u;
      v40 = 0u;
      v37 = 0u;
      v38 = 0u;
      obj = sub_10016CD90();
      v10 = [obj countByEnumeratingWithState:&v37 objects:v46 count:16];
      if (v10)
      {
        v11 = v10;
        v32 = *v38;
        do
        {
          for (j = 0; j != v11; j = j + 1)
          {
            if (*v38 != v32)
            {
              objc_enumerationMutation(obj);
            }

            v17 = *(*(&v37 + 1) + 8 * j);
            v33 = 0u;
            v34 = 0u;
            v35 = 0u;
            v36 = 0u;
            v18 = *(a1 + 40);
            v19 = [v18 countByEnumeratingWithState:&v33 objects:v45 count:16];
            if (!v19)
            {
LABEL_34:

              v18 = v17;
              if ([a1 shouldCreateLinkForNRUUID:v18])
              {
                v25 = sub_100163A30(NRDLocalDevice, v18);
                StringFromNRLinkType = v25;
                if (v25 && *(v25 + 11) == 1)
                {
                  v15 = a1;
                  v16 = @"link suspension in effect for non-nearby links";
LABEL_21:
                  [v15 reportEvent:3017 detailsFormat:v16, v30];
                }

                else
                {
                  v26 = [NRLinkQuickRelay alloc];
                  v27 = *(a1 + 24);
                  v28 = [(NRLinkQuickRelay *)v26 initLinkWithQueue:v27 linkDelegate:a1 nrUUID:v18];

                  if (!v28)
                  {
                    v29 = [v18 UUIDString];
                    [a1 reportEvent:3017 details:v29];
                  }
                }

                goto LABEL_23;
              }

              v13 = *(a1 + 8);
              StringFromNRLinkType = createStringFromNRLinkType();
              v30 = StringFromNRLinkType;
              v15 = a1;
              v16 = @"unsupported link type: %@";
              goto LABEL_21;
            }

            v20 = v19;
            v21 = *v34;
LABEL_28:
            v22 = 0;
            while (1)
            {
              if (*v34 != v21)
              {
                objc_enumerationMutation(v18);
              }

              v23 = [*(*(&v33 + 1) + 8 * v22) nrUUID];
              v24 = [v23 isEqual:v17];

              if (v24)
              {
                break;
              }

              if (v20 == ++v22)
              {
                v20 = [v18 countByEnumeratingWithState:&v33 objects:v45 count:16];
                if (v20)
                {
                  goto LABEL_28;
                }

                goto LABEL_34;
              }
            }

LABEL_23:
          }

          v11 = [obj countByEnumeratingWithState:&v37 objects:v46 count:16];
        }

        while (v11);
      }
    }

    else
    {
      if (qword_1002291D0 != -1)
      {
        dispatch_once(&qword_1002291D0, &stru_1001FBED8);
      }

      if (_NRLogIsLevelEnabled())
      {
        if (qword_1002291D0 != -1)
        {
          dispatch_once(&qword_1002291D0, &stru_1001FBED8);
        }

        _NRLogWithArgs();
      }
    }
  }
}

void sub_100121BF0(uint64_t a1)
{
  if ([*(a1 + 32) state] == 8)
  {
    v2 = *(a1 + 40);
    if (v2)
    {
      WeakRetained = objc_loadWeakRetained((v2 + 16));
    }

    else
    {
      WeakRetained = 0;
    }

    v6 = WeakRetained;
    [WeakRetained linkIsReady:*(a1 + 32)];
  }

  else
  {
    if (qword_1002291D0 != -1)
    {
      dispatch_once(&qword_1002291D0, &stru_1001FBED8);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_1002291D0 != -1)
      {
        dispatch_once(&qword_1002291D0, &stru_1001FBED8);
      }

      v4 = *(a1 + 40);
      v5 = *(a1 + 32);
      _NRLogWithArgs();
    }
  }
}

void sub_100121E34(uint64_t a1)
{
  if ([*(a1 + 32) state] == 9)
  {
    v2 = *(a1 + 40);
    if (v2)
    {
      WeakRetained = objc_loadWeakRetained((v2 + 16));
    }

    else
    {
      WeakRetained = 0;
    }

    v6 = WeakRetained;
    [WeakRetained linkIsSuspended:*(a1 + 32)];
  }

  else
  {
    if (qword_1002291D0 != -1)
    {
      dispatch_once(&qword_1002291D0, &stru_1001FBED8);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_1002291D0 != -1)
      {
        dispatch_once(&qword_1002291D0, &stru_1001FBED8);
      }

      v4 = *(a1 + 40);
      v5 = *(a1 + 32);
      _NRLogWithArgs();
    }
  }
}

void sub_100122098(uint64_t a1)
{
  if ([*(a1 + 32) state] == 1)
  {
    v2 = *(a1 + 40);
    if (v2)
    {
      WeakRetained = objc_loadWeakRetained((v2 + 16));
    }

    else
    {
      WeakRetained = 0;
    }

    v6 = WeakRetained;
    [WeakRetained linkIsAvailable:*(a1 + 32)];
  }

  else
  {
    if (qword_1002291D0 != -1)
    {
      dispatch_once(&qword_1002291D0, &stru_1001FBED8);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_1002291D0 != -1)
      {
        dispatch_once(&qword_1002291D0, &stru_1001FBED8);
      }

      v4 = *(a1 + 40);
      v5 = *(a1 + 32);
      _NRLogWithArgs();
    }
  }
}

void sub_1001224F8(uint64_t *a1)
{
  v2 = nw_parameters_create();
  v3 = xpc_array_create(0, 0);
  if (!v3)
  {
    v26 = sub_10012141C();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v28 = sub_10012141C();
      _NRLogWithArgs();
    }

    v2 = _os_log_pack_size();
    v4 = v31 - ((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0);
    v29 = *__error();
    v30 = _os_log_pack_fill();
    sub_10006BF98(v30, "nr_xpc_array_create");
    sub_10012141C();
    _NRLogAbortWithPack();
    __break(1u);
LABEL_20:
    dispatch_once(&qword_1002291D0, &stru_1001FBED8);
    goto LABEL_12;
  }

  v4 = v3;
  xpc_array_set_uint64(v3, 0xFFFFFFFFFFFFFFFFLL, 0x1389uLL);
  nw_parameters_set_prohibited_interface_subtypes();
  evaluator_for_endpoint = nw_path_create_evaluator_for_endpoint();
  v6 = a1[6];
  a1[6] = evaluator_for_endpoint;

  v7 = a1[6];
  if (v7)
  {
    v8 = v7;
    v9 = a1[3];
    nw_path_evaluator_set_queue();

    objc_initWeak(&location, a1);
    v10 = a1[6];
    v11 = a1[3];
    v31[1] = _NSConcreteStackBlock;
    v31[2] = 3221225472;
    v31[3] = sub_10012297C;
    v31[4] = &unk_1001FBEB8;
    objc_copyWeak(&v32, &location);
    nw_path_evaluator_set_update_handler();

    v12 = a1[6];
    nw_path_evaluator_start();

    v13 = a1[6];
    v14 = nw_path_evaluator_copy_path();
    v15 = a1[7];
    a1[7] = v14;

    v16 = [APSConnection alloc];
    v17 = APSEnvironmentProduction;
    v18 = APSConnectionOverrideNamedDelegatePort;
    v19 = a1[3];
    v20 = [v16 initWithEnvironmentName:v17 namedDelegatePort:v18 queue:v19];
    v21 = a1[8];
    a1[8] = v20;

    if (!a1[8])
    {
      if (qword_1002291D0 != -1)
      {
        dispatch_once(&qword_1002291D0, &stru_1001FBED8);
      }

      v22 = qword_1002291C8;
      v23 = _NRLogIsLevelEnabled();

      if (v23)
      {
        if (qword_1002291D0 != -1)
        {
          dispatch_once(&qword_1002291D0, &stru_1001FBED8);
        }

        v24 = qword_1002291C8;
        _NRLogWithArgs();
      }
    }

    v25 = a1[8];
    [v25 setDelegate:a1];

    sub_100122A9C(a1);
    objc_destroyWeak(&v32);
    objc_destroyWeak(&location);
    goto LABEL_16;
  }

  a1 = &qword_100229000;
  if (qword_1002291D0 != -1)
  {
    goto LABEL_20;
  }

LABEL_12:
  if (_NRLogIsLevelEnabled())
  {
    if (a1[58] != -1)
    {
      dispatch_once(&qword_1002291D0, &stru_1001FBED8);
    }

    _NRLogWithArgs();
  }

LABEL_16:
}

void sub_100122958(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 96));
  _Unwind_Resume(a1);
}

void sub_10012297C(uint64_t a1, void *a2)
{
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained && *(WeakRetained + 3) != 1004)
  {
    if (qword_1002291D0 != -1)
    {
      dispatch_once(&qword_1002291D0, &stru_1001FBED8);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_1002291D0 != -1)
      {
        dispatch_once(&qword_1002291D0, &stru_1001FBED8);
      }

      _NRLogWithArgs();
    }

    objc_storeStrong(v5 + 7, a2);
    sub_10012167C(v5);
  }
}

void sub_100122A9C(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 24);
    dispatch_assert_queue_V2(v2);

    v3 = [*(a1 + 40) copy];
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v4 = v3;
    v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v13;
      do
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v13 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v12 + 1) + 8 * i);
          v10 = [v9 nrUUID];
          v11 = sub_100163A30(NRDLocalDevice, v10);

          if (!v11 || (v11[48] & 2) == 0)
          {
            [v9 cancelWithReason:{@"Device has been disabled %@", v11}];
          }
        }

        v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v6);
    }

    sub_10012167C(a1);
  }
}

void sub_100122F24(id a1)
{
  v1 = os_log_create("com.apple.networkrelay", "");
  v2 = qword_1002291E0;
  qword_1002291E0 = v1;

  _objc_release_x1(v1, v2);
}

id sub_100123258()
{
  if (qword_1002291E8 != -1)
  {
    dispatch_once(&qword_1002291E8, &stru_1001FC218);
  }

  v1 = qword_1002291E0;

  return v1;
}

id *sub_1001232AC(id *a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    if (v3)
    {
      v5 = [a1[6] objectForKeyedSubscript:v3];
      a1 = [a1[5] objectForKeyedSubscript:v5];
LABEL_4:

      goto LABEL_5;
    }

    v7 = sub_100123258();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v5 = sub_100123258();
      _NRLogWithArgs();
      a1 = 0;
      goto LABEL_4;
    }

    a1 = 0;
  }

LABEL_5:

  return a1;
}

id sub_100123380(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 16));
  v3 = WeakRetained;
  if (WeakRetained && ([*(WeakRetained + 4) pairingCriteria], v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "migrationPairing"), v4, v5))
  {
    v6 = v3[7];
    v7 = *(a1 + 32);
    v8 = v6;
    v9 = [v7 nrDeviceIdentifier];
    v10 = [v8 containsObject:v9];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

id *sub_100123434(id *result)
{
  if (result)
  {
    v1 = result;
    WeakRetained = objc_loadWeakRetained(result + 2);
    v3 = WeakRetained;
    if (WeakRetained)
    {
      v4 = *(WeakRetained + 8);
    }

    else
    {
      v4 = 0;
    }

    v5 = v4;

    v6 = [v1[4] uuid];
    v7 = [v5 isEqual:v6];

    return v7;
  }

  return result;
}

void sub_1001234B8(uint64_t a1)
{
  if (a1)
  {
    sub_10012357C(a1);
    sub_1001242E0(a1, 1);
    sub_100123ADC(NRDevicePairingCandidateContext, (a1 + 176));
    sub_100123ADC(NRDevicePairingCandidateContext, (a1 + 184));
    v2 = *(a1 + 40);
    *(a1 + 40) = 0;

    v3 = *(a1 + 272);
    *(a1 + 272) = 0;

    v4 = *(a1 + 264);
    *(a1 + 264) = 0;

    sub_100124444(a1, 0xFFFFFFFFFFFFF446);
    v5 = *(a1 + 216);
    *(a1 + 216) = 0;

    v6 = *(a1 + 224);
    *(a1 + 224) = 0;

    v7 = *(a1 + 232);
    *(a1 + 232) = 0;

    *(a1 + 10) = 0;
    v8 = *(a1 + 248);
    *(a1 + 248) = 0;
  }
}

void sub_10012357C(uint64_t a1)
{
  if (a1 && *(a1 + 96))
  {
    if (sub_100123380(a1) && *(a1 + 8) == 1)
    {
      *(a1 + 8) = 0;
      WeakRetained = objc_loadWeakRetained((a1 + 16));
      sub_1001236B4(WeakRetained, *(a1 + 32));
    }

    v3 = *(a1 + 128);
    if (v3)
    {
      dispatch_source_cancel(v3);
      v4 = *(a1 + 128);
      *(a1 + 128) = 0;
    }

    v5 = *(a1 + 136);
    if (v5)
    {
      if (*(a1 + 9) == 1)
      {
        dispatch_resume(v5);
        *(a1 + 9) = 0;
        v5 = *(a1 + 136);
      }

      dispatch_source_cancel(v5);
      v6 = *(a1 + 136);
      *(a1 + 136) = 0;
    }

    v7 = *(a1 + 96);
    *(a1 + 96) = 0u;
    *(a1 + 112) = 0u;

    v8 = *(a1 + 144);
    if (v8)
    {
      [v8 resetContextForPriority:1];
      [*(a1 + 144) cancel];
      v9 = *(a1 + 144);
      *(a1 + 144) = 0;
    }

    *(a1 + 152) = 0;
    *(a1 + 160) = 0;
    v10 = *(a1 + 168);
    if (v10)
    {
      [v10 cancel];
      v11 = *(a1 + 168);
      *(a1 + 168) = 0;
    }

    sub_100123ADC(NRDevicePairingCandidateContext, (a1 + 176));
    sub_100123ADC(NRDevicePairingCandidateContext, (a1 + 184));
    v12 = *(a1 + 192);
    *(a1 + 192) = 0;
  }
}

void sub_1001236B4(id *a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    WeakRetained = objc_loadWeakRetained(a1 + 2);
    v5 = WeakRetained;
    if (WeakRetained)
    {
      v6 = *(WeakRetained + 1);
    }

    else
    {
      v6 = 0;
    }

    v7 = v6;

    if (!v7)
    {
      goto LABEL_19;
    }

    v8 = &qword_100229000;
    if (qword_1002291E8 != -1)
    {
      dispatch_once(&qword_1002291E8, &stru_1001FC218);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_1002291E8 != -1)
      {
        dispatch_once(&qword_1002291E8, &stru_1001FC218);
      }

      _NRLogWithArgs();
    }

    v9 = xpc_dictionary_create(0, 0, 0);
    if (v9)
    {
      v10 = v9;
      v11 = nrXPCKeyPairingManager;
      v12 = [a1[4] uuid];
      a1 = v10;
      v13 = v12;
      v8 = v13;
      if (v11)
      {
        if (v13)
        {
          *uuid = 0;
          v36 = 0;
          [v13 getUUIDBytes:uuid];
          xpc_dictionary_set_uuid(a1, v11, uuid);
          goto LABEL_15;
        }

        v29 = sub_100123258();
        IsLevelEnabled = _NRLogIsLevelEnabled();

        if (!IsLevelEnabled)
        {
LABEL_15:

          xpc_dictionary_set_uint64(a1, nrXPCKeyPairingManagerOperation, 5uLL);
          v14 = nrXPCKeyLostPairingCandidate;
          v15 = [v3 uuid];
          v16 = a1;
          v17 = v15;
          v18 = v17;
          if (v14)
          {
            if (v17)
            {
              *uuid = 0;
              v36 = 0;
              [v17 getUUIDBytes:uuid];
              xpc_dictionary_set_uuid(v16, v14, uuid);
LABEL_18:

              xpc_connection_send_message(v7, v16);
LABEL_19:

              goto LABEL_20;
            }

            v31 = sub_100123258();
            v32 = _NRLogIsLevelEnabled();

            if (!v32)
            {
              goto LABEL_18;
            }
          }

          else
          {
            v27 = sub_100123258();
            v28 = _NRLogIsLevelEnabled();

            if (!v28)
            {
              goto LABEL_18;
            }
          }

          v33 = sub_100123258();
          _NRLogWithArgs();

          goto LABEL_18;
        }

        v26 = sub_100123258();
LABEL_30:
        _NRLogWithArgs();

        goto LABEL_15;
      }
    }

    else
    {
      v19 = sub_100123258();
      v20 = _NRLogIsLevelEnabled();

      if (v20)
      {
        v21 = sub_100123258();
        _NRLogWithArgs();
      }

      v3 = _os_log_pack_size();
      v7 = &uuid[-((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
      v22 = *__error();
      v23 = _os_log_pack_fill();
      sub_1000F4320(v23, "nr_xpc_dictionary_create");
      sub_100123258();
      _NRLogAbortWithPack();
    }

    v24 = sub_100123258();
    v25 = _NRLogIsLevelEnabled();

    if (!v25)
    {
      goto LABEL_15;
    }

    v26 = sub_100123258();
    goto LABEL_30;
  }

LABEL_20:
}

void sub_100123ADC(uint64_t a1, id *a2)
{
  v3 = objc_opt_self();
  if (*a2)
  {
    v4 = v3;
    if (qword_1002291E8 != -1)
    {
      dispatch_once(&qword_1002291E8, &stru_1001FC218);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_1002291E8 != -1)
      {
        dispatch_once(&qword_1002291E8, &stru_1001FC218);
      }

      v9 = v4;
      v10 = *a2;
      v8 = 1849;
      v6 = "";
      v7 = "+[NRDevicePairingCandidateContext invalidateIKESession:]";
      _NRLogWithArgs();
    }

    [*a2 setStateUpdateBlock:{0, v6, v7, v8, v9, v10}];
    [*a2 setChildStateUpdateBlock:0];
    [*a2 setConfigurationUpdateBlock:0];
    [*a2 setTrafficSelectorUpdateBlock:0];
    [*a2 setAdditionalAddressesUpdateBlock:0];
    [*a2 setShortDPDEventBlock:0];
    [*a2 setRedirectEventBlock:0];
    [*a2 setPrivateNotifyStatusEvent:0];
    [*a2 invalidate];
    v5 = *a2;
    *a2 = 0;
  }
}

void sub_1001242E0(uint64_t a1, int a2)
{
  if (a1)
  {
    if ([*(a1 + 88) state] - 1 <= 1)
    {
      if (qword_1002291E8 != -1)
      {
        dispatch_once(&qword_1002291E8, &stru_1001FC218);
      }

      if (_NRLogIsLevelEnabled())
      {
        if (qword_1002291E8 != -1)
        {
          dispatch_once(&qword_1002291E8, &stru_1001FC218);
        }

        v4 = *(a1 + 88);
        v5 = qword_1002291E0;
        _NRLogWithArgs();
      }

      WeakRetained = objc_loadWeakRetained((a1 + 16));
      v7 = WeakRetained;
      if (WeakRetained)
      {
        v8 = *(WeakRetained + 11);
      }

      else
      {
        v8 = 0;
      }

      v9 = *(a1 + 88);
      v10 = v8;
      [v10 cancelPeripheralConnection:v9];
    }

    if (a2)
    {
      v11 = *(a1 + 88);
      *(a1 + 88) = 0;
    }
  }
}

void sub_100124444(uint64_t a1, unsigned __int8 *a2)
{
  if (*(a1 + 208))
  {
    v4 = a1;
    WeakRetained = objc_loadWeakRetained((a1 + 16));
    *(v4 + 26) = 0;
    v6 = *(v4 + 25);
    if (v6)
    {
      dispatch_source_cancel(v6);
      v7 = *(v4 + 25);
      *(v4 + 25) = 0;
    }

    v8 = xpc_dictionary_create(0, 0, 0);
    if (v8)
    {
      v9 = v8;
      v10 = nrXPCKeyTargetPairingCandidate;
      v11 = [*(v4 + 4) uuid];
      v4 = v9;
      v12 = v11;
      v2 = v12;
      if (v10)
      {
        if (v12)
        {
          *uuid = 0;
          v25 = 0;
          [v12 getUUIDBytes:uuid];
          xpc_dictionary_set_uuid(v4, v10, uuid);
LABEL_8:

          sub_1001246D8(WeakRetained, a2, 8uLL, v4);
          sub_100124A48(WeakRetained);

          return;
        }

        v21 = sub_100123258();
        IsLevelEnabled = _NRLogIsLevelEnabled();

        if (!IsLevelEnabled)
        {
          goto LABEL_8;
        }

        v20 = sub_100123258();
LABEL_17:
        _NRLogWithArgs();

        goto LABEL_8;
      }
    }

    else
    {
      v13 = sub_100123258();
      v14 = _NRLogIsLevelEnabled();

      if (v14)
      {
        v15 = sub_100123258();
        _NRLogWithArgs();
      }

      WeakRetained = _os_log_pack_size();
      a2 = &uuid[-((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
      v16 = *__error();
      v17 = _os_log_pack_fill();
      sub_1000F4320(v17, "nr_xpc_dictionary_create");
      sub_100123258();
      _NRLogAbortWithPack();
    }

    v18 = sub_100123258();
    v19 = _NRLogIsLevelEnabled();

    if (!v19)
    {
      goto LABEL_8;
    }

    v20 = sub_100123258();
    goto LABEL_17;
  }
}

void sub_1001246D8(uint64_t a1, unsigned __int8 *a2, uint64_t a3, void *a4)
{
  v7 = a4;
  if (a1)
  {
    if (qword_1002291E8 != -1)
    {
      dispatch_once(&qword_1002291E8, &stru_1001FC218);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_1002291E8 != -1)
      {
        dispatch_once(&qword_1002291E8, &stru_1001FC218);
      }

      _NRLogWithArgs();
    }

    WeakRetained = objc_loadWeakRetained((a1 + 16));
    v9 = WeakRetained;
    if (!WeakRetained)
    {
      goto LABEL_27;
    }

    for (i = *(WeakRetained + 1); ; i = 0)
    {
      v11 = i;

      if (!v11)
      {
        break;
      }

      v9 = v7;
      if (v9)
      {
        goto LABEL_14;
      }

      v12 = xpc_dictionary_create(0, 0, 0);
      if (v12)
      {
        v9 = v12;
LABEL_14:
        v13 = nrXPCKeyPairingManager;
        v14 = [*(a1 + 32) uuid];
        v15 = v9;
        v16 = v14;
        v17 = v16;
        if (v13)
        {
          if (v16)
          {
            *uuid = 0;
            v30 = 0;
            [v16 getUUIDBytes:uuid];
            xpc_dictionary_set_uuid(v15, v13, uuid);
LABEL_17:

            xpc_dictionary_set_uint64(v15, nrXPCKeyPairingManagerOperation, a3);
            xpc_dictionary_set_int64(v15, nrXPCKeyResult, a2);
            xpc_connection_send_message(v11, v15);

            break;
          }

          v20 = sub_100123258();
          IsLevelEnabled = _NRLogIsLevelEnabled();

          if (!IsLevelEnabled)
          {
            goto LABEL_17;
          }
        }

        else
        {
          v18 = sub_100123258();
          v19 = _NRLogIsLevelEnabled();

          if (!v19)
          {
            goto LABEL_17;
          }
        }

        v22 = sub_100123258();
        _NRLogWithArgs();

        goto LABEL_17;
      }

      v23 = sub_100123258();
      v24 = _NRLogIsLevelEnabled();

      if (v24)
      {
        v25 = sub_100123258();
        _NRLogWithArgs();
      }

      v7 = _os_log_pack_size();
      a2 = &uuid[-((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
      v26 = *__error();
      v27 = _os_log_pack_fill();
      sub_1000F4320(v27, "nr_xpc_dictionary_create");
      sub_100123258();
      _NRLogAbortWithPack();
LABEL_27:
      ;
    }
  }
}

void sub_100124A48(id *a1)
{
  if (a1)
  {
    if (qword_100229238 != -1)
    {
      dispatch_once(&qword_100229238, &stru_1001FC340);
    }

    if ((byte_100229230 & 1) == 0)
    {
      if (sub_100124F20(a1))
      {
        v2 = objc_alloc_init(NSMutableSet);
        v37 = 0u;
        v38 = 0u;
        v39 = 0u;
        v40 = 0u;
        v3 = a1[5];
        v4 = [v3 countByEnumeratingWithState:&v37 objects:v42 count:16];
        if (v4)
        {
          v5 = v4;
          v6 = *v38;
          do
          {
            for (i = 0; i != v5; i = i + 1)
            {
              if (*v38 != v6)
              {
                objc_enumerationMutation(v3);
              }

              v8 = sub_100125108(a1, *(*(&v37 + 1) + 8 * i));
              v9 = v8;
              if (v8 && !*(v8 + 208) && ((*(v8 + 10) & 1) != 0 || (sub_100123434(v8) & 1) == 0) && (*(v9 + 11) & 1) == 0 && [*(v9 + 88) state] - 1 <= 1 && (sub_100123380(v9) & 1) == 0)
              {
                v10 = [*(v9 + 32) uuid];
                [v2 addObject:v10];
              }
            }

            v5 = [v3 countByEnumeratingWithState:&v37 objects:v42 count:16];
          }

          while (v5);
        }

        v33 = 0u;
        v34 = 0u;
        v35 = 0u;
        v36 = 0u;
        v12 = v2;
        v13 = [v12 countByEnumeratingWithState:&v33 objects:v41 count:16];
        if (v13)
        {
          v14 = v13;
          v15 = *v34;
          do
          {
            for (j = 0; j != v14; j = j + 1)
            {
              if (*v34 != v15)
              {
                objc_enumerationMutation(v12);
              }

              v17 = sub_100125108(a1, *(*(&v33 + 1) + 8 * j));
              sub_1001242E0(v17, 0);
            }

            v14 = [v12 countByEnumeratingWithState:&v33 objects:v41 count:16];
          }

          while (v14);
        }

        v18 = sub_1001251C0(a1);
        if ([v18 count])
        {
          v19 = a1[11];
          v20 = a1[3];
          if (qword_1002292B0 != -1)
          {
            dispatch_once(&qword_1002292B0, &stru_1001FC490);
          }

          v21 = qword_1002292B8;
          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_10012536C;
          block[3] = &unk_1001FCE28;
          v29 = v19;
          v30 = v18;
          v31 = v20;
          v32 = a1;
          v22 = v20;
          v23 = v19;
          dispatch_async(v21, block);
        }

        return;
      }

      if (qword_1002291E8 != -1)
      {
        dispatch_once(&qword_1002291E8, &stru_1001FC218);
      }

      if (_NRLogIsLevelEnabled())
      {
        if (qword_1002291E8 != -1)
        {
          dispatch_once(&qword_1002291E8, &stru_1001FC218);
        }

        v27 = qword_1002291E0;
        objc_opt_self();
        objc_opt_self();
        if (qword_1002291D8)
        {
          v11 = qword_1002291D8;
        }

        else
        {
          v24 = objc_alloc_init(NRDevicePairingDirector);
          v25 = qword_1002291D8;
          qword_1002291D8 = v24;

          v11 = qword_1002291D8;
          if (!v11)
          {
            WeakRetained = 0;
            goto LABEL_43;
          }
        }

        WeakRetained = objc_loadWeakRetained(v11 + 3);
LABEL_43:
        _NRLogWithArgs();
      }
    }
  }
}

uint64_t sub_100124F20(uint64_t a1)
{
  objc_opt_self();
  objc_opt_self();
  if (qword_1002291D8)
  {
    v2 = qword_1002291D8;
  }

  else
  {
    v3 = objc_alloc_init(NRDevicePairingDirector);
    v4 = qword_1002291D8;
    qword_1002291D8 = v3;

    v2 = qword_1002291D8;
    if (!v2)
    {
      v6 = 0;
      if (*(a1 + 104))
      {
LABEL_10:
        if (*(a1 + 88))
        {
LABEL_11:
          v8 = 1;
          goto LABEL_15;
        }

LABEL_14:
        v13 = [CBCentralManager alloc];
        v14 = *(a1 + 24);
        v20 = CBCentralManagerOptionShowPowerAlertKey;
        v21 = &__kCFBooleanTrue;
        v15 = v14;
        v8 = 1;
        v16 = [NSDictionary dictionaryWithObjects:&v21 forKeys:&v20 count:1];
        v17 = [v13 initWithDelegate:a1 queue:v15 options:v16];
        v18 = *(a1 + 88);
        *(a1 + 88) = v17;

        goto LABEL_15;
      }

LABEL_13:
      v9 = [CBScalablePipeManager alloc];
      v10 = *(a1 + 24);
      v11 = [v9 initWithDelegate:a1 queue:v10];
      v12 = *(a1 + 104);
      *(a1 + 104) = v11;

      if (*(a1 + 88))
      {
        goto LABEL_11;
      }

      goto LABEL_14;
    }
  }

  WeakRetained = objc_loadWeakRetained(v2 + 3);
  v6 = WeakRetained;
  if (WeakRetained)
  {
    v7 = WeakRetained == a1;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    objc_storeWeak(v2 + 3, a1);
    if (*(a1 + 104))
    {
      goto LABEL_10;
    }

    goto LABEL_13;
  }

  v8 = 0;
LABEL_15:

  return v8;
}

id *sub_100125108(id *a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    if (v3)
    {
      a1 = [a1[5] objectForKeyedSubscript:v3];
    }

    else
    {
      v6 = sub_100123258();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      if (IsLevelEnabled)
      {
        v8 = sub_100123258();
        _NRLogWithArgs();
      }

      a1 = 0;
    }
  }

  return a1;
}

id sub_1001251C0(id *a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = objc_alloc_init(NSMutableSet);
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = a1[5];
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    do
    {
      v7 = 0;
      do
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = sub_100125108(a1, *(*(&v12 + 1) + 8 * v7));
        v9 = v8;
        if (v8 && (*(v8 + 208) || (*(v8 + 10) & 1) == 0 && (sub_100123434(v8) & 1) != 0 || *(v9 + 11) == 1) && [*(v9 + 88) state] - 3 <= 0xFFFFFFFFFFFFFFFDLL && (sub_100123380(v9) & 1) == 0)
        {
          v10 = [*(v9 + 32) cbUUID];
          [v2 addObject:v10];
        }

        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  return v2;
}

void sub_10012536C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) allObjects];
  v4 = [v2 retrievePeripheralsWithIdentifiers:v3];

  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100125430;
  v7[3] = &unk_1001FD060;
  v5 = *(a1 + 48);
  v7[4] = *(a1 + 56);
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

void sub_100125430(uint64_t a1)
{
  v2 = sub_1001251C0(*(a1 + 32));
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v3 = *(a1 + 40);
  v4 = [v3 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v22;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v22 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v10 = *(*(&v21 + 1) + 8 * i);
        v11 = [v10 identifier];
        v12 = [v2 containsObject:v11];

        if (v12)
        {
          v13 = *(a1 + 32);
          v14 = [v10 identifier];
          v15 = sub_1001232AC(v13, v14);

          if (v15 && (*(v15 + 208) || (*(v15 + 10) & 1) == 0 && (sub_100123434(v15) & 1) != 0 || *(v15 + 11) == 1) && [*(v15 + 88) state] - 3 <= 0xFFFFFFFFFFFFFFFDLL)
          {
            if (qword_1002291E8 != -1)
            {
              dispatch_once(&qword_1002291E8, &stru_1001FC218);
            }

            if (_NRLogIsLevelEnabled())
            {
              if (qword_1002291E8 != -1)
              {
                dispatch_once(&qword_1002291E8, &stru_1001FC218);
              }

              v19 = v15;
              v20 = v10;
              v18 = 1423;
              v16 = "";
              v17 = "[NRDevicePairingManagerContext performNeededBTConnectionOperations]_block_invoke_2";
              _NRLogWithArgs();
            }

            objc_storeStrong((v15 + 88), v10);
            v8 = *(a1 + 32);
            if (v8)
            {
              v9 = *(v8 + 88);
            }

            else
            {
              v9 = 0;
            }

            [v9 connectPeripheral:v10 options:{0, v16, v17, v18, v19, v20}];
          }
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v5);
  }
}

void sub_100126038(id *a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    WeakRetained = objc_loadWeakRetained(a1 + 2);
    v5 = WeakRetained;
    if (WeakRetained)
    {
      v6 = *(WeakRetained + 1);
    }

    else
    {
      v6 = 0;
    }

    v7 = v6;

    if (!v7)
    {
      goto LABEL_21;
    }

    v8 = &qword_100229000;
    if (qword_1002291E8 != -1)
    {
      dispatch_once(&qword_1002291E8, &stru_1001FC218);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_1002291E8 != -1)
      {
        dispatch_once(&qword_1002291E8, &stru_1001FC218);
      }

      _NRLogWithArgs();
    }

    v9 = xpc_dictionary_create(0, 0, 0);
    if (v9)
    {
      v10 = v9;
      v11 = nrXPCKeyPairingManager;
      v12 = [a1[4] uuid];
      a1 = v10;
      v13 = v12;
      v8 = v13;
      if (v11)
      {
        if (v13)
        {
          *uuid = 0;
          v40 = 0;
          [v13 getUUIDBytes:uuid];
          xpc_dictionary_set_uuid(a1, v11, uuid);
          goto LABEL_15;
        }

        v30 = sub_100123258();
        IsLevelEnabled = _NRLogIsLevelEnabled();

        if (!IsLevelEnabled)
        {
LABEL_15:

          xpc_dictionary_set_uint64(a1, nrXPCKeyPairingManagerOperation, 5uLL);
          v14 = nrXPCKeyDiscoveredPairingCandidate;
          v15 = a1;
          v16 = v3;
          v17 = v16;
          if (v14)
          {
            if (v16)
            {
              *uuid = 0;
              v18 = [NSKeyedArchiver archivedDataWithRootObject:v16 requiringSecureCoding:1 error:uuid];
              v19 = *uuid;
              if (!v19 && [v18 length])
              {
                xpc_dictionary_set_data(v15, v14, [v18 bytes], objc_msgSend(v18, "length"));

                xpc_connection_send_message(v7, v15);
LABEL_20:

LABEL_21:
                goto LABEL_22;
              }

              v35 = sub_100123258();
              v36 = _NRLogIsLevelEnabled();

              if (v36)
              {
                v37 = sub_100123258();
                _NRLogWithArgs();
              }

LABEL_38:
              goto LABEL_20;
            }

            v32 = sub_100123258();
            v33 = _NRLogIsLevelEnabled();

            if ((v33 & 1) == 0)
            {
              goto LABEL_38;
            }
          }

          else
          {
            v28 = sub_100123258();
            v29 = _NRLogIsLevelEnabled();

            if ((v29 & 1) == 0)
            {
              goto LABEL_38;
            }
          }

          v34 = sub_100123258();
          _NRLogWithArgs();

          goto LABEL_38;
        }

        v27 = sub_100123258();
LABEL_32:
        _NRLogWithArgs();

        goto LABEL_15;
      }
    }

    else
    {
      v20 = sub_100123258();
      v21 = _NRLogIsLevelEnabled();

      if (v21)
      {
        v22 = sub_100123258();
        _NRLogWithArgs();
      }

      v3 = _os_log_pack_size();
      v7 = &uuid[-((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
      v23 = *__error();
      v24 = _os_log_pack_fill();
      sub_1000F4320(v24, "nr_xpc_dictionary_create");
      sub_100123258();
      _NRLogAbortWithPack();
    }

    v25 = sub_100123258();
    v26 = _NRLogIsLevelEnabled();

    if (!v26)
    {
      goto LABEL_15;
    }

    v27 = sub_100123258();
    goto LABEL_32;
  }

LABEL_22:
}

void sub_1001264E4(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    if (v1[14])
    {
      if (v1[19])
      {
        v20 = 0u;
        v21 = 0u;
        v18 = 0u;
        v19 = 0u;
        if (os_channel_get_next_slot())
        {
          do
          {
            v17 = 0;
            v2 = WORD1(v18);
            v3 = (*(v1[19] + 8))(*v1[19], v19, WORD1(v18), &v17, 0, 0);
            if (v17 < v2)
            {
              v5 = v3;
              v6 = sub_100123258();
              IsLevelEnabled = _NRLogIsLevelEnabled();

              v3 = v5;
              if (IsLevelEnabled)
              {
                v8 = sub_100123258();
                _NRLogWithArgs();

                v3 = v5;
              }
            }

            if ((v3 & 1) == 0)
            {
              break;
            }

            v4 = v1[14];
          }

          while (os_channel_get_next_slot());
          v9 = v1[14];
          if (os_channel_advance_slot())
          {
            v11 = sub_100123258();
            v12 = _NRLogIsLevelEnabled();

            if (v12)
            {
              v13 = sub_100123258();
              _NRLogWithArgs();
            }
          }

          v10 = v1[13];
          if (os_channel_sync())
          {
            v14 = sub_100123258();
            v15 = _NRLogIsLevelEnabled();

            if (v15)
            {
              v16 = sub_100123258();
              _NRLogWithArgs();
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1001266AC(uint64_t result)
{
  v1 = *(result + 32);
  if (v1)
  {
    v2 = *(v1 + 160);
    if (v2)
    {
      if ((*(v1 + 9) & 1) == 0)
      {
        dispatch_suspend(*(v1 + 136));
        *(v1 + 9) = 1;
        v2 = *(v1 + 160);
      }

      v4 = *(v2 + 16);
      v3 = *(v2 + 24);

      return v4(v3);
    }
  }

  return result;
}

void sub_100126718(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v10 = a2;
  if (v2)
  {
    if (qword_1002291E8 != -1)
    {
      dispatch_once(&qword_1002291E8, &stru_1001FC218);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_1002291E8 != -1)
      {
        dispatch_once(&qword_1002291E8, &stru_1001FC218);
      }

      v8 = v2;
      v9 = v10;
      v7 = 3656;
      v5 = "";
      v6 = "[NRDevicePairingCandidateContext processXPCCommDictionary:]";
      _NRLogWithArgs();
    }

    v3 = [v10 objectForKeyedSubscript:{@"message", v5, v6, v7, v8, v9}];
    v4 = [v3 objectForKeyedSubscript:@"message-data"];
    if (v4)
    {
      [*(v2 + 192) receivePacketData:v4];
    }
  }
}

void sub_100126844(uint64_t a1)
{
  if (!a1 || !*(a1 + 208))
  {
    return;
  }

  if (*(a1 + 176))
  {

    sub_10012BE3C(a1);
    return;
  }

  if (qword_100229238 != -1)
  {
    dispatch_once(&qword_100229238, &stru_1001FC340);
  }

  if ((byte_100229230 & 1) != 0 || *(a1 + 96))
  {
    v47 = [[NEIKEv2AuthenticationProtocol alloc] initWithMethod:13];
    if (qword_100229338 != -1)
    {
      dispatch_once(&qword_100229338, &stru_1001FC5F8);
    }

    v46 = qword_100229330;
    v2 = sub_1001472F0(1, v46, v47);
    if (qword_100229238 != -1)
    {
      dispatch_once(&qword_100229238, &stru_1001FC340);
    }

    if (byte_100229230 != 1)
    {
      v7 = sub_100146274(1);
      [v7 setMaximumPacketSize:2000];
      [v7 setHeaderOverhead:5];

      v8 = objc_alloc_init(NEIKEv2NULLIdentifier);
      [v2 setLocalIdentifier:v8];

      v9 = [NEIKEv2Session alloc];
      v10 = *(a1 + 24);
      v11 = [v9 initWithIKEConfig:v7 firstChildConfig:0 sessionConfig:v2 queue:v10 ipsecInterface:0 ikeSocketHandler:0 kernelSASessionName:@"terminusIKE-Pairing-Listener" packetDelegate:a1];
      v12 = *(a1 + 176);
      *(a1 + 176) = v11;

LABEL_39:
      if (*(a1 + 176))
      {
        if (qword_1002291E8 != -1)
        {
          dispatch_once(&qword_1002291E8, &stru_1001FC218);
        }

        if (_NRLogIsLevelEnabled())
        {
          if (qword_1002291E8 != -1)
          {
            dispatch_once(&qword_1002291E8, &stru_1001FC218);
          }

          v44 = 2095;
          v45 = a1;
          v42 = "";
          v43 = "[NRDevicePairingCandidateContext establishControlSessionIfNeeded]";
          _NRLogWithArgs();
        }

        v29 = *(a1 + 176);
        if (v29)
        {
          if (qword_1002291E8 != -1)
          {
            dispatch_once(&qword_1002291E8, &stru_1001FC218);
          }

          if (_NRLogIsLevelEnabled())
          {
            if (qword_1002291E8 != -1)
            {
              dispatch_once(&qword_1002291E8, &stru_1001FC218);
            }

            v44 = 3671;
            v45 = a1;
            v42 = "";
            v43 = "[NRDevicePairingCandidateContext setupIKECallbacksForControlSession]";
            _NRLogWithArgs();
          }

          [v29 setClientQueue:{*(a1 + 24), v42, v43, v44, v45}];
          objc_initWeak(&location, a1);
          v52 = _NSConcreteStackBlock;
          v53 = 3221225472;
          v54 = sub_10012C17C;
          v55 = &unk_1001FC090;
          objc_copyWeak(&v57, &location);
          v56 = a1;
          [v29 setStateUpdateBlock:&v52];
          v49[0] = _NSConcreteStackBlock;
          v49[1] = 3221225472;
          v49[2] = sub_10012C330;
          v49[3] = &unk_1001FC0B8;
          objc_copyWeak(&v50, &location);
          [v29 setPrivateNotifyStatusEvent:v49];
          objc_destroyWeak(&v50);
          objc_destroyWeak(&v57);
          objc_destroyWeak(&location);
        }

        [*(a1 + 176) connect];
      }

      else
      {
        v30 = sub_100123258();
        IsLevelEnabled = _NRLogIsLevelEnabled();

        if (IsLevelEnabled)
        {
          v32 = sub_100123258();
          _NRLogWithArgs();
        }
      }

      goto LABEL_55;
    }

    v3 = *(a1 + 64);
    if (v3 && (v4 = *(v3 + 120)) != 0)
    {
      v5 = [NSNumber numberWithUnsignedChar:4];
      v6 = [v4 objectForKeyedSubscript:v5];
    }

    else
    {
      v6 = 0;
    }

    if ([v6 count])
    {
      v13 = [v6 firstObject];
      v14 = [v13 copy];

      v15 = [v14 hostname];
      objc_opt_self();
      if (qword_100228E88 != -1)
      {
        dispatch_once(&qword_100228E88, &stru_1001FA180);
      }

      v16 = qword_100228E80;
      v17 = @"62743";
      if (!v16)
      {
        v17 = 0;
      }

      v18 = v17;
      v19 = [NWAddressEndpoint endpointWithHostname:v15 port:v18];

      if (v19)
      {
        v20 = sub_10014EDA8(*(a1 + 64));
        if (v20)
        {
          v21 = sub_100146274(1);
          [v21 setRandomizeLocalPort:1];
          [v21 setForceUDPEncapsulation:1];
          [v21 setRemoteEndpoint:v19];
          [v21 setOutgoingInterfaceName:v20];
          v52 = 0;
          v53 = 0;
          v22 = [*(a1 + 32) uuid];
          [v22 getUUIDBytes:&v52];

          v23 = [[NSData alloc] initWithBytes:&v52 length:16];
          v24 = [[NEIKEv2KeyIDIdentifier alloc] initWithKeyID:v23];
          [v2 setLocalIdentifier:v24];

          v25 = [NEIKEv2Session alloc];
          v26 = *(a1 + 24);
          v27 = [v25 initWithIKEConfig:v21 firstChildConfig:0 sessionConfig:v2 queue:v26 ipsecInterface:0 ikeSocketHandler:0 kernelSASessionName:@"terminusIKE-Pairing-Listener" packetDelegate:0];
          v28 = *(a1 + 176);
          *(a1 + 176) = v27;
        }

        else
        {
          v39 = sub_100123258();
          v40 = _NRLogIsLevelEnabled();

          if (v40)
          {
            v41 = sub_100123258();
            v44 = 2057;
            v45 = a1;
            v42 = "";
            v43 = "[NRDevicePairingCandidateContext establishControlSessionIfNeeded]";
            _NRLogWithArgs();
          }
        }

        if (!v20)
        {
          goto LABEL_55;
        }

        goto LABEL_39;
      }

      v36 = sub_100123258();
      v37 = _NRLogIsLevelEnabled();

      if (v37)
      {
        v38 = sub_100123258();
        _NRLogWithArgs();
      }
    }

    else
    {
      v33 = sub_100123258();
      v34 = _NRLogIsLevelEnabled();

      if (v34)
      {
        v35 = sub_100123258();
        _NRLogWithArgs();

LABEL_55:
        return;
      }
    }

    goto LABEL_55;
  }

  if (qword_1002291E8 != -1)
  {
    dispatch_once(&qword_1002291E8, &stru_1001FC218);
  }

  if (_NRLogIsLevelEnabled())
  {
    if (qword_1002291E8 != -1)
    {
      dispatch_once(&qword_1002291E8, &stru_1001FC218);
    }

    _NRLogWithArgs();
  }

  WeakRetained = objc_loadWeakRetained((a1 + 16));
  sub_100124A48(WeakRetained);
}

void sub_100127154(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id location)
{
  objc_destroyWeak((v23 + 32));
  objc_destroyWeak((v22 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100127188(uint64_t a1)
{
  if (!a1)
  {
    return;
  }

  v2 = *(a1 + 184);
  if (!v2)
  {
    if ((*(a1 + 10) & 1) != 0 || (sub_100123434(a1) & 1) == 0)
    {
      return;
    }

    if (qword_100229238 != -1)
    {
      dispatch_once(&qword_100229238, &stru_1001FC340);
    }

    if ((byte_100229230 & 1) == 0 && !*(a1 + 96))
    {
      if (qword_1002291E8 != -1)
      {
        dispatch_once(&qword_1002291E8, &stru_1001FC218);
      }

      if (_NRLogIsLevelEnabled())
      {
        if (qword_1002291E8 != -1)
        {
          dispatch_once(&qword_1002291E8, &stru_1001FC218);
        }

        _NRLogWithArgs();
      }

      WeakRetained = objc_loadWeakRetained((a1 + 16));
      sub_100124A48(WeakRetained);
      v2 = WeakRetained;
      goto LABEL_3;
    }

    v3 = *(a1 + 48);
    v4 = *(a1 + 272);
    if (!v4)
    {
      if (qword_1002291E8 != -1)
      {
        dispatch_once(&qword_1002291E8, &stru_1001FC218);
      }

      if (!_NRLogIsLevelEnabled())
      {
        goto LABEL_61;
      }

LABEL_21:
      v6 = sub_100123258();
      _NRLogWithArgs();
LABEL_60:

LABEL_61:
      return;
    }

    if (v3 == 3)
    {
      v5 = sub_100145EB0();
      if (!v5)
      {
        goto LABEL_34;
      }
    }

    else
    {
      if (v3 == 2)
      {
        v6 = sub_100145D78();
        if (!v6)
        {
          goto LABEL_34;
        }

        v7 = [[NEIKEv2AuthenticationProtocol alloc] initWithSecurePassword:11001];
        v8 = 1;
LABEL_38:
        v9 = sub_1001472F0(1, v6, v7);
        [v9 setSharedSecret:v4];
        if (v8)
        {
          v10 = sub_100127A30(v4, *(a1 + 256));
          if (!v10)
          {
            v36 = sub_100123258();
            IsLevelEnabled = _NRLogIsLevelEnabled();

            if (!IsLevelEnabled)
            {
              goto LABEL_59;
            }

            v35 = sub_100123258();
            goto LABEL_67;
          }

          v11 = v10;
          [v9 setPpk:v10];
          [v9 setPpkMandatory:1];
          [v9 setPpkIDType:1];
        }

        if (qword_100229238 != -1)
        {
          dispatch_once(&qword_100229238, &stru_1001FC340);
        }

        if (byte_100229230 == 1)
        {
          v51 = v7;
          v12 = sub_10014EAC4(*(a1 + 64), 5u, 0);
          if (![v12 count])
          {
            v38 = v12;
            v39 = sub_100123258();
            v40 = _NRLogIsLevelEnabled();

            if (v40)
            {
              v41 = sub_100123258();
              _NRLogWithArgs();
            }

            goto LABEL_59;
          }

          v48 = v12;
          v13 = [v12 firstObject];
          v14 = [v13 copy];

          v49 = v14;
          v15 = [v14 hostname];
          v16 = sub_100015954();
          v17 = @"62743";
          if (!v16)
          {
            v17 = 0;
          }

          v18 = v17;
          v19 = [NWAddressEndpoint endpointWithHostname:v15 port:v18];

          if (!v19)
          {
            v42 = sub_100123258();
            v43 = _NRLogIsLevelEnabled();

            if (v43)
            {
              v44 = sub_100123258();
              _NRLogWithArgs();
            }

            v7 = v51;
            goto LABEL_59;
          }

          v20 = sub_10014EDA8(*(a1 + 64));
          if (v20)
          {
            v21 = sub_100146274(1);
            [v21 setRequestPPK:v8];
            [v21 setRandomizeLocalPort:1];
            [v21 setForceUDPEncapsulation:1];
            [v21 setRemoteEndpoint:v19];
            [v21 setOutgoingInterfaceName:v20];
            v52[0] = 0;
            v52[1] = 0;
            v22 = sub_100127AA4(a1);
            [v22 getUUIDBytes:v52];

            v23 = [[NSData alloc] initWithBytes:v52 length:16];
            v24 = [[NEIKEv2KeyIDIdentifier alloc] initWithKeyID:v23];
            [v9 setLocalIdentifier:v24];

            v25 = [[NEIKEv2Session alloc] initWithIKEConfig:v21 firstChildConfig:0 sessionConfig:v9 queue:*(a1 + 24) ipsecInterface:0 ikeSocketHandler:0 kernelSASessionName:@"terminusIKE-Pairing-Auth-Listener" packetDelegate:0];
            v26 = *(a1 + 184);
            *(a1 + 184) = v25;

            v27 = v48;
          }

          else
          {
            v45 = sub_100123258();
            v46 = _NRLogIsLevelEnabled();

            v27 = v48;
            if (v46)
            {
              v47 = sub_100123258();
              _NRLogWithArgs();
            }
          }

          v7 = v51;
          if (!v20)
          {
            goto LABEL_59;
          }
        }

        else
        {
          v28 = sub_100146274(1);
          sub_100146C38(v28);
          [v28 setRequestPPK:v8];
          v29 = objc_alloc_init(NEIKEv2NULLIdentifier);
          [v9 setLocalIdentifier:v29];

          v30 = [[NEIKEv2Session alloc] initWithIKEConfig:v28 firstChildConfig:0 sessionConfig:v9 queue:*(a1 + 24) ipsecInterface:0 ikeSocketHandler:0 kernelSASessionName:@"terminusIKE-Pairing-Auth-Listener" packetDelegate:a1];
          v31 = *(a1 + 184);
          *(a1 + 184) = v30;
        }

        if (*(a1 + 184))
        {
          if (qword_1002291E8 != -1)
          {
            dispatch_once(&qword_1002291E8, &stru_1001FC218);
          }

          if (_NRLogIsLevelEnabled())
          {
            v32 = sub_100123258();
            _NRLogWithArgs();
          }

          sub_100127AD4(a1);
          [*(a1 + 184) connect];
          goto LABEL_59;
        }

        v33 = sub_100123258();
        v34 = _NRLogIsLevelEnabled();

        if (!v34)
        {
LABEL_59:

          goto LABEL_60;
        }

        v35 = sub_100123258();
LABEL_67:
        _NRLogWithArgs();

        goto LABEL_59;
      }

      if (v3 != 1 || (v5 = sub_100145E14()) == 0)
      {
LABEL_34:
        if (qword_1002291E8 != -1)
        {
          dispatch_once(&qword_1002291E8, &stru_1001FC218);
        }

        if (!_NRLogIsLevelEnabled())
        {
          goto LABEL_61;
        }

        goto LABEL_21;
      }
    }

    v6 = v5;
    v7 = [[NEIKEv2AuthenticationProtocol alloc] initWithMethod:2];
    v8 = 0;
    goto LABEL_38;
  }

LABEL_3:
}

id sub_100127A30(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  v5 = [@"Derived IKEv2 PPK for terminus device pairing" dataUsingEncoding:4];
  v6 = sub_10013EBBC(v4, v3, v5);

  return v6;
}

id sub_100127AA4(uint64_t a1)
{
  v1 = [*(a1 + 32) uuid];

  return v1;
}

void sub_100127AD4(uint64_t a1)
{
  v2 = *(a1 + 184);
  if (v2)
  {
    if (qword_1002291E8 != -1)
    {
      dispatch_once(&qword_1002291E8, &stru_1001FC218);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_1002291E8 != -1)
      {
        dispatch_once(&qword_1002291E8, &stru_1001FC218);
      }

      v5 = 3718;
      v6 = a1;
      v3 = "";
      v4 = "[NRDevicePairingCandidateContext setupIKECallbacksForPairingSession]";
      _NRLogWithArgs();
    }

    [v2 setClientQueue:{*(a1 + 24), v3, v4, v5, v6}];
    objc_initWeak(&location, a1);
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100127CC0;
    v9[3] = &unk_1001FC0E0;
    objc_copyWeak(&v10, &location);
    [v2 setStateUpdateBlock:v9];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_10012801C;
    v7[3] = &unk_1001FC108;
    objc_copyWeak(&v8, &location);
    v7[4] = a1;
    [v2 setPrivateNotifyStatusEvent:v7];
    objc_destroyWeak(&v8);
    objc_destroyWeak(&v10);
    objc_destroyWeak(&location);
  }
}

void sub_100127C94(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 56));
  _Unwind_Resume(a1);
}

void sub_100127CC0(uint64_t a1, uint64_t a2, void *a3)
{
  v25 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    if (qword_1002291E8 != -1)
    {
      dispatch_once(&qword_1002291E8, &stru_1001FC218);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_1002291E8 != -1)
      {
        dispatch_once(&qword_1002291E8, &stru_1001FC218);
      }

      _NRLogWithArgs();
    }

    if (a2 == 2)
    {
      if (sub_10012A6E4(WeakRetained))
      {
        sub_10012B340(WeakRetained);
        goto LABEL_29;
      }

      v7 = objc_loadWeakRetained(WeakRetained + 2);
      sub_10012B2F8(v7, 0xFFFFFFFFFFFFF446);
      goto LABEL_28;
    }

    if (a2 == 3 || v25)
    {
      sub_100123ADC(NRDevicePairingCandidateContext, WeakRetained + 23);
      v6 = v25;
      v7 = v6;
      if (!v6)
      {
LABEL_28:

        goto LABEL_29;
      }

      v8 = v6;
      if ([v8 code] == 24)
      {
        v9 = NEIKEv2ProtocolErrorDomain;
        v10 = [v8 domain];
        LOBYTE(v9) = [v10 isEqualToString:v9];

        if (v9)
        {
          goto LABEL_18;
        }
      }

      v11 = NEIKEv2ErrorDomain;
      v12 = v8;
      v13 = v11;
      if ([v12 code] == 8)
      {
        v14 = [v12 domain];
        v15 = [v14 isEqualToString:v13];

        if (v15)
        {
LABEL_18:

LABEL_22:
          v20 = objc_loadWeakRetained(WeakRetained + 2);
          v21 = v20;
          if (v20)
          {
            sub_1001246D8(v20, 0xFFFFFFFFFFFFF443, 0xCuLL, 0);
            sub_100129A18(v21);
          }

          goto LABEL_28;
        }
      }

      else
      {
      }

      v16 = v12;
      v17 = v13;
      if ([v16 code] == 7)
      {
        v18 = [v16 domain];
        v19 = [v18 isEqualToString:v17];

        if (v19)
        {
          goto LABEL_22;
        }
      }

      else
      {
      }

      if ((*(WeakRetained + 10) & 1) == 0)
      {
        objc_initWeak(&location, WeakRetained);
        v22 = dispatch_time(0, 1000000000);
        v23 = WeakRetained[3];
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_10012BA20;
        block[3] = &unk_1001FC730;
        v24 = v23;
        objc_copyWeak(&v27, &location);
        dispatch_after(v22, v24, block);

        objc_destroyWeak(&v27);
        objc_destroyWeak(&location);
      }

      goto LABEL_28;
    }
  }

LABEL_29:
}

void sub_10012801C(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v55 = v3;
    v5 = [v3 sortedArrayUsingComparator:&stru_1001FC4F0];
    v54 = a1;
    if (qword_1002291E8 != -1)
    {
      dispatch_once(&qword_1002291E8, &stru_1001FC218);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_1002291E8 != -1)
      {
        dispatch_once(&qword_1002291E8, &stru_1001FC218);
      }

      v51 = WeakRetained;
      LogString = v5;
      v50 = 3744;
      v48 = "";
      v49 = "[NRDevicePairingCandidateContext setupIKECallbacksForPairingSession]_block_invoke_2";
      _NRLogWithArgs();
    }

    v59 = 0u;
    v60 = 0u;
    v57 = 0u;
    v58 = 0u;
    v6 = v5;
    v7 = [v6 countByEnumeratingWithState:&v57 objects:v63 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v58;
      v56 = v6;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v58 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v12 = *(*(&v57 + 1) + 8 * i);
          v13 = [v12 notifyStatus];
          v14 = [v12 notifyData];
          if (qword_1002291E8 != -1)
          {
            dispatch_once(&qword_1002291E8, &stru_1001FC218);
          }

          if (_NRLogIsLevelEnabled())
          {
            if (qword_1002291E8 != -1)
            {
              dispatch_once(&qword_1002291E8, &stru_1001FC218);
            }

            v15 = qword_1002291E0;
            LogString = v13;
            v53 = [v14 length];
            v50 = 3304;
            v51 = WeakRetained;
            v48 = "";
            v49 = "[NRDevicePairingCandidateContext handleNotifyCodeForPairingSession:payload:]";
            _NRLogWithArgs();
          }

          if (v13 <= 50500)
          {
            if (v13 > 48606)
            {
              if ((v13 - 50351) <= 0x3E)
              {
                if (((1 << (v13 + 81)) & 0x701C000000000002) != 0)
                {
                  goto LABEL_91;
                }

                if (v13 == 50351)
                {
                  v18 = WeakRetained[31];
                  v62[0] = _NSConcreteStackBlock;
                  v62[1] = 3221225472;
                  v62[2] = sub_10012A428;
                  v62[3] = &unk_1001FC068;
                  v62[4] = WeakRetained;
                  sub_10016E894(NRDLocalDevice, v14, v18, v62);
                  goto LABEL_13;
                }
              }

              if (v13 == 48607)
              {
                v16 = [[NSString alloc] initWithData:v14 encoding:4];
                if (v16)
                {
                  if (qword_1002291E8 != -1)
                  {
                    dispatch_once(&qword_1002291E8, &stru_1001FC218);
                  }

                  if (_NRLogIsLevelEnabled())
                  {
                    if (qword_1002291E8 != -1)
                    {
                      dispatch_once(&qword_1002291E8, &stru_1001FC218);
                    }

                    v32 = qword_1002291E0;
                    v51 = WeakRetained;
                    LogString = _NRKeyCreateLogString();
                    v50 = 3417;
                    v48 = "";
                    v49 = "[NRDevicePairingCandidateContext handleNotifyCodeForPairingSession:payload:]";
                    _NRLogWithArgs();
                  }

                  sub_1001756C0(NRDLocalDevice, v16, WeakRetained[31]);
                }

                else
                {
                  v38 = sub_100123258();
                  IsLevelEnabled = _NRLogIsLevelEnabled();

                  if (IsLevelEnabled)
                  {
                    v40 = sub_100123258();
                    v51 = WeakRetained;
                    LogString = _NRKeyCreateLogString();
                    v50 = 3414;
                    v48 = "";
                    v49 = "[NRDevicePairingCandidateContext handleNotifyCodeForPairingSession:payload:]";
                    _NRLogWithArgs();
                  }
                }

                goto LABEL_121;
              }

              if (v13 == 48701)
              {
                goto LABEL_91;
              }
            }

            else
            {
              if (v13 > 48602)
              {
                if (v13 <= 48604)
                {
                  if (v13 == 48603)
                  {
                    v16 = [[NSString alloc] initWithData:v14 encoding:4];
                    if (v16)
                    {
                      if (qword_1002291E8 != -1)
                      {
                        dispatch_once(&qword_1002291E8, &stru_1001FC218);
                      }

                      if (_NRLogIsLevelEnabled())
                      {
                        if (qword_1002291E8 != -1)
                        {
                          dispatch_once(&qword_1002291E8, &stru_1001FC218);
                        }

                        v31 = qword_1002291E0;
                        v51 = WeakRetained;
                        LogString = v16;
                        v50 = 3384;
                        v48 = "";
                        v49 = "[NRDevicePairingCandidateContext handleNotifyCodeForPairingSession:payload:]";
                        _NRLogWithArgs();
                      }

                      sub_1001716D4(NRDLocalDevice, v16, WeakRetained[31]);
                      goto LABEL_121;
                    }

                    v33 = sub_100123258();
                    v34 = _NRLogIsLevelEnabled();

                    if (v34)
                    {
                      v35 = sub_100123258();
                      v51 = WeakRetained;
                      LogString = v14;
                      v50 = 3381;
                      v48 = "";
                      v49 = "[NRDevicePairingCandidateContext handleNotifyCodeForPairingSession:payload:]";
                      goto LABEL_126;
                    }
                  }

                  else
                  {
                    v16 = [[NSString alloc] initWithData:v14 encoding:4];
                    if (v16)
                    {
                      if (qword_1002291E8 != -1)
                      {
                        dispatch_once(&qword_1002291E8, &stru_1001FC218);
                      }

                      if (_NRLogIsLevelEnabled())
                      {
                        if (qword_1002291E8 != -1)
                        {
                          dispatch_once(&qword_1002291E8, &stru_1001FC218);
                        }

                        v17 = qword_1002291E0;
                        v51 = WeakRetained;
                        LogString = v16;
                        v50 = 3395;
                        v48 = "";
                        v49 = "[NRDevicePairingCandidateContext handleNotifyCodeForPairingSession:payload:]";
                        _NRLogWithArgs();
                      }

                      sub_1001718D8(NRDLocalDevice, v16, WeakRetained[31]);
                      goto LABEL_121;
                    }

                    v36 = sub_100123258();
                    v37 = _NRLogIsLevelEnabled();

                    if (v37)
                    {
                      v35 = sub_100123258();
                      v51 = WeakRetained;
                      LogString = v14;
                      v50 = 3392;
                      v48 = "";
                      v49 = "[NRDevicePairingCandidateContext handleNotifyCodeForPairingSession:payload:]";
LABEL_126:
                      _NRLogWithArgs();
                    }
                  }

LABEL_121:

                  v6 = v56;
                  goto LABEL_14;
                }

                if (v13 != 48605)
                {
                  LOBYTE(v61) = 0;
                  if ([v14 length] == 1)
                  {
                    [v14 getBytes:&v61 length:1];
                    if (qword_1002291E8 != -1)
                    {
                      dispatch_once(&qword_1002291E8, &stru_1001FC218);
                    }

                    v27 = qword_1002291E0;
                    v28 = _NRLogIsLevelEnabled();

                    if (v28)
                    {
                      if (qword_1002291E8 != -1)
                      {
                        dispatch_once(&qword_1002291E8, &stru_1001FC218);
                      }

                      v29 = qword_1002291E0;
                      v51 = WeakRetained;
                      LogString = v61;
                      v50 = 3404;
                      v48 = "";
                      v49 = "[NRDevicePairingCandidateContext handleNotifyCodeForPairingSession:payload:]";
                      _NRLogWithArgs();
                    }

                    sub_1001714EC(NRDLocalDevice, v61, WeakRetained[31]);
                  }

                  goto LABEL_14;
                }

LABEL_91:
                if (qword_1002291E8 != -1)
                {
                  dispatch_once(&qword_1002291E8, &stru_1001FC218);
                }

                if (_NRLogIsLevelEnabled())
                {
                  if (qword_1002291E8 != -1)
                  {
                    dispatch_once(&qword_1002291E8, &stru_1001FC218);
                  }

                  v51 = WeakRetained;
                  LogString = v13;
                  v50 = 3516;
                  v48 = "";
                  v49 = "[NRDevicePairingCandidateContext handleNotifyCodeForPairingSession:payload:]";
                  _NRLogWithArgs();
                }

                goto LABEL_14;
              }

              if (!v13 || v13 == 48601)
              {
                goto LABEL_91;
              }

              if (v13 == 48602)
              {
                v61 = 0;
                if ([v14 length] >= 2)
                {
                  [v14 getBytes:&v61 length:2];
                  v21 = v61;
                  if (qword_1002291E8 != -1)
                  {
                    dispatch_once(&qword_1002291E8, &stru_1001FC218);
                  }

                  v22 = bswap32(v21) >> 16;
                  v23 = qword_1002291E0;
                  v24 = _NRLogIsLevelEnabled();

                  if (v24)
                  {
                    if (qword_1002291E8 != -1)
                    {
                      dispatch_once(&qword_1002291E8, &stru_1001FC218);
                    }

                    v25 = qword_1002291E0;
                    v51 = WeakRetained;
                    LogString = v22;
                    v50 = 3373;
                    v48 = "";
                    v49 = "[NRDevicePairingCandidateContext handleNotifyCodeForPairingSession:payload:]";
                    _NRLogWithArgs();
                  }

                  sub_100171304(NRDLocalDevice, v22, WeakRetained[31]);
                  v6 = v56;
                }

                goto LABEL_14;
              }
            }

            goto LABEL_99;
          }

          if (v13 <= 50800)
          {
            if (v13 <= 50503)
            {
              if ((v13 - 50501) < 2)
              {
                goto LABEL_91;
              }

              if (v13 == 50503)
              {
                sub_100172AC4(NRDLocalDevice, v14, WeakRetained[31]);
                if (qword_1002291E8 != -1)
                {
                  dispatch_once(&qword_1002291E8, &stru_1001FC218);
                }

                if (_NRLogIsLevelEnabled())
                {
                  if (qword_1002291E8 != -1)
                  {
                    dispatch_once(&qword_1002291E8, &stru_1001FC218);
                  }

                  v26 = qword_1002291E0;
                  LogString = _NRKeyCreateLogString();
                  v53 = WeakRetained[31];
                  v50 = 3311;
                  v51 = WeakRetained;
                  v48 = "";
                  v49 = "[NRDevicePairingCandidateContext handleNotifyCodeForPairingSession:payload:]";
                  _NRLogWithArgs();
                }

                goto LABEL_13;
              }
            }

            else
            {
              if ((v13 - 50701) < 2)
              {
                goto LABEL_91;
              }

              if (v13 == 50504)
              {
                v11 = WeakRetained[31];
                v69 = _NSConcreteStackBlock;
                v70 = 3221225472;
                v71 = sub_100129CD0;
                v72 = &unk_1001FC068;
                v73 = WeakRetained;
                sub_10016F27C(NRDLocalDevice, v14, 1, v11, &v69);
LABEL_13:
                *(WeakRetained + 10) = 1;
                goto LABEL_14;
              }

              if (v13 == 50505)
              {
                v19 = WeakRetained[31];
                v64 = _NSConcreteStackBlock;
                v65 = 3221225472;
                v66 = sub_10012A07C;
                v67 = &unk_1001FC068;
                v68 = WeakRetained;
                sub_10016F524(NRDLocalDevice, v14, 1, v19, &v64);
                goto LABEL_13;
              }
            }

LABEL_99:
            if (qword_1002291E8 != -1)
            {
              dispatch_once(&qword_1002291E8, &stru_1001FC218);
            }

            if (_NRLogIsLevelEnabled())
            {
              if (qword_1002291E8 != -1)
              {
                dispatch_once(&qword_1002291E8, &stru_1001FC218);
              }

              v30 = qword_1002291E0;
              v51 = WeakRetained;
              LogString = v13;
              v50 = 3523;
              v48 = "";
              v49 = "[NRDevicePairingCandidateContext handleNotifyCodeForPairingSession:payload:]";
              _NRLogWithArgs();
            }

            goto LABEL_14;
          }

          if (v13 <= 51300)
          {
            if ((v13 - 50801) <= 0xB && ((1 << (v13 - 113)) & 0xC03) != 0 || v13 == 50901)
            {
              goto LABEL_91;
            }

            goto LABEL_99;
          }

          if (v13 > 51500)
          {
            if (v13 == 51501 || v13 == 51601)
            {
              goto LABEL_91;
            }

            goto LABEL_99;
          }

          if (v13 == 51301)
          {
            goto LABEL_91;
          }

          if (v13 != 51401)
          {
            goto LABEL_99;
          }

          LOBYTE(v61) = 0;
          [v14 getBytes:&v61 length:1];
          if (qword_1002291E8 != -1)
          {
            dispatch_once(&qword_1002291E8, &stru_1001FC218);
          }

          if (_NRLogIsLevelEnabled())
          {
            if (qword_1002291E8 != -1)
            {
              dispatch_once(&qword_1002291E8, &stru_1001FC218);
            }

            v20 = qword_1002291E0;
            v51 = WeakRetained;
            LogString = v61;
            v50 = 3425;
            v48 = "";
            v49 = "[NRDevicePairingCandidateContext handleNotifyCodeForPairingSession:payload:]";
            _NRLogWithArgs();
          }

          sub_100171ADC(NRDLocalDevice, v61 == 1, WeakRetained[31]);
LABEL_14:
        }

        v8 = [v6 countByEnumeratingWithState:&v57 objects:v63 count:16];
      }

      while (v8);
    }

    v41 = *(v54 + 32);
    if (v41 && *(v41 + 10) == 1)
    {
      if (qword_100229238 != -1)
      {
        dispatch_once(&qword_100229238, &stru_1001FC340);
      }

      if (byte_100229230 == 1)
      {
        sub_100128FC4(v41);
        sub_100123ADC(NRDevicePairingCandidateContext, (v41 + 176));
        sub_100123ADC(NRDevicePairingCandidateContext, (v41 + 184));
      }

      else
      {
        *(v41 + 11) = 1;
        v42 = [*(v41 + 96) peer];
        if (qword_1002291E8 != -1)
        {
          dispatch_once(&qword_1002291E8, &stru_1001FC218);
        }

        if (_NRLogIsLevelEnabled())
        {
          if (qword_1002291E8 != -1)
          {
            dispatch_once(&qword_1002291E8, &stru_1001FC218);
          }

          _NRLogWithArgs();
        }

        v43 = objc_loadWeakRetained((v41 + 16));
        v44 = v43;
        if (v43)
        {
          v45 = *(v43 + 14);
        }

        else
        {
          v45 = 0;
        }

        v64 = CBPairingOptionsUseMITMAuthentication;
        v65 = CBPairingOptionsDistributeIRK;
        v69 = &__kCFBooleanTrue;
        v70 = &__kCFBooleanTrue;
        v46 = v45;
        v47 = [NSDictionary dictionaryWithObjects:&v69 forKeys:&v64 count:2];
        [v46 pairPeer:v42 options:v47];

        sub_100123ADC(NRDevicePairingCandidateContext, (v41 + 176));
        sub_100123ADC(NRDevicePairingCandidateContext, (v41 + 184));
      }
    }

    v3 = v55;
  }
}