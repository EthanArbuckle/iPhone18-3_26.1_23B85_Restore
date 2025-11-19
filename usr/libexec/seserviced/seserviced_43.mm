void sub_10039D980(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 48))
  {
    sub_100390BC4();
    [NSString stringWithUTF8String:"com.apple.sesd.kml.pairing"];
    objc_claimAutoreleasedReturnValue();
    [sub_10039D68C() userInfo];
    objc_claimAutoreleasedReturnValue();
    v6 = [sub_10039D60C() errorWithDomain:? code:? userInfo:?];
    sub_10039D664(v6);

    a3 = *v3;
  }

  sub_1003E97B8(a3, 11);
}

void sub_10039DA04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 48))
  {
    sub_100390BC4();
    [NSString stringWithUTF8String:"com.apple.sesd.kml.pairing"];
    objc_claimAutoreleasedReturnValue();
    [sub_10039D68C() userInfo];
    objc_claimAutoreleasedReturnValue();
    v6 = [sub_10039D60C() errorWithDomain:? code:? userInfo:?];
    sub_10039D664(v6);

    a3 = *v3;
  }

  sub_1003E97B8(a3, 12);
}

void sub_10039DA88(uint64_t *a1, void *a2)
{
  v6 = KmlLogger();
  if (sub_10036DCF8(v6))
  {
    sub_10036DB8C();
    sub_10039D644(&_mh_execute_header, v7, v8, "%s : %i : Received DidStartEmulation callback for Hce session.", v9, v10, v11, v12, v15);
  }

  sub_1003EA370(*a1);
  if (a2[6])
  {
    [NSString stringWithUTF8String:"com.apple.sesd.kml.pairing"];
    objc_claimAutoreleasedReturnValue();
    [sub_10039D68C() userInfo];
    objc_claimAutoreleasedReturnValue();
    v13 = [sub_10039D60C() errorWithDomain:? code:? userInfo:?];
    sub_10039D664(v13);
  }

  if (*(*a1 + 8) == 2)
  {
    v14 = 3;
  }

  else
  {
    v14 = 7;
  }

  sub_1003E97B8(*a1, v14);
}

void sub_10039DB9C()
{
  sub_100390BC4();
  v4 = KmlLogger();
  if (sub_10036DCF8(v4))
  {
    sub_10036DB8C();
    sub_10039D644(&_mh_execute_header, v5, v6, "%s : %i : DidStartEmulation callback received  in wrong state.", v7, v8, v9, v10, v12);
  }

  [NSString stringWithUTF8String:"com.apple.sesd.kml.pairing"];
  objc_claimAutoreleasedReturnValue();
  [sub_10039D68C() userInfo];
  objc_claimAutoreleasedReturnValue();
  v11 = [sub_10039D60C() errorWithDomain:? code:? userInfo:?];
  sub_10039D664(v11);

  sub_1003E97B8(*v0, 9);
}

void sub_10039DC8C(uint64_t *a1, void *a2)
{
  v6 = KmlLogger();
  if (sub_10036DCF8(v6))
  {
    sub_10036DB8C();
    sub_10039D644(&_mh_execute_header, v7, v8, "%s : %i : DidStopEmulation callback received  in wrong state.", v9, v10, v11, v12, v14);
  }

  if (a2[6])
  {
    [NSString stringWithUTF8String:"com.apple.sesd.kml.pairing"];
    objc_claimAutoreleasedReturnValue();
    [sub_10039D68C() userInfo];
    objc_claimAutoreleasedReturnValue();
    v13 = [sub_10039D60C() errorWithDomain:? code:? userInfo:?];
    sub_10039D664(v13);
  }

  sub_1003E97B8(*a1, 9);
}

id sub_10039DD88()
{
  objc_opt_self();
  if (qword_10051B138 != -1)
  {
    sub_1003A25F0();
  }

  v0 = qword_10051B130;

  return v0;
}

void sub_10039DDD0(id a1)
{
  v1 = KmlLogger();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_INFO))
  {
    v4 = 136315394;
    v5 = "+[KmlOwnerSharingManager osManagerArray]_block_invoke";
    v6 = 1024;
    v7 = 114;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_INFO, "%s : %i : OwnerSharingManager: initializing osManagerArray", &v4, 0x12u);
  }

  v2 = +[NSMutableArray array];
  v3 = qword_10051B130;
  qword_10051B130 = v2;
}

void sub_10039DEA8()
{
  objc_opt_self();
  v0 = sub_10039DD88();
  v1 = +[NSMutableIndexSet indexSet];
  v2 = v0;
  objc_sync_enter(v2);
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = v2;
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = 0;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v9 + 1) + 8 * v7);
        if (v8 && *(v8 + 8) == 14)
        {
          [v1 addIndex:{v5, v9}];
        }

        ++v5;
        v7 = v7 + 1;
      }

      while (v4 != v7);
      v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  [v3 removeObjectsAtIndexes:v1];
  objc_sync_exit(v3);
}

void *sub_10039E038(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v7 = a2;
  v8 = a3;
  objc_opt_self();
  v35 = a4;
  v36 = v8;
  if (!v8 || a4)
  {
    if (a4 == 1)
    {
      *&v37 = v8;
      v9 = 0;
      HIDWORD(v34.super_class) = 1;
      goto LABEL_8;
    }

    HIDWORD(v34.super_class) = 0;
    v9 = 0;
  }

  else
  {
    v9 = IDSCopyRawAddressForDestination();
    HIDWORD(v34.super_class) = 0;
  }

  *&v37 = 0;
LABEL_8:
  sub_10039DEA8();
  v10 = sub_10039DD88();
  objc_sync_enter(v10);
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  *(&v37 + 1) = v10;
  v11 = [*(&v37 + 1) countByEnumeratingWithState:&v38 objects:v42 count:16];
  if (v11)
  {
    v12 = *v39;
LABEL_10:
    v13 = 0;
    while (1)
    {
      if (*v39 != v12)
      {
        objc_enumerationMutation(*(&v37 + 1));
      }

      if (v7)
      {
        v14 = *(*(&v38 + 1) + 8 * v13);
        v15 = v14 ? v14[26] : 0;
        v16 = v15;
        v17 = [v7 uppercaseString];
        v18 = [v16 isEqualToString:v17];

        if (v18)
        {
          if (v9)
          {
            if (v14)
            {
              v19 = v14[27];
            }

            else
            {
              v19 = 0;
            }

            v4 = v19;
            if ([v4 isEqualToString:v9])
            {

LABEL_37:
              v24 = v14;

              if (v14)
              {
                goto LABEL_47;
              }

              goto LABEL_38;
            }

            if (v37)
            {
LABEL_24:
              if (v14)
              {
                v20 = v14[28];
              }

              else
              {
                v20 = 0;
              }

              v21 = v20;
              v22 = [v21 isEqualToString:v37];

              if (v9)
              {
              }

              if (v22)
              {
                goto LABEL_37;
              }

              goto LABEL_29;
            }
          }

          else if (v37)
          {
            goto LABEL_24;
          }
        }
      }

LABEL_29:
      if (v11 == ++v13)
      {
        v23 = [*(&v37 + 1) countByEnumeratingWithState:&v38 objects:v42 count:16];
        v11 = v23;
        if (v23)
        {
          goto LABEL_10;
        }

        break;
      }
    }
  }

LABEL_38:
  if (v35)
  {
    v25 = 1;
  }

  else
  {
    v25 = v9 == 0;
  }

  super_class_high = HIDWORD(v34.super_class);
  if (!v25)
  {
    super_class_high = 1;
  }

  if (super_class_high == 1)
  {
    v27 = [KmlOwnerSharingManager alloc];
    sub_1003EA450(v27, v7, v9, v37, v28, v29, v30, v31, v34, v35, v36, v37, v38, *(&v38 + 1), v39, *(&v39 + 1), v40, *(&v40 + 1), v41, *(&v41 + 1), v42[0], v42[1], v42[2], v42[3], v42[4], v42[5]);
    v24 = v32;
    if (v32)
    {
      [*(&v37 + 1) addObject:v32];
    }
  }

  else
  {
    v24 = 0;
  }

LABEL_47:
  objc_sync_exit(*(&v37 + 1));

  return v24;
}

void *sub_10039E370(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  objc_opt_self();
  v6 = 0;
  v27 = v4;
  if (v4 && v5)
  {
    sub_10039DEA8();
    v7 = sub_10039DD88();
    objc_sync_enter(v7);
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    obj = v7;
    v8 = [obj countByEnumeratingWithState:&v32 objects:v37 count:16];
    if (v8)
    {
      v26 = *v33;
      do
      {
        v9 = 0;
        do
        {
          if (*v33 != v26)
          {
            objc_enumerationMutation(obj);
          }

          v10 = *(*(&v32 + 1) + 8 * v9);
          if (v10)
          {
            v11 = v10[26];
          }

          else
          {
            v11 = 0;
          }

          v12 = v11;
          v13 = [v27 uppercaseString];
          v14 = [v12 isEqualToString:v13];

          if (v14)
          {
            v30 = 0u;
            v31 = 0u;
            v28 = 0u;
            v29 = 0u;
            if (v10)
            {
              v15 = v10[29];
            }

            else
            {
              v15 = 0;
            }

            v16 = v15;
            v17 = [v16 countByEnumeratingWithState:&v28 objects:v36 count:16];
            if (v17)
            {
              v18 = *v29;
LABEL_15:
              v19 = 0;
              while (1)
              {
                if (*v29 != v18)
                {
                  objc_enumerationMutation(v16);
                }

                v20 = sub_1003B18DC(*(*(&v28 + 1) + 8 * v19));
                v21 = [v20 isEqualToString:v5];

                if (v21)
                {
                  break;
                }

                if (v17 == ++v19)
                {
                  v17 = [v16 countByEnumeratingWithState:&v28 objects:v36 count:16];
                  if (v17)
                  {
                    goto LABEL_15;
                  }

                  goto LABEL_21;
                }
              }

              v22 = v10;

              if (v10)
              {
                goto LABEL_29;
              }
            }

            else
            {
LABEL_21:
            }
          }

          v9 = v9 + 1;
        }

        while (v9 != v8);
        v23 = [obj countByEnumeratingWithState:&v32 objects:v37 count:16];
        v8 = v23;
      }

      while (v23);
    }

    v22 = 0;
LABEL_29:

    objc_sync_exit(obj);
    v6 = v22;
  }

  return v6;
}

id sub_10039E654(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_self();
  sub_10039DEA8();
  v3 = sub_10039DD88();
  objc_sync_enter(v3);
  v24 = 0;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v5)
  {
    v6 = *v25;
    while (2)
    {
      v7 = 0;
      do
      {
        if (*v25 != v6)
        {
          objc_enumerationMutation(v4);
        }

        if (v2)
        {
          v8 = *(v24.super_class + v7);
          v9 = v8 ? v8[25] : 0;
          v10 = v9;
          v11 = [v10 isEqual:{v2, v24.receiver}];

          if (v11)
          {
            v22 = v8;
            if (!v8)
            {
              goto LABEL_14;
            }

            v21 = v22;
            *(v22 + 176) = 1;

            goto LABEL_18;
          }
        }

        ++v7;
      }

      while (v5 != v7);
      v12 = [v4 countByEnumeratingWithState:&v24 objects:v29 count:16];
      v5 = v12;
      if (v12)
      {
        continue;
      }

      break;
    }
  }

LABEL_14:

  v13 = [KmlOwnerSharingManager alloc];
  sub_1003EA740(v13, v2, v14, v15, v16, v17, v18, v19, v24, v25, *(&v25 + 1), v26, v27, *(&v27 + 1), v28, v29[0], v29[1], v29[2], v29[3], v29[4], v29[5], v29[6], v29[7], v29[8], v29[9], v29[10]);
  v21 = v20;
  if (v20)
  {
    [v4 addObject:v20];
  }

LABEL_18:
  objc_sync_exit(v4);

  return v21;
}

id sub_10039E844(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_self();
  sub_10039DEA8();
  v3 = sub_10039DD88();
  objc_sync_enter(v3);
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = v3;
  v4 = [obj countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v4)
  {
    v17 = *v23;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v23 != v17)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v22 + 1) + 8 * i);
        v18 = 0u;
        v19 = 0u;
        v20 = 0u;
        v21 = 0u;
        if (v6)
        {
          v6 = v6[29];
        }

        v7 = v6;
        v8 = [v7 countByEnumeratingWithState:&v18 objects:v26 count:16];
        if (v8)
        {
          v9 = *v19;
LABEL_10:
          v10 = 0;
          while (1)
          {
            if (*v19 != v9)
            {
              objc_enumerationMutation(v7);
            }

            v11 = *(*(&v18 + 1) + 8 * v10);
            v12 = sub_1003B18DC(v11);
            v13 = [v12 isEqualToString:v2];

            if (v13)
            {
              break;
            }

            if (v8 == ++v10)
            {
              v8 = [v7 countByEnumeratingWithState:&v18 objects:v26 count:16];
              if (v8)
              {
                goto LABEL_10;
              }

              goto LABEL_16;
            }
          }

          v14 = v11;

          if (v14)
          {
            goto LABEL_21;
          }
        }

        else
        {
LABEL_16:
        }
      }

      v4 = [obj countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v4);
  }

  v14 = 0;
LABEL_21:

  objc_sync_exit(obj);

  return v14;
}

void sub_10039EAA4(uint64_t a1, void *a2, void *a3, void *a4)
{
  v37 = a2;
  v6 = a3;
  v38 = a4;
  objc_opt_self();
  v7 = sub_10039DD88();
  objc_sync_enter(v7);
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v8 = v7;
  v9 = [v8 countByEnumeratingWithState:&v43 objects:v54 count:16];
  if (v9)
  {
    v10 = *v44;
    while (2)
    {
      v11 = 0;
      do
      {
        if (*v44 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v12 = *(*(&v43 + 1) + 8 * v11);
        if (v12)
        {
          v13 = v12[25];
        }

        else
        {
          v13 = 0;
        }

        v14 = v13;
        v15 = sub_1003AD0FC(v6);
        v16 = [v14 isEqual:v15];

        if (v16)
        {
          v36.super_class = v12;

          if (!v12)
          {
            goto LABEL_27;
          }

          v18 = KmlLogger();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
          {
            v19 = sub_1003AD0FC(v6);
            *buf = 136315650;
            v49 = "+[KmlOwnerSharingManager regenerateOwnerSharingForEndpoint:config:updater:]";
            v50 = 1024;
            v51 = 283;
            v52 = 2112;
            v53 = v19;
            _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "%s : %i : Sharing Manager for  %@ already exists", buf, 0x1Cu);
          }

          v41 = 0u;
          v42 = 0u;
          v39 = 0u;
          v40 = 0u;
          v20 = *(v36.super_class + 29);
          v21 = [v20 countByEnumeratingWithState:&v39 objects:v47 count:16];
          if (v21)
          {
            v22 = *v40;
            while (2)
            {
              for (i = 0; i != v21; i = i + 1)
              {
                if (*v40 != v22)
                {
                  objc_enumerationMutation(v20);
                }

                v24 = *(*(&v39 + 1) + 8 * i);
                v25 = sub_1003B18DC(v24);
                if (v25)
                {
                  v26 = sub_1003C75C8(v6);
                  v27 = sub_1003B18DC(v24);
                  v28 = [v26 isEqualToString:v27];

                  if (v28)
                  {

                    super_class = v36.super_class;
                    goto LABEL_31;
                  }
                }
              }

              v21 = [v20 countByEnumeratingWithState:&v39 objects:v47 count:16];
              if (v21)
              {
                continue;
              }

              break;
            }
          }

          super_class = v36.super_class;
          goto LABEL_29;
        }

        v11 = v11 + 1;
      }

      while (v9 != v11);
      v17 = [v8 countByEnumeratingWithState:&v43 objects:v54 count:16];
      v9 = v17;
      if (v17)
      {
        continue;
      }

      break;
    }
  }

LABEL_27:
  v30 = [KmlOwnerSharingManager alloc];
  sub_1003EA97C(v30, v37, v6, v38, v31, v32, v33, v34, v36, v37, v38, v39, v40, *(&v40 + 1), v41, *(&v41 + 1), v42, *(&v42 + 1), v43, *(&v43 + 1), v44, *(&v44 + 1), v45, *(&v45 + 1), v46, *(&v46 + 1));
  super_class = v35;
  if (v35)
  {
    [v8 addObject:v35];
LABEL_29:
    sub_1003EAD80(super_class, v6);
LABEL_31:
  }

  objc_sync_exit(v8);
}

id sub_10039EE5C(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  objc_opt_self();
  sub_10039DEA8();
  v6 = sub_10039DD88();
  objc_sync_enter(v6);
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v8)
  {
    v9 = *v20;
    while (2)
    {
      v10 = 0;
      do
      {
        if (*v20 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v19 + 1) + 8 * v10);
        if (v11)
        {
          v12 = v11[25];
        }

        else
        {
          v12 = 0;
        }

        v13 = v12;
        v14 = [v13 isEqual:{v5, v19}];

        if (v14)
        {
          v16 = v11;

          if (!v11)
          {
            goto LABEL_17;
          }

          v17 = sub_1003EAE0C(v16, v4);
          if (v17)
          {
            objc_sync_exit(v7);

            goto LABEL_19;
          }

          goto LABEL_18;
        }

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v15 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
      v8 = v15;
      if (v15)
      {
        continue;
      }

      break;
    }
  }

LABEL_17:
  v16 = 0;
LABEL_18:
  objc_sync_exit(v7);

  v16 = v16;
  v17 = v16;
LABEL_19:

  return v17;
}

void sub_10039F070(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  objc_opt_self();
  v6 = sub_10039DD88();
  objc_sync_enter(v6);
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v8)
  {
    v9 = *v18;
    while (2)
    {
      v10 = 0;
      do
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v17 + 1) + 8 * v10);
        if (v11)
        {
          v12 = v11[25];
        }

        else
        {
          v12 = 0;
        }

        v13 = v12;
        v14 = [v13 isEqual:{v4, v17}];

        if (v14)
        {
          v16 = v11;

          if (!v11)
          {
            goto LABEL_16;
          }

          sub_1003EB064(v16, v5);
          goto LABEL_17;
        }

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v15 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
      v8 = v15;
      if (v15)
      {
        continue;
      }

      break;
    }
  }

LABEL_16:
  v16 = 0;
LABEL_17:
  objc_sync_exit(v7);
}

void sub_10039F244(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_self();
  v3 = sub_10039DD88();
  objc_sync_enter(v3);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  v6 = v4;
  if (!v5)
  {
    goto LABEL_16;
  }

  v7 = *v15;
LABEL_3:
  v8 = 0;
  while (1)
  {
    if (*v15 != v7)
    {
      objc_enumerationMutation(v4);
    }

    v9 = *(*(&v14 + 1) + 8 * v8);
    v10 = v9 ? v9[25] : 0;
    v11 = v10;
    v12 = [v11 isEqual:{v2, v14}];

    if (v12)
    {
      break;
    }

    if (v5 == ++v8)
    {
      v13 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
      v5 = v13;
      if (!v13)
      {
        v6 = v4;
        goto LABEL_16;
      }

      goto LABEL_3;
    }
  }

  v6 = v9;

  if (v9)
  {
    sub_1003EB1C4(v6);
LABEL_16:
  }

  objc_sync_exit(v4);
}

void sub_10039F400(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_self();
  v3 = sub_10039DD88();
  objc_sync_enter(v3);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = *v14;
    do
    {
      v7 = 0;
      do
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v13 + 1) + 8 * v7);
        if (v8)
        {
          v9 = *(v8 + 200);
        }

        else
        {
          v9 = 0;
        }

        v10 = v9;
        v11 = [v2 containsObject:{v10, v13}];

        if (v11)
        {
          sub_1003EB228(v8);
        }

        v7 = v7 + 1;
      }

      while (v5 != v7);
      v12 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
      v5 = v12;
    }

    while (v12);
  }

  objc_sync_exit(v4);
}

id sub_10039F59C()
{
  objc_opt_self();
  if (qword_10051B148 != -1)
  {
    sub_1003A2604();
  }

  v0 = qword_10051B140;

  return v0;
}

void sub_10039F5E4(id a1)
{
  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v1 = dispatch_queue_create("com.apple.sesd.kml.ownerSharingManager", v3);
  v2 = qword_10051B140;
  qword_10051B140 = v1;
}

void sub_10039F6A4(uint64_t a1)
{
  v2 = sub_1003B1270([KmlOwnerSharingSession alloc], *(a1 + 32), *(*(a1 + 40) + 16), *(a1 + 40), 1, *(*(a1 + 40) + 152), 0);
  if (v2)
  {
    [*(*(a1 + 40) + 232) addObject:v2];
  }

  else
  {
    v3 = [NSString stringWithUTF8String:"com.apple.sesd.kml.sharing"];
    v9 = NSLocalizedDescriptionKey;
    v4 = [NSString stringWithUTF8String:KmlErrorString()];
    v10 = v4;
    v5 = [NSDictionary dictionaryWithObjects:&v10 forKeys:&v9 count:1];
    v6 = [NSError errorWithDomain:v3 code:104 userInfo:v5];
    v7 = *(a1 + 40);
    v8 = *(v7 + 72);
    *(v7 + 72) = v6;
  }
}

void sub_10039F7F8(uint64_t a1)
{
  v1 = (a1 + 32);
  if (*(*(a1 + 32) + 8) >= 2)
  {
    v3 = KmlLogger();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_1003A2618(v1);
    }

    *(*(*(a1 + 40) + 8) + 24) = 0;
  }
}

void sub_10039F86C(uint64_t a1)
{
  v3 = (a1 + 32);
  v2 = *(a1 + 32);
  if (*(v2 + 176) != 1 || *(v2 + 104))
  {
    v4 = KmlLogger();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      sub_1003A26E4(v3);
    }

    *(*(*(a1 + 40) + 8) + 24) = 0;
  }
}

void sub_10039F8E8(uint64_t a1)
{
  v3 = (a1 + 32);
  v2 = *(a1 + 32);
  if (*(v2 + 176) != 1 || *(v2 + 8))
  {
    v4 = KmlLogger();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      sub_1003A27AC(v3);
    }

    *(*(*(a1 + 40) + 8) + 24) = 0;
  }
}

void sub_10039F964(uint64_t a1)
{
  v2 = KmlLogger();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    sub_1003A2874(a1);
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v24 = (a1 + 32);
  v3 = *(*(a1 + 32) + 232);
  v4 = [v3 countByEnumeratingWithState:&v27 objects:v41 count:16];
  if (!v4)
  {

LABEL_19:
    v22 = KmlLogger();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      sub_1003A2940(v24);
    }

    WeakRetained = objc_loadWeakRetained((*v24 + 184));
    [WeakRetained handleOwnerKeySharingCancelStatus:0];

    return;
  }

  v5 = v4;
  v25 = 0;
  v6 = *v28;
  do
  {
    v7 = 0;
    v26 = v5;
    do
    {
      if (*v28 != v6)
      {
        objc_enumerationMutation(v3);
      }

      v8 = *(*(&v27 + 1) + 8 * v7);
      v9 = *(a1 + 40);
      v10 = sub_1003B18DC(v8);
      LODWORD(v9) = [v9 containsObject:v10];

      if (v9)
      {
        v11 = v3;
        v12 = KmlLogger();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
        {
          v13 = *v24;
          if (*v24)
          {
            v13 = v13[25];
          }

          v14 = v13;
          v15 = [v14 UUIDString];
          v16 = [v15 UTF8String];
          v17 = sub_1003B18DC(v8);
          *buf = 136315906;
          v34 = "[KmlOwnerSharingManager cancelKeySharingForIdentifiers:]_block_invoke";
          v35 = 1024;
          v36 = 675;
          v37 = 2080;
          v38 = v16;
          v39 = 2112;
          v40 = v17;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "%s : %i : %s : Cancelling session with ID: %@", buf, 0x26u);
        }

        v18 = [NSString stringWithUTF8String:"com.apple.sesd.kml.sharing"];
        v31 = NSLocalizedDescriptionKey;
        v19 = [NSString stringWithUTF8String:KmlErrorString()];
        v32 = v19;
        v25 = 1;
        v20 = [NSDictionary dictionaryWithObjects:&v32 forKeys:&v31 count:1];
        v21 = [NSError errorWithDomain:v18 code:103 userInfo:v20];
        sub_1003B1CAC(v8, v21);

        v3 = v11;
        v5 = v26;
      }

      v7 = v7 + 1;
    }

    while (v5 != v7);
    v5 = [v3 countByEnumeratingWithState:&v27 objects:v41 count:16];
  }

  while (v5);

  if ((v25 & 1) == 0)
  {
    goto LABEL_19;
  }
}

uint64_t sub_10039FCC8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id sub_10039FCE0(id *a1, void *a2, void *a3)
{
  v100 = a2;
  if (a1)
  {
    v99 = +[NSMutableData data];
    v96 = +[NSMutableData data];
    v104 = 0u;
    v105 = 0u;
    v102 = 0u;
    v103 = 0u;
    v4 = [v100 secondFactorList];
    v5 = [v4 countByEnumeratingWithState:&v102 objects:v117 count:16];
    if (v5)
    {
      v6 = 0;
      v7 = *v103;
      do
      {
        for (i = 0; i != v5; i = i + 1)
        {
          if (*v103 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v102 + 1) + 8 * i);
          if (v6)
          {
            v10 = [*(*(&v102 + 1) + 8 * i) type];
            if (v10 > [v6 type])
            {
              v11 = v9;

              v6 = v11;
            }
          }

          else
          {
            v6 = v9;
          }
        }

        v5 = [v4 countByEnumeratingWithState:&v102 objects:v117 count:16];
      }

      while (v5);

      if (v6)
      {
        v12 = [v100 invitationIdentifier];
        v13 = [v12 dataUsingEncoding:4];
        v95 = [KmlTlv TLVWithTag:24403 value:v13];

        v14 = [v95 asData];
        [v99 appendData:v14];

        if ([v6 type] == 4)
        {
          if ([a1[18] sharingPasswordLength])
          {
            v15 = [v6 passcode];
            v16 = [v15 length];
            LOBYTE(v16) = v16 == [a1[18] sharingPasswordLength];

            if ((v16 & 1) == 0)
            {
              v66 = KmlLogger();
              if (os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
              {
                v67 = a1[25];
                v68 = [v67 UUIDString];
                v69 = v68;
                v70 = [v68 UTF8String];
                v71 = [a1[18] sharingPasswordLength];
                v72 = [v6 passcode];

                v73 = [v72 length];
                *buf = 136316162;
                v109 = "[KmlOwnerSharingManager getSecondFactorRequestForConfig:retError:]";
                v110 = 1024;
                v111 = 774;
                v112 = 2080;
                *v113 = v70;
                *&v113[8] = 1024;
                *v114 = v71;
                *&v114[4] = 1024;
                *&v114[6] = v73;
                _os_log_impl(&_mh_execute_header, v66, OS_LOG_TYPE_ERROR, "%s : %i : %s : osp is not of the correct length. Expected Length:%d Received Length:%d", buf, 0x28u);
              }

              if (!a3)
              {
                v27 = 0;
                v28 = 0;
                goto LABEL_62;
              }

              v47 = [NSString stringWithUTF8String:"com.apple.sesd.kml.sharing"];
              v106 = NSLocalizedDescriptionKey;
              v92 = [NSString stringWithUTF8String:KmlErrorString()];
              v107 = v92;
              v94 = [NSDictionary dictionaryWithObjects:&v107 forKeys:&v106 count:1];
              [NSError errorWithDomain:v47 code:104 userInfo:v94];
              v27 = 0;
              *a3 = v28 = 0;
              goto LABEL_61;
            }
          }

          v17 = [v6 passcode];
          v18 = [v17 dataUsingEncoding:4];
          v19 = [KmlTlv TLVWithTag:24404 value:v18];

          v20 = [v19 asData];
          [v99 appendData:v20];

          v21 = 2;
        }

        else
        {
          if ([v6 type] != 2 && objc_msgSend(v6, "type") != 3)
          {
            v19 = KmlLogger();
            if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
            {
              v74 = a1[25];
              v75 = [v74 UUIDString];
              v76 = v75;
              v77 = [v75 UTF8String];
              v78 = [v6 type];

              *buf = 136315906;
              v109 = "[KmlOwnerSharingManager getSecondFactorRequestForConfig:retError:]";
              v110 = 1024;
              v111 = 788;
              v112 = 2080;
              *v113 = v77;
              *&v113[8] = 1024;
              *v114 = v78;
              _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "%s : %i : %s : No second factor required (type=%d)", buf, 0x22u);
            }

            v88 = 0;
LABEL_30:

            v92 = [a1[2] readerInfo];
            v94 = [[KmlRoutingInformation alloc] initWithReaderInformation:v92];
            v93 = objc_opt_new();
            v34 = [v94 manufacturer];
            v35 = [v94 brand];
            v36 = [a1[18] mfiPPID];
            v101 = 0;
            v37 = [v93 BOOLValueForSetting:0 manufacturer:v34 brand:v35 uuid:v36 error:&v101];
            v38 = v101;

            if (sub_1003F6F5C(v39))
            {
              v40 = [v93 buildNonOSPPreShareTlvOverride];
              if (v40)
              {
                v41 = KmlLogger();
                if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
                {
                  v42 = [v40 BOOLValue];
                  *buf = 136315906;
                  v109 = "[KmlOwnerSharingManager getSecondFactorRequestForConfig:retError:]";
                  v110 = 1024;
                  v111 = 805;
                  v112 = 1024;
                  *v113 = v37;
                  *&v113[4] = 1024;
                  *&v113[6] = v42;
                  _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_INFO, "%s : %i : Overriding buildNonOSPPreShareTLV SLG key based on UD from (%d) --> (%d)", buf, 0x1Eu);
                }

                LOBYTE(v37) = [v40 BOOLValue];
              }
            }

            if (([v6 type] == 4) | v37 & 1)
            {
              v43 = [KmlTlv TLVWithTag:32569 value:v99];
              v44 = [v43 asData];

              kmlUtilLogLargeData();
              v91 = kmlUtilSHA256();
              v45 = a1;
              objc_sync_enter(v45);
              v46 = v45[26];
              v90 = SESEndPointSignDataWithAuth();
              v47 = v38;

              if (v47)
              {
                v48 = KmlLogger();
                if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
                {
                  v49 = v45[25];
                  v50 = [v49 UUIDString];
                  v51 = v50;
                  v52 = [v50 UTF8String];
                  *buf = 136315906;
                  v109 = "[KmlOwnerSharingManager getSecondFactorRequestForConfig:retError:]";
                  v110 = 1024;
                  v111 = 822;
                  v112 = 2080;
                  *v113 = v52;
                  *&v113[8] = 2112;
                  *v114 = v47;
                  _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_ERROR, "%s : %i : %s : Failed to sign data : %@", buf, 0x26u);
                }

                if (a3)
                {
                  v53 = v47;
                  v27 = 0;
                  v54 = 0;
                  *a3 = v47;
                }

                else
                {
                  v27 = 0;
                  v54 = 0;
                }
              }

              else
              {
                [v96 appendData:v44];
                v55 = [v90 signedData];
                [v96 appendData:v55];

                v56 = [v90 signature];
                v87 = [KmlTlv TLVWithTag:158 value:v56];

                v57 = [v87 asData];
                [v96 appendData:v57];

                v86 = [KmlTlv TLVWithTag:32577 value:v96];
                v58 = [v86 asData];
                kmlUtilLogLargeData();
                v59 = v45[26];
                v85 = v58;
                v89 = SESEndPointPrivacyEncryption();
                v47 = 0;
                v54 = v47 == 0;
                if (v47)
                {
                  v60 = KmlLogger();
                  if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
                  {
                    v61 = v45[25];
                    v62 = [v61 UUIDString];
                    v63 = v62;
                    v64 = [v62 UTF8String];
                    *buf = 136315906;
                    v109 = "[KmlOwnerSharingManager getSecondFactorRequestForConfig:retError:]";
                    v110 = 1024;
                    v111 = 842;
                    v112 = 2080;
                    *v113 = v64;
                    *&v113[8] = 2112;
                    *v114 = v47;
                    _os_log_impl(&_mh_execute_header, v60, OS_LOG_TYPE_ERROR, "%s : %i : %s : Failed to encrypt data : %@", buf, 0x26u);
                  }

                  if (a3)
                  {
                    v65 = v47;
                    v27 = 0;
                    *a3 = v47;
                  }

                  else
                  {
                    v27 = 0;
                  }
                }

                else
                {
                  v79 = [DAAlishaKeyEncryptedRequest alloc];
                  v98 = [v89 version];
                  v80 = [v89 ephemeralPublicKeydata];
                  v81 = [v89 receiverPublicKeyHash];
                  v82 = [v89 cipherText];
                  v27 = [v79 initWithVersion:v98 ephemeralPublicKey:v80 publicKeyHash:v81 encryptedRequest:v82];
                }
              }

              objc_sync_exit(v45);
              if (!v54)
              {
                v28 = 0;
LABEL_60:

LABEL_61:
                goto LABEL_62;
              }

              v38 = v47;
            }

            else
            {
              sub_1003A2A08();
              v27 = 0;
            }

            v84 = [v100 invitationIdentifier];
            sub_1003EB7D8(a1, v88, v84);

            v27 = v27;
            v47 = v38;
            v28 = v27;
            goto LABEL_60;
          }

          v19 = KmlLogger();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
          {
            v29 = a1[25];
            v30 = [v29 UUIDString];
            v31 = v30;
            v32 = [v30 UTF8String];
            v33 = [v6 type];

            *buf = 136315906;
            v109 = "[KmlOwnerSharingManager getSecondFactorRequestForConfig:retError:]";
            v110 = 1024;
            v111 = 785;
            v112 = 2080;
            *v113 = v32;
            *&v113[8] = 1024;
            *v114 = v33;
            _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "%s : %i : %s : Bring other key requested for second factor (type=%d)", buf, 0x22u);
          }

          v21 = 1;
        }

        v88 = v21;
        goto LABEL_30;
      }
    }

    else
    {
    }

    v22 = KmlLogger();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v23 = a1[25];
      v24 = [v23 UUIDString];
      v25 = v24;
      v26 = [v24 UTF8String];

      *buf = 136315650;
      v109 = "[KmlOwnerSharingManager getSecondFactorRequestForConfig:retError:]";
      v110 = 1024;
      v111 = 759;
      v112 = 2080;
      *v113 = v26;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "%s : %i : %s : Missing second factor config", buf, 0x1Cu);
    }

    if (!a3)
    {
      v28 = 0;
LABEL_63:

      goto LABEL_64;
    }

    v27 = [NSString stringWithUTF8String:"com.apple.sesd.kml.sharing"];
    v115 = NSLocalizedDescriptionKey;
    v6 = [NSString stringWithUTF8String:KmlErrorString()];
    v116 = v6;
    v95 = [NSDictionary dictionaryWithObjects:&v116 forKeys:&v115 count:1];
    [NSError errorWithDomain:v27 code:104 userInfo:v95];
    *a3 = v28 = 0;
LABEL_62:

    goto LABEL_63;
  }

  v28 = 0;
LABEL_64:

  return v28;
}

void sub_1003A0A58(uint64_t a1)
{
  v2 = (a1 + 32);
  if (*(a1 + 32) && *(a1 + 40))
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v3 = *(*(a1 + 48) + 232);
    v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v13;
LABEL_5:
      v7 = 0;
      while (1)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v12 + 1) + 8 * v7);
        v9 = sub_1003B18DC(v8);
        v10 = [v9 isEqualToString:{*v2, v12}];

        if (v10)
        {
          break;
        }

        if (v5 == ++v7)
        {
          v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
          if (v5)
          {
            goto LABEL_5;
          }

          goto LABEL_11;
        }
      }

      v11 = v8;

      if (!v11)
      {
        goto LABEL_16;
      }

      *(*(a1 + 48) + 168) = [*(a1 + 40) sharingFlow];
      sub_1003B1E34(v11, *(a1 + 40));
      sub_1003DAFF0(*(*(a1 + 48) + 136));
    }

    else
    {
LABEL_11:

LABEL_16:
      v11 = KmlLogger();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_1003A2AAC();
      }
    }
  }

  else
  {
    v11 = KmlLogger();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_1003A2B80(a1);
    }
  }
}

void sub_1003A0C70(uint64_t a1)
{
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v2 = *(*(a1 + 32) + 232);
  v3 = [v2 countByEnumeratingWithState:&v15 objects:v21 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v16;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v16 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v15 + 1) + 8 * i);
        v8 = sub_1003B18DC(v7);
        v9 = [v8 isEqualToString:{*(a1 + 40), v15}];

        if (v9)
        {
          v10 = KmlLogger();
          if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
          {
            sub_1003A2C50();
          }

          v11 = [NSString stringWithUTF8String:"com.apple.sesd.kml.sharing"];
          v19 = NSLocalizedDescriptionKey;
          v12 = [NSString stringWithUTF8String:KmlErrorString()];
          v20 = v12;
          v13 = [NSDictionary dictionaryWithObjects:&v20 forKeys:&v19 count:1];
          v14 = [NSError errorWithDomain:v11 code:123 userInfo:v13];
          sub_1003B1CAC(v7, v14);

          goto LABEL_13;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v15 objects:v21 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:
}

void sub_1003A0F54(uint64_t a1)
{
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v2 = a1 + 32;
  v3 = *(*(a1 + 32) + 232);
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
LABEL_3:
    v7 = 0;
    while (1)
    {
      if (*v13 != v6)
      {
        objc_enumerationMutation(v3);
      }

      v8 = *(*(&v12 + 1) + 8 * v7);
      v9 = sub_1003B18DC(v8);
      v10 = [v9 isEqualToString:{*(a1 + 40), v12}];

      if (v10)
      {
        break;
      }

      if (v5 == ++v7)
      {
        v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
        if (v5)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    v11 = v8;

    if (!v11)
    {
      goto LABEL_12;
    }

    sub_1003B1EC0(v11, *(*v2 + 136));
    sub_1003DAFF0(*(*v2 + 136));
  }

  else
  {
LABEL_9:

LABEL_12:
    v11 = KmlLogger();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      sub_1003A2E08();
    }
  }
}

void sub_1003A11B8(uint64_t a1)
{
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v2 = (a1 + 32);
  v3 = *(*(a1 + 32) + 232);
  v4 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
LABEL_3:
    v7 = 0;
    while (1)
    {
      if (*v14 != v6)
      {
        objc_enumerationMutation(v3);
      }

      v8 = *(*(&v13 + 1) + 8 * v7);
      v9 = sub_1003B18DC(v8);
      v10 = [v9 isEqualToString:{*(a1 + 40), v13}];

      if (v10)
      {
        break;
      }

      if (v5 == ++v7)
      {
        v5 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (v5)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    v11 = v8;

    if (!v11)
    {
      goto LABEL_14;
    }

    v12 = KmlLogger();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      sub_1003A2FA8(v2);
    }

    sub_1003B1EC0(v11, *(*v2 + 136));
    sub_1003DAFF0(*(*v2 + 136));
  }

  else
  {
LABEL_9:

LABEL_14:
    v11 = KmlLogger();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      sub_1003A3074();
    }
  }
}

void sub_1003A1464(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 184));
  [WeakRetained handleOwnerKeySharingCancelStatus:*(a1 + 40)];
}

void sub_1003A1684(uint64_t a1)
{
  if (*(a1 + 56) != 8)
  {
    v6 = KmlLogger();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      sub_1003A32F0(a1);
    }

    goto LABEL_14;
  }

  v3 = a1 + 32;
  v2 = *(a1 + 32);
  v4 = *(v2 + 8);
  if (v4 == 9)
  {
    if (([*(v2 + 200) isEqual:*(a1 + 48)] & 1) == 0)
    {
      v7 = KmlLogger();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        sub_1003A33BC(a1 + 32, (a1 + 48));
      }

      goto LABEL_14;
    }

    if (*(*v3 + 224))
    {
      objc_storeStrong((*v3 + 216), *(a1 + 40));
    }

    v9 = KmlLogger();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      sub_1003A34B4((a1 + 32));
    }

    v10 = KmlLogger();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      sub_1003A357C((a1 + 32));
    }

    *(*(a1 + 32) + 96) = *(a1 + 64);
    sub_1003EB1C4(*(a1 + 32));
  }

  else
  {
    if (v4)
    {
      v5 = KmlLogger();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        sub_1003A36C8((a1 + 32));
      }

LABEL_14:
      v8 = sub_10037E00C();
      sub_1003CD134(v8, *(a1 + 40));

      return;
    }

    sub_1003A3644(a1, v2, (a1 + 32));
  }
}

void sub_1003A1A68(__int16 a1@<W8>)
{
  *(v3 - 130) = v1;
  *(v3 - 126) = 2080;
  *(v3 - 124) = v2;
  *(v3 - 116) = a1;
}

void sub_1003A1AC8(int a1@<W8>)
{
  *(v1 + 14) = a1;
  *(v3 - 126) = 2080;
  *(v1 + 20) = v2;
  *(v3 - 116) = 2112;
}

void sub_1003A1B70(int a1@<W8>)
{
  *(v4 - 130) = v2;
  *(v4 - 126) = 2080;
  *(v4 - 124) = v3;
  *(v4 - 116) = v1;
  *(v4 - 114) = a1;
}

__n128 sub_1003A1BC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __n128 a11)
{
  result = a11;
  *(v11 - 144) = a11.n128_u32[0];
  return result;
}

__int16 sub_1003A1BF0@<H0>(int8x8_t a1@<D0>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X2>, uint64_t a5@<X3>, uint64_t a6@<X4>, uint64_t a7@<X5>, uint64_t a8@<X6>, uint64_t a9@<X7>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, int a20, unsigned __int8 a21)
{
  a1.i32[0] = a21;
  a1.i16[0] = vaddlv_u8(vcnt_s8(a1));
  return a1.i16[0];
}

__n128 sub_1003A1C08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, __n128 a21)
{
  result = a21;
  *(v21 - 144) = a21.n128_u32[0];
  return result;
}

void sub_1003A1C2C(__int16 a1@<W8>)
{
  *(v3 - 130) = v1;
  *(v3 - 126) = 2080;
  *(v3 - 124) = v2;
  *(v3 - 116) = a1;
}

void sub_1003A1C44(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5, const char *a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_signpost_emit_with_name_impl(a1, v9, OS_SIGNPOST_EVENT, v10, a5, a6, &a9, 2u);
}

void sub_1003A1C68(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5, const char *a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_signpost_emit_with_name_impl(a1, v10, OS_SIGNPOST_EVENT, v9, a5, a6, &a9, 2u);
}

void sub_1003A1C8C(uint64_t a1)
{
  v3 = *(v1 + 72);
  *(v1 + 72) = a1;
}

void sub_1003A1D1C(uint64_t a1)
{
  v3 = *(*(v1 + 56) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = a1;
}

void sub_1003A1D3C(uint64_t a1)
{
  v3 = KmlLogger();
  if (sub_100057AEC(v3))
  {
    v4 = *(a1 + 32);
    if (v4)
    {
      v4 = v4[25];
    }

    v5 = v4;
    v6 = [v5 UUIDString];
    [v6 UTF8String];
    v7 = *(a1 + 32);
    v8 = v7[26];
    if (!v7[27])
    {
      v9 = v7[28];
    }

    sub_1003672C0();
    sub_1003A1A30();
    sub_1003A1B1C();
    sub_100057A9C();
    _os_log_impl(v10, v11, v12, v13, v14, 0x30u);
  }

  v15 = *(*(a1 + 32) + 208);
  v16 = kmlUtilDataForHexString();
  v17 = *(a1 + 32);
  v18 = *(v17 + 24);
  *(v17 + 24) = v16;

  v19 = [*(a1 + 40) length];
  if (v19)
  {
    v20 = [[NSData alloc] initWithData:*(a1 + 40)];
  }

  else
  {
    v20 = 0;
  }

  objc_storeStrong((*(a1 + 32) + 32), v20);
  if (v19)
  {
  }

  objc_storeStrong((*(a1 + 32) + 48), *(a1 + 48));
  objc_storeStrong((*(a1 + 32) + 104), *(a1 + 56));
  sub_1003EB1C4(*(a1 + 32));
  v21 = KmlSignpostLogger();
  v22 = v21;
  if ((*(*(a1 + 32) + 160) - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v21))
  {
    sub_1003A1C68(&_mh_execute_header, v23, v24, v25, "OwnerSharingInit", "client", v26, v27, 0);
  }
}

void sub_1003A1F30(uint64_t a1)
{
  v3 = [NSArray arrayWithObject:*(a1 + 40)];
  v4 = *(a1 + 32);
  v5 = *(v4 + 104);
  *(v4 + 104) = v3;

  sub_1003EB1C4(*(a1 + 32));
  KmlSignpostLogger();
  objc_claimAutoreleasedReturnValue();
  sub_1003A1C14();
  if (!(!v7 & v6) && os_signpost_enabled(v1))
  {
    sub_1003A1C44(&_mh_execute_header, v8, v9, v10, "OwnerSharingInit", "silent", v11, v12, 0);
  }
}

void sub_1003A1FC8(uint64_t a1)
{
  *(*(a1 + 32) + 177) = 1;
  sub_1003EB1C4(*(a1 + 32));
  KmlSignpostLogger();
  objc_claimAutoreleasedReturnValue();
  sub_1003A1C14();
  if (!(!v3 & v2) && os_signpost_enabled(v1))
  {
    sub_1003A1C44(&_mh_execute_header, v4, v5, v6, "OwnerSharingInit", "silentCrossPlatform", v7, v8, 0);
  }
}

void sub_1003A2048(uint64_t a1)
{
  v4 = *(a1 + 32);
  if (!*(v4 + 224))
  {
    v5 = KmlLogger();
    if (sub_100057AEC(v5))
    {
      v6 = *(a1 + 32);
      if (v6)
      {
        v6 = v6[25];
      }

      v7 = v6;
      v8 = [v7 UUIDString];
      [v8 UTF8String];

      sub_10036DB78();
      sub_1003A1A30();
      sub_100057A9C();
      _os_log_impl(v9, v10, v11, v12, v13, 0x1Cu);
    }

    v2 = NSError;
    v14 = [NSString stringWithUTF8String:"com.apple.sesd.kml.sharing"];
    v44 = NSLocalizedDescriptionKey;
    KmlErrorString();
    v15 = [sub_100372244() stringWithUTF8String:?];
    v45 = v15;
    v16 = [NSDictionary dictionaryWithObjects:&v45 forKeys:&v44 count:1];
    v17 = [sub_1003A1CA4() errorWithDomain:? code:? userInfo:?];
    sub_1003A1D1C(v17);

    v4 = *(a1 + 32);
  }

  v18 = sub_1003EAE0C(v4, *(a1 + 40));
  if (v18)
  {
    v19 = KmlLogger();
    if (sub_10036DCF8(v19))
    {
      v20 = *(a1 + 32);
      if (v20)
      {
        v20 = v20[25];
      }

      v21 = v20;
      v22 = [v21 UUIDString];
      [v22 UTF8String];
      v24 = *(a1 + 40);
      v23 = *(a1 + 48);

      sub_10036DB78();
      sub_1003A1A44();
      sub_1003A1B1C();
      sub_10037BCBC();
      _os_log_impl(v25, v26, v27, v28, v29, 0x30u);
    }

    sub_1003B1D30(v18, *(a1 + 48));
    v30 = KmlLogger();
    if (sub_10036DCF8(v30))
    {
      v31 = *(a1 + 32);
      if (v31)
      {
        v31 = v31[25];
      }

      v32 = v31;
      v33 = [v32 UUIDString];
      [v33 UTF8String];

      sub_10036DB78();
      sub_1003A1A44();
      sub_10037BCBC();
      _os_log_impl(v34, v35, v36, v37, v38, 0x1Cu);
    }

    sub_1003DAFF0(*(*(a1 + 32) + 136));
  }

  else
  {
    v39 = [NSString stringWithUTF8String:"com.apple.sesd.kml.sharing"];
    v42 = NSLocalizedDescriptionKey;
    KmlErrorString();
    v40 = [sub_10039719C() stringWithUTF8String:?];
    v43 = v40;
    [NSDictionary dictionaryWithObjects:&v43 forKeys:&v42 count:1];
    objc_claimAutoreleasedReturnValue();
    v41 = [sub_1003A1B50() errorWithDomain:? code:? userInfo:?];
    sub_1003A1D1C(v41);
  }
}

void sub_1003A2618(uint64_t *a1)
{
  sub_100367428(a1);
  if (v1)
  {
    v1 = v1[25];
  }

  v2 = v1;
  v3 = [v2 UUIDString];
  [v3 UTF8String];

  sub_1003672C0();
  sub_1003908D4();
  sub_1003A1AE4();
  _os_log_impl(v4, v5, OS_LOG_TYPE_ERROR, v6, v7, 0x1Cu);
}

void sub_1003A26E4(uint64_t *a1)
{
  sub_100367428(a1);
  if (v1)
  {
    v1 = v1[25];
  }

  v2 = v1;
  v3 = [v2 UUIDString];
  [v3 UTF8String];

  sub_1003672C0();
  sub_1003908D4();
  sub_1003672E0();
  _os_log_impl(v4, v5, v6, v7, v8, 0x1Cu);
}

void sub_1003A27AC(uint64_t *a1)
{
  sub_100367428(a1);
  if (v1)
  {
    v1 = v1[25];
  }

  v2 = v1;
  v3 = [v2 UUIDString];
  [v3 UTF8String];

  sub_1003672C0();
  sub_1003908D4();
  sub_1003672E0();
  _os_log_impl(v4, v5, v6, v7, v8, 0x1Cu);
}

void sub_1003A2874(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v1 = v1[25];
  }

  v2 = v1;
  v3 = [v2 UUIDString];
  [v3 UTF8String];

  sub_1003672C0();
  sub_1003908D4();
  sub_1003672E0();
  _os_log_impl(v4, v5, v6, v7, v8, 0x1Cu);
}

void sub_1003A2940(uint64_t *a1)
{
  sub_100367428(a1);
  if (v1)
  {
    v1 = v1[25];
  }

  v2 = v1;
  v3 = [v2 UUIDString];
  [v3 UTF8String];

  sub_1003672C0();
  sub_1003908D4();
  sub_1003672E0();
  _os_log_impl(v4, v5, v6, v7, v8, 0x1Cu);
}

void sub_1003A2A08()
{
  v1 = KmlLogger();
  if (sub_10036F978(v1))
  {
    sub_1003672C0();
    sub_1003672E0();
    _os_log_impl(v2, v3, v4, v5, v6, 0x12u);
  }
}

void sub_1003A2AAC()
{
  sub_1003722EC();
  sub_100390AE4();
  sub_100367428(v1);
  if (v2)
  {
    v2 = v2[25];
  }

  v3 = v2;
  v4 = [v3 UUIDString];
  [v4 UTF8String];
  v5 = *v0;

  sub_1003672C0();
  sub_1003A1A30();
  sub_1003A1AFC();
  sub_1003A1AE4();
  _os_log_impl(v6, v7, OS_LOG_TYPE_ERROR, v8, v9, 0x26u);

  sub_1003722A4();
}

void sub_1003A2B80(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    v1 = v1[25];
  }

  v2 = v1;
  v3 = [v2 UUIDString];
  [v3 UTF8String];

  sub_1003672C0();
  sub_1003908D4();
  sub_1003A1AE4();
  _os_log_impl(v4, v5, OS_LOG_TYPE_ERROR, v6, v7, 0x1Cu);
}

void sub_1003A2C50()
{
  sub_1003722EC();
  v1 = v0;
  sub_100367428(v2);
  if (v3)
  {
    v3 = v3[25];
  }

  v4 = v3;
  v5 = [v4 UUIDString];
  [v5 UTF8String];
  v6 = sub_1003B18DC(v1);
  sub_1003672C0();
  sub_1003A1A30();
  sub_1003A1B1C();
  sub_1003672E0();
  _os_log_impl(v7, v8, v9, v10, v11, 0x26u);

  sub_1003722A4();
}

void sub_1003A2D38(uint64_t a1)
{
  if (a1)
  {
    v1 = *(a1 + 200);
  }

  else
  {
    v1 = 0;
  }

  v2 = v1;
  v3 = [v2 UUIDString];
  [v3 UTF8String];

  sub_1003672C0();
  sub_1003908D4();
  sub_1003672E0();
  _os_log_impl(v4, v5, v6, v7, v8, 0x1Cu);
}

void sub_1003A2E08()
{
  sub_1003722EC();
  sub_100390AE4();
  sub_100367428(v1);
  if (v2)
  {
    v2 = v2[25];
  }

  v3 = v2;
  v4 = [v3 UUIDString];
  [v4 UTF8String];
  v5 = *(v0 + 40);

  sub_1003672C0();
  sub_1003A1A30();
  sub_1003A1AFC();
  sub_1003672E0();
  _os_log_impl(v6, v7, v8, v9, v10, 0x26u);

  sub_1003722A4();
}

void sub_1003A2ED8(uint64_t a1)
{
  if (a1)
  {
    v1 = *(a1 + 200);
  }

  else
  {
    v1 = 0;
  }

  v2 = v1;
  v3 = [v2 UUIDString];
  [v3 UTF8String];

  sub_1003672C0();
  sub_1003908D4();
  sub_1003672E0();
  _os_log_impl(v4, v5, v6, v7, v8, 0x1Cu);
}

void sub_1003A2FA8(uint64_t *a1)
{
  sub_100367428(a1);
  if (v1)
  {
    v1 = v1[25];
  }

  v2 = v1;
  v3 = [v2 UUIDString];
  [v3 UTF8String];

  sub_1003672C0();
  sub_1003908D4();
  sub_1003A1AE4();
  _os_log_impl(v4, v5, OS_LOG_TYPE_DEBUG, v6, v7, 0x1Cu);
}

void sub_1003A3074()
{
  sub_1003722EC();
  sub_100390AE4();
  sub_100367428(v1);
  if (v2)
  {
    v2 = v2[25];
  }

  v3 = v2;
  v4 = [v3 UUIDString];
  [v4 UTF8String];
  v5 = *(v0 + 40);

  sub_1003672C0();
  sub_1003A1A30();
  sub_1003A1AFC();
  sub_1003672E0();
  _os_log_impl(v6, v7, v8, v9, v10, 0x26u);

  sub_1003722A4();
}

void sub_1003A3144()
{
  sub_1003722EC();
  sub_100390AE4();
  if (v0)
  {
    v1 = *(v0 + 200);
  }

  else
  {
    v1 = 0;
  }

  v2 = v1;
  v3 = [v2 UUIDString];
  [v3 UTF8String];

  sub_1003672C0();
  sub_1003A1A30();
  sub_1003A1AFC();
  sub_1003A1AE4();
  _os_log_impl(v4, v5, OS_LOG_TYPE_DEBUG, v6, v7, 0x26u);

  sub_1003722A4();
}

void sub_1003A321C(uint64_t a1)
{
  if (a1)
  {
    v1 = *(a1 + 200);
  }

  else
  {
    v1 = 0;
  }

  v2 = v1;
  v3 = [v2 UUIDString];
  [v3 UTF8String];

  sub_1003672C0();
  sub_1003908D4();
  sub_1003A1AE4();
  _os_log_impl(v4, v5, OS_LOG_TYPE_DEBUG, v6, v7, 0x1Cu);
}

void sub_1003A32F0(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v1 = v1[25];
  }

  v2 = v1;
  v3 = [v2 UUIDString];
  [v3 UTF8String];

  sub_1003672C0();
  sub_1003908D4();
  sub_1003672E0();
  _os_log_impl(v4, v5, v6, v7, v8, 0x1Cu);
}

void sub_1003A33BC(uint64_t a1, uint64_t *a2)
{
  v4 = *a1;
  if (*a1)
  {
    v4 = v4[25];
  }

  v5 = v4;
  v6 = [v5 UUIDString];
  [v6 UTF8String];
  v7 = *(*a1 + 200);
  v8 = *a2;

  sub_1003672C0();
  sub_1003A1A44();
  sub_1003A1B1C();
  sub_1003672E0();
  _os_log_impl(v9, v10, v11, v12, v13, 0x30u);
}

void sub_1003A34B4(uint64_t *a1)
{
  sub_100367428(a1);
  if (v1)
  {
    v1 = v1[25];
  }

  v2 = v1;
  v3 = [v2 UUIDString];
  [v3 UTF8String];

  sub_1003672C0();
  sub_1003908D4();
  sub_1003672E0();
  _os_log_impl(v4, v5, v6, v7, v8, 0x1Cu);
}

void sub_1003A357C(uint64_t *a1)
{
  sub_100367428(a1);
  if (v1)
  {
    v1 = v1[25];
  }

  v2 = v1;
  v3 = [v2 UUIDString];
  [v3 UTF8String];

  sub_1003672C0();
  sub_1003908D4();
  sub_1003672E0();
  _os_log_impl(v4, v5, v6, v7, v8, 0x1Cu);
}

void sub_1003A3644(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  objc_storeStrong((a2 + 216), *(a1 + 40));
  *(*a3 + 96) = *(a1 + 64);
  sub_1003EB1C4(*a3);
  v5 = sub_10037E00C();
  sub_1003CD134(v5, *(a1 + 40));
}

void sub_1003A36C8(uint64_t *a1)
{
  sub_100367428(a1);
  if (v1)
  {
    v1 = v1[25];
  }

  v2 = v1;
  v3 = [v2 UUIDString];
  [v3 UTF8String];

  sub_1003672C0();
  sub_1003908D4();
  sub_1003672E0();
  _os_log_impl(v4, v5, v6, v7, v8, 0x1Cu);
}

void sub_1003A3790(uint64_t a1)
{
  if (a1)
  {
    v1 = *(a1 + 200);
  }

  else
  {
    v1 = 0;
  }

  v2 = v1;
  v3 = [v2 UUIDString];
  [v3 UTF8String];

  sub_1003672C0();
  sub_1003908D4();
  sub_1003672E0();
  _os_log_impl(v4, v5, v6, v7, v8, 0x1Cu);
}

void sub_1003A3860(uint64_t a1)
{
  if (a1)
  {
    v1 = *(a1 + 200);
  }

  else
  {
    v1 = 0;
  }

  v2 = v1;
  v3 = [v2 UUIDString];
  [v3 UTF8String];

  sub_1003672C0();
  sub_1003908D4();
  sub_1003672E0();
  _os_log_impl(v4, v5, v6, v7, v8, 0x1Cu);
}

void sub_1003A3930(uint64_t a1)
{
  if (a1)
  {
    v1 = *(a1 + 200);
  }

  else
  {
    v1 = 0;
  }

  v2 = v1;
  v3 = [v2 UUIDString];
  [v3 UTF8String];

  sub_1003672C0();
  sub_1003908D4();
  sub_1003672E0();
  _os_log_impl(v4, v5, v6, v7, v8, 0x1Cu);
}

void sub_1003A3AD4(uint64_t a1)
{
  v2 = KmlLogger();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    *buf = 136315650;
    v9 = "[KmlKeyManagementSession deleteKey:callback:]_block_invoke";
    v10 = 1024;
    v11 = 54;
    v12 = 2112;
    v13 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s : %i : key to revoke: %@", buf, 0x1Cu);
  }

  v4 = sub_1003DFBD4([KmlEndpointManager alloc], *(a1 + 32), 0);
  v7 = 0;
  v5 = sub_1003DFD34(v4, &v7);
  v6 = v7;
  (*(*(a1 + 40) + 16))();
}

void sub_1003A3CDC(uint64_t a1)
{
  v2 = KmlLogger();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v6 = 136315650;
    v7 = "[KmlKeyManagementSession localDeleteKey:callback:]_block_invoke";
    v8 = 1024;
    v9 = 65;
    v10 = 2112;
    v11 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s : %i : key to delete: %@", &v6, 0x1Cu);
  }

  v4 = sub_1003DFBD4([KmlEndpointManager alloc], *(a1 + 32), 0);
  v5 = sub_1003E03E8(v4);
  (*(*(a1 + 40) + 16))();
}

void sub_1003A3F40(uint64_t a1)
{
  v2 = KmlLogger();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    *buf = 136315650;
    v23 = "[KmlKeyManagementSession remoteTerminateKeys:nodeGroupIdentifiers:treeGroupIdentifiers:adminKey:callback:]_block_invoke";
    v24 = 1024;
    v25 = 81;
    v26 = 2112;
    v27 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s : %i : keys to delete: %@", buf, 0x1Cu);
  }

  v4 = KmlLogger();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = *(a1 + 40);
    *buf = 136315650;
    v23 = "[KmlKeyManagementSession remoteTerminateKeys:nodeGroupIdentifiers:treeGroupIdentifiers:adminKey:callback:]_block_invoke";
    v24 = 1024;
    v25 = 82;
    v26 = 2112;
    v27 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s : %i : groupIdentifiers for nodes to delete: %@", buf, 0x1Cu);
  }

  v6 = KmlLogger();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = *(a1 + 48);
    *buf = 136315650;
    v23 = "[KmlKeyManagementSession remoteTerminateKeys:nodeGroupIdentifiers:treeGroupIdentifiers:adminKey:callback:]_block_invoke";
    v24 = 1024;
    v25 = 83;
    v26 = 2112;
    v27 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%s : %i : groupIdentifiers for trees to delete: %@", buf, 0x1Cu);
  }

  v8 = sub_1003DFBD4([KmlEndpointManager alloc], *(a1 + 56), 0);
  v9 = *(a1 + 32);
  v10 = *(a1 + 40);
  v11 = *(a1 + 48);
  v21 = 0;
  v12 = sub_1003E3530(v8, v9, v10, v11, &v21);
  v13 = v21;
  if (v12)
  {
    v14 = [DAAlishaKeyEncryptedRequest alloc];
    v15 = [v12 version];
    v16 = [v12 ephemeralPublicKeydata];
    v17 = [v12 receiverPublicKeyHash];
    v18 = [v12 cipherText];
    v19 = [v14 initWithVersion:v15 ephemeralPublicKey:v16 publicKeyHash:v17 encryptedRequest:v18];

    if (KmlLogIsInternalBuild())
    {
      v20 = KmlLogger();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315650;
        v23 = "[KmlKeyManagementSession remoteTerminateKeys:nodeGroupIdentifiers:treeGroupIdentifiers:adminKey:callback:]_block_invoke";
        v24 = 1024;
        v25 = 97;
        v26 = 2112;
        v27 = v19;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEBUG, "%s : %i : EncryptedRequest=%@", buf, 0x1Cu);
      }
    }
  }

  else
  {
    v19 = 0;
  }

  (*(*(a1 + 64) + 16))();
}

void sub_1003A4360(uint64_t a1)
{
  v2 = KmlLogger();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    *buf = 136315650;
    v9 = "[KmlKeyManagementSession listSharingInvitationsForKeyIdentifier:callback:]_block_invoke";
    v10 = 1024;
    v11 = 107;
    v12 = 2112;
    v13 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s : %i : Owner key identifier: %@", buf, 0x1Cu);
  }

  v4 = sub_1003DFBD4([KmlEndpointManager alloc], *(a1 + 32), 0);
  v7 = 0;
  v5 = sub_1003E442C(v4, &v7);
  v6 = v7;
  (*(*(a1 + 40) + 16))();
}

void sub_1003A4708(uint64_t a1)
{
  v2 = KmlLogger();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v5 = 136315394;
    v6 = "[KmlKeyManagementSession cancelAllFriendInvitationsWithCompletionHandler:]_block_invoke";
    v7 = 1024;
    v8 = 131;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s : %i : ", &v5, 0x12u);
  }

  v3 = sub_100388B10();
  v4 = sub_1003CEE1C(v3);
  (*(*(a1 + 32) + 16))();
}

void sub_1003A48DC(uint64_t a1)
{
  v2 = KmlLogger();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v5 = 136315394;
    v6 = "[KmlKeyManagementSession removeSharingInvitationWithId:completionHandler:]_block_invoke";
    v7 = 1024;
    v8 = 143;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s : %i : ", &v5, 0x12u);
  }

  v3 = sub_100388B10();
  v4 = sub_1003CEF10(v3, *(a1 + 32));
  (*(*(a1 + 40) + 16))();
}

void sub_1003A4AE0(void **a1)
{
  v2 = KmlLogger();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = a1[4];
    *buf = 136315650;
    v27 = "[KmlKeyManagementSession cancelInvitationsWithIdentifiers:sentByOwnerKeyWithIdentifier:callback:]_block_invoke";
    v28 = 1024;
    v29 = 157;
    v30 = 2112;
    v31 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s : %i : Owner key ID: %@", buf, 0x1Cu);
  }

  v4 = KmlLogger();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = a1[5];
    *buf = 136315650;
    v27 = "[KmlKeyManagementSession cancelInvitationsWithIdentifiers:sentByOwnerKeyWithIdentifier:callback:]_block_invoke";
    v28 = 1024;
    v29 = 158;
    v30 = 2112;
    v31 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s : %i : Invitations to cancel :%@", buf, 0x1Cu);
  }

  if ([a1[5] count])
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v6 = a1[5];
    v7 = [v6 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v22;
      while (2)
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v22 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v21 + 1) + 8 * i);
          v12 = sub_10039E370(KmlOwnerSharingManager, a1[4], v11);
          v13 = a1[6];
          v14 = v13[8];
          v13[8] = v12;

          if (*(a1[6] + 8))
          {
            v15 = KmlLogger();
            if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
            {
              *buf = 136315650;
              v27 = "[KmlKeyManagementSession cancelInvitationsWithIdentifiers:sentByOwnerKeyWithIdentifier:callback:]_block_invoke";
              v28 = 1024;
              v29 = 169;
              v30 = 2112;
              v31 = v11;
              _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "%s : %i : Found sharing manager to handle %@", buf, 0x1Cu);
            }

            goto LABEL_18;
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v21 objects:v25 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

LABEL_18:
    if (*(a1[6] + 8))
    {
      v16 = objc_retainBlock(a1[7]);
      v17 = a1[6];
      v18 = v17[13];
      v17[13] = v16;

      sub_1003C42B4(*(a1[6] + 8), a1[6]);
      sub_1003EB618(*(a1[6] + 8), a1[5]);
      return;
    }

    v19 = KmlLogger();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v27 = "[KmlKeyManagementSession cancelInvitationsWithIdentifiers:sentByOwnerKeyWithIdentifier:callback:]_block_invoke";
      v28 = 1024;
      v29 = 175;
      v20 = "%s : %i : No sharing in progress";
      goto LABEL_24;
    }
  }

  else
  {
    v19 = KmlLogger();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v27 = "[KmlKeyManagementSession cancelInvitationsWithIdentifiers:sentByOwnerKeyWithIdentifier:callback:]_block_invoke";
      v28 = 1024;
      v29 = 161;
      v20 = "%s : %i : No invitation identifiers provided to cancel";
LABEL_24:
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, v20, buf, 0x12u);
    }
  }

  (*(a1[7] + 2))(a1[7]);
}

void sub_1003A4F94(uint64_t a1)
{
  v2 = KmlLogger();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    *buf = 136315650;
    v40 = "[KmlKeyManagementSession cancelInvitationWithIdentifier:reason:callback:]_block_invoke";
    v41 = 1024;
    v42 = 191;
    v43 = 2112;
    v44 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s : %i : Invitation to cancel :%@", buf, 0x1Cu);
  }

  if ([*(a1 + 32) length])
  {
    v4 = sub_10039E844(KmlOwnerSharingManager, *(a1 + 32));
    v5 = *(a1 + 40);
    v6 = *(v5 + 72);
    *(v5 + 72) = v4;

    if (*(*(a1 + 40) + 72))
    {
      v7 = KmlLogger();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v8 = *(a1 + 32);
        *buf = 136315650;
        v40 = "[KmlKeyManagementSession cancelInvitationWithIdentifier:reason:callback:]_block_invoke";
        v41 = 1024;
        v42 = 201;
        v43 = 2112;
        v44 = v8;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%s : %i : Found Initiator sharing session to handle %@", buf, 0x1Cu);
      }

      sub_1003B5EAC(*(*(a1 + 40) + 72), *(a1 + 40));
      v9 = [NSString stringWithUTF8String:"com.apple.sesd.kml.sharing"];
      v35 = NSLocalizedDescriptionKey;
      v10 = [NSString stringWithUTF8String:KmlErrorString()];
      v36 = v10;
      v11 = [NSDictionary dictionaryWithObjects:&v36 forKeys:&v35 count:1];
      v12 = [NSError errorWithDomain:v9 code:125 userInfo:v11];

      v13 = *(a1 + 56);
      if (v13 == 1)
      {
        v14 = [NSString stringWithUTF8String:"com.apple.sesd.kml.sharing"];
        v31 = NSLocalizedDescriptionKey;
        v15 = [NSString stringWithUTF8String:KmlErrorString()];
        v32 = v15;
        v16 = [NSDictionary dictionaryWithObjects:&v32 forKeys:&v31 count:1];
        v17 = v14;
        v18 = 103;
      }

      else
      {
        if (v13)
        {
LABEL_17:
          sub_1003B1CAC(*(*(a1 + 40) + 72), v12);
          v27 = objc_retainBlock(*(a1 + 48));
          v28 = *(a1 + 40);
          v21 = *(v28 + 112);
          *(v28 + 112) = v27;
          goto LABEL_18;
        }

        v14 = [NSString stringWithUTF8String:"com.apple.sesd.kml.sharing"];
        v33 = NSLocalizedDescriptionKey;
        v15 = [NSString stringWithUTF8String:KmlErrorString()];
        v34 = v15;
        v16 = [NSDictionary dictionaryWithObjects:&v34 forKeys:&v33 count:1];
        v17 = v14;
        v18 = 124;
      }

      v26 = [NSError errorWithDomain:v17 code:v18 userInfo:v16];

      v12 = v26;
      goto LABEL_17;
    }

    v20 = *(a1 + 48);
    v12 = [NSString stringWithUTF8String:"com.apple.sesd.kml"];
    v21 = [NSString stringWithUTF8String:KmlErrorString(), NSLocalizedDescriptionKey];
    v30 = v21;
    v22 = [NSDictionary dictionaryWithObjects:&v30 forKeys:&v29 count:1];
    v23 = v12;
    v24 = 109;
  }

  else
  {
    v19 = KmlLogger();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v40 = "[KmlKeyManagementSession cancelInvitationWithIdentifier:reason:callback:]_block_invoke";
      v41 = 1024;
      v42 = 194;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "%s : %i : No invitation identifiers provided to cancel", buf, 0x12u);
    }

    v20 = *(a1 + 48);
    v12 = [NSString stringWithUTF8String:"com.apple.sesd.kml"];
    v37 = NSLocalizedDescriptionKey;
    v21 = [NSString stringWithUTF8String:KmlErrorString()];
    v38 = v21;
    v22 = [NSDictionary dictionaryWithObjects:&v38 forKeys:&v37 count:1];
    v23 = v12;
    v24 = 206;
  }

  v25 = [NSError errorWithDomain:v23 code:v24 userInfo:v22];
  (*(v20 + 16))(v20, 0, v25);

LABEL_18:
}

void sub_1003A55D4(uint64_t a1)
{
  v2 = KmlLogger();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v6 = 136315650;
    v7 = "[KmlKeyManagementSession removeSharedKeysWithIdentifiers:ownerKeyWithIdentifier:callback:]_block_invoke";
    v8 = 1024;
    v9 = 232;
    v10 = 2112;
    v11 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s : %i : Owner key identifier: %@", &v6, 0x1Cu);
  }

  v4 = sub_1003DFBD4([KmlEndpointManager alloc], *(a1 + 32), 0);
  v5 = sub_1003E4560(v4, *(a1 + 40));
  (*(*(a1 + 48) + 16))();
}

void sub_1003A57C4(uint64_t a1)
{
  v2 = KmlLogger();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    *buf = 136315650;
    *&buf[4] = "[KmlKeyManagementSession countImmobilizerTokensForKeyWithIdentifier:callback:]_block_invoke";
    v7 = 1024;
    v8 = 244;
    v9 = 2112;
    v10 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s : %i : Key identifier: %@", buf, 0x1Cu);
  }

  v4 = sub_1003DFBD4([KmlEndpointManager alloc], *(a1 + 32), 0);
  v5 = 0;
  *buf = 0;
  sub_1003E4818(v4, buf, &v5);
  (*(*(a1 + 40) + 16))();
}

void sub_1003A59F4(uint64_t a1)
{
  v2 = KmlLogger();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v9 = 136315394;
    v10 = "[KmlKeyManagementSession consumeTrackingReceipt:otherJSONData:forKeyWithIdentifier:callback:]_block_invoke";
    v11 = 1024;
    v12 = 260;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s : %i : ", &v9, 0x12u);
  }

  v3 = KmlLogger();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v4 = *(a1 + 32);
    v9 = 136315650;
    v10 = "[KmlKeyManagementSession consumeTrackingReceipt:otherJSONData:forKeyWithIdentifier:callback:]_block_invoke";
    v11 = 1024;
    v12 = 261;
    v13 = 2112;
    v14 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "%s : %i : otherJsonData : %@", &v9, 0x1Cu);
  }

  v5 = sub_1003DFBD4([KmlEndpointManager alloc], *(a1 + 40), 0);
  v6 = sub_1003E0590(v5, *(a1 + 48), *(a1 + 32));
  v7 = sub_100372C58(KmlOwnerPairingManager, *(a1 + 40));
  if (v7)
  {
    v8 = sub_1003B85B8(v5);
    sub_1003C26E4(v7, v6, v8);
  }

  (*(*(a1 + 56) + 16))();
}

void sub_1003A5C98(uint64_t a1)
{
  v2 = KmlLogger();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v13 = "[KmlKeyManagementSession requestBindingAttestationDataForKeyWithIdentifier:callback:]_block_invoke";
    v14 = 1024;
    v15 = 278;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s : %i : ", buf, 0x12u);
  }

  v3 = sub_10038C140(KmlFriendSharingManager, *(a1 + 40));
  v4 = *(a1 + 32);
  v5 = *(v4 + 80);
  *(v4 + 80) = v3;

  v6 = *(*(a1 + 32) + 80);
  if (v6)
  {
    v11 = 0;
    v7 = sub_1003D13E4(v6, &v11);
    v8 = v11;
  }

  else
  {
    v9 = sub_1003DFBD4([KmlEndpointManager alloc], *(a1 + 40), 0);
    v10 = 0;
    v7 = sub_1003E8884(v9, &v10);
    v8 = v10;
  }

  (*(*(a1 + 48) + 16))();
}

void sub_1003A5F18(uint64_t a1)
{
  v2 = KmlLogger();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v10 = 136315650;
    v11 = "[KmlKeyManagementSession setBindingAttestation:forKeyWithIdentifier:callback:]_block_invoke";
    v12 = 1024;
    v13 = 297;
    v14 = 2112;
    v15 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s : %i : Set Binding Attestation Data for key with id: %@", &v10, 0x1Cu);
  }

  v4 = sub_10038C140(KmlFriendSharingManager, *(a1 + 32));
  v5 = *(a1 + 40);
  v6 = *(v5 + 80);
  *(v5 + 80) = v4;

  v7 = *(*(a1 + 40) + 80);
  if (v7)
  {
    v8 = sub_10038DB48(v7, *(a1 + 48));
  }

  else
  {
    v9 = sub_1003DFBD4([KmlEndpointManager alloc], *(a1 + 32), 0);
    v8 = sub_1003E8BF8(v9, *(a1 + 48));
  }

  (*(*(a1 + 56) + 16))();
}

void sub_1003A6158(uint64_t a1)
{
  v2 = KmlLogger();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    *buf = 136315650;
    v17 = "[KmlKeyManagementSession getPreTrackRequestForInvitationWithIdentifier:completionHandler:]_block_invoke";
    v18 = 1024;
    v19 = 316;
    v20 = 2112;
    v21 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s : %i : Get pre-track request for invitation with id: %@", buf, 0x1Cu);
  }

  v4 = sub_10038B89C(KmlFriendSharingManager, *(a1 + 32), 0);
  v5 = *(a1 + 40);
  v6 = *(v5 + 80);
  *(v5 + 80) = v4;

  v7 = *(*(a1 + 40) + 80);
  if (v7)
  {
    v13 = 0;
    v8 = sub_1003D145C(v7, &v13);
    v9 = v13;
  }

  else
  {
    v10 = [NSString stringWithUTF8String:"com.apple.sesd.kml.sharing"];
    v14 = NSLocalizedDescriptionKey;
    v11 = [NSString stringWithUTF8String:KmlErrorString()];
    v15 = v11;
    v12 = [NSDictionary dictionaryWithObjects:&v15 forKeys:&v14 count:1];
    v9 = [NSError errorWithDomain:v10 code:210 userInfo:v12];

    v8 = 0;
  }

  (*(*(a1 + 48) + 16))();
}

void sub_1003A6430(uint64_t a1)
{
  v2 = KmlLogger();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    *buf = 136315650;
    v17 = "[KmlKeyManagementSession getPreTrackRequestForKeyWithIdentifier:callback:]_block_invoke";
    v18 = 1024;
    v19 = 335;
    v20 = 2112;
    v21 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s : %i : Get pre-track request for key with id: %@", buf, 0x1Cu);
  }

  v4 = sub_10038C140(KmlFriendSharingManager, *(a1 + 32));
  v5 = *(a1 + 40);
  v6 = *(v5 + 80);
  *(v5 + 80) = v4;

  v7 = *(*(a1 + 40) + 80);
  if (v7)
  {
    v13 = 0;
    v8 = sub_1003D145C(v7, &v13);
    v9 = v13;
  }

  else
  {
    v10 = [NSString stringWithUTF8String:"com.apple.sesd.kml.sharing"];
    v14 = NSLocalizedDescriptionKey;
    v11 = [NSString stringWithUTF8String:KmlErrorString()];
    v15 = v11;
    v12 = [NSDictionary dictionaryWithObjects:&v15 forKeys:&v14 count:1];
    v9 = [NSError errorWithDomain:v10 code:210 userInfo:v12];

    v8 = 0;
  }

  (*(*(a1 + 48) + 16))();
}

void sub_1003A672C(uint64_t a1)
{
  v2 = KmlLogger();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    *buf = 136315650;
    v19 = "[KmlKeyManagementSession ppidRequestForInvitationWithIdentifier:fromMailboxIdentifier:completionHandler:]_block_invoke";
    v20 = 1024;
    v21 = 354;
    v22 = 2112;
    v23 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s : %i : Get ppid fetch request for Invitation with id: %@", buf, 0x1Cu);
  }

  if (KmlLogIsInternalBuild())
  {
    v4 = KmlLogger();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = *(a1 + 40);
      *buf = 136315650;
      v19 = "[KmlKeyManagementSession ppidRequestForInvitationWithIdentifier:fromMailboxIdentifier:completionHandler:]_block_invoke";
      v20 = 1024;
      v21 = 355;
      v22 = 2112;
      v23 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s : %i : mailboxIdentifier : %@", buf, 0x1Cu);
    }
  }

  v6 = sub_10038C728(KmlFriendSharingManager, *(a1 + 32), *(a1 + 40));
  v7 = *(a1 + 48);
  v8 = *(v7 + 80);
  *(v7 + 80) = v6;

  v9 = *(*(a1 + 48) + 80);
  if (v9)
  {
    v15 = 0;
    v10 = sub_1003D14D4(v9, &v15);
    v11 = v15;
  }

  else
  {
    v12 = [NSString stringWithUTF8String:"com.apple.sesd.kml.sharing"];
    v16 = NSLocalizedDescriptionKey;
    v13 = [NSString stringWithUTF8String:KmlErrorString()];
    v17 = v13;
    v14 = [NSDictionary dictionaryWithObjects:&v17 forKeys:&v16 count:1];
    v11 = [NSError errorWithDomain:v12 code:109 userInfo:v14];

    v10 = 0;
  }

  (*(*(a1 + 56) + 16))();
}

void sub_1003A6AA8(uint64_t a1)
{
  v2 = KmlLogger();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    *buf = 136315650;
    v15 = "[KmlKeyManagementSession setProductPlanIdentifier:forInvitationIdentifier:completion:]_block_invoke";
    v16 = 1024;
    v17 = 377;
    v18 = 2112;
    v19 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s : %i : invitationIdentifier: %@", buf, 0x1Cu);
  }

  v4 = sub_10038B89C(KmlFriendSharingManager, *(a1 + 32), 0);
  v5 = *(a1 + 40);
  v6 = *(v5 + 80);
  *(v5 + 80) = v4;

  v7 = *(*(a1 + 40) + 80);
  if (v7)
  {
    v8 = sub_1003D1830(v7, *(a1 + 48));
  }

  else
  {
    v9 = [NSString stringWithUTF8String:"com.apple.sesd.kml.sharing"];
    v10 = [NSString stringWithUTF8String:KmlErrorString(), NSLocalizedDescriptionKey];
    v13 = v10;
    v11 = [NSDictionary dictionaryWithObjects:&v13 forKeys:&v12 count:1];
    v8 = [NSError errorWithDomain:v9 code:109 userInfo:v11];
  }

  (*(*(a1 + 56) + 16))();
}

void sub_1003A6D8C(uint64_t a1)
{
  v2 = KmlLogger();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    *buf = 136315650;
    v18 = "[KmlKeyManagementSession readerInformationForInvitationWithIdentifier:fromMailboxIdentifier:completionHandler:]_block_invoke";
    v19 = 1024;
    v20 = 398;
    v21 = 2112;
    v22 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s : %i : Get readerInformation for Invitation with id: %@", buf, 0x1Cu);
  }

  if (KmlLogIsInternalBuild())
  {
    v4 = KmlLogger();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = *(a1 + 40);
      *buf = 136315650;
      v18 = "[KmlKeyManagementSession readerInformationForInvitationWithIdentifier:fromMailboxIdentifier:completionHandler:]_block_invoke";
      v19 = 1024;
      v20 = 399;
      v21 = 2112;
      v22 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s : %i : mailboxIdentifier : %@", buf, 0x1Cu);
    }
  }

  v6 = sub_10038C728(KmlFriendSharingManager, *(a1 + 32), *(a1 + 40));
  v7 = *(a1 + 48);
  v8 = *(v7 + 80);
  *(v7 + 80) = v6;

  v9 = *(*(a1 + 48) + 80);
  if (v9)
  {
    v10 = sub_1003D8E28(v9);
    v11 = 0;
  }

  else
  {
    v12 = [NSString stringWithUTF8String:"com.apple.sesd.kml.sharing"];
    v13 = [NSString stringWithUTF8String:KmlErrorString(), NSLocalizedDescriptionKey];
    v16 = v13;
    v14 = [NSDictionary dictionaryWithObjects:&v16 forKeys:&v15 count:1];
    v11 = [NSError errorWithDomain:v12 code:109 userInfo:v14];

    v10 = 0;
  }

  (*(*(a1 + 56) + 16))();
}

void sub_1003A70D0(uint64_t a1)
{
  v2 = +[NSMutableArray array];
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  obj = *(a1 + 32);
  v3 = [obj countByEnumeratingWithState:&v33 objects:v43 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v34;
LABEL_3:
    v6 = 0;
    while (1)
    {
      if (*v34 != v5)
      {
        objc_enumerationMutation(obj);
      }

      v7 = *(*(&v33 + 1) + 8 * v6);
      v8 = KmlLogger();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        *buf = 136315650;
        v38 = "[KmlKeyManagementSession getSecondFactorRequestForConfigs:completionHandler:]_block_invoke";
        v39 = 1024;
        v40 = 424;
        v41 = 2112;
        v42 = v7;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s : %i : Config: %@", buf, 0x1Cu);
      }

      v9 = *(a1 + 40);
      v10 = *(v9 + 64);
      *(v9 + 64) = 0;

      v11 = *(a1 + 40);
      v12 = *(v11 + 80);
      *(v11 + 80) = 0;

      if ([v7 recipientFlow])
      {
        v13 = [v7 invitationIdentifier];
        v14 = sub_10038B89C(KmlFriendSharingManager, v13, 0);
        v15 = *(a1 + 40);
        v16 = *(v15 + 80);
        *(v15 + 80) = v14;

        v17 = *(*(a1 + 40) + 80);
        v32 = 0;
        v18 = &v32;
        sub_10038DD3C(v17, v7, &v32);
      }

      else
      {
        v19 = [v7 keyIdentifier];
        v20 = [v7 invitationIdentifier];
        v21 = sub_10039E370(KmlOwnerSharingManager, v19, v20);
        v22 = *(a1 + 40);
        v23 = *(v22 + 64);
        *(v22 + 64) = v21;

        v24 = *(*(a1 + 40) + 64);
        v31 = 0;
        v18 = &v31;
        sub_10039FCE0(v24, v7, &v31);
      }
      v25 = ;
      v26 = *v18;
      if (v26)
      {
        break;
      }

      if (v2 && v25)
      {
        [v2 addObject:v25];
      }

      else
      {

        v2 = 0;
      }

      if (v4 == ++v6)
      {
        v4 = [obj countByEnumeratingWithState:&v33 objects:v43 count:16];
        if (v4)
        {
          goto LABEL_3;
        }

        goto LABEL_18;
      }
    }

    v27 = v26;
    v28 = sesErrorToKmlError();

    if (!v28)
    {
      goto LABEL_23;
    }

    v29 = KmlLogger();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v38 = "[KmlKeyManagementSession getSecondFactorRequestForConfigs:completionHandler:]_block_invoke";
      v39 = 1024;
      v40 = 454;
      v41 = 2112;
      v42 = v28;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "%s : %i : Error in creating 2FA request: %@", buf, 0x1Cu);
    }

    (*(*(a1 + 48) + 16))();
  }

  else
  {
LABEL_18:

LABEL_23:
    (*(*(a1 + 48) + 16))();
    v28 = 0;
  }
}

void sub_1003A7588(uint64_t a1)
{
  v2 = KmlLogger();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    *&buf[4] = "[KmlKeyManagementSession hasUpgradeAvailableForKeyWithIdentifier:versionType:versions:completionHandler:]_block_invoke";
    *&buf[12] = 1024;
    *&buf[14] = 468;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s : %i : ", buf, 0x12u);
  }

  v3 = sub_1003DFBD4([KmlEndpointManager alloc], *(a1 + 32), 0);
  memset(buf, 0, 32);
  v4 = *(a1 + 56);
  v5 = *(a1 + 40);
  v10 = 0;
  sub_100399DA4(v3, v4, v5, &v10, buf);
  v6 = v10;
  v7 = *(a1 + 48);
  v9[0] = *buf;
  v9[1] = *&buf[16];
  v8 = [NSValue valueWithDAAvailableVersionUpgrade:v9];
  (*(v7 + 16))(v7, v8, v6);
}

void sub_1003A77F0(uint64_t a1)
{
  v2 = KmlLogger();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v18 = "[KmlKeyManagementSession upgradeKeyWithIdentifier:versionType:version:upgradeInformation:completionHandler:]_block_invoke";
    v19 = 1024;
    v20 = 483;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s : %i : ", buf, 0x12u);
  }

  v3 = sub_1003DFBD4([KmlEndpointManager alloc], *(a1 + 40), 0);
  v4 = *(a1 + 32);
  v5 = *(v4 + 88);
  *(v4 + 88) = v3;

  if (*(*(a1 + 32) + 88))
  {
    v6 = objc_retainBlock(*(a1 + 56));
    v7 = *(a1 + 32);
    v8 = *(v7 + 96);
    *(v7 + 96) = v6;

    sub_1003E90C4(*(*(a1 + 32) + 88), *(a1 + 32));
    sub_1003E5194(*(*(a1 + 32) + 88), *(a1 + 64), *(a1 + 72), *(a1 + 48));
    v9 = KmlLogger();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v18 = "[KmlKeyManagementSession upgradeKeyWithIdentifier:versionType:version:upgradeInformation:completionHandler:]_block_invoke";
      v19 = 1024;
      v20 = 496;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%s : %i : Waiting for upgrade to finish", buf, 0x12u);
    }
  }

  else
  {
    v10 = KmlLogger();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v18 = "[KmlKeyManagementSession upgradeKeyWithIdentifier:versionType:version:upgradeInformation:completionHandler:]_block_invoke";
      v19 = 1024;
      v20 = 486;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%s : %i : Failed to get Endpoint Manager", buf, 0x12u);
    }

    v11 = *(a1 + 56);
    v9 = [NSString stringWithUTF8String:"com.apple.sesd.kml"];
    v12 = [NSString stringWithUTF8String:KmlErrorString(), NSLocalizedDescriptionKey];
    v16 = v12;
    v13 = [NSDictionary dictionaryWithObjects:&v16 forKeys:&v15 count:1];
    v14 = [NSError errorWithDomain:v9 code:210 userInfo:v13];
    (*(v11 + 16))(v11, v14);
  }
}

void sub_1003A7BB4(uint64_t a1)
{
  v2 = KmlLogger();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v5 = 136315394;
    v6 = "[KmlKeyManagementSession finalizeUpgradeForKeyWithIdentifier:versionType:version:revert:completionHandler:]_block_invoke";
    v7 = 1024;
    v8 = 507;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s : %i : ", &v5, 0x12u);
  }

  v3 = sub_1003DFBD4([KmlEndpointManager alloc], *(a1 + 32), 0);
  v4 = sub_1003E6488(v3, *(a1 + 48), *(a1 + 56), *(a1 + 64));
  (*(*(a1 + 40) + 16))();
}

void sub_1003A7DE4(uint64_t a1)
{
  v2 = KmlLogger();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v5 = 136315394;
    v6 = "[KmlKeyManagementSession updateConfiguration:forKeyWithIdentifier:additionalConfigurationData:completionHandler:]_block_invoke";
    v7 = 1024;
    v8 = 522;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s : %i : ", &v5, 0x12u);
  }

  v3 = sub_1003DFBD4([KmlEndpointManager alloc], *(a1 + 32), 0);
  v4 = sub_1003E7C30(v3, *(a1 + 40), *(a1 + 48));
  (*(*(a1 + 56) + 16))();
}

id sub_1003A7FA4(uint64_t a1)
{
  sub_1003F1108(*(a1 + 32));
  v2 = *(a1 + 40);
  v4.receiver = *(a1 + 32);
  v4.super_class = KmlKeyManagementSession;
  return objc_msgSendSuper2(&v4, "endSessionWithCompletion:", v2);
}

void sub_1003A8658(uint64_t a1@<X8>)
{
  v3 = *(v1 + a1);
  *(v1 + a1) = 0;
}

uint64_t sub_1003A86C0(uint64_t a1, void *a2)
{
  objc_initWeak(&location, a2);
  objc_opt_self();
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1003A87A4;
  v5[3] = &unk_1004C1538;
  objc_copyWeak(&v6, &location);
  if (qword_10051B158 != -1)
  {
    dispatch_once(&qword_10051B158, v5);
  }

  v2 = qword_10051B150;
  v3 = qword_10051B150;
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
  return v2;
}

void sub_1003A87A4(uint64_t a1)
{
  v2 = [KmlPeerToPeerConnection alloc];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = sub_1003A8818(&v2->super.isa, WeakRetained);
  v4 = qword_10051B150;
  qword_10051B150 = v3;
}

id *sub_1003A8818(id *a1, void *a2)
{
  objc_initWeak(&location, a2);
  if (a1)
  {
    v20.receiver = a1;
    v20.super_class = KmlPeerToPeerConnection;
    a1 = objc_msgSendSuper2(&v20, "init");
    if (a1)
    {
      v3 = objc_loadWeakRetained(&location);
      objc_storeWeak(a1 + 3, v3);

      v4 = dispatch_queue_create("com.apple.sesd.kml.p2pConnection", 0);
      v5 = a1[2];
      a1[2] = v4;

      v6 = +[NSMutableDictionary dictionary];
      v7 = a1[4];
      a1[4] = v6;

      v8 = +[NSMutableDictionary dictionary];
      v9 = a1[5];
      a1[5] = v8;

      v10 = +[NSCountedSet set];
      v11 = a1[6];
      a1[6] = v10;

      v12 = [[IDSService alloc] initWithService:@"com.apple.private.alloy.keysharing"];
      v13 = a1[1];
      a1[1] = v12;

      [a1[1] addDelegate:a1 queue:a1[2]];
      v14 = +[NSMutableArray array];
      v15 = a1[9];
      a1[9] = v14;

      v16 = a1[10];
      a1[10] = 0;

      *(a1 + 64) = 0;
      v17 = +[NWPathEvaluator sharedDefaultEvaluator];
      v18 = a1[7];
      a1[7] = v17;

      [a1[7] addObserver:a1 forKeyPath:@"path" options:5 context:0];
    }
  }

  objc_destroyWeak(&location);
  return a1;
}

void sub_1003A8AB4(uint64_t a1)
{
  if ([*(a1 + 32) isEqualToString:@"path"])
  {
    v2 = *(a1 + 40);

    sub_1003F126C(v2);
  }
}

void sub_1003A8B08(uint64_t a1)
{
  if (*(a1 + 48) & 1) != 0 || (v2 = *(a1 + 32), (*(v2 + 64)) || ((v3 = *(a1 + 40)) == 0 ? (v4 = 0) : (v4 = *(v3 + 24)), sub_1003F1424(v2, v4)))
  {
    sub_1003A9CC4(a1);
  }

  else
  {
    v5 = KmlLogger();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v7 = 136315394;
      v8 = "[KmlPeerToPeerConnection sendMessage:assumeInitialConnectivity:]_block_invoke";
      v9 = 1024;
      v10 = 153;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s : %i : Internet not reachable. Queue up the message", &v7, 0x12u);
    }

    [*(*(a1 + 32) + 72) addObject:*(a1 + 40)];
    if ([*(*(a1 + 32) + 72) count] >= 0xB)
    {
      v6 = KmlLogger();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        v7 = 136315650;
        v8 = "[KmlPeerToPeerConnection sendMessage:assumeInitialConnectivity:]_block_invoke";
        v9 = 1024;
        v10 = 156;
        v11 = 1024;
        v12 = 10;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%s : %i : Max (%d) messages are already queued, drain the oldest message", &v7, 0x18u);
      }

      sub_1003F1B6C(*(a1 + 32));
    }
  }
}

void sub_1003A8CA0(uint64_t a1)
{
  v2 = KmlLogger();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v5 = 136315394;
    v6 = "[KmlPeerToPeerConnection checkForActiveAccounts]_block_invoke";
    v7 = 1024;
    v8 = 166;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s : %i : P2PConnection: Checking for active IDS accounts", &v5, 0x12u);
  }

  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 24));
  v4 = sub_1003F1D50(*(a1 + 32));
  [WeakRetained handleConnectionSetupResult:v4];
}

uint64_t sub_1003A8D9C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    if (v3)
    {
      v10 = 0;
      v11 = &v10;
      v12 = 0x2020000000;
      v13 = 0;
      dispatch_assert_queue_not_V2(*(a1 + 16));
      v5 = *(a1 + 16);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1003A9938;
      block[3] = &unk_1004D1EE8;
      v9 = &v10;
      block[4] = a1;
      v8 = v4;
      dispatch_sync(v5, block);
      LOBYTE(a1) = *(v11 + 24);

      _Block_object_dispose(&v10, 8);
    }

    else
    {
      sub_1003A9D60();
      LOBYTE(a1) = 0;
    }
  }

  return a1 & 1;
}

void sub_1003A8E90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1003A8EA8(uint64_t a1)
{
  if ([*(a1 + 32) _appearsToBeEmail])
  {
    v2 = IDSCopyIDForEmailAddress();
  }

  else
  {
    if (![*(a1 + 32) _appearsToBePhoneNumber])
    {
      v11 = 0;
      v10 = 0;
      v4 = 0;
      goto LABEL_11;
    }

    v3 = *(a1 + 32);
    v2 = IDSCopyIDForPhoneNumber();
  }

  v4 = v2;
  if (v2)
  {
    v5 = [NSSet setWithObject:v2];
    v22 = IDSSendMessageOptionTimeoutKey;
    v23 = &off_1004DD0E0;
    v6 = [NSDictionary dictionaryWithObjects:&v23 forKeys:&v22 count:1];
    v7 = *(a1 + 48);
    v8 = *(*(a1 + 40) + 8);
    v16 = 0;
    v17 = 0;
    v9 = [v8 sendData:v7 toDestinations:v5 priority:300 options:v6 identifier:&v17 error:&v16];
    v10 = v17;
    v11 = v16;

    if (v9)
    {
      v12 = KmlLogger();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        v19 = "[KmlPeerToPeerConnection sendTestData:toRemoteIdentifier:]_block_invoke";
        v20 = 1024;
        v21 = 248;
        v13 = "%s : %i : Test data sent";
        v14 = v12;
        v15 = OS_LOG_TYPE_INFO;
LABEL_13:
        _os_log_impl(&_mh_execute_header, v14, v15, v13, buf, 0x12u);
        goto LABEL_14;
      }

      goto LABEL_14;
    }
  }

  else
  {
    v11 = 0;
    v10 = 0;
  }

LABEL_11:
  v12 = KmlLogger();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v19 = "[KmlPeerToPeerConnection sendTestData:toRemoteIdentifier:]_block_invoke";
    v20 = 1024;
    v21 = 250;
    v13 = "%s : %i : Failed to send test data";
    v14 = v12;
    v15 = OS_LOG_TYPE_ERROR;
    goto LABEL_13;
  }

LABEL_14:
}

void sub_1003A91B8(void *a1)
{
  v2 = KmlLogger();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = a1[4];
    v4 = a1[5];
    v9 = 136315906;
    v10 = "[KmlPeerToPeerConnection service:account:incomingData:fromID:context:]_block_invoke";
    v11 = 1024;
    v12 = 269;
    v13 = 2112;
    v14 = v3;
    v15 = 2112;
    v16 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s : %i : P2PConnection: Received data from:%@ context:%@", &v9, 0x26u);
  }

  v5 = a1[4];
  v6 = IDSCopyRawAddressForDestination();
  v7 = [[NSData alloc] initWithData:a1[6]];
  WeakRetained = objc_loadWeakRetained((a1[7] + 24));
  [WeakRetained handleIncomingTestData:v7 fromRemoteIdsIdentifier:v6];
}

void sub_1003A93C4(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 8) deviceForFromID:*(a1 + 40)];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 uniqueIDOverride];
  }

  else
  {
    v5 = *(a1 + 40);
    v4 = IDSCopyRawAddressForDestination();
  }

  v6 = v4;
  v7 = [[NSDictionary alloc] initWithDictionary:*(a1 + 48)];
  v8 = [*(a1 + 56) toID];
  if (v8)
  {
    [*(*(a1 + 32) + 40) setObject:v8 forKeyedSubscript:v6];
    [*(*(a1 + 32) + 48) addObject:v6];
  }

  v9 = KmlLogger();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = *(a1 + 40);
    v12 = 136315906;
    v13 = "[KmlPeerToPeerConnection service:account:incomingMessage:fromID:context:]_block_invoke";
    v14 = 1024;
    v15 = 297;
    v16 = 2112;
    v17 = v10;
    v18 = 2112;
    v19 = v8;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%s : %i : P2PConnection: Received message from:%@ toOurId:%@", &v12, 0x26u);
  }

  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 24));
  [WeakRetained handleIncomingMessage:v7 fromRemoteIdsIdentifier:v6];

  if (!v3)
  {
    sub_1003F2370(*(a1 + 32), 1);
  }
}

void sub_1003A963C(uint64_t a1)
{
  v2 = KmlLogger();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v4 = [NSNumber numberWithBool:*(a1 + 56)];
    v7 = 136315906;
    v8 = "[KmlPeerToPeerConnection service:account:identifier:didSendWithSuccess:error:]_block_invoke";
    v9 = 1024;
    v10 = 311;
    v11 = 2112;
    v12 = v3;
    v13 = 2112;
    v14 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s : %i : P2PConnection: Sent data with identifier:%@ result:%@", &v7, 0x26u);
  }

  v5 = [*(*(a1 + 40) + 32) objectForKeyedSubscript:*(a1 + 32)];
  if (v5)
  {
    [*(*(a1 + 40) + 32) removeObjectForKey:*(a1 + 32)];
    WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 24));
    [WeakRetained handleSendMessageResult:*(a1 + 48) forMessageIdentifier:v5];
  }

  else
  {
    WeakRetained = KmlLogger();
    if (os_log_type_enabled(WeakRetained, OS_LOG_TYPE_ERROR))
    {
      v7 = 136315394;
      v8 = "[KmlPeerToPeerConnection service:account:identifier:didSendWithSuccess:error:]_block_invoke";
      v9 = 1024;
      v10 = 318;
      _os_log_impl(&_mh_execute_header, WeakRetained, OS_LOG_TYPE_ERROR, "%s : %i : P2PConnection: We didn't send anything, so dropping the send receipt", &v7, 0x12u);
    }
  }
}

void sub_1003A98FC(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_impl(a1, v5, OS_LOG_TYPE_INFO, a4, a5, 0x1Cu);
}

void sub_1003A9924(uint64_t a1@<X8>)
{
  *(v2 + 14) = v1;
  *(v3 - 126) = 2112;
  *(v2 + 20) = a1;
}

void sub_1003A9938(uint64_t a1)
{
  *(*(*(a1 + 48) + 8) + 24) = sub_1003F1424(*(a1 + 32), *(a1 + 40));
  if ((*(*(*(a1 + 48) + 8) + 24) & 1) == 0)
  {
    v2 = [*(*(a1 + 32) + 8) accounts];
    sub_1003A9918();
    v4 = [v3 countByEnumeratingWithState:? objects:? count:?];
    if (v4)
    {
      v5 = v4;
      v6 = MEMORY[0];
      while (2)
      {
        for (i = 0; i != v5; i = i + 1)
        {
          if (MEMORY[0] != v6)
          {
            objc_enumerationMutation(v2);
          }

          v8 = [*(8 * i) loginID];
          v9 = [v8 isEqualToString:*(a1 + 40)];

          if (v9)
          {
            v10 = KmlLogger();
            if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
            {
              v13 = *(a1 + 40);
              v14 = 136315650;
              v15 = "[KmlPeerToPeerConnection isOurOwnDeviceWithId:]_block_invoke";
              v16 = 1024;
              v17 = 191;
              v18 = 2112;
              v19 = v13;
              sub_1003A98FC(&_mh_execute_header, v11, v12, "%s : %i : %@ is our own account ID", &v14);
            }

            *(*(*(a1 + 48) + 8) + 24) = 1;
            goto LABEL_14;
          }
        }

        sub_1003A9918();
        v5 = [v2 countByEnumeratingWithState:? objects:? count:?];
        if (v5)
        {
          continue;
        }

        break;
      }
    }

LABEL_14:
  }
}

void sub_1003A9AF4(uint64_t a1)
{
  v1 = sub_1003F1D50(*(a1 + 32));
  if (v1)
  {
    v2 = KmlLogger();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v4[0] = 136315650;
      sub_1003672C0();
      sub_1003939E8();
      v5 = v1;
      sub_100367454(&_mh_execute_header, v2, v3, "%s : %i : Failed to find active IDS ID - %@", v4);
    }
  }
}

void sub_1003A9BB8(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 80);
  v3 = v2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 80);
  *(v4 + 80) = 0;

  v6 = sub_1003F1D50(*(a1 + 32));
  if (v6)
  {
    v7 = KmlLogger();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v9[0] = 136315650;
      sub_1003672C0();
      sub_1003939E8();
      v10 = v6;
      sub_100367454(&_mh_execute_header, v7, v8, "%s : %i : Keeping old ID as we failed to find changed active IDS ID - %@", v9);
    }

    objc_storeStrong((*(a1 + 32) + 80), v2);
  }
}

void sub_1003A9CC4(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    v2 = *(v1 + 8);
  }

  else
  {
    v2 = 0;
  }

  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (v3)
  {
    v3 = v3[2];
  }

  v5 = *(a1 + 40);
  if (v5)
  {
    v6 = *(v5 + 24);
  }

  else
  {
    v6 = 0;
  }

  v7 = v3;
  v8 = v2;
  sub_1003F1628(v4, v8, v7, v6);
}

void sub_1003A9D60()
{
  v0 = KmlLogger();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_INFO))
  {
    v1[0] = 136315394;
    sub_1003672C0();
    *(&v1[3] + 2) = 181;
    _os_log_impl(&_mh_execute_header, v0, OS_LOG_TYPE_INFO, "%s : %i : RemoteId should be non-nil to check this", v1, 0x12u);
  }
}

void sub_1003A9E28(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7)
{
  v13 = a2;
  v80 = a3;
  v14 = a4;
  v15 = a5;
  v78 = a6;
  v79 = a7;
  if (a1)
  {
    v16 = SESDefaultLogObject();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "", buf, 2u);
    }

    v90[0] = @"1.2.840.113635.100.10.1";
    v90[1] = @"1.2.840.113635.100.8.2";
    v90[2] = @"1.2.840.113635.100.8.3";
    v90[3] = @"1.2.840.113635.100.8.4";
    v90[4] = @"1.2.840.113635.100.8.7";
    v90[5] = @"1.2.840.113635.100.8.5";
    v90[6] = @"1.2.840.113635.100.10.1";
    v17 = [NSArray arrayWithObjects:v90 count:7];
    v74 = a1;
    if (SESInternalVariant())
    {
      v18 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.seserviced"];
      v19 = [v18 objectForKey:@"SEABAASServerURL"];
      v20 = v19;
      if (v19)
      {
        v77 = v19;
      }

      else
      {
        v77 = @"https://humb.apple.com/humbug/seabaas";
      }

      v21 = SESDefaultLogObject();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        *&buf[4] = v77;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEBUG, "SEABAASServerURL : '%@'", buf, 0xCu);
      }
    }

    else
    {
      v77 = @"https://humb.apple.com/humbug/seabaas";
    }

    v75 = v14;
    v22 = +[NSMutableArray array];
    if ([v15 count])
    {
      v23 = 0;
      v24 = 0;
      while (1)
      {
        v25 = [v15 objectAtIndex:v23];
        v26 = [@"1.2.840.113635.100.8.2" isEqualToString:v25];

        if (v26)
        {
          goto LABEL_17;
        }

        v27 = [v15 objectAtIndex:v23];
        v28 = [v17 containsObject:v27];

        if (v28)
        {
          break;
        }

LABEL_18:
        if ([v15 count] <= ++v23)
        {
          goto LABEL_21;
        }
      }

      v29 = [v15 objectAtIndex:v23];
      [v22 addObject:v29];

LABEL_17:
      v24 = 1;
      goto LABEL_18;
    }

    v24 = 0;
LABEL_21:
    v30 = objc_opt_new();
    [v30 setObject:v80 forKeyedSubscript:@"CASDCertificate"];
    v88 = v13;
    v31 = [NSArray arrayWithObjects:&v88 count:1];
    [v30 setObject:v31 forKeyedSubscript:@"SEAttestations"];

    if (v24)
    {
      v32 = SESDefaultLogObject();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEBUG, "Certificate require BAA request", buf, 2u);
      }

      *buf = 0;
      v33 = +[NSMutableDictionary dictionary];
      v34 = v33;
      if (v75)
      {
        [v33 setObject:v75 forKeyedSubscript:kMAOptionsBAANonce];
        [v22 addObject:kMAOptionsBAAOIDNonce];
      }

      v35 = v13;
      if ([v22 count])
      {
        [v34 setObject:v22 forKeyedSubscript:kMAOptionsBAAOIDSToInclude];
      }

      [v34 setObject:&__kCFBooleanTrue forKeyedSubscript:kMAOptionsBAASCRTAttestation];
      v85[1] = 0;
      v36 = DeviceIdentityCreateClientCertificateRequest();
      v37 = 0;
      if (v37 || !*buf)
      {
        v39 = SESDefaultLogObject();
        v50 = SESCreateAndLogError();
        v58 = sub_100012F30(v50, v51, v52, v53, v54, v55, v56, v57, v73, v74, v75, v77, v78, v79);
        v59(v58);

        goto LABEL_33;
      }

      CFRelease(*buf);
      v38 = [v36 HTTPBody];
      v85[0] = 0;
      v39 = [NSPropertyListSerialization propertyListWithData:v38 options:0 format:0 error:v85];
      v37 = v85[0];

      if (v37)
      {
        v48 = sub_100012F30(v40, v41, v42, v43, v44, v45, v46, v47, v73, v74, v75, v77, v78, v79);
        v49(v48);
LABEL_33:

        v14 = v76;
LABEL_46:

        v13 = v35;
        goto LABEL_47;
      }

      [v30 setObject:v39 forKeyedSubscript:@"BAARequest"];

      v13 = v35;
    }

    v35 = v13;
    if (v78)
    {
      [v78 doubleValue];
      v61 = (v60 / 60.0);
    }

    else
    {
      v61 = 10000;
    }

    v86[0] = @"Validity";
    v62 = [NSNumber numberWithUnsignedInt:v61];
    v86[1] = @"IssuerDNs";
    v87[0] = v62;
    v87[1] = &off_1004DC680;
    v63 = [NSDictionary dictionaryWithObjects:v87 forKeys:v86 count:2];
    [v30 setObject:v63 forKeyedSubscript:@"Properties"];

    v84 = 0;
    v64 = [NSPropertyListSerialization dataWithPropertyList:v30 format:100 options:0 error:&v84];
    v37 = v84;
    v65 = SESDefaultLogObject();
    v66 = v65;
    if (!v64 || v37)
    {
      if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        *&buf[4] = v37;
        _os_log_impl(&_mh_execute_header, v66, OS_LOG_TYPE_ERROR, "Could not serialize SEABAAS request : %@", buf, 0xCu);
      }
    }

    else
    {
      if (os_log_type_enabled(v65, OS_LOG_TYPE_DEBUG))
      {
        v67 = [v64 asHexString];
        *buf = 138412290;
        *&buf[4] = v67;
        _os_log_impl(&_mh_execute_header, v66, OS_LOG_TYPE_DEBUG, "SEABAAS request : %@", buf, 0xCu);
      }

      v68 = [NSMutableURLRequest alloc];
      v69 = [NSURL URLWithString:v77];
      v70 = [v68 initWithURL:v69];

      [v70 setHTTPMethod:@"POST"];
      [v70 setHTTPBody:v64];
      [v70 setValue:@"application/json; charset=utf-8" forHTTPHeaderField:@"Content-Type"];
      [v70 setValue:@"iOS (26.1) - SecureElementService-61.7" forHTTPHeaderField:@"User-Agent"];
      [v70 setTimeoutInterval:30.0];
      v71 = +[NSURLSession sharedSession];
      v81[0] = _NSConcreteStackBlock;
      v81[1] = 3221225472;
      v81[2] = sub_100012EB4;
      v81[3] = &unk_1004C1340;
      v81[4] = v74;
      v82 = v70;
      v83 = v79;
      v66 = v70;
      v72 = [v71 dataTaskWithRequest:v66 completionHandler:v81];
      [v72 resume];
    }

    v14 = v75;

    goto LABEL_46;
  }

LABEL_47:
}

void sub_1003AA678(uint64_t a1, void *a2, void *a3, void *a4, void *a5, unsigned int a6, void *a7)
{
  v13 = a2;
  v38 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a7;
  if (a1)
  {
    v17 = v14;
    if ([v17 statusCode] == 429)
    {
      v18 = SESDefaultLogObject();
      SESCreateAndLogError();
      v20 = v19 = v13;
      v21 = sub_100012F18();
      v22(v21);

      v13 = v19;
    }

    if (v15)
    {
      if (a6 < 9)
      {
        v30 = SESDefaultLogObject();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
        {
          *buf = 67109376;
          v45 = a6;
          v46 = 1024;
          v47 = 8;
          _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_INFO, "Retrying connection error (%u/%u)", buf, 0xEu);
        }

        v31 = +[NSURLSession sharedSession];
        v40[0] = _NSConcreteStackBlock;
        v40[1] = 3221225472;
        v40[2] = sub_1003AAA48;
        v40[3] = &unk_1004C1368;
        v40[4] = a1;
        v41 = v13;
        v43 = a6;
        v42 = v16;
        v32 = [v31 dataTaskWithRequest:v41 completionHandler:v40];
        [v32 resume];
      }

      else
      {
        v23 = sub_100012F18();
        v24(v23);
      }

      goto LABEL_18;
    }

    v37 = v13;
    v39 = 0;
    v25 = [NSPropertyListSerialization propertyListWithData:v38 options:0 format:0 error:&v39];
    v26 = v39;
    if ([v17 statusCode] == 200)
    {
      v27 = [v25 objectForKeyedSubscript:@"SEABAASCertificate"];
      v28 = [v25 objectForKeyedSubscript:@"SEABAASGENERATEDX509Certificates"];
      if (v27)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          if ([v28 count])
          {
            v29 = [v28 objectAtIndexedSubscript:0];
            (*(v16 + 2))(v16, v27, v29, 0);
LABEL_17:

            v13 = v37;
LABEL_18:

            goto LABEL_19;
          }
        }
      }
    }

    v27 = SESDefaultLogObject();
    [v17 statusCode];
    v28 = [v17 allHeaderFields];
    v29 = SESCreateAndLogError();
    v33 = sub_100012F18();
    v36(v33, v34, v35, v29);
    goto LABEL_17;
  }

LABEL_19:
}

uint64_t sub_1003AAA6C(uint64_t result)
{
  if (result)
  {
    return *(result + 8);
  }

  return result;
}

uint64_t sub_1003AAA78(uint64_t result)
{
  if (result)
  {
    return *(result + 16);
  }

  return result;
}

id sub_1003AAA98(void *a1, uint64_t a2)
{
  if (a1)
  {
    a1 = sub_100013548(a1, a2, 0);
    v2 = vars8;
  }

  return a1;
}

uint64_t sub_1003AAACC(void *a1, const char *a2)
{
  v2 = a1;
  if (a1)
  {
    v3 = sub_1003AF3C4(a1, a2);
    v4 = [v3 type];

    if (v4 == 1)
    {
      return 0;
    }

    else
    {
      if (v4 == 3)
      {
        v6 = sub_1003AF3C4(v2, v5);
        v7 = [v6 csn] > 0x648;
      }

      else
      {
        if (v4 != 2)
        {
          return 1;
        }

        v6 = sub_1003AF3C4(v2, v5);
        v7 = [v6 csn] > 0x50E;
      }

      v2 = v7;
    }
  }

  return v2;
}

void sub_1003AAB7C(uint64_t a1, void *a2)
{
  if (a1)
  {
    objc_storeStrong((a1 + 16), a2);
  }
}

BOOL sub_1003AAB8C(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v27 = 0;
  v1 = sub_100014144(a1, &v27);
  v3 = v27;
  if (v3)
  {
    v4 = SESDefaultLogObject();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      HIDWORD(v29) = HIDWORD(v3);
      sub_10001445C(&_mh_execute_header, v5, v6, "Failed to get PTA package: %@", v7, v8, v9, v10, v26, v27, 2u);
    }
  }

  else
  {
    if (!v1)
    {
      goto LABEL_6;
    }

    v13 = [sub_100014434(0 v2)];
    if (v13 > 0xE)
    {
      v24 = [sub_100014434(v13 v14)];
      v25 = SESDefaultLogObject();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412546;
        v29 = v1;
        v30 = 1024;
        v31 = v24;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEBUG, "PTA Package %@ Raw Version 0x%X", buf, 0x12u);
      }

      v11 = v24 > 0x204;
      goto LABEL_7;
    }

    v4 = SESDefaultLogObject();
    v15 = os_log_type_enabled(v4, OS_LOG_TYPE_FAULT);
    if (v15)
    {
      v17 = [sub_100014434(v15 v16)];
      HIDWORD(v29) = HIDWORD(v17);
      sub_10001445C(&_mh_execute_header, v18, v19, "PTA Package AID %@ too short?", v20, v21, v22, v23, v26, v27, 2u);
    }
  }

LABEL_6:
  v11 = 0;
LABEL_7:

  return v11;
}

void sub_1003AAD44(uint64_t a1, void *a2)
{
  Property = a2;
  v5 = Property;
  if (Property)
  {
    Property = objc_getProperty(Property, v4, 16, 1);
  }

  if ([Property containsObject:*(*(*(a1 + 32) + 8) + 40)])
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }
}

id sub_1003AADBC(void *a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v4 = [@"A000000151000000" hexStringAsData];
    v5 = sub_1003AF1FC(a1, v4);

    if (v5)
    {
      v6 = v5;
      v7 = v6;
    }

    else
    {
      v8 = [@"80AF10020000064F005C024F840000" hexStringAsData];
      v68 = [@"80AF10030000064F005C024F840000" hexStringAsData];
      v9 = 0;
      v63 = v3 + 16;
      v64 = v8;
      v10 = &swift_cvw_destroy_ptr;
      v11 = &NSInferMappingModelAutomaticallyOption_ptr;
      v12 = v64;
      while (1)
      {
        v13 = v9;
        v78 = 0;
        v69 = v12;
        v9 = sub_1003AEB5C(a1, v12, &v78);
        v14 = v78;

        if (v14)
        {
          break;
        }

        v76 = 0u;
        v77 = 0u;
        v74 = 0u;
        v75 = 0u;
        v15 = v10[183];
        v16 = sub_1003B0934(v9);
        v17 = [v15 TLVsWithData:v16];

        v65 = sub_10001447C(v18, v19, v20, v21, v22, v23, v24, v25, v59, v60, v62, v63, v64, v65, v66, v67, v68, v69, v70, *(&v70 + 1), v71, *(&v71 + 1), v72, *(&v72 + 1), v73, *(&v73 + 1), v74);
        if (v65)
        {
          v26 = *v75;
          v66 = v17;
          v67 = v3;
          v62 = *v75;
          do
          {
            v27 = 0;
            do
            {
              if (*v75 != v26)
              {
                objc_enumerationMutation(v17);
              }

              v28 = *(*(&v74 + 1) + 8 * v27);
              v29 = objc_opt_new();
              v30 = v11[15];
              v32 = objc_opt_new();
              if (v29)
              {
                objc_setProperty_atomic(v29, v31, v32, 16);
              }

              v72 = 0u;
              v73 = 0u;
              v70 = 0u;
              v71 = 0u;
              v33 = [v28 children];
              v34 = [v33 countByEnumeratingWithState:&v70 objects:v79 count:16];
              if (v34)
              {
                v35 = v34;
                v36 = *v71;
                do
                {
                  v37 = 0;
                  do
                  {
                    if (*v71 != v36)
                    {
                      objc_enumerationMutation(v33);
                    }

                    v38 = *(*(&v70 + 1) + 8 * v37);
                    v39 = [v38 tag];
                    if (v39 == 132)
                    {
                      if (v29)
                      {
                        Property = objc_getProperty(v29, v40, 16, 1);
                      }

                      else
                      {
                        Property = 0;
                      }

                      v44 = Property;
                      v42 = [v38 value];
                      [v44 addObject:v42];
                    }

                    else
                    {
                      if (v39 != 79)
                      {
                        v56 = SESDefaultLogObject();
                        [v38 tag];
                        v57 = sub_1003B0934(v9);
                        v61 = [v57 asHexString];
                        v7 = SESCreateAndLogError();

                        v6 = 0;
                        v3 = v67;
                        goto LABEL_34;
                      }

                      v42 = [v38 value];
                      if (v29)
                      {
                        objc_setProperty_atomic(v29, v41, v42, 8);
                      }
                    }

                    v37 = v37 + 1;
                  }

                  while (v35 != v37);
                  v45 = [v33 countByEnumeratingWithState:&v70 objects:v79 count:16];
                  v35 = v45;
                }

                while (v45);
              }

              v3 = v67;
              (*(v67 + 16))(v67, v29);

              v27 = v27 + 1;
              v17 = v66;
              v11 = &NSInferMappingModelAutomaticallyOption_ptr;
              v26 = v62;
            }

            while (v27 != v65);
            v65 = sub_10001447C(v46, v47, v48, v49, v50, v51, v52, v53, v59, v60, v62, v63, v64, v65, v66, v67, v68, v69, v70, *(&v70 + 1), v71, *(&v71 + 1), v72, *(&v72 + 1), v73, *(&v73 + 1), v74);
          }

          while (v65);
        }

        v54 = v68;
        v55 = sub_1003B0984(v9);
        v12 = v54;
        v10 = &swift_cvw_destroy_ptr;
        if (v55 != 25360)
        {
          v6 = 0;
          v7 = 0;
          v69 = v54;
          goto LABEL_34;
        }
      }

      v6 = v14;
      v7 = v6;
LABEL_34:
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

id sub_1003AB220(void *a1, void *a2)
{
  v4 = a2;
  if (!a1)
  {
    v7 = 0;
    goto LABEL_10;
  }

  if ((sub_1003AAACC(a1, v3) & 1) == 0)
  {
    v8 = SESDefaultLogObject();
    v7 = SESCreateAndLogError();

    goto LABEL_10;
  }

  v5 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.seserviced"];
  if (SESInternalVariant() && [v5 BOOLForKey:@"debug.skip.applet.personalization"])
  {
    v6 = SESDefaultLogObject();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Skipping applet personalization due to debug setting", buf, 2u);
    }

    v7 = 0;
    goto LABEL_8;
  }

  v10 = [NSMutableArray arrayWithCapacity:4];
  v11 = objc_opt_new();
  sub_1003ABAF0(v11, @"A000000809434343444B417631");
  v12 = [@"80CA00EF" hexStringAsData];
  sub_100014404(v12);
  if (v11)
  {
    sub_100014450("SLAMPersonalizeCCC", COERCE_DOUBLE(0x380000003));
  }

  sub_10001449C();

  v13 = objc_opt_new();
  sub_1003ABAF0(v13, @"A00000085801010100000001");
  v14 = [@"80CA00EF" hexStringAsData];
  sub_100014404(v14);
  if (v13)
  {
    sub_100014450("SLAMPersonalizeHome", COERCE_DOUBLE(0x280000002));
  }

  sub_10001449C();

  v15 = objc_opt_new();
  sub_1003ABAF0(v15, @"A00000085802010100000001");
  v16 = [@"80CA00EF" hexStringAsData];
  sub_100014404(v16);
  if (v15)
  {
    sub_100014450("SLAMPersonalizeHydra", COERCE_DOUBLE(0x480000004));
  }

  sub_10001449C();

  v17 = objc_opt_new();
  sub_1003ABAF0(v17, @"A000000909ACCE5501");
  v18 = [@"80CA00EF" hexStringAsData];
  sub_100014404(v18);
  if (v17)
  {
    sub_100014450("SLAMPersonalizeLyon", COERCE_DOUBLE(0x280000002));
  }

  sub_10001449C();

  v19 = sub_100015BF4(a1, 0);
  v20 = objc_opt_new();
  sub_1003ABAF0(v20, @"A000000704E000000000");
  v21 = [@"80CA00EC" hexStringAsData];
  sub_1003ABB00(v20, v21);

  if (v20)
  {
    v22 = "SLAMPersonalizeSunsprite_1_X_Internal";
    if (v19 == 2)
    {
      v22 = "SLAMPersonalizeSunsprite_Internal";
    }

    v20[1] = vbsl_s8(vcltz_s32(vshl_n_s32(vdup_n_s32(v19 == 2), 0x1FuLL)), 0x6C0000006, 0x4C0000003);
    v23 = "SLAMPersonalizeSunsprite";
    if (v19 != 2)
    {
      v23 = "SLAMPersonalizeSunsprite_1_X";
    }

    v20[5] = v23;
    v20[6] = v23;
    if (v19 == 2)
    {
      v24 = -2147483642;
    }

    else
    {
      v24 = -2147483644;
    }

    v20[2].i32[0] = v24;
    v20[7] = v22;
  }

  [v10 addObject:v20];

  v26 = sub_1003AF3C4(a1, v25);
  v73 = [v26 isProd];

  v72 = [v4 isProduction];
  v78 = 0u;
  v79 = 0u;
  v80 = 0u;
  v81 = 0u;
  v6 = v10;
  v27 = [v6 countByEnumeratingWithState:&v78 objects:v85 count:16];
  if (!v27)
  {
    v7 = 0;
    goto LABEL_106;
  }

  v28 = v27;
  v69 = v5;
  v70 = v4;
  v29 = *v79;
  v74 = v6;
LABEL_32:
  v30 = 0;
  while (1)
  {
    if (*v79 != v29)
    {
      objc_enumerationMutation(v6);
    }

    v31 = *(*(&v78 + 1) + 8 * v30);
    v32 = SESDefaultLogObject();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
    {
      if (v31)
      {
        v33 = *(v31 + 24);
      }

      v34 = sub_1000143EC();
      _os_log_impl(v34, v32, OS_LOG_TYPE_INFO, "Personalizing %@", v35, 0xCu);
    }

    v36 = v31 ? *(v31 + 24) : 0;
    v37 = [v36 hexStringAsData];
    v38 = sub_1003AF34C(a1, v37);

    if (v38)
    {
      break;
    }

    v39 = SESDefaultLogObject();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
    {
      if (v31)
      {
        v40 = *(v31 + 24);
      }

      v41 = sub_1000143EC();
      v43 = v39;
      v44 = "%@ not present; skipping personalization";
LABEL_46:
      _os_log_impl(v41, v43, OS_LOG_TYPE_INFO, v44, v42, 0xCu);
    }

LABEL_47:

    if (v28 == ++v30)
    {
      v68 = [v6 countByEnumeratingWithState:&v78 objects:v85 count:16];
      v28 = v68;
      if (!v68)
      {
        v7 = 0;
        goto LABEL_104;
      }

      goto LABEL_32;
    }
  }

  if (v31)
  {
    v45 = *(v31 + 24);
  }

  else
  {
    v45 = 0;
  }

  v46 = v45;
  v47 = [v46 hexStringAsData];
  if (v31)
  {
    v48 = *(v31 + 32);
  }

  else
  {
    v48 = 0;
  }

  v77 = 0;
  v49 = v48;
  v50 = sub_1003ABB10(a1, v47, v49, &v77);
  v39 = v77;

  if (v39)
  {
    v51 = SESDefaultLogObject();
    v6 = v74;
    if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
    {
      if (v31)
      {
        v52 = *(v31 + 24);
      }

      else
      {
        v52 = 0;
      }

      *buf = 138412546;
      *v83 = v52;
      *&v83[8] = 2112;
      v84 = v39;
      _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_ERROR, "Failed to retrieve perso ID for %@ %@", buf, 0x16u);
    }

    goto LABEL_47;
  }

  if (v73)
  {
    if (v72)
    {
      if (!v31)
      {
        goto LABEL_94;
      }

LABEL_68:
      v53 = 12;
      v54 = 48;
      goto LABEL_69;
    }

    if (v31)
    {
      v75 = *(v31 + 16);
      if (v75)
      {
        v54 = 56;
        v55 = @"/usr/local/SLAM/SLAMInternal.sefw";
LABEL_70:
        v56 = *(v31 + v54);
        goto LABEL_71;
      }

      goto LABEL_68;
    }
  }

  else if (v31)
  {
    v53 = 8;
    v54 = 40;
LABEL_69:
    v55 = 0;
    v75 = *(v31 + v53);
    goto LABEL_70;
  }

LABEL_94:
  v55 = 0;
  v75 = 0;
  v56 = 0;
LABEL_71:
  v57 = SESDefaultLogObject();
  if (os_log_type_enabled(v57, OS_LOG_TYPE_INFO))
  {
    *buf = 67109376;
    *v83 = v50;
    *&v83[4] = 1024;
    *&v83[6] = v75;
    _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_INFO, "Current perso ID 0x%08X target perso ID 0x%08X", buf, 0xEu);
  }

  if (v50 == v75)
  {
    v39 = SESDefaultLogObject();
    v6 = v74;
    if (!os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
    {
      goto LABEL_47;
    }

    if (v31)
    {
      v58 = *(v31 + 24);
    }

    v41 = sub_1000143EC();
    v43 = v39;
    v44 = "%@ configuration is up-to-date";
    goto LABEL_46;
  }

  v59 = sub_100013548(a1, v56, v55);
  v6 = v74;
  if (!v59)
  {
    if (v31)
    {
      v60 = *(v31 + 24);
    }

    else
    {
      v60 = 0;
    }

    v71 = v60;
    v61 = [v71 hexStringAsData];
    if (v31)
    {
      v62 = *(v31 + 32);
    }

    else
    {
      v62 = 0;
    }

    v76 = 0;
    v63 = v62;
    v64 = sub_1003ABB10(a1, v61, v63, &v76);
    v39 = v76;

    v65 = SESDefaultLogObject();
    v66 = v65;
    if (v64 != v75)
    {
      goto LABEL_103;
    }

    if (os_log_type_enabled(v65, OS_LOG_TYPE_INFO))
    {
      if (v31)
      {
        v67 = *(v31 + 24);
      }

      else
      {
        v67 = 0;
      }

      *buf = 138412546;
      *v83 = v67;
      *&v83[8] = 1024;
      LODWORD(v84) = v75;
      _os_log_impl(&_mh_execute_header, v66, OS_LOG_TYPE_INFO, "%@ configuration updated to ID 0x%08X", buf, 0x12u);
    }

    goto LABEL_47;
  }

  v39 = v59;
  v66 = SESDefaultLogObject();
LABEL_103:
  v7 = SESCreateAndLogError();

LABEL_104:
  v5 = v69;
  v4 = v70;
LABEL_106:

LABEL_8:
LABEL_10:

  return v7;
}

void sub_1003ABAF0(uint64_t a1, void *a2)
{
  if (a1)
  {
    objc_storeStrong((a1 + 24), a2);
  }
}

void sub_1003ABB00(uint64_t a1, void *a2)
{
  if (a1)
  {
    objc_storeStrong((a1 + 32), a2);
  }
}

id sub_1003ABB10(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = v8;
  if (a1)
  {
    if (v7 && v8)
    {
      v10 = sub_1003AF1FC(a1, v7);
      if (v10)
      {
        v11 = v10;
        if (a4)
        {
          v12 = v10;
          v13 = 0;
          *a4 = v11;
        }

        else
        {
          v13 = 0;
        }

        goto LABEL_20;
      }

      v25 = 0;
      v15 = sub_1003AEB5C(a1, v9, &v25);
      v16 = v25;
      v11 = v16;
      if (v16)
      {
        if (a4)
        {
          v17 = v16;
          v13 = 0;
          *a4 = v11;
LABEL_19:

LABEL_20:
          goto LABEL_21;
        }
      }

      else
      {
        v18 = sub_1003B0934(v15);
        v19 = [v18 length];

        if (v19 > 3)
        {
          v22 = sub_1003B0934(v15);
          v13 = [v22 u32BE:0];

          goto LABEL_19;
        }

        if (a4)
        {
          v20 = SESDefaultLogObject();
          v21 = sub_1003B0934(v15);
          v24 = [v21 asHexString];
          *a4 = SESCreateAndLogError();
        }
      }

      v13 = 0;
      goto LABEL_19;
    }

    if (a4)
    {
      v14 = SESDefaultLogObject();
      *a4 = SESCreateAndLogError();
    }
  }

  v13 = 0;
LABEL_21:

  return v13;
}

void sub_1003ABD28(uint64_t a1, void *a2)
{
  Property = a2;
  v6 = Property;
  if (Property)
  {
    Property = objc_getProperty(Property, v5, 16, 1);
  }

  if ([Property containsObject:*(a1 + 32)])
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  }
}

void sub_1003ABDE8(char a1, uint64_t a2, uint64_t *a3)
{
  v6 = SESDefaultLogObject();
  if (a1)
  {
    v7 = 0;
  }

  else
  {
    v7 = *(a2 + 16);
  }

  v8 = v7;
  v9 = [v8 hexStringAsData];
  *a3 = SESCreateAndLogError();
}

void sub_1003ABE98(void *a1, void *a2, uint64_t *a3)
{
  v6 = SESDefaultLogObject();
  *a3 = SESCreateAndLogError();
}

void sub_1003ABF0C(uint64_t *a1)
{
  v2 = SESDefaultLogObject();
  *a1 = SESCreateAndLogError();
}

id sub_1003ABF80(dispatch_queue_t *a1)
{
  v1 = a1;
  if (a1)
  {
    dispatch_assert_queue_V2(a1[4]);
    if (*(v1 + 16))
    {
      v1 = 0;
    }

    else
    {
      v2 = [NSURL URLWithString:@"/System/Library/SESStorage/SESModel.momd"];
      v3 = [[NSManagedObjectModel alloc] initWithContentsOfURL:v2];
      if (v3)
      {
        v4 = +[NSFileManager defaultManager];
        v5 = *(v1 + 8);
        v32 = 0;
        [v4 createDirectoryAtPath:v5 withIntermediateDirectories:1 attributes:0 error:&v32];
        v6 = v32;

        if (v6)
        {
          v7 = SESDefaultLogObject();
          v28 = *(v1 + 8);
          v1 = SESCreateAndLogError();
        }

        else
        {
          v7 = [*(v1 + 8) stringByAppendingPathComponent:@"SESStorageV001.sqlite"];
          v9 = [NSURL fileURLWithPath:v7];
          v10 = +[NSFileManager defaultManager];
          v11 = [v10 fileExistsAtPath:v7];

          v12 = +[NSFileManager defaultManager];
          v13 = [v12 isReadableFileAtPath:v7];

          v14 = +[NSFileManager defaultManager];
          v15 = [v14 isWritableFileAtPath:v7];

          v16 = MKBDeviceUnlockedSinceBoot();
          v17 = SESDefaultLogObject();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
          {
            *buf = 138413314;
            v36 = v9;
            v37 = 1024;
            v38 = v11;
            v39 = 1024;
            v40 = v13;
            v41 = 1024;
            v42 = v15;
            v43 = 1024;
            v44 = v16;
            _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "SESStorage URL: %@ exists %d R_OK %d W_OK %d USB %d", buf, 0x24u);
          }

          v18 = [[NSPersistentStoreCoordinator alloc] initWithManagedObjectModel:v3];
          if (v18)
          {
            v33[0] = NSMigratePersistentStoresAutomaticallyOption;
            v33[1] = NSInferMappingModelAutomaticallyOption;
            v34[0] = &__kCFBooleanTrue;
            v34[1] = &__kCFBooleanTrue;
            v19 = [NSDictionary dictionaryWithObjects:v34 forKeys:v33 count:2];
            v31 = 0;
            v20 = [v18 addPersistentStoreWithType:NSSQLiteStoreType configuration:0 URL:v9 options:v19 error:&v31];
            v21 = v31;
            v6 = v21;
            if (!v20 || v21)
            {
              v26 = SESDefaultLogObject();
              v1 = SESCreateAndLogError();
            }

            else
            {
              v22 = [[NSManagedObjectContext alloc] initWithConcurrencyType:1];
              v23 = *(v1 + 16);
              *(v1 + 16) = v22;

              [*(v1 + 16) setPersistentStoreCoordinator:v18];
              objc_initWeak(buf, v1);
              v24 = dispatch_time(0, 15000000000);
              v25 = *(v1 + 32);
              block[0] = _NSConcreteStackBlock;
              block[1] = 3221225472;
              block[2] = sub_100016228;
              block[3] = &unk_1004C1538;
              objc_copyWeak(&v30, buf);
              dispatch_after(v24, v25, block);
              objc_destroyWeak(&v30);
              objc_destroyWeak(buf);
              v1 = 0;
            }
          }

          else
          {
            v19 = SESDefaultLogObject();
            v1 = SESCreateAndLogError();
            v6 = 0;
          }
        }
      }

      else
      {
        v8 = SESDefaultLogObject();
        v1 = SESCreateAndLogError();
      }
    }
  }

  return v1;
}

dispatch_queue_t *sub_1003AC44C(dispatch_queue_t *a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    dispatch_assert_queue_V2(a1[4]);
    if (a1[2])
    {
      v37 = objc_opt_new();
      v44 = 0u;
      v45 = 0u;
      v46 = 0u;
      v47 = 0u;
      v34 = v3;
      obj = sub_10003C954(SESEndpointDatabase, v3, 0);
      v4 = [obj countByEnumeratingWithState:&v44 objects:v51 count:16];
      if (!v4)
      {
        v6 = 0;
        goto LABEL_23;
      }

      v5 = v4;
      v6 = 0;
      v7 = 0;
      v8 = *v45;
      while (1)
      {
        v9 = 0;
        do
        {
          if (*v45 != v8)
          {
            objc_enumerationMutation(obj);
          }

          v10 = *(*(&v44 + 1) + 8 * v9);
          v43 = v6;
          v11 = sub_10003CCA4(SESEndpointDatabase, v10, &v43);
          v12 = v43;

          v13 = [v10 identifier];
          if (v13)
          {
            v14 = [v10 identifier];
          }

          else
          {
            v14 = [NSString stringWithFormat:@"<revoked in consolidation>-%u", v7];
            v7 = (v7 + 1);
          }

          v6 = v12;

          if (v11)
          {
            v15 = [v11 dumpState];
LABEL_15:
            v16 = v15;
            goto LABEL_16;
          }

          if (v12)
          {
            v15 = [v12 description];
            goto LABEL_15;
          }

          v16 = @"Unknown error";
LABEL_16:
          [v37 setObject:v16 forKeyedSubscript:v14];

          v9 = v9 + 1;
        }

        while (v5 != v9);
        v17 = [obj countByEnumeratingWithState:&v44 objects:v51 count:16];
        v5 = v17;
        if (!v17)
        {
LABEL_23:

          v18 = objc_opt_new();
          v39 = 0u;
          v40 = 0u;
          v41 = 0u;
          v42 = 0u;
          obja = sub_100043148(SESEndpointDatabase, v34, 0);
          v19 = [obja countByEnumeratingWithState:&v39 objects:v50 count:16];
          if (!v19)
          {
            goto LABEL_40;
          }

          v20 = v19;
          v21 = 0;
          v22 = *v40;
          while (1)
          {
            v23 = 0;
            do
            {
              if (*v40 != v22)
              {
                objc_enumerationMutation(obja);
              }

              v24 = *(*(&v39 + 1) + 8 * v23);
              v38 = v6;
              v25 = sub_1000433C4(SESEndpointDatabase, v24, &v38);
              v26 = v38;

              v27 = [v24 identifier];
              if (v27)
              {
                v28 = [v24 identifier];
              }

              else
              {
                v28 = [NSString stringWithFormat:@"<revoked in consolidation>-%u", v21];
                v21 = (v21 + 1);
              }

              v6 = v26;

              if (v25)
              {
                v29 = [v25 dumpState];
LABEL_35:
                v30 = v29;
                goto LABEL_36;
              }

              if (v26)
              {
                v29 = [v26 description];
                goto LABEL_35;
              }

              v30 = @"Unknown error";
LABEL_36:
              [v18 setObject:v30 forKeyedSubscript:v28];

              v23 = v23 + 1;
            }

            while (v20 != v23);
            v31 = [obja countByEnumeratingWithState:&v39 objects:v50 count:16];
            v20 = v31;
            if (!v31)
            {
LABEL_40:

              v48[0] = @"EndPoints";
              v48[1] = @"EndPointCAs";
              v49[0] = v37;
              v49[1] = v18;
              v32 = [NSDictionary dictionaryWithObjects:v49 forKeys:v48 count:2];
              a1 = sub_100015DA0("database.state", v32);

              v3 = v34;
              goto LABEL_41;
            }
          }
        }
      }
    }

    a1 = 0;
  }

LABEL_41:

  return a1;
}

void sub_1003AC878(uint64_t a1)
{
  if (a1)
  {
    dispatch_assert_queue_V2(*(a1 + 32));
    if (*(a1 + 16))
    {
      v2 = SESDefaultLogObject();
      if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Uninitializing database", buf, 2u);
      }

      if ([*(a1 + 16) hasChanges])
      {
        v3 = SESDefaultLogObject();
        if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
        {
          *v5 = 0;
          _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_FAULT, "Uninitializing but leaked changes?", v5, 2u);
        }

        [*(a1 + 16) save:0];
      }

      v4 = *(a1 + 16);
      *(a1 + 16) = 0;
    }
  }
}

id sub_1003AC964(uint64_t a1, void *a2, int a3)
{
  v5 = a2;
  if (!a1)
  {
    goto LABEL_7;
  }

  dispatch_assert_queue_V2(*(a1 + 32));
  v6 = sub_1003ABF80(a1);
  if (v6)
  {
    v7 = v6;
    goto LABEL_14;
  }

  if (!a3)
  {
    if ((*(a1 + 25) & 1) == 0)
    {
      goto LABEL_8;
    }

LABEL_7:
    v7 = 0;
    goto LABEL_14;
  }

  *(a1 + 25) = 0;
LABEL_8:
  v8 = SESDefaultLogObject();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v12[0] = 67109120;
    v12[1] = a3;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Begin reconciling DB (forced %d)", v12, 8u);
  }

  v9 = sub_100035DF4(SESDatabaseReadHandle, a1);
  v7 = sub_100059F40(SESEndpointDatabase, v9, v5);

  if (!v7)
  {
    v10 = SESDefaultLogObject();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      LOWORD(v12[0]) = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "DB successfully reconciled", v12, 2u);
    }

    v7 = 0;
    *(a1 + 25) = 1;
  }

LABEL_14:

  return v7;
}

void sub_1003ACB0C(uint64_t a1)
{
  v2 = SESDefaultLogObject();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    LOWORD(buf) = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Processing MFD notification", &buf, 2u);
  }

  v3 = sub_1003ABF80(*(a1 + 32));
  if (v3)
  {
    v4 = SESDefaultLogObject();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "Failed to initialize the DB context %@", &buf, 0xCu);
    }
  }

  else
  {
    *&buf = 0;
    *(&buf + 1) = &buf;
    v15 = 0x3032000000;
    v16 = sub_100016394;
    v17 = sub_1000163A4;
    v18 = 0;
    v5 = sub_100035DF4(SESDatabaseReadHandle, *(a1 + 32));
    v11 = 0;
    v6 = sub_100043148(SESEndpointDatabase, v5, &v11);
    v3 = v11;
    v7 = *(*(&buf + 1) + 40);
    *(*(&buf + 1) + 40) = v6;

    if (v3 || (v9 = *(*(&buf + 1) + 40)) == 0)
    {
      v8 = SESDefaultLogObject();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *v12 = 138412290;
        v13 = v3;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Failed to list CA entities %@", v12, 0xCu);
      }
    }

    else
    {
      if ([v9 count])
      {
        v10[0] = _NSConcreteStackBlock;
        v10[1] = 3221225472;
        v10[2] = sub_1000163AC;
        v10[3] = &unk_1004C1560;
        v10[4] = *(a1 + 32);
        v10[5] = &buf;
        sub_1003AD2A8(v5, v10);
      }

      *(*(a1 + 32) + 25) = 0;
    }

    _Block_object_dispose(&buf, 8);
  }
}

void sub_1003ACD90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1003ACDB4(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  if (a1)
  {
    v6 = *(a1 + 32);
    v7 = a2;
    dispatch_assert_queue_V2(v6);
    v8 = sub_1003AC964(a1, v7, 0);

    if (v8)
    {
      v9 = sub_1000167DC();
      v10(v9);
    }

    else
    {
      v11 = *(a1 + 16);
      sub_1000167BC();
      v12[1] = 3221225472;
      v12[2] = sub_100016694;
      v12[3] = &unk_1004C1138;
      v12[4] = a1;
      v13 = v5;
      [v11 performBlockAndWait:v12];
    }
  }
}

void sub_1003ACE94(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    dispatch_assert_queue_V2(*(a1 + 32));
    v4 = sub_1003ABF80(a1);
    if (v4)
    {
      v5 = sub_1000167DC();
      v6(v5);
    }

    else
    {
      v7 = *(a1 + 16);
      sub_1000167BC();
      v8[1] = 3221225472;
      v8[2] = sub_100016700;
      v8[3] = &unk_1004C1138;
      v8[4] = a1;
      v9 = v3;
      [v7 performBlockAndWait:v8];
    }
  }
}

uint64_t sub_1003ACF50(uint64_t a1)
{
  if (a1)
  {
    v1 = *(a1 + 25);
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

uint64_t sub_1003ACF68(uint64_t result)
{
  if (result)
  {
    return *(result + 32);
  }

  return result;
}

void sub_1003ACF74(NSObject *a1, id *a2, id *a3)
{
  if (os_log_type_enabled(a1, OS_LOG_TYPE_DEBUG))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, a1, OS_LOG_TYPE_DEBUG, "SESDatabase registered to receive os_state_handle notifications", v6, 2u);
  }

  objc_destroyWeak(a2);
  objc_destroyWeak(a3);
}

void sub_1003AD050(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = sub_1003AD1F4(*(a2 + 40), a2);
  v4 = 138412546;
  v5 = v2;
  v6 = 2112;
  v7 = v3;
  _os_log_fault_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_FAULT, "Selecting endpoint by name instead of PKID %@ client %@", &v4, 0x16u);
}

uint64_t sub_1003AD0FC(uint64_t result)
{
  if (result)
  {
    return *(result + 24);
  }

  return result;
}

id sub_1003AD108(uint64_t a1)
{
  if (a1)
  {
    if ([*(a1 + 24) hasChanges])
    {
      v2 = *(a1 + 24);
      v6 = 0;
      v3 = v2;
      [v3 save:&v6];
      v4 = v6;
    }

    else
    {
      v4 = 0;
    }

    *(a1 + 8) = 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

id *sub_1003AD19C(id *result)
{
  if (result)
  {
    v1 = result;
    result = [result[3] hasChanges];
    if (result)
    {
      result = [v1[3] rollback];
    }

    *(v1 + 2) = 3;
  }

  return result;
}

id sub_1003AD1F4(id result, const char *a2)
{
  if (result)
  {
    return objc_getProperty(result, a2, 24, 1);
  }

  return result;
}

uint64_t sub_1003AD208(uint64_t a1)
{
  if (a1)
  {
    return sub_100035C08(*(a1 + 9));
  }

  else
  {
    return sub_100035C08(0);
  }
}

uint64_t sub_1003AD21C(uint64_t a1)
{
  if (a1)
  {
    return sub_100035C08(*(a1 + 10));
  }

  else
  {
    return sub_100035C08(0);
  }
}

uint64_t sub_1003AD230(uint64_t a1)
{
  if (a1)
  {
    return sub_100035C08(*(a1 + 11));
  }

  else
  {
    return sub_100035C08(0);
  }
}

uint64_t sub_1003AD244(uint64_t a1)
{
  if (a1)
  {
    return sub_100035C08(*(a1 + 12));
  }

  else
  {
    return sub_100035C08(0);
  }
}

uint64_t sub_1003AD258(uint64_t a1)
{
  if (a1)
  {
    return sub_100035C08(*(a1 + 13));
  }

  else
  {
    return sub_100035C08(0);
  }
}

uint64_t sub_1003AD26C(uint64_t a1)
{
  if (a1)
  {
    return sub_100035C08(*(a1 + 14));
  }

  else
  {
    return sub_100035C08(0);
  }
}

uint64_t sub_1003AD280(uint64_t a1)
{
  if (a1)
  {
    return sub_100035C08(*(a1 + 15));
  }

  else
  {
    return sub_100035C08(0);
  }
}

uint64_t sub_1003AD294(uint64_t a1)
{
  if (a1)
  {
    return sub_100035C08(*(a1 + 16));
  }

  else
  {
    return sub_100035C08(0);
  }
}

void sub_1003AD2A8(void *a1, void *a2)
{
  if (a1)
  {
    v3 = a2;
    v4 = [a1 database];
    [v4 startTransaction:v3];
  }
}

id sub_1003AD310(uint64_t a1, void *a2, uint64_t a3)
{
  if (a1)
  {
    v4 = *(a1 + 8);
    v5 = a2;
    v6 = [v4 context];
    v7 = [v6 executeFetchRequest:v5 error:a3];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

id sub_1003AD390(void *a1)
{
  if (a1)
  {
    v1 = [a1 database];
    v2 = sub_1003ACF68(v1);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

void *sub_1003AD3E8(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (a1)
  {
    v16.receiver = a1;
    v16.super_class = SESEndpointAndKeyXPCServer;
    v6 = objc_msgSendSuper2(&v16, "initWithMachServiceName:", a2);
    v7 = v6;
    if (v6)
    {
      [v6 setDelegate:v6];
      v8 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v9 = dispatch_queue_attr_make_with_qos_class(v8, QOS_CLASS_DEFAULT, 0);

      v10 = dispatch_queue_create("com.apple.seserviced.messagequeue", v9);
      v11 = v7[2];
      v7[2] = v10;

      v12 = [v7 messageQueue];
      v13 = sub_100015E70(SESEndpointDatabase, v5, v12);
      v14 = v7[3];
      v7[3] = v13;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void sub_1003AD5EC(uint64_t a1)
{
  if (a1)
  {
    dispatch_assert_queue_V2(*(a1 + 8));
    v2 = SESDefaultLogObject();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "", buf, 2u);
    }

    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_100038190;
    v3[3] = &unk_1004C24D0;
    v3[4] = a1;
    sub_1003AF710(SecureElementManager, @"Check PTA lock state", v3);
  }
}

void sub_1003AD6D4(uint64_t a1, void *a2)
{
  if (a1)
  {
    v3 = *(a1 + 8);
    v4 = a2;
    dispatch_assert_queue_V2(v3);
    v5 = *(a1 + 32);
    v14 = 0;
    v6 = sub_10004B454(v4, v5, &v14);

    v7 = v14;
    v8 = SESDefaultLogObject();
    v9 = v8;
    if (v7)
    {
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        *v16 = v7;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Failed to get PTA suspend status : %@", buf, 0xCu);
      }

      *(a1 + 24) = 4279897;
    }

    else
    {
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v11 = *(a1 + 16);
        v10 = *(a1 + 24);
        *buf = 67109634;
        *v16 = v6;
        *&v16[4] = 1024;
        *&v16[6] = v10;
        v17 = 2112;
        v18 = v11;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "New %d last %x delegate %@", buf, 0x18u);
      }

      if (*(a1 + 24) != v6)
      {
        *(a1 + 24) = v6;
        [*(a1 + 16) appletLockStateDidChange:v6];
        v12 = +[_TtC10seserviced20SESBootScopedStorage shared];
        v13 = [NSNumber numberWithBool:v6];
        [v12 setNumberFor:@"pta.lock.state" value:v13];
      }
    }
  }
}

id sub_1003AD8C8(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = v11;
  if (a1)
  {
    if (v10 && v9 && v11)
    {
      v13 = sub_1003AD0FC(a1);
      v14 = [NSEntityDescription insertNewObjectForEntityForName:@"SEEndPointCAEntity" inManagedObjectContext:v13];

      [v14 setIdentifier:v9];
      [v14 setClientName:v12];
      [v14 setInstance:v10];
      if ([v14 validateForInsert:a5])
      {
        v14 = v14;
        v15 = v14;
      }

      else
      {
        v15 = 0;
      }

      goto LABEL_10;
    }

    if (a5)
    {
      v14 = SESDefaultLogObject();
      SESCreateAndLogError();
      *a5 = v15 = 0;
LABEL_10:

      goto LABEL_11;
    }
  }

  v15 = 0;
LABEL_11:

  return v15;
}

void sub_1003ADA28(NSObject *a1)
{
  if (os_signpost_enabled(a1))
  {
    sub_10004C8F4(&_mh_execute_header, v1, v2, v3, "PTA_CREATE_ENDPOINT", "", v4, v5, 0);
  }
}

void sub_1003ADA78(NSObject *a1)
{
  if (os_signpost_enabled(a1))
  {
    sub_10004C8F4(&_mh_execute_header, v1, v2, v3, "PTA_DELETE_ENDPOINT", "", v4, v5, 0);
  }
}

void sub_1003ADAC8(NSObject *a1)
{
  if (os_signpost_enabled(a1))
  {
    sub_10004C8F4(&_mh_execute_header, v1, v2, v3, "PTA_CREATE_ENDPOINTCA", "", v4, v5, 0);
  }
}

void sub_1003ADB18(NSObject *a1)
{
  if (os_signpost_enabled(a1))
  {
    sub_10004C8F4(&_mh_execute_header, v1, v2, v3, "PTA_DELETE_ENDPOINTCA", "", v4, v5, 0);
  }
}

void sub_1003ADB68(uint64_t a1, void *a2)
{
  if (a1)
  {
    objc_storeStrong((a1 + 40), a2);
  }
}

void sub_1003ADB78(id a1)
{
  v1 = objc_opt_new();
  v2 = qword_10050CCC0;
  qword_10050CCC0 = v1;

  v3 = objc_opt_new();
  sub_1003ADC20(qword_10050CCC0, v3);

  v5 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.seserviced"];
  v4 = [v5 integerForKey:@"ca.general.transaction.statistics.device.state"];
  if (qword_10050CCC0)
  {
    *(qword_10050CCC0 + 16) = v4;
  }
}

void sub_1003ADC20(uint64_t a1, void *a2)
{
  if (a1)
  {
    objc_storeStrong((a1 + 8), a2);
  }
}

void sub_1003ADC30(uint64_t a1, void *a2)
{
  v5 = a2;
  objc_opt_self();
  v2 = sub_10004C9FC();
  objc_sync_enter(v2);
  if (v2)
  {
    v3 = v2[1];
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  [v4 removeObjectForKey:v5];

  objc_sync_exit(v2);
}

void sub_1003ADCE0(uint64_t a1, unsigned int a2, void *a3)
{
  v5 = a3;
  sub_10004F818();
  objc_opt_self();
  v6 = sub_10004C9FC();
  objc_sync_enter(v6);
  if (v6)
  {
    v7 = v6[1];
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  v9 = [v8 objectForKeyedSubscript:v3];

  if (v9)
  {
    v10 = v9[3];
    if (v10 >= a2)
    {
      if (v10 == 3)
      {
        if (!v9[5])
        {
          goto LABEL_14;
        }

        goto LABEL_13;
      }

      if (v10 != 2)
      {
        if (v10 != -1)
        {
          goto LABEL_14;
        }

        goto LABEL_13;
      }

      if (v9[6])
      {
LABEL_13:
        v9[3] = a2;
      }
    }
  }

  else
  {
    v11 = SESDefaultLogObject();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_10004F824(&_mh_execute_header, v12, v13, "Couldn't find peer", v14, v15, v16, v17, 0);
    }
  }

LABEL_14:

  objc_sync_exit(v6);
}

void sub_1003ADE04()
{
  v1 = sub_10004F818();
  objc_sync_exit(v1);
  _Unwind_Resume(v0);
}

void sub_1003ADE18(uint64_t a1, int a2, id a3, void *a4)
{
  v7 = a4;
  sub_10004F818();
  objc_opt_self();
  v8 = sub_10004C9FC();
  objc_sync_enter(v8);
  if (v8)
  {
    v9 = v8[1];
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;
  v11 = [v10 objectForKeyedSubscript:v4];

  if (!v11)
  {
    v17 = SESDefaultLogObject();
    if (sub_10004F844(v17))
    {
      sub_10004F7F8(&_mh_execute_header, v18, v19, "Couldn't find peer", v20, v21, v22, v23, 0);
    }

    goto LABEL_11;
  }

  if (*(v11 + 12) == -1)
  {
    if (a2)
    {
      v12 = *(v11 + 40);
      v13 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v12 unsignedIntValue] | 1);
      v14 = *(v11 + 40);
      *(v11 + 40) = v13;
    }

    if (a3)
    {
      a3 = *(v11 + 40);
      v15 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [a3 unsignedIntValue] | 2);
      v16 = *(v11 + 40);
      *(v11 + 40) = v15;

LABEL_11:
    }
  }

  objc_sync_exit(v8);
}

void sub_1003ADF7C()
{
  v1 = sub_10004F818();
  objc_sync_exit(v1);
  _Unwind_Resume(v0);
}

void sub_1003ADF90(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  objc_opt_self();
  v7 = sub_10004C9FC();
  objc_sync_enter(v7);
  if (v7)
  {
    v8 = v7[1];
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;
  v10 = [v9 objectForKeyedSubscript:v6];

  if (v10)
  {
    if (*(v10 + 12) == -1)
    {
      v11 = *(v10 + 40);
      *(v10 + 40) = 0;

      objc_storeStrong((v10 + 32), a2);
    }
  }

  else
  {
    v12 = SESDefaultLogObject();
    if (sub_10004F844(v12))
    {
      sub_10004F7F8(&_mh_execute_header, v13, v14, "Couldn't find peer", v15, v16, v17, v18, 0);
    }
  }

  objc_sync_exit(v7);
}

void sub_1003AE0BC(uint64_t a1, void *a2)
{
  v3 = a2;
  sub_10004F818();
  objc_opt_self();
  v4 = sub_10004C9FC();
  objc_sync_enter(v4);
  if (v4)
  {
    v5 = v4[1];
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  v7 = [v6 objectForKeyedSubscript:v2];

  if (v7)
  {
    v7[9] = 1;
  }

  else
  {
    v8 = SESDefaultLogObject();
    if (sub_10004F844(v8))
    {
      sub_10004F7F8(&_mh_execute_header, v9, v10, "Couldn't find peer", v11, v12, v13, v14, 0);
    }
  }

  objc_sync_exit(v4);
}

void sub_1003AE194()
{
  v1 = sub_10004F818();
  objc_sync_exit(v1);
  _Unwind_Resume(v0);
}

uint64_t sub_1003AE1A8(uint64_t a1, void *a2)
{
  v3 = a2;
  sub_10004F818();
  objc_opt_self();
  v4 = sub_10004C9FC();
  objc_sync_enter(v4);
  if (v4)
  {
    v5 = v4[1];
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  v7 = [v6 objectForKeyedSubscript:v2];

  if (v7)
  {
    v8 = v7[4];
  }

  else
  {
    v9 = SESDefaultLogObject();
    if (sub_10004F844(v9))
    {
      sub_10004F7F8(&_mh_execute_header, v10, v11, "Couldn't find peer", v12, v13, v14, v15, 0);
    }

    v8 = 0xFFFFFFFFLL;
  }

  objc_sync_exit(v4);
  return v8;
}

void sub_1003AE284()
{
  v1 = sub_10004F818();
  objc_sync_exit(v1);
  _Unwind_Resume(v0);
}

void sub_1003AE298(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  sub_10004F818();
  objc_opt_self();
  v6 = sub_10004C9FC();
  objc_sync_enter(v6);
  if (v6)
  {
    v7 = v6[1];
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  v9 = [v8 objectForKeyedSubscript:v3];

  if (v9)
  {
    v9[4] = a2;
  }

  else
  {
    v10 = SESDefaultLogObject();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_10004F824(&_mh_execute_header, v11, v12, "Couldn't find peer", v13, v14, v15, v16, 0);
    }
  }

  objc_sync_exit(v6);
}

void sub_1003AE380()
{
  v1 = sub_10004F818();
  objc_sync_exit(v1);
  _Unwind_Resume(v0);
}

void sub_1003AE394(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  objc_opt_self();
  v6 = sub_10004C9FC();
  objc_sync_enter(v6);
  if (v6)
  {
    v7 = v6[1];
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  v9 = [v8 objectForKeyedSubscript:v5];

  if (!v9)
  {
    v12 = SESDefaultLogObject();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Couldn't find peer", v13, 2u);
    }

    goto LABEL_10;
  }

  if (v9[8] == 1)
  {
    v9[8] = 0;
    v10 = [v4 getEndpointUser];
    v11 = @"friendDrivingSessionCount";
    if (!v10)
    {
      v11 = @"ownerDrivingSessionCount";
    }

    v12 = v11;
    sub_10004D584(SESDAnalyticsLogger, v12);
LABEL_10:
  }

  objc_sync_exit(v6);
}

NSObject **sub_1003AE50C(NSObject **a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    v13.receiver = a1;
    v13.super_class = SESTimer;
    a1 = objc_msgSendSuper2(&v13, "init");
    if (a1)
    {
      v7 = dispatch_source_create(&_dispatch_source_type_timer, 1uLL, 0, v5);
      v8 = a1[1];
      a1[1] = v7;

      v9 = a1[1];
      handler[0] = _NSConcreteStackBlock;
      handler[1] = 3221225472;
      handler[2] = sub_10005037C;
      handler[3] = &unk_1004C1188;
      v12 = v6;
      dispatch_source_set_event_handler(v9, handler);
      dispatch_activate(a1[1]);
      *(a1 + 16) = 0;
    }
  }

  return a1;
}

void sub_1003AE618(uint64_t a1, double a2)
{
  if (a1)
  {
    v2 = 0.001;
    if (a2 / 10.0 >= 0.001)
    {
      v2 = a2 / 10.0;
    }

    if (a2 / 10.0 <= 60.0)
    {
      v3 = v2;
    }

    else
    {
      v3 = 60.0;
    }

    sub_1003AE64C(a1, a2, v3);
  }
}

void sub_1003AE64C(uint64_t a1, double a2, double a3)
{
  if (a1)
  {
    *(a1 + 16) = 1;
    v4 = *(a1 + 8);
    v5 = (a2 * 1000000000.0);
    v6 = dispatch_time(0, v5);
    dispatch_source_set_timer(v4, v6, 0xFFFFFFFFFFFFFFFFLL, (a3 * 1000000000.0));
    v7 = SESDefaultLogObject();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = 134218240;
      v9 = v5;
      v10 = 2048;
      v11 = (a3 * 1000000000.0);
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Timer set for interval %lld -- leeway %llu", &v8, 0x16u);
    }
  }
}

void sub_1003AE754(uint64_t a1)
{
  if (a1)
  {
    *(a1 + 16) = 0;
    dispatch_source_set_timer(*(a1 + 8), 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0);
    v1 = SESDefaultLogObject();
    if (os_log_type_enabled(v1, OS_LOG_TYPE_INFO))
    {
      *v2 = 0;
      _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_INFO, "Timer cancelled", v2, 2u);
    }
  }
}

uint64_t sub_1003AE7DC(uint64_t a1)
{
  if (a1)
  {
    v1 = *(a1 + 16);
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

void *sub_1003AE808(void *a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v7.receiver = a1;
    v7.super_class = SEProxyAdapter;
    a1 = objc_msgSendSuper2(&v7, "init");
    if (a1)
    {
      v4 = [v3 synchronousRemoteObjectProxyWithErrorHandler:&stru_1004C2AB0];
      v5 = a1[1];
      a1[1] = v4;
    }
  }

  return a1;
}

id *sub_1003AE888(id *a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  if (a1)
  {
    v16.receiver = a1;
    v16.super_class = SecureElement;
    v8 = objc_msgSendSuper2(&v16, "init");
    a1 = v8;
    if (v8)
    {
      objc_storeStrong(v8 + 3, a2);
      *(a1 + 32) = [v6 conformsToProtocol:&OBJC_PROTOCOL___BackedByNFSession];
      objc_storeStrong(a1 + 6, a3);
      v9 = +[SecureElementManager getInstance];
      v10 = [v9 getNFManager];
      v11 = [v10 secureElementInfo];
      v12 = a1[5];
      a1[5] = v11;

      if (!a1[5])
      {
        v13 = SESDefaultLogObject();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          v15[0] = 0;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Refusing to initialize SE because NFManager has no info", v15, 2u);
        }

        a1 = 0;
      }
    }
  }

  return a1;
}

id sub_1003AE9C8(void *a1, uint64_t a2, void *a3)
{
  if (a1)
  {
    v9 = 0;
    v4 = [a1 transceive:a2 error:&v9];
    v5 = v9;
    v6 = v5;
    if (!v4 || v5)
    {
      if (a3)
      {
        SESEnsureError();
        *a3 = v7 = 0;
      }

      else
      {
        v7 = 0;
      }
    }

    else
    {
      v7 = sub_1000596F0(RAPDU, v4, a3);
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

id sub_1003AEA90(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a1)
  {
    v10 = 0;
    v5 = [a1 transceive:a2 toOS:a3 error:&v10];
    v6 = v10;
    v7 = v6;
    if (!v5 || v6)
    {
      if (a4)
      {
        SESEnsureError();
        *a4 = v8 = 0;
      }

      else
      {
        v8 = 0;
      }
    }

    else
    {
      v8 = sub_1000596F0(RAPDU, v5, a4);
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

id sub_1003AEB5C(void *a1, void *a2, void *a3)
{
  v5 = a2;
  if (a1)
  {
    v16 = 0;
    v6 = [a1 transceive:v5 error:&v16];
    v7 = v16;
    v8 = v7;
    if (!v6 || v7)
    {
      if (!a3)
      {
        v11 = 0;
LABEL_17:

        goto LABEL_18;
      }

      v9 = SESDefaultLogObject();
      SESCreateAndLogError();
      *a3 = v11 = 0;
LABEL_16:

      goto LABEL_17;
    }

    v15 = 0;
    v9 = sub_1000596F0(RAPDU, v6, &v15);
    v8 = v15;
    if (v8)
    {
      if (!a3)
      {
LABEL_8:
        v11 = 0;
        goto LABEL_16;
      }

      v10 = SESDefaultLogObject();
      *a3 = SESCreateAndLogError();
    }

    else
    {
      if (sub_1003B0984(v9) == 36864 || (sub_1003B0984(v9) & 0xFF00) == 0x6300 || sub_1003B0984(v9) == 36865)
      {
        v9 = v9;
        v11 = v9;
        goto LABEL_16;
      }

      if (!a3)
      {
        goto LABEL_8;
      }

      v10 = SESDefaultLogObject();
      sub_1003B0984(v9);
      v13 = [v6 asHexString];
      v14 = [v5 asHexString];
      *a3 = SESCreateAndLogError();
    }

    goto LABEL_8;
  }

  v11 = 0;
LABEL_18:

  return v11;
}

id sub_1003AEDB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23)
{
  sub_100054288();
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v39 = v38;
  if (v36)
  {
    if ([v38 length] < 0x100)
    {
      if ([v39 length])
      {
        v44 = [v39 length] + 6;
      }

      else
      {
        v44 = 5;
      }

      v47 = v44;
      v40 = [NSMutableData dataWithLength:?];
      v45 = [v40 mutableBytes];
      *v45 = v34;
      v45[1] = v32;
      v45[2] = v30;
      v46 = v45;
      v45[3] = v28;
      if ([v39 length])
      {
        v46[4] = [v39 length];
        memcpy(v46 + 5, [v39 bytes], objc_msgSend(v39, "length"));
      }

      v46[v47 - 1] = v26;
      sub_1003AEA90(v36, v40, v24, a23);
      objc_claimAutoreleasedReturnValue();
    }

    else
    {
      if (!a23)
      {
        goto LABEL_6;
      }

      v40 = SESDefaultLogObject();
      [v39 length];
      *a23 = SESCreateAndLogError();
    }
  }

LABEL_6:

  sub_1000542A4();

  return v41;
}

id sub_1003AEF50()
{
  sub_100054288();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v16 = v15;
  if (v13)
  {
    if ([v15 length] < 0x100)
    {
      if ([v16 length])
      {
        v21 = [v16 length] + 6;
      }

      else
      {
        v21 = 5;
      }

      v23 = v21;
      v17 = [NSMutableData dataWithLength:?];
      v22 = [v17 mutableBytes];
      *v22 = v11;
      v22[1] = v9;
      v22[2] = v7;
      v22[3] = v5;
      if ([v16 length])
      {
        v22[4] = [v16 length];
        memcpy(v22 + 5, [v16 bytes], objc_msgSend(v16, "length"));
      }

      v22[v23 - 1] = v3;
      sub_1003AEB5C(v13, v17, v1);
      objc_claimAutoreleasedReturnValue();
    }

    else
    {
      if (!v1)
      {
        goto LABEL_6;
      }

      v17 = SESDefaultLogObject();
      [v16 length];
      *v1 = SESCreateAndLogError();
    }
  }

LABEL_6:

  sub_1000542A4();

  return v18;
}

id sub_1003AF0E8()
{
  sub_100054288();
  v21 = v7;
  if (v0)
  {
    v8 = v6;
    v9 = v4;
    v10 = v3;
    v11 = v2;
    v12 = v1;
    v13 = v0;
    v14 = v5;
    v15 = [v14 length];
    v16 = [NSMutableData dataWithLength:v15 + 9];
    v17 = [v16 mutableBytes];
    *v17 = v12;
    v17[1] = v11;
    v17[2] = v10;
    v17[3] = v9;
    *(v17 + 5) = bswap32([v14 length]) >> 16;
    memcpy(v17 + 7, [v14 bytes], objc_msgSend(v14, "length"));
    *&v17[v15 + 7] = __rev16(v8);

    sub_1003AEB5C(v13, v16, v21);
    objc_claimAutoreleasedReturnValue();
  }

  sub_1000542A4();

  return v18;
}

id sub_1003AF1FC(void *a1, void *a2)
{
  if (a1)
  {
    a1 = sub_10005370C(a1, a2, 0);
    v2 = vars8;
  }

  return a1;
}

id sub_1003AF230(id a1, void *a2, int a3, void *a4)
{
  v7 = a2;
  if (a1)
  {
    if (a3)
    {
      sub_1003AF2D8(a1);
    }

    v11 = 0;
    v8 = sub_10005370C(a1, v7, &v11);
    a1 = v11;
    if (a4)
    {
      v9 = v8;
      *a4 = v8;
    }
  }

  return a1;
}

id sub_1003AF2D8(id result)
{
  if (result)
  {
    v1[0] = _NSConcreteStackBlock;
    v1[1] = 3221225472;
    v1[2] = sub_100054184;
    v1[3] = &unk_1004C08D8;
    v1[4] = result;
    return [result sync:v1];
  }

  return result;
}

BOOL sub_1003AF34C(void *a1, void *a2)
{
  if (!a1)
  {
    return 0;
  }

  v7 = 0;
  v2 = sub_10005370C(a1, a2, &v7);
  v3 = v7;
  v4 = v3;
  if (v3)
  {
    v5 = sub_1003B0984(v3) != 27266;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

id sub_1003AF3C4(id result, const char *a2)
{
  if (result)
  {
    return objc_getProperty(result, a2, 40, 1);
  }

  return result;
}

uint64_t sub_1003AF3D8(uint64_t result)
{
  if (result)
  {
    return *(result + 48);
  }

  return result;
}

id sub_1003AF3E4(uint64_t a1)
{
  v4 = sub_100054238(a1);
  sub_100054274(v4, v5, v6);
  [v7 validatePairing:?];
  sub_100054258();
  *(*(*(v2 + 48) + 8) + 24) = v3;
  return sub_1003AF2D8(*v1);
}

void sub_1003AF434(uint64_t a1)
{
  v5 = SESDefaultLogObject();
  SESCreateAndLogError();
  objc_claimAutoreleasedReturnValue();
  sub_10005424C(*(a1 + 40));
  *(v3 + 40) = v2;
}

id sub_1003AF4B4(uint64_t a1)
{
  v4 = sub_100054238(a1);
  sub_100054274(v4, v5, v6);
  [v7 getUnderlyingNFSession:?];
  objc_claimAutoreleasedReturnValue();
  sub_100054258();
  sub_10005424C(*(v2 + 48));
  *(v8 + 40) = v3;

  return sub_1003AF2D8(*v1);
}

id sub_1003AF50C(uint64_t a1)
{
  v5 = sub_100054238(a1);
  v7 = *(v6 + 40);
  *v2 = *(*(*(v6 + 48) + 8) + 40);
  [v5 transceiveSensitive:v7 outError:v2];
  objc_claimAutoreleasedReturnValue();
  sub_100054258();
  sub_10005424C(*(v3 + 56));
  *(v8 + 40) = v4;

  return sub_1003AF2D8(*v1);
}

void sub_1003AF574(uint64_t a1)
{
  v5 = SESDefaultLogObject();
  SESCreateAndLogError();
  objc_claimAutoreleasedReturnValue();
  sub_10005424C(*(a1 + 48));
  *(v3 + 40) = v2;
}

void sub_1003AF5F4(uint64_t a1, void *a2, void *a3, void *a4)
{
  v6 = a2;
  v7 = a3;
  v8 = a4;
  objc_opt_self();
  v9 = +[SecureElementManager getInstance];
  v11 = v9;
  if (v9)
  {
    v12 = sub_100057AAC(v9, v10);
  }

  else
  {
    v12 = 0;
  }

  sub_1000167BC();
  v17[1] = 3221225472;
  v17[2] = sub_100055640;
  v17[3] = &unk_1004C09E0;
  v18 = v11;
  v19 = v6;
  v20 = v7;
  v21 = v8;
  v13 = v8;
  v14 = v7;
  v15 = v6;
  v16 = v11;
  dispatch_sync(v12, v17);
}

void sub_1003AF710(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  objc_opt_self();
  v6 = +[SecureElementManager getInstance];
  v8 = v6;
  if (v6)
  {
    v9 = sub_100057AAC(v6, v7);
  }

  else
  {
    v9 = 0;
  }

  sub_100057A60();
  sub_100057B28();
  v14 = sub_10005579C;
  v15 = &unk_1004C1258;
  v17 = v4;
  v18 = v5;
  v16 = v8;
  v10 = v4;
  v11 = v5;
  v12 = v8;
  dispatch_async(v9, block);
}

void sub_1003AF800(void *a1)
{
  v3 = [SecureElement alloc];
  v5 = a1[4];
  v4 = a1[5];
  if (v4)
  {
    v6 = sub_100057AAC(v4, v2);
  }

  else
  {
    v6 = 0;
  }

  v7 = sub_1003AE888(&v3->super.isa, v5, v6);
  if (v7)
  {
    v8 = sub_1000554DC();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = a1[6];
      sub_100057B1C();
      sub_100057B04(&_mh_execute_header, v8, v10, "Got SE (w/ transceiver) for %@", v22);
    }

    v11 = a1[7];
    v13 = [SecureElement alloc];
    v15 = a1[4];
    v14 = a1[5];
    if (v14)
    {
      v16 = sub_100057AAC(v14, v12);
    }

    else
    {
      v16 = 0;
    }

    v17 = sub_1003AE888(&v13->super.isa, v15, v16);
    (*(v11 + 16))(v11, v17, 0);
  }

  else
  {
    v18 = a1[7];
    v19 = sub_1000554DC();
    sub_100057AC4();
    SESCreateAndLogError();
    objc_claimAutoreleasedReturnValue();
    v20 = sub_100057A80();
    v21(v20);
  }
}

void sub_1003AF984(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_self();
  v3 = +[SecureElementManager getInstance];
  v5 = v3;
  if (v3)
  {
    v6 = sub_100057AAC(v3, v4);
  }

  else
  {
    v6 = 0;
  }

  sub_1000167BC();
  v9[1] = 3221225472;
  v9[2] = sub_100055A20;
  v9[3] = &unk_1004C22F0;
  v10 = v5;
  v11 = v2;
  v7 = v2;
  v8 = v5;
  dispatch_sync(v6, v9);
}

id sub_1003AFA54(id result)
{
  if (result)
  {
    sub_100057B48(result);
    v3 = sub_1000554DC();
    if (sub_100057AEC(v3))
    {
      v4 = *(v1 + 32);
      v5 = *(v1 + 40);
      *buf = 67240448;
      v13 = v4;
      v14 = 2048;
      v15 = v5;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "State %{public}u closing session %p", buf, 0x12u);
    }

    *(v1 + 32) = 5;
    v6 = *(v1 + 40);
    sub_100057A60();
    sub_100057B28();
    v9 = sub_100057270;
    v10 = &unk_1004C08D8;
    v11 = v1;
    return [v7 endSessionWithCompletion:v8];
  }

  return result;
}

id *sub_1003AFB44(uint64_t a1)
{
  v1 = a1;
  if (a1)
  {
    v6[0] = @"state";
    v2 = [NSNumber numberWithUnsignedInteger:*(a1 + 32)];
    v6[1] = @"waiters";
    v7[0] = v2;
    v3 = [v1[1] ses_map:&stru_1004C2DE0];
    v7[1] = v3;
    v4 = [NSDictionary dictionaryWithObjects:v7 forKeys:v6 count:2];

    v1 = sub_100015DA0("nearfieldmanager.state", v4);
  }

  return v1;
}

void sub_1003AFC34(uint64_t a1)
{
  if (a1)
  {
    sub_100057B48(a1);
    v3 = sub_1000554DC();
    if (sub_100057AEC(v3))
    {
      [*(v1 + 8) count];
      sub_100057A9C();
      _os_log_impl(v4, v5, v6, v7, v8, 8u);
    }

    v9 = [v1 secureElementInfo];
    *(v1 + 32) = 1;
    if ([*(v1 + 8) count])
    {
      sub_1003AFD48(v1);
    }
  }
}

id sub_1003AFD04(id a1, SERequest *a2)
{
  if (a2)
  {
    v3 = sub_100057AAC(a2, a2);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void sub_1003AFD48(uint64_t a1)
{
  if (a1)
  {
    sub_100057B48(a1);
    v2 = [v1 secureElementInfo];

    if (v2)
    {
      *(v1 + 32) = 2;
      v3 = sub_1000554DC();
      if (sub_100057AEC(v3))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Requesting hardware manager from NF", buf, 2u);
      }

      sub_100057A60();
      sub_100057B28();
      v17 = sub_100056CC8;
      v18 = &unk_1004C2DA0;
      v19 = v1;
      [v4 sharedHardwareManagerWithNoUI:v16];
    }

    else
    {
      v5 = sub_1000554DC();
      v6 = SESCreateAndLogError();

      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      v7 = *(v1 + 8);
      v8 = [v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
      if (v8)
      {
        v10 = v8;
        v11 = *v22;
        do
        {
          v12 = 0;
          do
          {
            if (*v22 != v11)
            {
              objc_enumerationMutation(v7);
            }

            Property = *(*(&v21 + 1) + 8 * v12);
            if (Property)
            {
              Property = objc_getProperty(Property, v9, 8, 1);
            }

            v14 = sub_100057B34(Property);
            v15(v14);
            v12 = v12 + 1;
          }

          while (v10 != v12);
          v10 = [v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
        }

        while (v10);
      }

      [*(v1 + 8) removeAllObjects];
      *(v1 + 32) = 1;
    }
  }
}

id *sub_1003AFF44(id *a1)
{
  v1 = a1;
  if (a1)
  {
    v2 = [NearFieldSessionShim alloc];
    v3 = v1[5];
    v4 = [v1[3] seid];
    sub_100057A60();
    sub_100057B28();
    v7 = sub_100057048;
    v8 = &unk_1004C2EA8;
    v9 = v1;
    v1 = sub_1003AFFF8(&v2->super.isa, v3, v4, v6);
  }

  return v1;
}

id *sub_1003AFFF8(id *a1, void *a2, void *a3, void *a4)
{
  v8 = a2;
  v9 = a3;
  v10 = a4;
  if (a1)
  {
    v17.receiver = a1;
    v17.super_class = NearFieldSessionShim;
    v11 = objc_msgSendSuper2(&v17, "init");
    a1 = v11;
    if (v11)
    {
      objc_storeStrong(v11 + 1, a2);
      v12 = [v9 asHexString];
      v13 = a1[2];
      a1[2] = v12;

      v14 = objc_retainBlock(v10);
      v15 = a1[4];
      a1[4] = v14;

      *(a1 + 24) = 0;
    }
  }

  return a1;
}

void sub_1003B00C8(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  if (a1)
  {
    v8 = sub_1000554DC();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = [*(a1 + 8) count];
      *buf = 138412802;
      v39 = v6;
      v40 = 2112;
      v41 = v7;
      v42 = 1026;
      v43 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Received open CB from NF: %@ %@ %{public}u", buf, 0x1Cu);
    }

    dispatch_assert_queue_V2(*(a1 + 16));
    v10 = *(a1 + 48);
    *(a1 + 48) = 0;

    if (v6 && !v7)
    {
      if (!*(a1 + 72))
      {
        v20 = voucher_copy();
        v21 = *(a1 + 72);
        *(a1 + 72) = v20;

        v22 = sub_1000554DC();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
        {
          v24 = *(a1 + 72);
          *buf = 138412290;
          v39 = v24;
          sub_100057B04(&_mh_execute_header, v22, v23, "Got voucher (SE) %@", buf);
        }
      }

      v25 = [*(a1 + 8) popFirst];
      v27 = v25;
      *(a1 + 32) = 3;
      if (v25)
      {
        v28 = sub_100057AAC(v25, v26);
        objc_storeStrong((a1 + 80), v28);
        objc_storeStrong((a1 + 40), a2);
        Property = objc_getProperty(v27, v29, 8, 1);
      }

      else
      {
        objc_storeStrong((a1 + 80), 0);
        objc_storeStrong((a1 + 40), a2);
        Property = 0;
      }

      v31 = Property;
      v32 = sub_1003AFF44(a1);
      (*(Property + 2))(v31, v32, 0);
    }

    else
    {
      v35 = 0u;
      v36 = 0u;
      v33 = 0u;
      v34 = 0u;
      v11 = *(a1 + 8);
      v12 = [v11 countByEnumeratingWithState:&v33 objects:v37 count:16];
      if (v12)
      {
        v14 = v12;
        v15 = *v34;
        do
        {
          for (i = 0; i != v14; i = i + 1)
          {
            if (*v34 != v15)
            {
              objc_enumerationMutation(v11);
            }

            v17 = *(*(&v33 + 1) + 8 * i);
            if (v17)
            {
              v17 = objc_getProperty(v17, v13, 8, 1);
            }

            v18 = sub_100057B34(v17);
            v19(v18);
          }

          v14 = [v11 countByEnumeratingWithState:&v33 objects:v37 count:16];
        }

        while (v14);
      }

      [*(a1 + 8) removeAllObjects];
      *(a1 + 32) = 1;
    }
  }
}

void sub_1003B03A8(uint64_t a1, char a2)
{
  if (a1)
  {
    v2 = *(a1 + 16);
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_100057050;
    v3[3] = &unk_1004C2ED0;
    v3[4] = a1;
    v4 = a2;
    dispatch_async(v2, v3);
  }
}

void sub_1003B0428(uint64_t a1)
{
  if (a1)
  {
    sub_100057B48(a1);
    v3 = *(v1 + 40);
    *(v1 + 40) = 0;

    *(v1 + 96) = 0;
    v4 = [*(v1 + 8) count];
    v5 = sub_1000554DC();
    v6 = sub_100057AEC(v5);
    if (v4)
    {
      if (v6)
      {
        sub_100057A9C();
        _os_log_impl(v20, v21, v22, v23, v24, 2u);
      }

      sub_1003AFD48(v1);
    }

    else
    {
      if (v6)
      {
        sub_100057A9C();
        _os_log_impl(v7, v8, v9, v10, v11, 2u);
      }

      *(v1 + 32) = 1;
    }

    v12 = sub_1000554DC();
    if (sub_100057AEC(v12))
    {
      v13 = *(v1 + 72);
      sub_100057B1C();
      sub_100057A9C();
      _os_log_impl(v14, v15, v16, v17, v18, 0xCu);
    }

    v19 = *(v1 + 72);
    *(v1 + 72) = 0;
  }
}

void sub_1003B058C(void *a1, void *a2)
{
  v6 = [SecureElement alloc];
  v7 = a1[4];
  if (v7)
  {
    v8 = sub_100057AAC(v7, v5);
  }

  else
  {
    v8 = 0;
  }

  v9 = sub_1003AE888(&v6->super.isa, a2, v8);
  if (v9)
  {
    v10 = sub_1000554DC();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = a1[5];
      sub_100057B1C();
      sub_100057B04(&_mh_execute_header, v10, v12, "Got SE (w/ token) for %{public}@", v24);
    }

    v13 = a1[6] + 16;
    v15 = [SecureElement alloc];
    v16 = a1[4];
    if (v16)
    {
      v17 = sub_100057AAC(v16, v14);
    }

    else
    {
      v17 = 0;
    }

    sub_1003AE888(&v15->super.isa, a2, v17);
    v18 = sub_100057AD4();
    v19(v18);
  }

  else
  {
    v20 = a1[6];
    v21 = sub_1000554DC();
    sub_100057AC4();
    SESCreateAndLogError();
    objc_claimAutoreleasedReturnValue();
    v22 = sub_100057A80();
    v23(v22);
  }
}

void sub_1003B0704(void *a1, void *a2)
{
  v6 = [SecureElement alloc];
  v7 = a1[4];
  if (v7)
  {
    v8 = sub_100057AAC(v7, v5);
  }

  else
  {
    v8 = 0;
  }

  v9 = sub_1003AE888(&v6->super.isa, a2, v8);
  if (v9)
  {
    v10 = sub_1000554DC();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = a1[5];
      sub_100057B1C();
      sub_100057B04(&_mh_execute_header, v10, v12, "Got SE for %{public}@", v24);
    }

    v13 = a1[6] + 16;
    v15 = [SecureElement alloc];
    v16 = a1[4];
    if (v16)
    {
      v17 = sub_100057AAC(v16, v14);
    }

    else
    {
      v17 = 0;
    }

    sub_1003AE888(&v15->super.isa, a2, v17);
    v18 = sub_100057AD4();
    v19(v18);
  }

  else
  {
    v20 = a1[6];
    v21 = sub_1000554DC();
    sub_100057AC4();
    SESCreateAndLogError();
    objc_claimAutoreleasedReturnValue();
    v22 = sub_100057A80();
    v23(v22);
  }
}

uint64_t sub_1003B087C(void *a1)
{
  v3 = sub_1000554DC();
  if (sub_100057AEC(v3))
  {
    v10 = *(*a1 + 56);
    sub_100057A9C();
    _os_log_impl(v4, v5, v6, v7, v8, 8u);
  }

  return sub_1003AFD48(*a1);
}

id *sub_1003B0934(id *a1)
{
  if (a1)
  {
    a1 = [a1[2] subdataWithRange:{0, objc_msgSend(a1[2], "length") - 2}];
    v1 = vars8;
  }

  return a1;
}

uint64_t sub_1003B0984(uint64_t result)
{
  if (result)
  {
    return *(result + 8);
  }

  return result;
}

void sub_1003B09A4(uint64_t a1)
{
  if (a1)
  {
    v1 = *(a1 + 8);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10005FD48;
    block[3] = &unk_1004C08D8;
    block[4] = a1;
    dispatch_async(v1, block);
  }
}

id sub_1003B0A20(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    dispatch_assert_queue_V2(*(a1 + 8));
    v4 = SESDefaultLogObject();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      sub_100061184(&_mh_execute_header, v5, v6, "Installing Logging Applet", v7, v8, v9, v10, 0);
    }

    v11 = sub_1003AAA98(v3, "SLAMLoadAndInstallLogger");
    if (v11)
    {
      v12 = SESDefaultLogObject();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v20 = 138412290;
        v21 = v11;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Failed to SLAM logging applet instances, dropping logging preference %@", &v20, 0xCu);
      }

      v13 = v11;
    }

    else
    {
      v14 = [@"A000000704E000010002" hexStringAsData];
      v15 = sub_1003AF34C(v3, v14);

      v16 = SESDefaultLogObject();
      v17 = v16;
      if (v15)
      {
        if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
        {
          LOWORD(v20) = 0;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "Logger applet successfully installed", &v20, 2u);
        }

        v18 = 0;
        goto LABEL_16;
      }

      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v20) = 0;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "Failed to install Logger applet; ignoring logging preference", &v20, 2u);
      }

      v13 = SESEnsureError();
    }

    v18 = v13;
LABEL_16:

    goto LABEL_17;
  }

  v18 = 0;
LABEL_17:

  return v18;
}

void sub_1003B0C30(NSObject *a1, void *a2)
{
  if (os_log_type_enabled(a1, OS_LOG_TYPE_INFO))
  {
    sub_100061184(&_mh_execute_header, v4, v5, "Logging profile and/or applet installed correctly, nothing to do", v6, v7, v8, v9, 0);
  }

  objc_sync_exit(a2);
}

void sub_1003B0CA4(NSObject *a1)
{
  if (os_log_type_enabled(a1, OS_LOG_TYPE_ERROR))
  {
    sub_100061164(&_mh_execute_header, v2, v3, "Failed to SLAM logging applet, dropping logging preference %@", v4, v5, v6, v7, 2u);
  }
}

void sub_1003B0D34(NSObject *a1)
{
  if (os_log_type_enabled(a1, OS_LOG_TYPE_ERROR))
  {
    sub_100061164(&_mh_execute_header, v2, v3, "Failed to SLAM logging applet instances, dropping logging preference %@", v4, v5, v6, v7, 2u);
  }
}

void *acm_mem_alloc_data(size_t size)
{
  result = malloc_type_calloc(1uLL, size, 0x7F43DDCBuLL);
  if (result)
  {
    qword_10051B018 += size;
  }

  return result;
}

void acm_mem_free_data(void *a1, rsize_t a2)
{
  if (a1)
  {
    sub_100364678(a1, a2);
    free(v3);
    v4 = qword_10051B018 - v2;
    if (qword_10051B018 < v2)
    {
      v4 = 0;
    }

    qword_10051B018 = v4;
  }
}

void *acm_mem_alloc_typed(size_t size, malloc_type_id_t type_id)
{
  result = malloc_type_calloc(1uLL, size, type_id);
  if (result)
  {
    qword_10051B020 += size;
  }

  return result;
}

void acm_mem_free(void *a1, rsize_t a2)
{
  if (a1)
  {
    sub_100364678(a1, a2);
    free(v3);
    v4 = qword_10051B020 - v2;
    if (qword_10051B020 < v2)
    {
      v4 = 0;
    }

    qword_10051B020 = v4;
  }
}

_BYTE *LibCall_BuildCommand(char a1, char a2, char a3, const void *a4, size_t a5, void *a6)
{
  if (gACMLoggingLevel <= 0xAu)
  {
    printf("%s: %s: called.\n", "ACM", "LibCall_BuildCommand");
  }

  v12 = 0;
  if (a5)
  {
    v13 = a4 == 0;
  }

  else
  {
    v13 = 0;
  }

  if (!v13 && a6)
  {
    if (a5 >= 0xFFFFFFFFFFFFFFF8)
    {
      v12 = 0;
    }

    else
    {
      v12 = acm_mem_alloc_data(a5 + 8);
      acm_mem_alloc_info("<data>", v12, a5 + 8, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/LibCall.c", 22, "LibCall_BuildCommand");
      if (v12)
      {
        *a6 = a5 + 8;
        *v12 = 1396920900;
        v12[4] = a1;
        v12[5] = a2;
        v12[6] = a3;
        v12[7] = 2;
        if (a5)
        {
          memcpy(v12 + 8, a4, a5);
        }
      }
    }
  }

  if (gACMLoggingLevel <= 0xAu)
  {
    printf("%s: %s: returning.\n", "ACM", "LibCall_BuildCommand");
  }

  return v12;
}

uint64_t LibCall_ACMContextCreate(uint64_t (*a1)(void), uint64_t a2, void *a3, uint64_t a4, _BYTE *a5, int a6)
{
  if (gACMLoggingLevel <= 0xAu)
  {
    printf("%s: %s: called.\n", "ACM", "LibCall_ACMContextCreate");
  }

  sub_1003657CC();
  if (a1 && a3 && v11)
  {
    v12 = sub_10036579C();
    acm_mem_alloc_info("ACMHandleWithPayload", v12, 20, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/LibCall.c", 49, "LibCall_ACMContextCreate");
    if (!v12)
    {
      sub_1003657D8();
      goto LABEL_20;
    }

    memset(v17, 0, sizeof(v17));
    if (a6)
    {
      sub_10036578C();
      sub_10036577C();
      v13 = a1();
      if (!v13)
      {
        v6 = 0;
LABEL_16:
        *v12 = *v17;
        v12[4] = 0;
        *a3 = v12;
        if (a5)
        {
          *a5 = 0;
        }

LABEL_18:
        if (!v6)
        {
          goto LABEL_20;
        }

        goto LABEL_19;
      }

      v6 = v13;
      if (v13 != -3)
      {
LABEL_19:
        acm_mem_free_info("ACMHandleWithPayload", v12, 0x14uLL, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/LibCall.c", 89, "LibCall_ACMContextCreate");
        acm_mem_free(v12, 0x14uLL);
        goto LABEL_20;
      }
    }

    sub_10036578C();
    sub_10036577C();
    v14 = a1();
    if (v14)
    {
      v6 = v14;
    }

    else
    {
      v6 = 0;
    }

    if (v14)
    {
      goto LABEL_18;
    }

    goto LABEL_16;
  }

LABEL_20:
  sub_1003657C0();
  if (v15)
  {
    printf("%s: %s: returning, err = %ld.\n", "ACM", "LibCall_ACMContextCreate", v6);
  }

  return v6;
}

char *sub_1003B1270(void *a1, void *a2, void *a3, void *a4, int a5, void *a6, void *a7)
{
  v11 = a2;
  v13 = a2;
  v14 = a3;
  obj = a4;
  v85 = a6;
  v15 = a7;
  if (a1)
  {
    v87.receiver = a1;
    v87.super_class = KmlOwnerSharingSession;
    v16 = objc_msgSendSuper2(&v87, "init");
    if (v16)
    {
      v17 = KmlLogger();
      if (sub_100057AEC(v17))
      {
        v18 = v14;
        v19 = *(v16 + 27);
        v82 = [v19 UTF8String];

        v14 = v18;
        *buf = 136315650;
        sub_100367390();
        sub_100367408();
        v91 = v82;
        sub_100367358();
        _os_log_impl(v20, v21, v22, v23, v24, 0x1Cu);
      }

      objc_storeWeak(v16 + 29, obj);
      objc_storeStrong(v16 + 3, v11);
      objc_storeStrong(v16 + 13, a3);
      v25 = [v85 copy];
      v26 = *(v16 + 24);
      *(v16 + 24) = v25;

      objc_storeStrong(v16 + 11, a7);
      v16[96] = 0;
      v27 = sub_1003DF2B8([KmlBindingAttestation alloc], *(v16 + 11));
      v28 = [*(v16 + 13) anonymizedDsid];
      if ([v28 length])
      {
        v29 = sub_1003BA3D0(v27);
        v30 = [v29 length];

        if (v30)
        {
          v31 = sub_1003BA3D0(v27);
          v32 = [v28 isEqualToData:v31];

          if (v32)
          {
            v33 = KmlLogger();
            v11 = 1;
            if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
            {
              v34 = *(v16 + 27);
              v35 = v27;
              v36 = v15;
              v37 = v14;
              v38 = [v34 UTF8String];

              *buf = 136315650;
              sub_100367390();
              sub_100367408();
              v91 = v38;
              v14 = v37;
              v15 = v36;
              v27 = v35;
              sub_100367358();
              _os_log_impl(v39, v40, v41, v42, v43, 0x1Cu);
            }

            v16[96] = 1;
          }
        }
      }

      *(v16 + 8) = vdupq_n_s64(1uLL);
      v44 = sub_1003C75C8(v13);
      v45 = *(v16 + 27);
      *(v16 + 27) = v44;

      v46 = sub_1003B85AC(v13);
      v47 = *(v16 + 6);
      *(v16 + 6) = v46;

      v48 = sub_1003B85B8(v13);
      v49 = *(v16 + 8);
      *(v16 + 8) = v48;

      v16[97] = 0;
      v50 = [KmlDeviceConfigurationData alloc];
      v51 = [*(v16 + 13) deviceConfiguration];
      v52 = [v50 initWithData:v51];
      v53 = *(v16 + 21);
      *(v16 + 21) = v52;

      if (*(v16 + 27))
      {
        v54 = KmlSignpostLogger();
        *(v16 + 22) = os_signpost_id_make_with_pointer(v54, *(v16 + 27));
      }

      else
      {
        *(v16 + 22) = 0xEEEEB0B5B2B2EEEELL;
      }

      v55 = sub_100366330();
      v56 = *(v16 + 23);
      *(v16 + 23) = v55;

      v57 = sub_10037E00C();
      v58 = *(v16 + 15);
      *(v16 + 15) = v57;

      if (a5)
      {
        v59 = *(v16 + 27);
        if (v59)
        {
          sub_1003CCDC4(*(v16 + 15), v16, v59);
          v60 = sub_1003B8594(v13);
          v61 = KmlLogger();
          v62 = sub_100367508(v61);
          if (v60 == 3)
          {
            if (v62)
            {
              v63 = *(v16 + 27);
              v64 = [v63 UTF8String];

              *buf = 136315650;
              sub_100367390();
              sub_100367408();
              v91 = v64;
              sub_100367454(&_mh_execute_header, v11, v65, "%s : %i : %s : session is worth restoring", buf);
            }

            *(v16 + 1) = 11;
          }

          else
          {
            v83 = v14;
            if (v62)
            {
              v75 = *(v16 + 27);
              v76 = [v75 UTF8String];

              *buf = 136315650;
              sub_100367390();
              sub_100367408();
              v91 = v76;
              sub_100367454(&_mh_execute_header, v11, v77, "%s : %i : %s : session can't continue after re-generation. Moving to cancel state to clean out.", buf);
            }

            v78 = [NSString stringWithUTF8String:"com.apple.sesd.kml.sharing"];
            v96 = NSLocalizedDescriptionKey;
            v79 = [NSString stringWithUTF8String:KmlErrorString()];
            v97 = v79;
            v11 = [NSDictionary dictionaryWithObjects:&v97 forKeys:&v96 count:1];
            v80 = [NSError errorWithDomain:v78 code:122 userInfo:v11];
            v81 = *(v16 + 16);
            *(v16 + 16) = v80;

            sub_1003B18E8(v16);
            v14 = v83;
          }
        }
      }

      v66 = KmlLogger();
      if (sub_100367508(v66))
      {
        v67 = *(v16 + 27);
        v68 = [v67 UTF8String];
        v69 = v27;
        v70 = v15;
        v71 = v14;
        v72 = *(v16 + 27);

        *buf = 136316162;
        sub_100367390();
        v89 = 152;
        v90 = 2080;
        v91 = v68;
        v92 = v73;
        v93 = a5;
        v94 = 2112;
        v95 = v72;
        v14 = v71;
        v15 = v70;
        v27 = v69;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "%s : %i : %s : ready to roll regenerated %d _sharingInvitationId %@", buf, 0x2Cu);
      }
    }
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

uint64_t sub_1003B18DC(uint64_t result)
{
  if (result)
  {
    return *(result + 216);
  }

  return result;
}

void sub_1003B18E8(uint64_t a1)
{
  if (a1)
  {
    v1 = *(a1 + 184);
    sub_1003673C4();
    v5[1] = 3221225472;
    v5[2] = sub_100366E68;
    v5[3] = &unk_1004C2B00;
    v5[4] = v2;
    v5[5] = v3;
    dispatch_async(v4, v5);
  }
}

dispatch_queue_t *sub_1003B194C(dispatch_queue_t *a1)
{
  v1 = a1;
  if (a1)
  {
    dispatch_assert_queue_not_V2(a1[23]);
    v7 = 0;
    v8 = &v7;
    v9 = 0x3032000000;
    v10 = sub_100366450;
    v11 = sub_100366460;
    v12 = 0;
    v2 = v1[23];
    sub_1003673C4();
    v6[1] = 3221225472;
    v6[2] = sub_100366468;
    v6[3] = &unk_1004C24F8;
    v6[4] = v1;
    v6[5] = v3;
    dispatch_sync(v4, v6);
    v1 = v8[5];
    _Block_object_dispose(&v7, 8);
  }

  return v1;
}

uint64_t sub_1003B1A30(uint64_t a1)
{
  if (a1)
  {
    v2 = sub_1003B4328(a1);
    v3 = KmlLogger();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = *(a1 + 216);
      v5 = [v4 UTF8String];
      v6 = kmlUtilHexStringFromData();
      *buf = 136315906;
      v28 = "[KmlOwnerSharingSession buildSharingInvitation]";
      v29 = 1024;
      v30 = 691;
      v31 = 2080;
      v32 = v5;
      v33 = 2112;
      v34 = v6;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s : %i : %s : SupportedRadiosData:%@", buf, 0x26u);
    }

    v7 = objc_alloc_init(KeySharingInvitation);
    v8 = sub_1003BE504(v7, *(a1 + 104), v2, *(a1 + 24), *(a1 + 192));
    v9 = *(a1 + 224);
    *(a1 + 224) = v8;

    v10 = sub_1003AD0FC(v7);
    *(a1 + 98) = sub_1003BBBD8(v10);

    v11 = [NSString stringWithFormat:@"Sharing Invitation : %@", *(a1 + 216)];
    v12 = *(a1 + 224);
    kmlUtilLogLargeData();

    v13 = sub_1003AAA78(v7);
    v14 = sub_1003AAA78(v13);
    v15 = [v14 value];
    v16 = *(a1 + 56);
    *(a1 + 56) = v15;

    v17 = sub_1003AAA78(v7);
    v18 = sub_1003AD0FC(v17);
    v19 = [v18 asData];
    v20 = *(a1 + 72);
    *(a1 + 72) = v19;

    sub_1003B4460(a1);
    v21 = *(a1 + 224);
    v22 = kmlUtilSHA256();
    v23 = kmlUtilHexStringFromData();
    v24 = *(a1 + 216);
    *(a1 + 216) = v23;

    v25 = KmlSignpostLogger();
    *(a1 + 176) = os_signpost_id_make_with_pointer(v25, *(a1 + 216));
  }

  return 0;
}

void sub_1003B1C9C(uint64_t a1)
{
  if (a1)
  {
    sub_1003B18E8(a1);
  }
}

void sub_1003B1CAC(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v4 = *(a1 + 184);
    sub_1000167BC();
    sub_1003674E4();
    v5 = v3;
    v6 = sub_1003673F8();
    dispatch_async(v6, v7);
  }
}

void sub_1003B1D30(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    dispatch_assert_queue_not_V2(*(a1 + 184));
    v4 = *(a1 + 184);
    sub_1000167BC();
    sub_1003674E4();
    v5 = v3;
    v6 = sub_1003673F8();
    dispatch_sync(v6, v7);
  }
}

void sub_1003B1DBC(uint64_t a1, char a2)
{
  if (a1)
  {
    dispatch_assert_queue_not_V2(*(a1 + 184));
    v4 = *(a1 + 184);
    sub_1000167BC();
    sub_1003674E4();
    v6[2] = sub_100366768;
    v6[3] = &unk_1004C2ED0;
    v6[4] = a1;
    v7 = a2;
    dispatch_sync(v5, v6);
  }
}

void sub_1003B1E34(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    dispatch_assert_queue_not_V2(*(a1 + 184));
    v4 = *(a1 + 184);
    sub_1000167BC();
    sub_1003674E4();
    v5 = v3;
    v6 = sub_1003673F8();
    dispatch_sync(v6, v7);
  }
}

void sub_1003B1EC0(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    dispatch_assert_queue_not_V2(*(a1 + 184));
    v4 = *(a1 + 184);
    sub_1000167BC();
    sub_1003674E4();
    v5 = v3;
    v6 = sub_1003673F8();
    dispatch_sync(v6, v7);
  }
}