void sub_100020C38(uint64_t a1)
{
  if (*(a1 + 136))
  {
    sub_100020EAC(a1);
  }

  v2 = *(a1 + 124);
  if (v2 + 1 == *(a1 + 112))
  {
    *(a1 + 112) = v2;
LABEL_17:
    sub_100010CA0(*(a1 + 32));
    sub_100010CA0(*(a1 + 88));
    *(a1 + 88) = 0;
    *(a1 + 32) = 0;
    *(a1 + 48) = 0;
    return;
  }

  v3 = *(a1 + 88);
  if (*(v3 + 80))
  {
    v4 = **(*(v3 + 72) + 8);
  }

  else
  {
    v4 = sub_1000073C8(v3);
  }

  v6 = v4[2];
  v5 = v4[3];
  if (v6 < *(a1 + 16))
  {
    *(a1 + 16) = v6;
  }

  if (v5 > *(a1 + 24))
  {
    *(a1 + 24) = v5;
  }

  v7 = sub_100006328(*(a1 + 88));
  v8 = *(a1 + 104);
  v9 = *(a1 + 124);
  if (!__CFADD__(v8, 16 * v9))
  {
    v10 = v7[1];
    if ((v10 & 7) != 0)
    {
      v11 = (v10 & 0xFFFFFFFFFFFFFFF8) + 24;
    }

    else
    {
      v11 = v10 + 16;
    }

    v12 = (v8 + 16 * v9);
    *v12 = v7;
    v12[1] = v11;
    *(a1 + 120) += v11;
    goto LABEL_17;
  }

  __break(0x5513u);
}

uint64_t sub_100020D2C(uint64_t a1)
{
  if (faccessat(*(a1 + 80), *(a1 + 40), 0, 0) != -1)
  {
    v2 = *(a1 + 84);
    v3 = *(a1 + 48);
    v4 = *(v3 + 8);
    v5 = *(v3 + 16);
    *&v18[12] = 0xAAAAAAAAAAAAAAAALL;
    value = 1;
    v19 = v5;
    *v18 = *v4;
    if (fsetxattr(v2, "com.apple.logd.metadata", &value, 0x28uLL, 0, 0) == -1)
    {
      v15 = *__error();
      _os_assumes_log();
    }

    fsync(*(a1 + 84));
    if (renameat(*(a1 + 80), "tmp", *(a1 + 80), *(a1 + 40)) != -1)
    {
      v12 = *(a1 + 40);
      *(*(*(a1 + 32) + 8) + 24) = *(a1 + 56) - *(*(a1 + 48) + 120);
      result = sub_10000CCDC(*(a1 + 64), "    - [ %s/%s, %zd, %d ]\n", v6, v7, v8, v9, v10, v11, *(*(a1 + 72) + 8));
      v14 = *(*(*(a1 + 32) + 8) + 24);
      if (!__OFSUB__(atomic_fetch_add_explicit((*(a1 + 72) + 64), -v14, memory_order_relaxed), v14))
      {
        return result;
      }

      __break(0x5515u);
    }
  }

  result = unlinkat(*(a1 + 80), "tmp", 0);
  if (result == -1)
  {
    v16 = *__error();
    return _os_assumes_log();
  }

  return result;
}

uint64_t sub_100020EAC(uint64_t a1)
{
  v1 = __chkstk_darwin(a1);
  v2 = __b;
  memset(__b, 170, sizeof(__b));
  v3 = 256;
  v4 = compression_encode_buffer(__b, 0x10000uLL, *(v1 + 128), *(v1 + 136), 0, COMPRESSION_LZ4);
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v3 = 0;
    v2 = *(v1 + 128);
    v5 = *(v1 + 136);
  }

  v6 = v5 + 16;
  result = _os_trace_malloc_typed();
  v8 = result;
  if ((v5 & 7) != 0)
  {
    if ((v6 & 0x8000000000000000) != 0 || ((v5 + 16) & 0xFFFFFFFFFFFFFFF8) > ~result)
    {
      __break(0x5513u);
      return result;
    }

    *(result + (v6 & 0xFFFFFFFFFFFFFFF8)) = 0;
  }

  *result = 0x110000600DLL;
  *(result + 8) = v5;
  memcpy((result + 16), v2, v5);
  sub_100021034(v1, v8);
  v9 = *(v1 + 88);
  v10 = *(v1 + 136);
  if (*(v9 + 80))
  {
    v11 = **(*(v9 + 72) + 8);
  }

  else
  {
    v11 = sub_1000073C8(v9);
    v9 = *(v1 + 88);
  }

  *(v11 + 8) = v10;
  *(v11 + 9) = v3;
  result = sub_1000073C8(v9);
  *(v1 + 136) = 0;
  return result;
}

uint64_t sub_100021034(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(result + 112);
  if (v4 == *(result + 116))
  {
    v5 = 2 * v4;
    if (v5 <= 0x10)
    {
      v5 = 16;
    }

    *(result + 116) = v5;
    v6 = *(result + 104);
    result = _os_trace_realloc_typed();
    *(v3 + 104) = result;
  }

  if (a2)
  {
    v7 = *(a2 + 8);
    v8 = (v7 & 0xFFFFFFFFFFFFFFF8) + 24;
    v9 = v7 + 16;
    if ((*(a2 + 8) & 7) != 0)
    {
      v9 = v8;
    }
  }

  else
  {
    v9 = 0;
  }

  v10 = *(v3 + 104);
  v11 = *(v3 + 112);
  *(v3 + 112) = v11 + 1;
  if (__CFADD__(v10, 16 * v11))
  {
    __break(0x5513u);
  }

  else
  {
    v12 = (v10 + 16 * v11);
    *v12 = a2;
    v12[1] = v9;
    *(v3 + 120) += v9;
  }

  return result;
}

uint64_t sub_1000210EC(uint64_t a1)
{
  result = __chkstk_darwin(a1);
  v3 = v2;
  v4 = *(result + 32);
  v5 = *v2;
  if ((*v2 - 24578) >= 2)
  {
    if (v5 != 24577)
    {
      if (v5 != 24580)
      {
        return 1;
      }

      goto LABEL_4;
    }

    v15 = *(v2 + 1);
    v16 = v15 - 16;
    if (v15 < 0x10)
    {
LABEL_192:
      *(v4 + 56) = 0;
      return 1;
    }

    v17 = v2 + 8;
    if (v15 - 4113 >= 0xFFFFFFFFFFFFF00FLL)
    {
      v104 = *(v2 + 16);
      if (v16 < v104)
      {
        goto LABEL_192;
      }

      v105 = *(v2 + 17);
      if (v105 <= 0xFFF)
      {
        if (*(v2 + 29))
        {
          if (v16 <= v104 + (4096 - v105))
          {
            if (v104 > 0x1000)
            {
              goto LABEL_199;
            }

            if (__CFADD__(v17, v104))
            {
              goto LABEL_198;
            }

            v106 = (4096 - v105);
            v107 = v17 + v104;
            goto LABEL_197;
          }
        }

        else if (v16 == 4096)
        {
          if (__CFADD__(v17, v105))
          {
            goto LABEL_198;
          }

          v107 = v17 + v105;
          v106 = (4096 - v105);
LABEL_197:
          *(v4 + 64) = v107;
          *(v4 + 72) = v106;
          goto LABEL_22;
        }
      }
    }

    *(v4 + 64) = 0;
    *(v4 + 72) = 0;
LABEL_22:
    *(v4 + 56) = v17;
    goto LABEL_23;
  }

LABEL_4:
  v6 = *(v2 + 28);
  if (!*(v2 + 28))
  {
    return 1;
  }

  v7 = *v4;
  v8 = 1;
  v9 = 2;
  v10 = 3;
  if (v6 >= 0xF)
  {
    v10 = 4;
  }

  if (v6 >= 8)
  {
    v9 = v10;
  }

  if (v6 >= 4)
  {
    v8 = v9;
  }

  if (v6 == 1)
  {
    v11 = 0;
  }

  else
  {
    v11 = v8;
  }

  if (__CFADD__(v7, 8 * v11))
  {
    goto LABEL_198;
  }

  v12 = *(v2 + 4);
  v13 = *(v7 + 8 * v11);
  v14 = sub_1000061E8(*v13, *(v4 + 8));
  if (!v14 || v14 == 1 && *(v13 + 8) > v12)
  {
    return 1;
  }

LABEL_23:
  v18 = sub_1000025E4(*(*(v4 + 32) + 40), *(v3 + 2), v3[6]);
  *(v4 + 40) = v18;
  if (!v18)
  {
    goto LABEL_192;
  }

  v19 = *(v3 + 1);
  if ((v19 & 7) != 0)
  {
    v20 = (v19 & 0xFFFFFFF8) + 24;
  }

  else
  {
    v20 = v19 + 16;
  }

  if (*(v4 + 136) + v20 > *(v4 + 140))
  {
    sub_100020EAC(v4);
  }

  if (*v3 != 24577)
  {
    v80 = *(v4 + 128);
    v81 = *(v4 + 136);
    if (__CFADD__(v80, v81))
    {
      goto LABEL_198;
    }

    memcpy((v80 + v81), v3, v20);
    *(v4 + 136) += v20;
    sub_1000071F0(*(v4 + 88), *(v3 + 4));
    v82 = sub_100005DC4(*(v4 + 88), *(v4 + 40));
    *(v4 + 80) = v82;
    sub_10000724C(*(v4 + 88), v82);
    *(v4 + 80) = 0;
    *(v4 + 40) = 0;
    return 1;
  }

  memset(&__src[2], 170, 0xFF0uLL);
  v21 = *(v4 + 56);
  __src[1] = v21[1];
  v22 = *v21;
  LODWORD(v22) = 268435472;
  __src[0] = v22;
  *(v4 + 96) = __src;
  v23 = v21 + 2;
  v24 = *v21;
  v25 = (v21 + 2);
  if (v24 <= 0x1000)
  {
    if (__CFADD__(v21, v24))
    {
      goto LABEL_198;
    }

    v25 = v21 + v24;
  }

  v108 = v3;
  v109 = v3 + 4;
  while (1)
  {
    v26 = (v23 + 3);
    if ((v23 + 3) >= v25)
    {
      break;
    }

    v27 = v23;
    v28 = v23[2];
    v29 = HIWORD(v28);
    v30 = HIWORD(v28) && v29 <= (v25 - v26);
    if (!v30)
    {
      break;
    }

    v31 = v29 + 24;
    if ((v28 & 0x7000000000000) != 0)
    {
      v31 = (HIWORD(v28) & 0xFFF8) + 32;
    }

    if (__CFADD__(v23, v31))
    {
      goto LABEL_198;
    }

    v23 = (v23 + v31);
    v32 = *v27;
    if (*v27 && *v27 <= 8u && ((1 << v32) & 0x150) != 0)
    {
      v33 = WORD1(*v27);
      if ((v32 & 0x10000) == 0)
      {
        v34 = 0;
        if ((v32 & 0x100000) == 0)
        {
          goto LABEL_48;
        }

        goto LABEL_52;
      }

      if (v28 >> 51)
      {
        v34 = 8;
        if ((v32 & 0x100000) == 0)
        {
LABEL_48:
          if ((v32 & 0x1000000) == 0)
          {
            goto LABEL_49;
          }

          goto LABEL_55;
        }

LABEL_52:
        if (v34 + 8 <= v29)
        {
          if (__CFADD__(v26, v34))
          {
            goto LABEL_198;
          }

          v34 += 8;
          if ((v32 & 0x1000000) == 0)
          {
LABEL_49:
            v116 = 0;
            __n = 0;
            v35 = v34;
            v34 = 0;
            goto LABEL_61;
          }

LABEL_55:
          v35 = v34 + 4;
          if (v34 + 4 <= v29)
          {
            if (__CFADD__(v26, v34))
            {
              goto LABEL_198;
            }

            v36 = *(v26 + v34);
            __n = *(v26 + v34 + 2);
            if (((v36 + __n) & 0x10000) != 0)
            {
              memset(v128, 170, sizeof(v128));
              snprintf(v128, 0x400uLL, "TTL Compaction: tracepoint hit overflow adding %hu to %hu");
              goto LABEL_136;
            }

            if ((v36 + __n) > 0x1000u)
            {
              memset(v128, 170, sizeof(v128));
              snprintf(v128, 0x400uLL, "TTL Compaction: range requested %hu greater than max chunk size");
              goto LABEL_136;
            }

            v37 = *(v4 + 72);
            if (v37 > 0x1000)
            {
              memset(v128, 170, sizeof(v128));
              snprintf(v128, 0x400uLL, "TTL Compaction: privacy offset overflow: %lu");
              goto LABEL_136;
            }

            v116 = *(v26 + v34);
            if (4096 - v37 <= v36)
            {
LABEL_61:
              v38 = *(v4 + 40);
              if (*(v38 + 2))
              {
                v39 = 4;
              }

              else
              {
                v39 = 6;
              }

              v40 = v33 & 0xE;
              if (v40 <= 7)
              {
                if (v40 == 2 || v40 == 4 || v40 == 6)
                {
                  v39 = 4;
                  goto LABEL_75;
                }

LABEL_73:
                v39 = 0;
                goto LABEL_75;
              }

              if (v40 == 8)
              {
                goto LABEL_75;
              }

              if (v40 != 10)
              {
                if (v40 == 12)
                {
                  v39 = 6;
                  goto LABEL_75;
                }

                goto LABEL_73;
              }

              v39 = 20;
LABEL_75:
              v41 = v35 + v39;
              if (v41 <= v29)
              {
                v42 = ~v26;
                if (~v26 < v35)
                {
                  goto LABEL_198;
                }

                if (v39)
                {
                  v43 = (v26 + v35);
                  if (v39 == 6)
                  {
                    v111 = 0;
                    v112 = *v43;
                    v110 = *(v43 + 2) << 32;
                    if ((v33 & 0x20) != 0)
                    {
                      goto LABEL_86;
                    }

LABEL_88:
                    if ((*v27 & 0x2000000) != 0)
                    {
                      v44 = v23;
                      v45 = v25;
                      v46 = v41 + 2;
                      if (v41 + 2 > v29)
                      {
                        v114 = 0;
                        v113 = -21846;
                        v41 = HIWORD(v28);
                      }

                      else
                      {
                        if (v41 > v42)
                        {
                          goto LABEL_198;
                        }

                        v113 = *(v26 + v41);
                        LOWORD(v128[0]) = v113;
                        v114 = sub_100003AA8(*(v38 + 64), v128);
                        v28 = *(v27 + 2);
                        v33 = *(v27 + 1);
                        v29 = HIWORD(v28);
                        v41 = v46;
                      }

                      v25 = v45;
                      v23 = v44;
                      if ((v33 & 0x400) != 0)
                      {
                        goto LABEL_95;
                      }
                    }

                    else
                    {
                      v114 = 0;
                      v113 = -21846;
                      if ((*v27 & 0x4000000) != 0)
                      {
LABEL_95:
                        if (v41 < v29)
                        {
                          if (v41 > v42)
                          {
                            goto LABEL_198;
                          }

                          v47 = *(v26 + v41);
                          if (*(v26 + v41))
                          {
                            if (v47 == 1)
                            {
                              v48 = 0;
                            }

                            else if (v47 >= 4)
                            {
                              if (v47 >= 8)
                              {
                                v49 = v47 >= 0xF;
                                v48 = 3;
                                if (v49)
                                {
                                  v48 = 4;
                                }
                              }

                              else
                              {
                                v48 = 2;
                              }
                            }

                            else
                            {
                              v48 = 1;
                            }

                            if (__CFADD__(*v4, 8 * v48))
                            {
                              goto LABEL_198;
                            }

                            v50 = *(*(v4 + 56) + 8);
                            v51 = *(*v4 + 8 * v48);
                            v52 = sub_1000061E8(*v51, *(v4 + 8));
                            if (v52)
                            {
                              v53 = v50 + (v28 & 0xFFFFFFFFFFFFLL);
                              if (v52 != 1 || *(v51 + 8) <= v53)
                              {
                                if (!*(v4 + 80))
                                {
                                  v54 = sub_100005DC4(*(v4 + 88), *(v4 + 40));
                                  *(v4 + 80) = v54;
                                  sub_10000724C(*(v4 + 88), v54);
                                  v33 = *(v27 + 1);
                                }

                                v55 = v114;
                                if ((v33 & 0xE) == 0xA)
                                {
                                  v60 = *(*(v4 + 88) + 16);
                                  if (v60)
                                  {
                                    v61 = v60[3];
                                  }

                                  sub_100008204(v60, v111);
                                  goto LABEL_119;
                                }

                                if ((v33 & 0xE) == 8)
                                {
                                  v56 = *(v4 + 40);
                                  v119 = 0;
                                  v120 = &v119;
                                  v121 = 0x2000000000;
                                  v122 = 0;
                                  v118[0] = 0;
                                  v118[1] = v118;
                                  v118[2] = 0x2000000000;
                                  v118[3] = -1;
                                  v57 = *(v56 + 56);
                                  v128[0] = _NSConcreteStackBlock;
                                  v128[1] = 0x40000000;
                                  v128[2] = sub_1000241C0;
                                  v128[3] = &unk_100032A88;
                                  v128[6] = v110 | v112;
                                  v128[4] = v118;
                                  v128[5] = &v119;
                                  sub_100006978(v57, v128);
                                  v58 = v120[3];
                                  _Block_object_dispose(v118, 8);
                                  _Block_object_dispose(&v119, 8);
                                  if (v58)
                                  {
                                    *&v127[10] = 0xAAAAAAAAAAAAAAAALL;
                                    v59 = *v58;
                                    v124 = v58[1];
                                    v125 = v59;
                                    v126 = WORD2(v59);
                                    *v127 = *(v58 + 1);
                                    sub_100006AEC(*(v4 + 88), *(v4 + 80), &v124);
                                    v55 = v114;
                                    goto LABEL_119;
                                  }
                                }

                                else
                                {
LABEL_119:
                                  if (v55)
                                  {
                                    v63 = *(v4 + 80);
                                    v62 = *(v4 + 88);
                                    LOWORD(v128[0]) = v113;
                                    if (!sub_100003AA8(*(v63 + 64), v128))
                                    {
                                      sub_1000074B4(v62, v63, v128[0], *(v55 + 8), *(v55 + 16));
                                    }

                                    v64 = *(v4 + 88);
                                    LOWORD(v128[0]) = sub_100007C84(*(v64 + 24), *(v55 + 8));
                                    if (*(v64 + 80))
                                    {
                                      v65 = **(*(v64 + 72) + 8);
                                    }

                                    else
                                    {
                                      v65 = sub_1000073C8(v64);
                                    }

                                    sub_1000036A0(v65[5], v128, 0);
                                    LOWORD(v128[0]) = sub_100007C84(*(v64 + 24), *(v55 + 16));
                                    if (*(v64 + 80))
                                    {
                                      v66 = **(*(v64 + 72) + 8);
                                    }

                                    else
                                    {
                                      v66 = sub_1000073C8(v64);
                                    }

                                    sub_1000036A0(v66[5], v128, 0);
                                  }

                                  result = sub_1000071F0(*(v4 + 88), v53);
                                  v67 = *(v4 + 96);
                                  v68 = *v67;
                                  if (v68 > 0x1000)
                                  {
                                    goto LABEL_199;
                                  }

                                  if (~v67 < v68)
                                  {
                                    goto LABEL_198;
                                  }

                                  v69 = *(v27 + 2);
                                  if ((v69 & 0x7000000000000) != 0)
                                  {
                                    v70 = (HIWORD(v69) & 0xFFF8) + 32;
                                  }

                                  else
                                  {
                                    v70 = HIWORD(v69) + 24;
                                  }

                                  if (v68 + v70 > 0x1000)
                                  {
                                    memset(v128, 170, sizeof(v128));
                                    snprintf(v128, 0x400uLL, "TTL Compaction: Public data would overwrite chunk: %hu + %hu");
                                    goto LABEL_136;
                                  }

                                  v71 = (v67 + v68);
                                  result = memcpy(v71, v27, v70);
                                  *v67 += v70;
                                  if (v27[3])
                                  {
                                    v115 = v71;
                                    v72 = *(v4 + 72);
                                    v73 = 4096 - v72;
                                    if (v72 > 0x1000)
                                    {
                                      memset(v128, 170, sizeof(v128));
                                      snprintf(v128, 0x400uLL, "TTL Compaction: Private IOV Length was bad: %lu");
                                      goto LABEL_136;
                                    }

                                    v74 = *(v67 + 2);
                                    v75 = v74 - __n;
                                    if (((v74 - __n) & 0xFFFF0000) != 0)
                                    {
                                      memset(v128, 170, sizeof(v128));
                                      snprintf(v128, 0x400uLL, "TTL Compaction: Range length %hu overflew private offset: %hu");
                                      goto LABEL_136;
                                    }

                                    *(v67 + 2) = v75;
                                    v76 = *(v4 + 72);
                                    if (v76 && v76 < __n)
                                    {
                                      memset(v128, 170, sizeof(v128));
                                      snprintf(v128, 0x400uLL, "TTL Compaction: Private IOV Length %lu is less than range length %hu");
                                      goto LABEL_136;
                                    }

                                    v77 = *(v4 + 64);
                                    if (~v77 < v116)
                                    {
                                      goto LABEL_198;
                                    }

                                    if (v76 > ~v77)
                                    {
                                      goto LABEL_198;
                                    }

                                    v78 = v77 + v116;
                                    if (v73 > v78)
                                    {
                                      goto LABEL_198;
                                    }

                                    if (v78 - v73 > v77 + v76)
                                    {
                                      memset(v128, 170, sizeof(v128));
                                      snprintf(v128, 0x400uLL, "TTL Compaction: Private data range would have read OOB: %p + %hu - %lu > %p + %lu");
LABEL_136:
                                      sub_1000155B8(v128);
                                    }

                                    else
                                    {
                                      if (v75 > 0x1000u)
                                      {
                                        goto LABEL_199;
                                      }

                                      if (~v67 < v75)
                                      {
                                        goto LABEL_198;
                                      }

                                      memcpy((v67 + v75), (v78 - v73), __n);
                                      if (__CFADD__(v115 + 24, v34))
                                      {
                                        goto LABEL_198;
                                      }

                                      v79 = &v115[v34 + 24];
                                      *v79 = v75;
                                      v79[1] = __n;
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

                  else
                  {
                    v112 = *v43;
                    if (v39 == 4)
                    {
                      v110 = 0;
                      v111 = 0;
                      if ((v33 & 0x20) == 0)
                      {
                        goto LABEL_88;
                      }
                    }

                    else
                    {
                      if (v43 >= 0xFFFFFFFFFFFFFFFCLL)
                      {
                        goto LABEL_198;
                      }

                      v110 = 0;
                      v111 = v43 + 1;
                      if ((v33 & 0x20) == 0)
                      {
                        goto LABEL_88;
                      }
                    }

LABEL_86:
                    if (v41 + 2 <= v29)
                    {
                      v30 = v41 > v42;
                      v41 += 2;
                      if (v30)
                      {
                        goto LABEL_198;
                      }

                      goto LABEL_88;
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

  if (!*(v4 + 80))
  {
LABEL_191:
    *(v4 + 80) = 0;
    *(v4 + 40) = 0;
    *(v4 + 96) = 0;
    goto LABEL_192;
  }

  v83 = LOWORD(__src[0]);
  v84 = WORD1(__src[0]);
  LODWORD(v85) = LOWORD(__src[0]) - WORD1(__src[0]) + 4096;
  v86 = v85 < 0xFF9;
  if (v85 >= 0xFF9)
  {
    v85 = 4096;
  }

  else
  {
    v85 = v85;
  }

  if (WORD1(__src[0]) == 4096)
  {
    v87 = LOWORD(__src[0]);
  }

  else
  {
    v87 = v85;
  }

  if (WORD1(__src[0]) == 4096)
  {
    v88 = LOWORD(__src[0]);
  }

  else
  {
    v88 = v85;
  }

  v89 = WORD1(__src[0]) != 4096 && v86;
  v90 = *(v4 + 128);
  v91 = *(v4 + 136);
  if (__CFADD__(v90, v91))
  {
    goto LABEL_198;
  }

  v92 = (v90 + v91);
  *v92 = 24577;
  v92[1] = v87 + 16;
  v93 = (*(v4 + 136) + 16);
  *(v4 + 136) = v93;
  v94 = *(v4 + 128);
  if (__CFADD__(v94, v93))
  {
    goto LABEL_198;
  }

  v95 = *(v108 + 15);
  v96 = v94 + v93;
  v97 = *v109;
  v98 = v109[2];
  *(v96 + 12) = *(v109 + 12);
  *(v96 + 8) = v98;
  *v96 = v97;
  *(v96 + 13) = v89;
  *(v96 + 14) = v95;
  v99 = (*(v4 + 136) + 16);
  *(v4 + 136) = v99;
  v100 = *(v4 + 128);
  if (!v89)
  {
    if (~v100 < v99)
    {
      goto LABEL_198;
    }

    memcpy((v100 + v99), __src, v87);
    v103 = *(v4 + 136) + v88;
LABEL_190:
    *(v4 + 136) = v103;
    goto LABEL_191;
  }

  if (~v100 < v99)
  {
    goto LABEL_198;
  }

  result = memcpy((v100 + v99), __src, v83);
  v101 = (*(v4 + 136) + v83);
  *(v4 + 136) = v101;
  v102 = *(v4 + 128);
  if (__CFADD__(v102, v101))
  {
    goto LABEL_198;
  }

  if (v84 <= 0x1000)
  {
    if (!__CFADD__(__src, v84))
    {
      memcpy((v102 + v101), __src + v84, 4096 - v84);
      v103 = *(v4 + 136) + 4096 - v84;
      goto LABEL_190;
    }

LABEL_198:
    __break(0x5513u);
  }

LABEL_199:
  __break(0x5512u);
  return result;
}

uint64_t sub_100021DA0(uint64_t a1)
{
  result = unlinkat(*(a1 + 80), *(a1 + 40), 0);
  if (result != -1)
  {
    v9 = *(a1 + 56);
    **(a1 + 48) = 1;
    v10 = *(a1 + 40);
    *(*(*(a1 + 32) + 8) + 24) = v9;
    result = sub_10000CCDC(*(a1 + 64), "    - [ %s/%s, %zd, 0 ]\n", v3, v4, v5, v6, v7, v8, *(*(a1 + 72) + 8));
    v11 = *(a1 + 72);
    v12 = *(v11 + 72);
    v13 = __OFSUB__(v12, 1);
    v14 = v12 - 1;
    if (v13 || (*(v11 + 72) = v14, v15 = *(*(*(a1 + 32) + 8) + 24), __OFSUB__(atomic_fetch_add_explicit((v11 + 64), -v15, memory_order_relaxed), v15)))
    {
      __break(0x5515u);
    }
  }

  return result;
}

uint64_t sub_100021E4C(uint64_t a1)
{
  *&v27[24] = 0;
  v2 = *(a1 + 56);
  v3 = sub_10000F1F0(*(a1 + 40));
  memset(&v27[32], 170, 0x400uLL);
  *&v27[16] = 0xAA00000000100000;
  *v27 = &v27[32];
  *&v27[8] = 0x40000000000;
  sub_10000F4C8(v27, *(a1 + 40), "Periodic Compaction", 0, v4, v5, v6, v7, v25);
  if (v3 < 1)
  {
    *(*(a1 + 40) + 72) = v3;
  }

  else
  {
    v8 = 0;
    v9 = 0;
    while (1)
    {
      if (__CFADD__(*&v27[24], v8))
      {
        __break(0x5513u);
      }

      v10 = (*(*&v27[24] + 8 * v9) + 21);
      v26 = 0xAAAAAAAAAAAAAAAALL;
      result = sub_100020458(*(a1 + 56), v10, *(a1 + 48), &v26);
      if (!result)
      {
        break;
      }

      if (unlinkat(*(a1 + 56), v10, 0) == -1)
      {
        v23 = *__error();
        _os_assumes_log();
      }

      v22 = *(a1 + 40);
      *(*(*(a1 + 32) + 8) + 24) += v26;
      sub_10000CCDC(v27, "    - %s/%s\n", v16, v17, v18, v19, v20, v21, *(v22 + 8));
      result = sub_10000F374(v10);
      *(*(a1 + 40) + 40) = result;
      ++v9;
      v8 += 8;
      if (v3 == v9)
      {
        v9 = v3;
        break;
      }
    }

    if (__OFSUB__(v3, v9))
    {
      __break(0x5515u);
      return result;
    }

    v24 = *(a1 + 40);
    *(v24 + 72) = v3 - v9;
    if (v9)
    {
      sub_10000F69C(v27, v24, v9, *(*(*(a1 + 32) + 8) + 24), v12, v13, v14, v15);
    }
  }

  if (v27[20])
  {
    free(*v27);
  }

  return _os_trace_scandir_free_namelist();
}

uint64_t sub_100022048(int a1, char *a2, void *a3)
{
  v4.tv_sec = 0xAAAAAAAAAAAAAAAALL;
  v4.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
  *&v6.st_blksize = v4;
  *v6.st_qspare = v4;
  v6.st_birthtimespec = v4;
  *&v6.st_size = v4;
  v6.st_mtimespec = v4;
  v6.st_ctimespec = v4;
  *&v6.st_uid = v4;
  v6.st_atimespec = v4;
  *&v6.st_dev = v4;
  result = lstat(a2, &v6);
  if (result)
  {
    return 0;
  }

  if (!__OFADD__(*a3, v6.st_size))
  {
    *a3 += v6.st_size;
    return 0;
  }

  __break(0x5500u);
  return result;
}

uint64_t sub_1000220E0(uint64_t a1, int *a2)
{
  v3 = *a2;
  if (*(a1 + 40) == a2)
  {
    if (v3 != 4096 || *(a2 + 1) < 0x28uLL)
    {
      v6 = 0;
      return v6 & 1;
    }

    v7 = sub_1000061E8(**(a1 + 48), a2 + 18);
    if (v7 != 1)
    {
      v6 = 0;
      *(*(*(a1 + 32) + 8) + 24) = v7 == 0;
      return v6 & 1;
    }

LABEL_13:
    v6 = 1;
    return v6 & 1;
  }

  if (v3 != 24587)
  {
    goto LABEL_13;
  }

  v4 = sub_1000242EC(a2);
  if (!v4)
  {
    goto LABEL_13;
  }

  v5 = (v4 + 64);
  while (1)
  {
    v5 = *v5;
    if (!v5)
    {
      break;
    }

    if (v5[3] >= *(*(a1 + 48) + 8))
    {
      *(*(*(a1 + 32) + 8) + 24) = 0;
      break;
    }
  }

  sub_100010CA0(v4);
  v6 = *(*(*(a1 + 32) + 8) + 24);
  return v6 & 1;
}

void sub_1000221C0(void *a1, void *a2, const unsigned __int8 *a3)
{
  memset(uu, 170, sizeof(uu));
  *&out[29] = 0xAAAAAAAAAAAAAAAALL;
  *&v5 = 0xAAAAAAAAAAAAAAAALL;
  *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *out = v5;
  *&out[16] = v5;
  v6 = a2;
  v7 = a1;
  v8 = [v7 objectForKeyedSubscript:v6];
  if (([v8 isNSDictionary] & 1) == 0)
  {
    goto LABEL_10;
  }

  v9 = [v8 objectForKeyedSubscript:@"ContinuousTime"];
  if (([v9 isNSNumber] & 1) == 0)
  {

LABEL_10:
    goto LABEL_11;
  }

  v10 = [v9 unsignedLongLongValue];
  *&v30[13] = 0xAAAAAAAAAAAAAAAALL;
  *&v11 = 0xAAAAAAAAAAAAAAAALL;
  *(&v11 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *in = v11;
  *v30 = v11;
  v12 = [v8 objectForKeyedSubscript:@"UUID"];

  if (![v12 isNSString] || (objc_msgSend(v12, "getCString:maxLength:encoding:", in, 37, 1) & 1) == 0)
  {

    goto LABEL_10;
  }

  v13 = uuid_parse(in, uu);

  if (!v13)
  {
    v14 = *a3;
    v15 = *a3 ? v14[3] : 0;
    v19 = sub_1000061E8(*a3, uu);
    if (v19)
    {
      v20 = v19 - 1;
      if (v19 == 1)
      {
        v23 = *(a3 + 1);
        if (v23 <= v10)
        {
          v23 = v10;
        }

        *(a3 + 1) = v23;
      }

      else
      {
        *(a3 + 1) = v10;
        v21 = v15 > v20;
        v22 = v15 - v20;
        if (v21)
        {
          memmove((a3 + 24), &a3[16 * v20 + 24], 16 * v22);
          sub_100010D2C(v14);
          operator new();
        }

        if (v14)
        {
          v24 = 16 * v14[3];
        }

        else
        {
          v24 = 0;
        }

        *(a3 + 1) = 0;
        *(a3 + 2) = 0;
        bzero((a3 + 24), v24);
        sub_10000A6A8(v14);
      }
    }
  }

LABEL_11:
  uuid_unparse_upper(a3 + 24, out);
  v16 = [NSString stringWithUTF8String:out, @"UUID"];
  v25[1] = @"ContinuousTime";
  v26[0] = v16;
  v17 = [NSNumber numberWithUnsignedLongLong:*(a3 + 1)];
  v26[1] = v17;
  v18 = [NSDictionary dictionaryWithObjects:v26 forKeys:v25 count:2];
  [v7 setObject:v18 forKeyedSubscript:v6];
}

void sub_100022498(id a1)
{
  memset(&v1[56], 170, 0x3C8uLL);
  strcpy(v1, "Received a Cancel Request from CacheDelete. Ignoring...");
  sub_1000155B8(v1);
}

__CFDictionary *__cdecl sub_100022524(id a1, int a2, __CFDictionary *a3)
{
  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v29 = 0;
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v5 = objc_autoreleasePoolPush();
  v6 = [(__CFDictionary *)a3 objectForKeyedSubscript:@"CACHE_DELETE_AMOUNT"];
  v7 = [v6 longLongValue];

  objc_autoreleasePoolPop(v5);
  v25 = v7;
  memset(__b, 170, 0x400uLL);
  v8 = [(__CFDictionary *)a3 objectForKeyedSubscript:@"CACHE_DELETE_VOLUME"];
  v9 = [v8 UTF8String];
  snprintf(__b, 0x400uLL, "Received a Purge Request from CacheDelete on volume %s with urgency: %d and goal: %lld", v9, a2, v23[3]);

  sub_1000155B8(__b);
  if (qword_100044CE8 != -1)
  {
    dispatch_once(&qword_100044CE8, &stru_100032CD8);
  }

  if (sub_10001E0A8(qword_100044CD0, a3))
  {
    if (a2 == 2)
    {
      v10 = 2;
    }

    else
    {
      v10 = 3;
    }

    if (a2 <= 1)
    {
      v10 = 1;
    }

    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v17 = sub_1000228A4;
    v18 = &unk_100032838;
    v21 = v10;
    v19 = &v22;
    v20 = &v26;
    sub_1000228A4(v16, &off_100035F20);
    v17(v16, &off_100035E80);
    v17(v16, &off_100035D40);
    v17(v16, &off_100035DE0);
  }

  v11 = v23;
  if (v23[3] >= 1)
  {
    if (qword_100044CE8 != -1)
    {
      dispatch_once(&qword_100044CE8, &stru_100032CD8);
    }

    if (sub_10001E0A8(qword_100044CE0, a3))
    {
      memset(&__b[19], 170, 0x3EDuLL);
      strcpy(__b, "Purging UUID Cache");
      sub_1000155B8(__b);
      sub_10001AA7C();
    }

    v11 = v23;
  }

  memset(__b, 170, 0x400uLL);
  v12 = v11[3];
  snprintf(__b, 0x400uLL, "Purge complete. Goal: %lld bytes. Removed: %lld bytes", v12, v27[3]);
  sub_1000155B8(__b);
  v30 = @"CACHE_DELETE_AMOUNT";
  v13 = [NSNumber numberWithLongLong:v27[3]];
  v31 = v13;
  v14 = [NSDictionary dictionaryWithObjects:&v31 forKeys:&v30 count:1];

  _Block_object_dispose(&v22, 8);
  _Block_object_dispose(&v26, 8);
  return v14;
}

void sub_1000228A4(uint64_t a1, uint64_t a2)
{
  v2 = *(*(a1 + 32) + 8);
  v3 = *(v2 + 24);
  if (v3 < 1)
  {
    return;
  }

  v5 = a1;
  v6 = *(a1 + 48);
  if (*(a2 + 72) <= *(a2 + 100))
  {
    if (v6 >= 4)
    {
LABEL_22:
      __break(0x5512u);
      goto LABEL_23;
    }

    if (__CFADD__(a2 + 104, 8 * v6))
    {
LABEL_21:
      __break(0x5513u);
      goto LABEL_22;
    }

    if (*(a2 + 64) <= *(a2 + 104 + 8 * v6))
    {
      v11 = 0;
      goto LABEL_14;
    }
  }

  else if (v6 > 3)
  {
    goto LABEL_22;
  }

  if (__CFADD__(a2 + 104, 8 * v6))
  {
    goto LABEL_21;
  }

  v7 = *(a2 + 104 + 8 * v6);
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  v8 = openat(dword_100035D38, *(a2 + 8), 1048832);
  if (v8 == -1)
  {
    v16 = *__error();
  }

  else
  {
    v9 = v8;
    if (v8 < 0)
    {
      goto LABEL_12;
    }

    v10 = *(a2 + 24);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10001AA40;
    block[3] = &unk_100032420;
    block[4] = &v18;
    block[5] = a2;
    block[6] = v3;
    block[7] = v7;
    block[8] = __PAIR64__(v9, v6);
    dispatch_sync(v10, block);
    if (close(v9) != -1)
    {
      goto LABEL_12;
    }

    v17 = *__error();
    a1 = *__error();
    if (v17 == 9)
    {
LABEL_25:
      qword_1000360E8 = "BUG IN CLIENT OF LIBTRACE: don't close random fds";
      qword_100036118 = a1;
      __break(1u);
      return;
    }
  }

  _os_assumes_log();
LABEL_12:
  v11 = v19[3];
  _Block_object_dispose(&v18, 8);
  v2 = *(*(v5 + 32) + 8);
  v3 = *(v2 + 24);
LABEL_14:
  if (__OFSUB__(v3, v11))
  {
LABEL_23:
    __break(0x5515u);
    goto LABEL_24;
  }

  *(v2 + 24) = v3 - v11;
  v12 = *(*(v5 + 40) + 8);
  v13 = *(v12 + 24);
  v14 = __OFADD__(v13, v11);
  v15 = v13 + v11;
  if (v14)
  {
LABEL_24:
    __break(0x5500u);
    goto LABEL_25;
  }

  *(v12 + 24) = v15;
  memset(block, 170, sizeof(block));
  snprintf(block, 0x400uLL, "Purging book: %s, Removed: %lld bytes", *(a2 + 8), v11);
  sub_1000155B8(block);
}

__CFDictionary *__cdecl sub_100022B14(id a1, int a2, __CFDictionary *a3)
{
  memset(__b, 170, sizeof(__b));
  v5 = [(__CFDictionary *)a3 objectForKeyedSubscript:@"CACHE_DELETE_VOLUME"];
  snprintf(__b, 0x400uLL, "Received a Purgeable Request from CacheDelete on volume: %s", [v5 UTF8String]);

  sub_1000155B8(__b);
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 0;
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  if (qword_100044CE8 != -1)
  {
    dispatch_once(&qword_100044CE8, &stru_100032CD8);
  }

  if (sub_10001E0A8(qword_100044CD0, a3))
  {
    if (a2 == 2)
    {
      v6 = 2;
    }

    else
    {
      v6 = 3;
    }

    if (a2 <= 1)
    {
      v6 = 1;
    }

    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v13 = sub_100022DB4;
    v14 = &unk_100032838;
    v17 = v6;
    v15 = &v22;
    v16 = &v18;
    sub_100022DB4(v12, &off_100035F20);
    v13(v12, &off_100035E80);
    v13(v12, &off_100035D40);
    v13(v12, &off_100035DE0);
  }

  memset(__b, 170, sizeof(__b));
  v7 = v23[3];
  snprintf(__b, 0x400uLL, "Reporting %lld/%lld bytes as purgeable", v7, v19[3]);
  sub_1000155B8(__b);
  v26[0] = @"CACHE_DELETE_AMOUNT";
  v8 = [NSNumber numberWithLongLong:v23[3]];
  v26[1] = @"CACHE_DELETE_NONPURGEABLE_AMOUNT";
  v27[0] = v8;
  v9 = [NSNumber numberWithLongLong:v19[3]];
  v27[1] = v9;
  v10 = [NSDictionary dictionaryWithObjects:v27 forKeys:v26 count:2];

  _Block_object_dispose(&v18, 8);
  _Block_object_dispose(&v22, 8);
  return v10;
}

uint64_t sub_100022DB4(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 64);
  v3 = *(result + 48);
  if (v3 >= 4)
  {
    __break(0x5512u);
    goto LABEL_12;
  }

  if (__CFADD__(a2 + 104, 8 * v3))
  {
LABEL_12:
    __break(0x5513u);
LABEL_13:
    __break(0x5515u);
    return result;
  }

  v4 = *(a2 + 104 + 8 * v3);
  v5 = v2 - v4;
  if (v2 <= v4)
  {
    goto LABEL_9;
  }

  if (__OFSUB__(v2, v4))
  {
    goto LABEL_13;
  }

  v2 = *(*(result + 32) + 8);
  v6 = *(v2 + 24);
  v7 = __OFADD__(v6, v5);
  v8 = v6 + v5;
  if (v7 || (*(v2 + 24) = v8, v9 = *(*(result + 40) + 8), v11 = *(v9 + 24), v10 = (v9 + 24), v2 = v11 + v4, __OFADD__(v11, v4)))
  {
    do
    {
      __break(0x5500u);
LABEL_9:
      v12 = *(*(result + 40) + 8);
      v13 = *(v12 + 24);
      v10 = (v12 + 24);
      v7 = __OFADD__(v13, v2);
      v2 += v13;
    }

    while (v7);
  }

  *v10 = v2;
  return result;
}

void sub_100022E38(id a1, int a2)
{
  __swp(a1, &dword_100036098);
  if (a1 != -1)
  {
    notify_cancel(a1);
    if (qword_100044CE8 != -1)
    {
      dispatch_once(&qword_100044CE8, &stru_100032CD8);
    }

    v13[0] = qword_100044CD0;
    v13[1] = 0;
    v2 = fts_open(v13, 2132, 0);
    if (v2)
    {
      v3 = v2;
      v4 = fts_read(v2);
      if (v4)
      {
        v5 = v4;
        while (1)
        {
          if (v5->fts_info != 8)
          {
            goto LABEL_16;
          }

          v12[0] = 0x4000000000000005;
          v12[1] = 0;
          v12[2] = 0;
          v6 = strrchr(v5->fts_name, 46);
          if (!v6)
          {
            goto LABEL_16;
          }

          v7 = v6;
          if (!strcmp(v6, ".log") || !strcmp(v7, ".txt"))
          {
            break;
          }

          if (!strcmp(v7, ".tracev3"))
          {
            v8 = 3;
            goto LABEL_14;
          }

LABEL_16:
          v5 = fts_read(v3);
          if (!v5)
          {
            goto LABEL_17;
          }
        }

        v8 = 4;
LABEL_14:
        v11 = v8;
        if (setattrlist(v5->fts_path, v12, &v11, 4uLL, 0) == -1)
        {
          v9 = *__error();
          _os_assumes_log();
        }

        goto LABEL_16;
      }

LABEL_17:
      fts_close(v3);
    }

    else
    {
      _os_assumes_log();
    }

    v10 = sub_10001EFD8();
    sub_10001F204(v10, 1);
  }
}

uint64_t sub_100023008()
{
  if (qword_100044CE8 != -1)
  {
    dispatch_once(&qword_100044CE8, &stru_100032CD8);
  }

  v0 = openat(-2, qword_100044CD8, 0);
  if (v0 == -1)
  {
    v16 = *__error();
    qword_1000360E8 = "BUG IN LIBTRACE: Unable to open timesync directory";
    qword_100036118 = v16;
    __break(1u);
LABEL_27:
    __break(0x5513u);
  }

  if (&qword_100035DB8 < &qword_100035DA8)
  {
    goto LABEL_27;
  }

  v1 = v0;
  v2 = qword_100035DB8;
  if (qword_100035D80 <= qword_100035DB8)
  {
    goto LABEL_9;
  }

  v3 = openat(dword_100035D38, off_100035D48, 1048832);
  if (v3 == -1)
  {
    v13 = *__error();
LABEL_25:
    _os_assumes_log();
LABEL_9:
    memset(uu, 170, sizeof(uu));
    boot_uuid = _os_trace_get_boot_uuid();
    uuid_parse(boot_uuid, uu);
    v6 = _os_trace_zalloc_typed();
    memset(v23, 170, 18);
    *__str = 0xAAAAAAAAAAAAAAAALL;
    snprintf(__str, 0x1AuLL, "%016llx.timesync", 1);
    v7 = openat(v1, __str, 1537, 420);
    if (v7 < 0)
    {
      free(v6);
      v6 = 0;
    }

    else
    {
      *v6 = v7;
      uuid_copy(v6 + 4, uu);
      *(v6 + 3) = _os_trace_calloc_typed();
      *(v6 + 2) = xmmword_100029DB0;
    }

    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v18 = sub_100023750;
    v19 = &unk_1000327F0;
    v20 = v6;
    v8 = v17;
    if (qword_100044CE8 != -1)
    {
      dispatch_once(&qword_100044CE8, &stru_100032CD8);
    }

    *__str = qword_100044CD0;
    v23[0] = 0;
    v9 = fts_open(__str, 2132, 0);
    if (v9)
    {
      v10 = v9;
      v11 = fts_read(v9);
      if (v11)
      {
        v12 = v11;
        do
        {
          if (v12->fts_info == 8)
          {
            (v18)(v8);
          }

          v12 = fts_read(v10);
        }

        while (v12);
      }

      fts_close(v10);
    }

    else
    {
      _os_assumes_log();
    }

    qsort_b(*(v6 + 3), *(v6 + 4), 0x40uLL, &stru_100032D38);
    operator new();
  }

  v4 = v3;
  if (v3 < 0)
  {
    goto LABEL_9;
  }

  sub_10000EEE0(&off_100035D40, 2u, 0x7FFFFFFFFFFFFFFFLL, v2, v3);
  if (close(v4) != -1)
  {
    goto LABEL_9;
  }

  v14 = *__error();
  result = *__error();
  if (v14 != 9)
  {
    goto LABEL_25;
  }

  qword_1000360E8 = "BUG IN CLIENT OF LIBTRACE: don't close random fds";
  qword_100036118 = result;
  __break(1u);
  return result;
}

uint64_t sub_100023750(uint64_t a1, uint64_t a2)
{
  result = strrchr((a2 + 104), 46);
  if (result)
  {
    result = strcmp(result, ".tracev3");
    if (!result)
    {
      v5 = *(a2 + 48);
      result = _os_trace_mmap_at();
      if (result)
      {
        v6 = result;
        v7 = 0;
        v8 = *(a1 + 32);
        v10[0] = _NSConcreteStackBlock;
        v10[1] = 0x40000000;
        v11 = sub_10002603C;
        v12 = &unk_100032CF8;
        v13 = v8;
        do
        {
          if (0xAAAAAAAAAAAAAAAALL - v7 < 0x10)
          {
            break;
          }

          v9 = *&v6[v7 + 8];
          if (0xAAAAAAAAAAAAAA9ALL - v7 < v9)
          {
            break;
          }

          if (!(v11)(v10))
          {
            break;
          }

          v7 = (v7 + v9 + 23) & 0xFFFFFFFFFFFFFFF8;
        }

        while (v7 - 1 < 0xAAAAAAAAAAAAAAAALL);
        return munmap(v6, 0xAAAAAAAAAAAAAAAALL);
      }
    }
  }

  return result;
}

void sub_1000238A0(void *a1)
{
  v1 = a1;
  v3 = +[NSUUID UUID];
  v2 = [v3 UUIDString];
  [v1 setObject:v2 forKeyedSubscript:@"Identifier"];
}

uint64_t sub_100023920()
{
  unlinkat(dword_100035D38, "uuid.purged.0.txt", 0);
  v0 = dword_100035D38;

  return unlinkat(v0, "uuid.purged.1.txt", 0);
}

uint64_t sub_100023974()
{
  if (qword_100044CE8 != -1)
  {
    dispatch_once(&qword_100044CE8, &stru_100032CD8);
  }

  v8[0] = qword_100044CD0;
  v8[1] = 0;
  v0 = fts_open(v8, 2132, 0);
  if (!v0)
  {
    return _os_assumes_log();
  }

  v1 = v0;
  v2 = fts_read(v0);
  if (v2)
  {
    v3 = v2;
    do
    {
      if (v3->fts_info == 8)
      {
        v4 = strrchr(v3->fts_name, 46);
        if (v4)
        {
          v5 = v4;
          if ((!strcmp(v4, ".txt") || !strcmp(v5, ".log") || !strcmp(v5, ".tracev3")) && chmod(v3->fts_path, 0x1A4u) == -1)
          {
            v6 = *__error();
            _os_assumes_log();
          }
        }
      }

      v3 = fts_read(v1);
    }

    while (v3);
  }

  return fts_close(v1);
}

void sub_100023AD8(void *a1)
{
  v1 = a1;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v11 = sub_100023CD4;
  v12 = &unk_100032680;
  v13 = &v14;
  v2 = v10;
  if (qword_100044CE8 != -1)
  {
    dispatch_once(&qword_100044CE8, &stru_100032CD8);
  }

  v18[0] = qword_100044CD0;
  v18[1] = 0;
  v3 = fts_open(v18, 2132, 0);
  if (v3)
  {
    v4 = v3;
    v5 = fts_read(v3);
    if (v5)
    {
      v6 = v5;
      do
      {
        if (v6->fts_info == 8)
        {
          (v11)(v2);
        }

        v6 = fts_read(v4);
      }

      while (v6);
    }

    fts_close(v4);
  }

  else
  {
    _os_assumes_log();
  }

  if (*(v15 + 24) == 1)
  {
    v7 = v1;
    v8 = [v7 objectForKeyedSubscript:@"Pending"];
    if (v8)
    {
      v9 = v8;
      if (([v8 containsObject:@"timesync-build"] & 1) == 0)
      {
        [v9 addObject:@"timesync-build"];
      }
    }

    else
    {
      v9 = [[NSMutableArray alloc] initWithObjects:{@"timesync-build", 0}];
      [v7 setObject:v9 forKeyedSubscript:@"Pending"];
    }
  }

  _Block_object_dispose(&v14, 8);
}

uint64_t sub_100023CD4(uint64_t a1, uint64_t a2)
{
  result = strrchr((a2 + 104), 46);
  if (result)
  {
    result = strcmp(result, ".timesync");
    if (!result)
    {
      result = unlink(*(a2 + 48));
      if (result == -1)
      {
        v5 = *__error();
        result = _os_assumes_log();
      }

      *(*(*(a1 + 32) + 8) + 24) = 1;
    }
  }

  return result;
}

uint64_t sub_100023D54(unsigned __int8 *a1)
{
  v1 = *a1;
  if ((v1 - 1) < 3)
  {
    return *&a1[qword_100029EC8[(v1 - 1)]];
  }

  printf("TB_FATAL: invalid tag in array metadata: 0x%x (%s:%d)\n", v1, "/Library/Caches/com.apple.xbs/Binaries/libtrace_executables/install/TempContent/Objects/libtrace.build/logd.build/DerivedSources/OSLogDarwin_C.c", 1250);
  result = _os_crash();
  __break(1u);
  return result;
}

unsigned __int8 *sub_100023DBC(unsigned __int8 *result, uint64_t a2)
{
  v3 = result;
  v4 = *result;
  if (v4 != 1)
  {
    if (v4 != 2)
    {
      if (v4 == 3)
      {
        if (*(result + 2))
        {
          v5 = 0;
          v6 = 0;
          do
          {
            if (v6 >> 59 || (v7 = v3[1], v5 > ~v7))
            {
              __break(0x5513u);
            }

            result = (*(a2 + 16))(a2, v6++, v7 + v5);
            v5 += 16;
          }

          while (v6 < v3[2]);
        }

        return result;
      }

      printf("TB_FATAL: invalid tag in array metadata: 0x%x (%s:%d)\n", v4, "/Library/Caches/com.apple.xbs/Binaries/libtrace_executables/install/TempContent/Objects/libtrace.build/logd.build/DerivedSources/OSLogDarwin_C.c", 1290);
      _os_crash();
      __break(1u);
LABEL_19:
      printf("TB_ASSERT: (err == TB_ERROR_SUCCESS) && failed to wrap packed buffer, \b\b (%s:%d)\n", "OSLogDarwin_C.c", 1268);
      result = _os_crash();
      __break(1u);
      return result;
    }

    v8 = *(result + 1);
    v9 = v3[2];
    v10 = v3[3];
    result = tb_message_subrange();
    if (!result)
    {
      return result;
    }

    printf("TB_ASSERT: (vErr == TB_ERROR_SUCCESS) && tb_message_subrange failed, \b\b (%s:%d)\n", "OSLogDarwin_C.c", 1287);
    _os_crash();
    __break(1u);
  }

  v27 = 0;
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v22 = 0u;
  v21 = 0;
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v11 = v3[1];
  v12 = v3[2];
  tb_transport_message_buffer_wrap_buffer();
  if (tb_message_construct())
  {
    goto LABEL_19;
  }

  result = tb_message_configure_received();
  if (v3[3])
  {
    v13 = 0;
    do
    {
      v14[0] = 0xAAAAAAAAAAAAAAAALL;
      v14[1] = 0xAAAAAAAAAAAAAAAALL;
      tb_message_precheck_decoding();
      tb_message_raw_decode_u32();
      tb_message_raw_decode_u32();
      tb_message_raw_decode_u64();
      result = (*(a2 + 16))(a2, v13++, v14);
    }

    while (v13 < v3[3]);
  }

  return result;
}

uint64_t sub_100024048(uint64_t a1)
{
  if (*(*(a1 + 40) + 32))
  {
    v2 = 0;
    do
    {
      tb_message_precheck_decoding();
      tb_message_raw_decode_u32();
      tb_message_raw_decode_u32();
      tb_message_raw_decode_u64();
      (*(*(a1 + 32) + 16))();
      ++v2;
    }

    while (v2 < *(*(a1 + 40) + 32));
  }

  return 0;
}

uint64_t sub_100024144(uint64_t a1, uint64_t a2, unsigned int *a3)
{
  v5 = *(a1 + 40);
  v6 = *a3;
  tb_message_raw_encode_u32();
  v7 = a3[1];
  tb_message_raw_encode_u32();
  v8 = *(a3 + 1);
  result = tb_message_raw_encode_u64();
  *(*(*(a1 + 32) + 8) + 24) = 0;
  return result;
}

void *sub_1000241C0(void *result, uint64_t a2, void *a3)
{
  v3 = result[6];
  if (v3 >= *a3)
  {
    v4 = a3[1];
    if (v3 < v4 + *a3)
    {
      v5 = *(result[4] + 8);
      if (v4 < *(v5 + 24))
      {
        *(v5 + 24) = v4;
        *(*(result[5] + 8) + 24) = a3;
      }
    }
  }

  return result;
}

BOOL sub_100024208(unint64_t *a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5)
{
  if (a4)
  {
    v10 = 0;
    for (i = 0; i != a4; v10 = i >= a4)
    {
      v12 = *a1;
      if (a2)
      {
        if (a2 < v12 || a2 - v12 < a3)
        {
          break;
        }
      }

      *a1 = v12 + a3;
      if (!v12)
      {
        break;
      }

      if (((*(a5 + 16))(a5, i, v12, a1) & 1) == 0)
      {
        break;
      }

      ++i;
    }
  }

  else
  {
    return 1;
  }

  return v10;
}

BOOL sub_1000242B8(unint64_t *a1, unint64_t a2, unint64_t a3, uint64_t a4)
{
  v4 = *a1;
  if ((!a2 || (a2 >= v4 ? (v5 = a2 - v4 >= 8) : (v5 = 0), v5)) && (*a1 = (v4 + 1), v4))
  {
    return sub_100024208(a1, a2, a3, *v4, a4);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000242EC(_DWORD *a1)
{
  if (*a1 == 24587)
  {
    v1 = _os_trace_calloc_typed();
    v1[8] = 0;
    v1[9] = v1 + 8;
    v1[1] = -1;
    operator new();
  }

  return 0;
}

uint64_t sub_100024968(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
{
  sub_100008204(*(*(a1 + 32) + 16), a3);
  if (*(a1 + 40) == 1)
  {
    sub_100025A94(a2, a3);
  }

  return 1;
}

uint64_t sub_1000249C8(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
{
  sub_100008204(*(*(a1 + 32) + 16), a3);
  if (*(a1 + 40) == 1)
  {
    sub_100025A94(a2, a3);
  }

  return 1;
}

uint64_t sub_100024A28(uint64_t a1, unsigned __int16 a2, uint64_t a3, uint64_t **a4)
{
  if (sub_1000025E4(*(*(a1 + 32) + 40), *(a3 + 8), *(a3 + 16)))
  {
    return 1;
  }

  v9 = *(a1 + 40);
  v10 = *(v9 + 4) == 17;
  v11 = 32;
  if (*(v9 + 4) == 17)
  {
    v11 = 40;
  }

  v12 = v9 + v11;
  v13 = v9 + *(v9 + 16);
  v14 = v13 + 40;
  v15 = v13 + 32;
  if (v10)
  {
    v16 = v14;
  }

  else
  {
    v16 = v15;
  }

  v17 = _os_trace_calloc_typed();
  v18 = v17;
  *v17 = *a3;
  v19 = *(a3 + 16);
  *(v17 + 4) = *(a3 + 20);
  *(v17 + 8) = *(a3 + 8);
  v20 = *(a3 + 24);
  *(v17 + 16) = v19;
  *(v17 + 20) = v20;
  v21 = *(a3 + 4);
  v22 = v16 - v12;
  if (v22 >= 16 * v21 && v22 - 16 * v21 > 0xF)
  {
    *(v17 + 24) = *(v12 + 16 * v21);
  }

  else
  {
    _os_assumes_log();
  }

  v24 = *(a3 + 6);
  if (v24 != 0xFFFF)
  {
    if (v22 >= 16 * v24 && v22 - 16 * v24 > 0xF)
    {
      *(v18 + 5) = *(v12 + 16 * v24);
    }

    else
    {
      _os_assumes_log();
    }
  }

  v18[7] = sub_100003B48(2);
  v18[8] = sub_100003B48(1);
  if (*(a1 + 56) != 1)
  {
    goto LABEL_29;
  }

  printf("[%03u]\n\t%10s : %llu@%u\n\t%10s : %d\n\t%10s : %u\n\t%10s : %u\n\t%10s : %x\n", a2, "proc id", v18[1], *(v18 + 4), "pid", *(v18 + 1), "euid", *(v18 + 5), "index", *v18, "flags", *(v18 + 1));
  if ((*(a1 + 56) & 1) == 0)
  {
    goto LABEL_29;
  }

  *&out[29] = 0xAAAAAAAAAAAAAAAALL;
  *&v26 = 0xAAAAAAAAAAAAAAAALL;
  *(&v26 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *out = v26;
  *&out[16] = v26;
  uuid_unparse(v18 + 24, out);
  if (*(a1 + 56) == 1)
  {
    printf("\t%10s : %s\n", "main uuid", out);
  }

  out[0] = 0;
  if (!uuid_is_null(v18 + 40))
  {
    uuid_unparse(v18 + 40, out);
  }

  if (*(a1 + 56) == 1)
  {
    printf("\t%10s : %s\n", "dsc uuid", out);
    v27 = *(a1 + 56);
  }

  else
  {
LABEL_29:
    v27 = 0;
  }

  if (sub_1000254C4(a4, *(a1 + 48), *(a1 + 32), v18, v27 & 1, *(a1 + 40)) && sub_1000256F8(a4, *(a1 + 48), *(a1 + 32), v18, *(a1 + 56), *(a1 + 40)))
  {
    if (sub_100002A10((*(a1 + 32) + 40), v18[1], *(v18 + 4)))
    {
      return 1;
    }

    _os_assert_log();
    _os_crash();
    __break(1u);
  }

  sub_10000A718(v18);
  return 0;
}

uint64_t sub_100024D24(uint64_t a1, unint64_t a2, unsigned __int16 *a3, uint64_t **a4)
{
  v8 = *(*(a1 + 32) + 40);
  if (v8)
  {
    v9 = (v8 + 16);
    while (1)
    {
      v9 = *v9;
      if (!v9)
      {
        break;
      }

      if (v9[2] == *(a3 + 1))
      {
        if (v9[4])
        {
          return 1;
        }

        break;
      }
    }
  }

  v10 = *(a1 + 40);
  v11 = *(v10 + 4) == 17;
  v12 = 32;
  if (*(v10 + 4) == 17)
  {
    v12 = 40;
  }

  v13 = v10 + v12;
  v14 = v10 + *(v10 + 16);
  v15 = v14 + 40;
  v16 = v14 + 32;
  if (v11)
  {
    v17 = v15;
  }

  else
  {
    v17 = v16;
  }

  v18 = _os_trace_calloc_typed();
  v19 = v18;
  v20 = *a3;
  v21 = v17 - v13;
  if (v21 >= 16 * v20 && v21 - 16 * v20 > 0xF)
  {
    *(v18 + 24) = *(v13 + 16 * v20);
  }

  else
  {
    _os_assumes_log();
  }

  v23 = a3[1];
  if (v21 >= 16 * v23 && v21 - 16 * v23 > 0xF)
  {
    *(v19 + 40) = *(v13 + 16 * v23);
  }

  else
  {
    _os_assumes_log();
  }

  *(v19 + 4) = *(a3 + 1);
  *(v19 + 8) = *(a3 + 1);
  if (a2 >= 0x10000)
  {
    _os_assumes_log();
  }

  *v19 = a2;
  *(v19 + 2) = 0x8000;
  *(v19 + 56) = sub_100003B48(2);
  *(v19 + 64) = sub_100003B48(1);
  if (*(a1 + 56) != 1)
  {
    goto LABEL_31;
  }

  printf("[%03u]\n\t%10s : %llu\n\t%10s : %u\n", a2, "proc id", *(v19 + 8), "pid", *(v19 + 4));
  if ((*(a1 + 56) & 1) == 0)
  {
    goto LABEL_31;
  }

  *&out[29] = 0xAAAAAAAAAAAAAAAALL;
  *&v25 = 0xAAAAAAAAAAAAAAAALL;
  *(&v25 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *out = v25;
  *&out[16] = v25;
  uuid_unparse((v19 + 24), out);
  if (*(a1 + 56) == 1)
  {
    printf("\t%10s : %s\n", "main uuid", out);
  }

  uuid_unparse((v19 + 40), out);
  if (*(a1 + 56) == 1)
  {
    printf("\t%10s : %s\n", "dsc uuid", out);
    v26 = *(a1 + 56);
  }

  else
  {
LABEL_31:
    v26 = 0;
  }

  if (sub_1000254C4(a4, *(a1 + 48), *(a1 + 32), v19, v26 & 1, *(a1 + 40)) & 1) != 0 && (sub_1000256F8(a4, *(a1 + 48), *(a1 + 32), v19, *(a1 + 56), *(a1 + 40)))
  {
    if ((sub_100002A10((*(a1 + 32) + 40), *(v19 + 8), *(v19 + 16)) & 1) == 0)
    {
      _os_assumes_log();
    }

    return 1;
  }

  else
  {
    sub_10000A718(v19);
    return 0;
  }
}

BOOL sub_100024FF8(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = a3 + *(a3 + 8) + 16;
  if (*(a3 + 4) == 17)
  {
    v5 = *(a3 + 24);
    v7 = _NSConcreteStackBlock;
    v8 = 0x40000000;
    v9 = sub_100025144;
    v10 = &unk_100032B68;
    v13 = 0;
    v11 = a2;
    v12 = v4;
    if (!sub_100024208(a1, v4, 0x18uLL, v5, &v7))
    {
      return 0;
    }
  }

  else
  {
    v7 = _NSConcreteStackBlock;
    v8 = 0x40000000;
    v9 = sub_1000253E0;
    v10 = &unk_100032B88;
    v13 = 0;
    v11 = a2;
    v12 = v4;
    result = sub_1000242B8(a1, v4, 0x20uLL, &v7);
    if (!result)
    {
      return result;
    }
  }

  return *a1 <= v4;
}

uint64_t sub_100025144(uint64_t a1, unsigned __int16 a2, uint64_t *a3, unint64_t *a4)
{
  v8 = sub_1000073C8(*(a1 + 32));
  v9 = *a3;
  v10 = a3[1];
  v8[2] = *a3;
  v8[3] = v10;
  v11 = *(a3 + 4);
  v12 = *(a3 + 5);
  *(v8 + 8) = v11;
  *(v8 + 9) = v12;
  v13 = (a3 + 3);
  *a4 = (a3 + 3);
  if (*(a1 + 48) == 1)
  {
    printf("[%03u]\n\t%10s : %llu\n\t%10s : %llu\n\t%10s : %u\n\t%10s : %u\n", a2, "startts", v9, "endts", v10, "uncomp sz", v11, "comp algo", v12);
    v14 = *(a1 + 48);
    v13 = *a4;
  }

  else
  {
    v14 = 0;
  }

  v15 = *(a1 + 40);
  if (v15)
  {
    result = 0;
    if (v15 < v13 || v15 - v13 < 4)
    {
      return result;
    }
  }

  *a4 = (v13 + 2);
  if (!v13)
  {
    return 0;
  }

  if (v14)
  {
    printf("\t\t%10s : %u\n\t\t%10s : ", "procinfos", *v13, "indexes");
  }

  if (*v13)
  {
    v17 = 0;
    do
    {
      v18 = *a4;
      if (v15)
      {
        if (v15 < v18 || v15 - v18 < 2)
        {
          return 0;
        }
      }

      *a4 = (v18 + 1);
      if (!v18)
      {
        return 0;
      }

      if (v8)
      {
        sub_1000036A0(v8[6], v18, 0);
      }

      if (v14)
      {
        printf("%u,", *v18);
      }
    }

    while (++v17 < *v13);
  }

  if (v14)
  {
    putchar(10);
  }

  v20 = *(a1 + 40);
  v21 = *(a1 + 48);
  v22 = *a4;
  if (v20)
  {
    result = 0;
    if (v20 < v22 || v20 - v22 < 4)
    {
      return result;
    }
  }

  *a4 = (v22 + 2);
  if (!v22)
  {
    return 0;
  }

  if (v21)
  {
    printf("\t\t%10s : %u\n\t\t%10s : ", "subcats", *v22, "offsets");
  }

  if (*v22)
  {
    v23 = 0;
    do
    {
      v24 = *a4;
      if (v20)
      {
        if (v20 < v24 || v20 - v24 < 2)
        {
          return 0;
        }
      }

      *a4 = (v24 + 1);
      if (!v24)
      {
        return 0;
      }

      if (v8)
      {
        sub_1000036A0(v8[5], v24, 0);
      }

      if (v21)
      {
        printf("%u,", *v24);
      }
    }

    while (++v23 < *v22);
  }

  if (v21)
  {
    putchar(10);
  }

  v26 = *a4;
  if ((*a4 & 7) != 0)
  {
    v26 = (*a4 & 0xFFFFFFFFFFFFFFF8) + 8;
  }

  *a4 = v26;
  return 1;
}

uint64_t sub_1000253E0(uint64_t a1, unsigned __int16 a2, uint64_t *a3, unint64_t *a4)
{
  v8 = sub_1000073C8(*(a1 + 32));
  v9 = *a3;
  v10 = a3[1];
  v8[2] = *a3;
  v8[3] = v10;
  if (*(a1 + 48) == 1)
  {
    printf("[%03u]\n\t%10s : %llu\n\t%10s : %llu\n\t%10s : %u\n\t%10s : %u\n", a2, "startts", v9, "endts", v10, "log cnt", *(a3 + 4), "others cnt", *(a3 + 5));
  }

  v11 = a3 + 26;
  *a4 = a3 + 26;
  v12 = *(a1 + 40);
  v13 = *(a3 + 12);
  if (v12)
  {
    v15 = v12 >= v11;
    v14 = v12 - v11;
    v15 = v15 && v14 >= v13;
    if (!v15)
    {
      return 0;
    }
  }

  v17 = v11 + v13;
  if ((v17 & 7) != 0)
  {
    v17 = (v17 & 0xFFFFFFFFFFFFFFF8) + 8;
  }

  *a4 = v17;
  return 1;
}

uint64_t sub_1000254C4(uint64_t **a1, unint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6)
{
  v12 = *a1;
  if (a2)
  {
    if (a2 < v12 || a2 - v12 < 8)
    {
      return 0;
    }
  }

  *a1 = v12 + 1;
  if (!v12)
  {
    return 0;
  }

  if (*(a6 + 4) == 17)
  {
    v14 = 40;
  }

  else
  {
    v14 = 32;
  }

  v15 = a6 + *(a6 + 16);
  v16 = v15 + 40;
  v17 = v15 + 32;
  if (*(a6 + 4) == 17)
  {
    v18 = v16;
  }

  else
  {
    v18 = v17;
  }

  if (a5)
  {
    printf("\t%10s : %llu\n", "uuidinfos", *v12);
  }

  if (*v12)
  {
    v19 = 0;
    v20 = a6 + v14;
    v30 = v18 - v20;
    while (1)
    {
      v21 = *a1;
      if (a2)
      {
        if (a2 < v21 || a2 - v21 < 0x10)
        {
          break;
        }
      }

      *a1 = v21 + 2;
      if (!v21)
      {
        break;
      }

      v31 = v21[1] >> 16;
      if (!sub_100003AA8(*(a4 + 56), &v31))
      {
        v23 = _os_trace_calloc_typed();
        v24 = v23;
        v25 = *v21;
        *v23 = v21[1] >> 16;
        *(v23 + 8) = v25;
        v26 = 16 * v21[1];
        if (v30 >= v26 && v30 - v26 > 0xF)
        {
          *(v23 + 16) = *(v20 + 16 * v21[1]);
        }

        else
        {
          _os_assumes_log();
        }

        sub_1000036A0(*(a4 + 56), v24, v24);
        ++*(a3 + 48);
        if (a5)
        {
          *&out[29] = 0xAAAAAAAAAAAAAAAALL;
          *&v28 = 0xAAAAAAAAAAAAAAAALL;
          *(&v28 + 1) = 0xAAAAAAAAAAAAAAAALL;
          *out = v28;
          *&out[16] = v28;
          uuid_unparse(v24 + 16, out);
          printf("\t\t<%10s : 0x%llx, %10s : %10llu, %10s : %s>\n", "load addr", *v24, "size", *(v24 + 1), "uuid", out);
        }
      }

      if (++v19 >= *v12)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_1000256F8(unint64_t *a1, unint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6)
{
  v12 = *a1;
  if (*(a6 + 4) != 17)
  {
    if (!a2 || (a2 >= v12 ? (v21 = a2 - v12 >= 8) : (v21 = 0), v21))
    {
      *a1 = (v12 + 4);
      if (v12)
      {
        v22 = *(a6 + 16);
        v23 = *(a6 + 18);
        if (a5)
        {
          printf("\t%10s : %llu\n", "subsystems", *v12);
        }

        if (*v12)
        {
          v24 = 0;
          v25 = a6 + 24 + v22 + 8;
          v26 = v23 - (v22 + 8);
          v36 = v26;
          v38 = v25;
          while (1)
          {
            v27 = *a1;
            if (a2)
            {
              if (a2 < v27 || a2 - v27 < 4)
              {
                return 0;
              }
            }

            *a1 = (v27 + 2);
            if (!v27)
            {
              return 0;
            }

            if (a5)
            {
              printf("\t\t<%10s : %3u, %10s : %5hu>\n", "id", *v27, "offset", v27[1]);
            }

            v29 = v27[1];
            if (v26 < v29)
            {
LABEL_59:
              _os_assumes_log();
              return 0;
            }

            if (!sub_100003AA8(*(a4 + 64), v27))
            {
              v30 = (v38 + v29);
              v31 = _os_trace_calloc_typed();
              *v31 = *v27;
              v31[1] = sub_100007608(*(a3 + 24), v30 + 2);
              v32 = sub_100007608(*(a3 + 24), &v30[*v30 + 2]);
              v31[2] = v32;
              if (!v32 || !v31[1])
              {
                _os_assumes_log();
              }

              sub_1000036A0(*(a4 + 64), v31, v31);
              ++*(a3 + 56);
              v26 = v36;
            }

            if (++v24 >= *v12)
            {
              goto LABEL_56;
            }
          }
        }

        goto LABEL_56;
      }
    }

    return 0;
  }

  if (a2)
  {
    if (a2 < v12 || a2 - v12 < 8)
    {
      return 0;
    }
  }

  *a1 = (v12 + 4);
  if (!v12)
  {
    return 0;
  }

  v14 = *(a6 + 16);
  v15 = *(a6 + 18);
  if (a5)
  {
    printf("\t%10s : %llu\n", "subsystems", *v12);
  }

  if (*v12)
  {
    v16 = 0;
    v37 = a6 + v14 + 40;
    v17 = v15 - v14;
    v35 = a4;
    do
    {
      v18 = *a1;
      if (a2)
      {
        if (a2 < v18 || a2 - v18 < 6)
        {
          return 0;
        }
      }

      *a1 = (v18 + 3);
      if (!v18)
      {
        return 0;
      }

      if (a5)
      {
        printf("\t\t<%10s : %3u, %10s : %5hu, %10s : %5hu>\n", "id", *v18, "subsystem", v18[1], "category", v18[2]);
      }

      if (v17 < v18[1] || v17 < v18[2])
      {
        goto LABEL_59;
      }

      if (!sub_100003AA8(*(a4 + 64), v18))
      {
        v20 = _os_trace_calloc_typed();
        *v20 = *v18;
        v20[1] = sub_100007608(*(a3 + 24), (v37 + v18[1]));
        a4 = v35;
        v20[2] = sub_100007608(*(a3 + 24), (v37 + v18[2]));
        sub_1000036A0(*(v35 + 64), v20, v20);
        ++*(a3 + 56);
      }
    }

    while (++v16 < *v12);
  }

LABEL_56:
  v33 = *a1;
  if ((*a1 & 7) != 0)
  {
    v33 = (*a1 & 0xFFFFFFFFFFFFFFF8) + 8;
  }

  *a1 = v33;
  return 1;
}

uint64_t sub_100025A94(uint64_t a1, unsigned __int8 *uu)
{
  *&out[29] = 0xAAAAAAAAAAAAAAAALL;
  *&v3 = 0xAAAAAAAAAAAAAAAALL;
  *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *out = v3;
  *&out[16] = v3;
  uuid_unparse(uu, out);
  return printf("[%03llu] %s\n", a1, out);
}

void sub_100025B1C(id a1)
{
  qword_100044CD0 = "/private/var/db/diagnostics";
  qword_100044CD8 = "/private/var/db/diagnostics/timesync";
  qword_100044CE0 = "/private/var/db/uuidtext";
}

uint64_t sub_100025B50(int a1)
{
  if (a1 > 1)
  {
    if (a1 == 2)
    {
      if (qword_100044CE8 != -1)
      {
        dispatch_once(&qword_100044CE8, &stru_100032CD8);
      }

      return qword_100044CE0;
    }

    else
    {

      return _os_trace_prefsdir_path();
    }
  }

  else if (a1)
  {
    if (qword_100044CE8 != -1)
    {
      dispatch_once(&qword_100044CE8, &stru_100032CD8);
    }

    return qword_100044CD8;
  }

  else
  {
    if (qword_100044CE8 != -1)
    {
      dispatch_once(&qword_100044CE8, &stru_100032CD8);
    }

    return qword_100044CD0;
  }
}

uint64_t sub_100025C24(int a1, void *a2, void *a3, int a4)
{
  v43 = 0;
  v44 = &v43;
  v45 = 0x2000000000;
  v46 = 0;
  v39 = 0;
  v40 = &v39;
  v41 = 0x2000000000;
  v42 = -1;
  v35 = 0;
  v36 = &v35;
  v37 = 0x2000000000;
  v38 = 0;
  v29[0] = _NSConcreteStackBlock;
  v29[1] = 0x40000000;
  v30 = sub_100025F88;
  v31 = &unk_100032DA0;
  v32 = &v43;
  v33 = &v39;
  v34 = &v35;
  if (a4)
  {
    v6 = v26;
    v7 = v27;
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 0x40000000;
    v27[0] = sub_100026000;
    v27[1] = &unk_100032DC0;
    v28 = a1;
  }

  else
  {
    v6 = 0;
    v7 = 16;
  }

  v8 = dup(a1);
  if (v8 == -1)
  {
LABEL_28:
    v19 = *__error();
    _os_assumes_log();
    goto LABEL_31;
  }

  v9 = v8;
  if (lseek(v8, 0, 0) == -1)
  {
    v23 = *__error();
    _os_assumes_log();
  }

  v10 = fdopendir(v9);
  if (v10)
  {
    v11 = v10;
    v25 = a2;
    while (1)
    {
LABEL_9:
      v12 = readdir(v11);
      if (!v12)
      {
        break;
      }

      v13 = v12;
      d_type = v12->d_type;
      if ((d_type | 8) == 8)
      {
        v15 = 0;
        while (1)
        {
          v16 = v12->d_name[v15];
          if (v16 < 0 || (_DefaultRuneLocale.__runetype[v16] & 0x10000) == 0)
          {
            break;
          }

          if (++v15 == 16)
          {
            if (strcmp(&v12->d_name[16], ".timesync"))
            {
              break;
            }

            if (v30(v29, v13->d_name))
            {
              goto LABEL_9;
            }

            goto LABEL_27;
          }
        }
      }

      if (v6 && d_type == 8)
      {
        v17 = 0;
        while (1)
        {
          v18 = v13->d_name[v17];
          if (v18 < 0 || (_DefaultRuneLocale.__runetype[v18] & 0x10000) == 0)
          {
            break;
          }

          if (++v17 == 16)
          {
            if (!strcmp(&v13->d_name[16], ".timesync"))
            {
              goto LABEL_9;
            }

            break;
          }
        }

        if (strcmp(v13->d_name, ".migrated") && ((*v7)(v6, v13->d_name) & 1) == 0)
        {
          break;
        }
      }
    }

LABEL_27:
    a2 = v25;
    if (closedir(v11) != -1)
    {
      goto LABEL_31;
    }

    goto LABEL_28;
  }

  v20 = *__error();
  if (close(v9) == -1)
  {
    v24 = *__error();
    result = *__error();
    if (v24 == 9)
    {
      qword_1000360E8 = "BUG IN CLIENT OF LIBTRACE: don't close random fds";
      qword_100036118 = result;
      __break(1u);
      return result;
    }

    _os_assumes_log();
  }

  *__error() = v20;
LABEL_31:
  v21 = *(v44 + 6);
  if (v21 >= 1)
  {
    *a2 = v40[3];
    *a3 = v36[3];
  }

  _Block_object_dispose(&v35, 8);
  _Block_object_dispose(&v39, 8);
  _Block_object_dispose(&v43, 8);
  return v21;
}

uint64_t sub_100025F88(void *a1, char *__str)
{
  ++*(*(a1[4] + 8) + 24);
  v3 = strtoull(__str, 0, 16);
  v4 = *(a1[5] + 8);
  if (v3 < *(v4 + 24))
  {
    *(v4 + 24) = v3;
  }

  v5 = *(a1[6] + 8);
  if (v3 > *(v5 + 24))
  {
    *(v5 + 24) = v3;
  }

  return 1;
}

uint64_t sub_100026000(uint64_t a1, const char *a2)
{
  if (unlinkat(*(a1 + 32), a2, 0) == -1)
  {
    v3 = *__error();
    _os_assumes_log();
  }

  return 1;
}

uint64_t sub_10002603C(uint64_t a1, unsigned __int8 *src)
{
  if (*src == 4096 && *(src + 1) >= 0xA8uLL)
  {
    v3 = *(a1 + 32);
    if (*(v3 + 4) != *(src + 18) || *(v3 + 12) != *(src + 19))
    {
      v4 = v3[4];
      v5 = v3[5];
      v6 = v3[3];
      if (v4 >= v5)
      {
        v7 = 2 * v5;
        v6 = _os_trace_realloc_typed();
        v3[3] = v6;
        v3[5] = v7;
        v4 = v3[4];
      }

      v3[4] = v4 + 1;
      v8 = v6 + (v4 << 6);
      v9 = *(src + 4);
      v10 = *(src + 10);
      v11 = *(src + 2);
      v12 = *(src + 8);
      v13 = *(src + 44);
      *v8 = 0;
      *(v8 + 8) = 0;
      *(v8 + 16) = 0;
      *(v8 + 24) = v9;
      *(v8 + 32) = v10;
      *(v8 + 40) = v13;
      *(v8 + 48) = v11;
      *(v8 + 56) = v12;
      uuid_copy((v3[3] + (v4 << 6) + 8), src + 144);
    }
  }

  return 1;
}

int sub_10002612C(id a1, const void *a2, const void *a3)
{
  if (*a2 == *a3)
  {
    v3 = *(a2 + 7);
    v4 = *(a3 + 7);
    v5 = v3 == v4;
    if (v3 < v4)
    {
      v6 = -1;
    }

    else
    {
      v6 = 1;
    }

    if (v5)
    {
      return 0;
    }

    else
    {
      return v6;
    }
  }

  else if (*a2 < *a3)
  {
    return -1;
  }

  else
  {
    return 1;
  }
}

int sub_100026164(id a1, const void *a2, const void *a3)
{
  v3 = *(a2 + 3);
  v4 = *(a3 + 3);
  if (v3 == v4)
  {
    v5 = *(a2 + 8);
    v6 = *(a3 + 8);
    v7 = v5 == v6;
    if (v5 < v6)
    {
      v8 = -1;
    }

    else
    {
      v8 = 1;
    }

    if (v7)
    {
      return 0;
    }

    else
    {
      return v8;
    }
  }

  else if (v3 < v4)
  {
    return -1;
  }

  else
  {
    return 1;
  }
}

uint64_t sub_10002619C(uint64_t result)
{
  if (*(result + 104) - *(result + 96) <= *(result + 136))
  {
    return result;
  }

  v1 = result;
  result = _os_trace_get_times_now();
  v2 = *(v1 + 96);
  v3 = *(v1 + 104) - *(v1 + 136);
  if (v2 >= v3)
  {
LABEL_21:
    v2 = v3;
    goto LABEL_22;
  }

  v4 = 0x2DD01FC06 - *(v1 + 144);
  while (1)
  {
    memset(v18, 170, 18);
    *__str = 0xAAAAAAAAAAAAAAAALL;
    snprintf(__str, 0x1AuLL, "%016llx.timesync", v2);
    v5 = openat(*v1, __str, 0);
    if (v5 == -1)
    {
      goto LABEL_27;
    }

    v6 = v5;
    v7.tv_sec = 0xAAAAAAAAAAAAAAAALL;
    v7.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
    *&v16.st_blksize = v7;
    *v16.st_qspare = v7;
    v16.st_birthtimespec = v7;
    *&v16.st_size = v7;
    v16.st_mtimespec = v7;
    v16.st_ctimespec = v7;
    *&v16.st_uid = v7;
    v16.st_atimespec = v7;
    *&v16.st_dev = v7;
    v8 = fstat(v5, &v16);
    if (v8)
    {
      if (v8 == -1)
      {
        v9 = *__error();
        _os_assumes_log();
      }

      goto LABEL_9;
    }

    if (v16.st_mtimespec.tv_sec > v4)
    {
      break;
    }

LABEL_9:
    if (close(v6) == -1)
    {
      v10 = *__error();
      v11 = *__error();
      if (v10 == 9)
      {
        qword_1000360E8 = "BUG IN CLIENT OF LIBTRACE: don't close random fds";
        qword_100036118 = v11;
        __break(1u);
      }

      _os_assumes_log();
    }

    result = unlinkat(*v1, __str, 0);
    if (result == -1)
    {
      v12 = *__error();
      result = _os_assumes_log();
    }

    if (v2 == 2)
    {
      snprintf(__str, 0x1AuLL, "%016llx.timesync", 1);
      result = unlinkat(*v1, __str, 0);
      if (result == -1)
      {
        result = __error();
        if (*result != 2)
        {
          result = *__error();
          if (result)
          {
            result = _os_assumes_log();
          }
        }
      }
    }

    if (++v2 >= v3)
    {
      goto LABEL_21;
    }
  }

  result = close(v6);
  if (result != -1)
  {
    goto LABEL_22;
  }

  v13 = *__error();
  v14 = *__error();
  if (v13 == 9)
  {
    qword_1000360E8 = "BUG IN CLIENT OF LIBTRACE: don't close random fds";
    qword_100036118 = v14;
    __break(1u);
LABEL_27:
    v15 = *__error();
  }

  result = _os_assumes_log();
LABEL_22:
  *(v1 + 96) = v2;
  return result;
}

uint64_t sub_10002645C(uint64_t a1)
{
  memset(v6, 170, 18);
  v4 = *(a1 + 104);
  *__str = 0xAAAAAAAAAAAAAAAALL;
  snprintf(__str, 0x1AuLL, "%016llx.timesync", v4);
  v2 = openat(*a1, __str, 16779785, 420);
  *(a1 + 112) = v2;
  if (v2 < 0)
  {
    return 0xFFFFFFFFLL;
  }

  result = 0;
  *(a1 + 120) = 0;
  ++*(a1 + 104);
  return result;
}

uint64_t sub_100026518(uint64_t a1, uint64_t a2, unint64_t *a3, void *a4)
{
  v6 = _os_trace_mmap_at();
  if (!v6)
  {
    v7 = 0xFFFFFFFFLL;
    if (!*__error())
    {
      return v7;
    }

LABEL_28:
    _os_assumes_log();
    return v7;
  }

  for (i = 0; i <= 0xAAAAAAAAAAAAAAAALL; i = v9 + v12)
  {
    if (i >= 0xAAAAAAAAAAAAAAAALL)
    {
      v13 = munmap(v6, 0xAAAAAAAAAAAAAAAALL);
      v14 = 1;
      v7 = 1;
      goto LABEL_25;
    }

    v9 = i;
    v10 = &v6[i];
    v11 = *&v6[i];
    if (v11 > 48047)
    {
      if (v11 == 48048)
      {
        if (*(v10 + 1) != 48)
        {
          break;
        }

        v12 = 48;
      }

      else
      {
        if (v11 != 57005)
        {
          break;
        }

        v12 = *(v10 + 1);
      }

      continue;
    }

    if (v11 == 27986)
    {
      if (*(v10 + 1) != 88)
      {
        break;
      }

      v12 = 88;
      continue;
    }

    if (v11 != 29524 || *(v10 + 1) != 32)
    {
      break;
    }

    v12 = 32;
  }

  if (a3)
  {
    *a3 = v9;
  }

  if (a4)
  {
    *a4 = *v10;
  }

  v13 = munmap(v6, 0xAAAAAAAAAAAAAAAALL);
  v14 = 0;
  v7 = 0;
LABEL_25:
  if (v13 == -1)
  {
    v16 = *__error();
    v7 = v14;
    goto LABEL_28;
  }

  return v7;
}

void sub_1000266B0(uint64_t a1)
{
  qword_1000360E8 = "BUG IN LIBTRACE: Bad timesync db entry, file rotated";
  qword_100036118 = a1;
  __break(1u);
}

uint64_t sub_1000266D8(uint64_t a1, int a2)
{
  v19 = 0u;
  v20 = 0u;
  v18 = 0u;
  LODWORD(v18) = 3193776;
  *&v12.tm_sec = 0xAAAAAAAAAAAAAAAALL;
  *&v12.tm_hour = 0xAAAAAAAAAAAAAAAALL;
  v14 = 0x1500000001;
  v13 = 16;
  if (sysctl(&v14, 2u, &v12, &v13, 0, 0) < 0)
  {
    v11 = *__error();
    qword_1000360E8 = "BUG IN LIBTRACE: Can't get boot time";
    qword_100036118 = v11;
    __break(1u);
  }

  *&v20 = 1000000000 * *&v12.tm_sec + 1000 * v12.tm_hour;
  boot_uuid = _os_trace_get_boot_uuid();
  uuid_parse(boot_uuid, &v18 + 8);
  mach_timebase_info(&v19 + 1);
  v14 = time(0);
  v12.tm_zone = 0xAAAAAAAAAAAAAAAALL;
  *&v5 = 0xAAAAAAAAAAAAAAAALL;
  *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *&v12.tm_mon = v5;
  *&v12.tm_isdst = v5;
  *&v12.tm_sec = v5;
  localtime_r(&v14, &v12);
  v6 = ((v12.tm_gmtoff * 0x7777777777777777) >> 64) - v12.tm_gmtoff;
  DWORD2(v20) = (v6 >> 5) + (v6 >> 63) + 60 * v12.tm_isdst;
  HIDWORD(v20) = v12.tm_isdst;
  memset(&v12.tm_hour, 0, 24);
  v12.tm_sec = 2126676;
  v12.tm_min = a2;
  _os_trace_get_times_now();
  v14 = &v18;
  v15 = 48;
  v16 = &v12;
  v17 = 32;
  v7 = *(a1 + 112);
  if (_os_trace_writev() == -1)
  {
    v9 = *__error();
    _os_assumes_log();
    return 0xFFFFFFFFLL;
  }

  else
  {
    if (fsync(*(a1 + 112)) == -1)
    {
      v10 = *__error();
      _os_assumes_log();
    }

    result = 0;
    *(a1 + 120) += v17 + v15;
  }

  return result;
}

uint64_t sub_1000268E4(uint64_t a1, int a2)
{
  if (*(a1 + 120) < *(a1 + 128))
  {
    _os_trace_get_times_now();
    v4 = *(a1 + 112);
    if (_os_trace_write() != -1)
    {
      if (fsync(*(a1 + 112)) == -1)
      {
        v10 = *__error();
        _os_assumes_log();
      }

      result = 0;
      v6 = *(a1 + 120) + 32;
LABEL_6:
      *(a1 + 120) = v6;
      return result;
    }

    goto LABEL_16;
  }

  if (close(*(a1 + 112)) != -1)
  {
LABEL_8:
    sub_10002619C(a1);
    if ((sub_10002645C(a1) & 0x80000000) != 0 || (sub_1000266D8(a1, a2) & 0x80000000) != 0)
    {
      return 0xFFFFFFFFLL;
    }

    if (!*(a1 + 8))
    {
      return 0;
    }

    v7 = *(a1 + 112);
    if (_os_trace_write() != -1)
    {
      if (fsync(*(a1 + 112)) == -1)
      {
        v11 = *__error();
        _os_assumes_log();
      }

      result = 0;
      v6 = *(a1 + 120) + 88;
      goto LABEL_6;
    }

LABEL_16:
    v8 = *__error();
    _os_assumes_log();
    return 0xFFFFFFFFLL;
  }

  v9 = *__error();
  result = *__error();
  if (v9 != 9)
  {
    _os_assumes_log();
    goto LABEL_8;
  }

  qword_1000360E8 = "BUG IN CLIENT OF LIBTRACE: don't close random fds";
  qword_100036118 = result;
  __break(1u);
  return result;
}

uint64_t sub_100026AA8(uint64_t result)
{
  v1 = *(result + 48);
  if (!v1)
  {
    return result;
  }

  v2 = result;
  if (*v1 == 48048)
  {
    sub_100026BE4(result);
    v3 = v2[6];
  }

  else
  {
    v4 = *v1;
    *(result + 120) = *(v1 + 1);
    *(result + 104) = v4;
    v3 = v1;
  }

  v8 = v2[4] - v3 + v2[5];
  while (1)
  {
    result = sub_100026C4C(v1, &v8);
    v1 = result;
    if (!result)
    {
      break;
    }

LABEL_10:
    v7 = *v1;
    if (v7 == 48048)
    {
      if (*(v1 + 1) != v2[8] || *(v1 + 2) != v2[9])
      {
        goto LABEL_17;
      }
    }

    else if (v7 == 29524)
    {
      goto LABEL_17;
    }
  }

  result = sub_100026D0C(v2);
  v5 = v2[2];
  v6 = v2[3] + 1;
  v2[3] = v6;
  if (v6 <= v5)
  {
    result = sub_100026D64(v2);
    if ((result & 0x80000000) == 0)
    {
      v1 = v2[6];
      v8 = v2[4];
      if (!v1)
      {
        goto LABEL_17;
      }

      goto LABEL_10;
    }
  }

  v1 = 0;
LABEL_17:
  v2[6] = v1;
  return result;
}

uint64_t sub_100026BE4(uint64_t result)
{
  v1 = *(result + 48);
  if (*(v1 + 6))
  {
    if (*(v1 + 7))
    {
      v2 = *v1;
      v3 = v1[1];
      *(result + 88) = v1[2];
      *(result + 72) = v3;
      *(result + 56) = v2;
      *(result + 112) = 0;
      *(result + 120) = *(result + 88);
      return result;
    }
  }

  else
  {
    _os_assert_log();
    _os_crash();
    __break(1u);
  }

  _os_assert_log();
  result = _os_crash();
  __break(1u);
  return result;
}

char *sub_100026C4C(unsigned __int16 *a1, void *a2)
{
  v2 = *a1;
  if (v2 > 0xBBAF)
  {
    if (v2 == 48048)
    {
      if (a1[1] != 48)
      {
        goto LABEL_16;
      }

      v3 = 48;
    }

    else
    {
      if (v2 != 57005)
      {
        goto LABEL_16;
      }

      v3 = a1[1];
    }
  }

  else
  {
    if (v2 != 27986)
    {
      if (v2 == 29524 && a1[1] == 32)
      {
        v3 = 32;
        goto LABEL_13;
      }

LABEL_16:
      _os_assumes_log();
      return 0;
    }

    if (a1[1] != 88)
    {
      goto LABEL_16;
    }

    v3 = 88;
  }

LABEL_13:
  v4 = *a2 - v3;
  *a2 = v4;
  v5 = a1 + v3;
  if (v4 >= 1)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100026D0C(uint64_t a1)
{
  v3 = (a1 + 40);
  result = *(a1 + 40);
  if ((result + 1) >= 2)
  {
    result = munmap(result, *(a1 + 32));
    if (result == -1)
    {
      v4 = *__error();
      result = _os_assumes_log();
    }

    *v3 = 0;
    v3[1] = 0;
  }

  return result;
}

uint64_t sub_100026D64(void *a1)
{
  memset(v8, 170, 18);
  v6 = a1[3];
  *__str = 0xAAAAAAAAAAAAAAAALL;
  snprintf(__str, 0x1AuLL, "%016llx.timesync", v6);
  v2 = *a1;
  v3 = _os_trace_mmap_at();
  a1[5] = v3;
  if (!v3)
  {
    if (*__error())
    {
      _os_assumes_log();
    }

    return 0xFFFFFFFFLL;
  }

  if (a1[4] < 80 || *v3 != 48048 || v3[1] != 48 || v3[24] != 29524 || v3[25] != 32)
  {
    sub_100026D0C(a1);
    a1[5] = 0;
    return 0xFFFFFFFFLL;
  }

  v4 = 0;
  a1[6] = v3;
  return v4;
}

uint64_t sub_100026E78(uint64_t a1)
{
  sub_100026D0C(a1);
  *(a1 + 24) = *(a1 + 8);
  while ((sub_100026D64(a1) & 0x80000000) != 0)
  {
    v2 = *(a1 + 16);
    v3 = *(a1 + 24) + 1;
    *(a1 + 24) = v3;
    if (v3 > v2)
    {
      return 0xFFFFFFFFLL;
    }
  }

  sub_100026BE4(a1);
  v6 = *(a1 + 32);
  v5 = sub_100026C4C(*(a1 + 48), &v6);
  result = 0;
  *(a1 + 48) = v5;
  return result;
}

void sub_100026F28()
{
  v0 = _os_trace_zalloc_typed();
  *v0 = 0;
  *(v0 + 8) = xmmword_100029D80;
  operator new();
}

__n128 sub_1000273C8(uint64_t a1, __n128 *a2, uint64_t a3)
{
  result = *a2;
  *(*(a1 + 32) + 16 * a3 + 8) = *a2;
  return result;
}

void sub_100027404(id a1)
{
  *v4 = xmmword_100029DC0;
  memset(__b, 170, sizeof(__b));
  v2 = 648;
  if (sysctl(v4, 4u, __b, &v2, 0, 0) == -1)
  {
    v1 = *__error();
    _os_assumes_log();
  }

  byte_100044D08 = (__b[32] & 4) != 0;
}

void sub_1000274BC(id a1)
{
  getpid();
  if (qword_100044CE8 != -1)
  {
    dispatch_once(&qword_100044CE8, &stru_100032CD8);
  }

  byte_100044D18 = sandbox_check() == 0;
}

uint64_t sub_10002754C()
{
  if (qword_100044D20 != -1)
  {
    dispatch_once(&qword_100044D20, &stru_100032F00);
  }

  return byte_1000360CC;
}

void sub_100027594(id a1)
{
  memset(__b, 170, sizeof(__b));
  v1 = 1024;
  byte_1000360CC = sysctlbyname("kern.filesetuuid", __b, &v1, 0, 0) != 0;
  if (!sysctlbyname("kern.bootargs", __b, &v1, 0, 0))
  {
    if (strstr(__b, "libtrace_kic=0"))
    {
      byte_1000360CC = 0;
    }

    if (strstr(__b, "libtrace_kic=1"))
    {
      byte_1000360CC = 1;
    }
  }
}

void sub_10002767C(unsigned __int8 *a1)
{
  *&v5[13] = 0xAAAAAAAAAAAAAAAALL;
  *&v2 = 0xAAAAAAAAAAAAAAAALL;
  *(&v2 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *in = v2;
  *v5 = v2;
  v3 = 37;
  if (sysctlbyname("kern.kernelcacheuuid", in, &v3, 0, 0))
  {
    uuid_copy(a1, byte_100042B01);
    a1[15] = ~a1[15];
  }

  else
  {
    uuid_parse(in, a1);
  }
}

uint64_t sub_100027734(uint64_t result, mach_port_t a2)
{
  *(result + 144) = 1;
  if (a2)
  {
    result = sub_100009654(a2, 0, -1, -1, 0);
    if (result == -301)
    {
      qword_1000360E8 = "MIG_REPLY_MISMATCH";
      qword_100036118 = -301;
      __break(1u);
    }

    if (result)
    {

      return _dispatch_bug();
    }
  }

  return result;
}

void sub_1000277C0(uint64_t a1)
{
  qword_1000360E8 = "BUG IN LIBDISPATCH: Unexpected kernel buffer size";
  qword_100036118 = a1;
  __break(1u);
}

void sub_1000277E8(int a1)
{
  qword_1000360E8 = "BUG IN LIBDISPATCH: Unable to map kernel buffer";
  qword_100036118 = a1;
  __break(1u);
}

void sub_100027810(int a1)
{
  qword_1000360E8 = "BUG IN LIBDISPATCH: Unable to open /dev/oslog";
  qword_100036118 = a1;
  __break(1u);
}

void sub_100027838(unsigned int a1)
{
  qword_1000360E8 = "BUG IN CLIENT OF LIBDISPATCH: firehose server version mismatch (20180226)";
  qword_100036118 = a1;
  __break(1u);
}

void sub_100027860(unsigned int a1)
{
  qword_1000360E8 = "BUG IN CLIENT OF LIBDISPATCH: firehose libdispatch version mismatch (20180226)";
  qword_100036118 = a1;
  __break(1u);
}

void sub_100027888()
{
  qword_1000360E8 = "MIG_REPLY_MISMATCH";
  qword_100036118 = -301;
  __break(1u);
}

void sub_1000278B0(uint64_t a1)
{
  qword_1000360E8 = "BUG IN LIBDISPATCH: Invalid firehose server queue type";
  qword_100036118 = a1;
  __break(1u);
}

void sub_10002791C(unsigned int a1)
{
  qword_1000360E8 = "BUG IN LIBDISPATCH: recv-right leak";
  qword_100036118 = a1;
  __break(1u);
}

void sub_100027944(CFAllocatorRef allocator, const void **values, CFIndex numValues, const CFArrayCallBacks *callBacks)
{
  qword_1000360E8 = "BUG IN LIBDISPATCH: Unknown recv-right";
  qword_100036118 = allocator;
  __break(1u);
  CFArrayCreate(allocator, values, numValues, callBacks);
}

void operator delete(void *__p)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void operator new()
{
    ;
  }
}

double sub_10002933C(double result)
{
  if (!atomic_load(&unk_1000360D0))
  {
    return sub_1000293A8(result);
  }

  return result;
}

double sub_100029360(double result)
{
  if (!atomic_load(&unk_1000360D0))
  {
    return sub_1000293A8(result);
  }

  return result;
}

double sub_100029384(double result)
{
  if (!atomic_load(&unk_1000360D0))
  {
    return sub_1000293A8(result);
  }

  return result;
}

double __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> sub_1000293A8(double a1)
{
  dlopen("/AppleInternal/Library/Frameworks/TapToRadarKit.framework/TapToRadarKit", 0);
  atomic_store(1u, &unk_1000360D0);
  return a1;
}