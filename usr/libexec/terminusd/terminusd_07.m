double sub_10009C064(uint64_t a1, uint64_t a2, int a3, int a4, uint64_t a5, int a6, int a7)
{
  *&result = 136447490;
  *a1 = 136447490;
  *(a1 + 4) = a2;
  *(a1 + 12) = 1024;
  *(a1 + 14) = a3;
  *(a1 + 18) = 1024;
  *(a1 + 20) = a4;
  *(a1 + 24) = 2112;
  *(a1 + 26) = a5;
  *(a1 + 34) = 1024;
  *(a1 + 36) = a6;
  *(a1 + 40) = 1024;
  *(a1 + 42) = a7;
  return result;
}

uint64_t sub_10009C0A8(void *a1)
{
  if ([a1 virtualInterface])
  {
    v3 = socket(2, 2, 0);
    if ((v3 & 0x80000000) == 0)
    {
      v4 = v3;
      [a1 virtualInterface];
      v5 = NEVirtualInterfaceCopyName();
      v6 = v5;
      if (v5)
      {
        v7 = [v5 UTF8String];
        if (v7)
        {
          v30 = *v7;
          if (v30)
          {
            v31 = v7[1];
            if (v31)
            {
              v32 = v7[2];
              if (v32)
              {
                v33 = v7[3];
                if (v33)
                {
                  v34 = v7[4];
                  if (v34)
                  {
                    v35 = v7[5];
                    if (v35)
                    {
                      v36 = v7[6];
                      if (v36)
                      {
                        v37 = v7[7];
                        if (v37)
                        {
                          v38 = v7[8];
                          if (v38)
                          {
                            v39 = v7[9];
                            if (v39)
                            {
                              v40 = v7[10];
                              if (v40)
                              {
                                v41 = v7[11];
                                if (v41)
                                {
                                  v42 = v7[12];
                                  if (v42)
                                  {
                                    v43 = v7[13];
                                    if (v43)
                                    {
                                      v44 = v7[14];
                                      if (v44)
                                      {
                                        v45 = 0;
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

          LODWORD(v46) = 2;
          if (ioctl(v4, 0xC02069B4uLL, &v30) < 0)
          {
            v16 = __error();
            if (strerror_r(*v16, __strerrbuf, 0x80uLL))
            {
              __strerrbuf[0] = 0;
            }

            if (qword_100229088 != -1)
            {
              dispatch_once(&qword_100229088, &stru_1001FB1C0);
            }

            if (!_NRLogIsLevelEnabled())
            {
              goto LABEL_76;
            }

            if (qword_100229088 == -1)
            {
              goto LABEL_75;
            }

            goto LABEL_87;
          }

          v8 = [v6 UTF8String];
          if (v8)
          {
            v30 = *v8;
            if (v30)
            {
              v31 = v8[1];
              if (v31)
              {
                v32 = v8[2];
                if (v32)
                {
                  v33 = v8[3];
                  if (v33)
                  {
                    v34 = v8[4];
                    if (v34)
                    {
                      v35 = v8[5];
                      if (v35)
                      {
                        v36 = v8[6];
                        if (v36)
                        {
                          v37 = v8[7];
                          if (v37)
                          {
                            v38 = v8[8];
                            if (v38)
                            {
                              v39 = v8[9];
                              if (v39)
                              {
                                v40 = v8[10];
                                if (v40)
                                {
                                  v41 = v8[11];
                                  if (v41)
                                  {
                                    v42 = v8[12];
                                    if (v42)
                                    {
                                      v43 = v8[13];
                                      if (v43)
                                      {
                                        v44 = v8[14];
                                        if (v44)
                                        {
                                          v45 = 0;
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

            LODWORD(v46) = 1;
            if ((ioctl(v4, 0xC02069B5uLL, &v30) & 0x80000000) == 0)
            {
              if (qword_100229088 != -1)
              {
                dispatch_once(&qword_100229088, &stru_1001FB1C0);
              }

              v9 = 1;
              if (_NRLogIsLevelEnabled())
              {
                if (qword_100229088 != -1)
                {
                  dispatch_once(&qword_100229088, &stru_1001FB1C0);
                }

                v10 = qword_100229080;
                [v6 UTF8String];
                _NRLogWithArgs();
              }

              goto LABEL_77;
            }

            v17 = __error();
            if (strerror_r(*v17, __strerrbuf, 0x80uLL))
            {
              __strerrbuf[0] = 0;
            }

            if (qword_100229088 != -1)
            {
              dispatch_once(&qword_100229088, &stru_1001FB1C0);
            }

            if (_NRLogIsLevelEnabled())
            {
              if (qword_100229088 == -1)
              {
LABEL_75:
                _NRLogWithArgs();
                goto LABEL_76;
              }

LABEL_87:
              dispatch_once(&qword_100229088, &stru_1001FB1C0);
              goto LABEL_75;
            }

LABEL_76:
            v9 = 0;
LABEL_77:

            close(v4);
            return v9;
          }

          v24 = sub_10007CF34();
          IsLevelEnabled = _NRLogIsLevelEnabled();

          v1 = "_strict_strlcpy";
          if (IsLevelEnabled)
          {
            v26 = sub_10007CF34();
            _NRLogWithArgs();
          }

          v4 = _os_log_pack_size();
          v6 = &v30 - ((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0);
          v27 = *__error();
          v28 = _os_log_pack_fill();
          *v28 = 136446210;
          *(v28 + 4) = "_strict_strlcpy";
        }

        else
        {
          v19 = sub_10007CF34();
          v20 = _NRLogIsLevelEnabled();

          if (v20)
          {
            v21 = sub_10007CF34();
            _NRLogWithArgs();
          }

          v4 = _os_log_pack_size();
          v6 = &v30 - ((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0);
          v22 = *__error();
          v23 = _os_log_pack_fill();
          *v23 = 136446210;
          *(v23 + 4) = "_strict_strlcpy";
        }

        sub_10007CF34();
        _NRLogAbortWithPack();
      }

      else
      {
        v1 = &qword_100229000;
        if (qword_100229088 == -1)
        {
          goto LABEL_58;
        }
      }

      dispatch_once(&qword_100229088, &stru_1001FB1C0);
LABEL_58:
      if (_NRLogIsLevelEnabled())
      {
        if (v1[17] != -1)
        {
          dispatch_once(&qword_100229088, &stru_1001FB1C0);
        }

        goto LABEL_75;
      }

      goto LABEL_76;
    }

    v15 = __error();
    if (strerror_r(*v15, __strerrbuf, 0x80uLL))
    {
      __strerrbuf[0] = 0;
    }

    if (qword_100229088 != -1)
    {
      dispatch_once(&qword_100229088, &stru_1001FB1C0);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_100229088 != -1)
      {
        dispatch_once(&qword_100229088, &stru_1001FB1C0);
      }

      _NRLogWithArgs();
    }

    return 0;
  }

  else
  {
    v11 = a1[4];
    v12 = _NRCopyLogObjectForNRUUID();
    v9 = _NRLogIsLevelEnabled();

    if (v9)
    {
      v13 = a1[4];
      v14 = _NRCopyLogObjectForNRUUID();
      v29 = [a1 copyDescription];
      _NRLogWithArgs();

      return 0;
    }
  }

  return v9;
}

void sub_10009C854(uint64_t a1, unsigned int a2)
{
  sub_10009DFFC(a1, a2);
  if (!*(a1 + 1471))
  {
    if ((*(a1 + 262) & 1) == 0)
    {
      v3 = &OBJC_IVAR___BTPResolver__sdRefResolve;
      if (*(a1 + 1079))
      {
        *(a1 + 262) = 1;
        ++*(a1 + 1095);
        if (gNRPacketLoggingEnabled == 1)
        {
          v6 = *(a1 + 32);
          v7 = _NRCopyLogObjectForNRUUID();
          IsLevelEnabled = _NRLogIsLevelEnabled();

          v3 = &OBJC_IVAR___BTPResolver__sdRefResolve;
          if (IsLevelEnabled)
          {
            v9 = *(a1 + 32);
            v10 = _NRCopyLogObjectForNRUUID();
            v16 = [a1 copyDescription];
            _NRLogWithArgs();

            v3 = &OBJC_IVAR___BTPResolver__sdRefResolve;
          }
        }

        dispatch_suspend(*(a1 + v3[364]));
      }
    }

    if (*(a1 + 252) == 1)
    {
      v4 = &OBJC_IVAR___BTPResolver__sdRefResolve;
      if (*(a1 + 463))
      {
        *(a1 + 252) = 0;
        ++*(a1 + 487);
        if (gNRPacketLoggingEnabled == 1)
        {
          v11 = *(a1 + 32);
          v12 = _NRCopyLogObjectForNRUUID();
          v13 = _NRLogIsLevelEnabled();

          v4 = &OBJC_IVAR___BTPResolver__sdRefResolve;
          if (v13)
          {
            v14 = *(a1 + 32);
            v15 = _NRCopyLogObjectForNRUUID();
            v17 = [a1 copyDescription];
            _NRLogWithArgs();

            v4 = &OBJC_IVAR___BTPResolver__sdRefResolve;
          }
        }

        dispatch_resume(*(a1 + v4[494]));
      }
    }

    v5 = *(a1 + 1495);
    if (v5)
    {

      [v5 setReceiveWindowPacketCount:32];
    }
  }
}

void sub_10009CA80(uint64_t a1)
{
  if (*(a1 + 2023))
  {
    v2 = *(a1 + 298);
    v3 = *(a1 + 297);
    v4 = *(a1 + 32);
    v5 = _NRCopyLogObjectForNRUUID();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v7 = *(a1 + 32);
      v8 = _NRCopyLogObjectForNRUUID();
      _NRLogWithArgs();
    }

    if (*(a1 + 297))
    {
      v9 = 0;
      v10 = v2 - (v2 / v3) * v3;
      do
      {
        v11 = (*(a1 + 2023) + 8 * v10);
        if ((v11 & 7) != 0)
        {
          break;
        }

        sub_10009CEE4(*v11, *(a1 + 32));
        *v11 = 0;
        v12 = *(a1 + 297);
        v10 = (v10 + 1) % v12;
        ++v9;
      }

      while (v9 < v12);
    }
  }

  if (*(a1 + 2071))
  {
    v13 = *(a1 + 304);
    v14 = *(a1 + 303);
    v15 = *(a1 + 32);
    v16 = _NRCopyLogObjectForNRUUID();
    v17 = _NRLogIsLevelEnabled();

    if (v17)
    {
      v18 = *(a1 + 32);
      v19 = _NRCopyLogObjectForNRUUID();
      _NRLogWithArgs();
    }

    if (*(a1 + 303))
    {
      v20 = 0;
      v21 = v13 - (v13 / v14) * v14;
      do
      {
        v22 = (*(a1 + 2071) + 8 * v21);
        if ((v22 & 7) != 0)
        {
          break;
        }

        sub_10009D908(*v22, *(a1 + 32));
        *v22 = 0;
        v23 = *(a1 + 303);
        v21 = (v21 + 1) % v23;
        ++v20;
      }

      while (v20 < v23);
    }
  }

  if (*(a1 + 2039))
  {
    v24 = *(a1 + 300);
    v25 = *(a1 + 299);
    v26 = *(a1 + 32);
    v27 = _NRCopyLogObjectForNRUUID();
    v28 = _NRLogIsLevelEnabled();

    if (v28)
    {
      v29 = *(a1 + 32);
      v30 = _NRCopyLogObjectForNRUUID();
      _NRLogWithArgs();
    }

    if (*(a1 + 299))
    {
      v31 = 0;
      v32 = v24 - (v24 / v25) * v25;
      do
      {
        v33 = (*(a1 + 2039) + 8 * v32);
        if ((v33 & 7) != 0)
        {
          break;
        }

        sub_10009CEE4(*v33, *(a1 + 32));
        *v33 = 0;
        v34 = *(a1 + 299);
        v32 = (v32 + 1) % v34;
        ++v31;
      }

      while (v31 < v34);
    }
  }

  if (*(a1 + 2087))
  {
    v35 = *(a1 + 306);
    v36 = *(a1 + 305);
    v37 = *(a1 + 32);
    v38 = _NRCopyLogObjectForNRUUID();
    v39 = _NRLogIsLevelEnabled();

    if (v39)
    {
      v40 = *(a1 + 32);
      v41 = _NRCopyLogObjectForNRUUID();
      _NRLogWithArgs();
    }

    if (*(a1 + 305))
    {
      v42 = 0;
      v43 = v35 - (v35 / v36) * v36;
      do
      {
        v44 = (*(a1 + 2087) + 8 * v43);
        if ((v44 & 7) != 0)
        {
          break;
        }

        sub_10009D908(*v44, *(a1 + 32));
        *v44 = 0;
        v45 = *(a1 + 305);
        v43 = (v43 + 1) % v45;
        ++v42;
      }

      while (v42 < v45);
    }
  }

  if (*(a1 + 2055))
  {
    v46 = *(a1 + 302);
    v47 = *(a1 + 301);
    v48 = *(a1 + 32);
    v49 = _NRCopyLogObjectForNRUUID();
    v50 = _NRLogIsLevelEnabled();

    if (v50)
    {
      v51 = *(a1 + 32);
      v52 = _NRCopyLogObjectForNRUUID();
      _NRLogWithArgs();
    }

    if (*(a1 + 301))
    {
      v53 = 0;
      v54 = v46 - (v46 / v47) * v47;
      do
      {
        v55 = (*(a1 + 2055) + 8 * v54);
        if ((v55 & 7) != 0)
        {
          break;
        }

        sub_10009CEE4(*v55, *(a1 + 32));
        *v55 = 0;
        v56 = *(a1 + 301);
        v54 = (v54 + 1) % v56;
        ++v53;
      }

      while (v53 < v56);
    }
  }
}

void sub_10009CEE4(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v115 = v3;
    if ((a1 & 2) != 0)
    {
      v4 = _NRCopyLogObjectForNRUUID();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      if (IsLevelEnabled)
      {
        v6 = _NRCopyLogObjectForNRUUID();
        _NRLogWithArgs();
      }
    }

    if ((a1 & 4) != 0)
    {
      v7 = _NRCopyLogObjectForNRUUID();
      v8 = _NRLogIsLevelEnabled();

      if (v8)
      {
        v9 = _NRCopyLogObjectForNRUUID();
        _NRLogWithArgs();
      }
    }

    if ((a1 & 8) != 0)
    {
      v10 = _NRCopyLogObjectForNRUUID();
      v11 = _NRLogIsLevelEnabled();

      if (v11)
      {
        v12 = _NRCopyLogObjectForNRUUID();
        _NRLogWithArgs();
      }
    }

    if ((a1 & 0x10) != 0)
    {
      v13 = _NRCopyLogObjectForNRUUID();
      v14 = _NRLogIsLevelEnabled();

      if (v14)
      {
        v15 = _NRCopyLogObjectForNRUUID();
        _NRLogWithArgs();
      }
    }

    if ((a1 & 0x20) != 0)
    {
      v16 = _NRCopyLogObjectForNRUUID();
      v17 = _NRLogIsLevelEnabled();

      if (v17)
      {
        v18 = _NRCopyLogObjectForNRUUID();
        _NRLogWithArgs();
      }
    }

    if ((a1 & 0x40) != 0)
    {
      v19 = _NRCopyLogObjectForNRUUID();
      v20 = _NRLogIsLevelEnabled();

      if (v20)
      {
        v21 = _NRCopyLogObjectForNRUUID();
        _NRLogWithArgs();
      }
    }

    if ((a1 & 0x80) != 0)
    {
      v22 = _NRCopyLogObjectForNRUUID();
      v23 = _NRLogIsLevelEnabled();

      if (v23)
      {
        v24 = _NRCopyLogObjectForNRUUID();
        _NRLogWithArgs();
      }
    }

    if ((a1 & 0x100) != 0)
    {
      v25 = _NRCopyLogObjectForNRUUID();
      v26 = _NRLogIsLevelEnabled();

      if (v26)
      {
        v27 = _NRCopyLogObjectForNRUUID();
        _NRLogWithArgs();
      }
    }

    if ((a1 & 0x200) != 0)
    {
      v28 = _NRCopyLogObjectForNRUUID();
      v29 = _NRLogIsLevelEnabled();

      if (v29)
      {
        v30 = _NRCopyLogObjectForNRUUID();
        _NRLogWithArgs();
      }
    }

    if ((a1 & 0x400) != 0)
    {
      v31 = _NRCopyLogObjectForNRUUID();
      v32 = _NRLogIsLevelEnabled();

      if (v32)
      {
        v33 = _NRCopyLogObjectForNRUUID();
        _NRLogWithArgs();
      }
    }

    if ((a1 & 0x800) != 0)
    {
      v34 = _NRCopyLogObjectForNRUUID();
      v35 = _NRLogIsLevelEnabled();

      if (v35)
      {
        v36 = _NRCopyLogObjectForNRUUID();
        _NRLogWithArgs();
      }
    }

    if ((a1 & 0x1000) != 0)
    {
      v37 = _NRCopyLogObjectForNRUUID();
      v38 = _NRLogIsLevelEnabled();

      if (v38)
      {
        v39 = _NRCopyLogObjectForNRUUID();
        _NRLogWithArgs();
      }
    }

    if ((a1 & 0x2000) != 0)
    {
      v40 = _NRCopyLogObjectForNRUUID();
      v41 = _NRLogIsLevelEnabled();

      if (v41)
      {
        v42 = _NRCopyLogObjectForNRUUID();
        _NRLogWithArgs();
      }
    }

    if ((a1 & 0x4000) != 0)
    {
      v43 = _NRCopyLogObjectForNRUUID();
      v44 = _NRLogIsLevelEnabled();

      if (v44)
      {
        v45 = _NRCopyLogObjectForNRUUID();
        _NRLogWithArgs();
      }
    }

    if ((a1 & 0x8000) != 0)
    {
      v46 = _NRCopyLogObjectForNRUUID();
      v47 = _NRLogIsLevelEnabled();

      if (v47)
      {
        v48 = _NRCopyLogObjectForNRUUID();
        _NRLogWithArgs();
      }
    }

    if ((a1 & 0x10000) != 0)
    {
      v49 = _NRCopyLogObjectForNRUUID();
      v50 = _NRLogIsLevelEnabled();

      if (v50)
      {
        v51 = _NRCopyLogObjectForNRUUID();
        _NRLogWithArgs();
      }
    }

    if ((a1 & 0x20000) != 0)
    {
      v52 = _NRCopyLogObjectForNRUUID();
      v53 = _NRLogIsLevelEnabled();

      if (v53)
      {
        v54 = _NRCopyLogObjectForNRUUID();
        _NRLogWithArgs();
      }
    }

    if ((a1 & 0x40000) != 0)
    {
      v55 = _NRCopyLogObjectForNRUUID();
      v56 = _NRLogIsLevelEnabled();

      if (v56)
      {
        v57 = _NRCopyLogObjectForNRUUID();
        _NRLogWithArgs();
      }
    }

    if ((a1 & 0x80000) != 0)
    {
      v58 = _NRCopyLogObjectForNRUUID();
      v59 = _NRLogIsLevelEnabled();

      if (v59)
      {
        v60 = _NRCopyLogObjectForNRUUID();
        _NRLogWithArgs();
      }
    }

    if ((a1 & 0x100000) != 0)
    {
      v61 = _NRCopyLogObjectForNRUUID();
      v62 = _NRLogIsLevelEnabled();

      if (v62)
      {
        v63 = _NRCopyLogObjectForNRUUID();
        _NRLogWithArgs();
      }
    }

    if ((a1 & 0x200000) != 0)
    {
      v64 = _NRCopyLogObjectForNRUUID();
      v65 = _NRLogIsLevelEnabled();

      if (v65)
      {
        v66 = _NRCopyLogObjectForNRUUID();
        _NRLogWithArgs();
      }
    }

    if ((a1 & 0x400000) != 0)
    {
      v67 = _NRCopyLogObjectForNRUUID();
      v68 = _NRLogIsLevelEnabled();

      if (v68)
      {
        v69 = _NRCopyLogObjectForNRUUID();
        _NRLogWithArgs();
      }
    }

    if ((a1 & 0x800000) != 0)
    {
      v70 = _NRCopyLogObjectForNRUUID();
      v71 = _NRLogIsLevelEnabled();

      if (v71)
      {
        v72 = _NRCopyLogObjectForNRUUID();
        _NRLogWithArgs();
      }
    }

    if ((a1 & 0x1000000) != 0)
    {
      v73 = _NRCopyLogObjectForNRUUID();
      v74 = _NRLogIsLevelEnabled();

      if (v74)
      {
        v75 = _NRCopyLogObjectForNRUUID();
        _NRLogWithArgs();
      }
    }

    if ((a1 & 0x2000000) != 0)
    {
      v76 = _NRCopyLogObjectForNRUUID();
      v77 = _NRLogIsLevelEnabled();

      if (v77)
      {
        v78 = _NRCopyLogObjectForNRUUID();
        _NRLogWithArgs();
      }
    }

    if ((a1 & 0x4000000) != 0)
    {
      v79 = _NRCopyLogObjectForNRUUID();
      v80 = _NRLogIsLevelEnabled();

      if (v80)
      {
        v81 = _NRCopyLogObjectForNRUUID();
        _NRLogWithArgs();
      }
    }

    if ((a1 & 0x8000000) != 0)
    {
      v82 = _NRCopyLogObjectForNRUUID();
      v83 = _NRLogIsLevelEnabled();

      if (v83)
      {
        v84 = _NRCopyLogObjectForNRUUID();
        _NRLogWithArgs();
      }
    }

    if ((a1 & 0x10000000) != 0)
    {
      v85 = _NRCopyLogObjectForNRUUID();
      v86 = _NRLogIsLevelEnabled();

      if (v86)
      {
        v87 = _NRCopyLogObjectForNRUUID();
        _NRLogWithArgs();
      }
    }

    if ((a1 & 0x20000000) != 0)
    {
      v88 = _NRCopyLogObjectForNRUUID();
      v89 = _NRLogIsLevelEnabled();

      if (v89)
      {
        v90 = _NRCopyLogObjectForNRUUID();
        _NRLogWithArgs();
      }
    }

    if ((a1 & 0x40000000) != 0)
    {
      v91 = _NRCopyLogObjectForNRUUID();
      v92 = _NRLogIsLevelEnabled();

      if (v92)
      {
        v93 = _NRCopyLogObjectForNRUUID();
        _NRLogWithArgs();
      }
    }

    if ((a1 & 0x80000000) != 0)
    {
      v94 = _NRCopyLogObjectForNRUUID();
      v95 = _NRLogIsLevelEnabled();

      if (v95)
      {
        v96 = _NRCopyLogObjectForNRUUID();
        _NRLogWithArgs();
      }
    }

    if ((a1 & 0x100000000) != 0)
    {
      v97 = _NRCopyLogObjectForNRUUID();
      v98 = _NRLogIsLevelEnabled();

      if (v98)
      {
        v99 = _NRCopyLogObjectForNRUUID();
        _NRLogWithArgs();
      }
    }

    if ((a1 & 0x200000000) != 0)
    {
      v100 = _NRCopyLogObjectForNRUUID();
      v101 = _NRLogIsLevelEnabled();

      if (v101)
      {
        v102 = _NRCopyLogObjectForNRUUID();
        _NRLogWithArgs();
      }
    }

    if ((a1 & 0x400000000) != 0)
    {
      v103 = _NRCopyLogObjectForNRUUID();
      v104 = _NRLogIsLevelEnabled();

      if (v104)
      {
        v105 = _NRCopyLogObjectForNRUUID();
        _NRLogWithArgs();
      }
    }

    if ((a1 & 0x800000000) != 0)
    {
      v106 = _NRCopyLogObjectForNRUUID();
      v107 = _NRLogIsLevelEnabled();

      if (v107)
      {
        v108 = _NRCopyLogObjectForNRUUID();
        _NRLogWithArgs();
      }
    }

    if ((a1 & 0x1000000000) != 0)
    {
      v109 = _NRCopyLogObjectForNRUUID();
      v110 = _NRLogIsLevelEnabled();

      if (v110)
      {
        v111 = _NRCopyLogObjectForNRUUID();
        _NRLogWithArgs();
      }
    }

    v112 = _NRCopyLogObjectForNRUUID();
    v113 = _NRLogIsLevelEnabled();

    v3 = v115;
    if (v113)
    {
      v114 = _NRCopyLogObjectForNRUUID();
      _NRLogWithArgs();

      v3 = v115;
    }
  }
}

void sub_10009D908(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v79 = v3;
    if ((a1 & 2) != 0)
    {
      v4 = _NRCopyLogObjectForNRUUID();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      if (IsLevelEnabled)
      {
        v6 = _NRCopyLogObjectForNRUUID();
        _NRLogWithArgs();
      }
    }

    if ((a1 & 4) != 0)
    {
      v7 = _NRCopyLogObjectForNRUUID();
      v8 = _NRLogIsLevelEnabled();

      if (v8)
      {
        v9 = _NRCopyLogObjectForNRUUID();
        _NRLogWithArgs();
      }
    }

    if ((a1 & 8) != 0)
    {
      v10 = _NRCopyLogObjectForNRUUID();
      v11 = _NRLogIsLevelEnabled();

      if (v11)
      {
        v12 = _NRCopyLogObjectForNRUUID();
        _NRLogWithArgs();
      }
    }

    if ((a1 & 0x10) != 0)
    {
      v13 = _NRCopyLogObjectForNRUUID();
      v14 = _NRLogIsLevelEnabled();

      if (v14)
      {
        v15 = _NRCopyLogObjectForNRUUID();
        _NRLogWithArgs();
      }
    }

    if ((a1 & 0x20) != 0)
    {
      v16 = _NRCopyLogObjectForNRUUID();
      v17 = _NRLogIsLevelEnabled();

      if (v17)
      {
        v18 = _NRCopyLogObjectForNRUUID();
        _NRLogWithArgs();
      }
    }

    if ((a1 & 0x40) != 0)
    {
      v19 = _NRCopyLogObjectForNRUUID();
      v20 = _NRLogIsLevelEnabled();

      if (v20)
      {
        v21 = _NRCopyLogObjectForNRUUID();
        _NRLogWithArgs();
      }
    }

    if ((a1 & 0x80) != 0)
    {
      v22 = _NRCopyLogObjectForNRUUID();
      v23 = _NRLogIsLevelEnabled();

      if (v23)
      {
        v24 = _NRCopyLogObjectForNRUUID();
        _NRLogWithArgs();
      }
    }

    if ((a1 & 0x100) != 0)
    {
      v25 = _NRCopyLogObjectForNRUUID();
      v26 = _NRLogIsLevelEnabled();

      if (v26)
      {
        v27 = _NRCopyLogObjectForNRUUID();
        _NRLogWithArgs();
      }
    }

    if ((a1 & 0x200) != 0)
    {
      v28 = _NRCopyLogObjectForNRUUID();
      v29 = _NRLogIsLevelEnabled();

      if (v29)
      {
        v30 = _NRCopyLogObjectForNRUUID();
        _NRLogWithArgs();
      }
    }

    if ((a1 & 0x400) != 0)
    {
      v31 = _NRCopyLogObjectForNRUUID();
      v32 = _NRLogIsLevelEnabled();

      if (v32)
      {
        v33 = _NRCopyLogObjectForNRUUID();
        _NRLogWithArgs();
      }
    }

    if ((a1 & 0x800) != 0)
    {
      v34 = _NRCopyLogObjectForNRUUID();
      v35 = _NRLogIsLevelEnabled();

      if (v35)
      {
        v36 = _NRCopyLogObjectForNRUUID();
        _NRLogWithArgs();
      }
    }

    if ((a1 & 0x1000) != 0)
    {
      v37 = _NRCopyLogObjectForNRUUID();
      v38 = _NRLogIsLevelEnabled();

      if (v38)
      {
        v39 = _NRCopyLogObjectForNRUUID();
        _NRLogWithArgs();
      }
    }

    if ((a1 & 0x2000) != 0)
    {
      v40 = _NRCopyLogObjectForNRUUID();
      v41 = _NRLogIsLevelEnabled();

      if (v41)
      {
        v42 = _NRCopyLogObjectForNRUUID();
        _NRLogWithArgs();
      }
    }

    if ((a1 & 0x4000) != 0)
    {
      v43 = _NRCopyLogObjectForNRUUID();
      v44 = _NRLogIsLevelEnabled();

      if (v44)
      {
        v45 = _NRCopyLogObjectForNRUUID();
        _NRLogWithArgs();
      }
    }

    if ((a1 & 0x8000) != 0)
    {
      v46 = _NRCopyLogObjectForNRUUID();
      v47 = _NRLogIsLevelEnabled();

      if (v47)
      {
        v48 = _NRCopyLogObjectForNRUUID();
        _NRLogWithArgs();
      }
    }

    if ((a1 & 0x10000) != 0)
    {
      v49 = _NRCopyLogObjectForNRUUID();
      v50 = _NRLogIsLevelEnabled();

      if (v50)
      {
        v51 = _NRCopyLogObjectForNRUUID();
        _NRLogWithArgs();
      }
    }

    if ((a1 & 0x20000) != 0)
    {
      v52 = _NRCopyLogObjectForNRUUID();
      v53 = _NRLogIsLevelEnabled();

      if (v53)
      {
        v54 = _NRCopyLogObjectForNRUUID();
        _NRLogWithArgs();
      }
    }

    if ((a1 & 0x40000) != 0)
    {
      v55 = _NRCopyLogObjectForNRUUID();
      v56 = _NRLogIsLevelEnabled();

      if (v56)
      {
        v57 = _NRCopyLogObjectForNRUUID();
        _NRLogWithArgs();
      }
    }

    if ((a1 & 0x80000) != 0)
    {
      v58 = _NRCopyLogObjectForNRUUID();
      v59 = _NRLogIsLevelEnabled();

      if (v59)
      {
        v60 = _NRCopyLogObjectForNRUUID();
        _NRLogWithArgs();
      }
    }

    if ((a1 & 0x100000) != 0)
    {
      v61 = _NRCopyLogObjectForNRUUID();
      v62 = _NRLogIsLevelEnabled();

      if (v62)
      {
        v63 = _NRCopyLogObjectForNRUUID();
        _NRLogWithArgs();
      }
    }

    if ((a1 & 0x200000) != 0)
    {
      v64 = _NRCopyLogObjectForNRUUID();
      v65 = _NRLogIsLevelEnabled();

      if (v65)
      {
        v66 = _NRCopyLogObjectForNRUUID();
        _NRLogWithArgs();
      }
    }

    if ((a1 & 0x400000) != 0)
    {
      v67 = _NRCopyLogObjectForNRUUID();
      v68 = _NRLogIsLevelEnabled();

      if (v68)
      {
        v69 = _NRCopyLogObjectForNRUUID();
        _NRLogWithArgs();
      }
    }

    if ((a1 & 0x800000) != 0)
    {
      v70 = _NRCopyLogObjectForNRUUID();
      v71 = _NRLogIsLevelEnabled();

      if (v71)
      {
        v72 = _NRCopyLogObjectForNRUUID();
        _NRLogWithArgs();
      }
    }

    if ((a1 & 0x1000000) != 0)
    {
      v73 = _NRCopyLogObjectForNRUUID();
      v74 = _NRLogIsLevelEnabled();

      if (v74)
      {
        v75 = _NRCopyLogObjectForNRUUID();
        _NRLogWithArgs();
      }
    }

    v76 = _NRCopyLogObjectForNRUUID();
    v77 = _NRLogIsLevelEnabled();

    v3 = v79;
    if (v77)
    {
      v78 = _NRCopyLogObjectForNRUUID();
      _NRLogWithArgs();

      v3 = v79;
    }
  }
}

void sub_10009DFFC(uint64_t a1, unsigned int a2)
{
  if (!a1)
  {
    return;
  }

  v3 = *(a1 + 1471);
  if (!v3 || *(a1 + 16) == 255)
  {
    return;
  }

  if (a2 >= 0x41)
  {
    v4 = *(a1 + 8);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10009E698;
    block[3] = &unk_1001FD3C8;
    block[4] = a1;
    dispatch_async(v4, block);
    return;
  }

  v5 = [v3 length];
  v61 = *(a1 + 1471);
  v6 = [v61 bytes];
  if (*(a1 + 1063))
  {
    if (*(a1 + 1047))
    {
      if (v5)
      {
        v7 = v6;
        v8 = 0;
        v9 = 0;
        while (1)
        {
          v65 = 0u;
          v66 = 0u;
          v63 = 0u;
          *__dst = 0u;
          v10 = *(a1 + 1063);
          next_slot = os_channel_get_next_slot();
          if (!next_slot)
          {
            break;
          }

          v12 = next_slot;
          if (WORD1(v63) <= (v5 - v8))
          {
            v13 = WORD1(v63);
          }

          else
          {
            v13 = v5 - v8;
          }

          memcpy(__dst[0], &v7[v8], v13);
          WORD1(v63) = v13;
          v8 += v13;
          v14 = *(a1 + 1063);
          os_channel_set_slot_properties();
          v9 = v12;
          if (v8 >= v5)
          {
            goto LABEL_24;
          }
        }

        if (!v9)
        {
          goto LABEL_25;
        }

LABEL_24:
        v24 = *(a1 + 1063);
        os_channel_advance_slot();
      }

      else
      {
        v8 = 0;
      }

LABEL_25:
      v25 = *(a1 + 1047);
      os_channel_sync();
      if (v8 == v5)
      {
        if (gNRPacketLoggingEnabled)
        {
          v35 = *(a1 + 32);
          v36 = _NRCopyLogObjectForNRUUID();
          IsLevelEnabled = _NRLogIsLevelEnabled();

          if (IsLevelEnabled)
          {
            v38 = *(a1 + 32);
            v39 = _NRCopyLogObjectForNRUUID();
            v56 = [a1 copyDescription];
            _NRLogWithArgs();
          }
        }

        v8 = v5;
      }

      else if (gNRPacketLoggingEnabled)
      {
        v40 = *(a1 + 32);
        v41 = _NRCopyLogObjectForNRUUID();
        v42 = _NRLogIsLevelEnabled();

        if (v42)
        {
          v43 = *(a1 + 32);
          v44 = _NRCopyLogObjectForNRUUID();
          v57 = [a1 copyDescription];
          _NRLogWithArgs();
        }
      }

      goto LABEL_29;
    }

    v18 = *(a1 + 32);
    v19 = _NRCopyLogObjectForNRUUID();
    v20 = _NRLogIsLevelEnabled();

    if (v20)
    {
      goto LABEL_20;
    }
  }

  else
  {
    v15 = *(a1 + 32);
    v16 = _NRCopyLogObjectForNRUUID();
    v17 = _NRLogIsLevelEnabled();

    if (v17)
    {
LABEL_20:
      v21 = *(a1 + 32);
      v22 = _NRCopyLogObjectForNRUUID();
      v23 = [a1 copyDescription];
      _NRLogWithArgs();
    }
  }

  v8 = 0;
LABEL_29:
  if (gNRPacketLoggingEnabled == 1)
  {
    v28 = *(a1 + 32);
    v29 = _NRCopyLogObjectForNRUUID();
    v30 = _NRLogIsLevelEnabled();

    if (v30)
    {
      v31 = *(a1 + 32);
      v32 = _NRCopyLogObjectForNRUUID();
      v55 = [a1 copyDescription];
      _NRLogWithArgs();
    }
  }

  if ((v8 & 0x8000000000000000) != 0)
  {
    [a1 cancelWithReason:@"Write error"];
  }

  else
  {
    if (gNRPacketLoggingEnabled == 1)
    {
      v33 = +[NSDate date];
      v34 = *(a1 + 1831);
      *(a1 + 1831) = v33;
    }

    *(a1 + 1527) += v8;
    if (v8 == v5)
    {
      v26 = *(a1 + 1471);
      *(a1 + 1471) = 0;

      sub_10009C854(a1, a2 + 1);
    }

    else
    {
      if (v8)
      {
        [*(a1 + 1471) replaceBytesInRange:0 withBytes:v8 length:{0, 0}];
      }

      if (*(a1 + 262) == 1 && *(a1 + 1079))
      {
        *(a1 + 262) = 0;
        ++*(a1 + 1095);
        if (gNRPacketLoggingEnabled == 1)
        {
          v45 = *(a1 + 32);
          v46 = _NRCopyLogObjectForNRUUID();
          v47 = _NRLogIsLevelEnabled();

          if (v47)
          {
            v48 = *(a1 + 32);
            v49 = _NRCopyLogObjectForNRUUID();
            v58 = [a1 copyDescription];
            _NRLogWithArgs();
          }
        }

        dispatch_resume(*(a1 + 1079));
      }

      if ((*(a1 + 252) & 1) == 0 && *(a1 + 463))
      {
        *(a1 + 252) = 1;
        ++*(a1 + 487);
        if (gNRPacketLoggingEnabled == 1)
        {
          v50 = *(a1 + 32);
          v51 = _NRCopyLogObjectForNRUUID();
          v52 = _NRLogIsLevelEnabled();

          if (v52)
          {
            v53 = *(a1 + 32);
            v54 = _NRCopyLogObjectForNRUUID();
            v59 = [a1 copyDescription];
            _NRLogWithArgs();
          }
        }

        dispatch_suspend(*(a1 + 463));
      }

      v27 = *(a1 + 1495);
      if (v27)
      {
        [v27 setReceiveWindowPacketCount:0];
      }

      sub_10009DFFC(a1, a2 + 1);
    }
  }
}

void sub_10009E6A4(uint64_t a1)
{
  if ((*(a1 + 289) & 1) == 0 && *(a1 + 250) - 10 <= 2)
  {
    v2 = sub_100163A30(NRDLocalDevice, *(a1 + 32));
    if (!v2)
    {
      v17 = sub_10007CF34();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      if (IsLevelEnabled)
      {
        v19 = sub_10007CF34();
        _NRLogWithArgs();
      }

      _os_log_pack_size();
      __chkstk_darwin();
      v20 = *__error();
      v21 = _os_log_pack_fill();
      *v21 = 136446210;
      *(v21 + 4) = "[NRLinkBluetooth setupIPsecForPairingInitiatorIfNecessary]";
      sub_10007CF34();
      _NRLogAbortWithPack();
    }

    v3 = v2;
    v4 = *(a1 + 250);
    v5 = *(a1 + 32);
    v6 = _NRCopyLogObjectForNRUUID();
    v7 = _NRLogIsLevelEnabled();

    if (v4 == 11)
    {
      if (v7)
      {
        v8 = *(a1 + 32);
        v9 = _NRCopyLogObjectForNRUUID();
        v22 = [a1 copyDescription];
        _NRLogWithArgs();
      }

      v10 = *(a1 + 32);
      v26[0] = _NSConcreteStackBlock;
      v26[1] = 3221225472;
      v26[2] = sub_10009EB94;
      v26[3] = &unk_1001FB100;
      v11 = &v27;
      v26[4] = a1;
      v27 = v3;
      v12 = v3;
      sub_10016E0BC(NRDLocalDevice, v10, 4, v26);
    }

    else
    {
      if (v7)
      {
        v13 = *(a1 + 32);
        v14 = _NRCopyLogObjectForNRUUID();
        v23 = [a1 copyDescription];
        _NRLogWithArgs();
      }

      v15 = *(a1 + 32);
      v24[0] = _NSConcreteStackBlock;
      v24[1] = 3221225472;
      v24[2] = sub_10009F144;
      v24[3] = &unk_1001FB128;
      v11 = &v25;
      v24[4] = a1;
      v25 = v3;
      v16 = v3;
      sub_10016D738(NRDLocalDevice, v15, 1, 0, v24);
    }
  }
}

uint64_t sub_10009E9F0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v11 = WeakRetained;
    sub_1000850B4(WeakRetained, 3);
    v2 = v11;
    if ((*(v11 + 289) & 1) == 0)
    {
      v3 = sub_100163A30(NRDLocalDevice, *(v11 + 32));
      if (!v3)
      {
        v5 = sub_10007CF34();
        IsLevelEnabled = _NRLogIsLevelEnabled();

        if (IsLevelEnabled)
        {
          v7 = sub_10007CF34();
          _NRLogWithArgs();
        }

        _os_log_pack_size();
        v8 = *__error();
        v9 = _os_log_pack_fill();
        *v9 = 136446210;
        *(v9 + 4) = "[NRLinkBluetooth setupIPsec]_block_invoke";
        sub_10007CF34();
        _NRLogAbortWithPack();
      }

      if ((v3[24] & 0x4010) == 0 && v3[8] <= 0x12u)
      {
        v4 = v3;
        sub_1000850B4(v11, 1);
        v3 = v4;
      }

      v2 = v11;
    }
  }

  return _objc_release_x1(WeakRetained, v2);
}

void sub_10009EB94(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, void *a6)
{
  v66 = a4;
  v12 = a5;
  v13 = a6;
  if ([*(a1 + 32) state] == 255)
  {
    v47 = *(*(a1 + 32) + 32);
    v48 = _NRCopyLogObjectForNRUUID();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (!IsLevelEnabled)
    {
      goto LABEL_32;
    }

    v50 = *(*(a1 + 32) + 32);
    v22 = _NRCopyLogObjectForNRUUID();
    v65 = [*(a1 + 32) copyDescription];
    _NRLogWithArgs();

    goto LABEL_31;
  }

  if (a2)
  {
    if (a3)
    {
      if (v66)
      {
        v14 = *(*(a1 + 32) + 32);
        v15 = _NRCopyLogObjectForNRUUID();
        v16 = _NRLogIsLevelEnabled();

        if (v16)
        {
          v17 = *(*(a1 + 32) + 32);
          v18 = _NRCopyLogObjectForNRUUID();
          v63 = 9587;
          v64 = [*(a1 + 32) copyDescription];
          _NRLogWithArgs();
        }

        v19 = *(a1 + 32);
        if (v19)
        {
          objc_storeStrong((v19 + 1375), a4);
        }

        if (v12)
        {
          v20 = *(a1 + 32);
          if (v20)
          {
            objc_storeStrong((v20 + 1383), a5);
          }
        }

        if (v13)
        {
          v21 = *(a1 + 32);
          if (v21)
          {
            objc_storeStrong((v21 + 1391), a6);
          }
        }

        v22 = [[NEIKEv2AuthenticationProtocol alloc] initWithNonStandardDigitalSignature:2];
        if (qword_100229318 != -1)
        {
          dispatch_once(&qword_100229318, &stru_1001FC5B8);
        }

        v23 = qword_100229310;
        v24 = sub_1001472F0(1, v23, v22);

        [v24 setLocalPrivateKeyRef:a3];
        [v24 setRemotePublicKeyRef:a2];
        [*(a1 + 32) reportEvent:3011];
        v25 = nr_absolute_time();
        v26 = *(a1 + 32);
        if (v26 && ((v27 = *(v26 + 2007)) == 0 || (*(v27 + 120) = v25, (v26 = *(a1 + 32)) != 0)))
        {
          v28 = *(v26 + 2007);
          if (v28)
          {
            ++v28[14];
          }
        }

        else
        {
          v28 = 0;
        }

        v29 = sub_100146274(0);
        [v29 setMaximumPacketSize:2000];
        [v29 setHeaderOverhead:5];

        v30 = [NEIKEv2Session alloc];
        v31 = sub_100146C84(*(a1 + 40), 1, 0);
        v32 = [v30 initWithIKEConfig:v29 firstChildConfig:v31 sessionConfig:v24 queue:*(*(a1 + 32) + 8) ipsecInterface:0 ikeSocketHandler:0 kernelSASessionName:@"terminusIKEForPairingWithIDS" packetDelegate:*(a1 + 32)];
        v33 = *(a1 + 32);
        v34 = *(v33 + 1335);
        *(v33 + 1335) = v32;

        v35 = *(a1 + 32);
        v36 = *(v35 + 1335);
        v37 = *(v35 + 32);
        v38 = _NRCopyLogObjectForNRUUID();
        if (v36)
        {
          v39 = _NRLogIsLevelEnabled();

          if (v39)
          {
            v40 = *(*(a1 + 32) + 32);
            v41 = _NRCopyLogObjectForNRUUID();
            v63 = 9625;
            v64 = [*(a1 + 32) copyDescription];
            v60 = "";
            v62 = "[NRLinkBluetooth setupIPsecForPairingInitiatorIfNecessary]_block_invoke";
            _NRLogWithArgs();
          }

          sub_100083088(*(a1 + 32));
          v42 = *(*(a1 + 32) + 32);
          v43 = _NRCopyLogObjectForNRUUID();
          v44 = _NRLogIsLevelEnabled();

          if (v44)
          {
            v45 = *(*(a1 + 32) + 32);
            v46 = _NRCopyLogObjectForNRUUID();
            v63 = 9629;
            v64 = [*(a1 + 32) copyDescription];
            v60 = "";
            v62 = "[NRLinkBluetooth setupIPsecForPairingInitiatorIfNecessary]_block_invoke";
            _NRLogWithArgs();
          }

          [*(*(a1 + 32) + 1335) connect];
        }

        else
        {
          v57 = _NRLogIsLevelEnabled();

          if (v57)
          {
            v58 = *(*(a1 + 32) + 32);
            v59 = _NRCopyLogObjectForNRUUID();
            v61 = [*(a1 + 32) copyDescription];
            _NRLogWithArgs();
          }
        }

        goto LABEL_31;
      }

      v55 = sub_10007CF34();
      v56 = _NRLogIsLevelEnabled();

      if (v56)
      {
LABEL_40:
        v22 = sub_10007CF34();
        _NRLogWithArgs();
LABEL_31:
      }
    }

    else
    {
      v53 = sub_10007CF34();
      v54 = _NRLogIsLevelEnabled();

      if (v54)
      {
        goto LABEL_40;
      }
    }
  }

  else
  {
    v51 = sub_10007CF34();
    v52 = _NRLogIsLevelEnabled();

    if (v52)
    {
      goto LABEL_40;
    }
  }

LABEL_32:
}

void sub_10009F144(uint64_t a1, void *a2, void *a3, void *a4)
{
  v76 = a2;
  v8 = a3;
  v9 = a4;
  v10 = *(*(a1 + 32) + 32);
  v11 = _NRCopyLogObjectForNRUUID();
  IsLevelEnabled = _NRLogIsLevelEnabled();

  if (IsLevelEnabled)
  {
    v13 = *(*(a1 + 32) + 32);
    v14 = _NRCopyLogObjectForNRUUID();
    v15 = [*(a1 + 32) copyDescription];
    LogString = _NRKeyCreateLogString();
    v74 = _NRKeyCreateLogString();
    v75 = _NRKeyCreateLogString();
    v71 = v15;
    v73 = LogString;
    v69 = 9644;
    v62 = "";
    v66 = "[NRLinkBluetooth setupIPsecForPairingInitiatorIfNecessary]_block_invoke_2";
    _NRLogWithArgs();
  }

  v17 = [*(a1 + 32) state];
  v18 = *(a1 + 32);
  if (v17 == 255)
  {
    v53 = *(v18 + 32);
    v54 = _NRCopyLogObjectForNRUUID();
    v55 = _NRLogIsLevelEnabled();

    if (!v55)
    {
      goto LABEL_30;
    }

    v56 = *(*(a1 + 32) + 32);
    v21 = _NRCopyLogObjectForNRUUID();
    v23 = [*(a1 + 32) copyDescription];
    _NRLogWithArgs();
  }

  else
  {
    if (v18)
    {
      objc_storeStrong((v18 + 1351), a2);
      v19 = *(a1 + 32);
      if (v19)
      {
        objc_storeStrong((v19 + 1359), a3);
        v20 = *(a1 + 32);
        if (v20)
        {
          objc_storeStrong((v20 + 1367), a4);
        }
      }
    }

    v21 = [[NEIKEv2AuthenticationProtocol alloc] initWithMethod:2];
    if (qword_100229328 != -1)
    {
      dispatch_once(&qword_100229328, &stru_1001FC5D8);
    }

    v22 = qword_100229320;
    v23 = sub_1001472F0(1, v22, v21);

    v24 = *(a1 + 40);
    if (v24)
    {
      v25 = *(v24 + 176);
      if (v25)
      {
        v25 = v25[2];
      }

      v26 = v25;
    }

    else
    {
      v26 = 0;
    }

    [v23 setSharedSecret:v26];

    v27 = [v23 sharedSecret];

    if (v27)
    {
      v28 = *(a1 + 32);
      v29 = [v23 sharedSecret];
      v30 = _NRKeyCreateLogString();
      [v28 reportEvent:3013 details:v30];

      v31 = nr_absolute_time();
      v32 = *(a1 + 32);
      if (v32 && ((v33 = *(v32 + 2007)) == 0 || (*(v33 + 120) = v31, (v32 = *(a1 + 32)) != 0)))
      {
        v34 = *(v32 + 2007);
        if (v34)
        {
          ++v34[14];
        }
      }

      else
      {
        v34 = 0;
      }

      v35 = sub_100146274(0);
      [v35 setMaximumPacketSize:2000];
      [v35 setHeaderOverhead:5];

      v36 = [NEIKEv2Session alloc];
      v37 = sub_100146C84(*(a1 + 40), 1, 0);
      v38 = [v36 initWithIKEConfig:v35 firstChildConfig:v37 sessionConfig:v23 queue:*(*(a1 + 32) + 8) ipsecInterface:0 ikeSocketHandler:0 kernelSASessionName:@"terminusIKEForPairingWithOOBKey" packetDelegate:*(a1 + 32)];
      v39 = *(a1 + 32);
      v40 = *(v39 + 1335);
      *(v39 + 1335) = v38;

      v41 = *(a1 + 32);
      v42 = *(v41 + 1335);
      v43 = *(v41 + 32);
      v44 = _NRCopyLogObjectForNRUUID();
      if (v42)
      {
        v45 = _NRLogIsLevelEnabled();

        if (v45)
        {
          v46 = *(*(a1 + 32) + 32);
          v47 = _NRCopyLogObjectForNRUUID();
          v70 = 9684;
          v72 = [*(a1 + 32) copyDescription];
          v63 = "";
          v67 = "[NRLinkBluetooth setupIPsecForPairingInitiatorIfNecessary]_block_invoke_2";
          _NRLogWithArgs();
        }

        sub_100083088(*(a1 + 32));
        v48 = *(*(a1 + 32) + 32);
        v49 = _NRCopyLogObjectForNRUUID();
        v50 = _NRLogIsLevelEnabled();

        if (v50)
        {
          v51 = *(*(a1 + 32) + 32);
          v52 = _NRCopyLogObjectForNRUUID();
          v70 = 9688;
          v72 = [*(a1 + 32) copyDescription];
          v63 = "";
          v67 = "[NRLinkBluetooth setupIPsecForPairingInitiatorIfNecessary]_block_invoke_2";
          _NRLogWithArgs();
        }

        [*(*(a1 + 32) + 1335) connect];
      }

      else
      {
        v59 = _NRLogIsLevelEnabled();

        if (v59)
        {
          v60 = *(*(a1 + 32) + 32);
          v61 = _NRCopyLogObjectForNRUUID();
          v65 = [*(a1 + 32) copyDescription];
          _NRLogWithArgs();
        }
      }
    }

    else
    {
      v57 = sub_10007CF34();
      v58 = _NRLogIsLevelEnabled();

      if (!v58)
      {
        goto LABEL_29;
      }

      v35 = sub_10007CF34();
      v64 = *(a1 + 40);
      v68 = *(a1 + 32);
      _NRLogWithArgs();
    }
  }

LABEL_29:

LABEL_30:
}

uint64_t sub_10009F6F4(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!os_channel_attr_create())
  {
    v31 = *(a1 + 32);
    v32 = _NRCopyLogObjectForNRUUID();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v34 = *(a1 + 32);
      v35 = _NRCopyLogObjectForNRUUID();
      v36 = [a1 copyDescription];
LABEL_13:
      _NRLogWithArgs();
    }

LABEL_17:
    v27 = 0;
    goto LABEL_18;
  }

  os_channel_attr_set();
  v75[0] = 0;
  v75[1] = 0;
  [v3 getUUIDBytes:v75];
  extended = os_channel_create_extended();
  if (!extended)
  {
    v37 = *(a1 + 32);
    v38 = _NRCopyLogObjectForNRUUID();
    v39 = _NRLogIsLevelEnabled();

    if (v39)
    {
      v40 = *(a1 + 32);
      v41 = _NRCopyLogObjectForNRUUID();
      v42 = [a1 copyDescription];
      v67 = *__error();
      _NRLogWithArgs();
    }

    [a1 virtualInterface];
    NEVirtualInterfaceDisableChannel();
    os_channel_attr_destroy();
    goto LABEL_17;
  }

  v5 = extended;
  *(a1 + 439) = extended;
  if (!sub_1000A1674(a1))
  {
    goto LABEL_17;
  }

  os_channel_attr_destroy();
  v6 = *(a1 + 439);
  os_channel_ring_id();
  v7 = *(a1 + 439);
  v8 = os_channel_rx_ring();
  *(a1 + 447) = v8;
  if (!v8)
  {
    v44 = *(a1 + 32);
    v45 = _NRCopyLogObjectForNRUUID();
    v46 = _NRLogIsLevelEnabled();

    if (!v46)
    {
      goto LABEL_17;
    }

    goto LABEL_24;
  }

  v9 = *(a1 + 439);
  os_channel_ring_id();
  v10 = *(a1 + 439);
  v11 = os_channel_tx_ring();
  *(a1 + 455) = v11;
  if (!v11)
  {
    v47 = *(a1 + 32);
    v48 = _NRCopyLogObjectForNRUUID();
    v49 = _NRLogIsLevelEnabled();

    if (!v49)
    {
      goto LABEL_17;
    }

    goto LABEL_24;
  }

  v12 = *(a1 + 439);
  fd = os_channel_get_fd();
  if ((fd & 0x80000000) != 0)
  {
    v50 = *(a1 + 32);
    v51 = _NRCopyLogObjectForNRUUID();
    v52 = _NRLogIsLevelEnabled();

    if (!v52)
    {
      goto LABEL_17;
    }

LABEL_24:
    v53 = *(a1 + 32);
    v35 = _NRCopyLogObjectForNRUUID();
    v36 = [a1 copyDescription];
    goto LABEL_13;
  }

  v14 = fd;
  v15 = dispatch_group_create();
  if (!v15)
  {
    v54 = sub_10007CF34();
    v55 = _NRLogIsLevelEnabled();

    if (v55)
    {
      v56 = sub_10007CF34();
      _NRLogWithArgs();
    }

    goto LABEL_30;
  }

  v16 = v15;
  v17 = dispatch_source_create(&_dispatch_source_type_read, v14, 0, *(a1 + 8));
  v18 = *(a1 + 463);
  *(a1 + 463) = v17;

  v19 = *(a1 + 463);
  if (!v19)
  {
    v57 = sub_10007CF34();
    v58 = _NRLogIsLevelEnabled();

    if (v58)
    {
      v59 = sub_10007CF34();
      _NRLogWithArgs();
    }

LABEL_30:
    _os_log_pack_size();
    v60 = *__error();
    v61 = _os_log_pack_fill();
    *v61 = 136446210;
    *(v61 + 4) = "[NRLinkBluetooth setupNexusChannelBestEffort:]";
    goto LABEL_34;
  }

  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_1000AC29C;
  handler[3] = &unk_1001FD3C8;
  handler[4] = a1;
  dispatch_source_set_event_handler(v19, handler);
  dispatch_group_enter(v16);
  v20 = *(a1 + 463);
  v72[0] = _NSConcreteStackBlock;
  v72[1] = 3221225472;
  v72[2] = sub_1000AC44C;
  v72[3] = &unk_1001FD3C8;
  v21 = v16;
  v73 = v21;
  dispatch_source_set_cancel_handler(v20, v72);
  dispatch_activate(*(a1 + 463));
  v22 = dispatch_source_create(&_dispatch_source_type_write, v14, 0, *(a1 + 8));
  v23 = *(a1 + 471);
  *(a1 + 471) = v22;

  v24 = *(a1 + 471);
  if (!v24)
  {
    v62 = sub_10007CF34();
    v63 = _NRLogIsLevelEnabled();

    if (v63)
    {
      v64 = sub_10007CF34();
      _NRLogWithArgs();
    }

    _os_log_pack_size();
    v65 = *__error();
    v66 = _os_log_pack_fill();
    *v66 = 136446210;
    *(v66 + 4) = "[NRLinkBluetooth setupNexusChannelBestEffort:]";
LABEL_34:
    sub_10007CF34();
    _NRLogAbortWithPack();
  }

  v71[0] = _NSConcreteStackBlock;
  v71[1] = 3221225472;
  v71[2] = sub_1000AC454;
  v71[3] = &unk_1001FD3C8;
  v71[4] = a1;
  dispatch_source_set_event_handler(v24, v71);
  dispatch_group_enter(v21);
  v25 = *(a1 + 471);
  v69[0] = _NSConcreteStackBlock;
  v69[1] = 3221225472;
  v69[2] = sub_1000AC5F8;
  v69[3] = &unk_1001FD3C8;
  v26 = v21;
  v70 = v26;
  dispatch_source_set_cancel_handler(v25, v69);
  v27 = 1;
  *(a1 + 253) = 1;
  v28 = *(a1 + 8);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000AC600;
  block[3] = &unk_1001FCDD8;
  block[4] = v5;
  dispatch_group_notify(v26, v28, block);
  v29 = *(a1 + 479);
  *(a1 + 479) = v26;
  v30 = v26;

LABEL_18:
  return v27;
}

uint64_t sub_10009FED4(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!os_channel_attr_create())
  {
    v31 = *(a1 + 32);
    v32 = _NRCopyLogObjectForNRUUID();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v34 = *(a1 + 32);
      v35 = _NRCopyLogObjectForNRUUID();
      v36 = [a1 copyDescription];
LABEL_13:
      _NRLogWithArgs();
    }

LABEL_17:
    v27 = 0;
    goto LABEL_18;
  }

  os_channel_attr_set();
  v75[0] = 0;
  v75[1] = 0;
  [v3 getUUIDBytes:v75];
  extended = os_channel_create_extended();
  if (!extended)
  {
    v37 = *(a1 + 32);
    v38 = _NRCopyLogObjectForNRUUID();
    v39 = _NRLogIsLevelEnabled();

    if (v39)
    {
      v40 = *(a1 + 32);
      v41 = _NRCopyLogObjectForNRUUID();
      v42 = [a1 copyDescription];
      v67 = *__error();
      _NRLogWithArgs();
    }

    [a1 virtualInterface];
    NEVirtualInterfaceDisableChannel();
    os_channel_attr_destroy();
    goto LABEL_17;
  }

  v5 = extended;
  *(a1 + 599) = extended;
  if (!sub_1000A1674(a1))
  {
    goto LABEL_17;
  }

  os_channel_attr_destroy();
  v6 = *(a1 + 599);
  os_channel_ring_id();
  v7 = *(a1 + 599);
  v8 = os_channel_rx_ring();
  *(a1 + 607) = v8;
  if (!v8)
  {
    v44 = *(a1 + 32);
    v45 = _NRCopyLogObjectForNRUUID();
    v46 = _NRLogIsLevelEnabled();

    if (!v46)
    {
      goto LABEL_17;
    }

    goto LABEL_24;
  }

  v9 = *(a1 + 599);
  os_channel_ring_id();
  v10 = *(a1 + 599);
  v11 = os_channel_tx_ring();
  *(a1 + 615) = v11;
  if (!v11)
  {
    v47 = *(a1 + 32);
    v48 = _NRCopyLogObjectForNRUUID();
    v49 = _NRLogIsLevelEnabled();

    if (!v49)
    {
      goto LABEL_17;
    }

    goto LABEL_24;
  }

  v12 = *(a1 + 599);
  fd = os_channel_get_fd();
  if ((fd & 0x80000000) != 0)
  {
    v50 = *(a1 + 32);
    v51 = _NRCopyLogObjectForNRUUID();
    v52 = _NRLogIsLevelEnabled();

    if (!v52)
    {
      goto LABEL_17;
    }

LABEL_24:
    v53 = *(a1 + 32);
    v35 = _NRCopyLogObjectForNRUUID();
    v36 = [a1 copyDescription];
    goto LABEL_13;
  }

  v14 = fd;
  v15 = dispatch_group_create();
  if (!v15)
  {
    v54 = sub_10007CF34();
    v55 = _NRLogIsLevelEnabled();

    if (v55)
    {
      v56 = sub_10007CF34();
      _NRLogWithArgs();
    }

    goto LABEL_30;
  }

  v16 = v15;
  v17 = dispatch_source_create(&_dispatch_source_type_read, v14, 0, *(a1 + 8));
  v18 = *(a1 + 623);
  *(a1 + 623) = v17;

  v19 = *(a1 + 623);
  if (!v19)
  {
    v57 = sub_10007CF34();
    v58 = _NRLogIsLevelEnabled();

    if (v58)
    {
      v59 = sub_10007CF34();
      _NRLogWithArgs();
    }

LABEL_30:
    _os_log_pack_size();
    v60 = *__error();
    v61 = _os_log_pack_fill();
    *v61 = 136446210;
    *(v61 + 4) = "[NRLinkBluetooth setupNexusChannelVoice:]";
    goto LABEL_34;
  }

  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_1000AAC6C;
  handler[3] = &unk_1001FD3C8;
  handler[4] = a1;
  dispatch_source_set_event_handler(v19, handler);
  dispatch_group_enter(v16);
  v20 = *(a1 + 623);
  v72[0] = _NSConcreteStackBlock;
  v72[1] = 3221225472;
  v72[2] = sub_1000AAE1C;
  v72[3] = &unk_1001FD3C8;
  v21 = v16;
  v73 = v21;
  dispatch_source_set_cancel_handler(v20, v72);
  dispatch_activate(*(a1 + 623));
  v22 = dispatch_source_create(&_dispatch_source_type_write, v14, 0, *(a1 + 8));
  v23 = *(a1 + 631);
  *(a1 + 631) = v22;

  v24 = *(a1 + 631);
  if (!v24)
  {
    v62 = sub_10007CF34();
    v63 = _NRLogIsLevelEnabled();

    if (v63)
    {
      v64 = sub_10007CF34();
      _NRLogWithArgs();
    }

    _os_log_pack_size();
    v65 = *__error();
    v66 = _os_log_pack_fill();
    *v66 = 136446210;
    *(v66 + 4) = "[NRLinkBluetooth setupNexusChannelVoice:]";
LABEL_34:
    sub_10007CF34();
    _NRLogAbortWithPack();
  }

  v71[0] = _NSConcreteStackBlock;
  v71[1] = 3221225472;
  v71[2] = sub_1000AAE24;
  v71[3] = &unk_1001FD3C8;
  v71[4] = a1;
  dispatch_source_set_event_handler(v24, v71);
  dispatch_group_enter(v21);
  v25 = *(a1 + 631);
  v69[0] = _NSConcreteStackBlock;
  v69[1] = 3221225472;
  v69[2] = sub_1000AAFC8;
  v69[3] = &unk_1001FD3C8;
  v26 = v21;
  v70 = v26;
  dispatch_source_set_cancel_handler(v25, v69);
  v27 = 1;
  *(a1 + 255) = 1;
  v28 = *(a1 + 8);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000AAFD0;
  block[3] = &unk_1001FCDD8;
  block[4] = v5;
  dispatch_group_notify(v26, v28, block);
  v29 = *(a1 + 591);
  *(a1 + 591) = v26;
  v30 = v26;

LABEL_18:
  return v27;
}

uint64_t sub_1000A06B4(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!os_channel_attr_create())
  {
    v31 = *(a1 + 32);
    v32 = _NRCopyLogObjectForNRUUID();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v34 = *(a1 + 32);
      v35 = _NRCopyLogObjectForNRUUID();
      v36 = [a1 copyDescription];
LABEL_13:
      _NRLogWithArgs();
    }

LABEL_17:
    v27 = 0;
    goto LABEL_18;
  }

  os_channel_attr_set();
  v75[0] = 0;
  v75[1] = 0;
  [v3 getUUIDBytes:v75];
  extended = os_channel_create_extended();
  if (!extended)
  {
    v37 = *(a1 + 32);
    v38 = _NRCopyLogObjectForNRUUID();
    v39 = _NRLogIsLevelEnabled();

    if (v39)
    {
      v40 = *(a1 + 32);
      v41 = _NRCopyLogObjectForNRUUID();
      v42 = [a1 copyDescription];
      v67 = *__error();
      _NRLogWithArgs();
    }

    [a1 virtualInterface];
    NEVirtualInterfaceDisableChannel();
    os_channel_attr_destroy();
    goto LABEL_17;
  }

  v5 = extended;
  *(a1 + 759) = extended;
  if (!sub_1000A1674(a1))
  {
    goto LABEL_17;
  }

  os_channel_attr_destroy();
  v6 = *(a1 + 759);
  os_channel_ring_id();
  v7 = *(a1 + 759);
  v8 = os_channel_rx_ring();
  *(a1 + 767) = v8;
  if (!v8)
  {
    v44 = *(a1 + 32);
    v45 = _NRCopyLogObjectForNRUUID();
    v46 = _NRLogIsLevelEnabled();

    if (!v46)
    {
      goto LABEL_17;
    }

    goto LABEL_24;
  }

  v9 = *(a1 + 759);
  os_channel_ring_id();
  v10 = *(a1 + 759);
  v11 = os_channel_tx_ring();
  *(a1 + 775) = v11;
  if (!v11)
  {
    v47 = *(a1 + 32);
    v48 = _NRCopyLogObjectForNRUUID();
    v49 = _NRLogIsLevelEnabled();

    if (!v49)
    {
      goto LABEL_17;
    }

    goto LABEL_24;
  }

  v12 = *(a1 + 759);
  fd = os_channel_get_fd();
  if ((fd & 0x80000000) != 0)
  {
    v50 = *(a1 + 32);
    v51 = _NRCopyLogObjectForNRUUID();
    v52 = _NRLogIsLevelEnabled();

    if (!v52)
    {
      goto LABEL_17;
    }

LABEL_24:
    v53 = *(a1 + 32);
    v35 = _NRCopyLogObjectForNRUUID();
    v36 = [a1 copyDescription];
    goto LABEL_13;
  }

  v14 = fd;
  v15 = dispatch_group_create();
  if (!v15)
  {
    v54 = sub_10007CF34();
    v55 = _NRLogIsLevelEnabled();

    if (v55)
    {
      v56 = sub_10007CF34();
      _NRLogWithArgs();
    }

    goto LABEL_30;
  }

  v16 = v15;
  v17 = dispatch_source_create(&_dispatch_source_type_read, v14, 0, *(a1 + 8));
  v18 = *(a1 + 783);
  *(a1 + 783) = v17;

  v19 = *(a1 + 783);
  if (!v19)
  {
    v57 = sub_10007CF34();
    v58 = _NRLogIsLevelEnabled();

    if (v58)
    {
      v59 = sub_10007CF34();
      _NRLogWithArgs();
    }

LABEL_30:
    _os_log_pack_size();
    v60 = *__error();
    v61 = _os_log_pack_fill();
    *v61 = 136446210;
    *(v61 + 4) = "[NRLinkBluetooth setupNexusChannelVideo:]";
    goto LABEL_34;
  }

  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_1000A28E4;
  handler[3] = &unk_1001FD3C8;
  handler[4] = a1;
  dispatch_source_set_event_handler(v19, handler);
  dispatch_group_enter(v16);
  v20 = *(a1 + 783);
  v72[0] = _NSConcreteStackBlock;
  v72[1] = 3221225472;
  v72[2] = sub_1000A2A94;
  v72[3] = &unk_1001FD3C8;
  v21 = v16;
  v73 = v21;
  dispatch_source_set_cancel_handler(v20, v72);
  dispatch_activate(*(a1 + 783));
  v22 = dispatch_source_create(&_dispatch_source_type_write, v14, 0, *(a1 + 8));
  v23 = *(a1 + 791);
  *(a1 + 791) = v22;

  v24 = *(a1 + 791);
  if (!v24)
  {
    v62 = sub_10007CF34();
    v63 = _NRLogIsLevelEnabled();

    if (v63)
    {
      v64 = sub_10007CF34();
      _NRLogWithArgs();
    }

    _os_log_pack_size();
    v65 = *__error();
    v66 = _os_log_pack_fill();
    *v66 = 136446210;
    *(v66 + 4) = "[NRLinkBluetooth setupNexusChannelVideo:]";
LABEL_34:
    sub_10007CF34();
    _NRLogAbortWithPack();
  }

  v71[0] = _NSConcreteStackBlock;
  v71[1] = 3221225472;
  v71[2] = sub_1000A2A9C;
  v71[3] = &unk_1001FD3C8;
  v71[4] = a1;
  dispatch_source_set_event_handler(v24, v71);
  dispatch_group_enter(v21);
  v25 = *(a1 + 791);
  v69[0] = _NSConcreteStackBlock;
  v69[1] = 3221225472;
  v69[2] = sub_1000A2C40;
  v69[3] = &unk_1001FD3C8;
  v26 = v21;
  v70 = v26;
  dispatch_source_set_cancel_handler(v25, v69);
  v27 = 1;
  *(a1 + 257) = 1;
  v28 = *(a1 + 8);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000A2C48;
  block[3] = &unk_1001FCDD8;
  block[4] = v5;
  dispatch_group_notify(v26, v28, block);
  v29 = *(a1 + 751);
  *(a1 + 751) = v26;
  v30 = v26;

LABEL_18:
  return v27;
}

uint64_t sub_1000A0E94(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!os_channel_attr_create())
  {
    v31 = *(a1 + 32);
    v32 = _NRCopyLogObjectForNRUUID();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v34 = *(a1 + 32);
      v35 = _NRCopyLogObjectForNRUUID();
      v36 = [a1 copyDescription];
LABEL_13:
      _NRLogWithArgs();
    }

LABEL_17:
    v27 = 0;
    goto LABEL_18;
  }

  os_channel_attr_set();
  v75[0] = 0;
  v75[1] = 0;
  [v3 getUUIDBytes:v75];
  extended = os_channel_create_extended();
  if (!extended)
  {
    v37 = *(a1 + 32);
    v38 = _NRCopyLogObjectForNRUUID();
    v39 = _NRLogIsLevelEnabled();

    if (v39)
    {
      v40 = *(a1 + 32);
      v41 = _NRCopyLogObjectForNRUUID();
      v42 = [a1 copyDescription];
      v67 = *__error();
      _NRLogWithArgs();
    }

    [a1 virtualInterface];
    NEVirtualInterfaceDisableChannel();
    os_channel_attr_destroy();
    goto LABEL_17;
  }

  v5 = extended;
  *(a1 + 903) = extended;
  if (!sub_1000A1674(a1))
  {
    goto LABEL_17;
  }

  os_channel_attr_destroy();
  v6 = *(a1 + 903);
  os_channel_ring_id();
  v7 = *(a1 + 903);
  v8 = os_channel_rx_ring();
  *(a1 + 911) = v8;
  if (!v8)
  {
    v44 = *(a1 + 32);
    v45 = _NRCopyLogObjectForNRUUID();
    v46 = _NRLogIsLevelEnabled();

    if (!v46)
    {
      goto LABEL_17;
    }

    goto LABEL_24;
  }

  v9 = *(a1 + 903);
  os_channel_ring_id();
  v10 = *(a1 + 903);
  v11 = os_channel_tx_ring();
  *(a1 + 919) = v11;
  if (!v11)
  {
    v47 = *(a1 + 32);
    v48 = _NRCopyLogObjectForNRUUID();
    v49 = _NRLogIsLevelEnabled();

    if (!v49)
    {
      goto LABEL_17;
    }

    goto LABEL_24;
  }

  v12 = *(a1 + 903);
  fd = os_channel_get_fd();
  if ((fd & 0x80000000) != 0)
  {
    v50 = *(a1 + 32);
    v51 = _NRCopyLogObjectForNRUUID();
    v52 = _NRLogIsLevelEnabled();

    if (!v52)
    {
      goto LABEL_17;
    }

LABEL_24:
    v53 = *(a1 + 32);
    v35 = _NRCopyLogObjectForNRUUID();
    v36 = [a1 copyDescription];
    goto LABEL_13;
  }

  v14 = fd;
  v15 = dispatch_group_create();
  if (!v15)
  {
    v54 = sub_10007CF34();
    v55 = _NRLogIsLevelEnabled();

    if (v55)
    {
      v56 = sub_10007CF34();
      _NRLogWithArgs();
    }

    goto LABEL_30;
  }

  v16 = v15;
  v17 = dispatch_source_create(&_dispatch_source_type_read, v14, 0, *(a1 + 8));
  v18 = *(a1 + 927);
  *(a1 + 927) = v17;

  v19 = *(a1 + 927);
  if (!v19)
  {
    v57 = sub_10007CF34();
    v58 = _NRLogIsLevelEnabled();

    if (v58)
    {
      v59 = sub_10007CF34();
      _NRLogWithArgs();
    }

LABEL_30:
    _os_log_pack_size();
    v60 = *__error();
    v61 = _os_log_pack_fill();
    *v61 = 136446210;
    *(v61 + 4) = "[NRLinkBluetooth setupNexusChannelBackground:]";
    goto LABEL_34;
  }

  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_1000A2578;
  handler[3] = &unk_1001FD3C8;
  handler[4] = a1;
  dispatch_source_set_event_handler(v19, handler);
  dispatch_group_enter(v16);
  v20 = *(a1 + 927);
  v72[0] = _NSConcreteStackBlock;
  v72[1] = 3221225472;
  v72[2] = sub_1000A2728;
  v72[3] = &unk_1001FD3C8;
  v21 = v16;
  v73 = v21;
  dispatch_source_set_cancel_handler(v20, v72);
  dispatch_activate(*(a1 + 927));
  v22 = dispatch_source_create(&_dispatch_source_type_write, v14, 0, *(a1 + 8));
  v23 = *(a1 + 935);
  *(a1 + 935) = v22;

  v24 = *(a1 + 935);
  if (!v24)
  {
    v62 = sub_10007CF34();
    v63 = _NRLogIsLevelEnabled();

    if (v63)
    {
      v64 = sub_10007CF34();
      _NRLogWithArgs();
    }

    _os_log_pack_size();
    v65 = *__error();
    v66 = _os_log_pack_fill();
    *v66 = 136446210;
    *(v66 + 4) = "[NRLinkBluetooth setupNexusChannelBackground:]";
LABEL_34:
    sub_10007CF34();
    _NRLogAbortWithPack();
  }

  v71[0] = _NSConcreteStackBlock;
  v71[1] = 3221225472;
  v71[2] = sub_1000A2730;
  v71[3] = &unk_1001FD3C8;
  v71[4] = a1;
  dispatch_source_set_event_handler(v24, v71);
  dispatch_group_enter(v21);
  v25 = *(a1 + 935);
  v69[0] = _NSConcreteStackBlock;
  v69[1] = 3221225472;
  v69[2] = sub_1000A28D4;
  v69[3] = &unk_1001FD3C8;
  v26 = v21;
  v70 = v26;
  dispatch_source_set_cancel_handler(v25, v69);
  v27 = 1;
  *(a1 + 259) = 1;
  v28 = *(a1 + 8);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000A28DC;
  block[3] = &unk_1001FCDD8;
  block[4] = v5;
  dispatch_group_notify(v26, v28, block);
  v29 = *(a1 + 895);
  *(a1 + 895) = v26;
  v30 = v26;

LABEL_18:
  return v27;
}

uint64_t sub_1000A1674(void *a1)
{
  v2 = os_channel_attr_get();
  v3 = a1[4];
  v4 = _NRCopyLogObjectForNRUUID();
  if (v2)
  {
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      goto LABEL_83;
    }

    return 0;
  }

  v6 = _NRLogIsLevelEnabled();

  if (v6)
  {
    v7 = a1[4];
    v8 = _NRCopyLogObjectForNRUUID();
    v135 = [a1 copyDescription];
    _NRLogWithArgs();
  }

  v9 = os_channel_attr_get();
  v10 = a1[4];
  v11 = _NRCopyLogObjectForNRUUID();
  if (v9)
  {
    v12 = _NRLogIsLevelEnabled();

    if (v12)
    {
      goto LABEL_83;
    }

    return 0;
  }

  v13 = _NRLogIsLevelEnabled();

  if (v13)
  {
    v14 = a1[4];
    v15 = _NRCopyLogObjectForNRUUID();
    v136 = [a1 copyDescription];
    _NRLogWithArgs();
  }

  v16 = os_channel_attr_get();
  v17 = a1[4];
  v18 = _NRCopyLogObjectForNRUUID();
  if (v16)
  {
    v19 = _NRLogIsLevelEnabled();

    if (v19)
    {
      goto LABEL_83;
    }

    return 0;
  }

  v20 = _NRLogIsLevelEnabled();

  if (v20)
  {
    v21 = a1[4];
    v22 = _NRCopyLogObjectForNRUUID();
    v137 = [a1 copyDescription];
    _NRLogWithArgs();
  }

  v23 = os_channel_attr_get();
  v24 = a1[4];
  v25 = _NRCopyLogObjectForNRUUID();
  if (v23)
  {
    v26 = _NRLogIsLevelEnabled();

    if (v26)
    {
      goto LABEL_83;
    }

    return 0;
  }

  v27 = _NRLogIsLevelEnabled();

  if (v27)
  {
    v28 = a1[4];
    v29 = _NRCopyLogObjectForNRUUID();
    v138 = [a1 copyDescription];
    _NRLogWithArgs();
  }

  v30 = os_channel_attr_get();
  v31 = a1[4];
  v32 = _NRCopyLogObjectForNRUUID();
  if (v30)
  {
    v33 = _NRLogIsLevelEnabled();

    if (v33)
    {
      goto LABEL_83;
    }

    return 0;
  }

  v34 = _NRLogIsLevelEnabled();

  if (v34)
  {
    v35 = a1[4];
    v36 = _NRCopyLogObjectForNRUUID();
    v139 = [a1 copyDescription];
    _NRLogWithArgs();
  }

  v37 = os_channel_attr_get();
  v38 = a1[4];
  v39 = _NRCopyLogObjectForNRUUID();
  if (v37)
  {
    v40 = _NRLogIsLevelEnabled();

    if (v40)
    {
      goto LABEL_83;
    }

    return 0;
  }

  v41 = _NRLogIsLevelEnabled();

  if (v41)
  {
    v42 = a1[4];
    v43 = _NRCopyLogObjectForNRUUID();
    v140 = [a1 copyDescription];
    _NRLogWithArgs();
  }

  v44 = os_channel_attr_get();
  v45 = a1[4];
  v46 = _NRCopyLogObjectForNRUUID();
  if (v44)
  {
    v47 = _NRLogIsLevelEnabled();

    if (v47)
    {
      goto LABEL_83;
    }

    return 0;
  }

  v48 = _NRLogIsLevelEnabled();

  if (v48)
  {
    v49 = a1[4];
    v50 = _NRCopyLogObjectForNRUUID();
    v141 = [a1 copyDescription];
    _NRLogWithArgs();
  }

  v51 = os_channel_attr_get();
  v52 = a1[4];
  v53 = _NRCopyLogObjectForNRUUID();
  if (v51)
  {
    v54 = _NRLogIsLevelEnabled();

    if (v54)
    {
      goto LABEL_83;
    }

    return 0;
  }

  v55 = _NRLogIsLevelEnabled();

  if (v55)
  {
    v56 = a1[4];
    v57 = _NRCopyLogObjectForNRUUID();
    v142 = [a1 copyDescription];
    _NRLogWithArgs();
  }

  v58 = os_channel_attr_get();
  v59 = a1[4];
  v60 = _NRCopyLogObjectForNRUUID();
  if (v58)
  {
    v61 = _NRLogIsLevelEnabled();

    if (v61)
    {
      goto LABEL_83;
    }

    return 0;
  }

  v62 = _NRLogIsLevelEnabled();

  if (v62)
  {
    v63 = a1[4];
    v64 = _NRCopyLogObjectForNRUUID();
    v143 = [a1 copyDescription];
    _NRLogWithArgs();
  }

  v65 = os_channel_attr_get();
  v66 = a1[4];
  v67 = _NRCopyLogObjectForNRUUID();
  if (v65)
  {
    v68 = _NRLogIsLevelEnabled();

    if (v68)
    {
      goto LABEL_83;
    }

    return 0;
  }

  v69 = _NRLogIsLevelEnabled();

  if (v69)
  {
    v70 = a1[4];
    v71 = _NRCopyLogObjectForNRUUID();
    v144 = [a1 copyDescription];
    _NRLogWithArgs();
  }

  v72 = os_channel_attr_get();
  v73 = a1[4];
  v74 = _NRCopyLogObjectForNRUUID();
  if (v72)
  {
    v75 = _NRLogIsLevelEnabled();

    if (v75)
    {
      goto LABEL_83;
    }

    return 0;
  }

  v76 = _NRLogIsLevelEnabled();

  if (v76)
  {
    v77 = a1[4];
    v78 = _NRCopyLogObjectForNRUUID();
    v145 = [a1 copyDescription];
    _NRLogWithArgs();
  }

  v79 = os_channel_attr_get();
  v80 = a1[4];
  v81 = _NRCopyLogObjectForNRUUID();
  if (v79)
  {
    v82 = _NRLogIsLevelEnabled();

    if (v82)
    {
      goto LABEL_83;
    }

    return 0;
  }

  v83 = _NRLogIsLevelEnabled();

  if (v83)
  {
    v84 = a1[4];
    v85 = _NRCopyLogObjectForNRUUID();
    v146 = [a1 copyDescription];
    _NRLogWithArgs();
  }

  v86 = os_channel_attr_get();
  v87 = a1[4];
  v88 = _NRCopyLogObjectForNRUUID();
  if (v86)
  {
    v89 = _NRLogIsLevelEnabled();

    if (v89)
    {
      goto LABEL_83;
    }

    return 0;
  }

  v90 = _NRLogIsLevelEnabled();

  if (v90)
  {
    v91 = a1[4];
    v92 = _NRCopyLogObjectForNRUUID();
    v147 = [a1 copyDescription];
    _NRLogWithArgs();
  }

  v93 = os_channel_attr_get();
  v94 = a1[4];
  v95 = _NRCopyLogObjectForNRUUID();
  if (v93)
  {
    v96 = _NRLogIsLevelEnabled();

    if (v96)
    {
      goto LABEL_83;
    }

    return 0;
  }

  v97 = _NRLogIsLevelEnabled();

  if (v97)
  {
    v98 = a1[4];
    v99 = _NRCopyLogObjectForNRUUID();
    v148 = [a1 copyDescription];
    _NRLogWithArgs();
  }

  v100 = os_channel_attr_get();
  v101 = a1[4];
  v102 = _NRCopyLogObjectForNRUUID();
  if (v100)
  {
    v103 = _NRLogIsLevelEnabled();

    if (v103)
    {
      goto LABEL_83;
    }

    return 0;
  }

  v104 = _NRLogIsLevelEnabled();

  if (v104)
  {
    v105 = a1[4];
    v106 = _NRCopyLogObjectForNRUUID();
    v149 = [a1 copyDescription];
    _NRLogWithArgs();
  }

  v107 = os_channel_attr_get();
  v108 = a1[4];
  v109 = _NRCopyLogObjectForNRUUID();
  if (v107)
  {
    v110 = _NRLogIsLevelEnabled();

    if (v110)
    {
      goto LABEL_83;
    }

    return 0;
  }

  v111 = _NRLogIsLevelEnabled();

  if (v111)
  {
    v112 = a1[4];
    v113 = _NRCopyLogObjectForNRUUID();
    v150 = [a1 copyDescription];
    _NRLogWithArgs();
  }

  v114 = os_channel_attr_get();
  v115 = a1[4];
  v116 = _NRCopyLogObjectForNRUUID();
  if (v114)
  {
    v117 = _NRLogIsLevelEnabled();

    if (v117)
    {
LABEL_83:
      v118 = a1[4];
      v119 = _NRCopyLogObjectForNRUUID();
      v120 = [a1 copyDescription];
      _NRLogWithArgs();
    }

    return 0;
  }

  v122 = _NRLogIsLevelEnabled();

  if (v122)
  {
    v123 = a1[4];
    v124 = _NRCopyLogObjectForNRUUID();
    v151 = [a1 copyDescription];
    _NRLogWithArgs();
  }

  v125 = os_channel_attr_get();
  v126 = a1[4];
  v127 = _NRCopyLogObjectForNRUUID();
  if (v125)
  {
    v128 = _NRLogIsLevelEnabled();

    if (v128)
    {
      v129 = a1[4];
      v130 = _NRCopyLogObjectForNRUUID();
      v134 = [a1 copyDescription];
      _NRLogWithArgs();
    }

    return 0;
  }

  v131 = _NRLogIsLevelEnabled();

  if (v131)
  {
    v132 = a1[4];
    v133 = _NRCopyLogObjectForNRUUID();
    v152 = [a1 copyDescription];
    _NRLogWithArgs();
  }

  return 1;
}

void sub_1000A2578(uint64_t a1)
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
    ++*(v2 + 975);
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
    v4 = *(v3 + 903);

    sub_10007D9C4(v3, v4);
  }
}

void sub_1000A2730(uint64_t a1)
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
      v15 = _NRCopyLogObjectForNRUUID();
      v13 = [*(a1 + 32) copyDescription];
      _NRLogWithArgs();
    }
  }

  else
  {
    ++*(v2 + 983);
    if (gNRPacketLoggingEnabled == 1)
    {
      v8 = *(*(a1 + 32) + 32);
      v9 = _NRCopyLogObjectForNRUUID();
      v10 = _NRLogIsLevelEnabled();

      if (v10)
      {
        v11 = *(*(a1 + 32) + 32);
        v12 = _NRCopyLogObjectForNRUUID();
        v14 = [*(a1 + 32) copyDescription];
        _NRLogWithArgs();
      }
    }

    v3 = *(a1 + 32);

    sub_100097378(v3);
  }
}

void sub_1000A28E4(uint64_t a1)
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
    ++*(v2 + 831);
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
    v4 = *(v3 + 759);

    sub_1000A7C10(v3, v4);
  }
}

void sub_1000A2A9C(uint64_t a1)
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
      v15 = _NRCopyLogObjectForNRUUID();
      v13 = [*(a1 + 32) copyDescription];
      _NRLogWithArgs();
    }
  }

  else
  {
    ++*(v2 + 839);
    if (gNRPacketLoggingEnabled == 1)
    {
      v8 = *(*(a1 + 32) + 32);
      v9 = _NRCopyLogObjectForNRUUID();
      v10 = _NRLogIsLevelEnabled();

      if (v10)
      {
        v11 = *(*(a1 + 32) + 32);
        v12 = _NRCopyLogObjectForNRUUID();
        v14 = [*(a1 + 32) copyDescription];
        _NRLogWithArgs();
      }
    }

    v3 = *(a1 + 32);

    sub_1000A2C50(v3);
  }
}

void sub_1000A2C50(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (gNRPacketLoggingEnabled == 1)
  {
    v432 = v1[4];
    v433 = _NRCopyLogObjectForNRUUID();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v435 = v2[4];
      v436 = _NRCopyLogObjectForNRUUID();
      v627 = [v2 copyDescription];
      _NRLogWithArgs();
    }
  }

  v3 = *(v2 + 16);
  if (v3 == 255)
  {
    v4 = v2[4];
    v5 = _NRCopyLogObjectForNRUUID();
    v6 = _NRLogIsLevelEnabled();

    if (!v6)
    {
      goto LABEL_466;
    }

    goto LABEL_4;
  }

  v10 = &OBJC_IVAR___BTPResolver__sdRefResolve;
  if (!*(v2 + 1215))
  {
    v470 = v2[4];
    v471 = _NRCopyLogObjectForNRUUID();
    v472 = _NRLogIsLevelEnabled();

    if (!v472)
    {
      goto LABEL_466;
    }

    goto LABEL_461;
  }

  if ((v3 - 1) < 2)
  {
    v11 = *(v2 + 269);
    v12 = v2[4];
    v13 = _NRCopyLogObjectForNRUUID();
    if (v11 == 1)
    {
      v14 = _NRLogIsLevelEnabled();

      if (!v14)
      {
        goto LABEL_466;
      }

LABEL_4:
      v7 = v2[4];
      StringFromNRTLVType = _NRCopyLogObjectForNRUUID();
      IOVecStringWithContents = [v2 copyDescription];
      goto LABEL_5;
    }

    v379 = _NRLogIsLevelEnabled();

    if (!v379)
    {
      goto LABEL_466;
    }

LABEL_461:
    v380 = v2[4];
    StringFromNRTLVType = _NRCopyLogObjectForNRUUID();
    IOVecStringWithContents = [v2 copyDescription];
    _NRLogWithArgs();
    goto LABEL_464;
  }

  v638 = 0;
  v639 = 0;
  v636[2] = &v670;
  v637 = &v676 + 8;
  v640 = &v675 + 2;
  v15 = &OBJC_IVAR___BTPResolver__sdRefResolve;
  v16 = &OBJC_IVAR___BTPResolver__sdRefResolve;
  v17 = &OBJC_IVAR___BTPResolver__sdRefResolve;
  v655 = v2;
  while (2)
  {
    v18 = 0;
    LODWORD(v657) = 0;
    v653 = 0;
    v644 = 0uLL;
    v648 = 0;
    v666 = 0u;
    v667 = 0u;
    v664 = 0u;
    v665 = 0u;
    v662 = 0;
    v663 = 0;
    LODWORD(v651) = *(v2 + v15[625]);
    while (1)
    {
LABEL_16:
      v654 = 2031;
      *(v2 + 2031) = 4;
      if (v18 && v18 >= v657)
      {
        if (v18 != v657)
        {
          goto LABEL_501;
        }

        v19 = v654;
        *(v2 + v654) = 12;
      }

      else
      {
        v19 = v654;
        if (v18)
        {
          *(v2 + v654) = 36;
          if (!v648)
          {
            goto LABEL_377;
          }

          goto LABEL_29;
        }
      }

      v20 = *(v2 + v10[527]);
      next_slot = os_channel_get_next_slot();
      *(v2 + v19) = (*(v2 + v19) | 0x10);
      if (!next_slot)
      {
LABEL_377:
        if (*(v2 + 267) == 1 && *(v2 + 1231))
        {
          *(v2 + 267) = 0;
          ++*(v2 + 1247);
          if (gNRPacketLoggingEnabled == 1)
          {
            v357 = v2[4];
            v358 = _NRCopyLogObjectForNRUUID();
            v359 = _NRLogIsLevelEnabled();

            if (v359)
            {
              v360 = v2[4];
              v361 = _NRCopyLogObjectForNRUUID();
              v624 = [v2 copyDescription];
              _NRLogWithArgs();
            }
          }

          dispatch_resume(*(v2 + 1231));
        }

        if ((*(v2 + 257) & 1) == 0 && *(v2 + 791))
        {
          *(v2 + 257) = 1;
          ++*(v2 + 807);
          if (gNRPacketLoggingEnabled == 1)
          {
            v362 = v2[4];
            v363 = _NRCopyLogObjectForNRUUID();
            v364 = _NRLogIsLevelEnabled();

            if (v364)
            {
              v365 = v2[4];
              v366 = _NRCopyLogObjectForNRUUID();
              v625 = [v2 copyDescription];
              _NRLogWithArgs();
            }
          }

          dispatch_suspend(*(v2 + 791));
        }

        *(v2 + v654) = (*(v2 + v654) | 0x40);
        goto LABEL_405;
      }

      v22 = next_slot;
      v23 = *(v2 + v10[527]);
      v648 = v22;
      os_channel_slot_get_packet();
      os_packet_get_next_buflet();
      object_address = os_buflet_get_object_address();
      data_offset = os_buflet_get_data_offset();
      LODWORD(v657) = os_buflet_get_data_length();
      if (v657 >= 0x10000)
      {
        v423 = sub_10007CF34();
        v424 = _NRLogIsLevelEnabled();

        if (v424)
        {
          v425 = sub_10007CF34();
          _NRLogWithArgs();
        }

        goto LABEL_487;
      }

      v653 = object_address + data_offset;
      os_packet_get_flow_uuid();
      v18 = 0;
      if (*(v2 + 292) == 1)
      {
        *(v2 + 292) = 0;
        LODWORD(v651) = 1;
      }

      else
      {
        LODWORD(v651) = v651 | BYTE2(v662);
      }

      v10 = &OBJC_IVAR___BTPResolver__sdRefResolve;
LABEL_29:
      if ((*(v2 + 267) & 1) == 0 && *(v2 + 1231))
      {
        *(v2 + 267) = 1;
        ++*(v2 + 1247);
        if (gNRPacketLoggingEnabled == 1)
        {
          v243 = v2[4];
          v244 = _NRCopyLogObjectForNRUUID();
          v245 = _NRLogIsLevelEnabled();

          if (v245)
          {
            v246 = v2[4];
            v247 = _NRCopyLogObjectForNRUUID();
            v618 = [v2 copyDescription];
            _NRLogWithArgs();
          }
        }

        dispatch_suspend(*(v2 + 1231));
      }

      v26 = *(v2 + v16[534]);
      v27 = *(v2 + v17[533]);
      if (v26 <= v27)
      {
        break;
      }

      v28 = (*(v2 + 1463))[v27];
      v29 = v653;
      if ((*(v2 + 1463))[v27])
      {
LABEL_39:
        v645 = v28;
        goto LABEL_46;
      }

      while (1)
      {
        v30 = v2[4];
        v31 = _NRCopyLogObjectForNRUUID();
        v32 = _NRLogIsLevelEnabled();

        if (v32)
        {
          v33 = v2[4];
          v34 = _NRCopyLogObjectForNRUUID();
          v615 = [v2 copyDescription];
          _NRLogWithArgs();
        }

        ++*(v2 + v17[533]);
        v26 = *(v2 + v16[534]);
        v27 = *(v2 + v17[533]);
        if (v26 <= v27)
        {
          break;
        }

        v28 = (*(v2 + 1463))[v27];
        if ((*(v2 + 1463))[v27])
        {
          goto LABEL_39;
        }
      }

      if (v26 != v27)
      {
        v522 = sub_10007CF34();
        v523 = _NRLogIsLevelEnabled();

        if (v523)
        {
          v524 = sub_10007CF34();
          _NRLogWithArgs();
        }

        goto LABEL_487;
      }

      v62 = v2[4];
      v63 = _NRCopyLogObjectForNRUUID();
      v64 = _NRLogIsLevelEnabled();

      if (v64)
      {
        v65 = v2[4];
        v66 = _NRCopyLogObjectForNRUUID();
        v67 = [v2 copyDescription];
        v599 = *(v2 + v17[533]);
        v616 = *(v2 + v16[534]);
        _NRLogWithArgs();
      }
    }

    v29 = v653;
    while (!*(v29 + v18))
    {
      v35 = v2[4];
      v36 = _NRCopyLogObjectForNRUUID();
      v37 = _NRLogIsLevelEnabled();

      if (v37)
      {
        v38 = v2[4];
        v39 = _NRCopyLogObjectForNRUUID();
        v580 = [v2 copyDescription];
        _NRLogWithArgs();
      }

      v18 = (v18 + 1);
      if (v18 >= v657)
      {
        if (v18 == v657)
        {
          v270 = v2[4];
          v271 = _NRCopyLogObjectForNRUUID();
          v272 = _NRLogIsLevelEnabled();

          if (v272)
          {
            v273 = v2[4];
            v274 = _NRCopyLogObjectForNRUUID();
            v275 = [v2 copyDescription];
            v603 = *(v2 + v17[533]);
            v620 = *(v2 + v16[534]);
            _NRLogWithArgs();
          }

          goto LABEL_405;
        }

        v467 = sub_10007CF34();
        v468 = _NRLogIsLevelEnabled();

        if (v468)
        {
          v469 = sub_10007CF34();
          _NRLogWithArgs();
        }

LABEL_487:
        _os_log_pack_size();
        __chkstk_darwin();
        v409 = *__error();
        v410 = _os_log_pack_fill();
        *v410 = 136446210;
        v411 = "NRLinkLinkToNexusLoopUrgent";
        goto LABEL_488;
      }
    }

    v645 = *(v29 + v18);
    v27 = *(v2 + v17[533]);
    v26 = *(v2 + v16[534]);
LABEL_46:
    if (v26 <= v27 + 2)
    {
      if (v26 == v27 + 2)
      {
        v42 = (*(v2 + 1463))[v27 + 1];
        if (v18 >= v657)
        {
          v41 = 0;
          v43 = 0;
          v44 = 512;
        }

        else
        {
          v41 = *(v29 + v18);
          v43 = 1;
          v44 = 256;
        }
      }

      else
      {
        if (v26 == v27 + 1)
        {
          v59 = v18;
        }

        else
        {
          v59 = v18 + 1;
        }

        if (v59 + 2 >= v657)
        {
          v42 = 0;
          v41 = 0;
          v43 = 0;
          v44 = 2048;
        }

        else
        {
          v60 = bswap32(*(v29 + v59));
          v41 = BYTE2(v60);
          v42 = HIBYTE(v60);
          v43 = 1;
          v44 = 1024;
        }
      }
    }

    else
    {
      v40 = bswap32(*&(*(v2 + 1463))[v27 + 1]);
      v41 = BYTE2(v40);
      v42 = HIBYTE(v40);
      v43 = 1;
      v44 = 128;
    }

    v45 = *(v2 + v654) | v44;
    *(v2 + v654) = v45;
    v689 = 0u;
    v690 = 0u;
    v687 = 0u;
    v688 = 0u;
    v685 = 0u;
    v686 = 0u;
    v683 = 0u;
    v684 = 0u;
    v681 = 0u;
    v682 = 0u;
    v679 = 0u;
    v680 = 0u;
    v677 = 0u;
    v678 = 0u;
    v675 = 0u;
    v676 = 0u;
    v46 = v26 - v27;
    v642 = v27;
    v643 = v26;
    if (v26 <= v27)
    {
      v48 = 0;
      v50 = 0;
      v49 = v654;
    }

    else
    {
      *&v675 = &(*(v2 + 1463))[v27];
      v47 = v41 | (v42 << 8);
      if (v47 + 5 >= v46)
      {
        v48 = v46;
      }

      else
      {
        v48 = (v47 + 5);
      }

      if (!v48)
      {
        v440 = sub_10007CF34();
        v441 = _NRLogIsLevelEnabled();

        if (v441)
        {
          v442 = sub_10007CF34();
          v611 = *(v2 + v16[534]);
          v629 = *(v2 + v17[533]);
          _NRLogWithArgs();
        }

        _os_log_pack_size();
        __chkstk_darwin();
        v443 = *__error();
        v444 = _os_log_pack_fill();
        sub_100095124(v444, "NRLinkLinkToNexusLoopUrgent", v47, *(v2 + v16[534]), *(v2 + v17[533]));
        goto LABEL_567;
      }

      DWORD2(v675) = v48;
      v45 |= 0x1000uLL;
      v49 = v654;
      *(v2 + v654) = v45;
      v50 = 1;
    }

    v51 = v657;
    v52 = v657;
    if (v18 >= v657)
    {
      v58 = 0;
      v57 = 0;
      if (v43)
      {
        goto LABEL_96;
      }

      goto LABEL_102;
    }

    if (v43 && (v41 | (v42 << 8)) + 5 <= v48)
    {
      v58 = 0;
      goto LABEL_96;
    }

    v53 = &v675 + v50;
    *v53 = v29 + v18;
    v54 = v52 - v18;
    *(v53 + 2) = v54;
    v48 = (v48 + v54);
    *(v2 + v49) = (v45 | 0x2000);
    v55 = v50;
    if (v48 < 3)
    {
      v56 = 1;
    }

    else
    {
      v56 = v43;
    }

    if ((v56 & 1) == 0)
    {
      if (DWORD2(v675) >= 3)
      {
        v61 = *(v675 + 1);
LABEL_90:
        v68 = v61;
        v69 = v61 >> 8;
LABEL_91:
        v70 = bswap32(v68 | (v69 << 8));
        v41 = BYTE2(v70);
        v42 = HIBYTE(v70);
        goto LABEL_92;
      }

      if (DWORD2(v675) == 2)
      {
        if (v643 <= v642)
        {
          goto LABEL_568;
        }

        v68 = *(v675 + 1);
        v69 = *v676;
        goto LABEL_91;
      }

      if (DWORD2(v675) == 1)
      {
        if (DWORD2(v676) < 2)
        {
          v562 = sub_10007CF34();
          v563 = _NRLogIsLevelEnabled();

          if (v563)
          {
            v564 = sub_10007CF34();
            IOVecString = createIOVecString();
            _NRLogWithArgs();
          }
        }

        else
        {
          if (v643 > v642)
          {
            v61 = *v676;
            goto LABEL_90;
          }

          v539 = sub_10007CF34();
          v540 = _NRLogIsLevelEnabled();

          if (v540)
          {
            v541 = sub_10007CF34();
            v633 = createIOVecString();
            _NRLogWithArgs();
          }
        }
      }

      else
      {
        v536 = sub_10007CF34();
        v537 = _NRLogIsLevelEnabled();

        if (v537)
        {
          v538 = sub_10007CF34();
          v632 = createIOVecString();
          _NRLogWithArgs();
        }
      }

      _os_log_pack_size();
      __chkstk_darwin();
      v542 = *__error();
      v543 = _os_log_pack_fill();
      v544 = createIOVecString();
      *v543 = 136446466;
      *(v543 + 4) = "nrReadTLVLenHBOFromIOVec";
      *(v543 + 12) = 2112;
      *(v543 + 14) = v544;
      goto LABEL_500;
    }

    if (!v43)
    {
      v57 = 0;
      *(v2 + v49) = (v45 | 0xA000);
      v58 = 1;
      v50 = (v50 + 1);
      v18 = v51;
      goto LABEL_102;
    }

LABEL_92:
    v71 = (v41 | (v42 << 8)) + 5;
    if (v71 >= v48)
    {
      v45 = *(v2 + v49) | 0x8000;
      *(v2 + v49) = v45;
      v58 = 1;
      v18 = v51;
      v50 = (v50 + 1);
    }

    else
    {
      v72 = v48 - v71;
      v45 = *(v2 + v49) | 0x4000;
      *(v2 + v49) = v45;
      v73 = &v675 + v50;
      v74 = *(v73 + 2) - (v48 - v71);
      *(v73 + 2) = v74;
      if (!v74)
      {
        v525 = v48;
        v526 = sub_10007CF34();
        v527 = _NRLogIsLevelEnabled();

        if (v527)
        {
          v528 = sub_10007CF34();
          v598 = createIOVecString();
          _NRLogWithArgs();
        }

        _os_log_pack_size();
        __chkstk_darwin();
        v529 = *__error();
        v530 = _os_log_pack_fill();
        v531 = createIOVecString();
        sub_10009C064(v530, "NRLinkLinkToNexusLoopUrgent", v55, v72, v531, v525, v52);
        goto LABEL_567;
      }

      v18 = (v51 - v72);
      v58 = 1;
      v50 = (v50 + 1);
      v48 = (v41 | (v42 << 8)) + 5;
    }

LABEL_96:
    v75 = v18;
    if ((v645 - 100) >= 6 && (v645 - 2) >= 4)
    {
      v77 = v648;
      if (v645 == 1)
      {
        v76 = 255;
        goto LABEL_99;
      }
    }

    else
    {
      v76 = 2000;
      v77 = v648;
LABEL_99:
      v78 = v41 | (v42 << 8);
      if (v78 > v76)
      {
        StringFromNRTLVType = createStringFromNRTLVType();
        IOVecStringWithContents = createIOVecStringWithContents();
        sub_100080EB4(v2, @"Received invalid TLV len %u for %@ (max=%u) %@", v387, v388, v389, v390, v391, v392, v78);
        goto LABEL_464;
      }
    }

    if ((v41 | (v42 << 8)) + 5 <= v48)
    {
      v10 = &OBJC_IVAR___BTPResolver__sdRefResolve;
      v18 = v75;
      goto LABEL_185;
    }

    v57 = 1;
    v10 = &OBJC_IVAR___BTPResolver__sdRefResolve;
    v18 = v75;
LABEL_102:
    LODWORD(v650) = v57;
    v79 = v29;
    v80 = v42;
    v652 = v41;
    v81 = v48;
    v646 = v50;
    v660 = 0uLL;
    v661 = 0uLL;
    v658 = 0uLL;
    v659 = 0uLL;
    v82 = *(v2 + v10[527]);
    v77 = v648;
    v83 = os_channel_get_next_slot();
    if (v83)
    {
      v84 = v83;
      v656 = v18;
      v85 = *(v2 + v10[527]);
      v86 = v84;
      os_channel_slot_get_packet();
      os_packet_get_next_buflet();
      v87 = os_buflet_get_object_address();
      v88 = os_buflet_get_data_offset();
      data_length = os_buflet_get_data_length();
      if (HIWORD(data_length))
      {
LABEL_474:
        if (qword_100229088 != -1)
        {
          dispatch_once(&qword_100229088, &stru_1001FB1C0);
        }

        if (_NRLogIsLevelEnabled())
        {
          if (qword_100229088 != -1)
          {
            dispatch_once(&qword_100229088, &stru_1001FB1C0);
          }

          _NRLogWithArgs();
        }

        goto LABEL_487;
      }

      v90 = data_length;
      os_packet_get_flow_uuid();
      if (*(v2 + 292) == 1)
      {
        *(v2 + 292) = 0;
        LODWORD(v651) = 1;
      }

      else
      {
        LODWORD(v651) = v651 | BYTE2(v662);
      }

      v18 = v656;
      v41 = v652;
      v42 = v80;
      v91 = v650;
      v92 = v646;
      v29 = v87 + v88;
      v93 = &v675 + v646;
      *v93 = v29;
      if (!v90)
      {
LABEL_481:
        if (qword_100229088 != -1)
        {
          dispatch_once(&qword_100229088, &stru_1001FB1C0);
        }

        if (_NRLogIsLevelEnabled())
        {
          if (qword_100229088 != -1)
          {
            dispatch_once(&qword_100229088, &stru_1001FB1C0);
          }

          _NRLogWithArgs();
        }

        goto LABEL_487;
      }

      *(v93 + 2) = v90;
      v94 = *&v655[v654] | 0x20000;
      *&v655[v654] = v94;
      v48 = v90 + v81;
      if (v48 < 3)
      {
        v95 = 1;
      }

      else
      {
        v95 = v91;
      }

      if (v95)
      {
        v10 = &OBJC_IVAR___BTPResolver__sdRefResolve;
        if (v91)
        {
          v96 = v648;
          v97 = v654;
          goto LABEL_137;
        }

        v100 = 0;
        v96 = v648;
        v97 = v654;
LABEL_139:
        v45 = v94 | 0x80000;
        v2 = v655;
        *&v655[v97] = v45;
        v641 = v96;
        v29 = v653;
        v107 = v86;
LABEL_142:
        v112 = v92 + 2;
        v113 = &v637[16 * v92];
        while (2)
        {
          v646 = v112 - 1;
          if ((v100 & 1) != 0 && (v42 << 8) + v41 + 5 <= v48)
          {
            v648 = v96;
            v58 = 1;
            v50 = v646;
LABEL_184:
            v77 = v641;
            goto LABEL_185;
          }

          v114 = v100;
          v115 = v113;
          v649 = v42;
          v650 = v48;
          v652 = v41;
          v660 = 0u;
          v661 = 0u;
          v658 = 0u;
          v659 = 0u;
          v116 = *(v2 + v10[527]);
          v117 = os_channel_get_next_slot();
          if (!v117)
          {
            v50 = (v112 - 1);
            v45 = *(v2 + v97) | 0x10000;
            *(v2 + v97) = v45;
            if (v114)
            {
              v58 = 1;
              v648 = v107;
              LODWORD(v42) = v649;
              v48 = v650;
              LODWORD(v41) = v652;
              goto LABEL_184;
            }

            v648 = v107;
LABEL_391:
            if (gNRPacketLoggingEnabled == 1)
            {
              v350 = v2[4];
              v351 = v50;
              v352 = _NRCopyLogObjectForNRUUID();
              v353 = _NRLogIsLevelEnabled();

              LOWORD(v50) = v351;
              if (v353)
              {
                v354 = v2[4];
                v355 = _NRCopyLogObjectForNRUUID();
                v356 = [v2 copyDescription];
                v592 = createStringFromNRTLVType();
                _NRLogWithArgs();

                LOWORD(v50) = v351;
              }
            }

            v17 = &OBJC_IVAR___BTPResolver__sdRefResolve;
            v16 = &OBJC_IVAR___BTPResolver__sdRefResolve;
            if (*(v2 + 267) == 1 && *(v2 + 1231))
            {
              v277 = v50;
              *(v2 + 267) = 0;
              ++*(v2 + 1247);
              if (gNRPacketLoggingEnabled == 1)
              {
                v367 = v2[4];
                v368 = v50;
                v369 = _NRCopyLogObjectForNRUUID();
                v370 = _NRLogIsLevelEnabled();

                v277 = v368;
                if (v370)
                {
                  v371 = v2[4];
                  v372 = _NRCopyLogObjectForNRUUID();
                  v626 = [v2 copyDescription];
                  _NRLogWithArgs();

                  v277 = v368;
                }
              }

              dispatch_resume(*(v2 + 1231));
              LOWORD(v50) = v277;
            }

            if ((v643 > v642) < v50)
            {
              v278 = v50 - (v643 > v642);
              v279 = &v640[4 * (v643 > v642)];
              do
              {
                if (gNRPacketLoggingEnabled == 1)
                {
                  v281 = v2[4];
                  v282 = _NRCopyLogObjectForNRUUID();
                  v283 = _NRLogIsLevelEnabled();

                  if (v283)
                  {
                    v284 = v2[4];
                    v285 = _NRCopyLogObjectForNRUUID();
                    v286 = [v2 copyDescription];
                    v604 = *(v2 + 379);
                    v621 = *(v2 + 383);
                    v575 = *v279;
                    v586 = *(v279 - 1);
                    _NRLogWithArgs();
                  }
                }

                memcpy(&(*(v2 + 1463))[*(v2 + 379)], *(v279 - 1), *v279);
                v280 = *v279;
                v279 += 16;
                *(v2 + 379) += v280;
                --v278;
              }

              while (v278);
            }

            *(v2 + v654) = (*(v2 + v654) | 0x100000);
LABEL_404:
            *(&v644 + 1) = v648;
            goto LABEL_405;
          }

          v647 = v117;
          v648 = v107;
          v118 = v112;
          v653 = v29;
          v656 = v18;
          v119 = *(v2 + v10[527]);
          os_channel_slot_get_packet();
          os_packet_get_next_buflet();
          v120 = os_buflet_get_object_address();
          v121 = os_buflet_get_data_offset();
          v122 = os_buflet_get_data_length();
          if (v122 >= 0x10000)
          {
            goto LABEL_474;
          }

          v123 = v122;
          os_packet_get_flow_uuid();
          if (*(v2 + 292) == 1)
          {
            *(v2 + 292) = 0;
            LODWORD(v651) = 1;
          }

          else
          {
            LODWORD(v651) = v651 | BYTE2(v662);
          }

          v42 = v649;
          v124 = v650;
          v41 = v652;
          v125 = v115;
          v29 = v120 + v121;
          *(v115 - 1) = v29;
          v18 = v656;
          if (!v123)
          {
            goto LABEL_481;
          }

          *v115 = v123;
          v97 = v654;
          v126 = *&v655[v654];
          *&v655[v654] = v126 | 0x20000;
          v48 = v123 + v124;
          if (v114 & 1 | (v48 < 3))
          {
            v127 = v118;
            if (v114)
            {
              v96 = v648;
LABEL_173:
              v134 = (v42 << 8) + v41 + 5;
              v135 = *&v655[v97];
              if (v134 <= v48)
              {
                v45 = v135 | 0x40000;
                *&v655[v97] = v45;
                v108 = v48 - v134;
                v136 = &v675 + v127 - 1;
                v137 = *(v136 + 2) - (v48 - v134);
                *(v136 + 2) = v137;
                if (!v137)
                {
                  v2 = v48;
                  v109 = v127 - 1;
                  goto LABEL_493;
                }

                v18 = v123 - v108;
                v664 = v658;
                v665 = v659;
                v666 = v660;
                v667 = v661;
                if (v127 == 16)
                {
                  v77 = v647;
                  LODWORD(v657) = v123;
                  v48 = (v42 << 8) + v41 + 5;
                  v2 = v655;
                  goto LABEL_192;
                }

                v100 = 1;
                v107 = v647;
                v641 = v647;
                LODWORD(v657) = v123;
                v48 = (v42 << 8) + v41 + 5;
                v10 = &OBJC_IVAR___BTPResolver__sdRefResolve;
                v2 = v655;
              }

              else
              {
                v45 = v135 | 0x80000;
                *&v655[v97] = v45;
                if (v127 == 16)
                {
                  v141 = v134 > v48;
                  v134 = v48;
                  v2 = v655;
                  v18 = v656;
                  v29 = v653;
                  v77 = v641;
                  if (v141)
                  {
                    goto LABEL_490;
                  }

LABEL_192:
                  v649 = (v41 | (v42 << 8));
                  v50 = 16;
                  v138 = v41 | (v42 << 8);
LABEL_193:
                  v139 = v45 | 0x200000;
                  v140 = v77;
                  *(&v644 + 1) = v77;
                  goto LABEL_194;
                }

                v100 = 1;
                v10 = &OBJC_IVAR___BTPResolver__sdRefResolve;
                v2 = v655;
                v18 = v656;
                v29 = v653;
                v107 = v647;
              }
            }

            else
            {
              v45 = v126 | 0xA0000;
              v2 = v655;
              *&v655[v97] = v45;
              v107 = v647;
              v96 = v648;
              if (v127 == 16)
              {
                goto LABEL_491;
              }

              v100 = 0;
              v10 = &OBJC_IVAR___BTPResolver__sdRefResolve;
              v29 = v653;
            }

            v112 = v127 + 1;
            v113 = (v125 + 4);
            continue;
          }

          break;
        }

        v127 = v118;
        if (DWORD2(v675) >= 3)
        {
          v128 = *(v675 + 1);
          v129 = HIBYTE(*(v675 + 1));
          v96 = v648;
LABEL_169:
          v131 = v128 | (v129 << 8);
          v132 = bswap32(v131);
          v41 = BYTE2(v132);
          v42 = HIBYTE(v132);
          if ((v645 - 100) >= 6 && (v645 - 2) >= 4)
          {
            if (v645 != 1)
            {
              goto LABEL_173;
            }

            v133 = 255;
          }

          else
          {
            v133 = 2000;
          }

          v105 = __rev16(v131);
          if (v105 > v133)
          {
            goto LABEL_462;
          }

          goto LABEL_173;
        }

        v96 = v648;
        if (DWORD2(v675) == 2)
        {
          v130 = v676;
          v128 = *(v675 + 1);
        }

        else
        {
          if (DWORD2(v675) != 1)
          {
            goto LABEL_506;
          }

          if (DWORD2(v676) > 1)
          {
            v128 = *v676;
            v129 = HIBYTE(*v676);
            goto LABEL_169;
          }

          if (v646 <= 1)
          {
            goto LABEL_530;
          }

          if (DWORD2(v676) != 1)
          {
            goto LABEL_533;
          }

          v130 = v677;
          v128 = *v676;
        }

        v129 = *v130;
        goto LABEL_169;
      }

      v10 = &OBJC_IVAR___BTPResolver__sdRefResolve;
      if (DWORD2(v675) > 2)
      {
        v98 = *(v675 + 1);
        v99 = HIBYTE(*(v675 + 1));
        v96 = v648;
        v97 = v654;
LABEL_133:
        v102 = v98 | (v99 << 8);
        v103 = bswap32(v102);
        v41 = BYTE2(v103);
        v42 = HIBYTE(v103);
        if ((v645 - 100) >= 6 && (v645 - 2) >= 4)
        {
          if (v645 == 1)
          {
            v104 = 255;
            goto LABEL_136;
          }
        }

        else
        {
          v104 = 2000;
LABEL_136:
          v105 = __rev16(v102);
          if (v105 > v104)
          {
LABEL_462:
            StringFromNRTLVType = createStringFromNRTLVType();
            IOVecStringWithContents = createIOVecStringWithContents();
            v2 = v655;
            sub_100080EB4(v655, @"LookAhead received invalid TLV len %u for %@ (max=%u) %@", v381, v382, v383, v384, v385, v386, v105);
            goto LABEL_464;
          }
        }

LABEL_137:
        v106 = (v41 | (v42 << 8)) + 5;
        v94 = *&v655[v97];
        if (v106 > v48)
        {
          v100 = 1;
          v18 = v656;
          goto LABEL_139;
        }

        v45 = v94 | 0x40000;
        *&v655[v97] = v45;
        v108 = v48 - v106;
        v109 = v92;
        v110 = &v675 + v92;
        v111 = *(v110 + 2) - (v48 - v106);
        *(v110 + 2) = v111;
        if (v111)
        {
          v18 = v90 - v108;
          v664 = v658;
          v665 = v659;
          v100 = 1;
          v666 = v660;
          v667 = v661;
          v48 = (v41 | (v42 << 8)) + 5;
          LODWORD(v657) = v90;
          v107 = v86;
          v641 = v86;
          v10 = &OBJC_IVAR___BTPResolver__sdRefResolve;
          v2 = v655;
          goto LABEL_142;
        }

        v2 = v48;
LABEL_493:
        v418 = sub_10007CF34();
        v419 = _NRLogIsLevelEnabled();

        if (v419)
        {
          v420 = sub_10007CF34();
          v421 = createIOVecString();
          v422 = v656;
          _NRLogWithArgs();
        }

        else
        {
          v422 = v656;
        }

        _os_log_pack_size();
        __chkstk_darwin();
        v426 = *__error();
        v427 = _os_log_pack_fill();
        v428 = createIOVecString();
        sub_10009C064(v427, "NRLinkLinkToNexusLoopUrgent", v109, v108, v428, v2, v422);

LABEL_500:
        sub_10007CF34();
        _NRLogAbortWithPack();
LABEL_501:
        v429 = sub_10007CF34();
        v430 = _NRLogIsLevelEnabled();

        if (v430)
        {
          v431 = sub_10007CF34();
          _NRLogWithArgs();
        }

        goto LABEL_487;
      }

      v96 = v648;
      v97 = v654;
      if (DWORD2(v675) == 2)
      {
        if (!v646)
        {
          goto LABEL_568;
        }

        v101 = v676;
        v98 = *(v675 + 1);
        goto LABEL_132;
      }

      if (DWORD2(v675) == 1)
      {
        if (DWORD2(v676) <= 1)
        {
          if (v646 < 2)
          {
LABEL_530:
            v473 = sub_10007CF34();
            v474 = _NRLogIsLevelEnabled();

            if (v474)
            {
              v475 = sub_10007CF34();
              v630 = createIOVecString();
              _NRLogWithArgs();
            }
          }

          else
          {
            if (DWORD2(v676) == 1)
            {
              v101 = v677;
              v98 = *v676;
LABEL_132:
              v99 = *v101;
              goto LABEL_133;
            }

LABEL_533:
            v476 = sub_10007CF34();
            v477 = _NRLogIsLevelEnabled();

            if (v477)
            {
              v478 = sub_10007CF34();
              v631 = createIOVecString();
              _NRLogWithArgs();
            }
          }
        }

        else
        {
          if (v646)
          {
            v98 = *v676;
            v99 = HIBYTE(*v676);
            goto LABEL_133;
          }

          v550 = sub_10007CF34();
          v551 = _NRLogIsLevelEnabled();

          if (v551)
          {
            v552 = sub_10007CF34();
            v634 = createIOVecString();
            _NRLogWithArgs();
          }
        }
      }

      else
      {
LABEL_506:
        v437 = sub_10007CF34();
        v438 = _NRLogIsLevelEnabled();

        if (v438)
        {
          v439 = sub_10007CF34();
          v628 = createIOVecString();
          _NRLogWithArgs();
        }
      }

      _os_log_pack_size();
      __chkstk_darwin();
      v479 = *__error();
      v480 = _os_log_pack_fill();
      v481 = createIOVecString();
      *v480 = 136446466;
      *(v480 + 4) = "nrReadTLVLenHBOFromIOVec";
      *(v480 + 12) = 2112;
      *(v480 + 14) = v481;
      goto LABEL_489;
    }

    v45 = *(v2 + v654) | 0x10000;
    *(v2 + v654) = v45;
    v50 = v646;
    v48 = v81;
    LODWORD(v41) = v652;
    LODWORD(v42) = v80;
    v29 = v79;
    if ((v650 & 1) == 0)
    {
      goto LABEL_391;
    }

LABEL_185:
    v134 = v48;
    v138 = v41 | (v42 << 8);
    v649 = (v41 | (v42 << 8));
    if (v649 + 5 > v48)
    {
      goto LABEL_391;
    }

    if (v58)
    {
      v97 = v654;
      goto LABEL_193;
    }

    v139 = v45 | 0x400000;
    v140 = v77;
    v97 = v654;
LABEL_194:
    v650 = v48;
    *(v2 + v97) = v139;
    *(v2 + 1551) += v134;
    v656 = v18;
    v648 = v140;
    v646 = v50;
    v652 = v138;
    if (v645 < 100)
    {
      if (!v50)
      {
        v449 = sub_10007CF34();
        v450 = _NRLogIsLevelEnabled();

        if (v450)
        {
          v451 = sub_10007CF34();
          _NRLogWithArgs();
        }

        _os_log_pack_size();
        __chkstk_darwin();
        v452 = *__error();
        v410 = _os_log_pack_fill();
        *v410 = 136446210;
        v411 = "nrChecksumIOVecInner";
        goto LABEL_488;
      }

      LODWORD(v641) = v50;
      v647 = v636;
      v152 = 0;
      v153 = 0;
      v154 = 0;
      v155 = 0;
      v156 = v138 + 3;
      v157 = v50;
      v158 = v640;
      while (v156 > v153)
      {
        if (*v158 >= v156 - v153)
        {
          v159 = v156 - v153;
        }

        else
        {
          v159 = *v158;
        }

        if (!v159)
        {
          v397 = sub_10007CF34();
          v398 = _NRLogIsLevelEnabled();

          v399 = "nrChecksumUpdate";
          if (v398)
          {
            v400 = sub_10007CF34();
            _NRLogWithArgs();
          }

          goto LABEL_472;
        }

        v2 = v636;
        v160 = *(v158 - 1);
        if ((v154 & 1) == 0 || (v636[1] = *(v158 - 1), LOWORD(v658) = *v160 << 8, v155 = os_inet_checksum(), v159 != 1))
        {
          v155 = os_inet_checksum();
        }

        if (v159)
        {
          v154 ^= 1u;
        }

        v153 += v159;
        if (v153 >= v156 && v159 < *v158)
        {
          goto LABEL_226;
        }

        ++v152;
        v158 += 4;
        if (v157 == v152)
        {
          v161 = v646;
          LOWORD(v152) = v646;
          goto LABEL_228;
        }
      }

      v159 = 0;
LABEL_226:
      v161 = v646;
LABEL_228:
      v16 = &OBJC_IVAR___BTPResolver__sdRefResolve;
      if (v153 == v156)
      {
        v162 = ~v155;
        v163 = (~v155 >> 8);
        v164 = &v675 + v152;
        v165 = *(v164 + 2);
        if (v165 < v159 + 2)
        {
          if (v165 < v159 + 1)
          {
            v486 = sub_10007CF34();
            v487 = _NRLogIsLevelEnabled();

            if (v487)
            {
              v488 = sub_10007CF34();
              v595 = createIOVecString();
              _NRLogWithArgs();
            }
          }

          else if (v152 + 1 >= v641)
          {
            v489 = sub_10007CF34();
            v490 = _NRLogIsLevelEnabled();

            if (v490)
            {
              v491 = sub_10007CF34();
              v596 = createIOVecString();
              _NRLogWithArgs();
            }
          }

          else
          {
            v2 = (&v675 + v152 + 1);
            if (*(v2 + 2))
            {
              if (*(*v164 + v159) != v162 || **v2 != v163)
              {
                v498 = sub_10007CF34();
                v499 = _NRLogIsLevelEnabled();

                if (v499)
                {
                  v484 = sub_10007CF34();
                  v573 = *(*v164 + v159);
                  v579 = **v2;
LABEL_549:
                  _NRLogWithArgs();
                }

                goto LABEL_550;
              }

              goto LABEL_238;
            }

            v492 = sub_10007CF34();
            v493 = _NRLogIsLevelEnabled();

            if (v493)
            {
              v494 = sub_10007CF34();
              v597 = createIOVecString();
              _NRLogWithArgs();
            }
          }

          _os_log_pack_size();
          __chkstk_darwin();
          v495 = *__error();
          v496 = _os_log_pack_fill();
          v497 = createIOVecString();
          sub_10005015C(v496, "nrChecksumIOVecInner", v497, v152, v159);

          goto LABEL_489;
        }

        v166 = (*v164 + v159);
        if (*v166 != v162 || v166[1] != v163)
        {
          v482 = sub_10007CF34();
          v483 = _NRLogIsLevelEnabled();

          if (v483)
          {
            v484 = sub_10007CF34();
            v485 = (*v164 + v159);
            v572 = *v485;
            v578 = v485[1];
            goto LABEL_549;
          }

LABEL_550:
          v2 = v655;
          LOWORD(v18) = v656;
          goto LABEL_551;
        }

LABEL_238:
        v2 = v655;
        v18 = v656;
        goto LABEL_243;
      }

      v464 = sub_10007CF34();
      v465 = _NRLogIsLevelEnabled();

      v399 = "nrChecksumIOVecInner";
      if (v465)
      {
        v466 = sub_10007CF34();
        _NRLogWithArgs();
      }

LABEL_472:
      _os_log_pack_size();
      __chkstk_darwin();
      v401 = *__error();
      v402 = _os_log_pack_fill();
      *v402 = 136446210;
      *(v402 + 4) = v399;
      goto LABEL_489;
    }

    LOWORD(v658) = 0;
    if (!v50)
    {
      goto LABEL_512;
    }

    v647 = v636;
    v142 = 0;
    v143 = bswap32(v138);
    v144 = v50;
    v145 = v640;
    v641 = (v138 + 3);
    v146 = v138 + 3;
    v147 = (v645 >> 4) ^ HIWORD(v143);
    v148 = (16 * v645) ^ HIBYTE(v143);
    while (2)
    {
      v149 = *v145;
      if (v146)
      {
        if (v146 > v149)
        {
          v146 -= v149;
        }

        else
        {
          if (v146 < v149)
          {
            break;
          }

          v146 = 0;
        }

LABEL_198:
        v145 += 4;
        if (!--v144)
        {
          goto LABEL_240;
        }

        continue;
      }

      break;
    }

    v150 = v149 - v146;
    if (v150 >= 2 - v142)
    {
      v151 = 2 - v142;
    }

    else
    {
      v151 = v150;
    }

    memcpy(&v658 + v142, (*(v145 - 1) + v146), v151);
    v142 += v151;
    if (v142 <= 1)
    {
      v146 = 0;
      v18 = v656;
      goto LABEL_198;
    }

    v18 = v656;
LABEL_240:
    if (v142 != 2)
    {
      v453 = sub_10007CF34();
      v454 = _NRLogIsLevelEnabled();

      v455 = v641;
      if (v454)
      {
        v456 = sub_10007CF34();
        v612 = createIOVecString();
        _NRLogWithArgs();
      }

      _os_log_pack_size();
      __chkstk_darwin();
      v457 = *__error();
      v458 = _os_log_pack_fill();
      v459 = createIOVecString();
      v460 = v458;
      v461 = v142;
      v462 = 2;
      v463 = v455;
      goto LABEL_521;
    }

    v161 = v646;
    v167 = v658 == (v147 | (v148 << 8));
    v16 = &OBJC_IVAR___BTPResolver__sdRefResolve;
    if (!v167)
    {
LABEL_551:
      v500 = *(v2 + 2007);
      v501 = v652;
      if (v500)
      {
        v500[104] = 1;
      }

      v502 = v2[4];
      v503 = _NRCopyLogObjectForNRUUID();
      v504 = _NRLogIsLevelEnabled();

      if (v504)
      {
        v505 = v2[4];
        v654 = _NRCopyLogObjectForNRUUID();
        v506 = [v2 copyDescription];
        v507 = createStringFromNRTLVType();
        v657 = v501;
        v653 = *(v655 + 379);
        v508 = *(v655 + 383);
        v651 = createIOVecString();
        v656 = v18;
        v16 = &OBJC_IVAR___BTPResolver__sdRefResolve;
        v2 = v655;
        v509 = v507;
        v510 = v654;
        _NRLogWithArgs();
      }

      else
      {
        v657 = v501;
        v656 = v18;
      }

      StringFromNRTLVType = createStringFromNRTLVType();
      v511 = *(v2 + v16[534]);
      v512 = *(v2 + 383);
      IOVecStringWithContents = createIOVecString();
      sub_100080EB4(v2, @"Invalid checksum detected in urgent loop on read type %@ len %u filledIn=%u handled=%u in %@ ioVecContentLen=%u alreadyRead=%u curLinkInputSlot=%p", v513, v514, v515, v516, v517, v518, StringFromNRTLVType);
      goto LABEL_464;
    }

LABEL_243:
    v660 = 0u;
    v661 = 0u;
    v658 = 0u;
    v659 = 0u;
    v168 = *(v2 + 775);
    v169 = os_channel_get_next_slot();
    v653 = v29;
    if (!v169)
    {
      v17 = &OBJC_IVAR___BTPResolver__sdRefResolve;
      v10 = &OBJC_IVAR___BTPResolver__sdRefResolve;
      v173 = v642;
      v172 = v643;
      if (*(v2 + 257) == 1 && *(v2 + 791))
      {
        *(v2 + 257) = 0;
        ++*(v2 + 807);
        if (gNRPacketLoggingEnabled == 1)
        {
          v265 = v2[4];
          v266 = _NRCopyLogObjectForNRUUID();
          v267 = _NRLogIsLevelEnabled();

          v161 = v646;
          if (v267)
          {
            v268 = v2[4];
            v269 = _NRCopyLogObjectForNRUUID();
            v619 = [v2 copyDescription];
            _NRLogWithArgs();

            v161 = v646;
          }
        }

        dispatch_resume(*(v2 + 791));
        v173 = v642;
        v172 = v643;
      }

      v174 = *(v2 + v654) | 0x800000;
      *(v2 + v654) = v174;
      if ((v172 > v173) < v161)
      {
        v175 = v172 > v173;
        v176 = v161;
        v177 = &v640[4 * v175];
        do
        {
          if (gNRPacketLoggingEnabled == 1)
          {
            v181 = v2[4];
            v182 = _NRCopyLogObjectForNRUUID();
            v183 = _NRLogIsLevelEnabled();

            v161 = v646;
            if (v183)
            {
              v184 = v2[4];
              v185 = _NRCopyLogObjectForNRUUID();
              v186 = [v2 copyDescription];
              v581 = *(v2 + 379);
              v600 = *(v2 + 383);
              v574 = *(v177 - 1);
              v571 = *v177;
              _NRLogWithArgs();

              v161 = v646;
            }
          }

          v178 = *(v2 + 379);
          v179 = *v177;
          if ((v179 + v178) >= *(v2 + 319))
          {
            *(v2 + v654) = (*(v2 + v654) | 0x1000000);
            StringFromNRTLVType = createIOVecString();
            v594 = *(v2 + 379);
            v610 = *(v2 + 383);
            sub_100080EB4(v2, @"no nexusOutputSlot and linkReadBuffer is full %@ filledIn=%u handled=%u", v403, v404, v405, v406, v407, v408, StringFromNRTLVType);
            goto LABEL_465;
          }

          memcpy(&(*(v2 + 1463))[v178], *(v177 - 1), v179);
          v180 = *v177;
          v177 += 16;
          *(v2 + 379) += v180;
          ++v175;
        }

        while (v176 != v175);
        v174 = *(v2 + v654);
        v10 = &OBJC_IVAR___BTPResolver__sdRefResolve;
        v18 = v656;
        v173 = v642;
        v172 = v643;
      }

      if (v172 <= v173 || v161 != 1)
      {
        *(v2 + v654) = (v174 | 0x4000000);
        *(&v644 + 1) = v648;
        goto LABEL_16;
      }

      *(v2 + v654) = (v174 | 0x2000000);
      if (v18 && v657 > v18)
      {
        v276 = v657 - v18;
        if (gNRPacketLoggingEnabled == 1)
        {
          v373 = v2[4];
          v374 = _NRCopyLogObjectForNRUUID();
          v375 = _NRLogIsLevelEnabled();

          if (v375)
          {
            v376 = v2[4];
            v377 = _NRCopyLogObjectForNRUUID();
            v378 = [v2 copyDescription];
            v609 = *(v2 + 383);
            v593 = *(v2 + 379);
            _NRLogWithArgs();
          }
        }

        memcpy(&(*(v2 + 1463))[*(v2 + 379)], (v653 + v18), v276);
        *(v2 + 379) += v276;
        goto LABEL_404;
      }

LABEL_405:
      if (*(&v644 + 1))
      {
        v287 = *(v2 + v16[534]);
        v288 = *(v2 + v17[533]);
        if (v287 <= v288)
        {
          if (v288 != v287)
          {
            v519 = sub_10007CF34();
            v520 = _NRLogIsLevelEnabled();

            if (v520)
            {
              v521 = sub_10007CF34();
              _NRLogWithArgs();
            }

            goto LABEL_487;
          }

          *(v2 + 2031) = (*(v2 + 2031) | 0x400000000);
          if (gNRPacketLoggingEnabled == 1)
          {
            v339 = v2[4];
            v340 = _NRCopyLogObjectForNRUUID();
            v341 = _NRLogIsLevelEnabled();

            if (v341)
            {
              v342 = v2[4];
              v343 = _NRCopyLogObjectForNRUUID();
              v590 = [v2 copyDescription];
              v607 = *(v2 + v16[534]);
              _NRLogWithArgs();
            }
          }

          *(v2 + v16[534]) = 0;
LABEL_413:
          *(v2 + v17[533]) = 0;
        }

        else
        {
          if (v288 > *(v2 + 327))
          {
            *(v2 + 2031) = (*(v2 + 2031) | 0x80000000);
            if (gNRPacketLoggingEnabled == 1)
            {
              v344 = v2[4];
              v345 = _NRCopyLogObjectForNRUUID();
              v346 = _NRLogIsLevelEnabled();

              if (v346)
              {
                v347 = v2[4];
                v348 = _NRCopyLogObjectForNRUUID();
                v349 = [v2 copyDescription];
                v591 = *(v2 + v16[534]);
                v608 = *(v2 + 327);
                v577 = *(v2 + v17[533]);
                _NRLogWithArgs();
              }
            }

            v289 = *(v2 + v17[533]);
            memmove(*(v2 + 1463), &(*(v2 + 1463))[v289], (*(v2 + v16[534]) - v289));
            *(v2 + v16[534]) -= *(v2 + v17[533]);
            goto LABEL_413;
          }

          v301 = *(v2 + 2031);
          if (v288)
          {
            *(v2 + 2031) = (v301 | &_mh_execute_header);
            if (gNRPacketLoggingEnabled == 1)
            {
              v302 = v2[4];
              v303 = _NRCopyLogObjectForNRUUID();
              v304 = _NRLogIsLevelEnabled();

              if (v304)
              {
                goto LABEL_435;
              }
            }
          }

          else
          {
            *(v2 + 2031) = (v301 | 0x200000000);
            if (gNRPacketLoggingEnabled == 1)
            {
              v305 = v2[4];
              v306 = _NRCopyLogObjectForNRUUID();
              v307 = _NRLogIsLevelEnabled();

              if (v307)
              {
LABEL_435:
                v308 = v2[4];
                v309 = _NRCopyLogObjectForNRUUID();
                v310 = [v2 copyDescription];
                v587 = *(v2 + v16[534]);
                v606 = *(v2 + 327);
                v576 = *(v2 + v17[533]);
                _NRLogWithArgs();
              }
            }
          }
        }

        *(v2 + 2031) = (*(v2 + 2031) | 0x800000000);
        if (gNRPacketLoggingEnabled == 1)
        {
          v314 = v2[4];
          v315 = _NRCopyLogObjectForNRUUID();
          v316 = _NRLogIsLevelEnabled();

          if (v316)
          {
            v317 = v2[4];
            v318 = _NRCopyLogObjectForNRUUID();
            v588 = [v2 copyDescription];
            _NRLogWithArgs();
          }
        }

        if (gNRPacketLoggingEnabled == 1)
        {
          v319 = +[NSDate date];
          v320 = *(v2 + 1855);
          *(v2 + 1855) = v319;
        }

        v290 = *(v2 + v10[527]);
        os_channel_advance_slot();
        v291 = *(v2 + 1207);
        os_channel_sync();
        ++*(v2 + 1599);
        if (gNRPacketLoggingEnabled == 1)
        {
          v321 = v2[4];
          v322 = _NRCopyLogObjectForNRUUID();
          v323 = _NRLogIsLevelEnabled();

          if (v323)
          {
            v324 = v2[4];
            v325 = _NRCopyLogObjectForNRUUID();
            v623 = [v2 copyDescription];
            _NRLogWithArgs();
          }
        }
      }

      if (v644)
      {
        if (*(v2 + 775))
        {
          *(v2 + 2031) = (*(v2 + 2031) | 0x1000000000);
          if (gNRPacketLoggingEnabled == 1)
          {
            v326 = v2[4];
            v327 = _NRCopyLogObjectForNRUUID();
            v328 = _NRLogIsLevelEnabled();

            if (v328)
            {
              v329 = v2[4];
              v330 = _NRCopyLogObjectForNRUUID();
              v589 = [v2 copyDescription];
              _NRLogWithArgs();
            }
          }

          if (gNRPacketLoggingEnabled == 1)
          {
            v331 = +[NSDate date];
            v332 = *(v2 + 1815);
            *(v2 + 1815) = v331;
          }

          v292 = *(v2 + 775);
          os_channel_advance_slot();
          v293 = *(v2 + 759);
          os_channel_sync();
          ++*(v2 + 855);
          if (gNRPacketLoggingEnabled == 1)
          {
            v333 = v2[4];
            v334 = _NRCopyLogObjectForNRUUID();
            v335 = _NRLogIsLevelEnabled();

            if (v335)
            {
LABEL_445:
              v336 = v2[4];
              v337 = _NRCopyLogObjectForNRUUID();
              v338 = [v2 copyDescription];
              _NRLogWithArgs();
            }
          }
        }

        else
        {
          v311 = v2[4];
          v312 = _NRCopyLogObjectForNRUUID();
          v313 = _NRLogIsLevelEnabled();

          if (v313)
          {
            goto LABEL_445;
          }
        }
      }

      if (*(v2 + 2031) && *(v2 + 2039))
      {
        *(v2 + 300) %= *(v2 + 299);
        v294 = *(v2 + 2039);
        v295 = (v294 + 8 * *(v2 + 300));
        if ((v295 + 1) <= v294 + 8 * *(v2 + 299))
        {
          if ((v295 & 7) == 0)
          {
            *v295 = *(v2 + 2031);
            ++*(v2 + 300);
            *(v2 + 2031) = 0;
          }
        }

        else
        {
          v296 = v2[4];
          v297 = _NRCopyLogObjectForNRUUID();
          v298 = _NRLogIsLevelEnabled();

          if (v298)
          {
            v299 = v2[4];
            v300 = _NRCopyLogObjectForNRUUID();
            v605 = [v2 copyDescription];
            v622 = *(v2 + 300);
            _NRLogWithArgs();
          }
        }
      }

      v15 = &OBJC_IVAR___BTPResolver__sdRefResolve;
      *(v2 + 266) = v651 & 1;
      if (v644 == 0)
      {
        if (gNRPacketLoggingEnabled != 1)
        {
          goto LABEL_466;
        }

        v393 = v2[4];
        v394 = _NRCopyLogObjectForNRUUID();
        v395 = _NRLogIsLevelEnabled();

        if (!v395)
        {
          goto LABEL_466;
        }

        v396 = v2[4];
        StringFromNRTLVType = _NRCopyLogObjectForNRUUID();
        IOVecStringWithContents = [v2 copyDescription];
LABEL_5:
        _NRLogWithArgs();
LABEL_464:

        goto LABEL_465;
      }

      continue;
    }

    break;
  }

  v10 = &OBJC_IVAR___BTPResolver__sdRefResolve;
  v170 = &OBJC_IVAR___BTPResolver__sdRefResolve;
  if (v643 > v642)
  {
    if (gNRPacketLoggingEnabled == 1)
    {
      v248 = v169;
      v249 = v2[4];
      v250 = _NRCopyLogObjectForNRUUID();
      v251 = _NRLogIsLevelEnabled();

      v169 = v248;
      v170 = &OBJC_IVAR___BTPResolver__sdRefResolve;
      if (v251)
      {
        v252 = v2[4];
        v253 = _NRCopyLogObjectForNRUUID();
        v254 = [v2 copyDescription];
        v583 = *(v2 + 383);
        v602 = *(v2 + 379);
        _NRLogWithArgs();

        v169 = v248;
        v170 = &OBJC_IVAR___BTPResolver__sdRefResolve;
      }
    }

    *(v2 + 383) += DWORD2(v675);
    v18 = v656;
  }

  if (v645 > 99)
  {
    if (v645 <= 102)
    {
      if (v645 == 100)
      {
        v171 = &OBJC_IVAR___NRLinkBluetooth__recvKnownIPv6Hdr_ESP;
      }

      else if (v645 == 101)
      {
        v171 = &OBJC_IVAR___NRLinkBluetooth__recvKnownIPv6Hdr_ESP_ECT0;
      }

      else
      {
        v171 = &OBJC_IVAR___NRLinkBluetooth__recvKnownIPv6Hdr_TCP;
      }

LABEL_303:
      ++*(v2 + *v171);
      v203 = v169;
      if (*(v2 + 311))
      {
        *v659 = 503316480;
        v204 = *(v2 + 311);
      }

      v205 = nrTLVToPacket();
      if (v205)
      {
        v206 = v205;
        *(v2 + v654) = (*(v2 + v654) | 0x8000000);
        WORD1(v658) = *(v2 + 311) + v205;
        if (gNRPacketLoggingEnabled == 1)
        {
          getESPSequenceNumberFromPacket();
          v187 = v203;
          if (gNRPacketLoggingEnabled)
          {
            getESPSPIFromPacket();
            if (gNRPacketLoggingEnabled)
            {
              v255 = *(v655 + 4);
              v256 = _NRCopyLogObjectForNRUUID();
              v257 = _NRLogIsLevelEnabled();

              v2 = v655;
              if (v257)
              {
                v258 = *(v655 + 4);
                v259 = _NRCopyLogObjectForNRUUID();
                v584 = [v2 copyDescription];
                _NRLogWithArgs();
              }

              v10 = &OBJC_IVAR___BTPResolver__sdRefResolve;
            }

            else
            {
              v2 = v655;
            }

            v18 = v656;
          }
        }

        else
        {
          v187 = v203;
        }

        v207 = *(v2 + 775);
        packet = os_channel_slot_get_packet();
        if (v651)
        {
          memset(v674, 0, sizeof(v674));
          v673 = 1;
          if (packet)
          {
            os_packet_set_flow_uuid();
            *(v2 + v654) = (*(v2 + v654) | 0x10000000);
            if (gNRPacketLoggingEnabled == 1)
            {
              v260 = v2[4];
              v261 = _NRCopyLogObjectForNRUUID();
              v262 = _NRLogIsLevelEnabled();

              if (v262)
              {
                v263 = v2[4];
                v264 = _NRCopyLogObjectForNRUUID();
                v585 = [v2 copyDescription];
                _NRLogWithArgs();
              }
            }
          }

          ESPSequenceNumberFromPacket = getESPSequenceNumberFromPacket();
          ESPSPIFromPacket = getESPSPIFromPacket();
          if (qword_100229268 != -1)
          {
            dispatch_once(&qword_100229268, &stru_1001FC3A0);
          }

          v211 = qword_100229260;
          v668 = _NSConcreteStackBlock;
          v669 = 3221225472;
          v670 = sub_1000922D0;
          v671 = &unk_1001FCDD8;
          v672 = __PAIR64__(ESPSequenceNumberFromPacket, ESPSPIFromPacket);
          dispatch_async(v211, &v668);

          v10 = &OBJC_IVAR___BTPResolver__sdRefResolve;
          v18 = v656;
        }

        else if (packet)
        {
          os_packet_clear_flow_uuid();
        }

        v219 = *(v2 + 775);
        os_channel_set_slot_properties();
        LODWORD(v651) = 0;
        ++*(v2 + 871);
        *(v2 + 887) += v206;
        v638 += v206;
        ++v639;
        goto LABEL_320;
      }

      v212 = v2[4];
      v213 = _NRCopyLogObjectForNRUUID();
      v214 = _NRLogIsLevelEnabled();

      if (v214)
      {
        v215 = v2[4];
        v216 = _NRCopyLogObjectForNRUUID();
        v217 = [v2 copyDescription];
        v218 = createStringFromNRTLVType();
        _NRLogWithArgs();

        v18 = v656;
      }

      v187 = v644;
      v170 = &OBJC_IVAR___BTPResolver__sdRefResolve;
LABEL_321:
      *(v2 + v654) = (*(v2 + v654) | 0x40000000);
      if (*(v2 + 2031) && *(v2 + v170[530]))
      {
        *(v2 + 300) %= *(v2 + 299);
        v220 = *(v2 + v170[530]);
        v221 = (v220 + 8 * *(v2 + 300));
        if ((v221 + 1) <= v220 + 8 * *(v2 + 299))
        {
          if ((v221 & 7) == 0)
          {
            *v221 = *(v2 + 2031);
            ++*(v2 + 300);
            *(v2 + 2031) = 0;
          }
        }

        else
        {
          v222 = v2[4];
          v223 = _NRCopyLogObjectForNRUUID();
          v224 = _NRLogIsLevelEnabled();

          if (v224)
          {
            v225 = v2[4];
            v226 = _NRCopyLogObjectForNRUUID();
            v601 = [v2 copyDescription];
            v617 = *(v2 + 300);
            _NRLogWithArgs();
          }
        }
      }

      *&v644 = v187;
      v17 = &OBJC_IVAR___BTPResolver__sdRefResolve;
      goto LABEL_16;
    }

    switch(v645)
    {
      case 'g':
        v171 = &OBJC_IVAR___NRLinkBluetooth__recvKnownIPv6Hdr_TCP_ECT0;
        goto LABEL_303;
      case 'h':
        v171 = &OBJC_IVAR___NRLinkBluetooth__recvKnownIPv6Hdr_ESP_ClassC;
        goto LABEL_303;
      case 'i':
        v171 = &OBJC_IVAR___NRLinkBluetooth__recvKnownIPv6Hdr_ESP_ClassC_ECT0;
        goto LABEL_303;
    }

LABEL_280:
    v187 = v644;
    goto LABEL_321;
  }

  if (v645 <= 2)
  {
    if (v645 == 1)
    {
      v188 = v2[4];
      v189 = _NRCopyLogObjectForNRUUID();
      v190 = _NRLogIsLevelEnabled();

      if (v190)
      {
        v191 = v2[4];
        v192 = _NRCopyLogObjectForNRUUID();
        v582 = [v2 copyDescription];
        _NRLogWithArgs();
      }

      v187 = v644;
LABEL_320:
      v170 = &OBJC_IVAR___BTPResolver__sdRefResolve;
      goto LABEL_321;
    }

    v171 = &OBJC_IVAR___NRLinkBluetooth__recvUncompressedIP;
    if (v645 == 2)
    {
      goto LABEL_303;
    }

    goto LABEL_280;
  }

  if (v645 == 3)
  {
    v171 = &OBJC_IVAR___NRLinkBluetooth__recvEncapsulated6LoWPAN;
    goto LABEL_303;
  }

  if (v645 == 4)
  {
    v193 = v652;
    if (!v652)
    {
      v228 = objc_alloc_init(NSData);
LABEL_331:
      v229 = v654;
      v10 = &OBJC_IVAR___BTPResolver__sdRefResolve;
      v170 = &OBJC_IVAR___BTPResolver__sdRefResolve;
      if (v651)
      {
        [v228 bytes];
        [v228 length];
        if (qword_100229268 != -1)
        {
          dispatch_once(&qword_100229268, &stru_1001FC3A0);
        }

        v230 = qword_100229260;
        v668 = _NSConcreteStackBlock;
        v669 = 3221225472;
        v670 = sub_1000922D0;
        v671 = &unk_1001FCDD8;
        v672 = 0;
        dispatch_async(v230, &v668);

        v170 = &OBJC_IVAR___BTPResolver__sdRefResolve;
      }

      *(v2 + v229) = (*(v2 + v229) | 0x20000000);
      sub_100094EDC(v2, v228);

      LODWORD(v651) = 0;
      v187 = v644;
      v18 = v656;
      goto LABEL_321;
    }

    v194 = malloc_type_malloc(v649, 0x87367FC4uLL);
    if (!v194)
    {
      v565 = sub_10007CF34();
      v566 = _NRLogIsLevelEnabled();

      v399 = "createNSDataFromTLVIOVec";
      if (v566)
      {
        v567 = sub_10007CF34();
        _NRLogWithArgs();
      }

      goto LABEL_472;
    }

    if (!v161)
    {
      goto LABEL_512;
    }

    v195 = v194;
    v196 = 0;
    v197 = v161;
    v198 = 3;
    v199 = v640;
    while (1)
    {
      v200 = *v199;
      if (!v198)
      {
        goto LABEL_293;
      }

      if (v198 <= v200)
      {
        break;
      }

      v198 -= v200;
LABEL_289:
      v199 += 4;
      if (!--v197)
      {
        goto LABEL_329;
      }
    }

    if (v198 < v200)
    {
LABEL_293:
      v201 = v200 - v198;
      if (v201 >= v193 - v196)
      {
        v202 = v193 - v196;
      }

      else
      {
        v202 = v201;
      }

      memcpy(&v195[v196], (*(v199 - 1) + v198), v202);
      v196 += v202;
      if (v196 >= v193)
      {
LABEL_329:
        if (v196 == v193)
        {
          v227 = [NSData alloc];
          v228 = [v227 initWithBytesNoCopy:v195 length:v649 freeWhenDone:1];
          v16 = &OBJC_IVAR___BTPResolver__sdRefResolve;
          goto LABEL_331;
        }

        v545 = sub_10007CF34();
        v546 = _NRLogIsLevelEnabled();

        if (v546)
        {
          v547 = sub_10007CF34();
          v613 = createIOVecString();
          _NRLogWithArgs();
        }

        _os_log_pack_size();
        __chkstk_darwin();
        v548 = *__error();
        v549 = _os_log_pack_fill();
        v459 = createIOVecString();
        v460 = v549;
        v461 = v196;
        v462 = v193;
        v463 = 3;
LABEL_521:
        sub_100050120(v460, "nrWriteIOVecToBuffer", v461, v462, v463, v459);

        goto LABEL_489;
      }
    }

    v198 = 0;
    goto LABEL_289;
  }

  if (v645 != 5)
  {
    goto LABEL_280;
  }

  if (v161 == 1 && (DWORD2(v675) - 5) <= 0xFFFA)
  {
    sub_100096BD0(v2, (v675 + 3), (WORD4(v675) - 5));
    v187 = v644;
    goto LABEL_321;
  }

  v231 = v652;
  if (!v652)
  {
    v553 = sub_10007CF34();
    v554 = _NRLogIsLevelEnabled();

    if (v554)
    {
      v555 = sub_10007CF34();
      _NRLogWithArgs();
    }

    goto LABEL_487;
  }

  v232 = malloc_type_malloc(v649, 0x2EC54791uLL);
  if (!v232)
  {
    v568 = sub_10007CF34();
    v569 = _NRLogIsLevelEnabled();

    if (v569)
    {
      v570 = sub_10007CF34();
      _NRLogWithArgs();
    }

    goto LABEL_487;
  }

  if (!v161)
  {
LABEL_512:
    v445 = sub_10007CF34();
    v446 = _NRLogIsLevelEnabled();

    if (v446)
    {
      v447 = sub_10007CF34();
      _NRLogWithArgs();
    }

    _os_log_pack_size();
    __chkstk_darwin();
    v448 = *__error();
    v410 = _os_log_pack_fill();
    *v410 = 136446210;
    v411 = "nrWriteIOVecToBuffer";
    goto LABEL_488;
  }

  v233 = v232;
  v234 = v161;
  v650 = v636;
  v235 = 0;
  v236 = v231;
  v237 = v234;
  v238 = 3;
  v239 = v640;
  while (1)
  {
    v240 = *v239;
    if (!v238)
    {
      break;
    }

    if (v238 <= v240)
    {
      if (v238 >= v240)
      {
        v238 = 0;
        goto LABEL_344;
      }

      break;
    }

    v238 -= v240;
LABEL_344:
    v239 += 4;
    if (!--v237)
    {
      goto LABEL_355;
    }
  }

  v241 = v240 - v238;
  if (v241 >= v231 - v235)
  {
    v242 = v231 - v235;
  }

  else
  {
    v242 = v241;
  }

  memcpy(&v233[v235], (*(v239 - 1) + v238), v242);
  v235 += v242;
  if (v235 < v231)
  {
    v238 = 0;
    v18 = v656;
    goto LABEL_344;
  }

  v18 = v656;
LABEL_355:
  if (v235 == v231)
  {
    sub_100096BD0(v2, v233, v231);
    free(v233);
    v187 = v644;
    v10 = &OBJC_IVAR___BTPResolver__sdRefResolve;
    goto LABEL_320;
  }

  v556 = sub_10007CF34();
  v557 = _NRLogIsLevelEnabled();

  if (v557)
  {
    v558 = sub_10007CF34();
    v614 = createIOVecString();
    _NRLogWithArgs();
  }

  _os_log_pack_size();
  __chkstk_darwin();
  v559 = *__error();
  v560 = _os_log_pack_fill();
  v561 = createIOVecString();
  sub_100050120(v560, "nrWriteIOVecToBuffer", v235, v236, 3, v561);

LABEL_567:
  sub_10007CF34();
  _NRLogAbortWithPack();
LABEL_568:
  v532 = sub_10007CF34();
  v533 = _NRLogIsLevelEnabled();

  if (v533)
  {
    v534 = sub_10007CF34();
    _NRLogWithArgs();
  }

  _os_log_pack_size();
  __chkstk_darwin();
  v535 = *__error();
  v410 = _os_log_pack_fill();
  *v410 = 136446210;
  v411 = "nrReadTLVLenHBOFromIOVec";
LABEL_488:
  *(v410 + 4) = v411;
LABEL_489:
  sub_10007CF34();
  _NRLogAbortWithPack();
LABEL_490:
  v649 = v42;
  v652 = v41;
LABEL_491:
  StringFromNRTLVType = createIOVecStringWithContents();
  sub_100080EB4(v2, @"LtN not enough ioVecs %@ for %u", v412, v413, v414, v415, v416, v417, StringFromNRTLVType);
LABEL_465:

LABEL_466:
}

void sub_1000A7C10(void *a1, uint64_t a2)
{
  v2 = a1;
  v3 = v2;
  if (*(v2 + 16) == 255)
  {
    v7 = v2[4];
    v8 = _NRCopyLogObjectForNRUUID();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (!IsLevelEnabled)
    {
      goto LABEL_272;
    }

    goto LABEL_13;
  }

  if (!*(v2 + 1199))
  {
    sub_10007D9C4(v2, a2);
    goto LABEL_272;
  }

  if (!*(v2 + 1223))
  {
    if (*(v2 + 293))
    {
      goto LABEL_272;
    }

    v10 = v2[4];
    v11 = _NRCopyLogObjectForNRUUID();
    v12 = _NRLogIsLevelEnabled();

    if (!v12)
    {
      goto LABEL_272;
    }

LABEL_13:
    v13 = *(v3 + 32);
    v14 = _NRCopyLogObjectForNRUUID();
    v15 = [v3 copyDescription];
    goto LABEL_14;
  }

  v352 = *(v2 + 599);
  if (v352 == a2)
  {
    v348 = sub_100080F38;
    v343 = sub_1000813E8;
    if (gNRPacketLoggingEnabled != 1 || (v263 = v2[4], v264 = _NRCopyLogObjectForNRUUID(), v265 = _NRLogIsLevelEnabled(), v264, v348 = sub_100080F38, v343 = sub_1000813E8, !v265))
    {
      v16 = &OBJC_IVAR___NRLinkBluetooth__nexusVOInputRing;
      v17 = &OBJC_IVAR___NRLinkBluetooth__packetsFromNexusVO;
      v18 = &OBJC_IVAR___NRLinkBluetooth__bytesFromNexusVO;
      v19 = &OBJC_IVAR___NRLinkBluetooth__syncNexusVOInput;
      goto LABEL_19;
    }

    v266 = *(v3 + 32);
    v267 = _NRCopyLogObjectForNRUUID();
    v268 = [v3 copyDescription];
    _NRLogWithArgs();
    v16 = &OBJC_IVAR___NRLinkBluetooth__nexusVOInputRing;
    v17 = &OBJC_IVAR___NRLinkBluetooth__packetsFromNexusVO;
    v18 = &OBJC_IVAR___NRLinkBluetooth__bytesFromNexusVO;
    v19 = &OBJC_IVAR___NRLinkBluetooth__syncNexusVOInput;
    v348 = sub_100080F38;
    v269 = sub_1000813E8;
  }

  else
  {
    if (*(v2 + 759) != a2)
    {
      v4 = v2[4];
      v5 = _NRCopyLogObjectForNRUUID();
      v6 = _NRLogIsLevelEnabled();

      if (!v6)
      {
        goto LABEL_272;
      }

      goto LABEL_13;
    }

    v348 = sub_100081064;
    v343 = sub_100081514;
    if (gNRPacketLoggingEnabled != 1 || (v280 = v2[4], v281 = _NRCopyLogObjectForNRUUID(), v282 = _NRLogIsLevelEnabled(), v281, v348 = sub_100081064, v343 = sub_100081514, !v282))
    {
      v16 = &OBJC_IVAR___NRLinkBluetooth__nexusVIInputRing;
      v17 = &OBJC_IVAR___NRLinkBluetooth__packetsFromNexusVI;
      v18 = &OBJC_IVAR___NRLinkBluetooth__bytesFromNexusVI;
      v19 = &OBJC_IVAR___NRLinkBluetooth__syncNexusVIInput;
      goto LABEL_19;
    }

    v283 = *(v3 + 32);
    v267 = _NRCopyLogObjectForNRUUID();
    v268 = [v3 copyDescription];
    _NRLogWithArgs();
    v16 = &OBJC_IVAR___NRLinkBluetooth__nexusVIInputRing;
    v17 = &OBJC_IVAR___NRLinkBluetooth__packetsFromNexusVI;
    v18 = &OBJC_IVAR___NRLinkBluetooth__bytesFromNexusVI;
    v19 = &OBJC_IVAR___NRLinkBluetooth__syncNexusVIInput;
    v348 = sub_100081064;
    v269 = sub_100081514;
  }

  v343 = v269;

LABEL_19:
  v344 = 0;
  v341 = *v18;
  v20 = *v17;
  v21 = *(v3 + *v16);
  v338 = *(v3 + v20);
  v339 = *(v3 + v341);
  v340 = v20;
  v342 = *v19;
  v22 = &OBJC_IVAR___BTPResolver__sdRefResolve;
  v355 = v21;
LABEL_22:
  v23 = 0;
  v349 = 0;
  v24 = 0;
  object_address = 0;
  v25 = 0;
  v354 = 0;
  v26 = 0;
  v377 = 0;
  v378 = 0;
  v357 = *(v3 + 1039);
  while (2)
  {
    v27 = v357;
    while (1)
    {
      *(v3 + 2079) = 2;
      v363 = 0u;
      v364 = 0u;
      v361 = 0u;
      v362 = 0u;
      v358 = v23;
      v360 = v26;
      if (!v21)
      {
        v28 = 0;
        if (v23)
        {
          goto LABEL_42;
        }

        goto LABEL_33;
      }

      v28 = v21;
      next_slot = os_channel_get_next_slot();
      if (!next_slot)
      {
        v23 = v358;
        v26 = v360;
        if (v358)
        {
          goto LABEL_42;
        }

        goto LABEL_33;
      }

      v23 = v358;
      if (v352 != a2)
      {
        v26 = v360;
LABEL_41:
        if (v358)
        {
          goto LABEL_42;
        }

        goto LABEL_33;
      }

      v26 = v360;
      if ((*(v3 + 265) & 1) == 0)
      {
        goto LABEL_41;
      }

      if (v362)
      {
        v30 = 0;
        if (WORD1(v361))
        {
          v31 = next_slot;
          if (isPacketValidIPv6())
          {
            v30 = getDSCPFromPacket() == 46 && WORD1(v361) < 0x2A4u;
          }

          else
          {
            v30 = 0;
          }

          next_slot = v31;
          v23 = v358;
          v26 = v360;
        }
      }

      else
      {
        v30 = 0;
      }

      if (gNRPacketLoggingEnabled == 1)
      {
        v56 = next_slot;
        getESPSequenceNumberFromPacket();
        if (gNRPacketLoggingEnabled)
        {
          getESPSPIFromPacket();
        }

        next_slot = v56;
        v23 = v358;
        v26 = v360;
        if (v30)
        {
LABEL_105:
          v351 = next_slot;
          v74 = *(v3 + 1143);
          v75 = os_channel_get_next_slot();
          v357 = v27;
          if (!v75)
          {
            v22 = &OBJC_IVAR___BTPResolver__sdRefResolve;
            if (*(v3 + 264) && *(v3 + 1159))
            {
              *(v3 + 264) = 0;
              ++*(v3 + 1175);
              if (gNRPacketLoggingEnabled == 1)
              {
                v139 = *(v3 + 32);
                v140 = _NRCopyLogObjectForNRUUID();
                v141 = _NRLogIsLevelEnabled();

                if (v141)
                {
                  v142 = *(v3 + 32);
                  v143 = _NRCopyLogObjectForNRUUID();
                  v327 = [v3 copyDescription];
                  _NRLogWithArgs();
                }
              }

              dispatch_resume(*(v3 + 1159));
              v22 = &OBJC_IVAR___BTPResolver__sdRefResolve;
            }

            v348(v3);
            *(v3 + 2079) |= 4uLL;
            LODWORD(v60) = 25;
            goto LABEL_131;
          }

          v76 = v75;
          if ((*(v3 + 264) & 1) == 0 && *(v3 + 1159))
          {
            v77 = v75;
            v78 = v25;
            *(v3 + 264) = 1;
            ++*(v3 + 1175);
            if (gNRPacketLoggingEnabled == 1)
            {
              v134 = *(v3 + 32);
              v135 = _NRCopyLogObjectForNRUUID();
              v136 = _NRLogIsLevelEnabled();

              v78 = v25;
              if (v136)
              {
                v137 = *(v3 + 32);
                v138 = _NRCopyLogObjectForNRUUID();
                v326 = [v3 copyDescription];
                _NRLogWithArgs();

                v78 = v25;
              }
            }

            dispatch_suspend(*(v3 + 1159));
            v25 = v78;
            v76 = v77;
          }

          v79 = *(v3 + 1143);
          v80 = v76;
          os_channel_slot_get_packet();
          os_packet_get_next_buflet();
          os_buflet_get_object_address();
          if (os_buflet_get_data_limit() < 0x10000)
          {
            v81 = *(v3 + 311);
            *(v3 + 1543) += nrPacketToTLV();
            *(v3 + v341) += WORD1(v361);
            ++*(v3 + v340);
            *(v3 + 2079) |= 0x10uLL;
            if (gNRPacketLoggingEnabled == 1)
            {
              v128 = *(v3 + 32);
              v129 = _NRCopyLogObjectForNRUUID();
              v130 = _NRLogIsLevelEnabled();

              if (v130)
              {
                v131 = *(v3 + 32);
                v132 = _NRCopyLogObjectForNRUUID();
                v133 = [v3 copyDescription];
                _NRLogWithArgs();
              }
            }

            os_buflet_set_data_length();
            v357 = v27 + 1;
            v378 = v27 + 1;
            os_packet_set_flow_uuid();
            v82 = os_packet_finalize();
            if (v82)
            {
              v274 = v82;
              v306 = sub_10007CF34();
              v307 = _NRLogIsLevelEnabled();

              if (v307)
              {
                v308 = sub_10007CF34();
                _NRLogWithArgs();
              }

              goto LABEL_310;
            }

            LODWORD(v60) = 24;
            v349 = v80;
            v354 = v351;
            v22 = &OBJC_IVAR___BTPResolver__sdRefResolve;
LABEL_131:
            v61 = &OBJC_IVAR___BTPResolver__sdRefResolve;
            v23 = v358;
            v26 = v360;
            v21 = v28;
            goto LABEL_116;
          }

          v260 = sub_10007CF34();
          v261 = _NRLogIsLevelEnabled();

          if (v261)
          {
            v262 = sub_10007CF34();
            _NRLogWithArgs();
          }

          while (1)
          {
LABEL_290:
            _os_log_pack_size();
            __chkstk_darwin();
            v246 = *__error();
            v247 = _os_log_pack_fill();
            *v247 = 136446210;
            *(v247 + 4) = "NRLinkNexusToLinkLoopUrgent";
LABEL_291:
            sub_10007CF34();
            _NRLogAbortWithPack();
LABEL_292:
            v248 = sub_10007CF34();
            v249 = _NRLogIsLevelEnabled();

            if (v249)
            {
              v250 = sub_10007CF34();
              _NRLogWithArgs();
            }
          }
        }
      }

      else if (v30)
      {
        goto LABEL_105;
      }

      v22 = &OBJC_IVAR___BTPResolver__sdRefResolve;
      if (v23)
      {
LABEL_42:
        *(v3 + 2079) |= 0x40uLL;
        if (!v26)
        {
          goto LABEL_177;
        }

        goto LABEL_43;
      }

LABEL_33:
      v32 = *(v3 + 1223);
      v33 = os_channel_get_next_slot();
      if (!v33)
      {
        LODWORD(v358) = 0;
LABEL_177:
        v21 = v28;
        if (*(v3 + 268) == 1 && *(v3 + 1239))
        {
          *(v3 + 268) = 0;
          ++*(v3 + 1255);
          if (gNRPacketLoggingEnabled == 1)
          {
            v223 = *(v3 + 32);
            v224 = _NRCopyLogObjectForNRUUID();
            v225 = _NRLogIsLevelEnabled();

            if (v225)
            {
              v226 = *(v3 + 32);
              v227 = _NRCopyLogObjectForNRUUID();
              v334 = [v3 copyDescription];
              _NRLogWithArgs();
            }
          }

          dispatch_resume(*(v3 + 1239));
        }

        v357 = v27;
        v348(v3);
        *(v3 + 2079) |= 0x80uLL;
        if (gNRPacketLoggingEnabled == 1)
        {
          v165 = *(v3 + 32);
          v166 = _NRCopyLogObjectForNRUUID();
          v167 = _NRLogIsLevelEnabled();

          v61 = &OBJC_IVAR___BTPResolver__sdRefResolve;
          if (v167)
          {
            v168 = *(v3 + 32);
            v169 = _NRCopyLogObjectForNRUUID();
            v329 = [v3 copyDescription];
            _NRLogWithArgs();
          }

          v26 = 0;
        }

        else
        {
          v26 = 0;
          v61 = &OBJC_IVAR___BTPResolver__sdRefResolve;
        }

        LODWORD(v23) = v358;
        goto LABEL_184;
      }

      v34 = v33;
      *(v3 + 2079) |= 0x20uLL;
      v35 = *(v3 + 1223);
      v36 = v34;
      os_channel_slot_get_packet();
      os_packet_get_next_buflet();
      object_address = os_buflet_get_object_address();
      data_limit = os_buflet_get_data_limit();
      if (data_limit >= 0x10000)
      {
        v231 = sub_10007CF34();
        v232 = _NRLogIsLevelEnabled();

        if (v232)
        {
          v233 = sub_10007CF34();
          _NRLogWithArgs();
        }

        goto LABEL_290;
      }

      v360 = v36;
      if (v25 != v36)
      {
        ++v27;
      }

      v24 = data_limit;
      v23 = v358;
LABEL_43:
      if ((*(v3 + 268) & 1) == 0 && *(v3 + 1239))
      {
        *(v3 + 268) = 1;
        ++*(v3 + 1255);
        if (gNRPacketLoggingEnabled == 1)
        {
          v51 = *(v3 + 32);
          v52 = _NRCopyLogObjectForNRUUID();
          v53 = _NRLogIsLevelEnabled();

          if (v53)
          {
            v54 = *(v3 + 32);
            v55 = _NRCopyLogObjectForNRUUID();
            v323 = [v3 copyDescription];
            _NRLogWithArgs();
          }
        }

        dispatch_suspend(*(v3 + 1239));
        v22 = &OBJC_IVAR___BTPResolver__sdRefResolve;
        v23 = v358;
      }

      v357 = v27;
      v38 = *(v3 + 351);
      v39 = *(v3 + v22[411]);
      if (v38 <= v39)
      {
        break;
      }

      v40 = v38 - v39;
      if (v40 >= (v24 - v23))
      {
        v41 = v24 - v23;
      }

      else
      {
        v41 = v40;
      }

      v42 = v23;
      memcpy(object_address, (*(v3 + 1279) + v39), v41);
      *(v3 + v22[411]) += v41;
      *(v3 + 1559) += v41;
      ++*(v3 + 347);
      *(v3 + 2079) |= 0x100uLL;
      if (gNRPacketLoggingEnabled == 1)
      {
        v45 = *(v3 + 32);
        v46 = _NRCopyLogObjectForNRUUID();
        v47 = _NRLogIsLevelEnabled();

        if (v47)
        {
          v48 = *(v3 + 32);
          v49 = _NRCopyLogObjectForNRUUID();
          v50 = [v3 copyDescription];
          v309 = *(v3 + 351);
          v316 = *(v3 + 355);
          _NRLogWithArgs();
        }
      }

      v43 = v41 + v42;
      v21 = v355;
      if (v43 < v24)
      {
        v23 = v43;
        v26 = v360;
        v25 = v360;
        v22 = &OBJC_IVAR___BTPResolver__sdRefResolve;
        v359 = v23;
        if (v355)
        {
          goto LABEL_75;
        }

LABEL_231:
        if (*(v3 + 16) == 8)
        {
          v160 = *(v3 + 32);
          v161 = _NRCopyLogObjectForNRUUID();
          v162 = _NRLogIsLevelEnabled();

          if (v162)
          {
            v163 = *(v3 + 32);
            v164 = _NRCopyLogObjectForNRUUID();
            v319 = [v3 copyDescription];
            _NRLogWithArgs();
          }

          v61 = &OBJC_IVAR___BTPResolver__sdRefResolve;
          LODWORD(v23) = v359;
          v26 = v360;
        }

        else
        {
          *(v3 + 2079) |= 0x400uLL;
          v61 = &OBJC_IVAR___BTPResolver__sdRefResolve;
        }

LABEL_184:
        if (v25)
        {
          if (v26 != v25)
          {
            goto LABEL_292;
          }

          if (v23)
          {
            v90 = v23;
          }

          else
          {
            v90 = v24;
          }

          if (v23)
          {
            v144 = v24 == v23;
          }

          else
          {
            v144 = 1;
          }

          v145 = 0x40000;
          if (!v144)
          {
            v145 = 0x20000;
          }

          *(v3 + 2079) |= v145;
          if (gNRPacketLoggingEnabled == 1)
          {
            v183 = *(v3 + 32);
            v184 = _NRCopyLogObjectForNRUUID();
            v185 = _NRLogIsLevelEnabled();

            if (v185)
            {
              v186 = *(v3 + 32);
              v187 = _NRCopyLogObjectForNRUUID();
              v313 = [v3 copyDescription];
              _NRLogWithArgs();
            }
          }

          v378 = v357;
          os_buflet_set_data_length();
          os_packet_set_flow_uuid();
          v146 = os_packet_finalize();
          if (v146)
          {
            v284 = v146;
            v300 = sub_10007CF34();
            v301 = _NRLogIsLevelEnabled();

            if (v301)
            {
              v302 = sub_10007CF34();
              _NRLogWithArgs();
            }

            goto LABEL_316;
          }

          v147 = *(v3 + 351);
          v148 = *(v3 + 355);
          if (v147 <= v148)
          {
            if (v147 != v148)
            {
              v257 = sub_10007CF34();
              v258 = _NRLogIsLevelEnabled();

              if (v258)
              {
                v259 = sub_10007CF34();
                _NRLogWithArgs();
              }

              goto LABEL_290;
            }

            if (gNRPacketLoggingEnabled == 1)
            {
              if (v147)
              {
                *(v3 + 2079) |= 0x100000uLL;
                v217 = *(v3 + 32);
                v218 = _NRCopyLogObjectForNRUUID();
                v219 = _NRLogIsLevelEnabled();

                if (v219)
                {
                  v220 = *(v3 + 32);
                  v221 = _NRCopyLogObjectForNRUUID();
                  v222 = [v3 copyDescription];
                  v322 = *(v3 + 351);
                  v333 = *(v3 + 355);
                  _NRLogWithArgs();
                }
              }
            }

            *(v3 + 351) = 0;
          }

          else
          {
            *(v3 + 2079) |= 0x80000uLL;
            if (gNRPacketLoggingEnabled == 1)
            {
              v211 = *(v3 + 32);
              v212 = _NRCopyLogObjectForNRUUID();
              v213 = _NRLogIsLevelEnabled();

              if (v213)
              {
                v214 = *(v3 + 32);
                v215 = _NRCopyLogObjectForNRUUID();
                v216 = [v3 copyDescription];
                v321 = *(v3 + 351);
                v332 = *(v3 + 355);
                _NRLogWithArgs();
              }
            }

            memmove(*(v3 + 1279), (*(v3 + 1279) + *(v3 + 355)), (*(v3 + 351) - *(v3 + 355)));
            *(v3 + 351) -= *(v3 + 355);
          }

          *(v3 + 355) = 0;
          *(v3 + 2079) |= 0x200000uLL;
          if (gNRPacketLoggingEnabled == 1)
          {
            v188 = *(v3 + 32);
            v189 = _NRCopyLogObjectForNRUUID();
            v190 = _NRLogIsLevelEnabled();

            if (v190)
            {
              v191 = *(v3 + 32);
              v192 = _NRCopyLogObjectForNRUUID();
              v314 = [v3 copyDescription];
              _NRLogWithArgs();
            }
          }

          if (gNRPacketLoggingEnabled == 1)
          {
            v193 = +[NSDate date];
            v194 = *(v3 + 1863);
            *(v3 + 1863) = v193;
          }

          v149 = *(v3 + 1223);
          os_channel_advance_slot();
          v150 = *(v3 + 1207);
          os_channel_sync();
          ++*(v3 + 1607);
          if (gNRPacketLoggingEnabled == 1)
          {
            v195 = *(v3 + 32);
            v196 = _NRCopyLogObjectForNRUUID();
            v197 = _NRLogIsLevelEnabled();

            if (v197)
            {
              v198 = *(v3 + 32);
              v199 = _NRCopyLogObjectForNRUUID();
              v330 = [v3 copyDescription];
              _NRLogWithArgs();
            }
          }
        }

        if (v349)
        {
          *(v3 + 2079) |= 0x800000uLL;
          if (gNRPacketLoggingEnabled == 1)
          {
            v170 = *(v3 + 32);
            v171 = _NRCopyLogObjectForNRUUID();
            v172 = _NRLogIsLevelEnabled();

            if (v172)
            {
              v173 = *(v3 + 32);
              v174 = _NRCopyLogObjectForNRUUID();
              v312 = [v3 copyDescription];
              _NRLogWithArgs();
            }
          }

          if (gNRPacketLoggingEnabled == 1)
          {
            v175 = +[NSDate date];
            v176 = *(v3 + 1847);
            *(v3 + 1847) = v175;
          }

          v151 = *(v3 + 1143);
          os_channel_advance_slot();
          v152 = *(v3 + 1127);
          os_channel_sync();
          ++*(v3 + 1591);
        }

        if (v354)
        {
          if (v21)
          {
            *(v3 + 2079) |= 0x1000000uLL;
            if (gNRPacketLoggingEnabled == 1)
            {
              v200 = *(v3 + 32);
              v201 = _NRCopyLogObjectForNRUUID();
              v202 = _NRLogIsLevelEnabled();

              if (v202)
              {
                v203 = *(v3 + 32);
                v204 = _NRCopyLogObjectForNRUUID();
                v315 = [v3 copyDescription];
                _NRLogWithArgs();
              }
            }

            if (gNRPacketLoggingEnabled == 1)
            {
              v205 = +[NSDate date];
              v206 = *(v3 + 1807);
              *(v3 + 1807) = v205;
            }

            os_channel_advance_slot();
            os_channel_sync();
            ++*(v3 + v342);
            if (gNRPacketLoggingEnabled == 1)
            {
              v207 = *(v3 + 32);
              v208 = _NRCopyLogObjectForNRUUID();
              v209 = _NRLogIsLevelEnabled();

              if (v209)
              {
                v210 = *(v3 + 32);
                v181 = _NRCopyLogObjectForNRUUID();
                v182 = [v3 copyDescription];
                v320 = *(v3 + v340) - v338;
                v331 = *(v3 + v341) - v339;
                _NRLogWithArgs();
                goto LABEL_253;
              }
            }
          }

          else
          {
            v177 = *(v3 + 32);
            v178 = _NRCopyLogObjectForNRUUID();
            v179 = _NRLogIsLevelEnabled();

            if (v179)
            {
              v180 = *(v3 + 32);
              v181 = _NRCopyLogObjectForNRUUID();
              v182 = [v3 copyDescription];
              _NRLogWithArgs();
LABEL_253:
            }
          }
        }

        *(v3 + 1039) = v357;
        if (*(v3 + 2079) && *(v3 + v61[531]))
        {
          *(v3 + 306) %= *(v3 + 305);
          v153 = *(v3 + v61[531]);
          v154 = (v153 + 8 * *(v3 + 306));
          if ((v154 + 1) <= v153 + 8 * *(v3 + 305))
          {
            if ((v154 & 7) == 0)
            {
              *v154 = *(v3 + 2079);
              ++*(v3 + 306);
              *(v3 + 2079) = 0;
            }
          }

          else
          {
            v155 = *(v3 + 32);
            v156 = _NRCopyLogObjectForNRUUID();
            v157 = _NRLogIsLevelEnabled();

            if (v157)
            {
              v158 = *(v3 + 32);
              v159 = _NRCopyLogObjectForNRUUID();
              v318 = [v3 copyDescription];
              v328 = *(v3 + 306);
              _NRLogWithArgs();
            }
          }
        }

        LODWORD(v60) = 0;
        if (v354)
        {
          v22 = &OBJC_IVAR___BTPResolver__sdRefResolve;
          goto LABEL_21;
        }

        v22 = &OBJC_IVAR___BTPResolver__sdRefResolve;
        if (!v25 && !v349)
        {
          if (v344)
          {
            if (*(v3 + 256) == 1)
            {
              v90 = &OBJC_IVAR___BTPResolver__sdRefResolve;
              if (*(v3 + 783))
              {
                *(v3 + 256) = 0;
                ++*(v3 + 799);
                if (gNRPacketLoggingEnabled == 1)
                {
                  goto LABEL_317;
                }

                goto LABEL_266;
              }
            }

            goto LABEL_267;
          }

          goto LABEL_271;
        }

LABEL_21:
        if (v60)
        {
          goto LABEL_272;
        }

        goto LABEL_22;
      }

      if (v43 != v24)
      {
        v228 = sub_10007CF34();
        v229 = _NRLogIsLevelEnabled();

        if (v229)
        {
          v230 = sub_10007CF34();
          _NRLogWithArgs();
        }

        goto LABEL_290;
      }

      os_buflet_set_data_length();
      v378 = v27;
      os_packet_set_flow_uuid();
      v44 = os_packet_finalize();
      if (v44)
      {
        v274 = v44;
        v275 = sub_10007CF34();
        v276 = _NRLogIsLevelEnabled();

        if (v276)
        {
          v277 = sub_10007CF34();
          _NRLogWithArgs();
        }

LABEL_310:
        _os_log_pack_size();
        __chkstk_darwin();
        v278 = *__error();
        v279 = _os_log_pack_fill();
        *v279 = 136446466;
        *(v279 + 4) = "NRLinkNexusToLinkLoopUrgent";
        *(v279 + 12) = 1024;
        *(v279 + 14) = v274;
        goto LABEL_291;
      }

      v23 = 0;
      *(v3 + 2079) |= 0x200uLL;
      v26 = v360;
      v25 = v360;
      v22 = &OBJC_IVAR___BTPResolver__sdRefResolve;
    }

    v21 = v355;
    v26 = v360;
    v359 = v23;
    if (!v355)
    {
      goto LABEL_231;
    }

LABEL_75:
    v57 = os_channel_get_next_slot();
    if (!v57)
    {
      v343(v3);
      *(v3 + 2079) |= 0x800uLL;
      LODWORD(v60) = 25;
      v344 = 1;
      v61 = &OBJC_IVAR___BTPResolver__sdRefResolve;
      goto LABEL_115;
    }

    v346 = v57;
    v348(v3);
    if (gNRPacketLoggingEnabled == 1)
    {
      getESPSequenceNumberFromPacket();
      if (gNRPacketLoggingEnabled)
      {
        getESPSPIFromPacket();
        if (gNRPacketLoggingEnabled)
        {
          v112 = *(v3 + 32);
          v113 = _NRCopyLogObjectForNRUUID();
          v114 = _NRLogIsLevelEnabled();

          if (v114)
          {
            v115 = *(v3 + 32);
            v116 = _NRCopyLogObjectForNRUUID();
            v117 = [v3 copyDescription];
            _NRLogWithArgs();
          }
        }

        v21 = v355;
      }
    }

    v350 = nrMaxTLVLengthForPacket();
    v375 = 0u;
    v376 = 0u;
    v373 = 0u;
    v374 = 0u;
    v371 = 0u;
    v372 = 0u;
    v369 = 0u;
    v370 = 0u;
    v367 = 0u;
    v368 = 0u;
    v365 = 0u;
    v366 = 0u;
    v363 = 0u;
    v364 = 0u;
    v347 = v24;
    v23 = v359;
    v361 = 0u;
    v362 = 0u;
    if (v24 <= v359)
    {
      v58 = 0;
      v59 = 0;
    }

    else
    {
      *&v361 = &object_address[v359];
      v58 = v24 - v359;
      DWORD2(v361) = v58;
      v59 = 1;
    }

    if (v58 < v350)
    {
      v345 = v25;
      v62 = v59;
      v63 = &v361 + 4 * v59 + 2;
      do
      {
        v64 = *(v3 + 1223);
        if (!os_channel_get_next_slot())
        {
          break;
        }

        v65 = *(v3 + 1223);
        os_channel_slot_get_packet();
        os_packet_get_next_buflet();
        v66 = os_buflet_get_object_address();
        v67 = os_buflet_get_data_limit();
        if (v67 >= 0x10000)
        {
          v240 = sub_10007CF34();
          v241 = _NRLogIsLevelEnabled();

          if (v241)
          {
            v242 = sub_10007CF34();
            _NRLogWithArgs();
          }

          goto LABEL_290;
        }

        *(v63 - 1) = v66;
        if (!v67)
        {
          v243 = sub_10007CF34();
          v244 = _NRLogIsLevelEnabled();

          if (v244)
          {
            v245 = sub_10007CF34();
            _NRLogWithArgs();
          }

          goto LABEL_290;
        }

        *v63 = v67;
        *(v3 + 2079) |= 0x1000uLL;
        if (v62 == 15)
        {
          IOVecString = createIOVecString();
          sub_100080EB4(v3, @"NtL-U not enough ioVecs %@ for %u", v84, v85, v86, v87, v88, v89, IOVecString);

          LODWORD(v60) = 1;
          v21 = v355;
          v22 = &OBJC_IVAR___BTPResolver__sdRefResolve;
          v61 = &OBJC_IVAR___BTPResolver__sdRefResolve;
          v25 = v345;
          v24 = v347;
          goto LABEL_115;
        }

        ++v62;
        v58 += v67;
        v63 += 4;
      }

      while (v58 < v350);
      v21 = v355;
      v25 = v345;
      v23 = v359;
    }

    if (v58 < v350)
    {
      *(v3 + 2079) |= 0x2000uLL;
      v24 = v347;
      if (*(v3 + 268) != 1)
      {
        LODWORD(v60) = 25;
        v22 = &OBJC_IVAR___BTPResolver__sdRefResolve;
        v61 = &OBJC_IVAR___BTPResolver__sdRefResolve;
        v26 = v360;
        goto LABEL_116;
      }

      v61 = &OBJC_IVAR___BTPResolver__sdRefResolve;
      if (!*(v3 + 1239))
      {
        LODWORD(v60) = 25;
        v22 = &OBJC_IVAR___BTPResolver__sdRefResolve;
        v26 = v360;
        goto LABEL_116;
      }

      *(v3 + 268) = 0;
      ++*(v3 + 1255);
      if (gNRPacketLoggingEnabled == 1)
      {
        v123 = *(v3 + 32);
        v124 = _NRCopyLogObjectForNRUUID();
        v125 = _NRLogIsLevelEnabled();

        if (v125)
        {
          v126 = *(v3 + 32);
          v127 = _NRCopyLogObjectForNRUUID();
          v325 = [v3 copyDescription];
          _NRLogWithArgs();
        }
      }

      dispatch_resume(*(v3 + 1239));
      LODWORD(v60) = 25;
      v22 = &OBJC_IVAR___BTPResolver__sdRefResolve;
LABEL_115:
      v23 = v359;
      v26 = v360;
      goto LABEL_116;
    }

    v24 = v347;
    if (!v361)
    {
      v251 = sub_10007CF34();
      v252 = _NRLogIsLevelEnabled();

      if (v252)
      {
        v253 = sub_10007CF34();
        v335 = createIOVecString();
        _NRLogWithArgs();
      }

      _os_log_pack_size();
      __chkstk_darwin();
      v254 = *__error();
      v255 = _os_log_pack_fill();
      v256 = createIOVecString();
      *v255 = 136446466;
      *(v255 + 4) = "NRLinkNexusToLinkLoopUrgent";
      *(v255 + 12) = 2112;
      *(v255 + 14) = v256;
      goto LABEL_291;
    }

    v68 = *(v3 + 311);
    v69 = nrPacketToTLV();
    v70 = v69;
    v71 = *v361;
    if (v71 > 0x65)
    {
      v72 = v359;
      if (*v361 > 0x67u)
      {
        if (v71 == 104)
        {
          v73 = &OBJC_IVAR___NRLinkBluetooth__sentKnownIPv6Hdr_ESP_ClassC;
        }

        else
        {
          if (v71 != 105)
          {
            goto LABEL_136;
          }

          v73 = &OBJC_IVAR___NRLinkBluetooth__sentKnownIPv6Hdr_ESP_ClassC_ECT0;
        }
      }

      else if (v71 == 102)
      {
        v73 = &OBJC_IVAR___NRLinkBluetooth__sentKnownIPv6Hdr_TCP;
      }

      else
      {
        if (v71 != 103)
        {
          goto LABEL_136;
        }

        v73 = &OBJC_IVAR___NRLinkBluetooth__sentKnownIPv6Hdr_TCP_ECT0;
      }

      goto LABEL_135;
    }

    v72 = v359;
    if (*v361 > 0x63u)
    {
      if (v71 == 100)
      {
        v73 = &OBJC_IVAR___NRLinkBluetooth__sentKnownIPv6Hdr_ESP;
      }

      else
      {
        if (v71 != 101)
        {
          goto LABEL_136;
        }

        v73 = &OBJC_IVAR___NRLinkBluetooth__sentKnownIPv6Hdr_ESP_ECT0;
      }

LABEL_135:
      ++*(v3 + *v73);
      goto LABEL_136;
    }

    v73 = &OBJC_IVAR___NRLinkBluetooth__sentUncompressedIP;
    if (v71 == 2)
    {
      goto LABEL_135;
    }

    if (v71 == 3)
    {
      v73 = &OBJC_IVAR___NRLinkBluetooth__sentEncapsulated6LoWPAN;
      goto LABEL_135;
    }

LABEL_136:
    *(v3 + 1559) += v69;
    v90 = (v347 - v72);
    if (v69 <= v90)
    {
      v23 = v72 + v69;
      goto LABEL_151;
    }

    *(v3 + 2079) |= 0x4000uLL;
    if (gNRPacketLoggingEnabled == 1)
    {
      v118 = *(v3 + 32);
      v119 = _NRCopyLogObjectForNRUUID();
      v120 = _NRLogIsLevelEnabled();

      if (v120)
      {
        v121 = *(v3 + 32);
        v122 = _NRCopyLogObjectForNRUUID();
        v311 = [v3 copyDescription];
        _NRLogWithArgs();
      }
    }

    v378 = v27;
    os_buflet_set_data_length();
    os_packet_set_flow_uuid();
    v91 = os_packet_finalize();
    if (!v91)
    {
      while (1)
      {
        v92 = *(v3 + 1223);
        v93 = os_channel_get_next_slot();
        if (!v93)
        {
          v234 = sub_10007CF34();
          v235 = _NRLogIsLevelEnabled();

          if (v235)
          {
            v236 = sub_10007CF34();
            _NRLogWithArgs();
          }

          goto LABEL_290;
        }

        v94 = v93;
        if (v25 != v93)
        {
          ++v27;
        }

        v95 = *(v3 + 1223);
        v360 = v94;
        os_channel_slot_get_packet();
        os_packet_get_next_buflet();
        object_address = os_buflet_get_object_address();
        v96 = os_buflet_get_data_limit();
        if (v96 >= 0x10000)
        {
          v237 = sub_10007CF34();
          v238 = _NRLogIsLevelEnabled();

          if (v238)
          {
            v239 = sub_10007CF34();
            _NRLogWithArgs();
          }

          goto LABEL_290;
        }

        v24 = v96;
        v97 = (v96 + v90);
        if (v97 >= v70)
        {
          break;
        }

        *(v3 + 2079) |= 0x8000uLL;
        if (gNRPacketLoggingEnabled == 1)
        {
          v99 = *(v3 + 32);
          v100 = _NRCopyLogObjectForNRUUID();
          v101 = _NRLogIsLevelEnabled();

          if (v101)
          {
            v102 = *(v3 + 32);
            v103 = _NRCopyLogObjectForNRUUID();
            v310 = [v3 copyDescription];
            _NRLogWithArgs();
          }
        }

        v378 = v27;
        os_buflet_set_data_length();
        os_packet_set_flow_uuid();
        v98 = os_packet_finalize();
        v90 = v97;
        if (v98)
        {
          v284 = v98;
          v285 = sub_10007CF34();
          v286 = _NRLogIsLevelEnabled();

          if (v286)
          {
            v287 = sub_10007CF34();
            _NRLogWithArgs();
          }

          goto LABEL_316;
        }
      }

      v357 = v27;
      v23 = v70 - v90;
      v21 = v355;
LABEL_151:
      ++*(v3 + v340);
      *(v3 + v341) = *(v3 + v341);
      *(v3 + 2079) |= 0x10000uLL;
      v60 = *(v3 + 2079);
      v22 = &OBJC_IVAR___BTPResolver__sdRefResolve;
      if (!v60)
      {
        v26 = v360;
        v25 = v360;
        v354 = v346;
        v61 = &OBJC_IVAR___BTPResolver__sdRefResolve;
        goto LABEL_116;
      }

      v61 = &OBJC_IVAR___BTPResolver__sdRefResolve;
      v60 = *(v3 + 2087);
      if (!v60)
      {
        goto LABEL_160;
      }

      *(v3 + 306) %= *(v3 + 305);
      v104 = *(v3 + 2087);
      v105 = (v104 + 8 * *(v3 + 306));
      if ((v105 + 1) <= v104 + 8 * *(v3 + 305))
      {
        LODWORD(v60) = 0;
        if ((v105 & 7) == 0)
        {
          *v105 = *(v3 + 2079);
          ++*(v3 + 306);
          *(v3 + 2079) = 0;
        }

LABEL_160:
        v26 = v360;
        v25 = v360;
        v354 = v346;
        goto LABEL_116;
      }

      v106 = v23;
      v107 = *(v3 + 32);
      v108 = _NRCopyLogObjectForNRUUID();
      v109 = _NRLogIsLevelEnabled();

      if (v109)
      {
        v110 = *(v3 + 32);
        v111 = _NRCopyLogObjectForNRUUID();
        v317 = [v3 copyDescription];
        v324 = *(v3 + 306);
        _NRLogWithArgs();
      }

      LODWORD(v60) = 0;
      v26 = v360;
      v25 = v360;
      v354 = v346;
      v22 = &OBJC_IVAR___BTPResolver__sdRefResolve;
      v23 = v106;
LABEL_116:
      if (v60 && v60 != 24)
      {
        if (v60 == 25)
        {
          goto LABEL_184;
        }

        goto LABEL_21;
      }

      continue;
    }

    break;
  }

  v284 = v91;
  v303 = sub_10007CF34();
  v304 = _NRLogIsLevelEnabled();

  if (v304)
  {
    v305 = sub_10007CF34();
    _NRLogWithArgs();
  }

LABEL_316:
  v3 = _os_log_pack_size();
  __chkstk_darwin();
  v288 = *__error();
  v289 = _os_log_pack_fill();
  *v289 = 136446466;
  *(v289 + 4) = "NRLinkNexusToLinkLoopUrgent";
  *(v289 + 12) = 1024;
  *(v289 + 14) = v284;
  sub_10007CF34();
  _NRLogAbortWithPack();
LABEL_317:
  v290 = *(v3 + 32);
  v291 = _NRCopyLogObjectForNRUUID();
  v292 = _NRLogIsLevelEnabled();

  if (v292)
  {
    v293 = *(v3 + 32);
    v294 = _NRCopyLogObjectForNRUUID();
    v336 = [v3 copyDescription];
    _NRLogWithArgs();
  }

LABEL_266:
  dispatch_resume(*(v3 + *(v90 + 1996)));
LABEL_267:
  if (*(v3 + 254) == 1 && *(v3 + 623))
  {
    *(v3 + 254) = 0;
    ++*(v3 + 639);
    if (gNRPacketLoggingEnabled == 1)
    {
      v295 = *(v3 + 32);
      v296 = _NRCopyLogObjectForNRUUID();
      v297 = _NRLogIsLevelEnabled();

      if (v297)
      {
        v298 = *(v3 + 32);
        v299 = _NRCopyLogObjectForNRUUID();
        v337 = [v3 copyDescription];
        _NRLogWithArgs();
      }
    }

    dispatch_resume(*(v3 + 623));
  }

LABEL_271:
  if (gNRPacketLoggingEnabled == 1)
  {
    v270 = *(v3 + 32);
    v271 = _NRCopyLogObjectForNRUUID();
    v272 = _NRLogIsLevelEnabled();

    if (v272)
    {
      v273 = *(v3 + 32);
      v14 = _NRCopyLogObjectForNRUUID();
      v15 = [v3 copyDescription];
LABEL_14:
      _NRLogWithArgs();
    }
  }

LABEL_272:
}

void sub_1000AAC6C(uint64_t a1)
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
    ++*(v2 + 671);
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

void sub_1000AAE24(uint64_t a1)
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
      v15 = _NRCopyLogObjectForNRUUID();
      v13 = [*(a1 + 32) copyDescription];
      _NRLogWithArgs();
    }
  }

  else
  {
    ++*(v2 + 679);
    if (gNRPacketLoggingEnabled == 1)
    {
      v8 = *(*(a1 + 32) + 32);
      v9 = _NRCopyLogObjectForNRUUID();
      v10 = _NRLogIsLevelEnabled();

      if (v10)
      {
        v11 = *(*(a1 + 32) + 32);
        v12 = _NRCopyLogObjectForNRUUID();
        v14 = [*(a1 + 32) copyDescription];
        _NRLogWithArgs();
      }
    }

    v3 = *(a1 + 32);

    sub_1000AAFD8(v3);
  }
}

void sub_1000AAFD8(void *a1)
{
  v1 = a1;
  v2 = v1;
  v3 = *(v1 + 16);
  if (v3 == 255)
  {
    v4 = v1[4];
    v5 = _NRCopyLogObjectForNRUUID();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
LABEL_10:
      v13 = *(v2 + 4);
      v14 = _NRCopyLogObjectForNRUUID();
      v15 = [v2 copyDescription];
      _NRLogWithArgs();
    }
  }

  else if (*(v1 + 1135))
  {
    if ((v3 - 1) >= 2)
    {
      do
      {
        v16 = 0;
        v17 = 0;
        while (1)
        {
          *(v2 + 2047) = 4;
          v18 = *(v2 + 615);
          if (!os_channel_get_next_slot())
          {
            break;
          }

          v19 = *(v2 + 1135);
          next_slot = os_channel_get_next_slot();
          if (!next_slot)
          {
            if (v2[263] == 1 && *(v2 + 1151))
            {
              v2[263] = 0;
              ++*(v2 + 1167);
              if (gNRPacketLoggingEnabled == 1)
              {
                v70 = *(v2 + 4);
                v71 = _NRCopyLogObjectForNRUUID();
                v72 = _NRLogIsLevelEnabled();

                if (v72)
                {
                  v73 = *(v2 + 4);
                  v74 = _NRCopyLogObjectForNRUUID();
                  v92 = [v2 copyDescription];
                  _NRLogWithArgs();
                }
              }

              dispatch_resume(*(v2 + 1151));
            }

            if ((v2[255] & 1) == 0 && *(v2 + 631))
            {
              v2[255] = 1;
              ++*(v2 + 647);
              if (gNRPacketLoggingEnabled == 1)
              {
                v75 = *(v2 + 4);
                v76 = _NRCopyLogObjectForNRUUID();
                v77 = _NRLogIsLevelEnabled();

                if (v77)
                {
                  v78 = *(v2 + 4);
                  v79 = _NRCopyLogObjectForNRUUID();
                  v93 = [v2 copyDescription];
                  _NRLogWithArgs();
                }
              }

              dispatch_suspend(*(v2 + 631));
            }

            v43 = 64;
            goto LABEL_59;
          }

          v21 = v16;
          v22 = next_slot;
          v23 = *(v2 + 1135);
          v95 = v22;
          os_channel_slot_get_packet();
          os_packet_get_next_buflet();
          os_buflet_get_object_address();
          os_buflet_get_data_offset();
          data_length = os_buflet_get_data_length();
          if (data_length >= 0x10000)
          {
            if (qword_100229088 != -1)
            {
              goto LABEL_83;
            }

            while (1)
            {
              if (_NRLogIsLevelEnabled())
              {
                v80 = sub_10007CF34();
                _NRLogWithArgs();
              }

              _os_log_pack_size();
              __chkstk_darwin();
              v81 = *__error();
              v82 = _os_log_pack_fill();
              *v82 = 136446210;
              *(v82 + 4) = "NRLinkDatagramLinkToNexusLoop";
              sub_10007CF34();
              _NRLogAbortWithPack();
LABEL_83:
              dispatch_once(&qword_100229088, &stru_1001FB1C0);
            }
          }

          v25 = data_length;
          os_packet_get_flow_uuid();
          if ((v2[263] & 1) == 0 && *(v2 + 1151))
          {
            v2[263] = 1;
            ++*(v2 + 1167);
            if (gNRPacketLoggingEnabled == 1)
            {
              v34 = *(v2 + 4);
              v35 = _NRCopyLogObjectForNRUUID();
              v94 = _NRLogIsLevelEnabled();

              if (v94)
              {
                v36 = *(v2 + 4);
                v37 = _NRCopyLogObjectForNRUUID();
                v88 = [v2 copyDescription];
                _NRLogWithArgs();
              }
            }

            dispatch_suspend(*(v2 + 1151));
          }

          if (v25)
          {
            v16 = v21;
            v17 = v95;
          }

          else
          {
            if (gNRPacketLoggingEnabled == 1)
            {
              v38 = *(v2 + 4);
              v39 = _NRCopyLogObjectForNRUUID();
              v40 = _NRLogIsLevelEnabled();

              if (v40)
              {
                v41 = *(v2 + 4);
                v42 = _NRCopyLogObjectForNRUUID();
                v83 = [v2 copyDescription];
                _NRLogWithArgs();
              }

              v26 = v21;
            }

            else
            {
              v26 = v21;
            }

            v17 = v95;
            v16 = v26;
          }

          if (*(v2 + 2047) && *(v2 + 2055))
          {
            v2[302] = v2[302] % v2[301];
            v27 = *(v2 + 2055);
            v28 = (v27 + 8 * v2[302]);
            if ((v28 + 1) <= v27 + 8 * v2[301])
            {
              if ((v28 & 7) == 0)
              {
                *v28 = *(v2 + 2047);
                ++v2[302];
                *(v2 + 2047) = 0;
              }
            }

            else
            {
              v29 = *(v2 + 4);
              v30 = _NRCopyLogObjectForNRUUID();
              v31 = _NRLogIsLevelEnabled();

              if (v31)
              {
                v32 = *(v2 + 4);
                v33 = _NRCopyLogObjectForNRUUID();
                v85 = [v2 copyDescription];
                v87 = v2[302];
                _NRLogWithArgs();
              }
            }
          }
        }

        if ((v2[263] & 1) == 0 && *(v2 + 1151))
        {
          v2[263] = 1;
          ++*(v2 + 1167);
          if (gNRPacketLoggingEnabled == 1)
          {
            v60 = *(v2 + 4);
            v61 = _NRCopyLogObjectForNRUUID();
            v62 = _NRLogIsLevelEnabled();

            if (v62)
            {
              v63 = *(v2 + 4);
              v64 = _NRCopyLogObjectForNRUUID();
              v90 = [v2 copyDescription];
              _NRLogWithArgs();
            }
          }

          dispatch_suspend(*(v2 + 1151));
        }

        if (v2[255] == 1 && *(v2 + 631))
        {
          v2[255] = 0;
          ++*(v2 + 647);
          if (gNRPacketLoggingEnabled == 1)
          {
            v65 = *(v2 + 4);
            v66 = _NRCopyLogObjectForNRUUID();
            v67 = _NRLogIsLevelEnabled();

            if (v67)
            {
              v68 = *(v2 + 4);
              v69 = _NRCopyLogObjectForNRUUID();
              v91 = [v2 copyDescription];
              _NRLogWithArgs();
            }
          }

          dispatch_resume(*(v2 + 631));
        }

        v43 = 0x800000;
LABEL_59:
        *(v2 + 2047) |= v43;
        if (v17)
        {
          *(v2 + 2047) |= 0x800000000uLL;
          if (gNRPacketLoggingEnabled == 1)
          {
            v53 = *(v2 + 4);
            v54 = _NRCopyLogObjectForNRUUID();
            v55 = _NRLogIsLevelEnabled();

            if (v55)
            {
              v56 = *(v2 + 4);
              v57 = _NRCopyLogObjectForNRUUID();
              v84 = [v2 copyDescription];
              _NRLogWithArgs();
            }
          }

          if (gNRPacketLoggingEnabled == 1)
          {
            v58 = +[NSDate date];
            v59 = *(v2 + 1839);
            *(v2 + 1839) = v58;
          }

          v44 = *(v2 + 1135);
          os_channel_advance_slot();
          v45 = *(v2 + 1127);
          os_channel_sync();
          ++*(v2 + 1583);
        }

        if (*(v2 + 2047) && *(v2 + 2055))
        {
          v2[302] = v2[302] % v2[301];
          v46 = *(v2 + 2055);
          v47 = (v46 + 8 * v2[302]);
          if ((v47 + 1) <= v46 + 8 * v2[301])
          {
            if ((v47 & 7) == 0)
            {
              *v47 = *(v2 + 2047);
              ++v2[302];
              *(v2 + 2047) = 0;
            }
          }

          else
          {
            v48 = *(v2 + 4);
            v49 = _NRCopyLogObjectForNRUUID();
            v50 = _NRLogIsLevelEnabled();

            if (v50)
            {
              v51 = *(v2 + 4);
              v52 = _NRCopyLogObjectForNRUUID();
              v86 = [v2 copyDescription];
              v89 = v2[302];
              _NRLogWithArgs();
            }
          }
        }
      }

      while (v16 | v17);
    }

    else
    {
      v7 = v1[4];
      v8 = _NRCopyLogObjectForNRUUID();
      v9 = _NRLogIsLevelEnabled();

      if (v9)
      {
        goto LABEL_10;
      }
    }
  }

  else if (*(v1 + 265) == 1)
  {
    v10 = v1[4];
    v11 = _NRCopyLogObjectForNRUUID();
    v12 = _NRLogIsLevelEnabled();

    if (v12)
    {
      goto LABEL_10;
    }
  }
}

void sub_1000AC29C(uint64_t a1)
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
    ++*(v2 + 527);
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
    v4 = *(v3 + 439);

    sub_10007D9C4(v3, v4);
  }
}

void sub_1000AC454(uint64_t a1)
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
      v15 = _NRCopyLogObjectForNRUUID();
      v13 = [*(a1 + 32) copyDescription];
      _NRLogWithArgs();
    }
  }

  else
  {
    ++*(v2 + 535);
    if (gNRPacketLoggingEnabled == 1)
    {
      v8 = *(*(a1 + 32) + 32);
      v9 = _NRCopyLogObjectForNRUUID();
      v10 = _NRLogIsLevelEnabled();

      if (v10)
      {
        v11 = *(*(a1 + 32) + 32);
        v12 = _NRCopyLogObjectForNRUUID();
        v14 = [*(a1 + 32) copyDescription];
        _NRLogWithArgs();
      }
    }

    v3 = *(a1 + 32);

    sub_100097378(v3);
  }
}

id sub_1000AC608(void *a1, uint64_t a2, unint64_t a3, unint64_t *a4)
{
  if (a4)
  {
    *a4 = 0;
  }

  v7 = a1;
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    if (qword_100229088 != -1)
    {
      dispatch_once(&qword_100229088, &stru_1001FB1C0);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_100229088 != -1)
      {
        dispatch_once(&qword_100229088, &stru_1001FB1C0);
      }

      _NRLogWithArgs();
    }

    goto LABEL_17;
  }

  if (v7[16] == 255)
  {
    goto LABEL_17;
  }

  if (v7[282] == 1)
  {
    if (gNRPacketLoggingEnabled == 1)
    {
      v13 = sub_10007CF34();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      if (IsLevelEnabled)
      {
        v15 = sub_10007CF34();
        _NRLogWithArgs();
      }
    }

    v8 = [[NSData alloc] initWithBytes:a2 length:a3];
    objc_initWeak(&location, v7);
    v9 = *(v7 + 407);
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_1000AC8D4;
    v16[3] = &unk_1001FB1E8;
    objc_copyWeak(v17, &location);
    v17[1] = a3;
    [v9 sendData:v8 withCompletion:v16];
    if (a4)
    {
      *a4 = a3;
    }

    *(v7 + 735) += a3;
    objc_destroyWeak(v17);
    objc_destroyWeak(&location);

    goto LABEL_17;
  }

  v12 = [*(v7 + 1431) write:a2 maxLength:a3];
  if ((v12 & 0x8000000000000000) != 0)
  {
LABEL_17:
    v10 = 0;
    goto LABEL_18;
  }

  if (a4)
  {
    *a4 = v12;
  }

  *(v7 + 735) += v12;
  v10 = [*(v7 + 1431) hasSpaceAvailable];
LABEL_18:

  return v10;
}

void sub_1000AC8B8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_1000AC8D4(uint64_t a1, void *a2, int a3)
{
  v12 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = WeakRetained;
  if (WeakRetained && [WeakRetained state] != 255)
  {
    if (gNRPacketLoggingEnabled == 1)
    {
      v8 = sub_10007CF34();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      if (IsLevelEnabled)
      {
        v10 = sub_10007CF34();
        v11 = *(a1 + 40);
        _NRLogWithArgs();
      }
    }

    if (v12 && [v12 code])
    {
      if (qword_100229088 != -1)
      {
        dispatch_once(&qword_100229088, &stru_1001FB1C0);
      }

      if (_NRLogIsLevelEnabled())
      {
        if (qword_100229088 != -1)
        {
          dispatch_once(&qword_100229088, &stru_1001FB1C0);
        }

        _NRLogWithArgs();
      }
    }

    else if (a3)
    {
      v7 = *(v6 + 1415);
      if (v7)
      {
        (*(v7 + 16))(*(v7 + 24));
      }
    }
  }
}

uint64_t sub_1000ACA88(void *a1)
{
  isKindOfClass = a1;
  v2 = isKindOfClass;
  if (isKindOfClass)
  {
    val = isKindOfClass;
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v2 = val;
    if ((isKindOfClass & 1) != 0 && val[285] == 1)
    {
      val[286] = 0;
      if (val[287] == 1)
      {
        if (val[282] == 1)
        {
          sub_100090EA4(val);
        }

        else
        {
          sub_10008F50C(val, 2);
        }

        v2 = val;
      }
    }
  }

  return _objc_release_x1(isKindOfClass, v2);
}

uint64_t sub_1000AD65C(uint64_t a1)
{
  v2 = [*(a1 + 32) linkDelegate];
  if (!v2)
  {
    goto LABEL_13;
  }

  v3 = *(a1 + 40);
  v9 = v2;
  if (v3)
  {
    v4 = [v3 hostState];
    v5 = v4 == 1;
    v6 = *(a1 + 32);
    if (v6)
    {
      if (((v4 == 1) ^ *(v6 + 290)))
      {
LABEL_9:
        *(v6 + 290) = v5;
        v7 = *(a1 + 32);
        if (v7)
        {
          *(v7 + 291) = 1;
        }

        goto LABEL_11;
      }

LABEL_8:
      if (*(v6 + 291))
      {
        goto LABEL_13;
      }

      goto LABEL_9;
    }
  }

  else
  {
    v6 = *(a1 + 32);
    if (v6)
    {
      v5 = 0;
      if (*(v6 + 290))
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }

    v5 = 0;
  }

LABEL_11:
  if (objc_opt_respondsToSelector())
  {
    [v9 linkPeerIsAsleep:*(a1 + 32) isAsleep:v5];
  }

LABEL_13:

  return _objc_release_x3();
}

void sub_1000AE684(uint64_t a1, void *a2)
{
  v4 = a2;
  v5 = v4;
  if (!a1 || *(a1 + 1119) == v4)
  {
    goto LABEL_62;
  }

  if (*(a1 + 293))
  {
LABEL_4:
    v6 = *(a1 + 32);
    v7 = _NRCopyLogObjectForNRUUID();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v9 = *(a1 + 32);
      v10 = _NRCopyLogObjectForNRUUID();
      v11 = [a1 copyDescription];
      v122 = *(a1 + 1119);
      _NRLogWithArgs();
    }

    objc_storeStrong((a1 + 1119), a2);
    *(a1 + 265) = *(a1 + 1119) != 0;
    if (*(a1 + 293) == 1)
    {
      if (*(a1 + 265) == 1)
      {
        sub_100090BF4(a1, 0, &off_100209BC0);
      }

      else
      {
        sub_1000B1320(a1, &off_100209BC0);
      }
    }

    goto LABEL_62;
  }

  v12 = *(a1 + 1151);
  if (!v5)
  {
    if (v12)
    {
      if (*(a1 + 263) == 1)
      {
        *(a1 + 263) = 0;
        ++*(a1 + 1167);
        if (gNRPacketLoggingEnabled == 1)
        {
          v81 = *(a1 + 32);
          v82 = _NRCopyLogObjectForNRUUID();
          v83 = _NRLogIsLevelEnabled();

          if (v83)
          {
            v84 = *(a1 + 32);
            v85 = _NRCopyLogObjectForNRUUID();
            v126 = [a1 copyDescription];
            _NRLogWithArgs();
          }
        }

        dispatch_resume(*(a1 + 1151));
        v12 = *(a1 + 1151);
      }

      dispatch_source_cancel(v12);
      v21 = *(a1 + 1151);
      *(a1 + 1151) = 0;
    }

    v22 = *(a1 + 1159);
    if (v22)
    {
      if (*(a1 + 264) == 1)
      {
        *(a1 + 264) = 0;
        ++*(a1 + 1175);
        if (gNRPacketLoggingEnabled == 1)
        {
          v86 = *(a1 + 32);
          v87 = _NRCopyLogObjectForNRUUID();
          v88 = _NRLogIsLevelEnabled();

          if (v88)
          {
            v89 = *(a1 + 32);
            v90 = _NRCopyLogObjectForNRUUID();
            v127 = [a1 copyDescription];
            _NRLogWithArgs();
          }
        }

        dispatch_resume(*(a1 + 1159));
        v22 = *(a1 + 1159);
      }

      dispatch_source_cancel(v22);
      v23 = *(a1 + 1159);
      *(a1 + 1159) = 0;
    }

    if ((*(a1 + 255) & 1) == 0 && *(a1 + 631))
    {
      *(a1 + 255) = 1;
      ++*(a1 + 647);
      if (gNRPacketLoggingEnabled == 1)
      {
        v91 = *(a1 + 32);
        v92 = _NRCopyLogObjectForNRUUID();
        v93 = _NRLogIsLevelEnabled();

        if (v93)
        {
          v94 = *(a1 + 32);
          v95 = _NRCopyLogObjectForNRUUID();
          v128 = [a1 copyDescription];
          _NRLogWithArgs();
        }
      }

      dispatch_suspend(*(a1 + 631));
    }

    if (*(a1 + 252) == 1 && *(a1 + 463))
    {
      *(a1 + 252) = 0;
      ++*(a1 + 487);
      if (gNRPacketLoggingEnabled == 1)
      {
        v96 = *(a1 + 32);
        v97 = _NRCopyLogObjectForNRUUID();
        v98 = _NRLogIsLevelEnabled();

        if (v98)
        {
          v99 = *(a1 + 32);
          v100 = _NRCopyLogObjectForNRUUID();
          v129 = [a1 copyDescription];
          _NRLogWithArgs();
        }
      }

      dispatch_resume(*(a1 + 463));
    }

    if (*(a1 + 256) == 1 && *(a1 + 783))
    {
      *(a1 + 256) = 0;
      ++*(a1 + 799);
      if (gNRPacketLoggingEnabled == 1)
      {
        v101 = *(a1 + 32);
        v102 = _NRCopyLogObjectForNRUUID();
        v103 = _NRLogIsLevelEnabled();

        if (v103)
        {
          v104 = *(a1 + 32);
          v105 = _NRCopyLogObjectForNRUUID();
          v130 = [a1 copyDescription];
          _NRLogWithArgs();
        }
      }

      dispatch_resume(*(a1 + 783));
    }

    if (*(a1 + 258) == 1 && *(a1 + 927))
    {
      *(a1 + 258) = 0;
      ++*(a1 + 943);
      if (gNRPacketLoggingEnabled == 1)
      {
        v106 = *(a1 + 32);
        v107 = _NRCopyLogObjectForNRUUID();
        v108 = _NRLogIsLevelEnabled();

        if (v108)
        {
          v109 = *(a1 + 32);
          v110 = _NRCopyLogObjectForNRUUID();
          v131 = [a1 copyDescription];
          _NRLogWithArgs();
        }
      }

      dispatch_resume(*(a1 + 927));
    }

    if (*(a1 + 254) == 1 && *(a1 + 623))
    {
      *(a1 + 254) = 0;
      ++*(a1 + 639);
      if (gNRPacketLoggingEnabled == 1)
      {
        v111 = *(a1 + 32);
        v112 = _NRCopyLogObjectForNRUUID();
        v113 = _NRLogIsLevelEnabled();

        if (v113)
        {
          v114 = *(a1 + 32);
          v115 = _NRCopyLogObjectForNRUUID();
          v132 = [a1 copyDescription];
          _NRLogWithArgs();
        }
      }

      dispatch_resume(*(a1 + 623));
    }

    *(a1 + 1127) = 0;
    *(a1 + 1143) = 0;
    *(a1 + 1135) = 0;
    *(a1 + 1167) = 0;
    *(a1 + 1175) = 0;
    v24 = *(a1 + 2055);
    if (v24)
    {
      free(v24);
      *(a1 + 2055) = 0;
    }

    goto LABEL_4;
  }

  if (v12)
  {
    if (*(a1 + 263) == 1)
    {
      *(a1 + 263) = 0;
      ++*(a1 + 1167);
      if (gNRPacketLoggingEnabled == 1)
      {
        v71 = *(a1 + 32);
        v72 = _NRCopyLogObjectForNRUUID();
        v73 = _NRLogIsLevelEnabled();

        if (v73)
        {
          v74 = *(a1 + 32);
          v75 = _NRCopyLogObjectForNRUUID();
          v124 = [a1 copyDescription];
          _NRLogWithArgs();
        }
      }

      dispatch_resume(*(a1 + 1151));
      v12 = *(a1 + 1151);
    }

    dispatch_source_cancel(v12);
    v13 = *(a1 + 1151);
    *(a1 + 1151) = 0;
  }

  v14 = *(a1 + 1159);
  if (v14)
  {
    if (*(a1 + 264) == 1)
    {
      *(a1 + 264) = 0;
      ++*(a1 + 1175);
      if (gNRPacketLoggingEnabled == 1)
      {
        v76 = *(a1 + 32);
        v77 = _NRCopyLogObjectForNRUUID();
        v78 = _NRLogIsLevelEnabled();

        if (v78)
        {
          v79 = *(a1 + 32);
          v80 = _NRCopyLogObjectForNRUUID();
          v125 = [a1 copyDescription];
          _NRLogWithArgs();
        }
      }

      dispatch_resume(*(a1 + 1159));
      v14 = *(a1 + 1159);
    }

    dispatch_source_cancel(v14);
    v15 = *(a1 + 1159);
    *(a1 + 1159) = 0;
  }

  *(a1 + 1127) = 0;
  *(a1 + 1143) = 0;
  *(a1 + 1135) = 0;
  v16 = [v5 channel];
  *(a1 + 1127) = v16;
  if (!v16)
  {
    v25 = *(a1 + 32);
    v26 = _NRCopyLogObjectForNRUUID();
    v27 = _NRLogIsLevelEnabled();

    if (v27)
    {
      goto LABEL_61;
    }

    goto LABEL_62;
  }

  if (!os_channel_attr_create())
  {
    v28 = *(a1 + 32);
    v29 = _NRCopyLogObjectForNRUUID();
    v30 = _NRLogIsLevelEnabled();

    if (v30)
    {
LABEL_61:
      v31 = *(a1 + 32);
      v32 = _NRCopyLogObjectForNRUUID();
      v33 = [a1 copyDescription];
      _NRLogWithArgs();
    }

LABEL_62:

    return;
  }

  v17 = *(a1 + 1127);
  if (os_channel_read_attr())
  {
    v18 = *(a1 + 32);
    v19 = _NRCopyLogObjectForNRUUID();
    v20 = _NRLogIsLevelEnabled();

    if (v20)
    {
      goto LABEL_61;
    }

    goto LABEL_62;
  }

  v34 = sub_1000A1674(a1);
  os_channel_attr_destroy();
  if (!v34)
  {
    goto LABEL_62;
  }

  v35 = *(a1 + 1127);
  os_channel_ring_id();
  v36 = *(a1 + 1127);
  v37 = os_channel_rx_ring();
  *(a1 + 1135) = v37;
  if (!v37)
  {
    v54 = *(a1 + 32);
    v55 = _NRCopyLogObjectForNRUUID();
    v56 = _NRLogIsLevelEnabled();

    if (!v56)
    {
      goto LABEL_62;
    }

    goto LABEL_61;
  }

  v38 = *(a1 + 1127);
  os_channel_ring_id();
  v39 = *(a1 + 1127);
  v40 = os_channel_tx_ring();
  *(a1 + 1143) = v40;
  if (!v40)
  {
    v57 = *(a1 + 32);
    v58 = _NRCopyLogObjectForNRUUID();
    v59 = _NRLogIsLevelEnabled();

    if (!v59)
    {
      goto LABEL_62;
    }

    goto LABEL_61;
  }

  v41 = *(a1 + 1127);
  fd = os_channel_get_fd();
  if ((fd & 0x80000000) != 0)
  {
    v60 = *(a1 + 32);
    v61 = _NRCopyLogObjectForNRUUID();
    v62 = _NRLogIsLevelEnabled();

    if (!v62)
    {
      goto LABEL_62;
    }

    goto LABEL_61;
  }

  v43 = fd;
  v44 = dispatch_source_create(&_dispatch_source_type_read, fd, 0, *(a1 + 8));
  v45 = *(a1 + 1151);
  *(a1 + 1151) = v44;

  v46 = *(a1 + 1151);
  if (!v46)
  {
    v63 = *(a1 + 32);
    v64 = _NRCopyLogObjectForNRUUID();
    v65 = _NRLogIsLevelEnabled();

    if (!v65)
    {
      goto LABEL_62;
    }

    goto LABEL_61;
  }

  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_1000B1C18;
  handler[3] = &unk_1001FD3C8;
  handler[4] = a1;
  dispatch_source_set_event_handler(v46, handler);
  v47 = *(a1 + 1151);
  v137[0] = _NSConcreteStackBlock;
  v137[1] = 3221225472;
  v137[2] = nullsub_9;
  v137[3] = &unk_1001FD3C8;
  v48 = v5;
  v138 = v48;
  dispatch_source_set_cancel_handler(v47, v137);
  dispatch_activate(*(a1 + 1151));
  v49 = dispatch_source_create(&_dispatch_source_type_write, v43, 0, *(a1 + 8));
  v50 = *(a1 + 1159);
  *(a1 + 1159) = v49;

  v51 = *(a1 + 1159);
  if (!v51)
  {
    v66 = *(a1 + 32);
    v67 = _NRCopyLogObjectForNRUUID();
    v68 = _NRLogIsLevelEnabled();

    if (v68)
    {
      v69 = *(a1 + 32);
      v70 = _NRCopyLogObjectForNRUUID();
      v123 = [a1 copyDescription];
      _NRLogWithArgs();
    }

    goto LABEL_62;
  }

  v136[0] = _NSConcreteStackBlock;
  v136[1] = 3221225472;
  v136[2] = sub_1000B1E24;
  v136[3] = &unk_1001FD3C8;
  v136[4] = a1;
  dispatch_source_set_event_handler(v51, v136);
  v52 = *(a1 + 1159);
  v134[0] = _NSConcreteStackBlock;
  v134[1] = 3221225472;
  v134[2] = nullsub_10;
  v134[3] = &unk_1001FD3C8;
  v135 = v48;
  dispatch_source_set_cancel_handler(v52, v134);
  *(a1 + 264) = 1;
  *(a1 + 301) = 10;
  if (!*(a1 + 301))
  {
LABEL_73:

    goto LABEL_4;
  }

  v53 = 8 * *(a1 + 301);
  memptr = 0;
  if (!malloc_type_posix_memalign(&memptr, 8uLL, v53, 0xE17AD3EDuLL) && memptr)
  {
    *(a1 + 2055) = memptr;
    goto LABEL_73;
  }

  v116 = sub_10007CF34();
  v117 = _NRLogIsLevelEnabled();

  if (v117)
  {
    v118 = sub_10007CF34();
    _NRLogWithArgs();
  }

  _os_log_pack_size();
  __chkstk_darwin();
  v119 = *__error();
  v120 = _os_log_pack_fill();
  *v120 = 136446722;
  *(v120 + 4) = "[NRLinkBluetooth updateDatagramPipe:]";
  *(v120 + 12) = 2048;
  *(v120 + 14) = 8;
  *(v120 + 22) = 2048;
  *(v120 + 24) = v53;
  sub_10007CF34();
  v121 = _NRLogAbortWithPack();
  sub_1000AF784(v121);
}