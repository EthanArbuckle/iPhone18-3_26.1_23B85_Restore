id sub_1001792F0(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (a1)
  {
    v10 = *(a1 + 24);
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;
  dispatch_assert_queue_V2(v11);

  if (v7)
  {
    if (v8)
    {
      if ([a1 shouldCreateLinkForNRUUID:v7])
      {
        if (v9)
        {
          v12 = [v9 hostname];
          objc_opt_self();
          if (qword_100228E88 != -1)
          {
            dispatch_once(&qword_100228E88, &stru_1001FA180);
          }

          v13 = qword_100228E80;
          if (v13)
          {
            v14 = @"62743";
          }

          else
          {
            v14 = 0;
          }

          v15 = v14;
          v16 = [NWAddressEndpoint endpointWithHostname:v12 port:v15];

          v9 = v16;
        }

        v17 = [NRLinkWiFi alloc];
        if (a1)
        {
          v18 = *(a1 + 24);
        }

        else
        {
          v18 = 0;
        }

        StringFromNRLinkType = v18;
        v20 = *(a1 + 104);
        if (v20)
        {
          v20 = v20[3];
        }

        v21 = v20;
        objc_opt_self();
        if (qword_100228E88 != -1)
        {
          dispatch_once(&qword_100228E88, &stru_1001FA180);
        }

        v22 = qword_100228E80;
        v23 = @"62743";
        if (!v22)
        {
          v23 = 0;
        }

        v24 = v23;
        v25 = [(NRLinkWiFi *)v17 initLinkWithQueue:StringFromNRLinkType linkDelegate:a1 nrUUID:v7 wifiInterfaceName:v21 localOuterEndpoint:v8 remoteOuterEndpoint:v9 listenerPortString:v24];

        goto LABEL_26;
      }

      if (a1)
      {
        v26 = *(a1 + 8);
      }

      StringFromNRLinkType = createStringFromNRLinkType();
      [a1 reportEvent:3200 detailsFormat:@"unsupported link type: %@", StringFromNRLinkType];
LABEL_25:
      v25 = 0;
LABEL_26:

      goto LABEL_27;
    }

    v30 = sub_1001762F4();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
LABEL_33:
      StringFromNRLinkType = sub_1001762F4();
      _NRLogWithArgs();
      goto LABEL_25;
    }
  }

  else
  {
    v28 = sub_1001762F4();
    v29 = _NRLogIsLevelEnabled();

    if (v29)
    {
      goto LABEL_33;
    }
  }

  v25 = 0;
LABEL_27:

  return v25;
}

id sub_1001795E4(uint64_t a1, char a2)
{
  result = objc_opt_self();
  if ((a2 & 1) != 0 || (*(a1 + 35) & 1) == 0)
  {
    notify_set_state(*(a1 + 44), 1uLL);
    if (qword_1002294A8 != -1)
    {
      dispatch_once(&qword_1002294A8, &stru_1001FD210);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_1002294A8 != -1)
      {
        dispatch_once(&qword_1002294A8, &stru_1001FD210);
      }

      v6 = *(a1 + 44);
      v7 = 1;
      v5 = 704;
      _NRLogWithArgs();
    }

    result = [a1 reportEvent:1031 detailsFormat:@"token: %d, supported: %d", *(a1 + 44), 1, v5, v6, v7];
    *(a1 + 35) = 1;
  }

  return result;
}

void sub_1001798F0(uint64_t a1)
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
    if (qword_1002294A8 != -1)
    {
      dispatch_once(&qword_1002294A8, &stru_1001FD210);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_1002294A8 != -1)
      {
        dispatch_once(&qword_1002294A8, &stru_1001FD210);
      }

      v4 = *(a1 + 40);
      v5 = *(a1 + 32);
      _NRLogWithArgs();
    }
  }
}

void sub_100179BE4(uint64_t a1)
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
    if (qword_1002294A8 != -1)
    {
      dispatch_once(&qword_1002294A8, &stru_1001FD210);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_1002294A8 != -1)
      {
        dispatch_once(&qword_1002294A8, &stru_1001FD210);
      }

      v4 = *(a1 + 40);
      v5 = *(a1 + 32);
      _NRLogWithArgs();
    }
  }
}

void sub_100179EF8(uint64_t a1)
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
    if (qword_1002294A8 != -1)
    {
      dispatch_once(&qword_1002294A8, &stru_1001FD210);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_1002294A8 != -1)
      {
        dispatch_once(&qword_1002294A8, &stru_1001FD210);
      }

      v4 = *(a1 + 40);
      v5 = *(a1 + 32);
      _NRLogWithArgs();
    }
  }
}

uint64_t sub_10017A860(uint64_t result, int a2)
{
  if (result)
  {
    v3 = result;
    v4 = *(result + 24);
    dispatch_assert_queue_V2(v4);

    if (qword_1002294A8 != -1)
    {
      dispatch_once(&qword_1002294A8, &stru_1001FD210);
    }

    result = _NRLogIsLevelEnabled();
    if (result)
    {
      if (qword_1002294A8 != -1)
      {
        dispatch_once(&qword_1002294A8, &stru_1001FD210);
      }

      v5 = *(v3 + 40);
      result = _NRLogWithArgs();
    }

    *(v3 + 40) = a2;
  }

  return result;
}

void sub_10017A960(id a1)
{
  v1 = _NRCopySerialQueueAttr();
  v2 = dispatch_queue_attr_make_with_qos_class(v1, QOS_CLASS_USER_INITIATED, 0);

  if (!v2)
  {
    v7 = sub_1001762F4();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v9 = sub_1001762F4();
      _NRLogWithArgs();
    }

    v3 = _os_log_pack_size();
    __chkstk_darwin();
    v10 = *__error();
    v11 = _os_log_pack_fill();
    *v11 = 136446466;
    *(v11 + 4) = "nr_dispatch_queue_create_with_qos";
    *(v11 + 12) = 1024;
    *(v11 + 14) = 25;
    sub_1001762F4();
    _NRLogAbortWithPack();
LABEL_9:
    v12 = sub_1001762F4();
    v13 = _NRLogIsLevelEnabled();

    if (v13)
    {
      v14 = sub_1001762F4();
      _NRLogWithArgs();
    }

    _os_log_pack_size();
    __chkstk_darwin();
    v15 = *__error();
    v16 = _os_log_pack_fill();
    *v16 = 136446466;
    *(v16 + 4) = "nr_dispatch_queue_create_with_qos";
    *(v16 + 12) = 2080;
    *(v16 + 14) = v3;
    sub_1001762F4();
    _NRLogAbortWithPack();
  }

  v3 = "terminusd.CoreWiFi";
  v4 = dispatch_queue_create("terminusd.CoreWiFi", v2);
  if (!v4)
  {
    goto LABEL_9;
  }

  v5 = v4;

  v6 = qword_1002294B8;
  qword_1002294B8 = v5;
}

BOOL sub_10017AE24(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_self();
  v3 = dispatch_group_create();
  if (qword_1002294B0 != -1)
  {
    dispatch_once(&qword_1002294B0, &stru_1001FD230);
  }

  dispatch_group_async(v3, qword_1002294B8, v2);

  v4 = dispatch_time(0x8000000000000000, 3000000000);
  v5 = dispatch_group_wait(v3, v4);
  if (v5)
  {
    v11 = v5;
    sub_10013C2A8(@"NRLinkManagerWiFi", @"SemaphoreTimeout", @"PerformBlockSync", 0, 0, v6, v7, v8, v12);
    v5 = v11;
  }

  v9 = v5 != 0;

  return v9;
}

uint64_t sub_10017AF00(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_10017AF18(uint64_t a1)
{
  v2 = [*(a1 + 32) interfaceName];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return _objc_release_x1(v2, v4);
}

void sub_10017AF64(uint64_t a1)
{
  objc_opt_self();
  if (qword_1002290C0 != -1)
  {
    dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
  }

  v2 = qword_1002290B8;
  v3 = *(a1 + 32);
  if (v3)
  {
    if (v2)
    {
      v4 = v2[8];
    }

    else
    {
      v4 = 0;
    }

    *(v3 + 39) = v4 & 1;
  }

  v5 = *(a1 + 32);

  sub_10017B004(v5);
}

void sub_10017B004(uint64_t a1)
{
  if (a1)
  {
    v2 = sub_10017B2A4(a1);
    v3 = objc_alloc_init(NSMutableArray);
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v4 = v2;
    v5 = [v4 countByEnumeratingWithState:&v27 objects:v31 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v28;
      do
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v28 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v11 = *(*(&v27 + 1) + 8 * i);
          if (v11)
          {
            v12 = v11[6];
          }

          else
          {
            v12 = 0;
          }

          v13 = v12;

          if (v13)
          {
            if (v11)
            {
              v14 = v11[6];
            }

            else
            {
              v14 = 0;
            }

            v15 = v14;
            [v3 addObject:v15];
          }

          if (v11)
          {
            v16 = v11[4];
          }

          else
          {
            v16 = 0;
          }

          v17 = v16;

          if (v17)
          {
            if (v11)
            {
              v18 = v11[4];
            }

            else
            {
              v18 = 0;
            }

            v19 = v18;
            [v3 addObject:v19];
          }

          if (v11)
          {
            v20 = v11[5];
          }

          else
          {
            v20 = 0;
          }

          v21 = v20;

          if (v21)
          {
            if (v11)
            {
              v9 = v11[5];
            }

            else
            {
              v9 = 0;
            }

            v10 = v9;
            [v3 addObject:v10];
          }
        }

        v6 = [v4 countByEnumeratingWithState:&v27 objects:v31 count:16];
      }

      while (v6);
    }

    if (*(a1 + 136))
    {
      [v3 addObject:?];
    }

    if (SCDynamicStoreSetNotificationKeys(*(a1 + 96), v3, 0))
    {
      v22 = a1;
      v23 = v22;
      if (*(v22 + 3) != 1004)
      {
        sub_10017B338(v22, v3);
      }
    }

    else
    {
      v24 = sub_1001762F4();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      if (!IsLevelEnabled)
      {
        goto LABEL_39;
      }

      v23 = sub_1001762F4();
      Error = SCCopyLastError();
      _NRLogWithArgs();
    }

LABEL_39:
  }
}

void *sub_10017B2A4(void *a1)
{
  v2 = objc_alloc_init(NSMutableArray);
  v3 = v2;
  if (a1[13])
  {
    [v2 addObject:?];
  }

  if (a1[14])
  {
    [v3 addObject:?];
  }

  if (a1[15])
  {
    [v3 addObject:?];
  }

  if (a1[16])
  {
    [v3 addObject:?];
  }

  return v3;
}

void sub_10017B338(uint64_t a1, void *a2)
{
  keys = a2;
  if (a1)
  {
    v3 = *(a1 + 24);
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  dispatch_assert_queue_V2(v4);

  v5 = SCDynamicStoreCopyMultiple(*(a1 + 96), keys, 0);
  if (qword_1002294A8 != -1)
  {
    dispatch_once(&qword_1002294A8, &stru_1001FD210);
  }

  v6 = qword_1002294A0;
  IsLevelEnabled = _NRLogIsLevelEnabled();

  if (IsLevelEnabled)
  {
    if (qword_1002294A8 != -1)
    {
      dispatch_once(&qword_1002294A8, &stru_1001FD210);
    }

    v8 = qword_1002294A0;
    v165 = 2331;
    v166 = v5;
    v163 = "";
    v164 = "[NRLinkManagerWiFi processSCDUpdate:]";
    _NRLogWithArgs();
  }

  v172 = v5;
  v203 = 0u;
  v204 = 0u;
  v205 = 0u;
  v206 = 0u;
  obj = sub_10017B2A4(a1);
  v9 = [obj countByEnumeratingWithState:&v203 objects:v215 count:16];
  if (v9)
  {
    v10 = *v204;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v204 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v203 + 1) + 8 * i);
        if (v12)
        {
          v13 = v12[4];
        }

        else
        {
          v13 = 0;
        }

        v14 = v13;
        v15 = [(__CFArray *)keys containsObject:v14];

        if (v15)
        {
          if (v12)
          {
            v16 = v12[7];
          }

          else
          {
            v16 = 0;
          }

          v17 = v16;
          [v17 removeAllObjects];
        }

        if (v12)
        {
          v18 = v12[5];
        }

        else
        {
          v18 = 0;
        }

        v19 = v18;
        v20 = [(__CFArray *)keys containsObject:v19];

        if (v20)
        {
          if (v12)
          {
            v21 = v12[8];
          }

          else
          {
            v21 = 0;
          }

          v22 = v21;
          [v22 removeAllObjects];
        }
      }

      v9 = [obj countByEnumeratingWithState:&v203 objects:v215 count:16];
    }

    while (v9);
  }

  v168 = objc_alloc_init(NSMutableArray);
  if (v172 && [(__CFDictionary *)v172 count])
  {
    v201 = 0u;
    v202 = 0u;
    v199 = 0u;
    v200 = 0u;
    v170 = obj;
    v174 = [v170 countByEnumeratingWithState:&v199 objects:v214 count:16];
    if (v174)
    {
      v171 = 0;
      v23 = 0;
      v169 = *v200;
      for (j = *v200; ; j = *v200)
      {
        if (j != v169)
        {
          v25 = v23;
          objc_enumerationMutation(v170);
          v23 = v25;
        }

        v26 = *(*(&v199 + 1) + 8 * v23);
        v173 = v23;
        if (v26)
        {
          v27 = *(v26 + 4);
        }

        else
        {
          v27 = 0;
        }

        v28 = v27;
        v29 = [(__CFArray *)keys containsObject:v28];

        if (v29)
        {
          if (v26)
          {
            v30 = *(v26 + 7);
            [v30 removeAllObjects];

            v31 = *(v26 + 4);
          }

          else
          {
            [0 removeAllObjects];
            v31 = 0;
          }

          v32 = v31;
          v177 = [(__CFDictionary *)v172 objectForKeyedSubscript:v32];

          v33 = [v177 objectForKeyedSubscript:kSCPropNetIPv4Addresses];
          v197 = 0u;
          v198 = 0u;
          v195 = 0u;
          v196 = 0u;
          v34 = v33;
          v35 = [v34 countByEnumeratingWithState:&v195 objects:v213 count:16];
          if (v35)
          {
            v36 = 0;
            v37 = *v196;
            for (k = *v196; ; k = *v196)
            {
              if (k != v37)
              {
                objc_enumerationMutation(v34);
              }

              v39 = *(*(&v195 + 1) + 8 * v36);
              location = 0;
              v217 = 0;
              if (inet_pton(2, [(__CFDictionary *)v39 UTF8String:v163], &location + 4) == 1)
              {
                v40 = bswap32(HIDWORD(location));
                if ((v40 & 0xFF000000) == 0 || (v40 & 0xFF000000) == 2130706432 || v40 >> 28 == 14 || HIDWORD(location) == -1 || (v40 & 0xFFFFFFF8) == -1073741824)
                {
                  if (qword_1002294A8 != -1)
                  {
                    dispatch_once(&qword_1002294A8, &stru_1001FD210);
                  }

                  v45 = qword_1002294A0;
                  v46 = _NRLogIsLevelEnabled();

                  if (v46)
                  {
                    if (qword_1002294A8 != -1)
                    {
                      dispatch_once(&qword_1002294A8, &stru_1001FD210);
                    }

                    v47 = qword_1002294A0;
                    v165 = 2369;
                    v166 = v39;
                    v163 = "";
                    v164 = "[NRLinkManagerWiFi processSCDUpdate:]";
                    _NRLogWithArgs();
                    goto LABEL_71;
                  }
                }

                else
                {
                  if (HIWORD(v40) != 43518)
                  {
                    if (v26)
                    {
LABEL_85:
                      v50 = *(v26 + 7);
                    }

                    else
                    {
                      v50 = 0;
                    }

                    v47 = v50;
                    [v47 addObject:v39];
LABEL_71:

                    goto LABEL_72;
                  }

                  if (v26 && (*(v26 + 8) & 1) != 0)
                  {
                    goto LABEL_85;
                  }

                  if (qword_1002294A8 != -1)
                  {
                    dispatch_once(&qword_1002294A8, &stru_1001FD210);
                  }

                  v48 = qword_1002294A0;
                  v49 = _NRLogIsLevelEnabled();

                  if (v49)
                  {
                    if (qword_1002294A8 != -1)
                    {
                      dispatch_once(&qword_1002294A8, &stru_1001FD210);
                    }

                    v47 = qword_1002294A0;
                    v165 = 2375;
                    v166 = v39;
                    v163 = "";
                    v164 = "[NRLinkManagerWiFi processSCDUpdate:]";
                    _NRLogWithArgs();
                    goto LABEL_71;
                  }
                }
              }

LABEL_72:
              if (++v36 >= v35)
              {
                v35 = [v34 countByEnumeratingWithState:&v195 objects:v213 count:16];
                if (!v35)
                {
                  break;
                }

                v36 = 0;
              }
            }
          }
        }

        if (v26)
        {
          v51 = *(v26 + 5);
        }

        else
        {
          v51 = 0;
        }

        v52 = v51;
        v53 = [(__CFArray *)keys containsObject:v52];

        if (v53)
        {
          if (v26)
          {
            v54 = *(v26 + 8);
            [v54 removeAllObjects];

            v55 = *(v26 + 5);
          }

          else
          {
            [0 removeAllObjects];
            v55 = 0;
          }

          v56 = v55;
          v57 = [(__CFDictionary *)v172 objectForKeyedSubscript:v56];

          v178 = [v57 objectForKeyedSubscript:kSCPropNetIPv6Addresses];
          v58 = [v57 objectForKeyedSubscript:kSCPropNetIPv6Flags];
          v59 = [v178 count];
          if (v59 != [v58 count])
          {
            if (qword_1002294A8 != -1)
            {
              dispatch_once(&qword_1002294A8, &stru_1001FD210);
            }

            v79 = qword_1002294A0;
            v80 = _NRLogIsLevelEnabled();

            if (v80)
            {
              if (qword_1002294A8 != -1)
              {
                dispatch_once(&qword_1002294A8, &stru_1001FD210);
              }

              v81 = qword_1002294A0;
              v163 = v178;
              v164 = v58;
              _NRLogWithArgs();
            }

            goto LABEL_162;
          }

          v175 = [v178 count];
          if (v175)
          {
            v60 = 0;
            while (1)
            {
              v61 = [v58 objectAtIndexedSubscript:{v60, v163, v164, v165, v166, v167}];
              v62 = [v178 objectAtIndexedSubscript:v60];
              v63 = [v61 unsignedIntValue];
              if ((v63 & 0x101F) != 0)
              {
                if (qword_1002294A8 != -1)
                {
                  dispatch_once(&qword_1002294A8, &stru_1001FD210);
                }

                v64 = qword_1002294A0;
                v65 = _NRLogIsLevelEnabled();

                if (v65)
                {
                  if (qword_1002294A8 != -1)
                  {
                    dispatch_once(&qword_1002294A8, &stru_1001FD210);
                  }

                  v66 = qword_1002294A0;
                  v166 = v62;
                  v167 = v63;
                  v165 = 2403;
                  v163 = "";
                  v164 = "[NRLinkManagerWiFi processSCDUpdate:]";
                  _NRLogWithArgs();
                }

                goto LABEL_127;
              }

              location = 0;
              v217 = 0;
              LODWORD(v219) = 0;
              v218 = 0;
              if (inet_pton(30, [(__CFDictionary *)v62 UTF8String], &v217) == 1)
              {
                break;
              }

LABEL_127:

              if (v175 == ++v60)
              {
                goto LABEL_143;
              }
            }

            v67 = v217 | HIDWORD(v217) | v218;
            if (!v67 && !HIDWORD(v218) || (HIDWORD(v218) == 0x1000000 ? (v71 = v67 == 0) : (v71 = 0), v71 || v217 == 255))
            {
              if (qword_1002294A8 != -1)
              {
                dispatch_once(&qword_1002294A8, &stru_1001FD210);
              }

              v68 = qword_1002294A0;
              v69 = _NRLogIsLevelEnabled();

              if (!v69)
              {
                goto LABEL_127;
              }

              if (qword_1002294A8 != -1)
              {
                dispatch_once(&qword_1002294A8, &stru_1001FD210);
              }

              v70 = qword_1002294A0;
              v165 = 2414;
              v166 = v62;
              v163 = "";
              v164 = "[NRLinkManagerWiFi processSCDUpdate:]";
              _NRLogWithArgs();
            }

            else if ((v217 & 0xC0FF) == 0x80FE)
            {
              if (v26 && (*(v26 + 8) & 1) != 0)
              {
                v72 = *(v26 + 3);
                v73 = [(__CFDictionary *)v62 containsString:v72];

                if ((v73 & 1) == 0)
                {
                  v74 = [NSString alloc];
                  v163 = v62;
                  v164 = *(v26 + 3);
                  v75 = [v74 initWithFormat:@"%@%%%@"];

                  v62 = v75;
                }

LABEL_124:
                v76 = *(v26 + 8);
                goto LABEL_125;
              }

              if (qword_1002294A8 != -1)
              {
                dispatch_once(&qword_1002294A8, &stru_1001FD210);
              }

              v77 = qword_1002294A0;
              v78 = _NRLogIsLevelEnabled();

              if (!v78)
              {
                goto LABEL_127;
              }

              if (qword_1002294A8 != -1)
              {
                dispatch_once(&qword_1002294A8, &stru_1001FD210);
              }

              v70 = qword_1002294A0;
              v165 = 2420;
              v166 = v62;
              v163 = "";
              v164 = "[NRLinkManagerWiFi processSCDUpdate:]";
              _NRLogWithArgs();
            }

            else
            {
              if (v26)
              {
                goto LABEL_124;
              }

              v76 = 0;
LABEL_125:
              v70 = v76;
              [v70 addObject:v62];
            }

            goto LABEL_127;
          }

LABEL_143:

          v29 = 1;
        }

        if (v26)
        {
          v82 = *(v26 + 6);
        }

        else
        {
          v82 = 0;
        }

        v83 = v82;
        v84 = [(__CFArray *)keys containsObject:v83];

        if (v84)
        {
          if (v26)
          {
            v85 = *(v26 + 6);
          }

          else
          {
            v85 = 0;
          }

          v86 = v85;
          v87 = [(__CFDictionary *)v172 objectForKeyedSubscript:v86];

          if (v87)
          {
            v88 = [v87 objectForKeyedSubscript:kSCPropNetLinkActive];
            v89 = [v88 BOOLValue];
            if (v26)
            {
              *(v26 + 9) = v89;
              if (v89)
              {
                sub_100026740(v26);
              }
            }
          }

          else if (v26)
          {
            *(v26 + 9) = 0;
          }
        }

        else if (!v29)
        {
          goto LABEL_162;
        }

        v90 = *(a1 + 128);
        v91 = v26 == v90;

        if (v26)
        {
          ++*(v26 + 4);
        }

        [v168 addObject:{v26, v163, v164}];
        v171 |= v91;
LABEL_162:
        v23 = v173 + 1;
        if (v173 + 1 >= v174)
        {
          v174 = [v170 countByEnumeratingWithState:&v199 objects:v214 count:16];
          if (!v174)
          {
            goto LABEL_173;
          }

          v23 = 0;
        }
      }
    }

    v171 = 0;
LABEL_173:

    v92 = *(a1 + 136);
    v93 = [(__CFArray *)keys containsObject:v92];

    if (v93)
    {
      *(a1 + 32) = 0;
      v94 = *(a1 + 136);
      v95 = [(__CFDictionary *)v172 objectForKeyedSubscript:v94];

      if (v95)
      {
        v96 = [v95 objectForKeyedSubscript:@"InternalInterfaces"];
        if ([v96 count])
        {
          v97 = [v95 objectForKeyedSubscript:@"Hosts"];
          v98 = [v97 objectForKeyedSubscript:@"Current"];
          if ([v98 unsignedIntValue])
          {
            if (qword_1002294A8 != -1)
            {
              dispatch_once(&qword_1002294A8, &stru_1001FD210);
            }

            v99 = qword_1002294A0;
            v100 = _NRLogIsLevelEnabled();

            if (v100)
            {
              if (qword_1002294A8 != -1)
              {
                dispatch_once(&qword_1002294A8, &stru_1001FD210);
              }

              v101 = qword_1002294A0;
              v165 = 2463;
              v163 = "";
              v164 = "[NRLinkManagerWiFi processSCDUpdate:]";
              _NRLogWithArgs();
            }

            *(a1 + 32) = 1;
          }
        }
      }
    }
  }

  else
  {
    v171 = 0;
  }

  v193 = 0u;
  v194 = 0u;
  v191 = 0u;
  v192 = 0u;
  v179 = v168;
  v102 = [v179 countByEnumeratingWithState:&v191 objects:v212 count:16];
  if (!v102)
  {
    goto LABEL_256;
  }

  v103 = *v192;
  do
  {
    for (m = 0; m != v102; m = m + 1)
    {
      if (*v192 != v103)
      {
        objc_enumerationMutation(v179);
      }

      v105 = *(*(&v191 + 1) + 8 * m);
      if (qword_1002294A8 != -1)
      {
        dispatch_once(&qword_1002294A8, &stru_1001FD210);
      }

      v106 = qword_1002294A0;
      v107 = _NRLogIsLevelEnabled();

      if (v107)
      {
        if (qword_1002294A8 != -1)
        {
          dispatch_once(&qword_1002294A8, &stru_1001FD210);
        }

        v108 = qword_1002294A0;
        v165 = 2482;
        v166 = v105;
        v163 = "";
        v164 = "[NRLinkManagerWiFi processSCDUpdate:]";
        _NRLogWithArgs();
      }

      if (sub_100026878(v105))
      {
        if (v105)
        {
          v109 = *(v105 + 7);
        }

        else
        {
          v109 = 0;
        }

        v110 = v109;
        v111 = [v110 count] == 0;

        if (v111)
        {
          if (v105)
          {
            v134 = *(v105 + 4);
          }

          else
          {
            v134 = 0;
          }

          objc_initWeak(&location, a1);
          v135 = dispatch_time(0x8000000000000000, 3000000000);
          if (a1)
          {
            v136 = *(a1 + 24);
          }

          else
          {
            v136 = 0;
          }

          v137 = v136;
          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_10017DA68;
          block[3] = &unk_1001FD1C8;
          objc_copyWeak(v190, &location);
          v190[1] = v134;
          block[4] = v105;
          block[5] = a1;
          dispatch_after(v135, v137, block);

          objc_destroyWeak(v190);
          objc_destroyWeak(&location);
        }

        else
        {
          v112 = *(a1 + 104);
          v113 = v105 == v112;

          if (v113)
          {
            sub_10017CCC4(a1);
          }

          else
          {
            v114 = *(a1 + 112);
            v115 = v105 == v114;

            if (v115)
            {
              sub_10017D158(a1);
            }

            else
            {
              v116 = *(a1 + 128);
              v117 = v105 == v116;

              if (v117)
              {
                sub_10017D65C(a1);
              }
            }
          }
        }
      }

      else
      {
        v118 = *(a1 + 104);
        v119 = v105 == v118;

        if (v119)
        {
          v124 = *(a1 + 24);
          dispatch_assert_queue_V2(v124);

          if (!*(a1 + 56))
          {
            continue;
          }

          if (qword_1002294A8 != -1)
          {
            dispatch_once(&qword_1002294A8, &stru_1001FD210);
          }

          if (_NRLogIsLevelEnabled())
          {
            if (qword_1002294A8 != -1)
            {
              dispatch_once(&qword_1002294A8, &stru_1001FD210);
            }

            v165 = 981;
            v163 = "";
            v164 = "[NRLinkManagerWiFi interfaceUnavailable]";
            _NRLogWithArgs();
          }

          v125 = *(a1 + 24);
          dispatch_assert_queue_V2(v125);

          v126 = *(a1 + 56);
          *(a1 + 56) = 0;

          v127 = *(a1 + 80);
          *(a1 + 80) = 0;

          [a1 reportEvent:11003 details:@"<nil>"];
          sub_100178760(a1);
          v128 = [*(a1 + 152) copy];
          v209 = 0u;
          v210 = 0u;
          v207 = 0u;
          v208 = 0u;
          v129 = v128;
          v130 = [v129 countByEnumeratingWithState:&v207 objects:&location count:16];
          if (v130)
          {
            v131 = *v208;
            do
            {
              for (n = 0; n != v130; n = n + 1)
              {
                if (*v208 != v131)
                {
                  objc_enumerationMutation(v129);
                }

                v133 = *(*(&v207 + 1) + 8 * n);
                if ([v133 subtype] == 101)
                {
                  [v133 setNoTransport:1];
                  [v133 cancelWithReason:@"Interface went away"];
                }
              }

              v130 = [v129 countByEnumeratingWithState:&v207 objects:&location count:16];
            }

            while (v130);
          }

          goto LABEL_228;
        }

        v120 = *(a1 + 112);
        v121 = v105 == v120;

        if (v121)
        {
          v138 = *(a1 + 24);
          dispatch_assert_queue_V2(v138);

          if (*(a1 + 64))
          {
            if (qword_1002294A8 != -1)
            {
              dispatch_once(&qword_1002294A8, &stru_1001FD210);
            }

            if (_NRLogIsLevelEnabled())
            {
              if (qword_1002294A8 != -1)
              {
                dispatch_once(&qword_1002294A8, &stru_1001FD210);
              }

              v165 = 1374;
              v163 = "";
              v164 = "[NRLinkManagerWiFi awdlUnavailable]";
              _NRLogWithArgs();
            }

            v139 = *(a1 + 24);
            dispatch_assert_queue_V2(v139);

            v140 = *(a1 + 64);
            *(a1 + 64) = 0;

            [a1 reportEvent:11005 details:@"<nil>"];
            WeakRetained = objc_loadWeakRetained((a1 + 160));
            [WeakRetained localAWDLEndpointChanged:0];

            v142 = [*(a1 + 152) copy];
            v209 = 0u;
            v210 = 0u;
            v207 = 0u;
            v208 = 0u;
            v129 = v142;
            v143 = [v129 countByEnumeratingWithState:&v207 objects:&location count:16];
            if (v143)
            {
              v144 = *v208;
              do
              {
                for (ii = 0; ii != v143; ii = ii + 1)
                {
                  if (*v208 != v144)
                  {
                    objc_enumerationMutation(v129);
                  }

                  v146 = *(*(&v207 + 1) + 8 * ii);
                  if ([v146 subtype] == 102)
                  {
                    [v146 setNoTransport:1];
                    [v146 cancelWithReason:@"Interface went away"];
                  }
                }

                v143 = [v129 countByEnumeratingWithState:&v207 objects:&location count:16];
              }

              while (v143);
            }

LABEL_228:

            continue;
          }
        }

        else
        {
          v122 = *(a1 + 128);
          v123 = v105 == v122;

          if (v123)
          {
            sub_10017DC78(a1);
          }
        }
      }
    }

    v102 = [v179 countByEnumeratingWithState:&v191 objects:v212 count:16];
  }

  while (v102);
LABEL_256:

  ++*(a1 + 144);
  *&v207 = 0;
  *(&v207 + 1) = &v207;
  *&v208 = 0x2020000000;
  BYTE8(v208) = 0;
  v147 = *(a1 + 176);
  location = _NSConcreteStackBlock;
  v217 = 3221225472;
  v218 = sub_10017E080;
  v219 = &unk_1001FD128;
  v148 = v147;
  v220 = v148;
  v221 = &v207;
  sub_10017AE24(NRLinkManagerWiFi, &location);
  v149 = *(*(&v207 + 1) + 24);

  _Block_object_dispose(&v207, 8);
  if (v149)
  {
    v150 = *(a1 + 104);
    if (sub_100026878(v150))
    {
      v151 = 1;
    }

    else if (sub_10017DF34(a1))
    {
      v151 = *(a1 + 32);
    }

    else
    {
      v151 = 0;
    }
  }

  else if (sub_10017DF34(a1))
  {
    v151 = *(a1 + 32);
  }

  else
  {
    v151 = 0;
  }

  v152 = *(a1 + 128);
  v176 = sub_100026878(v152);

  if (qword_1002294A8 != -1)
  {
    dispatch_once(&qword_1002294A8, &stru_1001FD210);
  }

  v153 = qword_1002294A0;
  v154 = _NRLogIsLevelEnabled();

  v155 = v151 & 1;
  if (v154)
  {
    if (qword_1002294A8 != -1)
    {
      dispatch_once(&qword_1002294A8, &stru_1001FD210);
    }

    v156 = qword_1002294A0;
    _NRLogWithArgs();
  }

  if (v155 != *(a1 + 37) || (v171 & 1) != 0 && v176 != *(a1 + 38))
  {
    *(a1 + 37) = v155;
    *(a1 + 38) = v176;
    v185 = 0u;
    v186 = 0u;
    v187 = 0u;
    v188 = 0u;
    v157 = *(a1 + 264);
    v158 = [v157 countByEnumeratingWithState:&v185 objects:v211 count:16];
    if (v158)
    {
      v159 = *v186;
      do
      {
        for (jj = 0; jj != v158; jj = jj + 1)
        {
          if (*v186 != v159)
          {
            objc_enumerationMutation(v157);
          }

          v161 = *(*(&v185 + 1) + 8 * jj);
          if (objc_opt_respondsToSelector())
          {
            v162 = sub_100003490();
            v182[0] = _NSConcreteStackBlock;
            v182[1] = 3221225472;
            v182[2] = sub_10017E034;
            v182[3] = &unk_1001FD1F0;
            v182[4] = v161;
            v183 = v155;
            v184 = v176;
            dispatch_async(v162, v182);
          }
        }

        v158 = [v157 countByEnumeratingWithState:&v185 objects:v211 count:16];
      }

      while (v158);
    }
  }
}

void sub_10017CCC4(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 24);
    dispatch_assert_queue_V2(v2);

    v3 = *(a1 + 104);
    if (v3)
    {
      v3 = v3[7];
    }

    v4 = v3;
    v5 = [v4 count];

    if (v5)
    {
      v6 = *(a1 + 104);
      if (!v6)
      {
        goto LABEL_13;
      }

      v7 = v6 + 7;
    }

    else
    {
      v8 = *(a1 + 104);
      if (v8)
      {
        v8 = v8[8];
      }

      v9 = v8;
      v10 = [v9 count];

      if (!v10)
      {
        goto LABEL_16;
      }

      v6 = *(a1 + 104);
      if (!v6)
      {
LABEL_13:
        v11 = v6;
        v12 = [v11 firstObject];
        v13 = [NWAddressEndpoint endpointWithHostname:v12 port:@"0"];

        if (v13)
        {
          if ([*(a1 + 56) isEqual:v13])
          {
            v14 = v13;
          }

          else
          {
            if (qword_1002294A8 != -1)
            {
              dispatch_once(&qword_1002294A8, &stru_1001FD210);
            }

            if (_NRLogIsLevelEnabled())
            {
              if (qword_1002294A8 != -1)
              {
                dispatch_once(&qword_1002294A8, &stru_1001FD210);
              }

              v31 = 953;
              v29 = "";
              v30 = "[NRLinkManagerWiFi interfaceAvailable]";
              _NRLogWithArgs();
            }

            v18 = [*(a1 + 152) copy];
            v32 = 0u;
            v33 = 0u;
            v34 = 0u;
            v35 = 0u;
            v19 = v18;
            v20 = [v19 countByEnumeratingWithState:&v32 objects:v36 count:16];
            if (v20)
            {
              v21 = v20;
              v22 = *v33;
              do
              {
                for (i = 0; i != v21; i = i + 1)
                {
                  if (*v33 != v22)
                  {
                    objc_enumerationMutation(v19);
                  }

                  v24 = *(*(&v32 + 1) + 8 * i);
                  if ([v24 subtype] == 101)
                  {
                    v25 = [v24 localOuterEndpoint];
                    v26 = [v25 isEqual:v13];

                    if ((v26 & 1) == 0)
                    {
                      [v24 setNoTransport:1];
                      [v24 cancelWithReason:@"Local endpoint changed"];
                    }
                  }
                }

                v21 = [v19 countByEnumeratingWithState:&v32 objects:v36 count:16];
              }

              while (v21);
            }

            v14 = v13;
            v27 = *(a1 + 24);
            dispatch_assert_queue_V2(v27);

            objc_storeStrong((a1 + 56), v13);
            [a1 reportEvent:11003 detailsFormat:@"%@", *(a1 + 56)];
            if (nwi_state_copy())
            {
              [v14 addressFamily];
              first_ifstate = nwi_state_get_first_ifstate();
              if ((sub_10017E0DC(a1, first_ifstate) & 1) == 0)
              {
                do
                {
                  if (!first_ifstate)
                  {
                    break;
                  }

                  first_ifstate = nwi_ifstate_get_next();
                }

                while (!sub_10017E0DC(a1, first_ifstate));
              }

              nwi_state_release();
            }

            sub_1001771D0(a1);
          }

LABEL_45:

          return;
        }

LABEL_16:
        if (qword_1002294A8 != -1)
        {
          dispatch_once(&qword_1002294A8, &stru_1001FD210);
        }

        if (_NRLogIsLevelEnabled())
        {
          if (qword_1002294A8 != -1)
          {
            dispatch_once(&qword_1002294A8, &stru_1001FD210);
          }

          _NRLogWithArgs();
        }

        v15 = *(a1 + 24);
        dispatch_assert_queue_V2(v15);

        v16 = *(a1 + 56);
        *(a1 + 56) = 0;

        v17 = *(a1 + 80);
        *(a1 + 80) = 0;

        [a1 reportEvent:11003 details:@"<nil>"];
        v14 = 0;
        goto LABEL_45;
      }

      v7 = v6 + 8;
    }

    v6 = *v7;
    goto LABEL_13;
  }
}

void sub_10017D158(id *a1)
{
  if (a1)
  {
    v2 = a1[3];
    dispatch_assert_queue_V2(v2);

    v3 = a1[14];
    if (v3)
    {
      v3 = v3[8];
    }

    v4 = v3;
    v5 = [v4 count];

    if (!v5)
    {
      goto LABEL_37;
    }

    v6 = a1[14];
    v7 = v6;
    if (v6)
    {
      v8 = *(v6 + 8);
    }

    else
    {
      v8 = 0;
    }

    v9 = v8;
    v10 = [v9 firstObject];
    objc_opt_self();
    if (qword_100228E88 != -1)
    {
      dispatch_once(&qword_100228E88, &stru_1001FA180);
    }

    v11 = qword_100228E80;
    v12 = @"62743";
    if (!v11)
    {
      v12 = 0;
    }

    v13 = v12;
    v14 = [NWAddressEndpoint endpointWithHostname:v10 port:v13];

    if (v14)
    {
      if (([a1[8] isEqual:v14] & 1) == 0)
      {
        if (qword_1002294A8 != -1)
        {
          dispatch_once(&qword_1002294A8, &stru_1001FD210);
        }

        if (_NRLogIsLevelEnabled())
        {
          if (qword_1002294A8 != -1)
          {
            dispatch_once(&qword_1002294A8, &stru_1001FD210);
          }

          v34 = 1339;
          v31 = "";
          v33 = "[NRLinkManagerWiFi awdlAvailable]";
          _NRLogWithArgs();
        }

        v35 = a1;
        v15 = [a1[19] copy];
        v36 = 0u;
        v37 = 0u;
        v38 = 0u;
        v39 = 0u;
        v16 = v15;
        v17 = [v16 countByEnumeratingWithState:&v36 objects:v40 count:16];
        if (v17)
        {
          v18 = v17;
          v19 = *v37;
          do
          {
            for (i = 0; i != v18; i = i + 1)
            {
              if (*v37 != v19)
              {
                objc_enumerationMutation(v16);
              }

              v21 = *(*(&v36 + 1) + 8 * i);
              if ([v21 subtype] == 102)
              {
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v22 = v21;
                  v23 = [v22 localOuterEndpoint];
                  v24 = [v23 isEqual:v14];

                  if ((v24 & 1) == 0)
                  {
                    [v22 setNoTransport:1];
                    [v22 cancelWithReason:@"Local endpoint changed"];
                  }
                }

                else
                {
                  if (qword_1002294A8 != -1)
                  {
                    dispatch_once(&qword_1002294A8, &stru_1001FD210);
                  }

                  if (_NRLogIsLevelEnabled())
                  {
                    if (qword_1002294A8 != -1)
                    {
                      dispatch_once(&qword_1002294A8, &stru_1001FD210);
                    }

                    v32 = v21;
                    _NRLogWithArgs();
                  }
                }
              }
            }

            v18 = [v16 countByEnumeratingWithState:&v36 objects:v40 count:16];
          }

          while (v18);
        }

        v27 = v14;
        v28 = *(v35 + 24);
        dispatch_assert_queue_V2(v28);

        v29 = *(v35 + 64);
        *(v35 + 64) = v27;
        v14 = v27;

        [v35 reportEvent:11005 detailsFormat:@"%@", *(v35 + 64)];
        WeakRetained = objc_loadWeakRetained((v35 + 160));
        [WeakRetained localAWDLEndpointChanged:v14];

        sub_100175E70(v35);
      }
    }

    else
    {
LABEL_37:
      if (qword_1002294A8 != -1)
      {
        dispatch_once(&qword_1002294A8, &stru_1001FD210);
      }

      if (_NRLogIsLevelEnabled())
      {
        if (qword_1002294A8 != -1)
        {
          dispatch_once(&qword_1002294A8, &stru_1001FD210);
        }

        _NRLogWithArgs();
      }

      v25 = a1[3];
      dispatch_assert_queue_V2(v25);

      v26 = a1[8];
      a1[8] = 0;

      [a1 reportEvent:11005 details:@"<nil>"];
      v14 = 0;
    }
  }
}

void sub_10017D65C(uint64_t a1)
{
  if (a1)
  {
    v1 = a1;
    v2 = *(a1 + 24);
    dispatch_assert_queue_V2(v2);

    if (sub_100026878(*(v1 + 128)))
    {
      if (qword_1002294A8 != -1)
      {
        dispatch_once(&qword_1002294A8, &stru_1001FD210);
      }

      if (_NRLogIsLevelEnabled())
      {
        if (qword_1002294A8 != -1)
        {
          dispatch_once(&qword_1002294A8, &stru_1001FD210);
        }

        v30 = 1140;
        v27 = "";
        v29 = "[NRLinkManagerWiFi irAvailable]";
        _NRLogWithArgs();
      }

      v3 = [*(v1 + 152) copy];
      v32 = 0u;
      v33 = 0u;
      v34 = 0u;
      v35 = 0u;
      v4 = v3;
      v5 = [v4 countByEnumeratingWithState:&v32 objects:v36 count:16];
      if (v5)
      {
        v6 = v5;
        v7 = *v33;
        v31 = v1;
        do
        {
          for (i = 0; i != v6; i = i + 1)
          {
            if (*v33 != v7)
            {
              objc_enumerationMutation(v4);
            }

            v9 = *(*(&v32 + 1) + 8 * i);
            if ([v9 subtype] == 104 && objc_msgSend(v9, "state") != 255)
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v10 = v9;
                v11 = [v10 localOuterEndpoint];
                if ([v11 addressFamily] != 2)
                {

                  goto LABEL_33;
                }

                v12 = *(v1 + 128);
                v13 = v12;
                if (v12)
                {
                  v14 = *(v12 + 7);
                }

                else
                {
                  v14 = 0;
                }

                v15 = v14;
                v16 = [v10 localOuterEndpoint];

                v17 = [v16 hostname];
                v18 = [v15 containsObject:v17];

                v1 = v31;
                if ((v18 & 1) == 0)
                {
                  goto LABEL_13;
                }

LABEL_33:
                v19 = [v10 localOuterEndpoint];
                if ([v19 addressFamily] == 30)
                {
                  v20 = *(v1 + 128);
                  v21 = v20;
                  if (v20)
                  {
                    v22 = *(v20 + 8);
                  }

                  else
                  {
                    v22 = 0;
                  }

                  v23 = v22;
                  v24 = [v10 localOuterEndpoint];

                  v25 = [v24 hostname];
                  v26 = [v23 containsObject:v25];

                  v1 = v31;
                  if (v26)
                  {
                    goto LABEL_14;
                  }

LABEL_13:
                  [v10 setNoTransport:1];
                  [v10 cancelWithReason:@"Local endpoint changed"];
                }

                else
                {
                }

LABEL_14:

                continue;
              }

              if (qword_1002294A8 != -1)
              {
                dispatch_once(&qword_1002294A8, &stru_1001FD210);
              }

              if (_NRLogIsLevelEnabled())
              {
                if (qword_1002294A8 != -1)
                {
                  dispatch_once(&qword_1002294A8, &stru_1001FD210);
                }

                v28 = v9;
                _NRLogWithArgs();
              }
            }
          }

          v6 = [v4 countByEnumeratingWithState:&v32 objects:v36 count:16];
        }

        while (v6);
      }

      sub_100177B24(v1);
    }
  }
}

uint64_t sub_10017DA68(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (!WeakRetained || WeakRetained[3] == 1004)
  {
    goto LABEL_21;
  }

  v4 = *(a1 + 32);
  if (v4)
  {
    v5 = *(v4 + 16);
  }

  else
  {
    v5 = 0;
  }

  v8 = v3;
  if (*(a1 + 56) == v5)
  {
    if (sub_100026878(v4))
    {
      v6 = *(a1 + 32);
      if (v6 == v8[13])
      {
        sub_10017CCC4(*(a1 + 40));
      }

      else if (v6 == v8[14])
      {
        sub_10017D158(*(a1 + 40));
      }

      else if (v6 == v8[16])
      {
        sub_10017D65C(*(a1 + 40));
      }

      goto LABEL_21;
    }

    if (qword_1002294A8 != -1)
    {
      dispatch_once(&qword_1002294A8, &stru_1001FD210);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_1002294A8 == -1)
      {
LABEL_20:
        _NRLogWithArgs();
        goto LABEL_21;
      }

LABEL_26:
      dispatch_once(&qword_1002294A8, &stru_1001FD210);
      goto LABEL_20;
    }
  }

  else
  {
    if (qword_1002294A8 != -1)
    {
      dispatch_once(&qword_1002294A8, &stru_1001FD210);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_1002294A8 == -1)
      {
        goto LABEL_20;
      }

      goto LABEL_26;
    }
  }

LABEL_21:

  return _objc_release_x1();
}

void sub_10017DC78(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 24);
  }

  else
  {
    v2 = 0;
  }

  v3 = v2;
  dispatch_assert_queue_V2(v3);

  if ((sub_100026878(*(a1 + 128)) & 1) == 0)
  {
    if (qword_1002294A8 != -1)
    {
      dispatch_once(&qword_1002294A8, &stru_1001FD210);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_1002294A8 != -1)
      {
        dispatch_once(&qword_1002294A8, &stru_1001FD210);
      }

      v20 = 1296;
      v18 = "";
      v19 = "[NRLinkManagerWiFi irUnavailable]";
      _NRLogWithArgs();
    }
  }

  v4 = [*(a1 + 152) copy];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v22;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v22 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v21 + 1) + 8 * i);
        if ([v10 subtype] == 104 && objc_msgSend(v10, "state") != 255)
        {
          if ((sub_100026878(*(a1 + 128)) & 1) == 0)
          {
            [v10 setNoTransport:1];
            [v10 cancelWithReason:@"Interface went away"];
          }

          v11 = *(a1 + 128);
          v12 = v11;
          if (v11)
          {
            v13 = *(v11 + 9);
          }

          else
          {
            v13 = 0;
          }

          v14 = v13;
          v15 = [v10 nrUUID];

          v16 = [v14 objectForKeyedSubscript:v15];

          v17 = [v10 remoteOuterEndpoint];
          LOBYTE(v15) = [v16 containsObject:v17];

          if ((v15 & 1) == 0)
          {
            [v10 cancelWithReason:@"peer went away"];
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v7);
  }
}

uint64_t sub_10017DF34(uint64_t a1)
{
  if (a1)
  {
    v8 = 0;
    v9 = &v8;
    v10 = 0x2020000000;
    v11 = 0;
    v1 = *(a1 + 176);
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_10017E048;
    v5[3] = &unk_1001FD128;
    v2 = v1;
    v6 = v2;
    v7 = &v8;
    sub_10017AE24(NRLinkManagerWiFi, v5);
    v3 = *(v9 + 24);

    _Block_object_dispose(&v8, 8);
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

void sub_10017E01C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_10017E048(uint64_t a1)
{
  result = [*(a1 + 32) opMode];
  *(*(*(a1 + 40) + 8) + 24) = (result & 8) != 0;
  return result;
}

void sub_10017E080(uint64_t a1)
{
  v2 = [*(a1 + 32) currentKnownNetworkProfile];
  *(*(*(a1 + 40) + 8) + 24) = [v2 isPersonalHotspot];
}

uint64_t sub_10017E0DC(void *a1, uint64_t a2)
{
  if (a1)
  {
    v4 = a1[3];
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  dispatch_assert_queue_V2(v5);

  if (!a2)
  {
    return 0;
  }

  ifname = nwi_ifstate_get_ifname();
  v7 = a1[13];
  if (v7)
  {
    v7 = v7[3];
  }

  v8 = v7;
  v9 = [[NSString alloc] initWithUTF8String:ifname];
  v10 = [v8 isEqualToString:v9];

  if (!v10)
  {
    return 0;
  }

  signature = nwi_ifstate_get_signature();
  if (signature)
  {
    signature = [[NSData alloc] initWithBytes:signature length:0];
  }

  v12 = a1[10];
  a1[10] = signature;

  return 1;
}

void sub_10017E1F0(uint64_t a1, uint64_t a2)
{
  if (a2 && *(a2 + 12) != 1004)
  {
    if (qword_1002294A8 != -1)
    {
      dispatch_once(&qword_1002294A8, &stru_1001FD210);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_1002294A8 != -1)
      {
        dispatch_once(&qword_1002294A8, &stru_1001FD210);
      }

      _NRLogWithArgs();
    }
  }
}

void sub_10017E2B4(uint64_t a1, void *a2, void *a3)
{
  if (a3)
  {
    v4 = a3;
    if (v4[3] != 1004)
    {
      v5 = v4;
      sub_10017B338(v4, a2);
      v4 = v5;
    }
  }
}

void sub_10017E314(id a1)
{
  if (MGGetBoolAnswer())
  {
    if (objc_opt_class())
    {
      byte_100229490 = 1;
    }
  }
}

uint64_t sub_10017E354(uint64_t result)
{
  if (result)
  {
    return sub_100026878(*(result + 128));
  }

  return result;
}

uint64_t sub_10017E36C(uint64_t a1, void *a2)
{
  v4 = a2;
  v5 = v4;
  if (a1)
  {
    v9 = v4;
    v6 = *(a1 + 24);
    dispatch_assert_queue_V2(v6);

    v4 = [*(a1 + 88) isEqual:v9];
    v5 = v9;
    if ((v4 & 1) == 0)
    {
      if (qword_1002294A8 != -1)
      {
        dispatch_once(&qword_1002294A8, &stru_1001FD210);
      }

      if (_NRLogIsLevelEnabled())
      {
        if (qword_1002294A8 != -1)
        {
          dispatch_once(&qword_1002294A8, &stru_1001FD210);
        }

        v8 = *(a1 + 88);
        _NRLogWithArgs();
      }

      objc_storeStrong((a1 + 88), a2);
      v5 = v9;
    }
  }

  return _objc_release_x1(v4, v5);
}

void *sub_10017E4AC(void *result)
{
  if (result)
  {
    v1 = [result hostname];
    objc_opt_self();
    if (qword_100228E88 != -1)
    {
      dispatch_once(&qword_100228E88, &stru_1001FA180);
    }

    v2 = qword_100228E80;
    v3 = @"62743";
    if (!v2)
    {
      v3 = 0;
    }

    v4 = v3;
    v5 = [NWAddressEndpoint endpointWithHostname:v1 port:v4];

    return v5;
  }

  return result;
}

void sub_10017E570(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    v7 = a1[3];
    dispatch_assert_queue_V2(v7);

    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    v8 = v5;
    v9 = [v8 countByEnumeratingWithState:&v51 objects:v56 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = 0;
      v12 = *v52;
      do
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v52 != v12)
          {
            objc_enumerationMutation(v8);
          }

          v14 = sub_10017E4AC(*(*(&v51 + 1) + 8 * i));
          if (v14)
          {
            if (!v11)
            {
              v11 = objc_alloc_init(NSMutableArray);
            }

            [v11 addObject:v14];
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v51 objects:v56 count:16];
      }

      while (v10);
    }

    else
    {
      v11 = 0;
    }

    v15 = a1[13];
    if (v15)
    {
      v15 = v15[9];
    }

    v16 = v15;
    v17 = [v16 objectForKeyedSubscript:v6];

    if (!v17 || (v18 = [[NSSet alloc] initWithArray:v11], v19 = objc_msgSend([NSSet alloc], "initWithArray:", v17), v20 = objc_msgSend(v18, "isEqualToSet:", v19), v19, v18, (v20 & 1) == 0))
    {
      v21 = sub_100163A30(NRDLocalDevice, v6);
      v46 = v17;
      if (qword_1002294A8 != -1)
      {
        dispatch_once(&qword_1002294A8, &stru_1001FD210);
      }

      if (_NRLogIsLevelEnabled())
      {
        if (qword_1002294A8 != -1)
        {
          dispatch_once(&qword_1002294A8, &stru_1001FD210);
        }

        v41 = v11;
        v42 = v21;
        v39 = 600;
        v40 = v17;
        v37 = "";
        v38 = "[NRLinkManagerWiFi setPeerWiFiEndpoints:forNRUUID:]";
        _NRLogWithArgs();
      }

      v22 = a1[13];
      v23 = v22;
      v45 = v5;
      v43 = v21;
      if (v22)
      {
        v24 = *(v22 + 9);
      }

      else
      {
        v24 = 0;
      }

      v25 = v24;
      [v25 setObject:v11 forKeyedSubscript:v6];

      v44 = a1;
      v26 = [a1[19] copy];
      v47 = 0u;
      v48 = 0u;
      v49 = 0u;
      v50 = 0u;
      v27 = v26;
      v28 = [v27 countByEnumeratingWithState:&v47 objects:v55 count:16];
      if (v28)
      {
        v29 = v28;
        v30 = *v48;
        do
        {
          for (j = 0; j != v29; j = j + 1)
          {
            if (*v48 != v30)
            {
              objc_enumerationMutation(v27);
            }

            v32 = *(*(&v47 + 1) + 8 * j);
            if ([v32 subtype] == 101)
            {
              v33 = [v32 remoteOuterEndpoint];
              v34 = [v11 containsObject:v33];

              if ((v34 & 1) == 0)
              {
                v35 = [v32 nrUUID];
                v36 = [v35 isEqual:v6];

                if (v36)
                {
                  [v32 cancelWithReason:@"Peer Wi-Fi endpoint changed"];
                }
              }
            }
          }

          v29 = [v27 countByEnumeratingWithState:&v47 objects:v55 count:16];
        }

        while (v29);
      }

      sub_1001771D0(v44);
      v5 = v45;
      v17 = v46;
    }
  }
}

id sub_10017E984(uint64_t a1, void *a2)
{
  if (a1)
  {
    v3 = a2;
    v4 = *(a1 + 24);
    dispatch_assert_queue_V2(v4);

    v5 = *(a1 + 104);
    if (v5)
    {
      v5 = v5[9];
    }

    v6 = v5;
    v7 = [v6 objectForKeyedSubscript:v3];

    v8 = [v7 firstObject];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

void sub_10017EA30(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    v7 = a1[3];
    dispatch_assert_queue_V2(v7);

    v8 = sub_10017E4AC(v5);
    v9 = a1[14];
    if (v9)
    {
      v9 = v9[9];
    }

    v10 = v9;
    v11 = [v10 objectForKeyedSubscript:v6];
    v12 = [v11 firstObject];

    if (!v12 || ([v12 isEqual:v8] & 1) == 0)
    {
      v39 = v12;
      v13 = sub_100163A30(NRDLocalDevice, v6);
      if (qword_1002294A8 != -1)
      {
        dispatch_once(&qword_1002294A8, &stru_1001FD210);
      }

      if (_NRLogIsLevelEnabled())
      {
        if (qword_1002294A8 != -1)
        {
          dispatch_once(&qword_1002294A8, &stru_1001FD210);
        }

        v14 = qword_1002294A0;
        v15 = a1[14];
        v16 = v14;
        v17 = v8;
        if (v15)
        {
          v18 = v15[9];
        }

        else
        {
          v18 = 0;
        }

        v19 = v18;
        [v19 objectForKeyedSubscript:v6];
        v36 = v17;
        v37 = v13;
        v35 = v34 = 1060;
        v32 = "";
        v33 = "[NRLinkManagerWiFi setPeerAWDLEndpoint:nrUUID:]";
        _NRLogWithArgs();

        v8 = v17;
      }

      if (v8)
      {
        v46 = v8;
        v20 = [NSArray arrayWithObjects:&v46 count:1];
      }

      else
      {
        v20 = 0;
      }

      v21 = a1[14];
      if (v21)
      {
        v21 = v21[9];
      }

      v38 = v13;
      v22 = v21;
      [v22 setObject:v20 forKeyedSubscript:v6];

      v40 = v8;
      if (v8)
      {
      }

      v23 = [a1[19] copy];
      v41 = 0u;
      v42 = 0u;
      v43 = 0u;
      v44 = 0u;
      v24 = v23;
      v25 = [v24 countByEnumeratingWithState:&v41 objects:v45 count:16];
      if (v25)
      {
        v26 = v25;
        v27 = *v42;
        do
        {
          for (i = 0; i != v26; i = i + 1)
          {
            if (*v42 != v27)
            {
              objc_enumerationMutation(v24);
            }

            v29 = *(*(&v41 + 1) + 8 * i);
            if ([v29 subtype] == 102)
            {
              v30 = [v29 nrUUID];
              v31 = [v30 isEqual:v6];

              if (v31)
              {
                [v29 cancelWithReason:@"Peer AWDL endpoint changed"];
              }
            }
          }

          v26 = [v24 countByEnumeratingWithState:&v41 objects:v45 count:16];
        }

        while (v26);
      }

      sub_100175E70(a1);
      v12 = v39;
      v8 = v40;
    }
  }

  else
  {
    v8 = v5;
  }
}

void sub_10017EDB4(uint64_t a1, int a2, void *a3)
{
  v7 = a3;
  if (a1)
  {
    v5 = *(a1 + 24);
    dispatch_assert_queue_V2(v5);

    if (*(a1 + 12) == 1003)
    {
      v6 = [*(a1 + 208) containsObject:v7];
      if (a2)
      {
        if (v6)
        {
          goto LABEL_9;
        }

        [*(a1 + 208) addObject:v7];
        goto LABEL_8;
      }

      if (v6)
      {
        [*(a1 + 208) removeObject:v7];
        if (![*(a1 + 208) count])
        {
LABEL_8:
          sub_1000050BC(a1);
        }
      }
    }
  }

LABEL_9:
}

void sub_10017EE84(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v13 = 0;
  v4 = [v2 beginActivity:v3 error:&v13];
  v5 = v13;
  if ((v4 & 1) == 0)
  {
    v6 = v5;
    v7 = *(a1 + 48);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10017F2F8;
    block[3] = &unk_1001FD0D8;
    objc_copyWeak(&v12, (a1 + 56));
    v11 = *(a1 + 40);
    dispatch_async(v7, block);
    v8 = sub_1001762F4();
    LOBYTE(v7) = _NRLogIsLevelEnabled();

    if (v7)
    {
      v9 = sub_1001762F4();
      _NRLogWithArgs();
    }

    objc_destroyWeak(&v12);
    v5 = v6;
  }
}

void sub_10017EFB4(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v13 = 0;
  v4 = [v2 beginActivity:v3 error:&v13];
  v5 = v13;
  if ((v4 & 1) == 0)
  {
    v6 = v5;
    v7 = *(a1 + 48);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10017F28C;
    block[3] = &unk_1001FD0D8;
    objc_copyWeak(&v12, (a1 + 56));
    v11 = *(a1 + 40);
    dispatch_async(v7, block);
    v8 = sub_1001762F4();
    LOBYTE(v7) = _NRLogIsLevelEnabled();

    if (v7)
    {
      v9 = sub_1001762F4();
      _NRLogWithArgs();
    }

    objc_destroyWeak(&v12);
    v5 = v6;
  }
}

void sub_10017F0F0(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v13 = 0;
  v4 = [v2 beginActivity:v3 error:&v13];
  v5 = v13;
  if ((v4 & 1) == 0)
  {
    v6 = v5;
    v7 = *(a1 + 48);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10017F220;
    block[3] = &unk_1001FD0D8;
    objc_copyWeak(&v12, (a1 + 56));
    v11 = *(a1 + 40);
    dispatch_async(v7, block);
    v8 = sub_1001762F4();
    LOBYTE(v7) = _NRLogIsLevelEnabled();

    if (v7)
    {
      v9 = sub_1001762F4();
      _NRLogWithArgs();
    }

    objc_destroyWeak(&v12);
    v5 = v6;
  }
}

void sub_10017F220(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained[23];
    if (v3 == *(a1 + 32))
    {
      WeakRetained[23] = 0;
      v4 = WeakRetained;

      WeakRetained = v4;
    }
  }
}

void sub_10017F28C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained[25];
    if (v3 == *(a1 + 32))
    {
      WeakRetained[25] = 0;
      v4 = WeakRetained;

      WeakRetained = v4;
    }
  }
}

void sub_10017F2F8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained[24];
    if (v3 == *(a1 + 32))
    {
      WeakRetained[24] = 0;
      v4 = WeakRetained;

      WeakRetained = v4;
    }
  }
}

void sub_10017F364(void *a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v9 = v3;
    if (v3)
    {
      v4 = a1[28];
      if (v4)
      {
        [v4 setObject:0 forKeyedSubscript:v9];
      }

      v5 = a1[29];
      if (v5)
      {
        [v5 setObject:0 forKeyedSubscript:v9];
      }

      sub_1000085D0(a1);
      goto LABEL_8;
    }

    v6 = sub_1001762F4();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    v3 = 0;
    if (IsLevelEnabled)
    {
      v8 = sub_1001762F4();
      _NRLogWithArgs();

LABEL_8:
      v3 = v9;
    }
  }
}

void sub_10017F43C(id *a1, uint64_t a2, void *a3, void *a4)
{
  v18 = a3;
  v7 = a4;
  if (a1)
  {
    v8 = v18;
    if (v18)
    {
      if (!a1[28])
      {
        v9 = objc_alloc_init(NSMutableDictionary);
        v10 = a1[28];
        a1[28] = v9;

        v8 = v18;
      }

      if (a1[29])
      {
        if (a2)
        {
LABEL_7:
          v11 = [NSNumber numberWithUnsignedLongLong:a2];
          [a1[28] setObject:v11 forKeyedSubscript:v18];

          v12 = v7;
LABEL_10:
          [a1[29] setObject:v12 forKeyedSubscript:v18];
          sub_1000085D0(a1);
          goto LABEL_11;
        }
      }

      else
      {
        v13 = objc_alloc_init(NSMutableDictionary);
        v14 = a1[29];
        a1[29] = v13;

        v8 = v18;
        if (a2)
        {
          goto LABEL_7;
        }
      }

      [a1[28] setObject:0 forKeyedSubscript:v8];
      v12 = 0;
      goto LABEL_10;
    }

    v15 = sub_1001762F4();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v17 = sub_1001762F4();
      _NRLogWithArgs();
    }
  }

LABEL_11:
}

void sub_10017F5C8(uint64_t a1, char a2)
{
  if (a1)
  {
    v4 = *(a1 + 24);
    dispatch_assert_queue_V2(v4);

    if (*(a1 + 216))
    {
      *(a1 + 34) = a2;

      sub_1000050BC(a1);
    }
  }
}

BOOL sub_10017F64C(_BOOL8 result)
{
  if (result)
  {
    v1 = result;
    v2 = *(result + 24);
    dispatch_assert_queue_V2(v2);

    return *(v1 + 40) > 0;
  }

  return result;
}

uint64_t sub_10017F69C(uint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = *(result + 24);
    dispatch_assert_queue_V2(v2);

    *(v1 + 48) += *(v1 + 40);
    sub_10017A860(v1, 0);
    *(v1 + 33) = 0;
    if (qword_1002294A8 != -1)
    {
      dispatch_once(&qword_1002294A8, &stru_1001FD210);
    }

    result = _NRLogIsLevelEnabled();
    if (result)
    {
      if (qword_1002294A8 != -1)
      {
        dispatch_once(&qword_1002294A8, &stru_1001FD210);
      }

      v3 = *(v1 + 40);
      v4 = *(v1 + 48);
      return _NRLogWithArgs();
    }
  }

  return result;
}

uint64_t sub_10017F7C8(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 24);
    dispatch_assert_queue_V2(v2);

    v16 = 0;
    v17 = &v16;
    v18 = 0x2020000000;
    v19 = 0;
    v3 = *(a1 + 176);
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_10017FA18;
    v13[3] = &unk_1001FD128;
    v15 = &v16;
    v4 = v3;
    v14 = v4;
    if (sub_10017AE24(NRLinkManagerWiFi, v13))
    {
      v10 = sub_1001762F4();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      if (IsLevelEnabled)
      {
        v12 = sub_1001762F4();
        _NRLogWithArgs();
      }

      v8 = 0;
    }

    else
    {
      if (qword_1002294A8 != -1)
      {
        dispatch_once(&qword_1002294A8, &stru_1001FD210);
      }

      v5 = qword_1002294A0;
      v6 = _NRLogIsLevelEnabled();

      if (v6)
      {
        if (qword_1002294A8 != -1)
        {
          dispatch_once(&qword_1002294A8, &stru_1001FD210);
        }

        v7 = qword_1002294A0;
        *(v17 + 24);
        _NRLogWithArgs();
      }

      v8 = *(v17 + 24);
    }

    _Block_object_dispose(&v16, 8);
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

void sub_10017FA00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_10017FA18(uint64_t a1)
{
  result = [*(a1 + 32) powerOn];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

void sub_10017FA4C(uint64_t a1)
{
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = [*(a1 + 32) interfaceNames];
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    do
    {
      v6 = 0;
      do
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v2);
        }

        if ([*(*(&v10 + 1) + 8 * v6) isEqualToString:*(a1 + 40)])
        {
          v7 = [*(a1 + 32) SSID];
          v8 = *(*(a1 + 48) + 8);
          v9 = *(v8 + 40);
          *(v8 + 40) = v7;
        }

        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }
}

void sub_10017FB74(uint64_t a1)
{
  v2 = [*(a1 + 32) countryCode];
  v3 = v2;
  if (v2 && [v2 compare:@"XZ" options:1])
  {
    *(*(*(a1 + 64) + 8) + 24) = 1;
  }

  else
  {
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    v6 = *(*(a1 + 56) + 8);
    obj = *(v6 + 40);
    v7 = [v4 setCompanionCountryCode:v5 error:&obj];
    objc_storeStrong((v6 + 40), obj);
    *(*(*(a1 + 48) + 8) + 24) = v7;
  }
}

uint64_t sub_10017FC20(uint64_t a1)
{
  v2 = [*(a1 + 32) countryCode];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return _objc_release_x1(v2, v4);
}

id sub_10017FC6C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (v3)
  {
    v4 = *(v3 + 37);
    LOBYTE(v3) = *(v3 + 38);
  }

  else
  {
    v4 = 0;
  }

  return [v2 didUpdatePHSState:v4 & 1 llphsActive:v3 & 1];
}

void sub_10017FCA8(uint64_t a1)
{
  v5 = [*(a1 + 32) NANData];
  v2 = [v5 interfaceName];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_10017FD10(uint64_t a1)
{
  objc_opt_self();
  if (qword_1002290C0 != -1)
  {
    dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
  }

  v2 = qword_1002290B8;
  v3 = v2;
  if (v2)
  {
    v4 = *(v2 + 12);
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  v6 = sub_10007401C(v5, 0);

  if (v6 != *(a1 + 33))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 160));
    v8 = [WeakRetained preferWiFiP2PRequestUpdated];

    if (v8)
    {
      *(a1 + 33) = v6;
    }
  }
}

void sub_10017FDF0(uint64_t a1, uint64_t a2)
{
  [a1 reportEvent:2014];
  location = 0;
  p_location = &location;
  v36 = 0x3032000000;
  v37 = sub_10017AF00;
  v38 = sub_10017AF10;
  v39 = 0;
  [@"awdl0" UTF8String];
  v4 = nw_interface_create_with_name();
  if (v4 && nw_interface_get_subtype() == 1002)
  {
    v5 = p_location[5];
    p_location[5] = @"awdl0";
  }

  else
  {
    if (qword_1002294A8 != -1)
    {
      dispatch_once(&qword_1002294A8, &stru_1001FD210);
    }

    v6 = qword_1002294A0;
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      if (qword_1002294A8 != -1)
      {
        dispatch_once(&qword_1002294A8, &stru_1001FD210);
      }

      v8 = qword_1002294A0;
      v27 = 2275;
      _NRLogWithArgs();
    }

    v9 = *(a1 + 176);
    v31[0] = _NSConcreteStackBlock;
    v31[1] = 3221225472;
    v31[2] = sub_100180378;
    v31[3] = &unk_1001FD128;
    v33 = &location;
    v5 = v9;
    v32 = v5;
    if (sub_10017AE24(NRLinkManagerWiFi, v31))
    {
      v17 = sub_1001762F4();
      v18 = _NRLogIsLevelEnabled();

      if (v18)
      {
        v19 = sub_1001762F4();
        v27 = 2282;
        _NRLogWithArgs();
      }

      goto LABEL_29;
    }
  }

  if (p_location[5])
  {
    v10 = [NRSCDInterfaceConfig alloc];
    v11 = sub_1000262B4(&v10->super.isa, p_location[5], 1);
    v12 = *(a1 + 112);
    *(a1 + 112) = v11;

    v13 = *(a1 + 112);
    if (v13)
    {
      v14 = v13[3];

      if (v14)
      {
        sub_10017B004(a1);

        _Block_object_dispose(&location, 8);

        [a1 reportEvent:2016];
        return;
      }
    }

    if (qword_1002294A8 != -1)
    {
      dispatch_once(&qword_1002294A8, &stru_1001FD210);
    }

    v20 = qword_1002294A0;
    v21 = _NRLogIsLevelEnabled();

    if (v21)
    {
      if (qword_1002294A8 != -1)
      {
        dispatch_once(&qword_1002294A8, &stru_1001FD210);
      }

      v5 = qword_1002294A0;
      v26 = p_location[5];
      _NRLogWithArgs();
      goto LABEL_29;
    }
  }

  else
  {
    v15 = sub_1001762F4();
    v16 = _NRLogIsLevelEnabled();

    if (v16)
    {
      v5 = sub_1001762F4();
      v27 = 2288;
      _NRLogWithArgs();
LABEL_29:
    }
  }

  _Block_object_dispose(&location, 8);
  sub_100180300(a1);
  if ((2 * a2) >= 0x12C)
  {
    v22 = 300;
  }

  else
  {
    v22 = (2 * a2);
  }

  [a1 reportEvent:2015 detailsFormat:@"Retry in %us (attempt: %u)", v22, a2, v27];
  objc_initWeak(&location, a1);
  v23 = dispatch_time(0, 1000000000 * v22);
  if (a1)
  {
    v24 = *(a1 + 24);
  }

  else
  {
    v24 = 0;
  }

  v25 = v24;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100180314;
  block[3] = &unk_1001FD1A0;
  objc_copyWeak(&v29, &location);
  v30 = a2;
  dispatch_after(v23, v25, block);

  objc_destroyWeak(&v29);
  objc_destroyWeak(&location);
}

void sub_1001802E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100180314(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained && WeakRetained[3] != 1004)
  {
    v3 = *(a1 + 40);
    v4 = WeakRetained;
    sub_10017FDF0();
    WeakRetained = v4;
  }
}

void sub_100180378(uint64_t a1)
{
  v5 = [*(a1 + 32) AWDL];
  v2 = [v5 interfaceName];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_1001803E0(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = v1[9];
    if (v3)
    {
      v4 = v3;
      v5 = v2[9];
      v6 = [v5 count];

      if (v6)
      {
        v7 = v2[9];
        v8 = [v7 allKeys];
        v9 = [v8 copy];

        v21 = 0u;
        v22 = 0u;
        v19 = 0u;
        v20 = 0u;
        v10 = v9;
        v11 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v20;
          do
          {
            for (i = 0; i != v12; i = i + 1)
            {
              if (*v20 != v13)
              {
                objc_enumerationMutation(v10);
              }

              v16 = *(*(&v19 + 1) + 8 * i);
              v17 = sub_100163B2C(NRDLocalDevice, v16, 0);
              v18 = v17;
              if (!v17 || (*(v17 + 48) & 2) == 0)
              {
                v15 = v2[9];
                [v15 setObject:0 forKeyedSubscript:{v16, v19}];
              }
            }

            v12 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
          }

          while (v12);
        }
      }
    }
  }
}

void sub_100180590(id *a1)
{
  if (a1)
  {
    v1 = a1;
    v2 = a1[3];
    dispatch_assert_queue_V2(v2);

    v3 = [v1[19] copy];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    obj = v3;
    v4 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v18;
      do
      {
        for (i = 0; i != v5; i = i + 1)
        {
          if (*v18 != v6)
          {
            objc_enumerationMutation(obj);
          }

          v9 = *(*(&v17 + 1) + 8 * i);
          v10 = [v9 nrUUID];
          v11 = sub_100163A30(NRDLocalDevice, v10);

          if (!v11 || (v11[48] & 2) == 0)
          {
            v8 = @"Device has been disabled %@";
LABEL_7:
            [v9 cancelWithReason:{v8, v11}];
            goto LABEL_8;
          }

          WeakRetained = objc_loadWeakRetained(v1 + 2);
          [v9 nrUUID];
          v14 = v13 = v1;
          v15 = [WeakRetained perpetualStandaloneMeadowEnabledForNRUUID:v14];

          v1 = v13;
          v8 = @"Perpetual standalone Meadow mode enabled for %@";
          if (v15)
          {
            goto LABEL_7;
          }

LABEL_8:
        }

        v5 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v5);
    }

    if ((sub_10016C59C() & 1) == 0)
    {
      sub_10017F69C(v1);
    }

    sub_1001803E0(v1[13]);
    sub_1001803E0(v1[14]);
    sub_1001803E0(v1[15]);
    sub_1001803E0(v1[16]);
    if (qword_1002294A8 != -1)
    {
      dispatch_once(&qword_1002294A8, &stru_1001FD210);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_1002294A8 != -1)
      {
        dispatch_once(&qword_1002294A8, &stru_1001FD210);
      }

      _NRLogWithArgs();
    }

    sub_1001771D0(v1);
    sub_100175E70(v1);
    sub_100177B24(v1);
  }
}

void *sub_1001808C4(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v11.receiver = a1;
  v11.super_class = NRDKeyManager;
  v1 = objc_msgSendSuper2(&v11, "init");
  if (!v1)
  {
    v6 = sub_100180A2C();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v8 = sub_100180A2C();
      _NRLogWithArgs();
    }

    _os_log_pack_size();
    v9 = *__error();
    v10 = _os_log_pack_fill();
    *v10 = 136446210;
    *(v10 + 4) = "[NRDKeyManager initInternal]";
    sub_100180A2C();
    _NRLogAbortWithPack();
    return 0;
  }

  v2 = v1;
  v3 = sub_100003490();
  v4 = v2[2];
  v2[2] = v3;

  *(v2 + 3) = -1;
  *(v2 + 8) = 4;
  return v2;
}

id sub_100180A2C()
{
  if (qword_1002294D8 != -1)
  {
    dispatch_once(&qword_1002294D8, &stru_1001FD2C0);
  }

  v1 = qword_1002294D0;

  return v1;
}

void sub_100180A80(id a1)
{
  v1 = os_log_create("com.apple.networkrelay", "");
  v2 = qword_1002294D0;
  qword_1002294D0 = v1;

  _objc_release_x1(v1, v2);
}

id sub_100180AC4()
{
  objc_opt_self();
  if (qword_1002294C8 != -1)
  {
    dispatch_once(&qword_1002294C8, &stru_1001FD250);
  }

  v0 = qword_1002294C0;

  return v0;
}

void sub_100180B1C(id a1)
{
  v1 = sub_1001808C4([NRDKeyManager alloc]);
  v2 = qword_1002294C0;
  qword_1002294C0 = v1;

  _objc_release_x1(v1, v2);
}

void sub_100180B5C(uint64_t a1)
{
  dispatch_assert_queue_V2(*(a1 + 16));
  if (*(a1 + 12) == -1)
  {
    objc_initWeak(&location, a1);
    v2 = *(a1 + 16);
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_100180DA0;
    handler[3] = &unk_1001FD278;
    objc_copyWeak(&v9, &location);
    if (notify_register_dispatch("com.apple.mobile.keybagd.lock_status", (a1 + 12), v2, handler))
    {
      if (qword_1002294D8 != -1)
      {
        dispatch_once(&qword_1002294D8, &stru_1001FD2C0);
      }

      v3 = qword_1002294D0;
      IsLevelEnabled = _NRLogIsLevelEnabled();

      if ((IsLevelEnabled & 1) == 0)
      {
        goto LABEL_13;
      }

      if (qword_1002294D8 == -1)
      {
LABEL_12:
        v7 = qword_1002294D0;
        _NRLogWithArgs();

LABEL_13:
        sub_100180DE0(a1);
        objc_destroyWeak(&v9);
        objc_destroyWeak(&location);
        return;
      }
    }

    else
    {
      if (qword_1002294D8 != -1)
      {
        dispatch_once(&qword_1002294D8, &stru_1001FD2C0);
      }

      v5 = qword_1002294D0;
      v6 = _NRLogIsLevelEnabled();

      if (!v6)
      {
        goto LABEL_13;
      }

      if (qword_1002294D8 == -1)
      {
        goto LABEL_12;
      }
    }

    dispatch_once(&qword_1002294D8, &stru_1001FD2C0);
    goto LABEL_12;
  }
}

void sub_100180D80(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100180DA0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  sub_100180DE0(WeakRetained);
}

void sub_100180DE0(uint64_t a1)
{
  if (a1)
  {
    dispatch_assert_queue_V2(*(a1 + 16));
    v2 = 1;
    *(a1 + 10) = 1;
    v3 = MKBGetDeviceLockState();
    if (v3)
    {
      sub_100181020(a1);
      if (*(a1 + 9))
      {
        v2 = 3;
      }

      else
      {
        v2 = 4;
      }
    }

    else
    {
      *(a1 + 9) = 1;
    }

    if (*(a1 + 8) == v2)
    {
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

        v16 = qword_1002294D0;
        v4 = *(a1 + 8);
        String = NRDataProtectionClassCreateString();
        if (v3 >= 8)
        {
          v6 = [[NSString alloc] initWithFormat:@"Unknown[%d]", v3];
        }

        else
        {
          v6 = *(&off_1001FD2E0 + v3);
        }

        _NRLogWithArgs();
      }
    }

    else
    {
      v7 = NRDataProtectionClassCreateString();
      v8 = NRDataProtectionClassCreateString();
      v14 = v8;
      if (v3 >= 8)
      {
        v8 = [[NSString alloc] initWithFormat:@"Unknown[%d]", v3];
        v15 = v8;
      }

      else
      {
        v15 = *(&off_1001FD2E0 + v3);
      }

      sub_100181204(v8, 5400, @"%@ -> %@ (%@)", v9, v10, v11, v12, v13, v7);

      *(a1 + 8) = v2;

      sub_100181284(a1);
    }
  }
}

void sub_100181020(uint64_t a1)
{
  dispatch_assert_queue_V2(*(a1 + 16));
  if ((*(a1 + 9) & 1) == 0)
  {
    v2 = MKBDeviceUnlockedSinceBoot();
    if (v2)
    {
      if (v2 == 1)
      {
        *(a1 + 9) = 1;
        return;
      }

      v3 = __error();
      if (*v3 == 3)
      {
        if (strerror_r(3, __strerrbuf, 0x80uLL))
        {
          __strerrbuf[0] = 0;
        }

        if (qword_1002294D8 != -1)
        {
          dispatch_once(&qword_1002294D8, &stru_1001FD2C0);
        }

        if (_NRLogIsLevelEnabled())
        {
          if (qword_1002294D8 == -1)
          {
            goto LABEL_19;
          }

          goto LABEL_21;
        }
      }

      else
      {
        if (strerror_r(*v3, __strerrbuf, 0x80uLL))
        {
          __strerrbuf[0] = 0;
        }

        if (qword_1002294D8 != -1)
        {
          dispatch_once(&qword_1002294D8, &stru_1001FD2C0);
        }

        if (_NRLogIsLevelEnabled())
        {
          if (qword_1002294D8 == -1)
          {
LABEL_19:
            _NRLogWithArgs();
            return;
          }

LABEL_21:
          dispatch_once(&qword_1002294D8, &stru_1001FD2C0);
          goto LABEL_19;
        }
      }
    }
  }
}

void sub_100181204(uint64_t a1, int a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = a3;
  v11 = [[NSString alloc] initWithFormat:v10 arguments:&a9];

  sub_1000059A8(0, a2, &stru_1001FDE68, v11);
}

void sub_100181284(uint64_t a1)
{
  dispatch_assert_queue_V2(*(a1 + 16));
  v2 = *(a1 + 8);
  if ((v2 | 2) != 3 || (v3 = *(a1 + 32)) == 0)
  {
    v5 = 0;
    v6 = *(a1 + 24);
    if (!v6)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  (*(v3 + 16))();
  v4 = *(a1 + 32);
  *(a1 + 32) = 0;

  v2 = *(a1 + 8);
  v5 = 1;
  v6 = *(a1 + 24);
  if (v6)
  {
LABEL_6:
    (*(v6 + 16))(v6, v2);
    LODWORD(v2) = *(a1 + 8);
  }

LABEL_7:
  if ((v2 | 2) == 3)
  {
    v7 = *(a1 + 40);
    if (v7)
    {
      v8 = [v7 count];
      sub_100181204(v8, 5401, @"(%llu clients)", v9, v10, v11, v12, v13, v8);
      v28 = 0u;
      v29 = 0u;
      v26 = 0u;
      v27 = 0u;
      v14 = *(a1 + 40);
      v15 = [v14 countByEnumeratingWithState:&v26 objects:v30 count:16];
      if (v15)
      {
        v16 = v15;
        v17 = *v27;
        do
        {
          for (i = 0; i != v16; i = i + 1)
          {
            if (*v27 != v17)
            {
              objc_enumerationMutation(v14);
            }

            (*(*(*(&v26 + 1) + 8 * i) + 16))();
          }

          v16 = [v14 countByEnumeratingWithState:&v26 objects:v30 count:16];
        }

        while (v16);
      }

      [*(a1 + 40) removeAllObjects];
      v19 = *(a1 + 40);
      *(a1 + 40) = 0;

      LODWORD(v2) = *(a1 + 8);
      v5 = 1;
    }

    if (v2 == 1 && (v20 = *(a1 + 48)) != 0)
    {
      v21 = 0;
      if ([v20 count])
      {
        do
        {
          if (MKBGetDeviceLockState())
          {
            break;
          }

          v22 = [*(a1 + 48) objectAtIndexedSubscript:v21];
          v22[2]();

          ++v21;
        }

        while (v21 < [*(a1 + 48) count]);
      }

      v23 = [*(a1 + 48) count];
      v24 = *(a1 + 48);
      if (v21 == v23)
      {
        [v24 removeAllObjects];
        v25 = *(a1 + 48);
        *(a1 + 48) = 0;
      }

      else
      {
        [v24 removeObjectsInRange:{0, v21}];
        if ((v5 & 1) == 0)
        {
          return;
        }
      }
    }

    else if (!v5)
    {
      return;
    }
  }

  else if ((v5 & 1) == 0)
  {
    return;
  }

  if (!*(a1 + 24) && !*(a1 + 40) && !*(a1 + 48))
  {
    sub_100181504(a1);
  }
}

uint64_t sub_100181504(uint64_t a1)
{
  dispatch_assert_queue_V2(*(a1 + 16));
  result = *(a1 + 12);
  if (result != -1)
  {
    v3 = notify_cancel(result);
    *(a1 + 12) = -1;
    if (v3)
    {
      if (qword_1002294D8 != -1)
      {
        dispatch_once(&qword_1002294D8, &stru_1001FD2C0);
      }

      result = _NRLogIsLevelEnabled();
      if (result)
      {
        if (qword_1002294D8 == -1)
        {
          return _NRLogWithArgs();
        }

        goto LABEL_14;
      }
    }

    else
    {
      if (qword_1002294D8 != -1)
      {
        dispatch_once(&qword_1002294D8, &stru_1001FD2C0);
      }

      result = _NRLogIsLevelEnabled();
      if (result)
      {
        if (qword_1002294D8 == -1)
        {
          return _NRLogWithArgs();
        }

LABEL_14:
        dispatch_once(&qword_1002294D8, &stru_1001FD2C0);
        return _NRLogWithArgs();
      }
    }
  }

  return result;
}

BOOL sub_10018165C(_BOOL8 result)
{
  if (result)
  {
    v1 = result;
    dispatch_assert_queue_V2(*(result + 16));
    if ((v1[10] & 1) == 0)
    {
      v1[10] = 1;
      if (v1[8] == 4)
      {
        sub_100181020(v1);
        if (v1[9] == 1)
        {
          v1[8] = 3;
          sub_100181284(v1);
        }
      }
    }

    return (v1[8] & 0xFD) == 1;
  }

  return result;
}

void sub_1001816DC(uint64_t a1, void *a2)
{
  v16 = a2;
  if (a1)
  {
    dispatch_assert_queue_V2(*(a1 + 16));
    if (v16)
    {
      dispatch_assert_queue_V2(*(a1 + 16));
      if ((*(a1 + 10) & 1) == 0)
      {
        *(a1 + 10) = 1;
        if (*(a1 + 8) == 4)
        {
          sub_100181020(a1);
          if (*(a1 + 9) == 1)
          {
            *(a1 + 8) = 3;
            sub_100181284(a1);
          }
        }
      }

      v3 = v16;
      if ((*(a1 + 8) & 0xFD) == 1)
      {
        v16[2]();
      }

      else
      {
        v4 = *(a1 + 40);
        if (!v4)
        {
          v5 = objc_alloc_init(NSMutableArray);
          v6 = *(a1 + 40);
          *(a1 + 40) = v5;

          v3 = v16;
          v4 = *(a1 + 40);
          if (!v4)
          {
            v11 = sub_100180A2C();
            IsLevelEnabled = _NRLogIsLevelEnabled();

            if (IsLevelEnabled)
            {
              v13 = sub_100180A2C();
              _NRLogWithArgs();
            }

            _os_log_pack_size();
            v14 = *__error();
            v15 = _os_log_pack_fill();
            *v15 = 136446210;
            *(v15 + 4) = "[NRDKeyManager runAfterClassCUnlock:]";
            sub_100180A2C();
            _NRLogAbortWithPack();
          }
        }

        v7 = objc_retainBlock(v3);
        [v4 addObject:v7];

        sub_100180B5C(a1);
      }
    }

    else
    {
      v8 = sub_100180A2C();
      v9 = _NRLogIsLevelEnabled();

      if (v9)
      {
        v10 = sub_100180A2C();
        _NRLogWithArgs();
      }
    }
  }
}

void sub_100181928(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!a1)
  {
LABEL_12:

    return;
  }

  v16 = v3;
  dispatch_assert_queue_V2(*(a1 + 16));
  if (!v16)
  {
    v6 = sub_100180A2C();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    v3 = 0;
    if (!IsLevelEnabled)
    {
      goto LABEL_12;
    }

    v8 = sub_100180A2C();
    _NRLogWithArgs();

    goto LABEL_11;
  }

  dispatch_assert_queue_V2(*(a1 + 16));
  if ((*(a1 + 10) & 1) == 0)
  {
    *(a1 + 10) = 1;
    if (*(a1 + 8) == 4)
    {
      sub_100181020(a1);
      if (*(a1 + 9) == 1)
      {
        *(a1 + 8) = 3;
        sub_100181284(a1);
      }
    }
  }

  if ((*(a1 + 8) & 0xFD) == 1)
  {
    v16[2]();
LABEL_11:
    v3 = v16;
    goto LABEL_12;
  }

  if (!*(a1 + 32))
  {
    v4 = objc_retainBlock(v16);
    v5 = *(a1 + 32);
    *(a1 + 32) = v4;

    goto LABEL_11;
  }

  v9 = sub_100180A2C();
  v10 = _NRLogIsLevelEnabled();

  if (v10)
  {
    v11 = sub_100180A2C();
    _NRLogWithArgs();
  }

  _os_log_pack_size();
  v12 = *__error();
  v13 = _os_log_pack_fill();
  *v13 = 136446210;
  *(v13 + 4) = "[NRDKeyManager runForLocalDeviceAfterClassCUnlock:]";
  sub_100180A2C();
  v14 = _NRLogAbortWithPack();
  sub_100181B44(v14, v15);
}

void sub_100181B44(uint64_t a1, void *a2)
{
  v16 = a2;
  if (a1)
  {
    dispatch_assert_queue_V2(*(a1 + 16));
    v3 = v16;
    if (v16)
    {
      v4 = *(a1 + 48);
      if (!v4)
      {
        v5 = objc_alloc_init(NSMutableArray);
        v6 = *(a1 + 48);
        *(a1 + 48) = v5;

        v3 = v16;
        v4 = *(a1 + 48);
        if (!v4)
        {
          v11 = sub_100180A2C();
          IsLevelEnabled = _NRLogIsLevelEnabled();

          if (IsLevelEnabled)
          {
            v13 = sub_100180A2C();
            _NRLogWithArgs();
          }

          _os_log_pack_size();
          v14 = *__error();
          v15 = _os_log_pack_fill();
          *v15 = 136446210;
          *(v15 + 4) = "[NRDKeyManager runAfterNextClassAUnlock:]";
          sub_100180A2C();
          _NRLogAbortWithPack();
        }
      }

      v7 = objc_retainBlock(v3);
      [v4 addObject:v7];

      sub_100180B5C(a1);
    }

    else
    {
      v8 = sub_100180A2C();
      v9 = _NRLogIsLevelEnabled();

      if (v9)
      {
        v10 = sub_100180A2C();
        _NRLogWithArgs();
      }
    }
  }
}

void sub_100181D24(uint64_t a1)
{
  if (a1)
  {
    dispatch_assert_queue_V2(*(a1 + 16));
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

      v5 = 429;
      v6 = @"local-identity";
      v3 = "";
      v4 = "[NRDKeyManager deleteEphemeralLocalIdentityFromKeychain]";
      _NRLogWithArgs();
    }

    v7[0] = kSecClass;
    v7[1] = kSecAttrLabel;
    v8[0] = kSecClassIdentity;
    v8[1] = @"local-identity";
    v7[2] = kSecAttrAccessGroup;
    v7[3] = kSecAttrAccessible;
    v8[2] = @"com.apple.terminusd.local-identity";
    v8[3] = kSecAttrAccessibleAlwaysThisDeviceOnlyPrivate;
    v1 = [NSDictionary dictionaryWithObjects:v8 forKeys:v7 count:4, v3, v4, v5, v6];
    v2 = SecItemDelete(v1);
    if (v2 == -25308)
    {
      if (qword_1002294D8 != -1)
      {
        dispatch_once(&qword_1002294D8, &stru_1001FD2C0);
      }

      if (!_NRLogIsLevelEnabled())
      {
        goto LABEL_31;
      }

      if (qword_1002294D8 == -1)
      {
        goto LABEL_30;
      }
    }

    else if (v2 == -25300)
    {
      if (qword_1002294D8 != -1)
      {
        dispatch_once(&qword_1002294D8, &stru_1001FD2C0);
      }

      if (!_NRLogIsLevelEnabled())
      {
        goto LABEL_31;
      }

      if (qword_1002294D8 == -1)
      {
        goto LABEL_30;
      }
    }

    else if (v2)
    {
      if (qword_1002294D8 != -1)
      {
        dispatch_once(&qword_1002294D8, &stru_1001FD2C0);
      }

      if (!_NRLogIsLevelEnabled())
      {
        goto LABEL_31;
      }

      if (qword_1002294D8 == -1)
      {
        goto LABEL_30;
      }
    }

    else
    {
      if (qword_1002294D8 != -1)
      {
        dispatch_once(&qword_1002294D8, &stru_1001FD2C0);
      }

      if (!_NRLogIsLevelEnabled())
      {
        goto LABEL_31;
      }

      if (qword_1002294D8 == -1)
      {
LABEL_30:
        _NRLogWithArgs();
LABEL_31:

        return;
      }
    }

    dispatch_once(&qword_1002294D8, &stru_1001FD2C0);
    goto LABEL_30;
  }
}

uint64_t sub_1001820C0(uint64_t a1, void *a2, void *a3, int a4)
{
  v7 = a2;
  v8 = a3;
  if (!a1)
  {
    goto LABEL_45;
  }

  dispatch_assert_queue_V2(*(a1 + 16));
  if (!v7)
  {
    v20 = sub_100180A2C();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v22 = sub_100180A2C();
      _NRLogWithArgs();

      v18 = 0;
      goto LABEL_42;
    }

LABEL_45:
    v18 = 0;
    goto LABEL_42;
  }

  v9 = &kSecAttrAccessibleAlwaysThisDeviceOnlyPrivate;
  if (a4 != 4)
  {
    v9 = &kSecAttrAccessibleAfterFirstUnlockThisDeviceOnly;
  }

  v10 = *v9;
  String = NRDataProtectionClassCreateString();
  if (!v10)
  {
    v23 = sub_100180A2C();
    v24 = _NRLogIsLevelEnabled();

    if (v24)
    {
      v25 = sub_100180A2C();
      _NRLogWithArgs();
    }

    v18 = 0;
    goto LABEL_41;
  }

  v12 = [NSString alloc];
  if (v8)
  {
    v13 = [v12 initWithFormat:@"%@/%@/%@/%@", @"com.apple.terminusd", v8, String, v7];
  }

  else
  {
    v13 = [v12 initWithFormat:@"%@/%@", @"com.apple.terminusd", v7, v28, v30];
  }

  v14 = v13;
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

    v31 = String;
    v32 = v14;
    v29 = 610;
    v26 = "";
    v27 = "[NRDKeyManager deleteKeyfromKeychainWithName:nrUUID:dataProtectionClass:]";
    _NRLogWithArgs();
  }

  v15 = [v14 dataUsingEncoding:{4, v26, v27, v29, v31, v32}];
  v33[0] = kSecClass;
  v33[1] = kSecAttrApplicationTag;
  v34[0] = kSecClassKey;
  v34[1] = v15;
  v33[2] = kSecAttrAccessGroup;
  v34[2] = @"com.apple.terminusd";
  v16 = [NSDictionary dictionaryWithObjects:v34 forKeys:v33 count:3];
  v17 = SecItemDelete(v16);
  if (v17 == -25308)
  {
    if (qword_1002294D8 != -1)
    {
      dispatch_once(&qword_1002294D8, &stru_1001FD2C0);
    }

    if (!_NRLogIsLevelEnabled())
    {
      goto LABEL_39;
    }

    if (qword_1002294D8 == -1)
    {
      goto LABEL_38;
    }

    goto LABEL_47;
  }

  if (v17 != -25300)
  {
    if (!v17)
    {
      if (qword_1002294D8 != -1)
      {
        dispatch_once(&qword_1002294D8, &stru_1001FD2C0);
      }

      if (_NRLogIsLevelEnabled())
      {
        if (qword_1002294D8 == -1)
        {
          goto LABEL_27;
        }

        goto LABEL_46;
      }

LABEL_28:
      v18 = 1;
      goto LABEL_40;
    }

    if (qword_1002294D8 != -1)
    {
      dispatch_once(&qword_1002294D8, &stru_1001FD2C0);
    }

    if (!_NRLogIsLevelEnabled())
    {
LABEL_39:
      v18 = 0;
      goto LABEL_40;
    }

    if (qword_1002294D8 == -1)
    {
LABEL_38:
      _NRLogWithArgs();
      goto LABEL_39;
    }

LABEL_47:
    dispatch_once(&qword_1002294D8, &stru_1001FD2C0);
    goto LABEL_38;
  }

  if (qword_1002294D8 != -1)
  {
    dispatch_once(&qword_1002294D8, &stru_1001FD2C0);
  }

  if (!_NRLogIsLevelEnabled())
  {
    goto LABEL_28;
  }

  if (qword_1002294D8 != -1)
  {
LABEL_46:
    dispatch_once(&qword_1002294D8, &stru_1001FD2C0);
  }

LABEL_27:
  _NRLogWithArgs();
  v18 = 1;
LABEL_40:

LABEL_41:
LABEL_42:

  return v18;
}

BOOL sub_1001825C0(uint64_t a1, void *a2, void *a3, void *a4, int a5, _BYTE *a6, uint64_t a7)
{
  v13 = a2;
  v14 = a3;
  v15 = a4;
  v61 = v13;
  if (!a1)
  {
    goto LABEL_85;
  }

  dispatch_assert_queue_V2(*(a1 + 16));
  if (!v14)
  {
    v34 = sub_100180A2C();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      goto LABEL_84;
    }

    goto LABEL_85;
  }

  if (!v13)
  {
    v36 = sub_100180A2C();
    v37 = _NRLogIsLevelEnabled();

    if (v37)
    {
      goto LABEL_84;
    }

    goto LABEL_85;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v38 = sub_100180A2C();
    v39 = _NRLogIsLevelEnabled();

    if (v39)
    {
LABEL_84:
      v40 = sub_100180A2C();
      _NRLogWithArgs();

      v27 = 0;
      goto LABEL_78;
    }

LABEL_85:
    v27 = 0;
    goto LABEL_78;
  }

  if (a6)
  {
    *a6 = 0;
  }

  v16 = &kSecAttrAccessibleAlwaysPrivate;
  if (a5 != 4)
  {
    v16 = &kSecAttrAccessibleAfterFirstUnlock;
  }

  v17 = &kSecAttrAccessibleAlwaysThisDeviceOnlyPrivate;
  if (a5 != 4)
  {
    v17 = &kSecAttrAccessibleAfterFirstUnlockThisDeviceOnly;
  }

  if (!a7)
  {
    v16 = v17;
  }

  v18 = *v16;
  String = NRDataProtectionClassCreateString();
  v20 = String;
  v60 = v18;
  if (!v18)
  {
    v41 = String;
    v42 = sub_100180A2C();
    v43 = _NRLogIsLevelEnabled();

    if (v43)
    {
      v44 = sub_100180A2C();
      v20 = v41;
      _NRLogWithArgs();

      v27 = 0;
    }

    else
    {
      v27 = 0;
      v20 = v41;
    }

    goto LABEL_77;
  }

  v21 = v14;
  if (v15)
  {
    v22 = [[NSString alloc] initWithFormat:@"%@/%@/%@", v15, v20, v21];

    v21 = v22;
  }

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

    v23 = qword_1002294D0;
    v53 = v21;
    v55 = [v13 length];
    v49 = 665;
    v51 = v20;
    v45 = "";
    v47 = "[NRDKeyManager saveData:toKeychainWithName:nrUUID:dataProtectionClass:keychainLocked:synchronizable:]";
    _NRLogWithArgs();
  }

  v58 = v15;
  v24 = objc_alloc_init(NSMutableDictionary);
  [v24 setObject:kSecClassGenericPassword forKeyedSubscript:kSecClass];
  [v24 setObject:@"com.apple.terminusd" forKeyedSubscript:kSecAttrService];
  [v24 setObject:v21 forKeyedSubscript:kSecAttrAccount];
  [v24 setObject:@"com.apple.terminusd" forKeyedSubscript:kSecAttrAccessGroup];
  if (a7)
  {
    [v24 setObject:kSecAttrViewHintWatchMigration forKeyedSubscript:kSecAttrSyncViewHint];
  }

  v57 = a7;
  v25 = [NSNumber numberWithBool:a7, v45, v47, v49, v51, v53, v55];
  [v24 setObject:v25 forKeyedSubscript:kSecAttrSynchronizable];

  v62[0] = kSecAttrAccessible;
  v62[1] = kSecValueData;
  v63[0] = v60;
  v63[1] = v13;
  v59 = [NSDictionary dictionaryWithObjects:v63 forKeys:v62 count:2];
  v26 = SecItemUpdate(v24, v59);
  if (v26 != -25308)
  {
    if (v26 != -25300)
    {
      if (!v26)
      {
        v15 = v58;
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
          v27 = 1;
        }

        else
        {
          v27 = 1;
        }

        goto LABEL_76;
      }

      v15 = v58;
      if (qword_1002294D8 != -1)
      {
        dispatch_once(&qword_1002294D8, &stru_1001FD2C0);
      }

      if (!_NRLogIsLevelEnabled())
      {
        goto LABEL_62;
      }

      if (qword_1002294D8 == -1)
      {
        goto LABEL_61;
      }

      goto LABEL_86;
    }

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

      v28 = qword_1002294D0;
      v54 = v21;
      v56 = [v61 length];
      v50 = 705;
      v52 = v20;
      v46 = "";
      v48 = "[NRDKeyManager saveData:toKeychainWithName:nrUUID:dataProtectionClass:keychainLocked:synchronizable:]";
      _NRLogWithArgs();

      v13 = v61;
    }

    v29 = objc_alloc_init(NSMutableDictionary);
    [v29 setObject:kSecClassGenericPassword forKeyedSubscript:kSecClass];
    [v29 setObject:@"com.apple.terminusd" forKeyedSubscript:kSecAttrService];
    [v29 setObject:v21 forKeyedSubscript:kSecAttrAccount];
    [v29 setObject:@"com.apple.terminusd" forKeyedSubscript:kSecAttrAccessGroup];
    [v29 setObject:v60 forKeyedSubscript:kSecAttrAccessible];
    [v29 setObject:v13 forKeyedSubscript:kSecValueData];
    if (v57)
    {
      [v29 setObject:kSecAttrViewHintWatchMigration forKeyedSubscript:kSecAttrSyncViewHint];
    }

    v30 = [NSNumber numberWithBool:v57, v46, v48, v50, v52, v54, v56];
    [v29 setObject:v30 forKeyedSubscript:kSecAttrSynchronizable];

    v31 = SecItemAdd(v29, 0);
    v27 = v31 == 0;
    v15 = v58;
    if (!v31)
    {
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

        v32 = qword_1002294D0;
        [v61 length];
        _NRLogWithArgs();
      }

      goto LABEL_75;
    }

    if (v31 == -25308)
    {
      if (a6)
      {
        *a6 = 1;
      }

      if (qword_1002294D8 != -1)
      {
        dispatch_once(&qword_1002294D8, &stru_1001FD2C0);
      }

      if (!_NRLogIsLevelEnabled())
      {
        goto LABEL_75;
      }

      if (qword_1002294D8 == -1)
      {
LABEL_74:
        _NRLogWithArgs();
LABEL_75:

        goto LABEL_76;
      }
    }

    else
    {
      if (qword_1002294D8 != -1)
      {
        dispatch_once(&qword_1002294D8, &stru_1001FD2C0);
      }

      if (!_NRLogIsLevelEnabled())
      {
        goto LABEL_75;
      }

      if (qword_1002294D8 == -1)
      {
        goto LABEL_74;
      }
    }

    dispatch_once(&qword_1002294D8, &stru_1001FD2C0);
    goto LABEL_74;
  }

  if (a6)
  {
    *a6 = 1;
  }

  v15 = v58;
  if (qword_1002294D8 != -1)
  {
    dispatch_once(&qword_1002294D8, &stru_1001FD2C0);
  }

  if (!_NRLogIsLevelEnabled())
  {
    goto LABEL_62;
  }

  if (qword_1002294D8 != -1)
  {
LABEL_86:
    dispatch_once(&qword_1002294D8, &stru_1001FD2C0);
  }

LABEL_61:
  _NRLogWithArgs();
LABEL_62:
  v27 = 0;
LABEL_76:

LABEL_77:
LABEL_78:

  return v27;
}

id sub_100183000(uint64_t a1, void *a2, void *a3, int a4, uint64_t a5)
{
  v9 = a2;
  v10 = a3;
  if (!a1)
  {
    goto LABEL_58;
  }

  dispatch_assert_queue_V2(*(a1 + 16));
  if (v9)
  {
    v11 = &kSecAttrAccessibleAlwaysPrivate;
    if (a4 != 4)
    {
      v11 = &kSecAttrAccessibleAfterFirstUnlock;
    }

    v12 = &kSecAttrAccessibleAlwaysThisDeviceOnlyPrivate;
    if (a4 != 4)
    {
      v12 = &kSecAttrAccessibleAfterFirstUnlockThisDeviceOnly;
    }

    if (!a5)
    {
      v11 = v12;
    }

    v13 = *v11;
    String = NRDataProtectionClassCreateString();
    if (!v13)
    {
      v31 = sub_100180A2C();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      if (IsLevelEnabled)
      {
        v33 = sub_100180A2C();
        _NRLogWithArgs();
      }

      v22 = 0;
      goto LABEL_52;
    }

    v15 = v9;
    if (v10)
    {
      v16 = [[NSString alloc] initWithFormat:@"%@/%@/%@", v10, String, v15];

      v15 = v16;
    }

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

      v38 = String;
      v39 = v15;
      v36 = 760;
      v34 = "";
      v35 = "[NRDKeyManager readDataFromKeychainWithName:nrUUID:dataProtectionClass:keychainLocked:synchronizable:]";
      _NRLogWithArgs();
    }

    v17 = objc_alloc_init(NSMutableDictionary);
    [v17 setObject:kSecClassGenericPassword forKeyedSubscript:kSecClass];
    [v17 setObject:@"com.apple.terminusd" forKeyedSubscript:kSecAttrService];
    [v17 setObject:v15 forKeyedSubscript:kSecAttrAccount];
    [v17 setObject:@"com.apple.terminusd" forKeyedSubscript:kSecAttrAccessGroup];
    [v17 setObject:&__kCFBooleanTrue forKeyedSubscript:kSecReturnData];
    if (a5)
    {
      [v17 setObject:kSecAttrViewHintWatchMigration forKeyedSubscript:kSecAttrSyncViewHint];
    }

    v18 = [NSNumber numberWithBool:a5, v34, v35, v36, v38, v39];
    [v17 setObject:v18 forKeyedSubscript:kSecAttrSynchronizable];

    result = 0;
    v19 = SecItemCopyMatching(v17, &result);
    v20 = result;
    if (!v19 && result)
    {
      result = 0;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
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

          v21 = qword_1002294D0;
          [v20 length];
          _NRLogWithArgs();
        }

        v22 = v20;
      }

      else
      {
        v27 = sub_100180A2C();
        v28 = _NRLogIsLevelEnabled();

        if (v28)
        {
          v29 = sub_100180A2C();
          v30 = objc_opt_class();
          v37 = NSStringFromClass(v30);
          _NRLogWithArgs();
        }

        v22 = 0;
      }

      goto LABEL_51;
    }

    if (result)
    {
      CFRelease(result);
      result = 0;
    }

    if (v19 == -25308)
    {
      if (qword_1002294D8 != -1)
      {
        dispatch_once(&qword_1002294D8, &stru_1001FD2C0);
      }

      if (!_NRLogIsLevelEnabled())
      {
        goto LABEL_50;
      }

      if (qword_1002294D8 == -1)
      {
        goto LABEL_49;
      }
    }

    else if (v19 == -25300)
    {
      if (qword_1002294D8 != -1)
      {
        dispatch_once(&qword_1002294D8, &stru_1001FD2C0);
      }

      if (!_NRLogIsLevelEnabled())
      {
        goto LABEL_50;
      }

      if (qword_1002294D8 == -1)
      {
LABEL_49:
        _NRLogWithArgs();
LABEL_50:
        v22 = 0;
LABEL_51:

LABEL_52:
        goto LABEL_53;
      }
    }

    else
    {
      if (qword_1002294D8 != -1)
      {
        dispatch_once(&qword_1002294D8, &stru_1001FD2C0);
      }

      if (!_NRLogIsLevelEnabled())
      {
        goto LABEL_50;
      }

      if (qword_1002294D8 == -1)
      {
        goto LABEL_49;
      }
    }

    dispatch_once(&qword_1002294D8, &stru_1001FD2C0);
    goto LABEL_49;
  }

  v24 = sub_100180A2C();
  v25 = _NRLogIsLevelEnabled();

  if (v25)
  {
    v26 = sub_100180A2C();
    _NRLogWithArgs();

    v22 = 0;
  }

  else
  {
LABEL_58:
    v22 = 0;
  }

LABEL_53:

  return v22;
}

uint64_t sub_100183644(uint64_t a1, void *a2, void *a3, int a4, _BYTE *a5, uint64_t a6)
{
  v11 = a2;
  v12 = a3;
  if (!a1)
  {
    goto LABEL_70;
  }

  dispatch_assert_queue_V2(*(a1 + 16));
  if (!v11)
  {
    v26 = sub_100180A2C();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      String = sub_100180A2C();
      _NRLogWithArgs();
      v18 = 0;
      goto LABEL_66;
    }

LABEL_70:
    v18 = 0;
    goto LABEL_67;
  }

  if (a5)
  {
    *a5 = 0;
  }

  if (a6)
  {
    switch(a4)
    {
      case 1:
        v13 = &kSecAttrAccessibleWhenUnlocked;
        break;
      case 4:
        v13 = &kSecAttrAccessibleAlwaysPrivate;
        break;
      case 3:
        v13 = &kSecAttrAccessibleAfterFirstUnlock;
        break;
      default:
LABEL_14:
        String = NRDataProtectionClassCreateString();
        goto LABEL_15;
    }
  }

  else
  {
    switch(a4)
    {
      case 1:
        v13 = &kSecAttrAccessibleWhenUnlockedThisDeviceOnly;
        break;
      case 4:
        v13 = &kSecAttrAccessibleAlwaysThisDeviceOnlyPrivate;
        break;
      case 3:
        v13 = &kSecAttrAccessibleAfterFirstUnlockThisDeviceOnly;
        break;
      default:
        goto LABEL_14;
    }
  }

  v19 = *v13;
  String = NRDataProtectionClassCreateString();
  if (v19)
  {
    v17 = v11;
    if (v12)
    {
      v20 = [[NSString alloc] initWithFormat:@"%@/%@/%@", v12, String, v17];

      v17 = v20;
    }

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

      v21 = qword_1002294D0;
      v31 = NRDataProtectionClassCreateString();
      v32 = v17;
      v30 = 830;
      v28 = "";
      v29 = "[NRDKeyManager deleteDataFromKeychainWithName:nrUUID:dataProtectionClass:keychainLocked:synchronizable:]";
      _NRLogWithArgs();
    }

    v22 = objc_alloc_init(NSMutableDictionary);
    [v22 setObject:kSecClassGenericPassword forKeyedSubscript:kSecClass];
    [v22 setObject:@"com.apple.terminusd" forKeyedSubscript:kSecAttrService];
    [v22 setObject:v17 forKeyedSubscript:kSecAttrAccount];
    [v22 setObject:@"com.apple.terminusd" forKeyedSubscript:kSecAttrAccessGroup];
    if (a6)
    {
      [v22 setObject:kSecAttrViewHintWatchMigration forKeyedSubscript:kSecAttrSyncViewHint];
    }

    v23 = [NSNumber numberWithBool:a6, v28, v29, v30, v31, v32];
    [v22 setObject:v23 forKeyedSubscript:kSecAttrSynchronizable];

    v24 = SecItemDelete(v22);
    switch(v24)
    {
      case -25308:
        if (a5)
        {
          *a5 = 1;
        }

        if (qword_1002294D8 != -1)
        {
          dispatch_once(&qword_1002294D8, &stru_1001FD2C0);
        }

        if (!_NRLogIsLevelEnabled())
        {
          goto LABEL_63;
        }

        if (qword_1002294D8 == -1)
        {
          goto LABEL_62;
        }

        break;
      case -25300:
        if (qword_1002294D8 != -1)
        {
          dispatch_once(&qword_1002294D8, &stru_1001FD2C0);
        }

        if (_NRLogIsLevelEnabled())
        {
          if (qword_1002294D8 == -1)
          {
LABEL_49:
            _NRLogWithArgs();
            v18 = 1;
LABEL_64:

LABEL_65:
            goto LABEL_66;
          }

LABEL_71:
          dispatch_once(&qword_1002294D8, &stru_1001FD2C0);
          goto LABEL_49;
        }

LABEL_50:
        v18 = 1;
        goto LABEL_64;
      case 0:
        if (qword_1002294D8 != -1)
        {
          dispatch_once(&qword_1002294D8, &stru_1001FD2C0);
        }

        if (_NRLogIsLevelEnabled())
        {
          if (qword_1002294D8 == -1)
          {
            goto LABEL_49;
          }

          goto LABEL_71;
        }

        goto LABEL_50;
      default:
        if (qword_1002294D8 != -1)
        {
          dispatch_once(&qword_1002294D8, &stru_1001FD2C0);
        }

        if (!_NRLogIsLevelEnabled())
        {
LABEL_63:
          v18 = 0;
          goto LABEL_64;
        }

        if (qword_1002294D8 == -1)
        {
LABEL_62:
          _NRLogWithArgs();
          goto LABEL_63;
        }

        break;
    }

    dispatch_once(&qword_1002294D8, &stru_1001FD2C0);
    goto LABEL_62;
  }

LABEL_15:
  if (qword_1002294D8 != -1)
  {
    dispatch_once(&qword_1002294D8, &stru_1001FD2C0);
  }

  v15 = qword_1002294D0;
  v16 = _NRLogIsLevelEnabled();

  if (v16)
  {
    if (qword_1002294D8 != -1)
    {
      dispatch_once(&qword_1002294D8, &stru_1001FD2C0);
    }

    v17 = qword_1002294D0;
    _NRLogWithArgs();
    v18 = 0;
    goto LABEL_65;
  }

  v18 = 0;
LABEL_66:

LABEL_67:
  return v18;
}

id sub_100183C7C(uint64_t a1, uint64_t a2, void *a3, int a4)
{
  v7 = a3;
  if (!a1)
  {
    goto LABEL_25;
  }

  dispatch_assert_queue_V2(*(a1 + 16));
  if (!a2)
  {
    v15 = sub_100180A2C();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      goto LABEL_24;
    }

    goto LABEL_25;
  }

  if (!v7)
  {
    v17 = sub_100180A2C();
    v18 = _NRLogIsLevelEnabled();

    if (v18)
    {
LABEL_24:
      v19 = sub_100180A2C();
      _NRLogWithArgs();

      v12 = 0;
      goto LABEL_18;
    }

LABEL_25:
    v12 = 0;
    goto LABEL_18;
  }

  v8 = sub_100183000(a1, v7, 0, a4, 0);
  if (v8)
  {
    v21 = 0;
    v9 = [NSKeyedUnarchiver unarchivedDictionaryWithKeysOfClass:objc_opt_class() objectsOfClass:a2 fromData:v8 error:&v21];
    v10 = v21;
    v11 = v10;
    if (!v9 || v10)
    {
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

        v13 = qword_1002294D0;
        String = NRDataProtectionClassCreateString();
        _NRLogWithArgs();
      }

      v12 = 0;
    }

    else
    {
      v12 = [[NSMutableDictionary alloc] initWithDictionary:v9];
    }
  }

  else
  {
    v12 = 0;
  }

LABEL_18:

  return v12;
}

id sub_100183EE0()
{
  if (qword_100229500 != -1)
  {
    dispatch_once(&qword_100229500, &stru_1001FD3A0);
  }

  v1 = qword_1002294F8;

  return v1;
}

void sub_100183F34(id a1)
{
  v1 = qword_1002294F0;
  if (!v1)
  {
    v7 = sub_100183EE0();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v9 = sub_100183EE0();
      _NRLogWithArgs();
    }

    v4 = _os_log_pack_size();
    __chkstk_darwin();
    v10 = *__error();
    v11 = _os_log_pack_fill();
    *v11 = 136446210;
    *(v11 + 4) = "nr_dispatch_queue_create_with_target";
    sub_100183EE0();
    _NRLogAbortWithPack();
LABEL_9:
    v12 = sub_100183EE0();
    v13 = _NRLogIsLevelEnabled();

    if (v13)
    {
      v14 = sub_100183EE0();
      _NRLogWithArgs();
    }

    _os_log_pack_size();
    __chkstk_darwin();
    v15 = *__error();
    v16 = _os_log_pack_fill();
    *v16 = 136446466;
    *(v16 + 4) = "nr_dispatch_queue_create_with_target";
    *(v16 + 12) = 2080;
    *(v16 + 14) = v4;
    sub_100183EE0();
    _NRLogAbortWithPack();
  }

  v2 = v1;
  v3 = _NRCopySerialQueueAttr();
  v4 = "terminusd.main.root";
  v5 = dispatch_queue_create_with_target_V2("terminusd.main.root", v3, v2);

  if (!v5)
  {
    goto LABEL_9;
  }

  v6 = qword_1002294E8;
  qword_1002294E8 = v5;
}

void sub_1001841B0(id a1)
{
  v1 = os_log_create("com.apple.networkrelay", "");
  v2 = qword_1002294F8;
  qword_1002294F8 = v1;

  _objc_release_x1(v1, v2);
}

void start()
{
  if (qword_100229500 != -1)
  {
    dispatch_once(&qword_100229500, &stru_1001FD3A0);
  }

  v0 = &qword_100229000;
  if (!_NRLogIsLevelEnabled())
  {
    goto LABEL_8;
  }

  if (qword_100229500 != -1)
  {
    goto LABEL_13;
  }

  while (1)
  {
    v1 = v0[159];
    if (qword_1002290A0 != -1)
    {
      dispatch_once(&qword_1002290A0, &stru_1001FB258);
    }

    v8 = qword_100229098;
    _NRLogWithArgs();

LABEL_8:
    v2 = sub_100003490();
    if (v2)
    {
      dispatch_async(v2, &stru_1001FD360);
      dispatch_main();
    }

    v3 = sub_100183EE0();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v5 = sub_100183EE0();
      _NRLogWithArgs();
    }

    _os_log_pack_size();
    v0 = (&v9 - ((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0));
    v6 = *__error();
    v7 = _os_log_pack_fill();
    *v7 = 136446210;
    *(v7 + 4) = "main";
    sub_100183EE0();
    _NRLogAbortWithPack();
LABEL_13:
    dispatch_once(&qword_100229500, &stru_1001FD3A0);
  }
}

void sub_1001843E8(id a1)
{
  v48 = xmmword_1001964C0;
  if (setrlimit(8, &v48))
  {
    v1 = __error();
    v2 = *v1;
    if (strerror_r(*v1, __strerrbuf, 0x80uLL))
    {
      __strerrbuf[0] = 0;
    }

    if (qword_100229500 != -1)
    {
      dispatch_once(&qword_100229500, &stru_1001FD3A0);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_100229500 != -1)
      {
        dispatch_once(&qword_100229500, &stru_1001FD3A0);
      }

      v34 = v2;
      v39 = __strerrbuf;
      v30 = 1024;
      _NRLogWithArgs();
    }
  }

  LOBYTE(v48.rlim_cur) = 0;
  v3 = [NSFileManager defaultManager:v30];
  v4 = [v3 fileExistsAtPath:@"/var/mobile/Library/terminus" isDirectory:&v48];

  if (!v4 || LOBYTE(v48.rlim_cur) != 1)
  {
    v5 = @"/var/mobile/Library/terminus";
    if (![@"/var/mobile/Library/terminus" length])
    {
      v27 = sub_10013A310();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      if (IsLevelEnabled)
      {
        v29 = sub_10013A310();
        v31 = "NRDCreateDirectoryPath";
        _NRLogWithArgs();
      }

      goto LABEL_38;
    }

    if (([@"/var/mobile/Library/terminus" containsString:@".."] & 1) != 0 || (objc_msgSend(@"/var/mobile/Library/terminus", "hasPrefix:", @"/") & 1) == 0)
    {
      if (qword_1002292D8 != -1)
      {
        dispatch_once(&qword_1002292D8, &stru_1001FC510);
      }

      if (!_NRLogIsLevelEnabled())
      {
        goto LABEL_38;
      }

      if (qword_1002292D8 != -1)
      {
        dispatch_once(&qword_1002292D8, &stru_1001FC510);
      }

      v31 = @"/var/mobile/Library/terminus";
    }

    else
    {
      if ((mkdir([@"/var/mobile/Library/terminus" UTF8String], 0x1EDu) & 0x80000000) == 0 || *__error() == 17)
      {
        goto LABEL_38;
      }

      v6 = __error();
      v7 = *v6;
      if (strerror_r(*v6, __strerrbuf, 0x80uLL))
      {
        __strerrbuf[0] = 0;
      }

      if (qword_1002292D8 != -1)
      {
        dispatch_once(&qword_1002292D8, &stru_1001FC510);
      }

      if (!_NRLogIsLevelEnabled())
      {
        goto LABEL_38;
      }

      if (qword_1002292D8 != -1)
      {
        dispatch_once(&qword_1002292D8, &stru_1001FC510);
      }

      v35 = v7;
      v40 = __strerrbuf;
      v31 = @"/var/mobile/Library/terminus";
    }

    _NRLogWithArgs();
LABEL_38:

    goto LABEL_39;
  }

  if (qword_100229500 != -1)
  {
    dispatch_once(&qword_100229500, &stru_1001FD3A0);
  }

  if (_NRLogIsLevelEnabled())
  {
    if (qword_100229500 != -1)
    {
      dispatch_once(&qword_100229500, &stru_1001FD3A0);
    }

    v40 = 130;
    v31 = "";
    v35 = "main_block_invoke";
    _NRLogWithArgs();
  }

LABEL_39:
  objc_opt_self();
  if (qword_1002294C8 != -1)
  {
    dispatch_once(&qword_1002294C8, &stru_1001FD250);
  }

  v8 = qword_1002294C0;
  sub_1001816DC(v8, &stru_1001FD380);

  os_unfair_lock_lock(&unk_100229090);
  v9 = [[NSMutableDictionary alloc] initWithContentsOfFile:@"/var/mobile/Library/terminus/com.apple.terminus.plist"];
  if (!v9)
  {
    v26 = [[NSMutableDictionary alloc] initWithContentsOfFile:@"/Library/Preferences/com.apple.terminus.plist"];
    if (!v26)
    {
      v9 = objc_alloc_init(NSMutableDictionary);
      goto LABEL_42;
    }

    v9 = v26;
    if (sub_10013A364(@"/var/mobile/Library/terminus/com.apple.terminus.plist", v26, 0))
    {
      if (qword_1002290B0 != -1)
      {
        dispatch_once(&qword_1002290B0, &stru_1001FB278);
      }

      if (!_NRLogIsLevelEnabled())
      {
        goto LABEL_42;
      }

      if (qword_1002290B0 != -1)
      {
        dispatch_once(&qword_1002290B0, &stru_1001FB278);
      }

      v35 = "terminusdSettingsInit";
      v40 = 75;
      v31 = "";
    }

    else
    {
      if (qword_1002290B0 != -1)
      {
        dispatch_once(&qword_1002290B0, &stru_1001FB278);
      }

      if (!_NRLogIsLevelEnabled())
      {
        goto LABEL_42;
      }

      if (qword_1002290B0 != -1)
      {
        dispatch_once(&qword_1002290B0, &stru_1001FB278);
      }

      v35 = "terminusdSettingsInit";
      v40 = 77;
      v31 = "";
    }

    _NRLogWithArgs();
  }

LABEL_42:
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

    v40 = 81;
    v44 = v9;
    v31 = "";
    v35 = "terminusdSettingsInit";
    _NRLogWithArgs();
  }

  v10 = [v9 objectForKeyedSubscript:{@"PacketLogging", v31, v35, v40, v44}];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = [v10 BOOLValue];
  }

  else
  {
    v11 = 0;
  }

  gNRPacketLoggingEnabled = v11;
  v12 = [v9 objectForKeyedSubscript:@"MPKLLogging"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = [v12 BOOLValue];
  }

  else
  {
    v13 = 0;
  }

  gNRMPKLLoggingEnabled = v13;
  v14 = [v9 objectForKeyedSubscript:@"IPsecIfRingSize"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v14 unsignedIntValue])
  {
    LODWORD(qword_100228A78) = [v14 unsignedIntValue];
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

      v41 = 99;
      v45 = qword_100228A78;
      v32 = "";
      v36 = "terminusdSettingsInit";
      _NRLogWithArgs();
    }
  }

  v15 = [v9 objectForKeyedSubscript:{@"IPsecKPipeTxRingSize", v32, v36, v41, v45}];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v15 unsignedIntValue])
  {
    HIDWORD(qword_100228A78) = [v15 unsignedIntValue];
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

      v42 = 104;
      v46 = HIDWORD(qword_100228A78);
      v33 = "";
      v37 = "terminusdSettingsInit";
      _NRLogWithArgs();
    }
  }

  v16 = [v9 objectForKeyedSubscript:{@"IPsecKPipeRxRingSize", v33, v37, v42, v46}];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v16 unsignedIntValue])
  {
    dword_100228A80 = [v16 unsignedIntValue];
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

      v43 = 109;
      v47 = dword_100228A80;
      v38 = "terminusdSettingsInit";
      _NRLogWithArgs();
    }
  }

  os_unfair_lock_unlock(&unk_100229090);
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

    if (gNRPacketLoggingEnabled)
    {
      v17 = "en";
    }

    else
    {
      v17 = "dis";
    }

    v43 = 113;
    v47 = v17;
    v38 = "terminusdSettingsInit";
    _NRLogWithArgs();
  }

  v18 = sub_100003490();
  dispatch_async(v18, &stru_1001FAE90);

  objc_opt_self();
  if (qword_1002294C8 != -1)
  {
    dispatch_once(&qword_1002294C8, &stru_1001FD250);
  }

  v19 = qword_1002294C0;
  sub_1001816DC(v19, &stru_1001FB238);

  v20 = [NSString alloc];
  if (sub_1000B79D8())
  {
    v21 = "en";
  }

  else
  {
    v21 = "dis";
  }

  v22 = [v20 initWithFormat:@"(when the daemon started, the companion link was %sabled on this device)", v21, v38, v43, v47];
  sub_1000059A8(0, 9000, &stru_1001FDE68, v22);
  v23 = sub_100003490();
  dispatch_assert_queue_V2(v23);

  objc_opt_self();
  if (qword_1002290C0 != -1)
  {
    dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
  }

  v24 = qword_1002290B8;
  if (v24)
  {
    v25 = sub_100003490();
    dispatch_assert_queue_V2(v25);

    if (sub_1000B79D8())
    {
      sub_1000BAAFC(v24);
    }

    else
    {
      sub_1000BBDC0(v24);
    }
  }

  objc_opt_self();
  if (qword_100228FB0 != -1)
  {
    dispatch_once(&qword_100228FB0, &stru_1001FAB50);
  }
}

id sub_1001850BC(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1 && (v2 = *(v1 + 16)) != 0)
  {
    *(v1 + 16) = v2 - 1;
    if (qword_100229510 != -1)
    {
      dispatch_once(&qword_100229510, &stru_1001FD408);
    }

    result = _NRLogIsLevelEnabled();
    if (result)
    {
      if (qword_100229510 != -1)
      {
        dispatch_once(&qword_100229510, &stru_1001FD408);
      }

      v5 = *(a1 + 32);
      if (v5)
      {
        v5 = *(v5 + 16);
      }

      v12 = 181;
      v13 = v5;
      v10 = "";
      v11 = "[NRPhoneCallRelayAgent unassertAgentWithOptions:]_block_invoke";
      result = _NRLogWithArgs();
    }

    v6 = *(a1 + 32);
    if (v6)
    {
      if (*(v6 + 16))
      {
        return result;
      }

      WeakRetained = objc_loadWeakRetained((v6 + 56));
    }

    else
    {
      WeakRetained = 0;
    }

    [WeakRetained deviceHasPhoneCallRelayRequest:{0, v10, v11, v12, v13}];

    result = [*(a1 + 32) isActive];
    if (result)
    {
      [*(a1 + 32) setActive:0];
      v8 = *(a1 + 32);
      if (v8)
      {
        v9 = *(v8 + 48);
      }

      else
      {
        v9 = 0;
      }

      return [v9 updateNetworkAgent:?];
    }
  }

  else
  {
    if (qword_100229510 != -1)
    {
      dispatch_once(&qword_100229510, &stru_1001FD408);
    }

    result = _NRLogIsLevelEnabled();
    if (result)
    {
      if (qword_100229510 != -1)
      {
        dispatch_once(&qword_100229510, &stru_1001FD408);
      }

      return _NRLogWithArgs();
    }
  }

  return result;
}

void sub_1001852B8(id a1)
{
  v1 = os_log_create("com.apple.networkrelay", "");
  v2 = qword_100229508;
  qword_100229508 = v1;

  _objc_release_x1(v1, v2);
}

id sub_100185380(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = *(v2 + 16);
    v4 = v3 == 0;
    *(v2 + 16) = v3 + 1;
  }

  else
  {
    v4 = 1;
  }

  if (qword_100229510 != -1)
  {
    dispatch_once(&qword_100229510, &stru_1001FD408);
  }

  if (_NRLogIsLevelEnabled())
  {
    if (qword_100229510 != -1)
    {
      dispatch_once(&qword_100229510, &stru_1001FD408);
    }

    v5 = *(a1 + 32);
    if (v5)
    {
      v5 = *(v5 + 16);
    }

    v13 = 157;
    v14 = v5;
    v11 = "";
    v12 = "[NRPhoneCallRelayAgent assertAgentWithOptions:]_block_invoke";
    _NRLogWithArgs();
  }

  if (v4)
  {
    v6 = *(a1 + 32);
    if (v6)
    {
      WeakRetained = objc_loadWeakRetained((v6 + 56));
    }

    else
    {
      WeakRetained = 0;
    }

    [WeakRetained deviceHasPhoneCallRelayRequest:{1, v11, v12, v13, v14}];
  }

  result = [*(a1 + 32) isActive];
  if ((result & 1) == 0)
  {
    [*(a1 + 32) setActive:1];
    v9 = *(a1 + 32);
    if (v9)
    {
      v10 = *(v9 + 48);
    }

    else
    {
      v10 = 0;
    }

    return [v10 updateNetworkAgent:?];
  }

  return result;
}

void sub_100185548(uint64_t a1)
{
  if (a1 && *(a1 + 14) == 1)
  {
    objc_opt_self();
    if (qword_100229410 != -1)
    {
      dispatch_once(&qword_100229410, &stru_1001FCD98);
    }

    v2 = qword_100229408;
    sub_10015A238(v2, *(a1 + 64));

    objc_opt_self();
    if (qword_100229410 != -1)
    {
      dispatch_once(&qword_100229410, &stru_1001FCD98);
    }

    v3 = qword_100229408;
    sub_10015A52C(v3);

    if (([*(a1 + 48) unregisterNetworkAgent] & 1) == 0)
    {
      if (qword_100229510 != -1)
      {
        dispatch_once(&qword_100229510, &stru_1001FD408);
      }

      if (_NRLogIsLevelEnabled())
      {
        if (qword_100229510 != -1)
        {
          dispatch_once(&qword_100229510, &stru_1001FD408);
        }

        _NRLogWithArgs();
      }
    }

    v4 = *(a1 + 48);
    *(a1 + 48) = 0;

    *(a1 + 14) = 0;
    v6 = [a1 agentUUID];
    v5 = [v6 UUIDString];
    sub_1000059A8(0, 16003, 0, v5);
  }
}

id *sub_1001857B8(id *a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  if (a1)
  {
    v23.receiver = a1;
    v23.super_class = NRPhoneCallRelayAgent;
    v8 = objc_msgSendSuper2(&v23, "init");
    if (!v8)
    {
      v18 = sub_100185A0C();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      if (IsLevelEnabled)
      {
        v20 = sub_100185A0C();
        _NRLogWithArgs();
      }

      _os_log_pack_size();
      v21 = *__error();
      v22 = _os_log_pack_fill();
      *v22 = 136446210;
      *(v22 + 4) = "[NRPhoneCallRelayAgent initWithQueue:delegate:]";
      sub_100185A0C();
      _NRLogAbortWithPack();
    }

    a1 = v8;
    objc_storeStrong(v8 + 5, a2);
    v9 = +[NSUUID UUID];
    [a1 setAgentUUID:v9];

    [a1 setUserActivated:1];
    [a1 setAgentDescription:@"Phone call relay netagent"];
    objc_storeWeak(a1 + 7, v7);
    v10 = [NSString alloc];
    v11 = [a1 agentUUID];
    v12 = [v11 UUIDString];
    v13 = [v10 initWithFormat:@"NRPhoneCallRelayAgent-%@", v12];
    v14 = a1[8];
    a1[8] = v13;

    v15 = [a1 agentUUID];
    v16 = [v15 UUIDString];
    sub_1000059A8(0, 16001, 0, v16);
  }

  return a1;
}

id sub_100185A0C()
{
  if (qword_100229510 != -1)
  {
    dispatch_once(&qword_100229510, &stru_1001FD408);
  }

  v1 = qword_100229508;

  return v1;
}

void sub_100185A60(uint64_t a1)
{
  if (a1 && (*(a1 + 14) & 1) == 0)
  {
    v2 = [[NWNetworkAgentRegistration alloc] initWithNetworkAgentClass:objc_opt_class()];
    v3 = *(a1 + 48);
    *(a1 + 48) = v2;

    v7 = *(a1 + 48);
    if (!v7)
    {
      sub_10013C2A8(@"NRPhoneCallRelayAgent", @"RegisterAgent", @"Create Failed", 1, @"Failed to create phone call relay network agent", v4, v5, v6, v48);
      v7 = *(a1 + 48);
    }

    if (([v7 registerNetworkAgent:a1] & 1) == 0)
    {
      sub_10013C2A8(@"NRPhoneCallRelayAgent", @"RegisterAgent", @"Register Failed", 1, @"Failed to register phone call relay network agent", v8, v9, v10, v48);
    }

    v11 = [a1 agentUUID];
    v12 = [NEPolicyResult netAgentUUID:v11];

    v13 = +[NRPhoneCallRelayAgent agentDomain];
    v14 = +[NRPhoneCallRelayAgent agentType];
    v15 = [NEPolicyCondition requiredAgentDomain:v13 agentType:v14];

    v16 = [NEPolicy alloc];
    v50 = v15;
    v56[0] = v15;
    v17 = +[NEPolicyCondition allInterfaces];
    v56[1] = v17;
    v18 = [NSArray arrayWithObjects:v56 count:2];
    v52 = v12;
    v19 = [v16 initWithOrder:10 result:v12 conditions:v18];

    objc_opt_self();
    if (qword_100229410 != -1)
    {
      dispatch_once(&qword_100229410, &stru_1001FCD98);
    }

    v20 = qword_100229408;
    v21 = sub_100159E00(v20, *(a1 + 64), v19);

    v22 = [NEPolicyCondition trafficClassStart:800 end:900];
    v23 = [NEPolicyCondition ipProtocol:17];
    v24 = +[NEPolicyCondition platformBinary];
    v25 = [NEPolicyCondition accountIdentifier:@"com.apple.networkrelay.companion_proxy"];
    v26 = [NEPolicy alloc];
    v55[0] = v22;
    v55[1] = v23;
    v51 = v23;
    v55[2] = v24;
    v55[3] = v25;
    v49 = v25;
    v27 = +[NEPolicyCondition allInterfaces];
    v55[4] = v27;
    v28 = [NSArray arrayWithObjects:v55 count:5];
    v29 = [v26 initWithOrder:10 result:v52 conditions:v28];

    objc_opt_self();
    if (qword_100229410 != -1)
    {
      dispatch_once(&qword_100229410, &stru_1001FCD98);
    }

    v30 = qword_100229408;
    v31 = sub_100159E00(v30, *(a1 + 64), v29);

    objc_opt_self();
    v32 = sub_100003490();
    dispatch_assert_queue_V2(v32);

    v53 = xmmword_100196400;
    v33 = [[NSData alloc] initWithBytes:&v53 length:16];
    v34 = sub_100167F00(NRDLocalDevice, v33, @"0");

    v35 = [v34 hostname];
    v36 = [NWAddressEndpoint endpointWithHostname:v35 port:@"62742"];

    v37 = [NEPolicyCondition flowRemoteAddress:v36 prefix:64];
    v38 = [NEPolicy alloc];
    v39 = v22;
    v54[0] = v22;
    v54[1] = v51;
    v54[2] = v24;
    v54[3] = v37;
    v40 = +[NEPolicyCondition allInterfaces];
    v54[4] = v40;
    v41 = [NSArray arrayWithObjects:v54 count:5];
    v42 = [v38 initWithOrder:10 result:v52 conditions:v41];

    objc_opt_self();
    if (qword_100229410 != -1)
    {
      dispatch_once(&qword_100229410, &stru_1001FCD98);
    }

    v43 = qword_100229408;
    v44 = sub_100159E00(v43, *(a1 + 64), v42);

    objc_opt_self();
    if (qword_100229410 != -1)
    {
      dispatch_once(&qword_100229410, &stru_1001FCD98);
    }

    v45 = qword_100229408;
    sub_10015A52C(v45);

    *(a1 + 14) = 1;
    v46 = [a1 agentUUID];
    v47 = [v46 UUIDString];
    sub_1000059A8(0, 16002, 0, v47);
  }
}