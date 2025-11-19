void sub_100151FF0(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (a1)
  {
    v10 = nw_parameters_copy_required_interface(v8);
    v11 = v10;
    if (v10)
    {
      v12 = sub_10014BB24(v10);
    }

    else
    {
      v12 = 0;
    }

    objc_initWeak(&location, a1);
    v13 = nw_resolver_create_with_endpoint();
    v14 = *(a1 + 40);
    objc_copyWeak(&v31, &location);
    v32 = v12;
    v15 = v13;
    v29 = v8;
    v30 = v9;
    v16 = v11;
    nw_resolver_set_update_handler();

    v17 = *(a1 + 176);
    if (!v17)
    {
      v18 = objc_alloc_init(NSMutableDictionary);
      v19 = *(a1 + 176);
      *(a1 + 176) = v18;

      v17 = *(a1 + 176);
      if (!v17)
      {
        goto LABEL_8;
      }
    }

    v20 = [NSNumber numberWithUnsignedChar:v12];
    v21 = [v17 objectForKeyedSubscript:v20];

    if (!v21)
    {
LABEL_8:
      v21 = objc_alloc_init(NSMutableArray);
    }

    [v21 addObject:v15];
    v22 = *(a1 + 176);
    v23 = [NSNumber numberWithUnsignedChar:v12];
    [v22 setObject:v21 forKeyedSubscript:v23];

    v24 = *(a1 + 24);
    v25 = _NRCopyLogObjectForNRUUID();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v27 = *(a1 + 24);
      v28 = _NRCopyLogObjectForNRUUID();
      _NRLogWithArgs();
    }

    objc_destroyWeak(&v31);
    objc_destroyWeak(&location);
  }
}

void sub_1001522A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  objc_destroyWeak(va);
  objc_destroyWeak((v14 - 88));
  _Unwind_Resume(a1);
}

void sub_1001522D0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v6 = WeakRetained;
  if (WeakRetained)
  {
    v7 = WeakRetained[22];
    if (v7)
    {
      v8 = [NSNumber numberWithUnsignedChar:*(a1 + 72)];
      v7 = [v7 objectForKeyedSubscript:v8];
    }

    if (*(v6 + 21) & 1) == 0 && ([v7 containsObject:*(a1 + 32)])
    {
      v9 = *(v6 + 3);
      v10 = _NRCopyLogObjectForNRUUID();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      if (IsLevelEnabled)
      {
        v12 = *(v6 + 3);
        v13 = _NRCopyLogObjectForNRUUID();
        v19 = *(a1 + 32);
        _NRLogWithArgs();
      }

      if (nw_array_get_count())
      {
        v20 = v6;
        v21 = *(a1 + 40);
        v22 = *(a1 + 48);
        v23 = *(a1 + 56);
        nw_array_apply();
      }

      goto LABEL_15;
    }

    v14 = *(v6 + 3);
  }

  else
  {
    v7 = 0;
  }

  v15 = _NRCopyLogObjectForNRUUID();
  v16 = _NRLogIsLevelEnabled();

  if (v16)
  {
    if (v6)
    {
      v17 = *(v6 + 3);
    }

    v18 = _NRCopyLogObjectForNRUUID();
    _NRLogWithArgs();
  }

LABEL_15:
}

uint64_t sub_100152514(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  type = nw_endpoint_get_type(v4);
  v6 = *(a1 + 32);
  if (type == nw_endpoint_type_address)
  {
    if (v6)
    {
      v7 = *(v6 + 24);
    }

    v8 = _NRCopyLogObjectForNRUUID();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v10 = *(a1 + 32);
      if (v10)
      {
        v11 = *(v10 + 24);
      }

      v12 = _NRCopyLogObjectForNRUUID();
      _NRLogWithArgs();
    }

    v13 = *(a1 + 56);
    if (v13)
    {
      v14 = [NSString stringWithUTF8String:nw_interface_get_name(v13)];
    }

    else
    {
      v14 = 0;
    }

    sub_10014B480(*(a1 + 32), v4, *(a1 + 48), v14);
  }

  else
  {
    if (v6)
    {
      v15 = *(v6 + 24);
    }

    v16 = _NRCopyLogObjectForNRUUID();
    v17 = _NRLogIsLevelEnabled();

    if (v17)
    {
      v18 = *(a1 + 32);
      if (v18)
      {
        v19 = *(v18 + 24);
      }

      v20 = _NRCopyLogObjectForNRUUID();
      _NRLogWithArgs();
    }

    sub_100151FF0(*(a1 + 32), v4, *(a1 + 40), *(a1 + 48));
  }

  return 1;
}

uint64_t sub_1001526B0(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  if (a3 == 4)
  {
    v6 = [[NSData alloc] initWithBytes:a4 length:a5];
    v7 = *(*(a1 + 32) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;
  }

  return 1;
}

void sub_10015271C(uint64_t a1)
{
  if (!_os_feature_enabled_impl() || *(a1 + 232))
  {
    return;
  }

  v15 = sub_10014B23C(a1);
  if (v15)
  {
    v2 = [[WiFiAwarePublishDatapathConfiguration alloc] initWithServiceType:1 securityConfiguration:0];
    v3 = objc_alloc_init(WiFiAwarePublishServiceSpecificInfo);
    [v3 setBlob:v15];
    [v3 setInstanceName:*(a1 + 112)];
    v4 = [[WiFiAwarePublishConfiguration alloc] initWithServiceName:*(a1 + 208)];
    [v4 setAuthenticationType:0];
    [v4 setDatapathConfiguration:v2];
    [v4 setServiceSpecificInfo:v3];
    v5 = [[WiFiAwarePublisher alloc] initWithConfiguration:v4];
    [v5 setDelegate:a1];
    [v5 start];
    objc_storeStrong((a1 + 232), v5);
    v6 = *(a1 + 24);
    v7 = _NRCopyLogObjectForNRUUID();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v9 = *(a1 + 24);
      v10 = _NRCopyLogObjectForNRUUID();
      _NRLogWithArgs();
    }

    goto LABEL_10;
  }

  v11 = *(a1 + 24);
  v12 = _NRCopyLogObjectForNRUUID();
  v13 = _NRLogIsLevelEnabled();

  if (v13)
  {
    v14 = *(a1 + 24);
    v2 = _NRCopyLogObjectForNRUUID();
    _NRLogWithArgs();
LABEL_10:
  }
}

uint64_t sub_100152934()
{
  if (qword_100229238 != -1)
  {
    dispatch_once(&qword_100229238, &stru_1001FC340);
  }

  if (byte_100229230 != 1 || !_NRIsAppleInternal())
  {
    return 0;
  }

  if (qword_100229248 != -1)
  {
    dispatch_once(&qword_100229248, &stru_1001FC360);
  }

  if (byte_100229240)
  {
    return 3;
  }

  else
  {
    return 1;
  }
}

void sub_1001529D0(uint64_t a1, int a2, void *a3)
{
  error = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v6 = WeakRetained;
  if (WeakRetained)
  {
    if ((*(WeakRetained + 21) & 1) == 0)
    {
      v7 = *(a1 + 56);
      v8 = WeakRetained[20];
      v9 = [NSNumber numberWithUnsignedChar:v7];
      v10 = [v8 objectForKeyedSubscript:v9];
      v11 = *(a1 + 32);

      if (v10 == v11)
      {
        v12 = v6[3];
        v13 = _NRCopyLogObjectForNRUUID();
        IsLevelEnabled = _NRLogIsLevelEnabled();

        if (IsLevelEnabled)
        {
          v15 = v6[3];
          v16 = _NRCopyLogObjectForNRUUID();
          _NRLogWithArgs();
        }

        if (error)
        {
          if (nw_error_get_error_domain(error) == nw_error_domain_dns && nw_error_get_error_code(error) == -65548)
          {
            sub_10014F5E4(v6);
            sub_100152BD8(v6);
          }

          else
          {
            sub_10015312C(v6, *(a1 + 56));
            sub_10014FA20(v6, *(a1 + 56));
          }
        }

        else if (a2 == 2)
        {
          v17 = v6[3];
          v18 = _NRCopyLogObjectForNRUUID();
          v19 = _NRLogIsLevelEnabled();

          if (v19)
          {
            v20 = v6[3];
            v21 = _NRCopyLogObjectForNRUUID();
            v22 = *(a1 + 40);
            _NRLogWithArgs();
          }
        }
      }
    }
  }
}

void sub_100152BD8(uint64_t a1)
{
  if (*(a1 + 15) == 1 && !*(a1 + 112))
  {
    if (*(a1 + 144))
    {
      if (*(a1 + 136))
      {
        v2 = +[NSUUID UUID];
        v3 = [v2 UUIDString];
        v4 = [v3 lowercaseString];
        v5 = *(a1 + 112);
        *(a1 + 112) = v4;

        objc_opt_self();
        if (qword_1002293A0 != -1)
        {
          dispatch_once(&qword_1002293A0, &stru_1001FC6E0);
        }

        v6 = qword_100229398;
        v7 = *(a1 + 112);
        if (v6)
        {
          v8 = v6[4];
          if (!v8)
          {
            v9 = objc_alloc_init(NSMutableArray);
            v10 = v6[4];
            v6[4] = v9;

            v8 = v6[4];
          }

          [v8 addObject:v7];
        }

        v11 = *(a1 + 112);
        v12 = *(a1 + 144);
        v13 = *(a1 + 136);
        v14 = sub_10014D4C4(a1, v11, v13);
        v15 = v14;
        if (*(a1 + 256) == 4)
        {
          v16 = sub_10014D5A4(a1, v14);
        }

        else
        {
          v16 = sub_10013D1EC(v14, v12);
        }

        v21 = v16;

        if (v21)
        {
          if (qword_100229298 != -1)
          {
            dispatch_once(&qword_100229298, &stru_1001FC450);
          }

          v26 = byte_100229290;
          v27 = *(a1 + 112);
          v28 = *(a1 + 144);
          v29 = *(a1 + 136);
          v30 = sub_10014D208(a1, v26, v27, v29);
          v31 = v30;
          if (*(a1 + 256) == 4)
          {
            v32 = sub_10014D5A4(a1, v30);
          }

          else
          {
            v32 = sub_10013D1EC(v30, v28);
          }

          v37 = v32;

          objc_storeStrong((a1 + 120), v21);
          objc_storeStrong((a1 + 128), v37);
          v38 = *(a1 + 24);
          v39 = _NRCopyLogObjectForNRUUID();
          IsLevelEnabled = _NRLogIsLevelEnabled();

          if (IsLevelEnabled)
          {
            v41 = *(a1 + 24);
            v42 = _NRCopyLogObjectForNRUUID();
            v43 = *(a1 + 120);
            LogString = _NRKeyCreateLogString();

            v59 = 1161;
            v60 = LogString;
            v57 = "";
            v58 = "[NRDiscoveryClient setupAdvertisingMetadataIfNeeded]";
            _NRLogWithArgs();
          }

          if (*(a1 + 128))
          {
            v45 = *(a1 + 24);
            v46 = _NRCopyLogObjectForNRUUID();
            v47 = _NRLogIsLevelEnabled();

            if (v47)
            {
              v48 = *(a1 + 24);
              v49 = _NRCopyLogObjectForNRUUID();
              v50 = *(a1 + 128);
              v51 = _NRKeyCreateLogString();

              v59 = 1163;
              v60 = v51;
              v57 = "";
              v58 = "[NRDiscoveryClient setupAdvertisingMetadataIfNeeded]";
              _NRLogWithArgs();
            }
          }
        }

        else
        {
          v33 = *(a1 + 24);
          v34 = _NRCopyLogObjectForNRUUID();
          v35 = _NRLogIsLevelEnabled();

          if (!v35)
          {
            v21 = 0;
            goto LABEL_33;
          }

          v36 = *(a1 + 24);
          v37 = _NRCopyLogObjectForNRUUID();
          v59 = 1151;
          v57 = "";
          v58 = "[NRDiscoveryClient setupAdvertisingMetadataIfNeeded]";
          _NRLogWithArgs();
        }

LABEL_33:
        goto LABEL_34;
      }

      v22 = *(a1 + 24);
      v23 = _NRCopyLogObjectForNRUUID();
      v24 = _NRLogIsLevelEnabled();

      if (!v24)
      {
        goto LABEL_34;
      }

      v25 = *(a1 + 24);
      v21 = _NRCopyLogObjectForNRUUID();
      v59 = 1143;
      v57 = "";
      v58 = "[NRDiscoveryClient setupAdvertisingMetadataIfNeeded]";
    }

    else
    {
      v17 = *(a1 + 24);
      v18 = _NRCopyLogObjectForNRUUID();
      v19 = _NRLogIsLevelEnabled();

      if (!v19)
      {
        goto LABEL_34;
      }

      v20 = *(a1 + 24);
      v21 = _NRCopyLogObjectForNRUUID();
      v59 = 1138;
      v57 = "";
      v58 = "[NRDiscoveryClient setupAdvertisingMetadataIfNeeded]";
    }

    _NRLogWithArgs();
    goto LABEL_33;
  }

LABEL_34:
  v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  v62 = 0u;
  v52 = *(a1 + 104);
  v53 = [v52 countByEnumeratingWithState:&v61 objects:v65 count:16];
  if (v53)
  {
    v54 = v53;
    v55 = *v62;
    do
    {
      for (i = 0; i != v54; i = i + 1)
      {
        if (*v62 != v55)
        {
          objc_enumerationMutation(v52);
        }

        sub_10014FA20(a1, [*(*(&v61 + 1) + 8 * i) unsignedShortValue]);
      }

      v54 = [v52 countByEnumeratingWithState:&v61 objects:v65 count:16];
    }

    while (v54);
  }
}

void sub_10015312C(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 160);
  v5 = [NSNumber numberWithUnsignedChar:a2];
  listener = [v4 objectForKeyedSubscript:v5];

  v6 = listener;
  if (listener)
  {
    nw_listener_cancel(listener);
    v7 = *(a1 + 160);
    v8 = [NSNumber numberWithUnsignedChar:a2];
    [v7 setObject:0 forKeyedSubscript:v8];

    v6 = listener;
  }
}

void sub_100153210(_BYTE *val)
{
  if (val)
  {
    val[19] = 1;
    objc_initWeak(&location, val);
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_100153354;
    v5[3] = &unk_1001FC730;
    objc_copyWeak(&v6, &location);
    v2 = objc_retainBlock(v5);
    v3 = v2;
    if (val[17] == 1)
    {
      (v2[2])(v2);
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

    objc_destroyWeak(&v6);
    objc_destroyWeak(&location);
  }
}

void sub_100153338(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100153354(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (!WeakRetained || (*(WeakRetained + 21) & 1) != 0)
  {
    goto LABEL_21;
  }

  v3 = WeakRetained[3];
  if (!v3)
  {
    v5 = 0;
    goto LABEL_16;
  }

  v4 = sub_100163A30(NRDLocalDevice, v3);
  v5 = v4;
  if (v4)
  {
    v6 = *(v4 + 48);
    if ((v6 & 0x20) != 0)
    {
      LOBYTE(v8) = 1;
      if ((v6 & 0x1000) != 0)
      {
        goto LABEL_13;
      }
    }

    else
    {
      v7 = (v6 & 0x10) != 0 || *(v4 + 16) > 0x12u;
      v8 = (v6 >> 14) & 1 | v7;
      if ((v6 & 0x1000) != 0)
      {
LABEL_13:
        if ((((*(v4 + 48) & 0x2000) != 0) & v8) == 0)
        {
          goto LABEL_14;
        }

        goto LABEL_16;
      }
    }

LABEL_14:
    v9 = v2[3];
    objc_opt_self();
    v10 = [qword_100229450 objectForKeyedSubscript:v9];

    v11 = v2[25];
    v2[25] = v10;

    if (!v2[25])
    {
      v2[25] = @"nr-pairing";
    }
  }

LABEL_16:
  if (!v2[25])
  {
    v2[25] = @"nr-default";
  }

  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_1001535B4;
  v20[3] = &unk_1001FD060;
  v12 = v2;
  v21 = v12;
  v22 = v5;
  v13 = v5;
  v14 = objc_retainBlock(v20);
  objc_opt_self();
  if (qword_1002290C0 != -1)
  {
    dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
  }

  v15 = qword_1002290B8;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100153B78;
  v17[3] = &unk_1001FC708;
  v18 = v12;
  v19 = v14;
  v16 = v14;

LABEL_21:
}

void sub_1001535B4(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    if (*(v2 + 21))
    {
      return;
    }

    *(v2 + 20) = 1;
    v3 = *(a1 + 32);
    if (v3)
    {
      if (*(v3 + 15) != 1 || (sub_100152BD8(*(a1 + 32)), (v3 = *(a1 + 32)) != 0))
      {
        if (*(v3 + 16) == 1)
        {
          v33 = 0u;
          v34 = 0u;
          memset(v35, 0, sizeof(v35));
          v4 = *(v3 + 104);
          v5 = [v4 countByEnumeratingWithState:&v33 objects:&v38 count:16];
          if (v5)
          {
            v6 = *v34;
            do
            {
              for (i = 0; i != v5; i = i + 1)
              {
                if (*v34 != v6)
                {
                  objc_enumerationMutation(v4);
                }

                sub_1001501B4(v3, [*(*(&v33 + 1) + 8 * i) unsignedShortValue]);
              }

              v5 = [v4 countByEnumeratingWithState:&v33 objects:&v38 count:16];
            }

            while (v5);
          }
        }
      }
    }
  }

  v8 = *(a1 + 40);
  if (v8)
  {
    v8 = v8[18];
  }

  v32 = v8;
  v9 = [v32 allowedLinkTypes];
  if ([v9 containsObject:&off_100209E48] && (v10 = *(a1 + 40)) != 0 && (v11 = *(v10 + 48), (~*(v10 + 48) & 0x82) == 0))
  {

    if ((v11 & 0x40) == 0)
    {
      v12 = *(a1 + 32);
      if (v12)
      {
        if (_NRIsAppleInternal())
        {
          if (!*(v12 + 216))
          {
            v13 = objc_alloc_init(CBAdvertiser);
            v14 = *(v12 + 216);
            *(v12 + 216) = v13;

            [*(v12 + 216) setNearbyActionType:5];
            [*(v12 + 216) setDispatchQueue:*(v12 + 40)];
            do
            {
              v15 = arc4random_uniform(0xFFFFu);
            }

            while (!v15);
            v37 = bswap32(v15) >> 16;
            v16 = [[NSData alloc] initWithBytes:&v37 length:2];
            v17 = objc_alloc_init(NSMutableData);
            [v17 appendData:v16];
            v18 = objc_alloc_init(NSMutableData);
            [v18 appendData:v16];
            v19 = *(v12 + 200);
            if (v19)
            {
              v20 = v19;
              v21 = [v20 dataUsingEncoding:4];
              [v18 appendData:v21];
            }

            *&v33 = 0;
            *(&v33 + 1) = &v33;
            *&v34 = 0x3032000000;
            *(&v34 + 1) = sub_10014CDDC;
            *&v35[0] = sub_10014CDEC;
            *(&v35[0] + 1) = 0;
            objc_initWeak(&location, v12);
            v38 = _NSConcreteStackBlock;
            v39 = 3221225472;
            v40 = sub_100154D6C;
            v41 = &unk_1001FC9F0;
            objc_copyWeak(&v45, &location);
            v44 = &v33;
            v22 = v18;
            v42 = v22;
            v23 = v17;
            v43 = v23;
            v46 = v37;
            sub_10014D104(v12, 1, &v38);

            objc_destroyWeak(&v45);
            objc_destroyWeak(&location);
            _Block_object_dispose(&v33, 8);
          }

          if (!*(v12 + 224))
          {
            v24 = objc_alloc_init(CBDiscovery);
            v25 = *(v12 + 224);
            *(v12 + 224) = v24;

            [*(v12 + 224) setDispatchQueue:*(v12 + 40)];
            [*(v12 + 224) setDiscoveryFlags:0x20000002000000];
            objc_initWeak(&location, v12);
            v38 = _NSConcreteStackBlock;
            v39 = 3221225472;
            v40 = sub_1001541B0;
            v41 = &unk_1001FC978;
            objc_copyWeak(&v42, &location);
            [*(v12 + 224) setDeviceFoundHandler:&v38];
            v26 = *(v12 + 224);
            *&v33 = _NSConcreteStackBlock;
            *(&v33 + 1) = 3221225472;
            *&v34 = sub_1001545D8;
            *(&v34 + 1) = &unk_1001FC9A0;
            objc_copyWeak(v35, &location);
            [v26 activateWithCompletion:&v33];
            objc_destroyWeak(v35);
            objc_destroyWeak(&v42);
            objc_destroyWeak(&location);
          }
        }

        else
        {
          v27 = *(v12 + 24);
          v28 = _NRCopyLogObjectForNRUUID();
          IsLevelEnabled = _NRLogIsLevelEnabled();

          if (IsLevelEnabled)
          {
            v30 = *(v12 + 24);
            v31 = _NRCopyLogObjectForNRUUID();
            _NRLogWithArgs();
          }
        }
      }
    }
  }

  else
  {
  }
}

void sub_100153B20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id location)
{
  objc_destroyWeak((v23 + 32));
  objc_destroyWeak((v22 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100153B78(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    if ((*(v1 + 21) & 1) == 0)
    {
      sub_100153BA4(*(a1 + 32), *(a1 + 40));
    }
  }

  else
  {
    sub_100153BA4(0, *(a1 + 40));
  }
}

void sub_100153BA4(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v4 = *(a1 + 24);
    if (v4)
    {
      v5 = sub_100163B2C(NRDLocalDevice, v4, 0);
    }

    else
    {
      v5 = 0;
    }

    v43 = 0;
    __buf = 0;
    arc4random_buf(&__buf, 0xCuLL);
    v6 = [[NSData alloc] initWithBytes:&__buf length:12];
    v7 = *(a1 + 136);
    *(a1 + 136) = v6;

    v8 = *(a1 + 200);
    v9 = [v8 dataUsingEncoding:4];

    if (*(a1 + 22) == 1)
    {
      v10 = [@"terminusdStaticSecret" dataUsingEncoding:4];
      v11 = *(a1 + 152);
      *(a1 + 152) = v10;
      v12 = 8;
LABEL_32:

      *(a1 + 256) = v12;
      v32 = *(a1 + 152);
      v33 = *(a1 + 136);
      v34 = v32;
      v35 = sub_10013EBBC(v34, v33, v9);
      v36 = *(a1 + 144);
      *(a1 + 144) = v35;

      v3[2](v3);
LABEL_33:

      goto LABEL_34;
    }

    if (!v5)
    {
LABEL_35:
      *(a1 + 256) = 4;
      objc_initWeak(&location, a1);
      v37[0] = _NSConcreteStackBlock;
      v37[1] = 3221225472;
      v37[2] = sub_100153F34;
      v37[3] = &unk_1001FC780;
      objc_copyWeak(&v40, &location);
      v39 = v3;
      v38 = v9;
      sub_10014D104(a1, 1, v37);

      objc_destroyWeak(&v40);
      objc_destroyWeak(&location);
      goto LABEL_33;
    }

    v13 = *(v5 + 48);
    if ((v13 & 0x20) != 0)
    {
      LOBYTE(v15) = 1;
      if ((v13 & 0x1000) == 0)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v14 = (v13 & 0x10) != 0 || *(v5 + 16) > 0x12u;
      v15 = (v13 >> 14) & 1 | v14;
      if ((v13 & 0x1000) == 0)
      {
LABEL_17:
        if ((v13 & 0x10) != 0)
        {
LABEL_18:
          v16 = *(v5 + 72);
          v17 = v16;
          if (v16)
          {
            v18 = v16[3];
            v19 = v18;
            if (v18)
            {
              v20 = *(v18 + 2);
            }

            else
            {
              v20 = 0;
            }
          }

          else
          {
            v19 = 0;
            v20 = 0;
          }

          v21 = v20;
          v22 = v21 == 0;

          if (!v22)
          {
            v23 = *(v5 + 72);
            v11 = v23;
            if (v23)
            {
              v24 = v23[3];
              v25 = v24;
              if (v24)
              {
                v26 = *(v24 + 2);
              }

              else
              {
                v26 = 0;
              }
            }

            else
            {
              v25 = 0;
              v26 = 0;
            }

            objc_storeStrong((a1 + 152), v26);

            v12 = 2;
            goto LABEL_32;
          }
        }

LABEL_26:
        v27 = *(v5 + 176);
        if (v27)
        {
          v27 = v27[2];
        }

        v28 = v27;
        v29 = v28 == 0;

        if (!v29)
        {
          v30 = *(v5 + 176);
          if (v30)
          {
            v30 = v30[2];
          }

          v31 = v30;
          v11 = *(a1 + 152);
          *(a1 + 152) = v31;
          v12 = 1;
          goto LABEL_32;
        }

        goto LABEL_35;
      }
    }

    if ((v13 & 0x10) != 0 || (((*(v5 + 48) & 0x2000) != 0) & v15) != 0)
    {
      goto LABEL_18;
    }

    goto LABEL_26;
  }

LABEL_34:
}

void sub_100153F10(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100153F34(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v8 = WeakRetained;
  if (WeakRetained && (WeakRetained[21] & 1) == 0)
  {
    if (v6 || ![v5 count])
    {
      v9 = *(v8 + 3);
      v10 = _NRCopyLogObjectForNRUUID();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      if (!IsLevelEnabled)
      {
LABEL_7:
        v14 = *(v8 + 19);
        v15 = *(a1 + 32);
        v16 = *(v8 + 17);
        v17 = v14;
        v18 = sub_10013EBBC(v17, v16, v15);
        v19 = *(v8 + 18);
        *(v8 + 18) = v18;

        (*(*(a1 + 40) + 16))();
        goto LABEL_8;
      }

      v12 = *(v8 + 3);
      v13 = _NRCopyLogObjectForNRUUID();
      _NRLogWithArgs();
    }

    else
    {
      v20 = *(v8 + 3);
      v21 = _NRCopyLogObjectForNRUUID();
      v22 = _NRLogIsLevelEnabled();

      if (v22)
      {
        v23 = *(v8 + 3);
        v24 = _NRCopyLogObjectForNRUUID();
        v34 = 685;
        v35 = [v5 count];
        v32 = "";
        v33 = "[NRDiscoveryClient fillInPSKDataForAuthTagWithCompletion:]_block_invoke";
        _NRLogWithArgs();
      }

      v38 = 0u;
      v39 = 0u;
      v36 = 0u;
      v37 = 0u;
      v13 = v5;
      v25 = [v13 countByEnumeratingWithState:&v36 objects:v40 count:16];
      if (v25)
      {
        v26 = v25;
        v27 = *v37;
        do
        {
          for (i = 0; i != v26; i = i + 1)
          {
            if (*v37 != v27)
            {
              objc_enumerationMutation(v13);
            }

            v29 = *(*(&v36 + 1) + 8 * i);
            v30 = [v29 deviceIRKData];
            v31 = *(v8 + 19);
            *(v8 + 19) = v30;

            objc_storeStrong(v8 + 24, v29);
          }

          v26 = [v13 countByEnumeratingWithState:&v36 objects:v40 count:16];
        }

        while (v26);
      }
    }

    goto LABEL_7;
  }

LABEL_8:
}

void sub_1001541B0(uint64_t a1, void *a2)
{
  v42 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained && (*(WeakRetained + 21) & 1) == 0)
  {
    if (qword_1002293B0 != -1)
    {
      dispatch_once(&qword_1002293B0, &stru_1001FCB68);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_1002293B0 != -1)
      {
        dispatch_once(&qword_1002293B0, &stru_1001FCB68);
      }

      v37 = 1787;
      v39 = v42;
      v33 = "";
      v35 = "[NRDiscoveryClient discoverOverBluetooth]_block_invoke";
      _NRLogWithArgs();
    }

    v5 = [v42 watchSetupData];
    v6 = [v42 identifier];
    v7 = v5;
    v8 = v6;
    v9 = v4[3];
    v10 = _NRCopyLogObjectForNRUUID();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v12 = v4[3];
      v13 = _NRCopyLogObjectForNRUUID();
      LogString = _NRKeyCreateLogString();
      v41 = [v7 length];
      v38 = 1842;
      v34 = "";
      v36 = "[NRDiscoveryClient verifyBLEAdvertisements:identifier:]";
      _NRLogWithArgs();
    }

    v49 = 0;
    if ([v7 length] < 3)
    {
      goto LABEL_22;
    }

    v14 = v7;
    v15 = v14;
    if (v14)
    {
      [v14 getBytes:&v49 length:2];
      v16 = [v15 subdataWithRange:{2, objc_msgSend(v15, "length") - 2}];
      v17 = v4[3];
      v18 = _NRCopyLogObjectForNRUUID();
      v19 = _NRLogIsLevelEnabled();

      if (v19)
      {
        v20 = v4[3];
        v21 = _NRCopyLogObjectForNRUUID();
        _NRLogWithArgs();
      }

      v22 = objc_alloc_init(NSMutableData);
      v23 = [[NSData alloc] initWithBytes:&v49 length:2];
      [v22 appendData:v23];
      v24 = v4[25];
      if (v24)
      {
        v25 = v24;
        v26 = [v25 dataUsingEncoding:4];
        [v22 appendData:v26];
      }

      objc_initWeak(&location, v4);
      v43[0] = _NSConcreteStackBlock;
      v43[1] = 3221225472;
      v43[2] = sub_1001546A8;
      v43[3] = &unk_1001FC7D0;
      objc_copyWeak(&v47, &location);
      v27 = v22;
      v44 = v27;
      v28 = v16;
      v45 = v28;
      v46 = v8;
      sub_10014D104(v4, 28671, v43);

      objc_destroyWeak(&v47);
      objc_destroyWeak(&location);
    }

    else
    {
      v29 = v4[3];
      v30 = _NRCopyLogObjectForNRUUID();
      v31 = _NRLogIsLevelEnabled();

      if (!v31)
      {
LABEL_21:

LABEL_22:
        goto LABEL_23;
      }

      v32 = v4[3];
      v28 = _NRCopyLogObjectForNRUUID();
      _NRLogWithArgs();
    }

    goto LABEL_21;
  }

LABEL_23:
}

void sub_1001545BC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 96));
  _Unwind_Resume(a1);
}

void sub_1001545D8(uint64_t a1, void *a2)
{
  v10 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = WeakRetained[3];
  }

  v6 = _NRCopyLogObjectForNRUUID();
  IsLevelEnabled = _NRLogIsLevelEnabled();

  if (IsLevelEnabled)
  {
    if (v4)
    {
      v8 = v4[3];
    }

    v9 = _NRCopyLogObjectForNRUUID();
    _NRLogWithArgs();
  }
}

void sub_1001546A8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v8 = WeakRetained;
  if (!WeakRetained || (WeakRetained[21] & 1) != 0)
  {
    goto LABEL_59;
  }

  if (v6 || ![v5 count])
  {
    v9 = *(v8 + 3);
    v10 = _NRCopyLogObjectForNRUUID();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v12 = *(v8 + 3);
      v13 = _NRCopyLogObjectForNRUUID();
      _NRLogWithArgs();
    }

    goto LABEL_59;
  }

  v14 = *(v8 + 3);
  v15 = _NRCopyLogObjectForNRUUID();
  v16 = _NRLogIsLevelEnabled();

  if (v16)
  {
    v17 = *(v8 + 3);
    v18 = _NRCopyLogObjectForNRUUID();
    v67 = 1876;
    v68 = [v5 count];
    v65 = "";
    v66 = "[NRDiscoveryClient verifyBLEAdvertisements:identifier:]_block_invoke";
    _NRLogWithArgs();
  }

  v83 = 0u;
  v84 = 0u;
  v81 = 0u;
  v82 = 0u;
  v19 = v5;
  v20 = [v19 countByEnumeratingWithState:&v81 objects:v95 count:16];
  if (v20)
  {
    v21 = *v82;
    while (2)
    {
      for (i = 0; i != v20; i = i + 1)
      {
        if (*v82 != v21)
        {
          objc_enumerationMutation(v19);
        }

        v23 = *(*(&v81 + 1) + 8 * i);
        if ([v23 type] == 1)
        {
          v20 = v23;
          goto LABEL_19;
        }
      }

      v20 = [v19 countByEnumeratingWithState:&v81 objects:v95 count:16];
      if (v20)
      {
        continue;
      }

      break;
    }
  }

LABEL_19:

  v79 = 0u;
  v80 = 0u;
  v77 = 0u;
  v78 = 0u;
  obj = v19;
  v24 = [obj countByEnumeratingWithState:&v77 objects:v94 count:16];
  if (!v24)
  {
    goto LABEL_58;
  }

  v25 = v24;
  v26 = *v78;
  while (2)
  {
    for (j = 0; j != v25; j = j + 1)
    {
      if (*v78 != v26)
      {
        objc_enumerationMutation(obj);
      }

      v28 = *(*(&v77 + 1) + 8 * j);
      v29 = [v28 authTagForData:*(a1 + 32) type:3 error:{0, v65}];
      if (sub_10013EE38(v29, *(a1 + 40)))
      {
        v30 = *(v8 + 3);
        v31 = _NRCopyLogObjectForNRUUID();
        v32 = _NRLogIsLevelEnabled();

        if (v32)
        {
          v33 = *(v8 + 3);
          v34 = _NRCopyLogObjectForNRUUID();
          v67 = 1887;
          v68 = v28;
          v65 = "";
          v66 = "[NRDiscoveryClient verifyBLEAdvertisements:identifier:]_block_invoke";
          _NRLogWithArgs();
        }

        v35 = [[NSUUID alloc] initWithUUIDString:*(a1 + 48)];
        v36 = [v28 idsDeviceID];
        v37 = v35;
        v69 = v36;
        v38 = v36;
        v39 = v28;
        v75 = v20;
        if (v38)
        {
          v70 = v35;
          v72 = v39;
          v73 = v37;
          v74 = v20;
          if (v37)
          {
            v92 = 0u;
            v93 = 0u;
            v90 = 0u;
            v91 = 0u;
            v40 = *(v8 + 12);
            v41 = [v40 countByEnumeratingWithState:&v90 objects:v96 count:16];
            if (v41)
            {
              v42 = v41;
              v43 = *v91;
              while (2)
              {
                v44 = 0;
                do
                {
                  if (*v91 != v43)
                  {
                    objc_enumerationMutation(v40);
                  }

                  v45 = *(*(&v90 + 1) + 8 * v44);
                  if (v45)
                  {
                    v46 = v45[8];
                  }

                  else
                  {
                    v46 = 0;
                  }

                  if ([v46 isEqualToString:{v38, v65, v66, v67, v68}])
                  {
                    v48 = v45;

                    if (v45)
                    {
                      goto LABEL_52;
                    }

                    goto LABEL_46;
                  }

                  v44 = v44 + 1;
                }

                while (v42 != v44);
                v47 = [v40 countByEnumeratingWithState:&v90 objects:v96 count:16];
                v42 = v47;
                if (v47)
                {
                  continue;
                }

                break;
              }
            }

LABEL_46:
            v49 = objc_alloc_init(NRDeviceEndpoint);
            v48 = v49;
            if (v49)
            {
              v49->_type = *(v8 + 18);
              objc_storeStrong(&v49->_remoteIDSDeviceID, v69);
            }

            objc_opt_self();
            if (qword_1002290C0 != -1)
            {
              dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
            }

            v50 = qword_1002290B8;
            v51 = sub_1000CAD2C(v50, 0);
            if (v48)
            {
              localIDSDeviceID = v48->_localIDSDeviceID;
              v48->_localIDSDeviceID = v51;

LABEL_52:
              objc_storeStrong(&v48->_cbUUID, v70);
              v71 = 0;
              issuedFirstCallback = v48->_issuedFirstCallback;
            }

            else
            {

              issuedFirstCallback = 0;
              v71 = 1;
            }

            v54 = issuedFirstCallback;
            v55 = *(v8 + 11);
            v56 = *(v8 + 9);
            v57 = *(v8 + 5);
            block[0] = _NSConcreteStackBlock;
            block[1] = 3221225472;
            block[2] = sub_100154D38;
            block[3] = &unk_1001FC8D8;
            v89 = v54;
            v58 = v55;
            v87 = v58;
            v59 = v48;
            v86 = v59;
            v60 = v56;
            v88 = v60;
            dispatch_async(v57, block);
            if ((v71 & 1) == 0)
            {
              v59->_issuedFirstCallback = 1;
            }

            v37 = v73;
            v20 = v74;
            v39 = v72;
            goto LABEL_56;
          }

          v63 = sub_10014A248();
          v64 = _NRLogIsLevelEnabled();

          v37 = 0;
          if (!v64)
          {
            goto LABEL_57;
          }
        }

        else
        {
          v61 = sub_10014A248();
          v62 = _NRLogIsLevelEnabled();

          if (!v62)
          {
            goto LABEL_57;
          }
        }

        v59 = sub_10014A248();
        _NRLogWithArgs();
LABEL_56:

LABEL_57:
        goto LABEL_58;
      }
    }

    v25 = [obj countByEnumeratingWithState:&v77 objects:v94 count:16];
    if (v25)
    {
      continue;
    }

    break;
  }

LABEL_58:

LABEL_59:
}

uint64_t sub_100154D38(uint64_t result)
{
  if (*(result + 56) == 1)
  {
    v1 = *(result + 40);
    if (!v1)
    {
      return result;
    }

    return (*(v1 + 16))(v1, *(result + 32));
  }

  v1 = *(result + 48);
  if (v1)
  {
    return (*(v1 + 16))(v1, *(result + 32));
  }

  return result;
}

void sub_100154D6C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v8 = WeakRetained;
  if (WeakRetained && (*(WeakRetained + 21) & 1) == 0)
  {
    if (v6 || ![v5 count])
    {
      v9 = v8[3];
      v10 = _NRCopyLogObjectForNRUUID();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      if (IsLevelEnabled)
      {
        v12 = v8[3];
        v13 = _NRCopyLogObjectForNRUUID();
        _NRLogWithArgs();
      }
    }

    else
    {
      v14 = v8[3];
      v15 = _NRCopyLogObjectForNRUUID();
      v16 = _NRLogIsLevelEnabled();

      if (v16)
      {
        v17 = v8[3];
        v18 = _NRCopyLogObjectForNRUUID();
        v31 = 1821;
        v32 = [v5 count];
        v29 = "";
        v30 = "[NRDiscoveryClient startBLEAdvertisements]_block_invoke";
        _NRLogWithArgs();
      }

      v39 = 0u;
      v40 = 0u;
      v37 = 0u;
      v38 = 0u;
      v19 = v5;
      v20 = [v19 countByEnumeratingWithState:&v37 objects:v41 count:16];
      if (v20)
      {
        v21 = v20;
        v22 = *v38;
        do
        {
          for (i = 0; i != v21; i = i + 1)
          {
            if (*v38 != v22)
            {
              objc_enumerationMutation(v19);
            }

            v24 = [*(*(&v37 + 1) + 8 * i) authTagForData:*(a1 + 32) type:3 error:{0, v29, v30, v31, v32}];
            v25 = *(*(a1 + 48) + 8);
            v26 = *(v25 + 40);
            *(v25 + 40) = v24;

            [*(a1 + 40) appendData:*(*(*(a1 + 48) + 8) + 40)];
          }

          v21 = [v19 countByEnumeratingWithState:&v37 objects:v41 count:16];
        }

        while (v21);
      }

      v27 = v8[27];
      if (v27)
      {
        [v27 setWatchSetupData:*(a1 + 40)];
        v28 = v8[27];
        v33[0] = _NSConcreteStackBlock;
        v33[1] = 3221225472;
        v33[2] = sub_100155048;
        v33[3] = &unk_1001FC9C8;
        v34 = v8;
        v35 = *(a1 + 40);
        v36 = *(a1 + 64);
        [v28 activateWithCompletion:v33];
      }
    }
  }
}

void sub_100155048(uint64_t a1, void *a2)
{
  v13 = a2;
  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = *(v3 + 24);
  }

  v5 = _NRCopyLogObjectForNRUUID();
  IsLevelEnabled = _NRLogIsLevelEnabled();

  if (IsLevelEnabled)
  {
    v7 = *(a1 + 32);
    if (v7)
    {
      v7 = v7[3];
    }

    v8 = v7;
    v9 = _NRCopyLogObjectForNRUUID();
    v10 = *(a1 + 40);
    LogString = _NRKeyCreateLogString();
    [*(a1 + 40) length];

    v12 = *(a1 + 48);
    _NRLogWithArgs();
  }
}

id sub_100155154()
{
  if (qword_1002293C0 != -1)
  {
    dispatch_once(&qword_1002293C0, &stru_1001FCBB0);
  }

  v1 = qword_1002293B8;

  return v1;
}

void sub_1001551A8(id a1)
{
  v1 = os_log_create("com.apple.networkrelay", "");
  v2 = qword_1002293B8;
  qword_1002293B8 = v1;

  _objc_release_x1(v1, v2);
}

void sub_1001554F0(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 40);
    v3 = *(a1 + 48);
    NRDiffMachTimeInSeconds();
    v5 = v4;
    v6 = *(a1 + 56);
    v7 = *(a1 + 64);
    NRDiffMachTimeInSeconds();
    v9 = v8;
    v10 = [NSNumber numberWithDouble:round(*(a1 + 24) * 1000.0) * 0.001];
    [*(a1 + 8) setObject:v10 forKeyedSubscript:@"uptimeInSec"];

    v11 = [NSNumber numberWithDouble:round(v9 * 1000.0) * 0.001];
    [*(a1 + 8) setObject:v11 forKeyedSubscript:@"ikeClassDSetupTimeInSec"];

    v12 = [NSNumber numberWithDouble:round(v5 * 1000.0) * 0.001];
    [*(a1 + 8) setObject:v12 forKeyedSubscript:@"ikeClassCSetupTimeInSec"];

    v13 = 0.0;
    if (*(a1 + 16))
    {
      v13 = 1.0;
    }

    v14 = [NSNumber numberWithDouble:v13];
    [*(a1 + 8) setObject:v14 forKeyedSubscript:@"external"];

    if (*(a1 + 80))
    {
      v15 = [NSNumber numberWithUnsignedLongLong:?];
      [*(a1 + 8) setObject:v15 forKeyedSubscript:@"ikeClassDAttempts"];
    }

    if (*(a1 + 72))
    {
      v16 = [NSNumber numberWithUnsignedLongLong:?];
      [*(a1 + 8) setObject:v16 forKeyedSubscript:@"ikeClassCAttempts"];
    }

    if (*(a1 + 32))
    {
      v17 = [NSNumber numberWithUnsignedLongLong:?];
      [*(a1 + 8) setObject:v17 forKeyedSubscript:@"totalIKEControlPackets"];
    }

    if (*(a1 + 88))
    {
      v18 = [NSNumber numberWithUnsignedLongLong:?];
      [*(a1 + 8) setObject:v18 forKeyedSubscript:@"totalBytesSent"];
    }

    if (*(a1 + 96))
    {
      v19 = [NSNumber numberWithUnsignedLongLong:?];
      [*(a1 + 8) setObject:v19 forKeyedSubscript:@"totalBytesReceived"];
    }
  }
}

void sub_1001557BC(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v4 = *(a1 + 8);
    [v4 allValues];
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v5 = v15 = 0u;
    v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    v7 = v5;
    if (v6)
    {
      v8 = v6;
      v9 = *v13;
      while (2)
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v13 != v9)
          {
            objc_enumerationMutation(v5);
          }

          if ([*(*(&v12 + 1) + 8 * i) BOOLValue])
          {

            if (qword_1002293C0 != -1)
            {
              dispatch_once(&qword_1002293C0, &stru_1001FCBB0);
            }

            if (_NRLogIsLevelEnabled())
            {
              if (qword_1002293C0 != -1)
              {
                dispatch_once(&qword_1002293C0, &stru_1001FCBB0);
              }

              _NRLogWithArgs();
            }

            v11 = v4;
            AnalyticsSendEventLazy();
            v7 = v11;
            goto LABEL_18;
          }
        }

        v8 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }

      v7 = v5;
    }

LABEL_18:
  }
}

void *sub_100157134(void *a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v14.receiver = a1;
    v14.super_class = NRAnalyticsLinkUpgradeReport;
    v4 = objc_msgSendSuper2(&v14, "init");
    if (!v4)
    {
      v9 = sub_100155154();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      if (IsLevelEnabled)
      {
        v11 = sub_100155154();
        _NRLogWithArgs();
      }

      _os_log_pack_size();
      v12 = *__error();
      v13 = _os_log_pack_fill();
      *v13 = 136446210;
      *(v13 + 4) = "[NRAnalyticsLinkUpgradeReport initWithDictionary:]";
      sub_100155154();
      _NRLogAbortWithPack();
    }

    v5 = v4;
    v6 = [[NSMutableDictionary alloc] initWithDictionary:v3];
    [v6 addEntriesFromDictionary:v5[1]];
    v7 = v5[1];
    v5[1] = v6;

    a1 = v5;
  }

  return a1;
}

uint64_t sub_1001572BC(uint64_t a1)
{
  if (*(a1 + 32) == 1)
  {
    v3 = [[NSMutableArray alloc] initWithCapacity:{128, v1}];
    v4 = qword_1002293C8;
    qword_1002293C8 = v3;
  }

  return __NRLogRegisterSimCrashHook(sub_100157364);
}

void sub_100157320(id a1)
{
  v1 = os_log_create("com.apple.networkrelay", "events");
  v2 = qword_1002293E0;
  qword_1002293E0 = v1;

  _objc_release_x1(v1, v2);
}

__CFString *sub_100157378(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = v1;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = @"");
      v5 = CFSTR("(");
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v6 = [v3 description];
LABEL_21:

        goto LABEL_22;
      }

      v4 = @"}");
      v5 = CFSTR("({");
    }

    v6 = [[NSMutableString alloc] initWithString:v5];
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v7 = v3;
    v8 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v19;
      v11 = 1;
      do
      {
        if (*v19 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = **(&v18 + 1);
        if ((v11 & 1) == 0)
        {
          [(__CFString *)v6 appendString:@", ", v18];
        }

        v13 = [v12 description];
        [(__CFString *)v6 appendString:v13];

        if (v9 >= 2)
        {
          for (i = 1; i != v9; ++i)
          {
            if (*v19 != v10)
            {
              objc_enumerationMutation(v7);
            }

            v15 = *(*(&v18 + 1) + 8 * i);
            [(__CFString *)v6 appendString:@", "];
            v16 = [v15 description];
            [(__CFString *)v6 appendString:v16];
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
        v11 = 0;
      }

      while (v9);
    }

    [(__CFString *)v6 appendString:v4];
    goto LABEL_21;
  }

  v6 = @"(null)";
LABEL_22:

  return v6;
}

void sub_1001576B0(uint64_t a1, void *a2)
{
  v5 = a2;
  if (v5)
  {
    if (qword_1002293F8 != -1)
    {
      dispatch_once(&qword_1002293F8, &stru_1001FCD78);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_1002293F8 != -1)
      {
        dispatch_once(&qword_1002293F8, &stru_1001FCD78);
      }

      v3 = *(a1 + 32);
LABEL_14:
      _NRLogWithArgs();
    }
  }

  else
  {
    if (qword_1002293F8 != -1)
    {
      dispatch_once(&qword_1002293F8, &stru_1001FCD78);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_1002293F8 != -1)
      {
        dispatch_once(&qword_1002293F8, &stru_1001FCD78);
      }

      v4 = *(a1 + 32);
      goto LABEL_14;
    }
  }
}

void sub_100157820(id a1)
{
  v1 = os_log_create("com.apple.networkrelay", "");
  v2 = qword_1002293F0;
  qword_1002293F0 = v1;

  _objc_release_x1(v1, v2);
}

void sub_100157864(uint64_t a1, void *a2)
{
  v5 = a2;
  if (v5)
  {
    if (qword_1002293F8 != -1)
    {
      dispatch_once(&qword_1002293F8, &stru_1001FCD78);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_1002293F8 != -1)
      {
        dispatch_once(&qword_1002293F8, &stru_1001FCD78);
      }

      v3 = *(a1 + 32);
LABEL_14:
      _NRLogWithArgs();
    }
  }

  else
  {
    if (qword_1002293F8 != -1)
    {
      dispatch_once(&qword_1002293F8, &stru_1001FCD78);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_1002293F8 != -1)
      {
        dispatch_once(&qword_1002293F8, &stru_1001FCD78);
      }

      v4 = *(a1 + 32);
      goto LABEL_14;
    }
  }
}

void sub_1001579D4(uint64_t a1, void *a2, int a3)
{
  v5 = a2;
  if (a1 && (*(a1 + 11) & 1) == 0)
  {
    v6 = dispatch_time(0x8000000000000000, 1000000000);
    v7 = *(a1 + 48);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100157AAC;
    block[3] = &unk_1001FCC40;
    block[4] = a1;
    v10 = a3;
    v9 = v5;
    dispatch_after(v6, v7, block);
  }
}

uint64_t sub_100157AAC(uint64_t result)
{
  v1 = result;
  v2 = *(result + 32);
  if (!v2 || (*(v2 + 11) & 1) == 0)
  {
    if (qword_1002293F8 != -1)
    {
      dispatch_once(&qword_1002293F8, &stru_1001FCD78);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_1002293F8 != -1)
      {
        dispatch_once(&qword_1002293F8, &stru_1001FCD78);
      }

      v4 = *(v1 + 32);
      v3 = *(v1 + 40);
      v5 = *(v1 + 48);
      v6 = qword_1002293F0;
      v17 = v5;
      v18 = [v3 length];
      v15 = 146;
      v16 = v4;
      v13 = "";
      v14 = "[NRDDTLSStack retransmitOutboundEncryptedData:retransmitCount:]_block_invoke";
      _NRLogWithArgs();
    }

    v7 = *(v1 + 32);
    if (v7)
    {
      WeakRetained = objc_loadWeakRetained((v7 + 64));
      v9 = *(v1 + 32);
    }

    else
    {
      v9 = 0;
      WeakRetained = 0;
    }

    [WeakRetained handleDTLSStack:v9 outboundEncryptedData:{*(v1 + 40), v13, v14, v15, v16, v17, v18}];

    v10 = *(v1 + 32);
    v11 = *(v1 + 40);
    v12 = (*(v1 + 48) + 1);

    return sub_1001579D4(v10, v11, v12);
  }

  return result;
}

void sub_100157C10(uint64_t a1)
{
  if (a1 && (*(a1 + 9) & 1) == 0)
  {
    *(a1 + 9) = 1;
    if (qword_1002293F8 != -1)
    {
      dispatch_once(&qword_1002293F8, &stru_1001FCD78);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_1002293F8 != -1)
      {
        dispatch_once(&qword_1002293F8, &stru_1001FCD78);
      }

      v2 = *(a1 + 40);
      v3 = qword_1002293F0;
      _NRLogWithArgs();
    }

    v4 = *(a1 + 40);
    completion[0] = _NSConcreteStackBlock;
    completion[1] = 3221225472;
    completion[2] = sub_100157D58;
    completion[3] = &unk_1001FCC68;
    completion[4] = a1;
    nw_connection_receive(v4, 1u, 0xFFFFFFFF, completion);
  }
}

void sub_100157D58(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  v26 = a2;
  v8 = a3;
  v9 = a5;
  v10 = *(a1 + 32);
  if (v10)
  {
    *(v10 + 9) = 0;
  }

  if (v26 && !v9)
  {
    if (qword_1002293F8 != -1)
    {
      dispatch_once(&qword_1002293F8, &stru_1001FCD78);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_1002293F8 != -1)
      {
        dispatch_once(&qword_1002293F8, &stru_1001FCD78);
      }

      v11 = qword_1002293F0;
      v12 = *(a1 + 32);
      v13 = [v26 length];
      v14 = *(a1 + 32);
      if (v14)
      {
        v14 = *(v14 + 40);
      }

      v24 = v13;
      v25 = v14;
      v21 = 168;
      v22 = v12;
      v19 = "";
      v20 = "[NRDDTLSStack readOnUDPConnection]_block_invoke";
      _NRLogWithArgs();
    }

    v15 = *(a1 + 32);
    if (v15)
    {
      WeakRetained = objc_loadWeakRetained((v15 + 64));
      v17 = *(a1 + 32);
    }

    else
    {
      v17 = 0;
      WeakRetained = 0;
    }

    [WeakRetained handleDTLSStack:v17 outboundEncryptedData:{v26, v19, v20, v21, v22, v24, v25}];

    v18 = *(a1 + 32);
    if (v18)
    {
      if (*(v18 + 12))
      {
LABEL_19:
        sub_100157C10(v18);
        goto LABEL_26;
      }

      *(v18 + 12) = 1;
      v18 = *(a1 + 32);
    }

    sub_1001579D4(v18, v26, 1);
    v18 = *(a1 + 32);
    goto LABEL_19;
  }

  if (qword_1002293F8 != -1)
  {
    dispatch_once(&qword_1002293F8, &stru_1001FCD78);
  }

  if (_NRLogIsLevelEnabled())
  {
    if (qword_1002293F8 != -1)
    {
      dispatch_once(&qword_1002293F8, &stru_1001FCD78);
    }

    v23 = *(a1 + 32);
    _NRLogWithArgs();
  }

LABEL_26:
}

void sub_100157F98(uint64_t a1)
{
  if (a1 && (*(a1 + 10) & 1) == 0)
  {
    *(a1 + 10) = 1;
    if (qword_1002293F8 != -1)
    {
      dispatch_once(&qword_1002293F8, &stru_1001FCD78);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_1002293F8 != -1)
      {
        dispatch_once(&qword_1002293F8, &stru_1001FCD78);
      }

      v2 = *(a1 + 32);
      v3 = qword_1002293F0;
      _NRLogWithArgs();
    }

    v4 = *(a1 + 32);
    completion[0] = _NSConcreteStackBlock;
    completion[1] = 3221225472;
    completion[2] = sub_1001580E0;
    completion[3] = &unk_1001FCC68;
    completion[4] = a1;
    nw_connection_receive(v4, 1u, 0xFFFFFFFF, completion);
  }
}

void sub_1001580E0(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  v25 = a2;
  v8 = a3;
  v9 = a5;
  v10 = *(a1 + 32);
  if (v10)
  {
    *(v10 + 10) = 0;
  }

  if (!v25 || v9)
  {
    if (qword_1002293F8 != -1)
    {
      dispatch_once(&qword_1002293F8, &stru_1001FCD78);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_1002293F8 != -1)
      {
        dispatch_once(&qword_1002293F8, &stru_1001FCD78);
      }

      v22 = *(a1 + 32);
      _NRLogWithArgs();
    }
  }

  else
  {
    if (qword_1002293F8 != -1)
    {
      dispatch_once(&qword_1002293F8, &stru_1001FCD78);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_1002293F8 != -1)
      {
        dispatch_once(&qword_1002293F8, &stru_1001FCD78);
      }

      v11 = qword_1002293F0;
      v12 = *(a1 + 32);
      v13 = [v25 length];
      v14 = *(a1 + 32);
      if (v14)
      {
        v14 = *(v14 + 32);
      }

      v23 = v13;
      v24 = v14;
      v20 = 194;
      v21 = v12;
      v18 = "";
      v19 = "[NRDDTLSStack readOnDTLSConnection]_block_invoke";
      _NRLogWithArgs();
    }

    v15 = *(a1 + 32);
    if (v15)
    {
      WeakRetained = objc_loadWeakRetained((v15 + 64));
      v17 = *(a1 + 32);
    }

    else
    {
      v17 = 0;
      WeakRetained = 0;
    }

    [WeakRetained handleDTLSStack:v17 inboundDecryptedData:{v25, v18, v19, v20, v21, v23, v24}];

    sub_100157F98(*(a1 + 32));
  }
}

void sub_1001582F8(uint64_t a1)
{
  if (a1)
  {
    if (qword_1002293F8 != -1)
    {
      dispatch_once(&qword_1002293F8, &stru_1001FCD78);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_1002293F8 != -1)
      {
        dispatch_once(&qword_1002293F8, &stru_1001FCD78);
      }

      _NRLogWithArgs();
    }

    sub_100157F98(a1);
    WeakRetained = objc_loadWeakRetained((a1 + 64));
    [WeakRetained handleIsReady:a1];
  }
}

void sub_1001583F0(uint64_t a1, void *a2)
{
  options = a2;
  sec_protocol_options_set_tls_server_name(options, "::1");
  sec_protocol_options_set_peer_authentication_required(options, 0);
  sec_protocol_options_append_tls_ciphersuite(options, tls_ciphersuite_RSA_WITH_AES_128_CBC_SHA|0x80);
  sec_protocol_options_append_tls_ciphersuite(options, 0xAEu);
  sec_protocol_options_append_tls_ciphersuite(options, 0x8Du);
  sec_protocol_options_append_tls_ciphersuite(options, 0x8Cu);
  sec_protocol_options_add_pre_shared_key(options, *(a1 + 32), *(a1 + 32));
}

void sub_10015848C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  v5 = *(a1 + 32);
  if (v5)
  {
    v6 = *(v5 + 48);
  }

  else
  {
    v6 = 0;
  }

  nw_connection_set_queue(v3, v6);
  if (qword_1002293F8 != -1)
  {
    dispatch_once(&qword_1002293F8, &stru_1001FCD78);
  }

  if (_NRLogIsLevelEnabled())
  {
    if (qword_1002293F8 != -1)
    {
      dispatch_once(&qword_1002293F8, &stru_1001FCD78);
    }

    v8 = *(a1 + 32);
    _NRLogWithArgs();
  }

  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_1001589A0;
  handler[3] = &unk_1001FCCB8;
  handler[4] = *(a1 + 32);
  v10 = v4;
  v7 = v4;
  nw_connection_set_state_changed_handler(v7, handler);
  nw_connection_start(v7);
}

void sub_1001585E8(uint64_t a1, void *a2)
{
  v3 = a2;
  sec_protocol_options_set_peer_authentication_required(v3, 0);
  verify_block[0] = _NSConcreteStackBlock;
  verify_block[1] = 3221225472;
  verify_block[2] = sub_100158884;
  verify_block[3] = &unk_1001FCD08;
  v4 = *(a1 + 32);
  verify_block[4] = v4;
  if (v4)
  {
    v5 = *(v4 + 48);
  }

  else
  {
    v5 = 0;
  }

  sec_protocol_options_set_verify_block(v3, verify_block, v5);
  sec_protocol_options_append_tls_ciphersuite(v3, tls_ciphersuite_RSA_WITH_AES_128_CBC_SHA|0x80);
  sec_protocol_options_append_tls_ciphersuite(v3, 0xAEu);
  sec_protocol_options_append_tls_ciphersuite(v3, 0x8Du);
  sec_protocol_options_append_tls_ciphersuite(v3, 0x8Cu);
  sec_protocol_options_add_pre_shared_key(v3, *(a1 + 40), *(a1 + 40));
}

void sub_1001586CC(uint64_t a1, int a2, void *a3)
{
  v8 = a3;
  if (qword_1002293F8 != -1)
  {
    dispatch_once(&qword_1002293F8, &stru_1001FCD78);
  }

  if (_NRLogIsLevelEnabled())
  {
    if (qword_1002293F8 != -1)
    {
      dispatch_once(&qword_1002293F8, &stru_1001FCD78);
    }

    v5 = *(a1 + 32);
    v6 = qword_1002293F0;
    nw_connection_state_to_string();
    _NRLogWithArgs();
  }

  if (a2 == 3)
  {
    sub_1001582F8(*(a1 + 32));
  }

  else if ((a2 & 0xFFFFFFFE) == 4)
  {
    if (qword_1002293F8 != -1)
    {
      dispatch_once(&qword_1002293F8, &stru_1001FCD78);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_1002293F8 != -1)
      {
        dispatch_once(&qword_1002293F8, &stru_1001FCD78);
      }

      v7 = *(a1 + 32);
      _NRLogWithArgs();
    }
  }
}

void sub_100158884(uint64_t a1, void *a2, void *a3, void *a4)
{
  v10 = a2;
  v7 = a3;
  v8 = a4;
  if (qword_1002293F8 != -1)
  {
    dispatch_once(&qword_1002293F8, &stru_1001FCD78);
  }

  if (_NRLogIsLevelEnabled())
  {
    if (qword_1002293F8 != -1)
    {
      dispatch_once(&qword_1002293F8, &stru_1001FCD78);
    }

    v9 = *(a1 + 32);
    _NRLogWithArgs();
  }

  v8[2](v8, 1);
}

void sub_1001589A0(uint64_t a1, int a2, void *a3)
{
  v18 = a3;
  if (qword_1002293F8 != -1)
  {
    dispatch_once(&qword_1002293F8, &stru_1001FCD78);
  }

  if (_NRLogIsLevelEnabled())
  {
    if (qword_1002293F8 != -1)
    {
      dispatch_once(&qword_1002293F8, &stru_1001FCD78);
    }

    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    v7 = qword_1002293F0;
    nw_connection_state_to_string();
    _NRLogWithArgs();
  }

  if (a2 == 3)
  {
    v8 = *(a1 + 32);
    if (!v8)
    {
      goto LABEL_33;
    }

    if (!*(v8 + 32))
    {
      goto LABEL_22;
    }

    if (qword_1002293F8 != -1)
    {
      dispatch_once(&qword_1002293F8, &stru_1001FCD78);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_1002293F8 != -1)
      {
        dispatch_once(&qword_1002293F8, &stru_1001FCD78);
      }

      v9 = *(a1 + 32);
      if (v9)
      {
        v10 = *(v9 + 32);
      }

      v11 = *(a1 + 40);
      v12 = qword_1002293F0;
      _NRLogWithArgs();
    }

    v13 = *(a1 + 32);
    v14 = v13 ? *(v13 + 32) : 0;
    nw_connection_cancel(v14);
    v15 = *(a1 + 32);
    if (v15 && (v16 = *(v15 + 32), *(v15 + 32) = 0, v16, (v8 = *(a1 + 32)) != 0))
    {
LABEL_22:
      objc_storeStrong((v8 + 32), *(a1 + 40));
      sub_1001582F8(*(a1 + 32));
    }

    else
    {
LABEL_33:
      sub_1001582F8(0);
    }
  }

  else if ((a2 & 0xFFFFFFFE) == 4)
  {
    if (qword_1002293F8 != -1)
    {
      dispatch_once(&qword_1002293F8, &stru_1001FCD78);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_1002293F8 != -1)
      {
        dispatch_once(&qword_1002293F8, &stru_1001FCD78);
      }

      v17 = *(a1 + 32);
      _NRLogWithArgs();
    }
  }
}

id *sub_100158C54(id *a1, void *a2, char a3, void *a4)
{
  v8 = a2;
  v9 = a4;
  if (!a1)
  {
    goto LABEL_17;
  }

  v36.receiver = a1;
  v36.super_class = NRDDTLSStack;
  v10 = objc_msgSendSuper2(&v36, "init");
  if (!v10)
  {
    v22 = sub_100159088();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v24 = sub_100159088();
      _NRLogWithArgs();
    }

    v8 = _os_log_pack_size();
    v9 = handler - ((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0);
    v25 = *__error();
    v26 = _os_log_pack_fill();
    *v26 = 136446210;
    *(v26 + 4) = "[NRDDTLSStack initDTLSWithQueue:server:delegate:]";
    sub_100159088();
    _NRLogAbortWithPack();
LABEL_15:
    v27 = sub_100159088();
    v28 = _NRLogIsLevelEnabled();

    if (v28)
    {
      v29 = sub_100159088();
      _NRLogWithArgs();

      v20 = 0;
      goto LABEL_11;
    }

LABEL_17:
    v20 = 0;
    goto LABEL_11;
  }

  a1 = v10;
  if (!v8)
  {
    goto LABEL_15;
  }

  v10[7] = atomic_fetch_add_explicit(&qword_100228C18, 1uLL, memory_order_relaxed);
  objc_storeStrong(v10 + 6, a2);
  *(a1 + 8) = a3;
  objc_storeWeak(a1 + 8, v9);
  *(a1 + 7) = sub_1001590DC();
  *(a1 + 8) = sub_1001590DC();
  v35 = 0;
  *__str = 0;
  snprintf(__str, 6uLL, "%u", *(a1 + 7));
  v33 = 0;
  *port = 0;
  snprintf(port, 6uLL, "%u", *(a1 + 8));
  if (qword_1002293F8 != -1)
  {
    dispatch_once(&qword_1002293F8, &stru_1001FCD78);
  }

  if (_NRLogIsLevelEnabled())
  {
    if (qword_1002293F8 != -1)
    {
      dispatch_once(&qword_1002293F8, &stru_1001FCD78);
    }

    _NRLogWithArgs();
  }

  host = nw_endpoint_create_host("::", port);
  secure_udp = nw_parameters_create_secure_udp(_nw_parameters_configure_protocol_disable, _nw_parameters_configure_protocol_default_configuration);
  nw_parameters_set_local_address();
  v13 = nw_endpoint_create_host("localhost", __str);
  v14 = nw_connection_create(v13, secure_udp);
  v15 = a1[5];
  a1[5] = v14;

  v16 = a1[5];
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_100159314;
  handler[3] = &unk_1001FCD58;
  v17 = a1;
  v31 = v17;
  nw_connection_set_state_changed_handler(v16, handler);
  v18 = a1[6];
  v19 = a1[5];
  nw_connection_set_queue(v19, v18);

  nw_connection_start(a1[5]);
  a1 = v17;

  v20 = a1;
LABEL_11:

  return v20;
}

id sub_100159088()
{
  if (qword_1002293F8 != -1)
  {
    dispatch_once(&qword_1002293F8, &stru_1001FCD78);
  }

  v1 = qword_1002293F0;

  return v1;
}

uint64_t sub_1001590DC()
{
  while (1)
  {
    while (1)
    {
      v0 = word_100229400;
      v1 = word_100229400++ + 1;
      if ((v0 + 2) <= 0xC001u)
      {
        v2 = arc4random_uniform(0x3FFFu);
        v1 = v2 - 0x4000;
        word_100229400 = v2 - 0x4000;
      }

      *&v7[12] = 0;
      *&v7[10] = 0;
      v8 = 0;
      *v7 = 7708;
      *&v7[2] = bswap32(v1) >> 16;
      v3 = socket(30, 2, 0);
      if ((v3 & 0x80000000) == 0)
      {
        break;
      }

      v5 = __error();
      if (strerror_r(*v5, __strerrbuf, 0x80uLL))
      {
        __strerrbuf[0] = 0;
      }

      if (qword_1002293F8 != -1)
      {
        dispatch_once(&qword_1002293F8, &stru_1001FCD78);
      }

      if (_NRLogIsLevelEnabled())
      {
        if (qword_1002293F8 != -1)
        {
          dispatch_once(&qword_1002293F8, &stru_1001FCD78);
        }

        _NRLogWithArgs();
      }
    }

    v4 = v3;
    if (!bind(v3, v7, 0x1Cu))
    {
      break;
    }

    if (qword_1002293F8 != -1)
    {
      dispatch_once(&qword_1002293F8, &stru_1001FCD78);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_1002293F8 != -1)
      {
        dispatch_once(&qword_1002293F8, &stru_1001FCD78);
      }

      _NRLogWithArgs();
    }

    close(v4);
  }

  close(v4);
  return word_100229400;
}

void sub_100159314(uint64_t a1, int a2, void *a3)
{
  v30 = a3;
  if (qword_1002293F8 != -1)
  {
    dispatch_once(&qword_1002293F8, &stru_1001FCD78);
  }

  if (_NRLogIsLevelEnabled())
  {
    if (qword_1002293F8 != -1)
    {
      dispatch_once(&qword_1002293F8, &stru_1001FCD78);
    }

    v5 = *(a1 + 32);
    v6 = qword_1002293F0;
    nw_connection_state_to_string();
    _NRLogWithArgs();
  }

  if (a2 == 3)
  {
    sub_100157C10(*(a1 + 32));
    v7 = *(a1 + 32);
    if (v7)
    {
      if (qword_1002293F8 != -1)
      {
        dispatch_once(&qword_1002293F8, &stru_1001FCD78);
      }

      if (_NRLogIsLevelEnabled())
      {
        if (qword_1002293F8 != -1)
        {
          dispatch_once(&qword_1002293F8, &stru_1001FCD78);
        }

        _NRLogWithArgs();
      }

      *&v8 = -1;
      *(&v8 + 1) = -1;
      buffer[0] = v8;
      buffer[1] = v8;
      v9 = dispatch_data_create(buffer, 0x20uLL, 0, 0);
      v45 = 0;
      *__str = 0;
      snprintf(__str, 6uLL, "%u", *(v7 + 14));
      v43 = 0;
      *port = 0;
      snprintf(port, 6uLL, "%u", *(v7 + 16));
      host = nw_endpoint_create_host("::", __str);
      if (*(v7 + 8) == 1)
      {
        configure_dtls = _NSConcreteStackBlock;
        v32 = 3221225472;
        v33 = sub_1001583F0;
        v34 = &unk_1001FCC90;
        v35 = v9;
        v11 = nw_parameters_create_secure_udp(&configure_dtls, _nw_parameters_configure_protocol_default_configuration);
        nw_parameters_set_local_address();
        v12 = nw_listener_create(v11);
        v13 = *(v7 + 24);
        *(v7 + 24) = v12;

        v14 = *(v7 + 48);
        v15 = *(v7 + 24);
        nw_listener_set_queue(v15, v14);

        v16 = *(v7 + 24);
        handler = _NSConcreteStackBlock;
        v38 = 3221225472;
        v39 = sub_10015848C;
        v40 = &unk_1001FCCE0;
        v41 = v7;
        nw_listener_set_new_connection_handler(v16, &handler);
        nw_listener_start(*(v7 + 24));
        if (qword_1002293F8 != -1)
        {
          dispatch_once(&qword_1002293F8, &stru_1001FCD78);
        }

        if (_NRLogIsLevelEnabled())
        {
          if (qword_1002293F8 != -1)
          {
            dispatch_once(&qword_1002293F8, &stru_1001FCD78);
          }

          v17 = *(v7 + 24);
          v18 = qword_1002293F0;
          _NRLogWithArgs();
        }

        v19 = v35;
      }

      else
      {
        configure_dtls = _NSConcreteStackBlock;
        v32 = 3221225472;
        v33 = sub_1001585E8;
        v34 = &unk_1001FCD30;
        v35 = v7;
        v36 = v9;
        v20 = nw_parameters_create_secure_udp(&configure_dtls, _nw_parameters_configure_protocol_default_configuration);
        nw_parameters_set_local_address();
        v21 = nw_endpoint_create_host("localhost", port);
        v22 = nw_connection_create(v21, v20);
        v23 = *(v7 + 32);
        *(v7 + 32) = v22;

        v24 = *(v7 + 32);
        handler = _NSConcreteStackBlock;
        v38 = 3221225472;
        v39 = sub_1001586CC;
        v40 = &unk_1001FCD58;
        v41 = v7;
        nw_connection_set_state_changed_handler(v24, &handler);
        v25 = *(v7 + 48);
        v26 = *(v7 + 32);
        nw_connection_set_queue(v26, v25);

        nw_connection_start(*(v7 + 32));
        if (qword_1002293F8 != -1)
        {
          dispatch_once(&qword_1002293F8, &stru_1001FCD78);
        }

        if (_NRLogIsLevelEnabled())
        {
          if (qword_1002293F8 != -1)
          {
            dispatch_once(&qword_1002293F8, &stru_1001FCD78);
          }

          v27 = *(v7 + 32);
          v28 = qword_1002293F0;
          _NRLogWithArgs();
        }

        v19 = v36;
      }
    }
  }

  else if ((a2 & 0xFFFFFFFE) == 4)
  {
    if (qword_1002293F8 != -1)
    {
      dispatch_once(&qword_1002293F8, &stru_1001FCD78);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_1002293F8 != -1)
      {
        dispatch_once(&qword_1002293F8, &stru_1001FCD78);
      }

      v29 = *(a1 + 32);
      _NRLogWithArgs();
    }
  }
}

id sub_1001599CC()
{
  objc_opt_self();
  if (qword_100229410 != -1)
  {
    dispatch_once(&qword_100229410, &stru_1001FCD98);
  }

  v0 = qword_100229408;

  return v0;
}

void sub_100159A24(id a1)
{
  v1 = sub_100159A64([NRDPolicySessionManager alloc]);
  v2 = qword_100229408;
  qword_100229408 = v1;

  _objc_release_x1(v1, v2);
}

id sub_100159A64(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v21.receiver = a1;
  v21.super_class = NRDPolicySessionManager;
  v1 = objc_msgSendSuper2(&v21, "init");
  if (!v1)
  {
    v10 = sub_100159D68();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v12 = sub_100159D68();
      _NRLogWithArgs();
    }

    goto LABEL_15;
  }

  v2 = v1;
  v3 = sub_100003490();
  v4 = *(v2 + 2);
  *(v2 + 2) = v3;

  v5 = objc_alloc_init(NEPolicySession);
  v6 = *(v2 + 3);
  *(v2 + 3) = v5;

  [*(v2 + 3) setPriority:101];
  if ([*(v2 + 3) priority] != 101)
  {
    v13 = sub_100159D68();
    v14 = _NRLogIsLevelEnabled();

    if (v14)
    {
      v15 = sub_100159D68();
      _NRLogWithArgs();
    }

    goto LABEL_15;
  }

  if (([*(v2 + 3) lockSessionToCurrentProcess] & 1) == 0)
  {
    v16 = sub_100159D68();
    v17 = _NRLogIsLevelEnabled();

    if (v17)
    {
      v18 = sub_100159D68();
      _NRLogWithArgs();
    }

LABEL_15:
    _os_log_pack_size();
    v19 = *__error();
    v20 = _os_log_pack_fill();
    *v20 = 136446210;
    *(v20 + 4) = "[NRDPolicySessionManager initManager]";
    sub_100159D68();
    _NRLogAbortWithPack();
    return 0;
  }

  v7 = objc_alloc_init(NSMutableDictionary);
  v8 = *(v2 + 4);
  *(v2 + 4) = v7;

  return v2;
}

id sub_100159D68()
{
  if (qword_100229420 != -1)
  {
    dispatch_once(&qword_100229420, &stru_1001FCDB8);
  }

  v1 = qword_100229418;

  return v1;
}

void sub_100159DBC(id a1)
{
  v1 = os_log_create("com.apple.networkrelay", "");
  v2 = qword_100229418;
  qword_100229418 = v1;

  _objc_release_x1(v1, v2);
}

id sub_100159E00(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    dispatch_assert_queue_V2(*(a1 + 16));
    v7 = [*(a1 + 32) objectForKeyedSubscript:v5];
    if (v7)
    {
      v8 = [[NSMutableArray alloc] initWithArray:v7];
    }

    else
    {
      v8 = objc_alloc_init(NSMutableArray);
    }

    v9 = v8;
    *(a1 + 8) = 1;
    v13 = [*(a1 + 24) addPolicy:v6];
    if (!v13)
    {
      sub_10013C2A8(@"NRPolicySessionManager", @"AddPolicy", @"InvalidPolicyNumber", 1, @"Failed to install policy: %@", v10, v11, v12, v6);
    }

    v14 = [NSNumber numberWithUnsignedInteger:v13];
    [v9 addObject:v14];
    [*(a1 + 32) setObject:v9 forKeyedSubscript:v5];
    if (gNRPacketLoggingEnabled == 1)
    {
      v16 = sub_100159D68();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      if (IsLevelEnabled)
      {
        v18 = sub_100159D68();
        _NRLogWithArgs();
      }
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

void sub_100159FB0(uint64_t a1, void *a2, void *a3)
{
  v22 = a2;
  v5 = a3;
  if (!a1)
  {
LABEL_11:

    return;
  }

  dispatch_assert_queue_V2(*(a1 + 16));
  v6 = [*(a1 + 32) objectForKeyedSubscript:v22];
  v7 = v6;
  if (!v6 || ![v6 containsObject:v5])
  {
LABEL_10:

    goto LABEL_11;
  }

  *(a1 + 8) = 1;
  v8 = [[NSMutableArray alloc] initWithArray:v7];
  v9 = *(a1 + 24);
  v10 = [v9 removePolicyWithID:{objc_msgSend(v5, "unsignedIntegerValue")}];

  if (v10)
  {
    if (gNRPacketLoggingEnabled == 1)
    {
      v12 = sub_100159D68();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      if (IsLevelEnabled)
      {
        v14 = sub_100159D68();
        _NRLogWithArgs();
      }
    }

    [v8 removeObject:{v5, v22}];
    if ([v8 count])
    {
      v11 = v8;
    }

    else
    {
      v11 = 0;
    }

    [*(a1 + 32) setObject:v11 forKeyedSubscript:v22];

    goto LABEL_10;
  }

  v15 = sub_100159D68();
  v16 = _NRLogIsLevelEnabled();

  if (v16)
  {
    v17 = sub_100159D68();
    _NRLogWithArgs();
  }

  _os_log_pack_size();
  v18 = *__error();
  v19 = _os_log_pack_fill();
  *v19 = 136446466;
  *(v19 + 4) = "[NRDPolicySessionManager removePolicyIDForIdentifier:policyID:]";
  *(v19 + 12) = 2112;
  *(v19 + 14) = v5;
  sub_100159D68();
  v20 = _NRLogAbortWithPack();
  sub_10015A238(v20, v21);
}

void sub_10015A238(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    dispatch_assert_queue_V2(*(a1 + 16));
    v4 = [*(a1 + 32) objectForKeyedSubscript:v3];
    if (v4)
    {
      v19 = v4;
      v20 = v3;
      *(a1 + 8) = 1;
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
            if (gNRPacketLoggingEnabled == 1)
            {
              if (qword_100229420 != -1)
              {
                dispatch_once(&qword_100229420, &stru_1001FCDB8);
              }

              v16 = qword_100229418;
              IsLevelEnabled = _NRLogIsLevelEnabled();

              if (IsLevelEnabled)
              {
                if (qword_100229420 != -1)
                {
                  dispatch_once(&qword_100229420, &stru_1001FCDB8);
                }

                v18 = qword_100229418;
                _NRLogWithArgs();
              }
            }

            v11 = *(a1 + 24);
            v12 = [v11 removePolicyWithID:{objc_msgSend(v10, "unsignedIntegerValue")}];

            if ((v12 & 1) == 0)
            {
              sub_10013C2A8(@"NRPolicySessionManager", @"RemovePolicy Failed", 0, 1, @"Failed to remove policy identifier: %@", v13, v14, v15, v10);
            }
          }

          v7 = [v5 countByEnumeratingWithState:&v21 objects:v25 count:16];
        }

        while (v7);
      }

      v3 = v20;
      [*(a1 + 32) setObject:0 forKeyedSubscript:v20];
      v4 = v19;
    }
  }
}

uint64_t sub_10015A4BC(uint64_t a1, void *a2)
{
  v2 = a1;
  if (a1)
  {
    v3 = *(a1 + 16);
    v4 = a2;
    dispatch_assert_queue_V2(v3);
    v5 = [*(v2 + 32) objectForKeyedSubscript:v4];

    v2 = [v5 count] != 0;
  }

  return v2;
}

void sub_10015A52C(uint64_t a1)
{
  if (a1)
  {
    dispatch_assert_queue_V2(*(a1 + 16));
    if (*(a1 + 8))
    {
      if (([*(a1 + 24) apply] & 1) == 0)
      {
        sub_10013C2A8(@"NRPolicySessionManager", @"ApplyPolicy Failed", 0, 1, @"Failed to apply policies", v2, v3, v4, v7);
      }

      *(a1 + 8) = 0;
      if (gNRPacketLoggingEnabled == 1)
      {
        v5 = sub_100159D68();
        IsLevelEnabled = _NRLogIsLevelEnabled();

        if (IsLevelEnabled)
        {
          v8 = sub_100159D68();
          _NRLogWithArgs();
        }
      }
    }

    else
    {
      if (qword_100229420 != -1)
      {
        dispatch_once(&qword_100229420, &stru_1001FCDB8);
      }

      if (_NRLogIsLevelEnabled())
      {
        if (qword_100229420 != -1)
        {
          dispatch_once(&qword_100229420, &stru_1001FCDB8);
        }

        _NRLogWithArgs();
      }
    }
  }
}

void sub_10015B030(id a1)
{
  v1 = os_log_create("com.apple.networkrelay", "");
  v2 = qword_100229480;
  qword_100229480 = v1;

  _objc_release_x1(v1, v2);
}

id sub_10015B480()
{
  if (qword_100229488 != -1)
  {
    dispatch_once(&qword_100229488, &stru_1001FD018);
  }

  v1 = qword_100229480;

  return v1;
}

char *sub_10015D20C(char *a1, void *a2)
{
  v4 = a2;
  v5 = v4;
  if (!a1)
  {
    goto LABEL_11;
  }

  if (!v4)
  {
    v12 = sub_10015B480();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v14 = sub_10015B480();
      _NRLogWithArgs();

      v10 = 0;
      goto LABEL_5;
    }

LABEL_11:
    v10 = 0;
    goto LABEL_5;
  }

  v21.receiver = a1;
  v21.super_class = NRDLocalDevice;
  v6 = objc_msgSendSuper2(&v21, "init");
  if (!v6)
  {
    v15 = sub_10015B480();
    v16 = _NRLogIsLevelEnabled();

    if (v16)
    {
      v17 = sub_10015B480();
      _NRLogWithArgs();
    }

    v5 = _os_log_pack_size();
    a1 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
    v18 = *__error();
    v19 = _os_log_pack_fill();
    *v19 = 136446210;
    *(v19 + 4) = "[NRDLocalDevice initWithNRUUID:]";
    sub_10015B480();
    _NRLogAbortWithPack();
    goto LABEL_11;
  }

  v7 = v6;
  objc_storeStrong(v6 + 3, a2);
  v8 = +[NSDate date];
  v9 = v7[21];
  v7[21] = v8;

  a1 = v7;
  v10 = a1;
LABEL_5:

  return v10;
}

void sub_10015D3F4(_BYTE *a1)
{
  if (a1)
  {
    if (a1[14])
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

        v9 = 1823;
        v10 = a1;
        v7 = "";
        v8 = "[NRDLocalDevice stopObservingChanges]";
        _NRLogWithArgs();
      }

      v13 = 0u;
      v14 = 0u;
      v11 = 0u;
      v12 = 0u;
      objc_opt_class();
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10015E830;
      block[3] = &unk_1001FCDD8;
      block[4] = objc_opt_self();
      if (qword_100229468 != -1)
      {
        dispatch_once(&qword_100229468, block);
      }

      v2 = qword_100229460;
      v3 = [v2 countByEnumeratingWithState:&v11 objects:v16 count:16];
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

            [a1 removeObserver:a1 forKeyPath:{*(*(&v11 + 1) + 8 * i), v7, v8, v9, v10, v11}];
          }

          v4 = [v2 countByEnumeratingWithState:&v11 objects:v16 count:16];
        }

        while (v4);
      }

      a1[14] = 0;
    }

    else
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
    }
  }
}

void sub_10015D69C(_BYTE *a1)
{
  if (a1)
  {
    if (a1[14] == 1)
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
    }

    else
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

        v9 = 1804;
        v10 = a1;
        v7 = "";
        v8 = "[NRDLocalDevice startObservingChanges]";
        _NRLogWithArgs();
      }

      v13 = 0u;
      v14 = 0u;
      v11 = 0u;
      v12 = 0u;
      objc_opt_class();
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10015E830;
      block[3] = &unk_1001FCDD8;
      block[4] = objc_opt_self();
      if (qword_100229468 != -1)
      {
        dispatch_once(&qword_100229468, block);
      }

      v2 = qword_100229460;
      v3 = [v2 countByEnumeratingWithState:&v11 objects:v16 count:16];
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

            [a1 addObserver:a1 forKeyPath:*(*(&v11 + 1) + 8 * i) options:3 context:{0, v7, v8, v9, v10, v11}];
          }

          v4 = [v2 countByEnumeratingWithState:&v11 objects:v16 count:16];
        }

        while (v4);
      }

      a1[14] = 1;
    }
  }
}

void *sub_10015D958(void *a1, void *a2)
{
  v4 = a2;
  v5 = v4;
  if (!a1)
  {
    goto LABEL_37;
  }

  if (!v4)
  {
    v28 = sub_10015B480();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (!IsLevelEnabled)
    {
      goto LABEL_37;
    }

    v16 = sub_10015B480();
    _NRLogWithArgs();
    goto LABEL_36;
  }

  v45.receiver = a1;
  v45.super_class = NRDLDDataClassKeychainItems;
  v6 = objc_msgSendSuper2(&v45, "init");
  if (v6)
  {
    a1 = v6;
    p_superclass = NRASMFlow.superclass;
    if (v5[1])
    {
      v7 = [NRDLDKeychainItemSecKey alloc];
      v8 = v5[1];
      v9 = sub_10015DF34(v7, v8);
      v10 = a1[1];
      a1[1] = v9;

      if (!a1[1])
      {
        goto LABEL_37;
      }
    }

    if (!v5[3])
    {
      goto LABEL_12;
    }

    v11 = [NRDLDKeychainItemSecKey alloc];
    v12 = v5[3];
    v13 = sub_10015E1F8(v11, v12);
    v14 = a1[2];
    a1[2] = v13;

    v15 = a1[2];
    if (!v15)
    {
      goto LABEL_37;
    }

    if (v5[2])
    {
      v16 = sub_10015E4BC(v15);
      if (v16)
      {
        if ([v5[2] isEqualToData:v16])
        {
LABEL_11:

          goto LABEL_12;
        }

        v39 = sub_10015B480();
        v40 = _NRLogIsLevelEnabled();

        if (v40)
        {
          v41 = sub_10015B480();
LABEL_35:
          _NRLogWithArgs();
        }
      }

LABEL_36:

      goto LABEL_37;
    }
  }

  else
  {
    v30 = sub_10015B480();
    v31 = _NRLogIsLevelEnabled();

    if (v31)
    {
      v32 = sub_10015B480();
      _NRLogWithArgs();
    }

    v5 = _os_log_pack_size();
    a1 = (&v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
    v33 = *__error();
    v34 = _os_log_pack_fill();
    *v34 = 136446210;
    *(v34 + 4) = "[NRDLDDataClassKeychainItems initWithLegacyKeys:]";
    sub_10015B480();
    _NRLogAbortWithPack();
  }

  v35 = sub_10015B480();
  v36 = _NRLogIsLevelEnabled();

  if (v36)
  {
    v16 = sub_10015B480();
    _NRLogWithArgs();
    goto LABEL_11;
  }

LABEL_12:
  if (v5[6])
  {
    v17 = objc_alloc((p_superclass + 414));
    v18 = v5[6];
    v19 = sub_10015E56C(v17, v18);
    v20 = a1[4];
    a1[4] = v19;

    v21 = a1[4];
    if (v21)
    {
      if (!v5[5])
      {
        v37 = sub_10015B480();
        v38 = _NRLogIsLevelEnabled();

        if (!v38)
        {
          goto LABEL_18;
        }

        v16 = sub_10015B480();
        _NRLogWithArgs();
        goto LABEL_17;
      }

      v16 = sub_10015E4BC(v21);
      if (!v16)
      {
        goto LABEL_36;
      }

      if ([v5[5] isEqualToData:v16])
      {
LABEL_17:

        goto LABEL_18;
      }

      v42 = sub_10015B480();
      v43 = _NRLogIsLevelEnabled();

      if (!v43)
      {
        goto LABEL_36;
      }

      v41 = sub_10015B480();
      goto LABEL_35;
    }

LABEL_37:
    v26 = 0;
    goto LABEL_21;
  }

LABEL_18:
  if (v5[4])
  {
    v22 = [NRDLDKeychainItemData alloc];
    v23 = v5[4];
    v24 = sub_10015DD58(v22, v23);
    v25 = a1[3];
    a1[3] = v24;

    if (!a1[3])
    {
      goto LABEL_37;
    }
  }

  a1 = a1;
  v26 = a1;
LABEL_21:

  return v26;
}

char *sub_10015DD58(char *a1, void *a2)
{
  v4 = a2;
  v5 = v4;
  if (!a1)
  {
    goto LABEL_11;
  }

  if (!v4)
  {
    v10 = sub_10015B480();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v12 = sub_10015B480();
      _NRLogWithArgs();

      v8 = 0;
      goto LABEL_5;
    }

LABEL_11:
    v8 = 0;
    goto LABEL_5;
  }

  v19.receiver = a1;
  v19.super_class = NRDLDKeychainItemData;
  v6 = objc_msgSendSuper2(&v19, "init");
  if (!v6)
  {
    v13 = sub_10015B480();
    v14 = _NRLogIsLevelEnabled();

    if (v14)
    {
      v15 = sub_10015B480();
      _NRLogWithArgs();
    }

    v5 = _os_log_pack_size();
    a1 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
    v16 = *__error();
    v17 = _os_log_pack_fill();
    *v17 = 136446210;
    *(v17 + 4) = "[NRDLDKeychainItemData initWithData:]";
    sub_10015B480();
    _NRLogAbortWithPack();
    goto LABEL_11;
  }

  v7 = v6;
  objc_storeStrong(v6 + 2, a2);
  v7[8] = 1;
  a1 = v7;
  v8 = a1;
LABEL_5:

  return v8;
}

char *sub_10015DF34(char *a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (!a1)
  {
    goto LABEL_20;
  }

  if (!v3)
  {
    v12 = sub_10015B480();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v14 = sub_10015B480();
      _NRLogWithArgs();

      v10 = 0;
      goto LABEL_9;
    }

LABEL_20:
    v10 = 0;
    goto LABEL_9;
  }

  v24.receiver = a1;
  v24.super_class = NRDLDKeychainItemSecKey;
  v5 = objc_msgSendSuper2(&v24, "init");
  if (!v5)
  {
    v15 = sub_10015B480();
    v16 = _NRLogIsLevelEnabled();

    v6 = "[NRDLDKeychainItemSecKey initWithPublicSigningKeyData:]";
    if (v16)
    {
      v17 = sub_10015B480();
      _NRLogWithArgs();
    }

    v4 = _os_log_pack_size();
    a1 = &error - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
    v18 = *__error();
    v19 = _os_log_pack_fill();
    *v19 = 136446210;
    *(v19 + 4) = "[NRDLDKeychainItemSecKey initWithPublicSigningKeyData:]";
    sub_10015B480();
    _NRLogAbortWithPack();
    goto LABEL_15;
  }

  a1 = v5;
  v25[0] = kSecAttrKeyType;
  v25[1] = kSecAttrKeyClass;
  v26[0] = kSecAttrKeyTypeEd25519;
  v26[1] = kSecAttrKeyClassPublic;
  v6 = [NSDictionary dictionaryWithObjects:v26 forKeys:v25 count:2];
  error = 0;
  v7 = SecKeyCreateWithData(v4, v6, &error);
  if (!v7)
  {
LABEL_15:
    v20 = sub_10015B480();
    v21 = _NRLogIsLevelEnabled();

    if (v21)
    {
      v22 = sub_10015B480();
      _NRLogWithArgs();
    }

    if (error)
    {
      CFRelease(error);
    }

    v10 = 0;
    goto LABEL_8;
  }

  v9 = v7;
  if (error)
  {
    CFRelease(error);
    error = 0;
  }

  objc_setProperty_nonatomic(a1, v8, v9, 16);
  CFRelease(v9);
  a1[8] = 1;
  v10 = a1;
LABEL_8:

LABEL_9:
  return v10;
}

char *sub_10015E1F8(char *a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (!a1)
  {
    goto LABEL_20;
  }

  if (!v3)
  {
    v12 = sub_10015B480();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v14 = sub_10015B480();
      _NRLogWithArgs();

      v10 = 0;
      goto LABEL_9;
    }

LABEL_20:
    v10 = 0;
    goto LABEL_9;
  }

  v24.receiver = a1;
  v24.super_class = NRDLDKeychainItemSecKey;
  v5 = objc_msgSendSuper2(&v24, "init");
  if (!v5)
  {
    v15 = sub_10015B480();
    v16 = _NRLogIsLevelEnabled();

    v6 = "[NRDLDKeychainItemSecKey initWithPrivateSigningKeyData:]";
    if (v16)
    {
      v17 = sub_10015B480();
      _NRLogWithArgs();
    }

    v4 = _os_log_pack_size();
    a1 = &error - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
    v18 = *__error();
    v19 = _os_log_pack_fill();
    *v19 = 136446210;
    *(v19 + 4) = "[NRDLDKeychainItemSecKey initWithPrivateSigningKeyData:]";
    sub_10015B480();
    _NRLogAbortWithPack();
    goto LABEL_15;
  }

  a1 = v5;
  v25[0] = kSecAttrKeyType;
  v25[1] = kSecAttrKeyClass;
  v26[0] = kSecAttrKeyTypeEd25519;
  v26[1] = kSecAttrKeyClassPrivate;
  v6 = [NSDictionary dictionaryWithObjects:v26 forKeys:v25 count:2];
  error = 0;
  v7 = SecKeyCreateWithData(v4, v6, &error);
  if (!v7)
  {
LABEL_15:
    v20 = sub_10015B480();
    v21 = _NRLogIsLevelEnabled();

    if (v21)
    {
      v22 = sub_10015B480();
      _NRLogWithArgs();
    }

    if (error)
    {
      CFRelease(error);
    }

    v10 = 0;
    goto LABEL_8;
  }

  v9 = v7;
  if (error)
  {
    CFRelease(error);
    error = 0;
  }

  objc_setProperty_nonatomic(a1, v8, v9, 16);
  CFRelease(v9);
  a1[8] = 1;
  v10 = a1;
LABEL_8:

LABEL_9:
  return v10;
}

uint64_t sub_10015E4BC(uint64_t result)
{
  if (result)
  {
    v1 = *(result + 16);
    SecKeyCopyPublicBytes();
    v2 = sub_10015B480();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v4 = sub_10015B480();
      _NRLogWithArgs();
    }

    return 0;
  }

  return result;
}

char *sub_10015E56C(char *a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (!a1)
  {
    goto LABEL_20;
  }

  if (!v3)
  {
    v12 = sub_10015B480();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v14 = sub_10015B480();
      _NRLogWithArgs();

      v10 = 0;
      goto LABEL_9;
    }

LABEL_20:
    v10 = 0;
    goto LABEL_9;
  }

  v24.receiver = a1;
  v24.super_class = NRDLDKeychainItemSecKey;
  v5 = objc_msgSendSuper2(&v24, "init");
  if (!v5)
  {
    v15 = sub_10015B480();
    v16 = _NRLogIsLevelEnabled();

    v6 = "[NRDLDKeychainItemSecKey initWithPrivateDHKeyData:]";
    if (v16)
    {
      v17 = sub_10015B480();
      _NRLogWithArgs();
    }

    v4 = _os_log_pack_size();
    a1 = &error - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
    v18 = *__error();
    v19 = _os_log_pack_fill();
    *v19 = 136446210;
    *(v19 + 4) = "[NRDLDKeychainItemSecKey initWithPrivateDHKeyData:]";
    sub_10015B480();
    _NRLogAbortWithPack();
    goto LABEL_15;
  }

  a1 = v5;
  v25[0] = kSecAttrKeyType;
  v25[1] = kSecAttrKeyClass;
  v26[0] = kSecAttrKeyTypeX25519;
  v26[1] = kSecAttrKeyClassPrivate;
  v6 = [NSDictionary dictionaryWithObjects:v26 forKeys:v25 count:2];
  error = 0;
  v7 = SecKeyCreateWithData(v4, v6, &error);
  if (!v7)
  {
LABEL_15:
    v20 = sub_10015B480();
    v21 = _NRLogIsLevelEnabled();

    if (v21)
    {
      v22 = sub_10015B480();
      _NRLogWithArgs();
    }

    if (error)
    {
      CFRelease(error);
    }

    v10 = 0;
    goto LABEL_8;
  }

  v9 = v7;
  if (error)
  {
    CFRelease(error);
    error = 0;
  }

  objc_setProperty_nonatomic(a1, v8, v9, 16);
  CFRelease(v9);
  a1[8] = 1;
  v10 = a1;
LABEL_8:

LABEL_9:
  return v10;
}

void sub_10015E830(uint64_t a1)
{
  outCount = 0;
  v1 = class_copyPropertyList(*(a1 + 32), &outCount);
  v2 = [NSMutableArray alloc];
  v3 = [v2 initWithCapacity:outCount];
  if (outCount)
  {
    for (i = 0; i < outCount; ++i)
    {
      v5 = [[NSString alloc] initWithCString:property_getName(v1[i]) encoding:4];
      if (([0 containsObject:v5] & 1) == 0)
      {
        [v3 addObject:v5];
      }
    }
  }

  else if (!v1)
  {
    goto LABEL_8;
  }

  free(v1);
LABEL_8:
  v6 = [[NSArray alloc] initWithArray:v3];
  v7 = qword_100229460;
  qword_100229460 = v6;

  v14 = v3;
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

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v8 = qword_100229460;
  v9 = [v8 countByEnumeratingWithState:&v15 objects:v20 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v16;
    do
    {
      for (j = 0; j != v10; j = j + 1)
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v15 + 1) + 8 * j);
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
      }

      v10 = [v8 countByEnumeratingWithState:&v15 objects:v20 count:16];
    }

    while (v10);
  }
}

id *sub_10015F4A8(id *a1, void *a2, void *a3, int a4)
{
  v7 = a2;
  v8 = a3;
  if (!a1)
  {
    goto LABEL_16;
  }

  if (!v7)
  {
    v14 = sub_10015B480();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v16 = sub_10015B480();
      _NRLogWithArgs();

      v12 = 0;
      goto LABEL_9;
    }

LABEL_16:
    v12 = 0;
    goto LABEL_9;
  }

  v23.receiver = a1;
  v23.super_class = NRDLDKeychainItemData;
  v9 = objc_msgSendSuper2(&v23, "init");
  if (!v9)
  {
    v17 = sub_10015B480();
    v18 = _NRLogIsLevelEnabled();

    v8 = "[NRDLDKeychainItemData initFromKeychainWithName:nrUUID:dataProtectionClass:]";
    if (v18)
    {
      v19 = sub_10015B480();
      _NRLogWithArgs();
    }

    v7 = _os_log_pack_size();
    a1 = (&v22 - ((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0));
    v20 = *__error();
    v21 = _os_log_pack_fill();
    *v21 = 136446210;
    *(v21 + 4) = "[NRDLDKeychainItemData initFromKeychainWithName:nrUUID:dataProtectionClass:]";
    sub_10015B480();
    _NRLogAbortWithPack();
    goto LABEL_15;
  }

  a1 = v9;
  objc_opt_self();
  if (qword_1002294C8 != -1)
  {
LABEL_15:
    dispatch_once(&qword_1002294C8, &stru_1001FD250);
  }

  v10 = qword_1002294C0;
  v11 = sub_100183000(v10, v7, v8, a4, 0);

  if (v11)
  {
    objc_storeStrong(a1 + 2, v11);
    v12 = a1;
  }

  else
  {
    v12 = 0;
  }

LABEL_9:
  return v12;
}

uint64_t sub_10015F718(uint64_t a1, void *a2, void *a3, int a4)
{
  v7 = a2;
  v8 = a3;
  if (a1)
  {
    if (v7)
    {
      if (*(a1 + 8) != 1)
      {
LABEL_8:
        a1 = 1;
        goto LABEL_12;
      }

      objc_opt_self();
      if (qword_1002294C8 != -1)
      {
        dispatch_once(&qword_1002294C8, &stru_1001FD250);
      }

      v9 = qword_1002294C0;
      v10 = sub_1001825C0(v9, *(a1 + 16), v7, v8, a4, 0, 0);

      if (v10)
      {
        *(a1 + 8) = 0;
        goto LABEL_8;
      }
    }

    else
    {
      v11 = sub_10015B480();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      if (IsLevelEnabled)
      {
        v13 = sub_10015B480();
        _NRLogWithArgs();
      }
    }

    a1 = 0;
  }

LABEL_12:

  return a1;
}

_BYTE *sub_10015F850(void *a1, void *a2)
{
  if (!a1)
  {
LABEL_8:
    v6 = 0;
    goto LABEL_4;
  }

  v13.receiver = a1;
  v13.super_class = NRDLDKeychainItemSecKey;
  v3 = objc_msgSendSuper2(&v13, "init");
  if (!v3)
  {
    v8 = sub_10015B480();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v10 = sub_10015B480();
      _NRLogWithArgs();
    }

    _os_log_pack_size();
    v11 = *__error();
    v12 = _os_log_pack_fill();
    *v12 = 136446210;
    *(v12 + 4) = "[NRDLDKeychainItemSecKey initWithKeyRef:]";
    sub_10015B480();
    _NRLogAbortWithPack();
    goto LABEL_8;
  }

  v5 = v3;
  objc_setProperty_nonatomic(v3, v4, a2, 16);
  v5[8] = 1;
  v6 = v5;
LABEL_4:

  return v6;
}

void *sub_10015F9C0(char *a1, void *a2, void *a3, int a4)
{
  v7 = a2;
  v8 = a3;
  if (!a1)
  {
    goto LABEL_61;
  }

  if (!v7)
  {
    v26 = sub_10015B480();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v28 = sub_10015B480();
      _NRLogWithArgs();

      v23 = 0;
      goto LABEL_54;
    }

LABEL_61:
    v23 = 0;
    goto LABEL_54;
  }

  v45.receiver = a1;
  v45.super_class = NRDLDKeychainItemSecKey;
  v9 = objc_msgSendSuper2(&v45, "init");
  if (v9)
  {
    a1 = v9;
    objc_opt_self();
    if (qword_1002294C8 == -1)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v29 = sub_10015B480();
    v30 = _NRLogIsLevelEnabled();

    if (v30)
    {
      v31 = sub_10015B480();
      _NRLogWithArgs();
    }

    _os_log_pack_size();
    a1 = &v41 - ((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0);
    v32 = *__error();
    v33 = _os_log_pack_fill();
    *v33 = 136446210;
    *(v33 + 4) = "[NRDLDKeychainItemSecKey initFromKeychainWithName:nrUUID:dataProtectionClass:]";
    sub_10015B480();
    _NRLogAbortWithPack();
  }

  dispatch_once(&qword_1002294C8, &stru_1001FD250);
LABEL_5:
  v10 = qword_1002294C0;
  v11 = v7;
  v12 = v8;
  if (v10)
  {
    dispatch_assert_queue_V2(v10[2]);
    v13 = &kSecAttrAccessibleAlwaysThisDeviceOnlyPrivate;
    if (a4 != 4)
    {
      v13 = &kSecAttrAccessibleAfterFirstUnlockThisDeviceOnly;
    }

    v14 = *v13;
    String = NRDataProtectionClassCreateString();
    v42 = v11;
    v43 = v8;
    if (!v14)
    {
      v38 = sub_100180A2C();
      v39 = _NRLogIsLevelEnabled();

      if (!v39)
      {
        v23 = 0;
        goto LABEL_51;
      }

      v18 = sub_100180A2C();
      _NRLogWithArgs();
      v23 = 0;
LABEL_50:

LABEL_51:
      v11 = v42;
      v8 = v43;

      goto LABEL_52;
    }

    v16 = [NSString alloc];
    if (v12)
    {
      v17 = [v16 initWithFormat:@"%@/%@/%@/%@", @"com.apple.terminusd", v12, String, v11];
    }

    else
    {
      v17 = [v16 initWithFormat:@"%@/%@", @"com.apple.terminusd", v11];
    }

    v18 = v17;
    v44 = v7;
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

    v19 = [v18 dataUsingEncoding:4];
    v47[0] = kSecClass;
    v47[1] = kSecAttrApplicationTag;
    v48[0] = kSecClassKey;
    v48[1] = v19;
    v47[2] = kSecAttrAccessGroup;
    v47[3] = kSecReturnRef;
    v48[2] = @"com.apple.terminusd";
    v48[3] = &__kCFBooleanTrue;
    v20 = [NSDictionary dictionaryWithObjects:v48 forKeys:v47 count:4];
    result = 0;
    v21 = SecItemCopyMatching(v20, &result);
    if (!v21 && result)
    {
      v22 = CFGetTypeID(result);
      if (v22 != SecKeyGetTypeID())
      {
        if (result)
        {
          CFRelease(result);
          result = 0;
        }

        v34 = sub_100180A2C();
        v35 = _NRLogIsLevelEnabled();

        v7 = v44;
        if (v35)
        {
          v36 = sub_100180A2C();
          v37 = CFGetTypeID(result);
          v40 = CFCopyTypeIDDescription(v37);
          _NRLogWithArgs();
        }

        v23 = 0;
        goto LABEL_49;
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

        _NRLogWithArgs();
      }

      v23 = result;
LABEL_48:
      v7 = v44;
LABEL_49:

      goto LABEL_50;
    }

    if (result)
    {
      CFRelease(result);
      result = 0;
    }

    if (v21 == -25308)
    {
      if (qword_1002294D8 != -1)
      {
        dispatch_once(&qword_1002294D8, &stru_1001FD2C0);
      }

      if (!_NRLogIsLevelEnabled())
      {
        goto LABEL_47;
      }

      if (qword_1002294D8 == -1)
      {
        goto LABEL_46;
      }
    }

    else if (v21 == -25300)
    {
      if (qword_1002294D8 != -1)
      {
        dispatch_once(&qword_1002294D8, &stru_1001FD2C0);
      }

      if (!_NRLogIsLevelEnabled())
      {
        goto LABEL_47;
      }

      if (qword_1002294D8 == -1)
      {
LABEL_46:
        _NRLogWithArgs();
LABEL_47:
        v23 = 0;
        goto LABEL_48;
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
        goto LABEL_47;
      }

      if (qword_1002294D8 == -1)
      {
        goto LABEL_46;
      }
    }

    dispatch_once(&qword_1002294D8, &stru_1001FD2C0);
    goto LABEL_46;
  }

  v23 = 0;
LABEL_52:

  if (v23)
  {
    objc_setProperty_nonatomic(a1, v24, v23, 16);
    a1 = a1;
    v23 = a1;
  }

LABEL_54:

  return v23;
}

uint64_t sub_100160170(uint64_t a1, void *a2, void *a3, int a4)
{
  v7 = a2;
  v8 = a3;
  if (a1)
  {
    if (!v7)
    {
      v27 = sub_10015B480();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      if (IsLevelEnabled)
      {
        v29 = sub_10015B480();
        _NRLogWithArgs();
      }

      goto LABEL_62;
    }

    if (*(a1 + 8) != 1)
    {
LABEL_59:
      a1 = 1;
      goto LABEL_63;
    }

    objc_opt_self();
    if (qword_1002294C8 != -1)
    {
      dispatch_once(&qword_1002294C8, &stru_1001FD250);
    }

    v9 = qword_1002294C0;
    v10 = *(a1 + 16);
    v11 = v7;
    v12 = v8;
    v13 = v12;
    if (!v9)
    {

      goto LABEL_62;
    }

    v47 = v9;
    dispatch_assert_queue_V2(v9[2]);
    v14 = &kSecAttrAccessibleAlwaysThisDeviceOnlyPrivate;
    if (a4 != 4)
    {
      v14 = &kSecAttrAccessibleAfterFirstUnlockThisDeviceOnly;
    }

    v15 = *v14;
    String = NRDataProtectionClassCreateString();
    if (!v15)
    {
      v31 = sub_100180A2C();
      v32 = _NRLogIsLevelEnabled();

      if (v32)
      {
        v33 = sub_100180A2C();
        _NRLogWithArgs();
      }

      goto LABEL_62;
    }

    v17 = [NSString alloc];
    if (v13)
    {
      v18 = [v17 initWithFormat:@"%@/%@/%@/%@", @"com.apple.terminusd", v13, String, v11];
    }

    else
    {
      v18 = [v17 initWithFormat:@"%@/%@", @"com.apple.terminusd", v11, v38, v41];
    }

    v19 = v18;
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

      v42 = String;
      v44 = v19;
      v39 = 478;
      v34 = "";
      v36 = "[NRDKeyManager saveKey:toKeychainWithName:nrUUID:dataProtectionClass:]";
      _NRLogWithArgs();
    }

    v48 = v19;
    v49 = String;
    [v19 dataUsingEncoding:{4, v34, v36, v39, v42, v44}];
    v53[0] = kSecClass;
    v53[1] = kSecAttrApplicationTag;
    v55 = v54 = kSecClassKey;
    v50 = v55;
    v53[2] = kSecAttrAccessGroup;
    v56 = @"com.apple.terminusd";
    v46 = [NSDictionary dictionaryWithObjects:&v54 forKeys:v53 count:3];
    v20 = SecItemDelete(v46);
    switch(v20)
    {
      case -25308:
        if (qword_1002294D8 != -1)
        {
          dispatch_once(&qword_1002294D8, &stru_1001FD2C0);
        }

        v26 = v47;
        v25 = v19;
        v24 = String;
        if (!_NRLogIsLevelEnabled())
        {
          goto LABEL_45;
        }

        if (qword_1002294D8 == -1)
        {
          goto LABEL_44;
        }

        break;
      case -25300:
        goto LABEL_28;
      case 0:
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

          v43 = String;
          v45 = v19;
          v40 = 493;
          v35 = "";
          v37 = "[NRDKeyManager saveKey:toKeychainWithName:nrUUID:dataProtectionClass:]";
          _NRLogWithArgs();
        }

LABEL_28:
        v51[0] = kSecClass;
        v51[1] = kSecAttrApplicationTag;
        v52[0] = kSecClassKey;
        v52[1] = v50;
        v51[2] = kSecAttrAccessGroup;
        v51[3] = kSecAttrAccessible;
        v52[2] = @"com.apple.terminusd";
        v52[3] = v15;
        v51[4] = kSecValueRef;
        v52[4] = v10;
        v21 = [NSDictionary dictionaryWithObjects:v52 forKeys:v51 count:5, v35, v37, v40, v43, v45];
        v22 = SecItemAdd(v21, 0);
        v23 = v22 == 0;
        if (v22)
        {
          v25 = v48;
          v24 = v49;
          if (v22 == -25308)
          {
            if (qword_1002294D8 != -1)
            {
              dispatch_once(&qword_1002294D8, &stru_1001FD2C0);
            }

            if (!_NRLogIsLevelEnabled())
            {
              goto LABEL_56;
            }

            if (qword_1002294D8 == -1)
            {
LABEL_55:
              _NRLogWithArgs();
LABEL_56:

              v26 = v47;
LABEL_57:

              if (v23)
              {
                *(a1 + 8) = 0;
                goto LABEL_59;
              }

LABEL_62:
              a1 = 0;
              goto LABEL_63;
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
              goto LABEL_56;
            }

            if (qword_1002294D8 == -1)
            {
              goto LABEL_55;
            }
          }
        }

        else
        {
          v25 = v48;
          v24 = v49;
          if (qword_1002294D8 != -1)
          {
            dispatch_once(&qword_1002294D8, &stru_1001FD2C0);
          }

          if (!_NRLogIsLevelEnabled())
          {
            goto LABEL_56;
          }

          if (qword_1002294D8 == -1)
          {
            goto LABEL_55;
          }
        }

        dispatch_once(&qword_1002294D8, &stru_1001FD2C0);
        goto LABEL_55;
      default:
        if (qword_1002294D8 != -1)
        {
          dispatch_once(&qword_1002294D8, &stru_1001FD2C0);
        }

        v26 = v47;
        v25 = v19;
        v24 = String;
        if (!_NRLogIsLevelEnabled())
        {
LABEL_45:
          v23 = 0;
          goto LABEL_57;
        }

        if (qword_1002294D8 == -1)
        {
LABEL_44:
          _NRLogWithArgs();
          goto LABEL_45;
        }

        break;
    }

    dispatch_once(&qword_1002294D8, &stru_1001FD2C0);
    goto LABEL_44;
  }

LABEL_63:

  return a1;
}

char *sub_100160954(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (!a1)
  {
    goto LABEL_18;
  }

  if (!v3)
  {
    v11 = sub_10015B480();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      goto LABEL_17;
    }

    goto LABEL_18;
  }

  if (!*(a1 + 16))
  {
    v13 = sub_10015B480();
    v14 = _NRLogIsLevelEnabled();

    if (v14)
    {
LABEL_17:
      v15 = sub_10015B480();
      _NRLogWithArgs();

      v9 = 0;
      goto LABEL_13;
    }

LABEL_18:
    v9 = 0;
    goto LABEL_13;
  }

  v23[0] = kSecAttrKeyType;
  v23[1] = kSecAttrKeyClass;
  v24[0] = kSecAttrKeyTypeX25519;
  v24[1] = kSecAttrKeyClassPublic;
  v5 = [NSDictionary dictionaryWithObjects:v24 forKeys:v23 count:2];
  error = 0;
  v6 = SecKeyCreateWithData(v4, v5, &error);
  if (v6)
  {
    v7 = v6;
    if (error)
    {
      CFRelease(error);
      error = 0;
    }

    v8 = SecKeyCopyKeyExchangeResult(*(a1 + 16), kSecKeyAlgorithmECDHKeyExchangeStandard, v7, &__NSDictionary0__struct, &error);
    CFRelease(v7);
    if (v8)
    {
      if (error)
      {
        CFRelease(error);
        error = 0;
      }

      v9 = sub_10015DD58([NRDLDKeychainItemData alloc], v8);
    }

    else
    {
      v19 = sub_10015B480();
      v20 = _NRLogIsLevelEnabled();

      if (v20)
      {
        v21 = sub_10015B480();
        _NRLogWithArgs();
      }

      if (error)
      {
        CFRelease(error);
        v9 = 0;
        error = 0;
      }

      else
      {
        v9 = 0;
      }
    }
  }

  else
  {
    v16 = sub_10015B480();
    v17 = _NRLogIsLevelEnabled();

    if (v17)
    {
      v18 = sub_10015B480();
      _NRLogWithArgs();
    }

    if (error)
    {
      CFRelease(error);
    }

    v9 = 0;
  }

LABEL_13:
  return v9;
}

void *sub_100160C18(void *a1, void *a2, int a3)
{
  v5 = a2;
  v6 = v5;
  if (!a1)
  {
    goto LABEL_8;
  }

  if (!v5)
  {
    v22 = sub_10015B480();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v24 = sub_10015B480();
      _NRLogWithArgs();
    }

    goto LABEL_8;
  }

  v31.receiver = a1;
  v31.super_class = NRDLDDataClassKeychainItems;
  v7 = objc_msgSendSuper2(&v31, "init");
  if (!v7)
  {
    v26 = sub_10015B480();
    v27 = _NRLogIsLevelEnabled();

    if (v27)
    {
      v28 = sub_10015B480();
      _NRLogWithArgs();
    }

    _os_log_pack_size();
    v29 = *__error();
    v30 = _os_log_pack_fill();
    *v30 = 136446210;
    *(v30 + 4) = "[NRDLDDataClassKeychainItems initFromKeychainWithNRUUID:dataProtectionClass:]";
    sub_10015B480();
    _NRLogAbortWithPack();
  }

  a1 = v7;
  v8 = sub_10015F9C0([NRDLDKeychainItemSecKey alloc], @"RemotePublicKey", v6, a3);
  v9 = a1[1];
  a1[1] = v8;

  v10 = a1[1];
  v11 = sub_10015F9C0([NRDLDKeychainItemSecKey alloc], @"LocalPrivateKey", v6, a3);
  v12 = a1[2];
  a1[2] = v11;

  v13 = a1[2];
  v14 = sub_10015F9C0([NRDLDKeychainItemSecKey alloc], @"DHPrivateKey", v6, a3);
  v15 = a1[4];
  a1[4] = v14;

  v16 = a1[4];
  v17 = sub_10015F4A8([NRDLDKeychainItemData alloc], @"SharedSecret", v6, a3);
  v18 = a1[3];
  a1[3] = v17;

  v19.i64[0] = a1[3];
  v19.i64[1] = v16;
  v20.i64[0] = v10;
  v20.i64[1] = v13;
  if ((vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_s64(v20), vceqzq_s64(v19))))) & 1) == 0)
  {
LABEL_8:
    v21 = 0;
    goto LABEL_9;
  }

  a1 = a1;
  v21 = a1;
LABEL_9:

  return v21;
}

void *sub_100160EC0(void *a1, int a2)
{
  if (!a1)
  {
    return 0;
  }

  v42.receiver = a1;
  v42.super_class = NRDLDDataClassKeychainItems;
  v3 = objc_msgSendSuper2(&v42, "init");
  if (!v3)
  {
    v22 = sub_10015B480();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v24 = sub_10015B480();
      _NRLogWithArgs();
    }

    v4 = _os_log_pack_size();
    __chkstk_darwin();
    v25 = *__error();
    v26 = _os_log_pack_fill();
    *v26 = 136446210;
    *(v26 + 4) = "[NRDLDDataClassKeychainItems initWithNewKeysForDataProtectionClass:]";
    sub_10015B480();
    _NRLogAbortWithPack();
LABEL_27:
    v27 = sub_10015B480();
    v28 = _NRLogIsLevelEnabled();

    if (v28)
    {
      v29 = sub_10015B480();
      String = NRDataProtectionClassCreateString();
      _NRLogWithArgs();

      v20 = 0;
      goto LABEL_22;
    }

LABEL_33:
    v20 = 0;
    goto LABEL_22;
  }

  v4 = v3;
  v5 = &kSecAttrAccessibleAlwaysThisDeviceOnlyPrivate;
  error = 0;
  if (a2 != 4)
  {
    v5 = &kSecAttrAccessibleAfterFirstUnlockThisDeviceOnly;
  }

  if (!*v5)
  {
    goto LABEL_27;
  }

  v6 = SecAccessControlCreateWithFlags(kCFAllocatorDefault, *v5, 0x40000000uLL, &error);
  if (!v6)
  {
    v30 = sub_10015B480();
    v31 = _NRLogIsLevelEnabled();

    if (v31)
    {
      v32 = sub_10015B480();
      _NRLogWithArgs();
    }

    if (error)
    {
      CFRelease(error);
    }

    goto LABEL_33;
  }

  v7 = v6;
  if (error)
  {
    CFRelease(error);
    error = 0;
  }

  v49[0] = kSecAttrKeyType;
  v49[1] = kSecPrivateKeyAttrs;
  v50[0] = kSecAttrKeyTypeEd25519;
  v47[0] = kSecAttrIsPermanent;
  v47[1] = kSecAttrAccessControl;
  v48[0] = &__kCFBooleanFalse;
  v48[1] = v7;
  v8 = [NSDictionary dictionaryWithObjects:v48 forKeys:v47 count:2];
  v50[1] = v8;
  v9 = [NSDictionary dictionaryWithObjects:v50 forKeys:v49 count:2];

  v45[1] = kSecPrivateKeyAttrs;
  v46[0] = kSecAttrKeyTypeX25519;
  v44[1] = v7;
  v45[0] = kSecAttrKeyType;
  v43[0] = kSecAttrIsPermanent;
  v43[1] = kSecAttrAccessControl;
  v44[0] = &__kCFBooleanFalse;
  v10 = [NSDictionary dictionaryWithObjects:v44 forKeys:v43 count:2];
  v46[1] = v10;
  v11 = [NSDictionary dictionaryWithObjects:v46 forKeys:v45 count:2];

  CFRelease(v7);
  if (!v4[2])
  {
    v12 = SecKeyCreateRandomKey(v9, &error);
    if (!v12)
    {
      v33 = sub_10015B480();
      v34 = _NRLogIsLevelEnabled();

      if (v34)
      {
        v35 = sub_10015B480();
        _NRLogWithArgs();
      }

      v36 = error;
      if (!error)
      {
        goto LABEL_41;
      }

      goto LABEL_37;
    }

    v13 = v12;
    if (error)
    {
      CFRelease(error);
      error = 0;
    }

    v14 = sub_10015F850([NRDLDKeychainItemSecKey alloc], v13);
    v15 = v4[2];
    v4[2] = v14;

    CFRelease(v13);
    if (v4[4])
    {
      goto LABEL_20;
    }

LABEL_16:
    v16 = SecKeyCreateRandomKey(v11, &error);
    if (v16)
    {
      v17 = v16;
      if (error)
      {
        CFRelease(error);
        error = 0;
      }

      v18 = sub_10015F850([NRDLDKeychainItemSecKey alloc], v17);
      v19 = v4[4];
      v4[4] = v18;

      CFRelease(v17);
      goto LABEL_20;
    }

    v37 = sub_10015B480();
    v38 = _NRLogIsLevelEnabled();

    if (v38)
    {
      v39 = sub_10015B480();
      _NRLogWithArgs();
    }

    v36 = error;
    if (!error)
    {
LABEL_41:
      v20 = 0;
      goto LABEL_21;
    }

LABEL_37:
    CFRelease(v36);
    v20 = 0;
    error = 0;
    goto LABEL_21;
  }

  if (!v4[4])
  {
    goto LABEL_16;
  }

LABEL_20:
  v20 = v4;
LABEL_21:

LABEL_22:
  return v20;
}

uint64_t sub_1001613B4(void *a1, void *a2, int a3)
{
  v5 = a2;
  v6 = v5;
  if (!a1)
  {
LABEL_16:
    v12 = 0;
    goto LABEL_11;
  }

  if (!v5)
  {
    v14 = sub_10015B480();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v16 = sub_10015B480();
      _NRLogWithArgs();
    }

    goto LABEL_16;
  }

  v7 = a1[1];
  if (!v7)
  {
    v8 = 0;
    v9 = a1[2];
    if (!v9)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v8 = sub_100160170(v7, @"RemotePublicKey", v6, a3) ^ 1;
  v9 = a1[2];
  if (v9)
  {
LABEL_5:
    v8 |= sub_100160170(v9, @"LocalPrivateKey", v6, a3) ^ 1;
  }

LABEL_6:
  v10 = a1[4];
  if (v10)
  {
    v8 |= sub_100160170(v10, @"DHPrivateKey", v6, a3) ^ 1;
  }

  v11 = a1[3];
  if (v11)
  {
    v8 |= sub_10015F718(v11, @"SharedSecret", v6, a3) ^ 1;
  }

  v12 = v8 ^ 1u;
LABEL_11:

  return v12;
}

void sub_1001614EC(void *a1, void *a2, int a3)
{
  v5 = a2;
  if (a1)
  {
    v24 = v5;
    if (v5)
    {
      v6 = a1[1];
      if (v6)
      {
        v7 = v6;
        v8 = v24;
        objc_opt_self();
        if (qword_1002294C8 != -1)
        {
          dispatch_once(&qword_1002294C8, &stru_1001FD250);
        }

        v9 = qword_1002294C0;
        sub_1001820C0(v9, @"RemotePublicKey", v8, a3);

        v5 = v24;
      }

      v10 = a1[2];
      if (v10)
      {
        v11 = v10;
        v12 = v24;
        objc_opt_self();
        if (qword_1002294C8 != -1)
        {
          dispatch_once(&qword_1002294C8, &stru_1001FD250);
        }

        v13 = qword_1002294C0;
        sub_1001820C0(v13, @"LocalPrivateKey", v12, a3);

        v5 = v24;
      }

      v14 = a1[4];
      if (v14)
      {
        v15 = v14;
        v16 = v24;
        objc_opt_self();
        if (qword_1002294C8 != -1)
        {
          dispatch_once(&qword_1002294C8, &stru_1001FD250);
        }

        v17 = qword_1002294C0;
        sub_1001820C0(v17, @"DHPrivateKey", v16, a3);

        v5 = v24;
      }

      v18 = a1[3];
      if (v18)
      {
        v19 = v18;
        v20 = v24;
        objc_opt_self();
        if (qword_1002294C8 != -1)
        {
          dispatch_once(&qword_1002294C8, &stru_1001FD250);
        }

        v21 = qword_1002294C0;
        sub_100183644(v21, @"SharedSecret", v20, a3, 0, 0);

        v19[8] = 1;
        goto LABEL_19;
      }
    }

    else
    {
      v22 = sub_10015B480();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      v5 = 0;
      if (IsLevelEnabled)
      {
        v19 = sub_10015B480();
        _NRLogWithArgs();
LABEL_19:

        v5 = v24;
      }
    }
  }
}

void *sub_1001617A4(void *a1, void *a2)
{
  v3 = a2;
  if (!a1)
  {
LABEL_11:
    v9 = 0;
    goto LABEL_5;
  }

  v20.receiver = a1;
  v20.super_class = NRDDeviceIdentity;
  v4 = objc_msgSendSuper2(&v20, "init");
  if (!v4)
  {
    v11 = sub_10015B480();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v13 = sub_10015B480();
      _NRLogWithArgs();
    }

    v3 = _os_log_pack_size();
    a1 = (&v19 - ((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0));
    v14 = *__error();
    v15 = _os_log_pack_fill();
    *v15 = 136446210;
    *(v15 + 4) = "[NRDDeviceIdentity initWithDeviceIdentityPayload:]";
    sub_10015B480();
    _NRLogAbortWithPack();
    goto LABEL_9;
  }

  a1 = v4;
  if ([v3 length] != 48)
  {
LABEL_9:
    v16 = sub_10015B480();
    v17 = _NRLogIsLevelEnabled();

    if (v17)
    {
      v18 = sub_10015B480();
      _NRLogWithArgs();
    }

    goto LABEL_11;
  }

  v21[0] = 0;
  v21[1] = 0;
  [v3 getBytes:v21 range:{0, 16}];
  v5 = [[NSUUID alloc] initWithUUIDBytes:v21];
  v6 = a1[1];
  a1[1] = v5;

  v7 = [v3 subdataWithRange:{16, 32}];
  v8 = a1[2];
  a1[2] = v7;

  a1 = a1;
  v9 = a1;
LABEL_5:

  return v9;
}

void sub_1001619D8()
{
  v0 = objc_opt_self();
  v1 = sub_100003490();
  dispatch_assert_queue_V2(v1);

  if (qword_100229428)
  {
    return;
  }

  objc_opt_self();
  if (qword_1002294C8 != -1)
  {
    dispatch_once(&qword_1002294C8, &stru_1001FD250);
  }

  v2 = qword_1002294C0;
  v3 = objc_opt_class();
  v4 = sub_100183C7C(v2, v3, @"LocalDeviceConfigClassD", 4);
  v5 = qword_100229428;
  qword_100229428 = v4;

  if (!qword_100229428)
  {
    v6 = objc_alloc_init(NSMutableDictionary);
    v7 = qword_100229428;
    qword_100229428 = v6;
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

    v8 = qword_100229428;
    v9 = qword_100229480;
    [v8 count];
    _NRLogWithArgs();
  }

  if (qword_100229428)
  {
    v52[1] = v0;
    v10 = objc_alloc_init(NSMutableDictionary);
    v11 = qword_100229430;
    qword_100229430 = v10;

    if (qword_100229430)
    {
      v59 = 0u;
      v60 = 0u;
      v57 = 0u;
      v58 = 0u;
      v12 = qword_100229428;
      v13 = [v12 countByEnumeratingWithState:&v57 objects:v66 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = *v58;
        do
        {
          for (i = 0; i != v14; i = i + 1)
          {
            if (*v58 != v15)
            {
              objc_enumerationMutation(v12);
            }

            v17 = *(*(&v57 + 1) + 8 * i);
            v18 = [qword_100229428 objectForKeyedSubscript:v17];
            v19 = v18;
            if (v18)
            {
              v20 = *(v18 + 56);
            }

            else
            {
              v20 = 0;
            }

            v21 = v20;

            if (v21)
            {
              [qword_100229430 setObject:v17 forKeyedSubscript:v21];
            }
          }

          v14 = [v12 countByEnumeratingWithState:&v57 objects:v66 count:16];
        }

        while (v14);
      }

      objc_opt_self();
      v61 = 0u;
      v62 = 0u;
      v63 = 0u;
      v64 = 0u;
      v22 = qword_100229428;
      v23 = [v22 countByEnumeratingWithState:&v61 objects:v67 count:16];
      if (v23)
      {
        v24 = v23;
        v25 = *v62;
        do
        {
          for (j = 0; j != v24; j = j + 1)
          {
            if (*v62 != v25)
            {
              objc_enumerationMutation(v22);
            }

            v27 = *(*(&v61 + 1) + 8 * j);
            v28 = [qword_100229428 objectForKeyedSubscript:v27];
            v29 = v28;
            if (v28 && (*(v28 + 48) & 3) != 0 && !*(v28 + 72))
            {
              v30 = sub_100160C18([NRDLDDataClassKeychainItems alloc], v27, 4);
              v31 = v29[9];
              v29[9] = v30;
            }
          }

          v24 = [v22 countByEnumeratingWithState:&v61 objects:v67 count:16];
        }

        while (v24);
      }

      v32 = objc_opt_self();
      objc_opt_self();
      if (qword_1002294C8 == -1)
      {
        goto LABEL_38;
      }

      goto LABEL_60;
    }

    v47 = sub_10015B480();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v49 = sub_10015B480();
      _NRLogWithArgs();
    }
  }

  else
  {
    v44 = sub_10015B480();
    v45 = _NRLogIsLevelEnabled();

    if (v45)
    {
      v46 = sub_10015B480();
      _NRLogWithArgs();
    }
  }

  _os_log_pack_size();
  v32 = v52 - ((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = *__error();
  v51 = _os_log_pack_fill();
  *v51 = 136446210;
  *(v51 + 4) = "+[NRDLocalDevice initializeLocalDeviceDatabaseIfNecessary]";
  sub_10015B480();
  _NRLogAbortWithPack();
LABEL_60:
  dispatch_once(&qword_1002294C8, &stru_1001FD250);
LABEL_38:
  v33 = qword_1002294C0;
  v67[0] = _NSConcreteStackBlock;
  v67[1] = 3221225472;
  v67[2] = sub_100162100;
  v67[3] = &unk_1001FCDD8;
  v67[4] = v32;
  sub_100181928(v33, v67);

  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v34 = qword_100229428;
  v35 = [v34 countByEnumeratingWithState:&v53 objects:v65 count:16];
  if (v35)
  {
    v36 = v35;
    v37 = *v54;
    do
    {
      for (k = 0; k != v36; k = k + 1)
      {
        if (*v54 != v37)
        {
          objc_enumerationMutation(v34);
        }

        v39 = [qword_100229428 objectForKeyedSubscript:*(*(&v53 + 1) + 8 * k)];
        objc_opt_self();
        if (v39)
        {
          v40 = v39[18];
        }

        else
        {
          v40 = 0;
        }

        v41 = [v40 usesTLS];
        if (v39)
        {
          v42 = v39[3];
        }

        else
        {
          v42 = 0;
        }

        sub_1001627AC(NRDLocalDevice, v41, v42);
      }

      v36 = [v34 countByEnumeratingWithState:&v53 objects:v65 count:16];
    }

    while (v36);
  }

  v43 = objc_opt_self();
  sub_1001629FC(v43, 0);
}

void sub_100162100(uint64_t a1)
{
  objc_opt_self();
  if (qword_1002294C8 != -1)
  {
    dispatch_once(&qword_1002294C8, &stru_1001FD250);
  }

  v2 = qword_1002294C0;
  v3 = objc_opt_class();
  v4 = sub_100183C7C(v2, v3, @"LocalDeviceKeysClassC", 3);

  if (v4)
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

      v5 = qword_100229480;
      v39 = 1110;
      v40 = [v4 count];
      v37 = "";
      v38 = "+[NRDLocalDevice loadClassCKeys]_block_invoke";
      _NRLogWithArgs();
    }

    v41 = a1;
    v42 = v4;
    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v47 objects:v56 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v48;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v48 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v47 + 1) + 8 * i);
          v12 = [qword_100229428 objectForKeyedSubscript:{v11, v37, v38, v39, v40}];
          v13 = v12;
          if (v12 && (*(v12 + 48) & 3) != 0)
          {
            v14 = [NRDLDDataClassKeychainItems alloc];
            v15 = [v6 objectForKeyedSubscript:v11];
            v16 = sub_10015D958(v14, v15);
            v17 = v13[10];
            v13[10] = v16;

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

              v39 = 1120;
              v40 = v13;
              v37 = "";
              v38 = "+[NRDLocalDevice loadClassCKeys]_block_invoke";
LABEL_15:
              _NRLogWithArgs();
            }
          }

          else
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

              v39 = 1115;
              v40 = v11;
              v37 = "";
              v38 = "+[NRDLocalDevice loadClassCKeys]_block_invoke";
              goto LABEL_15;
            }
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v47 objects:v56 count:16];
      }

      while (v8);
    }

    a1 = v41;
    v18 = *(v41 + 32);
    v4 = v42;
    if (sub_1001637E0())
    {
      objc_opt_self();
      if (qword_1002294C8 != -1)
      {
        dispatch_once(&qword_1002294C8, &stru_1001FD250);
      }

      v19 = qword_1002294C0;
      v20 = sub_100183644(v19, @"LocalDeviceKeysClassC", 0, 3, 0, 0);

      if ((v20 & 1) == 0)
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

          v39 = 1130;
          v37 = "";
          v38 = "+[NRDLocalDevice loadClassCKeys]_block_invoke";
          _NRLogWithArgs();
        }
      }
    }
  }

  v21 = *(a1 + 32);
  v22 = objc_opt_self();
  objc_opt_self();
  if (qword_1002294C8 != -1)
  {
    dispatch_once(&qword_1002294C8, &stru_1001FD250);
  }

  v23 = qword_1002294C0;
  v51[0] = _NSConcreteStackBlock;
  v51[1] = 3221225472;
  v52 = sub_100163D80;
  v53 = &unk_1001FCDD8;
  v54 = v22;
  v24 = v51;
  if (v23)
  {
    dispatch_assert_queue_V2(v23[2]);
    if (MKBGetDeviceLockState())
    {
      sub_100181B44(v23, v24);
    }

    else
    {
      v52(v24);
    }
  }

  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v25 = qword_100229428;
  v26 = [v25 countByEnumeratingWithState:&v43 objects:v55 count:16];
  if (v26)
  {
    v27 = v26;
    v28 = *v44;
    do
    {
      for (j = 0; j != v27; j = j + 1)
      {
        if (*v44 != v28)
        {
          objc_enumerationMutation(v25);
        }

        v30 = *(*(&v43 + 1) + 8 * j);
        v31 = [qword_100229428 objectForKeyedSubscript:{v30, v37, v38, v39}];
        v32 = v31;
        if (v31 && (*(v31 + 48) & 3) != 0)
        {
          if (!*(v31 + 80))
          {
            v33 = sub_100160C18([NRDLDDataClassKeychainItems alloc], v30, 3);
            v34 = *(v32 + 80);
            *(v32 + 80) = v33;
          }

          v35 = *(v32 + 176);
          if (v35)
          {
            goto LABEL_52;
          }

          if ((*(v32 + 48) & 0x10) == 0)
          {
            v36 = sub_10015F4A8([NRDLDKeychainItemData alloc], @"OOBK", v30, 3);
            v35 = *(v32 + 176);
            *(v32 + 176) = v36;
LABEL_52:
          }
        }
      }

      v27 = [v25 countByEnumeratingWithState:&v43 objects:v55 count:16];
    }

    while (v27);
  }
}

void sub_1001627AC(uint64_t a1, uint64_t a2, void *a3)
{
  v20 = a3;
  v4 = objc_opt_self();
  v5 = sub_100003490();
  dispatch_assert_queue_V2(v5);

  if (v20)
  {
    v6 = sub_100163A30(v4, v20);
    if (v6)
    {
      if (v6[19] == a2)
      {
LABEL_4:

        goto LABEL_5;
      }
    }

    else
    {
      v10 = sub_10015B480();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      if (IsLevelEnabled)
      {
        v12 = sub_10015B480();
        _NRLogWithArgs();
      }

      a2 = _os_log_pack_size();
      v13 = *__error();
      v14 = _os_log_pack_fill();
      *v14 = 136446210;
      *(v14 + 4) = "+[NRDLocalDevice updateLocalDeviceFlagsInner:nrUUID:saveToDisk:]";
      sub_10015B480();
      v6 = _NRLogAbortWithPack();
    }

    v15 = v6;
    v16 = _NRCopyLogObjectForNRUUID();
    v17 = _NRLogIsLevelEnabled();

    if (v17)
    {
      v18 = _NRCopyLogObjectForNRUUID();
      v19 = v15[19];
      _NRLogWithArgs();
    }

    [v15 setLocalFlags:{a2, v20}];
    v6 = v15;
    goto LABEL_4;
  }

  v7 = sub_10015B480();
  v8 = _NRLogIsLevelEnabled();

  if (v8)
  {
    v9 = sub_10015B480();
    _NRLogWithArgs();
    v6 = v9;
    goto LABEL_4;
  }

LABEL_5:
}

uint64_t sub_1001629FC(uint64_t a1, int a2)
{
  objc_opt_self();
  v2 = sub_100003490();
  dispatch_assert_queue_V2(v2);

  v112 = 0u;
  v113 = 0u;
  v110 = 0u;
  v111 = 0u;
  v3 = qword_100229428;
  v4 = [v3 countByEnumeratingWithState:&v110 objects:v122 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v111;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v111 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v10 = *(*(&v110 + 1) + 8 * i);
        v11 = [qword_100229428 objectForKeyedSubscript:v10];
        if (v11)
        {
          v12 = v11[8];

          if (v12 == 1)
          {
            if (!v6)
            {
              v6 = objc_alloc_init(NSMutableDictionary);
            }

            v9 = [qword_100229428 objectForKeyedSubscript:v10];
            [v6 setObject:v9 forKeyedSubscript:v10];
          }
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v110 objects:v122 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  if ([v6 count])
  {
    v108 = 0u;
    v109 = 0u;
    v106 = 0u;
    v107 = 0u;
    v13 = v6;
    v14 = [v13 countByEnumeratingWithState:&v106 objects:v121 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v107;
      do
      {
        for (j = 0; j != v15; j = j + 1)
        {
          if (*v107 != v16)
          {
            objc_enumerationMutation(v13);
          }

          [qword_100229428 setObject:0 forKeyedSubscript:*(*(&v106 + 1) + 8 * j)];
        }

        v15 = [v13 countByEnumeratingWithState:&v106 objects:v121 count:16];
      }

      while (v15);
    }
  }

  objc_opt_self();
  if (qword_1002294C8 != -1)
  {
    dispatch_once(&qword_1002294C8, &stru_1001FD250);
  }

  v18 = qword_1002294C0;
  if (!v18)
  {
    goto LABEL_32;
  }

  v19 = v18;
  dispatch_assert_queue_V2(*(v18 + 2));
  if ((v19[10] & 1) == 0)
  {
    v19[10] = 1;
    if (v19[8] == 4)
    {
      sub_100181020(v19);
      if (v19[9] == 1)
      {
        v19[8] = 3;
        sub_100181284(v19);
      }
    }
  }

  v20 = v19[8] & 0xFD;

  if (v20 == 1 && (sub_1001637E0() & 1) == 0)
  {
    v21 = 0;
  }

  else
  {
LABEL_32:
    v21 = 1;
  }

  objc_opt_self();
  v114 = 0u;
  v115 = 0u;
  v116 = 0u;
  v117 = 0u;
  v22 = qword_100229428;
  v23 = [v22 countByEnumeratingWithState:&v114 objects:v123 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v115;
    v26 = 1;
    do
    {
      for (k = 0; k != v24; k = k + 1)
      {
        if (*v115 != v25)
        {
          objc_enumerationMutation(v22);
        }

        v28 = *(*(&v114 + 1) + 8 * k);
        v29 = [qword_100229428 objectForKeyedSubscript:v28];
        if (v29 && (*(v29 + 8) & 1) == 0 && (*(v29 + 48) & 3) != 0 && *(v29 + 72))
        {
          v30 = v29;
          v31 = sub_1001613B4(*(v29 + 72), v28, 4);
          v29 = v30;
          v26 &= v31;
        }
      }

      v24 = [v22 countByEnumeratingWithState:&v114 objects:v123 count:16];
    }

    while (v24);

    if ((v26 & 1) == 0)
    {
      v21 = 0;
    }
  }

  else
  {
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

    v89 = 1392;
    v87 = "";
    v88 = "+[NRDLocalDevice saveAllDevicesToDiskWithForce:]";
    _NRLogWithArgs();
  }

  v93 = v21;
  v104 = 0u;
  v105 = 0u;
  v102 = 0u;
  v103 = 0u;
  v32 = qword_100229428;
  v33 = [v32 countByEnumeratingWithState:&v102 objects:v120 count:16];
  if (v33)
  {
    v34 = v33;
    v35 = *v103;
    do
    {
      v36 = 0;
      do
      {
        if (*v103 != v35)
        {
          objc_enumerationMutation(v32);
        }

        v37 = *(*(&v102 + 1) + 8 * v36);
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

          v38 = qword_100229428;
          v39 = qword_100229480;
          v40 = [v38 objectForKeyedSubscript:v37];
          v41 = v40;
          if (v40)
          {
            v42 = "NO";
            if (*(v40 + 13))
            {
              v42 = "YES";
            }
          }

          else
          {
            v42 = "NO";
          }

          v90 = v37;
          v91 = v42;
          v89 = 1396;
          v87 = "";
          v88 = "+[NRDLocalDevice saveAllDevicesToDiskWithForce:]";
          _NRLogWithArgs();
        }

        v43 = [qword_100229428 objectForKeyedSubscript:{v37, v87, v88, v89, v90, v91}];
        if (v43)
        {
          v44 = v43[13];

          if (v44 == 1)
          {

            goto LABEL_82;
          }
        }

        v36 = v36 + 1;
      }

      while (v34 != v36);
      v45 = [v32 countByEnumeratingWithState:&v102 objects:v120 count:16];
      v34 = v45;
    }

    while (v45);
  }

  if (!a2)
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

      v89 = 1420;
      v87 = "";
      v88 = "+[NRDLocalDevice saveAllDevicesToDiskWithForce:]";
      _NRLogWithArgs();
    }

    goto LABEL_125;
  }

LABEL_82:
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

    if (a2)
    {
      v46 = "Force s";
    }

    else
    {
      v46 = "S";
    }

    v47 = qword_100229428;
    v48 = qword_100229480;
    v90 = v46;
    v91 = [v47 count];
    v89 = 1405;
    v87 = "";
    v88 = "+[NRDLocalDevice saveAllDevicesToDiskWithForce:]";
    _NRLogWithArgs();
  }

  objc_opt_self();
  if (qword_1002294C8 != -1)
  {
    dispatch_once(&qword_1002294C8, &stru_1001FD250);
  }

  v49 = qword_1002294C0;
  v50 = qword_100229428;
  v51 = @"LocalDeviceConfigClassD";
  if (!v49)
  {
    goto LABEL_121;
  }

  dispatch_assert_queue_V2(v49[2]);
  if (!v50)
  {
    v84 = sub_100180A2C();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v86 = sub_100180A2C();
      v87 = "[NRDKeyManager saveNRUUIDDictionary:toKeychainWithName:dataProtectionClass:]";
      _NRLogWithArgs();
    }

    goto LABEL_121;
  }

  v50 = v50;
  v52 = @"LocalDeviceConfigClassD";
  dispatch_assert_queue_V2(v49[2]);
  v123[0] = 0;
  v53 = [NSKeyedArchiver archivedDataWithRootObject:v50 requiringSecureCoding:1 error:v123];
  v54 = v123[0];
  v55 = v54;
  if (!v53 || v54)
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

      v90 = @"LocalDeviceConfigClassD";
      v91 = v55;
      v89 = 877;
      v87 = "";
      v88 = "[NRDKeyManager _saveNRUUIDDictionary:toKeychainWithName:dataProtectionClass:retryBlock:]";
      _NRLogWithArgs();
    }

LABEL_121:
    goto LABEL_122;
  }

  LOBYTE(v114) = 0;
  v56 = sub_1001825C0(v49, v53, @"LocalDeviceConfigClassD", 0, 4, &v114, 0);

  if (v56)
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

      v57 = qword_100229428;
      v58 = qword_100229480;
      v89 = 1411;
      v90 = [v57 count];
      v87 = "";
      v88 = "+[NRDLocalDevice saveAllDevicesToDiskWithForce:]";
      _NRLogWithArgs();
    }

    v100 = 0u;
    v101 = 0u;
    v98 = 0u;
    v99 = 0u;
    v59 = qword_100229428;
    v60 = [v59 countByEnumeratingWithState:&v98 objects:v119 count:16];
    if (v60)
    {
      v61 = v60;
      v62 = *v99;
      do
      {
        for (m = 0; m != v61; m = m + 1)
        {
          if (*v99 != v62)
          {
            objc_enumerationMutation(v59);
          }

          v64 = [qword_100229428 objectForKeyedSubscript:{*(*(&v98 + 1) + 8 * m), v87, v88, v89, v90, v91}];
          if (v64)
          {
            v64[13] = 0;
          }
        }

        v61 = [v59 countByEnumeratingWithState:&v98 objects:v119 count:16];
      }

      while (v61);
    }

    goto LABEL_125;
  }

LABEL_122:
  v65 = sub_10015B480();
  v66 = _NRLogIsLevelEnabled();

  if (v66)
  {
    v67 = sub_10015B480();
    v87 = [qword_100229428 count];
    _NRLogWithArgs();
  }

  v93 = 0;
LABEL_125:
  if ([v6 count])
  {
    v96 = 0u;
    v97 = 0u;
    v94 = 0u;
    v95 = 0u;
    v68 = v6;
    v69 = [v68 countByEnumeratingWithState:&v94 objects:v118 count:16];
    if (v69)
    {
      v70 = v69;
      v71 = *v95;
      do
      {
        for (n = 0; n != v70; n = n + 1)
        {
          if (*v95 != v71)
          {
            objc_enumerationMutation(v68);
          }

          v73 = *(*(&v94 + 1) + 8 * n);
          v74 = [v68 objectForKeyedSubscript:v73];
          [qword_100229428 setObject:v74 forKeyedSubscript:v73];
        }

        v70 = [v68 countByEnumeratingWithState:&v94 objects:v118 count:16];
      }

      while (v70);
    }
  }

  objc_opt_self();
  if (qword_100229438)
  {
    v116 = 0u;
    v117 = 0u;
    v114 = 0u;
    v115 = 0u;
    v75 = qword_100229428;
    v76 = [v75 countByEnumeratingWithState:&v114 objects:v123 count:16];
    if (v76)
    {
      v77 = v76;
      v78 = *v115;
LABEL_137:
      v79 = 0;
      while (1)
      {
        if (*v115 != v78)
        {
          objc_enumerationMutation(v75);
        }

        v80 = [qword_100229428 objectForKeyedSubscript:*(*(&v114 + 1) + 8 * v79)];
        if (v80)
        {
          v81 = v80[7];

          if (v81)
          {
            break;
          }
        }

        if (v77 == ++v79)
        {
          v77 = [v75 countByEnumeratingWithState:&v114 objects:v123 count:16];
          if (v77)
          {
            goto LABEL_137;
          }

          goto LABEL_144;
        }
      }
    }

    else
    {
LABEL_144:

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

      if (qword_100229438)
      {
        objc_opt_self();
        if (qword_1002294C8 != -1)
        {
          dispatch_once(&qword_1002294C8, &stru_1001FD250);
        }

        v82 = qword_1002294C0;
        sub_1001820C0(v82, @"IdentityKey", 0, 4);

        v75 = qword_100229438;
      }

      else
      {
        v75 = 0;
      }

      qword_100229438 = 0;
    }
  }

  return v93;
}

uint64_t sub_1001637E0()
{
  objc_opt_self();
  objc_opt_self();
  if (qword_1002294C8 != -1)
  {
    dispatch_once(&qword_1002294C8, &stru_1001FD250);
  }

  v0 = qword_1002294C0;
  if (!v0)
  {
    goto LABEL_26;
  }

  v1 = v0;
  dispatch_assert_queue_V2(*(v0 + 2));
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

  v2 = v1[8] & 0xFD;

  if (v2 == 1)
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v3 = qword_100229428;
    v4 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v16;
      v7 = 1;
      while (1)
      {
        for (i = 0; i != v5; i = i + 1)
        {
          if (*v16 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v9 = *(*(&v15 + 1) + 8 * i);
          v10 = [qword_100229428 objectForKeyedSubscript:{v9, v15}];
          v11 = v10;
          if (v10 && (*(v10 + 8) & 1) == 0 && (*(v10 + 48) & 3) != 0)
          {
            v12 = *(v10 + 80);
            if (v12)
            {
              if (!sub_1001613B4(v12, v9, 3))
              {
                v7 = 0;
                v13 = v11[22];
                if (!v13)
                {
                  goto LABEL_13;
                }

LABEL_25:
                v7 &= sub_10015F718(v13, @"OOBK", v9, 3);
                goto LABEL_13;
              }

              [v11 setDatabaseFlags:v11[6] | 0x400];
            }

            v13 = v11[22];
            if (v13)
            {
              goto LABEL_25;
            }
          }

LABEL_13:
        }

        v5 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
        if (!v5)
        {
          goto LABEL_28;
        }
      }
    }

    LOBYTE(v7) = 1;
LABEL_28:
  }

  else
  {
LABEL_26:
    LOBYTE(v7) = 0;
  }

  return v7 & 1;
}

uint64_t sub_100163A30(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = objc_opt_self();
  if (!v2)
  {
    v8 = sub_10015B480();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      goto LABEL_8;
    }

    goto LABEL_9;
  }

  v4 = v3;
  if ((_NRIsUUIDNonZero() & 1) == 0)
  {
    v10 = sub_10015B480();
    v11 = _NRLogIsLevelEnabled();

    if (v11)
    {
LABEL_8:
      v12 = sub_10015B480();
      _NRLogWithArgs();
    }

LABEL_9:
    v6 = 0;
    goto LABEL_4;
  }

  v5 = sub_100003490();
  dispatch_assert_queue_V2(v5);

  v6 = sub_100163B2C(v4, v2, 1);
LABEL_4:

  return v6;
}

uint64_t sub_100163B2C(uint64_t a1, void *a2, int a3)
{
  v4 = a2;
  v5 = objc_opt_self();
  if (!v4)
  {
    v14 = sub_10015B480();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      goto LABEL_20;
    }

    goto LABEL_21;
  }

  v6 = v5;
  if ((_NRIsUUIDNonZero() & 1) == 0)
  {
    v16 = sub_10015B480();
    v17 = _NRLogIsLevelEnabled();

    if (v17)
    {
LABEL_20:
      v18 = sub_10015B480();
      _NRLogWithArgs();
    }

LABEL_21:
    v8 = 0;
    goto LABEL_16;
  }

  v7 = sub_100003490();
  dispatch_assert_queue_V2(v7);

  sub_1001619D8(v6);
  v8 = [qword_100229428 objectForKeyedSubscript:v4];
  if (!v8 && a3)
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

      v21 = 2282;
      v22 = v4;
      v19 = "";
      v20 = "+[NRDLocalDevice copyLocalDeviceForNRUUID:shouldCreate:]";
      _NRLogWithArgs();
    }

    v9 = sub_10015D20C([NRDLocalDevice alloc], v4);
    v8 = v9;
    if (v9)
    {
      if ((v9[12] & 1) == 0)
      {
        v9[12] = 1;
        sub_10015D3F4(v9);
      }

      *(v8 + 13) = 1;
      [qword_100229428 setObject:v8 forKeyedSubscript:{v4, v19, v20, v21, v22}];
      v10 = *(v8 + 24);
      v11 = [v8 description];
      sub_1000059A8(v10, 5000, v11, 0);
    }

    else
    {
      [qword_100229428 setObject:0 forKeyedSubscript:v4];
    }

    v12 = objc_opt_self();
    sub_1001629FC(v12, 0);
  }

LABEL_16:

  return v8;
}

void sub_100163D80(uint64_t a1)
{
  v10 = 0;
  objc_opt_self();
  if (qword_1002294C8 != -1)
  {
    dispatch_once(&qword_1002294C8, &stru_1001FD250);
  }

  v2 = qword_1002294C0;
  v3 = sub_100183644(v2, @"LocalDeviceKeysClassA", 0, 1, &v10, 0);

  if ((v3 & 1) == 0)
  {
    if (v10 == 1)
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

      objc_opt_self();
      if (qword_1002294C8 != -1)
      {
        dispatch_once(&qword_1002294C8, &stru_1001FD250);
      }

      v4 = qword_1002294C0;
      v6[0] = _NSConcreteStackBlock;
      v6[1] = 3221225472;
      v7 = sub_100164018;
      v8 = &unk_1001FCDD8;
      v9 = *(a1 + 32);
      v5 = v6;
      if (v4)
      {
        dispatch_assert_queue_V2(v4[2]);
        if (MKBGetDeviceLockState())
        {
          sub_100181B44(v4, v5);
        }

        else
        {
          v7(v5);
        }
      }
    }

    else
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
    }
  }
}

void sub_100164018(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = objc_opt_self();
  objc_opt_self();
  if (qword_1002294C8 != -1)
  {
    dispatch_once(&qword_1002294C8, &stru_1001FD250);
  }

  v3 = qword_1002294C0;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v6 = sub_100163D80;
  v7 = &unk_1001FCDD8;
  v8 = v2;
  v4 = v5;
  if (v3)
  {
    dispatch_assert_queue_V2(v3[2]);
    if (MKBGetDeviceLockState())
    {
      sub_100181B44(v3, v4);
    }

    else
    {
      (v6)(v4);
    }
  }
}

uint64_t sub_100164120(uint64_t a1, char a2)
{
  objc_opt_self();
  if (qword_100229438)
  {
    return 1;
  }

  v4 = sub_10015F9C0([NRDLDKeychainItemSecKey alloc], @"IdentityKey", 0, 4);
  v5 = qword_100229438;
  qword_100229438 = v4;

  if (qword_100229438)
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

      v6 = qword_100229438;
      v7 = qword_100229480;
      v8 = sub_10015E4BC(v6);
      LogString = _NRKeyCreateLogString();
      _NRLogWithArgs();
    }

    return 1;
  }

  if (a2)
  {
    error = 0;
    v9 = SecAccessControlCreateWithFlags(kCFAllocatorDefault, kSecAttrAccessibleAlwaysThisDeviceOnlyPrivate, 0x40000000uLL, &error);
    if (!v9)
    {
      v26 = sub_10015B480();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      if (IsLevelEnabled)
      {
        v28 = sub_10015B480();
        _NRLogWithArgs();
      }

      if (error)
      {
        CFRelease(error);
      }

      return 0;
    }

    v10 = v9;
    if (error)
    {
      CFRelease(error);
      error = 0;
    }

    v38[0] = kSecAttrKeyType;
    v38[1] = kSecPrivateKeyAttrs;
    v39[0] = kSecAttrKeyTypeX25519;
    v36[0] = kSecAttrIsPermanent;
    v36[1] = kSecAttrAccessControl;
    v37[0] = &__kCFBooleanFalse;
    v37[1] = v10;
    v11 = [NSDictionary dictionaryWithObjects:v37 forKeys:v36 count:2];
    v39[1] = v11;
    v12 = [NSDictionary dictionaryWithObjects:v39 forKeys:v38 count:2];

    CFRelease(v10);
    v13 = SecKeyCreateRandomKey(v12, &error);
    if (v13)
    {
      v14 = v13;
      if (error)
      {
        CFRelease(error);
        error = 0;
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

        v15 = qword_100229480;
        v35 = 0;
        SecKeyCopyPublicBytes();
        v16 = v35;
        v35 = 0;
        v17 = _NRKeyCreateLogString();

        _NRLogWithArgs();
      }

      v18 = sub_10015F850([NRDLDKeychainItemSecKey alloc], v14);
      v19 = qword_100229438;
      qword_100229438 = v18;

      CFRelease(v14);
      if (sub_100160170(qword_100229438, @"IdentityKey", 0, 4))
      {
        v20 = 1;
LABEL_38:

        return v20;
      }

      if (qword_100229488 != -1)
      {
        dispatch_once(&qword_100229488, &stru_1001FD018);
      }

      if (_NRLogIsLevelEnabled())
      {
        v24 = sub_10015B480();
        _NRLogWithArgs();
      }

      v25 = qword_100229438;
      qword_100229438 = 0;
    }

    else
    {
      v29 = sub_10015B480();
      v30 = _NRLogIsLevelEnabled();

      if (v30)
      {
        v31 = sub_10015B480();
        _NRLogWithArgs();
      }

      if (error)
      {
        CFRelease(error);
        v20 = 0;
        error = 0;
        goto LABEL_38;
      }
    }

    v20 = 0;
    goto LABEL_38;
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

    v32 = "";
    _NRLogWithArgs();
  }

  sub_10013C2A8(@"NRDLocalDevice", @"EncryptedIdentifier", @"KeyLoadFailure", 0, 0, v21, v22, v23, v32);
  return 0;
}

NRDDecryptedIdentifier *sub_1001646B4(uint64_t a1, void *a2, void *a3, void *a4)
{
  v6 = a2;
  v7 = a3;
  v8 = a4;
  objc_opt_self();
  if (!sub_100164120(NRDLocalDevice, 0))
  {
    v18 = 0;
    goto LABEL_15;
  }

  v9 = [NEIKEv2EncryptedKeyIDIdentifier alloc];
  v10 = [v6 identifierData];
  v11 = [v7 identifierData];
  if (qword_100229438)
  {
    v12 = *(qword_100229438 + 16);
  }

  else
  {
    v12 = 0;
  }

  v13 = [v9 initWithKeyID:v10 aad:v11 keyRef:v12];

  v39 = 0;
  v14 = [v13 decryptWithSession:v8 returnError:&v39];
  v15 = v39;
  if (!v14)
  {
    v30 = sub_10015B480();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (!IsLevelEnabled)
    {
      v18 = 0;
      v32 = @"DecryptionFailure";
      goto LABEL_27;
    }

    v23 = sub_10015B480();
    v37 = "";
    _NRLogWithArgs();
    v32 = @"DecryptionFailure";
    goto LABEL_22;
  }

  if ([v14 length] != 96)
  {
    v33 = sub_10015B480();
    v34 = _NRLogIsLevelEnabled();

    if (!v34)
    {
      v18 = 0;
      v32 = @"IncorrectLength";
      goto LABEL_27;
    }

    v23 = sub_10015B480();
    [v14 length];
    v37 = "";
    _NRLogWithArgs();
    v32 = @"IncorrectLength";
    goto LABEL_22;
  }

  v16 = [v14 bytes];
  if (*v16 != 1)
  {
    v35 = sub_10015B480();
    v36 = _NRLogIsLevelEnabled();

    if (!v36)
    {
      v18 = 0;
      v32 = @"IncorrectVersion";
      goto LABEL_27;
    }

    v23 = sub_10015B480();
    v38 = *v16;
    v37 = "";
    _NRLogWithArgs();
    v32 = @"IncorrectVersion";
    goto LABEL_22;
  }

  v17 = objc_alloc_init(NRDDecryptedIdentifier);
  v18 = v17;
  if (v17)
  {
    v17->_version = *v16;
  }

  v19 = [[NSUUID alloc] initWithUUIDBytes:v16 + 1];
  if (v18)
  {
    identity = v18->_identity;
    v18->_identity = v19;

    v21 = v18->_identity;
  }

  else
  {

    v21 = 0;
  }

  v22 = qword_100229430;
  v23 = v21;
  v24 = [v22 objectForKeyedSubscript:v23];
  if (!v18)
  {

    v32 = @"NoDeviceFound";
LABEL_22:

    v18 = 0;
LABEL_27:
    sub_10013C2A8(@"NRDLocalDevice", @"EncryptedIdentifier", v32, 0, 0, v26, v27, v28, v37);
    goto LABEL_13;
  }

  nrUUID = v18->_nrUUID;
  v18->_nrUUID = v24;

  if (!v18->_nrUUID)
  {
    v32 = @"NoDeviceFound";
    goto LABEL_27;
  }

LABEL_13:

LABEL_15:
  return v18;
}

char *sub_100164A44(char *a1)
{
  v1 = a1;
  if (a1)
  {
    if (!qword_100229438)
    {
      v25 = 0u;
      v24 = 0u;
      v23 = 0u;
      v22 = 0u;
      v2 = qword_100229428;
      v3 = [v2 countByEnumeratingWithState:&v22 objects:v27 count:16];
      if (v3)
      {
        v4 = v3;
        v5 = *v23;
        do
        {
          v6 = 0;
          do
          {
            if (*v23 != v5)
            {
              objc_enumerationMutation(v2);
            }

            v7 = [qword_100229428 objectForKeyedSubscript:{*(*(&v22 + 1) + 8 * v6), v22}];
            if (v7)
            {
              v8 = v7[7];

              if (v8)
              {
                v10 = 0;
                goto LABEL_16;
              }
            }

            v6 = v6 + 1;
          }

          while (v4 != v6);
          v9 = [v2 countByEnumeratingWithState:&v22 objects:v27 count:16];
          v4 = v9;
        }

        while (v9);
      }

      v10 = 1;
LABEL_16:

      if (!sub_100164120(NRDLocalDevice, v10))
      {
        return 0;
      }
    }

    if (*(v1 + 7))
    {
      goto LABEL_22;
    }

    v11 = objc_alloc_init(NSUUID);
    if (v11)
    {
      v12 = v11;
      [v1 setLocalIdentity:v11];
      v13 = &qword_100229000;
      [qword_100229430 setObject:*(v1 + 3) forKeyedSubscript:v12];
      if ((v1[8] & 1) != 0 || (v14 = objc_opt_self(), sub_1001629FC(v14, 0)))
      {

LABEL_22:
        v12 = [[NSMutableData alloc] initWithCapacity:48];
        v26[0] = 0;
        v26[1] = 0;
        [*(v1 + 7) getUUIDBytes:v26];
        [v12 appendBytes:v26 length:16];
        v15 = sub_10015E4BC(qword_100229438);
        if (v15)
        {
          [v12 appendData:v15];
          v1 = v12;
        }

        else
        {
          v1 = 0;
        }

        goto LABEL_25;
      }
    }

    else
    {
      v17 = sub_10015B480();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      v13 = "[NRDLocalDevice copyDeviceIdentityPayload]";
      if (IsLevelEnabled)
      {
        v19 = sub_10015B480();
        _NRLogWithArgs();
      }

      v1 = _os_log_pack_size();
      v12 = &v22 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
      v20 = *__error();
      v21 = _os_log_pack_fill();
      *v21 = 136446210;
      *(v21 + 4) = "[NRDLocalDevice copyDeviceIdentityPayload]";
      sub_10015B480();
      _NRLogAbortWithPack();
    }

    [v13[134] setObject:0 forKeyedSubscript:{v12, v22}];
    [v1 setLocalIdentity:0];
    v1 = 0;
LABEL_25:
  }

  return v1;
}

id sub_100164D70(void *a1, int a2)
{
  if (!a1)
  {
    return 0;
  }

  if (a2 == 1)
  {
    v2 = a1[11];
    goto LABEL_8;
  }

  if (a2 == 3)
  {
    v2 = a1[10];
    goto LABEL_8;
  }

  if (a2 != 4)
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

      v4 = qword_100229480;
      String = NRDataProtectionClassCreateString();
      _NRLogWithArgs();
    }

    return 0;
  }

  v2 = a1[9];
LABEL_8:

  return v2;
}

void sub_100164E90(uint64_t a1)
{
  if (a1 && (*(a1 + 8) & 1) == 0)
  {
    v2 = *(a1 + 24);
    v3 = *(a1 + 72);
    sub_1001614EC(v3, v2, 4);

    v4 = *(a1 + 24);
    v5 = *(a1 + 80);
    v6 = *(a1 + 176);
    objc_opt_self();
    if (qword_1002294C8 != -1)
    {
      dispatch_once(&qword_1002294C8, &stru_1001FD250);
    }

    v7 = qword_1002294C0;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100164FF8;
    v11[3] = &unk_1001FCE28;
    v12 = v5;
    v13 = v4;
    v14 = a1;
    v15 = v6;
    v8 = v6;
    v9 = v4;
    v10 = v5;
    sub_1001816DC(v7, v11);
  }
}

void sub_100164FF8(uint64_t a1)
{
  sub_1001614EC(*(a1 + 32), *(a1 + 40), 3);
  v2 = *(a1 + 48);
  if (!v2 || (*(v2 + 48) & 0x10) == 0)
  {
    v3 = *(a1 + 56);
    if (v3)
    {
      v4 = *(a1 + 40);
      objc_opt_self();
      if (qword_1002294C8 != -1)
      {
        dispatch_once(&qword_1002294C8, &stru_1001FD250);
      }

      v5 = qword_1002294C0;
      sub_100183644(v5, @"OOBK", v4, 3, 0, 0);

      *(v3 + 8) = 1;
    }
  }

  v6 = *(a1 + 40);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100165140;
  v7[3] = &unk_1001FCE00;
  v8 = v6;
  sub_100165208(NRDLocalDevice, v8, v7);
}

void sub_100165140(uint64_t a1, void *a2)
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

void sub_100165208(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  objc_opt_self();
  if (!v4)
  {
    v9 = sub_10015B480();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v11 = sub_10015B480();
      _NRLogWithArgs();
    }

    v4 = _os_log_pack_size();
    v5 = &v15[-1] - ((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0);
    v12 = *__error();
    v13 = _os_log_pack_fill();
    *v13 = 136446210;
    *(v13 + 4) = "+[NRDLocalDevice deletePairingInfoFromKeychain:completionBlock:]";
    sub_10015B480();
    _NRLogAbortWithPack();
    goto LABEL_7;
  }

  objc_opt_self();
  if (qword_1002294C8 != -1)
  {
LABEL_7:
    dispatch_once(&qword_1002294C8, &stru_1001FD250);
  }

  v6 = qword_1002294C0;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100165418;
  v15[3] = &unk_1001FCE50;
  v16 = v4;
  v17 = v5;
  v7 = v5;
  v8 = v4;
  sub_1001816DC(v6, v15);
}

uint64_t sub_100165418(uint64_t a1)
{
  objc_opt_self();
  if (qword_1002294C8 != -1)
  {
    dispatch_once(&qword_1002294C8, &stru_1001FD250);
  }

  v2 = qword_1002294C0;
  v3 = sub_100183644(v2, @"LocalDevicePairingInfo", *(a1 + 32), 3, 0, 1);

  v4 = *(a1 + 32);
  v5 = _NRCopyLogObjectForNRUUID();
  if (v3)
  {
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (!IsLevelEnabled)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v7 = _NRLogIsLevelEnabled();

    if (!v7)
    {
      goto LABEL_8;
    }
  }

  v8 = *(a1 + 32);
  v9 = _NRCopyLogObjectForNRUUID();
  _NRLogWithArgs();

LABEL_8:
  result = *(a1 + 40);
  if (result)
  {
    v11 = *(a1 + 32);
    v12 = *(result + 16);

    return v12();
  }

  return result;
}

void *sub_100165598(void *a1)
{
  if (a1)
  {
    v2 = a1[22];
    if (v2)
    {
      v2 = v2[2];
    }

    a1 = v2;
    v1 = vars8;
  }

  return a1;
}

uint64_t sub_1001655D8(uint64_t a1)
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

    v3 = *(a1 + 152);
    v4 = *(a1 + 160);
    _NRLogWithArgs();
  }

  if (*(a1 + 152))
  {
    return *(a1 + 160) & 1;
  }

  else
  {
    return 0;
  }
}

BOOL sub_1001656BC(uint64_t a1)
{
  v1 = *(a1 + 72);
  if (!v1)
  {
    v3 = sub_100160EC0([NRDLDDataClassKeychainItems alloc], 4);
    v4 = *(a1 + 72);
    *(a1 + 72) = v3;

    if (!*(a1 + 72))
    {
      v8 = sub_10015B480();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      if (IsLevelEnabled)
      {
        v10 = sub_10015B480();
        _NRLogWithArgs();
      }

      _os_log_pack_size();
      v11 = *__error();
      v12 = _os_log_pack_fill();
      *v12 = 136446210;
      *(v12 + 4) = "[NRDLocalDevice fillInClassDKeys]";
      sub_10015B480();
      _NRLogAbortWithPack();
    }

    if (*(a1 + 12))
    {
      *(a1 + 12) = 0;
      if ((*(a1 + 8) & 1) == 0)
      {
        sub_10015D69C(a1);
        *(a1 + 13) = 1;
      }
    }

    v5 = *(a1 + 24);
    v6 = [a1 description];
    sub_1000059A8(v5, 5005, v6, @"ClassD");
  }

  return v1 == 0;
}

void sub_10016586C(uint64_t a1)
{
  v2 = sub_100003490();
  dispatch_assert_queue_V2(v2);

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

  v3 = sub_1001656BC(a1);
  v4 = *(a1 + 80);
  if (v4)
  {
    goto LABEL_23;
  }

  if ((*(a1 + 49) & 4) != 0)
  {
    v4 = 0;
LABEL_23:

    goto LABEL_24;
  }

  objc_opt_self();
  if (qword_1002294C8 != -1)
  {
    dispatch_once(&qword_1002294C8, &stru_1001FD250);
  }

  v4 = qword_1002294C0;
  if (!v4)
  {
    goto LABEL_23;
  }

  v5 = v4;
  dispatch_assert_queue_V2(v4[2]);
  if ((*(v5 + 10) & 1) == 0)
  {
    *(v5 + 10) = 1;
    if (*(v5 + 8) == 4)
    {
      sub_100181020(v5);
      if (*(v5 + 9) == 1)
      {
        *(v5 + 8) = 3;
        sub_100181284(v5);
      }
    }
  }

  v6 = v5[1] & 0xFD;

  if (v6 == 1)
  {
    v7 = sub_100160EC0([NRDLDDataClassKeychainItems alloc], 3);
    v8 = *(a1 + 80);
    *(a1 + 80) = v7;

    if (!*(a1 + 80))
    {
      v23 = sub_10015B480();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      if (IsLevelEnabled)
      {
        v25 = sub_10015B480();
        _NRLogWithArgs();
      }

      _os_log_pack_size();
      __chkstk_darwin();
      v26 = *__error();
      v27 = _os_log_pack_fill();
      *v27 = 136446210;
      *(v27 + 4) = "[NRDLocalDevice fillInKeysForCurrentlyUnlocked]";
      sub_10015B480();
      _NRLogAbortWithPack();
    }

    if (*(a1 + 12))
    {
      *(a1 + 12) = 0;
      if ((*(a1 + 8) & 1) == 0)
      {
        sub_10015D69C(a1);
        *(a1 + 13) = 1;
      }
    }

    v9 = *(a1 + 24);
    v10 = [a1 description];
    sub_1000059A8(v9, 5005, v10, @"ClassC");

    v4 = v10;
    v3 = 1;
    goto LABEL_23;
  }

LABEL_24:
  v11 = *(a1 + 80);
  if (!v11 || (v12 = *(a1 + 88), v11, v12))
  {
    if (!v3)
    {
      return;
    }

    goto LABEL_27;
  }

  v14 = *(a1 + 80);
  v15 = [v14 copy];
  v16 = *(a1 + 88);
  *(a1 + 88) = v15;

  v17 = *(a1 + 88);
  if (v17)
  {
    v18 = *(v17 + 8);
    *(v17 + 8) = 0;

    v19 = *(a1 + 88);
    if (v19)
    {
      v20 = *(v19 + 24);
      *(v19 + 24) = 0;
    }
  }

  v21 = *(a1 + 24);
  v22 = [a1 description];
  sub_1000059A8(v21, 5005, v22, @"ClassA");

  if (v3)
  {
LABEL_27:
    v13 = objc_opt_self();

    sub_1001629FC(v13, 0);
  }
}

void sub_100165C8C(char *a1, void *a2)
{
  v3 = a2;
  v4 = sub_100003490();
  dispatch_assert_queue_V2(v4);

  if (!v3)
  {
    v6 = sub_10015B480();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v8 = sub_10015B480();
      _NRLogWithArgs();
    }

    v3 = _os_log_pack_size();
    a1 = &v12[-1] - ((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0);
    v9 = *__error();
    v10 = _os_log_pack_fill();
    *v10 = 136446210;
    *(v10 + 4) = "[NRDLocalDevice fillInClassCKeysWithCompletion:]";
    sub_10015B480();
    _NRLogAbortWithPack();
    goto LABEL_10;
  }

  if (!*(a1 + 10))
  {
    objc_opt_self();
    if (qword_1002294C8 == -1)
    {
LABEL_5:
      v5 = qword_1002294C0;
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_100165EA4;
      v12[3] = &unk_1001FCE50;
      v12[4] = a1;
      v13 = v3;
      sub_1001816DC(v5, v12);

      goto LABEL_6;
    }

LABEL_10:
    dispatch_once(&qword_1002294C8, &stru_1001FD250);
    goto LABEL_5;
  }

  (*(v3 + 2))(v3, 1);
LABEL_6:
}

uint64_t sub_100165EA4(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (!v2 || !*(v2 + 80))
  {
    v3 = sub_100160EC0([NRDLDDataClassKeychainItems alloc], 3);
    v4 = *(a1 + 32);
    if (v4)
    {
      objc_storeStrong((v4 + 80), v3);
    }

    v5 = *(a1 + 32);
    if (!v5 || !*(v5 + 80))
    {
      v9 = sub_10015B480();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      if (IsLevelEnabled)
      {
        v11 = sub_10015B480();
        _NRLogWithArgs();
      }

      _os_log_pack_size();
      v12 = *__error();
      v13 = _os_log_pack_fill();
      *v13 = 136446210;
      *(v13 + 4) = "[NRDLocalDevice fillInClassCKeysWithCompletion:]_block_invoke";
      sub_10015B480();
      _NRLogAbortWithPack();
    }

    sub_10000DF34(v5, 5005, @"ClassC");
    v6 = objc_opt_self();
    sub_1001629FC(v6, 0);
  }

  v7 = *(*(a1 + 40) + 16);

  return v7();
}

void sub_100166050(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_100003490();
  dispatch_assert_queue_V2(v4);

  if (!v3)
  {
    v5 = sub_10015B480();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v7 = sub_10015B480();
      _NRLogWithArgs();
    }

    _os_log_pack_size();
    v8 = *__error();
    v9 = _os_log_pack_fill();
    *v9 = 136446210;
    *(v9 + 4) = "[NRDLocalDevice fillInClassAKeysWithCompletion:]";
    sub_10015B480();
    _NRLogAbortWithPack();
  }

  if (*(a1 + 88))
  {
    v3[2](v3, 1);
  }

  else
  {
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100166208;
    v10[3] = &unk_1001FCE78;
    v10[4] = a1;
    v11 = v3;
    sub_100165C8C(a1, v10);
  }
}

uint64_t sub_100166208(uint64_t a1, char a2)
{
  if (a2)
  {
    v3 = *(a1 + 32);
    if (v3)
    {
      if (v3[11])
      {
        goto LABEL_13;
      }

      v3 = v3[10];
    }

    v4 = v3;
    v5 = [v4 copy];
    v6 = *(a1 + 32);
    if (v6)
    {
      objc_storeStrong((v6 + 88), v5);
    }

    v7 = *(a1 + 32);
    if (!v7 || (v8 = *(v7 + 88)) == 0)
    {
      v20 = sub_10015B480();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      if (IsLevelEnabled)
      {
        v22 = sub_10015B480();
        _NRLogWithArgs();
      }

      _os_log_pack_size();
      v23 = *__error();
      v24 = _os_log_pack_fill();
      *v24 = 136446210;
      *(v24 + 4) = "[NRDLocalDevice fillInClassAKeysWithCompletion:]_block_invoke";
      sub_10015B480();
      _NRLogAbortWithPack();
    }

    v9 = v8;
    v10 = v9[1];
    v9[1] = 0;

    v11 = *(a1 + 32);
    if (v11)
    {
      v12 = *(v11 + 88);
      if (v12)
      {
        v13 = v12;
        v14 = *(v12 + 3);
        *(v12 + 3) = 0;
      }
    }

    sub_10000DF34(*(a1 + 32), 5005, @"ClassA");
  }

  else
  {
    v17 = sub_10015B480();
    v18 = _NRLogIsLevelEnabled();

    if (v18)
    {
      v19 = sub_10015B480();
      _NRLogWithArgs();
    }
  }

LABEL_13:
  v15 = *(*(a1 + 40) + 16);

  return v15();
}

char *sub_100166438(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_self();
  v3 = objc_autoreleasePoolPush();
  if (!v2)
  {
    goto LABEL_10;
  }

  v4 = v2[4];
  if (v4)
  {

    goto LABEL_5;
  }

  if ((v2[1] & 1) == 0)
  {
LABEL_10:
    v5 = 0;
    goto LABEL_9;
  }

LABEL_5:
  v5 = sub_10015D20C([NRDLocalDevice alloc], v2[3]);
  [v5 setBluetoothUUID:v2[4]];
  v6 = v2[21];
  if (v5)
  {
    v7 = *(v5 + 21);
    *(v5 + 21) = v6;

    if ((v5[12] & 1) == 0)
    {
      v5[12] = 1;
      sub_10015D3F4(v5);
    }

    v5[13] = 1;
    v5[8] = *(v2 + 8);
    [v5 setDatabaseFlags:*(v5 + 6) & 0xFFFFFFFFFFFFFFBFLL | (((v2[6] >> 6) & 1) << 6)];
    [v5 setDatabaseFlags:*(v5 + 6) & 0xFFFFFFFFFFFFFF7FLL | (((v2[6] >> 7) & 1) << 7)];
  }

  else
  {
  }

LABEL_9:
  objc_autoreleasePoolPop(v3);

  return v5;
}

id *sub_100166548(id *result)
{
  if (!result)
  {
    return result;
  }

  v1 = result;
  if (*(result + 12) == 1)
  {
    [result description];
    return objc_claimAutoreleasedReturnValue();
  }

  v2 = [NSMutableString alloc];
  v3 = v1[3];
  v4 = [v2 initWithFormat:@"NRDLD[%@]", v3];

  if (*(v1 + 8))
  {
    goto LABEL_8;
  }

  v5 = v1[16];
  if (v5 || (v5 = v1[17]) != 0)
  {

LABEL_8:
    [v4 appendString:@"\n\t\t"];
    v6 = *(v1 + 8);
    v7 = *(v1 + 8) == 0;
    if (*(v1 + 8))
    {
      [v4 appendFormat:@"inner link version %u", *(v1 + 8)];
    }

    v8 = v1[16];

    v9 = ", ";
    if (v8)
    {
      if (v6)
      {
        v10 = ", ";
      }

      else
      {
        v10 = "";
      }

      v11 = v1[16];
      [v4 appendFormat:@"%sname %@", v10, v11];

      v7 = 0;
    }

    v12 = v1[17];

    if (v12)
    {
      if (v7)
      {
        v13 = "";
      }

      else
      {
        v13 = ", ";
      }

      v14 = v1[17];
      [v4 appendFormat:@"%sbuild %@", v13, v14];

      v7 = 0;
    }

    if (*(v1 + 9))
    {
      if (v7)
      {
        v9 = "";
      }

      StringFromNRDeviceEndpointType = createStringFromNRDeviceEndpointType();
      [v4 appendFormat:@"%stype %@", v9, StringFromNRDeviceEndpointType];
    }

    goto LABEL_24;
  }

  if (*(v1 + 9))
  {
    goto LABEL_8;
  }

LABEL_24:
  v16 = v1[4];

  if (v16)
  {
    v17 = v1[4];
    [v4 appendFormat:@"\n\t\tBluetoothUUID: %@", v17];
  }

  v18 = v1[5];

  if (v18)
  {
    v19 = v1[5];
    [v4 appendFormat:@"\n\t\tIDSDeviceID: %@", v19];
  }

  v20 = v1[6];
  v21 = "un";
  if (v20)
  {
    v21 = "";
  }

  if ((v20 & 2) != 0)
  {
    v22 = "en";
  }

  else
  {
    v22 = "dis";
  }

  [v4 appendFormat:@"\n\t\t%sregistered, %sabled", v21, v22];
  if (*(v1 + 8) == 1)
  {
    [v4 appendFormat:@", ephemeral"];
  }

  v23 = v1[6];
  if ((v23 & 0x10) != 0)
  {
    v25 = v1[15];
    v26 = NRCreateStringFromPairingAuthMethod();
    [v4 appendFormat:@"\n\t\tinitially paired using %@", v26];
  }

  else
  {
    if ((v23 & 0x20) != 0)
    {
      v24 = "IDS";
    }

    else
    {
      v24 = "OOBK";
    }

    [v4 appendFormat:@"\n\t\tinitially paired using %s", v24];
  }

  v27 = v1[21];
  [v4 appendFormat:@"\n\t\tcreated: %@", v27];

  v28 = [v1 dateRegistered];

  if (v28)
  {
    v29 = [v1 dateRegistered];
    [v4 appendFormat:@", registered: %@", v29];
  }

  v30 = [v1 dateEnabled];

  if (v30)
  {
    v31 = [v1 dateEnabled];
    [v4 appendFormat:@", enabled: %@", v31];
  }

  v32 = v1[6];
  if ((v32 & 0x10) == 0)
  {
    v33 = v1[22];
    if (v33)
    {
      v33 = v33[2];
    }

    v34 = v33;
    LogString = _NRKeyCreateLogString();
    [v4 appendFormat:@"\n\t\tOut of Band Key: %@", LogString];

    v32 = v1[6];
  }

  if ((v32 & 4) != 0)
  {
    v36 = @"YES";
  }

  else
  {
    v36 = @"NO";
  }

  [v4 appendFormat:@"\n\t\tIsAltAccount: %@", v36];
  if ((v1[6] & 8) != 0)
  {
    v37 = @"YES";
  }

  else
  {
    v37 = @"NO";
  }

  [v4 appendFormat:@"\n\t\tIsExternal: %@", v37];
  if (*(v1 + 9))
  {
    [v4 appendFormat:@"\n\t\tPSM: %u", *(v1 + 9)];
  }

  if ((v1[6] & 0x100) != 0)
  {
    v38 = @"YES";
  }

  else
  {
    v38 = @"NO";
  }

  [v4 appendFormat:@"\n\t\tAlways On Wi-Fi: %@", v38];
  [v4 appendFormat:@"\n\t\tDevice Flags: l %#llx r %#llx", v1[19], v1[20]];
  v39 = v1[14];

  if (v39)
  {
    v40 = v1[14];
    v41 = _NRCreateMACAddressString();
    [v4 appendFormat:@"\n\t\tBluetooth MAC Address: %@", v41];
  }

  v42 = v1[18];

  if (v42)
  {
    v43 = v1[18];
    [v4 appendFormat:@"\n\t\tLocal Operational properties: %@", v43];
  }

  v44 = v1[8];

  if (v44)
  {
    v45 = v1[8];
    v46 = v45;
    if (v45)
    {
      v47 = *(v45 + 2);
    }

    else
    {
      v47 = 0;
    }

    v48 = v47;
    v49 = _NRKeyCreateLogString();
    [v4 appendFormat:@"\n\t\tRemote Identity Public Key: %@", v49];

    v50 = v1[8];
    v51 = v50;
    if (v50)
    {
      v52 = *(v50 + 1);
    }

    else
    {
      v52 = 0;
    }

    v53 = v52;
    [v4 appendFormat:@"\n\t\tRemote Device Identity: %@", v53];
  }

  v54 = v1[7];

  if (v54)
  {
    v55 = v1[7];
    [v4 appendFormat:@"\n\t\tLocal Device Identity: %@", v55];

    if ((v1[6] & 0x200) != 0)
    {
      v56 = @"YES";
    }

    else
    {
      v56 = @"NO";
    }

    [v4 appendFormat:@"\n\t\tHas Authenticated Using Identity: %@", v56];
  }

  v57 = v1[9];
  v58 = v57;
  if (v57)
  {
    v59 = *(v57 + 1);
  }

  else
  {
    v59 = 0;
  }

  v60 = v59;

  if (v60)
  {
    v61 = v1[9];
    v62 = v61;
    if (v61)
    {
      v63 = *(v61 + 1);
    }

    else
    {
      v63 = 0;
    }

    v64 = v63;
    v65 = sub_10015E4BC(v64);
    v66 = _NRKeyCreateLogString();
    [v4 appendFormat:@"\n\t\tClass D Remote Public Key: %@", v66];
  }

  v67 = v1[9];
  v68 = v67;
  if (v67)
  {
    v69 = *(v67 + 2);
  }

  else
  {
    v69 = 0;
  }

  v70 = v69;

  if (v70)
  {
    v71 = v1[9];
    v72 = v71;
    if (v71)
    {
      v73 = *(v71 + 2);
    }

    else
    {
      v73 = 0;
    }

    v74 = v73;
    v75 = sub_10015E4BC(v74);
    v76 = _NRKeyCreateLogString();
    [v4 appendFormat:@"\n\t\tClass D Local Public Key: %@", v76];
  }

  v77 = v1[9];
  v78 = v77;
  if (v77)
  {
    v79 = *(v77 + 3);
  }

  else
  {
    v79 = 0;
  }

  v80 = v79;

  if (v80)
  {
    v81 = v1[9];
    v82 = v81;
    if (v81)
    {
      v83 = v81[3];
      v84 = v83;
      if (v83)
      {
        v85 = *(v83 + 2);
      }

      else
      {
        v85 = 0;
      }
    }

    else
    {
      v84 = 0;
      v85 = 0;
    }

    v86 = v85;
    v87 = _NRKeyCreateLogString();
    [v4 appendFormat:@"\n\t\tClass D Shared Secret: %@", v87];
  }

  v88 = v1[10];
  v89 = v88;
  if (v88)
  {
    v90 = *(v88 + 1);
  }

  else
  {
    v90 = 0;
  }

  v91 = v90;

  if (v91)
  {
    v92 = v1[10];
    v93 = v92;
    if (v92)
    {
      v94 = *(v92 + 1);
    }

    else
    {
      v94 = 0;
    }

    v95 = v94;
    v96 = sub_10015E4BC(v95);
    v97 = _NRKeyCreateLogString();
    [v4 appendFormat:@"\n\t\tClass C Remote Public Key: %@", v97];
  }

  v98 = v1[10];
  v99 = v98;
  if (v98)
  {
    v100 = *(v98 + 2);
  }

  else
  {
    v100 = 0;
  }

  v101 = v100;

  if (v101)
  {
    v102 = v1[10];
    v103 = v102;
    if (v102)
    {
      v104 = *(v102 + 2);
    }

    else
    {
      v104 = 0;
    }

    v105 = v104;
    v106 = sub_10015E4BC(v105);
    v107 = _NRKeyCreateLogString();
    [v4 appendFormat:@"\n\t\tClass C Local Public Key: %@", v107];
  }

  v108 = v1[10];
  v109 = v108;
  if (v108)
  {
    v110 = *(v108 + 3);
  }

  else
  {
    v110 = 0;
  }

  v111 = v110;

  if (v111)
  {
    v112 = v1[10];
    v113 = v112;
    if (v112)
    {
      v114 = v112[3];
      v115 = v114;
      if (v114)
      {
        v116 = *(v114 + 2);
      }

      else
      {
        v116 = 0;
      }
    }

    else
    {
      v115 = 0;
      v116 = 0;
    }

    v117 = v116;
    v118 = _NRKeyCreateLogString();
    [v4 appendFormat:@"\n\t\tClass C Shared Secret: %@", v118];
  }

  v119 = v1[11];
  v120 = v119;
  if (v119)
  {
    v121 = *(v119 + 1);
  }

  else
  {
    v121 = 0;
  }

  v122 = v121;

  if (v122)
  {
    v123 = v1[11];
    v124 = v123;
    if (v123)
    {
      v125 = *(v123 + 1);
    }

    else
    {
      v125 = 0;
    }

    v126 = v125;
    v127 = sub_10015E4BC(v126);
    v128 = _NRKeyCreateLogString();
    [v4 appendFormat:@"\n\t\tClass A Remote Public Key: %@", v128];
  }

  v129 = v1[11];
  v130 = v129;
  if (v129)
  {
    v131 = *(v129 + 2);
  }

  else
  {
    v131 = 0;
  }

  v132 = v131;

  if (v132)
  {
    v133 = v1[11];
    v134 = v133;
    if (v133)
    {
      v135 = *(v133 + 2);
    }

    else
    {
      v135 = 0;
    }

    v136 = v135;
    v137 = sub_10015E4BC(v136);
    v138 = _NRKeyCreateLogString();
    [v4 appendFormat:@"\n\t\tClass A Local Public Key: %@", v138];
  }

  v139 = v1[11];
  v140 = v139;
  if (v139)
  {
    v141 = *(v139 + 3);
  }

  else
  {
    v141 = 0;
  }

  v142 = v141;

  if (v142)
  {
    v143 = v1[11];
    v144 = v143;
    if (v143)
    {
      v145 = v143[3];
      v146 = v145;
      if (v145)
      {
        v147 = *(v145 + 2);
      }

      else
      {
        v147 = 0;
      }
    }

    else
    {
      v146 = 0;
      v147 = 0;
    }

    v148 = v147;
    v149 = _NRKeyCreateLogString();
    [v4 appendFormat:@"\n\t\tClass A Shared Secret: %@", v149];
  }

  v150 = sub_100003490();
  dispatch_assert_queue_V2(v150);

  v151 = sub_1001672A0(v1, @"0");
  if (v151)
  {
    v152 = sub_100003490();
    dispatch_assert_queue_V2(v152);

    v153 = sub_1001672A0(v1, @"0");
    [v4 appendFormat:@"\n\t\tClass D Local Inner Endpoint: %@", v153];
  }

  v154 = sub_100003490();
  dispatch_assert_queue_V2(v154);

  v155 = sub_1001677D0(v1, @"0");
  if (v155)
  {
    v156 = sub_100003490();
    dispatch_assert_queue_V2(v156);

    v157 = sub_1001677D0(v1, @"0");
    [v4 appendFormat:@"\n\t\tClass D Remote Inner Endpoint: %@", v157];
  }

  v158 = sub_100003490();
  dispatch_assert_queue_V2(v158);

  v159 = sub_1001679E0(v1, @"0");
  if (v159)
  {
    v160 = sub_100003490();
    dispatch_assert_queue_V2(v160);

    v161 = sub_1001679E0(v1, @"0");
    [v4 appendFormat:@"\n\t\tClass C Local Inner Endpoint: %@", v161];
  }

  v162 = sub_100003490();
  dispatch_assert_queue_V2(v162);

  v163 = sub_100167B9C(v1, @"0");
  if (v163)
  {
    v164 = sub_100003490();
    dispatch_assert_queue_V2(v164);

    v165 = sub_100167B9C(v1, @"0");
    [v4 appendFormat:@"\n\t\tClass C Remote Inner Endpoint: %@", v165];
  }

  v166 = v1[6];
  v167 = "D";
  if ((v166 & 0x1000) == 0)
  {
    v167 = "";
  }

  if ((v166 & 0x2000) != 0)
  {
    v168 = "C";
  }

  else
  {
    v168 = "";
  }

  v169 = "A";
  if ((v166 & 0x4000) == 0)
  {
    v169 = "";
  }

  if ((v166 & 0x400) != 0)
  {
    v170 = "C";
  }

  else
  {
    v170 = "";
  }

  [v4 appendFormat:@"\n\t\tKeys confirmed: %s%s%s, keys saved in keychain: %s", v167, v168, v169, v170];
  v171 = v1[12];

  if (v171)
  {
    v172 = v1[12];
    v173 = _NRCreateDataStringTruncated();
    [v4 appendFormat:@"\n\t\tReceived Proxy Notify Payload: %@", v173];
  }

  v174 = v4;

  return v174;
}

void *sub_1001672A0(void *a1, void *a2)
{
  v2 = a1;
  if (a1)
  {
    v3 = a2;
    v4 = sub_100003490();
    dispatch_assert_queue_V2(v4);

    v5 = [v2 localInnerIPv6AddressBytesClassD];

    if (!v5)
    {
      if (v2[18])
      {
        v6 = sub_10013FF60(v2) == 1;
      }

      else
      {
        v6 = 1;
      }

      v7 = objc_opt_self();
      v8 = sub_100003490();
      dispatch_assert_queue_V2(v8);

      v41 = xmmword_100196400;
      BYTE9(v41) = 13;
      if (v6)
      {
        v34 = v3;
        v39 = 0u;
        v40 = 0u;
        v37 = 0u;
        v38 = 0u;
        v9 = qword_100229428;
        v10 = [v9 countByEnumeratingWithState:&v37 objects:v42 count:16];
        if (v10)
        {
          v11 = v10;
          v12 = *v38;
          while (2)
          {
            for (i = 0; i != v11; i = i + 1)
            {
              if (*v38 != v12)
              {
                objc_enumerationMutation(v9);
              }

              v16 = [qword_100229428 objectForKeyedSubscript:{*(*(&v37 + 1) + 8 * i), v29, v30, v31, v32, IPv6AddrStringFromData}];
              v17 = [v16 localInnerIPv6AddressBytesClassD];

              if (v17)
              {
                v35 = 0;
                v36 = 0;
                v18 = [v16 localInnerIPv6AddressBytesClassD];
                v19 = [v18 length];

                if (v19 != 16)
                {
                  goto LABEL_33;
                }

                v20 = [v16 localInnerIPv6AddressBytesClassD];
                [v20 getBytes:&v35 length:16];

                objc_opt_self();
                if (WORD1(v36) && WORD2(v36))
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

                    v22 = qword_100229480;
                    v23 = [v16 localInnerIPv6AddressBytesClassD];
                    v32 = v16;
                    IPv6AddrStringFromData = createIPv6AddrStringFromData();
                    v31 = 4377;
                    v29 = "";
                    v30 = "+[NRDLocalDevice createNewLocalClassDAddrData:]";
                    _NRLogWithArgs();
                  }

LABEL_33:
                  v21 = [v16 localInnerIPv6AddressBytesClassD];

                  v3 = v34;
                  goto LABEL_34;
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

                  v14 = qword_100229480;
                  v15 = [v16 localInnerIPv6AddressBytesClassD];
                  v32 = v16;
                  IPv6AddrStringFromData = createIPv6AddrStringFromData();
                  v31 = 4374;
                  v29 = "";
                  v30 = "+[NRDLocalDevice createNewLocalClassDAddrData:]";
                  _NRLogWithArgs();
                }
              }
            }

            v11 = [v9 countByEnumeratingWithState:&v37 objects:v42 count:16];
            if (v11)
            {
              continue;
            }

            break;
          }
        }

        sub_1001687DC(v7, &v41);
        v3 = v34;
      }

      else
      {
        HIBYTE(v41) = 1;
      }

      v21 = [[NSData alloc] initWithBytes:&v41 length:16];
LABEL_34:
      [v2 setLocalInnerIPv6AddressBytesClassD:{v21, v29, v30, v31, v32, IPv6AddrStringFromData}];

      v24 = objc_opt_self();
      sub_1001629FC(v24, 0);
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

        v25 = qword_100229480;
        v26 = [v2 localInnerIPv6AddressBytesClassD];
        v32 = createIPv6AddrStringFromData();
        IPv6AddrStringFromData = v2;
        v31 = 4536;
        v29 = "";
        v30 = "[NRDLocalDevice copyLocalClassDInnerEndpointWithPort:]";
        _NRLogWithArgs();
      }
    }

    v27 = [v2 localInnerIPv6AddressBytesClassD];
    v2 = sub_100167F00(NRDLocalDevice, v27, v3);
  }

  return v2;
}

void *sub_1001677D0(void *a1, void *a2)
{
  v2 = a1;
  if (a1)
  {
    v3 = a2;
    v4 = sub_100003490();
    dispatch_assert_queue_V2(v4);

    v5 = [v2 remoteInnerIPv6AddressBytesClassD];

    if (!v5)
    {
      if (v2[18])
      {
        v6 = sub_10013FF60(v2) == 1;
      }

      else
      {
        v6 = 1;
      }

      v7 = objc_opt_self();
      v8 = sub_100003490();
      dispatch_assert_queue_V2(v8);

      v20 = xmmword_1001964A0;
      if (v6)
      {
        sub_1001687DC(v7, &v20);
      }

      else
      {
        HIBYTE(v20) = 2;
      }

      v9 = [[NSData alloc] initWithBytes:&v20 length:16];
      [v2 setRemoteInnerIPv6AddressBytesClassD:v9];

      v10 = objc_opt_self();
      sub_1001629FC(v10, 0);
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

        v11 = qword_100229480;
        v12 = [v2 remoteInnerIPv6AddressBytesClassD];
        IPv6AddrStringFromData = createIPv6AddrStringFromData();
        v19 = v2;
        v17 = 4563;
        v15 = "";
        v16 = "[NRDLocalDevice copyRemoteClassDInnerEndpointWithPort:]";
        _NRLogWithArgs();
      }
    }

    v13 = [v2 remoteInnerIPv6AddressBytesClassD];
    v2 = sub_100167F00(NRDLocalDevice, v13, v3);
  }

  return v2;
}