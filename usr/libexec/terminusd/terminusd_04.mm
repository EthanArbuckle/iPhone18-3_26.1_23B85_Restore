void sub_10005CA04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10005CA20(void *a1)
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

    v30 = 1398;
    v31 = v10;
    v28 = "";
    v29 = "handleRefreshCompanionProxyAgent";
    _NRLogWithArgs();
  }

  objc_opt_self();
  if (qword_1002290C0 != -1)
  {
    dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
  }

  v11 = qword_1002290B8;
  if (v11)
  {
    v32 = v11;
    [v11[28] allValues];
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v12 = v36 = 0u;
    v13 = [v12 countByEnumeratingWithState:&v33 objects:v42 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v34;
      do
      {
        for (i = 0; i != v14; i = i + 1)
        {
          if (*v34 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v33 + 1) + 8 * i);
          if (v17)
          {
            if (*(v17 + 14))
            {
              v39 = 0u;
              v40 = 0u;
              v37 = 0u;
              v38 = 0u;
              v18 = *(v17 + 144);
              v19 = [v18 countByEnumeratingWithState:&v37 objects:buffer count:16];
              if (v19)
              {
                v20 = v19;
                v21 = *v38;
                do
                {
                  for (j = 0; j != v20; j = j + 1)
                  {
                    if (*v38 != v21)
                    {
                      objc_enumerationMutation(v18);
                    }

                    [*(*(&v37 + 1) + 8 * j) refreshCompanionProxyAgent];
                  }

                  v20 = [v18 countByEnumeratingWithState:&v37 objects:buffer count:16];
                }

                while (v20);
              }

              goto LABEL_22;
            }

            v23 = *(v17 + 96);
            v24 = _NRCopyLogObjectForNRUUID();
            IsLevelEnabled = _NRLogIsLevelEnabled();

            if (IsLevelEnabled)
            {
              v26 = *(v17 + 96);
              v18 = _NRCopyLogObjectForNRUUID();
              v29 = "[NRDDeviceConductor refreshCompanionProxyAgent]";
              v30 = 2884;
              v28 = "";
              _NRLogWithArgs();
LABEL_22:

              continue;
            }
          }
        }

        v14 = [v12 countByEnumeratingWithState:&v33 objects:v42 count:16];
      }

      while (v14);
    }

    v11 = v32;
  }

  return 0;
}

uint64_t sub_10005CDFC(void *a1)
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
    v22 = sub_100056D2C();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      goto LABEL_34;
    }

    goto LABEL_35;
  }

  if (!nrXPCKeyDeviceIdentifier)
  {
    v24 = sub_100056D2C();
    v25 = _NRLogIsLevelEnabled();

    if (v25)
    {
      goto LABEL_34;
    }

    goto LABEL_35;
  }

  uuid = xpc_dictionary_get_uuid(v4, nrXPCKeyDeviceIdentifier);
  if (!uuid)
  {
    v26 = sub_100056D2C();
    v27 = _NRLogIsLevelEnabled();

    if (v27)
    {
      goto LABEL_34;
    }

    goto LABEL_35;
  }

  v7 = uuid;
  if (uuid_is_null(uuid))
  {
    v28 = sub_100056D2C();
    v29 = _NRLogIsLevelEnabled();

    if (v29)
    {
LABEL_34:
      v30 = sub_100056D2C();
      _NRLogWithArgs();
    }

LABEL_35:

    goto LABEL_36;
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
          bzero(buffer, 0x400uLL);
          if (pid >= 1 && proc_pidpath(pid, buffer, 0x400u) >= 1 && buffer[0])
          {
            v16 = [[NSString alloc] initWithFormat:@"%s:%d", buffer, pid];

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

      _NRLogWithArgs();
    }

    if (v3)
    {
      v19 = objc_getProperty(v3, v9, 24, 1);
    }

    else
    {
      v19 = 0;
    }

    xpc_dictionary_set_BOOL(v19, nrXPCKeySupportsRestrictedPorts, 1);
    v20 = 0;
    goto LABEL_25;
  }

LABEL_36:
  v31 = sub_100056D2C();
  v32 = _NRLogIsLevelEnabled();

  if (!v32)
  {
    v20 = -2005;
    goto LABEL_26;
  }

  v8 = sub_100056D2C();
  v34 = sub_100056D80(v3, v33);
  _NRLogWithArgs();

  v20 = -2005;
LABEL_25:

LABEL_26:
  return v20;
}

uint64_t sub_10005D224(void *a1)
{
  Property = a1;
  v3 = Property;
  if (Property)
  {
    Property = objc_getProperty(Property, v2, 16, 1);
  }

  v5 = xpc_dictionary_get_BOOL(Property, nrXPCKeyFixedInterfaceModeSetEnabled);
  if (v3)
  {
    v6 = objc_getProperty(v3, v4, 16, 1);
  }

  else
  {
    v6 = 0;
  }

  string = xpc_dictionary_get_string(v6, nrXPCKeyFixedInterfaceModeInterfaceName);
  if (v3)
  {
    v9 = objc_getProperty(v3, v7, 16, 1);
  }

  else
  {
    v9 = 0;
  }

  v11 = xpc_dictionary_get_string(v9, nrXPCKeyFixedInterfaceModePeerAddress);
  if (v3)
  {
    v12 = objc_getProperty(v3, v10, 16, 1);
  }

  else
  {
    v12 = 0;
  }

  v13 = xpc_dictionary_get_string(v12, nrXPCKeyIDSDeviceID);
  v14 = v13;
  if (!v5)
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

      v18 = qword_100228FB8;
      if (v3)
      {
        v27 = v3[4];
        if (!v27)
        {
          v28 = objc_getProperty(v3, v26, 8, 1);
          pid = xpc_connection_get_pid(v28);
          v30 = [[NSString alloc] initWithFormat:@"unknown:%d", pid];
          bzero(buffer, 0x400uLL);
          if (pid >= 1 && proc_pidpath(pid, buffer, 0x400u) >= 1 && buffer[0])
          {
            v31 = [[NSString alloc] initWithFormat:@"%s:%d", buffer, pid];

            v30 = v31;
          }

          v32 = v3[4];
          v3[4] = v30;

          v27 = v3[4];
        }

        v25 = v27;
      }

      else
      {
        v25 = 0;
      }

      v41 = 1067;
      v42 = v25;
      v39 = "";
      v40 = "handleSetFixedInterfaceMode";
      goto LABEL_45;
    }

LABEL_46:
    objc_opt_self();
    if (qword_1002290C0 != -1)
    {
      dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
    }

    v33 = qword_1002290B8;
    if (string)
    {
      v34 = [NSString stringWithUTF8String:string];
      if (v11)
      {
        goto LABEL_50;
      }
    }

    else
    {
      v34 = 0;
      if (v11)
      {
LABEL_50:
        v35 = [NSString stringWithUTF8String:v11, v39, v40, v41, v42, v43, v44, v45];
        if (v14)
        {
          goto LABEL_51;
        }

        goto LABEL_58;
      }
    }

    v35 = 0;
    if (v14)
    {
LABEL_51:
      v36 = [NSString stringWithUTF8String:v14, v39];
      sub_1000C9CDC(v33, v5, v34, v35, v36);

      if (!v11)
      {
LABEL_53:
        if (string)
        {
        }

        v37 = 0;
        goto LABEL_67;
      }

LABEL_52:

      goto LABEL_53;
    }

LABEL_58:
    sub_1000C9CDC(v33, v5, v34, v35, 0);
    if (!v11)
    {
      goto LABEL_53;
    }

    goto LABEL_52;
  }

  if (string)
  {
    v15 = 0;
  }

  else
  {
    v15 = v11 == 0;
  }

  if (!v15 || v13 != 0)
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

      v18 = qword_100228FB8;
      if (v3)
      {
        v19 = v3[4];
        if (!v19)
        {
          v20 = objc_getProperty(v3, v17, 8, 1);
          v21 = xpc_connection_get_pid(v20);
          v22 = [[NSString alloc] initWithFormat:@"unknown:%d", v21];
          bzero(buffer, 0x400uLL);
          if (v21 >= 1 && proc_pidpath(v21, buffer, 0x400u) >= 1 && buffer[0])
          {
            v23 = [[NSString alloc] initWithFormat:@"%s:%d", buffer, v21];

            v22 = v23;
          }

          v24 = v3[4];
          v3[4] = v22;

          v19 = v3[4];
        }

        v25 = v19;
      }

      else
      {
        v25 = 0;
      }

      v43 = 1;
      v44 = string;
      v41 = 1065;
      v42 = v25;
      v45 = v11;
      v39 = "";
      v40 = "handleSetFixedInterfaceMode";
LABEL_45:
      _NRLogWithArgs();

      goto LABEL_46;
    }

    goto LABEL_46;
  }

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

  v37 = -2005;
LABEL_67:

  return v37;
}

uint64_t sub_10005D7B4(void *a1)
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

  v11 = sub_10016D1F8();
  v12 = v11;
  if (v11)
  {
    v13 = v11;
    objc_opt_self();
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
    }

    sub_10002D380(NRLinkDirectorMessage, v13);
    v14 = sub_10002A50C([NRLinkDirectorMessage alloc], v13);
    v15 = sub_10002C85C(NRLinkDirectorMessage, v14);
    sub_10002D380(NRLinkDirectorMessage, v13);
    v16 = sub_10002A404([NRLinkDirectorMessage alloc], v13, 1);

    v17 = sub_10002C85C(NRLinkDirectorMessage, v16);
    sub_10002D380(NRLinkDirectorMessage, v13);
    v18 = sub_10002A404([NRLinkDirectorMessage alloc], v13, 2);

    v19 = sub_10002C85C(NRLinkDirectorMessage, v18);
    sub_10002D380(NRLinkDirectorMessage, v13);

    if (v1)
    {
      v21 = objc_getProperty(v1, v20, 24, 1);
    }

    else
    {
      v21 = 0;
    }

    xpc_dictionary_set_BOOL(v21, nrXPCKeyTestNRLinkDirectorMessage, v15 & v17 & v19);
    v22 = 0;
  }

  else
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

      v24 = qword_100228FB8;
      if (v1)
      {
        v26 = objc_getProperty(v1, v23, 16, 1);
        v27 = v1[4];
        if (!v27)
        {
          v28 = objc_getProperty(v1, v25, 8, 1);
          v29 = xpc_connection_get_pid(v28);
          v30 = [[NSString alloc] initWithFormat:@"unknown:%d", v29];
          bzero(buffer, 0x400uLL);
          if (v29 >= 1 && proc_pidpath(v29, buffer, 0x400u) >= 1 && buffer[0])
          {
            v31 = [[NSString alloc] initWithFormat:@"%s:%d", buffer, v29];

            v30 = v31;
          }

          v32 = v1[4];
          v1[4] = v30;

          v27 = v1[4];
        }

        v33 = v27;
      }

      else
      {
        v26 = 0;
        v33 = 0;
      }

      _NRLogWithArgs();
    }

    v22 = -2011;
  }

  return v22;
}

uint64_t sub_10005DCD4(void *a1)
{
  Property = a1;
  v3 = Property;
  if (Property)
  {
    Property = objc_getProperty(Property, v2, 16, 1);
  }

  v36 = xpc_dictionary_get_BOOL(Property, nrXPCKeySimulateWakePacket);
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

    v13 = "stop";
    if (v36)
    {
      v13 = "start";
    }

    v30 = 1026;
    v31 = v12;
    v28 = "";
    v29 = "handleSimulateWakePacket";
    v32 = v13;
    _NRLogWithArgs();
  }

  objc_opt_self();
  if (qword_1002290C0 != -1)
  {
    dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
  }

  v14 = qword_1002290B8;
  if (v14 && _NRIsAppleInternal())
  {
    v15 = 0;
    v14[9] = v36;
  }

  else
  {
    v15 = -2001;
  }

  objc_opt_self();
  if (qword_1002290C0 != -1)
  {
    dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
  }

  v16 = qword_1002290B8;
  if (!v16)
  {
    v19 = 0;
LABEL_43:

    goto LABEL_44;
  }

  v17 = v16[10];

  if (v17 == 1)
  {
    objc_opt_self();
    if (qword_1002290C0 != -1)
    {
      dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
    }

    v33 = v15;
    v34 = v3;
    v18 = qword_1002290B8;
    v19 = v18;
    if (v18)
    {
      v39 = 0u;
      v40 = 0u;
      v37 = 0u;
      v38 = 0u;
      obj = v18[28];
      v20 = [obj countByEnumeratingWithState:&v37 objects:buffer count:16];
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
              objc_enumerationMutation(obj);
            }

            v24 = [v19[28] objectForKeyedSubscript:{*(*(&v37 + 1) + 8 * i), v28, v29, v30, v31, v32}];
            if (v24)
            {
              v25 = objc_alloc_init(NSMutableDictionary);
              v26 = [NSNumber numberWithBool:v36];
              [v25 setObject:v26 forKeyedSubscript:@"test-wake-pkt"];

              sub_100114680(v24, v25);
            }
          }

          v21 = [obj countByEnumeratingWithState:&v37 objects:buffer count:16];
        }

        while (v21);
      }
    }

    v3 = v34;
    v15 = v33;
    goto LABEL_43;
  }

LABEL_44:

  return v15;
}

uint64_t sub_10005E100(void *a1)
{
  Property = a1;
  v3 = Property;
  if (Property)
  {
    Property = objc_getProperty(Property, v2, 16, 1);
  }

  v4 = xpc_dictionary_get_BOOL(Property, nrXPCKeyBlockIDSTraffic);
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
        if (pid >= 1 && proc_pidpath(pid, buffer, 0x400u) >= 1 && LOBYTE(buffer[0]))
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
  if (v14 && _NRIsAppleInternal())
  {
    if (v4)
    {
      objc_opt_self();
      v15 = sub_100003490();
      dispatch_assert_queue_V2(v15);

      buffer[0] = xmmword_100196400;
      v16 = [[NSData alloc] initWithBytes:buffer length:16];
      v17 = sub_100167F00(NRDLocalDevice, v16, @"0");

      v62 = v17;
      v18 = [v17 hostname];
      v19 = [NWAddressEndpoint endpointWithHostname:v18 port:@"61314"];

      v20 = [NEPolicyCondition localAddress:v19 prefix:64];
      v21 = [NEPolicyCondition remoteAddress:v19 prefix:64];
      v22 = [NEPolicy alloc];
      v23 = +[NEPolicyResult drop];
      *&buffer[0] = v21;
      v24 = +[NEPolicyCondition allInterfaces];
      *(&buffer[0] + 1) = v24;
      v25 = [NSArray arrayWithObjects:buffer count:2];
      v26 = [v22 initWithOrder:10 result:v23 conditions:v25];

      objc_opt_self();
      if (qword_100229410 != -1)
      {
        dispatch_once(&qword_100229410, &stru_1001FCD98);
      }

      v27 = qword_100229408;
      v60 = v26;
      v28 = sub_100159E00(v27, @"TESTING-NRDLD-Drop-IDS", v26);

      v29 = [NEPolicy alloc];
      v30 = +[NEPolicyResult drop];
      v66[0] = v20;
      v31 = +[NEPolicyCondition allInterfaces];
      v66[1] = v31;
      v32 = [NSArray arrayWithObjects:v66 count:2];
      v33 = [v29 initWithOrder:10 result:v30 conditions:v32];

      objc_opt_self();
      if (qword_100229410 != -1)
      {
        dispatch_once(&qword_100229410, &stru_1001FCD98);
      }

      v34 = qword_100229408;
      v61 = v33;
      v35 = sub_100159E00(v34, @"TESTING-NRDLD-Drop-IDS", v33);

      v36 = [v62 hostname];
      v37 = [NWAddressEndpoint endpointWithHostname:v36 port:@"61315"];

      v38 = [NEPolicyCondition localAddress:v37 prefix:64];

      v39 = [NEPolicyCondition remoteAddress:v37 prefix:64];

      v40 = [NEPolicy alloc];
      v41 = +[NEPolicyResult drop];
      v59 = v39;
      v65[0] = v39;
      v42 = +[NEPolicyCondition allInterfaces];
      v65[1] = v42;
      v43 = [NSArray arrayWithObjects:v65 count:2];
      v44 = [v40 initWithOrder:10 result:v41 conditions:v43];

      objc_opt_self();
      if (qword_100229410 != -1)
      {
        dispatch_once(&qword_100229410, &stru_1001FCD98);
      }

      v45 = qword_100229408;
      v46 = sub_100159E00(v45, @"TESTING-NRDLD-Drop-IDS", v44);

      v47 = [NEPolicy alloc];
      v48 = +[NEPolicyResult drop];
      v49 = v38;
      v64[0] = v38;
      v50 = +[NEPolicyCondition allInterfaces];
      v64[1] = v50;
      v51 = [NSArray arrayWithObjects:v64 count:2];
      v52 = [v47 initWithOrder:10 result:v48 conditions:v51];

      objc_opt_self();
      if (qword_100229410 != -1)
      {
        dispatch_once(&qword_100229410, &stru_1001FCD98);
      }

      v53 = qword_100229408;
      v54 = sub_100159E00(v53, @"TESTING-NRDLD-Drop-IDS", v52);
    }

    else
    {
      objc_opt_self();
      if (qword_100229410 != -1)
      {
        dispatch_once(&qword_100229410, &stru_1001FCD98);
      }

      v56 = qword_100229408;
      sub_10015A238(v56, @"TESTING-NRDLD-Drop-IDS");
    }

    objc_opt_self();
    if (qword_100229410 != -1)
    {
      dispatch_once(&qword_100229410, &stru_1001FCD98);
    }

    v57 = qword_100229408;
    sub_10015A52C(v57);

    v55 = 0;
  }

  else
  {
    v55 = -2001;
  }

  return v55;
}

uint64_t sub_10005E910(void *a1)
{
  Property = a1;
  v3 = Property;
  if (Property)
  {
    Property = objc_getProperty(Property, v2, 16, 1);
  }

  v4 = xpc_dictionary_get_BOOL(Property, nrXPCKeyBlockSHOESTraffic);
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
        if (pid >= 1 && proc_pidpath(pid, buffer, 0x400u) >= 1 && LOBYTE(buffer[0]))
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
  if (v14 && _NRIsAppleInternal())
  {
    if (v4)
    {
      objc_opt_self();
      v15 = sub_100003490();
      dispatch_assert_queue_V2(v15);

      buffer[0] = xmmword_100196400;
      v16 = [[NSData alloc] initWithBytes:buffer length:16];
      v17 = sub_100167F00(NRDLocalDevice, v16, @"0");

      v18 = [v17 hostname];
      v19 = [NWAddressEndpoint endpointWithHostname:v18 port:@"62742"];

      v20 = [NEPolicyCondition remoteAddress:v19 prefix:64];
      v21 = [NEPolicy alloc];
      v22 = +[NEPolicyResult drop];
      *&buffer[0] = v20;
      v23 = +[NEPolicyCondition allInterfaces];
      *(&buffer[0] + 1) = v23;
      v24 = [NSArray arrayWithObjects:buffer count:2];
      v25 = [v21 initWithOrder:10 result:v22 conditions:v24];

      objc_opt_self();
      if (qword_100229410 != -1)
      {
        dispatch_once(&qword_100229410, &stru_1001FCD98);
      }

      v26 = qword_100229408;
      v27 = sub_100159E00(v26, @"TESTING-NRDLD-Drop-SHOES", v25);
    }

    else
    {
      objc_opt_self();
      if (qword_100229410 != -1)
      {
        dispatch_once(&qword_100229410, &stru_1001FCD98);
      }

      v29 = qword_100229408;
      sub_10015A238(v29, @"TESTING-NRDLD-Drop-SHOES");
    }

    objc_opt_self();
    if (qword_100229410 != -1)
    {
      dispatch_once(&qword_100229410, &stru_1001FCD98);
    }

    v30 = qword_100229408;
    sub_10015A52C(v30);

    v28 = 0;
  }

  else
  {
    v28 = -2001;
  }

  return v28;
}

uint64_t sub_10005EDD0(void *a1)
{
  Property = a1;
  v3 = Property;
  if (Property)
  {
    Property = objc_getProperty(Property, v2, 16, 1);
  }

  string = xpc_dictionary_get_string(Property, nrXPCKeyTetheringBundleIDs);
  if (string)
  {
    v5 = [NSString stringWithUTF8String:string];
    v6 = [v5 componentsSeparatedByString:{@", "}];
    if (qword_100228FC0 != -1)
    {
      dispatch_once(&qword_100228FC0, &stru_1001FABC0);
    }

    if (!_NRLogIsLevelEnabled())
    {
      goto LABEL_33;
    }

    if (qword_100228FC0 != -1)
    {
      dispatch_once(&qword_100228FC0, &stru_1001FABC0);
    }

    v8 = qword_100228FB8;
    if (v3)
    {
      v9 = v3[4];
      if (!v9)
      {
        v10 = objc_getProperty(v3, v7, 8, 1);
        pid = xpc_connection_get_pid(v10);
        v12 = [[NSString alloc] initWithFormat:@"unknown:%d", pid];
        bzero(buffer, 0x400uLL);
        if (pid >= 1 && proc_pidpath(pid, buffer, 0x400u) >= 1 && buffer[0])
        {
          v13 = [[NSString alloc] initWithFormat:@"%s:%d", buffer, pid];

          v12 = v13;
        }

        v14 = v3[4];
        v3[4] = v12;

        v9 = v3[4];
      }

      v15 = v9;
    }

    else
    {
      v15 = 0;
    }

    _NRLogWithArgs();

LABEL_32:
LABEL_33:

    goto LABEL_34;
  }

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
      v17 = v3[4];
      if (!v17)
      {
        v18 = objc_getProperty(v3, v16, 8, 1);
        v19 = xpc_connection_get_pid(v18);
        v20 = [[NSString alloc] initWithFormat:@"unknown:%d", v19];
        bzero(buffer, 0x400uLL);
        if (v19 >= 1 && proc_pidpath(v19, buffer, 0x400u) >= 1 && buffer[0])
        {
          v21 = [[NSString alloc] initWithFormat:@"%s:%d", buffer, v19];

          v20 = v21;
        }

        v22 = v3[4];
        v3[4] = v20;

        v17 = v3[4];
      }

      v8 = v17;
    }

    else
    {
      v8 = 0;
    }

    _NRLogWithArgs();
    v6 = 0;
    goto LABEL_32;
  }

  v6 = 0;
LABEL_34:
  objc_opt_self();
  if (qword_1002290C0 != -1)
  {
    dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
  }

  v23 = qword_1002290B8;
  v24 = v6;
  if (v23)
  {
    if (v24)
    {
      sub_1000B7458(0, @"TetheringBundleIDs", v24);
    }

    else
    {
      sub_1000B76C8(0, @"TetheringBundleIDs");
    }
  }

  return 0;
}

uint64_t sub_10005F1F0(void *a1)
{
  Property = a1;
  v3 = Property;
  if (Property)
  {
    Property = objc_getProperty(Property, v2, 16, 1);
  }

  v41 = xpc_dictionary_get_BOOL(Property, nrXPCKeyPreferWiFiAllowed);
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

    v38 = v12;
    v39 = v41;
    v37 = 997;
    v35 = "";
    v36 = "handleSetPreferWiFiAllowed";
    _NRLogWithArgs();
  }

  objc_opt_self();
  if (qword_1002290C0 != -1)
  {
    dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
  }

  v40 = v3;
  v13 = qword_1002290B8;
  v14 = v13;
  if (v13)
  {
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v15 = v13[28];
    v16 = [v15 countByEnumeratingWithState:&v42 objects:buffer count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v43;
      if (v41)
      {
        v19 = "NO";
      }

      else
      {
        v19 = "YES";
      }

      do
      {
        for (i = 0; i != v17; i = i + 1)
        {
          if (*v43 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v27 = [v14[28] objectForKeyedSubscript:{*(*(&v42 + 1) + 8 * i), v35, v36, v37, v38, v39, v40}];
          v28 = v27;
          if (v27)
          {
            dispatch_assert_queue_V2(*(v27 + 136));
            if (_NRIsAppleInternal())
            {
              v29 = v28[12];
              v30 = _NRCopyLogObjectForNRUUID();
              IsLevelEnabled = _NRLogIsLevelEnabled();

              if (IsLevelEnabled)
              {
                v32 = v28[12];
                v33 = _NRCopyLogObjectForNRUUID();
                v37 = 2390;
                v38 = v41;
                v35 = "";
                v36 = "[NRDDeviceConductor setPreferWiFiAllowedForTesting:]";
                _NRLogWithArgs();
              }

              v21 = [NSNumber numberWithBool:v41 ^ 1, v35];
              sub_1000B7458(v28[12], @"DisablePreferWiFi", v21);
              sub_1000EC910(v28, 1026, @"%s", v22, v23, v24, v25, v26, v19);
            }
          }
        }

        v17 = [v15 countByEnumeratingWithState:&v42 objects:buffer count:16];
      }

      while (v17);
    }
  }

  return 0;
}

uint64_t sub_10005F5E4(void *a1)
{
  Property = a1;
  v3 = Property;
  if (Property)
  {
    Property = objc_getProperty(Property, v2, 16, 1);
  }

  v4 = xpc_dictionary_get_BOOL(Property, nrXPCKeySimulateAltAccount);
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
    v15 = [NSNumber numberWithBool:v4];
    sub_1000B7458(0, @"SimulateAltAccount", v15);
  }

  return 0;
}

uint64_t sub_10005F868(void *a1)
{
  Property = a1;
  v3 = Property;
  if (Property)
  {
    Property = objc_getProperty(Property, v2, 16, 1);
  }

  v41 = xpc_dictionary_get_BOOL(Property, nrXPCKeyWiFiRangeExtensionAllowed);
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

    v38 = v12;
    v39 = v41;
    v37 = 962;
    v35 = "";
    v36 = "handleSetWiFiRangeExtensionAllowed";
    _NRLogWithArgs();
  }

  objc_opt_self();
  if (qword_1002290C0 != -1)
  {
    dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
  }

  v40 = v3;
  v13 = qword_1002290B8;
  v14 = v13;
  if (v13)
  {
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v15 = v13[28];
    v16 = [v15 countByEnumeratingWithState:&v42 objects:buffer count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v43;
      if (v41)
      {
        v19 = "NO";
      }

      else
      {
        v19 = "YES";
      }

      do
      {
        for (i = 0; i != v17; i = i + 1)
        {
          if (*v43 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v27 = [v14[28] objectForKeyedSubscript:{*(*(&v42 + 1) + 8 * i), v35, v36, v37, v38, v39, v40}];
          v28 = v27;
          if (v27)
          {
            dispatch_assert_queue_V2(*(v27 + 136));
            if (_NRIsAppleInternal())
            {
              v29 = v28[12];
              v30 = _NRCopyLogObjectForNRUUID();
              IsLevelEnabled = _NRLogIsLevelEnabled();

              if (IsLevelEnabled)
              {
                v32 = v28[12];
                v33 = _NRCopyLogObjectForNRUUID();
                v37 = 2379;
                v38 = v41;
                v35 = "";
                v36 = "[NRDDeviceConductor setWiFiRangeExtensionAllowedForTesting:]";
                _NRLogWithArgs();
              }

              v21 = [NSNumber numberWithBool:v41 ^ 1, v35];
              sub_1000B7458(v28[12], @"DisableRangeExtension", v21);
              sub_1000EC910(v28, 1025, @"%s", v22, v23, v24, v25, v26, v19);
            }
          }
        }

        v17 = [v15 countByEnumeratingWithState:&v42 objects:buffer count:16];
      }

      while (v17);
    }
  }

  return 0;
}

uint64_t sub_10005FC5C(void *a1)
{
  Property = a1;
  v3 = Property;
  if (Property)
  {
    Property = objc_getProperty(Property, v2, 16, 1);
  }

  v4 = xpc_dictionary_get_BOOL(Property, nrXPCKeyWatchRoleSwitchAllowed);
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
    if (v4)
    {
      sub_1000B7458(0, @"EnableWatchRoleSwitch", &__kCFBooleanTrue);
    }

    else
    {
      sub_1000B76C8(0, @"EnableWatchRoleSwitch");
    }
  }

  return 0;
}

uint64_t sub_10005FED8(void *a1)
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
    v32 = sub_100056D2C();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      goto LABEL_44;
    }

    goto LABEL_45;
  }

  if (!nrXPCKeyNRUUID)
  {
    v34 = sub_100056D2C();
    v35 = _NRLogIsLevelEnabled();

    if (v35)
    {
      goto LABEL_44;
    }

    goto LABEL_45;
  }

  uuid = xpc_dictionary_get_uuid(v4, nrXPCKeyNRUUID);
  if (!uuid)
  {
    v36 = sub_100056D2C();
    v37 = _NRLogIsLevelEnabled();

    if (v37)
    {
      goto LABEL_44;
    }

    goto LABEL_45;
  }

  v7 = uuid;
  if (uuid_is_null(uuid))
  {
    v38 = sub_100056D2C();
    v39 = _NRLogIsLevelEnabled();

    if (v39)
    {
LABEL_44:
      v40 = sub_100056D2C();
      _NRLogWithArgs();
    }

LABEL_45:

    goto LABEL_46;
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

      _NRLogWithArgs();
    }

    objc_opt_self();
    if (qword_1002290C0 != -1)
    {
      dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
    }

    v18 = qword_1002290B8;
    v47[0] = _NSConcreteStackBlock;
    v47[1] = 3221225472;
    v48 = sub_1000604A0;
    v49 = &unk_1001FAC38;
    v50 = v8;
    v51 = v3;
    v19 = v8;
    v20 = v47;
    if (v18)
    {
      v21 = sub_100003490();
      dispatch_assert_queue_V2(v21);

      v22 = [v18[28] objectForKeyedSubscript:v19];
      if (v22)
      {
        v46 = v3;
        v23 = v20;
        dispatch_assert_queue_V2(*(v22 + 136));
        dispatch_assert_queue_V2(*(v22 + 136));
        v24 = sub_100163A30(NRDLocalDevice, *(v22 + 96));
        v25 = v24;
        if (v24)
        {
          v26 = *(v24 + 144);
        }

        else
        {
          v26 = 0;
        }

        v27 = v26;
        v28 = [v27 getDefaultLinkSubtypeForLinkType:1];

        v29 = sub_1000EA2C8(v22, 1, v28);
        if (v29 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
        {
          sub_1000B6B70(v29, v23);
        }

        else
        {
          v48(v23, 0);
        }

        v3 = v46;
      }

      else
      {
        v48(v20, 0);
      }
    }

    v30 = -2000;
    goto LABEL_36;
  }

LABEL_46:
  v41 = sub_100056D2C();
  v42 = _NRLogIsLevelEnabled();

  if (v42)
  {
    v43 = sub_100056D2C();
    v45 = sub_100056D80(v3, v44);
    _NRLogWithArgs();
  }

  v30 = -2005;
LABEL_36:

  return v30;
}

void sub_1000604A0(uint64_t a1, uint64_t a2)
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

    v6 = qword_100228FB8;
    v8 = *(a1 + 32);
    v7 = *(a1 + 40);
    if (v7)
    {
      v9 = v7[4];
      if (!v9)
      {
        Property = objc_getProperty(*(a1 + 40), v5, 8, 1);
        pid = xpc_connection_get_pid(Property);
        v12 = [[NSString alloc] initWithFormat:@"unknown:%d", pid];
        bzero(buffer, 0x400uLL);
        if (pid >= 1 && proc_pidpath(pid, buffer, 0x400u) >= 1 && buffer[0])
        {
          v13 = [[NSString alloc] initWithFormat:@"%s:%d", buffer, pid];

          v12 = v13;
        }

        v14 = v7[4];
        v7[4] = v12;

        v9 = v7[4];
      }

      v7 = v9;
    }

    _NRLogWithArgs();
  }

  v15 = *(a1 + 40);
  if (v15)
  {
    v15 = objc_getProperty(v15, v4, 24, 1);
  }

  xpc_dictionary_set_int64(v15, nrXPCKeyResult, 0);
  v17 = *(a1 + 40);
  if (v17)
  {
    v17 = objc_getProperty(v17, v16, 24, 1);
  }

  xpc_dictionary_set_uint64(v17, nrXPCKeyBTLatency, a2);
  v19 = *(a1 + 40);
  if (v19)
  {
    v19 = objc_getProperty(v19, v18, 8, 1);
  }

  connection = v19;
  v21 = *(a1 + 40);
  if (v21)
  {
    v22 = objc_getProperty(v21, v20, 24, 1);
  }

  else
  {
    v22 = 0;
  }

  xpc_connection_send_message(connection, v22);
}

uint64_t sub_100060724(void *a1)
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

    v4 = qword_100228FB8;
    if (v1)
    {
      v5 = v1[4];
      if (!v5)
      {
        Property = objc_getProperty(v1, v3, 8, 1);
        pid = xpc_connection_get_pid(Property);
        v8 = [[NSString alloc] initWithFormat:@"unknown:%d", pid];
        bzero(buffer, 0x400uLL);
        if (pid >= 1 && proc_pidpath(pid, buffer, 0x400u) >= 1 && buffer[0])
        {
          v9 = [[NSString alloc] initWithFormat:@"%s:%d", buffer, pid];

          v8 = v9;
        }

        v10 = v1[4];
        v1[4] = v8;

        v5 = v1[4];
      }

      v11 = v5;
    }

    else
    {
      v11 = 0;
    }

    _NRLogWithArgs();
  }

  if (v1)
  {
    v12 = objc_getProperty(v1, v2, 24, 1);
  }

  else
  {
    v12 = 0;
  }

  v13 = nrXPCKeyBabelRoutes;
  v14 = v12;
  xpc_dictionary_set_string(v14, v13, [@"BABEL_NOT_SUPPORTED" UTF8String]);

  return 0;
}

uint64_t sub_100060950(void *a1)
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

  return -2005;
}

uint64_t sub_100060B24(void *a1)
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

    v4 = qword_100228FB8;
    if (v1)
    {
      v5 = v1[4];
      if (!v5)
      {
        Property = objc_getProperty(v1, v3, 8, 1);
        pid = xpc_connection_get_pid(Property);
        v8 = [[NSString alloc] initWithFormat:@"unknown:%d", pid];
        bzero(buffer, 0x400uLL);
        if (pid >= 1 && proc_pidpath(pid, buffer, 0x400u) >= 1 && buffer[0])
        {
          v9 = [[NSString alloc] initWithFormat:@"%s:%d", buffer, pid];

          v8 = v9;
        }

        v10 = v1[4];
        v1[4] = v8;

        v5 = v1[4];
      }

      v11 = v5;
    }

    else
    {
      v11 = 0;
    }

    v125 = 1140;
    v127 = v11;
    v121 = "";
    v123 = "handleDevicePreferences";
    _NRLogWithArgs();
  }

  if (v1)
  {
    v12 = objc_getProperty(v1, v2, 16, 1);
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;
  v14 = v13;
  if (!v13)
  {
    v103 = sub_100056D2C();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      goto LABEL_125;
    }

    goto LABEL_126;
  }

  if (!nrXPCKeyDeviceIdentifier)
  {
    v105 = sub_100056D2C();
    v106 = _NRLogIsLevelEnabled();

    if (v106)
    {
      goto LABEL_125;
    }

    goto LABEL_126;
  }

  uuid = xpc_dictionary_get_uuid(v13, nrXPCKeyDeviceIdentifier);
  if (!uuid)
  {
    v107 = sub_100056D2C();
    v108 = _NRLogIsLevelEnabled();

    if (v108)
    {
LABEL_125:
      v109 = sub_100056D2C();
      _NRLogWithArgs();
    }

LABEL_126:

    goto LABEL_127;
  }

  v16 = [[NSUUID alloc] initWithUUIDBytes:uuid];

  if (v16)
  {
    if (v1)
    {
      v18 = objc_getProperty(v1, v17, 16, 1);
    }

    else
    {
      v18 = 0;
    }

    v19 = xpc_dictionary_get_value(v18, nrXPCKeyDevicePreferencesPolicyTrafficClassifiers);
    v21 = v19;
    if (v19 && xpc_get_type(v19) == &_xpc_type_array)
    {
      v77 = objc_alloc_init(NSMutableSet);
      applier[0] = _NSConcreteStackBlock;
      applier[1] = 3221225472;
      applier[2] = sub_1000619DC;
      applier[3] = &unk_1001FAC10;
      v143 = v1;
      v22 = v77;
      v144 = v22;
      xpc_array_apply(v21, applier);

      if (v1)
      {
        goto LABEL_26;
      }
    }

    else
    {
      v22 = 0;
      if (v1)
      {
LABEL_26:
        v23 = objc_getProperty(v1, v20, 16, 1);
        goto LABEL_27;
      }
    }

    v23 = 0;
LABEL_27:
    v139 = xpc_dictionary_get_BOOL(v23, nrXPCKeyDevicePreferencesIsDeviceSetupInProgress);
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

      v26 = qword_100228FB8;
      if (v1)
      {
        v27 = v1[4];
        if (!v27)
        {
          v28 = objc_getProperty(v1, v25, 8, 1);
          v29 = xpc_connection_get_pid(v28);
          v30 = [[NSString alloc] initWithFormat:@"unknown:%d", v29];
          bzero(buffer, 0x400uLL);
          if (v29 >= 1 && proc_pidpath(v29, buffer, 0x400u) >= 1 && buffer[0])
          {
            v31 = [[NSString alloc] initWithFormat:@"%s:%d", buffer, v29];

            v30 = v31;
          }

          v32 = v1[4];
          v1[4] = v30;

          v27 = v1[4];
        }

        v33 = v27;
      }

      else
      {
        v33 = 0;
      }

      v129 = v16;
      v131 = _NRCopyPolicyTrafficClassifiersDescription();
      v125 = 1180;
      v127 = v33;
      v121 = "";
      v123 = "handleDevicePreferences";
      _NRLogWithArgs();
    }

    if (v1)
    {
      v34 = objc_getProperty(v1, v24, 16, 1);
    }

    else
    {
      v34 = 0;
    }

    v35 = xpc_dictionary_get_value(v34, nrXPCKeyDevicePreferencesBTLinkPreferences);
    v36 = v35;
    if (v35 && xpc_get_type(v35) == &_xpc_type_dictionary)
    {
      v37 = [NRLinkPreferences createFromEncodedXPCDict:v36];
      if (qword_100228FC0 != -1)
      {
        dispatch_once(&qword_100228FC0, &stru_1001FABC0);
      }

      if (_NRLogIsLevelEnabled())
      {
        v137 = v37;
        if (qword_100228FC0 != -1)
        {
          dispatch_once(&qword_100228FC0, &stru_1001FABC0);
        }

        v79 = qword_100228FB8;
        if (v1)
        {
          v80 = v1[4];
          if (!v80)
          {
            v81 = objc_getProperty(v1, v78, 8, 1);
            v82 = xpc_connection_get_pid(v81);
            v83 = [[NSString alloc] initWithFormat:@"unknown:%d", v82];
            bzero(buffer, 0x400uLL);
            if (v82 >= 1 && proc_pidpath(v82, buffer, 0x400u) >= 1 && buffer[0])
            {
              v84 = [[NSString alloc] initWithFormat:@"%s:%d", buffer, v82];

              v83 = v84;
            }

            v85 = v1[4];
            v1[4] = v83;

            v80 = v1[4];
          }

          v86 = v80;
        }

        else
        {
          v86 = 0;
        }

        v129 = v16;
        v131 = v137;
        v125 = 1188;
        v127 = v86;
        v121 = "";
        v123 = "handleDevicePreferences";
        _NRLogWithArgs();

        v37 = v137;
      }
    }

    else
    {
      v37 = 0;
    }

    objc_opt_self();
    if (qword_1002290C0 != -1)
    {
      dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
    }

    v141 = qword_1002290B8;
    objc_opt_self();
    if (qword_100228FB0 != -1)
    {
      dispatch_once(&qword_100228FB0, &stru_1001FAB50);
    }

    v38 = qword_100228FA8;
    v140 = v38;
    if (v38)
    {
      v38 = objc_getProperty(v38, v39, 24, 1);
    }

    v41 = v38;
    if (v1)
    {
      v42 = objc_getProperty(v1, v40, 8, 1);
    }

    else
    {
      v42 = 0;
    }

    v43 = [v41 containsObject:{v42, v121, v123, v125, v127, v129, v131}];

    if (!v43)
    {
      if (qword_100228FC0 != -1)
      {
        dispatch_once(&qword_100228FC0, &stru_1001FABC0);
      }

      if (_NRLogIsLevelEnabled())
      {
        v67 = v37;
        if (qword_100228FC0 != -1)
        {
          dispatch_once(&qword_100228FC0, &stru_1001FABC0);
        }

        v69 = qword_100228FB8;
        if (v1)
        {
          v70 = v1[4];
          if (!v70)
          {
            v71 = objc_getProperty(v1, v68, 8, 1);
            v72 = xpc_connection_get_pid(v71);
            v73 = [[NSString alloc] initWithFormat:@"unknown:%d", v72];
            bzero(buffer, 0x400uLL);
            if (v72 >= 1 && proc_pidpath(v72, buffer, 0x400u) >= 1 && buffer[0])
            {
              v74 = [[NSString alloc] initWithFormat:@"%s:%d", buffer, v72];

              v73 = v74;
            }

            v75 = v1[4];
            v1[4] = v73;

            v70 = v1[4];
          }

          v76 = v70;
        }

        else
        {
          v76 = 0;
        }

        _NRLogWithArgs();

        v37 = v67;
      }

      goto LABEL_118;
    }

    v136 = v37;
    if (v1)
    {
      v45 = objc_getProperty(v1, v44, 8, 1);
      v46 = v141;
      sub_1000CA2C8(v141, v37, v45, v16);
      v48 = objc_getProperty(v1, v47, 8, 1);
    }

    else
    {
      v46 = v141;
      sub_1000CA2C8(v141, v37, 0, v16);
      v48 = 0;
    }

    v138 = v22;
    v49 = v48;
    v50 = v16;
    v135 = v36;
    if (v46)
    {
      v51 = sub_100003490();
      dispatch_assert_queue_V2(v51);

      v134 = v50;
      if (v49)
      {
        v52 = [*(v46 + 224) objectForKeyedSubscript:v50];
        if (v52)
        {
          v53 = v52;
          v133 = v22;
          v54 = v138;
          v55 = v49;
          dispatch_assert_queue_V2(*(v53 + 136));
          v56 = *(v53 + 216);
          v57 = v54;
          v58 = v55;
          if (v56)
          {
            v132 = v21;
            v59 = v16;
            v60 = *(v56 + 24);
            if (v60)
            {
              dispatch_assert_queue_V2(v60);
            }

            v61 = sub_100149B50(v58);
            v62 = *(v56 + 16);
            v63 = _NRCopyLogObjectForNRUUID();
            v64 = _NRLogIsLevelEnabled();

            if (v64)
            {
              v65 = *(v56 + 16);
              v66 = _NRCopyLogObjectForNRUUID();
              v128 = v61;
              v130 = _NRCopyPolicyTrafficClassifiersDescription();
              v126 = 264;
              v122 = "";
              v124 = "[NRDevicePreferencesManager setPolicyTrafficClassifiers:forConnection:]";
              _NRLogWithArgs();
            }

            [*(v56 + 40) setObject:v57 forKeyedSubscript:{v61, v122, v124, v126, v128, v130}];
            sub_100149594(v56);

            v16 = v59;
            v21 = v132;
          }

          v22 = v133;
          v36 = v135;
          v46 = v141;
        }

        else
        {
          v87 = objc_alloc_init(NRDOrphanedConnection);
          p_isa = &v87->super.isa;
          if (v87)
          {
            objc_storeStrong(&v87->_nrUUID, v16);
            objc_storeStrong(p_isa + 2, v48);
          }

          [*(v46 + 240) addObject:p_isa];
          v89 = [p_isa description];
          sub_1000059A8(0, 1022, 0, v89);

          v53 = 0;
        }

        goto LABEL_100;
      }

      v117 = sub_1000B9544();
      v118 = _NRLogIsLevelEnabled();

      if (v118)
      {
        v53 = sub_1000B9544();
        v122 = "[NRLinkDirector setPolicyTrafficClasses:forConnection:nrUUID:]";
        _NRLogWithArgs();
LABEL_100:

        v50 = v134;
      }
    }

    if (!v139)
    {
      v37 = v136;
      if (v1)
      {
        v98 = objc_getProperty(v1, v90, 8, 1);
      }

      else
      {
        v98 = 0;
      }

      sub_1000CA014(v46, v98);
      goto LABEL_118;
    }

    if (v1)
    {
      v91 = objc_getProperty(v1, v90, 8, 1);
    }

    else
    {
      v91 = 0;
    }

    v92 = v91;
    v93 = v50;
    if (!v46)
    {
LABEL_117:

      v36 = v135;
      v37 = v136;
LABEL_118:

      v101 = 0;
      goto LABEL_119;
    }

    v94 = v22;
    v95 = sub_100003490();
    dispatch_assert_queue_V2(v95);

    v96 = [v141[28] objectForKeyedSubscript:v93];
    if (v96)
    {
      v97 = v92;
      dispatch_assert_queue_V2(*(v96 + 136));
      if (v97)
      {
        [*(v96 + 208) addObject:v97];
        if ([*(v96 + 208) count])
        {
          sub_1001141F4(v96, 1);
        }

        goto LABEL_116;
      }

      v119 = sub_1000E83DC();
      v120 = _NRLogIsLevelEnabled();

      if (!v120)
      {
LABEL_116:

        v22 = v94;
        goto LABEL_117;
      }

      v100 = sub_1000E83DC();
      _NRLogWithArgs();
    }

    else
    {
      v99 = objc_alloc_init(NRDOrphanedConnection);
      v97 = &v99->super.isa;
      if (v99)
      {
        objc_storeStrong(&v99->_nrUUID, v16);
        objc_storeStrong(v97 + 2, v91);
      }

      [v141[30] addObject:{v97, v122}];
      v100 = [v97 description];
      sub_1000059A8(0, 1022, 0, v100);
    }

    goto LABEL_116;
  }

LABEL_127:
  v110 = sub_100056D2C();
  v111 = _NRLogIsLevelEnabled();

  if (v111)
  {
    v113 = sub_100056D2C();
    if (v1)
    {
      v114 = objc_getProperty(v1, v112, 16, 1);
      v116 = sub_100056D80(v1, v115);
    }

    else
    {
      v116 = 0;
      v114 = 0;
    }

    _NRLogWithArgs();
  }

  v101 = -2005;
LABEL_119:

  return v101;
}

uint64_t sub_1000619DC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (xpc_get_type(v4) != &_xpc_type_string)
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

      v6 = qword_100228FB8;
      Property = *(a1 + 32);
      if (Property)
      {
        Property = objc_getProperty(Property, v5, 16, 1);
      }

      v9 = Property;
      v10 = *(a1 + 32);
      if (v10)
      {
        v11 = v10[4];
        if (!v11)
        {
          v12 = objc_getProperty(v10, v8, 8, 1);
          pid = xpc_connection_get_pid(v12);
          v14 = [[NSString alloc] initWithFormat:@"unknown:%d", pid];
          bzero(buffer, 0x400uLL);
          if (pid >= 1 && proc_pidpath(pid, buffer, 0x400u) >= 1 && buffer[0])
          {
            v15 = [[NSString alloc] initWithFormat:@"%s:%d", buffer, pid];

            v14 = v15;
          }

          v16 = v10[4];
          v10[4] = v14;

          v11 = v10[4];
        }

        v10 = v11;
      }

LABEL_17:
      _NRLogWithArgs();

      goto LABEL_18;
    }

    goto LABEL_39;
  }

  string_ptr = xpc_string_get_string_ptr(v4);
  if (!string_ptr)
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

      v6 = qword_100228FB8;
      v21 = *(a1 + 32);
      if (v21)
      {
        v21 = objc_getProperty(v21, v20, 16, 1);
      }

      v9 = v21;
      v10 = *(a1 + 32);
      if (v10)
      {
        v23 = v10[4];
        if (!v23)
        {
          v24 = objc_getProperty(v10, v22, 8, 1);
          v25 = xpc_connection_get_pid(v24);
          v26 = [[NSString alloc] initWithFormat:@"unknown:%d", v25];
          bzero(buffer, 0x400uLL);
          if (v25 >= 1 && proc_pidpath(v25, buffer, 0x400u) >= 1 && buffer[0])
          {
            v27 = [[NSString alloc] initWithFormat:@"%s:%d", buffer, v25];

            v26 = v27;
          }

          v28 = v10[4];
          v10[4] = v26;

          v23 = v10[4];
        }

        v10 = v23;
      }

      goto LABEL_17;
    }

LABEL_39:
    v17 = 0;
    goto LABEL_40;
  }

  v19 = [[NSString alloc] initWithUTF8String:string_ptr];
  if (v19)
  {
    v6 = v19;
    [*(a1 + 40) addObject:v19];
    v17 = 1;
    goto LABEL_22;
  }

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

    v31 = qword_100228FB8;
    v32 = *(a1 + 32);
    if (v32)
    {
      v32 = objc_getProperty(v32, v30, 16, 1);
    }

    v34 = v32;
    v35 = *(a1 + 32);
    if (v35)
    {
      v36 = v35[4];
      if (!v36)
      {
        v37 = objc_getProperty(v35, v33, 8, 1);
        v38 = xpc_connection_get_pid(v37);
        v39 = sub_10013CB6C(v38, 1);
        v40 = v35[4];
        v35[4] = v39;

        v36 = v35[4];
      }

      v35 = v36;
    }

    _NRLogWithArgs();
  }

  v6 = 0;
LABEL_18:
  v17 = 0;
LABEL_22:

LABEL_40:
  return v17;
}

void sub_100061EC0(id a1)
{
  v1 = sub_10005703C([TerminusdXPCServer alloc]);
  v2 = qword_100228FA8;
  qword_100228FA8 = v1;

  sub_10005674C();
}

uint64_t sub_100061F04(void *a1)
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
    v51 = sub_100056D2C();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      goto LABEL_61;
    }

    goto LABEL_62;
  }

  if (!nrXPCKeyDeviceIdentifier)
  {
    v53 = sub_100056D2C();
    v54 = _NRLogIsLevelEnabled();

    if (v54)
    {
      goto LABEL_61;
    }

    goto LABEL_62;
  }

  uuid = xpc_dictionary_get_uuid(v4, nrXPCKeyDeviceIdentifier);
  if (!uuid)
  {
    v55 = sub_100056D2C();
    v56 = _NRLogIsLevelEnabled();

    if (v56)
    {
LABEL_61:
      v57 = sub_100056D2C();
      _NRLogWithArgs();
    }

LABEL_62:

    goto LABEL_63;
  }

  v7 = [[NSUUID alloc] initWithUUIDBytes:uuid];

  if (v7)
  {
    p_vtable = NRSCDInterfaceConfig.vtable;
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

      v9 = qword_100228FB8;
      v11 = [v7 UUIDString];
      if (v3)
      {
        v12 = v3[4];
        if (!v12)
        {
          v13 = objc_getProperty(v3, v10, 8, 1);
          pid = xpc_connection_get_pid(v13);
          v15 = [[NSString alloc] initWithFormat:@"unknown:%d", pid];
          bzero(buffer, 0x400uLL);
          if (pid >= 1 && proc_pidpath(pid, buffer, 0x400u) >= 1 && buffer[0])
          {
            v16 = [[NSString alloc] initWithFormat:@"%s:%d", buffer, pid];

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

      v78 = v11;
      v79 = v18;
      v77 = 1216;
      v75 = "";
      v76 = "handleDeviceMonitorStatusQuery";
      _NRLogWithArgs();
    }

    objc_opt_self();
    if (qword_1002290C0 != -1)
    {
      dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
    }

    v19 = qword_1002290B8;
    objc_opt_self();
    if (qword_100228FB0 != -1)
    {
      dispatch_once(&qword_100228FB0, &stru_1001FAB50);
    }

    v20 = qword_100228FA8;
    v22 = v20;
    if (v20)
    {
      v20 = objc_getProperty(v20, v21, 24, 1);
    }

    v24 = v20;
    if (v3)
    {
      v25 = objc_getProperty(v3, v23, 8, 1);
    }

    else
    {
      v25 = 0;
    }

    v26 = [v24 containsObject:{v25, v75, v76, v77, v78, v79}];

    if (!v26)
    {
      if (qword_100228FC0 != -1)
      {
        dispatch_once(&qword_100228FC0, &stru_1001FABC0);
      }

      if (!_NRLogIsLevelEnabled())
      {
        v46 = -2010;
LABEL_87:

        goto LABEL_88;
      }

      if (qword_100228FC0 != -1)
      {
        dispatch_once(&qword_100228FC0, &stru_1001FABC0);
      }

      v36 = qword_100228FB8;
      v38 = [v7 UUIDString];
      if (v3)
      {
        v39 = v3[4];
        if (!v39)
        {
          v40 = objc_getProperty(v3, v37, 8, 1);
          v41 = xpc_connection_get_pid(v40);
          v42 = [[NSString alloc] initWithFormat:@"unknown:%d", v41];
          bzero(buffer, 0x400uLL);
          if (v41 >= 1 && proc_pidpath(v41, buffer, 0x400u) >= 1 && buffer[0])
          {
            v43 = [[NSString alloc] initWithFormat:@"%s:%d", buffer, v41];

            v42 = v43;
          }

          v44 = v3[4];
          v3[4] = v42;

          v39 = v3[4];
        }

        v45 = v39;
      }

      else
      {
        v45 = 0;
      }

      _NRLogWithArgs();

      v46 = -2010;
LABEL_86:

      goto LABEL_87;
    }

    if (v3)
    {
      v28 = objc_getProperty(v3, v27, 8, 1);
      sub_1000C9EA0(v19, v28, v7);
      v30 = objc_getProperty(v3, v29, 24, 1);
    }

    else
    {
      sub_1000C9EA0(v19, 0, v7);
      v30 = 0;
    }

    v31 = v7;
    v32 = v30;
    v33 = v32;
    if (v19)
    {
      if (v32)
      {
        v34 = [v19[28] objectForKeyedSubscript:v31];
        if (v34)
        {
          v35 = v34;
          sub_1000F4354(v34, v33);
          v36 = v33;
        }

        else
        {
          v36 = v33;
          v47 = v31;
          v48 = objc_opt_self();
          sub_1000F4D84(v48, v47, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, v36);

          p_vtable = (NRSCDInterfaceConfig + 24);
          v35 = 0;
        }

LABEL_52:

        if (v36)
        {
          if (v3)
          {
            v50 = objc_getProperty(v3, v49, 8, 1);
          }

          else
          {
            v50 = 0;
          }

          xpc_connection_send_message(v50, v36);
          v46 = -2000;
          goto LABEL_86;
        }

LABEL_71:
        if (p_vtable[504] != -1)
        {
          dispatch_once(&qword_100228FC0, &stru_1001FABC0);
        }

        if (_NRLogIsLevelEnabled())
        {
          if (p_vtable[504] != -1)
          {
            dispatch_once(&qword_100228FC0, &stru_1001FABC0);
          }

          v64 = qword_100228FB8;
          v66 = [v31 UUIDString];
          if (v3)
          {
            v67 = v3[4];
            if (!v67)
            {
              v68 = objc_getProperty(v3, v65, 8, 1);
              v69 = xpc_connection_get_pid(v68);
              v70 = [[NSString alloc] initWithFormat:@"unknown:%d", v69];
              bzero(buffer, 0x400uLL);
              if (v69 >= 1 && proc_pidpath(v69, buffer, 0x400u) >= 1 && buffer[0])
              {
                v71 = [[NSString alloc] initWithFormat:@"%s:%d", buffer, v69];

                v70 = v71;
              }

              v72 = v3[4];
              v3[4] = v70;

              v67 = v3[4];
            }

            v73 = v67;
          }

          else
          {
            v73 = 0;
          }

          _NRLogWithArgs();
        }

        v36 = 0;
        v46 = -2008;
        goto LABEL_86;
      }

      v62 = sub_1000B9544();
      v63 = _NRLogIsLevelEnabled();

      if (v63)
      {
        v35 = sub_1000B9544();
        _NRLogWithArgs();
        v36 = 0;
        goto LABEL_52;
      }
    }

    goto LABEL_71;
  }

LABEL_63:
  v58 = sub_100056D2C();
  v59 = _NRLogIsLevelEnabled();

  if (v59)
  {
    v7 = sub_100056D2C();
    if (v3)
    {
      v22 = objc_getProperty(v3, v60, 16, 1);
      v19 = sub_100056D80(v3, v61);
    }

    else
    {
      v19 = 0;
      v22 = 0;
    }

    _NRLogWithArgs();
    v46 = -2005;
    goto LABEL_87;
  }

  v46 = -2005;
LABEL_88:

  return v46;
}

uint64_t sub_100062854(void *a1)
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

  objc_opt_self();
  if (qword_1002290C0 != -1)
  {
    dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
  }

  v11 = qword_1002290B8;
  sub_1000C9AD4(v11, 0);

  return 0;
}

uint64_t sub_100062A78(void *a1)
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

  objc_opt_self();
  if (qword_1002290C0 != -1)
  {
    dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
  }

  v11 = qword_1002290B8;
  sub_1000C9AD4(v11, 1);

  return 0;
}

uint64_t sub_100062C9C(void *a1)
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

  objc_opt_self();
  if (qword_1002290C0 != -1)
  {
    dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
  }

  v11 = qword_1002290B8;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100062F20;
  v14[3] = &unk_1001FABE8;
  v15 = v1;
  v12 = v1;

  return -2000;
}

void sub_100062F20(uint64_t a1, void *a2)
{
  v15 = a2;
  Property = *(a1 + 32);
  if (Property)
  {
    Property = objc_getProperty(Property, v3, 24, 1);
  }

  xpc_dictionary_set_int64(Property, nrXPCKeyResult, 0);
  v6 = *(a1 + 32);
  if (v6)
  {
    v6 = objc_getProperty(v6, v5, 24, 1);
  }

  v7 = nrXPCKeyIDSDeviceID;
  v8 = v6;
  xpc_dictionary_set_string(v8, v7, [v15 UTF8String]);

  v10 = *(a1 + 32);
  if (v10)
  {
    v10 = objc_getProperty(v10, v9, 8, 1);
  }

  v12 = v10;
  v13 = *(a1 + 32);
  if (v13)
  {
    v14 = objc_getProperty(v13, v11, 24, 1);
  }

  else
  {
    v14 = 0;
  }

  xpc_connection_send_message(v12, v14);
}

uint64_t sub_100063020(void *a1)
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

  objc_opt_self();
  v11 = sub_100003490();
  dispatch_assert_queue_V2(v11);

  sub_1001619D8();
  v12 = [qword_100229428 copy];
  v13 = objc_alloc_init(NSMutableString);
  [v13 appendFormat:@"%llu devices:", objc_msgSend(v12, "count")];
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v14 = v12;
  v15 = [v14 countByEnumeratingWithState:&v29 objects:buffer count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v30;
    do
    {
      for (i = 0; i != v16; i = i + 1)
      {
        if (*v30 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = [v14 objectForKeyedSubscript:*(*(&v29 + 1) + 8 * i)];
        v20 = sub_100166548(v19);
        [v13 appendFormat:@"\n\t%@", v20];
      }

      v16 = [v14 countByEnumeratingWithState:&v29 objects:buffer count:16];
    }

    while (v16);
  }

  if (v13)
  {
    if (v1)
    {
      v22 = objc_getProperty(v1, v21, 24, 1);
    }

    else
    {
      v22 = 0;
    }

    v23 = nrXPCKeyDeviceListString;
    v24 = v22;
    xpc_dictionary_set_string(v24, v23, [v13 UTF8String]);
    v25 = 0;
  }

  else
  {
    v27 = sub_100056D2C();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (!IsLevelEnabled)
    {
      v25 = -2009;
      goto LABEL_27;
    }

    v24 = sub_100056D2C();
    _NRLogWithArgs();
    v25 = -2009;
  }

LABEL_27:
  return v25;
}

uint64_t sub_1000633D0(void *a1)
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
    v20 = sub_100056D2C();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      goto LABEL_31;
    }

    goto LABEL_32;
  }

  if (!nrXPCKeyNRUUID)
  {
    v22 = sub_100056D2C();
    v23 = _NRLogIsLevelEnabled();

    if (v23)
    {
      goto LABEL_31;
    }

    goto LABEL_32;
  }

  uuid = xpc_dictionary_get_uuid(v4, nrXPCKeyNRUUID);
  if (!uuid)
  {
    v24 = sub_100056D2C();
    v25 = _NRLogIsLevelEnabled();

    if (v25)
    {
      goto LABEL_31;
    }

    goto LABEL_32;
  }

  v7 = uuid;
  if (uuid_is_null(uuid))
  {
    v26 = sub_100056D2C();
    v27 = _NRLogIsLevelEnabled();

    if (v27)
    {
LABEL_31:
      v28 = sub_100056D2C();
      _NRLogWithArgs();
    }

LABEL_32:

    goto LABEL_33;
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

      v34 = [v8 UUIDString];
      _NRLogWithArgs();
    }

    v35[0] = _NSConcreteStackBlock;
    v35[1] = 3221225472;
    v35[2] = sub_100063844;
    v35[3] = &unk_1001FBF50;
    v36 = v3;
    sub_10016C20C(NRDLocalDevice, v8, v35);

    v18 = -2000;
    goto LABEL_23;
  }

LABEL_33:
  v29 = sub_100056D2C();
  v30 = _NRLogIsLevelEnabled();

  if (v30)
  {
    v31 = sub_100056D2C();
    v33 = sub_100056D80(v3, v32);
    _NRLogWithArgs();
  }

  v18 = -2005;
LABEL_23:

  return v18;
}

void sub_100063844(uint64_t a1, int64_t a2, void *a3)
{
  v18 = a3;
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

uint64_t sub_100063960(void *a1)
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
    v20 = sub_100056D2C();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      goto LABEL_31;
    }

    goto LABEL_32;
  }

  if (!nrXPCKeyNRUUID)
  {
    v22 = sub_100056D2C();
    v23 = _NRLogIsLevelEnabled();

    if (v23)
    {
      goto LABEL_31;
    }

    goto LABEL_32;
  }

  uuid = xpc_dictionary_get_uuid(v4, nrXPCKeyNRUUID);
  if (!uuid)
  {
    v24 = sub_100056D2C();
    v25 = _NRLogIsLevelEnabled();

    if (v25)
    {
      goto LABEL_31;
    }

    goto LABEL_32;
  }

  v7 = uuid;
  if (uuid_is_null(uuid))
  {
    v26 = sub_100056D2C();
    v27 = _NRLogIsLevelEnabled();

    if (v27)
    {
LABEL_31:
      v28 = sub_100056D2C();
      _NRLogWithArgs();
    }

LABEL_32:

    goto LABEL_33;
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

      v34 = [v8 UUIDString];
      _NRLogWithArgs();
    }

    v35[0] = _NSConcreteStackBlock;
    v35[1] = 3221225472;
    v35[2] = sub_100063DD4;
    v35[3] = &unk_1001FBF50;
    v36 = v3;
    sub_10016AE40(NRDLocalDevice, v8, v35);

    v18 = -2000;
    goto LABEL_23;
  }

LABEL_33:
  v29 = sub_100056D2C();
  v30 = _NRLogIsLevelEnabled();

  if (v30)
  {
    v31 = sub_100056D2C();
    v33 = sub_100056D80(v3, v32);
    _NRLogWithArgs();
  }

  v18 = -2005;
LABEL_23:

  return v18;
}

void sub_100063DD4(uint64_t a1, int64_t a2, void *a3)
{
  v18 = a3;
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

uint64_t sub_100063EF0(void *a1)
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

  v31[0] = _NSConcreteStackBlock;
  v31[1] = 3221225472;
  v32 = sub_100064400;
  v33 = &unk_1001FBF50;
  v34 = v1;
  v29 = v1;
  v28 = v31;
  objc_opt_self();
  v11 = sub_100003490();
  dispatch_assert_queue_V2(v11);

  sub_1001619D8();
  v12 = [qword_100229428 copy];
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  obj = v12;
  v13 = [obj countByEnumeratingWithState:&v35 objects:buffer count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v36;
    do
    {
      for (i = 0; i != v14; i = i + 1)
      {
        if (*v36 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v18 = *(*(&v35 + 1) + 8 * i);
        v19 = sub_100163B2C(NRDLocalDevice, v18, 0);
        v20 = v19;
        if (v19)
        {
          v21 = *(v19 + 24);
          v22 = [v20 description];
          sub_1000059A8(v21, 5002, v22, 0);

          v23 = sub_100166438(NRDLocalDevice, v20);
          [qword_100229428 setObject:v23 forKeyedSubscript:v18];

          if (v20[7])
          {
            [qword_100229430 setObject:0 forKeyedSubscript:?];
          }
        }

        else
        {
          v17 = sub_100166438(NRDLocalDevice, 0);
          [qword_100229428 setObject:v17 forKeyedSubscript:v18];
        }

        sub_1000B76C8(v18, 0);
        sub_100164E90(v20);
      }

      v14 = [obj countByEnumeratingWithState:&v35 objects:buffer count:16];
    }

    while (v14);
  }

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

    _NRLogWithArgs();
  }

  v32(v28, 0, 0);
  v25 = sub_100003490();
  dispatch_async(v25, &stru_1001FAE90);

  objc_opt_self();
  if (qword_1002290C0 != -1)
  {
    dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
  }

  v26 = qword_1002290B8;
  sub_1000BC670(v26);

  return -2000;
}

void sub_100064400(uint64_t a1, int64_t a2, void *a3)
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

uint64_t sub_100064520(void *a1)
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
    v23 = sub_100056D2C();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      goto LABEL_35;
    }

    goto LABEL_36;
  }

  if (!nrXPCKeyNRUUID)
  {
    v25 = sub_100056D2C();
    v26 = _NRLogIsLevelEnabled();

    if (v26)
    {
      goto LABEL_35;
    }

    goto LABEL_36;
  }

  uuid = xpc_dictionary_get_uuid(v4, nrXPCKeyNRUUID);
  if (!uuid)
  {
    v27 = sub_100056D2C();
    v28 = _NRLogIsLevelEnabled();

    if (v28)
    {
      goto LABEL_35;
    }

    goto LABEL_36;
  }

  v7 = uuid;
  if (uuid_is_null(uuid))
  {
    v29 = sub_100056D2C();
    v30 = _NRLogIsLevelEnabled();

    if (v30)
    {
LABEL_35:
      v31 = sub_100056D2C();
      _NRLogWithArgs();
    }

LABEL_36:

    goto LABEL_37;
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

      v37 = [v8 UUIDString];
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

    v38[0] = _NSConcreteStackBlock;
    v38[1] = 3221225472;
    v38[2] = sub_100064A08;
    v38[3] = &unk_1001FBF50;
    v39 = v3;
    sub_10016BD8C(NRDLocalDevice, v8, v38);

    v21 = -2000;
    goto LABEL_27;
  }

LABEL_37:
  v32 = sub_100056D2C();
  v33 = _NRLogIsLevelEnabled();

  if (v33)
  {
    v34 = sub_100056D2C();
    v36 = sub_100056D80(v3, v35);
    _NRLogWithArgs();
  }

  v21 = -2005;
LABEL_27:

  return v21;
}

void sub_100064A08(uint64_t a1, int64_t a2, void *a3)
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

uint64_t sub_100064B28(void *a1)
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
    v139 = sub_100056D2C();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      goto LABEL_158;
    }

    goto LABEL_159;
  }

  if (!nrXPCKeyNRUUID)
  {
    v141 = sub_100056D2C();
    v142 = _NRLogIsLevelEnabled();

    if (v142)
    {
      goto LABEL_158;
    }

    goto LABEL_159;
  }

  uuid = xpc_dictionary_get_uuid(v4, nrXPCKeyNRUUID);
  if (!uuid)
  {
    v143 = sub_100056D2C();
    v144 = _NRLogIsLevelEnabled();

    if (v144)
    {
      goto LABEL_158;
    }

    goto LABEL_159;
  }

  v7 = uuid;
  if (uuid_is_null(uuid))
  {
    v145 = sub_100056D2C();
    v146 = _NRLogIsLevelEnabled();

    if (v146)
    {
LABEL_158:
      v147 = sub_100056D2C();
      _NRLogWithArgs();
    }

LABEL_159:

    goto LABEL_160;
  }

  v8 = [[NSUUID alloc] initWithUUIDBytes:v7];

  if (v8)
  {
    if (qword_100228FC0 != -1)
    {
      dispatch_once(&qword_100228FC0, &stru_1001FABC0);
    }

    v9 = qword_100228FB8;
    v10 = _NRLogIsLevelEnabled();

    if (v10)
    {
      if (qword_100228FC0 != -1)
      {
        dispatch_once(&qword_100228FC0, &stru_1001FABC0);
      }

      v13 = qword_100228FB8;
      if (v3)
      {
        v14 = v3[4];
        if (!v14)
        {
          v15 = objc_getProperty(v3, v12, 8, 1);
          pid = xpc_connection_get_pid(v15);
          v17 = [[NSString alloc] initWithFormat:@"unknown:%d", pid];
          bzero(v202, 0x400uLL);
          if (pid >= 1 && proc_pidpath(pid, v202, 0x400u) >= 1 && LOBYTE(v202[0]))
          {
            v18 = [[NSString alloc] initWithFormat:@"%s:%d", v202, pid];

            v17 = v18;
          }

          v19 = v3[4];
          v3[4] = v17;

          v14 = v3[4];
        }

        v20 = v14;
      }

      else
      {
        v20 = 0;
      }

      v180 = [v8 UUIDString];
      _NRLogWithArgs();
    }

    if (v3)
    {
      v21 = objc_getProperty(v3, v11, 16, 1);
    }

    else
    {
      v21 = 0;
    }

    v22 = v21;
    int64 = xpc_dictionary_get_int64(v22, nrXPCKeyPairingProtocolVersion);

    if (v3)
    {
      v24 = objc_getProperty(v3, v23, 16, 1);
    }

    else
    {
      v24 = 0;
    }

    v25 = v24;
    uint64 = xpc_dictionary_get_uint64(v25, nrXPCKeyPeerNetworkRelayVersion);

    if (uint64 < 0x10000)
    {
      v30 = uint64;
    }

    else
    {
      if (qword_100228FC0 != -1)
      {
        dispatch_once(&qword_100228FC0, &stru_1001FABC0);
      }

      v28 = qword_100228FB8;
      v29 = _NRLogIsLevelEnabled();

      v30 = 0;
      if (v29)
      {
        if (qword_100228FC0 != -1)
        {
          dispatch_once(&qword_100228FC0, &stru_1001FABC0);
        }

        v31 = qword_100228FB8;
        _NRLogWithArgs();

        v30 = 0;
      }
    }

    if (v3)
    {
      v32 = objc_getProperty(v3, v27, 16, 1);
    }

    else
    {
      v32 = 0;
    }

    v33 = v32;
    v34 = xpc_dictionary_get_BOOL(v33, nrXPCKeyWasInitiallySetupUsingIDSPairing);

    v200 = 0;
    v192 = v30;
    if (v3)
    {
      v36 = objc_getProperty(v3, v35, 16, 1);
    }

    else
    {
      v36 = 0;
    }

    v37 = v36;
    data = xpc_dictionary_get_data(v37, nrXPCKeyOutOfBandKey, &v200);

    if (data)
    {
      v40 = [NSData _newZeroingDataWithBytes:data length:v200];
      if (v3)
      {
LABEL_40:
        v41 = objc_getProperty(v3, v39, 16, 1);
        goto LABEL_41;
      }
    }

    else
    {
      v40 = 0;
      if (v3)
      {
        goto LABEL_40;
      }
    }

    v41 = 0;
LABEL_41:
    v42 = v41;
    v43 = xpc_dictionary_get_BOOL(v42, nrXPCKeyPairWithSPPLink);

    if (v3)
    {
      v45 = objc_getProperty(v3, v44, 16, 1);
    }

    else
    {
      v45 = 0;
    }

    v46 = v45;
    v47 = xpc_dictionary_get_BOOL(v46, nrXPCKeyIsAltAccountPairing);

    if (v3)
    {
      v49 = objc_getProperty(v3, v48, 16, 1);
    }

    else
    {
      v49 = 0;
    }

    v50 = v49;
    v51 = xpc_dictionary_get_BOOL(v50, nrXPCKeyIsExternalPairing);

    v199 = 0;
    v191 = v43;
    if (v3)
    {
      v53 = objc_getProperty(v3, v52, 16, 1);
    }

    else
    {
      v53 = 0;
    }

    v54 = v53;
    v55 = xpc_dictionary_get_data(v54, nrXPCKeyRemoteDeviceMACAddress, &v199);

    v189 = v51;
    v190 = v47;
    if (v55)
    {
      v56 = [NSData alloc];
      v57 = [v56 initWithBytes:v55 length:v199];
    }

    else
    {
      v57 = 0;
    }

    v197[0] = _NSConcreteStackBlock;
    v197[1] = 3221225472;
    v197[2] = sub_1000661D8;
    v197[3] = &unk_1001FBF50;
    v58 = v3;
    v198 = v58;
    v59 = objc_retainBlock(v197);
    objc_opt_self();
    if (qword_1002290C0 != -1)
    {
      dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
    }

    v60 = qword_1002290B8;
    if (v60)
    {
      v62 = v60[8];

      if (v62 == 1)
      {
        v152 = v59;
        v153 = sub_100056D2C();
        v154 = _NRLogIsLevelEnabled();

        if (v154)
        {
          v155 = sub_100056D2C();
          _NRLogWithArgs();
        }

        v59 = v152;
        v152[2](v152, -2016, @"Pairing was attempted while in fixed interface mode");
        goto LABEL_121;
      }
    }

    if (v3)
    {
      v63 = objc_getProperty(v58, v61, 16, 1);
    }

    else
    {
      v63 = 0;
    }

    v64 = v63;
    v65 = xpc_dictionary_get_uint64(v64, nrXPCKeyPSM);

    v195 = v65;
    if (v65 >= 0x10000)
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

      (v59[2])(v59, -2005, @"Invalid psm");
      goto LABEL_121;
    }

    v194 = v59;
    v186 = v34;
    if (v3)
    {
      v67 = objc_getProperty(v58, v66, 16, 1);
    }

    else
    {
      v67 = 0;
    }

    v68 = v67;
    v69 = nrXPCKeyOperationalPropData;
    v70 = xpc_dictionary_get_value(v68, nrXPCKeyOperationalPropData);

    v188 = v57;
    if (!v70)
    {
      v84 = 0;
      goto LABEL_85;
    }

    v185 = v40;
    if (v3)
    {
      v72 = objc_getProperty(v58, v71, 16, 1);
    }

    else
    {
      v72 = 0;
    }

    v73 = v72;
    v74 = objc_opt_class();
    v75 = v73;
    v76 = v75;
    if (v75)
    {
      if (v69)
      {
        if (v74)
        {
          v202[0] = 0;
          v77 = xpc_dictionary_get_data(v75, v69, v202);
          if (v77)
          {
            if (v202[0])
            {
              v78 = v77;
              v79 = v8;
              v80 = [NSData alloc];
              v81 = [v80 initWithBytesNoCopy:v78 length:v202[0] freeWhenDone:0];
              v201 = 0;
              v82 = [NSKeyedUnarchiver unarchivedObjectOfClass:v74 fromData:v81 error:&v201];
              v83 = v201;
              if (v83 || !v82)
              {
                v170 = sub_100056D2C();
                LODWORD(v187) = _NRLogIsLevelEnabled();

                if (v187)
                {
                  v171 = sub_100056D2C();
                  _NRLogWithArgs();
                }

                v84 = 0;
              }

              else
              {
                v84 = v82;
              }

              v8 = v79;
              v40 = v185;
              v57 = v188;
LABEL_80:

              if (v84)
              {
                v85 = [v84 allowedLinkTypes];
                if ([v85 count])
                {
LABEL_82:

                  goto LABEL_85;
                }

                v86 = [v84 allowedLinkSubtypes];
                v87 = [v86 count];

                if (!v87)
                {
                  if (v3)
                  {
                    v129 = objc_getProperty(v58, v88, 8, 1);
                  }

                  else
                  {
                    v129 = 0;
                  }

                  v130 = v129;
                  v131 = [NSString stringWithUTF8String:nrXPCEntitlementTesting];
                  v132 = v130;
                  [v131 UTF8String];
                  v133 = xpc_connection_copy_entitlement_value();

                  v134 = v40;
                  v135 = v133 && xpc_get_type(v133) == &_xpc_type_BOOL && xpc_BOOL_get_value(v133);

                  if (!v135)
                  {
                    v59 = v194;
                    if (qword_100228FC0 != -1)
                    {
                      dispatch_once(&qword_100228FC0, &stru_1001FABC0);
                    }

                    v40 = v134;
                    v57 = v188;
                    if (_NRLogIsLevelEnabled())
                    {
                      if (qword_100228FC0 != -1)
                      {
                        dispatch_once(&qword_100228FC0, &stru_1001FABC0);
                      }

                      _NRLogWithArgs();
                    }

                    (v194[2])(v194, -2005, @"Received invalid operational properties");

                    goto LABEL_121;
                  }

                  if (qword_100228FC0 != -1)
                  {
                    dispatch_once(&qword_100228FC0, &stru_1001FABC0);
                  }

                  v136 = qword_100228FB8;
                  v137 = _NRLogIsLevelEnabled();

                  v40 = v134;
                  if (v137)
                  {
                    if (qword_100228FC0 != -1)
                    {
                      dispatch_once(&qword_100228FC0, &stru_1001FABC0);
                    }

                    v138 = qword_100228FB8;
                    _NRLogWithArgs();
                  }

                  v85 = v84;
                  v84 = 0;
                  goto LABEL_82;
                }

LABEL_85:
                sub_10013E868(v84);
                if (v3)
                {
                  v90 = objc_getProperty(v58, v89, 16, 1);
                }

                else
                {
                  v90 = 0;
                }

                v91 = v90;
                v92 = xpc_dictionary_get_value(v91, nrXPCKeyPeerIPAddressData);

                v187 = v92;
                if (v92 && xpc_get_type(v92) == &_xpc_type_data)
                {
                  v184 = v84;
                  v185 = v40;
                  v183 = v8;
                  v115 = [NSData alloc];
                  bytes_ptr = xpc_data_get_bytes_ptr(v92);
                  v114 = [v115 initWithBytes:bytes_ptr length:xpc_data_get_length(v92)];
                  v182[1] = NSSet;
                  v182[0] = objc_opt_class();
                  v117 = objc_opt_class();
                  v118 = objc_opt_class();
                  v119 = objc_opt_class();
                  v120 = objc_opt_class();
                  v121 = objc_opt_class();
                  v122 = objc_opt_class();
                  v123 = [NSSet setWithObjects:v182[0], v117, v118, v119, v120, v121, v122, objc_opt_class(), 0];
                  v196 = 0;
                  v94 = [NSKeyedUnarchiver unarchivedObjectOfClasses:v123 fromData:v114 error:&v196];
                  v112 = v196;
                  if (!v94 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || v112)
                  {
                    v84 = v184;
                    if (qword_100228FC0 != -1)
                    {
                      dispatch_once(&qword_100228FC0, &stru_1001FABC0);
                    }

                    v126 = qword_100228FB8;
                    v127 = _NRLogIsLevelEnabled();

                    if (v127)
                    {
                      if (qword_100228FC0 != -1)
                      {
                        dispatch_once(&qword_100228FC0, &stru_1001FABC0);
                      }

                      v128 = qword_100228FB8;
                      _NRLogWithArgs();
                    }

                    (v194[2])(v194, -2005, @"Failed to unarchive peer IP properties");

                    v8 = v183;
                    v40 = v185;
                    v57 = v188;
                    goto LABEL_120;
                  }

                  v8 = v183;
                  v84 = v184;
                  v40 = v185;
                  if (v3)
                  {
                    goto LABEL_90;
                  }
                }

                else
                {
                  v94 = 0;
                  if (v3)
                  {
LABEL_90:
                    v95 = objc_getProperty(v58, v93, 16, 1);
                    goto LABEL_91;
                  }
                }

                v95 = 0;
LABEL_91:
                v96 = v95;
                v97 = xpc_dictionary_get_BOOL(v96, nrXPCKeyIsEphemeral);

                if (!v97)
                {
LABEL_108:
                  if (v3)
                  {
                    v110 = objc_getProperty(v58, v98, 16, 1);
                  }

                  else
                  {
                    v110 = 0;
                  }

                  v111 = v110;
                  v112 = xpc_dictionary_get_value(v111, nrXPCKeyCandidateService);

                  v113 = v190;
                  if (v112 && xpc_get_type(v112) == &_xpc_type_string)
                  {
                    v114 = [NSString stringWithUTF8String:xpc_string_get_string_ptr(v112)];
                  }

                  else
                  {
                    v114 = 0;
                  }

                  v57 = v188;
                  sub_100169CF4(NRDLocalDevice, v8, int64, v192, v186, v40, v191, v113, v189, 0, 0, v195, v188, v84, v94, v114, v194);
LABEL_120:

                  v59 = v194;
LABEL_121:

                  v124 = -2000;
                  goto LABEL_122;
                }

                v184 = v84;
                v99 = v40;
                v100 = v8;
                objc_opt_self();
                if (_NRIsUUIDNonZero())
                {
                  v101 = sub_100003490();
                  dispatch_assert_queue_V2(v101);

                  sub_1001619D8();
                  v102 = [qword_100229428 objectForKeyedSubscript:v100];
                  if (v102)
                  {
                    goto LABEL_104;
                  }

                  v183 = v8;
                  if (qword_100229488 != -1)
                  {
                    dispatch_once(&qword_100229488, &stru_1001FD018);
                  }

                  v8 = &qword_100229000;
                  if (_NRLogIsLevelEnabled())
                  {
                    if (qword_100229488 != -1)
                    {
                      dispatch_once(&qword_100229488, &stru_1001FD018);
                    }

                    _NRLogWithArgs();
                  }

                  v103 = sub_10015D20C([NRDLocalDevice alloc], v100);
                  if (v103)
                  {
                    v102 = v103;
                    v103[8] = 1;
                    if ((v103[12] & 1) == 0)
                    {
                      v103[12] = 1;
                      sub_10015D3F4(v103);
                    }

                    [qword_100229428 setObject:v102 forKeyedSubscript:{v100, v182[0]}];
                    v104 = v102[3];
                    v105 = [v102 description];
                    sub_1000059A8(v104, 5000, v105, 0);

                    v8 = v183;
LABEL_104:

                    objc_opt_self();
                    if (qword_1002290C0 == -1)
                    {
LABEL_105:
                      v107 = qword_1002290B8;
                      if (v3)
                      {
                        v108 = objc_getProperty(v58, v106, 8, 1);
                      }

                      else
                      {
                        v108 = 0;
                      }

                      v109 = v108;
                      sub_1000CA9A0(v107, v102, v109);

                      v40 = v99;
                      v84 = v184;
                      goto LABEL_108;
                    }

LABEL_190:
                    dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
                    goto LABEL_105;
                  }

                  [qword_100229428 setObject:0 forKeyedSubscript:v100];
                }

                else
                {
                  v172 = sub_10015B480();
                  v173 = _NRLogIsLevelEnabled();

                  if (v173)
                  {
                    v174 = sub_10015B480();
                    _NRLogWithArgs();
                  }
                }

                v175 = sub_100056D2C();
                v176 = _NRLogIsLevelEnabled();

                if (v176)
                {
                  v177 = sub_100056D2C();
                  _NRLogWithArgs();
                }

                v3 = _os_log_pack_size();
                v102 = (v182 - ((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0));
                v178 = *__error();
                v179 = _os_log_pack_fill();
                *v179 = 136446210;
                *(v179 + 4) = "handleRegisterDeviceByNRUUID";
                sub_100056D2C();
                _NRLogAbortWithPack();
                goto LABEL_190;
              }

LABEL_179:
              v167 = sub_100056D2C();
              v168 = _NRLogIsLevelEnabled();

              if (v168)
              {
                v169 = sub_100056D2C();
                _NRLogWithArgs();
              }

              v59 = v194;
              (v194[2])(v194, -2005, @"Failed to get operational properties from registration request");
              goto LABEL_121;
            }

            v165 = sub_100056D2C();
            v166 = _NRLogIsLevelEnabled();

            if (v166)
            {
LABEL_176:
              v81 = sub_100056D2C();
              _NRLogWithArgs();
              v84 = 0;
              v40 = v185;
              goto LABEL_80;
            }
          }

          else
          {
            v163 = sub_100056D2C();
            v164 = _NRLogIsLevelEnabled();

            if (v164)
            {
              goto LABEL_176;
            }
          }

          v40 = v185;
LABEL_178:

          goto LABEL_179;
        }

        v160 = sub_100056D2C();
        v161 = _NRLogIsLevelEnabled();

        v40 = v185;
        if (v161)
        {
          goto LABEL_171;
        }

LABEL_172:

        goto LABEL_178;
      }

      v158 = sub_100056D2C();
      v159 = _NRLogIsLevelEnabled();

      v40 = v185;
      if ((v159 & 1) == 0)
      {
        goto LABEL_172;
      }
    }

    else
    {
      v156 = sub_100056D2C();
      v157 = _NRLogIsLevelEnabled();

      v40 = v185;
      if ((v157 & 1) == 0)
      {
        goto LABEL_172;
      }
    }

LABEL_171:
    v162 = sub_100056D2C();
    _NRLogWithArgs();

    goto LABEL_172;
  }

LABEL_160:
  v148 = sub_100056D2C();
  v149 = _NRLogIsLevelEnabled();

  if (v149)
  {
    v150 = sub_100056D2C();
    v181 = sub_100056D80(v3, v151);
    _NRLogWithArgs();
  }

  v124 = -2005;
LABEL_122:

  return v124;
}

void sub_1000661D8(uint64_t a1, int64_t a2, void *a3)
{
  v18 = a3;
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

uint64_t sub_1000662F4(void *a1)
{
  v1 = a1;
  v2 = sub_10016D1F8();
  if (v2)
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

      v5 = qword_100228FB8;
      if (v1)
      {
        v6 = v1[4];
        if (!v6)
        {
          Property = objc_getProperty(v1, v4, 8, 1);
          pid = xpc_connection_get_pid(Property);
          v9 = [[NSString alloc] initWithFormat:@"unknown:%d", pid];
          bzero(buffer, 0x400uLL);
          if (pid >= 1 && proc_pidpath(pid, buffer, 0x400u) >= 1 && LOBYTE(buffer[0]))
          {
            v10 = [[NSString alloc] initWithFormat:@"%s:%d", buffer, pid];

            v9 = v10;
          }

          v11 = v1[4];
          v1[4] = v9;

          v6 = v1[4];
        }

        v12 = v6;
      }

      else
      {
        v12 = 0;
      }

      v32 = [v2 UUIDString];
      _NRLogWithArgs();
    }

    if (v1)
    {
      v13 = objc_getProperty(v1, v3, 24, 1);
    }

    else
    {
      v13 = 0;
    }

    v14 = v13;
    v15 = v2;
    v16 = v15;
    if (v14)
    {
      v17 = nrXPCKeyNRUUID;
      if (nrXPCKeyNRUUID)
      {
        buffer[0] = 0;
        buffer[1] = 0;
        [v15 getUUIDBytes:buffer];
        xpc_dictionary_set_uuid(v14, v17, buffer);
LABEL_21:

LABEL_36:
        goto LABEL_37;
      }

      v29 = sub_100056D2C();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      if (!IsLevelEnabled)
      {
        goto LABEL_21;
      }
    }

    else
    {
      v27 = sub_100056D2C();
      v28 = _NRLogIsLevelEnabled();

      if (!v28)
      {
        goto LABEL_21;
      }
    }

    v31 = sub_100056D2C();
    _NRLogWithArgs();

    goto LABEL_21;
  }

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

    v14 = qword_100228FB8;
    if (v1)
    {
      v19 = v1[4];
      if (!v19)
      {
        v20 = objc_getProperty(v1, v18, 8, 1);
        v21 = xpc_connection_get_pid(v20);
        v22 = [[NSString alloc] initWithFormat:@"unknown:%d", v21];
        bzero(buffer, 0x400uLL);
        if (v21 >= 1 && proc_pidpath(v21, buffer, 0x400u) >= 1 && LOBYTE(buffer[0]))
        {
          v23 = [[NSString alloc] initWithFormat:@"%s:%d", buffer, v21];

          v22 = v23;
        }

        v24 = v1[4];
        v1[4] = v22;

        v19 = v1[4];
      }

      v25 = v19;
    }

    else
    {
      v25 = 0;
    }

    _NRLogWithArgs();

    goto LABEL_36;
  }

LABEL_37:

  return 0;
}

uint64_t sub_10006674C(void *a1)
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

    v4 = qword_100228FB8;
    if (v1)
    {
      v5 = v1[4];
      if (!v5)
      {
        Property = objc_getProperty(v1, v3, 8, 1);
        pid = xpc_connection_get_pid(Property);
        v8 = [[NSString alloc] initWithFormat:@"unknown:%d", pid];
        bzero(buffer, 0x400uLL);
        if (pid >= 1 && proc_pidpath(pid, buffer, 0x400u) >= 1 && buffer[0])
        {
          v9 = [[NSString alloc] initWithFormat:@"%s:%d", buffer, pid];

          v8 = v9;
        }

        v10 = v1[4];
        v1[4] = v8;

        v5 = v1[4];
      }

      v11 = v5;
    }

    else
    {
      v11 = 0;
    }

    _NRLogWithArgs();
  }

  if (v1)
  {
    v12 = objc_getProperty(v1, v2, 24, 1);
  }

  else
  {
    v12 = 0;
  }

  xpc_dictionary_set_uint64(v12, nrXPCKeyNetworkRelayVersion, 0x18uLL);

  return 0;
}

uint64_t sub_100066958(void *a1)
{
  Property = a1;
  v5 = Property;
  if (Property)
  {
    Property = objc_getProperty(Property, v4, 16, 1);
  }

  string = xpc_dictionary_get_string(Property, nrXPCKeyIDSDeviceID);
  if (!string)
  {
    v49 = sub_100056D2C();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (!IsLevelEnabled)
    {
      goto LABEL_47;
    }

    v32 = sub_100056D2C();
    v39 = sub_100056D80(v5, v51);
    goto LABEL_46;
  }

  v8 = string;
  if (*string)
  {
    if (v5)
    {
      v9 = objc_getProperty(v5, v7, 16, 1);
    }

    else
    {
      v9 = 0;
    }

    v10 = xpc_dictionary_get_BOOL(v9, nrXPCKeyShouldCreateDevice);
    v11 = [NSString stringWithUTF8String:v8];
    if (v11)
    {
      v12 = v11;
      v13 = sub_100169028(NRDLocalDevice, v11, v10);
      v1 = v13;
      if (v13)
      {
        v14 = 1;
      }

      else
      {
        v14 = v10;
      }

      if ((v14 & 1) == 0)
      {
        if (qword_100228FC0 != -1)
        {
          dispatch_once(&qword_100228FC0, &stru_1001FABC0);
        }

        if (!_NRLogIsLevelEnabled())
        {
          goto LABEL_63;
        }

        if (qword_100228FC0 != -1)
        {
          dispatch_once(&qword_100228FC0, &stru_1001FABC0);
        }

        v29 = qword_100228FB8;
        if (v5)
        {
          v42 = v5[4];
          if (!v42)
          {
            v43 = objc_getProperty(v5, v41, 8, 1);
            pid = xpc_connection_get_pid(v43);
            v45 = [[NSString alloc] initWithFormat:@"unknown:%d", pid];
            bzero(v67, 0x400uLL);
            if (pid >= 1 && proc_pidpath(pid, v67, 0x400u) >= 1 && LOBYTE(v67[0]))
            {
              v46 = [[NSString alloc] initWithFormat:@"%s:%d", v67, pid];

              v45 = v46;
            }

            v47 = v5[4];
            v5[4] = v45;

            v42 = v5[4];
          }

          v27 = v42;
        }

        else
        {
          v27 = 0;
        }

        _NRLogWithArgs();
LABEL_62:

LABEL_63:
        v40 = 0;
        goto LABEL_64;
      }

      if (v13)
      {
        v15 = v13->_nrUUID;
        if (v15)
        {
          v10 = v15;
          p_vtable = NRSCDInterfaceConfig.vtable;
          if (qword_100228FC0 == -1)
          {
            goto LABEL_15;
          }

          goto LABEL_73;
        }
      }

      v55 = sub_100056D2C();
      v56 = _NRLogIsLevelEnabled();

      if (v56)
      {
        v57 = sub_100056D2C();
        _NRLogWithArgs();
      }
    }

    else
    {
      v52 = sub_100056D2C();
      v53 = _NRLogIsLevelEnabled();

      if (v53)
      {
        v54 = sub_100056D2C();
        _NRLogWithArgs();
      }
    }

    v5 = _os_log_pack_size();
    v12 = &v67[-1] - ((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0);
    v58 = *__error();
    v59 = _os_log_pack_fill();
    *v59 = 136446210;
    *(v59 + 4) = "handleCompanionLinkCopyNRUUIDForIDSDeviceID";
    sub_100056D2C();
    _NRLogAbortWithPack();
LABEL_73:
    dispatch_once(&qword_100228FC0, &stru_1001FABC0);
LABEL_15:
    if (_NRLogIsLevelEnabled())
    {
      if (p_vtable[504] != -1)
      {
        dispatch_once(&qword_100228FC0, &stru_1001FABC0);
      }

      v18 = qword_100228FB8;
      if (v5)
      {
        v19 = v5[4];
        if (!v19)
        {
          v20 = objc_getProperty(v5, v17, 8, 1);
          v21 = xpc_connection_get_pid(v20);
          v22 = [[NSString alloc] initWithFormat:@"unknown:%d", v21];
          bzero(v67, 0x400uLL);
          if (v21 >= 1 && proc_pidpath(v21, v67, 0x400u) >= 1 && LOBYTE(v67[0]))
          {
            v23 = [[NSString alloc] initWithFormat:@"%s:%d", v67, v21];

            v22 = v23;
          }

          v24 = v5[4];
          v5[4] = v22;

          v19 = v5[4];
        }

        v25 = v19;
      }

      else
      {
        v25 = 0;
      }

      v65 = [v10 UUIDString];
      _NRLogWithArgs();
    }

    if (v5)
    {
      v26 = objc_getProperty(v5, v16, 24, 1);
    }

    else
    {
      v26 = 0;
    }

    v27 = v26;
    v28 = v10;
    v29 = v28;
    if (v27)
    {
      v30 = nrXPCKeyNRUUID;
      if (nrXPCKeyNRUUID)
      {
        v67[0] = 0;
        v67[1] = 0;
        [v28 getUUIDBytes:v67];
        xpc_dictionary_set_uuid(v27, v30, v67);
LABEL_32:

        goto LABEL_62;
      }

      v62 = sub_100056D2C();
      v63 = _NRLogIsLevelEnabled();

      if (!v63)
      {
        goto LABEL_32;
      }
    }

    else
    {
      v60 = sub_100056D2C();
      v61 = _NRLogIsLevelEnabled();

      if (!v61)
      {
        goto LABEL_32;
      }
    }

    v64 = sub_100056D2C();
    _NRLogWithArgs();

    goto LABEL_32;
  }

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

    v32 = qword_100228FB8;
    if (v5)
    {
      v33 = v5[4];
      if (!v33)
      {
        v34 = objc_getProperty(v5, v31, 8, 1);
        v35 = xpc_connection_get_pid(v34);
        v36 = [[NSString alloc] initWithFormat:@"unknown:%d", v35];
        bzero(v67, 0x400uLL);
        if (v35 >= 1 && proc_pidpath(v35, v67, 0x400u) >= 1 && LOBYTE(v67[0]))
        {
          v37 = [[NSString alloc] initWithFormat:@"%s:%d", v67, v35];

          v36 = v37;
        }

        v38 = v5[4];
        v5[4] = v36;

        v33 = v5[4];
      }

      v39 = v33;
    }

    else
    {
      v39 = 0;
    }

LABEL_46:
    _NRLogWithArgs();
  }

LABEL_47:
  v40 = -2005;
LABEL_64:

  return v40;
}

uint64_t sub_1000671F8(void *a1)
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
    v39 = sub_100056D2C();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      goto LABEL_54;
    }

    goto LABEL_55;
  }

  if (!nrXPCKeyNRUUID)
  {
    v41 = sub_100056D2C();
    v42 = _NRLogIsLevelEnabled();

    if (v42)
    {
      goto LABEL_54;
    }

    goto LABEL_55;
  }

  uuid = xpc_dictionary_get_uuid(v4, nrXPCKeyNRUUID);
  if (!uuid)
  {
    v43 = sub_100056D2C();
    v44 = _NRLogIsLevelEnabled();

    if (v44)
    {
      goto LABEL_54;
    }

    goto LABEL_55;
  }

  v7 = uuid;
  if (uuid_is_null(uuid))
  {
    v45 = sub_100056D2C();
    v46 = _NRLogIsLevelEnabled();

    if (v46)
    {
LABEL_54:
      v47 = sub_100056D2C();
      _NRLogWithArgs();
    }

LABEL_55:

    goto LABEL_56;
  }

  v8 = [[NSUUID alloc] initWithUUIDBytes:v7];

  if (v8)
  {
    v9 = sub_100163B2C(NRDLocalDevice, v8, 0);
    v10 = v9;
    if (!v9)
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

        v30 = qword_100228FB8;
        if (v3)
        {
          v31 = v3[4];
          if (!v31)
          {
            v32 = objc_getProperty(v3, v29, 8, 1);
            pid = xpc_connection_get_pid(v32);
            v34 = [[NSString alloc] initWithFormat:@"unknown:%d", pid];
            bzero(buffer, 0x400uLL);
            if (pid >= 1 && proc_pidpath(pid, buffer, 0x400u) >= 1 && LOBYTE(buffer[0]))
            {
              v35 = [[NSString alloc] initWithFormat:@"%s:%d", buffer, pid];

              v34 = v35;
            }

            v36 = v3[4];
            v3[4] = v34;

            v31 = v3[4];
          }

          v37 = v31;
        }

        else
        {
          v37 = 0;
        }

        _NRLogWithArgs();
      }

      v28 = -2008;
      goto LABEL_45;
    }

    v11 = *(v9 + 32);
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

      v14 = qword_100228FB8;
      if (v3)
      {
        v15 = v3[4];
        if (!v15)
        {
          v16 = objc_getProperty(v3, v13, 8, 1);
          v17 = xpc_connection_get_pid(v16);
          v18 = [[NSString alloc] initWithFormat:@"unknown:%d", v17];
          bzero(buffer, 0x400uLL);
          if (v17 >= 1 && proc_pidpath(v17, buffer, 0x400u) >= 1 && LOBYTE(buffer[0]))
          {
            v19 = [[NSString alloc] initWithFormat:@"%s:%d", buffer, v17];

            v18 = v19;
          }

          v20 = v3[4];
          v3[4] = v18;

          v15 = v3[4];
        }

        v21 = v15;
      }

      else
      {
        v21 = 0;
      }

      v22 = [v8 UUIDString];
      v60 = [v11 UUIDString];
      _NRLogWithArgs();
    }

    if (v3)
    {
      v23 = objc_getProperty(v3, v12, 24, 1);
    }

    else
    {
      v23 = 0;
    }

    v24 = v23;
    v25 = v11;
    v26 = v25;
    if (v24)
    {
      v27 = nrXPCKeyBluetoothUUID;
      if (nrXPCKeyBluetoothUUID)
      {
        if (v25)
        {
          buffer[0] = 0;
          buffer[1] = 0;
          [v25 getUUIDBytes:buffer];
          xpc_dictionary_set_uuid(v24, v27, buffer);
LABEL_29:

          v28 = 0;
LABEL_45:

          goto LABEL_46;
        }

        v56 = sub_100056D2C();
        v57 = _NRLogIsLevelEnabled();

        if (!v57)
        {
          goto LABEL_29;
        }
      }

      else
      {
        v54 = sub_100056D2C();
        v55 = _NRLogIsLevelEnabled();

        if (!v55)
        {
          goto LABEL_29;
        }
      }
    }

    else
    {
      v52 = sub_100056D2C();
      v53 = _NRLogIsLevelEnabled();

      if (!v53)
      {
        goto LABEL_29;
      }
    }

    v58 = sub_100056D2C();
    _NRLogWithArgs();

    goto LABEL_29;
  }

LABEL_56:
  v48 = sub_100056D2C();
  v49 = _NRLogIsLevelEnabled();

  if (v49)
  {
    v50 = sub_100056D2C();
    v59 = sub_100056D80(v3, v51);
    _NRLogWithArgs();
  }

  v28 = -2005;
LABEL_46:

  return v28;
}

uint64_t sub_1000678F0(void *a1)
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
    v37 = sub_100056D2C();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      goto LABEL_43;
    }

    goto LABEL_44;
  }

  if (!nrXPCKeyBluetoothUUID)
  {
    v39 = sub_100056D2C();
    v40 = _NRLogIsLevelEnabled();

    if (v40)
    {
      goto LABEL_43;
    }

    goto LABEL_44;
  }

  uuid = xpc_dictionary_get_uuid(v4, nrXPCKeyBluetoothUUID);
  if (!uuid)
  {
    v41 = sub_100056D2C();
    v42 = _NRLogIsLevelEnabled();

    if (v42)
    {
      goto LABEL_43;
    }

    goto LABEL_44;
  }

  v7 = uuid;
  if (uuid_is_null(uuid))
  {
    v43 = sub_100056D2C();
    v44 = _NRLogIsLevelEnabled();

    if (v44)
    {
LABEL_43:
      v45 = sub_100056D2C();
      _NRLogWithArgs();
    }

LABEL_44:

    goto LABEL_45;
  }

  v8 = [[NSUUID alloc] initWithUUIDBytes:v7];

  if (v8)
  {
    v9 = v8;
    objc_opt_self();
    v10 = sub_100003490();
    dispatch_assert_queue_V2(v10);

    v11 = v9;
    objc_opt_self();
    p_vtable = sub_100168BE8(NRDLocalDevice, v11, 1);

    if (p_vtable)
    {
      nrUUID = p_vtable->_nrUUID;
    }

    else
    {
      nrUUID = 0;
    }

    v14 = nrUUID;

    if (v14)
    {
      p_vtable = NRSCDInterfaceConfig.vtable;
      if (qword_100228FC0 == -1)
      {
        goto LABEL_12;
      }
    }

    else
    {
      v50 = sub_100056D2C();
      v51 = _NRLogIsLevelEnabled();

      if (v51)
      {
        v52 = sub_100056D2C();
        _NRLogWithArgs();
      }

      v3 = _os_log_pack_size();
      v11 = &v63[-1] - ((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0);
      v53 = *__error();
      v54 = _os_log_pack_fill();
      *v54 = 136446210;
      *(v54 + 4) = "handleCompanionLinkCopyNRUUIDForBluetoothUUID";
      sub_100056D2C();
      _NRLogAbortWithPack();
    }

    dispatch_once(&qword_100228FC0, &stru_1001FABC0);
LABEL_12:
    if (_NRLogIsLevelEnabled())
    {
      if (p_vtable[14]._dateRegistered != -1)
      {
        dispatch_once(&qword_100228FC0, &stru_1001FABC0);
      }

      v17 = qword_100228FB8;
      if (v3)
      {
        v18 = v3[4];
        if (!v18)
        {
          v19 = objc_getProperty(v3, v16, 8, 1);
          pid = xpc_connection_get_pid(v19);
          v21 = [[NSString alloc] initWithFormat:@"unknown:%d", pid];
          bzero(v63, 0x400uLL);
          if (pid >= 1 && proc_pidpath(pid, v63, 0x400u) >= 1 && LOBYTE(v63[0]))
          {
            v22 = [[NSString alloc] initWithFormat:@"%s:%d", v63, pid];

            v21 = v22;
          }

          v23 = v3[4];
          v3[4] = v21;

          v18 = v3[4];
        }

        v24 = v18;
      }

      else
      {
        v24 = 0;
      }

      v25 = [v11 UUIDString];
      v60 = [(NSUUID *)v14 UUIDString];
      _NRLogWithArgs();
    }

    if (v3)
    {
      v26 = objc_getProperty(v3, v15, 24, 1);
    }

    else
    {
      v26 = 0;
    }

    v27 = v26;
    v28 = v14;
    v29 = v28;
    if (v27)
    {
      v30 = nrXPCKeyNRUUID;
      if (nrXPCKeyNRUUID)
      {
        v63[0] = 0;
        v63[1] = 0;
        [(NSUUID *)v28 getUUIDBytes:v63];
        xpc_dictionary_set_uuid(v27, v30, v63);
        goto LABEL_29;
      }

      v57 = sub_100056D2C();
      v58 = _NRLogIsLevelEnabled();

      if (!v58)
      {
LABEL_29:

        v31 = sub_100163A30(NRDLocalDevice, v29);
        v33 = v31;
        if (v31 && *(v31 + 8) == 1)
        {
          if (v3)
          {
            v34 = objc_getProperty(v3, v32, 24, 1);
          }

          else
          {
            v34 = 0;
          }

          xpc_dictionary_set_BOOL(v34, nrXPCKeyIsEphemeral, 1);
        }

        v35 = 0;
        goto LABEL_35;
      }
    }

    else
    {
      v55 = sub_100056D2C();
      v56 = _NRLogIsLevelEnabled();

      if (!v56)
      {
        goto LABEL_29;
      }
    }

    v59 = sub_100056D2C();
    _NRLogWithArgs();

    goto LABEL_29;
  }

LABEL_45:
  v46 = sub_100056D2C();
  v47 = _NRLogIsLevelEnabled();

  if (v47)
  {
    v48 = sub_100056D2C();
    v61 = sub_100056D80(v3, v49);
    _NRLogWithArgs();
  }

  v35 = -2005;
LABEL_35:

  return v35;
}

uint64_t sub_100067FE4(void *a1)
{
  Property = a1;
  v3 = Property;
  if (Property)
  {
    Property = objc_getProperty(Property, v2, 16, 1);
  }

  v4 = xpc_dictionary_get_value(Property, nrXPCKeyMPKLLoggingVal);
  if (xpc_get_type(v4) != &_xpc_type_BOOL)
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
      v5 = -2005;
    }

    else
    {
      v5 = -2005;
    }

    goto LABEL_71;
  }

  value = xpc_BOOL_get_value(v4);
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

    v7 = "Dis";
    if (value)
    {
      v7 = "En";
    }

    if (gNRMPKLLoggingEnabled)
    {
      v8 = "en";
    }

    else
    {
      v8 = "dis";
    }

    v37 = v7;
    v39 = v8;
    v35 = 144;
    v31 = "";
    v33 = "terminusdSettingsSetMPKLLoggingEnabled";
    _NRLogWithArgs();
  }

  os_unfair_lock_lock(&unk_100229090);
  gNRMPKLLoggingEnabled = value;
  v9 = [[NSMutableDictionary alloc] initWithContentsOfFile:@"/var/mobile/Library/terminus/com.apple.terminus.plist"];
  if (!v9)
  {
    v9 = objc_alloc_init(NSMutableDictionary);
  }

  v10 = [NSNumber numberWithBool:value, v31, v33, v35, v37, v39];
  [v9 setObject:v10 forKeyedSubscript:@"MPKLLogging"];

  LODWORD(v10) = sub_10013A364(@"/var/mobile/Library/terminus/com.apple.terminus.plist", v9, 1);
  os_unfair_lock_unlock(&unk_100229090);
  if (v10)
  {
    if (qword_1002290B0 != -1)
    {
      dispatch_once(&qword_1002290B0, &stru_1001FB278);
    }

    if (!_NRLogIsLevelEnabled())
    {
      goto LABEL_44;
    }

    if (qword_1002290B0 != -1)
    {
      dispatch_once(&qword_1002290B0, &stru_1001FB278);
    }

    if (gNRMPKLLoggingEnabled)
    {
      v11 = "en";
    }

    else
    {
      v11 = "dis";
    }

    v36 = 155;
    v38 = v11;
    v32 = "";
    v34 = "terminusdSettingsSetMPKLLoggingEnabled";
  }

  else
  {
    if (qword_1002290B0 != -1)
    {
      dispatch_once(&qword_1002290B0, &stru_1001FB278);
    }

    if (!_NRLogIsLevelEnabled())
    {
      goto LABEL_44;
    }

    if (qword_1002290B0 != -1)
    {
      dispatch_once(&qword_1002290B0, &stru_1001FB278);
    }

    if (gNRMPKLLoggingEnabled)
    {
      v12 = "en";
    }

    else
    {
      v12 = "dis";
    }

    v36 = 157;
    v38 = v12;
    v32 = "";
    v34 = "terminusdSettingsSetMPKLLoggingEnabled";
  }

  _NRLogWithArgs();
LABEL_44:

  objc_opt_self();
  if (qword_1002290C0 != -1)
  {
    dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
  }

  v13 = qword_1002290B8;
  v14 = v13;
  if (v13)
  {
    v15 = *(v13 + 5);
    if (v15)
    {
      v42 = 0u;
      v43 = 0u;
      v40 = 0u;
      v41 = 0u;
      v16 = *(v15 + 40);
      v17 = [v16 countByEnumeratingWithState:&v40 objects:buffer count:16];
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

            [*(*(&v40 + 1) + 8 * i) virtualInterface];
          }

          v18 = [v16 countByEnumeratingWithState:&v40 objects:buffer count:16];
        }

        while (v18);
      }
    }
  }

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

    v22 = qword_100228FB8;
    if (v3)
    {
      v23 = v3[4];
      if (!v23)
      {
        v24 = objc_getProperty(v3, v21, 8, 1);
        pid = xpc_connection_get_pid(v24);
        v26 = [[NSString alloc] initWithFormat:@"unknown:%d", pid];
        bzero(buffer, 0x400uLL);
        if (pid >= 1 && proc_pidpath(pid, buffer, 0x400u) >= 1 && buffer[0])
        {
          v27 = [[NSString alloc] initWithFormat:@"%s:%d", buffer, pid];

          v26 = v27;
        }

        v28 = v3[4];
        v3[4] = v26;

        v23 = v3[4];
      }

      v29 = v23;
    }

    else
    {
      v29 = 0;
    }

    _NRLogWithArgs();
  }

  v5 = 0;
LABEL_71:

  return v5;
}

uint64_t sub_100068674(void *a1)
{
  Property = a1;
  v3 = Property;
  if (Property)
  {
    Property = objc_getProperty(Property, v2, 16, 1);
  }

  v4 = xpc_dictionary_get_value(Property, nrXPCKeyPacketLoggingVal);
  if (xpc_get_type(v4) != &_xpc_type_BOOL)
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
      v5 = -2005;
    }

    else
    {
      v5 = -2005;
    }

    goto LABEL_80;
  }

  value = xpc_BOOL_get_value(v4);
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

    v7 = "Dis";
    if (value)
    {
      v7 = "En";
    }

    if (gNRPacketLoggingEnabled)
    {
      v8 = "en";
    }

    else
    {
      v8 = "dis";
    }

    v41 = v7;
    v43 = v8;
    v39 = 124;
    v35 = "";
    v37 = "terminusdSettingsSetPacketLoggingEnabled";
    _NRLogWithArgs();
  }

  os_unfair_lock_lock(&unk_100229090);
  gNRPacketLoggingEnabled = value;
  v9 = [[NSMutableDictionary alloc] initWithContentsOfFile:@"/var/mobile/Library/terminus/com.apple.terminus.plist"];
  if (!v9)
  {
    v9 = objc_alloc_init(NSMutableDictionary);
  }

  v10 = [NSNumber numberWithBool:value, v35, v37, v39, v41, v43];
  [v9 setObject:v10 forKeyedSubscript:@"PacketLogging"];

  LODWORD(v10) = sub_10013A364(@"/var/mobile/Library/terminus/com.apple.terminus.plist", v9, 1);
  os_unfair_lock_unlock(&unk_100229090);
  if (v10)
  {
    if (qword_1002290B0 != -1)
    {
      dispatch_once(&qword_1002290B0, &stru_1001FB278);
    }

    if (!_NRLogIsLevelEnabled())
    {
      goto LABEL_44;
    }

    if (qword_1002290B0 != -1)
    {
      dispatch_once(&qword_1002290B0, &stru_1001FB278);
    }

    if (gNRPacketLoggingEnabled)
    {
      v11 = "en";
    }

    else
    {
      v11 = "dis";
    }

    v40 = 135;
    v42 = v11;
    v36 = "";
    v38 = "terminusdSettingsSetPacketLoggingEnabled";
  }

  else
  {
    if (qword_1002290B0 != -1)
    {
      dispatch_once(&qword_1002290B0, &stru_1001FB278);
    }

    if (!_NRLogIsLevelEnabled())
    {
      goto LABEL_44;
    }

    if (qword_1002290B0 != -1)
    {
      dispatch_once(&qword_1002290B0, &stru_1001FB278);
    }

    if (gNRPacketLoggingEnabled)
    {
      v12 = "en";
    }

    else
    {
      v12 = "dis";
    }

    v40 = 137;
    v42 = v12;
    v36 = "";
    v38 = "terminusdSettingsSetPacketLoggingEnabled";
  }

  _NRLogWithArgs();
LABEL_44:

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

    v14 = qword_100228FB8;
    if (value)
    {
      v15 = "En";
    }

    else
    {
      v15 = "Dis";
    }

    if (v3)
    {
      v16 = v3[4];
      if (!v16)
      {
        v17 = objc_getProperty(v3, v13, 8, 1);
        pid = xpc_connection_get_pid(v17);
        v19 = [[NSString alloc] initWithFormat:@"unknown:%d", pid];
        bzero(buffer, 0x400uLL);
        if (pid >= 1 && proc_pidpath(pid, buffer, 0x400u) >= 1 && buffer[0])
        {
          v20 = [[NSString alloc] initWithFormat:@"%s:%d", buffer, pid];

          v19 = v20;
        }

        v21 = v3[4];
        v3[4] = v19;

        v16 = v3[4];
      }

      v22 = v16;
    }

    else
    {
      v22 = 0;
    }

    v42 = v15;
    v44 = v22;
    v40 = 488;
    v36 = "";
    v38 = "handleSetPacketLogging";
    _NRLogWithArgs();
  }

  objc_opt_self();
  if (qword_1002290C0 != -1)
  {
    dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
  }

  v23 = qword_1002290B8;
  if (v23 && (v24 = v23[10], v23, v24 == 1))
  {
    objc_opt_self();
    if (qword_1002290C0 != -1)
    {
      dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
    }

    v25 = qword_1002290B8;
    v26 = v25;
    if (v25)
    {
      v48 = 0u;
      v49 = 0u;
      v46 = 0u;
      v47 = 0u;
      obj = v25[28];
      v27 = [obj countByEnumeratingWithState:&v46 objects:buffer count:16];
      if (v27)
      {
        v28 = v27;
        v29 = *v47;
        do
        {
          for (i = 0; i != v28; i = i + 1)
          {
            if (*v47 != v29)
            {
              objc_enumerationMutation(obj);
            }

            v31 = [v26[28] objectForKeyedSubscript:{*(*(&v46 + 1) + 8 * i), v36, v38, v40, v42, v44}];
            if (v31)
            {
              v32 = objc_alloc_init(NSMutableDictionary);
              v33 = [NSNumber numberWithBool:gNRPacketLoggingEnabled];
              [v32 setObject:v33 forKeyedSubscript:@"packet-logging"];

              sub_100114680(v31, v32);
            }
          }

          v28 = [obj countByEnumeratingWithState:&v46 objects:buffer count:16];
        }

        while (v28);
      }
    }

    v5 = 0;
  }

  else
  {
    v5 = 0;
  }

LABEL_80:

  return v5;
}

uint64_t sub_100068DB4(void *a1)
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
    v59 = sub_100056D2C();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      goto LABEL_93;
    }

    goto LABEL_94;
  }

  if (!nrXPCKeyNRUUID)
  {
    v61 = sub_100056D2C();
    v62 = _NRLogIsLevelEnabled();

    if (v62)
    {
      goto LABEL_93;
    }

    goto LABEL_94;
  }

  uuid = xpc_dictionary_get_uuid(v4, nrXPCKeyNRUUID);
  if (!uuid)
  {
    v63 = sub_100056D2C();
    v64 = _NRLogIsLevelEnabled();

    if (v64)
    {
      goto LABEL_93;
    }

    goto LABEL_94;
  }

  v7 = uuid;
  if (uuid_is_null(uuid))
  {
    v65 = sub_100056D2C();
    v66 = _NRLogIsLevelEnabled();

    if (v66)
    {
LABEL_93:
      v67 = sub_100056D2C();
      _NRLogWithArgs();
    }

LABEL_94:

    goto LABEL_95;
  }

  v8 = [[NSUUID alloc] initWithUUIDBytes:v7];

  if (v8)
  {
    if (v3)
    {
      v10 = objc_getProperty(v3, v9, 16, 1);
    }

    else
    {
      v10 = 0;
    }

    uint64 = xpc_dictionary_get_uint64(v10, nrXPCKeyDataProtectionClass);
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

      v12 = qword_100228FB8;
      String = NRDataProtectionClassCreateString();
      if (v3)
      {
        v15 = v3[4];
        if (!v15)
        {
          v16 = objc_getProperty(v3, v13, 8, 1);
          pid = xpc_connection_get_pid(v16);
          v18 = [[NSString alloc] initWithFormat:@"unknown:%d", pid];
          bzero(buffer, 0x400uLL);
          if (pid >= 1 && proc_pidpath(pid, buffer, 0x400u) >= 1 && LOBYTE(buffer[0]))
          {
            v19 = [[NSString alloc] initWithFormat:@"%s:%d", buffer, pid];

            v18 = v19;
          }

          v20 = v3[4];
          v3[4] = v18;

          v15 = v3[4];
        }

        v21 = v15;
      }

      else
      {
        v21 = 0;
      }

      _NRLogWithArgs();
    }

    if (uint64 == 1)
    {
      v22 = 3;
    }

    else
    {
      v22 = uint64;
    }

    v23 = sub_100163B2C(NRDLocalDevice, v8, 0);
    v24 = v23;
    if (!v23)
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

        v26 = qword_100228FB8;
        if (v3)
        {
          v27 = v3[4];
          if (!v27)
          {
            v28 = objc_getProperty(v3, v25, 8, 1);
            v29 = xpc_connection_get_pid(v28);
            v30 = [[NSString alloc] initWithFormat:@"unknown:%d", v29];
            bzero(buffer, 0x400uLL);
            if (v29 >= 1 && proc_pidpath(v29, buffer, 0x400u) >= 1 && LOBYTE(buffer[0]))
            {
              v31 = [[NSString alloc] initWithFormat:@"%s:%d", buffer, v29];

              v30 = v31;
            }

            v32 = v3[4];
            v3[4] = v30;

            v27 = v3[4];
          }

          v33 = v27;
        }

        else
        {
          v33 = 0;
        }

        _NRLogWithArgs();

        v34 = -2008;
      }

      else
      {
        v34 = -2008;
      }

      goto LABEL_84;
    }

    bytes = 0uLL;
    if (v22 == 4)
    {
      if ((*(v23 + 12) & 1) == 0)
      {
        buffer[0] = 0uLL;
        sub_100167D5C(v23, buffer);
        objc_opt_self();
        if (WORD5(buffer[0]))
        {
          if (WORD6(buffer[0]))
          {
            sub_100167D5C(v24, &bytes);
LABEL_78:
            if (v3)
            {
              v47 = objc_getProperty(v3, v46, 24, 1);
              xpc_dictionary_set_data(v47, nrXPCKeyIPv6Address, &bytes, 0x10uLL);
              v49 = objc_getProperty(v3, v48, 24, 1);
            }

            else
            {
              xpc_dictionary_set_data(0, nrXPCKeyIPv6Address, &bytes, 0x10uLL);
              v49 = 0;
            }

            v50 = nrXPCKeyUseASQUIC;
            v51 = v49;
            v52 = *(v24 + 144);
            xpc_dictionary_set_BOOL(v51, v50, [v52 usesTLS]);

            v34 = *(v24 + 40);
            if (v34)
            {
              v54 = *(v24 + 40);
              if (v3)
              {
                v55 = objc_getProperty(v3, v53, 24, 1);
              }

              else
              {
                v55 = 0;
              }

              v56 = nrXPCKeyIDSDeviceID;
              v57 = v55;
              xpc_dictionary_set_string(v57, v56, [v54 UTF8String]);

              v34 = 0;
            }

            goto LABEL_84;
          }
        }
      }

      if (qword_100228FC0 != -1)
      {
        dispatch_once(&qword_100228FC0, &stru_1001FABC0);
      }

      if (_NRLogIsLevelEnabled())
      {
        if (qword_100228FC0 == -1)
        {
LABEL_55:
          v35 = qword_100228FB8;
          v36 = NRDataProtectionClassCreateString();
          _NRLogWithArgs();

          goto LABEL_70;
        }

LABEL_98:
        dispatch_once(&qword_100228FC0, &stru_1001FABC0);
        goto LABEL_55;
      }
    }

    else
    {
      if (v22 != 3)
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

          v38 = qword_100228FB8;
          if (v3)
          {
            v39 = v3[4];
            if (!v39)
            {
              v40 = objc_getProperty(v3, v37, 8, 1);
              v41 = xpc_connection_get_pid(v40);
              v42 = [[NSString alloc] initWithFormat:@"unknown:%d", v41];
              bzero(buffer, 0x400uLL);
              if (v41 >= 1 && proc_pidpath(v41, buffer, 0x400u) >= 1 && LOBYTE(buffer[0]))
              {
                v43 = [[NSString alloc] initWithFormat:@"%s:%d", buffer, v41];

                v42 = v43;
              }

              v44 = v3[4];
              v3[4] = v42;

              v39 = v3[4];
            }

            v45 = v39;
          }

          else
          {
            v45 = 0;
          }

          _NRLogWithArgs();
        }

        goto LABEL_70;
      }

      if ((*(v23 + 12) & 1) == 0)
      {
        buffer[0] = 0uLL;
        sub_1001727AC(v23, buffer);
        objc_opt_self();
        if (WORD5(buffer[0]))
        {
          if (WORD6(buffer[0]))
          {
            sub_1001727AC(v24, &bytes);
            goto LABEL_78;
          }
        }
      }

      if (qword_100228FC0 != -1)
      {
        dispatch_once(&qword_100228FC0, &stru_1001FABC0);
      }

      if (_NRLogIsLevelEnabled())
      {
        if (qword_100228FC0 == -1)
        {
          goto LABEL_55;
        }

        goto LABEL_98;
      }
    }

LABEL_70:
    v34 = -2005;
LABEL_84:

    goto LABEL_85;
  }

LABEL_95:
  v68 = sub_100056D2C();
  v69 = _NRLogIsLevelEnabled();

  if (v69)
  {
    v70 = sub_100056D2C();
    v72 = sub_100056D80(v3, v71);
    _NRLogWithArgs();
  }

  v34 = -2005;
LABEL_85:

  return v34;
}

uint64_t sub_1000697D0(void *a1)
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

    v29 = 418;
    v30 = v10;
    v27 = "";
    v28 = "handleCompanionLinkFlushBTPipe";
    _NRLogWithArgs();
  }

  objc_opt_self();
  if (qword_1002290C0 != -1)
  {
    dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
  }

  v11 = qword_1002290B8;
  v12 = v11;
  if (v11)
  {
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v13 = v11[28];
    v14 = [v13 countByEnumeratingWithState:&v31 objects:buffer count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v32;
      do
      {
        for (i = 0; i != v15; i = i + 1)
        {
          if (*v32 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = [v12[28] objectForKeyedSubscript:{*(*(&v31 + 1) + 8 * i), v27, v28, v29, v30, v31}];
          v19 = sub_1000F1BC0(v18, 1);

          if ([(dispatch_queue_t *)v19 state]== 8 || [(dispatch_queue_t *)v19 state]== 9)
          {
            sub_100080EB4(v19, @"Flushing pipe for testing", v20, v21, v22, v23, v24, v25, v27);
          }
        }

        v15 = [v13 countByEnumeratingWithState:&v31 objects:buffer count:16];
      }

      while (v15);
    }
  }

  return 0;
}

uint64_t sub_100069AEC(void *a1)
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

  objc_opt_self();
  if (qword_1002290C0 != -1)
  {
    dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
  }

  v11 = qword_1002290B8;
  v12 = sub_1000BC44C(v11);

  if (v1)
  {
    v14 = objc_getProperty(v1, v13, 24, 1);
  }

  else
  {
    v14 = 0;
  }

  xpc_dictionary_set_uint64(v14, nrXPCKeyCompanionLinkCount, v12);

  return 0;
}

uint64_t sub_100069D40(void *a1)
{
  Property = a1;
  v3 = Property;
  if (Property)
  {
    Property = objc_getProperty(Property, v2, 16, 1);
  }

  v5 = xpc_dictionary_dup_fd(Property, nrXPCKeyCompanionLinkStatusDumpToFileDescriptor);
  if (v5 == -1)
  {
    if (qword_100228FC0 != -1)
    {
      dispatch_once(&qword_100228FC0, &stru_1001FABC0);
    }

    if (!_NRLogIsLevelEnabled())
    {
      goto LABEL_23;
    }

    if (qword_100228FC0 == -1)
    {
      goto LABEL_22;
    }

    goto LABEL_47;
  }

  if (v3)
  {
    v6 = objc_getProperty(v3, v4, 16, 1);
  }

  else
  {
    v6 = 0;
  }

  string = xpc_dictionary_get_string(v6, nrXPCKeyCompanionLinkStatusDumpToFilePath);
  if (string)
  {
    v8 = [[NSString alloc] initWithUTF8String:string];
    v9 = sub_10006A128();
    if (!v9)
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

      v14 = -2004;
      goto LABEL_45;
    }

    v10 = v8;
    v11 = v9;
    if (v5 < 0)
    {
      v15 = sub_10013A310();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      if ((IsLevelEnabled & 1) == 0)
      {
        goto LABEL_37;
      }
    }

    else
    {
      if (v10)
      {
        if ([v10 length])
        {
          v12 = [v11 dataUsingEncoding:4];
          v13 = sub_100003C44(v5, v10, v12);

          if (v13)
          {
            v14 = 0;
LABEL_45:

            goto LABEL_46;
          }

LABEL_38:
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

          v14 = -2012;
          goto LABEL_45;
        }

        v19 = sub_10013A310();
        v20 = _NRLogIsLevelEnabled();

        if (v20)
        {
          goto LABEL_36;
        }

LABEL_37:

        goto LABEL_38;
      }

      v17 = sub_10013A310();
      v18 = _NRLogIsLevelEnabled();

      if ((v18 & 1) == 0)
      {
        goto LABEL_37;
      }
    }

LABEL_36:
    v21 = sub_10013A310();
    _NRLogWithArgs();

    goto LABEL_37;
  }

  if (qword_100228FC0 != -1)
  {
    dispatch_once(&qword_100228FC0, &stru_1001FABC0);
  }

  if (_NRLogIsLevelEnabled())
  {
    if (qword_100228FC0 == -1)
    {
LABEL_22:
      _NRLogWithArgs();
      goto LABEL_23;
    }

LABEL_47:
    dispatch_once(&qword_100228FC0, &stru_1001FABC0);
    goto LABEL_22;
  }

LABEL_23:
  v14 = -2005;
LABEL_46:
  close(v5);

  return v14;
}

id sub_10006A128()
{
  objc_opt_self();
  if (qword_1002290C0 != -1)
  {
    dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
  }

  v113 = qword_1002290B8;
  if (!v113)
  {
    goto LABEL_162;
  }

  v0 = sub_100003490();
  dispatch_assert_queue_V2(v0);

  v1 = [NSMutableString alloc];
  if (_NRIsAppleInternal())
  {
    v2 = objc_alloc_init(NSMutableString);
    os_unfair_lock_lock(&stru_1002293D0);
    v3 = byte_1002293D4;
    v4 = [qword_1002293C8 count];
    if (v4)
    {
      v5 = v4;
      v6 = 0;
      v7 = 0;
      do
      {
        v8 = [qword_1002293C8 objectAtIndexedSubscript:(v6 + v3) % v5];
        [v2 appendString:v8];

        v6 = ++v7;
      }

      while (v5 > v7);
    }

    os_unfair_lock_unlock(&stru_1002293D0);
    v9 = _NRCopyTimeString();
    [v2 appendFormat:@"\n    %@ : time of this status dump", v9];
  }

  else
  {
    v10 = [NSString alloc];
    v9 = _NRCopyTimeString();
    v2 = [v10 initWithFormat:@"\n    %@ : time of this status dump", v9];
  }

  v11 = [v1 initWithString:v2];
  objc_opt_self();
  v12 = sub_100003490();
  dispatch_assert_queue_V2(v12);

  sub_1001619D8();
  v13 = [qword_100229428 copy];
  v14 = [NSMutableString alloc];
  v15 = [v13 count];
  v16 = [v13 count];
  v17 = "s";
  if (v16 == 1)
  {
    v17 = "";
  }

  v18 = [v14 initWithFormat:@"--------- NRD Local Device Database Status (%llu device%s) ---------\n", v15, v17];
  v19 = [v13 keysSortedByValueUsingComparator:&stru_1001FCEB8];
  v120 = 0u;
  v121 = 0u;
  v122 = 0u;
  v123 = 0u;
  v20 = [v19 countByEnumeratingWithState:&v120 objects:v125 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v121;
    do
    {
      for (i = 0; i != v21; i = i + 1)
      {
        if (*v121 != v22)
        {
          objc_enumerationMutation(v19);
        }

        v24 = [v13 objectForKeyedSubscript:*(*(&v120 + 1) + 8 * i)];
        v25 = sub_100166548(v24);
        [v18 appendFormat:@"\t%@\n", v25];
      }

      v21 = [v19 countByEnumeratingWithState:&v120 objects:v125 count:16];
    }

    while (v21);
  }

  if (qword_100229438)
  {
    [v18 appendFormat:@"\n--------- NRD Device Identity ---------"];
    v26 = sub_10015E4BC(qword_100229438);
    LogString = _NRKeyCreateLogString();
    [v18 appendFormat:@"\nPublic Key: %@\n", LogString];
  }

  [v11 appendFormat:@"\n\n%@", v18];
  [v11 appendFormat:@"\n--------- Director status ---------"];
  [v11 appendFormat:@"\nName: %@", @"Link Director"];
  if (*(v113 + 13))
  {
    v28 = "YES";
  }

  else
  {
    v28 = "NO";
  }

  [v11 appendFormat:@"\nEnabled: %s", v28];
  if (*(v113 + 8))
  {
    v29 = "YES";
  }

  else
  {
    v29 = "NO";
  }

  [v11 appendFormat:@"\nFixed Interface mode: %s", v29];
  if (v113[7] == -1)
  {
    v30 = "NO";
  }

  else
  {
    v30 = "YES";
  }

  [v11 appendFormat:@"\nThermal watcher registered: %s", v30];
  v31 = v113[6];
  StringFromThermalPressureLevel = createStringFromThermalPressureLevel();
  [v11 appendFormat:@"\nThermal Pressure: %@", StringFromThermalPressureLevel];

  [v11 appendFormat:@"\nSOCKS port: %u", 62742];
  [v11 appendFormat:@"\nSOCKS server: %@", *(v113 + 18)];
  port = *(v113 + 19);
  if (port)
  {
    port = nw_masque_server_get_port();
  }

  [v11 appendFormat:@"\nMASQUE port: %u", port];
  [v11 appendFormat:@"\nMASQUE server: %@", *(v113 + 19)];
  if (sub_1000B794C())
  {
    v34 = "YES";
  }

  else
  {
    v34 = "NO";
  }

  [v11 appendFormat:@"\nCompanion APL allowed: %s", v34];
  v35 = objc_alloc_init(NSMutableDictionary);
  sub_1000C3FE8(v35);
  [v11 appendFormat:@"\nFD Usage: %@", v35];
  v119 = 0;
  v36 = *(v113 + 18);
  if (v36)
  {
    v37 = v36;
    v38 = *(v113 + 18);
    v39 = nw_shoes_server_fillout_statistics();

    if (v39)
    {
      [v11 appendFormat:@"\nSOCKS Server Connections total: %u max simultaneous: %u", HIDWORD(v119), v119];
    }
  }

  objc_opt_self();
  if (qword_1002294C8 != -1)
  {
    dispatch_once(&qword_1002294C8, &stru_1001FD250);
  }

  v40 = qword_1002294C0;
  v41 = v40;
  if (v40)
  {
    dispatch_assert_queue_V2(*(v40 + 2));
    sub_100180DE0(v41);
    v42 = [NSString alloc];
    v43 = v41[8];
    String = NRDataProtectionClassCreateString();
    v45 = [v42 initWithFormat:@"Unlocked data protection: %@", String];
  }

  else
  {
    v45 = 0;
  }

  [v11 appendFormat:@"\n%@\n", v45];

  [v11 appendFormat:@"\n--------- Manager status ---------"];
  objc_opt_self();
  if (qword_100229410 != -1)
  {
    dispatch_once(&qword_100229410, &stru_1001FCD98);
  }

  v46 = qword_100229408;
  v47 = v46;
  if (v46)
  {
    dispatch_assert_queue_V2(*(v46 + 2));
    v48 = objc_alloc_init(NSMutableString);
    [v48 appendFormat:@"\nName: %@", @"Policy Session Manager"];
    [v48 appendFormat:@"\nPolicy Session: %@", v47[3]];
    [v48 appendFormat:@"\nInstalled policies: %@", v47[4]];
  }

  else
  {
    v48 = 0;
  }

  [v11 appendFormat:@"\n%@", v48];

  v49 = [*(v113 + 5) copyStatusString];
  [v11 appendFormat:@"\n%@", v49];

  v50 = *(v113 + 6);
  if (v50)
  {
    v51 = [v50 copyStatusString];
    [v11 appendFormat:@"\n%@\n", v51];
  }

  v52 = *(v113 + 24);
  if (v52)
  {
    v53 = [v52 copyStatusString];
    [v11 appendFormat:@"\n%@\n", v53];
  }

  v54 = *(v113 + 8);
  if (v54)
  {
    v55 = [v54 copyStatusString];
    [v11 appendFormat:@"\n%@\n", v55];
  }

  v56 = *(v113 + 25);
  if (v56)
  {
    dispatch_assert_queue_V2(*(v56 + 32));
    v57 = objc_alloc_init(NSMutableString);
    [v57 appendFormat:@"\nName: %@", @"Link Manager - On-demand link setup"];
    if (*(v56 + 8))
    {
      v58 = "YES";
    }

    else
    {
      v58 = "NO";
    }

    [v57 appendFormat:@"\nstarted: %s", v58];
    if (*(v56 + 9))
    {
      v59 = "YES";
    }

    else
    {
      v59 = "NO";
    }

    [v57 appendFormat:@"\ncancelled: %s", v59];
    if (*(v56 + 10))
    {
      v60 = "YES";
    }

    else
    {
      v60 = "NO";
    }

    [v57 appendFormat:@"\nsubscribed for PHS updates: %s", v60];
    if (*(v56 + 11))
    {
      v61 = "YES";
    }

    else
    {
      v61 = "NO";
    }

    [v57 appendFormat:@"\nPHS active: %s", v61];
    if (*(v56 + 12))
    {
      v62 = "YES";
    }

    else
    {
      v62 = "NO";
    }

    [v57 appendFormat:@"\nLLPHS active: %s", v62];
    if (*(v56 + 13))
    {
      v63 = "YES";
    }

    else
    {
      v63 = "NO";
    }

    [v57 appendFormat:@"\nPHS provider: %s", v63];
    if (*(v56 + 14))
    {
      v64 = "YES";
    }

    else
    {
      v64 = "NO";
    }

    [v57 appendFormat:@"\nPHS client: %s", v64];
    if (*(v56 + 15))
    {
      v65 = "YES";
    }

    else
    {
      v65 = "NO";
    }

    [v57 appendFormat:@"\ncellular slicing: %s", v65];
    [v57 appendFormat:@"\nInternet relay valid peers: %@", *(v56 + 88)];
    [v11 appendFormat:@"\n%@\n", v57];
  }

  objc_opt_self();
  if (qword_1002291A0 != -1)
  {
    dispatch_once(&qword_1002291A0, &stru_1001FBD88);
  }

  v66 = [qword_100229198 description];
  [v11 appendFormat:@"\n%@\n", v66];

  objc_opt_self();
  if (qword_100228E88 != -1)
  {
    dispatch_once(&qword_100228E88, &stru_1001FA180);
  }

  v109 = v35;
  v67 = qword_100228E80;
  if (v67)
  {
    v68 = objc_alloc_init(NSMutableString);
    [v68 appendFormat:@"\n---- NRIKEv2Listener ----"];
    [v68 appendFormat:@"\nIKEv2 Listener: %@", v67[2]];
    [v68 appendFormat:@"\nRegistered links: %@", v67[3]];
    [v68 appendFormat:@"\nRegistered pairing clients: %@", v67[4]];
    [v68 appendFormat:@"\nRegistered pairing manager: %@", v67[5]];
    [v68 appendFormat:@"\nPending sessions: %@", v67[6]];
  }

  else
  {
    v68 = 0;
  }

  [v11 appendFormat:@"\n%@\n", v68];

  [v11 appendFormat:@"\nOrphaned Device Monitor Connections: %@\n", *(v113 + 29)];
  [v11 appendFormat:@"\nOrphaned Device Preferences Connections: %@\n", *(v113 + 30)];
  [v11 appendFormat:@"\nEphemeral Device Connections: %@\n", *(v113 + 31)];
  v117 = 0u;
  v118 = 0u;
  v115 = 0u;
  v116 = 0u;
  obj = *(v113 + 28);
  v114 = [obj countByEnumeratingWithState:&v115 objects:v124 count:16];
  if (v114)
  {
    v111 = v11;
    v112 = *v116;
    do
    {
      for (j = 0; j != v114; j = j + 1)
      {
        if (*v116 != v112)
        {
          objc_enumerationMutation(obj);
        }

        v70 = [*(v113 + 28) objectForKeyedSubscript:*(*(&v115 + 1) + 8 * j)];
        v71 = v70;
        if (v70)
        {
          dispatch_assert_queue_V2(*(v70 + 136));
          v72 = [NSMutableString alloc];
          v73 = [*(v71 + 96) UUIDString];
          v74 = [v72 initWithFormat:@"--------- Conductor %@ status ---------", v73];

          [v74 appendFormat:@"\nPrimary Link: %@", *(v71 + 160)];
          [v74 appendFormat:@"\nLinks: %@", *(v71 + 144)];
          if (*(v71 + 488))
          {
            v75 = NEVirtualInterfaceCopyName();
          }

          else
          {
            v75 = @"<nil>";
          }

          [v74 appendFormat:@"\nCatch-All Interface: %@", v75];
          if (*(v71 + 23))
          {
            v76 = "YES";
          }

          else
          {
            v76 = "NO";
          }

          [v74 appendFormat:@"\nDisable Range Extension: %s", v76];
          if (*(v71 + 24))
          {
            v77 = "YES";
          }

          else
          {
            v77 = "NO";
          }

          [v74 appendFormat:@"\nDisable Prefer Wi-Fi: %s", v77];
          [v74 appendFormat:@"\nPending requests: %@", *(v71 + 152)];
          if (*(v71 + 15))
          {
            v78 = "YES";
          }

          else
          {
            v78 = "NO";
          }

          [v74 appendFormat:@"\nPrefer Wi-Fi request: %s", v78];
          v79 = "NOT connected";
          if (*(v71 + 32))
          {
            v79 = "Connected";
          }

          [v74 appendFormat:@"\nAPS connection status: %s", v79];
          if (*(v71 + 31))
          {
            v80 = "YES";
          }

          else
          {
            v80 = "NO";
          }

          [v74 appendFormat:@"\nHas quick relay request: %s", v80];
          if (*(v71 + 17))
          {
            v81 = "YES";
          }

          else
          {
            v81 = "NO";
          }

          [v74 appendFormat:@"\nDevice setup in progress: %s", v81];
          if (*(v71 + 11))
          {
            v82 = "YES";
          }

          else
          {
            v82 = "NO";
          }

          [v74 appendFormat:@"\nPerpetual standalone Meadow mode: %s", v82];
          if (*(v71 + 30))
          {
            v83 = "YES";
          }

          else
          {
            v83 = "NO";
          }

          [v74 appendFormat:@"\nHas phone call relay request: %s", v83];
          if (sub_1000EFD10(v71))
          {
            v84 = "YES";
          }

          else
          {
            v84 = "NO";
          }

          [v74 appendFormat:@"\nAlways On Wi-Fi supported by peer: %s", v84];
          [v74 appendFormat:@"\nLast sent WiFi endpoint: %@", *(v71 + 168)];
          [v74 appendFormat:@"\nLast sent WiFi signature: %@", *(v71 + 176)];
          if (*(v71 + 38))
          {
            v85 = "YES";
          }

          else
          {
            v85 = "NO";
          }

          [v74 appendFormat:@"\nPermitted clients policies added: %s", v85];
          if (*(v71 + 10))
          {
            v86 = "YES";
          }

          else
          {
            v86 = "NO";
          }

          [v74 appendFormat:@"\nAWDL supported: %s", v86];
          [v74 appendFormat:@"\nDevice monitor(s): %@", *(v71 + 200)];
          [v74 appendFormat:@"\nDevice Preferences Manager(s): %@", *(v71 + 216)];
          if (*(v71 + 42))
          {
            v87 = "YES";
          }

          else
          {
            v87 = "NO";
          }

          [v74 appendFormat:@"\nBuffer limits set: %s", v87];
          objc_opt_self();
          if (qword_100228F50 != -1)
          {
            dispatch_once(&qword_100228F50, &stru_1001FA740);
          }

          v88 = qword_100228F48;
          [v74 appendFormat:@"\nNRLinkDirectorMessage Manager: %@", v88];

          [v74 appendFormat:@"\nALU Monitor: %@", *(v71 + 608)];
          [v74 appendFormat:@"\nAS Client: %@", *(v71 + 656)];
          if (*(v71 + 50))
          {
            v89 = "YES";
          }

          else
          {
            v89 = "NO";
          }

          [v74 appendFormat:@"\nMonitoring LS: %s", v89];
          v90 = [*(v71 + 96) UUIDString];
          [v74 appendFormat:@"\n\n--------- Links to %@ status ---------", v90];

          v122 = 0u;
          v123 = 0u;
          v120 = 0u;
          v121 = 0u;
          v91 = *(v71 + 144);
          v92 = [v91 countByEnumeratingWithState:&v120 objects:v125 count:16];
          if (v92)
          {
            v93 = v92;
            v94 = *v121;
            do
            {
              for (k = 0; k != v93; k = k + 1)
              {
                if (*v121 != v94)
                {
                  objc_enumerationMutation(v91);
                }

                v96 = [*(*(&v120 + 1) + 8 * k) copyStatusString];
                [v74 appendFormat:@"\n%@", v96];
              }

              v93 = [v91 countByEnumeratingWithState:&v120 objects:v125 count:16];
            }

            while (v93);
          }

          v11 = v111;
        }

        else
        {
          v74 = 0;
        }

        [v11 appendFormat:@"\n\n%@", v74];
      }

      v114 = [obj countByEnumeratingWithState:&v115 objects:v124 count:16];
    }

    while (v114);
  }

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

    v97 = qword_1002290E8;
    v107 = 723;
    v108 = [v11 length];
    v106 = "[NRLinkDirector copyStatusString]";
    _NRLogWithArgs();
  }

  if (v11)
  {
    if (qword_1002290A0 != -1)
    {
      dispatch_once(&qword_1002290A0, &stru_1001FB258);
    }

    v98 = qword_100229098;
    if (v98)
    {
      v99 = [NSString alloc];
      if (sub_1000B79D8())
      {
        v100 = "en";
      }

      else
      {
        v100 = "dis";
      }

      v101 = [v99 initWithFormat:@"\tCompanion link is currently %sabled on this device", v100, v106, v107, v108];
      v102 = [NSString alloc];
      if (gNRPacketLoggingEnabled)
      {
        v103 = "en";
      }

      else
      {
        v103 = "dis";
      }

      v104 = [v102 initWithFormat:@"%@, packet logging %sabled\n%@\n%@", v98, v103, v101, v11];
    }

    else
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

      v104 = 0;
    }
  }

  else
  {
LABEL_162:
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

    v11 = 0;
    v104 = 0;
  }

  return v104;
}

uint64_t sub_10006B39C(void *a1)
{
  v1 = a1;
  p_vtable = NRSCDInterfaceConfig.vtable;
  if (qword_100228FC0 != -1)
  {
    goto LABEL_39;
  }

  while (1)
  {
    if (_NRLogIsLevelEnabled())
    {
      if (*(p_vtable + 4032) != -1)
      {
        dispatch_once(&qword_100228FC0, &stru_1001FABC0);
      }

      v4 = qword_100228FB8;
      if (v1)
      {
        v5 = v1[4];
        if (!v5)
        {
          Property = objc_getProperty(v1, v3, 8, 1);
          pid = xpc_connection_get_pid(Property);
          v8 = [[NSString alloc] initWithFormat:@"unknown:%d", pid];
          bzero(v48, 0x400uLL);
          if (pid >= 1 && proc_pidpath(pid, v48, 0x400u) >= 1 && v48[0])
          {
            v9 = [[NSString alloc] initWithFormat:@"%s:%d", v48, pid];

            v8 = v9;
          }

          v10 = v1[4];
          v1[4] = v8;

          v5 = v1[4];
        }

        v11 = v5;
      }

      else
      {
        v11 = 0;
      }

      _NRLogWithArgs();
    }

    v12 = [NSString alloc];
    v13 = +[NSUUID UUID];
    v14 = [v13 UUIDString];
    v15 = [v12 initWithFormat:@"/tmp/terminusd/%@", v14];

    v16 = sub_10006B92C(v15);
    if (![v16 count])
    {
      v30 = -2012;
      goto LABEL_30;
    }

    v17 = xpc_array_create(0, 0);
    if (v17)
    {
      break;
    }

    v37 = sub_100056D2C();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v39 = sub_100056D2C();
      _NRLogWithArgs();
    }

    p_vtable = _os_log_pack_size();
    __chkstk_darwin();
    v40 = *__error();
    v41 = _os_log_pack_fill();
    sub_10006BF98(v41, "nr_xpc_array_create");
LABEL_38:
    sub_100056D2C();
    _NRLogAbortWithPack();
LABEL_39:
    dispatch_once(&qword_100228FC0, &stru_1001FABC0);
  }

  v18 = v17;
  v42 = v1;
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v19 = v16;
  v20 = [v19 countByEnumeratingWithState:&v43 objects:v47 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v44;
LABEL_19:
    v23 = 0;
    while (1)
    {
      if (*v44 != v22)
      {
        objc_enumerationMutation(v19);
      }

      v24 = [*(*(&v43 + 1) + 8 * v23) UTF8String];
      if (v24)
      {
        v25 = v24;
        v26 = xpc_string_create(v24);
        if (!v26)
        {
          if (qword_100228FC0 != -1)
          {
            dispatch_once(&qword_100228FC0, &stru_1001FABC0);
          }

          v1 = NRSCDInterfaceConfig.vtable;
          v32 = qword_100228FB8;
          v33 = _NRLogIsLevelEnabled();

          if (v33)
          {
            if (qword_100228FC0 != -1)
            {
              dispatch_once(&qword_100228FC0, &stru_1001FABC0);
            }

            v34 = qword_100228FB8;
            _NRLogWithArgs();
          }

          p_vtable = _os_log_pack_size();
          __chkstk_darwin();
          v35 = *__error();
          v36 = _os_log_pack_fill();
          *v36 = 136446466;
          *(v36 + 4) = "nr_xpc_string_create";
          *(v36 + 12) = 2080;
          *(v36 + 14) = v25;
          goto LABEL_38;
        }

        v27 = v26;
        xpc_array_append_value(v18, v26);
      }

      if (v21 == ++v23)
      {
        v21 = [v19 countByEnumeratingWithState:&v43 objects:v47 count:16];
        if (!v21)
        {
          break;
        }

        goto LABEL_19;
      }
    }
  }

  v1 = v42;
  if (v42)
  {
    v29 = objc_getProperty(v42, v28, 24, 1);
  }

  else
  {
    v29 = 0;
  }

  xpc_dictionary_set_value(v29, nrXPCKeyCompanionLinkStatusDumpFilePaths, v18);

  v30 = 0;
LABEL_30:

  return v30;
}

id sub_10006B92C(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (!v1)
  {
    v13 = sub_100056D2C();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      goto LABEL_51;
    }

    goto LABEL_52;
  }

  if (![v1 length])
  {
    v15 = sub_100056D2C();
    v16 = _NRLogIsLevelEnabled();

    if (v16)
    {
LABEL_51:
      v17 = sub_100056D2C();
      _NRLogWithArgs();
    }

LABEL_52:
    v7 = 0;
    goto LABEL_66;
  }

  v3 = sub_10006A128();
  if (!v3)
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

    v7 = 0;
    goto LABEL_65;
  }

  v4 = +[NSFileManager defaultManager];
  v32 = 0;
  if ([v4 fileExistsAtPath:v2 isDirectory:&v32] && (v32 & 1) != 0)
  {
LABEL_31:
    v8 = [v2 stringByAppendingPathComponent:{@"companion_link_status_phone.txt", v23, v25, v27, v29}];
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

      v28 = 281;
      v30 = v8;
      v24 = "";
      v26 = "dumpLinkStatusToDirectoryAt";
      _NRLogWithArgs();
    }

    v6 = v8;
    v9 = v3;
    if (v6)
    {
      if ([v6 length])
      {
        v10 = [v9 dataUsingEncoding:4];
        v11 = sub_100003984(v6, v10, 0);
        goto LABEL_40;
      }

      v20 = sub_10013A310();
      v21 = _NRLogIsLevelEnabled();

      if (v21)
      {
LABEL_56:
        v10 = sub_10013A310();
        v24 = "NRDSafeWriteStringToFile";
        _NRLogWithArgs();
        v11 = 0;
LABEL_40:

        v12 = qword_100228FC0;
        if (v11)
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

            v28 = 288;
            v30 = v6;
            v24 = "";
            v26 = "dumpLinkStatusToDirectoryAt";
            _NRLogWithArgs();
          }

          v33 = v6;
          v7 = [NSArray arrayWithObjects:&v33 count:1, v24, v26, v28, v30];
          goto LABEL_64;
        }

LABEL_58:
        if (v12 != -1)
        {
          dispatch_once(&qword_100228FC0, &stru_1001FABC0);
        }

        if (!_NRLogIsLevelEnabled())
        {
          goto LABEL_63;
        }

        if (qword_100228FC0 == -1)
        {
          goto LABEL_62;
        }

        goto LABEL_69;
      }
    }

    else
    {
      v18 = sub_10013A310();
      v19 = _NRLogIsLevelEnabled();

      if (v19)
      {
        goto LABEL_56;
      }
    }

    v12 = qword_100228FC0;
    goto LABEL_58;
  }

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

    v27 = 264;
    v29 = v2;
    v23 = "";
    v25 = "dumpLinkStatusToDirectoryAt";
    _NRLogWithArgs();
  }

  v31 = 0;
  [v4 createDirectoryAtPath:v2 withIntermediateDirectories:1 attributes:0 error:{&v31, v23, v25, v27, v29}];
  v5 = v31;
  if (!v5)
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

      v27 = 274;
      v29 = v2;
      v23 = "";
      v25 = "dumpLinkStatusToDirectoryAt";
      _NRLogWithArgs();
    }

    goto LABEL_31;
  }

  v6 = v5;
  if (qword_100228FC0 != -1)
  {
    dispatch_once(&qword_100228FC0, &stru_1001FABC0);
  }

  if (!_NRLogIsLevelEnabled())
  {
    goto LABEL_63;
  }

  if (qword_100228FC0 != -1)
  {
LABEL_69:
    dispatch_once(&qword_100228FC0, &stru_1001FABC0);
  }

LABEL_62:
  _NRLogWithArgs();
LABEL_63:
  v7 = 0;
LABEL_64:

LABEL_65:
LABEL_66:

  return v7;
}

double sub_10006BF98(uint64_t a1, uint64_t a2)
{
  *&result = 136446722;
  *a1 = 136446722;
  *(a1 + 4) = a2;
  *(a1 + 12) = 2048;
  *(a1 + 14) = 0;
  *(a1 + 22) = 1024;
  *(a1 + 24) = 0;
  return result;
}

uint64_t sub_10006BFC4(void *a1)
{
  Property = a1;
  v3 = Property;
  if (Property)
  {
    Property = objc_getProperty(Property, v2, 16, 1);
  }

  string = xpc_dictionary_get_string(Property, nrXPCKeyCompanionLinkStatusDumpToDirectoryPath);
  if (string)
  {
    v5 = [[NSString alloc] initWithUTF8String:string];
    if ([v5 hasPrefix:@"/var/mobile/Library/Logs/"] & 1) != 0 || (objc_msgSend(v5, "hasPrefix:", @"/private/var/mobile/Library/Logs/") & 1) != 0 || (objc_msgSend(v5, "hasPrefix:", @"/tmp/") & 1) != 0 || (objc_msgSend(v5, "hasPrefix:", @"/private/var/tmp/"))
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

        v8 = qword_100228FB8;
        if (v3)
        {
          v9 = v3[4];
          if (!v9)
          {
            v10 = objc_getProperty(v3, v7, 8, 1);
            pid = xpc_connection_get_pid(v10);
            v12 = [[NSString alloc] initWithFormat:@"unknown:%d", pid];
            bzero(buffer, 0x400uLL);
            if (pid >= 1 && proc_pidpath(pid, buffer, 0x400u) >= 1 && buffer[0])
            {
              v13 = [[NSString alloc] initWithFormat:@"%s:%d", buffer, pid];

              v12 = v13;
            }

            v14 = v3[4];
            v3[4] = v12;

            v9 = v3[4];
          }

          v15 = v9;
        }

        else
        {
          v15 = 0;
        }

        v34 = v5;
        v35 = v15;
        v33 = 309;
        v30 = "";
        v31 = "handleCompanionLinkStatusToDirectory";
        _NRLogWithArgs();
      }

      if (v3)
      {
        v16 = objc_getProperty(v3, v6, 16, 1);
      }

      else
      {
        v16 = 0;
      }

      v17 = xpc_dictionary_get_string(v16, nrXPCKeyCompanionLinkStatusSandboxExtensionToken);
      if (v17)
      {
        v18 = sandbox_extension_consume();
      }

      else
      {
        v18 = -1;
      }

      v26 = sub_10006B92C(v5);
      if (v17 && (v18 & 0x8000000000000000) == 0)
      {
        sandbox_extension_release();
      }

      if ([v26 count])
      {
        v27 = 0;
      }

      else
      {
        v27 = -2012;
      }
    }

    else
    {
      if (qword_100228FC0 != -1)
      {
        dispatch_once(&qword_100228FC0, &stru_1001FABC0);
      }

      if (!_NRLogIsLevelEnabled())
      {
        v27 = -2005;
        goto LABEL_48;
      }

      v26 = sub_100056D2C();
      v32 = sub_100056D80(v3, v29);
      _NRLogWithArgs();

      v27 = -2005;
    }
  }

  else
  {
    if (qword_100228FC0 != -1)
    {
      dispatch_once(&qword_100228FC0, &stru_1001FABC0);
    }

    if (!_NRLogIsLevelEnabled())
    {
      v27 = -2005;
      goto LABEL_49;
    }

    if (qword_100228FC0 != -1)
    {
      dispatch_once(&qword_100228FC0, &stru_1001FABC0);
    }

    v5 = qword_100228FB8;
    if (v3)
    {
      v20 = v3[4];
      if (!v20)
      {
        v21 = objc_getProperty(v3, v19, 8, 1);
        v22 = xpc_connection_get_pid(v21);
        v23 = [[NSString alloc] initWithFormat:@"unknown:%d", v22];
        bzero(buffer, 0x400uLL);
        if (v22 >= 1 && proc_pidpath(v22, buffer, 0x400u) >= 1 && buffer[0])
        {
          v24 = [[NSString alloc] initWithFormat:@"%s:%d", buffer, v22];

          v23 = v24;
        }

        v25 = v3[4];
        v3[4] = v23;

        v20 = v3[4];
      }

      v26 = v20;
    }

    else
    {
      v26 = 0;
    }

    _NRLogWithArgs();
    v27 = -2005;
  }

LABEL_48:
LABEL_49:

  return v27;
}

uint64_t sub_10006C4A0(void *a1)
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

  v12 = sub_10006A128();
  if (v12)
  {
    if (v1)
    {
      v13 = objc_getProperty(v1, v11, 24, 1);
    }

    else
    {
      v13 = 0;
    }

    v14 = nrXPCKeyCompanionLinkStatusMessage;
    v15 = v13;
    xpc_dictionary_set_string(v15, v14, [v12 UTF8String]);

    v16 = 0;
  }

  else
  {
    v16 = -2004;
  }

  return v16;
}

uint64_t sub_10006C6E0(void *a1)
{
  v1 = a1;
  v3 = sub_1000B79D8();
  if (v1)
  {
    Property = objc_getProperty(v1, v2, 24, 1);
  }

  else
  {
    Property = 0;
  }

  xpc_dictionary_set_BOOL(Property, nrXPCKeyCompanionLinkIsEnabled, v3);
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
    if (v1)
    {
      v7 = v1[4];
      if (!v7)
      {
        v8 = objc_getProperty(v1, v5, 8, 1);
        pid = xpc_connection_get_pid(v8);
        v10 = [[NSString alloc] initWithFormat:@"unknown:%d", pid];
        bzero(buffer, 0x400uLL);
        if (pid >= 1 && proc_pidpath(pid, buffer, 0x400u) >= 1 && buffer[0])
        {
          v11 = [[NSString alloc] initWithFormat:@"%s:%d", buffer, pid];

          v10 = v11;
        }

        v12 = v1[4];
        v1[4] = v10;

        v7 = v1[4];
      }

      v13 = v7;
    }

    else
    {
      v13 = 0;
    }

    _NRLogWithArgs();
  }

  return 0;
}

uint64_t sub_10006C910(void *a1)
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

  sub_1000B7AA8(2);

  return 0;
}

uint64_t sub_10006CAEC(void *a1)
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

  sub_1000B7AA8(1);

  return 0;
}

uint64_t sub_10006CCC8(void *a1)
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

  sub_1000B7AA8(0);

  return 0;
}

uint64_t sub_10006CEA4(void *a1)
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

  v11 = getpid();
  v13 = xpc_string_create_with_format("PingReply(%d)", v11);
  if (v1)
  {
    v14 = objc_getProperty(v1, v12, 24, 1);
  }

  else
  {
    v14 = 0;
  }

  xpc_dictionary_set_value(v14, nrXPCKeyPingMessage, v13);

  return 0;
}

void sub_10006D260(id a1)
{
  v1 = os_log_create("com.apple.networkrelay", "");
  v2 = qword_100228FC8;
  qword_100228FC8 = v1;

  _objc_release_x1(v1, v2);
}

char *sub_10006D2A4(id *a1, void *a2)
{
  v4 = a2;
  if (!a1)
  {
LABEL_10:
    v11 = 0;
    goto LABEL_11;
  }

  if ((_NRIsAppleInternal() & 1) == 0)
  {
    p_vtable = NRSCDInterfaceConfig.vtable;
    if (qword_100228FD0 == -1)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

  v20.receiver = a1;
  v20.super_class = NRDTestServer;
  v5 = objc_msgSendSuper2(&v20, "init");
  if (!v5)
  {
    v14 = sub_10006D4F8();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    p_vtable = "[NRDTestServer initTestServerWithQueue:]";
    if (IsLevelEnabled)
    {
      v16 = sub_10006D4F8();
      _NRLogWithArgs();
    }

    v4 = _os_log_pack_size();
    a1 = (&v19 - ((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0));
    v17 = *__error();
    v18 = _os_log_pack_fill();
    *v18 = 136446210;
    *(v18 + 4) = "[NRDTestServer initTestServerWithQueue:]";
    sub_10006D4F8();
    _NRLogAbortWithPack();
LABEL_15:
    dispatch_once(&qword_100228FD0, &stru_1001FADB0);
LABEL_6:
    if (_NRLogIsLevelEnabled())
    {
      if (p_vtable[506] != -1)
      {
        dispatch_once(&qword_100228FD0, &stru_1001FADB0);
      }

      _NRLogWithArgs();
    }

    goto LABEL_10;
  }

  v6 = v5;
  objc_storeStrong(v5 + 2, a2);
  v7 = objc_alloc_init(NSMutableDictionary);
  v8 = v6[6];
  v6[6] = v7;

  v9 = objc_alloc_init(NSMutableDictionary);
  v10 = v6[9];
  v6[9] = v9;

  sub_10006D54C(v6 + 7, v6[2], 0x464Fu);
  sub_10006D54C(v6 + 8, v6[2], 0x4A37u);
  a1 = v6;
  v11 = a1;
LABEL_11:

  return v11;
}

id sub_10006D4F8()
{
  if (qword_100228FD0 != -1)
  {
    dispatch_once(&qword_100228FD0, &stru_1001FADB0);
  }

  v1 = qword_100228FC8;

  return v1;
}

void sub_10006D54C(dispatch_source_t *a1, void *a2, unsigned int a3)
{
  v5 = a2;
  if (a1)
  {
    if (*a1)
    {
      dispatch_source_cancel(*a1);
      v6 = *a1;
      *a1 = 0;
    }

    v7 = socket(30, 2, 0);
    if ((v7 & 0x80000000) == 0)
    {
      v8 = v7;
      v9 = fcntl(v7, 3, 0);
      if (v9 < 0)
      {
        v11 = __error();
        if (strerror_r(*v11, __strerrbuf, 0x80uLL))
        {
          __strerrbuf[0] = 0;
        }

        if (qword_100228FD0 != -1)
        {
          dispatch_once(&qword_100228FD0, &stru_1001FADB0);
        }

        if (!_NRLogIsLevelEnabled())
        {
          goto LABEL_35;
        }

        if (qword_100228FD0 == -1)
        {
          goto LABEL_34;
        }

        goto LABEL_76;
      }

      if (fcntl(v8, 4, v9 | 4u))
      {
        v10 = __error();
        if (strerror_r(*v10, __strerrbuf, 0x80uLL))
        {
          __strerrbuf[0] = 0;
        }

        if (qword_100228FD0 != -1)
        {
          dispatch_once(&qword_100228FD0, &stru_1001FADB0);
        }

        if (!_NRLogIsLevelEnabled())
        {
          goto LABEL_35;
        }

        if (qword_100228FD0 == -1)
        {
          goto LABEL_34;
        }

LABEL_76:
        dispatch_once(&qword_100228FD0, &stru_1001FADB0);
LABEL_34:
        _NRLogWithArgs();
        goto LABEL_35;
      }

      if (setsockopt(v8, 0xFFFF, 4, &unk_10019652C, 4u))
      {
        v12 = __error();
        if (strerror_r(*v12, __strerrbuf, 0x80uLL))
        {
          __strerrbuf[0] = 0;
        }

        if (qword_100228FD0 != -1)
        {
          dispatch_once(&qword_100228FD0, &stru_1001FADB0);
        }

        if (!_NRLogIsLevelEnabled())
        {
          goto LABEL_35;
        }

        if (qword_100228FD0 == -1)
        {
          goto LABEL_34;
        }

        goto LABEL_76;
      }

      if (setsockopt(v8, 0xFFFF, 512, &unk_10019652C, 4u))
      {
        v14 = __error();
        if (strerror_r(*v14, __strerrbuf, 0x80uLL))
        {
          __strerrbuf[0] = 0;
        }

        if (qword_100228FD0 != -1)
        {
          dispatch_once(&qword_100228FD0, &stru_1001FADB0);
        }

        if (!_NRLogIsLevelEnabled())
        {
          goto LABEL_35;
        }
      }

      else if (setsockopt(v8, 0xFFFF, 4356, &unk_10019652C, 4u))
      {
        v15 = __error();
        if (strerror_r(*v15, __strerrbuf, 0x80uLL))
        {
          __strerrbuf[0] = 0;
        }

        v16 = sub_10006D4F8();
        IsLevelEnabled = _NRLogIsLevelEnabled();

        if (!IsLevelEnabled)
        {
          goto LABEL_35;
        }
      }

      else if (setsockopt(v8, 41, 27, &unk_10019652C, 4u))
      {
        v18 = __error();
        if (strerror_r(*v18, __strerrbuf, 0x80uLL))
        {
          __strerrbuf[0] = 0;
        }

        v19 = sub_10006D4F8();
        v20 = _NRLogIsLevelEnabled();

        if (!v20)
        {
          goto LABEL_35;
        }
      }

      else if (setsockopt(v8, 0xFFFF, 4130, &unk_10019652C, 4u))
      {
        v21 = __error();
        if (strerror_r(*v21, __strerrbuf, 0x80uLL))
        {
          __strerrbuf[0] = 0;
        }

        v22 = sub_10006D4F8();
        v23 = _NRLogIsLevelEnabled();

        if (!v23)
        {
          goto LABEL_35;
        }
      }

      else
      {
        if (!setsockopt(v8, 41, 61, &unk_10019652C, 4u))
        {
          *&v45[4] = 0;
          *&v45[12] = 0;
          v46 = 0;
          *v45 = 7708;
          *&v45[2] = __rev16(a3);
          if (!bind(v8, v45, 0x1Cu))
          {
            v34 = dispatch_source_create(&_dispatch_source_type_read, v8, 0, v5);
            v35 = *a1;
            *a1 = v34;

            v36 = *a1;
            if (*a1)
            {
              handler[0] = _NSConcreteStackBlock;
              handler[1] = 3221225472;
              handler[2] = sub_10006DD18;
              handler[3] = &unk_1001FADD0;
              v44 = v8;
              dispatch_source_set_event_handler(v36, handler);
              v37 = *a1;
              v41[0] = _NSConcreteStackBlock;
              v41[1] = 3221225472;
              v41[2] = sub_10006E368;
              v41[3] = &unk_1001FADD0;
              v42 = v8;
              dispatch_source_set_cancel_handler(v37, v41);
              dispatch_activate(*a1);
              goto LABEL_38;
            }

            v38 = sub_10006D4F8();
            v39 = _NRLogIsLevelEnabled();

            if (v39)
            {
              v40 = sub_10006D4F8();
              _NRLogWithArgs();
            }

            goto LABEL_35;
          }

          v31 = __error();
          if (strerror_r(*v31, __strerrbuf, 0x80uLL))
          {
            __strerrbuf[0] = 0;
          }

          v32 = sub_10006D4F8();
          v33 = _NRLogIsLevelEnabled();

          if (!v33)
          {
LABEL_35:
            if (*a1)
            {
              dispatch_source_cancel(*a1);
              v13 = *a1;
              *a1 = 0;
            }

            else
            {
              close(v8);
            }

            goto LABEL_38;
          }

          v27 = sub_10006D4F8();
LABEL_73:
          _NRLogWithArgs();

          goto LABEL_35;
        }

        v24 = __error();
        if (strerror_r(*v24, __strerrbuf, 0x80uLL))
        {
          __strerrbuf[0] = 0;
        }

        v25 = sub_10006D4F8();
        v26 = _NRLogIsLevelEnabled();

        if (!v26)
        {
          goto LABEL_35;
        }
      }

      v27 = sub_10006D4F8();
      goto LABEL_73;
    }

    if (qword_100228FD0 != -1)
    {
      dispatch_once(&qword_100228FD0, &stru_1001FADB0);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_100228FD0 != -1)
      {
        dispatch_once(&qword_100228FD0, &stru_1001FADB0);
      }

      _NRLogWithArgs();
    }
  }

  else
  {
    v28 = sub_10006D4F8();
    v29 = _NRLogIsLevelEnabled();

    if (v29)
    {
      v30 = sub_10006D4F8();
      _NRLogWithArgs();
    }
  }

LABEL_38:
}