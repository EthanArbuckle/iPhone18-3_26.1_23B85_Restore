void sub_1000136E0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained && (*(WeakRetained + 8) & 0xFE) != 6 && (*(WeakRetained + 48) & 0x10) == 0 && !*(WeakRetained + 9))
  {
    v2 = WeakRetained;
    sub_100012F8C();
    WeakRetained = v2;
  }
}

id sub_100014820()
{
  if (qword_100228E98 != -1)
  {
    dispatch_once(&qword_100228E98, &stru_1001FA1F0);
  }

  v1 = qword_100228E90;

  return v1;
}

void sub_100014874(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (a1)
  {
    v10 = @"%@";
    v11 = [[NSString alloc] initWithFormat:@"%@" arguments:&a9];

    v12 = v11;
    v13 = [[NSString alloc] initWithFormat:@"NRIKEv2Listener[%@]", @"62743"];
    sub_1000059A8(0, a2, v13, v12);
  }
}

id sub_100014934(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (!a1)
  {
    goto LABEL_15;
  }

  if (!v7)
  {
    v15 = sub_100014820();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      goto LABEL_14;
    }

LABEL_15:
    v13 = 0;
    goto LABEL_8;
  }

  if (!v8)
  {
    v17 = sub_100014820();
    v18 = _NRLogIsLevelEnabled();

    if (v18)
    {
      goto LABEL_14;
    }

    goto LABEL_15;
  }

  if (v9)
  {
    v11 = [v8 copyCEndpoint];
    v12 = nw_endpoint_copy_address_string(v11);
    v13 = [[NSString alloc] initWithFormat:@"%s/%@/%@", v12, v7, v10];
    if (v12)
    {
      free(v12);
    }

    goto LABEL_7;
  }

  v19 = sub_100014820();
  v20 = _NRLogIsLevelEnabled();

  if (!v20)
  {
    goto LABEL_15;
  }

LABEL_14:
  v11 = sub_100014820();
  _NRLogWithArgs();
  v13 = 0;
LABEL_7:

LABEL_8:
  return v13;
}

void sub_100014ABC(id *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7)
{
  v14 = a2;
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  if (a1)
  {
    v45 = v16;
    if (!a1[6])
    {
      v20 = objc_alloc_init(NSMutableDictionary);
      v21 = a1[6];
      a1[6] = v20;
    }

    v22 = objc_alloc_init(NRIKEv2PendingSession);
    v23 = v22;
    if (v22)
    {
      objc_storeStrong(&v22->_session, a2);
      objc_storeStrong(&v23->_sessionConfig, a3);
      objc_storeStrong(&v23->_childConfig, a4);
      objc_setProperty_nonatomic_copy(v23, v24, v17, 32);
      objc_setProperty_nonatomic_copy(v23, v25, v18, 40);
      v23->_sessionReceivedTimestamp = nr_continuous_time();
    }

    else
    {
      nr_continuous_time();
    }

    objc_initWeak(&location, v14);
    v26 = a1[1];
    [v14 setClientQueue:v26];

    v46[0] = _NSConcreteStackBlock;
    v46[1] = 3221225472;
    v46[2] = sub_100015044;
    v46[3] = &unk_1001FA1A8;
    objc_copyWeak(&v48, &location);
    v46[4] = a1;
    v44 = v19;
    v27 = v19;
    v47 = v27;
    [v14 setStateUpdateBlock:v46];
    v28 = a1[6];
    v29 = [v28 objectForKeyedSubscript:v27];

    if (v29)
    {
      v30 = v29[5];
      (*(v30 + 2))(v30, 0, 0, 0);
    }

    if (qword_100228E98 != -1)
    {
      dispatch_once(&qword_100228E98, &stru_1001FA1F0);
    }

    v31 = qword_100228E90;
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      if (qword_100228E98 != -1)
      {
        dispatch_once(&qword_100228E98, &stru_1001FA1F0);
      }

      v33 = qword_100228E90;
      if (v23)
      {
        session = v23->_session;
      }

      else
      {
        session = 0;
      }

      v43 = session;
      _NRLogWithArgs();
    }

    v35 = a1[6];
    [v35 setObject:v23 forKeyedSubscript:v27];

    v36 = a1 + 7;
    if (!a1[7])
    {
      v37 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, a1[1]);
      v38 = dispatch_time(0x8000000000000000, 10000000000);
      dispatch_source_set_timer(v37, v38, 0x2540BE400uLL, 0x3A35294400uLL);
      objc_initWeak(from, a1);
      handler[0] = _NSConcreteStackBlock;
      handler[1] = 3221225472;
      handler[2] = sub_1000151A4;
      handler[3] = &unk_1001FB150;
      objc_copyWeak(v52, from);
      v39 = v37;
      v51 = v39;
      v52[1] = 0x4024000000000000;
      dispatch_source_set_event_handler(v39, handler);
      dispatch_activate(v39);
      objc_storeStrong(v36, v37);
      if (qword_100228E98 != -1)
      {
        dispatch_once(&qword_100228E98, &stru_1001FA1F0);
      }

      v40 = qword_100228E90;
      v41 = _NRLogIsLevelEnabled();

      if (v41)
      {
        if (qword_100228E98 != -1)
        {
          dispatch_once(&qword_100228E98, &stru_1001FA1F0);
        }

        v42 = qword_100228E90;
        _NRLogWithArgs();
      }

      objc_destroyWeak(v52);
      objc_destroyWeak(from);
    }

    objc_destroyWeak(&v48);
    objc_destroyWeak(&location);

    v16 = v45;
    v19 = v44;
  }
}

void sub_100014FA0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, id location)
{
  objc_destroyWeak((v25 + 40));
  objc_destroyWeak((v26 - 112));
  objc_destroyWeak(&a24);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100014FE4(uint64_t a1, uint64_t a2)
{
  (*(*(a1 + 40) + 16))();
  if (a2)
  {
    v4 = *(a1 + 32);

    sub_100171DA0(NRDLocalDevice, v4);
  }
}

void sub_100015044(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (a2 == 3 && WeakRetained)
  {
    v5 = *(a1 + 32);
    v17 = WeakRetained;
    if (v5)
    {
      v5 = v5[6];
    }

    v6 = *(a1 + 40);
    v7 = v5;
    v8 = [v7 objectForKeyedSubscript:v6];
    v9 = v8;
    if (v8)
    {
      v10 = *(v8 + 8);
    }

    else
    {
      v10 = 0;
    }

    WeakRetained = v17;
    if (v10 == v17)
    {
      if (qword_100228E98 != -1)
      {
        dispatch_once(&qword_100228E98, &stru_1001FA1F0);
      }

      if (_NRLogIsLevelEnabled())
      {
        if (qword_100228E98 != -1)
        {
          dispatch_once(&qword_100228E98, &stru_1001FA1F0);
        }

        v15 = 527;
        v16 = v17;
        v13 = "";
        v14 = "[NRIKEv2Listener addPendingSession:sessionConfig:childConfig:validateAuthBlock:responseBlock:key:]_block_invoke";
        _NRLogWithArgs();
      }

      v11 = *(a1 + 32);
      if (v11)
      {
        v12 = *(v11 + 48);
      }

      else
      {
        v12 = 0;
      }

      [v12 setObject:0 forKeyedSubscript:{*(a1 + 40), v13, v14, v15, v16}];
      WeakRetained = v17;
    }
  }
}

void sub_1000151A4(uint64_t a1)
{
  v1 = a1;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = WeakRetained[6];
    if ([v4 count])
    {
      v5 = *(v3 + 56);
      v6 = *(v1 + 32);

      if (v5 == v6)
      {
        nr_continuous_time();
        v36 = 0u;
        v37 = 0u;
        v38 = 0u;
        v39 = 0u;
        v7 = *(v3 + 48);
        v8 = [v7 countByEnumeratingWithState:&v36 objects:v41 count:16];
        if (v8)
        {
          v9 = v8;
          v10 = 0;
          v11 = *v37;
          v31 = v1;
          do
          {
            for (i = 0; i != v9; i = i + 1)
            {
              if (*v37 != v11)
              {
                objc_enumerationMutation(v7);
              }

              v13 = *(*(&v36 + 1) + 8 * i);
              v14 = [*(v3 + 48) objectForKeyedSubscript:v13];
              v15 = v14;
              if (v14)
              {
                v16 = *(v14 + 48);
              }

              NRDiffMachTimeInSeconds();
              if (v17 > *(v1 + 48))
              {
                if (qword_100228E98 != -1)
                {
                  dispatch_once(&qword_100228E98, &stru_1001FA1F0);
                }

                if (_NRLogIsLevelEnabled())
                {
                  if (qword_100228E98 != -1)
                  {
                    dispatch_once(&qword_100228E98, &stru_1001FA1F0);
                  }

                  v18 = v7;
                  if (v15)
                  {
                    v19 = v15[1];
                  }

                  else
                  {
                    v19 = 0;
                  }

                  v20 = qword_100228E90;
                  v29 = 568;
                  v30 = v19;
                  v27 = "";
                  v28 = "[NRIKEv2Listener armPendingSessionCleanupTimer]_block_invoke";
                  _NRLogWithArgs();

                  v7 = v18;
                  v1 = v31;
                }

                if (v15)
                {
                  v21 = v15[5];
                }

                else
                {
                  v21 = 0;
                }

                (*(v21 + 16))(v21, 0, 0, 0);
                if (!v10)
                {
                  v10 = objc_alloc_init(NSMutableArray);
                }

                [v10 addObject:{v13, v27, v28, v29, v30}];
              }
            }

            v9 = [v7 countByEnumeratingWithState:&v36 objects:v41 count:16];
          }

          while (v9);
        }

        else
        {
          v10 = 0;
        }

        v34 = 0u;
        v35 = 0u;
        v32 = 0u;
        v33 = 0u;
        v22 = v10;
        v23 = [v22 countByEnumeratingWithState:&v32 objects:v40 count:16];
        if (v23)
        {
          v24 = v23;
          v25 = *v33;
          do
          {
            for (j = 0; j != v24; j = j + 1)
            {
              if (*v33 != v25)
              {
                objc_enumerationMutation(v22);
              }

              [*(v3 + 48) setObject:0 forKeyedSubscript:*(*(&v32 + 1) + 8 * j)];
            }

            v24 = [v22 countByEnumeratingWithState:&v32 objects:v40 count:16];
          }

          while (v24);
        }

        sub_1000154E8(v3);
      }
    }

    else
    {
    }
  }
}

void sub_1000154E8(uint64_t a1)
{
  if (![*(a1 + 48) count] && *(a1 + 56))
  {
    if (qword_100228E98 != -1)
    {
      dispatch_once(&qword_100228E98, &stru_1001FA1F0);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_100228E98 != -1)
      {
        dispatch_once(&qword_100228E98, &stru_1001FA1F0);
      }

      _NRLogWithArgs();
    }

    dispatch_source_cancel(*(a1 + 56));
    v2 = *(a1 + 56);
    *(a1 + 56) = 0;
  }
}

void sub_1000155F0(id a1)
{
  v1 = os_log_create("com.apple.networkrelay", "");
  v2 = qword_100228E90;
  qword_100228E90 = v1;

  _objc_release_x1(v1, v2);
}

id sub_100015954()
{
  objc_opt_self();
  if (qword_100228E88 != -1)
  {
    dispatch_once(&qword_100228E88, &stru_1001FA180);
  }

  v0 = qword_100228E80;

  return v0;
}

void sub_1000159AC(id a1)
{
  v1 = objc_alloc_init(NRIKEv2Listener);
  v2 = qword_100228E80;
  qword_100228E80 = v1;

  _objc_release_x1(v1, v2);
}

uint64_t sub_1000159E8(uint64_t a1)
{
  if (*(a1 + 16))
  {
    return 1;
  }

  v3 = sub_100146840(1);
  if (qword_100229238 != -1)
  {
    dispatch_once(&qword_100229238, &stru_1001FC340);
  }

  if (byte_100229230 == 1)
  {
    [v3 setForceUDPEncapsulation:1];
    v4 = [NSSet alloc];
    v5 = [[NEIKEv2AuthenticationProtocol alloc] initWithSecurePassword:11001];
    v6 = [v4 initWithObjects:{v5, 0}];
    [v3 setSupportedSecurePasswordMethods:v6];

    [v3 setRequestPPK:1];
  }

  v7 = [NEIKEv2Listener alloc];
  v8 = *(a1 + 8);
  LOBYTE(v16) = 1;
  v9 = [v7 initWithListenerIKEConfig:v3 kernelSASessionName:@"terminusIKE-Shared-Listener" listenerUDPPort:@"62743" listenerQueue:v8 delegate:a1 delegateQueue:v8 includeP2P:v16];
  v10 = *(a1 + 16);
  *(a1 + 16) = v9;

  v11 = *(a1 + 16);
  v1 = v11 != 0;
  if (v11)
  {
    if (qword_100228E98 != -1)
    {
      dispatch_once(&qword_100228E98, &stru_1001FA1F0);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_100228E98 != -1)
      {
        dispatch_once(&qword_100228E98, &stru_1001FA1F0);
      }

      _NRLogWithArgs();
    }
  }

  else
  {
    v13 = sub_100014820();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v15 = sub_100014820();
      _NRLogWithArgs();
    }
  }

  return v1;
}

void sub_100015C1C(uint64_t a1)
{
  if (*(a1 + 40))
  {
    if (qword_100228E98 != -1)
    {
      dispatch_once(&qword_100228E98, &stru_1001FA1F0);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_100228E98 != -1)
      {
        dispatch_once(&qword_100228E98, &stru_1001FA1F0);
      }

      _NRLogWithArgs();
    }

    objc_opt_self();
    if (qword_100229410 != -1)
    {
      dispatch_once(&qword_100229410, &stru_1001FCD98);
    }

    v1 = qword_100229408;
    sub_10015A238(v1, @"NRIKEv2Listener");

    objc_opt_self();
    if (qword_100229410 != -1)
    {
      dispatch_once(&qword_100229410, &stru_1001FCD98);
    }

    v52 = qword_100229408;
    sub_10015A52C(v52);
  }

  else
  {
    v2 = a1;
    v3 = objc_alloc_init(NSMutableArray);
    v50 = [NEPolicyRouteRule routeRuleWithAction:2 forType:0];
    [v3 addObject:?];
    v4 = objc_alloc_init(NSMutableArray);
    v5 = [NWAddressEndpoint endpointWithHostname:@"::" port:@"62743"];
    v6 = +[NEPolicyCondition allInterfaces];
    [v4 addObject:v6];

    v49 = v5;
    v7 = [NEPolicyCondition flowLocalAddress:v5 prefix:0];
    [v4 addObject:v7];

    v8 = [v2[3] allValues];
    v51 = v4;
    if ([v8 count])
    {
      v53 = v2;
      v9 = objc_alloc_init(NSMutableSet);
      v67 = 0u;
      v68 = 0u;
      v69 = 0u;
      v70 = 0u;
      v10 = v8;
      v11 = [v10 countByEnumeratingWithState:&v67 objects:v74 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v68;
        do
        {
          for (i = 0; i != v12; i = i + 1)
          {
            if (*v68 != v13)
            {
              objc_enumerationMutation(v10);
            }

            v16 = *(*(&v67 + 1) + 8 * i);
            if (v16 && (v17 = *(v16 + 8)) != 0)
            {
              v15 = v17;
              [v9 addObject:v17];
            }

            else
            {
              if (qword_100228E98 != -1)
              {
                dispatch_once(&qword_100228E98, &stru_1001FA1F0);
              }

              if (_NRLogIsLevelEnabled())
              {
                if (qword_100228E98 != -1)
                {
                  dispatch_once(&qword_100228E98, &stru_1001FA1F0);
                }

                v47 = v16;
                _NRLogWithArgs();
              }
            }
          }

          v12 = [v10 countByEnumeratingWithState:&v67 objects:v74 count:16];
        }

        while (v12);
      }

      v65 = 0u;
      v66 = 0u;
      v63 = 0u;
      v64 = 0u;
      v18 = v9;
      v19 = [v18 countByEnumeratingWithState:&v63 objects:v73 count:16];
      v4 = v51;
      if (v19)
      {
        v20 = v19;
        v21 = *v64;
        do
        {
          for (j = 0; j != v20; j = j + 1)
          {
            if (*v64 != v21)
            {
              objc_enumerationMutation(v18);
            }

            v23 = [NEPolicyRouteRule routeRuleWithAction:1 forInterfaceName:*(*(&v63 + 1) + 8 * j), v47];
            [v3 addObject:v23];
          }

          v20 = [v18 countByEnumeratingWithState:&v63 objects:v73 count:16];
        }

        while (v20);
      }

      v2 = v53;
    }

    v54 = [v2[4] allValues];
    if ([v54 count])
    {
      v24 = objc_alloc_init(NSMutableSet);
      v59 = 0u;
      v60 = 0u;
      v61 = 0u;
      v62 = 0u;
      v25 = v54;
      v26 = [v25 countByEnumeratingWithState:&v59 objects:v72 count:16];
      if (v26)
      {
        v27 = v26;
        v28 = *v60;
        do
        {
          for (k = 0; k != v27; k = k + 1)
          {
            if (*v60 != v28)
            {
              objc_enumerationMutation(v25);
            }

            v31 = *(*(&v59 + 1) + 8 * k);
            if (v31 && (v32 = *(v31 + 8)) != 0)
            {
              v30 = v32;
              [v24 addObject:v32];
            }

            else
            {
              if (qword_100228E98 != -1)
              {
                dispatch_once(&qword_100228E98, &stru_1001FA1F0);
              }

              if (_NRLogIsLevelEnabled())
              {
                if (qword_100228E98 != -1)
                {
                  dispatch_once(&qword_100228E98, &stru_1001FA1F0);
                }

                v48 = v31;
                _NRLogWithArgs();
              }
            }
          }

          v27 = [v25 countByEnumeratingWithState:&v59 objects:v72 count:16];
        }

        while (v27);
      }

      v57 = 0u;
      v58 = 0u;
      v55 = 0u;
      v56 = 0u;
      v33 = v24;
      v34 = [v33 countByEnumeratingWithState:&v55 objects:v71 count:16];
      v4 = v51;
      if (v34)
      {
        v35 = v34;
        v36 = *v56;
        do
        {
          for (m = 0; m != v35; m = m + 1)
          {
            if (*v56 != v36)
            {
              objc_enumerationMutation(v33);
            }

            v38 = [NEPolicyRouteRule routeRuleWithAction:1 forInterfaceName:*(*(&v55 + 1) + 8 * m), v48];
            [v3 addObject:v38];
          }

          v35 = [v33 countByEnumeratingWithState:&v55 objects:v71 count:16];
        }

        while (v35);
      }
    }

    if (qword_100228E98 != -1)
    {
      dispatch_once(&qword_100228E98, &stru_1001FA1F0);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_100228E98 != -1)
      {
        dispatch_once(&qword_100228E98, &stru_1001FA1F0);
      }

      _NRLogWithArgs();
    }

    objc_opt_self();
    if (qword_100229410 != -1)
    {
      dispatch_once(&qword_100229410, &stru_1001FCD98);
    }

    v39 = qword_100229408;
    sub_10015A238(v39, @"NRIKEv2Listener");

    objc_opt_self();
    if (qword_100229410 != -1)
    {
      dispatch_once(&qword_100229410, &stru_1001FCD98);
    }

    v40 = qword_100229408;
    sub_10015A52C(v40);

    v41 = [NEPolicy alloc];
    v42 = [NEPolicyResult routeRules:v3];
    v43 = [v41 initWithOrder:6 result:v42 conditions:v4];

    objc_opt_self();
    if (qword_100229410 != -1)
    {
      dispatch_once(&qword_100229410, &stru_1001FCD98);
    }

    v44 = qword_100229408;
    v45 = sub_100159E00(v44, @"NRIKEv2Listener", v43);

    objc_opt_self();
    if (qword_100229410 != -1)
    {
      dispatch_once(&qword_100229410, &stru_1001FCD98);
    }

    v46 = qword_100229408;
    sub_10015A52C(v46);
  }
}

void sub_10001651C(uint64_t a1, void *a2)
{
  v21 = a2;
  v3 = *(a1 + 48);
  if (v3)
  {
    v4 = v3;
    v5 = [*(a1 + 48) objectForKeyedSubscript:v21];

    if (v5)
    {
      v6 = [*(a1 + 48) objectForKeyedSubscript:v21];
      [*(a1 + 48) setObject:0 forKeyedSubscript:v21];
      if (v6)
      {
        [*(v6 + 8) setStateUpdateBlock:0];
        [*(v6 + 8) setClientQueue:0];
        v7 = *(v6 + 8);
      }

      else
      {
        [0 setStateUpdateBlock:0];
        [0 setClientQueue:0];
        v7 = 0;
      }

      if ([v7 state] == 3)
      {
        if (qword_100228E98 != -1)
        {
          dispatch_once(&qword_100228E98, &stru_1001FA1F0);
        }

        if (!_NRLogIsLevelEnabled())
        {
          goto LABEL_23;
        }

        if (qword_100228E98 == -1)
        {
          v8 = qword_100228E90;
          if (!v6)
          {
            goto LABEL_12;
          }
        }

        else
        {
          dispatch_once(&qword_100228E98, &stru_1001FA1F0);
          v8 = qword_100228E90;
          if (!v6)
          {
            goto LABEL_12;
          }
        }

        v9 = *(v6 + 8);
LABEL_12:
        v10 = v8;
        _NRLogWithArgs();

LABEL_23:
        goto LABEL_24;
      }

      if (qword_100228E98 != -1)
      {
        dispatch_once(&qword_100228E98, &stru_1001FA1F0);
      }

      if (!_NRLogIsLevelEnabled())
      {
LABEL_20:
        v14 = *(a1 + 16);
        if (v6)
        {
          v15 = *(v6 + 8);
          v16 = *(v6 + 16);
          v17 = *(v6 + 24);
          v18 = *(v6 + 32);
          v19 = *(v6 + 40);
        }

        else
        {
          v18 = 0;
          v16 = 0;
          v15 = 0;
          v17 = 0;
          v19 = 0;
        }

        v20 = v14;
        [a1 requestConfigurationForListener:v20 session:v15 sessionConfig:v16 childConfig:v17 validateAuthBlock:v18 responseBlock:v19];

        sub_1000154E8(a1);
        goto LABEL_23;
      }

      if (qword_100228E98 == -1)
      {
        v11 = qword_100228E90;
        if (!v6)
        {
          goto LABEL_19;
        }
      }

      else
      {
        dispatch_once(&qword_100228E98, &stru_1001FA1F0);
        v11 = qword_100228E90;
        if (!v6)
        {
          goto LABEL_19;
        }
      }

      v12 = *(v6 + 8);
LABEL_19:
      v13 = v11;
      _NRLogWithArgs();

      goto LABEL_20;
    }
  }

LABEL_24:
}

void sub_100016810(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v4 = *(a1 + 32);
    v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (!v5)
    {
LABEL_19:
      v12 = v4;
LABEL_20:

      goto LABEL_21;
    }

    v6 = v5;
    v7 = *v14;
LABEL_5:
    v8 = 0;
    while (1)
    {
      if (*v14 != v7)
      {
        objc_enumerationMutation(v4);
      }

      v9 = *(*(&v13 + 1) + 8 * v8);
      v10 = [*(a1 + 32) objectForKeyedSubscript:v9];
      if (v10)
      {
        if (v10[4] == v3)
        {
          break;
        }
      }

      if (v6 == ++v8)
      {
        v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (!v6)
        {
          goto LABEL_19;
        }

        goto LABEL_5;
      }
    }

    v11 = v10;
    v12 = v9;

    if (v12)
    {
      [*(a1 + 32) setObject:0 forKeyedSubscript:v12];
      if (qword_100228E98 != -1)
      {
        dispatch_once(&qword_100228E98, &stru_1001FA1F0);
      }

      if (_NRLogIsLevelEnabled())
      {
        if (qword_100228E98 != -1)
        {
          dispatch_once(&qword_100228E98, &stru_1001FA1F0);
        }

        _NRLogWithArgs();
      }

      sub_100015C1C(a1);
      goto LABEL_20;
    }
  }

LABEL_21:
}

uint64_t sub_100016A08(uint64_t IsLevelEnabled, void *a2, void *a3, void *a4)
{
  v8 = a2;
  v9 = a3;
  v10 = a4;
  v11 = v10;
  if (!IsLevelEnabled)
  {
    goto LABEL_32;
  }

  if (!v8)
  {
    v32 = sub_100014820();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (!IsLevelEnabled)
    {
      goto LABEL_32;
    }

    goto LABEL_38;
  }

  if (!v9)
  {
    v33 = sub_100014820();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (!IsLevelEnabled)
    {
      goto LABEL_32;
    }

    goto LABEL_38;
  }

  if (!v10)
  {
    v34 = sub_100014820();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (!IsLevelEnabled)
    {
      goto LABEL_32;
    }

LABEL_38:
    v13 = sub_100014820();
    _NRLogWithArgs();
    IsLevelEnabled = 0;
LABEL_31:

    goto LABEL_32;
  }

  if ([v8 state] != 255)
  {
    obj = a2;
    v12 = [v8 nrUUID];
    v13 = sub_100014934(IsLevelEnabled, v9, v11, v12);

    v14 = *(IsLevelEnabled + 24);
    if (!v14)
    {
      v15 = objc_alloc_init(NSMutableDictionary);
      v16 = *(IsLevelEnabled + 24);
      *(IsLevelEnabled + 24) = v15;

      v14 = *(IsLevelEnabled + 24);
    }

    v17 = [v14 objectForKeyedSubscript:v13];
    v18 = v17;
    if (!v17)
    {
      goto LABEL_12;
    }

    v39 = v11;
    v19 = v9;
    v20 = *(v17 + 24);
    v21 = a4;
    v22 = a3;
    v23 = v18;
    v24 = v13;
    v25 = [v20 identifier];
    v26 = [v8 identifier];

    v9 = v19;
    v11 = v39;
    v27 = v25 == v26;
    v13 = v24;
    v18 = v23;
    a3 = v22;
    a4 = v21;
    if (v27)
    {
      IsLevelEnabled = 1;
    }

    else
    {
LABEL_12:
      if (sub_1000159E8(IsLevelEnabled))
      {
        if (qword_100228E98 != -1)
        {
          dispatch_once(&qword_100228E98, &stru_1001FA1F0);
        }

        if (_NRLogIsLevelEnabled())
        {
          if (qword_100228E98 != -1)
          {
            dispatch_once(&qword_100228E98, &stru_1001FA1F0);
          }

          v37 = 431;
          v38 = v8;
          v35 = "";
          v36 = "[NRIKEv2Listener registerLink:localInterfaceName:localEndpoint:]";
          _NRLogWithArgs();
        }

        v28 = v9;
        v29 = objc_alloc_init(NRIKEv2ListenerRegistration);
        p_isa = &v29->super.isa;
        if (v29)
        {
          objc_storeStrong(&v29->_link, obj);
          objc_storeStrong(p_isa + 2, a4);
          objc_storeStrong(p_isa + 1, a3);
        }

        [*(IsLevelEnabled + 24) setObject:p_isa forKeyedSubscript:{v13, v35, v36, v37, v38}];
        sub_100015C1C(IsLevelEnabled);
        sub_10001651C(IsLevelEnabled, v13);

        IsLevelEnabled = 1;
        v9 = v28;
      }

      else
      {
        if (qword_100228E98 != -1)
        {
          dispatch_once(&qword_100228E98, &stru_1001FA1F0);
        }

        if (_NRLogIsLevelEnabled())
        {
          if (qword_100228E98 != -1)
          {
            dispatch_once(&qword_100228E98, &stru_1001FA1F0);
          }

          _NRLogWithArgs();
        }

        IsLevelEnabled = 0;
      }
    }

    goto LABEL_31;
  }

  IsLevelEnabled = 0;
LABEL_32:

  return IsLevelEnabled;
}

void sub_100016E5C(id a1)
{
  v1 = [NRPairingClientManager alloc];
  v4 = sub_100003490();
  v2 = sub_100016EC8(v1, v4);
  v3 = qword_100228EA0;
  qword_100228EA0 = v2;
}

void *sub_100016EC8(void *a1, void *a2)
{
  v4 = a2;
  if (a1)
  {
    v16.receiver = a1;
    v16.super_class = NRPairingClientManager;
    v5 = objc_msgSendSuper2(&v16, "init");
    if (!v5)
    {
      v11 = sub_100017054();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      if (IsLevelEnabled)
      {
        v13 = sub_100017054();
        _NRLogWithArgs();
      }

      _os_log_pack_size();
      v14 = *__error();
      v15 = _os_log_pack_fill();
      *v15 = 136446210;
      *(v15 + 4) = "[NRPairingClientManager initWithQueue:]";
      sub_100017054();
      _NRLogAbortWithPack();
    }

    a1 = v5;
    objc_storeStrong(v5 + 1, a2);
    v6 = objc_alloc_init(NSMutableDictionary);
    v7 = a1[2];
    a1[2] = v6;

    v8 = objc_alloc_init(NSMutableDictionary);
    v9 = a1[3];
    a1[3] = v8;
  }

  return a1;
}

id sub_100017054()
{
  if (qword_100228EB8 != -1)
  {
    dispatch_once(&qword_100228EB8, &stru_1001FA230);
  }

  v1 = qword_100228EB0;

  return v1;
}

void sub_1000170A8(id a1)
{
  v1 = os_log_create("com.apple.networkrelay", "");
  v2 = qword_100228EB0;
  qword_100228EB0 = v1;

  _objc_release_x1(v1, v2);
}

uint64_t sub_1000170EC(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v1 = *(v1 + 16);
  }

  return (*(v1 + 16))(v1, *(a1 + 40), *(a1 + 41));
}

void sub_100017778(_Unwind_Exception *a1)
{
  objc_destroyWeak((v3 + 40));
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v4 - 88));
  _Unwind_Resume(a1);
}

void sub_1000177B4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained && (*(WeakRetained + 9) & 1) == 0 && (*(WeakRetained + 11) & 1) == 0 && (*(WeakRetained + 12) & 1) == 0)
  {
    v10 = WeakRetained;
    objc_opt_self();
    if (qword_1002290C0 != -1)
    {
      dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
    }

    v2 = qword_1002290B8;
    v3 = v2;
    if (v2)
    {
      v4 = v2[6];
      v5 = v4;
      if (v4)
      {
        [v4[33] removeObject:v10];
      }
    }

    else
    {
      v5 = 0;
    }

    v6 = v10;
    *(v10 + 10) = 0;
    v7 = v10[5];
    if (v7)
    {
      dispatch_source_cancel(v7);
      v8 = v10[5];
      v10[5] = 0;

      v6 = v10;
    }

    [v6[11] removeAllObjects];
    if (qword_100228EC8 != -1)
    {
      dispatch_once(&qword_100228EC8, &stru_1001FA448);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_100228EC8 != -1)
      {
        dispatch_once(&qword_100228EC8, &stru_1001FA448);
      }

      _NRLogWithArgs();
    }

    sub_100019FF4(v10);
    if ((*(v10 + 11) & 1) == 0 && (*(v10 + 12) & 1) == 0)
    {
      sub_10001A1FC(v10);
    }

    v9 = sub_100003490();
    dispatch_async(v9, &stru_1001FAE90);

    WeakRetained = v10;
  }
}

void sub_10001798C(uint64_t a1)
{
  if (*(a1 + 16) == 1)
  {
    v2 = [*(a1 + 56) activeDevices];

    if (v2)
    {
      v10 = 0u;
      v11 = 0u;
      v8 = 0u;
      v9 = 0u;
      v3 = [*(a1 + 56) activeDevices];
      v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
      if (v4)
      {
        v5 = v4;
        v6 = *v9;
        do
        {
          v7 = 0;
          do
          {
            if (*v9 != v6)
            {
              objc_enumerationMutation(v3);
            }

            sub_100018F44(a1, *(*(&v8 + 1) + 8 * v7));
            v7 = v7 + 1;
          }

          while (v5 != v7);
          v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
        }

        while (v5);
      }
    }
  }
}

void sub_100017AB4(uint64_t a1)
{
  v1 = a1;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  obj = [*(a1 + 72) copy];
  v2 = [obj countByEnumeratingWithState:&v48 objects:v54 count:16];
  p_vtable = NRSCDInterfaceConfig.vtable;
  if (v2)
  {
    v4 = v2;
    v47 = *v49;
    v44 = v1;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v49 != v47)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v48 + 1) + 8 * i);
        if (v9)
        {
          v10 = *(v9 + 8);
        }

        else
        {
          v10 = 0;
        }

        v11 = [v10 objectForKeyedSubscript:@"relay-req"];
        if ([v11 count])
        {
          v12 = objc_alloc_init(NSMutableDictionary);
          [v12 setObject:&off_1002099B0 forKeyedSubscript:@"v"];
          [v12 setObject:&off_1002099C8 forKeyedSubscript:@"nrv"];
          v13 = [v11 objectForKeyedSubscript:@"rid"];
          [v12 setObject:v13 forKeyedSubscript:@"rid"];

          v14 = [v11 objectForKeyedSubscript:@"id"];
          v15 = v14;
          if (v14)
          {
            v16 = v14;
            if (nrSupportsPHSProxy() && *(v1 + 15) == 1 && *(v1 + 13) == 1)
            {
              v17 = sub_100169028(NRDLocalDevice, v16, 0);
              v18 = v17;
              if (v17)
              {
                operationalProp = v17->_operationalProp;
              }

              else
              {
                operationalProp = 0;
              }

              v20 = operationalProp;
              v21 = [(NRDeviceOperationalProperties *)v20 proxyCapability];

              v22 = v21 == 2;
              v1 = v44;
              p_vtable = (NRSCDInterfaceConfig + 24);
              if (!v22)
              {
                [v12 setObject:&off_1002099F8 forKeyedSubscript:@"rspc"];
                if (qword_100229298 != -1)
                {
                  dispatch_once(&qword_100229298, &stru_1001FC450);
                }

                v23 = [NSNumber numberWithUnsignedChar:byte_100229290];
                [v12 setObject:v23 forKeyedSubscript:@"t"];

                [v12 setObject:&off_100209A10 forKeyedSubscript:@"fl"];
                v24 = [v11 objectForKeyedSubscript:@"reg"];
                v25 = sub_100169028(NRDLocalDevice, v16, 0);
                v43 = v24;
                v45 = v25;
                if ([v24 BOOLValue] && v25 && (v25->_databaseFlags & 1) != 0)
                {
                  [v12 setObject:&__kCFBooleanTrue forKeyedSubscript:@"reg"];
                }

                else
                {
                  [v12 setObject:&__kCFBooleanFalse forKeyedSubscript:@"reg"];
                  v26 = v16;
                  v27 = [*(v44 + 80) objectForKeyedSubscript:v26];

                  if (!v27)
                  {
                    memset(bytes, 0, sizeof(bytes));
                      ;
                    }

                    v28 = [NSData _newZeroingDataWithBytes:bytes length:32];
                    [*(v44 + 80) setObject:v28 forKeyedSubscript:v26];
                  }

                  v29 = [*(v44 + 80) objectForKeyedSubscript:v26];

                  [v12 setObject:v29 forKeyedSubscript:@"psk"];
                  if (v45 && (v45->_databaseFlags & 1) != 0)
                  {
                    if (qword_100228EC8 != -1)
                    {
                      dispatch_once(&qword_100228EC8, &stru_1001FA448);
                    }

                    if (_NRLogIsLevelEnabled())
                    {
                      if (qword_100228EC8 != -1)
                      {
                        dispatch_once(&qword_100228EC8, &stru_1001FA448);
                      }

                      v41 = 577;
                      v42 = v45;
                      v39 = "";
                      v40 = "[NROnDemandLinkSetupManager sendReplyForInternetRelayRequest]";
                      _NRLogWithArgs();
                    }

                    v30 = v45->_nrUUID;
                    sub_10016BD8C(NRDLocalDevice, v30, &stru_1001FA358);
                  }
                }

                v32 = [NRValidPeer alloc];
                v33 = [v11 objectForKeyedSubscript:@"nrv"];
                v34 = sub_10001823C(&v32->super.isa, v33);
                [*(v44 + 88) setObject:v34 forKeyedSubscript:v16];

                p_vtable = NRSCDInterfaceConfig.vtable;
LABEL_7:
                v52 = @"relay-res";
                v53 = v12;
                v7 = [NSDictionary dictionaryWithObjects:&v53 forKeys:&v52 count:1, v39, v40, v41];
                if (v9)
                {
                  v8 = *(v9 + 24);
                }

                else
                {
                  v8 = 0;
                }

                (*(v8 + 16))(v8, v7);
                [*(v1 + 72) removeObject:v9];

                goto LABEL_10;
              }
            }

            else
            {
            }
          }

          if (qword_100228EC8 != -1)
          {
            dispatch_once(&qword_100228EC8, &stru_1001FA448);
          }

          v31 = p_vtable[472];
          if (_NRLogIsLevelEnabled())
          {
            if (qword_100228EC8 != -1)
            {
              dispatch_once(&qword_100228EC8, &stru_1001FA448);
            }

            v6 = p_vtable[472];
            v41 = 562;
            v42 = v15;
            v39 = "";
            v40 = "[NROnDemandLinkSetupManager sendReplyForInternetRelayRequest]";
            _NRLogWithArgs();
          }

          [v12 setObject:&off_1002099E0 forKeyedSubscript:{@"rspc", v39, v40, v41, v42}];
          goto LABEL_7;
        }

LABEL_10:
      }

      v4 = [obj countByEnumeratingWithState:&v48 objects:v54 count:16];
    }

    while (v4);
  }

  if ([*(v1 + 88) count])
  {
    if (qword_100228EC8 != -1)
    {
      dispatch_once(&qword_100228EC8, &stru_1001FA448);
    }

    v35 = p_vtable[472];
    if (_NRLogIsLevelEnabled())
    {
      if (qword_100228EC8 != -1)
      {
        dispatch_once(&qword_100228EC8, &stru_1001FA448);
      }

      v36 = p_vtable[472];
      _NRLogWithArgs();
    }

    sub_10001839C(v1);
  }

  else
  {
    if (qword_100228EC8 != -1)
    {
      dispatch_once(&qword_100228EC8, &stru_1001FA448);
    }

    v37 = p_vtable[472];
    if (_NRLogIsLevelEnabled())
    {
      if (qword_100228EC8 != -1)
      {
        dispatch_once(&qword_100228EC8, &stru_1001FA448);
      }

      v38 = p_vtable[472];
      _NRLogWithArgs();
    }
  }
}

id *sub_10001823C(id *a1, void *a2)
{
  v4 = a2;
  if (a1)
  {
    v12.receiver = a1;
    v12.super_class = NRValidPeer;
    v5 = objc_msgSendSuper2(&v12, "init");
    if (!v5)
    {
      v7 = sub_100018EEC();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      if (IsLevelEnabled)
      {
        v9 = sub_100018EEC();
        _NRLogWithArgs();
      }

      _os_log_pack_size();
      v10 = *__error();
      v11 = _os_log_pack_fill();
      *v11 = 136446210;
      *(v11 + 4) = "[NRValidPeer initWithInnerLinkVersion:]";
      sub_100018EEC();
      _NRLogAbortWithPack();
    }

    a1 = v5;
    objc_storeStrong(v5 + 1, a2);
  }

  return a1;
}

void sub_10001839C(uint64_t a1)
{
  if ([*(a1 + 88) count])
  {
    v2 = *(a1 + 40);
    if (v2)
    {
      dispatch_source_cancel(v2);
      v3 = *(a1 + 40);
      *(a1 + 40) = 0;
    }
  }

  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  obj = *(a1 + 88);
  v57 = [obj countByEnumeratingWithState:&v64 objects:v69 count:16];
  if (v57)
  {
    p_vtable = NRSCDInterfaceConfig.vtable;
    v56 = *v65;
    do
    {
      for (i = 0; i != v57; i = i + 1)
      {
        if (*v65 != v56)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v64 + 1) + 8 * i);
        v7 = *(a1 + 88);
        v8 = [v7 objectForKeyedSubscript:v6];
        v9 = v8;
        if (v8)
        {
          v10 = *(v8 + 8);
        }

        else
        {
          v10 = 0;
        }

        v11 = v10;

        if (v11)
        {
          v12 = [v11 unsignedShortValue];
        }

        else
        {
          v12 = 0;
        }

        v59 = v12;
        v13 = sub_100169028((p_vtable + 37), v6, 0);
        v58 = v11;
        if (v13)
        {
          v14 = v13;
          if (qword_100228EC8 != -1)
          {
            dispatch_once(&qword_100228EC8, &stru_1001FA448);
          }

          if (_NRLogIsLevelEnabled())
          {
            if (qword_100228EC8 != -1)
            {
              dispatch_once(&qword_100228EC8, &stru_1001FA448);
            }

            v51 = 825;
            v53 = v14;
            v47 = "";
            v49 = "[NROnDemandLinkSetupManager activateValidPHSPeers]";
LABEL_31:
            _NRLogWithArgs();
          }
        }

        else
        {
          v15 = v6;
          v16 = objc_opt_self();
          v14 = sub_100169028(v16, v15, 1);

          if (qword_100228EC8 != -1)
          {
            dispatch_once(&qword_100228EC8, &stru_1001FA448);
          }

          if (_NRLogIsLevelEnabled())
          {
            if (qword_100228EC8 != -1)
            {
              dispatch_once(&qword_100228EC8, &stru_1001FA448);
            }

            v51 = 828;
            v53 = v14;
            v47 = "";
            v49 = "[NROnDemandLinkSetupManager activateValidPHSPeers]";
            goto LABEL_31;
          }
        }

        v17 = objc_alloc_init(NSMutableArray);
        v18 = objc_alloc_init(NSMutableArray);
        if (*(a1 + 13) == 1)
        {
          [v17 addObject:&off_100209A40];
        }

        if (*(a1 + 14) == 1)
        {
          [v17 addObject:&off_100209A58];
          [v18 addObject:&off_100209A70];
          [v18 addObject:&off_100209A88];
        }

        if (!v14)
        {
          v28 = 0;
          v31 = 0;
          goto LABEL_65;
        }

        if ((v14->_databaseFlags & 1) == 0 || (v19 = v14->_operationalProp, v19, !v19))
        {
LABEL_62:
          v28 = v14->_operationalProp;
          outOfBandKeychainItem = v14->_outOfBandKeychainItem;
          if (outOfBandKeychainItem)
          {
            outOfBandKeychainItem = outOfBandKeychainItem->_secretData;
          }

          v30 = outOfBandKeychainItem;
          v31 = v30;
          if (v14->_databaseFlags)
          {
            if (v59)
            {
              v54 = v17;
              v38 = v30;
              v39 = v14->_nrUUID;
              v31 = v38;
              v17 = v54;
              sub_100171304((p_vtable + 37), v59, v39);

              if (v31)
              {
                goto LABEL_76;
              }
            }

            else if (v30)
            {
              goto LABEL_76;
            }
          }

          else
          {
LABEL_65:
            v32 = v28;
            v28 = objc_alloc_init(NRDeviceOperationalProperties);

            v33 = *(a1 + 80);
            if (v14)
            {
              idsDeviceID = v14->_idsDeviceID;
            }

            else
            {
              idsDeviceID = 0;
            }

            v35 = idsDeviceID;
            v36 = [v33 objectForKeyedSubscript:v35];

            if (*(a1 + 13))
            {
              v37 = 1;
              p_vtable = (NRSCDInterfaceConfig + 24);
              goto LABEL_74;
            }

            p_vtable = NRSCDInterfaceConfig.vtable;
            if (*(a1 + 14) == 1)
            {
              v37 = 2;
LABEL_74:
              [(NRDeviceOperationalProperties *)v28 setProxyCapability:v37, v47, v49, v51];
            }

            [(NRDeviceOperationalProperties *)v28 setAllowedLinkTypes:v17, v47, v49, v51];
            [(NRDeviceOperationalProperties *)v28 setAllowedLinkSubtypes:v18];
            [(NRDeviceOperationalProperties *)v28 setUsesTLS:1];
            v31 = v36;
            if (v36)
            {
LABEL_76:
              if ([(NRDeviceOperationalProperties *)v28 proxyCapability:v47]== 1)
              {
                if (*(a1 + 15) == 1)
                {
                  v40 = +[NRDeviceProxyProviderCriteria copyCriteriaForCellularSlicing];
                }

                else
                {
                  v40 = objc_alloc_init(NRDeviceProxyProviderCriteria);
                }

                v41 = v40;
                [(NRDeviceOperationalProperties *)v28 setProxyProviderCriteria:v40];
              }

              if (_os_feature_enabled_impl())
              {
                if (qword_100228EC8 != -1)
                {
                  dispatch_once(&qword_100228EC8, &stru_1001FA448);
                }

                if (_NRLogIsLevelEnabled())
                {
                  if (qword_100228EC8 != -1)
                  {
                    dispatch_once(&qword_100228EC8, &stru_1001FA448);
                  }

                  _NRLogWithArgs();
                  [(NRDeviceOperationalProperties *)v28 setAllowedPeerDeviceType:255, "", "[NROnDemandLinkSetupManager activateValidPHSPeers]", 907];
LABEL_100:
                  [(NRDeviceOperationalProperties *)v28 setAllowsDeviceDiscovery:1];
                  [(NRDeviceOperationalProperties *)v28 setAllowsDeadPeerDetection:1];
                  if (v14)
                  {
                    operationalProp = v14->_operationalProp;
                  }

                  else
                  {
                    operationalProp = 0;
                  }

                  v44 = operationalProp;
                  [(NRDeviceOperationalProperties *)v28 setOperationalScope:[(NRDeviceOperationalProperties *)v44 operationalScope]| [(NRDeviceOperationalProperties *)v28 operationalScope]| 1];

                  [(NRDeviceOperationalProperties *)v28 setActiveOperationalScope:[(NRDeviceOperationalProperties *)v28 activeOperationalScope]| 1];
                  sub_10013E868(v28);
                  if (qword_100228EC8 != -1)
                  {
                    dispatch_once(&qword_100228EC8, &stru_1001FA448);
                  }

                  if (_NRLogIsLevelEnabled())
                  {
                    if (qword_100228EC8 != -1)
                    {
                      dispatch_once(&qword_100228EC8, &stru_1001FA448);
                    }

                    _NRLogWithArgs();
                  }

                  if (v14)
                  {
                    nrUUID = v14->_nrUUID;
                  }

                  else
                  {
                    nrUUID = 0;
                  }

                  v46 = nrUUID;
                  sub_100169CF4((p_vtable + 37), v46, 0, v59, 0, v31, 0, 0, 0, 0, 0, 0, 0, v28, 0, @"relay-req", &stru_1001FA3E8);

LABEL_9:
                  goto LABEL_10;
                }

                v42 = 255;
              }

              else if (*(a1 + 13))
              {
                v42 = 6;
              }

              else
              {
                if (*(a1 + 14) != 1)
                {
                  goto LABEL_100;
                }

                v42 = 1;
              }

              [(NRDeviceOperationalProperties *)v28 setAllowedPeerDeviceType:v42, v48, v50, v52];
              goto LABEL_100;
            }
          }

          if (qword_100228EC8 != -1)
          {
            dispatch_once(&qword_100228EC8, &stru_1001FA448);
          }

          if (_NRLogIsLevelEnabled())
          {
            if (qword_100228EC8 != -1)
            {
              dispatch_once(&qword_100228EC8, &stru_1001FA448);
            }

            v51 = 893;
            v47 = "";
            v49 = "[NROnDemandLinkSetupManager activateValidPHSPeers]";
            _NRLogWithArgs();
          }

          goto LABEL_9;
        }

        if (*(a1 + 14) == 1 && (v20 = v14->_operationalProp, v21 = [(NRDeviceOperationalProperties *)v20 proxyCapability], v20, v21 == 1))
        {
          if (qword_100228EC8 != -1)
          {
            dispatch_once(&qword_100228EC8, &stru_1001FA448);
          }

          if (_NRLogIsLevelEnabled())
          {
            if (qword_100228EC8 != -1)
            {
              dispatch_once(&qword_100228EC8, &stru_1001FA448);
            }

            v51 = 849;
            v47 = "";
            v49 = "[NROnDemandLinkSetupManager activateValidPHSPeers]";
            _NRLogWithArgs();
          }
        }

        else
        {
          v62 = 0u;
          v63 = 0u;
          v60 = 0u;
          v61 = 0u;
          v22 = v14->_operationalProp;
          v23 = [(NRDeviceOperationalProperties *)v22 allowedLinkTypes];

          v24 = [v23 countByEnumeratingWithState:&v60 objects:v68 count:16];
          if (v24)
          {
            v25 = v24;
            v26 = *v61;
            while (2)
            {
              for (j = 0; j != v25; j = j + 1)
              {
                if (*v61 != v26)
                {
                  objc_enumerationMutation(v23);
                }

                if ([v17 containsObject:{*(*(&v60 + 1) + 8 * j), v47, v49, v51, v53}])
                {

                  goto LABEL_62;
                }
              }

              v25 = [v23 countByEnumeratingWithState:&v60 objects:v68 count:16];
              if (v25)
              {
                continue;
              }

              break;
            }
          }

          if (qword_100228EC8 != -1)
          {
            dispatch_once(&qword_100228EC8, &stru_1001FA448);
          }

          if (_NRLogIsLevelEnabled())
          {
            if (qword_100228EC8 != -1)
            {
              dispatch_once(&qword_100228EC8, &stru_1001FA448);
            }

            v51 = 861;
            v47 = "";
            v49 = "[NROnDemandLinkSetupManager activateValidPHSPeers]";
            _NRLogWithArgs();
          }
        }

LABEL_10:
      }

      v57 = [obj countByEnumeratingWithState:&v64 objects:v69 count:16];
    }

    while (v57);
  }
}

void sub_100018E08(id a1, int64_t a2, NSString *a3)
{
  v3 = a3;
  if (qword_100228EC8 != -1)
  {
    dispatch_once(&qword_100228EC8, &stru_1001FA448);
  }

  if (_NRLogIsLevelEnabled())
  {
    if (qword_100228EC8 != -1)
    {
      dispatch_once(&qword_100228EC8, &stru_1001FA448);
    }

    _NRLogWithArgs();
  }
}

id sub_100018EEC()
{
  if (qword_100228EC8 != -1)
  {
    dispatch_once(&qword_100228EC8, &stru_1001FA448);
  }

  v1 = qword_100228EC0;

  return v1;
}

void sub_100018F44(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1 && ((*(a1 + 11) & 1) != 0 || *(a1 + 12) == 1) && *(a1 + 14) == 1)
  {
    v31 = v3;
    v4 = [v3 model];
    v3 = v31;
    if (!v4 || ([v31 model], v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "localizedCaseInsensitiveContainsString:", @"phone"), v5, v4, v3 = v31, v6))
    {
      v7 = v3;
      ++*(a1 + 24);
      v8 = [NSNumber numberWithUnsignedInt:?];
      v9 = objc_alloc_init(NSMutableDictionary);
      [v9 setObject:&off_1002099B0 forKeyedSubscript:@"v"];
      [v9 setObject:&off_1002099C8 forKeyedSubscript:@"nrv"];
      objc_opt_self();
      if (qword_1002290C0 != -1)
      {
        dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
      }

      v10 = qword_1002290B8;
      v11 = sub_1000CAD2C(v10, 0);
      [v9 setObject:v11 forKeyedSubscript:@"id"];

      v12 = [v7 idsDeviceIdentifier];

      if (v12)
      {
        v13 = [v7 idsDeviceIdentifier];
        v14 = sub_100169028(NRDLocalDevice, v13, 0);

        if (v14)
        {
          v15 = v14->_databaseFlags & 1;
        }

        else
        {
          v15 = 0;
        }

        v16 = [NSNumber numberWithBool:v15];
        [v9 setObject:v16 forKeyedSubscript:@"reg"];
      }

      [v9 setObject:&off_100209A28 forKeyedSubscript:@"r"];
      [v9 setObject:v8 forKeyedSubscript:@"rid"];
      if (qword_100229298 != -1)
      {
        dispatch_once(&qword_100229298, &stru_1001FC450);
      }

      v17 = [NSNumber numberWithUnsignedChar:byte_100229290];
      [v9 setObject:v17 forKeyedSubscript:@"t"];

      [v9 setObject:&off_100209A10 forKeyedSubscript:@"fl"];
      v40 = @"relay-req";
      v41 = v9;
      v18 = [NSDictionary dictionaryWithObjects:&v41 forKeys:&v40 count:1];
      v19 = objc_alloc_init(RPCompanionLinkClient);
      [v19 setDispatchQueue:*(a1 + 32)];
      [v19 setServiceType:@"com.apple.networkrelay.on-demand-setup"];
      [v19 setControlFlags:4];
      [v19 setDestinationDevice:v7];
      objc_initWeak(&location, a1);
      v20 = *(a1 + 56);
      v32[0] = _NSConcreteStackBlock;
      v32[1] = 3221225472;
      v32[2] = sub_100019408;
      v32[3] = &unk_1001FA3A8;
      objc_copyWeak(&v38, &location);
      v21 = v20;
      v33 = v21;
      v22 = v7;
      v34 = v22;
      v23 = v8;
      v35 = v23;
      v24 = v19;
      v36 = v24;
      v25 = v18;
      v37 = v25;
      [v24 activateWithCompletion:v32];
      v26 = *(a1 + 64);
      if (!v26)
      {
        v27 = objc_alloc_init(NSMutableDictionary);
        v29 = *(a1 + 64);
        v28 = (a1 + 64);
        *v28 = v27;

        v26 = *v28;
      }

      v30 = v26;
      [v30 setObject:v24 forKeyedSubscript:v23];

      objc_destroyWeak(&v38);
      objc_destroyWeak(&location);

      v3 = v31;
    }
  }
}

void sub_1000193E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v21 + 72));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100019408(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  if (WeakRetained && (*(WeakRetained + 9) & 1) == 0 && WeakRetained[7] == *(a1 + 32) && *(WeakRetained + 16) == 1)
  {
    if (v3)
    {
      v5 = WeakRetained;
      if (qword_100228EC8 != -1)
      {
        dispatch_once(&qword_100228EC8, &stru_1001FA448);
      }

      if (_NRLogIsLevelEnabled())
      {
        if (qword_100228EC8 != -1)
        {
          dispatch_once(&qword_100228EC8, &stru_1001FA448);
        }

        v14 = v3;
        v15 = *(a1 + 40);
        v13 = 666;
        v11 = "";
        v12 = "[NROnDemandLinkSetupManager requestInternetRelayFromPeer:]_block_invoke";
        _NRLogWithArgs();
      }

      v6 = v5;
      v7 = [v5[8] objectForKeyedSubscript:{*(a1 + 48), v11, v12, v13, v14, v15}];
      [v7 invalidate];

      [v6[8] setObject:0 forKeyedSubscript:*(a1 + 48)];
      WeakRetained = v6;
    }

    else
    {
      v9 = *(a1 + 56);
      v8 = *(a1 + 64);
      v16[0] = _NSConcreteStackBlock;
      v16[1] = 3221225472;
      v16[2] = sub_10001964C;
      v16[3] = &unk_1001FA380;
      v10 = WeakRetained;
      objc_copyWeak(&v22, (a1 + 72));
      v17 = *(a1 + 32);
      v18 = 0;
      v19 = *(a1 + 40);
      v20 = v10;
      v21 = *(a1 + 48);
      [v9 sendRequestID:@"com.apple.networkrelay.on-demand-setup" request:v8 options:0 responseHandler:v16];

      objc_destroyWeak(&v22);
      WeakRetained = v10;
    }
  }
}

void sub_10001964C(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v48 = a2;
  v7 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  if (WeakRetained && (*(WeakRetained + 9) & 1) == 0 && WeakRetained[7] == *(a1 + 32) && *(WeakRetained + 16) == 1)
  {
    v47 = WeakRetained;
    if (a4)
    {
      if (qword_100228EC8 != -1)
      {
        dispatch_once(&qword_100228EC8, &stru_1001FA448);
      }

      if (_NRLogIsLevelEnabled())
      {
        if (qword_100228EC8 != -1)
        {
          dispatch_once(&qword_100228EC8, &stru_1001FA448);
        }

        v42 = *(a1 + 40);
        v43 = *(a1 + 48);
        v41 = 683;
        v39 = "";
        v40 = "[NROnDemandLinkSetupManager requestInternetRelayFromPeer:]_block_invoke_2";
        _NRLogWithArgs();
      }

      v9 = *(a1 + 56);
      if (v9)
      {
        v10 = *(v9 + 64);
      }

      else
      {
        v10 = 0;
      }

      v11 = [v10 objectForKeyedSubscript:{*(a1 + 64), v39, v40, v41, v42, v43}];
      [v11 invalidate];

      v12 = *(a1 + 56);
      if (v12)
      {
        v13 = *(v12 + 64);
      }

      else
      {
        v13 = 0;
      }

      [v13 setObject:0 forKeyedSubscript:*(a1 + 64)];
      goto LABEL_54;
    }

    v14 = *(a1 + 48);
    v15 = v48;
    v16 = v7;
    if (qword_100228EC8 != -1)
    {
      dispatch_once(&qword_100228EC8, &stru_1001FA448);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_100228EC8 != -1)
      {
        dispatch_once(&qword_100228EC8, &stru_1001FA448);
      }

      v17 = qword_100228EC0;
      v42 = [v15 allKeys];
      v43 = v14;
      v41 = 699;
      v39 = "";
      v40 = "[NROnDemandLinkSetupManager processInternetRelayResponseFromPeer:response:options:]";
      _NRLogWithArgs();
    }

    v18 = [v15 objectForKeyedSubscript:{@"relay-res", v39, v40, v41, v42, v43}];
    if (![v18 count])
    {
LABEL_53:

LABEL_54:
      WeakRetained = v47;
      goto LABEL_55;
    }

    v19 = [v18 objectForKeyedSubscript:@"rspc"];
    v20 = [v19 unsignedShortValue];
    if (v20 != 1)
    {
      v25 = v20;
      if (qword_100228EC8 != -1)
      {
        dispatch_once(&qword_100228EC8, &stru_1001FA448);
      }

      if (_NRLogIsLevelEnabled())
      {
        if (qword_100228EC8 != -1)
        {
          dispatch_once(&qword_100228EC8, &stru_1001FA448);
        }

        if ((v25 & 0xFC) == 0)
        {
          v38 = off_1001FA468[v25 & 3];
        }

        _NRLogWithArgs();
      }

      goto LABEL_52;
    }

    v45 = v19;
    v46 = v16;
    v21 = [v18 objectForKeyedSubscript:@"reg"];
    v22 = [v14 idsDeviceIdentifier];
    v23 = sub_100169028(NRDLocalDevice, v22, 0);

    v44 = v21;
    if ([v21 BOOLValue])
    {
      if (v23)
      {
        databaseFlags = v23->_databaseFlags;
        if (databaseFlags)
        {
          goto LABEL_42;
        }

        goto LABEL_38;
      }
    }

    else if (v23)
    {
      databaseFlags = v23->_databaseFlags;
LABEL_38:
      if ((databaseFlags & 3) != 0)
      {
        v26 = v23->_nrUUID;
        sub_10016BD8C(NRDLocalDevice, v26, &stru_1001FA3C8);
      }
    }

    v27 = [v18 objectForKeyedSubscript:@"psk"];
    if (!v27)
    {
      if (qword_100228EC8 != -1)
      {
        dispatch_once(&qword_100228EC8, &stru_1001FA448);
      }

      v19 = v45;
      v16 = v46;
      if (_NRLogIsLevelEnabled())
      {
        if (qword_100228EC8 != -1)
        {
          dispatch_once(&qword_100228EC8, &stru_1001FA448);
        }

        _NRLogWithArgs();
      }

      goto LABEL_43;
    }

    v28 = v27;
    v29 = v47[10];
    v30 = [v14 idsDeviceIdentifier];
    [v29 setObject:v28 forKeyedSubscript:v30];

LABEL_42:
    v31 = [v18 objectForKeyedSubscript:@"rid"];
    v32 = [v47[8] objectForKeyedSubscript:v31];
    [v32 invalidate];

    [v47[8] setObject:0 forKeyedSubscript:v31];
    v33 = [NRValidPeer alloc];
    v34 = [v18 objectForKeyedSubscript:@"nrv"];
    v35 = sub_10001823C(&v33->super.isa, v34);

    v36 = v47[11];
    v37 = [v14 idsDeviceIdentifier];
    [v36 setObject:v35 forKeyedSubscript:v37];

    sub_10001839C(v47);
    v19 = v45;
    v16 = v46;
LABEL_43:

LABEL_52:
    goto LABEL_53;
  }

LABEL_55:
}

void sub_100019C38(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained && WeakRetained[7] == *(a1 + 32))
  {
    v4 = WeakRetained;
    if (qword_100228EC8 != -1)
    {
      dispatch_once(&qword_100228EC8, &stru_1001FA448);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_100228EC8 != -1)
      {
        dispatch_once(&qword_100228EC8, &stru_1001FA448);
      }

      _NRLogWithArgs();
    }

    sub_100018F44(*(a1 + 40), v5);
    WeakRetained = v4;
  }
}

void sub_100019D4C(uint64_t a1, void *a2)
{
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained && WeakRetained[7] == *(a1 + 32))
  {
    v4 = WeakRetained;
    if (qword_100228EC8 != -1)
    {
      dispatch_once(&qword_100228EC8, &stru_1001FA448);
    }

    IsLevelEnabled = _NRLogIsLevelEnabled();
    WeakRetained = v4;
    if (IsLevelEnabled)
    {
      if (qword_100228EC8 != -1)
      {
        dispatch_once(&qword_100228EC8, &stru_1001FA448);
      }

      _NRLogWithArgs();
      WeakRetained = v4;
    }
  }
}

void sub_100019E5C(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = WeakRetained;
  if (WeakRetained && WeakRetained[7] == *(a1 + 32))
  {
    if (qword_100228EC8 != -1)
    {
      dispatch_once(&qword_100228EC8, &stru_1001FA448);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_100228EC8 != -1)
      {
        dispatch_once(&qword_100228EC8, &stru_1001FA448);
      }

      _NRLogWithArgs();
    }

    if (v5)
    {
      [*(v4 + 56) invalidate];
    }

    else
    {
      *(v4 + 16) = 1;
      sub_10001798C(v4);
    }
  }
}

void sub_100019F84(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained && (*(WeakRetained + 9) & 1) == 0 && *(WeakRetained + 5) == *(a1 + 32))
  {
    v3 = WeakRetained;
    [WeakRetained didUpdatePHSState:0 llphsActive:0];
    WeakRetained = v3;
  }
}

void sub_100019FF4(uint64_t a1)
{
  if (a1)
  {
    v1 = sub_10001A324(a1);
    if (qword_100228EC8 != -1)
    {
      dispatch_once(&qword_100228EC8, &stru_1001FA448);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_100228EC8 != -1)
      {
        dispatch_once(&qword_100228EC8, &stru_1001FA448);
      }

      _NRLogWithArgs();
    }

    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v2 = v1;
    v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = *v12;
      do
      {
        for (i = 0; i != v4; i = i + 1)
        {
          if (*v12 != v5)
          {
            objc_enumerationMutation(v2);
          }

          v8 = sub_100163A30(NRDLocalDevice, *(*(&v11 + 1) + 8 * i));
          v9 = v8;
          if (!v8)
          {
            v7 = 0;
LABEL_13:
            sub_10016BD8C(NRDLocalDevice, v7, &stru_1001FA428);
            goto LABEL_14;
          }

          v10 = *(v8 + 48);
          v7 = *(v8 + 24);
          if ((v10 & 1) == 0)
          {
            goto LABEL_13;
          }

          sub_10016C20C(NRDLocalDevice, v7, &stru_1001FA408);
LABEL_14:
        }

        v4 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v4);
    }
  }
}

void sub_10001A1FC(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2)
  {
    [v2 invalidate];
    v3 = *(a1 + 56);
    *(a1 + 56) = 0;

    *(a1 + 16) = 0;
  }

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v4 = [*(a1 + 64) allValues];
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v10 + 1) + 8 * v8) invalidate];
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  v9 = *(a1 + 64);
  *(a1 + 64) = 0;
}

id sub_10001A324(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v22 = objc_alloc_init(NSMutableArray);
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v2 = sub_10016C8BC();
  v3 = [v2 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v24;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v24 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v10 = sub_100163A30(NRDLocalDevice, *(*(&v23 + 1) + 8 * i));
        v11 = v10;
        if (v10)
        {
          v12 = *(v10 + 144);
          if (v12)
          {
            v13 = v12;
            v14 = v11[18];
            v15 = [v14 operationalScope];

            if (v15)
            {
              v16 = v11[18];
              v17 = [v16 activeOperationalScope];

              v18 = v11[18];
              v19 = [v18 operationalScope];

              if ((v19 & 1) != 0 && (*(a1 + 11) & 1) == 0 && *(a1 + 12) != 1)
              {
                v17 &= ~1uLL;
              }

              v7 = v11[18];
              [v7 setActiveOperationalScope:v17];

              v8 = v11[18];
              v9 = [v8 activeOperationalScope];

              if (!v9)
              {
                v20 = v11[3];
                [v22 addObject:v20];
              }
            }
          }
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v4);
  }

  return v22;
}

void sub_10001A540(id a1, int64_t a2, NSString *a3)
{
  v3 = a3;
  if (qword_100228EC8 != -1)
  {
    dispatch_once(&qword_100228EC8, &stru_1001FA448);
  }

  if (_NRLogIsLevelEnabled())
  {
    if (qword_100228EC8 != -1)
    {
      dispatch_once(&qword_100228EC8, &stru_1001FA448);
    }

    _NRLogWithArgs();
  }
}

void sub_10001A624(id a1, int64_t a2, NSString *a3)
{
  v3 = a3;
  if (qword_100228EC8 != -1)
  {
    dispatch_once(&qword_100228EC8, &stru_1001FA448);
  }

  if (_NRLogIsLevelEnabled())
  {
    if (qword_100228EC8 != -1)
    {
      dispatch_once(&qword_100228EC8, &stru_1001FA448);
    }

    _NRLogWithArgs();
  }
}

void sub_10001A708(id a1)
{
  v1 = os_log_create("com.apple.networkrelay", "");
  v2 = qword_100228EC0;
  qword_100228EC0 = v1;

  _objc_release_x1(v1, v2);
}

id *sub_10001A74C(id *a1, void *a2)
{
  v4 = a2;
  if (a1)
  {
    v18.receiver = a1;
    v18.super_class = NROnDemandLinkSetupManager;
    v5 = objc_msgSendSuper2(&v18, "init");
    if (!v5)
    {
      v13 = sub_100018EEC();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      if (IsLevelEnabled)
      {
        v15 = sub_100018EEC();
        _NRLogWithArgs();
      }

      _os_log_pack_size();
      v16 = *__error();
      v17 = _os_log_pack_fill();
      *v17 = 136446210;
      *(v17 + 4) = "[NROnDemandLinkSetupManager initWithQueue:]";
      sub_100018EEC();
      _NRLogAbortWithPack();
    }

    a1 = v5;
    objc_storeStrong(v5 + 4, a2);
    v6 = objc_alloc_init(NSMutableArray);
    v7 = a1[9];
    a1[9] = v6;

    v8 = objc_alloc_init(NSMutableDictionary);
    v9 = a1[10];
    a1[10] = v8;

    v10 = objc_alloc_init(NSMutableDictionary);
    v11 = a1[11];
    a1[11] = v10;

    *(a1 + 5) = -1;
  }

  return a1;
}

void sub_10001A8F8(uint64_t a1)
{
  objc_opt_self();
  if (qword_1002290C0 != -1)
  {
    dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
  }

  v2 = qword_1002290B8;
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10001A9EC;
  v3[3] = &unk_1001FBF00;
  objc_copyWeak(&v4, (a1 + 32));

  objc_destroyWeak(&v4);
}

void sub_10001A9EC(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_self();
  if (qword_1002294C8 != -1)
  {
    dispatch_once(&qword_1002294C8, &stru_1001FD250);
  }

  v4 = qword_1002294C0;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10001AAE8;
  v5[3] = &unk_1001FC730;
  objc_copyWeak(&v6, (a1 + 32));
  sub_1001816DC(v4, v5);

  objc_destroyWeak(&v6);
}

uint64_t sub_10001AAE8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained && (*(WeakRetained + 9) & 1) == 0)
  {
    val = WeakRetained;
    if (!*(WeakRetained + 6))
    {
      v3 = objc_alloc_init(RPCompanionLinkClient);
      [v3 setDispatchQueue:*(val + 4)];
      objc_initWeak(&location, val);
      handler = _NSConcreteStackBlock;
      v28 = 3221225472;
      v29 = sub_10001B920;
      v30 = &unk_1001FA2A0;
      objc_copyWeak(&v32, &location);
      v4 = v3;
      v31 = v4;
      [v4 registerRequestID:@"com.apple.networkrelay.on-demand-setup" options:0 handler:&handler];
      v21 = _NSConcreteStackBlock;
      v22 = 3221225472;
      v23 = sub_10001BDB0;
      v24 = &unk_1001FD0D8;
      objc_copyWeak(&v26, &location);
      v5 = v4;
      v25 = v5;
      [v5 setInterruptionHandler:&v21];
      from[0] = _NSConcreteStackBlock;
      from[1] = 3221225472;
      from[2] = sub_10001BEA4;
      from[3] = &unk_1001FD0D8;
      objc_copyWeak(&v20, &location);
      v6 = v5;
      v19 = v6;
      [v6 setInvalidationHandler:from];
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_10001BF98;
      v15[3] = &unk_1001FC1A8;
      objc_copyWeak(&v17, &location);
      v7 = v6;
      v16 = v7;
      [v7 activateWithCompletion:v15];
      v8 = *(val + 6);
      *(val + 6) = v7;
      v9 = v7;

      objc_destroyWeak(&v17);
      objc_destroyWeak(&v20);

      objc_destroyWeak(&v26);
      objc_destroyWeak(&v32);
      objc_destroyWeak(&location);
      v2 = val;
    }

    objc_initWeak(from, v2);
    v10 = *(val + 4);
    handler = _NSConcreteStackBlock;
    v28 = 3221225472;
    v29 = sub_10001AF10;
    v30 = &unk_1001FA318;
    objc_copyWeak(&v31, from);
    xpc_set_event_stream_handler("com.apple.notifyd.matching", v10, &handler);

    v11 = *(val + 4);
    v21 = _NSConcreteStackBlock;
    v22 = 3221225472;
    v23 = sub_10001AFB4;
    v24 = &unk_1001FA318;
    objc_copyWeak(&v25, from);
    xpc_set_event_stream_handler("com.apple.rapport.matching", v11, &v21);

    objc_destroyWeak(&v25);
    objc_destroyWeak(&v31);
    objc_destroyWeak(from);
    v12 = dispatch_time(0, 1000000000);
    dispatch_after(v12, *(val + 4), &stru_1001FA250);
    v2 = val;
  }

  return _objc_release_x1(WeakRetained, v2);
}

void sub_10001AE94(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v19 + 40));
  objc_destroyWeak((v18 + 40));
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak((v20 - 88));
  _Unwind_Resume(a1);
}

void sub_10001AF10(uint64_t a1, void *a2)
{
  xdict = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    if ((WeakRetained[9] & 1) == 0)
    {
      string = xpc_dictionary_get_string(xdict, _xpc_event_key_name);
      sub_10001B258(string, v6, @"notify(%s)", v7, v8, v9, v10, v11, string);
      if (!strcmp(string, "com.apple.networkrelay.launch.phs"))
      {
        sub_10001B2CC(v4);
      }
    }
  }
}

void sub_10001AFB4(uint64_t a1, void *a2)
{
  v24 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    if ((*(WeakRetained + 9) & 1) == 0)
    {
      string = xpc_dictionary_get_string(v24, _xpc_event_key_name);
      sub_10001B258(string, v6, @"rapport(%s)", v7, v8, v9, v10, v11, string);
      if (xpc_dictionary_get_BOOL(v24, "replyRequired"))
      {
        v12 = v24;
        if (v12)
        {
          v13 = v12;
          reply = xpc_dictionary_create_reply(v12);
          if (reply)
          {
            v15 = reply;

            xpc_dictionary_send_reply();
            goto LABEL_7;
          }

          v19 = sub_100018EEC();
          IsLevelEnabled = _NRLogIsLevelEnabled();

          if (IsLevelEnabled)
          {
            v21 = sub_100018EEC();
            _NRLogWithArgs();
          }
        }

        else
        {
          v16 = sub_100018EEC();
          v17 = _NRLogIsLevelEnabled();

          if (v17)
          {
            v18 = sub_100018EEC();
            _NRLogWithArgs();
          }
        }

        _os_log_pack_size();
        __chkstk_darwin();
        v22 = *__error();
        v23 = _os_log_pack_fill();
        *v23 = 136446210;
        *(v23 + 4) = "nr_xpc_dictionary_create_reply";
        sub_100018EEC();
        _NRLogAbortWithPack();
      }
    }
  }

LABEL_7:
}

void sub_10001B258(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9 = a3;
  v10 = [[NSString alloc] initWithFormat:v9 arguments:&a9];

  sub_1000059A8(0, 30101, &stru_1001FDE68, v10);
}

void sub_10001B2CC(_BYTE *a1)
{
  if (!a1)
  {
    return;
  }

  if (nrSupportsPHSProxy())
  {
    objc_opt_self();
    if (qword_1002294C8 != -1)
    {
      dispatch_once(&qword_1002294C8, &stru_1001FD250);
    }

    v2 = qword_1002294C0;
    if (v2)
    {
      v3 = v2;
      dispatch_assert_queue_V2(*(v2 + 2));
      if ((v3[10] & 1) == 0)
      {
        v3[10] = 1;
        if (v3[8] == 4)
        {
          sub_100181020(v3);
          if (v3[9] == 1)
          {
            v3[8] = 3;
            sub_100181284(v3);
          }
        }
      }

      v4 = v3[8] & 0xFD;

      if (v4 == 1)
      {
        if ((a1[10] & 1) == 0)
        {
          if (qword_100228EC8 != -1)
          {
            dispatch_once(&qword_100228EC8, &stru_1001FA448);
          }

          if (_NRLogIsLevelEnabled())
          {
            if (qword_100228EC8 != -1)
            {
              dispatch_once(&qword_100228EC8, &stru_1001FA448);
            }

            v32 = 435;
            v30 = "";
            v31 = "[NROnDemandLinkSetupManager handleLaunchEventForPHS]";
            _NRLogWithArgs();
          }

          objc_opt_self();
          if (qword_1002290C0 != -1)
          {
            dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
          }

          v5 = qword_1002290B8;
          v6 = v5;
          if (v5)
          {
            v7 = *(v5 + 6);
          }

          else
          {
            v7 = 0;
          }

          v8 = v7;
          v9 = a1;
          if (v8)
          {
            v10 = *(v8 + 33);
            if (!v10)
            {
              v11 = objc_alloc_init(NSMutableSet);
              v12 = *(v8 + 33);
              *(v8 + 33) = v11;

              v10 = *(v8 + 33);
            }

            [v10 addObject:{v9, v30, v31, v32}];
            v13 = sub_100003490();
            block[0] = _NSConcreteStackBlock;
            block[1] = 3221225472;
            block[2] = sub_10017FC6C;
            block[3] = &unk_1001FD060;
            v35 = v9;
            v36 = v8;
            dispatch_async(v13, block);

            v40 = 0;
            v41 = &v40;
            v42 = 0x3032000000;
            v43 = sub_10017AF00;
            v44 = sub_10017AF10;
            v45 = 0;
            v14 = *(v8 + 22);
            v37[0] = _NSConcreteStackBlock;
            v37[1] = 3221225472;
            v37[2] = sub_10017FCA8;
            v37[3] = &unk_1001FD128;
            v15 = v14;
            v38 = v15;
            v39 = &v40;
            if (sub_10017AE24(NRLinkManagerWiFi, v37))
            {
              v27 = sub_1001762F4();
              IsLevelEnabled = _NRLogIsLevelEnabled();

              if (IsLevelEnabled)
              {
                v29 = sub_1001762F4();
                _NRLogWithArgs();
              }
            }

            else
            {
              if (!v41[5])
              {
                v41[5] = @"ir0";
                if (qword_1002294A8 != -1)
                {
                  dispatch_once(&qword_1002294A8, &stru_1001FD210);
                }

                v16 = qword_1002294A0;
                v17 = _NRLogIsLevelEnabled();

                if (v17)
                {
                  if (qword_1002294A8 != -1)
                  {
                    dispatch_once(&qword_1002294A8, &stru_1001FD210);
                  }

                  v18 = qword_1002294A0;
                  v33 = v41[5];
                  _NRLogWithArgs();
                }
              }

              v19 = *(v8 + 16);
              if (!v19)
              {
                goto LABEL_37;
              }

              v20 = v19;
              v21 = *(v8 + 16);
              if (v21)
              {
                v21 = v21[3];
              }

              v22 = v21;
              v23 = [v22 isEqualToString:v41[5]];

              if ((v23 & 1) == 0)
              {
LABEL_37:
                v24 = [NRSCDInterfaceConfig alloc];
                v25 = sub_1000262B4(&v24->super.isa, v41[5], 0);
                v26 = *(v8 + 16);
                *(v8 + 16) = v25;

                if (*(v8 + 16))
                {
                  sub_10017B004(v8);
                }
              }
            }

            _Block_object_dispose(&v40, 8);
          }

          a1[10] = 1;
        }

        return;
      }
    }

    if (qword_100228EC8 != -1)
    {
      dispatch_once(&qword_100228EC8, &stru_1001FA448);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_100228EC8 == -1)
      {
        goto LABEL_52;
      }

      goto LABEL_45;
    }
  }

  else
  {
    if (qword_100228EC8 != -1)
    {
      dispatch_once(&qword_100228EC8, &stru_1001FA448);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_100228EC8 == -1)
      {
LABEL_52:
        _NRLogWithArgs();
        return;
      }

LABEL_45:
      dispatch_once(&qword_100228EC8, &stru_1001FA448);
      goto LABEL_52;
    }
  }
}

void sub_10001B908(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10001B920(uint64_t a1, void *a2, void *a3, void *a4)
{
  v8 = a2;
  v9 = a3;
  v10 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained && WeakRetained[6] == *(a1 + 32))
  {
    v36 = WeakRetained;
    if (qword_100228EC8 != -1)
    {
      dispatch_once(&qword_100228EC8, &stru_1001FA448);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_100228EC8 != -1)
      {
        dispatch_once(&qword_100228EC8, &stru_1001FA448);
      }

      v30 = v8;
      v31 = v9;
      v29 = 294;
      v27 = "";
      v28 = "[NROnDemandLinkSetupManager startReceiver]_block_invoke";
      _NRLogWithArgs();
    }

    v37[0] = _NSConcreteStackBlock;
    v37[1] = 3221225472;
    v37[2] = sub_10001C0AC;
    v37[3] = &unk_1001FA278;
    v38 = v10;
    v12 = objc_retainBlock(v37);
    v13 = v8;
    v14 = v9;
    v15 = v12;
    v16 = [v13 objectForKeyedSubscript:@"relay-req"];
    if (![v16 count])
    {
      goto LABEL_35;
    }

    v33 = v14;
    v32 = [v16 objectForKeyedSubscript:@"r"];
    v17 = [v32 unsignedLongValue];
    v35 = [v16 objectForKeyedSubscript:@"reg"];
    if (qword_100228EC8 != -1)
    {
      dispatch_once(&qword_100228EC8, &stru_1001FA448);
    }

    v34 = v13;
    if (_NRLogIsLevelEnabled())
    {
      if (qword_100228EC8 != -1)
      {
        dispatch_once(&qword_100228EC8, &stru_1001FA448);
      }

      v18 = qword_100228EC0;
      v19 = objc_alloc_init(NSMutableString);
      v20 = v19;
      if (v17)
      {
        [v19 appendString:{@"PHS, "}];
      }

      v21 = [v35 BOOLValue];
      v30 = v20;
      v31 = v21;
      v29 = 609;
      v27 = "";
      v28 = "[NROnDemandLinkSetupManager processIncomingRequest:options:response:]";
      _NRLogWithArgs();
    }

    v22 = [v16 objectForKeyedSubscript:{@"t", v27, v28, v29, v30, v31}];
    if ([v22 unsignedCharValue] == 6 || (_os_feature_enabled_impl() & 1) != 0)
    {
      if ((v17 & 1) == 0)
      {
LABEL_34:

        v14 = v33;
        v13 = v34;
LABEL_35:

        WeakRetained = v36;
        goto LABEL_36;
      }

      v23 = objc_alloc_init(NRPendingIncomingRequest);
      p_isa = &v23->super.isa;
      if (v23)
      {
        objc_storeStrong(&v23->_request, a2);
        objc_storeStrong(p_isa + 2, a3);
        objc_setProperty_nonatomic_copy(p_isa, v25, v15, 24);
      }

      [*(v36 + 9) addObject:p_isa];
      sub_10001B2CC(v36);
      if (((v36[11] & 1) != 0 || v36[12] == 1) && v36[13] == 1)
      {
        sub_100017AB4(v36);
      }
    }

    else
    {
      if (qword_100228EC8 != -1)
      {
        dispatch_once(&qword_100228EC8, &stru_1001FA448);
      }

      if (!_NRLogIsLevelEnabled())
      {
        goto LABEL_34;
      }

      if (qword_100228EC8 != -1)
      {
        dispatch_once(&qword_100228EC8, &stru_1001FA448);
      }

      v26 = qword_100228EC0;
      [v22 unsignedCharValue];
      p_isa = createStringFromNRDeviceEndpointType();
      _NRLogWithArgs();
    }

    goto LABEL_34;
  }

LABEL_36:
}

uint64_t sub_10001BDB0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained && *(WeakRetained + 48) == *(a1 + 32))
  {
    v5 = WeakRetained;
    if (qword_100228EC8 != -1)
    {
      dispatch_once(&qword_100228EC8, &stru_1001FA448);
    }

    WeakRetained = _NRLogIsLevelEnabled();
    v3 = v5;
    if (WeakRetained)
    {
      if (qword_100228EC8 != -1)
      {
        dispatch_once(&qword_100228EC8, &stru_1001FA448);
      }

      WeakRetained = _NRLogWithArgs();
      v3 = v5;
    }
  }

  return _objc_release_x1(WeakRetained, v3);
}

uint64_t sub_10001BEA4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained && *(WeakRetained + 48) == *(a1 + 32))
  {
    v5 = WeakRetained;
    if (qword_100228EC8 != -1)
    {
      dispatch_once(&qword_100228EC8, &stru_1001FA448);
    }

    WeakRetained = _NRLogIsLevelEnabled();
    v3 = v5;
    if (WeakRetained)
    {
      if (qword_100228EC8 != -1)
      {
        dispatch_once(&qword_100228EC8, &stru_1001FA448);
      }

      WeakRetained = _NRLogWithArgs();
      v3 = v5;
    }
  }

  return _objc_release_x1(WeakRetained, v3);
}

void sub_10001BF98(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = WeakRetained;
  if (WeakRetained && WeakRetained[6] == *(a1 + 32))
  {
    if (qword_100228EC8 != -1)
    {
      dispatch_once(&qword_100228EC8, &stru_1001FA448);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_100228EC8 != -1)
      {
        dispatch_once(&qword_100228EC8, &stru_1001FA448);
      }

      _NRLogWithArgs();
    }

    if (v5)
    {
      [v4[6] invalidate];
    }
  }
}

void sub_10001C0C4(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained && *(WeakRetained + 5) == a2)
  {
    state64 = 0;
    if (notify_get_state(a2, &state64))
    {
      v8 = sub_100018EEC();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      if (IsLevelEnabled)
      {
        v10 = sub_100018EEC();
        _NRLogWithArgs();
      }

      v4[15] = 0;
    }

    else
    {
      v4[15] = state64 == 2;
      if (_NRIsAppleInternal() && (v4[15] & 1) == 0)
      {
        v5 = sub_1000B7248(0, @"simulateSlicingEnabled");
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v6 = [v5 BOOLValue];

          if (v6)
          {
            if (qword_100228EC8 != -1)
            {
              dispatch_once(&qword_100228EC8, &stru_1001FA448);
            }

            if (_NRLogIsLevelEnabled())
            {
              v7 = sub_100018EEC();
              _NRLogWithArgs();
            }

            v4[15] = 1;
          }
        }

        else
        {
        }
      }

      if (qword_100228EC8 != -1)
      {
        dispatch_once(&qword_100228EC8, &stru_1001FA448);
      }

      if (_NRLogIsLevelEnabled())
      {
        if (qword_100228EC8 != -1)
        {
          dispatch_once(&qword_100228EC8, &stru_1001FA448);
        }

        v4[15];
        _NRLogWithArgs();
      }

      if ((v4[15] & 1) == 0 && v4[13] == 1)
      {
        [v4 didUpdatePHSState:0 llphsActive:0];
      }
    }
  }
}

void sub_10001C338(uint64_t a1)
{
  v2 = sub_10001A324(*(a1 + 32));
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v3 = v2;
  v4 = [v3 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v4)
  {
    v5 = *v26;
    do
    {
      v6 = 0;
      do
      {
        if (*v26 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = sub_100163A30(NRDLocalDevice, *(*(&v25 + 1) + 8 * v6));
        v8 = v7;
        if (v7)
        {
          v9 = *(v7 + 144);
          if (v9)
          {
            v10 = v9;
            v11 = *(v8 + 144);
            v12 = [v11 operationalScope] == 0;

            if (!v12 && (~*(v8 + 48) & 3) == 0)
            {
              v13 = *(v8 + 144);
              v14 = ([v13 operationalScope] & 1) == 0;

              if (!v14)
              {
                v15 = *(a1 + 32);
                if (v15)
                {
                  if (v15[11] & 1) != 0 || (v15[12])
                  {
                    goto LABEL_19;
                  }

                  sub_10001B2CC(v15);
                }

                v16 = *(v8 + 40);
                v17 = v16 == 0;

                if (!v17)
                {
                  v18 = [NRValidPeer alloc];
                  v19 = [NSNumber numberWithUnsignedShort:*(v8 + 16)];
                  v20 = sub_10001823C(&v18->super.isa, v19);

                  v21 = *(a1 + 32);
                  if (v21)
                  {
                    v21 = v21[11];
                  }

                  v22 = v21;
                  v23 = *(v8 + 40);
                  [v22 setObject:v20 forKeyedSubscript:v23];
                }
              }
            }
          }
        }

LABEL_19:

        v6 = v6 + 1;
      }

      while (v4 != v6);
      v24 = [v3 countByEnumeratingWithState:&v25 objects:v29 count:16];
      v4 = v24;
    }

    while (v24);
  }

  sub_100019FF4(*(a1 + 32));
}

void sub_10001CB58(id a1)
{
  v1 = os_log_create("com.apple.networkrelay", "");
  v2 = qword_100228ED0;
  qword_100228ED0 = v1;

  _objc_release_x1(v1, v2);
}

_BYTE *sub_10001CB9C(_BYTE *a1, void *a2)
{
  v4 = a2;
  if (a1)
  {
    v12.receiver = a1;
    v12.super_class = NRNetInfo;
    v5 = objc_msgSendSuper2(&v12, "init");
    if (!v5)
    {
      v7 = sub_10001CD04();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      if (IsLevelEnabled)
      {
        v9 = sub_10001CD04();
        _NRLogWithArgs();
      }

      _os_log_pack_size();
      v10 = *__error();
      v11 = _os_log_pack_fill();
      *v11 = 136446210;
      *(v11 + 4) = "[NRNetInfo initWithQueue:]";
      sub_10001CD04();
      _NRLogAbortWithPack();
    }

    a1 = v5;
    objc_storeStrong(v5 + 6, a2);
    a1[14] = 1;
  }

  return a1;
}

id sub_10001CD04()
{
  if (qword_100228ED8 != -1)
  {
    dispatch_once(&qword_100228ED8, &stru_1001FA550);
  }

  v1 = qword_100228ED0;

  return v1;
}

char *sub_10001CD58(char *a1, void *a2)
{
  v5 = a2;
  if (!a1)
  {
    goto LABEL_24;
  }

  v21.receiver = a1;
  v21.super_class = NRNetInfo;
  v6 = objc_msgSendSuper2(&v21, "init");
  a1 = v6;
  if (!v6)
  {
    v16 = sub_10001CD04();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v18 = sub_10001CD04();
      _NRLogWithArgs();
    }

    a1 = _os_log_pack_size();
    v5 = &v21 - ((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0);
    v19 = *__error();
    v20 = _os_log_pack_fill();
    *v20 = 136446210;
    *(v20 + 4) = "[NRNetInfo initWithIncomingData:]";
    sub_10001CD04();
    _NRLogAbortWithPack();
    __break(1u);
LABEL_39:
    dispatch_once(&qword_100228ED8, &stru_1001FA550);
LABEL_7:
    if (_NRLogIsLevelEnabled())
    {
      if (p_vtable[475] != -1)
      {
        dispatch_once(&qword_100228ED8, &stru_1001FA550);
      }

      v8 = qword_100228ED0;
      [v2 length];
      _NRLogWithArgs();
    }

    goto LABEL_23;
  }

  v6[11] = 1;
  v7 = v5;
  v2 = v7;
  if (a1[10] == 1)
  {

    goto LABEL_24;
  }

  v36 = 0;
  v35 = 0;
  if ([v7 length] <= 9)
  {
    p_vtable = NRSCDInterfaceConfig.vtable;
    if (qword_100228ED8 == -1)
    {
      goto LABEL_7;
    }

    goto LABEL_39;
  }

  v34 = 0;
  [v2 getBytes:&v34 length:1];
  v9 = v34;
  if (v34 >= 2u)
  {
    if (qword_100228ED8 != -1)
    {
      dispatch_once(&qword_100228ED8, &stru_1001FA550);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_100228ED8 != -1)
      {
        dispatch_once(&qword_100228ED8, &stru_1001FA550);
      }

      _NRLogWithArgs();
    }

    goto LABEL_23;
  }

  a1[14] = v34;
  if (v9 != 1)
  {
LABEL_23:

    goto LABEL_24;
  }

  [v2 getBytes:&v35 range:{0, 10}];
  v10 = bswap32(v36) >> 16;
  if ([v2 length] != (v10 + 10))
  {
    if (qword_100228ED8 != -1)
    {
      dispatch_once(&qword_100228ED8, &stru_1001FA550);
    }

    if (_NRLogIsLevelEnabled())
    {
      v14 = sub_10001CD04();
      [v2 length];
      _NRLogWithArgs();
    }

    goto LABEL_23;
  }

  if (v10 < 4)
  {
    v11 = 0;
  }

  else
  {
    v11 = [v2 subdataWithRange:{10, v10}];
  }

  *(a1 + 15) = WORD1(v35);
  *(a1 + 7) = bswap32(HIDWORD(v35));
  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = sub_10001D2C4;
  v32 = sub_10001D2D4;
  v33 = 0;
  v15 = *(a1 + 5);
  *(a1 + 5) = 0;

  if (!v11 || (v22 = _NSConcreteStackBlock, v23 = 3221225472, v24 = sub_10001D2DC, v25 = &unk_1001FA530, v26 = a1, v27 = &v28, (NRTLVParse() & 1) != 0))
  {
    objc_storeStrong(a1 + 16, v29[5]);
    _Block_object_dispose(&v28, 8);

    a1 = a1;
    v12 = a1;
    goto LABEL_25;
  }

  _Block_object_dispose(&v28, 8);

LABEL_24:
  v12 = 0;
LABEL_25:

  return v12;
}

uint64_t sub_10001D2C4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_10001D2DC(uint64_t a1, unsigned __int8 *a2)
{
  v4 = *(a2 + 1);
  v5 = __rev16(v4);
  v6 = sub_10001D7AC(*(a1 + 32), *a2);
  if (v6)
  {
    v7 = v6 >= v5;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    if (qword_100228ED8 != -1)
    {
      dispatch_once(&qword_100228ED8, &stru_1001FA550);
    }

    result = _NRLogIsLevelEnabled();
    if (result)
    {
      if (qword_100228ED8 != -1)
      {
        dispatch_once(&qword_100228ED8, &stru_1001FA550);
      }

      v24 = *a2;
      _NRLogWithArgs();
      return 0;
    }

    return result;
  }

  v8 = *a2;
  result = 1;
  if (v8 <= 3)
  {
    switch(v8)
    {
      case 1u:
        v12 = [[NSData alloc] initWithBytes:a2 + 3 length:bswap32(*(a2 + 1)) >> 16];
        v13 = *(a1 + 32);
        v14 = v12;
        v15 = v14;
        if (v13)
        {
          v25 = 0;
          v26 = &v25;
          v27 = 0x3032000000;
          v28 = sub_10001D2C4;
          v29 = sub_10001D2D4;
          v30 = 0;
          if (NRTLVParse())
          {
            v16 = v26[5];
          }

          else
          {
            v16 = 0;
          }

          v13 = v16;
          _Block_object_dispose(&v25, 8);

          if (v13)
          {
            v20 = *(*(*(a1 + 40) + 8) + 40);
            if (!v20)
            {
              v21 = objc_alloc_init(NSMutableArray);
              v22 = *(*(a1 + 40) + 8);
              v23 = *(v22 + 40);
              *(v22 + 40) = v21;

              v20 = *(*(*(a1 + 40) + 8) + 40);
            }

            [v20 addObject:v13];
          }
        }

        else
        {
        }

        break;
      case 2u:
        v15 = [[NSData alloc] initWithBytes:a2 + 3 length:v5];
        v18 = *(a1 + 32);
        if (v18)
        {
          objc_storeStrong((v18 + 40), v15);
        }

        break;
      case 3u:
        if (v4 == 2048)
        {
          *(*(a1 + 32) + 112) = *(a2 + 3);
          v10 = *(a1 + 32);
          if (v10)
          {
            *(v10 + 112) = bswap64(*(v10 + 112));
          }

          return result;
        }

        if (qword_100228ED8 != -1)
        {
          dispatch_once(&qword_100228ED8, &stru_1001FA550);
        }

        if (!_NRLogIsLevelEnabled())
        {
          return 1;
        }

        if (qword_100228ED8 == -1)
        {
LABEL_49:
          _NRLogWithArgs();
          return 1;
        }

LABEL_59:
        dispatch_once(&qword_100228ED8, &stru_1001FA550);
        goto LABEL_49;
      default:
        return result;
    }

    return 1;
  }

  switch(v8)
  {
    case 4u:
      if (v4 != 2048)
      {
        if (qword_100228ED8 != -1)
        {
          dispatch_once(&qword_100228ED8, &stru_1001FA550);
        }

        if (!_NRLogIsLevelEnabled())
        {
          return 1;
        }

        if (qword_100228ED8 == -1)
        {
          goto LABEL_49;
        }

        goto LABEL_59;
      }

      *(*(a1 + 32) + 120) = *(a2 + 3);
      v17 = *(a1 + 32);
      if (v17)
      {
        *(v17 + 120) = bswap64(*(v17 + 120));
      }

      break;
    case 5u:
      if (v4 != 1024)
      {
        if (qword_100228ED8 != -1)
        {
          dispatch_once(&qword_100228ED8, &stru_1001FA550);
        }

        if (!_NRLogIsLevelEnabled())
        {
          return 1;
        }

        if (qword_100228ED8 == -1)
        {
          goto LABEL_49;
        }

        goto LABEL_59;
      }

      v19 = *(a1 + 32);
      if (v19)
      {
        *(v19 + 20) = bswap32(*(a2 + 3));
      }

      break;
    case 7u:
      v11 = *(a1 + 32);
      if (v11)
      {
        *(v11 + 9) = 1;
      }

      break;
  }

  return result;
}

void sub_10001D794(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10001D7AC(uint64_t result, int a2)
{
  if (result)
  {
    if (a2 <= 2)
    {
      switch(a2)
      {
        case 0:
          return 0;
        case 1:
          return 0x8000;
        case 2:
          return 1024;
      }
    }

    else if (a2 <= 0x2B)
    {
      if (((1 << a2) & 0x58) != 0)
      {
        return 8;
      }

      if (((1 << a2) & 0xE0000000000) != 0)
      {
        return 0x2000;
      }

      if (a2 == 5)
      {
        return 4;
      }
    }

    if (qword_100228ED8 != -1)
    {
      dispatch_once(&qword_100228ED8, &stru_1001FA550);
    }

    result = _NRLogIsLevelEnabled();
    if (result)
    {
      if (qword_100228ED8 != -1)
      {
        dispatch_once(&qword_100228ED8, &stru_1001FA550);
      }

      _NRLogWithArgs();
      return 0;
    }
  }

  return result;
}

uint64_t sub_10001D8FC(uint64_t a1, unsigned __int8 *a2)
{
  v4 = *(a2 + 1);
  v5 = __rev16(v4);
  v6 = sub_10001D7AC(*(a1 + 32), *a2);
  if (v6)
  {
    v7 = v6 >= v5;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    if (qword_100228ED8 != -1)
    {
      dispatch_once(&qword_100228ED8, &stru_1001FA550);
    }

    result = _NRLogIsLevelEnabled();
    if (result)
    {
      if (qword_100228ED8 != -1)
      {
        dispatch_once(&qword_100228ED8, &stru_1001FA550);
      }

      v26 = *a2;
LABEL_35:
      _NRLogWithArgs();
      return 0;
    }

    return result;
  }

  v8 = *a2;
  if (v8 == 43)
  {
    v15 = [[NSString alloc] initWithBytes:a2 + 3 length:v5 encoding:4];
    if (v15)
    {
      if (!*(*(*(a1 + 40) + 8) + 40))
      {
        v22 = nw_resolver_config_create();
        v23 = *(*(a1 + 40) + 8);
        v24 = *(v23 + 40);
        *(v23 + 40) = v22;

        v25 = *(*(*(a1 + 40) + 8) + 40);
      }

      [v15 UTF8String];
      nw_resolver_config_add_search_domain();
    }

    goto LABEL_28;
  }

  if (v8 == 42)
  {
    v15 = [[NSData alloc] initWithBytes:a2 + 3 length:v5];
    v16 = sub_10013D760(v15, 1, 0, 0);
    if (v16)
    {
      if (!*(*(*(a1 + 40) + 8) + 40))
      {
        v17 = nw_resolver_config_create();
        v18 = *(*(a1 + 40) + 8);
        v19 = *(v18 + 40);
        *(v18 + 40) = v17;
      }

      v20 = [v16 hostname];
      v21 = *(*(*(a1 + 40) + 8) + 40);
      [v20 UTF8String];
      nw_resolver_config_add_name_server();
    }

LABEL_28:
    return 1;
  }

  if (v8 != 41)
  {
    return 1;
  }

  if (v4 == 512)
  {
    v9 = *(a2 + 3);
    if (!*(*(*(a1 + 40) + 8) + 40))
    {
      v10 = nw_resolver_config_create();
      v11 = *(*(a1 + 40) + 8);
      v12 = *(v11 + 40);
      *(v11 + 40) = v10;

      v13 = *(*(*(a1 + 40) + 8) + 40);
    }

    nw_resolver_config_set_class();
    return 1;
  }

  if (qword_100228ED8 != -1)
  {
    dispatch_once(&qword_100228ED8, &stru_1001FA550);
  }

  result = _NRLogIsLevelEnabled();
  if (result)
  {
    if (qword_100228ED8 != -1)
    {
      dispatch_once(&qword_100228ED8, &stru_1001FA550);
    }

    goto LABEL_35;
  }

  return result;
}

void sub_10001DC04(uint64_t a1, void *a2)
{
  v3 = a2;
  if (qword_100228ED8 != -1)
  {
    dispatch_once(&qword_100228ED8, &stru_1001FA550);
  }

  if (_NRLogIsLevelEnabled())
  {
    if (qword_100228ED8 != -1)
    {
      dispatch_once(&qword_100228ED8, &stru_1001FA550);
    }

    v27 = 144;
    v28 = v3;
    v25 = "";
    v26 = "[NRNetInfo start]_block_invoke";
    _NRLogWithArgs();
  }

  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = WeakRetained;
  if (WeakRetained && (*(WeakRetained + 10) & 1) == 0 && WeakRetained[9] == *(a1 + 32))
  {
    v6 = v3;
    if (*(v5 + 12))
    {
      goto LABEL_53;
    }

    v7 = nw_path_copy_interface();
    v8 = v7;
    if (v7)
    {
      if (nw_interface_get_type(v7) == *(v5 + 16))
      {
        location = 0;
        v34 = 0;
        v9 = [NSString stringWithUTF8String:nw_interface_get_name(v8)];

        v10 = location;
        if (location)
        {
          v11 = 0;
          goto LABEL_26;
        }

LABEL_24:
        v9 = v5[12];
        v10 = 0;
        if (!v9)
        {
          v12 = 0;
LABEL_29:

LABEL_30:
          v13 = v34;
          if (v34 || (v9 = v5[13]) != 0)
          {
            v14 = [v13 intersectsSet:{v5[13], v25, v26, v27, v28}] ^ 1;
            if (v13)
            {
LABEL_36:
              if ((v12 | v14))
              {
                *(v5 + 12) = 1;
                if (v12)
                {
                  v30 = v14;
                  if (qword_100228ED8 != -1)
                  {
                    dispatch_once(&qword_100228ED8, &stru_1001FA550);
                  }

                  IsLevelEnabled = _NRLogIsLevelEnabled();
                  v14 = v30;
                  if (IsLevelEnabled)
                  {
                    if (qword_100228ED8 != -1)
                    {
                      dispatch_once(&qword_100228ED8, &stru_1001FA550);
                    }

                    v17 = v5[12];
                    v18 = qword_100228ED0;
                    _NRLogWithArgs();

                    v14 = v30;
                  }
                }

                if (v14)
                {
                  if (qword_100228ED8 != -1)
                  {
                    dispatch_once(&qword_100228ED8, &stru_1001FA550);
                  }

                  if (_NRLogIsLevelEnabled())
                  {
                    if (qword_100228ED8 != -1)
                    {
                      dispatch_once(&qword_100228ED8, &stru_1001FA550);
                    }

                    v19 = v5[13];
                    v20 = qword_100228ED0;
                    _NRLogWithArgs();
                  }
                }
              }

LABEL_52:
LABEL_53:

              if ((v5[1] & 1) == 0)
              {
                objc_initWeak(&location, v5);
                *(v5 + 8) = 1;
                if (*(v5 + 17))
                {
                  v21 = 500000000;
                }

                else
                {
                  v21 = 10000000000;
                }

                v22 = dispatch_time(0x8000000000000000, v21);
                v23 = *(a1 + 40);
                if (v23)
                {
                  v23 = v23[6];
                }

                block[0] = _NSConcreteStackBlock;
                block[1] = 3221225472;
                block[2] = sub_10001ED38;
                block[3] = &unk_1001FD0D8;
                v24 = v23;
                objc_copyWeak(&v33, &location);
                v32 = *(a1 + 32);
                dispatch_after(v22, v24, block);

                objc_destroyWeak(&v33);
                objc_destroyWeak(&location);
              }

              goto LABEL_60;
            }
          }

          else
          {
            v14 = 0;
          }

          v15 = v14;

          v14 = v15;
          goto LABEL_36;
        }

        v11 = 1;
LABEL_26:
        v12 = [v10 intersectsSet:{v5[12], v25, v26, v27, v28}] ^ 1;
        v10 = v9;
        if (!v11)
        {
          goto LABEL_30;
        }

        goto LABEL_29;
      }
    }

    else if (!*(v5 + 16))
    {
      location = 0;
      v34 = 0;
      goto LABEL_24;
    }

    if (qword_100228ED8 != -1)
    {
      dispatch_once(&qword_100228ED8, &stru_1001FA550);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_100228ED8 != -1)
      {
        dispatch_once(&qword_100228ED8, &stru_1001FA550);
      }

      v29 = *(v5 + 16);
      _NRLogWithArgs();
    }

    *(v5 + 12) = 1;
    goto LABEL_52;
  }

LABEL_60:
}

void sub_10001E128(uint64_t a1)
{
  dispatch_assert_queue_V2(*(a1 + 48));
  *(a1 + 8) = 0;
  v2 = *(a1 + 72);
  v3 = nw_path_evaluator_copy_path();
  v4 = *(a1 + 64);
  *(a1 + 64) = v3;

  status = nw_path_get_status(*(a1 + 64));
  v6 = *(a1 + 64);
  v7 = nw_path_copy_interface();
  obj = 0;
  v75[0] = 0;
  v65 = v7;
  if (v7)
  {
    v8 = v7;
    type = nw_interface_get_type(v7);
    v10 = [NSString stringWithUTF8String:nw_interface_get_name(v8)];

    v11 = v75[0];
  }

  else
  {
    v11 = 0;
    type = 0;
  }

  objc_storeStrong((a1 + 96), v11);
  objc_storeStrong((a1 + 104), obj);
  if (nw_path_is_expensive(*(a1 + 64)))
  {
    v12 = 8;
  }

  else
  {
    v12 = 0;
  }

  if (nw_path_is_constrained(*(a1 + 64)))
  {
    v12 |= 0x10u;
  }

  v13 = v12 | nw_path_has_dns(*(a1 + 64));
  if (nw_path_has_ipv4(*(a1 + 64)))
  {
    v13 |= 2u;
  }

  if (nw_path_has_ipv6(*(a1 + 64)))
  {
    v13 |= 4u;
  }

  v14 = *(a1 + 64);
  if (nw_path_is_roaming())
  {
    v15 = v13 | 0x20;
  }

  else
  {
    v15 = v13;
  }

  if (*(a1 + 13) == 1)
  {
    v16 = *(a1 + 64);
    estimated_upload_throughput = nw_path_get_estimated_upload_throughput();
    v18 = *(a1 + 64);
    estimated_download_throughput = nw_path_get_estimated_download_throughput();
  }

  else
  {
    estimated_upload_throughput = 0;
    estimated_download_throughput = 0;
  }

  if (*(a1 + 15) == status && *(a1 + 16) == type && *(a1 + 28) == v15 && *(a1 + 112) == estimated_upload_throughput && *(a1 + 120) == estimated_download_throughput)
  {
    v66 = 0;
  }

  else
  {
    *(a1 + 15) = status;
    *(a1 + 16) = type;
    *(a1 + 28) = v15;
    v66 = 1;
    *(a1 + 112) = estimated_upload_throughput;
    *(a1 + 120) = estimated_download_throughput;
  }

  v68 = 0;
  v69 = &v68;
  v70 = 0x3032000000;
  v71 = sub_10001D2C4;
  v72 = sub_10001D2D4;
  v73 = 0;
  v20 = *(a1 + 64);
  block[5] = _NSConcreteStackBlock;
  block[6] = 3221225472;
  block[7] = sub_10001EB68;
  block[8] = &unk_1001FA4B8;
  block[9] = &v68;
  nw_path_enumerate_resolver_configs();

  v21 = v69[5];
  v22 = *(a1 + 128);
  v23 = v22;
  if (!(v21 | v22))
  {
    goto LABEL_27;
  }

  v24 = [v22 count];
  if (v24 == [v21 count])
  {
    if (![v23 count])
    {
LABEL_27:

      goto LABEL_45;
    }

    v64 = v21;
    v63 = type;
    v25 = 0;
    v26 = 0;
    while (1)
    {
      v27 = [v23 objectAtIndex:v25];
      v28 = [v64 objectAtIndex:v25];
      v29 = nw_resolver_config_get_class();
      if (v29 != nw_resolver_config_get_class())
      {
        goto LABEL_42;
      }

      v30 = objc_alloc_init(NSMutableArray);
      v31 = objc_alloc_init(NSMutableArray);
      v82 = _NSConcreteStackBlock;
      v83 = 3221225472;
      v84 = sub_10001EC08;
      v85 = &unk_1001FA4E0;
      v32 = v30;
      v86 = v32;
      nw_resolver_config_enumerate_name_servers();
      v89 = _NSConcreteStackBlock;
      v90 = 3221225472;
      v91 = sub_10001EC54;
      v92 = &unk_1001FA4E0;
      v33 = v31;
      v93 = v33;
      nw_resolver_config_enumerate_name_servers();
      v34 = [v32 count];
      if (v34 != [v33 count] || (objc_msgSend(v32, "isEqualToArray:", v33) & 1) == 0)
      {

LABEL_42:
        type = v63;
        v21 = v64;
        goto LABEL_43;
      }

      v35 = objc_alloc_init(NSMutableArray);
      v36 = objc_alloc_init(NSMutableArray);
      v77 = _NSConcreteStackBlock;
      v78 = 3221225472;
      v79 = sub_10001ECA0;
      v80 = &unk_1001FA4E0;
      v37 = v35;
      v81 = v37;
      nw_resolver_config_enumerate_search_domains();
      v75[1] = _NSConcreteStackBlock;
      v75[2] = 3221225472;
      v75[3] = sub_10001ECEC;
      v75[4] = &unk_1001FA4E0;
      v38 = v36;
      v76 = v38;
      nw_resolver_config_enumerate_search_domains();
      v39 = [v37 count];
      if (v39 != [v38 count])
      {
        goto LABEL_37;
      }

      if ([v37 isEqualToArray:v38])
      {
        v40 = 1;
      }

      else
      {
LABEL_37:
        v40 = 0;
      }

      if ((v40 & 1) == 0)
      {
        break;
      }

      v25 = ++v26;
      if ([v23 count] <= v26)
      {

        type = v63;
        goto LABEL_45;
      }
    }

    type = v63;
  }

  else
  {
LABEL_43:
  }

  objc_storeStrong((a1 + 128), v69[5]);
  v66 = 1;
LABEL_45:
  objc_opt_self();
  if (qword_1002290C0 != -1)
  {
    dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
  }

  v41 = qword_1002290B8;
  v42 = v41;
  if (v41 && (v43 = v41[6]) != 0)
  {
    v44 = v43;
    v45 = v43[3];
    dispatch_assert_queue_V2(v45);

    v89 = 0;
    v90 = &v89;
    v91 = 0x3032000000;
    v92 = sub_10017AF00;
    v93 = sub_10017AF10;
    v94 = 0;
    v46 = v44[22];
    v47 = v44[13];
    if (v47)
    {
      v47 = v47[3];
    }

    v48 = v47;
    v82 = _NSConcreteStackBlock;
    v83 = 3221225472;
    v84 = sub_10017FA4C;
    v85 = &unk_1001FD150;
    v49 = v46;
    v86 = v49;
    v50 = v48;
    v87 = v50;
    v88 = &v89;
    if (sub_10017AE24(NRLinkManagerWiFi, &v82))
    {
      v46 = sub_1001762F4();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      if (IsLevelEnabled)
      {
        v46 = sub_1001762F4();
        _NRLogWithArgs();
      }

      v51 = 0;
    }

    else
    {
      v51 = *(v90 + 40);
    }

    _Block_object_dispose(&v89, 8);
    if (v51)
    {
      v52 = 0;
      goto LABEL_62;
    }
  }

  else
  {
  }

  v54 = *(a1 + 40);
  v51 = 0;
  if (!v54)
  {
    goto LABEL_66;
  }

  v46 = v54;
  v52 = 1;
LABEL_62:
  v55 = *(a1 + 40);
  v56 = [v51 isEqualToData:v55];

  if (v52)
  {
  }

  if ((v56 & 1) == 0)
  {
    objc_storeStrong((a1 + 40), v51);
    v66 = 1;
  }

LABEL_66:
  if (type != 1)
  {
    v57 = *(a1 + 40);
    *(a1 + 40) = 0;
  }

  if (v66)
  {
    goto LABEL_69;
  }

  if (*(a1 + 15) != 2 && *(a1 + 12) == 1)
  {
    ++*(a1 + 20);
    if (qword_100228ED8 != -1)
    {
      dispatch_once(&qword_100228ED8, &stru_1001FA550);
    }

    v59 = qword_100228ED0;
    v60 = _NRLogIsLevelEnabled();

    if (v60)
    {
      if (qword_100228ED8 != -1)
      {
        dispatch_once(&qword_100228ED8, &stru_1001FA550);
      }

      v61 = qword_100228ED0;
      v62 = *(a1 + 20);
      _NRLogWithArgs();
    }

LABEL_69:
    ++*(a1 + 32);
    v58 = *(a1 + 48);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10001EBDC;
    block[3] = &unk_1001FD3C8;
    block[4] = a1;
    dispatch_async(v58, block);
  }

  *(a1 + 12) = 0;

  _Block_object_dispose(&v68, 8);
}

void sub_10001EB34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  _Block_object_dispose((v33 - 152), 8);
  _Block_object_dispose(&a33, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10001EB68(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(*(a1 + 32) + 8) + 40);
  if (!v4)
  {
    v5 = objc_alloc_init(NSMutableArray);
    v6 = *(*(a1 + 32) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    v4 = *(*(*(a1 + 32) + 8) + 40);
  }

  [v4 addObject:v3];

  return 1;
}

uint64_t sub_10001EBDC(uint64_t result)
{
  v1 = *(result + 32);
  if (v1)
  {
    if (*(v1 + 10))
    {
      return result;
    }

    v2 = *(v1 + 56);
  }

  else
  {
    v2 = 0;
  }

  return (*(v2 + 16))();
}

uint64_t sub_10001EC08(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [NSString stringWithUTF8String:a2];
  [v2 addObject:v3];

  return 1;
}

uint64_t sub_10001EC54(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [NSString stringWithUTF8String:a2];
  [v2 addObject:v3];

  return 1;
}

uint64_t sub_10001ECA0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [NSString stringWithUTF8String:a2];
  [v2 addObject:v3];

  return 1;
}

uint64_t sub_10001ECEC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [NSString stringWithUTF8String:a2];
  [v2 addObject:v3];

  return 1;
}

void sub_10001ED38(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained && (*(WeakRetained + 10) & 1) == 0 && *(WeakRetained + 9) == *(a1 + 32))
  {
    v3 = WeakRetained;
    sub_10001E128(WeakRetained);
    WeakRetained = v3;
  }
}

uint64_t sub_10001EDA0(uint64_t a1, uint64_t a2)
{
  v3 = [NSString stringWithUTF8String:a2];
  v4 = [NWAddressEndpoint endpointWithHostname:v3 port:@"0"];

  v5 = sub_10013D308(v4, 0, 0);
  if (v5)
  {
    v6 = *(*(*(a1 + 32) + 8) + 40);
    NRTLVAddData();
  }

  return 1;
}

uint64_t sub_10001EE48(uint64_t a1, uint64_t a2)
{
  v3 = [NSString stringWithUTF8String:a2];
  v4 = [v3 dataUsingEncoding:4];

  v5 = *(*(*(a1 + 32) + 8) + 40);
  NRTLVAddData();

  return 1;
}

dispatch_queue_t *sub_10001EEBC(dispatch_queue_t *a1)
{
  v1 = a1;
  if (!a1)
  {
    return v1;
  }

  dispatch_assert_queue_V2(a1[6]);
  if (*(v1 + 10))
  {
    return 0;
  }

  if (*(v1 + 8) == 1)
  {
    sub_10001E128(v1);
  }

  v2 = v1[10];
  if (!v2 || v2 != v1[4] || !v1[11])
  {
    memset(v31 + 1, 0, 9);
    LOBYTE(v31[0]) = *(v1 + 14);
    v31[1] = *(v1 + 15);
    *&v31[2] = bswap32(*(v1 + 7));
    v25 = objc_alloc_init(NSMutableData);
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v23 = v1;
    obj = v1[16];
    v5 = [obj countByEnumeratingWithState:&v27 objects:v49 count:16];
    if (v5)
    {
      v26 = *v28;
      do
      {
        v6 = 0;
        do
        {
          if (*v28 != v26)
          {
            objc_enumerationMutation(obj);
          }

          v7 = *(*(&v27 + 1) + 8 * v6);
          if (v7)
          {
            v8 = v7;
            v43 = 0;
            v44 = &v43;
            v45 = 0x3032000000;
            v46 = sub_10001D2C4;
            v47 = sub_10001D2D4;
            v48 = objc_alloc_init(NSMutableData);
            v42 = bswap32(nw_resolver_config_get_class()) >> 16;
            v9 = v44[5];
            NRTLVAdd();
            v37 = _NSConcreteStackBlock;
            v38 = 3221225472;
            v39 = sub_10001EDA0;
            v40 = &unk_1001FA508;
            v41 = &v43;
            nw_resolver_config_enumerate_name_servers();
            v32 = _NSConcreteStackBlock;
            v33 = 3221225472;
            v34 = sub_10001EE48;
            v35 = &unk_1001FA508;
            v36 = &v43;
            nw_resolver_config_enumerate_search_domains();
            v10 = v44[5];
            _Block_object_dispose(&v43, 8);

            if (v10)
            {
              NRTLVAddData();
            }
          }

          else
          {
            if (qword_100228ED8 != -1)
            {
              dispatch_once(&qword_100228ED8, &stru_1001FA550);
            }

            v11 = qword_100228ED0;
            IsLevelEnabled = _NRLogIsLevelEnabled();

            if (IsLevelEnabled)
            {
              if (qword_100228ED8 != -1)
              {
                dispatch_once(&qword_100228ED8, &stru_1001FA550);
              }

              v13 = qword_100228ED0;
              _NRLogWithArgs();
            }

            v10 = 0;
          }

          v6 = v6 + 1;
        }

        while (v5 != v6);
        v14 = [obj countByEnumeratingWithState:&v27 objects:v49 count:16];
        v5 = v14;
      }

      while (v14);
    }

    v15 = v1[5];
    if ([v15 length])
    {
      v16 = [v23[5] length]< 0xFF;

      if (v16)
      {
        v17 = v23[5];
        NRTLVAddData();
      }
    }

    else
    {
    }

    v18 = v23;
    v19 = v23[14];
    if (v19)
    {
      v43 = bswap64(v19);
      NRTLVAdd();
      v18 = v23;
    }

    v20 = v18[15];
    if (v20)
    {
      v43 = bswap64(v20);
      NRTLVAdd();
      v18 = v23;
    }

    v21 = *(v18 + 5);
    if (*(v18 + 6) != v21)
    {
      LODWORD(v43) = bswap32(v21);
      NRTLVAdd();
      v18 = v23;
      *(v23 + 6) = *(v23 + 5);
    }

    if (*(v18 + 17) == 1)
    {
      NRTLVAdd();
    }

    if (qword_100229288 != -1)
    {
      dispatch_once(&qword_100229288, &stru_1001FC430);
    }

    v43 = bswap64(qword_100229280);
    NRTLVAdd();
    v31[4] = bswap32([v25 length]) >> 16;
    v1 = [[NSMutableData alloc] initWithBytes:v31 length:10];
    [(dispatch_queue_t *)v1 appendData:v25];
    v23[10] = v23[4];
    objc_storeStrong(v23 + 11, v1);

    return v1;
  }

  if (qword_100228ED8 != -1)
  {
    dispatch_once(&qword_100228ED8, &stru_1001FA550);
  }

  if (_NRLogIsLevelEnabled())
  {
    if (qword_100228ED8 != -1)
    {
      dispatch_once(&qword_100228ED8, &stru_1001FA550);
    }

    v22 = v1[4];
    _NRLogWithArgs();
  }

  v3 = v1[11];

  return v3;
}

void sub_10001F64C(id a1)
{
  v1 = os_log_create("com.apple.networkrelay", "");
  v2 = qword_100228EF0;
  qword_100228EF0 = v1;

  _objc_release_x1(v1, v2);
}

void sub_10001F9C4(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (a1)
  {
    if (v5)
    {
      v7 = sub_10001FEDC(a1, v5);
      if (v7)
      {
        [*(a1 + 40) setDelegate:0];
        v8 = *(a1 + 40);
        *(a1 + 40) = 0;

        v9 = *(v7 + 56);
        v10 = v9;
        if (v9)
        {
          v11 = *(v7 + 48);
          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_100020098;
          block[3] = &unk_1001FA5B8;
          v34 = v9;
          v35 = a2;
          v33 = v6;
          dispatch_async(v11, block);
        }

        v12 = *(a1 + 72);
        if (v7 != v12)
        {
          [*(a1 + 64) removeObject:v7];
          v13 = *(a1 + 72);
          v14 = *(a1 + 64);
          [v14 insertObject:v13 atIndex:0];

          v12 = *(a1 + 72);
        }

        *(a1 + 72) = 0;

        if (*(a1 + 9) == 1 && a2)
        {
          v31 = v7;
          v15 = *(a1 + 72);
          v30 = v10;
          if (v15)
          {
            v16 = v15[7];
            if (v16)
            {
              v17 = *(a1 + 72);
              if (v17)
              {
                v18 = v17[6];
              }

              else
              {
                v18 = 0;
              }

              v42[0] = _NSConcreteStackBlock;
              v42[1] = 3221225472;
              v42[2] = sub_100020E20;
              v42[3] = &unk_1001FD2A0;
              v19 = v16;
              v43 = v19;
              v20 = v17;
              dispatch_async(v18, v42);
            }

            else
            {
              v19 = 0;
            }

            v15 = *(a1 + 72);
          }

          *(a1 + 72) = 0;

          v40 = 0u;
          v41 = 0u;
          v38 = 0u;
          v39 = 0u;
          v21 = *(a1 + 64);
          v22 = [v21 countByEnumeratingWithState:&v38 objects:v44 count:16];
          if (v22)
          {
            v23 = v22;
            v24 = *v39;
            do
            {
              for (i = 0; i != v23; i = i + 1)
              {
                if (*v39 != v24)
                {
                  objc_enumerationMutation(v21);
                }

                v26 = *(*(&v38 + 1) + 8 * i);
                if (v26)
                {
                  v27 = *(v26 + 56);
                  if (v27)
                  {
                    v28 = *(v26 + 48);
                    v36[0] = _NSConcreteStackBlock;
                    v36[1] = 3221225472;
                    v36[2] = sub_100020E38;
                    v36[3] = &unk_1001FD2A0;
                    v37 = v27;
                    v29 = v27;
                    dispatch_async(v28, v36);
                  }
                }
              }

              v23 = [v21 countByEnumeratingWithState:&v38 objects:v44 count:16];
            }

            while (v23);
          }

          [*(a1 + 64) removeAllObjects];
          if (qword_100228EF8 != -1)
          {
            dispatch_once(&qword_100228EF8, &stru_1001FA5D8);
          }

          v7 = v31;
          if (_NRLogIsLevelEnabled())
          {
            if (qword_100228EF8 != -1)
            {
              dispatch_once(&qword_100228EF8, &stru_1001FA5D8);
            }

            _NRLogWithArgs();
          }

          v10 = v30;
        }

        sub_1000200B0(a1);
      }

      else
      {
        if (qword_100228EF8 != -1)
        {
          dispatch_once(&qword_100228EF8, &stru_1001FA5D8);
        }

        if (_NRLogIsLevelEnabled())
        {
          if (qword_100228EF8 != -1)
          {
            dispatch_once(&qword_100228EF8, &stru_1001FA5D8);
          }

          _NRLogWithArgs();
        }
      }
    }

    else
    {
      if (qword_100228EF8 != -1)
      {
        dispatch_once(&qword_100228EF8, &stru_1001FA5D8);
      }

      if (_NRLogIsLevelEnabled())
      {
        if (qword_100228EF8 != -1)
        {
          dispatch_once(&qword_100228EF8, &stru_1001FA5D8);
        }

        _NRLogWithArgs();
      }
    }
  }
}

id *sub_10001FEDC(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v4 = *(a1 + 72);
    if (v4)
    {
      v5 = *(v4 + 40);
      v6 = v5 ? v5[2] : 0;
      v7 = v5;
      v8 = [v6 isEqual:v3];

      if (v8)
      {
        v9 = *(a1 + 72);
        goto LABEL_23;
      }
    }

    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v10 = *(a1 + 64);
    v11 = [v10 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v22;
      do
      {
        v14 = 0;
        do
        {
          if (*v22 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v21 + 1) + 8 * v14);
          if (v15)
          {
            v16 = v15[5];
            v17 = v16;
            if (v16)
            {
              v16 = v16[2];
            }
          }

          else
          {
            v17 = 0;
            v16 = 0;
          }

          v18 = [v16 isEqual:{v3, v21}];

          if (v18)
          {
            v9 = v15;

            goto LABEL_23;
          }

          v14 = v14 + 1;
        }

        while (v12 != v14);
        v19 = [v10 countByEnumeratingWithState:&v21 objects:v25 count:16];
        v12 = v19;
      }

      while (v19);
    }
  }

  v9 = 0;
LABEL_23:

  return v9;
}

void sub_1000200B0(uint64_t a1)
{
  if (![*(a1 + 64) count])
  {
LABEL_55:
    sub_100020CD4(a1);
    [*(a1 + 24) stopAdvertising];
    [*(a1 + 32) stopScan];
    v44 = *(a1 + 24);
    *(a1 + 24) = 0;

    v45 = *(a1 + 32);
    *(a1 + 32) = 0;

    [*(a1 + 40) setDelegate:0];
    v46 = *(a1 + 40);
    *(a1 + 40) = 0;

    *(a1 + 8) = 0;
    v47 = *(a1 + 56);
    *(a1 + 56) = 0;

    v48 = *(a1 + 72);
    *(a1 + 72) = 0;

    *(a1 + 12) = 0;
    if (qword_100228EF8 != -1)
    {
      dispatch_once(&qword_100228EF8, &stru_1001FA5D8);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_100228EF8 != -1)
      {
        dispatch_once(&qword_100228EF8, &stru_1001FA5D8);
      }

      _NRLogWithArgs();
    }

    return;
  }

  v2 = "[NRBluetoothPairingManager startNextPairer]";
  v3 = "";
  while (1)
  {
    *(a1 + 8) = 1;
    v10 = *(a1 + 64);
    v11 = [v10 firstObject];
    v12 = *(a1 + 72);
    *(a1 + 72) = v11;

    if (qword_100228EF8 != -1)
    {
      dispatch_once(&qword_100228EF8, &stru_1001FA5D8);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_100228EF8 != -1)
      {
        dispatch_once(&qword_100228EF8, &stru_1001FA5D8);
      }

      v13 = *(a1 + 72);
      v14 = qword_100228EF0;
      v64 = 719;
      v66 = v13;
      v60 = v3;
      v62 = v2;
      _NRLogWithArgs();
    }

    [*(a1 + 64) removeObjectAtIndex:{0, v60, v62, v64, v66}];
    v15 = *(a1 + 72);
    if (!v15)
    {
      break;
    }

    v16 = v15[8];

    if (v16 != 1)
    {
      break;
    }

    *(a1 + 10) = 1;
    v17 = *(a1 + 32);
    if (!v17)
    {
      v18 = [CBCentralManager alloc];
      v19 = *(a1 + 16);
      v20 = [v18 initWithDelegate:a1 queue:v19 options:0];
      v21 = *(a1 + 32);
      *(a1 + 32) = v20;
    }

    v22 = *(a1 + 72);
    if (v22)
    {
      v23 = v22[2];
    }

    else
    {
      v23 = 0;
    }

    v24 = v22;
    v67 = sub_100163B2C(NRDLocalDevice, v23, 0);

    if (v67)
    {
      objc_storeStrong((a1 + 56), v67[4]);
      if (v17)
      {
        sub_1000209C4(a1);
      }

      goto LABEL_92;
    }

    if (qword_100228EF8 != -1)
    {
      dispatch_once(&qword_100228EF8, &stru_1001FA5D8);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_100228EF8 != -1)
      {
        dispatch_once(&qword_100228EF8, &stru_1001FA5D8);
      }

      v25 = qword_100228EF0;
      v26 = *(a1 + 72);
      if (v26)
      {
        v27 = v26[2];
      }

      else
      {
        v27 = 0;
      }

      v28 = v26;
      v29 = v25;
      v64 = 287;
      v66 = v27;
      v60 = v3;
      v62 = "[NRBluetoothPairingManager unpair]";
      _NRLogWithArgs();
    }

    v9 = 0;
LABEL_7:

    if (![*(a1 + 64) count])
    {
      goto LABEL_55;
    }
  }

  *(a1 + 11) = 1;
  v30 = *(a1 + 72);
  if (v30)
  {
    v31 = v30[2];
  }

  else
  {
    v31 = 0;
  }

  v32 = v30;
  v67 = sub_100163B2C(NRDLocalDevice, v31, 0);

  if (!v67)
  {
    if (qword_100228EF8 != -1)
    {
      dispatch_once(&qword_100228EF8, &stru_1001FA5D8);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_100228EF8 != -1)
      {
        dispatch_once(&qword_100228EF8, &stru_1001FA5D8);
      }

      v4 = qword_100228EF0;
      v5 = *(a1 + 72);
      if (v5)
      {
        v6 = v5[2];
      }

      else
      {
        v6 = 0;
      }

      v7 = v5;
      v8 = v4;
      v64 = 303;
      v66 = v6;
      v60 = v3;
      v62 = "[NRBluetoothPairingManager pair]";
      _NRLogWithArgs();
    }

LABEL_6:
    v9 = v67;
    goto LABEL_7;
  }

  if ((v67[6] & 0x40) != 0)
  {
    objc_storeStrong((a1 + 56), v67[4]);
    sub_10001F9C4(a1, 1, *(a1 + 56));
    goto LABEL_92;
  }

  v33 = v67[18];
  v34 = [v33 bluetoothRole];
  v35 = v34 != 1;
  if (v34 == 1)
  {
    goto LABEL_69;
  }

  v36 = v67[18];
  v37 = [v36 proxyCapability];
  v35 = v37 != 1;
  if (v37 == 1)
  {
    goto LABEL_68;
  }

  v38 = v2;
  v39 = v3;
  v40 = v67[18];
  v41 = [v40 bluetoothEndpointType];

  if (v41 == 2)
  {
    v35 = 0;
    v3 = v39;
    goto LABEL_70;
  }

  v33 = v67[18];
  if ([v33 bluetoothRole] == 2)
  {
    v35 = 1;
    v3 = v39;
    goto LABEL_69;
  }

  v36 = v67[18];
  if ([v36 proxyCapability] == 2)
  {
    v3 = v39;
LABEL_68:

LABEL_69:
    goto LABEL_70;
  }

  v42 = v67[18];
  v43 = [v42 bluetoothEndpointType];

  if (v43 != 1)
  {
    v3 = v39;
    if (qword_100228EF8 != -1)
    {
      dispatch_once(&qword_100228EF8, &stru_1001FA5D8);
    }

    v2 = v38;
    if (_NRLogIsLevelEnabled())
    {
      if (qword_100228EF8 != -1)
      {
        dispatch_once(&qword_100228EF8, &stru_1001FA5D8);
      }

      v64 = 325;
      v66 = v67;
      v60 = v3;
      v62 = "[NRBluetoothPairingManager pair]";
      _NRLogWithArgs();
      v9 = v67;
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v35 = 1;
  v3 = v39;
LABEL_70:
  *(a1 + 9) = v35;
  v49 = *(a1 + 32);
  if (!v49)
  {
    if (qword_100228EF8 != -1)
    {
      dispatch_once(&qword_100228EF8, &stru_1001FA5D8);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_100228EF8 != -1)
      {
        dispatch_once(&qword_100228EF8, &stru_1001FA5D8);
      }

      v64 = 333;
      v60 = v3;
      v62 = "[NRBluetoothPairingManager pair]";
      _NRLogWithArgs();
    }

    v50 = [CBCentralManager alloc];
    v51 = *(a1 + 16);
    v52 = [v50 initWithDelegate:a1 queue:v51 options:0];
    v53 = *(a1 + 32);
    *(a1 + 32) = v52;

    v49 = *(a1 + 32);
  }

  [a1 centralManagerDidUpdateState:{v49, v60, v62, v64}];
  if (v35)
  {
    v54 = *(a1 + 24);
    if (!v54)
    {
      if (qword_100228EF8 != -1)
      {
        dispatch_once(&qword_100228EF8, &stru_1001FA5D8);
      }

      if (_NRLogIsLevelEnabled())
      {
        v55 = sub_100020970();
        v65 = 343;
        v61 = v3;
        v63 = "[NRBluetoothPairingManager pair]";
        _NRLogWithArgs();
      }

      v56 = [CBPeripheralManager alloc];
      v57 = *(a1 + 16);
      v58 = [v56 initWithDelegate:a1 queue:v57 options:0];
      v59 = *(a1 + 24);
      *(a1 + 24) = v58;

      v54 = *(a1 + 24);
    }

    [a1 peripheralManagerDidUpdateState:{v54, v61, v63, v65}];
  }

  if (qword_100228EF8 != -1)
  {
    dispatch_once(&qword_100228EF8, &stru_1001FA5D8);
  }

  if (_NRLogIsLevelEnabled())
  {
    if (qword_100228EF8 != -1)
    {
      dispatch_once(&qword_100228EF8, &stru_1001FA5D8);
    }

    _NRLogWithArgs();
  }

LABEL_92:
}

id sub_100020970()
{
  if (qword_100228EF8 != -1)
  {
    dispatch_once(&qword_100228EF8, &stru_1001FA5D8);
  }

  v1 = qword_100228EF0;

  return v1;
}

void sub_1000209C4(uint64_t a1)
{
  if (*(a1 + 56))
  {
    if (qword_100228EF8 != -1)
    {
      dispatch_once(&qword_100228EF8, &stru_1001FA5D8);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_100228EF8 != -1)
      {
        dispatch_once(&qword_100228EF8, &stru_1001FA5D8);
      }

      v2 = *(a1 + 56);
      v3 = qword_100228EF0;
      _NRLogWithArgs();
    }

    v4 = 32;
    if (*(a1 + 9))
    {
      v4 = 24;
    }

    v5 = *(a1 + v4);
    v6 = [v5 sharedPairingAgent];

    obj = v6;
    [v6 retrievePairedPeers];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v7 = v22 = 0u;
    v8 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v20;
LABEL_12:
      v11 = 0;
      while (1)
      {
        if (*v20 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v19 + 1) + 8 * v11);
        if (qword_100228EF8 != -1)
        {
          dispatch_once(&qword_100228EF8, &stru_1001FA5D8);
        }

        if (_NRLogIsLevelEnabled())
        {
          if (qword_100228EF8 != -1)
          {
            dispatch_once(&qword_100228EF8, &stru_1001FA5D8);
          }

          _NRLogWithArgs();
        }

        v13 = *(a1 + 56);
        v14 = [v12 identifier];
        v15 = [v13 compare:v14];

        if (!v15)
        {
          break;
        }

        if (v9 == ++v11)
        {
          v9 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
          if (v9)
          {
            goto LABEL_12;
          }

          goto LABEL_24;
        }
      }

      v16 = v12;

      if (!v16)
      {
        goto LABEL_27;
      }

      v17 = obj;
      objc_storeStrong((a1 + 40), obj);
      [obj setDelegate:a1];
      [obj unpairPeer:v16];
    }

    else
    {
LABEL_24:

LABEL_27:
      sub_10001F9C4(a1, 1, *(a1 + 56));
      v17 = obj;
    }
  }
}

void sub_100020CD4(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    v2 = *(a1 + 48);
    v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = *v10;
      do
      {
        v6 = 0;
        do
        {
          if (*v10 != v5)
          {
            objc_enumerationMutation(v2);
          }

          v7 = *(*(&v9 + 1) + 8 * v6);
          v8 = v7;
          if (v7 && *(a1 + 32) && ([v7 state] == 1 || objc_msgSend(v8, "state") == 2))
          {
            [*(a1 + 32) cancelPeripheralConnection:v8];
          }

          v6 = v6 + 1;
        }

        while (v4 != v6);
        v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
      }

      while (v4);
    }
  }
}

void sub_1000218D4(uint64_t a1)
{
  if (*(a1 + 11) == 1)
  {
    v23 = v1;
    v24 = v2;
    v4 = *(a1 + 72);
    if (v4)
    {
      v5 = v4[5];
      v6 = v5;
      v7 = v5 ? *(v5 + 2) : 0;
    }

    else
    {
      v6 = 0;
      v7 = 0;
    }

    v8 = v4;

    if (v7)
    {
      v9 = 32;
      if (*(a1 + 9))
      {
        v9 = 24;
      }

      v10 = *(a1 + v9);
      v11 = [v10 sharedPairingAgent];

      v12 = *(a1 + 72);
      if (v12)
      {
        v13 = *(v12 + 32);
      }

      else
      {
        v13 = 0;
      }

      v14 = *(a1 + 16);
      if (qword_1002292B0 != -1)
      {
        dispatch_once(&qword_1002292B0, &stru_1001FC490);
      }

      v15 = qword_1002292B8;
      v18[0] = _NSConcreteStackBlock;
      v18[1] = 3221225472;
      v18[2] = sub_100021A6C;
      v18[3] = &unk_1001FCAD0;
      v19 = v11;
      v20 = v14;
      v21 = a1;
      v22 = v13;
      v16 = v14;
      v17 = v11;
      dispatch_async(v15, v18);
    }
  }
}

void sub_100021A6C(uint64_t a1)
{
  v2 = [*(a1 + 32) retrievePairedPeers];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100021B14;
  block[3] = &unk_1001FCAA8;
  v3 = *(a1 + 56);
  v5 = *(a1 + 40);
  v4 = *(a1 + 48);
  v8 = v2;
  v9 = v3;
  block[4] = v4;
  v6 = v2;
  dispatch_async(v5, block);
}

void sub_100021B14(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 32);
  if (v3 && (v4 = *(v3 + 72)) != 0)
  {
    v5 = v4[4];

    if (v2 != v5)
    {
      return;
    }
  }

  else if (v2)
  {
    return;
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v6 = *(a1 + 40);
  v7 = [v6 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (!v7)
  {
    goto LABEL_26;
  }

  v8 = v7;
  v9 = *v26;
  while (2)
  {
    v10 = 0;
    do
    {
      if (*v26 != v9)
      {
        objc_enumerationMutation(v6);
      }

      v11 = *(*(&v25 + 1) + 8 * v10);
      v12 = [v11 identifier];
      v13 = *(a1 + 32);
      if (v13)
      {
        v14 = *(v13 + 72);
        v15 = v14;
        if (v14)
        {
          v16 = v14[5];
          v17 = v16;
          if (v16)
          {
            v18 = v16[2];
            goto LABEL_13;
          }
        }

        else
        {
          v17 = 0;
        }

        v18 = 0;
      }

      else
      {
        v17 = 0;
        v15 = 0;
        v18 = 0;
      }

LABEL_13:
      v19 = [v12 isEqual:v18];

      if (v19)
      {
        v21 = [v11 identifier];
        v22 = *(a1 + 32);
        if (v22)
        {
          objc_storeStrong((v22 + 56), v21);
        }

        v23 = *(a1 + 32);
        if (v23)
        {
          v24 = *(v23 + 56);
        }

        else
        {
          v24 = 0;
        }

        sub_10001F9C4(v23, 1, v24);
        goto LABEL_26;
      }

      v10 = v10 + 1;
    }

    while (v8 != v10);
    v20 = [v6 countByEnumeratingWithState:&v25 objects:v29 count:16];
    v8 = v20;
    if (v20)
    {
      continue;
    }

    break;
  }

LABEL_26:
}

char *sub_100022944(char *a1, void **a2)
{
  p_vtable = a2;
  v4 = a2;
  if (!a1)
  {
    goto LABEL_8;
  }

  v13.receiver = a1;
  v13.super_class = NRBluetoothPairer;
  v5 = objc_msgSendSuper2(&v13, "init");
  if (v5)
  {
    a1 = v5;
    *(v5 + 4) = atomic_fetch_add_explicit(&qword_100228180, 1uLL, memory_order_relaxed);
    objc_storeStrong(v5 + 2, p_vtable);
    p_vtable = NRSCDInterfaceConfig.vtable;
    if (qword_100228EF8 == -1)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v7 = sub_100020970();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v9 = sub_100020970();
      _NRLogWithArgs();
    }

    v4 = _os_log_pack_size();
    a1 = &v12 - ((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0);
    v10 = *__error();
    v11 = _os_log_pack_fill();
    *v11 = 136446210;
    *(v11 + 4) = "[NRBluetoothPairer initWithNRUUID:]";
    sub_100020970();
    _NRLogAbortWithPack();
  }

  dispatch_once(&qword_100228EF8, &stru_1001FA5D8);
LABEL_4:
  if (_NRLogIsLevelEnabled())
  {
    if (p_vtable[479] != -1)
    {
      dispatch_once(&qword_100228EF8, &stru_1001FA5D8);
    }

    _NRLogWithArgs();
  }

LABEL_8:

  return a1;
}

uint64_t sub_100022B6C(uint64_t a1, void *a2)
{
  IsLevelEnabled = a2;
  v4 = IsLevelEnabled;
  if (a1)
  {
    v6 = IsLevelEnabled;
    [*(a1 + 64) addObject:IsLevelEnabled];
    if ((*(a1 + 8) & 1) == 0)
    {
      sub_1000200B0(a1);
LABEL_10:
      v4 = v6;
      goto LABEL_11;
    }

    if (qword_100228EF8 != -1)
    {
      dispatch_once(&qword_100228EF8, &stru_1001FA5D8);
    }

    IsLevelEnabled = _NRLogIsLevelEnabled();
    v4 = v6;
    if (IsLevelEnabled)
    {
      if (qword_100228EF8 != -1)
      {
        dispatch_once(&qword_100228EF8, &stru_1001FA5D8);
      }

      IsLevelEnabled = _NRLogWithArgs();
      goto LABEL_10;
    }
  }

LABEL_11:

  return _objc_release_x1(IsLevelEnabled, v4);
}

void sub_100022C70(id a1)
{
  v1 = objc_alloc_init(NRBluetoothPairingManager);
  v2 = qword_100228EE0;
  qword_100228EE0 = v1;

  v3 = objc_alloc_init(NSMutableSet);
  v4 = v3;
  if (qword_100228EE0)
  {
    v5 = v3;
    objc_storeStrong((qword_100228EE0 + 48), v3);
    v4 = v5;
  }

  _objc_release_x1(v3, v4);
}

void sub_100022CE8(uint64_t a1, void *a2, void *a3)
{
  v19 = a2;
  v6 = a3;
  if (a1)
  {
    if (v19)
    {
      if (v6)
      {
        v7 = sub_100163B2C(NRDLocalDevice, *(a1 + 16), 0);
        v8 = v7;
        if (v7)
        {
          v9 = *(v7 + 32);
        }

        else
        {
          v9 = 0;
        }

        v10 = v9;

        if (v10)
        {
          v11 = objc_alloc_init(NRBluetoothPairerParameters);
          if (v8)
          {
            v12 = v8[4];
          }

          else
          {
            v12 = 0;
          }

          v13 = v12;
          if (v11)
          {
            objc_storeStrong(&v11->_bluetoothUUID, v12);
          }

          objc_storeStrong((a1 + 40), v11);
          *(a1 + 8) = 1;
          objc_storeStrong((a1 + 48), a2);
          objc_setProperty_nonatomic_copy(a1, v14, v6, 56);
          objc_opt_self();
          if (qword_100228EE8 != -1)
          {
            dispatch_once(&qword_100228EE8, &stru_1001FA590);
          }

          sub_100022B6C(qword_100228EE0, a1);
        }

        else
        {
          if (qword_100228EF8 != -1)
          {
            dispatch_once(&qword_100228EF8, &stru_1001FA5D8);
          }

          if (_NRLogIsLevelEnabled())
          {
            if (qword_100228EF8 != -1)
            {
              dispatch_once(&qword_100228EF8, &stru_1001FA5D8);
            }

            _NRLogWithArgs();
          }

          (*(v6 + 2))(v6, 0, 0);
        }

        goto LABEL_21;
      }

      v17 = sub_100020970();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      if (IsLevelEnabled)
      {
LABEL_28:
        v8 = sub_100020970();
        _NRLogWithArgs();
LABEL_21:
      }
    }

    else
    {
      v15 = sub_100020970();
      v16 = _NRLogIsLevelEnabled();

      if (v16)
      {
        goto LABEL_28;
      }
    }
  }
}

id sub_1000233CC()
{
  if (qword_100228F10 != -1)
  {
    dispatch_once(&qword_100228F10, &stru_1001FA698);
  }

  v1 = qword_100228F08;

  return v1;
}

void sub_100023420(id a1)
{
  v1 = os_log_create("com.apple.networkrelay", "");
  v2 = qword_100228F08;
  qword_100228F08 = v1;

  _objc_release_x1(v1, v2);
}

void sub_100023B3C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

void sub_100023B5C(_BYTE *val, int a2)
{
  if (val)
  {
    if (val[8] != a2)
    {
      v11[5] = v2;
      v11[6] = v3;
      val[8] = a2;
      val[9] = (a2 - 1) < 3;
      v5 = a2;
      objc_initWeak(v11, val);
      v6 = *(val + 5);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100023E98;
      block[3] = &unk_1001FB900;
      v7 = v6;
      objc_copyWeak(&v9, v11);
      v10 = v5;
      dispatch_async(v7, block);

      objc_destroyWeak(&v9);
      objc_destroyWeak(v11);
    }
  }
}

void sub_100023C44(uint64_t a1, int a2, int a3)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (!WeakRetained || (WeakRetained[12] & 1) != 0 || *(WeakRetained + 10) != *(a1 + 32))
  {
    goto LABEL_22;
  }

  val = WeakRetained;
  if (a3)
  {
    v7 = *(WeakRetained + 6);
    v8 = _NRCopyLogObjectForNRUUID();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    WeakRetained = val;
    if (IsLevelEnabled)
    {
      v10 = *(val + 6);
      v11 = _NRCopyLogObjectForNRUUID();
      _NRLogWithArgs();

      WeakRetained = val;
    }
  }

  if (a2 == -1)
  {
    v23 = *(WeakRetained + 6);
    v24 = _NRCopyLogObjectForNRUUID();
    v25 = _NRLogIsLevelEnabled();

    if (v25)
    {
      v26 = *(val + 6);
      v27 = _NRCopyLogObjectForNRUUID();
      _NRLogWithArgs();
    }

    WeakRetained = val;
    if (val[12])
    {
      goto LABEL_22;
    }

    v17 = 4;
LABEL_21:
    sub_100023B5C(val, v17);
    WeakRetained = val;
    goto LABEL_22;
  }

  if (a2 != 2)
  {
    if (a2 != 1)
    {
      goto LABEL_22;
    }

    v12 = *(WeakRetained + 6);
    v13 = _NRCopyLogObjectForNRUUID();
    v14 = _NRLogIsLevelEnabled();

    if (v14)
    {
      v15 = *(val + 6);
      v16 = _NRCopyLogObjectForNRUUID();
      _NRLogWithArgs();
    }

    v17 = 2;
    goto LABEL_21;
  }

  v18 = *(WeakRetained + 6);
  v19 = _NRCopyLogObjectForNRUUID();
  v20 = _NRLogIsLevelEnabled();

  if (v20)
  {
    v21 = *(val + 6);
    v22 = _NRCopyLogObjectForNRUUID();
    _NRLogWithArgs();
  }

  WeakRetained = val;
  v17 = val[8];
  if (val[8])
  {
    goto LABEL_21;
  }

LABEL_22:
}

void sub_100023E98(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained && *(WeakRetained + 8) == *(a1 + 40))
  {
    v4 = WeakRetained;
    v3 = objc_loadWeakRetained(WeakRetained + 8);
    [v3 didUpdateDNSProxyState:v4 state:*(a1 + 40)];

    WeakRetained = v4;
  }
}

void sub_1000240D0(_BYTE *a1)
{
  if (a1)
  {
    v3 = -1;
    v2 = mrc_dns_proxy_parameters_create();
    if (qword_100228F10 != -1)
    {
      dispatch_once(&qword_100228F10, &stru_1001FA698);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_100228F10 != -1)
      {
        dispatch_once(&qword_100228F10, &stru_1001FA698);
      }

      _NRLogWithArgs();
    }

    sub_100023B5C(a1, 4);
  }
}

void sub_1000244A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000244C8(uint64_t a1, int a2, int a3)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained && (WeakRetained[12] & 1) == 0 && *(WeakRetained + 10) == *(a1 + 32))
  {
    val = WeakRetained;
    if (a3)
    {
      v7 = *(WeakRetained + 6);
      v8 = _NRCopyLogObjectForNRUUID();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      WeakRetained = val;
      if (IsLevelEnabled)
      {
        v10 = *(val + 6);
        v11 = _NRCopyLogObjectForNRUUID();
        _NRLogWithArgs();

        WeakRetained = val;
      }
    }

    if (a2 != -1)
    {
      if (a2 == 2)
      {
        v20 = *(WeakRetained + 6);
        v21 = _NRCopyLogObjectForNRUUID();
        v22 = _NRLogIsLevelEnabled();

        if (!v22)
        {
          v19 = 4;
          goto LABEL_21;
        }

        v23 = *(val + 6);
        v18 = _NRCopyLogObjectForNRUUID();
        _NRLogWithArgs();
        v19 = 4;
      }

      else
      {
        if (a2 != 1)
        {
          goto LABEL_23;
        }

        v12 = *(WeakRetained + 6);
        v13 = _NRCopyLogObjectForNRUUID();
        v14 = _NRLogIsLevelEnabled();

        if (v14)
        {
          v15 = *(val + 6);
          v16 = _NRCopyLogObjectForNRUUID();
          _NRLogWithArgs();
        }

        v17 = *(a1 + 40);
        v18 = *(val + 3);
        *(val + 3) = v17;
        v19 = 2;
      }

LABEL_21:
      WeakRetained = val;
      goto LABEL_22;
    }

    v24 = *(WeakRetained + 6);
    v25 = _NRCopyLogObjectForNRUUID();
    v26 = _NRLogIsLevelEnabled();

    if (v26)
    {
      v27 = *(val + 6);
      v28 = _NRCopyLogObjectForNRUUID();
      _NRLogWithArgs();
    }

    WeakRetained = val;
    if ((val[12] & 1) == 0)
    {
      v19 = 4;
LABEL_22:
      sub_100023B5C(WeakRetained, v19);
      WeakRetained = val;
    }
  }

LABEL_23:
}

void sub_1000249F0(uint64_t a1)
{
  if (!a1)
  {
    return;
  }

  *(a1 + 16) = 1;
  sub_100023B5C(a1, 1);
  v2 = *(a1 + 48);
  v3 = _NRCopyLogObjectForNRUUID();
  IsLevelEnabled = _NRLogIsLevelEnabled();

  if (IsLevelEnabled)
  {
    v5 = *(a1 + 48);
    v6 = _NRCopyLogObjectForNRUUID();
    _NRLogWithArgs();
  }

  v7 = [*(a1 + 96) count];
  if (!v7)
  {
    v11 = *(a1 + 48);
    v12 = _NRCopyLogObjectForNRUUID();
    v13 = _NRLogIsLevelEnabled();

    if (v13)
    {
LABEL_9:
      v14 = *(a1 + 48);
      v15 = _NRCopyLogObjectForNRUUID();
      _NRLogWithArgs();
    }

LABEL_10:

    sub_100023B5C(a1, 4);
    return;
  }

  if (v7 >= 9u)
  {
    v8 = *(a1 + 48);
    v9 = _NRCopyLogObjectForNRUUID();
    v10 = _NRLogIsLevelEnabled();

    if (v10)
    {
      goto LABEL_9;
    }

    goto LABEL_10;
  }

  v16 = v7;
  v17 = malloc_type_calloc(v7, 8uLL, 0xCDDCAD4CuLL);
  if (v17)
  {
    v18 = v17;
    v49 = 0u;
    v50 = 0u;
    v48 = 0u;
    v47 = 0u;
    v19 = *(a1 + 96);
    v20 = [v19 countByEnumeratingWithState:&v47 objects:v51 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = 0;
      v23 = *v48;
      do
      {
        for (i = 0; i != v21; i = i + 1)
        {
          if (*v48 != v23)
          {
            objc_enumerationMutation(v19);
          }

          v25 = *(*(&v47 + 1) + 8 * i);
          if ([v25 length])
          {
            v18[v22++] = [v25 UTF8String];
          }

          else
          {
            v26 = *(a1 + 48);
            v27 = _NRCopyLogObjectForNRUUID();
            v28 = _NRLogIsLevelEnabled();

            if (v28)
            {
              v29 = *(a1 + 48);
              v30 = _NRCopyLogObjectForNRUUID();
              _NRLogWithArgs();
            }
          }
        }

        v21 = [v19 countByEnumeratingWithState:&v47 objects:v51 count:16];
      }

      while (v21);

      if (v22)
      {
        v31 = *(a1 + 40);
        if (advertising_proxy_enable_with_interfaces())
        {
          sub_100024F40(a1);
        }

        else
        {
          v37 = qword_100228F00;
          if (!qword_100228F00)
          {
            v38 = objc_alloc_init(NSMutableDictionary);
            v39 = qword_100228F00;
            qword_100228F00 = v38;

            v37 = qword_100228F00;
          }

          v40 = [NSNumber numberWithUnsignedLong:*(a1 + 80)];
          [v37 setObject:a1 forKeyedSubscript:v40];
        }

LABEL_32:
        free(v18);
        return;
      }
    }

    else
    {
    }

    v32 = *(a1 + 48);
    v33 = _NRCopyLogObjectForNRUUID();
    v34 = _NRLogIsLevelEnabled();

    if (v34)
    {
      v35 = *(a1 + 48);
      v36 = _NRCopyLogObjectForNRUUID();
      _NRLogWithArgs();
    }

    sub_100023B5C(a1, 4);
    goto LABEL_32;
  }

  v41 = sub_1000233CC();
  v42 = _NRLogIsLevelEnabled();

  if (v42)
  {
    v43 = sub_1000233CC();
    _NRLogWithArgs();
  }

  _os_log_pack_size();
  v44 = *__error();
  v45 = _os_log_pack_fill();
  *v45 = 136446722;
  *(v45 + 4) = "[NRDiscoveryProxyServer startDiscoveryProxyServer]";
  *(v45 + 12) = 2048;
  *(v45 + 14) = v16;
  *(v45 + 22) = 2048;
  *(v45 + 24) = 8;
  sub_1000233CC();
  v46 = _NRLogAbortWithPack();
  sub_100024F40(v46);
}

void sub_100024F40(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = _NRCopyLogObjectForNRUUID();
  IsLevelEnabled = _NRLogIsLevelEnabled();

  if (IsLevelEnabled)
  {
    v5 = *(a1 + 48);
    v6 = _NRCopyLogObjectForNRUUID();
    _NRLogWithArgs();
  }

  v7 = *(a1 + 32);
  *(a1 + 32) = 0;

  sub_100023B5C(a1, 4);
}

void sub_100024FF4(uint64_t a1, uint64_t a2, int a3)
{
  if (!a1)
  {
    v22 = sub_1000233CC();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (!IsLevelEnabled)
    {
      return;
    }

    val = sub_1000233CC();
    v6 = _NRLogWithArgs();
    goto LABEL_5;
  }

  v4 = qword_100228F00;
  v5 = [NSNumber numberWithUnsignedLong:a1];
  val = [v4 objectForKeyedSubscript:v5];

  if (!val)
  {
    v24 = sub_1000233CC();
    v25 = _NRLogIsLevelEnabled();

    if (v25)
    {
      v26 = sub_1000233CC();
      _NRLogWithArgs();
    }

    v7 = 0;
    goto LABEL_9;
  }

  if (!a3)
  {
    v8 = *(val + 6);
    v9 = _NRCopyLogObjectForNRUUID();
    v10 = _NRLogIsLevelEnabled();

    if (v10)
    {
      v11 = *(val + 6);
      v12 = _NRCopyLogObjectForNRUUID();
      _NRLogWithArgs();
    }

    sub_1000253D0(val);
    v7 = val;
    if (val[19] != -1)
    {
      goto LABEL_9;
    }

    objc_initWeak(&location, val);
    v13 = *(val + 5);
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_100025650;
    handler[3] = &unk_1001FD278;
    objc_copyWeak(&v31, &location);
    v14 = notify_register_dispatch("com.apple.srp-mdns-proxy.tls-key-update", val + 19, v13, handler);

    if (v14)
    {
      if (qword_100228F10 != -1)
      {
        dispatch_once(&qword_100228F10, &stru_1001FA698);
      }

      v15 = qword_100228F08;
      v16 = _NRLogIsLevelEnabled();

      if ((v16 & 1) == 0)
      {
        goto LABEL_22;
      }

      if (qword_100228F10 != -1)
      {
        dispatch_once(&qword_100228F10, &stru_1001FA698);
      }

      v17 = qword_100228F08;
      v27 = val[19];
      _NRLogWithArgs();
    }

    else
    {
      v18 = *(val + 6);
      v19 = _NRCopyLogObjectForNRUUID();
      v20 = _NRLogIsLevelEnabled();

      if (!v20)
      {
LABEL_22:
        objc_destroyWeak(&v31);
        objc_destroyWeak(&location);
        goto LABEL_5;
      }

      v17 = *(val + 6);
      v21 = _NRCopyLogObjectForNRUUID();
      v28 = val[19];
      _NRLogWithArgs();
    }

    goto LABEL_22;
  }

  sub_100024F40(val);
LABEL_5:
  v7 = val;
LABEL_9:

  _objc_release_x1(v6, v7);
}

void sub_1000253B0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

void sub_1000253D0(uint64_t a1)
{
  v2 = sub_100163A30(NRDLocalDevice, *(a1 + 48));
  v3 = sub_1001672A0(v2, @"853");
  v4 = *(a1 + 24);
  *(a1 + 24) = v3;

  objc_initWeak(&location, a1);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v10 = sub_1000256D4;
  v11 = &unk_1001FA678;
  objc_copyWeak(&v12, &location);
  v5 = v9;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = sub_100025778;
  v23 = sub_100025788;
  v24 = sub_100025790(a1);
  if (v20[5])
  {
    (v10)(v5);
  }

  else
  {
    objc_initWeak(&from, a1);
    v6 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, *(a1 + 40));
    dispatch_source_set_timer(v6, 0, 0x2540BE400uLL, 0x3B9ACA00uLL);
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_100025CD0;
    handler[3] = &unk_1001FA650;
    objc_copyWeak(&v17, &from);
    v16 = &v19;
    v15 = v5;
    dispatch_source_set_event_handler(v6, handler);
    dispatch_activate(v6);
    v7 = *(a1 + 88);
    *(a1 + 88) = v6;
    v8 = v6;

    objc_destroyWeak(&v17);
    objc_destroyWeak(&from);
  }

  _Block_object_dispose(&v19, 8);

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

void sub_100025620(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23)
{
  _Block_object_dispose(&a23, 8);
  objc_destroyWeak((v23 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100025650(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained && (WeakRetained[12] & 1) == 0 && *(WeakRetained + 19) == a2 && WeakRetained[8] == 2)
  {
    v4 = WeakRetained;
    sub_100023B5C(WeakRetained, 3);
    sub_1000253D0(v4);
    WeakRetained = v4;
  }
}

void sub_1000256D4(uint64_t a1, void *a2)
{
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained && (WeakRetained[8] | 2) == 3 && (WeakRetained[12] & 1) == 0)
  {
    objc_storeStrong(WeakRetained + 4, a2);
    if (v6)
    {
      sub_100023B5C(v5, 2);
    }

    else
    {
      sub_100024F40(v5);
    }
  }
}

uint64_t sub_100025778(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

CFDataRef sub_100025790(uint64_t a1)
{
  v52[0] = kSecClass;
  v52[1] = kSecMatchLimit;
  v53[0] = kSecClassCertificate;
  v53[1] = kSecMatchLimitAll;
  v52[2] = kSecAttrAccessGroup;
  v52[3] = kSecAttrSynchronizable;
  v53[2] = @"com.apple.srp-mdns-proxy";
  v53[3] = &__kCFBooleanTrue;
  v52[4] = kSecReturnAttributes;
  v52[5] = kSecReturnRef;
  v53[4] = &__kCFBooleanTrue;
  v53[5] = &__kCFBooleanTrue;
  v2 = [NSDictionary dictionaryWithObjects:v53 forKeys:v52 count:6];
  result = 0;
  v3 = SecItemCopyMatching(v2, &result);
  if (v3 || !result)
  {
    if (result)
    {
      CFRelease(result);
      result = 0;
    }

    v16 = *(a1 + 48);
    v17 = _NRCopyLogObjectForNRUUID();
    if (v3 == -25308)
    {
      IsLevelEnabled = _NRLogIsLevelEnabled();

      if (IsLevelEnabled)
      {
        goto LABEL_22;
      }
    }

    else if (v3 == -25300)
    {
      v18 = _NRLogIsLevelEnabled();

      if (v18)
      {
        goto LABEL_22;
      }
    }

    else
    {
      v23 = _NRLogIsLevelEnabled();

      if (v23)
      {
LABEL_22:
        v24 = *(a1 + 48);
        v25 = _NRCopyLogObjectForNRUUID();
        _NRLogWithArgs();

        v10 = 0;
        goto LABEL_30;
      }
    }

    v10 = 0;
    goto LABEL_30;
  }

  v4 = CFGetTypeID(result);
  if (v4 != CFArrayGetTypeID())
  {
    v32 = *(a1 + 48);
    v33 = _NRCopyLogObjectForNRUUID();
    v34 = _NRLogIsLevelEnabled();

    if (!v34)
    {
      goto LABEL_41;
    }

    v35 = *(a1 + 48);
    v15 = _NRCopyLogObjectForNRUUID();
    v36 = CFGetTypeID(result);

    v37 = v36;
LABEL_39:
    v43 = CFCopyTypeIDDescription(v37);
    goto LABEL_40;
  }

  if (!CFArrayGetCount(result))
  {
    v19 = *(a1 + 48);
    v20 = _NRCopyLogObjectForNRUUID();
    v21 = _NRLogIsLevelEnabled();

    if (v21)
    {
      goto LABEL_25;
    }

    goto LABEL_41;
  }

  ValueAtIndex = CFArrayGetValueAtIndex(result, 0);
  v6 = CFGetTypeID(ValueAtIndex);
  if (v6 != CFDictionaryGetTypeID())
  {
    v38 = *(a1 + 48);
    v39 = _NRCopyLogObjectForNRUUID();
    v40 = _NRLogIsLevelEnabled();

    if (!v40)
    {
      goto LABEL_41;
    }

    v41 = *(a1 + 48);
    v15 = _NRCopyLogObjectForNRUUID();
    v42 = CFGetTypeID(ValueAtIndex);
    v43 = CFCopyTypeIDDescription(v42);
LABEL_40:
    _NRLogWithArgs();

    goto LABEL_26;
  }

  Value = CFDictionaryGetValue(ValueAtIndex, kSecValueRef);
  if (!Value)
  {
    v44 = *(a1 + 48);
    v45 = _NRCopyLogObjectForNRUUID();
    v46 = _NRLogIsLevelEnabled();

    if (v46)
    {
      goto LABEL_25;
    }

    goto LABEL_41;
  }

  v8 = Value;
  v9 = CFGetTypeID(Value);
  if (v9 != SecCertificateGetTypeID())
  {
    v47 = *(a1 + 48);
    v48 = _NRCopyLogObjectForNRUUID();
    v49 = _NRLogIsLevelEnabled();

    if (!v49)
    {
      goto LABEL_41;
    }

    v50 = *(a1 + 48);
    v15 = _NRCopyLogObjectForNRUUID();
    v37 = CFGetTypeID(v8);
    goto LABEL_39;
  }

  CFAbsoluteTimeGetCurrent();
  if ((SecCertificateIsValid() & 1) == 0)
  {
    v26 = *(a1 + 48);
    v27 = _NRCopyLogObjectForNRUUID();
    v28 = _NRLogIsLevelEnabled();

    if (v28)
    {
LABEL_25:
      v29 = *(a1 + 48);
      v15 = _NRCopyLogObjectForNRUUID();
      _NRLogWithArgs();
LABEL_26:
      v10 = 0;
      goto LABEL_27;
    }

LABEL_41:
    v10 = 0;
    v30 = result;
    if (!result)
    {
      goto LABEL_30;
    }

    goto LABEL_29;
  }

  v10 = SecCertificateCopyData(v8);
  v11 = *(a1 + 48);
  v12 = _NRCopyLogObjectForNRUUID();
  v13 = _NRLogIsLevelEnabled();

  if (!v13)
  {
    goto LABEL_28;
  }

  v14 = *(a1 + 48);
  v15 = _NRCopyLogObjectForNRUUID();
  [(__CFData *)v10 length];
  _NRLogWithArgs();
LABEL_27:

LABEL_28:
  v30 = result;
  if (result)
  {
LABEL_29:
    CFRelease(v30);
    result = 0;
  }

LABEL_30:

  return v10;
}

void sub_100025CD0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained && (*(WeakRetained + 12) & 1) == 0)
  {
    ++*(WeakRetained + 72);
    v13 = WeakRetained;
    v3 = sub_100025790(WeakRetained);
    v4 = *(*(a1 + 40) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;

    if (*(*(*(a1 + 40) + 8) + 40) || *(v13 + 72) >= 5u)
    {
      dispatch_source_cancel(v13[11]);
      v6 = v13[11];
      v13[11] = 0;

      if (*(*(*(a1 + 40) + 8) + 40))
      {
        *(v13 + 72) = 0;
        v7 = *(*(*(a1 + 40) + 8) + 40);
      }

      (*(*(a1 + 32) + 16))();
      goto LABEL_8;
    }

    v8 = v13[6];
    v9 = _NRCopyLogObjectForNRUUID();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    WeakRetained = v13;
    if (IsLevelEnabled)
    {
      v11 = v13[6];
      v12 = _NRCopyLogObjectForNRUUID();
      _NRLogWithArgs();

LABEL_8:
      WeakRetained = v13;
    }
  }
}

id *sub_100025F54(id *a1, void *a2, void *a3, void *a4, void *a5, void *a6, int a7, char a8)
{
  v16 = a2;
  v17 = a3;
  v18 = a4;
  v19 = a5;
  v20 = a6;
  if (a1)
  {
    v26.receiver = a1;
    v26.super_class = NRDNSProxyClient;
    v21 = objc_msgSendSuper2(&v26, "initWithQueue:nrUUID:delegate:", v17, v18, v19);
    if (v21)
    {
      a1 = v21;
      objc_storeStrong(v21 + 3, a2);
      objc_storeStrong(a1 + 4, a6);
      *(a1 + 4) = a7;
      *(a1 + 13) = a8;
    }

    else
    {
      v23 = sub_1000233CC();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      if (IsLevelEnabled)
      {
        v25 = sub_1000233CC();
        _NRLogWithArgs();
      }

      a1 = 0;
    }
  }

  return a1;
}

id *sub_100026098(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = a2;
  if (a1)
  {
    v14.receiver = a1;
    v14.super_class = NRDiscoveryProxyServer;
    v11 = objc_msgSendSuper2(&v14, "initWithQueue:nrUUID:delegate:", a3, a4, a5);
    v12 = v11;
    if (v11)
    {
      objc_storeStrong(v11 + 12, a2);
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

id *sub_1000262B4(id *a1, void *a2, char a3)
{
  v7 = a2;
  v8 = v7;
  if (!a1)
  {
    goto LABEL_24;
  }

  if (!v7)
  {
    v25 = sub_1000266EC();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (!IsLevelEnabled)
    {
      goto LABEL_24;
    }

    v16 = sub_1000266EC();
    goto LABEL_22;
  }

  v33.receiver = a1;
  v33.super_class = NRSCDInterfaceConfig;
  v9 = objc_msgSendSuper2(&v33, "init");
  if (!v9)
  {
    v27 = sub_1000266EC();
    v28 = _NRLogIsLevelEnabled();

    v16 = "[NRSCDInterfaceConfig initWithInterfaceName:allowsLinkLocalAddresses:]";
    if (v28)
    {
      v29 = sub_1000266EC();
      _NRLogWithArgs();
    }

    v8 = _os_log_pack_size();
    a1 = (&v32 - ((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0));
    v30 = *__error();
    v31 = _os_log_pack_fill();
    *v31 = 136446210;
    *(v31 + 4) = "[NRSCDInterfaceConfig initWithInterfaceName:allowsLinkLocalAddresses:]";
    sub_1000266EC();
    _NRLogAbortWithPack();
    goto LABEL_31;
  }

  a1 = v9;
  objc_storeStrong(v9 + 3, a2);
  v10 = objc_alloc_init(NSMutableArray);
  v11 = a1[7];
  a1[7] = v10;

  v12 = objc_alloc_init(NSMutableArray);
  v13 = a1[8];
  a1[8] = v12;

  v14 = objc_alloc_init(NSMutableDictionary);
  v15 = a1[9];
  a1[9] = v14;

  *(a1 + 8) = a3;
  sub_100026740(a1);
  v16 = a1[3];
  [v16 UTF8String];
  NetworkInterfaceEntity = SCDynamicStoreKeyCreateNetworkInterfaceEntity(0, kSCDynamicStoreDomainState, a1[3], kSCEntNetIPv4);
  v18 = a1[4];
  a1[4] = NetworkInterfaceEntity;

  if (!a1[4])
  {
    p_vtable = NRSCDInterfaceConfig.vtable;
    if (qword_100228F20 == -1)
    {
LABEL_9:
      if (!_NRLogIsLevelEnabled())
      {
LABEL_23:

LABEL_24:
        v23 = 0;
        goto LABEL_25;
      }

      if (p_vtable[484] != -1)
      {
        dispatch_once(&qword_100228F20, &stru_1001FA6E0);
      }

LABEL_22:
      _NRLogWithArgs();
      goto LABEL_23;
    }

LABEL_31:
    dispatch_once(&qword_100228F20, &stru_1001FA6E0);
    goto LABEL_9;
  }

  v19 = SCDynamicStoreKeyCreateNetworkInterfaceEntity(0, kSCDynamicStoreDomainState, a1[3], kSCEntNetIPv6);
  v20 = a1[5];
  a1[5] = v19;

  if (!a1[5])
  {
    if (qword_100228F20 != -1)
    {
      dispatch_once(&qword_100228F20, &stru_1001FA6E0);
    }

    if (!_NRLogIsLevelEnabled())
    {
      goto LABEL_23;
    }

    if (qword_100228F20 == -1)
    {
      goto LABEL_22;
    }

    goto LABEL_32;
  }

  v21 = SCDynamicStoreKeyCreateNetworkInterfaceEntity(0, kSCDynamicStoreDomainState, a1[3], kSCEntNetLink);
  v22 = a1[6];
  a1[6] = v21;

  if (!a1[6])
  {
    if (qword_100228F20 != -1)
    {
      dispatch_once(&qword_100228F20, &stru_1001FA6E0);
    }

    if (!_NRLogIsLevelEnabled())
    {
      goto LABEL_23;
    }

    if (qword_100228F20 == -1)
    {
      goto LABEL_22;
    }

LABEL_32:
    dispatch_once(&qword_100228F20, &stru_1001FA6E0);
    goto LABEL_22;
  }

  a1 = a1;
  v23 = a1;
LABEL_25:

  return v23;
}

id sub_1000266EC()
{
  if (qword_100228F20 != -1)
  {
    dispatch_once(&qword_100228F20, &stru_1001FA6E0);
  }

  v1 = qword_100228F18;

  return v1;
}

void sub_100026740(uint64_t a1)
{
  v4 = *(a1 + 24);
  v2 = if_nametoindex([v4 UTF8String]);
  *(a1 + 12) = v2;
  if (!v2)
  {
    if (qword_100228F20 != -1)
    {
      dispatch_once(&qword_100228F20, &stru_1001FA6E0);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_100228F20 != -1)
      {
        dispatch_once(&qword_100228F20, &stru_1001FA6E0);
      }

      v3 = *(a1 + 24);
      _NRLogWithArgs();
    }
  }
}

void sub_100026834(id a1)
{
  v1 = os_log_create("com.apple.networkrelay", "");
  v2 = qword_100228F18;
  qword_100228F18 = v1;

  _objc_release_x1(v1, v2);
}

uint64_t sub_100026878(uint64_t result)
{
  if (result)
  {
    if (!*(result + 12) || *(result + 9) != 1)
    {
      return 0;
    }

    v1 = result;
    v2 = *(result + 56);
    if ([v2 count])
    {

      return 1;
    }

    v3 = [*(v1 + 64) count];

    return v3 != 0;
  }

  return result;
}

void sub_100027658(id a1)
{
  v1 = _NRCopySerialQueueAttr();
  v2 = dispatch_queue_create("terminusd_awdl_browse", v1);

  if (!v2)
  {
    v4 = sub_1000277D8();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v6 = sub_1000277D8();
      _NRLogWithArgs();
    }

    _os_log_pack_size();
    __chkstk_darwin();
    v7 = *__error();
    v8 = _os_log_pack_fill();
    *v8 = 136446466;
    *(v8 + 4) = "nr_dispatch_queue_create";
    *(v8 + 12) = 2080;
    *(v8 + 14) = "terminusd_awdl_browse";
    sub_1000277D8();
    _NRLogAbortWithPack();
  }

  v3 = qword_100228F38;
  qword_100228F38 = v2;
}

id sub_1000277D8()
{
  if (qword_100228F30 != -1)
  {
    dispatch_once(&qword_100228F30, &stru_1001FA700);
  }

  v1 = qword_100228F28;

  return v1;
}

void sub_100027ED8(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, unsigned int a8, uint64_t a9, void *a10)
{
  if (a4)
  {
    if (qword_100228F30 != -1)
    {
      dispatch_once(&qword_100228F30, &stru_1001FA700);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_100228F30 == -1)
      {
LABEL_6:
        _NRLogWithArgs();
        return;
      }

LABEL_40:
      dispatch_once(&qword_100228F30, &stru_1001FA700);
      goto LABEL_6;
    }
  }

  else if (a5)
  {
    if (a6)
    {
      if (a10)
      {
        v18 = a10;
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v15 = 0;
          if (a8 && a9)
          {
            v15 = [NSData dataWithBytes:a9 length:a8];
          }

          v16 = [[NSString alloc] initWithUTF8String:a5];
          v17 = [[NSString alloc] initWithUTF8String:a6];
          [v18 handleReplyFullName:v16 hostTarget:v17 port:a7 txtRecord:v15 ifIndex:a3];
        }

        else
        {
          if (qword_100228F30 != -1)
          {
            dispatch_once(&qword_100228F30, &stru_1001FA700);
          }

          if (_NRLogIsLevelEnabled())
          {
            if (qword_100228F30 != -1)
            {
              dispatch_once(&qword_100228F30, &stru_1001FA700);
            }

            _NRLogWithArgs();
          }
        }
      }

      else
      {
        if (qword_100228F30 != -1)
        {
          dispatch_once(&qword_100228F30, &stru_1001FA700);
        }

        if (_NRLogIsLevelEnabled())
        {
          if (qword_100228F30 == -1)
          {
            goto LABEL_6;
          }

          goto LABEL_40;
        }
      }
    }

    else
    {
      if (qword_100228F30 != -1)
      {
        dispatch_once(&qword_100228F30, &stru_1001FA700);
      }

      if (_NRLogIsLevelEnabled())
      {
        if (qword_100228F30 == -1)
        {
          goto LABEL_6;
        }

        goto LABEL_40;
      }
    }
  }

  else
  {
    if (qword_100228F30 != -1)
    {
      dispatch_once(&qword_100228F30, &stru_1001FA700);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_100228F30 == -1)
      {
        goto LABEL_6;
      }

      goto LABEL_40;
    }
  }
}

void sub_100028468(id a1)
{
  v1 = os_log_create("com.apple.networkrelay", "");
  v2 = qword_100228F28;
  qword_100228F28 = v1;

  _objc_release_x1(v1, v2);
}

void sub_10002897C(uint64_t a1, unsigned int a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  if (a4)
  {
    if (qword_100228F30 != -1)
    {
      dispatch_once(&qword_100228F30, &stru_1001FA700);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_100228F30 == -1)
      {
LABEL_6:
        _NRLogWithArgs();
        return;
      }

LABEL_41:
      dispatch_once(&qword_100228F30, &stru_1001FA700);
      goto LABEL_6;
    }

    return;
  }

  if (!a5)
  {
    if (qword_100228F30 != -1)
    {
      dispatch_once(&qword_100228F30, &stru_1001FA700);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_100228F30 == -1)
      {
        goto LABEL_6;
      }

      goto LABEL_41;
    }

    return;
  }

  if (!a6)
  {
    if (qword_100228F30 != -1)
    {
      dispatch_once(&qword_100228F30, &stru_1001FA700);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_100228F30 == -1)
      {
        goto LABEL_6;
      }

      goto LABEL_41;
    }

    return;
  }

  if (a7)
  {
    if (a8)
    {
      v16 = a8;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v13 = [[NSString alloc] initWithUTF8String:a5];
        v14 = [[NSString alloc] initWithUTF8String:a6];
        v15 = [[NSString alloc] initWithUTF8String:a7];
        [v16 handleReplyName:v13 type:v14 domain:v15 ifIndex:a3 add:(a2 >> 1) & 1];
      }

      else
      {
        if (qword_100228F30 != -1)
        {
          dispatch_once(&qword_100228F30, &stru_1001FA700);
        }

        if (!_NRLogIsLevelEnabled())
        {
          goto LABEL_38;
        }

        v13 = sub_1000277D8();
        _NRLogWithArgs();
      }
    }

    else
    {
      if (qword_100228F30 != -1)
      {
        dispatch_once(&qword_100228F30, &stru_1001FA700);
      }

      if (!_NRLogIsLevelEnabled())
      {
        return;
      }

      v16 = sub_1000277D8();
      _NRLogWithArgs();
    }

LABEL_38:

    return;
  }

  if (qword_100228F30 != -1)
  {
    dispatch_once(&qword_100228F30, &stru_1001FA700);
  }

  if (_NRLogIsLevelEnabled())
  {
    if (qword_100228F30 == -1)
    {
      goto LABEL_6;
    }

    goto LABEL_41;
  }
}

id sub_1000292B4(unsigned int a1)
{
  v2 = [NSString alloc];
  switch(a1)
  {
    case 0u:
      v3 = "Invalid";
      goto LABEL_28;
    case 1u:
      v3 = "Hello";
      goto LABEL_28;
    case 2u:
      v3 = "UpdateWiFiAddressIPv6";
      goto LABEL_28;
    case 3u:
      v3 = "UpdateWiFiAddressIPv4";
      goto LABEL_28;
    case 4u:
      v3 = "UpdateWiFiSignature";
      goto LABEL_28;
    case 5u:
      v3 = "PreferWiFi";
      goto LABEL_28;
    case 6u:
      v3 = "DeviceLinkState";
      goto LABEL_28;
    case 7u:
      v3 = "PreferWiFiAck";
      goto LABEL_28;
    case 8u:
      v3 = "ForceWoW";
      goto LABEL_28;
    case 9u:
      v3 = "UpdateAWDLAddressIPv6";
      goto LABEL_28;
    case 0xAu:
      v3 = "AWDLReachable";
      goto LABEL_28;
    case 0xBu:
      v3 = "RequestFlags";
      goto LABEL_28;
    case 0xCu:
      v3 = "NetInfo";
      goto LABEL_28;
    case 0xDu:
      v3 = "LinkUpgrade";
      goto LABEL_28;
    case 0xEu:
      v3 = "DeviceThermalPressureLevel";
      goto LABEL_28;
    case 0xFu:
      v3 = "CountryCode";
      goto LABEL_28;
    case 0x10u:
      v3 = "DNSProxy";
      goto LABEL_28;
    case 0x11u:
      v3 = "DNSProxyUpdate";
      goto LABEL_28;
    case 0x12u:
      v3 = "DiscoveryProxy";
      goto LABEL_28;
    case 0x13u:
      v3 = "DiscoveryProxyUpdate";
      goto LABEL_28;
    case 0x14u:
      v3 = "ApplicationServiceEndpointsRequest";
      goto LABEL_28;
    case 0x15u:
      v3 = "ApplicationServiceEndpointsResponse";
      goto LABEL_28;
    case 0x16u:
      v3 = "DevicePluggedIn";
      goto LABEL_28;
    case 0x17u:
      v3 = "TLSIdentitySPKI";
      goto LABEL_28;
    default:
      if (a1 != 255)
      {
        return [v2 initWithFormat:@"Unknown(%lld)", a1];
      }

      v3 = "Test";
LABEL_28:

      return [v2 initWithUTF8String:v3];
  }
}

unint64_t sub_100029538(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = *(a1 + 40);
  if (!v1)
  {
    v2 = *(a1 + 10);
    if (*(a1 + 10))
    {
      v3 = *(a1 + 48);
      if (v3)
      {
        if (v2 == 2)
        {
          v1 = bswap64(*(v3 + 8));
          goto LABEL_10;
        }

        if (v2 == 1)
        {
          v1 = bswap32(*(v3 + 4)) >> 16;
LABEL_10:
          *(a1 + 40) = v1;
          return v1;
        }

        return 0;
      }

      v8 = sub_100029784();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      if (IsLevelEnabled)
      {
        v10 = sub_100029784();
        _NRLogWithArgs();
      }
    }

    else
    {
      v5 = sub_100029784();
      v6 = _NRLogIsLevelEnabled();

      if (v6)
      {
        v7 = sub_100029784();
        _NRLogWithArgs();
      }
    }

    _os_log_pack_size();
    __chkstk_darwin();
    v11 = *__error();
    v12 = _os_log_pack_fill();
    *v12 = 136446210;
    *(v12 + 4) = "[NRLinkDirectorMessage identifier]";
    sub_100029784();
    _NRLogAbortWithPack();
  }

  return v1;
}

id sub_100029784()
{
  if (qword_100228F60 != -1)
  {
    dispatch_once(&qword_100228F60, &stru_1001FA780);
  }

  v1 = qword_100228F58;

  return v1;
}

void sub_1000297D8(id a1)
{
  v1 = os_log_create("com.apple.networkrelay", "");
  v2 = qword_100228F58;
  qword_100228F58 = v1;

  _objc_release_x1(v1, v2);
}

void sub_100029878(id a1)
{
  v1 = sub_1000298B8([NRLinkDirectorMessageManager alloc]);
  v2 = qword_100228F48;
  qword_100228F48 = v1;

  _objc_release_x1(v1, v2);
}

void *sub_1000298B8(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v13.receiver = a1;
  v13.super_class = NRLinkDirectorMessageManager;
  v1 = objc_msgSendSuper2(&v13, "init");
  if (!v1)
  {
    v8 = sub_100029784();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v10 = sub_100029784();
      _NRLogWithArgs();
    }

    _os_log_pack_size();
    v11 = *__error();
    v12 = _os_log_pack_fill();
    *v12 = 136446210;
    *(v12 + 4) = "[NRLinkDirectorMessageManager initManager]";
    sub_100029784();
    _NRLogAbortWithPack();
    return 0;
  }

  v2 = v1;
  v3 = sub_100003490();
  v4 = v2[1];
  v2[1] = v3;

  v5 = objc_alloc_init(NSMutableDictionary);
  v6 = v2[2];
  v2[2] = v5;

  return v2;
}

uint64_t sub_100029A28(id *a1, void *a2, unsigned int a3, char a4)
{
  v8 = a2;
  v9 = v8;
  if (!a1)
  {
    goto LABEL_17;
  }

  if (!v8)
  {
    v17 = sub_100029784();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v19 = sub_100029784();
      _NRLogWithArgs();

      v15 = 0;
      goto LABEL_11;
    }

LABEL_17:
    v15 = 0;
    goto LABEL_11;
  }

  v32.receiver = a1;
  v32.super_class = NRLinkDirectorMessage;
  v10 = objc_msgSendSuper2(&v32, "init");
  if (!v10)
  {
    v20 = sub_100029784();
    v21 = _NRLogIsLevelEnabled();

    if (v21)
    {
      v22 = sub_100029784();
      _NRLogWithArgs();
    }

    v9 = _os_log_pack_size();
    a1 = (&v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
    v23 = *__error();
    v24 = _os_log_pack_fill();
    *v24 = 136446210;
    *(v24 + 4) = "[NRLinkDirectorMessage initDirectorMessageWithNRUUID:messageLen:messageVersion:]";
    sub_100029784();
    _NRLogAbortWithPack();
    goto LABEL_17;
  }

  v11 = v10;
  objc_storeStrong(v10 + 4, a2);
  *(v11 + 4) = a3;
  *(v11 + 10) = a4;
  v12 = malloc_type_calloc(1uLL, a3, 0x13E90F9uLL);
  if (v12)
  {
    v11[6] = v12;
    v13 = *(v11 + 10);
    if (v13 == 1)
    {
      v14 = 8;
    }

    else
    {
      if (v13 != 2)
      {
LABEL_10:
        a1 = v11;
        v15 = a1;
LABEL_11:

        return v15;
      }

      v14 = 16;
    }

    *(v11 + 6) = v14;
    goto LABEL_10;
  }

  v25 = sub_100029784();
  v26 = _NRLogIsLevelEnabled();

  if (v26)
  {
    v27 = sub_100029784();
    _NRLogWithArgs();
  }

  _os_log_pack_size();
  v28 = *__error();
  v29 = _os_log_pack_fill();
  *v29 = 136446722;
  *(v29 + 4) = "[NRLinkDirectorMessage initDirectorMessageWithNRUUID:messageLen:messageVersion:]";
  *(v29 + 12) = 2048;
  *(v29 + 14) = 1;
  *(v29 + 22) = 2048;
  *(v29 + 24) = a3;
  sub_100029784();
  v30 = _NRLogAbortWithPack();
  return sub_100029D34(v30);
}

uint64_t sub_100029D34(uint64_t result, char a2)
{
  if (result)
  {
    if (*(result + 10))
    {
      v2 = *(result + 48);
      if (v2)
      {
        if (*(result + 10) <= 2u)
        {
          *v2 = a2;
        }

        return result;
      }

      v6 = sub_100029784();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      if (IsLevelEnabled)
      {
        v8 = sub_100029784();
        _NRLogWithArgs();
      }
    }

    else
    {
      v3 = sub_100029784();
      v4 = _NRLogIsLevelEnabled();

      if (v4)
      {
        v5 = sub_100029784();
        _NRLogWithArgs();
      }
    }

    _os_log_pack_size();
    v9 = *__error();
    v10 = _os_log_pack_fill();
    *v10 = 136446210;
    *(v10 + 4) = "[NRLinkDirectorMessage writeMessageVersionToSendBuffer:]";
    sub_100029784();
    _NRLogAbortWithPack();
  }

  return result;
}

void sub_100029F24(uint64_t a1, _WORD *a2, size_t __n)
{
  if (!a1)
  {
    return;
  }

  v3 = *(a1 + 10);
  if (!*(a1 + 10))
  {
    v10 = sub_100029784();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v12 = sub_100029784();
      _NRLogWithArgs();
    }

LABEL_21:
    _os_log_pack_size();
    v16 = *__error();
    v17 = _os_log_pack_fill();
    *v17 = 136446210;
    *(v17 + 4) = "[NRLinkDirectorMessage writeMessageIdentifierNBOToSendBuffer:len:]";
    sub_100029784();
    _NRLogAbortWithPack();
  }

  v4 = *(a1 + 48);
  if (!v4)
  {
    v13 = sub_100029784();
    v14 = _NRLogIsLevelEnabled();

    if (v14)
    {
      v15 = sub_100029784();
      _NRLogWithArgs();
    }

    goto LABEL_21;
  }

  if (v3 == 2)
  {

    memcpy((v4 + 8), a2, __n);
  }

  else if (v3 == 1)
  {
    if (__n >= 3)
    {
      v5 = *(a1 + 32);
      v7 = _NRCopyLogObjectForNRUUID();
      v8 = _NRLogIsLevelEnabled();

      if (v8)
      {
        v9 = *(a1 + 32);
        v18 = _NRCopyLogObjectForNRUUID();
        _NRLogWithArgs();
      }
    }

    else
    {
      *(v4 + 4) = *a2;
    }
  }
}

uint64_t sub_10002A204(uint64_t result, __int16 a2)
{
  v2 = *(result + 10);
  if (!*(result + 10))
  {
    v5 = sub_100029784();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v7 = sub_100029784();
      _NRLogWithArgs();
    }

LABEL_14:
    _os_log_pack_size();
    v11 = *__error();
    v12 = _os_log_pack_fill();
    *v12 = 136446210;
    *(v12 + 4) = "[NRLinkDirectorMessage writeMessagePayloadLengthNBOToSendBuffer:len:]";
    sub_100029784();
    _NRLogAbortWithPack();
  }

  v3 = *(result + 48);
  if (!v3)
  {
    v8 = sub_100029784();
    v9 = _NRLogIsLevelEnabled();

    if (v9)
    {
      v10 = sub_100029784();
      _NRLogWithArgs();
    }

    goto LABEL_14;
  }

  if (v2 == 1)
  {
    v4 = 6;
  }

  else
  {
    if (v2 != 2)
    {
      return result;
    }

    v4 = 2;
  }

  *(v3 + v4) = a2;
  return result;
}

void *sub_10002A404(id *a1, void *a2, int a3)
{
  v5 = a2;
  if (!a1)
  {
    v12 = 0;
    goto LABEL_9;
  }

  if (a3 == 1)
  {
    v6 = sub_100029A28(a1, v5, 8u, 1);
    sub_100029D34(v6, 1);
    add_explicit = atomic_fetch_add_explicit(word_100228190, 1u, memory_order_relaxed);
    if (v6)
    {
      v6[5] = add_explicit;
      v14 = bswap32(sub_100029538(v6)) >> 16;
      v8 = &v14;
      v9 = v6;
      v10 = 2;
LABEL_7:
      sub_100029F24(v9, v8, v10);
    }
  }

  else
  {
    v6 = sub_100029A28(a1, v5, 0x10u, 2);
    sub_100029D34(v6, 2);
    v11 = sub_10013A56C();
    if (v6)
    {
      v6[5] = v11;
      v15 = bswap64(sub_100029538(v6));
      v8 = &v15;
      v9 = v6;
      v10 = 8;
      goto LABEL_7;
    }
  }

  v12 = v6;
LABEL_9:

  return v12;
}

id *sub_10002A50C(id *a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (!a1)
  {
LABEL_7:
    v5 = 0;
    goto LABEL_4;
  }

  if (!v3)
  {
    v7 = sub_100029784();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v9 = sub_100029784();
      _NRLogWithArgs();
    }

    goto LABEL_7;
  }

  a1 = sub_10002A404(a1, v3, 2);
  v5 = a1;
LABEL_4:

  return v5;
}

id *sub_10002A5C4(id *a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (!a1)
  {
LABEL_9:
    v6 = 0;
    goto LABEL_6;
  }

  if (!v3)
  {
    v8 = sub_100029784();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v10 = sub_100029784();
      _NRLogWithArgs();
    }

    goto LABEL_9;
  }

  v5 = sub_10002A404(a1, v3, 2);
  if (v5)
  {
    v5[8] = 1;
  }

  a1 = v5;
  v6 = a1;
LABEL_6:

  return v6;
}

uint64_t sub_10002A684(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  objc_opt_self();
  v6 = [v4 length];
  v46 = 0;
  if (!v6)
  {
    v9 = _NRCopyLogObjectForNRUUID();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v11 = _NRCopyLogObjectForNRUUID();
LABEL_20:
      _NRLogWithArgs();

      goto LABEL_21;
    }

    goto LABEL_21;
  }

  [v4 getBytes:&v46 length:1];
  if (v46 == 2)
  {
    v45[0] = 0;
    v45[1] = 0;
    if (v6 <= 0xF)
    {
      v12 = _NRCopyLogObjectForNRUUID();
      v13 = _NRLogIsLevelEnabled();

      if (v13)
      {
LABEL_11:
        v11 = _NRCopyLogObjectForNRUUID();
        goto LABEL_20;
      }

LABEL_21:
      v25 = 0;
      goto LABEL_22;
    }

    [v4 getBytes:v45 length:16];
    v21 = WORD1(v45[0]);
    v22 = __rev16(WORD1(v45[0]));
    if (v22 + 16 > v6)
    {
      v23 = _NRCopyLogObjectForNRUUID();
      v24 = _NRLogIsLevelEnabled();

      if (!v24)
      {
        goto LABEL_21;
      }

      goto LABEL_19;
    }

    v34 = [NRLinkDirectorMessage alloc];
    v35 = sub_100029A28(&v34->super.isa, v5, v22 + 16, v46);
    v25 = v35;
    if (v35)
    {
      *(v35 + 14) = v22;
      sub_10002A204(v35, v21);
      [v4 getBytes:*(v25 + 48) length:v22 + 16];
      *(v25 + 56) = atomic_fetch_add_explicit(&qword_100228198, 1uLL, memory_order_relaxed);
    }

    else
    {
      [v4 getBytes:0 length:v22 + 16];
      atomic_fetch_add_explicit(&qword_100228198, 1uLL, memory_order_relaxed);
    }

    v36 = _NRCopyLogObjectForNRUUID();
    v37 = _NRLogIsLevelEnabled();

    if (v37)
    {
LABEL_32:
      v38 = _NRCopyLogObjectForNRUUID();
      _NRLogWithArgs();
    }
  }

  else
  {
    if (v46 != 1)
    {
      v14 = _NRCopyLogObjectForNRUUID();
      v15 = _NRLogIsLevelEnabled();

      if (v15)
      {
        v16 = _NRCopyLogObjectForNRUUID();
        _NRLogWithArgs();
      }

      goto LABEL_21;
    }

    v45[0] = 0;
    if (v6 <= 7)
    {
      v7 = _NRCopyLogObjectForNRUUID();
      v8 = _NRLogIsLevelEnabled();

      if (v8)
      {
        goto LABEL_11;
      }

      goto LABEL_21;
    }

    [v4 getBytes:v45 length:8];
    v17 = HIWORD(v45[0]);
    v18 = __rev16(HIWORD(v45[0]));
    v19 = _NRCopyLogObjectForNRUUID();
    if (v18 + 8 > v6)
    {
      v20 = _NRLogIsLevelEnabled();

      if (!v20)
      {
        goto LABEL_21;
      }

LABEL_19:
      v11 = _NRCopyLogObjectForNRUUID();
      goto LABEL_20;
    }

    v27 = _NRLogIsLevelEnabled();

    if (v27)
    {
      v28 = _NRCopyLogObjectForNRUUID();
      v41 = 612;
      v42 = v46;
      v39 = "";
      v40 = "+[NRLinkDirectorMessage createMessageWithData:nrUUID:]";
      v43 = bswap32(WORD2(v45[0])) >> 16;
      v44 = v18;
      _NRLogWithArgs();
    }

    v29 = [NRLinkDirectorMessage alloc];
    v30 = sub_100029A28(&v29->super.isa, v5, v18 + 8, v46);
    v25 = v30;
    if (v30)
    {
      *(v30 + 14) = v18;
      sub_10002A204(v30, v17);
      v31 = *(v25 + 48);
    }

    else
    {
      v31 = 0;
    }

    [v4 getBytes:v31 length:{(v18 + 8), v39, v40, v41, v42, v43, v44}];
    v32 = _NRCopyLogObjectForNRUUID();
    v33 = _NRLogIsLevelEnabled();

    if (v33)
    {
      goto LABEL_32;
    }
  }

LABEL_22:

  return v25;
}

void sub_10002AB38(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if (!a1)
  {
    goto LABEL_21;
  }

  v45 = v5;
  if (v5)
  {
    v6 = [v5 length];
    if (v6 >= 0x10000)
    {
      v21 = *(a1 + 32);
      v22 = _NRCopyLogObjectForNRUUID();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      v5 = v45;
      if (IsLevelEnabled)
      {
        v24 = *(a1 + 32);
        v25 = _NRCopyLogObjectForNRUUID();
        _NRLogWithArgs();

        goto LABEL_20;
      }

LABEL_21:

      return;
    }
  }

  else
  {
    LOWORD(v6) = 0;
  }

  v7 = *(a1 + 14);
  v8 = *(a1 + 16);
  if (v8 != *(a1 + 12) + v7)
  {
    v15 = *(a1 + 32);
    v16 = _NRCopyLogObjectForNRUUID();
    v17 = _NRLogIsLevelEnabled();

    v5 = v45;
    if (v17)
    {
      v18 = *(a1 + 32);
      v19 = _NRCopyLogObjectForNRUUID();
      v20 = *(a1 + 16);

      _NRLogWithArgs();
LABEL_20:
      v5 = v45;
      goto LABEL_21;
    }

    goto LABEL_21;
  }

  v9 = v6;
  v10 = v6 + 3;
  v11 = v8 + (v6 + 3);
  *(a1 + 16) = v11;
  if (!v11)
  {
    v27 = sub_100029784();
    v28 = _NRLogIsLevelEnabled();

    if (v28)
    {
      v29 = sub_100029784();
      _NRLogWithArgs();
    }

    _os_log_pack_size();
    __chkstk_darwin();
    v30 = *__error();
    v31 = _os_log_pack_fill();
    *v31 = 136446210;
    *(v31 + 4) = "[NRLinkDirectorMessage addType:data:]";
LABEL_30:
    sub_100029784();
    _NRLogAbortWithPack();
  }

  v12 = reallocf(*(a1 + 48), v11);
  if (!v12)
  {
    v32 = sub_100029784();
    v33 = _NRLogIsLevelEnabled();

    if (v33)
    {
      v34 = sub_100029784();
      _NRLogWithArgs();
    }

    _os_log_pack_size();
    __chkstk_darwin();
    v35 = *__error();
    v36 = _os_log_pack_fill();
    *v36 = 136446466;
    *(v36 + 4) = "[NRLinkDirectorMessage addType:data:]";
    *(v36 + 12) = 2048;
    *(v36 + 14) = v11;
    goto LABEL_30;
  }

  *(a1 + 48) = v12;
  v13 = *(a1 + 10);
  if (v13 == 1)
  {
    v14 = 8;
    goto LABEL_17;
  }

  if (v13 == 2)
  {
    v14 = 16;
LABEL_17:
    v26 = &v12[v14 + v7];
    *v26 = a2;
    *(v26 + 1) = __rev16(v9);
    if (v9)
    {
      [v45 getBytes:v26 + 3 length:v9];
    }

    *(a1 + 14) = v7 + v10;
    sub_10002A204(a1, bswap32(v7 + v10) >> 16);
    goto LABEL_20;
  }

  v37 = sub_100029784();
  v38 = _NRLogIsLevelEnabled();

  if (v38)
  {
    v39 = sub_100029784();
    v44 = *(a1 + 10);
    _NRLogWithArgs();
  }

  _os_log_pack_size();
  __chkstk_darwin();
  v40 = *__error();
  v41 = _os_log_pack_fill();
  v42 = *(a1 + 10);
  *v41 = 136446466;
  *(v41 + 4) = "[NRLinkDirectorMessage addType:data:]";
  *(v41 + 12) = 1024;
  *(v41 + 14) = v42;
  sub_100029784();
  v43 = _NRLogAbortWithPack();
  sub_10002AFC8(v43);
}

void sub_10002AFC8(uint64_t a1, char a2, char a3)
{
  if (a1)
  {
    v6 = a3;
    v5 = [[NSData alloc] initWithBytes:&v6 length:1];
    sub_10002AB38(a1, a2, v5);
  }
}

void sub_10002B038(uint64_t a1, void *a2, unsigned int a3, int a4)
{
  v7 = a2;
  v19 = v7;
  if (v7)
  {
    v8 = sub_10013D308(v7, a3, 1);
    if (!v8)
    {
      if (qword_100228F60 != -1)
      {
        dispatch_once(&qword_100228F60, &stru_1001FA780);
      }

      if (_NRLogIsLevelEnabled())
      {
        if (qword_100228F60 != -1)
        {
          dispatch_once(&qword_100228F60, &stru_1001FA780);
        }

        _NRLogWithArgs();
        v9 = 0;
      }

      else
      {
        v9 = 0;
      }

      goto LABEL_23;
    }

    v9 = v8;
    if ([v19 addressFamily] == 30)
    {
      if (a4)
      {
        v10 = 9;
      }

      else
      {
        v10 = 2;
      }

      goto LABEL_7;
    }

    v11 = [v19 addressFamily];
    if (v11 == 2 && a4)
    {
      v12 = *(a1 + 32);
      v13 = _NRCopyLogObjectForNRUUID();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      if (IsLevelEnabled)
      {
        v15 = *(a1 + 32);
        v16 = _NRCopyLogObjectForNRUUID();
        _NRLogWithArgs();
      }

      goto LABEL_23;
    }

    if (v11 == 2)
    {
      v10 = 3;
LABEL_7:
      sub_10002AB38(a1, v10, v9);
    }
  }

  else
  {
    v17 = sub_100029784();
    v18 = _NRLogIsLevelEnabled();

    if (!v18)
    {
      goto LABEL_24;
    }

    v9 = sub_100029784();
    _NRLogWithArgs();
  }

LABEL_23:

LABEL_24:
}

unsigned __int16 *sub_10002B210(void *a1, uint64_t a2)
{
  if (a1)
  {
    if (a1[6])
    {
      objc_opt_self();
      if (qword_100228F50 != -1)
      {
        dispatch_once(&qword_100228F50, &stru_1001FA740);
      }

      v5 = qword_100228F48;
      v6 = a1;
      if (!v5)
      {
        goto LABEL_57;
      }

      dispatch_assert_queue_V2(*(v5 + 8));
      v7 = *(v5 + 16);
      v8 = *(v6 + 4);
      v9 = v7;
      v10 = [v9 objectForKeyedSubscript:v8];

      if (!v10)
      {
        v27 = *(v6 + 4);
        v28 = _NRCopyLogObjectForNRUUID();
        IsLevelEnabled = _NRLogIsLevelEnabled();

        if (IsLevelEnabled)
        {
          v30 = *(v6 + 4);
          v31 = _NRCopyLogObjectForNRUUID();
          _NRLogWithArgs();

          v26 = 0;
          goto LABEL_84;
        }

LABEL_57:
        v26 = 0;
        goto LABEL_84;
      }

      v11 = [NSNumber numberWithUnsignedChar:a2];
      v12 = [v10 objectForKeyedSubscript:v11];
      if (v12)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
LABEL_56:

          goto LABEL_57;
        }

        v13 = v12[1];
        v14 = v13;
        if (v13)
        {
          v2 = [v13 unsignedLongLongValue];
          if (v2 >= sub_100029538(v6))
          {
            v15 = v12[2];
            v16 = [v14 unsignedLongLongValue];
            if (v16 == sub_100029538(v6) && [v15 unsignedLongLongValue] == *(v6 + 7))
            {
              v17 = v15;
              v18 = *(v6 + 4);
              v19 = _NRCopyLogObjectForNRUUID();
              v2 = _NRLogIsLevelEnabled();

              if (v2)
              {
                v20 = *(v6 + 4);
                v21 = _NRCopyLogObjectForNRUUID();
                sub_100029538(v6);
                _NRLogWithArgs();
              }

              goto LABEL_22;
            }

            v70 = *(v6 + 4);
            v71 = _NRCopyLogObjectForNRUUID();
            v72 = _NRLogIsLevelEnabled();

            if (v72)
            {
              v73 = *(v6 + 4);
              v74 = _NRCopyLogObjectForNRUUID();
              [v14 unsignedLongLongValue];

              sub_100029538(v6);
              _NRLogWithArgs();
            }

            goto LABEL_56;
          }
        }
      }

      else
      {
        v14 = 0;
      }

LABEL_22:

      v32 = objc_alloc_init(NSMutableArray);
      v33 = v6[7];
      if (*(v6 + 4) == v6[6] + v33)
      {
        v34 = *(v6 + 10);
        v116 = v6;
        v117 = a2;
        if (v34 == 1)
        {
          v35 = 8;
          if (!v6[7])
          {
            goto LABEL_45;
          }
        }

        else
        {
          if (v34 != 2)
          {
            v105 = sub_100029784();
            v106 = _NRLogIsLevelEnabled();

            v66 = "[NRLinkDirectorMessage copyAllDataForType:]";
            if (v106)
            {
              v107 = sub_100029784();
              v112 = *(v6 + 10);
              _NRLogWithArgs();
            }

            v65 = _os_log_pack_size();
            __chkstk_darwin();
            v108 = *__error();
            v109 = _os_log_pack_fill();
            v110 = *(v6 + 10);
            *v109 = 136446466;
            *(v109 + 4) = "[NRLinkDirectorMessage copyAllDataForType:]";
            *(v109 + 12) = 1024;
            *(v109 + 14) = v110;
            sub_100029784();
            _NRLogAbortWithPack();
            goto LABEL_89;
          }

          v35 = 16;
          if (!v6[7])
          {
LABEL_45:
            if (![v32 count])
            {
LABEL_83:
              v6 = v32;
              v26 = v6;
              goto LABEL_84;
            }

            objc_opt_self();
            if (qword_100228F50 != -1)
            {
              dispatch_once(&qword_100228F50, &stru_1001FA740);
            }

            v6 = v116;
            v65 = qword_100228F48;
            v66 = v116;
            if (!v65)
            {
LABEL_82:

              goto LABEL_83;
            }

            dispatch_assert_queue_V2(*(v65 + 8));
            v67 = v116[4];
            v68 = *(v65 + 16);
            v33 = [v68 objectForKeyedSubscript:v67];

            if (!v33)
            {
              v84 = v116[4];
              v85 = _NRCopyLogObjectForNRUUID();
              v86 = _NRLogIsLevelEnabled();

              if (!v86)
              {
LABEL_81:

                goto LABEL_82;
              }

              v87 = v116[4];
              v12 = _NRCopyLogObjectForNRUUID();
              _NRLogWithArgs();
LABEL_80:

              goto LABEL_81;
            }

            v12 = [NSNumber numberWithUnsignedChar:v117];
            v69 = [NSNumber numberWithUnsignedLongLong:sub_100029538(v66)];
            v2 = [v33 objectForKeyedSubscript:v12];
            v113 = v32;
            if (v2)
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                v100 = v116[4];
                v101 = _NRCopyLogObjectForNRUUID();
                v102 = _NRLogIsLevelEnabled();

                if (!v102)
                {
                  v96 = v69;
LABEL_79:

                  v32 = v113;
                  goto LABEL_80;
                }

                v103 = v116[4];
                v89 = _NRCopyLogObjectForNRUUID();
                _NRLogWithArgs();
                v96 = v69;
LABEL_78:

                goto LABEL_79;
              }

              v114 = v69;
              goto LABEL_65;
            }

            v114 = v69;
            v2 = objc_alloc_init(NRLinkDirectorMessageState);
            if (v2)
            {
LABEL_65:
              v88 = v2->_sequenceNum;
              v89 = v88;
              if (v88)
              {
                v90 = [(NSNumber *)v88 unsignedLongLongValue];
                if (v90 > sub_100029538(v66))
                {
                  v91 = v116[4];
                  v92 = _NRCopyLogObjectForNRUUID();
                  v93 = _NRLogIsLevelEnabled();

                  if (!v93)
                  {
                    v96 = v114;
                    goto LABEL_78;
                  }

                  v94 = v116[4];
                  v95 = _NRCopyLogObjectForNRUUID();
                  [v89 unsignedLongLongValue];

                  sub_100029538(v66);
                  _NRLogWithArgs();
                  v96 = v114;
                  goto LABEL_73;
                }
              }

              v96 = v114;
              objc_storeStrong(&v2->_sequenceNum, v114);
              v97 = 0;
LABEL_70:
              v98 = [NSNumber numberWithUnsignedLongLong:*(v66 + 7)];
              if ((v97 & 1) == 0)
              {
                objc_storeStrong(&v2->_localReceiveID, v98);
              }

              [v33 setObject:v2 forKeyedSubscript:v12];
              v99 = *(v6 + 4);
              v95 = *(v65 + 16);
              [v95 setObject:v33 forKeyedSubscript:v99];
LABEL_73:

              goto LABEL_78;
            }

LABEL_89:
            v89 = 0;
            v97 = 1;
            v96 = v114;
            goto LABEL_70;
          }
        }

        v42 = 0;
        v43 = a1[6] + v35;
        v44 = &gNRPacketLoggingEnabled;
        v45 = v43 + v33;
        v115 = v33;
        while (1)
        {
          if (*v44 == 1)
          {
            v60 = v116[4];
            v61 = _NRCopyLogObjectForNRUUID();
            v62 = _NRLogIsLevelEnabled();

            if (v62)
            {
              v63 = v116[4];
              v64 = _NRCopyLogObjectForNRUUID();
              _NRLogWithArgs();
            }
          }

          v49 = (v43 + v42);
          v50 = v49 + 3;
          if ((v49 + 3) > v45)
          {
            v75 = v116[4];
            v76 = _NRCopyLogObjectForNRUUID();
            v77 = _NRLogIsLevelEnabled();

            if (!v77)
            {
              goto LABEL_29;
            }

            goto LABEL_59;
          }

          v51 = *(v49 + 1);
          v52 = __rev16(v51);
          if (&v50[v52] > v45)
          {
            break;
          }

          if (*v49 == v117)
          {
            v33 = v44;
            v53 = v43;
            v54 = v32;
            v55 = v116[4];
            v56 = _NRCopyLogObjectForNRUUID();
            v57 = _NRLogIsLevelEnabled();

            if (v57)
            {
              v58 = v116[4];
              v59 = _NRCopyLogObjectForNRUUID();
              v111 = sub_1000292B4(v117);
              _NRLogWithArgs();
            }

            if (v51)
            {
              v46 = [[NSData alloc] initWithBytes:v50 length:v52];
            }

            else
            {
              v46 = +[NSData data];
            }

            v47 = v46;
            v32 = v54;
            [v54 addObject:v46];

            v43 = v53;
            v44 = v33;
            LODWORD(v33) = v115;
          }

          v48 = v42 + v52;
          v42 += v52 + 3;
          if ((v48 + 3) >= v33)
          {
            goto LABEL_45;
          }
        }

        v81 = v116[4];
        v82 = _NRCopyLogObjectForNRUUID();
        v83 = _NRLogIsLevelEnabled();

        if (v83)
        {
LABEL_59:
          v78 = v116[4];
          v79 = _NRCopyLogObjectForNRUUID();
          v80 = *v49;

          _NRLogWithArgs();
        }
      }

      else
      {
        v36 = *(v6 + 4);
        v37 = _NRCopyLogObjectForNRUUID();
        v38 = _NRLogIsLevelEnabled();

        if (v38)
        {
          v39 = *(v6 + 4);
          v40 = _NRCopyLogObjectForNRUUID();
          v41 = *(v6 + 4);

          _NRLogWithArgs();
        }
      }

LABEL_29:
      v26 = 0;
      v6 = v32;
LABEL_84:

      return v26;
    }

    v22 = a1[4];
    v23 = _NRCopyLogObjectForNRUUID();
    v24 = _NRLogIsLevelEnabled();

    if (v24)
    {
      v25 = a1[4];
      v6 = _NRCopyLogObjectForNRUUID();
      _NRLogWithArgs();
      v26 = 0;
      goto LABEL_84;
    }
  }

  return 0;
}