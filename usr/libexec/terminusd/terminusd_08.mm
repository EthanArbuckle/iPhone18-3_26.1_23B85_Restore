void sub_1000AF784(char *a1, char *a2)
{
  v3 = a2;
  v5 = a2;
  v6 = v5;
  if (!a1 || *(a1 + 1199) == v5)
  {
    goto LABEL_28;
  }

  if (!v5)
  {
    if ([a1 state] != 255)
    {
      v16 = *(a1 + 2007);
      if (v16)
      {
        ++v16[17];
      }
    }

    sub_1000B0908(a1);
    goto LABEL_21;
  }

  sub_1000B0908(a1);
  if ([v6 priority] != 2)
  {
    v23 = *(a1 + 4);
    v24 = _NRCopyLogObjectForNRUUID();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (!IsLevelEnabled)
    {
      goto LABEL_28;
    }

LABEL_27:
    v26 = *(a1 + 4);
    v27 = _NRCopyLogObjectForNRUUID();
    v28 = [a1 copyDescription];
    _NRLogWithArgs();

    goto LABEL_28;
  }

  if (a1[293])
  {
    goto LABEL_6;
  }

  v29 = [v6 channel];
  *(a1 + 1207) = v29;
  if (!v29)
  {
    v34 = *(a1 + 4);
    v35 = _NRCopyLogObjectForNRUUID();
    v36 = _NRLogIsLevelEnabled();

    if (!v36)
    {
      goto LABEL_28;
    }

    goto LABEL_27;
  }

  if (!os_channel_attr_create())
  {
    v37 = *(a1 + 4);
    v38 = _NRCopyLogObjectForNRUUID();
    v39 = _NRLogIsLevelEnabled();

    if (!v39)
    {
      goto LABEL_28;
    }

    goto LABEL_27;
  }

  v30 = *(a1 + 1207);
  if (os_channel_read_attr())
  {
    v31 = *(a1 + 4);
    v32 = _NRCopyLogObjectForNRUUID();
    v33 = _NRLogIsLevelEnabled();

    if (!v33)
    {
      goto LABEL_28;
    }

    goto LABEL_27;
  }

  v40 = sub_1000A1674(a1);
  os_channel_attr_destroy();
  if (!v40)
  {
    goto LABEL_28;
  }

  v41 = *(a1 + 1207);
  os_channel_ring_id();
  v42 = *(a1 + 1207);
  v43 = os_channel_rx_ring();
  *(a1 + 1215) = v43;
  if (!v43)
  {
    v61 = *(a1 + 4);
    v62 = _NRCopyLogObjectForNRUUID();
    v63 = _NRLogIsLevelEnabled();

    if (!v63)
    {
      goto LABEL_28;
    }

    goto LABEL_27;
  }

  v44 = *(a1 + 1207);
  os_channel_ring_id();
  v45 = *(a1 + 1207);
  v46 = os_channel_tx_ring();
  *(a1 + 1223) = v46;
  if (!v46)
  {
    v64 = *(a1 + 4);
    v65 = _NRCopyLogObjectForNRUUID();
    v66 = _NRLogIsLevelEnabled();

    if (!v66)
    {
      goto LABEL_28;
    }

    goto LABEL_27;
  }

  v47 = *(a1 + 1207);
  fd = os_channel_get_fd();
  if ((fd & 0x80000000) != 0)
  {
    v67 = *(a1 + 4);
    v68 = _NRCopyLogObjectForNRUUID();
    v69 = _NRLogIsLevelEnabled();

    if (!v69)
    {
      goto LABEL_28;
    }

    goto LABEL_27;
  }

  v49 = fd;
  v50 = dispatch_source_create(&_dispatch_source_type_read, fd, 0, *(a1 + 1));
  v51 = *(a1 + 1231);
  *(a1 + 1231) = v50;

  v52 = *(a1 + 1231);
  if (!v52)
  {
    v70 = *(a1 + 4);
    v71 = _NRCopyLogObjectForNRUUID();
    v72 = _NRLogIsLevelEnabled();

    if (!v72)
    {
      goto LABEL_28;
    }

    goto LABEL_27;
  }

  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_1000B0D94;
  handler[3] = &unk_1001FD3C8;
  handler[4] = a1;
  dispatch_source_set_event_handler(v52, handler);
  v53 = *(a1 + 1231);
  v125[0] = _NSConcreteStackBlock;
  v125[1] = 3221225472;
  v125[2] = nullsub_7;
  v125[3] = &unk_1001FD3C8;
  v54 = v6;
  v126 = v54;
  dispatch_source_set_cancel_handler(v53, v125);
  dispatch_activate(*(a1 + 1231));
  v55 = dispatch_source_create(&_dispatch_source_type_write, v49, 0, *(a1 + 1));
  v56 = *(a1 + 1239);
  *(a1 + 1239) = v55;

  v57 = *(a1 + 1239);
  if (v57)
  {
    v124[0] = _NSConcreteStackBlock;
    v124[1] = 3221225472;
    v124[2] = sub_1000B0FEC;
    v124[3] = &unk_1001FD3C8;
    v124[4] = a1;
    dispatch_source_set_event_handler(v57, v124);
    v58 = *(a1 + 1239);
    v122[0] = _NSConcreteStackBlock;
    v122[1] = 3221225472;
    v122[2] = nullsub_8;
    v122[3] = &unk_1001FD3C8;
    v123 = v54;
    dispatch_source_set_cancel_handler(v58, v122);
    a1[268] = 1;
    v2 = 10;
    a1[299] = 10;
    v59 = a1[299];
    if (a1[299])
    {
      v7 = 8 * v59;
      memptr[0] = 0;
      if (malloc_type_posix_memalign(memptr, 8uLL, 8 * v59, 0x1C7F7A34uLL) || !memptr[0])
      {
        v91 = sub_10007CF34();
        v92 = _NRLogIsLevelEnabled();

        v3 = "[NRLinkBluetooth updateUrgentPipe:]";
        if (v92)
        {
          v93 = sub_10007CF34();
          _NRLogWithArgs();
        }

        goto LABEL_78;
      }

      *(a1 + 2039) = memptr[0];
    }

    a1[305] = 10;
    v60 = a1[305];
    if (!a1[305])
    {
LABEL_52:

LABEL_6:
      v7 = *(a1 + 319);
      if (v7)
      {
        v8 = malloc_type_calloc(1uLL, *(a1 + 319), 0xA9D7CCE5uLL);
        if (!v8)
        {
          v100 = sub_10007CF34();
          v101 = _NRLogIsLevelEnabled();

          if (v101)
          {
            v102 = sub_10007CF34();
            _NRLogWithArgs();
          }

LABEL_84:
          v6 = _os_log_pack_size();
          a1 = block - ((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0);
          v106 = *__error();
          v98 = _os_log_pack_fill();
          *v98 = 136446722;
          *(v98 + 4) = "[NRLinkBluetooth updateUrgentPipe:]";
          *(v98 + 12) = 2048;
          v99 = 1;
          goto LABEL_85;
        }

        *(a1 + 1463) = v8;
        *(a1 + 383) = 0;
        *(a1 + 379) = 0;
        v7 = *(a1 + 335);
        if (v7)
        {
          v9 = malloc_type_calloc(1uLL, *(a1 + 335), 0x96B81A6BuLL);
          if (v9)
          {
            *(a1 + 1279) = v9;
            *(a1 + 351) = 0;
            *(a1 + 355) = 0;
            v10 = a1[248];
            v7 = a1;
            v11 = malloc_type_malloc(0x26uLL, 0xF891214AuLL);
            if (v11)
            {
              v2 = v11;
              *v11 = 0x53554E494D524554;
              v11[8] = 1;
              v11[9] = v10;
              *(v11 + 5) = 6144;
              v11[12] = 4;
              *(v11 + 13) = 4096;
              memptr[0] = 0;
              memptr[1] = 0;
              [*(v7 + 1503) getUUIDBytes:memptr];
              *(v2 + 15) = *memptr;
              *(v2 + 31) = 5;
              *(v2 + 32) = 512;
              *(v2 + 34) = sub_1000952E8(v7) << 8;
              *(v2 + 36) = ~os_inet_checksum();

              if (*(v7 + 335) > 0x25u)
              {
                v12 = *(v7 + 1279);
                v13 = *(v2 + 30);
                v14 = *(v2 + 16);
                *v12 = *v2;
                *(v12 + 16) = v14;
                *(v12 + 30) = v13;
                free(v2);
                *(v7 + 351) += 38;
                v2 = [[NSData alloc] initWithBytes:*(v7 + 1279) length:38];
                if (gNRPacketLoggingEnabled != 1)
                {
LABEL_13:
                  if (*(v7 + 293) == 1)
                  {
                    sub_10007D788(v7, v2, &off_100209BA8);
                  }

                  v15 = *(v7 + 8);
                  block[0] = _NSConcreteStackBlock;
                  block[1] = 3221225472;
                  block[2] = sub_1000B11B4;
                  block[3] = &unk_1001FD060;
                  block[4] = v7;
                  v121 = v6;
                  dispatch_async(v15, block);

LABEL_21:
                  v17 = *(a1 + 4);
                  v18 = _NRCopyLogObjectForNRUUID();
                  v19 = _NRLogIsLevelEnabled();

                  if (v19)
                  {
                    v20 = *(a1 + 4);
                    v21 = _NRCopyLogObjectForNRUUID();
                    v22 = [a1 copyDescription];
                    v118 = *(a1 + 1199);
                    _NRLogWithArgs();
                  }

                  objc_storeStrong((a1 + 1199), v3);
                  if (!*(a1 + 1199) && a1[293] == 1)
                  {
                    sub_1000B1320(a1, &off_100209BA8);
                  }

                  goto LABEL_28;
                }

LABEL_71:
                v86 = *(v7 + 32);
                v87 = _NRCopyLogObjectForNRUUID();
                v88 = _NRLogIsLevelEnabled();

                if (v88)
                {
                  v89 = *(v7 + 32);
                  v90 = _NRCopyLogObjectForNRUUID();
                  v117 = [v7 copyDescription];
                  _NRLogWithArgs();
                }

                goto LABEL_13;
              }

              v112 = sub_10007CF34();
              v113 = _NRLogIsLevelEnabled();

              if (v113)
              {
                v114 = sub_10007CF34();
                _NRLogWithArgs();
              }

              v6 = _os_log_pack_size();
              a1 = block - ((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0);
              v115 = *__error();
              v116 = _os_log_pack_fill();
              *v116 = 136446466;
              *(v116 + 4) = "[NRLinkBluetooth updateUrgentPipe:]";
              *(v116 + 12) = 1024;
              *(v116 + 14) = 38;
            }

            else
            {
              v107 = sub_10007CF34();
              v108 = _NRLogIsLevelEnabled();

              v3 = "createPreludeBuffer";
              if (v108)
              {
                v109 = sub_10007CF34();
                _NRLogWithArgs();
              }

              v6 = _os_log_pack_size();
              a1 = block - ((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0);
              v110 = *__error();
              v111 = _os_log_pack_fill();
              *v111 = 136446210;
              *(v111 + 4) = "createPreludeBuffer";
            }

LABEL_70:
            sub_10007CF34();
            _NRLogAbortWithPack();
            goto LABEL_71;
          }

          v103 = sub_10007CF34();
          v104 = _NRLogIsLevelEnabled();

          if (v104)
          {
            v105 = sub_10007CF34();
            _NRLogWithArgs();
          }

          goto LABEL_84;
        }

        v81 = sub_10007CF34();
        v82 = _NRLogIsLevelEnabled();

        if (v82)
        {
          v83 = sub_10007CF34();
          _NRLogWithArgs();
        }
      }

      else
      {
        v78 = sub_10007CF34();
        v79 = _NRLogIsLevelEnabled();

        if (v79)
        {
          v80 = sub_10007CF34();
          _NRLogWithArgs();
        }
      }

      v6 = _os_log_pack_size();
      a1 = block - ((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0);
      v84 = *__error();
      v85 = _os_log_pack_fill();
      *v85 = 136446210;
      *(v85 + 4) = "[NRLinkBluetooth updateUrgentPipe:]";
      goto LABEL_70;
    }

    v7 = 8 * v60;
    memptr[0] = 0;
    if (!malloc_type_posix_memalign(memptr, 8uLL, 8 * v60, 0x14C33E92uLL) && memptr[0])
    {
      *(a1 + 2087) = memptr[0];
      goto LABEL_52;
    }

    v94 = sub_10007CF34();
    v95 = _NRLogIsLevelEnabled();

    if (v95)
    {
      v96 = sub_10007CF34();
      _NRLogWithArgs();
    }

LABEL_78:
    v6 = _os_log_pack_size();
    a1 = block - ((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0);
    v97 = *__error();
    v98 = _os_log_pack_fill();
    *v98 = 136446722;
    *(v98 + 4) = "[NRLinkBluetooth updateUrgentPipe:]";
    *(v98 + 12) = 2048;
    v99 = 8;
LABEL_85:
    *(v98 + 14) = v99;
    *(v98 + 22) = 2048;
    *(v98 + 24) = v7;
    goto LABEL_70;
  }

  v73 = *(a1 + 4);
  v74 = _NRCopyLogObjectForNRUUID();
  v75 = _NRLogIsLevelEnabled();

  if (v75)
  {
    v76 = *(a1 + 4);
    v77 = _NRCopyLogObjectForNRUUID();
    v119 = [a1 copyDescription];
    _NRLogWithArgs();
  }

LABEL_28:
}

void sub_1000B0908(uint64_t a1)
{
  v2 = *(a1 + 1231);
  if (v2)
  {
    if (*(a1 + 267) == 1)
    {
      *(a1 + 267) = 0;
      ++*(a1 + 1247);
      if (gNRPacketLoggingEnabled == 1)
      {
        v10 = *(a1 + 32);
        v11 = _NRCopyLogObjectForNRUUID();
        IsLevelEnabled = _NRLogIsLevelEnabled();

        if (IsLevelEnabled)
        {
          v13 = *(a1 + 32);
          v14 = _NRCopyLogObjectForNRUUID();
          v30 = [a1 copyDescription];
          _NRLogWithArgs();
        }
      }

      dispatch_resume(*(a1 + 1231));
      v2 = *(a1 + 1231);
    }

    dispatch_source_cancel(v2);
    v3 = *(a1 + 1231);
    *(a1 + 1231) = 0;
  }

  v4 = *(a1 + 1239);
  if (v4)
  {
    if (*(a1 + 268) == 1)
    {
      *(a1 + 268) = 0;
      ++*(a1 + 1255);
      if (gNRPacketLoggingEnabled == 1)
      {
        v15 = *(a1 + 32);
        v16 = _NRCopyLogObjectForNRUUID();
        v17 = _NRLogIsLevelEnabled();

        if (v17)
        {
          v18 = *(a1 + 32);
          v19 = _NRCopyLogObjectForNRUUID();
          v31 = [a1 copyDescription];
          _NRLogWithArgs();
        }
      }

      dispatch_resume(*(a1 + 1239));
      v4 = *(a1 + 1239);
    }

    dispatch_source_cancel(v4);
    v5 = *(a1 + 1239);
    *(a1 + 1239) = 0;
  }

  if (*(a1 + 256) == 1 && *(a1 + 783))
  {
    *(a1 + 256) = 0;
    ++*(a1 + 799);
    if (gNRPacketLoggingEnabled == 1)
    {
      v20 = *(a1 + 32);
      v21 = _NRCopyLogObjectForNRUUID();
      v22 = _NRLogIsLevelEnabled();

      if (v22)
      {
        v23 = *(a1 + 32);
        v24 = _NRCopyLogObjectForNRUUID();
        v32 = [a1 copyDescription];
        _NRLogWithArgs();
      }
    }

    dispatch_resume(*(a1 + 783));
  }

  if (*(a1 + 254) == 1 && *(a1 + 623))
  {
    *(a1 + 254) = 0;
    ++*(a1 + 639);
    if (gNRPacketLoggingEnabled == 1)
    {
      v25 = *(a1 + 32);
      v26 = _NRCopyLogObjectForNRUUID();
      v27 = _NRLogIsLevelEnabled();

      if (v27)
      {
        v28 = *(a1 + 32);
        v29 = _NRCopyLogObjectForNRUUID();
        v33 = [a1 copyDescription];
        _NRLogWithArgs();
      }
    }

    dispatch_resume(*(a1 + 623));
  }

  *(a1 + 1207) = 0;
  *(a1 + 1223) = 0;
  *(a1 + 1215) = 0;
  *(a1 + 269) = 0;
  *(a1 + 1247) = 0;
  *(a1 + 1255) = 0;
  v6 = *(a1 + 2039);
  if (v6)
  {
    free(v6);
    *(a1 + 2039) = 0;
  }

  v7 = *(a1 + 2087);
  if (v7)
  {
    free(v7);
    *(a1 + 2087) = 0;
  }

  v8 = *(a1 + 1463);
  if (v8)
  {
    free(v8);
    *(a1 + 1463) = 0;
  }

  *(a1 + 383) = 0;
  *(a1 + 379) = 0;
  v9 = *(a1 + 1279);
  if (v9)
  {
    free(v9);
    *(a1 + 1279) = 0;
  }

  *(a1 + 383) = 0;
  *(a1 + 351) = 0;
}

void sub_1000B0D94(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 16) == 255)
  {
    v4 = *(v2 + 32);
    v5 = _NRCopyLogObjectForNRUUID();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v7 = *(*(a1 + 32) + 32);
      v22 = _NRCopyLogObjectForNRUUID();
      v19 = [*(a1 + 32) copyDescription];
      _NRLogWithArgs();
    }
  }

  else
  {
    ++*(v2 + 1647);
    v3 = *(a1 + 32);
    if (*(v3 + 269))
    {
      if (gNRPacketLoggingEnabled == 1)
      {
        v14 = *(v3 + 32);
        v15 = _NRCopyLogObjectForNRUUID();
        v16 = _NRLogIsLevelEnabled();

        v3 = *(a1 + 32);
        if (v16)
        {
          v17 = *(v3 + 32);
          v18 = _NRCopyLogObjectForNRUUID();
          v21 = [*(a1 + 32) copyDescription];
          _NRLogWithArgs();

          v3 = *(a1 + 32);
        }
      }

      sub_1000A2C50(v3);
    }

    else
    {
      v8 = *(v3 + 32);
      v9 = _NRCopyLogObjectForNRUUID();
      v10 = _NRLogIsLevelEnabled();

      if (v10)
      {
        v11 = *(*(a1 + 32) + 32);
        v12 = _NRCopyLogObjectForNRUUID();
        v20 = [*(a1 + 32) copyDescription];
        _NRLogWithArgs();
      }

      v13 = *(a1 + 32);

      sub_1000B15F0(v13, 1);
    }
  }
}

void sub_1000B0FEC(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 16) == 255)
  {
    v5 = *(v2 + 32);
    v6 = _NRCopyLogObjectForNRUUID();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v8 = *(*(a1 + 32) + 32);
      v16 = _NRCopyLogObjectForNRUUID();
      v14 = [*(a1 + 32) copyDescription];
      _NRLogWithArgs();
    }
  }

  else
  {
    ++*(v2 + 1655);
    if (gNRPacketLoggingEnabled == 1)
    {
      v9 = *(*(a1 + 32) + 32);
      v10 = _NRCopyLogObjectForNRUUID();
      v11 = _NRLogIsLevelEnabled();

      if (v11)
      {
        v12 = *(*(a1 + 32) + 32);
        v13 = _NRCopyLogObjectForNRUUID();
        v15 = [*(a1 + 32) copyDescription];
        _NRLogWithArgs();
      }
    }

    sub_1000A7C10(*(a1 + 32), *(*(a1 + 32) + 599));
    v3 = *(a1 + 32);
    v4 = *(v3 + 759);

    sub_1000A7C10(v3, v4);
  }
}

void sub_1000B11B4(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 32);
  v3 = _NRCopyLogObjectForNRUUID();
  IsLevelEnabled = _NRLogIsLevelEnabled();

  if (IsLevelEnabled)
  {
    v5 = *(*(a1 + 32) + 32);
    v6 = _NRCopyLogObjectForNRUUID();
    v9 = [*(a1 + 32) copyDescription];
    _NRLogWithArgs();
  }

  sub_1000A7C10(*(a1 + 32), *(*(a1 + 32) + 759));
  objc_initWeak(&location, *(a1 + 32));
  v7 = dispatch_time(0x8000000000000000, 10000000000);
  v8 = *(*(a1 + 32) + 8);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000B1524;
  block[3] = &unk_1001FD0D8;
  objc_copyWeak(&v12, &location);
  v11 = *(a1 + 40);
  dispatch_after(v7, v8, block);

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

void sub_1000B1320(uint64_t a1, void *a2)
{
  v20 = a2;
  v3 = objc_alloc_init(NSMutableDictionary);
  [v3 setObject:v20 forKeyedSubscript:@"channel-id"];
  v4 = objc_alloc_init(NSMutableDictionary);
  [v4 setObject:v3 forKeyedSubscript:@"deactivate-datapath"];
  v5 = v4;
  v6 = *(a1 + 1399);
  if (v6 && [v6 direct])
  {
    [*(a1 + 1399) sendXPCCommDictionary:v5];
  }

  else
  {
    objc_opt_self();
    if (qword_1002290C0 != -1)
    {
      dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
    }

    v7 = qword_1002290B8;
    v8 = v7;
    if (v7)
    {
      v9 = *(a1 + 32);
      v10 = *(v7 + 28);
      v11 = v5;
      v12 = [v10 objectForKeyedSubscript:v9];
      sub_100114680(v12, v11);
    }
  }

  v13 = [v20 integerValue];
  if (v13 == 3)
  {
    *(a1 + 296) = 0;
  }

  else if (v13 == 2)
  {
    *(a1 + 295) = 0;
  }

  else if (v13 == 1)
  {
    *(a1 + 294) = 0;
  }

  else
  {
    v14 = *(a1 + 32);
    v15 = _NRCopyLogObjectForNRUUID();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v17 = *(a1 + 32);
      v18 = _NRCopyLogObjectForNRUUID();
      v19 = [a1 copyDescription];
      _NRLogWithArgs();
    }
  }
}

void sub_1000B1524(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v13 = WeakRetained;
    v4 = *(WeakRetained + 1199);
    v3 = v13;
    if (v4)
    {
      v5 = *(v13 + 1199);
      v6 = *(a1 + 32);

      v3 = v13;
      if (v5 == v6 && (*(v13 + 269) & 1) == 0)
      {
        v12 = *(v13 + 2007);
        if (v12)
        {
          *(v12 + 110) = 1;
        }

        sub_100080EB4(v13, @"Did not receive prelude after %ds on urgent pipe", v13, v7, v8, v9, v10, v11, 10);
        v3 = v13;
      }
    }
  }
}

void sub_1000B15F0(uint64_t a1, int a2)
{
  if (!a1)
  {
    return;
  }

  v3 = &OBJC_IVAR___NRLinkBluetooth__urgentLinkInputRing;
  if (!a2)
  {
    v3 = &OBJC_IVAR___NRLinkBluetooth__linkInputRing;
  }

  v4 = &OBJC_IVAR___NRLinkBluetooth__linkChannel;
  if (a2)
  {
    v4 = &OBJC_IVAR___NRLinkBluetooth__urgentLinkChannel;
  }

  if (!*(a1 + *v3))
  {
    v8 = *(a1 + 32);
    v9 = _NRCopyLogObjectForNRUUID();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (!IsLevelEnabled)
    {
      return;
    }

LABEL_17:
    v14 = *(a1 + 32);
    v24 = _NRCopyLogObjectForNRUUID();
    v15 = [a1 copyDescription];
    _NRLogWithArgs();

    return;
  }

  if (!*(a1 + *v4))
  {
    v11 = *(a1 + 32);
    v12 = _NRCopyLogObjectForNRUUID();
    v13 = _NRLogIsLevelEnabled();

    if (!v13)
    {
      return;
    }

    goto LABEL_17;
  }

  if (a2)
  {
    i = 0;
    while (1)
    {
      next_slot = os_channel_get_next_slot();
      if (!next_slot)
      {
        break;
      }

      v7 = next_slot;
      sub_1000B18B4(a1, 0, 0, 1);
      if (*(a1 + 16) == 255)
      {
        goto LABEL_27;
      }

      i = v7;
      if (*(a1 + 269))
      {
        goto LABEL_25;
      }
    }
  }

  else
  {
    for (i = 0; ; i = v17)
    {
      v16 = os_channel_get_next_slot();
      if (!v16)
      {
        break;
      }

      v17 = v16;
      sub_1000B18B4(a1, 0, 0, 0);
      if (*(a1 + 16) == 255)
      {
LABEL_27:
        v18 = *(a1 + 32);
        v19 = _NRCopyLogObjectForNRUUID();
        v20 = _NRLogIsLevelEnabled();

        if (v20)
        {
          v21 = *(a1 + 32);
          v22 = _NRCopyLogObjectForNRUUID();
          v23 = [a1 copyDescription];
          _NRLogWithArgs();
        }

        return;
      }
    }
  }

  if (i)
  {
LABEL_25:
    os_channel_advance_slot();
  }

  os_channel_sync();
}

void sub_1000B18B4(uint64_t a1, const void *a2, size_t a3, uint64_t *a4)
{
  if (gNRPacketLoggingEnabled == 1)
  {
    v9 = a3;
    v10 = a2;
    v11 = +[NSDate date];
    v12 = *(a1 + 1823);
    *(a1 + 1823) = v11;

    a2 = v10;
    a3 = v9;
    if (!v10)
    {
      goto LABEL_13;
    }
  }

  else if (!a2)
  {
    goto LABEL_13;
  }

  if (a3)
  {
    if (a4)
    {
      *(a1 + 1551) += a3;
      if (gNRPacketLoggingEnabled != 1)
      {
        v6 = &OBJC_IVAR___NRLinkBluetooth__filledInUrgentLinkReadBufferBytes;
        v7 = &OBJC_IVAR___NRLinkBluetooth__urgentLinkReadBuffer;
LABEL_9:
        v8 = a3;
        memcpy((*(a1 + *v7) + *(a1 + *v6)), a2, a3);
        *(a1 + *v6) += v8;

        sub_100092390(a1, a4);
        return;
      }

      v19 = a2;
      v20 = a3;
      v21 = *(a1 + 32);
      v22 = _NRCopyLogObjectForNRUUID();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      v6 = &OBJC_IVAR___NRLinkBluetooth__filledInUrgentLinkReadBufferBytes;
      if (!IsLevelEnabled)
      {
        v7 = &OBJC_IVAR___NRLinkBluetooth__urgentLinkReadBuffer;
        goto LABEL_25;
      }

      v24 = *(a1 + 32);
      v25 = _NRCopyLogObjectForNRUUID();
      v26 = [a1 copyDescription];
      v31 = (*(a1 + 379) + v20);
      v33 = *(a1 + 383);
      _NRLogWithArgs();
      v7 = &OBJC_IVAR___NRLinkBluetooth__urgentLinkReadBuffer;
    }

    else
    {
      *(a1 + 1519) += a3;
      if (gNRPacketLoggingEnabled != 1)
      {
        v6 = &OBJC_IVAR___NRLinkBluetooth__filledInLinkReadBufferBytes;
        v7 = &OBJC_IVAR___NRLinkBluetooth__linkReadBuffer;
        goto LABEL_9;
      }

      v19 = a2;
      v20 = a3;
      v27 = *(a1 + 32);
      v28 = _NRCopyLogObjectForNRUUID();
      v29 = _NRLogIsLevelEnabled();

      v6 = &OBJC_IVAR___NRLinkBluetooth__filledInLinkReadBufferBytes;
      if (!v29)
      {
        v7 = &OBJC_IVAR___NRLinkBluetooth__linkReadBuffer;
        goto LABEL_25;
      }

      v30 = *(a1 + 32);
      v25 = _NRCopyLogObjectForNRUUID();
      v26 = [a1 copyDescription];
      v32 = (*(a1 + 371) + v20);
      v34 = *(a1 + 375);
      _NRLogWithArgs();
      v7 = &OBJC_IVAR___NRLinkBluetooth__linkReadBuffer;
    }

LABEL_25:
    a3 = v20;
    a2 = v19;
    goto LABEL_9;
  }

LABEL_13:
  v13 = *(a1 + 32);
  v14 = _NRCopyLogObjectForNRUUID();
  v15 = _NRLogIsLevelEnabled();

  if (v15)
  {
    v16 = *(a1 + 32);
    v17 = _NRCopyLogObjectForNRUUID();
    v18 = [a1 copyDescription];
    _NRLogWithArgs();
  }

  [a1 cancelWithReason:@"pipe received no data"];
}

void sub_1000B1C18(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 16) == 255)
  {
    v7 = *(v2 + 32);
    v8 = _NRCopyLogObjectForNRUUID();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (!IsLevelEnabled)
    {
      return;
    }

    goto LABEL_6;
  }

  ++*(v2 + 1631);
  v3 = *(a1 + 32);
  if (*(v3 + 16) - 1 <= 1)
  {
    v4 = *(v3 + 32);
    v5 = _NRCopyLogObjectForNRUUID();
    v6 = _NRLogIsLevelEnabled();

    if (!v6)
    {
      return;
    }

LABEL_6:
    v10 = *(*(a1 + 32) + 32);
    v18 = _NRCopyLogObjectForNRUUID();
    v11 = [*(a1 + 32) copyDescription];
    _NRLogWithArgs();

    return;
  }

  if (gNRPacketLoggingEnabled == 1)
  {
    v12 = *(v3 + 32);
    v13 = _NRCopyLogObjectForNRUUID();
    v14 = _NRLogIsLevelEnabled();

    v3 = *(a1 + 32);
    if (v14)
    {
      v15 = *(v3 + 32);
      v16 = _NRCopyLogObjectForNRUUID();
      v17 = [*(a1 + 32) copyDescription];
      _NRLogWithArgs();

      v3 = *(a1 + 32);
    }
  }

  sub_1000AAFD8(v3);
}

void sub_1000B1E24(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 16) == 255)
  {
    v5 = *(v2 + 32);
    v6 = _NRCopyLogObjectForNRUUID();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v8 = *(*(a1 + 32) + 32);
      v16 = _NRCopyLogObjectForNRUUID();
      v14 = [*(a1 + 32) copyDescription];
      _NRLogWithArgs();
    }
  }

  else
  {
    ++*(v2 + 1639);
    if (gNRPacketLoggingEnabled == 1)
    {
      v9 = *(*(a1 + 32) + 32);
      v10 = _NRCopyLogObjectForNRUUID();
      v11 = _NRLogIsLevelEnabled();

      if (v11)
      {
        v12 = *(*(a1 + 32) + 32);
        v13 = _NRCopyLogObjectForNRUUID();
        v15 = [*(a1 + 32) copyDescription];
        _NRLogWithArgs();
      }
    }

    v3 = *(a1 + 32);
    v4 = *(v3 + 599);

    sub_1000A7C10(v3, v4);
  }
}

void sub_1000B487C(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 16) == 255)
  {
    v4 = *(v2 + 32);
    v5 = _NRCopyLogObjectForNRUUID();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v7 = *(*(a1 + 32) + 32);
      v21 = _NRCopyLogObjectForNRUUID();
      v18 = [*(a1 + 32) copyDescription];
      _NRLogWithArgs();
    }
  }

  else
  {
    ++*(v2 + 1615);
    v3 = *(a1 + 32);
    if (*(v3 + 16) - 1 > 1)
    {
      if (gNRPacketLoggingEnabled)
      {
        v13 = *(v3 + 32);
        v14 = _NRCopyLogObjectForNRUUID();
        v15 = _NRLogIsLevelEnabled();

        v3 = *(a1 + 32);
        if (v15)
        {
          v16 = *(v3 + 32);
          v17 = _NRCopyLogObjectForNRUUID();
          v20 = [*(a1 + 32) copyDescription];
          _NRLogWithArgs();

          v3 = *(a1 + 32);
        }
      }

      sub_100097378(v3);
    }

    else
    {
      if (gNRPacketLoggingEnabled)
      {
        v8 = *(v3 + 32);
        v9 = _NRCopyLogObjectForNRUUID();
        v10 = _NRLogIsLevelEnabled();

        v3 = *(a1 + 32);
        if (v10)
        {
          v11 = *(v3 + 32);
          v12 = _NRCopyLogObjectForNRUUID();
          v19 = [*(a1 + 32) copyDescription];
          _NRLogWithArgs();

          v3 = *(a1 + 32);
        }
      }

      sub_1000B15F0(v3, 0);
    }
  }
}

void sub_1000B4AD8(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 16) == 255)
  {
    v33 = *(v2 + 32);
    v34 = _NRCopyLogObjectForNRUUID();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v36 = *(*(a1 + 32) + 32);
      v44 = _NRCopyLogObjectForNRUUID();
      v42 = [*(a1 + 32) copyDescription];
      _NRLogWithArgs();
    }
  }

  else
  {
    ++*(v2 + 1623);
    if (gNRPacketLoggingEnabled == 1)
    {
      v37 = *(*(a1 + 32) + 32);
      v38 = _NRCopyLogObjectForNRUUID();
      v39 = _NRLogIsLevelEnabled();

      if (v39)
      {
        v40 = *(*(a1 + 32) + 32);
        v41 = _NRCopyLogObjectForNRUUID();
        v43 = [*(a1 + 32) copyDescription];
        _NRLogWithArgs();
      }
    }

    v3 = *(a1 + 32);
    v4 = *(v3 + 1199);
    if (*(v3 + 270) <= 3u)
    {
      v5 = *(v3 + 270);
    }

    else
    {
      v5 = 0;
    }

    if (v4)
    {
      v6 = 0;
    }

    else
    {
      v6 = v5 == 0;
    }

    if (v6)
    {
      v7 = &OBJC_IVAR___NRLinkBluetooth__nexusVOChannel;
    }

    else
    {
      v7 = &OBJC_IVAR___NRLinkBluetooth__nexusChannel;
    }

    if (v4)
    {
      v8 = 0;
    }

    else
    {
      v8 = v5 == 1;
    }

    if (v8)
    {
      v9 = &OBJC_IVAR___NRLinkBluetooth__nexusVIChannel;
    }

    else
    {
      v9 = &OBJC_IVAR___NRLinkBluetooth__nexusBKChannel;
    }

    if (v5)
    {
      v7 = v9;
    }

    sub_10007D9C4(v3, *(v3 + *v7));
    if (((v5 + 1) & 0xFC) != 0)
    {
      v10 = 0;
    }

    else
    {
      v10 = v5 + 1;
    }

    v11 = *(a1 + 32);
    v12 = *(v11 + 1199);
    if (v12)
    {
      v13 = 0;
    }

    else
    {
      v13 = v10 == 0;
    }

    if (v13)
    {
      v14 = &OBJC_IVAR___NRLinkBluetooth__nexusVOChannel;
    }

    else
    {
      v14 = &OBJC_IVAR___NRLinkBluetooth__nexusChannel;
    }

    if (v12)
    {
      v15 = 0;
    }

    else
    {
      v15 = v10 == 1;
    }

    if (v15)
    {
      v16 = &OBJC_IVAR___NRLinkBluetooth__nexusVIChannel;
    }

    else
    {
      v16 = &OBJC_IVAR___NRLinkBluetooth__nexusBKChannel;
    }

    if ((v10 & 1) == 0)
    {
      v16 = v14;
    }

    sub_10007D9C4(v11, *(v11 + *v16));
    if (!v4)
    {
      if (((v10 + 1) & 0xFC) != 0)
      {
        v17 = 0;
      }

      else
      {
        v17 = v10 + 1;
      }

      v18 = *(a1 + 32);
      v19 = *(v18 + 1199);
      if (v19)
      {
        v20 = 0;
      }

      else
      {
        v20 = v17 == 0;
      }

      if (v20)
      {
        v21 = &OBJC_IVAR___NRLinkBluetooth__nexusVOChannel;
      }

      else
      {
        v21 = &OBJC_IVAR___NRLinkBluetooth__nexusChannel;
      }

      if (v19)
      {
        v22 = 0;
      }

      else
      {
        v22 = v17 == 1;
      }

      if (v22)
      {
        v23 = &OBJC_IVAR___NRLinkBluetooth__nexusVIChannel;
      }

      else
      {
        v23 = &OBJC_IVAR___NRLinkBluetooth__nexusBKChannel;
      }

      if ((v17 & 1) == 0)
      {
        v23 = v21;
      }

      sub_10007D9C4(v18, *(v18 + *v23));
      if (((v17 + 1) & 0xFC) != 0)
      {
        v24 = 0;
      }

      else
      {
        v24 = v17 + 1;
      }

      v25 = *(a1 + 32);
      v26 = *(v25 + 1199);
      if (v26)
      {
        v27 = 0;
      }

      else
      {
        v27 = v24 == 0;
      }

      if (v27)
      {
        v28 = &OBJC_IVAR___NRLinkBluetooth__nexusVOChannel;
      }

      else
      {
        v28 = &OBJC_IVAR___NRLinkBluetooth__nexusChannel;
      }

      if (v26)
      {
        v29 = 0;
      }

      else
      {
        v29 = v24 == 1;
      }

      if (v29)
      {
        v30 = &OBJC_IVAR___NRLinkBluetooth__nexusVIChannel;
      }

      else
      {
        v30 = &OBJC_IVAR___NRLinkBluetooth__nexusBKChannel;
      }

      if (v24)
      {
        v31 = v30;
      }

      else
      {
        v31 = v28;
      }

      sub_10007D9C4(v25, *(v25 + *v31));
    }

    ++*(*(a1 + 32) + 270);
    v32 = *(a1 + 32);
    if (*(v32 + 270) > 3u)
    {
      *(v32 + 270) = 0;
    }
  }
}

void sub_1000B4DE4(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 32);
  v3 = _NRCopyLogObjectForNRUUID();
  IsLevelEnabled = _NRLogIsLevelEnabled();

  if (IsLevelEnabled)
  {
    v5 = *(*(a1 + 32) + 32);
    v6 = _NRCopyLogObjectForNRUUID();
    v9 = [*(a1 + 32) copyDescription];
    _NRLogWithArgs();
  }

  sub_10007D9C4(*(a1 + 32), 0);
  objc_initWeak(&location, *(a1 + 32));
  v7 = dispatch_time(0x8000000000000000, 10000000000);
  v8 = *(*(a1 + 32) + 8);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000B4F34;
  block[3] = &unk_1001FC730;
  objc_copyWeak(&v11, &location);
  dispatch_after(v7, v8, block);
  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

void sub_1000B4F34(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v10 = WeakRetained;
    v2 = [WeakRetained state] == 2;
    WeakRetained = v10;
    if (v2)
    {
      v9 = *(v10 + 2007);
      if (v9)
      {
        *(v9 + 109) = 1;
      }

      sub_100080EB4(v10, @"Did not receive prelude after %ds", v3, v4, v5, v6, v7, v8, 10);
      WeakRetained = v10;
    }
  }
}

id sub_1000B6370(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7)
{
  v13 = a2;
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  if (!a1)
  {
    goto LABEL_57;
  }

  if (!v13)
  {
    v46 = sub_10007CF34();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      goto LABEL_56;
    }

    goto LABEL_57;
  }

  dispatch_assert_queue_V2(v13);
  if (!v15)
  {
    v48 = sub_10007CF34();
    v49 = _NRLogIsLevelEnabled();

    if (v49)
    {
      goto LABEL_56;
    }

    goto LABEL_57;
  }

  if ((_NRIsUUIDNonZero() & 1) == 0)
  {
    v50 = sub_10007CF34();
    v51 = _NRLogIsLevelEnabled();

    if (v51)
    {
      goto LABEL_56;
    }

    goto LABEL_57;
  }

  if (!v18)
  {
    v52 = sub_10007CF34();
    v53 = _NRLogIsLevelEnabled();

    if (v53)
    {
LABEL_56:
      v54 = sub_10007CF34();
      _NRLogWithArgs();

      v43 = 0;
      goto LABEL_38;
    }

LABEL_57:
    v43 = 0;
    goto LABEL_38;
  }

  v68.receiver = a1;
  v68.super_class = NRLinkBluetooth;
  v19 = objc_msgSendSuper2(&v68, "initLinkWithQueue:linkDelegate:nrUUID:", v13, v14, v15);
  if (v19)
  {
    a1 = v19;
    v67 = v15;
    [v19 setType:1];
    [a1 setSubtype:120];
    objc_storeStrong((a1 + 399), a5);
    v20 = *(a1 + 399);
    v65 = v14;
    v66 = v13;
    v63 = v18;
    v64 = v16;
    if (v20)
    {
      v21 = [v16 peer];
      v22 = [v21 identifier];
      v23 = *(a1 + 391);
      *(a1 + 391) = v22;
    }

    else if (v17)
    {
      [a1 setSubtype:121];
      objc_storeStrong((a1 + 407), a6);
      *(a1 + 307) = [v17 PSM];
      v24 = *(a1 + 407);
      v25 = [v24 peer];
      v26 = [v25 identifier];
      v27 = *(a1 + 391);
      *(a1 + 391) = v26;

      *(a1 + 282) = [v17 isPacketBased];
    }

    v28 = v17;
    objc_storeStrong((a1 + 415), a7);
    v29 = objc_alloc_init(NRAnalyticsCmpnLinkBluetooth);
    v30 = *(a1 + 2007);
    *(a1 + 2007) = v29;

    v31 = &OBJC_IVAR___BTPResolver__sdRefResolve;
    *(a1 + 315) = 0xFFFF;
    v14 = &OBJC_IVAR___BTPResolver__sdRefResolve;
    *(a1 + 323) = (*(a1 + 315) + 1) >> 1;
    *(a1 + 319) = *(a1 + 315);
    *(a1 + 327) = (*(a1 + 319) + 1) >> 1;
    v16 = &OBJC_IVAR___BTPResolver__sdRefResolve;
    *(a1 + 331) = 0x4000;
    v17 = &OBJC_IVAR___BTPResolver__sdRefResolve;
    *(a1 + 335) = *(a1 + 331);
    objc_opt_self();
    if (qword_1002290C0 != -1)
    {
      dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
    }

    v32 = qword_1002290B8;
    if (v32)
    {
      v33 = v32[10];

      if (v33 == 1)
      {
        *(a1 + 293) = 1;
        *(a1 + 315) = 48;
        *(a1 + 323) = (*(a1 + 315) + 1) >> 1;
        *(a1 + 319) = *(a1 + 315);
        *(a1 + 327) = (*(a1 + 319) + 1) >> 1;
        *(a1 + 331) = 48;
        *(a1 + 335) = *(a1 + 331);
      }
    }

    v15 = v67;
    v34 = sub_100163A30(NRDLocalDevice, v67);
    if (!v34)
    {
      v58 = sub_10007CF34();
      v59 = _NRLogIsLevelEnabled();

      v18 = "[NRLinkBluetooth initLinkWithQueue:linkDelegate:nrUUID:pipe:l2CAPChannel:remoteDeviceName:]";
      if (v59)
      {
        v60 = sub_10007CF34();
        _NRLogWithArgs();
      }

      v13 = _os_log_pack_size();
      v15 = &v63 - ((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0);
      v61 = *__error();
      v62 = _os_log_pack_fill();
      *v62 = 136446210;
      *(v62 + 4) = "[NRLinkBluetooth initLinkWithQueue:linkDelegate:nrUUID:pipe:l2CAPChannel:remoteDeviceName:]";
      sub_10007CF34();
      _NRLogAbortWithPack();
      goto LABEL_64;
    }

    v31 = v34;
    v35 = *(v34 + 48);
    v36 = *(a1 + 2007);
    if (v36)
    {
      *(v36 + 16) = (v35 & 8) >> 3;
    }

    v14 = v65;
    v13 = v66;
    v16 = v64;
    v17 = v28;
    if ((v35 & 0x20) != 0)
    {
      LOBYTE(v38) = 1;
      v18 = v63;
      if ((v35 & 0x1000) != 0)
      {
        goto LABEL_26;
      }
    }

    else
    {
      v18 = v63;
      v37 = (v35 & 0x10) != 0 || *(v34 + 16) > 0x12u;
      v38 = (v35 >> 14) & 1 | v37;
      if ((v35 & 0x1000) != 0)
      {
LABEL_26:
        if ((((v35 & 0x2000) != 0) & v38) != 0)
        {
          goto LABEL_32;
        }
      }
    }

    if ((v35 & 8) == 0)
    {
      if ((v35 & 0x10) != 0)
      {
        v40 = 13;
      }

      else
      {
        if (*(v34 + 176))
        {
          if ((v35 & 0x20) != 0)
          {
            v39 = 12;
          }

          else
          {
            v39 = 10;
          }

          *(a1 + 248) = v39;
          if ((*(v34 + 48) & 8) != 0)
          {
            goto LABEL_36;
          }

          goto LABEL_35;
        }

        if ((v35 & 0x20) == 0)
        {
          [a1 reportEvent:3017 detailsFormat:@"Local device without pairing keys %@", v34];
          if (qword_100229088 == -1)
          {
LABEL_41:
            if (_NRLogIsLevelEnabled())
            {
              v45 = sub_10007CF34();
              _NRLogWithArgs();
            }

            v43 = 0;
            goto LABEL_37;
          }

LABEL_64:
          dispatch_once(&qword_100229088, &stru_1001FB1C0);
          goto LABEL_41;
        }

        v40 = 11;
      }

LABEL_34:
      *(a1 + 248) = v40;
      if ((*(v34 + 48) & 8) != 0)
      {
LABEL_36:
        sub_1000891A4(a1);
        v41 = [v15 UUIDString];
        [a1 reportEvent:3000 details:v41];

        v42 = [a1 linkDelegate];
        [v42 linkIsAvailable:a1];

        v43 = a1;
LABEL_37:

        goto LABEL_38;
      }

LABEL_35:
      sub_100168638(v34, (a1 + 2095));
      sub_100167D5C(v31, (a1 + 2111));
      sub_100172608(v31, (a1 + 2127));
      sub_1001727AC(v31, (a1 + 2143));
      goto LABEL_36;
    }

LABEL_32:
    v40 = 20;
    goto LABEL_34;
  }

  v55 = sub_10007CF34();
  v56 = _NRLogIsLevelEnabled();

  if (v56)
  {
    v57 = sub_10007CF34();
    _NRLogWithArgs();
  }

  a1 = 0;
  v43 = 0;
LABEL_38:

  return v43;
}

void sub_1000B6B70(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!*(a1 + 1295))
  {
    v4 = objc_alloc_init(NSMutableArray);
    v5 = *(a1 + 1295);
    *(a1 + 1295) = v4;

    if (!*(a1 + 1295))
    {
      v20 = sub_10007CF34();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      if (IsLevelEnabled)
      {
        v22 = sub_10007CF34();
        _NRLogWithArgs();
      }

LABEL_12:
      _os_log_pack_size();
      __chkstk_darwin();
      v23 = *__error();
      v24 = _os_log_pack_fill();
      *v24 = 136446210;
      *(v24 + 4) = "[NRLinkBluetooth measureLatencyWithCompletion:]";
      sub_10007CF34();
      _NRLogAbortWithPack();
    }
  }

  v6 = objc_alloc_init(NRDLatencyContext);
  if (!v6)
  {
    v17 = sub_10007CF34();
    v18 = _NRLogIsLevelEnabled();

    if (v18)
    {
      v19 = sub_10007CF34();
      _NRLogWithArgs();
    }

    goto LABEL_12;
  }

  v8 = v6;
  objc_setProperty_nonatomic_copy(v6, v7, v3, 8);
  v9 = ++qword_100229068;
  v8->_sequenceNumber = qword_100229068;
  v10 = *(a1 + 32);
  v11 = _NRCopyLogObjectForNRUUID();
  v12 = _NRLogIsLevelEnabled();

  if (v12)
  {
    v13 = *(a1 + 32);
    v14 = _NRCopyLogObjectForNRUUID();
    v25 = [a1 copyDescription];
    sequenceNumber = v8->_sequenceNumber;
    _NRLogWithArgs();
  }

  v28 = 1;
  v29 = bswap64(v9);
  v8->_startTime = sub_100096D88(a1, &v28, 9u, 1);
  [*(a1 + 1295) addObject:v8];
  v15 = dispatch_time(0x8000000000000000, 10000000000);
  v16 = [a1 queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000B6F18;
  block[3] = &unk_1001FBAE8;
  block[4] = a1;
  block[5] = v9;
  dispatch_after(v15, v16, block);
}

void sub_1000B6F28(uint64_t a1, int a2)
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

void sub_1000B7058(id a1)
{
  v1 = os_log_create("com.apple.networkrelay", "");
  v2 = qword_1002290A8;
  qword_1002290A8 = v1;

  _objc_release_x1(v1, v2);
}

void sub_1000B709C(id a1)
{
  v10 = [[NSString alloc] initWithFormat:@"-%s", "676.40.5"];
  if (([(__CFString *)v10 isEqualToString:@"-"]& 1) != 0 || [(__CFString *)v10 isEqualToString:@"-$RC_ProjectSourceVersion"])
  {

    v10 = &stru_1001FDE68;
  }

  v1 = [NSString alloc];
  v2 = getpid();
  if (qword_100229218 != -1)
  {
    dispatch_once(&qword_100229218, &stru_1001FC300);
  }

  v3 = qword_100229210;
  if (qword_100229228 != -1)
  {
    dispatch_once(&qword_100229228, &stru_1001FC320);
  }

  v4 = qword_100229220;
  if (_NRIsAppleInternal())
  {
    v5 = " internal";
  }

  else
  {
    v5 = "";
  }

  v6 = _NRShouldDebugAutoRelease();
  v7 = " (NR_DEBUG_AUTORELEASE)";
  if (!v6)
  {
    v7 = "";
  }

  v8 = [v1 initWithFormat:@"terminusd%@ pid %d built on %s %s, iphoneOS %@ %@%s%s", v10, v2, "Oct 10 2025", "22:08:34", v3, v4, v5, v7];
  v9 = qword_100229098;
  qword_100229098 = v8;
}

id sub_1000B7248(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  os_unfair_lock_lock(&unk_100229090);
  v5 = [[NSMutableDictionary alloc] initWithContentsOfFile:@"/var/mobile/Library/terminus/com.apple.terminus.plist"];
  v6 = v5;
  if (v3)
  {
    v7 = [v3 UUIDString];
    v8 = [v6 objectForKeyedSubscript:v7];

    v9 = [v8 objectForKeyedSubscript:v4];
  }

  else
  {
    v9 = [v5 objectForKeyedSubscript:v4];
  }

  os_unfair_lock_unlock(&unk_100229090);
  if (v9)
  {
    if (qword_1002290B0 != -1)
    {
      dispatch_once(&qword_1002290B0, &stru_1001FB278);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_1002290B0 == -1)
      {
        goto LABEL_14;
      }

      goto LABEL_18;
    }
  }

  else
  {
    if (qword_1002290B0 != -1)
    {
      dispatch_once(&qword_1002290B0, &stru_1001FB278);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_1002290B0 == -1)
      {
LABEL_14:
        _NRLogWithArgs();
        goto LABEL_15;
      }

LABEL_18:
      dispatch_once(&qword_1002290B0, &stru_1001FB278);
      goto LABEL_14;
    }
  }

LABEL_15:

  return v9;
}

void sub_1000B7458(void *a1, void *a2, void *a3)
{
  v15 = a1;
  v5 = a2;
  v6 = a3;
  os_unfair_lock_lock(&unk_100229090);
  v7 = [[NSMutableDictionary alloc] initWithContentsOfFile:@"/var/mobile/Library/terminus/com.apple.terminus.plist"];
  if (!v7)
  {
    v7 = objc_alloc_init(NSMutableDictionary);
    v8 = v15;
    if (v15)
    {
      goto LABEL_3;
    }

LABEL_6:
    [v7 setObject:v6 forKeyedSubscript:v5];
    goto LABEL_9;
  }

  v8 = v15;
  if (!v15)
  {
    goto LABEL_6;
  }

LABEL_3:
  v9 = [v8 UUIDString];
  v10 = [v7 objectForKeyedSubscript:v9];

  if (v10)
  {
    v11 = [v10 mutableCopy];
  }

  else
  {
    v11 = objc_alloc_init(NSMutableDictionary);
  }

  v12 = v11;
  [v11 setObject:v6 forKeyedSubscript:v5];
  v13 = [v15 UUIDString];
  [v7 setObject:v12 forKeyedSubscript:v13];

LABEL_9:
  v14 = sub_10013A364(@"/var/mobile/Library/terminus/com.apple.terminus.plist", v7, 1);
  os_unfair_lock_unlock(&unk_100229090);
  if (v14)
  {
    if (qword_1002290B0 != -1)
    {
      dispatch_once(&qword_1002290B0, &stru_1001FB278);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_1002290B0 == -1)
      {
        goto LABEL_19;
      }

      goto LABEL_23;
    }
  }

  else
  {
    if (qword_1002290B0 != -1)
    {
      dispatch_once(&qword_1002290B0, &stru_1001FB278);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_1002290B0 == -1)
      {
LABEL_19:
        _NRLogWithArgs();
        goto LABEL_20;
      }

LABEL_23:
      dispatch_once(&qword_1002290B0, &stru_1001FB278);
      goto LABEL_19;
    }
  }

LABEL_20:
}

void sub_1000B76C8(void *a1, void *a2)
{
  v11 = a1;
  v3 = a2;
  os_unfair_lock_lock(&unk_100229090);
  v4 = [[NSMutableDictionary alloc] initWithContentsOfFile:@"/var/mobile/Library/terminus/com.apple.terminus.plist"];
  if (!v4)
  {
    os_unfair_lock_unlock(&unk_100229090);
    goto LABEL_25;
  }

  if (v11)
  {
    v5 = [v11 UUIDString];
    v6 = [v4 objectForKeyedSubscript:v5];

    if (v6)
    {
      if (v3)
      {
        v7 = [v6 mutableCopy];
        [v7 removeObjectForKey:v3];
      }

      else
      {
        v7 = 0;
      }

      v8 = [v7 count];
      v9 = [v11 UUIDString];
      if (v8)
      {
        [v4 setObject:v7 forKeyedSubscript:v9];
      }

      else
      {
        [v4 removeObjectForKey:v9];
      }
    }
  }

  else
  {
    [v4 removeObjectForKey:v3];
  }

  v10 = sub_10013A364(@"/var/mobile/Library/terminus/com.apple.terminus.plist", v4, 1);
  os_unfair_lock_unlock(&unk_100229090);
  if (v10)
  {
    if (qword_1002290B0 != -1)
    {
      dispatch_once(&qword_1002290B0, &stru_1001FB278);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_1002290B0 == -1)
      {
        goto LABEL_24;
      }

      goto LABEL_28;
    }
  }

  else
  {
    if (qword_1002290B0 != -1)
    {
      dispatch_once(&qword_1002290B0, &stru_1001FB278);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_1002290B0 == -1)
      {
LABEL_24:
        _NRLogWithArgs();
        goto LABEL_25;
      }

LABEL_28:
      dispatch_once(&qword_1002290B0, &stru_1001FB278);
      goto LABEL_24;
    }
  }

LABEL_25:
}

id sub_1000B794C()
{
  v0 = _os_feature_enabled_impl();
  v1 = sub_1000B7248(0, @"companionAPLAllowed");
  if (v1)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass() & v0)
    {
      v0 = [v1 BOOLValue];
    }

    else
    {
      v0 = 0;
    }
  }

  return v0;
}

uint64_t sub_1000B79D8()
{
  if (!_NRIsAppleInternal())
  {
    return 1;
  }

  os_unfair_lock_lock(&unk_100229090);
  v0 = [[NSDictionary alloc] initWithContentsOfFile:@"/var/mobile/Library/terminus/com.apple.terminus.plist"];
  v1 = v0;
  if (v0)
  {
    v2 = [v0 objectForKeyedSubscript:@"companionLinkEnabled"];
    objc_opt_class();
    v3 = (objc_opt_isKindOfClass() & 1) == 0 || [v2 intValue] != 2;
  }

  else
  {
    v3 = 1;
  }

  os_unfair_lock_unlock(&unk_100229090);

  return v3;
}

void sub_1000B7AA8(uint64_t a1)
{
  os_unfair_lock_lock(&unk_100229090);
  v2 = [[NSMutableDictionary alloc] initWithContentsOfFile:@"/var/mobile/Library/terminus/com.apple.terminus.plist"];
  if (!v2)
  {
    v2 = objc_alloc_init(NSMutableDictionary);
  }

  v16 = v2;
  v3 = [v2 objectForKeyedSubscript:@"companionLinkEnabled"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 intValue];
  }

  else
  {
    v4 = 0;
  }

  v5 = [NSNumber numberWithInt:a1];
  [v16 setObject:v5 forKeyedSubscript:@"companionLinkEnabled"];

  v6 = sub_10013A364(@"/var/mobile/Library/terminus/com.apple.terminus.plist", v16, 1);
  os_unfair_lock_unlock(&unk_100229090);
  v7 = sub_100003490();
  dispatch_async(v7, &stru_1001FAE90);

  objc_opt_self();
  if (qword_1002290C0 != -1)
  {
    dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
  }

  v8 = qword_1002290B8;
  if (v8)
  {
    v9 = sub_100003490();
    dispatch_assert_queue_V2(v9);

    if (sub_1000B79D8())
    {
      sub_1000BAAFC(v8);
    }

    else
    {
      sub_1000BBDC0(v8);
    }
  }

  v10 = [NSString alloc];
  v11 = *(&off_1001FB298 + a1);
  if (v4 >= 3)
  {
    v13 = v10;
    v12 = [[NSString alloc] initWithFormat:@"Unknown[%lld]", v4];
    v10 = v13;
  }

  else
  {
    v12 = *(&off_1001FB298 + v4);
  }

  v14 = " (WRITE FAILED)";
  if (v6)
  {
    v14 = "";
  }

  v15 = [v10 initWithFormat:@"Set companion link to %@ (previously was %@)%s", v11, v12, v14];

  sub_1000059A8(0, 9001, &stru_1001FDE68, v15);
}

void sub_1000B926C(uint64_t a1, int a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (a1)
  {
    v10 = a3;
    v11 = [[NSString alloc] initWithFormat:v10 arguments:&a9];

    sub_1000059A8(0, a2, 0, v11);
  }
}

id sub_1000B9544()
{
  if (qword_1002290F0 != -1)
  {
    dispatch_once(&qword_1002290F0, &stru_1001FB680);
  }

  v1 = qword_1002290E8;

  return v1;
}

void sub_1000B9598(id a1)
{
  v1 = os_log_create("com.apple.networkrelay", "");
  v2 = qword_1002290E8;
  qword_1002290E8 = v1;

  _objc_release_x1(v1, v2);
}

void sub_1000B98D8(uint64_t a1)
{
  if (a1)
  {
    v1 = a1;
    objc_opt_self();
    if (qword_100229410 != -1)
    {
      dispatch_once(&qword_100229410, &stru_1001FCD98);
    }

    v2 = qword_100229408;
    sub_10015A238(v2, @"NRLinkDirector-AppVPN");

    v72 = objc_alloc_init(NSMutableArray);
    v96 = 0u;
    v97 = 0u;
    v98 = 0u;
    v99 = 0u;
    obj = *(v1 + 224);
    v63 = [obj countByEnumeratingWithState:&v96 objects:v108 count:16];
    if (v63)
    {
      v62 = *v97;
      v69 = v1;
      do
      {
        v3 = 0;
        do
        {
          if (*v97 != v62)
          {
            objc_enumerationMutation(obj);
          }

          v64 = v3;
          v68 = *(*(&v96 + 1) + 8 * v3);
          v4 = [*(v1 + 224) objectForKeyedSubscript:?];
          v5 = sub_1000FE460(v4);

          v94 = 0u;
          v95 = 0u;
          v92 = 0u;
          v93 = 0u;
          v65 = v5;
          v71 = [v65 countByEnumeratingWithState:&v92 objects:v107 count:16];
          if (v71)
          {
            v70 = *v93;
            do
            {
              for (i = 0; i != v71; i = i + 1)
              {
                if (*v93 != v70)
                {
                  objc_enumerationMutation(v65);
                }

                v7 = *(*(&v92 + 1) + 8 * i);
                v73 = i;
                if (*(v1 + 336))
                {
                  v8 = [NEPolicyRouteRule routeRuleWithAction:6 forType:7];
                  [v8 setNetworkAgentUUID:v7];
                  [v72 addObject:v8];
                  v9 = sub_100163A30(NRDLocalDevice, v68);
                  v10 = v9;
                  if (v9)
                  {
                    v11 = *(v9 + 144);
                  }

                  else
                  {
                    v11 = 0;
                  }

                  v12 = v11;
                  v13 = [v12 proxyProviderCriteria];
                  v14 = [v13 excludeVPNClients];

                  if (v14)
                  {
                    v66 = v10;
                    v67 = v8;
                    v15 = [NEPolicyResult removeNetworkAgentUUID:v7];
                    v88 = 0u;
                    v89 = 0u;
                    v90 = 0u;
                    v91 = 0u;
                    v74 = *(v1 + 336);
                    v16 = [v74 countByEnumeratingWithState:&v88 objects:v106 count:16];
                    if (v16)
                    {
                      v17 = v16;
                      v18 = *v89;
                      do
                      {
                        for (j = 0; j != v17; j = j + 1)
                        {
                          if (*v89 != v18)
                          {
                            objc_enumerationMutation(v74);
                          }

                          v20 = *(*(&v88 + 1) + 8 * j);
                          v21 = [NEPolicy alloc];
                          v22 = +[NEPolicyCondition allInterfaces];
                          v105[0] = v22;
                          v23 = [NEPolicyCondition effectiveApplication:v20];
                          v105[1] = v23;
                          v24 = [NSArray arrayWithObjects:v105 count:2];
                          v25 = [v21 initWithOrder:5 result:v15 conditions:v24];

                          objc_opt_self();
                          if (qword_100229410 != -1)
                          {
                            dispatch_once(&qword_100229410, &stru_1001FCD98);
                          }

                          v26 = qword_100229408;
                          v27 = sub_100159E00(v26, @"NRLinkDirector-AppVPN", v25);
                        }

                        v17 = [v74 countByEnumeratingWithState:&v88 objects:v106 count:16];
                      }

                      while (v17);
                    }

                    v1 = v69;
                    i = v73;
                    v10 = v66;
                    v8 = v67;
                  }
                }

                if (*(v1 + 320))
                {
                  v28 = [NEPolicyRouteRule routeRuleWithAction:6 forNetworkAgent:?];
                  [v28 setNetworkAgentUUID:v7];
                  v75 = v28;
                  [v72 addObject:v28];
                  v86 = 0u;
                  v87 = 0u;
                  v84 = 0u;
                  v85 = 0u;
                  v29 = *(v1 + 328);
                  v30 = [v29 countByEnumeratingWithState:&v84 objects:v104 count:16];
                  if (v30)
                  {
                    v31 = v30;
                    v32 = *v85;
                    do
                    {
                      for (k = 0; k != v31; k = k + 1)
                      {
                        if (*v85 != v32)
                        {
                          objc_enumerationMutation(v29);
                        }

                        v34 = [NEPolicyCondition effectiveApplication:*(*(&v84 + 1) + 8 * k)];
                        v35 = [NEPolicyResult removeNetworkAgentUUID:v7];
                        v36 = [NEPolicy alloc];
                        v37 = +[NEPolicyCondition allInterfaces];
                        v103[0] = v37;
                        v103[1] = v34;
                        v38 = [NSArray arrayWithObjects:v103 count:2];
                        v39 = [v36 initWithOrder:5 result:v35 conditions:v38];

                        objc_opt_self();
                        if (qword_100229410 != -1)
                        {
                          dispatch_once(&qword_100229410, &stru_1001FCD98);
                        }

                        v40 = qword_100229408;
                        v41 = sub_100159E00(v40, @"NRLinkDirector-AppVPN", v39);
                      }

                      v31 = [v29 countByEnumeratingWithState:&v84 objects:v104 count:16];
                    }

                    while (v31);
                  }

                  v1 = v69;
                  i = v73;
                }
              }

              v71 = [v65 countByEnumeratingWithState:&v92 objects:v107 count:16];
            }

            while (v71);
          }

          v3 = v64 + 1;
        }

        while ((v64 + 1) != v63);
        v63 = [obj countByEnumeratingWithState:&v96 objects:v108 count:16];
      }

      while (v63);
    }

    if ([v72 count])
    {
      v82 = 0uLL;
      v83 = 0uLL;
      v80 = 0uLL;
      v81 = 0uLL;
      v42 = *(v1 + 224);
      v43 = [v42 countByEnumeratingWithState:&v80 objects:v102 count:16];
      if (v43)
      {
        v44 = v43;
        v45 = *v81;
        do
        {
          for (m = 0; m != v44; m = m + 1)
          {
            if (*v81 != v45)
            {
              objc_enumerationMutation(v42);
            }

            v47 = [*(v1 + 224) objectForKeyedSubscript:*(*(&v80 + 1) + 8 * m)];
            sub_100114D18(v47, 1);
          }

          v44 = [v42 countByEnumeratingWithState:&v80 objects:v102 count:16];
        }

        while (v44);
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

        _NRLogWithArgs();
      }

      v48 = [NEPolicy alloc];
      v49 = [NEPolicyResult routeRules:v72];
      v50 = +[NEPolicyCondition allInterfaces];
      v101 = v50;
      v51 = [NSArray arrayWithObjects:&v101 count:1];
      v52 = [v48 initWithOrder:5 result:v49 conditions:v51];

      objc_opt_self();
      if (qword_100229410 != -1)
      {
        dispatch_once(&qword_100229410, &stru_1001FCD98);
      }

      v53 = qword_100229408;
      v54 = sub_100159E00(v53, @"NRLinkDirector-AppVPN", v52);
    }

    else
    {
      v78 = 0uLL;
      v79 = 0uLL;
      v76 = 0uLL;
      v77 = 0uLL;
      v52 = *(v1 + 224);
      v56 = [v52 countByEnumeratingWithState:&v76 objects:v100 count:16];
      if (v56)
      {
        v57 = v56;
        v58 = *v77;
        do
        {
          for (n = 0; n != v57; n = n + 1)
          {
            if (*v77 != v58)
            {
              objc_enumerationMutation(v52);
            }

            v60 = [*(v1 + 224) objectForKeyedSubscript:*(*(&v76 + 1) + 8 * n)];
            sub_100114D18(v60, 0);
          }

          v57 = [v52 countByEnumeratingWithState:&v76 objects:v100 count:16];
        }

        while (v57);
      }
    }

    objc_opt_self();
    if (qword_100229410 != -1)
    {
      dispatch_once(&qword_100229410, &stru_1001FCD98);
    }

    v55 = qword_100229408;
    sub_10015A52C(v55);
  }
}

id sub_1000BA648()
{
  objc_opt_self();
  if (qword_1002290C0 != -1)
  {
    dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
  }

  v0 = qword_1002290B8;

  return v0;
}

void sub_1000BA6A0(id a1)
{
  v1 = sub_1000BA6F0([NRLinkDirector alloc]);
  v2 = qword_1002290B8;
  qword_1002290B8 = v1;

  objc_opt_self();
  byte_1002290C8 = 1;
}

void *sub_1000BA6F0(void *a1)
{
  v1 = a1;
  if (a1)
  {
    v2 = sub_100003490();
    dispatch_assert_queue_V2(v2);

    v26.receiver = v1;
    v26.super_class = NRLinkDirector;
    v3 = objc_msgSendSuper2(&v26, "init");
    if (!v3)
    {
      v20 = sub_1000B9544();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      if (IsLevelEnabled)
      {
        v22 = sub_1000B9544();
        _NRLogWithArgs();
      }

      _os_log_pack_size();
      v23 = *__error();
      v24 = _os_log_pack_fill();
      *v24 = 136446210;
      *(v24 + 4) = "[NRLinkDirector initDirector]";
      sub_1000B9544();
      _NRLogAbortWithPack();
    }

    v4 = v3;
    v5 = objc_alloc_init(NSMutableDictionary);
    v6 = v4[28];
    v4[28] = v5;

    v7 = objc_alloc_init(NSMutableSet);
    v8 = v4[29];
    v4[29] = v7;

    v9 = objc_alloc_init(NSMutableSet);
    v10 = v4[30];
    v4[30] = v9;

    v11 = objc_alloc_init(NSMutableSet);
    v12 = v4[31];
    v4[31] = v11;

    sub_1000059A8(0, 1000, 0, 0);
    *(v4 + 28) = -1;
    v13 = sub_100003490();
    v14 = v4[17];
    v4[17] = v13;

    v15 = v4[17];
    v16 = v4;
    v25 = v16;
    v17 = v15;
    *(v16 + 17) = ne_session_is_always_on_vpn_enabled();

    v18 = sub_100003490();
    dispatch_assert_queue_V2(v18);

    if (sub_1000B79D8())
    {
      sub_1000BAAFC(v16);
    }

    else
    {
      sub_1000BBDC0(v16);
    }

    v1 = v16;
  }

  return v1;
}

void sub_1000BA974(uint64_t a1, int a2)
{
  if (*(a1 + 32))
  {
    v4 = a2 ? 1037 : 1038;
    sub_1000059A8(0, v4, 0, 0);
    v5 = *(a1 + 32);
    if (v5)
    {
      if (*(v5 + 17) != a2)
      {
        *(v5 + 17) = a2;
        v6 = *(a1 + 32);
        if (v6)
        {
          v7 = sub_100003490();
          dispatch_assert_queue_V2(v7);

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

          sub_1000BBDC0(v6);
          v8 = sub_100003490();
          dispatch_assert_queue_V2(v8);

          if (sub_1000B79D8())
          {

            sub_1000BAAFC(v6);
          }

          else
          {

            sub_1000BBDC0(v6);
          }
        }
      }
    }
  }
}

void sub_1000BAAFC(id *a1)
{
  v2 = sub_100003490();
  dispatch_assert_queue_V2(v2);

  if (*(a1 + 13) == 1)
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

    return;
  }

  *(a1 + 13) = 1;
  sub_1000059A8(0, 1001, 0, 0);
  *(a1 + 10) = 0;
  if (_os_feature_enabled_impl())
  {
    *(a1 + 10) = 1;
    HIDWORD(qword_100228A78) = 64;
  }

  if (*(a1 + 17) == 1)
  {
    sub_1000059A8(0, 1032, 0, 0);
  }

  v3 = sub_100003490();
  dispatch_assert_queue_V2(v3);

  val = a1;
  if (!_NRIsAppleInternal())
  {
    goto LABEL_53;
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

    v112 = 451;
    v110 = "";
    v111 = "[NRLinkDirector setupManagers]";
    _NRLogWithArgs();
  }

  v4 = [NRDTestServer alloc];
  v5 = a1[17];
  v6 = sub_10006D2A4(&v4->super.isa, v5);
  v7 = a1[26];
  a1[26] = v6;

  v8 = a1[26];
  if (!v8)
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

    v8 = a1[26];
    if (!v8)
    {
      goto LABEL_42;
    }
  }

  if (*(v8 + 8) != 1)
  {
    *(v8 + 8) = 1;
    sub_1000059A8(0, 9002, 0, 0);
    if (*(v8 + 24))
    {
      if (*(v8 + 32))
      {
        goto LABEL_37;
      }
    }

    else
    {
      v9 = sub_10006E370(v8);
      v10 = *(v8 + 24);
      *(v8 + 24) = v9;

      if (*(v8 + 32))
      {
LABEL_37:
        if (*(v8 + 40))
        {
          goto LABEL_42;
        }

LABEL_41:
        application_service_quic = nw_parameters_create_application_service_quic();
        v14 = nw_parameters_copy_default_protocol_stack(application_service_quic);
        nw_protocol_stack_iterate_application_protocols(v14, &stru_1001FACF0);
        host_with_numeric_port = nw_endpoint_create_host_with_numeric_port();
        nw_parameters_set_local_endpoint(application_service_quic, host_with_numeric_port);
        memset(out, 0, sizeof(out));
        uuid_generate(out);
        application_service = nw_endpoint_create_application_service();
        v17 = *(v8 + 16);
        v18 = nw_service_connector_create_with_endpoint();

        block.receiver = _NSConcreteStackBlock;
        block.super_class = 3221225472;
        v117 = sub_10006E45C;
        v118 = &unk_1001FACB0;
        v19 = v18;
        v119[0] = v19;
        v119[1] = v8;
        nw_service_connector_set_service_available_block();
        nw_service_connector_start();
        v20 = *(v8 + 40);
        *(v8 + 40) = v19;
        v21 = v19;

        goto LABEL_42;
      }
    }

    v11 = sub_10006E370(v8);
    v12 = *(v8 + 32);
    *(v8 + 32) = v11;

    if (*(v8 + 40))
    {
      goto LABEL_42;
    }

    goto LABEL_41;
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

    v112 = 252;
    v110 = "";
    v111 = "[NRDTestServer start]";
    _NRLogWithArgs();
  }

LABEL_42:
  v22 = sub_1000B7248(0, @"FixedInterfacePeerIDSDeviceID");
  v23 = sub_1000B7248(0, @"FixedInterfaceName");
  v24 = sub_1000B7248(0, @"FixedInterfacePeerAddress");
  if (!v22 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    if (!v23 || !v24 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {

      a1 = val;
LABEL_53:
      if (*(a1 + 17) == 1)
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

          v112 = 499;
          v110 = "";
          v111 = "[NRLinkDirector setupManagers]";
          _NRLogWithArgs();
        }

        goto LABEL_92;
      }

      if (qword_100229238 != -1)
      {
        dispatch_once(&qword_100229238, &stru_1001FC340);
      }

      if (byte_100229230)
      {
        v102 = sub_1000B9544();
        IsLevelEnabled = _NRLogIsLevelEnabled();

        if (!IsLevelEnabled)
        {
          goto LABEL_69;
        }

        v28 = sub_1000B9544();
        v112 = 508;
        v110 = "";
        v111 = "[NRLinkDirector setupManagers]";
        _NRLogWithArgs();
LABEL_68:

        a1 = val;
LABEL_69:
        objc_opt_self();
        if (qword_1002294C8 != -1)
        {
          dispatch_once(&qword_1002294C8, &stru_1001FD250);
        }

        v50 = qword_1002294C0;
        *out = _NSConcreteStackBlock;
        *&out[8] = 3221225472;
        *&v121 = sub_1000C8648;
        *(&v121 + 1) = &unk_1001FD3C8;
        *&v122 = a1;
        sub_1001816DC(v50, out);

        sub_1000C8520(val);
        if (!val[25])
        {
          v51 = [NROnDemandLinkSetupManager alloc];
          v52 = val[17];
          v53 = sub_10001A74C(&v51->super.isa, v52);
          v54 = val[25];
          val[25] = v53;

          v55 = val[25];
          if (v55)
          {
            if ((v55[8] & 1) == 0)
            {
              v55[8] = 1;
              v56 = v55 + 20;
              if (*(v55 + 5) == -1)
              {
                objc_initWeak(&location, v55);
                block.receiver = _NSConcreteStackBlock;
                block.super_class = 3221225472;
                v117 = sub_10001C0C4;
                v118 = &unk_1001FD278;
                objc_copyWeak(v119, &location);
                v57 = objc_retainBlock(&block);
                v58 = *(v55 + 4);
                v59 = notify_register_dispatch("com.apple.private.restrict-post.CoreTelephony.Slicing.LLPHS.State", v55 + 5, v58, v57);

                if (v59)
                {
                  *v56 = -1;
                  if (qword_100228EC8 != -1)
                  {
                    dispatch_once(&qword_100228EC8, &stru_1001FA448);
                  }

                  v60 = qword_100228EC0;
                  v61 = _NRLogIsLevelEnabled();

                  if (v61)
                  {
                    if (qword_100228EC8 != -1)
                    {
                      dispatch_once(&qword_100228EC8, &stru_1001FA448);
                    }

                    v62 = qword_100228EC0;
                    v110 = "com.apple.private.restrict-post.CoreTelephony.Slicing.LLPHS.State";
                    v111 = v59;
                    _NRLogWithArgs();
                  }
                }

                else
                {
                  (v57[1].receiver)(v57, *v56);
                }

                objc_destroyWeak(v119);
                objc_destroyWeak(&location);
              }

              objc_initWeak(&location, v55);
              v63 = *(v55 + 4);
              block.receiver = _NSConcreteStackBlock;
              block.super_class = 3221225472;
              v117 = sub_10001A8F8;
              v118 = &unk_1001FC730;
              v64 = v63;
              objc_copyWeak(v119, &location);
              dispatch_async(v64, &block);

              objc_destroyWeak(v119);
              objc_destroyWeak(&location);
            }
          }
        }

        goto LABEL_92;
      }

      v27 = [NRLinkManagerBluetooth alloc];
      v28 = a1[17];
      v29 = a1;
      if (!v27)
      {
        goto LABEL_140;
      }

      if (v28)
      {
        dispatch_assert_queue_V2(v28);
        block.receiver = v27;
        block.super_class = NRLinkManagerBluetooth;
        v30 = objc_msgSendSuper2(&block, "initManagerWithQueue:managerDelegate:", v28, v29);
        v31 = v30;
        if (v30)
        {
          v30[37] = 1;
          v30[8] = 1;
          *(v30 + 3) = 1001;
          v32 = objc_alloc_init(NSMutableSet);
          v33 = *(v31 + 40);
          *(v31 + 40) = v32;

          [v31 reportEvent:2001];
          sub_10003192C(v31);
          [v31 reportEvent:2002];
          *(v31 + 12) = 1003;
          v34 = [[NSMutableDictionary alloc] initWithCapacity:3];
          v35 = *(v31 + 88);
          *(v31 + 88) = v34;

          v36 = [[NSMutableDictionary alloc] initWithCapacity:3];
          v37 = *(v31 + 96);
          *(v31 + 96) = v36;

          v38 = objc_alloc_init(NSMutableDictionary);
          v39 = *(v31 + 112);
          *(v31 + 112) = v38;

          v40 = objc_alloc_init(NSMutableDictionary);
          v41 = *(v31 + 120);
          *(v31 + 120) = v40;

          v42 = objc_alloc_init(NSMutableDictionary);
          v43 = *(v31 + 176);
          *(v31 + 176) = v42;

          objc_storeWeak((v31 + 128), v29);
          v44 = objc_alloc_init(NSMutableSet);
          v45 = *(v31 + 184);
          *(v31 + 184) = v44;

          v46 = objc_alloc_init(NSMutableDictionary);
          v47 = *(v31 + 192);
          *(v31 + 192) = v46;

          v27 = v31;
          v48 = v27;
        }

        else
        {
          v107 = sub_10002D6B4();
          v108 = _NRLogIsLevelEnabled();

          if (v108)
          {
            v109 = sub_10002D6B4();
            _NRLogWithArgs();
          }

          v27 = 0;
          v48 = 0;
        }

        goto LABEL_67;
      }

      v104 = sub_10002D6B4();
      v105 = _NRLogIsLevelEnabled();

      if (v105)
      {
        v106 = sub_10002D6B4();
        v110 = "[NRLinkManagerBluetooth initManagerWithQueue:managerDelegate:bluetoothManagerDelegate:]";
        _NRLogWithArgs();

        v48 = 0;
      }

      else
      {
LABEL_140:
        v48 = 0;
      }

LABEL_67:

      v49 = v29[5];
      v29[5] = v48;

      goto LABEL_68;
    }
  }

  *(val + 8) = 1;
  objc_storeStrong(val + 10, v24);
  objc_storeStrong(val + 9, v23);
  objc_storeStrong(val + 11, v22);
  v25 = sub_10016C8BC();
  if ([v25 count])
  {
    objc_opt_self();
    if (qword_1002294C8 != -1)
    {
      dispatch_once(&qword_1002294C8, &stru_1001FD250);
    }

    v26 = qword_1002294C0;
    block.receiver = _NSConcreteStackBlock;
    block.super_class = 3221225472;
    v117 = sub_1000C84A8;
    v118 = &unk_1001FD3C8;
    v119[0] = val;
    sub_1001816DC(v26, &block);

    sub_1000C8520(val);
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

      v112 = 477;
      v110 = "";
      v111 = "[NRLinkDirector setupManagers]";
      _NRLogWithArgs();
    }
  }

LABEL_92:
  if (_NRIsAppleInternal())
  {
    objc_initWeak(out, val);
    block.receiver = _NSConcreteStackBlock;
    block.super_class = 3221225472;
    v117 = sub_1000C8348;
    v118 = &unk_1001FB5D8;
    objc_copyWeak(v119, out);
    v65 = objc_retainBlock(&block);
    v66 = +[NSDistributedNotificationCenter defaultCenter];
    v67 = [v66 addObserverForName:@"NanoSettingsPerpetualMeadowStandaloneWifiPreferencesChangedNotification" object:0 queue:0 usingBlock:v65];
    v68 = val[37];
    val[37] = v67;

    v69 = +[NSDistributedNotificationCenter defaultCenter];
    v70 = [v69 addObserverForName:@"NanoSettingsPerpetualMeadowStandaloneCellularPreferencesChangedNotification" object:0 queue:0 usingBlock:v65];
    v71 = val[38];
    val[38] = v70;

    objc_destroyWeak(v119);
    objc_destroyWeak(out);
  }

  objc_opt_self();
  objc_opt_self();
  v72 = sub_100003490();
  dispatch_assert_queue_V2(v72);

  sub_1001619D8();
  v73 = objc_alloc_init(NSMutableArray);
  *out = 0u;
  v121 = 0u;
  v122 = 0u;
  v123 = 0u;
  v74 = qword_100229428;
  v75 = [v74 countByEnumeratingWithState:out objects:&block count:16];
  if (v75)
  {
    v76 = *v121;
    do
    {
      for (i = 0; i != v75; i = i + 1)
      {
        if (*v121 != v76)
        {
          objc_enumerationMutation(v74);
        }

        v78 = *(*&out[8] + 8 * i);
        v79 = [qword_100229428 objectForKeyedSubscript:{v78, v110, v111, v112}];
        v80 = v79;
        if (v79 && (*(v79 + 48) & 1) != 0)
        {
          [v73 addObject:v78];
        }
      }

      v75 = [v74 countByEnumeratingWithState:out objects:&block count:16];
    }

    while (v75);
  }

  if (![v73 count])
  {
    goto LABEL_130;
  }

  v81 = +[NRDeviceOperationalProperties copyPropertiesForDefaultPairedPhone];
  sub_10013E868(v81);
  v122 = 0u;
  v123 = 0u;
  *out = 0u;
  v121 = 0u;
  v82 = v73;
  v83 = [v82 countByEnumeratingWithState:out objects:&block count:16];
  if (!v83)
  {

    goto LABEL_129;
  }

  v114 = 0;
  v84 = *v121;
  do
  {
    for (j = 0; j != v83; j = j + 1)
    {
      if (*v121 != v84)
      {
        objc_enumerationMutation(v82);
      }

      v86 = sub_100163A30(NRDLocalDevice, *(*&out[8] + 8 * j));
      v87 = v86;
      if (v86 && (*(v86 + 48) & 1) != 0 && *(v86 + 32))
      {
        v88 = *(v86 + 144);
        if (!v88)
        {
          if (!v81)
          {
            goto LABEL_124;
          }

          v93 = *(v87 + 24);
          v94 = [v87 description];
          sub_1000059A8(v93, 5011, v94, 0);

          [v87 setOperationalProp:v81];
          goto LABEL_123;
        }

        v89 = [v88 allowedLinkTypes];
        v90 = [v81 allowedLinkTypes];
        v91 = [v89 isEqualToArray:v90];

        if (v91)
        {
          v92 = sub_1000B794C() ? [*(v87 + 144) usesTLS] : 0;
          [v81 setUsesTLS:{v92, v110, v111}];
          v95 = [v81 usesTLS];
          v96 = [*(v87 + 144) usesTLS];
          if (([*(v87 + 144) isEqual:v81] & 1) == 0)
          {
            v111 = v81;
            sub_1001694E4(v87, 5012, @"old: %@ new: %@", v97, v98, v99, v100, v101, *(v87 + 144));
            [*(v87 + 144) mergeProperties:v81];
            *(v87 + 15) = 0;
            if (v95 != v96)
            {
              sub_100169594(v87);
            }

LABEL_123:
            v114 = 1;
          }
        }
      }

LABEL_124:
    }

    v83 = [v82 countByEnumeratingWithState:out objects:&block count:16];
  }

  while (v83);

  if (v114)
  {
    sub_1001629FC(NRDLocalDevice, 1);
  }

LABEL_129:

LABEL_130:
  sub_1000BC670(val);

  sub_1000059A8(0, 1002, 0, 0);
}

void sub_1000BBD88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, id a31)
{
  objc_destroyWeak((v31 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000BBDC0(uint64_t a1)
{
  v2 = sub_100003490();
  dispatch_assert_queue_V2(v2);

  if (*(a1 + 13))
  {
    *(a1 + 13) = 0;
    sub_1000059A8(0, 1003, 0, 0);
    *(a1 + 10) = 0;
    [*(a1 + 40) cancel];
    v3 = *(a1 + 40);
    *(a1 + 40) = 0;

    v4 = *(a1 + 56);
    if (v4)
    {
      [v4 cancel];
      v5 = *(a1 + 56);
      *(a1 + 56) = 0;
    }

    v6 = *(a1 + 48);
    if (v6)
    {
      [v6 cancel];
      v7 = *(a1 + 48);
      *(a1 + 48) = 0;
    }

    v8 = *(a1 + 192);
    if (v8)
    {
      [v8 cancel];
      v9 = *(a1 + 192);
      *(a1 + 192) = 0;
    }

    v10 = *(a1 + 200);
    if (v10)
    {
      if ((*(v10 + 9) & 1) == 0)
      {
        *(v10 + 9) = 1;
        v11 = *(v10 + 48);
        if (v11)
        {
          [v11 invalidate];
          v12 = *(v10 + 48);
          *(v10 + 48) = 0;
        }

        sub_10001A1FC(v10);
        v10 = *(a1 + 200);
      }

      *(a1 + 200) = 0;
    }

    v13 = *(a1 + 64);
    if (v13)
    {
      [v13 cancel];
      v14 = *(a1 + 64);
      *(a1 + 64) = 0;
    }

    sub_1000BC1B0(a1);
    sub_1000BC35C(a1);
    v15 = *(a1 + 216);
    if (v15)
    {
      sub_100185548(v15);
      v16 = *(a1 + 216);
      *(a1 + 216) = 0;
    }

    v17 = *(a1 + 96);
    if (v17)
    {
      sub_100073EC0(v17);
      v18 = *(a1 + 96);
      *(a1 + 96) = 0;
    }

    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v19 = *(a1 + 224);
    v20 = [v19 countByEnumeratingWithState:&v31 objects:v35 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v32;
      do
      {
        for (i = 0; i != v21; i = i + 1)
        {
          if (*v32 != v22)
          {
            objc_enumerationMutation(v19);
          }

          v24 = [*(a1 + 224) objectForKeyedSubscript:*(*(&v31 + 1) + 8 * i)];
          sub_100113628(v24);
        }

        v21 = [v19 countByEnumeratingWithState:&v31 objects:v35 count:16];
      }

      while (v21);
    }

    [*(a1 + 224) removeAllObjects];
    sub_1000BC44C(a1);
    sub_1000BC590(a1);
    v25 = *(a1 + 288);
    if (v25)
    {
      dispatch_source_cancel(v25);
      v26 = *(a1 + 288);
      *(a1 + 288) = 0;
    }

    v27 = +[NSDistributedNotificationCenter defaultCenter];
    [v27 removeObserver:*(a1 + 296) name:@"NanoSettingsPerpetualMeadowStandaloneWifiPreferencesChangedNotification" object:0];

    v28 = +[NSDistributedNotificationCenter defaultCenter];
    [v28 removeObserver:*(a1 + 304) name:@"NanoSettingsPerpetualMeadowStandaloneCellularPreferencesChangedNotification" object:0];

    objc_opt_self();
    if (qword_100229410 != -1)
    {
      dispatch_once(&qword_100229410, &stru_1001FCD98);
    }

    v29 = qword_100229408;
    sub_10015A238(v29, @"NRLinkDirector-Drop");

    objc_opt_self();
    if (qword_100229410 != -1)
    {
      dispatch_once(&qword_100229410, &stru_1001FCD98);
    }

    v30 = qword_100229408;
    sub_10015A52C(v30);
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

void sub_1000BC1B0(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 176);
    if (v2)
    {
      dispatch_source_cancel(v2);
      v3 = *(a1 + 176);
      *(a1 + 176) = 0;
    }

    if (*(a1 + 144))
    {
      nw_shoes_server_cancel();
      v4 = *(a1 + 144);
      *(a1 + 144) = 0;

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

      objc_opt_self();
      if (qword_100229410 != -1)
      {
        dispatch_once(&qword_100229410, &stru_1001FCD98);
      }

      v5 = qword_100229408;
      sub_10015A238(v5, @"NRLinkDirector-skip-privacy-proxy");

      objc_opt_self();
      if (qword_100229410 != -1)
      {
        dispatch_once(&qword_100229410, &stru_1001FCD98);
      }

      v6 = qword_100229408;
      sub_10015A52C(v6);
    }
  }
}

void sub_1000BC35C(uint64_t a1)
{
  if (*(a1 + 152))
  {
    nw_masque_server_cancel();
    v2 = *(a1 + 152);
    *(a1 + 152) = 0;

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

  v3 = *(a1 + 168);
  *(a1 + 168) = 0;
}

uint64_t sub_1000BC44C(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = sub_100003490();
  dispatch_assert_queue_V2(v2);

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = *(a1 + 224);
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    LODWORD(v6) = 0;
    v7 = *v12;
    do
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = [*(a1 + 224) objectForKeyedSubscript:{*(*(&v11 + 1) + 8 * v8), v11}];
        v6 = sub_100114094(v9) + v6;

        v8 = v8 + 1;
      }

      while (v5 != v8);
      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

uint64_t sub_1000BC590(uint64_t result)
{
  if (*(result + 28) != -1)
  {
    v1 = result;
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

    result = notify_cancel(*(v1 + 28));
    *(v1 + 28) = -1;
  }

  return result;
}

void sub_1000BC670(char *a1)
{
  if (!a1)
  {
    return;
  }

  if (a1[13])
  {
    if (a1[12] == 1)
    {
      if (qword_1002290F0 != -1)
      {
        dispatch_once(&qword_1002290F0, &stru_1001FB680);
      }

      if (_NRLogIsLevelEnabled())
      {
        if (qword_1002290F0 == -1)
        {
          goto LABEL_13;
        }

        goto LABEL_399;
      }

      return;
    }

    v2 = sub_10016C8BC();
    val = a1;
    v3 = *(a1 + 25);
    if (v3)
    {
      v311 = sub_10001A324(*(a1 + 25));
      if ([v311 count])
      {
        v4 = sub_100003490();
        block = _NSConcreteStackBlock;
        v384 = 3221225472;
        v385 = sub_10001C338;
        v386 = &unk_1001FD3C8;
        v387 = v3;
        dispatch_async(v4, &block);
      }

      if ([v311 count])
      {
        v5 = [[NSMutableArray alloc] initWithArray:v2];
        [v5 removeObjectsInArray:v311];

        v2 = v5;
      }
    }

    else
    {
      v311 = 0;
    }

    _NRUpdateNRUUIDsEligibleForLogObjects();
    *location = 0u;
    v372 = 0u;
    v373 = 0u;
    v374 = 0u;
    obj = v2;
    v6 = [(__CFString *)obj countByEnumeratingWithState:location objects:&block count:16];
    if (v6)
    {
      v7 = *v372;
LABEL_22:
      v8 = 0;
      while (1)
      {
        if (*v372 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = sub_100163A30(NRDLocalDevice, *(location[1] + v8));
        v10 = v9;
        if (!v9 || (*(v9 + 48) & 2) == 0)
        {
          goto LABEL_31;
        }

        v11 = *(v9 + 144);
        if ([v11 proxyCapability] == 2)
        {
        }

        else
        {
          v12 = v10[18];
          v13 = [v12 proxyCapability] == 1;

          if (!v13)
          {
            goto LABEL_31;
          }
        }

        v14 = v10[18];
        v15 = [v14 usesTLS];

        if (v15)
        {
          v16 = v10[18];
          v17 = [v16 proxyCapability];

          if (*(val + 43))
          {
            goto LABEL_77;
          }

          *&v367 = kSecAttrKeyType;
          *(&v367 + 1) = kSecAttrKeySizeInBits;
          *&v375 = kSecAttrKeyTypeECSECPrimeRandom;
          *(&v375 + 1) = &off_100209C08;
          v18 = [NSDictionary dictionaryWithObjects:&v375 forKeys:&v367 count:2];
          RandomKey = SecKeyCreateRandomKey(v18, 0);
          v20 = SecKeyCopyPublicKey(RandomKey);
          v21 = NRCreateLocalIdentity();
          v22 = *(val + 43);
          *(val + 43) = v21;

          v23 = *(val + 43);
          if (v23)
          {
            v24 = sec_identity_copy_ref(v23);
            if (v24)
            {
              if (v17 != 2)
              {
                goto LABEL_369;
              }

              objc_opt_self();
              if (qword_1002294C8 != -1)
              {
                dispatch_once(&qword_1002294C8, &stru_1001FD250);
              }

              v25 = qword_1002294C0;
              v26 = v25;
              if (v25)
              {
                dispatch_assert_queue_V2(v25[2]);
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

                  v308 = 382;
                  LogString = @"local-identity";
                  v305 = "";
                  v306 = "[NRDKeyManager saveEphemeralLocalIdentityToKeychain:persistentReference:]";
                  _NRLogWithArgs();
                }

                *&v379 = kSecClass;
                *(&v379 + 1) = kSecAttrLabel;
                from = kSecClassIdentity;
                v362 = @"local-identity";
                v380 = __PAIR128__(kSecAttrAccessible, kSecAttrAccessGroup);
                v363 = @"com.apple.terminusd.local-identity";
                v364 = kSecAttrAccessibleAlwaysThisDeviceOnlyPrivate;
                *&v381 = kSecValueRef;
                *(&v381 + 1) = kSecReturnPersistentRef;
                v365 = v24;
                v366 = &__kCFBooleanTrue;
                v27 = [NSDictionary dictionaryWithObjects:&from forKeys:&v379 count:6, v305, v306, v308, LogString];
                result[0] = 0;
                v28 = SecItemAdd(v27, result);
                if (v28 == -25299 || !result[0])
                {
                  sub_100181D24(v26);
                  result[0] = 0;
                  v28 = SecItemAdd(v27, result);
                }

                if (v28)
                {
                  if (v28 == -25308)
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

                      v308 = 417;
                      v305 = "";
                      v306 = "[NRDKeyManager saveEphemeralLocalIdentityToKeychain:persistentReference:]";
                      _NRLogWithArgs();
                    }
                  }

                  else
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

                      v305 = v28;
                      _NRLogWithArgs();
                    }
                  }
                }

                else
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

                    v308 = 408;
                    LogString = result[0];
                    v305 = "";
                    v306 = "[NRDKeyManager saveEphemeralLocalIdentityToKeychain:persistentReference:]";
                    _NRLogWithArgs();
                  }

                  if (result[0])
                  {
                    v272 = CFGetTypeID(result[0]);
                    if (v272 == CFDataGetTypeID())
                    {
                      v273 = *(val + 15);
                      *(val + 15) = result[0];
                    }
                  }
                }
              }

              if (*(val + 15))
              {
                if (qword_1002290F0 != -1)
                {
                  dispatch_once(&qword_1002290F0, &stru_1001FB680);
                }

                if (_NRLogIsLevelEnabled())
                {
                  v274 = sub_1000B9544();
                  v308 = 2127;
                  LogString = *(val + 15);
                  v305 = "";
                  v306 = "[NRLinkDirector generateLocalIdentityIfNeeded:]";
                  _NRLogWithArgs();
                }

LABEL_369:
                v275 = SecKeyCopySubjectPublicKeyInfo();
                v276 = *(val + 13);
                *(val + 13) = v275;

                if ([*(val + 13) length])
                {
                  notify_post("com.apple.private.restrict-post.networkrelay.referencesChanged");
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

                    v277 = qword_1002290E8;
                    v278 = *(val + 13);
                    v279 = v277;
                    v308 = 2148;
                    LogString = _NRKeyCreateLogString();
                    v305 = "";
                    v306 = "[NRLinkDirector generateLocalIdentityIfNeeded:]";
                    _NRLogWithArgs();
                  }

                  goto LABEL_70;
                }

                if (qword_1002290F0 != -1)
                {
                  dispatch_once(&qword_1002290F0, &stru_1001FB680);
                }

                if (_NRLogIsLevelEnabled())
                {
                  v280 = sub_1000B9544();
                  _NRLogWithArgs();
                }
              }

              else
              {
                v281 = sub_1000B9544();
                IsLevelEnabled = _NRLogIsLevelEnabled();

                if (IsLevelEnabled)
                {
                  v283 = sub_1000B9544();
                  v308 = 2129;
                  LogString = *(val + 15);
                  v305 = "";
                  v306 = "[NRLinkDirector generateLocalIdentityIfNeeded:]";
                  _NRLogWithArgs();
                }
              }

LABEL_69:
              notify_post("com.apple.private.restrict-post.networkrelay.referencesChanged");
              sub_1000C826C(val);
LABEL_70:
              if (v20)
              {
                CFRelease(v20);
              }

              if (RandomKey)
              {
                CFRelease(RandomKey);
              }

              if (v24)
              {
                CFRelease(v24);
              }

              goto LABEL_77;
            }

            if (qword_1002290F0 != -1)
            {
              dispatch_once(&qword_1002290F0, &stru_1001FB680);
            }

            if (_NRLogIsLevelEnabled())
            {
              if (qword_1002290F0 == -1)
              {
                goto LABEL_67;
              }

LABEL_401:
              dispatch_once(&qword_1002290F0, &stru_1001FB680);
LABEL_67:
              _NRLogWithArgs();
            }
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
                goto LABEL_401;
              }

              goto LABEL_67;
            }
          }

          v24 = 0;
          goto LABEL_69;
        }

LABEL_31:

        if (v6 == ++v8)
        {
          v6 = [(__CFString *)obj countByEnumeratingWithState:location objects:&block count:16];
          if (v6)
          {
            goto LABEL_22;
          }

          break;
        }
      }
    }

    sub_1000C826C(val);
LABEL_77:

    v29 = val;
    v30 = *(val + 5);
    if (v30)
    {
      sub_1000315B8(v30);
    }

    v31 = *(val + 6);
    if (v31)
    {
      sub_100180590(v31);
    }

    v32 = *(val + 7);
    if (v32)
    {
      sub_100122A9C(v32);
    }

    v33 = *(val + 8);
    if (v33)
    {
      v34 = *(v33 + 24);
      dispatch_assert_queue_V2(v34);

      v35 = v33;
      v36 = [*(v33 + 40) copy];
      v379 = 0u;
      v380 = 0u;
      v381 = 0u;
      v382 = 0u;
      v37 = v36;
      v38 = [v37 countByEnumeratingWithState:&v379 objects:&block count:16];
      if (v38)
      {
        v39 = *v380;
        do
        {
          for (i = 0; i != v38; i = i + 1)
          {
            if (*v380 != v39)
            {
              objc_enumerationMutation(v37);
            }

            v41 = *(*(&v379 + 1) + 8 * i);
            v42 = [v41 nrUUID];
            v43 = sub_100163A30(NRDLocalDevice, v42);

            if (!v43 || (v43[48] & 2) == 0)
            {
              [v41 cancelWithReason:{@"Device has been disabled %@", v43}];
            }
          }

          v38 = [v37 countByEnumeratingWithState:&v379 objects:&block count:16];
        }

        while (v38);
      }

      v44 = [*(v35 + 88) allKeys];
      v378 = 0u;
      v377 = 0u;
      v376 = 0u;
      v375 = 0u;
      v45 = v44;
      v46 = [v45 countByEnumeratingWithState:&v375 objects:location count:16];
      if (v46)
      {
        v47 = *v376;
        do
        {
          for (j = 0; j != v46; j = j + 1)
          {
            if (*v376 != v47)
            {
              objc_enumerationMutation(v45);
            }

            v49 = *(*(&v375 + 1) + 8 * j);
            v50 = sub_100163A30(NRDLocalDevice, v49);
            v51 = v50;
            if (!v50 || (*(v50 + 48) & 2) == 0)
            {
              [*(v35 + 88) setObject:0 forKeyedSubscript:{v49, v305}];
            }
          }

          v46 = [v45 countByEnumeratingWithState:&v375 objects:location count:16];
        }

        while (v46);
      }

      v52 = sub_10016C8BC();
      v370 = 0u;
      v369 = 0u;
      v368 = 0u;
      v367 = 0u;
      v53 = v52;
      v322 = [v53 countByEnumeratingWithState:&v367 objects:&from count:16];
      if (v322)
      {
        v320 = *v368;
        while (2)
        {
          for (k = 0; k != v322; k = k + 1)
          {
            if (*v368 != v320)
            {
              objc_enumerationMutation(v53);
            }

            v55 = sub_100163A30(NRDLocalDevice, *(*(&v367 + 1) + 8 * k));
            v56 = v55;
            if (v55)
            {
              if ((*(v55 + 48) & 8) != 0)
              {
                v57 = *(v55 + 144);
                v58 = [v57 allowedLinkTypes];
                v59 = [v58 containsObject:&off_100209C20];

                if (v59)
                {

                  v61 = *(v35 + 24);
                  if (qword_1002292A0 != -1)
                  {
                    dispatch_once(&qword_1002292A0, &stru_1001FC470);
                  }

                  v62 = qword_1002292A8;
                  result[0] = _NSConcreteStackBlock;
                  result[1] = 3221225472;
                  result[2] = sub_1000E7304;
                  result[3] = &unk_1001FD088;
                  v352 = v61;
                  v353 = v53;
                  v354 = v35;
                  v60 = v61;
                  dispatch_async(v62, result);

                  goto LABEL_118;
                }
              }
            }
          }

          v322 = [v53 countByEnumeratingWithState:&v367 objects:&from count:16];
          if (v322)
          {
            continue;
          }

          break;
        }
      }

      v60 = *(v35 + 96);
      *(v35 + 96) = 0;
LABEL_118:

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

        v308 = 833;
        v305 = "";
        v306 = "[NRLinkManagerWired checkEnabledDevices]";
        _NRLogWithArgs();
      }

      sub_1000E710C(v35);

      v29 = val;
    }

    if (*(v29 + 17) == 1)
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

        v308 = 840;
        LogString = obj;
        v305 = "";
        v306 = "[NRLinkDirector checkEnabledDevices]";
        _NRLogWithArgs();
      }

      v63 = objc_alloc_init(NSArray);

      obj = v63;
    }

    v64 = objc_alloc_init(NSMutableArray);
    v347 = 0u;
    v348 = 0u;
    v349 = 0u;
    v350 = 0u;
    v65 = *(v29 + 28);
    v66 = [v65 countByEnumeratingWithState:&v347 objects:v360 count:16];
    if (v66)
    {
      v67 = *v348;
      do
      {
        for (m = 0; m != v66; m = m + 1)
        {
          if (*v348 != v67)
          {
            objc_enumerationMutation(v65);
          }

          v69 = *(*(&v347 + 1) + 8 * m);
          if (([(__CFString *)obj containsObject:v69, v305, v306, v308, LogString]& 1) == 0)
          {
            [v64 addObject:v69];
          }
        }

        v66 = [v65 countByEnumeratingWithState:&v347 objects:v360 count:16];
      }

      while (v66);
    }

    v345 = 0u;
    v346 = 0u;
    v343 = 0u;
    v344 = 0u;
    v323 = v64;
    v70 = [v323 countByEnumeratingWithState:&v343 objects:v359 count:16];
    if (v70)
    {
      v71 = *v344;
      do
      {
        for (n = 0; n != v70; n = n + 1)
        {
          if (*v344 != v71)
          {
            objc_enumerationMutation(v323);
          }

          v73 = *(*(&v343 + 1) + 8 * n);
          v74 = [*(val + 28) objectForKeyedSubscript:{v73, v305}];
          sub_100113628(v74);

          [*(val + 28) setObject:0 forKeyedSubscript:v73];
        }

        v70 = [v323 countByEnumeratingWithState:&v343 objects:v359 count:16];
      }

      while (v70);
    }

    if ([(__CFString *)obj count]&& qword_1002290D0 != -1)
    {
      dispatch_once(&qword_1002290D0, &stru_1001FB348);
    }

    v341 = 0u;
    v342 = 0u;
    v339 = 0u;
    v340 = 0u;
    v317 = obj;
    v321 = [(__CFString *)v317 countByEnumeratingWithState:&v339 objects:v358 count:16];
    if (v321)
    {
      v319 = *v340;
      do
      {
        v75 = 0;
        do
        {
          if (*v340 != v319)
          {
            v76 = v75;
            objc_enumerationMutation(v317);
            v75 = v76;
          }

          obja = v75;
          v77 = *(*(&v339 + 1) + 8 * v75);
          v78 = [*(val + 28) objectForKeyedSubscript:{v77, v305}];
          v79 = v78 == 0;

          if (!v79)
          {
            v80 = [*(val + 28) objectForKeyedSubscript:v77];
            sub_1000F4104(v80);
            goto LABEL_240;
          }

          v80 = sub_100110920([NRDDeviceConductor alloc], v77, *(val + 17));
          v81 = [*(val + 29) copy];
          v337 = 0u;
          v338 = 0u;
          v335 = 0u;
          v336 = 0u;
          v82 = v81;
          v83 = [v82 countByEnumeratingWithState:&v335 objects:v357 count:16];
          if (!v83)
          {
            goto LABEL_172;
          }

          v84 = *v336;
          do
          {
            for (ii = 0; ii != v83; ii = ii + 1)
            {
              if (*v336 != v84)
              {
                objc_enumerationMutation(v82);
              }

              v86 = *(*(&v335 + 1) + 8 * ii);
              if (v86)
              {
                if (![*(v86 + 8) isEqual:v77])
                {
                  continue;
                }

                v87 = *(v86 + 16);
                goto LABEL_168;
              }

              if ([0 isEqual:v77])
              {
                v87 = 0;
LABEL_168:
                sub_1001143D0(v80, v87);
                [*(val + 29) removeObject:v86];
                v88 = [v86 description];
                sub_1000059A8(0, 1016, 0, v88);

                continue;
              }
            }

            v83 = [v82 countByEnumeratingWithState:&v335 objects:v357 count:16];
          }

          while (v83);
LABEL_172:

          v89 = [*(val + 30) copy];
          v333 = 0u;
          v334 = 0u;
          v331 = 0u;
          v332 = 0u;
          v90 = v89;
          v91 = [v90 countByEnumeratingWithState:&v331 objects:v356 count:16];
          if (v91)
          {
            v92 = *v332;
            do
            {
              for (jj = 0; jj != v91; jj = jj + 1)
              {
                if (*v332 != v92)
                {
                  objc_enumerationMutation(v90);
                }

                v94 = *(*(&v331 + 1) + 8 * jj);
                if (v94)
                {
                  v95 = v94[1];
                }

                else
                {
                  v95 = 0;
                }

                if ([v95 isEqual:v77])
                {
                  [*(val + 30) removeObject:v94];
                  v96 = [v94 description];
                  sub_1000059A8(0, 1023, 0, v96);

                  if (v94)
                  {
                    v97 = v94[2];
                  }

                  else
                  {
                    v97 = 0;
                  }

                  xpc_connection_cancel(v97);
                }
              }

              v91 = [v90 countByEnumeratingWithState:&v331 objects:v356 count:16];
            }

            while (v91);
          }

          if (!v80)
          {
            goto LABEL_239;
          }

          dispatch_assert_queue_V2(*(v80 + 136));
          if (*(v80 + 14) == 1)
          {
            v98 = *(v80 + 96);
            v99 = _NRCopyLogObjectForNRUUID();
            v100 = _NRLogIsLevelEnabled();

            if (v100)
            {
              v101 = *(v80 + 96);
              v102 = _NRCopyLogObjectForNRUUID();
              v308 = 592;
              v305 = "";
              v306 = "[NRDDeviceConductor startConductor]";
              _NRLogWithArgs();
              goto LABEL_238;
            }

            goto LABEL_239;
          }

          *(v80 + 14) = 1;
          v103 = [v80 description];
          sub_1000059A8(*(v80 + 96), 1501, 0, v103);

          sub_100111C10(v80);
          sub_100111330(v80);
          sub_10010E27C(v80);
          v104 = [NRDevicePreferencesManager alloc];
          v105 = *(v80 + 136);
          v106 = *(v80 + 96);
          v107 = v105;
          v108 = sub_100148B58(&v104->super.isa, v107, v106);
          v109 = *(v80 + 216);
          *(v80 + 216) = v108;

          sub_10010FE38(v80);
          v102 = sub_1000B7248(*(v80 + 96), @"WiFiEndpointAddressData");
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v110 = +[NWAddressEndpoint endpointWithAddress:](NWAddressEndpoint, "endpointWithAddress:", [v102 bytes]);
            v111 = v110;
            if (*(v80 + 45) == 1)
            {
              objc_storeStrong((v80 + 168), v110);
              v112 = *(v80 + 96);
              v113 = _NRCopyLogObjectForNRUUID();
              v114 = _NRLogIsLevelEnabled();

              if (v114)
              {
                v115 = *(v80 + 96);
                v116 = _NRCopyLogObjectForNRUUID();
                v308 = 614;
                LogString = *(v80 + 168);
                v305 = "";
                v306 = "[NRDDeviceConductor startConductor]";
                _NRLogWithArgs();
              }
            }

            else
            {
              v117 = *(v80 + 136);
              block = _NSConcreteStackBlock;
              v384 = 3221225472;
              v385 = sub_10011207C;
              v386 = &unk_1001FD060;
              v387 = v80;
              v388 = v110;
              dispatch_async(v117, &block);
            }
          }

          v118 = *(v80 + 96);
          v318 = sub_1000B7248(v118, @"WiFiSignature");

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            if (*(v80 + 45) == 1)
            {
              objc_storeStrong((v80 + 176), v318);
            }

            else
            {
              v119 = *(v80 + 136);
              location[0] = _NSConcreteStackBlock;
              location[1] = 3221225472;
              *&v372 = sub_100112154;
              *(&v372 + 1) = &unk_1001FD060;
              *&v373 = v80;
              *(&v373 + 1) = v318;
              dispatch_async(v119, location);
            }
          }

          if (_NRIsAppleInternal())
          {
            v120 = sub_1000B7248(*(v80 + 96), @"DisableRangeExtension");
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) != 0 && [v120 BOOLValue])
            {
              *(v80 + 23) = 1;
            }

            v121 = sub_1000B7248(*(v80 + 96), @"DisablePreferWiFi");
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) != 0 && [v121 BOOLValue])
            {
              *(v80 + 24) = 1;
            }
          }

          sub_10010D154(v80);
          if (*(v80 + 56) == 1)
          {
            v122 = [NRQuickRelayAgent alloc];
            v123 = *(v80 + 96);
            v124 = *(v80 + 136);
            v125 = v123;
            v126 = sub_10003F294(&v122->super.isa, v125, v124, v80);
            v127 = *(v80 + 224);
            *(v80 + 224) = v126;

            v128 = *(v80 + 224);
            if (v128)
            {
              dispatch_assert_queue_V2(*(v128 + 48));
              if ((*(v128 + 14) & 1) == 0)
              {
                v129 = [[NWNetworkAgentRegistration alloc] initWithNetworkAgentClass:objc_opt_class()];
                v130 = *(v128 + 56);
                *(v128 + 56) = v129;

                v131 = *(v128 + 56);
                if (v131)
                {
                  if ([v131 registerNetworkAgent:v128])
                  {
                    v132 = [v128 agentUUID];
                    v133 = [NEPolicyResult netAgentUUID:v132];

                    v134 = *(v128 + 40);
                    v135 = nrCopyAccountIdentifierForNRUUID();
                    *(&v314 + 1) = [NEPolicyCondition accountIdentifier:v135];

                    v136 = +[NRQuickRelayAgent agentDomain];
                    v137 = +[NRQuickRelayAgent agentType];
                    *&v314 = [NEPolicyCondition requiredAgentDomain:v136 agentType:v137];

                    v138 = [NEPolicy alloc];
                    v379 = v314;
                    v139 = +[NEPolicyCondition allInterfaces];
                    *&v380 = v139;
                    v140 = [NSArray arrayWithObjects:&v379 count:3];
                    v313 = [v138 initWithOrder:10 result:v133 conditions:v140];

                    objc_opt_self();
                    if (qword_100229410 != -1)
                    {
                      dispatch_once(&qword_100229410, &stru_1001FCD98);
                    }

                    v141 = qword_100229408;
                    v142 = sub_100159E00(v141, *(v128 + 72), v313);

                    objc_opt_self();
                    if (qword_100229410 != -1)
                    {
                      dispatch_once(&qword_100229410, &stru_1001FCD98);
                    }

                    v143 = qword_100229408;
                    sub_10015A52C(v143);

                    *(v128 + 14) = 1;
                    v144 = v133;
                    v145 = *(v128 + 40);
                    v146 = *(v128 + 80);
                    v147 = v145;
                    v148 = v144;
                    v312 = v147;
                    v149 = [v128 agentUUID];
                    v150 = [v149 UUIDString];
                    sub_1000059A8(v312, 17002, v146, v150);

                    sub_10003F8D8(v128);
LABEL_221:
                  }

                  else
                  {
                    v151 = *(v128 + 40);
                    v152 = _NRCopyLogObjectForNRUUID();
                    v153 = _NRLogIsLevelEnabled();

                    if (v153)
                    {
                      v154 = *(v128 + 40);
                      v148 = _NRCopyLogObjectForNRUUID();
                      _NRLogWithArgs();
                      goto LABEL_221;
                    }
                  }
                }
              }
            }
          }

          if (*(v80 + 55) == 1)
          {
            v155 = [NRBTLinkPreferencesAgent alloc];
            v156 = *(v80 + 96);
            v157 = *(v80 + 136);
            v158 = v156;
            v159 = sub_10007850C(&v155->super.isa, v158, v157, v80);
            v160 = *(v80 + 232);
            *(v80 + 232) = v159;

            v161 = *(v80 + 232);
            if (v161)
            {
              if ((*(v161 + 14) & 1) == 0)
              {
                v162 = [[NWNetworkAgentRegistration alloc] initWithNetworkAgentClass:objc_opt_class()];
                v163 = *(v161 + 56);
                *(v161 + 56) = v162;

                v167 = *(v161 + 56);
                if (!v167)
                {
                  sub_10013C2A8(@"NRBTLinkPreferenceAgent", @"RegisterAgent", @"Create Failed", 1, @"Failed to create BTLinkPreferences network agent", v164, v165, v166, v305);
                  v167 = *(v161 + 56);
                }

                if (([v167 registerNetworkAgent:{v161, v305, v306, v308, LogString}] & 1) == 0)
                {
                  sub_10013C2A8(@"NRBTLinkPreferenceAgent", @"RegisterAgent", @"Register Failed", 1, @"Failed to register BTLinkPreferences network agent", v168, v169, v170, v305);
                }

                [v161 setActive:1];
                [*(v161 + 56) updateNetworkAgent:v161];
                v171 = [NEPolicyRouteRule routeRuleWithAction:5 forType:6];
                v172 = [v161 agentUUID];
                [v171 setNetworkAgentUUID:v172];

                *&v375 = v171;
                v173 = [NSArray arrayWithObjects:&v375 count:1];
                v316 = [NEPolicyResult routeRules:v173];

                v174 = +[NRBTLinkPreferencesAgent agentDomain];
                v175 = +[NRBTLinkPreferencesAgent agentType];
                v315 = [NEPolicyCondition requiredAgentDomain:v174 agentType:v175];

                v176 = [NEPolicy alloc];
                *&v379 = v315;
                v177 = +[NEPolicyCondition allInterfaces];
                *(&v379 + 1) = v177;
                v178 = [NSArray arrayWithObjects:&v379 count:2];
                v179 = [v176 initWithOrder:10 result:v316 conditions:v178];

                objc_opt_self();
                if (qword_100229410 != -1)
                {
                  dispatch_once(&qword_100229410, &stru_1001FCD98);
                }

                v180 = qword_100229408;
                v181 = sub_100159E00(v180, *(v161 + 72), v179);

                objc_opt_self();
                if (qword_100229410 != -1)
                {
                  dispatch_once(&qword_100229410, &stru_1001FCD98);
                }

                v182 = qword_100229408;
                sub_10015A52C(v182);

                *(v161 + 14) = 1;
                v183 = *(v161 + 40);
                v184 = [v161 agentUUID];
                v185 = [v184 UUIDString];
                sub_1000059A8(v183, 18002, 0, v185);
              }
            }
          }

          sub_100104434(v80);
          if (*(v80 + 46) == 1 && sub_10013CA2C())
          {
            sub_1000059A8(*(v80 + 96), 1036, 0, 0);
          }

          v186 = *(v80 + 136);
          from = _NSConcreteStackBlock;
          v362 = 3221225472;
          v363 = sub_10011222C;
          v364 = &unk_1001FD3C8;
          v365 = v80;
          dispatch_async(v186, &from);

LABEL_238:
LABEL_239:
          [*(val + 28) setObject:v80 forKeyedSubscript:{v77, v305}];
          sub_1000BF70C(val);

LABEL_240:
          v75 = obja + 1;
        }

        while (obja + 1 != v321);
        v321 = [(__CFString *)v317 countByEnumeratingWithState:&v339 objects:v358 count:16];
      }

      while (v321);
    }

    if (![(__CFString *)v317 count])
    {
      v205 = val;
      v206 = *(val + 27);
      if (v206)
      {
        sub_100185548(v206);
        v207 = *(val + 27);
        *(val + 27) = 0;

        v205 = val;
      }

      v208 = *(v205 + 96);
      if (v208)
      {
        sub_100073EC0(v208);
        v209 = *(val + 12);
        *(val + 12) = 0;

        v205 = val;
      }

      sub_1000BC1B0(v205);
      sub_1000BC35C(val);
      sub_1000C2248(val);
      sub_1000BC590(val);
      v210 = val;
      if (*(val + 39))
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

          v211 = *(val + 39);
          v212 = qword_1002290E8;
          v308 = 2829;
          LogString = v211;
          v305 = "";
          v306 = "[NRLinkDirector removeVPNWatcher]";
          _NRLogWithArgs();
        }

        v213 = *(val + 39);
        nw_path_evaluator_cancel();
        v214 = *(val + 39);
        *(val + 39) = 0;

        v210 = val;
      }

      v215 = v210[8];
      if (v215 != -1)
      {
        notify_cancel(v215);
        v210 = val;
        *(val + 8) = -1;
      }

      v216 = *(v210 + 41);
      *(v210 + 41) = 0;

      v217 = *(val + 42);
      *(val + 42) = 0;

      *location = 0u;
      v372 = 0u;
      v373 = 0u;
      v374 = 0u;
      v218 = *(val + 28);
      v219 = [v218 countByEnumeratingWithState:location objects:&block count:16];
      if (v219)
      {
        v220 = *v372;
        do
        {
          for (kk = 0; kk != v219; ++kk)
          {
            if (*v372 != v220)
            {
              objc_enumerationMutation(v218);
            }

            v222 = [*(val + 28) objectForKeyedSubscript:{*(location[1] + kk), v305, v306, v308, LogString}];
            sub_100114D18(v222, 0);
          }

          v219 = [v218 countByEnumeratingWithState:location objects:&block count:16];
        }

        while (v219);
      }

      objc_opt_self();
      if (qword_100229410 != -1)
      {
        dispatch_once(&qword_100229410, &stru_1001FCD98);
      }

      v223 = qword_100229408;
      sub_10015A238(v223, @"NRLinkDirector-AppVPN");

      objc_opt_self();
      if (qword_100229410 != -1)
      {
        dispatch_once(&qword_100229410, &stru_1001FCD98);
      }

      v224 = qword_100229408;
      sub_10015A52C(v224);

      v225 = *(val + 40);
      *(val + 40) = 0;

      val[19] = 0;
      v226 = *(val + 36);
      if (v226)
      {
        dispatch_source_cancel(v226);
        v227 = *(val + 36);
        *(val + 36) = 0;
      }

      objc_opt_self();
      if (qword_100228E88 != -1)
      {
        dispatch_once(&qword_100228E88, &stru_1001FA180);
      }

      v228 = qword_100228E80;
      v229 = v228;
      if (v228)
      {
        v230 = v228[2];
        if (v230)
        {
          [v230 cancel];
          v231 = *(v229 + 16);
          *(v229 + 16) = 0;

          objc_opt_self();
          if (qword_100229410 != -1)
          {
            dispatch_once(&qword_100229410, &stru_1001FCD98);
          }

          v232 = qword_100229408;
          sub_10015A238(v232, @"NRIKEv2Listener");

          objc_opt_self();
          if (qword_100229410 != -1)
          {
            dispatch_once(&qword_100229410, &stru_1001FCD98);
          }

          v233 = qword_100229408;
          sub_10015A52C(v233);
        }

        v234 = *(v229 + 24);
        *(v229 + 24) = 0;

        v235 = *(v229 + 32);
        *(v229 + 32) = 0;

        v374 = 0u;
        v373 = 0u;
        v372 = 0u;
        *location = 0u;
        v236 = *(v229 + 48);
        v237 = [v236 countByEnumeratingWithState:location objects:&block count:16];
        if (v237)
        {
          v238 = *v372;
          do
          {
            v239 = 0;
            do
            {
              if (*v372 != v238)
              {
                objc_enumerationMutation(v236);
              }

              v240 = [*(v229 + 48) objectForKeyedSubscript:{*(location[1] + v239), v305}];
              v241 = v240;
              if (v240)
              {
                v242 = *(v240 + 40);
              }

              else
              {
                v242 = 0;
              }

              (*(v242 + 16))(v242, 0, 0, 0);

              ++v239;
            }

            while (v237 != v239);
            v243 = [v236 countByEnumeratingWithState:location objects:&block count:16];
            v237 = v243;
          }

          while (v243);
        }

        v244 = *(v229 + 48);
        *(v229 + 48) = 0;

        sub_1000154E8(v229);
      }

      goto LABEL_396;
    }

    sub_1000BFA38(val);
    sub_1000C0360(val);
    sub_1000C0E80(val);
    v329 = 0u;
    v330 = 0u;
    v327 = 0u;
    v328 = 0u;
    v187 = *(val + 28);
    v188 = [v187 countByEnumeratingWithState:&v327 objects:v355 count:16];
    if (v188)
    {
      v189 = 0;
      v190 = 0;
      v191 = *v328;
      do
      {
        for (mm = 0; mm != v188; mm = mm + 1)
        {
          if (*v328 != v191)
          {
            objc_enumerationMutation(v187);
          }

          v193 = *(*(&v327 + 1) + 8 * mm);
          v194 = [*(val + 28) objectForKeyedSubscript:{v193, v305}];
          if (v194)
          {
            v189 |= v194[9];
          }

          v195 = [*(val + 28) objectForKeyedSubscript:v193];
          if (v195)
          {
            v190 |= v195[8];
          }
        }

        v188 = [v187 countByEnumeratingWithState:&v327 objects:v355 count:16];
      }

      while (v188);

      if (v189)
      {
        v196 = val;
        if (!*(val + 27))
        {
          v197 = [NRPhoneCallRelayAgent alloc];
          v198 = *(val + 17);
          v199 = sub_1001857B8(&v197->super.isa, v198, val);
          v200 = *(val + 27);
          *(val + 27) = v199;

          v204 = *(val + 27);
          if (v204)
          {
            sub_100185A60(v204);
          }

          else
          {
            sub_10013C2A8(@"NRLinkDirector", @"PhoneCallRelayAgent is Nil", 0, 1, @"[[NRPhoneCallRelayAgent alloc] initWithQueue: delegate:]", v201, v202, v203, v305);
          }

LABEL_310:
          v196 = val;
          if (v190)
          {
            goto LABEL_311;
          }

          goto LABEL_317;
        }

        goto LABEL_316;
      }
    }

    else
    {

      v190 = 0;
    }

    v196 = val;
    v245 = *(val + 27);
    if (v245)
    {
      sub_100185548(v245);
      v246 = *(val + 27);
      *(val + 27) = 0;

      goto LABEL_310;
    }

LABEL_316:
    if (v190)
    {
LABEL_311:
      if (!*(v196 + 12))
      {
        v247 = objc_alloc_init(NRPreferWiFiAgent);
        v248 = *(val + 12);
        *(val + 12) = v247;

        v249 = *(val + 17);
        v250 = *(val + 12);
        v251 = v249;
        v252 = v251;
        if (!v250)
        {

          v302 = sub_1000B9544();
          v303 = _NRLogIsLevelEnabled();

          if (v303)
          {
            v304 = sub_1000B9544();
            _NRLogWithArgs();
          }

          goto LABEL_397;
        }

        if ((*(v250 + 14) & 1) == 0)
        {
          objc_storeStrong(v250 + 5, v249);
          objc_initWeak(location, v250);
          v253 = dispatch_time(0x8000000000000000, 1000000000);
          v254 = v250[5];
          block = _NSConcreteStackBlock;
          v384 = 3221225472;
          v385 = sub_10007376C;
          v386 = &unk_1001FC730;
          v255 = v254;
          objc_copyWeak(&v387, location);
          dispatch_after(v253, v255, &block);

          objc_destroyWeak(&v387);
          objc_destroyWeak(location);
        }

        goto LABEL_319;
      }

      goto LABEL_320;
    }

LABEL_317:
    v256 = *(v196 + 12);
    if (v256)
    {
      sub_100073EC0(v256);
      v250 = *(val + 12);
      *(val + 12) = 0;
LABEL_319:

      v196 = val;
    }

LABEL_320:
    v258 = *(v196 + 7);
    v257 = (v196 + 28);
    if (v258 == -1)
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

      objc_initWeak(&from, val);
      v259 = *(val + 17);
      location[0] = _NSConcreteStackBlock;
      location[1] = 3221225472;
      *&v372 = sub_1000C5518;
      *(&v372 + 1) = &unk_1001FD278;
      objc_copyWeak(&v373, &from);
      v260 = notify_register_dispatch(kOSThermalNotificationPressureLevelName, v257, v259, location);

      if (v260 || *v257 == -1)
      {
        if (qword_1002290F0 != -1)
        {
          dispatch_once(&qword_1002290F0, &stru_1001FB680);
        }

        v261 = qword_1002290E8;
        v262 = _NRLogIsLevelEnabled();

        if (v262)
        {
          if (qword_1002290F0 != -1)
          {
            dispatch_once(&qword_1002290F0, &stru_1001FB680);
          }

          v263 = qword_1002290E8;
          v307 = *v257;
          _NRLogWithArgs();
        }
      }

      else
      {
        v264 = *(val + 17);
        block = _NSConcreteStackBlock;
        v384 = 3221225472;
        v385 = sub_1000C55BC;
        v386 = &unk_1001FD3C8;
        v387 = val;
        dispatch_async(v264, &block);
      }

      objc_destroyWeak(&v373);
      objc_destroyWeak(&from);
    }

    if (sub_1000C1AE0())
    {
      v265 = sub_1000C1AE0();
      v266 = val;
      if (v265 && *(val + 8) == -1)
      {
        LODWORD(from) = -1;
        objc_initWeak(location, val);
        v267 = *(val + 17);
        block = _NSConcreteStackBlock;
        v384 = 3221225472;
        v385 = sub_1000C4EA4;
        v386 = &unk_1001FD278;
        objc_copyWeak(&v387, location);
        v268 = notify_register_dispatch("com.apple.neconfigurationchanged", &from, v267, &block);

        if (v268)
        {
          if (qword_1002290F0 != -1)
          {
            dispatch_once(&qword_1002290F0, &stru_1001FB680);
          }

          v269 = qword_1002290E8;
          v270 = _NRLogIsLevelEnabled();

          if (v270)
          {
            if (qword_1002290F0 != -1)
            {
              dispatch_once(&qword_1002290F0, &stru_1001FB680);
            }

            v271 = qword_1002290E8;
            _NRLogWithArgs();
          }
        }

        else
        {
          v284 = from;
          *(val + 8) = from;
          sub_1000C4F10(val, v284);
        }

        objc_destroyWeak(&v387);
        objc_destroyWeak(location);
        v266 = val;
      }

      if (*(v266 + 312))
      {
        sub_1000B98D8(v266);
      }

      else
      {
        v285 = nw_parameters_create();
        nw_parameters_set_account_id();
        evaluator_for_endpoint = nw_path_create_evaluator_for_endpoint();
        v287 = *(val + 17);
        nw_path_evaluator_set_queue();
        objc_initWeak(&from, val);
        location[0] = _NSConcreteStackBlock;
        location[1] = 3221225472;
        *&v372 = sub_1000C49C4;
        *(&v372 + 1) = &unk_1001FB560;
        objc_copyWeak(&v373 + 1, &from);
        v288 = evaluator_for_endpoint;
        *&v373 = v288;
        v289 = objc_retainBlock(location);
        v290 = *(val + 17);
        nw_path_evaluator_set_update_handler();

        nw_path_evaluator_start();
        objc_storeStrong(val + 39, evaluator_for_endpoint);
        if (qword_1002290F0 != -1)
        {
          dispatch_once(&qword_1002290F0, &stru_1001FB680);
        }

        v291 = qword_1002290E8;
        v292 = _NRLogIsLevelEnabled();

        if (v292)
        {
          if (qword_1002290F0 != -1)
          {
            dispatch_once(&qword_1002290F0, &stru_1001FB680);
          }

          v293 = qword_1002290E8;
          v310 = *(val + 39);
          _NRLogWithArgs();
        }

        v294 = *(val + 17);
        block = _NSConcreteStackBlock;
        v384 = 3221225472;
        v385 = sub_1000C4D28;
        v386 = &unk_1001FB588;
        v387 = val;
        v388 = v288;
        v389 = v289;
        v295 = v289;
        v296 = v288;
        dispatch_async(v294, &block);

        objc_destroyWeak(&v373 + 1);
        objc_destroyWeak(&from);
      }
    }

    v297 = val;
    if (!*(val + 36))
    {
      v298 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, *(val + 17));
      dispatch_source_set_timer(v298, 0, 0x29E8D60800uLL, 0x2FAF080uLL);
      objc_initWeak(location, val);
      block = _NSConcreteStackBlock;
      v384 = 3221225472;
      v385 = sub_1000C3F78;
      v386 = &unk_1001FD0D8;
      objc_copyWeak(&v388, location);
      v299 = v298;
      v387 = v299;
      dispatch_source_set_event_handler(v299, &block);
      dispatch_resume(v299);
      v300 = *(val + 36);
      *(val + 36) = v299;
      v301 = v299;

      objc_destroyWeak(&v388);
      objc_destroyWeak(location);
      v297 = val;
    }

    sub_1000C1C7C(v297);
LABEL_396:
    sub_1000C2318(v317);
LABEL_397:

    return;
  }

  if (qword_1002290F0 != -1)
  {
    dispatch_once(&qword_1002290F0, &stru_1001FB680);
  }

  if (_NRLogIsLevelEnabled())
  {
    if (qword_1002290F0 == -1)
    {
LABEL_13:
      _NRLogWithArgs();
      return;
    }

LABEL_399:
    dispatch_once(&qword_1002290F0, &stru_1001FB680);
    goto LABEL_13;
  }
}

void sub_1000BF6B4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak(&STACK[0x620]);
  _Unwind_Resume(a1);
}

void sub_1000BF70C(uint64_t a1)
{
  v2 = sub_100003490();
  dispatch_assert_queue_V2(v2);

  v3 = dispatch_group_create();
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v4 = *(a1 + 224);
  v5 = [v4 countByEnumeratingWithState:&v28 objects:v36 count:16];
  if (v5)
  {
    v6 = 0;
    v25 = *v29;
    v24 = v4;
    do
    {
      v7 = 0;
      do
      {
        if (*v29 != v25)
        {
          objc_enumerationMutation(v4);
        }

        v8 = [*(a1 + 224) objectForKeyedSubscript:*(*(&v28 + 1) + 8 * v7)];
        v9 = v3;
        if (v8 && _NRIsAppleInternal() && objc_opt_class() && objc_opt_class() && *(v8 + 49) == 1)
        {
          if (qword_100229150 != -1)
          {
            dispatch_once(&qword_100229150, &stru_1001FBB58);
          }

          v10 = sub_100163A30(NRDLocalDevice, *(v8 + 96));
          v11 = v10;
          if (v10)
          {
            v12 = *(v10 + 32);
          }

          else
          {
            v12 = 0;
          }

          v13 = v12;
          v14 = [v11 description];
          v15 = a1;
          v16 = v3;
          v17 = qword_100229148;
          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_100114E3C;
          block[3] = &unk_1001FD088;
          v33 = v13;
          v34 = v8;
          v35 = v14;
          v18 = v14;
          v19 = v13;
          v20 = v17;
          v3 = v16;
          a1 = v15;
          v4 = v24;
          dispatch_group_async(v9, v20, block);

          v6 = 1;
        }

        v7 = v7 + 1;
      }

      while (v5 != v7);
      v21 = [v4 countByEnumeratingWithState:&v28 objects:v36 count:16];
      v5 = v21;
    }

    while (v21);

    if (v6)
    {
      objc_initWeak(block, a1);
      v22 = *(a1 + 136);
      v26[0] = _NSConcreteStackBlock;
      v26[1] = 3221225472;
      v26[2] = sub_1000C8148;
      v26[3] = &unk_1001FC730;
      v23 = v22;
      objc_copyWeak(&v27, block);
      dispatch_group_notify(v9, v23, v26);

      objc_destroyWeak(&v27);
      objc_destroyWeak(block);
    }
  }

  else
  {
  }
}

void sub_1000BFA38(uint64_t a1)
{
  v45 = a1;
  if (a1)
  {
    v3 = sub_10016C8BC();
    v51 = 0u;
    v52 = 0u;
    v53 = 0u;
    v54 = 0u;
    v46 = v3;
    v4 = [v46 countByEnumeratingWithState:&v51 objects:v56 count:16];
    if (v4)
    {
      v5 = 0;
      v6 = *v52;
      while (2)
      {
        for (i = 0; i != v4; i = i + 1)
        {
          if (*v52 != v6)
          {
            objc_enumerationMutation(v46);
          }

          v8 = sub_100163A30(NRDLocalDevice, *(*(&v51 + 1) + 8 * i));
          v9 = v8;
          if (!v8)
          {
            v9 = &qword_100229000;
            if (qword_1002290F0 != -1)
            {
              dispatch_once(&qword_1002290F0, &stru_1001FB680);
            }

            v6 = &qword_100229000;
            v30 = qword_1002290E8;
            IsLevelEnabled = _NRLogIsLevelEnabled();

            if (IsLevelEnabled)
            {
              if (qword_1002290F0 != -1)
              {
                dispatch_once(&qword_1002290F0, &stru_1001FB680);
              }

              v32 = qword_1002290E8;
              _NRLogWithArgs();
            }

            goto LABEL_45;
          }

          v10 = *(v8 + 144);
          v1 = v10 == 0;

          if (v1)
          {
            v5 = 1;
          }

          else
          {
            v1 = v9[18].isa;
            if ([v1 proxyCapability] == 1)
            {
              v2 = v9[18].isa;
              v11 = [(objc_class *)v2 hasCompanionDatapath];

              v5 |= v11;
            }
          }
        }

        v4 = [v46 countByEnumeratingWithState:&v51 objects:v56 count:16];
        if (v4)
        {
          continue;
        }

        break;
      }

      if (v5)
      {
        if (*(v45 + 144))
        {
          goto LABEL_28;
        }

        host = nw_endpoint_create_host("::", "62742");
        if (host)
        {
          v9 = nw_parameters_create();
          if (v9)
          {
            nw_parameters_set_local_address();
            nw_parameters_set_required_interface_subtype();
            nw_parameters_set_always_open_listener_socket();
            v12 = *(v45 + 136);
            v13 = nw_shoes_server_create();
            v14 = *(v45 + 144);
            *(v45 + 144) = v13;

            if (*(v45 + 144))
            {
              v50[1] = _NSConcreteStackBlock;
              v50[2] = 3221225472;
              v50[3] = sub_1000C7DE8;
              v50[4] = &unk_1001FCD58;
              v50[5] = v45;
              nw_socks5_server_set_state_changed_handler();
              v15 = *(v45 + 144);
              nw_socks5_server_start();
              if (!*(v45 + 176))
              {
                v16 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, *(v45 + 136));
                v17 = dispatch_time(0x8000000000000000, 21600000000000);
                dispatch_source_set_timer(v16, v17, 0x13A52453C000uLL, 0xEE6B280uLL);
                objc_initWeak(v50, v45);
                v47[0] = _NSConcreteStackBlock;
                v47[1] = 3221225472;
                v47[2] = sub_1000C8050;
                v47[3] = &unk_1001FD0D8;
                objc_copyWeak(&v49, v50);
                v18 = v16;
                v48 = v18;
                dispatch_source_set_event_handler(v18, v47);
                dispatch_activate(v18);
                v19 = *(v45 + 176);
                *(v45 + 176) = v18;
                v20 = v18;

                objc_destroyWeak(&v49);
                objc_destroyWeak(v50);
              }

              v45 = [NSString stringWithUTF8String:nw_proxy_config_get_agent_domain()];
              v1 = [NSString stringWithUTF8String:nw_proxy_config_get_system_privacy_proxy_agent_type()];
              v21 = [NEPolicy alloc];
              v22 = [NEPolicyResult removeNetworkAgentDomain:v45 agentType:v1];
              v23 = +[NEPolicyCondition allInterfaces];
              v55[0] = v23;
              v24 = [NEPolicyCondition accountIdentifier:@"com.apple.networkrelay.companion_proxy"];
              v55[1] = v24;
              v25 = [NEPolicyCondition effectivePID:getpid()];
              v55[2] = v25;
              v26 = [NSArray arrayWithObjects:v55 count:3];
              v2 = [v21 initWithOrder:10 result:v22 conditions:v26];

              objc_opt_self();
              v6 = &qword_100229000;
              if (qword_100229410 == -1)
              {
                goto LABEL_23;
              }

              goto LABEL_46;
            }

            v39 = sub_1000B9544();
            v40 = _NRLogIsLevelEnabled();

            if (v40)
            {
              v41 = sub_1000B9544();
              _NRLogWithArgs();
            }
          }

          else
          {
            v36 = sub_1000B9544();
            v37 = _NRLogIsLevelEnabled();

            if (v37)
            {
              v38 = sub_1000B9544();
              _NRLogWithArgs();
            }
          }
        }

        else
        {
          v33 = sub_1000B9544();
          v34 = _NRLogIsLevelEnabled();

          if (v34)
          {
            v35 = sub_1000B9544();
            _NRLogWithArgs();
          }
        }

LABEL_45:
        _os_log_pack_size();
        __chkstk_darwin();
        v42 = *__error();
        v43 = _os_log_pack_fill();
        *v43 = 136446210;
        *(v43 + 4) = "[NRLinkDirector startSocksServerIfNeeded]";
        sub_1000B9544();
        _NRLogAbortWithPack();
        __break(1u);
LABEL_46:
        dispatch_once(&qword_100229410, &stru_1001FCD98);
LABEL_23:
        v27 = qword_100229408;
        v28 = sub_100159E00(v27, @"NRLinkDirector-skip-privacy-proxy", v2);

        objc_opt_self();
        if (v6[130] != -1)
        {
          dispatch_once(&qword_100229410, &stru_1001FCD98);
        }

        v29 = qword_100229408;
        sub_10015A52C(v29);

        goto LABEL_28;
      }
    }

    else
    {
    }

    sub_1000BC1B0(v45);
LABEL_28:
  }
}

void sub_1000C0360(uint64_t a1)
{
  if (a1)
  {
    p_vtable = NRSCDInterfaceConfig.vtable;
    v51 = 0u;
    v52 = 0u;
    v53 = 0u;
    v54 = 0u;
    v42 = sub_10016C8BC();
    v2 = 0;
    v3 = [v42 countByEnumeratingWithState:&v51 objects:v55 count:16];
    if (v3)
    {
      v4 = *v52;
      while (2)
      {
        for (i = 0; i != v3; i = i + 1)
        {
          if (*v52 != v4)
          {
            objc_enumerationMutation(v42);
          }

          v6 = sub_100163A30(NRDLocalDevice, *(*(&v51 + 1) + 8 * i));
          v7 = v6;
          if (!v6)
          {
            if (qword_1002290F0 != -1)
            {
              dispatch_once(&qword_1002290F0, &stru_1001FB680);
            }

            v13 = qword_1002290E8;
            IsLevelEnabled = _NRLogIsLevelEnabled();

            if (IsLevelEnabled)
            {
              if (qword_1002290F0 != -1)
              {
                dispatch_once(&qword_1002290F0, &stru_1001FB680);
              }

              v15 = qword_1002290E8;
              _NRLogWithArgs();
            }

            goto LABEL_64;
          }

          v8 = *(v6 + 144);
          v9 = v8 == 0;

          if (v9)
          {
            v2 = 0;
          }

          else
          {
            v10 = v7[18];
            if ([v10 proxyCapability] == 1)
            {
              v11 = v7[18];
              v12 = [v11 usesTLS];

              v2 |= v12;
            }
          }
        }

        v3 = [v42 countByEnumeratingWithState:&v51 objects:v55 count:16];
        if (v3)
        {
          continue;
        }

        break;
      }
    }

    if (qword_1002290F0 != -1)
    {
      dispatch_once(&qword_1002290F0, &stru_1001FB680);
    }

    p_vtable = &qword_100229000;
    if (_NRLogIsLevelEnabled())
    {
      if (qword_1002290F0 != -1)
      {
        dispatch_once(&qword_1002290F0, &stru_1001FB680);
      }

      _NRLogWithArgs();
    }

    if ((v2 & 1) == 0)
    {
      sub_1000BC35C(a1);
LABEL_30:

      return;
    }

    if (*(a1 + 152))
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

      goto LABEL_30;
    }

    if (*(a1 + 344))
    {
      host = nw_endpoint_create_host("::", "0");
      if (host)
      {
        v17 = nw_parameters_create();
        if (v17)
        {
          nw_parameters_set_local_address();
          nw_parameters_set_use_awdl();
          nw_parameters_set_no_proxy();
          nw_parameters_set_multipath_service(v17, nw_multipath_service_handover);
          options = nw_tls_create_options();
          v18 = nw_tls_copy_sec_protocol_options(options);
          sec_protocol_options_set_local_identity(v18, *(a1 + 344));
          v19 = *(a1 + 104);
          [v19 bytes];
          [*(a1 + 104) length];
          sec_protocol_options_add_server_raw_public_key_certificate();
          v20 = *(a1 + 136);
          v21 = nw_masque_server_create();
          v22 = *(a1 + 152);
          *(a1 + 152) = v21;

          v23 = *(a1 + 152);
          if (v23)
          {
            goto LABEL_50;
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

            _NRLogWithArgs();
          }

          v23 = *(a1 + 152);
          if (v23)
          {
LABEL_50:
            objc_initWeak(&v50, v23);
            objc_initWeak(&v49, a1);
            v24 = *(a1 + 152);
            v46[1] = _NSConcreteStackBlock;
            v46[2] = 3221225472;
            v46[3] = sub_1000C6978;
            v46[4] = &unk_1001FB390;
            objc_copyWeak(&v47, &v49);
            objc_copyWeak(&v48, &v50);
            nw_masque_server_set_state_changed_handler();

            v25 = *(a1 + 152);
            v44[1] = _NSConcreteStackBlock;
            v44[2] = 3221225472;
            v44[3] = sub_1000C6C94;
            v44[4] = &unk_1001FB408;
            objc_copyWeak(&v45, &v49);
            objc_copyWeak(v46, &v50);
            nw_masque_server_set_outer_connection_handler();

            v26 = *(a1 + 152);
            objc_copyWeak(&v43, &v49);
            objc_copyWeak(v44, &v50);
            nw_masque_server_set_proxy_client_connection_event_handler();

            v27 = *(a1 + 152);
            nw_masque_server_start();

            objc_destroyWeak(v44);
            objc_destroyWeak(&v43);
            objc_destroyWeak(v46);
            objc_destroyWeak(&v45);
            objc_destroyWeak(&v48);
            objc_destroyWeak(&v47);
            objc_destroyWeak(&v49);
            objc_destroyWeak(&v50);

            goto LABEL_30;
          }

          v35 = sub_1000B9544();
          v36 = _NRLogIsLevelEnabled();

          if (v36)
          {
            v37 = sub_1000B9544();
            _NRLogWithArgs();
          }
        }

        else
        {
          v32 = sub_1000B9544();
          v33 = _NRLogIsLevelEnabled();

          if (v33)
          {
            v34 = sub_1000B9544();
            _NRLogWithArgs();
          }
        }
      }

      else
      {
        v29 = sub_1000B9544();
        v30 = _NRLogIsLevelEnabled();

        if (v30)
        {
          v31 = sub_1000B9544();
          _NRLogWithArgs();
        }
      }

LABEL_64:
      _os_log_pack_size();
      __chkstk_darwin();
      v38 = *__error();
      v39 = _os_log_pack_fill();
      *v39 = 136446210;
      *(v39 + 4) = "[NRLinkDirector startMASQUEProxyServerIfNeeded]";
      sub_1000B9544();
      _NRLogAbortWithPack();
      __break(1u);
    }

    else
    {
      if (qword_1002290F0 != -1)
      {
        dispatch_once(&qword_1002290F0, &stru_1001FB680);
      }

      if (!_NRLogIsLevelEnabled())
      {
        goto LABEL_30;
      }

      if (qword_1002290F0 == -1)
      {
        goto LABEL_55;
      }
    }

    dispatch_once(&qword_1002290F0, &stru_1001FB680);
LABEL_55:
    v28 = p_vtable[29];
    _NRLogWithArgs();
    goto LABEL_30;
  }
}

void sub_1000C0E1C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v4 + 40));
  objc_destroyWeak((v4 + 32));
  objc_destroyWeak((v3 + 40));
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v1 + 176));
  objc_destroyWeak((v1 + 184));
  _Unwind_Resume(a1);
}

void sub_1000C0E80(char *a1)
{
  v53 = a1;
  if (a1)
  {
    v3 = sub_10016C8BC();
    v68 = 0u;
    v69 = 0u;
    v70 = 0u;
    v71 = 0u;
    v4 = v3;
    v5 = [v4 countByEnumeratingWithState:&v68 objects:v72 count:16];
    if (v5)
    {
      v6 = *v69;
      do
      {
        for (i = 0; i != v5; i = (i + 1))
        {
          if (*v69 != v6)
          {
            objc_enumerationMutation(v4);
          }

          v8 = sub_100163A30(NRDLocalDevice, *(*(&v68 + 1) + 8 * i));
          v9 = v8;
          if (!v8)
          {
            if (qword_1002290F0 != -1)
            {
              dispatch_once(&qword_1002290F0, &stru_1001FB680);
            }

            v23 = qword_1002290E8;
            IsLevelEnabled = _NRLogIsLevelEnabled();

            if (IsLevelEnabled)
            {
              v25 = sub_1000B9544();
              _NRLogWithArgs();
            }

            goto LABEL_96;
          }

          v10 = *(v8 + 144);
          v11 = v10 == 0;

          if (!v11)
          {
            v1 = *(v9 + 144);
            if ([(objc_class *)v1 proxyCapability]== 1)
            {
              v12 = *(v9 + 144);
              v13 = [(objc_class *)v12 proxyProviderType]== 3;

              if (v13)
              {
                v14 = *(v9 + 144);
                v1 = [(objc_class *)v14 proxyProviderAuthMode];

                v9 = 1;
                goto LABEL_16;
              }
            }

            else
            {
            }
          }
        }

        v5 = [v4 countByEnumeratingWithState:&v68 objects:v72 count:16];
      }

      while (v5);
    }

    v1 = 0;
    v9 = 0;
LABEL_16:

    v5 = &qword_100229000;
    if (qword_1002290F0 != -1)
    {
      dispatch_once(&qword_1002290F0, &stru_1001FB680);
    }

    i = &qword_100229000;
    if (_NRLogIsLevelEnabled())
    {
      if (qword_1002290F0 != -1)
      {
        dispatch_once(&qword_1002290F0, &stru_1001FB680);
      }

      _NRLogWithArgs();
    }

    if ((v9 & 1) == 0)
    {
      sub_1000C2248(v53);
LABEL_82:

      return;
    }

    if (*(v53 + 20))
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

      goto LABEL_82;
    }

    host = nw_endpoint_create_host("0.0.0.0", "0");
    if (!host)
    {
      v37 = sub_1000B9544();
      v38 = _NRLogIsLevelEnabled();

      if (v38)
      {
        v39 = sub_1000B9544();
        _NRLogWithArgs();
      }

      goto LABEL_96;
    }

    v65[0] = _NSConcreteStackBlock;
    v2 = 3221225472;
    v65[1] = 3221225472;
    v65[2] = sub_1000C58E0;
    v65[3] = &unk_1001FB4C0;
    v66 = &stru_1001FB498;
    v67 = v1;
    v65[4] = v53;
    v1 = objc_retainBlock(v65);
    v15 = _nw_parameters_configure_protocol_default_configuration;
    v9 = v15;
    if (v1)
    {
      if (v15)
      {
        if (_nw_parameters_configure_protocol_disable != v15)
        {
          v16 = nw_parameters_create();
          if (!v16)
          {
            if (qword_1002290F0 == -1)
            {
              goto LABEL_46;
            }

            goto LABEL_97;
          }

          if (_nw_parameters_configure_protocol_disable == v1)
          {
LABEL_42:
            options = nw_tcp_create_options();
            if (options)
            {
              if (nw_parameters_add_protocol_stack_member())
              {
                v20 = v16;
LABEL_71:

LABEL_72:
                while (1)
                {

LABEL_73:
                  v9 = nw_parameters_copy_default_protocol_stack(v20);
                  v26 = nw_http_messaging_create_options();
                  nw_protocol_stack_prepend_application_protocol(v9, v26);

                  nw_parameters_set_local_address();
                  nw_parameters_set_no_proxy();
                  nw_parameters_set_server_mode();
                  nw_parameters_set_attach_protocol_listener();
                  v27 = *(v53 + 17);
                  v28 = nw_http_proxy_server_create();
                  v30 = *(v53 + 20);
                  v29 = (v53 + 160);
                  *(v53 + 20) = v28;

                  v31 = *v29;
                  if (*v29)
                  {
                    break;
                  }

                  if (v5[30] != -1)
                  {
                    dispatch_once(&qword_1002290F0, &stru_1001FB680);
                  }

                  v32 = i[29];
                  if (_NRLogIsLevelEnabled())
                  {
                    if (v5[30] != -1)
                    {
                      dispatch_once(&qword_1002290F0, &stru_1001FB680);
                    }

                    v33 = i[29];
                    _NRLogWithArgs();
                  }

                  v31 = *(v53 + 20);
                  if (v31)
                  {
                    break;
                  }

                  v46 = sub_1000B9544();
                  v47 = _NRLogIsLevelEnabled();

                  if (v47)
                  {
                    v48 = sub_1000B9544();
                    _NRLogWithArgs();
                  }

LABEL_96:
                  _os_log_pack_size();
                  v4 = &v51 - ((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0);
                  v49 = *__error();
                  v50 = _os_log_pack_fill();
                  *v50 = 136446210;
                  *(v50 + 4) = "[NRLinkDirector startHTTPConnectProxyServerIfNeeded]";
                  sub_1000B9544();
                  _NRLogAbortWithPack();
                  __break(1u);
LABEL_97:
                  dispatch_once(&qword_1002290F0, &stru_1001FB680);
LABEL_46:
                  v21 = i[29];
                  if (_NRLogIsLevelEnabled())
                  {
                    if (v5[30] != -1)
                    {
                      dispatch_once(&qword_1002290F0, &stru_1001FB680);
                    }

                    v22 = i[29];
                    _NRLogWithArgs();
                  }

                  v16 = 0;
                  v20 = 0;
                }

                objc_initWeak(&v64, v31);
                objc_initWeak(&v63, v53);
                v34 = *(v53 + 20);
                v60[1] = _NSConcreteStackBlock;
                v60[2] = v2;
                v60[3] = sub_1000C5954;
                v60[4] = &unk_1001FB4E8;
                objc_copyWeak(&v61, &v63);
                objc_copyWeak(&v62, &v64);
                v60[5] = v53;
                nw_http_proxy_server_set_state_changed_handler();

                v35 = *(v53 + 20);
                v54 = _NSConcreteStackBlock;
                v55 = v2;
                v56 = sub_1000C5EF8;
                v57 = &unk_1001FB510;
                objc_copyWeak(&v59, &v63);
                objc_copyWeak(v60, &v64);
                v58 = v53;
                nw_http_proxy_server_set_outbound_connection_handler();

                v36 = *(v53 + 20);
                nw_http_proxy_server_start();

                objc_destroyWeak(v60);
                objc_destroyWeak(&v59);
                objc_destroyWeak(&v62);
                objc_destroyWeak(&v61);
                objc_destroyWeak(&v63);
                objc_destroyWeak(&v64);

                goto LABEL_82;
              }
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

            v20 = 0;
            goto LABEL_71;
          }

          v17 = nw_protocol_copy_swift_tls_record_definition();
          v18 = nw_protocol_create_options();

          if (v18)
          {
            if (nw_parameters_add_protocol_stack_member())
            {
              if (v9 != v1)
              {
                (*(v1 + 2))(v1, v18);
              }

              goto LABEL_42;
            }
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

LABEL_63:
          v20 = 0;
          goto LABEL_72;
        }

        v44 = sub_1000B9544();
        v45 = _NRLogIsLevelEnabled();

        if (v45)
        {
LABEL_92:
          v16 = sub_1000B9544();
          _NRLogWithArgs();
          goto LABEL_63;
        }
      }

      else
      {
        v42 = sub_1000B9544();
        v43 = _NRLogIsLevelEnabled();

        if (v43)
        {
          goto LABEL_92;
        }
      }
    }

    else
    {
      v40 = sub_1000B9544();
      v41 = _NRLogIsLevelEnabled();

      if (v41)
      {
        goto LABEL_92;
      }
    }

    v20 = 0;
    goto LABEL_73;
  }
}

void sub_1000C1A94(_Unwind_Exception *a1)
{
  objc_destroyWeak((v3 + 48));
  objc_destroyWeak((v3 + 40));
  objc_destroyWeak((v2 + 48));
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v1 + 136));
  objc_destroyWeak((v1 + 144));
  _Unwind_Resume(a1);
}

uint64_t sub_1000C1AE0()
{
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v0 = sub_10016C8BC();
  v1 = [v0 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v1)
  {
    v2 = *v15;
    while (2)
    {
      for (i = 0; i != v1; ++i)
      {
        if (*v15 != v2)
        {
          objc_enumerationMutation(v0);
        }

        v4 = sub_100163A30(NRDLocalDevice, *(*(&v14 + 1) + 8 * i));
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
        v8 = [v7 proxyCapability];

        if (v8 == 2)
        {
          if (sub_100169428(v5) & 1) != 0 || (!v5 ? (v9 = 0) : (v9 = v5[18]), v10 = v9, [v10 proxyProviderCriteria], v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v11, "excludeVPNClients"), v11, v10, (v12))
          {

            v1 = 1;
            goto LABEL_20;
          }
        }
      }

      v1 = [v0 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v1)
      {
        continue;
      }

      break;
    }
  }

LABEL_20:

  return v1;
}

void sub_1000C1C7C(uint64_t a1)
{
  if (!_NRIsAppleInternal() || *(a1 + 368))
  {
    return;
  }

  v5 = _NRCopySerialQueueAttr();
  v6 = "flow-monitor-agent";
  v7 = dispatch_queue_create("flow-monitor-agent", v5);

  if (!v7)
  {
    v42 = sub_1000B9544();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    v23 = "nr_dispatch_queue_create";
    if (IsLevelEnabled)
    {
      v44 = sub_1000B9544();
      _NRLogWithArgs();
    }

    v16 = _os_log_pack_size();
    v17 = v47 - ((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0);
    v45 = *__error();
    v46 = _os_log_pack_fill();
    *v46 = 136446466;
    *(v46 + 4) = "nr_dispatch_queue_create";
    *(v46 + 12) = 2080;
    *(v46 + 14) = "flow-monitor-agent";
    sub_1000B9544();
    _NRLogAbortWithPack();
    goto LABEL_17;
  }

  v8 = *(a1 + 376);
  *(a1 + 376) = v7;

  v9 = *(a1 + 376);
  v10 = nw_agent_create();
  v11 = *(a1 + 368);
  *(a1 + 368) = v10;

  v12 = *(a1 + 136);
  v13 = *(a1 + 368);
  v47[1] = _NSConcreteStackBlock;
  v47[2] = 3221225472;
  v47[3] = sub_1000C3B2C;
  v47[4] = &unk_1001FBE28;
  v47[0] = v12;
  v48 = v47[0];
  nw_agent_set_assert_handlers();
  v14 = *(a1 + 368);
  nw_agent_change_state();
  v53[0] = 0;
  v53[1] = 0;
  v15 = *(a1 + 368);
  nw_agent_get_uuid();
  v16 = [[NSUUID alloc] initWithUUIDBytes:v53];
  v17 = [NEPolicyRouteRule routeRuleWithAction:5 forType:6];
  [v17 setNetworkAgentUUID:v16];
  v18 = [NEPolicy alloc];
  v2 = &dispatch_group_enter_ptr;
  v52 = v17;
  v6 = &dispatch_group_enter_ptr;
  v19 = [NSArray arrayWithObjects:&v52 count:1];
  v20 = [NEPolicyResult routeRules:v19];
  v3 = &dispatch_group_enter_ptr;
  v21 = +[NEPolicyCondition allInterfaces];
  v51 = v21;
  v22 = [NSArray arrayWithObjects:&v51 count:1];
  v23 = [v18 initWithOrder:10 result:v20 conditions:v22];

  objc_opt_self();
  v1 = &qword_100229000;
  if (qword_100229410 != -1)
  {
LABEL_17:
    dispatch_once(&qword_100229410, &stru_1001FCD98);
  }

  v24 = qword_100229408;
  v25 = sub_100159E00(v24, @"CompanionFlowMonitor", v23);

  if (_os_feature_enabled_impl())
  {
    v26 = v3[327];
    objc_opt_self();
    v27 = sub_100003490();
    dispatch_assert_queue_V2(v27);

    v49 = xmmword_100196400;
    v28 = [[NSData alloc] initWithBytes:&v49 length:16];
    v29 = sub_100167F00(NRDLocalDevice, v28, @"0");

    v30 = [v26 flowRemoteAddress:v29 prefix:64];

    v31 = [v3[327] flowIPProtocol:17];
    v32 = [NEPolicy alloc];
    v33 = [v2[328] removeNetworkAgentUUID:v16];
    v34 = [v3[327] allInterfaces];
    v50[0] = v34;
    v50[1] = v31;
    v35 = [v3[327] isSystemProxyConnection];
    v50[2] = v35;
    v50[3] = v30;
    v36 = [v6[494] arrayWithObjects:v50 count:4];
    v37 = [v32 initWithOrder:10 result:v33 conditions:v36];

    objc_opt_self();
    if (qword_100229410 != -1)
    {
      dispatch_once(&qword_100229410, &stru_1001FCD98);
    }

    v38 = v47[0];
    v39 = qword_100229408;
    v40 = sub_100159E00(v39, @"CompanionFlowMonitor", v37);

    v1 = &qword_100229000;
  }

  else
  {
    v37 = v23;
    v38 = v47[0];
  }

  objc_opt_self();
  if (v1[130] != -1)
  {
    dispatch_once(&qword_100229410, &stru_1001FCD98);
  }

  v41 = qword_100229408;
  sub_10015A52C(v41);
}

uint64_t sub_1000C2248(uint64_t a1)
{
  result = *(a1 + 160);
  if (result)
  {
    nw_http_proxy_server_cancel();
    v3 = *(a1 + 160);
    *(a1 + 160) = 0;

    if (qword_1002290F0 != -1)
    {
      dispatch_once(&qword_1002290F0, &stru_1001FB680);
    }

    result = _NRLogIsLevelEnabled();
    if (result)
    {
      if (qword_1002290F0 != -1)
      {
        dispatch_once(&qword_1002290F0, &stru_1001FB680);
      }

      return _NRLogWithArgs();
    }
  }

  return result;
}

void sub_1000C2318(void *a1)
{
  v2 = a1;
  v3 = &qword_100229000;
  if ([v2 count])
  {
    sub_1000C2A1C();
    objc_opt_self();
    if (qword_100229410 != -1)
    {
      dispatch_once(&qword_100229410, &stru_1001FCD98);
    }

    v4 = qword_100229408;
    sub_10015A238(v4, @"NRLinkDirector-Drop-ASQUIC");
  }

  else
  {
    sub_1000C3294();
    objc_opt_self();
    if (qword_100229410 != -1)
    {
      dispatch_once(&qword_100229410, &stru_1001FCD98);
    }

    v5 = qword_100229408;
    v6 = sub_10015A4BC(v5, @"NRLinkDirector-Drop-ASQUIC");

    if ((v6 & 1) == 0)
    {
      v43 = v2;
      objc_opt_self();
      v7 = [NEPolicyCondition requiredAgentDomain:@"com.apple.networkrelay" agentType:@"ASResolver"];
      objc_opt_self();
      v41 = [NEPolicyCondition requiredAgentDomain:@"com.apple.networkrelay" agentType:@"ASListener"];
      v42 = v7;
      v53[0] = v7;
      v53[1] = v41;
      [NSArray arrayWithObjects:v53 count:2];
      v45 = 0u;
      v46 = 0u;
      v47 = 0u;
      v44 = v48 = 0u;
      v8 = [v44 countByEnumeratingWithState:&v45 objects:v52 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v46;
        do
        {
          for (i = 0; i != v9; i = i + 1)
          {
            v12 = v3;
            if (*v46 != v10)
            {
              objc_enumerationMutation(v44);
            }

            v13 = *(*(&v45 + 1) + 8 * i);
            v14 = [NEPolicy alloc];
            v1 = [NEPolicyResult dropWithFlags:4];
            v15 = +[NEPolicyCondition allInterfaces];
            v51[0] = v15;
            v51[1] = v13;
            v16 = [NSArray arrayWithObjects:v51 count:2];
            v17 = [v14 initWithOrder:5000 result:v1 conditions:v16];

            objc_opt_self();
            v3 = v12;
            if (v12[130] != -1)
            {
              dispatch_once(&qword_100229410, &stru_1001FCD98);
            }

            v18 = qword_100229408;
            v19 = sub_100159E00(v18, @"NRLinkDirector-Drop-ASQUIC", v17);
          }

          v9 = [v44 countByEnumeratingWithState:&v45 objects:v52 count:16];
        }

        while (v9);
      }

      v2 = v43;
    }
  }

  objc_opt_self();
  if (v3[130] != -1)
  {
    dispatch_once(&qword_100229410, &stru_1001FCD98);
  }

  v20 = qword_100229408;
  v21 = sub_10015A4BC(v20, @"NRLinkDirector-Drop");

  if ((v21 & 1) == 0)
  {
    objc_opt_self();
    objc_opt_self();
    v22 = sub_100003490();
    dispatch_assert_queue_V2(v22);

    v49 = xmmword_100196400;
    v23 = [[NSData alloc] initWithBytes:&v49 length:16];
    v24 = sub_100167F00(NRDLocalDevice, v23, @"0");

    v25 = [NEPolicyCondition remoteAddress:v24 prefix:64];

    if (v25)
    {
      v26 = [NEPolicy alloc];
      v27 = [NEPolicyResult dropWithFlags:4];
      v50[0] = v25;
      v28 = +[NEPolicyCondition allInterfaces];
      v50[1] = v28;
      v29 = [NSArray arrayWithObjects:v50 count:2];
      v1 = [v26 initWithOrder:5000 result:v27 conditions:v29];

      if (v1)
      {
        objc_opt_self();
        if (v3[130] == -1)
        {
LABEL_25:
          v30 = qword_100229408;
          v31 = sub_100159E00(v30, @"NRLinkDirector-Drop", v1);

          goto LABEL_26;
        }

LABEL_35:
        dispatch_once(&qword_100229410, &stru_1001FCD98);
        goto LABEL_25;
      }

      v36 = sub_1000B9544();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      v2 = "[NRLinkDirector updateDropPoliciesIfNeeded:]";
      if (IsLevelEnabled)
      {
        v38 = sub_1000B9544();
        _NRLogWithArgs();
      }
    }

    else
    {
      v33 = sub_1000B9544();
      v34 = _NRLogIsLevelEnabled();

      if (v34)
      {
        v35 = sub_1000B9544();
        _NRLogWithArgs();
      }
    }

    _os_log_pack_size();
    v25 = &v41 - ((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0);
    v39 = *__error();
    v40 = _os_log_pack_fill();
    *v40 = 136446210;
    *(v40 + 4) = "[NRLinkDirector updateDropPoliciesIfNeeded:]";
    sub_1000B9544();
    _NRLogAbortWithPack();
    goto LABEL_35;
  }

LABEL_26:
  objc_opt_self();
  if (v3[130] != -1)
  {
    dispatch_once(&qword_100229410, &stru_1001FCD98);
  }

  v32 = qword_100229408;
  sub_10015A52C(v32);
}

void sub_1000C2A1C()
{
  v3 = objc_alloc_init(NSMutableDictionary);
  if (v3)
  {
    v4 = v3;
    objc_opt_self();
    v5 = sub_100003490();
    dispatch_assert_queue_V2(v5);

    v37 = xmmword_100196400;
    v6 = [[NSData alloc] initWithBytes:&v37 length:16];
    v7 = sub_100167F00(NRDLocalDevice, v6, @"0");

    [v4 setObject:@"PrivilegedTunnel" forKeyedSubscript:@"Level"];
    v8 = [v7 hostname];
    [v4 setObject:v8 forKeyedSubscript:@"Address"];

    [v4 setObject:&off_100209BF0 forKeyedSubscript:@"Prefix"];
    v1 = @"/var/mobile/Library/terminus/com.apple.necp_drop_dest.plist";
    v9 = [[NSMutableArray alloc] initWithContentsOfFile:@"/var/mobile/Library/terminus/com.apple.necp_drop_dest.plist"];
    v2 = &qword_100229000;
    if (v9)
    {
      v0 = v9;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        goto LABEL_12;
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

        _NRLogWithArgs();
      }
    }

    v0 = objc_alloc_init(NSMutableArray);
    if (v0)
    {
LABEL_12:
      v10 = sub_1000C3828(NRLinkDirector, v0);
      v1 = v10;
      if (v10)
      {
        v11 = v10;

        v0 = v11;
        if (([(__CFString *)v11 containsObject:v4]& 1) != 0)
        {
          goto LABEL_17;
        }
      }

      else if (([(__CFString *)v0 containsObject:v4]& 1) != 0)
      {
        goto LABEL_32;
      }

      [(__CFString *)v0 addObject:v4];
LABEL_17:
      v36 = 0;
      v12 = [NSPropertyListSerialization dataWithPropertyList:v0 format:200 options:0 error:&v36];
      v13 = v36;
      if (v13)
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

          v14 = qword_1002290E8;
          v34 = [v13 localizedDescription];
          _NRLogWithArgs();
        }
      }

      else if ((sub_100003984(@"/var/mobile/Library/terminus/com.apple.necp_drop_dest.plist", v12, 1) & 1) == 0)
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

LABEL_32:
      objc_opt_self();
      if (qword_1002294C8 == -1)
      {
        goto LABEL_33;
      }

      goto LABEL_71;
    }

    v29 = sub_1000B9544();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v31 = sub_1000B9544();
      _NRLogWithArgs();
    }

    v4 = _os_log_pack_size();
    v7 = &v35 - ((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0);
    v32 = *__error();
  }

  else
  {
    v25 = sub_1000B9544();
    v26 = _NRLogIsLevelEnabled();

    if (v26)
    {
      v27 = sub_1000B9544();
      _NRLogWithArgs();
    }

    v4 = _os_log_pack_size();
    v7 = &v35 - ((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0);
    v28 = *__error();
  }

  v33 = _os_log_pack_fill();
  *v33 = 136446210;
  *(v33 + 4) = "[NRLinkDirector addTerminusPrefixDropPolicy]";
  sub_1000B9544();
  _NRLogAbortWithPack();
LABEL_71:
  dispatch_once(&qword_1002294C8, &stru_1001FD250);
LABEL_33:
  v15 = qword_1002294C0;
  sub_1001816DC(v15, &stru_1001FB368);

  [@"/var/mobile/Library/terminus/com.apple.necp_drop_dest.plist" UTF8String];
  v16 = ne_session_add_necp_drop_dest_from_path();
  v17 = v2[30];
  if (v16)
  {
    v18 = v16;
    if (v17 != -1)
    {
      dispatch_once(&qword_1002290F0, &stru_1001FB680);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (v2[30] != -1)
      {
        dispatch_once(&qword_1002290F0, &stru_1001FB680);
      }

      _NRLogWithArgs();
    }

    v19 = _CFXPCCreateXPCObjectFromCFObject();
    if (v19)
    {
      v20 = ne_session_add_necp_drop_dest_from_dest_list();
      if (!v20)
      {
        if (v2[30] != -1)
        {
          dispatch_once(&qword_1002290F0, &stru_1001FB680);
        }

        if (_NRLogIsLevelEnabled())
        {
          if (v2[30] != -1)
          {
            dispatch_once(&qword_1002290F0, &stru_1001FB680);
          }

          _NRLogWithArgs();
        }

        goto LABEL_56;
      }

      v18 = v20;
    }

    if (v2[30] != -1)
    {
      dispatch_once(&qword_1002290F0, &stru_1001FB680);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (v2[30] != -1)
      {
        dispatch_once(&qword_1002290F0, &stru_1001FB680);
      }

      _NRLogWithArgs();
    }

    v21 = [[NSString alloc] initWithFormat:@"ne_session_add_necp_drop_dest_* failed with error %d", v18];
    sub_10013C2A8(@"addTerminusPrefixDropPolicy", v21, 0, 0, 0, v22, v23, v24, v35);

LABEL_56:
    goto LABEL_57;
  }

  if (v17 != -1)
  {
    dispatch_once(&qword_1002290F0, &stru_1001FB680);
  }

  if (_NRLogIsLevelEnabled())
  {
    if (v2[30] != -1)
    {
      dispatch_once(&qword_1002290F0, &stru_1001FB680);
    }

    _NRLogWithArgs();
  }

LABEL_57:
}

void sub_1000C3294()
{
  v5 = objc_alloc_init(NSMutableDictionary);
  if (!v5)
  {
    v15 = sub_1000B9544();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v17 = sub_1000B9544();
      _NRLogWithArgs();
    }

    v6 = _os_log_pack_size();
    v9 = &v26 - ((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0);
    v18 = *__error();
    v19 = _os_log_pack_fill();
    *v19 = 136446210;
    *(v19 + 4) = "[NRLinkDirector removeTerminusPrefixDropPolicy]";
    goto LABEL_38;
  }

  v6 = v5;
  objc_opt_self();
  v7 = sub_100003490();
  dispatch_assert_queue_V2(v7);

  v28 = xmmword_100196400;
  v8 = [[NSData alloc] initWithBytes:&v28 length:16];
  v9 = sub_100167F00(NRDLocalDevice, v8, @"0");

  [v6 setObject:@"PrivilegedTunnel" forKeyedSubscript:@"Level"];
  v10 = [v9 hostname];
  [v6 setObject:v10 forKeyedSubscript:@"Address"];

  [v6 setObject:&off_100209BF0 forKeyedSubscript:@"Prefix"];
  v2 = &dispatch_group_enter_ptr;
  v1 = @"/var/mobile/Library/terminus/com.apple.necp_drop_dest.plist";
  v11 = [[NSMutableArray alloc] initWithContentsOfFile:@"/var/mobile/Library/terminus/com.apple.necp_drop_dest.plist"];
  if (v11)
  {
    v0 = v11;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_12;
    }

    v3 = &qword_100229000;
    if (qword_1002290F0 != -1)
    {
      dispatch_once(&qword_1002290F0, &stru_1001FB680);
    }

    v4 = &qword_100229000;
    if (_NRLogIsLevelEnabled())
    {
      if (qword_1002290F0 != -1)
      {
        dispatch_once(&qword_1002290F0, &stru_1001FB680);
      }

      _NRLogWithArgs();
    }
  }

  v0 = objc_alloc_init(NSMutableArray);
  if (!v0)
  {
    v20 = sub_1000B9544();
    v21 = _NRLogIsLevelEnabled();

    v0 = "[NRLinkDirector removeTerminusPrefixDropPolicy]";
    if (v21)
    {
      v22 = sub_1000B9544();
      _NRLogWithArgs();
    }

    v6 = _os_log_pack_size();
    v9 = &v26 - ((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0);
    v23 = *__error();
    v24 = _os_log_pack_fill();
    *v24 = 136446210;
    *(v24 + 4) = "[NRLinkDirector removeTerminusPrefixDropPolicy]";
LABEL_38:
    sub_1000B9544();
    _NRLogAbortWithPack();
    goto LABEL_39;
  }

LABEL_12:
  v12 = sub_1000C3828(NRLinkDirector, v0);
  v1 = v12;
  if (v12)
  {
    v13 = v12;

    v0 = v13;
    if (([v13 containsObject:v6] & 1) == 0)
    {
LABEL_17:
      v27 = 0;
      v2 = [NSPropertyListSerialization dataWithPropertyList:v0 format:200 options:0 error:&v27];
      v3 = v27;
      if (!v3)
      {
        if ((sub_100003984(@"/var/mobile/Library/terminus/com.apple.necp_drop_dest.plist", v2, 1) & 1) == 0)
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

        goto LABEL_30;
      }

      v4 = &qword_100229000;
      if (qword_1002290F0 == -1)
      {
LABEL_19:
        if (_NRLogIsLevelEnabled())
        {
          if (v4[30] != -1)
          {
            dispatch_once(&qword_1002290F0, &stru_1001FB680);
          }

          v14 = qword_1002290E8;
          v25 = [v3 localizedDescription];
          _NRLogWithArgs();
        }

LABEL_30:

        goto LABEL_31;
      }

LABEL_39:
      dispatch_once(&qword_1002290F0, &stru_1001FB680);
      goto LABEL_19;
    }

LABEL_16:
    [v0 removeObject:v6];
    goto LABEL_17;
  }

  if ([v0 containsObject:v6])
  {
    goto LABEL_16;
  }

LABEL_31:
}

id sub_1000C3828(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_self();
  v3 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v2, "count")}];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v4 = v2;
  v5 = [v4 countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (!v5)
  {

    v23 = 0;
    goto LABEL_24;
  }

  v6 = v5;
  v7 = 0;
  v8 = &dispatch_group_enter_ptr;
  v9 = @"Level";
  v10 = *v28;
  while (2)
  {
    v11 = 0;
    v26 = v6;
    do
    {
      if (*v28 != v10)
      {
        objc_enumerationMutation(v4);
      }

      v19 = *(*(&v27 + 1) + 8 * v11);
      v20 = v8[497];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v21 = v19;
        v22 = [v21 objectForKeyedSubscript:v9];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v22 unsignedIntValue];
          NEPolicyGetStringForLegacyNECPLevel();
          v12 = v10;
          v13 = v8;
          v14 = v4;
          v15 = v3;
          v17 = v16 = v9;
          v18 = [v21 mutableCopy];
          [v18 setObject:v17 forKeyedSubscript:v16];
          [v15 addObject:v18];

          v9 = v16;
          v3 = v15;
          v4 = v14;
          v8 = v13;
          v10 = v12;
          v6 = v26;
          v7 = 1;
        }

        else
        {
          [v3 addObject:v21];
        }

LABEL_7:
        goto LABEL_8;
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

        v21 = qword_1002290E8;
        objc_opt_class();
        _NRLogWithArgs();
        goto LABEL_7;
      }

LABEL_8:
      v11 = v11 + 1;
    }

    while (v6 != v11);
    v6 = [v4 countByEnumeratingWithState:&v27 objects:v31 count:16];
    if (v6)
    {
      continue;
    }

    break;
  }

  if (v7)
  {
    v23 = v3;
  }

  else
  {
    v23 = 0;
  }

LABEL_24:
  v24 = v23;

  return v24;
}

void sub_1000C3B2C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = nw_agent_client_copy_parameters();
  pid = nw_parameters_get_pid();
  if (pid != getpid())
  {
    v9 = sub_10013CB6C(pid, 0);
    if ([v9 containsString:@"iperf3"] & 1) != 0 || (objc_msgSend(v9, "containsString:", @"terminus_test") & 1) != 0 || (objc_msgSend(v9, "containsString:", @"network_test"))
    {
      goto LABEL_12;
    }

    v10 = nw_agent_client_copy_path();
    v11 = v10;
    if (v10)
    {
      v12 = nw_path_copy_effective_local_endpoint(v10);
    }

    else
    {
      v12 = 0;
    }

    v13 = nw_agent_client_copy_endpoint();
    v14 = v13;
    if (!v11 && !v12 && !v13)
    {
LABEL_11:

LABEL_12:
      goto LABEL_13;
    }

    if (v13)
    {
      port = nw_endpoint_get_port(v13);
      if (port > 20998)
      {
        if ((port - 61314) < 2 || port == 20999)
        {
          goto LABEL_11;
        }

        v16 = 62742;
      }

      else if (port > 18998)
      {
        if (port == 18999)
        {
          goto LABEL_11;
        }

        v16 = 19999;
      }

      else
      {
        if (port == 853)
        {
          goto LABEL_11;
        }

        v16 = 17999;
      }

      if (port == v16)
      {
        goto LABEL_11;
      }
    }

    if (v12)
    {
      v17 = nw_endpoint_get_port(v12);
      if (v17 > 20998)
      {
        if ((v17 - 61314) < 2 || v17 == 20999)
        {
          goto LABEL_11;
        }

        v18 = 62742;
      }

      else if (v17 > 18998)
      {
        if (v17 == 18999)
        {
          goto LABEL_11;
        }

        v18 = 19999;
      }

      else
      {
        if (v17 == 853)
        {
          goto LABEL_11;
        }

        v18 = 17999;
      }

      if (v17 == v18)
      {
        goto LABEL_11;
      }
    }

    v28 = 0;
    v29 = &v28;
    v30 = 0x2020000000;
    v31 = 0;
    if (v11 && (v19 = nw_path_copy_netagent_dictionary(), (xdict = v19) != 0))
    {
      applier[0] = _NSConcreteStackBlock;
      applier[1] = 3221225472;
      applier[2] = sub_1000C3EB4;
      applier[3] = &unk_1001FB600;
      applier[4] = &v28;
      xpc_dictionary_apply(v19, applier);
    }

    else
    {
      xdict = 0;
    }

    if ((v29[3] & 1) == 0)
    {
      v20 = sub_1000B9544();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      if (IsLevelEnabled)
      {
        v22 = sub_1000B9544();
        _NRLogWithArgs();
      }

      v23 = *(a1 + 32);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1000C3F54;
      block[3] = &unk_1001FD3C8;
      v26 = v9;
      dispatch_async(v23, block);
    }

    _Block_object_dispose(&v28, 8);
    goto LABEL_11;
  }

LABEL_13:
}

uint64_t sub_1000C3EB4(uint64_t a1, int a2, xpc_object_t xdict)
{
  length = 0;
  data = xpc_dictionary_get_data(xdict, "data", &length);
  if (strcmp(data + 16, "com.apple.networkrelay") || strcmp(data + 48, "ASListener") && strcmp(data + 48, "ASResolver"))
  {
    return 1;
  }

  result = 0;
  *(*(*(a1 + 32) + 8) + 24) = 1;
  return result;
}

void sub_1000C3F78(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained && *(WeakRetained + 13) == 1 && *(WeakRetained + 36) == *(a1 + 32))
  {
    v3 = WeakRetained;
    sub_1000C3FE8(0);
    WeakRetained = v3;
  }
}

void sub_1000C3FE8(void *a1)
{
  v1 = a1;
  if (qword_1002290D8 != -1)
  {
    dispatch_once(&qword_1002290D8, &stru_1001FB660);
  }

  v64 = 0;
  v62 = 0u;
  v63 = 0u;
  memset(buffer, 0, sizeof(buffer));
  if (proc_pidinfo(dword_100228450, 3, 0, buffer, 136) != 136)
  {
    v7 = __error();
    if (strerror_r(*v7, v60, 0x80uLL))
    {
      v60[0] = 0;
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

      _NRLogWithArgs();
    }

    goto LABEL_97;
  }

  if (!v62)
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

    goto LABEL_97;
  }

  if (v62 >= 0x401)
  {
    v2 = [NSString alloc];
    v3 = [v2 initWithFormat:@"unexpected number of open files %u", v62];
    sub_10013C2A8(@"fdUsageMonitor", v3, 0, 0, 0, v4, v5, v6, v48);
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

    goto LABEL_96;
  }

  v8 = 8 * v62;
  v9 = malloc_type_malloc(8 * v62, 0x2D23D682uLL);
  if (!v9)
  {
    v42 = sub_1000B9544();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v44 = sub_1000B9544();
      _NRLogWithArgs();
    }

    _os_log_pack_size();
    __chkstk_darwin();
    v45 = *__error();
    v46 = _os_log_pack_fill();
    *v46 = 136446210;
    *(v46 + 4) = "[NRLinkDirector checkFDUsageAndFillInStatusDictionary:]";
    sub_1000B9544();
    v47 = _NRLogAbortWithPack();
    sub_1000C49A4(v47);
    return;
  }

  v10 = v9;
  v11 = proc_pidinfo(dword_100228450, 1, 0, v9, v8);
  if (v11 < 1 || (v11 & 7) != 0)
  {
    v19 = __error();
    if (strerror_r(*v19, v60, 0x80uLL))
    {
      v60[0] = 0;
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

      _NRLogWithArgs();
    }

    free(v10);
    goto LABEL_97;
  }

  v49 = v1;
  v12 = v11 >> 3;
  v13 = objc_alloc_init(NSCountedSet);
  v14 = 4;
  do
  {
    v15 = *&v10[v14];
    if (v15 <= 4)
    {
      if (v15 > 1)
      {
        if (v15 == 2)
        {
          v16 = v13;
          v17 = @"SOCKET";
        }

        else
        {
          v16 = v13;
          if (v15 == 3)
          {
            v17 = @"PSHM";
          }

          else
          {
            v17 = @"PSEM";
          }
        }

        goto LABEL_54;
      }

      if (!v15)
      {
        v16 = v13;
        v17 = @"ATALK";
        goto LABEL_54;
      }

      if (v15 == 1)
      {
        v16 = v13;
        v17 = @"VNODE";
        goto LABEL_54;
      }
    }

    else if (v15 > 8)
    {
      switch(v15)
      {
        case 9:
          v16 = v13;
          v17 = @"NETPOLICY";
          goto LABEL_54;
        case 10:
          v16 = v13;
          v17 = @"CHANNEL";
          goto LABEL_54;
        case 11:
          v16 = v13;
          v17 = @"NEXUS";
          goto LABEL_54;
      }
    }

    else
    {
      switch(v15)
      {
        case 5:
          v16 = v13;
          v17 = @"KQUEUE";
          goto LABEL_54;
        case 6:
          v16 = v13;
          v17 = @"PIPE";
          goto LABEL_54;
        case 7:
          v16 = v13;
          v17 = @"FSEVENTS";
LABEL_54:
          [v16 addObject:v17];
          goto LABEL_55;
      }
    }

    v18 = [[NSString alloc] initWithFormat:@"%u", *&v10[v14]];
    [v13 addObject:v18];

LABEL_55:
    v14 += 8;
    --v12;
  }

  while (v12);
  free(v10);
  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v3 = v13;
  v20 = [v3 countByEnumeratingWithState:&v54 objects:v59 count:16];
  if (v20)
  {
    v21 = v20;
    LODWORD(v22) = 0;
    v23 = *v55;
    do
    {
      for (i = 0; i != v21; i = i + 1)
      {
        if (*v55 != v23)
        {
          objc_enumerationMutation(v3);
        }

        v25 = *(*(&v54 + 1) + 8 * i);
        v26 = [v3 countForObject:v25];
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

        if (v49)
        {
          v27 = [NSNumber numberWithUnsignedInt:v26];
          [v49 setObject:v27 forKeyedSubscript:v25];
        }

        if (v26 >= 0x101)
        {
          v28 = [[NSString alloc] initWithFormat:@"FD usage for type %@ exceeded threshold(%u)", v25, 256];
          sub_10013C2A8(@"fdUsageMonitor", v28, 0, 0, 0, v29, v30, v31, v48);
        }

        v22 = (v22 + v26);
      }

      v21 = [v3 countByEnumeratingWithState:&v54 objects:v59 count:16];
    }

    while (v21);
  }

  else
  {
    v22 = 0;
  }

  v1 = v49;
  if (v49)
  {
    v32 = [NSNumber numberWithUnsignedInt:v22];
    [v49 setObject:v32 forKeyedSubscript:@"Total"];
  }

  if (v22 >= 0x201)
  {
    v33 = [[NSMutableString alloc] initWithFormat:@"Total FD usage exceeded threshold(%u)", 512];
    v50 = 0u;
    v51 = 0u;
    v52 = 0u;
    v53 = 0u;
    v34 = v3;
    v35 = [v34 countByEnumeratingWithState:&v50 objects:v58 count:16];
    if (v35)
    {
      v36 = v35;
      v37 = *v51;
      do
      {
        for (j = 0; j != v36; j = j + 1)
        {
          if (*v51 != v37)
          {
            objc_enumerationMutation(v34);
          }

          [v33 appendFormat:@" %@:%u", *(*(&v50 + 1) + 8 * j), objc_msgSend(v34, "countForObject:", *(*(&v50 + 1) + 8 * j))];
        }

        v36 = [v34 countByEnumeratingWithState:&v50 objects:v58 count:16];
      }

      while (v36);
    }

    sub_10013C2A8(@"fdUsageMonitor", v33, 0, 0, 0, v39, v40, v41, v48);
  }

LABEL_96:

LABEL_97:
}

void sub_1000C49C4(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained && WeakRetained[13] == 1 && *(WeakRetained + 39) == *(a1 + 32))
  {
    v26 = 0;
    v27 = &v26;
    v28 = 0x3032000000;
    v29 = sub_1000C4DAC;
    v30 = sub_1000C4DBC;
    v31 = 0;
    v22 = 0;
    v23 = &v22;
    v24 = 0x2020000000;
    v25 = 0;
    v6 = nw_path_copy_netagent_dictionary();
    v7 = v6;
    if (v6)
    {
      applier[0] = _NSConcreteStackBlock;
      applier[1] = 3221225472;
      applier[2] = sub_1000C4DC4;
      applier[3] = &unk_1001FB538;
      applier[4] = &v26;
      applier[5] = &v22;
      xpc_dictionary_apply(v6, applier);
    }

    v8 = *(v5 + 320);
    v9 = v27;
    if (v8 || v27[5])
    {
      v10 = *(v5 + 320);
      v11 = [v10 isEqual:v9[5]];

      if ((v11 & 1) == 0)
      {
        if (qword_1002290F0 != -1)
        {
          dispatch_once(&qword_1002290F0, &stru_1001FB680);
        }

        v12 = qword_1002290E8;
        IsLevelEnabled = _NRLogIsLevelEnabled();

        if (IsLevelEnabled)
        {
          if (qword_1002290F0 != -1)
          {
            dispatch_once(&qword_1002290F0, &stru_1001FB680);
          }

          v14 = qword_1002290E8;
          v19 = *(v5 + 320);
          _NRLogWithArgs();
        }

        objc_storeStrong((v5 + 320), v27[5]);
        sub_1000B98D8(v5);
      }
    }

    v15 = *(v23 + 24);
    if (v15 != *(v5 + 19))
    {
      *(v5 + 19) = v15;
      if (qword_1002290F0 != -1)
      {
        dispatch_once(&qword_1002290F0, &stru_1001FB680);
      }

      v16 = qword_1002290E8;
      v17 = _NRLogIsLevelEnabled();

      if (v17)
      {
        if (qword_1002290F0 != -1)
        {
          dispatch_once(&qword_1002290F0, &stru_1001FB680);
        }

        v18 = qword_1002290E8;
        v20 = *(v5 + 19);
        _NRLogWithArgs();
      }
    }

    _Block_object_dispose(&v22, 8);
    _Block_object_dispose(&v26, 8);
  }
}

void sub_1000C4D04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_1000C4D28(void *a1)
{
  v2 = a1[4];
  if (v2 && *(v2 + 13) == 1 && *(v2 + 312) == a1[5])
  {
    v4 = nw_path_evaluator_copy_path();
    (*(a1[6] + 16))();
  }
}

uint64_t sub_1000C4DAC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1000C4DC4(uint64_t a1, int a2, xpc_object_t xdict)
{
  length = 0;
  data = xpc_dictionary_get_data(xdict, "data", &length);
  result = 1;
  if (data && length >= 0xD8 && length == *(data + 53) + 216)
  {
    v6 = data;
    if (!strcmp(data + 16, "NetworkExtension") && !strcmp(v6 + 48, "AppVPN"))
    {
      v7 = [[NSUUID alloc] initWithUUIDBytes:v6];
      v8 = *(*(a1 + 32) + 8);
      v9 = *(v8 + 40);
      *(v8 + 40) = v7;

      result = 0;
      *(*(*(a1 + 40) + 8) + 24) = (v6[208] & 2) != 0;
    }

    else
    {
      return 1;
    }
  }

  return result;
}

void sub_1000C4EA4(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained && *(WeakRetained + 13) == 1 && *(WeakRetained + 8) == a2)
  {
    v4 = WeakRetained;
    sub_1000C4F10(WeakRetained, a2);
    WeakRetained = v4;
  }
}

void sub_1000C4F10(id val, int a2)
{
  v4 = *(val + 9) + 1;
  *(val + 9) = v4;
  objc_initWeak(&location, val);
  v5 = +[NEConfigurationManager sharedManagerForAllUsers];
  v6 = *(val + 17);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000C5024;
  v7[3] = &unk_1001FB5B0;
  objc_copyWeak(&v8, &location);
  v9 = a2;
  v10 = v4;
  [v5 loadConfigurationsWithCompletionQueue:v6 handler:v7];

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

void sub_1000C5000(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000C5024(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (!WeakRetained || *(WeakRetained + 13) != 1 || *(WeakRetained + 8) != *(a1 + 40) || *(a1 + 44) != *(WeakRetained + 9))
  {
    goto LABEL_59;
  }

  v46 = WeakRetained;
  if (!v6)
  {
    v9 = WeakRetained;
    v44 = *(WeakRetained + 42);
    v10 = *(v9 + 42);
    *(v9 + 42) = 0;

    v43 = *(v9 + 41);
    v11 = *(v9 + 41);
    *(v9 + 41) = 0;

    v47 = objc_alloc_init(NSMutableArray);
    v52 = 0u;
    v53 = 0u;
    v54 = 0u;
    v55 = 0u;
    v45 = v5;
    v12 = v5;
    v13 = [v12 countByEnumeratingWithState:&v52 objects:v57 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = 0;
      v16 = *v53;
      do
      {
        for (i = 0; i != v14; i = i + 1)
        {
          if (*v53 != v16)
          {
            objc_enumerationMutation(v12);
          }

          v18 = *(*(&v52 + 1) + 8 * i);
          v19 = [v18 appVPN];
          if (v19)
          {
            v20 = v19;
            v21 = [v18 appVPN];
            v22 = [v21 isEnabled];

            if (v22)
            {
              v23 = [v18 appVPN];
              v24 = [v23 copyAppRuleIDs];

              if ([v24 count])
              {
                [v47 addObjectsFromArray:v24];
              }
            }
          }

          v25 = [v18 copyProviderMachOUUIDs];
          if ([v25 count])
          {
            if (!v15)
            {
              v15 = objc_alloc_init(NSMutableSet);
            }

            [v15 addObjectsFromArray:v25];
          }
        }

        v14 = [v12 countByEnumeratingWithState:&v52 objects:v57 count:16];
      }

      while (v14);
    }

    else
    {
      v15 = 0;
    }

    objc_storeStrong(v46 + 42, v15);
    if ([v47 count])
    {
      v12 = objc_alloc_init(NSMutableSet);
      v48 = 0u;
      v49 = 0u;
      v50 = 0u;
      v51 = 0u;
      v26 = v47;
      v27 = [v26 countByEnumeratingWithState:&v48 objects:v56 count:16];
      if (v27)
      {
        v28 = v27;
        v29 = *v49;
        do
        {
          for (j = 0; j != v28; j = j + 1)
          {
            if (*v49 != v29)
            {
              objc_enumerationMutation(v26);
            }

            v31 = sub_10013A6D4(*(*(&v48 + 1) + 8 * j));
            if ([v31 count])
            {
              [v12 addObjectsFromArray:v31];
            }
          }

          v28 = [v26 countByEnumeratingWithState:&v48 objects:v56 count:16];
        }

        while (v28);
      }

      if ([v12 count])
      {
        objc_storeStrong(v46 + 41, v12);
        v32 = sub_1000B9544();
        IsLevelEnabled = _NRLogIsLevelEnabled();

        if (IsLevelEnabled)
        {
          v34 = sub_1000B9544();
          v41 = 2974;
          v42 = v46[41];
          v39 = "";
          v40 = "[NRLinkDirector processNEConfigurationChangeForNotifyToken:]_block_invoke";
          _NRLogWithArgs();
        }
      }
    }

    v6 = 0;
    v5 = v45;
    if (v43 || (v12 = v46[41]) != 0)
    {
      v35 = [v46[41] isEqualToSet:{v43, v39, v40, v41, v42}];
      if (!v43)
      {
      }

      if ((v35 & 1) == 0)
      {
        sub_1000B98D8(v46);
      }
    }

    v36 = v46;
    if (v44 || (v12 = v46[42], v36 = v46, v12))
    {
      v37 = [v36[42] isEqualToSet:{v44, v39}];
      v38 = v37;
      if (v44)
      {
        v36 = v46;
        if (!v37)
        {
          goto LABEL_56;
        }
      }

      else
      {

        v36 = v46;
        if ((v38 & 1) == 0)
        {
          goto LABEL_56;
        }
      }
    }

    if (v36[42])
    {
LABEL_57:

LABEL_58:
      WeakRetained = v46;
      goto LABEL_59;
    }

LABEL_56:
    sub_1000B98D8(v46);
    goto LABEL_57;
  }

  if (qword_1002290F0 != -1)
  {
    dispatch_once(&qword_1002290F0, &stru_1001FB680);
  }

  v8 = _NRLogIsLevelEnabled();
  WeakRetained = v46;
  if (v8)
  {
    if (qword_1002290F0 != -1)
    {
      dispatch_once(&qword_1002290F0, &stru_1001FB680);
    }

    _NRLogWithArgs();
    goto LABEL_58;
  }

LABEL_59:
}

void sub_1000C5518(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained && *(WeakRetained + 7) == a2)
  {
    v4 = *(WeakRetained + 17);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000C55BC;
    block[3] = &unk_1001FD3C8;
    block[4] = WeakRetained;
    v5 = WeakRetained;
    dispatch_async(v4, block);
    WeakRetained = v5;
  }
}

void sub_1000C55BC(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    if (*(v1 + 13) == 1)
    {
      v3 = *(v1 + 28);
      if (v3 != -1)
      {
        state64 = 0;
        notify_get_state(v3, &state64);
        v4 = *(a1 + 32);
        if (v4)
        {
          *(v4 + 24) = state64;
          v5 = *(a1 + 32);
          if (v5)
          {
            v6 = *(v5 + 24);
          }
        }

        else
        {
          v5 = 0;
        }

        StringFromThermalPressureLevel = createStringFromThermalPressureLevel();
        sub_1000B926C(v5, 1049, @"%@", v8, v9, v10, v11, v12, StringFromThermalPressureLevel);

        v13 = *(a1 + 32);
        if (v13)
        {
          v14 = *(v13 + 224);
          if (v14)
          {
            v15 = v14;
            v16 = *(a1 + 32);
            v17 = v16 ? *(v16 + 224) : 0;
            v18 = [v17 count];

            if (v18)
            {
              v19 = *(a1 + 32);
              if (v19)
              {
                v20 = *(v19 + 40);
              }

              else
              {
                v20 = 0;
              }

              [v20 handleThermalStateUpdate];
              v21 = *(a1 + 32);
              if (v21)
              {
                v22 = *(v21 + 48);
              }

              else
              {
                v22 = 0;
              }

              [v22 handleThermalStateUpdate];
              v23 = *(a1 + 32);
              if (v23)
              {
                v24 = *(v23 + 56);
              }

              else
              {
                v24 = 0;
              }

              [v24 handleThermalStateUpdate];
              v25 = *(a1 + 32);
              if (v25)
              {
                v26 = *(v25 + 64);
              }

              else
              {
                v26 = 0;
              }

              [v26 handleThermalStateUpdate];
              if (_NRIsAppleInternal())
              {
                v27 = *(a1 + 32);
                if (v27)
                {
                  v28 = *(v27 + 192);
                }

                else
                {
                  v28 = 0;
                }

                [v28 handleThermalStateUpdate];
              }

              v45 = 0u;
              v46 = 0u;
              v43 = 0u;
              v44 = 0u;
              v29 = *(a1 + 32);
              if (v29)
              {
                v29 = v29[28];
              }

              v30 = v29;
              v31 = [v30 countByEnumeratingWithState:&v43 objects:v48 count:16];
              if (v31)
              {
                v32 = v31;
                v33 = *v44;
                do
                {
                  for (i = 0; i != v32; i = i + 1)
                  {
                    if (*v44 != v33)
                    {
                      objc_enumerationMutation(v30);
                    }

                    v36 = *(a1 + 32);
                    if (v36)
                    {
                      v37 = *(v36 + 224);
                    }

                    else
                    {
                      v37 = 0;
                    }

                    v38 = [v37 objectForKeyedSubscript:*(*(&v43 + 1) + 8 * i)];
                    v39 = v38;
                    if (v38 && *(v38 + 14) == 1)
                    {
                      objc_opt_self();
                      if (qword_1002290C0 != -1)
                      {
                        dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
                      }

                      v40 = qword_1002290B8;
                      if (v40)
                      {
                        v35 = v40[6];

                        if (v35 > *(v39 + 84))
                        {
                          v41 = *(v39 + 648);
                          if (v41)
                          {
                            v41[4] |= 0x400u;
                          }

                          v42 = *(v39 + 640);
                          if (v42)
                          {
                            v42[4] |= 0x400u;
                          }
                        }
                      }

                      else
                      {
                        v35 = 0;
                      }

                      *(v39 + 84) = v35;
                      sub_1000F5768(v39, *(v39 + 160));
                    }
                  }

                  v32 = [v30 countByEnumeratingWithState:&v43 objects:v48 count:16];
                }

                while (v32);
              }
            }
          }
        }
      }
    }
  }
}

void sub_1000C58E0(void *a1, nw_protocol_options_t options)
{
  v3 = nw_tls_copy_sec_protocol_options(options);
  v4 = a1[6];
  v8 = v3;
  sec_protocol_options_set_use_raw_external_pre_shared_keys();
  v6 = a1[4];
  v5 = a1[5];
  if (v6)
  {
    v7 = *(v6 + 136);
  }

  sec_protocol_options_set_external_pre_shared_key_selection_block();
}

void sub_1000C5954(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v7 = objc_loadWeakRetained((a1 + 48));
  if (!WeakRetained || WeakRetained[13] != 1 || *(WeakRetained + 20) != v7)
  {
    goto LABEL_55;
  }

  if ((a2 - 1) <= 1)
  {
    v8 = v7;
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

      v9 = qword_1002290E8;
      nw_http_proxy_server_get_port();
      _NRLogWithArgs();
    }

    WeakRetained[14] = 0;
    v7 = v8;
    goto LABEL_28;
  }

  if (a2 == 3)
  {
    v10 = v7;
    sub_1000C2248(WeakRetained);
    if (v5 && nw_error_get_error_domain(v5) == nw_error_domain_posix && nw_error_get_error_code(v5) == 48)
    {
      v11 = WeakRetained[14];
      if (v11 <= 4)
      {
        WeakRetained[14] = v11 + 1;
        v12 = sub_1000B9544();
        IsLevelEnabled = _NRLogIsLevelEnabled();

        if (IsLevelEnabled)
        {
          v14 = sub_1000B9544();
          v41 = WeakRetained[14];
          _NRLogWithArgs();
        }

        v15 = dispatch_time(0x8000000000000000, 200000000 * WeakRetained[14]);
        v16 = *(WeakRetained + 17);
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_1000C677C;
        block[3] = &unk_1001FD3C8;
        v48 = WeakRetained;
        dispatch_after(v15, v16, block);

        goto LABEL_27;
      }

      v37 = sub_1000B9544();
      v38 = _NRLogIsLevelEnabled();

      if (v38)
      {
        v39 = sub_1000B9544();
        v40 = WeakRetained[14];
        _NRLogWithArgs();
      }
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

    WeakRetained[14] = 0;
LABEL_27:
    v7 = v10;
  }

LABEL_28:
  v42 = WeakRetained;
  v43 = v5;
  v44 = v7;
  v45 = *(a1 + 32);
  if (v45)
  {
    v17 = sub_100003490();
    dispatch_assert_queue_V2(v17);

    v18 = sub_10016C8BC();
    v49 = 0u;
    v50 = 0u;
    v51 = 0u;
    v52 = 0u;
    obj = v18;
    v19 = [obj countByEnumeratingWithState:&v49 objects:v53 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v50;
      do
      {
        for (i = 0; i != v20; i = i + 1)
        {
          if (*v50 != v21)
          {
            objc_enumerationMutation(obj);
          }

          v23 = *(*(&v49 + 1) + 8 * i);
          v24 = sub_100163B2C(NRDLocalDevice, v23, 0);
          v25 = v24;
          if (v24)
          {
            v26 = *(v24 + 144);
            if (v26)
            {
              v27 = v26;
              v28 = v25[18];
              if ([v28 proxyCapability] != 1)
              {

                goto LABEL_34;
              }

              v29 = v25[18];
              v30 = [v29 proxyProviderType];

              if (v30 == 3)
              {
                v31 = v23;
                v32 = sub_100003490();
                dispatch_assert_queue_V2(v32);

                if (v31)
                {
                  v33 = [*(v45 + 224) objectForKeyedSubscript:v31];
                  v34 = v33;
                  if (v33)
                  {
                    sub_1000F4104(v33);
                  }

                  goto LABEL_44;
                }

                if (qword_1002290F0 != -1)
                {
                  dispatch_once(&qword_1002290F0, &stru_1001FB680);
                }

                v35 = qword_1002290E8;
                v36 = _NRLogIsLevelEnabled();

                if (v36)
                {
                  if (qword_1002290F0 != -1)
                  {
                    dispatch_once(&qword_1002290F0, &stru_1001FB680);
                  }

                  v34 = qword_1002290E8;
                  _NRLogWithArgs();
LABEL_44:
                }
              }
            }
          }

LABEL_34:
        }

        v20 = [obj countByEnumeratingWithState:&v49 objects:v53 count:16];
      }

      while (v20);
    }
  }

  v5 = v43;
  v7 = v44;
  WeakRetained = v42;
LABEL_55:
}

void sub_1000C5EF8(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v26 = a2;
  v9 = a3;
  v10 = a4;
  v11 = a5;
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

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v13 = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained && *(WeakRetained + 13) == 1 && WeakRetained[20] == v13)
  {
    v25 = v13;
    v14 = nw_parameters_copy(v9);
    well_known = *(a1 + 32);
    v16 = v10;
    v17 = v16;
    v24 = v14;
    if (well_known)
    {
      if (v16)
      {
        v27 = 0;
        v28 = &v27;
        v29 = 0x2020000000;
        v30 = 0;
        nw_http_fields_access_value_by_name();
        well_known = nw_http_response_create_well_known();
        if ((v28[3] & 1) == 0)
        {
          if (qword_1002290F0 != -1)
          {
            dispatch_once(&qword_1002290F0, &stru_1001FB680);
          }

          v18 = qword_1002290E8;
          IsLevelEnabled = _NRLogIsLevelEnabled();

          if (IsLevelEnabled)
          {
            if (qword_1002290F0 != -1)
            {
              dispatch_once(&qword_1002290F0, &stru_1001FB680);
            }

            v20 = qword_1002290E8;
            _NRLogWithArgs();
          }

          nw_http_response_set_status_code();
          nw_http_fields_append();
        }

        _Block_object_dispose(&v27, 8);
      }

      else
      {
        v21 = sub_1000B9544();
        v22 = _NRLogIsLevelEnabled();

        if (v22)
        {
          v23 = sub_1000B9544();
          _NRLogWithArgs();
        }

        well_known = 0;
      }
    }

    (*(v11 + 2))(v11, 0, v24, well_known, 0);
    v13 = v25;
  }
}

void sub_1000C626C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000C6288(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v18 = [NSString stringWithCString:a2 encoding:5];
    v3 = [v18 componentsSeparatedByString:@" "];
    v4 = [v3 objectAtIndexedSubscript:0];
    v5 = [v4 isEqualToString:@"Basic"];

    if (!v5)
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

      v10 = v3;
      goto LABEL_42;
    }

    v6 = [v3 objectAtIndexedSubscript:1];
    v7 = [v6 dataUsingEncoding:4];

    v8 = [[NSData alloc] initWithBase64EncodedData:v7 options:0];
    v9 = [[NSString alloc] initWithData:v8 encoding:4];
    v10 = [v9 componentsSeparatedByString:@":"];

    if ([v10 count] != 2)
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

      goto LABEL_41;
    }

    v11 = [v10 objectAtIndexedSubscript:0];
    v12 = [v10 objectAtIndexedSubscript:1];
    v13 = v11;
    v14 = v12;
    objc_opt_self();
    if (qword_100229138)
    {
      v15 = [qword_100229138 objectForKeyedSubscript:v13];
      v16 = [v15 isEqual:v14];

      v17 = qword_1002290F0;
      if (v16)
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

        *(*(*(a1 + 32) + 8) + 24) = 1;
LABEL_40:

LABEL_41:
LABEL_42:

        return;
      }
    }

    else
    {

      v17 = qword_1002290F0;
    }

    if (v17 != -1)
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

    goto LABEL_40;
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

    _NRLogWithArgs();
  }
}

void sub_1000C6784(id a1, OS_sec_protocol_metadata *a2, NSArray *a3, id a4)
{
  v5 = a3;
  v6 = a4;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v7 = v5;
  v8 = [(NSArray *)v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (!v8)
  {
LABEL_12:

    v6[2](v6, 0);
    goto LABEL_13;
  }

  v9 = v8;
  v10 = *v20;
LABEL_4:
  v11 = 0;
  while (1)
  {
    if (*v20 != v10)
    {
      objc_enumerationMutation(v7);
    }

    v12 = *(*(&v19 + 1) + 8 * v11);
    v13 = [v12 external_identity];
    objc_opt_self();
    if (qword_100229140)
    {
      break;
    }

LABEL_6:
    if (v9 == ++v11)
    {
      v9 = [(NSArray *)v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (!v9)
      {
        goto LABEL_12;
      }

      goto LABEL_4;
    }
  }

  v14 = [qword_100229140 objectForKeyedSubscript:v13];

  if (!v14)
  {
    goto LABEL_6;
  }

  v15 = [SecExternalPreSharedKey alloc];
  v16 = [v12 external_identity];
  v17 = [v12 context];
  v18 = [v15 initWithExternalIdentity:v16 :v14 :v17];
  (v6)[2](v6, v18);

LABEL_13:
}

void sub_1000C6978(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = objc_loadWeakRetained((a1 + 40));
  if (!WeakRetained || WeakRetained[13] != 1 || *(WeakRetained + 19) != v7)
  {
    goto LABEL_28;
  }

  if ((a2 - 1) > 1)
  {
    if (a2 != 3)
    {
      goto LABEL_28;
    }

    v9 = v7;
    sub_1000BC35C(WeakRetained);
    if (v5 && nw_error_get_error_domain(v5) == nw_error_domain_posix && nw_error_get_error_code(v5) == 48)
    {
      v10 = WeakRetained[14];
      if (v10 <= 4)
      {
        WeakRetained[14] = v10 + 1;
        v11 = sub_1000B9544();
        IsLevelEnabled = _NRLogIsLevelEnabled();

        if (IsLevelEnabled)
        {
          v13 = sub_1000B9544();
          v20 = WeakRetained[14];
          _NRLogWithArgs();
        }

        v14 = dispatch_time(0x8000000000000000, 200000000 * WeakRetained[14]);
        v15 = *(WeakRetained + 17);
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_1000C7DE0;
        block[3] = &unk_1001FD3C8;
        v22 = WeakRetained;
        dispatch_after(v14, v15, block);

        goto LABEL_27;
      }

      v16 = sub_1000B9544();
      v17 = _NRLogIsLevelEnabled();

      if (v17)
      {
        v18 = sub_1000B9544();
        v19 = WeakRetained[14];
        _NRLogWithArgs();
      }
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

    WeakRetained[14] = 0;
LABEL_27:
    v7 = v9;
    goto LABEL_28;
  }

  v8 = v7;
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

  WeakRetained[14] = 0;
  v7 = v8;
LABEL_28:
}