uint64_t sub_100016698(uint64_t a1, uint64_t a2)
{
  v2 = (a1 + 16);
  if (*(a1 + 16) == 5445)
  {
    if ((sub_10000D870(a1) & 0x80000000) != 0)
    {
      if (dword_100090058)
      {
        v12 = ne_log_obj();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          sub_100059584();
        }
      }
    }

    else
    {
      if (dword_100090058)
      {
        v5 = ne_log_obj();
        if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
        {
          sub_1000592D4();
        }
      }

      v6 = sub_1000280D4(a1, 1);
      *(a1 + 256) = v6;
      if (v6)
      {
        *(a1 + 82) |= 1u;
        v7 = sub_100014924(a1);
        *(a1 + 128) = v7;
        if (v7)
        {
          if ((sub_100021B88(a1, v7) & 0x80000000) != 0)
          {
            if (dword_100090058)
            {
              v16 = ne_log_obj();
              if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
              {
                sub_10005911C();
              }
            }
          }

          else
          {
            v8 = *(a1 + 128);
            if (*(a1 + 100) && *v8 >= 0x501uLL)
            {
              v9 = 0;
              LODWORD(v10) = *(a1 + 96);
            }

            else
            {
              v10 = *(a1 + 96);
              v9 = (v10 >> 3) & 4;
            }

            if (sub_1000072B8(*(a1 + 48), *(a1 + 56), v8, a2, v9, (v10 >> 5) & 1) != -1)
            {
              memcpy(*(*(*(a1 + 328) + 8) + 8), *(**(a1 + 328) + 8), ***(a1 + 328));
              sub_100000A50(v2, 9216);
              return 0;
            }

            if (dword_100090058)
            {
              v17 = ne_log_obj();
              if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
              {
                sub_1000590E8();
              }
            }
          }
        }

        else if (dword_100090058)
        {
          v14 = ne_log_obj();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
          {
            sub_100059D14();
          }
        }
      }

      else if (dword_100090058)
      {
        v13 = ne_log_obj();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          sub_100059E30();
        }
      }
    }
  }

  else if (dword_100090058)
  {
    v11 = ne_log_obj();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_100058738(v2);
    }
  }

  return 0xFFFFFFFFLL;
}

uint64_t sub_1000168D4(uint64_t a1, void *a2)
{
  if (dword_100090058)
  {
    v4 = ne_log_obj();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "receive Information.\n", buf, 2u);
    }
  }

  v5 = a2[1];
  v6 = *(v5 + 19);
  v7 = *(v5 + 20);
  if (v6)
  {
    if (*(a1 + 328))
    {
      v13 = sub_10002B73C(a1, v7);
      if (v13)
      {
        v14 = v13;
        v9 = sub_10002BCBC(a1, a2, *v13, v13[1]);
        sub_10002B6C4(v14);
        if (v9)
        {
          v15 = *v9;
          if (*v9 <= 0x1F)
          {
            goto LABEL_6;
          }

          v16 = v9[1];
          if (*(v16 + 16) != 8)
          {
            if (dword_100090058)
            {
              v30 = ne_log_obj();
              if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
              {
                sub_10005A120();
              }
            }

            goto LABEL_9;
          }

          v17 = v16 + 28;
          v18 = *(v16 + 28);
          if ((*(a1 + 17) & 0x20) == 0 && (!*(a1 + 72) || !*(a1 + 208)))
          {
            if (dword_100090058)
            {
              v139 = ne_log_obj();
              if (os_log_type_enabled(v139, OS_LOG_TYPE_ERROR))
              {
                sub_10005A300();
              }
            }

            goto LABEL_9;
          }

          v19 = bswap32(*(v16 + 30)) >> 16;
          if (v15 < v19 + 32)
          {
            if (dword_100090058)
            {
              v20 = ne_log_obj();
              if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
              {
                sub_10005A2CC();
              }
            }

            goto LABEL_9;
          }

          v135 = (v17 + v19);
          v136 = bswap32(*(v17 + v19 + 2)) >> 16;
          if (v15 - v19 - 28 < v136)
          {
            if (dword_100090058)
            {
              v137 = ne_log_obj();
              if (os_log_type_enabled(v137, OS_LOG_TYPE_ERROR))
              {
                sub_10005A298();
              }
            }

            goto LABEL_9;
          }

          if (v136 <= 3)
          {
            if (dword_100090058)
            {
              v140 = ne_log_obj();
              if (os_log_type_enabled(v140, OS_LOG_TYPE_ERROR))
              {
                sub_10005A264();
              }
            }

            goto LABEL_9;
          }

          v141 = sub_10003D3A8(v136);
          if (!v141)
          {
            if (dword_100090058)
            {
              v149 = ne_log_obj();
              if (os_log_type_enabled(v149, OS_LOG_TYPE_ERROR))
              {
                sub_10005A230();
              }
            }

            goto LABEL_9;
          }

          v142 = v141;
          memcpy(v141[1], v135, bswap32(v135[1]) >> 16);
          v143 = sub_100028000(a1, *(v16 + 20), v142);
          if (v143)
          {
            v144 = v143;
            v145 = (bswap32(*(v16 + 30)) >> 16) - 4;
            if (v145 == *v143)
            {
              if (!timingsafe_bcmp((v16 + 32), *(v143 + 8), v145))
              {
                v21 = v18;
                if (dword_100090058)
                {
                  v152 = ne_log_obj();
                  if (os_log_type_enabled(v152, OS_LOG_TYPE_DEBUG))
                  {
                    sub_10005A1BC();
                  }
                }

                sub_10003D4F0(v144);
                sub_10003D4F0(v142);
                v31 = v9;
                goto LABEL_52;
              }

              if (dword_100090058)
              {
                v146 = ne_log_obj();
                if (os_log_type_enabled(v146, OS_LOG_TYPE_ERROR))
                {
                  sub_10005A188();
                }
              }
            }

            else if (dword_100090058)
            {
              v151 = ne_log_obj();
              if (os_log_type_enabled(v151, OS_LOG_TYPE_ERROR))
              {
                sub_10005A154();
              }
            }

            sub_10003D4F0(v144);
          }

          else if (dword_100090058)
          {
            v150 = ne_log_obj();
            if (os_log_type_enabled(v150, OS_LOG_TYPE_ERROR))
            {
              sub_10005A1FC();
            }
          }

          sub_10003D4F0(v142);
LABEL_9:
          v11 = 0;
          goto LABEL_10;
        }

        if (dword_100090058)
        {
          v29 = ne_log_obj();
          if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
          {
            sub_10005A334();
          }
        }
      }

      else if (dword_100090058)
      {
        v25 = ne_log_obj();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          sub_10005A368();
        }
      }
    }

    else if (dword_100090058)
    {
      v24 = ne_log_obj();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        sub_10005A39C();
      }
    }

    return 0xFFFFFFFFLL;
  }

  v8 = sub_10003D538(a2);
  v9 = v8;
  if (*v8 < 0x20)
  {
LABEL_6:
    if (dword_100090058)
    {
      v10 = ne_log_obj();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_10005A790();
      }
    }

    goto LABEL_9;
  }

  v21 = *(v8[1] + 28);
  v22 = *(a1 + 81);
  if (v22 == 4)
  {
    v23 = *(a1 + 16);
    if ((v23 & 0x2000) == 0)
    {
      v26 = *(a1 + 20);
      if (v23 == 5283 && !v26)
      {
        goto LABEL_51;
      }

      if (v23 == 5507 && v26 == 1)
      {
        goto LABEL_51;
      }
    }
  }

  else
  {
    if (v22 != 2)
    {
      goto LABEL_256;
    }

    v23 = *(a1 + 16);
  }

  if ((v23 & 0x2000) != 0)
  {
LABEL_256:
    v11 = !*(v8[1] + 28) && (v128 = *(a1 + 16), (v128 & 0x2000) == 0) && v128 == 5281 && *(a1 + 20) == 0;
    if (dword_100090058)
    {
      v130 = ne_log_obj();
      if (os_log_type_enabled(v130, OS_LOG_TYPE_ERROR))
      {
        sub_10005A6F0(v21, a1);
      }
    }

    v12 = 0;
    goto LABEL_269;
  }

  v27 = *(a1 + 20);
  if (v27 == 1)
  {
    v28 = 5445;
LABEL_50:
    if (v23 == v28)
    {
      goto LABEL_51;
    }

    goto LABEL_256;
  }

  if (v27)
  {
    goto LABEL_256;
  }

  if (v23 != 5190)
  {
    v28 = 5221;
    goto LABEL_50;
  }

LABEL_51:
  v31 = v8;
LABEL_52:
  v32 = sub_100020D5C(v31);
  if (!v32)
  {
    if (dword_100090058)
    {
      v133 = v31;
      v134 = ne_log_obj();
      if (os_log_type_enabled(v134, OS_LOG_TYPE_ERROR))
      {
        sub_100058F30();
      }

      v11 = 0;
      v12 = 0xFFFFFFFFLL;
      v9 = v133;
      goto LABEL_269;
    }

    v11 = 0;
    v9 = v31;
LABEL_10:
    v12 = 0xFFFFFFFFLL;
    goto LABEL_269;
  }

  v9 = v32;
  v154 = v31;
  v153 = v21;
  v11 = 0;
  v12 = 0;
  v155 = v6 & 1;
  for (i = v32[1] + 8; ; i += 16)
  {
    v34 = *(i - 8);
    if (v34 <= 0xA)
    {
      if (v34 == 8)
      {
        continue;
      }

      if (v34 != 10)
      {
        if (!*(i - 8))
        {
          goto LABEL_287;
        }

LABEL_103:
        if (dword_100090058)
        {
          v59 = ne_log_obj();
          if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
          {
            sub_10005A6A0();
          }
        }

        goto LABEL_244;
      }

      if (dword_100090058)
      {
        v35 = ne_log_obj();
        if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
        {
          sub_10005A3D0(&v156, v157);
        }
      }

      continue;
    }

    if (v34 == 12)
    {
      v40 = *i;
      v166 = 0;
      v41 = dword_100090058;
      if (*(v40 + 4) != 0x1000000)
      {
        if (dword_100090058)
        {
          v60 = ne_log_obj();
          if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
          {
            sub_10005A400(v173, (v40 + 4), v174, v60);
          }
        }

        if ((**(a1 + 408) & 2) == 0 || *(v40 + 4))
        {
          goto LABEL_244;
        }

        v41 = dword_100090058;
      }

      v42 = bswap32(*(v40 + 10)) >> 16;
      if ((bswap32(*(v40 + 2)) >> 16) - 12 != *(v40 + 9) * v42)
      {
        if (v41)
        {
          v64 = ne_log_obj();
          if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
          {
            sub_10005A454(&v164, v165);
          }
        }

        goto LABEL_244;
      }

      if (v41)
      {
        v43 = ne_log_obj();
        if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
        {
          v44 = sub_10003BE54(*(v40 + 8));
          *buf = 136315138;
          *v168 = v44;
          _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "delete payload for protocol %s\n", buf, 0xCu);
        }
      }

      v45 = *(a1 + 64);
      if (!(*(v45 + 240) | v155))
      {
        if (!dword_100090058)
        {
          goto LABEL_244;
        }

        v68 = ne_log_obj();
        if (!os_log_type_enabled(v68, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_244;
        }

        *buf = 0;
        v69 = v68;
        v70 = "Ignoring unencrypted delete payload (check the weak_phase1_check option)\n";
LABEL_243:
        _os_log_impl(&_mh_execute_header, v69, OS_LOG_TYPE_DEFAULT, v70, buf, 2u);
        goto LABEL_244;
      }

      v46 = *(v40 + 8);
      if ((v46 - 2) < 2)
      {
        if (*(v40 + 9) != 4)
        {
          if (!dword_100090058)
          {
            goto LABEL_244;
          }

          v83 = ne_log_obj();
          if (!os_log_type_enabled(v83, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_244;
          }

          goto LABEL_208;
        }

        if (*(v45 + 180) && (*(*(a1 + 440) + 264) & 8) != 0)
        {
          v77 = sub_100006324(*(a1 + 56), *(a1 + 48), *(v40 + 8), *(v40 + 12));
          if (v77)
          {
            *(v77 + 264) |= 4u;
            if (!dword_100090058)
            {
              goto LABEL_244;
            }

            v78 = ne_log_obj();
            if (!os_log_type_enabled(v78, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_240;
            }

            *buf = 0;
            v79 = v78;
            v80 = "Ignoring SA delete from peer for L2TP server\n";
LABEL_249:
            _os_log_impl(&_mh_execute_header, v79, OS_LOG_TYPE_DEFAULT, v80, buf, 2u);
LABEL_240:
            if (!dword_100090058)
            {
              goto LABEL_244;
            }

            v123 = ne_log_obj();
            if (!os_log_type_enabled(v123, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_244;
            }

            *buf = 0;
            v69 = v123;
            v70 = "purged SAs.\n";
            goto LABEL_243;
          }

          v46 = *(v40 + 8);
        }

        v99 = *(a1 + 48);
        v100 = (v40 + 12);
        v101 = v46;
      }

      else
      {
        if (v46 != 4)
        {
          if (v46 != 1)
          {
            if (!dword_100090058)
            {
              goto LABEL_244;
            }

            v84 = ne_log_obj();
            if (!os_log_type_enabled(v84, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_244;
            }

            v85 = *(v40 + 8);
            *buf = 67109120;
            *v168 = v85;
            v86 = v84;
            v87 = "deletion message received, invalid proto_id: %d\n";
            v88 = 8;
            goto LABEL_210;
          }

          if (*(v40 + 9) == 16)
          {
            v47 = sub_100005538(*(a1 + 440), (v40 + 12));
            if (!v47)
            {
              goto LABEL_240;
            }

            v48 = v47;
            if (*(v47 + 116))
            {
              v49 = *(v47 + 440);
              if (v49)
              {
                v50 = *(v49 + 264);
                if ((~v50 & 0x401) == 0 && ((v50 & 8) == 0 || !*(*(v47 + 64) + 180)))
                {
                  sub_10002263C(v47, 0);
                }
              }
            }

            v51 = *(v48 + 120);
            if (v51)
            {
              sub_100038740(v51);
              *(v48 + 120) = 0;
            }

            if (*(v48 + 24) || (*(v48 + 432) & 1) != 0 && (v122 = *(v48 + 440)) != 0 && (*(v122 + 264) & 0x400) != 0)
            {
              if (sub_100005A68(v48))
              {
                sub_100018858(v48, 1, 50002, 0);
              }
            }

            if (!*(*(v48 + 64) + 180) || (*(*(v48 + 440) + 264) & 8) == 0)
            {
              sub_100020614(v48);
              goto LABEL_240;
            }

            if (!dword_100090058)
            {
              goto LABEL_244;
            }

            v125 = ne_log_obj();
            if (!os_log_type_enabled(v125, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_240;
            }

            *buf = 0;
            v79 = v125;
            v80 = "Ignoring IKE delete from peer for L2TP server\n";
            goto LABEL_249;
          }

          if (!dword_100090058)
          {
            goto LABEL_244;
          }

          v83 = ne_log_obj();
          if (!os_log_type_enabled(v83, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_244;
          }

LABEL_208:
          v102 = *(v40 + 9);
          v103 = *(v40 + 8);
          *buf = 67109376;
          *v168 = v102;
          *&v168[4] = 1024;
          *&v168[6] = v103;
          v86 = v83;
          v87 = "delete payload with strange spi size %d(proto_id:%d)\n";
          goto LABEL_209;
        }

        v166 = 0;
        v82 = *(v40 + 9);
        if (v82 == 4)
        {
          v166 = *(v40 + 12);
        }

        else
        {
          if (v82 != 2)
          {
            if (!dword_100090058)
            {
              goto LABEL_244;
            }

            v83 = ne_log_obj();
            if (!os_log_type_enabled(v83, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_244;
            }

            goto LABEL_208;
          }

          HIWORD(v166) = *(v40 + 12);
        }

        v99 = *(a1 + 48);
        v100 = &v166;
        v101 = 4;
      }

      sub_100018F1C(v99, v101, v100, v42, 0, 0);
      goto LABEL_240;
    }

    if (v34 != 11)
    {
      goto LABEL_103;
    }

    v36 = *i;
    v37 = *(*i + 10);
    if (v37 == 3584)
    {
      v38 = *(a1 + 16);
      if ((v38 & 0x2000) == 0 && v38 == 5281 && !*(a1 + 20))
      {
        if (dword_100090058)
        {
          v39 = ne_log_obj();
          if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
          {
            v118 = sub_10003BCF8(v153);
            v119 = sub_10003BC84(14);
            v120 = *(a1 + 16);
            v121 = *(a1 + 20);
            *buf = 136315906;
            *v168 = v118;
            *&v168[8] = 2080;
            *&v168[10] = v119;
            *&v168[18] = 1024;
            *v169 = v120;
            *&v169[4] = 1024;
            *v170 = v121;
            _os_log_error_impl(&_mh_execute_header, v39, OS_LOG_TYPE_ERROR, "%s message with %s notification receveid, status 0x%x, side %d\n", buf, 0x22u);
          }
        }

        v11 = 1;
        continue;
      }
    }

    v52 = __rev16(v37);
    if (v52 <= 36135)
    {
      if (v52 > 24576)
      {
        if (v52 == 24577)
        {
          goto LABEL_215;
        }

        if (v52 == 24578)
        {
          if (v155)
          {
            sub_10001926C(a1);
            goto LABEL_244;
          }

          goto LABEL_215;
        }
      }

      else
      {
        if (v52 == 0x4000)
        {
          goto LABEL_215;
        }

        if (v52 == 24576)
        {
          if (v155)
          {
            v53 = *(v36 + 9);
            if (v53 + 12 > bswap32(*(v36 + 2)) >> 16)
            {
              if (dword_100090058)
              {
                v147 = ne_log_obj();
                if (os_log_type_enabled(v147, OS_LOG_TYPE_ERROR))
                {
                  sub_10005A4E4();
                }
              }

              goto LABEL_286;
            }

            v54 = sub_10003B4A4(v36 + 12, v53);
            if (dword_100090058)
            {
              v55 = ne_log_obj();
              if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
              {
                v56 = bswap32(*(v36 + 4));
                v57 = *(v36 + 8);
                v58 = *(v36 + 9);
                *buf = 67109890;
                *v168 = v56;
                *&v168[4] = 1024;
                *&v168[6] = v57;
                *&v168[10] = 2080;
                *&v168[12] = v54;
                *v169 = 1024;
                *&v169[2] = v58;
                _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_DEFAULT, "notification message ISAKMP-SA RESPONDER-LIFETIME, doi=%d proto_id=%d spi=%s(size=%d).\n", buf, 0x1Eu);
              }
            }

            free(v54);
            goto LABEL_244;
          }

          goto LABEL_215;
        }
      }

      goto LABEL_149;
    }

    if (v52 > 40499)
    {
      break;
    }

    if (v52 != 36136)
    {
      if (v52 == 36137)
      {
        if (v155)
        {
          if (dword_100090058)
          {
            v61 = ne_log_obj();
            if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v61, OS_LOG_TYPE_DEFAULT, "DPD R-U-There-Ack received\n", buf, 2u);
            }
          }

          v62 = *(a1 + 384);
          if (bswap32(*(v36 + 28)) == v62)
          {
            if (*(v36 + 12) == *a1 && *(v36 + 20) == *(a1 + 8))
            {
              *(a1 + 386) = 0;
              *(a1 + 384) = v62 + 1;
              *(a1 + 376) = time(0);
              v126 = *(a1 + 388);
              if (v126)
              {
                sub_100038740(v126);
                *(a1 + 388) = 0;
              }

              sub_100019D9C(a1, 0);
              if (dword_100090058)
              {
                v127 = ne_log_obj();
                if (os_log_type_enabled(v127, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 0;
                  _os_log_impl(&_mh_execute_header, v127, OS_LOG_TYPE_DEFAULT, "received an R-U-THERE-ACK\n", buf, 2u);
                }
              }

              sub_1000472E8(1, a1);
            }

            else if (dword_100090058)
            {
              v63 = ne_log_obj();
              if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
              {
                sub_10005A484(&v162, v163);
              }
            }

            goto LABEL_244;
          }

          if (!dword_100090058 || (v90 = ne_log_obj(), !os_log_type_enabled(v90, OS_LOG_TYPE_ERROR)))
          {
LABEL_244:
            v12 = 0;
            continue;
          }

          v91 = bswap32(*(v36 + 28));
          v92 = *(a1 + 384);
          *buf = 67109376;
          *v168 = v91;
          *&v168[4] = 1024;
          *&v168[6] = v92;
          v86 = v90;
          v87 = "Wrong DPD sequence number (%d, %d expected).\n";
LABEL_209:
          v88 = 14;
LABEL_210:
          _os_log_error_impl(&_mh_execute_header, v86, OS_LOG_TYPE_ERROR, v87, buf, v88);
          goto LABEL_244;
        }

        goto LABEL_215;
      }

      goto LABEL_149;
    }

    if (!v155)
    {
      goto LABEL_215;
    }

    if (dword_100090058)
    {
      v71 = ne_log_obj();
      if (os_log_type_enabled(v71, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v71, OS_LOG_TYPE_DEFAULT, "DPD R-U-There received\n", buf, 2u);
      }
    }

    v72 = sub_10003D3A8(0x20uLL);
    if (v72)
    {
      v73 = v72;
      v74 = v72[1];
      *v74 = 0;
      *(v74 + 2) = 0x2000;
      *(v74 + 4) = 0x298D100101000000;
      *(v74 + 12) = *(v36 + 12);
      *(v74 + 20) = *(v36 + 20);
      *(v74 + 28) = *(v36 + 28);
      v12 = sub_100017FB8(a1, v72, 11, 1);
      sub_10003D4F0(v73);
      if (dword_100090058)
      {
        v75 = ne_log_obj();
        if (os_log_type_enabled(v75, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v75, OS_LOG_TYPE_DEFAULT, "received a valid R-U-THERE, ACK sent\n", buf, 2u);
        }
      }
    }

    else
    {
      if (dword_100090058)
      {
        v93 = ne_log_obj();
        if (os_log_type_enabled(v93, OS_LOG_TYPE_ERROR))
        {
          sub_10005A4B4(&v160, v161);
        }
      }

      v12 = *__error();
    }

    if ((v12 & 0x80000000) != 0)
    {
      goto LABEL_287;
    }
  }

  if (v52 == 40500)
  {
    goto LABEL_215;
  }

  if (v52 == 40501)
  {
    if (*(a1 + 20))
    {
      if (!dword_100090058)
      {
        goto LABEL_215;
      }

      v65 = ne_log_obj();
      if (!os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_215;
      }

      *buf = 0;
      v66 = v65;
      v67 = "LOAD-BALANCE notification ignored - we are not the initiator.\n";
    }

    else if (v155)
    {
      if (*(v36 + 2) == 0x2000)
      {
        v94 = sub_100008158(a1);
        sub_100046C2C(0x9E35u, 1u, v94, 4u, (v36 + 28));
        if (dword_100090058)
        {
          v95 = ne_log_obj();
          if (os_log_type_enabled(v95, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v95, OS_LOG_TYPE_DEFAULT, "Received LOAD_BALANCE notification.\n", buf, 2u);
          }
        }

        if (*(*(a1 + 48) + 4) != bswap32(*(v36 + 28)))
        {
          if (dword_100090058)
          {
            v96 = ne_log_obj();
            if (os_log_type_enabled(v96, OS_LOG_TYPE_DEFAULT))
            {
              v97 = bswap32(*(v36 + 28));
              *buf = 67109120;
              *v168 = v97;
              _os_log_impl(&_mh_execute_header, v96, OS_LOG_TYPE_DEFAULT, "Deleting old Phase 1 because of LOAD_BALANCE notification - redirect address=%x.\n", buf, 8u);
            }
          }

          if ((*(a1 + 17) & 0x20) != 0)
          {
            sub_100017EF4(a1);
          }

          sub_100020614(a1);
        }

        goto LABEL_215;
      }

      if (!dword_100090058 || (v104 = ne_log_obj(), !os_log_type_enabled(v104, OS_LOG_TYPE_DEFAULT)))
      {
LABEL_215:
        v105 = *(v36 + 9);
        if (*(v36 + 9))
        {
          if (v105 + 12 > bswap32(*(v36 + 2)) >> 16)
          {
            if (dword_100090058)
            {
              v138 = ne_log_obj();
              if (os_log_type_enabled(v138, OS_LOG_TYPE_ERROR))
              {
                sub_10005A608();
              }
            }

            goto LABEL_286;
          }

          v106 = sub_10003B4A4(v36 + 12, v105);
          if (dword_100090058)
          {
            v107 = ne_log_obj();
            if (os_log_type_enabled(v107, OS_LOG_TYPE_DEFAULT))
            {
              v108 = sub_10003BC84(v52);
              v109 = bswap32(*(v36 + 4));
              v110 = *(v36 + 8);
              v111 = *(v36 + 9);
              *buf = 67110402;
              *v168 = v52;
              *&v168[4] = 2080;
              *&v168[6] = v108;
              *&v168[14] = 1024;
              *&v168[16] = v109;
              *v169 = 1024;
              *&v169[2] = v110;
              *v170 = 2080;
              *&v170[2] = v106;
              v171 = 1024;
              v172 = v111;
              _os_log_impl(&_mh_execute_header, v107, OS_LOG_TYPE_DEFAULT, "Notification message %d:%s, doi=%d proto_id=%d spi=%s(size=%d).\n", buf, 0x2Eu);
            }
          }

          free(v106);
        }

        if ((v52 - 1) <= 0x3FFEu)
        {
          v112 = (bswap32(*(v36 + 2)) >> 16) - 12;
          v113 = *(v36 + 9);
          if (v112 != v113)
          {
            v114 = sub_10003D3A8(v112 - v113);
            if (v114)
            {
              v115 = v114;
              memcpy(v114[1], (v36 + v113 + 12), *v114);
              if (dword_100090058)
              {
                v116 = ne_log_obj();
                if (os_log_type_enabled(v116, OS_LOG_TYPE_ERROR))
                {
                  v124 = sub_100026DF8(v115[1], *v115);
                  *buf = 136315138;
                  *v168 = v124;
                  _os_log_error_impl(&_mh_execute_header, v116, OS_LOG_TYPE_ERROR, "Message: '%s'.\n", buf, 0xCu);
                }
              }

              sub_10003D4F0(v115);
            }

            else if (dword_100090058)
            {
              v117 = ne_log_obj();
              if (os_log_type_enabled(v117, OS_LOG_TYPE_ERROR))
              {
                sub_10005A63C(&v158, v159);
              }
            }
          }
        }

        goto LABEL_244;
      }

      *buf = 0;
      v66 = v104;
      v67 = "isakmp_info_recv_lb Invalid length of payload\n";
    }

    else
    {
      if (!dword_100090058)
      {
        goto LABEL_215;
      }

      v89 = ne_log_obj();
      if (!os_log_type_enabled(v89, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_215;
      }

      *buf = 0;
      v66 = v89;
      v67 = "LOAD-BALANCE notification ignored - not protected.\n";
    }

    _os_log_impl(&_mh_execute_header, v66, OS_LOG_TYPE_DEFAULT, v67, buf, 2u);
    goto LABEL_215;
  }

LABEL_149:
  if ((v52 - 1) > 0x3FFEu)
  {
    if (dword_100090058)
    {
      v81 = ne_log_obj();
      if (os_log_type_enabled(v81, OS_LOG_TYPE_ERROR))
      {
        sub_10005A518();
      }
    }

    goto LABEL_215;
  }

  if (v7)
  {
    if (sub_1000061A0(a1, v7))
    {
      if (dword_100090058)
      {
        v76 = ne_log_obj();
        if (os_log_type_enabled(v76, OS_LOG_TYPE_ERROR))
        {
          sub_10005A568();
        }
      }
    }

    else if (dword_100090058)
    {
      v98 = ne_log_obj();
      if (os_log_type_enabled(v98, OS_LOG_TYPE_ERROR))
      {
        sub_10005A5B8();
      }
    }

    goto LABEL_215;
  }

  if (dword_100090058)
  {
    v148 = ne_log_obj();
    if (os_log_type_enabled(v148, OS_LOG_TYPE_ERROR))
    {
      sub_10005A66C();
    }
  }

LABEL_286:
  v12 = 0xFFFFFFFFLL;
LABEL_287:
  sub_10003D4F0(v154);
LABEL_269:
  sub_10003D4F0(v9);
  if (v11)
  {
    v131 = *(a1 + 440);
    if (v131)
    {
      gettimeofday((v131 + 336), 0);
      if (!*(v131 + 296))
      {
        *(v131 + 296) = off_10008C528;
      }

      sub_10004B2A4(v131);
    }
  }

  return v12;
}

uint64_t sub_100017EF4(uint64_t a1)
{
  if ((*(a1 + 17) & 0x20) == 0)
  {
    return 0;
  }

  v3 = sub_10003D3A8(0x1CuLL);
  if (v3)
  {
    v4 = v3;
    v5 = v3[1];
    *v5 = 0;
    *(v5 + 2) = 7168;
    *(v5 + 4) = 0x100100101000000;
    *(v5 + 12) = *a1;
    v6 = sub_100017FB8(a1, v3, 12, 0);
    sub_10003D4F0(v4);
    return v6;
  }

  else
  {
    if (dword_100090058)
    {
      v7 = ne_log_obj();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        sub_10005A7C4();
      }
    }

    return *__error();
  }
}

uint64_t sub_100017FB8(uint64_t a1, uint64_t a2, int a3, char a4)
{
  v8 = sub_100006488(16, 1);
  if (!v8)
  {
    if (dword_100090058)
    {
      v19 = ne_log_obj();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        sub_10005A948();
      }
    }

    return 0xFFFFFFFFLL;
  }

  v9 = v8;
  v10 = sub_10003A790(*(a1 + 48));
  *(v9 + 8) = v10;
  if (!v10)
  {
    if (dword_100090058)
    {
      v20 = ne_log_obj();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        sub_10005A914();
      }
    }

    goto LABEL_43;
  }

  v11 = sub_10003A790(*(a1 + 56));
  *v9 = v11;
  if (!v11)
  {
    if (dword_100090058)
    {
      v21 = ne_log_obj();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        sub_10005A8E0();
      }
    }

    goto LABEL_43;
  }

  v12 = *(*(a1 + 48) + 1);
  if (v12 != 2 && v12 != 30)
  {
    if (dword_100090058)
    {
      v22 = ne_log_obj();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        sub_10005A860(a1 + 48, v22);
      }
    }

LABEL_43:
    sub_100006690(v9);
    return 0xFFFFFFFFLL;
  }

  *(v9 + 60) = 0;
  sub_100000A50((v9 + 56), 63);
  v14 = sub_100024040(a1);
  *(v9 + 108) = v14;
  if (*(a1 + 208))
  {
    v15 = sub_10002B73C(a1, v14);
    *(v9 + 240) = v15;
    if (!v15)
    {
      if (dword_100090058)
      {
        v31 = ne_log_obj();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
        {
          sub_100059418();
        }
      }

      goto LABEL_43;
    }

    v16 = sub_100028000(a1, *(v9 + 108), a2);
    if (!v16)
    {
      if (dword_100090058)
      {
        v33 = ne_log_obj();
        if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
        {
          sub_100059E30();
        }
      }

      goto LABEL_43;
    }

    v17 = v16;
    v18 = *v16 + 4 + 28;
  }

  else
  {
    v17 = 0;
    v18 = 28;
  }

  v23 = v17 != 0;
  if ((a4 & 4) != 0)
  {
    v23 = 4 * (v17 != 0);
  }

  *(v9 + 105) = v23;
  sub_100049944(a1, v9);
  v24 = v18 + *a2;
  v25 = sub_10003D3A8(v24);
  *(v9 + 80) = v25;
  if (!v25)
  {
    if (dword_100090058)
    {
      v32 = ne_log_obj();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        sub_10005A82C();
      }
    }

    goto LABEL_67;
  }

  v26 = v25[1];
  *v26 = *a1;
  *(v26 + 8) = *(a1 + 8);
  if (v17)
  {
    v27 = 8;
  }

  else
  {
    v27 = a3;
  }

  *(v26 + 16) = v27;
  *(v26 + 17) = *(a1 + 80);
  *(v26 + 18) = 5;
  *(v26 + 19) = *(v9 + 105);
  *(v26 + 20) = *(v9 + 108);
  *(v26 + 24) = bswap32(v24);
  if (v17)
  {
    *(v26 + 28) = a3;
    v29 = *v17;
    v28 = v17[1];
    *(v26 + 30) = bswap32(*v17 + 4) >> 16;
    memcpy((v26 + 32), v28, v29);
    v30 = (v26 + 32 + *v17);
  }

  else
  {
    v30 = (v26 + 28);
  }

  memcpy(v30, *(a2 + 8), *a2);
  v36 = *(v9 + 80);
  if (*(v26 + 19))
  {
    v36 = sub_10002C090(*(v9 + 256), *(v9 + 80), *(*(v9 + 240) + 8), **(v9 + 240));
    v37 = *(v9 + 80);
    if (v37)
    {
      sub_10003D4F0(v37);
      *(v9 + 80) = 0;
    }

    if (!v36)
    {
      if (dword_100090058)
      {
        v42 = ne_log_obj();
        if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
        {
          sub_10005A7F8();
        }
      }

      goto LABEL_67;
    }

    *(v9 + 80) = v36;
  }

  if ((sub_100021B88(*(v9 + 256), v36) & 0x80000000) == 0)
  {
    if (dword_100090058)
    {
      v38 = ne_log_obj();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
      {
        v43 = 136315138;
        v44 = sub_10003BCF8(a3);
        _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "sendto Information %s.\n", &v43, 0xCu);
      }
    }

    v39 = *(v9 + 80);
    if (v39)
    {
      sub_10003D4F0(v39);
      v34 = 0;
      *(v9 + 80) = 0;
    }

    else
    {
      v34 = 0;
    }

    goto LABEL_68;
  }

  if (dword_100090058)
  {
    v40 = ne_log_obj();
    if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
    {
      sub_10005911C();
    }
  }

  v41 = *(v9 + 80);
  if (v41)
  {
    sub_10003D4F0(v41);
    *(v9 + 80) = 0;
  }

LABEL_67:
  v34 = 0xFFFFFFFFLL;
LABEL_68:
  sub_100048E58(v9);
  if (v17)
  {
    sub_10003D4F0(v17);
  }

  return v34;
}

uint64_t sub_100018460(uint64_t a1)
{
  if ((*(a1 + 57) & 0x20) == 0)
  {
    return 0;
  }

  v2 = sub_100049E34(*(a1 + 272));
  if (!v2)
  {
    v2 = sub_100005674(*(a1 + 272), *a1, *(a1 + 8));
    if (!v2)
    {
      if (dword_100090058)
      {
        v12 = ne_log_obj();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          *v14 = 0;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "No ph1 handler found, could not send DELETE_SA\n", v14, 2u);
        }
      }

      return 0;
    }
  }

  v3 = v2;
  v4 = *(*(a1 + 128) + 32);
  if (!v4)
  {
    return 0;
  }

  while (1)
  {
    v5 = *(v4 + 8) + 12;
    v6 = sub_10003D3A8(v5);
    if (!v6)
    {
      break;
    }

    v7 = v6;
    v8 = v6[1];
    *v8 = 0;
    *(v8 + 2) = bswap32(v5) >> 16;
    *(v8 + 4) = 0x1000000;
    *(v8 + 8) = *v4;
    v9 = *(v4 + 8);
    *(v8 + 9) = v9;
    *(v8 + 10) = 256;
    memcpy((v8 + 12), (v4 - v9 + 28), v9);
    v10 = sub_100017FB8(v3, v7, 12, 0);
    sub_10003D4F0(v7);
    v4 = *(v4 + 72);
    if (!v4)
    {
      return v10;
    }
  }

  if (dword_100090058)
  {
    v11 = ne_log_obj();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_10005A7C4();
    }
  }

  return *__error();
}

uint64_t sub_1000185E4(uint64_t a1, sockaddr *a2, unsigned __int8 *a3, unsigned int a4, uint64_t a5)
{
  v10 = sub_100049000(a3, a2, 0, 0);
  v11 = sub_100036448(a2);
  if (v11)
  {
    v12 = v11;
    v13 = sub_100005AC8(16);
    if (v13)
    {
      v14 = v13;
      *v13 = *a1;
      sub_100023CF0(v13 + 1, a2, a3);
      sub_100000A50((v14 + 16), 63);
      *(v14 + 64) = v12;
      sub_100036ABC(v12);
      *(v14 + 20) = 0;
      *(v14 + 80) = *(a1 + 17);
      *(v14 + 82) = 0;
      *(v14 + 84) = 0;
      v15 = sub_100042B48();
      *(v14 + 408) = v15;
      if (!v15)
      {
        goto LABEL_27;
      }

      *(v14 + 100) = 0;
      *(v14 + 104) = 0;
      if ((sub_10002006C(v14, v12, &a2->sa_len, a3) & 0x80000000) == 0)
      {
        if (a5)
        {
          v16 = *a5 + 12;
        }

        else
        {
          v16 = 12;
        }

        v21 = sub_10003D3A8(v16);
        if (v21)
        {
          v22 = v21;
          v23 = v21[1];
          *v23 = 0;
          *(v23 + 2) = bswap32(v16) >> 16;
          *(v23 + 4) = 0x1000000;
          *(v23 + 8) = 1;
          *(v23 + 10) = bswap32(a4) >> 16;
          if (a5)
          {
            memcpy((v23 + 12), *(a5 + 8), *a5);
          }

          sub_100018858(v14, 0, a4, a5);
          if (sub_1000496EC(v10, v14))
          {
            sub_1000393B0();
          }

          v20 = sub_100017FB8(v14, v22, 11, 0);
          sub_10003D4F0(v22);
          goto LABEL_28;
        }

        if (dword_100090058)
        {
          v24 = ne_log_obj();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
          {
            sub_10005A82C();
          }
        }

LABEL_27:
        v20 = 0xFFFFFFFFLL;
LABEL_28:
        sub_100048F2C(v14);
        return v20;
      }

      if (dword_100090058)
      {
        v19 = ne_log_obj();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          sub_10005A97C();
        }
      }
    }

    else if (dword_100090058)
    {
      v18 = ne_log_obj();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        sub_10005A9B0();
      }
    }
  }

  else if (dword_100090058)
  {
    v17 = ne_log_obj();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      sub_10005A9E4();
    }
  }

  return 0xFFFFFFFFLL;
}

uint64_t sub_100018858(uint64_t a1, int a2, int a3, unsigned __int16 *a4)
{
  result = sub_100008158(a1);
  v9 = result;
  if (a2 == 1)
  {
    v10 = sub_1000292AC(*(a1 + 280), 1);
    v11 = sub_1000292AC(*(a1 + 280), 2);
    if (v10)
    {
      if (dword_100090058)
      {
        v12 = ne_log_obj();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, ">>> Server reports client's certificate is pre-mature\n", buf, 2u);
        }
      }

      LOWORD(a3) = -15532;
    }

    else if (v11)
    {
      if (dword_100090058)
      {
        v18 = ne_log_obj();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          *v32 = 0;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, ">>> Server reports client's certificate is expired\n", v32, 2u);
        }
      }

      LOWORD(a3) = -15531;
    }

    v19 = a3;
    v20 = 1;
    v21 = v9;
    v22 = 0;
    v23 = 0;
  }

  else
  {
    if (a3 > 30)
    {
      return result;
    }

    v13 = sub_1000292AC(*(a1 + 288), 1);
    v14 = sub_1000292AC(*(a1 + 288), 2);
    v15 = sub_1000292AC(*(a1 + 288), 3);
    v16 = sub_1000292AC(*(a1 + 288), 4);
    if (v13)
    {
      if (dword_100090058)
      {
        v17 = ne_log_obj();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          *v31 = 0;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, ">>> Server's certificate is pre-mature\n", v31, 2u);
        }
      }

      LOWORD(a3) = -15530;
    }

    else if (v14)
    {
      if (dword_100090058)
      {
        v24 = ne_log_obj();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          *v30 = 0;
          _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, ">>> Server's certificate is expired\n", v30, 2u);
        }
      }

      LOWORD(a3) = -15529;
    }

    else if (v15)
    {
      if (dword_100090058)
      {
        v25 = ne_log_obj();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          *v29 = 0;
          _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, ">>> Server's certificate subject name not valid\n", v29, 2u);
        }
      }

      LOWORD(a3) = -15528;
    }

    else if (v16)
    {
      if (dword_100090058)
      {
        v26 = ne_log_obj();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
        {
          *v28 = 0;
          _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, ">>> Server's certificate subject alternate name not valid\n", v28, 2u);
        }
      }

      LOWORD(a3) = -15527;
    }

    if (a4)
    {
      v27 = *a4;
      v23 = *(a4 + 1);
    }

    else
    {
      v27 = 0;
      v23 = 0;
    }

    v19 = a3;
    v22 = v27;
    v20 = 0;
    v21 = v9;
  }

  return sub_100046C2C(v19, v20, v21, v22, v23);
}

uint64_t sub_100018B60(uint64_t a1, unsigned int a2, uint64_t a3)
{
  if (a2 == 24578 || a2 == 40501)
  {
    v7 = 16;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7 | 0xC;
  if (a3)
  {
    v8 += *a3;
  }

  v9 = sub_10003D3A8(v8);
  if (v9)
  {
    v10 = v9;
    v11 = v9[1];
    *v11 = 0;
    *(v11 + 2) = bswap32(v8) >> 16;
    *(v11 + 4) = bswap32(*(*(a1 + 64) + 24));
    *(v11 + 8) = 1;
    *(v11 + 9) = v7;
    *(v11 + 10) = bswap32(a2) >> 16;
    if (a2 == 40501 || a2 == 24578)
    {
      *(v11 + 12) = *a1;
    }

    if (a3)
    {
      memcpy((v11 + v7 + 12), *(a3 + 8), *a3);
    }

    sub_100018858(a1, 0, a2, a3);
    v12 = sub_100017FB8(a1, v10, 11, *(a1 + 82));
    sub_10003D4F0(v10);
    return v12;
  }

  else
  {
    if (dword_100090058)
    {
      v14 = ne_log_obj();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        sub_10005A82C();
      }
    }

    return *__error();
  }
}

uint64_t sub_100018CB4(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v3 = *(a1 + 128);
  if (!v3)
  {
    return 22;
  }

  v7 = *(v3 + 32);
  v8 = v7[2] + 12;
  if (a3)
  {
    v8 += *a3;
  }

  v9 = *(a1 + 256);
  v10 = sub_10003D3A8(v8);
  if (v10)
  {
    v11 = v10;
    v12 = v10[1];
    *v12 = 0;
    *(v12 + 2) = bswap32(v8) >> 16;
    *(v12 + 4) = 0x1000000;
    *(v12 + 8) = *v7;
    *(v12 + 9) = *(v7 + 1);
    *(v12 + 10) = bswap32(a2) >> 16;
    *(v12 + 12) = v7[6];
    v13 = v12 + 12;
    if (a3)
    {
      memcpy((v13 + *(v7 + 1)), *(a3 + 8), *a3);
    }

    v14 = *(a1 + 105) | 1;
    *(a1 + 105) = v14;
    v15 = sub_100017FB8(v9, v11, 11, v14);
    sub_10003D4F0(v11);
    return v15;
  }

  else
  {
    if (dword_100090058)
    {
      v17 = ne_log_obj();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        sub_10005A82C();
      }
    }

    return *__error();
  }
}

void *sub_100018DEC(void **a1, _BYTE **a2, unsigned int a3, _DWORD *a4, uint64_t a5)
{
  if (*a2)
  {
    **a2 = 11;
  }

  v9 = a4[2] + 12;
  if (a5)
  {
    v9 += *a5;
  }

  if (a1)
  {
    v10 = *a1;
    v11 = sub_10003D42C(a1, *a1 + v9);
    v12 = v10;
    if (v11)
    {
LABEL_7:
      v13 = v11[1] + v12;
      *v13 = 0;
      *(v13 + 2) = bswap32(v9) >> 16;
      *(v13 + 4) = 0x1000000;
      *(v13 + 8) = *a4;
      *(v13 + 9) = *(a4 + 1);
      *(v13 + 10) = bswap32(a3) >> 16;
      *(v13 + 12) = a4[6];
      if (a5)
      {
        memcpy((v13 + 12 + *(a4 + 1)), *(a5 + 8), *a5);
      }

      *a2 = v13;
      return v11;
    }
  }

  else
  {
    v11 = sub_10003D3A8(v9);
    v12 = 0;
    if (v11)
    {
      goto LABEL_7;
    }
  }

  if (dword_100090058)
  {
    v14 = ne_log_obj();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_10005AA18();
    }
  }

  return v11;
}

void sub_100018F1C(unint64_t a1, int a2, int *a3, uint64_t a4, uint64_t a5, unint64_t *a6)
{
  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v45 = 0u;
  memset(v44, 0, sizeof(v44));
  v11 = sub_10002CCC0(a2);
  v12 = sub_10002C784(v11);
  if (v12)
  {
    v35 = v12;
    if (*v12 < 1)
    {
      v39 = 0;
    }

    else
    {
      v32 = a4;
      v33 = a1;
      v31 = a3;
      v39 = 0;
      v13 = v12[1];
      v14 = *v12 + v13;
      v34 = a5;
      if (a5)
      {
        v15 = a6 == 0;
      }

      else
      {
        v15 = 1;
      }

      v16 = !v15;
      v36 = v16;
      v37 = a6;
      do
      {
        v17 = *(v13 + 4);
        if (v17 < 2)
        {
          break;
        }

        if (*(v13 + 1) == 10)
        {
          if (sub_10003FF34(v13, v44) || sub_100040034(v44))
          {
            if (dword_100090058)
            {
              v18 = ne_log_obj();
              if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
              {
                sub_10005AA4C();
              }
            }
          }

          else
          {
            v19 = *(&v44[0] + 1);
            if (*(&v44[0] + 1))
            {
              v20 = *(&v45 + 1);
              if (*(&v45 + 1))
              {
                v21 = v46;
                if (v46)
                {
                  if (*(*(&v44[0] + 1) + 9) - 1 <= 1 && !sub_10003957C(v33, v46 + 8))
                  {
                    v22 = v32;
                    if (v32)
                    {
                      v23 = v31;
                      do
                      {
                        if (*v23 == *(v19 + 4))
                        {
                          if (v36)
                          {
                            if (v39 >= *a6)
                            {
                              v24 = 0;
                            }

                            else
                            {
                              v24 = (v34 + 4 * v39);
                            }
                          }

                          else
                          {
                            v24 = 0;
                          }

                          v25 = sub_1000063C4(v20 + 8, v21 + 8, a2, *v23, v24);
                          sub_10003ED70(*(qword_1000900B8 + 32), *(v13 + 3), 0, (v20 + 8), (v21 + 8), *(v19 + 4));
                          if (v25)
                          {
                            sub_1000247FC(v25);
                            sub_100048E58(v25);
                            v26 = v39;
                            if (v24)
                            {
                              v26 = v39 + 1;
                            }

                            v39 = v26;
                          }

                          a6 = v37;
                          if (dword_100090058)
                          {
                            v27 = ne_log_obj();
                            if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
                            {
                              v28 = sub_10003BE54(a2);
                              v29 = bswap32(*v23);
                              *buf = 136315394;
                              v41 = v28;
                              v42 = 1024;
                              v43 = v29;
                              _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "Purged IPsec-SA proto_id=%s spi=%u.\n", buf, 0x12u);
                            }
                          }
                        }

                        ++v23;
                        --v22;
                      }

                      while (v22);
                    }
                  }
                }
              }
            }
          }
        }

        v13 += 8 * v17;
      }

      while (v13 < v14);
    }

    if (a6)
    {
      *a6 = v39;
    }

    sub_10003D4F0(v35);
  }

  else if (dword_100090058)
  {
    v30 = ne_log_obj();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "pfkey_dump_sadb returned nothing.\n", buf, 2u);
    }
  }
}

void sub_10001926C(uint64_t a1)
{
  if (!dword_100090010)
  {
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v26 = 0u;
    memset(v25, 0, sizeof(v25));
    v2 = sub_10002C784(0);
    if (v2)
    {
      v3 = v2;
      if (*v2 >= 1)
      {
        v4 = v2[1];
        v5 = *v2 + v4;
        do
        {
          v6 = *(v4 + 4);
          if (v6 < 2)
          {
            break;
          }

          if (*(v4 + 1) == 10)
          {
            if (sub_10003FF34(v4, v25) || sub_100040034(v25))
            {
              if (dword_100090058)
              {
                v7 = ne_log_obj();
                if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
                {
                  sub_10005AA4C();
                }
              }
            }

            else
            {
              v8 = *(&v25[0] + 1);
              if (*(&v25[0] + 1))
              {
                v9 = *(&v26 + 1);
                if (*(&v26 + 1))
                {
                  v10 = v27;
                  if (v27)
                  {
                    if (*(*(&v25[0] + 1) + 9) - 1 <= 1)
                    {
                      v11 = *(a1 + 56);
                      v12 = *(&v26 + 1) + 8;
                      if ((*(a1 + 96) & 6) != 0)
                      {
                        if (!sub_100039634(v11, v12) && !sub_100039634(*(a1 + 48), v10 + 8) || !sub_100039634(*(a1 + 48), v9 + 8) && !sub_100039634(*(a1 + 56), v10 + 8))
                        {
                          goto LABEL_28;
                        }
                      }

                      else if (!sub_100039414(v11, v12) && !sub_100039414(*(a1 + 48), v10 + 8) || !sub_100039414(*(a1 + 48), v9 + 8) && !sub_100039414(*(a1 + 56), v10 + 8))
                      {
LABEL_28:
                        v13 = 0;
                        v14 = byte_100089050;
                        while (1)
                        {
                          v15 = *v14;
                          v14 += 16;
                          if (v15 == *(v4 + 3))
                          {
                            break;
                          }

                          if (++v13 == 3)
                          {
                            goto LABEL_12;
                          }
                        }

                        if (v13 != 3)
                        {
                          if (dword_100090058)
                          {
                            log = ne_log_obj();
                            if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
                            {
                              v16 = bswap32(*(v8 + 4));
                              *buf = 67109120;
                              v23 = v16;
                              _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "purging spi=%u.\n", buf, 8u);
                            }
                          }

                          sub_10003ED70(*(qword_1000900B8 + 32), *(v4 + 3), 0, (v9 + 8), (v10 + 8), *(v8 + 4));
                          v17 = sub_10002CD40(*(v4 + 3));
                          v18 = sub_100006324(v9 + 8, v10 + 8, v17, *(v8 + 4));
                          if (v18)
                          {
                            v19 = v18;
                            sub_1000247FC(v18);
                            sub_100048E58(v19);
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }

LABEL_12:
          v4 += 8 * v6;
        }

        while (v4 < v5);
      }

      sub_10003D4F0(v3);
    }

    else if (dword_100090058)
    {
      v20 = ne_log_obj();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        *v24 = 0;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "pfkey_dump_sadb returned nothing.\n", v24, 2u);
      }
    }
  }
}

void sub_1000195C8(uint64_t a1, uint64_t a2)
{
  if (dword_100090058)
  {
    v4 = ne_log_obj();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v15) = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Notify Message received\n", &v15, 2u);
    }
  }

  v6 = *(a1 + 10);
  v5 = (a1 + 10);
  v7 = bswap32(v6) >> 16;
  if (v7 <= 40499)
  {
    if ((v7 - 24576) >= 2 && v7 != 0x4000)
    {
      if (v7 == 24578)
      {
        if (dword_100090058)
        {
          v8 = ne_log_obj();
          if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(v15) = 0;
            v9 = "Ignore INITIAL-CONTACT notification, because it is only accepted after Phase 1.\n";
LABEL_23:
            v12 = v8;
            v13 = 2;
            goto LABEL_24;
          }
        }

        return;
      }

LABEL_17:
      sub_100018B60(a2, 1u, 0);
      if (dword_100090058)
      {
        v14 = ne_log_obj();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          sub_10005AAA0(v5);
        }
      }

      return;
    }

LABEL_14:
    if (dword_100090058)
    {
      v10 = ne_log_obj();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = sub_10003BC84(bswap32(*v5) >> 16);
        v15 = 136315138;
        v16 = v11;
        v9 = "Ignore %s notification.\n";
        v12 = v10;
        v13 = 12;
LABEL_24:
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, v9, &v15, v13);
        return;
      }
    }

    return;
  }

  if (v7 == 40503)
  {
    goto LABEL_14;
  }

  if (v7 != 40501)
  {
    if (v7 != 40500)
    {
      goto LABEL_17;
    }

    goto LABEL_14;
  }

  if (dword_100090058)
  {
    v8 = ne_log_obj();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v15) = 0;
      v9 = "Ignore LOAD-BALANCE notification, because it is only accepted after Phase 1.\n";
      goto LABEL_23;
    }
  }
}

void sub_1000197E4(uint64_t a1, uint64_t a2)
{
  if (dword_100090058)
  {
    v4 = ne_log_obj();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v22) = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Phase 2 Notify Message received\n", &v22, 2u);
    }
  }

  v5 = (a1 + 10);
  v6 = bswap32(*(a1 + 10)) >> 16;
  v7 = 24577;
  if (v6 > 24577)
  {
    if (v6 > 40500)
    {
      if (v6 != 40501)
      {
        v7 = 40503;
LABEL_16:
        if (v6 != v7)
        {
          sub_100018B60(*(a2 + 256), 1u, 0);
          if (dword_100090058)
          {
            v16 = ne_log_obj();
            if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
            {
              sub_10005AAA0(v5);
            }
          }

          return;
        }

        goto LABEL_17;
      }

      if (!dword_100090058)
      {
        return;
      }

      v15 = ne_log_obj();
      if (!os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        return;
      }

      LOWORD(v22) = 0;
      v12 = "Ignore LOAD-BALANCE notification, because it is only accepted after Phase 1.\n";
    }

    else
    {
      if (v6 != 24578)
      {
        v7 = 40500;
        goto LABEL_16;
      }

      if (!dword_100090058)
      {
        return;
      }

      v15 = ne_log_obj();
      if (!os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        return;
      }

      LOWORD(v22) = 0;
      v12 = "Ignore INITIAL-CONTACT notification, because it is only accepted after Phase 1.\n";
    }

    v13 = v15;
    v14 = 2;
    goto LABEL_27;
  }

  if (v6 != 0x4000)
  {
    if (v6 == 24576)
    {
      v8 = *(a1 + 9);
      if (v8 + 12 <= bswap32(*(a1 + 2)) >> 16)
      {
        v17 = sub_10003B4A4(a1 + 12, v8);
        if (dword_100090058)
        {
          v18 = ne_log_obj();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
          {
            v19 = bswap32(*(a1 + 4));
            v20 = *(a1 + 8);
            v21 = *(a1 + 9);
            v22 = 67109890;
            *v23 = v19;
            *&v23[4] = 1024;
            *&v23[6] = v20;
            v24 = 2080;
            v25 = v17;
            v26 = 1024;
            v27 = v21;
            _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "notification message IPSEC-SA RESPONDER-LIFETIME, doi=%d proto_id=%d spi=%s(size=%d).\n", &v22, 0x1Eu);
          }
        }

        free(v17);
      }

      else if (dword_100090058)
      {
        v9 = ne_log_obj();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          sub_10005A4E4();
        }
      }

      return;
    }

    goto LABEL_16;
  }

LABEL_17:
  if (dword_100090058)
  {
    v10 = ne_log_obj();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = sub_10003BC84(bswap32(*v5) >> 16);
      v22 = 136315138;
      *v23 = v11;
      v12 = "Ignore %s notification.\n";
      v13 = v10;
      v14 = 12;
LABEL_27:
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, v12, &v22, v14);
    }
  }
}

void sub_100019AE4(uint64_t a1)
{
  if ((*(a1 + 17) & 0x20) != 0)
  {
    if (*(*(a1 + 64) + 220) <= *(a1 + 386))
    {
      v16 = sub_100008158(a1);
      sub_100046C2C(0xC351u, 0, v16, 0, 0);
      sub_100024334(a1);
      if (dword_100090058)
      {
        v17 = ne_log_obj();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v19) = 0;
          v4 = "DPD: remote seems to be dead\n";
          v14 = v17;
          v15 = 2;
          goto LABEL_19;
        }
      }
    }

    else
    {
      v5 = sub_10003D3A8(0x20uLL);
      if (v5)
      {
        v6 = v5;
        v7 = v5[1];
        *v7 = 0;
        *(v7 + 2) = 0x2000;
        *(v7 + 4) = 0x288D100101000000;
        *(v7 + 12) = *a1;
        *(v7 + 20) = *(a1 + 8);
        v8 = *(a1 + 384);
        if (!*(a1 + 384))
        {
          v9 = time(0);
          srand(v9);
          v10 = rand();
          v8 = v10 & 0xFFF;
          *(a1 + 384) = v10 & 0xFFF;
        }

        *(v7 + 28) = bswap32(v8);
        v11 = sub_100017FB8(a1, v6, 11, 0);
        sub_10003D4F0(v6);
        if (dword_100090058)
        {
          v12 = ne_log_obj();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            v19 = 67109120;
            v20 = v11;
            _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "DPD R-U-There sent (%d)\n", &v19, 8u);
          }
        }

        ++*(a1 + 386);
        sub_100019D9C(a1, 1);
        if (dword_100090058)
        {
          v2 = ne_log_obj();
          if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
          {
            v13 = *(*(a1 + 64) + 212);
            v19 = 67109120;
            v20 = v13;
            v4 = "rescheduling send_r_u (%d).\n";
            goto LABEL_15;
          }
        }
      }

      else if (dword_100090058)
      {
        v18 = ne_log_obj();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          sub_10005A7C4();
        }
      }
    }
  }

  else if (dword_100090058)
  {
    v2 = ne_log_obj();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = *(a1 + 16);
      v19 = 67109120;
      v20 = v3;
      v4 = "DPD r-u send aborted, invalid Phase 1 status %d....\n";
LABEL_15:
      v14 = v2;
      v15 = 8;
LABEL_19:
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, v4, &v19, v15);
    }
  }
}

uint64_t sub_100019D9C(uint64_t a1, int a2)
{
  if (!a1)
  {
    return 1;
  }

  v3 = *(a1 + 64);
  if (!v3)
  {
    return 1;
  }

  if (!*(a1 + 368))
  {
    return 0;
  }

  result = v3[54];
  if (!result)
  {
    return result;
  }

  if (a2)
  {
    result = v3[53];
LABEL_12:
    v5 = sub_100019AE4;
    goto LABEL_13;
  }

  if ((v3[56] - 1) > 1)
  {
    goto LABEL_12;
  }

  v5 = sub_100019E44;
LABEL_13:
  v6 = sub_100038550(result, v5, a1);
  result = 0;
  *(a1 + 388) = v6;
  return result;
}

void sub_100019E44(uint64_t a1)
{
  if (!a1)
  {
    return;
  }

  v2 = *(a1 + 64);
  if (!v2)
  {
    return;
  }

  v3 = *(v2 + 224);
  if (v3 != 2)
  {
    if (v3 != 1)
    {
      if (dword_100090058)
      {
        v4 = ne_log_obj();
        if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
        {
          v8 = *(*(a1 + 64) + 224);
          v17 = 67109120;
          v18 = v8;
          v6 = "DPD monitoring aborted, invalid algorithm %d....\n";
          goto LABEL_16;
        }
      }

      return;
    }

    if ((*(a1 + 17) & 0x20) == 0)
    {
      if (dword_100090058)
      {
        v4 = ne_log_obj();
        if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
        {
          v5 = *(a1 + 16);
          v17 = 67109120;
          v18 = v5;
          v6 = "DPD monitoring (for ALGORITHM_INBOUND_DETECT) aborted, invalid Phase 1 status %d....\n";
LABEL_16:
          v9 = v4;
          v10 = 8;
LABEL_17:
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, v6, &v17, v10);
          return;
        }
      }

      return;
    }

    if (dword_100090058)
    {
      v11 = ne_log_obj();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v17) = 0;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "DPD monitoring (for ALGORITHM_INBOUND_DETECT) ....\n", &v17, 2u);
      }
    }

    if (*(a1 + 387))
    {
      *(a1 + 387) = 0;
      sub_100019D9C(a1, 0);
      if (dword_100090058)
      {
        v12 = ne_log_obj();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v17) = 0;
          v6 = "ike packets received from peer... reschedule monitor.\n";
          v9 = v12;
          v10 = 2;
          goto LABEL_17;
        }
      }

      return;
    }

    if ((*(*(a1 + 440) + 264) & 0x40) != 0)
    {
      sub_100019D9C(a1, 0);
      if (dword_100090058)
      {
        v16 = ne_log_obj();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v17) = 0;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "rescheduling DPD monitoring (for ALGORITHM_INBOUND_DETECT).\n", &v17, 2u);
        }
      }
    }

    else
    {
      sub_100019AE4(a1);
    }

LABEL_34:
    *(*(a1 + 440) + 264) &= ~0x40u;
    return;
  }

  if ((*(a1 + 17) & 0x20) != 0)
  {
    if (dword_100090058)
    {
      v13 = ne_log_obj();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v17) = 0;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "DPD monitoring (for ALGORITHM_BLACKHOLE_DETECT) ....\n", &v17, 2u);
      }
    }

    if ((*(*(a1 + 440) + 264) & 0x140) == 0x100)
    {
      sub_100019AE4(a1);
    }

    else
    {
      sub_100019D9C(a1, 0);
      if (dword_100090058)
      {
        v14 = ne_log_obj();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          v15 = *(*(a1 + 440) + 264);
          v17 = 67109376;
          v18 = v15 << 23 >> 31;
          v19 = 1024;
          v20 = v15 << 25 >> 31;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "rescheduling DPD monitoring (for ALGORITHM_BLACKHOLE_DETECT) i = %d, peer %d.\n", &v17, 0xEu);
        }
      }
    }

    *(*(a1 + 440) + 264) &= ~0x100u;
    goto LABEL_34;
  }

  if (dword_100090058)
  {
    v4 = ne_log_obj();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 16);
      v17 = 67109120;
      v18 = v7;
      v6 = "DPD monitoring (for ALGORITHM_BLACKHOLE_DETECT) aborted, invalid Phase 1 status %d....\n";
      goto LABEL_16;
    }
  }
}

void sub_10001A1D4(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    if ((*(a1 + 17) & 0x20) != 0)
    {
      if (*(a1 + 368))
      {
        v3 = *(a1 + 64);
        if (*(v3 + 216))
        {
          if (*(v3 + 224))
          {
            if (!*(a1 + 387))
            {
              v5 = *(a1 + 388);
              if (v5)
              {
                sub_100038740(v5);
                *(a1 + 388) = 0;
              }

              sub_100019D9C(a1, 0);
              if (dword_100090058)
              {
                v6 = ne_log_obj();
                if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
                {
                  v7 = 136315138;
                  v8 = a2;
                  _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s... rescheduling send_r_u.\n", &v7, 0xCu);
                }
              }
            }

            ++*(a1 + 387);
          }
        }
      }
    }
  }
}

void sub_10001A2F8(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, a5, 2u);
}

uint64_t sub_10001A310(uint64_t result, float a2)
{
  *v3 = a2;
  *v2 = result;
  return result;
}

char *sub_10001A32C(unsigned __int16 *a1)
{
  v2 = bswap32(*a1) >> 16;

  return sub_10003BC84(v2);
}

uint64_t sub_10001A34C(uint64_t a1)
{
  v1 = (a1 + 56);
  if (*(a1 + 56) != 6336)
  {
    if (dword_100090058)
    {
      v6 = ne_log_obj();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_100058738(v1);
      }
    }

    return 0xFFFFFFFFLL;
  }

  v3 = sub_100024040(*(a1 + 256));
  *(a1 + 108) = v3;
  v4 = *(a1 + 240);
  if (v4)
  {
    sub_10002B6C4(v4);
    v3 = *(a1 + 108);
  }

  result = sub_10002B73C(*(a1 + 256), v3);
  *(a1 + 240) = result;
  if (result)
  {
    sub_100000A50(v1, 6384);
    if (dword_100090010)
    {
      return 0;
    }

    if ((sub_10002D588(a1) & 0x80000000) == 0)
    {
      if (dword_100090058)
      {
        v7 = ne_log_obj();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
        {
          sub_10005AB20();
        }
      }

      v8 = sub_100038550(*(qword_1000900B8 + 284), sub_10002D438, a1);
      result = 0;
      *(a1 + 64) = v8;
      return result;
    }

    if (dword_100090058)
    {
      v9 = ne_log_obj();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_10005AB54();
      }
    }

    return 0xFFFFFFFFLL;
  }

  return result;
}

uint64_t sub_10001A4A4(uint64_t a1, uint64_t a2)
{
  v44 = 0;
  v45 = 0;
  if (a2)
  {
    if (dword_100090058)
    {
      v2 = ne_log_obj();
      if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
      {
        sub_10005AB88();
      }
    }

LABEL_73:
    v35 = 0xFFFFFFFFLL;
    goto LABEL_74;
  }

  v4 = (a1 + 56);
  if (*(a1 + 56) != 6352)
  {
    if (dword_100090058)
    {
      v21 = ne_log_obj();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        sub_100058738(v4);
      }
    }

    goto LABEL_73;
  }

  if ((sub_10000C7F0(a1, 0) & 0x80000000) != 0)
  {
    if (dword_100090058)
    {
      v22 = ne_log_obj();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        sub_10005ACC0();
      }
    }

    goto LABEL_73;
  }

  v5 = sub_1000042AC(*(*(*(a1 + 256) + 64) + 140));
  *(a1 + 208) = v5;
  if (!v5)
  {
    if (dword_100090058)
    {
      v23 = ne_log_obj();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        sub_10005951C();
      }
    }

    goto LABEL_73;
  }

  v6 = *(a1 + 120);
  v7 = *(v6 + 20);
  if (v7)
  {
    if ((sub_100027728(*(v6 + 20), a1 + 152) & 0x80000000) != 0)
    {
      if (dword_100090058)
      {
        v36 = ne_log_obj();
        if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
        {
          sub_10005ABBC();
        }
      }

      goto LABEL_73;
    }

    if ((sub_100027424(*(a1 + 152), (a1 + 168), (a1 + 144)) & 0x80000000) != 0)
    {
      if (dword_100090058)
      {
        v38 = ne_log_obj();
        if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
        {
          sub_100059550();
        }
      }

      goto LABEL_73;
    }
  }

  if ((sub_10000E0C4(a1) & 0x80000000) != 0)
  {
    if (dword_100090058)
    {
      v37 = ne_log_obj();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
        sub_10005AC8C();
      }
    }

    goto LABEL_73;
  }

  if (dword_10008C2C8 >= 7)
  {
    sub_1000314C0(7, *(*(a1 + 192) + 8), **(a1 + 192), "IDci:\n", v8, v9, v10, v11, v44);
    if (dword_10008C2C8 >= 7)
    {
      sub_1000314C0(7, *(*(a1 + 200) + 8), **(a1 + 200), "IDcr:\n", v12, v13, v14, v15, v44);
    }
  }

  v16 = *(*(*(a1 + 192) + 8) + 1) || *(*(*(a1 + 200) + 8) + 1) || *(*(*(a1 + 256) + 64) + 160) || !sub_10000CE8C(*(a1 + 120));
  v17 = **(a1 + 224) + **(a1 + 208) + 8;
  if (v7)
  {
    v17 += **(a1 + 168) + 4;
  }

  if (v16)
  {
    v17 += **(a1 + 192) + **(a1 + 200) + 8;
  }

  if (sub_10000CE4C(*(a1 + 120)) && (*(*(a1 + 256) + 96) & 6) != 0)
  {
    v18 = sub_10003DA04(a1, &v45, &v44);
    v19 = v18;
    if (v18)
    {
      if (v18 == -1)
      {
        if (dword_100090058)
        {
          v20 = ne_log_obj();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
          {
            sub_10005ABF0();
          }
        }

        goto LABEL_73;
      }

      v17 += *v45 + *v44 + 8;
    }
  }

  else
  {
    v19 = 0;
  }

  v24 = sub_10003D3A8(v17);
  if (!v24)
  {
    if (dword_100090058)
    {
      v39 = ne_log_obj();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
      {
        sub_10005A82C();
      }
    }

    goto LABEL_73;
  }

  v25 = v24;
  v26 = sub_100024140(v24[1], *(a1 + 224), 10);
  if (v16)
  {
    v27 = 5;
  }

  else
  {
    v27 = v19;
  }

  if (v7)
  {
    v28 = 4;
  }

  else
  {
    v28 = v27;
  }

  v29 = sub_100024140(v26, *(a1 + 208), v28);
  if (v7)
  {
    v29 = sub_100024140(v29, *(a1 + 168), v27);
  }

  if (v16)
  {
    v30 = sub_100024140(v29, *(a1 + 192), 5);
    v29 = sub_100024140(v30, *(a1 + 200), v19);
  }

  if (v19)
  {
    v31 = sub_100024140(v29, v45, v19);
    sub_100024140(v31, v44, 0);
  }

  v32 = sub_100028000(*(a1 + 256), *(a1 + 108), v25);
  if (!v32)
  {
    if (dword_100090058)
    {
      v40 = ne_log_obj();
      if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
      {
        sub_10005AC58();
      }
    }

    sub_10003D4F0(v25);
    goto LABEL_73;
  }

  v33 = v32;
  v34 = sub_10001AA10(a1, v25, v32);
  *(a1 + 80) = v34;
  if (!v34)
  {
    if (dword_100090058)
    {
      v42 = ne_log_obj();
      if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
      {
        sub_10005AC24();
      }
    }

    goto LABEL_86;
  }

  *(a1 + 72) = *(*(*(a1 + 256) + 64) + 200);
  if (sub_100022418(a1) == -1)
  {
    if (dword_100090058)
    {
      v43 = ne_log_obj();
      if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
      {
        sub_10005911C();
      }
    }

LABEL_86:
    v35 = 0xFFFFFFFFLL;
    goto LABEL_87;
  }

  sub_100000A50(v4, 6369);
  v35 = 0;
LABEL_87:
  sub_10003D4F0(v25);
  sub_10003D4F0(v33);
LABEL_74:
  if (v45)
  {
    sub_10003D4F0(v45);
  }

  if (v44)
  {
    sub_10003D4F0(v44);
  }

  return v35;
}

void *sub_10001AA10(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v6 = sub_10003D3A8(*a3 + *a2 + 32);
  if (!v6)
  {
    if (dword_100090058)
    {
      v12 = ne_log_obj();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_10005A82C();
      }
    }

    return 0;
  }

  v7 = v6;
  *(a1 + 105) |= 1u;
  v8 = sub_1000240DC(v6, a1, 8);
  if (!v8)
  {
    if (dword_100090058)
    {
      v13 = ne_log_obj();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        sub_10005ACF4();
      }
    }

    goto LABEL_14;
  }

  v9 = sub_100024140(v8, a3, 1);
  memcpy(v9, *(a2 + 8), *a2);
  v10 = sub_10002C090(*(a1 + 256), v7, *(*(a1 + 240) + 8), **(a1 + 240));
  if (!v10)
  {
    if (dword_100090058)
    {
      v14 = ne_log_obj();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        sub_10005A7F8();
      }
    }

LABEL_14:
    sub_10003D4F0(v7);
    return 0;
  }

  v11 = v10;
  sub_10003D4F0(v7);
  return v11;
}

uint64_t sub_10001AB58(uint64_t a1, void *a2)
{
  v3 = (a1 + 56);
  if (*(a1 + 56) != 6369)
  {
    if (dword_100090058)
    {
      v6 = ne_log_obj();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_100058738(v3);
      }
    }

    goto LABEL_9;
  }

  v4 = a2[1];
  if ((*(v4 + 19) & 1) == 0)
  {
    if (dword_100090058)
    {
      v5 = ne_log_obj();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        sub_10005B0E8();
      }
    }

LABEL_9:
    v7 = 0xFFFFFFFFLL;
LABEL_10:
    v8 = *(a1 + 232);
    if (v8)
    {
      sub_10003D4F0(v8);
      *(a1 + 232) = 0;
    }

    v9 = *(a1 + 216);
    if (v9)
    {
      sub_10003D4F0(v9);
      *(a1 + 216) = 0;
    }

    v10 = *(a1 + 176);
    if (v10)
    {
      sub_10003D4F0(v10);
      *(a1 + 176) = 0;
    }

    return v7;
  }

  v12 = sub_10002BCBC(*(a1 + 256), a2, **(a1 + 240), *(*(a1 + 240) + 8));
  if (!v12)
  {
    if (dword_100090058)
    {
      v61 = ne_log_obj();
      if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
      {
        sub_100059FAC();
      }
    }

    goto LABEL_9;
  }

  v13 = v12;
  v14 = sub_100020D5C(v12);
  if (!v14)
  {
    if (dword_100090058)
    {
      v62 = ne_log_obj();
      if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
      {
        sub_100058F30();
      }
    }

    sub_10003D4F0(v13);
    goto LABEL_9;
  }

  v15 = v14;
  v16 = v14[1];
  if (*v16 != 8)
  {
    if (dword_100090058)
    {
      v63 = ne_log_obj();
      if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
      {
        sub_10005AD28(v16);
      }
    }

    goto LABEL_120;
  }

  v18 = v16[16];
  v17 = v16 + 16;
  v19 = *(v17 - 1);
  if (v18 != 1 && dword_100090058 != 0)
  {
    v21 = ne_log_obj();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v22 = *v17;
      *buf = 67109376;
      *&buf[4] = v22;
      *&buf[8] = 1024;
      *&buf[10] = 8;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "received invalid next payload type %d, expecting %d.\n", buf, 0xEu);
    }
  }

  v24 = *(v4 + 24);
  v23 = (v4 + 24);
  v25 = **(a1 + 208) + bswap32(v24);
  if ((v25 - 28) < 0)
  {
    if (dword_100090058)
    {
      v64 = ne_log_obj();
      if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
      {
        sub_10005B050((a1 + 208), v23, v64);
      }
    }

    goto LABEL_120;
  }

  v26 = sub_10003D3A8(v25 - 28);
  if (!v26)
  {
    if (dword_100090058)
    {
      v65 = ne_log_obj();
      if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
      {
        sub_10005B01C();
      }
    }

LABEL_120:
    v30 = 0;
    v29 = 0;
    v7 = 0xFFFFFFFFLL;
    goto LABEL_121;
  }

  v88 = (a1 + 208);
  v89 = v19;
  v90 = v26;
  v27 = v26[1];
  *(a1 + 232) = 0;
  v93 = (a1 + 232);
  if (*v17)
  {
    v94 = 0;
    LODWORD(v28) = 0;
    v29 = 0;
    v30 = 0;
    v31 = &v27[**(a1 + 208)];
    while (1)
    {
      memcpy(v31, *(v17 + 1), *(v17 + 1));
      v32 = *v17;
      if (v32 > 0xA)
      {
        if (*v17 > 0x14u)
        {
          if (v32 != 21 && v32 != 131)
          {
LABEL_150:
            if (!dword_100090058)
            {
              goto LABEL_168;
            }

            v72 = v29;
            v75 = ne_log_obj();
            if (os_log_type_enabled(v75, OS_LOG_TYPE_ERROR))
            {
              sub_100059CA4(v17);
            }

            goto LABEL_143;
          }
        }

        else
        {
          if (v32 == 11)
          {
            sub_1000197E4(*(v17 + 1), a1);
            goto LABEL_87;
          }

          if (v32 != 16)
          {
            goto LABEL_150;
          }
        }

        *buf = 0;
        sub_100023F0C(buf, *(v17 + 1));
        if (*buf)
        {
          v33 = sub_10003DC54(*buf);
          if (!v33)
          {
            goto LABEL_51;
          }

          v34 = v33;
          if (v29)
          {
            if (v30)
            {
              free(v33);
              goto LABEL_51;
            }

            if (dword_100090058)
            {
              v51 = ne_log_obj();
              if (os_log_type_enabled(v51, OS_LOG_TYPE_DEBUG))
              {
                sub_10005ADA0(v99, v34);
              }

              v30 = v34;
              v34 = v29;
            }

            else
            {
              v30 = v33;
LABEL_51:
              v34 = v29;
            }
          }

          else if (dword_100090058)
          {
            v48 = ne_log_obj();
            if (os_log_type_enabled(v48, OS_LOG_TYPE_DEBUG))
            {
              sub_10005ADE8(v100, v34);
            }
          }

          sub_10003D4F0(*buf);
LABEL_53:
          v29 = v34;
        }
      }

      else if (*v17 > 4u)
      {
        if (v32 == 5)
        {
          if (!*(a1 + 192))
          {
            goto LABEL_168;
          }

          v36 = *(a1 + 200);
          if (!v36)
          {
            goto LABEL_168;
          }

          v91 = v30;
          if (!v94)
          {
            v36 = *(a1 + 192);
          }

          v37 = v36[1];
          v38 = *(v17 + 1);
          v39 = (v38 + 4);
          if (*v37 == *(v38 + 4) && (!*(v38 + 5) || *(v38 + 5) == v37[1]) && (!*(v38 + 6) || *(v38 + 6) == *(v37 + 1)) && !memcmp(v37 + 4, (v38 + 8), *v36 - 4))
          {
            goto LABEL_86;
          }

          if ((*(*(a1 + 256) + 96) & 6) == 0)
          {
            if (!dword_100090058)
            {
              v7 = 13;
LABEL_191:
              v30 = v91;
              goto LABEL_169;
            }

            v72 = v29;
            v78 = ne_log_obj();
            v30 = v91;
            if (os_log_type_enabled(v78, OS_LOG_TYPE_ERROR))
            {
              sub_10005AF40();
            }

            v7 = 13;
LABEL_144:
            v29 = v72;
            goto LABEL_169;
          }

          v92 = v29;
          if (dword_100090058)
          {
            v40 = ne_log_obj();
            if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "mismatched ID was returned - ignored because nat traversal is being used.\n", buf, 2u);
            }
          }

          v41 = *(*(a1 + 256) + 96);
          if (v94)
          {
            v29 = v92;
            if ((v41 & 4) != 0)
            {
              v42 = *(a1 + 288);
              if (v42)
              {
                sub_10003D4F0(v42);
              }

              v43 = sub_10003D3A8((bswap32(*(v38 + 2)) >> 16) - 4);
              *(a1 + 288) = v43;
              if (!v43)
              {
                if (dword_100090058)
                {
                  v81 = ne_log_obj();
                  v30 = v91;
                  if (os_log_type_enabled(v81, OS_LOG_TYPE_ERROR))
                  {
                    sub_10005AE30();
                  }

                  goto LABEL_189;
                }

                v7 = 0xFFFFFFFFLL;
                goto LABEL_191;
              }

              memcpy(v43[1], v39, *v43);
              if (dword_10008C2C8 >= 7)
              {
                sub_1000314C0(7, *(*(a1 + 288) + 8), **(a1 + 288), "peer's external nat address saved.\n", v44, v45, v46, v47, v87);
              }
            }

LABEL_86:
            v94 = 1;
            v30 = v91;
            goto LABEL_87;
          }

          v29 = v92;
          if ((v41 & 2) == 0)
          {
            goto LABEL_86;
          }

          v52 = *(qword_1000900B8 + 296);
          if (v52)
          {
            sub_10003D4F0(v52);
          }

          v53 = *(v38 + 2);
          if (v53 <= 3)
          {
            if (dword_100090058)
            {
              v84 = ne_log_obj();
              if (os_log_type_enabled(v84, OS_LOG_TYPE_ERROR))
              {
                sub_10005AECC((v38 + 2));
              }
            }

            goto LABEL_185;
          }

          v54 = sub_10003D3A8(__rev16(v53) - 4);
          *(qword_1000900B8 + 296) = v54;
          if (!v54)
          {
            if (dword_100090058)
            {
              v85 = ne_log_obj();
              if (os_log_type_enabled(v85, OS_LOG_TYPE_ERROR))
              {
                sub_10005AE98();
              }
            }

LABEL_185:
            v7 = 0xFFFFFFFFLL;
            v30 = v91;
            v29 = v92;
            goto LABEL_169;
          }

          memcpy(v54[1], v39, *v54);
          v55 = *(a1 + 280);
          if (v55)
          {
            sub_10003D4F0(v55);
          }

          v56 = sub_10003D538(*(qword_1000900B8 + 296));
          *(a1 + 280) = v56;
          v30 = v91;
          if (!v56)
          {
            if (dword_100090058)
            {
              v86 = ne_log_obj();
              if (os_log_type_enabled(v86, OS_LOG_TYPE_ERROR))
              {
                sub_10005AE64();
              }
            }

LABEL_189:
            v7 = 0xFFFFFFFFLL;
            v29 = v92;
            goto LABEL_169;
          }

          if (dword_10008C2C8 >= 7)
          {
            sub_1000314C0(7, v56[1], *v56, "external nat address saved.\n", v57, v58, v59, v60, v87);
          }

          v94 = 1;
        }

        else
        {
          if (v32 != 10)
          {
            goto LABEL_150;
          }

          if ((sub_100023F0C((a1 + 216), *(v17 + 1)) & 0x80000000) != 0)
          {
            if (!dword_100090058)
            {
              goto LABEL_168;
            }

            v72 = v29;
            v77 = ne_log_obj();
            if (os_log_type_enabled(v77, OS_LOG_TYPE_ERROR))
            {
              sub_100058C80();
            }

            goto LABEL_143;
          }
        }
      }

      else if (v32 == 1)
      {
        if (*v93)
        {
          if (!dword_100090058)
          {
            goto LABEL_87;
          }

          v34 = v29;
          v35 = ne_log_obj();
          if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
          {
            sub_10005AF74(&v95, v96, v35);
          }

          goto LABEL_53;
        }

        if ((sub_100023F0C(v93, *(v17 + 1)) & 0x80000000) != 0)
        {
          if (!dword_100090058)
          {
            goto LABEL_168;
          }

          v72 = v29;
          v79 = ne_log_obj();
          if (os_log_type_enabled(v79, OS_LOG_TYPE_ERROR))
          {
            sub_100058EFC();
          }

LABEL_143:
          v7 = 0xFFFFFFFFLL;
          goto LABEL_144;
        }
      }

      else
      {
        if (v32 != 4)
        {
          goto LABEL_150;
        }

        if ((sub_100023F0C((a1 + 176), *(v17 + 1)) & 0x80000000) != 0)
        {
          if (!dword_100090058)
          {
            goto LABEL_168;
          }

          v72 = v29;
          v76 = ne_log_obj();
          if (os_log_type_enabled(v76, OS_LOG_TYPE_ERROR))
          {
            sub_100058CB4();
          }

          goto LABEL_143;
        }
      }

LABEL_87:
      v49 = v17[16];
      v17 += 16;
      v50 = *(v17 - 3);
      v31 += v50;
      v28 = v50 + v28;
      if (!v49)
      {
        goto LABEL_128;
      }
    }
  }

  v30 = 0;
  v29 = 0;
  v28 = 0;
LABEL_128:
  if (v89 && *v93 && *(a1 + 216))
  {
    v66 = v29;
    memcpy(v90[1], (*v88)[1], **v88);
    if (dword_100090058)
    {
      v67 = ne_log_obj();
      if (os_log_type_enabled(v67, OS_LOG_TYPE_DEBUG))
      {
        v82 = *v90;
        v83 = **v88 + v28;
        *buf = 134218240;
        *&buf[4] = v82;
        *&buf[12] = 2048;
        v98 = v83;
        _os_log_debug_impl(&_mh_execute_header, v67, OS_LOG_TYPE_DEBUG, "HASH allocated:hbuf->l=%zu actual:tlen=%zu\n", buf, 0x16u);
      }
    }

    *v90 = (**(a1 + 208) + v28);
    v68 = sub_100028000(*(a1 + 256), *(a1 + 108), v90);
    if (v68)
    {
      v69 = v68;
      v70 = timingsafe_bcmp(*(v68 + 8), (v89 + 4), *v68);
      sub_10003D4F0(v69);
      if (v70)
      {
        if (dword_100090058)
        {
          v71 = ne_log_obj();
          if (os_log_type_enabled(v71, OS_LOG_TYPE_DEBUG))
          {
            sub_10005AFB4();
          }
        }

        v7 = 23;
      }

      else
      {
        v29 = v66;
        if ((sub_10000A918(a1) & 0x80000000) == 0)
        {
          sub_100000A50(v3, 6338);
          v7 = 0;
          goto LABEL_169;
        }

        if (!dword_100090058)
        {
          v7 = 14;
          goto LABEL_169;
        }

        v80 = ne_log_obj();
        if (os_log_type_enabled(v80, OS_LOG_TYPE_ERROR))
        {
          sub_10005AFE8();
        }

        v7 = 14;
      }
    }

    else
    {
      if (dword_100090058)
      {
        v74 = ne_log_obj();
        if (os_log_type_enabled(v74, OS_LOG_TYPE_ERROR))
        {
          sub_10005AC58();
        }
      }

      v7 = 0xFFFFFFFFLL;
    }

    v29 = v66;
    goto LABEL_169;
  }

  if (dword_100090058)
  {
    v72 = v29;
    v73 = ne_log_obj();
    if (os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
    {
      sub_100058E54();
    }

    goto LABEL_143;
  }

LABEL_168:
  v7 = 0xFFFFFFFFLL;
LABEL_169:
  sub_10003D4F0(v90);
LABEL_121:
  sub_10003D4F0(v15);
  sub_10003D4F0(v13);
  if (v29)
  {
    free(v29);
  }

  if (v30)
  {
    free(v30);
  }

  if (v7)
  {
    goto LABEL_10;
  }

  return v7;
}

uint64_t sub_10001B70C(uint64_t a1, uint64_t a2)
{
  v2 = (a1 + 56);
  if (*(a1 + 56) == 6338)
  {
    if (dword_100090058)
    {
      v5 = ne_log_obj();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        sub_10005B11C();
      }
    }

    v6 = sub_10003D3A8(**(a1 + 216) + **(a1 + 208));
    if (v6)
    {
      v7 = v6;
      memcpy(v6[1], *(*(a1 + 208) + 8), **(a1 + 208));
      memcpy((v7[1] + **(a1 + 208)), *(*(a1 + 216) + 8), **(a1 + 216));
      v8 = sub_100027F1C(*(a1 + 256), *(a1 + 108), v7);
      sub_10003D4F0(v7);
      if (v8)
      {
        v9 = sub_10003D3A8(*v8 + 32);
        if (!v9)
        {
          if (dword_100090058)
          {
            v21 = ne_log_obj();
            if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
            {
              sub_10005A82C();
            }
          }

          v19 = 0xFFFFFFFFLL;
          goto LABEL_74;
        }

        v10 = v9;
        v11 = sub_1000240DC(v9, a1, 8);
        if (!v11)
        {
          if (dword_100090058)
          {
            v22 = ne_log_obj();
            if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
            {
              sub_10005B2BC();
            }
          }

          goto LABEL_72;
        }

        sub_100024140(v11, v8, 0);
        v12 = sub_10002C090(*(a1 + 256), v10, *(*(a1 + 240) + 8), **(a1 + 240));
        *(a1 + 80) = v12;
        if (!v12)
        {
          if (dword_100090058)
          {
            v23 = ne_log_obj();
            if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
            {
              sub_10005A7F8();
            }
          }

          goto LABEL_72;
        }

        v13 = v12;
        v14 = *(a1 + 256);
        if ((*(a1 + 105) & 2) != 0)
        {
          *(a1 + 72) = *(*(v14 + 64) + 200);
          if (sub_100022418(a1) == -1)
          {
            if (dword_100090058)
            {
              v33 = ne_log_obj();
              if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
              {
                sub_10005B150();
              }
            }

            goto LABEL_72;
          }
        }

        else if ((sub_100021B88(v14, v13) & 0x80000000) != 0)
        {
          if (dword_100090058)
          {
            v15 = ne_log_obj();
            if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
            {
              sub_10005911C();
            }
          }

LABEL_72:
          v19 = 0xFFFFFFFFLL;
          goto LABEL_73;
        }

        v24 = *(a1 + 256);
        v25 = *(v24 + 48);
        v26 = *(v24 + 56);
        v27 = *(a1 + 80);
        if (*(v24 + 100) && *v27 >= 0x501uLL)
        {
          v28 = 0;
          LODWORD(v24) = *(v24 + 96);
        }

        else
        {
          v24 = *(v24 + 96);
          v28 = (v24 >> 3) & 4;
        }

        if (sub_1000072B8(v25, v26, v27, a2, v28, (v24 >> 5) & 1) == -1)
        {
          if (dword_100090058)
          {
            v32 = ne_log_obj();
            if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
            {
              sub_1000590E8();
            }
          }

          goto LABEL_72;
        }

        if ((sub_10002798C(a1, 0) & 0x80000000) != 0)
        {
          if (dword_100090058)
          {
            v34 = ne_log_obj();
            if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
            {
              sub_10005B288();
            }
          }

          goto LABEL_72;
        }

        if ((*(a1 + 105) & 2) != 0)
        {
          sub_100000A50(v2, 6371);
        }

        else
        {
          sub_100000A50(v2, 6344);
          if (dword_100090058)
          {
            v29 = ne_log_obj();
            if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
            {
              sub_10005B184();
            }
          }

          if ((sub_10002D9B4(a1) & 0x80000000) != 0)
          {
            if (dword_100090058)
            {
              v35 = ne_log_obj();
              if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
              {
                sub_10005B254();
              }
            }

            goto LABEL_72;
          }

          if (dword_100090058)
          {
            v30 = ne_log_obj();
            if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
            {
              sub_10005B1B8();
            }
          }

          if ((sub_10002DD70(a1) & 0x80000000) != 0)
          {
            if (dword_100090058)
            {
              v36 = ne_log_obj();
              if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
              {
                sub_10005B220();
              }
            }

            goto LABEL_72;
          }

          if (dword_100090058)
          {
            v31 = ne_log_obj();
            if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
            {
              sub_10005B1EC();
            }
          }
        }

        v19 = 0;
LABEL_73:
        sub_10003D4F0(v10);
LABEL_74:
        sub_10003D4F0(v8);
        return v19;
      }

      if (dword_100090058)
      {
        v18 = ne_log_obj();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          sub_10005AC58();
        }
      }
    }

    else if (dword_100090058)
    {
      v17 = ne_log_obj();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        sub_10005B01C();
      }
    }
  }

  else if (dword_100090058)
  {
    v16 = ne_log_obj();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_100058738(v2);
    }
  }

  return 0xFFFFFFFFLL;
}

uint64_t sub_10001BB80(uint64_t a1, void *a2)
{
  v2 = (a1 + 56);
  if (*(a1 + 56) != 6371)
  {
    if (dword_100090058)
    {
      v4 = ne_log_obj();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        sub_100058738(v2);
      }
    }

    return 0xFFFFFFFFLL;
  }

  if ((*(a2[1] + 19) & 1) == 0)
  {
    if (dword_100090058)
    {
      v3 = ne_log_obj();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        sub_10005B0E8();
      }
    }

    return 0xFFFFFFFFLL;
  }

  v8 = sub_10002BCBC(*(a1 + 256), a2, **(a1 + 240), *(*(a1 + 240) + 8));
  if (!v8)
  {
    if (dword_100090058)
    {
      v17 = ne_log_obj();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        sub_10005B3C0();
      }
    }

    return 0xFFFFFFFFLL;
  }

  v9 = v8;
  v10 = sub_100020D5C(v8);
  if (!v10)
  {
    if (dword_100090058)
    {
      v22 = ne_log_obj();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        sub_10005B38C();
      }
    }

    sub_10003D4F0(v9);
    return 0xFFFFFFFFLL;
  }

  v11 = 0;
  v12 = 0;
  v32 = v10;
  for (i = v10[1]; ; i += 16)
  {
    v14 = *i;
    if (v14 == 8)
    {
      v12 = *(i + 1);
      continue;
    }

    if (v14 != 11)
    {
      break;
    }

    if (v11)
    {
      if (dword_100090058)
      {
        v15 = ne_log_obj();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Ignoring multiple notifications\n", buf, 2u);
        }
      }
    }

    else
    {
      sub_1000197E4(*(i + 1), a1);
      v16 = sub_10003D3A8(*(i + 1));
      if (!v16)
      {
        if (dword_100090058)
        {
          v25 = ne_log_obj();
          v21 = v32;
          if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
          {
            sub_10005B2F0();
          }

          v11 = 0;
LABEL_52:
          v5 = 0xFFFFFFFFLL;
          goto LABEL_58;
        }

        v11 = 0;
LABEL_56:
        v5 = 0xFFFFFFFFLL;
LABEL_57:
        v21 = v32;
        goto LABEL_58;
      }

      v11 = v16;
      memcpy(v16[1], *(i + 1), *v16);
    }
  }

  if (*i)
  {
    if (dword_100090058)
    {
      v23 = ne_log_obj();
      v21 = v32;
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        sub_100059CA4(i);
      }

      goto LABEL_52;
    }

    goto LABEL_56;
  }

  if (!v12)
  {
    if (dword_100090058)
    {
      v24 = ne_log_obj();
      v21 = v32;
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        sub_100058E54();
      }

      goto LABEL_52;
    }

    goto LABEL_56;
  }

  v18 = sub_100028000(*(a1 + 256), *(a1 + 108), v11);
  sub_10003D4F0(0);
  if (!v18)
  {
    if (dword_100090058)
    {
      v26 = ne_log_obj();
      v21 = v32;
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        sub_10005B358();
      }

      goto LABEL_52;
    }

    goto LABEL_56;
  }

  v19 = timingsafe_bcmp(*(v18 + 8), (v12 + 4), *v18);
  sub_10003D4F0(v18);
  if (v19)
  {
    if (!dword_100090058)
    {
      v5 = 23;
      goto LABEL_57;
    }

    v20 = ne_log_obj();
    v21 = v32;
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      sub_10005B324();
    }

    v5 = 23;
  }

  else
  {
    sub_100000A50(v2, 6344);
    *(a1 + 105) ^= 2u;
    if (dword_100090010)
    {
      v5 = 0;
      goto LABEL_57;
    }

    if (dword_100090058)
    {
      v27 = ne_log_obj();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
      {
        sub_10005B184();
      }
    }

    if ((sub_10002D9B4(a1) & 0x80000000) != 0)
    {
      if (dword_100090058)
      {
        v30 = ne_log_obj();
        v21 = v32;
        if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
        {
          sub_10005B254();
        }

        goto LABEL_52;
      }

      goto LABEL_56;
    }

    if (dword_100090058)
    {
      v28 = ne_log_obj();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
      {
        sub_10005B1B8();
      }
    }

    if ((sub_10002DD70(a1) & 0x80000000) != 0)
    {
      v21 = v32;
      if (dword_100090058)
      {
        v31 = ne_log_obj();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
        {
          sub_10005B220();
        }
      }

      goto LABEL_52;
    }

    v21 = v32;
    if (dword_100090058)
    {
      v29 = ne_log_obj();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
      {
        sub_10005B1EC();
      }
    }

    v5 = 0;
  }

LABEL_58:
  sub_10003D4F0(v9);
  sub_10003D4F0(v21);
  if (v11)
  {
    sub_10003D4F0(v11);
  }

  return v5;
}

uint64_t sub_10001C028(uint64_t a1, void *a2)
{
  v3 = (a1 + 56);
  if (*(a1 + 56) != 6592)
  {
    if (dword_100090058)
    {
      v8 = ne_log_obj();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        sub_100058738(v3);
      }
    }

    goto LABEL_9;
  }

  v5 = a2[1];
  if ((*(v5 + 19) & 1) == 0)
  {
    if (dword_100090058)
    {
      v6 = ne_log_obj();
      v7 = 16;
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_10005B0E8();
      }
    }

    else
    {
      v7 = 16;
    }

    goto LABEL_10;
  }

  v15 = sub_10002BCBC(*(a1 + 256), a2, **(a1 + 240), *(*(a1 + 240) + 8));
  if (!v15)
  {
    if (dword_100090058)
    {
      v23 = ne_log_obj();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        sub_10005B3C0();
      }
    }

    goto LABEL_9;
  }

  v16 = v15;
  v17 = sub_100020D5C(v15);
  if (!v17)
  {
    if (dword_100090058)
    {
      v24 = ne_log_obj();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        sub_10005B38C();
      }
    }

    sub_10003D4F0(v16);
LABEL_9:
    v7 = 0xFFFFFFFFLL;
LABEL_10:
    v9 = *(a1 + 224);
    if (v9)
    {
      sub_10003D4F0(v9);
      *(a1 + 224) = 0;
    }

    v10 = *(a1 + 216);
    if (v10)
    {
      sub_10003D4F0(v10);
      *(a1 + 216) = 0;
    }

    v11 = *(a1 + 176);
    if (v11)
    {
      sub_10003D4F0(v11);
      *(a1 + 176) = 0;
    }

    v12 = *(a1 + 192);
    if (v12)
    {
      sub_10003D4F0(v12);
      *(a1 + 192) = 0;
    }

    v13 = *(a1 + 200);
    if (v13)
    {
      sub_10003D4F0(v13);
      *(a1 + 200) = 0;
    }

    return v7;
  }

  v18 = v17;
  v19 = v17[1];
  if (*v19 != 8)
  {
    if (dword_100090058)
    {
      v25 = ne_log_obj();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        sub_10005AD28(v19);
      }
    }

    v26 = 0;
    v27 = 0;
    v7 = 15;
    goto LABEL_125;
  }

  v21 = v19[16];
  v20 = v19 + 16;
  v22 = *(v20 - 1);
  if (v21 == 1)
  {
    v7 = 0xFFFFFFFFLL;
  }

  else
  {
    if (dword_100090058)
    {
      v28 = ne_log_obj();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        v29 = *v20;
        *buf = 67109376;
        v95 = v29;
        v96 = 1024;
        v97 = 1;
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "received invalid next payload type %d, expecting %d.\n", buf, 0xEu);
      }
    }

    v7 = 15;
  }

  v31 = *(v5 + 24);
  v30 = (v5 + 24);
  v32 = bswap32(v31);
  if ((v32 - 28) < 0)
  {
    if (dword_100090058)
    {
      v53 = ne_log_obj();
      if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
      {
        sub_10005B80C(v30);
      }
    }

    goto LABEL_101;
  }

  v33 = sub_10003D3A8(v32 - 28);
  if (!v33)
  {
    if (dword_100090058)
    {
      v54 = ne_log_obj();
      if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
      {
        sub_10005B01C();
      }
    }

LABEL_101:
    v26 = 0;
    v27 = 0;
    goto LABEL_125;
  }

  v80 = v18;
  v81 = v33;
  v38 = v33[1];
  *(a1 + 216) = 0;
  *(a1 + 224) = 0;
  v39 = (a1 + 224);
  *(a1 + 176) = 0;
  *(a1 + 200) = 0;
  v83 = (a1 + 200);
  v86 = (a1 + 216);
  *(a1 + 192) = 0;
  v87 = (a1 + 192);
  if (!*v20)
  {
    v27 = 0;
    v26 = 0;
    v40 = 0;
LABEL_103:
    if (!v22 || !*v39 || !*v86)
    {
      if (dword_100090058)
      {
        v60 = ne_log_obj();
        v7 = 16;
        v18 = v80;
        if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
        {
          sub_10005B7D8();
        }

        goto LABEL_123;
      }

      v7 = 16;
      goto LABEL_122;
    }

    v55 = dword_10008C2C8;
    if (*v83 && dword_10008C2C8 >= 7)
    {
      sub_1000314C0(7, (*v83)[1], **v83, "received IDci2:", v34, v35, v36, v37, v78);
      v55 = dword_10008C2C8;
    }

    if (*v87 && v55 >= 7)
    {
      sub_1000314C0(7, (*v87)[1], **v87, "received IDcr2:", v34, v35, v36, v37, v78);
    }

    *v81 = v40;
    v56 = sub_100028000(*(a1 + 256), *(a1 + 108), v81);
    if (!v56)
    {
      v18 = v80;
      if (dword_100090058)
      {
        v62 = ne_log_obj();
        if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
        {
          sub_10005B358();
        }
      }

      goto LABEL_123;
    }

    v57 = v56;
    v58 = timingsafe_bcmp(*(v56 + 8), (v22 + 4), *v56);
    sub_10003D4F0(v57);
    v18 = v80;
    if (v58)
    {
      if (dword_100090058)
      {
        v59 = ne_log_obj();
        if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
        {
          sub_10005B66C();
        }
      }

      v7 = 23;
      goto LABEL_123;
    }

    if (sub_10001CB80(a1))
    {
      if (dword_100090058)
      {
        v68 = ne_log_obj();
        if (os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
        {
          sub_10005B6A0();
        }
      }

      v7 = 0xFFFFFFFFLL;
      goto LABEL_123;
    }

    v71 = sub_10001CF88(a1);
    if (v71)
    {
      v7 = v71;
      if (v71 != -2)
      {
        if (!dword_100090058)
        {
          goto LABEL_123;
        }

        v75 = ne_log_obj();
        if (os_log_type_enabled(v75, OS_LOG_TYPE_ERROR))
        {
          sub_10005B7A4();
        }

        goto LABEL_122;
      }

      if (sub_1000358D0(a1))
      {
        if (dword_100090058)
        {
          v72 = ne_log_obj();
          if (os_log_type_enabled(v72, OS_LOG_TYPE_ERROR))
          {
            sub_10005B6D4();
          }
        }

        v7 = 0xFFFFFFFFLL;
        goto LABEL_122;
      }
    }

    if ((sub_10000A330(a1) & 0x80000000) != 0)
    {
      if (dword_100090058)
      {
        v76 = ne_log_obj();
        if (os_log_type_enabled(v76, OS_LOG_TYPE_ERROR))
        {
          sub_10005B770();
        }
      }

      goto LABEL_189;
    }

    v73 = *(*(a1 + 128) + 20);
    if (*(a1 + 176))
    {
      if (!v73)
      {
        if (dword_100090058)
        {
          v74 = ne_log_obj();
          if (os_log_type_enabled(v74, OS_LOG_TYPE_ERROR))
          {
            sub_10005B708();
          }
        }

LABEL_189:
        v7 = 14;
LABEL_122:
        v18 = v80;
        goto LABEL_123;
      }
    }

    else if (v73)
    {
      if (dword_100090058)
      {
        v77 = ne_log_obj();
        if (os_log_type_enabled(v77, OS_LOG_TYPE_ERROR))
        {
          sub_10005B73C();
        }
      }

      goto LABEL_189;
    }

    sub_100049618(a1);
    *(a1 + 88) = sub_10003D538(a2);
    sub_100000A50(v3, 6593);
    v7 = 0;
    goto LABEL_122;
  }

  v82 = (a1 + 224);
  v79 = v22;
  LODWORD(v40) = 0;
  v41 = 0;
  v88 = 0;
  v84 = 0;
  while (1)
  {
    memcpy(v38, *(v20 + 1), *(v20 + 1));
    v46 = *v20;
    if (v46 == 5)
    {
      v47 = v41;
    }

    else
    {
      v47 = 0;
    }

    if (*v20 > 0xAu)
    {
      if (*v20 > 0x14u)
      {
        if (v46 != 21 && v46 != 131)
        {
LABEL_134:
          if (!dword_100090058)
          {
            v7 = 16;
            goto LABEL_164;
          }

          v63 = ne_log_obj();
          v7 = 16;
          v18 = v80;
          if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
          {
            sub_10005B5FC(v20);
          }

          goto LABEL_165;
        }
      }

      else
      {
        if (v46 == 11)
        {
          sub_1000197E4(*(v20 + 1), a1);
          goto LABEL_93;
        }

        if (v46 != 16)
        {
          goto LABEL_134;
        }
      }

      v90 = 0;
      sub_100023F0C(&v90, *(v20 + 1));
      if (v90)
      {
        v48 = sub_10003DC54(v90);
        if (!v48)
        {
          goto LABEL_91;
        }

        v49 = v48;
        if (v88)
        {
          if (v84)
          {
            free(v48);
          }

          else
          {
            if (dword_100090058)
            {
              v85 = ne_log_obj();
              if (os_log_type_enabled(v85, OS_LOG_TYPE_DEBUG))
              {
                sub_10005B3F4(v93, v49);
              }
            }

            v84 = v49;
          }

LABEL_91:
          v49 = v88;
        }

        else if (dword_100090058)
        {
          v89 = ne_log_obj();
          if (os_log_type_enabled(v89, OS_LOG_TYPE_DEBUG))
          {
            sub_10005B43C(buf, v49);
          }
        }

        sub_10003D4F0(v90);
        v88 = v49;
        goto LABEL_93;
      }

      goto LABEL_93;
    }

    if (*v20 > 4u)
    {
      if (v46 == 5)
      {
        if (*v83)
        {
          if (*v87)
          {
            if (dword_10008C2C8 >= 3)
            {
              sub_1000314C0(3, (*v87)[1], **v87, "received too many ID payloads", v42, v43, v44, v45, v78);
            }

            v7 = 18;
            goto LABEL_164;
          }

          if (!v41)
          {
            if (dword_100090058)
            {
              v50 = ne_log_obj();
              if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
              {
                sub_10005B484(&v91, v92, v50);
              }
            }
          }

          if ((sub_100023F0C(v87, *(v20 + 1)) & 0x80000000) != 0)
          {
            if (dword_100090058)
            {
              v69 = ne_log_obj();
              v18 = v80;
              v27 = v84;
              v26 = v88;
              if (os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
              {
                sub_10005B4C4();
              }

              goto LABEL_123;
            }

            goto LABEL_164;
          }
        }

        else
        {
          if ((sub_100023F0C(v83, *(v20 + 1)) & 0x80000000) != 0)
          {
            if (dword_100090058)
            {
              v70 = ne_log_obj();
              v18 = v80;
              v27 = v84;
              v26 = v88;
              if (os_log_type_enabled(v70, OS_LOG_TYPE_ERROR))
              {
                sub_10005B4F8();
              }

              goto LABEL_123;
            }

            goto LABEL_164;
          }

          v47 = v41 + 1;
        }
      }

      else
      {
        if (v46 != 10)
        {
          goto LABEL_134;
        }

        if ((sub_100023F0C(v86, *(v20 + 1)) & 0x80000000) != 0)
        {
          if (dword_100090058)
          {
            v64 = ne_log_obj();
            v18 = v80;
            v27 = v84;
            v26 = v88;
            if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
            {
              sub_10005B560();
            }

            goto LABEL_123;
          }

LABEL_164:
          v18 = v80;
LABEL_165:
          v27 = v84;
          v61 = v81;
          v26 = v88;
          goto LABEL_124;
        }
      }

      goto LABEL_93;
    }

    if (v46 != 1)
    {
      if (v46 != 4)
      {
        goto LABEL_134;
      }

      if ((sub_100023F0C((a1 + 176), *(v20 + 1)) & 0x80000000) != 0)
      {
        if (!dword_100090058)
        {
          goto LABEL_164;
        }

        v65 = ne_log_obj();
        v18 = v80;
        v27 = v84;
        v26 = v88;
        if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
        {
          sub_10005B52C();
        }

        goto LABEL_123;
      }

      goto LABEL_93;
    }

    if (*v82)
    {
      if (!dword_100090058)
      {
        goto LABEL_164;
      }

      v66 = ne_log_obj();
      v18 = v80;
      v27 = v84;
      v26 = v88;
      if (os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
      {
        sub_10005B594();
      }

      goto LABEL_123;
    }

    if ((sub_100023F0C(v82, *(v20 + 1)) & 0x80000000) != 0)
    {
      break;
    }

LABEL_93:
    v51 = v20[16];
    v20 += 16;
    v52 = *(v20 - 3);
    v38 += v52;
    v40 = v52 + v40;
    v41 = v47;
    if (!v51)
    {
      v27 = v84;
      v26 = v88;
      v22 = v79;
      v39 = (a1 + 224);
      goto LABEL_103;
    }
  }

  if (!dword_100090058)
  {
    goto LABEL_164;
  }

  v67 = ne_log_obj();
  v18 = v80;
  v27 = v84;
  v26 = v88;
  if (os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
  {
    sub_10005B5C8();
  }

LABEL_123:
  v61 = v81;
LABEL_124:
  sub_10003D4F0(v61);
LABEL_125:
  sub_10003D4F0(v16);
  sub_10003D4F0(v18);
  if (v26)
  {
    free(v26);
  }

  if (v27)
  {
    free(v27);
  }

  if (v7)
  {
    goto LABEL_10;
  }

  return v7;
}

uint64_t sub_10001CB80(uint64_t *a1)
{
  v2 = a1[24];
  if (v2)
  {
    v3 = sub_10003D538(v2);
  }

  else
  {
    v4 = *(*a1 + 1);
    if (v4 == 2)
    {
      v5 = 32;
    }

    else
    {
      if (v4 != 30)
      {
        if (dword_100090058)
        {
          v13 = ne_log_obj();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
          {
            sub_100057680(a1);
          }
        }

        return 0xFFFFFFFFLL;
      }

      v5 = 128;
    }

    v3 = sub_10000E38C(*a1, v5, 255);
  }

  v6 = v3;
  if (!v3)
  {
    if (dword_100090058)
    {
      v9 = ne_log_obj();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_10005BA3C();
      }
    }

    return 0xFFFFFFFFLL;
  }

  v7 = a1[25];
  if (v7)
  {
    v8 = sub_10003D538(v7);
LABEL_22:
    v14 = v8;
    if (v8)
    {
      v15 = sub_100037CC0(v6, v8, *(a1[32] + 320), 0);
      v16 = v15;
      a1[14] = v15;
      v17 = a1 + 14;
      if (v15)
      {
        if (*v15)
        {
          goto LABEL_65;
        }

        v18 = a1[34];
        if (!v18 || (*(v18 + 264) & 0x400) == 0)
        {
          goto LABEL_65;
        }
      }

      v19 = a1[32];
      if ((*(v19 + 96) & 2) != 0 && *(qword_1000900B8 + 296))
      {
        v15 = sub_100037CC0(v6, v14, *(v19 + 320), 1);
        *v17 = v15;
      }

      if (v15 && dword_100090058)
      {
        v20 = ne_log_obj();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
        {
          sub_10005B880();
        }

        v15 = *v17;
      }

      if (v15)
      {
        if (*v15)
        {
          goto LABEL_65;
        }

        v21 = a1[34];
        if (!v21 || (*(v21 + 264) & 0x400) == 0)
        {
          goto LABEL_65;
        }
      }

      sub_10004C5C0(a1);
      v28 = a1[14];
      if (v28 && dword_100090058)
      {
        v29 = ne_log_obj();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
        {
          sub_10005B8B4();
        }

        v28 = *v17;
      }

      if (v28 && *v28)
      {
        goto LABEL_65;
      }

      if (a1[25])
      {
        if (dword_100090058)
        {
          v30 = ne_log_obj();
          if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
          {
            sub_10005B8E8();
          }
        }

        v31 = sub_100037EA4(a1[25], *(a1[32] + 320), v22, v23, v24, v25, v26, v27);
        a1[14] = v31;
        if (v31)
        {
          if (dword_100090058)
          {
            v32 = ne_log_obj();
            if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
            {
              sub_10005B91C();
            }
          }

          goto LABEL_65;
        }
      }

      else if (v28)
      {
        goto LABEL_65;
      }

      if (!v16)
      {
        if (dword_100090058)
        {
          v40 = ne_log_obj();
          if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
          {
            sub_10005B6A0();
          }
        }

        goto LABEL_70;
      }

      *v17 = v16;
LABEL_65:
      sub_1000382E8(*v17);
      v36 = *(*v17 + 16);
      if (!v36 || !sub_100044464(a1[32], (v36 + 8), 1))
      {
        if (dword_100090058)
        {
          v38 = ne_log_obj();
          if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
          {
            sub_10005B984(v17);
          }
        }

        v35 = 0;
        goto LABEL_75;
      }

      if (dword_100090058)
      {
        v37 = ne_log_obj();
        if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
        {
          sub_10005B950();
        }
      }

LABEL_70:
      v35 = 0xFFFFFFFFLL;
LABEL_75:
      sub_10003D4F0(v6);
      sub_10003D4F0(v14);
      return v35;
    }

    if (dword_100090058)
    {
      v33 = ne_log_obj();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        sub_10005BA08();
      }
    }

    goto LABEL_60;
  }

  v10 = a1[1];
  v11 = *(v10 + 1);
  if (v11 == 2)
  {
    v12 = 32;
    goto LABEL_21;
  }

  if (v11 == 30)
  {
    v12 = 128;
LABEL_21:
    v8 = sub_10000E38C(v10, v12, 255);
    goto LABEL_22;
  }

  if (dword_100090058)
  {
    v34 = ne_log_obj();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      sub_100057680((a1 + 1));
    }
  }

LABEL_60:
  sub_10003D4F0(v6);
  return 0xFFFFFFFFLL;
}

uint64_t sub_10001CF88(unint64_t *a1)
{
  result = sub_10001E364(a1, 0);
  if (result == -2 || !result)
  {
    return result;
  }

  if ((*(a1[32] + 96) & 2) == 0 || !*(qword_1000900B8 + 296))
  {
    v3 = a1[34];
    if (!v3 || (*(v3 + 264) & 0x400) == 0)
    {
      return result;
    }

    goto LABEL_9;
  }

  v3 = a1[34];
  if (v3)
  {
LABEL_9:
    if ((*(v3 + 264) & 0x400) != 0)
    {
      result = sub_10004C814(a1);
    }
  }

  if (result != -2 && result)
  {

    return sub_10001E364(a1, 1);
  }

  return result;
}

uint64_t sub_10001D038(uint64_t a1)
{
  v1 = (a1 + 56);
  if (*(a1 + 56) != 6593)
  {
    if (dword_100090058)
    {
      v6 = ne_log_obj();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_100058738(v1);
      }
    }

    return 0xFFFFFFFFLL;
  }

  sub_100000A50((a1 + 56), 6640);
  if ((sub_10002D588(a1) & 0x80000000) != 0)
  {
    if (dword_100090058)
    {
      v7 = ne_log_obj();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        sub_10005BA70();
      }
    }

    return 0xFFFFFFFFLL;
  }

  if (dword_100090058)
  {
    v3 = ne_log_obj();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      sub_10005AB20();
    }
  }

  v4 = sub_100038550(*(qword_1000900B8 + 284), sub_10002D438, a1);
  result = 0;
  *(a1 + 64) = v4;
  return result;
}

uint64_t sub_10001D148(uint64_t a1, uint64_t a2)
{
  v71 = 0;
  v72 = 0;
  v70 = 0;
  if (a2)
  {
    if (dword_100090058)
    {
      v2 = ne_log_obj();
      if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
      {
        sub_10005BAA4();
      }
    }

    goto LABEL_107;
  }

  v4 = (a1 + 56);
  if (*(a1 + 56) != 6608)
  {
    if (dword_100090058)
    {
      v13 = ne_log_obj();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        sub_100058738(v4);
      }
    }

    goto LABEL_107;
  }

  if ((sub_10000B024(a1) & 0x80000000) != 0)
  {
    if (dword_100090058)
    {
      v14 = ne_log_obj();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        sub_10005BC78();
      }
    }

    goto LABEL_107;
  }

  v5 = sub_1000042AC(*(*(*(a1 + 256) + 64) + 140));
  *(a1 + 208) = v5;
  if (!v5)
  {
    if (dword_100090058)
    {
      v15 = ne_log_obj();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        sub_10005951C();
      }
    }

    goto LABEL_107;
  }

  v6 = *(*(a1 + 128) + 20);
  v7 = *(a1 + 176);
  if (v7 && v6)
  {
    if ((sub_100027728(*(*(a1 + 128) + 20), a1 + 152) & 0x80000000) != 0)
    {
      if (dword_100090058)
      {
        v54 = ne_log_obj();
        if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
        {
          sub_10005BC44();
        }
      }

      goto LABEL_107;
    }

    if ((sub_100027424(*(a1 + 152), (a1 + 168), (a1 + 144)) & 0x80000000) != 0)
    {
      if (dword_100090058)
      {
        v55 = ne_log_obj();
        if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
        {
          sub_10005BC10();
        }
      }

      goto LABEL_107;
    }

    v5 = *(a1 + 208);
    v7 = *(a1 + 176);
  }

  v8 = **(a1 + 232) + *v5 + 8;
  if (v7 && v6)
  {
    v8 += **(a1 + 168) + 4;
  }

  v9 = *(a1 + 200);
  if (v9)
  {
    v8 += *v9 + **(a1 + 192) + 8;
  }

  if (sub_10000CE4C(*(a1 + 128)) && (*(*(a1 + 256) + 96) & 6) != 0)
  {
    v10 = sub_10003DA04(a1, &v72, &v71);
    v11 = v10;
    if (v10)
    {
      if (v10 == -1)
      {
        if (dword_100090058)
        {
          v12 = ne_log_obj();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
          {
            sub_10005BAD8();
          }
        }

        goto LABEL_107;
      }

      v8 += *v72 + *v71 + 8;
    }
  }

  else
  {
    v11 = 0;
  }

  if (dword_100090058)
  {
    v16 = ne_log_obj();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      sub_10005BB0C();
    }
  }

  sub_100034AD8(7, *(a1 + 128));
  v17 = sub_10003D3A8(v8);
  if (!v17)
  {
    if (dword_100090058)
    {
      v21 = ne_log_obj();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        sub_10005A82C();
      }
    }

    goto LABEL_107;
  }

  v18 = v17;
  v19 = sub_100024140(v17[1], *(a1 + 232), 10);
  v70 = v19;
  if (*(a1 + 176) && v6)
  {
    v20 = 4;
  }

  else if (*(a1 + 200))
  {
    v20 = 5;
  }

  else
  {
    v20 = v11;
  }

  v22 = sub_100024140(v19, *(a1 + 208), v20);
  v23 = v22;
  if (*(a1 + 176) && v6)
  {
    v70 = v22;
    if (*(a1 + 200))
    {
      v24 = 5;
    }

    else
    {
      v24 = v11;
    }

    v23 = sub_100024140(v22, *(a1 + 168), v24);
  }

  v25 = *(a1 + 200);
  if (v25)
  {
    v30 = sub_100024140(v23, v25, 5);
    if (dword_10008C2C8 >= 7)
    {
      sub_1000314C0(7, *(*(a1 + 200) + 8), **(a1 + 200), "sending IDci2:", v26, v27, v28, v29, v68);
    }

    v70 = v30;
    v23 = sub_100024140(v30, *(a1 + 192), v11);
    if (dword_10008C2C8 >= 7)
    {
      sub_1000314C0(7, *(*(a1 + 192) + 8), **(a1 + 192), "sending IDcr2:", v31, v32, v33, v34, v68);
    }
  }

  v35 = *(a1 + 128);
  v36 = *(v35 + 24);
  if ((v36 & 1) == 0)
  {
    if ((v36 & 2) == 0)
    {
      goto LABEL_72;
    }

    v37 = 0;
    goto LABEL_65;
  }

  v69 = bswap32(*(v35 + 8));
  v38 = sub_100023C34(0, 1, 1u);
  if (!v38)
  {
    if (dword_100090058)
    {
      v56 = ne_log_obj();
      if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
      {
        sub_10005BB74();
      }
    }

    goto LABEL_106;
  }

  v39 = sub_100023B5C(v38, 2u, &v69, 4);
  if (!v39)
  {
    if (!dword_100090058)
    {
      goto LABEL_106;
    }

    v59 = ne_log_obj();
    if (!os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_106;
    }

    goto LABEL_105;
  }

  v37 = v39;
  if ((*(v35 + 24) & 2) != 0)
  {
LABEL_65:
    v69 = bswap32(*(v35 + 16));
    v40 = sub_100023C34(v37, 1, 2u);
    if (!v40)
    {
      if (dword_100090058)
      {
        v58 = ne_log_obj();
        if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
        {
          sub_10005BB74();
        }
      }

      goto LABEL_106;
    }

    v41 = sub_100023B5C(v40, 2u, &v69, 4);
    if (v41)
    {
      v37 = v41;
      goto LABEL_68;
    }

    if (!dword_100090058 || (v61 = ne_log_obj(), !os_log_type_enabled(v61, OS_LOG_TYPE_ERROR)))
    {
LABEL_106:
      sub_10003D4F0(v18);
LABEL_107:
      v62 = 0xFFFFFFFFLL;
      goto LABEL_108;
    }

LABEL_105:
    sub_10005BB40();
    goto LABEL_106;
  }

LABEL_68:
  v42 = *(v35 + 32);
  if (v42)
  {
    while (1)
    {
      v43 = sub_100018DEC(v18, &v70, 0x6000u, v42, v37);
      if (!v43)
      {
        break;
      }

      v18 = v43;
      v42 = *(v42 + 72);
      if (!v42)
      {
        goto LABEL_71;
      }
    }

    if (dword_100090058)
    {
      v64 = ne_log_obj();
      if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
      {
        sub_10005BBA8();
      }
    }

    v62 = 0xFFFFFFFFLL;
    goto LABEL_111;
  }

LABEL_71:
  sub_10003D4F0(v37);
LABEL_72:
  if (v11)
  {
    v44 = sub_100024140(v23, v72, v11);
    sub_100024140(v44, v71, 0);
  }

  v45 = sub_10003D3A8(*v18 + **(a1 + 216));
  if (!v45)
  {
    if (dword_100090058)
    {
      v57 = ne_log_obj();
      if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
      {
        sub_10005B01C();
      }
    }

    goto LABEL_106;
  }

  v46 = v45;
  memcpy(v45[1], *(*(a1 + 216) + 8), **(a1 + 216));
  memcpy((v46[1] + **(a1 + 216)), *(v18 + 8), *v18);
  v47 = sub_100028000(*(a1 + 256), *(a1 + 108), v46);
  sub_10003D4F0(v46);
  if (!v47)
  {
    if (dword_100090058)
    {
      v60 = ne_log_obj();
      if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
      {
        sub_10005AC58();
      }
    }

    goto LABEL_106;
  }

  v48 = sub_10001AA10(a1, v18, v47);
  *(a1 + 80) = v48;
  if (!v48)
  {
    if (dword_100090058)
    {
      v65 = ne_log_obj();
      if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
      {
        sub_10005BBDC();
      }
    }

    goto LABEL_129;
  }

  *(a1 + 72) = *(*(*(a1 + 256) + 64) + 200);
  if (sub_100022418(a1) == -1)
  {
    if (dword_100090058)
    {
      v66 = ne_log_obj();
      if (os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
      {
        sub_10005911C();
      }
    }

    goto LABEL_129;
  }

  v49 = *(a1 + 256);
  v50 = *(v49 + 48);
  v51 = *(v49 + 56);
  v52 = *(a1 + 80);
  if (*(v49 + 100) && *v52 >= 0x501uLL)
  {
    v53 = 0;
    LODWORD(v49) = *(v49 + 96);
  }

  else
  {
    v49 = *(v49 + 96);
    v53 = (v49 >> 3) & 4;
  }

  if (sub_1000072B8(v50, v51, v52, *(a1 + 88), v53, (v49 >> 5) & 1) == -1)
  {
    if (dword_100090058)
    {
      v67 = ne_log_obj();
      if (os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
      {
        sub_1000590E8();
      }
    }

LABEL_129:
    v62 = 0xFFFFFFFFLL;
    goto LABEL_130;
  }

  sub_100000A50(v4, 6626);
  v62 = 0;
LABEL_130:
  sub_10003D4F0(v18);
  sub_10003D4F0(v47);
LABEL_108:
  if (v72)
  {
    sub_10003D4F0(v72);
  }

  v37 = v71;
  if (v71)
  {
LABEL_111:
    sub_10003D4F0(v37);
  }

  return v62;
}

uint64_t sub_10001D92C(uint64_t a1, void *a2)
{
  v2 = (a1 + 56);
  if (*(a1 + 56) != 6626)
  {
    if (dword_100090058)
    {
      v4 = ne_log_obj();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        sub_100058738(v2);
      }
    }

    return 0xFFFFFFFFLL;
  }

  if ((*(a2[1] + 19) & 1) == 0)
  {
    if (dword_100090058)
    {
      v3 = ne_log_obj();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        sub_10005B0E8();
      }
    }

    return 0xFFFFFFFFLL;
  }

  v8 = sub_10002BCBC(*(a1 + 256), a2, **(a1 + 240), *(*(a1 + 240) + 8));
  if (!v8)
  {
    if (dword_100090058)
    {
      v20 = ne_log_obj();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        sub_10005B3C0();
      }
    }

    return 0xFFFFFFFFLL;
  }

  v9 = v8;
  v10 = sub_100020D5C(v8);
  if (!v10)
  {
    if (dword_100090058)
    {
      v21 = ne_log_obj();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        sub_10005B38C();
      }
    }

    v5 = 0xFFFFFFFFLL;
    goto LABEL_49;
  }

  v11 = v10;
  v12 = 0;
  for (i = v10[1]; ; i += 16)
  {
    v14 = *i;
    if (v14 != 8)
    {
      break;
    }

    v12 = *(i + 1);
LABEL_18:
    ;
  }

  if (v14 == 11)
  {
    sub_1000197E4(*(i + 1), a1);
    goto LABEL_18;
  }

  if (*i)
  {
    if (dword_100090058)
    {
      v22 = ne_log_obj();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        sub_100059CA4(i);
      }
    }

    goto LABEL_47;
  }

  if (!v12)
  {
    if (dword_100090058)
    {
      v23 = ne_log_obj();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        sub_100058E54();
      }
    }

    goto LABEL_47;
  }

  v15 = sub_10003D3A8(**(a1 + 208) + **(a1 + 216));
  if (!v15)
  {
    if (dword_100090058)
    {
      v24 = ne_log_obj();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        sub_10005B01C();
      }
    }

    goto LABEL_47;
  }

  v16 = v15;
  memcpy(v15[1], *(*(a1 + 216) + 8), **(a1 + 216));
  memcpy((v16[1] + **(a1 + 216)), *(*(a1 + 208) + 8), **(a1 + 208));
  v17 = sub_100027F1C(*(a1 + 256), *(a1 + 108), v16);
  sub_10003D4F0(v16);
  if (!v17)
  {
    if (dword_100090058)
    {
      v25 = ne_log_obj();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        sub_10005B358();
      }
    }

LABEL_47:
    v5 = 0xFFFFFFFFLL;
    goto LABEL_48;
  }

  v18 = timingsafe_bcmp(*(v17 + 8), (v12 + 4), *v17);
  sub_10003D4F0(v17);
  if (v18)
  {
    if (dword_100090058)
    {
      v19 = ne_log_obj();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        sub_10005BCAC();
      }
    }

    v5 = 23;
  }

  else
  {
    if ((*(a1 + 105) & 2) != 0)
    {
      v26 = 6595;
    }

    else
    {
      v26 = 6596;
    }

    sub_100000A50(v2, v26);
    v5 = 0;
  }

LABEL_48:
  sub_10003D4F0(v11);
LABEL_49:
  sub_10003D4F0(v9);
  return v5;
}

uint64_t sub_10001DC78(uint64_t a1, uint64_t a2)
{
  v2 = (a1 + 56);
  if (*(a1 + 56) == 6595)
  {
    if (dword_100090058)
    {
      v5 = ne_log_obj();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        sub_10005BCE0();
      }
    }

    v6 = *(*(*(a1 + 128) + 32) + 8) + 12;
    v7 = sub_10003D3A8(v6);
    if (v7)
    {
      v8 = v7;
      v9 = v7[1];
      *v9 = 0;
      *(v9 + 2) = bswap32(v6) >> 16;
      *(v9 + 4) = 0x1000000;
      v10 = *(*(a1 + 128) + 32);
      *(v9 + 8) = *v10;
      *(v9 + 9) = 8;
      *(v9 + 10) = 64;
      memcpy((v9 + 12), (v10 + 24), *(v10 + 8));
      v11 = sub_100028000(*(a1 + 256), *(a1 + 108), v8);
      if (!v11)
      {
        if (dword_100090058)
        {
          v26 = ne_log_obj();
          if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
          {
            sub_10005AC58();
          }
        }

        v25 = 0xFFFFFFFFLL;
        goto LABEL_47;
      }

      v12 = v11;
      v13 = sub_10003D3A8(*v11 + *v8 + 32);
      if (!v13)
      {
        if (dword_100090058)
        {
          v27 = ne_log_obj();
          if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
          {
            sub_10005A82C();
          }
        }

        v25 = 0xFFFFFFFFLL;
        goto LABEL_46;
      }

      v14 = v13;
      v15 = sub_1000240DC(v13, a1, 8);
      if (v15)
      {
        v16 = sub_100024140(v15, v12, 11);
        memcpy(v16, *(v8 + 8), *v8);
        v17 = sub_10002C090(*(a1 + 256), v14, *(*(a1 + 240) + 8), **(a1 + 240));
        *(a1 + 80) = v17;
        if (v17)
        {
          if ((sub_100021B88(*(a1 + 256), v17) & 0x80000000) != 0)
          {
            if (dword_100090058)
            {
              v30 = ne_log_obj();
              if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
              {
                sub_10005911C();
              }
            }
          }

          else
          {
            v18 = *(a1 + 256);
            v19 = *(v18 + 48);
            v20 = *(v18 + 56);
            v21 = *(a1 + 80);
            if (*(v18 + 100) && *v21 >= 0x501uLL)
            {
              v22 = 0;
              LODWORD(v18) = *(v18 + 96);
            }

            else
            {
              v18 = *(v18 + 96);
              v22 = (v18 >> 3) & 4;
            }

            if (sub_1000072B8(v19, v20, v21, a2, v22, (v18 >> 5) & 1) != -1)
            {
              sub_100000A50(v2, 6596);
              v25 = 0;
LABEL_45:
              sub_10003D4F0(v14);
LABEL_46:
              sub_10003D4F0(v12);
LABEL_47:
              sub_10003D4F0(v8);
              return v25;
            }

            if (dword_100090058)
            {
              v31 = ne_log_obj();
              if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
              {
                sub_1000590E8();
              }
            }
          }
        }

        else if (dword_100090058)
        {
          v29 = ne_log_obj();
          if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
          {
            sub_10005A7F8();
          }
        }
      }

      else if (dword_100090058)
      {
        v28 = ne_log_obj();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
        {
          sub_10005BD14();
        }
      }

      v25 = 0xFFFFFFFFLL;
      goto LABEL_45;
    }

    if (dword_100090058)
    {
      v24 = ne_log_obj();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        sub_10005B2F0();
      }
    }
  }

  else if (dword_100090058)
  {
    v23 = ne_log_obj();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      sub_100058738(v2);
    }
  }

  return 0xFFFFFFFFLL;
}

uint64_t sub_10001DFC4(uint64_t a1)
{
  v1 = (a1 + 56);
  if (*(a1 + 56) != 6596)
  {
    if (dword_100090058)
    {
      v4 = ne_log_obj();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        sub_100058738(v1);
      }
    }

    return 0xFFFFFFFFLL;
  }

  if ((sub_10002798C(a1, 1) & 0x80000000) != 0)
  {
    if (dword_100090058)
    {
      v5 = ne_log_obj();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        sub_10005B288();
      }
    }

    return 0xFFFFFFFFLL;
  }

  sub_100000A50(v1, 6600);
  *(a1 + 105) ^= 2u;
  if (dword_100090010)
  {
    return 0;
  }

  if (dword_100090058)
  {
    v6 = ne_log_obj();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      sub_10005B184();
    }
  }

  if ((sub_10002D9B4(a1) & 0x80000000) != 0)
  {
    if (dword_100090058)
    {
      v15 = ne_log_obj();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        sub_10005B254();
      }
    }

    return 0xFFFFFFFFLL;
  }

  if (dword_100090058)
  {
    v7 = ne_log_obj();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      sub_10005B1B8();
    }
  }

  if ((sub_10002DD70(a1) & 0x80000000) != 0)
  {
    if (dword_100090058)
    {
      v16 = ne_log_obj();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        sub_10005B220();
      }
    }

    return 0xFFFFFFFFLL;
  }

  if (dword_100090058)
  {
    v8 = ne_log_obj();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      sub_10005B1EC();
    }
  }

  if (!*(a1 + 136))
  {
    return 0;
  }

  v9 = *a1;
  v10 = *(a1 + 8);
  *a1 = v10;
  *(a1 + 8) = v9;
  if ((sub_10002E12C(a1) & 0x80000000) != 0)
  {
    if (dword_100090058)
    {
      v17 = ne_log_obj();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        sub_10005BDE4();
      }
    }

    return 0xFFFFFFFFLL;
  }

  if (dword_100090058)
  {
    v11 = ne_log_obj();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      sub_10005BD48();
    }
  }

  v12 = *(a1 + 136);
  *a1 = v9;
  *(a1 + 8) = v10;
  *v12 = 2;
  v23 = *(v12 + 72);
  v24 = *(v12 + 88);
  v25 = *(v12 + 104);
  v26 = *(v12 + 120);
  v19 = *(v12 + 8);
  v20 = *(v12 + 24);
  v21 = *(v12 + 40);
  v22 = *(v12 + 56);
  *(v12 + 8) = *(v12 + 136);
  *(v12 + 24) = *(v12 + 152);
  *(v12 + 40) = *(v12 + 168);
  *(v12 + 120) = *(v12 + 248);
  *(v12 + 104) = *(v12 + 232);
  *(v12 + 88) = *(v12 + 216);
  *(v12 + 72) = *(v12 + 200);
  *(v12 + 56) = *(v12 + 184);
  *(v12 + 184) = v22;
  *(v12 + 168) = v21;
  *(v12 + 152) = v20;
  *(v12 + 136) = v19;
  *(v12 + 248) = v26;
  *(v12 + 232) = v25;
  *(v12 + 216) = v24;
  *(v12 + 200) = v23;
  v13 = *(v12 + 264);
  *(v12 + 264) = *(v12 + 265);
  *(v12 + 265) = v13;
  if ((sub_10002E12C(a1) & 0x80000000) != 0)
  {
    if (dword_100090058)
    {
      v18 = ne_log_obj();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        sub_10005BDB0();
      }
    }

    return 0xFFFFFFFFLL;
  }

  if (dword_100090058)
  {
    v14 = ne_log_obj();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      sub_10005BD7C();
    }
  }

  sub_100032D44(*(a1 + 136));
  free(*(a1 + 136));
  result = 0;
  *(a1 + 136) = 0;
  *(a1 + 248) = 1;
  return result;
}

uint64_t sub_10001E364(unint64_t *a1, int a2)
{
  memset(__src, 0, sizeof(__src));
  if ((a1[25] == 0) == (a1[24] == 0))
  {
    if (!a2 && (a1[4] || a1[5]))
    {
      if (dword_100090058)
      {
        v14 = ne_log_obj();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          sub_10005BE18();
        }
      }

      return 0xFFFFFFFFLL;
    }

    if (dword_100090058)
    {
      v6 = ne_log_obj();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        sub_10005BE4C(a2, v6);
      }
    }

    memset(__src, 0, sizeof(__src));
    LOBYTE(__src[0]) = 1;
    if (!a2 && (v7 = a1[24]) != 0 && (v8 = **(v7 + 1), v8 <= 6) && ((1 << v8) & 0x72) != 0)
    {
      result = sub_10000E74C(v7, &__src[8] + 8, &__src[16] + 9, &__src[16] + 5, *(a1 + 61));
      if (result)
      {
        return result;
      }

      v9 = **(a1[24] + 8);
      if (v9 == 5)
      {
        result = sub_100024E1C(&__src[8] + 8, *a1);
        if (result)
        {
          return result;
        }

        v9 = **(a1[24] + 8);
      }

      if (v9 == 5)
      {
        v10 = 5;
      }

      else
      {
        v10 = 0;
      }

      if (v9 == 1)
      {
        v11 = 1;
      }

      else
      {
        v11 = v10;
      }
    }

    else
    {
      if (dword_100090058)
      {
        v12 = ne_log_obj();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
        {
          sub_10005BED8();
        }
      }

      v13 = **a1;
      __memcpy_chk();
      if (BYTE9(__src[8]) == 30)
      {
        v11 = 0;
        BYTE9(__src[16]) = 0x80;
        if (a2)
        {
          goto LABEL_53;
        }
      }

      else if (BYTE9(__src[8]) == 2)
      {
        v11 = 0;
        BYTE9(__src[16]) = 32;
        WORD5(__src[8]) = 0;
        if (a2)
        {
          goto LABEL_53;
        }
      }

      else
      {
        v11 = 0;
        BYTE9(__src[16]) = 0;
        if (a2)
        {
          goto LABEL_53;
        }
      }
    }

    v15 = a1[25];
    if (v15)
    {
      v16 = **(v15 + 1);
      if (v16 <= 6 && ((1 << v16) & 0x72) != 0)
      {
        result = sub_10000E74C(v15, __src + 8, &__src[16] + 8, &__src[16] + 5, *(a1 + 61));
        if (result)
        {
          return result;
        }

        v17 = **(a1[25] + 8);
        if (v17 == 5)
        {
          result = sub_100024E1C(__src + 8, a1[1]);
          if (result)
          {
            return result;
          }

          v17 = **(a1[25] + 8);
        }

        if (v11 == v17 && BYTE9(__src[8]) == BYTE9(__src[0]))
        {
          v18 = sub_10003A790(&__src[8] + 8);
          a1[4] = v18;
          if (!v18)
          {
            if (!dword_100090058)
            {
              return 0xFFFFFFFFLL;
            }

            v40 = ne_log_obj();
            if (!os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
            {
              return 0xFFFFFFFFLL;
            }

LABEL_111:
            sub_10005BF0C();
            return 0xFFFFFFFFLL;
          }

          v19 = sub_10003A790(__src + 8);
          a1[5] = v19;
          if (!v19)
          {
            if (!dword_100090058)
            {
              return 0xFFFFFFFFLL;
            }

            v20 = ne_log_obj();
            if (!os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
            {
              return 0xFFFFFFFFLL;
            }

            goto LABEL_111;
          }
        }

LABEL_61:
        if (dword_100090058)
        {
          v23 = ne_log_obj();
          if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
          {
            sub_10005BF74(__src, &__src[16] + 5);
          }

          if (dword_100090058)
          {
            v24 = ne_log_obj();
            if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
            {
              sub_10005C010(__src, &__src[16] + 5);
            }
          }
        }

        if (!WORD5(__src[16]))
        {
          WORD5(__src[16]) = 255;
        }

        v25 = sub_1000325A4(__src, a1);
        v26 = v25;
        if (v25)
        {
          if (*(v25 + 292) != 5)
          {
            v30 = 1;
            goto LABEL_83;
          }

          if (*(*(a1[32] + 64) + 164))
          {
            if (!dword_100090058)
            {
              goto LABEL_80;
            }

            v27 = ne_log_obj();
            if (!os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_80;
            }

            *buf = 136315138;
            *&buf[4] = sub_1000330F8(__src);
            v28 = "Update the generated policy : %s\n";
LABEL_79:
            _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, v28, buf, 0xCu);
LABEL_80:
            v29 = malloc_type_malloc(0x110uLL, 0x1000040DDC4BC7FuLL);
            a1[17] = v29;
            if (!v29)
            {
              if (dword_100090058)
              {
                v37 = ne_log_obj();
                if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
                {
                  sub_10005BF0C();
                }
              }

              return 0xFFFFFFFFLL;
            }

            memcpy(v29, __src, 0x110uLL);
            v30 = 0;
LABEL_83:
            LOBYTE(__src[0]) = 2;
            v47 = *(&__src[4] + 8);
            v48 = *(&__src[5] + 8);
            v49 = *(&__src[6] + 8);
            v50 = *(&__src[7] + 8);
            *buf = *(__src + 8);
            v44 = *(&__src[1] + 8);
            v45 = *(&__src[2] + 8);
            v46 = *(&__src[3] + 8);
            *(&__src[3] + 8) = *(&__src[11] + 8);
            *(&__src[2] + 8) = *(&__src[10] + 8);
            *(&__src[1] + 8) = *(&__src[9] + 8);
            *(&__src[7] + 8) = *(&__src[15] + 8);
            *(&__src[6] + 8) = *(&__src[14] + 8);
            *(&__src[5] + 8) = *(&__src[13] + 8);
            *(&__src[4] + 8) = *(&__src[12] + 8);
            *(__src + 8) = *(&__src[8] + 8);
            *(&__src[11] + 8) = v46;
            *(&__src[10] + 8) = v45;
            *(&__src[9] + 8) = v44;
            *(&__src[8] + 8) = *buf;
            *(&__src[15] + 8) = v50;
            *(&__src[14] + 8) = v49;
            *(&__src[13] + 8) = v48;
            *(&__src[12] + 8) = v47;
            v31 = BYTE8(__src[16]);
            BYTE8(__src[16]) = BYTE9(__src[16]);
            BYTE9(__src[16]) = v31;
            v32 = sub_1000325A4(__src, a1);
            v33 = v32;
            if (v32)
            {
              if (!*(a1 + 13))
              {
                *(a1 + 13) = *(v32 + 288);
              }
            }

            else
            {
              if (!dword_100090058)
              {
                goto LABEL_94;
              }

              v35 = ne_log_obj();
              if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
              {
                v41 = 136315138;
                v42 = sub_1000330F8(__src);
                _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "no outbound policy found: %s\n", &v41, 0xCu);
              }
            }

            if (dword_100090058)
            {
              v36 = ne_log_obj();
              if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
              {
                sub_10005C0AC(__src);
                if (v30)
                {
LABEL_95:
                  if (*(v26 + 292) == 2)
                  {
                    if ((sub_10003557C(a1, v26, v33) & 0x80000000) == 0)
                    {
                      return 0;
                    }

                    if (dword_100090058)
                    {
                      v39 = ne_log_obj();
                      if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
                      {
                        sub_10005C1A4();
                      }
                    }
                  }

                  else if (dword_100090058)
                  {
                    v38 = ne_log_obj();
                    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
                    {
                      sub_10005C12C(__src);
                    }
                  }

                  return 0xFFFFFFFFLL;
                }

                return 4294967294;
              }
            }

LABEL_94:
            if (v30)
            {
              goto LABEL_95;
            }

            return 4294967294;
          }
        }

        else if (*(*(a1[32] + 64) + 164))
        {
          if (!dword_100090058)
          {
            goto LABEL_80;
          }

          v27 = ne_log_obj();
          if (!os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_80;
          }

          *buf = 136315138;
          *&buf[4] = sub_1000330F8(__src);
          v28 = "no policy found, try to generate the policy : %s\n";
          goto LABEL_79;
        }

        if (dword_100090058)
        {
          v34 = ne_log_obj();
          if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
          {
            sub_10005C1D8(__src);
          }
        }

        return 0xFFFFFFFFLL;
      }
    }

LABEL_53:
    if (dword_100090058)
    {
      v21 = ne_log_obj();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
      {
        sub_10005BF40();
      }
    }

    v22 = *a1[1];
    __memcpy_chk();
    if (BYTE9(__src[0]) == 30)
    {
      BYTE8(__src[16]) = 0x80;
    }

    else if (BYTE9(__src[0]) == 2)
    {
      BYTE8(__src[16]) = 32;
      WORD5(__src[0]) = 0;
    }

    else
    {
      BYTE8(__src[16]) = 0;
    }

    goto LABEL_61;
  }

  if (dword_100090058)
  {
    v2 = ne_log_obj();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      sub_10005C250();
    }
  }

  return 18;
}

void sub_10001EB54(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_debug_impl(a1, v4, OS_LOG_TYPE_DEBUG, a4, v5, 0xCu);
}

uint64_t *sub_10001EB74(uint64_t a1, const sockaddr *a2)
{

  return sub_10003A5E8(a2);
}

void sub_10001EBC8(int a1)
{
  memset(v50, 0, 28);
  memset(v49, 0, sizeof(v49));
  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v41 = 0;
  v42 = 0u;
  memset(v40, 0, sizeof(v40));
  v35 = 128;
  v34 = 128;
  if (xmmword_100090080 == 0)
  {
    while (1)
    {
      v3 = sub_100039B80(a1, v49, 0x40uLL, 2, &v41, &v35, v40, &v34);
      if ((v3 & 0x80000000) == 0)
      {
        break;
      }

      if (*__error() != 4)
      {
        if (dword_100090058)
        {
          v4 = ne_log_obj();
          if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
          {
LABEL_9:
            sub_10005C49C();
            return;
          }
        }

        return;
      }
    }

    if (v3 == 1 && LOBYTE(v49[0]) == 255)
    {
      if (recvfrom(a1, v49, 1uLL, 0, &v41, &v35) != 1)
      {
        if (dword_100090058)
        {
          v5 = ne_log_obj();
          if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
          {
            sub_10005C654();
          }
        }
      }
    }

    else
    {
      if (v49[1])
      {
        v6 = v49[0] == 0;
      }

      else
      {
        v6 = 0;
      }

      if (v6)
      {
        v7 = 4;
      }

      else
      {
        v7 = 0;
      }

      v50[0] = *(v49 | v7);
      *(v50 + 12) = *((v49 | v7) + 0xC);
      if (v3 >= 0x1C && (v8 = bswap32(DWORD2(v50[1])), v8 > 0x1B))
      {
        if (v8 < 0x10000)
        {
          v13 = sub_10003D3A8(v8 + v7);
          if (v13)
          {
            v14 = v13;
            while (1)
            {
              v15 = sub_100039B80(a1, v14[1], *v14, 0, &v41, &v35, v40, &v34);
              if ((v15 & 0x80000000) == 0)
              {
                break;
              }

              if (*__error() != 4)
              {
                if (dword_100090058)
                {
                  v16 = ne_log_obj();
                  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
                  {
                    sub_10005C49C();
                  }
                }

LABEL_76:
                v29 = v14;
                goto LABEL_77;
              }
            }

            if (v15 < v7)
            {
              if (dword_100090058)
              {
                v19 = ne_log_obj();
                if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
                {
                  sub_10005C420();
                }
              }

              goto LABEL_76;
            }

            v20 = v15 - v7;
            v21 = sub_10003D3A8(v20);
            if (!v21)
            {
              if (dword_100090058)
              {
                v28 = ne_log_obj();
                if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
                {
                  sub_10005C3B0();
                }
              }

              goto LABEL_76;
            }

            v22 = v21;
            memcpy(v21[1], (v14[1] + v7), *v21);
            if (v20 == *v22)
            {
              if (dword_100090058)
              {
                v23 = ne_log_obj();
                if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
                {
                  v33 = sub_10003ABDC("from %s to %s", &v41, v40);
                  *buf = 134218242;
                  v37 = v20;
                  v38 = 2080;
                  v39 = v33;
                  _os_log_debug_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEBUG, "%zd bytes message received %s\n", buf, 0x16u);
                }
              }

              if (v41.sa_family == 2 || v41.sa_family == 30)
              {
                if (*v41.sa_data)
                {
                  if (sub_100006EC8(&v41, v40, v22))
                  {
                    if (dword_100090058)
                    {
                      v24 = ne_log_obj();
                      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
                      {
                        v25 = sub_10003A5E8(&v41);
                        *buf = 136315138;
                        v37 = v25;
                        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Received retransmitted packet from %s.\n", buf, 0xCu);
                      }

                      if (dword_100090058)
                      {
                        v26 = ne_log_obj();
                        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
                        {
                          v27 = sub_10003A5E8(&v41);
                          *buf = 136315138;
                          v37 = v27;
                          _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "the packet is retransmitted by %s.\n", buf, 0xCu);
                        }
                      }
                    }
                  }

                  else
                  {
                    sub_10001F28C(v22, &v41, &v40[0].sa_len);
                  }
                }

                else if (dword_100090058)
                {
                  v32 = ne_log_obj();
                  if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
                  {
                    sub_10005C308();
                  }
                }
              }

              else if (dword_100090058)
              {
                v31 = ne_log_obj();
                if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
                {
                  sub_10005C33C(&v41.sa_family);
                }
              }
            }

            else if (dword_100090058)
            {
              v30 = ne_log_obj();
              if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
              {
                sub_10005C284(v22);
              }
            }

            sub_10003D4F0(v14);
            v29 = v22;
LABEL_77:
            sub_10003D4F0(v29);
          }

          else
          {
            if (dword_100090058)
            {
              v17 = ne_log_obj();
              if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
              {
                sub_10005C524(&v50[1] + 2);
              }
            }

            if (recvfrom(a1, v50, 0x1CuLL, 0, &v41, &v35) < 0)
            {
              if (dword_100090058)
              {
                v18 = ne_log_obj();
                if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
                {
                  goto LABEL_9;
                }
              }
            }
          }
        }

        else
        {
          if (dword_100090058)
          {
            v11 = ne_log_obj();
            if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
            {
              sub_10005C5A0();
            }
          }

          if (recvfrom(a1, v50, 0x1CuLL, 0, &v41, &v35) < 0)
          {
            if (dword_100090058)
            {
              v12 = ne_log_obj();
              if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_9;
              }
            }
          }
        }
      }

      else
      {
        if (dword_100090058)
        {
          v9 = ne_log_obj();
          if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
          {
            sub_10005C5D4();
          }
        }

        if (recvfrom(a1, v50, 0x1CuLL, 0, &v41, &v35) < 0)
        {
          if (dword_100090058)
          {
            v10 = ne_log_obj();
            if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
            {
              sub_10005C49C();
            }
          }
        }
      }
    }
  }

  else if (dword_100090058)
  {
    v1 = ne_log_obj();
    if (os_log_type_enabled(v1, OS_LOG_TYPE_DEBUG))
    {
      sub_10005C6DC();
    }
  }
}

void sub_10001F28C(void *a1, sockaddr *a2, unsigned __int8 *a3)
{
  v3 = a1[1];
  if (*v3 == qword_100090008)
  {
    if (dword_100090058)
    {
      v29 = ne_log_obj();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        sub_10005CC14();
      }
    }

    return;
  }

  v4 = *(v3 + 17);
  if ((v4 & 0xF0) != 0x10)
  {
    if (dword_100090058)
    {
      v30 = ne_log_obj();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        sub_10005C710();
      }
    }

    return;
  }

  if (v4 != 16)
  {
    return;
  }

  v6 = (v3 + 19);
  v5 = *(v3 + 19);
  if (v5 >= 8)
  {
    if (dword_100090058)
    {
      v31 = ne_log_obj();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        sub_10005C784((v3 + 19));
      }
    }

    return;
  }

  if ((v5 & 2) != 0 && !*(v3 + 20))
  {
    sub_1000185E4(a1[1], a2, a3, 8u, 0);
    if (dword_100090058)
    {
      v33 = ne_log_obj();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        sub_10005C7F8();
      }
    }

    return;
  }

  v10 = sub_100049000(a3, a2, 0, v3);
  if (!v10)
  {
    v10 = sub_100049000(a3, a2, 1, 0);
    if (!v10)
    {
      if (dword_100090058)
      {
        v34 = ne_log_obj();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "failed to allocate or find ike session.\n", buf, 2u);
        }
      }

      sub_1000393B0();
    }
  }

  v11 = v10;
  v12 = sub_100005538(v10, v3);
  v13 = v12;
  if (v12)
  {
    if (*(v3 + 8) == qword_100090008 && !*(v12 + 20))
    {
      if (!dword_100090058)
      {
        return;
      }

      v46 = ne_log_obj();
      if (!os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
      {
        return;
      }

      *buf = 0;
      v47 = "Malformed cookie received or the initiator's cookies collide.\n";
      goto LABEL_98;
    }

    if ((*(v12 + 96) & 9) == 1)
    {
      v14 = (v12 + 48);
      if (sub_100039634(*(v12 + 48), a2) || sub_100039634(*(v13 + 56), a3))
      {
        free(*(v13 + 48));
        free(*(v13 + 56));
        *v14 = 0;
        *(v13 + 56) = 0;
        v15 = sub_10003A790(&a2->sa_len);
        *(v13 + 48) = v15;
        if (!v15)
        {
          if (dword_100090058)
          {
            v16 = ne_log_obj();
            if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
            {
              sub_10005C82C();
            }
          }

          sub_1000393B0();
        }

        v17 = sub_10003A790(a3);
        *(v13 + 56) = v17;
        if (!v17)
        {
          if (dword_100090058)
          {
            v18 = ne_log_obj();
            if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
            {
              sub_10005C82C();
            }
          }

          sub_1000393B0();
        }

        *(v13 + 96) |= 0x28u;
        if (dword_100090058)
        {
          v19 = ne_log_obj();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
          {
            v20 = sub_10003ABDC("%s<->%s", *(v13 + 48), *(v13 + 56));
            *buf = 136315138;
            *v60 = v20;
            _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "NAT-T: ports changed to: %s\n", buf, 0xCu);
          }
        }
      }
    }

    if (!sub_100039634(*(v13 + 48), a2))
    {
      goto LABEL_35;
    }

    v21 = sub_10003A5E8(*(v13 + 48));
    v22 = strdup(v21);
    v23 = sub_10003A5E8(a2);
    v24 = strdup(v23);
    if (v22)
    {
      v25 = v24;
      if (v24)
      {
        if (dword_100090058)
        {
          log = ne_log_obj();
          if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315394;
            *v60 = v22;
            *&v60[8] = 2080;
            *&v60[10] = v25;
            _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "Remote address mismatched. db=%s, act=%s\n", buf, 0x16u);
          }
        }

        free(v22);
        free(v25);
LABEL_35:
        sub_10001A1D4(v13, "IKE packet received from peer");
        goto LABEL_36;
      }

      if (dword_100090058)
      {
        v57 = ne_log_obj();
        if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_135;
        }
      }
    }

    else if (dword_100090058)
    {
      v56 = ne_log_obj();
      if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
      {
LABEL_135:
        sub_10005C860();
      }
    }

    exit(1);
  }

LABEL_36:
  v27 = (v3 + 18);
  v26 = *(v3 + 18);
  if (v26 <= 5)
  {
    if (v26 != 2 && v26 != 4)
    {
      if (v26 != 5)
      {
LABEL_40:
        if (dword_100090058)
        {
          v28 = ne_log_obj();
          if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
          {
            sub_10005CB8C((v3 + 18), a2);
          }
        }

        return;
      }

      goto LABEL_56;
    }

    if (*(v3 + 20))
    {
      if (dword_100090058)
      {
        v32 = ne_log_obj();
        if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
        {
          sub_10005CAAC();
        }
      }

      return;
    }

    if (v13)
    {
LABEL_87:
      if (*(v13 + 81) == v26)
      {
        if (*(v3 + 16) != 132)
        {
          sub_100000B14(v13, a1);
          return;
        }

        goto LABEL_109;
      }

      if (dword_100090058)
      {
        v50 = ne_log_obj();
        if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
        {
          sub_10005CAE0((v13 + 81), (v3 + 18));
        }
      }

      return;
    }

    v42 = sub_1000055D8(v11, v3);
    if (v42)
    {
      v13 = v42;
      v26 = *v27;
      goto LABEL_87;
    }

    if (*(v3 + 8) == qword_100090008)
    {
      sub_100025140(v11, a1, a2, a3, *v27);
      return;
    }

    if (!dword_100090058)
    {
      return;
    }

    v46 = ne_log_obj();
    if (!os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    *buf = 0;
    v47 = "Malformed cookie received or the spi expired.\n";
LABEL_98:
    _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEFAULT, v47, buf, 2u);
    return;
  }

  if (v26 == 6)
  {
    if (!v13)
    {
      if (dword_100090058)
      {
        v48 = ne_log_obj();
        if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
        {
          sub_10005C894((v3 + 18), a2);
        }
      }

      return;
    }

    if ((*(v13 + 17) & 0x20) == 0)
    {
      if (dword_100090058)
      {
        v35 = ne_log_obj();
        if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
        {
          v36 = *v27;
          v37 = sub_10003A5E8(a2);
          sub_100021944(v13, *(v13 + 84));
          *buf = 67109634;
          *v60 = v36;
          *&v60[4] = 2080;
          *&v60[6] = v37;
          *&v60[14] = 2080;
          *&v60[16] = &xmmword_10008C748;
          _os_log_error_impl(&_mh_execute_header, v35, OS_LOG_TYPE_ERROR, "mode config %d from %s, but ISAKMP-SA %s isn't established.\n", buf, 0x1Cu);
        }
      }

      return;
    }

    if (*(v3 + 16) != 132)
    {
      sub_10004045C(v13, a1);
      return;
    }

LABEL_109:
    sub_100025500(v13, a1, a2, a3);
    return;
  }

  if (v26 == 32)
  {
    v38 = *(v3 + 20);
    if (!v13)
    {
      sub_1000185E4(v3, a2, a3, 4u, 0);
      if (dword_100090058)
      {
        v49 = ne_log_obj();
        if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
        {
          sub_10005C9E0((v3 + 20), v3);
        }
      }

      return;
    }

    v39 = *(v13 + 408);
    if (v39)
    {
      v40 = *(v39 + 1176);
      if (v40)
      {
        sub_10002B6C4(v40);
        *(*(v13 + 408) + 1176) = 0;
      }
    }

    if (*(v3 + 16) != 132)
    {
      if ((*(v13 + 17) & 0x20) != 0)
      {
        v52 = sub_1000061A0(v13, v38);
        if (v52)
        {
          v53 = *v6;
          if ((*v6 & 2) != 0)
          {
            *(v52 + 105) |= 2u;
          }

          if ((v53 & 1) == 0 || (v54 = *(v52 + 256)) != 0 && *(v54 + 72))
          {
            sub_100000F48(v52, a1);
          }

          else if (dword_100090058)
          {
            v55 = ne_log_obj();
            if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
            {
              sub_10005C91C();
            }
          }
        }

        else
        {
          sub_1000256DC(v13, a1);
        }
      }

      else if (dword_100090058)
      {
        v41 = ne_log_obj();
        if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
        {
          sub_10005C950(v13);
        }
      }

      return;
    }

    goto LABEL_109;
  }

  if (v26 != 34)
  {
    goto LABEL_40;
  }

LABEL_56:
  if (v13)
  {
    goto LABEL_57;
  }

  v43 = sub_1000055D8(v11, v3);
  if (v43)
  {
    v13 = v43;
    if (sub_100039634(*(v43 + 48), a2))
    {
      if (dword_100090058)
      {
        v44 = ne_log_obj();
        if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
        {
          v45 = sub_10003A5E8(*(v13 + 48));
          *buf = 136315138;
          *v60 = v45;
          _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "Remote address mismatched. db=%s\n", buf, 0xCu);
        }
      }
    }

LABEL_57:
    if (*(v3 + 16) != 132)
    {
      sub_1000168D4(v13, a1);
      return;
    }

    goto LABEL_109;
  }

  if (dword_100090058)
  {
    v51 = ne_log_obj();
    if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
    {
      sub_10005CA78();
    }
  }
}

uint64_t sub_10001FC6C(uint64_t a1, uint64_t a2, unsigned __int8 *a3, unsigned __int8 *a4, int a5, _OWORD *a6)
{
  v11 = a1;
  if (!a1)
  {
    v11 = sub_100049000(a4, a3, 1, 0);
    if (!v11)
    {
      if (dword_100090058)
      {
        v12 = ne_log_obj();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v31) = 0;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "failed to allocate or find ike session.\n", &v31, 2u);
        }
      }

      sub_1000393B0();
    }
  }

  v13 = sub_100005AC8(16);
  if (!v13)
  {
    return 0xFFFFFFFFLL;
  }

  v14 = v13;
  *(v13 + 8) = a2;
  sub_100036ABC(a2);
  *(v14 + 20) = 0;
  *(v14 + 24) = a5;
  if (a6)
  {
    *(v14 + 28) = *a6;
  }

  *(v14 + 80) = 16;
  *(v14 + 84) = 0;
  *(v14 + 82) = 0;
  *(v14 + 400) = 0;
  v15 = sub_100042B48();
  *(v14 + 408) = v15;
  if (!v15)
  {
    goto LABEL_16;
  }

  *(v14 + 100) = *(a2 + 148) == 2;
  *(v14 + 104) = 0;
  *(v14 + 72) = 0;
  if ((sub_10002006C(v14, a2, a3, a4) & 0x80000000) != 0)
  {
    return 0xFFFFFFFFLL;
  }

  if (sub_1000496EC(v11, v14))
  {
    if (dword_100090058)
    {
      v16 = ne_log_obj();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v31) = 0;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Failed to link ph1 to session\n", &v31, 2u);
      }
    }

LABEL_16:
    sub_100005B80(v14);
    return 0xFFFFFFFFLL;
  }

  if (a5 == 3 && (*(v14 + 432) & 1) == 0)
  {
    *(*(v14 + 440) + 264) |= 1u;
    ++*(*(v14 + 440) + 364);
    *(v14 + 432) |= 1u;
  }

  v18 = **(a2 + 16);
  *(v14 + 81) = v18;
  if (v18 == 2)
  {
    v19 = 5184;
  }

  else
  {
    if (v18 != 4)
    {
      return 0xFFFFFFFFLL;
    }

    v19 = 5248;
  }

  sub_100000A50((v14 + 16), v19);
  if (dword_100090058)
  {
    v20 = ne_log_obj();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      sub_10005CC48();
    }
  }

  v21 = sub_10003A5E8(*(v14 + 56));
  v22 = strdup(v21);
  if (!v22)
  {
    if (dword_100090058)
    {
      v30 = ne_log_obj();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        sub_10005C860();
      }
    }

    exit(1);
  }

  v23 = v22;
  if (dword_100090058)
  {
    v24 = ne_log_obj();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      v25 = sub_10003A5E8(*(v14 + 48));
      v31 = 136315394;
      v32 = v23;
      v33 = 2080;
      v34 = v25;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "initiate new phase 1 negotiation: %s<=>%s\n", &v31, 0x16u);
    }

    v26 = dword_100090058;
    free(v23);
    if (v26)
    {
      v27 = ne_log_obj();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        v28 = sub_10003BC10(*(v14 + 81));
        v31 = 136315138;
        v32 = v28;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "begin %s mode.\n", &v31, 0xCu);
      }

      if (dword_100090058)
      {
        v29 = ne_log_obj();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v31) = 0;
          _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "IPSec Phase 1 started (Initiated by me).\n", &v31, 2u);
        }
      }
    }
  }

  else
  {
    free(v22);
  }

  if (sub_100000DCC(v14, 0))
  {
    sub_100048F2C(v14);
    return 0xFFFFFFFFLL;
  }

  sub_100046F84(1, 0, v14, 0);
  return 0;
}

uint64_t sub_10002006C(uint64_t a1, uint64_t a2, unsigned __int8 *a3, unsigned __int8 *a4)
{
  v7 = sub_10003A790(a3);
  *(a1 + 48) = v7;
  if (!v7)
  {
    goto LABEL_28;
  }

  v8 = v7[1];
  if (v8 != 30 && v8 != 2)
  {
    if (dword_100090058)
    {
      v12 = ne_log_obj();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_10005CC7C(a1 + 48);
      }
    }

    goto LABEL_28;
  }

  v10 = *(v7 + 1);
  v9 = (v7 + 2);
  if (v10)
  {
    if (a4)
    {
LABEL_6:
      v11 = sub_10003A790(a4);
      goto LABEL_14;
    }
  }

  else
  {
    v13 = *(*a2 + 2);
    if (!v13)
    {
      v13 = -3071;
    }

    *v9 = v13;
    if (a4)
    {
      goto LABEL_6;
    }
  }

  v11 = sub_1000397E0(*(a1 + 48));
LABEL_14:
  v14 = v11;
  *(a1 + 56) = v11;
  if (!v11)
  {
LABEL_28:
    sub_100005B80(a1);
    return 0xFFFFFFFFLL;
  }

  v15 = v11[1];
  if (v15 != 30 && v15 != 2)
  {
    if (dword_100090058)
    {
      v19 = ne_log_obj();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        sub_10005CC7C(a1 + 56);
      }
    }

    goto LABEL_28;
  }

  v16 = *(v11 + 1);
  if (!*(v14 + 2))
  {
    v16 = sub_100004F10(v14);
    *(v14 + 2) = v16;
  }

  if (v16 != bswap32(*(qword_1000900B8 + 18)) >> 16)
  {
    return 0;
  }

  if (dword_100090058)
  {
    v17 = ne_log_obj();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *v20 = 0;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Marking ports as changed\n", v20, 2u);
    }
  }

  result = 0;
  *(a1 + 96) |= 0x20u;
  return result;
}

uint64_t sub_100020238(uint64_t a1)
{
  v2 = *(*(a1 + 64) + 168);
  if (*(a1 + 20) == 1 && (v3 = *(a1 + 56), *(v3 + 1) == 2) && (v4 = *(qword_1000900B8 + 72)) != 0)
  {
    if (*(v3 + 4) == *(v4 + 16))
    {
      v5 = sub_10003D3A8(4uLL);
      if (v5)
      {
        v6 = v5;
        *v5[1] = *(v4 + 20);
        sub_100018B60(a1, 0x9E35u, v5);
        if (dword_100090058)
        {
          v7 = ne_log_obj();
          if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
          {
            v8 = bswap32(*(v4 + 20));
            v30[0] = 67109120;
            v30[1] = v8;
            _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "sent redirect notification - address = %x.\n", v30, 8u);
          }
        }

        sub_10003D4F0(v6);
        if (*(v4 + 24))
        {
          sub_100049AAC(a1);
          sub_100020614(a1);
        }
      }

      else if (dword_100090058)
      {
        v29 = ne_log_obj();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
        {
          sub_10005CCEC();
        }
      }
    }
  }

  else
  {
    time((a1 + 360));
    *(a1 + 112) = sub_100038550(*(*(a1 + 72) + 16), sub_1000207F4, a1);
    if (*(*(a1 + 64) + 280))
    {
      if (*(a1 + 20))
      {
        v9 = bswap64(*(a1 + 8));
        v10 = bswap64(*a1);
        v11 = v9 >= v10;
        v12 = v9 > v10;
        v13 = !v11;
        v14 = v12 - v13;
        if (!v14)
        {
          v14 = -1;
        }
      }

      else
      {
        v15 = bswap64(*a1);
        v16 = bswap64(*(a1 + 8));
        v11 = v15 >= v16;
        v17 = v15 > v16;
        v18 = !v11;
        v14 = v17 - v18;
        if (v14 <= 1)
        {
          v14 = 1;
        }
      }

      v19 = sub_100048BF4(v14 > 0, *(*(a1 + 72) + 16));
      if (v19)
      {
        *(a1 + 116) = sub_100038550(v19, sub_1000207F8, a1);
      }

      else if (dword_100090058)
      {
        v20 = ne_log_obj();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          sub_10005CD20();
        }
      }
    }

    if (*(a1 + 432) & 1) == 0 && (**(a1 + 408))
    {
      v21 = *(*(a1 + 72) + 48);
      if (!*(*(a1 + 64) + 272) || v21 != 65001)
      {
        v23 = (v21 - 65002) > 8 || ((1 << (v21 + 22)) & 0x151) == 0;
        if (!v23 || v21 == 64222)
        {
          sub_100043E04(a1);
          v2 = 0;
        }
      }
    }

    if (*(a1 + 368) && *(*(a1 + 64) + 216))
    {
      sub_100019D9C(a1, 0);
    }

    if ((*(a1 + 432) & 1) == 0 && !dword_100090010 && v2 != 0 && !sub_100006D14(*(a1 + 48)))
    {
      sub_100018B60(a1, 0x6002u, 0);
      if (sub_100006D5C(*(a1 + 48)) == -1)
      {
        if (dword_100090058)
        {
          v26 = ne_log_obj();
          if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
          {
            sub_10005CD54();
          }
        }
      }
    }

    sub_100020800(a1);
    if (dword_100090058)
    {
      v27 = ne_log_obj();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
      {
        sub_10005CC48();
      }
    }

    sub_10004AB90(*(a1 + 440), a1);
    sub_100046F84(0, 0, a1, 0);
    sub_1000472E8(1, a1);
  }

  return 0;
}

void *sub_100020614(uint64_t a1)
{
  v2 = *(a1 + 112);
  if (v2)
  {
    sub_100038740(v2);
    *(a1 + 112) = 0;
  }

  v3 = *(a1 + 388);
  if (v3)
  {
    sub_100038740(v3);
    *(a1 + 388) = 0;
  }

  if ((*(a1 + 17) & 0x40) == 0)
  {
    v4 = sub_10003A5E8(*(a1 + 56));
    v5 = strdup(v4);
    v6 = sub_10003A5E8(*(a1 + 48));
    v7 = strdup(v6);
    if (v5)
    {
      v8 = v7;
      if (v7)
      {
        if (dword_100090058)
        {
          v9 = ne_log_obj();
          if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
          {
            sub_100021944(a1, 0);
            v14 = 136315650;
            v15 = v5;
            v16 = 2080;
            v17 = v8;
            v18 = 2080;
            v19 = &xmmword_10008C748;
            _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "ISAKMP-SA expired %s-%s spi:%s\n", &v14, 0x20u);
          }
        }

        free(v5);
        free(v8);
        sub_100000A50((a1 + 16), 17408);
        sub_100049AAC(a1);
        goto LABEL_12;
      }

      if (dword_100090058)
      {
        v13 = ne_log_obj();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_21;
        }
      }
    }

    else if (dword_100090058)
    {
      v12 = ne_log_obj();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
LABEL_21:
        sub_10005C860();
      }
    }

    exit(1);
  }

LABEL_12:
  if (*(a1 + 448))
  {
    v10 = sub_1000207F4;
  }

  else
  {
    v10 = sub_100022638;
  }

  result = sub_100038550(1, v10, a1);
  *(a1 + 112) = result;
  return result;
}

void sub_100020800(uint64_t a1)
{
  v2 = sub_10003A5E8(*(a1 + 56));
  v3 = strdup(v2);
  v4 = sub_10003A5E8(*(a1 + 48));
  v5 = strdup(v4);
  if (!v3)
  {
    if (dword_100090058)
    {
      v12 = ne_log_obj();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_22;
      }
    }

    goto LABEL_23;
  }

  v6 = v5;
  if (!v5)
  {
    if (dword_100090058)
    {
      v13 = ne_log_obj();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
LABEL_22:
        sub_10005C860();
      }
    }

LABEL_23:
    exit(1);
  }

  if (!dword_100090058)
  {
    goto LABEL_15;
  }

  v7 = ne_log_obj();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    sub_100021944(a1, 0);
    v14 = 136315138;
    v15 = &xmmword_10008C748;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "ISAKMP-SA established spi:%s\n", &v14, 0xCu);
  }

  if (dword_100090058)
  {
    v8 = ne_log_obj();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      sub_100021944(a1, 0);
      v14 = 136315650;
      v15 = v3;
      v16 = 2080;
      v17 = v6;
      v18 = 2080;
      v19 = &xmmword_10008C748;
      _os_log_debug_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "ISAKMP-SA established %s-%s spi:%s\n", &v14, 0x20u);
    }

    v9 = dword_100090058;
    free(v3);
    free(v6);
    if (v9)
    {
      v10 = ne_log_obj();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        if (*(a1 + 20))
        {
          v11 = "peer";
        }

        else
        {
          v11 = "me";
        }

        v14 = 136315138;
        v15 = v11;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "IPSec Phase 1 established (Initiated by %s).\n", &v14, 0xCu);
      }
    }
  }

  else
  {
LABEL_15:
    free(v3);
    free(v6);
  }
}

void **sub_100020A5C(unsigned __int8 a1, unsigned __int8 *a2, int a3)
{
  if (dword_100090058)
  {
    v6 = ne_log_obj();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      sub_10005CD88();
    }
  }

  v7 = sub_10003D3A8(0x50uLL);
  if (!v7)
  {
    if (dword_100090058)
    {
      v22 = ne_log_obj();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        sub_10005CE24();
      }
    }

    return 0;
  }

  v8 = v7;
  v9 = v7[1];
  if (a3 < 1 || (v10 = a1) == 0)
  {
LABEL_25:
    *v9 = 0;
    *(v9 + 4) = 0;
    *(v9 + 8) = 0;
    if (dword_100090058)
    {
      v21 = ne_log_obj();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
      {
        sub_10005CDBC();
      }
    }

    return v8;
  }

  v11 = a1;
  v12 = *v7 + v9 - 16;
  while (1)
  {
    if (a3 <= 4)
    {
      if (dword_100090058)
      {
        v23 = ne_log_obj();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          sub_10005CDF0();
        }
      }

      goto LABEL_37;
    }

    if (dword_100090058)
    {
      v13 = ne_log_obj();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = sub_10003BCF8(v11);
        *buf = 67109378;
        v29 = v11;
        v30 = 2080;
        v31 = v14;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "seen nptype=%u(%s)\n", buf, 0x12u);
      }
    }

    *v9 = v10;
    v15 = bswap32(*(a2 + 1)) >> 16;
    *(v9 + 4) = v15;
    if (v15 < 4 || a3 < v15)
    {
      if (dword_100090058)
      {
        v24 = ne_log_obj();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "isakmp_parsewoh invalid length of payload (2)\n", buf, 2u);
        }
      }

LABEL_37:
      v25 = v8;
      goto LABEL_38;
    }

    *(v9 + 8) = a2;
    v9 += 16;
    if (v12 <= v9)
    {
      break;
    }

LABEL_20:
    v11 = *a2;
    a2 += v15;
    a3 -= v15;
    v20 = a3 < 1 || v11 == 0;
    v10 = v11;
    if (v20)
    {
      goto LABEL_25;
    }
  }

  v17 = v8[1];
  v18 = sub_10003D42C(v8, 2 * *v8);
  if (v18)
  {
    v8 = v18;
    v19 = v18[1];
    v12 = *v18 + v19 - 16;
    v9 = v19 + 16 * ((v9 - v17) >> 4);
    v15 = bswap32(*(a2 + 1)) >> 16;
    goto LABEL_20;
  }

  if (dword_100090058)
  {
    v27 = ne_log_obj();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "failed to realloc buffer.\n", buf, 2u);
    }
  }

  v25 = 0;
LABEL_38:
  sub_10003D4F0(v25);
  return 0;
}

uint64_t sub_100020D78()
{
  sub_100006EA8();
  sub_1000075F8();
  if ((sub_100020DB0() & 0x80000000) == 0)
  {
    return 0;
  }

  sub_100021AB4();
  sub_10000453C();
  return 0xFFFFFFFFLL;
}

uint64_t sub_100020DB0()
{
  v66 = 1;
  v0 = *(qword_1000900B8 + 120);
  if (v0)
  {
    v1 = 0;
    v2 = 0;
    v3 = 0;
    while (1)
    {
      v5 = v0 + 1;
      v4 = v0[1];
      if (!v4)
      {
        goto LABEL_108;
      }

      if (*(v0 + 4) != -1)
      {
        ++v1;
        if (*(v0 + 8))
        {
          ++v2;
        }

        goto LABEL_108;
      }

      v6 = *(v4 + 1);
      if (v6 != 30)
      {
        break;
      }

      if (!*(v4 + 8) && !*(v4 + 12) && !*(v4 + 16) && !*(v4 + 20) && dword_100090058 != 0)
      {
        v12 = ne_log_obj();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          v9 = v12;
          v10 = "listening to wildcard address, broadcast IKE packet may kill you\n";
LABEL_16:
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, v10, buf, 2u);
        }
      }

LABEL_26:
      v13 = *v5;
      if (*(*v5 + 1) == 30 && v13->sa_data[6] == 255)
      {
        if (dword_100090058)
        {
          v21 = ne_log_obj();
          v22 = os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT);
          v13 = *v5;
          if (v22)
          {
            v23 = sub_10003A5E8(v13);
            *buf = 136315138;
            *&buf[4] = v23;
            _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Ignoring multicast address %s\n", buf, 0xCu);
            v13 = *v5;
          }
        }

        free(v13);
        *v5 = 0;
      }

      else
      {
        v14 = socket(*(*v5 + 1), 2, 0);
        *(v0 + 4) = v14;
        if (v14 < 0)
        {
          if (dword_100090058)
          {
            v20 = ne_log_obj();
            if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
            {
              sub_10005D1A4();
            }
          }

          goto LABEL_106;
        }

        if (fcntl(v14, 4, 4) == -1 && dword_100090058 != 0)
        {
          v16 = ne_log_obj();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            sub_10005CE58(&v64, v65, v16);
          }
        }

        v17 = *(*v5 + 1);
        if (v17 == 30)
        {
          *v68 = if_nametoindex(v0[5]);
          if (*v68 && setsockopt(*(v0 + 4), 41, 125, v68, 4u) < 0)
          {
            if (dword_100090058)
            {
              v39 = ne_log_obj();
              if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
              {
                sub_10005CE98();
              }
            }

            goto LABEL_106;
          }

          if (setsockopt(*(v0 + 4), 41, 61, &v66, 4u) < 0)
          {
            if (dword_100090058)
            {
              v34 = ne_log_obj();
              if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
              {
                v35 = __error();
                v36 = strerror(*v35);
                *buf = 67109378;
                *&buf[4] = 61;
                *&buf[8] = 2080;
                *&buf[10] = v36;
                _os_log_error_impl(&_mh_execute_header, v34, OS_LOG_TYPE_ERROR, "setsockopt IPV6_RECVDSTADDR (%d):%s\n", buf, 0x12u);
              }
            }

            goto LABEL_106;
          }
        }

        else if (v17 == 2)
        {
          *buf = if_nametoindex(v0[5]);
          if (*buf && setsockopt(*(v0 + 4), 0, 25, buf, 4u) < 0)
          {
            if (dword_100090058)
            {
              v38 = ne_log_obj();
              if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
              {
                sub_10005CEEC();
              }
            }

            goto LABEL_106;
          }

          if (setsockopt(*(v0 + 4), 0, 7, &v66, 4u) < 0)
          {
            if (dword_100090058)
            {
              v18 = ne_log_obj();
              if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
              {
                sub_10005CF40();
              }
            }

            goto LABEL_106;
          }
        }

        v24 = *(*v5 + 1);
        if (v24 == 30)
        {
          if (setsockopt(*(v0 + 4), 41, 42, &v66, 4u) < 0)
          {
            if (dword_100090058)
            {
              v57 = ne_log_obj();
              if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
              {
                sub_10005D11C();
              }
            }

            return 0xFFFFFFFFLL;
          }

          v24 = *(*v5 + 1);
        }

        if ((sub_1000399B0(*(v0 + 4), v24) & 0x80000000) != 0)
        {
          goto LABEL_106;
        }

        if (setsockopt(*(v0 + 4), 0xFFFF, 4, &v66, 4u) < 0)
        {
          if (dword_100090058)
          {
            v33 = ne_log_obj();
            if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
            {
              sub_10005D0C8();
            }
          }

          goto LABEL_106;
        }

        if (setsockopt(*(v0 + 4), 0xFFFF, 512, &v66, 4u) < 0)
        {
          if (dword_100090058)
          {
            v37 = ne_log_obj();
            if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
            {
              sub_10005D074();
            }
          }

          goto LABEL_106;
        }

        if (sub_10003B344(*v5) == 500 && setsockopt(*(v0 + 4), 0xFFFF, 4134, &v66, 4u) < 0)
        {
          if (dword_100090058)
          {
            v48 = ne_log_obj();
            if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
            {
              sub_10005D020();
            }
          }

          goto LABEL_106;
        }

        if ((bind(*(v0 + 4), v0[1], *v0[1]) & 0x80000000) == 0)
        {
          if (*(v0 + 8))
          {
            ++v2;
          }

          v25 = *(v0 + 4);
          v26 = v0[3];
          v27 = v25;
          if (v26)
          {
            dispatch_source_cancel(v26);
            v0[3] = 0;
            v27 = *(v0 + 4);
          }

          v28 = dispatch_source_create(&_dispatch_source_type_read, v27, 0, &_dispatch_main_q);
          v0[3] = v28;
          if (!v28)
          {
            if (dword_100090058)
            {
              v58 = ne_log_obj();
              if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
              {
                sub_10005CF94();
              }
            }

            return 0xFFFFFFFFLL;
          }

          ++v1;
          handler[0] = _NSConcreteStackBlock;
          handler[1] = 0x40000000;
          handler[2] = sub_100021A2C;
          handler[3] = &unk_100088F38;
          v63 = v25;
          dispatch_source_set_event_handler(v28, handler);
          v29 = v0[3];
          v60[0] = _NSConcreteStackBlock;
          v60[1] = 0x40000000;
          v60[2] = sub_100021A34;
          v60[3] = &unk_100088F58;
          v61 = v25;
          v60[4] = v29;
          dispatch_source_set_cancel_handler(v29, v60);
          dispatch_resume(v0[3]);
          if (dword_100090058)
          {
            v30 = ne_log_obj();
            if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
            {
              v31 = sub_10003A5E8(v0[1]);
              v32 = *(v0 + 4);
              *buf = 136315394;
              *&buf[4] = v31;
              *&buf[12] = 1024;
              *&buf[14] = v32;
              _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "%s used as isakmp port (fd=%d)\n", buf, 0x12u);
            }
          }

          goto LABEL_108;
        }

        v40 = v3;
        v41 = *__error();
        if (dword_100090058)
        {
          v42 = ne_log_obj();
          if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
          {
            v59 = sub_10003A5E8(*v5);
            v51 = strerror(v41);
            *buf = 136315394;
            *&buf[4] = v59;
            *&buf[12] = 2080;
            *&buf[14] = v51;
            _os_log_error_impl(&_mh_execute_header, v42, OS_LOG_TYPE_ERROR, "failed to bind to address %s (%s).\n", buf, 0x16u);
          }
        }

        v7 = v41 == 49;
        v3 = v40;
        if (!v7 || *(*v5 + 1) != 30)
        {
          goto LABEL_105;
        }

        v86 = 0u;
        v87 = 0u;
        v84 = 0u;
        v85 = 0u;
        v82 = 0u;
        v83 = 0u;
        v80 = 0u;
        v81 = 0u;
        v78 = 0u;
        v79 = 0u;
        v76 = 0u;
        v77 = 0u;
        v74 = 0u;
        v75 = 0u;
        v73 = 0u;
        memset(buf, 0, sizeof(buf));
        v43 = v0[5];
        __strlcpy_chk();
        v44 = v0[1];
        v45 = *(v44 + 12);
        *&buf[16] = *v44;
        *&buf[28] = v45;
        if (ioctl(*(v0 + 4), 0xC1206949uLL, buf) < 0)
        {
          if (dword_100090058)
          {
            v49 = ne_log_obj();
            if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
            {
              sub_10005CFC8(v67, v0 + 1);
            }
          }

LABEL_105:
          close(*(v0 + 4));
          *(v0 + 4) = -1;
LABEL_106:
          free(v0[1]);
          v0[1] = 0;
          *(v0 + 4) = -1;
          if (!*(qword_1000900B8 + 112) && *(qword_1000900B8 + 308))
          {
            return 0xFFFFFFFFLL;
          }

          goto LABEL_108;
        }

        if ((buf[16] & 0x1D) != 0)
        {
          if (dword_100090058)
          {
            v46 = ne_log_obj();
            if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
            {
              v47 = sub_10003A5E8(*v5);
              *v68 = 136315394;
              v69 = v47;
              v70 = 1024;
              v71 = *&buf[16];
              _os_log_error_impl(&_mh_execute_header, v46, OS_LOG_TYPE_ERROR, "failed to bind to address %s: because of interface address error, flags %x.\n", v68, 0x12u);
            }
          }

          goto LABEL_105;
        }

        if (dword_100090058)
        {
          v50 = ne_log_obj();
          if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
          {
            v52 = sub_10003A5E8(*v5);
            *v68 = 136315394;
            v69 = v52;
            v70 = 1024;
            v71 = *&buf[16];
            _os_log_error_impl(&_mh_execute_header, v50, OS_LOG_TYPE_ERROR, "failed to bind to address %s: because interface address is/was not ready (flags %x).\n", v68, 0x12u);
          }
        }

        close(*(v0 + 4));
        *(v0 + 4) = -1;
        v3 = 1;
      }

LABEL_108:
      v0 = *v0;
      if (!v0)
      {
        if (!v1)
        {
          goto LABEL_126;
        }

        if (sub_10003DF20() && !v2 && dword_100090058)
        {
          v53 = ne_log_obj();
          if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_DEFAULT, "NAT-T is enabled in at least one remote{} section,\n", buf, 2u);
          }

          if (dword_100090058)
          {
            v54 = ne_log_obj();
            if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_DEFAULT, "but no 'isakmp_natt' address was specified!\n", buf, 2u);
            }
          }
        }

        if (v3)
        {
          sub_100038550(5, sub_100005044, 0);
        }

        return 0;
      }
    }

    if (v6 != 2)
    {
      if (dword_100090058)
      {
        v19 = ne_log_obj();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          sub_10005D1F8(v88, &v89, v19);
        }
      }

      goto LABEL_106;
    }

    if (*(v4 + 4))
    {
      v7 = 1;
    }

    else
    {
      v7 = dword_100090058 == 0;
    }

    if (v7)
    {
      goto LABEL_26;
    }

    v8 = ne_log_obj();
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_26;
    }

    *buf = 0;
    v9 = v8;
    v10 = "listening to wildcard address,broadcast IKE packet may kill you\n";
    goto LABEL_16;
  }

LABEL_126:
  if (dword_100090058)
  {
    v56 = ne_log_obj();
    if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
    {
      sub_10005D250();
    }
  }

  return 0xFFFFFFFFLL;
}

void *sub_1000218F4()
{
  sub_100021AB4();

  return sub_10000453C();
}

void sub_10002191C()
{
  sub_100007580();

  sub_100006E1C();
}

__int128 *sub_100021944(uint64_t a1, unsigned int a2)
{
  v4 = 0;
  v5 = 0;
  xmmword_10008C768 = 0u;
  unk_10008C778 = 0u;
  xmmword_10008C748 = 0u;
  unk_10008C758 = 0u;
  do
  {
    snprintf(&xmmword_10008C748 + v5, 64 - v5, "%02x", *(a1 + v4));
    v6 = v5 + 2;
    if (v4 == 7)
    {
      *(&xmmword_10008C748 + v6) = 58;
      LODWORD(v6) = v5 + 3;
    }

    ++v4;
    v5 = v6;
  }

  while (v4 != 16);
  if (a2)
  {
    snprintf(&xmmword_10008C748 + v6, 64 - v6, ":%08x", bswap32(a2) >> 16);
  }

  return &xmmword_10008C748;
}

void sub_100021A34(uint64_t a1)
{
  close(*(a1 + 40));
  v2 = *(a1 + 32);

  dispatch_release(v2);
}

void sub_100021A70()
{
  for (i = *(qword_1000900B8 + 120); i; i = *i)
  {
    v1 = i[3];
    if (v1)
    {
      dispatch_suspend(v1);
    }
  }
}

void sub_100021AB4()
{
  for (i = *(qword_1000900B8 + 120); i; i = *i)
  {
    if (i[1])
    {
      v1 = i[3];
      if (v1)
      {
        dispatch_source_cancel(v1);
        i[3] = 0;
        *(i + 9) = 0;
        *(i + 4) = -1;
      }
    }
  }
}

void sub_100021B10()
{
  v1 = (qword_1000900B8 + 120);
  v0 = *(qword_1000900B8 + 120);
  if (v0)
  {
    do
    {
      v2 = *v0;
      if (*(v0 + 9))
      {
        v1 = v0;
      }

      else
      {
        v3 = v0[3];
        v4 = *v0;
        if (v3)
        {
          dispatch_source_cancel(v3);
          v0[3] = 0;
          v4 = *v0;
        }

        *v1 = v4;
        sub_100004584(v0);
      }

      v0 = v2;
    }

    while (v2);
  }
}

uint64_t sub_100021B88(uint64_t a1, size_t *a2)
{
  v2 = a2;
  v4 = (*(a1 + 96) >> 3) & 4;
  if (*(a1 + 100) && *a2 > 0x500)
  {
    v4 = 0;
  }

  v5 = v4;
  if (v4)
  {
    v6 = dword_100090058 == 0;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    if (!v4)
    {
      v7 = 0;
      goto LABEL_15;
    }
  }

  else
  {
    v8 = ne_log_obj();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      sub_1000556BC();
    }
  }

  v10 = sub_10003D3A8(*v2 + v5);
  if (!v10)
  {
    if (dword_100090058)
    {
      v17 = ne_log_obj();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        sub_10005D2EC();
      }
    }

    return 0xFFFFFFFFLL;
  }

  v7 = v10;
  v11 = v10[1];
  *v11 = 0;
  memcpy(v11 + v5, v2[1], *v2);
  v2 = v7;
LABEL_15:
  v12 = sub_1000050B8(*(a1 + 56));
  if (v12 == -1)
  {
    goto LABEL_35;
  }

  v13 = v12;
  if (dword_100090058)
  {
    v14 = ne_log_obj();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      v20 = *v2;
      v21 = sub_10003ABDC("from %s to %s", *(a1 + 56), *(a1 + 48));
      v22 = 134218242;
      v23 = v20;
      v24 = 2080;
      v25 = v21;
      _os_log_debug_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "%zu bytes %s\n", &v22, 0x16u);
    }
  }

  v15 = *v2;
  if (!*(a1 + 100) || v15 < 0x501)
  {
    if (sub_100039E78(v13, v2[1], v15, *(a1 + 56), *(a1 + 48), *(qword_1000900B8 + 276)) != -1)
    {
      goto LABEL_30;
    }

    if (dword_100090058)
    {
      v19 = ne_log_obj();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        sub_10005D284();
        if (!v7)
        {
          return 0xFFFFFFFFLL;
        }

        goto LABEL_36;
      }
    }

LABEL_35:
    if (!v7)
    {
      return 0xFFFFFFFFLL;
    }

LABEL_36:
    sub_10003D4F0(v7);
    return 0xFFFFFFFFLL;
  }

  if (sub_100012930(a1, v2) == -1)
  {
    if (dword_100090058)
    {
      v16 = ne_log_obj();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        sub_10005D2B8();
        if (!v7)
        {
          return 0xFFFFFFFFLL;
        }

        goto LABEL_36;
      }
    }

    goto LABEL_35;
  }

LABEL_30:
  if (v7)
  {
    sub_10003D4F0(v7);
  }

  return 0;
}