uint64_t sub_100258AE0(uint64_t a1, double *a2, double *a3)
{
  *(a1 + 80) = 0;
  v3 = *a3;
  v4 = *a2;
  v5 = vcvtmd_s64_f64((*a2 + 90.0) * 20.0) + (floor(*a3 * 20.0) * 100000.0);
  v6 = a1;
  if ((*(a1 + 28) & 1) != 0 && (v6 = a1, v5 == *(a1 + 24)))
  {
    v7 = *(a1 + 29);
  }

  else
  {
    do
    {
      v6 = *(v6 + 8);
      if (v6 == a1)
      {
        *(a1 + 24) = 0;
        *(a1 + 28) = 0;
        if (sub_1004A6F7C(a1, v4, v3))
        {
          operator new();
        }

        operator new();
      }
    }

    while (v5 != *(v6 + 16));
    v7 = *(v6 + 20);
  }

  return v7 & 1;
}

void sub_100258C1C(uint64_t a1, double a2)
{
  v3 = a1;
  v4 = (*(**(a1 + 464) + 32))(*(a1 + 464));
  if (((*(**(v3 + 464) + 48))(*(v3 + 464)) & 1) == 0)
  {
    if (qword_1025D4600 != -1)
    {
      sub_1003110B8();
    }

    v6 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEBUG, "TILE: checkDownloadSchedule, location services disabled - no tile downloads", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101AC2494();
    }

    return;
  }

  if ((*(v3 + 201) & 1) == 0)
  {
    if (qword_1025D4600 != -1)
    {
      sub_1003110B8();
    }

    v7 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
    {
      v8 = *(v3 + 200);
      *buf = 67109120;
      *&buf[4] = v8;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEBUG, "TILE: checkDownloadSchedule, index is not available until first unlock, fDataProtectionEnabled, %d", buf, 8u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101AC2578(v3);
    }

    return;
  }

  if (*(v3 + 200) == 1 && *(v3 + 440) == 1)
  {
    if (qword_1025D4600 != -1)
    {
      sub_1003110B8();
    }

    v5 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEBUG, "TILE: checkDownloadSchedule, no tiles while locked", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101AC31B8();
    }

    return;
  }

  v9 = *(v3 + 424);
  if (v9 > 1)
  {
    goto LABEL_24;
  }

  v102 = *(v3 + 496);
  if (v9 == 1)
  {
    if ((v4 & 1) == 0)
    {
      if (qword_1025D4600 != -1)
      {
        sub_1003110B8();
      }

      v80 = qword_1025D4608;
      if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v80, OS_LOG_TYPE_DEBUG, "TILE: checkDownloadSchedule, no download on none broadband cellular connections", buf, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101AC2750();
      }

      return;
    }

    v98 = (v3 + 200);
    goto LABEL_25;
  }

  if (!v9)
  {
    if ((v102 & 1) == 0)
    {
      if (qword_1025D4620 != -1)
      {
        sub_101ABFB1C();
      }

      v13 = qword_1025D4628;
      if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_INFO, "TILE: checkDownloadSchedule, no data connectivity, avoiding downloads", buf, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101AC266C();
      }

      return;
    }

LABEL_24:
    v98 = (v3 + 200);
    v102 = 1;
LABEL_25:
    v10 = 1;
    goto LABEL_26;
  }

  v98 = (v3 + 200);
  v10 = *(v3 + 496);
LABEL_26:
  v101 = sub_10025A480(v3);
  if (qword_1025D4600 != -1)
  {
    sub_1003110B8();
  }

  v11 = qword_1025D4608;
  if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
  {
    *buf = 67109632;
    *&buf[4] = v101;
    *&buf[8] = 1024;
    *&buf[10] = v10;
    *&buf[14] = 1024;
    *&buf[16] = v102;
    _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEBUG, "TILE: checkDownloadSchedule, checking, numOfActiveDownloads, %u, small, %d, large, %d", buf, 0x14u);
  }

  v99 = v10;
  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D4600 != -1)
    {
      sub_101ABFEE4();
    }

    *v107 = 67109632;
    *&v107[4] = v101;
    *&v107[8] = 1024;
    *&v107[10] = v10;
    *&v107[14] = 1024;
    *&v107[16] = v102;
    v87 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "void CLTilesManager::checkDownloadSchedule(CFAbsoluteTime)", "%s\n", v87);
    if (v87 != buf)
    {
      free(v87);
    }
  }

  if (v101 >= 2)
  {
    if (qword_1025D4600 != -1)
    {
      sub_101ABFEE4();
    }

    v12 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
    {
      *buf = 67109120;
      *&buf[4] = v101;
      _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_DEBUG, "TILE: checkDownloadSchedule, numOfActiveDownloads, %d, not scheduling more", buf, 8u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101AC30C8();
    }

    return;
  }

  if (*(v3 + 176) == 1 && *(v3 + 144) == 1)
  {
    if (qword_1025D4600 != -1)
    {
      sub_101ABFEE4();
    }

    v14 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_DEBUG, "TILE: checkDownloadSchedule, both download requests are already in use", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101AC2FE4();
    }

    return;
  }

  if (*(v3 + 160) || *(v3 + 192))
  {
    v15 = *(v3 + 268);
    v16 = *(v3 + 200);
    if (qword_1025D4600 != -1)
    {
      sub_101ABFEE4();
    }

    v17 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
    {
      *buf = 67109376;
      *&buf[4] = v15 > 0.0;
      *&buf[8] = 1024;
      *&buf[10] = v16;
      _os_log_impl(dword_100000000, v17, OS_LOG_TYPE_DEBUG, "TILE: checkDownloadSchedule, isLocationValid, %d, isDeviceLocked, %d", buf, 0xEu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101AC2834((v15 > 0.0));
    }

    if (qword_1025D4600 != -1)
    {
      sub_101ABFEE4();
    }

    v18 = (v3 + 248);
    v19 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
    {
      sub_100072AFC(v3 + 248, buf);
      v20 = buf[23] >= 0 ? buf : *buf;
      *v107 = 136642819;
      *&v107[4] = v20;
      _os_log_impl(dword_100000000, v19, OS_LOG_TYPE_DEBUG, "TILE: checkDownloadSchedule, lastLocation, %{sensitive}s", v107, 0xCu);
      if ((buf[23] & 0x80000000) != 0)
      {
        operator delete(*buf);
      }
    }

    if (sub_10000A100(121, 2))
    {
      sub_101AC293C(v3 + 248);
    }

    v21 = *(v3 + 112);
    v100 = (v3 + 120);
    if (v21 != (v3 + 120))
    {
      v92 = v3 + 136;
      v93 = v3 + 168;
      v94 = v3;
      while (1)
      {
        if (*(v3 + 144) == 1 && (*(v3 + 176) & 1) != 0)
        {
          goto LABEL_193;
        }

        v22 = v21[10];
        v23 = (v22 + 48);
        v24 = sub_1001D252C(v3, *(v22 + 48));
        if ((*(v22 + 48) & 0xFFFFFFF7) - 1 >= 2)
        {
          sub_101AC2A68(v24);
        }

        v25 = v24;
        if (!sub_100232000(v22, v102, *(v24 + 128), a2))
        {
          if (sub_100085A44(v22))
          {
            if (qword_1025D4600 != -1)
            {
              sub_101ABFEE4();
            }

            v33 = qword_1025D4608;
            if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
            {
              v34 = sub_100085A44(v22);
              *buf = 67109120;
              *&buf[4] = v34;
              _os_log_impl(dword_100000000, v33, OS_LOG_TYPE_DEBUG, "TILE: checkDownloadSchedule, isShouldDownload is not true, exists on server, %d", buf, 8u);
            }

            if (sub_10000A100(121, 2))
            {
              sub_101AC2BD4(&v115, v22, v116);
            }
          }

          goto LABEL_148;
        }

        v26 = *(v25 + 136);
        v27 = v18[7];
        v121 = v18[6];
        v122 = v27;
        v123[0] = v18[8];
        *(v123 + 12) = *(v18 + 140);
        v28 = v18[3];
        *&buf[32] = v18[2];
        v118 = v28;
        v29 = v18[5];
        v119 = v18[4];
        v120 = v29;
        v30 = v18[1];
        *buf = *v18;
        *&buf[16] = v30;
        v106 = sub_1010AB2BC(v22, buf, v26, a2);
        if (sub_1002332E4(v22))
        {
          goto LABEL_148;
        }

        if (v101 >= 2)
        {
          v101 = 2;
          goto LABEL_193;
        }

        v105 = 0;
        if (v106 != 1)
        {
          break;
        }

        v31 = v99;
        if ((*(v22 + 112) & v99 & 1) == 0)
        {
          v32 = *(v25 + 177);
          goto LABEL_92;
        }

LABEL_93:
        v35 = 1;
        v105 = 1;
LABEL_94:
        if (qword_1025D4600 != -1)
        {
          sub_101ABFEE4();
        }

        v36 = qword_1025D4608;
        if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
        {
          v37 = v106;
          v38 = v105;
          (*(*v22 + 16))(v107, v22);
          v95 = v25;
          v39 = v35;
          v40 = v18;
          v41 = v107[23];
          v42 = *v107;
          sub_100EDCE5C(&__p);
          v43 = v107;
          if (v41 < 0)
          {
            v43 = v42;
          }

          p_p = &__p;
          if (v114 < 0)
          {
            p_p = __p;
          }

          *buf = 67110402;
          *&buf[4] = 1;
          *&buf[8] = 1024;
          v35 = v39;
          *&buf[10] = v39;
          *&buf[14] = 1024;
          *&buf[16] = v37;
          *&buf[20] = 1024;
          *&buf[22] = v38;
          *&buf[26] = 2080;
          *&buf[28] = v43;
          *&buf[36] = 2080;
          *&buf[38] = p_p;
          _os_log_impl(dword_100000000, v36, OS_LOG_TYPE_DEBUG, "TILE: checkDownloadSchedule, isShouldDownload, %d, isAllowDownload, %d, isCurrentTile, %d, isAllowCellular, %d, check, %s, details, %s", buf, 0x2Eu);
          if (v114 < 0)
          {
            operator delete(__p);
          }

          v18 = v40;
          v25 = v95;
          if ((v107[23] & 0x80000000) != 0)
          {
            operator delete(*v107);
          }

          v3 = v94;
        }

        if (sub_10000A100(121, 2))
        {
          sub_101ABFF0C(buf);
          v65 = v106;
          v66 = v105;
          (*(*v22 + 16))(&__p, v22);
          v97 = v35;
          v91 = v18;
          v67 = v114;
          v68 = __p;
          sub_100EDCE5C(v103);
          v69 = &__p;
          if (v67 < 0)
          {
            v69 = v68;
          }

          v70 = v103;
          if (v104 < 0)
          {
            v70 = v103[0];
          }

          *v107 = 67110402;
          *&v107[4] = 1;
          *&v107[8] = 1024;
          *&v107[10] = v97;
          *&v107[14] = 1024;
          *&v107[16] = v65;
          *&v107[20] = 1024;
          *&v107[22] = v66;
          *&v107[26] = 2080;
          *&v107[28] = v69;
          *&v107[36] = 2080;
          *v108 = v70;
          v71 = _os_log_send_and_compose_impl();
          if (v104 < 0)
          {
            operator delete(v103[0]);
          }

          if (v114 < 0)
          {
            operator delete(__p);
          }

          sub_100152C7C("Generic", 1, 0, 2, "void CLTilesManager::checkDownloadSchedule(CFAbsoluteTime)", "%s\n", v71);
          v18 = v91;
          v35 = v97;
          if (v71 != buf)
          {
            free(v71);
          }
        }

        if (!v35)
        {
          goto LABEL_148;
        }

        if (v105 == 1)
        {
          v45 = v92;
          if ((*(v3 + 144) & 1) == 0)
          {
            goto LABEL_112;
          }
        }

        else
        {
          v45 = v93;
          if ((*(v3 + 176) & 1) == 0)
          {
LABEL_112:
            if (qword_1025D4600 != -1)
            {
              sub_101ABFEE4();
            }

            v46 = qword_1025D4608;
            if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
            {
              v47 = *v45;
              *buf = 136315138;
              *&buf[4] = v47;
              _os_log_impl(dword_100000000, v46, OS_LOG_TYPE_DEBUG, "TILE: checkDownloadSchedule, chose, downloadState, %s", buf, 0xCu);
            }

            if (sub_10000A100(121, 2))
            {
              sub_101AC2D00(&v109, v45, &v110);
            }

            v48 = *(v45 + 24);
            *(v48 + 80) = v105;
            *(v48 + 81) = 1;
            if (*(v25 + 79) >= 0)
            {
              v49 = v25 + 56;
            }

            else
            {
              v49 = *(v25 + 56);
            }

            v96 = [NSString stringWithUTF8String:v49];
            if ((*(v25 + 80) & 1) == 0)
            {
              v50 = +[GEOCountryConfiguration sharedConfiguration];
              if (*(v25 + 111) >= 0)
              {
                v51 = v25 + 88;
              }

              else
              {
                v51 = *(v25 + 88);
              }

              v96 = [v50 defaultForKey:+[NSString stringWithUTF8String:](NSString defaultValue:{"stringWithUTF8String:", v51), v96}];
            }

            sub_10000EC00(buf, [(NSString *)v96 UTF8String]);
            v52 = sub_100ED9670(v22, buf, *(v45 + 24));
            if ((buf[23] & 0x80000000) != 0)
            {
              operator delete(*buf);
            }

            if (v52)
            {
              *(v45 + 8) = 1;
              *(v45 + 16) = a2;
              if (qword_1025D4600 != -1)
              {
                sub_101ABFEE4();
              }

              ++v101;
              v53 = qword_1025D4608;
              if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
              {
                (*(*v22 + 16))(buf, v22);
                v54 = buf;
                if (buf[23] < 0)
                {
                  v54 = *buf;
                }

                *v107 = 67109378;
                *&v107[4] = v101;
                *&v107[8] = 2080;
                *&v107[10] = v54;
                _os_log_impl(dword_100000000, v53, OS_LOG_TYPE_DEBUG, "TILE: checkDownloadSchedule, started downloading, numOfActiveDownloads, %d, tile, %s", v107, 0x12u);
                if ((buf[23] & 0x80000000) != 0)
                {
                  operator delete(*buf);
                }
              }

              if (sub_10000A100(121, 2))
              {
                bzero(buf, 0x65CuLL);
                if (qword_1025D4600 != -1)
                {
                  sub_101ABFEE4();
                }

                (*(*v22 + 16))(v107, v22);
                v72 = v107;
                if (v107[23] < 0)
                {
                  v72 = *v107;
                }

                LODWORD(__p) = 67109378;
                HIDWORD(__p) = v101;
                v112 = 2080;
                v113 = v72;
                v73 = _os_log_send_and_compose_impl();
                if ((v107[23] & 0x80000000) != 0)
                {
                  operator delete(*v107);
                }

                sub_100152C7C("Generic", 1, 0, 2, "void CLTilesManager::checkDownloadSchedule(CFAbsoluteTime)", "%s\n", v73);
                if (v73 != buf)
                {
                  free(v73);
                }
              }

              sub_100EF41D4((v25 + 232), 1);
              sub_10000EC00(buf, "startDownloading");
              sub_100C43164(v25 + 232, buf, *(v3 + 424));
              if ((buf[23] & 0x80000000) != 0)
              {
                operator delete(*buf);
              }

              if (sub_100071CA0())
              {
                sub_10004FD18(buf);
                v55 = (v22 + 8);
                if (*(v22 + 31) < 0)
                {
                  v55 = *v55;
                }

                sub_1002DC414(buf, "getTile", v55);
                sub_100043360(buf, "protection", v98);
                sub_100043360(buf, "isCurrentTile", &v106);
                sub_100043360(buf, "isAllowCellular", &v105);
                sub_100071CAC(buf, "locationd");
                sub_100005DA4(buf);
              }

              if (qword_1025D4620 != -1)
              {
                sub_101ABFF50();
              }

              v56 = qword_1025D4628;
              if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
              {
                v57 = sub_100085790(*v23);
                v58 = sub_100085338(v23);
                v59 = sub_100085314(v23);
                v60 = *(v3 + 424);
                v61 = [(NSString *)v96 UTF8String];
                *buf = 136447235;
                *&buf[4] = v57;
                *&buf[12] = 2053;
                *&buf[14] = v58;
                *&buf[22] = 2053;
                *&buf[24] = v59;
                *&buf[32] = 1026;
                *&buf[34] = v60;
                *&buf[38] = 2081;
                *&buf[40] = v61;
                _os_log_impl(dword_100000000, v56, OS_LOG_TYPE_DEFAULT, "@TileReq, %{public}s, start, llsw, %{sensitive}.2lf, %{sensitive}.2lf, reach, %{public}d, url, %{private}s", buf, 0x30u);
              }

              if (sub_10000A100(121, 2))
              {
                bzero(buf, 0x65CuLL);
                if (qword_1025D4620 != -1)
                {
                  sub_101ABFF50();
                }

                v74 = sub_100085790(*v23);
                v75 = sub_100085338(v23);
                v76 = sub_100085314(v23);
                v77 = *(v3 + 424);
                v78 = [(NSString *)v96 UTF8String];
                *v107 = 136447235;
                *&v107[4] = v74;
                *&v107[12] = 2053;
                *&v107[14] = v75;
                *&v107[22] = 2053;
                *&v107[24] = v76;
                *&v107[32] = 1026;
                *&v107[34] = v77;
                *v108 = 2081;
                *&v108[2] = v78;
                v79 = _os_log_send_and_compose_impl();
                sub_100152C7C("Generic", 1, 0, 2, "void CLTilesManager::checkDownloadSchedule(CFAbsoluteTime)", "%s\n", v79);
                if (v79 != buf)
                {
                  free(v79);
                }
              }
            }
          }
        }

LABEL_148:
        v62 = v21[1];
        if (v62)
        {
          do
          {
            v63 = v62;
            v62 = *v62;
          }

          while (v62);
        }

        else
        {
          do
          {
            v63 = v21[2];
            v64 = *v63 == v21;
            v21 = v63;
          }

          while (!v64);
        }

        v21 = v63;
        if (v63 == v100)
        {
          goto LABEL_193;
        }
      }

      v32 = *(v22 + 113);
      v31 = v99;
LABEL_92:
      v35 = v102;
      if ((v32 & v31 & 1) == 0)
      {
        goto LABEL_94;
      }

      goto LABEL_93;
    }

LABEL_193:
    v82 = *(v3 + 128);
    if (qword_1025D4600 != -1)
    {
      sub_101ABFEE4();
    }

    v83 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
    {
      v84 = *(v3 + 144);
      v85 = *(v3 + 176);
      *buf = 67109888;
      *&buf[4] = v101;
      *&buf[8] = 2048;
      *&buf[10] = v82;
      *&buf[18] = 1024;
      *&buf[20] = v84;
      *&buf[24] = 1024;
      *&buf[26] = v85;
      _os_log_impl(dword_100000000, v83, OS_LOG_TYPE_DEBUG, "TILE: checkDownloadSchedule, numOfActiveDownloads, %d, tilesToDownload, %lu, small, %d, large, %d", buf, 0x1Eu);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4600 != -1)
      {
        sub_101ABFEE4();
      }

      v88 = *(v3 + 144);
      v89 = *(v3 + 176);
      *v107 = 67109888;
      *&v107[4] = v101;
      *&v107[8] = 2048;
      *&v107[10] = v82;
      *&v107[18] = 1024;
      *&v107[20] = v88;
      *&v107[24] = 1024;
      *&v107[26] = v89;
      v90 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "void CLTilesManager::checkDownloadSchedule(CFAbsoluteTime)", "%s\n", v90);
      if (v90 != buf)
      {
        free(v90);
      }
    }

    if ((*(v3 + 144) & 1) == 0 && (*(v3 + 176) & 1) == 0)
    {
      if (qword_1025D4620 != -1)
      {
        sub_101ABFF50();
      }

      v86 = qword_1025D4628;
      if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v86, OS_LOG_TYPE_DEBUG, "TILE: checkDownloadSchedule, NoActiveDownloads", buf, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101AC2E1C();
      }
    }
  }

  else
  {
    if (qword_1025D4600 != -1)
    {
      sub_101ABFEE4();
    }

    v81 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v81, OS_LOG_TYPE_INFO, "TILE: checkDownloadSchedule, both download requests null, shutdown?", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101AC2F00();
    }
  }
}

void sub_10025A178(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, int a39, __int16 a40, char a41, char a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, void *__p, uint64_t a49, int a50, __int16 a51, char a52, char a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, int a59, __int16 a60, char a61, char a62)
{
  if (a53 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

id sub_10025A1D8(uint64_t a1)
{
  v1 = [objc_msgSend(*(a1 + 16) "vendor")];

  return [v1 syncgetIsBroadConnection];
}

const void **sub_10025A210(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(a1 + 16);
  v3 = v2 - v1;
  if (v2 == v1)
  {
    v4 = 0;
  }

  else
  {
    v4 = 26 * ((v2 - v1) >> 3) - 1;
  }

  v5 = *(a1 + 32);
  if ((v4 - (*(a1 + 40) + v5)) < 0x1A)
  {
    v7 = *(a1 + 24);
    v8 = *a1;
    v9 = &v7[-*a1];
    if (v3 < v9)
    {
      if (v1 != v8)
      {
        operator new();
      }

      operator new();
    }

    if (v7 == v8)
    {
      v10 = 1;
    }

    else
    {
      v10 = v9 >> 2;
    }

    v11[4] = a1;
    sub_10045E858(a1, v10);
  }

  *(a1 + 32) = v5 + 26;
  v11[0] = *(v2 - 1);
  *(a1 + 16) = v2 - 8;
  return sub_10045E538(a1, v11);
}

void sub_10025A414(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  operator delete(v12);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10025A480(uint64_t a1)
{
  v1 = *(a1 + 112);
  v2 = (a1 + 120);
  if (v1 == (a1 + 120))
  {
    return 0;
  }

  LODWORD(v3) = 0;
  do
  {
    v4 = sub_100234DA4(v1[10]);
    v5 = sub_1002332E4(v1[10]);
    v3 = (v3 + v5);
    if (v5)
    {
      if (qword_1025D4600 != -1)
      {
        sub_101ABFEE4();
      }

      v6 = qword_1025D4608;
      if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
      {
        (*(*v1[10] + 16))(__p);
        v7 = __p;
        if (v20 < 0)
        {
          v7 = *__p;
        }

        *buf = 136315906;
        v24 = v7;
        v25 = 1024;
        v26 = 1;
        v27 = 1024;
        v28 = v3;
        v29 = 2048;
        v30 = v4;
        _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEBUG, "TILE: getNumOfActiveDownloads, tile, %s, is being downloaded, %d, total, %d, download, %p", buf, 0x22u);
        if (SHIBYTE(v20) < 0)
        {
          operator delete(*__p);
        }
      }

      if (sub_10000A100(121, 2))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1025D4600 != -1)
        {
          sub_101ABFEE4();
        }

        (*(*v1[10] + 16))(v14);
        v11 = v14;
        if (v15 < 0)
        {
          v11 = v14[0];
        }

        *__p = 136315906;
        *&__p[4] = v11;
        v17 = 1024;
        v18 = 1;
        v19 = 1024;
        v20 = v3;
        v21 = 2048;
        v22 = v4;
        v12 = _os_log_send_and_compose_impl();
        if (v15 < 0)
        {
          operator delete(v14[0]);
        }

        sub_100152C7C("Generic", 1, 0, 2, "unsigned int CLTilesManager::getNumOfActiveDownloads()", "%s\n", v12);
        if (v12 != buf)
        {
          free(v12);
        }
      }
    }

    v8 = v1[1];
    if (v8)
    {
      do
      {
        v9 = v8;
        v8 = *v8;
      }

      while (v8);
    }

    else
    {
      do
      {
        v9 = v1[2];
        v10 = *v9 == v1;
        v1 = v9;
      }

      while (!v10);
    }

    v1 = v9;
  }

  while (v9 != v2);
  return v3;
}

void sub_10025A784(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 20) <= 0.0)
  {
    sub_101AC5CF8();
  }

  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10025A820;
  v4[3] = &unk_1024707B8;
  v4[4] = a1;
  v4[5] = a2;
  sub_10024C7D0(a1, "updateTileLocationRelevancy", v4);
}

void sub_10025A820(uint64_t a1, uint64_t a2)
{
  if (*a2)
  {
    v4 = *(a1 + 32);
    (*(**(v4 + 464) + 56))(*(v4 + 464));
    v6 = *(a1 + 40);
    if (*(v6 + 20) < 0.0 || vabdd_f64(v5, *(v6 + 76)) > 3600.0)
    {
      if (qword_1025D4600 != -1)
      {
        sub_1003110B8();
      }

      v7 = qword_1025D4608;
      if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEBUG, "TILE: location not relevant", buf, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101AC61AC();
      }

      return;
    }

    sub_1000850D0(&v57, (a2 + 4));
    sub_10008511C(&v57, -1, *(*(a1 + 40) + 4), *(*(a1 + 40) + 12), *(a2 + 152), *(a2 + 160));
    if (sub_1000852BC(&v57))
    {
      v10 = sub_100085520(a2 + 184, &v57);
      v11 = v10;
      if (v10 && sub_10008AC98(v10, *(v4 + 200)))
      {
        v12 = (*(**(v4 + 464) + 56))(*(v4 + 464));
        v13 = sub_10025B540(v11, v12);
        if (qword_1025D4600 != -1)
        {
          sub_101ABFEE4();
        }

        v14 = qword_1025D4608;
        if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
        {
          v15 = *(a2 + 4);
          sub_100B4EFD4(&v57, __p);
          v16 = SHIBYTE(v62) >= 0 ? __p : __p[0];
          *buf = 67109634;
          *v71 = v13;
          *&v71[4] = 1024;
          *&v71[6] = v15;
          v72 = 2080;
          v73 = v16;
          _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_DEBUG, "TILE: updating mtime, %d, type, %d, tileid, %s", buf, 0x18u);
          if (SHIBYTE(v62) < 0)
          {
            operator delete(__p[0]);
          }
        }

        if (sub_10000A100(121, 2))
        {
          sub_101ABFF0C(buf);
          v52 = *(a2 + 4);
          sub_100B4EFD4(&v57, &v65);
          if (SHIBYTE(v69) >= 0)
          {
            v53 = &v65;
          }

          else
          {
            v53 = v65;
          }

          LODWORD(__p[0]) = 67109634;
          HIDWORD(__p[0]) = v13;
          LOWORD(__p[1]) = 1024;
          *(&__p[1] + 2) = v52;
          HIWORD(__p[1]) = 2080;
          v62 = v53;
          v54 = _os_log_send_and_compose_impl();
          if (SHIBYTE(v69) < 0)
          {
            operator delete(v65);
          }

          sub_100152C7C("Generic", 1, 0, 2, "void CLTilesManager::updateTileLocationRelevancy(const CLDaemonLocation &)_block_invoke", "%s\n", v54);
          if (v54 != buf)
          {
            free(v54);
          }
        }
      }

      v17 = *(a2 + 4);
      if (v17 == 1)
      {
        v18 = -18;
        p_info = &OBJC_METACLASS___CLMotionHintLoggerAdapter.info;
        while (1)
        {
          for (i = -18; i != 19; ++i)
          {
            if (!(i | v18))
            {
              continue;
            }

            *__p = v57;
            v62 = v58;
            if (SHIBYTE(v60) < 0)
            {
              sub_100007244(&v63, v59, *(&v59 + 1));
            }

            else
            {
              v63 = v59;
              v64 = v60;
            }

            v21 = *(a2 + 160);
            v22 = *(a2 + 152);
            *&v21 = v21;
            sub_100085AC4(__p, v18, i, v22, *&v21);
            if (sub_1000852BC(__p))
            {
              v23 = sub_100085520(a2 + 184, __p);
              v24 = v23;
              if (!v23 || !sub_10008AC98(v23, *(v4 + 200)))
              {
                goto LABEL_60;
              }

              v25 = (*(**(v4 + 464) + 56))(*(v4 + 464));
              v26 = sub_10025B540(v24, v25);
              if (p_info[192] != -1)
              {
                sub_101ABFEE4();
              }

              v27 = qword_1025D4608;
              if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
              {
                v28 = *(a2 + 4);
                sub_100B4EFD4(__p, &v65);
                v29 = &v65;
                if (SHIBYTE(v69) < 0)
                {
                  v29 = v65;
                }

                *buf = 67109634;
                *v71 = v26;
                *&v71[4] = 1024;
                *&v71[6] = v28;
                v72 = 2080;
                v73 = v29;
                _os_log_impl(dword_100000000, v27, OS_LOG_TYPE_DEBUG, "TILE: updating dem neighbor mtime, %d, type, %d, tileid, %s", buf, 0x18u);
                if (SHIBYTE(v69) < 0)
                {
                  operator delete(v65);
                }

                p_info = (&OBJC_METACLASS___CLMotionHintLoggerAdapter + 32);
              }

              if (!sub_10000A100(121, 2))
              {
                goto LABEL_60;
              }

              sub_101ABFF0C(buf);
              v30 = *(a2 + 4);
              sub_100B4EFD4(__p, v55);
              v31 = v55;
              if (v56 < 0)
              {
                v31 = v55[0];
              }

              LODWORD(v65) = 67109634;
              HIDWORD(v65) = v26;
              v66 = 1024;
              v67 = v30;
              v68 = 2080;
              v69 = v31;
              v32 = _os_log_send_and_compose_impl();
              if (v56 < 0)
              {
                operator delete(v55[0]);
              }

              sub_100152C7C("Generic", 1, 0, 2, "void CLTilesManager::updateTileLocationRelevancy(const CLDaemonLocation &)_block_invoke", "%s\n", v32);
              p_info = (&OBJC_METACLASS___CLMotionHintLoggerAdapter + 32);
            }

            else
            {
              if (p_info[192] != -1)
              {
                sub_101ABFEE4();
              }

              v33 = qword_1025D4608;
              if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
              {
                *buf = 0;
                _os_log_impl(dword_100000000, v33, OS_LOG_TYPE_DEBUG, "Invalid dem neighbor tile id!", buf, 2u);
              }

              if (!sub_10000A100(121, 2))
              {
                goto LABEL_60;
              }

              sub_101ABFF0C(buf);
              LOWORD(v65) = 0;
              v32 = _os_log_send_and_compose_impl();
              sub_100152C7C("Generic", 1, 0, 2, "void CLTilesManager::updateTileLocationRelevancy(const CLDaemonLocation &)_block_invoke", "%s\n", v32);
            }

            if (v32 != buf)
            {
              free(v32);
            }

LABEL_60:
            if (SHIBYTE(v64) < 0)
            {
              operator delete(v63);
            }
          }

          if (++v18 == 19)
          {
            v17 = *(a2 + 4);
            break;
          }
        }
      }

      if (v17 == 2)
      {
        v34 = -20;
        v35 = &OBJC_METACLASS___CLMotionHintLoggerAdapter.info;
        do
        {
          for (j = -20; j != 21; ++j)
          {
            if (!(j | v34))
            {
              continue;
            }

            *__p = v57;
            v62 = v58;
            if (SHIBYTE(v60) < 0)
            {
              sub_100007244(&v63, v59, *(&v59 + 1));
            }

            else
            {
              v63 = v59;
              v64 = v60;
            }

            v37 = *(a2 + 160);
            v38 = *(a2 + 152);
            *&v37 = v37;
            sub_100085AC4(__p, v34, j, v38, *&v37);
            if (sub_1000852BC(__p))
            {
              v39 = sub_100085520(a2 + 184, __p);
              v40 = v39;
              if (!v39 || !sub_10008AC98(v39, *(v4 + 200)))
              {
                goto LABEL_98;
              }

              v41 = (*(**(v4 + 464) + 56))(*(v4 + 464));
              v42 = sub_10025B540(v40, v41);
              if (v35[192] != -1)
              {
                sub_101ABFEE4();
              }

              v43 = qword_1025D4608;
              if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
              {
                v44 = *(a2 + 4);
                sub_100B4EFD4(__p, &v65);
                v45 = &v65;
                if (SHIBYTE(v69) < 0)
                {
                  v45 = v65;
                }

                *buf = 67109634;
                *v71 = v42;
                *&v71[4] = 1024;
                *&v71[6] = v44;
                v72 = 2080;
                v73 = v45;
                _os_log_impl(dword_100000000, v43, OS_LOG_TYPE_DEBUG, "TILE: updating HRSE neighbor mtime, %d, type, %d, tileid, %s", buf, 0x18u);
                if (SHIBYTE(v69) < 0)
                {
                  operator delete(v65);
                }

                v35 = (&OBJC_METACLASS___CLMotionHintLoggerAdapter + 32);
              }

              if (!sub_10000A100(121, 2))
              {
                goto LABEL_98;
              }

              sub_101ABFF0C(buf);
              v46 = *(a2 + 4);
              sub_100B4EFD4(__p, v55);
              v47 = v55;
              if (v56 < 0)
              {
                v47 = v55[0];
              }

              LODWORD(v65) = 67109634;
              HIDWORD(v65) = v42;
              v66 = 1024;
              v67 = v46;
              v68 = 2080;
              v69 = v47;
              v48 = _os_log_send_and_compose_impl();
              if (v56 < 0)
              {
                operator delete(v55[0]);
              }

              sub_100152C7C("Generic", 1, 0, 2, "void CLTilesManager::updateTileLocationRelevancy(const CLDaemonLocation &)_block_invoke", "%s\n", v48);
              v35 = (&OBJC_METACLASS___CLMotionHintLoggerAdapter + 32);
            }

            else
            {
              if (v35[192] != -1)
              {
                sub_101ABFEE4();
              }

              v49 = qword_1025D4608;
              if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
              {
                *buf = 0;
                _os_log_impl(dword_100000000, v49, OS_LOG_TYPE_DEBUG, "Invalid HRSE neighbor tile id!", buf, 2u);
              }

              if (!sub_10000A100(121, 2))
              {
                goto LABEL_98;
              }

              sub_101ABFF0C(buf);
              LOWORD(v65) = 0;
              v48 = _os_log_send_and_compose_impl();
              sub_100152C7C("Generic", 1, 0, 2, "void CLTilesManager::updateTileLocationRelevancy(const CLDaemonLocation &)_block_invoke", "%s\n", v48);
            }

            if (v48 != buf)
            {
              free(v48);
            }

LABEL_98:
            if (SHIBYTE(v64) < 0)
            {
              operator delete(v63);
            }
          }

          ++v34;
        }

        while (v34 != 21);
      }
    }

    else
    {
      if (qword_1025D4620 != -1)
      {
        sub_101ABFF50();
      }

      v50 = qword_1025D4628;
      if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v50, OS_LOG_TYPE_ERROR, "TileMgr, Invalid tile id!, #CloneMe", buf, 2u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_101ABFF78(buf);
        LOWORD(__p[0]) = 0;
        v51 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 0, "void CLTilesManager::updateTileLocationRelevancy(const CLDaemonLocation &)_block_invoke", "%s\n", v51);
        if (v51 != buf)
        {
          free(v51);
        }
      }
    }

    if (SHIBYTE(v60) < 0)
    {
      operator delete(v59);
    }
  }

  else
  {
    if (qword_1025D4600 != -1)
    {
      sub_1003110B8();
    }

    v8 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
    {
      v9 = a2 + 8;
      if (*(a2 + 31) < 0)
      {
        v9 = *(a2 + 8);
      }

      *buf = 136315138;
      *v71 = v9;
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEBUG, "TILE: tiles, %s, not active", buf, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101AC60AC();
    }
  }
}

void sub_10025B4AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34)
{
  if (a25 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10025B570(uint64_t a1, double *a2, double *a3)
{
  v6 = *(a1 + 40);
  v27 = v6;
  (*(*v6 + 16))(v6);
  v28 = 256;
  v7 = *a2;
  v8 = *(a1 + 192);
  if (*a2 < v8 || v7 < *(a1 + 232))
  {
    if (qword_1025D4620 != -1)
    {
      sub_101ABEA90();
    }

    v9 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_ERROR))
    {
      v10 = sub_100085790(*(a1 + 48));
      v11 = *a2;
      *buf = 136446466;
      v39 = v10;
      v40 = 2050;
      v41 = v11;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_ERROR, "@TileList, %{public}s, touch, ignoring, %{public}.2lf, #CloneMe", buf, 0x16u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_101ABEAA4(buf);
      v19 = sub_100085790(*(a1 + 48));
      v20 = *a2;
      *v35 = 136446466;
      *&v35[4] = v19;
      *&v35[12] = 2050;
      *&v35[14] = v20;
      v21 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 0, "BOOL CLTileFile::touchMTime(const CFAbsoluteTime &, const CFAbsoluteTime &)", "%s\n", v21);
      if (v21 != buf)
      {
        free(v21);
      }
    }

    goto LABEL_8;
  }

  if (vabdd_f64(v7, v8) < *a3)
  {
LABEL_8:
    v12 = 0;
    goto LABEL_9;
  }

  sub_100B4FFA8((a1 + 48), a1 + 8, &v26);
  v14 = *a2;
  *(a1 + 192) = *a2;
  *(a1 + 232) = v14;
  sub_100EE03C8(a1);
  *v35 = *(a1 + 48);
  *&v35[16] = *(a1 + 64);
  if (*(a1 + 95) < 0)
  {
    sub_100007244(&__p, *(a1 + 72), *(a1 + 80));
  }

  else
  {
    __p = *(a1 + 72);
    v37 = *(a1 + 88);
  }

  if (qword_1025D4620 != -1)
  {
    sub_101ABE668();
  }

  v15 = qword_1025D4628;
  if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_INFO))
  {
    v16 = sub_100085790(*v35);
    v17 = sub_100085338(v35);
    v18 = sub_100085314(v35);
    *buf = 136446723;
    v39 = v16;
    v40 = 2053;
    v41 = v17;
    v42 = 2053;
    v43 = v18;
    _os_log_impl(dword_100000000, v15, OS_LOG_TYPE_INFO, "@TileList, %{public}s, touch, llsw, %{sensitive}.2lf, %{sensitive}.2lf", buf, 0x20u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101ABEAA4(buf);
    v22 = sub_100085790(*v35);
    v23 = sub_100085338(v35);
    v24 = sub_100085314(v35);
    v29 = 136446723;
    v30 = v22;
    v31 = 2053;
    v32 = v23;
    v33 = 2053;
    v34 = v24;
    v25 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "BOOL CLTileFile::touchMTime(const CFAbsoluteTime &, const CFAbsoluteTime &)", "%s\n", v25);
    if (v25 != buf)
    {
      free(v25);
    }
  }

  if (SHIBYTE(v37) < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v26.__r_.__value_.__l.__data_);
  }

  v12 = 1;
LABEL_9:
  (*(*v6 + 24))(v6);
  return v12;
}

void sub_10025B9CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (a32 < 0)
  {
    operator delete(__p);
  }

  if (a16 < 0)
  {
    operator delete(a11);
  }

  sub_1017EC98C(&a17);
  _Unwind_Resume(a1);
}

id sub_10025BA74(id result, double *a2)
{
  v3 = -1.0;
  if (*(result + 209))
  {
    v4 = result;
    result = +[CLLocationDerivedSpeedEstimator isSupportedForDerivedSpeedEstimate];
    v5 = -1.0;
    v6 = -1.0;
    if (result)
    {
      result = [v4[209] currentEstimate];
      v3 = v7;
    }
  }

  else
  {
    v5 = -1.0;
    v6 = -1.0;
  }

  a2[117] = v3;
  a2[118] = v5;
  a2[119] = v6;
  return result;
}

void *sub_10025BB1C(void *result, double *a2, uint64_t a3, double *a4, uint64_t a5, uint64_t a6)
{
  if (a2 != a4)
  {
    while (*&a5 - *a2 <= *(a6 + 88))
    {
      a2 += 24;
      if ((a2 - *result) == 4032)
      {
        v6 = result[1];
        ++result;
        a2 = v6;
      }

      if (a2 == a4)
      {
        a2 = a4;
        break;
      }
    }
  }

  if (a2 != a4)
  {
    v7 = a2;
    v8 = result;
    while (1)
    {
      v7 += 24;
      if ((v7 - *v8) == 4032)
      {
        v9 = v8[1];
        ++v8;
        v7 = v9;
      }

      if (v7 == a4)
      {
        break;
      }

      if (*&a5 - *v7 <= *(a6 + 88))
      {
        v10 = *v7;
        v11 = *(v7 + 1);
        v12 = *(v7 + 3);
        *(a2 + 2) = *(v7 + 2);
        *(a2 + 3) = v12;
        *a2 = v10;
        *(a2 + 1) = v11;
        v13 = *(v7 + 4);
        v14 = *(v7 + 5);
        v15 = *(v7 + 7);
        *(a2 + 6) = *(v7 + 6);
        *(a2 + 7) = v15;
        *(a2 + 4) = v13;
        *(a2 + 5) = v14;
        v16 = *(v7 + 8);
        v17 = *(v7 + 9);
        v18 = *(v7 + 11);
        *(a2 + 10) = *(v7 + 10);
        *(a2 + 11) = v18;
        *(a2 + 8) = v16;
        *(a2 + 9) = v17;
        a2 += 24;
        if ((a2 - *result) == 4032)
        {
          v19 = result[1];
          ++result;
          a2 = v19;
        }
      }
    }
  }

  return result;
}

BOOL sub_10025BC08(uint64_t a1)
{
  v2 = sub_10000B1F8();
  v10 = 1;
  v3 = sub_10001A6B0(v2, &v10);
  v4 = (a1 + 2296);
  result = 0;
  if (sub_10025BD44(a1 + 2296))
  {
    v5 = *v4;
    if (*v4 >= 0.0 && (v5 > v3 || v3 - v5 <= 6.0) && !sub_1001253BC(a1 + 2424, v3, 6.0))
    {
      v8 = *(a1 + 2448);
      if ((v8 - 3) < 8 || !v8)
      {
        if (*(a1 + 2776))
        {
          return 1;
        }

        if (*(a1 + 2777))
        {
          return 1;
        }

        if (sub_1001252CC(a1 + 2424, v3, 6.0))
        {
          return 1;
        }

        v9 = sub_10002F470();
        if (sub_10020C654((a1 + 2632), v9) || sub_100125258(a1 + 2424, v3, 6.0) || sub_10020C700(a1 + 2424) || sub_1001254F8(a1 + 2424) || sub_1001255A0(a1 + 2424, v3, 6.0) || sub_100125608(a1 + 2424, v3, 6.0))
        {
          return 1;
        }
      }
    }
  }

  return result;
}

BOOL sub_10025BD44(uint64_t a1)
{
  if (*a1 <= 0.0)
  {
    return 0;
  }

  v1 = *(a1 + 8);
  if (!v1)
  {
    return 0;
  }

  v2 = *(a1 + 12);
  if (!v2)
  {
    return 0;
  }

  v3 = *(a1 + 28);
  v12 = v3 <= 0;
  v4 = v3 > 0;
  v5 = 1;
  if (v12)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  if (*(a1 + 32) <= 0)
  {
    v7 = v4;
  }

  else
  {
    v7 = v6;
  }

  if (*(a1 + 36) > 0)
  {
    ++v7;
  }

  if (*(a1 + 40) > 0)
  {
    ++v7;
  }

  if (v7 <= 2)
  {
    v8 = *(a1 + 20);
    v9 = v2 / v1 * 100.0 < 50.0 || v8 / v2 * 100.0 < 40.0;
    if (v9 && ((v10 = *(a1 + 24), v10 < 5) || v8 <= 4))
    {
      v12 = v7 != 2 || v10 <= 3;
      return !v12;
    }

    else
    {
      return 1;
    }
  }

  return v5;
}

void sub_10025BE14(uint64_t a1, double *a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v5 = a4;
  v6 = a2;
  v7 = a4 - 1;
  if (a4 != 1)
  {
    v8 = a3;
    v9 = a2;
    v10 = a4 - 1;
    do
    {
      v11 = *v8++;
      *v9++ = v11;
      --v10;
    }

    while (v10);
  }

  if (a5)
  {
    v12 = 0;
    do
    {
      if (a4 == 1)
      {
        v13 = v12 + 1;
      }

      else
      {
        v13 = v12 + 1;
        v14 = &a3[(v12 + 1) * v7];
        v15 = a2;
        v16 = a4 - 1;
        do
        {
          v17 = *v14++;
          *v15 = *v15 + *(a1 + 8 * v12) * v17;
          ++v15;
          --v16;
        }

        while (v16);
      }

      v12 = v13;
    }

    while (v13 != a5);
  }

  a2[v7] = 1.0;
  v18 = 1.0;
  if (a4 == 1)
  {
    goto LABEL_19;
  }

  v19 = a2;
  do
  {
    v20 = exp(*v19);
    *v19++ = v20;
    v18 = v18 + v20;
    --v7;
  }

  while (v7);
  if (v5)
  {
LABEL_19:
    do
    {
      *v6 = *v6 / v18;
      ++v6;
      --v5;
    }

    while (v5);
  }
}

void sub_10025BF24(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    *(a1 + 32) = v2;
    operator delete(v2);
  }
}

void *sub_10025BF3C(void *a1)
{
  *a1 = off_1024DE6A0;
  v2 = a1[19];
  if (v2)
  {
    sub_100008080(v2);
  }

  return a1;
}

NSDictionary *sub_10025BFA4(uint64_t a1)
{
  v13[0] = @"reason";
  v14[0] = [NSString stringWithUTF8String:*(a1 + 32)];
  v13[1] = @"rat";
  sub_100075160(a1 + 40, v11);
  if (v12 >= 0)
  {
    v2 = v11;
  }

  else
  {
    v2 = v11[0];
  }

  v14[1] = [NSString stringWithUTF8String:v2];
  v13[2] = @"type";
  sub_100096990(a1 + 40, __p);
  if (v10 >= 0)
  {
    v3 = __p;
  }

  else
  {
    v3 = __p[0];
  }

  v14[2] = [NSString stringWithUTF8String:v3];
  v13[3] = @"accuracy";
  v14[3] = [NSNumber numberWithDouble:*(a1 + 804)];
  v13[4] = @"source";
  v4 = (a1 + 736);
  if (*(a1 + 759) < 0)
  {
    v4 = *v4;
  }

  v14[4] = [NSString stringWithUTF8String:v4];
  v13[5] = @"match";
  v5 = (a1 + 760);
  if (*(a1 + 783) < 0)
  {
    v5 = *v5;
  }

  v6 = [NSString stringWithUTF8String:v5];
  v13[6] = @"daily";
  v14[5] = v6;
  v14[6] = &off_10254EE10;
  v7 = [NSDictionary dictionaryWithObjects:v14 forKeys:v13 count:7];
  if (v10 < 0)
  {
    operator delete(__p[0]);
  }

  if (v12 < 0)
  {
    operator delete(v11[0]);
  }

  return v7;
}

void sub_10025C160(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10025C1A0(uint64_t a1, __int128 *a2, void *aBlock)
{
  if (*(a1 + 8))
  {
    v8[0] = 0;
    v8[1] = v8;
    v8[2] = 0x4812000000;
    v8[3] = sub_100F66278;
    v8[4] = nullsub_1743;
    v8[5] = &unk_10238AE8B;
    v9 = *a2;
    v10 = *(a2 + 2);
    if (aBlock)
    {
      v4 = _Block_copy(aBlock);
    }

    else
    {
      v4 = 0;
    }

    v6 = *a1;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_10025C784;
    v7[3] = &unk_102462080;
    v7[5] = v8;
    v7[6] = a1;
    v7[4] = v4;
    dispatch_async(v6, v7);
    _Block_object_dispose(v8, 8);
  }

  else if (aBlock)
  {
    v5 = *(aBlock + 2);

    v5(aBlock, 0);
  }
}

void sub_10025C2D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10025C2F8(void *a1, unint64_t a2, unint64_t a3, float *a4)
{
  v73.n128_u64[0] = a2;
  v73.n128_u64[1] = a3;
  if (a2 != 1)
  {
    return 0;
  }

  if (*(&a3 + 1) < 4.0 && *&a3 >= 0.0)
  {
    sub_100296580(a1 + 179, &v73);
    v6 = a1[184];
    if (v6 >= 3)
    {
      v7 = a1[180];
      v8 = a1[183];
      v9 = (v7 + 8 * (v8 >> 8));
      if (a1[181] == v7)
      {
        v10 = 0;
      }

      else
      {
        v10 = *v9 + 16 * v8;
      }

      v68 = v7 + 8 * (v8 >> 8);
      v69 = v10;
      v11 = sub_100014378(&v68, v6);
      v13 = (v12 - *v11) >> 4;
      if (v13 < 4)
      {
        v17 = 258 - v13;
        v15 = &v11[-(v17 >> 8)];
        v16 = *v15 + 16 * ~v17;
      }

      else
      {
        v14 = v13 - 3;
        v15 = &v11[v14 >> 8];
        v16 = *v15 + 16 * v14;
      }

      sub_1000B3638(a1 + 179, v9, v10, v15, v16);
      sub_100296C1C(&v68, a1 + 179);
      if (v70 == v69)
      {
        v18 = 0;
      }

      else
      {
        v18 = *(v69 + 8 * (v71 >> 8)) + 16 * v71;
      }

      v67[0] = v69 + 8 * (v71 >> 8);
      v67[1] = v18;
      v19 = sub_100014378(v67, v72 >> 1);
      v21 = v20;
      v22 = (v69 + 8 * (v71 >> 8));
      if (v70 == v69)
      {
        v23 = 0;
        v25 = 0;
        v24 = (v69 + 8 * ((v72 + v71) >> 8));
      }

      else
      {
        v23 = (*v22 + 16 * v71);
        v24 = (v69 + 8 * ((v72 + v71) >> 8));
        v25 = (*v24 + 16 * (v72 + v71));
      }

      v67[0] = &stru_1024C0B90;
      if (v21 != v25)
      {
        sub_100296CC0(v22, v23, v19, v21, v24, v25, v67);
      }

      sub_100296580(a1 + 185, v21);
      sub_100102BC8(&v68);
    }
  }

  Current = CFAbsoluteTimeGetCurrent();
  v27 = a1[186];
  v28 = a1[189];
  v29 = (v27 + 8 * (v28 >> 8));
  v30 = a1[187];
  if (v30 == v27)
  {
    v32 = 0;
    v41 = 0;
    v33 = a1 + 190;
    v42 = (v27 + 8 * ((v28 + a1[190]) >> 8));
  }

  else
  {
    v31 = *v29;
    v32 = *v29 + 16 * v28;
    v33 = a1 + 190;
    v34 = *(v27 + (((a1[190] + v28) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (*(a1 + 1520) + v28);
    if (v32 != v34)
    {
      while (Current + -30.0 <= *(v32 + 4))
      {
        v32 += 16;
        if (v32 - v31 == 4096)
        {
          v35 = v29[1];
          ++v29;
          v31 = v35;
          v32 = v35;
        }

        if (v32 == v34)
        {
          v32 = *(v27 + (((a1[190] + v28) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (*(a1 + 1520) + v28);
          goto LABEL_38;
        }
      }
    }

    if (v32 != v34)
    {
      v36 = Current + -30.0;
      v37 = v32;
      for (i = v29; ; v31 = *i)
      {
        v37 += 16;
        if (v37 - v31 == 4096)
        {
          v39 = i[1];
          ++i;
          v37 = v39;
        }

        if (v37 == v34)
        {
          break;
        }

        if (v36 <= *(v37 + 4))
        {
          *v32 = *v37;
          v32 += 16;
          if (v32 - *v29 == 4096)
          {
            v40 = v29[1];
            ++v29;
            v32 = v40;
          }
        }
      }

      v28 = a1[189];
      v27 = a1[186];
      v30 = a1[187];
    }

LABEL_38:
    v43 = v28 + *v33;
    v42 = (v27 + 8 * (v43 >> 8));
    v41 = v30 == v27 ? 0 : *v42 + 16 * v43;
  }

  sub_1000B3638(a1 + 185, v29, v32, v42, v41);
  v44 = *v33;
  if (*v33 < 0xA)
  {
    return 0;
  }

  v45 = a1[186];
  v46 = a1[189];
  v47 = (v45 + 8 * (v46 >> 8));
  if (a1[187] == v45)
  {
    v48 = 0;
  }

  else
  {
    v48 = *v47 + 16 * v46;
  }

  v68 = v45 + 8 * (v46 >> 8);
  v69 = v48;
  v50 = sub_100014378(&v68, v44);
  v52 = (v51 - *v50) >> 4;
  if (v52 < 11)
  {
    v56 = 265 - v52;
    v54 = &v50[-(v56 >> 8)];
    v55 = *v54 + 16 * ~v56;
  }

  else
  {
    v53 = v52 - 10;
    v54 = &v50[v53 >> 8];
    v55 = *v54 + 16 * v53;
  }

  sub_1000B3638(a1 + 185, v47, v48, v54, v55);
  v57 = a1[186];
  if (a1[187] == v57)
  {
    v62 = *v33;
  }

  else
  {
    v58 = a1[189];
    v59 = (v57 + 8 * (v58 >> 8));
    v60 = *v59;
    v61 = *v59 + 16 * v58;
    v62 = a1[190];
    v63 = *(v57 + (((v62 + v58) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (v62 + v58);
    if (v61 != v63)
    {
      v64 = 0.0;
      do
      {
        v65 = v61 + 16;
        if (v61 + 16 - v60 == 4096)
        {
          v66 = v59[1];
          ++v59;
          v60 = v66;
          v65 = v66;
        }

        v64 = v64 + (*(v61 + 8) - *(v61 + 12));
        v61 = v65;
      }

      while (v65 != v63);
      goto LABEL_58;
    }
  }

  v64 = 0.0;
LABEL_58:
  *a4 = v64 / v62;
  return 1;
}

void sub_10025C76C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_100102BC8(va);
  _Unwind_Resume(a1);
}

void sub_10025C784(void *a1)
{
  v2 = a1[6];
  *(*(a1[5] + 8) + 48) = 5;
  v3 = sub_1000B93E4(v2, *(a1[5] + 8) + 48, 24);
  v4 = a1[4];
  if (v4)
  {
    (*(v4 + 16))(v4, v3);
    v5 = a1[4];

    _Block_release(v5);
  }
}

void *sub_10025C808(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x100;
  v3 = v1 - 256;
  if (!v2)
  {
    v6 = a1[2];
    v7 = a1[3];
    v8 = v7 - *a1;
    if (v6 - a1[1] < v8)
    {
      if (v7 != v6)
      {
        operator new();
      }

      operator new();
    }

    if (v7 == *a1)
    {
      v9 = 1;
    }

    else
    {
      v9 = v8 >> 2;
    }

    v11 = a1;
    sub_10045E858(a1, v9);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v10 = *v4;
  a1[1] = v4 + 1;
  return sub_10045E430(a1, &v10);
}

void sub_10025C990(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_10025C9DC(uint64_t a1, _OWORD *a2)
{
  v3 = a2[1];
  *(a1 + 16) = *a2;
  *(a1 + 32) = v3;
  if (qword_1025D4600 != -1)
  {
    sub_101870488();
  }

  v4 = qword_1025D4608;
  if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_INFO))
  {
    v5 = *(a1 + 16);
    v6 = *(a1 + 24);
    v7 = *(a1 + 32);
    v8 = *(a1 + 40);
    v15 = 134349824;
    v16 = v5;
    v17 = 2050;
    v18 = v6;
    v19 = 2050;
    v20 = v7;
    v21 = 2050;
    v22 = v8;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_INFO, "#indoor-fitness-classifier, debounce params updated (secs), cyclingToNonFitness, %{public}lld, runningToNonFitness, %{public}lld, nonFitnessToCycling, %{public}lld, notFitnessToRunning, %{public}lld", &v15, 0x2Au);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018705A4((a1 + 16), a1, v9, v10, v11, v12, v13, v14);
  }
}

void *sub_10025CAE0(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *result = a2;
  result[1] = a3;
  result[2] = a4;
  result[3] = a5;
  return result;
}

void sub_10025CAF4(id *a1)
{
  if (*a1)
  {

    *a1 = 0;
  }
}

void sub_10025CB28(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v6 = (a1 + 8);
  if ([*(a1 + 8) state] == 2)
  {
    if (*[*v6 latestPosition])
    {
      v7 = [*v6 latestPosition];
      if ((*v7 & 1) == 0)
      {
        sub_10186A448();
      }

      if (sub_10025D0EC((v7 + 8), a2))
      {
        if (qword_1025D4620 != -1)
        {
          sub_101869E48();
        }

        v8 = qword_1025D4628;
        if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
        {
          if (*(a3 + 23) >= 0)
          {
            v9 = a3;
          }

          else
          {
            v9 = *a3;
          }

          *buf = 136315138;
          *&buf[4] = v9;
          _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEBUG, "latest position is stale - skipping pipelined venue availability update, after %s", buf, 0xCu);
        }

        if (sub_10000A100(121, 2))
        {
          sub_10186E53C();
        }
      }

      else if (![*v6 pipelinedSeeded])
      {
        v14 = [*v6 latestPosition];
        if ((*v14 & 1) == 0)
        {
          sub_10186A8B0();
        }

        v15 = *(v14 + 28);
        v16 = *(v14 + 12);
        v38 = *(v14 + 108);
        v35 = v38;
        v36 = v15;
        v37 = v16;
        memcpy(buf, &unk_101C7C020, 0x230uLL);
        v17 = [[CLGpsPosition alloc] initWithLocation:v34 andPrivateLocation:buf];
        v32 = 0;
        v33 = 0;
        [*(a1 + 16) venueGroupDistance];
        v31[1] = v18;
        v32 = [*(a1 + 16) fakeLastFix];
        v33 = sub_10001CF04();
        v19 = [*(a1 + 8) locationGroups];
        [*(a1 + 8) availabilityZScoreConfidenceInterval];
        [*(a1 + 8) setPipelinedVenues:{+[CLIndoorCommonHooks nearestVenues:availableVenues:latestPosition:availabilityZScoreConfidenceInterval:settings:isAllowedMultipleVenues:](CLIndoorCommonHooks, "nearestVenues:availableVenues:latestPosition:availabilityZScoreConfidenceInterval:settings:isAllowedMultipleVenues:", a2, v19, v17, v31, 1)}];

        if ([*(a1 + 8) locationGroupsLoaded])
        {
          if (qword_1025D4620 != -1)
          {
            sub_101869E5C();
          }

          v20 = qword_1025D4628;
          if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_INFO))
          {
            v21 = [objc_msgSend(*v6 "pipelinedVenues")];
            v22 = [objc_msgSend(*v6 "locationGroups")];
            v23 = [*v6 latestPosition];
            if ((*v23 & 1) == 0)
            {
              sub_10186A448();
            }

            v24 = *(v23 + 108);
            v25 = [*v6 latestPosition];
            if ((*v25 & 1) == 0)
            {
              sub_10186A448();
            }

            v26 = *(v25 + 116);
            v27 = sub_10001CF04();
            if (*(a3 + 23) >= 0)
            {
              v28 = a3;
            }

            else
            {
              v28 = *a3;
            }

            *v39 = 134350339;
            v40 = v21;
            v41 = 2050;
            v42 = v22;
            v43 = 2053;
            v44 = v24;
            v45 = 2053;
            v46 = v26;
            v47 = 1026;
            v48 = v27;
            v49 = 2081;
            v50 = v28;
            _os_log_impl(dword_100000000, v20, OS_LOG_TYPE_INFO, "selected %{public}zu out of %{public}lu candidates near lat,lng = %{sensitive}lf,%{sensitive}lf, wifi2enabled = %{public}d, because %{private}s", v39, 0x3Au);
          }

          if (sub_10000A100(121, 2))
          {
            sub_10186E298();
          }
        }

        else
        {
          if (qword_1025D4620 != -1)
          {
            sub_101869E5C();
          }

          v29 = qword_1025D4628;
          if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
          {
            *v39 = 0;
            _os_log_impl(dword_100000000, v29, OS_LOG_TYPE_DEFAULT, "#Warning Why are we calling updateNearbyVenues but availability tiles are not loaded?", v39, 2u);
          }

          if (sub_10000A100(121, 2))
          {
            sub_10186E1BC();
          }
        }

        if (![objc_msgSend(*v6 "pipelinedVenues")] && ((*(**(a1 + 24) + 104))(*(a1 + 24)) & 1) == 0)
        {
          if (qword_1025D4620 != -1)
          {
            sub_101869E5C();
          }

          v30 = qword_1025D4628;
          if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
          {
            *v39 = 0;
            _os_log_impl(dword_100000000, v30, OS_LOG_TYPE_DEBUG, "No venues to use for pipelined - disconnecting", v39, 2u);
          }

          if (sub_10000A100(121, 2))
          {
            sub_10186E460();
          }

          (*(**(a1 + 24) + 168))(*(a1 + 24));
        }
      }
    }

    else
    {
      if (qword_1025D4620 != -1)
      {
        sub_101869E48();
      }

      v12 = qword_1025D4628;
      if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
      {
        if (*(a3 + 23) >= 0)
        {
          v13 = a3;
        }

        else
        {
          v13 = *a3;
        }

        *buf = 136315138;
        *&buf[4] = v13;
        _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_DEBUG, "no position yet to update venue availability with, after %s", buf, 0xCu);
      }

      if (sub_10000A100(121, 2))
      {
        sub_10186E0D0();
      }
    }
  }

  else
  {
    if (qword_1025D4620 != -1)
    {
      sub_101869E48();
    }

    v10 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_ERROR))
    {
      if (*(a3 + 23) >= 0)
      {
        v11 = a3;
      }

      else
      {
        v11 = *a3;
      }

      *buf = 136446210;
      *&buf[4] = v11;
      _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_ERROR, "Attempt to update venue availability because %{public}s; but not running", buf, 0xCu);
    }

    if (sub_10000A100(121, 0))
    {
      sub_10186DFDC();
    }
  }
}

BOOL sub_10025D130(uint64_t a1)
{
  if (*[*(a1 + 8) lastIndoorError] != 1)
  {
    return 0;
  }

  v2 = [*(a1 + 8) lastIndoorError];
  if ((*v2 & 1) == 0)
  {
    sub_10186A448();
  }

  return v2[4] == 4;
}

BOOL sub_10025D18C(uint64_t a1, uint64_t a2)
{
  result = sub_10025D130(a1);
  if (result)
  {
    if ([*(a1 + 8) wifiAssociated])
    {
      return 0;
    }

    v5 = *(a1 + 8);
    if (!v5)
    {
      goto LABEL_41;
    }

    [v5 lastPrefetchTimestamp];
    if ((buf[0] & 1) == 0)
    {
      goto LABEL_41;
    }

    v6 = *(a1 + 8);
    if (v6)
    {
      [v6 lastPrefetchTimestamp];
      v6 = *(a1 + 8);
    }

    else
    {
      v25 = 0;
      v26 = 0;
    }

    v7 = [v6 lastIndoorError];
    if ((*v7 & 1) == 0)
    {
      sub_10186A448();
    }

    if (v25 == 1 && v7[1] < v26)
    {
      return 0;
    }

    else
    {
LABEL_41:
      if ([*(a1 + 8) pipelinedVenues])
      {
        if ([*(a1 + 8) locationGroupsLoaded])
        {
          v8 = [*(a1 + 8) locationGroups];
          v22 = 0u;
          v23 = 0u;
          v20 = 0u;
          v21 = 0u;
          v9 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
          if (v9)
          {
            v11 = *v21;
            *&v10 = 138412290;
            v19 = v10;
            do
            {
              v12 = 0;
              do
              {
                if (*v21 != v11)
                {
                  objc_enumerationMutation(v8);
                }

                v13 = *(*(&v20 + 1) + 8 * v12);
                if ([objc_msgSend(*(a1 + 8) pipelinedVenues])
                {
                  v14 = [v13 getLocationIds];
                  if (*v14 == v14[1])
                  {
                    if (qword_1025D4620 != -1)
                    {
                      sub_101869E5C();
                    }

                    v15 = qword_1025D4628;
                    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
                    {
                      v16 = [v13 groupId];
                      *buf = v19;
                      v28 = v16;
                      _os_log_impl(dword_100000000, v15, OS_LOG_TYPE_DEFAULT, "#Warning Skipping location group %@ - it has no floors", buf, 0xCu);
                    }

                    if (sub_10000A100(121, 2))
                    {
                      sub_101870354(&v25, v13, (&v25 + 4));
                    }
                  }

                  else if (+[CLLocationContextUtil isIndoor:](CLLocationContextUtil, "isIndoor:", [v13 locationContext]))
                  {
                    return 0;
                  }
                }

                v12 = v12 + 1;
              }

              while (v9 != v12);
              v9 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
            }

            while (v9);
          }
        }
      }

      v17 = [*(a1 + 8) lastIndoorError];
      if ((*v17 & 1) == 0)
      {
        sub_10186A448();
      }

      if (sub_10025D130(a1))
      {
        v18 = 300000000000;
      }

      else
      {
        v18 = [*(a1 + 16) errorBackoffDuration];
      }

      return v17[1] + v18 > a2;
    }
  }

  return result;
}

uint64_t sub_10025D484(uint64_t a1)
{
  v2 = (a1 + 8);
  if ([*(a1 + 8) state] != 2)
  {
    sub_10186AD78();
  }

  if (![objc_msgSend(*v2 "pipelinedVenues")])
  {
    sub_10186B34C();
  }

  if ([*v2 pipelinedSeeded])
  {
    sub_10186AEE8();
  }

  sub_10000EC00(__p, "startdeamon");
  sub_10017F2F4(a1, 1, __p);
  if (v11 < 0)
  {
    operator delete(*__p);
  }

  [*v2 setPipelinedDidStartLocalizing:0];
  if (qword_1025D4620 != -1)
  {
    sub_101869E5C();
  }

  v3 = qword_1025D4628;
  if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
  {
    *__p = 0;
    _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEFAULT, "@ClxIndoor, state, 1, start", __p, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10186B058();
  }

  if (sub_10001CF04())
  {
    if (qword_1025D4620 != -1)
    {
      sub_101869E5C();
    }

    v4 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
    {
      *__p = 0;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEFAULT, "@ClxWifi2, state, 1, start", __p, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10186B13C();
    }
  }

  sub_10000EC00(__p, "startDaemonLocalizingImpl");
  sub_10025D7D0(a1, __p);
  if (v11 < 0)
  {
    operator delete(*__p);
  }

  (*(**(a1 + 24) + 160))(*(a1 + 24));
  if (qword_1025D4620 != -1)
  {
    sub_101869E5C();
  }

  v5 = qword_1025D4628;
  if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
  {
    v6 = [objc_msgSend(objc_msgSend(objc_msgSend(objc_msgSend(*v2 "pipelinedVenues")];
    *__p = 136380675;
    *&__p[4] = v6;
    _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEBUG, "'Seeding pipelined' i.e. setVenuesAndStartLocalizer, with venues %{private}s", __p, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10186B220(v2);
  }

  v7 = *(a1 + 24);
  v8 = [*(a1 + 8) latestPosition];
  if ((*v8 & 1) == 0)
  {
    sub_10186A8B0();
  }

  return (*(*v7 + 120))(v7, v8 + 8, [*v2 lastARSessionState]);
}

void sub_10025D7A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10025D7D0(uint64_t a1, uint64_t *a2)
{
  if ([*(a1 + 8) fSpectatingLocation])
  {
    if (qword_1025D4620 != -1)
    {
      sub_101869E48();
    }

    v4 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
    {
      if (*(a2 + 23) >= 0)
      {
        v5 = a2;
      }

      else
      {
        v5 = *a2;
      }

      v7 = 136315138;
      v8 = v5;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "stopping location spectating because %s", &v7, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10186B4BC();
    }

    [*(a1 + 8) setFSpectatingLocation:0];
  }

  return (*(**(a1 + 24) + 32))(*(a1 + 24));
}

void sub_10025D918(uint64_t a1)
{
  v2 = (a1 + 152);
  v3 = [objc_msgSend(*(a1 + 152) "indoorBundle")];
  [objc_msgSend(*v2 "indoord")];
  [*v2 setIndoord:0];
  v4 = [[v3 alloc] initWithApiKey:@"4d44bee9-c1f9-4074-974c-86076b5311ef" onServer:@"https://purpleslam.apple.com"];
  [*v2 setIndoord:v4];

  if ([*v2 indoord])
  {
    if (qword_1025D4620 != -1)
    {
      sub_101B1AC14();
    }

    v5 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [*v2 indoord];
      v8 = 134349056;
      v9 = v6;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEFAULT, "#Notice fBounce.indoord = %{public}p", &v8, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101B1E2D8(v2);
    }

    [objc_msgSend(*(a1 + 152) "indoord")];
    [*(*(a1 + 376) + 16) register:*(*(a1 + 376) + 8) forNotification:4 registrationInfo:0];
  }

  else
  {
    if (qword_1025D4620 != -1)
    {
      sub_101B1AC14();
    }

    v7 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_FAULT))
    {
      LOWORD(v8) = 0;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_FAULT, "failed to load principal class from indoor bundle", &v8, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_101B1E3DC();
    }
  }
}

void sub_10025DB04(uint64_t a1, uint64_t a2, void *a3)
{
  if (qword_1025D4620 != -1)
  {
    sub_101B1AC14();
  }

  v6 = qword_1025D4628;
  if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_INFO))
  {
    v7 = *(a2 + 4);
    v8 = *(a2 + 12);
    v9 = *(a2 + 20);
    LODWORD(v11[0]) = 134546177;
    *(v11 + 4) = v7;
    WORD2(v11[1]) = 2053;
    *(&v11[1] + 6) = v8;
    HIWORD(v11[2]) = 2050;
    v11[3] = v9;
    _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_INFO, "request to start indoor,%{sensitive}lf,%{sensitive}lf,%{public}lf", v11, 0x20u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101B1DEFC();
  }

  memcpy(v11, &unk_101C7C020, 0x230uLL);
  v10 = [[CLGpsPosition alloc] initWithLocation:a2 andPrivateLocation:v11];
  [objc_msgSend(*(a1 + 152) "indoord")];

  sub_10025DC80(a1, a3);
  sub_10025DD98(a1, 1);
}

id sub_10025DC80(uint64_t a1, void *a2)
{
  result = [*(a1 + 152) indoord];
  if (result)
  {
    if (qword_1025D4620 != -1)
    {
      sub_101B1AC14();
    }

    v5 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
    {
      v6[0] = 67240192;
      v6[1] = a2;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEFAULT, "ClxIndoor, enablement, ar state, %{public}d", v6, 8u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101B1E018(a2);
    }

    return [objc_msgSend(*(a1 + 152) "indoord")];
  }

  return result;
}

void sub_10025DD98(uint64_t a1, char a2)
{
  v5[0] = 11;
  if (sub_10000608C(a1, v5, 1))
  {
    sub_100021AFC(v5);
    v8 = 10;
    v9 = a2;
    v4 = 11;
    (*(*a1 + 152))(a1, &v4, v5, 1, 0xFFFFFFFFLL, 0);

    if (v12)
    {
      sub_100008080(v12);
    }

    if (v11 < 0)
    {
      operator delete(v10);
    }

    if (v7)
    {
      sub_100008080(v7);
    }

    if (v6)
    {
      sub_100008080(v6);
    }
  }
}

void sub_10025DE7C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100311054(va);
  _Unwind_Resume(a1);
}

void sub_10025DEA4(uint64_t a1, uint64_t a2)
{
  if (qword_1025D4620 != -1)
  {
    sub_101869E48();
  }

  v4 = qword_1025D4628;
  if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(__p[0]) = 0;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "New pipelined client", __p, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10186F5BC();
  }

  if ((*(**(a1 + 24) + 208))(*(a1 + 24)))
  {
    sub_10025DFCC(a1, 1);
  }

  sub_10000EC00(__p, "onClientAddition");
  sub_10022C7A4(a1, a2, __p);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_10025DFB0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10025DFCC(uint64_t a1, void *a2)
{
  result = [*(a1 + 8) gpsFusionRequested];
  if (result != a2)
  {
    if (qword_1025D4620 != -1)
    {
      sub_101869E48();
    }

    v5 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_INFO))
    {
      v6[0] = 67240192;
      v6[1] = a2;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_INFO, "onGpsFusionRequest, %{public}d", v6, 8u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10186C4E8(a2);
    }

    [*(a1 + 8) setGpsFusionRequested:a2];
    result = [*(a1 + 8) gpsAssistanceRequested];
    if ((result & 1) == 0)
    {
      return (*(**(a1 + 24) + 192))(*(a1 + 24), [*(a1 + 8) gpsFusionRequested]);
    }
  }

  return result;
}

uint64_t sub_10025E11C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (qword_1025D4620 != -1)
    {
      sub_101B1AC14();
    }

    v3 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_INFO, "Enabling GPS assistance for pipeline", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101B1CA50();
    }

    [*(*(a1 + 352) + 16) register:*(*(a1 + 352) + 8) forNotification:0 registrationInfo:0];
    if (qword_1025D4650 != -1)
    {
      sub_101B1C94C();
    }

    v4 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEFAULT, "#wigo,on,IndoorLocationProvider", v10, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101B1CB2C();
    }
  }

  else
  {
    if (qword_1025D4620 != -1)
    {
      sub_101B1AC14();
    }

    v5 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_INFO))
    {
      *v9 = 0;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_INFO, "Disabling GPS assistance for pipeline", v9, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101B1C870();
    }

    [*(*(a1 + 352) + 16) unregister:*(*(a1 + 352) + 8) forNotification:0];
    if (qword_1025D4650 != -1)
    {
      sub_101B1C94C();
    }

    v6 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEFAULT, "#wigo,off,IndoorLocationProvider", v8, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101B1C974();
    }
  }

  return AnalyticsSendEventLazy();
}

void sub_10025E348(uint64_t a1, int *a2, uint64_t a3, id *a4)
{
  CLProfilingIdentify();
  [objc_msgSend(*a4 "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_10199A360();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v11 = 1;
    v8 = _os_activity_create(dword_100000000, "CL: CLGnssAssistanceMotion::onMotionNotification", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v8, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_10199A374();
    }

    v9 = qword_1025D47F8;
    if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 68289538;
      v13 = 0;
      v14 = 2082;
      v15 = "";
      v16 = 2082;
      v17 = "activity";
      v18 = 2050;
      v19 = a4;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLGnssAssistanceMotion::onMotionNotification, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v11 = 0;
  }

  sub_10025E514(a4, v7, a2, a3);
  if (v11 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

void sub_10025E514(uint64_t a1, uint64_t a2, int *a3, uint64_t a4)
{
  if (*(a1 + 624) != 1)
  {
    return;
  }

  if ((*(a1 + 628) & 1) != 0 || *(a1 + 1273) == 1)
  {
    sub_1009B91A8(a1);
  }

  v7 = *a3;
  if (*a3)
  {
    if (v7 != 1)
    {
      if (v7 == 2)
      {
        if (qword_1025D4650 != -1)
        {
          sub_10199A148();
        }

        v8 = qword_1025D4658;
        if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEFAULT, "#Warning unexpected kNotificationContextSpectator", buf, 2u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_10199B2A0();
        }
      }

      else
      {
        if (qword_1025D4650 != -1)
        {
          sub_10199A148();
        }

        v17 = qword_1025D4658;
        if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
        {
          v18 = *a3;
          *buf = 67109120;
          v36 = v18;
          _os_log_impl(dword_100000000, v17, OS_LOG_TYPE_DEFAULT, "#Warning Unhandled notification,%d", buf, 8u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_10199B37C(a3);
        }
      }

      return;
    }

    v9 = (a1 + 184);
    if (*(a1 + 196) == 1 && *(a4 + 12) != 1)
    {
      *(a1 + 616) = sub_1000081AC();
    }

    v34 = *(a1 + 184);
    *v9 = *a4;
    v10 = *(a4 + 16);
    v11 = *(a4 + 32);
    v12 = *(a4 + 64);
    *(a1 + 232) = *(a4 + 48);
    *(a1 + 248) = v12;
    *(a1 + 200) = v10;
    *(a1 + 216) = v11;
    v13 = *(a4 + 80);
    v14 = *(a4 + 96);
    v15 = *(a4 + 112);
    *(a1 + 312) = *(a4 + 128);
    *(a1 + 280) = v14;
    *(a1 + 296) = v15;
    *(a1 + 264) = v13;
    if (CLMotionActivity::isTypeStatic() && !*(a4 + 4))
    {
      if (CLMotionActivity::isTypeStatic())
      {
        if (CLMotionActivity::isTypeInVehicle())
        {
          *v9 = 5;
        }

        else
        {
          *v9 = 0;
        }
      }

      else
      {
        *v9 = v34;
      }
    }

    if ((*(a1 + 88) & 1) == 0 && CLMotionActivity::isTypePedestrian())
    {
      *v9 = 3;
    }

    v19 = sub_1000081AC();
    if (sub_10020C6E4(a1 + 1224, v19, 6.0))
    {
      goto LABEL_65;
    }

    v20 = *v9;
    v21 = *(a1 + 188);
    isStatic = CLMotionActivity::isStatic((a1 + 184));
    v23 = *(a1 + 1224);
    if (isStatic)
    {
      if (v23 == 1)
      {
        if (*v9 == 1)
        {
          v20 = 10;
        }

        else if (*v9 == 2)
        {
          v20 = 11;
        }
      }

      goto LABEL_57;
    }

    if (v23)
    {
      if (v23 == 1)
      {
        v20 = 5;
LABEL_55:
        v21 = 2;
        goto LABEL_57;
      }

      if (v23 != 3 || *(a1 + 1228) != 3)
      {
LABEL_57:
        if (v20 != *v9 || v21 != *(a1 + 188))
        {
          if (qword_1025D4650 != -1)
          {
            sub_10199A148();
          }

          v26 = qword_1025D4658;
          if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
          {
            v27 = *v9;
            v28 = *(a1 + 188);
            *buf = 67109888;
            v36 = v27;
            v37 = 1024;
            v38 = v28;
            v39 = 1024;
            v40 = v20;
            v41 = 1024;
            v42 = v21;
            _os_log_impl(dword_100000000, v26, OS_LOG_TYPE_DEBUG, "overwritingDueToRouteHints.origType,%d,origConfidence,%d,newType,%d,newConfidence,%d", buf, 0x1Au);
          }

          if (sub_10000A100(121, 2))
          {
            bzero(buf, 0x65CuLL);
            if (qword_1025D4650 != -1)
            {
              sub_10199A02C();
            }

            v33 = _os_log_send_and_compose_impl();
            sub_100152C7C("Generic", 1, 0, 2, "void CLGnssAssistanceMotion::onMotionNotification(int, const CLMotionState_Type::Notification &, const CLMotionState_Type::NotificationData &)", "%s\n", v33);
            if (v33 != buf)
            {
              free(v33);
            }
          }

          *v9 = v20;
          *(a1 + 188) = v21;
        }

LABEL_65:
        if (*(a1 + 320) == 1 && CLMotionActivity::isStatic((a1 + 184)))
        {
          if (qword_1025D4650 != -1)
          {
            sub_10199A02C();
          }

          v29 = qword_1025D4658;
          if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
          {
            v30 = *v9;
            v31 = *(a1 + 188);
            *buf = 67240448;
            v36 = v30;
            v37 = 1026;
            v38 = v31;
            _os_log_impl(dword_100000000, v29, OS_LOG_TYPE_DEFAULT, "#HST, Detected static while in high speed transit,overriding to driving,original,%{public}d,confidence,%{public}d", buf, 0xEu);
          }

          if (sub_10000A100(121, 2))
          {
            sub_10199AFEC();
          }

          *v9 = 5;
        }

        if (*(a1 + 627) == 1)
        {
          if (qword_1025D4650 != -1)
          {
            sub_10199A02C();
          }

          v32 = qword_1025D4658;
          if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
          {
            *buf = 0;
            _os_log_impl(dword_100000000, v32, OS_LOG_TYPE_DEBUG, "Warning defaults write GpsdForceDrivingMotionActivityContext is True! MotionActivity override to confident driving.", buf, 2u);
          }

          if (sub_10000A100(121, 2))
          {
            sub_10199B0E8();
          }

          *v9 = 0x200000005;
        }

        sub_10025EC70(a1 + 128, a1 + 184);
        sub_100134A38(a1);
        return;
      }

      v24 = CLMotionActivity::isCycling((a1 + 184)) == 0;
      v25 = 6;
    }

    else
    {
      v24 = CLMotionActivity::isTypePedestrian() == 0;
      v25 = 4;
    }

    if (v24)
    {
      v20 = v25;
    }

    goto LABEL_55;
  }

  if (qword_1025D4650 != -1)
  {
    sub_10199A148();
  }

  v16 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_DEFAULT, "#Warning unexpected kNotificationMovementCoarse", buf, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10199B1C4();
  }
}

uint64_t sub_10025EB80(int *a1, uint64_t a2)
{
  isTypeInVehicle = CLMotionActivity::isTypeInVehicle();
  result = CLMotionActivity::isTypePedestrian();
  if (isTypeInVehicle)
  {
    v6 = result == 0;
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    sub_1018A2BDC();
  }

  if (isTypeInVehicle)
  {
    *a1 = 1;
  }

  if (result)
  {
    if (*(a2 + 4) == 2)
    {
      v7 = 3;
    }

    else
    {
      v7 = 2;
    }

    *a1 = v7;
  }

  return result;
}

uint64_t sub_10025EBF4(uint64_t a1, uint64_t a2)
{
  result = sub_10025EB80(a1, a2);
  if (*a1 == 3 || *a1 == 2 && (*(a1 + 8) != 1 || *(a1 + 16) * 1000000000.0 + 2.0e11 < *(a2 + 40) * 1000000000.0))
  {
    *(a1 + 4) = 2;
  }

  return result;
}

uint64_t sub_10025EC70(uint64_t a1, uint64_t a2)
{
  v4 = sub_10025EBF4(*a1, a2);
  v5 = *(a2 + 40);
  v6 = *(*a1 + 4);
  if (v6 == 2)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2 * (v6 == 1);
  }

  v8 = *(a1 + 8);
  if (v8 != v7)
  {
    sub_1004E21FC(v4, v8, v7);
  }

  *(a1 + 8) = v7;
  return v5;
}

BOOL sub_10025ECF0(uint64_t a1, double *a2)
{
  *a2 = -1.0;
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = (a1 + 40);
  if (v5 != v6)
  {
LABEL_2:
    v17 = 8;
    v18 = 0;
    v8 = sysctl(v5, (v6 - v5) >> 2, &v18, &v17, 0, 0);
    v9 = v8 == 0;
    if (v8)
    {
      if (qword_1025D4650 != -1)
      {
        sub_1019D1B7C();
      }

      v10 = qword_1025D4658;
      if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_ERROR))
      {
        v11 = *__error();
        *buf = 67109120;
        LODWORD(v20) = v11;
        _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_ERROR, "TCONV,Error occurred when get wake_abs_time,%{errno}d", buf, 8u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_1019D1F78();
      }
    }

    else
    {
      *a2 = sub_1000080EC(v18);
      if (qword_1025D4650 != -1)
      {
        sub_1019D1B7C();
      }

      v13 = qword_1025D4658;
      if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
      {
        v14 = *a2;
        *buf = 134349312;
        v20 = v18;
        v21 = 2050;
        v22 = v14;
        _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_DEBUG, "TCONV,GetLastWakeUpMachAbsoluteTime success,machAbs,%{public}llu,floatInterval,%{public}.6lf", buf, 0x16u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1019D2088(&v18);
      }
    }

    return v9;
  }

  v18 = 8;
  *buf = 0;
  sub_10030D40C(v7, 8uLL, buf);
  if (!sysctlnametomib("kern.wake_abs_time", *v7, &v18))
  {
    *buf = 0;
    sub_10030D40C(v7, v18, buf);
    if (qword_1025D4650 != -1)
    {
      sub_1019D1B7C();
    }

    v16 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134217984;
      v20 = v18;
      _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_DEBUG, "TCONV,mib filled to %zu", buf, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1019D1E6C(&v18);
    }

    v5 = *(a1 + 40);
    v6 = *(a1 + 48);
    goto LABEL_2;
  }

  if (qword_1025D4650 != -1)
  {
    sub_1019D1B7C();
  }

  v12 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_ERROR, "TCONV,error occurred, no mib to wake_abs_time conversion", buf, 2u);
  }

  if (sub_10000A100(121, 0))
  {
    sub_1019D1D80();
  }

  v9 = 0;
  *(a1 + 48) = *(a1 + 40);
  return v9;
}

uint64_t sub_10025F01C(uint64_t a1, uint64_t a2, int a3, void *a4)
{
  v7 = sub_100109F14(a4);
  if (v7)
  {
    v10 = a3;
    return (*(*a1 + 96))(a1, a2, &v10, v7);
  }

  else
  {
    v9 = a3;
    return (*(*a1 + 88))(a1, a2, &v9);
  }
}

uint64_t sub_10025F0FC(uint64_t a1, int a2, int *a3, char *a4)
{
  v32 = a2;
  if (*(a1 + 108))
  {
    return 0;
  }

  v7 = *(a1 + 88);
  if (v7)
  {
    v10 = a1 + 88;
    do
    {
      if (*(v7 + 32) >= a2)
      {
        v10 = v7;
      }

      v7 = *(v7 + 8 * (*(v7 + 32) < a2));
    }

    while (v7);
    if (v10 != a1 + 88 && *(v10 + 32) <= a2)
    {
      v31 = v10;
      v14 = *a3;
      v17 = *(v10 + 48);
      v16 = v10 + 48;
      v15 = v17;
      if (!v17)
      {
        goto LABEL_25;
      }

      v18 = v16;
      do
      {
        if (*(v15 + 28) >= v14)
        {
          v18 = v15;
        }

        v15 = *(v15 + 8 * (*(v15 + 28) < v14));
      }

      while (v15);
      if (v18 == v16 || v14 < *(v18 + 28))
      {
LABEL_25:
        v18 = v16;
      }

      v19 = *(a1 + 64);
      if (!v19)
      {
        goto LABEL_33;
      }

      v20 = a1 + 64;
      do
      {
        if (*(v19 + 32) >= v14)
        {
          v20 = v19;
        }

        v19 = *(v19 + 8 * (*(v19 + 32) < v14));
      }

      while (v19);
      if (v20 != a1 + 64 && v14 >= *(v20 + 32))
      {
        v30 = v20;
        v27 = *(v20 + 56);
        v28 = *a4;
        *buf = &v32;
        *(sub_100007FA0(v20 + 40, &v32) + 32) = v28;
        bzero(&buf[8], 0xD70uLL);
        *buf = 0x7FEFFFFFFFFFFFFFLL;
        *&v35[1] = 0xBFF0000000000000;
        v39 = 0;
        *&v35[5] = 0;
        v36 = 0;
        v37 = 0;
        v38 = 0;
        if (v18 == v16 && (*(*a1 + 128))(a1, a3, buf))
        {
          sub_10025F55C();
        }

        if (v27)
        {
          goto LABEL_37;
        }
      }

      else
      {
LABEL_33:
        v21 = a1 + 56;
        v30 = a1 + 64;
        v22 = byte_1026323D1;
        v29 = v14;
        *buf = &v29;
        *(sub_100024014(a1 + 56, &v29) + 80) = v22;
        v29 = *a3;
        *buf = &v29;
        v23 = sub_100024014(a1 + 56, &v29);
        v24 = v23[9];
        v23[8] = 0;
        v23[9] = 0;
        if (v24)
        {
          sub_100008080(v24);
        }

        v25 = *a4;
        v29 = *a3;
        *buf = &v29;
        v26 = sub_100024014(v21, &v29);
        *buf = &v32;
        *(sub_100007FA0((v26 + 5), &v32) + 32) = v25;
      }

      (*(*a1 + 168))(a1, a3);
LABEL_37:
      if (v18 == v16)
      {
        *buf = *a3;
        sub_1003C9410(v31 + 40, buf);
      }

      return 1;
    }
  }

  if (qword_1025D47F0 != -1)
  {
    sub_101B2ADA4();
  }

  v11 = qword_1025D47F8;
  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_FAULT))
  {
    v12 = (a1 + 8);
    if (*(a1 + 31) < 0)
    {
      v12 = *v12;
    }

    *buf = 136446466;
    *&buf[4] = v12;
    v34 = 1026;
    *v35 = a2;
    _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_FAULT, "%{public}s; client %{public}d does not exist", buf, 0x12u);
  }

  v13 = sub_10000A100(121, 0);
  result = 0;
  if (v13)
  {
    sub_101B312D0();
    return 0;
  }

  return result;
}

uint64_t sub_10025F4E0(uint64_t a1, int *a2, void *__dst)
{
  v5 = *(a1 + 64);
  v3 = a1 + 64;
  v4 = v5;
  if (!v5)
  {
    return 0;
  }

  v6 = *a2;
  v7 = v3;
  do
  {
    if (*(v4 + 32) >= v6)
    {
      v7 = v4;
    }

    v4 = *(v4 + 8 * (*(v4 + 32) < v6));
  }

  while (v4);
  if (v7 == v3)
  {
    return 0;
  }

  if (v6 < *(v7 + 32))
  {
    return 0;
  }

  v8 = *(v7 + 64);
  if (!v8)
  {
    return 0;
  }

  memcpy(__dst, v8, 0xD78uLL);
  return 1;
}

id sub_10025F610(void *a1)
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  return sub_10025F768(a1);
}

_BYTE *sub_10025F670(_BYTE *result, uint64_t a2, uint64_t *a3, void *a4)
{
  if ((result[108] & 1) == 0)
  {
    v7 = result;
    v8 = *(*a2 + 32);
    LODWORD(v12) = *(*a3 + 32);
    v9 = sub_10025F610(a4);
    v10 = *a3;
    v13 = (*a2 + 32);
    v11 = sub_100007FA0(v10 + 40, v13);
    result = (*(*v7 + 192))(v7, v8, &v12, v9, v10 + 80, v11 + 4);
    if (result)
    {
      return [*(*a2 + 64) onNotification:*(*a3 + 32) withData:{a4, v12}];
    }
  }

  return result;
}

id sub_10025F768(void *a1)
{
  v2 = [a1 binaryVersion];
  [a1 sizeOfType];
  if (v2)
  {
    if (getenv("_INTERSILO_UNIT_TEST"))
    {
      if (qword_1025D41A0 != -1)
      {
        sub_101B3323C();
      }

      v3 = qword_1025D41A8;
      if (!os_log_type_enabled(qword_1025D41A8, OS_LOG_TYPE_ERROR))
      {
        return 0;
      }

      v8 = 134218498;
      v9 = v2;
      v10 = 2048;
      v11 = 0;
      v12 = 2080;
      v13 = 0x8000000101D1E961 & 0x7FFFFFFFFFFFFFFFLL;
      v4 = v3;
      v5 = OS_LOG_TYPE_ERROR;
    }

    else
    {
      if (qword_1025D41A0 != -1)
      {
        sub_101B3323C();
      }

      v7 = qword_1025D41A8;
      if (!os_log_type_enabled(qword_1025D41A8, OS_LOG_TYPE_FAULT))
      {
        return 0;
      }

      v8 = 134218498;
      v9 = v2;
      v10 = 2048;
      v11 = 0;
      v12 = 2080;
      v13 = 0x8000000101D1E961 & 0x7FFFFFFFFFFFFFFFLL;
      v4 = v7;
      v5 = OS_LOG_TYPE_FAULT;
    }

    _os_log_impl(dword_100000000, v4, v5, "Mismatch of versions between encoded (%llu) and decoded (%llu) objects! This is possibly because the version has changed on one side and possibly broken ABI compatibility. Please update your type for %s accordingly", &v8, 0x20u);
    return 0;
  }

  return [a1 cppObjectPtr];
}

uint64_t sub_10025F930(uint64_t a1, uint64_t a2, int a3, void *a4)
{
  v7 = sub_100109F14(a4);
  if (v7)
  {
    v10 = a3;
    return (*(*a1 + 96))(a1, a2, &v10, v7);
  }

  else
  {
    v9 = a3;
    return (*(*a1 + 88))(a1, a2, &v9);
  }
}

uint64_t sub_10025FA10(uint64_t a1, int a2, int *a3, char *a4)
{
  v32 = a2;
  if (*(a1 + 108))
  {
    return 0;
  }

  v7 = *(a1 + 88);
  if (v7)
  {
    v10 = a1 + 88;
    do
    {
      if (*(v7 + 32) >= a2)
      {
        v10 = v7;
      }

      v7 = *(v7 + 8 * (*(v7 + 32) < a2));
    }

    while (v7);
    if (v10 != a1 + 88 && *(v10 + 32) <= a2)
    {
      v31 = v10;
      v14 = *a3;
      v17 = *(v10 + 48);
      v16 = v10 + 48;
      v15 = v17;
      if (!v17)
      {
        goto LABEL_25;
      }

      v18 = v16;
      do
      {
        if (*(v15 + 28) >= v14)
        {
          v18 = v15;
        }

        v15 = *(v15 + 8 * (*(v15 + 28) < v14));
      }

      while (v15);
      if (v18 == v16 || v14 < *(v18 + 28))
      {
LABEL_25:
        v18 = v16;
      }

      v19 = *(a1 + 64);
      if (!v19)
      {
        goto LABEL_33;
      }

      v20 = a1 + 64;
      do
      {
        if (*(v19 + 32) >= v14)
        {
          v20 = v19;
        }

        v19 = *(v19 + 8 * (*(v19 + 32) < v14));
      }

      while (v19);
      if (v20 != a1 + 64 && v14 >= *(v20 + 32))
      {
        v30 = v20;
        v27 = *(v20 + 56);
        v28 = *a4;
        *&buf[0] = &v32;
        *(sub_100007FA0(v20 + 40, &v32) + 32) = v28;
        v34 = 0;
        memset(buf, 0, sizeof(buf));
        if (v18 == v16 && (*(*a1 + 128))(a1, a3, buf))
        {
          sub_10025FDFC();
        }

        if (v27)
        {
          goto LABEL_37;
        }
      }

      else
      {
LABEL_33:
        v21 = a1 + 56;
        v30 = a1 + 64;
        v22 = byte_102634B21;
        v29 = v14;
        *&buf[0] = &v29;
        *(sub_100024014(a1 + 56, &v29) + 80) = v22;
        v29 = *a3;
        *&buf[0] = &v29;
        v23 = sub_100024014(a1 + 56, &v29);
        v24 = v23[9];
        v23[8] = 0;
        v23[9] = 0;
        if (v24)
        {
          sub_100008080(v24);
        }

        v25 = *a4;
        v29 = *a3;
        *&buf[0] = &v29;
        v26 = sub_100024014(v21, &v29);
        *&buf[0] = &v32;
        *(sub_100007FA0((v26 + 5), &v32) + 32) = v25;
      }

      (*(*a1 + 168))(a1, a3);
LABEL_37:
      if (v18 == v16)
      {
        LODWORD(buf[0]) = *a3;
        sub_1003C9410(v31 + 40, buf);
      }

      return 1;
    }
  }

  if (qword_1025D47F0 != -1)
  {
    sub_101BD3BE0();
  }

  v11 = qword_1025D47F8;
  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_FAULT))
  {
    v12 = (a1 + 8);
    if (*(a1 + 31) < 0)
    {
      v12 = *v12;
    }

    LODWORD(buf[0]) = 136446466;
    *(buf + 4) = v12;
    WORD6(buf[0]) = 1026;
    *(buf + 14) = a2;
    _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_FAULT, "%{public}s; client %{public}d does not exist", buf, 0x12u);
  }

  v13 = sub_10000A100(121, 0);
  result = 0;
  if (v13)
  {
    sub_101BD627C();
    return 0;
  }

  return result;
}

uint64_t sub_10025FEB0(uint64_t a1, int *a2, void *__dst)
{
  v5 = *(a1 + 64);
  v3 = a1 + 64;
  v4 = v5;
  if (!v5)
  {
    return 0;
  }

  v6 = *a2;
  v7 = v3;
  do
  {
    if (*(v4 + 32) >= v6)
    {
      v7 = v4;
    }

    v4 = *(v4 + 8 * (*(v4 + 32) < v6));
  }

  while (v4);
  if (v7 == v3)
  {
    return 0;
  }

  if (v6 < *(v7 + 32))
  {
    return 0;
  }

  v8 = *(v7 + 64);
  if (!v8)
  {
    return 0;
  }

  memcpy(__dst, v8, 0x148uLL);
  return 1;
}

uint64_t sub_10025FF74(char *a1, int a2, int *a3)
{
  v23 = a2;
  v3 = a1[108];
  if ((v3 & 1) == 0)
  {
    v5 = *(a1 + 11);
    if (v5)
    {
      v7 = a1 + 88;
      do
      {
        if (*(v5 + 32) >= a2)
        {
          v7 = v5;
        }

        v5 = *(v5 + 8 * (*(v5 + 32) < a2));
      }

      while (v5);
      if (v7 != a1 + 88 && *(v7 + 8) <= a2)
      {
        v10 = *(v7 + 6);
        v8 = v7 + 48;
        v9 = v10;
        if (v10)
        {
          v11 = *a3;
          v12 = v8;
          do
          {
            if (*(v9 + 7) >= v11)
            {
              v12 = v9;
            }

            v9 = *&v9[8 * (*(v9 + 7) < v11)];
          }

          while (v9);
          if (v12 != v8 && v11 >= *(v12 + 7))
          {
            LODWORD(__p[0]) = *a3;
            sub_10004E6E0((v8 - 8), __p);
            v13 = *(a1 + 8);
            if (!v13)
            {
              goto LABEL_23;
            }

            v14 = *a3;
            v15 = a1 + 64;
            do
            {
              if (*(v13 + 32) >= v14)
              {
                v15 = v13;
              }

              v13 = *(v13 + 8 * (*(v13 + 32) < v14));
            }

            while (v13);
            if (v15 != a1 + 64 && v14 >= *(v15 + 8))
            {
              sub_10004E6E0((v15 + 40), &v23);
              if (!*(v15 + 7))
              {
                (*(*a1 + 176))(a1, a3);
              }
            }

            else
            {
LABEL_23:
              if (qword_1025D47F0 != -1)
              {
                sub_101BD3BF4();
              }

              v16 = qword_1025D47F8;
              if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_FAULT))
              {
                v17 = a1 + 8;
                if (a1[31] < 0)
                {
                  v17 = *v17;
                }

                (*(*a1 + 160))(__p, a1, a3);
                if (v33 >= 0)
                {
                  v18 = __p;
                }

                else
                {
                  v18 = __p[0];
                }

                *buf = 136446466;
                *&buf[4] = v17;
                v25 = 2082;
                v26 = v18;
                _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_FAULT, "%{public}s; notification %{public}s not found", buf, 0x16u);
                if (v33 < 0)
                {
                  operator delete(__p[0]);
                }
              }

              if (sub_10000A100(121, 0))
              {
                bzero(__p, 0x65CuLL);
                if (qword_1025D47F0 != -1)
                {
                  sub_101BD3BF4();
                }

                v20 = a1 + 8;
                if (a1[31] < 0)
                {
                  v20 = *v20;
                }

                (*(*a1 + 160))(buf, a1, a3);
                if (v27 >= 0)
                {
                  v21 = buf;
                }

                else
                {
                  v21 = *buf;
                }

                v28 = 136446466;
                v29 = v20;
                v30 = 2082;
                v31 = v21;
                v22 = _os_log_send_and_compose_impl();
                if (v27 < 0)
                {
                  operator delete(*buf);
                }

                sub_100152C7C("Generic", 1, 0, 0, "virtual BOOL CLNotifier<CLStepCountNotifier_Type::Notification, CLStepCountNotifier_Type::NotificationData>::unregisterForNotification(int, const Notification_T &) [Notification_T = CLStepCountNotifier_Type::Notification, NotificationData_T = CLStepCountNotifier_Type::NotificationData, NotificationInfo_T = char, RegistrationInfo_T = char]", "%s\n", v22);
                if (v22 != __p)
                {
                  free(v22);
                }
              }
            }
          }
        }
      }
    }
  }

  return v3 ^ 1u;
}

void sub_100260354(uint64_t a1, uint64_t a2, uint64_t a3, id *a4)
{
  CLProfilingIdentify();
  [objc_msgSend(*a4 "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_101BB7274();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v11 = 1;
    v8 = _os_activity_create(dword_100000000, "CL: CLGNSSPedometerAssistanceController::HandleMotionStateNotification", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v8, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_101BB7288();
    }

    v9 = qword_1025D47F8;
    if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 68289538;
      v13 = 0;
      v14 = 2082;
      v15 = "";
      v16 = 2082;
      v17 = "activity";
      v18 = 2050;
      v19 = a4;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLGNSSPedometerAssistanceController::HandleMotionStateNotification, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v11 = 0;
  }

  sub_100260594(a4, v6, v7, a3);
  if (v11 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

uint64_t sub_100260518(uint64_t a1, uint64_t a2)
{
  sub_10025EC70(*(*(a1 + 8) + 136), a2);
  v6 = v3;
  if (sub_1001518C0())
  {
    if (v6 == 1)
    {
      v4 = *(a1 + 8);
      if ((*(v4 + 144) & 1) == 0 && (*(v4 + 145) & 1) == 0)
      {
        sub_1001C7624(v4, v4 + 96);
      }
    }
  }

  return 1;
}

uint64_t sub_100260594(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = (*(**(a1 + 128) + 32))(*(a1 + 128), a4);
  if ((result & 1) == 0)
  {
    if (qword_1025D4650 != -1)
    {
      sub_101BB4D50();
    }

    v6 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEFAULT, "#Warning Pedometer Assistance: failed to handle motion state notification", v7, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101BB7BBC();
    }

    return sub_1001C7624(a1, a1 + 80);
  }

  return result;
}

id sub_100260668(uint64_t a1, int a2, void *a3)
{
  result = sub_10025F610(a3);
  if (result)
  {
    v6 = a2;
    return (*(a1 + 24))(0, &v6, result, *(a1 + 32));
  }

  return result;
}

void sub_1002606B8(uint64_t a1, _DWORD *a2, uint64_t a3, id *a4)
{
  CLProfilingIdentify();
  [objc_msgSend(*a4 "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_10199A360();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v11 = 1;
    v8 = _os_activity_create(dword_100000000, "CL: CLGnssAssistanceMotion::onNatalimetryNotification", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v8, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_10199A374();
    }

    v9 = qword_1025D47F8;
    if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 68289538;
      v13 = 0;
      v14 = 2082;
      v15 = "";
      v16 = 2082;
      v17 = "activity";
      v18 = 2050;
      v19 = a4;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLGnssAssistanceMotion::onNatalimetryNotification, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v11 = 0;
  }

  sub_100260884(a4, v7, a2, a3);
  if (v11 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

void sub_100260884(uint64_t a1, uint64_t a2, _DWORD *a3, uint64_t a4)
{
  if (*a3 == 2)
  {
    v4 = (a4 + 40);
    *(a1 + 88) = *(a4 + 40) == 0;
    v5 = (a1 + 88);
    if (qword_1025D4650 != -1)
    {
      sub_10199A148();
    }

    v6 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
    {
      v7 = *v4;
      v8 = *v5;
      v9[0] = 67109376;
      v9[1] = v7;
      v10 = 1024;
      v11 = v8;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEBUG, "bodyMetrics.condition,%d,fIsAbleBodied,%d", v9, 0xEu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10199AEF0();
    }
  }
}

uint64_t sub_100260998(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    operator delete();
  }

  return result;
}

void sub_1002609B8(uint64_t a1, _DWORD *a2, uint64_t a3, id *a4)
{
  CLProfilingIdentify();
  [objc_msgSend(*a4 "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_101BB7274();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v11 = 1;
    v8 = _os_activity_create(dword_100000000, "CL: CLGNSSPedometerAssistanceController::HandleNatalimetryNotification", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v8, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_101BB7288();
    }

    v9 = qword_1025D47F8;
    if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 68289538;
      v13 = 0;
      v14 = 2082;
      v15 = "";
      v16 = 2082;
      v17 = "activity";
      v18 = 2050;
      v19 = a4;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLGNSSPedometerAssistanceController::HandleNatalimetryNotification, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v11 = 0;
  }

  sub_100260B84(a4, v7, a2, a3);
  if (v11 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

void sub_100260B84(uint64_t a1, uint64_t a2, _DWORD *a3, uint64_t a4)
{
  if (*a3 == 2)
  {
    v4 = (a4 + 40);
    *(a1 + 145) = *(a4 + 40) != 0;
    v5 = (a1 + 145);
    if (qword_1025D4650 != -1)
    {
      sub_101BB4D50();
    }

    v6 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
    {
      v7 = *v4;
      v8 = *v5;
      v9[0] = 67109376;
      v9[1] = v7;
      v10 = 1024;
      v11 = v8;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEBUG, "Pedometer Assistance: condition,%d,nonPedestrianUserMotion,%d", v9, 0xEu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101BB7C98(v4, v5);
    }
  }
}

void sub_100260C98(uint64_t a1, _DWORD *a2, uint64_t a3, id *a4)
{
  CLProfilingIdentify();
  [objc_msgSend(*a4 "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_10199A360();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v11 = 1;
    v8 = _os_activity_create(dword_100000000, "CL: CLGnssAssistanceMotion::onStepCountNotification", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v8, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_10199A374();
    }

    v9 = qword_1025D47F8;
    if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 68289538;
      v13 = 0;
      v14 = 2082;
      v15 = "";
      v16 = 2082;
      v17 = "activity";
      v18 = 2050;
      v19 = a4;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLGnssAssistanceMotion::onStepCountNotification, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v11 = 0;
  }

  sub_100260E64(a4, v7, a2, a3);
  if (v11 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

uint64_t sub_100260E64(uint64_t result, uint64_t a2, _DWORD *a3, uint64_t a4)
{
  if ((*(result + 1273) & 1) == 0 && !*a3)
  {
    v5 = result;
    if (qword_1025D4650 != -1)
    {
      sub_10199A148();
    }

    v6 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
    {
      v7 = *(a4 + 8);
      v8 = *(a4 + 24);
      v9 = *(a4 + 32);
      v10 = *(a4 + 40);
      v13 = 134349825;
      v14 = v7;
      v15 = 1025;
      v16 = v8;
      v17 = 2049;
      v18 = v9;
      v19 = 2049;
      v20 = v10;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEBUG, "STEPCT,startTime,%{public}.3lf,count,%{private}u,distance,%{private}.3lf,rawDistance,%{private}.3lf", &v13, 0x26u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10199BFA8(a4);
    }

    sub_100260FC0(v5 + 84, a4);
    v11 = v5[89];
    if (v11 >= 0x33)
    {
      v12 = v5[88];
      v5[89] = v11 - 1;
      v5[88] = v12 + 1;
      sub_1009BB4F8((v5 + 84), 1);
    }

    return sub_100134A38(v5);
  }

  return result;
}

__n128 sub_100260FC0(void *a1, __int128 *a2)
{
  v4 = a1[2];
  v5 = a1[1];
  v6 = 22 * ((v4 - v5) >> 3) - 1;
  if (v4 == v5)
  {
    v6 = 0;
  }

  v7 = a1[5] + a1[4];
  if (v6 == v7)
  {
    sub_10069A464(a1);
    v5 = a1[1];
    v7 = a1[5] + a1[4];
  }

  v8 = *(v5 + 8 * (v7 / 0x16)) + 184 * (v7 % 0x16);
  v9 = *a2;
  v10 = a2[1];
  v11 = a2[3];
  *(v8 + 32) = a2[2];
  *(v8 + 48) = v11;
  *v8 = v9;
  *(v8 + 16) = v10;
  v12 = a2[4];
  v13 = a2[5];
  v14 = a2[7];
  *(v8 + 96) = a2[6];
  *(v8 + 112) = v14;
  *(v8 + 64) = v12;
  *(v8 + 80) = v13;
  result = a2[8];
  v16 = a2[9];
  v17 = a2[10];
  *(v8 + 176) = *(a2 + 22);
  *(v8 + 144) = v16;
  *(v8 + 160) = v17;
  *(v8 + 128) = result;
  ++a1[5];
  return result;
}

uint64_t sub_1002610A0(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    operator delete();
  }

  return result;
}

void sub_1002610C0(uint64_t a1, uint64_t a2, uint64_t a3, id *a4)
{
  CLProfilingIdentify();
  [objc_msgSend(*a4 "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_101BB7274();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v11 = 1;
    v8 = _os_activity_create(dword_100000000, "CL: CLGNSSPedometerAssistanceController::HandleStepCountNotification", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v8, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_101BB7288();
    }

    v9 = qword_1025D47F8;
    if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 68289538;
      v13 = 0;
      v14 = 2082;
      v15 = "";
      v16 = 2082;
      v17 = "activity";
      v18 = 2050;
      v19 = a4;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLGNSSPedometerAssistanceController::HandleStepCountNotification, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v11 = 0;
  }

  sub_100261910(a4, v6, v7, a3);
  if (v11 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

uint64_t sub_100261284(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if ((*&v2 <= -1 || ((*&v2 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 >= 0x3FF) && (*&v2 - 1) >= 0xFFFFFFFFFFFFFLL)
  {
    if (qword_1025D4650 != -1)
    {
      sub_101BB4D50();
    }

    v10 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v44 = v2;
      _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEFAULT, "#Warning Pedometer Assistance: encountered invalid step count notification time %.3lf", buf, 0xCu);
    }

    result = sub_10000A100(121, 2);
    if (result)
    {
      sub_101BB641C(v2);
      return 0;
    }

    return result;
  }

  v6 = (a2 + 40);
  if (*(a2 + 40) >= 0.0)
  {
    if (*(a2 + 160) != 1 || *(a2 + 128) != 0.0)
    {
      v13 = (a1 + 152);
      if (*(a1 + 336) == 1)
      {
        v14 = *(a1 + 160);
        if (v2 <= v14)
        {
          if (qword_1025D4650 != -1)
          {
            sub_101BB4D50();
          }

          v39 = qword_1025D4658;
          if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 134218240;
            v44 = v2;
            v45 = 2048;
            v46 = v14;
            _os_log_impl(dword_100000000, v39, OS_LOG_TYPE_DEFAULT, "#Warning Pedometer Assistance: encountered out-of-order step count notification time %.3lf vs. last seen notification time %.3lf", buf, 0x16u);
          }

          result = sub_10000A100(121, 2);
          if (result)
          {
            sub_101BB6520();
            return 0;
          }

          return result;
        }

        if (v2 - v14 > 3.84)
        {
          if (qword_1025D4650 != -1)
          {
            sub_101BB4D50();
          }

          v40 = qword_1025D4658;
          if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
          {
            *buf = 134218496;
            v44 = v2;
            v45 = 2048;
            v46 = v14;
            v47 = 2048;
            v48 = v2 - v14;
            _os_log_impl(dword_100000000, v40, OS_LOG_TYPE_DEBUG, "Pedometer Assistance: encountered unexpected step count notification time %.3lf vs. last seen notification time %.3lf for a period of %.3lf", buf, 0x20u);
          }

          result = sub_10000A100(121, 2);
          if (result)
          {
            bzero(buf, 0x65CuLL);
            if (qword_1025D4650 != -1)
            {
              sub_101BB50D0();
            }

            v41 = _os_log_send_and_compose_impl();
            sub_100152C7C("Generic", 1, 0, 2, "BOOL CLGNSSPedometerAssistanceController::UpdatePedometerHistory(const CLStepCountEntry &)", "%s\n", v41);
            if (v41 != buf)
            {
              free(v41);
            }

            return 0;
          }

          return result;
        }

        v15 = *a2;
        v16 = *(a2 + 16);
        v17 = *(a2 + 48);
        *(a1 + 184) = *(a2 + 32);
        *(a1 + 200) = v17;
        *v13 = v15;
        *(a1 + 168) = v16;
        v18 = *(a2 + 64);
        v19 = *(a2 + 80);
        v20 = *(a2 + 112);
        *(a1 + 248) = *(a2 + 96);
        *(a1 + 264) = v20;
        *(a1 + 216) = v18;
        *(a1 + 232) = v19;
        v21 = *(a2 + 128);
        v22 = *(a2 + 144);
        v23 = *(a2 + 160);
        *(a1 + 328) = *(a2 + 176);
        *(a1 + 296) = v22;
        *(a1 + 312) = v23;
        *(a1 + 280) = v21;
      }

      else
      {
        v24 = *a2;
        v25 = *(a2 + 16);
        v26 = *(a2 + 48);
        *(a1 + 184) = *(a2 + 32);
        *(a1 + 200) = v26;
        *v13 = v24;
        *(a1 + 168) = v25;
        v27 = *(a2 + 64);
        v28 = *(a2 + 80);
        v29 = *(a2 + 112);
        *(a1 + 248) = *(a2 + 96);
        *(a1 + 264) = v29;
        *(a1 + 216) = v27;
        *(a1 + 232) = v28;
        v30 = *(a2 + 128);
        v31 = *(a2 + 144);
        v32 = *(a2 + 160);
        *(a1 + 328) = *(a2 + 176);
        *(a1 + 296) = v31;
        *(a1 + 312) = v32;
        *(a1 + 280) = v30;
        *(a1 + 336) = 1;
      }

      sub_100260FC0((a1 + 344), a2);
      v33 = *(a1 + 384);
      if (v33 >= 6)
      {
        ++*(a1 + 376);
        *(a1 + 384) = v33 - 1;
        sub_1009BB4F8(a1 + 344, 1);
      }

      if (qword_1025D4650 != -1)
      {
        sub_101BB4D50();
      }

      v34 = qword_1025D4658;
      if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
      {
        v35 = *(a2 + 8);
        v36 = *(a2 + 128);
        v37 = *(a2 + 136);
        v38 = *(a2 + 144);
        *buf = 134218752;
        v44 = v35;
        v45 = 2048;
        v46 = v36;
        v47 = 2048;
        v48 = v37;
        v49 = 2048;
        v50 = v38;
        _os_log_impl(dword_100000000, v34, OS_LOG_TYPE_DEBUG, "Pedometer Assistance: received pedometer time,%.3lf,pace,%.3lf,lowerBound,%.3lf,upperBound,%.3lf", buf, 0x2Au);
      }

      if (sub_10000A100(121, 2))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1025D4650 != -1)
        {
          sub_101BB50D0();
        }

        v42 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "BOOL CLGNSSPedometerAssistanceController::UpdatePedometerHistory(const CLStepCountEntry &)", "%s\n", v42);
        if (v42 != buf)
        {
          free(v42);
        }
      }

      return 1;
    }

    if (qword_1025D4650 != -1)
    {
      sub_101BB4D50();
    }

    v12 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_DEBUG, "Pedometer Assistance: ignoring zero pace in stroller cases", buf, 2u);
    }

    result = sub_10000A100(121, 2);
    if (result)
    {
      sub_101BB6618();
      return 0;
    }
  }

  else
  {
    if (qword_1025D4650 != -1)
    {
      sub_101BB4D50();
    }

    v7 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *v6;
      *buf = 134217984;
      v44 = v8;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEFAULT, "#Warning Pedometer Assistance: encountered invalid step count notification rawDistance %.3lf", buf, 0xCu);
    }

    result = sub_10000A100(121, 2);
    if (result)
    {
      sub_101BB66F4();
      return 0;
    }
  }

  return result;
}

uint64_t sub_100261910(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = (*(**(a1 + 128) + 48))(*(a1 + 128), a4);
  if ((result & 1) == 0)
  {
    if (qword_1025D4650 != -1)
    {
      sub_101BB4D50();
    }

    v6 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
    {
      *v7 = 0;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEBUG, "Pedometer Assistance: failed to handle step count notification", v7, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101BB7E88();
    }

    return sub_1001C7624(a1, a1 + 80);
  }

  return result;
}

void sub_1002619EC(__int32 a1, int *a2, uint64_t a3, uint64_t a4)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a4 + 32) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_1018741E8();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v11 = 1;
    v8 = _os_activity_create(dword_100000000, "CL: CLLocationController::onPipelineNotification", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v8, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_1018741FC();
    }

    v9 = qword_1025D47F8;
    if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 68289538;
      v13 = 0;
      v14 = 2082;
      v15 = "";
      v16 = 2082;
      v17 = "activity";
      v18 = 2050;
      v19 = a4;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLLocationController::onPipelineNotification, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v11 = 0;
  }

  sub_100261BC8(a4, a1, a2, a3);
  if (v11 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

void sub_100261BC8(int *a1, __int32 a2, int *a3, uint64_t a4)
{
  v39.i32[2] = a2;
  v7 = sub_10000B1F8();
  sub_10000B230(buf);
  sub_10000B324(v7, buf);
  *buf = 16;
  v39.i32[0] = 16;
  v39.i32[1] = sub_10000AD98(buf);
  v8 = sub_10000AE98();
  *buf = 4;
  sub_10001E898(v8, buf, &v39, a1 + 1305, &v39.i32[2], a3, a4);
  v10 = *a3;
  if (*a3 < 5)
  {
    if (qword_1025D4600 != -1)
    {
      sub_1018F7C0C();
    }

    v11 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
    {
      v12 = *(a4 + 96);
      v13 = *(a4 + 4);
      v14 = *(a4 + 12);
      v15 = *(a4 + 20);
      *buf = 67240961;
      v44 = v12;
      v45 = 2053;
      v46 = v13;
      v47 = 2053;
      v48 = v14;
      v49 = 2050;
      v50 = v15;
      _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEBUG, "onPipelineNotification,locationType,%{public}d,lat,%{sensitive}.7lf,long,%{sensitive}.7lf,acc,%{public}.01lf", buf, 0x26u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018FA9E0();
    }

    sub_100021AFC(v32);
    v17 = *(a4 + 96);
    if (v17 == 11)
    {
      if (!a1[171])
      {
        v19 = a1[85];
        *buf = 9;
        sub_10010CA08(a1, v19, v16, buf, v32);
      }
    }

    else
    {
      if (v17 != 10)
      {
LABEL_18:
        if (v17 == 10)
        {
          a1[171] = 0;
          sub_10010CA08(a1, a1[85], v16, a3, a4);
        }

        else if (v17 == 11)
        {
          a1[171] = 1;
        }

        else
        {
          if (qword_1025D4600 != -1)
          {
            sub_1018F7C0C();
          }

          v20 = qword_1025D4608;
          if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
          {
            v21 = *(a4 + 96);
            v22 = *a3;
            *buf = 67240448;
            v44 = v21;
            v45 = 1026;
            LODWORD(v46) = v22;
            _os_log_impl(dword_100000000, v20, OS_LOG_TYPE_DEBUG, "LocationController,#Warning,Unhandled location type in onPipelineNotification,%{public}d,notification,%{public}d", buf, 0xEu);
          }

          if (sub_10000A100(121, 2))
          {
            sub_1018F8644(buf);
            v29 = *(a4 + 96);
            v30 = *a3;
            v39.i32[3] = 67240448;
            v40 = v29;
            v41 = 1026;
            v42 = v30;
            v31 = _os_log_send_and_compose_impl();
            sub_100152C7C("Generic", 1, 0, 2, "void CLLocationController::onPipelineNotification(int, const CLLocationProvider_Type::Notification &, const CLLocationProvider_Type::NotificationData &)", "%s\n", v31);
            if (v31 != buf)
            {
              free(v31);
            }
          }
        }

        if (v37)
        {
          sub_100008080(v37);
        }

        if (v36 < 0)
        {
          operator delete(__p);
        }

        if (v34)
        {
          sub_100008080(v34);
        }

        if (v33)
        {
          sub_100008080(v33);
        }

        return;
      }

      if (a1[171] == 1)
      {
        v18 = a1[88];
        *buf = 9;
        sub_10010CA08(a1, v18, v16, buf, v32);
      }
    }

    v17 = *(a4 + 96);
    goto LABEL_18;
  }

  if (v10 == 9)
  {
    v23 = a1[171];
    if (v23)
    {
      if (v23 == 1)
      {
        sub_10010CA08(a1, a1[88], v9, a3, a4);
      }

      else
      {
        if (qword_1025D4600 != -1)
        {
          sub_1018F7C0C();
        }

        v28 = qword_1025D4608;
        if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_impl(dword_100000000, v28, OS_LOG_TYPE_DEBUG, "LocationController,#Warning,Unavailable flagged when already in unavailable state", buf, 2u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_1018FAAE8();
        }
      }
    }

    else
    {
      sub_10010CA08(a1, a1[85], v9, a3, a4);
    }

    a1[171] = -1;
  }

  else if (v10 == 11)
  {
    sub_10026213C(a1, a4 + 824);
  }

  else
  {
    if (qword_1025D4600 != -1)
    {
      sub_1018F7C0C();
    }

    v24 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
    {
      v25 = *a3;
      v26 = *(a4 + 96);
      *buf = 67240448;
      v44 = v25;
      v45 = 1026;
      LODWORD(v46) = v26;
      _os_log_impl(dword_100000000, v24, OS_LOG_TYPE_DEBUG, "LocationController,#Warning,Suspect notification in onPipelineNotification,%{public}d,location type,%{public}d", buf, 0xEu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018FABCC();
    }

    sub_10010CA08(a1, a1[85], v27, a3, a4);
  }
}

void sub_100262104(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_100311054(va);
  _Unwind_Resume(a1);
}

void sub_10026213C(uint64_t a1, uint64_t a2)
{
  if (*a2 == 10)
  {
    v3 = (a2 + 4);
    v4 = *(a2 + 4);
    v5 = *(a1 + 713);
    *(a1 + 713) = v4;
    if (qword_1025D4600 != -1)
    {
      sub_1002976C8();
    }

    v6 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
    {
      v7 = *v3;
      v8[0] = 67240192;
      v8[1] = v7;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEBUG, "Got notification indoor active state,%{public}d", v8, 8u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018FACE0(v3);
    }

    if (v4 != v5)
    {
      sub_100110094(a1);
    }
  }
}

void sub_10026225C(__int32 a1, int *a2, uint64_t a3, uint64_t a4)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a4 + 32) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_1018741E8();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v11 = 1;
    v8 = _os_activity_create(dword_100000000, "CL: CLLocationController::onWifi2Notification", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v8, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_1018741FC();
    }

    v9 = qword_1025D47F8;
    if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 68289538;
      v13 = 0;
      v14 = 2082;
      v15 = "";
      v16 = 2082;
      v17 = "activity";
      v18 = 2050;
      v19 = a4;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLLocationController::onWifi2Notification, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v11 = 0;
  }

  sub_100262438(a4, a1, a2, a3);
  if (v11 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

void sub_100262438(int *a1, __int32 a2, int *a3, uint64_t a4)
{
  v39.i32[2] = a2;
  v7 = sub_10000B1F8();
  sub_10000B230(buf);
  sub_10000B324(v7, buf);
  *buf = 17;
  v39.i32[0] = 17;
  v39.i32[1] = sub_10000AD98(buf);
  v8 = sub_10000AE98();
  *buf = 4;
  sub_10001E898(v8, buf, &v39, a1 + 1305, &v39.i32[2], a3, a4);
  v10 = *a3;
  if (*a3 < 5)
  {
    if (qword_1025D4600 != -1)
    {
      sub_1018F7C0C();
    }

    v11 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
    {
      v12 = *(a4 + 96);
      v13 = *(a4 + 4);
      v14 = *(a4 + 12);
      v15 = *(a4 + 20);
      *buf = 67240961;
      v44 = v12;
      v45 = 2053;
      v46 = v13;
      v47 = 2053;
      v48 = v14;
      v49 = 2050;
      v50 = v15;
      _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEBUG, "onWifi2Notification,locationType,%{public}d,lat,%{sensitive}.7lf,long,%{sensitive}.7lf,acc,%{public}.01lf", buf, 0x26u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018FADCC();
    }

    sub_100021AFC(v32);
    v17 = *(a4 + 96);
    if (v17 == 11)
    {
      if (!a1[171])
      {
        v19 = a1[85];
        *buf = 9;
        sub_10010CA08(a1, v19, v16, buf, v32);
      }
    }

    else
    {
      if (v17 != 10)
      {
        goto LABEL_18;
      }

      if (a1[171] == 1)
      {
        v18 = a1[88];
        *buf = 9;
        sub_10010CA08(a1, v18, v16, buf, v32);
      }
    }

    v17 = *(a4 + 96);
LABEL_18:
    if (v17 != 11)
    {
      if (v17 == 10)
      {
        a1[171] = 0;
        goto LABEL_28;
      }

      if (v17 != 1)
      {
        if (qword_1025D4600 != -1)
        {
          sub_1018F7C0C();
        }

        v20 = qword_1025D4608;
        if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
        {
          v21 = *(a4 + 96);
          v22 = *a3;
          *buf = 67240448;
          v44 = v21;
          v45 = 1026;
          LODWORD(v46) = v22;
          _os_log_impl(dword_100000000, v20, OS_LOG_TYPE_DEBUG, "LocationController,#Warning,Unhandled location type in onWifi2Notification,%{public}d,notification,%{public}d", buf, 0xEu);
        }

        if (sub_10000A100(121, 2))
        {
          sub_1018F8644(buf);
          v29 = *(a4 + 96);
          v30 = *a3;
          v39.i32[3] = 67240448;
          v40 = v29;
          v41 = 1026;
          v42 = v30;
          v31 = _os_log_send_and_compose_impl();
          sub_100152C7C("Generic", 1, 0, 2, "void CLLocationController::onWifi2Notification(int, const CLLocationProvider_Type::Notification &, const CLLocationProvider_Type::NotificationData &)", "%s\n", v31);
          if (v31 != buf)
          {
            free(v31);
          }
        }

        goto LABEL_28;
      }
    }

    a1[171] = 1;
    sub_10010CA08(a1, a1[88], v16, a3, a4);
LABEL_28:

    if (v37)
    {
      sub_100008080(v37);
    }

    if (v36 < 0)
    {
      operator delete(__p);
    }

    if (v34)
    {
      sub_100008080(v34);
    }

    if (v33)
    {
      sub_100008080(v33);
    }

    return;
  }

  if (v10 == 9)
  {
    v23 = a1[171];
    if (v23)
    {
      if (v23 == 1)
      {
        sub_10010CA08(a1, a1[88], v9, a3, a4);
      }

      else
      {
        if (qword_1025D4600 != -1)
        {
          sub_1018F7C0C();
        }

        v28 = qword_1025D4608;
        if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_impl(dword_100000000, v28, OS_LOG_TYPE_DEBUG, "LocationController,#Warning,Unavailable flagged when already in unavailable state", buf, 2u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_1018FAED4();
        }
      }
    }

    else
    {
      sub_10010CA08(a1, a1[85], v9, a3, a4);
    }

    a1[171] = -1;
  }

  else if (v10 == 11)
  {
    sub_1002629B4(a1, a4 + 824);
  }

  else
  {
    if (qword_1025D4600 != -1)
    {
      sub_1018F7C0C();
    }

    v24 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
    {
      v25 = *a3;
      v26 = *(a4 + 96);
      *buf = 67240448;
      v44 = v25;
      v45 = 1026;
      LODWORD(v46) = v26;
      _os_log_impl(dword_100000000, v24, OS_LOG_TYPE_DEBUG, "LocationController,#Warning,Suspect notification in onWifi2Notification,%{public}d,location type,%{public}d", buf, 0xEu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018FAFB8();
    }

    sub_10010CA08(a1, a1[85], v27, a3, a4);
  }
}

void sub_10026297C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_100311054(va);
  _Unwind_Resume(a1);
}

void sub_1002629B4(uint64_t a1, uint64_t a2)
{
  if (*a2 == 11)
  {
    v3 = (a2 + 4);
    v4 = *(a2 + 4);
    v5 = *(a1 + 714);
    *(a1 + 714) = v4;
    if (qword_1025D4600 != -1)
    {
      sub_1002976C8();
    }

    v6 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
    {
      v7 = *v3;
      v8[0] = 67240192;
      v8[1] = v7;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEBUG, "Got notification wifi2 active state,%{public}d", v8, 8u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018FB0CC(v3);
    }

    if (v4 != v5)
    {
      sub_100110094(a1);
    }
  }
}

void sub_100262AC8(uint64_t a1, uint64_t *a2)
{
  if ([*(a1 + 152) indoord])
  {
    sub_100262E30(v19);
    v21 |= 1u;
    if (!v20)
    {
      operator new();
    }

    v4 = sub_100262E68(a2, v20);
    if (qword_1025D4620 != -1)
    {
      sub_101B1AFCC();
    }

    v5 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
    {
      v6 = a2[2];
      v7 = a2[3];
      v8 = *a2;
      v9 = a2[4];
      *buf = 67241217;
      *&buf[4] = v4;
      *&buf[8] = 2050;
      *&buf[10] = v6;
      *&buf[18] = 2048;
      *&buf[20] = v7;
      v33 = 2049;
      v34 = v8;
      v35 = 2050;
      v36 = v9;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEBUG, "ClxIndoor, outdoor update converted, %{public}d, type, %{public}ld, confidence, %ld , start time, %{private}.3f, outdoor prob, %{public}.3f", buf, 0x30u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101B1AFF4(buf);
      v12 = a2[2];
      v13 = a2[3];
      v14 = *a2;
      v15 = a2[4];
      v22 = 67241217;
      v23 = v4;
      v24 = 2050;
      v25 = v12;
      v26 = 2048;
      v27 = v13;
      v28 = 2049;
      v29 = v14;
      v30 = 2050;
      v31 = v15;
      v16 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "virtual void CLPipelineLocationProvider::sendOutdoorUpdate(const CLOutdoor_Type::OutdoorUpdate &)", "%s\n", v16);
      if (v16 != buf)
      {
        free(v16);
      }
    }

    memset(buf, 0, 24);
    wireless_diagnostics::google::protobuf::MessageLite::SerializeToString();
    v10 = [CLPOutdoorEstimatorLogEntryNotification alloc];
    if ((buf[23] & 0x80000000) != 0)
    {
      sub_100007244(__p, *buf, *&buf[8]);
    }

    else
    {
      *__p = *buf;
      v18 = *&buf[16];
    }

    v11 = [v10 initWithSerializedOutdoorEstimatorLogEntry:__p];
    if (SHIBYTE(v18) < 0)
    {
      operator delete(__p[0]);
    }

    [objc_msgSend(*(a1 + 152) "indoord")];
    if ((buf[23] & 0x80000000) != 0)
    {
      operator delete(*buf);
    }

    sub_10026432C(v19);
  }
}

double sub_100262E30(uint64_t a1)
{
  *a1 = off_1024D06A0;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  return result;
}

uint64_t sub_100262E68(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  sub_10000B230(&v18);
  *(a2 + 52) |= 1u;
  v4 = *(a2 + 8);
  if (!v4)
  {
    operator new();
  }

  *(v4 + 36) |= 1u;
  *(a2 + 52) |= 1u;
  *(v4 + 36) |= 2u;
  *(v4 + 8) = vextq_s8(v19, v19, 8uLL);
  *(a2 + 52) |= 1u;
  v5 = *(a2 + 16);
  v6 = v18;
  *(v4 + 36) |= 4u;
  *(v4 + 24) = v6;
  *(a2 + 52) |= 2u;
  if (!v5)
  {
    operator new();
  }

  v7 = sub_1002630D4(v5, *a1);
  v17 = 0;
  sub_100263794(*(a1 + 16), &v17);
  v8 = v17;
  if (!sub_10041ECEC(v17))
  {
    v13 = "::CLP::LogEntry::OutdoorEstimator::CMIndoorOutdoorType_IsValid(value)";
    v14 = 2227;
    v15 = "set_type";
    goto LABEL_13;
  }

  *(a2 + 52) |= 4u;
  *(a2 + 24) = v8;
  v16 = 0;
  sub_1002635FC(*(a1 + 24), &v16);
  v9 = v16;
  if (!sub_10041ECF8(v16))
  {
    v13 = "::CLP::LogEntry::OutdoorEstimator::CMIndoorOutdoorConfidence_IsValid(value)";
    v14 = 2250;
    v15 = "set_confidence";
LABEL_13:
    __assert_rtn(v15, "CLPOutdoorEstimatorLogEntry.pb.h", v14, v13);
  }

  v10 = *(a2 + 52);
  *(a2 + 28) = v9;
  v11 = *(a1 + 32);
  *(a2 + 52) = v10 | 0x38;
  *(a2 + 32) = 1.0 - v11;
  *(a2 + 40) = v11;
  return v7;
}

double sub_100263078(uint64_t a1)
{
  *a1 = off_1024D0790;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  return result;
}

double sub_1002630A8(uint64_t a1)
{
  *a1 = off_1024D0718;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  return result;
}

uint64_t sub_1002630D4(uint64_t a1, double a2)
{
  v15 = a2;
  if (!a1)
  {
    return 0;
  }

  *(a1 + 36) |= 1u;
  *(a1 + 8) = a2;
  v14 = 0xBFF0000000000000;
  v3 = sub_100263574();
  if ((sub_1002633B8(v3, &v15, &v14) & 1) == 0)
  {
    if (qword_1025D4620 != -1)
    {
      sub_101891608();
    }

    v8 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_ERROR, "fromCFAbsoluteTime, convertCFAbsoluteToMachAbsolute_RealTime failed", buf, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1018915C4(buf);
      LOWORD(v13[0]) = 0;
      v12 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 0, "BOOL CLOutdoorUpdateToProtobufConverter::fromCFAbsoluteTime(const CFAbsoluteTime, CLP::LogEntry::OutdoorEstimator::Timestamp *)", "%s\n", v12);
      if (v12 != buf)
      {
        free(v12);
      }
    }

    return 0;
  }

  v4 = v14;
  *(a1 + 36) |= 2u;
  *(a1 + 16) = v4;
  v13[0] = 0.0;
  v5 = sub_100263574();
  v6 = sub_100131674(v5, &v14, v13);
  if (v6)
  {
    v7 = v13[0];
    *(a1 + 36) |= 4u;
    *(a1 + 24) = v7;
  }

  else
  {
    if (qword_1025D4620 != -1)
    {
      sub_101891608();
    }

    v10 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_ERROR, "fromCFAbsoluteTime, convertMachAbsoluteToMachContinuous_RealTime failed", buf, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1018915C4(buf);
      v11 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 0, "BOOL CLOutdoorUpdateToProtobufConverter::fromCFAbsoluteTime(const CFAbsoluteTime, CLP::LogEntry::OutdoorEstimator::Timestamp *)", "%s\n", v11);
      if (v11 != buf)
      {
        free(v11);
      }
    }
  }

  return v6;
}

void sub_1002633AC(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10037EA9C(a1);
}

uint64_t sub_1002633B8(uint64_t a1, double *a2, uint64_t *a3)
{
  v9 = 0.0;
  if (sub_1002634B0(a1, &v9))
  {
    *a3 = *a2 - v9;

    return sub_100131DE8(a1, a3);
  }

  else
  {
    if (qword_1025D4650 != -1)
    {
      sub_1019D1C88();
    }

    v7 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
    {
      *v8 = 0;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEBUG, "TCONV,Failed in getting the offset between CF time and mach time", v8, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1019D2A94();
    }

    return 0;
  }
}

uint64_t sub_1002634B0(uint64_t a1, void *a2)
{
  v9 = 0;
  v7 = 0u;
  v8 = 0u;
  v3 = sub_10013176C(a1, &v7);
  if (v3)
  {
    *a2 = v8;
  }

  else
  {
    if (qword_1025D4650 != -1)
    {
      sub_1019D1C88();
    }

    v4 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
    {
      *v6 = 0;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "TCONV,UpdateLastWakeUpTime failed", v6, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1019D2704();
    }
  }

  return v3;
}

uint64_t sub_100263574()
{
  if ((atomic_load_explicit(&qword_102656438, memory_order_acquire) & 1) == 0)
  {
    sub_10189153C();
  }

  result = qword_102656430;
  if (!qword_102656430)
  {
    operator new();
  }

  return result;
}

uint64_t sub_1002635FC(unint64_t a1, _DWORD *a2)
{
  v3 = a1;
  if (a1 >= 4)
  {
    if (qword_1025D4620 != -1)
    {
      sub_1018915B0();
    }

    v4 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v8 = v3;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_ERROR, "fromCMIndoorOutdoorConfidence received unhandled indoor outdoor confidence: %d", buf, 8u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1018915C4(buf);
      v6 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 0, "BOOL CLOutdoorUpdateToProtobufConverter::fromCMIndoorOutdoorConfidence(const CMIndoorOutdoorConfidence, CLP::LogEntry::OutdoorEstimator::CMIndoorOutdoorConfidence &)", "%s\n", v6);
      if (v6 != buf)
      {
        free(v6);
      }
    }

    v3 = 0;
  }

  *a2 = v3;
  return 1;
}

void sub_100263788(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10037EA9C(a1);
}

uint64_t sub_100263794(unint64_t a1, _DWORD *a2)
{
  v3 = a1;
  if (a1 >= 4)
  {
    if (qword_1025D4620 != -1)
    {
      sub_1018915B0();
    }

    v5 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v9 = v3;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_ERROR, "fromCMIndoorOutdoorType received unhandled indoor outdoor type: %d", buf, 8u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1018915C4(buf);
      v7 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 0, "BOOL CLOutdoorUpdateToProtobufConverter::fromCMIndoorOutdoorType(const CMIndoorOutdoorType, CLP::LogEntry::OutdoorEstimator::CMIndoorOutdoorType &)", "%s\n", v7);
      if (v7 != buf)
      {
        free(v7);
      }
    }

    v4 = 0;
  }

  else
  {
    v4 = dword_101C79300[a1];
  }

  *a2 = v4;
  return 1;
}

void sub_100263930(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10037EA9C(a1);
}

uint64_t sub_10026393C(uint64_t a1, unsigned int a2)
{
  v3 = *(a1 + 84);
  if (!v3)
  {
    v4 = 0;
    if ((v3 & 0x100) == 0)
    {
      goto LABEL_69;
    }

    goto LABEL_63;
  }

  if ((v3 & 1) == 0)
  {
    v4 = 0;
    if ((v3 & 2) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_13;
  }

  v5 = *(a1 + 8);
  if (!v5)
  {
    v5 = *(qword_102638380 + 8);
  }

  v6 = sub_100263C2C(v5, a2);
  v7 = v6;
  if (v6 >= 0x80)
  {
    v8 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6, a2);
  }

  else
  {
    v8 = 1;
  }

  v4 = (v7 + v8 + 1);
  v3 = *(a1 + 84);
  if ((v3 & 2) != 0)
  {
LABEL_13:
    v9 = *(a1 + 16);
    if (!v9)
    {
      v9 = *(qword_102638380 + 16);
    }

    v10 = sub_10110CE04(v9, a2);
    v11 = v10;
    if (v10 >= 0x80)
    {
      v12 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v10, a2);
    }

    else
    {
      v12 = 1;
    }

    v4 = (v4 + v11 + v12 + 1);
    v3 = *(a1 + 84);
  }

LABEL_19:
  if ((v3 & 4) != 0)
  {
    v13 = *(a1 + 24);
    if (!v13)
    {
      v13 = *(qword_102638380 + 24);
    }

    v14 = sub_10110D47C(v13, a2);
    v15 = v14;
    if (v14 >= 0x80)
    {
      v16 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v14, a2);
    }

    else
    {
      v16 = 1;
    }

    v4 = (v4 + v15 + v16 + 1);
    v3 = *(a1 + 84);
    if ((v3 & 8) == 0)
    {
LABEL_21:
      if ((v3 & 0x10) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_39;
    }
  }

  else if ((v3 & 8) == 0)
  {
    goto LABEL_21;
  }

  v17 = *(a1 + 32);
  if (!v17)
  {
    v17 = *(qword_102638380 + 32);
  }

  v18 = sub_10110E6B0(v17);
  v19 = v18;
  if (v18 >= 0x80)
  {
    v20 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v18, a2);
  }

  else
  {
    v20 = 1;
  }

  v4 = (v4 + v19 + v20 + 1);
  v3 = *(a1 + 84);
  if ((v3 & 0x10) == 0)
  {
LABEL_22:
    if ((v3 & 0x20) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_45;
  }

LABEL_39:
  v21 = *(a1 + 40);
  if (!v21)
  {
    v21 = *(qword_102638380 + 40);
  }

  v22 = sub_10110F274(v21);
  v23 = v22;
  if (v22 >= 0x80)
  {
    v24 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v22, a2);
  }

  else
  {
    v24 = 1;
  }

  v4 = (v4 + v23 + v24 + 1);
  v3 = *(a1 + 84);
  if ((v3 & 0x20) == 0)
  {
LABEL_23:
    if ((v3 & 0x40) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_51;
  }

LABEL_45:
  v25 = *(a1 + 48);
  if (!v25)
  {
    v25 = *(qword_102638380 + 48);
  }

  v26 = sub_10110F7E4(v25, a2);
  v28 = v26;
  if (v26 >= 0x80)
  {
    v29 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v26, v27);
  }

  else
  {
    v29 = 1;
  }

  v4 = (v4 + v28 + v29 + 1);
  v3 = *(a1 + 84);
  if ((v3 & 0x40) == 0)
  {
LABEL_24:
    if ((v3 & 0x80) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_57;
  }

LABEL_51:
  v30 = *(a1 + 56);
  if (!v30)
  {
    v30 = *(qword_102638380 + 56);
  }

  v31 = sub_10110FD0C(v30);
  v33 = v31;
  if (v31 >= 0x80)
  {
    v34 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v31, v32);
  }

  else
  {
    v34 = 1;
  }

  v4 = (v4 + v33 + v34 + 1);
  v3 = *(a1 + 84);
  if ((v3 & 0x80) == 0)
  {
LABEL_25:
    if ((v3 & 0x100) == 0)
    {
      goto LABEL_69;
    }

    goto LABEL_63;
  }

LABEL_57:
  v35 = *(a1 + 64);
  if (!v35)
  {
    v35 = *(qword_102638380 + 64);
  }

  v36 = sub_1011101E8(v35);
  v38 = v36;
  if (v36 >= 0x80)
  {
    v39 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v36, v37);
  }

  else
  {
    v39 = 1;
  }

  v4 = (v4 + v38 + v39 + 1);
  if ((*(a1 + 84) & 0x100) != 0)
  {
LABEL_63:
    v40 = *(a1 + 72);
    if (!v40)
    {
      v40 = *(qword_102638380 + 72);
    }

    v41 = sub_1011106C4(v40);
    v43 = v41;
    if (v41 >= 0x80)
    {
      v44 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v41, v42);
    }

    else
    {
      v44 = 1;
    }

    v4 = (v4 + v43 + v44 + 1);
  }

LABEL_69:
  *(a1 + 80) = v4;
  return v4;
}

uint64_t sub_100263C2C(uint64_t a1, unsigned int a2)
{
  LOBYTE(v3) = *(a1 + 52);
  if (!v3)
  {
    result = 0;
    goto LABEL_44;
  }

  if ((*(a1 + 52) & 1) == 0)
  {
    v4 = 0;
    if ((*(a1 + 52) & 2) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_15;
  }

  v6 = *(a1 + 8);
  if (!v6)
  {
    v6 = *(qword_102638390 + 8);
  }

  v7 = *(v6 + 36);
  if (*(v6 + 36))
  {
    v8 = (v7 << 31 >> 31) & 9;
    if ((v7 & 2) != 0)
    {
      v8 += 9;
    }

    if ((v7 & 4) != 0)
    {
      v7 = v8 + 9;
    }

    else
    {
      v7 = v8;
    }
  }

  *(v6 + 32) = v7;
  v4 = v7 + 2;
  v3 = *(a1 + 52);
  if ((v3 & 2) != 0)
  {
LABEL_15:
    v9 = *(a1 + 16);
    if (!v9)
    {
      v9 = *(qword_102638390 + 16);
    }

    v10 = *(v9 + 36);
    if (*(v9 + 36))
    {
      v11 = (v10 << 31 >> 31) & 9;
      if ((v10 & 2) != 0)
      {
        v11 += 9;
      }

      if ((v10 & 4) != 0)
      {
        v10 = v11 + 9;
      }

      else
      {
        v10 = v11;
      }
    }

    *(v9 + 32) = v10;
    v4 += v10 + 2;
    v3 = *(a1 + 52);
  }

LABEL_24:
  if ((v3 & 4) == 0)
  {
    if ((v3 & 8) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_33;
  }

  v12 = *(a1 + 24);
  if ((v12 & 0x80000000) != 0)
  {
    v13 = 11;
  }

  else if (v12 >= 0x80)
  {
    v13 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v12, a2) + 1;
    v3 = *(a1 + 52);
  }

  else
  {
    v13 = 2;
  }

  v4 += v13;
  if ((v3 & 8) != 0)
  {
LABEL_33:
    v14 = *(a1 + 28);
    if ((v14 & 0x80000000) != 0)
    {
      v15 = 11;
    }

    else if (v14 >= 0x80)
    {
      v15 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v14, a2) + 1;
      v3 = *(a1 + 52);
    }

    else
    {
      v15 = 2;
    }

    v4 += v15;
  }

LABEL_39:
  v16 = v4 + 9;
  if ((v3 & 0x10) == 0)
  {
    v16 = v4;
  }

  if ((v3 & 0x20) != 0)
  {
    result = v16 + 9;
  }

  else
  {
    result = v16;
  }

LABEL_44:
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_100263DA0(uint64_t result, wireless_diagnostics::google::protobuf::MessageLite *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 84);
  if (v6)
  {
    v7 = *(result + 8);
    if (!v7)
    {
      v7 = *(qword_102638380 + 8);
    }

    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(1, v7, a2, a4);
    v6 = *(v5 + 84);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_17;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  v8 = *(v5 + 16);
  if (!v8)
  {
    v8 = *(qword_102638380 + 16);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(2, v8, a2, a4);
  v6 = *(v5 + 84);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_20;
  }

LABEL_17:
  v9 = *(v5 + 24);
  if (!v9)
  {
    v9 = *(qword_102638380 + 24);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(3, v9, a2, a4);
  v6 = *(v5 + 84);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_23;
  }

LABEL_20:
  v10 = *(v5 + 32);
  if (!v10)
  {
    v10 = *(qword_102638380 + 32);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(4, v10, a2, a4);
  v6 = *(v5 + 84);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_26;
  }

LABEL_23:
  v11 = *(v5 + 40);
  if (!v11)
  {
    v11 = *(qword_102638380 + 40);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(5, v11, a2, a4);
  v6 = *(v5 + 84);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_29;
  }

LABEL_26:
  v12 = *(v5 + 48);
  if (!v12)
  {
    v12 = *(qword_102638380 + 48);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(6, v12, a2, a4);
  v6 = *(v5 + 84);
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_32;
  }

LABEL_29:
  v13 = *(v5 + 56);
  if (!v13)
  {
    v13 = *(qword_102638380 + 56);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(7, v13, a2, a4);
  v6 = *(v5 + 84);
  if ((v6 & 0x80) == 0)
  {
LABEL_9:
    if ((v6 & 0x100) == 0)
    {
      return result;
    }

    goto LABEL_35;
  }

LABEL_32:
  v14 = *(v5 + 64);
  if (!v14)
  {
    v14 = *(qword_102638380 + 64);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(8, v14, a2, a4);
  if ((*(v5 + 84) & 0x100) != 0)
  {
LABEL_35:
    v15 = *(v5 + 72);
    if (!v15)
    {
      v15 = *(qword_102638380 + 72);
    }

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(9, v15, a2, a4);
  }

  return result;
}

uint64_t sub_100263F64(uint64_t result, const wireless_diagnostics::google::protobuf::MessageLite *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 52);
  if (v6)
  {
    v7 = *(result + 8);
    if (!v7)
    {
      v7 = *(qword_102638390 + 8);
    }

    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(1, v7, a2, a4);
    v6 = *(v5 + 52);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  v8 = *(v5 + 16);
  if (!v8)
  {
    v8 = *(qword_102638390 + 16);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(2, v8, a2, a4);
  v6 = *(v5 + 52);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(3, *(v5 + 24), a2, a4);
  v6 = *(v5 + 52);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

LABEL_16:
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(5, a2, *(v5 + 32), a3);
    if ((*(v5 + 52) & 0x20) == 0)
    {
      return result;
    }

    goto LABEL_17;
  }

LABEL_15:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(4, *(v5 + 28), a2, a4);
  v6 = *(v5 + 52);
  if ((v6 & 0x10) != 0)
  {
    goto LABEL_16;
  }

LABEL_6:
  if ((v6 & 0x20) == 0)
  {
    return result;
  }

LABEL_17:
  v9 = *(v5 + 40);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(6, a2, v9, a3);
}

uint64_t sub_100264064(uint64_t result, int a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3)
{
  v4 = result;
  v5 = *(result + 36);
  if ((v5 & 1) == 0)
  {
    if ((v5 & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(2, a2, *(v4 + 16), a3);
    if ((*(v4 + 36) & 4) == 0)
    {
      return result;
    }

    goto LABEL_7;
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(1, a2, *(result + 8), a3);
  v5 = *(v4 + 36);
  if ((v5 & 2) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if ((v5 & 4) == 0)
  {
    return result;
  }

LABEL_7:
  v6 = *(v4 + 24);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(3, a2, v6, a3);
}

void sub_1002640F0(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = off_1024D0790;
  sub_1002643D4(a1);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);

  operator delete();
}

void *sub_100264158(void *result)
{
  if (qword_102638380 != result)
  {
    v1 = result;
    v2 = result[1];
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }

    v3 = v1[2];
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }

    v4 = v1[3];
    if (v4)
    {
      (*(*v4 + 8))(v4);
    }

    v5 = v1[4];
    if (v5)
    {
      (*(*v5 + 8))(v5);
    }

    v6 = v1[5];
    if (v6)
    {
      (*(*v6 + 8))(v6);
    }

    v7 = v1[6];
    if (v7)
    {
      (*(*v7 + 8))(v7);
    }

    v8 = v1[7];
    if (v8)
    {
      (*(*v8 + 8))(v8);
    }

    v9 = v1[8];
    if (v9)
    {
      (*(*v9 + 8))(v9);
    }

    result = v1[9];
    if (result)
    {
      v10 = *(*result + 8);

      return v10();
    }
  }

  return result;
}

void sub_10026432C(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = off_1024D06A0;
  sub_100264158(a1);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void sub_100264380(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = off_1024D0718;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);

  operator delete();
}

void *sub_1002643D4(void *result)
{
  if (qword_102638390 != result)
  {
    v1 = result;
    v2 = result[1];
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }

    result = v1[2];
    if (result)
    {
      v3 = *(*result + 8);

      return v3();
    }
  }

  return result;
}

uint64_t sub_100264474(uint64_t a1, int a2, int *a3)
{
  v27[0] = a2;
  v6 = sub_100145710(a1, a2, a3);
  result = 1;
  if (!v6 || *a3)
  {
    return result;
  }

  v8 = *(a1 + 672);
  v9 = *(a1 + 696);
  v10 = *(a1 + 664);
  if (!v10)
  {
    goto LABEL_10;
  }

  v11 = a1 + 664;
  do
  {
    if (*(v10 + 28) >= a2)
    {
      v11 = v10;
    }

    v10 = *(v10 + 8 * (*(v10 + 28) < a2));
  }

  while (v10);
  if (v11 != a1 + 664 && *(v11 + 28) <= a2)
  {
    v15 = a1 + 656;
  }

  else
  {
LABEL_10:
    v12 = *(a1 + 688);
    if (!v12)
    {
      goto LABEL_17;
    }

    v13 = a1 + 688;
    do
    {
      if (*(v12 + 28) >= a2)
      {
        v13 = v12;
      }

      v12 = *(v12 + 8 * (*(v12 + 28) < a2));
    }

    while (v12);
    if (v13 == a1 + 688 || *(v13 + 28) > a2)
    {
LABEL_17:
      if (qword_1025D4620 != -1)
      {
        sub_101B1AC14();
      }

      v14 = qword_1025D4628;
      if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_DEBUG, "#Warning Trying to remove non-existent pipeline client", buf, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101B1CC08();
      }

      goto LABEL_26;
    }

    v15 = a1 + 680;
  }

  sub_10004E6E0(v15, v27);
LABEL_26:
  if (qword_1025D4620 != -1)
  {
    sub_101B1AFCC();
  }

  v16 = qword_1025D4628;
  if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
  {
    v17 = *(a1 + 672);
    v18 = *(a1 + 696);
    v19 = *a3;
    *buf = 134349824;
    v36 = v17;
    v37 = 2050;
    v38 = v18;
    v39 = 1026;
    v40 = v27[0];
    v41 = 1026;
    v42 = v19;
    _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_DEFAULT, "regionalClients,%{public}lu, indoorClients,%{public}lu, client,%{public}d, notification,%{public}d", buf, 0x22u);
  }

  v20 = -v9;
  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D4620 != -1)
    {
      sub_101B1AFCC();
    }

    v23 = *(a1 + 672);
    v24 = *(a1 + 696);
    v25 = *a3;
    v27[1] = 134349824;
    v28 = v23;
    v29 = 2050;
    v30 = v24;
    v31 = 1026;
    v32 = v27[0];
    v33 = 1026;
    v34 = v25;
    v26 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "virtual BOOL CLPipelineLocationProvider::unregisterForNotification(int, const CLLocationProvider_Type::Notification &)", "%s\n", v26);
    if (v26 != buf)
    {
      free(v26);
    }
  }

  v21.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_;
  v22 = *(a1 + 144);
  if (v8 != v20 && *(a1 + 672) == -*(a1 + 696))
  {
    return sub_100264934(v22);
  }

  sub_1002647C8(v22, v21.__d_.__rep_);
  return 1;
}

void sub_1002647C8(uint64_t a1, uint64_t a2)
{
  if (qword_1025D4620 != -1)
  {
    sub_101869E48();
  }

  v4 = qword_1025D4628;
  if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(__p[0]) = 0;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "Removed pipelined client", __p, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10186F6A0();
  }

  if (((*(**(a1 + 24) + 208))(*(a1 + 24)) & 1) == 0)
  {
    sub_10025DFCC(a1, 0);
  }

  sub_10000EC00(__p, "onClientRemoval");
  sub_10022C7A4(a1, a2, __p);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1002648D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1002648F0(uint64_t a1, _DWORD *a2)
{
  if (*a2 == 28)
  {
    v3.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_;
    sub_100381508(*(a1 + 144), v3.__d_.__rep_);
  }

  return 1;
}

uint64_t sub_100264934(uint64_t a1)
{
  if (!(*(**(a1 + 24) + 200))(*(a1 + 24)))
  {
    v3 = *(a1 + 8);
    v2 = *(a1 + 16);
    v4 = *(a1 + 24);
    v5 = [v3 state];
    switch(v5)
    {
      case 0u:
        if (qword_1025D4620 != -1)
        {
          sub_101869E48();
        }

        v9 = qword_1025D4628;
        if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
        {
          LOWORD(v11[0]) = 0;
          _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "ignoring request to stop. already stopped", v11, 2u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_10186D270();
        }

        goto LABEL_24;
      case 2u:
        if (qword_1025D4620 != -1)
        {
          sub_101869E48();
        }

        v7 = qword_1025D4628;
        if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
        {
          v8 = (*(*v4 + 200))(v4);
          v11[0] = 67109120;
          v11[1] = v8;
          _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEBUG, "requesting provider to stop, clients = %d", v11, 8u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_10186D150(v4);
        }

        break;
      case 1u:
        if (qword_1025D4620 != -1)
        {
          sub_101869E48();
        }

        v6 = qword_1025D4628;
        if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
        {
          LOWORD(v11[0]) = 0;
          _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEBUG, "ignoring request to stop - already stopping", v11, 2u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_10186D34C();
        }

        goto LABEL_24;
    }

    [v3 setState:1];
    [v2 debounceInterval];
    (*(*v4 + 48))(v4);
LABEL_24:
    [*(a1 + 8) setLatestReason:0];
  }

  if (((*(**(a1 + 24) + 208))(*(a1 + 24)) & 1) == 0)
  {
    sub_10025DFCC(a1, 0);
  }

  return 1;
}

id sub_100264BF8(uint64_t a1, double a2)
{
  sub_100264CA8(__p, (a1 + 192));
  sub_100264CEC((a1 + 648), __p);
  sub_100264D70(__p);
  v4 = *(a1 + 144);
  sub_10000EC00(__p, "start debounce");
  sub_10025D7D0(v4, __p);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  return [objc_msgSend(*(a1 + 152) "debounceTimer")];
}

void sub_100264C8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_100264CA8(uint64_t *a1, uint64_t *a2)
{
  v3 = *a2;
  *a1 = *a2;
  [*(v3 + 16) register:*(v3 + 8) forNotification:19 registrationInfo:0];
  return a1;
}

uint64_t *sub_100264CEC(uint64_t *a1, uint64_t *a2)
{
  v3 = *a2;
  *a2 = 0;
  v4 = *a1;
  *a1 = v3;
  v6 = v4;
  sub_100264D34(&v6);
  return a1;
}

uint64_t sub_100264D34(uint64_t a1)
{
  if (*a1)
  {
    [*(*a1 + 16) unregister:*(*a1 + 8) forNotification:19];
  }

  return a1;
}

uint64_t sub_100264D7C(uint64_t a1, uint64_t *a2)
{
  result = [*(a1 + 8) fSpectatingLocation];
  if ((result & 1) == 0)
  {
    [*(a1 + 8) setFSpectatingLocation:1];
    if (qword_1025D4620 != -1)
    {
      sub_101869E48();
    }

    v5 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
    {
      if (*(a2 + 23) >= 0)
      {
        v6 = a2;
      }

      else
      {
        v6 = *a2;
      }

      v9 = 136315138;
      v10 = v6;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEFAULT, "@ClxIndoor, state, 1, spectate, starting to spectate location because %s", &v9, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10186ABA0();
    }

    if (sub_10001CF04())
    {
      if (qword_1025D4620 != -1)
      {
        sub_101869E5C();
      }

      v7 = qword_1025D4628;
      if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
      {
        if (*(a2 + 23) >= 0)
        {
          v8 = a2;
        }

        else
        {
          v8 = *a2;
        }

        v9 = 136315138;
        v10 = v8;
        _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEFAULT, "@ClxWifi2, state, 1, spectate, starting to spectate location because %s", &v9, 0xCu);
      }

      if (sub_10000A100(121, 2))
      {
        sub_10186AC8C();
      }
    }

    return (*(**(a1 + 24) + 24))(*(a1 + 24));
  }

  return result;
}

void sub_100264F58(uint64_t a1)
{
  if (qword_1025D4650 != -1)
  {
    sub_101A772C8();
  }

  v2 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEFAULT, "CLGnssProvider,stopLocation", v3, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101A781A0();
  }

  [*(a1 + 3248) setNextFireDelay:1.79769313e308];
  [*(a1 + 3256) setNextFireDelay:1.79769313e308];
  if (*(a1 + 3720) == 1)
  {
    [*(*(a1 + 3712) + 16) unregister:*(*(a1 + 3712) + 8) forNotification:27];
    *(a1 + 3720) = 0;
  }

  sub_100265048(a1 + 120);
  sub_1001B5420(a1);
}

void sub_100265048(uint64_t a1)
{
  *(a1 + 744) = 0;
  sub_1001BF630(a1 + 2576, 3);
  v2 = *(a1 + 456);
  if (v2)
  {
    (*(*v2 + 48))(v2);
  }

  if (qword_1025D4650 != -1)
  {
    sub_10194117C();
  }

  v3 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
  {
    v4[0] = 68289282;
    v4[1] = 0;
    v5 = 2082;
    v6 = "";
    v7 = 2082;
    v8 = "clientStop";
    _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:GnssEvent, event:%{public, location:escape_only}s}", v4, 0x1Cu);
  }
}

double sub_100265160(void *a1, int a2)
{
  v4 = sub_1002656B4();
  v5 = *(a1 + 142);
  v6 = sub_1000081AC() - *(a1 + 341);
  if (*(a1 + 1221) & 1) != 0 || (a1[94])
  {
    v7 = 0;
  }

  else
  {
    v7 = *(a1 + 2744);
  }

  v8 = v5 & 0xFFFFFFFE;
  v9 = *(a1 + 80) ^ 1 | v7;
  if ((*(a1 + 1222) & 1) == 0 && v8 != 10 && (v9 & (v6 > 1.0)) == 0)
  {
    v11 = v9 & (v6 <= 1.0);
    if (v11 == 1)
    {
      if (qword_1025D4650 != -1)
      {
        sub_10194117C();
      }

      v12 = qword_1025D4658;
      if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
      {
        v13 = *(a1 + 80) ^ 1;
        *buf = 67240704;
        *v28 = v13;
        *&v28[4] = 1026;
        *&v28[6] = v7 & 1;
        *v29 = 1026;
        *&v29[2] = 1;
        _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_DEFAULT, "CLGnssController,min debounce,reason,noFix,%{public}d,lowBenefit,%{public}d,sessLength,%{public}d", buf, 0x14u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101942628((a1 + 10), (v7 & 1));
      }

      v4 = *(a1 + 390);
      if (!sub_100265714())
      {
        if ((a2 & 1) == 0)
        {
          return v4;
        }

        goto LABEL_55;
      }

      v14 = *(a1 + 390);
    }

    else
    {
      if (!sub_100265714())
      {
        if ((a2 & 1) == 0)
        {
          return v4;
        }

LABEL_57:
        v18 = 0;
        goto LABEL_58;
      }

      v14 = *(a1 + 390);
      if (*a1 && ((*(**a1 + 352))(*a1) & 1) == 0)
      {
        if (qword_1025D4650 != -1)
        {
          sub_10194117C();
        }

        v22 = qword_1025D4658;
        if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(dword_100000000, v22, OS_LOG_TYPE_DEFAULT, "Extended debounce due to lack of assistance file", buf, 2u);
        }

        v14 = 30.0;
        if (sub_10000A100(121, 2))
        {
          sub_10194254C();
        }
      }
    }

    if (*(a1 + 176) == 1 && *(a1 + 23) + *(a1 + 24) * -2.0 > 50.0)
    {
      v14 = 120.0;
    }

    if (v14 >= *(a1 + 193))
    {
      v14 = *(a1 + 193);
    }

    if (qword_1025D4650 != -1)
    {
      sub_101940C48();
    }

    v23 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
    {
      v24 = *(a1 + 193);
      *buf = 134349312;
      *v28 = v14;
      *&v28[8] = 1026;
      *v29 = v24;
      _os_log_impl(dword_100000000, v23, OS_LOG_TYPE_DEFAULT, "CLGnssController,extended debounce,%{public}f,numFixesSinceFirst,%{public}d", buf, 0x12u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101942738();
    }

    if (v4 < v14)
    {
      v4 = v14;
    }

    if ((a2 & 1) == 0)
    {
      return v4;
    }

    if (!v11)
    {
      goto LABEL_57;
    }

LABEL_55:
    v18 = v4 <= *(a1 + 390);
LABEL_58:
    v19 = a1;
    v20 = v6;
    v21 = v18;
    goto LABEL_59;
  }

  if (qword_1025D4650 != -1)
  {
    sub_10194117C();
  }

  v15 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
  {
    v16 = *(a1 + 1222);
    v17 = *(a1 + 80) ^ 1;
    *buf = 67240960;
    *v28 = v16;
    *&v28[4] = 1026;
    *&v28[6] = v8 == 10;
    *v29 = 1026;
    *&v29[2] = v17;
    v30 = 1026;
    v31 = v7 & 1;
    _os_log_impl(dword_100000000, v15, OS_LOG_TYPE_DEFAULT, "CLGnssController,skip debounce,reason,conformance,%{public}d,background,%{public}d,noFix,%{public}d,lowBenefit,%{public}d", buf, 0x1Au);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D4650 != -1)
    {
      sub_101940C48();
    }

    v26 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "double CLGnssController::computeDebounceDurationSeconds(const BOOL) const", "%s\n", v26);
    if (v26 != buf)
    {
      free(v26);
    }
  }

  v4 = 0.0;
  if (a2 && (*(a1 + 1222) & 1) == 0 && v8 != 10)
  {
    v18 = v9 & 1;
    v19 = a1;
    v20 = v6;
    v21 = 0;
LABEL_59:
    sub_100265754(v19, v18, v21, v20);
  }

  return v4;
}

double sub_1002656B4()
{
  if ((atomic_load_explicit(&qword_102659320, memory_order_acquire) & 1) == 0)
  {
    sub_10191CAB4();
  }

  if (qword_1026591F8 != -1)
  {
    sub_10191CB00();
  }

  return *&qword_102659318;
}

BOOL sub_100265714()
{
  if ((sub_1001B9BE0() & 1) != 0 || sub_10006FE30())
  {
    return 1;
  }

  return sub_100718F78();
}

void sub_100265754(uint64_t a1, int a2, int a3, double a4)
{
  if (!*(a1 + 1136))
  {
    return;
  }

  if (sub_10006FE30())
  {
    v8 = sub_10001CF04();
    if (v8)
    {
      v9 = 24.0;
      if (!a2)
      {
LABEL_18:
        v11 = *(a1 + 1136);

        sub_100265938(v11, v9, a4);
        return;
      }
    }

    if (!a2)
    {
      return;
    }
  }

  else
  {
    v8 = 0;
    if (!a2)
    {
      return;
    }
  }

  if ((sub_100265838() & 1) != 0 || (v10 = 0.0, sub_1001C5490()))
  {
    if (sub_10001CF04())
    {
      v10 = 6.0;
    }

    else
    {
      v10 = 0.0;
    }
  }

  v9 = 30.0;
  if (!v8)
  {
    v9 = v10;
  }

  if (a3)
  {
    v9 = v9 - *(a1 + 3120);
  }

  if (v9 > 0.0)
  {
    goto LABEL_18;
  }
}

uint64_t sub_100265838()
{
  if (sub_100265888() || sub_1002658E0() || (sub_1000733FC() & 1) != 0 || (sub_1000734AC() & 1) != 0)
  {
    return 1;
  }

  return sub_100265CB8();
}

BOOL sub_100265888()
{
  if (qword_1026590E8 != -1)
  {
    sub_10015EEE0();
  }

  if (qword_1026592D8 != -1)
  {
    sub_10191B9BC();
  }

  return (dword_1026592D0 - 57) < 3;
}

BOOL sub_1002658E0()
{
  if (qword_1026590E8 != -1)
  {
    sub_10015EEE0();
  }

  if (qword_1026592D8 != -1)
  {
    sub_10191B9BC();
  }

  return (dword_1026592D0 - 68) < 3;
}

void sub_100265938(uint64_t a1, double a2, double a3)
{
  if (a2 <= 0.0)
  {
    if (qword_1025D4650 != -1)
    {
      sub_1016C8A14();
    }

    v18 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v18, OS_LOG_TYPE_ERROR, "#gnssca,received negative gnss debounce savings", buf, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1016CB6C8();
    }
  }

  else
  {
    v6 = sub_1000081AC();
    v7 = (a1 + 2760);
    v8 = *(a1 + 2784);
    if (v8 > 0.0)
    {
      v9 = *(a1 + 2792);
      v10 = v8 + v9 + a3 - v6;
      if (v10 > 0.0 && v10 < v9)
      {
        *v7 = *v7 - v10;
        if (qword_1025D4650 != -1)
        {
          sub_1016C8A14();
        }

        v12 = qword_1025D4658;
        if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
        {
          v13 = *(a1 + 2760);
          v14 = *(a1 + 2784);
          v15 = *(a1 + 2792);
          *buf = 134350336;
          v21 = v13;
          v22 = 2050;
          v23 = a3;
          v24 = 2050;
          v25 = v10;
          v26 = 2050;
          v27 = v6;
          v28 = 2050;
          v29 = v14;
          v30 = 2050;
          v31 = v15;
          _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_DEFAULT, "#gnssca,gnssDebouce savings,adjusted for overlap with last session,totalAdjustedSaving,%{public}0.2f,sessDur,%{public}0.2f,overlapDur,%{public}0.2f,currMct,%{public}0.3f,lastSessMct,%{public}0.3f,lastSessDebounceSaving,%{public}0.2f", buf, 0x3Eu);
        }

        if (sub_10000A100(121, 2))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1025D4650 != -1)
          {
            sub_1016C8BF0();
          }

          v19 = _os_log_send_and_compose_impl();
          sub_100152C7C("Generic", 1, 0, 2, "void CLGnssAWD::handleGnssDebounceSavingsAnalytics(const CFTimeInterval, const CFTimeInterval)", "%s\n", v19);
          if (v19 != buf)
          {
            free(v19);
          }
        }
      }
    }

    *(a1 + 2792) = a2;
    *(a1 + 2760) = *(a1 + 2760) + a2;
    *(a1 + 2784) = v6;
    if (qword_1025D4650 != -1)
    {
      sub_1016C8BF0();
    }

    v16 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
    {
      v17 = *v7;
      *buf = 134349312;
      v21 = a2;
      v22 = 2050;
      v23 = v17;
      _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_DEFAULT, "#gnssca,gnssDebouce,saving,seconds,new,%{public}0.2f,total,%{public}0.2f", buf, 0x16u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1016CB7AC((a1 + 2760), a2);
    }

    sub_100265D24(a1);
  }
}

uint64_t sub_100265CB8()
{
  if (qword_1026590E8 != -1)
  {
    sub_10015EEE0();
  }

  if (qword_1026592D8 != -1)
  {
    sub_10191B9BC();
  }

  return ((dword_1026592D0 - 86) < 0x27) & (0x73399999E5uLL >> (dword_1026592D0 - 86));
}

void sub_100265D24(uint64_t a1)
{
  if (*(a1 + 2760) >= *(a1 + 2792) && *(a1 + 2768) >= 0.0)
  {
    v7 = *(a1 + 2776);
    v9 = v7 > 0.0 && (v8 = *(a1 + 2784), v8 > 0.0) && vabdd_f64(v7, v8) < 1.0;
    if (qword_1025D4650 != -1)
    {
      sub_1016C8A14();
    }

    v10 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(a1 + 2776) - *(a1 + 2784);
      *buf = 67240448;
      *v15 = v9;
      *&v15[4] = 2050;
      *&v15[6] = v11;
      _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEFAULT, "#gnssca,isConcurrentSessionWithProactiveLocation,%{public}d,diffSec,%{public}0.2f", buf, 0x12u);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4650 != -1)
      {
        sub_1016C8BF0();
      }

      v13 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "void CLGnssAWD::checkDebounceSavingStatsValidity()", "%s\n", v13);
      if (v13 != buf)
      {
        free(v13);
      }
    }
  }

  else
  {
    if (qword_1025D4650 != -1)
    {
      sub_1016C8A14();
    }

    v2 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_ERROR))
    {
      v3 = *(a1 + 2760);
      v4 = *(a1 + 2792);
      v5 = *(a1 + 2768);
      *buf = 134349568;
      *v15 = v3;
      *&v15[8] = 2050;
      *&v15[10] = v4;
      v16 = 2050;
      v17 = v5;
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_ERROR, "#gnssca,proactiveLocation,stats data invalid,debounceCumSec,%{public}0.2f,last,%{public}0.2f,proactiveCumSec,%{public}0.2f", buf, 0x20u);
    }

    v6 = a1 + 2760;
    if (sub_10000A100(121, 0))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4650 != -1)
      {
        sub_1016C8BF0();
      }

      v12 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 0, "void CLGnssAWD::checkDebounceSavingStatsValidity()", "%s\n", v12);
      if (v12 != buf)
      {
        free(v12);
      }
    }

    *(v6 + 32) = 0;
    *v6 = 0u;
    *(v6 + 16) = 0u;
  }
}

void sub_1002660A8(uint64_t a1)
{
  if ((*(a1 + 768) & 1) == 0)
  {
    v2 = sub_100265160(a1, 0);
    sub_1002661E0(a1);
    if (qword_1025D4650 != -1)
    {
      sub_10194117C();
    }

    v3 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
    {
      v5[0] = 68289538;
      v5[1] = 0;
      v6 = 2082;
      v7 = "";
      v8 = 1026;
      v9 = 1;
      v10 = 2050;
      v11 = v2;
      _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:GnssStopTimer, run:%{public}hhd, debounce:%{public}f}", v5, 0x22u);
    }

    sub_100266354(a1 + 2576, 16, v2);
    *(a1 + 768) = 1;
    v4 = *(a1 + 1136);
    if (v4)
    {
      sub_1001BD68C(v4, 3, 1);
    }
  }
}

uint64_t sub_1002661E0(uint64_t a1)
{
  result = sub_100265714();
  if (result && *(a1 + 80) == 1)
  {
    result = sub_1001B4788(*(a1 + 88), *(a1 + 96));
    v3 = result;
    v7 = result != 0;
    if (*a1)
    {
      *(*a1 + 1337) = result != 0;
    }

    if (*(a1 + 1221) == 1)
    {
      if (qword_1025D4650 != -1)
      {
        sub_10194117C();
      }

      v4 = qword_1025D4658;
      if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67240192;
        v9 = v3 != 0;
        _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEFAULT, "#cspb,storing in region as,%{public}d", buf, 8u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101946D80((v3 != 0));
      }

      v5 = sub_1000206B4();
      sub_100043360(v5, "GnssSimulatorModeForRegionWithMoreBds", &v7);
      v6 = *sub_1000206B4();
      return (*(v6 + 944))();
    }
  }

  return result;
}

void sub_100266354(uint64_t a1, signed int a2, double a3)
{
  v36 = a2;
  v4 = *(a1 + 80);
  if (!v4)
  {
    if (qword_1025D4650 != -1)
    {
      sub_10194117C();
    }

    v29 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_ERROR))
    {
      v30 = (a1 + 96);
      if (*(a1 + 119) < 0)
      {
        v30 = *v30;
      }

      *buf = 136315138;
      *&buf[4] = v30;
      _os_log_impl(dword_100000000, v29, OS_LOG_TYPE_ERROR, "%sInvoking timers without callback queue set", buf, 0xCu);
    }

    if (sub_10000A100(121, 0))
    {
      sub_101946E6C();
    }

    if (qword_1025D4650 != -1)
    {
      sub_101940C48();
    }

    v31 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      *&buf[4] = 0;
      *&buf[8] = 2082;
      *&buf[10] = "";
      *&buf[18] = 2082;
      *&buf[20] = "assert";
      *&buf[28] = 2081;
      *&buf[30] = "false";
      _os_log_impl(dword_100000000, v31, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4650 != -1)
      {
        sub_101940C48();
      }
    }

    v32 = qword_1025D4658;
    if (os_signpost_enabled(qword_1025D4658))
    {
      *buf = 68289539;
      *&buf[4] = 0;
      *&buf[8] = 2082;
      *&buf[10] = "";
      *&buf[18] = 2082;
      *&buf[20] = "assert";
      *&buf[28] = 2081;
      *&buf[30] = "false";
      _os_signpost_emit_with_name_impl(dword_100000000, v32, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Assertion failed", "{msg%{public}.0s:Assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4650 != -1)
      {
        sub_101940C48();
      }
    }

    v33 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      *&buf[4] = 0;
      *&buf[8] = 2082;
      *&buf[10] = "";
      *&buf[18] = 2082;
      *&buf[20] = "assert";
      *&buf[28] = 2081;
      *&buf[30] = "false";
      _os_log_impl(dword_100000000, v33, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np();
    __break(1u);
  }

  if (a3 < 0.0)
  {
    if (qword_1025D4650 != -1)
    {
      sub_10194117C();
    }

    v7 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_FAULT))
    {
      v8 = (a1 + 96);
      if (*(a1 + 119) < 0)
      {
        v8 = *v8;
      }

      sub_1001B5660(a2, __p);
      if (v44 >= 0)
      {
        v9 = __p;
      }

      else
      {
        v9 = *__p;
      }

      *buf = 136315650;
      *&buf[4] = v8;
      *&buf[12] = 2082;
      *&buf[14] = v9;
      *&buf[22] = 2050;
      *&buf[24] = a3;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_FAULT, "%sCannot start timer, event, %{public}s, timeOutSec, %{public}.2f", buf, 0x20u);
      if (SHIBYTE(v44) < 0)
      {
        operator delete(*__p);
      }
    }

    if (sub_10000A100(121, 0))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4650 != -1)
      {
        sub_101940C48();
      }

      v10 = (a1 + 96);
      if (*(a1 + 119) < 0)
      {
        v10 = *v10;
      }

      sub_1001B5660(a2, v37);
      if (v40 >= 0)
      {
        v11 = v37;
      }

      else
      {
        v11 = *v37;
      }

      *__p = 136315650;
      *&__p[4] = v10;
      v42 = 2082;
      v43 = v11;
      v44 = 2050;
      v45 = a3;
      v12 = _os_log_send_and_compose_impl();
      if (v40 < 0)
      {
        operator delete(*v37);
      }

LABEL_76:
      sub_100152C7C("Generic", 1, 0, 0, "void CLStateMachine<CLGnssController>::setTimeoutEvent(Event, double) [T = CLGnssController]", "%s\n", v12);
LABEL_77:
      if (v12 != buf)
      {
        free(v12);
      }

      return;
    }

    return;
  }

  v13 = *(a1 + 64);
  if (v13)
  {
    v14 = a1 + 64;
    do
    {
      if (*(v13 + 32) >= a2)
      {
        v14 = v13;
      }

      v13 = *(v13 + 8 * (*(v13 + 32) < a2));
    }

    while (v13);
    if (v14 != a1 + 64 && *(v14 + 32) <= a2)
    {
      v15 = *(v14 + 40);
      if (v15)
      {
LABEL_34:
        v17 = dispatch_time(0, (a3 * 1000000000.0));
        dispatch_source_set_timer(v15, v17, 0xFFFFFFFFFFFFFFFFLL, 0x1DCD6500uLL);
        if (qword_1025D4650 != -1)
        {
          sub_101940C48();
        }

        v18 = qword_1025D4658;
        v19 = *(a1 + 120);
        if (os_log_type_enabled(qword_1025D4658, v19))
        {
          v20 = (a1 + 96);
          if (*(a1 + 119) < 0)
          {
            v20 = *v20;
          }

          sub_1001B5660(v36, __p);
          if (v44 >= 0)
          {
            v21 = __p;
          }

          else
          {
            v21 = *__p;
          }

          *buf = 136315650;
          *&buf[4] = v20;
          *&buf[12] = 2080;
          *&buf[14] = v21;
          *&buf[22] = 2048;
          *&buf[24] = a3;
          _os_log_impl(dword_100000000, v18, v19, "%sevent,%s,timeout,%.2f", buf, 0x20u);
          if (SHIBYTE(v44) < 0)
          {
            operator delete(*__p);
          }
        }

        if (sub_10000A100(121, 2))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1025D4650 != -1)
          {
            sub_101940C48();
          }

          v22 = (a1 + 96);
          if (*(a1 + 119) < 0)
          {
            v22 = *v22;
          }

          sub_1001B5660(v36, v37);
          if (v40 >= 0)
          {
            v23 = v37;
          }

          else
          {
            v23 = *v37;
          }

          *__p = 136315650;
          *&__p[4] = v22;
          v42 = 2080;
          v43 = v23;
          v44 = 2048;
          v45 = a3;
          v12 = _os_log_send_and_compose_impl();
          if (v40 < 0)
          {
            operator delete(*v37);
          }

          sub_100152C7C("Generic", 1, 0, 2, "void CLStateMachine<CLGnssController>::setTimeoutEvent(Event, double) [T = CLGnssController]", "%s\n", v12);
          goto LABEL_77;
        }

        return;
      }
    }
  }

  v16 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, v4);
  if (v16)
  {
    v15 = v16;
    *buf = &v36;
    sub_10080EA4C(a1 + 56, &v36)[5] = v16;
    dispatch_source_set_timer(v15, 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0x1DCD6500uLL);
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_10080EA3C;
    handler[3] = &unk_102455A60;
    handler[4] = a1;
    v35 = v36;
    dispatch_source_set_event_handler(v15, handler);
    dispatch_resume(v15);
    goto LABEL_34;
  }

  if (qword_1025D4650 != -1)
  {
    sub_10194117C();
  }

  v24 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_FAULT))
  {
    v25 = (a1 + 96);
    if (*(a1 + 119) < 0)
    {
      v25 = *v25;
    }

    sub_1001B5660(a2, buf);
    if (buf[23] >= 0)
    {
      v26 = buf;
    }

    else
    {
      v26 = *buf;
    }

    *__p = 136315394;
    *&__p[4] = v25;
    v42 = 2082;
    v43 = v26;
    _os_log_impl(dword_100000000, v24, OS_LOG_TYPE_FAULT, "%scannot create timer, event, %{public}s", __p, 0x16u);
    if ((buf[23] & 0x80000000) != 0)
    {
      operator delete(*buf);
    }
  }

  if (sub_10000A100(121, 0))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D4650 != -1)
    {
      sub_101940C48();
    }

    v27 = (a1 + 96);
    if (*(a1 + 119) < 0)
    {
      v27 = *v27;
    }

    sub_1001B5660(a2, __p);
    if (v44 >= 0)
    {
      v28 = __p;
    }

    else
    {
      v28 = *__p;
    }

    *v37 = 136315394;
    *&v37[4] = v27;
    v38 = 2082;
    v39 = v28;
    v12 = _os_log_send_and_compose_impl();
    if (SHIBYTE(v44) < 0)
    {
      operator delete(*__p);
    }

    goto LABEL_76;
  }
}

void sub_100266D04(uint64_t a1)
{
  if (qword_1025D4650 != -1)
  {
    sub_101A772C8();
  }

  v2 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_INFO))
  {
    *v3 = 0;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_INFO, "CLGnssProvider,onGnssStop", v3, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101A77DEC();
  }

  *(a1 + 3680) = sub_1000081AC();
  sub_1001C577C(a1, (a1 + 3672));
}

void sub_100266DB8(uint64_t a1)
{
  v2 = *(a1 + 508);
  if (v2 && *(a1 + 51) == 1)
  {
    ++*(a1 + 552);
    v3 = *(a1 + 492);
    *(a1 + 584) += v3;
    v4.i32[0] = v2;
    v4.i32[1] = *(a1 + 512);
    v4.i32[2] = *(a1 + 500);
    v4.i32[3] = v3 - v4.i32[2];
    *(a1 + 564) = vaddq_s32(*(a1 + 564), v4);
    *(a1 + 680) += *(a1 + 504);
    *(a1 + 550) += *(a1 + 468);
    v5 = *(a1 + 496);
    *(a1 + 588) += v5;
    if (*(a1 + 469) == 1)
    {
      ++*(a1 + 554);
    }

    if (*(a1 + 464) == 1)
    {
      ++*(a1 + 544);
    }

    if (*(a1 + 466) == 1)
    {
      ++*(a1 + 546);
      if (!v5)
      {
        if (*(a1 + 467) == 1)
        {
          ++*(a1 + 548);
        }

        goto LABEL_73;
      }

      v6 = *(a1 + 96);
      v7 = v6 - *(a1 + 528);
      v8 = *(a1 + 536) - v6;
      if (v7 >= 0.0)
      {
        if (v7 >= 5.0)
        {
          if (v7 >= 10.0)
          {
            if (v7 >= 30.0)
            {
              if (v7 >= 60.0)
              {
                if (v7 >= 90.0)
                {
                  v9 = (a1 + 724);
                }

                else
                {
                  v9 = (a1 + 722);
                }
              }

              else
              {
                v9 = (a1 + 720);
              }
            }

            else
            {
              v9 = (a1 + 718);
            }
          }

          else
          {
            v9 = (a1 + 716);
          }
        }

        else
        {
          v9 = (a1 + 714);
        }
      }

      else
      {
        v9 = (a1 + 712);
      }

      ++*v9;
      if (v8 >= 0.0)
      {
        if (v8 >= 5.0)
        {
          if (v8 >= 10.0)
          {
            if (v8 >= 30.0)
            {
              if (v8 >= 60.0)
              {
                if (v8 >= 90.0)
                {
                  v14 = (a1 + 738);
                }

                else
                {
                  v14 = (a1 + 736);
                }
              }

              else
              {
                v14 = (a1 + 734);
              }
            }

            else
            {
              v14 = (a1 + 732);
            }
          }

          else
          {
            v14 = (a1 + 730);
          }
        }

        else
        {
          v14 = (a1 + 728);
        }
      }

      else
      {
        v14 = (a1 + 726);
      }

      ++*v14;
    }

    if (*(a1 + 467))
    {
      ++*(a1 + 548);
      if (v5)
      {
        v15 = *(a1 + 112);
        v16 = v15 - *(a1 + 528);
        v17 = *(a1 + 536) - v15;
        if (v16 >= 0.0)
        {
          if (v16 >= 5.0)
          {
            if (v16 >= 10.0)
            {
              if (v16 >= 30.0)
              {
                if (v16 >= 60.0)
                {
                  if (v16 >= 90.0)
                  {
                    v18 = (a1 + 696);
                  }

                  else
                  {
                    v18 = (a1 + 694);
                  }
                }

                else
                {
                  v18 = (a1 + 692);
                }
              }

              else
              {
                v18 = (a1 + 690);
              }
            }

            else
            {
              v18 = (a1 + 688);
            }
          }

          else
          {
            v18 = (a1 + 686);
          }
        }

        else
        {
          v18 = (a1 + 684);
        }

        ++*v18;
        if (v17 >= 0.0)
        {
          if (v17 >= 5.0)
          {
            if (v17 >= 10.0)
            {
              if (v17 >= 30.0)
              {
                if (v17 >= 60.0)
                {
                  if (v17 >= 90.0)
                  {
                    v19 = (a1 + 710);
                  }

                  else
                  {
                    v19 = (a1 + 708);
                  }
                }

                else
                {
                  v19 = (a1 + 706);
                }
              }

              else
              {
                v19 = (a1 + 704);
              }
            }

            else
            {
              v19 = (a1 + 702);
            }
          }

          else
          {
            v19 = (a1 + 700);
          }
        }

        else
        {
          v19 = (a1 + 698);
        }

        ++*v19;
      }
    }

LABEL_73:
    if (qword_1025D4600 != -1)
    {
      sub_1018754D8();
    }

    v20 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
    {
      v21 = *(a1 + 492);
      v22 = *(a1 + 584);
      v23 = *(a1 + 504);
      v24 = *(a1 + 680);
      *buf = 67240960;
      *&buf[4] = v21;
      v28 = 1026;
      v29 = v22;
      v30 = 1026;
      v31 = v23;
      v32 = 1026;
      v33 = v24;
      _os_log_impl(dword_100000000, v20, OS_LOG_TYPE_DEBUG, "#GPSPowerSavings,addSessionCountsToCA,fSessionDuration,%{public}d,fCountTotalSeconds,%{public}d,fCountBestAccuracyWithoutGps,session,%{public}d,daily,%{public}d", buf, 0x1Au);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4600 != -1)
      {
        sub_1018754B0();
      }

      v26 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "void CLGpsPowerSavingsMonitor::addSessionCountsToCAandSubmit()", "%s\n", v26);
      if (v26 != buf)
      {
        free(v26);
      }
    }

    v25 = sub_10000B1F8();
    *buf = 1;
    *buf = sub_10001A6B0(v25, buf);
    sub_1003E0EC8((a1 + 544), buf);
    return;
  }

  if (qword_1025D4600 != -1)
  {
    sub_1018754D8();
  }

  v10 = qword_1025D4608;
  if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
  {
    v11 = *(a1 + 508);
    v12 = *(a1 + 504);
    v13 = *(a1 + 680);
    *buf = 67240704;
    *&buf[4] = v11;
    v28 = 1026;
    v29 = v12;
    v30 = 1026;
    v31 = v13;
    _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEBUG, "#GPSPowerSavings,addSessionCountsToCA,nothing to submit,fCountStationaryWithPersonalizedWifiAP,%{public}d,fCountBestAccuracyWithoutGps,session,%{public}d,daily,%{public}d", buf, 0x14u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10187681C();
  }
}

uint64_t sub_1002673C8(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (qword_1025D4790 != -1)
  {
    sub_101A11D98();
  }

  v2 = qword_1025D4798;
  if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_DEBUG))
  {
    v3 = *(v1 + 24);
    v5 = 138543362;
    v6 = v3;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEBUG, "#dsa client '%{public}@' starts receiving CLPlaceInferenceSubscription updates", &v5, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101A11DAC();
  }

  sub_1002674B0(v1);
  return sub_100267D2C(v1);
}

void sub_1002674B0(uint64_t a1)
{
  v2 = [*(a1 + 120) copy];
  v3 = v2;
  v4 = *(a1 + 104);
  if (v4 == 7)
  {
    if (![v2 count] && *(a1 + 128))
    {
      [*(a1 + 120) addObject:?];
    }
  }

  else if (v4 == 5 && *(a1 + 136))
  {
    v5 = [v2 count];
    v3 = sub_1006C1520(v3, *(a1 + 136));
    v6 = [v3 count];
    v7 = objc_alloc_init(NSDateFormatter);
    [v7 setDateStyle:1];
    [v7 setTimeStyle:4];
    [v7 setFormatterBehavior:1040];
    if (qword_1025D4790 != -1)
    {
      sub_101A11D98();
    }

    v8 = qword_1025D4798;
    if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_INFO))
    {
      v9 = [v7 stringFromDate:*(a1 + 136)];
      *buf = 134218498;
      *v27 = v5 - v6;
      *&v27[8] = 2112;
      *&v27[10] = v9;
      v28 = 2048;
      v29 = v6;
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_INFO, "#placeInfer filtered out %lu locations predating request date (%@), %lu locations remaining", buf, 0x20u);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4790 != -1)
      {
        sub_101A11E98();
      }

      [v7 stringFromDate:*(a1 + 136)];
      v10 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "void CLPlaceInferenceSubscription::startFetchingRTPlaceInferencesWithOptions()", "%s\n", v10);
      if (v10 != buf)
      {
        free(v10);
      }
    }
  }

  if (*(a1 + 44) == 1)
  {
    if (qword_1025D4790 != -1)
    {
      sub_101A11E98();
    }

    v11 = qword_1025D4798;
    if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_INFO, "#placeInfer client authorized for coarse locations only, sending fallback message", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101A1209C();
    }

LABEL_69:
    sub_100BCAD78(a1, v3);
    return;
  }

  if (!*(a1 + 56))
  {
    if (qword_1025D4790 != -1)
    {
      sub_101A11E98();
    }

    v24 = qword_1025D4798;
    if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v24, OS_LOG_TYPE_INFO, "#placeInfer no valid RoutineMonitor configured, sending fallback message", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101A11FB8();
    }

    goto LABEL_69;
  }

  v12 = [*(a1 + 152) copy];
  v25 = [[RTPlaceInferenceOptions alloc] initWithFidelityPolicy:*(a1 + 96) locations:v3 accessPoints:v12 clientIdentifier:{objc_msgSend(*(a1 + 24), "legacyClientKey")}];
  if (qword_1025D4790 != -1)
  {
    sub_101A11E98();
  }

  v13 = qword_1025D4798;
  if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_INFO))
  {
    *buf = 138739971;
    *v27 = v25;
    _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_INFO, "#placeInfer running fetchPlaceInferencesWithOptions: %{sensitive}@", buf, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101A11EC0();
  }

  if ([v12 count])
  {
    v14 = 0;
    do
    {
      if (qword_1025D4790 != -1)
      {
        sub_101A11E98();
      }

      v15 = qword_1025D4798;
      if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_DEBUG))
      {
        v16 = [v12 objectAtIndexedSubscript:v14];
        *buf = 67109378;
        *v27 = v14;
        *&v27[4] = 2112;
        *&v27[6] = v16;
        _os_log_impl(dword_100000000, v15, OS_LOG_TYPE_DEBUG, "#placeInfer running fetchPlaceInferencesWithOptions. AccessPoint %i: %@", buf, 0x12u);
      }

      if (sub_10000A100(121, 2))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1025D4790 != -1)
        {
          sub_101A11E98();
        }

        [v12 objectAtIndexedSubscript:v14];
        v17 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "void CLPlaceInferenceSubscription::startFetchingRTPlaceInferencesWithOptions()", "%s\n", v17);
        if (v17 != buf)
        {
          free(v17);
        }
      }

      ++v14;
    }

    while ([v12 count] > v14);
  }

  if ([v3 count])
  {
    v18 = 0;
    do
    {
      if (qword_1025D4790 != -1)
      {
        sub_101A11E98();
      }

      v19 = qword_1025D4798;
      if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_DEBUG))
      {
        v20 = [v3 objectAtIndexedSubscript:v18];
        *buf = 67109379;
        *v27 = v18;
        *&v27[4] = 2117;
        *&v27[6] = v20;
        _os_log_impl(dword_100000000, v19, OS_LOG_TYPE_DEBUG, "#placeInfer running fetchPlaceInferencesWithOptions. Locations %i: %{sensitive}@", buf, 0x12u);
      }

      if (sub_10000A100(121, 2))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1025D4790 != -1)
        {
          sub_101A11E98();
        }

        [v3 objectAtIndexedSubscript:v18];
        v21 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "void CLPlaceInferenceSubscription::startFetchingRTPlaceInferencesWithOptions()", "%s\n", v21);
        if (v21 != buf)
        {
          free(v21);
        }
      }

      ++v18;
    }

    while ([v3 count] > v18);
  }

  v22 = *(a1 + 176);
  if (v22)
  {
    atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v22->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    sub_100008080(v22);
  }

  CFAbsoluteTimeGetCurrent();
  v23 = *(a1 + 56);
  if (v22)
  {
    atomic_fetch_add_explicit(&v22->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  [v23 fetchPlaceInferencesWithOptions:? withReply:?];
  if (v22)
  {
    std::__shared_weak_count::__release_weak(v22);
    std::__shared_weak_count::__release_weak(v22);
  }
}

void sub_100267CDC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, std::__shared_weak_count *a23)
{
  if (a23)
  {
    std::__shared_weak_count::__release_weak(a23);
  }

  if (v23)
  {
    std::__shared_weak_count::__release_weak(v23);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100267D10(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 64);
  *(result + 56) = *(a2 + 56);
  *(result + 64) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

uint64_t sub_100267D2C(uint64_t a1)
{
  [*(a1 + 152) removeAllObjects];
  [*(a1 + 120) removeAllObjects];
  sub_100267DB0(a1);
  if (*(a1 + 43) == 1)
  {
    v2 = sub_100BCAA84(a1);
    [*(*v2 + 16) unregister:*(*v2 + 8) forNotification:3];
  }

  [*(a1 + 80) setNextFireDelay:1.79769313e308];
  *(a1 + 42) = 0;

  return sub_1001C3758(a1);
}

id sub_100267DB0(uint64_t a1)
{
  if (*(a1 + 44) == 1)
  {
    v2 = sub_1001C35D8(a1);
  }

  else
  {
    v2 = sub_1001C3698(a1);
  }

  v4 = *(*v2 + 8);
  v3 = *(*v2 + 16);
  v5 = *(a1 + 72);

  return [v3 unregister:v4 forNotification:v5];
}

void sub_100267E14(uint64_t a1, int *a2, uint64_t a3, uint64_t a4)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a4 + 32) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_10192926C();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v11 = 1;
    v8 = _os_activity_create(dword_100000000, "CL: CLWifiLocationProvider::onOdometerNotification", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v8, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_101929280();
    }

    v9 = qword_1025D47F8;
    if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 68289538;
      v13 = 0;
      v14 = 2082;
      v15 = "";
      v16 = 2082;
      v17 = "activity";
      v18 = 2050;
      v19 = a4;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLWifiLocationProvider::onOdometerNotification, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v11 = 0;
  }

  sub_100267FF0(a4, a1, a2, a3);
  if (v11 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

void sub_100267FF0(uint64_t a1, uint64_t a2, int *a3, uint64_t a4)
{
  if (qword_1025D4630 != -1)
  {
    sub_1018FC884();
  }

  v6 = qword_1025D4638;
  if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_DEBUG))
  {
    v7 = *a3;
    *buf = 67240192;
    LODWORD(v25) = v7;
    _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEBUG, "@WifiLogic, entry, odometer, %{public}d,", buf, 8u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018FD018(a3);
  }

  if (*a3 == 7)
  {
    Current = CFAbsoluteTimeGetCurrent();
    if (qword_1025D4630 != -1)
    {
      sub_1018FC728();
    }

    v9 = qword_1025D4638;
    if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_DEBUG))
    {
      v10 = *(a4 + 8);
      v11 = *(a4 + 16);
      v12 = *(a4 + 20);
      *buf = 134349824;
      v25 = v10;
      v26 = 1026;
      v27 = v11;
      v28 = 1026;
      v29 = v12;
      v30 = 2050;
      v31 = Current;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "received odometer update entry,startTime,%{public}lf,elevationAscended,%{public}u,elevationDescended,%{public}u,now,%{public}.lf", buf, 0x22u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018FD10C(a4, Current);
    }

    v13 = *(a4 + 8);
    v14 = v13 & 0x7FFFFFFFFFFFFFFFLL;
    v15 = (v13 & 0x7FFFFFFFFFFFFFFFuLL) - 1 < 0xFFFFFFFFFFFFFLL;
    v16 = v13 < 0;
    v17 = v13 < 0 && ((v13 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 < 0x3FF;
    if (!v16)
    {
      v15 = 0;
    }

    v18 = v14 <= 0x7FF0000000000000;
    v19 = v14 == 0x7FF0000000000000 || v15;
    if (!v18)
    {
      v19 = 1;
    }

    if ((v19 | v17) != 1)
    {
      sub_1000FFE90();
    }

    if (qword_1025D4600 != -1)
    {
      sub_1018FD244();
    }

    v20 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_INFO))
    {
      v21 = *(a4 + 8);
      v22 = *(a4 + 16);
      v23 = *(a4 + 20);
      *buf = 134349568;
      v25 = v21;
      v26 = 1026;
      v27 = v22;
      v28 = 1026;
      v29 = v23;
      _os_log_impl(dword_100000000, v20, OS_LOG_TYPE_INFO, "#Warning,received invalid elevation entry,startTime,%{public}lf,elevationAscended,%{public}u,elevationDescended,%{public}u", buf, 0x18u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018FD26C();
    }
  }
}

void sub_100268300()
{
  if (qword_1025D4850 != -1)
  {
    dispatch_once(&qword_1025D4850, &stru_1024C23C8);
  }

  v0 = off_1025D4858;
  if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_FAULT))
  {
    sub_100147D80();
    _os_log_impl(dword_100000000, v0, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Got a different mac from database query!, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v3, 0x26u);
    if (qword_1025D4850 != -1)
    {
      dispatch_once(&qword_1025D4850, &stru_1024C23C8);
    }
  }

  v1 = off_1025D4858;
  if (os_signpost_enabled(off_1025D4858))
  {
    sub_100147D80();
    _os_signpost_emit_with_name_impl(dword_100000000, v1, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Got a different mac from database query!", "{msg%{public}.0s:Got a different mac from database query!, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v3, 0x26u);
    if (qword_1025D4850 != -1)
    {
      dispatch_once(&qword_1025D4850, &stru_1024C23C8);
    }
  }

  v2 = off_1025D4858;
  if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_INFO))
  {
    sub_100147D80();
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Got a different mac from database query!, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v3, 0x26u);
  }
}

__n128 sub_100268540(void *a1, __n128 *a2)
{
  v4 = a1[2];
  v5 = a1[1];
  v6 = 32 * (v4 - v5) - 1;
  if (v4 == v5)
  {
    v6 = 0;
  }

  v7 = a1[5] + a1[4];
  if (v6 == v7)
  {
    sub_100D22134(a1);
    v5 = a1[1];
    v7 = a1[5] + a1[4];
  }

  result = *a2;
  *(*(v5 + ((v7 >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * v7) = *a2;
  ++a1[5];
  return result;
}

uint64_t sub_1002685CC(uint64_t a1, char *a2)
{
  if (!sub_10060A9FC(*(a1 + 80), a2))
  {
    if (qword_1025D4200 != -1)
    {
      sub_101880BF4();
    }

    v4 = qword_1025D4208;
    if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf[0].__r_.__value_.__l.__data_) = 136446210;
      *(buf[0].__r_.__value_.__r.__words + 4) = a2;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEFAULT, "#Notice %{public}s needs autoincrement migration", buf, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101880C08(a2);
    }

    __p = 0;
    v26 = 0uLL;
    sub_10000EC00(buf, a2);
    v5 = std::string::append(buf, "AutoIncr", 8uLL);
    v6 = *&v5->__r_.__value_.__l.__data_;
    v24 = v5->__r_.__value_.__r.__words[2];
    v23 = v6;
    v5->__r_.__value_.__l.__size_ = 0;
    v5->__r_.__value_.__r.__words[2] = 0;
    v5->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(buf[0].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(buf[0].__r_.__value_.__l.__data_);
    }

    sub_10000EC00(buf, a2);
    v7 = std::string::append(buf, "Index", 5uLL);
    v8 = *&v7->__r_.__value_.__l.__data_;
    v22 = v7->__r_.__value_.__r.__words[2];
    *v21 = v8;
    v7->__r_.__value_.__l.__size_ = 0;
    v7->__r_.__value_.__r.__words[2] = 0;
    v7->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(buf[0].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(buf[0].__r_.__value_.__l.__data_);
    }

    sub_100144A84(*(a1 + 80));
    if (v26 >= 0)
    {
      v9 = HIBYTE(v26);
    }

    else
    {
      v9 = v26;
    }

    v10 = buf;
    sub_100070148(buf, v9 + 21);
    if ((buf[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v10 = buf[0].__r_.__value_.__r.__words[0];
    }

    if (v9)
    {
      if (v26 >= 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p;
      }

      memmove(v10, p_p, v9);
    }

    strcpy(v10 + v9, "DROP TABLE IF EXISTS ");
    if (v24 >= 0)
    {
      v12 = &v23;
    }

    else
    {
      v12 = v23;
    }

    if (v24 >= 0)
    {
      v13 = HIBYTE(v24);
    }

    else
    {
      v13 = *(&v23 + 1);
    }

    v14 = std::string::append(buf, v12, v13);
    v15 = v14->__r_.__value_.__r.__words[0];
    v28.__r_.__value_.__r.__words[0] = v14->__r_.__value_.__l.__size_;
    *(v28.__r_.__value_.__r.__words + 7) = *(&v14->__r_.__value_.__r.__words[1] + 7);
    v16 = HIBYTE(v14->__r_.__value_.__r.__words[2]);
    v14->__r_.__value_.__l.__size_ = 0;
    v14->__r_.__value_.__r.__words[2] = 0;
    v14->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v26) < 0)
    {
      operator delete(__p);
    }

    __p = v15;
    *&v26 = v28.__r_.__value_.__r.__words[0];
    *(&v26 + 7) = *(v28.__r_.__value_.__r.__words + 7);
    HIBYTE(v26) = v16;
    if (SHIBYTE(buf[0].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(buf[0].__r_.__value_.__l.__data_);
      v16 = HIBYTE(v26);
      v15 = __p;
    }

    if (v16 >= 0)
    {
      v17 = &__p;
    }

    else
    {
      v17 = v15;
    }

    sub_1000388D8(*(a1 + 80), v17);
  }

  v18 = *(a1 + 80);
  if (*(v18 + 88) <= 0)
  {
    v19 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v19 = *(v18 + 88);
  }

  sub_1001B16EC(v18, v19);
  return 0;
}