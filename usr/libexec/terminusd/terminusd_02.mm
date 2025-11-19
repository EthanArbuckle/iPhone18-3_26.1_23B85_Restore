int64_t sub_10002BD0C(id a1, id a2, id a3)
{
  v4 = a3;
  v5 = +[NSNumber numberWithUnsignedShort:](NSNumber, "numberWithUnsignedShort:", [a2 metric]);
  v6 = [v4 metric];

  v7 = [NSNumber numberWithUnsignedShort:v6];
  v8 = [v5 compare:v7];

  return v8;
}

id sub_10002BDA4(void *a1, int a2, int a3)
{
  v6 = objc_alloc_init(NSMutableArray);
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  if (a3)
  {
    v7 = 9;
  }

  else
  {
    v7 = 2;
  }

  v8 = sub_10002B210(a1, v7);
  v9 = [v8 countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v26;
    do
    {
      v12 = 0;
      do
      {
        if (*v26 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = sub_10013D760(*(*(&v25 + 1) + 8 * v12), 0, 30, a2);
        if (v13)
        {
          [v6 addObject:v13];
        }

        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v10);
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v14 = sub_10002B210(a1, 3);
  v15 = [v14 countByEnumeratingWithState:&v21 objects:v29 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v22;
    do
    {
      v18 = 0;
      do
      {
        if (*v22 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = sub_10013D760(*(*(&v21 + 1) + 8 * v18), 0, 2, a2);
        if (v19)
        {
          [v6 addObject:{v19, v21}];
        }

        v18 = v18 + 1;
      }

      while (v16 != v18);
      v16 = [v14 countByEnumeratingWithState:&v21 objects:v29 count:16];
    }

    while (v16);
  }

  return v6;
}

id sub_10002BFC8(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  if (!*(a1 + 48) || !*(a1 + 14))
  {
    v6 = *(a1 + 32);
    v7 = _NRCopyLogObjectForNRUUID();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v9 = *(a1 + 32);
      v10 = _NRCopyLogObjectForNRUUID();
      _NRLogWithArgs();
    }

    return 0;
  }

  if (*(a1 + 16) != *(a1 + 14) + *(a1 + 12))
  {
    v11 = *(a1 + 32);
    v12 = _NRCopyLogObjectForNRUUID();
    v13 = _NRLogIsLevelEnabled();

    if (v13)
    {
      v14 = *(a1 + 32);
      v15 = _NRCopyLogObjectForNRUUID();
      v16 = *(a1 + 16);
      _NRLogWithArgs();
    }

    return 0;
  }

  v2 = [NSData alloc];
  v3 = *(a1 + 48);
  v4 = *(a1 + 16);

  return [v2 initWithBytes:v3 length:v4];
}

uint64_t sub_10002C0E8(uint64_t result)
{
  if (result)
  {
    v1 = result;
    objc_opt_self();
    if (qword_1002290C0 != -1)
    {
      dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
    }

    v2 = qword_1002290B8;
    v3 = *(v1 + 24);
    if (v3)
    {
      v4 = v3;
      goto LABEL_14;
    }

    v5 = *(v1 + 32);
    v6 = v5;
    if (v2)
    {
      if (v5)
      {
        v7 = [v2[28] objectForKeyedSubscript:v5];
        if (v7)
        {
          v8 = v7;
          dispatch_assert_queue_V2(*(v7 + 136));
          v4 = v8[20];
LABEL_12:

          goto LABEL_13;
        }

        v9 = [v6 UUIDString];
        sub_1000B926C(v2, 1014, @"copyPrimaryLink %@", v10, v11, v12, v13, v14, v9);

        v8 = 0;
LABEL_11:
        v4 = 0;
        goto LABEL_12;
      }

      v49 = sub_1000B9544();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      if (IsLevelEnabled)
      {
        v8 = sub_1000B9544();
        v53 = "[NRLinkDirector copyPrimaryLinkForNRUUID:]";
        _NRLogWithArgs();
        goto LABEL_11;
      }
    }

    v4 = 0;
LABEL_13:

    if ([v4 state] != 8)
    {
      v24 = *(v1 + 32);
      v25 = _NRCopyLogObjectForNRUUID();
      v26 = _NRLogIsLevelEnabled();

      if (v26)
      {
        v27 = *(v1 + 32);
        v28 = _NRCopyLogObjectForNRUUID();
        _NRLogWithArgs();
      }

      v66 = 0;
      goto LABEL_51;
    }

LABEL_14:
    v15 = sub_10002BFC8(v1);
    if (!v15)
    {
      v66 = 0;
LABEL_50:

LABEL_51:
      return v66;
    }

    v16 = sub_100163A30(NRDLocalDevice, *(v1 + 32));
    v17 = v16;
    if (!v16 || *(v16 + 16) <= 0x11u)
    {
      *(v1 + 8) = 0;
    }

    v60 = v4;
    v68 = v4;
    v18 = [NSArray arrayWithObjects:&v68 count:1, v53];
    v59 = v17;
    if (*(v1 + 8) != 1)
    {
LABEL_31:
      v61 = v2;
      v64 = 0u;
      v65 = 0u;
      v62 = 0u;
      v63 = 0u;
      v35 = v18;
      v36 = [v35 countByEnumeratingWithState:&v62 objects:v67 count:16];
      if (v36)
      {
        v37 = v36;
        v38 = 0;
        v39 = *v63;
        while (1)
        {
          for (i = 0; i != v37; i = i + 1)
          {
            if (*v63 != v39)
            {
              objc_enumerationMutation(v35);
            }

            v43 = *(*(&v62 + 1) + 8 * i);
            if ([v43 ikeClassDEstablished] && (*(v1 + 9) != 1 || objc_msgSend(v43, "type") != 4))
            {
              v44 = [v43 sendControlData:v15];
              v45 = *(v1 + 32);
              v46 = _NRCopyLogObjectForNRUUID();
              if (v44)
              {
                v47 = _NRLogIsLevelEnabled();

                if (v47)
                {
                  v41 = *(v1 + 32);
                  v42 = _NRCopyLogObjectForNRUUID();
                  v57 = v1;
                  v58 = v43;
                  v56 = 1070;
                  v54 = "";
                  v55 = "[NRLinkDirectorMessage send]";
                  _NRLogWithArgs();
                  v38 = 1;
LABEL_36:

                  continue;
                }

                v38 = 1;
              }

              else
              {
                v48 = _NRLogIsLevelEnabled();

                if (v48)
                {
                  v41 = *(v1 + 32);
                  v42 = _NRCopyLogObjectForNRUUID();
                  v57 = v1;
                  v58 = v43;
                  v56 = 1072;
                  v54 = "";
                  v55 = "[NRLinkDirectorMessage send]";
                  _NRLogWithArgs();
                  goto LABEL_36;
                }
              }
            }
          }

          v37 = [v35 countByEnumeratingWithState:&v62 objects:v67 count:16];
          if (!v37)
          {
            goto LABEL_49;
          }
        }
      }

      v38 = 0;
LABEL_49:

      v66 = v38 & 1;
      v4 = v60;
      v2 = v61;
      goto LABEL_50;
    }

    v19 = *(v1 + 32);
    v20 = v19;
    if (v2)
    {
      if (v19)
      {
        v21 = [v2[28] objectForKeyedSubscript:v19];
        if (v21)
        {
          v22 = v21;
          dispatch_assert_queue_V2(*(v21 + 136));
          v23 = [v22[18] allObjects];
LABEL_29:

LABEL_30:
          v18 = v23;
          goto LABEL_31;
        }

        v29 = [v20 UUIDString];
        sub_1000B926C(v2, 1014, @"copyPrimaryLink %@", v30, v31, v32, v33, v34, v29);

        v22 = 0;
LABEL_28:
        v23 = 0;
        goto LABEL_29;
      }

      v51 = sub_1000B9544();
      v52 = _NRLogIsLevelEnabled();

      if (v52)
      {
        v22 = sub_1000B9544();
        v54 = "[NRLinkDirector copyAllLinksForNRUUID:]";
        _NRLogWithArgs();
        goto LABEL_28;
      }
    }

    v23 = 0;
    goto LABEL_30;
  }

  return result;
}

id sub_10002C620()
{
  objc_opt_self();
  v0 = arc4random_uniform(0x1770u);
  v1 = v0 + 3000;
  if (v0 == -3000)
  {
    v6 = sub_100029784();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v8 = sub_100029784();
      _NRLogWithArgs();
    }

    goto LABEL_8;
  }

  v2 = malloc_type_malloc(v0 + 3000, 0xA4F982A5uLL);
  if (!v2)
  {
    while (1)
    {
      v11 = sub_100029784();
      v12 = _NRLogIsLevelEnabled();

      if (v12)
      {
        v13 = sub_100029784();
        _NRLogWithArgs();
      }

LABEL_8:
      _os_log_pack_size();
      v9 = *__error();
      v10 = _os_log_pack_fill();
      *v10 = 136446210;
      *(v10 + 4) = "+[NRLinkDirectorMessage testData]";
      sub_100029784();
      _NRLogAbortWithPack();
    }
  }

  v3 = v2;
  arc4random_buf(v2, v1);
  v4 = [[NSData alloc] initWithBytes:v3 length:v1];
  free(v3);

  return v4;
}

uint64_t sub_10002C85C(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_self();
  v3 = sub_10002C620();
  objc_opt_self();
  v4 = arc4random_uniform(0x100u);
  v5 = arc4random_uniform(0x100u);
  v6 = arc4random_uniform(0x100u);
  v7 = [[NSString alloc] initWithFormat:@"%u.%u.%u.%u", arc4random_uniform(0x100u), v6, v5, v4];
  objc_opt_self();
  if (qword_100228E88 != -1)
  {
    dispatch_once(&qword_100228E88, &stru_1001FA180);
  }

  v8 = qword_100228E80;
  if (v8)
  {
    v9 = @"62743";
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;
  v99 = [NWAddressEndpoint endpointWithHostname:v7 port:v10];

  objc_opt_self();
  v11 = arc4random_uniform(0x100u);
  v12 = arc4random_uniform(0x100u);
  v13 = arc4random_uniform(0x100u);
  v14 = [[NSString alloc] initWithFormat:@"fd74::%u.%u.%u.%u", arc4random_uniform(0x100u), v13, v12, v11];
  objc_opt_self();
  if (qword_100228E88 != -1)
  {
    dispatch_once(&qword_100228E88, &stru_1001FA180);
  }

  v15 = qword_100228E80;
  if (v15)
  {
    v16 = @"62743";
  }

  else
  {
    v16 = 0;
  }

  v17 = v16;
  v98 = [NWAddressEndpoint endpointWithHostname:v14 port:v17];

  v18 = arc4random();
  v19 = v3;
  objc_opt_self();
  v96 = objc_alloc_init(NSMutableArray);
  v20 = [v19 bytes];
  v95 = v19;
  v21 = [v19 length];
  v22 = 0;
  do
  {
    do
    {
      v24 = arc4random() % 0x64;
    }

    while (!v24);
    v25 = v24 + v22;
    if (v24 + v22 <= v21)
    {
      v26 = v24;
    }

    else
    {
      v26 = v21 - v22;
    }

    if (v26)
    {
      v23 = [[NSData alloc] initWithBytes:v20 length:v26];
      [v96 addObject:v23];
    }

    else
    {
      v26 = 0;
    }

    v20 += v26;
    v22 = v25;
  }

  while (v25 <= v21);

  v106 = 0u;
  v107 = 0u;
  v104 = 0u;
  v105 = 0u;
  v27 = [v96 countByEnumeratingWithState:&v104 objects:v113 count:16];
  if (v27)
  {
    v28 = v27;
    v29 = *v105;
    do
    {
      for (i = 0; i != v28; i = i + 1)
      {
        if (*v105 != v29)
        {
          objc_enumerationMutation(v96);
        }

        sub_10002AB38(v2, 255, *(*(&v104 + 1) + 8 * i));
      }

      v28 = [v96 countByEnumeratingWithState:&v104 objects:v113 count:16];
    }

    while (v28);
  }

  objc_opt_self();
  if (qword_100228E88 != -1)
  {
    dispatch_once(&qword_100228E88, &stru_1001FA180);
  }

  v31 = qword_100228E80;
  v32 = v31;
  if (v2)
  {
    if (v31)
    {
      v33 = 62743;
    }

    else
    {
      v33 = 0;
    }

    sub_10002B038(v2, v99, v33, 0);
  }

  objc_opt_self();
  if (qword_100228E88 != -1)
  {
    dispatch_once(&qword_100228E88, &stru_1001FA180);
  }

  v34 = v18 & 1;
  v35 = qword_100228E80;
  v36 = v35;
  v89 = v34;
  if (v2)
  {
    if (v35)
    {
      v37 = 62743;
    }

    else
    {
      v37 = 0;
    }

    sub_10002B038(v2, v98, v37, 0);

    v114[0] = v34 ^ 1;
    v38 = [[NSData alloc] initWithBytes:v114 length:1];
    sub_10002AB38(v2, 5, v38);

    sub_10002AB38(v2, 1, 0);
    v93 = *(v2 + 10);
    v92 = sub_100029538(v2);
    v39 = sub_10002BFC8(v2);
    v40 = v2[4];
  }

  else
  {

    v92 = 0;
    v93 = 0;
    v39 = 0;
    v40 = 0;
  }

  v86 = v39;
  v41 = sub_10002A684(NRLinkDirectorMessage, v39, v40);
  v42 = sub_10002B210(v41, 255);
  objc_opt_self();
  v43 = objc_alloc_init(NSMutableData);
  v108 = 0u;
  v109 = 0u;
  v110 = 0u;
  v111 = 0u;
  v44 = v42;
  v45 = [v44 countByEnumeratingWithState:&v108 objects:v114 count:16];
  if (v45)
  {
    v46 = v45;
    v47 = *v109;
    do
    {
      for (j = 0; j != v46; j = j + 1)
      {
        if (*v109 != v47)
        {
          objc_enumerationMutation(v44);
        }

        [v43 appendData:*(*(&v108 + 1) + 8 * j)];
      }

      v46 = [v44 countByEnumeratingWithState:&v108 objects:v114 count:16];
    }

    while (v46);
  }

  objc_opt_self();
  if (qword_1002290C0 != -1)
  {
    dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
  }

  v49 = qword_1002290B8;
  v50 = v49;
  if (v49)
  {
    v51 = v49[6];
    v52 = v51;
    if (v51 && (v53 = *(v51 + 13)) != 0)
    {
      v54 = *(v53 + 12);
    }

    else
    {
      v54 = 0;
    }
  }

  else
  {
    v52 = 0;
    v54 = 0;
  }

  v85 = v44;
  if (v41)
  {
    v55 = sub_10002BDA4(v41, v54, 0);
  }

  else
  {
    v55 = 0;
  }

  v94 = v41;
  v87 = v2;

  v102 = 0u;
  v103 = 0u;
  v100 = 0u;
  v101 = 0u;
  v56 = v55;
  v57 = [v56 countByEnumeratingWithState:&v100 objects:v112 count:16];
  if (v57)
  {
    v58 = v57;
    v59 = 0;
    v60 = 0;
    v97 = 0;
    v61 = 0;
    v62 = *v101;
    while (1)
    {
      for (k = 0; k != v58; k = k + 1)
      {
        if (*v101 != v62)
        {
          objc_enumerationMutation(v56);
        }

        v66 = *(*(&v100 + 1) + 8 * k);
        if ([v66 addressFamily] == 2)
        {
          v61 = [v66 isEqual:v99];
          v64 = v60;
          v60 = v66;
LABEL_61:
          v65 = v66;

          continue;
        }

        if ([v66 addressFamily] == 30)
        {
          v97 = [v66 isEqual:v98];
          v64 = v59;
          v59 = v66;
          goto LABEL_61;
        }
      }

      v58 = [v56 countByEnumeratingWithState:&v100 objects:v112 count:16];
      if (!v58)
      {
        goto LABEL_69;
      }
    }
  }

  v59 = 0;
  v60 = 0;
  v97 = 0;
  v61 = 0;
LABEL_69:

  v67 = v94;
  if (v94)
  {
    v68 = sub_10002B210(v94, 5);
    v69 = [v68 firstObject];

    if (v69 && [v69 length])
    {
      v114[0] = 0;
      [v69 getBytes:v114 length:1];
      if (v114[0])
      {
        v70 = &__kCFBooleanTrue;
      }

      else
      {
        v70 = &__kCFBooleanFalse;
      }
    }

    else
    {
      v70 = 0;
    }
  }

  else
  {
    v70 = 0;
  }

  v91 = [v70 BOOLValue];

  v90 = v89 ^ 1;
  if (v94)
  {
    v71 = *(v94 + 10);
    v72 = sub_100029538(v94);
    v73 = sub_10002B210(v94, 1);
    v74 = [v73 firstObject];

    v67 = v74 != 0;
  }

  else
  {
    v72 = 0;
    v71 = 0;
  }

  v75 = [v43 isEqualToData:v95];
  v77 = v71 == v93 && v72 == v92;
  v78 = v77 & v75 & v61 & v97 & v67;
  if (v90 != v91)
  {
    v78 = 0;
  }

  v88 = v78;
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

    v84 = qword_100228F58;
    [v95 length];
    [v43 length];
    v83 = [v99 hostname];
    v79 = [v60 hostname];
    v80 = [v98 hostname];
    v81 = [v59 hostname];
    _NRLogWithArgs();
  }

  return v88;
}

void sub_10002D380(uint64_t a1, void *a2)
{
  v4 = a2;
  objc_opt_self();
  objc_opt_self();
  if (qword_100228F50 != -1)
  {
    dispatch_once(&qword_100228F50, &stru_1001FA740);
  }

  v2 = v4;
  if (qword_100228F48)
  {
    v3 = [*(qword_100228F48 + 16) objectForKeyedSubscript:v4];
    [v3 removeAllObjects];

    v2 = v4;
  }
}

void sub_10002D42C(uint64_t a1, void *a2)
{
  if (a1)
  {
    objc_storeStrong((a1 + 24), a2);
  }
}

id sub_10002D6B4()
{
  if (qword_100228F70 != -1)
  {
    dispatch_once(&qword_100228F70, &stru_1001FA8E0);
  }

  v1 = qword_100228F68;

  return v1;
}

void sub_10002D708(id a1)
{
  v1 = os_log_create("com.apple.networkrelay", "");
  v2 = qword_100228F68;
  qword_100228F68 = v1;

  _objc_release_x1(v1, v2);
}

void sub_10002DB64(id *a1)
{
  if (a1)
  {
    v2 = a1[3];
  }

  else
  {
    v2 = 0;
  }

  v3 = v2;
  dispatch_assert_queue_V2(v3);

  if (a1[8])
  {
    v4 = sub_10016CF44();
    if ([v4 count])
    {
      v5 = sub_100157378(v4);
      [a1 reportEvent:4009 details:v5];

      v6 = a1[8];
      v7 = a1[3];
      if (qword_1002292B0 != -1)
      {
        dispatch_once(&qword_1002292B0, &stru_1001FC490);
      }

      v8 = qword_1002292B8;
      v11[0] = _NSConcreteStackBlock;
      v11[1] = 3221225472;
      v11[2] = sub_10002DD08;
      v11[3] = &unk_1001FCE28;
      v12 = v6;
      v13 = v4;
      v14 = v7;
      v15 = a1;
      v9 = v7;
      v10 = v6;
      dispatch_async(v8, v11);
    }

    else
    {
      [a1 reportEvent:4011];
      sub_10002DDAC(a1);
    }
  }
}

void sub_10002DD08(uint64_t a1)
{
  v2 = [*(a1 + 32) retrievePeripheralsWithIdentifiers:*(a1 + 40)];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10002DFF8;
  v5[3] = &unk_1001FD060;
  v3 = *(a1 + 48);
  v5[4] = *(a1 + 56);
  v6 = v2;
  v4 = v2;
  dispatch_async(v3, v5);
}

void sub_10002DDAC(uint64_t a1)
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

  if (*(a1 + 64))
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v4 = *(a1 + 72);
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
          sub_10002DF24(a1, v9);
          v10 = [v9 description];
          [a1 reportEvent:4008 details:v10];
        }

        v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v6);
    }

    v11 = *(a1 + 72);
    *(a1 + 72) = 0;
  }
}

void sub_10002DF24(id *a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v7 = v3;
    v4 = a1[3];
    dispatch_assert_queue_V2(v4);

    v3 = v7;
    if (v7)
    {
      if (a1[8])
      {
        if ([v7 state] == 1 || (v5 = objc_msgSend(v7, "state") == 2, v3 = v7, v5))
        {
          v6 = [v7 description];
          [a1 reportEvent:4003 details:v6];

          [a1[8] cancelPeripheralConnection:v7];
          v3 = v7;
        }
      }
    }
  }
}

void sub_10002DFF8(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v2 = v2[3];
  }

  v3 = v2;
  dispatch_assert_queue_V2(v3);

  v4 = sub_10016CF44();
  v5 = *(a1 + 32);
  v6 = &OBJC_IVAR___BTPResolver__sdRefResolve;
  if (v5)
  {
    v5 = v5[9];
  }

  v7 = v5;
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v54 objects:v59 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v55;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v55 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v54 + 1) + 8 * i);
        v13 = [v12 identifier];
        v14 = [v4 containsObject:v13];

        if ((v14 & 1) == 0)
        {
          sub_10002DF24(*(a1 + 32), v12);
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v54 objects:v59 count:16];
    }

    while (v9);
  }

  v15 = *(a1 + 32);
  if (v15)
  {
    objc_storeStrong(v15 + 9, *(a1 + 40));
    v16 = *(a1 + 32);
    if (v16)
    {
      v15 = v16[9];
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    v16 = 0;
  }

  v17 = v15;
  v18 = sub_100157378(v17);
  [v16 reportEvent:4010 details:v18];

  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v19 = *(a1 + 32);
  if (v19)
  {
    v19 = v19[9];
  }

  v20 = v19;
  v21 = [v20 countByEnumeratingWithState:&v50 objects:v58 count:16];
  if (!v21)
  {

LABEL_50:
    v41 = *(a1 + 32);
    if (v41)
    {
      v42 = v6[48];
      v43 = *(v41 + v42);
      *(v41 + v42) = 0;
    }

    goto LABEL_52;
  }

  v22 = v21;
  v48 = v7;
  v49 = 0;
  v23 = *v51;
  do
  {
    for (j = 0; j != v22; j = j + 1)
    {
      if (*v51 != v23)
      {
        objc_enumerationMutation(v20);
      }

      v28 = *(*(&v50 + 1) + 8 * j);
      v29 = [v28 identifier];
      v30 = [v4 containsObject:v29];

      if (v30)
      {
        v31 = [v28 identifier];
        objc_opt_self();
        v27 = sub_100168BE8(NRDLocalDevice, v31, 1);

        if (v27)
        {
          v32 = v27[18];
        }

        else
        {
          v32 = 0;
        }

        v33 = v32;
        v34 = [v33 bluetoothRole];

        if (v34 == 1)
        {
          if ([v28 state] != 1 && objc_msgSend(v28, "state") != 2)
          {
            v35 = *(a1 + 32);
            v36 = [v28 description];
            [v35 reportEvent:4000 details:v36];

            v37 = *(a1 + 32);
            if (v37)
            {
              v38 = *(v37 + 64);
            }

            else
            {
              v38 = 0;
            }

            [v38 connectPeripheral:v28 options:0];
            v39 = +[NSDate date];
            v40 = *(a1 + 32);
            if (v40)
            {
              objc_storeStrong((v40 + 160), v39);
            }
          }

          v49 = 1;
        }
      }

      else
      {
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

          v25 = qword_100228F68;
          [v28 description];
          v47 = v46 = 662;
          v44 = "";
          v45 = "[NRLinkManagerBluetooth connectToPeripherals]_block_invoke_2";
          _NRLogWithArgs();
        }

        v26 = *(a1 + 32);
        v27 = [v28 description];
        [v26 reportEvent:4006 details:v27];
      }
    }

    v22 = [v20 countByEnumeratingWithState:&v50 objects:v58 count:16];
  }

  while (v22);

  v6 = &OBJC_IVAR___BTPResolver__sdRefResolve;
  v7 = v48;
  if ((v49 & 1) == 0)
  {
    goto LABEL_50;
  }

LABEL_52:
}

void sub_10002E6F4(uint64_t a1)
{
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

  if (!*(a1 + 64) || !sub_10002F1A8(a1))
  {
    return;
  }

  v14 = *(a1 + 88);
  v6 = [v14 objectForKeyedSubscript:&off_100209AA0];
  v7 = v6;
  if (v6 && *(v6 + 8) == 2)
  {
    v8 = 0;
LABEL_11:
    v10 = [*(a1 + 40) count];
    if (v8)
    {
    }

    if (!v10)
    {
      v11 = *(a1 + 104) + 1;
      *(a1 + 104) = v11;
      v12 = dispatch_time(0x8000000000000000, 5000000000);
      v13 = *(a1 + 24);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10002F2D4;
      block[3] = &unk_1001FBAE8;
      block[4] = a1;
      block[5] = v11;
      dispatch_after(v12, v13, block);
    }

    return;
  }

  v1 = *(a1 + 96);
  v9 = [v1 objectForKeyedSubscript:&off_100209AA0];
  v2 = v9;
  if (v9 && v9[8] == 2)
  {
    v8 = 1;
    goto LABEL_11;
  }
}

void sub_10002E8E0(id *a1, void *a2)
{
  v3 = a2;
  if (a1 && [a1[9] containsObject:v3])
  {
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v4 = sub_10016CA28();
    v5 = [v4 countByEnumeratingWithState:&v33 objects:v37 count:16];
    if (!v5)
    {
LABEL_25:

      goto LABEL_26;
    }

    v6 = v5;
    v7 = *v34;
LABEL_6:
    v8 = 0;
    while (1)
    {
      if (*v34 != v7)
      {
        objc_enumerationMutation(v4);
      }

      v9 = sub_100163A30(NRDLocalDevice, *(*(&v33 + 1) + 8 * v8));
      v10 = v9;
      v11 = v9 ? *(v9 + 32) : 0;
      v12 = v11;
      v13 = v3;
      v14 = [v3 identifier];
      v15 = [v12 isEqual:v14];

      if (v15)
      {
        if (sub_10002EC6C(a1, v10))
        {
          v16 = v10 ? *(v10 + 144) : 0;
          v17 = v16;
          v18 = [v17 bluetoothRole];

          if (v18 == 1)
          {
            break;
          }
        }
      }

      v8 = v8 + 1;
      v3 = v13;
      if (v6 == v8)
      {
        v6 = [v4 countByEnumeratingWithState:&v33 objects:v37 count:16];
        if (!v6)
        {
          goto LABEL_25;
        }

        goto LABEL_6;
      }
    }

    if (v10)
    {
      v19 = *(v10 + 18);
      v20 = *(v10 + 48);

      v3 = v13;
      if (v19)
      {
        v21 = a1[8];
        v22 = [v21 sharedPairingAgent];

        v23 = a1[3];
        if (qword_1002292B0 != -1)
        {
          dispatch_once(&qword_1002292B0, &stru_1001FC490);
        }

        v24 = qword_1002292B8;
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_10002EE18;
        block[3] = &unk_1001FA870;
        v27 = v22;
        v32 = (v20 & 8) != 0;
        v28 = v13;
        v29 = v23;
        v30 = a1;
        v31 = v19;
        v25 = v23;
        v4 = v22;
        dispatch_async(v24, block);

        goto LABEL_25;
      }
    }

    else
    {

      v3 = v13;
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

      _NRLogWithArgs();
    }
  }

LABEL_26:
}

uint64_t sub_10002EC6C(void *a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (!v3)
  {
    v14 = sub_10002D6B4();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (!IsLevelEnabled)
    {
      goto LABEL_3;
    }

    v8 = sub_10002D6B4();
    _NRLogWithArgs();
    goto LABEL_13;
  }

  if ((sub_100169428(v3) & 1) == 0)
  {
    v6 = v4[3];
    v5 = [a1 shouldCreateLinkForNRUUID:v6];

    if (!v5)
    {
      goto LABEL_15;
    }

    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v7 = v4[18];
    v8 = [v7 allowedLinkSubtypes];

    v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v17;
      while (2)
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v17 != v11)
          {
            objc_enumerationMutation(v8);
          }

          if ([*(*(&v16 + 1) + 8 * i) unsignedShortValue] == 121)
          {

            v5 = 1;
            goto LABEL_15;
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }
    }

LABEL_13:
  }

LABEL_3:
  v5 = 0;
LABEL_15:

  return v5;
}

void sub_10002EE18(uint64_t a1)
{
  v2 = [*(a1 + 32) retrievePairedPeers];
  v3 = v2;
  if (*(a1 + 66))
  {
LABEL_17:
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10002F070;
    block[3] = &unk_1001FA848;
    v12 = *(a1 + 48);
    v13 = *(a1 + 40);
    v14 = *(a1 + 56);
    v17 = v13;
    v18 = v14;
    v19 = *(a1 + 64);
    dispatch_async(v12, block);
  }

  else
  {
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v4 = v2;
    v5 = [v4 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v21;
      while (2)
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v21 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = [*(*(&v20 + 1) + 8 * i) identifier];
          v10 = [*(a1 + 40) identifier];
          v11 = [v9 isEqual:v10];

          if (v11)
          {

            goto LABEL_17;
          }
        }

        v6 = [v4 countByEnumeratingWithState:&v20 objects:v24 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
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

      v15 = *(a1 + 40);
      _NRLogWithArgs();
    }
  }
}

id sub_10002F070(uint64_t a1)
{
  if ([*(a1 + 32) state] == 2)
  {
    v2 = *(a1 + 40);
    v3 = [*(a1 + 32) description];
    [v2 reportEvent:4016 details:v3];

    [*(a1 + 32) setDelegate:*(a1 + 40)];
    v4 = *(a1 + 32);
    v5 = *(a1 + 48);

    return [v4 openPacketL2CAPChannel:v5 withIncomingMTU:1550 options:&__NSDictionary0__struct];
  }

  else
  {
    if (qword_100228F70 != -1)
    {
      dispatch_once(&qword_100228F70, &stru_1001FA8E0);
    }

    result = _NRLogIsLevelEnabled();
    if (result)
    {
      if (qword_100228F70 != -1)
      {
        dispatch_once(&qword_100228F70, &stru_1001FA8E0);
      }

      v7 = *(a1 + 32);
      return _NRLogWithArgs();
    }
  }

  return result;
}

uint64_t sub_10002F1A8(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = *(a1 + 24);
  dispatch_assert_queue_V2(v2);

  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v3 = *(a1 + 72);
  v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = *v9;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v3);
        }

        if ([*(*(&v8 + 1) + 8 * i) state] == 2)
        {
          v4 = 1;
          goto LABEL_12;
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:

  return v4;
}

void sub_10002F2D4(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 104);
  if (v3)
  {
    v4 = *(a1 + 40) == v3;
  }

  else
  {
    v4 = 0;
  }

  if (!v4 || !sub_10002F1A8(v2))
  {
    return;
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    v5 = v5[11];
  }

  v30 = v5;
  v6 = [v30 objectForKeyedSubscript:&off_100209AA0];
  v7 = v6;
  if (v6 && *(v6 + 8) == 2)
  {
    goto LABEL_16;
  }

  v8 = *(a1 + 32);
  if (v8)
  {
    v8 = v8[12];
  }

  v9 = v8;
  v10 = [v9 objectForKeyedSubscript:&off_100209AA0];
  v11 = v10;
  if (v10 && v10[8] == 2)
  {

LABEL_16:

    return;
  }

  v12 = *(a1 + 32);
  if (v12)
  {
    v13 = *(v12 + 40);
  }

  else
  {
    v13 = 0;
  }

  v14 = [v13 count];

  if (!v14)
  {
    keyExistsAndHasValidFormat = 0;
    AppIntegerValue = CFPreferencesGetAppIntegerValue(@"EnableNRBTLMBackwardsCompatibility", @"Apple Global Domain", &keyExistsAndHasValidFormat);
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

      v24 = "";
      v26 = "[NRLinkManagerBluetooth startBluetoothWatchdog]_block_invoke";
      v27 = 787;
      v28 = AppIntegerValue == 1;
      _NRLogWithArgs();
    }

    if (AppIntegerValue == 1)
    {
      v16 = *(a1 + 32);
      v17 = "LEGACY";
      if (v16)
      {
        v18 = *(v16 + 37);
        *(v16 + 37) = v18 ^ 1;
        if (v18)
        {
          v17 = "NEW";
        }
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

        v19 = *(a1 + 32);
        v20 = "LEGACY";
        if (v19 && *(v19 + 37))
        {
          v20 = "NEW";
        }

        v28 = v17;
        v29 = v20;
        v27 = 794;
        v24 = "";
        v26 = "[NRLinkManagerBluetooth startBluetoothWatchdog]_block_invoke";
        _NRLogWithArgs();
      }

      sub_10002F748(*(a1 + 32), 0);
    }

    *(*(a1 + 32) + 104) = 0;
    [*(a1 + 32) reportEvent:{4900, v24, v26, v27, v28, v29}];
    v21 = *(a1 + 32);
    if (*(v21 + 36) == 1)
    {
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

        _NRLogWithArgs();
      }
    }

    else
    {
      *(v21 + 36) = 1;
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

        v25 = 5;
        _NRLogWithArgs();
      }

      v22 = objc_alloc_init(NRAnalyticsLinkManagerBluetooth);
      v23 = v22;
      if (v22)
      {
        v22->_noBTPipeCallbacks = 1;
      }

      [(NRAnalyticsLinkManagerBluetooth *)v22 submit];
    }
  }
}

void sub_10002F748(char *a1, int a2)
{
  if (a1)
  {
    v4 = &OBJC_IVAR___NRLinkManagerBluetooth__pipeRegistrations;
    if (a2)
    {
      v4 = &OBJC_IVAR___NRLinkManagerBluetooth__p2pPipeRegistrations;
    }

    v5 = *&a1[*v4];
    v6 = [NSNumber numberWithInteger:1];
    v9 = [v5 objectForKeyedSubscript:v6];

    v7 = v9;
    if (v9 && (*(v9 + 9) & 8) == 0)
    {
      if (a2)
      {
        v8 = @"p2p";
      }

      else
      {
        v8 = 0;
      }

      [a1 reportEvent:4214 details:v8];
      *(v9 + 9) = 8;
      sub_10002F840(a1, 1, a2);
      v7 = v9;
    }
  }
}

void sub_10002F840(uint64_t a1, uint64_t a2, int a3)
{
  if (a1)
  {
    v6 = *(a1 + 24);
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  dispatch_assert_queue_V2(v7);

  if (a2 == 3)
  {
    if (a3)
    {
      v12 = *(a1 + 96);
      goto LABEL_19;
    }

    v23 = *(a1 + 88);
LABEL_33:
    v30 = v23;
    v31 = [NSNumber numberWithInteger:3];
    v32 = [v30 objectForKeyedSubscript:v31];

    v10 = v32;
    if (v32)
    {
      v32[9] &= ~2u;
      if (v32[8] - 3 >= 0xFFFFFFFE)
      {
        [a1 reportEvent:4206 detailsFormat:@"%s %s", "Isochronous", "pipe"];
        v11 = @"com.apple.terminusLink.datagram";
        goto LABEL_36;
      }
    }

    goto LABEL_37;
  }

  if (a2 == 2)
  {
    if (a3)
    {
      v8 = *(a1 + 96);
      v9 = [NSNumber numberWithInteger:2];
      v32 = [v8 objectForKeyedSubscript:v9];

      v10 = v32;
      if (v32)
      {
        v32[9] &= ~2u;
        if (v32[8] - 3 >= 0xFFFFFFFE)
        {
          [a1 reportEvent:4206 detailsFormat:@"%s %s", "High", "p2pPipe"];
          v11 = @"com.apple.terminusLink.urgent.p2p";
LABEL_36:
          [*(a1 + 48) unregisterEndpoint:v11];
          v10 = v32;
          v32[8] = 3;
          goto LABEL_37;
        }
      }
    }

    else
    {
      v21 = *(a1 + 88);
      v22 = [NSNumber numberWithInteger:2];
      v32 = [v21 objectForKeyedSubscript:v22];

      v10 = v32;
      if (v32)
      {
        v32[9] &= ~2u;
        if (v32[8] - 3 >= 0xFFFFFFFE)
        {
          [a1 reportEvent:4206 detailsFormat:@"%s %s", "High", "pipe"];
          v11 = @"com.apple.terminusLink.urgent";
          goto LABEL_36;
        }
      }
    }

    goto LABEL_37;
  }

  if (!a3)
  {
    v24 = *(a1 + 88);
    v25 = [NSNumber numberWithInteger:1];
    v26 = [v24 objectForKeyedSubscript:v25];

    if (v26)
    {
      v26[9] &= ~2u;
      if (v26[8] - 3 >= 0xFFFFFFFE)
      {
        [a1 reportEvent:4206 detailsFormat:@"%s %s", "Medium", "pipe"];
        [*(a1 + 48) unregisterEndpoint:@"com.apple.terminusLink"];
        v26[8] = 3;
      }
    }

    v27 = *(a1 + 88);
    v28 = [NSNumber numberWithInteger:2];
    v29 = [v27 objectForKeyedSubscript:v28];

    if (v29)
    {
      v29[9] &= ~2u;
      if (v29[8] - 3 >= 0xFFFFFFFE)
      {
        [a1 reportEvent:4206 detailsFormat:@"%s %s", "High", "pipe"];
        [*(a1 + 48) unregisterEndpoint:@"com.apple.terminusLink.urgent"];
        v29[8] = 3;
      }
    }

    v23 = *(a1 + 88);
    goto LABEL_33;
  }

  v13 = *(a1 + 96);
  v14 = [NSNumber numberWithInteger:1];
  v15 = [v13 objectForKeyedSubscript:v14];

  if (v15)
  {
    v15[9] &= ~2u;
    if (v15[8] - 3 >= 0xFFFFFFFE)
    {
      [a1 reportEvent:4206 detailsFormat:@"%s %s", "Medium", "p2pPipe"];
      [*(a1 + 48) unregisterEndpoint:@"com.apple.terminusLink.p2p"];
      v15[8] = 3;
    }
  }

  v16 = *(a1 + 96);
  v17 = [NSNumber numberWithInteger:2];
  v18 = [v16 objectForKeyedSubscript:v17];

  if (v18)
  {
    v18[9] &= ~2u;
    if (v18[8] - 3 >= 0xFFFFFFFE)
    {
      [a1 reportEvent:4206 detailsFormat:@"%s %s", "High", "p2pPipe"];
      [*(a1 + 48) unregisterEndpoint:@"com.apple.terminusLink.urgent.p2p"];
      v18[8] = 3;
    }
  }

  v12 = *(a1 + 96);
LABEL_19:
  v19 = v12;
  v20 = [NSNumber numberWithInteger:3];
  v32 = [v19 objectForKeyedSubscript:v20];

  v10 = v32;
  if (v32)
  {
    v32[9] &= ~2u;
    if (v32[8] - 3 >= 0xFFFFFFFE)
    {
      [a1 reportEvent:4206 detailsFormat:@"%s %s", "Isochronous", "p2pPipe"];
      v11 = @"com.apple.terminusLink.datagram.p2p";
      goto LABEL_36;
    }
  }

LABEL_37:
}

void sub_10002FEC4(uint64_t a1, uint64_t a2)
{
  if (!*(a1 + 64))
  {
    return;
  }

  if (a2 >= 6)
  {
    v4 = [[NSString alloc] initWithFormat:@"UnknownState(%lld)", a2];
  }

  else
  {
    v4 = *(&off_1001FA940 + a2);
  }

  [a1 reportEvent:4100 details:v4];

  if (a2 != 5)
  {
    if (a2 > 3)
    {
      return;
    }

    sub_10002DDAC(a1);

    goto LABEL_29;
  }

  if ((*(a1 + 35) & 1) == 0)
  {
    sub_10002DB64(a1);
  }

  sub_1000301F4(a1);
  if (!*(a1 + 64))
  {
    return;
  }

  if (![*(a1 + 216) count])
  {
LABEL_29:
    sub_100030530(a1);
    return;
  }

  if ([*(a1 + 64) state] == 5)
  {
    v5 = objc_alloc_init(NSMutableArray);
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v6 = [*(a1 + 216) allValues];
    v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v18;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v18 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v12 = *(*(&v17 + 1) + 8 * i);
          if (v12)
          {
            if (![*(v12 + 8) count])
            {
              continue;
            }
          }

          else if (![0 count])
          {
            continue;
          }

          if (v12)
          {
            v11 = *(v12 + 8);
          }

          else
          {
            v11 = 0;
          }

          [v5 addObjectsFromArray:v11];
        }

        v8 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v8);
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

      v15 = 2934;
      v16 = v5;
      v13 = "";
      v14 = "[NRLinkManagerBluetooth startScanningIfNeeded]";
      _NRLogWithArgs();
    }

    [*(a1 + 64) scanForPeripheralsWithServices:v5 options:{0, v13, v14, v15, v16}];
    *(a1 + 34) = 1;
  }
}

void sub_1000301F4(id *a1)
{
  v2 = sub_10016C6D8();
  if ([v2 count])
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v14 = v2;
    v3 = v2;
    v4 = [v3 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v4)
    {
      v5 = *v19;
      do
      {
        for (i = 0; i != v4; i = i + 1)
        {
          if (*v19 != v5)
          {
            objc_enumerationMutation(v3);
          }

          v7 = *(*(&v18 + 1) + 8 * i);
          v8 = a1[23];
          if ([v8 containsObject:v7])
          {
          }

          else
          {
            v9 = [a1[25] objectForKeyedSubscript:v7];
            v10 = v9 == 0;

            if (v10)
            {
              v11 = [a1[24] objectForKeyedSubscript:v7];
              v12 = [v11 unsignedIntegerValue];

              if (v12 < 0xA)
              {
                v13 = [NSNumber numberWithUnsignedInteger:v12 + 1];
                [a1[24] setObject:v13 forKeyedSubscript:v7];

                [a1[23] addObject:v7];
                objc_initWeak(&location, a1);
                v15[0] = _NSConcreteStackBlock;
                v15[1] = 3221225472;
                v15[2] = sub_100030668;
                v15[3] = &unk_1001FA7D0;
                objc_copyWeak(&v16, &location);
                v15[4] = v7;
                sub_10003074C(a1, v7, v15);
                objc_destroyWeak(&v16);
                objc_destroyWeak(&location);
              }

              else
              {
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

                  _NRLogWithArgs();
                }
              }
            }
          }
        }

        v4 = [v3 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v4);
    }

    v2 = v14;
  }
}

void sub_100030510(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id location)
{
  objc_destroyWeak((v22 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

_BYTE *sub_100030530(_BYTE *result)
{
  if (*(result + 8))
  {
    v1 = result;
    if (result[34] == 1)
    {
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

        _NRLogWithArgs();
      }

      v2 = *(v1 + 10);
      *(v1 + 10) = 0;

      v1[34] = 0;
      v3 = *(v1 + 8);

      return [v3 stopScan];
    }
  }

  return result;
}

void sub_100030668(uint64_t a1, void *a2, char a3)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v7 = WeakRetained;
  if (WeakRetained)
  {
    v8 = WeakRetained[3];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100031040;
    v11[3] = &unk_1001FCB20;
    v12 = v7;
    v9 = v5;
    v15 = a3;
    v10 = *(a1 + 32);
    v13 = v9;
    v14 = v10;
    dispatch_async(v8, v11);
  }
}

void sub_10003074C(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v9 = a3;
  v10 = sub_100163B2C(NRDLocalDevice, v8, 0);
  if (v10)
  {
    v3 = v10;
    if (a1)
    {
      v11 = *(a1 + 24);
    }

    else
    {
      v11 = 0;
    }

    v4 = v11;
    v5 = v3[4];
    if (v5)
    {
      v12 = *(a1 + 64);
      if (v12)
      {
        objc_initWeak(&location, a1);
        if (qword_1002292B0 != -1)
        {
          dispatch_once(&qword_1002292B0, &stru_1001FC490);
        }

        v13 = qword_1002292B8;
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_100030B08;
        block[3] = &unk_1001FA820;
        objc_copyWeak(&v31, &location);
        v30 = v9;
        v26 = v8;
        v27 = v12;
        v28 = v5;
        v29 = v4;
        dispatch_async(v13, block);

        objc_destroyWeak(&v31);
        objc_destroyWeak(&location);
      }

      else
      {
        v14 = _NRCopyLogObjectForNRUUID();
        IsLevelEnabled = _NRLogIsLevelEnabled();

        if (IsLevelEnabled)
        {
          v16 = _NRCopyLogObjectForNRUUID();
          _NRLogWithArgs();
        }

        if (v9)
        {
          (*(v9 + 2))(v9, v8, 0);
        }
      }

      goto LABEL_14;
    }
  }

  else
  {
    v17 = sub_10002D6B4();
    v18 = _NRLogIsLevelEnabled();

    if (v18)
    {
      v19 = sub_10002D6B4();
      _NRLogWithArgs();
    }

    v8 = _os_log_pack_size();
    v9 = block - ((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0);
    v20 = *__error();
    v21 = _os_log_pack_fill();
    *v21 = 136446210;
    *(v21 + 4) = "[NRLinkManagerBluetooth updatePairingInfoForNRUUID:completionBlock:]";
    sub_10002D6B4();
    _NRLogAbortWithPack();
    __break(1u);
  }

  v22 = _NRCopyLogObjectForNRUUID();
  v23 = _NRLogIsLevelEnabled();

  if (v23)
  {
    v24 = _NRCopyLogObjectForNRUUID();
    _NRLogWithArgs();
  }

  if (v9)
  {
    (*(v9 + 2))(v9, v8, 0);
  }

LABEL_14:
}

void sub_100030B08(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  if (WeakRetained)
  {
    v3 = [*(a1 + 40) sharedPairingAgent];
    v4 = v3;
    if (v3)
    {
      v5 = [v3 retrievePairedPeers];
      v6 = [v5 valueForKey:@"identifier"];
      if ([v6 containsObject:*(a1 + 48)])
      {
        v7 = *(a1 + 40);
        v44 = *(a1 + 48);
        v8 = [NSArray arrayWithObjects:&v44 count:1];
        v9 = [v7 retrievePeripheralsWithIdentifiers:v8];

        if ([v9 count])
        {
          v10 = [v9 firstObject];
          v11 = [*(a1 + 40) retrievePairingInfoForPeripheral:v10];
          if (v11)
          {
            v12 = *(a1 + 56);
            block[0] = _NSConcreteStackBlock;
            block[1] = 3221225472;
            block[2] = sub_100030F04;
            block[3] = &unk_1001FB588;
            v41 = *(a1 + 32);
            v42 = v11;
            v43 = *(a1 + 64);
            dispatch_async(v12, block);
          }

          else
          {
            v32 = *(a1 + 32);
            v33 = _NRCopyLogObjectForNRUUID();
            IsLevelEnabled = _NRLogIsLevelEnabled();

            if (IsLevelEnabled)
            {
              v35 = *(a1 + 32);
              v36 = _NRCopyLogObjectForNRUUID();
              _NRLogWithArgs();
            }

            v37 = *(a1 + 64);
            if (v37)
            {
              (*(v37 + 16))(v37, *(a1 + 32), 0);
            }
          }
        }

        else
        {
          v26 = *(a1 + 32);
          v27 = _NRCopyLogObjectForNRUUID();
          v28 = _NRLogIsLevelEnabled();

          if (v28)
          {
            v29 = *(a1 + 32);
            v30 = _NRCopyLogObjectForNRUUID();
            v39 = *(a1 + 48);
            _NRLogWithArgs();
          }

          v31 = *(a1 + 64);
          if (v31)
          {
            (*(v31 + 16))(v31, *(a1 + 32), 0);
          }
        }
      }

      else
      {
        v20 = *(a1 + 32);
        v21 = _NRCopyLogObjectForNRUUID();
        v22 = _NRLogIsLevelEnabled();

        if (v22)
        {
          v23 = *(a1 + 32);
          v24 = _NRCopyLogObjectForNRUUID();
          v38 = *(a1 + 48);
          _NRLogWithArgs();
        }

        v25 = *(a1 + 64);
        if (v25)
        {
          (*(v25 + 16))(v25, *(a1 + 32), 0);
        }
      }
    }

    else
    {
      v14 = *(a1 + 32);
      v15 = _NRCopyLogObjectForNRUUID();
      v16 = _NRLogIsLevelEnabled();

      if (v16)
      {
        v17 = *(a1 + 32);
        v18 = _NRCopyLogObjectForNRUUID();
        _NRLogWithArgs();
      }

      v19 = *(a1 + 64);
      if (v19)
      {
        (*(v19 + 16))(v19, *(a1 + 32), 0);
      }
    }
  }

  else
  {
    v13 = *(a1 + 64);
    if (v13)
    {
      (*(v13 + 16))(v13, *(a1 + 32), 0);
    }
  }
}

void sub_100030F04(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100030FC0;
  v4[3] = &unk_1001FA7F8;
  v6 = *(a1 + 48);
  v5 = *(a1 + 32);
  sub_100174BBC(NRDLocalDevice, v2, v3, v4);
}

uint64_t sub_100030FC0(uint64_t a1, void *a2, uint64_t a3)
{
  v7 = a2;
  if (a3)
  {
    sub_100172424(NRDLocalDevice, v7);
  }

  v5 = *(a1 + 40);
  if (v5)
  {
    (*(v5 + 16))(v5, *(a1 + 32), a3);
  }

  return _objc_release_x1();
}

id sub_100031040(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = *(v2 + 184);
  }

  else
  {
    v3 = 0;
  }

  [v3 removeObject:*(a1 + 40)];
  if (*(a1 + 56) == 1)
  {
    v4 = *(a1 + 32);
    if (v4)
    {
      v5 = *(v4 + 192);
    }

    else
    {
      v5 = 0;
    }

    [v5 setObject:0 forKeyedSubscript:*(a1 + 48)];
  }

  else
  {
    objc_initWeak(&location, *(a1 + 32));
    v6 = *(a1 + 32);
    v7 = *(a1 + 48);
    v30[0] = _NSConcreteStackBlock;
    v30[1] = 3221225472;
    v30[2] = sub_100031574;
    v30[3] = &unk_1001FC730;
    objc_copyWeak(&v31, &location);
    v8 = v7;
    v9 = v30;
    if (v6)
    {
      v10 = v6[3];
      dispatch_assert_queue_V2(v10);

      if (v8)
      {
        if (!v6[25])
        {
          v11 = objc_alloc_init(NSMutableDictionary);
          v12 = v6[25];
          v6[25] = v11;
        }

        if (!v6[26])
        {
          v13 = objc_alloc_init(NSMutableDictionary);
          v14 = v6[26];
          v6[26] = v13;
        }

        v15 = [NSNumber numberWithUnsignedLongLong:nr_continuous_time()];
        [v6[25] setObject:v15 forKeyedSubscript:v8];

        v16 = objc_retainBlock(v9);
        [v6[26] setObject:v16 forKeyedSubscript:v8];

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

          _NRLogWithArgs();
        }

        v17 = v6[3];
        dispatch_assert_queue_V2(v17);

        if ([v6[25] count] && !v6[18])
        {
          v18 = v6[3];
          v19 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, v18);

          dispatch_source_set_timer(v19, 0x8000000000000000, 0xDF8475800uLL, 0x12A05F200uLL);
          objc_initWeak(from, v6);
          handler[0] = _NSConcreteStackBlock;
          handler[1] = 3221225472;
          handler[2] = sub_100037C64;
          handler[3] = &unk_1001FB8D8;
          objc_copyWeak(&v36, from);
          v20 = v19;
          v34 = v20;
          v35 = v6;
          dispatch_source_set_event_handler(v20, handler);
          dispatch_resume(v20);
          objc_storeStrong(v6 + 18, v19);
          if (qword_100228F70 != -1)
          {
            dispatch_once(&qword_100228F70, &stru_1001FA8E0);
          }

          v21 = qword_100228F68;
          IsLevelEnabled = _NRLogIsLevelEnabled();

          if (IsLevelEnabled)
          {
            if (qword_100228F70 != -1)
            {
              dispatch_once(&qword_100228F70, &stru_1001FA8E0);
            }

            v23 = qword_100228F68;
            v24 = v6[25];
            [v24 count];
            _NRLogWithArgs();
          }

          objc_destroyWeak(&v36);
          objc_destroyWeak(from);
        }
      }

      else
      {
        v27 = sub_10002D6B4();
        v28 = _NRLogIsLevelEnabled();

        if (v28)
        {
          v29 = sub_10002D6B4();
          _NRLogWithArgs();
        }
      }
    }

    objc_destroyWeak(&v31);
    objc_destroyWeak(&location);
  }

  v25 = *(a1 + 32);
  if (v25)
  {
    result = [*(v25 + 184) count];
    if (result)
    {
      return result;
    }

    return sub_1000315B8(*(a1 + 32));
  }

  result = [0 count];
  if (!result)
  {
    return sub_1000315B8(*(a1 + 32));
  }

  return result;
}

void sub_100031538(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, id a26)
{
  objc_destroyWeak(&a26);
  objc_destroyWeak((v26 - 112));
  objc_destroyWeak(&a18);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100031574(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    sub_1000301F4();
    WeakRetained = v2;
  }
}

void sub_1000315B8(uint64_t a1)
{
  if (a1)
  {
    v1 = a1;
    v2 = *(a1 + 24);
    dispatch_assert_queue_V2(v2);

    sub_10003192C(v1);
    v3 = [*(v1 + 40) copy];
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    obj = v3;
    p_vtable = NRSCDInterfaceConfig.vtable;
    v32 = [obj countByEnumeratingWithState:&v33 objects:v37 count:16];
    if (v32)
    {
      v5 = *v34;
      v6 = NRSCDInterfaceConfig.vtable;
      v7 = &OBJC_IVAR___BTPResolver__sdRefResolve;
      v30 = *v34;
      do
      {
        for (i = 0; i != v32; i = i + 1)
        {
          if (*v34 != v5)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v33 + 1) + 8 * i);
          if (v11)
          {
            v12 = *(v11 + 391);
          }

          else
          {
            v12 = 0;
          }

          v13 = v12;
          objc_opt_self();
          v14 = sub_100168BE8((v6 + 37), v13, 1);

          WeakRetained = objc_loadWeakRetained((v1 + v7[56]));
          if (!v14)
          {
            [v11 cancelWithReason:{@"Device has been disabled %@", 0}];
            nrUUID = 0;
            goto LABEL_7;
          }

          if ((v14->_databaseFlags & 2) == 0)
          {
            goto LABEL_6;
          }

          v16 = objc_loadWeakRetained((v1 + 16));
          v17 = v1;
          v18 = p_vtable;
          v19 = v16;
          [v11 nrUUID];
          v21 = v20 = v7;
          v22 = [v19 perpetualStandaloneMeadowEnabledForNRUUID:v21];

          v7 = v20;
          p_vtable = v18;
          v1 = v17;
          v5 = v30;
          v6 = (NRSCDInterfaceConfig + 24);
          if (v22)
          {
LABEL_6:
            [v11 cancelWithReason:v14];
            nrUUID = v14->_nrUUID;
LABEL_7:
            v10 = nrUUID;
            [WeakRetained pipeDidConnectForNRUUID:0 nrUUID:v10];
          }
        }

        v32 = [obj countByEnumeratingWithState:&v33 objects:v37 count:16];
      }

      while (v32);
    }

    v23 = *(v1 + 48);
    if (v23)
    {
      sub_100032164(v1, [v23 state]);
    }

    v24 = *(v1 + 64);
    if (v24)
    {
      sub_10002FEC4(v1, [v24 state]);
    }

    v25 = *(v1 + 56);
    if (v25)
    {
      sub_100032610(v1, [v25 state]);
    }

    v26 = sub_10016CA28();
    if (![v26 count] && !objc_msgSend(*(v1 + 176), "count"))
    {
      if (*(v1 + 64))
      {
        sub_10002DDAC(v1);
        [*(v1 + 64) setDelegate:0];
        v27 = *(v1 + 64);
        *(v1 + 64) = 0;
      }

      v28 = *(v1 + 72);
      *(v1 + 72) = 0;

      sub_1000327B8(v1);
      sub_100032A1C(v1);
      v29 = *(v1 + 152);
      *(v1 + 152) = 0;
    }

    sub_100032B28(v1);
  }
}

void sub_10003192C(uint64_t a1)
{
  v2 = &OBJC_IVAR___BTPResolver__sdRefResolve;
  *(a1 + 39) = 0;
  v3 = &OBJC_IVAR___BTPResolver__sdRefResolve;
  *(a1 + 38) = 0;
  v4 = sub_10016CA28();
  if (![v4 count] && !objc_msgSend(*(a1 + 176), "count"))
  {
    goto LABEL_85;
  }

  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v58 objects:v66 count:16];
  if (!v6)
  {

    v31 = 0;
    goto LABEL_46;
  }

  v7 = v6;
  v56 = v4;
  v57 = 0;
  v8 = *v59;
  while (2)
  {
    for (i = 0; i != v7; i = i + 1)
    {
      if (*v59 != v8)
      {
        objc_enumerationMutation(v5);
      }

      v10 = *(*(&v58 + 1) + 8 * i);
      v11 = sub_100163A30(NRDLocalDevice, v10);
      if (a1)
      {
        WeakRetained = objc_loadWeakRetained((a1 + 16));
      }

      else
      {
        WeakRetained = 0;
      }

      v13 = [WeakRetained perpetualStandaloneMeadowEnabledForNRUUID:{v10, v52, v53, v54, v55}];

      if (!v13)
      {
        if (v11)
        {
          v14 = v11[18];
          if (v14)
          {
            v15 = v14;
            v16 = v11[18];
            if ([v16 bluetoothEndpointType] == 1)
            {
            }

            else
            {
              v17 = v11[18];
              v18 = [v17 bluetoothEndpointType];

              if (v18 != 2)
              {
                v28 = v11[18];
                v29 = [v28 bluetoothEndpointType];

                if (v29 != 3)
                {
                  goto LABEL_28;
                }

                v30 = sub_10003615C(a1, v11);
                v20 = &OBJC_IVAR___NRLinkManagerBluetooth__hasEnabledDevicesUsingP2P;
                if (!v30)
                {
                  goto LABEL_28;
                }

LABEL_26:
                *(a1 + *v20) = 1;
LABEL_27:
                if (!v11)
                {
                  v21 = 0;
LABEL_29:
                  v22 = v21;
                  v23 = [v22 bluetoothRole];

                  if (v23 == 1)
                  {
                    BYTE4(v57) = 1;
                  }

                  else
                  {
                    if (v11)
                    {
                      v24 = v11[18];
                    }

                    else
                    {
                      v24 = 0;
                    }

                    v25 = v24;
                    v26 = [v25 bluetoothRole];

                    if (v26 == 2)
                    {
                      LOBYTE(v57) = 1;
                    }

                    else
                    {
                      v27 = sub_10013FF60(v11);
                      LOBYTE(v57) = (v27 == 2) | v57;
                      BYTE4(v57) |= v27 != 2;
                    }
                  }

                  goto LABEL_8;
                }

LABEL_28:
                v21 = v11[18];
                goto LABEL_29;
              }
            }
          }
        }

        v19 = sub_10003615C(a1, v11);
        v20 = &OBJC_IVAR___NRLinkManagerBluetooth__hasEnabledDevicesUsingClientServer;
        if ((v19 & 1) == 0)
        {
          goto LABEL_27;
        }

        goto LABEL_26;
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

        v54 = 536;
        v55 = v11;
        v52 = "";
        v53 = "[NRLinkManagerBluetooth setup]";
        _NRLogWithArgs();
      }

LABEL_8:
    }

    v7 = [v5 countByEnumeratingWithState:&v58 objects:v66 count:16];
    if (v7)
    {
      continue;
    }

    break;
  }

  if ((v57 & 0x100000000) != 0)
  {
    *(a1 + 35) = 0;
    v4 = v56;
    v3 = &OBJC_IVAR___BTPResolver__sdRefResolve;
    v2 = &OBJC_IVAR___BTPResolver__sdRefResolve;
    v31 = v57;
    goto LABEL_49;
  }

  v4 = v56;
  v3 = &OBJC_IVAR___BTPResolver__sdRefResolve;
  v2 = &OBJC_IVAR___BTPResolver__sdRefResolve;
  v31 = v57;
LABEL_46:
  v32 = sub_10016C6D8();
  if ([v32 count])
  {
    *(a1 + 35) = 1;

    goto LABEL_49;
  }

  *(a1 + 35) = 0;

  if (![*(a1 + 216) count])
  {
    if (*(a1 + 64))
    {
      sub_10002DDAC(a1);
      [*(a1 + 64) setDelegate:0];
      v38 = *(a1 + 64);
      *(a1 + 64) = 0;
    }

    v39 = *(a1 + 72);
    *(a1 + 72) = 0;

    if ((v31 & 1) == 0)
    {
      goto LABEL_63;
    }

    goto LABEL_66;
  }

LABEL_49:
  if (!*(a1 + 64))
  {
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

      _NRLogWithArgs();
    }

    v33 = [CBCentralManager alloc];
    v34 = *(a1 + 24);
    v64 = CBCentralManagerOptionShowPowerAlertKey;
    v65 = &__kCFBooleanTrue;
    v35 = [NSDictionary dictionaryWithObjects:&v65 forKeys:&v64 count:1];
    v36 = [v33 initWithDelegate:a1 queue:v34 options:v35];
    v37 = *(a1 + 64);
    *(a1 + 64) = v36;

    if ((v31 & 1) == 0)
    {
      goto LABEL_63;
    }

LABEL_66:
    if (!*(a1 + 56))
    {
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

        _NRLogWithArgs();
      }

      v42 = [CBPeripheralManager alloc];
      v43 = *(a1 + 24);
      v62 = CBPeripheralManagerOptionShowPowerAlertKey;
      v63 = &__kCFBooleanTrue;
      v44 = [NSDictionary dictionaryWithObjects:&v63 forKeys:&v62 count:1];
      v45 = [v42 initWithDelegate:a1 queue:v43 options:v44];
      v46 = *(a1 + 56);
      *(a1 + 56) = v45;
    }

    goto LABEL_74;
  }

  if (v31)
  {
    goto LABEL_66;
  }

LABEL_63:
  v40 = *(a1 + 176);
  if ([v40 count])
  {

    goto LABEL_66;
  }

  v41 = [*(a1 + 224) count];

  if (v41)
  {
    goto LABEL_66;
  }

  sub_1000327B8(a1);
LABEL_74:
  if (!*(a1 + 48))
  {
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

      _NRLogWithArgs();
    }

    v47 = [CBScalablePipeManager alloc];
    v48 = *(a1 + 24);
    v49 = [v47 initWithDelegate:a1 queue:v48];
    v50 = *(a1 + 48);
    *(a1 + 48) = v49;
  }

  v51 = *(a1 + v2[59]);
  if (v51 != 1 || (*(a1 + v3[58]) & 1) == 0)
  {
    sub_10002F840(a1, 1, v51 ^ 1);
  }

LABEL_85:
}

void sub_100032164(uint64_t a1, unint64_t a2)
{
  if (a1)
  {
    v4 = *(a1 + 24);
    dispatch_assert_queue_V2(v4);

    if (a2)
    {
      if (a2 == 5 && sub_10016D0AC())
      {
        sub_100036770(a1, 1, 0);

        sub_100036770(a1, 1, 1);
      }

      else
      {
        if ((sub_10016D0AC() & 1) == 0)
        {
          *(a1 + 37) = 1;
        }

        sub_10002F840(a1, 1, 0);
        sub_10002F840(a1, 1, 1);
        v5 = [*(a1 + 40) copy];
        v30 = 0u;
        v31 = 0u;
        v32 = 0u;
        v33 = 0u;
        obj = v5;
        v6 = [obj countByEnumeratingWithState:&v30 objects:v34 count:16];
        if (v6)
        {
          v7 = v6;
          v8 = *v31;
          do
          {
            for (i = 0; i != v7; i = i + 1)
            {
              if (*v31 != v8)
              {
                objc_enumerationMutation(obj);
              }

              v12 = *(*(&v30 + 1) + 8 * i);
              [v12 setNoTransport:1];
              v13 = [v12 nrUUID];
              if (a2 < 6)
              {
                v10 = *(&off_1001FA940 + a2);
              }

              else
              {
                v10 = [[NSString alloc] initWithFormat:@"UnknownState(%lld)", a2];
              }

              [v12 cancelWithReason:{@"pipe manager state %@", v10}];

              WeakRetained = objc_loadWeakRetained((a1 + 128));
              [WeakRetained pipeDidConnectForNRUUID:0 nrUUID:v13];

              sub_100037950(a1, v13);
            }

            v7 = [obj countByEnumeratingWithState:&v30 objects:v34 count:16];
          }

          while (v7);
        }

        if (a2 == 5)
        {
          v14 = *(a1 + 88);
          v15 = [v14 objectForKeyedSubscript:&off_100209AA0];
          if (v15)
          {
            v15[9] &= ~8u;
          }

          v16 = *(a1 + 88);
          v17 = [v16 objectForKeyedSubscript:&off_100209AB8];
          if (v17)
          {
            v17[9] &= ~8u;
          }

          v18 = *(a1 + 88);
          v19 = [v18 objectForKeyedSubscript:&off_100209AD0];
          if (v19)
          {
            v19[9] &= ~8u;
          }

          v20 = *(a1 + 96);
          v21 = [v20 objectForKeyedSubscript:&off_100209AA0];
          if (v21)
          {
            v21[9] &= ~8u;
          }

          v22 = *(a1 + 96);
          v23 = [v22 objectForKeyedSubscript:&off_100209AB8];
          if (v23)
          {
            v23[9] &= ~8u;
          }

          v24 = *(a1 + 96);
          v25 = [v24 objectForKeyedSubscript:&off_100209AD0];
          if (v25)
          {
            v25[9] &= ~8u;
          }
        }

        else
        {
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

            v28 = 1756;
            v26 = "";
            v27 = "[NRLinkManagerBluetooth handleSPMStateChange:]";
            _NRLogWithArgs();
          }

          [*(a1 + 88) removeAllObjects];
          [*(a1 + 96) removeAllObjects];
        }
      }
    }
  }
}

void sub_100032610(uint64_t a1, unint64_t a2)
{
  if (!*(a1 + 56))
  {
    return;
  }

  if (a2 >= 6)
  {
    v3 = [[NSString alloc] initWithFormat:@"UnknownState(%lld)", a2];
  }

  else
  {
    v3 = *(&off_1001FA940 + a2);
  }

  [a1 reportEvent:3500 details:v3];

  v4 = *(a1 + 56);
  if (!v4 || [v4 state] != 5 || (sub_10016D0AC() & 1) == 0 && !objc_msgSend(*(a1 + 224), "count"))
  {
    goto LABEL_18;
  }

  if (!sub_100033FC0(a1))
  {
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

      _NRLogWithArgs();
    }

LABEL_18:
    sub_100033D54(a1, 0);
    goto LABEL_19;
  }

  sub_1000347A4(a1);
LABEL_19:

  sub_100034ED0(a1);
}

void sub_1000327B8(uint64_t a1)
{
  if (a1)
  {
    if (*(a1 + 56))
    {
      sub_100033D54(a1, 0);
      v2 = *(a1 + 168);
      if (v2)
      {
        v3 = v2;
        v4 = [*(a1 + 168) count];

        if (v4)
        {
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

            v5 = *(a1 + 168);
            v6 = qword_100228F68;
            v18 = 435;
            v19 = v5;
            v16 = "";
            v17 = "[NRLinkManagerBluetooth invalidatePeripheralManager]";
            _NRLogWithArgs();
          }

          v22 = 0u;
          v23 = 0u;
          v20 = 0u;
          v21 = 0u;
          v7 = *(a1 + 168);
          v8 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
          if (v8)
          {
            v9 = v8;
            v10 = *v21;
            do
            {
              for (i = 0; i != v9; i = i + 1)
              {
                if (*v21 != v10)
                {
                  objc_enumerationMutation(v7);
                }

                v12 = *(*(&v20 + 1) + 8 * i);
                v13 = *(a1 + 56);
                [v13 unpublishL2CAPChannel:{objc_msgSend(v12, "unsignedShortValue")}];
              }

              v9 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
            }

            while (v9);
          }

          v14 = *(a1 + 168);
          *(a1 + 168) = 0;
        }
      }

      [*(a1 + 56) setDelegate:{0, v16, v17, v18, v19, v20}];
      v15 = *(a1 + 56);
      *(a1 + 56) = 0;
    }

    *(a1 + 33) = 0;
  }
}

void sub_100032A1C(uint64_t a1)
{
  if (*(a1 + 136))
  {
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

      _NRLogWithArgs();
    }

    dispatch_source_cancel(*(a1 + 136));
    v2 = *(a1 + 136);
    *(a1 + 136) = 0;
  }
}

void sub_100032B28(uint64_t a1)
{
  if (a1 && _NRIsAppleInternal())
  {
    p_vtable = NRSCDInterfaceConfig.vtable;
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

      v71 = 3254;
      v69 = "";
      v70 = "[NRLinkManagerBluetooth checkBluetoothPairingState]";
      _NRLogWithArgs();
    }

    objc_opt_self();
    v2 = sub_100003490();
    dispatch_assert_queue_V2(v2);

    sub_1001619D8();
    v3 = objc_alloc_init(NSMutableArray);
    v87 = 0u;
    v88 = 0u;
    v89 = 0u;
    v90 = 0u;
    v4 = qword_100229428;
    v5 = [v4 countByEnumeratingWithState:&v87 objects:v92 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v88;
      do
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v88 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v87 + 1) + 8 * i);
          v10 = [qword_100229428 objectForKeyedSubscript:{v9, v69, v70, v71}];
          v11 = v10;
          if (v10 && (*(v10 + 48) & 0x80) != 0)
          {
            [v3 addObject:v9];
          }
        }

        v6 = [v4 countByEnumeratingWithState:&v87 objects:v92 count:16];
      }

      while (v6);
    }

    v83 = 0u;
    v84 = 0u;
    v85 = 0u;
    v86 = 0u;
    obj = v3;
    v76 = [obj countByEnumeratingWithState:&v83 objects:v91 count:16];
    if (v76)
    {
      v75 = *v84;
      do
      {
        for (j = 0; j != v76; j = j + 1)
        {
          if (*v84 != v75)
          {
            objc_enumerationMutation(obj);
          }

          v13 = *(*(&v83 + 1) + 8 * j);
          v14 = sub_100163A30(NRDLocalDevice, v13);
          v15 = v14;
          if (v14)
          {
            v16 = *(v14 + 48);
            if ((v16 & 2) != 0)
            {
              goto LABEL_64;
            }

            v17 = *(v14 + 24);
          }

          else
          {
            v17 = 0;
          }

          v18 = v17;
          objc_opt_self();
          objc_opt_self();
          if (qword_100228EE8 != -1)
          {
            dispatch_once(&qword_100228EE8, &stru_1001FA590);
          }

          v19 = qword_100228EE0;
          v20 = v18;
          if (v19)
          {
            v89 = 0u;
            v90 = 0u;
            v87 = 0u;
            v88 = 0u;
            v21 = *(v19 + 64);
            v22 = [v21 countByEnumeratingWithState:&v87 objects:v92 count:16];
            if (v22)
            {
              v23 = v22;
              v24 = *v88;
LABEL_38:
              v25 = 0;
              while (1)
              {
                if (*v88 != v24)
                {
                  objc_enumerationMutation(v21);
                }

                v26 = *(*(&v87 + 1) + 8 * v25);
                v27 = v26 ? v26[2] : 0;
                if ([v27 isEqual:{v20, v69, v70, v71, v72}])
                {
                  break;
                }

                if (v23 == ++v25)
                {
                  v28 = [v21 countByEnumeratingWithState:&v87 objects:v92 count:16];
                  v23 = v28;
                  if (v28)
                  {
                    goto LABEL_38;
                  }

                  goto LABEL_48;
                }
              }

              v29 = v26;

              if (!v26)
              {
                goto LABEL_49;
              }

              p_vtable = (NRSCDInterfaceConfig + 24);
              if (v29[8] == 1)
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

                  v71 = 230;
                  v69 = "";
                  v70 = "[NRBluetoothPairingManager removePairerForNRUUID:]";
                  _NRLogWithArgs();
                }

                goto LABEL_61;
              }
            }

            else
            {
LABEL_48:

LABEL_49:
              v29 = 0;
              p_vtable = NRSCDInterfaceConfig.vtable;
            }

            [*(v19 + 64) removeObject:{v29, v69}];
            v30 = *(v19 + 72);
            if (v30 && [*(v30 + 16) isEqual:v20])
            {
              sub_1000200B0(v19);
            }

LABEL_61:
          }

          if (v15)
          {
            v16 = *(v15 + 48);
LABEL_64:
            if ((v16 & 0xC3) == 0xC0)
            {
              if (p_vtable[494] != -1)
              {
                dispatch_once(&qword_100228F70, &stru_1001FA8E0);
              }

              if (_NRLogIsLevelEnabled())
              {
                if (p_vtable[494] != -1)
                {
                  dispatch_once(&qword_100228F70, &stru_1001FA8E0);
                }

                v71 = 3266;
                v72 = v15;
                v69 = "";
                v70 = "[NRLinkManagerBluetooth checkBluetoothPairingState]";
                _NRLogWithArgs();
              }

              v31 = [NRBluetoothPairer alloc];
              v32 = *(v15 + 24);
              v33 = sub_100022944(v31, v32);

              v34 = *(a1 + 24);
              v82[0] = _NSConcreteStackBlock;
              v82[1] = 3221225472;
              v82[2] = sub_1000338B4;
              v82[3] = &unk_1001FA898;
              v82[4] = v13;
              sub_100022CE8(v33, v34, v82);
            }
          }

          v35 = v13;
          objc_opt_self();
          objc_opt_self();
          if (qword_100228EE8 != -1)
          {
            dispatch_once(&qword_100228EE8, &stru_1001FA590);
          }

          v36 = qword_100228EE0;
          v37 = v35;
          if (v36)
          {
            v38 = *(v36 + 72);
            if (v38 && [*(v38 + 16) isEqual:v37])
            {
LABEL_103:

              if (p_vtable[494] != -1)
              {
                dispatch_once(&qword_100228F70, &stru_1001FA8E0);
              }

              if (_NRLogIsLevelEnabled())
              {
                if (p_vtable[494] != -1)
                {
                  dispatch_once(&qword_100228F70, &stru_1001FA8E0);
                }

                v71 = 3282;
                v72 = v37;
                v69 = "";
                v70 = "[NRLinkManagerBluetooth checkBluetoothPairingState]";
                _NRLogWithArgs();
              }

              goto LABEL_27;
            }

            v89 = 0u;
            v90 = 0u;
            v87 = 0u;
            v88 = 0u;
            v39 = *(v36 + 64);
            v40 = [v39 countByEnumeratingWithState:&v87 objects:v92 count:16];
            if (v40)
            {
              v41 = v40;
              v42 = *v88;
              do
              {
                v43 = 0;
                do
                {
                  if (*v88 != v42)
                  {
                    objc_enumerationMutation(v39);
                  }

                  v44 = *(*(&v87 + 1) + 8 * v43);
                  if (v44)
                  {
                    v45 = *(v44 + 16);
                  }

                  else
                  {
                    v45 = 0;
                  }

                  if ([v45 isEqual:{v37, v69}])
                  {

                    goto LABEL_103;
                  }

                  v43 = v43 + 1;
                }

                while (v41 != v43);
                v46 = [v39 countByEnumeratingWithState:&v87 objects:v92 count:16];
                v41 = v46;
              }

              while (v46);
            }
          }

          if (v15 && (*(v15 + 48) & 0xC2) == 0x82)
          {
            v47 = *(v15 + 24);
            objc_opt_self();
            v48 = [qword_100229458 objectForKeyedSubscript:v47];

            v49 = p_vtable[494];
            if (v48)
            {
              if (v49 != -1)
              {
                dispatch_once(&qword_100228F70, &stru_1001FA8E0);
              }

              if (_NRLogIsLevelEnabled())
              {
                if (p_vtable[494] != -1)
                {
                  dispatch_once(&qword_100228F70, &stru_1001FA8E0);
                }

                v71 = 3291;
                v72 = v15;
                v69 = "";
                v70 = "[NRLinkManagerBluetooth checkBluetoothPairingState]";
                _NRLogWithArgs();
              }

              v50 = objc_alloc_init(NRBluetoothPairerParameters);
              v51 = *(v15 + 104);

              if (v51)
              {
                if (v50)
                {
                  v52 = 5;
                  goto LABEL_118;
                }

                goto LABEL_119;
              }

              if (_NRIsAppleInternal())
              {
                if (v50)
                {
                  v52 = 0;
LABEL_118:
                  v50->_pairingType = v52;
                  objc_storeStrong(&v50->_bluetoothUUID, v48);
                }

LABEL_119:
                v53 = [NRBluetoothPairer alloc];
                v54 = *(v15 + 24);
                v55 = sub_100022944(v53, v54);

                v56 = *(a1 + 24);
                v57 = v56;
                v77[0] = _NSConcreteStackBlock;
                v77[1] = 3221225472;
                v78 = sub_100033AC8;
                v79 = &unk_1001FA8C0;
                v80 = v55;
                v81 = v37;
                v58 = v55;
                v59 = v50;
                v60 = v57;
                v61 = v77;
                if (v58)
                {
                  if (v60)
                  {
                    if (v59)
                    {
                      pairingType = v59->_pairingType;
                      if (pairingType && pairingType != 5)
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

                          v71 = 78;
                          v72 = v59->_pairingType;
                          v69 = "";
                          v70 = "[NRBluetoothPairer pairWithParameters:completionQueue:completionBlock:]";
                          _NRLogWithArgs();
                        }

                        v78(v61, 0, 0);
                      }

                      else
                      {
                        *(v58 + 3) = pairingType;
                        objc_storeStrong(v58 + 5, v50);
                        objc_storeStrong(v58 + 6, v56);
                        objc_setProperty_nonatomic_copy(v58, v63, v61, 56);
                        objc_opt_self();
                        if (qword_100228EE8 != -1)
                        {
                          dispatch_once(&qword_100228EE8, &stru_1001FA590);
                        }

                        sub_100022B6C(qword_100228EE0, v58);
                      }

                      goto LABEL_25;
                    }

                    if (qword_100228EF8 != -1)
                    {
                      dispatch_once(&qword_100228EF8, &stru_1001FA5D8);
                    }

                    v66 = qword_100228EF0;
                    IsLevelEnabled = _NRLogIsLevelEnabled();

                    if (IsLevelEnabled)
                    {
LABEL_145:
                      v68 = sub_100020970();
                      v69 = "[NRBluetoothPairer pairWithParameters:completionQueue:completionBlock:]";
                      _NRLogWithArgs();
                    }
                  }

                  else
                  {
                    if (qword_100228EF8 != -1)
                    {
                      dispatch_once(&qword_100228EF8, &stru_1001FA5D8);
                    }

                    v64 = qword_100228EF0;
                    v65 = _NRLogIsLevelEnabled();

                    if (v65)
                    {
                      goto LABEL_145;
                    }
                  }
                }

LABEL_25:
              }

              else
              {
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

                  v71 = 3298;
                  v72 = v15;
                  v69 = "";
                  v70 = "[NRLinkManagerBluetooth checkBluetoothPairingState]";
                  _NRLogWithArgs();
                }
              }

              p_vtable = (NRSCDInterfaceConfig + 24);
              goto LABEL_27;
            }

            if (v49 != -1)
            {
              dispatch_once(&qword_100228F70, &stru_1001FA8E0);
            }

            if (_NRLogIsLevelEnabled())
            {
              if (p_vtable[494] != -1)
              {
                dispatch_once(&qword_100228F70, &stru_1001FA8E0);
              }

              v71 = 3288;
              v72 = v15;
              v69 = "";
              v70 = "[NRLinkManagerBluetooth checkBluetoothPairingState]";
              _NRLogWithArgs();
            }
          }

LABEL_27:
        }

        v76 = [obj countByEnumeratingWithState:&v83 objects:v91 count:16];
      }

      while (v76);
    }
  }
}

void sub_1000338B4(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
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

      _NRLogWithArgs();
    }

    sub_10017440C(NRDLocalDevice, 0, *(a1 + 32));
    v6 = *(a1 + 32);
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100033CA4;
    v11[3] = &unk_1001FCE00;
    v11[4] = v6;
    sub_100165208(NRDLocalDevice, v6, v11);
  }

  else
  {
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

      _NRLogWithArgs();
    }
  }

  objc_opt_self();
  if (qword_1002290C0 != -1)
  {
    dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
  }

  v7 = qword_1002290B8;
  sub_1000BC670(v7, v8, v9, v10);
}

void sub_100033AC8(uint64_t a1, int a2, void *a3)
{
  v11 = a3;
  if (a2)
  {
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

      v9 = *(a1 + 32);
      _NRLogWithArgs();
    }

    sub_10017440C(NRDLocalDevice, v11, *(a1 + 40));
  }

  else
  {
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

      v10 = *(a1 + 32);
      _NRLogWithArgs();
    }
  }

  objc_opt_self();
  if (qword_1002290C0 != -1)
  {
    dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
  }

  v5 = qword_1002290B8;
  sub_1000BC670(v5, v6, v7, v8);
}

void sub_100033CA4(uint64_t a1, void *a2)
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

void *sub_100033D54(void *result, int a2)
{
  if (!result[7])
  {
    return result;
  }

  v2 = *(result + 32);
  if (v2 == 2)
  {
    if (qword_100228F70 != -1)
    {
      dispatch_once(&qword_100228F70, &stru_1001FA8E0);
    }

    result = _NRLogIsLevelEnabled();
    if (!result)
    {
      return result;
    }

    if (qword_100228F70 == -1)
    {
      return _NRLogWithArgs();
    }

LABEL_34:
    dispatch_once(&qword_100228F70, &stru_1001FA8E0);
    return _NRLogWithArgs();
  }

  if (*(result + 32))
  {
    if (v2 == 3 && a2 != 0)
    {
      if (qword_100228F70 != -1)
      {
        dispatch_once(&qword_100228F70, &stru_1001FA8E0);
      }

      result = _NRLogIsLevelEnabled();
      if (!result)
      {
        return result;
      }

      if (qword_100228F70 == -1)
      {
        return _NRLogWithArgs();
      }

      goto LABEL_34;
    }

    if (v2 == 4 || v2 == 1)
    {
      v5 = result;
      [result reportEvent:3504];
      v7 = v5;
      result = [v5[7] stopAdvertising];
      if (!a2)
      {
LABEL_33:
        *(v7 + 32) = 2;
        *(v7 + 33) = 0;
        return result;
      }
    }

    else
    {
      v7 = result;
      if (!a2)
      {
        goto LABEL_33;
      }
    }

    *(v7 + 32) = 3;
    return result;
  }

  if (qword_100228F70 != -1)
  {
    dispatch_once(&qword_100228F70, &stru_1001FA8E0);
  }

  result = _NRLogIsLevelEnabled();
  if (result)
  {
    if (qword_100228F70 == -1)
    {
      return _NRLogWithArgs();
    }

    goto LABEL_34;
  }

  return result;
}

BOOL sub_100033FC0(id *a1)
{
  v2 = objc_alloc_init(NSMutableSet);
  v105 = 0u;
  v106 = 0u;
  v107 = 0u;
  v108 = 0u;
  v3 = a1[11];
  v4 = [v3 objectForKeyedSubscript:&off_100209AA0];
  v5 = v4;
  if (v4)
  {
    v6 = *(v4 + 16);
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  v8 = [v7 countByEnumeratingWithState:&v105 objects:v115 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v106;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v106 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [*(*(&v105 + 1) + 8 * i) peer];
        v13 = [v12 identifier];
        [v2 addObject:v13];
      }

      v9 = [v7 countByEnumeratingWithState:&v105 objects:v115 count:16];
    }

    while (v9);
  }

  v103 = 0u;
  v104 = 0u;
  v101 = 0u;
  v102 = 0u;
  v14 = a1[12];
  v15 = [v14 objectForKeyedSubscript:&off_100209AA0];
  v16 = v15;
  if (v15)
  {
    v17 = *(v15 + 16);
  }

  else
  {
    v17 = 0;
  }

  v18 = v17;

  v19 = [v18 countByEnumeratingWithState:&v101 objects:v114 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v102;
    do
    {
      for (j = 0; j != v20; j = j + 1)
      {
        if (*v102 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = [*(*(&v101 + 1) + 8 * j) peer];
        v24 = [v23 identifier];
        [v2 addObject:v24];
      }

      v20 = [v18 countByEnumeratingWithState:&v101 objects:v114 count:16];
    }

    while (v20);
  }

  v25 = sub_10016CF44();
  v26 = [v25 mutableCopy];

  v99 = 0u;
  v100 = 0u;
  v97 = 0u;
  v98 = 0u;
  v79 = v26;
  v27 = [v26 copy];
  v28 = [v27 countByEnumeratingWithState:&v97 objects:v113 count:16];
  v78 = a1;
  if (v28)
  {
    v29 = v28;
    v30 = *v98;
    do
    {
      for (k = 0; k != v29; k = k + 1)
      {
        if (*v98 != v30)
        {
          objc_enumerationMutation(v27);
        }

        v32 = *(*(&v97 + 1) + 8 * k);
        objc_opt_self();
        v33 = sub_100168BE8(NRDLocalDevice, v32, 1);

        if (!sub_10003615C(a1, v33) || (!v33 ? (operationalProp = 0) : (operationalProp = v33->_operationalProp), v35 = operationalProp, v36 = [(NRDeviceOperationalProperties *)v35 bluetoothRole], v35, a1 = v78, v36 != 2))
        {
          [v26 removeObject:{v32, v78}];
        }
      }

      v29 = [v27 countByEnumeratingWithState:&v97 objects:v113 count:16];
    }

    while (v29);
  }

  v37 = [v26 mutableCopy];
  v93 = 0u;
  v94 = 0u;
  v95 = 0u;
  v96 = 0u;
  v38 = v2;
  v39 = [v38 countByEnumeratingWithState:&v93 objects:v112 count:16];
  if (v39)
  {
    v40 = v39;
    v41 = *v94;
    do
    {
      for (m = 0; m != v40; m = m + 1)
      {
        if (*v94 != v41)
        {
          objc_enumerationMutation(v38);
        }

        [v37 removeObject:{*(*(&v93 + 1) + 8 * m), v78}];
      }

      v40 = [v38 countByEnumeratingWithState:&v93 objects:v112 count:16];
    }

    while (v40);
  }

  v43 = [v37 count];
  if (v43)
  {
    goto LABEL_80;
  }

  v44 = objc_alloc_init(NSMutableSet);

  v91 = 0u;
  v92 = 0u;
  v89 = 0u;
  v90 = 0u;
  v45 = a1[5];
  v46 = [v45 countByEnumeratingWithState:&v89 objects:v111 count:16];
  if (v46)
  {
    v47 = v46;
    v48 = *v90;
    do
    {
      for (n = 0; n != v47; n = n + 1)
      {
        if (*v90 != v48)
        {
          objc_enumerationMutation(v45);
        }

        v54 = *(*(&v89 + 1) + 8 * n);
        if ([v54 subtype] == 121 && objc_msgSend(v54, "state") != 255)
        {
          v55 = v54 ? *(v54 + 407) : 0;
          v56 = v55;

          if (v56)
          {
            if (v54)
            {
              v50 = *(v54 + 407);
            }

            else
            {
              v50 = 0;
            }

            v51 = v50;
            v52 = [v51 peer];
            v53 = [v52 identifier];
            [v44 addObject:v53];
          }
        }
      }

      v47 = [v45 countByEnumeratingWithState:&v89 objects:v111 count:16];
    }

    while (v47);
  }

  v80 = v44;

  v57 = sub_10016CF44();
  v58 = [v57 mutableCopy];

  v87 = 0u;
  v88 = 0u;
  v85 = 0u;
  v86 = 0u;
  v59 = [v58 copy];
  v60 = [v59 countByEnumeratingWithState:&v85 objects:v110 count:16];
  v61 = v78;
  if (v60)
  {
    v62 = v60;
    v63 = *v86;
    do
    {
      for (ii = 0; ii != v62; ii = ii + 1)
      {
        if (*v86 != v63)
        {
          objc_enumerationMutation(v59);
        }

        v65 = *(*(&v85 + 1) + 8 * ii);
        objc_opt_self();
        v66 = sub_100168BE8(NRDLocalDevice, v65, 1);

        if (!sub_10002EC6C(v61, v66) || (!v66 ? (v67 = 0) : (v67 = v66->_operationalProp), v68 = v67, v69 = [(NRDeviceOperationalProperties *)v68 bluetoothRole], v68, v61 = v78, v69 != 2))
        {
          [v58 removeObject:{v65, v78, v80}];
        }
      }

      v62 = [v59 countByEnumeratingWithState:&v85 objects:v110 count:16];
    }

    while (v62);
  }

  v70 = [v58 mutableCopy];
  v81 = 0u;
  v82 = 0u;
  v83 = 0u;
  v84 = 0u;
  v38 = v80;
  v71 = [v38 countByEnumeratingWithState:&v81 objects:v109 count:16];
  if (v71)
  {
    v72 = v71;
    v73 = *v82;
    do
    {
      for (jj = 0; jj != v72; jj = jj + 1)
      {
        if (*v82 != v73)
        {
          objc_enumerationMutation(v38);
        }

        [v70 removeObject:{*(*(&v81 + 1) + 8 * jj), v78}];
      }

      v72 = [v38 countByEnumeratingWithState:&v81 objects:v109 count:16];
    }

    while (v72);
  }

  v75 = [v70 count];
  if (v75)
  {
LABEL_80:
    v76 = 1;
  }

  else
  {
    v76 = [v61[28] count] != 0;
  }

  return v76;
}

void sub_1000347A4(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (!v2)
  {
    return;
  }

  v3 = *(a1 + 32);
  if (v3 != 3)
  {
    if (v3 == 4)
    {
      if ([*(a1 + 224) count])
      {
        v35 = 0u;
        v36 = 0u;
        v33 = 0u;
        v34 = 0u;
        v4 = [*(a1 + 224) allValues];
        v5 = [v4 countByEnumeratingWithState:&v33 objects:v38 count:16];
        if (v5)
        {
          v6 = v5;
          v7 = *v34;
LABEL_7:
          if (*v34 == v7)
          {
            v8 = *(&v33 + 1);
            while (*v8 && *(*v8 + 16) == 1)
            {
              v8 += 8;
              if (!--v6)
              {
                goto LABEL_19;
              }
            }
          }

          else
          {
            v9 = 0;
            while (1)
            {
              if (*v34 != v7)
              {
                objc_enumerationMutation(v4);
              }

              v10 = *(*(&v33 + 1) + 8 * v9);
              if (!v10 || (*(v10 + 16) & 1) == 0)
              {
                break;
              }

              if (v6 == ++v9)
              {
LABEL_19:
                v6 = [v4 countByEnumeratingWithState:&v33 objects:v38 count:16];
                if (v6)
                {
                  goto LABEL_7;
                }

                goto LABEL_20;
              }
            }
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

            _NRLogWithArgs();
          }

          sub_100033D54(a1, 1);
          goto LABEL_83;
        }

LABEL_20:
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

LABEL_31:
        _NRLogWithArgs();
        return;
      }

      return;
    }

    if ([v2 state] != 5 || (sub_10016D0AC() & 1) == 0 && !objc_msgSend(*(a1 + 224), "count"))
    {
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

        v13 = qword_100228F68;
        v14 = *(a1 + 56);
        v28 = v13;
        v15 = [v14 state];
        if (v15 >= 6)
        {
          v16 = [[NSString alloc] initWithFormat:@"UnknownState(%lld)", v15];
        }

        else
        {
          v16 = *(&off_1001FA940 + v15);
        }

        sub_10016D0AC();
        _NRLogWithArgs();
      }

      return;
    }

    *(a1 + 33) = 0;
    v11 = *(a1 + 33);
    if (*(a1 + 33))
    {
      if (v11 == 1)
      {
        v12 = @"1 sec";
      }

      else
      {
        v12 = [[NSString alloc] initWithFormat:@"UnknownType(%lld)", v11];
      }
    }

    else
    {
      v12 = @"Default";
    }

    [a1 reportEvent:3501 details:v12];

    if (*(a1 + 33) == 1)
    {
      v39 = CBPeripheralManagerAdvertisingInterval;
      v40 = &off_100209AE8;
      v4 = [NSDictionary dictionaryWithObjects:&v40 forKeys:&v39 count:1];
    }

    else
    {
      v4 = 0;
    }

    v17 = objc_alloc_init(NSMutableDictionary);
    if ([v4 count])
    {
      [v17 addEntriesFromDictionary:v4];
    }

    if ([*(a1 + 224) count])
    {
      v27 = v17;
      v18 = objc_alloc_init(NSMutableSet);
      v29 = 0u;
      v30 = 0u;
      v31 = 0u;
      v32 = 0u;
      v19 = [*(a1 + 224) allValues];
      v20 = [v19 countByEnumeratingWithState:&v29 objects:v37 count:16];
      if (v20)
      {
        v21 = v20;
        v22 = *v30;
        do
        {
          for (i = 0; i != v21; i = i + 1)
          {
            if (*v30 != v22)
            {
              objc_enumerationMutation(v19);
            }

            v25 = *(*(&v29 + 1) + 8 * i);
            if (v25)
            {
              *(v25 + 16) = 1;
              if (![*(v25 + 8) count])
              {
                continue;
              }
            }

            else if (![0 count])
            {
              continue;
            }

            if (v25)
            {
              v24 = *(v25 + 8);
            }

            else
            {
              v24 = 0;
            }

            [v18 addObjectsFromArray:v24];
          }

          v21 = [v19 countByEnumeratingWithState:&v29 objects:v37 count:16];
        }

        while (v21);
      }

      v17 = v27;
      if ([v18 count])
      {
        v26 = [v18 allObjects];
        [v27 setObject:v26 forKeyedSubscript:CBAdvertisementDataServiceUUIDsKey];
      }
    }

    [*(a1 + 56) startAdvertising:v17];
    *(a1 + 32) = 1;

LABEL_83:
    return;
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

    goto LABEL_31;
  }
}

void sub_100034ED0(uint64_t a1)
{
  if (!a1)
  {
    return;
  }

  v1 = a1;
  v2 = *(a1 + 56);
  if (!v2)
  {
    return;
  }

  v71 = v2;
  if ([v71 state] != 4)
  {
    v3 = [v1[7] state];

    if (!v3)
    {
      return;
    }

    if ([v1[7] state] == 1)
    {
      [v1[21] removeAllObjects];
    }

    if (!v1[21])
    {
      v4 = objc_alloc_init(NSMutableSet);
      v5 = v1[21];
      v1[21] = v4;
    }

    v6 = objc_alloc_init(NSMutableSet);
    v7 = objc_alloc_init(NSMutableSet);
    v72 = v1;
    if ([v1[7] state] == 5)
    {
      v67 = v7;
      if ([v1[22] count])
      {
        v8 = [v1[22] allKeys];
        [v6 addObjectsFromArray:v8];
      }

      v69 = v6;
      v95 = 0u;
      v96 = 0u;
      v93 = 0u;
      v94 = 0u;
      objc_opt_self();
      v9 = sub_100003490();
      dispatch_assert_queue_V2(v9);

      sub_1001619D8();
      v10 = objc_alloc_init(NSMutableArray);
      v97 = 0u;
      v98 = 0u;
      v99 = 0u;
      v100 = 0u;
      v11 = qword_100229428;
      v12 = [v11 countByEnumeratingWithState:&v97 objects:v107 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v98;
        do
        {
          for (i = 0; i != v13; i = i + 1)
          {
            if (*v98 != v14)
            {
              objc_enumerationMutation(v11);
            }

            v16 = *(*(&v97 + 1) + 8 * i);
            v17 = [qword_100229428 objectForKeyedSubscript:v16];
            v18 = v17;
            if (v17)
            {
              v19 = *(v17 + 32);
              if (v19)
              {
                v20 = v18[9];

                if (v20)
                {
                  [v10 addObject:v16];
                }
              }
            }
          }

          v13 = [v11 countByEnumeratingWithState:&v97 objects:v107 count:16];
        }

        while (v13);
      }

      v22 = v10;
      v23 = [v10 countByEnumeratingWithState:&v93 objects:v106 count:16];
      v1 = v72;
      if (v23)
      {
        v24 = v23;
        v25 = *v94;
        do
        {
          for (j = 0; j != v24; j = j + 1)
          {
            if (*v94 != v25)
            {
              objc_enumerationMutation(v22);
            }

            v27 = sub_100163A30(NRDLocalDevice, *(*(&v93 + 1) + 8 * j));
            v28 = v27;
            if (v27)
            {
              if ((v27[6] & 2) != 0)
              {
                if (sub_10002EC6C(v1, v27))
                {
                  v29 = v28[18];
                  v30 = [v29 bluetoothRole];

                  v1 = v72;
                  if (v30 == 2)
                  {
                    v31 = [NSNumber numberWithUnsignedShort:*(v28 + 9)];
                    [v69 addObject:v31];
                  }
                }
              }
            }
          }

          v24 = [v22 countByEnumeratingWithState:&v93 objects:v106 count:16];
        }

        while (v24);
      }

      v91 = 0u;
      v92 = 0u;
      v89 = 0u;
      v90 = 0u;
      v32 = v1[21];
      v33 = [v32 countByEnumeratingWithState:&v89 objects:v105 count:16];
      v21 = v67;
      v6 = v69;
      if (v33)
      {
        v34 = v33;
        v35 = *v90;
        do
        {
          for (k = 0; k != v34; k = k + 1)
          {
            if (*v90 != v35)
            {
              objc_enumerationMutation(v32);
            }

            v37 = *(*(&v89 + 1) + 8 * k);
            if (([v69 containsObject:v37] & 1) == 0)
            {
              [v67 addObject:v37];
            }
          }

          v34 = [v32 countByEnumeratingWithState:&v89 objects:v105 count:16];
        }

        while (v34);
      }
    }

    else
    {
      v21 = [v1[21] copy];
    }

    v87 = 0u;
    v88 = 0u;
    v85 = 0u;
    v86 = 0u;
    obj = v21;
    v38 = [obj countByEnumeratingWithState:&v85 objects:v104 count:16];
    if (v38)
    {
      v39 = v38;
      v40 = *v86;
      do
      {
        for (m = 0; m != v39; m = m + 1)
        {
          if (*v86 != v40)
          {
            objc_enumerationMutation(obj);
          }

          sub_100035700(v1, [*(*(&v85 + 1) + 8 * m) unsignedShortValue], 0);
        }

        v39 = [obj countByEnumeratingWithState:&v85 objects:v104 count:16];
      }

      while (v39);
    }

    v83 = 0u;
    v84 = 0u;
    v81 = 0u;
    v82 = 0u;
    v64 = v6;
    v42 = [v64 countByEnumeratingWithState:&v81 objects:v103 count:16];
    if (v42)
    {
      v43 = v42;
      v44 = *v82;
      do
      {
        for (n = 0; n != v43; n = n + 1)
        {
          if (*v82 != v44)
          {
            objc_enumerationMutation(v64);
          }

          sub_100035700(v1, [*(*(&v81 + 1) + 8 * n) unsignedShortValue], 1);
        }

        v43 = [v64 countByEnumeratingWithState:&v81 objects:v103 count:16];
      }

      while (v43);
    }

    v79 = 0u;
    v80 = 0u;
    v77 = 0u;
    v78 = 0u;
    v63 = [v1[22] allValues];
    v68 = [v63 countByEnumeratingWithState:&v77 objects:v102 count:16];
    if (!v68)
    {
LABEL_94:

      return;
    }

    v66 = *v78;
LABEL_66:
    v46 = 0;
    while (1)
    {
      if (*v78 != v66)
      {
        objc_enumerationMutation(v63);
      }

      v70 = v46;
      v47 = *(*(&v77 + 1) + 8 * v46);
      v48 = v47 ? *(v47 + 24) : 0;
      v49 = [v48 allKeys];
      v50 = [v49 copy];

      v75 = 0u;
      v76 = 0u;
      v73 = 0u;
      v74 = 0u;
      v51 = v50;
      v52 = [v51 countByEnumeratingWithState:&v73 objects:v101 count:16];
      if (v52)
      {
        break;
      }

LABEL_67:

      v46 = v70 + 1;
      if ((v70 + 1) == v68)
      {
        v68 = [v63 countByEnumeratingWithState:&v77 objects:v102 count:16];
        if (!v68)
        {
          goto LABEL_94;
        }

        goto LABEL_66;
      }
    }

    v53 = v52;
    v54 = *v74;
LABEL_75:
    v55 = 0;
    while (1)
    {
      if (*v74 != v54)
      {
        objc_enumerationMutation(v51);
      }

      v56 = *(*(&v73 + 1) + 8 * v55);
      v57 = sub_100168BE8(NRDLocalDevice, v56, 0);
      if (!v57)
      {
        goto LABEL_78;
      }

      if (v47)
      {
        v58 = *(v47 + 24);
      }

      else
      {
        v58 = 0;
      }

      v59 = [v58 objectForKeyedSubscript:v56];
      v60 = v59;
      if ((v57->_databaseFlags & 2) != 0)
      {
        if (v47)
        {
          v61 = *(v47 + 8);
          if (v61 != [v59 PSM] || v57->_psm != *(v47 + 8))
          {
            goto LABEL_77;
          }

          sub_10003583C(v72, v60);
          v62 = *(v47 + 24);
        }

        else
        {
          if ([v59 PSM] || v57->_psm)
          {
            goto LABEL_77;
          }

          sub_10003583C(v72, v60);
          v62 = 0;
        }

        [v62 setObject:0 forKeyedSubscript:v56];
      }

LABEL_77:

LABEL_78:
      if (v53 == ++v55)
      {
        v53 = [v51 countByEnumeratingWithState:&v73 objects:v101 count:16];
        if (!v53)
        {
          goto LABEL_67;
        }

        goto LABEL_75;
      }
    }
  }
}

void sub_100035700(uint64_t a1, int a2, char a3)
{
  if (a2)
  {
    v4 = a2;
    v6 = dispatch_time(0, 1000000000);
    if (a1)
    {
      v7 = *(a1 + 24);
    }

    else
    {
      v7 = 0;
    }

    v8 = v7;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10003633C;
    block[3] = &unk_1001FA7A8;
    block[4] = a1;
    v14 = a3;
    v13 = v4;
    dispatch_after(v6, v8, block);
  }

  else
  {
    v9 = sub_10002D6B4();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v11 = sub_10002D6B4();
      _NRLogWithArgs();
    }
  }
}

void sub_10003583C(id *a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v5 = [v3 peer];
    v6 = [v5 identifier];
    v7 = sub_100168BE8(NRDLocalDevice, v6, 0);

    if (v7 && (v7->_databaseFlags & 2) != 0 && (sub_10002EC6C(a1, v7) & 1) != 0)
    {
      psm = v7->_psm;
      if (psm == [v4 PSM])
      {
        v72 = v4;
        v75 = 0u;
        v76 = 0u;
        v73 = 0u;
        v74 = 0u;
        v9 = a1[5];
        v10 = [v9 countByEnumeratingWithState:&v73 objects:v77 count:16];
        if (!v10)
        {
LABEL_63:

          v51 = v7->_lastSeenName;
          if (v51)
          {
            v52 = v51;
          }

          else
          {
            v52 = @"L2CAP-peer";
          }

          v53 = [NRLinkBluetooth alloc];
          v54 = a1[3];
          v55 = v7->_nrUUID;
          v4 = v72;
          v56 = sub_1000B6370(v53, v54, a1, v55, 0, v72, v52);

          if (v56)
          {
            if ((sub_10003615C(a1, v7) & 1) == 0)
            {
              WeakRetained = objc_loadWeakRetained(a1 + 16);
              v58 = v7->_nrUUID;
              [WeakRetained pipeDidConnectForNRUUID:1 nrUUID:v58];
            }

            if (!sub_100033FC0(a1))
            {
              sub_100033D54(a1, 0);
            }
          }

          else
          {
            v59 = sub_10002D6B4();
            IsLevelEnabled = _NRLogIsLevelEnabled();

            if (IsLevelEnabled)
            {
              v61 = sub_10002D6B4();
              v69 = v7;
              v70 = v72;
              v68 = 2559;
              v65 = "";
              v67 = "[NRLinkManagerBluetooth processL2CAPChannelConnected:]";
              _NRLogWithArgs();
            }

            v4 = v72;
            v62 = [v72 description];
            [a1 reportEvent:3101 details:v62];
          }

          goto LABEL_72;
        }

        v11 = v10;
        v12 = *v74;
LABEL_31:
        v41 = 0;
        while (1)
        {
          if (*v74 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v42 = *(*(&v73 + 1) + 8 * v41);
          v43 = [v42 nrUUID];
          v44 = v7->_nrUUID;
          v45 = [v43 isEqual:v44];

          if (v45)
          {
            if ([v42 state] != 255 && objc_msgSend(v42, "subtype") == 121)
            {
              v46 = v42 ? *(v42 + 407) : 0;
              v47 = v46;
              v48 = [v47 PSM];
              v49 = v7->_psm;

              if (v48 == v49)
              {
                break;
              }
            }
          }

          if (v11 == ++v41)
          {
            v11 = [v9 countByEnumeratingWithState:&v73 objects:v77 count:16];
            if (!v11)
            {
              goto LABEL_63;
            }

            goto LABEL_31;
          }
        }

        if (qword_100228F70 != -1)
        {
          dispatch_once(&qword_100228F70, &stru_1001FA8E0);
        }

        v4 = v72;
        if (!_NRLogIsLevelEnabled())
        {
          goto LABEL_72;
        }

        if (qword_100228F70 != -1)
        {
          dispatch_once(&qword_100228F70, &stru_1001FA8E0);
        }

        v50 = qword_100228F68;
      }

      else
      {
        if (qword_100228F70 != -1)
        {
          dispatch_once(&qword_100228F70, &stru_1001FA8E0);
        }

        if (!_NRLogIsLevelEnabled())
        {
          goto LABEL_72;
        }

        if (qword_100228F70 != -1)
        {
          dispatch_once(&qword_100228F70, &stru_1001FA8E0);
        }

        v50 = qword_100228F68;
        v71 = v7->_psm;
        [v4 PSM];
      }

      _NRLogWithArgs();

LABEL_72:
      goto LABEL_73;
    }

    v13 = a1[22];
    v14 = +[NSNumber numberWithUnsignedShort:](NSNumber, "numberWithUnsignedShort:", [v4 PSM]);
    v15 = [v13 objectForKeyedSubscript:v14];

    if (!v15)
    {
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

        _NRLogWithArgs();
      }

      goto LABEL_72;
    }

    v16 = a1[22];
    v17 = +[NSNumber numberWithUnsignedShort:](NSNumber, "numberWithUnsignedShort:", [v4 PSM]);
    v18 = [v16 objectForKeyedSubscript:v17];

    v19 = [v4 peer];
    v20 = [v19 identifier];

    if (!v20)
    {
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

        _NRLogWithArgs();
      }

      goto LABEL_72;
    }

    if (v18)
    {
      v21 = *(v18 + 24);
      if (!v21)
      {
        v22 = objc_alloc_init(NSMutableDictionary);
        v23 = *(v18 + 24);
        *(v18 + 24) = v22;

        v21 = *(v18 + 24);
      }
    }

    else
    {

      v21 = 0;
    }

    v24 = v21;
    v25 = [v4 peer];
    v26 = [v25 identifier];
    v27 = [v24 objectForKeyedSubscript:v26];

    if (!v27)
    {
      goto LABEL_21;
    }

    if (qword_100228F70 != -1)
    {
      dispatch_once(&qword_100228F70, &stru_1001FA8E0);
    }

    if (!_NRLogIsLevelEnabled())
    {
LABEL_21:
      if (v18)
      {
        v34 = *(v18 + 24);
        v35 = [v4 peer];
        v36 = [v35 identifier];
        [v34 setObject:v4 forKeyedSubscript:v36];

        v37 = *(v18 + 16);
      }

      else
      {
        v63 = [v4 peer];
        v64 = [v63 identifier];
        [0 setObject:v4 forKeyedSubscript:v64];

        v37 = 0;
      }

      v38 = v37;
      v39 = [v4 peer];
      v40 = [v39 identifier];
      (v37)[2](v38, 1, v40, [v4 PSM]);

      goto LABEL_72;
    }

    if (qword_100228F70 == -1)
    {
      v28 = qword_100228F68;
      if (v18)
      {
LABEL_19:
        v29 = *(v18 + 24);
LABEL_20:
        v30 = v29;
        v31 = v28;
        v32 = [v4 peer];
        v33 = [v32 identifier];
        v66 = [v30 objectForKeyedSubscript:v33];
        _NRLogWithArgs();

        goto LABEL_21;
      }
    }

    else
    {
      dispatch_once(&qword_100228F70, &stru_1001FA8E0);
      v28 = qword_100228F68;
      if (v18)
      {
        goto LABEL_19;
      }
    }

    v29 = 0;
    goto LABEL_20;
  }

LABEL_73:
}

uint64_t sub_10003615C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    if (v3)
    {
      if (sub_100169428(v3))
      {
LABEL_4:
        LOBYTE(a1) = 1;
        goto LABEL_15;
      }

      v5 = v4[3];
      LODWORD(a1) = [a1 shouldCreateLinkForNRUUID:v5];

      if (!a1)
      {
        goto LABEL_15;
      }

      v20 = 0u;
      v21 = 0u;
      v18 = 0u;
      v19 = 0u;
      v6 = v4[18];
      a1 = [v6 allowedLinkSubtypes];

      v7 = [a1 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (!v7)
      {

        goto LABEL_4;
      }

      v8 = v7;
      v9 = 0;
      v10 = *v19;
LABEL_8:
      v11 = 0;
      while (1)
      {
        if (*v19 != v10)
        {
          objc_enumerationMutation(a1);
        }

        v12 = [*(*(&v18 + 1) + 8 * v11) unsignedShortValue];
        v13 = v12;
        v9 |= (v12 & 0xFE) == 120;
        if (v12 == 120)
        {
          break;
        }

        if (v8 == ++v11)
        {
          v8 = [a1 countByEnumeratingWithState:&v18 objects:v22 count:16];
          if (v8)
          {
            goto LABEL_8;
          }

          break;
        }
      }

      LOBYTE(a1) = (v13 == 120) | v9 ^ 1;
    }

    else
    {
      v15 = sub_10002D6B4();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      if (IsLevelEnabled)
      {
        v17 = sub_10002D6B4();
        _NRLogWithArgs();
      }

      LOBYTE(a1) = 0;
    }
  }

LABEL_15:

  return a1 & 1;
}

void sub_10003633C(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (!v2 || !v2[21])
  {
    v3 = objc_alloc_init(NSMutableSet);
    v4 = *(a1 + 32);
    if (v4)
    {
      objc_storeStrong((v4 + 168), v3);
    }

    v2 = *(a1 + 32);
  }

  if (*(a1 + 42) != 1)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    v2 = v2[21];
  }

  v5 = *(a1 + 40);
  v6 = v2;
  v7 = [NSNumber numberWithUnsignedShort:v5];
  LODWORD(v5) = [v6 containsObject:v7];

  if (v5)
  {
    if (*(a1 + 42))
    {
      return;
    }

    v2 = *(a1 + 32);
LABEL_12:
    if (v2)
    {
      v2 = v2[21];
    }

    v8 = *(a1 + 40);
    v9 = v2;
    v10 = [NSNumber numberWithUnsignedShort:v8];
    LODWORD(v8) = [v9 containsObject:v10];

    if (v8)
    {
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

        v26 = *(a1 + 40);
        v28 = *(a1 + 42);
        v25 = 2177;
        v23 = "";
        v24 = "[NRLinkManagerBluetooth setL2CAPChannelPublishState:state:]_block_invoke";
        _NRLogWithArgs();
      }

      v11 = *(a1 + 32);
      if (v11)
      {
        v12 = *(v11 + 56);
      }

      else
      {
        v12 = 0;
      }

      [v12 unpublishL2CAPChannel:{*(a1 + 40), v23, v24, v25, v26, v28}];
      v13 = *(a1 + 32);
      if (v13)
      {
        v13 = v13[21];
      }

      v14 = *(a1 + 40);
      v15 = v13;
      v29 = [NSNumber numberWithUnsignedShort:v14];
      [v15 removeObject:v29];
LABEL_40:

      return;
    }

    return;
  }

  v16 = *(a1 + 32);
  if (v16)
  {
    v17 = *(v16 + 56);
  }

  else
  {
    v17 = 0;
  }

  v18 = *(a1 + 40);
  if ([v17 state] == 5)
  {
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

      v26 = *(a1 + 40);
      v28 = *(a1 + 42);
      v25 = 2165;
      v23 = "";
      v24 = "[NRLinkManagerBluetooth setL2CAPChannelPublishState:state:]_block_invoke";
      _NRLogWithArgs();
    }

    v19 = *(a1 + 32);
    if (v19)
    {
      v20 = *(v19 + 56);
    }

    else
    {
      v20 = 0;
    }

    [v20 publishPacketL2CAPChannel:*(a1 + 40) requiresEncryption:v18 == 137 withIncomingMTU:1550 options:{&__NSDictionary0__struct, v23, v24, v25, v26, v28}];
    v21 = *(a1 + 32);
    if (v21)
    {
      v21 = v21[21];
    }

    v22 = *(a1 + 40);
    v15 = v21;
    v29 = [NSNumber numberWithUnsignedShort:v22];
    [v15 addObject:v29];
    goto LABEL_40;
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

    v27 = *(a1 + 40);
    _NRLogWithArgs();
  }
}

void sub_100036770(uint64_t a1, uint64_t a2, int a3)
{
  if (!a1)
  {
    return;
  }

  v5 = a1;
  v6 = *(a1 + 24);
  dispatch_assert_queue_V2(v6);

  objc_opt_self();
  if (byte_1002290C8 == 1)
  {
    objc_opt_self();
    if (qword_1002290C0 != -1)
    {
      dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
    }

    v7 = qword_1002290B8;
    if (v7)
    {
      v8 = v7[12];

      if (v8)
      {
        return;
      }
    }
  }

  if (a2 == 3)
  {
    v9 = &OBJC_IVAR___NRLinkManagerBluetooth__pipeRegistrations;
    if (a3)
    {
      v9 = &OBJC_IVAR___NRLinkManagerBluetooth__p2pPipeRegistrations;
    }

    v10 = *(v5 + *v9);
    v11 = [NSNumber numberWithInteger:3];
    v12 = [v10 objectForKeyedSubscript:v11];

    if (!v12)
    {
      return;
    }

    v13 = v12[9];

    if ((v13 & 4) == 0)
    {
      return;
    }
  }

  if (!a3)
  {
    if (*(v5 + 38) != 1)
    {
      return;
    }

    v115 = v5;
    v21 = *(v5 + 37);
    v120 = 0u;
    v121 = 0u;
    v122 = 0u;
    v123 = 0u;
    v22 = sub_10016CA28();
    v23 = [v22 countByEnumeratingWithState:&v120 objects:v137 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v121;
      v114 = v21;
LABEL_25:
      v26 = 0;
      while (1)
      {
        if (*v121 != v25)
        {
          objc_enumerationMutation(v22);
        }

        v27 = sub_100163A30(NRDLocalDevice, *(*(&v120 + 1) + 8 * v26));
        v28 = v27;
        if (v27)
        {
          v29 = *(v27 + 144);
        }

        else
        {
          v29 = 0;
        }

        v30 = v29;
        v31 = [v30 bluetoothEndpointType];

        if (v31 == 1)
        {

          v15 = 0;
          v14 = @"Client";
          goto LABEL_59;
        }

        v32 = v28 ? v28[18] : 0;
        v33 = v32;
        v34 = [v33 bluetoothEndpointType];

        if (v34 == 2)
        {
          break;
        }

        if (v24 == ++v26)
        {
          v35 = [v22 countByEnumeratingWithState:&v120 objects:v137 count:16];
          v24 = v35;
          v21 = v114;
          if (!v35)
          {
            goto LABEL_39;
          }

          goto LABEL_25;
        }
      }

      v14 = @"Server";
      v15 = 1;
LABEL_59:
      v5 = v115;
      if (a2 != 2)
      {
        goto LABEL_15;
      }
    }

    else
    {
LABEL_39:

      v5 = v115;
      if ((v21 & 1) == 0)
      {
        goto LABEL_14;
      }

      v14 = @"Server";
      v15 = 1;
      if (a2 != 2)
      {
        goto LABEL_15;
      }
    }

LABEL_60:
    if (a3)
    {
      v44 = sub_100037B38(v5, 2, 1);
      v17 = v44;
      if (v44)
      {
        state = v44->_state;
        if (state == 1)
        {
          v61 = sub_10002D6B4();
          IsLevelEnabled = _NRLogIsLevelEnabled();

          if (!IsLevelEnabled)
          {
            goto LABEL_153;
          }

          goto LABEL_70;
        }

        if (state == 2)
        {
          v46 = sub_10002D6B4();
          v47 = _NRLogIsLevelEnabled();

          if (!v47)
          {
            goto LABEL_153;
          }

          goto LABEL_70;
        }
      }

      else
      {
        state = 0;
      }

      if ([*(v5 + 48) state] != 5)
      {
        goto LABEL_153;
      }

      if (state == 3)
      {
        v81 = sub_10002D6B4();
        v82 = _NRLogIsLevelEnabled();

        if (!v82)
        {
          goto LABEL_151;
        }

        goto LABEL_127;
      }

      if (v17)
      {
        if ([(NSMutableSet *)v17->_connectedPipes count])
        {
          goto LABEL_121;
        }
      }

      else if ([0 count])
      {
LABEL_121:
        v83 = sub_10002D6B4();
        v84 = _NRLogIsLevelEnabled();

        if (!v84)
        {
          goto LABEL_151;
        }

        goto LABEL_127;
      }

      if (v17)
      {
        v17->_state = 1;
        v17->_flags &= ~2u;
      }

      [v5 reportEvent:4201 detailsFormat:@"%s %s %@", "High", "p2pPipe", v14];
      v106 = *(v5 + 48);
      v131[0] = CBScalablePipeOptionTransport;
      v107 = v106;
      v108 = [NSNumber numberWithInteger:sub_100037BE4()];
      v131[1] = CBScalablePipeOptionStayConnectedWhenIdle;
      v132[0] = v108;
      v132[1] = &__kCFBooleanTrue;
      v109 = [NSDictionary dictionaryWithObjects:v132 forKeys:v131 count:2];
      v110 = @"com.apple.terminusLink.urgent.p2p";
LABEL_172:
      [v107 registerEndpoint:v110 type:v15 priority:2 options:v109];

      goto LABEL_153;
    }

    v48 = sub_100037B38(v5, 2, 0);
    v17 = v48;
    if (v48)
    {
      v49 = v48->_state;
      if (v49 == 1)
      {
        v63 = sub_10002D6B4();
        v64 = _NRLogIsLevelEnabled();

        if (!v64)
        {
          goto LABEL_153;
        }

        goto LABEL_70;
      }

      if (v49 == 2)
      {
        v50 = sub_10002D6B4();
        v51 = _NRLogIsLevelEnabled();

        if (!v51)
        {
          goto LABEL_153;
        }

        goto LABEL_70;
      }
    }

    else
    {
      v49 = 0;
    }

    if ([*(v5 + 48) state] != 5)
    {
      goto LABEL_153;
    }

    if (v49 == 3)
    {
      v85 = sub_10002D6B4();
      v86 = _NRLogIsLevelEnabled();

      if (!v86)
      {
        goto LABEL_151;
      }

      goto LABEL_127;
    }

    if (v17)
    {
      if ([(NSMutableSet *)v17->_connectedPipes count])
      {
        goto LABEL_130;
      }
    }

    else if ([0 count])
    {
LABEL_130:
      v88 = sub_10002D6B4();
      v89 = _NRLogIsLevelEnabled();

      if (!v89)
      {
        goto LABEL_151;
      }

      goto LABEL_127;
    }

    if (v17)
    {
      v17->_state = 1;
      v17->_flags &= ~2u;
    }

    [v5 reportEvent:4201 detailsFormat:@"%s %s %@", "High", "pipe", v14];
    v111 = *(v5 + 48);
    v129[0] = CBScalablePipeOptionTransport;
    v107 = v111;
    v108 = [NSNumber numberWithInteger:sub_100037BE4()];
    v129[1] = CBScalablePipeOptionStayConnectedWhenIdle;
    v130[0] = v108;
    v130[1] = &__kCFBooleanTrue;
    v109 = [NSDictionary dictionaryWithObjects:v130 forKeys:v129 count:2];
    v110 = @"com.apple.terminusLink.urgent";
    goto LABEL_172;
  }

  if ((*(v5 + 39) & 1) == 0)
  {
    return;
  }

LABEL_14:
  v14 = @"PeerToPeer";
  v15 = 2;
  if (a2 == 2)
  {
    goto LABEL_60;
  }

LABEL_15:
  if (a2 == 1)
  {
    if (a3)
    {
      v16 = sub_100037B38(v5, 1, 1);
      v17 = v16;
      if (v16)
      {
        v18 = v16->_state;
        if (v18 == 1)
        {
          v57 = sub_10002D6B4();
          v58 = _NRLogIsLevelEnabled();

          if (!v58)
          {
            goto LABEL_153;
          }

          goto LABEL_70;
        }

        if (v18 == 2)
        {
          v19 = sub_10002D6B4();
          v20 = _NRLogIsLevelEnabled();

          if (!v20)
          {
            goto LABEL_153;
          }

LABEL_70:
          v52 = sub_10002D6B4();
LABEL_94:
          _NRLogWithArgs();
          goto LABEL_95;
        }
      }

      else
      {
        v18 = 0;
      }

      if ([*(v5 + 48) state] != 5)
      {
        goto LABEL_153;
      }

      if (v18 == 3)
      {
        v73 = sub_10002D6B4();
        v74 = _NRLogIsLevelEnabled();

        if (!v74)
        {
          goto LABEL_151;
        }

LABEL_127:
        v87 = sub_10002D6B4();
LABEL_150:
        _NRLogWithArgs();

LABEL_151:
        if (v17)
        {
          v17->_flags |= 2u;
        }

        goto LABEL_153;
      }

      if (v17)
      {
        if ([(NSMutableSet *)v17->_connectedPipes count])
        {
          goto LABEL_103;
        }
      }

      else if ([0 count])
      {
LABEL_103:
        v75 = sub_10002D6B4();
        v76 = _NRLogIsLevelEnabled();

        if (!v76)
        {
          goto LABEL_151;
        }

        goto LABEL_127;
      }

      if (v17)
      {
        v17->_state = 1;
        v17->_flags &= ~2u;
      }

      [v5 reportEvent:4201 detailsFormat:@"%s %s %@", "Medium", "p2pPipe", v14];
      v98 = *(v5 + 48);
      v135[0] = CBScalablePipeOptionTransport;
      v52 = v98;
      v99 = [NSNumber numberWithInteger:sub_100037BE4()];
      v135[1] = CBScalablePipeOptionStayConnectedWhenIdle;
      v136[0] = v99;
      v136[1] = &__kCFBooleanTrue;
      v100 = [NSDictionary dictionaryWithObjects:v136 forKeys:v135 count:2];
      v101 = @"com.apple.terminusLink.p2p";
      goto LABEL_163;
    }

    v40 = sub_100037B38(v5, 1, 0);
    v17 = v40;
    if (v40)
    {
      v41 = v40->_state;
      if (v41 == 1)
      {
        v59 = sub_10002D6B4();
        v60 = _NRLogIsLevelEnabled();

        if (!v60)
        {
          goto LABEL_153;
        }

        goto LABEL_70;
      }

      if (v41 == 2)
      {
        v42 = sub_10002D6B4();
        v43 = _NRLogIsLevelEnabled();

        if (!v43)
        {
          goto LABEL_153;
        }

        goto LABEL_70;
      }
    }

    else
    {
      v41 = 0;
    }

    if ([*(v5 + 48) state] != 5)
    {
      goto LABEL_153;
    }

    if (v41 == 3)
    {
      v77 = sub_10002D6B4();
      v78 = _NRLogIsLevelEnabled();

      if (!v78)
      {
        goto LABEL_151;
      }

      goto LABEL_127;
    }

    if (v17)
    {
      if ([(NSMutableSet *)v17->_connectedPipes count])
      {
        goto LABEL_112;
      }
    }

    else if ([0 count])
    {
LABEL_112:
      v79 = sub_10002D6B4();
      v80 = _NRLogIsLevelEnabled();

      if (!v80)
      {
        goto LABEL_151;
      }

      goto LABEL_127;
    }

    if (v17)
    {
      v17->_state = 1;
      v17->_flags &= ~2u;
    }

    [v5 reportEvent:4201 detailsFormat:@"%s %s %@", "Medium", "pipe", v14];
    v102 = *(v5 + 48);
    v133[0] = CBScalablePipeOptionTransport;
    v52 = v102;
    v99 = [NSNumber numberWithInteger:sub_100037BE4()];
    v133[1] = CBScalablePipeOptionStayConnectedWhenIdle;
    v134[0] = v99;
    v134[1] = &__kCFBooleanTrue;
    v100 = [NSDictionary dictionaryWithObjects:v134 forKeys:v133 count:2];
    v101 = @"com.apple.terminusLink";
LABEL_163:
    v103 = v52;
    v104 = v15;
    v105 = 1;
LABEL_182:
    [v103 registerEndpoint:v101 type:v104 priority:v105 options:v100];

LABEL_95:
    goto LABEL_153;
  }

  if (a2 != 3)
  {
    return;
  }

  v118 = 0u;
  v119 = 0u;
  v116 = 0u;
  v117 = 0u;
  v17 = *(v5 + 40);
  v36 = [(NRCBScalablePipeRegistrationState *)v17 countByEnumeratingWithState:&v116 objects:v128 count:16];
  if (!v36)
  {
    goto LABEL_153;
  }

  v37 = v36;
  v38 = *v117;
  while (2)
  {
    for (i = 0; i != v37; i = i + 1)
    {
      if (*v117 != v38)
      {
        objc_enumerationMutation(v17);
      }

      if ([*(*(&v116 + 1) + 8 * i) state] == 8)
      {

        if (a3)
        {
          v53 = sub_100037B38(v5, 3, 1);
          v17 = v53;
          if (v53)
          {
            v54 = v53->_state;
            if (v54 == 1)
            {
              v69 = sub_10002D6B4();
              v70 = _NRLogIsLevelEnabled();

              if (!v70)
              {
                goto LABEL_153;
              }

              goto LABEL_93;
            }

            if (v54 == 2)
            {
              v55 = sub_10002D6B4();
              v56 = _NRLogIsLevelEnabled();

              if (!v56)
              {
                goto LABEL_153;
              }

LABEL_93:
              v52 = sub_10002D6B4();
              goto LABEL_94;
            }
          }

          else
          {
            v54 = 0;
          }

          if ([*(v5 + 48) state] != 5)
          {
            goto LABEL_153;
          }

          if (v54 == 3)
          {
            v90 = sub_10002D6B4();
            v91 = _NRLogIsLevelEnabled();

            if (!v91)
            {
              goto LABEL_151;
            }

LABEL_149:
            v87 = sub_10002D6B4();
            goto LABEL_150;
          }

          if (v17)
          {
            if ([(NSMutableSet *)v17->_connectedPipes count])
            {
              goto LABEL_139;
            }
          }

          else if ([0 count])
          {
LABEL_139:
            v92 = sub_10002D6B4();
            v93 = _NRLogIsLevelEnabled();

            if (!v93)
            {
              goto LABEL_151;
            }

            goto LABEL_149;
          }

          if (v17)
          {
            v17->_state = 1;
            v17->_flags &= ~2u;
          }

          [v5 reportEvent:4201 detailsFormat:@"%s %s %@", "Isochronous", "p2pPipe", v14];
          v112 = *(v5 + 48);
          v126[0] = CBScalablePipeOptionTransport;
          v52 = v112;
          v99 = [NSNumber numberWithInteger:sub_100037BE4()];
          v126[1] = CBScalablePipeOptionStayConnectedWhenIdle;
          v127[0] = v99;
          v127[1] = &__kCFBooleanTrue;
          v100 = [NSDictionary dictionaryWithObjects:v127 forKeys:v126 count:2];
          v101 = @"com.apple.terminusLink.datagram.p2p";
LABEL_181:
          v103 = v52;
          v104 = v15;
          v105 = 3;
          goto LABEL_182;
        }

        v65 = sub_100037B38(v5, 3, 0);
        v17 = v65;
        if (v65)
        {
          v66 = v65->_state;
          if (v66 == 1)
          {
            v71 = sub_10002D6B4();
            v72 = _NRLogIsLevelEnabled();

            if (!v72)
            {
              goto LABEL_153;
            }

            goto LABEL_93;
          }

          if (v66 == 2)
          {
            v67 = sub_10002D6B4();
            v68 = _NRLogIsLevelEnabled();

            if (!v68)
            {
              goto LABEL_153;
            }

            goto LABEL_93;
          }
        }

        else
        {
          v66 = 0;
        }

        if ([*(v5 + 48) state] != 5)
        {
          goto LABEL_153;
        }

        if (v66 == 3)
        {
          v94 = sub_10002D6B4();
          v95 = _NRLogIsLevelEnabled();

          if (!v95)
          {
            goto LABEL_151;
          }

          goto LABEL_149;
        }

        if (v17)
        {
          if ([(NSMutableSet *)v17->_connectedPipes count])
          {
            goto LABEL_148;
          }
        }

        else if ([0 count])
        {
LABEL_148:
          v96 = sub_10002D6B4();
          v97 = _NRLogIsLevelEnabled();

          if (!v97)
          {
            goto LABEL_151;
          }

          goto LABEL_149;
        }

        if (v17)
        {
          v17->_state = 1;
          v17->_flags &= ~2u;
        }

        [v5 reportEvent:4201 detailsFormat:@"%s %s %@", "Isochronous", "pipe", v14];
        v113 = *(v5 + 48);
        v124[0] = CBScalablePipeOptionTransport;
        v52 = v113;
        v99 = [NSNumber numberWithInteger:sub_100037BE4()];
        v124[1] = CBScalablePipeOptionStayConnectedWhenIdle;
        v125[0] = v99;
        v125[1] = &__kCFBooleanTrue;
        v100 = [NSDictionary dictionaryWithObjects:v125 forKeys:v124 count:2];
        v101 = @"com.apple.terminusLink.datagram";
        goto LABEL_181;
      }
    }

    v37 = [(NRCBScalablePipeRegistrationState *)v17 countByEnumeratingWithState:&v116 objects:v128 count:16];
    if (v37)
    {
      continue;
    }

    break;
  }

LABEL_153:
}

uint64_t sub_100037950(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = *(a1 + 152);
    if (!v4)
    {
      goto LABEL_19;
    }

    v16 = v3;
    v5 = [v4 objectForKeyedSubscript:v3];
    if (v5)
    {
      v6 = v5;
      if (*(v5 + 8) == 1)
      {
        v7 = *(v5 + 16);
        nr_continuous_time();
        NRDiffMachTimeInSeconds();
        v9 = v8;
        v10 = objc_alloc_init(NRAnalyticsLinkManagerBluetooth);
        v11 = v10;
        if (v10)
        {
          v10->_pipeConnectedDuration = v9;
        }

        [(NRAnalyticsLinkManagerBluetooth *)v10 submit];
      }

      else
      {
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

          v15 = v6;
          _NRLogWithArgs();
        }
      }
    }

    else
    {
      v6 = objc_alloc_init(NRCBScalablePipeConnectionState);
      if (!v6)
      {
        nr_continuous_time();
LABEL_17:
        [*(a1 + 152) setObject:v6 forKeyedSubscript:{v16, v15}];
LABEL_18:

        goto LABEL_19;
      }
    }

    v6->_state = 2;
    v6->_timeOfDisconnect = nr_continuous_time();
    goto LABEL_17;
  }

  v12 = sub_10002D6B4();
  IsLevelEnabled = _NRLogIsLevelEnabled();

  if (IsLevelEnabled)
  {
    v6 = sub_10002D6B4();
    _NRLogWithArgs();
    goto LABEL_18;
  }

LABEL_19:

  return _objc_release_x1();
}

NRCBScalablePipeRegistrationState *sub_100037B38(uint64_t a1, uint64_t a2, int a3)
{
  v4 = &OBJC_IVAR___NRLinkManagerBluetooth__pipeRegistrations;
  if (a3)
  {
    v4 = &OBJC_IVAR___NRLinkManagerBluetooth__p2pPipeRegistrations;
  }

  v5 = *(a1 + *v4);
  v6 = [NSNumber numberWithInteger:a2];
  v7 = [v5 objectForKeyedSubscript:v6];
  if (!v7)
  {
    v7 = objc_alloc_init(NRCBScalablePipeRegistrationState);
    [v5 setObject:v7 forKeyedSubscript:v6];
  }

  return v7;
}

uint64_t sub_100037BE4()
{
  objc_opt_self();
  if (qword_1002290C0 != -1)
  {
    dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
  }

  v0 = qword_1002290B8;
  if (v0)
  {
    if (v0[10])
    {
      v1 = 2;
    }

    else
    {
      v1 = 1;
    }
  }

  else
  {
    v1 = 1;
  }

  return v1;
}

void sub_100037C64(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v25 = a1;
    nr_continuous_time();
    v3 = objc_alloc_init(NSMutableArray);
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v4 = WeakRetained[25];
    v5 = [v4 countByEnumeratingWithState:&v30 objects:v35 count:16];
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
          v10 = [WeakRetained[25] objectForKeyedSubscript:v9];
          [v10 unsignedLongLongValue];
          NRDiffMachTimeInSeconds();
          if (v11 >= 60.0)
          {
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

              v23 = 1078;
              v24 = v9;
              v21 = "";
              v22 = "[NRLinkManagerBluetooth startUpdatePairingInfoQuarantineTimerIfNeeded]_block_invoke";
              _NRLogWithArgs();
            }

            [v3 addObject:{v9, v21, v22, v23, v24}];
          }
        }

        v6 = [v4 countByEnumeratingWithState:&v30 objects:v35 count:16];
      }

      while (v6);
    }

    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v12 = v3;
    v13 = [v12 countByEnumeratingWithState:&v26 objects:v34 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v27;
      do
      {
        for (j = 0; j != v14; j = j + 1)
        {
          if (*v27 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v26 + 1) + 8 * j);
          v18 = [WeakRetained[26] objectForKeyedSubscript:v17];
          [WeakRetained[25] removeObjectForKey:v17];
          if (v18)
          {
            v18[2](v18);
            [WeakRetained[26] removeObjectForKey:v17];
          }
        }

        v14 = [v12 countByEnumeratingWithState:&v26 objects:v34 count:16];
      }

      while (v14);
    }

    if (![WeakRetained[25] count])
    {
      dispatch_source_cancel(*(v25 + 32));
      v19 = *(v25 + 40);
      if (v19)
      {
        v20 = *(v19 + 144);
        *(v19 + 144) = 0;
      }
    }
  }
}

uint64_t sub_100038C64(char *a1, uint64_t a2, int a3)
{
  v6 = &OBJC_IVAR___NRLinkManagerBluetooth__pipeRegistrations;
  if (a3)
  {
    v6 = &OBJC_IVAR___NRLinkManagerBluetooth__p2pPipeRegistrations;
  }

  v7 = *&a1[*v6];
  v8 = [NSNumber numberWithInteger:a2];
  v12 = [v7 objectForKeyedSubscript:v8];

  v10 = v12;
  if (v12)
  {
    if ((*(v12 + 9) & 0xA) != 0 && !*(v12 + 8))
    {
      v9 = [*(v12 + 16) count];
      v10 = v12;
      if (!v9)
      {
        if ((*(v12 + 9) & 8) != 0)
        {
          *(v12 + 9) &= ~8u;
          [a1 reportEvent:4215];
        }

        sub_100036770(a1, a2, a3);
        v10 = v12;
      }
    }
  }

  return _objc_release_x1(v9, v10);
}

void sub_1000391F4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    WeakRetained = WeakRetained[2];
  }

  v4 = [WeakRetained containsObject:*(a1 + 32)];

  if (v4)
  {
    v5 = *(a1 + 40);
    v6 = *(a1 + 32);
    v7 = v6;
    if (!v5)
    {
LABEL_89:

      return;
    }

    if (!v6)
    {
      v71 = sub_10002D6B4();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      if (!IsLevelEnabled)
      {
        goto LABEL_89;
      }

      v13 = sub_10002D6B4();
      _NRLogWithArgs();
      goto LABEL_88;
    }

    v8 = v5[3];
    dispatch_assert_queue_V2(v8);

    v9 = [v7 peer];
    v10 = [v9 identifier];

    v11 = [v7 priority];
    v12 = [v7 priority];
    v13 = v10;
    objc_opt_self();
    v14 = sub_100168BE8(NRDLocalDevice, v13, 1);

    if (!v14 || (v14->_databaseFlags & 2) == 0)
    {
      v73 = sub_10002D6B4();
      v74 = _NRLogIsLevelEnabled();

      if (v74)
      {
        v75 = sub_10002D6B4();
        v82 = v14;
        v83 = v7;
        v81 = 1119;
        _NRLogWithArgs();
      }

      [v5 reportEvent:3101 detailsFormat:@"%@ is disabled for pipe %@", v14, v7, v81, v82, v83];
      goto LABEL_87;
    }

    v15 = v14->_nrUUID;
    v16 = [v5 shouldCreateLinkForNRUUID:v15];

    if ((v16 & 1) == 0)
    {
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

        v82 = v14;
        v83 = v7;
        v81 = 1124;
        _NRLogWithArgs();
      }

      [v5 reportEvent:3101 detailsFormat:@"%@ is unsupported for pipe %@", v14, v7, v81, v82, v83];
      goto LABEL_87;
    }

    v85 = v7;
    if (v11 == 3)
    {
      v88 = 0u;
      v89 = 0u;
      v86 = 0u;
      v87 = 0u;
      v17 = v5[5];
      v18 = [v17 countByEnumeratingWithState:&v86 objects:v90 count:16];
      if (v18)
      {
        v19 = v18;
        v20 = *v87;
LABEL_20:
        v21 = 0;
        while (1)
        {
          if (*v87 != v20)
          {
            objc_enumerationMutation(v17);
          }

          v22 = *(*(&v86 + 1) + 8 * v21);
          if (v22)
          {
            v23 = *(v22 + 391);
          }

          else
          {
            v23 = 0;
          }

          v24 = v23;
          if ([v24 isEqual:v13])
          {
            v25 = [v22 state];

            if (v25 != 255)
            {
              v7 = v85;
              sub_1000AE684(v22, v85);

              goto LABEL_87;
            }
          }

          else
          {
          }

          if (v19 == ++v21)
          {
            v19 = [v17 countByEnumeratingWithState:&v86 objects:v90 count:16];
            if (!v19)
            {
              break;
            }

            goto LABEL_20;
          }
        }
      }

LABEL_46:

LABEL_86:
      v7 = v85;
LABEL_87:

LABEL_88:
      goto LABEL_89;
    }

    if (v12 == 2)
    {
      v88 = 0u;
      v89 = 0u;
      v86 = 0u;
      v87 = 0u;
      v17 = v5[5];
      v26 = [v17 countByEnumeratingWithState:&v86 objects:v90 count:16];
      if (v26)
      {
        v27 = v26;
        v28 = *v87;
LABEL_35:
        v29 = 0;
        while (1)
        {
          if (*v87 != v28)
          {
            objc_enumerationMutation(v17);
          }

          v30 = *(*(&v86 + 1) + 8 * v29);
          if (v30)
          {
            v31 = *(v30 + 391);
          }

          else
          {
            v31 = 0;
          }

          v32 = v31;
          if ([v32 isEqual:v13])
          {
            v33 = [v30 state];

            if (v33 != 255)
            {
              v7 = v85;
              sub_1000AF784(v30, v85);

              goto LABEL_87;
            }
          }

          else
          {
          }

          if (v27 == ++v29)
          {
            v27 = [v17 countByEnumeratingWithState:&v86 objects:v90 count:16];
            if (!v27)
            {
              goto LABEL_46;
            }

            goto LABEL_35;
          }
        }
      }

      goto LABEL_46;
    }

    v34 = v5[8];
    if (v34)
    {
      v84 = v14;
      v35 = v5[9];

      if (v35)
      {
        v88 = 0u;
        v89 = 0u;
        v86 = 0u;
        v87 = 0u;
        v36 = v5[9];
        v37 = [v36 countByEnumeratingWithState:&v86 objects:v90 count:16];
        if (v37)
        {
          v38 = v37;
          v39 = 0;
          v40 = *v87;
LABEL_52:
          v42 = 0;
          while (1)
          {
            if (*v87 != v40)
            {
              objc_enumerationMutation(v36);
            }

            v43 = *(*(&v86 + 1) + 8 * v42);
            v44 = [v43 identifier];
            v45 = [v13 isEqual:v44];

            if (v45)
            {
              v41 = [v43 name];

              v39 = v41;
              if ([v41 length])
              {
                break;
              }
            }

            if (v38 == ++v42)
            {
              v38 = [v36 countByEnumeratingWithState:&v86 objects:v90 count:16];
              v41 = v39;
              if (!v38)
              {
                break;
              }

              goto LABEL_52;
            }
          }
        }

        else
        {
          v41 = 0;
        }

        v7 = v85;
      }

      else
      {
        v41 = 0;
      }

      v14 = v84;
    }

    else
    {
      v41 = 0;
    }

    if (![v41 length])
    {
      v46 = [NSString alloc];
      v91 = 0uLL;
      [v13 getUUIDBytes:&v91];
      v92 = v91;
      v47 = veor_s8(*v91.i8, *&vextq_s8(v91, v91, 8uLL));
      v92.i32[0] = v47.i32[0] ^ v47.i32[1];
      v48 = [[NSData alloc] initWithBytes:&v92 length:16];
      v49 = [v48 base64EncodedStringWithOptions:0];
      v50 = [v49 substringToIndex:6];

      v51 = [v46 initWithFormat:@"?%@", v50];
      v41 = v51;
    }

    v52 = objc_loadWeakRetained(v5 + 16);
    v53 = v14->_nrUUID;
    [v52 pipeDidConnectForNRUUID:1 nrUUID:v53];

    v54 = [NRLinkBluetooth alloc];
    v55 = v5[3];
    v56 = v14->_nrUUID;
    v57 = sub_1000B6370(v54, v55, v5, v56, v7, 0, v41);

    if (!v57)
    {
      v76 = sub_10002D6B4();
      v77 = _NRLogIsLevelEnabled();

      if (v77)
      {
        v78 = sub_10002D6B4();
        v82 = v14;
        v83 = v85;
        v81 = 1178;
        v79 = "";
        v80 = "[NRLinkManagerBluetooth pipeisAvailable:]";
        _NRLogWithArgs();
      }

      v63 = [v85 description];
      [v5 reportEvent:3101 details:v63];
      goto LABEL_85;
    }

    if (!sub_100033FC0(v5))
    {
      sub_100033D54(v5, 0);
    }

    v58 = v5[19];
    if (!v58)
    {
      v59 = objc_alloc_init(NSMutableDictionary);
      v60 = v5[19];
      v5[19] = v59;

      v58 = v5[19];
    }

    v61 = v58;
    v62 = v14->_nrUUID;
    v63 = [v61 objectForKeyedSubscript:v62];

    if (v63)
    {
      if (v63->_state == 2)
      {
        timeOfDisconnect = v63->_timeOfDisconnect;
        nr_continuous_time();
        NRDiffMachTimeInSeconds();
        v66 = v65;
        v67 = objc_alloc_init(NRAnalyticsLinkManagerBluetooth);
        v68 = v67;
        if (v67)
        {
          v67->_pipeDisconnectedDuration = v66;
        }

        [(NRAnalyticsLinkManagerBluetooth *)v67 submit];
      }

      else
      {
        if (qword_100228F70 != -1)
        {
          dispatch_once(&qword_100228F70, &stru_1001FA8E0);
        }

        if (!_NRLogIsLevelEnabled())
        {
          goto LABEL_83;
        }

        v68 = sub_10002D6B4();
        _NRLogWithArgs();
      }
    }

    else
    {
      v63 = objc_alloc_init(NRCBScalablePipeConnectionState);
      if (!v63)
      {
        nr_continuous_time();
LABEL_84:
        v69 = v5[19];
        v70 = v14->_nrUUID;
        [v69 setObject:v63 forKeyedSubscript:v70];

LABEL_85:
        goto LABEL_86;
      }
    }

LABEL_83:
    v63->_state = 1;
    v63->_timeOfConnect = nr_continuous_time();
    goto LABEL_84;
  }
}

void sub_10003A738(id *a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v5 = [v3 peer];
    v6 = [v5 identifier];
    v48 = sub_100168BE8(NRDLocalDevice, v6, 0);

    [a1 reportEvent:4018 detailsFormat:@" psm %u", objc_msgSend(v4, "PSM")];
    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    v47 = a1;
    v7 = [a1[5] copy];
    v8 = [v7 countByEnumeratingWithState:&v49 objects:v53 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v50;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v50 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v49 + 1) + 8 * i);
          v13 = v12;
          if (v12)
          {
            v14 = *(v12 + 407);
          }

          else
          {
            v14 = 0;
          }

          v15 = v14;
          v16 = [v15 PSM];
          v17 = v4;
          v18 = [v4 PSM];

          if (v16 == v18 && v13)
          {
            [v13 setNoTransport:1];
            v13[273] = 1;
            [v13 cancelWithReason:@"L2CAP channel disconnected"];
          }

          v4 = v17;
        }

        v9 = [v7 countByEnumeratingWithState:&v49 objects:v53 count:16];
      }

      while (v9);
    }

    v19 = v48;
    if ((sub_10003615C(v47, v48) & 1) == 0)
    {
      WeakRetained = objc_loadWeakRetained(v47 + 16);
      if (v48)
      {
        nrUUID = v48->_nrUUID;
      }

      else
      {
        nrUUID = 0;
      }

      v22 = nrUUID;
      [WeakRetained pipeDidConnectForNRUUID:0 nrUUID:v22];
    }

    v23 = v47[7];
    if (v23)
    {
      v24 = v23;
      v25 = sub_10002EC6C(v47, v48);

      if (v25)
      {
        if (sub_100033FC0(v47))
        {
          sub_1000347A4(v47);
        }

        else
        {
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

            v45 = v48;
            v46 = v4;
            v44 = 2468;
            v42 = "";
            v43 = "[NRLinkManagerBluetooth processL2CAPChannelDisconnected:]";
            _NRLogWithArgs();
          }
        }
      }
    }

    if ([v47[22] count])
    {
      v26 = v47[22];
      v27 = +[NSNumber numberWithUnsignedShort:](NSNumber, "numberWithUnsignedShort:", [v4 PSM]);
      v28 = [v26 objectForKeyedSubscript:v27];

      v29 = [v4 peer];
      v30 = [v29 identifier];

      if (v30)
      {
        if (v28)
        {
          v31 = *(v28 + 24);
          v32 = [v4 peer];
          v33 = [v32 identifier];
          v34 = [v31 objectForKeyedSubscript:v33];

          if (v34)
          {
            v35 = *(v28 + 24);
            v36 = [v4 peer];
            v37 = [v36 identifier];
            [v35 setObject:0 forKeyedSubscript:v37];

            v38 = *(v28 + 16);
            v39 = v38;
            v40 = [v4 peer];
            v41 = [v40 identifier];
            (v38)[2](v39, 0, v41, [v4 PSM]);
          }
        }
      }

      else
      {
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

          _NRLogWithArgs();
        }
      }

      v19 = v48;
    }
  }
}

void sub_10003B690(void *a1)
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

void sub_10003BD40(id *a1, void *a2, void *a3)
{
  v31 = a2;
  v5 = a3;
  if (a1)
  {
    v6 = [a1[15] objectForKeyedSubscript:v5];
    if (v31 | v6 && ![v31 isEqual:v6])
    {
      [a1[15] setObject:v31 forKeyedSubscript:v5];
      v7 = [v31 inputBytesPerSecond];
      v8 = [v7 unsignedIntValue];

      v9 = [v31 outputBytesPerSecond];
      v10 = [v9 unsignedIntValue];

      v11 = [v31 packetsPerSecond];
      v12 = [v11 unsignedIntValue];

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

        v29 = v10;
        v30 = v12;
        v27 = v5;
        v28 = v8;
        v25 = "[NRLinkManagerBluetooth applyLinkRequirements:forBTUUID:]";
        v26 = 897;
        v24 = "";
        _NRLogWithArgs();
      }

      [a1[6] setLinkRequirementsForPeer:v5 withClientName:@"com.apple.terminusLink" packetsPerSecond:v12 inputBytesPerSecond:v8 outputBytesPerSecond:{v10, v24, v25, v26, v27, v28, v29, v30}];
      v13 = [v31 isNotEmpty];
      v14 = [v6 isNotEmpty];
      if (v13)
      {
        if (v14)
        {
          [v31 setStartTime:{objc_msgSend(v6, "startTime")}];
          [v31 setReportedToABC:{objc_msgSend(v6, "reportedToABC")}];
        }

        else
        {
          [v31 setStartTime:nr_continuous_time()];
        }
      }

      else if (v14)
      {
        nr_continuous_time();
        v15 = objc_alloc_init(NRAnalyticsBluetoothAssertion);
        [v6 startTime];
        NRDiffMachTimeInSeconds();
        if (v15)
        {
          v15->_durationInSec = v16;
        }

        v17 = [a1[15] count];
        if (v15)
        {
          v15->_multipleAssertions = v17 != 0;
        }

        [(NRAnalyticsBluetoothAssertion *)v15 submit];
        sub_10003C2C0(v6, 1);
      }

      if ([a1[15] count])
      {
        if (!a1[17])
        {
          v18 = a1[3];
          v19 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, v18);

          dispatch_source_set_timer(v19, 0x8000000000000000, 0x8BB2C97000uLL, 0x12A05F200uLL);
          objc_initWeak(&location, a1);
          handler[0] = _NSConcreteStackBlock;
          handler[1] = 3221225472;
          handler[2] = sub_10003C410;
          handler[3] = &unk_1001FD0D8;
          objc_copyWeak(&v34, &location);
          v20 = v19;
          v33 = v20;
          dispatch_source_set_event_handler(v20, handler);
          dispatch_resume(v20);
          objc_storeStrong(a1 + 17, v19);
          if (qword_100228F70 != -1)
          {
            dispatch_once(&qword_100228F70, &stru_1001FA8E0);
          }

          v21 = qword_100228F68;
          IsLevelEnabled = _NRLogIsLevelEnabled();

          if (IsLevelEnabled)
          {
            if (qword_100228F70 != -1)
            {
              dispatch_once(&qword_100228F70, &stru_1001FA8E0);
            }

            v23 = qword_100228F68;
            _NRLogWithArgs();
          }

          objc_destroyWeak(&v34);
          objc_destroyWeak(&location);
        }
      }

      else
      {
        sub_100032A1C(a1);
      }
    }

    else
    {
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

        _NRLogWithArgs();
      }
    }
  }
}

void sub_10003C244(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 88));
  _Unwind_Resume(a1);
}

void sub_10003C260(uint64_t a1)
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

void sub_10003C2C0(void *a1, int a2)
{
  v13 = a1;
  if (([v13 reportedToABC] & 1) == 0)
  {
    [v13 startTime];
    NRDiffMachTimeInSeconds();
    v4 = v3;
    if (v3 > 599.0)
    {
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

        v12 = v4;
        v11 = 940;
        v8 = "";
        v10 = "[NRLinkManagerBluetooth triggerLinkRequirementsABCIfNeeded:shouldTrigger:now:]";
        _NRLogWithArgs();
      }

      [v13 setReportedToABC:{1, v8, v10, v11, *&v12}];
      if (a2)
      {
        sub_10013C2A8(@"NRLinkManagerBluetooth", @"Bluetooth Assertion", @"exceeded threshold", 0, 0, v5, v6, v7, v9);
      }
    }
  }
}

void sub_10003C410(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained && WeakRetained[17] == *(a1 + 32))
  {
    nr_continuous_time();
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v4 = v3[15];
    v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = 0;
      v8 = *v15;
      do
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v15 != v8)
          {
            objc_enumerationMutation(v4);
          }

          v10 = [v3[15] objectForKeyedSubscript:{*(*(&v14 + 1) + 8 * i), v14}];
          if (([v10 reportedToABC] & 1) == 0)
          {
            sub_10003C2C0(v10, 0);
            v7 |= [v10 reportedToABC];
          }
        }

        v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v6);

      if (v7)
      {
        sub_10013C2A8(@"NRLinkManagerBluetooth", @"Bluetooth Assertion", @"exceeded threshold", 0, 0, v11, v12, v13, v14);
      }
    }

    else
    {
    }
  }
}

void sub_10003C87C(uint64_t a1)
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

      v4 = *(a1 + 40);
      v5 = *(a1 + 32);
      _NRLogWithArgs();
    }
  }
}

void sub_10003CFD4(uint64_t a1)
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

      v4 = *(a1 + 40);
      v5 = *(a1 + 32);
      _NRLogWithArgs();
    }
  }
}

void sub_10003D540(uint64_t a1)
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

      v4 = *(a1 + 40);
      v5 = *(a1 + 32);
      _NRLogWithArgs();
    }
  }
}

void sub_10003E25C(uint64_t a1)
{
  if (a1 && *(a1 + 144))
  {
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

      _NRLogWithArgs();
    }

    dispatch_source_cancel(*(a1 + 144));
    v2 = *(a1 + 144);
    *(a1 + 144) = 0;
  }
}

id sub_10003E4E0(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    if ([v1 count])
    {
      v3 = objc_alloc_init(NSMutableArray);
      v11 = 0u;
      v12 = 0u;
      v13 = 0u;
      v14 = 0u;
      v4 = [[NSSet alloc] initWithArray:v2];
      v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v5)
      {
        v6 = v5;
        v7 = *v12;
        do
        {
          for (i = 0; i != v6; i = i + 1)
          {
            if (*v12 != v7)
            {
              objc_enumerationMutation(v4);
            }

            v9 = [CBUUID UUIDWithNSUUID:*(*(&v11 + 1) + 8 * i), v11];
            [v3 addObject:v9];
          }

          v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
        }

        while (v6);
      }
    }

    else
    {
      v3 = &__NSArray0__struct;
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void sub_10003E818(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (!v2)
  {
    goto LABEL_18;
  }

  v3 = *(v2 + 16);
  if (!v3)
  {
    v18 = *(v2 + 40);
LABEL_18:
    v19 = _NRCopyLogObjectForNRUUID();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (!IsLevelEnabled)
    {
      return;
    }

    v21 = *(a1 + 32);
    if (v21)
    {
      v22 = *(v21 + 40);
    }

    v34 = _NRCopyLogObjectForNRUUID();
    _NRLogWithArgs();
    goto LABEL_30;
  }

  *(v2 + 16) = v3 - 1;
  v4 = [*(a1 + 32) isActive];
  v5 = *(a1 + 32);
  if (v4)
  {
    sub_10003EA58(v5, *(a1 + 40), 1);
    v6 = *(a1 + 32);
    if (v6)
    {
      v7 = *(v6 + 40);
    }

    v8 = _NRCopyLogObjectForNRUUID();
    v9 = _NRLogIsLevelEnabled();

    if (v9)
    {
      v10 = *(a1 + 32);
      if (v10)
      {
        v10 = v10[5];
      }

      v11 = v10;
      v12 = _NRCopyLogObjectForNRUUID();
      v13 = *(a1 + 32);
      if (v13)
      {
        v13 = *(v13 + 16);
      }

      v32 = 297;
      v33 = v13;
      v30 = "";
      v31 = "[NRQuickRelayAgent unassertAgentWithOptions:]_block_invoke";
      _NRLogWithArgs();
    }

    v14 = *(a1 + 32);
    if (v14)
    {
      if (*(v14 + 16))
      {
        return;
      }

      WeakRetained = objc_loadWeakRetained((v14 + 64));
      v16 = *(a1 + 32);
      if (v16)
      {
        v17 = *(v16 + 40);
      }

      else
      {
        v17 = 0;
      }
    }

    else
    {
      WeakRetained = 0;
      v17 = 0;
    }

    v34 = WeakRetained;
    [WeakRetained deviceHasQuickRelayRequest:v17 hasQuickRelayRequest:{0, v30, v31, v32, v33}];
    goto LABEL_30;
  }

  if (v5)
  {
    v23 = *(v5 + 40);
  }

  v24 = _NRCopyLogObjectForNRUUID();
  v25 = _NRLogIsLevelEnabled();

  if (v25)
  {
    v26 = *(a1 + 32);
    if (v26)
    {
      v26 = v26[5];
    }

    v34 = v26;
    v27 = _NRCopyLogObjectForNRUUID();
    v28 = *(a1 + 32);
    if (v28)
    {
      v29 = *(v28 + 16);
    }

    _NRLogWithArgs();

LABEL_30:
  }
}

void sub_10003EA58(uint64_t a1, void *a2, int a3)
{
  if (!a1 || !a2)
  {
    return;
  }

  v5 = [a2 objectForKeyedSubscript:NWNetworkAgentStartOptionClientUUID];
  v18 = v5;
  if (!v5)
  {
    if (qword_100228F80 != -1)
    {
      dispatch_once(&qword_100228F80, &stru_1001FA970);
    }

    IsLevelEnabled = _NRLogIsLevelEnabled();
    v9 = 0;
    if (!IsLevelEnabled)
    {
      goto LABEL_23;
    }

    if (qword_100228F80 != -1)
    {
      dispatch_once(&qword_100228F80, &stru_1001FA970);
    }

    _NRLogWithArgs();
    goto LABEL_22;
  }

  v6 = v5;
  v7 = *(a1 + 88);
  if (v7)
  {
    if (a3)
    {
LABEL_6:
      [v7 setObject:0 forKeyedSubscript:v6];
LABEL_22:
      v9 = v18;
      goto LABEL_23;
    }
  }

  else
  {
    v10 = objc_alloc_init(NSMutableDictionary);
    v11 = *(a1 + 88);
    *(a1 + 88) = v10;

    v6 = v18;
    v7 = *(a1 + 88);
    if (a3)
    {
      goto LABEL_6;
    }
  }

  v12 = [v7 objectForKeyedSubscript:v6];

  v9 = v18;
  if (!v12)
  {
    v13 = [NWPath pathForClientID:v18];
    v14 = [v13 parameters];
    v15 = [v14 copyCParameters];

    if (v15)
    {
      pid = nw_parameters_get_pid();
      if (pid != getpid())
      {
        v17 = sub_10013CB6C(pid, 0);
        if (v17)
        {
          [*(a1 + 88) setObject:v17 forKeyedSubscript:v18];
        }
      }
    }

    goto LABEL_22;
  }

LABEL_23:
}

void sub_10003EC20(id a1)
{
  v1 = os_log_create("com.apple.networkrelay", "");
  v2 = qword_100228F78;
  qword_100228F78 = v1;

  _objc_release_x1(v1, v2);
}

void sub_10003ED0C(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    ++*(v2 + 16);
    v3 = *(a1 + 32);
  }

  else
  {
    v3 = 0;
  }

  v4 = [v3 isActive];
  v5 = *(a1 + 32);
  if (v4)
  {
    sub_10003EA58(v5, *(a1 + 40), 0);
    v6 = *(a1 + 32);
    if (v6)
    {
      v7 = *(v6 + 40);
    }

    v8 = _NRCopyLogObjectForNRUUID();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v10 = *(a1 + 32);
      if (v10)
      {
        v10 = v10[5];
      }

      v11 = v10;
      v12 = _NRCopyLogObjectForNRUUID();
      v13 = *(a1 + 32);
      if (v13)
      {
        v13 = *(v13 + 16);
      }

      v27 = 273;
      v28 = v13;
      v25 = "";
      v26 = "[NRQuickRelayAgent assertAgentWithOptions:]_block_invoke";
      _NRLogWithArgs();
    }

    v14 = *(a1 + 32);
    if (v14)
    {
      WeakRetained = objc_loadWeakRetained((v14 + 64));
      v16 = *(a1 + 32);
      if (v16)
      {
        v17 = *(v16 + 40);
LABEL_15:
        v29 = WeakRetained;
        [WeakRetained deviceHasQuickRelayRequest:v17 hasQuickRelayRequest:{1, v25, v26, v27, v28}];
LABEL_24:

        return;
      }
    }

    else
    {
      WeakRetained = 0;
    }

    v17 = 0;
    goto LABEL_15;
  }

  if (v5)
  {
    v18 = *(v5 + 40);
  }

  v19 = _NRCopyLogObjectForNRUUID();
  v20 = _NRLogIsLevelEnabled();

  if (v20)
  {
    v21 = *(a1 + 32);
    if (v21)
    {
      v21 = v21[5];
    }

    v29 = v21;
    v22 = _NRCopyLogObjectForNRUUID();
    v23 = *(a1 + 32);
    if (v23)
    {
      v24 = *(v23 + 16);
    }

    _NRLogWithArgs();

    goto LABEL_24;
  }
}

id *sub_10003F294(id *a1, void *a2, void *a3, void *a4)
{
  v8 = a2;
  v9 = a3;
  v10 = a4;
  if (a1)
  {
    if (v8)
    {
      if (v9)
      {
        v46.receiver = a1;
        v46.super_class = NRQuickRelayAgent;
        v11 = objc_msgSendSuper2(&v46, "init");
        if (v11)
        {
          v12 = v11;
          objc_storeStrong(v11 + 6, a3);
          objc_storeStrong(v12 + 5, a2);
          v13 = +[NSUUID UUID];
          [v12 setAgentUUID:v13];

          [v12 setUserActivated:1];
          [v12 setSpecificUseOnly:1];
          [v12 setAgentDescription:@"Quick relay netagent"];
          objc_storeWeak(v12 + 8, v10);
          v14 = [NSString alloc];
          v15 = [v12 agentUUID];
          v16 = [v15 UUIDString];
          v17 = [v14 initWithFormat:@"NRQuickRelayAgent-%@", v16];
          v18 = v12[9];
          v12[9] = v17;

          v19 = sub_100163A30(NRDLocalDevice, v12[5]);
          if (v19)
          {
            v20 = v19;
            v21 = [[NSString alloc] initWithFormat:@"%@", v19];
            v22 = v12[10];
            v12[10] = v21;

            v23 = v12[5];
            v24 = v12[10];
            v25 = v23;
            v26 = [v12 agentUUID];
            v27 = [v26 UUIDString];
            sub_1000059A8(v25, 17001, v24, v27);

            a1 = v12;
            goto LABEL_7;
          }

          v41 = sub_10003F784();
          IsLevelEnabled = _NRLogIsLevelEnabled();

          if (IsLevelEnabled)
          {
            v43 = sub_10003F784();
            _NRLogWithArgs();
          }

          _os_log_pack_size();
          v44 = *__error();
          v45 = _os_log_pack_fill();
          *v45 = 136446210;
          *(v45 + 4) = "[NRQuickRelayAgent initWithNRUUID:queue:delegate:]";
LABEL_21:
          sub_10003F784();
          _NRLogAbortWithPack();
        }

        v36 = sub_10003F784();
        v37 = _NRLogIsLevelEnabled();

        if (v37)
        {
          v38 = sub_10003F784();
          _NRLogWithArgs();
        }

        _os_log_pack_size();
        v39 = *__error();
LABEL_17:
        v40 = _os_log_pack_fill();
        *v40 = 136446210;
        *(v40 + 4) = "[NRQuickRelayAgent initWithNRUUID:queue:delegate:]";
        goto LABEL_21;
      }

      v33 = sub_10003F784();
      v34 = _NRLogIsLevelEnabled();

      if (v34)
      {
        v35 = sub_10003F784();
        _NRLogWithArgs();
      }
    }

    else
    {
      v29 = sub_10003F784();
      v30 = _NRLogIsLevelEnabled();

      if (v30)
      {
        v31 = sub_10003F784();
        _NRLogWithArgs();
      }
    }

    _os_log_pack_size();
    v32 = *__error();
    goto LABEL_17;
  }

LABEL_7:

  return a1;
}

id sub_10003F784()
{
  if (qword_100228F80 != -1)
  {
    dispatch_once(&qword_100228F80, &stru_1001FA970);
  }

  v1 = qword_100228F78;

  return v1;
}

void sub_10003F7D8(uint64_t a1)
{
  if (a1)
  {
    dispatch_assert_queue_V2(*(a1 + 48));
    if ([a1 isActive])
    {
      [a1 setActive:0];
      [*(a1 + 56) updateNetworkAgent:a1];
      v2 = *(a1 + 40);
      v3 = *(a1 + 80);
      v4 = v2;
      v5 = [a1 agentUUID];
      v6 = [v5 UUIDString];
      sub_1000059A8(v4, 17004, v3, v6);

      WeakRetained = objc_loadWeakRetained((a1 + 64));
      [WeakRetained deviceHasQuickRelayRequest:*(a1 + 40) hasQuickRelayRequest:0];

      v8 = *(a1 + 88);
      *(a1 + 88) = 0;
    }
  }
}

void sub_10003F8D8(uint64_t a1)
{
  if (a1)
  {
    dispatch_assert_queue_V2(*(a1 + 48));
    if (([a1 isActive] & 1) == 0)
    {
      [a1 setActive:1];
      [*(a1 + 56) updateNetworkAgent:a1];
      if (*(a1 + 16))
      {
        WeakRetained = objc_loadWeakRetained((a1 + 64));
        [WeakRetained deviceHasQuickRelayRequest:*(a1 + 40) hasQuickRelayRequest:1];
      }

      v3 = *(a1 + 40);
      v4 = *(a1 + 80);
      v7 = v3;
      v5 = [a1 agentUUID];
      v6 = [v5 UUIDString];
      sub_1000059A8(v7, 17005, v4, v6);
    }
  }
}

void sub_10003FFDC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id sub_100040008()
{
  if (qword_100228F90 != -1)
  {
    dispatch_once(&qword_100228F90, &stru_1001FAA30);
  }

  v1 = qword_100228F88;

  return v1;
}

void sub_10004005C(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v18 = WeakRetained;
    v4 = [WeakRetained state] == 255;
    WeakRetained = v18;
    if (!v4)
    {
      v5 = v18[4];
      v6 = _NRCopyLogObjectForNRUUID();
      if (a2)
      {
        IsLevelEnabled = _NRLogIsLevelEnabled();

        WeakRetained = v18;
        if (!IsLevelEnabled)
        {
          goto LABEL_10;
        }

        v8 = v18[4];
        v9 = _NRCopyLogObjectForNRUUID();
        v17 = [v18 copyDescription];
        _NRLogWithArgs();
      }

      else
      {
        v10 = _NRLogIsLevelEnabled();

        if (v10)
        {
          v11 = v18[4];
          v12 = _NRCopyLogObjectForNRUUID();
          v15 = 1308;
          v16 = [v18 copyDescription];
          v13 = "";
          v14 = "[NRLinkWiFi sendControlData:]_block_invoke";
          _NRLogWithArgs();
        }

        [v18 cancelWithReason:{@"peer is NOT available (Did not receive response to control notify)", v13, v14, v15, v16}];
      }

      WeakRetained = v18;
    }
  }

LABEL_10:
}

void sub_1000401B0(id a1)
{
  v1 = os_log_create("com.apple.networkrelay", "");
  v2 = qword_100228F88;
  qword_100228F88 = v1;

  _objc_release_x1(v1, v2);
}

id sub_1000409E8(void *a1)
{
  if (a1)
  {
    v1 = a1;
    if ([a1 state] == 255 || !objc_msgSend(v1, "shouldSendIDSDeviceID"))
    {
      a1 = 0;
    }

    else
    {
      objc_opt_self();
      if (qword_1002290C0 != -1)
      {
        dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
      }

      v2 = qword_1002290B8;
      v3 = sub_1000CAD2C(v2, 0);

      if (v3)
      {
        v4 = [v3 dataUsingEncoding:4];
        v5 = [[NEIKEv2PrivateNotify alloc] initWithNotifyStatus:48607 notifyData:v4];
      }

      else
      {
        objc_initWeak(&location, v1);
        objc_opt_self();
        if (qword_1002290C0 != -1)
        {
          dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
        }

        v6 = qword_1002290B8;
        v8[0] = _NSConcreteStackBlock;
        v8[1] = 3221225472;
        v8[2] = sub_1000435D0;
        v8[3] = &unk_1001FBF00;
        objc_copyWeak(&v9, &location);

        objc_destroyWeak(&v9);
        objc_destroyWeak(&location);
        v5 = 0;
      }

      a1 = v5;
    }
  }

  return a1;
}

void sub_100040BA8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100040BCC(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 295);
    if (v2)
    {
      [v2 setClientQueue:*(a1 + 8)];
      objc_initWeak(location, a1);
      v3 = *(a1 + 295);
      v38[0] = _NSConcreteStackBlock;
      v38[1] = 3221225472;
      v38[2] = sub_100041114;
      v38[3] = &unk_1001FC090;
      objc_copyWeak(&v40, location);
      v4 = v3;
      v39 = v4;
      [*(a1 + 295) setStateUpdateBlock:v38];
      v35[0] = _NSConcreteStackBlock;
      v35[1] = 3221225472;
      v35[2] = sub_100041A2C;
      v35[3] = &unk_1001FB088;
      objc_copyWeak(&v37, location);
      v5 = v4;
      v36 = v5;
      [*(a1 + 295) setChildStateUpdateBlock:v35];
      v32[0] = _NSConcreteStackBlock;
      v32[1] = 3221225472;
      v32[2] = sub_100041BFC;
      v32[3] = &unk_1001FB0B0;
      objc_copyWeak(&v34, location);
      v6 = v5;
      v33 = v6;
      [*(a1 + 295) setConfigurationUpdateBlock:v32];
      v29[0] = _NSConcreteStackBlock;
      v29[1] = 3221225472;
      v29[2] = sub_100041CD8;
      v29[3] = &unk_1001FB0D8;
      objc_copyWeak(&v31, location);
      v7 = v6;
      v30 = v7;
      [*(a1 + 295) setTrafficSelectorUpdateBlock:v29];
      v26[0] = _NSConcreteStackBlock;
      v26[1] = 3221225472;
      v26[2] = sub_100041DD8;
      v26[3] = &unk_1001FC108;
      objc_copyWeak(&v28, location);
      v8 = v7;
      v27 = v8;
      [*(a1 + 295) setAdditionalAddressesUpdateBlock:v26];
      v23[0] = _NSConcreteStackBlock;
      v23[1] = 3221225472;
      v23[2] = sub_100041EB4;
      v23[3] = &unk_1001FD0D8;
      objc_copyWeak(&v25, location);
      v9 = v8;
      v24 = v9;
      [*(a1 + 295) setShortDPDEventBlock:v23];
      v20[0] = _NSConcreteStackBlock;
      v20[1] = 3221225472;
      v20[2] = sub_100041F88;
      v20[3] = &unk_1001FC108;
      objc_copyWeak(&v22, location);
      v10 = v9;
      v21 = v10;
      [*(a1 + 295) setPrivateNotifyStatusEvent:v20];
      v11 = *(a1 + 32);
      v12 = _NRCopyLogObjectForNRUUID();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      if (IsLevelEnabled)
      {
        v14 = *(a1 + 32);
        v15 = _NRCopyLogObjectForNRUUID();
        v18 = [a1 copyDescription];
        _NRLogWithArgs();
      }

      objc_destroyWeak(&v22);
      objc_destroyWeak(&v25);

      objc_destroyWeak(&v28);
      objc_destroyWeak(&v31);

      objc_destroyWeak(&v34);
      objc_destroyWeak(&v37);

      objc_destroyWeak(&v40);
      objc_destroyWeak(location);
    }

    else
    {
      v16 = sub_100040008();
      v17 = _NRLogIsLevelEnabled();

      if (v17)
      {
        v19 = sub_100040008();
        _NRLogWithArgs();
      }
    }
  }
}

void sub_100041080(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v6 + 40));
  objc_destroyWeak((v5 + 40));
  objc_destroyWeak((v4 + 40));
  objc_destroyWeak((v3 + 40));
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v7 - 120));
  objc_destroyWeak((v7 - 112));
  _Unwind_Resume(a1);
}

void sub_100041114(uint64_t a1, uint64_t a2, void *a3)
{
  v79 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    if (v79)
    {
      if (([WeakRetained ikeClassCEstablished] & 1) == 0)
      {
        v6 = nr_absolute_time();
        v7 = *(WeakRetained + 311);
        if (v7)
        {
          *(v7 + 48) = v6;
        }
      }

      [WeakRetained setIkeClassDEstablished:0];
      [WeakRetained setIkeClassCEstablished:0];
      WeakRetained[83] = 0;
      v8 = NEIKEv2ErrorDomain;
      v9 = v79;
      if ([v9 code] == 4)
      {
        v10 = [v9 domain];
        v11 = [v10 isEqualToString:v8];

        if (v11)
        {
          v12 = *(a1 + 32);
          SessionStateString = NEIKEv2CreateSessionStateString();
          [WeakRetained cancelWithReason:{@"ClassC session %@ got IKE error %@ with state %@", v12, v9, SessionStateString}];
LABEL_69:

          goto LABEL_70;
        }
      }

      else
      {
      }

      v22 = *(a1 + 32);
      v23 = NEIKEv2CreateSessionStateString();
      [WeakRetained reportEvent:3018 detailsFormat:@"ClassC session %@ got IKE error %@ with state %@", v22, v9, v23];

      [WeakRetained processIKEDisconnection:3 error:v9];
      if ([WeakRetained state] == 255)
      {
        goto LABEL_70;
      }

      v24 = v9;
      if ([v24 code] == 24)
      {
        v25 = NEIKEv2ProtocolErrorDomain;
        v26 = [v24 domain];
        LOBYTE(v25) = [v26 isEqualToString:v25];

        if (v25)
        {
          goto LABEL_26;
        }
      }

      else
      {
      }

      v27 = v24;
      if ([v27 code] == 8)
      {
        v28 = [v27 domain];
        v29 = [v28 isEqualToString:v8];

        if (v29)
        {
LABEL_26:
          sub_10004230C(WeakRetained);
          goto LABEL_70;
        }
      }

      else
      {
      }

      sub_100042448(WeakRetained);
      goto LABEL_70;
    }

    v14 = *(a1 + 32);
    v15 = NEIKEv2CreateSessionStateString();
    [WeakRetained reportEvent:3009 detailsFormat:@"ClassC session %@ changed state to %@", v14, v15];

    if (a2 > 2)
    {
      if (a2 != 3)
      {
        if (a2 == 4)
        {
          [WeakRetained cancelWithReason:{@"ClassC session %@ got unexpected MOBIKE state", *(a1 + 32)}];
          goto LABEL_70;
        }

LABEL_29:
        SessionStateString = NEIKEv2CreateSessionStateString();
        [WeakRetained cancelWithReason:{@"ClassC session %@ got bad IKE state %@", SessionStateString, v74, v75}];
        goto LABEL_69;
      }

      if (([WeakRetained ikeClassCEstablished] & 1) == 0)
      {
        v35 = nr_absolute_time();
        v36 = *(WeakRetained + 311);
        if (v36)
        {
          *(v36 + 48) = v35;
        }
      }

      [WeakRetained setIkeClassDEstablished:0];
      [WeakRetained setIkeClassCEstablished:0];
      WeakRetained[83] = 0;
      [WeakRetained reportEvent:3018 detailsFormat:@"ClassC session %@ cancelled by peer", *(a1 + 32)];
      [WeakRetained cancelWithReason:@"ClassC session %@ cancelled by peer"];
    }

    else
    {
      if (a2 != 1)
      {
        if (a2 == 2)
        {
          [WeakRetained setIkeClassDEstablished:1];
          [WeakRetained setIkeClassCEstablished:1];
          v16 = [WeakRetained state];
          v17 = *(WeakRetained + 4);
          v18 = _NRCopyLogObjectForNRUUID();
          IsLevelEnabled = _NRLogIsLevelEnabled();

          if (v16 == 8)
          {
            if (IsLevelEnabled)
            {
              v20 = *(WeakRetained + 4);
              v21 = _NRCopyLogObjectForNRUUID();
              v76 = [WeakRetained copyDescription];
              v77 = *(a1 + 32);
              v75 = 853;
              v73 = "";
              v74 = "[NRLinkWiFi setupIKECallbacksClassC]_block_invoke";
              _NRLogWithArgs();
            }
          }

          else
          {
            if (IsLevelEnabled)
            {
              v37 = *(WeakRetained + 4);
              v38 = _NRCopyLogObjectForNRUUID();
              v76 = [WeakRetained copyDescription];
              v77 = *(a1 + 32);
              v75 = 855;
              v73 = "";
              v74 = "[NRLinkWiFi setupIKECallbacksClassC]_block_invoke";
              _NRLogWithArgs();
            }

            [WeakRetained setPowerAssertionState:{0, v73, v74, v75, v76, v77}];
            [WeakRetained changeStateTo:8 detailsFormat:@"(ClassC IKE %@ connected after received first notify)", *(a1 + 32)];
            v39 = nr_absolute_time();
            v40 = *(WeakRetained + 311);
            if (v40)
            {
              *(v40 + 48) = v39;
            }

            *(WeakRetained + 263) = 0;
            sub_100043264(WeakRetained);
            if ([WeakRetained shouldCreateCompanionProxyAgent])
            {
              v41 = [WeakRetained companionProxyAgent];

              if (!v41)
              {
                if ([WeakRetained hasCompanionDatapath])
                {
                  [WeakRetained virtualInterface];
                  v42 = NEVirtualInterfaceCopyName();
                }

                else
                {
                  v42 = [WeakRetained localInterfaceName];
                }

                v51 = v42;
                v52 = [WeakRetained nrUUID];
                v53 = sub_100163A30(NRDLocalDevice, v52);
                v54 = v53;
                if (v53)
                {
                  v55 = *(v53 + 128);
                }

                else
                {
                  v55 = 0;
                }

                v56 = v55;

                if (v51 && v56)
                {
                  v57 = [NRCompanionProxyAgent alloc];
                  v58 = [WeakRetained queue];
                  v59 = [WeakRetained nrUUID];
                  v60 = sub_100070A9C(&v57->super.isa, v58, v51, v56, v59);
                  v61 = *(WeakRetained + 11);
                  *(WeakRetained + 11) = v60;

                  [WeakRetained reportEvent:12001];
                }
              }

              v62 = [WeakRetained companionProxyAgent];
              v63 = sub_100070DD8(v62, WeakRetained);

              if (v63)
              {
                [WeakRetained reportEvent:12002];
              }

              else
              {
                v64 = *(WeakRetained + 4);
                v65 = _NRCopyLogObjectForNRUUID();
                v66 = _NRLogIsLevelEnabled();

                if (v66)
                {
                  v67 = *(WeakRetained + 4);
                  v68 = _NRCopyLogObjectForNRUUID();
                  v75 = 884;
                  v76 = [WeakRetained copyDescription];
                  v73 = "";
                  v74 = "[NRLinkWiFi setupIKECallbacksClassC]_block_invoke";
                  _NRLogWithArgs();
                }
              }
            }
          }

          if (!*(WeakRetained + 287))
          {
            v69 = objc_alloc_init(NSMutableArray);
            v70 = sub_1000409E8(WeakRetained);
            if (v70)
            {
              [v69 addObject:v70];
            }

            if ([v69 count])
            {
              objc_initWeak(&location, WeakRetained);
              v71 = *(WeakRetained + 295);
              v72 = [WeakRetained queue];
              v80[0] = _NSConcreteStackBlock;
              v80[1] = 3221225472;
              v80[2] = sub_1000434AC;
              v80[3] = &unk_1001FC018;
              objc_copyWeak(&v81, &location);
              [v71 sendPrivateNotifies:v69 maxRetries:10 retryIntervalInMilliseconds:1000 callbackQueue:v72 callback:v80];

              objc_destroyWeak(&v81);
              objc_destroyWeak(&location);
            }
          }

          SessionStateString = [WeakRetained linkDelegate];
          [SessionStateString linkIsReady:WeakRetained];
          goto LABEL_69;
        }

        goto LABEL_29;
      }

      if ([WeakRetained state] == 1)
      {
        v30 = *(WeakRetained + 4);
        v31 = _NRCopyLogObjectForNRUUID();
        v32 = _NRLogIsLevelEnabled();

        if (v32)
        {
          v33 = *(WeakRetained + 4);
          v34 = _NRCopyLogObjectForNRUUID();
          v76 = [WeakRetained copyDescription];
          v77 = *(a1 + 32);
          v75 = 842;
          v73 = "";
          v74 = "[NRLinkWiFi setupIKECallbacksClassC]_block_invoke";
          _NRLogWithArgs();
        }

        [WeakRetained changeStateTo:{5, v73, v74, v75, v76, v77}];
      }

      else
      {
        v43 = [WeakRetained state];
        v44 = *(WeakRetained + 4);
        v45 = _NRCopyLogObjectForNRUUID();
        if (v43 == 5)
        {
          v46 = _NRLogIsLevelEnabled();

          if (!v46)
          {
            goto LABEL_70;
          }
        }

        else
        {
          v47 = _NRLogIsLevelEnabled();

          if (!v47)
          {
            goto LABEL_70;
          }
        }

        v48 = *(WeakRetained + 4);
        v49 = _NRCopyLogObjectForNRUUID();
        v50 = [WeakRetained copyDescription];
        v78 = *(a1 + 32);
        _NRLogWithArgs();
      }
    }
  }

LABEL_70:
}

void sub_100041A08(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

void sub_100041A2C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v18 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    if (v18)
    {
      v8 = *(a1 + 32);
      SessionStateString = NEIKEv2CreateSessionStateString();
      [WeakRetained reportEvent:3018 detailsFormat:@"ClassC session %@ got child %u state update %@ error %@", v8, a2, SessionStateString, v18];

      [WeakRetained processIKEDisconnection:3 error:v18];
      if ([WeakRetained state] == 255)
      {
        goto LABEL_16;
      }

      v10 = v18;
      if ([v10 code] == 24)
      {
        v11 = NEIKEv2ProtocolErrorDomain;
        v12 = [v10 domain];
        LOBYTE(v11) = [v12 isEqualToString:v11];

        if (v11)
        {
          goto LABEL_12;
        }
      }

      else
      {
      }

      v14 = v10;
      if ([v14 code] == 8)
      {
        v15 = NEIKEv2ErrorDomain;
        v16 = [v14 domain];
        LODWORD(v15) = [v16 isEqualToString:v15];

        if (v15)
        {
LABEL_12:
          sub_10004230C(WeakRetained);
          goto LABEL_16;
        }
      }

      else
      {
      }
    }

    else
    {
      v13 = *(a1 + 32);
      if (a3 != 3)
      {
        v17 = NEIKEv2CreateSessionStateString();
        [WeakRetained reportEvent:3009 detailsFormat:@"ClassC session %@ child %u state update %@", v13, a2, v17];

        goto LABEL_16;
      }

      [WeakRetained reportEvent:3018 detailsFormat:@"ClassC session %@ got child %u Disconnected state with no error", v13, a2];
    }

    sub_100042448(WeakRetained);
  }

LABEL_16:
}

void sub_100041BFC(uint64_t a1, void *a2)
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

void sub_100041CD8(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v16 = a3;
  v6 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
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
      _NRLogWithArgs();
    }
  }
}