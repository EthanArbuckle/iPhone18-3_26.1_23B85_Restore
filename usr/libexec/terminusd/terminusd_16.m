uint64_t sub_1001679E0(void *a1, void *a2)
{
  v3 = a2;
  v4 = sub_100003490();
  dispatch_assert_queue_V2(v4);

  v5 = [a1 localInnerIPv6AddressBytesClassC];

  if (!v5)
  {
    v18 = 0uLL;
    sub_100168638(a1, &v18);
    BYTE9(v18) = 12;
    v6 = [[NSData alloc] initWithBytes:&v18 length:16];
    [a1 setLocalInnerIPv6AddressBytesClassC:v6];

    v7 = objc_opt_self();
    sub_1001629FC(v7, 0);
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

      v8 = qword_100229480;
      v9 = [a1 localInnerIPv6AddressBytesClassC];
      IPv6AddrStringFromData = createIPv6AddrStringFromData();
      v17 = a1;
      v15 = 4551;
      v13 = "";
      v14 = "[NRDLocalDevice copyLocalClassCInnerEndpointWithPort:]";
      _NRLogWithArgs();
    }
  }

  v10 = [a1 localInnerIPv6AddressBytesClassC];
  v11 = sub_100167F00(NRDLocalDevice, v10, v3);

  return v11;
}

void *sub_100167B9C(void *a1, void *a2)
{
  v2 = a1;
  if (a1)
  {
    v3 = a2;
    v4 = sub_100003490();
    dispatch_assert_queue_V2(v4);

    v5 = [v2 remoteInnerIPv6AddressBytesClassC];

    if (!v5)
    {
      v17 = 0uLL;
      sub_100167D5C(v2, &v17);
      BYTE9(v17) = 12;
      v6 = [[NSData alloc] initWithBytes:&v17 length:16];
      [v2 setRemoteInnerIPv6AddressBytesClassC:v6];

      v7 = objc_opt_self();
      sub_1001629FC(v7, 0);
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

        v8 = qword_100229480;
        v9 = [v2 remoteInnerIPv6AddressBytesClassC];
        IPv6AddrStringFromData = createIPv6AddrStringFromData();
        v16 = v2;
        v14 = 4578;
        v12 = "";
        v13 = "[NRDLocalDevice copyRemoteClassCInnerEndpointWithPort:]";
        _NRLogWithArgs();
      }
    }

    v10 = [v2 remoteInnerIPv6AddressBytesClassC];
    v2 = sub_100167F00(NRDLocalDevice, v10, v3);
  }

  return v2;
}

double sub_100167D5C(void *a1, _OWORD *a2)
{
  v4 = sub_100003490();
  dispatch_assert_queue_V2(v4);

  if (!a2)
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
    *(v13 + 4) = "[NRDLocalDevice writeRemoteClassDInnerAddressBytes:]";
    sub_10015B480();
    _NRLogAbortWithPack();
  }

  v14 = 0;
  v15 = 0uLL;
  v16 = 0;
  v5 = sub_100003490();
  dispatch_assert_queue_V2(v5);

  v6 = sub_100003490();
  dispatch_assert_queue_V2(v6);

  v7 = sub_1001677D0(a1, @"0");
  sub_1001681A4(NRDLocalDevice, &v14, v7);

  result = *&v15;
  *a2 = v15;
  return result;
}

id sub_100167F00(uint64_t a1, void *a2, void *a3)
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

LABEL_14:
    _os_log_pack_size();
    __chkstk_darwin();
    v15 = *__error();
    v16 = _os_log_pack_fill();
    *v16 = 136446210;
    *(v16 + 4) = "+[NRDLocalDevice createEndpointFromAddrData:portString:]";
    sub_10015B480();
    _NRLogAbortWithPack();
  }

  if ([v4 length] != 16)
  {
    v12 = sub_10015B480();
    v13 = _NRLogIsLevelEnabled();

    if (v13)
    {
      v14 = sub_10015B480();
      _NRLogWithArgs();
    }

    goto LABEL_14;
  }

  if (v5)
  {
    v6 = bswap32([v5 intValue]) >> 16;
  }

  else
  {
    LOWORD(v6) = 0;
  }

  memset(&v17[2], 0, 24);
  v17[0] = 7708;
  v17[1] = v6;
  [v4 getBytes:&v17[4] length:16];
  v7 = [NWAddressEndpoint endpointWithAddress:v17];

  return v7;
}

void sub_1001681A4(uint64_t a1, _OWORD *a2, void *a3)
{
  v4 = a3;
  objc_opt_self();
  v5 = sub_100003490();
  dispatch_assert_queue_V2(v5);

  if (!a2)
  {
    v7 = sub_10015B480();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v9 = sub_10015B480();
      _NRLogWithArgs();
    }

    goto LABEL_14;
  }

  if (!v4)
  {
    v10 = sub_10015B480();
    v11 = _NRLogIsLevelEnabled();

    if (v11)
    {
      v12 = sub_10015B480();
      _NRLogWithArgs();
    }

LABEL_14:
    v4 = _os_log_pack_size();
    v6 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
    v13 = *__error();
    v14 = _os_log_pack_fill();
    *v14 = 136446210;
    *(v14 + 4) = "+[NRDLocalDevice writeSockAddrBytes:forEndpoint:]";
    sub_10015B480();
    _NRLogAbortWithPack();
    goto LABEL_15;
  }

  memset(v29, 0, 28);
  v6 = [v4 addressData];
  if ([v6 length] <= 0x1B)
  {
LABEL_15:
    v15 = sub_10015B480();
    v16 = _NRLogIsLevelEnabled();

    if (v16)
    {
      v17 = sub_10015B480();
      _NRLogWithArgs();
    }

    _os_log_pack_size();
    v18 = *__error();
    goto LABEL_24;
  }

  [v6 getBytes:v29 length:28];
  if (BYTE1(v29[0]) != 30)
  {
    v19 = sub_10015B480();
    v20 = _NRLogIsLevelEnabled();

    if (v20)
    {
      v21 = sub_10015B480();
      _NRLogWithArgs();
    }

    _os_log_pack_size();
    v22 = *__error();
    v23 = _os_log_pack_fill();
    *v23 = 136446722;
    *(v23 + 4) = "+[NRDLocalDevice writeSockAddrBytes:forEndpoint:]";
LABEL_25:
    *(v23 + 12) = 2112;
    *(v23 + 14) = v6;
    *(v23 + 22) = 2112;
    *(v23 + 24) = v4;
    sub_10015B480();
    _NRLogAbortWithPack();
  }

  if (LOBYTE(v29[0]) <= 0x1Bu)
  {
    v24 = sub_10015B480();
    v25 = _NRLogIsLevelEnabled();

    if (v25)
    {
      v26 = sub_10015B480();
      _NRLogWithArgs();
    }

    _os_log_pack_size();
    v27 = *__error();
LABEL_24:
    v23 = _os_log_pack_fill();
    *v23 = 136446722;
    *(v23 + 4) = "+[NRDLocalDevice writeSockAddrBytes:forEndpoint:]";
    goto LABEL_25;
  }

  if (LOBYTE(v29[0]) != 28)
  {
    LOBYTE(v29[0]) = 28;
  }

  *a2 = v29[0];
  *(a2 + 12) = *(v29 + 12);
}

double sub_100168638(void *a1, _OWORD *a2)
{
  v4 = sub_100003490();
  dispatch_assert_queue_V2(v4);

  if (!a2)
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
    *(v13 + 4) = "[NRDLocalDevice writeLocalClassDInnerAddressBytes:]";
    sub_10015B480();
    _NRLogAbortWithPack();
  }

  v14 = 0;
  v15 = 0uLL;
  v16 = 0;
  v5 = sub_100003490();
  dispatch_assert_queue_V2(v5);

  v6 = sub_100003490();
  dispatch_assert_queue_V2(v6);

  v7 = sub_1001672A0(a1, @"0");
  sub_1001681A4(NRDLocalDevice, &v14, v7);

  result = *&v15;
  *a2 = v15;
  return result;
}

void sub_1001687DC(uint64_t a1, _WORD *a2)
{
  objc_opt_self();
  v3 = sub_100003490();
  dispatch_assert_queue_V2(v3);

  v15 = a2;
  do
  {
    do
    {
LABEL_6:
      arc4random_buf(a2 + 5, 6uLL);
    }

    while (!a2[5]);
  }

  while (!a2[6] || !a2[7]);
  v4 = [[NSData alloc] initWithBytes:a2 length:16];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  obj = qword_100229428;
  v5 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v18;
    do
    {
      v8 = 0;
      do
      {
        if (*v18 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = [qword_100229428 objectForKeyedSubscript:{*(*(&v17 + 1) + 8 * v8), v15}];
        v10 = [v9 localInnerIPv6AddressBytesClassD];
        if ([v10 isEqual:v4])
        {
          goto LABEL_4;
        }

        v11 = [v9 remoteInnerIPv6AddressBytesClassD];
        if ([v11 isEqual:v4])
        {
          goto LABEL_3;
        }

        v12 = [v9 localInnerIPv6AddressBytesClassC];
        if ([v12 isEqual:v4])
        {

LABEL_3:
LABEL_4:

LABEL_5:
          a2 = v15;
          goto LABEL_6;
        }

        v13 = [v9 remoteInnerIPv6AddressBytesClassC];
        v14 = [v13 isEqual:v4];

        if (v14)
        {
          goto LABEL_5;
        }

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v6);
  }
}

void *sub_1001689F8(void *result)
{
  if (result)
  {
    v1 = result;
    v2 = sub_100003490();
    dispatch_assert_queue_V2(v2);

    return sub_1001677D0(v1, @"0");
  }

  return result;
}

void *sub_100168A4C(void *result)
{
  if (result)
  {
    v1 = result;
    v2 = sub_100003490();
    dispatch_assert_queue_V2(v2);

    return sub_100167B9C(v1, @"0");
  }

  return result;
}

int64_t sub_100168AA0(id a1, NRDLocalDevice *a2, NRDLocalDevice *a3)
{
  v4 = a2;
  v5 = a3;
  if (!v4)
  {
    v11 = v5;
    if (!v5)
    {
      v12 = 0;
      nrUUID = 0;
      goto LABEL_15;
    }

    if ((v5->_databaseFlags & 3) == 0)
    {
      if (v5->_isEmptyPairing)
      {
        v9 = -1;
        goto LABEL_16;
      }

      v12 = 0;
      goto LABEL_14;
    }

LABEL_22:
    v9 = 1;
    goto LABEL_16;
  }

  databaseFlags = v4->_databaseFlags;
  if (!v5)
  {
    if (databaseFlags)
    {
      goto LABEL_4;
    }

    v11 = 0;
    if ((databaseFlags & 2) != 0)
    {
      v8 = v4->_databaseFlags & 2;
      goto LABEL_7;
    }

    if (!v4->_isEmptyPairing)
    {
      v12 = v4->_nrUUID;
      nrUUID = 0;
      goto LABEL_15;
    }

    goto LABEL_22;
  }

  if ((databaseFlags & 1) != (v5->_databaseFlags & 1))
  {
LABEL_4:
    v7 = (v4->_databaseFlags & 1) == 0;
    goto LABEL_8;
  }

  if (((databaseFlags >> 1) & 1) != ((v5->_databaseFlags >> 1) & 1))
  {
    v8 = v4->_databaseFlags & 2;
LABEL_7:
    v7 = v8 == 0;
LABEL_8:
    if (v7)
    {
      v9 = 1;
    }

    else
    {
      v9 = -1;
    }

    goto LABEL_11;
  }

  if (v4->_isEmptyPairing == v5->_isEmptyPairing)
  {
    v11 = v5;
    v12 = v4->_nrUUID;
LABEL_14:
    nrUUID = v11->_nrUUID;
LABEL_15:
    v9 = [(NSUUID *)v12 compare:nrUUID];

LABEL_16:
    v5 = v11;
    goto LABEL_11;
  }

  if (v4->_isEmptyPairing)
  {
    v9 = 1;
  }

  else
  {
    v9 = -1;
  }

LABEL_11:

  return v9;
}

NRDLocalDevice *sub_100168BE8(uint64_t a1, void *a2, int a3)
{
  v4 = a2;
  objc_opt_self();
  if (!v4)
  {
    v25 = sub_10015B480();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      goto LABEL_45;
    }

    goto LABEL_46;
  }

  if ((_NRIsUUIDNonZero() & 1) == 0)
  {
    v27 = sub_10015B480();
    v28 = _NRLogIsLevelEnabled();

    if (v28)
    {
LABEL_45:
      v29 = sub_10015B480();
      _NRLogWithArgs();

      v23 = 0;
      goto LABEL_41;
    }

LABEL_46:
    v23 = 0;
    goto LABEL_41;
  }

  v5 = sub_100003490();
  dispatch_assert_queue_V2(v5);

  sub_1001619D8();
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v6 = qword_100229428;
  v7 = [v6 countByEnumeratingWithState:&v35 objects:v39 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v36;
LABEL_5:
    v10 = 0;
    while (1)
    {
      if (*v36 != v9)
      {
        objc_enumerationMutation(v6);
      }

      v11 = [qword_100229428 objectForKeyedSubscript:*(*(&v35 + 1) + 8 * v10)];
      v12 = v11;
      v13 = v11 ? *(v11 + 32) : 0;
      if ([v4 isEqual:v13])
      {
        break;
      }

      if (v8 == ++v10)
      {
        v14 = [v6 countByEnumeratingWithState:&v35 objects:v39 count:16];
        v8 = v14;
        if (v14)
        {
          goto LABEL_5;
        }

        goto LABEL_15;
      }
    }
  }

  else
  {
LABEL_15:
    v12 = 0;
  }

  if (v12)
  {
    v15 = 1;
  }

  else
  {
    v15 = a3 == 0;
  }

  if (!v15)
  {
    v12 = [NRDLocalDevice alloc];
    if (v12 && (v16 = objc_alloc_init(NSUUID), v12 = sub_10015D20C(v12, v16), v16, v12, v12))
    {
      v17 = 0;
      nrUUID = v12->_nrUUID;
    }

    else
    {
      nrUUID = 0;
      v17 = 1;
    }

    v19 = nrUUID;
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

      v33 = v19;
      v34 = v4;
      v32 = 2359;
      v30 = "";
      v31 = "+[NRDLocalDevice copyLocalDeviceForBluetoothUUID:shouldCreate:]";
      _NRLogWithArgs();
    }

    [(NRDLocalDevice *)v12 setBluetoothUUID:v4, v30, v31, v32, v33, v34];
    if (v17)
    {
      [qword_100229428 setObject:v12 forKeyedSubscript:v19];
    }

    else
    {
      if (!v12->_isEmptyPairing)
      {
        v12->_isEmptyPairing = 1;
        sub_10015D3F4(v12);
      }

      v12->_isChanged = 1;
      [qword_100229428 setObject:v12 forKeyedSubscript:v19];
      v20 = v12->_nrUUID;
      v21 = [(NRDLocalDevice *)v12 description];
      sub_1000059A8(v20, 5000, v21, 0);
    }

    v22 = objc_opt_self();
    sub_1001629FC(v22, 0);
  }

  v23 = v12;
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

LABEL_41:
  return v23;
}

NRDLocalDevice *sub_100169028(uint64_t a1, void *a2, int a3)
{
  v4 = a2;
  objc_opt_self();
  if (v4)
  {
    v5 = sub_100003490();
    dispatch_assert_queue_V2(v5);

    sub_1001619D8();
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v6 = qword_100229428;
    v7 = [v6 countByEnumeratingWithState:&v32 objects:v36 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v33;
LABEL_4:
      v10 = 0;
      while (1)
      {
        if (*v33 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [qword_100229428 objectForKeyedSubscript:*(*(&v32 + 1) + 8 * v10)];
        v12 = v11;
        v13 = v11 ? *(v11 + 40) : 0;
        if ([v4 isEqual:v13])
        {
          break;
        }

        if (v8 == ++v10)
        {
          v14 = [v6 countByEnumeratingWithState:&v32 objects:v36 count:16];
          v8 = v14;
          if (v14)
          {
            goto LABEL_4;
          }

          goto LABEL_14;
        }
      }
    }

    else
    {
LABEL_14:
      v12 = 0;
    }

    if (!v12 && a3)
    {
      v12 = [NRDLocalDevice alloc];
      if (v12 && (v15 = objc_alloc_init(NSUUID), v12 = sub_10015D20C(v12, v15), v15, v12, v12))
      {
        v16 = 0;
        nrUUID = v12->_nrUUID;
      }

      else
      {
        nrUUID = 0;
        v16 = 1;
      }

      v18 = nrUUID;
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

        v30 = v18;
        v31 = v4;
        v29 = 2393;
        v27 = "";
        v28 = "+[NRDLocalDevice copyLocalDeviceForIDSDeviceID:shouldCreate:]";
        _NRLogWithArgs();
      }

      [(NRDLocalDevice *)v12 setIdsDeviceID:v4, v27, v28, v29, v30, v31];
      if (v16)
      {
        [qword_100229428 setObject:v12 forKeyedSubscript:v18];
      }

      else
      {
        if (!v12->_isEmptyPairing)
        {
          v12->_isEmptyPairing = 1;
          sub_10015D3F4(v12);
        }

        v12->_isChanged = 1;
        [qword_100229428 setObject:v12 forKeyedSubscript:v18];
        v19 = v12->_nrUUID;
        v20 = [(NRDLocalDevice *)v12 description];
        sub_1000059A8(v19, 5000, v20, 0);
      }

      v21 = objc_opt_self();
      sub_1001629FC(v21, 0);
    }

    v22 = v12;
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
    v24 = sub_10015B480();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v26 = sub_10015B480();
      _NRLogWithArgs();
    }

    v22 = 0;
  }

  return v22;
}

uint64_t sub_100169428(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  if ((*(a1 + 15) & 1) == 0)
  {
    *(a1 + 15) = 1;
    if (*(a1 + 144))
    {
      v2 = +[NRDeviceOperationalProperties copyPropertiesForDefaultPairedPhone];
      v3 = [v2 allowedLinkTypes];
      v4 = [*(a1 + 144) allowedLinkTypes];
      v5 = [v3 isEqualToArray:v4];

      if (v5)
      {
        *(a1 + 10) = 1;
      }
    }

    else
    {
      *(a1 + 10) = 1;
    }
  }

  return *(a1 + 10) & 1;
}

void sub_1001694E4(void *a1, int a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v11 = a3;
  v12 = [[NSString alloc] initWithFormat:v11 arguments:&a9];

  v13 = a1[3];
  v14 = v12;
  v15 = v13;
  v16 = [a1 description];
  sub_1000059A8(v15, a2, v16, v14);
}

void sub_100169594(uint64_t a1)
{
  sub_100169658(NRDLocalDevice, (*(a1 + 160) & 0xFFFFFFFFFFFFFFFELL | [*(a1 + 144) usesTLS]), *(a1 + 24), 0);
  v2 = a1;
  objc_opt_self();
  v3 = [*(a1 + 144) usesTLS];
  v4 = *(a1 + 24);

  sub_1001627AC(NRDLocalDevice, v3, v4);
  sub_100169848(NRDLocalDevice, 0, *(a1 + 24), 0);
  v5 = *(a1 + 24);

  sub_100169B38(NRDLocalDevice, v5);
}

void sub_100169658(uint64_t a1, char *a2, void *a3, int a4)
{
  v21 = a3;
  v6 = objc_opt_self();
  v7 = sub_100003490();
  dispatch_assert_queue_V2(v7);

  if (v21)
  {
    v8 = sub_100163A30(v6, v21);
    if (v8)
    {
      if (v8[20] == a2)
      {
LABEL_4:

        goto LABEL_5;
      }
    }

    else
    {
      v13 = sub_10015B480();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      if (IsLevelEnabled)
      {
        v15 = sub_10015B480();
        _NRLogWithArgs();
      }

      v16 = _os_log_pack_size();
      a4 = v16;
      a2 = &v21 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
      v17 = *__error();
      v18 = _os_log_pack_fill();
      *v18 = 136446210;
      *(v18 + 4) = "+[NRDLocalDevice updateRemoteDeviceFlagsInner:nrUUID:saveToDisk:]";
      sub_10015B480();
      v8 = _NRLogAbortWithPack();
    }

    v19 = v8;
    [v8 setRemoteFlags:{a2, v21}];
    if (a4)
    {
      v20 = objc_opt_self();
      sub_1001629FC(v20, 0);
    }

    v8 = v19;
    goto LABEL_4;
  }

  v10 = sub_10015B480();
  v11 = _NRLogIsLevelEnabled();

  if (v11)
  {
    v12 = sub_10015B480();
    _NRLogWithArgs();
    v8 = v12;
    goto LABEL_4;
  }

LABEL_5:
  v9 = v21;
}

void sub_100169848(uint64_t a1, void *a2, void *a3, int a4)
{
  LODWORD(v4) = a4;
  v25 = a2;
  v6 = a3;
  v7 = objc_opt_self();
  v8 = sub_100003490();
  dispatch_assert_queue_V2(v8);

  if (v6)
  {
    v9 = sub_100163A30(v7, v6);
    if (v9)
    {
      v8 = v9;
      if ([v25 isEqual:*(v9 + 96)])
      {
LABEL_4:

        goto LABEL_5;
      }
    }

    else
    {
      v13 = sub_10015B480();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      if (IsLevelEnabled)
      {
        v15 = sub_10015B480();
        _NRLogWithArgs();
      }

      v6 = _os_log_pack_size();
      v4 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
      v16 = *__error();
      v17 = _os_log_pack_fill();
      *v17 = 136446210;
      *(v17 + 4) = "+[NRDLocalDevice updateReceivedProxyNotifyPayloadInner:nrUUID:saveToDisk:]";
      sub_10015B480();
      _NRLogAbortWithPack();
    }

    if (v25 || v8[12].isa)
    {
      v18 = [v25 copy];
      [v8 setReceivedProxyNotifyPayload:v18];

      if ([(objc_class *)v8[18].isa proxyCapability]== 2)
      {
        if (v8[12].isa)
        {
          v19 = sub_100146010(v25);
          [(objc_class *)v8[18].isa setProxyProviderCriteria:v19];
        }

        else
        {
          [(objc_class *)v8[18].isa setProxyProviderCriteria:0];
        }

        if ([(objc_class *)v8[18].isa hasPoliciesForProxyCriteria])
        {
          v20 = sub_10015B480();
          v21 = _NRLogIsLevelEnabled();

          if (v21)
          {
            v22 = sub_10015B480();
            v24 = [(objc_class *)v8[18].isa proxyProviderCriteria];
            _NRLogWithArgs();
          }
        }
      }

      if (v4)
      {
        v23 = objc_opt_self();
        sub_1001629FC(v23, 0);
      }
    }

    goto LABEL_4;
  }

  v11 = sub_10015B480();
  v12 = _NRLogIsLevelEnabled();

  if (v12)
  {
    v8 = sub_10015B480();
    _NRLogWithArgs();
    goto LABEL_4;
  }

LABEL_5:

  v10 = v25;
}

void sub_100169B38(uint64_t a1, void *a2)
{
  v13 = a2;
  v2 = objc_opt_self();
  v3 = sub_100003490();
  dispatch_assert_queue_V2(v3);

  if (v13)
  {
    v4 = sub_100163A30(v2, v13);
    if (!v4)
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
      *(v12 + 4) = "+[NRDLocalDevice suspendNonNearbyLinksForNRUUID:]";
      sub_10015B480();
      _NRLogAbortWithPack();
    }

    v4[11] = 1;
    goto LABEL_4;
  }

  v5 = sub_10015B480();
  v6 = _NRLogIsLevelEnabled();

  if (v6)
  {
    v7 = sub_10015B480();
    _NRLogWithArgs();
    v4 = v7;
LABEL_4:
  }
}

void sub_100169CF4(uint64_t a1, void *a2, uint64_t a3, int a4, int a5, void *a6, int a7, int a8, unsigned __int8 a9, char a10, uint64_t a11, unsigned __int16 a12, void *a13, void *a14, void *a15, void *a16, void *a17)
{
  v128 = a4;
  LODWORD(v129) = a8;
  LODWORD(v132) = a5;
  v127 = a3;
  v19 = a2;
  v133 = a6;
  v131 = a13;
  v20 = a14;
  v134 = a15;
  v135 = a16;
  v21 = a17;
  v22 = objc_opt_self();
  v23 = sub_100003490();
  dispatch_assert_queue_V2(v23);

  if (!v19)
  {
    v107 = sub_10015B480();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    v24 = v133;
    v25 = v131;
    if (!IsLevelEnabled)
    {
      goto LABEL_144;
    }

LABEL_166:
    v111 = sub_10015B480();
    _NRLogWithArgs();

    goto LABEL_144;
  }

  if ((_NRIsUUIDNonZero() & 1) == 0)
  {
    v109 = sub_10015B480();
    v110 = _NRLogIsLevelEnabled();

    v24 = v133;
    v25 = v131;
    if (!v110)
    {
      goto LABEL_144;
    }

    goto LABEL_166;
  }

  v24 = v133;
  if (!v21)
  {
    v112 = sub_10015B480();
    v113 = _NRLogIsLevelEnabled();

    v25 = v131;
    if (!v113)
    {
      goto LABEL_144;
    }

    goto LABEL_166;
  }

  v130 = v21;
  v21 = a9;
  if (!v133 && (v132 & 1) == 0 && (a10 & 1) == 0 && (a9 & 1) == 0)
  {
    if (qword_100229488 != -1)
    {
      dispatch_once(&qword_100229488, &stru_1001FD018);
    }

    v21 = v130;
    v25 = v131;
    if (_NRLogIsLevelEnabled())
    {
      if (qword_100229488 != -1)
      {
        dispatch_once(&qword_100229488, &stru_1001FD018);
      }

      _NRLogWithArgs();
    }

    (v130)[2](v130, 22, @"outOfBandKey was nil and !wasInitiallySetupUsingIDSPairing and !isModernPairing and !isExternalPairing");
    goto LABEL_144;
  }

  if (a7)
  {
    if (qword_100229488 != -1)
    {
      dispatch_once(&qword_100229488, &stru_1001FD018);
    }

    v21 = v130;
    v25 = v131;
    v26 = &qword_100229000;
    if (!_NRLogIsLevelEnabled())
    {
      goto LABEL_21;
    }

    if (qword_100229488 == -1)
    {
LABEL_20:
      v27 = v26[144];
      _NRLogWithArgs();
LABEL_21:
      (*(v21 + 16))(v21, 22, @"pairWithSPPLink is not supported");
      goto LABEL_144;
    }

LABEL_175:
    dispatch_once(&qword_100229488, &stru_1001FD018);
    goto LABEL_20;
  }

  v125 = a11;
  if (a11 || !a10)
  {
    v28 = sub_100163A30(v22, v19);
    v25 = v131;
    if (!v28)
    {
      v117 = sub_10015B480();
      v118 = _NRLogIsLevelEnabled();

      if (v118)
      {
        v119 = sub_10015B480();
        _NRLogWithArgs();
      }

      _os_log_pack_size();
      v26 = (&v122 - ((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0));
      v120 = *__error();
      v121 = _os_log_pack_fill();
      *v121 = 136446210;
      *(v121 + 4) = "+[NRDLocalDevice registerDeviceWithNRUUID:pairingProtocolVersion:peerNetworkRelayVersion:wasInitiallySetupUsingIDSPairing:outOfBandKey:pairWithSPPLink:isAltAccountPairing:isExternalPairing:isModernPairing:authMethodUsedForModernPairing:psm:bluetoothMACAddress:operationalProperties:peerEndpointDictionary:candidateService:completionBlock:]";
      sub_10015B480();
      _NRLogAbortWithPack();
      goto LABEL_175;
    }

    v29 = v28;
    if (v28[12])
    {
      v28[12] = 0;
      if ((v28[8] & 1) == 0)
      {
        sub_10015D69C(v28);
        v29[13] = 1;
      }
    }

    v30 = *(v29 + 6);
    if ((v30 & 1) != 0 && *(v29 + 18))
    {
      v126 = v29;
      if ((v30 & 1) == 0)
      {
        goto LABEL_31;
      }
    }

    else
    {
      [v29 setOperationalProp:v20];
      v30 = *(v29 + 6);
      v126 = v29;
      if ((v30 & 1) == 0)
      {
LABEL_31:
        v124 = v22;
        if (v24)
        {
          v31 = v29;
          v32 = *(v29 + 22);
          if (v32)
          {
            v33 = v24;
            v34 = *(v32 + 16);
            *(v32 + 16) = v33;
          }

          else
          {
            v36 = sub_10015DD58([NRDLDKeychainItemData alloc], v24);
            v34 = *(v31 + 22);
            *(v31 + 22) = v36;
          }

          v29 = v31;

          v30 = *(v31 + 6);
        }

        if (a10)
        {
          [v29 setDatabaseFlags:v30 | 0x10];
          [v29 setAuthMethodUsedForModernPairing:v125];
          v30 = *(v29 + 6);
        }

        v37 = v30 & 0xFFFFFFFFFFFFFFF7;
        v38 = 8;
        if (!a9)
        {
          v38 = 0;
        }

        [v29 setDatabaseFlags:v37 | v38];
        v39 = [*(v29 + 18) allowedLinkSubtypes];
        v40 = [v39 containsObject:&off_100209E90];

        if (v40)
        {
          if (a9)
          {
            v41 = a12;
          }

          else
          {
            v41 = 137;
          }

          [v29 setPsm:v41];
        }

        v42 = 4;
        if (!v129)
        {
          v42 = 0;
        }

        [v29 setDatabaseFlags:*(v29 + 6) & 0xFFFFFFFFFFFFFFFBLL | v42];
        if (v25)
        {
          [v29 setBluetoothMACAddress:v25];
        }

        v129 = v20;
        if (v134)
        {
          if (qword_100229488 != -1)
          {
            dispatch_once(&qword_100229488, &stru_1001FD018);
          }

          v123 = v19;
          if (_NRLogIsLevelEnabled())
          {
            if (qword_100229488 != -1)
            {
              dispatch_once(&qword_100229488, &stru_1001FD018);
            }

            _NRLogWithArgs();
          }

          v43 = objc_alloc_init(NSMutableDictionary);
          v140 = 0u;
          v141 = 0u;
          v142 = 0u;
          v143 = 0u;
          v44 = v134;
          v45 = [v44 countByEnumeratingWithState:&v140 objects:v145 count:16];
          if (v45)
          {
            v46 = v45;
            v47 = *v141;
            do
            {
              for (i = 0; i != v46; i = i + 1)
              {
                if (*v141 != v47)
                {
                  objc_enumerationMutation(v44);
                }

                v49 = *(*(&v140 + 1) + 8 * i);
                v50 = [v44 objectForKeyedSubscript:v49];
                v51 = v49;
                if ([v51 unsignedShortValue] == 2)
                {

                  v51 = &off_100209EA8;
                }

                [v43 setObject:v50 forKeyedSubscript:v51];
              }

              v46 = [v44 countByEnumeratingWithState:&v140 objects:v145 count:16];
            }

            while (v46);
          }

          v52 = qword_100229448;
          if (!qword_100229448)
          {
            v53 = objc_alloc_init(NSMutableDictionary);
            v54 = qword_100229448;
            qword_100229448 = v53;

            v52 = qword_100229448;
          }

          v19 = v123;
          [v52 setObject:v43 forKeyedSubscript:v123];

          v24 = v133;
          v25 = v131;
          v29 = v126;
        }

        if (v135 && [*(v29 + 18) allowsDeviceDiscovery])
        {
          v55 = qword_100229450;
          if (!qword_100229450)
          {
            v56 = objc_alloc_init(NSMutableDictionary);
            v57 = qword_100229450;
            qword_100229450 = v56;

            v55 = qword_100229450;
          }

          v138 = 0u;
          v139 = 0u;
          v136 = 0u;
          v137 = 0u;
          v58 = [v55 allValues];
          v59 = [v58 countByEnumeratingWithState:&v136 objects:v144 count:16];
          if (v59)
          {
            v60 = v59;
            v61 = *v137;
            while (2)
            {
              for (j = 0; j != v60; j = j + 1)
              {
                if (*v137 != v61)
                {
                  objc_enumerationMutation(v58);
                }

                if ([*(*(&v136 + 1) + 8 * j) isEqualToString:v135])
                {
                  if (qword_100229488 != -1)
                  {
                    dispatch_once(&qword_100229488, &stru_1001FD018);
                  }

                  v21 = v130;
                  v35 = v126;
                  if (_NRLogIsLevelEnabled())
                  {
                    v101 = sub_10015B480();
                    _NRLogWithArgs();
                  }

                  (v130)[2](v130, 22, @"service already exists");

                  v20 = v129;
                  goto LABEL_143;
                }
              }

              v60 = [v58 countByEnumeratingWithState:&v136 objects:v144 count:16];
              if (v60)
              {
                continue;
              }

              break;
            }
          }

          [qword_100229450 setObject:v135 forKeyedSubscript:v19];
        }

        v63 = [NSString alloc];
        if (a10)
        {
          LogString = NRCreateStringFromPairingAuthMethod();
          v65 = v127;
          v66 = [v63 initWithFormat:@"ppv=%lld, %@", v127, LogString];
        }

        else
        {
          if (v132)
          {
            v67 = "IDS, ";
          }

          else
          {
            v67 = "";
          }

          LogString = _NRKeyCreateLogString();
          v65 = v127;
          v66 = [v63 initWithFormat:@"ppv=%lld, %sOOBK %@", v127, v67, LogString];
        }

        v68 = v66;

        v69 = *(v126 + 3);
        v70 = v68;
        v71 = v69;
        v72 = v126;
        v73 = v71;
        v74 = [v126 description];
        sub_1000059A8(v73, 5001, v74, v70);
        v131 = v70;

        v75 = v19;
        objc_opt_self();
        if (qword_100229440)
        {
          v76 = [qword_100229440 objectForKeyedSubscript:v75];

          if (v76)
          {
            v77 = nr_absolute_time();
            goto LABEL_108;
          }
        }

        else
        {
        }

        v76 = objc_alloc_init(NRAnalyticsLocalDevice);
        v77 = nr_absolute_time();
        if (!v76)
        {
          v78 = v126 + 176;
LABEL_109:
          v79 = v76;
          v80 = v75;
          objc_opt_self();
          if (v79)
          {
            v81 = qword_100229440;
            if (!qword_100229440)
            {
              v82 = objc_alloc_init(NSMutableDictionary);
              v83 = qword_100229440;
              qword_100229440 = v82;

              v81 = qword_100229440;
            }

            [v81 setObject:v79 forKeyedSubscript:v80];
          }

          sub_10016586C(v72);
          v84 = 32;
          if (!v132)
          {
            v84 = 0;
          }

          [v72 setDatabaseFlags:*(v72 + 6) & 0xFFFFFFFFFFFFFFDFLL | v84];
          if (v65)
          {
            [v72 setPairingProtocolVersion:v65];
          }

          v132 = v79;
          if (v128)
          {
            [v72 setLastSeenInnerLinkVersionHBO:?];
          }

          [v72 setDatabaseFlags:*(v72 + 6) | 2];
          v85 = v72;
          objc_opt_self();
          v86 = [*(v72 + 18) usesTLS];
          v87 = *(v72 + 3);

          sub_1001627AC(NRDLocalDevice, v86, v87);
          v88 = *(v72 + 6);
          if ((v88 & 0x10) != 0 || *v78 || v85[5])
          {
            v89 = qword_100229470;
            if (!qword_100229470)
            {
              v90 = objc_alloc_init(NSMutableDictionary);
              v91 = qword_100229470;
              qword_100229470 = v90;

              v89 = qword_100229470;
            }

            v92 = [v89 objectForKeyedSubscript:v80];
            v24 = v133;
            if (!v92)
            {
              v92 = objc_alloc_init(NSMutableArray);
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

            v93 = objc_retainBlock(v130);
            [v92 addObject:v93];

            v21 = v130;
            [qword_100229470 setObject:v92 forKeyedSubscript:v80];
            v94 = 0;
          }

          else
          {
            [v85 setDatabaseFlags:v88 | 1];
            if (qword_100229488 != -1)
            {
              dispatch_once(&qword_100229488, &stru_1001FD018);
            }

            v24 = v133;
            v21 = v130;
            if (_NRLogIsLevelEnabled())
            {
              if (qword_100229488 != -1)
              {
                dispatch_once(&qword_100229488, &stru_1001FD018);
              }

              _NRLogWithArgs();
            }

            v102 = *(v126 + 3);
            v103 = [v85 description];
            sub_1000059A8(v102, 5007, v103, 0);

            v104 = v80;
            objc_opt_self();
            if (qword_100229440)
            {
              v92 = [qword_100229440 objectForKeyedSubscript:v104];

              v94 = 1;
              if (!v92)
              {
                goto LABEL_134;
              }

              *(v92 + 4) = nr_absolute_time();
              *(v92 + 16) = 1;
              [v92 submit];
              v105 = v104;
              objc_opt_self();
              if (qword_100229440)
              {
                [qword_100229440 setObject:0 forKeyedSubscript:v105];
                if (![qword_100229440 count])
                {
                  v106 = qword_100229440;
                  qword_100229440 = 0;
                }
              }

              v94 = 1;
            }

            else
            {
              v94 = 1;
              v92 = v104;
            }
          }

LABEL_134:
          v20 = v129;
          v95 = v85[4];
          if (v95)
          {
          }

          else
          {
            v96 = [*(v126 + 18) allowedLinkTypes];
            v97 = [v96 containsObject:&off_100209EC0];

            if (v97)
            {
              [v85 setDatabaseFlags:*(v126 + 6) | 0x80];
            }
          }

          v98 = objc_opt_self();
          sub_1001629FC(v98, 0);
          if (v94)
          {
            (*(v21 + 16))(v21, 0, 0);
          }

          v99 = sub_100003490();
          dispatch_async(v99, &stru_1001FAE90);

          objc_opt_self();
          if (qword_1002290C0 != -1)
          {
            dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
          }

          v35 = v126;
          v100 = qword_1002290B8;
          sub_1000BC670(v100);

LABEL_143:
          goto LABEL_144;
        }

LABEL_108:
        v76->_deviceRegistrationStart = v77;
        v78 = v72 + 176;
        v76->_devicePairedWithOOBKey = *(v72 + 22) != 0;
        goto LABEL_109;
      }
    }

    if ((v30 & 2) != 0)
    {
      v21 = v130;
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

      v130[2](v130, 0, 0);
      v35 = v126;
    }

    else
    {
      v21 = v130;
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

      sub_10016AE40(v22, v19, v130);
      v35 = v126;
    }

    goto LABEL_143;
  }

  v114 = sub_10015B480();
  v115 = _NRLogIsLevelEnabled();

  v25 = v131;
  if (v115)
  {
    v116 = sub_10015B480();
    _NRLogWithArgs();
  }

  v21 = v130;
  (v130)[2](v130, 22, @"Modern pairing was specified with invalid auth method ");
LABEL_144:
}

void sub_10016AE40(uint64_t a1, void *a2, void *a3)
{
  v21 = a2;
  v4 = a3;
  v5 = objc_opt_self();
  v6 = sub_100003490();
  dispatch_assert_queue_V2(v6);

  if (_NRIsUUIDNonZero())
  {
    if (v4)
    {
      v7 = sub_100163B2C(v5, v21, 0);
      v8 = v7;
      if (v7)
      {
        v9 = *(v7 + 48);
        v10 = *(v7 + 24);
        v11 = [v8 description];
        if (v9)
        {
          sub_1000059A8(v10, 5003, v11, 0);

          [v8 setDatabaseFlags:v8[6] | 2];
          v14 = objc_opt_self();
          sub_1001629FC(v14, 0);
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

          (*(v4 + 2))(v4, 0, 0);
          goto LABEL_15;
        }

        sub_1000059A8(v10, 5010, v11, @"enable");

        v12 = [[NSString alloc] initWithFormat:@"%@ is not registered", v8];
        (*(v4 + 2))(v4, -2014, v12);
      }

      else
      {
        v13 = [v21 UUIDString];
        sub_1000059A8(v21, 5009, v13, @"enable");

        v12 = [[NSString alloc] initWithFormat:@"Unknown NRUUID %@", v21];
        (*(v4 + 2))(v4, -2008, v12);
      }

LABEL_15:
      v15 = sub_100003490();
      dispatch_async(v15, &stru_1001FAE90);

      objc_opt_self();
      if (qword_1002290C0 != -1)
      {
        dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
      }

      v16 = qword_1002290B8;
      sub_1000BC670(v16);

      goto LABEL_18;
    }

    v19 = sub_10015B480();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
LABEL_25:
      v8 = sub_10015B480();
      _NRLogWithArgs();
LABEL_18:
    }
  }

  else
  {
    v17 = sub_10015B480();
    v18 = _NRLogIsLevelEnabled();

    if (v18)
    {
      goto LABEL_25;
    }
  }
}

void sub_10016B190(uint64_t a1, int a2, void *a3)
{
  v4 = a3;
  v5 = objc_opt_self();
  v6 = sub_100003490();
  dispatch_assert_queue_V2(v6);

  if (!v4)
  {
    v34 = sub_10015B480();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (!IsLevelEnabled)
    {
      goto LABEL_61;
    }

    v8 = sub_10015B480();
    _NRLogWithArgs();
    goto LABEL_60;
  }

  v7 = sub_100163B2C(v5, v4, 0);
  if (!v7)
  {
    v36 = sub_10015B480();
    v37 = _NRLogIsLevelEnabled();

    if (v37)
    {
      v38 = sub_10015B480();
      _NRLogWithArgs();
    }

    v4 = _os_log_pack_size();
    v8 = &v43 - ((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0);
    v39 = *__error();
    v40 = _os_log_pack_fill();
    *v40 = 136446210;
    *(v40 + 4) = "+[NRDLocalDevice confirmKeysForClass:nrUUID:]";
    sub_10015B480();
    _NRLogAbortWithPack();
LABEL_67:
    dispatch_once(&qword_100229488, &stru_1001FD018);
LABEL_16:
    if (_NRLogIsLevelEnabled())
    {
      if (v5[145] != -1)
      {
        dispatch_once(&qword_100229488, &stru_1001FD018);
      }

      v15 = qword_100229480;
      String = NRDataProtectionClassCreateString();
      _NRLogWithArgs();
    }

    goto LABEL_60;
  }

  v8 = v7;
  if (a2 == 1)
  {
    v12 = *(v7 + 6);
    if ((v12 & 0x4000) != 0)
    {
      goto LABEL_60;
    }

    v10 = v12 | 0x4000;
    goto LABEL_12;
  }

  if (a2 == 3)
  {
    v11 = *(v7 + 6);
    if ((v11 & 0x2000) != 0)
    {
      goto LABEL_60;
    }

    v10 = v11 | 0x2000;
LABEL_12:
    [v7 setDatabaseFlags:v10];
    v13 = *(v8 + 6);
    if ((v13 & 0x20) != 0)
    {
      LOBYTE(v16) = 1;
      if ((v13 & 0x1000) != 0)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v14 = (v13 & 0x10) != 0 || *(v8 + 8) > 0x12u;
      v16 = (v13 >> 14) & 1 | v14;
      if ((v13 & 0x1000) != 0)
      {
LABEL_24:
        if ((((*(v8 + 6) & 0x2000) != 0) & v16) != 0)
        {
          [v8 setDatabaseFlags:v13 | 1];
          v17 = objc_opt_self();
          sub_1001629FC(v17, 0);
          v18 = [qword_100229470 objectForKeyedSubscript:v4];
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

            v19 = qword_100229480;
            [v18 count];
            v42 = sub_100166548(v8);
            _NRLogWithArgs();
          }

          if (v13)
          {
            goto LABEL_41;
          }

          v20 = *(v8 + 3);
          v21 = [v8 description];
          sub_1000059A8(v20, 5007, v21, 0);

          v22 = v4;
          objc_opt_self();
          if (qword_100229440)
          {
            v23 = [qword_100229440 objectForKeyedSubscript:v22];

            if (!v23)
            {
LABEL_41:
              if (v18)
              {
                v45 = 0u;
                v46 = 0u;
                v44 = 0u;
                v43 = 0u;
                v27 = v18;
                v28 = [v27 countByEnumeratingWithState:&v43 objects:v47 count:16];
                if (v28)
                {
                  v29 = v28;
                  v30 = *v44;
                  do
                  {
                    for (i = 0; i != v29; i = i + 1)
                    {
                      if (*v44 != v30)
                      {
                        objc_enumerationMutation(v27);
                      }

                      (*(*(*(&v43 + 1) + 8 * i) + 16))(*(*(&v43 + 1) + 8 * i));
                    }

                    v29 = [v27 countByEnumeratingWithState:&v43 objects:v47 count:16];
                  }

                  while (v29);
                }

                [v27 removeAllObjects];
                [qword_100229470 setObject:0 forKeyedSubscript:v4];
                if (![qword_100229470 count])
                {
                  v32 = qword_100229470;
                  qword_100229470 = 0;
                }
              }

              if (qword_100229448)
              {
                [qword_100229448 setObject:0 forKeyedSubscript:v4];
              }

              if (qword_100229450)
              {
                [qword_100229450 setObject:0 forKeyedSubscript:v4];
              }

              if (qword_100229458)
              {
                [qword_100229458 setObject:0 forKeyedSubscript:v4];
              }

              objc_opt_self();
              if (qword_1002290C0 != -1)
              {
                dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
              }

              v33 = qword_1002290B8;
              sub_1000BC670(v33);

              goto LABEL_60;
            }

            *(v23 + 32) = nr_absolute_time();
            *(v23 + 16) = 1;
            [v23 submit];
            v24 = v22;
            objc_opt_self();
            if (qword_100229440)
            {
              [qword_100229440 setObject:0 forKeyedSubscript:v24];
              if (![qword_100229440 count])
              {
                v25 = qword_100229440;
                qword_100229440 = 0;
              }
            }
          }

          else
          {
            v23 = v22;
          }

          goto LABEL_41;
        }
      }
    }

    v26 = objc_opt_self();
    sub_1001629FC(v26, 0);
    goto LABEL_60;
  }

  if (a2 != 4)
  {
    v5 = &qword_100229000;
    if (qword_100229488 == -1)
    {
      goto LABEL_16;
    }

    goto LABEL_67;
  }

  v9 = *(v7 + 6);
  if ((v9 & 0x1000) == 0)
  {
    v10 = v9 | 0x1000;
    goto LABEL_12;
  }

LABEL_60:

LABEL_61:
}

void sub_10016B844(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  v9 = objc_opt_self();
  v10 = sub_100003490();
  dispatch_assert_queue_V2(v10);

  if (v8)
  {
    v11 = sub_100163B2C(v9, v8, 0);
    if (v11)
    {
      v10 = v11;
      [v11 setDatabaseFlags:v11[6].isa & 0xFFFFFFFFFFFFFFFELL];
      [v10 setDatabaseFlags:v10[6].isa & 0xFFFFFFFFFFFFFFFDLL];
      v12 = objc_opt_self();
      sub_1001629FC(v12, 0);
      v9 = [qword_100229470 objectForKeyedSubscript:v8];
      v4 = &qword_100229000;
      if (qword_100229488 == -1)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v32 = sub_10015B480();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      if (IsLevelEnabled)
      {
        v34 = sub_10015B480();
        _NRLogWithArgs();
      }

      v7 = _os_log_pack_size();
      v8 = &v38 - ((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0);
      v35 = *__error();
      v36 = _os_log_pack_fill();
      *v36 = 136446210;
      *(v36 + 4) = "+[NRDLocalDevice reportRegistrationFailureCode:errorDescription:forNRUUID:]";
      sub_10015B480();
      _NRLogAbortWithPack();
    }

    dispatch_once(&qword_100229488, &stru_1001FD018);
LABEL_4:
    if (_NRLogIsLevelEnabled())
    {
      if (v4[145] != -1)
      {
        dispatch_once(&qword_100229488, &stru_1001FD018);
      }

      v18 = qword_100229480;
      v37 = sub_100166548(&v10->isa);
      _NRLogWithArgs();
    }

    sub_1001694E4(v10, 5008, @"[%lld] %@", v13, v14, v15, v16, v17, a2);
    v19 = v8;
    objc_opt_self();
    v20 = v19;
    if (qword_100229440)
    {
      v20 = [qword_100229440 objectForKeyedSubscript:v19];

      if (!v20)
      {
LABEL_15:
        if (v9)
        {
          v40 = 0u;
          v41 = 0u;
          v39 = 0u;
          v38 = 0u;
          v23 = v9;
          v24 = [v23 countByEnumeratingWithState:&v38 objects:v42 count:16];
          if (v24)
          {
            v25 = v24;
            v26 = *v39;
            do
            {
              for (i = 0; i != v25; i = i + 1)
              {
                if (*v39 != v26)
                {
                  objc_enumerationMutation(v23);
                }

                (*(*(*(&v38 + 1) + 8 * i) + 16))();
              }

              v25 = [v23 countByEnumeratingWithState:&v38 objects:v42 count:16];
            }

            while (v25);
          }

          [v23 removeAllObjects];
          [qword_100229470 setObject:0 forKeyedSubscript:v19];
          if (![qword_100229470 count])
          {
            v28 = qword_100229470;
            qword_100229470 = 0;
          }
        }

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

        objc_opt_self();
        if (qword_1002290C0 != -1)
        {
          dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
        }

        v29 = qword_1002290B8;
        sub_1000BC670(v29);

        goto LABEL_34;
      }

      *(v20 + 32) = nr_absolute_time();
      *(v20 + 16) = 0;
      [v20 submit];
      v21 = v19;
      objc_opt_self();
      if (qword_100229440)
      {
        [qword_100229440 setObject:0 forKeyedSubscript:v21];
        if (![qword_100229440 count])
        {
          v22 = qword_100229440;
          qword_100229440 = 0;
        }
      }
    }

    goto LABEL_15;
  }

  v30 = sub_10015B480();
  v31 = _NRLogIsLevelEnabled();

  if (!v31)
  {
    goto LABEL_35;
  }

  v10 = sub_10015B480();
  _NRLogWithArgs();
LABEL_34:

LABEL_35:
}

void sub_10016BD8C(uint64_t a1, void *a2, void *a3)
{
  v25 = a2;
  v4 = a3;
  objc_opt_self();
  v5 = sub_100003490();
  dispatch_assert_queue_V2(v5);

  if (v25)
  {
    if (_NRIsUUIDNonZero())
    {
      if (v4)
      {
        v6 = sub_100163B2C(NRDLocalDevice, v25, 0);
        v7 = v6;
        if (v6)
        {
          v8 = *(v6 + 24);
          v9 = [v7 description];
          sub_1000059A8(v8, 5002, v9, 0);

          v10 = sub_100166438(NRDLocalDevice, v7);
          [qword_100229428 setObject:v10 forKeyedSubscript:v25];

          if (v7[7])
          {
            [qword_100229430 setObject:0 forKeyedSubscript:?];
          }
        }

        else
        {
          v24 = sub_100166438(NRDLocalDevice, 0);
          [qword_100229428 setObject:v24 forKeyedSubscript:v25];
        }

        sub_1000B76C8(v25, 0);
        sub_100164E90(v7);
        v11 = objc_opt_self();
        sub_1001629FC(v11, 0);
        if (v7)
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

          (*(v4 + 2))(v4, 0, 0);
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

          v12 = [[NSString alloc] initWithFormat:@"Unknown NRUUID %@", v25];
          (*(v4 + 2))(v4, -2008, v12);
        }

        if (qword_100229448)
        {
          [qword_100229448 setObject:0 forKeyedSubscript:v25];
        }

        if (qword_100229450)
        {
          [qword_100229450 setObject:0 forKeyedSubscript:v25];
        }

        if (qword_100229458)
        {
          [qword_100229458 setObject:0 forKeyedSubscript:v25];
        }

        if (qword_100229478)
        {
          [qword_100229478 setObject:0 forKeyedSubscript:v25];
        }

        if (qword_100229470)
        {
          [qword_100229470 setObject:0 forKeyedSubscript:v25];
        }

        v13 = sub_100003490();
        dispatch_async(v13, &stru_1001FAE90);

        objc_opt_self();
        if (qword_1002290C0 != -1)
        {
          dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
        }

        v14 = qword_1002290B8;
        sub_1000BC670(v14, v15, v16, v17);

        goto LABEL_35;
      }

      v22 = sub_10015B480();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      if (IsLevelEnabled)
      {
LABEL_44:
        v7 = sub_10015B480();
        _NRLogWithArgs();
LABEL_35:
      }
    }

    else
    {
      v20 = sub_10015B480();
      v21 = _NRLogIsLevelEnabled();

      if (v21)
      {
        goto LABEL_44;
      }
    }
  }

  else
  {
    v18 = sub_10015B480();
    v19 = _NRLogIsLevelEnabled();

    if (v19)
    {
      goto LABEL_44;
    }
  }
}

void sub_10016C20C(uint64_t a1, void *a2, void *a3)
{
  v26 = a2;
  v4 = a3;
  v5 = objc_opt_self();
  v6 = sub_100003490();
  dispatch_assert_queue_V2(v6);

  if (v26)
  {
    if (_NRIsUUIDNonZero())
    {
      if (v4)
      {
        v7 = sub_100163B2C(v5, v26, 0);
        v8 = v7;
        if (v7)
        {
          v9 = *(v7 + 48);
          v10 = *(v7 + 24);
          v11 = [v8 description];
          if (v9)
          {
            sub_1000059A8(v10, 5004, v11, 0);

            [v8 setDatabaseFlags:v8[6] & 0xFFFFFFFFFFFFFFFDLL];
            v14 = objc_opt_self();
            sub_1001629FC(v14, 0);
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

            (*(v4 + 2))(v4, 0, 0);
            goto LABEL_16;
          }

          sub_1000059A8(v10, 5010, v11, @"disable");

          v12 = [[NSString alloc] initWithFormat:@"%@ is not registered", v8];
          (*(v4 + 2))(v4, -2014, v12);
        }

        else
        {
          v13 = [v26 UUIDString];
          sub_1000059A8(v26, 5009, v13, @"disable");

          v12 = [[NSString alloc] initWithFormat:@"Unknown NRUUID %@", v26];
          (*(v4 + 2))(v4, -2008, v12);
        }

LABEL_16:
        v15 = sub_100003490();
        dispatch_async(v15, &stru_1001FAE90);

        objc_opt_self();
        if (qword_1002290C0 != -1)
        {
          dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
        }

        v16 = qword_1002290B8;
        sub_1000BC670(v16, v17, v18, v19);

        goto LABEL_19;
      }

      v24 = sub_10015B480();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      if (IsLevelEnabled)
      {
LABEL_28:
        v8 = sub_10015B480();
        _NRLogWithArgs();
LABEL_19:
      }
    }

    else
    {
      v22 = sub_10015B480();
      v23 = _NRLogIsLevelEnabled();

      if (v23)
      {
        goto LABEL_28;
      }
    }
  }

  else
  {
    v20 = sub_10015B480();
    v21 = _NRLogIsLevelEnabled();

    if (v21)
    {
      goto LABEL_28;
    }
  }
}

uint64_t sub_10016C59C()
{
  objc_opt_self();
  v0 = sub_100003490();
  dispatch_assert_queue_V2(v0);

  sub_1001619D8();
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v1 = qword_100229428;
  v2 = [v1 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v2)
  {
    v3 = *v9;
    while (2)
    {
      for (i = 0; i != v2; ++i)
      {
        if (*v9 != v3)
        {
          objc_enumerationMutation(v1);
        }

        v5 = [qword_100229428 objectForKeyedSubscript:{*(*(&v8 + 1) + 8 * i), v8}];
        if (v5)
        {
          v6 = v5[6];

          if ((v6 & 2) != 0)
          {
            v2 = 1;
            goto LABEL_12;
          }
        }
      }

      v2 = [v1 countByEnumeratingWithState:&v8 objects:v12 count:16];
      if (v2)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:

  return v2;
}

id sub_10016C6D8()
{
  objc_opt_self();
  v0 = sub_100003490();
  dispatch_assert_queue_V2(v0);

  if (qword_100229238 != -1)
  {
    dispatch_once(&qword_100229238, &stru_1001FC340);
  }

  if (byte_100229230)
  {
    return &__NSArray0__struct;
  }

  sub_1001619D8();
  v1 = objc_alloc_init(NSMutableArray);
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v2 = qword_100229428;
  v3 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v13;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v13 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v12 + 1) + 8 * i);
        v8 = [qword_100229428 objectForKeyedSubscript:{v7, v12}];
        if (v8)
        {
          if (*(v8 + 48))
          {
            if (*(v8 + 32))
            {
              if ((*(v8 + 8) & 1) == 0)
              {
                v9 = v8;
                v10 = sub_100169428(v8);
                v8 = v9;
                if (v10)
                {
                  if (*(v9 + 9) == 2 && (*(v9 + 49) & 8) == 0)
                  {
                    [v1 addObject:v7];
                    v8 = v9;
                  }
                }
              }
            }
          }
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v4);
  }

  return v1;
}

id sub_10016C8BC()
{
  objc_opt_self();
  v0 = sub_100003490();
  dispatch_assert_queue_V2(v0);

  sub_1001619D8();
  v1 = objc_alloc_init(NSMutableArray);
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = qword_100229428;
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

        v7 = *(*(&v11 + 1) + 8 * i);
        v8 = [qword_100229428 objectForKeyedSubscript:{v7, v11}];
        v9 = v8;
        if (v8 && (*(v8 + 48) & 2) != 0)
        {
          [v1 addObject:v7];
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v4);
  }

  return v1;
}

id sub_10016CA28()
{
  objc_opt_self();
  v0 = sub_100003490();
  dispatch_assert_queue_V2(v0);

  sub_1001619D8();
  v1 = objc_alloc_init(NSMutableArray);
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = qword_100229428;
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

        v7 = *(*(&v11 + 1) + 8 * i);
        v8 = [qword_100229428 objectForKeyedSubscript:{v7, v11}];
        if (v8 && (*(v8 + 48) & 2) != 0 && *(v8 + 32))
        {
          v9 = v8;
          [v1 addObject:v7];
          v8 = v9;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v4);
  }

  return v1;
}

id sub_10016CBA0()
{
  objc_opt_self();
  v0 = sub_100003490();
  dispatch_assert_queue_V2(v0);

  sub_1001619D8();
  v1 = objc_alloc_init(NSMutableArray);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v2 = qword_100229428;
  v3 = [v2 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v15;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v15 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v14 + 1) + 8 * i);
        v8 = [qword_100229428 objectForKeyedSubscript:{v7, v14}];
        v9 = v8;
        if (v8)
        {
          v10 = *(v8 + 48);
          if ((v10 & 2) != 0)
          {
            if ((v10 & 0x20) != 0)
            {
              LOBYTE(v12) = 1;
              if ((v10 & 0x1000) != 0)
              {
LABEL_18:
                if ((((*(v8 + 48) & 0x2000) != 0) & v12) != 0)
                {
                  goto LABEL_6;
                }
              }
            }

            else
            {
              v11 = (v10 & 0x10) != 0 || *(v8 + 16) > 0x12u;
              v12 = (v10 >> 14) & 1 | v11;
              if ((v10 & 0x1000) != 0)
              {
                goto LABEL_18;
              }
            }

            if (!sub_100169428(v8))
            {
              goto LABEL_5;
            }

            if (qword_100229238 != -1)
            {
              dispatch_once(&qword_100229238, &stru_1001FC340);
            }

            if (byte_100229230 == 1)
            {
LABEL_5:
              [v1 addObject:v7];
            }
          }
        }

LABEL_6:
      }

      v4 = [v2 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v4);
  }

  return v1;
}

id sub_10016CD90()
{
  objc_opt_self();
  v0 = sub_100003490();
  dispatch_assert_queue_V2(v0);

  sub_1001619D8();
  v1 = objc_alloc_init(NSMutableArray);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v2 = qword_100229428;
  v3 = [v2 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v15;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v15 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v14 + 1) + 8 * i);
        v8 = [qword_100229428 objectForKeyedSubscript:{v7, v14}];
        if (v8)
        {
          v9 = *(v8 + 48);
          if ((v9 & 2) != 0)
          {
            if ((v9 & 0x20) != 0)
            {
              LOBYTE(v11) = 1;
              if ((v9 & 0x1000) == 0)
              {
                goto LABEL_5;
              }

LABEL_17:
              if ((((*(v8 + 48) & 0x2000) != 0) & v11) == 1)
              {
                v12 = v8;
                [v1 addObject:v7];
                v8 = v12;
              }

              goto LABEL_5;
            }

            v10 = (v9 & 0x10) != 0 || *(v8 + 16) > 0x12u;
            v11 = (v9 >> 14) & 1 | v10;
            if ((v9 & 0x1000) != 0)
            {
              goto LABEL_17;
            }
          }
        }

LABEL_5:
      }

      v4 = [v2 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v4);
  }

  return v1;
}

id sub_10016CF44()
{
  objc_opt_self();
  v0 = sub_100003490();
  dispatch_assert_queue_V2(v0);

  sub_1001619D8();
  v1 = objc_alloc_init(NSMutableArray);
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = qword_100229428;
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

        v7 = [qword_100229428 objectForKeyedSubscript:{*(*(&v10 + 1) + 8 * v6), v10}];
        if (v7 && (*(v7 + 48) & 2) != 0 && *(v7 + 32))
        {
          v8 = v7;
          [v1 addObject:?];
          v7 = v8;
        }

        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }

  return v1;
}

uint64_t sub_10016D0AC()
{
  objc_opt_self();
  v0 = sub_100003490();
  dispatch_assert_queue_V2(v0);

  sub_1001619D8();
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v1 = qword_100229428;
  v2 = [v1 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v2)
  {
    v3 = *v9;
LABEL_4:
    v4 = 0;
    while (1)
    {
      if (*v9 != v3)
      {
        objc_enumerationMutation(v1);
      }

      v5 = [qword_100229428 objectForKeyedSubscript:{*(*(&v8 + 1) + 8 * v4), v8}];
      if (v5 && (*(v5 + 48) & 2) != 0)
      {
        v6 = *(v5 + 32);

        if (v6)
        {
          v2 = 1;
          break;
        }
      }

      else
      {
      }

      if (v2 == ++v4)
      {
        v2 = [v1 countByEnumeratingWithState:&v8 objects:v12 count:16];
        if (!v2)
        {
          break;
        }

        goto LABEL_4;
      }
    }
  }

  return v2;
}

id sub_10016D1F8()
{
  objc_opt_self();
  v0 = sub_100003490();
  dispatch_assert_queue_V2(v0);

  sub_1001619D8();
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v1 = qword_100229428;
  v2 = [v1 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (!v2)
  {
    v4 = 0;
    goto LABEL_15;
  }

  v3 = v2;
  v4 = 0;
  v5 = *v14;
LABEL_4:
  v6 = 0;
  while (1)
  {
    if (*v14 != v5)
    {
      objc_enumerationMutation(v1);
    }

    v7 = *(*(&v13 + 1) + 8 * v6);
    v8 = [qword_100229428 objectForKeyedSubscript:{v7, v13}];
    if (!v8 || (v8[48] & 2) == 0)
    {
      goto LABEL_5;
    }

    if (v8[8] != 1)
    {
      break;
    }

    if (!v4)
    {
      v9 = v8;
      v4 = v7;
      v8 = v9;
    }

LABEL_5:

    if (v3 == ++v6)
    {
      v3 = [v1 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (!v3)
      {
        goto LABEL_15;
      }

      goto LABEL_4;
    }
  }

  v10 = v8;
  v11 = v7;

  v4 = v11;
LABEL_15:

  return v4;
}

char *sub_10016D388(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = objc_opt_self();
  if (v2)
  {
    v4 = sub_100163B2C(v3, v2, 0);
    v5 = sub_100164A44(v4);
  }

  else
  {
    v7 = sub_10015B480();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (!IsLevelEnabled)
    {
      v5 = 0;
      goto LABEL_4;
    }

    v4 = sub_10015B480();
    _NRLogWithArgs();
    v5 = 0;
  }

LABEL_4:
  return v5;
}

id sub_10016D440(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_self();
  if (v2)
  {
    v3 = v2[2];
  }

  else
  {
    v3 = 0;
  }

  v4 = sub_10015E4BC(v3);
  if (v4)
  {
    if (v2)
    {
      v5 = sub_10015E4BC(v2[4]);
      if (v5)
      {
LABEL_6:
        v6 = v5;
        v7 = [[NSMutableData alloc] initWithCapacity:64];
        [v7 appendData:v4];
        [v7 appendData:v6];
        goto LABEL_7;
      }
    }

    else
    {
      v5 = sub_10015E4BC(0);
      if (v5)
      {
        goto LABEL_6;
      }
    }

    v11 = sub_10015B480();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v13 = sub_10015B480();
      _NRLogWithArgs();
    }

    v6 = 0;
    v7 = 0;
    goto LABEL_7;
  }

  v9 = sub_10015B480();
  v10 = _NRLogIsLevelEnabled();

  if (!v10)
  {
    v7 = 0;
    goto LABEL_8;
  }

  v6 = sub_10015B480();
  _NRLogWithArgs();
  v7 = 0;
LABEL_7:

LABEL_8:
  return v7;
}

id sub_10016D5B8(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_self();
  if (v2)
  {
    v3 = v2[2];
  }

  else
  {
    v3 = 0;
  }

  v4 = sub_10015E4BC(v3);
  if (v4)
  {
    if (v2)
    {
      v5 = sub_10015E4BC(v2[4]);
      if (v5)
      {
LABEL_6:
        v6 = v5;
        v7 = [[NSMutableData alloc] initWithCapacity:70];
        NRTLVAddData();
        NRTLVAddData();
        goto LABEL_7;
      }
    }

    else
    {
      v5 = sub_10015E4BC(0);
      if (v5)
      {
        goto LABEL_6;
      }
    }

    v11 = sub_10015B480();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v13 = sub_10015B480();
      _NRLogWithArgs();
    }

    v6 = 0;
    v7 = 0;
    goto LABEL_7;
  }

  v9 = sub_10015B480();
  v10 = _NRLogIsLevelEnabled();

  if (!v10)
  {
    v7 = 0;
    goto LABEL_8;
  }

  v6 = sub_10015B480();
  _NRLogWithArgs();
  v7 = 0;
LABEL_7:

LABEL_8:
  return v7;
}

void sub_10016D738(uint64_t a1, void *a2, int a3, int a4, void *a5)
{
  v8 = a2;
  v9 = a5;
  v10 = objc_opt_self();
  v11 = sub_100003490();
  dispatch_assert_queue_V2(v11);

  if (!v8)
  {
    v41 = sub_10015B480();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (!IsLevelEnabled)
    {
      goto LABEL_52;
    }

    goto LABEL_56;
  }

  if (!v9)
  {
    v43 = sub_10015B480();
    v44 = _NRLogIsLevelEnabled();

    if (!v44)
    {
      goto LABEL_52;
    }

LABEL_56:
    v13 = sub_10015B480();
    _NRLogWithArgs();
    goto LABEL_51;
  }

  v12 = sub_100163B2C(v10, v8, 0);
  if (!v12)
  {
    v45 = sub_10015B480();
    v46 = _NRLogIsLevelEnabled();

    if (v46)
    {
      v47 = sub_10015B480();
      _NRLogWithArgs();
    }

    _os_log_pack_size();
    v48 = *__error();
    v49 = _os_log_pack_fill();
    *v49 = 136446210;
    *(v49 + 4) = "+[NRDLocalDevice queryPairingKeysForNRUUID:minDataProtectionClass:modernFormat:completionBlock:]";
    sub_10015B480();
    _NRLogAbortWithPack();
  }

  v13 = v12;
  sub_10016586C(v12);
  v14 = v13[9];
  v15 = v14;
  if (!v14)
  {
    goto LABEL_15;
  }

  v16 = v14[2];
  if (!v16)
  {
    goto LABEL_15;
  }

  v17 = v13[9];
  if (v17)
  {
    v18 = v17[4];
  }

  else
  {
    v18 = 0;
  }

  if (!v18)
  {
    goto LABEL_16;
  }

  v19 = v13[9];
  if (a4)
  {
    v20 = sub_10016D5B8(v10, v19);
    if (!v20)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v20 = sub_10016D440(v10, v19);
    if (!v20)
    {
LABEL_13:
      v21 = _NRCopyLogObjectForNRUUID();
      v22 = _NRLogIsLevelEnabled();

      if (!v22)
      {
LABEL_16:
        v20 = 0;
        goto LABEL_17;
      }

      v15 = _NRCopyLogObjectForNRUUID();
      _NRLogWithArgs();
LABEL_15:

      goto LABEL_16;
    }
  }

LABEL_17:
  v23 = v13[10];
  v24 = v23;
  if (!v23)
  {
    goto LABEL_28;
  }

  v25 = v23[2];
  if (!v25)
  {
    goto LABEL_28;
  }

  v26 = v13[10];
  if (v26)
  {
    v27 = v26[4];
  }

  else
  {
    v27 = 0;
  }

  if (!v27)
  {
    goto LABEL_29;
  }

  v28 = v13[10];
  if (a4)
  {
    v29 = sub_10016D5B8(v10, v28);
    if (!v29)
    {
      goto LABEL_26;
    }
  }

  else
  {
    v29 = sub_10016D440(v10, v28);
    if (!v29)
    {
LABEL_26:
      v30 = _NRCopyLogObjectForNRUUID();
      v31 = _NRLogIsLevelEnabled();

      if (!v31)
      {
LABEL_29:
        v29 = 0;
        goto LABEL_30;
      }

      v24 = _NRCopyLogObjectForNRUUID();
      _NRLogWithArgs();
LABEL_28:

      goto LABEL_29;
    }
  }

LABEL_30:
  v32 = v13[11];
  v33 = v32;
  if (!v32 || (v34 = v32[2]) == 0)
  {
LABEL_44:

    goto LABEL_45;
  }

  v35 = v13[11];
  if (v35)
  {
    v36 = v35[4];
  }

  else
  {
    v36 = 0;
  }

  if (!v36)
  {
LABEL_45:
    v38 = 0;
    if (a3 == 1)
    {
      goto LABEL_38;
    }

LABEL_46:
    if (a3 == 3 && !v29)
    {
      v50[0] = _NSConcreteStackBlock;
      v50[1] = 3221225472;
      v50[2] = sub_10016DF30;
      v50[3] = &unk_1001FCEE0;
      v51 = v13;
      v57 = v10;
      v52 = v8;
      v58 = 3;
      v59 = a4;
      v56 = v9;
      v53 = v20;
      v54 = 0;
      v55 = v38;
      sub_100165C8C(v51, v50);

      goto LABEL_50;
    }

LABEL_49:
    (*(v9 + 2))(v9, v20, v29, v38);
    goto LABEL_50;
  }

  v37 = v13[11];
  if (a4)
  {
    v38 = sub_10016D5B8(v10, v37);
    if (v38)
    {
      goto LABEL_37;
    }

    goto LABEL_42;
  }

  v38 = sub_10016D440(v10, v37);
  if (!v38)
  {
LABEL_42:
    v39 = _NRCopyLogObjectForNRUUID();
    v40 = _NRLogIsLevelEnabled();

    if (!v40)
    {
      goto LABEL_45;
    }

    v33 = _NRCopyLogObjectForNRUUID();
    _NRLogWithArgs();
    goto LABEL_44;
  }

LABEL_37:
  if (a3 != 1)
  {
    goto LABEL_46;
  }

LABEL_38:
  if (v29 && v38)
  {
    goto LABEL_49;
  }

  v60[0] = _NSConcreteStackBlock;
  v60[1] = 3221225472;
  v60[2] = sub_10016DDA4;
  v60[3] = &unk_1001FCEE0;
  v61 = v13;
  v67 = v10;
  v62 = v8;
  v68 = 1;
  v69 = a4;
  v66 = v9;
  v63 = v20;
  v64 = v29;
  v65 = v38;
  sub_100166050(v61, v60);

LABEL_50:
LABEL_51:

LABEL_52:
}

uint64_t sub_10016DDA4(uint64_t a1, int a2)
{
  if (!a2)
  {
    goto LABEL_14;
  }

  v3 = *(a1 + 32);
  if (!v3)
  {
    v5 = 0;
LABEL_13:

    goto LABEL_14;
  }

  v4 = *(v3 + 88);
  v5 = v4;
  if (!v4)
  {
    goto LABEL_13;
  }

  v6 = v4[2];
  if (!v6)
  {
    goto LABEL_13;
  }

  v7 = v6;
  v8 = *(a1 + 32);
  if (v8)
  {
    v9 = *(v8 + 88);
    if (v9)
    {
      v10 = v9[4];
      goto LABEL_8;
    }
  }

  else
  {
    v9 = 0;
  }

  v10 = 0;
LABEL_8:

  if (v10)
  {
    v11 = *(a1 + 40);
    v12 = *(a1 + 88);
    v13 = *(a1 + 89);
    v15 = *(a1 + 72);
    v14 = *(a1 + 80);

    return sub_10016D738(v14, v11, v12, v13, v15);
  }

LABEL_14:
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

    v24 = *(a1 + 40);
    _NRLogWithArgs();
  }

  sub_10013C2A8(@"NRDLocalDevice", @"PairingKeys", @"InvalidClassAKeys", 0, 0, v17, v18, v19, v24);
  v20 = *(a1 + 48);
  v21 = *(a1 + 56);
  v22 = *(a1 + 64);
  v23 = *(*(a1 + 72) + 16);

  return v23();
}

uint64_t sub_10016DF30(uint64_t a1, int a2)
{
  if (!a2)
  {
    goto LABEL_14;
  }

  v3 = *(a1 + 32);
  if (!v3)
  {
    v5 = 0;
LABEL_13:

    goto LABEL_14;
  }

  v4 = *(v3 + 80);
  v5 = v4;
  if (!v4)
  {
    goto LABEL_13;
  }

  v6 = v4[2];
  if (!v6)
  {
    goto LABEL_13;
  }

  v7 = v6;
  v8 = *(a1 + 32);
  if (v8)
  {
    v9 = *(v8 + 80);
    if (v9)
    {
      v10 = v9[4];
      goto LABEL_8;
    }
  }

  else
  {
    v9 = 0;
  }

  v10 = 0;
LABEL_8:

  if (v10)
  {
    v11 = *(a1 + 40);
    v12 = *(a1 + 88);
    v13 = *(a1 + 89);
    v15 = *(a1 + 72);
    v14 = *(a1 + 80);

    return sub_10016D738(v14, v11, v12, v13, v15);
  }

LABEL_14:
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

    v24 = *(a1 + 40);
    _NRLogWithArgs();
  }

  sub_10013C2A8(@"NRDLocalDevice", @"PairingKeys", @"InvalidClassCKeys", 0, 0, v17, v18, v19, v24);
  v20 = *(a1 + 48);
  v21 = *(a1 + 56);
  v22 = *(a1 + 64);
  v23 = *(*(a1 + 72) + 16);

  return v23();
}

void sub_10016E0BC(uint64_t a1, void *a2, int a3, void *a4)
{
  v6 = a2;
  v7 = a4;
  v8 = objc_opt_self();
  v9 = sub_100003490();
  dispatch_assert_queue_V2(v9);

  if (!v6)
  {
    v10 = sub_10015B480();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (!IsLevelEnabled)
    {
      goto LABEL_4;
    }

LABEL_8:
    v14 = sub_10015B480();
    _NRLogWithArgs();

    goto LABEL_4;
  }

  if (!v7)
  {
    v12 = sub_10015B480();
    v13 = _NRLogIsLevelEnabled();

    if (!v13)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10016E244;
  v15[3] = &unk_1001FCF30;
  v18 = v8;
  v16 = v6;
  v19 = a3;
  v17 = v7;
  sub_10016D738(v8, v16, a3, 0, v15);

LABEL_4:
}

void sub_10016E244(uint64_t a1, void *a2, void *a3, void *a4)
{
  v8 = a2;
  v9 = a3;
  v10 = a4;
  v11 = sub_100163B2C(*(a1 + 48), *(a1 + 32), 0);
  if (v11)
  {
    v12 = v11;
    v13 = *(v11 + 32);
    if (v13)
    {
      v4 = v13;
      objc_opt_self();
      if (qword_100229170 == -1)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }

    v25 = sub_10015B480();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    v8 = "+[NRDLocalDevice queryPairingFromIDSKeysForNRUUID:minDataProtectionClass:completionBlock:]_block_invoke";
    if (IsLevelEnabled)
    {
      v27 = sub_10015B480();
      _NRLogWithArgs();
    }
  }

  else
  {
    v22 = sub_10015B480();
    v23 = _NRLogIsLevelEnabled();

    if (v23)
    {
      v24 = sub_10015B480();
      _NRLogWithArgs();
    }
  }

  v12 = _os_log_pack_size();
  __chkstk_darwin();
  v28 = *__error();
  v29 = _os_log_pack_fill();
  *v29 = 136446210;
  *(v29 + 4) = "+[NRDLocalDevice queryPairingFromIDSKeysForNRUUID:minDataProtectionClass:completionBlock:]_block_invoke";
  sub_10015B480();
  _NRLogAbortWithPack();
LABEL_14:
  dispatch_once(&qword_100229170, &stru_1001FBC60);
LABEL_4:
  v14 = qword_100229168;
  v15 = *(a1 + 56);
  v30[0] = _NSConcreteStackBlock;
  v30[1] = 3221225472;
  v31 = sub_10016E680;
  v32 = &unk_1001FCF08;
  v34 = v15;
  v33 = *(a1 + 40);
  v16 = v4;
  v17 = v8;
  v18 = v9;
  v19 = v10;
  v20 = v30;
  if (v14)
  {
    dispatch_assert_queue_V2(v14[2]);
    if (v17)
    {
      v35[0] = _NSConcreteStackBlock;
      v35[1] = 3221225472;
      v35[2] = sub_100117C3C;
      v35[3] = &unk_1001FBD00;
      v35[4] = v14;
      v41 = v15;
      v36 = v17;
      v21 = v16;
      v37 = v21;
      v38 = v18;
      v39 = v19;
      v40 = v20;
      sub_1001177A8(v14, v21, v15, v35);
    }

    else
    {
      v31(v20, 0, 0, 0, 0, 0);
    }
  }
}

void sub_10016E680(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, void *a6)
{
  v26 = a4;
  v11 = a5;
  v12 = a6;
  v13 = sub_100003490();
  dispatch_assert_queue_V2(v13);

  if (!a2)
  {
    v15 = sub_10015B480();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (!IsLevelEnabled)
    {
      goto LABEL_9;
    }

    goto LABEL_21;
  }

  if (!a3)
  {
    v17 = sub_10015B480();
    v18 = _NRLogIsLevelEnabled();

    if (!v18)
    {
      goto LABEL_9;
    }

    goto LABEL_21;
  }

  if (!v26)
  {
    v19 = sub_10015B480();
    v20 = _NRLogIsLevelEnabled();

    if (!v20)
    {
      goto LABEL_9;
    }

    goto LABEL_21;
  }

  v14 = *(a1 + 40);
  if ((v14 | 2) != 3)
  {
LABEL_8:
    (*(*(a1 + 32) + 16))();
    goto LABEL_9;
  }

  if (!v11)
  {
    v21 = sub_10015B480();
    v22 = _NRLogIsLevelEnabled();

    if (!v22)
    {
      goto LABEL_9;
    }

    goto LABEL_21;
  }

  if (v12 || v14 != 1)
  {
    goto LABEL_8;
  }

  v23 = sub_10015B480();
  v24 = _NRLogIsLevelEnabled();

  if (v24)
  {
LABEL_21:
    v25 = sub_10015B480();
    _NRLogWithArgs();
  }

LABEL_9:
}

void sub_10016E894(uint64_t a1, void *a2, void *a3, void *a4)
{
  v31 = a2;
  v7 = a3;
  v8 = a4;
  v9 = objc_opt_self();
  v10 = sub_100003490();
  dispatch_assert_queue_V2(v10);

  if ([v31 length] == 48)
  {
    if (v7)
    {
      if (v8)
      {
        v11 = sub_100163B2C(v9, v7, 0);
        if (v11)
        {
          v10 = v11;
          v4 = sub_1001617A4([NRDDeviceIdentity alloc], v31);
          isa = v10[8].isa;
          if (!isa)
          {
            [v10 setRemoteIdentity:v4];
            v13 = objc_opt_self();
            if (sub_1001629FC(v13, 0))
            {
              v14 = v10[3].isa;
              v15 = [v10 description];
              sub_1000059A8(v14, 5006, v15, @"Identity");
            }

            else
            {
              [v10 setRemoteIdentity:0];
            }

LABEL_8:
            (*(v8 + 2))(v8, v10);

LABEL_9:
            goto LABEL_10;
          }
        }

        else
        {
          v23 = sub_10015B480();
          IsLevelEnabled = _NRLogIsLevelEnabled();

          if (IsLevelEnabled)
          {
            v25 = sub_10015B480();
            _NRLogWithArgs();
          }

          v7 = _os_log_pack_size();
          v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
          v26 = *__error();
          v27 = _os_log_pack_fill();
          *v27 = 136446210;
          *(v27 + 4) = "+[NRDLocalDevice ingestRemoteDeviceIdentity:nrUUID:deviceCompletionBlock:]";
          sub_10015B480();
          isa = _NRLogAbortWithPack();
        }

        if (([isa isEqual:{v4, v31}] & 1) == 0)
        {
          v28 = sub_10015B480();
          v29 = _NRLogIsLevelEnabled();

          if (v29)
          {
            v30 = sub_10015B480();
            _NRLogWithArgs();
          }
        }

        goto LABEL_8;
      }

      v21 = sub_10015B480();
      v22 = _NRLogIsLevelEnabled();

      if (v22)
      {
LABEL_18:
        v10 = sub_10015B480();
        _NRLogWithArgs();
        goto LABEL_9;
      }
    }

    else
    {
      v19 = sub_10015B480();
      v20 = _NRLogIsLevelEnabled();

      if (v20)
      {
        goto LABEL_18;
      }
    }
  }

  else
  {
    v17 = sub_10015B480();
    v18 = _NRLogIsLevelEnabled();

    if (v18)
    {
      goto LABEL_18;
    }
  }

LABEL_10:

  v16 = v31;
}

void sub_10016EBF4(uint64_t a1, void *a2, void *a3)
{
  v16 = a2;
  v4 = a3;
  objc_opt_self();
  if ([v16 length] == 64)
  {
    if (v4)
    {
      v5 = [v16 subdataWithRange:{0, 32}];
      v6 = sub_10015DF34([NRDLDKeychainItemSecKey alloc], v5);
      v7 = *(v4 + 1);
      *(v4 + 1) = v6;

      v8 = [v16 subdataWithRange:{32, 32}];
      v9 = *(v4 + 4);
      v10 = sub_100160954(v9, v8);
      v11 = *(v4 + 3);
      *(v4 + 3) = v10;

LABEL_4:
      goto LABEL_5;
    }

    v14 = sub_10015B480();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
LABEL_11:
      v5 = sub_10015B480();
      _NRLogWithArgs();
      goto LABEL_4;
    }
  }

  else
  {
    v12 = sub_10015B480();
    v13 = _NRLogIsLevelEnabled();

    if (v13)
    {
      goto LABEL_11;
    }
  }

LABEL_5:
}

void sub_10016ED68(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  objc_opt_self();
  if (!v4)
  {
    v12 = sub_10015B480();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (!IsLevelEnabled)
    {
      goto LABEL_9;
    }

LABEL_13:
    v16 = sub_10015B480();
    _NRLogWithArgs();

    goto LABEL_9;
  }

  if (!v5)
  {
    v14 = sub_10015B480();
    v15 = _NRLogIsLevelEnabled();

    if (!v15)
    {
      goto LABEL_9;
    }

    goto LABEL_13;
  }

  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = sub_10016F068;
  v31 = sub_10016F078;
  v32 = 0;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = sub_10016F068;
  v25 = sub_10016F078;
  v26 = 0;
  if (NRTLVParse())
  {
    if (v28[5])
    {
      if (v22[5])
      {
        v6 = [NRDLDKeychainItemSecKey alloc];
        v7 = sub_10015DF34(v6, v28[5]);
        v8 = *(v5 + 1);
        *(v5 + 1) = v7;

        v9 = *(v5 + 4);
        v10 = sub_100160954(v9, v22[5]);
        v11 = *(v5 + 3);
        *(v5 + 3) = v10;

LABEL_7:
        goto LABEL_8;
      }

      v19 = sub_10015B480();
      v20 = _NRLogIsLevelEnabled();

      if (!v20)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v17 = sub_10015B480();
      v18 = _NRLogIsLevelEnabled();

      if (!v18)
      {
        goto LABEL_8;
      }
    }

    v9 = sub_10015B480();
    _NRLogWithArgs();
    goto LABEL_7;
  }

LABEL_8:
  _Block_object_dispose(&v21, 8);

  _Block_object_dispose(&v27, 8);
LABEL_9:
}

void sub_10016F044(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 80), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10016F068(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_10016F080(uint64_t a1, unsigned __int8 *a2)
{
  v4 = *(a2 + 1);
  v5 = *a2;
  if (v5 == 2)
  {
    if (v4 == 0x2000)
    {
      v6 = [[NSData alloc] initWithBytes:a2 + 3 length:32];
      v7 = *(a1 + 40);
      goto LABEL_7;
    }

    v13 = sub_10015B480();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      goto LABEL_18;
    }
  }

  else
  {
    if (v5 != 1)
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

        v16 = *a2;
        _NRLogWithArgs();
      }

      return 1;
    }

    if (v4 == 0x2000)
    {
      v6 = [[NSData alloc] initWithBytes:a2 + 3 length:32];
      v7 = *(a1 + 32);
LABEL_7:
      v8 = *(v7 + 8);
      v9 = *(v8 + 40);
      *(v8 + 40) = v6;

      return 1;
    }

    v11 = sub_10015B480();
    v12 = _NRLogIsLevelEnabled();

    if (v12)
    {
LABEL_18:
      v15 = sub_10015B480();
      _NRLogWithArgs();

      return 0;
    }
  }

  return 0;
}

void sub_10016F27C(uint64_t a1, void *a2, int a3, void *a4, void *a5)
{
  v27 = a2;
  v8 = a4;
  v9 = a5;
  v10 = objc_opt_self();
  v11 = sub_100003490();
  dispatch_assert_queue_V2(v11);

  if (v8)
  {
    if (v9)
    {
      v12 = sub_100163B2C(v10, v8, 0);
      if (!v12)
      {
        v22 = sub_10015B480();
        IsLevelEnabled = _NRLogIsLevelEnabled();

        if (IsLevelEnabled)
        {
          v24 = sub_10015B480();
          _NRLogWithArgs();
        }

        _os_log_pack_size();
        v25 = *__error();
        v26 = _os_log_pack_fill();
        *v26 = 136446210;
        *(v26 + 4) = "+[NRDLocalDevice ingestRemoteClassDKeys:modernFormat:nrUUID:deviceCompletionBlock:]";
        sub_10015B480();
        _NRLogAbortWithPack();
      }

      v13 = v12;
      sub_1001656BC(v12);
      v14 = *(v13 + 72);
      if (a3)
      {
        sub_10016ED68(v10, v27, v14);
      }

      else
      {
        sub_10016EBF4(v10, v27, v14);
      }

      v15 = *(v13 + 24);
      v16 = [v13 description];
      sub_1000059A8(v15, 5006, v16, @"ClassD");

      v17 = objc_opt_self();
      sub_1001629FC(v17, 0);
      v9[2](v9, v13);
      goto LABEL_8;
    }

    v20 = sub_10015B480();
    v21 = _NRLogIsLevelEnabled();

    if (v21)
    {
LABEL_15:
      v13 = sub_10015B480();
      _NRLogWithArgs();
LABEL_8:
    }
  }

  else
  {
    v18 = sub_10015B480();
    v19 = _NRLogIsLevelEnabled();

    if (v19)
    {
      goto LABEL_15;
    }
  }
}

void sub_10016F524(uint64_t a1, void *a2, char a3, void *a4, void *a5)
{
  v8 = a2;
  v9 = a4;
  v10 = a5;
  v11 = objc_opt_self();
  v12 = sub_100003490();
  dispatch_assert_queue_V2(v12);

  if (v9)
  {
    if (v10)
    {
      v13 = sub_100163B2C(v11, v9, 0);
      if (!v13)
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
        *(v24 + 4) = "+[NRDLocalDevice ingestRemoteClassCKeys:modernFormat:nrUUID:deviceCompletionBlock:]";
        sub_10015B480();
        _NRLogAbortWithPack();
      }

      v14 = v13;
      v25[0] = _NSConcreteStackBlock;
      v25[1] = 3221225472;
      v25[2] = sub_10016F7BC;
      v25[3] = &unk_1001FCF80;
      v28 = v10;
      v29 = v11;
      v26 = v14;
      v30 = a3;
      v27 = v8;
      v15 = v14;
      sub_100165C8C(v15, v25);

      goto LABEL_5;
    }

    v18 = sub_10015B480();
    v19 = _NRLogIsLevelEnabled();

    if (!v19)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v16 = sub_10015B480();
    v17 = _NRLogIsLevelEnabled();

    if (!v17)
    {
      goto LABEL_6;
    }
  }

  v15 = sub_10015B480();
  _NRLogWithArgs();
LABEL_5:

LABEL_6:
}

uint64_t sub_10016F7BC(uint64_t a1, char a2)
{
  if (a2)
  {
    v3 = *(a1 + 64);
    v4 = *(a1 + 56);
    v6 = *(a1 + 32);
    v5 = *(a1 + 40);
    if (v3 == 1)
    {
      if (v6)
      {
        sub_10016ED68(v4, v5, *(v6 + 80));
      }

      else
      {
        sub_10016ED68(v4, v5, 0);
      }
    }

    else
    {
      if (v6)
      {
        v7 = *(v6 + 80);
      }

      else
      {
        v7 = 0;
      }

      sub_10016EBF4(v4, v5, v7);
    }

    sub_10000DF34(*(a1 + 32), 5006, @"ClassC");
    v8 = *(a1 + 56);
    v9 = objc_opt_self();
    sub_1001629FC(v9, 0);
  }

  else
  {
    v13 = sub_10015B480();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v15 = sub_10015B480();
      _NRLogWithArgs();
    }
  }

  v10 = *(a1 + 32);
  v11 = *(*(a1 + 48) + 16);

  return v11();
}

void sub_10016F8AC(uint64_t a1, void *a2, void *a3, void *a4)
{
  v6 = a2;
  v7 = a3;
  v8 = a4;
  v9 = objc_opt_self();
  v10 = sub_100003490();
  dispatch_assert_queue_V2(v10);

  if (v7)
  {
    if (v8)
    {
      v11 = sub_100163B2C(v9, v7, 0);
      if (!v11)
      {
        v18 = sub_10015B480();
        IsLevelEnabled = _NRLogIsLevelEnabled();

        if (IsLevelEnabled)
        {
          v20 = sub_10015B480();
          _NRLogWithArgs();
        }

        _os_log_pack_size();
        v21 = *__error();
        v22 = _os_log_pack_fill();
        *v22 = 136446210;
        *(v22 + 4) = "+[NRDLocalDevice ingestRemoteClassAKeys:modernFormat:nrUUID:deviceCompletionBlock:]";
        sub_10015B480();
        _NRLogAbortWithPack();
      }

      v12 = v11;
      v23[0] = _NSConcreteStackBlock;
      v23[1] = 3221225472;
      v23[2] = sub_10016FB40;
      v23[3] = &unk_1001FCF80;
      v26 = v8;
      v27 = v9;
      v24 = v12;
      v28 = 0;
      v25 = v6;
      v13 = v12;
      sub_100166050(v13, v23);

      goto LABEL_5;
    }

    v16 = sub_10015B480();
    v17 = _NRLogIsLevelEnabled();

    if (!v17)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v14 = sub_10015B480();
    v15 = _NRLogIsLevelEnabled();

    if (!v15)
    {
      goto LABEL_6;
    }
  }

  v13 = sub_10015B480();
  _NRLogWithArgs();
LABEL_5:

LABEL_6:
}

uint64_t sub_10016FB40(uint64_t a1, char a2)
{
  if (a2)
  {
    v3 = *(a1 + 64);
    v4 = *(a1 + 56);
    v6 = *(a1 + 32);
    v5 = *(a1 + 40);
    if (v3 == 1)
    {
      if (v6)
      {
        sub_10016ED68(v4, v5, *(v6 + 88));
      }

      else
      {
        sub_10016ED68(v4, v5, 0);
      }
    }

    else
    {
      if (v6)
      {
        v7 = *(v6 + 88);
      }

      else
      {
        v7 = 0;
      }

      sub_10016EBF4(v4, v5, v7);
    }

    sub_10000DF34(*(a1 + 32), 5006, @"ClassA");
    v8 = *(a1 + 56);
    v9 = objc_opt_self();
    sub_1001629FC(v9, 0);
  }

  else
  {
    v13 = sub_10015B480();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v15 = sub_10015B480();
      _NRLogWithArgs();
    }
  }

  v10 = *(a1 + 32);
  v11 = *(*(a1 + 48) + 16);

  return v11();
}

void sub_10016FC30(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = objc_opt_self();
  v11 = sub_100003490();
  dispatch_assert_queue_V2(v11);

  if (!v7)
  {
    v20 = sub_10015B480();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (!IsLevelEnabled)
    {
      goto LABEL_10;
    }

LABEL_16:
    v26 = sub_10015B480();
    _NRLogWithArgs();

    goto LABEL_10;
  }

  if (!v8)
  {
    v22 = sub_10015B480();
    v23 = _NRLogIsLevelEnabled();

    if (!v23)
    {
      goto LABEL_10;
    }

    goto LABEL_16;
  }

  if (!v9)
  {
    v24 = sub_10015B480();
    v25 = _NRLogIsLevelEnabled();

    if (!v25)
    {
      goto LABEL_10;
    }

    goto LABEL_16;
  }

  v12 = sub_100163B2C(v10, v8, 0);
  if (!v12)
  {
    v27 = sub_10015B480();
    v28 = _NRLogIsLevelEnabled();

    if (v28)
    {
      v29 = sub_10015B480();
      _NRLogWithArgs();
    }

    goto LABEL_22;
  }

  v13 = v12;
  v14 = *(v12 + 32);
  if (!v14)
  {
    v30 = sub_10015B480();
    v31 = _NRLogIsLevelEnabled();

    v9 = "+[NRDLocalDevice ingestRemoteClassDKeysEncryptedWithIDS:nrUUID:deviceCompletionBlock:]";
    if (v31)
    {
      v32 = sub_10015B480();
      _NRLogWithArgs();
    }

LABEL_22:
    v7 = _os_log_pack_size();
    v8 = v35 - ((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0);
    v33 = *__error();
    v34 = _os_log_pack_fill();
    *v34 = 136446210;
    *(v34 + 4) = "+[NRDLocalDevice ingestRemoteClassDKeysEncryptedWithIDS:nrUUID:deviceCompletionBlock:]";
    sub_10015B480();
    _NRLogAbortWithPack();
    goto LABEL_23;
  }

  v4 = v14;
  sub_1001656BC(v13);

  objc_opt_self();
  if (qword_100229170 != -1)
  {
LABEL_23:
    dispatch_once(&qword_100229170, &stru_1001FBC60);
  }

  v15 = qword_100229168;
  v35[0] = _NSConcreteStackBlock;
  v35[1] = 3221225472;
  v35[2] = sub_1001700FC;
  v35[3] = &unk_1001FCFA8;
  v38 = v10;
  v36 = v8;
  v37 = v9;
  v16 = v7;
  v17 = v4;
  v18 = v35;
  if (v15)
  {
    dispatch_assert_queue_V2(v15[2]);
    v39[0] = _NSConcreteStackBlock;
    v39[1] = 3221225472;
    v39[2] = sub_10011829C;
    v39[3] = &unk_1001FBD28;
    v39[4] = v15;
    v40 = v16;
    v19 = v17;
    v41 = v19;
    v42 = v18;
    sub_1001177A8(v15, v19, 4u, v39);
  }

LABEL_10:
}

void sub_100170110(uint64_t a1, void *a2, void *a3, void *a4)
{
  v6 = a2;
  v7 = a3;
  v8 = a4;
  v9 = objc_opt_self();
  v10 = sub_100003490();
  dispatch_assert_queue_V2(v10);

  if (!v6)
  {
    v17 = sub_10015B480();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (!IsLevelEnabled)
    {
      goto LABEL_7;
    }

LABEL_13:
    v23 = sub_10015B480();
    _NRLogWithArgs();

    goto LABEL_7;
  }

  if (!v7)
  {
    v19 = sub_10015B480();
    v20 = _NRLogIsLevelEnabled();

    if (!v20)
    {
      goto LABEL_7;
    }

    goto LABEL_13;
  }

  if (!v8)
  {
    v21 = sub_10015B480();
    v22 = _NRLogIsLevelEnabled();

    if (!v22)
    {
      goto LABEL_7;
    }

    goto LABEL_13;
  }

  v11 = sub_100163B2C(v9, v7, 0);
  if (!v11)
  {
    v24 = sub_10015B480();
    v25 = _NRLogIsLevelEnabled();

    if (v25)
    {
      v26 = sub_10015B480();
      _NRLogWithArgs();
    }

LABEL_19:
    _os_log_pack_size();
    v30 = *__error();
    v31 = _os_log_pack_fill();
    *v31 = 136446210;
    *(v31 + 4) = "+[NRDLocalDevice ingestRemoteClassCKeysEncryptedWithIDS:nrUUID:deviceCompletionBlock:]";
    sub_10015B480();
    _NRLogAbortWithPack();
  }

  v12 = v11;
  v13 = *(v11 + 32);
  if (!v13)
  {
    v27 = sub_10015B480();
    v28 = _NRLogIsLevelEnabled();

    if (v28)
    {
      v29 = sub_10015B480();
      _NRLogWithArgs();
    }

    goto LABEL_19;
  }

  v14 = v13;
  v32[0] = _NSConcreteStackBlock;
  v32[1] = 3221225472;
  v32[2] = sub_1001704D8;
  v32[3] = &unk_1001FCFD0;
  v37 = v8;
  v33 = v12;
  v34 = v6;
  v35 = v14;
  v38 = v9;
  v36 = v7;
  v15 = v14;
  v16 = v12;
  sub_100165C8C(v16, v32);

LABEL_7:
}

void sub_1001704D8(uint64_t a1, char a2)
{
  if (a2)
  {
    objc_opt_self();
    if (qword_100229170 != -1)
    {
      dispatch_once(&qword_100229170, &stru_1001FBC60);
    }

    v3 = qword_100229168;
    v4 = *(a1 + 40);
    v5 = *(a1 + 48);
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_1001707B0;
    v20[3] = &unk_1001FCFA8;
    v23 = *(a1 + 72);
    v21 = *(a1 + 56);
    v22 = *(a1 + 64);
    v6 = v4;
    v7 = v5;
    v8 = v20;
    if (!v3)
    {
      goto LABEL_8;
    }

    dispatch_assert_queue_V2(v3[2]);
    if (v6)
    {
      if (v7)
      {
        v24[0] = _NSConcreteStackBlock;
        v24[1] = 3221225472;
        v24[2] = sub_1001184A4;
        v24[3] = &unk_1001FBD28;
        v24[4] = v3;
        v25 = v6;
        v9 = v7;
        v26 = v9;
        v27 = v8;
        sub_1001177A8(v3, v9, 3u, v24);

LABEL_8:
        return;
      }

      v17 = sub_10011573C();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      if (!IsLevelEnabled)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v15 = sub_10011573C();
      v16 = _NRLogIsLevelEnabled();

      if (!v16)
      {
        goto LABEL_8;
      }
    }

    v19 = sub_10011573C();
    _NRLogWithArgs();

    goto LABEL_8;
  }

  v10 = sub_10015B480();
  v11 = _NRLogIsLevelEnabled();

  if (v11)
  {
    v12 = sub_10015B480();
    _NRLogWithArgs();
  }

  v13 = *(a1 + 32);
  v14 = *(*(a1 + 64) + 16);

  v14();
}

void sub_1001707C4(uint64_t a1, void *a2, void *a3, void *a4)
{
  v6 = a2;
  v7 = a3;
  v8 = a4;
  v9 = objc_opt_self();
  v10 = sub_100003490();
  dispatch_assert_queue_V2(v10);

  if (!v6)
  {
    v17 = sub_10015B480();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (!IsLevelEnabled)
    {
      goto LABEL_7;
    }

LABEL_13:
    v23 = sub_10015B480();
    _NRLogWithArgs();

    goto LABEL_7;
  }

  if (!v7)
  {
    v19 = sub_10015B480();
    v20 = _NRLogIsLevelEnabled();

    if (!v20)
    {
      goto LABEL_7;
    }

    goto LABEL_13;
  }

  if (!v8)
  {
    v21 = sub_10015B480();
    v22 = _NRLogIsLevelEnabled();

    if (!v22)
    {
      goto LABEL_7;
    }

    goto LABEL_13;
  }

  v11 = sub_100163B2C(v9, v7, 0);
  if (!v11)
  {
    v24 = sub_10015B480();
    v25 = _NRLogIsLevelEnabled();

    if (v25)
    {
      v26 = sub_10015B480();
      _NRLogWithArgs();
    }

LABEL_19:
    _os_log_pack_size();
    v30 = *__error();
    v31 = _os_log_pack_fill();
    *v31 = 136446210;
    *(v31 + 4) = "+[NRDLocalDevice ingestRemoteClassAKeysEncryptedWithIDS:nrUUID:deviceCompletionBlock:]";
    sub_10015B480();
    _NRLogAbortWithPack();
  }

  v12 = v11;
  v13 = *(v11 + 32);
  if (!v13)
  {
    v27 = sub_10015B480();
    v28 = _NRLogIsLevelEnabled();

    if (v28)
    {
      v29 = sub_10015B480();
      _NRLogWithArgs();
    }

    goto LABEL_19;
  }

  v14 = v13;
  v32[0] = _NSConcreteStackBlock;
  v32[1] = 3221225472;
  v32[2] = sub_100170B8C;
  v32[3] = &unk_1001FCFD0;
  v37 = v8;
  v33 = v12;
  v34 = v6;
  v35 = v14;
  v38 = v9;
  v36 = v7;
  v15 = v14;
  v16 = v12;
  sub_100166050(v16, v32);

LABEL_7:
}

void sub_100170B8C(uint64_t a1, char a2)
{
  if (a2)
  {
    objc_opt_self();
    if (qword_100229170 != -1)
    {
      dispatch_once(&qword_100229170, &stru_1001FBC60);
    }

    v3 = qword_100229168;
    v4 = *(a1 + 40);
    v5 = *(a1 + 48);
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_100170E64;
    v20[3] = &unk_1001FCFA8;
    v23 = *(a1 + 72);
    v21 = *(a1 + 56);
    v22 = *(a1 + 64);
    v6 = v4;
    v7 = v5;
    v8 = v20;
    if (!v3)
    {
      goto LABEL_8;
    }

    dispatch_assert_queue_V2(v3[2]);
    if (v6)
    {
      if (v7)
      {
        v24[0] = _NSConcreteStackBlock;
        v24[1] = 3221225472;
        v24[2] = sub_1001186AC;
        v24[3] = &unk_1001FBD28;
        v24[4] = v3;
        v25 = v6;
        v9 = v7;
        v26 = v9;
        v27 = v8;
        sub_1001177A8(v3, v9, 1u, v24);

LABEL_8:
        return;
      }

      v17 = sub_10011573C();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      if (!IsLevelEnabled)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v15 = sub_10011573C();
      v16 = _NRLogIsLevelEnabled();

      if (!v16)
      {
        goto LABEL_8;
      }
    }

    v19 = sub_10011573C();
    _NRLogWithArgs();

    goto LABEL_8;
  }

  v10 = sub_10015B480();
  v11 = _NRLogIsLevelEnabled();

  if (v11)
  {
    v12 = sub_10015B480();
    _NRLogWithArgs();
  }

  v13 = *(a1 + 32);
  v14 = *(*(a1 + 64) + 16);

  v14();
}

void sub_100170E74(uint64_t a1, void *a2, void *a3)
{
  v23 = a2;
  v4 = a3;
  v5 = objc_opt_self();
  v6 = sub_100003490();
  dispatch_assert_queue_V2(v6);

  if (v23)
  {
    if (v4)
    {
      v7 = sub_100163B2C(v5, v23, 0);
      if (!v7)
      {
        v18 = sub_10015B480();
        IsLevelEnabled = _NRLogIsLevelEnabled();

        if (IsLevelEnabled)
        {
          v20 = sub_10015B480();
          _NRLogWithArgs();
        }

        _os_log_pack_size();
        v21 = *__error();
        v22 = _os_log_pack_fill();
        *v22 = 136446210;
        *(v22 + 4) = "+[NRDLocalDevice queryIDSDeviceIDForNRUUID:completionBlock:]";
        sub_10015B480();
        _NRLogAbortWithPack();
      }

      v8 = v7;
      if (*(v7 + 40))
      {
        v4[2](v4, v7);
      }

      else
      {
        v9 = qword_100229478;
        if (!qword_100229478)
        {
          v10 = objc_alloc_init(NSMutableDictionary);
          v11 = qword_100229478;
          qword_100229478 = v10;

          v9 = qword_100229478;
        }

        v12 = [v9 objectForKeyedSubscript:{v23, v23}];
        if (!v12)
        {
          v12 = objc_alloc_init(NSMutableArray);
        }

        v13 = objc_retainBlock(v4);
        [v12 addObject:v13];

        [qword_100229478 setObject:v12 forKeyedSubscript:v23];
      }

      goto LABEL_11;
    }

    v16 = sub_10015B480();
    v17 = _NRLogIsLevelEnabled();

    if (v17)
    {
LABEL_18:
      v8 = sub_10015B480();
      _NRLogWithArgs();
LABEL_11:
    }
  }

  else
  {
    v14 = sub_10015B480();
    v15 = _NRLogIsLevelEnabled();

    if (v15)
    {
      goto LABEL_18;
    }
  }
}

void sub_100171120(uint64_t a1, void *a2)
{
  v13 = a2;
  v2 = objc_opt_self();
  v3 = sub_100003490();
  dispatch_assert_queue_V2(v3);

  if (v13)
  {
    v4 = sub_100163B2C(v2, v13, 0);
    if (!v4)
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
      *(v12 + 4) = "+[NRDLocalDevice updateIsEphemeral:nrUUID:]";
      sub_10015B480();
      _NRLogAbortWithPack();
    }

    v5 = v4;
    if (v4[8] == 1)
    {
      v4[8] = 0;
      sub_10015D69C(v4);
      v5[13] = 1;
      sub_1001629FC(v2, 1);
    }

    goto LABEL_5;
  }

  v6 = sub_10015B480();
  v7 = _NRLogIsLevelEnabled();

  if (v7)
  {
    v5 = sub_10015B480();
    _NRLogWithArgs();
LABEL_5:
  }
}

void sub_100171304(uint64_t a1, uint64_t a2, void *a3)
{
  v17 = a3;
  v4 = objc_opt_self();
  v5 = sub_100003490();
  dispatch_assert_queue_V2(v5);

  if (v17)
  {
    v6 = sub_100163A30(v4, v17);
    if (v6)
    {
      if (v6[8] == a2)
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
      *(v14 + 4) = "+[NRDLocalDevice updateLastSeenInnerLinkVersionHBO:nrUUID:]";
      sub_10015B480();
      v6 = _NRLogAbortWithPack();
    }

    v15 = v6;
    [v6 setLastSeenInnerLinkVersionHBO:{a2, v17}];
    v16 = objc_opt_self();
    sub_1001629FC(v16, 0);
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

void sub_1001714EC(uint64_t a1, uint64_t a2, void *a3)
{
  v17 = a3;
  v4 = objc_opt_self();
  v5 = sub_100003490();
  dispatch_assert_queue_V2(v5);

  if (v17)
  {
    v6 = sub_100163A30(v4, v17);
    if (v6)
    {
      if (v6[9] == a2)
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
      *(v14 + 4) = "+[NRDLocalDevice updateDeviceEndpointType:nrUUID:]";
      sub_10015B480();
      v6 = _NRLogAbortWithPack();
    }

    v15 = v6;
    [v6 setDeviceType:{a2, v17}];
    v16 = objc_opt_self();
    sub_1001629FC(v16, 0);
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

void sub_1001716D4(uint64_t a1, void *a2, void *a3)
{
  v19 = a2;
  v4 = a3;
  v5 = objc_opt_self();
  v6 = sub_100003490();
  dispatch_assert_queue_V2(v6);

  if (v4)
  {
    v7 = sub_100163A30(v5, v4);
    if (v7)
    {
      v8 = v7;
      if ([v19 isEqual:*(v7 + 128)])
      {
LABEL_4:

        goto LABEL_5;
      }
    }

    else
    {
      v12 = sub_10015B480();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      if (IsLevelEnabled)
      {
        v14 = sub_10015B480();
        _NRLogWithArgs();
      }

      v4 = _os_log_pack_size();
      v8 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
      v15 = *__error();
      v16 = _os_log_pack_fill();
      *v16 = 136446210;
      *(v16 + 4) = "+[NRDLocalDevice updateLastSeenName:nrUUID:]";
      sub_10015B480();
      _NRLogAbortWithPack();
    }

    v17 = [v19 copy];
    [v8 setLastSeenName:v17];

    v18 = objc_opt_self();
    sub_1001629FC(v18, 0);
    goto LABEL_4;
  }

  v10 = sub_10015B480();
  v11 = _NRLogIsLevelEnabled();

  if (v11)
  {
    v8 = sub_10015B480();
    _NRLogWithArgs();
    goto LABEL_4;
  }

LABEL_5:

  v9 = v19;
}

void sub_1001718D8(uint64_t a1, void *a2, void *a3)
{
  v19 = a2;
  v4 = a3;
  v5 = objc_opt_self();
  v6 = sub_100003490();
  dispatch_assert_queue_V2(v6);

  if (v4)
  {
    v7 = sub_100163A30(v5, v4);
    if (v7)
    {
      v8 = v7;
      if ([v19 isEqual:*(v7 + 136)])
      {
LABEL_4:

        goto LABEL_5;
      }
    }

    else
    {
      v12 = sub_10015B480();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      if (IsLevelEnabled)
      {
        v14 = sub_10015B480();
        _NRLogWithArgs();
      }

      v4 = _os_log_pack_size();
      v8 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
      v15 = *__error();
      v16 = _os_log_pack_fill();
      *v16 = 136446210;
      *(v16 + 4) = "+[NRDLocalDevice updateLastSeenBuildVersion:nrUUID:]";
      sub_10015B480();
      _NRLogAbortWithPack();
    }

    v17 = [v19 copy];
    [v8 setLastSeenBuildVersion:v17];

    v18 = objc_opt_self();
    sub_1001629FC(v18, 0);
    goto LABEL_4;
  }

  v10 = sub_10015B480();
  v11 = _NRLogIsLevelEnabled();

  if (v11)
  {
    v8 = sub_10015B480();
    _NRLogWithArgs();
    goto LABEL_4;
  }

LABEL_5:

  v9 = v19;
}

void sub_100171ADC(uint64_t a1, int a2, void *a3)
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
      v7 = v6[6];
      if (((v7 >> 8) & 1) == a2)
      {
LABEL_4:

        goto LABEL_5;
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

      a2 = _os_log_pack_size();
      v14 = *__error();
      v15 = _os_log_pack_fill();
      *v15 = 136446210;
      *(v15 + 4) = "+[NRDLocalDevice updateLastSeenAlwaysOnWiFiSupported:nrUUID:]";
      sub_10015B480();
      v6 = _NRLogAbortWithPack();
    }

    v16 = v7 & 0xFFFFFFFFFFFFFEFFLL;
    v17 = 256;
    if (!a2)
    {
      v17 = 0;
    }

    v18 = v6;
    [v6 setDatabaseFlags:{v16 | v17, v20}];
    v19 = objc_opt_self();
    sub_1001629FC(v19, 0);
    v6 = v18;
    goto LABEL_4;
  }

  v8 = sub_10015B480();
  v9 = _NRLogIsLevelEnabled();

  if (v9)
  {
    v10 = sub_10015B480();
    _NRLogWithArgs();
    v6 = v10;
    goto LABEL_4;
  }

LABEL_5:
}

void sub_100171CD8(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v4 = a3;
  objc_opt_self();
  if (v8)
  {
    sub_100169848(NRDLocalDevice, v8, v4, 1);
  }

  else
  {
    v5 = sub_10015B480();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v7 = sub_10015B480();
      _NRLogWithArgs();
    }
  }
}

void sub_100171DA0(uint64_t a1, void *a2)
{
  v16 = a2;
  v2 = objc_opt_self();
  v3 = sub_100003490();
  dispatch_assert_queue_V2(v3);

  if (v16)
  {
    v4 = sub_100163A30(v2, v16);
    if (v4)
    {
      v5 = v4[6];
      if ((v5 & 0x200) != 0)
      {
LABEL_4:

        goto LABEL_5;
      }
    }

    else
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
      *(v13 + 4) = "+[NRDLocalDevice updateHasAuthenticatedWithIdentityForNRUUID:]";
      sub_10015B480();
      v4 = _NRLogAbortWithPack();
    }

    v14 = v4;
    [v4 setDatabaseFlags:{v5 | 0x200, v16}];
    v15 = objc_opt_self();
    sub_1001629FC(v15, 0);
    v4 = v14;
    goto LABEL_4;
  }

  v6 = sub_10015B480();
  v7 = _NRLogIsLevelEnabled();

  if (v7)
  {
    v8 = sub_10015B480();
    _NRLogWithArgs();
    v4 = v8;
    goto LABEL_4;
  }

LABEL_5:
}

void sub_100171F80(uint64_t a1, char *a2, void *a3)
{
  v5 = a3;
  v4 = objc_opt_self();
  sub_100169658(v4, a2, v5, 1);
}

void sub_100171FE0(uint64_t a1, void *a2)
{
  v14 = a2;
  v2 = objc_opt_self();
  v3 = sub_100003490();
  dispatch_assert_queue_V2(v3);

  if (v14)
  {
    v4 = sub_100163A30(v2, v14);
    if (v4)
    {
      v5 = v4;
      if (*(v4 + 11) != 1)
      {
LABEL_6:

        goto LABEL_7;
      }

      *(v4 + 11) = 0;
      objc_opt_self();
      if (qword_1002290C0 == -1)
      {
LABEL_5:
        v6 = qword_1002290B8;
        sub_1000BC670(v6);

        goto LABEL_6;
      }
    }

    else
    {
      v9 = sub_10015B480();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      if (IsLevelEnabled)
      {
        v11 = sub_10015B480();
        _NRLogWithArgs();
      }

      v5 = _os_log_pack_size();
      __chkstk_darwin();
      v12 = *__error();
      v13 = _os_log_pack_fill();
      *v13 = 136446210;
      *(v13 + 4) = "+[NRDLocalDevice resumeNonNearbyLinksForNRUUID:]";
      sub_10015B480();
      _NRLogAbortWithPack();
    }

    dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
    goto LABEL_5;
  }

  v7 = sub_10015B480();
  v8 = _NRLogIsLevelEnabled();

  if (v8)
  {
    v5 = sub_10015B480();
    _NRLogWithArgs();
    goto LABEL_6;
  }

LABEL_7:
}

void sub_100172204(uint64_t a1, uint64_t a2, void *a3)
{
  v16 = a3;
  v4 = objc_opt_self();
  v5 = sub_100003490();
  dispatch_assert_queue_V2(v5);

  v6 = sub_100163A30(v4, v16);
  if (!v6)
  {
    v11 = sub_10015B480();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v13 = sub_10015B480();
      _NRLogWithArgs();
    }

    _os_log_pack_size();
    v14 = *__error();
    v15 = _os_log_pack_fill();
    *v15 = 136446210;
    *(v15 + 4) = "+[NRDLocalDevice updateUsesTLS:nrUUID:]";
    sub_10015B480();
    _NRLogAbortWithPack();
  }

  v7 = v6;
  if ([*(v6 + 144) usesTLS] != a2)
  {
    v8 = _NRCopyLogObjectForNRUUID();
    v9 = _NRLogIsLevelEnabled();

    if (v9)
    {
      v10 = _NRCopyLogObjectForNRUUID();
      [v7[18] usesTLS];
      _NRLogWithArgs();
    }

    [v7[18] setUsesTLS:{a2, v16}];
    sub_100169594(v7);
    sub_1001629FC(v4, 1);
  }
}

void sub_100172424(uint64_t a1, void *a2)
{
  v16 = a2;
  v2 = objc_opt_self();
  v3 = sub_100003490();
  dispatch_assert_queue_V2(v3);

  if (v16)
  {
    v4 = sub_100163B2C(v2, v16, 0);
    if (v4)
    {
      v5 = v4[6];
      if ((v5 & 0x800) != 0)
      {
LABEL_4:

        goto LABEL_5;
      }
    }

    else
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
      *(v13 + 4) = "+[NRDLocalDevice updateHasSavedPairingInfoInKeychain:nrUUID:]";
      sub_10015B480();
      v4 = _NRLogAbortWithPack();
    }

    v14 = v4;
    [v4 setDatabaseFlags:{v5 | 0x800, v16}];
    v15 = objc_opt_self();
    sub_1001629FC(v15, 0);
    v4 = v14;
    goto LABEL_4;
  }

  v6 = sub_10015B480();
  v7 = _NRLogIsLevelEnabled();

  if (v7)
  {
    v8 = sub_10015B480();
    _NRLogWithArgs();
    v4 = v8;
    goto LABEL_4;
  }

LABEL_5:
}

double sub_100172608(void *a1, _OWORD *a2)
{
  v4 = sub_100003490();
  dispatch_assert_queue_V2(v4);

  if (!a2)
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
    *(v13 + 4) = "[NRDLocalDevice writeLocalClassCInnerAddressBytes:]";
    sub_10015B480();
    _NRLogAbortWithPack();
  }

  v14 = 0;
  v15 = 0uLL;
  v16 = 0;
  v5 = sub_100003490();
  dispatch_assert_queue_V2(v5);

  v6 = sub_100003490();
  dispatch_assert_queue_V2(v6);

  v7 = sub_1001679E0(a1, @"0");
  sub_1001681A4(NRDLocalDevice, &v14, v7);

  result = *&v15;
  *a2 = v15;
  return result;
}

double sub_1001727AC(void *a1, _OWORD *a2)
{
  v4 = sub_100003490();
  dispatch_assert_queue_V2(v4);

  if (!a2)
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
    *(v13 + 4) = "[NRDLocalDevice writeRemoteClassCInnerAddressBytes:]";
    sub_10015B480();
    _NRLogAbortWithPack();
  }

  v14 = 0;
  v15 = 0uLL;
  v16 = 0;
  v5 = sub_100003490();
  dispatch_assert_queue_V2(v5);

  v6 = sub_100003490();
  dispatch_assert_queue_V2(v6);

  v7 = sub_100167B9C(a1, @"0");
  sub_1001681A4(NRDLocalDevice, &v14, v7);

  result = *&v15;
  *a2 = v15;
  return result;
}

void sub_100172950(uint64_t a1, void *a2)
{
  v11 = a2;
  v2 = objc_opt_self();
  v3 = sub_100163B2C(v2, v11, 0);
  if (!v3)
  {
    v6 = sub_10015B480();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v8 = sub_10015B480();
      _NRLogWithArgs();
    }

    _os_log_pack_size();
    v9 = *__error();
    v10 = _os_log_pack_fill();
    *v10 = 136446210;
    *(v10 + 4) = "+[NRDLocalDevice updateSelfManagedBluetoothPairing:nrUUID:]";
    sub_10015B480();
    _NRLogAbortWithPack();
  }

  v4 = v3;
  [v3 setDatabaseFlags:v3[6] | 0x80];
  v5 = objc_opt_self();
  sub_1001629FC(v5, 0);
}

void sub_100172AC4(uint64_t a1, void *a2, void *a3)
{
  v15 = a2;
  v4 = a3;
  v5 = objc_opt_self();
  v6 = sub_100163B2C(v5, v4, 0);
  if (!v6)
  {
    v10 = sub_10015B480();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v12 = sub_10015B480();
      _NRLogWithArgs();
    }

    _os_log_pack_size();
    v13 = *__error();
    v14 = _os_log_pack_fill();
    *v14 = 136446210;
    *(v14 + 4) = "+[NRDLocalDevice updateBluetoothOutOfBandKey:nrUUID:]";
    sub_10015B480();
    _NRLogAbortWithPack();
  }

  v7 = v6;
  v8 = [v15 copy];
  v9 = v7[13];
  v7[13] = v8;
}

BOOL sub_100172C3C(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_self();
  v3 = sub_100003490();
  dispatch_assert_queue_V2(v3);

  v4 = v2 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [v2 addressFamily] == 30 && *(objc_msgSend(v2, "address") + 1) == 0x73756E6D726574FDLL;
  return v4;
}

void *sub_100172CE0(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  objc_opt_self();
  v6 = sub_100003490();
  dispatch_assert_queue_V2(v6);

  if (qword_100229448)
  {
    v7 = [qword_100229448 objectForKeyedSubscript:v4];

    if (v7)
    {
      v8 = [qword_100229448 objectForKeyedSubscript:v4];
      v7 = [v8 objectForKeyedSubscript:v5];
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

id *sub_100172D94(id *a1)
{
  v1 = a1;
  if (a1)
  {
    v2 = a1[18];
    v3 = [v2 allowedLinkTypes];
    if ([v3 isEqual:&off_10020A120])
    {
      v4 = [v1[18] allowedLinkSubtypes];
      v1 = [v4 isEqual:&off_10020A138];
    }

    else
    {
      v1 = 0;
    }
  }

  return v1;
}

uint64_t sub_100172E20(void *a1)
{
  v2 = sub_100003490();
  dispatch_assert_queue_V2(v2);

  v3 = sub_100003490();
  dispatch_assert_queue_V2(v3);

  v4 = sub_1001672A0(a1, @"0");
  v5 = [v4 hostname];

  return v5;
}

uint64_t sub_100172E88(void *a1)
{
  v2 = sub_100003490();
  dispatch_assert_queue_V2(v2);

  v3 = sub_100003490();
  dispatch_assert_queue_V2(v3);

  v4 = sub_1001679E0(a1, @"0");
  v5 = [v4 hostname];

  return v5;
}

uint64_t sub_100172EF0(void *a1)
{
  v2 = sub_100003490();
  dispatch_assert_queue_V2(v2);

  v3 = sub_100003490();
  dispatch_assert_queue_V2(v3);

  v4 = sub_1001677D0(a1, @"0");
  v5 = [v4 hostname];

  return v5;
}

uint64_t sub_100172F58(void *a1)
{
  v2 = sub_100003490();
  dispatch_assert_queue_V2(v2);

  v3 = sub_100003490();
  dispatch_assert_queue_V2(v3);

  v4 = sub_100167B9C(a1, @"0");
  v5 = [v4 hostname];

  return v5;
}

void *sub_100172FC0(void *a1)
{
  v1 = a1;
  if (a1)
  {
    v2 = sub_100003490();
    dispatch_assert_queue_V2(v2);

    v3 = sub_100003490();
    dispatch_assert_queue_V2(v3);

    v4 = sub_100003490();
    dispatch_assert_queue_V2(v4);

    v5 = sub_1001677D0(v1, @"0");
    v6 = [v5 hostname];

    v12[0] = v6;
    v7 = sub_100003490();
    dispatch_assert_queue_V2(v7);

    v8 = sub_100003490();
    dispatch_assert_queue_V2(v8);

    v9 = sub_100167B9C(v1, @"0");
    v10 = [v9 hostname];

    v12[1] = v10;
    v1 = [NSArray arrayWithObjects:v12 count:2];
  }

  return v1;
}

uint64_t sub_1001730E8(void *a1)
{
  v2 = sub_100003490();
  dispatch_assert_queue_V2(v2);

  v7 = 0uLL;
  v9 = 0;
  v8 = 0;
  v3 = sub_100003490();
  dispatch_assert_queue_V2(v3);

  v4 = sub_100003490();
  dispatch_assert_queue_V2(v4);

  v5 = sub_1001672A0(a1, @"0");
  sub_1001681A4(NRDLocalDevice, &v7, v5);

  WORD4(v7) = -32514;
  *(&v7 + 10) = 0;
  HIWORD(v7) = 0;
  [NWAddressEndpoint endpointWithAddress:&v7];
  return objc_claimAutoreleasedReturnValue();
}

uint64_t sub_1001731B0(void *a1)
{
  v2 = sub_100003490();
  dispatch_assert_queue_V2(v2);

  v3 = sub_1001730E8(a1);
  v4 = [v3 hostname];

  return v4;
}

void *sub_100173200(void *a1)
{
  v1 = a1;
  if (a1)
  {
    v2 = sub_100003490();
    dispatch_assert_queue_V2(v2);

    v3 = sub_100003490();
    dispatch_assert_queue_V2(v3);

    v4 = sub_1001672A0(v1, @"0");
    v10[0] = v4;
    v5 = sub_100003490();
    dispatch_assert_queue_V2(v5);

    v6 = sub_1001679E0(v1, @"0");
    v10[1] = v6;
    v7 = sub_1001730E8(v1);
    v10[2] = v7;
    v8 = [NWAddressEndpoint endpointWithHostname:@"192.0.0.6" port:@"0"];
    v10[3] = v8;
    v1 = [NSArray arrayWithObjects:v10 count:4];
  }

  return v1;
}

uint64_t sub_10017332C(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3;
  v7 = objc_opt_self();
  v8 = sub_100003490();
  dispatch_assert_queue_V2(v8);

  if (!a2)
  {
    v16 = sub_10015B480();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v18 = sub_10015B480();
      _NRLogWithArgs();
    }

    goto LABEL_20;
  }

  if (!v6)
  {
    v19 = sub_10015B480();
    v20 = _NRLogIsLevelEnabled();

    if (v20)
    {
      v21 = sub_10015B480();
      _NRLogWithArgs();
    }

    goto LABEL_20;
  }

  v9 = sub_100163B2C(v7, v6, 0);
  if (!v9)
  {
    v22 = sub_10015B480();
    v23 = _NRLogIsLevelEnabled();

    if (v23)
    {
      v24 = sub_10015B480();
      _NRLogWithArgs();
    }

LABEL_20:
    v6 = _os_log_pack_size();
    __chkstk_darwin();
    v25 = *__error();
    v26 = _os_log_pack_fill();
    *v26 = 136446210;
    *(v26 + 4) = "+[NRDLocalDevice updateLocalClassDInnerAddressBytes:nrUUID:]";
    sub_10015B480();
    _NRLogAbortWithPack();
LABEL_21:
    dispatch_once(&qword_100229488, &stru_1001FD018);
    goto LABEL_6;
  }

  v8 = v9;
  v3 = [[NSData alloc] initWithBytes:a2 length:16];
  v10 = [v8 localInnerIPv6AddressBytesClassD];
  LODWORD(a2) = [v3 isEqual:v10];

  if (a2)
  {
    goto LABEL_11;
  }

  v4 = &qword_100229000;
  if (qword_100229488 != -1)
  {
    goto LABEL_21;
  }

LABEL_6:
  if (_NRLogIsLevelEnabled())
  {
    if (v4[145] != -1)
    {
      dispatch_once(&qword_100229488, &stru_1001FD018);
    }

    v11 = qword_100229480;
    v12 = [v8 localInnerIPv6AddressBytesClassD];
    IPv6AddrStringFromData = createIPv6AddrStringFromData();
    v27 = createIPv6AddrStringFromData();
    _NRLogWithArgs();
  }

  [v8 setLocalInnerIPv6AddressBytesClassD:v3];
  v14 = objc_opt_self();
  sub_1001629FC(v14, 0);
LABEL_11:

  return a2 ^ 1;
}

uint64_t sub_100173764(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3;
  v7 = objc_opt_self();
  v8 = sub_100003490();
  dispatch_assert_queue_V2(v8);

  if (!a2)
  {
    v16 = sub_10015B480();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v18 = sub_10015B480();
      _NRLogWithArgs();
    }

    goto LABEL_20;
  }

  if (!v6)
  {
    v19 = sub_10015B480();
    v20 = _NRLogIsLevelEnabled();

    if (v20)
    {
      v21 = sub_10015B480();
      _NRLogWithArgs();
    }

    goto LABEL_20;
  }

  v9 = sub_100163B2C(v7, v6, 0);
  if (!v9)
  {
    v22 = sub_10015B480();
    v23 = _NRLogIsLevelEnabled();

    if (v23)
    {
      v24 = sub_10015B480();
      _NRLogWithArgs();
    }

LABEL_20:
    v6 = _os_log_pack_size();
    __chkstk_darwin();
    v25 = *__error();
    v26 = _os_log_pack_fill();
    *v26 = 136446210;
    *(v26 + 4) = "+[NRDLocalDevice updateLocalClassCInnerAddressBytes:nrUUID:]";
    sub_10015B480();
    _NRLogAbortWithPack();
LABEL_21:
    dispatch_once(&qword_100229488, &stru_1001FD018);
    goto LABEL_6;
  }

  v8 = v9;
  v3 = [[NSData alloc] initWithBytes:a2 length:16];
  v10 = [v8 localInnerIPv6AddressBytesClassC];
  LODWORD(a2) = [v3 isEqual:v10];

  if (a2)
  {
    goto LABEL_11;
  }

  v4 = &qword_100229000;
  if (qword_100229488 != -1)
  {
    goto LABEL_21;
  }

LABEL_6:
  if (_NRLogIsLevelEnabled())
  {
    if (v4[145] != -1)
    {
      dispatch_once(&qword_100229488, &stru_1001FD018);
    }

    v11 = qword_100229480;
    v12 = [v8 localInnerIPv6AddressBytesClassC];
    IPv6AddrStringFromData = createIPv6AddrStringFromData();
    v27 = createIPv6AddrStringFromData();
    _NRLogWithArgs();
  }

  [v8 setLocalInnerIPv6AddressBytesClassC:v3];
  v14 = objc_opt_self();
  sub_1001629FC(v14, 0);
LABEL_11:

  return a2 ^ 1;
}

uint64_t sub_100173B9C(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3;
  v7 = objc_opt_self();
  v8 = sub_100003490();
  dispatch_assert_queue_V2(v8);

  if (!a2)
  {
    v16 = sub_10015B480();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v18 = sub_10015B480();
      _NRLogWithArgs();
    }

    goto LABEL_20;
  }

  if (!v6)
  {
    v19 = sub_10015B480();
    v20 = _NRLogIsLevelEnabled();

    if (v20)
    {
      v21 = sub_10015B480();
      _NRLogWithArgs();
    }

    goto LABEL_20;
  }

  v9 = sub_100163B2C(v7, v6, 0);
  if (!v9)
  {
    v22 = sub_10015B480();
    v23 = _NRLogIsLevelEnabled();

    if (v23)
    {
      v24 = sub_10015B480();
      _NRLogWithArgs();
    }

LABEL_20:
    v6 = _os_log_pack_size();
    __chkstk_darwin();
    v25 = *__error();
    v26 = _os_log_pack_fill();
    *v26 = 136446210;
    *(v26 + 4) = "+[NRDLocalDevice updateRemoteClassDInnerAddressBytes:nrUUID:]";
    sub_10015B480();
    _NRLogAbortWithPack();
LABEL_21:
    dispatch_once(&qword_100229488, &stru_1001FD018);
    goto LABEL_6;
  }

  v8 = v9;
  v3 = [[NSData alloc] initWithBytes:a2 length:16];
  v10 = [v8 remoteInnerIPv6AddressBytesClassD];
  LODWORD(a2) = [v3 isEqual:v10];

  if (a2)
  {
    goto LABEL_11;
  }

  v4 = &qword_100229000;
  if (qword_100229488 != -1)
  {
    goto LABEL_21;
  }

LABEL_6:
  if (_NRLogIsLevelEnabled())
  {
    if (v4[145] != -1)
    {
      dispatch_once(&qword_100229488, &stru_1001FD018);
    }

    v11 = qword_100229480;
    v12 = [v8 remoteInnerIPv6AddressBytesClassD];
    IPv6AddrStringFromData = createIPv6AddrStringFromData();
    v27 = createIPv6AddrStringFromData();
    _NRLogWithArgs();
  }

  [v8 setRemoteInnerIPv6AddressBytesClassD:v3];
  v14 = objc_opt_self();
  sub_1001629FC(v14, 0);
LABEL_11:

  return a2 ^ 1;
}

uint64_t sub_100173FD4(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3;
  v7 = objc_opt_self();
  v8 = sub_100003490();
  dispatch_assert_queue_V2(v8);

  if (!a2)
  {
    v16 = sub_10015B480();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v18 = sub_10015B480();
      _NRLogWithArgs();
    }

    goto LABEL_20;
  }

  if (!v6)
  {
    v19 = sub_10015B480();
    v20 = _NRLogIsLevelEnabled();

    if (v20)
    {
      v21 = sub_10015B480();
      _NRLogWithArgs();
    }

    goto LABEL_20;
  }

  v9 = sub_100163B2C(v7, v6, 0);
  if (!v9)
  {
    v22 = sub_10015B480();
    v23 = _NRLogIsLevelEnabled();

    if (v23)
    {
      v24 = sub_10015B480();
      _NRLogWithArgs();
    }

LABEL_20:
    v6 = _os_log_pack_size();
    __chkstk_darwin();
    v25 = *__error();
    v26 = _os_log_pack_fill();
    *v26 = 136446210;
    *(v26 + 4) = "+[NRDLocalDevice updateRemoteClassCInnerAddressBytes:nrUUID:]";
    sub_10015B480();
    _NRLogAbortWithPack();
LABEL_21:
    dispatch_once(&qword_100229488, &stru_1001FD018);
    goto LABEL_6;
  }

  v8 = v9;
  v3 = [[NSData alloc] initWithBytes:a2 length:16];
  v10 = [v8 remoteInnerIPv6AddressBytesClassC];
  LODWORD(a2) = [v3 isEqual:v10];

  if (a2)
  {
    goto LABEL_11;
  }

  v4 = &qword_100229000;
  if (qword_100229488 != -1)
  {
    goto LABEL_21;
  }

LABEL_6:
  if (_NRLogIsLevelEnabled())
  {
    if (v4[145] != -1)
    {
      dispatch_once(&qword_100229488, &stru_1001FD018);
    }

    v11 = qword_100229480;
    v12 = [v8 remoteInnerIPv6AddressBytesClassC];
    IPv6AddrStringFromData = createIPv6AddrStringFromData();
    v27 = createIPv6AddrStringFromData();
    _NRLogWithArgs();
  }

  [v8 setRemoteInnerIPv6AddressBytesClassC:v3];
  v14 = objc_opt_self();
  sub_1001629FC(v14, 0);
LABEL_11:

  return a2 ^ 1;
}

void sub_10017440C(uint64_t a1, void *a2, void *a3)
{
  v19 = a2;
  v4 = a3;
  v5 = objc_opt_self();
  v6 = sub_100003490();
  dispatch_assert_queue_V2(v6);

  if (!v4)
  {
    v11 = sub_10015B480();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v13 = sub_10015B480();
      _NRLogWithArgs();
    }

LABEL_17:
    _os_log_pack_size();
    v17 = *__error();
    v18 = _os_log_pack_fill();
    *v18 = 136446210;
    *(v18 + 4) = "+[NRDLocalDevice updateBluetoothUUID:nrUUID:]";
    sub_10015B480();
    _NRLogAbortWithPack();
  }

  v7 = sub_100163B2C(v5, v4, 0);
  if (!v7)
  {
    v14 = sub_10015B480();
    v15 = _NRLogIsLevelEnabled();

    if (v15)
    {
      v16 = sub_10015B480();
      _NRLogWithArgs();
    }

    goto LABEL_17;
  }

  v8 = v7;
  if (![*(v7 + 32) isEqual:v19] || (v19 != 0) != (*(v8 + 48) & 0x40) >> 6)
  {
    if (v19 || (v9 = 0, *(v8 + 8) == 1))
    {
      [v8 setBluetoothUUID:{v19, v19}];
      v9 = v19;
    }

    [v8 setDatabaseFlags:*(v8 + 48) & 0xFFFFFFFFFFFFFFBFLL | ((v9 != 0) << 6)];
    v10 = objc_opt_self();
    sub_1001629FC(v10, 0);
  }
}

void sub_1001746C0(uint64_t a1, void *a2, void *a3)
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

    goto LABEL_10;
  }

  if (!v5)
  {
    v12 = sub_10015B480();
    v13 = _NRLogIsLevelEnabled();

    if (v13)
    {
      v14 = sub_10015B480();
      _NRLogWithArgs();
    }

LABEL_10:
    v4 = _os_log_pack_size();
    v5 = &v18[-1] - ((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0);
    v15 = *__error();
    v16 = _os_log_pack_fill();
    *v16 = 136446210;
    *(v16 + 4) = "+[NRDLocalDevice readPairingInfoFromKeychain:completionBlock:]";
    sub_10015B480();
    _NRLogAbortWithPack();
    goto LABEL_11;
  }

  objc_opt_self();
  if (qword_1002294C8 != -1)
  {
LABEL_11:
    dispatch_once(&qword_1002294C8, &stru_1001FD250);
  }

  v6 = qword_1002294C0;
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_1001749A4;
  v18[3] = &unk_1001FCE50;
  v19 = v4;
  v20 = v5;
  v7 = v5;
  v8 = v4;
  sub_1001816DC(v6, v18);
}

void sub_1001749A4(uint64_t a1)
{
  objc_opt_self();
  if (qword_1002294C8 != -1)
  {
    dispatch_once(&qword_1002294C8, &stru_1001FD250);
  }

  v2 = qword_1002294C0;
  v3 = sub_100183000(v2, @"LocalDevicePairingInfo", *(a1 + 32), 3, 1);

  if (v3)
  {
    v19 = 0;
    v4 = [NSKeyedUnarchiver unarchivedObjectOfClass:objc_opt_class() fromData:v3 error:&v19];
    v5 = v19;
    v6 = *(a1 + 32);
    v7 = _NRCopyLogObjectForNRUUID();
    if (v4)
    {
      IsLevelEnabled = _NRLogIsLevelEnabled();

      if (IsLevelEnabled)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v16 = _NRLogIsLevelEnabled();

      if (v16)
      {
LABEL_11:
        v17 = *(a1 + 32);
        v18 = _NRCopyLogObjectForNRUUID();
        _NRLogWithArgs();
      }
    }

    goto LABEL_13;
  }

  v9 = *(a1 + 32);
  v10 = _NRCopyLogObjectForNRUUID();
  v11 = _NRLogIsLevelEnabled();

  if (v11)
  {
    v14 = *(a1 + 32);
    v15 = _NRCopyLogObjectForNRUUID();
    _NRLogWithArgs();
  }

  v4 = 0;
LABEL_13:
  (*(*(a1 + 40) + 16))(*(a1 + 40), *(a1 + 32), v4, v12, v13);
}

void sub_100174BBC(uint64_t a1, void *a2, void *a3, void *a4)
{
  v6 = a2;
  v7 = a3;
  v8 = a4;
  objc_opt_self();
  v9 = sub_100003490();
  dispatch_assert_queue_V2(v9);

  if (!v6)
  {
    v15 = sub_10015B480();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v17 = sub_10015B480();
      _NRLogWithArgs();
    }

    goto LABEL_21;
  }

  if (!v7)
  {
    v18 = sub_10015B480();
    v19 = _NRLogIsLevelEnabled();

    v8 = "+[NRDLocalDevice updatePairingInfoToKeychain:cbPairingInfoDict:completionBlock:]";
    if (v19)
    {
      v20 = sub_10015B480();
      _NRLogWithArgs();
    }

LABEL_21:
    v6 = _os_log_pack_size();
    v7 = &v24[-1] - ((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0);
    v21 = *__error();
    v22 = _os_log_pack_fill();
    *v22 = 136446210;
    *(v22 + 4) = "+[NRDLocalDevice updatePairingInfoToKeychain:cbPairingInfoDict:completionBlock:]";
    sub_10015B480();
    _NRLogAbortWithPack();
    goto LABEL_22;
  }

  v10 = [qword_100229428 objectForKeyedSubscript:v6];
  v9 = v10;
  if (v10 && (*(v10 + 48) & 1) != 0 && *(v10 + 32) && (*(v10 + 8) & 1) == 0 && sub_100169428(v10) && BYTE1(v9[1].isa) == 2)
  {
    objc_opt_self();
    if (qword_1002294C8 == -1)
    {
LABEL_10:
      v11 = qword_1002294C0;
      v24[0] = _NSConcreteStackBlock;
      v24[1] = 3221225472;
      v24[2] = sub_100174F88;
      v24[3] = &unk_1001FCFF8;
      v28 = 0;
      v25 = v7;
      v27 = v8;
      v26 = v6;
      sub_1001816DC(v11, v24);

      goto LABEL_15;
    }

LABEL_22:
    dispatch_once(&qword_1002294C8, &stru_1001FD250);
    goto LABEL_10;
  }

  v12 = _NRCopyLogObjectForNRUUID();
  v13 = _NRLogIsLevelEnabled();

  if (v13)
  {
    v14 = _NRCopyLogObjectForNRUUID();
    _NRLogWithArgs();
  }

  if (v8)
  {
    (*(v8 + 2))(v8, v6, 0);
  }

LABEL_15:
}

void sub_100174F88(id *a1)
{
  v2 = objc_alloc_init(NRDLDPairingInfo);
  if (!v2)
  {
    v52 = sub_10015B480();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v54 = sub_10015B480();
      _NRLogWithArgs();
    }

    v3 = _os_log_pack_size();
    a1 = (&v67 - ((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0));
    v55 = *__error();
    v56 = _os_log_pack_fill();
    *v56 = 136446210;
    *(v56 + 4) = "+[NRDLocalDevice updatePairingInfoToKeychain:cbPairingInfoDict:completionBlock:]_block_invoke";
    sub_10015B480();
    _NRLogAbortWithPack();
    goto LABEL_49;
  }

  v3 = v2;
  if (*(a1 + 56))
  {
    v4 = @"kCBMsgArgLocalIRK";
  }

  else
  {
    v4 = @"kCBMsgArgRemoteIRK";
  }

  v5 = [a1[4] objectForKeyedSubscript:v4];
  v6 = *(v3 + 8);
  *(v3 + 8) = v5;

  if (!*(v3 + 8))
  {
LABEL_49:
    v57 = sub_10015B480();
    v58 = _NRLogIsLevelEnabled();

    if (!v58)
    {
      goto LABEL_56;
    }

    v59 = sub_10015B480();
    goto LABEL_55;
  }

  if (*(a1 + 56))
  {
    v7 = @"kCBMsgArgAddressString";
  }

  else
  {
    v7 = @"kCBMsgArgRemoteAddress";
  }

  v8 = [a1[4] objectForKeyedSubscript:v7];
  v9 = *(v3 + 16);
  *(v3 + 16) = v8;

  if (!*(v3 + 16))
  {
    v60 = sub_10015B480();
    v61 = _NRLogIsLevelEnabled();

    if (!v61)
    {
      goto LABEL_56;
    }

    goto LABEL_54;
  }

  if (a1[7])
  {
    v10 = &off_100209F20;
  }

  else
  {
    v10 = [a1[4] objectForKeyedSubscript:@"kCBMsgArgRemoteAddressType"];
  }

  v11 = *(v3 + 24);
  *(v3 + 24) = v10;

  if (*(v3 + 24))
  {
    arc4random_buf(__buf, 0x40uLL);
    v12 = [[NSData alloc] initWithBytes:__buf length:64];
    v13 = a1[5];
    v14 = v12;
    objc_opt_self();
    if (v14)
    {
      v15 = sub_100163B2C(NRDLocalDevice, v13, 0);
      if (v15)
      {
        v68 = v14;
        v16 = [NSMutableData _newZeroingDataWithBytes:0 length:0];
        v17 = v15[10];
        if (v17)
        {
          v18 = v17[3];
          v19 = v18;
          if (v18)
          {
            v20 = v18[2];
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

        v21 = v17;
        [v16 appendData:v20];

        v22 = v15[9];
        if (v22)
        {
          v23 = v22[3];
          v24 = v23;
          if (v23)
          {
            v25 = v23[2];
          }

          else
          {
            v25 = 0;
          }
        }

        else
        {
          v24 = 0;
          v25 = 0;
        }

        v26 = v22;
        [v16 appendData:v25];

        v27 = [@"key-for-terminusd-migration" dataUsingEncoding:4];
        v14 = v68;
        v28 = sub_10013EBBC(v16, v68, v27);
      }

      else
      {
        v29 = _NRCopyLogObjectForNRUUID();
        v30 = _NRLogIsLevelEnabled();

        if (!v30)
        {
          v15 = 0;
          v28 = 0;
          goto LABEL_26;
        }

        v16 = _NRCopyLogObjectForNRUUID();
        _NRLogWithArgs();
        v28 = 0;
      }
    }

    else
    {
      v65 = sub_10015B480();
      v66 = _NRLogIsLevelEnabled();

      if (!v66)
      {
        v28 = 0;
        goto LABEL_27;
      }

      v15 = sub_10015B480();
      _NRLogWithArgs();
      v28 = 0;
    }

LABEL_26:

LABEL_27:
    v31 = *(v3 + 32);
    *(v3 + 32) = v28;

    objc_storeStrong((v3 + 40), v12);
    v69 = 0;
    v32 = [NSKeyedArchiver archivedDataWithRootObject:v3 requiringSecureCoding:1 error:&v69];
    v33 = v69;
    v34 = v33;
    if (!v32 || v33)
    {
      v40 = a1[5];
      v41 = _NRCopyLogObjectForNRUUID();
      v42 = _NRLogIsLevelEnabled();

      if (v42)
      {
        v43 = a1[5];
        v44 = _NRCopyLogObjectForNRUUID();
        _NRLogWithArgs();
      }

      v45 = a1[6];
      if (!v45)
      {
        goto LABEL_43;
      }

      v46 = a1[5];
      v47 = *(v45 + 2);
      goto LABEL_42;
    }

    objc_opt_self();
    if (qword_1002294C8 != -1)
    {
      dispatch_once(&qword_1002294C8, &stru_1001FD250);
    }

    v35 = qword_1002294C0;
    v36 = sub_1001825C0(v35, v32, @"LocalDevicePairingInfo", a1[5], 3, 0, 1);

    v37 = a1[5];
    v38 = _NRCopyLogObjectForNRUUID();
    v39 = _NRLogIsLevelEnabled();

    if (v36)
    {
      if (v39)
      {
        goto LABEL_39;
      }
    }

    else if (v39)
    {
LABEL_39:
      v48 = a1[5];
      v49 = _NRCopyLogObjectForNRUUID();
      _NRLogWithArgs();
    }

    v50 = a1[6];
    if (!v50)
    {
LABEL_43:

      goto LABEL_44;
    }

    v51 = a1[5];
    v47 = *(v50 + 2);
LABEL_42:
    v47();
    goto LABEL_43;
  }

  v62 = sub_10015B480();
  v63 = _NRLogIsLevelEnabled();

  if (v63)
  {
LABEL_54:
    v59 = sub_10015B480();
LABEL_55:
    _NRLogWithArgs();
  }

LABEL_56:
  v64 = a1[6];
  if (v64)
  {
    v64[2](v64, a1[5], 0);
  }

LABEL_44:
}

void sub_1001756C0(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = objc_opt_self();
  v7 = sub_100003490();
  dispatch_assert_queue_V2(v7);

  if (!v5)
  {
    v17 = sub_10015B480();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v19 = sub_10015B480();
      _NRLogWithArgs();
    }

LABEL_22:
    _os_log_pack_size();
    v23 = *__error();
    v24 = _os_log_pack_fill();
    *v24 = 136446210;
    *(v24 + 4) = "+[NRDLocalDevice updateIDSDeviceID:nrUUID:]";
    sub_10015B480();
    _NRLogAbortWithPack();
  }

  v8 = sub_100163B2C(v6, v5, 0);
  if (!v8)
  {
    v20 = sub_10015B480();
    v21 = _NRLogIsLevelEnabled();

    if (v21)
    {
      v22 = sub_10015B480();
      _NRLogWithArgs();
    }

    goto LABEL_22;
  }

  v9 = v8;
  if (([*(v8 + 40) isEqualToString:v4] & 1) == 0)
  {
    [v9 setIdsDeviceID:v4];
    v10 = objc_opt_self();
    sub_1001629FC(v10, 0);
    if ([v9[18] usesTLS])
    {
      sub_10005674C();
    }

    if (qword_100229478)
    {
      v11 = [qword_100229478 objectForKeyedSubscript:v5];

      if (v11)
      {
        v12 = [qword_100229478 objectForKeyedSubscript:v5];
        v25 = 0u;
        v26 = 0u;
        v27 = 0u;
        v28 = 0u;
        v13 = [v12 countByEnumeratingWithState:&v25 objects:v29 count:16];
        if (v13)
        {
          v14 = v13;
          v15 = *v26;
          do
          {
            for (i = 0; i != v14; i = i + 1)
            {
              if (*v26 != v15)
              {
                objc_enumerationMutation(v12);
              }

              (*(*(*(&v25 + 1) + 8 * i) + 16))();
            }

            v14 = [v12 countByEnumeratingWithState:&v25 objects:v29 count:16];
          }

          while (v14);
        }

        [qword_100229478 setObject:0 forKeyedSubscript:v5];
      }
    }
  }
}

void sub_100175E70(uint64_t a1)
{
  if (a1 && sub_100026878(*(a1 + 112)) && *(a1 + 64))
  {
    if (*(a1 + 39))
    {
      v2 = sub_10016C8BC();
    }

    else
    {
      v2 = sub_10016CD90();
    }

    v3 = v2;
    v4 = sub_10016CBA0();
    if ([v3 count] || objc_msgSend(v4, "count"))
    {
      objc_opt_self();
      if (qword_1002290C0 != -1)
      {
        dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
      }

      v5 = qword_1002290B8;
      if (v5 && (v6 = v5[6], v5, v6 >= 0x1E))
      {
        v7 = &dispatch_group_enter_ptr;
        if ([v3 count])
        {
          v8 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v3, "count")}];
          v29 = 0u;
          v30 = 0u;
          v31 = 0u;
          v32 = 0u;
          v9 = v3;
          v10 = [v9 countByEnumeratingWithState:&v29 objects:v34 count:16];
          if (v10)
          {
            v11 = v10;
            v12 = *v30;
            do
            {
              for (i = 0; i != v11; i = i + 1)
              {
                if (*v30 != v12)
                {
                  objc_enumerationMutation(v9);
                }

                v14 = *(*(&v29 + 1) + 8 * i);
                v15 = sub_100163A30(NRDLocalDevice, v14);
                if (sub_100172D94(v15))
                {
                  [v8 addObject:v14];
                }
              }

              v11 = [v9 countByEnumeratingWithState:&v29 objects:v34 count:16];
            }

            while (v11);
          }

          v7 = &dispatch_group_enter_ptr;
        }

        else
        {
          v8 = v3;
        }

        if ([v4 count])
        {
          v16 = [objc_alloc(v7[499]) initWithCapacity:{objc_msgSend(v4, "count")}];
          v25 = 0u;
          v26 = 0u;
          v27 = 0u;
          v28 = 0u;
          v17 = v4;
          v18 = [v17 countByEnumeratingWithState:&v25 objects:v33 count:16];
          if (v18)
          {
            v19 = v18;
            v20 = *v26;
            do
            {
              for (j = 0; j != v19; j = j + 1)
              {
                if (*v26 != v20)
                {
                  objc_enumerationMutation(v17);
                }

                v22 = *(*(&v25 + 1) + 8 * j);
                v23 = sub_100163A30(NRDLocalDevice, v22);
                if (sub_100172D94(v23))
                {
                  [v16 addObject:v22];
                }
              }

              v19 = [v17 countByEnumeratingWithState:&v25 objects:v33 count:16];
            }

            while (v19);
          }
        }

        else
        {
          v16 = v4;
        }

        if (![v8 count] && !objc_msgSend(v16, "count"))
        {
          if (qword_1002294A8 != -1)
          {
            dispatch_once(&qword_1002294A8, &stru_1001FD210);
          }

          if (_NRLogIsLevelEnabled())
          {
            v24 = sub_1001762F4();
            _NRLogWithArgs();
          }

          goto LABEL_52;
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

          _NRLogWithArgs();
        }
      }

      else
      {
        v16 = v4;
        v8 = v3;
      }

      sub_100176348(a1, v8);
      sub_100176348(a1, v16);
    }

    else
    {
      v16 = v4;
      v8 = v3;
    }

LABEL_52:
  }
}

id sub_1001762F4()
{
  if (qword_1002294A8 != -1)
  {
    dispatch_once(&qword_1002294A8, &stru_1001FD210);
  }

  v1 = qword_1002294A0;

  return v1;
}

void sub_100176348(id *a1, void *a2)
{
  v3 = a2;
  if (sub_100026878(a1[14]) && a1[8])
  {
    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    v41 = v3;
    obj = v3;
    v44 = [obj countByEnumeratingWithState:&v49 objects:v54 count:16];
    if (v44)
    {
      v43 = *v50;
      do
      {
        for (i = 0; i != v44; i = i + 1)
        {
          if (*v50 != v43)
          {
            objc_enumerationMutation(obj);
          }

          v5 = *(*(&v49 + 1) + 8 * i);
          v45 = 0u;
          v46 = 0u;
          v47 = 0u;
          v48 = 0u;
          v6 = a1[19];
          v7 = [v6 countByEnumeratingWithState:&v45 objects:v53 count:16];
          if (v7)
          {
            v8 = v7;
            v9 = *v46;
LABEL_15:
            v10 = 0;
            while (1)
            {
              if (*v46 != v9)
              {
                objc_enumerationMutation(v6);
              }

              v11 = *(*(&v45 + 1) + 8 * v10);
              if ([v11 subtype] == 102)
              {
                v12 = [v11 nrUUID];
                v13 = [v12 isEqual:v5];

                if (v13)
                {
                  break;
                }
              }

              if (v8 == ++v10)
              {
                v8 = [v6 countByEnumeratingWithState:&v45 objects:v53 count:16];
                if (!v8)
                {
                  goto LABEL_22;
                }

                goto LABEL_15;
              }
            }
          }

          else
          {
LABEL_22:

            v14 = a1[14];
            v15 = v14;
            if (v14)
            {
              v16 = *(v14 + 9);
            }

            else
            {
              v16 = 0;
            }

            v17 = v16;
            v18 = [v17 objectForKeyedSubscript:v5];

            v6 = [v18 firstObject];

            if (v6)
            {
              v19 = [v6 addressFamily];
              if (v19 == [a1[8] addressFamily])
              {
                v20 = sub_100163A30(NRDLocalDevice, v5);
                v21 = v20;
                if (v20)
                {
                  v22 = *(v20 + 144);
                  v23 = [v22 allowedLinkTypes];
                  if ([v23 containsObject:&off_100209F38])
                  {
                    v24 = v21[18];
                    v25 = [v24 allowedLinkSubtypes];
                    v26 = [v25 containsObject:&off_100209F80];

                    if (v26)
                    {
                      if (*(v21 + 11) == 1)
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

                          v38 = 1427;
                          v39 = v21;
                          v36 = "";
                          v37 = "[NRLinkManagerWiFi createAWDLLinkForNRUUIDs:]";
                          _NRLogWithArgs();
                        }
                      }

                      else
                      {
                        WeakRetained = objc_loadWeakRetained(a1 + 2);
                        v29 = [WeakRetained perpetualStandaloneMeadowEnabledForNRUUID:v5];

                        if (v29)
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

                            v38 = 1433;
                            v39 = v21;
                            v36 = "";
                            v37 = "[NRLinkManagerWiFi createAWDLLinkForNRUUIDs:]";
                            _NRLogWithArgs();
                          }
                        }

                        else
                        {
                          v30 = [NRLinkAWDL alloc];
                          v31 = a1[3];
                          v32 = a1[14];
                          if (v32)
                          {
                            v32 = v32[3];
                          }

                          v33 = v32;
                          v34 = a1[8];
                          v36 = [v34 port];
                          v35 = [(NRLinkAWDL *)v30 initLinkWithQueue:v31 linkDelegate:a1 nrUUID:v5 wifiInterfaceName:v33 localOuterEndpoint:v34 remoteOuterEndpoint:v6 listenerPortString:?];

                          if (!v35)
                          {
                            [a1 reportEvent:3201];
                          }
                        }
                      }

LABEL_8:

                      goto LABEL_9;
                    }
                  }

                  else
                  {
                  }
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

                  v38 = 1422;
                  v39 = v21;
                  v36 = "";
                  v37 = "[NRLinkManagerWiFi createAWDLLinkForNRUUIDs:]";
                  _NRLogWithArgs();
                }

                goto LABEL_8;
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

                v27 = a1[8];
                v21 = qword_1002294A0;
                v39 = v27;
                v40 = v6;
                v38 = 1410;
                v36 = "";
                v37 = "[NRLinkManagerWiFi createAWDLLinkForNRUUIDs:]";
                _NRLogWithArgs();
                goto LABEL_8;
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

                v38 = 1414;
                v36 = "";
                v37 = "[NRLinkManagerWiFi createAWDLLinkForNRUUIDs:]";
                _NRLogWithArgs();
                v6 = 0;
              }

              else
              {
                v6 = 0;
              }
            }
          }

LABEL_9:
        }

        v44 = [obj countByEnumeratingWithState:&v49 objects:v54 count:16];
      }

      while (v44);
    }

    v3 = v41;
  }
}

void sub_100176A78(id a1)
{
  v1 = os_log_create("com.apple.networkrelay", "");
  v2 = qword_1002294A0;
  qword_1002294A0 = v1;

  _objc_release_x1(v1, v2);
}

void sub_100176C74(void *a1)
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

void sub_100176EC8(uint64_t a1)
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

  if ([*(a1 + 40) subtype] == 101 && (v4 = *(a1 + 32)) != 0 && sub_100026878(*(v4 + 104)))
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

    v5 = *(a1 + 32);

    sub_1001771D0(v5);
  }

  else if ([*(a1 + 40) subtype] == 102 && (v6 = *(a1 + 32)) != 0 && sub_100026878(*(v6 + 112)))
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

    v7 = *(a1 + 32);

    sub_100175E70(v7);
  }

  else if ([*(a1 + 40) subtype] == 104)
  {
    v8 = *(a1 + 32);
    if (v8)
    {
      if (sub_100026878(*(v8 + 128)))
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

        v9 = *(a1 + 32);

        sub_100177B24(v9);
      }
    }
  }
}

void sub_1001771D0(uint64_t a1)
{
  if (!a1 || !sub_100026878(*(a1 + 104)) || !*(a1 + 56))
  {
    return;
  }

  v51 = sub_10016CD90();
  if ([v51 count])
  {
    v2 = v51;
    v3 = *(a1 + 24);
    dispatch_assert_queue_V2(v3);

    if (!*(a1 + 216))
    {
      objc_opt_self();
      if (sub_100026878(*(a1 + 104)))
      {
        if (*(a1 + 56))
        {
          v54 = 0u;
          v55 = 0u;
          v52 = 0u;
          v53 = 0u;
          v50 = v2;
          v4 = v2;
          v5 = [v4 countByEnumeratingWithState:&v52 objects:v56 count:16];
          if (v5)
          {
            v6 = v5;
            v7 = *v53;
LABEL_13:
            v8 = 0;
            while (1)
            {
              if (*v53 != v7)
              {
                objc_enumerationMutation(v4);
              }

              v9 = sub_100163A30(NRDLocalDevice, *(*(&v52 + 1) + 8 * v8));
              v10 = v9;
              v11 = v9 ? *(v9 + 144) : 0;
              v12 = v11;

              if (v12)
              {
                v13 = v10 ? v10[18] : 0;
                v14 = v13;
                v15 = [v14 allowsDirectToCloud];

                if (v15)
                {
                  break;
                }
              }

              if (v6 == ++v8)
              {
                v6 = [v4 countByEnumeratingWithState:&v52 objects:v56 count:16];
                if (!v6)
                {
                  goto LABEL_28;
                }

                goto LABEL_13;
              }
            }

            v16 = *(a1 + 216);
            if (v16)
            {
              v2 = v50;
            }

            else
            {
              v17 = [NRDirectToCloudAgent alloc];
              v18 = *(a1 + 24);
              v19 = sub_10007C284(&v17->super.isa, v18);
              v20 = *(a1 + 216);
              *(a1 + 216) = v19;

              [a1 reportEvent:14001];
              v16 = *(a1 + 216);
              v2 = v50;
              if (!v16)
              {
                goto LABEL_79;
              }
            }

            dispatch_assert_queue_V2(*(v16 + 32));
            if (*(v16 + 14))
            {
              goto LABEL_70;
            }

            if (qword_100229060 != -1)
            {
              dispatch_once(&qword_100229060, &stru_1001FAF50);
            }

            if (_NRLogIsLevelEnabled())
            {
              if (qword_100229060 != -1)
              {
                dispatch_once(&qword_100229060, &stru_1001FAF50);
              }

              v21 = qword_100229058;
              v47 = [v16 agentDescription];
              _NRLogWithArgs();
            }

            v22 = [[NWNetworkAgentRegistration alloc] initWithNetworkAgentClass:objc_opt_class()];
            v23 = *(v16 + 40);
            *(v16 + 40) = v22;

            if (*(v16 + 40))
            {
              objc_opt_self();
              if (qword_1002290C0 != -1)
              {
                dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
              }

              v24 = qword_1002290B8;
              v25 = v24;
              if (v24)
              {
                v26 = v24[6];
                v27 = v26;
                if (v26)
                {
                  v28 = v26[13];
                  if (v28)
                  {
                    v28 = v28[3];
                  }

                  v26 = v28;
                }
              }

              else
              {
                v27 = 0;
                v26 = 0;
              }

              v29 = *(v16 + 48);
              *(v16 + 48) = v26;

              if (*(v16 + 48))
              {
                if ([*(v16 + 40) registerNetworkAgent:v16])
                {
                  *(v16 + 14) = 1;
                  [v16 setActive:1];
                  [*(v16 + 40) updateNetworkAgent:v16];
                  objc_opt_self();
                  v30 = [NEPolicyCondition clientFlags:0x20000000];
                  v31 = *(v16 + 48);
                  v32 = [NEPolicyRouteRule routeRuleWithAction:5 forInterfaceName:v31];

                  v33 = [v16 agentUUID];
                  [v32 setNetworkAgentUUID:v33];

                  v34 = [NEPolicy alloc];
                  v48 = v32;
                  v58 = v32;
                  v35 = [NSArray arrayWithObjects:&v58 count:1];
                  v36 = [NEPolicyResult routeRules:v35];
                  v37 = +[NEPolicyCondition allInterfaces];
                  v57[0] = v37;
                  v57[1] = v30;
                  v49 = v30;
                  v38 = [NSArray arrayWithObjects:v57 count:2];
                  v39 = [v34 initWithOrder:10 result:v36 conditions:v38];

                  objc_opt_self();
                  if (qword_100229410 != -1)
                  {
                    dispatch_once(&qword_100229410, &stru_1001FCD98);
                  }

                  v2 = v50;
                  v40 = qword_100229408;
                  v41 = sub_100159E00(v40, *(v16 + 72), v39);

                  objc_opt_self();
                  if (qword_100229410 != -1)
                  {
                    dispatch_once(&qword_100229410, &stru_1001FCD98);
                  }

                  v42 = qword_100229408;
                  sub_10015A52C(v42);

                  sub_1000059A8(0, 14002, 0, 0);
                  goto LABEL_67;
                }

                if (qword_100229060 != -1)
                {
                  dispatch_once(&qword_100229060, &stru_1001FAF50);
                }

                if (_NRLogIsLevelEnabled())
                {
                  if (qword_100229060 == -1)
                  {
LABEL_66:
                    _NRLogWithArgs();
                    goto LABEL_67;
                  }

LABEL_92:
                  dispatch_once(&qword_100229060, &stru_1001FAF50);
                  goto LABEL_66;
                }
              }

              else
              {
                if (qword_100229060 != -1)
                {
                  dispatch_once(&qword_100229060, &stru_1001FAF50);
                }

                if (_NRLogIsLevelEnabled())
                {
                  if (qword_100229060 == -1)
                  {
                    goto LABEL_66;
                  }

                  goto LABEL_92;
                }
              }
            }

            else
            {
              if (qword_100229060 != -1)
              {
                dispatch_once(&qword_100229060, &stru_1001FAF50);
              }

              if (_NRLogIsLevelEnabled())
              {
                if (qword_100229060 == -1)
                {
                  goto LABEL_66;
                }

                goto LABEL_92;
              }
            }

LABEL_67:
            if (*(v16 + 14) & 1) != 0 || (v43 = *(v16 + 40)) != 0 && ([v43 unregisterNetworkAgent], v44 = *(v16 + 40), *(v16 + 40) = 0, v44, (*(v16 + 14)))
            {
LABEL_70:
              if (*(a1 + 216) && *(a1 + 44) == -1)
              {
                if (notify_register_check([@"AvoidCompanionSupported" UTF8String], (a1 + 44)) || *(a1 + 44) == -1)
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

                else
                {
                  sub_1001795E4(a1, 1);
                }
              }

              goto LABEL_86;
            }

LABEL_79:
            if (qword_1002294A8 != -1)
            {
              dispatch_once(&qword_1002294A8, &stru_1001FD210);
            }

            if (_NRLogIsLevelEnabled())
            {
              v45 = sub_1001762F4();
              _NRLogWithArgs();
            }

            sub_100178760(a1);
            goto LABEL_86;
          }

LABEL_28:

          sub_100178760(a1);
          v2 = v50;
        }
      }
    }

LABEL_86:

    goto LABEL_87;
  }

  sub_100178760(a1);
LABEL_87:
  sub_10017880C(a1, v51);
  v46 = sub_10016CBA0();
  if ([v46 count])
  {
    sub_10017880C(a1, v46);
  }
}

void sub_100177B24(uint64_t a1)
{
  if (a1 && sub_100026878(*(a1 + 128)))
  {
    v3 = sub_10016CD90();
    sub_100177BC8(a1, v3);
    v2 = sub_10016CBA0();
    if ([v2 count])
    {
      sub_100177BC8(a1, v2);
    }
  }
}

void sub_100177BC8(uint64_t a1, void *a2)
{
  v66 = a2;
  if (sub_100026878(*(a1 + 128)))
  {
    v67 = objc_alloc_init(NSMutableArray);
    v3 = *(a1 + 128);
    if (v3)
    {
      v3 = v3[7];
    }

    v4 = v3;
    v5 = [v4 count];

    if (v5)
    {
      v6 = *(a1 + 128);
      if (v6)
      {
        v6 = v6[7];
      }

      v7 = v6;
      [v67 addObjectsFromArray:v7];
    }

    v8 = *(a1 + 128);
    if (v8)
    {
      v8 = v8[8];
    }

    v9 = v8;
    v10 = [v9 count];

    if (v10)
    {
      v11 = *(a1 + 128);
      if (v11)
      {
        v11 = v11[8];
      }

      v12 = v11;
      [v67 addObjectsFromArray:v12];
    }

    v98 = 0u;
    v99 = 0u;
    v96 = 0u;
    v97 = 0u;
    v13 = v66;
    v71 = [v13 countByEnumeratingWithState:&v96 objects:v103 count:16];
    if (v71)
    {
      v70 = *v97;
      v78 = a1;
      v68 = v13;
      do
      {
        v14 = 0;
        do
        {
          if (*v97 != v70)
          {
            objc_enumerationMutation(v13);
          }

          v82 = *(*(&v96 + 1) + 8 * v14);
          v16 = sub_100163A30(NRDLocalDevice, v82);
          v73 = v14;
          if (v16)
          {
            v17 = v16;
            v18 = *(v16 + 144);
          }

          else
          {
            v17 = 0;
            v18 = 0;
          }

          v19 = v18;
          v20 = [v19 allowedLinkSubtypes];
          v21 = [v20 containsObject:&off_100209F68];

          v15 = v17;
          if (v21)
          {
            if (v17 && v17[11] == 1)
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

                v64 = 1211;
                v65 = v17;
                v62 = "";
                v63 = "[NRLinkManagerWiFi createIRLinkForNRUUIDs:]";
                _NRLogWithArgs();
              }
            }

            else
            {
              v22 = sub_10013FF60(v17) == 1;
              v69 = v17;
              v23 = sub_100169428(v17);
              v24 = *(a1 + 128);
              v25 = v24;
              if (v24)
              {
                v26 = *(v24 + 9);
              }

              else
              {
                v26 = 0;
              }

              v27 = v26;
              v28 = [v27 objectForKeyedSubscript:v82];

              v76 = v28;
              if ([v28 count])
              {
                v29 = v22 & ~v23;
                if (v29)
                {
                  v30 = 0;
                  v31 = &dispatch_group_enter_ptr;
                }

                else
                {
                  v94 = 0u;
                  v95 = 0u;
                  v92 = 0u;
                  v93 = 0u;
                  v32 = *(a1 + 152);
                  v33 = [v32 countByEnumeratingWithState:&v92 objects:v102 count:16];
                  if (v33)
                  {
                    v34 = v33;
                    v35 = *v93;
                    do
                    {
                      for (i = 0; i != v34; i = i + 1)
                      {
                        if (*v93 != v35)
                        {
                          objc_enumerationMutation(v32);
                        }

                        v37 = *(*(&v92 + 1) + 8 * i);
                        if ([v37 subtype] == 104)
                        {
                          v38 = [v37 nrUUID];
                          v39 = [v38 isEqual:v82];

                          if (v39)
                          {
                            if ([v37 state] != 255)
                            {
                              v30 = 1;
                              goto LABEL_51;
                            }
                          }
                        }
                      }

                      v34 = [v32 countByEnumeratingWithState:&v92 objects:v102 count:16];
                    }

                    while (v34);
                  }

                  v30 = 0;
LABEL_51:

                  v31 = &dispatch_group_enter_ptr;
                }

                v90 = 0u;
                v91 = 0u;
                v88 = 0u;
                v89 = 0u;
                obj = v67;
                v75 = [obj countByEnumeratingWithState:&v88 objects:v101 count:16];
                if (!v75)
                {
                  goto LABEL_18;
                }

                v74 = *v89;
                v79 = v29;
LABEL_54:
                v40 = 0;
                while (1)
                {
                  if (*v89 != v74)
                  {
                    objc_enumerationMutation(obj);
                  }

                  if (!(v29 & 1 | ((v30 & 1) == 0)))
                  {
                    goto LABEL_18;
                  }

                  v77 = v40;
                  v41 = [v31[233] endpointWithHostname:*(*(&v88 + 1) + 8 * v40) port:@"0"];
                  v84 = 0u;
                  v85 = 0u;
                  v86 = 0u;
                  v87 = 0u;
                  v81 = v76;
                  v42 = [v81 countByEnumeratingWithState:&v84 objects:v100 count:16];
                  if (v42)
                  {
                    break;
                  }

LABEL_55:

                  v40 = v77 + 1;
                  if ((v77 + 1) == v75)
                  {
                    v75 = [obj countByEnumeratingWithState:&v88 objects:v101 count:16];
                    if (!v75)
                    {
LABEL_18:

                      goto LABEL_19;
                    }

                    goto LABEL_54;
                  }
                }

                v43 = v42;
                v44 = *v85;
                while (2)
                {
                  v45 = 0;
                  v80 = v43;
LABEL_66:
                  if (*v85 != v44)
                  {
                    objc_enumerationMutation(v81);
                  }

                  if (!(v29 & 1 | ((v30 & 1) == 0)))
                  {
                    goto LABEL_55;
                  }

                  v47 = *(*(&v84 + 1) + 8 * v45);
                  if (![a1 endpointsAreCompatible:v41 remoteEndpoint:v47])
                  {
                    goto LABEL_65;
                  }

                  v48 = v31[233];
                  v49 = [v47 hostname];
                  objc_opt_self();
                  v83 = v30;
                  if (qword_100228E88 != -1)
                  {
                    dispatch_once(&qword_100228E88, &stru_1001FA180);
                  }

                  v50 = qword_100228E80;
                  v51 = @"62743";
                  if (!v50)
                  {
                    v51 = 0;
                  }

                  v52 = v51;
                  v53 = [v48 endpointWithHostname:v49 port:v52];

                  objc_opt_class();
                  v46 = sub_1001783C0(a1, v82, v41, v53);
                  if (!v46)
                  {
                    v54 = [NRLinkInfraRelay alloc];
                    if (a1)
                    {
                      v55 = *(a1 + 24);
                    }

                    else
                    {
                      v55 = 0;
                    }

                    v56 = v55;
                    v57 = *(a1 + 128);
                    if (v57)
                    {
                      v57 = v57[3];
                    }

                    v58 = v57;
                    objc_opt_self();
                    if (qword_100228E88 != -1)
                    {
                      dispatch_once(&qword_100228E88, &stru_1001FA180);
                    }

                    v59 = qword_100228E80;
                    v60 = @"62743";
                    if (!v59)
                    {
                      v60 = 0;
                    }

                    v62 = v60;
                    v61 = [(NRLinkInfraRelay *)v54 initLinkWithQueue:v56 linkDelegate:v78 nrUUID:v82 wifiInterfaceName:v58 localOuterEndpoint:v41 remoteOuterEndpoint:v53 listenerPortString:?];

                    if (v61)
                    {
                      v46 = v61;
                      v30 = 1;
                      a1 = v78;
                      v31 = &dispatch_group_enter_ptr;
                      v29 = v79;
LABEL_64:

                      v43 = v80;
LABEL_65:
                      if (v43 == ++v45)
                      {
                        v43 = [v81 countByEnumeratingWithState:&v84 objects:v100 count:16];
                        if (v43)
                        {
                          continue;
                        }

                        goto LABEL_55;
                      }

                      goto LABEL_66;
                    }

                    [v78 reportEvent:3200];
                    v46 = 0;
                    a1 = v78;
                    v31 = &dispatch_group_enter_ptr;
                  }

                  break;
                }

                v29 = v79;
                v30 = v83;
                goto LABEL_64;
              }

LABEL_19:

              v13 = v68;
              v15 = v69;
            }
          }

          v14 = v73 + 1;
        }

        while ((v73 + 1) != v71);
        v71 = [v13 countByEnumeratingWithState:&v96 objects:v103 count:16];
      }

      while (v71);
    }
  }
}

id sub_1001783C0(uint64_t a1, void *a2, void *a3, void *a4)
{
  v39 = a2;
  v7 = a3;
  v8 = a4;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v9 = *(a1 + 152);
  v10 = [v9 countByEnumeratingWithState:&v40 objects:v44 count:16];
  v37 = v8;
  v38 = v7;
  if (v10)
  {
    v11 = v10;
    v12 = *v41;
    if (v7)
    {
LABEL_6:
      v13 = 0;
      while (1)
      {
        if (*v41 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v40 + 1) + 8 * v13);
        if (objc_opt_isKindOfClass())
        {
          v15 = [v14 nrUUID];
          v16 = [v15 isEqual:v39];

          if (v16)
          {
            v17 = [v14 localOuterEndpoint];
            v18 = [v17 hostname];
            v19 = [v38 hostname];
            v20 = [v18 isEqualToString:v19];

            if (v20)
            {
              if (!v37)
              {
                break;
              }

              v21 = [v14 remoteOuterEndpoint];
              v22 = [v21 hostname];
              v23 = [v37 hostname];
              v24 = [v22 isEqualToString:v23];

              if (v24)
              {
                break;
              }
            }
          }
        }

        if (v11 == ++v13)
        {
          v11 = [v9 countByEnumeratingWithState:&v40 objects:v44 count:16];
          if (!v11)
          {
            goto LABEL_25;
          }

          goto LABEL_6;
        }
      }
    }

    else if (v8)
    {
LABEL_17:
      v26 = 0;
      while (1)
      {
        if (*v41 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v40 + 1) + 8 * v26);
        if (objc_opt_isKindOfClass())
        {
          v27 = [v14 nrUUID];
          v28 = [v27 isEqual:v39];

          if (v28)
          {
            v29 = [v14 remoteOuterEndpoint];
            v30 = [v29 hostname];
            v31 = [v37 hostname];
            v32 = [v30 isEqualToString:v31];

            if (v32)
            {
              break;
            }
          }
        }

        if (v11 == ++v26)
        {
          v11 = [v9 countByEnumeratingWithState:&v40 objects:v44 count:16];
          v25 = 0;
          if (!v11)
          {
            goto LABEL_34;
          }

          goto LABEL_17;
        }
      }
    }

    else
    {
LABEL_27:
      v33 = 0;
      while (1)
      {
        if (*v41 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v40 + 1) + 8 * v33);
        if (objc_opt_isKindOfClass())
        {
          v34 = [v14 nrUUID];
          v35 = [v34 isEqual:v39];

          if (v35)
          {
            break;
          }
        }

        if (v11 == ++v33)
        {
          v11 = [v9 countByEnumeratingWithState:&v40 objects:v44 count:16];
          v25 = 0;
          if (!v11)
          {
            goto LABEL_34;
          }

          goto LABEL_27;
        }
      }
    }

    v25 = v14;
  }

  else
  {
LABEL_25:
    v25 = 0;
  }

LABEL_34:

  return v25;
}

void sub_100178760(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 24);
    dispatch_assert_queue_V2(v2);

    v3 = *(a1 + 216);
    if (v3)
    {
      dispatch_assert_queue_V2(*(v3 + 32));
      sub_10007BEA0(v3);
      v4 = *(a1 + 216);
      *(a1 + 216) = 0;

      if (*(a1 + 44) != -1)
      {
        sub_1001795E4(a1, 0);
        notify_cancel(*(a1 + 44));
        *(a1 + 44) = -1;
      }
    }
  }
}

void sub_10017880C(uint64_t a1, void *a2)
{
  v66 = a2;
  if (sub_100026878(*(a1 + 104)) && *(a1 + 56))
  {
    v96 = 0u;
    v97 = 0u;
    v94 = 0u;
    v95 = 0u;
    v3 = v66;
    v70 = [v3 countByEnumeratingWithState:&v94 objects:v101 count:16];
    if (v70)
    {
      v69 = *v95;
      v78 = a1;
      v67 = v3;
      do
      {
        for (i = 0; i != v70; i = i + 1)
        {
          if (*v95 != v69)
          {
            objc_enumerationMutation(v3);
          }

          v5 = *(*(&v94 + 1) + 8 * i);
          v6 = sub_100163A30(NRDLocalDevice, v5);
          v7 = v6;
          if (v6)
          {
            if ((*(v6 + 48) & 2) == 0)
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

                v64 = 815;
                v65 = v5;
                v62 = "";
                v63 = "[NRLinkManagerWiFi createLinkForNRUUIDs:]";
                _NRLogWithArgs();
              }

              goto LABEL_8;
            }

            v76 = v6;
            if (a1)
            {
              WeakRetained = objc_loadWeakRetained((a1 + 16));
            }

            else
            {
              WeakRetained = 0;
            }

            v9 = [WeakRetained perpetualStandaloneMeadowEnabledForNRUUID:{v5, v62, v63, v64, v65}];

            if (v9)
            {
              if (qword_1002294A8 != -1)
              {
                dispatch_once(&qword_1002294A8, &stru_1001FD210);
              }

              v7 = v76;
              if (_NRLogIsLevelEnabled())
              {
                if (qword_1002294A8 != -1)
                {
                  dispatch_once(&qword_1002294A8, &stru_1001FD210);
                }

                v64 = 821;
                v65 = v76;
                v62 = "";
                v63 = "[NRLinkManagerWiFi createLinkForNRUUIDs:]";
                _NRLogWithArgs();
              }

              goto LABEL_8;
            }

            v7 = v76;
            v10 = *(v76 + 144);
            v79 = v5;
            if (v10)
            {
              v11 = v10;
              v12 = *(v76 + 144);
              v13 = [v12 allowedLinkSubtypes];
              if (v13)
              {
                v14 = v13;
                v15 = *(v76 + 144);
                v16 = [v15 allowedLinkTypes];
                if (![v16 containsObject:&off_100209F38])
                {

                  v7 = v76;
LABEL_64:
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

                    v64 = 830;
                    v65 = v7;
                    v62 = "";
                    v63 = "[NRLinkManagerWiFi createLinkForNRUUIDs:]";
                    _NRLogWithArgs();
                  }

                  goto LABEL_8;
                }

                v17 = *(v76 + 144);
                v18 = [v17 allowedLinkSubtypes];
                v80 = [v18 containsObject:&off_100209F50];

                a1 = v78;
                v7 = v76;
                if ((v80 & 1) == 0)
                {
                  goto LABEL_64;
                }
              }

              else
              {

                v7 = v76;
              }
            }

            if (v7[11] == 1)
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

                v64 = 835;
                v65 = v7;
                v62 = "";
                v63 = "[NRLinkManagerWiFi createLinkForNRUUIDs:]";
                _NRLogWithArgs();
              }
            }

            else
            {
              v72 = sub_10013FF60(v7);
              v19 = sub_100169428(v7);
              v20 = *(a1 + 104);
              v21 = v20;
              if (v20)
              {
                v22 = *(v20 + 9);
              }

              else
              {
                v22 = 0;
              }

              v23 = v22;
              v75 = [v23 objectForKeyedSubscript:v5];

              v24 = objc_alloc_init(NSMutableArray);
              v25 = *(a1 + 104);
              if (v25)
              {
                v25 = v25[7];
              }

              v26 = v25;
              v27 = [v26 count];

              if (v27)
              {
                v28 = *(a1 + 104);
                if (v28)
                {
                  v28 = v28[7];
                }

                v29 = v28;
                [v24 addObjectsFromArray:v29];
              }

              v30 = *(a1 + 104);
              if (v30)
              {
                v30 = v30[8];
              }

              v31 = v30;
              v32 = [v31 count];

              if (v32)
              {
                v33 = *(a1 + 104);
                if (v33)
                {
                  v33 = v33[8];
                }

                v34 = v33;
                [v24 addObjectsFromArray:v34];
              }

              v81 = (v72 == 1) & ~v19;
              if (v81)
              {
                v35 = 0;
              }

              else
              {
                v92 = 0u;
                v93 = 0u;
                v90 = 0u;
                v91 = 0u;
                v36 = *(a1 + 152);
                v37 = [v36 countByEnumeratingWithState:&v90 objects:v100 count:16];
                if (v37)
                {
                  v38 = v37;
                  v39 = *v91;
                  while (2)
                  {
                    for (j = 0; j != v38; j = j + 1)
                    {
                      if (*v91 != v39)
                      {
                        objc_enumerationMutation(v36);
                      }

                      v41 = *(*(&v90 + 1) + 8 * j);
                      if ([v41 subtype] == 101)
                      {
                        v42 = [v41 nrUUID];
                        v43 = [v42 isEqual:v79];

                        if (v43)
                        {
                          if ([v41 state] != 255)
                          {
                            v35 = 1;
                            goto LABEL_81;
                          }
                        }
                      }
                    }

                    v38 = [v36 countByEnumeratingWithState:&v90 objects:v100 count:16];
                    if (v38)
                    {
                      continue;
                    }

                    break;
                  }

                  v35 = 0;
LABEL_81:
                  a1 = v78;
                }

                else
                {
                  v35 = 0;
                }
              }

              v44 = v79;
              v88 = 0u;
              v89 = 0u;
              v86 = 0u;
              v87 = 0u;
              obj = v24;
              v7 = v76;
              v74 = [obj countByEnumeratingWithState:&v86 objects:v99 count:16];
              if (v74)
              {
                v73 = *v87;
                v71 = i;
LABEL_86:
                v45 = 0;
                while (1)
                {
                  if (*v87 != v73)
                  {
                    objc_enumerationMutation(obj);
                  }

                  if (!(v81 & 1 | ((v35 & 1) == 0)))
                  {
                    break;
                  }

                  v77 = v45;
                  v47 = [NWAddressEndpoint endpointWithHostname:*(*(&v86 + 1) + 8 * v45) port:@"0"];
                  v82 = 0u;
                  v83 = 0u;
                  v84 = 0u;
                  v85 = 0u;
                  v48 = v75;
                  v49 = [v48 countByEnumeratingWithState:&v82 objects:v98 count:16];
                  if (v49)
                  {
                    v50 = v49;
                    v51 = *v83;
LABEL_94:
                    v52 = 0;
                    while (1)
                    {
                      if (*v83 != v51)
                      {
                        objc_enumerationMutation(v48);
                      }

                      if (!(v81 & 1 | ((v35 & 1) == 0)))
                      {
                        break;
                      }

                      v54 = *(*(&v82 + 1) + 8 * v52);
                      if ([a1 endpointsAreCompatible:v47 remoteEndpoint:v54])
                      {
                        v55 = [v54 hostname];
                        objc_opt_self();
                        if (qword_100228E88 != -1)
                        {
                          dispatch_once(&qword_100228E88, &stru_1001FA180);
                        }

                        v56 = qword_100228E80;
                        v57 = @"62743";
                        if (!v56)
                        {
                          v57 = 0;
                        }

                        v58 = v57;
                        v59 = [NWAddressEndpoint endpointWithHostname:v55 port:v58];

                        objc_opt_class();
                        a1 = v78;
                        v44 = v79;
                        v53 = sub_1001783C0(v78, v79, v47, v59);
                        if (!v53)
                        {
                          v53 = sub_1001792F0(v78, v79, v47, v59);
                          if (v53)
                          {
                            v35 = 1;
                          }

                          else
                          {
                            [v78 reportEvent:3200];
                            v53 = 0;
                          }
                        }
                      }

                      if (v50 == ++v52)
                      {
                        v50 = [v48 countByEnumeratingWithState:&v82 objects:v98 count:16];
                        if (v50)
                        {
                          goto LABEL_94;
                        }

                        break;
                      }
                    }
                  }

                  v7 = v76;
                  v60 = sub_100169428(v76);
                  if (v72 == 1 && v60 && ![v48 count] || (*(v76 + 48) & 8) != 0)
                  {
                    v61 = sub_1001792F0(a1, v44, v47, 0);
                    i = v71;
                    if (v61)
                    {
                      v35 = 1;
                    }

                    else
                    {
                      [a1 reportEvent:3200];
                      v61 = 0;
                    }

                    v46 = v77;
                  }

                  else
                  {
                    i = v71;
                    v46 = v77;
                  }

                  v45 = v46 + 1;
                  if (v45 == v74)
                  {
                    v74 = [obj countByEnumeratingWithState:&v86 objects:v99 count:16];
                    if (v74)
                    {
                      goto LABEL_86;
                    }

                    break;
                  }
                }
              }

              v3 = v67;
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

              v64 = 810;
              v65 = v5;
              v62 = "";
              v63 = "[NRLinkManagerWiFi createLinkForNRUUIDs:]";
              _NRLogWithArgs();
            }
          }

LABEL_8:
        }

        v70 = [v3 countByEnumeratingWithState:&v94 objects:v101 count:16];
      }

      while (v70);
    }
  }
}