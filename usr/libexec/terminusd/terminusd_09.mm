void sub_1000C6C94(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, void *a6)
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v15 = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained && *(WeakRetained + 13) == 1 && *(WeakRetained + 19) == v15)
  {
    v16 = v15;
    v17 = v12;
    v18 = v10;
    v19 = WeakRetained;
    v20 = v11;
    nw_http_fields_access_value_by_name();

    v15 = v16;
  }
}

void sub_1000C6DF0(uint64_t a1, uint64_t a2, int a3)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = objc_loadWeakRetained((a1 + 40));
  if (!WeakRetained || *(WeakRetained + 13) != 1 || *(WeakRetained + 19) != v6)
  {
    goto LABEL_58;
  }

  switch(a3)
  {
    case 1:
      v7 = v6;
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

      v14 = nw_masque_server_copy_connection_group_with_identifier();
      if (!v14)
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
          v9 = 0;
        }

        else
        {
          v9 = 0;
        }

        goto LABEL_57;
      }

      v9 = v14;
      v15 = nw_connection_group_copy_parameters(v14);
      v16 = nw_protocol_copy_quic_stream_definition();
      v17 = nw_parameters_copy_protocol_options_for_definition();

      v18 = nw_quic_stream_copy_shared_connection_options();
      v19 = v18;
      if (v18)
      {
        v20 = nw_quic_copy_sec_protocol_options(v18);
        if (v20)
        {
          v21 = v20;
          sec_protocol_options_set_peer_authentication_required(v20, 1);
          if ([*(WeakRetained + 44) count])
          {
            [*(WeakRetained + 44) allValues];

            sec_protocol_options_set_client_raw_public_key_certificates();
          }

          nw_quic_connection_set_sec_protocol_options();
        }

        else
        {
          v22 = sub_1000B9544();
          IsLevelEnabled = _NRLogIsLevelEnabled();

          if (IsLevelEnabled)
          {
            v24 = sub_1000B9544();
            _NRLogWithArgs();
          }

          v21 = 0;
        }
      }

      else
      {
        if (qword_1002290F0 != -1)
        {
          dispatch_once(&qword_1002290F0, &stru_1001FB680);
        }

        if (!_NRLogIsLevelEnabled())
        {
          goto LABEL_56;
        }

        v21 = sub_1000B9544();
        _NRLogWithArgs();
      }

LABEL_56:
      goto LABEL_57;
    case 3:
      v7 = v6;
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

      v10 = *(WeakRetained + 21);
      v11 = [NSNumber numberWithUnsignedLongLong:a2];
      v12 = [v10 objectForKeyedSubscript:v11];

      if (v12)
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

      v13 = *(WeakRetained + 21);
      v9 = [NSNumber numberWithUnsignedLongLong:a2];
      [v13 setObject:0 forKeyedSubscript:v9];

      goto LABEL_57;
    case 2:
      v7 = v6;
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

      v6 = v7;
      if (!*(WeakRetained + 21))
      {
        v8 = objc_alloc_init(NSMutableDictionary);
        v9 = *(WeakRetained + 21);
        *(WeakRetained + 21) = v8;
LABEL_57:

        v6 = v7;
      }

      break;
  }

LABEL_58:
}

void sub_1000C73A0(uint64_t a1, char *__s)
{
  if (__s)
  {
    v4 = strlen(__s);
    v5 = dispatch_data_create(__s, v4, 0, 0);
    v6 = dispatch_data_create_with_transform();
    v68 = 0;
    v69 = &v68;
    v70 = 0x3032000000;
    v71 = sub_1000C4DAC;
    v72 = sub_1000C4DBC;
    v73 = objc_alloc_init(NSMutableArray);
    v60 = _NSConcreteStackBlock;
    v61 = 3221225472;
    v62 = sub_1000C7AE8;
    v63 = &unk_1001FB3B8;
    v64 = *(a1 + 32);
    v7 = *(a1 + 40);
    v8 = *(a1 + 64);
    v66 = &v68;
    v67 = v8;
    v65 = v7;
    NRTLVParse();
    if ([v69[5] count])
    {
      v9 = *(a1 + 48);
      if (v9)
      {
        v9 = v9[21];
      }

      v10 = v69[5];
      v11 = v9;
      v12 = [NSNumber numberWithUnsignedLongLong:*(a1 + 64)];
      [v11 setObject:v10 forKeyedSubscript:v12];

      v13 = v69[5];
    }

    else
    {
      v13 = 0;
    }

    _Block_object_dispose(&v68, 8);
  }

  else
  {
    v14 = *(a1 + 48);
    if (v14)
    {
      v14 = v14[21];
    }

    v15 = *(a1 + 64);
    v16 = v14;
    v17 = [NSNumber numberWithUnsignedLongLong:v15];
    v18 = [v16 objectForKeyedSubscript:v17];

    if (!v18)
    {
      v13 = 0;
LABEL_58:
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

        v55 = *(a1 + 64);
        v53 = *(a1 + 32);
        _NRLogWithArgs();
      }

      goto LABEL_64;
    }

    v19 = *(a1 + 48);
    if (v19)
    {
      v19 = v19[21];
    }

    v20 = *(a1 + 64);
    v21 = v19;
    v22 = [NSNumber numberWithUnsignedLongLong:v20];
    v13 = [v21 objectForKeyedSubscript:v22];

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

      v54 = *(a1 + 64);
      v52 = *(a1 + 32);
      v51 = 2314;
      v48 = "";
      v50 = "[NRLinkDirector startMASQUEProxyServerIfNeeded]_block_invoke_2";
      _NRLogWithArgs();
    }
  }

  if (!v13 || ![v13 count])
  {
    goto LABEL_58;
  }

  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v13 = v13;
  v23 = [v13 countByEnumeratingWithState:&v56 objects:v74 count:16];
  if (v23)
  {
    v24 = *v57;
    do
    {
      for (i = 0; i != v23; i = i + 1)
      {
        if (*v57 != v24)
        {
          objc_enumerationMutation(v13);
        }

        v26 = *(*(&v56 + 1) + 8 * i);
        if (v26 && *(v26 + 8) == 1)
        {
          v27 = *(v26 + 9);
          if (v27 == 52)
          {
            v34 = *(v26 + 16);
            v35 = v34 == 0;

            if (!v35)
            {
              v36 = [NSString alloc];
              v37 = *(v26 + 16);
              v32 = [v36 initWithData:v37 encoding:4];

              if (v32)
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

                  v51 = 2336;
                  *&v52 = v32;
                  v48 = "";
                  v50 = "[NRLinkDirector startMASQUEProxyServerIfNeeded]_block_invoke_2";
                  _NRLogWithArgs();
                }

                v38 = *(a1 + 56);
                [v32 UTF8String];
                nw_parameters_set_source_application_by_external_bundle_id();
              }

              goto LABEL_24;
            }
          }

          else if (v27 == 51)
          {
            v28 = *(v26 + 16);
            v29 = v28 == 0;

            if (!v29)
            {
              v30 = [NSString alloc];
              v31 = *(v26 + 16);
              v32 = [v30 initWithData:v31 encoding:4];

              if (v32)
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

                  v51 = 2328;
                  *&v52 = v32;
                  v48 = "";
                  v50 = "[NRLinkDirector startMASQUEProxyServerIfNeeded]_block_invoke_2";
                  _NRLogWithArgs();
                }

                v33 = *(a1 + 56);
                [v32 UTF8String];
                nw_parameters_set_account_id();
              }

LABEL_24:

              continue;
            }
          }
        }
      }

      v23 = [v13 countByEnumeratingWithState:&v56 objects:v74 count:16];
    }

    while (v23);
  }

  v39 = *(a1 + 48);
  if (v39)
  {
    v40 = *(v39 + 168);
  }

  else
  {
    v40 = 0;
  }

  if ([v40 count] >= 0x21)
  {
    v41 = [NSString alloc];
    v42 = *(a1 + 48);
    if (v42)
    {
      v43 = *(v42 + 168);
    }

    else
    {
      v43 = 0;
    }

    v49 = [v43 count];
    v44 = [v41 initWithFormat:@"unexpected number of cached tokens %u"];
    sub_10013C2A8(@"MASQUEProxyTokens", v44, 0, 0, 0, v45, v46, v47, v49);
  }

LABEL_64:
}

uint64_t sub_1000C7AE8(uint64_t a1, uint64_t a2)
{
  v4 = [[NSData alloc] initWithBytes:a2 + 3 length:bswap32(*(a2 + 1)) >> 16];
  v5 = v4;
  if (*a2 == 8)
  {
    v6 = v4;
    objc_opt_self();
    if ([v6 length])
    {
      v30 = 0;
      v31 = &v30;
      v32 = 0x2020000000;
      v33 = 0;
      v26 = 0;
      v27 = &v26;
      v28 = 0x2020000000;
      v29 = 0;
      v20 = 0;
      v21 = &v20;
      v22 = 0x3032000000;
      v23 = sub_10000930C;
      v24 = sub_10000931C;
      v25 = 0;
      v16 = 0;
      v17 = &v16;
      v18 = 0x2020000000;
      v19 = 50;
      NRTLVParse();
      if (v31[3])
      {
        v7 = 0;
      }

      else
      {
        v8 = [NRToken alloc];
        v7 = sub_100009074(&v8->super.isa, *(v27 + 24), *(v17 + 24), v21[5]);
      }

      _Block_object_dispose(&v16, 8);
      _Block_object_dispose(&v20, 8);

      _Block_object_dispose(&v26, 8);
      _Block_object_dispose(&v30, 8);

      if (v7 && *(v7 + 8))
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

          v15 = *(a1 + 56);
          v14 = *(a1 + 32);
          v12 = 2302;
          v13 = v7;
          v10 = "";
          v11 = "[NRLinkDirector startMASQUEProxyServerIfNeeded]_block_invoke";
          _NRLogWithArgs();
        }

        [*(*(*(a1 + 48) + 8) + 40) addObject:{v7, v10, v11, v12, v13, v14, v15}];
      }
    }

    else
    {

      v7 = 0;
    }
  }

  return 1;
}

void sub_1000C7DA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  _Block_object_dispose(&a25, 8);
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose((v29 - 112), 8);
  _Block_object_dispose((v29 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_1000C7DE8(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  if ((a2 - 1) <= 1)
  {
LABEL_2:
    v6 = *(a1 + 32);
    if (v6)
    {
      *(v6 + 14) = 0;
    }

    goto LABEL_20;
  }

  if (a2 != 3)
  {
    goto LABEL_20;
  }

  sub_1000BC1B0(*(a1 + 32));
  if (!v5 || nw_error_get_error_domain(v5) != nw_error_domain_posix || nw_error_get_error_code(v5) != 48)
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

    goto LABEL_2;
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    v8 = *(v7 + 14);
    if (v8 > 4)
    {
      v19 = sub_1000B9544();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      if (IsLevelEnabled)
      {
        v21 = sub_1000B9544();
        v22 = *(a1 + 32);
        if (v22)
        {
          v23 = *(v22 + 14);
        }

        _NRLogWithArgs();
      }

      goto LABEL_2;
    }

    *(v7 + 14) = v8 + 1;
  }

  v9 = sub_1000B9544();
  v10 = _NRLogIsLevelEnabled();

  if (v10)
  {
    v11 = sub_1000B9544();
    v12 = *(a1 + 32);
    if (v12)
    {
      v13 = *(v12 + 14);
    }

    _NRLogWithArgs();
  }

  v14 = *(a1 + 32);
  if (v14)
  {
    v15 = 200000000 * *(v14 + 14);
  }

  else
  {
    v15 = 0;
  }

  v16 = dispatch_time(0x8000000000000000, v15);
  v17 = *(a1 + 32);
  if (v17)
  {
    v18 = *(v17 + 136);
  }

  else
  {
    v18 = 0;
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000C8140;
  block[3] = &unk_1001FD3C8;
  block[4] = v17;
  dispatch_after(v16, v18, block);
LABEL_20:
}

void sub_1000C8050(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    if (*(WeakRetained + 22) == *(a1 + 32))
    {
      v4 = *(WeakRetained + 18);
      if (v4)
      {
        v5 = v4;
        v6 = v3[18];
        v7 = nw_shoes_server_fillout_statistics();

        if (v7)
        {
          v8 = objc_alloc_init(NRAnalyticsSHOESProxy);
          v9 = v3[23];
          v3[23] = v8;

          v10 = v3[23];
          if (v10 && (*(v10 + 24) = 0, (v11 = v3[23]) != 0))
          {
            *(v11 + 16) = 0;
            v12 = v3[23];
          }

          else
          {
            v12 = 0;
          }

          [v12 submit];
          v13 = v3[23];
          v3[23] = 0;
        }
      }
    }
  }
}

void sub_1000C8148(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained && *(WeakRetained + 13) == 1)
  {
    v2 = WeakRetained;
    sub_1000315B8(WeakRetained[5]);
    sub_100180590(v2[6]);
    WeakRetained = v2;
  }
}

void sub_1000C81A8(id a1)
{
  if (qword_1002290F0 != -1)
  {
    dispatch_once(&qword_1002290F0, &stru_1001FB680);
  }

  IsLevelEnabled = _NRLogIsLevelEnabled();
  if (IsLevelEnabled)
  {
    if (qword_1002290F0 != -1)
    {
      dispatch_once(&qword_1002290F0, &stru_1001FB680);
    }

    IsLevelEnabled = _NRLogWithArgs();
  }

  _NEHelperCacheClearUUIDs(IsLevelEnabled);
}

void sub_1000C826C(uint64_t a1)
{
  v2 = *(a1 + 344);
  *(a1 + 344) = 0;

  v3 = *(a1 + 104);
  *(a1 + 104) = 0;

  v4 = *(a1 + 120);
  if (v4 || (v4 = *(a1 + 112)) != 0)
  {
  }

  else
  {
    v6 = *(a1 + 128);
    if (!v6)
    {
      goto LABEL_7;
    }
  }

  objc_opt_self();
  if (qword_1002294C8 != -1)
  {
    dispatch_once(&qword_1002294C8, &stru_1001FD250);
  }

  v5 = qword_1002294C0;
  sub_100181D24(v5);

  v6 = *(a1 + 128);
LABEL_7:
  *(a1 + 128) = 0;

  v7 = *(a1 + 120);
  *(a1 + 120) = 0;

  v8 = *(a1 + 112);
  *(a1 + 112) = 0;
}

void sub_1000C8348(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = WeakRetained[17];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000C848C;
    block[3] = &unk_1001FD3C8;
    v8 = WeakRetained;
    dispatch_async(v6, block);
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

void sub_1000C848C(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    if (*(v1 + 13) == 1)
    {
      sub_1000BF70C(v1);
    }
  }
}

void sub_1000C84A8(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1 && *(v1 + 13) == 1)
  {
    v3 = *(v1 + 72);
    if (v3)
    {
      v4 = *(a1 + 32);
      if (v4)
      {
        v5 = *(v4 + 80);

        if (v5)
        {
          return;
        }
      }

      else
      {
      }
    }

    v6 = *(a1 + 32);

    sub_1000C899C(v6);
  }
}

void sub_1000C8520(uint64_t a1)
{
  if (!*(a1 + 64))
  {
    v5[7] = v1;
    v5[8] = v2;
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_1000C9534;
    v5[3] = &unk_1001FD3C8;
    v5[4] = a1;
    v3 = objc_retainBlock(v5);
    if (qword_100229238 != -1)
    {
      dispatch_once(&qword_100229238, &stru_1001FC340);
    }

    if (byte_100229230 == 1)
    {
      (v3[2])(v3);
    }

    else
    {
      objc_opt_self();
      if (qword_1002294C8 != -1)
      {
        dispatch_once(&qword_1002294C8, &stru_1001FD250);
      }

      v4 = qword_1002294C0;
      sub_1001816DC(v4, v3);
    }
  }
}

void sub_1000C8648(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (!v2 || *(v2 + 13) != 1)
  {
    return;
  }

  sub_1000C899C(v2);
  if (qword_100229238 != -1)
  {
    dispatch_once(&qword_100229238, &stru_1001FC340);
  }

  if (byte_100229230)
  {
    v14 = sub_1000B9544();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (!IsLevelEnabled)
    {
      return;
    }
  }

  else
  {
    objc_opt_self();
    if (objc_opt_class() && objc_opt_class())
    {
      v3 = [NRLinkManagerQuickRelay alloc];
      v4 = *(a1 + 32);
      if (v4)
      {
        v4 = v4[17];
      }

      v5 = v4;
      v6 = *(a1 + 32);
      queue = v5;
      v7 = v6;
      if (!v3)
      {
        goto LABEL_33;
      }

      if (queue)
      {
        dispatch_assert_queue_V2(queue);
        if (v7)
        {
          v27.receiver = v3;
          v27.super_class = NRLinkManagerQuickRelay;
          v8 = objc_msgSendSuper2(&v27, "initManagerWithQueue:managerDelegate:", queue, v7);
          if (v8)
          {
            v9 = v8;
            v8[8] = 4;
            v10 = objc_alloc_init(NSMutableSet);
            v11 = *(v9 + 5);
            *(v9 + 5) = v10;

            objc_storeWeak(v9 + 9, v7);
            [v9 reportEvent:2001];
            sub_1001224F8(v9);
            *(v9 + 3) = 1003;
            [v9 reportEvent:2002];
            v3 = v9;
            v12 = v3;
LABEL_15:

            v13 = *(a1 + 32);
            if (v13)
            {
              objc_storeStrong((v13 + 56), v12);
            }

            goto LABEL_18;
          }

          v23 = sub_10012141C();
          v24 = _NRLogIsLevelEnabled();

          if (v24)
          {
            v25 = sub_10012141C();
            _NRLogWithArgs();
          }

          v3 = 0;
LABEL_33:
          v12 = 0;
          goto LABEL_15;
        }

        v20 = sub_10012141C();
        v21 = _NRLogIsLevelEnabled();

        if (!v21)
        {
          goto LABEL_33;
        }
      }

      else
      {
        v18 = sub_10012141C();
        v19 = _NRLogIsLevelEnabled();

        if (!v19)
        {
          goto LABEL_33;
        }
      }

      v22 = sub_10012141C();
      _NRLogWithArgs();

      v12 = 0;
      goto LABEL_15;
    }

    v16 = sub_1000B9544();
    v17 = _NRLogIsLevelEnabled();

    if (!v17)
    {
      return;
    }
  }

  queue = sub_1000B9544();
  _NRLogWithArgs();
LABEL_18:
}

void sub_1000C899C(uint64_t a1)
{
  if (a1)
  {
    objc_opt_self();
    if (qword_100229238 != -1)
    {
      dispatch_once(&qword_100229238, &stru_1001FC340);
    }

    if ((byte_100229230 & 1) == 0 && qword_100229498 != -1)
    {
      dispatch_once(&qword_100229498, &stru_1001FD038);
    }

    if (byte_100229490 == 1)
    {
      if ((*(a1 + 18) & 1) == 0)
      {
        *(a1 + 18) = 1;

        sub_1000C8AE8(a1, 1);
      }
    }

    else
    {
      v2 = sub_1000B9544();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      if (IsLevelEnabled)
      {
        v4 = sub_1000B9544();
        _NRLogWithArgs();
      }
    }
  }
}

void sub_1000C8AE8(id *a1, int a2)
{
  v4 = [NRLinkManagerWiFi alloc];
  v5 = a1[17];
  v6 = a1;
  if (!v4)
  {
LABEL_43:
    v34 = 0;
    goto LABEL_30;
  }

  if (!v5)
  {
    v43 = sub_1001762F4();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v45 = sub_1001762F4();
      _NRLogWithArgs();

      v34 = 0;
      goto LABEL_30;
    }

    goto LABEL_43;
  }

  dispatch_assert_queue_V2(v5);
  v69.receiver = v4;
  v69.super_class = NRLinkManagerWiFi;
  v7 = objc_msgSendSuper2(&v69, "initManagerWithQueue:managerDelegate:", v5, v6);
  if (!v7)
  {
    v49 = sub_1001762F4();
    v50 = _NRLogIsLevelEnabled();

    if (v50)
    {
      v51 = sub_1001762F4();
      _NRLogWithArgs();
    }

    v4 = 0;
    goto LABEL_43;
  }

  v4 = v7;
  objc_storeWeak(&v7->_wifiManagerDelegate, v6);
  v4->super._type = 2;
  v8 = objc_alloc_init(NSMutableSet);
  links = v4->_links;
  v4->_links = v8;

  v10 = objc_alloc_init(NSMutableSet);
  wifiAutojoinClients = v4->_wifiAutojoinClients;
  v4->_wifiAutojoinClients = v10;

  v4->_avoidCompanionNotifyToken = -1;
  v12 = v4->super._queue;
  dispatch_assert_queue_V2(v12);

  if (v4->super._state == 1003)
  {
LABEL_29:
    v4 = v4;
    v34 = v4;
    goto LABEL_30;
  }

  [(NRLinkManager *)v4 reportEvent:2001];
  v13 = objc_alloc_init(CWFInterface);
  coreWiFiHandle = v4->_coreWiFiHandle;
  v4->_coreWiFiHandle = v13;

  v15 = v4->_coreWiFiHandle;
  v79[0] = _NSConcreteStackBlock;
  v79[1] = 3221225472;
  v79[2] = sub_10017AE1C;
  v79[3] = &unk_1001FD3C8;
  v16 = v15;
  v80 = v16;
  if (!sub_10017AE24(NRLinkManagerWiFi, v79))
  {
    v73 = 0;
    v74 = &v73;
    v75 = 0x3032000000;
    v76 = sub_10017AF00;
    v77 = sub_10017AF10;
    v78 = 0;
    v70[0] = _NSConcreteStackBlock;
    v70[1] = 3221225472;
    v70[2] = sub_10017AF18;
    v70[3] = &unk_1001FD128;
    v72 = &v73;
    v17 = v16;
    v71 = v17;
    if (sub_10017AE24(NRLinkManagerWiFi, v70))
    {
      v55 = sub_1001762F4();
      v56 = _NRLogIsLevelEnabled();

      if ((v56 & 1) == 0)
      {
        goto LABEL_27;
      }

      v31 = sub_1001762F4();
      v65 = 2202;
      Error = "";
      v64 = "[NRLinkManagerWiFi setupWiFiManager]";
      _NRLogWithArgs();
    }

    else if (v74[5])
    {
      v18 = [NRSCDInterfaceConfig alloc];
      v19 = sub_1000262B4(&v18->super.isa, v74[5], 0);
      wifiInterfaceConfig = v4->_wifiInterfaceConfig;
      v4->_wifiInterfaceConfig = v19;

      v21 = v4->_wifiInterfaceConfig;
      if (v21 && (interfaceIndex = v21->_interfaceIndex, v21, interfaceIndex))
      {
        context.version = 0;
        memset(&context.retain, 0, 24);
        context.info = v4;
        v23 = SCDynamicStoreCreate(kCFAllocatorDefault, @"NRLinkManagerWiFi", sub_10017E2B4, &context);
        v4->_scdynamicStoreRef = v23;
        if (v23)
        {
          if (SCDynamicStoreSetDisconnectCallBack())
          {
            scdKeyMIS = v4->_scdKeyMIS;
            v4->_scdKeyMIS = @"com.apple.MobileInternetSharing";

            scdynamicStoreRef = v4->_scdynamicStoreRef;
            v26 = v4->super._queue;
            LODWORD(scdynamicStoreRef) = SCDynamicStoreSetDispatchQueue(scdynamicStoreRef, v26);

            if (scdynamicStoreRef)
            {
              v27 = v4->super._queue;
              block[0] = _NSConcreteStackBlock;
              block[1] = 3221225472;
              block[2] = sub_10017AF64;
              block[3] = &unk_1001FD3C8;
              block[4] = v4;
              dispatch_async(v27, block);

              v4->super._state = 1003;
              [(NRLinkManager *)v4 reportEvent:2002];
              v28 = 1;
              goto LABEL_28;
            }

            v61 = sub_1001762F4();
            v62 = _NRLogIsLevelEnabled();

            if (!v62)
            {
LABEL_27:
              v28 = 0;
LABEL_28:

              _Block_object_dispose(&v73, 8);
              if (v28)
              {
                goto LABEL_29;
              }

              goto LABEL_47;
            }
          }

          else
          {
            v59 = sub_1001762F4();
            v60 = _NRLogIsLevelEnabled();

            if (!v60)
            {
              goto LABEL_27;
            }
          }
        }

        else
        {
          v57 = sub_1001762F4();
          v58 = _NRLogIsLevelEnabled();

          if (!v58)
          {
            goto LABEL_27;
          }
        }

        v31 = sub_1001762F4();
        Error = SCCopyLastError();
        _NRLogWithArgs();
      }

      else
      {
        if (qword_1002294A8 != -1)
        {
          dispatch_once(&qword_1002294A8, &stru_1001FD210);
        }

        v32 = qword_1002294A0;
        v33 = _NRLogIsLevelEnabled();

        if (!v33)
        {
          goto LABEL_27;
        }

        if (qword_1002294A8 != -1)
        {
          dispatch_once(&qword_1002294A8, &stru_1001FD210);
        }

        v31 = qword_1002294A0;
        Error = v74[5];
        _NRLogWithArgs();
      }
    }

    else
    {
      if (qword_1002294A8 != -1)
      {
        dispatch_once(&qword_1002294A8, &stru_1001FD210);
      }

      v29 = qword_1002294A0;
      v30 = _NRLogIsLevelEnabled();

      if (!v30)
      {
        goto LABEL_27;
      }

      if (qword_1002294A8 != -1)
      {
        dispatch_once(&qword_1002294A8, &stru_1001FD210);
      }

      v31 = qword_1002294A0;
      v65 = 2207;
      Error = "";
      v64 = "[NRLinkManagerWiFi setupWiFiManager]";
      _NRLogWithArgs();
    }

    goto LABEL_27;
  }

  v52 = sub_1001762F4();
  v53 = _NRLogIsLevelEnabled();

  if (v53)
  {
    v54 = sub_1001762F4();
    v65 = 2193;
    Error = "";
    v64 = "[NRLinkManagerWiFi setupWiFiManager]";
    _NRLogWithArgs();
  }

LABEL_47:
  [(NRLinkManagerWiFi *)v4 invalidateManager:Error];
  v34 = 0;
LABEL_30:

  v35 = v6[6];
  v6[6] = v34;

  v41 = v6[6];
  if (v41)
  {
    sub_100180590(v41);
    if (v6[32])
    {
      v42 = a1[17];
      v68[0] = _NSConcreteStackBlock;
      v68[1] = 3221225472;
      v68[2] = sub_1000C93D4;
      v68[3] = &unk_1001FD3C8;
      v68[4] = v6;
      dispatch_async(v42, v68);
    }
  }

  else
  {
    if ((2 * a2) >= 0x12C)
    {
      v46 = 300;
    }

    else
    {
      v46 = (2 * a2);
    }

    sub_1000B926C(v6, 1047, @"WiFi - Retry in %us (attempt: %u)", v36, v37, v38, v39, v40, v46);
    v47 = dispatch_time(0, 1000000000 * v46);
    v48 = a1[17];
    v66[0] = _NSConcreteStackBlock;
    v66[1] = 3221225472;
    v66[2] = sub_1000C950C;
    v66[3] = &unk_1001FB300;
    v66[4] = v6;
    v67 = a2;
    dispatch_after(v47, v48, v66);
  }
}

void sub_1000C93D4(uint64_t a1)
{
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v2 = *(a1 + 32);
  if (v2)
  {
    v2 = v2[32];
  }

  v3 = v2;
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

        (*(*(*(&v12 + 1) + 8 * v7) + 16))(*(*(&v12 + 1) + 8 * v7));
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  v8 = *(a1 + 32);
  if (v8)
  {
    v9 = *(v8 + 256);
  }

  else
  {
    v9 = 0;
  }

  [v9 removeAllObjects];
  v10 = *(a1 + 32);
  if (v10)
  {
    v11 = *(v10 + 256);
    *(v10 + 256) = 0;
  }
}

uint64_t sub_1000C950C(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    if (*(result + 13) == 1)
    {
      v3 = *(a1 + 40);
      return sub_1000C8AE8();
    }
  }

  return result;
}

void sub_1000C9534(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2 && *(v2 + 13) == 1)
  {
    v4 = [NRLinkManagerWired alloc];
    v5 = *(a1 + 32);
    if (v5)
    {
      v5 = v5[17];
    }

    v6 = v5;
    v7 = *(a1 + 32);
    v10 = v6;
    v8 = [NRLinkManagerWired initManagerWithQueue:v4 managerDelegate:"initManagerWithQueue:managerDelegate:"];
    v9 = *(a1 + 32);
    if (v9)
    {
      objc_storeStrong((v9 + 64), v8);
    }
  }
}

void sub_1000C95D8(uint64_t a1, void *a2)
{
  v19 = a2;
  if (a1)
  {
    v3 = sub_100003490();
    dispatch_assert_queue_V2(v3);

    if (v19)
    {
      v4 = *(a1 + 48);
      if (v4)
      {

        v5 = v19;
LABEL_14:
        v5[2]();
        goto LABEL_15;
      }

      objc_opt_self();
      if (qword_100229238 != -1)
      {
        dispatch_once(&qword_100229238, &stru_1001FC340);
      }

      v5 = v19;
      if ((byte_100229230 & 1) == 0 && qword_100229498 != -1)
      {
        dispatch_once(&qword_100229498, &stru_1001FD038);
        v5 = v19;
      }

      if ((byte_100229490 & 1) == 0)
      {
        goto LABEL_14;
      }

      v6 = *(a1 + 256);
      if (!v6)
      {
        v7 = objc_alloc_init(NSMutableArray);
        v8 = *(a1 + 256);
        *(a1 + 256) = v7;

        v6 = *(a1 + 256);
        if (!v6)
        {
          v14 = sub_1000B9544();
          IsLevelEnabled = _NRLogIsLevelEnabled();

          if (IsLevelEnabled)
          {
            v16 = sub_1000B9544();
            _NRLogWithArgs();
          }

          _os_log_pack_size();
          __chkstk_darwin();
          v17 = *__error();
          v18 = _os_log_pack_fill();
          *v18 = 136446210;
          *(v18 + 4) = "[NRLinkDirector runAfterWiFiManagerAvailable:]";
          sub_1000B9544();
          _NRLogAbortWithPack();
        }
      }

      v9 = v6;
      v10 = objc_retainBlock(v19);
      [v9 addObject:v10];
    }

    else
    {
      v11 = sub_1000B9544();
      v12 = _NRLogIsLevelEnabled();

      if (v12)
      {
        v13 = sub_1000B9544();
        _NRLogWithArgs();
      }
    }
  }

LABEL_15:
}

void sub_1000C987C(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 32);
  v7 = _NRCopyLogObjectForNRUUID();
  if (a2)
  {
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v9 = *(a1 + 32);
      v10 = _NRCopyLogObjectForNRUUID();
      _NRLogWithArgs();
    }

    sub_10017440C(NRDLocalDevice, 0, *(a1 + 32));
    v11 = *(a1 + 32);
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_1000C9A24;
    v16[3] = &unk_1001FCE00;
    v17 = v11;
    sub_100165208(NRDLocalDevice, v17, v16);
    (*(*(a1 + 40) + 16))(*(a1 + 40), 0, 0, v12);
  }

  else
  {
    v13 = _NRLogIsLevelEnabled();

    if (v13)
    {
      v14 = *(a1 + 32);
      v15 = _NRCopyLogObjectForNRUUID();
      _NRLogWithArgs();
    }

    (*(*(a1 + 40) + 16))(*(a1 + 40), 22, @"Already unpaired or bluetooth device not found");
  }
}

void sub_1000C9A24(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = _NRCopyLogObjectForNRUUID();
  IsLevelEnabled = _NRLogIsLevelEnabled();

  if (IsLevelEnabled)
  {
    v5 = _NRCopyLogObjectForNRUUID();
    v6 = *(a1 + 32);
    _NRLogWithArgs();
  }
}

void sub_1000C9AD4(uint64_t a1, int a2)
{
  if (a1)
  {
    v2 = a2;
    if (a2)
    {
      v4 = 10015;
    }

    else
    {
      v4 = 10016;
    }

    sub_1000059A8(0, v4, 0, 0);
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v5 = *(a1 + 224);
    v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v16;
      if (v2)
      {
        do
        {
          v9 = 0;
          do
          {
            if (*v16 != v8)
            {
              objc_enumerationMutation(v5);
            }

            v10 = [*(a1 + 224) objectForKeyedSubscript:{*(*(&v15 + 1) + 8 * v9), v15}];
            v11 = sub_1000F1BC0(v10, 4);

            if ([(dispatch_queue_t *)v11 state]== 1)
            {
              [(dispatch_queue_t *)v11 start];
            }

            v9 = v9 + 1;
          }

          while (v7 != v9);
          v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
        }

        while (v7);
      }

      else
      {
        do
        {
          v12 = 0;
          do
          {
            if (*v16 != v8)
            {
              objc_enumerationMutation(v5);
            }

            v13 = [*(a1 + 224) objectForKeyedSubscript:{*(*(&v15 + 1) + 8 * v12), v15}];
            v14 = sub_1000F1BC0(v13, 4);

            if ([(dispatch_queue_t *)v14 state]!= 8)
            {
              [(dispatch_queue_t *)v14 cancelWithReason:@"Disabled cloud link (via test command)"];
            }

            v12 = v12 + 1;
          }

          while (v7 != v12);
          v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
        }

        while (v7);
      }
    }
  }
}

void sub_1000C9CDC(uint64_t a1, int a2, void *a3, void *a4, void *a5)
{
  v16 = a3;
  v9 = a4;
  v10 = a5;
  if (a1)
  {
    if (a2)
    {
      if (v16 || v9 || v10)
      {
        sub_1000B7458(0, @"FixedInterfaceName", v16);
        sub_1000B7458(0, @"FixedInterfacePeerAddress", v9);
        sub_1000B7458(0, @"FixedInterfacePeerIDSDeviceID", v10);
        sub_1000B926C(a1, 1027, @"interface: %@, peer address: %@, peer IDSDeviceID: %@", v11, v12, v13, v14, v15, v16);
      }

      else
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

    else
    {
      sub_1000B76C8(0, @"FixedInterfaceName");
      sub_1000B76C8(0, @"FixedInterfacePeerAddress");
      sub_1000B76C8(0, @"FixedInterfacePeerIDSDeviceID");
      sub_1000059A8(0, 1028, 0, 0);
    }
  }
}

void sub_1000C9EA0(uint64_t a1, void *a2, void *a3)
{
  v16 = a2;
  v6 = a3;
  if (a1)
  {
    v7 = sub_100003490();
    dispatch_assert_queue_V2(v7);

    if (v16)
    {
      v8 = [*(a1 + 224) objectForKeyedSubscript:v6];
      if (v8)
      {
        v9 = v8;
        v10 = v16;
        dispatch_assert_queue_V2(*(v9 + 136));
        [*(v9 + 200) addObject:v10];
      }

      else
      {
        v11 = objc_alloc_init(NRDOrphanedConnection);
        p_isa = &v11->super.isa;
        if (v11)
        {
          objc_storeStrong(&v11->_nrUUID, a3);
          objc_storeStrong(p_isa + 2, a2);
        }

        [*(a1 + 232) addObject:p_isa];
        v13 = [p_isa description];
        sub_1000059A8(0, 1015, 0, v13);

        v9 = 0;
      }

      goto LABEL_8;
    }

    v14 = sub_1000B9544();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v9 = sub_1000B9544();
      _NRLogWithArgs();
LABEL_8:
    }
  }
}

void sub_1000CA014(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v4 = sub_100003490();
    dispatch_assert_queue_V2(v4);

    if (v3)
    {
      v29 = 0u;
      v30 = 0u;
      v27 = 0u;
      v28 = 0u;
      v5 = *(a1 + 224);
      v6 = [v5 countByEnumeratingWithState:&v27 objects:v32 count:16];
      if (v6)
      {
        v7 = v6;
        v8 = *v28;
        do
        {
          for (i = 0; i != v7; i = i + 1)
          {
            if (*v28 != v8)
            {
              objc_enumerationMutation(v5);
            }

            v10 = [*(a1 + 224) objectForKeyedSubscript:*(*(&v27 + 1) + 8 * i)];
            v11 = v3;
            if (v10)
            {
              dispatch_assert_queue_V2(*(v10 + 136));
              [*(v10 + 208) removeObject:v11];
              if (![*(v10 + 208) count])
              {
                sub_1001141F4(v10, 0);
              }
            }
          }

          v7 = [v5 countByEnumeratingWithState:&v27 objects:v32 count:16];
        }

        while (v7);
      }

      v12 = [*(a1 + 240) copy];
      v23 = 0u;
      v24 = 0u;
      v25 = 0u;
      v26 = 0u;
      v13 = v12;
      v14 = [v13 countByEnumeratingWithState:&v23 objects:v31 count:16];
      if (v14)
      {
        v15 = v14;
        v16 = *v24;
        do
        {
          for (j = 0; j != v15; j = j + 1)
          {
            if (*v24 != v16)
            {
              objc_enumerationMutation(v13);
            }

            v18 = *(*(&v23 + 1) + 8 * j);
            if (v18 && v18[2] == v3)
            {
              [*(a1 + 240) removeObject:*(*(&v23 + 1) + 8 * j)];
              v19 = [v18 description];
              sub_1000059A8(0, 1024, 0, v19);
            }
          }

          v15 = [v13 countByEnumeratingWithState:&v23 objects:v31 count:16];
        }

        while (v15);
      }
    }

    else
    {
      v20 = sub_1000B9544();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      if (IsLevelEnabled)
      {
        v22 = sub_1000B9544();
        _NRLogWithArgs();
      }
    }
  }
}

void sub_1000CA2C8(uint64_t a1, void *a2, void *a3, void *a4)
{
  v29 = a2;
  v7 = a3;
  v8 = a4;
  if (a1)
  {
    v9 = sub_100003490();
    dispatch_assert_queue_V2(v9);

    if (v7)
    {
      v10 = [*(a1 + 224) objectForKeyedSubscript:v8];
      if (!v10)
      {
        v22 = objc_alloc_init(NRDOrphanedConnection);
        p_isa = &v22->super.isa;
        if (v22)
        {
          objc_storeStrong(&v22->_nrUUID, a4);
          objc_storeStrong(p_isa + 2, a3);
        }

        [*(a1 + 240) addObject:p_isa];
        v24 = [p_isa description];
        sub_1000059A8(0, 1022, 0, v24);

        v11 = 0;
        goto LABEL_23;
      }

      v11 = v10;
      v12 = v29;
      v13 = v7;
      dispatch_assert_queue_V2(*(v11 + 136));
      v14 = *(v11 + 216);
      v15 = v12;
      v16 = v13;
      if (!v14)
      {
        goto LABEL_18;
      }

      v17 = *(v14 + 24);
      if (v17)
      {
        dispatch_assert_queue_V2(v17);
      }

      v18 = sub_100149B50(v16);
      v19 = [*(v14 + 32) objectForKeyedSubscript:v18];

      sub_100149998(v14, v15, v18);
      if ([v15 isNotEmpty])
      {
        pid = xpc_connection_get_pid(v16);
        if (pid < 1)
        {
LABEL_17:

LABEL_18:
          if ([v15 linkType] == 1)
          {
            if ([v15 isNotEmpty])
            {
              v26 = (*(v11 + 616) >> 1) & 1;
              v30[0] = _NSConcreteStackBlock;
              v30[1] = 3221225472;
              v30[2] = sub_1000F31AC;
              v30[3] = &unk_1001FBA98;
              v31 = v26;
              v30[4] = v11;
              sub_1000F06F8(v11, 1, v26, v30);
            }

            else
            {
              sub_1000F0D40(v11, *(v11 + 640));
            }
          }

          goto LABEL_23;
        }

        v21 = sub_10013CB6C(pid, 0);
        sub_100149788(v14, v21);
      }

      else
      {
        if (!v19)
        {
          goto LABEL_17;
        }

        v25 = xpc_connection_get_pid(v16);
        if (v25 < 1)
        {
          goto LABEL_17;
        }

        v21 = sub_10013CB6C(v25, 0);
        sub_100149890(v14, v21);
      }

      goto LABEL_17;
    }

    v27 = sub_1000B9544();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v11 = sub_1000B9544();
      _NRLogWithArgs();
LABEL_23:
    }
  }
}

void sub_1000CA5A8(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (a1)
  {
    if (v5)
    {
      v7 = sub_100163A30(NRDLocalDevice, v5);
      v8 = v7;
      if (v7)
      {
        v9 = *(v7 + 144);
      }

      else
      {
        v9 = 0;
      }

      v10 = v9;
      v11 = [v10 usesTLS];

      if (v11 != a2 && sub_100169428(v8))
      {
        *(a1 + 12) = 1;
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

          v12 = qword_1002290E8;
          if (v8)
          {
            v13 = v8[18];
          }

          else
          {
            v13 = 0;
          }

          v14 = v13;
          v26 = [v14 usesTLS];
          v27 = a2;
          v25 = 1878;
          v23 = "";
          v24 = "[NRLinkDirector updateCompanionAPLEnabled:nrUUID:]";
          _NRLogWithArgs();
        }

        v15 = *(a1 + 40);
        if (v15)
        {
          sub_10002F840(v15, 1, 0);
        }

        v16 = [*(a1 + 224) objectForKeyedSubscript:{v6, v23, v24, v25, v26, v27}];
        sub_100113628(v16);

        [*(a1 + 224) setObject:0 forKeyedSubscript:v6];
        sub_100172204(NRDLocalDevice, a2, v6);
        sub_10005674C();
        v17 = sub_10013F1F8(@"CompanionAPLToggle");
        v18 = dispatch_time(0, 3000000000);
        v19 = *(a1 + 136);
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_1000CA830;
        block[3] = &unk_1001FB300;
        v29 = v17;
        block[4] = a1;
        dispatch_after(v18, v19, block);
      }
    }

    else
    {
      v20 = sub_1000B9544();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      if (IsLevelEnabled)
      {
        v22 = sub_1000B9544();
        _NRLogWithArgs();
      }
    }
  }
}

void sub_1000CA830(uint64_t a1)
{
  if ((sub_10013F3BC(*(a1 + 40)) & 1) == 0)
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

  v2 = *(a1 + 32);
  if (v2)
  {
    *(v2 + 12) = 0;
    v3 = *(a1 + 32);
    if (v3)
    {
      if (v3[13] == 1)
      {

        sub_1000BC670(v3);
      }
    }
  }
}

void sub_1000CA918(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  if (a1)
  {
    v6 = *(a1 + 352);
    if (!v6)
    {
      v7 = objc_alloc_init(NSMutableDictionary);
      v8 = *(a1 + 352);
      *(a1 + 352) = v7;

      v6 = *(a1 + 352);
    }

    [v6 setObject:v9 forKeyedSubscript:v5];
  }
}

void sub_1000CA9A0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    if (v5)
    {
      v7 = objc_alloc_init(NRDEphemeralDevice);
      connection = v5[3];
      if (v7)
      {
        nrUUID = v7->super._nrUUID;
        v7->super._nrUUID = connection;

        v10 = v6;
        connection = v7->super._connection;
        v7->super._connection = v10;
      }

      [*(a1 + 248) addObject:v7];
      v11 = [(NRDEphemeralDevice *)v7 description];
      sub_1000059A8(0, 1041, 0, v11);

      goto LABEL_23;
    }

    if ([*(a1 + 248) count])
    {
      v12 = [*(a1 + 248) copy];
      v21 = 0u;
      v22 = 0u;
      v23 = 0u;
      v24 = 0u;
      v7 = v12;
      v13 = [(NRDEphemeralDevice *)v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
      if (!v13)
      {
LABEL_22:

        v5 = 0;
LABEL_23:

        goto LABEL_24;
      }

      v14 = v13;
      v15 = *v22;
LABEL_10:
      v16 = 0;
      while (1)
      {
        if (*v22 != v15)
        {
          objc_enumerationMutation(v7);
        }

        v18 = *(*(&v21 + 1) + 8 * v16);
        if (v18)
        {
          if (v18[2] == v6)
          {
            goto LABEL_18;
          }
        }

        else if (!v6)
        {
LABEL_18:
          [*(a1 + 248) removeObject:*(*(&v21 + 1) + 8 * v16)];
          v19 = [v18 description];
          sub_1000059A8(0, 1042, 0, v19);

          if (v18)
          {
            v17 = v18[1];
          }

          else
          {
            v17 = 0;
          }

          v20[0] = _NSConcreteStackBlock;
          v20[1] = 3221225472;
          v20[2] = sub_1000CAC20;
          v20[3] = &unk_1001FBF50;
          v20[4] = v18;
          sub_10016BD8C(NRDLocalDevice, v17, v20);
        }

        if (v14 == ++v16)
        {
          v14 = [(NRDEphemeralDevice *)v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
          if (!v14)
          {
            goto LABEL_22;
          }

          goto LABEL_10;
        }
      }
    }
  }

LABEL_24:
}

void sub_1000CAC20(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = a3;
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

    v4 = *(a1 + 32);
    if (v4)
    {
      v5 = *(v4 + 8);
    }

    v6 = qword_1002290E8;
    _NRLogWithArgs();
  }
}

void *sub_1000CAD2C(void *a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    objc_opt_self();
    if (objc_opt_class())
    {
      v4 = objc_opt_class() != 0;
    }

    else
    {
      v4 = 0;
    }

    v5 = qword_1002290E0;
    if (!v4 && !qword_1002290E0)
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

        v18 = 3622;
        v16 = "";
        v17 = "[NRLinkDirector copyIDSDeviceIDWithCompletion:]";
        _NRLogWithArgs();
      }

      v6 = [NSUUID UUID:v16];
      v7 = [v6 UUIDString];
      v8 = qword_1002290E0;
      qword_1002290E0 = v7;

      v5 = qword_1002290E0;
    }

    if (v5)
    {
      if (v3)
      {
        v3[2](v3);
        v5 = qword_1002290E0;
      }

      a1 = v5;
    }

    else
    {
      if (v3)
      {
        v9 = a1[45];
        if (!v9)
        {
          v10 = objc_alloc_init(NSMutableArray);
          v11 = a1[45];
          a1[45] = v10;

          v9 = a1[45];
        }

        v12 = v9;
        v13 = objc_retainBlock(v3);
        [v12 addObject:v13];
      }

      if ((*(a1 + 20) & 1) == 0)
      {
        *(a1 + 20) = 1;
        if (qword_1002292C0 != -1)
        {
          dispatch_once(&qword_1002292C0, &stru_1001FC4B0);
        }

        v14 = qword_1002292C8;
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_1000CAF98;
        block[3] = &unk_1001FD3C8;
        block[4] = a1;
        dispatch_async(v14, block);
      }

      a1 = 0;
    }
  }

  return a1;
}

void sub_1000CAF98(uint64_t a1)
{
  v2 = IDSCopyLocalDeviceUniqueID();
  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = *(v3 + 136);
  }

  else
  {
    v4 = 0;
  }

  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000CB040;
  v6[3] = &unk_1001FD060;
  v6[4] = v3;
  v7 = v2;
  v5 = v2;
  dispatch_async(v4, v6);
}

void sub_1000CB040(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    *(v2 + 20) = 0;
  }

  objc_storeStrong(&qword_1002290E0, *(a1 + 40));
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = *(a1 + 32);
  if (v3)
  {
    v3 = v3[45];
  }

  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        (*(*(*(&v11 + 1) + 8 * v8) + 16))(*(*(&v11 + 1) + 8 * v8));
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  v9 = *(a1 + 32);
  if (v9)
  {
    v10 = *(v9 + 360);
    *(v9 + 360) = 0;
  }
}

void sub_1000CB334(id a1)
{
  v1 = os_log_create("com.apple.networkrelay", "");
  v2 = qword_1002290F8;
  qword_1002290F8 = v1;

  _objc_release_x1(v1, v2);
}

id sub_1000CB9A8()
{
  if (qword_100229100 != -1)
  {
    dispatch_once(&qword_100229100, &stru_1001FB6C8);
  }

  v1 = qword_1002290F8;

  return v1;
}

void sub_1000CBEE4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v14 = 1;
    if (sysctlbyname("net.inet6.ip6.forwarding", 0, 0, &v14, 4uLL))
    {
      v2 = __error();
      v3 = *v2;
      if (strerror_r(*v2, __strerrbuf, 0x80uLL))
      {
        __strerrbuf[0] = 0;
      }

      if (qword_100229100 != -1)
      {
        dispatch_once(&qword_100229100, &stru_1001FB6C8);
      }

      if (_NRLogIsLevelEnabled())
      {
        if (qword_100229100 != -1)
        {
          dispatch_once(&qword_100229100, &stru_1001FB6C8);
        }

        v6 = v3;
        v8 = __strerrbuf;
        _NRLogWithArgs();
      }
    }

    ++WeakRetained[5];
    v4 = [WeakRetained instance];
    if (qword_100229100 != -1)
    {
      dispatch_once(&qword_100229100, &stru_1001FB6C8);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_100229100 != -1)
      {
        dispatch_once(&qword_100229100, &stru_1001FB6C8);
      }

      v12 = WeakRetained;
      v13 = WeakRetained[5];
      v10 = 716;
      v11 = v4;
      v7 = "";
      v9 = "[NRBabelInterface initWithInstance:]_block_invoke";
      _NRLogWithArgs();
    }

    v5 = bswap32(WeakRetained[5]);
    v15[0] = 134218282;
    v15[1] = 1540;
    v16 = HIWORD(v5);
    v17 = 28695;
    *__strerrbuf = v15;
    v19 = 12;
    [WeakRetained sendPacket:__strerrbuf iovLen:1 toAddr:{&xmmword_100196560, v7, v9, v10, v11, v12, v13}];
  }
}

void sub_1000CD6D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, id location)
{
  objc_destroyWeak((v40 + 32));
  objc_destroyWeak((v42 + 32));
  objc_destroyWeak((v41 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000CD718(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained readPackets];
}

void sub_1000CD758(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained readPackets];
}

void sub_1000CD798(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained handlePathUpdate:v3];
}

void sub_1000D0438(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained processPendingOutgoingPackets];
    WeakRetained = v2;
  }
}

void sub_1000D047C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained updateRXCostCheckTime:1 personal:0];
    WeakRetained = v2;
  }
}

void sub_1000D04C8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained updateRXCostCheckTime:1 personal:1];
    WeakRetained = v2;
  }
}

uint64_t sub_1000D0514(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v5 = WeakRetained;
    WeakRetained = [WeakRetained txcost];
    v2 = v5;
    if (WeakRetained != 0xFFFF)
    {
      if (qword_100229100 != -1)
      {
        dispatch_once(&qword_100229100, &stru_1001FB6C8);
      }

      WeakRetained = _NRLogIsLevelEnabled();
      v2 = v5;
      if (WeakRetained)
      {
        if (qword_100229100 != -1)
        {
          dispatch_once(&qword_100229100, &stru_1001FB6C8);
        }

        v3 = qword_1002290F8;
        [v5 txcost];
        _NRLogWithArgs();

        v2 = v5;
      }
    }
  }

  return _objc_release_x1(WeakRetained, v2);
}

void sub_1000D1EBC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000D1EE0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v8 = WeakRetained;
    if (qword_100229100 != -1)
    {
      dispatch_once(&qword_100229100, &stru_1001FB6C8);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_100229100 != -1)
      {
        dispatch_once(&qword_100229100, &stru_1001FB6C8);
      }

      v6 = 1977;
      v7 = v8;
      v4 = "";
      v5 = "[NRBabelSource setupGCTimer]_block_invoke";
      _NRLogWithArgs();
    }

    v2 = [v8 instance];
    v3 = [v2 sources];
    [v3 removeObject:v8];

    WeakRetained = v8;
  }
}

uint64_t sub_1000D2D9C(uint64_t a1)
{
  if (qword_100229100 != -1)
  {
    dispatch_once(&qword_100229100, &stru_1001FB6C8);
  }

  if (_NRLogIsLevelEnabled())
  {
    if (qword_100229100 != -1)
    {
      dispatch_once(&qword_100229100, &stru_1001FB6C8);
    }

    v6 = *(a1 + 32);
    v8 = *(a1 + 40);
    v4 = "[NRBabelRoute applyUsingSystem]_block_invoke";
    v5 = 2198;
    v3 = "";
    _NRLogWithArgs();
  }

  system([*(a1 + 40) UTF8String]);
  if (qword_100229100 != -1)
  {
    dispatch_once(&qword_100229100, &stru_1001FB6C8);
  }

  result = _NRLogIsLevelEnabled();
  if (result)
  {
    if (qword_100229100 != -1)
    {
      dispatch_once(&qword_100229100, &stru_1001FB6C8);
    }

    v7 = *(a1 + 32);
    return _NRLogWithArgs();
  }

  return result;
}

void sub_1000D34F0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 112));
  _Unwind_Resume(a1);
}

void sub_1000D3518(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v8 = WeakRetained;
    if ([WeakRetained metric] == 0xFFFF)
    {
      if (qword_100229100 != -1)
      {
        dispatch_once(&qword_100229100, &stru_1001FB6C8);
      }

      if (_NRLogIsLevelEnabled())
      {
        if (qword_100229100 != -1)
        {
          dispatch_once(&qword_100229100, &stru_1001FB6C8);
        }

        v6 = 2085;
        v7 = v8;
        v4 = "";
        v5 = "[NRBabelRoute initWithPrefix:neighbor:routerID:seqno:interval:receivedMetric:nextHop:instance:]_block_invoke";
        _NRLogWithArgs();
      }

      v2 = [v8 instance];
      v3 = [v2 routes];
      [v3 removeObject:v8];
    }

    else
    {
      if (qword_100229100 != -1)
      {
        dispatch_once(&qword_100229100, &stru_1001FB6C8);
      }

      if (_NRLogIsLevelEnabled())
      {
        if (qword_100229100 != -1)
        {
          dispatch_once(&qword_100229100, &stru_1001FB6C8);
        }

        v6 = 2081;
        v7 = v8;
        v4 = "";
        v5 = "[NRBabelRoute initWithPrefix:neighbor:routerID:seqno:interval:receivedMetric:nextHop:instance:]_block_invoke";
        _NRLogWithArgs();
      }

      [v8 setNumExpiryTimerFires:{(objc_msgSend(v8, "numExpiryTimerFires", v4, v5, v6, v7) + 1)}];
      [v8 resetExpiryTimer];
    }

    WeakRetained = v8;
  }
}

uint64_t sub_1000D4398(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v6 = WeakRetained;
    WeakRetained = [*(a1 + 32) cancelIfRouteUnselected];
    v3 = v6;
    if ((WeakRetained & 1) == 0)
    {
      v4 = v6[6];
      if (v4 < 1)
      {
        WeakRetained = [v6 cancelWithDelay:v4 == 0];
        v3 = v6;
      }

      else
      {
        WeakRetained = [v6 sendSeqnoReq];
        v3 = v6;
        --v6[6];
      }
    }
  }

  return _objc_release_x1(WeakRetained, v3);
}

uint64_t sub_1000D61D4(_BYTE *a1, int a2)
{
  if (!a1)
  {
    v6 = sub_1000CB9A8();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v8 = sub_1000CB9A8();
      _NRLogWithArgs();
    }

    return 0;
  }

  if (!a2)
  {
    return 0;
  }

  v2 = a1;
  v3 = &a1[a2];
  while (1)
  {
    if (!*v2)
    {
      ++v2;
      goto LABEL_5;
    }

    if ((*v2 & 0x80) != 0)
    {
      break;
    }

    if ((v2 + 1) >= v3)
    {
      if (qword_100229100 != -1)
      {
        dispatch_once(&qword_100229100, &stru_1001FB6C8);
      }

      if (_NRLogIsLevelEnabled())
      {
        if (qword_100229100 != -1)
        {
          goto LABEL_36;
        }

        goto LABEL_30;
      }

      return 1;
    }

    v2 += v2[1] + 2;
    if (v2 > v3)
    {
      if (qword_100229100 != -1)
      {
        dispatch_once(&qword_100229100, &stru_1001FB6C8);
      }

      if (_NRLogIsLevelEnabled())
      {
        if (qword_100229100 == -1)
        {
          goto LABEL_30;
        }

LABEL_36:
        dispatch_once(&qword_100229100, &stru_1001FB6C8);
LABEL_30:
        _NRLogWithArgs();
      }

      return 1;
    }

    if (qword_100229100 != -1)
    {
      dispatch_once(&qword_100229100, &stru_1001FB6C8);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_100229100 != -1)
      {
        dispatch_once(&qword_100229100, &stru_1001FB6C8);
      }

      _NRLogWithArgs();
    }

LABEL_5:
    if (v2 >= v3)
    {
      return 0;
    }
  }

  if (qword_100229100 != -1)
  {
    dispatch_once(&qword_100229100, &stru_1001FB6C8);
  }

  v4 = _NRLogIsLevelEnabled();
  result = 1;
  if (v4)
  {
    if (qword_100229100 != -1)
    {
      goto LABEL_36;
    }

    goto LABEL_30;
  }

  return result;
}

uint64_t sub_1000D64B4(void *a1, int a2, void *__src, unsigned int a4, unsigned int a5, uint64_t a6, _BYTE *a7)
{
  if (!a2)
  {
    *a1 = 0;
    a1[1] = 0;
    return 0;
  }

  if (a7 && *a7 >= 0x81u)
  {
    if (qword_100229100 != -1)
    {
      dispatch_once(&qword_100229100, &stru_1001FB6C8);
    }

    if (!_NRLogIsLevelEnabled())
    {
      return 0xFFFFFFFFLL;
    }

    if (qword_100229100 != -1)
    {
      dispatch_once(&qword_100229100, &stru_1001FB6C8);
    }

    v32 = *a7;
    goto LABEL_37;
  }

  if (a5 && !a6)
  {
    if (qword_100229100 != -1)
    {
      dispatch_once(&qword_100229100, &stru_1001FB6C8);
    }

    if (!_NRLogIsLevelEnabled())
    {
      return 0xFFFFFFFFLL;
    }

    if (qword_100229100 != -1)
    {
      dispatch_once(&qword_100229100, &stru_1001FB6C8);
    }

    goto LABEL_37;
  }

  v34 = 0uLL;
  if (a2 != 1)
  {
    if (a2 == 2)
    {
      v14 = 128;
      v13 = &v34;
      if (!a7)
      {
        goto LABEL_31;
      }
    }

    else
    {
      if (a2 != 3)
      {
        if (qword_100229100 != -1)
        {
          dispatch_once(&qword_100229100, &stru_1001FB6C8);
        }

        if (_NRLogIsLevelEnabled())
        {
          v29 = sub_1000CB9A8();
          _NRLogWithArgs();
        }

        return 0xFFFFFFFFLL;
      }

      LOWORD(v34) = -32514;
      v13 = &v34 + 8;
      v14 = 64;
      if (!a7)
      {
        goto LABEL_31;
      }
    }

LABEL_30:
    v14 = *a7;
    goto LABEL_31;
  }

  if (a7 && *a7 >= 0x21u)
  {
    if (qword_100229100 != -1)
    {
      dispatch_once(&qword_100229100, &stru_1001FB6C8);
    }

    if (!_NRLogIsLevelEnabled())
    {
      return 0xFFFFFFFFLL;
    }

    v12 = sub_1000CB9A8();
    v33 = *a7;
    goto LABEL_69;
  }

  WORD5(v34) = -1;
  v13 = &v34 + 12;
  v14 = 32;
  if (a7)
  {
    goto LABEL_30;
  }

LABEL_31:
  v15 = v14 >> 3;
  if (v14 >> 3 >= a5)
  {
    v17 = v14 & 7;
    if (v15 > a5)
    {
      if (!__src)
      {
        v30 = sub_1000CB9A8();
        IsLevelEnabled = _NRLogIsLevelEnabled();

        if (!IsLevelEnabled)
        {
          return 0xFFFFFFFFLL;
        }

LABEL_68:
        v12 = sub_1000CB9A8();
LABEL_69:
        _NRLogWithArgs();

        return 0xFFFFFFFFLL;
      }

      if ((v14 & 7) != 0)
      {
        v18 = (v14 >> 3) - a5 + 1;
      }

      else
      {
        v18 = v15 - a5;
      }

      if (a4 < v18)
      {
        v19 = sub_1000CB9A8();
        v20 = _NRLogIsLevelEnabled();

        if (!v20)
        {
          return 0xFFFFFFFFLL;
        }

        goto LABEL_68;
      }
    }

    v22 = __src;
    if (a5)
    {
      v23 = a1;
      v24 = a4;
      __memcpy_chk();
      __src = v22;
      a4 = v24;
      a1 = v23;
    }

    v25 = &v13[a5];
    if (v15 <= a5)
    {
      v26 = 0;
    }

    else
    {
      v26 = v15 - a5;
      v27 = a1;
      v28 = a4;
      memcpy(v25, __src, (v15 - a5));
      a4 = v28;
      a1 = v27;
    }

    if (v17)
    {
      v25[v15] = *(v22 + (v15 - a5)) & (-1 << (8 - v17));
      ++v26;
    }

    if (a2 == 1 && a7)
    {
      *a7 += 96;
    }

    *a1 = v34;
    if (v26 > a4)
    {
      return 0xFFFFFFFFLL;
    }

    else
    {
      return v26;
    }
  }

  if (qword_100229100 != -1)
  {
    dispatch_once(&qword_100229100, &stru_1001FB6C8);
  }

  if (!_NRLogIsLevelEnabled())
  {
    return 0xFFFFFFFFLL;
  }

  if (qword_100229100 != -1)
  {
    dispatch_once(&qword_100229100, &stru_1001FB6C8);
  }

LABEL_37:
  _NRLogWithArgs();
  return 0xFFFFFFFFLL;
}

void sub_1000DA668(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 24);
  v5 = 65021;
  v6 = v2;
  v3 = [[NRBabelPrefix alloc] initWithPrefix:&v5 plen:128];
  v4 = [NRBabelSourceLocal alloc];

  [*(a1 + 32) setupAddress:&v5];
  [*(a1 + 32) setupInterfaces];
}

void sub_1000DB100(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 56));
  _Unwind_Resume(a1);
}

void sub_1000DB124(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained handleIfBringupPathUpdate:v3];
}

void sub_1000DBBDC(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 48);
  v4 = *(a1 + 40);
  v6 = v2;
  v5 = [v3 instance];
  [v5 handlePacket:objc_msgSend(v6 length:"bytes") remoteAddr:*(a1 + 64) localAddr:objc_msgSend(v4 babelInterface:"localAddress") dtls:{*(a1 + 56), *(a1 + 48), 0}];
}

void sub_1000DBF48(uint64_t a1)
{
  v2 = [*(a1 + 32) interfaces];
  [v2 addObject:*(a1 + 40)];

  v3 = [*(a1 + 48) fakeInterfaces];
  [v3 addObject:*(a1 + 40)];
}

void sub_1000DD27C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 64));
  _Unwind_Resume(a1);
}

void sub_1000DD2A0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    if (WeakRetained[248] == 1)
    {
      [WeakRetained upgradeSessionsIfNeeded];
    }

    else
    {
      [WeakRetained setupIPsecIfNecessary:3];
    }

    WeakRetained = v2;
  }
}

void sub_1000DD6BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000DD6E0(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v15 = WeakRetained;
    v5 = WeakRetained[4];
    v6 = _NRCopyLogObjectForNRUUID();
    if (!a2)
    {
      IsLevelEnabled = _NRLogIsLevelEnabled();

      WeakRetained = v15;
      if (!IsLevelEnabled)
      {
        goto LABEL_10;
      }

      v11 = v15[4];
      v12 = _NRCopyLogObjectForNRUUID();
      v14 = [v15 copyDescription];
      _NRLogWithArgs();

      goto LABEL_9;
    }

    v7 = _NRLogIsLevelEnabled();

    if (v7)
    {
      v8 = v15[4];
      v9 = _NRCopyLogObjectForNRUUID();
      v13 = [v15 copyDescription];
      _NRLogWithArgs();
    }

    WeakRetained = v15;
    if (*(a1 + 40) == 1)
    {
      [v15 setSentLocalClassCUnlockNotify:1];
      [v15 upgradeSessionsIfNeeded];
LABEL_9:
      WeakRetained = v15;
    }
  }

LABEL_10:
}

void sub_1000DD968(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_1000DD98C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained && WeakRetained[16] != 255 && *(WeakRetained + 279))
  {
    objc_initWeak(&location, WeakRetained);
    v3 = *(v2 + 279);
    v4 = sub_100147A80();
    v10 = v4;
    v5 = [NSArray arrayWithObjects:&v10 count:1];
    v6 = [v2 queue];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1000DDB18;
    v7[3] = &unk_1001FC018;
    objc_copyWeak(&v8, &location);
    [v3 sendPrivateNotifies:v5 maxRetries:10 retryIntervalInMilliseconds:1000 callbackQueue:v6 callback:v7];

    objc_destroyWeak(&v8);
    objc_destroyWeak(&location);
  }
}

void sub_1000DDAEC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000DDB18(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v17 = WeakRetained;
    v4 = WeakRetained[4];
    v5 = _NRCopyLogObjectForNRUUID();
    if (a2)
    {
      IsLevelEnabled = _NRLogIsLevelEnabled();

      if (IsLevelEnabled)
      {
        v7 = v17[4];
        v8 = _NRCopyLogObjectForNRUUID();
        v14 = 1012;
        v15 = [v17 copyDescription];
        v12 = "";
        v13 = "[NRLinkWired sendClassCUnlockedNotify]_block_invoke_2";
        _NRLogWithArgs();
      }

      [v17 setSentLocalClassCUnlockNotify:{1, v12, v13, v14, v15}];
      [v17 upgradeSessionsIfNeeded];
    }

    else
    {
      v9 = _NRLogIsLevelEnabled();

      WeakRetained = v17;
      if (!v9)
      {
        goto LABEL_9;
      }

      v10 = v17[4];
      v11 = _NRCopyLogObjectForNRUUID();
      v16 = [v17 copyDescription];
      _NRLogWithArgs();
    }

    WeakRetained = v17;
  }

LABEL_9:
}

void sub_1000DDE1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000DDE40(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained && [WeakRetained state] != 255)
  {
    if (v3)
    {
      v6 = [v5 ikeSessionClassD];
      v7 = [v5 ikeSessionClassC];

      if (v7)
      {
        v8 = [v5 ikeSessionClassC];

        v6 = v8;
      }

      v9 = [v3 dataUsingEncoding:4];
      v10 = [[NEIKEv2PrivateNotify alloc] initWithNotifyStatus:48607 notifyData:v9];
      v11 = v5[4];
      v12 = _NRCopyLogObjectForNRUUID();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      if (IsLevelEnabled)
      {
        v14 = v5[4];
        v15 = _NRCopyLogObjectForNRUUID();
        v25 = 950;
        v26 = [v5 copyDescription];
        v23 = "";
        v24 = "[NRLinkWired getOrSendIDSDeviceID]_block_invoke";
        _NRLogWithArgs();
      }

      v30 = v10;
      v16 = [NSArray arrayWithObjects:&v30 count:1, v23, v24, v25, v26];
      v17 = [v5 queue];
      v28[0] = _NSConcreteStackBlock;
      v28[1] = 3221225472;
      v28[2] = sub_1000DE110;
      v28[3] = &unk_1001FC018;
      objc_copyWeak(&v29, (a1 + 32));
      [v6 sendPrivateNotifies:v16 maxRetries:10 retryIntervalInMilliseconds:1000 callbackQueue:v17 callback:v28];

      objc_destroyWeak(&v29);
    }

    else
    {
      v18 = v5[4];
      v19 = _NRCopyLogObjectForNRUUID();
      v20 = _NRLogIsLevelEnabled();

      if (v20)
      {
        v21 = v5[4];
        v22 = _NRCopyLogObjectForNRUUID();
        v27 = [v5 copyDescription];
        _NRLogWithArgs();
      }
    }
  }
}

void sub_1000DE110(uint64_t a1, int a2)
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

void sub_1000DE43C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id sub_1000DE468()
{
  if (qword_100229110 != -1)
  {
    dispatch_once(&qword_100229110, &stru_1001FB948);
  }

  v1 = qword_100229108;

  return v1;
}

void sub_1000DE4BC(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v12 = WeakRetained;
    v4 = [WeakRetained state] == 255;
    WeakRetained = v12;
    if (!v4)
    {
      v5 = v12[4];
      v6 = _NRCopyLogObjectForNRUUID();
      if (a2)
      {
        IsLevelEnabled = _NRLogIsLevelEnabled();

        WeakRetained = v12;
        if (!IsLevelEnabled)
        {
          goto LABEL_8;
        }
      }

      else
      {
        v8 = _NRLogIsLevelEnabled();

        WeakRetained = v12;
        if (!v8)
        {
          goto LABEL_8;
        }
      }

      v9 = v12[4];
      v10 = _NRCopyLogObjectForNRUUID();
      v11 = [v12 copyDescription];
      _NRLogWithArgs();

      WeakRetained = v12;
    }
  }

LABEL_8:
}

void sub_1000DE5F0(id a1)
{
  v1 = os_log_create("com.apple.networkrelay", "");
  v2 = qword_100229108;
  qword_100229108 = v1;

  _objc_release_x1(v1, v2);
}

void sub_1000DF310(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v3 = [WeakRetained state] == 255;
    WeakRetained = v4;
    if (!v3)
    {
      [v4 setupIPsecIfNecessary:*(a1 + 40)];
      WeakRetained = v4;
    }
  }
}

void sub_1000DFE7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, id a50)
{
  objc_destroyWeak((v52 + 48));
  objc_destroyWeak((v51 + 48));
  objc_destroyWeak((v50 + 48));
  objc_destroyWeak((v53 + 48));
  objc_destroyWeak(&a50);
  objc_destroyWeak((v54 - 192));
  objc_destroyWeak((v54 - 128));
  objc_destroyWeak((v54 - 112));
  _Unwind_Resume(a1);
}

void sub_1000DFF08(uint64_t a1, uint64_t a2, void *a3)
{
  v86 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v6 = WeakRetained;
  if (WeakRetained)
  {
    v7 = [WeakRetained linkDelegate];
    v8 = v86;
    if (v86)
    {
      v9 = *(a1 + 56);
      if (v9 == 4 || v9 == 3 && ([v6 setIkeClassCEstablished:0], v10 = objc_msgSend(v6, "onlyAllowClassC"), v8 = v86, v10))
      {
        [v6 setIkeClassDEstablished:{0, v8}];
        v8 = v86;
      }

      [v6 processIKEDisconnection:*(a1 + 56) error:v8];
      if ([v6 state] == 255)
      {
        goto LABEL_10;
      }

      v11 = *(a1 + 32);
      v12 = *(a1 + 40);
      SessionStateString = NEIKEv2CreateSessionStateString();
      [v6 reportEvent:3018 detailsFormat:@"%@ session %@ got IKE error %@ with state %@", v11, v12, v86, SessionStateString];

      goto LABEL_9;
    }

    v14 = *(a1 + 32);
    v15 = *(a1 + 40);
    v16 = NEIKEv2CreateSessionStateString();
    [v6 reportEvent:3009 detailsFormat:@"%@ session %@ changed state to %@", v14, v15, v16];

    if (a2 > 2)
    {
      if (a2 == 3)
      {
        v38 = *(a1 + 56);
        if (v38 == 4 || v38 == 3 && ([v6 setIkeClassCEstablished:0], objc_msgSend(v6, "onlyAllowClassC")))
        {
          [v6 setIkeClassDEstablished:0];
        }

        [v6 reportEvent:3018 detailsFormat:@"%@ session %@ cancelled by peer", *(a1 + 32), *(a1 + 40)];
LABEL_9:
        [v6 restartIKESessionForDataProtectionClass:*(a1 + 56)];
LABEL_10:

        goto LABEL_11;
      }

      if (a2 == 4)
      {
        [v6 cancelWithReason:{@"%@ session %@ got unexpected MOBIKE state", *(a1 + 32), *(a1 + 40)}];
        goto LABEL_10;
      }
    }

    else
    {
      if (a2 == 1)
      {
        if ([v6 state] == 1)
        {
          v32 = v6[4];
          v33 = _NRCopyLogObjectForNRUUID();
          IsLevelEnabled = _NRLogIsLevelEnabled();

          if (IsLevelEnabled)
          {
            v35 = v6[4];
            v36 = _NRCopyLogObjectForNRUUID();
            v37 = [v6 copyDescription];
            v82 = *(a1 + 32);
            v84 = *(a1 + 40);
            v78 = 440;
            v80 = v37;
            v72 = "";
            v75 = "[NRLinkWired setupIKECallbacks:]_block_invoke";
            _NRLogWithArgs();
          }

          [v6 changeStateTo:{5, v72, v75, v78, v80, v82, v84}];
          goto LABEL_10;
        }

        v59 = [v6 state];
        v60 = v6[4];
        v61 = _NRCopyLogObjectForNRUUID();
        if (v59 == 5)
        {
          v62 = _NRLogIsLevelEnabled();

          if (!v62)
          {
            goto LABEL_10;
          }
        }

        else
        {
          v63 = _NRLogIsLevelEnabled();

          if (!v63)
          {
            goto LABEL_10;
          }
        }

        v64 = v6[4];
        v65 = _NRCopyLogObjectForNRUUID();
        v66 = [v6 copyDescription];
        v83 = *(a1 + 32);
        v85 = *(a1 + 40);
        _NRLogWithArgs();

        goto LABEL_10;
      }

      if (a2 == 2)
      {
        v17 = v6[4];
        v18 = _NRCopyLogObjectForNRUUID();
        v19 = _NRLogIsLevelEnabled();

        if (v19)
        {
          v20 = v6[4];
          v21 = _NRCopyLogObjectForNRUUID();
          v22 = [v6 copyDescription];
          v82 = *(a1 + 32);
          v84 = *(a1 + 40);
          v78 = 448;
          v80 = v22;
          v72 = "";
          v75 = "[NRLinkWired setupIKECallbacks:]_block_invoke";
          _NRLogWithArgs();
        }

        v23 = *(a1 + 56);
        if (v23 == 4 || v23 == 3 && ([v6 setIkeClassCEstablished:1], objc_msgSend(v6, "onlyAllowClassC")))
        {
          [v6 setIkeClassDEstablished:{1, v72, v75, v78, v80, v82, v84}];
        }

        if ([v6 state] == 8)
        {
          v24 = v6[4];
          v25 = _NRCopyLogObjectForNRUUID();
          v26 = _NRLogIsLevelEnabled();

          if (v26)
          {
            v27 = v6[4];
            v28 = _NRCopyLogObjectForNRUUID();
            v29 = [v6 copyDescription];
            v82 = *(a1 + 32);
            v84 = *(a1 + 40);
            v78 = 459;
            v80 = v29;
            v73 = "";
            v76 = "[NRLinkWired setupIKECallbacks:]_block_invoke";
            _NRLogWithArgs();
          }

          [v7 linkIsReady:{v6, v73, v76, v78, v80, v82, v84}];
        }

        else
        {
          if ([v6 state] != 5)
          {
            v39 = v6[4];
            v40 = _NRCopyLogObjectForNRUUID();
            v41 = _NRLogIsLevelEnabled();

            if (v41)
            {
              v42 = v6[4];
              v43 = _NRCopyLogObjectForNRUUID();
              v44 = [v6 copyDescription];
              v82 = *(a1 + 32);
              v84 = *(a1 + 40);
              v78 = 463;
              v80 = v44;
              v73 = "";
              v76 = "[NRLinkWired setupIKECallbacks:]_block_invoke";
              _NRLogWithArgs();
            }
          }

          [v6 changeStateTo:{8, v73, v76, v78, v80, v82, v84}];
          [v7 linkIsReady:v6];
          if ([v6 shouldCreateCompanionProxyAgent])
          {
            v45 = [v6 companionProxyAgent];

            if (!v45)
            {
              [v6 virtualInterface];
              v46 = NEVirtualInterfaceCopyName();
              v47 = [v6 nrUUID];
              v48 = sub_100163A30(NRDLocalDevice, v47);
              v49 = v48;
              if (v48)
              {
                v50 = *(v48 + 128);
              }

              else
              {
                v50 = 0;
              }

              v51 = v50;

              if (v46 && v51)
              {
                v52 = [NRCompanionProxyAgent alloc];
                v53 = [v6 queue];
                v54 = [v6 nrUUID];
                v55 = sub_100070A9C(&v52->super.isa, v53, v46, v51, v54);
                v56 = v6[11];
                v6[11] = v55;

                [v6 reportEvent:12001];
              }
            }

            v57 = [v6 companionProxyAgent];
            v58 = sub_100070DD8(v57, v6);

            if (v58)
            {
              [v6 reportEvent:12002];
            }

            else
            {
              v67 = v6[4];
              v68 = _NRCopyLogObjectForNRUUID();
              v69 = _NRLogIsLevelEnabled();

              if (v69)
              {
                v70 = v6[4];
                v71 = _NRCopyLogObjectForNRUUID();
                v79 = 480;
                v81 = [v6 copyDescription];
                v74 = "";
                v77 = "[NRLinkWired setupIKECallbacks:]_block_invoke";
                _NRLogWithArgs();
              }
            }
          }
        }

        [v6 sendNotifyPayload];
        if ([v6 needsToSendLocalClassCUnlockNotify])
        {
          [v6 sendClassCUnlockedNotify];
        }

        goto LABEL_10;
      }
    }

    v30 = *(a1 + 32);
    v31 = NEIKEv2CreateSessionStateString();
    [v6 cancelWithReason:{@"%@ session %@ got bad IKE state %@", v30, v31}];

    goto LABEL_10;
  }

LABEL_11:
}

void sub_1000E065C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
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

      [WeakRetained processIKEDisconnection:*(a1 + 56) error:v14];
      if ([WeakRetained state] == 255)
      {
        goto LABEL_9;
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

        goto LABEL_9;
      }

      [WeakRetained reportEvent:3018 detailsFormat:@"%@ session %@ got child %u Disconnected state with no error", v11, *(a1 + 40), a2];
    }

    [WeakRetained restartIKESessionForDataProtectionClass:*(a1 + 56)];
  }

LABEL_9:
}

void sub_1000E0794(uint64_t a1, void *a2)
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

void sub_1000E0874(uint64_t a1, uint64_t a2, void *a3, void *a4)
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

void sub_1000E0974(uint64_t a1, void *a2)
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

void sub_1000E0A54(uint64_t a1)
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

void sub_1000E0B28(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v5 = [v3 sortedArrayUsingComparator:&stru_1001FC4F0];
    v6 = WeakRetained[4];
    v7 = _NRCopyLogObjectForNRUUID();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v9 = WeakRetained[4];
      v10 = _NRCopyLogObjectForNRUUID();
      v11 = [WeakRetained copyDescription];
      v25 = *(a1 + 40);
      v26 = v5;
      v23 = v11;
      v24 = *(a1 + 32);
      v21 = "[NRLinkWired setupIKECallbacks:]_block_invoke_7";
      v22 = 587;
      v20 = "";
      _NRLogWithArgs();
    }

    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v12 = v5;
    v13 = [v12 countByEnumeratingWithState:&v27 objects:v31 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v28;
      do
      {
        for (i = 0; i != v14; i = i + 1)
        {
          if (*v28 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v27 + 1) + 8 * i);
          v18 = [v17 notifyStatus];
          v19 = [v17 notifyData];
          [WeakRetained handleNotifyCode:v18 payload:v19];
        }

        v14 = [v12 countByEnumeratingWithState:&v27 objects:v31 count:16];
      }

      while (v14);
    }
  }
}

void sub_1000E12E4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_1000E1308(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v17 = WeakRetained;
    v4 = [WeakRetained state] == 255;
    WeakRetained = v17;
    if (!v4)
    {
      *(v17 + 83) = 0;
      v5 = *(v17 + 4);
      v6 = _NRCopyLogObjectForNRUUID();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      if (a2)
      {
        WeakRetained = v17;
        if (!IsLevelEnabled)
        {
          goto LABEL_10;
        }

        v8 = *(v17 + 4);
        v9 = _NRCopyLogObjectForNRUUID();
        v16 = [v17 copyDescription];
        _NRLogWithArgs();
      }

      else
      {
        if (IsLevelEnabled)
        {
          v10 = *(v17 + 4);
          v11 = _NRCopyLogObjectForNRUUID();
          v14 = 331;
          v15 = [v17 copyDescription];
          v12 = "";
          v13 = "[NRLinkWired checkPeerAvailabilityWithForceAggressive:]_block_invoke";
          _NRLogWithArgs();
        }

        [v17 cancelWithReason:{@"Dead Peer Detection", v12, v13, v14, v15}];
      }

      WeakRetained = v17;
    }
  }

LABEL_10:
}

void sub_1000E16CC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1000E16F0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained setupIPsecIfNecessary:3];
    WeakRetained = v2;
  }
}

void sub_1000E19D0(id *a1, int a2, unsigned int a3)
{
  WeakRetained = objc_loadWeakRetained(a1 + 5);
  if (WeakRetained)
  {
    v22 = WeakRetained;
    v7 = [WeakRetained state] == 255;
    WeakRetained = v22;
    if (!v7)
    {
      v8 = objc_loadWeakRetained(a1 + 6);
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
          [a1[4] setRemoteClassCUnlocked:0];
          [v22 initiateConnection];
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

id sub_1000E2538()
{
  if (qword_100229120 != -1)
  {
    dispatch_once(&qword_100229120, &stru_1001FB968);
  }

  v1 = qword_100229118;

  return v1;
}

void sub_1000E258C(id a1)
{
  v1 = os_log_create("com.apple.networkrelay", "");
  v2 = qword_100229118;
  qword_100229118 = v1;

  _objc_release_x1(v1, v2);
}

void sub_1000E284C(uint64_t a1)
{
  if ([*(a1 + 32) state] == 255)
  {
    if (qword_100229120 != -1)
    {
      dispatch_once(&qword_100229120, &stru_1001FB968);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_100229120 != -1)
      {
        dispatch_once(&qword_100229120, &stru_1001FB968);
      }

      v4 = *(a1 + 32);
      _NRLogWithArgs();
    }
  }

  else
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

    v5 = WeakRetained;
    [WeakRetained linkDidReceiveData:*(a1 + 32) data:*(a1 + 48)];
  }
}

void sub_1000E2B6C(uint64_t a1)
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

  [WeakRetained linkIsUnavailable:*(a1 + 40)];

  v4 = *(a1 + 32);

  sub_1000E2BCC(v4);
}

void sub_1000E2BCC(uint64_t a1)
{
  if (a1)
  {
    v3 = sub_10016CD90();
    if ([v3 count])
    {
      sub_1000E2C58(a1, v3);
    }

    v2 = sub_10016CBA0();
    if ([v2 count])
    {
      sub_1000E2C58(a1, v2);
    }
  }
}

void sub_1000E2C58(uint64_t a1, void *a2)
{
  v139 = a2;
  v176 = 0u;
  v177 = 0u;
  v178 = 0u;
  v179 = 0u;
  obj = [*(a1 + 40) copy];
  v136 = a1;
  v146 = [obj countByEnumeratingWithState:&v176 objects:v188 count:16];
  if (v146)
  {
    v144 = *v177;
    do
    {
      for (i = 0; i != v146; i = i + 1)
      {
        if (*v177 != v144)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v176 + 1) + 8 * i);
        v6 = *(a1 + 80);
        v7 = [v5 localInterfaceName];
        v8 = [v6 objectForKeyedSubscript:v7];

        if (!v8 || ![v8 count])
        {
          [v5 cancelWithReason:@"interface went away"];
        }

        v9 = *(v136 + 88);
        v10 = [v5 nrUUID];
        v11 = [v9 objectForKeyedSubscript:v10];

        if (!v11)
        {
          goto LABEL_6;
        }

        v174 = 0u;
        v175 = 0u;
        v172 = 0u;
        v173 = 0u;
        v12 = [v11 interfaceToPeerAddressDictionary];
        v13 = [v12 allValues];

        v14 = [v13 countByEnumeratingWithState:&v172 objects:v187 count:16];
        if (!v14)
        {
LABEL_5:

LABEL_6:
          v4 = 0;
          goto LABEL_7;
        }

        v15 = v14;
        v16 = *v173;
LABEL_17:
        v17 = 0;
        while (1)
        {
          if (*v173 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v172 + 1) + 8 * v17);
          v19 = [v5 remoteOuterEndpoint];
          v20 = [v18 containsObject:v19];

          if (v20)
          {
            break;
          }

          if (v15 == ++v17)
          {
            v15 = [v13 countByEnumeratingWithState:&v172 objects:v187 count:16];
            if (v15)
            {
              goto LABEL_17;
            }

            goto LABEL_5;
          }
        }

        v4 = v18;

        if (v4 && [v4 count])
        {
          goto LABEL_8;
        }

LABEL_7:
        [v5 cancelWithReason:@"peer went away"];
LABEL_8:

        a1 = v136;
      }

      v146 = [obj countByEnumeratingWithState:&v176 objects:v188 count:16];
    }

    while (v146);
  }

  v170 = 0u;
  v171 = 0u;
  v168 = 0u;
  v169 = 0u;
  v117 = v139;
  v122 = [v117 countByEnumeratingWithState:&v168 objects:v186 count:16];
  if (v122)
  {
    v121 = *v169;
    do
    {
      v21 = 0;
      do
      {
        if (*v169 != v121)
        {
          v23 = v21;
          objc_enumerationMutation(v117);
          v21 = v23;
        }

        v124 = v21;
        v24 = *(*(&v168 + 1) + 8 * v21);
        v25 = sub_100163A30(NRDLocalDevice, v24);
        v125 = v25;
        if (v25 && (v26 = *(v25 + 144), v26, v26))
        {
          if ((*(v125 + 48) & 2) != 0)
          {
            if (a1)
            {
              WeakRetained = objc_loadWeakRetained((a1 + 16));
            }

            else
            {
              WeakRetained = 0;
            }

            v28 = [WeakRetained perpetualStandaloneMeadowEnabledForNRUUID:{v24, v112, v113, v114, v115}];

            if (v28)
            {
              if (qword_100229120 != -1)
              {
                dispatch_once(&qword_100229120, &stru_1001FB968);
              }

              if (_NRLogIsLevelEnabled())
              {
                if (qword_100229120 != -1)
                {
                  dispatch_once(&qword_100229120, &stru_1001FB968);
                }

                v114 = 211;
                v115 = v125;
                v112 = "";
                v113 = "[NRLinkManagerWired createLinkForNRUUIDs:]";
                _NRLogWithArgs();
              }
            }

            else
            {
              v29 = v125;
              if (*(a1 + 32))
              {
                goto LABEL_67;
              }

              if (qword_100229238 != -1)
              {
                dispatch_once(&qword_100229238, &stru_1001FC340);
                v29 = v125;
              }

              if (byte_100229230)
              {
                goto LABEL_67;
              }

              v30 = *(v29 + 144);
              v29 = v125;
              if (!v30)
              {
                goto LABEL_67;
              }

              v31 = v30;
              v32 = *(v125 + 144);
              v33 = [v32 allowedLinkTypes];
              v34 = [v33 containsObject:&off_100209C20];

              v29 = v125;
              if (v34)
              {
LABEL_67:
                if (*(v29 + 11) == 1)
                {
                  if (qword_100229120 != -1)
                  {
                    dispatch_once(&qword_100229120, &stru_1001FB968);
                  }

                  if (_NRLogIsLevelEnabled())
                  {
                    if (qword_100229120 != -1)
                    {
                      dispatch_once(&qword_100229120, &stru_1001FB968);
                    }

                    v114 = 225;
                    v115 = v125;
                    v112 = "";
                    v113 = "[NRLinkManagerWired createLinkForNRUUIDs:]";
                    _NRLogWithArgs();
                  }
                }

                else
                {
                  v35 = v29;
                  if (sub_10013FF60(v29) == 1)
                  {
                    v36 = *(v35 + 48);
                    if ((v36 & 0x20) != 0)
                    {
                      LOBYTE(v39) = 1;
                    }

                    else
                    {
                      v37 = (v36 & 0x10) != 0 || *(v35 + 16) > 0x12u;
                      v39 = (v36 >> 14) & 1 | v37;
                    }

                    v40 = ((*(v35 + 48) & 0x2000) != 0) & v39;
                    if ((v36 & 0x1000) != 0)
                    {
                      v38 = v40;
                    }

                    else
                    {
                      v38 = 0;
                    }
                  }

                  else
                  {
                    v38 = 0;
                  }

                  v41 = sub_100169428(v35);
                  v120 = [*(a1 + 88) objectForKeyedSubscript:v24];
                  if (v120)
                  {
                    v42 = (v41 ^ 1) & v38;
                    v140 = v24;
                    if (v42)
                    {
                      v43 = 0;
                    }

                    else
                    {
                      v166 = 0u;
                      v167 = 0u;
                      v164 = 0u;
                      v165 = 0u;
                      v44 = *(a1 + 40);
                      v45 = [v44 countByEnumeratingWithState:&v164 objects:v185 count:16];
                      if (v45)
                      {
                        v46 = v45;
                        v47 = v42;
                        v48 = *v165;
                        do
                        {
                          for (j = 0; j != v46; j = j + 1)
                          {
                            if (*v165 != v48)
                            {
                              objc_enumerationMutation(v44);
                            }

                            v50 = *(*(&v164 + 1) + 8 * j);
                            v51 = [v50 nrUUID];
                            v52 = [v51 isEqual:v24];

                            if (v52 && [v50 state] != 255)
                            {
                              v43 = 1;
                              v24 = v140;
                              goto LABEL_109;
                            }

                            v24 = v140;
                          }

                          v46 = [v44 countByEnumeratingWithState:&v164 objects:v185 count:16];
                        }

                        while (v46);
                        v43 = 0;
LABEL_109:
                        v42 = v47;
                      }

                      else
                      {
                        v43 = 0;
                      }
                    }

                    v162 = 0u;
                    v163 = 0u;
                    v160 = 0u;
                    v161 = 0u;
                    v116 = [v120 interfaceToPeerAddressDictionary];
                    v119 = [v116 countByEnumeratingWithState:&v160 objects:v184 count:16];
                    if (!v119)
                    {
                      goto LABEL_32;
                    }

                    v118 = *v161;
                    v131 = v42;
LABEL_114:
                    v53 = 0;
                    while (1)
                    {
                      if (*v161 != v118)
                      {
                        v54 = v53;
                        objc_enumerationMutation(v116);
                        v53 = v54;
                      }

                      if (!(v42 & 1 | ((v43 & 1) == 0)))
                      {
                        goto LABEL_32;
                      }

                      v123 = v53;
                      v55 = *(*(&v160 + 1) + 8 * v53);
                      v56 = [*(a1 + 80) objectForKeyedSubscript:v55];
                      v57 = [v120 interfaceToPeerAddressDictionary];
                      v129 = [v57 objectForKeyedSubscript:v55];

                      v158 = 0u;
                      v159 = 0u;
                      v156 = 0u;
                      v157 = 0u;
                      v126 = v56;
                      v128 = [v126 countByEnumeratingWithState:&v156 objects:v183 count:16];
                      if (v128)
                      {
                        v127 = *v157;
                        v145 = v55;
LABEL_121:
                        v58 = 0;
LABEL_123:
                        if (*v157 != v127)
                        {
                          v59 = v58;
                          objc_enumerationMutation(v126);
                          v58 = v59;
                        }

                        if (v42 & 1 | ((v43 & 1) == 0))
                        {
                          break;
                        }
                      }

LABEL_115:

                      v53 = v123 + 1;
                      if ((v123 + 1) == v119)
                      {
                        v119 = [v116 countByEnumeratingWithState:&v160 objects:v184 count:16];
                        if (!v119)
                        {
                          goto LABEL_32;
                        }

                        goto LABEL_114;
                      }
                    }

                    v130 = v58;
                    v147 = *(*(&v156 + 1) + 8 * v58);
                    v154 = 0u;
                    v155 = 0u;
                    v152 = 0u;
                    v153 = 0u;
                    v133 = v129;
                    v138 = [v133 countByEnumeratingWithState:&v152 objects:v182 count:16];
                    if (!v138)
                    {
                      goto LABEL_122;
                    }

                    v60 = *v153;
                    v132 = *v153;
                    while (2)
                    {
                      v61 = 0;
LABEL_132:
                      if (*v153 != v60)
                      {
                        objc_enumerationMutation(v133);
                      }

                      if (!(v42 & 1 | ((v43 & 1) == 0)))
                      {
                        goto LABEL_122;
                      }

                      obja = *(*(&v152 + 1) + 8 * v61);
                      if (![a1 endpointsAreCompatible:v147 remoteEndpoint:?])
                      {
                        goto LABEL_131;
                      }

                      v137 = v61;
                      v135 = v43;
                      v150 = 0u;
                      v151 = 0u;
                      v148 = 0u;
                      v149 = 0u;
                      v62 = [*(a1 + 40) copy];
                      v63 = [v62 countByEnumeratingWithState:&v148 objects:v181 count:16];
                      if (!v63)
                      {
LABEL_152:

                        goto LABEL_153;
                      }

                      v64 = v63;
                      v65 = *v149;
LABEL_139:
                      v66 = 0;
LABEL_144:
                      if (*v149 != v65)
                      {
                        objc_enumerationMutation(v62);
                      }

                      v67 = *(*(&v148 + 1) + 8 * v66);
                      v68 = [v67 nrUUID];
                      if ([v68 isEqual:v24])
                      {
                        v69 = [v67 localInterfaceName];
                        v70 = [v69 isEqualToString:v55];

                        if (v70)
                        {
                          v71 = [v67 localOuterEndpoint];
                          v68 = [v71 hostname];

                          v72 = [v67 remoteOuterEndpoint];
                          v73 = [v72 hostname];

                          v74 = [v147 hostname];
                          if ([v68 isEqualToString:v74])
                          {
                            v75 = [obja hostname];
                            v76 = [v73 isEqualToString:v75];

                            v24 = v140;
                            if (v76)
                            {
                              v77 = [v67 state];

                              v55 = v145;
                              if (v77 != 255)
                              {
                                a1 = v136;
                                v61 = v137;
                                v42 = v131;
                                v43 = v135;
                                v60 = v132;
                                goto LABEL_131;
                              }

LABEL_153:
                              v78 = [obja hostname];
                              objc_opt_self();
                              if (qword_100228E88 != -1)
                              {
                                dispatch_once(&qword_100228E88, &stru_1001FA180);
                              }

                              v79 = qword_100228E80;
                              v80 = @"62743";
                              if (!v79)
                              {
                                v80 = 0;
                              }

                              v81 = v80;
                              v82 = [NWAddressEndpoint endpointWithHostname:v78 port:v81];

                              v83 = [NRLinkWired alloc];
                              if (v136)
                              {
                                v84 = *(v136 + 24);
                              }

                              else
                              {
                                v84 = 0;
                              }

                              v85 = v84;
                              objc_opt_self();
                              if (qword_100228E88 != -1)
                              {
                                dispatch_once(&qword_100228E88, &stru_1001FA180);
                              }

                              v134 = qword_100228E80;
                              v86 = @"62743";
                              if (!v134)
                              {
                                v86 = 0;
                              }

                              v87 = v86;
                              v88 = v85;
                              v89 = v136;
                              v90 = v140;
                              objb = v55;
                              v91 = v147;
                              v92 = v82;
                              v93 = v87;
                              if (!v83)
                              {
                                goto LABEL_202;
                              }

                              if (!v88)
                              {
                                if (qword_100229110 != -1)
                                {
                                  dispatch_once(&qword_100229110, &stru_1001FB948);
                                }

                                v100 = qword_100229108;
                                IsLevelEnabled = _NRLogIsLevelEnabled();

                                if (IsLevelEnabled)
                                {
                                  if (qword_100229110 == -1)
                                  {
                                    goto LABEL_192;
                                  }

LABEL_204:
                                  dispatch_once(&qword_100229110, &stru_1001FB948);
                                  goto LABEL_192;
                                }

LABEL_194:
                                v99 = 0;
                                v96 = objb;
                                v55 = v145;
                                goto LABEL_170;
                              }

                              if (!v140)
                              {
                                if (qword_100229110 != -1)
                                {
                                  dispatch_once(&qword_100229110, &stru_1001FB948);
                                }

                                v102 = qword_100229108;
                                v103 = _NRLogIsLevelEnabled();

                                if (!v103)
                                {
                                  goto LABEL_194;
                                }

                                if (qword_100229110 != -1)
                                {
                                  goto LABEL_204;
                                }

LABEL_192:
                                v55 = v145;
                                v106 = qword_100229108;
                                v112 = "[NRLinkWired initLinkWithQueue:linkDelegate:nrUUID:localInterfaceName:localOuterEndpoint:remoteOuterEndpoint:listenerPortString:]";
                                goto LABEL_193;
                              }

                              if ((_NRIsUUIDNonZero() & 1) == 0)
                              {
                                if (qword_100229110 != -1)
                                {
                                  dispatch_once(&qword_100229110, &stru_1001FB948);
                                }

                                v104 = qword_100229108;
                                v105 = _NRLogIsLevelEnabled();

                                if (!v105)
                                {
                                  goto LABEL_194;
                                }

                                if (qword_100229110 != -1)
                                {
                                  dispatch_once(&qword_100229110, &stru_1001FB948);
                                }

                                v55 = v145;
                                v106 = qword_100229108;
LABEL_193:
                                _NRLogWithArgs();

LABEL_202:
                                v99 = 0;
                                v96 = objb;
                                goto LABEL_170;
                              }

                              if (!v55)
                              {
                                if (qword_100229110 != -1)
                                {
                                  dispatch_once(&qword_100229110, &stru_1001FB948);
                                }

                                v107 = qword_100229108;
                                v108 = _NRLogIsLevelEnabled();

                                if (v108)
                                {
                                  if (qword_100229110 == -1)
                                  {
                                    goto LABEL_192;
                                  }

                                  goto LABEL_204;
                                }

                                goto LABEL_194;
                              }

                              v180.receiver = v83;
                              v180.super_class = NRLinkWired;
                              v94 = objc_msgSendSuper2(&v180, "initLinkWithQueue:linkDelegate:nrUUID:", v88, v89, v90);
                              if (!v94)
                              {
                                if (qword_100229110 != -1)
                                {
                                  dispatch_once(&qword_100229110, &stru_1001FB948);
                                }

                                v109 = qword_100229108;
                                v110 = _NRLogIsLevelEnabled();

                                if (v110)
                                {
                                  if (qword_100229110 != -1)
                                  {
                                    dispatch_once(&qword_100229110, &stru_1001FB948);
                                  }

                                  v111 = qword_100229108;
                                  _NRLogWithArgs();
                                }

                                v83 = 0;
                                goto LABEL_202;
                              }

                              v95 = v94;
                              [v94 setType:5];
                              [v95 setLocalInterfaceName:objb];
                              [v95 setLocalOuterEndpoint:v91];
                              [v95 setRemoteOuterEndpoint:v92];
                              [v95 setListenerPortString:v93];
                              [v95 setOnlyAllowClassC:1];
                              [v90 UUIDString];
                              v97 = v96 = objb;
                              [v95 reportEvent:3000 details:v97];

                              v98 = [v95 linkDelegate];
                              [v98 linkIsAvailable:v95];

                              v83 = v95;
                              v99 = v83;
LABEL_170:

                              if (v99)
                              {
                                v43 = 1;
                                v42 = v131;
                              }

                              else
                              {
                                [v89 reportEvent:3210];
                                v42 = v131;
                                v43 = v135;
                              }

                              v60 = v132;
                              a1 = v136;
                              v61 = v137;

                              v24 = v140;
LABEL_131:
                              if (++v61 == v138)
                              {
                                v138 = [v133 countByEnumeratingWithState:&v152 objects:v182 count:16];
                                if (!v138)
                                {
LABEL_122:

                                  v58 = v130 + 1;
                                  if ((v130 + 1) != v128)
                                  {
                                    goto LABEL_123;
                                  }

                                  v128 = [v126 countByEnumeratingWithState:&v156 objects:v183 count:16];
                                  if (v128)
                                  {
                                    goto LABEL_121;
                                  }

                                  goto LABEL_115;
                                }

                                continue;
                              }

                              goto LABEL_132;
                            }
                          }

                          else
                          {
                          }

                          v55 = v145;
                          goto LABEL_142;
                        }
                      }

                      else
                      {
LABEL_142:
                      }

                      break;
                    }

                    if (v64 == ++v66)
                    {
                      v64 = [v62 countByEnumeratingWithState:&v148 objects:v181 count:16];
                      if (!v64)
                      {
                        goto LABEL_152;
                      }

                      goto LABEL_139;
                    }

                    goto LABEL_144;
                  }

                  if (qword_100229120 != -1)
                  {
                    dispatch_once(&qword_100229120, &stru_1001FB968);
                  }

                  if (_NRLogIsLevelEnabled())
                  {
                    if (qword_100229120 != -1)
                    {
                      dispatch_once(&qword_100229120, &stru_1001FB968);
                    }

                    v22 = qword_100229118;
                    v115 = sub_100163A30(NRDLocalDevice, v24);
                    v116 = v115;
                    v114 = 244;
                    v112 = "";
                    v113 = "[NRLinkManagerWired createLinkForNRUUIDs:]";
                    _NRLogWithArgs();

LABEL_32:
                  }
                }
              }

              else
              {
                if (qword_100229120 != -1)
                {
                  dispatch_once(&qword_100229120, &stru_1001FB968);
                }

                if (_NRLogIsLevelEnabled())
                {
                  if (qword_100229120 != -1)
                  {
                    dispatch_once(&qword_100229120, &stru_1001FB968);
                  }

                  v114 = 220;
                  v115 = v125;
                  v112 = "";
                  v113 = "[NRLinkManagerWired createLinkForNRUUIDs:]";
                  _NRLogWithArgs();
                }
              }
            }
          }

          else
          {
            if (qword_100229120 != -1)
            {
              dispatch_once(&qword_100229120, &stru_1001FB968);
            }

            if (_NRLogIsLevelEnabled())
            {
              if (qword_100229120 != -1)
              {
                dispatch_once(&qword_100229120, &stru_1001FB968);
              }

              v114 = 205;
              v115 = v24;
              v112 = "";
              v113 = "[NRLinkManagerWired createLinkForNRUUIDs:]";
              _NRLogWithArgs();
            }
          }
        }

        else
        {
          if (qword_100229120 != -1)
          {
            dispatch_once(&qword_100229120, &stru_1001FB968);
          }

          if (_NRLogIsLevelEnabled())
          {
            if (qword_100229120 != -1)
            {
              dispatch_once(&qword_100229120, &stru_1001FB968);
            }

            v114 = 200;
            v115 = v24;
            v112 = "";
            v113 = "[NRLinkManagerWired createLinkForNRUUIDs:]";
            _NRLogWithArgs();
          }
        }

        v21 = v124 + 1;
      }

      while ((v124 + 1) != v122);
      v122 = [v117 countByEnumeratingWithState:&v168 objects:v186 count:16];
    }

    while (v122);
  }
}

void sub_1000E4284(uint64_t a1)
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
    if (qword_100229120 != -1)
    {
      dispatch_once(&qword_100229120, &stru_1001FB968);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_100229120 != -1)
      {
        dispatch_once(&qword_100229120, &stru_1001FB968);
      }

      v4 = *(a1 + 40);
      v5 = *(a1 + 32);
      _NRLogWithArgs();
    }
  }
}

void sub_1000E4584(uint64_t a1)
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
    if (qword_100229120 != -1)
    {
      dispatch_once(&qword_100229120, &stru_1001FB968);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_100229120 != -1)
      {
        dispatch_once(&qword_100229120, &stru_1001FB968);
      }

      v4 = *(a1 + 40);
      v5 = *(a1 + 32);
      _NRLogWithArgs();
    }
  }
}

void sub_1000E48A4(uint64_t a1)
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
    if (qword_100229120 != -1)
    {
      dispatch_once(&qword_100229120, &stru_1001FB968);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_100229120 != -1)
      {
        dispatch_once(&qword_100229120, &stru_1001FB968);
      }

      v4 = *(a1 + 40);
      v5 = *(a1 + 32);
      _NRLogWithArgs();
    }
  }
}

void sub_1000E51D8(uint64_t a1)
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

    *(v3 + 32) = v4 & 1;
  }
}

void sub_1000E5270(uint64_t a1)
{
  if (a1)
  {
    v2 = [*(a1 + 48) count];
    v3 = *(a1 + 56);
    if (v2)
    {
      if (!v3)
      {
        v42.version = 0;
        memset(&v42.retain, 0, 24);
        v42.info = a1;
        v4 = SCDynamicStoreCreate(kCFAllocatorDefault, @"NRLinkManagerWired", sub_1000E6C74, &v42);
        *(a1 + 56) = v4;
        if (!v4)
        {
          v22 = sub_1000E2538();
          IsLevelEnabled = _NRLogIsLevelEnabled();

          if (IsLevelEnabled)
          {
            v24 = sub_1000E2538();
            _NRLogWithArgs();
          }

          _os_log_pack_size();
          v25 = *__error();
          goto LABEL_27;
        }

        SCDynamicStoreSetDisconnectCallBack();
      }

      v32 = v3;
      v5 = objc_alloc_init(NSMutableArray);
      v38 = 0u;
      v39 = 0u;
      v40 = 0u;
      v41 = 0u;
      v33 = a1;
      v34 = *(a1 + 48);
      v6 = [v34 countByEnumeratingWithState:&v38 objects:v43 count:16];
      if (v6)
      {
        v7 = v6;
        v35 = *v39;
        do
        {
          for (i = 0; i != v7; i = i + 1)
          {
            if (*v39 != v35)
            {
              objc_enumerationMutation(v34);
            }

            v9 = *(*(&v38 + 1) + 8 * i);
            NetworkInterfaceEntity = SCDynamicStoreKeyCreateNetworkInterfaceEntity(0, kSCDynamicStoreDomainState, v9, kSCEntNetIPv4);
            v11 = SCDynamicStoreKeyCreateNetworkInterfaceEntity(0, kSCDynamicStoreDomainState, v9, kSCEntNetIPv6);
            v12 = SCDynamicStoreKeyCreateNetworkInterfaceEntity(0, kSCDynamicStoreDomainState, v9, kSCEntNetLink);
            [v5 addObject:NetworkInterfaceEntity];
            [v5 addObject:v11];
            [v5 addObject:v12];
          }

          v7 = [v34 countByEnumeratingWithState:&v38 objects:v43 count:16];
        }

        while (v7);
      }

      if (SCDynamicStoreSetNotificationKeys(*(v33 + 56), v5, 0))
      {
        if (v32 || (v13 = *(v33 + 56), v14 = *(v33 + 24), LODWORD(v13) = SCDynamicStoreSetDispatchQueue(v13, v14), v14, v13))
        {
          v15 = *(v33 + 24);
          v36[0] = _NSConcreteStackBlock;
          v36[1] = 3221225472;
          v36[2] = sub_1000E57DC;
          v36[3] = &unk_1001FD060;
          v36[4] = v33;
          v37 = v5;
          v16 = v5;
          dispatch_async(v15, v36);

          return;
        }

        v27 = sub_1000E2538();
        v28 = _NRLogIsLevelEnabled();

        if (v28)
        {
          v29 = sub_1000E2538();
          _NRLogWithArgs();
        }

        _os_log_pack_size();
        v30 = *__error();
        v31 = _os_log_pack_fill();
        *v31 = 136446210;
        *(v31 + 4) = "[NRLinkManagerWired setupSCDWatcher]";
LABEL_31:
        sub_1000E2538();
        _NRLogAbortWithPack();
      }

      v18 = sub_1000E2538();
      v19 = _NRLogIsLevelEnabled();

      if (v19)
      {
        v20 = sub_1000E2538();
        _NRLogWithArgs();
      }

      _os_log_pack_size();
      v21 = *__error();
LABEL_27:
      v26 = _os_log_pack_fill();
      *v26 = 136446210;
      *(v26 + 4) = "[NRLinkManagerWired setupSCDWatcher]";
      goto LABEL_31;
    }

    if (v3)
    {
      SCDynamicStoreSetDispatchQueue(*(a1 + 56), 0);
      v17 = *(a1 + 56);
      if (v17)
      {
        CFRelease(v17);
        *(a1 + 56) = 0;
      }
    }
  }
}

void sub_1000E57DC(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v2 = v1[7];
    v3 = *(a1 + 40);
    v4 = v1;
    if (*(v4 + 3) != 1004 && v4[7] == v2)
    {
      v5 = v4;
      sub_1000E5864(v4, v3);
      v4 = v5;
    }
  }
}

void sub_1000E5864(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v4 = *(a1 + 24);
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  dispatch_assert_queue_V2(v5);

  v147 = SCDynamicStoreCopyMultiple(*(a1 + 56), v3, 0);
  if (qword_100229120 != -1)
  {
    dispatch_once(&qword_100229120, &stru_1001FB968);
  }

  v6 = qword_100229118;
  IsLevelEnabled = _NRLogIsLevelEnabled();

  if (IsLevelEnabled)
  {
    if (qword_100229120 != -1)
    {
      dispatch_once(&qword_100229120, &stru_1001FB968);
    }

    v8 = qword_100229118;
    v131 = 407;
    v132 = v147;
    v129 = "";
    v130 = "[NRLinkManagerWired processSCDUpdate:]";
    _NRLogWithArgs();
  }

  v148 = a1;
  v187 = 0u;
  v188 = 0u;
  v185 = 0u;
  v186 = 0u;
  obj = v3;
  v9 = [(__CFArray *)obj countByEnumeratingWithState:&v185 objects:v201 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = 0;
    v12 = 0;
    v13 = *v186;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v186 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v185 + 1) + 8 * i);
        if ([v15 containsString:{kSCEntNetIPv4, v129, v130, v131, v132}])
        {
          v12 = 1;
        }

        else
        {
          v11 |= [v15 containsString:kSCEntNetIPv6];
        }
      }

      v10 = [(__CFArray *)obj countByEnumeratingWithState:&v185 objects:v201 count:16];
    }

    while (v10);
  }

  else
  {
    LOBYTE(v11) = 0;
    v12 = 0;
  }

  v140 = objc_alloc_init(NSMutableSet);
  if (v12)
  {
    v183 = 0u;
    v184 = 0u;
    v181 = 0u;
    v182 = 0u;
    v16 = obj;
    v17 = [(__CFArray *)v16 countByEnumeratingWithState:&v181 objects:v200 count:16];
    v18 = v148;
    if (v17)
    {
      v19 = v17;
      v20 = 0;
      v21 = *v182;
      v22 = kSCEntNetIPv4;
      v137 = v16;
      v23 = *v182;
      v139 = *v182;
      while (1)
      {
        if (v23 != v21)
        {
          objc_enumerationMutation(v16);
        }

        v24 = *(*(&v181 + 1) + 8 * v20);
        if ([v24 containsString:{v22, v129, v130, v131, v132}])
        {
          v143 = v20;
          v144 = v19;
          v179 = 0u;
          v180 = 0u;
          v177 = 0u;
          v178 = 0u;
          v25 = v18[6];
          v26 = [v25 countByEnumeratingWithState:&v177 objects:v199 count:16];
          if (!v26)
          {
            goto LABEL_73;
          }

          v27 = v26;
          v28 = *v178;
LABEL_30:
          v29 = 0;
          while (1)
          {
            if (*v178 != v28)
            {
              objc_enumerationMutation(v25);
            }

            v30 = *(*(&v177 + 1) + 8 * v29);
            if ([v24 containsString:v30])
            {
              break;
            }

            if (v27 == ++v29)
            {
              v27 = [v25 countByEnumeratingWithState:&v177 objects:v199 count:16];
              v18 = v148;
              if (!v27)
              {
                goto LABEL_73;
              }

              goto LABEL_30;
            }
          }

          [v140 addObject:v30];
          v18 = v148;
          v31 = v148[8];
          [v31 setObject:0 forKeyedSubscript:v30];

          v141 = [(__CFDictionary *)v147 objectForKeyedSubscript:v24];
          v32 = [v141 objectForKeyedSubscript:kSCPropNetIPv4Addresses];
          v150 = objc_alloc_init(NSMutableArray);
          v173 = 0u;
          v174 = 0u;
          v175 = 0u;
          v176 = 0u;
          v33 = v32;
          v34 = [v33 countByEnumeratingWithState:&v173 objects:v198 count:16];
          if (v34)
          {
            v35 = v34;
            v36 = 0;
            v37 = *v174;
            for (j = *v174; ; j = *v174)
            {
              if (j != v37)
              {
                objc_enumerationMutation(v33);
              }

              v39 = *(*(&v173 + 1) + 8 * v36);
              v193 = 0;
              v192 = 0;
              if (inet_pton(2, [(__CFDictionary *)v39 UTF8String:v129], &v192 + 4) == 1)
              {
                v40 = bswap32(HIDWORD(v192));
                if (HIWORD(v40) == 43518)
                {
                  v41 = v148[12];
                  v42 = [v41 containsObject:v30];

                  if (v42)
                  {
                    goto LABEL_45;
                  }
                }

                else
                {
                  v45 = (v40 & 0xFF000000) == 0 || (v40 & 0xFF000000) == 2130706432 || v40 >> 28 == 14;
                  v46 = v40 & 0xFFFFFFF8;
                  if (!v45 && HIDWORD(v192) != -1 && v46 != -1073741824)
                  {
LABEL_45:
                    v43 = [NWAddressEndpoint endpointWithHostname:v39 port:@"0"];
                    [v150 addObject:v43];
LABEL_66:

                    goto LABEL_67;
                  }
                }

                if (qword_100229120 != -1)
                {
                  dispatch_once(&qword_100229120, &stru_1001FB968);
                }

                v49 = qword_100229118;
                v50 = _NRLogIsLevelEnabled();

                if (v50)
                {
                  if (qword_100229120 != -1)
                  {
                    dispatch_once(&qword_100229120, &stru_1001FB968);
                  }

                  v43 = qword_100229118;
                  v131 = 446;
                  v132 = v39;
                  v129 = "";
                  v130 = "[NRLinkManagerWired processSCDUpdate:]";
                  _NRLogWithArgs();
                  goto LABEL_66;
                }
              }

LABEL_67:
              ++v36;
              v18 = v148;
              if (v36 >= v35)
              {
                v51 = [v33 countByEnumeratingWithState:&v173 objects:v198 count:16];
                if (!v51)
                {
                  break;
                }

                v35 = v51;
                v36 = 0;
              }
            }
          }

          if ([v150 count])
          {
            v52 = v18[8];
            [v52 setObject:v150 forKeyedSubscript:v30];
          }

          v16 = v137;
LABEL_73:

          v20 = v143;
          v19 = v144;
          v22 = kSCEntNetIPv4;
          v21 = v139;
        }

        if (++v20 >= v19)
        {
          v53 = [(__CFArray *)v16 countByEnumeratingWithState:&v181 objects:v200 count:16];
          if (!v53)
          {
            break;
          }

          v19 = v53;
          v20 = 0;
        }

        v23 = *v182;
      }
    }
  }

  v54 = v148;
  if (v11)
  {
    v171 = 0u;
    v172 = 0u;
    v169 = 0u;
    v170 = 0u;
    v55 = obj;
    v56 = [(__CFArray *)v55 countByEnumeratingWithState:&v169 objects:v197 count:16];
    if (v56)
    {
      v57 = v56;
      v58 = *v170;
      v59 = kSCEntNetIPv6;
      v135 = v55;
      v145 = *v170;
      do
      {
        v60 = 0;
        v136 = v57;
        do
        {
          if (*v170 != v58)
          {
            objc_enumerationMutation(v55);
          }

          v62 = *(*(&v169 + 1) + 8 * v60);
          if ([v62 containsString:{v59, v129, v130}])
          {
            v167 = 0u;
            v168 = 0u;
            v165 = 0u;
            v166 = 0u;
            v63 = v54[6];
            v64 = [v63 countByEnumeratingWithState:&v165 objects:v196 count:16];
            if (!v64)
            {
              goto LABEL_84;
            }

            v65 = v64;
            v66 = *v166;
            while (1)
            {
              for (k = 0; k != v65; k = k + 1)
              {
                if (*v166 != v66)
                {
                  objc_enumerationMutation(v63);
                }

                v68 = *(*(&v165 + 1) + 8 * k);
                if ([v62 containsString:v68])
                {
                  [v140 addObject:v68];
                  v69 = v54[9];
                  [v69 setObject:0 forKeyedSubscript:v68];

                  v61 = [(__CFDictionary *)v147 objectForKeyedSubscript:v62];
                  v70 = [v61 objectForKeyedSubscript:kSCPropNetIPv6Addresses];
                  v71 = [v61 objectForKeyedSubscript:kSCPropNetIPv6Flags];
                  v72 = [v70 count];
                  v151 = v71;
                  if (v72 == [v71 count])
                  {
                    v138 = v61;
                    v73 = [v70 count];
                    v142 = objc_alloc_init(NSMutableArray);
                    if (v73)
                    {
                      v74 = 0;
                      while (1)
                      {
                        v76 = [v151 objectAtIndexedSubscript:{v74, v129, v130, v131, v132, v134}];
                        v77 = [v70 objectAtIndexedSubscript:v74];
                        v78 = [v76 unsignedIntValue];
                        if ((v78 & 0x101F) != 0)
                        {
                          v79 = v78;
                          if (qword_100229120 != -1)
                          {
                            dispatch_once(&qword_100229120, &stru_1001FB968);
                          }

                          if (_NRLogIsLevelEnabled())
                          {
                            if (qword_100229120 != -1)
                            {
                              dispatch_once(&qword_100229120, &stru_1001FB968);
                            }

                            v132 = v77;
                            v134 = v79;
                            v131 = 489;
                            v129 = "";
                            v130 = "[NRLinkManagerWired processSCDUpdate:]";
                            _NRLogWithArgs();
                          }

                          goto LABEL_109;
                        }

                        v193 = 0;
                        v192 = 0;
                        v195 = 0;
                        v194 = 0;
                        if (inet_pton(30, [(__CFDictionary *)v77 UTF8String], &v193) == 1)
                        {
                          break;
                        }

LABEL_109:

                        if (v73 == ++v74)
                        {
                          goto LABEL_135;
                        }
                      }

                      v80 = v193 | HIDWORD(v193) | v194;
                      v81 = v80 == 0;
                      if (!v80 && !HIDWORD(v194))
                      {
LABEL_120:
                        if (qword_100229120 != -1)
                        {
                          dispatch_once(&qword_100229120, &stru_1001FB968);
                        }

                        v82 = qword_100229118;
                        v83 = _NRLogIsLevelEnabled();

                        if (!v83)
                        {
                          goto LABEL_109;
                        }

                        if (qword_100229120 != -1)
                        {
                          dispatch_once(&qword_100229120, &stru_1001FB968);
                        }

                        v75 = qword_100229118;
                        v131 = 505;
                        v132 = v77;
                        v129 = "";
                        v130 = "[NRLinkManagerWired processSCDUpdate:]";
                        _NRLogWithArgs();
                        goto LABEL_108;
                      }

                      if (HIDWORD(v194) != 0x1000000)
                      {
                        v81 = 0;
                      }

                      v84 = v193 & 0xC0FF;
                      if (!v81 && v193 != 255)
                      {
                        if (v84 == 33022)
                        {
LABEL_133:
                          v85 = v148[12];
                          v86 = [v85 containsObject:v68];

                          if ((v86 & 1) == 0)
                          {
                            goto LABEL_120;
                          }
                        }

                        v75 = [NWAddressEndpoint endpointWithHostname:v77 port:@"0"];
                        [v142 addObject:v75];
LABEL_108:

                        goto LABEL_109;
                      }

                      if (v84 != 33022)
                      {
                        goto LABEL_120;
                      }

                      goto LABEL_133;
                    }

LABEL_135:
                    v54 = v148;
                    if ([v142 count])
                    {
                      v87 = v148[9];
                      [v87 setObject:v142 forKeyedSubscript:v68];
                    }

                    v55 = v135;
                    v57 = v136;
                    v61 = v138;
                  }

                  else
                  {
                    if (qword_100229120 != -1)
                    {
                      dispatch_once(&qword_100229120, &stru_1001FB968);
                    }

                    if (_NRLogIsLevelEnabled())
                    {
                      if (qword_100229120 != -1)
                      {
                        dispatch_once(&qword_100229120, &stru_1001FB968);
                      }

                      v129 = v70;
                      v130 = v71;
                      _NRLogWithArgs();
                    }
                  }

                  goto LABEL_84;
                }
              }

              v65 = [v63 countByEnumeratingWithState:&v165 objects:v196 count:16];
              if (!v65)
              {
LABEL_84:

                v59 = kSCEntNetIPv6;
                v58 = v145;
                break;
              }
            }
          }

          v60 = v60 + 1;
        }

        while (v60 != v57);
        v57 = [(__CFArray *)v55 countByEnumeratingWithState:&v169 objects:v197 count:16];
      }

      while (v57);
    }
  }

  v88 = v54[12];
  v89 = [v88 count];

  if (v89)
  {
    v163 = 0u;
    v164 = 0u;
    v161 = 0u;
    v162 = 0u;
    v146 = v140;
    v90 = [v146 countByEnumeratingWithState:&v161 objects:v191 count:16];
    if (v90)
    {
      v91 = v90;
      v92 = *v162;
      do
      {
        for (m = 0; m != v91; m = m + 1)
        {
          if (*v162 != v92)
          {
            objc_enumerationMutation(v146);
          }

          v97 = *(*(&v161 + 1) + 8 * m);
          v157 = 0u;
          v158 = 0u;
          v159 = 0u;
          v160 = 0u;
          v98 = obj;
          v99 = [(__CFArray *)v98 countByEnumeratingWithState:&v157 objects:v190 count:16];
          if (!v99)
          {
LABEL_159:

LABEL_160:
            if (qword_100229120 != -1)
            {
              dispatch_once(&qword_100229120, &stru_1001FB968);
            }

            v107 = qword_100229118;
            v108 = _NRLogIsLevelEnabled();

            if (v108)
            {
              if (qword_100229120 != -1)
              {
                dispatch_once(&qword_100229120, &stru_1001FB968);
              }

              v94 = qword_100229118;
              v131 = 542;
              v132 = v97;
              v129 = "";
              v130 = "[NRLinkManagerWired processSCDUpdate:]";
              _NRLogWithArgs();
            }

            v95 = v148[8];
            [v95 setObject:0 forKeyedSubscript:v97];

            v96 = v148[9];
            [v96 setObject:0 forKeyedSubscript:v97];

            continue;
          }

          v100 = v99;
          v101 = *v158;
LABEL_151:
          v102 = 0;
          while (1)
          {
            if (*v158 != v101)
            {
              objc_enumerationMutation(v98);
            }

            v103 = *(*(&v157 + 1) + 8 * v102);
            if ([v103 containsString:{kSCEntNetLink, v129, v130, v131, v132}])
            {
              if ([v103 containsString:v97])
              {
                break;
              }
            }

            if (v100 == ++v102)
            {
              v100 = [(__CFArray *)v98 countByEnumeratingWithState:&v157 objects:v190 count:16];
              if (!v100)
              {
                goto LABEL_159;
              }

              goto LABEL_151;
            }
          }

          v104 = [(__CFDictionary *)v147 objectForKeyedSubscript:v103];
          v105 = [v104 objectForKeyedSubscript:kSCPropNetLinkActive];
          v106 = [v105 BOOLValue];

          if ((v106 & 1) == 0)
          {
            goto LABEL_160;
          }
        }

        v91 = [v146 countByEnumeratingWithState:&v161 objects:v191 count:16];
      }

      while (v91);
    }

    v54 = v148;
  }

  v155 = 0u;
  v156 = 0u;
  v153 = 0u;
  v154 = 0u;
  v152 = v140;
  v109 = [v152 countByEnumeratingWithState:&v153 objects:v189 count:16];
  v110 = &OBJC_IVAR___BTPResolver__sdRefResolve;
  if (v109)
  {
    v111 = v109;
    v112 = *v154;
    do
    {
      for (n = 0; n != v111; n = n + 1)
      {
        if (*v154 != v112)
        {
          objc_enumerationMutation(v152);
        }

        v115 = *(*(&v153 + 1) + 8 * n);
        v116 = objc_alloc_init(NSMutableArray);
        v117 = *(v54 + v110[825]);
        [v117 objectForKeyedSubscript:v115];
        v119 = v118 = v54;

        if (v119)
        {
          v120 = *(v118 + v110[825]);
          v121 = [v120 objectForKeyedSubscript:v115];
          [v116 addObjectsFromArray:v121];
        }

        v122 = v118[9];
        v123 = [v122 objectForKeyedSubscript:v115];

        if (v123)
        {
          v124 = v118[9];
          v125 = [v124 objectForKeyedSubscript:v115];
          [v116 addObjectsFromArray:v125];
        }

        v114 = v118[10];
        [v114 setObject:v116 forKeyedSubscript:v115];

        v54 = v118;
        v110 = &OBJC_IVAR___BTPResolver__sdRefResolve;
      }

      v111 = [v152 countByEnumeratingWithState:&v153 objects:v189 count:16];
    }

    while (v111);
  }

  if (qword_100229120 != -1)
  {
    dispatch_once(&qword_100229120, &stru_1001FB968);
  }

  v126 = qword_100229118;
  v127 = _NRLogIsLevelEnabled();

  if (v127)
  {
    if (qword_100229120 != -1)
    {
      dispatch_once(&qword_100229120, &stru_1001FB968);
    }

    v128 = qword_100229118;
    v133 = v54[10];
    _NRLogWithArgs();
  }

  sub_1000E2BCC(v54);
}

void sub_1000E6A34(id a1, void *a2)
{
  if (a2)
  {
    v3 = a2;
    v4 = v3;
    if (*(v3 + 3) != 1004 && v3[7] == a1)
    {
      if (qword_100229120 != -1)
      {
        dispatch_once(&qword_100229120, &stru_1001FB968);
      }

      if (_NRLogIsLevelEnabled())
      {
        if (qword_100229120 != -1)
        {
          dispatch_once(&qword_100229120, &stru_1001FB968);
        }

        _NRLogWithArgs();
      }

      v5 = v4[3];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1000E6B98;
      block[3] = &unk_1001FD3C8;
      v7 = v4;
      dispatch_async(v5, block);
    }
  }
}

uint64_t sub_1000E6B98(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (!v2)
  {
    goto LABEL_15;
  }

  v3 = *(v2 + 56);
  if (!v3 || (SCDynamicStoreSetDispatchQueue(v3, 0), (v2 = *(a1 + 32)) != 0) && ((v4 = *(v2 + 56)) == 0 || (CFRelease(v4), (v5 = *(a1 + 32)) != 0) && (*(v5 + 56) = 0, (v2 = *(a1 + 32)) != 0)))
  {
    v6 = *(v2 + 64);
  }

  else
  {
LABEL_15:
    v6 = 0;
  }

  [v6 removeAllObjects];
  v7 = *(a1 + 32);
  if (v7)
  {
    v8 = *(v7 + 72);
  }

  else
  {
    v8 = 0;
  }

  [v8 removeAllObjects];
  v9 = *(a1 + 32);
  if (v9)
  {
    v10 = *(v9 + 80);
  }

  else
  {
    v10 = 0;
  }

  [v10 removeAllObjects];
  v11 = *(a1 + 32);

  return sub_1000E5270(v11);
}

void sub_1000E6C74(uint64_t a1, void *a2, void *a3)
{
  if (a3)
  {
    v5 = a3;
    if (*(v5 + 3) != 1004 && *(v5 + 7) == a1)
    {
      v6 = v5;
      sub_1000E5864(v5, a2);
      v5 = v6;
    }
  }
}

void sub_1000E6CEC(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (a1)
  {
    if (v9)
    {
      v11 = &OBJC_IVAR___BTPResolver__sdRefResolve;
      v12 = [*(a1 + 88) objectForKeyedSubscript:v9];
      if (v7 && [v7 count])
      {
        if (v8)
        {
          v35 = a1;
          v36 = v10;
          if (!v12)
          {
            v12 = objc_alloc_init(NRDWiredPeer);
          }

          v41 = 0u;
          v42 = 0u;
          v39 = 0u;
          v40 = 0u;
          v37 = v7;
          obj = v7;
          v13 = [obj countByEnumeratingWithState:&v39 objects:v43 count:16];
          if (v13)
          {
            v14 = v13;
            v15 = *v40;
            do
            {
              for (i = 0; i != v14; i = i + 1)
              {
                if (*v40 != v15)
                {
                  objc_enumerationMutation(obj);
                }

                v18 = [*(*(&v39 + 1) + 8 * i) hostname];
                objc_opt_self();
                if (qword_100228E88 != -1)
                {
                  dispatch_once(&qword_100228E88, &stru_1001FA180);
                }

                v19 = qword_100228E80;
                v20 = @"62743";
                if (!v19)
                {
                  v20 = 0;
                }

                v21 = v20;
                v22 = [NWAddressEndpoint endpointWithHostname:v18 port:v21];

                v23 = [(NRDWiredPeer *)v12 interfaceToPeerAddressDictionary];
                v24 = [v23 objectForKeyedSubscript:v8];

                if (!v24 || ([v24 containsObject:v22] & 1) == 0)
                {
                  v25 = objc_alloc_init(NSMutableArray);
                  if ([v24 count])
                  {
                    [v25 addObjectsFromArray:v24];
                  }

                  [v25 addObject:v22];
                  v17 = [(NRDWiredPeer *)v12 interfaceToPeerAddressDictionary];
                  [v17 setObject:v25 forKeyedSubscript:v8];
                }
              }

              v14 = [obj countByEnumeratingWithState:&v39 objects:v43 count:16];
            }

            while (v14);
          }

          v10 = v36;
          v7 = v37;
          a1 = v35;
          v11 = &OBJC_IVAR___BTPResolver__sdRefResolve;
        }
      }

      else if (v8)
      {
        v26 = [(NRDWiredPeer *)v12 interfaceToPeerAddressDictionary];
        [v26 setObject:0 forKeyedSubscript:v8];
      }

      else
      {
        [(NRDWiredPeer *)v12 setInterfaceToPeerAddressDictionary:0];
      }

      v27 = [(NRDWiredPeer *)v12 interfaceToPeerAddressDictionary];
      v28 = [v27 count];

      if (v28)
      {
        v29 = v12;
      }

      else
      {
        v29 = 0;
      }

      [*(a1 + v11[828]) setObject:v29 forKeyedSubscript:v10];
      if (qword_100229120 != -1)
      {
        dispatch_once(&qword_100229120, &stru_1001FB968);
      }

      if (_NRLogIsLevelEnabled())
      {
        if (qword_100229120 != -1)
        {
          dispatch_once(&qword_100229120, &stru_1001FB968);
        }

        v30 = *(a1 + v11[828]);
        v31 = qword_100229118;
        _NRLogWithArgs();
      }

      sub_1000E710C(a1);
    }

    else
    {
      v32 = sub_1000E2538();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      if (IsLevelEnabled)
      {
        v34 = sub_1000E2538();
        _NRLogWithArgs();
      }
    }
  }
}

void sub_1000E710C(uint64_t a1)
{
  v2 = objc_alloc_init(NSMutableSet);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v3 = [*(a1 + 88) allValues];
  v4 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v16;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v16 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v15 + 1) + 8 * i);
        v9 = [v8 interfaceToPeerAddressDictionary];
        v10 = [v9 count];

        if (v10)
        {
          v11 = [v8 interfaceToPeerAddressDictionary];
          v12 = [v11 allKeys];
          [v2 addObjectsFromArray:v12];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v5);
  }

  if ([*(a1 + 48) isEqualToSet:v2])
  {
    v13 = sub_10016CD90();
    if ([v13 count])
    {
      sub_1000E2C58(a1, v13);
    }

    v14 = sub_10016CBA0();
    if ([v14 count])
    {
      sub_1000E2C58(a1, v14);
    }
  }

  else
  {
    objc_storeStrong((a1 + 48), v2);
    sub_1000E5270(a1);
  }
}

void sub_1000E7304(uint64_t a1)
{
  v2 = objc_alloc_init(NSMutableSet);
  v3 = SCNetworkInterfaceCopyAll();
  if (v3)
  {
    v4 = v3;
    Count = CFArrayGetCount(v3);
    if (Count >= 1)
    {
      v6 = Count;
      for (i = 0; i != v6; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v4, i);
        InterfaceType = SCNetworkInterfaceGetInterfaceType(ValueAtIndex);
        if (ValueAtIndex && CFStringCompare(InterfaceType, kSCNetworkInterfaceTypeEthernet, 0) == kCFCompareEqualTo)
        {
          BSDName = SCNetworkInterfaceGetBSDName(ValueAtIndex);
          Copy = CFStringCreateCopy(kCFAllocatorDefault, BSDName);
          [v2 addObject:Copy];
        }
      }
    }

    CFRelease(v4);
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000E7478;
  block[3] = &unk_1001FD088;
  v12 = *(a1 + 32);
  v15 = *(a1 + 40);
  v16 = v2;
  v17 = *(a1 + 48);
  v13 = v2;
  dispatch_async(v12, block);
}

void sub_1000E7478(uint64_t a1)
{
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  obj = *(a1 + 32);
  v2 = [obj countByEnumeratingWithState:&v32 objects:v37 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v33;
    p_vtable = (NRSCDInterfaceConfig + 24);
    v23 = *v33;
    do
    {
      v6 = 0;
      v24 = v3;
      do
      {
        if (*v33 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v7 = sub_100163A30((p_vtable + 37), *(*(&v32 + 1) + 8 * v6));
        v8 = v7;
        if (v7 && (*(v7 + 48) & 8) != 0)
        {
          v26 = v6;
          v30 = 0u;
          v31 = 0u;
          v28 = 0u;
          v29 = 0u;
          v27 = *(a1 + 40);
          v9 = [v27 countByEnumeratingWithState:&v28 objects:v36 count:16];
          if (v9)
          {
            v10 = v9;
            v11 = *v29;
            do
            {
              v12 = 0;
              do
              {
                if (*v29 != v11)
                {
                  objc_enumerationMutation(v27);
                }

                v14 = *(*(&v28 + 1) + 8 * v12);
                v15 = _SCNetworkInterfaceCreateWithBSDName();
                if (v15)
                {
                  v16 = v15;
                  if (_SCNetworkInterfaceIsCarPlay() || sub_10013A9E4(v14) == 1)
                  {
                    v17 = sub_100173200(v8);
                    v18 = *(a1 + 48);
                    v19 = *(v8 + 24);
                    sub_1000E6CEC(v18, v17, v14, v19);

                    v20 = *(a1 + 48);
                    if (v20 && *(v20 + 96))
                    {
                      goto LABEL_15;
                    }

                    v21 = objc_alloc_init(NSMutableSet);
                    v22 = *(a1 + 48);
                    if (v22)
                    {
                      objc_storeStrong((v22 + 96), v21);
                    }

                    v20 = *(a1 + 48);
                    if (v20)
                    {
LABEL_15:
                      v13 = *(v20 + 96);
                    }

                    else
                    {
                      v13 = 0;
                    }

                    [v13 addObject:{v14, v23}];
                  }

                  CFRelease(v16);
                }

                v12 = v12 + 1;
              }

              while (v10 != v12);
              v10 = [v27 countByEnumeratingWithState:&v28 objects:v36 count:16];
            }

            while (v10);
          }

          v4 = v23;
          v3 = v24;
          p_vtable = NRSCDInterfaceConfig.vtable;
          v6 = v26;
        }

        v6 = v6 + 1;
      }

      while (v6 != v3);
      v3 = [obj countByEnumeratingWithState:&v32 objects:v37 count:16];
    }

    while (v3);
  }
}

id sub_1000E7D20()
{
  if (qword_100229130 != -1)
  {
    dispatch_once(&qword_100229130, &stru_1001FB988);
  }

  v1 = qword_100229128;

  return v1;
}

void sub_1000E7D74(id a1)
{
  v1 = os_log_create("com.apple.networkrelay", "");
  v2 = qword_100229128;
  qword_100229128 = v1;

  _objc_release_x1(v1, v2);
}

id sub_1000E83DC()
{
  if (qword_100229160 != -1)
  {
    dispatch_once(&qword_100229160, &stru_1001FBC40);
  }

  v1 = qword_100229158;

  return v1;
}

void sub_1000E8430(id a1)
{
  v1 = os_log_create("com.apple.networkrelay", "");
  v2 = qword_100229158;
  qword_100229158 = v1;

  _objc_release_x1(v1, v2);
}

void sub_1000E8568(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 160) ikeClassDEstablished])
  {
    v4 = *(a1 + 656);
    if (v4)
    {
      v4 = v4[4];
    }

    v5 = v4;
    v6 = [v5 containsObject:v3];

    if (v6)
    {
      v7 = *(a1 + 656);
      v8 = v3;
      if (v7)
      {
        if (BYTE1(v7[1].isa))
        {
          v7 = 0;
        }

        else
        {
          objc_opt_self();
          if (qword_1002291A0 != -1)
          {
            dispatch_once(&qword_1002291A0, &stru_1001FBD88);
          }

          v7 = sub_10011E8EC(qword_100229198, v8);
        }
      }

      v9 = *(a1 + 656);
      v10 = v8;
      v11 = v10;
      if (!v9 || (*(v9 + 9) & 1) != 0)
      {

        v12 = 0;
LABEL_45:

        goto LABEL_46;
      }

      objc_opt_self();
      if (qword_1002291A0 != -1)
      {
        dispatch_once(&qword_1002291A0, &stru_1001FBD88);
      }

      v13 = qword_100229198;
      v14 = v11;
      v15 = v14;
      if (v13)
      {
        if (v14)
        {
          v16 = [*(v13 + 32) objectForKeyedSubscript:v14];
          v17 = v16;
          if (v16)
          {
            v12 = sub_1001198B4(*(v16 + 48));
LABEL_23:

LABEL_24:
            if (v7 && v12)
            {
              v20 = [NWAddressEndpoint endpointWithCEndpoint:v7];
              v21 = sub_100163A30(NRDLocalDevice, *(a1 + 96));
              v22 = [*(a1 + 688) objectForKeyedSubscript:v15];
              v47 = v21;
              if (v21)
              {
                v23 = *(v21 + 144);
              }

              else
              {
                v23 = 0;
              }

              v24 = v23;
              v25 = [v24 usesTLS];

              v46 = v20;
              if (v25)
              {
                if (v22)
                {
                  if ((*(v22 + 16) & 0x10) != 0)
                  {
                    v26 = 3;
                  }

                  else
                  {
                    v26 = 4;
                  }
                }

                else
                {
                  v26 = 4;
                }

                v27 = [*(a1 + 160) copyLocalOuterEndpoint:{v26, v42}];
                v28 = [v27 hostname];
                v29 = [v20 port];
                v30 = [NWAddressEndpoint endpointWithHostname:v28 port:v29];
              }

              else
              {
                v27 = [v20 port];
                v30 = sub_1001672A0(v47, v27);
              }

              v31 = [v30 port];
              v32 = sub_10013D308(v30, [v31 intValue], 0);

              v33 = objc_alloc_init(NSMutableData);
              v43 = [v15 dataUsingEncoding:4];
              NRTLVAddData();
              NRTLVAddData();
              NRTLVAddData();
              v44 = v32;
              if (v22)
              {
                v34 = *(v22 + 24);
              }

              else
              {
                v34 = 0;
              }

              v45 = v30;
              v35 = v34;

              if (v35)
              {
                v48[0] = 0;
                v48[1] = 0;
                if (v22)
                {
                  v36 = *(v22 + 24);
                }

                else
                {
                  v36 = 0;
                }

                v37 = v36;
                [v37 getUUIDBytes:v48];

                NRTLVAdd();
              }

              v38 = objc_alloc_init(NSMutableData);
              NRTLVAddData();
              v39 = sub_10002A50C([NRLinkDirectorMessage alloc], *(a1 + 96));
              sub_10002AB38(v39, 21, v38);
              sub_10002C0E8(v39);
              v40 = *(a1 + 656);
              v41 = v15;
              if (v40 && (*(v40 + 9) & 1) == 0)
              {
                [*(v40 + 32) removeObject:v41];
              }

              [*(a1 + 688) setObject:0 forKeyedSubscript:v41];
            }

            goto LABEL_45;
          }

LABEL_22:
          v12 = 0;
          goto LABEL_23;
        }

        v18 = sub_100119370();
        IsLevelEnabled = _NRLogIsLevelEnabled();

        if (IsLevelEnabled)
        {
          v17 = sub_100119370();
          v42 = "[NRApplicationServiceManager copyListenerPublicKeyForASName:]";
          _NRLogWithArgs();
          goto LABEL_22;
        }
      }

      v12 = 0;
      goto LABEL_24;
    }
  }

LABEL_46:
}

void sub_1000E8C70(uint64_t a1, int a2, int a3)
{
  if (a1)
  {
    v3 = a1;
    if (*(a1 + 656))
    {
      v6 = *(a1 + 664);
      if (!v6)
      {
        v7 = +[NSUUID UUID];
        v8 = *(v3 + 664);
        *(v3 + 664) = v7;

        v6 = *(v3 + 664);
      }

      v200[0] = 0;
      v200[1] = 0;
      [v6 getUUIDBytes:v200];
      v9 = *(v3 + 656);
      if (v9)
      {
        v9 = v9[2];
      }

      v10 = v9;
      v11 = [v10 count];

      v177 = v3;
      if (v11 && a2)
      {
        v190 = 0u;
        v191 = 0u;
        v188 = 0u;
        v189 = 0u;
        v12 = *(v3 + 656);
        v167 = a3;
        if (v12)
        {
          v12 = v12[2];
        }

        obj = v12;
        v13 = [obj countByEnumeratingWithState:&v188 objects:v199 count:16];
        if (v13)
        {
          v14 = v13;
          v178 = *v189;
          do
          {
            v15 = 0;
            v168 = v14;
            do
            {
              if (*v189 != v178)
              {
                objc_enumerationMutation(obj);
              }

              v19 = *(*(&v188 + 1) + 8 * v15);
              if (!sub_10011F034(*(v3 + 656), v19) || (v20 = *(v3 + 160)) != 0 && (v21 = v20, v22 = [*(v3 + 160) type], v21, v22 != 4))
              {
                [v19 UTF8String];
                application_service = nw_endpoint_create_application_service();
                sub_1000E9DD8(v3, application_service);
                v28 = [*(v3 + 160) ikeClassDEstablished];
                v29 = *(v3 + 656);
                v18 = v19;
                v16 = application_service;
                if (v28)
                {
                  if (v29 && (*(v29 + 9) & 1) == 0)
                  {
                    objc_opt_self();
                    if (qword_1002291A0 != -1)
                    {
                      dispatch_once(&qword_1002291A0, &stru_1001FBD88);
                    }

                    v30 = qword_100229198;
                    v173 = v18;
                    v17 = v18;
                    v31 = v16;
                    v32 = v31;
                    if (v30)
                    {
                      if (v31)
                      {
                        dispatch_assert_queue_V2(*(v30 + 16));
                        v33 = [*(v30 + 40) objectForKeyedSubscript:v17];
                        if ([v33 count])
                        {
                          v169 = v16;
                          v171 = v17;
                          v195 = 0u;
                          v196 = 0u;
                          v193 = 0u;
                          v194 = 0u;
                          v33 = v33;
                          v34 = [v33 countByEnumeratingWithState:&v193 objects:v202 count:16];
                          if (v34)
                          {
                            v35 = v34;
                            v36 = *v194;
                            do
                            {
                              for (i = 0; i != v35; i = i + 1)
                              {
                                if (*v194 != v36)
                                {
                                  objc_enumerationMutation(v33);
                                }

                                v38 = *(*(&v193 + 1) + 8 * i);
                                if (v38)
                                {
                                  if (!*(v38 + 72))
                                  {
                                    v39 = nw_array_create();
                                    objc_storeStrong((v38 + 72), v39);

                                    v40 = *(v38 + 72);
                                  }

                                  nw_array_append();
                                  v41 = *(v38 + 64);
                                  v42 = v41 + 16;
                                  v43 = *(v38 + 72);
                                }

                                else
                                {

                                  nw_array_append();
                                  v41 = 0;
                                  v43 = 0;
                                  v42 = 16;
                                }

                                (*v42)(v41, v43);
                              }

                              v35 = [v33 countByEnumeratingWithState:&v193 objects:v202 count:16];
                            }

                            while (v35);
                          }

                          v16 = v169;
                          v17 = v171;
                        }

LABEL_16:

                        v3 = v177;
                      }

                      else
                      {
                        v67 = sub_100119370();
                        IsLevelEnabled = _NRLogIsLevelEnabled();

                        if (IsLevelEnabled)
                        {
                          v33 = sub_100119370();
                          v163 = "[NRApplicationServiceManager reportBrowseResultAddedForASName:endpoint:]";
                          _NRLogWithArgs();
                          goto LABEL_16;
                        }
                      }
                    }

                    v14 = v168;
                    v18 = v173;
                  }

LABEL_19:
                  goto LABEL_20;
                }

                if (v29 && (*(v29 + 9) & 1) == 0)
                {
                  objc_opt_self();
                  if (qword_1002291A0 != -1)
                  {
                    dispatch_once(&qword_1002291A0, &stru_1001FBD88);
                  }

                  v44 = qword_100229198;
                  v172 = v18;
                  v45 = v16;
                  v46 = v45;
                  if (v44)
                  {
                    if (v45)
                    {
                      dispatch_assert_queue_V2(*(v44 + 16));
                      v47 = [*(v44 + 40) objectForKeyedSubscript:v172];
                      if ([v47 count])
                      {
                        v174 = v18;
                        v170 = v16;
                        v195 = 0u;
                        v196 = 0u;
                        v193 = 0u;
                        v194 = 0u;
                        v47 = v47;
                        v48 = [v47 countByEnumeratingWithState:&v193 objects:v202 count:16];
                        if (v48)
                        {
                          v49 = v48;
                          v50 = *v194;
                          do
                          {
                            for (j = 0; j != v49; j = j + 1)
                            {
                              if (*v194 != v50)
                              {
                                objc_enumerationMutation(v47);
                              }

                              v52 = *(*(&v193 + 1) + 8 * j);
                              if (v52 && *(v52 + 72))
                              {
                                nw_array_remove_object();
                                v53 = *(v52 + 64);
                                v53[2](v53, *(v52 + 72));
                              }
                            }

                            v49 = [v47 countByEnumeratingWithState:&v193 objects:v202 count:16];
                          }

                          while (v49);
                        }

                        v16 = v170;
                        v18 = v174;
                      }

LABEL_67:

                      v3 = v177;
                    }

                    else
                    {
                      v69 = sub_100119370();
                      v70 = _NRLogIsLevelEnabled();

                      if (v70)
                      {
                        v47 = sub_100119370();
                        v163 = "[NRApplicationServiceManager reportBrowseResultRemovedForASName:endpoint:]";
                        _NRLogWithArgs();
                        goto LABEL_67;
                      }
                    }
                  }

                  v14 = v168;
                }

                if (sub_10011F2E4(*(v3 + 656), v18))
                {
                  v54 = v18;
                  v55 = *(v3 + 96);
                  v56 = _NRCopyLogObjectForNRUUID();
                  v57 = _NRLogIsLevelEnabled();

                  if (v57)
                  {
                    v58 = *(v3 + 96);
                    v59 = _NRCopyLogObjectForNRUUID();
                    v165 = 9151;
                    v166 = v54;
                    v163 = "";
                    v164 = "[NRDDeviceConductor handleASEndpointChanged:handleASResolving:]";
                    _NRLogWithArgs();
                  }
                }

                else if (*(v3 + 56) == 1)
                {
                  v60 = v18;
                  v61 = *(v3 + 96);
                  v62 = _NRCopyLogObjectForNRUUID();
                  v63 = _NRLogIsLevelEnabled();

                  if (v63)
                  {
                    v64 = *(v3 + 96);
                    v65 = _NRCopyLogObjectForNRUUID();
                    v66 = *(v3 + 656);
                    if (v66)
                    {
                      v66 = v66[2];
                    }

                    v165 = 9153;
                    v166 = v66;
                    v163 = "";
                    v164 = "[NRDDeviceConductor handleASEndpointChanged:handleASResolving:]";
                    _NRLogWithArgs();
                  }

                  sub_1000E9F0C(v3, v60);
                  if ((*(v3 + 71) & 1) == 0)
                  {
                    *(v3 + 71) = 1;
                    [*(v3 + 224) assertAgentWithOptions:0];
                  }
                }

                goto LABEL_19;
              }

              v23 = *(v3 + 96);
              v24 = _NRCopyLogObjectForNRUUID();
              v25 = _NRLogIsLevelEnabled();

              if (v25)
              {
                v26 = *(v3 + 96);
                v16 = _NRCopyLogObjectForNRUUID();
                v165 = 9140;
                v166 = v19;
                v163 = "";
                v164 = "[NRDDeviceConductor handleASEndpointChanged:handleASResolving:]";
                _NRLogWithArgs();

                goto LABEL_19;
              }

LABEL_20:
              v15 = v15 + 1;
            }

            while (v15 != v14);
            v14 = [obj countByEnumeratingWithState:&v188 objects:v199 count:16];
          }

          while (v14);
        }

        a3 = v167;
      }

      v71 = *(v3 + 656);
      if (v71)
      {
        v71 = v71[3];
      }

      v72 = v71;
      v73 = [v72 count];

      if (v73 && a3)
      {
        v186 = 0u;
        v187 = 0u;
        v184 = 0u;
        v185 = 0u;
        v74 = *(v3 + 656);
        if (v74)
        {
          v74 = v74[3];
        }

        v75 = v74;
        v76 = [v75 countByEnumeratingWithState:&v184 objects:v198 count:16];
        if (v76)
        {
          v77 = v76;
          v78 = *v185;
          obja = v75;
          v179 = *v185;
          do
          {
            for (k = 0; k != v77; k = k + 1)
            {
              if (*v185 != v78)
              {
                objc_enumerationMutation(v75);
              }

              v82 = *(*(&v184 + 1) + 8 * k);
              if (sub_10011F034(*(v3 + 656), v82))
              {
                v83 = *(v3 + 160);
                if (!v83 || (v84 = v83, v85 = [*(v3 + 160) type], v84, v85 == 4))
                {
                  v86 = *(v3 + 96);
                  v87 = _NRCopyLogObjectForNRUUID();
                  v88 = _NRLogIsLevelEnabled();

                  if (v88)
                  {
                    v89 = *(v3 + 96);
                    v90 = _NRCopyLogObjectForNRUUID();
                    v165 = 9169;
                    v166 = v82;
                    v163 = "";
                    v164 = "[NRDDeviceConductor handleASEndpointChanged:handleASResolving:]";
                    _NRLogWithArgs();
                  }

                  continue;
                }
              }

              if (sub_10011EE44(*(v3 + 656), v82))
              {
                v91 = *(v3 + 96);
                v92 = _NRCopyLogObjectForNRUUID();
                v93 = _NRLogIsLevelEnabled();

                if (v93)
                {
                  v94 = *(v3 + 96);
                  v95 = _NRCopyLogObjectForNRUUID();
                  v165 = 9173;
                  v166 = v82;
                  v163 = "";
                  v164 = "[NRDDeviceConductor handleASEndpointChanged:handleASResolving:]";
                  _NRLogWithArgs();
                }

                v96 = *(v3 + 160);
                if ([v96 ikeClassDEstablished])
                {
                  v97 = [*(v3 + 160) ikeClassCEstablished];

                  if ((v97 & 1) == 0)
                  {
                    v98 = *(v3 + 96);
                    v99 = _NRCopyLogObjectForNRUUID();
                    v100 = _NRLogIsLevelEnabled();

                    if (v100)
                    {
                      v101 = *(v3 + 96);
                      v102 = _NRCopyLogObjectForNRUUID();
                      v165 = 9175;
                      v166 = v82;
                      v163 = "";
                      v164 = "[NRDDeviceConductor handleASEndpointChanged:handleASResolving:]";
                      _NRLogWithArgs();
                    }

                    *(v3 + 73) = 1;
                    continue;
                  }
                }

                else
                {
                }
              }

              if ([*(v3 + 160) ikeClassDEstablished])
              {
                v103 = v82;
                v104 = *(v3 + 656);
                v105 = v103;
                if (!v104 || (*(v104 + 9) & 1) != 0)
                {
                  goto LABEL_152;
                }

                objc_opt_self();
                if (qword_1002291A0 != -1)
                {
                  dispatch_once(&qword_1002291A0, &stru_1001FBD88);
                }

                v106 = qword_100229198;
                v107 = v105;
                if (!v106)
                {
                  goto LABEL_151;
                }

                v108 = [*(v106 + 48) objectForKeyedSubscript:v107];
                if (![v108 count])
                {
                  goto LABEL_150;
                }

                if (*(v106 + 8) == 1)
                {
                  if ((sub_10011E694(v106, v107) & 1) == 0)
                  {
                    goto LABEL_155;
                  }

LABEL_150:

LABEL_151:
                  v3 = v177;
LABEL_152:

                  v127 = *(v3 + 96);
                  v128 = _NRCopyLogObjectForNRUUID();
                  v129 = _NRLogIsLevelEnabled();

                  v78 = v179;
                  if (v129)
                  {
                    v130 = *(v177 + 96);
                    v131 = _NRCopyLogObjectForNRUUID();
                    v165 = 9357;
                    v166 = v105;
                    v163 = "";
                    v164 = "[NRDDeviceConductor sendResolveRequestForASName:]";
                    _NRLogWithArgs();
                    goto LABEL_95;
                  }
                }

                else
                {
                  v195 = 0u;
                  v196 = 0u;
                  v193 = 0u;
                  v194 = 0u;
                  v120 = v108;
                  v121 = [v120 countByEnumeratingWithState:&v193 objects:v202 count:16];
                  if (!v121)
                  {
LABEL_149:

                    v75 = obja;
                    goto LABEL_150;
                  }

                  v122 = v121;
                  v123 = *v194;
LABEL_136:
                  if (*v194 == v123)
                  {
                    v124 = *(&v193 + 1);
                    while (*v124 && *(*v124 + 64) == 1)
                    {
                      v124 += 8;
                      if (!--v122)
                      {
                        goto LABEL_148;
                      }
                    }
                  }

                  else
                  {
                    v125 = 0;
                    while (1)
                    {
                      if (*v194 != v123)
                      {
                        objc_enumerationMutation(v120);
                      }

                      v126 = *(*(&v193 + 1) + 8 * v125);
                      if (!v126 || (*(v126 + 64) & 1) == 0)
                      {
                        break;
                      }

                      if (v122 == ++v125)
                      {
LABEL_148:
                        v122 = [v120 countByEnumeratingWithState:&v193 objects:v202 count:16];
                        if (v122)
                        {
                          goto LABEL_136;
                        }

                        goto LABEL_149;
                      }
                    }
                  }

                  v75 = obja;
LABEL_155:

                  v132 = [*(v177 + 680) objectForKeyedSubscript:v107];

                  if (v132)
                  {
                    v133 = *(v177 + 96);
                    v134 = _NRCopyLogObjectForNRUUID();
                    v135 = _NRLogIsLevelEnabled();

                    v78 = v179;
                    if (!v135)
                    {
                      goto LABEL_96;
                    }

                    v136 = *(v177 + 96);
                    v131 = _NRCopyLogObjectForNRUUID();
                    v165 = 9361;
                    v166 = v107;
                    v163 = "";
                    v164 = "[NRDDeviceConductor sendResolveRequestForASName:]";
                    _NRLogWithArgs();
                  }

                  else
                  {
                    v131 = objc_alloc_init(NSMutableData);
                    v137 = [v107 dataUsingEncoding:4];
                    v138 = *(v177 + 656);
                    v139 = v107;
                    if (v138 && (*(v138 + 9) & 1) == 0)
                    {
                      objc_opt_self();
                      if (qword_1002291A0 != -1)
                      {
                        dispatch_once(&qword_1002291A0, &stru_1001FBD88);
                      }

                      v140 = sub_1001196E0(qword_100229198, v139);
                    }

                    else
                    {
                      v140 = 0;
                    }

                    if (![v140 count])
                    {
                      v141 = *(v177 + 96);
                      v142 = _NRCopyLogObjectForNRUUID();
                      v143 = _NRLogIsLevelEnabled();

                      if (v143)
                      {
                        v144 = *(v177 + 96);
                        v145 = _NRCopyLogObjectForNRUUID();
                        v165 = 9368;
                        v163 = "";
                        v164 = "[NRDDeviceConductor sendResolveRequestForASName:]";
                        _NRLogWithArgs();
                      }
                    }

                    NRTLVAddData();
                    v195 = 0u;
                    v196 = 0u;
                    v193 = 0u;
                    v194 = 0u;
                    v146 = v140;
                    v147 = [v146 countByEnumeratingWithState:&v193 objects:v202 count:16];
                    if (v147)
                    {
                      v148 = v147;
                      v149 = *v194;
                      do
                      {
                        for (m = 0; m != v148; m = m + 1)
                        {
                          if (*v194 != v149)
                          {
                            objc_enumerationMutation(v146);
                          }

                          v151 = *(*(&v193 + 1) + 8 * m);
                          NRTLVAddData();
                        }

                        v148 = [v146 countByEnumeratingWithState:&v193 objects:v202 count:16];
                      }

                      while (v148);
                    }

                    memset(out, 0, sizeof(out));
                    uuid_generate(out);
                    v152 = [[NSUUID alloc] initWithUUIDBytes:out];
                    [*(v177 + 680) setObject:v152 forKeyedSubscript:v139];

                    NRTLVAdd();
                    if (sub_10011EE44(*(v177 + 656), v139))
                    {
                      v192 = 0x1000000000000000;
                      NRTLVAdd();
                    }

                    v80 = objc_alloc_init(NSMutableData);
                    NRTLVAddData();
                    v81 = sub_10002A50C([NRLinkDirectorMessage alloc], *(v177 + 96));
                    sub_10002AB38(v81, 20, v80);
                    sub_10002C0E8(v81);

                    v75 = obja;
                    v78 = v179;
                  }

LABEL_95:
                }

LABEL_96:

                v3 = v177;
                continue;
              }

              if (sub_10011F2E4(*(v3 + 656), v82))
              {
                v109 = *(v3 + 96);
                v110 = _NRCopyLogObjectForNRUUID();
                v111 = _NRLogIsLevelEnabled();

                if (v111)
                {
                  v112 = *(v3 + 96);
                  v113 = _NRCopyLogObjectForNRUUID();
                  v165 = 9184;
                  v166 = v82;
                  v163 = "";
                  v164 = "[NRDDeviceConductor handleASEndpointChanged:handleASResolving:]";
                  _NRLogWithArgs();
                }
              }

              else if (*(v3 + 56) == 1)
              {
                v114 = *(v3 + 96);
                v115 = _NRCopyLogObjectForNRUUID();
                v116 = _NRLogIsLevelEnabled();

                if (v116)
                {
                  v117 = *(v3 + 96);
                  v118 = _NRCopyLogObjectForNRUUID();
                  v119 = *(v3 + 656);
                  if (v119)
                  {
                    v119 = v119[3];
                  }

                  v165 = 9186;
                  v166 = v119;
                  v163 = "";
                  v164 = "[NRDDeviceConductor handleASEndpointChanged:handleASResolving:]";
                  _NRLogWithArgs();
                }

                sub_1000E9F0C(v3, v82);
                if ((*(v3 + 72) & 1) == 0)
                {
                  *(v3 + 72) = 1;
                  [*(v3 + 224) assertAgentWithOptions:0];
                }
              }
            }

            v77 = [v75 countByEnumeratingWithState:&v184 objects:v198 count:16];
          }

          while (v77);
        }
      }

      v153 = *(v3 + 656);
      if (v153)
      {
        v153 = v153[4];
      }

      v154 = v153;
      v155 = [v154 count];

      if (v155 && [*(v3 + 160) ikeClassDEstablished])
      {
        v182 = 0u;
        v183 = 0u;
        v180 = 0u;
        v181 = 0u;
        v156 = *(v3 + 656);
        if (v156)
        {
          v156 = v156[4];
        }

        v157 = v156;
        v158 = [v157 copy];

        v159 = [v158 countByEnumeratingWithState:&v180 objects:v197 count:16];
        if (v159)
        {
          v160 = v159;
          v161 = *v181;
          do
          {
            for (n = 0; n != v160; n = n + 1)
            {
              if (*v181 != v161)
              {
                objc_enumerationMutation(v158);
              }

              sub_1000E8568(v3, *(*(&v180 + 1) + 8 * n));
            }

            v160 = [v158 countByEnumeratingWithState:&v180 objects:v197 count:16];
          }

          while (v160);
        }
      }
    }
  }
}

void sub_1000E9DD8(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!a1)
  {
    goto LABEL_19;
  }

  endpoint = v3;
  v4 = sub_100163A30(NRDLocalDevice, *(a1 + 96));
  if (nw_endpoint_get_type(endpoint) == (nw_endpoint_type_url|nw_endpoint_type_host))
  {
    if (v4)
    {
      v5 = *(v4 + 128);
    }

    else
    {
      v5 = 0;
    }

    v6 = v5;

    if (v6)
    {
      if (v4)
      {
        v7 = *(v4 + 128);
      }

      else
      {
        v7 = 0;
      }

      v8 = v7;
      [v8 UTF8String];
      nw_endpoint_set_device_name();
    }

    if (v4)
    {
      if (*(v4 + 9))
      {
        StringFromNRDeviceEndpointType = createStringFromNRDeviceEndpointType();
        [StringFromNRDeviceEndpointType UTF8String];
        nw_endpoint_set_device_model();
      }

      goto LABEL_13;
    }

LABEL_22:
    v10 = 0;
    goto LABEL_14;
  }

  if (!v4)
  {
    goto LABEL_22;
  }

LABEL_13:
  v10 = *(v4 + 40);
LABEL_14:
  v11 = v10;

  if (v11)
  {
    if (v4)
    {
      v12 = *(v4 + 40);
    }

    else
    {
      v12 = 0;
    }

    v13 = v12;
    [v13 UTF8String];
    nw_endpoint_set_device_id();
  }

  v3 = endpoint;
LABEL_19:
}

void sub_1000E9F0C(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(a1 + 656))
  {
    v35 = v3;
    dispatch_assert_queue_V2(*(a1 + 136));
    v4 = sub_100163A30(NRDLocalDevice, *(a1 + 96));
    v5 = v4;
    if (v4)
    {
      v6 = *(v4 + 144);
    }

    else
    {
      v6 = 0;
    }

    v7 = v6;
    v8 = [v7 getDefaultLinkSubtypeForLinkType:4];

    v9 = sub_1000EA2C8(a1, 4, v8);
    if (v9 && (sub_10011F034(*(a1 + 656), v35) & 1) == 0)
    {
      v10 = *(a1 + 656);
      v11 = v35;
      if (v10 && (*(v10 + 9) & 1) == 0)
      {
        objc_opt_self();
        if (qword_1002291A0 != -1)
        {
          dispatch_once(&qword_1002291A0, &stru_1001FBD88);
        }

        v12 = qword_100229198;
        v13 = v11;
        v14 = v13;
        if (v12)
        {
          if (v13)
          {
            v15 = objc_alloc_init(NSMutableSet);
            [v12[5] objectForKeyedSubscript:v14];
            v40 = 0u;
            v41 = 0u;
            v42 = 0u;
            v16 = v43 = 0u;
            v17 = [v16 countByEnumeratingWithState:&v40 objects:v45 count:16];
            if (v17)
            {
              v18 = v17;
              v19 = *v41;
              do
              {
                for (i = 0; i != v18; i = i + 1)
                {
                  if (*v41 != v19)
                  {
                    objc_enumerationMutation(v16);
                  }

                  v21 = *(*(&v40 + 1) + 8 * i);
                  if (v21 && *(v21 + 16))
                  {
                    [v15 addObject:?];
                  }
                }

                v18 = [v16 countByEnumeratingWithState:&v40 objects:v45 count:16];
              }

              while (v18);
            }

            [v12[6] objectForKeyedSubscript:v14];
            v36 = 0u;
            v37 = 0u;
            v38 = 0u;
            v22 = v39 = 0u;
            v23 = [v22 countByEnumeratingWithState:&v36 objects:v44 count:16];
            if (v23)
            {
              v24 = v23;
              v25 = *v37;
              do
              {
                for (j = 0; j != v24; j = j + 1)
                {
                  if (*v37 != v25)
                  {
                    objc_enumerationMutation(v22);
                  }

                  v27 = *(*(&v36 + 1) + 8 * j);
                  if (v27 && *(v27 + 16))
                  {
                    [v15 addObject:?];
                  }
                }

                v24 = [v22 countByEnumeratingWithState:&v36 objects:v44 count:16];
              }

              while (v24);
            }

            v12 = [v15 allObjects];
          }

          else
          {
            v31 = sub_100119370();
            IsLevelEnabled = _NRLogIsLevelEnabled();

            if (IsLevelEnabled)
            {
              v33 = sub_100119370();
              v34 = "[NRApplicationServiceManager copyClientDescriptionForASName:]";
              _NRLogWithArgs();
            }

            v12 = 0;
          }
        }
      }

      else
      {
        v12 = 0;
      }

      v28 = [v9 clients];

      if (!v28)
      {
        v29 = objc_alloc_init(NSMutableSet);
        [v9 setClients:v29];
      }

      v30 = [v9 clients];
      [v30 addObjectsFromArray:v12];
    }

    v3 = v35;
  }
}

id sub_1000EA2C8(uint64_t a1, int a2, int a3)
{
  if (!a1)
  {
    return 0;
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = *(a1 + 144);
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
LABEL_5:
    v9 = 0;
    while (1)
    {
      if (*v14 != v8)
      {
        objc_enumerationMutation(v5);
      }

      v10 = *(*(&v13 + 1) + 8 * v9);
      if ([v10 type] == a2 && objc_msgSend(v10, "subtype") == a3)
      {
        break;
      }

      if (v7 == ++v9)
      {
        v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (!v7)
        {
          goto LABEL_12;
        }

        goto LABEL_5;
      }
    }

    v11 = v10;
  }

  else
  {
LABEL_12:
    v11 = 0;
  }

  return v11;
}

void sub_1000EA6A0(uint64_t a1)
{
  if (*(a1 + 10) == 1)
  {
    v24 = v1;
    v25 = v2;
    dispatch_assert_queue_V2(*(a1 + 136));
    objc_opt_self();
    if (qword_1002290C0 != -1)
    {
      dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
    }

    v4 = qword_1002290B8;
    v5 = v4;
    if (v4)
    {
      v6 = *(v4 + 6);
    }

    else
    {
      v6 = 0;
    }

    v7 = v6;

    if (v7)
    {
      v8 = v7[8];
    }

    else
    {
      v8 = 0;
    }

    v9 = v8;

    if (v9)
    {
      v10 = sub_100163A30(NRDLocalDevice, *(a1 + 96));
      v11 = v10;
      if (v10)
      {
        v12 = *(v10 + 144);

        if (v12)
        {
          if ((v11[49] & 0x20) == 0)
          {
            v13 = *(a1 + 96);
            objc_opt_self();
            v14 = sub_100172CE0(NRDLocalDevice, v13, &off_100209ED8);

            if (v14)
            {
              if (sub_1000ED714(a1) == 2 && [v14 addressFamily] == 30)
              {
                v21 = 0uLL;
                v23 = 0;
                v22 = 0;
                sub_1001681A4(NRDLocalDevice, &v21, v14);
                if (BYTE8(v21) == 254 && (BYTE9(v21) & 0xC0) == 0x80)
                {
                  v15 = sub_1000EC630(a1);
                  if (v15)
                  {
                    v16 = v15[14];
                    if (v16)
                    {
                      LODWORD(v16) = *(v16 + 12);
                    }
                  }

                  else
                  {
                    LODWORD(v16) = 0;
                  }

                  v23 = v16;
                }

                if (!WORD1(v21))
                {
                  v17 = sub_100015954();
                  if (v17)
                  {
                    v18 = -2793;
                  }

                  else
                  {
                    v18 = 0;
                  }

                  WORD1(v21) = bswap32(v18) >> 16;
                }

                v19 = [NWAddressEndpoint endpointWithAddress:&v21];
                v20 = sub_1000EC630(a1);
                sub_10017EA30(v20, v19, *(a1 + 96));
              }
            }

            else
            {
              sub_1000ECF74(a1, 2u, 102);
            }
          }
        }
      }
    }
  }
}

void sub_1000EA900(uint64_t a1)
{
  if (a1 && *(a1 + 14) == 1 && *(a1 + 10) == 1)
  {
    if (*(a1 + 49) == 1 && (*(a1 + 53) & 1) == 0)
    {
      v3 = *(a1 + 96);
      v5 = _NRCopyLogObjectForNRUUID();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      if (!IsLevelEnabled)
      {
        return;
      }

      v7 = *(a1 + 96);
      v8 = _NRCopyLogObjectForNRUUID();
      _NRLogWithArgs();
    }

    else
    {
      v2 = objc_alloc_init(NRLinkDirectorRequest);
      if (v2)
      {
        v2->_type = 11;
        v2->_requiredLinkType = 1;
        *&v2->_attemptImmediately = 257;
      }

      v8 = v2;
      sub_1000EAA20(a1, v2);
    }
  }
}

void sub_1000EAA20(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    dispatch_assert_queue_V2(*(a1 + 136));
    v4 = *(a1 + 152);
    if (!v4)
    {
      v5 = objc_alloc_init(NSMutableArray);
      v6 = *(a1 + 152);
      *(a1 + 152) = v5;

      v4 = *(a1 + 152);
    }

    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v7 = v4;
    v8 = [v7 countByEnumeratingWithState:&v34 objects:v38 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = 0;
      v11 = *v35;
LABEL_6:
      v12 = 0;
      while (1)
      {
        v13 = v10;
        if (*v35 != v11)
        {
          objc_enumerationMutation(v7);
        }

        v10 = *(*(&v34 + 1) + 8 * v12);

        if (!v10)
        {
          break;
        }

        v14 = v10[10];
        if (v3)
        {
          goto LABEL_13;
        }

        if (!v10[10])
        {
          goto LABEL_22;
        }

LABEL_8:
        if (v9 == ++v12)
        {
          v9 = [v7 countByEnumeratingWithState:&v34 objects:v38 count:16];
          if (v9)
          {
            goto LABEL_6;
          }

          goto LABEL_20;
        }
      }

      if (!v3)
      {
        v10 = 0;
LABEL_22:

        v15 = *(a1 + 96);
        v16 = _NRCopyLogObjectForNRUUID();
        IsLevelEnabled = _NRLogIsLevelEnabled();

        if (IsLevelEnabled)
        {
          v18 = *(a1 + 96);
          v19 = _NRCopyLogObjectForNRUUID();
          v32 = 2965;
          v33 = v10;
          v30 = "";
          v31 = "[NRDDeviceConductor addRequest:]";
          _NRLogWithArgs();
        }

        [*(a1 + 152) removeObject:{v10, v30, v31, v32, v33, v34}];
        goto LABEL_25;
      }

      v14 = 0;
LABEL_13:
      if (v14 == v3[10] && v14 != 6)
      {
        goto LABEL_22;
      }

      goto LABEL_8;
    }

LABEL_20:

    v10 = 0;
LABEL_25:
    if (!v3)
    {
      goto LABEL_31;
    }

    if (v3[13] == 1)
    {
      sub_1000EAD24(a1, v3);
      if ((v3[12] & 1) == 0)
      {
        v20 = *(a1 + 96);
        v21 = _NRCopyLogObjectForNRUUID();
        v22 = _NRLogIsLevelEnabled();

        if (v22)
        {
          v23 = *(a1 + 96);
          v24 = _NRCopyLogObjectForNRUUID();
          v32 = 2972;
          v33 = v3;
          v30 = "";
          v31 = "[NRDDeviceConductor addRequest:]";
          _NRLogWithArgs();
        }
      }
    }

    if ((v3[12] & 1) == 0)
    {
LABEL_31:
      v25 = *(a1 + 96);
      v26 = _NRCopyLogObjectForNRUUID();
      v27 = _NRLogIsLevelEnabled();

      if (v27)
      {
        v28 = *(a1 + 96);
        v29 = _NRCopyLogObjectForNRUUID();
        v32 = 2977;
        v33 = v3;
        v30 = "";
        v31 = "[NRDDeviceConductor addRequest:]";
        _NRLogWithArgs();
      }

      [*(a1 + 152) addObject:{v3, v30, v31, v32, v33}];
    }
  }
}

void sub_1000EAD24(uint64_t a1, void *a2)
{
  v4 = a2;
  dispatch_assert_queue_V2(*(a1 + 136));
  if (!v4 || !*(v4 + 11) || (*(v4 + 10) & 0xFE) == 6 && v4[4] || !sub_1000EC4F0(a1, *(v4 + 11)))
  {
    v12 = *(a1 + 96);
    v13 = _NRCopyLogObjectForNRUUID();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v15 = *(a1 + 96);
      v16 = _NRCopyLogObjectForNRUUID();
      _NRLogWithArgs();
    }

    if (v4)
    {
      v17 = v4[2];
    }

    else
    {
      v17 = 0;
    }

    v18 = v17;

    v206 = a1;
    v207 = v4;
    if (v18)
    {
      v234 = 0u;
      v235 = 0u;
      v232 = 0u;
      v233 = 0u;
      v19 = *(a1 + 144);
      v20 = [v19 countByEnumeratingWithState:&v232 objects:v241 count:16];
      if (v20)
      {
        v21 = *v233;
        do
        {
          for (i = 0; i != v20; i = i + 1)
          {
            if (*v233 != v21)
            {
              objc_enumerationMutation(v19);
            }

            v23 = v207;
            if (v207)
            {
              v23 = v207[2];
            }

            v2 = *(*(&v232 + 1) + 8 * i);
            v24 = v23;
            v25 = +[NSNumber numberWithUnsignedChar:](NSNumber, "numberWithUnsignedChar:", [v2 type]);
            if ([v24 containsObject:v25])
            {
              v26 = [v2 state] == 8;

              if (v26)
              {
                v204 = v2;
                goto LABEL_32;
              }
            }

            else
            {
            }
          }

          v20 = [v19 countByEnumeratingWithState:&v232 objects:v241 count:16];
        }

        while (v20);
      }

      v204 = 0;
LABEL_32:

      a1 = v206;
      v4 = v207;
      goto LABEL_33;
    }

    if (v4)
    {
      if (*(v4 + 9))
      {
        if ([*(a1 + 160) type] == *(v4 + 9))
        {
          v204 = *(a1 + 160);
        }

        else
        {
          v204 = 0;
        }

        goto LABEL_33;
      }

      if (*(v4 + 8))
      {
        v230 = 0u;
        v231 = 0u;
        v228 = 0u;
        v229 = 0u;
        v37 = *(a1 + 144);
        v38 = [v37 countByEnumeratingWithState:&v228 objects:v240 count:16];
        if (!v38)
        {
          goto LABEL_70;
        }

        v39 = *v229;
LABEL_60:
        v40 = 0;
        while (1)
        {
          if (*v229 != v39)
          {
            objc_enumerationMutation(v37);
          }

          v2 = *(*(&v228 + 1) + 8 * v40);
          if ([v2 type] == *(v207 + 8) && (objc_msgSend(v2, "state") == 8 || *(v207 + 14) == 1 && objc_msgSend(v2, "state") == 9))
          {
            break;
          }

          if (v38 == ++v40)
          {
            v38 = [v37 countByEnumeratingWithState:&v228 objects:v240 count:16];
            if (!v38)
            {
LABEL_70:

              a1 = v206;
              goto LABEL_140;
            }

            goto LABEL_60;
          }
        }

        v204 = v2;

        a1 = v206;
        v4 = v207;
        if (v204)
        {
LABEL_33:
          v203 = sub_100163A30(NRDLocalDevice, *(a1 + 96));
          v27 = v207;
          if (v4)
          {
            v28 = *(v207 + 10);
            v2 = 1;
            if (v28 > 5)
            {
              if (*(v207 + 10) <= 8u)
              {
                if (v28 - 6 < 2)
                {
                  if (v204)
                  {
                    if (!*(v207 + 11) || (v27 = v207, !sub_1000EC4F0(v206, *(v207 + 11))))
                    {
                      v89 = v27 + 7;
                      v90 = v27[7];
                      v91 = v90 == 0;

                      if (!v91)
                      {
                        v92 = *(v206 + 96);
                        v93 = _NRCopyLogObjectForNRUUID();
                        v94 = _NRLogIsLevelEnabled();

                        if (v94)
                        {
                          v95 = *(v206 + 96);
                          v96 = _NRCopyLogObjectForNRUUID();
                          _NRLogWithArgs();
                        }

                        v97 = *v89;
                        dispatch_source_cancel(v97);

                        objc_storeStrong(v89, 0);
                      }

                      *(v207 + 12) = 1;
                      v98 = v207[3];

                      if (v98)
                      {
                        v99 = v207[3];
                        v99[2]();
                      }

                      goto LABEL_138;
                    }

                    v29 = v207[7];
                    v30 = v29 == 0;

                    v27 = v207;
                    if (!v30)
                    {
                      v204 = 0;
LABEL_284:

                      goto LABEL_285;
                    }
                  }

                  v84 = v27[7];
                  v83 = v27 + 7;
                  v85 = v84;
                  v86 = v85 == 0;

                  if (v86)
                  {
                    v87 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, *(v206 + 136));
                    v88 = dispatch_time(0x8000000000000000, 1000000000 * v207[4]);
                    dispatch_source_set_timer(v87, v88, 0xFFFFFFFFFFFFFFFFLL, 0);
                    objc_initWeak(v223, v207);
                    v208[0] = _NSConcreteStackBlock;
                    v208[1] = 3221225472;
                    v208[2] = sub_1000ECE2C;
                    v208[3] = &unk_1001FD0D8;
                    objc_copyWeak(&v209, v223);
                    v208[4] = v206;
                    dispatch_source_set_event_handler(v87, v208);
                    dispatch_resume(v87);
                    objc_storeStrong(v83, v87);
                    objc_destroyWeak(&v209);
                    objc_destroyWeak(v223);
                  }

                  v204 = 0;
LABEL_138:
                  LODWORD(v2) = 0;
LABEL_272:
                  v27 = v207;
                  goto LABEL_273;
                }

                if (v28 != 8)
                {
                  goto LABEL_273;
                }

                goto LABEL_105;
              }

              if (v28 - 9 < 2)
              {
                v33 = *(v207 + 10);
                v34 = sub_10002A50C([NRLinkDirectorMessage alloc], *(v206 + 96));
                v205 = v34;
                v35 = v34;
                if (v34)
                {
                  objc_storeStrong(v34 + 3, v204);
                  v35 = v205;
                }

                if (!v203 || v203[8] <= 0x11u)
                {
                  if (v35)
                  {
                    LOBYTE(v223[0]) = v33 == 9;
                    v36 = [[NSData alloc] initWithBytes:v223 length:1];
                    sub_10002AB38(v205, 7, v36);
                  }

                  goto LABEL_173;
                }

                if (v35)
                {
                  *(v35 + 8) = 1;
                }

                BYTE4(v223[0]) = 0;
                LODWORD(v223[0]) = 0;
                *(v223 + 5) = 0x1000000;
                if (v33 == 9)
                {
                  LOBYTE(v223[0]) = 1;
                  v75 = *(v206 + 472);
                }

                else
                {
                  v75 = 0;
                }

                v108 = [[NSMutableData alloc] initWithBytes:v223 length:9];
                v212 = 0u;
                v213 = 0u;
                v210 = 0u;
                v211 = 0u;
                v109 = v75;
                v110 = [v109 countByEnumeratingWithState:&v210 objects:v236 count:16];
                if (!v110)
                {
LABEL_172:

                  sub_10002AB38(v205, 13, v108);
LABEL_173:
                  if (sub_10002C0E8(v205))
                  {
                    *(v207 + 12) = 1;
                    v117 = "Successfully sent";
                  }

                  else
                  {
                    v117 = "Failed to send";
                  }

                  v118 = [NSNumber numberWithBool:v33 == 9];
                  sub_1000EC910(v206, 1020, @"%s prefer Wi-Fi ack %@", v119, v120, v121, v122, v123, v117);
LABEL_270:

                  goto LABEL_271;
                }

                v111 = *v211;
LABEL_148:
                v112 = 0;
                while (1)
                {
                  if (*v211 != v111)
                  {
                    objc_enumerationMutation(v109);
                  }

                  v113 = *(*(&v210 + 1) + 8 * v112);
                  v114 = [v113 unsignedCharValue];
                  if (v114 > 103)
                  {
                    switch(v114)
                    {
                      case 'y':
                        LOBYTE(v115) = 8;
                        break;
                      case 'x':
                        LOBYTE(v115) = 1;
                        break;
                      case 'h':
                        LOBYTE(v115) = 7;
                        break;
                      default:
LABEL_163:
                        v222 = 0;
                        v116 = [v113 unsignedCharValue];
                        v115 = 0x40300020100uLL >> (8 * (v116 & 0x1F));
                        if (v116 >= 6)
                        {
                          LOBYTE(v115) = 0;
                        }

                        break;
                    }
                  }

                  else
                  {
                    switch(v114)
                    {
                      case 'e':
                        LOBYTE(v115) = 2;
                        break;
                      case 'f':
                        LOBYTE(v115) = 5;
                        break;
                      case 'g':
                        LOBYTE(v115) = 6;
                        break;
                      default:
                        goto LABEL_163;
                    }
                  }

                  v222 = v115;
                  if ([v113 unsignedCharValue] == 102)
                  {
                    sub_1000EC998(v206, v205);
                  }

                  if (v222)
                  {
                    NRTLVAdd();
                  }

                  if (v110 == ++v112)
                  {
                    v110 = [v109 countByEnumeratingWithState:&v210 objects:v236 count:16];
                    if (!v110)
                    {
                      goto LABEL_172;
                    }

                    goto LABEL_148;
                  }
                }
              }

              if (v28 != 11 || *(v206 + 10) != 1)
              {
LABEL_273:
                v190 = *(v27 + 12);
                v191 = *(v206 + 96);
                v192 = _NRCopyLogObjectForNRUUID();
                v193 = _NRLogIsLevelEnabled();

                if (v190)
                {
                  if (v193)
                  {
                    v194 = *(v206 + 96);
                    v195 = _NRCopyLogObjectForNRUUID();
                    _NRLogWithArgs();
                  }

                  v196 = v207[6];
                  if (v196)
                  {
                    v197 = v2;
                  }

                  else
                  {
                    v197 = 0;
                  }

                  if (!v197)
                  {
                    goto LABEL_284;
                  }

                  v198 = v207[6];
                  v198[2]();
                }

                else
                {
                  if (!v193)
                  {
                    goto LABEL_284;
                  }

                  v199 = *(v206 + 96);
                  v198 = _NRCopyLogObjectForNRUUID();
                  _NRLogWithArgs();
                }

                goto LABEL_284;
              }

              v73 = sub_10002A50C([NRLinkDirectorMessage alloc], *(v206 + 96));
              v2 = v73;
              if (v73)
              {
                objc_storeStrong(v73 + 3, v204);
              }

              sub_1000EC998(v206, v2);
              if (sub_10002C0E8(v2))
              {
                *(v207 + 12) = 1;
                v74 = "Successfully sent";
LABEL_196:
                dispatch_assert_queue_V2(*(v206 + 136));
                objc_opt_self();
                if (qword_1002290C0 != -1)
                {
                  dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
                }

                v132 = qword_1002290B8;
                v133 = v132;
                if (v132)
                {
                  v134 = *(v132 + 6);
                }

                else
                {
                  v134 = 0;
                }

                v135 = v134;

                if (v135)
                {
                  v136 = v135[8];
                }

                else
                {
                  v136 = 0;
                }

                v200 = v136;
                sub_1000EC910(v206, 1040, @"%s AWDL address update %@", v137, v138, v139, v140, v141, v74);

                goto LABEL_271;
              }

LABEL_195:
              v74 = "Failed to send";
              goto LABEL_196;
            }

            if (*(v207 + 10) > 3u)
            {
LABEL_105:
              if (v204)
              {
                *(v207 + 12) = 1;
              }

              else
              {
                v204 = 0;
              }

              goto LABEL_273;
            }

            if (v28 - 2 < 2)
            {
              v202 = *(v207 + 10);
              v205 = sub_10002A50C([NRLinkDirectorMessage alloc], *(v206 + 96));
              v31 = v205;
              if (v205)
              {
                objc_storeStrong(v205 + 3, v204);
                v31 = v205;
              }

              if (!v203 || v203[8] <= 0x11u)
              {
                if (v31)
                {
                  LOBYTE(v223[0]) = v202 == 2;
                  v32 = [[NSData alloc] initWithBytes:v223 length:1];
                  sub_10002AB38(v205, 5, v32);
                }

                goto LABEL_263;
              }

              memset(v223, 0, 9);
              *(v223 + 1) = bswap32(arc4random_uniform(0xFFFFFFFF));
              if (v202 != 2)
              {
                v76 = 0;
                goto LABEL_225;
              }

              LOBYTE(v223[0]) = 1;
              v76 = objc_alloc_init(NSMutableArray);
              v222 = 0;
              v77 = v206;
              if (*(v206 + 10) == 1)
              {
                v78 = sub_1000BA648();
                v79 = v78;
                if (v78)
                {
                  v80 = *(v78 + 12);
                }

                else
                {
                  v80 = 0;
                }

                v81 = v80;
                *(v206 + 54) = sub_10007401C(v81, &v222);

                v77 = v206;
              }

              if (v77[54] != 1)
              {
                goto LABEL_219;
              }

              v82 = v77[51];
              if (v77[10])
              {
                if ((v77[51] & 1) == 0)
                {
LABEL_215:
                  sub_1000EC998(v77, v205);
                  [v76 addObject:&off_100209C38];
                  v77 = v206;
                  if (*(v206 + 54))
                  {
LABEL_216:
                    v154 = sub_1000EC630(v77);
                    v155 = v154;
                    if (v154)
                    {
                      v156 = *(v154 + 56);
                    }

                    else
                    {
                      v156 = 0;
                    }

                    v157 = v156;
                    v158 = v157 == 0;

                    if (v158)
                    {
LABEL_225:
                      if (v205)
                      {
                        *(v205 + 8) = 1;
                      }

                      v159 = [[NSMutableData alloc] initWithBytes:v223 length:9];
                      v160 = objc_alloc_init(NSMutableString);
                      v220 = 0u;
                      v221 = 0u;
                      v218 = 0u;
                      v219 = 0u;
                      v161 = v76;
                      v162 = [v161 countByEnumeratingWithState:&v218 objects:v238 count:16];
                      if (v162)
                      {
                        v163 = *v219;
                        do
                        {
                          for (j = 0; j != v162; j = j + 1)
                          {
                            if (*v219 != v163)
                            {
                              objc_enumerationMutation(v161);
                            }

                            v165 = *(*(&v218 + 1) + 8 * j);
                            v166 = [v160 length] == 0;
                            [v165 unsignedCharValue];
                            ShortStringFromNRLinkSubtype = createShortStringFromNRLinkSubtype();
                            v168 = ShortStringFromNRLinkSubtype;
                            if (v166)
                            {
                              [v160 appendString:ShortStringFromNRLinkSubtype];
                            }

                            else
                            {
                              [v160 appendFormat:@"/%@", ShortStringFromNRLinkSubtype];
                            }
                          }

                          v162 = [v161 countByEnumeratingWithState:&v218 objects:v238 count:16];
                        }

                        while (v162);
                      }

                      sub_1000EC910(v206, 1050, @"send req %d %@", v169, v170, v171, v172, v173, v202 == 2);
                      v216 = 0u;
                      v217 = 0u;
                      v214 = 0u;
                      v215 = 0u;
                      v174 = v161;
                      v175 = [v174 countByEnumeratingWithState:&v214 objects:v237 count:16];
                      if (!v175)
                      {
LABEL_262:

                        sub_10002AB38(v205, 13, v159);
LABEL_263:
                        v182 = sub_10002C0E8(v205);
                        if (v182)
                        {
                          *(v207 + 12) = 1;
                          v183 = "Successfully sent";
                        }

                        else
                        {
                          v183 = "Failed to send";
                        }

                        if (v202 == 2)
                        {
                          v184 = v182;
                        }

                        else
                        {
                          v184 = 0;
                        }

                        *(v206 + 16) = v184;
                        v118 = [NSNumber numberWithBool:v202 == 2];
                        sub_1000EC910(v206, 1008, @"%s prefer Wi-Fi request %@", v185, v186, v187, v188, v189, v183);
                        goto LABEL_270;
                      }

                      v176 = *v215;
LABEL_239:
                      v177 = 0;
                      while (1)
                      {
                        if (*v215 != v176)
                        {
                          objc_enumerationMutation(v174);
                        }

                        v179 = *(*(&v214 + 1) + 8 * v177);
                        v180 = [v179 unsignedCharValue];
                        if (v180 > 103)
                        {
                          switch(v180)
                          {
                            case 'y':
                              v178 = 8;
                              break;
                            case 'x':
                              v178 = 1;
                              break;
                            case 'h':
                              v178 = 7;
                              break;
                            default:
LABEL_256:
                              v222 = 0;
                              v181 = [v179 unsignedCharValue];
                              if (v181 > 5)
                              {
                                goto LABEL_243;
                              }

                              v222 = 0x40300020100uLL >> (8 * (v181 & 0x1F));
                              if (!v222)
                              {
                                goto LABEL_243;
                              }

                              goto LABEL_242;
                          }
                        }

                        else
                        {
                          switch(v180)
                          {
                            case 'e':
                              v178 = 2;
                              break;
                            case 'f':
                              v178 = 5;
                              break;
                            case 'g':
                              v178 = 6;
                              break;
                            default:
                              goto LABEL_256;
                          }
                        }

                        v222 = v178;
LABEL_242:
                        NRTLVAdd();
LABEL_243:
                        if (v175 == ++v177)
                        {
                          v175 = [v174 countByEnumeratingWithState:&v214 objects:v237 count:16];
                          if (!v175)
                          {
                            goto LABEL_262;
                          }

                          goto LABEL_239;
                        }
                      }
                    }
                  }

LABEL_219:
                  if (!v222)
                  {
                    [v76 insertObject:&off_100209C98 atIndex:0];
                    goto LABEL_225;
                  }

                  goto LABEL_224;
                }
              }

              else if ((v77[51] & 1) == 0)
              {
LABEL_224:
                [v76 addObject:&off_100209C98];
                goto LABEL_225;
              }

              [v76 addObject:&off_100209CB0];
              v77 = v206;
              if ((*(v206 + 54) & 1) == 0)
              {
                goto LABEL_219;
              }

              if ((*(v206 + 10) & 1) == 0)
              {
                goto LABEL_216;
              }

              goto LABEL_215;
            }

            if (v28 == 1)
            {
              if (*(v206 + 45) != 1)
              {
                goto LABEL_273;
              }

              objc_opt_self();
              if (qword_1002290C0 != -1)
              {
                dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
              }

              v41 = qword_1002290B8;
              v42 = v41;
              if (v41)
              {
                v43 = *(v41 + 6);
                if (v43)
                {
                  v43 = v43[7];
                }

                v44 = v43;
              }

              else
              {
                v44 = 0;
              }

              dispatch_assert_queue_V2(*(v206 + 136));
              objc_opt_self();
              if (qword_1002290C0 != -1)
              {
                dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
              }

              v45 = qword_1002290B8;
              v46 = v45;
              if (v45)
              {
                v47 = *(v45 + 6);
                if (v47)
                {
                  v47 = v47[7];
                }

                v48 = v47;
              }

              else
              {
                v48 = 0;
              }

              v49 = [*(v206 + 168) isEqual:v48];
              if (v49 && (*(v206 + 25) & 1) == 0)
              {
                v149 = *(v206 + 96);
                v150 = _NRCopyLogObjectForNRUUID();
                v151 = _NRLogIsLevelEnabled();

                if (v151)
                {
LABEL_210:
                  v152 = *(v206 + 96);
                  v153 = _NRCopyLogObjectForNRUUID();
                  _NRLogWithArgs();
                }
              }

              else
              {
                if (v44)
                {
                  v50 = sub_10002A50C([NRLinkDirectorMessage alloc], *(v206 + 96));
                  sub_10002D42C(v50, v204);
                  v51 = sub_100015954();
                  v52 = v51;
                  if (v50)
                  {
                    if (v51)
                    {
                      v53 = 62743;
                    }

                    else
                    {
                      v53 = 0;
                    }

                    sub_10002B038(v50, v44, v53, 0);
                  }

                  v54 = sub_1000EC630(v206);
                  v55 = v54;
                  if (v54)
                  {
                    v56 = *(v54 + 80);
                  }

                  else
                  {
                    v56 = 0;
                  }

                  v57 = v56;
                  v58 = v57 == 0;

                  if (!v58)
                  {
                    v59 = sub_1000EC630(v206);
                    v60 = v59;
                    if (v59)
                    {
                      v61 = *(v59 + 80);
                    }

                    else
                    {
                      v61 = 0;
                    }

                    v62 = v61;
                    sub_10002AB38(v50, 4, v62);
                  }

                  if (sub_10002C0E8(v50))
                  {
                    *(v207 + 12) = 1;
                    sub_1000EC6D4(v206, v44);
                    v68 = sub_1000EC630(v206);
                    v69 = v68;
                    if (v68)
                    {
                      v70 = *(v68 + 80);
                    }

                    else
                    {
                      v70 = 0;
                    }

                    v71 = v70;
                    sub_1000EC804(v206, v71);

                    v72 = "Successfully sent";
                  }

                  else
                  {
                    v72 = "Failed to send";
                  }

                  v201 = *(v206 + 168);
                  sub_1000EC910(v206, 1010, @"%s Wi-Fi address update %@", v63, v64, v65, v66, v67, v72);

                  goto LABEL_223;
                }

                v142 = *(v206 + 96);
                v143 = _NRCopyLogObjectForNRUUID();
                v144 = _NRLogIsLevelEnabled();

                if (v144)
                {
                  goto LABEL_210;
                }
              }

              *(v207 + 12) = 1;
LABEL_223:

LABEL_271:
              LODWORD(v2) = 1;
              goto LABEL_272;
            }

            if (*(v207 + 10))
            {
              goto LABEL_273;
            }
          }

          v127 = sub_1000E83DC();
          v128 = _NRLogIsLevelEnabled();

          if (v128)
          {
            v129 = sub_1000E83DC();
            _NRLogWithArgs();
          }

          _os_log_pack_size();
          __chkstk_darwin();
          v130 = *__error();
          v131 = _os_log_pack_fill();
          *v131 = 136446210;
          *(v131 + 4) = "[NRDDeviceConductor processRequest:]";
          sub_1000E83DC();
          _NRLogAbortWithPack();
          __break(1u);
          goto LABEL_195;
        }

LABEL_140:
        v100 = *(a1 + 96);
        v101 = _NRCopyLogObjectForNRUUID();
        v102 = _NRLogIsLevelEnabled();

        v4 = v207;
        if (!v102)
        {
          goto LABEL_286;
        }

        v103 = *(v206 + 96);
        v204 = _NRCopyLogObjectForNRUUID();
        _NRLogWithArgs();
LABEL_285:

        v4 = v207;
        goto LABEL_286;
      }
    }

    v104 = *(a1 + 160);
    if (v104 && (v105 = v104, v106 = [*(a1 + 160) state], v105, v106 == 8))
    {
      v107 = *(a1 + 160);
    }

    else
    {
      if (!v4 || *(v4 + 14) != 1)
      {
LABEL_207:
        v145 = *(a1 + 96);
        v146 = _NRCopyLogObjectForNRUUID();
        v147 = _NRLogIsLevelEnabled();

        v4 = v207;
        if (!v147)
        {
          goto LABEL_286;
        }

        v148 = *(v206 + 96);
        v204 = _NRCopyLogObjectForNRUUID();
        _NRLogWithArgs();
        goto LABEL_285;
      }

      v226 = 0u;
      v227 = 0u;
      v224 = 0u;
      v225 = 0u;
      v124 = *(a1 + 144);
      v107 = [v124 countByEnumeratingWithState:&v224 objects:v239 count:16];
      if (v107)
      {
        v125 = *v225;
        do
        {
          for (k = 0; k != v107; k = k + 1)
          {
            if (*v225 != v125)
            {
              objc_enumerationMutation(v124);
            }

            v2 = *(*(&v224 + 1) + 8 * k);
            if ([v2 state] == 9 && objc_msgSend(v2, "type") != 4)
            {
              v107 = v2;
              goto LABEL_205;
            }
          }

          v107 = [v124 countByEnumeratingWithState:&v224 objects:v239 count:16];
        }

        while (v107);
      }

LABEL_205:

      a1 = v206;
      v4 = v207;
    }

    v204 = v107;
    if (v107)
    {
      goto LABEL_33;
    }

    goto LABEL_207;
  }

  v5 = *(a1 + 96);
  v6 = _NRCopyLogObjectForNRUUID();
  v7 = _NRLogIsLevelEnabled();

  if (v7)
  {
    v8 = *(a1 + 96);
    v9 = _NRCopyLogObjectForNRUUID();
    v10 = *(v4 + 11);
    if (v10 > 0xB)
    {
      v11 = @"Unknown";
    }

    else
    {
      v11 = [[NSString alloc] initWithUTF8String:(&off_1001FC2A0)[v10]];
    }

    _NRLogWithArgs();
  }

LABEL_286:
}