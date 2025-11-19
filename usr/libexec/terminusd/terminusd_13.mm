void sub_100128FC4(id val)
{
  v2 = val;
  objc_initWeak(&location, val);
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_1001293F4;
  v24[3] = &unk_1001FBFA0;
  objc_copyWeak(&v25, &location);
  v3 = objc_retainBlock(v24);
  if (!*(v2 + 248))
  {
    v14 = sub_100123258();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v16 = sub_100123258();
      _NRLogWithArgs();
    }
  }

  v4 = *(v2 + 248);
  v5 = sub_100163B2C(NRDLocalDevice, v4, 0);

  if (!v5)
  {
    v17 = sub_100123258();
    v18 = _NRLogIsLevelEnabled();

    if (v18)
    {
      v19 = sub_100123258();
      _NRLogWithArgs();
    }

    v2 = _os_log_pack_size();
    v3 = (&v24[-1] - ((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0));
    v20 = *__error();
    v21 = _os_log_pack_fill();
    *v21 = 136446210;
    *(v21 + 4) = "[NRDevicePairingCandidateContext registerDevice]";
    sub_100123258();
    _NRLogAbortWithPack();
    __break(1u);
    goto LABEL_16;
  }

  v6 = *(v2 + 40);
  v4 = [v6 operationalProperties];

  if (!v4)
  {
    v4 = +[NRDeviceOperationalProperties copyPropertiesForDefaultPairedPhone];
  }

  sub_10013E868(v4);
  v1 = &qword_100229000;
  if (qword_1002291E8 != -1)
  {
LABEL_16:
    dispatch_once(&qword_1002291E8, &stru_1001FC218);
  }

  v7 = qword_1002291E0;
  v8 = _NRLogIsLevelEnabled();

  if (v8)
  {
    if (v1[61] != -1)
    {
      dispatch_once(&qword_1002291E8, &stru_1001FC218);
    }

    v9 = qword_1002291E0;
    v22 = v5[3];
    _NRLogWithArgs();
  }

  v10 = v5[3];
  sub_100171120(NRDLocalDevice, v10);

  v11 = v5[3];
  v12 = *(v2 + 40);
  v13 = [v12 properties];
  sub_100169CF4(NRDLocalDevice, v11, 0, 0, 0, 0, 0, [v13 isAltAccountPairing], 0, 1, *(v2 + 48), 0, 0, v4, 0, @"nr-modern-device-pairing-registration", v3);

  objc_destroyWeak(&v25);
  objc_destroyWeak(&location);
}

void sub_1001293C4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 96));
  _Unwind_Resume(a1);
}

void sub_1001293F4(uint64_t a1, unsigned __int8 *a2, void *a3)
{
  v13 = a3;
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

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = WeakRetained;
  if (WeakRetained)
  {
    if (sub_100123434(WeakRetained))
    {
      v7 = objc_loadWeakRetained(v6 + 2);
      v8 = v7;
      if (a2)
      {
        if (v7)
        {
          sub_1001246D8(v7, a2, 0xCuLL, 0);
          sub_100129A18(v8);
        }
      }

      else
      {
        sub_1001295DC(v7);
      }

      goto LABEL_13;
    }

    v11 = sub_100123258();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
LABEL_20:
      v8 = sub_100123258();
      _NRLogWithArgs();
LABEL_13:
    }
  }

  else
  {
    v9 = sub_100123258();
    v10 = _NRLogIsLevelEnabled();

    if (v10)
    {
      goto LABEL_20;
    }
  }
}

void sub_1001295DC(uint64_t a1)
{
  if (!a1)
  {
    return;
  }

  v1 = a1;
  v2 = [*(a1 + 40) objectForKeyedSubscript:*(a1 + 64)];
  v3 = *(v1 + 8);
  *(v1 + 8) = 0;

  v4 = [NRDeviceIdentifier alloc];
  if (v2)
  {
    v5 = *(v2 + 248);
  }

  else
  {
    v5 = 0;
  }

  v6 = [v4 initWithUUID:v5];
  v7 = [[NRPairedDevice alloc] initWithDeviceIdentifier:v6];
  v8 = v7;
  if (v2)
  {
    v9 = *(v2 + 40);
  }

  else
  {
    v9 = 0;
  }

  [v7 setDevice:v9];
  v10 = [v8 device];
  [v10 setAuthData:0];

  v11 = &v39;
  v12 = xpc_dictionary_create(0, 0, 0);
  if (!v12)
  {
    v23 = sub_100123258();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v25 = sub_100123258();
      _NRLogWithArgs();
    }

    v2 = _os_log_pack_size();
    v1 = &uuid[-((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
    v26 = *__error();
    v27 = _os_log_pack_fill();
    sub_1000F4320(v27, "nr_xpc_dictionary_create");
    sub_100123258();
    _NRLogAbortWithPack();
LABEL_25:
    v28 = sub_100123258();
    v29 = _NRLogIsLevelEnabled();

    if (!v29)
    {
      goto LABEL_13;
    }

    goto LABEL_28;
  }

  v13 = nrXPCKeyPairedDevice;
  v11 = v12;
  v14 = v8;
  v8 = v14;
  if (!v13)
  {
    goto LABEL_25;
  }

  if (v14)
  {
    *uuid = 0;
    v15 = [NSKeyedArchiver archivedDataWithRootObject:v14 requiringSecureCoding:1 error:uuid];
    v16 = *uuid;
    if (v16 || ![v15 length])
    {
      v33 = sub_100123258();
      v34 = _NRLogIsLevelEnabled();

      if (v34)
      {
        v35 = sub_100123258();
        _NRLogWithArgs();
      }
    }

    else
    {
      xpc_dictionary_set_data(v11, v13, [v15 bytes], objc_msgSend(v15, "length"));
    }

    goto LABEL_13;
  }

  v30 = sub_100123258();
  v31 = _NRLogIsLevelEnabled();

  if (v31)
  {
LABEL_28:
    v32 = sub_100123258();
    _NRLogWithArgs();
  }

LABEL_13:

  if (v2)
  {
    v17 = [*(v2 + 32) cbUUID];
    if (v17)
    {
      v18 = v17;
      v19 = nrXPCKeyBluetoothUUID;
      v20 = v11;
      if (v19)
      {
        *uuid = 0;
        v41 = 0;
        [v18 getUUIDBytes:uuid];
        xpc_dictionary_set_uuid(v20, v19, uuid);
      }

      else
      {
        v36 = sub_100123258();
        v37 = _NRLogIsLevelEnabled();

        if (v37)
        {
          v38 = sub_100123258();
          _NRLogWithArgs();
        }
      }
    }
  }

  sub_1001246D8(v1, 0, 0xCuLL, v11);
  v21 = *(v1 + 17);
  if (v21)
  {
    dispatch_source_cancel(v21);
    v22 = *(v1 + 17);
    *(v1 + 17) = 0;
  }
}

void sub_100129A18(uint64_t a1)
{
  if (a1)
  {
    v17 = [*(a1 + 40) objectForKeyedSubscript:*(a1 + 64)];
    v2 = *(a1 + 64);
    *(a1 + 64) = 0;

    v3 = v17;
    if (v17)
    {
      sub_100123ADC(NRDevicePairingCandidateContext, (v17 + 184));
      v4 = *(v17 + 40);
      *(v17 + 40) = 0;

      sub_1001242E0(v17, 0);
      v5 = *(v17 + 272);
      *(v17 + 272) = 0;

      v6 = *(v17 + 264);
      *(v17 + 264) = 0;

      v7 = *(v17 + 216);
      *(v17 + 216) = 0;

      v8 = *(v17 + 224);
      *(v17 + 224) = 0;

      v9 = *(v17 + 232);
      *(v17 + 232) = 0;

      v10 = *(v17 + 240);
      *(v17 + 240) = 0;

      v3 = v17;
      *(v17 + 10) = 0;
      v11 = *(v17 + 248);
      if (v11)
      {
        v18[0] = _NSConcreteStackBlock;
        v18[1] = 3221225472;
        v18[2] = sub_100129BE4;
        v18[3] = &unk_1001FBF50;
        v18[4] = v17;
        sub_10016BD8C(NRDLocalDevice, v11, v18);
        v12 = *(v17 + 248);
        *(v17 + 248) = 0;

        v3 = v17;
      }
    }

    v13 = *(a1 + 136);
    if (v13)
    {
      dispatch_source_cancel(v13);
      v14 = *(a1 + 136);
      *(a1 + 136) = 0;

      v3 = v17;
    }

    v15 = *(a1 + 112);
    if (v15)
    {
      [v15 setDelegate:0];
      v16 = *(a1 + 112);
      *(a1 + 112) = 0;

      v3 = v17;
    }
  }
}

void sub_100129BE4(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
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

    v4 = *(a1 + 32);
    _NRLogWithArgs();
  }
}

void sub_100129CD0(uint64_t a1, void *a2)
{
  v25 = a2;
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

    v21 = *(a1 + 32);
    _NRLogWithArgs();
  }

  if (v25)
  {
    v3 = v25[9];
  }

  else
  {
    v3 = 0;
  }

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

    v5 = *(a1 + 32);
    v6 = qword_1002291E0;
    if (v4)
    {
      v7 = *(v4 + 1);
    }

    else
    {
      v7 = 0;
    }

    v8 = v7;
    v9 = sub_10015E4BC(v8);
    LogString = _NRKeyCreateLogString();
    _NRLogWithArgs();
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

    v10 = *(a1 + 32);
    v11 = qword_1002291E0;
    if (v4)
    {
      v12 = *(v4 + 2);
    }

    else
    {
      v12 = 0;
    }

    v13 = v12;
    v14 = sub_10015E4BC(v13);
    v23 = _NRKeyCreateLogString();
    _NRLogWithArgs();
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

    v15 = *(a1 + 32);
    v16 = qword_1002291E0;
    if (v4)
    {
      v17 = *(v4 + 3);
      v18 = v17;
      if (v17)
      {
        v19 = *(v17 + 2);
LABEL_33:
        v20 = v19;
        v24 = _NRKeyCreateLogString();
        _NRLogWithArgs();

        goto LABEL_34;
      }
    }

    else
    {
      v18 = 0;
    }

    v19 = 0;
    goto LABEL_33;
  }

LABEL_34:
}

void sub_10012A07C(uint64_t a1, void *a2)
{
  v25 = a2;
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

    v21 = *(a1 + 32);
    _NRLogWithArgs();
  }

  if (v25)
  {
    v3 = v25[10];
  }

  else
  {
    v3 = 0;
  }

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

    v5 = *(a1 + 32);
    v6 = qword_1002291E0;
    if (v4)
    {
      v7 = *(v4 + 1);
    }

    else
    {
      v7 = 0;
    }

    v8 = v7;
    v9 = sub_10015E4BC(v8);
    LogString = _NRKeyCreateLogString();
    _NRLogWithArgs();
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

    v10 = *(a1 + 32);
    v11 = qword_1002291E0;
    if (v4)
    {
      v12 = *(v4 + 2);
    }

    else
    {
      v12 = 0;
    }

    v13 = v12;
    v14 = sub_10015E4BC(v13);
    v23 = _NRKeyCreateLogString();
    _NRLogWithArgs();
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

    v15 = *(a1 + 32);
    v16 = qword_1002291E0;
    if (v4)
    {
      v17 = *(v4 + 3);
      v18 = v17;
      if (v17)
      {
        v19 = *(v17 + 2);
LABEL_33:
        v20 = v19;
        v24 = _NRKeyCreateLogString();
        _NRLogWithArgs();

        goto LABEL_34;
      }
    }

    else
    {
      v18 = 0;
    }

    v19 = 0;
    goto LABEL_33;
  }

LABEL_34:
}

void sub_10012A428(uint64_t a1, void *a2)
{
  v18 = a2;
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

    v15 = *(a1 + 32);
    _NRLogWithArgs();
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

    v3 = *(a1 + 32);
    v4 = qword_1002291E0;
    if (v18)
    {
      v5 = v18[8];
      v6 = v5;
      if (v5)
      {
        v7 = *(v5 + 1);
      }

      else
      {
        v7 = 0;
      }
    }

    else
    {
      v6 = 0;
      v7 = 0;
    }

    v8 = v7;
    v16 = [v8 UUIDString];
    _NRLogWithArgs();
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

    v9 = *(a1 + 32);
    v10 = qword_1002291E0;
    if (v18)
    {
      v11 = v18[8];
      v12 = v11;
      if (v11)
      {
        v13 = *(v11 + 2);
      }

      else
      {
        v13 = 0;
      }
    }

    else
    {
      v12 = 0;
      v13 = 0;
    }

    v14 = v13;
    LogString = _NRKeyCreateLogString();
    _NRLogWithArgs();
  }
}

uint64_t sub_10012A6E4(uint64_t a1)
{
  v2 = *(a1 + 216);
  if (v2)
  {

    goto LABEL_22;
  }

  if (qword_100229238 != -1)
  {
    dispatch_once(&qword_100229238, &stru_1001FC340);
  }

  if (byte_100229230)
  {
LABEL_22:
    WeakRetained = objc_loadWeakRetained((a1 + 16));
    v15 = [*(a1 + 32) cbUUID];
    v16 = sub_100168BE8(NRDLocalDevice, v15, 0);
    if (v16)
    {
      v17 = v16;
      v18 = &qword_100229000;
      if ((v16->_databaseFlags & 1) == 0)
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

        v19 = v17->_nrUUID;
        v80[0] = _NSConcreteStackBlock;
        v80[1] = 3221225472;
        v80[2] = sub_10012BBD8;
        v80[3] = &unk_1001FBF50;
        v80[4] = a1;
        sub_10016BD8C(NRDLocalDevice, v19, v80);

        goto LABEL_65;
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

      v25 = v79;
      v26 = xpc_dictionary_create(0, 0, 0);
      if (v26)
      {
        v27 = nrXPCKeyBluetoothUUID;
        v25 = v26;
        v28 = v15;
        v18 = v28;
        if (v27)
        {
          if (v28)
          {
            *uuid = 0;
            v83 = 0;
            [v28 getUUIDBytes:uuid];
            xpc_dictionary_set_uuid(v25, v27, uuid);
            goto LABEL_45;
          }

          v67 = sub_100123258();
          IsLevelEnabled = _NRLogIsLevelEnabled();

          if (!IsLevelEnabled)
          {
LABEL_45:

            v29 = nrXPCKeyNRUUID;
            v30 = v17->_nrUUID;
            v31 = v25;
            v32 = v30;
            v33 = v32;
            if (v29)
            {
              if (v32)
              {
                *uuid = 0;
                v83 = 0;
                [(NSUUID *)v32 getUUIDBytes:uuid];
                xpc_dictionary_set_uuid(v31, v29, uuid);
LABEL_48:

                if (WeakRetained)
                {
                  sub_1001246D8(WeakRetained, 0xFFFFFFFFFFFFF441, 0xCuLL, v31);
                  sub_100129A18(WeakRetained);
                }

                v81 = 1;

                goto LABEL_70;
              }

              v70 = sub_100123258();
              v71 = _NRLogIsLevelEnabled();

              if (!v71)
              {
                goto LABEL_48;
              }
            }

            else
            {
              v65 = sub_100123258();
              v66 = _NRLogIsLevelEnabled();

              if (!v66)
              {
                goto LABEL_48;
              }
            }

            v72 = sub_100123258();
            _NRLogWithArgs();

            goto LABEL_48;
          }

LABEL_93:
          v69 = sub_100123258();
          _NRLogWithArgs();

          goto LABEL_45;
        }
      }

      else
      {
        v58 = sub_100123258();
        v59 = _NRLogIsLevelEnabled();

        if (v59)
        {
          v60 = sub_100123258();
          _NRLogWithArgs();
        }

        WeakRetained = _os_log_pack_size();
        v15 = v79 - ((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0);
        v61 = *__error();
        v62 = _os_log_pack_fill();
        sub_1000F4320(v62, "nr_xpc_dictionary_create");
        sub_100123258();
        _NRLogAbortWithPack();
      }

      v63 = sub_100123258();
      v64 = _NRLogIsLevelEnabled();

      if (!v64)
      {
        goto LABEL_45;
      }

      goto LABEL_93;
    }

    v20 = v15;
    v21 = objc_opt_self();
    if (v20)
    {
      v22 = v21;
      if (_NRIsUUIDNonZero())
      {
        v23 = sub_100003490();
        dispatch_assert_queue_V2(v23);

        sub_1001619D8();
        v24 = sub_100168BE8(v22, v20, 0);
        if (v24)
        {
          v17 = v24;
LABEL_64:

LABEL_65:
          nrUUID = v17->_nrUUID;
          goto LABEL_66;
        }

        v17 = [NRDLocalDevice alloc];
        if (v17 && (v34 = objc_alloc_init(NSUUID), v17 = sub_10015D20C(v17, v34), v34, v17, v17))
        {
          v35 = 0;
          v36 = v17->_nrUUID;
        }

        else
        {
          v36 = 0;
          v35 = 1;
        }

        v37 = v36;
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

        if ((v35 & 1) == 0)
        {
          v17->_isEphemeral = 1;
          if (!v17->_isEmptyPairing)
          {
            v17->_isEmptyPairing = 1;
            sub_10015D3F4(v17);
          }

          [(NRDLocalDevice *)v17 setBluetoothUUID:v20];
          [qword_100229428 setObject:v17 forKeyedSubscript:v37];
          v38 = v17->_nrUUID;
          v39 = [(NRDLocalDevice *)v17 description];
          sub_1000059A8(v38, 5000, v39, 0);

          goto LABEL_64;
        }

        [(NRDLocalDevice *)v17 setBluetoothUUID:v20];
        [qword_100229428 setObject:v17 forKeyedSubscript:v37];

        if (v17)
        {
          goto LABEL_65;
        }

LABEL_84:
        nrUUID = 0;
LABEL_66:
        objc_storeStrong((a1 + 248), nrUUID);
        v41 = *(a1 + 248);
        v42 = sub_10016D388(NRDLocalDevice, v41);
        v43 = *(a1 + 240);
        *(a1 + 240) = v42;

        if (*(a1 + 240))
        {
          v44 = *(a1 + 248);
          v79[0] = _NSConcreteStackBlock;
          v79[1] = 3221225472;
          v79[2] = sub_10012BCC4;
          v79[3] = &unk_1001FBFF0;
          v79[4] = a1;
          sub_10016D738(NRDLocalDevice, v44, 3, 1, v79);
          if (*(a1 + 224))
          {
            if (*(a1 + 232))
            {
              v81 = 1;
LABEL_70:

              return v81;
            }

            v51 = sub_100123258();
            v52 = _NRLogIsLevelEnabled();

            if (v52)
            {
              goto LABEL_76;
            }
          }

          else
          {
            v49 = sub_100123258();
            v50 = _NRLogIsLevelEnabled();

            if (v50)
            {
LABEL_76:
              v48 = sub_100123258();
              goto LABEL_77;
            }
          }
        }

        else
        {
          v46 = sub_100123258();
          v47 = _NRLogIsLevelEnabled();

          if (v47)
          {
            v48 = sub_100123258();
LABEL_77:
            _NRLogWithArgs();
          }
        }

        v81 = 0;
        goto LABEL_70;
      }

      v55 = sub_10015B480();
      v56 = _NRLogIsLevelEnabled();

      if (v56)
      {
        goto LABEL_82;
      }
    }

    else
    {
      v53 = sub_10015B480();
      v54 = _NRLogIsLevelEnabled();

      if (v54)
      {
LABEL_82:
        v57 = sub_10015B480();
        _NRLogWithArgs();
      }
    }

    v17 = 0;
    goto LABEL_84;
  }

  v3 = [*(a1 + 96) peer];
  if (!v3)
  {
    v73 = sub_100123258();
    v74 = _NRLogIsLevelEnabled();

    if (v74)
    {
      v75 = sub_100123258();
      _NRLogWithArgs();
    }

    return 0;
  }

  v4 = v3;
  v5 = objc_loadWeakRetained((a1 + 16));
  v6 = v5;
  if (v5)
  {
    v7 = v5[14];
    if (v7)
    {
      goto LABEL_12;
    }

    v8 = v6[11];
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;
  v7 = [v9 sharedPairingAgent];

  [v7 setDelegate:v6];
  if (v6)
  {
    objc_storeStrong(v6 + 14, v7);
  }

LABEL_12:
  [v7 setOOBPairingEnabled:1 forPeer:v4];
  v10 = [v7 retrieveOOBDataForPeer:v4];
  if (v10)
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

      v11 = qword_1002291E0;
      LogString = _NRKeyCreateLogString();
      _NRLogWithArgs();
    }

    v12 = v10;
    v13 = *(a1 + 216);
    *(a1 + 216) = v12;
    goto LABEL_20;
  }

  v76 = sub_100123258();
  v77 = _NRLogIsLevelEnabled();

  if (v77)
  {
    v13 = sub_100123258();
    _NRLogWithArgs();
LABEL_20:
  }

  if (v10)
  {
    goto LABEL_22;
  }

  return 0;
}

void sub_10012B2F8(uint64_t a1, unsigned __int8 *a2)
{
  if (a1)
  {
    sub_1001246D8(a1, a2, 0xCuLL, 0);

    sub_100129A18(a1);
  }
}

void sub_10012B340(uint64_t a1)
{
  v2 = *(a1 + 184);
  if (v2)
  {
    v3 = objc_alloc_init(NSMutableArray);
    if (qword_100229238 != -1)
    {
      dispatch_once(&qword_100229238, &stru_1001FC340);
    }

    if ((byte_100229230 & 1) == 0)
    {
      v4 = [[NEIKEv2PrivateNotify alloc] initWithNotifyStatus:50503 notifyData:*(a1 + 216)];
      [v3 addObject:v4];
    }

    v5 = [[NEIKEv2PrivateNotify alloc] initWithNotifyStatus:50504 notifyData:*(a1 + 224)];
    [v3 addObject:v5];

    v6 = [[NEIKEv2PrivateNotify alloc] initWithNotifyStatus:50505 notifyData:*(a1 + 232)];
    [v3 addObject:v6];

    v7 = [[NEIKEv2PrivateNotify alloc] initWithNotifyStatus:50351 notifyData:*(a1 + 240)];
    [v3 addObject:v7];

    LOWORD(location) = 6144;
    v8 = [[NSMutableData alloc] initWithBytes:&location length:2];
    v9 = [[NEIKEv2PrivateNotify alloc] initWithNotifyStatus:48602 notifyData:v8];
    [v3 addObject:v9];

    if (qword_100229228 != -1)
    {
      dispatch_once(&qword_100229228, &stru_1001FC320);
    }

    v10 = qword_100229220;
    v11 = [v10 dataUsingEncoding:4];

    v12 = [[NEIKEv2PrivateNotify alloc] initWithNotifyStatus:48603 notifyData:v11];
    [v3 addObject:v12];

    if (qword_100229218 != -1)
    {
      dispatch_once(&qword_100229218, &stru_1001FC300);
    }

    v13 = qword_100229210;
    v14 = [v13 dataUsingEncoding:4];

    v15 = [[NEIKEv2PrivateNotify alloc] initWithNotifyStatus:48604 notifyData:v14];
    [v3 addObject:v15];

    if (qword_100229298 != -1)
    {
      dispatch_once(&qword_100229298, &stru_1001FC450);
    }

    LOBYTE(location) = byte_100229290;
    v16 = [[NSData alloc] initWithBytes:&location length:1];
    v17 = [[NEIKEv2PrivateNotify alloc] initWithNotifyStatus:48606 notifyData:v16];
    [v3 addObject:v17];

    objc_opt_self();
    LOBYTE(location) = 1;
    v18 = [[NSData alloc] initWithBytes:&location length:1];
    v19 = [[NEIKEv2PrivateNotify alloc] initWithNotifyStatus:51401 notifyData:v18];
    [v3 addObject:v19];

    WeakRetained = objc_loadWeakRetained((a1 + 16));
    v21 = WeakRetained;
    if (WeakRetained)
    {
      v22 = *(WeakRetained + 18);
    }

    else
    {
      v22 = 0;
    }

    v23 = [v22 dataUsingEncoding:4];

    if (v23)
    {
      v24 = [[NEIKEv2PrivateNotify alloc] initWithNotifyStatus:48607 notifyData:v23];
      [v3 addObject:v24];
    }

    v25 = sub_100163A30(NRDLocalDevice, *(a1 + 248));
    v26 = v25;
    if (!v25)
    {
      v36 = sub_100123258();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      if (IsLevelEnabled)
      {
        v38 = sub_100123258();
        _NRLogWithArgs();
      }

      _os_log_pack_size();
      __chkstk_darwin();
      v39 = *__error();
      v40 = _os_log_pack_fill();
      *v40 = 136446210;
      *(v40 + 4) = "[NRDevicePairingCandidateContext sendPairingNotifies]";
      sub_100123258();
      _NRLogAbortWithPack();
      __break(1u);
    }

    location = 0uLL;
    sub_100167D5C(v25, &location);
    v27 = [[NSData alloc] initWithBytes:&location length:16];
    v28 = [[NEIKEv2PrivateNotify alloc] initWithNotifyStatus:50801 notifyData:v27];
    [v3 addObject:v28];

    location = 0uLL;
    sub_100168638(v26, &location);
    v29 = [[NSData alloc] initWithBytes:&location length:16];
    v30 = [[NEIKEv2PrivateNotify alloc] initWithNotifyStatus:50802 notifyData:v29];
    [v3 addObject:v30];

    location = 0uLL;
    sub_1001727AC(v26, &location);
    v31 = [[NSData alloc] initWithBytes:&location length:16];
    v32 = [[NEIKEv2PrivateNotify alloc] initWithNotifyStatus:50811 notifyData:v31];
    [v3 addObject:v32];

    location = 0uLL;
    sub_100172608(v26, &location);
    v33 = [[NSData alloc] initWithBytes:&location length:16];
    v34 = [[NEIKEv2PrivateNotify alloc] initWithNotifyStatus:50812 notifyData:v33];
    [v3 addObject:v34];

    objc_initWeak(&location, a1);
    v35 = *(a1 + 24);
    v41[0] = _NSConcreteStackBlock;
    v41[1] = 3221225472;
    v41[2] = sub_10012BA60;
    v41[3] = &unk_1001FC018;
    objc_copyWeak(&v42, &location);
    [v2 sendPrivateNotifies:v3 maxRetries:10 retryIntervalInMilliseconds:500 callbackQueue:v35 callback:v41];

    objc_destroyWeak(&v42);
    objc_destroyWeak(&location);
  }
}

void sub_10012BA00(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 88));
  _Unwind_Resume(a1);
}

void sub_10012BA20(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  sub_100127188();
}

uint64_t sub_10012BA60(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v6 = WeakRetained;
    if (a2)
    {
      if (qword_1002291E8 != -1)
      {
        dispatch_once(&qword_1002291E8, &stru_1001FC218);
      }

      WeakRetained = _NRLogIsLevelEnabled();
      v4 = v6;
      if (WeakRetained)
      {
        if (qword_1002291E8 == -1)
        {
          goto LABEL_12;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (qword_1002291E8 != -1)
      {
        dispatch_once(&qword_1002291E8, &stru_1001FC218);
      }

      WeakRetained = _NRLogIsLevelEnabled();
      v4 = v6;
      if (WeakRetained)
      {
        if (qword_1002291E8 == -1)
        {
LABEL_12:
          WeakRetained = _NRLogWithArgs();
          v4 = v6;
          goto LABEL_13;
        }

LABEL_16:
        dispatch_once(&qword_1002291E8, &stru_1001FC218);
        goto LABEL_12;
      }
    }
  }

LABEL_13:

  return _objc_release_x1(WeakRetained, v4);
}

void sub_10012BBD8(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
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

    v4 = *(a1 + 32);
    _NRLogWithArgs();
  }
}

void sub_10012BCC4(uint64_t a1, void *a2, void *a3, void *a4)
{
  v16 = a2;
  v8 = a3;
  v9 = a4;
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

    v10 = *(a1 + 32);
    v11 = qword_1002291E0;
    LogString = _NRKeyCreateLogString();
    v15 = _NRKeyCreateLogString();
    _NRLogWithArgs();
  }

  v12 = *(a1 + 32);
  if (v12)
  {
    objc_storeStrong((v12 + 224), a2);
    v13 = *(a1 + 32);
    if (v13)
    {
      objc_storeStrong((v13 + 232), a3);
    }
  }
}

void sub_10012BE3C(uint64_t a1)
{
  v2 = *(a1 + 176);
  v3 = v2;
  if (*(a1 + 208) && [v2 state] == 2)
  {
    v4 = objc_alloc_init(NSMutableData);
    v16 = *(a1 + 208);
    NRTLVAdd();
    if (v16 == 3)
    {
      v5 = *(a1 + 56);
      if (v5)
      {
        v5 = v5[5];
      }

      v6 = v5;
      NRTLVAddData();
    }

    v7 = [[NEIKEv2PrivateNotify alloc] initWithNotifyStatus:50501 notifyData:v4];
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

      v12 = *(a1 + 208);
      _NRLogWithArgs();
    }

    objc_initWeak(&location, a1);
    v17 = v7;
    v8 = [NSArray arrayWithObjects:&v17 count:1];
    v9 = *(a1 + 24);
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_10012D24C;
    v13[3] = &unk_1001FC018;
    objc_copyWeak(&v14, &location);
    [v3 sendPrivateNotifies:v8 maxRetries:10 retryIntervalInMilliseconds:500 callbackQueue:v9 callback:v13];

    objc_destroyWeak(&v14);
    objc_destroyWeak(&location);
  }

  else
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

      v10 = *(a1 + 208);
      v11 = qword_1002291E0;
      [v3 state];
      _NRLogWithArgs();
    }
  }
}

void sub_10012C150(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 80));
  _Unwind_Resume(a1);
}

void sub_10012C17C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
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
      sub_10012BE3C(WeakRetained);
    }

    else if (a2 == 3 || v5)
    {
      sub_100123ADC(NRDevicePairingCandidateContext, WeakRetained + 22);
      v7 = dispatch_time(0, 1000000000);
      v8 = *(a1 + 32);
      if (v8)
      {
        v8 = v8[3];
      }

      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10012D20C;
      block[3] = &unk_1001FC730;
      v9 = v8;
      objc_copyWeak(&v11, (a1 + 40));
      dispatch_after(v7, v9, block);

      objc_destroyWeak(&v11);
    }
  }
}

void sub_10012C330(uint64_t a1, void *a2)
{
  v32 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = [v32 sortedArrayUsingComparator:&stru_1001FC4F0];
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

      v28 = WeakRetained;
      v29 = v4;
      v27 = 3703;
      v25 = "";
      v26 = "[NRDevicePairingCandidateContext setupIKECallbacksForControlSession]_block_invoke_3";
      _NRLogWithArgs();
    }

    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    obj = v4;
    v5 = [obj countByEnumeratingWithState:&v36 objects:v60 count:16];
    if (v5)
    {
      v6 = *v37;
      do
      {
        v7 = 0;
        do
        {
          if (*v37 != v6)
          {
            objc_enumerationMutation(obj);
          }

          v8 = *(*(&v36 + 1) + 8 * v7);
          v9 = [v8 notifyStatus];
          v10 = [v8 notifyData];
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

            v11 = qword_1002291E0;
            v29 = v9;
            v30 = [v10 length];
            v27 = 3188;
            v28 = WeakRetained;
            v25 = "";
            v26 = "[NRDevicePairingCandidateContext handleNotifyCodeForControlSession:payload:]";
            _NRLogWithArgs();
          }

          if (v9 > 50500)
          {
            if (v9 > 50800)
            {
              if (v9 > 51300)
              {
                if (v9 > 51500)
                {
                  if (v9 == 51501)
                  {
                    goto LABEL_42;
                  }

                  v12 = 51601;
                }

                else
                {
                  if (v9 == 51301)
                  {
                    goto LABEL_42;
                  }

                  v12 = 51401;
                }
              }

              else
              {
                if ((v9 - 50801) <= 0xB && ((1 << (v9 - 113)) & 0xC03) != 0)
                {
                  goto LABEL_42;
                }

                v12 = 50901;
              }

              goto LABEL_41;
            }

            if ((v9 - 50503) < 3)
            {
              goto LABEL_42;
            }

            if ((v9 - 50501) < 2)
            {
              v56 = 0;
              v57 = &v56;
              v58 = 0x2020000000;
              v59 = 0;
              v50 = 0;
              v51 = &v50;
              v52 = 0x3032000000;
              v53 = sub_10012CCDC;
              v54 = sub_10012CCEC;
              v55 = 0;
              v48[0] = 0;
              v48[1] = v48;
              v48[2] = 0x3032000000;
              v48[3] = sub_10012CCDC;
              v48[4] = sub_10012CCEC;
              v49 = 0;
              v40 = _NSConcreteStackBlock;
              v41 = 3221225472;
              v42 = sub_10012CCF4;
              v43 = &unk_1001FC040;
              v44 = WeakRetained;
              v45 = &v56;
              v46 = &v50;
              v47 = v48;
              if ((NRTLVParse() & 1) == 0)
              {
                goto LABEL_85;
              }

              if (v9 != 50502)
              {
                v17 = sub_100123258();
                IsLevelEnabled = _NRLogIsLevelEnabled();

                if (IsLevelEnabled)
                {
                  v27 = 3243;
                  v28 = WeakRetained;
                  v25 = "";
                  v26 = "[NRDevicePairingCandidateContext handleNotifyCodeForControlSession:payload:]";
                  v34 = sub_100123258();
                  _NRLogWithArgs();
                }

                goto LABEL_85;
              }

              v13 = v57[3];
              v14 = v51[5];
              v33 = v14;
              v15 = objc_loadWeakRetained(WeakRetained + 2);
              if (!v15)
              {
                goto LABEL_84;
              }

              if (!WeakRetained[26])
              {
                v19 = sub_100123258();
                v31 = _NRLogIsLevelEnabled();

                if (v31)
                {
                  v20 = sub_100123258();
                  v28 = WeakRetained;
                  v29 = v13;
                  v27 = 3011;
                  v25 = "";
                  v26 = "[NRDevicePairingCandidateContext handleAuthMethodResponse:salt:]";
                  _NRLogWithArgs();
                }

                goto LABEL_84;
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

                v29 = v13;
                v30 = v33;
                v27 = 3015;
                v28 = WeakRetained;
                v25 = "";
                v26 = "[NRDevicePairingCandidateContext handleAuthMethodResponse:salt:]";
                _NRLogWithArgs();
              }

              if (WeakRetained[26] == v13)
              {
                if (v13 != 2)
                {
                  goto LABEL_70;
                }

                if (v33)
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

                    v28 = WeakRetained;
                    v29 = v33;
                    v27 = 3025;
                    v25 = "";
                    v26 = "[NRDevicePairingCandidateContext handleAuthMethodResponse:salt:]";
                    _NRLogWithArgs();
                  }

                  objc_storeStrong(WeakRetained + 32, v14);
LABEL_70:
                  sub_10012CF7C(WeakRetained);
LABEL_84:

LABEL_85:
                  _Block_object_dispose(v48, 8);

                  _Block_object_dispose(&v50, 8);
                  _Block_object_dispose(&v56, 8);
                  goto LABEL_48;
                }

                v21 = sub_100123258();
                v22 = _NRLogIsLevelEnabled();

                if (v22)
                {
                  v23 = sub_100123258();
                  v27 = 3022;
                  v28 = WeakRetained;
                  v25 = "";
                  v26 = "[NRDevicePairingCandidateContext handleAuthMethodResponse:salt:]";
                  _NRLogWithArgs();
                }
              }

              else
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

                  v29 = v13;
                  v30 = WeakRetained[26];
                  v27 = 3018;
                  v28 = WeakRetained;
                  v25 = "";
                  v26 = "[NRDevicePairingCandidateContext handleAuthMethodResponse:salt:]";
                  _NRLogWithArgs();
                }
              }

              sub_100124444(WeakRetained, 0xFFFFFFFFFFFFF446);
              goto LABEL_84;
            }

            if ((v9 - 50701) < 2)
            {
LABEL_42:
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

                v28 = WeakRetained;
                v29 = v9;
                v27 = 3290;
                v25 = "";
                v26 = "[NRDevicePairingCandidateContext handleNotifyCodeForControlSession:payload:]";
                _NRLogWithArgs();
              }

              goto LABEL_48;
            }
          }

          else
          {
            if (v9 <= 50350)
            {
              if ((v9 - 48601) < 7 || !v9)
              {
                goto LABEL_42;
              }

              v12 = 48701;
LABEL_41:
              if (v9 == v12)
              {
                goto LABEL_42;
              }

              goto LABEL_71;
            }

            if ((v9 - 50351) <= 0x3E && ((1 << (v9 + 81)) & 0x701C000000000003) != 0)
            {
              goto LABEL_42;
            }
          }

LABEL_71:
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

            v16 = qword_1002291E0;
            v28 = WeakRetained;
            v29 = v9;
            v27 = 3297;
            v25 = "";
            v26 = "[NRDevicePairingCandidateContext handleNotifyCodeForControlSession:payload:]";
            _NRLogWithArgs();
          }

LABEL_48:

          v7 = v7 + 1;
        }

        while (v5 != v7);
        v24 = [obj countByEnumeratingWithState:&v36 objects:v60 count:16];
        v5 = v24;
      }

      while (v24);
    }
  }
}

void sub_10012CCA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, char a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, char a53)
{
  _Block_object_dispose(&a41, 8);
  _Block_object_dispose(&a47, 8);
  _Block_object_dispose(&a53, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10012CCDC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_10012CCF4(void *a1, unsigned __int8 *a2)
{
  v4 = *(a2 + 1);
  v5 = __rev16(v4);
  v6 = *a2;
  if (v6 == 3)
  {
    if (v5 > 0x3F)
    {
      v7 = [[NSData alloc] initWithBytes:a2 + 3 length:v5];
      v8 = a1[7];
      goto LABEL_10;
    }

    v14 = sub_100123258();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (!IsLevelEnabled)
    {
      return 0;
    }

LABEL_23:
    v18 = sub_100123258();
    v20 = a1[4];
    _NRLogWithArgs();

    return 0;
  }

  if (v6 == 2)
  {
    if (v5 > 0x1F)
    {
      v7 = [[NSData alloc] initWithBytes:a2 + 3 length:v5];
      v8 = a1[6];
LABEL_10:
      v9 = *(v8 + 8);
      v10 = *(v9 + 40);
      *(v9 + 40) = v7;

      return 1;
    }

    v12 = sub_100123258();
    v13 = _NRLogIsLevelEnabled();

    if (!v13)
    {
      return 0;
    }

    goto LABEL_23;
  }

  if (v6 != 1)
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

      v19 = a1[4];
      v21 = *a2;
      _NRLogWithArgs();
    }

    return 1;
  }

  if (v4 == 256)
  {
    *(*(a1[5] + 8) + 24) = a2[3];
    return 1;
  }

  v16 = sub_100123258();
  v17 = _NRLogIsLevelEnabled();

  if (v17)
  {
    goto LABEL_23;
  }

  return 0;
}

void sub_10012CF7C(uint64_t a1)
{
  if (*(a1 + 208))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 16));
    *(a1 + 208) = 0;
    v4 = *(a1 + 200);
    if (v4)
    {
      dispatch_source_cancel(v4);
      v5 = *(a1 + 200);
      *(a1 + 200) = 0;
    }

    v6 = xpc_dictionary_create(0, 0, 0);
    if (v6)
    {
      v7 = v6;
      v8 = nrXPCKeyTargetPairingCandidate;
      v9 = [*(a1 + 32) uuid];
      v10 = v7;
      v11 = v9;
      v1 = v11;
      if (v8)
      {
        if (v11)
        {
          *uuid = 0;
          v24 = 0;
          [v11 getUUIDBytes:uuid];
          xpc_dictionary_set_uuid(v10, v8, uuid);
LABEL_8:

          sub_1001246D8(WeakRetained, 0, 8uLL, v10);
          sub_100124A48(WeakRetained);

          return;
        }

        v20 = sub_100123258();
        IsLevelEnabled = _NRLogIsLevelEnabled();

        if (!IsLevelEnabled)
        {
          goto LABEL_8;
        }

        v19 = sub_100123258();
LABEL_17:
        _NRLogWithArgs();

        goto LABEL_8;
      }
    }

    else
    {
      v12 = sub_100123258();
      v13 = _NRLogIsLevelEnabled();

      if (v13)
      {
        v14 = sub_100123258();
        _NRLogWithArgs();
      }

      WeakRetained = _os_log_pack_size();
      v10 = &uuid[-((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
      v15 = *__error();
      v16 = _os_log_pack_fill();
      sub_1000F4320(v16, "nr_xpc_dictionary_create");
      sub_100123258();
      _NRLogAbortWithPack();
    }

    v17 = sub_100123258();
    v18 = _NRLogIsLevelEnabled();

    if (!v18)
    {
      goto LABEL_8;
    }

    v19 = sub_100123258();
    goto LABEL_17;
  }
}

void sub_10012D20C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  sub_100126844();
}

uint64_t sub_10012D24C(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v6 = WeakRetained;
    if (!a2)
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

      sub_100124444(v6, 0xFFFFFFFFFFFFF446);
      goto LABEL_16;
    }

    if (qword_1002291E8 != -1)
    {
      dispatch_once(&qword_1002291E8, &stru_1001FC218);
    }

    WeakRetained = _NRLogIsLevelEnabled();
    v4 = v6;
    if (WeakRetained)
    {
      if (qword_1002291E8 != -1)
      {
        dispatch_once(&qword_1002291E8, &stru_1001FC218);
      }

      WeakRetained = _NRLogWithArgs();
LABEL_16:
      v4 = v6;
    }
  }

  return _objc_release_x1(WeakRetained, v4);
}

BOOL sub_10012D3D4(void *a1, char *a2, unint64_t a3, void *a4)
{
  if (a4)
  {
    *a4 = 0;
  }

  v7 = a1;
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
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

    goto LABEL_21;
  }

  if (!*(v7 + 15))
  {
LABEL_21:
    v15 = 0;
    goto LABEL_22;
  }

  __n_2 = 0;
  next_slot = os_channel_get_next_slot();
  v9 = a3;
  if (a3)
  {
    v9 = a3;
    if (next_slot)
    {
      v9 = a3;
      do
      {
        v14 = __n_2;
        if (v9 < __n_2)
        {
          __n_2 = v9;
          v14 = v9;
        }

        memcpy(0, a2, v14);
        a2 += v14;
        v9 -= v14;
        v10 = *(v7 + 15);
        os_channel_set_slot_properties();
        v11 = *(v7 + 15);
        v12 = os_channel_get_next_slot();
        if (v9)
        {
          v13 = v12 == 0;
        }

        else
        {
          v13 = 1;
        }
      }

      while (!v13);
      v17 = *(v7 + 15);
      if (os_channel_advance_slot())
      {
        v19 = sub_100123258();
        IsLevelEnabled = _NRLogIsLevelEnabled();

        if (IsLevelEnabled)
        {
          v21 = sub_100123258();
          _NRLogWithArgs();
        }
      }

      v18 = *(v7 + 13);
      if (os_channel_sync())
      {
        v22 = sub_100123258();
        v23 = _NRLogIsLevelEnabled();

        if (v23)
        {
          v24 = sub_100123258();
          _NRLogWithArgs();
        }
      }
    }
  }

  if (a4)
  {
    *a4 = a3 - v9;
  }

  v15 = v9 == 0;
  if (v9 && *(v7 + 9) == 1)
  {
    dispatch_resume(*(v7 + 17));
    *(v7 + 9) = 0;
  }

LABEL_22:

  return v15;
}

void sub_10012DB18(id *a1, void *a2)
{
  v5 = a2;
  if (a1)
  {
    v3 = [a1[4] pairingCriteria];
    v4 = [v3 migrationPairing];

    if (v4)
    {
      if (sub_100123380(v5))
      {
        sub_10012DBA8(a1);
      }
    }

    else
    {
      sub_100124A48(a1);
    }
  }
}

void sub_10012DBA8(id *a1)
{
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  obj = a1[7];
  v2 = [obj countByEnumeratingWithState:&v10 objects:v18 count:16];
  if (v2)
  {
    v3 = *v11;
    do
    {
      v4 = 0;
      do
      {
        if (*v11 != v3)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v10 + 1) + 8 * v4);
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

        v6 = v5;
        objc_initWeak(&location, a1);
        v7 = [v6 nrDeviceIdentifier];
        v14[0] = _NSConcreteStackBlock;
        v14[1] = 3221225472;
        v14[2] = sub_10012DE30;
        v14[3] = &unk_1001FBF28;
        objc_copyWeak(&v16, &location);
        v8 = v6;
        v15 = v8;
        sub_1001746C0(NRDLocalDevice, v7, v14);

        objc_destroyWeak(&v16);
        objc_destroyWeak(&location);

        v4 = v4 + 1;
      }

      while (v2 != v4);
      v2 = [obj countByEnumeratingWithState:&v10 objects:v18 count:16];
    }

    while (v2);
  }
}

void sub_10012DE30(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    if (v6)
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

        v30 = v5;
        v32 = v6;
        v26 = 1452;
        v28 = WeakRetained;
        v22 = "";
        v24 = "[NRDevicePairingManagerContext connectToPairingCandidateUsingPairingInfo:]_block_invoke";
        _NRLogWithArgs();
      }

      v8 = v6[2];
      v9 = _NRCreateMACAddressString();

      v10 = v6[3];
      v11 = [v10 unsignedCharValue];

      v35 = v11;
      v12 = [[NSMutableData alloc] initWithBytes:&v35 length:1];
      v13 = v6[2];
      [v12 appendData:v13];

      v14 = WeakRetained[11];
      v15 = [v14 retrievePeripheralWithAddress:v9];

      if (v15 || (v16 = WeakRetained[11], [v16 createPeripheralWithAddress:v12 andIdentifier:0], v15 = objc_claimAutoreleasedReturnValue(), v16, v15))
      {
        v34 = v9;
        v17 = [v15 identifier];
        v18 = sub_1001232AC(WeakRetained, v17);
        if (!v18)
        {
          v19 = [[NRDevicePairingCandidate alloc] initInternal];
          [v19 setMetadata:0];
          [v19 setCbUUID:v17];
          [v19 setNrDeviceIdentifier:*(a1 + 32)];
          v18 = sub_10012E4CC([NRDevicePairingCandidateContext alloc], v19, WeakRetained[3], WeakRetained);
          sub_10012E66C(WeakRetained, v18);
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

          v31 = v5;
          v33 = v15;
          v27 = 1477;
          v29 = v18;
          v23 = "";
          v25 = "[NRDevicePairingManagerContext connectToPairingCandidateUsingPairingInfo:]_block_invoke";
          _NRLogWithArgs();
        }

        if (v18)
        {
          objc_storeStrong(v18 + 11, v15);
          objc_storeStrong(v18 + 7, a3);
        }

        if ([v15 state] == 2)
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
        }

        else if ([v15 state] != 1)
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

          v37[0] = v12;
          v36[0] = CBConnectPeripheralOptionTemporaryIdentityAddress;
          v36[1] = CBConnectPeripheralOptionTemporaryIRKValue;
          v20 = v6[1];
          v37[1] = v20;
          v21 = [NSDictionary dictionaryWithObjects:v37 forKeys:v36 count:2];

          [WeakRetained[11] connectPeripheral:v15 options:v21];
        }

        v9 = v34;
      }

      else
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
      }

      goto LABEL_48;
    }

    if (qword_1002291E8 != -1)
    {
      dispatch_once(&qword_1002291E8, &stru_1001FC218);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_1002291E8 == -1)
      {
LABEL_37:
        _NRLogWithArgs();
        goto LABEL_48;
      }

LABEL_55:
      dispatch_once(&qword_1002291E8, &stru_1001FC218);
      goto LABEL_37;
    }
  }

  else
  {
    if (qword_1002291E8 != -1)
    {
      dispatch_once(&qword_1002291E8, &stru_1001FC218);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_1002291E8 == -1)
      {
        goto LABEL_37;
      }

      goto LABEL_55;
    }
  }

LABEL_48:
}

id *sub_10012E4CC(id *a1, void *a2, void *a3, void *a4)
{
  v8 = a2;
  v9 = a3;
  v10 = a4;
  if (a1)
  {
    v18.receiver = a1;
    v18.super_class = NRDevicePairingCandidateContext;
    v11 = objc_msgSendSuper2(&v18, "init");
    if (!v11)
    {
      v13 = sub_100123258();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      if (IsLevelEnabled)
      {
        v15 = sub_100123258();
        _NRLogWithArgs();
      }

      _os_log_pack_size();
      v16 = *__error();
      v17 = _os_log_pack_fill();
      *v17 = 136446210;
      *(v17 + 4) = "[NRDevicePairingCandidateContext initWithCandidateInfo:queue:pairingManager:]";
      sub_100123258();
      _NRLogAbortWithPack();
    }

    a1 = v11;
    objc_storeWeak(v11 + 2, v10);
    objc_storeStrong(a1 + 3, a3);
    objc_storeStrong(a1 + 4, a2);
  }

  return a1;
}

void sub_10012E66C(uint64_t a1, void *a2)
{
  v3 = a2;
  v8 = v3;
  if (v3)
  {
    v4 = [v3[4] uuid];
    [*(a1 + 40) setObject:v8 forKeyedSubscript:v4];
    v5 = [v8[4] cbUUID];
    if (v5)
    {
      [*(a1 + 48) setObject:v4 forKeyedSubscript:v5];
    }

    goto LABEL_5;
  }

  v6 = sub_100123258();
  IsLevelEnabled = _NRLogIsLevelEnabled();

  if (IsLevelEnabled)
  {
    v4 = sub_100123258();
    _NRLogWithArgs();
LABEL_5:
  }
}

void sub_10012FDA8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained[7];
    v4 = *(a1 + 32);
    v9 = WeakRetained;
    if (v4)
    {
      v4 = v4[4];
    }

    v5 = v4;
    v6 = v3;
    v7 = [v5 nrDeviceIdentifier];
    [v6 removeObject:v7];

    v8 = [v9[4] pairingCriteria];
    LODWORD(v6) = [v8 migrationPairing];

    if (v6 && [v9[7] count])
    {
      sub_1001242E0(*(a1 + 32), 1);
    }

    else
    {
      sub_10012FE90(v9);
    }

    WeakRetained = v9;
  }
}

void sub_10012FE90(uint64_t a1)
{
  v2 = *(a1 + 112);
  if (v2)
  {
    [v2 setDelegate:0];
    v3 = *(a1 + 112);
    *(a1 + 112) = 0;
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v4 = *(a1 + 40);
  v5 = [v4 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v21;
    do
    {
      v8 = 0;
      do
      {
        if (*v21 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = sub_100125108(a1, *(*(&v20 + 1) + 8 * v8));
        sub_10012357C(v9);
        sub_1001242E0(v9, 1);

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v6);
  }

  v10 = *(a1 + 104);
  if (v10)
  {
    [v10 setDelegate:{0, v20}];
    v11 = *(a1 + 104);
    *(a1 + 104) = 0;
  }

  v12 = *(a1 + 88);
  if (v12)
  {
    [v12 setDelegate:0];
    v13 = *(a1 + 88);
    *(a1 + 88) = 0;
  }

  v14 = *(a1 + 96);
  if (v14)
  {
    [v14 setDelegate:0];
    v15 = *(a1 + 96);
    *(a1 + 96) = 0;
  }

  objc_opt_self();
  objc_opt_self();
  if (qword_1002291D8)
  {
    v16 = qword_1002291D8;
  }

  else
  {
    v17 = objc_alloc_init(NRDevicePairingDirector);
    v18 = qword_1002291D8;
    qword_1002291D8 = v17;

    v16 = qword_1002291D8;
    if (!v16)
    {
      goto LABEL_21;
    }
  }

  WeakRetained = objc_loadWeakRetained(v16 + 3);

  if (WeakRetained == a1)
  {
    objc_storeWeak(v16 + 3, 0);
  }

LABEL_21:
}

void sub_100130704(uint64_t a1)
{
  if (a1)
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v2 = *(a1 + 40);
    v3 = [v2 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = *v15;
      do
      {
        v6 = 0;
        do
        {
          if (*v15 != v5)
          {
            objc_enumerationMutation(v2);
          }

          v7 = sub_100125108(a1, *(*(&v14 + 1) + 8 * v6));
          sub_1001234B8(v7);

          v6 = v6 + 1;
        }

        while (v4 != v6);
        v4 = [v2 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v4);
    }

    [*(a1 + 40) removeAllObjects];
    [*(a1 + 48) removeAllObjects];
    v8 = *(a1 + 136);
    if (v8)
    {
      dispatch_source_cancel(v8);
      v9 = *(a1 + 136);
      *(a1 + 136) = 0;
    }

    v10 = *(a1 + 80);
    if (v10)
    {
      [v10 invalidate];
      v11 = *(a1 + 80);
      *(a1 + 80) = 0;
    }

    v12 = *(a1 + 120);
    if (v12)
    {
      if (*(v12 + 15) == 1)
      {
        sub_10014F1DC(v12);
        v13 = *(a1 + 120);
        *(a1 + 120) = 0;
      }
    }

    sub_100130894(a1);
    sub_10012FE90(a1);
  }
}

void sub_100130894(uint64_t a1)
{
  v2 = *(a1 + 128);
  if (v2)
  {
    dispatch_source_cancel(v2);
    v3 = *(a1 + 128);
    *(a1 + 128) = 0;
  }

  v4 = *(a1 + 72);
  if (v4)
  {
    [v4 invalidate];
    v5 = *(a1 + 72);
    *(a1 + 72) = 0;
  }

  v6 = *(a1 + 120);
  if (v6 && *(v6 + 16) == 1)
  {
    sub_10014F1DC(v6);
    v7 = *(a1 + 120);
    *(a1 + 120) = 0;
  }

  v8 = [*(a1 + 32) pairingCriteria];
  v9 = [v8 psm];

  if (v9)
  {
    objc_opt_self();
    if (qword_1002290C0 != -1)
    {
      dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
    }

    v10 = qword_1002290B8;
    v11 = v10;
    if (v10)
    {
      v12 = *(v10 + 5);
    }

    else
    {
      v12 = 0;
    }

    v13 = v12;
    v14 = [*(a1 + 32) pairingCriteria];
    v15 = [v14 psm];
    if (v13)
    {
      v16 = v15;
      v17 = v13[22];
      if ([v17 count])
      {
        v18 = v13[22];
        v19 = [NSNumber numberWithUnsignedShort:v16];
        v20 = [v18 objectForKeyedSubscript:v19];

        if (v20)
        {
          v21 = v13[22];
          v22 = [NSNumber numberWithUnsignedShort:v16];
          [v21 setObject:0 forKeyedSubscript:v22];

          if ([v13[28] count])
          {
            v23 = v13[28];
            v24 = [NSNumber numberWithUnsignedShort:v16];
            [v23 setObject:0 forKeyedSubscript:v24];
          }

          if ([v13[27] count])
          {
            v25 = v13[27];
            v26 = [NSNumber numberWithUnsignedShort:v16];
            [v25 setObject:0 forKeyedSubscript:v26];
          }

          if (qword_100228F70 != -1)
          {
            dispatch_once(&qword_100228F70, &stru_1001FA8E0);
          }

          if (_NRLogIsLevelEnabled())
          {
            if (qword_100228F70 != -1)
            {
              dispatch_once(&qword_100228F70, &stru_1001FA8E0);
            }

            v27 = v13[22];
            v28 = qword_100228F68;
            v37 = 2268;
            v38 = v27;
            v35 = "";
            v36 = "[NRLinkManagerBluetooth stopMonitoringL2CAPChannelConnectionsForPSM:]";
            _NRLogWithArgs();
          }

          sub_1000315B8(v13);
        }
      }

      else
      {
      }
    }
  }

  v29 = [*(a1 + 32) pairingCriteria];
  v30 = [v29 migrationPairing];

  if (v30)
  {
    v31 = *(a1 + 104);
    if (v31)
    {
      [v31 unregisterAllEndpoints];
      [*(a1 + 104) setDelegate:0];
      v32 = *(a1 + 104);
      *(a1 + 104) = 0;
    }

    v33 = *(a1 + 88);
    if (v33)
    {
      [v33 setDelegate:0];
      v34 = *(a1 + 88);
      *(a1 + 88) = 0;
    }
  }
}

void *sub_100130C70(void *a1, void *a2)
{
  v4 = a2;
  if (a1)
  {
    v14.receiver = a1;
    v14.super_class = NRDevicePairingManagerConnection;
    v5 = objc_msgSendSuper2(&v14, "init");
    if (!v5)
    {
      v9 = sub_100123258();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      if (IsLevelEnabled)
      {
        v11 = sub_100123258();
        _NRLogWithArgs();
      }

      _os_log_pack_size();
      v12 = *__error();
      v13 = _os_log_pack_fill();
      *v13 = 136446210;
      *(v13 + 4) = "[NRDevicePairingManagerConnection initWithConnection:]";
      sub_100123258();
      _NRLogAbortWithPack();
    }

    a1 = v5;
    objc_storeStrong(v5 + 1, a2);
    v6 = objc_alloc_init(NSMutableDictionary);
    v7 = a1[2];
    a1[2] = v6;
  }

  return a1;
}

id *sub_100130DE8(id *a1, void *a2, void *a3, void *a4)
{
  v8 = a2;
  v9 = a3;
  v10 = a4;
  if (a1)
  {
    v30.receiver = a1;
    v30.super_class = NRDevicePairingManagerContext;
    v11 = objc_msgSendSuper2(&v30, "init");
    if (!v11)
    {
      v25 = sub_100123258();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      if (IsLevelEnabled)
      {
        v27 = sub_100123258();
        _NRLogWithArgs();
      }

      _os_log_pack_size();
      v28 = *__error();
      v29 = _os_log_pack_fill();
      *v29 = 136446210;
      *(v29 + 4) = "[NRDevicePairingManagerContext initWithInfo:queue:managerConnection:]";
      sub_100123258();
      _NRLogAbortWithPack();
    }

    a1 = v11;
    objc_storeWeak(v11 + 2, v10);
    objc_storeStrong(a1 + 3, a3);
    objc_storeStrong(a1 + 4, a2);
    v12 = [v8 pairingCriteria];
    v13 = [v12 nrDeviceIdentifiers];
    v14 = [v13 count];

    if (v14)
    {
      v15 = [NSMutableSet alloc];
      v16 = [v8 pairingCriteria];
      v17 = [v16 nrDeviceIdentifiers];
      v18 = [v15 initWithArray:v17];
      v19 = a1[7];
      a1[7] = v18;
    }

    v20 = objc_alloc_init(NSMutableDictionary);
    v21 = a1[5];
    a1[5] = v20;

    v22 = objc_alloc_init(NSMutableDictionary);
    v23 = a1[6];
    a1[6] = v22;
  }

  return a1;
}

void sub_100131038(uint64_t a1, void *a2)
{
  v3 = a2;
  v11 = v3;
  if (v3)
  {
    v4 = [*(v3 + 4) cbUUID];
    if (v4)
    {
      [*(a1 + 48) setObject:0 forKeyedSubscript:v4];
    }

    v5 = *(a1 + 40);
    v6 = v11[4];
    v7 = v5;
    v8 = [v6 uuid];
    [v7 setObject:0 forKeyedSubscript:v8];

    sub_1001234B8(v11);
    goto LABEL_5;
  }

  v9 = sub_100123258();
  IsLevelEnabled = _NRLogIsLevelEnabled();

  if (IsLevelEnabled)
  {
    v4 = sub_100123258();
    _NRLogWithArgs();
LABEL_5:
  }
}

void sub_100131138(void **a1, void *a2)
{
  v4 = a2;
  v5 = &qword_100229000;
  if (qword_1002291E8 != -1)
  {
    dispatch_once(&qword_1002291E8, &stru_1001FC218);
  }

  v6 = &qword_100229000;
  if (_NRLogIsLevelEnabled())
  {
    if (qword_1002291E8 != -1)
    {
      dispatch_once(&qword_1002291E8, &stru_1001FC218);
    }

    _NRLogWithArgs();
  }

  v7 = [NSUUID alloc];
  if (!v4)
  {
    goto LABEL_49;
  }

  for (i = v4[2]; ; i = 0)
  {
    v9 = i;
    v10 = [v7 initWithUUIDString:v9];

    if (!v10)
    {
      break;
    }

    if (!v4 || (v11 = v4[13], (v12 = v11) == 0))
    {
      v26 = sub_100123258();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      if (IsLevelEnabled)
      {
        v28 = sub_100123258();
        _NRLogWithArgs();
      }

      v13 = 0;
      goto LABEL_24;
    }

    v13 = v12;
    if ([v12 length] <= 4)
    {
      v29 = sub_100123258();
      v30 = _NRLogIsLevelEnabled();

      if (v30)
      {
        v25 = sub_100123258();
        [v13 length];
        goto LABEL_42;
      }

      goto LABEL_24;
    }

    v40 = 0;
    v39 = 0;
    [v13 getBytes:&v39 length:5];
    if ((v39 & 0xE0) != 0x20)
    {
      if (v5[61] != -1)
      {
        dispatch_once(&qword_1002291E8, &stru_1001FC218);
      }

      v16 = v6[60];
      if (_NRLogIsLevelEnabled())
      {
        if (v5[61] != -1)
        {
          dispatch_once(&qword_1002291E8, &stru_1001FC218);
        }

        v17 = v6[60];
        _NRLogWithArgs();
      }

      goto LABEL_24;
    }

    v14 = [a1[5] objectForKeyedSubscript:v10];
    v15 = v14;
    if (v14)
    {
      if ((*(v14 + 8) & 1) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_17;
    }

    v5 = [[NSData alloc] initWithBytes:&v39 + 1 length:4];
    v18 = [v13 length];
    if (v18 == 5)
    {
      v6 = 0;
    }

    else
    {
      v6 = [v13 subdataWithRange:{5, v18 - 5}];
    }

    v19 = [[NRDevicePairingCandidate alloc] initInternalWithUUID:v10];
    if (v19)
    {
      v20 = v19;
      [v19 setIdentifier:v5];
      [v20 setMetadata:v6];
      [v20 setCbUUID:v10];
      v21 = sub_10012E4CC([NRDevicePairingCandidateContext alloc], v20, a1[3], a1);
      if (v21)
      {
        v15 = v21;
        objc_storeStrong(v21 + 8, a2);
        objc_storeStrong((v15 + 72), v11);
        sub_10012E66C(a1, v15);

        if ((*(v15 + 8) & 1) == 0)
        {
LABEL_16:
          *(v15 + 8) = 1;
          sub_100126038(a1, *(v15 + 32));
        }

LABEL_17:

LABEL_24:
        goto LABEL_25;
      }

      v34 = sub_100123258();
      v35 = _NRLogIsLevelEnabled();

      if (v35)
      {
        v36 = sub_100123258();
        _NRLogWithArgs();
      }
    }

    else
    {
      v31 = sub_100123258();
      v32 = _NRLogIsLevelEnabled();

      if (v32)
      {
        v33 = sub_100123258();
        _NRLogWithArgs();
      }
    }

    v4 = _os_log_pack_size();
    v7 = &v39 - ((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0);
    v37 = *__error();
    v38 = _os_log_pack_fill();
    *v38 = 136446210;
    *(v38 + 4) = "[NRDevicePairingManagerContext handleDiscoveredDeviceEndpoint:]";
    sub_100123258();
    _NRLogAbortWithPack();
LABEL_49:
    ;
  }

  v22 = sub_100123258();
  v23 = _NRLogIsLevelEnabled();

  if (v23)
  {
    v13 = sub_100123258();
    if (v4)
    {
      v24 = v4[2];
    }

    else
    {
      v24 = 0;
    }

    v25 = v24;
LABEL_42:
    _NRLogWithArgs();

    goto LABEL_24;
  }

LABEL_25:
}

void sub_100131774(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained && WeakRetained[16] == *(a1 + 32))
  {
    v18 = WeakRetained;
    if ([WeakRetained[5] count])
    {
      nr_continuous_time();
      NRConvertMachTimeToMicroseconds();
      v21 = 0u;
      v22 = 0u;
      v19 = 0u;
      v20 = 0u;
      v3 = [v18[5] allKeys];
      v4 = [v3 countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v4)
      {
        v5 = v4;
        v6 = *v20;
        do
        {
          for (i = 0; i != v5; i = i + 1)
          {
            if (*v20 != v6)
            {
              objc_enumerationMutation(v3);
            }

            v8 = *(*(&v19 + 1) + 8 * i);
            if (([v8 isEqual:{v18[8], v14, v15, v16, v17}] & 1) == 0)
            {
              v9 = sub_100125108(v18, v8);
              v10 = v9;
              if (v9)
              {
                v11 = *(v9 + 80);
                NRDiffMicroTimeInSeconds();
                if (v12 >= 4.0)
                {
                  if (*(v10 + 8) == 1)
                  {
                    v13 = v12;
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

                      v16 = 873;
                      v17 = v10;
                      v14 = "";
                      v15 = "[NRDevicePairingManagerContext handleCandidateCleanupTimerExpiry]";
                      _NRLogWithArgs();
                    }

                    *(v10 + 8) = 0;
                    sub_1001236B4(v18, *(v10 + 32));
                    v12 = v13;
                  }

LABEL_25:
                  if (v12 >= 8.0)
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

                      v16 = 879;
                      v17 = v10;
                      v14 = "";
                      v15 = "[NRDevicePairingManagerContext handleCandidateCleanupTimerExpiry]";
                      _NRLogWithArgs();
                    }

                    sub_100131038(v18, v10);
                  }
                }
              }

              else
              {
                NRDiffMicroTimeInSeconds();
                if (v12 >= 4.0)
                {
                  goto LABEL_25;
                }
              }

              continue;
            }
          }

          v5 = [v3 countByEnumeratingWithState:&v19 objects:v23 count:16];
        }

        while (v5);
      }
    }

    WeakRetained = v18;
  }
}

void sub_100131A7C(uint64_t a1, void *a2)
{
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    objc_storeStrong(WeakRetained + 18, a2);
  }
}

void sub_100131AE4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained && WeakRetained[17] == *(a1 + 32) && WeakRetained[8])
  {
    v7 = WeakRetained;
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

      v3 = v7[5];
      v4 = v7[8];
      v5 = qword_1002291E0;
      v6 = [v3 objectForKeyedSubscript:v4];
      _NRLogWithArgs();
    }

    sub_1001246D8(v7, 0xFFFFFFFFFFFFF444, 0xCuLL, 0);
    sub_100129A18(v7);
    WeakRetained = v7;
  }
}

void sub_100131C38(uint64_t a1, void *a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 16));
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

    if (*(a1 + 208))
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

        v29 = *(a1 + 208);
        _NRLogWithArgs();
      }

      v5 = xpc_dictionary_create(0, 0, 0);
      if (v5)
      {
        v6 = v5;
        v7 = [*(a1 + 32) uuid];
        v8 = nrXPCKeyTargetPairingCandidate;
        v9 = v6;
        v10 = v7;
        a2 = v10;
        if (v8)
        {
          if (v10)
          {
            *uuid = 0;
            v32 = 0;
            [v10 getUUIDBytes:uuid];
            xpc_dictionary_set_uuid(v9, v8, uuid);
LABEL_19:

            sub_1001246D8(WeakRetained, 0xFFFFFFFFFFFFF82BLL, 8uLL, v9);
            goto LABEL_23;
          }

          v27 = sub_100123258();
          IsLevelEnabled = _NRLogIsLevelEnabled();

          if (!IsLevelEnabled)
          {
            goto LABEL_19;
          }

          v26 = sub_100123258();
LABEL_33:
          _NRLogWithArgs();

          goto LABEL_19;
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

        WeakRetained = _os_log_pack_size();
        v9 = &uuid[-((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
        v22 = *__error();
        v23 = _os_log_pack_fill();
        sub_1000F4320(v23, "nr_xpc_dictionary_create");
        sub_100123258();
        _NRLogAbortWithPack();
        __break(1u);
      }

      v24 = sub_100123258();
      v25 = _NRLogIsLevelEnabled();

      if (!v25)
      {
        goto LABEL_19;
      }

      v26 = sub_100123258();
      goto LABEL_33;
    }

    *(a1 + 208) = a2;
    if (!*(a1 + 200))
    {
      v11 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, *(a1 + 24));
      v12 = dispatch_time(0x8000000000000000, 10000000000);
      dispatch_source_set_timer(v11, v12, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);
      objc_initWeak(&location, a1);
      *uuid = _NSConcreteStackBlock;
      v32 = 3221225472;
      v33 = sub_100132154;
      v34 = &unk_1001FD0D8;
      objc_copyWeak(&v36, &location);
      v13 = v11;
      v35 = v13;
      dispatch_source_set_event_handler(v13, uuid);
      dispatch_activate(v13);
      v14 = *(a1 + 200);
      *(a1 + 200) = v13;
      v15 = v13;

      objc_destroyWeak(&v36);
      objc_destroyWeak(&location);
    }

    sub_100126844(a1);
  }

  else
  {
    v16 = sub_100123258();
    v17 = _NRLogIsLevelEnabled();

    if (v17)
    {
      v18 = sub_100123258();
      _NRLogWithArgs();
    }
  }

LABEL_23:
}

void sub_100132154(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained && WeakRetained[25] == *(a1 + 32))
  {
    v3 = WeakRetained;
    sub_100124444(WeakRetained, 0xFFFFFFFFFFFFF444);
    WeakRetained = v3;
  }
}

void sub_1001321B8(uint64_t a1, void *a2)
{
  v8 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = WeakRetained[33];
  }

  else
  {
    v5 = 0;
  }

  if (v5 == *(a1 + 32))
  {
    v6 = [NSMutableData _newZeroingDataWithBytes:0 length:0];
    [v6 appendData:v8];
    if (v4)
    {
      [v6 appendData:*(v4 + 9)];
      objc_storeStrong(v4 + 34, v6);
      v7 = *(v4 + 33);
      *(v4 + 33) = 0;
    }

    else
    {
      [v6 appendData:0];
    }
  }
}

void sub_100132284(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 64));

  if (WeakRetained)
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
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

    memset(v13, 0, sizeof(v13));
    ccsha256_di();
    [v3 length];
    [v3 bytes];
    [v4 length];
    [v4 bytes];
    ccpbkdf2_hmac();
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

    v5 = objc_loadWeakRetained((a1 + 64));
    if (v5)
    {
      v6 = [NSData _newZeroingDataWithBytes:v13 length:32];
      cc_clear();
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100132564;
      block[3] = &unk_1001FCE50;
      v7 = *(a1 + 48);
      v8 = *(a1 + 56);
      v11 = v6;
      v12 = v8;
      v9 = v6;
      dispatch_async(v7, block);
    }

    else
    {
      cc_clear();
    }
  }
}

void sub_100132578(id a1)
{
  v1 = _NRCopySerialQueueAttr();
  v2 = dispatch_queue_attr_make_with_qos_class(v1, QOS_CLASS_USER_INITIATED, 0);

  if (!v2)
  {
    v7 = sub_100123258();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v9 = sub_100123258();
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
    sub_100123258();
    _NRLogAbortWithPack();
LABEL_9:
    v12 = sub_100123258();
    v13 = _NRLogIsLevelEnabled();

    if (v13)
    {
      v14 = sub_100123258();
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
    sub_100123258();
    _NRLogAbortWithPack();
  }

  v3 = "terminusd.Pairing.Crypto";
  v4 = dispatch_queue_create("terminusd.Pairing.Crypto", v2);
  if (!v4)
  {
    goto LABEL_9;
  }

  v5 = v4;

  v6 = qword_1002291F8;
  qword_1002291F8 = v5;
}

void sub_100132800(uint64_t a1, int64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  objc_opt_self();
  v8 = v6;
  if (!v8)
  {
    v11 = sub_100123258();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v13 = sub_100123258();
      _NRLogWithArgs();
    }

LABEL_11:
    _os_log_pack_size();
    __chkstk_darwin();
    v17 = *__error();
    v18 = _os_log_pack_fill();
    *v18 = 136446210;
    *(v18 + 4) = "nr_xpc_dictionary_create_reply";
    sub_100123258();
    _NRLogAbortWithPack();
  }

  v19 = v8;
  reply = xpc_dictionary_create_reply(v8);
  if (!reply)
  {
    v14 = sub_100123258();
    v15 = _NRLogIsLevelEnabled();

    if (v15)
    {
      v16 = sub_100123258();
      _NRLogWithArgs();
    }

    goto LABEL_11;
  }

  v10 = reply;

  xpc_dictionary_set_int64(v10, nrXPCKeyResult, a2);
  xpc_connection_send_message(v7, v10);
}

void sub_100132A8C(uint64_t a1, void *a2, void *a3)
{
  xdict = a2;
  v6 = a3;
  if (a1)
  {
    v160 = v6;
    v162 = [*(a1 + 16) objectForKeyedSubscript:v6];
    if (!v162)
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

      goto LABEL_133;
    }

    v7 = xpc_dictionary_get_value(xdict, nrXPCKeyPairingManagerOperation);
    object = v7;
    v8 = v7;
    if (v7)
    {
      if (xpc_get_type(v7) == &_xpc_type_uint64)
      {
        value = xpc_uint64_get_value(v8);
        if (value <= 5)
        {
          if (value <= 2)
          {
            if (value != 1)
            {
              v10 = object;
              if (value == 2)
              {
                v11 = xdict;
                v12 = v162;
                v157 = v11;
                v13 = xpc_dictionary_get_value(v11, nrXPCKeyPairingManagers);
                xarray = v13;
                if (v13 && xpc_get_type(v13) == &_xpc_type_array)
                {
                  v175 = 0;
                  v176 = &v175;
                  v177 = 0x2020000000;
                  v178 = 0;
                  v169 = 0;
                  v170 = &v169;
                  v171 = 0x3032000000;
                  v172 = sub_10012CCDC;
                  v173 = sub_10012CCEC;
                  v174 = [[NSMutableSet alloc] initWithCapacity:xpc_array_get_count(xarray)];
                  applier[0] = _NSConcreteStackBlock;
                  applier[1] = 3221225472;
                  applier[2] = sub_1001395A0;
                  applier[3] = &unk_1001FC130;
                  applier[4] = &v175;
                  applier[5] = &v169;
                  xpc_array_apply(xarray, applier);
                  if ((v176[3] & 1) != 0 || ![v170[5] count])
                  {
                    v91 = sub_100123258();
                    IsLevelEnabled = _NRLogIsLevelEnabled();

                    if (IsLevelEnabled)
                    {
                      v93 = sub_100123258();
                      _NRLogWithArgs();
                    }

                    v28 = v12[1];
                    sub_100132800(NRDevicePairingDirector, -2005, v11, v28);
                  }

                  else
                  {
                    v166 = 0u;
                    v167 = 0u;
                    v164 = 0u;
                    v165 = 0u;
                    obj = v170[5];
                    v14 = [obj countByEnumeratingWithState:&v164 objects:length count:16];
                    if (v14)
                    {
                      v15 = *v165;
                      do
                      {
                        v16 = 0;
                        do
                        {
                          if (*v165 != v15)
                          {
                            objc_enumerationMutation(obj);
                          }

                          v17 = *(*(&v164 + 1) + 8 * v16);
                          v18 = v12[2];
                          v19 = [v18 objectForKeyedSubscript:v17];

                          if (v19)
                          {
                            if (qword_1002291E8 != -1)
                            {
                              dispatch_once(&qword_1002291E8, &stru_1001FC218);
                            }

                            v20 = qword_1002291E0;
                            v21 = _NRLogIsLevelEnabled();

                            if (v21)
                            {
                              if (qword_1002291E8 != -1)
                              {
                                dispatch_once(&qword_1002291E8, &stru_1001FC218);
                              }

                              v22 = qword_1002291E0;
                              _NRLogWithArgs();
                            }

                            sub_100129A18(v19);
                            sub_100130704(v19);
                            v23 = v12[2];
                            [v23 setObject:0 forKeyedSubscript:v17];
LABEL_26:

                            goto LABEL_27;
                          }

                          *(v176 + 24) = 1;
                          if (qword_1002291E8 != -1)
                          {
                            dispatch_once(&qword_1002291E8, &stru_1001FC218);
                          }

                          v24 = qword_1002291E0;
                          v25 = _NRLogIsLevelEnabled();

                          if (v25)
                          {
                            if (qword_1002291E8 != -1)
                            {
                              dispatch_once(&qword_1002291E8, &stru_1001FC218);
                            }

                            v23 = qword_1002291E0;
                            _NRLogWithArgs();
                            goto LABEL_26;
                          }

LABEL_27:

                          v16 = v16 + 1;
                        }

                        while (v14 != v16);
                        v26 = [obj countByEnumeratingWithState:&v164 objects:length count:16];
                        v14 = v26;
                      }

                      while (v26);
                    }

                    v27 = *(v176 + 24);
                    v28 = v12[1];
                    if (v27)
                    {
                      v29 = -2005;
                    }

                    else
                    {
                      v29 = 0;
                    }

                    sub_100132800(NRDevicePairingDirector, v29, v157, v28);
                  }

                  _Block_object_dispose(&v169, 8);
                  _Block_object_dispose(&v175, 8);
                }

                else
                {
                  v88 = sub_100123258();
                  v89 = _NRLogIsLevelEnabled();

                  if (v89)
                  {
                    v90 = sub_100123258();
                    _NRLogWithArgs();
                  }

                  sub_100132800(NRDevicePairingDirector, -2005, v157, v12[1]);
                }

                goto LABEL_131;
              }

LABEL_104:
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

              sub_100132800(NRDevicePairingDirector, -2003, xdict, v162[1]);
              goto LABEL_132;
            }

            v48 = xdict;
            v49 = v162;
            v50 = objc_opt_class();
            v51 = v48;
            v52 = v51;
            if (v51)
            {
              if (nrXPCKeyPairingManagerInfo)
              {
                if (v50)
                {
                  length[0] = 0;
                  data = xpc_dictionary_get_data(v51, nrXPCKeyPairingManagerInfo, length);
                  if (data)
                  {
                    if (length[0])
                    {
                      v54 = [NSData alloc];
                      v55 = [v54 initWithBytesNoCopy:data length:length[0] freeWhenDone:0];
                      *&v164 = 0;
                      v56 = [NSKeyedUnarchiver unarchivedObjectOfClass:v50 fromData:v55 error:&v164];
                      v57 = v164;
                      if (v57 || !v56)
                      {
                        v139 = sub_100123258();
                        v140 = _NRLogIsLevelEnabled();

                        if (v140)
                        {
                          v141 = sub_100123258();
                          v154 = v50;
                          v155 = v57;
                          _NRLogWithArgs();
                        }

                        v58 = 0;
                      }

                      else
                      {
                        v58 = v56;
                      }

                      if (v58)
                      {
                        v59 = v49[2];
                        v60 = [v58 uuid];
                        v61 = [v59 objectForKeyedSubscript:v60];

                        if (v61)
                        {
                          v142 = sub_100123258();
                          v143 = _NRLogIsLevelEnabled();

                          if (v143)
                          {
                            v144 = sub_100123258();
                            _NRLogWithArgs();
                          }

                          sub_100132800(NRDevicePairingDirector, -2005, v52, v49[1]);

                          goto LABEL_130;
                        }

                        v62 = [v58 pairingCriteria];
                        v63 = v62;
                        if (!v62)
                        {
                          v145 = sub_100123258();
                          v146 = _NRLogIsLevelEnabled();

                          if (v146)
                          {
                            v147 = sub_100123258();
                            _NRLogWithArgs();
                          }

                          goto LABEL_231;
                        }

                        if ([v62 pairingTransport] != 1)
                        {
                          v148 = sub_100123258();
                          v149 = _NRLogIsLevelEnabled();

                          if (v149)
                          {
                            v150 = sub_100123258();
                            [v63 pairingTransport];
                            _NRLogWithArgs();
                          }

                          goto LABEL_231;
                        }

                        v64 = [v58 pairingCriteria];
                        if ([v64 deviceType] == 1)
                        {
                        }

                        else
                        {
                          v151 = [v58 pairingCriteria];
                          v152 = [v151 deviceType] == 3;

                          if (!v152)
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

                              v153 = qword_1002291E0;
                              [v63 deviceType];
                              _NRLogWithArgs();
                            }

                            goto LABEL_231;
                          }
                        }

                        v65 = [v58 pairingCriteria];
                        if ([v65 psm])
                        {
                          v66 = [v58 pairingCriteria];
                          v67 = [v66 deviceType] == 3;

                          if (!v67)
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

                              v68 = qword_1002291E0;
                              v69 = [v58 pairingCriteria];
                              [v69 psm];
                              [v63 deviceType];
                              _NRLogWithArgs();
                            }

LABEL_231:
                            sub_100132800(NRDevicePairingDirector, -2005, v52, v49[1]);
LABEL_129:

LABEL_130:
                            goto LABEL_131;
                          }
                        }

                        else
                        {
                        }

                        v70 = [v58 pairingCriteria];
                        if ([v70 psm])
                        {
                        }

                        else
                        {
                          v71 = [v58 pairingCriteria];
                          v72 = [v71 deviceType] == 3;

                          if (v72)
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

                              v73 = qword_1002291E0;
                              [v63 deviceType];
                              _NRLogWithArgs();
                            }

                            goto LABEL_231;
                          }
                        }

                        v74 = sub_100130DE8([NRDevicePairingManagerContext alloc], v58, *(a1 + 8), v49);
                        v75 = v49[2];
                        v76 = [v58 uuid];
                        [v75 setObject:v74 forKeyedSubscript:v76];

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

                          v77 = qword_1002291E0;
                          v156 = [v58 fullDescription];
                          _NRLogWithArgs();
                        }

                        sub_100132800(NRDevicePairingDirector, 0, v52, v49[1]);

                        goto LABEL_129;
                      }

LABEL_202:
                      v129 = sub_100123258();
                      v130 = _NRLogIsLevelEnabled();

                      if (v130)
                      {
                        v131 = sub_100123258();
                        _NRLogWithArgs();
                      }

                      sub_100132800(NRDevicePairingDirector, -2005, v52, v49[1]);
                      goto LABEL_130;
                    }

                    v126 = sub_100123258();
                    v127 = _NRLogIsLevelEnabled();

                    if (v127)
                    {
                      goto LABEL_200;
                    }
                  }

                  else
                  {
                    v124 = sub_100123258();
                    v125 = _NRLogIsLevelEnabled();

                    if (v125)
                    {
LABEL_200:
                      v128 = sub_100123258();
                      _NRLogWithArgs();
                    }
                  }

                  goto LABEL_202;
                }

                v106 = sub_100123258();
                v107 = _NRLogIsLevelEnabled();

                if (v107)
                {
                  goto LABEL_180;
                }

LABEL_181:

                goto LABEL_202;
              }

              v100 = sub_100123258();
              v101 = _NRLogIsLevelEnabled();

              if ((v101 & 1) == 0)
              {
                goto LABEL_181;
              }
            }

            else
            {
              v94 = sub_100123258();
              v95 = _NRLogIsLevelEnabled();

              if ((v95 & 1) == 0)
              {
                goto LABEL_181;
              }
            }

LABEL_180:
            v108 = sub_100123258();
            _NRLogWithArgs();

            goto LABEL_181;
          }

          if (value != 3)
          {
            v10 = object;
            if (value != 4)
            {
              goto LABEL_104;
            }

            v30 = xdict;
            v31 = v162;
            v32 = v30;
            v33 = v32;
            if (v32)
            {
              if (nrXPCKeyPairingManager)
              {
                uuid = xpc_dictionary_get_uuid(v32, nrXPCKeyPairingManager);
                if (uuid)
                {
                  v35 = uuid;
                  if (!uuid_is_null(uuid))
                  {
                    v36 = [[NSUUID alloc] initWithUUIDBytes:v35];

                    if (v36)
                    {
                      v37 = [v31[2] objectForKeyedSubscript:v36];
                      v38 = v37;
                      if (v37)
                      {
                        v39 = *(v37 + 72);
                        v10 = object;
                        if (!v39)
                        {
                          v40 = *(v38 + 32);
                          v41 = [v40 pairingCriteria];
                          if (![v41 psm])
                          {
                            v78 = *(v38 + 120);
                            if (!v78 || (v79 = *(v38 + 120), (v3 = v79) == 0) || (v79[16] & 1) == 0)
                            {
                              v80 = [*(v38 + 32) pairingCriteria];
                              v81 = [v80 migrationPairing];

                              if (v81)
                              {
                                v82 = *(v38 + 88);
                                if (v78)
                                {
                                }

                                v10 = object;
                                if (v82)
                                {
                                  goto LABEL_64;
                                }
                              }

                              else
                              {
                                if (v78)
                                {
                                }

                                v10 = object;
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

                              v47 = -2005;
                              goto LABEL_76;
                            }
                          }

                          v39 = v40;
                          v10 = object;
                        }

LABEL_64:
                        sub_100130894(v38);
LABEL_75:
                        v47 = 0;
LABEL_76:
                        sub_100132800(NRDevicePairingDirector, v47, v33, v31[1]);

LABEL_77:
                        goto LABEL_132;
                      }

                      v132 = sub_100123258();
                      v133 = _NRLogIsLevelEnabled();

                      if (v133)
                      {
                        goto LABEL_210;
                      }

LABEL_211:
                      v47 = -2005;
                      v10 = object;
                      goto LABEL_76;
                    }

LABEL_189:
                    v116 = sub_100123258();
                    v117 = _NRLogIsLevelEnabled();

                    if (v117)
                    {
                      goto LABEL_195;
                    }

                    goto LABEL_196;
                  }

                  v113 = sub_100123258();
                  v114 = _NRLogIsLevelEnabled();

                  if (v114)
                  {
                    goto LABEL_187;
                  }

LABEL_188:

                  goto LABEL_189;
                }

                v109 = sub_100123258();
                v110 = _NRLogIsLevelEnabled();

                if (!v110)
                {
                  goto LABEL_188;
                }
              }

              else
              {
                v102 = sub_100123258();
                v103 = _NRLogIsLevelEnabled();

                if (!v103)
                {
                  goto LABEL_188;
                }
              }
            }

            else
            {
              v96 = sub_100123258();
              v97 = _NRLogIsLevelEnabled();

              if (!v97)
              {
                goto LABEL_188;
              }
            }

LABEL_187:
            v115 = sub_100123258();
            _NRLogWithArgs();

            goto LABEL_188;
          }

          sub_10013456C(a1, xdict, v162);
LABEL_131:
          v10 = object;
          goto LABEL_132;
        }

        if (value <= 9)
        {
          if (value != 6)
          {
            v10 = object;
            if (value != 9)
            {
              goto LABEL_104;
            }

LABEL_132:

LABEL_133:
            v6 = v160;
            goto LABEL_134;
          }

          sub_100135F94(a1, xdict, v162);
          goto LABEL_131;
        }

        if (value == 10)
        {
          sub_100136854(a1, xdict, v162);
          goto LABEL_131;
        }

        v10 = object;
        if (value != 11)
        {
          goto LABEL_104;
        }

        v42 = xdict;
        v31 = v162;
        v43 = v42;
        v33 = v43;
        if (v43)
        {
          if (nrXPCKeyPairingManager)
          {
            v44 = xpc_dictionary_get_uuid(v43, nrXPCKeyPairingManager);
            if (v44)
            {
              v45 = v44;
              if (!uuid_is_null(v44))
              {
                v36 = [[NSUUID alloc] initWithUUIDBytes:v45];

                if (v36)
                {
                  v46 = [v31[2] objectForKeyedSubscript:v36];
                  v38 = v46;
                  if (v46)
                  {
                    v10 = object;
                    if (*(v46 + 64))
                    {
                      sub_100129A18(v46);
                      goto LABEL_75;
                    }

                    v136 = sub_100123258();
                    v137 = _NRLogIsLevelEnabled();

                    if (!v137)
                    {
                      goto LABEL_211;
                    }
                  }

                  else
                  {
                    v134 = sub_100123258();
                    v135 = _NRLogIsLevelEnabled();

                    if (!v135)
                    {
                      goto LABEL_211;
                    }
                  }

LABEL_210:
                  v138 = sub_100123258();
                  _NRLogWithArgs();

                  goto LABEL_211;
                }

LABEL_194:
                v121 = sub_100123258();
                v122 = _NRLogIsLevelEnabled();

                if (v122)
                {
LABEL_195:
                  v123 = sub_100123258();
                  _NRLogWithArgs();
                }

LABEL_196:
                sub_100132800(NRDevicePairingDirector, -2005, v33, v31[1]);
                goto LABEL_77;
              }

              v118 = sub_100123258();
              v119 = _NRLogIsLevelEnabled();

              if (v119)
              {
                goto LABEL_192;
              }

LABEL_193:

              goto LABEL_194;
            }

            v111 = sub_100123258();
            v112 = _NRLogIsLevelEnabled();

            if (!v112)
            {
              goto LABEL_193;
            }
          }

          else
          {
            v104 = sub_100123258();
            v105 = _NRLogIsLevelEnabled();

            if (!v105)
            {
              goto LABEL_193;
            }
          }
        }

        else
        {
          v98 = sub_100123258();
          v99 = _NRLogIsLevelEnabled();

          if (!v99)
          {
            goto LABEL_193;
          }
        }

LABEL_192:
        v120 = sub_100123258();
        _NRLogWithArgs();

        goto LABEL_193;
      }

      v85 = sub_100123258();
      v86 = _NRLogIsLevelEnabled();

      if (v86)
      {
        goto LABEL_159;
      }
    }

    else
    {
      v83 = sub_100123258();
      v84 = _NRLogIsLevelEnabled();

      if (v84)
      {
LABEL_159:
        v87 = sub_100123258();
        _NRLogWithArgs();
      }
    }

    sub_100134330(a1, v160);
    goto LABEL_131;
  }

LABEL_134:
}

void sub_1001342F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37)
{
  _Block_object_dispose(&a37, 8);
  _Block_object_dispose((v37 - 256), 8);
  _Unwind_Resume(a1);
}

void sub_100134330(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v4 = [*(a1 + 16) objectForKeyedSubscript:v3];
    v5 = v4;
    if (v4)
    {
      v6 = *(v4 + 8);
      if (v6)
      {
        xpc_connection_cancel(v6);
        v7 = *(v5 + 8);
        *(v5 + 8) = 0;
      }

      v17 = 0u;
      v18 = 0u;
      v15 = 0u;
      v16 = 0u;
      v8 = *(v5 + 16);
      v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v16;
        do
        {
          for (i = 0; i != v10; i = i + 1)
          {
            if (*v16 != v11)
            {
              objc_enumerationMutation(v8);
            }

            v13 = [*(v5 + 16) objectForKeyedSubscript:*(*(&v15 + 1) + 8 * i)];
            sub_100129A18(v13);
            sub_100130704(v13);
          }

          v10 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
        }

        while (v10);
      }

      [*(v5 + 16) removeAllObjects];
      [*(a1 + 16) setObject:0 forKeyedSubscript:v3];
      if (![*(a1 + 16) count])
      {
        v14 = sub_100003490();
        dispatch_async(v14, &stru_1001FAE90);
      }
    }

    else
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
    }
  }
}

void sub_10013456C(uint64_t a1, void *a2, void *a3)
{
  v202 = a2;
  v5 = a3;
  if (qword_100229238 != -1)
  {
    dispatch_once(&qword_100229238, &stru_1001FC340);
  }

  v201 = v5;
  if (byte_100229230 == 1)
  {
    v6 = v202;
    v7 = v5;
    v8 = v6;
    v9 = v8;
    if (v8)
    {
      if (nrXPCKeyPairingManager)
      {
        uuid = xpc_dictionary_get_uuid(v8, nrXPCKeyPairingManager);
        if (uuid)
        {
          v11 = uuid;
          if (!uuid_is_null(uuid))
          {
            v12 = a1;
            v13 = [[NSUUID alloc] initWithUUIDBytes:v11];

            if (v13)
            {
              v199 = v7;
              v14 = [v7[2] objectForKeyedSubscript:v13];
              v15 = v14;
              if (!v14)
              {
                v153 = sub_100123258();
                IsLevelEnabled = _NRLogIsLevelEnabled();

                if (IsLevelEnabled)
                {
                  v155 = sub_100123258();
                  _NRLogWithArgs();
                }

                v156 = v7[1];
                goto LABEL_175;
              }

              if (!*(v14 + 120))
              {
                v226 = 0u;
                v227 = 0u;
                v224 = 0u;
                v225 = 0u;
                v16 = *(v14 + 40);
                v17 = [v16 countByEnumeratingWithState:&v224 objects:v222 count:16];
                if (v17)
                {
                  v18 = *v225;
                  do
                  {
                    for (i = 0; i != v17; i = i + 1)
                    {
                      if (*v225 != v18)
                      {
                        objc_enumerationMutation(v16);
                      }

                      v20 = sub_100125108(v15, *(*(&v224 + 1) + 8 * i));
                      if (v20)
                      {
                        v20[8] = 0;
                      }
                    }

                    v17 = [v16 countByEnumeratingWithState:&v224 objects:v222 count:16];
                  }

                  while (v17);
                }

                v21 = [NRDiscoveryClient alloc];
                v22 = *(v12 + 8);
                v23 = sub_10014F018(&v21->super.isa, v22, 0);
                v24 = v15[15];
                v15[15] = v23;

                v25 = v15[15];
                if (v25)
                {
                  if ((v25[19] & 1) != 0 || (v25[22] = 1, (v25 = v15[15]) != 0))
                  {
                    v25[16] = 1;
                  }
                }

                objc_initWeak(&location, v15);
                v26 = v15[15];
                from[0] = _NSConcreteStackBlock;
                from[1] = 3221225472;
                from[2] = sub_1001392D0;
                from[3] = &unk_1001FC158;
                objc_copyWeak(&v219, &location);
                v27 = from;
                v28 = v27;
                if (v26 && (*(v26 + 19) & 1) == 0)
                {
                  v29 = objc_retainBlock(v27);
                  v30 = v26[9];
                  v26[9] = v29;
                }

                v31 = v15[15];
                v216[0] = _NSConcreteStackBlock;
                v216[1] = 3221225472;
                v216[2] = sub_100139334;
                v216[3] = &unk_1001FC158;
                objc_copyWeak(&v217, &location);
                v32 = v216;
                v33 = v32;
                if (v31 && (*(v31 + 19) & 1) == 0)
                {
                  v34 = objc_retainBlock(v32);
                  v35 = v31[10];
                  v31[10] = v34;
                }

                v36 = v15[15];
                v214[0] = _NSConcreteStackBlock;
                v214[1] = 3221225472;
                v214[2] = sub_10013953C;
                v214[3] = &unk_1001FC158;
                objc_copyWeak(&v215, &location);
                v37 = v214;
                v38 = v37;
                if (v36 && (*(v36 + 19) & 1) == 0)
                {
                  v39 = objc_retainBlock(v37);
                  v40 = v36[11];
                  v36[11] = v39;
                }

                if (qword_1002291E8 != -1)
                {
                  dispatch_once(&qword_1002291E8, &stru_1001FC218);
                }

                v41 = qword_1002291E0;
                v42 = _NRLogIsLevelEnabled();

                if (v42)
                {
                  if (qword_1002291E8 != -1)
                  {
                    dispatch_once(&qword_1002291E8, &stru_1001FC218);
                  }

                  v43 = qword_1002291E0;
                  v44 = v15[15];
                  v45 = v44;
                  if (v44)
                  {
                    v46 = v44[15];
                  }

                  v47 = v15[15];
                  v48 = v47;
                  if (v47)
                  {
                    v49 = v47[16];
                  }

                  _NRLogWithArgs();
                }

                v50 = v15[15];
                sub_10014F958(v50, 255);

                v51 = v15[15];
                v52 = @"nr-modern-device-pairing-discovery";
                if (v51 && (*(v51 + 19) & 1) == 0)
                {
                  objc_storeStrong(v51 + 25, @"nr-modern-device-pairing-discovery");
                }

                v53 = v15[15];
                sub_100153210(v53);

                v54 = v199[1];
                sub_100132800(NRDevicePairingDirector, 0, v9, v54);

                objc_destroyWeak(&v215);
                objc_destroyWeak(&v217);
                objc_destroyWeak(&v219);
                objc_destroyWeak(&location);
                goto LABEL_47;
              }

              v159 = sub_100123258();
              v160 = _NRLogIsLevelEnabled();

              if (!v160)
              {
LABEL_174:
                v156 = v7[1];
LABEL_175:
                sub_100132800(NRDevicePairingDirector, -2005, v9, v156);
LABEL_47:

                v7 = v199;
LABEL_48:

LABEL_138:
                v127 = v201;
                goto LABEL_139;
              }

              v161 = sub_100123258();
              v162 = v15[15];
              v163 = v162;
              if (v162)
              {
                v164 = v162[16];
                v165 = v15[15];
                if (!v165)
                {
LABEL_173:
                  _NRLogWithArgs();

                  goto LABEL_174;
                }
              }

              else
              {
                v165 = v15[15];
                if (!v165)
                {
                  goto LABEL_173;
                }
              }

              v166 = v165[15];
              goto LABEL_173;
            }

LABEL_155:
            v144 = sub_100123258();
            v145 = _NRLogIsLevelEnabled();

            if (v145)
            {
              v146 = sub_100123258();
              _NRLogWithArgs();
            }

            sub_100132800(NRDevicePairingDirector, -2005, v9, v7[1]);
            goto LABEL_48;
          }

          v141 = sub_100123258();
          v142 = _NRLogIsLevelEnabled();

          if (v142)
          {
            goto LABEL_153;
          }

LABEL_154:

          goto LABEL_155;
        }

        v137 = sub_100123258();
        v138 = _NRLogIsLevelEnabled();

        if (!v138)
        {
          goto LABEL_154;
        }
      }

      else
      {
        v133 = sub_100123258();
        v134 = _NRLogIsLevelEnabled();

        if (!v134)
        {
          goto LABEL_154;
        }
      }
    }

    else
    {
      v128 = sub_100123258();
      v129 = _NRLogIsLevelEnabled();

      if (!v129)
      {
        goto LABEL_154;
      }
    }

LABEL_153:
    v143 = sub_100123258();
    _NRLogWithArgs();

    goto LABEL_154;
  }

  v55 = v202;
  v56 = v55;
  if (!v55)
  {
    v130 = v5;
    v131 = sub_100123258();
    v132 = _NRLogIsLevelEnabled();

    if (v132)
    {
      goto LABEL_159;
    }

    goto LABEL_160;
  }

  v57 = nrXPCKeyPairingManager;
  if (!nrXPCKeyPairingManager)
  {
    v130 = v5;
    v135 = sub_100123258();
    v136 = _NRLogIsLevelEnabled();

    if (v136)
    {
      goto LABEL_159;
    }

    goto LABEL_160;
  }

  v58 = xpc_dictionary_get_uuid(v55, nrXPCKeyPairingManager);
  if (!v58)
  {
    v130 = v5;
    v139 = sub_100123258();
    v140 = _NRLogIsLevelEnabled();

    if (v140)
    {
      goto LABEL_159;
    }

    goto LABEL_160;
  }

  v59 = v58;
  if (uuid_is_null(v58))
  {
    v130 = v5;
    v147 = sub_100123258();
    v148 = _NRLogIsLevelEnabled();

    if (v148)
    {
LABEL_159:
      v149 = sub_100123258();
      _NRLogWithArgs();
    }

LABEL_160:

    v5 = v130;
    goto LABEL_161;
  }

  v197 = a1;
  v60 = [[NSUUID alloc] initWithUUIDBytes:v59];

  if (v60)
  {
    v200 = v60;
    v61 = [v5[2] objectForKeyedSubscript:v60];
    v62 = v61;
    if (v61)
    {
      if (!*(v61 + 72))
      {
        if (!*(v61 + 80))
        {
          v212 = 0u;
          v213 = 0u;
          v210 = 0u;
          v211 = 0u;
          v63 = *(v61 + 40);
          v64 = [v63 countByEnumeratingWithState:&v210 objects:v221 count:16];
          if (v64)
          {
            v65 = *v211;
            do
            {
              for (j = 0; j != v64; j = j + 1)
              {
                if (*v211 != v65)
                {
                  objc_enumerationMutation(v63);
                }

                v67 = sub_100125108(v62, *(*(&v210 + 1) + 8 * j));
                if (v67)
                {
                  v67[8] = 0;
                }
              }

              v64 = [v63 countByEnumeratingWithState:&v210 objects:v221 count:16];
            }

            while (v64);
          }

          v68 = [*(v62 + 32) pairingCriteria];
          v69 = [v68 migrationPairing];

          if (v69)
          {
            if (qword_100229238 == -1)
            {
              if ((byte_100229230 & 1) == 0)
              {
                goto LABEL_69;
              }
            }

            else
            {
              dispatch_once(&qword_100229238, &stru_1001FC340);
              if ((byte_100229230 & 1) == 0)
              {
LABEL_69:
                if ((sub_100124F20(v62) & 1) == 0)
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

                    v115 = qword_1002291E0;
                    WeakRetained = objc_loadWeakRetained((v197 + 24));
                    _NRLogWithArgs();
                  }

                  sub_100132800(NRDevicePairingDirector, -3001, v56, v201[1]);
                  goto LABEL_137;
                }
              }
            }

            sub_100132800(NRDevicePairingDirector, 0, v56, v201[1]);
LABEL_137:

            goto LABEL_138;
          }

          v70 = [*(v62 + 32) pairingCriteria];
          v71 = [v70 psm] == 0;

          if (v71)
          {
            v107 = objc_alloc_init(CBDiscovery);
            v108 = *(v62 + 72);
            *(v62 + 72) = v107;

            [v107 setDispatchQueue:*(v197 + 8)];
            [v107 addDiscoveryType:23];
            [v107 setDiscoveryFlags:0x282000000];
            v109 = [*(v62 + 32) pairingCriteria];
            v110 = [v109 rssi];
            v111 = v110 == 0;

            if (v111)
            {
              *(v62 + 8) = 0;
            }

            else
            {
              v112 = [*(v62 + 32) pairingCriteria];
              v113 = [v112 rssi];
              v114 = [v113 charValue];

              *(v62 + 8) = v114;
              [v107 setBleRSSIThresholdHint:v114];
            }

            objc_initWeak(v222, v62);
            v208[0] = _NSConcreteStackBlock;
            v208[1] = 3221225472;
            v208[2] = sub_1001380B0;
            v208[3] = &unk_1001FC978;
            objc_copyWeak(&v209, v222);
            [v107 setDeviceFoundHandler:v208];
            v206[0] = _NSConcreteStackBlock;
            v206[1] = 3221225472;
            v206[2] = sub_1001389F8;
            v206[3] = &unk_1001FC978;
            objc_copyWeak(&v207, v222);
            [v107 setDeviceLostHandler:v206];
            v203[0] = _NSConcreteStackBlock;
            v203[1] = 3221225472;
            v203[2] = sub_100138C54;
            v203[3] = &unk_1001FC1A8;
            objc_copyWeak(&v205, v222);
            v204 = v56;
            [v107 activateWithCompletion:v203];

            objc_destroyWeak(&v205);
            objc_destroyWeak(&v207);
            objc_destroyWeak(&v209);
            objc_destroyWeak(v222);

            goto LABEL_137;
          }

          v72 = v56;
          v195 = v201;
          v196 = v72;
          v73 = xpc_dictionary_get_uuid(v196, v57);
          v74 = v73;
          if (v73)
          {
            if (!uuid_is_null(v73))
            {
              v194 = [[NSUUID alloc] initWithUUIDBytes:v74];

              if (v194)
              {
                v75 = [v201[2] objectForKeyedSubscript:?];
                if (!v75)
                {
                  v180 = sub_100123258();
                  v181 = _NRLogIsLevelEnabled();

                  if (v181)
                  {
                    v182 = sub_100123258();
                    _NRLogWithArgs();
                  }

                  sub_100132800(NRDevicePairingDirector, -2005, v196, v195[1]);
                  goto LABEL_135;
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

                  v76 = qword_1002291E0;
                  v77 = v75[4];
                  v78 = v76;
                  v79 = [v77 pairingCriteria];
                  [v79 psm];
                  _NRLogWithArgs();
                }

                objc_initWeak(from, v75);
                objc_opt_self();
                if (qword_1002290C0 != -1)
                {
                  dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
                }

                v80 = qword_1002290B8;
                v186 = v80;
                if (v80)
                {
                  v81 = *(v80 + 5);
                }

                else
                {
                  v81 = 0;
                }

                v82 = v81;
                v189 = v75[4];
                v193 = [v189 pairingCriteria];
                v83 = [v193 psm];
                v188 = v75[4];
                v192 = [v188 pairingCriteria];
                v84 = [v192 serviceUUID];
                v190 = v75[4];
                v85 = [v190 pairingCriteria];
                v184 = [v85 bluetoothRole];
                v187 = v85;
                v222[0] = _NSConcreteStackBlock;
                v222[1] = 3221225472;
                v222[2] = sub_100138F8C;
                v222[3] = &unk_1001FC180;
                objc_copyWeak(v223, from);
                v222[4] = v197;
                v198 = v84;
                newValue = v222;
                if (!v82)
                {
                  goto LABEL_134;
                }

                v86 = v82[22];
                v87 = [NSNumber numberWithUnsignedShort:v83];
                v88 = [v86 objectForKeyedSubscript:v87];

                if (v88)
                {
LABEL_134:

                  v126 = v195[1];
                  sub_100132800(NRDevicePairingDirector, 0, v196, v126);

                  objc_destroyWeak(v223);
                  objc_destroyWeak(from);
LABEL_135:

LABEL_136:
                  goto LABEL_137;
                }

                v89 = objc_alloc_init(NRL2CAPMonitorRequest);
                v91 = v89;
                if (v89)
                {
                  v89->_psm = v83;
                  objc_setProperty_nonatomic_copy(v89, v90, newValue, 16);
                }

                v92 = v82[22];
                v93 = [NSNumber numberWithUnsignedShort:v83];
                [v92 setObject:v91 forKeyedSubscript:v93];

                if (qword_100228F70 != -1)
                {
                  dispatch_once(&qword_100228F70, &stru_1001FA8E0);
                }

                if (_NRLogIsLevelEnabled())
                {
                  if (qword_100228F70 != -1)
                  {
                    dispatch_once(&qword_100228F70, &stru_1001FA8E0);
                  }

                  v94 = v82[22];
                  v95 = qword_100228F68;
                  _NRLogWithArgs();
                }

                if (v198 && v184 == 2)
                {
                  *&v224 = v198;
                  v96 = [NSArray arrayWithObjects:&v224 count:1];
                  v97 = v91;
                  v98 = v82[28];
                  v185 = v96;
                  if (!v98)
                  {
                    v99 = objc_alloc_init(NSMutableDictionary);
                    v100 = v82[28];
                    v82[28] = v99;
                  }

                  v101 = objc_alloc_init(NRBluetoothAdvertiseRequest);
                  v91 = v97;
                  v102 = sub_10003E4E0(v185);

                  if (v101)
                  {
                    objc_storeStrong(&v101->super._serviceUUIDs, v102);
                  }

                  v103 = v82[28];
                  v104 = [NSNumber numberWithUnsignedShort:v83];
                  [v103 setObject:v101 forKeyedSubscript:v104];

                  if (qword_100228F70 != -1)
                  {
                    dispatch_once(&qword_100228F70, &stru_1001FA8E0);
                  }

                  if (_NRLogIsLevelEnabled())
                  {
                    if (qword_100228F70 != -1)
                    {
                      dispatch_once(&qword_100228F70, &stru_1001FA8E0);
                    }

                    v105 = v82[28];
                    v106 = qword_100228F68;
                    _NRLogWithArgs();
                  }
                }

                else
                {
                  if (!v198 || v184 != 1)
                  {
                    goto LABEL_133;
                  }

                  *&v224 = v198;
                  v116 = [NSArray arrayWithObjects:&v224 count:1];
                  v117 = v91;
                  v118 = v82[27];
                  v185 = v116;
                  if (!v118)
                  {
                    v119 = objc_alloc_init(NSMutableDictionary);
                    v120 = v82[27];
                    v82[27] = v119;
                  }

                  v101 = objc_alloc_init(NRBluetoothScanRequest);
                  v91 = v117;
                  v121 = sub_10003E4E0(v185);

                  if (v101)
                  {
                    objc_storeStrong(&v101->super._serviceUUIDs, v121);
                  }

                  v122 = v82[27];
                  v123 = [NSNumber numberWithUnsignedShort:v83];
                  [v122 setObject:v101 forKeyedSubscript:v123];

                  if (qword_100228F70 != -1)
                  {
                    dispatch_once(&qword_100228F70, &stru_1001FA8E0);
                  }

                  if (_NRLogIsLevelEnabled())
                  {
                    if (qword_100228F70 != -1)
                    {
                      dispatch_once(&qword_100228F70, &stru_1001FA8E0);
                    }

                    v124 = v82[27];
                    v125 = qword_100228F68;
                    _NRLogWithArgs();
                  }
                }

                sub_1000315B8(v82);

LABEL_133:
                sub_1000315B8(v82);

                goto LABEL_134;
              }

LABEL_188:
              v177 = sub_100123258();
              v178 = _NRLogIsLevelEnabled();

              if (v178)
              {
                v179 = sub_100123258();
                _NRLogWithArgs();
              }

              sub_100132800(NRDevicePairingDirector, -2005, v196, v195[1]);
              goto LABEL_136;
            }

            v174 = sub_100123258();
            v175 = _NRLogIsLevelEnabled();

            if (v175)
            {
              goto LABEL_186;
            }
          }

          else
          {
            v172 = sub_100123258();
            v173 = _NRLogIsLevelEnabled();

            if (v173)
            {
LABEL_186:
              v176 = sub_100123258();
              _NRLogWithArgs();
            }
          }

          goto LABEL_188;
        }

        v169 = sub_100123258();
        v170 = _NRLogIsLevelEnabled();

        if (v170)
        {
          goto LABEL_179;
        }

LABEL_180:
        sub_100132800(NRDevicePairingDirector, -2005, v56, v201[1]);
        goto LABEL_137;
      }

      v167 = sub_100123258();
      v168 = _NRLogIsLevelEnabled();

      if (!v168)
      {
        goto LABEL_180;
      }
    }

    else
    {
      v157 = sub_100123258();
      v158 = _NRLogIsLevelEnabled();

      if (!v158)
      {
        goto LABEL_180;
      }
    }

LABEL_179:
    v171 = sub_100123258();
    _NRLogWithArgs();

    goto LABEL_180;
  }

LABEL_161:
  v127 = v5;
  v150 = sub_100123258();
  v151 = _NRLogIsLevelEnabled();

  if (v151)
  {
    v152 = sub_100123258();
    _NRLogWithArgs();
  }

  sub_100132800(NRDevicePairingDirector, -2005, v56, v127[1]);
LABEL_139:
}

void sub_100135EF0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak(&STACK[0x270]);
  _Unwind_Resume(a1);
}

void sub_100135F64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  objc_destroyWeak((v71 + 32));
  objc_destroyWeak((v70 + 32));
  objc_destroyWeak((v72 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100135F94(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  v8 = v6;
  v9 = v8;
  if (!v8)
  {
    v29 = sub_100123258();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      goto LABEL_45;
    }

    goto LABEL_46;
  }

  if (!nrXPCKeyPairingManager)
  {
    v31 = sub_100123258();
    v32 = _NRLogIsLevelEnabled();

    if (v32)
    {
      goto LABEL_45;
    }

    goto LABEL_46;
  }

  v10 = xpc_dictionary_get_uuid(v8, nrXPCKeyPairingManager);
  if (!v10)
  {
    v33 = sub_100123258();
    v34 = _NRLogIsLevelEnabled();

    if (v34)
    {
      goto LABEL_45;
    }

    goto LABEL_46;
  }

  v11 = v10;
  if (uuid_is_null(v10))
  {
    v35 = sub_100123258();
    v36 = _NRLogIsLevelEnabled();

    if (v36)
    {
LABEL_45:
      v37 = sub_100123258();
      _NRLogWithArgs();
    }

LABEL_46:

    goto LABEL_47;
  }

  v12 = [[NSUUID alloc] initWithUUIDBytes:v11];

  if (v12)
  {
    v13 = [v7[2] objectForKeyedSubscript:v12];
    if (!v13)
    {
      v40 = sub_100123258();
      v41 = _NRLogIsLevelEnabled();

      if (!v41)
      {
        goto LABEL_27;
      }

LABEL_59:
      v51 = sub_100123258();
      _NRLogWithArgs();

      goto LABEL_27;
    }

    v14 = nrXPCKeyTargetPairingCandidate;
    v15 = v9;
    v16 = v15;
    if (v14)
    {
      v17 = xpc_dictionary_get_uuid(v15, v14);
      if (v17)
      {
        v18 = v17;
        if (!uuid_is_null(v17))
        {
          v19 = [[NSUUID alloc] initWithUUIDBytes:v18];

          if (v19)
          {
            v20 = [v13[5] objectForKeyedSubscript:v19];
            if (v20)
            {
              uint64 = xpc_dictionary_get_uint64(v16, nrXPCKeyAuthRequestType);
              if ((uint64 - 1) >= 3)
              {
                if (qword_1002291E8 != -1)
                {
                  dispatch_once(&qword_1002291E8, &stru_1001FC218);
                }

                v3 = &qword_100229000;
                if (!_NRLogIsLevelEnabled())
                {
                  goto LABEL_23;
                }

                if (qword_1002291E8 != -1)
                {
                  goto LABEL_69;
                }

                goto LABEL_22;
              }

              if (qword_100229238 != -1)
              {
                dispatch_once(&qword_100229238, &stru_1001FC340);
              }

              if (byte_100229230 & 1) != 0 || (sub_100124F20(v13))
              {
                sub_100131C38(v20, uint64);
LABEL_26:

LABEL_27:
                goto LABEL_28;
              }

              if (qword_1002291E8 != -1)
              {
                dispatch_once(&qword_1002291E8, &stru_1001FC218);
              }

              v3 = &qword_100229000;
              if (_NRLogIsLevelEnabled())
              {
                if (qword_1002291E8 != -1)
                {
                  dispatch_once(&qword_1002291E8, &stru_1001FC218);
                }

                v27 = qword_1002291E0;
                WeakRetained = objc_loadWeakRetained((a1 + 24));
                _NRLogWithArgs();
              }

              v28 = xpc_dictionary_create(0, 0, 0);
              if (v28)
              {
                *uuid = 0;
                v65 = 0;
                v24 = v28;
                [v19 getUUIDBytes:uuid];
                xpc_dictionary_set_uuid(v24, v14, uuid);

                v25 = v13;
                v26 = -3001;
                goto LABEL_25;
              }
            }

            else
            {
              v52 = sub_100123258();
              v53 = _NRLogIsLevelEnabled();

              if (v53)
              {
                v54 = sub_100123258();
                _NRLogWithArgs();
              }

              v23 = xpc_dictionary_create(0, 0, 0);
              if (v23)
              {
LABEL_24:
                *uuid = 0;
                v65 = 0;
                v24 = v23;
                [v19 getUUIDBytes:uuid];
                xpc_dictionary_set_uuid(v24, v14, uuid);

                v25 = v13;
                v26 = -2005;
LABEL_25:
                sub_1001246D8(v25, v26, 8uLL, v24);

                goto LABEL_26;
              }
            }

            v55 = sub_100123258();
            v56 = _NRLogIsLevelEnabled();

            if (!v56)
            {
              goto LABEL_68;
            }

            v57 = sub_100123258();
LABEL_67:
            _NRLogWithArgs();

LABEL_68:
            while (1)
            {
              v7 = _os_log_pack_size();
              v9 = &uuid[-((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
              v60 = *__error();
              v61 = _os_log_pack_fill();
              sub_1000F4320(v61, "nr_xpc_dictionary_create");
              sub_100123258();
              _NRLogAbortWithPack();
LABEL_69:
              dispatch_once(&qword_1002291E8, &stru_1001FC218);
LABEL_22:
              v22 = v3[60];
              _NRLogWithArgs();
LABEL_23:
              v23 = xpc_dictionary_create(0, 0, 0);
              if (v23)
              {
                goto LABEL_24;
              }

              v58 = sub_100123258();
              v59 = _NRLogIsLevelEnabled();

              if (v59)
              {
                v57 = sub_100123258();
                goto LABEL_67;
              }
            }
          }

          goto LABEL_58;
        }

        v46 = sub_100123258();
        v47 = _NRLogIsLevelEnabled();

        if (v47)
        {
          goto LABEL_56;
        }

LABEL_57:

LABEL_58:
        v49 = sub_100123258();
        v50 = _NRLogIsLevelEnabled();

        if (!v50)
        {
          goto LABEL_27;
        }

        goto LABEL_59;
      }

      v44 = sub_100123258();
      v45 = _NRLogIsLevelEnabled();

      if (!v45)
      {
        goto LABEL_57;
      }
    }

    else
    {
      v42 = sub_100123258();
      v43 = _NRLogIsLevelEnabled();

      if (!v43)
      {
        goto LABEL_57;
      }
    }

LABEL_56:
    v48 = sub_100123258();
    _NRLogWithArgs();

    goto LABEL_57;
  }

LABEL_47:
  v38 = sub_100123258();
  v39 = _NRLogIsLevelEnabled();

  if (!v39)
  {
    goto LABEL_29;
  }

  v12 = sub_100123258();
  _NRLogWithArgs();
LABEL_28:

LABEL_29:
}

void sub_100136854(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v5;
  v8 = v7;
  if (!v7)
  {
    v70 = sub_100123258();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      goto LABEL_103;
    }

    goto LABEL_104;
  }

  if (!nrXPCKeyPairingManager)
  {
    v72 = sub_100123258();
    v73 = _NRLogIsLevelEnabled();

    if (v73)
    {
      goto LABEL_103;
    }

    goto LABEL_104;
  }

  uuid = xpc_dictionary_get_uuid(v7, nrXPCKeyPairingManager);
  if (!uuid)
  {
    v74 = sub_100123258();
    v75 = _NRLogIsLevelEnabled();

    if (v75)
    {
      goto LABEL_103;
    }

    goto LABEL_104;
  }

  v10 = uuid;
  if (uuid_is_null(uuid))
  {
    v76 = sub_100123258();
    v77 = _NRLogIsLevelEnabled();

    if (v77)
    {
LABEL_103:
      v78 = sub_100123258();
      _NRLogWithArgs();
    }

LABEL_104:

    goto LABEL_105;
  }

  v135 = a1;
  v11 = [[NSUUID alloc] initWithUUIDBytes:v10];

  if (v11)
  {
    v12 = v6[2];
    v13 = [v12 objectForKeyedSubscript:v11];

    if (!v13)
    {
      v82 = sub_100123258();
      v83 = _NRLogIsLevelEnabled();

      if (v83)
      {
        v84 = sub_100123258();
        _NRLogWithArgs();
      }

      v17 = v6[1];
      v18 = -2005;
      goto LABEL_15;
    }

    if (*(v13 + 64))
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

        v14 = *(v13 + 40);
        v15 = *(v13 + 64);
        v16 = qword_1002291E0;
        v121 = [v14 objectForKeyedSubscript:v15];
        _NRLogWithArgs();
      }

      v17 = v6[1];
      v18 = -3003;
LABEL_15:
      sub_100132800(NRDevicePairingDirector, v18, v8, v17);
LABEL_94:

      goto LABEL_95;
    }

    if (qword_100229238 != -1)
    {
      dispatch_once(&qword_100229238, &stru_1001FC340);
    }

    if ((byte_100229230 & 1) == 0 && (sub_100124F20(v13) & 1) == 0)
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

        v48 = qword_1002291E0;
        WeakRetained = objc_loadWeakRetained((v135 + 24));
        _NRLogWithArgs();
      }

      v17 = v6[1];
      v18 = -3001;
      goto LABEL_15;
    }

    v19 = nrXPCKeyPairingTarget;
    v20 = objc_opt_class();
    v134 = v8;
    if (v19)
    {
      if (v20)
      {
        length = 0;
        data = xpc_dictionary_get_data(v134, v19, &length);
        if (data)
        {
          if (length)
          {
            v22 = [NSData alloc];
            v23 = [v22 initWithBytesNoCopy:data length:length freeWhenDone:0];
            location[0] = 0;
            v24 = [NSKeyedUnarchiver unarchivedObjectOfClass:v20 fromData:v23 error:location];
            v25 = location[0];
            if (v25 || !v24)
            {
              v98 = sub_100123258();
              v99 = _NRLogIsLevelEnabled();

              if (v99)
              {
                v100 = sub_100123258();
                _NRLogWithArgs();
              }

              v26 = 0;
            }

            else
            {
              v26 = v24;
            }

            if (v26)
            {
LABEL_28:
              v27 = [v26 candidate];
              v28 = [v27 uuid];
              v29 = sub_100125108(v13, v28);

              if (!v29)
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

                  v47 = qword_1002291E0;
                  v122 = [v26 candidate];
                  _NRLogWithArgs();
                }

                sub_100132800(NRDevicePairingDirector, -2005, v134, v6[1]);
                goto LABEL_93;
              }

              v30 = [v26 candidate];
              v133 = [v30 cbUUID];

              if (!v133)
              {
                goto LABEL_33;
              }

              v31 = sub_100168BE8(NRDLocalDevice, v133, 0);
              p_super = &v31->super;
              if (!v31 || (v31->_databaseFlags & 1) == 0)
              {

LABEL_33:
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

                v33 = [*(v29 + 32) uuid];
                v34 = *(v13 + 64);
                *(v13 + 64) = v33;

                objc_storeStrong((v29 + 40), v26);
                if (!*(v13 + 136))
                {
                  v35 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, *(v13 + 24));
                  v36 = dispatch_time(0x8000000000000000, 45000000000);
                  dispatch_source_set_timer(v35, v36, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);
                  objc_initWeak(location, v13);
                  length = _NSConcreteStackBlock;
                  v148 = 3221225472;
                  v149 = sub_100131AE4;
                  v150 = &unk_1001FD0D8;
                  objc_copyWeak(&v152, location);
                  v37 = v35;
                  v151 = v37;
                  dispatch_source_set_event_handler(v37, &length);
                  dispatch_activate(v37);
                  v38 = *(v13 + 136);
                  *(v13 + 136) = v37;
                  v39 = v37;

                  objc_destroyWeak(&v152);
                  objc_destroyWeak(location);
                }

                v40 = dispatch_group_create();
                p_super = v40;
                v41 = [*(v29 + 40) authMethod];
                v42 = *(v29 + 40);
                v132 = [v42 authData];

                v43 = [v132 length];
                if (v41 == 3)
                {
                  if (v43)
                  {
                    v101 = sub_100123258();
                    v102 = _NRLogIsLevelEnabled();

                    if (v102)
                    {
                      v103 = sub_100123258();
                      v123 = NRCreateStringFromPairingAuthMethod();
                      _NRLogWithArgs();
                    }
                  }

                  else
                  {
                    *(v29 + 48) = 3;
                    v44 = *(v29 + 56);
                    v45 = v44;
                    if (v44)
                    {
                      v46 = *(v44 + 4);
                    }

                    else
                    {
                      v46 = 0;
                    }

                    objc_storeStrong((v29 + 272), v46);
                  }
                }

                else if (v43)
                {
                  *(v29 + 48) = v41;
                  if (v41 == 2)
                  {
                    if (*(v29 + 256))
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

                      objc_storeStrong((v29 + 264), v40);
                      objc_initWeak(&from, v29);
                      v59 = *(v29 + 256);
                      v130 = objc_loadWeakRetained(&from);
                      v60 = *(v29 + 24);
                      location[0] = _NSConcreteStackBlock;
                      location[1] = 3221225472;
                      location[2] = sub_1001321B8;
                      location[3] = &unk_1001FBFC8;
                      objc_copyWeak(&v144, &from);
                      v61 = p_super;
                      v143 = v61;
                      v129 = v132;
                      v128 = v59;
                      objc_initWeak(&v146, v130);
                      v62 = v60;
                      v127 = location;
                      v63 = qword_1002291F0;
                      v131 = v61;
                      if (v63 != -1)
                      {
                        dispatch_once(&qword_1002291F0, &stru_1001FC260);
                      }

                      length = _NSConcreteStackBlock;
                      v148 = 3221225472;
                      v149 = sub_100132284;
                      v150 = &unk_1001FC240;
                      v64 = qword_1002291F8;
                      objc_copyWeak(&v155, &v146);
                      v151 = v129;
                      v152 = v128;
                      v153 = v62;
                      v154 = v127;
                      v127 = v129;
                      v129 = v128;
                      v65 = v62;
                      dispatch_group_async(v131, v64, &length);

                      objc_destroyWeak(&v155);
                      objc_destroyWeak(&v146);

                      objc_destroyWeak(&v144);
                      objc_destroyWeak(&from);
                    }

                    else
                    {
                      v118 = sub_100123258();
                      v119 = _NRLogIsLevelEnabled();

                      if (v119)
                      {
                        v120 = sub_100123258();
                        _NRLogWithArgs();
                      }
                    }
                  }

                  else if (v41 == 1)
                  {
                    v49 = [NSMutableData _newZeroingDataWithBytes:0 length:0];
                    [v49 appendData:v132];
                    [v49 appendData:*(v29 + 72)];
                    v50 = *(v29 + 272);
                    *(v29 + 272) = v49;
                  }
                }

                else
                {
                  v104 = sub_100123258();
                  v105 = _NRLogIsLevelEnabled();

                  if (v105)
                  {
                    v106 = sub_100123258();
                    v124 = NRCreateStringFromPairingAuthMethod();
                    _NRLogWithArgs();
                  }
                }

                objc_initWeak(&v146, v29);
                v66 = *(v135 + 8);
                block[0] = _NSConcreteStackBlock;
                block[1] = 3221225472;
                block[2] = sub_100137E88;
                block[3] = &unk_1001FC1D0;
                v67 = v66;
                objc_copyWeak(&v141, &v146);
                v137 = v26;
                v138 = v134;
                v139 = v6;
                v68 = v13;
                v140 = v68;
                dispatch_group_notify(p_super, v67, block);

                if (!v68[18])
                {
                  objc_initWeak(location, v68);
                  objc_opt_self();
                  if (qword_1002290C0 != -1)
                  {
                    dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
                  }

                  v69 = qword_1002290B8;
                  length = _NSConcreteStackBlock;
                  v148 = 3221225472;
                  v149 = sub_100131A7C;
                  v150 = &unk_1001FBF00;
                  objc_copyWeak(&v151, location);

                  objc_destroyWeak(&v151);
                  objc_destroyWeak(location);
                }

                objc_destroyWeak(&v141);
                objc_destroyWeak(&v146);
                goto LABEL_92;
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

              v51 = v134;
              reply = xpc_dictionary_create_reply(v51);
              if (reply)
              {

                xpc_dictionary_set_int64(reply, nrXPCKeyResult, -3007);
                v53 = nrXPCKeyBluetoothUUID;
                reply = reply;
                if (v53)
                {
                  length = 0;
                  v148 = 0;
                  [v133 getUUIDBytes:&length];
                  xpc_dictionary_set_uuid(reply, v53, &length);
                  goto LABEL_73;
                }
              }

              else
              {
                v107 = sub_100123258();
                v108 = _NRLogIsLevelEnabled();

                if (v108)
                {
                  v109 = sub_100123258();
                  _NRLogWithArgs();
                }

                v6 = _os_log_pack_size();
                v8 = &v126 - ((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0);
                v110 = *__error();
                v111 = _os_log_pack_fill();
                *v111 = 136446210;
                *(v111 + 4) = "nr_xpc_dictionary_create_reply";
                sub_100123258();
                _NRLogAbortWithPack();
                __break(1u);
              }

              v112 = sub_100123258();
              v113 = _NRLogIsLevelEnabled();

              if (v113)
              {
                v114 = sub_100123258();
                _NRLogWithArgs();
              }

LABEL_73:

              v54 = nrXPCKeyNRUUID;
              v55 = p_super[3].isa;
              v56 = reply;
              v57 = v55;
              v58 = v57;
              if (v54)
              {
                if (v57)
                {
                  length = 0;
                  v148 = 0;
                  [(objc_class *)v57 getUUIDBytes:&length];
                  xpc_dictionary_set_uuid(v56, v54, &length);
LABEL_76:

                  xpc_connection_send_message(v6[1], v56);
LABEL_92:

LABEL_93:
                  goto LABEL_94;
                }

                v117 = sub_100123258();
                LODWORD(v135) = _NRLogIsLevelEnabled();

                if (!v135)
                {
                  goto LABEL_76;
                }
              }

              else
              {
                v115 = sub_100123258();
                LODWORD(v135) = _NRLogIsLevelEnabled();

                if (!v135)
                {
                  goto LABEL_76;
                }
              }

              v116 = sub_100123258();
              _NRLogWithArgs();

              goto LABEL_76;
            }

LABEL_121:
            v95 = sub_100123258();
            v96 = _NRLogIsLevelEnabled();

            if (v96)
            {
              v97 = sub_100123258();
              _NRLogWithArgs();
            }

            sub_100132800(NRDevicePairingDirector, -2005, v134, v6[1]);
            v26 = 0;
            goto LABEL_28;
          }

          v92 = sub_100123258();
          v93 = _NRLogIsLevelEnabled();

          if (v93)
          {
            goto LABEL_119;
          }
        }

        else
        {
          v90 = sub_100123258();
          v91 = _NRLogIsLevelEnabled();

          if (v91)
          {
LABEL_119:
            v94 = sub_100123258();
            _NRLogWithArgs();
          }
        }

        goto LABEL_121;
      }

      v87 = sub_100123258();
      v88 = _NRLogIsLevelEnabled();

      if (v88)
      {
        goto LABEL_114;
      }
    }

    else
    {
      v85 = sub_100123258();
      v86 = _NRLogIsLevelEnabled();

      if (v86)
      {
LABEL_114:
        v89 = sub_100123258();
        _NRLogWithArgs();
      }
    }

    goto LABEL_121;
  }

LABEL_105:
  v79 = sub_100123258();
  v80 = _NRLogIsLevelEnabled();

  if (v80)
  {
    v81 = sub_100123258();
    _NRLogWithArgs();
  }

  sub_100132800(NRDevicePairingDirector, -2005, v8, v6[1]);
LABEL_95:
}

void sub_100137E4C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 248));
  objc_destroyWeak((v2 + 64));
  objc_destroyWeak((v3 - 192));
  _Unwind_Resume(a1);
}

void sub_100137E88(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  if (sub_100123434(WeakRetained))
  {
    if (WeakRetained && WeakRetained[34])
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

      sub_100127188(WeakRetained);

      v2 = *(a1 + 40);
      v3 = *(a1 + 48);
      if (v3)
      {
        v4 = *(v3 + 8);
      }

      else
      {
        v4 = 0;
      }

      v5 = 0;
    }

    else
    {
      v6 = sub_100123258();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      if (IsLevelEnabled)
      {
        v8 = sub_100123258();
        [*(a1 + 32) authMethod];
        v9 = NRCreateStringFromPairingAuthMethod();
        v10 = [*(a1 + 32) authData];
        LogString = _NRKeyCreateLogString();
        _NRLogWithArgs();
      }

      sub_100129A18(*(a1 + 56));
      v2 = *(a1 + 40);
      v11 = *(a1 + 48);
      if (v11)
      {
        v4 = *(v11 + 8);
      }

      else
      {
        v4 = 0;
      }

      v5 = -3002;
    }

    sub_100132800(NRDevicePairingDirector, v5, v2, v4);
  }

  else
  {
  }
}

void sub_1001380B0(uint64_t a1, void *a2)
{
  v54 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = v54;
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

      v47 = WeakRetained;
      v49 = v4;
      v45 = 686;
      v41 = "";
      v43 = "[NRDevicePairingManagerContext handleFoundDevice:]";
      _NRLogWithArgs();
    }

    v5 = [v4 bleAdvertisementTimestampMachContinuous];
    if (!v5)
    {
      v30 = sub_100123258();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      if (!IsLevelEnabled)
      {
        goto LABEL_76;
      }

      v8 = sub_100123258();
      _NRLogWithArgs();
      goto LABEL_75;
    }

    v6 = v5;
    v7 = [v4 watchSetupData];
    v8 = v7;
    if (v7)
    {
      if ([v7 length] > 4)
      {
        v9 = [NSUUID alloc];
        v10 = [v4 identifier];
        v11 = [v9 initWithUUIDString:v10];

        if (!v11)
        {
          v36 = sub_100123258();
          v37 = _NRLogIsLevelEnabled();

          if (!v37)
          {
            goto LABEL_74;
          }

          v13 = sub_100123258();
          v51 = [v4 identifier];
          _NRLogWithArgs();

          goto LABEL_73;
        }

        v12 = [WeakRetained[6] objectForKeyedSubscript:v11];
        v13 = [WeakRetained[5] objectForKeyedSubscript:v12];

        nr_continuous_time();
        NRConvertMachTimeToMicroseconds();
        NRDiffMicroTimeInSeconds();
        if (v14 >= 1.0)
        {
          v38 = sub_100123258();
          v39 = _NRLogIsLevelEnabled();

          if (v39)
          {
            v40 = sub_100123258();
            _NRLogWithArgs();
          }

          if (v13)
          {
            *(v13 + 80) = v6;
          }

          goto LABEL_73;
        }

        if (v13)
        {
          if ([v8 isEqualToData:*(v13 + 72)])
          {
            goto LABEL_44;
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

            v15 = *(v13 + 72);
            v16 = qword_1002291E0;
            v50 = v15;
            v52 = v8;
            v46 = 725;
            v48 = v13;
            v42 = "";
            v44 = "[NRDevicePairingManagerContext handleFoundDevice:]";
            _NRLogWithArgs();
          }

          if (*(v13 + 8) == 1)
          {
            sub_1001236B4(WeakRetained, *(v13 + 32));
          }

          sub_100131038(WeakRetained, v13);
        }

        v56 = 0;
        v55 = 0;
        [v8 getBytes:&v55 length:{5, v42, v44, v46, v48, v50, v52}];
        if ((v55 & 0xE0) != 0x20)
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

          v13 = 0;
          goto LABEL_73;
        }

        v53 = v11;
        v17 = [[NSData alloc] initWithBytes:&v55 + 1 length:4];
        v18 = [v8 length];
        if (v18 == 5)
        {
          v19 = 0;
        }

        else
        {
          v19 = [v8 subdataWithRange:{5, v18 - 5}];
        }

        v20 = [[NRDevicePairingCandidate alloc] initInternal];
        [v20 setIdentifier:v17];
        [v20 setMetadata:v19];
        [v20 setCbUUID:v11];
        v21 = sub_10012E4CC([NRDevicePairingCandidateContext alloc], v20, WeakRetained[3], WeakRetained);
        v13 = v21;
        if (v21)
        {
          objc_storeStrong(v21 + 9, v8);
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

          v22 = qword_1002291E0;
          [v20 fullDescription];
          v50 = v48 = WeakRetained;
          v46 = 762;
          v42 = "";
          v44 = "[NRDevicePairingManagerContext handleFoundDevice:]";
          _NRLogWithArgs();
        }

        sub_10012E66C(WeakRetained, v13);

        if (!v13)
        {
          if (!*(WeakRetained + 8))
          {
            goto LABEL_73;
          }

          LOBYTE(v23) = *(WeakRetained + 8);
          v25 = 1;
          goto LABEL_57;
        }

LABEL_44:
        *(v13 + 80) = v6;
        v23 = *(WeakRetained + 8);
        if (*(v13 + 8))
        {
          if (*(WeakRetained + 8))
          {
            v24 = [v4 rssi];
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

            if (v24 && v24 < v23)
            {
              *(v13 + 8) = 0;
LABEL_72:
              sub_1001236B4(WeakRetained, *(v13 + 32));
              goto LABEL_73;
            }

            if ((*(v13 + 8) & 1) == 0)
            {
              goto LABEL_72;
            }
          }

LABEL_73:

LABEL_74:
LABEL_75:

LABEL_76:
          goto LABEL_77;
        }

        if (!*(WeakRetained + 8))
        {
          goto LABEL_66;
        }

        v53 = v11;
        v25 = 0;
        v26 = *(WeakRetained + 8);
LABEL_57:
        v27 = [v4 rssi];
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

        if (!v27 || v27 < v23)
        {
          v11 = v53;
          if ((v25 & 1) != 0 || (*(v13 + 8) & 1) == 0)
          {
            goto LABEL_73;
          }

          goto LABEL_67;
        }

        v11 = v53;
        if (v25)
        {
          goto LABEL_73;
        }

LABEL_66:
        *(v13 + 8) = 1;
LABEL_67:
        sub_100126038(WeakRetained, *(v13 + 32));
        goto LABEL_73;
      }

      v34 = sub_100123258();
      v35 = _NRLogIsLevelEnabled();

      if (!v35)
      {
        goto LABEL_75;
      }

      v11 = sub_100123258();
      [v8 length];
    }

    else
    {
      v32 = sub_100123258();
      v33 = _NRLogIsLevelEnabled();

      if (!v33)
      {
        goto LABEL_75;
      }

      v11 = sub_100123258();
    }

    _NRLogWithArgs();
    goto LABEL_74;
  }

  v28 = sub_100123258();
  v29 = _NRLogIsLevelEnabled();

  if (v29)
  {
    v4 = sub_100123258();
    _NRLogWithArgs();
    goto LABEL_76;
  }

LABEL_77:
}

void sub_1001389F8(uint64_t a1, void *a2)
{
  v15 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = v15;
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

    v5 = [NSUUID alloc];
    v6 = [v4 identifier];
    v7 = [v5 initWithUUIDString:v6];

    if (v7)
    {
      v8 = [WeakRetained[6] objectForKeyedSubscript:v7];
      v9 = [WeakRetained[5] objectForKeyedSubscript:v8];

      if (v9 && *(v9 + 8) == 1)
      {
        *(v9 + 8) = 0;
        sub_1001236B4(WeakRetained, *(v9 + 32));
      }
    }

    else
    {
      v12 = sub_100123258();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      if (!IsLevelEnabled)
      {
        goto LABEL_13;
      }

      v9 = sub_100123258();
      v14 = [v4 identifier];
      _NRLogWithArgs();
    }

LABEL_13:
LABEL_14:

    goto LABEL_15;
  }

  v10 = sub_100123258();
  v11 = _NRLogIsLevelEnabled();

  if (v11)
  {
    v4 = sub_100123258();
    _NRLogWithArgs();
    goto LABEL_14;
  }

LABEL_15:
}

void sub_100138C54(uint64_t a1, void *a2)
{
  v15 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = WeakRetained;
  if (WeakRetained && (v5 = objc_loadWeakRetained(WeakRetained + 2)) != 0)
  {
    v6 = v5;
    if (v15)
    {
      v12 = sub_100123258();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      if (IsLevelEnabled)
      {
        v14 = sub_100123258();
        _NRLogWithArgs();
      }

      sub_100132800(NRDevicePairingDirector, -3002, *(a1 + 32), v6[1]);
    }

    else
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

      sub_100132800(NRDevicePairingDirector, 0, *(a1 + 32), v6[1]);
      if (!v4[16])
      {
        v7 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, v4[3]);
        v8 = dispatch_time(0x8000000000000000, 2000000000);
        dispatch_source_set_timer(v7, v8, 0x77359400uLL, 0xEE6B280uLL);
        objc_initWeak(&location, v4);
        handler[0] = _NSConcreteStackBlock;
        handler[1] = 3221225472;
        handler[2] = sub_100131774;
        handler[3] = &unk_1001FD0D8;
        objc_copyWeak(&v18, &location);
        v9 = v7;
        v17 = v9;
        dispatch_source_set_event_handler(v9, handler);
        dispatch_activate(v9);
        v10 = v4[16];
        v4[16] = v9;
        v11 = v9;

        objc_destroyWeak(&v18);
        objc_destroyWeak(&location);
      }
    }
  }

  else
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
  }
}

void sub_100138F8C(uint64_t a1, int a2, void *a3, int a4)
{
  v7 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v9 = WeakRetained;
  if (WeakRetained)
  {
    v10 = [WeakRetained[4] pairingCriteria];
    v11 = [v10 psm];

    if (v11 == a4)
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

      v12 = sub_100125108(v9, v7);
      v13 = v12;
      if (a2)
      {
        if (v12)
        {
          goto LABEL_15;
        }

        v14 = [[NRDevicePairingCandidate alloc] initInternalWithUUID:v7];
        if (!v14)
        {
          v21 = sub_100123258();
          IsLevelEnabled = _NRLogIsLevelEnabled();

          if (IsLevelEnabled)
          {
            v23 = sub_100123258();
            _NRLogWithArgs();
          }

          _os_log_pack_size();
          __chkstk_darwin();
          v24 = *__error();
          v25 = _os_log_pack_fill();
          *v25 = 136446210;
          *(v25 + 4) = "[NRDevicePairingDirector handleStartPSMBasedDiscoveryRequest:forConnection:]_block_invoke";
          sub_100123258();
          _NRLogAbortWithPack();
        }

        v15 = v14;
        v26[0] = 0;
        v26[1] = 0;
        [v7 getUUIDBytes:v26];
        v16 = [[NSData alloc] initWithBytes:v26 length:16];
        [v15 setIdentifier:v16];

        [v15 setCbUUID:v7];
        v17 = [NRDevicePairingCandidateContext alloc];
        v18 = *(a1 + 32);
        v19 = v18 ? *(v18 + 8) : 0;
        v13 = sub_10012E4CC(&v17->super.isa, v15, v19, v9);
        sub_10012E66C(v9, v13);

        if (v13)
        {
LABEL_15:
          if (v13[1])
          {
LABEL_21:

            goto LABEL_22;
          }

          *(v13 + 8) = 1;
          v20 = v13[4];
        }

        else
        {
          v20 = 0;
        }

        sub_100126038(v9, v20);
        goto LABEL_21;
      }

      if (v12)
      {
        if (*(v12 + 8) == 1)
        {
          *(v12 + 8) = 0;
          sub_1001236B4(v9, *(v12 + 32));
        }

        goto LABEL_21;
      }
    }
  }

LABEL_22:
}

void sub_1001392D0(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    sub_100131138(WeakRetained, v5);
  }
}

void sub_100139334(uint64_t a1, void *a2)
{
  v16 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = v16;
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

    v5 = [NSUUID alloc];
    if (v4)
    {
      v6 = v4[2];
    }

    else
    {
      v6 = 0;
    }

    v7 = v6;
    v8 = [v5 initWithUUIDString:v7];

    if (v8)
    {
      v9 = [WeakRetained[5] objectForKeyedSubscript:v8];
      if (v9 && *(v9 + 8) == 1)
      {
        *(v9 + 8) = 0;
        v10 = v9;
        sub_1001236B4(WeakRetained, *(v9 + 32));
        v9 = v10;
      }
    }

    else
    {
      v11 = sub_100123258();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      if (!IsLevelEnabled)
      {
        goto LABEL_15;
      }

      v13 = sub_100123258();
      if (v4)
      {
        v14 = v4[2];
      }

      else
      {
        v14 = 0;
      }

      v15 = v14;
      _NRLogWithArgs();

      v9 = v13;
    }

LABEL_15:
  }
}

void sub_10013953C(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    sub_100131138(WeakRetained, v5);
  }
}

BOOL sub_1001395A0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  type = xpc_get_type(v4);
  if (type == &_xpc_type_uuid)
  {
    v6 = [[NSUUID alloc] initWithUUIDBytes:xpc_uuid_get_bytes(v4)];
    [*(*(*(a1 + 40) + 8) + 40) addObject:v6];
  }

  else
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
  }

  return type == &_xpc_type_uuid;
}

void sub_100139650(uint64_t a1, void *a2)
{
  v6 = a2;
  type = xpc_get_type(v6);
  if (type != &_xpc_type_dictionary)
  {
    if (type == &_xpc_type_error)
    {
      if (qword_1002291E8 != -1)
      {
        dispatch_once(&qword_1002291E8, &stru_1001FC218);
      }

      if (!_NRLogIsLevelEnabled())
      {
        goto LABEL_23;
      }

      if (qword_1002291E8 != -1)
      {
        dispatch_once(&qword_1002291E8, &stru_1001FC218);
      }

      v5 = *(a1 + 40);
    }

    else
    {
      if (qword_1002291E8 != -1)
      {
        dispatch_once(&qword_1002291E8, &stru_1001FC218);
      }

      if (!_NRLogIsLevelEnabled())
      {
        goto LABEL_23;
      }

      if (qword_1002291E8 != -1)
      {
        dispatch_once(&qword_1002291E8, &stru_1001FC218);
      }

      v4 = *(a1 + 40);
    }

    _NRLogWithArgs();
LABEL_23:
    sub_100134330(*(a1 + 32), *(a1 + 40));
    goto LABEL_24;
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

  sub_100132A8C(*(a1 + 32), v6, *(a1 + 40));
LABEL_24:
}

void sub_1001399F8(id a1)
{
  v1 = os_log_create("com.apple.networkrelay", "");
  v2 = qword_100229200;
  qword_100229200 = v1;

  _objc_release_x1(v1, v2);
}

id sub_100139E64()
{
  if (qword_100229208 != -1)
  {
    dispatch_once(&qword_100229208, &stru_1001FC280);
  }

  v1 = qword_100229200;

  return v1;
}

void sub_100139EB8(id a1)
{
  v1 = MGCopyAnswer();
  v2 = qword_100229210;
  qword_100229210 = v1;

  if (qword_1002292D8 != -1)
  {
    dispatch_once(&qword_1002292D8, &stru_1001FC510);
  }

  if (_NRLogIsLevelEnabled())
  {
    if (qword_1002292D8 != -1)
    {
      dispatch_once(&qword_1002292D8, &stru_1001FC510);
    }

    v8 = 61;
    v9 = qword_100229210;
    v6 = "";
    v7 = "_NRCopyDeviceBuildVersion_block_invoke";
    _NRLogWithArgs();
  }

  v3 = qword_100229210;
  if (!qword_100229210)
  {
    qword_100229210 = @"Unknown";
    v3 = @"Unknown";
  }

  if ([(__CFString *)v3 length:v6]>= 0xFF)
  {
    v4 = [qword_100229210 substringToIndex:254];
    v5 = qword_100229210;
    qword_100229210 = v4;

    _objc_release_x1(v4, v5);
  }
}

void sub_100139FF8(id a1)
{
  v1 = os_log_create("com.apple.networkrelay", "");
  v2 = qword_1002292D0;
  qword_1002292D0 = v1;

  _objc_release_x1(v1, v2);
}

void sub_10013A03C(id a1)
{
  v1 = MGCopyAnswer();
  v2 = qword_100229220;
  qword_100229220 = v1;

  if (qword_1002292D8 != -1)
  {
    dispatch_once(&qword_1002292D8, &stru_1001FC510);
  }

  if (_NRLogIsLevelEnabled())
  {
    if (qword_1002292D8 != -1)
    {
      dispatch_once(&qword_1002292D8, &stru_1001FC510);
    }

    v8 = 79;
    v9 = qword_100229220;
    v6 = "";
    v7 = "_NRCopyDeviceName_block_invoke";
    _NRLogWithArgs();
  }

  v3 = qword_100229220;
  if (!qword_100229220)
  {
    qword_100229220 = @"Unknown";
    v3 = @"Unknown";
  }

  if ([(__CFString *)v3 length:v6]>= 0x10000)
  {
    v4 = [qword_100229220 substringToIndex:0xFFFFLL];
    v5 = qword_100229220;
    qword_100229220 = v4;

    _objc_release_x1(v4, v5);
  }
}

void sub_10013A17C(id a1)
{
  v3 = 0;
  v2 = 4;
  if (sysctlbyname("kern.hv_vmm_present", &v3, &v2, 0, 0))
  {
    v1 = __error();
    if (strerror_r(*v1, __strerrbuf, 0x80uLL))
    {
      __strerrbuf[0] = 0;
    }

    if (qword_1002292D8 != -1)
    {
      dispatch_once(&qword_1002292D8, &stru_1001FC510);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_1002292D8 != -1)
      {
        dispatch_once(&qword_1002292D8, &stru_1001FC510);
      }

      _NRLogWithArgs();
    }
  }

  else
  {
    byte_100229230 = v3 != 0;
  }
}

void sub_10013A2B4(id a1)
{
  v1 = MGCopyAnswer();
  byte_100229240 = v1 == kCFBooleanTrue;
  if (v1)
  {

    CFRelease(v1);
  }
}

id sub_10013A310()
{
  if (qword_1002292D8 != -1)
  {
    dispatch_once(&qword_1002292D8, &stru_1001FC510);
  }

  v1 = qword_1002292D0;

  return v1;
}

uint64_t sub_10013A364(void *a1, void *a2, int a3)
{
  v5 = a1;
  v6 = a2;
  if (!v5)
  {
    v12 = sub_10013A310();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      goto LABEL_21;
    }

    goto LABEL_22;
  }

  if (![v5 length])
  {
    v14 = sub_10013A310();
    v15 = _NRLogIsLevelEnabled();

    if (v15)
    {
      goto LABEL_21;
    }

    goto LABEL_22;
  }

  if (!v6)
  {
    v16 = sub_10013A310();
    v17 = _NRLogIsLevelEnabled();

    if (v17)
    {
LABEL_21:
      v18 = sub_10013A310();
      _NRLogWithArgs();
    }

LABEL_22:
    v10 = 0;
    goto LABEL_15;
  }

  v19 = 0;
  v7 = [NSPropertyListSerialization dataWithPropertyList:v6 format:200 options:0 error:&v19];
  v8 = v19;
  v9 = v8;
  if (!v7 || v8)
  {
    if (qword_1002292D8 != -1)
    {
      dispatch_once(&qword_1002292D8, &stru_1001FC510);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_1002292D8 != -1)
      {
        dispatch_once(&qword_1002292D8, &stru_1001FC510);
      }

      _NRLogWithArgs();
    }

    v10 = 0;
  }

  else
  {
    v10 = sub_100003984(v5, v7, a3);
  }

LABEL_15:
  return v10;
}

unint64_t sub_10013A56C()
{
  if (qword_100229258 != -1)
  {
    dispatch_once(&qword_100229258, &stru_1001FC380);
  }

    ;
  }

  if (qword_1002292D8 != -1)
  {
    dispatch_once(&qword_1002292D8, &stru_1001FC510);
  }

  if (_NRLogIsLevelEnabled())
  {
    if (qword_1002292D8 != -1)
    {
      dispatch_once(&qword_1002292D8, &stru_1001FC510);
    }

    _NRLogWithArgs();
  }

  return i;
}

void sub_10013A678(id a1)
{
  info = 0;
  mach_timebase_info(&info);
  v1 = mach_boottime_usec();
  qword_100229250 = v1 + ((mach_continuous_time() * info.numer / (1000 * info.denom)) >> 1);
}

id sub_10013A6D4(void *a1)
{
  v1 = a1;
  [v1 UTF8String];
  v2 = NEHelperCacheCopyAppUUIDMapping();
  v3 = v2;
  if (v2 && xpc_get_type(v2) == &_xpc_type_array)
  {
    +[NSMutableArray array];
    applier[0] = _NSConcreteStackBlock;
    applier[1] = 3221225472;
    applier[2] = sub_10013A7D8;
    v4 = applier[3] = &unk_1001FC538;
    v7 = v4;
    xpc_array_apply(v3, applier);
    if (![v4 count])
    {

      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t sub_10013A7D8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = v4;
  if (v4 && xpc_get_type(v4) == &_xpc_type_uuid)
  {
    v6 = [[NSUUID alloc] initWithUUIDBytes:xpc_uuid_get_bytes(v5)];
    [*(a1 + 32) addObject:v6];
  }

  return 1;
}

void sub_10013A864(id a1)
{
  v1 = _NRCopySerialQueueAttr();
  v2 = dispatch_queue_create("com.apple.networkrelay.powerlog", v1);

  if (!v2)
  {
    v4 = sub_10013A310();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v6 = sub_10013A310();
      _NRLogWithArgs();
    }

    _os_log_pack_size();
    __chkstk_darwin();
    v7 = *__error();
    v8 = _os_log_pack_fill();
    *v8 = 136446466;
    *(v8 + 4) = "nr_dispatch_queue_create";
    *(v8 + 12) = 2080;
    *(v8 + 14) = "com.apple.networkrelay.powerlog";
    sub_10013A310();
    _NRLogAbortWithPack();
  }

  v3 = qword_100229260;
  qword_100229260 = v2;
}

uint64_t sub_10013A9E4(void *a1)
{
  v1 = a1;
  if (!v1)
  {
LABEL_27:
    v5 = 0;
    goto LABEL_38;
  }

  v2 = socket(2, 2, 0);
  if (v2 < 0)
  {
    v6 = *__error();
    v7 = &qword_100229000;
    if (qword_1002292D8 == -1)
    {
      goto LABEL_23;
    }

    goto LABEL_42;
  }

  v3 = v2;
  v16 = 0u;
  v17 = 0u;
  v4 = [v1 UTF8String];
  if (!v4)
  {
    v10 = sub_10013A310();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    v7 = "_strict_strlcpy";
    if (IsLevelEnabled)
    {
      v12 = sub_10013A310();
      _NRLogWithArgs();
    }

    v1 = _os_log_pack_size();
    __chkstk_darwin();
    v13 = *__error();
    v14 = _os_log_pack_fill();
    *v14 = 136446210;
    *(v14 + 4) = "_strict_strlcpy";
    sub_10013A310();
    _NRLogAbortWithPack();
LABEL_42:
    dispatch_once(&qword_1002292D8, &stru_1001FC510);
LABEL_23:
    if (_NRLogIsLevelEnabled())
    {
      if (v7[91] != -1)
      {
        dispatch_once(&qword_1002292D8, &stru_1001FC510);
      }

      _NRLogWithArgs();
    }

    goto LABEL_27;
  }

  LOBYTE(v16) = *v4;
  if (v16)
  {
    BYTE1(v16) = v4[1];
    if (BYTE1(v16))
    {
      BYTE2(v16) = v4[2];
      if (BYTE2(v16))
      {
        BYTE3(v16) = v4[3];
        if (BYTE3(v16))
        {
          BYTE4(v16) = v4[4];
          if (BYTE4(v16))
          {
            BYTE5(v16) = v4[5];
            if (BYTE5(v16))
            {
              BYTE6(v16) = v4[6];
              if (BYTE6(v16))
              {
                BYTE7(v16) = v4[7];
                if (BYTE7(v16))
                {
                  BYTE8(v16) = v4[8];
                  if (BYTE8(v16))
                  {
                    BYTE9(v16) = v4[9];
                    if (BYTE9(v16))
                    {
                      BYTE10(v16) = v4[10];
                      if (BYTE10(v16))
                      {
                        BYTE11(v16) = v4[11];
                        if (BYTE11(v16))
                        {
                          BYTE12(v16) = v4[12];
                          if (BYTE12(v16))
                          {
                            BYTE13(v16) = v4[13];
                            if (BYTE13(v16))
                            {
                              BYTE14(v16) = v4[14];
                              if (BYTE14(v16))
                              {
                                HIBYTE(v16) = 0;
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  if (ioctl(v3, 0xC020699FuLL, &v16) < 0)
  {
    v8 = __error();
    if (strerror_r(*v8, __strerrbuf, 0x80uLL))
    {
      __strerrbuf[0] = 0;
    }

    if (qword_1002292D8 != -1)
    {
      dispatch_once(&qword_1002292D8, &stru_1001FC510);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_1002292D8 != -1)
      {
        dispatch_once(&qword_1002292D8, &stru_1001FC510);
      }

      _NRLogWithArgs();
    }

    v5 = 0;
  }

  else
  {
    v5 = DWORD2(v17);
  }

  close(v3);
LABEL_38:

  return v5;
}

uint64_t sub_10013AD6C(void *a1, uint64_t *a2)
{
  v3 = a1;
  if (!v3)
  {
    v14 = sub_10013A310();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (!IsLevelEnabled)
    {
      goto LABEL_69;
    }

    v15 = sub_10013A310();
    _NRLogWithArgs();

    goto LABEL_58;
  }

  v4 = socket(2, 2, 0);
  if (v4 < 0)
  {
    v11 = *__error();
    a2 = &qword_100229000;
    if (qword_1002292D8 == -1)
    {
      goto LABEL_54;
    }
  }

  else
  {
    v5 = v4;
    v44 = 0u;
    v45 = 0u;
    v6 = [v3 UTF8String];
    if (v6)
    {
      LOBYTE(v44) = *v6;
      if (v44)
      {
        BYTE1(v44) = v6[1];
        if (BYTE1(v44))
        {
          BYTE2(v44) = v6[2];
          if (BYTE2(v44))
          {
            BYTE3(v44) = v6[3];
            if (BYTE3(v44))
            {
              BYTE4(v44) = v6[4];
              if (BYTE4(v44))
              {
                BYTE5(v44) = v6[5];
                if (BYTE5(v44))
                {
                  BYTE6(v44) = v6[6];
                  if (BYTE6(v44))
                  {
                    BYTE7(v44) = v6[7];
                    if (BYTE7(v44))
                    {
                      BYTE8(v44) = v6[8];
                      if (BYTE8(v44))
                      {
                        BYTE9(v44) = v6[9];
                        if (BYTE9(v44))
                        {
                          BYTE10(v44) = v6[10];
                          if (BYTE10(v44))
                          {
                            BYTE11(v44) = v6[11];
                            if (BYTE11(v44))
                            {
                              BYTE12(v44) = v6[12];
                              if (BYTE12(v44))
                              {
                                BYTE13(v44) = v6[13];
                                if (BYTE13(v44))
                                {
                                  BYTE14(v44) = v6[14];
                                  if (BYTE14(v44))
                                  {
                                    HIBYTE(v44) = 0;
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }

      LOBYTE(v45) = 1;
      if (ioctl(v5, 0x802069E3uLL, &v44) < 0)
      {
        v12 = __error();
        if (strerror_r(*v12, __strerrbuf, 0x80uLL))
        {
          __strerrbuf[0] = 0;
        }

        if (qword_1002292D8 != -1)
        {
          dispatch_once(&qword_1002292D8, &stru_1001FC510);
        }

        if (_NRLogIsLevelEnabled())
        {
          if (qword_1002292D8 != -1)
          {
            dispatch_once(&qword_1002292D8, &stru_1001FC510);
          }

          _NRLogWithArgs();
        }

        IsLevelEnabled = 0;
        goto LABEL_68;
      }

      if (qword_1002292D8 != -1)
      {
        dispatch_once(&qword_1002292D8, &stru_1001FC510);
      }

      if (_NRLogIsLevelEnabled())
      {
        if (qword_1002292D8 != -1)
        {
          dispatch_once(&qword_1002292D8, &stru_1001FC510);
        }

        _NRLogWithArgs();
      }

      v7 = [v3 UTF8String];
      if (v7)
      {
        v26 = *v7;
        if (v26)
        {
          if (v7[1])
          {
            if (v7[2])
            {
              if (v7[3])
              {
                if (v7[4])
                {
                  if (v7[5])
                  {
                    if (v7[6])
                    {
                      if (v7[7])
                      {
                        if (v7[8])
                        {
                          if (v7[9])
                          {
                            if (v7[10])
                            {
                              if (v7[11])
                              {
                                if (v7[12])
                                {
                                  if (v7[13])
                                  {
                                    if (v7[14])
                                    {
                                      v41 = 0;
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }

        DWORD2(v42) = a2;
        v8 = ioctl(v5, 0xC02069BCuLL, &v26);
        IsLevelEnabled = v8 >= 0;
        if (v8 < 0)
        {
          v10 = __error();
          if (strerror_r(*v10, __strerrbuf, 0x80uLL))
          {
            __strerrbuf[0] = 0;
          }

          if (qword_1002292D8 != -1)
          {
            dispatch_once(&qword_1002292D8, &stru_1001FC510);
          }

          if (_NRLogIsLevelEnabled())
          {
            if (qword_1002292D8 != -1)
            {
              dispatch_once(&qword_1002292D8, &stru_1001FC510);
            }

            _NRLogWithArgs();
          }
        }

LABEL_68:
        close(v5);
        goto LABEL_69;
      }

      v21 = sub_10013A310();
      v22 = _NRLogIsLevelEnabled();

      a2 = "_strict_strlcpy";
      if (v22)
      {
        v23 = sub_10013A310();
        _NRLogWithArgs();
      }

      v3 = _os_log_pack_size();
      __chkstk_darwin();
      v24 = *__error();
      v25 = _os_log_pack_fill();
      *v25 = 136446210;
      *(v25 + 4) = "_strict_strlcpy";
    }

    else
    {
      v16 = sub_10013A310();
      v17 = _NRLogIsLevelEnabled();

      if (v17)
      {
        v18 = sub_10013A310();
        _NRLogWithArgs();
      }

      v3 = _os_log_pack_size();
      __chkstk_darwin();
      v19 = *__error();
      v20 = _os_log_pack_fill();
      *v20 = 136446210;
      *(v20 + 4) = "_strict_strlcpy";
    }

    sub_10013A310();
    _NRLogAbortWithPack();
  }

  dispatch_once(&qword_1002292D8, &stru_1001FC510);
LABEL_54:
  if (_NRLogIsLevelEnabled())
  {
    if (a2[91] != -1)
    {
      dispatch_once(&qword_1002292D8, &stru_1001FC510);
    }

    _NRLogWithArgs();
  }

LABEL_58:
  IsLevelEnabled = 0;
LABEL_69:

  return IsLevelEnabled;
}

BOOL sub_10013B488(void *a1, int a2)
{
  v5 = a1;
  if (v5)
  {
    v6 = socket(2, 2, 0);
    if ((v6 & 0x80000000) == 0)
    {
      LODWORD(v7) = v6;
      v22 = 0u;
      v23 = 0u;
      v8 = [v5 UTF8String];
      if (v8)
      {
        LOBYTE(v22) = *v8;
        if (v22)
        {
          BYTE1(v22) = v8[1];
          if (BYTE1(v22))
          {
            BYTE2(v22) = v8[2];
            if (BYTE2(v22))
            {
              BYTE3(v22) = v8[3];
              if (BYTE3(v22))
              {
                BYTE4(v22) = v8[4];
                if (BYTE4(v22))
                {
                  BYTE5(v22) = v8[5];
                  if (BYTE5(v22))
                  {
                    BYTE6(v22) = v8[6];
                    if (BYTE6(v22))
                    {
                      BYTE7(v22) = v8[7];
                      if (BYTE7(v22))
                      {
                        BYTE8(v22) = v8[8];
                        if (BYTE8(v22))
                        {
                          BYTE9(v22) = v8[9];
                          if (BYTE9(v22))
                          {
                            BYTE10(v22) = v8[10];
                            if (BYTE10(v22))
                            {
                              BYTE11(v22) = v8[11];
                              if (BYTE11(v22))
                              {
                                BYTE12(v22) = v8[12];
                                if (BYTE12(v22))
                                {
                                  BYTE13(v22) = v8[13];
                                  if (BYTE13(v22))
                                  {
                                    BYTE14(v22) = v8[14];
                                    if (BYTE14(v22))
                                    {
                                      HIBYTE(v22) = 0;
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }

        LODWORD(v23) = a2;
        v9 = ioctl(v7, 0xC02069DCuLL, &v22);
        v2 = v9 >= 0;
        if (v9 < 0)
        {
          v11 = __error();
          if (strerror_r(*v11, __strerrbuf, 0x80uLL))
          {
            __strerrbuf[0] = 0;
          }

          if (qword_1002292D8 != -1)
          {
            dispatch_once(&qword_1002292D8, &stru_1001FC510);
          }

          if (!_NRLogIsLevelEnabled())
          {
            goto LABEL_41;
          }

          if (qword_1002292D8 != -1)
          {
            dispatch_once(&qword_1002292D8, &stru_1001FC510);
          }

          goto LABEL_40;
        }

        v3 = &qword_100229000;
        if (qword_1002292D8 == -1)
        {
LABEL_22:
          if (!_NRLogIsLevelEnabled())
          {
LABEL_41:
            close(v7);
            goto LABEL_42;
          }

          if (v3[91] != -1)
          {
            dispatch_once(&qword_1002292D8, &stru_1001FC510);
          }

LABEL_40:
          _NRLogWithArgs();
          goto LABEL_41;
        }
      }

      else
      {
        v16 = sub_10013A310();
        IsLevelEnabled = _NRLogIsLevelEnabled();

        if (IsLevelEnabled)
        {
          v18 = sub_10013A310();
          _NRLogWithArgs();
        }

        v5 = _os_log_pack_size();
        v7 = &__strerrbuf[-((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0)];
        v19 = *__error();
        v20 = _os_log_pack_fill();
        *v20 = 136446210;
        *(v20 + 4) = "_strict_strlcpy";
        sub_10013A310();
        _NRLogAbortWithPack();
      }

      dispatch_once(&qword_1002292D8, &stru_1001FC510);
      goto LABEL_22;
    }

    v10 = *__error();
    if (qword_1002292D8 != -1)
    {
      dispatch_once(&qword_1002292D8, &stru_1001FC510);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_1002292D8 != -1)
      {
        dispatch_once(&qword_1002292D8, &stru_1001FC510);
      }

      _NRLogWithArgs();
    }
  }

  else
  {
    v13 = sub_10013A310();
    v14 = _NRLogIsLevelEnabled();

    if (v14)
    {
      v15 = sub_10013A310();
      _NRLogWithArgs();
    }
  }

  v2 = 0;
LABEL_42:

  return v2;
}

uint64_t sub_10013B900(void *a1)
{
  v1 = a1;
  if (!v1)
  {
    v11 = sub_10013A310();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (!IsLevelEnabled)
    {
      goto LABEL_36;
    }

    v12 = sub_10013A310();
    _NRLogWithArgs();

    goto LABEL_35;
  }

  v2 = socket(2, 2, 0);
  if (v2 < 0)
  {
    v8 = *__error();
    v9 = &qword_100229000;
    if (qword_1002292D8 == -1)
    {
      goto LABEL_31;
    }

    goto LABEL_42;
  }

  v3 = v2;
  v19 = 0u;
  v20 = 0u;
  v4 = [v1 UTF8String];
  if (!v4)
  {
    v13 = sub_10013A310();
    v14 = _NRLogIsLevelEnabled();

    v9 = "_strict_strlcpy";
    if (v14)
    {
      v15 = sub_10013A310();
      _NRLogWithArgs();
    }

    v1 = _os_log_pack_size();
    __chkstk_darwin();
    v16 = *__error();
    v17 = _os_log_pack_fill();
    *v17 = 136446210;
    *(v17 + 4) = "_strict_strlcpy";
    sub_10013A310();
    _NRLogAbortWithPack();
LABEL_42:
    dispatch_once(&qword_1002292D8, &stru_1001FC510);
LABEL_31:
    if (_NRLogIsLevelEnabled())
    {
      if (v9[91] != -1)
      {
        dispatch_once(&qword_1002292D8, &stru_1001FC510);
      }

      _NRLogWithArgs();
    }

LABEL_35:
    IsLevelEnabled = 0;
    goto LABEL_36;
  }

  LOBYTE(v19) = *v4;
  if (v19)
  {
    BYTE1(v19) = v4[1];
    if (BYTE1(v19))
    {
      BYTE2(v19) = v4[2];
      if (BYTE2(v19))
      {
        BYTE3(v19) = v4[3];
        if (BYTE3(v19))
        {
          BYTE4(v19) = v4[4];
          if (BYTE4(v19))
          {
            BYTE5(v19) = v4[5];
            if (BYTE5(v19))
            {
              BYTE6(v19) = v4[6];
              if (BYTE6(v19))
              {
                BYTE7(v19) = v4[7];
                if (BYTE7(v19))
                {
                  BYTE8(v19) = v4[8];
                  if (BYTE8(v19))
                  {
                    BYTE9(v19) = v4[9];
                    if (BYTE9(v19))
                    {
                      BYTE10(v19) = v4[10];
                      if (BYTE10(v19))
                      {
                        BYTE11(v19) = v4[11];
                        if (BYTE11(v19))
                        {
                          BYTE12(v19) = v4[12];
                          if (BYTE12(v19))
                          {
                            BYTE13(v19) = v4[13];
                            if (BYTE13(v19))
                            {
                              BYTE14(v19) = v4[14];
                              if (BYTE14(v19))
                              {
                                HIBYTE(v19) = 0;
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  LODWORD(v20) = 1;
  v5 = ioctl(v3, 0xC02069D0uLL, &v19);
  IsLevelEnabled = v5 >= 0;
  if (v5 < 0)
  {
    v7 = __error();
    if (strerror_r(*v7, __strerrbuf, 0x80uLL))
    {
      __strerrbuf[0] = 0;
    }

    if (qword_1002292D8 != -1)
    {
      dispatch_once(&qword_1002292D8, &stru_1001FC510);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_1002292D8 != -1)
      {
        dispatch_once(&qword_1002292D8, &stru_1001FC510);
      }

      _NRLogWithArgs();
    }
  }

  close(v3);
LABEL_36:

  return IsLevelEnabled;
}

id sub_10013BCD8(void *a1)
{
  v1 = a1;
  if (!v1)
  {
    v10 = sub_10013A310();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v12 = sub_10013A310();
      _NRLogWithArgs();
    }

    goto LABEL_52;
  }

  v2 = socket(2, 2, 0);
  if (v2 < 0)
  {
    v5 = __error();
    if (strerror_r(*v5, __strerrbuf, 0x80uLL))
    {
      __strerrbuf[0] = 0;
    }

    v6 = &qword_100229000;
    if (qword_1002292D8 == -1)
    {
      goto LABEL_31;
    }

    goto LABEL_59;
  }

  v3 = v2;
  v4 = [v1 UTF8String];
  if (!v4)
  {
    v13 = sub_10013A310();
    v14 = _NRLogIsLevelEnabled();

    v6 = "_strict_strlcpy";
    if (v14)
    {
      v15 = sub_10013A310();
      _NRLogWithArgs();
    }

    v1 = _os_log_pack_size();
    __chkstk_darwin();
    v16 = *__error();
    v17 = _os_log_pack_fill();
    *v17 = 136446210;
    *(v17 + 4) = "_strict_strlcpy";
    sub_10013A310();
    _NRLogAbortWithPack();
LABEL_59:
    dispatch_once(&qword_1002292D8, &stru_1001FC510);
LABEL_31:
    if (!_NRLogIsLevelEnabled())
    {
      goto LABEL_52;
    }

    if (v6[91] != -1)
    {
      dispatch_once(&qword_1002292D8, &stru_1001FC510);
    }

LABEL_27:
    _NRLogWithArgs();
LABEL_52:
    v8 = 0;
    goto LABEL_53;
  }

  v18 = *v4;
  if (v18)
  {
    if (v4[1])
    {
      if (v4[2])
      {
        if (v4[3])
        {
          if (v4[4])
          {
            if (v4[5])
            {
              if (v4[6])
              {
                if (v4[7])
                {
                  if (v4[8])
                  {
                    if (v4[9])
                    {
                      if (v4[10])
                      {
                        if (v4[11])
                        {
                          if (v4[12])
                          {
                            if (v4[13])
                            {
                              if (v4[14])
                              {
                                v33 = 0;
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  if (ioctl(v3, 0xC06069C3uLL, &v18) < 0)
  {
    v7 = __error();
    if (*v7 == 6)
    {
      if (strerror_r(6, __strerrbuf, 0x80uLL))
      {
        __strerrbuf[0] = 0;
      }

      if (qword_1002292D8 != -1)
      {
        dispatch_once(&qword_1002292D8, &stru_1001FC510);
      }

      if (!_NRLogIsLevelEnabled())
      {
        goto LABEL_51;
      }

      if (qword_1002292D8 == -1)
      {
LABEL_50:
        _NRLogWithArgs();
LABEL_51:
        close(v3);
        goto LABEL_52;
      }
    }

    else
    {
      if (strerror_r(*v7, __strerrbuf, 0x80uLL))
      {
        __strerrbuf[0] = 0;
      }

      if (qword_1002292D8 != -1)
      {
        dispatch_once(&qword_1002292D8, &stru_1001FC510);
      }

      if (!_NRLogIsLevelEnabled())
      {
        goto LABEL_51;
      }

      if (qword_1002292D8 == -1)
      {
        goto LABEL_50;
      }
    }

    dispatch_once(&qword_1002292D8, &stru_1001FC510);
    goto LABEL_50;
  }

  close(v3);
  if (uuid_is_null(v34))
  {
    if (qword_1002292D8 != -1)
    {
      dispatch_once(&qword_1002292D8, &stru_1001FC510);
    }

    if (!_NRLogIsLevelEnabled())
    {
      goto LABEL_52;
    }

    if (qword_1002292D8 != -1)
    {
      dispatch_once(&qword_1002292D8, &stru_1001FC510);
    }

    goto LABEL_27;
  }

  v8 = [[NSUUID alloc] initWithUUIDBytes:v34];
LABEL_53:

  return v8;
}

void sub_10013C2A8(void *a1, void *a2, void *a3, int a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v13 = a1;
  v14 = a2;
  v15 = a3;
  v16 = 0;
  if (a5 && a4)
  {
    v29 = &a9;
    v17 = a5;
    v16 = [[NSString alloc] initWithFormat:v17 arguments:&a9];
  }

  objc_opt_self();
  if (qword_1002294C8 != -1)
  {
    dispatch_once(&qword_1002294C8, &stru_1001FD250);
  }

  v18 = qword_1002294C0;
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_10013C438;
  v23[3] = &unk_1001FC3F0;
  v24 = v13;
  v25 = v14;
  v28 = a4;
  v26 = v15;
  v27 = v16;
  v19 = v16;
  v20 = v15;
  v21 = v14;
  v22 = v13;
  sub_1001816DC(v18, v23);
}

void sub_10013C438(uint64_t a1)
{
  v2 = dispatch_semaphore_create(0);
  if (objc_opt_class())
  {
    v3 = objc_alloc_init(SDRDiagnosticReporter);
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    v6 = *(a1 + 48);
    v7 = +[NSProcessInfo processInfo];
    v8 = [v7 processName];
    v9 = [v3 signatureWithDomain:@"NetworkRelay" type:v4 subType:v5 subtypeContext:v6 detectedProcess:v8 triggerThresholdValues:0];

    if (qword_1002292D8 != -1)
    {
      dispatch_once(&qword_1002292D8, &stru_1001FC510);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_1002292D8 != -1)
      {
        dispatch_once(&qword_1002292D8, &stru_1001FC510);
      }

      _NRLogWithArgs();
    }

    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_10013C820;
    v18[3] = &unk_1001FC3C8;
    v19 = v9;
    v20 = v2;
    v10 = v9;
    [v3 snapshotWithSignature:v10 duration:0 event:0 payload:v18 reply:0.0];
  }

  else
  {
    if (qword_1002292D8 != -1)
    {
      dispatch_once(&qword_1002292D8, &stru_1001FC510);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_1002292D8 != -1)
      {
        dispatch_once(&qword_1002292D8, &stru_1001FC510);
      }

      _NRLogWithArgs();
    }
  }

  if (*(a1 + 64) == 1)
  {
    if (_NRIsAppleInternal())
    {
      v11 = dispatch_time(0, 100000000);
      dispatch_semaphore_wait(v2, v11);
    }

    v12 = sub_10013A310();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v14 = sub_10013A310();
      *(a1 + 56);
      _NRLogWithArgs();
    }

    _os_log_pack_size();
    __chkstk_darwin();
    v15 = *__error();
    v16 = _os_log_pack_fill();
    v17 = *(a1 + 56);
    if (!v17)
    {
      v17 = &stru_1001FDE68;
    }

    *v16 = 136446466;
    *(v16 + 4) = "NRTriggerABC_block_invoke";
    *(v16 + 12) = 2112;
    *(v16 + 14) = v17;
    sub_10013A310();
    _NRLogAbortWithPack();
  }
}

void sub_10013C820(uint64_t a1, void *a2)
{
  v10 = a2;
  v3 = [v10 objectForKeyedSubscript:kSymptomDiagnosticReplySuccess];
  v4 = [v3 BOOLValue];

  if (v4)
  {
    if (qword_1002292D8 != -1)
    {
      dispatch_once(&qword_1002292D8, &stru_1001FC510);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_1002292D8 != -1)
      {
        dispatch_once(&qword_1002292D8, &stru_1001FC510);
      }

      v9 = *(a1 + 32);
      _NRLogWithArgs();
    }
  }

  else
  {
    v5 = [v10 objectForKeyedSubscript:kSymptomDiagnosticReplyReasonString];
    v6 = [v10 objectForKeyedSubscript:kSymptomDiagnosticReplyReason];
    if (qword_1002292D8 != -1)
    {
      dispatch_once(&qword_1002292D8, &stru_1001FC510);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_1002292D8 != -1)
      {
        dispatch_once(&qword_1002292D8, &stru_1001FC510);
      }

      v7 = *(a1 + 32);
      v8 = qword_1002292D0;
      [v6 intValue];
      _NRLogWithArgs();
    }
  }

  dispatch_semaphore_signal(*(a1 + 40));
}

BOOL sub_10013CA2C()
{
  v3 = 0;
  v0 = sysctlbyname("net.link.generic.system.companion_sndbuf_limit", 0, 0, &v3, 4uLL);
  if (v0 < 0)
  {
    v1 = __error();
    if (strerror_r(*v1, __strerrbuf, 0x80uLL))
    {
      __strerrbuf[0] = 0;
    }

    if (qword_1002292D8 != -1)
    {
      dispatch_once(&qword_1002292D8, &stru_1001FC510);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_1002292D8 != -1)
      {
        dispatch_once(&qword_1002292D8, &stru_1001FC510);
      }

      _NRLogWithArgs();
    }
  }

  return v0 >= 0;
}

id sub_10013CB6C(uint64_t a1, char a2)
{
  v4 = [[NSString alloc] initWithFormat:@"unknown:%d", a1];
  bzero(buffer, 0x400uLL);
  if (a1 >= 1 && proc_pidpath(a1, buffer, 0x400u) >= 1 && buffer[0])
  {
    v5 = [[NSString alloc] initWithFormat:@"%s:%d", buffer, a1];

    v4 = v5;
  }

  if ((a2 & 1) == 0)
  {
    v6 = [v4 componentsSeparatedByString:@"/"];
    v7 = [v6 lastObject];

    return v7;
  }

  return v4;
}

void sub_10013CC88(void *a1)
{
  v1 = a1;
  if (v1)
  {
    v2 = socket(30, 2, 0);
    if ((v2 & 0x80000000) == 0)
    {
      LODWORD(v3) = v2;
      v18 = 0u;
      v19 = 0u;
      v4 = [v1 UTF8String];
      if (v4)
      {
        LOBYTE(v18) = *v4;
        if (v18)
        {
          BYTE1(v18) = v4[1];
          if (BYTE1(v18))
          {
            BYTE2(v18) = v4[2];
            if (BYTE2(v18))
            {
              BYTE3(v18) = v4[3];
              if (BYTE3(v18))
              {
                BYTE4(v18) = v4[4];
                if (BYTE4(v18))
                {
                  BYTE5(v18) = v4[5];
                  if (BYTE5(v18))
                  {
                    BYTE6(v18) = v4[6];
                    if (BYTE6(v18))
                    {
                      BYTE7(v18) = v4[7];
                      if (BYTE7(v18))
                      {
                        BYTE8(v18) = v4[8];
                        if (BYTE8(v18))
                        {
                          BYTE9(v18) = v4[9];
                          if (BYTE9(v18))
                          {
                            BYTE10(v18) = v4[10];
                            if (BYTE10(v18))
                            {
                              BYTE11(v18) = v4[11];
                              if (BYTE11(v18))
                              {
                                BYTE12(v18) = v4[12];
                                if (BYTE12(v18))
                                {
                                  BYTE13(v18) = v4[13];
                                  if (BYTE13(v18))
                                  {
                                    BYTE14(v18) = v4[14];
                                    if (BYTE14(v18))
                                    {
                                      HIBYTE(v18) = 0;
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }

        LOBYTE(v19) = 4;
        BYTE3(v19) = 0;
        if (ioctl(v3, 0xC02069A9uLL, &v18) < 0)
        {
          v6 = __error();
          if (*v6 != 6)
          {
            if (strerror_r(*v6, __strerrbuf, 0x80uLL))
            {
              __strerrbuf[0] = 0;
            }

            if (qword_1002292D8 != -1)
            {
              dispatch_once(&qword_1002292D8, &stru_1001FC510);
            }

            if (_NRLogIsLevelEnabled())
            {
              if (qword_1002292D8 != -1)
              {
                dispatch_once(&qword_1002292D8, &stru_1001FC510);
              }

              v8 = qword_1002292D0;
              [v1 UTF8String];
              _NRLogWithArgs();
            }

            goto LABEL_41;
          }

          if (strerror_r(6, __strerrbuf, 0x80uLL))
          {
            __strerrbuf[0] = 0;
          }

          if (qword_1002292D8 != -1)
          {
            dispatch_once(&qword_1002292D8, &stru_1001FC510);
          }

          if (_NRLogIsLevelEnabled())
          {
            if (qword_1002292D8 != -1)
            {
              dispatch_once(&qword_1002292D8, &stru_1001FC510);
            }

            goto LABEL_40;
          }

LABEL_41:
          close(v3);
          goto LABEL_42;
        }

        v5 = &qword_100229000;
        if (qword_1002292D8 == -1)
        {
LABEL_22:
          if (_NRLogIsLevelEnabled())
          {
            if (v5[91] != -1)
            {
              dispatch_once(&qword_1002292D8, &stru_1001FC510);
            }

LABEL_40:
            v7 = qword_1002292D0;
            [v1 UTF8String];
            _NRLogWithArgs();

            goto LABEL_41;
          }

          goto LABEL_41;
        }
      }

      else
      {
        v12 = sub_10013A310();
        IsLevelEnabled = _NRLogIsLevelEnabled();

        v5 = "_strict_strlcpy";
        if (IsLevelEnabled)
        {
          v14 = sub_10013A310();
          _NRLogWithArgs();
        }

        v1 = _os_log_pack_size();
        v3 = &__strerrbuf[-((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0)];
        v15 = *__error();
        v16 = _os_log_pack_fill();
        *v16 = 136446210;
        *(v16 + 4) = "_strict_strlcpy";
        sub_10013A310();
        _NRLogAbortWithPack();
      }

      dispatch_once(&qword_1002292D8, &stru_1001FC510);
      goto LABEL_22;
    }

    if (qword_1002292D8 != -1)
    {
      dispatch_once(&qword_1002292D8, &stru_1001FC510);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_1002292D8 != -1)
      {
        dispatch_once(&qword_1002292D8, &stru_1001FC510);
      }

      _NRLogWithArgs();
    }
  }

  else
  {
    v9 = sub_10013A310();
    v10 = _NRLogIsLevelEnabled();

    if (v10)
    {
      v11 = sub_10013A310();
      _NRLogWithArgs();
    }
  }

LABEL_42:
}