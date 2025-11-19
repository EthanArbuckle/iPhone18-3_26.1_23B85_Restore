uint64_t sub_1000EC4F0(uint64_t a1, int a2)
{
  v2 = a1;
  if (a1)
  {
    dispatch_assert_queue_V2(*(a1 + 136));
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v4 = *(v2 + 152);
    v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v14;
      do
      {
        v8 = 0;
        do
        {
          if (*v14 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v13 + 1) + 8 * v8);
          if (v9)
          {
            if (v9[10] == a2)
            {
              goto LABEL_15;
            }
          }

          else if (!a2)
          {
LABEL_15:
            v11 = v9;
            goto LABEL_16;
          }

          v8 = v8 + 1;
        }

        while (v6 != v8);
        v10 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
        v6 = v10;
      }

      while (v10);
    }

    v11 = 0;
LABEL_16:

    v2 = v11 != 0;
  }

  return v2;
}

id sub_1000EC630(uint64_t a1)
{
  if (a1)
  {
    dispatch_assert_queue_V2(*(a1 + 136));
    objc_opt_self();
    if (qword_1002290C0 != -1)
    {
      dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
    }

    v1 = qword_1002290B8;
    v2 = v1;
    if (v1)
    {
      v3 = *(v1 + 6);
    }

    else
    {
      v3 = 0;
    }

    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void sub_1000EC6D4(uint64_t a1, void *a2)
{
  v12 = a2;
  dispatch_assert_queue_V2(*(a1 + 136));
  if (([*(a1 + 168) isEqual:v12] & 1) == 0)
  {
    v4 = *(a1 + 96);
    v5 = _NRCopyLogObjectForNRUUID();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v7 = *(a1 + 96);
      v8 = _NRCopyLogObjectForNRUUID();
      v11 = *(a1 + 168);
      _NRLogWithArgs();
    }

    objc_storeStrong((a1 + 168), a2);
    v9 = *(a1 + 96);
    v10 = [v12 addressData];
    sub_1000B7458(v9, @"WiFiEndpointAddressData", v10);
  }
}

void sub_1000EC804(uint64_t a1, void *a2)
{
  v10 = a2;
  dispatch_assert_queue_V2(*(a1 + 136));
  if (([*(a1 + 176) isEqualToData:v10] & 1) == 0)
  {
    v4 = *(a1 + 96);
    v5 = _NRCopyLogObjectForNRUUID();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v7 = *(a1 + 96);
      v8 = _NRCopyLogObjectForNRUUID();
      v9 = *(a1 + 176);
      _NRLogWithArgs();
    }

    objc_storeStrong((a1 + 176), a2);
    sub_1000B7458(*(a1 + 96), @"WiFiSignature", *(a1 + 176));
  }
}

void sub_1000EC910(uint64_t a1, int a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (a1)
  {
    v11 = a3;
    v12 = [[NSString alloc] initWithFormat:v11 arguments:&a9];

    sub_1000059A8(*(a1 + 96), a2, 0, v12);
  }
}

void sub_1000EC998(uint64_t a1, void *a2)
{
  v28 = a2;
  if (v28)
  {
    dispatch_assert_queue_V2(*(a1 + 136));
    objc_opt_self();
    if (qword_1002290C0 != -1)
    {
      dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
    }

    v3 = qword_1002290B8;
    v4 = v3;
    if (v3)
    {
      v5 = *(v3 + 6);
    }

    else
    {
      v5 = 0;
    }

    v6 = v5;

    if (v6)
    {
      v7 = v6[8];
    }

    else
    {
      v7 = 0;
    }

    v8 = v7;

    LOBYTE(v32) = v8 != 0;
    v9 = [[NSData alloc] initWithBytes:&v32 length:1];
    sub_10002AB38(v28, 10, v9);

    if (!v8)
    {
      goto LABEL_30;
    }

    v10 = [v8 port];
    sub_10002B038(v28, v8, [v10 intValue], 1);

    v11 = v28;
    if (*(a1 + 49) != 1 || *(a1 + 45) != 1)
    {
      goto LABEL_29;
    }

    v12 = v11;
    dispatch_assert_queue_V2(*(a1 + 136));
    objc_opt_self();
    if (qword_1002290C0 != -1)
    {
      dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
    }

    v13 = qword_1002290B8;
    v14 = v13;
    if (v13)
    {
      v15 = *(v13 + 6);
    }

    else
    {
      v15 = 0;
    }

    v16 = v15;

    if (!v16)
    {
      v23 = 0;
      goto LABEL_27;
    }

    v17 = v16[3];
    dispatch_assert_queue_V2(v17);

    v32 = 0;
    v33 = &v32;
    v34 = 0x3032000000;
    v35 = sub_10017AF00;
    v36 = sub_10017AF10;
    v37 = 0;
    v18 = v16[22];
    v29[0] = _NSConcreteStackBlock;
    v29[1] = 3221225472;
    v29[2] = sub_10017FC20;
    v29[3] = &unk_1001FD128;
    v31 = &v32;
    v19 = v18;
    v30 = v19;
    if (sub_10017AE24(NRLinkManagerWiFi, v29))
    {
      v26 = sub_1001762F4();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      if (!IsLevelEnabled)
      {
LABEL_24:
        v23 = v33[5];

        _Block_object_dispose(&v32, 8);
        if (!v23 || ![v23 compare:@"XZ" options:1])
        {
          goto LABEL_28;
        }

        v16 = [v23 dataUsingEncoding:4];
        sub_10002AB38(v12, 15, v16);
LABEL_27:

LABEL_28:
        v11 = v12;
LABEL_29:

LABEL_30:
        goto LABEL_31;
      }

      v22 = sub_1001762F4();
      _NRLogWithArgs();
    }

    else
    {
      if (qword_1002294A8 != -1)
      {
        dispatch_once(&qword_1002294A8, &stru_1001FD210);
      }

      v20 = qword_1002294A0;
      v21 = _NRLogIsLevelEnabled();

      if ((v21 & 1) == 0)
      {
        goto LABEL_24;
      }

      if (qword_1002294A8 != -1)
      {
        dispatch_once(&qword_1002294A8, &stru_1001FD210);
      }

      v22 = qword_1002294A0;
      _NRLogWithArgs();
    }

    goto LABEL_24;
  }

  v24 = sub_1000E83DC();
  v25 = _NRLogIsLevelEnabled();

  if (v25)
  {
    v8 = sub_1000E83DC();
    _NRLogWithArgs();
    goto LABEL_30;
  }

LABEL_31:
}

void sub_1000ECE14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000ECE2C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v3 = WeakRetained[6];
    v3[2]();

    *(v4 + 12) = 1;
    sub_1000ECEAC(*(a1 + 32), v4);
    WeakRetained = v4;
  }
}

void sub_1000ECEAC(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v13 = v3;
    dispatch_assert_queue_V2(*(a1 + 136));
    v4 = *(a1 + 96);
    v5 = _NRCopyLogObjectForNRUUID();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v7 = *(a1 + 96);
      v8 = _NRCopyLogObjectForNRUUID();
      v11 = 2986;
      v12 = v13;
      v9 = "";
      v10 = "[NRDDeviceConductor removeRequest:]";
      _NRLogWithArgs();
    }

    [*(a1 + 152) removeObject:{v13, v9, v10, v11, v12}];
    v3 = v13;
  }
}

void sub_1000ECF74(uint64_t a1, unsigned int a2, int a3)
{
  if (!a1)
  {
    return;
  }

  if (sub_1000ED8A4(a1))
  {
    if (a3 > 103)
    {
      switch(a3)
      {
        case 'y':
          LOBYTE(v6) = 8;
          goto LABEL_24;
        case 'x':
          LOBYTE(v6) = 1;
          goto LABEL_24;
        case 'h':
          LOBYTE(v6) = 7;
          goto LABEL_24;
      }
    }

    else
    {
      switch(a3)
      {
        case 'e':
          LOBYTE(v6) = 2;
          goto LABEL_24;
        case 'f':
          LOBYTE(v6) = 5;
          goto LABEL_24;
        case 'g':
          LOBYTE(v6) = 6;
          goto LABEL_24;
      }
    }

    if (a2 <= 5)
    {
      v6 = 0x40300020100uLL >> (8 * (a2 & 0x1F));
      if ((v6 & 7) != 0)
      {
LABEL_24:
        v14 = sub_100163A30(NRDLocalDevice, *(a1 + 96));
        v15 = v14;
        if (*(a1 + 70) != 1 || !v14)
        {
          goto LABEL_36;
        }

        v16 = *(v14 + 48);
        if ((v16 & 0x20) != 0)
        {
          LOBYTE(v18) = 1;
          if ((v16 & 0x1000) == 0)
          {
            goto LABEL_36;
          }
        }

        else
        {
          v17 = (v16 & 0x10) != 0 || *(v14 + 16) > 0x12u;
          v18 = (v16 >> 14) & 1 | v17;
          if ((v16 & 0x1000) == 0)
          {
            goto LABEL_36;
          }
        }

        if ((((*(v14 + 48) & 0x2000) != 0) & v18) == 1)
        {
          *(a1 + 70) = 0;
          v19 = *(a1 + 464);
          *(a1 + 464) = 0;

          v20 = *(a1 + 456);
          if (v20)
          {
            sub_10014F1DC(v20);
            v21 = *(a1 + 456);
            *(a1 + 456) = 0;
          }
        }

LABEL_36:
        if (*(a1 + 456))
        {
LABEL_81:

          v73 = *(a1 + 456);

          sub_10014F958(v73, v6);
          return;
        }

        if ((sub_1000ED8A4(a1) & 1) == 0)
        {
          v39 = *(a1 + 96);
          v40 = _NRCopyLogObjectForNRUUID();
          IsLevelEnabled = _NRLogIsLevelEnabled();

          if (IsLevelEnabled)
          {
            v42 = *(a1 + 96);
            v43 = _NRCopyLogObjectForNRUUID();
            _NRLogWithArgs();
          }

          goto LABEL_81;
        }

        v22 = [NRDiscoveryClient alloc];
        v23 = *(a1 + 136);
        v24 = *(a1 + 96);
        v25 = v23;
        v26 = sub_10014F018(&v22->super.isa, v25, v24);
        v27 = *(a1 + 456);
        *(a1 + 456) = v26;

        v28 = *(a1 + 456);
        if (v28)
        {
          *(v28 + 15) = 1;
          v29 = *(a1 + 456);
          if (v29)
          {
            *(v29 + 16) = 1;
          }
        }

        if (v15)
        {
          v30 = *(v15 + 144);
        }

        else
        {
          v30 = 0;
        }

        v31 = v30;
        v32 = [v31 allowedPeerDeviceType];

        if (v32 != 255)
        {
          if (v15)
          {
            v33 = *(v15 + 144);
          }

          else
          {
            v33 = 0;
          }

          v34 = v33;
          v35 = [v34 allowedPeerDeviceType];
          v36 = *(a1 + 456);
          if (v36)
          {
            *(v36 + 18) = v35;
          }
        }

        if (*(a1 + 49) == 1)
        {
          if (qword_100229238 == -1)
          {
            if (v15)
            {
LABEL_52:
              if (byte_100229230)
              {
                v37 = *(v15 + 48);
                if ((v37 & 0x20) != 0)
                {
                  LOBYTE(v44) = 1;
                }

                else
                {
                  v38 = (v37 & 0x10) != 0 || *(v15 + 16) > 0x12u;
                  v44 = (v37 >> 14) & 1 | v38;
                }

                if ((v37 & 0x1000) != 0 && (((*(v15 + 48) & 0x2000) != 0) & v44) == 1)
                {
                  v45 = *(a1 + 456);
                  if (v45)
                  {
                    *(v45 + 17) = 1;
                  }
                }
              }
            }
          }

          else
          {
            dispatch_once(&qword_100229238, &stru_1001FC340);
            if (v15)
            {
              goto LABEL_52;
            }
          }
        }

        objc_initWeak(location, a1);
        objc_initWeak(&from, *(a1 + 456));
        v46 = *(a1 + 456);
        v81[0] = _NSConcreteStackBlock;
        v81[1] = 3221225472;
        v81[2] = sub_1000ED978;
        v81[3] = &unk_1001FBB38;
        objc_copyWeak(&v82, location);
        objc_copyWeak(&v83, &from);
        v47 = v81;
        v48 = v47;
        if (v46 && (*(v46 + 19) & 1) == 0)
        {
          v49 = objc_retainBlock(v47);
          v50 = v46[9];
          v46[9] = v49;
        }

        v51 = *(a1 + 456);
        v78[0] = _NSConcreteStackBlock;
        v78[1] = 3221225472;
        v78[2] = sub_1000EDA0C;
        v78[3] = &unk_1001FBB38;
        objc_copyWeak(&v79, location);
        objc_copyWeak(&v80, &from);
        v52 = v78;
        v53 = v52;
        if (v51 && (*(v51 + 19) & 1) == 0)
        {
          v54 = objc_retainBlock(v52);
          v55 = v51[10];
          v51[10] = v54;
        }

        v56 = *(a1 + 456);
        v75[0] = _NSConcreteStackBlock;
        v75[1] = 3221225472;
        v75[2] = sub_1000EDEB4;
        v75[3] = &unk_1001FBB38;
        objc_copyWeak(&v76, location);
        objc_copyWeak(&v77, &from);
        v57 = v75;
        v58 = v57;
        if (v56 && (*(v56 + 19) & 1) == 0)
        {
          v59 = objc_retainBlock(v57);
          v60 = v56[11];
          v56[11] = v59;
        }

        v61 = *(a1 + 96);
        v62 = _NRCopyLogObjectForNRUUID();
        v63 = _NRLogIsLevelEnabled();

        if (v63)
        {
          v64 = *(a1 + 96);
          v65 = _NRCopyLogObjectForNRUUID();
          v66 = *(a1 + 456);
          v67 = v66;
          if (v66)
          {
            v68 = v66[15];
          }

          v69 = *(a1 + 456);
          v70 = v69;
          if (v69)
          {
            v71 = v69[16];
          }

          _NRLogWithArgs();
        }

        v72 = *(a1 + 456);
        sub_100153210(v72);

        objc_destroyWeak(&v77);
        objc_destroyWeak(&v76);
        objc_destroyWeak(&v80);
        objc_destroyWeak(&v79);
        objc_destroyWeak(&v83);
        objc_destroyWeak(&v82);
        objc_destroyWeak(&from);
        objc_destroyWeak(location);
        goto LABEL_81;
      }
    }

    v11 = *(a1 + 96);
    v12 = _NRCopyLogObjectForNRUUID();
    v13 = _NRLogIsLevelEnabled();

    if (!v13)
    {
      return;
    }
  }

  else
  {
    v7 = *(a1 + 96);
    v8 = _NRCopyLogObjectForNRUUID();
    v9 = _NRLogIsLevelEnabled();

    if (!v9)
    {
      return;
    }
  }

  v10 = *(a1 + 96);
  v74 = _NRCopyLogObjectForNRUUID();
  _NRLogWithArgs();
}

void sub_1000ED6C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, id a32, id a33)
{
  objc_destroyWeak((v34 + 40));
  objc_destroyWeak((v34 + 32));
  objc_destroyWeak((v33 + 40));
  objc_destroyWeak((v33 + 32));
  objc_destroyWeak(&a33);
  objc_destroyWeak(&a32);
  objc_destroyWeak((v35 - 120));
  objc_destroyWeak((v35 - 112));
  _Unwind_Resume(a1);
}

uint64_t sub_1000ED714(uint64_t a1)
{
  v1 = sub_100163A30(NRDLocalDevice, *(a1 + 96));
  if (!v1)
  {
    v9 = sub_1000E83DC();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v11 = sub_1000E83DC();
      _NRLogWithArgs();
    }

    _os_log_pack_size();
    v12 = *__error();
    v13 = _os_log_pack_fill();
    *v13 = 136446210;
    *(v13 + 4) = "[NRDDeviceConductor getPreferredLinkTypeFromConfiguration]";
    sub_1000E83DC();
    _NRLogAbortWithPack();
  }

  v2 = v1;
  v3 = *(v1 + 144);

  if (v3)
  {
    v4 = v2[18];
    v5 = [v4 allowedLinkTypes];
    v6 = [v5 firstObject];

    v7 = [v6 unsignedShortValue];
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

id sub_1000ED8A4(uint64_t a1)
{
  if (*(a1 + 14) != 1 || (*(a1 + 43) & 1) != 0)
  {
    return 0;
  }

  objc_opt_self();
  if (qword_1002290C0 != -1)
  {
    dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
  }

  v2 = qword_1002290B8;
  if (v2)
  {
    v3 = v2[8];

    if (v3)
    {
      return 0;
    }
  }

  v5 = sub_100163A30(NRDLocalDevice, *(a1 + 96));
  v6 = v5;
  if (v5)
  {
    v7 = *(v5 + 144);
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  v9 = [v8 allowsDeviceDiscovery];

  return v9;
}

void sub_1000ED978(uint64_t a1, void *a2)
{
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained && v4 && *(WeakRetained + 14) == 1 && WeakRetained[57] == v4)
  {
    v5 = v4;
    sub_1000EDF48(WeakRetained, v6);
    v4 = v5;
  }
}

void sub_1000EDA0C(uint64_t a1, void *a2)
{
  v49 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained && v4 && *(WeakRetained + 14) == 1 && *(WeakRetained + 57) == v4)
  {
    v5 = v4;
    v6 = v49;
    v7 = v6;
    if (*(WeakRetained + 58))
    {
      if (v6)
      {
        v8 = *(v6 + 2);
      }

      else
      {
        v8 = 0;
      }

      v9 = v8;
      v10 = *(WeakRetained + 58);
      if (v10)
      {
        v10 = v10[2];
      }

      v11 = v10;
      v12 = [v9 isEqualToString:v11];

      v13 = *(WeakRetained + 12);
      v14 = _NRCopyLogObjectForNRUUID();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      if (v12)
      {
        if (IsLevelEnabled)
        {
          v16 = *(WeakRetained + 12);
          v17 = _NRCopyLogObjectForNRUUID();
          v47 = 8367;
          v48 = v7;
          v45 = "";
          v46 = "[NRDDeviceConductor lostDevice:]";
          _NRLogWithArgs();
        }

        v18 = *(WeakRetained + 12);
        objc_opt_self();
        v19 = sub_100172CE0(NRDLocalDevice, v18, &off_100209EF0);

        if (!v19)
        {
          objc_opt_self();
          if (qword_1002290C0 != -1)
          {
            dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
          }

          v20 = qword_1002290B8;
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
          sub_1000E6CEC(v23, 0, 0, *(WeakRetained + 12));
        }

        v24 = *(WeakRetained + 12);
        objc_opt_self();
        v25 = sub_100172CE0(NRDLocalDevice, v24, &off_100209EA8);

        if (!v25)
        {
          objc_opt_self();
          if (qword_1002290C0 != -1)
          {
            dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
          }

          v26 = qword_1002290B8;
          v27 = v26;
          if (v26)
          {
            v28 = *(v26 + 6);
          }

          else
          {
            v28 = 0;
          }

          v29 = v28;
          sub_10017E570(v29, 0, *(WeakRetained + 12));
        }

        v30 = *(WeakRetained + 12);
        objc_opt_self();
        v31 = sub_100172CE0(NRDLocalDevice, v30, &off_100209ED8);

        if (!v31)
        {
          objc_opt_self();
          if (qword_1002290C0 != -1)
          {
            dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
          }

          v32 = qword_1002290B8;
          v33 = v32;
          if (v32)
          {
            v34 = *(v32 + 6);
          }

          else
          {
            v34 = 0;
          }

          v35 = v34;
          sub_10017EA30(v35, 0, *(WeakRetained + 12));
        }

        v36 = *(WeakRetained + 58);
        if (v36)
        {
          v52 = 0u;
          v53 = 0u;
          v50 = 0u;
          v51 = 0u;
          v37 = [*(WeakRetained + 18) copy];
          v38 = [v37 countByEnumeratingWithState:&v50 objects:v54 count:16];
          if (v38)
          {
            v39 = v38;
            v40 = *v51;
            do
            {
              for (i = 0; i != v39; i = i + 1)
              {
                if (*v51 != v40)
                {
                  objc_enumerationMutation(v37);
                }

                v42 = *(*(&v50 + 1) + 8 * i);
                if ([v42 state] == 8)
                {
                  [v42 checkPeerAvailabilityWithForceAggressive:1];
                }
              }

              v39 = [v37 countByEnumeratingWithState:&v50 objects:v54 count:16];
            }

            while (v39);
          }

          v36 = *(WeakRetained + 58);
        }

        *(WeakRetained + 58) = 0;
      }

      else if (IsLevelEnabled)
      {
        v43 = *(WeakRetained + 12);
        v44 = _NRCopyLogObjectForNRUUID();
        _NRLogWithArgs();
      }
    }

    v4 = v5;
  }
}

void sub_1000EDEB4(uint64_t a1, void *a2)
{
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained && v4 && *(WeakRetained + 14) == 1 && WeakRetained[57] == v4)
  {
    v5 = v4;
    sub_1000EDF48(WeakRetained, v6);
    v4 = v5;
  }
}

void sub_1000EDF48(uint64_t a1, void *a2)
{
  v4 = a2;
  v5 = *(a1 + 96);
  v6 = _NRCopyLogObjectForNRUUID();
  IsLevelEnabled = _NRLogIsLevelEnabled();

  if (IsLevelEnabled)
  {
    v8 = *(a1 + 96);
    v9 = _NRCopyLogObjectForNRUUID();
    v170 = 8292;
    v171 = v4;
    v168 = "";
    v169 = "[NRDDeviceConductor discoveredDevice:]";
    _NRLogWithArgs();
  }

  objc_storeStrong((a1 + 464), a2);
  v188 = 0u;
  v189 = 0u;
  v186 = 0u;
  v187 = 0u;
  v10 = *(a1 + 144);
  v11 = [v10 countByEnumeratingWithState:&v186 objects:v194 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v187;
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v187 != v13)
        {
          objc_enumerationMutation(v10);
        }

        sub_1000EF110(a1, *(*(&v186 + 1) + 8 * i));
      }

      v12 = [v10 countByEnumeratingWithState:&v186 objects:v194 count:16];
    }

    while (v12);
  }

  if (v4)
  {
    v15 = v4[12];
    v16 = &qword_100229000;
    if (v15)
    {
      v17 = v15;
      v18 = *(a1 + 96);
      v19 = v17;
      v20 = v18;
      objc_opt_self();
      v21 = qword_100229458;
      if (!qword_100229458)
      {
        v22 = objc_alloc_init(NSMutableDictionary);
        v23 = qword_100229458;
        qword_100229458 = v22;

        v21 = qword_100229458;
      }

      [v21 setObject:v19 forKeyedSubscript:{v20, v168, v169, v170, v171}];

      objc_opt_self();
      if (qword_1002290C0 != -1)
      {
        dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
      }

      v24 = qword_1002290B8;
      v25 = v24;
      if (v24)
      {
        v26 = *(v24 + 5);
      }

      else
      {
        v26 = 0;
      }

      v27 = v26;
      sub_100032B28(v27);
    }

    v28 = sub_10014EBAC(v4, 5u, 0, 0);

    if (v28)
    {
      v29 = sub_10014EDA8(v4);
      if (v29)
      {
        v30 = v4[15];
        if (v30)
        {
          v31 = [NSNumber numberWithUnsignedChar:4];
          v30 = [v30 objectForKeyedSubscript:v31];
        }

        objc_opt_self();
        if (qword_1002290C0 != -1)
        {
          dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
        }

        v32 = qword_1002290B8;
        v33 = v32;
        if (v32)
        {
          v34 = *(v32 + 8);
        }

        else
        {
          v34 = 0;
        }

        v35 = v34;
        sub_1000E6CEC(v35, v30, v29, *(a1 + 96));
      }
    }

    v36 = sub_10014EBAC(v4, 2u, 101, 0);

    if (v36)
    {
      v37 = v4[15];
      if (v37)
      {
        v38 = [NSNumber numberWithUnsignedChar:2];
        v37 = [v37 objectForKeyedSubscript:v38];
      }

      dispatch_assert_queue_V2(*(a1 + 136));
      objc_opt_self();
      if (qword_1002290C0 != -1)
      {
        dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
      }

      v39 = qword_1002290B8;
      v40 = v39;
      if (v39)
      {
        v41 = *(v39 + 6);
      }

      else
      {
        v41 = 0;
      }

      v42 = v41;

      sub_10017E570(v42, v37, *(a1 + 96));
    }

    v43 = sub_10014EBAC(v4, 2u, 102, 0);

    v183 = v4;
    if (!v43)
    {
      goto LABEL_73;
    }

    dispatch_assert_queue_V2(*(a1 + 136));
    objc_opt_self();
    if (qword_1002290C0 != -1)
    {
      dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
    }

    v44 = qword_1002290B8;
    v45 = v44;
    if (v44)
    {
      v46 = *(v44 + 6);
    }

    else
    {
      v46 = 0;
    }

    v47 = v46;

    if (v47)
    {
      v48 = v47[8];
      if (v48)
      {
        dispatch_assert_queue_V2(*(a1 + 136));
        objc_opt_self();
        if (qword_1002290C0 != -1)
        {
          dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
        }

        v49 = qword_1002290B8;
        v50 = v49;
        if (v49)
        {
          v51 = *(v49 + 6);
        }

        else
        {
          v51 = 0;
        }

        v52 = v51;

        if (v52)
        {
          v53 = v52[8];
        }

        else
        {
          v53 = 0;
        }

        v54 = v53;
        v55 = [v54 addressFamily];

        goto LABEL_56;
      }
    }

    else
    {
      v48 = 0;
    }

    v55 = 0;
LABEL_56:

    v56 = sub_10014EBAC(v4, 2u, 102, v55);
    v57 = [v56 hostname];
    objc_opt_self();
    if (qword_100228E88 != -1)
    {
      dispatch_once(&qword_100228E88, &stru_1001FA180);
    }

    v58 = qword_100228E80;
    v59 = @"62743";
    if (!v58)
    {
      v59 = 0;
    }

    v60 = v59;
    v61 = [NWAddressEndpoint endpointWithHostname:v57 port:v60];

    v62 = [v61 hostname];
    dispatch_assert_queue_V2(*(a1 + 136));
    objc_opt_self();
    if (qword_1002290C0 != -1)
    {
      dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
    }

    v63 = qword_1002290B8;
    v64 = v63;
    if (v63)
    {
      v65 = *(v63 + 6);
    }

    else
    {
      v65 = 0;
    }

    v66 = v65;

    if (v66)
    {
      v67 = v66[8];
    }

    else
    {
      v67 = 0;
    }

    v68 = v67;
    v69 = [v68 hostname];
    v70 = [v62 isEqualToString:v69];

    v16 = &qword_100229000;
    if ((v70 & 1) == 0)
    {
      dispatch_assert_queue_V2(*(a1 + 136));
      objc_opt_self();
      if (qword_1002290C0 != -1)
      {
        dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
      }

      v71 = qword_1002290B8;
      v72 = v71;
      if (v71)
      {
        v73 = *(v71 + 6);
      }

      else
      {
        v73 = 0;
      }

      v74 = v73;

      sub_10017EA30(v74, v61, *(a1 + 96));
    }

    v4 = v183;
LABEL_73:
    v75 = sub_10014EBAC(v4, 2u, 103, 0);

    if (v75)
    {
      v76 = sub_10014EBAC(v4, 2u, 103, 0);
      v77 = [v76 hostname];
      objc_opt_self();
      v179 = v76;
      if (qword_100228E88 != -1)
      {
        dispatch_once(&qword_100228E88, &stru_1001FA180);
      }

      v78 = qword_100228E80;
      v79 = @"62743";
      if (!v78)
      {
        v79 = 0;
      }

      v80 = v79;
      v81 = [NWAddressEndpoint endpointWithHostname:v77 port:v80];

      dispatch_assert_queue_V2(*(a1 + 136));
      objc_opt_self();
      if (qword_1002290C0 != -1)
      {
        dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
      }

      v82 = qword_1002290B8;
      v83 = v82;
      if (v82)
      {
        v84 = *(v82 + 6);
      }

      else
      {
        v84 = 0;
      }

      v85 = v84;

      v86 = *(a1 + 96);
      v87 = v81;
      v88 = v86;
      v89 = v87;
      if (v85)
      {
        v90 = v85[3];
        dispatch_assert_queue_V2(v90);

        v184 = sub_10017E4AC(v87);
        v91 = v85[15];
        if (v91)
        {
          v91 = v91[9];
        }

        v92 = v91;
        v93 = [v92 objectForKeyedSubscript:v88];
        v94 = [v93 firstObject];

        v95 = v94;
        v89 = v184;
        if (!v95 || ([v95 isEqual:v184] & 1) == 0)
        {
          v176 = v95;
          v96 = sub_100163A30(NRDLocalDevice, v88);
          v177 = v87;
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

            v97 = qword_1002294A0;
            v98 = v85[15];
            v99 = v97;
            if (v98)
            {
              v100 = v98[9];
            }

            else
            {
              v100 = 0;
            }

            v101 = v100;
            [v101 objectForKeyedSubscript:v88];
            v89 = v184;
            v172 = v184;
            v173 = v96;
            v171 = v170 = 1012;
            v168 = "";
            v169 = "[NRLinkManagerWiFi setPeerNANEndpoint:nrUUID:]";
            _NRLogWithArgs();
          }

          if (v89)
          {
            *&v200 = v89;
            v102 = [NSArray arrayWithObjects:&v200 count:1];
          }

          else
          {
            v102 = 0;
          }

          v103 = v85[15];
          if (v103)
          {
            v103 = v103[9];
          }

          v175 = v96;
          v104 = v103;
          [v104 setObject:v102 forKeyedSubscript:v88];

          if (v184)
          {
          }

          v181 = v85;
          v105 = [v85[19] copy];
          v195 = 0u;
          v196 = 0u;
          v197 = 0u;
          v198 = 0u;
          v106 = v105;
          v107 = [v106 countByEnumeratingWithState:&v195 objects:v199 count:16];
          if (v107)
          {
            v108 = v107;
            v109 = *v196;
            do
            {
              for (j = 0; j != v108; j = j + 1)
              {
                if (*v196 != v109)
                {
                  objc_enumerationMutation(v106);
                }

                v111 = *(*(&v195 + 1) + 8 * j);
                if ([v111 subtype] == 103)
                {
                  v112 = [v111 nrUUID];
                  v113 = [v112 isEqual:v88];

                  if (v113)
                  {
                    [v111 cancelWithReason:@"Peer NAN endpoint changed"];
                  }
                }
              }

              v108 = [v106 countByEnumeratingWithState:&v195 objects:v199 count:16];
            }

            while (v108);
          }

          v4 = v183;
          v89 = v184;
          v16 = &qword_100229000;
          v87 = v177;
          if (v184)
          {
            v114 = nw_interface_create_with_name();
            v115 = [v184 copyCEndpoint];
            v116 = nw_interface_copy_local_address_for_remote_address();

            if (v116)
            {
              v174 = v114;
              v117 = [NRLinkNAN alloc];
              v118 = v181[3];
              v119 = [NWAddressEndpoint endpointWithCEndpoint:v116];
              objc_opt_self();
              if (qword_100228E88 != -1)
              {
                dispatch_once(&qword_100228E88, &stru_1001FA180);
              }

              v120 = qword_100228E80;
              v121 = @"62743";
              if (!v120)
              {
                v121 = 0;
              }

              v122 = v121;
              v123 = [(NRLinkNAN *)v117 initLinkWithQueue:v118 linkDelegate:v181 nrUUID:v88 wifiInterfaceName:@"nan0" localOuterEndpoint:v119 remoteOuterEndpoint:v184 listenerPortString:v122];
              v124 = v118;
              v125 = v123;

              if (!v125)
              {
                [v181 reportEvent:3201];
              }

              v4 = v183;
              v89 = v184;
              v114 = v174;
              v16 = &qword_100229000;
            }
          }

          v85 = v181;
          v95 = v176;
        }
      }
    }

    v126 = sub_10014EBAC(v4, 2u, 104, 0);

    if (v126)
    {
      v127 = v4[15];
      if (v127)
      {
        v128 = [NSNumber numberWithUnsignedChar:7];
        v129 = [v127 objectForKeyedSubscript:v128];
      }

      else
      {
        v129 = 0;
      }

      dispatch_assert_queue_V2(*(a1 + 136));
      objc_opt_self();
      if (qword_1002290C0 != -1)
      {
        dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
      }

      v130 = v16[23];
      v131 = v130;
      if (v130)
      {
        v132 = *(v130 + 6);
      }

      else
      {
        v132 = 0;
      }

      v133 = v132;

      v134 = *(a1 + 96);
      v135 = v129;
      v185 = v134;
      if (v133)
      {
        v202 = 0u;
        v203 = 0u;
        v200 = 0u;
        v201 = 0u;
        v136 = [v135 countByEnumeratingWithState:&v200 objects:v199 count:16];
        if (v136)
        {
          v137 = v136;
          v138 = 0;
          v139 = *v201;
          do
          {
            for (k = 0; k != v137; k = k + 1)
            {
              if (*v201 != v139)
              {
                objc_enumerationMutation(v135);
              }

              v141 = sub_10017E4AC(*(*(&v200 + 1) + 8 * k));
              if (v141)
              {
                if (!v138)
                {
                  v138 = objc_alloc_init(NSMutableArray);
                }

                [v138 addObject:{v141, v168}];
              }
            }

            v137 = [v135 countByEnumeratingWithState:&v200 objects:v199 count:16];
          }

          while (v137);
        }

        else
        {
          v138 = 0;
        }

        v142 = v133[16];
        if (v142)
        {
          v142 = v142[9];
        }

        v143 = v142;
        v144 = [v143 objectForKeyedSubscript:v185];

        if (!v144 || (v145 = [[NSSet alloc] initWithArray:v138], v146 = objc_msgSend([NSSet alloc], "initWithArray:", v144), v147 = objc_msgSend(v145, "isEqualToSet:", v146), v146, v145, (v147 & 1) == 0))
        {
          v182 = sub_100163A30(NRDLocalDevice, v185);
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

            v148 = qword_1002294A0;
            v149 = v133[16];
            v150 = v148;
            if (v149)
            {
              v151 = v149[9];
            }

            else
            {
              v151 = 0;
            }

            v152 = v151;
            [v152 objectForKeyedSubscript:v185];
            v172 = v138;
            v173 = v182;
            v171 = v170 = 1108;
            v168 = "";
            v169 = "[NRLinkManagerWiFi setPeerIREndpoints:forNRUUID:]";
            _NRLogWithArgs();
          }

          v153 = v133[16];
          v154 = v153;
          v178 = v144;
          if (v153)
          {
            v155 = *(v153 + 9);
          }

          else
          {
            v155 = 0;
          }

          v156 = v155;
          [v156 setObject:v138 forKeyedSubscript:v185];

          v180 = v133;
          v157 = [v133[19] copy];
          v190 = 0u;
          v191 = 0u;
          v192 = 0u;
          v193 = 0u;
          v158 = v157;
          v159 = [v158 countByEnumeratingWithState:&v190 objects:&v195 count:16];
          if (v159)
          {
            v160 = v159;
            v161 = *v191;
            do
            {
              for (m = 0; m != v160; m = m + 1)
              {
                if (*v191 != v161)
                {
                  objc_enumerationMutation(v158);
                }

                v163 = *(*(&v190 + 1) + 8 * m);
                if ([v163 subtype] == 104)
                {
                  v164 = [v163 remoteOuterEndpoint];
                  v165 = [v138 containsObject:v164];

                  if ((v165 & 1) == 0)
                  {
                    v166 = [v163 nrUUID];
                    v167 = [v166 isEqual:v185];

                    if (v167)
                    {
                      [v163 cancelWithReason:@"Peer Wi-Fi endpoint changed"];
                    }
                  }
                }
              }

              v160 = [v158 countByEnumeratingWithState:&v190 objects:&v195 count:16];
            }

            while (v160);
          }

          v133 = v180;
          if ([v138 count])
          {
            sub_10017D65C(v180);
          }

          else
          {
            sub_10017DC78(v180);
          }

          v4 = v183;
          v144 = v178;
        }
      }
    }
  }
}

void sub_1000EF110(uint64_t a1, void *a2)
{
  v21 = a2;
  if (!a1 || !*(a1 + 464) || [v21 state] == 255)
  {
    goto LABEL_24;
  }

  v3 = *(a1 + 464);
  if (v3)
  {
    v3 = v3[10];
  }

  v4 = v3;
  v5 = [v4 UUIDString];
  [v21 setPeerToken:v5];

  v6 = *(a1 + 464);
  if (v6)
  {
    v6 = v6[11];
  }

  v7 = v6;
  v8 = [v7 UUIDString];
  [v21 setLocalToken:v8];

  if ([v21 type] == 5)
  {
    v9 = v21;
    v10 = v9;
    v11 = *(a1 + 464);
    v13 = 0;
    if (v11)
    {
      v12 = *(v11 + 48);
      if ((v12 & 1) != 0 && ((v12 & 2) != 0 || (*(v11 + 56) & 2) != 0))
      {
        v13 = 1;
      }
    }

    if ([v9 startRequested])
    {
      if (!v10)
      {
        if ((v13 & 1) == 0)
        {
          goto LABEL_21;
        }

        goto LABEL_18;
      }

      if (v13 != v10[248])
      {
LABEL_18:
        [v10 cancelWithReason:@"classD support changed"];
LABEL_21:

        goto LABEL_22;
      }
    }

    else if (!v10)
    {
      goto LABEL_21;
    }

    v10[248] = v13;
    goto LABEL_21;
  }

LABEL_22:
  v14 = *(a1 + 96);
  v15 = _NRCopyLogObjectForNRUUID();
  IsLevelEnabled = _NRLogIsLevelEnabled();

  if (IsLevelEnabled)
  {
    v17 = *(a1 + 96);
    v18 = _NRCopyLogObjectForNRUUID();
    v19 = [v21 peerToken];
    v20 = [v21 localToken];
    _NRLogWithArgs();
  }

LABEL_24:
}

BOOL sub_1000EF670(uint64_t a1, int a2, BOOL a3, char a4, int a5, void *a6)
{
  v11 = a6;
  if (a1)
  {
    dispatch_assert_queue_V2(*(a1 + 136));
    if (a2)
    {
      v12 = 3;
    }

    else
    {
      v12 = 2;
    }

    sub_1000F08C8(a1, v12);
    v13 = objc_alloc_init(NRLinkDirectorRequest);
    v15 = v13;
    if (v13)
    {
      if (a2)
      {
        v16 = 2;
      }

      else
      {
        v16 = 3;
      }

      v13->_type = v16;
      if (a2)
      {
        v17 = 2;
      }

      else
      {
        v17 = 3;
      }

      v13->_allowsSuspendedLink = byte_100196571[v17];
      *(a1 + 37) = v16;
      if (a5)
      {
        v13->_requiredLinkType = 1;
      }

      objc_setProperty_nonatomic_copy(v13, v14, v11, 48);
      v15->_attemptImmediately = a3;
      sub_1000EAA20(a1, v15);
      if ((a4 & 1) != 0 && !v15->_complete)
      {
        sub_1000ECEAC(a1, v15);
      }

      complete = v15->_complete;
    }

    else
    {
      *(a1 + 37) = 0;
      sub_1000EAA20(a1, 0);
      complete = 0;
      if (a4)
      {
        sub_1000ECEAC(a1, 0);
        complete = 0;
      }
    }
  }

  else
  {
    complete = 0;
  }

  return complete;
}

void sub_1000EF7A0(uint64_t a1, const char *a2)
{
  if (!a1)
  {
    return;
  }

  dispatch_assert_queue_V2(*(a1 + 136));
  if ((a2 & 1) == 0)
  {
    *(a1 + 16) = 0;
  }

  if (*(a1 + 15) == a2)
  {
    return;
  }

  v49 = a2;
  sub_1000EC910(a1, 1008, @"%d -> %d", v4, v5, v6, v7, v8, *(a1 + 15));
  v9 = *(a1 + 96);
  v10 = _NRCopyLogObjectForNRUUID();
  IsLevelEnabled = _NRLogIsLevelEnabled();

  if (IsLevelEnabled)
  {
    v12 = *(a1 + 96);
    v13 = _NRCopyLogObjectForNRUUID();
    v14 = *(a1 + 15);

    v51 = v14;
    v52 = a2;
    v50 = 2152;
    v48 = "";
    v49 = "[NRDDeviceConductor setPreferWiFiRequest:]";
    _NRLogWithArgs();
  }

  *(a1 + 15) = a2;
  if (*(a1 + 408))
  {
    if (a2)
    {
      goto LABEL_9;
    }

LABEL_18:
    if (*(a1 + 18) == 1)
    {
      v25 = *(a1 + 96);
      v26 = _NRCopyLogObjectForNRUUID();
      v27 = _NRLogIsLevelEnabled();

      if (v27)
      {
        v28 = *(a1 + 96);
        v29 = _NRCopyLogObjectForNRUUID();
        v50 = 2215;
        v48 = "";
        v49 = "[NRDDeviceConductor setPreferWiFiRequest:]";
        _NRLogWithArgs();
      }

      v30 = sub_1000EA2C8(a1, 2, 102);
      if ([v30 startRequested])
      {
        [v30 suspend];
      }
    }

    *(a1 + 20) = 0;
    *(a1 + 26) = 0;
    sub_1000F08C8(a1, 2u);
    sub_1000F08C8(a1, 7u);
    v31 = nr_absolute_time();
    v32 = *(a1 + 408);
    if (v32)
    {
      *(v32 + 24) = v31;
      v33 = *(a1 + 408);
    }

    else
    {
      v33 = 0;
    }

    [v33 submit];
    v34 = *(a1 + 408);
    *(a1 + 408) = 0;

    sub_1000F0B48(a1, 0);
    *(a1 + 54) = 0;
    v35 = *(a1 + 472);
    *(a1 + 472) = 0;

    sub_1000F0BF8(a1);
    v36 = *(a1 + 648);
    if (v36 && (v36[16] & 1) != 0)
    {

      sub_1000F0D40(a1, v36);
    }

    return;
  }

  v23 = objc_alloc_init(NRAnalyticsPreferWiFi);
  v24 = *(a1 + 408);
  *(a1 + 408) = v23;

  if ((*(a1 + 15) & 1) == 0)
  {
    goto LABEL_18;
  }

LABEL_9:
  v15 = *(a1 + 608);
  if (v15)
  {
    if ([*(a1 + 608) cancelled])
    {
      v16 = *(v15 + 16);
      v17 = _NRCopyLogObjectForNRUUID();
      v18 = _NRLogIsLevelEnabled();

      if (v18)
      {
        v19 = *(v15 + 16);
        v20 = _NRCopyLogObjectForNRUUID();
        v50 = 440;
        v51 = v15;
        v48 = "";
        v49 = "[NRAutoLinkUpgradeMonitor reportPreferWiFiRequest]";
        _NRLogWithArgs();
      }
    }
  }

  v21 = nr_absolute_time();
  v22 = *(a1 + 408);
  if (v22)
  {
    *(v22 + 16) = v21;
  }

  sub_1000EFC5C(a1);
  if (sub_1000EFD10(a1))
  {
    sub_1000EFE54(a1);
  }

  else
  {
    v37 = *(a1 + 96);
    v38 = _NRCopyLogObjectForNRUUID();
    v39 = _NRLogIsLevelEnabled();

    if (v39)
    {
      v40 = *(a1 + 96);
      v41 = _NRCopyLogObjectForNRUUID();
      v50 = 2175;
      v48 = "";
      v49 = "[NRDDeviceConductor setPreferWiFiRequest:]";
      _NRLogWithArgs();
    }

    sub_1000EFF24(a1);
  }

  sub_1000F015C(a1);
  sub_1000F03C0(a1);
  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  v42 = *(a1 + 472);
  v43 = [v42 countByEnumeratingWithState:&v53 objects:v59 count:16];
  if (v43)
  {
    v44 = v43;
    v45 = *v54;
    while (2)
    {
      for (i = 0; i != v44; i = i + 1)
      {
        if (*v54 != v45)
        {
          objc_enumerationMutation(v42);
        }

        if ([*(*(&v53 + 1) + 8 * i) unsignedCharValue] == 101)
        {
          v47 = (*(a1 + 616) >> 2) & 1;
          v57[0] = _NSConcreteStackBlock;
          v57[1] = 3221225472;
          v57[2] = sub_1000F05D8;
          v57[3] = &unk_1001FBA98;
          v58 = v47;
          v57[4] = a1;
          sub_1000F06F8(a1, 2, v47, v57);
          goto LABEL_44;
        }
      }

      v44 = [v42 countByEnumeratingWithState:&v53 objects:v59 count:16];
      if (v44)
      {
        continue;
      }

      break;
    }
  }

LABEL_44:
}

void sub_1000EFC5C(uint64_t a1)
{
  if (a1 && (*(a1 + 8) & 1) == 0)
  {
    dispatch_assert_queue_V2(*(a1 + 136));
    sub_1000F08C8(a1, 3u);
    v2 = objc_alloc_init(NRLinkDirectorRequest);
    v3 = v2;
    v4 = v2;
    if (v2)
    {
      v2->_type = 9;
      v2->_allowsSuspendedLink = 1;
      objc_setProperty_nonatomic_copy(v2, v2, 0, 48);
      v3 = v4;
      v4->_attemptImmediately = 1;
    }

    sub_1000EAA20(a1, v3);
  }
}

uint64_t sub_1000EFD10(uint64_t a1)
{
  objc_opt_self();
  v2 = sub_100163A30(NRDLocalDevice, *(a1 + 96));
  if (!v2)
  {
    v5 = sub_1000E83DC();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v7 = sub_1000E83DC();
      _NRLogWithArgs();
    }

    _os_log_pack_size();
    v8 = *__error();
    v9 = _os_log_pack_fill();
    *v9 = 136446210;
    *(v9 + 4) = "[NRDDeviceConductor isAlwaysOnWiFiSupported]";
    sub_1000E83DC();
    _NRLogAbortWithPack();
  }

  v3 = v2[6];

  return (v3 >> 8) & 1;
}

void sub_1000EFE54(uint64_t a1)
{
  if (a1 && (sub_1000EC4F0(a1, 5) & 1) == 0)
  {
    v2 = objc_alloc_init(NRLinkDirectorRequest);
    v4 = v2;
    if (v2)
    {
      v2->_type = 5;
      v2->_allowsSuspendedLink = 0;
      v2->_requiredLinkType = 2;
    }

    newValue[0] = _NSConcreteStackBlock;
    newValue[1] = 3221225472;
    newValue[2] = sub_1000F2698;
    newValue[3] = &unk_1001FD3C8;
    newValue[4] = a1;
    if (v2)
    {
      objc_setProperty_nonatomic_copy(v2, v3, newValue, 48);
    }

    sub_1000EAA20(a1, v4);
  }
}

void sub_1000EFF24(uint64_t a1)
{
  if (a1)
  {
    dispatch_assert_queue_V2(*(a1 + 136));
    dispatch_assert_queue_V2(*(a1 + 136));
    v2 = sub_100163A30(NRDLocalDevice, *(a1 + 96));
    v3 = v2;
    if (v2)
    {
      v4 = *(v2 + 144);
    }

    else
    {
      v4 = 0;
    }

    v5 = v4;
    v6 = [v5 getDefaultLinkSubtypeForLinkType:1];

    v27 = sub_1000EA2C8(a1, 1, v6);
    if (v27)
    {
      if ([v27 state] == 1 || objc_msgSend(v27, "state") == 9 || objc_msgSend(v27, "state") == 8)
      {
        v7 = *(a1 + 96);
        v8 = _NRCopyLogObjectForNRUUID();
        IsLevelEnabled = _NRLogIsLevelEnabled();

        if (IsLevelEnabled)
        {
          v10 = *(a1 + 96);
          v11 = _NRCopyLogObjectForNRUUID();
          v24 = 3528;
          v25 = v27;
          v22 = "";
          v23 = "[NRDDeviceConductor suspendLinkOfType:]";
          _NRLogWithArgs();
        }

        [v27 suspend];
      }

      else
      {
        v17 = *(a1 + 96);
        v18 = _NRCopyLogObjectForNRUUID();
        v19 = _NRLogIsLevelEnabled();

        if (v19)
        {
          v20 = *(a1 + 96);
          v21 = _NRCopyLogObjectForNRUUID();
          v24 = 3523;
          v25 = v27;
          v22 = "";
          v23 = "[NRDDeviceConductor suspendLinkOfType:]";
          _NRLogWithArgs();
        }

        [v27 setSuspendWhenReady:{1, v22, v23, v24, v25}];
      }
    }

    else
    {
      v12 = *(a1 + 96);
      v13 = _NRCopyLogObjectForNRUUID();
      v14 = _NRLogIsLevelEnabled();

      if (v14)
      {
        v15 = *(a1 + 96);
        v16 = _NRCopyLogObjectForNRUUID();
        StringFromNRLinkType = createStringFromNRLinkType();
        _NRLogWithArgs();
      }
    }
  }
}

void sub_1000F015C(uint64_t a1)
{
  if (a1)
  {
    dispatch_assert_queue_V2(*(a1 + 136));
    if (*(a1 + 20) == 1)
    {
      v2 = *(a1 + 96);
      v3 = _NRCopyLogObjectForNRUUID();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      if (IsLevelEnabled)
      {
        v5 = *(a1 + 96);
        v15 = _NRCopyLogObjectForNRUUID();
        _NRLogWithArgs();
      }
    }

    else
    {
      *(a1 + 20) = 1;
      v6 = objc_alloc_init(NRLinkDirectorRequest);
      v8 = v6;
      if (v6)
      {
        v6->_type = 7;
        v6->_allowsSuspendedLink = 0;
        objc_storeStrong(&v6->_cancelIfLinkTypeReady, &off_10020A078);
      }

      newValue[0] = _NSConcreteStackBlock;
      newValue[1] = 3221225472;
      newValue[2] = sub_1000F21C0;
      newValue[3] = &unk_1001FD3C8;
      newValue[4] = a1;
      if (v8)
      {
        objc_setProperty_nonatomic_copy(v8, v7, newValue, 24);
        v8->_attemptImmediately = 1;
        v8->_timeout = 60;
      }

      sub_1000F0B48(a1, 0);
      v9 = *(a1 + 472);
      v10 = [v9 firstObject];

      if (v10)
      {
        v11 = [v10 unsignedCharValue];
        if (v11 - 105 >= 0xFFFFFFFD && v8)
        {
          v8->_attemptImmediately = 1;
          v8->_timeout = 15;
        }

        sub_1000F0B48(a1, v11 == 102);
        v12 = *(a1 + 53);
      }

      else
      {
        v12 = 0;
      }

      v16[0] = _NSConcreteStackBlock;
      v16[1] = 3221225472;
      v16[2] = sub_1000F21F0;
      v16[3] = &unk_1001FC900;
      v16[4] = a1;
      v17 = v10;
      v18 = v12 & 1;
      v14 = v10;
      if (v8)
      {
        objc_setProperty_nonatomic_copy(v8, v13, v16, 48);
      }

      sub_1000EAA20(a1, v8);
    }
  }
}

void sub_1000F03C0(uint64_t a1)
{
  if (!a1)
  {
    return;
  }

  sub_1000F1574(a1);
  if (*(a1 + 18))
  {
    sub_1000F18B4(a1);
    v2 = (a1 + 15);
    if ((*(a1 + 15) & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  else
  {
    if (*(a1 + 15) != 1)
    {
      return;
    }

    v2 = (a1 + 15);
  }

  sub_1000F015C(a1);
LABEL_8:
  v3 = *(a1 + 96);
  v4 = _NRCopyLogObjectForNRUUID();
  IsLevelEnabled = _NRLogIsLevelEnabled();

  if (IsLevelEnabled)
  {
    v6 = *(a1 + 96);
    v7 = _NRCopyLogObjectForNRUUID();
    v14 = *(a1 + 53);
    v15 = *(a1 + 15);
    v13 = *(a1 + 10);
    _NRLogWithArgs();
  }

  if (*(a1 + 10) == 1 && *(a1 + 53) == 1 && *v2 == 1)
  {

    sub_1000F1A9C(a1);
  }

  else
  {
    sub_1000F17CC(a1, 1);
    v16 = sub_1000F1BC0(a1, 2);
    if (v16 && [(dispatch_queue_t *)v16 state]!= 255)
    {
      [(dispatch_queue_t *)v16 start];
    }

    if (*(a1 + 49) == 1 && *(a1 + 18) == 1 && (*v2 & 1) == 0 && (*(a1 + 28) & 1) == 0)
    {
      v8 = *(a1 + 96);
      v9 = _NRCopyLogObjectForNRUUID();
      v10 = _NRLogIsLevelEnabled();

      if (v10)
      {
        v11 = *(a1 + 96);
        v12 = _NRCopyLogObjectForNRUUID();
        _NRLogWithArgs();
      }
    }

    else
    {
      sub_1000EFE54(a1);
    }
  }
}

void sub_1000F05D8(uint64_t a1)
{
  if (*(a1 + 40) == 1)
  {
    v2 = *(a1 + 32);
    if (v2)
    {
      dispatch_assert_queue_V2(v2[17]);
      objc_opt_self();
      if (qword_1002290C0 != -1)
      {
        dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
      }

      v3 = qword_1002290B8;
      v4 = v3;
      if (v3)
      {
        v5 = *(v3 + 6);
      }

      else
      {
        v5 = 0;
      }

      v6 = v5;

      if (v6)
      {
        v2 = v6[7];
      }

      else
      {
        v2 = 0;
      }
    }

    else
    {
      v6 = 0;
    }

    v7 = v2;

    if (!v7)
    {
      v8 = *(a1 + 32);
      if (v8)
      {
        v9 = *(v8 + 648);
        if (v9)
        {
          v9[4] |= 8u;
        }
      }

      else
      {
        v9 = 0;
      }
    }
  }
}

void sub_1000F06F8(uint64_t a1, int a2, char a3, void *a4)
{
  v7 = a4;
  if (*(a1 + 12) != 1)
  {
    goto LABEL_28;
  }

  v15 = v7;
  v8 = 648;
  if (a2 == 1)
  {
    v8 = 640;
  }

  v9 = *(a1 + v8);
  if (v9)
  {
    if (a2 == 1)
    {
LABEL_6:
      if (v9)
      {
        v9[4] |= 0x800u;
      }

      v10 = 640;
      goto LABEL_18;
    }
  }

  else
  {
    v9 = sub_100079A1C([NRLinkUpgradeReport alloc], a2);
    v11 = [*(a1 + 160) type];
    if (v9)
    {
      *(v9 + 11) = v11;
    }

    v12 = [*(a1 + 160) subtype];
    if (v9)
    {
      *(v9 + 12) = v12;
      if (*(a1 + 30) == 1)
      {
        v9[4] |= 0x100u;
      }

      if (*(a1 + 288))
      {
        v9[4] |= 0x200u;
      }
    }

    if (a2 == 1)
    {
      goto LABEL_6;
    }
  }

  v10 = 648;
LABEL_18:
  objc_storeStrong((a1 + v10), v9);
  if (v9)
  {
    if (!*(v9 + 8))
    {
      *(v9 + 8) = nr_absolute_time();
      *(v9 + 9) = 0;
    }

    v13 = v9[4] | 1;
    v9[4] = v13;
    ++v9[6];
    if (a3)
    {
      *(v9 + 4) = *(a1 + 616);
      v14 = *(v9 + 6);
      *(v9 + 5) |= *(a1 + 624);
      if (!v14)
      {
        *(v9 + 6) = nr_absolute_time();
        *(v9 + 7) = 0;
        v13 = v9[4];
      }

      v9[4] = v13 | 2;
    }

    if ((~*(a1 + 616) & 6) == 0)
    {
      v9[4] |= 0x10u;
    }
  }

  else
  {
    nr_absolute_time();
    if (a3)
    {
      nr_absolute_time();
    }
  }

  v15[2]();

  v7 = v15;
LABEL_28:
}

void sub_1000F08C8(uint64_t a1, unsigned int a2)
{
  if (a1)
  {
    dispatch_assert_queue_V2(*(a1 + 136));
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v4 = *(a1 + 152);
    v5 = [v4 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v23;
      while (2)
      {
        v8 = 0;
        do
        {
          if (*v23 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v22 + 1) + 8 * v8);
          if (v9)
          {
            if (v9[10] == a2)
            {
              v17 = v9;

              sub_1000ECEAC(a1, v17);
              v18 = *(a1 + 96);
              v19 = _NRCopyLogObjectForNRUUID();
              IsLevelEnabled = _NRLogIsLevelEnabled();

              if (!IsLevelEnabled)
              {
                goto LABEL_26;
              }

              v21 = *(a1 + 96);
              v15 = _NRCopyLogObjectForNRUUID();
              if (a2 > 0xB)
              {
                v16 = @"Unknown";
              }

              else
              {
                v16 = [[NSString alloc] initWithUTF8String:(&off_1001FC2A0)[a2]];
              }

              _NRLogWithArgs();
              goto LABEL_25;
            }
          }

          else if (!a2)
          {
            goto LABEL_14;
          }

          v8 = v8 + 1;
        }

        while (v6 != v8);
        v10 = [v4 countByEnumeratingWithState:&v22 objects:v26 count:16];
        v6 = v10;
        if (v10)
        {
          continue;
        }

        break;
      }
    }

LABEL_14:

    v11 = *(a1 + 96);
    v12 = _NRCopyLogObjectForNRUUID();
    v13 = _NRLogIsLevelEnabled();

    if (v13)
    {
      v14 = *(a1 + 96);
      v15 = _NRCopyLogObjectForNRUUID();
      if (a2 > 0xB)
      {
        v16 = @"Unknown";
      }

      else
      {
        v16 = [[NSString alloc] initWithUTF8String:(&off_1001FC2A0)[a2]];
      }

      _NRLogWithArgs();
      v17 = 0;
LABEL_25:
    }

    else
    {
      v17 = 0;
    }

LABEL_26:
  }
}

void sub_1000F0B48(uint64_t a1, int a2)
{
  if (a1)
  {
    v2 = a2;
    if (*(a1 + 53) != a2)
    {
      v4 = *(a1 + 96);
      v5 = _NRCopyLogObjectForNRUUID();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      if (IsLevelEnabled)
      {
        v7 = *(a1 + 96);
        v8 = _NRCopyLogObjectForNRUUID();
        v9 = *(a1 + 53);
        _NRLogWithArgs();
      }

      *(a1 + 53) = v2;
    }
  }
}

void sub_1000F0BF8(uint64_t a1)
{
  if (a1)
  {
    sub_1000F1574(a1);
    v2 = sub_1000EA2C8(a1, 2, 102);
    v9 = v2;
    if ((*(a1 + 18) & 1) != 0 || *(a1 + 15) == 1)
    {
      if ([v2 startRequested])
      {
        sub_1000F03C0(a1);
      }
    }

    else
    {
      if ((*(a1 + 45) & 1) == 0)
      {
        dispatch_assert_queue_V2(*(a1 + 136));
        v3 = sub_100163A30(NRDLocalDevice, *(a1 + 96));
        v4 = v3;
        if (v3)
        {
          v5 = *(v3 + 144);
        }

        else
        {
          v5 = 0;
        }

        v6 = v5;
        v7 = [v6 getDefaultLinkSubtypeForLinkType:2];

        v8 = sub_1000EA2C8(a1, 2, v7);
        if (v8 && [v8 startRequested])
        {
          [v8 cancelWithReason:@"Wi-Fi link is not needed anymore"];
        }
      }

      sub_1000F08C8(a1, 5u);
      sub_1000F17CC(a1, 0);
      if ([v9 startRequested])
      {
        [v9 cancelWithReason:@"not needed anymore"];
      }
    }
  }
}

void sub_1000F0D40(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!a1 || !v3)
  {
    goto LABEL_59;
  }

  v4 = *(v3 + 8);
  v74 = v3;
  if (v4 != 2)
  {
    if (v4 != 1)
    {
      v17 = *(a1 + 96);
      v18 = _NRCopyLogObjectForNRUUID();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      v3 = v74;
      if (!IsLevelEnabled)
      {
        goto LABEL_59;
      }

      v20 = *(a1 + 96);
      v21 = _NRCopyLogObjectForNRUUID();
      _NRLogWithArgs();
      goto LABEL_58;
    }

    v5 = *(a1 + 216);
    v6 = v5;
    if (!v5 || *(v5 + 8) != 1)
    {
      v7 = *(a1 + 640);
      if (v7 && v7[8])
      {
        v8 = *(a1 + 640);
        if (v8)
        {
          v9 = *(v8 + 72);

          if (v9)
          {
            goto LABEL_24;
          }
        }

        else
        {
        }

        v10 = nr_absolute_time();
        v11 = *(a1 + 640);
        if (v11)
        {
          *(v11 + 72) = v10;
        }

LABEL_24:
        if ((*(a1 + 616) & 2) == 0)
        {
          v22 = *(a1 + 640);
          if (v22 && v22[7] || (v23 = *(a1 + 640)) == 0)
          {
          }

          else
          {
            v24 = *(v23 + 48);

            if (v24)
            {
              v25 = nr_absolute_time();
              v26 = *(a1 + 640);
              if (v26)
              {
                *(v26 + 56) = v25;
              }
            }
          }
        }

        v27 = *(a1 + 216);
        v3 = v74;
        if (v27 && (*(v27 + 8) & 1) != 0)
        {
          goto LABEL_59;
        }

        v28 = *(a1 + 616);
        if ((v28 & 2) != 0)
        {
          goto LABEL_59;
        }

LABEL_47:
        v3[12] = v28;
        v3[13] |= *(a1 + 624);
        v34 = [NRAnalyticsLinkUpgradeReport alloc];
        v35 = objc_alloc_init(NSMutableDictionary);
        v36 = v74[6];
        v37 = v74[7];
        NRDiffMachTimeInSeconds();
        v39 = v38;
        v40 = v74[8];
        v41 = v74[9];
        NRDiffMachTimeInSeconds();
        v43 = v42;
        v44 = [NSNumber numberWithUnsignedChar:*(v74 + 8)];
        [v35 setObject:v44 forKeyedSubscript:@"upgradeType"];

        v45 = v74;
        if (v74[4] || v74[12])
        {
          v46 = [NSNumber numberWithUnsignedLongLong:?];
          [v35 setObject:v46 forKeyedSubscript:@"startAdvice"];

          v47 = [NSNumber numberWithUnsignedLongLong:v74[12]];
          [v35 setObject:v47 forKeyedSubscript:@"endAdvice"];

          v48 = sub_100079D30(v74[5]);
          [v35 setObject:v48 forKeyedSubscript:@"startReason"];

          v49 = sub_100079D30(v74[13]);
          [v35 setObject:v49 forKeyedSubscript:@"endReason"];

          v45 = v74;
        }

        v50 = [NSNumber numberWithUnsignedChar:*(v45 + 9)];
        [v35 setObject:v50 forKeyedSubscript:@"thermalState"];

        v51 = [NSNumber numberWithUnsignedChar:*(v74 + 10)];
        [v35 setObject:v51 forKeyedSubscript:@"battery"];

        v52 = [NSNumber numberWithUnsignedLongLong:v39];
        [v35 setObject:v52 forKeyedSubscript:@"adviceDuration"];

        if (v43 > 0.0)
        {
          v53 = [NSNumber numberWithUnsignedLongLong:v43];
          [v35 setObject:v53 forKeyedSubscript:@"clientTriggerDuration"];

          if (v39 > 0.0)
          {
            v54 = [NSNumber numberWithInt:v74[6] <= v74[8]];
            [v35 setObject:v54 forKeyedSubscript:@"adviceStartBeforeClient"];

            v55 = [NSNumber numberWithInt:v74[7] <= v74[9]];
            [v35 setObject:v55 forKeyedSubscript:@"adviceEndBeforeClient"];
          }
        }

        v56 = [NSNumber numberWithUnsignedChar:*(v74 + 11)];
        [v35 setObject:v56 forKeyedSubscript:@"primaryLinkType"];

        v57 = [NSNumber numberWithUnsignedChar:*(v74 + 12)];
        [v35 setObject:v57 forKeyedSubscript:@"primaryLinkSubtype"];

        v58 = [NSNumber numberWithUnsignedInt:*(v74 + 5)];
        [v35 setObject:v58 forKeyedSubscript:@"adviceCount"];

        v59 = [NSNumber numberWithUnsignedInt:*(v74 + 6)];
        [v35 setObject:v59 forKeyedSubscript:@"clientTriggerCount"];

        v60 = [NSNumber numberWithInt:v74[2] & 1];
        [v35 setObject:v60 forKeyedSubscript:@"clientTriggered"];

        v61 = [NSNumber numberWithInt:(*(v74 + 4) >> 1) & 1];
        [v35 setObject:v61 forKeyedSubscript:@"aluTriggered"];

        v62 = [NSNumber numberWithInt:(*(v74 + 4) >> 11) & 1];
        [v35 setObject:v62 forKeyedSubscript:@"upgradeSuccessful"];

        v63 = [NSNumber numberWithInt:(*(v74 + 4) >> 2) & 1];
        [v35 setObject:v63 forKeyedSubscript:@"againstWRM"];

        v64 = [NSNumber numberWithInt:(*(v74 + 4) >> 3) & 1];
        [v35 setObject:v64 forKeyedSubscript:@"advisedWithNoLink"];

        v65 = [NSNumber numberWithInt:(*(v74 + 4) >> 4) & 1];
        [v35 setObject:v65 forKeyedSubscript:@"overlappingAdvice"];

        v66 = [NSNumber numberWithInt:(*(v74 + 4) >> 5) & 1];
        [v35 setObject:v66 forKeyedSubscript:@"pluggedIn"];

        v67 = [NSNumber numberWithInt:(*(v74 + 4) >> 6) & 1];
        [v35 setObject:v67 forKeyedSubscript:@"lowPowerMode"];

        v68 = [NSNumber numberWithInt:(*(v74 + 4) >> 8) & 1];
        [v35 setObject:v68 forKeyedSubscript:@"activePhoneCall"];

        v69 = [NSNumber numberWithInt:(*(v74 + 4) >> 9) & 1];
        [v35 setObject:v69 forKeyedSubscript:@"dtcRequest"];

        v70 = [NSNumber numberWithInt:(*(v74 + 4) >> 10) & 1];
        [v35 setObject:v70 forKeyedSubscript:@"thermalWorsened"];

        v21 = sub_100157134(v34, v35);
        [v21 submit];
        v71 = *(v74 + 8);
        if (v71 == 1)
        {
          v72 = 640;
        }

        else
        {
          if (v71 != 2)
          {
LABEL_58:

            v3 = v74;
            goto LABEL_59;
          }

          v72 = 648;
        }

        v73 = *(a1 + v72);
        *(a1 + v72) = 0;

        goto LABEL_58;
      }
    }

    goto LABEL_24;
  }

  if ((*(a1 + 15) & 1) == 0)
  {
    v12 = *(a1 + 648);
    if (v12 && v12[8])
    {
      v13 = *(a1 + 648);
      if (v13)
      {
        v14 = *(v13 + 72);

        if (v14)
        {
          goto LABEL_37;
        }
      }

      else
      {
      }

      v15 = nr_absolute_time();
      v16 = *(a1 + 648);
      if (v16)
      {
        *(v16 + 72) = v15;
      }
    }

    else
    {
    }
  }

LABEL_37:
  if ((*(a1 + 616) & 4) == 0)
  {
    v29 = *(a1 + 648);
    if (v29 && v29[7] || (v30 = *(a1 + 648)) == 0)
    {
    }

    else
    {
      v31 = *(v30 + 48);

      if (v31)
      {
        v32 = nr_absolute_time();
        v33 = *(a1 + 648);
        if (v33)
        {
          *(v33 + 56) = v32;
        }
      }
    }
  }

  v3 = v74;
  if ((*(a1 + 15) & 1) == 0)
  {
    v28 = *(a1 + 616);
    if ((v28 & 4) == 0)
    {
      goto LABEL_47;
    }
  }

LABEL_59:
}

void sub_1000F1574(uint64_t a1)
{
  if (*(a1 + 18) == 1)
  {
    dispatch_assert_queue_V2(*(a1 + 136));
    v2 = sub_100163A30(NRDLocalDevice, *(a1 + 96));
    v3 = v2;
    if (v2)
    {
      v4 = *(v2 + 144);
    }

    else
    {
      v4 = 0;
    }

    v5 = v4;
    v6 = [v5 getDefaultLinkSubtypeForLinkType:1];

    v7 = sub_1000EA2C8(a1, 1, v6);
    if (*(a1 + 28) == 1 && [v7 state] > 7)
    {
      v8 = 0;
    }

    else
    {
      v8 = 2;
    }
  }

  else
  {
    v8 = 0;
  }

  if (*(a1 + 15))
  {
    v8 |= 4uLL;
  }

  if (!v8)
  {
    v18 = 0;
    goto LABEL_27;
  }

  v18 = objc_alloc_init(NSMutableArray);
  if ((*(a1 + 18) & 1) == 0)
  {
    if (*(a1 + 15) != 1)
    {
      goto LABEL_27;
    }

    if (*(a1 + 8))
    {
      goto LABEL_20;
    }
  }

  [v18 addObject:@"terminusd"];
  if (*(a1 + 15) & 1) != 0 && (*(a1 + 8))
  {
LABEL_20:
    objc_opt_self();
    if (qword_1002290C0 != -1)
    {
      dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
    }

    v9 = qword_1002290B8;
    v10 = v9;
    if (v9)
    {
      v11 = *(v9 + 12);
    }

    else
    {
      v11 = 0;
    }

    v12 = v11;
    v13 = sub_1000729D8(v12);

    if ([v13 count])
    {
      [v18 addObjectsFromArray:v13];
    }
  }

LABEL_27:
  dispatch_assert_queue_V2(*(a1 + 136));
  objc_opt_self();
  if (qword_1002290C0 != -1)
  {
    dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
  }

  v14 = qword_1002290B8;
  v15 = v14;
  if (v14)
  {
    v16 = *(v14 + 6);
  }

  else
  {
    v16 = 0;
  }

  v17 = v16;

  sub_10017F43C(v17, v8, *(a1 + 96), v18);
}

void sub_1000F17CC(uint64_t a1, int a2)
{
  if ((a2 & 1) != 0 || (*(a1 + 18) & 1) == 0 && (*(a1 + 15) & 1) == 0)
  {
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

    sub_10017EDB4(v7, a2, *(a1 + 96));
  }
}

void sub_1000F18B4(uint64_t a1)
{
  if (a1)
  {
    dispatch_assert_queue_V2(*(a1 + 136));
    if (*(a1 + 19) == 1)
    {
      v2 = *(a1 + 96);
      v3 = _NRCopyLogObjectForNRUUID();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      if (IsLevelEnabled)
      {
        v5 = *(a1 + 96);
        v9 = _NRCopyLogObjectForNRUUID();
        _NRLogWithArgs();
      }
    }

    else
    {
      *(a1 + 19) = 1;
      v6 = objc_alloc_init(NRLinkDirectorRequest);
      v8 = v6;
      if (v6)
      {
        v6->_type = 6;
        v6->_allowsSuspendedLink = 0;
        objc_storeStrong(&v6->_timerDescription, @"WiFi-bringup-timeout");
        objc_storeStrong(&v8->_cancelIfLinkTypeReady, &off_10020A090);
      }

      newValue[0] = _NSConcreteStackBlock;
      newValue[1] = 3221225472;
      newValue[2] = sub_1000F1C5C;
      newValue[3] = &unk_1001FD3C8;
      newValue[4] = a1;
      if (v8)
      {
        objc_setProperty_nonatomic_copy(v8, v7, newValue, 24);
        v8->_attemptImmediately = 1;
        v8->_timeout = 60;
        v8->_deferIfRequestExists = 5;
      }

      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = sub_1000F1C6C;
      v10[3] = &unk_1001FD3C8;
      v10[4] = a1;
      if (v8)
      {
        objc_setProperty_nonatomic_copy(v8, v7, v10, 48);
      }

      sub_1000EAA20(a1, v8);
    }
  }
}

void sub_1000F1A9C(uint64_t a1)
{
  if (a1 && *(a1 + 10) == 1)
  {
    v2 = sub_1000EA2C8(a1, 2, 102);
    v8 = v2;
    if (v2)
    {
      if (([v2 startRequested] & 1) == 0)
      {
        if ((*(a1 + 53) & 1) != 0 || *(a1 + 39) == 2)
        {
          [v8 start];
          if ((*(a1 + 58) & 1) == 0)
          {
            sub_1000EFE54(a1);
          }
        }

        else
        {
          sub_1000F08C8(a1, 5u);
        }
      }
    }

    else
    {
      v3 = *(a1 + 96);
      v4 = _NRCopyLogObjectForNRUUID();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      if (IsLevelEnabled)
      {
        v6 = *(a1 + 96);
        v7 = _NRCopyLogObjectForNRUUID();
        _NRLogWithArgs();
      }
    }
  }
}

dispatch_queue_t *sub_1000F1BC0(dispatch_queue_t *result, uint64_t a2)
{
  if (result)
  {
    v3 = result;
    dispatch_assert_queue_V2(result[17]);
    v4 = sub_100163A30(NRDLocalDevice, *(v3 + 96));
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
    v8 = [v7 getDefaultLinkSubtypeForLinkType:a2];

    v9 = sub_1000EA2C8(v3, a2, v8);
    return v9;
  }

  return result;
}

uint64_t sub_1000F1C5C(uint64_t result)
{
  v1 = *(result + 32);
  if (v1)
  {
    *(v1 + 19) = 0;
  }

  return result;
}

void sub_1000F1C6C(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = *(v2 + 96);
  }

  v4 = _NRCopyLogObjectForNRUUID();
  IsLevelEnabled = _NRLogIsLevelEnabled();

  if (IsLevelEnabled)
  {
    v6 = *(a1 + 32);
    if (v6)
    {
      v7 = *(v6 + 96);
    }

    v8 = _NRCopyLogObjectForNRUUID();
    _NRLogWithArgs();
  }

  v9 = *(a1 + 32);
  if (v9)
  {
    *(v9 + 19) = 0;
    v10 = *(a1 + 32);
    if (v10)
    {
      if ((*(v10 + 616) & 4) == 0 || (v11 = *(v10 + 608), v12 = *(v10 + 632), v13 = v11, sub_10007A18C(v13, v12), v13, (v10 = *(a1 + 32)) != 0))
      {
        dispatch_assert_queue_V2(*(v10 + 136));

        sub_1000F1D90(v10, 0, 10);
      }
    }
  }
}

void sub_1000F1D90(uint64_t a1, int a2, unsigned int a3)
{
  dispatch_assert_queue_V2(*(a1 + 136));
  if (*(a1 + 18) != a2)
  {
    if (*(a1 + 23) == 1)
    {
      v6 = *(a1 + 96);
      v7 = _NRCopyLogObjectForNRUUID();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      if (IsLevelEnabled)
      {
        v9 = *(a1 + 96);
        v31 = _NRCopyLogObjectForNRUUID();
        _NRLogWithArgs();
      }
    }

    else
    {
      if (*(a1 + 49))
      {
        goto LABEL_12;
      }

      v10 = sub_100163A30(NRDLocalDevice, *(a1 + 96));
      v11 = v10;
      v12 = v10 ? *(v10 + 144) : 0;
      v13 = v12;
      v14 = [v13 allowedLinkTypes];
      v15 = [v14 containsObject:&off_100209CE0];

      if (v15)
      {
LABEL_12:
        v16 = *(a1 + 96);
        v17 = _NRCopyLogObjectForNRUUID();
        v18 = _NRLogIsLevelEnabled();

        if (v18)
        {
          v19 = *(a1 + 96);
          v20 = _NRCopyLogObjectForNRUUID();
          v21 = *(a1 + 18);

          _NRLogWithArgs();
        }

        *(a1 + 18) = a2;
        if (a2)
        {
          v35[0] = _NSConcreteStackBlock;
          v35[1] = 3221225472;
          v35[2] = sub_1000F2154;
          v35[3] = &unk_1001FD3C8;
          v35[4] = a1;
          v22 = objc_retainBlock(v35);
          v23 = v22;
          if (a3)
          {
            v24 = objc_alloc_init(NRLinkDirectorRequest);
            v25 = v24;
            if (v24)
            {
              v24->_type = 6;
              v24->_allowsSuspendedLink = 0;
              objc_storeStrong(&v24->_timerDescription, @"WiFi-bringup-hysteresis");
              objc_storeStrong(&v25->_cancelIfLinkTypeReady, &off_10020A060);
              v25->_attemptImmediately = 1;
              v25->_timeout = a3;
              objc_setProperty_nonatomic_copy(v25, v26, v23, 48);
            }

            sub_1000EAA20(a1, v25);
          }

          else
          {
            v27 = *(a1 + 136);
            block[0] = _NSConcreteStackBlock;
            block[1] = 3221225472;
            block[2] = sub_1000F215C;
            block[3] = &unk_1001FD2A0;
            v34 = v22;
            dispatch_async(v27, block);
            v25 = v34;
          }

          v28 = objc_alloc_init(NRLinkDirectorRequest);
          v30 = v28;
          if (v28)
          {
            *&v28->_type = 1284;
            v28->_allowsSuspendedLink = 0;
            v28->_requiredLinkType = 1;
          }

          newValue[0] = _NSConcreteStackBlock;
          newValue[1] = 3221225472;
          newValue[2] = sub_1000F216C;
          newValue[3] = &unk_1001FD3C8;
          newValue[4] = a1;
          if (v28)
          {
            objc_setProperty_nonatomic_copy(v28, v29, newValue, 48);
          }

          sub_1000EAA20(a1, v30);
        }

        else
        {
          sub_1000F08C8(a1, 4u);

          sub_1000F0BF8(a1);
        }
      }
    }
  }
}

uint64_t sub_1000F216C(uint64_t result)
{
  v1 = *(result + 32);
  if (v1)
  {
    dispatch_assert_queue_V2(*(v1 + 136));

    return sub_1000F1D90(v1, 0, 10);
  }

  return result;
}

uint64_t sub_1000F21C0(uint64_t result)
{
  v1 = *(result + 32);
  if (v1)
  {
    v2 = *(v1 + 408);
    if (!v2 || (*(v2 + 40) = 1, (v1 = *(result + 32)) != 0))
    {
      *(v1 + 20) = 0;
    }
  }

  return result;
}

void sub_1000F21F0(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (!v2 || *(v2 + 20) != 1)
  {
    return;
  }

  if (*(a1 + 40))
  {
    [*(v2 + 472) removeObject:?];
    v2 = *(a1 + 32);
  }

  sub_1000F0B48(v2, 0);
  v3 = *(a1 + 32);
  if (v3 && (*(v3 + 20) = 0, (v4 = *(a1 + 32)) != 0))
  {
    v5 = *(v4 + 472);
  }

  else
  {
    v5 = 0;
  }

  v6 = [v5 count];
  v7 = *(a1 + 32);
  if (!v6)
  {
    if (v7)
    {
      v16 = *(v7 + 408);
      if (!v16 || (*(v16 + 32) = 1, (v7 = *(a1 + 32)) != 0))
      {
        v17 = *(v7 + 96);
      }
    }

    v18 = _NRCopyLogObjectForNRUUID();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v26 = *(a1 + 32);
      if (v26)
      {
        v27 = *(v26 + 96);
      }

      v28 = _NRCopyLogObjectForNRUUID();
      v35 = "";
      _NRLogWithArgs();
    }

    sub_1000F2504(*(a1 + 32), @"WiFi link did not come up", v20, v21, v22, v23, v24, v25, v35);
    v29 = *(a1 + 32);
    if (v29 && ((*(v29 + 616) & 4) == 0 || (v30 = *(v29 + 632), v31 = *(v29 + 608), sub_10007A18C(v31, v30), v31, (v29 = *(a1 + 32)) != 0)))
    {
      dispatch_assert_queue_V2(*(v29 + 136));
      objc_opt_self();
      if (qword_1002290C0 != -1)
      {
        dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
      }

      v32 = qword_1002290B8;
      v33 = v32;
      if (v32)
      {
        v34 = *(v32 + 6);
      }

      else
      {
        v34 = 0;
      }

      v39 = v34;

      sub_10017F69C(v39);
    }

    else
    {
      v39 = 0;
      sub_10017F69C(0);
    }

    goto LABEL_41;
  }

  if (v7)
  {
    v8 = *(v7 + 96);
  }

  v9 = _NRCopyLogObjectForNRUUID();
  v10 = _NRLogIsLevelEnabled();

  if (v10)
  {
    v11 = *(a1 + 32);
    if (v11)
    {
      v11 = v11[12];
    }

    v12 = v11;
    v13 = _NRCopyLogObjectForNRUUID();
    [*(a1 + 40) unsignedCharValue];

    v37 = 2545;
    StringFromNRLinkSubtype = createStringFromNRLinkSubtype();
    v35 = "";
    v36 = "[NRDDeviceConductor setPreferWiFiTimeout]_block_invoke_2";
    _NRLogWithArgs();
  }

  sub_1000F015C(*(a1 + 32));
  v14 = *(a1 + 32);
  if (*(a1 + 48))
  {
    v39 = sub_1000EA2C8(v14, 2, 102);
    if ([v39 startRequested])
    {
      v15 = @"AWDL link is not needed anymore";
LABEL_40:
      [v39 cancelWithReason:{v15, v35, v36, v37, StringFromNRLinkSubtype}];
    }
  }

  else
  {
    if (!v14)
    {
      goto LABEL_42;
    }

    if (*(v14 + 45))
    {
      return;
    }

    v14 = sub_1000F1BC0(v14, 2);
    if (!v14)
    {
      goto LABEL_42;
    }

    v39 = v14;
    if ([(dispatch_queue_t *)v14 startRequested])
    {
      v15 = @"Wi-Fi link is not needed anymore";
      goto LABEL_40;
    }
  }

LABEL_41:
  v14 = v39;
LABEL_42:
}

void sub_1000F2504(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (a1)
  {
    v10 = *(a1 + 136);
    v11 = a2;
    dispatch_assert_queue_V2(v10);
    v12 = [[NSString alloc] initWithFormat:v11 arguments:&a9];

    v13 = *(a1 + 96);
    v14 = _NRCopyLogObjectForNRUUID();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v16 = *(a1 + 96);
      v17 = _NRCopyLogObjectForNRUUID();
      _NRLogWithArgs();
    }

    sub_1000059A8(*(a1 + 96), 1009, 0, v12);
    *(a1 + 16) = 0;
    if (*(a1 + 15))
    {
      if (*(a1 + 20) == 1)
      {
        *(a1 + 20) = 0;
      }

      sub_1000EF670(a1, 0, 1, 0, 0, 0);
      sub_1000EF7A0(a1, 0);
      *(a1 + 440) = nr_absolute_time();
    }

    else
    {
      v18 = *(a1 + 96);
      v19 = _NRCopyLogObjectForNRUUID();
      v20 = _NRLogIsLevelEnabled();

      if (v20)
      {
        v21 = *(a1 + 96);
        v22 = _NRCopyLogObjectForNRUUID();
        _NRLogWithArgs();
      }
    }
  }
}

void sub_1000F2698(uint64_t a1)
{
  v1 = sub_1000F1BC0(*(a1 + 32), 1);
  if (v1)
  {
    v3 = v1;
    v2 = [(dispatch_queue_t *)v1 state]== 255;
    v1 = v3;
    if (!v2)
    {
      if ([(dispatch_queue_t *)v3 state]== 8)
      {
        [(dispatch_queue_t *)v3 suspend];
      }

      else
      {
        v2 = [(dispatch_queue_t *)v3 state]== 9;
        v1 = v3;
        if (v2)
        {
          goto LABEL_8;
        }

        [(dispatch_queue_t *)v3 setSuspendWhenReady:1];
      }

      v1 = v3;
    }
  }

LABEL_8:
}

void sub_1000F2BE0(uint64_t a1, char a2)
{
  if (!a1)
  {
    return;
  }

  dispatch_assert_queue_V2(*(a1 + 136));
  if (*(a1 + 45) != 1)
  {
    return;
  }

  v4 = objc_alloc_init(NRLinkDirectorRequest);
  v6 = v4;
  if (!v4)
  {
    sub_1000EAA20(a1, 0);
    v5 = 0;
    if ((a2 & 1) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v4->_type = 1;
  v4->_requiredLinkType = 1;
  *&v4->_attemptImmediately = 257;
  sub_1000EAA20(a1, v4);
  v5 = v6;
  if ((a2 & 1) != 0 && !v6->_complete)
  {
LABEL_6:
    sub_1000ECEAC(a1, v6);
    v5 = v6;
  }

LABEL_7:
}

void sub_1000F2CB0(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    if (*(v2 + 26))
    {
      *(v2 + 26) = 0;
      return;
    }

    v3 = *(v2 + 96);
  }

  v4 = _NRCopyLogObjectForNRUUID();
  IsLevelEnabled = _NRLogIsLevelEnabled();

  if (IsLevelEnabled)
  {
    v6 = *(a1 + 32);
    if (v6)
    {
      v7 = *(v6 + 96);
    }

    v8 = _NRCopyLogObjectForNRUUID();
    _NRLogWithArgs();
  }
}

void sub_1000F31AC(uint64_t a1)
{
  if (*(a1 + 40) == 1)
  {
    v1 = *(a1 + 32);
    if (v1)
    {
      if (*(v1 + 28))
      {
        return;
      }

      v2 = *(v1 + 640);
      if (v2)
      {
        v2[4] |= 8u;
      }
    }

    else
    {
      v2 = 0;
    }
  }
}

void sub_1000F35C8(uint64_t a1)
{
  if (!a1)
  {
    return;
  }

  dispatch_assert_queue_V2(*(a1 + 136));
  objc_opt_self();
  if (qword_1002290C0 != -1)
  {
    dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
  }

  v2 = qword_1002290B8;
  if (v2)
  {
    v3 = v2[8];

    if (v3 == 1)
    {
      v4 = *(a1 + 96);
      v5 = _NRCopyLogObjectForNRUUID();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      if (!IsLevelEnabled)
      {
        return;
      }

      v7 = *(a1 + 96);
      v28 = _NRCopyLogObjectForNRUUID();
LABEL_19:
      _NRLogWithArgs();

      return;
    }
  }

  if (*(a1 + 31) != 1)
  {
    v17 = *(a1 + 96);
    v18 = _NRCopyLogObjectForNRUUID();
    v19 = _NRLogIsLevelEnabled();

    if (!v19)
    {
      return;
    }

    v20 = *(a1 + 96);
    v28 = _NRCopyLogObjectForNRUUID();
    v21 = *(a1 + 31);
    v22 = *(a1 + 32);

    goto LABEL_19;
  }

  dispatch_assert_queue_V2(*(a1 + 136));
  v8 = sub_100163A30(NRDLocalDevice, *(a1 + 96));
  v9 = v8;
  if (v8)
  {
    v10 = *(v8 + 144);
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;
  v12 = [v11 getDefaultLinkSubtypeForLinkType:4];

  v13 = sub_1000EA2C8(a1, 4, v12);
  if (v13)
  {
    *(a1 + 256) = nr_continuous_time();
    [v13 start];
    v14 = objc_alloc_init(NRLinkDirectorRequest);
    v16 = v14;
    if (v14)
    {
      v14->_type = 8;
      v14->_allowsSuspendedLink = 0;
      v14->_requiredLinkType = 1;
    }

    newValue[0] = _NSConcreteStackBlock;
    newValue[1] = 3221225472;
    newValue[2] = sub_1000F38BC;
    newValue[3] = &unk_1001FD3C8;
    newValue[4] = a1;
    if (v14)
    {
      objc_setProperty_nonatomic_copy(v14, v15, newValue, 48);
    }

    sub_1000EAA20(a1, v16);
  }

  else
  {
    v23 = *(a1 + 96);
    v24 = _NRCopyLogObjectForNRUUID();
    v25 = _NRLogIsLevelEnabled();

    if (v25)
    {
      v26 = *(a1 + 96);
      v27 = _NRCopyLogObjectForNRUUID();
      _NRLogWithArgs();
    }
  }
}

void sub_1000F38BC(uint64_t a1)
{
  v1 = sub_1000F1BC0(*(a1 + 32), 4);
  if (([(dispatch_queue_t *)v1 ikeClassDEstablished]& 1) != 0 || [(dispatch_queue_t *)v1 ikeClassCEstablished])
  {
    [(dispatch_queue_t *)v1 suspend];
  }

  else
  {
    [(dispatch_queue_t *)v1 cancelWithReason:@"BT reconnected"];
  }
}

void sub_1000F4104(uint64_t a1)
{
  if (a1)
  {
    dispatch_assert_queue_V2(*(a1 + 136));
    if ([*(a1 + 200) count])
    {
      v2 = xpc_dictionary_create(0, 0, 0);
      if (!v2)
      {
        v9 = sub_1000E83DC();
        IsLevelEnabled = _NRLogIsLevelEnabled();

        if (IsLevelEnabled)
        {
          v11 = sub_1000E83DC();
          _NRLogWithArgs();
        }

        _os_log_pack_size();
        __chkstk_darwin();
        v12 = *__error();
        v13 = _os_log_pack_fill();
        sub_1000F4320(v13, "nr_xpc_dictionary_create");
        sub_1000E83DC();
        _NRLogAbortWithPack();
      }

      v3 = v2;
      sub_1000F4354(a1, v2);

      v16 = 0u;
      v17 = 0u;
      v14 = 0u;
      v15 = 0u;
      v4 = *(a1 + 200);
      v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v5)
      {
        v6 = v5;
        v7 = *v15;
        do
        {
          for (i = 0; i != v6; i = i + 1)
          {
            if (*v15 != v7)
            {
              objc_enumerationMutation(v4);
            }

            xpc_connection_send_message(*(*(&v14 + 1) + 8 * i), v3);
          }

          v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
        }

        while (v6);
      }
    }
  }
}

double sub_1000F4320(uint64_t a1, uint64_t a2)
{
  *&result = 136446978;
  *a1 = 136446978;
  *(a1 + 4) = a2;
  *(a1 + 12) = 2048;
  *(a1 + 14) = 0;
  *(a1 + 22) = 2048;
  *(a1 + 24) = 0;
  *(a1 + 32) = 1024;
  *(a1 + 34) = 0;
  return result;
}

void *sub_1000F4354(uint64_t a1, void *a2)
{
  v3 = a2;
  dispatch_assert_queue_V2(*(a1 + 136));
  v4 = *(a1 + 27);
  v5 = *(a1 + 28);
  v6 = *(a1 + 29);
  v7 = *(a1 + 88);
  v110 = *(a1 + 64);
  dispatch_assert_queue_V2(*(a1 + 136));
  v8 = *(a1 + 160);
  v111 = v3;
  v109 = v6;
  if ([v8 state] == 8)
  {
    v9 = [v8 type];
    v10 = [v8 subtype];
    v11 = [v8 ikeClassCEstablished];
    v12 = v11;
    if ((v9 - 1) < 2)
    {
      goto LABEL_90;
    }

    if (v9 == 4)
    {
      v107 = 0;
      v114 = 0;
      v13 = 1;
      goto LABEL_15;
    }

    if (v9 == 5)
    {
LABEL_90:
      if (*(a1 + 488) && *(a1 + 512))
      {
        v107 = NEVirtualInterfaceCopyName();
      }

      else
      {
        v107 = 0;
      }

      v13 = 0;
      v114 = 1;
    }

    else
    {
      v112 = v9;
      v14 = v11;
      v15 = v5;
      v16 = *(a1 + 96);
      v17 = _NRCopyLogObjectForNRUUID();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      if (IsLevelEnabled)
      {
        v19 = *(a1 + 96);
        v20 = _NRCopyLogObjectForNRUUID();
        v99 = v8;
        _NRLogWithArgs();
      }

      v107 = 0;
      v114 = 0;
      v13 = 0;
      v5 = v15;
      v12 = v14;
      v9 = v112;
    }
  }

  else
  {
    v9 = 0;
    v10 = 0;
    v107 = 0;
    v12 = 0;
    v114 = 0;
    v13 = 0;
  }

LABEL_15:
  v21 = v5 & v4;
  v22 = sub_1000F1BC0(a1, 4);

  v105 = v22;
  if (v22 && [(dispatch_queue_t *)v22 state]== 8)
  {
    v13 = 1;
  }

  v23 = v10;
  v24 = v114;
  v106 = v13;
  if (!v114)
  {
    v7 = 0;
LABEL_38:
    v104 = v21;
    v29 = v110;
    goto LABEL_39;
  }

  objc_opt_self();
  if (qword_1002290C0 != -1)
  {
    dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
  }

  v25 = qword_1002290B8;
  if (!v25 || v25[8] != 1)
  {
    if (qword_100229238 == -1)
    {
      if (byte_100229230)
      {
        goto LABEL_27;
      }
    }

    else
    {
      v30 = v7;
      v31 = v25;
      dispatch_once(&qword_100229238, &stru_1001FC340);
      v25 = v31;
      v7 = v30;
      v24 = v114;
      if (byte_100229230)
      {
LABEL_27:
        v26 = v7;
        v27 = *(a1 + 49);

        v28 = v27 == 1;
        v7 = v26;
        v24 = v114;
        if (v28)
        {
          goto LABEL_29;
        }

        goto LABEL_37;
      }
    }

LABEL_37:
    v23 = v10;
    goto LABEL_38;
  }

LABEL_29:
  if (qword_100229238 != -1)
  {
    dispatch_once(&qword_100229238, &stru_1001FC340);
  }

  v29 = v110;
  if (byte_100229230 == 1)
  {
    dispatch_assert_queue_V2(*(a1 + 136));
    v12 = [*(a1 + 160) ikeClassCEstablished];
    v23 = 0;
    v104 = 0;
    v9 = 1;
  }

  else
  {
    v104 = 0;
    v12 = 1;
    v23 = 101;
    v9 = 2;
  }

  v5 = 1;
LABEL_39:
  *(a1 + 92) = v7;
  *(a1 + 65) = v29;
  v32 = objc_alloc_init(NRDeviceInfo);
  v33 = [[NRDeviceIdentifier alloc] initWithUUID:*(a1 + 96)];
  [v32 setNrDeviceIdentifier:v33];

  [v32 setConnectedLinkType:v9];
  v115 = v32;
  [v32 setConnectedLinkSubtype:v23];
  v34 = *(a1 + 160);
  v108 = v12;
  v113 = v9;
  if (v34)
  {
    v35 = [v34 hasCompanionDatapath];
    v36 = *(a1 + 160);
    v37 = v111;
    v38 = v7;
    if (v35)
    {
      [v36 virtualInterface];
      v39 = NEVirtualInterfaceCopyName();
    }

    else
    {
      v39 = [v36 localInterfaceName];
    }

    v41 = v39;
    v40 = v115;
    [v115 setConnectedInterfaceName:{v39, v99}];

    v34 = *(a1 + 160);
  }

  else
  {
    v38 = v7;
    v40 = v32;
    v37 = v111;
  }

  v42 = [v34 localOuterEndpoint];
  [v40 setLocalEndpoint:v42];

  v43 = [*(a1 + 160) remoteOuterEndpoint];
  [v40 setRemoteEndpoint:v43];

  v44 = sub_100163B2C(NRDLocalDevice, *(a1 + 96), 0);
  v45 = v44;
  if (*(a1 + 46) == 1)
  {
    v46 = v44;
    if (v44)
    {
      v46 = *(v44 + 144);
    }

    else
    {
      v45 = 0;
    }

    v47 = v46;
    v48 = [v47 proxyProviderType];

    v28 = v48 == 3;
    v24 = v114;
    v49 = v114 ^ 1;
    if (!v28)
    {
      v49 = 1;
    }

    if ((v49 & 1) == 0)
    {
      v103 = v45;
      objc_opt_self();
      if (qword_1002290C0 != -1)
      {
        dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
      }

      v50 = qword_1002290B8;
      v51 = v50;
      if (!v50 || !v50[20])
      {

LABEL_85:
        v45 = v103;
        goto LABEL_86;
      }

      port = nw_http_proxy_server_get_port();

      if (port)
      {
        v124 = 0;
        v125 = 0;
        v53 = [*(a1 + 160) localInterfaceName];

        if ([v125 count] || objc_msgSend(v124, "count"))
        {
          v54 = objc_alloc_init(NRDeviceProxyInfo);
          [v115 setProxyInfo:v54];

          v55 = v45;
          v102 = a1;
          v101 = v5;
          v100 = v23;
          if (v45)
          {
            v55 = v45[18];
          }

          v56 = v55;
          v57 = [v56 proxyProviderType];
          v58 = [v115 proxyInfo];
          [v58 setProxyProviderType:v57];

          v59 = objc_alloc_init(NSMutableArray);
          v120 = 0u;
          v121 = 0u;
          v122 = 0u;
          v123 = 0u;
          v60 = v125;
          v61 = [v60 countByEnumeratingWithState:&v120 objects:v127 count:16];
          if (v61)
          {
            v62 = v61;
            v63 = *v121;
            do
            {
              for (i = 0; i != v62; i = i + 1)
              {
                if (*v121 != v63)
                {
                  objc_enumerationMutation(v60);
                }

                v65 = [NSString stringWithFormat:@"%@://%@:%u", @"https", *(*(&v120 + 1) + 8 * i), port];
                [v59 addObject:v65];
              }

              v62 = [v60 countByEnumeratingWithState:&v120 objects:v127 count:16];
            }

            while (v62);
          }

          v118 = 0u;
          v119 = 0u;
          v116 = 0u;
          v117 = 0u;
          v66 = v124;
          v67 = [v66 countByEnumeratingWithState:&v116 objects:v126 count:16];
          if (v67)
          {
            v68 = v67;
            v69 = *v117;
            do
            {
              for (j = 0; j != v68; j = j + 1)
              {
                if (*v117 != v69)
                {
                  objc_enumerationMutation(v66);
                }

                v71 = [NSString stringWithFormat:@"%@://[%@]:%u", @"https", *(*(&v116 + 1) + 8 * j), port];
                [v59 addObject:v71];
              }

              v68 = [v66 countByEnumeratingWithState:&v116 objects:v126 count:16];
            }

            while (v68);
          }

          v72 = v115;
          v73 = [v115 proxyInfo];
          [v73 setHttpConnectURLs:v59];

          a1 = v102;
          dispatch_assert_queue_V2(*(v102 + 136));
          v74 = *(v102 + 104);
          LOBYTE(v23) = v100;
          if (!v74)
          {
            v75 = +[NSUUID UUID];
            v76 = [v75 UUIDString];
            v77 = *(v102 + 104);
            *(v102 + 104) = v76;

            SharedWebCredentialPassword = SecCreateSharedWebCredentialPassword();
            v79 = *(v102 + 112);
            *(v102 + 112) = SharedWebCredentialPassword;

            v80 = qword_100229138;
            if (!qword_100229138)
            {
              v81 = objc_alloc_init(NSMutableDictionary);
              v82 = qword_100229138;
              qword_100229138 = v81;

              v80 = qword_100229138;
            }

            [v80 setObject:*(v102 + 112) forKeyedSubscript:*(v102 + 104)];
            v74 = *(v102 + 104);
          }

          v83 = [v115 proxyInfo];
          [v83 setHttpConnectUserName:v74];

          v84 = [qword_100229138 objectForKeyedSubscript:*(v102 + 104)];
          v85 = [v115 proxyInfo];
          [v85 setHttpConnectPassword:v84];

          dispatch_assert_queue_V2(*(v102 + 136));
          v86 = *(v102 + 120);
          if (!v86)
          {
            v87 = +[NSUUID UUID];
            v129[0] = 0;
            v129[1] = 0;
            [v87 getUUIDBytes:v129];
            v88 = [[NSData alloc] initWithBytes:v129 length:16];
            v89 = *(v102 + 120);
            *(v102 + 120) = v88;

            arc4random_buf(__buf, 0x20uLL);
            v90 = [NSData _newZeroingDataWithBytes:__buf length:32];
            v91 = *(v102 + 128);
            *(v102 + 128) = v90;

            cc_clear();
            v92 = qword_100229140;
            if (!qword_100229140)
            {
              v93 = objc_alloc_init(NSMutableDictionary);
              v94 = qword_100229140;
              qword_100229140 = v93;

              v92 = qword_100229140;
            }

            [v92 setObject:*(v102 + 128) forKeyedSubscript:*(v102 + 120)];

            v86 = *(v102 + 120);
            v72 = v115;
          }

          v95 = [v72 proxyInfo];
          [v95 setHttpConnectPSKIdentity:v86];

          v96 = [qword_100229140 objectForKeyedSubscript:*(v102 + 120)];
          v97 = [v72 proxyInfo];
          [v97 setHttpConnectPSK:v96];

          v37 = v111;
          v5 = v101;
          v24 = v114;
          v29 = v110;
        }

        goto LABEL_85;
      }
    }
  }

LABEL_86:
  sub_1000F4D84(NRDDeviceConductor, *(a1 + 96), v5, v24, v106, v104, v108, v109, v113, v23, v107, v38, v29, v115, v37);

  return v37;
}

void *sub_1000F4D84(uint64_t a1, void *a2, BOOL a3, BOOL a4, BOOL a5, BOOL a6, BOOL a7, BOOL a8, unsigned __int8 a9, unsigned __int8 a10, void *a11, unsigned int a12, BOOL a13, void *a14, void *a15)
{
  v19 = a2;
  v57 = a11;
  v20 = a14;
  v21 = a15;
  objc_opt_self();
  v58 = v19;
  v22 = sub_100163B2C(NRDLocalDevice, v19, 0);
  v23 = v21;
  v24 = v23;
  v56 = v20;
  if (v22)
  {
    xpc_dictionary_set_BOOL(v23, nrXPCKeyDeviceMonitorStatusIsRegistered, *(v22 + 48) & 1);
    xpc_dictionary_set_BOOL(v24, nrXPCKeyDeviceMonitorStatusIsEnabled, (*(v22 + 48) & 2) != 0);
    if (*(v22 + 12))
    {
      v25 = 0;
      v26 = 0;
    }

    else
    {
      v59 = 0uLL;
      sub_100167D5C(v22, &v59);
      objc_opt_self();
      if (WORD6(v59))
      {
        v27 = WORD5(v59) == 0;
      }

      else
      {
        v27 = 1;
      }

      v25 = !v27;
      if (*(v22 + 12))
      {
        v26 = 0;
      }

      else
      {
        v59 = 0uLL;
        sub_1001727AC(v22, &v59);
        objc_opt_self();
        if (WORD6(v59))
        {
          v28 = WORD5(v59) == 0;
        }

        else
        {
          v28 = 1;
        }

        v26 = !v28;
      }
    }

    v29 = *(v22 + 48);
    v30 = ((v29 & 8) != 0) | v25;
    if ((v29 & 1) != 0 && (((v29 & 2) != 0) & v30 & (((v29 & 8) != 0) | v26)) != 0)
    {
      v31 = a10;
      v32 = a9;
      v33 = v57;
      v34 = a3;
      goto LABEL_27;
    }
  }

  else
  {
    xpc_dictionary_set_BOOL(v23, nrXPCKeyDeviceMonitorStatusIsRegistered, 0);
    xpc_dictionary_set_BOOL(v24, nrXPCKeyDeviceMonitorStatusIsEnabled, 0);
  }

  v35 = _NRCopyLogObjectForNRUUID();
  IsLevelEnabled = _NRLogIsLevelEnabled();

  if (IsLevelEnabled)
  {
    v37 = _NRCopyLogObjectForNRUUID();
    if (v22)
    {
      v38 = *(v22 + 48);
    }

    _NRLogWithArgs();
  }

  v32 = 0;
  v31 = 0;
  v33 = 0;
  a7 = 0;
  a6 = 0;
  a5 = 0;
  a4 = 0;
  v34 = 0;
LABEL_27:
  xpc_dictionary_set_BOOL(v24, nrXPCKeyDeviceMonitorStatusIsNearby, v34);
  xpc_dictionary_set_BOOL(v24, nrXPCKeyDeviceMonitorStatusIsConnected, a4);
  xpc_dictionary_set_BOOL(v24, nrXPCKeyDeviceMonitorStatusIsCloudConnected, a5);
  xpc_dictionary_set_BOOL(v24, nrXPCKeyDeviceMonitorStatusIsAsleep, a6);
  xpc_dictionary_set_BOOL(v24, nrXPCKeyDeviceMonitorStatusIsClassCConnected, a7);
  xpc_dictionary_set_BOOL(v24, nrXPCKeyDeviceMonitorStatusHasUnpairedBluetooth, a8);
  xpc_dictionary_set_uint64(v24, nrXPCKeyDeviceMonitorStatusLinkType, v32);
  xpc_dictionary_set_uint64(v24, nrXPCKeyDeviceMonitorStatusLinkSubtype, v31);
  if (v33)
  {
    xpc_dictionary_set_string(v24, nrXPCKeyDeviceMonitorStatusProxySvcIntfName, [v33 UTF8String]);
  }

  xpc_dictionary_set_uint64(v24, nrXPCKeyDeviceMonitorStatusThermalPressureLevel, a12);
  xpc_dictionary_set_BOOL(v24, nrXPCKeyDeviceMonitorStatusPluggedIn, a13);
  if (v56)
  {
    v39 = nrXPCKeyDeviceInfo;
    v40 = v24;
    v41 = v56;
    if (v39)
    {
      *&v59 = 0;
      v42 = [NSKeyedArchiver archivedDataWithRootObject:v41 requiringSecureCoding:1 error:&v59];
      v43 = v59;
      if (!v43 && [v42 length])
      {
        xpc_dictionary_set_data(v40, v39, [v42 bytes], objc_msgSend(v42, "length"));

        goto LABEL_34;
      }

      v48 = sub_1000E83DC();
      v49 = _NRLogIsLevelEnabled();

      if (v49)
      {
        v50 = sub_1000E83DC();
        _NRLogWithArgs();
      }
    }

    else
    {
      v45 = sub_1000E83DC();
      v46 = _NRLogIsLevelEnabled();

      if (v46)
      {
        v47 = sub_1000E83DC();
        _NRLogWithArgs();
      }
    }

    v51 = sub_1000E83DC();
    v52 = _NRLogIsLevelEnabled();

    if (v52)
    {
      v53 = sub_1000E83DC();
      _NRLogWithArgs();
    }
  }

LABEL_34:

  return v24;
}

void sub_1000F54EC(uint64_t a1)
{
  v3 = *(a1 + 32);
  if (v3 && *(v3 + 14) == 1 && *(a1 + 40) == *(v3 + 248))
  {
    v4 = a1;
    v5 = sub_1000F1BC0(v3, 1);
    v15 = v5;
    if (v5 && ([(dispatch_queue_t *)v5 ikeClassDEstablished]& 1) != 0)
    {
      v6 = *(v4 + 32);
      if (v6)
      {
        v7 = *(v6 + 96);
      }

      v8 = _NRCopyLogObjectForNRUUID();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      if (IsLevelEnabled)
      {
        v10 = *(v4 + 32);
        if (v10)
        {
          v11 = *(v10 + 96);
        }

        v12 = _NRCopyLogObjectForNRUUID();
        _NRLogWithArgs();
      }
    }

    else
    {
      v13 = *(v4 + 32);
      if (v13)
      {
        v14 = *(v13 + 224);
      }

      else
      {
        v14 = 0;
      }

      sub_10003F8D8(v14);
    }
  }
}

uint64_t sub_1000F5768(uint64_t a1, void *a2)
{
  v4 = a2;
  v5 = v4;
  if (a1)
  {
    v18 = v4;
    v4 = [v4 ikeClassDEstablished];
    v5 = v18;
    if (v4)
    {
      v4 = [v18 type];
      v5 = v18;
      if (v4 != 4)
      {
        if (*(a1 + 28) == 1 && *(a1 + 27) == 1)
        {
          v6 = *(a1 + 96);
          v7 = _NRCopyLogObjectForNRUUID();
          IsLevelEnabled = _NRLogIsLevelEnabled();

          if (IsLevelEnabled)
          {
            v9 = *(a1 + 96);
            v10 = _NRCopyLogObjectForNRUUID();
            _NRLogWithArgs();
          }

          *(a1 + 66) = 1;
          goto LABEL_27;
        }

        *(a1 + 66) = 0;
        v11 = sub_10002A50C([NRLinkDirectorMessage alloc], *(a1 + 96));
        v12 = v11;
        if (v11)
        {
          objc_storeStrong(v11 + 3, a2);
        }

        objc_opt_self();
        if (qword_1002290C0 != -1)
        {
          dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
        }

        v13 = qword_1002290B8;
        v14 = v13;
        if (v13)
        {
          if (!v12)
          {
LABEL_26:

            sub_10002C0E8(v12);
LABEL_27:
            v5 = v18;
            goto LABEL_28;
          }

          v15 = v13[6];
          if (v15)
          {
            if (v15 >= 0xB)
            {
              if (v15 >= 0x15)
              {
                if (v15 >= 0x1F)
                {
                  if (v15 >= 0x29)
                  {
                    LOBYTE(v15) = 50;
                  }

                  else
                  {
                    LOBYTE(v15) = 40;
                  }
                }

                else
                {
                  LOBYTE(v15) = 30;
                }
              }

              else
              {
                LOBYTE(v15) = 20;
              }
            }

            else
            {
              LOBYTE(v15) = 10;
            }
          }
        }

        else
        {
          if (!v12)
          {
            goto LABEL_26;
          }

          LOBYTE(v15) = 0;
        }

        v19 = v15;
        v16 = [[NSData alloc] initWithBytes:&v19 length:1];
        sub_10002AB38(v12, 14, v16);

        goto LABEL_26;
      }
    }
  }

LABEL_28:

  return _objc_release_x1(v4, v5);
}

uint64_t sub_1000F5974(uint64_t a1, void *a2)
{
  v4 = a2;
  v5 = v4;
  if (a1)
  {
    v18 = v4;
    v4 = [v4 ikeClassDEstablished];
    v5 = v18;
    if (v4)
    {
      v4 = [v18 type];
      v5 = v18;
      if (v4 != 4)
      {
        if (*(a1 + 28) == 1 && *(a1 + 27) == 1)
        {
          v6 = *(a1 + 96);
          v7 = _NRCopyLogObjectForNRUUID();
          IsLevelEnabled = _NRLogIsLevelEnabled();

          if (IsLevelEnabled)
          {
            v9 = *(a1 + 96);
            v10 = _NRCopyLogObjectForNRUUID();
            _NRLogWithArgs();
          }

          *(a1 + 67) = 1;
          goto LABEL_17;
        }

        *(a1 + 67) = 0;
        v11 = sub_10002A50C([NRLinkDirectorMessage alloc], *(a1 + 96));
        v12 = v11;
        if (v11)
        {
          objc_storeStrong(v11 + 3, a2);
        }

        objc_opt_self();
        if (qword_1002290C0 != -1)
        {
          dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
        }

        v13 = qword_1002290B8;
        v14 = v13;
        if (v13)
        {
          v15 = *(v13 + 11);
          if (!v12)
          {
LABEL_16:

            sub_10002C0E8(v12);
LABEL_17:
            v5 = v18;
            goto LABEL_18;
          }
        }

        else
        {
          v15 = 0;
          if (!v12)
          {
            goto LABEL_16;
          }
        }

        v19 = v15 & 1;
        v16 = [[NSData alloc] initWithBytes:&v19 length:1];
        sub_10002AB38(v12, 22, v16);

        goto LABEL_16;
      }
    }
  }

LABEL_18:

  return _objc_release_x1(v4, v5);
}

uint64_t sub_1000F5B40(uint64_t a1, void *a2)
{
  v4 = a2;
  v5 = v4;
  if (a1)
  {
    if (v4)
    {
      if (*(a1 + 536))
      {
        v22 = v4;
        v4 = [v4 ikeClassDEstablished];
        v5 = v22;
        if (v4)
        {
          v4 = [v22 state];
          v5 = v22;
          if (v4 != 255)
          {
            v4 = [v22 type];
            v5 = v22;
            if (v4 != 4)
            {
              if (*(a1 + 27) == 1 && *(a1 + 28) == 1)
              {
                v6 = *(a1 + 96);
                v7 = _NRCopyLogObjectForNRUUID();
                IsLevelEnabled = _NRLogIsLevelEnabled();

                v5 = v22;
                if (!IsLevelEnabled)
                {
                  goto LABEL_20;
                }

                v9 = *(a1 + 96);
                v10 = _NRCopyLogObjectForNRUUID();
                _NRLogWithArgs();
              }

              else
              {
                v10 = sub_10001EEBC(*(a1 + 536));
                if (v10)
                {
                  v11 = *(a1 + 536);
                  if (v11)
                  {
                    v11 = *(v11 + 32);
                  }

                  *(a1 + 544) = v11;
                  v12 = sub_10002A50C([NRLinkDirectorMessage alloc], *(a1 + 96));
                  v13 = v12;
                  if (v12)
                  {
                    objc_storeStrong(v12 + 3, a2);
                  }

                  sub_10002AB38(v13, 12, v10);
                  sub_10002C0E8(v13);
                  v14 = *(a1 + 96);
                  v15 = _NRCopyLogObjectForNRUUID();
                  v16 = _NRLogIsLevelEnabled();

                  if (v16)
                  {
                    v17 = *(a1 + 96);
                    v18 = _NRCopyLogObjectForNRUUID();
                    v21 = *(a1 + 544);
                    v20 = *(a1 + 536);
                    _NRLogWithArgs();
                  }
                }
              }

              v5 = v22;
            }
          }
        }
      }
    }
  }

LABEL_20:

  return _objc_release_x1(v4, v5);
}

void sub_1000F91EC(uint64_t a1, void *a2, int a3)
{
  v9 = a2;
  if (a1)
  {
    dispatch_assert_queue_V2(*(a1 + 136));
    if (*(a1 + 21) != 1 || a3 != 0)
    {
      v7 = sub_10002A50C([NRLinkDirectorMessage alloc], *(a1 + 96));
      v8 = v7;
      if (v7)
      {
        objc_storeStrong(v7 + 3, a2);
        sub_10002AB38(v8, 1, 0);
      }

      sub_10002C0E8(v8);
      *(a1 + 21) = 1;
    }
  }
}

void sub_1000F92A8(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    dispatch_assert_queue_V2(*(v2 + 136));
    objc_opt_self();
    if (qword_1002290C0 != -1)
    {
      dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
    }

    v3 = qword_1002290B8;
    v4 = v3;
    if (v3)
    {
      v5 = *(v3 + 6);
    }

    else
    {
      v5 = 0;
    }

    v6 = v5;

    if (v6 && (v7 = v6[13]) != 0)
    {
      v8 = *(v7 + 12);
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v9 = *(a1 + 40);
  if (!v9)
  {
    v11 = 0;
    v54 = *(a1 + 32);
    if (!v54)
    {
      goto LABEL_97;
    }

    goto LABEL_59;
  }

  v10 = sub_10002BDA4(v9, v8, 0);
  v11 = v10;
  if (v10 && [v10 count])
  {
    v12 = sub_100029538(*(a1 + 40));
    v13 = *(a1 + 32);
    if (v13)
    {
      if (v12 == *(v13 + 360))
      {
LABEL_14:
        v14 = [v11 firstObject];
        v15 = *(a1 + 32);
        if (v15)
        {
          dispatch_assert_queue_V2(*(v15 + 136));
          objc_opt_self();
          if (qword_1002290C0 != -1)
          {
            dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
          }

          v16 = qword_1002290B8;
          v17 = v16;
          if (v16)
          {
            v18 = *(v16 + 6);
          }

          else
          {
            v18 = 0;
          }

          v19 = v18;
        }

        else
        {
          v19 = 0;
        }

        v251 = v14;
        v20 = [NSArray arrayWithObjects:&v251 count:1];
        v21 = *(a1 + 32);
        if (v21)
        {
          v22 = *(v21 + 96);
        }

        else
        {
          v22 = 0;
        }

        sub_10017E570(v19, v20, v22);

        v23 = [v14 addressData];
        v24 = *(a1 + 32);
        if (v24)
        {
          v25 = *(v24 + 96);
        }

        else
        {
          v25 = 0;
        }

        sub_1000B7458(v25, @"WiFiEndpointAddressData", v23);
        v26 = *(a1 + 32);
        if (v26)
        {
          dispatch_assert_queue_V2(*(v26 + 136));
          objc_opt_self();
          if (qword_1002290C0 != -1)
          {
            dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
          }

          v27 = qword_1002290B8;
          v28 = v27;
          if (v27)
          {
            v29 = *(v27 + 6);
          }

          else
          {
            v29 = 0;
          }

          v30 = v29;

          v31 = *(a1 + 32);
          if (v31)
          {
            v31 = v31[12];
          }
        }

        else
        {
          v30 = 0;
          v31 = 0;
        }

        v32 = v31;
        v33 = sub_10017E984(v30, v32);
        sub_1000EC910(v26, 1010, @"received Wi-Fi address update: %@", v34, v35, v36, v37, v38, v33);

        v39 = *(a1 + 40);
        if (v39)
        {
          v40 = sub_10002B210(v39, 4);
          v41 = [v40 firstObject];

          if (v41)
          {
            v42 = [v41 length];
            v43 = *(a1 + 32);
            if (v42)
            {
              if (v43)
              {
                dispatch_assert_queue_V2(*(v43 + 136));
                objc_opt_self();
                if (qword_1002290C0 != -1)
                {
                  dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
                }

                v44 = qword_1002290B8;
                v45 = v44;
                if (v44)
                {
                  v46 = *(v44 + 6);
                }

                else
                {
                  v46 = 0;
                }

                v47 = v46;
              }

              else
              {
                v47 = 0;
              }

              sub_10017E36C(v47, v41);
            }

            else
            {
              if (v43)
              {
                dispatch_assert_queue_V2(*(v43 + 136));
                objc_opt_self();
                if (qword_1002290C0 != -1)
                {
                  dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
                }

                v55 = qword_1002290B8;
                v56 = v55;
                if (v55)
                {
                  v57 = *(v55 + 6);
                }

                else
                {
                  v57 = 0;
                }

                v47 = v57;
              }

              else
              {
                v47 = 0;
              }

              sub_10017E36C(v47, 0);
            }

            v58 = *(a1 + 32);
            if (v58)
            {
              v59 = *(v58 + 96);
            }

            else
            {
              v59 = 0;
            }

            sub_1000B7458(v59, @"WiFiSignature", v41);
          }
        }

        else
        {
          v41 = 0;
        }

        goto LABEL_58;
      }

      v48 = *(v13 + 96);
    }

    else if (!v12)
    {
      goto LABEL_14;
    }

    v49 = _NRCopyLogObjectForNRUUID();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v51 = *(a1 + 32);
      if (v51)
      {
        v51 = v51[12];
      }

      v52 = v51;
      v53 = _NRCopyLogObjectForNRUUID();
      v223 = 6712;
      v224 = *(a1 + 40);
      v221 = "";
      v222 = "[NRDDeviceConductor linkDidReceiveData:data:]_block_invoke";
      _NRLogWithArgs();

      v54 = *(a1 + 32);
      if (!v54)
      {
        goto LABEL_97;
      }

      goto LABEL_59;
    }
  }

LABEL_58:
  v54 = *(a1 + 32);
  if (!v54)
  {
    goto LABEL_97;
  }

LABEL_59:
  if (*(v54 + 10) != 1)
  {
    goto LABEL_97;
  }

  v60 = sub_100029538(*(a1 + 40));
  v61 = *(a1 + 32);
  if (v61)
  {
    if (v60 != *(v61 + 384))
    {
      goto LABEL_97;
    }

    dispatch_assert_queue_V2(*(v61 + 136));
    objc_opt_self();
    if (qword_1002290C0 != -1)
    {
      dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
    }

    v62 = qword_1002290B8;
    v63 = v62;
    if (v62)
    {
      v64 = *(v62 + 6);
    }

    else
    {
      v64 = 0;
    }

    v65 = v64;

    if (v65 && (v66 = v65[14]) != 0)
    {
      v67 = *(v66 + 12);
    }

    else
    {
      v67 = 0;
    }
  }

  else
  {
    if (v60)
    {
      goto LABEL_97;
    }

    v65 = 0;
    v67 = 0;
  }

  v68 = *(a1 + 40);
  if (v68)
  {
    v69 = sub_10002B210(v68, 10);
    v70 = [v69 firstObject];

    if (v70 && [v70 length])
    {
      LOBYTE(v228) = 0;
      [v70 getBytes:&v228 length:1];
      if (v228)
      {
        v71 = &__kCFBooleanTrue;
      }

      else
      {
        v71 = &__kCFBooleanFalse;
      }

      if ([v71 BOOLValue])
      {
        v72 = *(a1 + 40);
        if (v72)
        {
          v70 = sub_10002BDA4(v72, v67, 1);
        }

        else
        {
          v70 = 0;
        }

        v73 = [v70 firstObject];
        v74 = *(a1 + 32);
        if (v74)
        {
          dispatch_assert_queue_V2(*(v74 + 136));
          objc_opt_self();
          if (qword_1002290C0 != -1)
          {
            dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
          }

          v75 = qword_1002290B8;
          v76 = v75;
          if (v75)
          {
            v77 = *(v75 + 6);
          }

          else
          {
            v77 = 0;
          }

          v78 = v77;

          v79 = *(a1 + 32);
          if (v79)
          {
            v80 = *(v79 + 96);
          }

          else
          {
            v80 = 0;
          }
        }

        else
        {
          v78 = 0;
          v80 = 0;
        }

        sub_10017EA30(v78, v73, v80);

        v222 = v73;
        sub_1000EC910(*(a1 + 32), 1040, @"%@ received AWDL address update: %@", v81, v82, v83, v84, v85, *(a1 + 32));
      }

      else
      {
        v86 = *(a1 + 32);
        if (v86)
        {
          dispatch_assert_queue_V2(*(v86 + 136));
          objc_opt_self();
          if (qword_1002290C0 != -1)
          {
            dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
          }

          v87 = qword_1002290B8;
          v88 = v87;
          if (v87)
          {
            v89 = *(v87 + 6);
          }

          else
          {
            v89 = 0;
          }

          v70 = v89;

          v90 = *(a1 + 32);
          if (v90)
          {
            v91 = *(v90 + 96);
          }

          else
          {
            v91 = 0;
          }
        }

        else
        {
          v70 = 0;
          v91 = 0;
        }

        sub_10017EA30(v70, 0, v91);
      }
    }

    else
    {
      v71 = 0;
    }
  }

  else
  {
    v71 = 0;
  }

LABEL_97:
  v92 = sub_100029538(*(a1 + 40));
  v93 = *(a1 + 32);
  if (v93)
  {
    if (v92 != *(v93 + 392))
    {
      goto LABEL_139;
    }

LABEL_99:
    v94 = *(a1 + 40);
    if (!v94)
    {
      v96 = 0;
      goto LABEL_138;
    }

    v95 = sub_10002B210(v94, 15);
    v96 = [v95 firstObject];

    if (!v96)
    {
LABEL_138:

      v93 = *(a1 + 32);
      goto LABEL_139;
    }

    v97 = [[NSString alloc] initWithData:v96 encoding:4];
    if (!v97)
    {
LABEL_137:

      goto LABEL_138;
    }

    v99 = a1 + 32;
    v98 = *(a1 + 32);
    v100 = _NRIsAppleInternal();
    v106 = @"<redacted>";
    if (v100)
    {
      v106 = v97;
    }

    v222 = v106;
    sub_1000EC910(v98, 1051, @"%@ received country code update: %@", v101, v102, v103, v104, v105, v98);
    if (!*v99)
    {
      v220 = v97;
      v110 = 0;
      goto LABEL_136;
    }

    dispatch_assert_queue_V2(*(*v99 + 136));
    objc_opt_self();
    if (qword_1002290C0 != -1)
    {
      dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
    }

    v107 = qword_1002290B8;
    v108 = v107;
    if (v107)
    {
      v109 = *(v107 + 6);
    }

    else
    {
      v109 = 0;
    }

    v110 = v109;

    v111 = v97;
    if (!v110)
    {
      goto LABEL_136;
    }

    v112 = v111;
    v113 = v110[3];
    dispatch_assert_queue_V2(v113);

    if (![(__CFString *)v112 compare:@"XZ" options:1])
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

      goto LABEL_136;
    }

    v114 = v110[22];
    v247 = 0;
    v248 = &v247;
    v249 = 0x2020000000;
    v250 = 0;
    v243 = 0;
    v244 = &v243;
    v245 = 0x2020000000;
    v246 = 0;
    v237 = 0;
    v238 = &v237;
    v239 = 0x3032000000;
    v240 = sub_10017AF00;
    v241 = sub_10017AF10;
    v242 = 0;
    v228 = _NSConcreteStackBlock;
    v229 = 3221225472;
    v230 = sub_10017FB74;
    v231 = &unk_1001FD178;
    v227 = v114;
    v232 = v227;
    v234 = &v247;
    v233 = v112;
    v235 = &v237;
    v236 = &v243;
    if (sub_10017AE24(NRLinkManagerWiFi, &v228) || (v248[3] & 1) == 0 && *(v244 + 24) != 1 || v238[5])
    {
      v218 = sub_1001762F4();
      v219 = _NRLogIsLevelEnabled();

      if (!v219)
      {
        goto LABEL_135;
      }

      v117 = sub_1001762F4();
      v223 = 2006;
      v224 = v238[5];
      v221 = "";
      v222 = "[NRLinkManagerWiFi setPeerCountryCodeIfApplicable:]";
      _NRLogWithArgs();
    }

    else if (*(v244 + 24) == 1)
    {
      if (qword_1002294A8 != -1)
      {
        dispatch_once(&qword_1002294A8, &stru_1001FD210);
      }

      v115 = qword_1002294A0;
      v116 = _NRLogIsLevelEnabled();

      if ((v116 & 1) == 0)
      {
        goto LABEL_135;
      }

      if (qword_1002294A8 != -1)
      {
        dispatch_once(&qword_1002294A8, &stru_1001FD210);
      }

      v117 = qword_1002294A0;
      v223 = 2001;
      v221 = "";
      v222 = "[NRLinkManagerWiFi setPeerCountryCodeIfApplicable:]";
      _NRLogWithArgs();
    }

    else
    {
      if (qword_1002294A8 != -1)
      {
        dispatch_once(&qword_1002294A8, &stru_1001FD210);
      }

      v118 = qword_1002294A0;
      v119 = _NRLogIsLevelEnabled();

      if (!v119)
      {
        goto LABEL_135;
      }

      if (qword_1002294A8 != -1)
      {
        dispatch_once(&qword_1002294A8, &stru_1001FD210);
      }

      v117 = qword_1002294A0;
      v223 = 2003;
      v221 = "";
      v222 = "[NRLinkManagerWiFi setPeerCountryCodeIfApplicable:]";
      _NRLogWithArgs();
    }

LABEL_135:
    _Block_object_dispose(&v237, 8);

    _Block_object_dispose(&v243, 8);
    _Block_object_dispose(&v247, 8);

LABEL_136:
    goto LABEL_137;
  }

  if (!v92)
  {
    goto LABEL_99;
  }

LABEL_139:
  if (v93 && *(v93 + 8) == 1)
  {
    LOBYTE(v229) = 0;
    v228 = 0;
    v120 = *(a1 + 40);
    if (v120)
    {
      v121 = sub_10002B210(v120, 13);
      v122 = [v121 firstObject];

      if (v122)
      {
        [v122 getBytes:&v228 length:9];
        if ((v229 & 1) == 0)
        {
          v123 = 0;
          goto LABEL_228;
        }

        v123 = [NSNumber numberWithUnsignedChar:v228];
        v133 = v122;
        if (!v123)
        {
LABEL_225:
          v122 = v133;
          goto LABEL_228;
        }

LABEL_186:
        v158 = sub_100029538(*(a1 + 40));
        v159 = *(a1 + 32);
        if (v159)
        {
          if (v158 == *(v159 + 376))
          {
            goto LABEL_188;
          }

          v185 = *(v159 + 96);
        }

        else if (!v158)
        {
LABEL_188:
          v165 = [v123 BOOLValue];
          v166 = a1 + 32;
          v167 = "disable";
          if (v165)
          {
            v167 = "enable";
          }

          sub_1000EC910(*(a1 + 32), 1021, @"%s", v160, v161, v162, v163, v164, v167);
          if (*v166)
          {
            *(*v166 + 16) = 0;
            v168 = *(a1 + 32);
            if ((v165 & 1) == 0)
            {
              if (!v168)
              {
                v172 = 0;
                goto LABEL_200;
              }

              dispatch_assert_queue_V2(*(v168 + 136));
              objc_opt_self();
              if (qword_1002290C0 != -1)
              {
                dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
              }

              v169 = qword_1002290B8;
              v170 = v169;
              if (v169)
              {
                v171 = *(v169 + 6);
              }

              else
              {
                v171 = 0;
              }

              v172 = v171;

              if (v172)
              {
                v173 = v172[3];
                dispatch_assert_queue_V2(v173);

                v174 = *(v172 + 10) > 0;
                v175 = *(a1 + 32);
                if (!v175)
                {
LABEL_200:

                  v176 = *(a1 + 32);
                  if (v176)
                  {
                    v177 = *(v176 + 96);
                  }

                  v178 = _NRCopyLogObjectForNRUUID();
                  v179 = _NRLogIsLevelEnabled();

                  v168 = *(a1 + 32);
                  if (v179)
                  {
                    if (v168)
                    {
                      v180 = *(v168 + 96);
                    }

                    else
                    {
                      v180 = 0;
                    }

                    v181 = v180;
                    v182 = _NRCopyLogObjectForNRUUID();
                    v183 = *(a1 + 32);
                    if (v183)
                    {
                      v184 = *(v183 + 26);
                    }

                    _NRLogWithArgs();

                    v168 = *(a1 + 32);
                  }

                  goto LABEL_208;
                }
              }

              else
              {
                v174 = 0;
                v175 = *(a1 + 32);
                if (!v175)
                {
                  goto LABEL_200;
                }
              }

              *(v175 + 26) = v174;
              goto LABEL_200;
            }
          }

          else
          {
            v172 = 0;
            v168 = 0;
            if ((v165 & 1) == 0)
            {
              goto LABEL_200;
            }
          }

LABEL_208:
          if (v122)
          {
            sub_1000FEA10(v168, v133);
          }

          else
          {
            sub_1000EF7A0(v168, v165);
          }

          goto LABEL_225;
        }

        v186 = _NRCopyLogObjectForNRUUID();
        v187 = _NRLogIsLevelEnabled();

        if (v187)
        {
          v188 = *(a1 + 32);
          if (v188)
          {
            v188 = v188[12];
          }

          v189 = v188;
          v190 = _NRCopyLogObjectForNRUUID();
          v226 = *(a1 + 40);
          _NRLogWithArgs();
        }

        goto LABEL_225;
      }

      v130 = *(a1 + 40);
      if (v130)
      {
        v131 = sub_10002B210(v130, 7);
        v132 = [v131 firstObject];

        if (v132 && [v132 length])
        {
          LOBYTE(v237) = 0;
          [v132 getBytes:&v237 length:1];
          if (v237)
          {
            v123 = &__kCFBooleanTrue;
          }

          else
          {
            v123 = &__kCFBooleanFalse;
          }
        }

        else
        {
          v123 = 0;
        }

        v133 = 0;
        if (!v123)
        {
          goto LABEL_225;
        }

        goto LABEL_186;
      }
    }

    v122 = 0;
    v123 = 0;
    goto LABEL_228;
  }

  LOBYTE(v229) = 0;
  v228 = 0;
  v124 = *(a1 + 40);
  if (!v124)
  {
    goto LABEL_257;
  }

  v125 = sub_10002B210(v124, 13);
  v126 = [v125 firstObject];

  if (v126)
  {
    [v126 getBytes:&v228 length:9];
    v123 = [NSNumber numberWithUnsignedChar:v228];
    v122 = v126;
    if (!v123)
    {
      goto LABEL_228;
    }

    goto LABEL_165;
  }

  v127 = *(a1 + 40);
  if (!v127)
  {
LABEL_257:
    v123 = 0;
    v122 = 0;
    goto LABEL_228;
  }

  v128 = sub_10002B210(v127, 5);
  v129 = [v128 firstObject];

  if (v129 && [v129 length])
  {
    LOBYTE(v237) = 0;
    [v129 getBytes:&v237 length:1];
    if (v237)
    {
      v123 = &__kCFBooleanTrue;
    }

    else
    {
      v123 = &__kCFBooleanFalse;
    }
  }

  else
  {
    v123 = 0;
  }

  v122 = 0;
  if (!v123)
  {
    goto LABEL_228;
  }

LABEL_165:
  v134 = sub_100029538(*(a1 + 40));
  v135 = *(a1 + 32);
  if (!v135)
  {
    if (!v134)
    {
      goto LABEL_167;
    }

LABEL_180:
    v153 = _NRCopyLogObjectForNRUUID();
    v154 = _NRLogIsLevelEnabled();

    if (v154)
    {
      v155 = *(a1 + 32);
      if (v155)
      {
        v155 = v155[12];
      }

      v156 = v155;
      v157 = _NRCopyLogObjectForNRUUID();
      v225 = *(a1 + 40);
      _NRLogWithArgs();
    }

    goto LABEL_228;
  }

  if (v134 != *(v135 + 368))
  {
    v152 = *(v135 + 96);
    goto LABEL_180;
  }

LABEL_167:
  v141 = [v123 BOOLValue];
  v142 = "dis";
  if (v141)
  {
    v142 = "en";
  }

  sub_1000EC910(*(a1 + 32), 1008, @"received prefer Wi-Fi request: %sable", v136, v137, v138, v139, v140, v142);
  v143 = *(a1 + 32);
  if (!v141)
  {
    if (v143)
    {
      v191 = *(v143 + 96);
    }

    v192 = _NRCopyLogObjectForNRUUID();
    v193 = _NRLogIsLevelEnabled();

    if (v193)
    {
      v194 = *(a1 + 32);
      if (v194)
      {
        v195 = *(v194 + 96);
      }

      v196 = _NRCopyLogObjectForNRUUID();
      _NRLogWithArgs();
    }

    v197 = *(a1 + 32);
    if (v197)
    {
      *(v197 + 26) = 0;
      v143 = *(a1 + 32);
      if (v126)
      {
        goto LABEL_227;
      }
    }

    else
    {
      v143 = 0;
      if (v126)
      {
        goto LABEL_227;
      }
    }

LABEL_223:
    sub_1000EF7A0(v143, v141);
    goto LABEL_228;
  }

  if (v143)
  {
    if (*(v143 + 15) == 1)
    {
      v144 = *(v143 + 96);
      v145 = _NRCopyLogObjectForNRUUID();
      v146 = _NRLogIsLevelEnabled();

      if (v146)
      {
        v147 = *(a1 + 32);
        if (v147)
        {
          v147 = v147[12];
        }

        v148 = v147;
        v149 = _NRCopyLogObjectForNRUUID();
        v150 = *(a1 + 32);
        if (v150)
        {
          v151 = *(v150 + 15);
        }

        _NRLogWithArgs();
      }

      sub_1000EFC5C(*(a1 + 32));
      goto LABEL_228;
    }

    if (v126)
    {
LABEL_227:
      sub_1000FEA10(v143, v122);
      goto LABEL_228;
    }

    v198 = sub_1000FEEB4(v143);
    v199 = *(a1 + 32);
    if ((v198 & 1) == 0)
    {
      if (v199)
      {
        *(v199 + 26) = 1;
      }

      goto LABEL_228;
    }
  }

  else
  {
    v199 = 0;
    if (v126)
    {
      goto LABEL_227;
    }
  }

  v200 = sub_1000EC630(v199);
  v201 = v200;
  v202 = *(a1 + 32);
  if (v202)
  {
    v203 = *(v202 + 96);
  }

  else
  {
    v203 = 0;
  }

  v204 = sub_10017E984(v200, v203);

  v205 = *(a1 + 32);
  if (v204)
  {
    if (v205)
    {
      v206 = *(v205 + 96);
    }

    v207 = _NRCopyLogObjectForNRUUID();
    v208 = _NRLogIsLevelEnabled();

    if (v208)
    {
      v209 = *(a1 + 32);
      if (v209)
      {
        v210 = *(v209 + 96);
      }

      v211 = _NRCopyLogObjectForNRUUID();
      _NRLogWithArgs();
    }

    v143 = *(a1 + 32);
    goto LABEL_223;
  }

  if (v205)
  {
    v212 = *(v205 + 96);
  }

  v213 = _NRCopyLogObjectForNRUUID();
  v214 = _NRLogIsLevelEnabled();

  if (v214)
  {
    v215 = *(a1 + 32);
    if (v215)
    {
      v216 = *(v215 + 96);
    }

    v217 = _NRCopyLogObjectForNRUUID();
    _NRLogWithArgs();
  }

LABEL_228:
}

void sub_1000FA7C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30)
{
  _Block_object_dispose(&a24, 8);
  _Block_object_dispose(&a30, 8);
  _Block_object_dispose((v30 - 136), 8);
  _Unwind_Resume(a1);
}

void sub_1000FA7F8(uint64_t a1)
{
  if (!a1 || !sub_1000FE89C(a1))
  {
    return;
  }

  v2 = *(a1 + 600);
  if (!v2 || *(v2 + 9) != 1)
  {
    *(a1 + 74) = 1;
    objc_initWeak(&location, a1);
    v7 = *(a1 + 80);
    if (v7 >= 0xC)
    {
      LOBYTE(v7) = 12;
      *(a1 + 80) = 12;
    }

    else if (!v7)
    {
      v8 = 0;
LABEL_14:
      v9 = dispatch_time(0, v8);
      v10 = *(a1 + 136);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1000FE9B0;
      block[3] = &unk_1001FC730;
      v11 = v10;
      objc_copyWeak(&v14, &location);
      dispatch_after(v9, v11, block);

      objc_destroyWeak(&v14);
      objc_destroyWeak(&location);
      return;
    }

    v8 = 1000000000 << (v7 + 1);
    goto LABEL_14;
  }

  v3 = *(a1 + 96);
  v4 = _NRCopyLogObjectForNRUUID();
  IsLevelEnabled = _NRLogIsLevelEnabled();

  if (IsLevelEnabled)
  {
    v6 = *(a1 + 96);
    v12 = _NRCopyLogObjectForNRUUID();
    _NRLogWithArgs();
  }
}

void sub_1000FA994(uint64_t a1)
{
  if (a1 && *(a1 + 63) == 1)
  {
    if (*(a1 + 600))
    {
      sub_1000FE760(a1, 0);
      [*(a1 + 600) cancel];
      v2 = *(a1 + 600);
      *(a1 + 600) = 0;
    }

    v3 = *(a1 + 592);
    if (v3)
    {
      [v3 cancel];
      v4 = *(a1 + 592);
      *(a1 + 592) = 0;
    }

    *(a1 + 80) = 0;
    *(a1 + 74) = 0;
  }
}

void sub_1000FAA10(uint64_t a1, int a2)
{
  if (a1 && *(a1 + 57) == 1)
  {
    v4 = *(a1 + 704);
    *(a1 + 704) = 0;

    v5 = *(a1 + 552);
    *(a1 + 552) = 0;

    objc_opt_self();
    if (qword_100229410 != -1)
    {
      dispatch_once(&qword_100229410, &stru_1001FCD98);
    }

    v6 = qword_100229408;
    sub_10015A238(v6, *(a1 + 312));

    if (a2)
    {
      objc_opt_self();
      if (qword_100229410 != -1)
      {
        dispatch_once(&qword_100229410, &stru_1001FCD98);
      }

      v7 = qword_100229408;
      sub_10015A52C(v7);
    }
  }
}

void sub_1000FAB30(uint64_t a1, void *a2)
{
  if (a1)
  {
    objc_storeStrong((a1 + 704), a2);
  }
}

void sub_1000FAB40(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v5 = v3[5];
    v6 = v5;
    if (v5)
    {
      CC_SHA256([v5 bytes], objc_msgSend(v5, "length"), md);
      v7 = [[NSData alloc] initWithBytes:md length:32];
    }

    else
    {
      v7 = 0;
    }

    if (([*(a1 + 720) isEqualToData:v7] & 1) == 0)
    {
      if (!*(a1 + 712))
      {
        v8 = *(a1 + 136);
        v9 = nw_agent_create();
        v10 = *(a1 + 712);
        *(a1 + 712) = v9;
      }

      v11 = v4[5];

      if (v11)
      {
        v12 = v4[5];
        v11 = dispatch_data_create([v12 bytes], objc_msgSend(v12, "length"), *(a1 + 136), 0);
      }

      objc_opt_self();
      if (qword_100229410 != -1)
      {
        dispatch_once(&qword_100229410, &stru_1001FCD98);
      }

      v13 = qword_100229408;
      sub_10015A238(v13, *(a1 + 320));

      v14 = *(a1 + 712);
      v28 = v11;
      nw_agent_change_state();
      objc_storeStrong((a1 + 720), v7);
      *md = 0;
      v31 = 0;
      v15 = *(a1 + 712);
      nw_agent_get_uuid();
      v16 = [[NSUUID alloc] initWithUUIDBytes:md];
      objc_opt_self();
      v17 = [NEPolicyCondition clientFlags:0x80000000];
      [v17 setNegative:1];
      v18 = [NEPolicy alloc];
      v27 = v16;
      v19 = [NEPolicyResult netAgentUUID:v16];
      v20 = +[NEPolicyCondition allInterfaces];
      v29[0] = v20;
      v21 = +[NEPolicyCondition platformBinary];
      v29[1] = v21;
      v29[2] = v17;
      v22 = [NEPolicyCondition customEntitlement:@"com.apple.networkrelay.companionNetworkDescription"];
      v29[3] = v22;
      v23 = [NSArray arrayWithObjects:v29 count:4];
      v24 = [v18 initWithOrder:10 result:v19 conditions:v23];

      objc_opt_self();
      if (qword_100229410 != -1)
      {
        dispatch_once(&qword_100229410, &stru_1001FCD98);
      }

      v25 = qword_100229408;
      v26 = sub_100159E00(v25, *(a1 + 320), v24);
    }
  }
}

void sub_1000FAEC0(uint64_t a1)
{
  if (a1)
  {
    if ([*(a1 + 160) state] == 8)
    {
      *(a1 + 69) = 0;
      v2 = sub_100163A30(NRDLocalDevice, *(a1 + 96));
      v8 = v2;
      if (v2)
      {
        v3 = 4;
        v4 = 2;
        if (!*(a1 + 68))
        {
          v4 = 4;
          v3 = 8;
        }

        if (*(v2 + 16) <= 0x15u)
        {
          v5 = v4;
        }

        else
        {
          v5 = v3;
        }
      }

      else
      {
        v5 = 4;
        if (*(a1 + 68))
        {
          v5 = 2;
        }
      }

      v9 = v5;
      v6 = sub_10002A50C([NRLinkDirectorMessage alloc], *(a1 + 96));
      v7 = [[NSData alloc] initWithBytes:&v9 length:8];
      sub_10002AB38(v6, 11, v7);
      if (v6)
      {
        objc_storeStrong(v6 + 3, *(a1 + 160));
      }

      sub_10002C0E8(v6);
    }

    else
    {
      *(a1 + 69) = 1;
    }
  }
}

void sub_1000FAFFC(uint64_t a1)
{
  if (a1 && *(a1 + 57) == 1)
  {
    v2 = *(a1 + 712);
    *(a1 + 712) = 0;

    v3 = *(a1 + 720);
    *(a1 + 720) = 0;

    objc_opt_self();
    if (qword_100229410 != -1)
    {
      dispatch_once(&qword_100229410, &stru_1001FCD98);
    }

    v4 = qword_100229408;
    sub_10015A238(v4, *(a1 + 320));

    objc_opt_self();
    if (qword_100229410 != -1)
    {
      dispatch_once(&qword_100229410, &stru_1001FCD98);
    }

    v5 = qword_100229408;
    sub_10015A52C(v5);
  }
}

void sub_1000FB114(uint64_t a1, char a2)
{
  if (a1)
  {
    v2 = a1;
    if (*(a1 + 656))
    {
      objc_opt_self();
      if (qword_100229410 != -1)
      {
        dispatch_once(&qword_100229410, &stru_1001FCD98);
      }

      v4 = qword_100229408;
      sub_10015A238(v4, *(v2 + 344));

      v49 = sub_1000FE460(v2);
      if ([v49 count])
      {
        v46 = a2;
        v5 = [NEPolicyCondition requiredAgentDomain:@"com.apple.networkrelay" agentType:@"ASResolver"];
        v44 = [NEPolicyCondition requiredAgentDomain:@"com.apple.networkrelay" agentType:@"ASListener"];
        v45 = v5;
        v72[0] = v5;
        v72[1] = v44;
        [NSArray arrayWithObjects:v72 count:2];
        v62 = 0u;
        v63 = 0u;
        v64 = 0u;
        obj = v65 = 0u;
        v50 = [obj countByEnumeratingWithState:&v62 objects:v71 count:16];
        if (v50)
        {
          v48 = *v63;
          v6 = v2;
          do
          {
            v7 = 0;
            do
            {
              if (*v63 != v48)
              {
                objc_enumerationMutation(obj);
              }

              v51 = v7;
              v10 = *(*(&v62 + 1) + 8 * v7);
              v58 = 0u;
              v59 = 0u;
              v60 = 0u;
              v61 = 0u;
              v11 = v49;
              v12 = [v11 countByEnumeratingWithState:&v58 objects:v70 count:16];
              if (v12)
              {
                v13 = v12;
                v14 = *v59;
                do
                {
                  for (i = 0; i != v13; i = i + 1)
                  {
                    if (*v59 != v14)
                    {
                      objc_enumerationMutation(v11);
                    }

                    v16 = [NEPolicyResult removeNetworkAgentUUID:*(*(&v58 + 1) + 8 * i)];
                    v17 = [NEPolicy alloc];
                    v18 = +[NEPolicyCondition allInterfaces];
                    v69[0] = v18;
                    v69[1] = v10;
                    v19 = [NSArray arrayWithObjects:v69 count:2];
                    v20 = [v17 initWithOrder:10 result:v16 conditions:v19];

                    objc_opt_self();
                    if (qword_100229410 != -1)
                    {
                      dispatch_once(&qword_100229410, &stru_1001FCD98);
                    }

                    v2 = v6;
                    v21 = qword_100229408;
                    v22 = sub_100159E00(v21, *(v6 + 344), v20);
                  }

                  v13 = [v11 countByEnumeratingWithState:&v58 objects:v70 count:16];
                }

                while (v13);
              }

              if (*(v2 + 704))
              {
                v68[0] = 0;
                v68[1] = 0;
                nw_agent_get_uuid();
                v23 = [[NSUUID alloc] initWithUUIDBytes:v68];
                v24 = [NEPolicyResult removeNetworkAgentUUID:v23];
                v25 = [NEPolicy alloc];
                v26 = +[NEPolicyCondition allInterfaces];
                v67[0] = v26;
                v67[1] = v10;
                v27 = [NSArray arrayWithObjects:v67 count:2];
                v28 = [v25 initWithOrder:10 result:v24 conditions:v27];

                objc_opt_self();
                if (qword_100229410 != -1)
                {
                  dispatch_once(&qword_100229410, &stru_1001FCD98);
                }

                v2 = v6;
                v8 = qword_100229408;
                v9 = sub_100159E00(v8, *(v6 + 344), v28);
              }

              v7 = v51 + 1;
            }

            while ((v51 + 1) != v50);
            v50 = [obj countByEnumeratingWithState:&v62 objects:v71 count:16];
          }

          while (v50);
        }

        a2 = v46;
      }

      objc_opt_self();
      if (qword_100229410 != -1)
      {
        dispatch_once(&qword_100229410, &stru_1001FCD98);
      }

      v29 = qword_100229408;
      sub_10015A52C(v29);

      if ((a2 & 1) == 0)
      {
        if (*(v2 + 488))
        {
          v30 = NEVirtualInterfaceCopyName();
          if (v30)
          {
            sub_10011ED4C(*(v2 + 656), v30);
          }
        }

        else
        {
          v30 = 0;
        }

        v56 = 0u;
        v57 = 0u;
        v54 = 0u;
        v55 = 0u;
        v31 = *(v2 + 144);
        v32 = [v31 countByEnumeratingWithState:&v54 objects:v66 count:16];
        if (v32)
        {
          v33 = v32;
          v34 = *v55;
          do
          {
            for (j = 0; j != v33; j = j + 1)
            {
              if (*v55 != v34)
              {
                objc_enumerationMutation(v31);
              }

              v36 = *(*(&v54 + 1) + 8 * j);
              if ([v36 hasCompanionDatapath])
              {
                if (![v36 virtualInterface])
                {
                  continue;
                }

                [v36 virtualInterface];
                v37 = NEVirtualInterfaceCopyName();
              }

              else
              {
                v37 = [v36 localInterfaceName];
              }

              v38 = v37;
              v39 = [v36 isPrimary];
              v40 = *(v2 + 656);
              if (v39)
              {
                sub_10011EC08(v40, v38);
              }

              else
              {
                sub_10011ED4C(v40, v38);
              }
            }

            v33 = [v31 countByEnumeratingWithState:&v54 objects:v66 count:16];
          }

          while (v33);
        }

        if (!*(v2 + 160))
        {
          v41 = objc_alloc_init(NRLinkDirectorRequest);
          p_isa = &v41->super.isa;
          if (v41)
          {
            v41->_type = 6;
            *&v41->_attemptImmediately = 1;
            v41->_timeout = 10;
            objc_storeStrong(&v41->_timerDescription, @"Hysteresis for AS registrations");
            objc_storeStrong(p_isa + 2, &off_10020A0D8);
          }

          newValue[0] = _NSConcreteStackBlock;
          newValue[1] = 3221225472;
          newValue[2] = sub_1000FE73C;
          newValue[3] = &unk_1001FD060;
          newValue[4] = v2;
          v53 = v30;
          if (p_isa)
          {
            objc_setProperty_nonatomic_copy(p_isa, v43, newValue, 48);
          }

          sub_1000EAA20(v2, p_isa);
        }
      }
    }
  }
}

void sub_1000FB7E8(uint64_t a1)
{
  if (!a1)
  {
    return;
  }

  dispatch_assert_queue_V2(*(a1 + 136));
  dispatch_assert_queue_V2(*(a1 + 136));
  v2 = sub_100163A30(NRDLocalDevice, *(a1 + 96));
  v3 = v2;
  if (v2)
  {
    v4 = *(v2 + 144);
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  v6 = [v5 getDefaultLinkSubtypeForLinkType:1];

  v31 = sub_1000EA2C8(a1, 1, v6);
  if (v31)
  {
    if ([v31 state] == 1)
    {
      v7 = *(a1 + 96);
      v8 = _NRCopyLogObjectForNRUUID();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      if (IsLevelEnabled)
      {
        v10 = *(a1 + 96);
        v11 = _NRCopyLogObjectForNRUUID();
        v28 = 3543;
        v29 = v31;
        v26 = "";
        v27 = "[NRDDeviceConductor resumeLinkOfType:]";
        _NRLogWithArgs();
      }

      [v31 start];
      goto LABEL_19;
    }

    if ([v31 state] != 8)
    {
      if ([v31 state] == 9)
      {
        v17 = *(a1 + 96);
        v18 = _NRCopyLogObjectForNRUUID();
        v19 = _NRLogIsLevelEnabled();

        if (v19)
        {
          v20 = *(a1 + 96);
          v21 = _NRCopyLogObjectForNRUUID();
          v28 = 3560;
          v29 = v31;
          v26 = "";
          v27 = "[NRDDeviceConductor resumeLinkOfType:]";
          _NRLogWithArgs();
        }

        [v31 resume];
        goto LABEL_19;
      }

      [v31 setSuspendWhenReady:0];
      v22 = *(a1 + 96);
      v23 = _NRCopyLogObjectForNRUUID();
      v24 = _NRLogIsLevelEnabled();

      if (v24)
      {
        v25 = *(a1 + 96);
        v16 = _NRCopyLogObjectForNRUUID();
        _NRLogWithArgs();
        goto LABEL_11;
      }
    }
  }

  else
  {
    v12 = *(a1 + 96);
    v13 = _NRCopyLogObjectForNRUUID();
    v14 = _NRLogIsLevelEnabled();

    if (v14)
    {
      v15 = *(a1 + 96);
      v16 = _NRCopyLogObjectForNRUUID();
      StringFromNRLinkType = createStringFromNRLinkType();
      _NRLogWithArgs();

LABEL_11:
    }
  }

LABEL_19:
}

void sub_1000FBA90(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = v2;
  if (!v1)
  {
    goto LABEL_108;
  }

  if (*(v1 + 14) != 1 || v2 == 0)
  {
    goto LABEL_108;
  }

  v5 = sub_10002B210(v2, 16);
  v6 = [v5 firstObject];

  if (v6)
  {
    v7 = sub_10002B210(v3, 16);
    v8 = [v7 firstObject];

    if (v8 && [v8 length])
    {
      v138[0] = 0;
      [v8 getBytes:v138 length:1];
      if (v138[0])
      {
        v9 = &__kCFBooleanTrue;
      }

      else
      {
        v9 = &__kCFBooleanFalse;
      }
    }

    else
    {
      v9 = 0;
    }

    if ([v9 BOOLValue])
    {
      v10 = *(v1 + 46);
      *(v1 + 62) = v10;
      if (v10 == 1)
      {
        v11 = *(v1 + 96);
        v12 = _NRCopyLogObjectForNRUUID();
        IsLevelEnabled = _NRLogIsLevelEnabled();

        if (IsLevelEnabled)
        {
          v14 = *(v1 + 96);
          v15 = _NRCopyLogObjectForNRUUID();
          v124 = 5511;
          v122 = "";
          v123 = "[NRDDeviceConductor handleDNSProxyMessage:]";
          _NRLogWithArgs();
        }

        if (*(v1 + 46) != 1 || ![*(v1 + 160) ikeClassDEstablished])
        {
          goto LABEL_27;
        }

        v16 = *(v1 + 584);
        if (v16)
        {
          v17 = *(v16 + 8);
          if (v17 == 1)
          {
LABEL_27:

            goto LABEL_28;
          }

          if (v17 == 2)
          {
            [v1 didUpdateDNSProxyState:? state:?];
            goto LABEL_27;
          }
        }

        sub_1000FDB08(v1);
        goto LABEL_27;
      }
    }

    else
    {
      *(v1 + 62) = 0;
    }

    v18 = *(v1 + 96);
    v19 = _NRCopyLogObjectForNRUUID();
    v20 = _NRLogIsLevelEnabled();

    if (v20)
    {
      v21 = *(v1 + 96);
      v22 = _NRCopyLogObjectForNRUUID();
      v124 = 5524;
      v122 = "";
      v123 = "[NRDDeviceConductor handleDNSProxyMessage:]";
      _NRLogWithArgs();
    }

    [*(v1 + 584) cancel];
    v23 = *(v1 + 584);
    *(v1 + 584) = 0;

    goto LABEL_27;
  }

LABEL_28:
  v24 = sub_10002B210(v3, 18);
  v25 = [v24 firstObject];

  if (v25)
  {
    v26 = sub_10002B210(v3, 18);
    v27 = [v26 firstObject];

    if (v27 && [v27 length])
    {
      v138[0] = 0;
      [v27 getBytes:v138 length:1];
      if (v138[0])
      {
        v28 = &__kCFBooleanTrue;
      }

      else
      {
        v28 = &__kCFBooleanFalse;
      }
    }

    else
    {
      v28 = 0;
    }

    v29 = [v28 BOOLValue];
    v30 = *(v1 + 96);
    v31 = _NRCopyLogObjectForNRUUID();
    v32 = _NRLogIsLevelEnabled();

    if (!v29)
    {
      if (v32)
      {
        v39 = *(v1 + 96);
        v40 = _NRCopyLogObjectForNRUUID();
        v124 = 5567;
        v122 = "";
        v123 = "[NRDDeviceConductor handleDNSProxyMessage:]";
        _NRLogWithArgs();
      }

      [*(v1 + 592) cancel];
      v41 = *(v1 + 592);
      *(v1 + 592) = 0;

      goto LABEL_65;
    }

    if (v32)
    {
      v33 = *(v1 + 96);
      v34 = _NRCopyLogObjectForNRUUID();
      v124 = 5533;
      v122 = "";
      v123 = "[NRDDeviceConductor handleDNSProxyMessage:]";
      _NRLogWithArgs();
    }

    if (*(v1 + 46) == 1)
    {
      v35 = *(v1 + 160);
      if (([v35 ikeClassDEstablished] & 1) == 0)
      {
LABEL_64:

        goto LABEL_65;
      }

      v36 = *(v1 + 63);

      if (v36 == 1)
      {
        v37 = *(v1 + 592);
        if (!v37)
        {
LABEL_49:
          [*(v1 + 592) cancel];
          v35 = objc_alloc_init(NSMutableSet);
          v133 = 0u;
          v134 = 0u;
          v135 = 0u;
          v136 = 0u;
          v42 = *(v1 + 144);
          v43 = [v42 countByEnumeratingWithState:&v133 objects:v138 count:16];
          if (v43)
          {
            v44 = v43;
            v45 = *v134;
            do
            {
              for (i = 0; i != v44; i = i + 1)
              {
                if (*v134 != v45)
                {
                  objc_enumerationMutation(v42);
                }

                if (*(v1 + 49) == 1)
                {
                  v47 = *(*(&v133 + 1) + 8 * i);
                  if ([v47 ikeClassDEstablished])
                  {
                    if ([v47 hasCompanionDatapath] && objc_msgSend(v47, "virtualInterface") && objc_msgSend(v47, "type") == 1)
                    {
                      [v47 virtualInterface];
                      v48 = NEVirtualInterfaceCopyName();
                      [v35 addObject:v48];
                    }
                  }
                }
              }

              v44 = [v42 countByEnumeratingWithState:&v133 objects:v138 count:16];
            }

            while (v44);
          }

          if ([v35 count])
          {
            v49 = [NRDiscoveryProxyServer alloc];
            v50 = *(v1 + 136);
            v51 = *(v1 + 96);
            v52 = v50;
            v53 = sub_100026098(v49, v35, v52, v51, v1);
            v54 = *(v1 + 592);
            *(v1 + 592) = v53;

            [*(v1 + 592) start];
          }

          goto LABEL_64;
        }

        v38 = *(v37 + 8);
        if (v38 != 1)
        {
          if (v38 == 2)
          {
            [v1 didUpdateDNSProxyState:? state:?];
            goto LABEL_65;
          }

          goto LABEL_49;
        }
      }
    }

LABEL_65:
  }

  v55 = sub_10002B210(v3, 17);
  v56 = [v55 firstObject];

  if (v56 || (v57 = sub_10002B210(v3, 19), [v57 firstObject], v58 = objc_claimAutoreleasedReturnValue(), v57, v58, v58))
  {
    v59 = sub_10002B210(v3, 17);
    v60 = [v59 firstObject];

    v61 = sub_10002B210(v3, 19);
    v62 = [v61 firstObject];

    v132 = 0;
    v131 = 0;
    v129 = 0;
    v130 = 0;
    if (v60)
    {
      v63 = sub_10002B210(v3, 17);
      v64 = [v63 firstObject];

      sub_1000FDD68(v1, v64, &v132 + 1, &v132, &v131, &v130, &v129);
      if ((v132 & 0x100) != 0)
      {
        if (v132 == 1)
        {
          v65 = v130;
          v66 = *(v1 + 576);
          v67 = v66;
          v68 = v66 ? *(v66 + 3) : 0;
          v69 = v68;
          v70 = [v65 isEqual:v69];

          if ((v70 & 1) == 0)
          {
            [*(v1 + 576) cancel];
            v71 = [NRDNSProxyClient alloc];
            v73 = v129;
            v72 = v130;
            v74 = *(v1 + 136);
            v75 = v131;
            v76 = *(v1 + 96);
            v77 = v74;
            v78 = sub_100025F54(&v71->super.super.isa, v72, v77, v76, v1, v73, v75, 0);
            v79 = *(v1 + 576);
            *(v1 + 576) = v78;

            [*(v1 + 576) start];
            *(v1 + 76) = 0;
          }
        }
      }

      else
      {
        v80 = *(v1 + 96);
        v81 = _NRCopyLogObjectForNRUUID();
        v82 = _NRLogIsLevelEnabled();

        if (v82)
        {
          v83 = *(v1 + 96);
          v84 = _NRCopyLogObjectForNRUUID();
          v124 = 5593;
          v122 = "";
          v123 = "[NRDDeviceConductor handleDNSProxyMessage:]";
          _NRLogWithArgs();
        }

        v127 = 0u;
        v128 = 0u;
        v125 = 0u;
        v126 = 0u;
        v85 = *(v1 + 144);
        v86 = [v85 countByEnumeratingWithState:&v125 objects:v137 count:16];
        if (v86)
        {
          v87 = v86;
          v88 = *v126;
          do
          {
            for (j = 0; j != v87; j = j + 1)
            {
              if (*v126 != v88)
              {
                objc_enumerationMutation(v85);
              }

              v90 = *(*(&v125 + 1) + 8 * j);
              if ([v90 ikeClassDEstablished])
              {
                [v90 publishDNSConfig:0];
              }
            }

            v87 = [v85 countByEnumeratingWithState:&v125 objects:v137 count:16];
          }

          while (v87);
        }

        [*(v1 + 576) cancel];
        v91 = *(v1 + 576);
        *(v1 + 576) = 0;

        ++*(v1 + 76);
        sub_1000FDFE4(v1);
      }
    }

    if (!v62)
    {
      goto LABEL_107;
    }

    v92 = sub_10002B210(v3, 19);
    v93 = [v92 firstObject];

    sub_1000FDD68(v1, v93, &v132 + 1, &v132, &v131, &v130, &v129);
    if ((v132 & 0x100) == 0)
    {
      v105 = *(v1 + 96);
      v106 = _NRCopyLogObjectForNRUUID();
      v107 = _NRLogIsLevelEnabled();

      if (v107)
      {
        v108 = *(v1 + 96);
        v109 = _NRCopyLogObjectForNRUUID();
        v124 = 5626;
        v122 = "";
        v123 = "[NRDDeviceConductor handleDNSProxyMessage:]";
        _NRLogWithArgs();
      }

      [*(v1 + 600) cancel];
      v110 = *(v1 + 600);
      *(v1 + 600) = 0;

      ++*(v1 + 80);
      sub_1000FA7F8(v1);
      goto LABEL_106;
    }

    if (v132 == 1)
    {
      v94 = v130;
      v95 = *(v1 + 600);
      v96 = v95;
      if (v95)
      {
        v97 = *(v95 + 3);
      }

      else
      {
        v97 = 0;
      }

      v98 = v97;
      if ([v94 isEqual:v98])
      {
        v99 = v129;
        v100 = *(v1 + 600);
        v101 = v100;
        if (v100)
        {
          v102 = *(v100 + 4);
        }

        else
        {
          v102 = 0;
        }

        v103 = v102;
        v104 = [v99 isEqualToData:v103];

        if (v104)
        {
          goto LABEL_106;
        }
      }

      else
      {
      }

      [*(v1 + 600) cancel];
      v111 = [NRDNSProxyClient alloc];
      v113 = v129;
      v112 = v130;
      v114 = *(v1 + 136);
      v115 = v131;
      v116 = *(v1 + 96);
      v117 = v114;
      v118 = sub_100025F54(&v111->super.super.isa, v112, v117, v116, v1, v113, v115, 1);
      v119 = *(v1 + 600);
      *(v1 + 600) = v118;

      if ([*(v1 + 160) virtualInterface])
      {
        [*(v1 + 160) virtualInterface];
        Index = NEVirtualInterfaceGetIndex();
        v121 = *(v1 + 600);
        if (v121)
        {
          *(v121 + 72) = Index;
        }
      }

      [*(v1 + 600) start];
      *(v1 + 80) = 0;
    }

LABEL_106:

LABEL_107:
  }

LABEL_108:
}

id sub_1000FC558(void *a1)
{
  v1 = a1;
  v4 = 0;
  v5 = &v4;
  v6 = 0x3032000000;
  v7 = sub_1000FD2F4;
  v8 = sub_1000FD304;
  v9 = objc_alloc_init(NSMutableDictionary);
  NRTLVParse();
  v2 = v5[5];
  _Block_object_dispose(&v4, 8);

  return v2;
}

void sub_1000FC650(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

NRASMRequestMetadata *sub_1000FC668(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  v5 = objc_alloc_init(NRASMRequestMetadata);
  v8 = v3;
  v9 = v5;
  NRTLVParse();

  v6 = v9;
  return v6;
}

uint64_t sub_1000FC74C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  sub_1000E9DD8(v4, v5);
  v6 = [NWAddressEndpoint endpointWithCEndpoint:v5];

  if (sub_100172C3C(NRDLocalDevice, v6))
  {
    [*(a1 + 40) addObject:v6];
  }

  return 1;
}

void sub_1000FC7D0(uint64_t a1, int a2)
{
  if (*(a1 + 656))
  {
    dispatch_assert_queue_V2(*(a1 + 136));
    v3 = sub_100163A30(NRDLocalDevice, *(a1 + 96));
    v4 = v3;
    if (v3)
    {
      v5 = *(v3 + 144);
    }

    else
    {
      v5 = 0;
    }

    v6 = v5;
    v7 = [v6 getDefaultLinkSubtypeForLinkType:4];

    v8 = sub_1000EA2C8(a1, 4, v7);
    if (v8 && [v8 state] == 8)
    {
      v69 = a1;
      v96 = 0u;
      v97 = 0u;
      v94 = 0u;
      v95 = 0u;
      v81 = v8;
      v9 = [v8 appSvcPolicyIDs];
      v10 = [v9 countByEnumeratingWithState:&v94 objects:v107 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v95;
        do
        {
          for (i = 0; i != v11; i = i + 1)
          {
            if (*v95 != v12)
            {
              objc_enumerationMutation(v9);
            }

            v17 = *(*(&v94 + 1) + 8 * i);
            v18 = [v81 policyIDs];
            v19 = [v18 containsObject:v17];

            if (v19)
            {
              objc_opt_self();
              if (qword_100229410 != -1)
              {
                dispatch_once(&qword_100229410, &stru_1001FCD98);
              }

              v14 = qword_100229408;
              v15 = [v81 policyIdentifierString];
              sub_100159FB0(v14, v15, v17);

              v16 = [v81 policyIDs];
              [v16 removeObject:v17];
            }
          }

          v11 = [v9 countByEnumeratingWithState:&v94 objects:v107 count:16];
        }

        while (v11);
      }

      v20 = objc_alloc_init(NSMutableArray);
      [v81 setAppSvcPolicyIDs:v20];

      [v81 virtualInterface];
      v80 = NEVirtualInterfaceCopyName();
      v75 = sub_100163A30(NRDLocalDevice, *(v69 + 96));
      v21 = *(v69 + 656);
      if (!v21 || (*(v21 + 9) & 1) != 0)
      {
        goto LABEL_20;
      }

      objc_opt_self();
      if (qword_1002291A0 != -1)
      {
        dispatch_once(&qword_1002291A0, &stru_1001FBD88);
      }

      v23 = qword_100229198;
      if (qword_100229198)
      {
        v100 = 0u;
        v101 = 0u;
        v98 = 0u;
        v99 = 0u;
        v24 = *(qword_100229198 + 32);
        v25 = [v24 countByEnumeratingWithState:&v98 objects:v108 count:16];
        if (v25)
        {
          v26 = v25;
          v22 = 0;
          v27 = *v99;
          do
          {
            for (j = 0; j != v26; j = j + 1)
            {
              if (*v99 != v27)
              {
                objc_enumerationMutation(v24);
              }

              v29 = *(*(&v98 + 1) + 8 * j);
              if (!v22)
              {
                v22 = objc_alloc_init(NSMutableArray);
              }

              v30 = sub_10011E8EC(v23, v29);
              if (v30)
              {
                [v22 addObject:v30];
              }
            }

            v26 = [v24 countByEnumeratingWithState:&v98 objects:v108 count:16];
          }

          while (v26);
        }

        else
        {
          v22 = 0;
        }
      }

      else
      {
LABEL_20:
        v22 = 0;
      }

      v92 = 0u;
      v93 = 0u;
      v90 = 0u;
      v91 = 0u;
      obj = v22;
      v76 = [obj countByEnumeratingWithState:&v90 objects:v106 count:16];
      if (v76)
      {
        v73 = *v91;
        do
        {
          for (k = 0; k != v76; k = k + 1)
          {
            if (*v91 != v73)
            {
              objc_enumerationMutation(obj);
            }

            v78 = [NWAddressEndpoint endpointWithCEndpoint:*(*(&v90 + 1) + 8 * k)];
            v32 = [v78 port];
            v33 = sub_1001672A0(v75, v32);

            v34 = [NEPolicyCondition localAddress:v33 prefix:64];
            v105[0] = v34;
            v35 = +[NEPolicyCondition allInterfaces];
            v105[1] = v35;
            v36 = [NSArray arrayWithObjects:v105 count:2];

            v37 = [NEPolicyResult tunnelIPToInterfaceName:v80 secondaryResultType:0];
            v38 = [[NEPolicy alloc] initWithOrder:1200 result:v37 conditions:v36];
            objc_opt_self();
            if (qword_100229410 != -1)
            {
              dispatch_once(&qword_100229410, &stru_1001FCD98);
            }

            v39 = qword_100229408;
            v40 = [v81 policyIdentifierString];
            v41 = sub_100159E00(v39, v40, v38);

            v42 = [v81 appSvcPolicyIDs];
            [v42 addObject:v41];
          }

          v76 = [obj countByEnumeratingWithState:&v90 objects:v106 count:16];
        }

        while (v76);
      }

      v88 = 0u;
      v89 = 0u;
      v86 = 0u;
      v87 = 0u;
      v43 = v69;
      v71 = *(v69 + 672);
      v44 = [v71 countByEnumeratingWithState:&v86 objects:v104 count:16];
      v8 = v81;
      if (v44)
      {
        v45 = v44;
        v46 = *v87;
        v68 = *v87;
        do
        {
          v47 = 0;
          v70 = v45;
          do
          {
            if (*v87 != v46)
            {
              objc_enumerationMutation(v71);
            }

            v48 = *(*(&v86 + 1) + 8 * v47);
            if ((sub_10011F034(*(v43 + 656), v48) & 1) == 0)
            {
              v74 = v47;
              v49 = [*(v43 + 672) objectForKeyedSubscript:v48];
              v82 = 0u;
              v83 = 0u;
              v84 = 0u;
              v85 = 0u;
              v77 = v49;
              v50 = [v77 countByEnumeratingWithState:&v82 objects:v103 count:16];
              if (v50)
              {
                v51 = v50;
                v79 = *v83;
                do
                {
                  for (m = 0; m != v51; m = m + 1)
                  {
                    if (*v83 != v79)
                    {
                      objc_enumerationMutation(v77);
                    }

                    v53 = [NEPolicyCondition remoteAddress:*(*(&v82 + 1) + 8 * m) prefix:128];
                    v102[0] = v53;
                    v54 = +[NEPolicyCondition allInterfaces];
                    v102[1] = v54;
                    v55 = [NSArray arrayWithObjects:v102 count:2];

                    v56 = [NEPolicyResult tunnelIPToInterfaceName:v80 secondaryResultType:0];
                    v57 = [[NEPolicy alloc] initWithOrder:1200 result:v56 conditions:v55];
                    objc_opt_self();
                    if (qword_100229410 != -1)
                    {
                      dispatch_once(&qword_100229410, &stru_1001FCD98);
                    }

                    v58 = qword_100229408;
                    v59 = [v81 policyIdentifierString];
                    v60 = sub_100159E00(v58, v59, v57);

                    v61 = [v81 appSvcPolicyIDs];
                    [v61 addObject:v60];
                  }

                  v51 = [v77 countByEnumeratingWithState:&v82 objects:v103 count:16];
                }

                while (v51);
              }

              v8 = v81;
              v46 = v68;
              v43 = v69;
              v45 = v70;
              v47 = v74;
            }

            v47 = v47 + 1;
          }

          while (v47 != v45);
          v45 = [v71 countByEnumeratingWithState:&v86 objects:v104 count:16];
        }

        while (v45);
      }

      v62 = [v8 appSvcPolicyIDs];
      v63 = [v62 count];

      if (v63)
      {
        v64 = [v8 policyIDs];
        v65 = [v8 appSvcPolicyIDs];
        [v64 addObjectsFromArray:v65];

        if (a2)
        {
          objc_opt_self();
          if (qword_100229410 != -1)
          {
            dispatch_once(&qword_100229410, &stru_1001FCD98);
          }

          v66 = qword_100229408;
          sub_10015A52C(v66);
        }
      }
    }
  }
}

uint64_t sub_1000FD104(uint64_t a1, uint64_t a2)
{
  if (*a2 == 6)
  {
    v3 = [[NSData alloc] initWithBytes:a2 + 3 length:bswap32(*(a2 + 1)) >> 16];
    v17 = 0;
    v18 = &v17;
    v19 = 0x3032000000;
    v20 = sub_1000FD2F4;
    v21 = sub_1000FD304;
    v22 = 0;
    v13 = 0;
    v14 = &v13;
    v15 = 0x2020000000;
    v16 = 0;
    v7 = 0;
    v8 = &v7;
    v9 = 0x3032000000;
    v10 = sub_1000FD2F4;
    v11 = sub_1000FD304;
    v12 = 0;
    NRTLVParse();
    if ([*(a1 + 32) isEqualToString:v18[5]])
    {
      v4 = *(a1 + 40);
      if (v4)
      {
        objc_storeStrong((v4 + 24), v8[5]);
        v5 = *(a1 + 40);
        if (v5)
        {
          *(v5 + 16) = v14[3];
        }
      }
    }

    _Block_object_dispose(&v7, 8);

    _Block_object_dispose(&v13, 8);
    _Block_object_dispose(&v17, 8);
  }

  return 1;
}

void sub_1000FD2C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v11 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000FD2F4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1000FD30C(void *a1, unsigned __int8 *a2)
{
  v3 = *(a2 + 1);
  v4 = *a2;
  switch(v4)
  {
    case 10:
      if (v3 == 2048)
      {
        *(*(a1[6] + 8) + 24) = bswap64(*(a2 + 3));
      }

      break;
    case 9:
      if (v3 == 4096)
      {
        v9 = [[NSUUID alloc] initWithUUIDBytes:a2 + 3];
        v10 = *(a1[5] + 8);
        v11 = *(v10 + 40);
        *(v10 + 40) = v9;
      }

      break;
    case 5:
      v5 = [[NSData alloc] initWithBytes:a2 + 3 length:__rev16(v3)];
      v6 = [[NSString alloc] initWithData:v5 encoding:4];
      v7 = *(a1[4] + 8);
      v8 = *(v7 + 40);
      *(v7 + 40) = v6;

      break;
  }

  return 1;
}

uint64_t sub_1000FD400(uint64_t a1, uint64_t a2)
{
  if (*a2 == 6)
  {
    v3 = [[NSData alloc] initWithBytes:a2 + 3 length:bswap32(*(a2 + 1)) >> 16];
    v23 = 0;
    v24 = &v23;
    v25 = 0x3032000000;
    v26 = sub_1000FD2F4;
    v27 = sub_1000FD304;
    v28 = 0;
    v17 = 0;
    v18 = &v17;
    v19 = 0x3032000000;
    v20 = sub_1000FD2F4;
    v21 = sub_1000FD304;
    v22 = 0;
    v11 = 0;
    v12 = &v11;
    v13 = 0x3032000000;
    v14 = sub_1000FD2F4;
    v15 = sub_1000FD304;
    v16 = 0;
    NRTLVParse();
    if (v24[5] && [v12[5] count])
    {
      v4 = v18[5];
      if (v4)
      {
        application_service = [v4 copyCEndpoint];
      }

      else
      {
        v29[0] = 0;
        v29[1] = 0;
        v6 = +[NSUUID UUID];
        [v6 getUUIDBytes:v29];

        [v24[5] UTF8String];
        application_service = nw_endpoint_create_application_service();
      }

      v7 = application_service;
      v8 = v12[5];
      nw_endpoint_set_public_keys();
      v9 = [*(*(*(a1 + 32) + 8) + 40) objectForKeyedSubscript:v24[5]];
      if (!v9)
      {
        v9 = nw_array_create();
      }

      nw_array_append();
      [*(*(*(a1 + 32) + 8) + 40) setObject:v9 forKeyedSubscript:v24[5]];
    }

    _Block_object_dispose(&v11, 8);

    _Block_object_dispose(&v17, 8);
    _Block_object_dispose(&v23, 8);
  }

  return 1;
}

void sub_1000FD6AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va1, a8);
  va_start(va, a8);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v8 - 120), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000FD6EC(void *a1, unsigned __int8 *a2)
{
  v3 = bswap32(*(a2 + 1)) >> 16;
  v4 = *a2;
  switch(v4)
  {
    case 2:
      v5 = [[NSData alloc] initWithBytes:a2 + 3 length:v3];
      v6 = sub_10013D760(v5, 1, 0, 0);
      v7 = a1[5];
      goto LABEL_9;
    case 7:
      v5 = [[NSData alloc] initWithBytes:a2 + 3 length:v3];
      v8 = *(*(a1[6] + 8) + 40);
      if (!v8)
      {
        v9 = objc_alloc_init(NSMutableArray);
        v10 = *(a1[6] + 8);
        v11 = *(v10 + 40);
        *(v10 + 40) = v9;

        v8 = *(*(a1[6] + 8) + 40);
      }

      [v8 addObject:v5];
      goto LABEL_10;
    case 5:
      v5 = [[NSData alloc] initWithBytes:a2 + 3 length:v3];
      v6 = [[NSString alloc] initWithData:v5 encoding:4];
      v7 = a1[4];
LABEL_9:
      v12 = *(v7 + 8);
      v13 = *(v12 + 40);
      *(v12 + 40) = v6;

LABEL_10:
      break;
  }

  return 1;
}

uint64_t sub_1000FD82C(uint64_t a1)
{
  v2 = nw_endpoint_copy_public_keys();
  if ([v2 count])
  {
    [*(a1 + 32) addObjectsFromArray:v2];
  }

  return 1;
}

uint64_t sub_1000FD874(uint64_t a1, uint64_t a2)
{
  if (*a2 == 11)
  {
    v3 = [[NSData alloc] initWithBytes:a2 + 3 length:bswap32(*(a2 + 1)) >> 16];
    v13 = 0;
    v14 = &v13;
    v15 = 0x3032000000;
    v16 = sub_1000FD2F4;
    v17 = sub_1000FD304;
    v18 = 0;
    v7 = 0;
    v8 = &v7;
    v9 = 0x3032000000;
    v10 = sub_1000FD2F4;
    v11 = sub_1000FD304;
    v12 = 0;
    NRTLVParse();
    if (v14[5])
    {
      v4 = v8[5];
      if (v4)
      {
        v5 = [v4 copyCEndpoint];
        [*(*(*(a1 + 32) + 8) + 40) setObject:v5 forKeyedSubscript:v14[5]];
      }
    }

    _Block_object_dispose(&v7, 8);

    _Block_object_dispose(&v13, 8);
  }

  return 1;
}

void sub_1000FDA0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v7 - 80), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000FDA30(uint64_t a1, unsigned __int8 *a2)
{
  v3 = bswap32(*(a2 + 1)) >> 16;
  v4 = *a2;
  if (v4 == 2)
  {
    v5 = [[NSData alloc] initWithBytes:a2 + 3 length:v3];
    v6 = sub_10013D760(v5, 1, 0, 0);
    v7 = 40;
    goto LABEL_5;
  }

  if (v4 == 5)
  {
    v5 = [[NSData alloc] initWithBytes:a2 + 3 length:v3];
    v6 = [[NSString alloc] initWithData:v5 encoding:4];
    v7 = 32;
LABEL_5:
    v8 = *(*(a1 + v7) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v6;
  }

  return 1;
}

void sub_1000FDB08(uint64_t a1)
{
  if (a1 && *(a1 + 62) == 1)
  {
    v2 = objc_alloc_init(NSMutableSet);
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v3 = *(a1 + 144);
    v4 = [v3 countByEnumeratingWithState:&v22 objects:v27 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v23;
      do
      {
        for (i = 0; i != v5; i = i + 1)
        {
          if (*v23 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = *(*(&v22 + 1) + 8 * i);
          if ([v8 ikeClassDEstablished])
          {
            [v8 virtualInterface];
            v9 = [NSNumber numberWithUnsignedInt:NEVirtualInterfaceGetIndex()];
            [v2 addObject:v9];
          }
        }

        v5 = [v3 countByEnumeratingWithState:&v22 objects:v27 count:16];
      }

      while (v5);
    }

    v10 = *(a1 + 584);
    if (v10)
    {
      v10 = v10[9];
    }

    v11 = v10;
    v12 = [v11 isEqualToSet:v2];

    if ((v12 & 1) == 0)
    {
      v13 = *(a1 + 584);
      v14 = *(a1 + 584);
      *(a1 + 584) = 0;

      [v13 cancel];
      if ([v2 count])
      {
        v15 = [NRDNSProxyServer alloc];
        v16 = *(a1 + 136);
        v17 = *(a1 + 96);
        v18 = v16;
        v19 = v2;
        if (v15)
        {
          v26.receiver = v15;
          v26.super_class = NRDNSProxyServer;
          v20 = objc_msgSendSuper2(&v26, "initWithQueue:nrUUID:delegate:", v18, v17, a1);
          v15 = v20;
          if (v20)
          {
            objc_storeStrong(&v20->_localIfIndices, v2);
          }
        }

        v21 = *(a1 + 584);
        *(a1 + 584) = v15;

        [*(a1 + 584) start];
      }
    }
  }
}

void sub_1000FDD68(uint64_t a1, void *a2, _BYTE *a3, _BYTE *a4, _DWORD *a5, void **a6, void **a7)
{
  v13 = a2;
  if (!v13)
  {
    v17 = sub_1000E83DC();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (!IsLevelEnabled)
    {
      goto LABEL_9;
    }

    goto LABEL_21;
  }

  if (!a3)
  {
    v19 = sub_1000E83DC();
    v20 = _NRLogIsLevelEnabled();

    if (!v20)
    {
      goto LABEL_9;
    }

    goto LABEL_21;
  }

  if (!a4)
  {
    v21 = sub_1000E83DC();
    v22 = _NRLogIsLevelEnabled();

    if (!v22)
    {
      goto LABEL_9;
    }

    goto LABEL_21;
  }

  if (!a5)
  {
    v23 = sub_1000E83DC();
    v24 = _NRLogIsLevelEnabled();

    if (!v24)
    {
      goto LABEL_9;
    }

    goto LABEL_21;
  }

  if (!a6)
  {
    v25 = sub_1000E83DC();
    v26 = _NRLogIsLevelEnabled();

    if (!v26)
    {
      goto LABEL_9;
    }

    goto LABEL_21;
  }

  if (!a7)
  {
    v27 = sub_1000E83DC();
    v28 = _NRLogIsLevelEnabled();

    if (!v28)
    {
      goto LABEL_9;
    }

LABEL_21:
    v16 = sub_1000E83DC();
    _NRLogWithArgs();
    goto LABEL_8;
  }

  *a3 = 1;
  *a4 = 0;
  *a5 = 0;
  v14 = *a6;
  *a6 = 0;

  v15 = *a7;
  *a7 = 0;

  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_1000FE294;
  v29[3] = &unk_1001FBA70;
  v29[4] = a1;
  v29[5] = a3;
  v29[6] = a6;
  v29[7] = a4;
  v29[8] = a5;
  v29[9] = a7;
  v16 = objc_retainBlock(v29);
  NRTLVParse();
LABEL_8:

LABEL_9:
}

void sub_1000FDFE4(unsigned int *val)
{
  if (val && *(val + 61) == 1)
  {
    v2 = *(val + 72);
    if (v2)
    {
      v7 = v2;
      [val didUpdateDNSProxyState:v7 state:v7[8]];
    }

    else
    {
      objc_initWeak(&location, val);
      v3 = val[19];
      if (v3 >= 0xC)
      {
        v3 = 12;
      }

      val[19] = v3;
      v4 = dispatch_time(0, 1000000000 << (v3 + 1));
      v5 = *(val + 17);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1000FE138;
      block[3] = &unk_1001FD0D8;
      v6 = v5;
      objc_copyWeak(&v9, &location);
      block[4] = val;
      dispatch_after(v4, v6, block);

      objc_destroyWeak(&v9);
      objc_destroyWeak(&location);
    }
  }
}

void sub_1000FE138(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained && WeakRetained[14] == 1 && WeakRetained[61] == 1)
  {
    v16 = WeakRetained;
    v3 = *(a1 + 32);
    if (v3)
    {
      v4 = *(v3 + 96);
    }

    v5 = _NRCopyLogObjectForNRUUID();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v7 = *(a1 + 32);
      if (v7)
      {
        v8 = *(v7 + 96);
      }

      v9 = _NRCopyLogObjectForNRUUID();
      _NRLogWithArgs();
    }

    v10 = [NRLinkDirectorMessage alloc];
    v11 = *(a1 + 32);
    if (v11)
    {
      v12 = *(v11 + 96);
    }

    else
    {
      v12 = 0;
    }

    v13 = sub_10002A5C4(&v10->super.isa, v12);
    v14 = v13;
    if (v13)
    {
      *(v13 + 9) = 1;
      v17 = 1;
      v15 = [[NSData alloc] initWithBytes:&v17 length:1];
      sub_10002AB38(v14, 16, v15);
    }

    sub_10002C0E8(v14);

    WeakRetained = v16;
  }
}

uint64_t sub_1000FE294(uint64_t a1, unsigned __int8 *a2)
{
  v4 = bswap32(*(a2 + 1));
  v5 = *(a1 + 32);
  if (v5)
  {
    v6 = *(v5 + 96);
  }

  v7 = HIWORD(v4);
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
    v23 = *a2;
    _NRLogWithArgs();
  }

  v13 = *a2;
  result = 1;
  if (v13 > 2)
  {
    if (v13 == 3)
    {
      v22 = bswap64(*(a2 + 3));
      if (v22)
      {
        **(a1 + 64) = 0;
      }

      else if ((v22 & 2) != 0)
      {
        **(a1 + 64) = 1;
      }
    }

    else if (v13 == 4)
    {
      v19 = [[NSData alloc] initWithBytes:a2 + 3 length:v7];
      v20 = *(a1 + 72);
      v21 = *v20;
      *v20 = v19;

      return 1;
    }
  }

  else if (v13 == 1)
  {
    if (!a2[3])
    {
      result = 0;
      **(a1 + 40) = 0;
    }
  }

  else if (v13 == 2)
  {
    v15 = [[NSData alloc] initWithBytes:a2 + 3 length:v7];
    v16 = sub_10013D760(v15, 1, 0, 0);
    v17 = *(a1 + 48);
    v18 = *v17;
    *v17 = v16;

    if (**(a1 + 48))
    {
      **(a1 + 56) = 1;
    }

    return 1;
  }

  return result;
}

void *sub_1000FE460(uint64_t a1)
{
  if (!a1 || *(a1 + 47) != 1)
  {
    return 0;
  }

  v2 = objc_alloc_init(NSMutableArray);
  v3 = v2;
  if (*(a1 + 520))
  {
    [v2 addObject:?];
  }

  if ([*(a1 + 696) count])
  {
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v4 = [*(a1 + 696) allValues];
    v5 = [v4 countByEnumeratingWithState:&v30 objects:v36 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v31;
      do
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v31 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v30 + 1) + 8 * i);
          v35[0] = 0;
          v35[1] = 0;
          nw_agent_get_uuid();
          v10 = [[NSUUID alloc] initWithUUIDBytes:v35];
          [v3 addObject:v10];
        }

        v6 = [v4 countByEnumeratingWithState:&v30 objects:v36 count:16];
      }

      while (v6);
    }
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v11 = *(a1 + 144);
  v12 = [v11 countByEnumeratingWithState:&v26 objects:v34 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v27;
    do
    {
      for (j = 0; j != v13; j = j + 1)
      {
        if (*v27 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v17 = *(*(&v26 + 1) + 8 * j);
        v18 = [v17 proxyAgentUUID];

        if (v18)
        {
          v19 = [v17 proxyAgentUUID];
          [v3 addObject:v19];
        }

        v20 = [v17 companionProxyAgent];

        if (v20)
        {
          v21 = [v17 companionProxyAgent];
          v22 = [v21 agentUUID];
          [v3 addObject:v22];

          v23 = [v17 companionProxyAgent];
          if (v23)
          {
            v24 = v23;
            v16 = [*(v23 + 72) agentUUID];

            if (v16)
            {
              [v3 addObject:v16];
            }
          }

          else
          {
            v16 = 0;
          }
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v26 objects:v34 count:16];
    }

    while (v13);
  }

  return v3;
}

void sub_1000FE73C(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    if (*(v1 + 160))
    {
      return;
    }

    v1 = *(v1 + 656);
  }

  sub_10011EC08(v1, *(a1 + 40));
}

void sub_1000FE760(uint64_t a1, char a2)
{
  if (sub_1000FE89C(a1))
  {
    v4 = *(a1 + 96);
    v5 = _NRCopyLogObjectForNRUUID();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v7 = *(a1 + 96);
      v8 = _NRCopyLogObjectForNRUUID();
      _NRLogWithArgs();
    }

    v10 = sub_10002A5C4([NRLinkDirectorMessage alloc], *(a1 + 96));
    if (v10)
    {
      *(v10 + 9) = 1;
      v11 = a2;
      v9 = [[NSData alloc] initWithBytes:&v11 length:1];
      sub_10002AB38(v10, 18, v9);
    }

    sub_10002C0E8(v10);
  }
}

id sub_1000FE89C(uint64_t a1)
{
  if ((*(a1 + 63) & 1) == 0)
  {
    v6 = *(a1 + 96);
    v7 = _NRCopyLogObjectForNRUUID();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
LABEL_8:
      v9 = *(a1 + 96);
      v10 = _NRCopyLogObjectForNRUUID();
      _NRLogWithArgs();
    }

    return 0;
  }

  if (*(a1 + 47) != 1)
  {
    return 0;
  }

  result = [*(a1 + 160) ikeClassDEstablished];
  if (result)
  {
    result = [*(a1 + 160) type];
    if (result != 1)
    {
      v3 = *(a1 + 96);
      v4 = _NRCopyLogObjectForNRUUID();
      v5 = _NRLogIsLevelEnabled();

      if (v5)
      {
        goto LABEL_8;
      }

      return 0;
    }
  }

  return result;
}

void sub_1000FE9B0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained && WeakRetained[14] == 1 && WeakRetained[74] == 1)
  {
    v2 = WeakRetained;
    sub_1000FE760(WeakRetained, 1);
    WeakRetained = v2;
  }
}

void sub_1000FEA10(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    memset(v61, 0, 9);
    if ([v3 length] > 8)
    {
      [v4 getBytes:v61 length:9];
      v15 = *(v61 + 5);
      if (LOBYTE(v61[0]))
      {
        if ((*(a1 + 10) & 1) != 0 || *(a1 + 51) == 1)
        {
          dispatch_assert_queue_V2(*(a1 + 136));
          objc_opt_self();
          if (qword_1002290C0 != -1)
          {
            dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
          }

          v16 = qword_1002290B8;
          v17 = v16;
          if (v16)
          {
            v18 = *(v16 + 6);
          }

          else
          {
            v18 = 0;
          }

          v19 = v18;

          v20 = v19 != 0;
          if (v19)
          {
            v21 = v19[3];
            dispatch_assert_queue_V2(v21);
          }
        }

        else
        {
          v20 = 0;
        }

        dispatch_assert_queue_V2(*(a1 + 136));
        v23 = sub_100163A30(NRDLocalDevice, *(a1 + 96));
        v24 = v23;
        if (v23)
        {
          v25 = *(v23 + 144);
        }

        else
        {
          v25 = 0;
        }

        v26 = v25;
        v27 = [v26 getDefaultLinkSubtypeForLinkType:2];

        v28 = sub_1000EA2C8(a1, 2, v27);
        if ((*(a1 + 45) & 1) == 0)
        {
          [v28 startRequested];
        }

        v29 = objc_alloc_init(NSMutableArray);
        if ([v4 length] >= 0xA)
        {
          v30 = [v4 subdataWithRange:{9, objc_msgSend(v4, "length") - 9}];
          v54 = _NSConcreteStackBlock;
          v55 = 3221225472;
          v56 = sub_1000FEFC0;
          v57 = &unk_1001FBAC0;
          v58 = a1;
          v60 = v20;
          v59 = v29;
          NRTLVParse();
        }

        if ([v29 count])
        {
          v47 = v29;
          v48 = v28;
          v49 = v15;
          objc_storeStrong((a1 + 472), v29);
          v31 = objc_alloc_init(NSMutableString);
          v50 = 0u;
          v51 = 0u;
          v52 = 0u;
          v53 = 0u;
          v32 = *(a1 + 472);
          v33 = [v32 countByEnumeratingWithState:&v50 objects:v62 count:16];
          if (v33)
          {
            v34 = v33;
            v35 = *v51;
            do
            {
              for (i = 0; i != v34; i = i + 1)
              {
                if (*v51 != v35)
                {
                  objc_enumerationMutation(v32);
                }

                v37 = *(*(&v50 + 1) + 8 * i);
                v38 = [v31 length];
                [v37 unsignedCharValue];
                ShortStringFromNRLinkSubtype = createShortStringFromNRLinkSubtype();
                v40 = ShortStringFromNRLinkSubtype;
                if (v38)
                {
                  [v31 appendFormat:@"/%@", ShortStringFromNRLinkSubtype];
                }

                else
                {
                  [v31 appendString:ShortStringFromNRLinkSubtype];
                }
              }

              v34 = [v32 countByEnumeratingWithState:&v50 objects:v62 count:16];
            }

            while (v34);
          }

          v46 = "ack";
          if ((v49 & 0x1000000) == 0)
          {
            v46 = "req";
          }

          sub_1000EC910(a1, 1050, @"recv %s %d %@", v41, v42, v43, v44, v45, v46);
          if (sub_1000FEEB4(a1))
          {
            sub_1000EF7A0(a1, 1);
          }

          else
          {
            *(a1 + 26) = 1;
          }

          v29 = v47;
          v28 = v48;
        }
      }

      else
      {
        v22 = "ack ";
        if ((*(v61 + 5) & 0x1000000) == 0)
        {
          v22 = "req";
        }

        sub_1000EC910(a1, 1050, @"recv %s %d", v10, v11, v12, v13, v14, v22);
        *(a1 + 54) = 0;
        sub_1000EF7A0(a1, 0);
      }
    }

    else
    {
      v5 = *(a1 + 96);
      v6 = _NRCopyLogObjectForNRUUID();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      if (IsLevelEnabled)
      {
        v8 = *(a1 + 96);
        v9 = _NRCopyLogObjectForNRUUID();
        [v4 length];
        _NRLogWithArgs();
      }
    }
  }
}

uint64_t sub_1000FEEB4(uint64_t a1)
{
  dispatch_assert_queue_V2(*(a1 + 136));
  objc_opt_self();
  if (qword_1002290C0 != -1)
  {
    dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
  }

  v2 = qword_1002290B8;
  v3 = v2;
  if (v2)
  {
    v4 = *(v2 + 6);
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  v6 = sub_10017F7C8(v5);
  if ((v6 & 1) == 0)
  {
    v7 = *(a1 + 96);
    v8 = _NRCopyLogObjectForNRUUID();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v10 = *(a1 + 96);
      v11 = _NRCopyLogObjectForNRUUID();
      _NRLogWithArgs();
    }
  }

  return v6;
}

uint64_t sub_1000FEFC0(uint64_t a1, uint64_t a2)
{
  if (*a2 != 1)
  {
    return 1;
  }

  if (*(a2 + 1) == 256)
  {
    v3 = *(a2 + 3);
    if (v3 > 8)
    {
      return 1;
    }

    v4 = byte_100196508[v3];
    if (v4 > 0x65)
    {
      if (v4 == 102)
      {
        v30 = *(a1 + 32);
        if (!v30 || *(v30 + 10) != 1 || *(a1 + 48) != 1)
        {
          return 1;
        }

        v26 = *(a1 + 40);
        v27 = 102;
      }

      else
      {
        if (v4 != 103)
        {
          return 1;
        }

        v25 = *(a1 + 32);
        if (!v25 || *(v25 + 51) != 1 || *(a1 + 48) != 1)
        {
          return 1;
        }

        v26 = *(a1 + 40);
        v27 = 103;
      }
    }

    else
    {
      if (byte_100196508[v3])
      {
        if (v4 == 101)
        {
          v6 = *(a1 + 32);
          if (v6)
          {
            dispatch_assert_queue_V2(*(v6 + 136));
            objc_opt_self();
            if (qword_1002290C0 != -1)
            {
              dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
            }

            v7 = qword_1002290B8;
            v8 = v7;
            if (v7)
            {
              v9 = *(v7 + 6);
            }

            else
            {
              v9 = 0;
            }

            v10 = v9;

            v11 = *(a1 + 32);
            if (v11)
            {
              v12 = *(v11 + 96);
            }

            else
            {
              v12 = 0;
            }
          }

          else
          {
            v10 = 0;
            v12 = 0;
          }

          v13 = sub_10017E984(v10, v12);

          if (v13)
          {
            goto LABEL_17;
          }

          v14 = *(a1 + 32);
          if (v14)
          {
            if (*(v14 + 45))
            {
LABEL_17:
              v15 = *(a1 + 40);
              v16 = [NSNumber numberWithUnsignedChar:101];
              [v15 addObject:v16];

LABEL_25:
              return 1;
            }

            v31 = *(v14 + 96);
          }

          v32 = _NRCopyLogObjectForNRUUID();
          IsLevelEnabled = _NRLogIsLevelEnabled();

          if (!IsLevelEnabled)
          {
            return 1;
          }

          v34 = *(a1 + 32);
          if (v34)
          {
            v35 = *(v34 + 96);
          }

          v13 = _NRCopyLogObjectForNRUUID();
LABEL_24:
          _NRLogWithArgs();
          goto LABEL_25;
        }

        return 1;
      }

      v28 = v3 - 1;
      if (v28 > 7u)
      {
        return 1;
      }

      v29 = 0x102020205040201uLL >> (8 * v28);
      if (!v29)
      {
        return 1;
      }

      v26 = *(a1 + 40);
      v27 = v29;
    }

    v13 = [NSNumber numberWithUnsignedChar:v27];
    [v26 addObject:v13];
    goto LABEL_25;
  }

  v17 = *(a1 + 32);
  if (v17)
  {
    v19 = *(v17 + 96);
  }

  v20 = _NRCopyLogObjectForNRUUID();
  v21 = _NRLogIsLevelEnabled();

  if (v21)
  {
    v22 = *(a1 + 32);
    if (v22)
    {
      v23 = *(v22 + 96);
    }

    v13 = _NRCopyLogObjectForNRUUID();
    v36 = bswap32(*(a2 + 1)) >> 16;
    goto LABEL_24;
  }

  return 1;
}

void sub_1000FFA7C(uint64_t a1)
{
  if (a1)
  {
    v10 = 0u;
    v11 = 0u;
    v8 = 0u;
    v9 = 0u;
    v2 = *(a1 + 184);
    v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = *v9;
      do
      {
        v6 = 0;
        do
        {
          if (*v9 != v5)
          {
            objc_enumerationMutation(v2);
          }

          xpc_connection_cancel(*(*(&v8 + 1) + 8 * v6));
          v6 = v6 + 1;
        }

        while (v4 != v6);
        v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
      }

      while (v4);
    }

    [*(a1 + 184) removeAllObjects];
    v7 = *(a1 + 192);
    *(a1 + 192) = 0;
  }
}

void sub_1000FFB90(uint64_t a1)
{
  v2 = sub_1000F1BC0(*(a1 + 32), 1);
  v3 = v2;
  if (!v2 || [(dispatch_queue_t *)v2 state]!= 8)
  {
    v4 = *(a1 + 32);
    if (v4)
    {
      v5 = *(v4 + 96);
    }

    v6 = _NRCopyLogObjectForNRUUID();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v8 = *(a1 + 32);
      if (v8)
      {
        v9 = *(v8 + 96);
      }

      v10 = _NRCopyLogObjectForNRUUID();
      _NRLogWithArgs();
    }

    v11 = *(a1 + 32);
    if (v11)
    {
      dispatch_assert_queue_V2(*(v11 + 136));
      sub_1000F1D90(v11, 1, 0xAu);
      v12 = *(a1 + 32);
      if (v12)
      {
        if (*(v12 + 56) == 1)
        {
          v13 = objc_alloc_init(NRLinkDirectorRequest);
          v15 = v13;
          if (v13)
          {
            v13->_type = 6;
            v13->_allowsSuspendedLink = 0;
            objc_storeStrong(&v13->_timerDescription, @"QR-activation-hysteresis");
            objc_storeStrong(&v15->_cancelIfLinkTypeReady, &off_10020A0C0);
            v15->_attemptImmediately = 1;
            v15->_timeout = 10;
          }

          newValue[0] = _NSConcreteStackBlock;
          newValue[1] = 3221225472;
          newValue[2] = sub_100102068;
          newValue[3] = &unk_1001FD3C8;
          v16 = *(a1 + 32);
          newValue[4] = v16;
          if (v15)
          {
            objc_setProperty_nonatomic_copy(v15, v14, newValue, 48);
            v16 = *(a1 + 32);
          }

          sub_1000EAA20(v16, v15);
        }
      }
    }
  }
}

void sub_1000FFD58(uint64_t a1)
{
  if (a1)
  {
    dispatch_assert_queue_V2(*(a1 + 136));

    sub_1000F1D90(a1, 1, 0xAu);
  }
}

void sub_1000FFDA8(uint64_t a1)
{
  if (a1)
  {
    dispatch_assert_queue_V2(*(a1 + 136));
    if ([*(a1 + 144) count])
    {
      if ((*(a1 + 58) & 1) == 0)
      {
        v2 = *(a1 + 39);
        dispatch_assert_queue_V2(*(a1 + 136));
        v3 = sub_100163A30(NRDLocalDevice, *(a1 + 96));
        v4 = v3;
        if (v3)
        {
          v5 = *(v3 + 144);
        }

        else
        {
          v5 = 0;
        }

        v6 = v5;
        v7 = [v6 getDefaultLinkSubtypeForLinkType:v2];

        v8 = sub_1000EA2C8(a1, v2, v7);
        if (v8 && [v8 state] == 8)
        {
          goto LABEL_28;
        }
      }

      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      v9 = *(a1 + 144);
      v10 = [v9 countByEnumeratingWithState:&v22 objects:v26 count:16];
      if (v10)
      {
        v11 = v10;
        v8 = 0;
        v12 = *v23;
        v13 = -1;
        do
        {
          for (i = 0; i != v11; i = i + 1)
          {
            if (*v23 != v12)
            {
              objc_enumerationMutation(v9);
            }

            v15 = *(*(&v22 + 1) + 8 * i);
            if ([v15 state] == 8 && objc_msgSend(v15, "metric") < v13)
            {
              v16 = v15;

              v13 = [v16 metric];
              v8 = v16;
            }
          }

          v11 = [v9 countByEnumeratingWithState:&v22 objects:v26 count:16];
        }

        while (v11);

        if (!v8 || [v8 state] == 8)
        {
          goto LABEL_28;
        }

        v17 = *(a1 + 96);
        v18 = _NRCopyLogObjectForNRUUID();
        IsLevelEnabled = _NRLogIsLevelEnabled();

        if (IsLevelEnabled)
        {
          v20 = *(a1 + 96);
          v21 = _NRCopyLogObjectForNRUUID();
          _NRLogWithArgs();
        }
      }

      else
      {
        v8 = v9;
      }

      v8 = 0;
LABEL_28:
      sub_10010073C(a1, v8);

      return;
    }

    sub_10010073C(a1, 0);
  }
}