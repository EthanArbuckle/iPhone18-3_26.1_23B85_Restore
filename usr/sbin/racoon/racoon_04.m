uint64_t sub_10002D9B4(uint64_t a1)
{
  v35 = 0;
  v33 = 0;
  v31 = 0;
  if (*(a1 + 128))
  {
    v2 = 1;
  }

  else
  {
    v2 = dword_100090058 == 0;
  }

  if (!v2)
  {
    v3 = ne_log_obj();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_100061644();
    }
  }

  if (*(a1 + 60))
  {
    v4 = *(a1 + 112);
    if (!v4 || !*(v4 + 40))
    {
      goto LABEL_15;
    }

LABEL_12:
    v5 = (a1 + 32);
    if (*(a1 + 32))
    {
      v6 = (a1 + 40);
      if (*(a1 + 40))
      {
        if (sub_10000CE8C(*(a1 + 128)))
        {
          goto LABEL_16;
        }
      }
    }

    goto LABEL_15;
  }

  if (*(*(*(a1 + 256) + 64) + 160))
  {
    goto LABEL_12;
  }

LABEL_15:
  v6 = (a1 + 8);
  v5 = a1;
LABEL_16:
  v7 = *(*(a1 + 128) + 32);
  if (!v7)
  {
    return 0;
  }

  v8 = *v5;
  v9 = *v6;
  v10 = 4;
  while (1)
  {
    v11 = sub_10002CCC0(*v7);
    v12 = v11;
    if (v11 == 9)
    {
      v10 = 0;
    }

    else if (v11 == -1)
    {
      if (dword_100090058)
      {
        v29 = ne_log_obj();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
        {
          sub_100061680(v7);
        }
      }

      return 0xFFFFFFFFLL;
    }

    v13 = sub_10002CDB8(*(v7 + 16));
    if (v13 == -1)
    {
      break;
    }

    v14 = v13;
    v15 = *(v7 + 64);
    v16 = v15[1];
    v34 = v15[2];
    v17 = v15[3];
    v32 = 0;
    if ((sub_10002CED0(v13, *v7, v16, v17, &v35, &v34, &v33, &v32, &v31) & 0x80000000) != 0)
    {
      return 0xFFFFFFFFLL;
    }

    if (dword_100090058)
    {
      v18 = ne_log_obj();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        *buf = 67109888;
        v37 = v35;
        v38 = 1024;
        v39 = v34;
        v40 = 1024;
        v41 = v33;
        v42 = 1024;
        v43 = v32;
        _os_log_debug_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEBUG, "call pfkey_send_update: e_type %d, e_klen %d, a_type %d, a_klen %d\n", buf, 0x1Au);
      }
    }

    if (!*(v7 + 20))
    {
      v19 = 0;
      v21 = v31;
      goto LABEL_41;
    }

    v19 = sub_10003B344(*(*(a1 + 256) + 48));
    v20 = v31;
    v21 = v31 | 2;
    v31 |= 2u;
    v22 = *(a1 + 256);
    v23 = *(v22 + 64);
    if (v14 == 1 && *(v23 + 180) == 1 && v8[1] == 2)
    {
      v21 = v20 | 0xA;
      v31 = v20 | 0xA;
      if ((*(v22 + 96) & 4) == 0)
      {
        goto LABEL_41;
      }

      v24 = 4106;
LABEL_36:
      v21 = v20 | v24;
      goto LABEL_40;
    }

    v25 = *(v22 + 96);
    if ((v25 & 2) == 0)
    {
      if ((v25 & 4) == 0)
      {
        goto LABEL_41;
      }

      v24 = 4098;
      goto LABEL_36;
    }

    if (*(v23 + 184) != 1)
    {
      goto LABEL_41;
    }

    v21 = v20 | 6;
LABEL_40:
    v31 = v21;
LABEL_41:
    if ((sub_10003E718(*(qword_1000900B8 + 32), v12, v14, v9, v8, *(v7 + 24), *(v7 + 52), v10, *(*(v7 + 32) + 8), v35, v34, v33, v32, v21, 0, 0, 0, *(*(a1 + 128) + 8), HIDWORD(*(*(a1 + 128) + 8)), 0, 0, *(a1 + 100), v19, v30, 0) & 0x80000000) != 0)
    {
      if (dword_100090058)
      {
        v28 = ne_log_obj();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
        {
          sub_1000616F0();
        }
      }

      return 0xFFFFFFFFLL;
    }

    v7 = *(v7 + 72);
    if (!v7)
    {
      return 0;
    }
  }

  if (dword_100090058)
  {
    v27 = ne_log_obj();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      sub_100061770((v7 + 16));
    }
  }

  return 0xFFFFFFFFLL;
}

uint64_t sub_10002DD70(uint64_t a1)
{
  v35 = 0;
  v33 = 0;
  v31 = 0;
  if (*(a1 + 128))
  {
    v2 = 1;
  }

  else
  {
    v2 = dword_100090058 == 0;
  }

  if (!v2)
  {
    v3 = ne_log_obj();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_1000617E0();
    }
  }

  if (*(a1 + 60))
  {
    v4 = *(a1 + 112);
    if (!v4 || !*(v4 + 40))
    {
      goto LABEL_15;
    }

LABEL_12:
    v5 = (a1 + 32);
    if (*(a1 + 32))
    {
      v6 = (a1 + 40);
      if (*(a1 + 40))
      {
        if (sub_10000CE8C(*(a1 + 128)))
        {
          goto LABEL_16;
        }
      }
    }

    goto LABEL_15;
  }

  if (*(*(*(a1 + 256) + 64) + 160))
  {
    goto LABEL_12;
  }

LABEL_15:
  v6 = (a1 + 8);
  v5 = a1;
LABEL_16:
  v7 = *(*(a1 + 128) + 32);
  if (!v7)
  {
    return 0;
  }

  v8 = *v5;
  v9 = *v6;
  v10 = 4;
  while (1)
  {
    v11 = sub_10002CCC0(*v7);
    v12 = v11;
    if (v11 == 9)
    {
      v10 = 0;
    }

    else if (v11 == -1)
    {
      if (dword_100090058)
      {
        v29 = ne_log_obj();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
        {
          sub_1000614A4(v7);
        }
      }

      return 0xFFFFFFFFLL;
    }

    v13 = sub_10002CDB8(*(v7 + 16));
    if (v13 == -1)
    {
      break;
    }

    v14 = v13;
    v15 = *(v7 + 64);
    v16 = v15[1];
    v34 = v15[2];
    v17 = v15[3];
    v32 = 0;
    if ((sub_10002CED0(v13, *v7, v16, v17, &v35, &v34, &v33, &v32, &v31) & 0x80000000) != 0)
    {
      return 0xFFFFFFFFLL;
    }

    if (dword_100090058)
    {
      v18 = ne_log_obj();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        *buf = 67109888;
        v37 = v35;
        v38 = 1024;
        v39 = v34;
        v40 = 1024;
        v41 = v33;
        v42 = 1024;
        v43 = v32;
        _os_log_debug_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEBUG, "call pfkey_send_add: e_type %d, e_klen %d, a_type %d, a_klen %d\n", buf, 0x1Au);
      }
    }

    if (!*(v7 + 20))
    {
      v19 = 0;
      v21 = v31;
      goto LABEL_41;
    }

    v19 = sub_10003B344(*(*(a1 + 256) + 48));
    v20 = v31;
    v21 = v31 | 2;
    v31 |= 2u;
    v22 = *(a1 + 256);
    v23 = *(v22 + 64);
    if (v14 == 1 && *(v23 + 180) == 1 && v8[1] == 2)
    {
      v21 = v20 | 0xA;
      v31 = v20 | 0xA;
      if ((*(v22 + 96) & 4) == 0)
      {
        goto LABEL_41;
      }

      v24 = 4106;
LABEL_36:
      v21 = v20 | v24;
      goto LABEL_40;
    }

    v25 = *(v22 + 96);
    if ((v25 & 2) == 0)
    {
      if ((v25 & 4) == 0)
      {
        goto LABEL_41;
      }

      v24 = 4098;
      goto LABEL_36;
    }

    if (*(v23 + 184) != 1)
    {
      goto LABEL_41;
    }

    v21 = v20 | 6;
LABEL_40:
    v31 = v21;
LABEL_41:
    if ((sub_10003ECF0(*(qword_1000900B8 + 32), v12, v14, v8, v9, *(v7 + 28), *(v7 + 48), v10, *(*(v7 + 40) + 8), v35, v34, v33, v32, v21, 0, 0, 0, *(*(a1 + 128) + 8), HIDWORD(*(*(a1 + 128) + 8)), 0, 0, *(a1 + 100), v19, v30, 0) & 0x80000000) != 0)
    {
      if (dword_100090058)
      {
        v28 = ne_log_obj();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
        {
          sub_10006181C();
        }
      }

      return 0xFFFFFFFFLL;
    }

    v7 = *(v7 + 72);
    if (!v7)
    {
      return 0;
    }
  }

  if (dword_100090058)
  {
    v27 = ne_log_obj();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      sub_1000615D4((v7 + 16));
    }
  }

  return 0xFFFFFFFFLL;
}

uint64_t sub_10002E12C(uint64_t a1)
{
  v9 = 0;
  v8 = 0;
  v1 = *(a1 + 136);
  v2 = *(*(a1 + 128) + 8);
  if (!sub_10002E268(&v9, &v8, 13, a1))
  {
    v5 = v9;
    if ((sub_10003FB78(*(qword_1000900B8 + 32), (v1 + 8), *(v1 + 264), (v1 + 136), *(v1 + 265), *(v1 + 266), v2, 0, v9, v8, 0) & 0x80000000) != 0)
    {
      if (dword_100090058)
      {
        v7 = ne_log_obj();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          sub_10006190C();
          if (!v5)
          {
            return 0;
          }

          goto LABEL_14;
        }
      }
    }

    else if (dword_100090058)
    {
      v6 = ne_log_obj();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        sub_1000618D8();
        if (!v5)
        {
          return 0;
        }

        goto LABEL_14;
      }
    }

    if (!v5)
    {
      return 0;
    }

LABEL_14:
    free(v5);
    return 0;
  }

  if (dword_100090058)
  {
    v3 = ne_log_obj();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_10006189C();
    }
  }

  return 0xFFFFFFFFLL;
}

uint64_t sub_10002E268(void *a1, int *a2, int a3, const void **a4)
{
  if (a3 == 15 || (v8 = *(a4[16] + 4)) == 0)
  {
    v9 = 16;
  }

  else
  {
    v9 = 16;
    do
    {
      if (*(v8 + 16) == 1)
      {
        v10 = ((**a4 + *a4[1] + 7) | 7) + 1;
      }

      else
      {
        v10 = 8;
      }

      v9 += v10;
      v8 = *(v8 + 72);
    }

    while (v8);
  }

  v11 = a4[17];
  v12 = malloc_type_malloc(v9, 0x4DBD0187uLL);
  if (v12)
  {
    v13 = v12;
    *v12 = v9 >> 3;
    *(v12 + 2) = 131090;
    v12[6] = *v11;
    *(v12 + 2) = 0;
    if (a3 == 15 || (v14 = *(a4[16] + 4)) == 0)
    {
LABEL_20:
      result = 0;
      *a1 = v13;
      *a2 = v9;
      return result;
    }

    v15 = v12 + 24;
    while (1)
    {
      v16 = sub_10000D184(*v14);
      if (v16 == -1)
      {
        break;
      }

      v17 = v16;
      v18 = sub_10002CDB8(*(v14 + 16));
      if (v18 == -1)
      {
        if (dword_100090058)
        {
          v25 = ne_log_obj();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
          {
            sub_1000615D4((v14 + 16));
          }
        }

        goto LABEL_30;
      }

      v13[9] = v17;
      *(v13 + 20) = v18;
      *(v13 + 21) = 2;
      v13[11] = 0;
      if (*(v14 + 16) == 1)
      {
        v19 = **a4;
        v20 = *a4[1];
        memcpy(v13 + 12, *a4, v19);
        memcpy(&v15[v19], a4[1], v20);
        v21 = ((v19 + v20 + 7) | 7) + 1;
      }

      else
      {
        v21 = 8;
      }

      v13[8] = v21;
      v14 = *(v14 + 72);
      if (!v14)
      {
        goto LABEL_20;
      }
    }

    if (dword_100090058)
    {
      v24 = ne_log_obj();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        sub_1000614A4(v14);
      }
    }

LABEL_30:
    free(v13);
  }

  else if (dword_100090058)
  {
    v23 = ne_log_obj();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      sub_10006198C();
    }
  }

  return 0xFFFFFFFFLL;
}

uint64_t sub_10002E4AC(uint64_t a1)
{
  v9 = 0;
  v8 = 0;
  v1 = *(a1 + 136);
  v2 = *(*(a1 + 128) + 8);
  if (!sub_10002E268(&v9, &v8, 14, a1))
  {
    v5 = v9;
    if ((sub_10003FAA8(*(qword_1000900B8 + 32), (v1 + 8), *(v1 + 264), (v1 + 136), *(v1 + 265), *(v1 + 266), v2, 0, v9, v8, 0) & 0x80000000) != 0)
    {
      if (dword_100090058)
      {
        v7 = ne_log_obj();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          sub_1000619FC();
          if (!v5)
          {
            return 0;
          }

          goto LABEL_14;
        }
      }
    }

    else if (dword_100090058)
    {
      v6 = ne_log_obj();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        sub_1000619C8();
        if (!v5)
        {
          return 0;
        }

        goto LABEL_14;
      }
    }

    if (!v5)
    {
      return 0;
    }

LABEL_14:
    free(v5);
    return 0;
  }

  if (dword_100090058)
  {
    v3 = ne_log_obj();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_10006189C();
    }
  }

  return 0xFFFFFFFFLL;
}

uint64_t sub_10002E5E8(uint64_t a1)
{
  v1 = *(a1 + 136);
  __src = 0;
  v7 = 0;
  if (!sub_10002E268(&__src, &v7, 15, a1))
  {
    v4 = __src;
    if ((sub_10003FBE0(*(qword_1000900B8 + 32), (v1 + 8), *(v1 + 264), (v1 + 136), *(v1 + 265), *(v1 + 266), __src, v7, 0) & 0x80000000) != 0)
    {
      if (dword_100090058)
      {
        v6 = ne_log_obj();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
        {
          sub_100061AB0();
          if (!v4)
          {
            return 0;
          }

          goto LABEL_14;
        }
      }
    }

    else if (dword_100090058)
    {
      v5 = ne_log_obj();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        sub_100061A7C();
        if (!v4)
        {
          return 0;
        }

        goto LABEL_14;
      }
    }

    if (!v4)
    {
      return 0;
    }

LABEL_14:
    free(v4);
    return 0;
  }

  if (dword_100090058)
  {
    v2 = ne_log_obj();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      sub_10006189C();
    }
  }

  return 0xFFFFFFFFLL;
}

uint64_t sub_10002E710(uint64_t a1)
{
  v4 = 0;
  if (a1)
  {
    *(a1 + 388) = 0;
    *(a1 + 400) = 0u;
    *(a1 + 416) = 0u;
    *(a1 + 432) = 0u;
    *(a1 + 448) = 0u;
    *(a1 + 464) = 0u;
    *(a1 + 480) = 0u;
    *(a1 + 496) = 0u;
    *(a1 + 512) = 0u;
    *(a1 + 528) = 0u;
    *(a1 + 544) = 0u;
    *(a1 + 560) = 0u;
    *(a1 + 576) = 0u;
    *(a1 + 592) = 0u;
    *(a1 + 608) = 0u;
    *(a1 + 624) = 0u;
    *(a1 + 640) = 0u;
    *(a1 + 656) = 0u;
    *(a1 + 672) = 0u;
    *(a1 + 688) = 0u;
    *(a1 + 704) = 0u;
    result = sub_10004B5F0(a1, 1, &v4, a1 + 400, 8);
    *(a1 + 388) = result;
    if (!result)
    {
      return result;
    }

    v5[0] = a1;
    v5[1] = 0;
    if ((sub_100040180(*(qword_1000900B8 + 32), v4, v5, 1, 1, (a1 + 400), result) & 0x80000000) == 0)
    {
      return *(a1 + 388);
    }
  }

  else if (dword_100090058)
  {
    v3 = ne_log_obj();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      sub_100061B30();
    }
  }

  return 0xFFFFFFFFLL;
}

uint64_t sub_10002E828(uint64_t a1)
{
  v5 = 0;
  if (a1)
  {
    *(a1 + 1040) = 0;
    v2 = (a1 + 1048);
    *(a1 + 1048) = 0u;
    *(a1 + 1064) = 0u;
    *(a1 + 1080) = 0u;
    *(a1 + 1096) = 0u;
    *(a1 + 1112) = 0u;
    *(a1 + 1128) = 0u;
    *(a1 + 1144) = 0u;
    *(a1 + 1160) = 0u;
    *(a1 + 1176) = 0u;
    *(a1 + 1192) = 0u;
    *(a1 + 1208) = 0u;
    *(a1 + 1224) = 0u;
    *(a1 + 1240) = 0u;
    *(a1 + 1256) = 0u;
    *(a1 + 1272) = 0u;
    *(a1 + 1288) = 0u;
    *(a1 + 1304) = 0u;
    *(a1 + 1320) = 0u;
    *(a1 + 1336) = 0u;
    *(a1 + 1352) = 0u;
    result = sub_10004B5F0(a1, 2, &v5, a1 + 1048, 8);
    *(a1 + 1040) = result;
    if (!result)
    {
      return result;
    }

    v6[0] = a1;
    v6[1] = 0;
    if ((sub_100040180(*(qword_1000900B8 + 32), v5, v6, 1, 2, v2, result) & 0x80000000) == 0)
    {
      return *(a1 + 1040);
    }
  }

  else if (dword_100090058)
  {
    v4 = ne_log_obj();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      sub_100061BB0();
    }
  }

  return 0xFFFFFFFFLL;
}

uint64_t sub_10002E944(unsigned int a1, int a2, unsigned int a3)
{
  v18 = 0;
  v6 = sub_100001DA8(a1);
  switch(v6)
  {
    case 3:
      v7 = 15;
      break;
    case 4:
      return 0;
    case 5:
      v7 = 14;
      break;
    default:
      if (dword_100090058)
      {
        v12 = ne_log_obj();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          sub_100061D20();
        }
      }

      return 0xFFFFFFFFLL;
  }

  v9 = sub_100001DA8(a1);
  v10 = sub_100001C38(a1, a2);
  switch(v9)
  {
    case 3:
      v11 = sub_10002D154(v10);
      break;
    case 4:
      v11 = sub_10002D3D0(v10);
      break;
    case 5:
      v11 = sub_10002D278(v10);
      break;
    default:
      if (dword_100090058)
      {
        v15 = ne_log_obj();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          sub_100061CB0();
        }
      }

      return 0xFFFFFFFFLL;
  }

  v13 = v11;
  if (v11 == -1)
  {
    return 0xFFFFFFFFLL;
  }

  if (!a3)
  {
    if (!sub_10003E1EC(v7, v11, &v18))
    {
      a3 = WORD1(v18);
      goto LABEL_18;
    }

    if (dword_100090058)
    {
      v16 = ne_log_obj();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        sub_100061C30();
      }
    }

    return 0xFFFFFFFFLL;
  }

LABEL_18:
  v8 = sub_10003E0AC(v7, v13, a3);
  if (v8)
  {
    if (dword_100090058)
    {
      v14 = ne_log_obj();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        sub_100061C30();
      }
    }
  }

  return v8;
}

uint64_t sub_10002EB10(void *a1)
{
  v1 = a1[5];
  if (!v1 || (v2 = a1[6]) == 0 || (v3 = a1[18]) == 0)
  {
    if (dword_100090058)
    {
      v5 = ne_log_obj();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        sub_100062094();
      }
    }

    return 0xFFFFFFFFLL;
  }

  if (*v3 <= 1u)
  {
    if (!dword_100090058)
    {
      return 0xFFFFFFFFLL;
    }

    v4 = ne_log_obj();
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      return 0xFFFFFFFFLL;
    }

    goto LABEL_7;
  }

  v7 = sub_100032CDC();
  if (!v7)
  {
    if (dword_100090058)
    {
      v13 = ne_log_obj();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        sub_100062058();
      }
    }

    return 0xFFFFFFFFLL;
  }

  v8 = v7;
  v7[16] = *(v3 + 6);
  v9 = v7 + 16;
  *(v7 + 72) = *(v3 + 2);
  v10 = v3[2];
  *(v7 + 73) = v10;
  *(v7 + 37) = 0;
  if (v10 > 5)
  {
    if (dword_100090058)
    {
      v31 = ne_log_obj();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        sub_10006201C();
      }
    }

    sub_100032CF8(v8);
    return 0xFFFFFFFFLL;
  }

  if (v10 == 2)
  {
    v14 = *v3;
    if (v14 >= 3)
    {
      v15 = v7 + 296;
      v16 = 8 * v14 - 16;
      v17 = v3 + 8;
      while (1)
      {
        if (v16 < 8 || (v18 = *v17, v16 < v18))
        {
          if (dword_100090058)
          {
            v32 = ne_log_obj();
            if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
            {
              sub_100061FE0();
            }
          }

          return 0xFFFFFFFFLL;
        }

        if (v18 <= 7)
        {
          break;
        }

        v19 = sub_1000330DC();
        *v15 = v19;
        if (!v19)
        {
          if (dword_100090058)
          {
            v34 = ne_log_obj();
            if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
            {
              sub_100061F68();
            }
          }

          return 0xFFFFFFFFLL;
        }

        *v19 = 0;
        v20 = v17[1];
        if ((v20 - 50) > 0x3A || ((1 << (v20 - 50)) & 0x400000000000003) == 0)
        {
          if (dword_100090058)
          {
            v39 = ne_log_obj();
            if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
            {
              sub_100061EF4(v17 + 1);
            }
          }

          return 0xFFFFFFFFLL;
        }

        v22 = *v15;
        *(*v15 + 264) = v20;
        v23 = *(v17 + 4);
        if ((v23 - 1) >= 2)
        {
          if (dword_100090058)
          {
            v35 = ne_log_obj();
            if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
            {
              sub_100061D5C(v17 + 4);
            }
          }

          return 0xFFFFFFFFLL;
        }

        *(v22 + 266) = v23;
        v24 = *(v17 + 5);
        if (v24 >= 3)
        {
          if (v24 != 3)
          {
            if (dword_100090058)
            {
              v40 = ne_log_obj();
              if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
              {
                sub_100061E84(v17 + 5);
              }
            }

            return 0xFFFFFFFFLL;
          }

          *(v22 + 268) = v17[3];
        }

        *(v22 + 272) = v24;
        v25 = *v17;
        if (v25 >= 9)
        {
          v26 = v25 - 8;
          if (v25 - 8 < 0x10 || (v27 = (v17 + 4), v28 = *(v17 + 8), v26 < v28))
          {
            if (dword_100090058)
            {
              v36 = ne_log_obj();
              if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
              {
                sub_100061E48();
              }
            }

            return 0xFFFFFFFFLL;
          }

          memmove((v22 + 8), v17 + 4, v28);
          v29 = *v27;
          if (v26 - v29 < 0x10 || (v30 = v27[v29], (v26 - v29) < v30))
          {
            if (dword_100090058)
            {
              v38 = ne_log_obj();
              if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
              {
                sub_100061E0C();
              }
            }

            return 0xFFFFFFFFLL;
          }

          memmove((*v15 + 136), &v27[v29], v30);
          v22 = *v15;
          v25 = *v17;
        }

        *(v22 + 280) = v8;
        v16 -= v25;
        if (v16 < 0 && dword_100090058)
        {
          v37 = ne_log_obj();
          if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
          {
            sub_100061DCC(&v41, v42, v37);
          }

          goto LABEL_15;
        }

        v15 = *v15;
        v17 = (v17 + *v17);
        if (v16 < 1)
        {
          goto LABEL_15;
        }
      }

      if (!dword_100090058)
      {
        return 0xFFFFFFFFLL;
      }

      v33 = ne_log_obj();
      if (!os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        return 0xFFFFFFFFLL;
      }

LABEL_7:
      sub_100061FA4();
      return 0xFFFFFFFFLL;
    }
  }

LABEL_15:
  v9[15] = 0u;
  v9[16] = 0u;
  v9[13] = 0u;
  v9[14] = 0u;
  v9[11] = 0u;
  v9[12] = 0u;
  v9[9] = 0u;
  v9[10] = 0u;
  v9[7] = 0u;
  v9[8] = 0u;
  v9[5] = 0u;
  v9[6] = 0u;
  v9[3] = 0u;
  v9[4] = 0u;
  v9[1] = 0u;
  v9[2] = 0u;
  *v9 = 0u;
  v8[16] = *(v3 + 6);
  v12 = *(v1 + 8);
  v11 = (v1 + 8);
  v8[280] = *(v11 - 3);
  v8[281] = *(v2 + 5);
  *(v8 + 141) = *(v11 - 4);
  memcpy(v8 + 24, v11, v12);
  memcpy(v8 + 152, (v2 + 8), *(v2 + 8));
  sub_100033030(v8);
  return 0;
}

uint64_t sub_10002EFD4(uint64_t *a1)
{
  v1 = a1[1];
  if (!v1 || !a1[6])
  {
    if (dword_100090058)
    {
      v18 = ne_log_obj();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        sub_100062464();
      }
    }

    return 0xFFFFFFFFLL;
  }

  v2 = *a1;
  v3 = *(*a1 + 12);
  if (v3 != getpid())
  {
    if (dword_100090058)
    {
      v19 = ne_log_obj();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        sub_1000620D0();
      }
    }

    return 0xFFFFFFFFLL;
  }

  v4 = sub_100006160(*(v2 + 8));
  if (!v4)
  {
    if (dword_100090058)
    {
      v20 = ne_log_obj();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
      {
        sub_1000623E8((v2 + 8), v2);
      }
    }

    return 0xFFFFFFFFLL;
  }

  v5 = v4;
  if ((*(v4 + 264) & 2) != 0)
  {
    if (dword_100090058)
    {
      v21 = ne_log_obj();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        sub_100062150(v5);
      }
    }

    return 0xFFFFFFFFLL;
  }

  v6 = (v4 + 61);
  if (*(v4 + 61) != 16)
  {
    if (dword_100090058)
    {
      v22 = ne_log_obj();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        sub_1000621C4(v6);
      }
    }

    return 0xFFFFFFFFLL;
  }

  v7 = (v4 + 56);
  if ((*(v4 + 56) | 0x100) != 0x19F0)
  {
    if (dword_100090058)
    {
      v24 = ne_log_obj();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        sub_100062378(v7);
      }
    }

    return 0xFFFFFFFFLL;
  }

  if (!*(v4 + 256) && !sub_10004A040(v4))
  {
    if (dword_100090058)
    {
      v26 = ne_log_obj();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        sub_1000622F4(v5);
      }
    }

    goto LABEL_43;
  }

  v8 = sub_10002CD40(*(v2 + 3));
  v9 = 128;
  if (!*(v5 + 60))
  {
    v9 = 120;
  }

  v10 = *(*(v5 + v9) + 32);
  if (!v10)
  {
    goto LABEL_40;
  }

  v11 = v8;
  v12 = 1;
  v13 = 1;
  do
  {
    if (*v10 == v11 && !*(v10 + 24))
    {
      *(v10 + 24) = *(v1 + 4);
      v13 = dword_100090058;
      if (dword_100090058)
      {
        v14 = ne_log_obj();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
        {
          v29 = *v5;
          v30 = *(v5 + 8);
          v15 = *(v2 + 3);
          v28 = *(v1 + 4);
          v16 = sub_10002CDB8(*(v10 + 16));
          v17 = sub_10002D834(v30, v29, v15, v28, v16);
          *buf = 136315138;
          v32 = v17;
          _os_log_debug_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "pfkey GETSPI succeeded: %s\n", buf, 0xCu);
        }

        v13 = 0;
      }
    }

    if (!*(v10 + 24))
    {
      v12 = 0;
    }

    v10 = *(v10 + 72);
  }

  while (v10);
  if (v13)
  {
LABEL_40:
    if (dword_100090058)
    {
      v23 = ne_log_obj();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        sub_100062270(v5);
      }
    }

LABEL_43:
    sub_100048E58(v5);
    return 0xFFFFFFFFLL;
  }

  if (v12 && *v6 == 16 && (sub_100023568(v5) & 0x80000000) != 0)
  {
    if (dword_100090058)
    {
      v27 = ne_log_obj();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        sub_100062234();
      }
    }

    goto LABEL_43;
  }

  return 0;
}

uint64_t sub_10002F3CC(uint64_t *a1)
{
  if (dword_100090010)
  {
    return 0;
  }

  v2 = *a1;
  if (!*a1 || (v3 = a1[1]) == 0 || !a1[5] || !a1[6])
  {
    if (dword_100090058)
    {
      v6 = ne_log_obj();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_100062580();
      }
    }

    return 0xFFFFFFFFLL;
  }

  v4 = a1[19];
  if (v4)
  {
    v5 = *(v4 + 4);
  }

  else
  {
    v5 = 0;
  }

  v7 = *(v2 + 12);
  if (v7 != getpid())
  {
    if (dword_100090058)
    {
      v22 = ne_log_obj();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
      {
        sub_1000620D0();
      }
    }

    return 0xFFFFFFFFLL;
  }

  v8 = sub_100006160(*(v2 + 8));
  if (!v8)
  {
    if (dword_100090058)
    {
      v23 = ne_log_obj();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
      {
        sub_1000623E8((v2 + 8), v2);
      }
    }

    return 0xFFFFFFFFLL;
  }

  v9 = v8;
  if ((*(v8 + 264) & 2) != 0)
  {
    if (dword_100090058)
    {
      v24 = ne_log_obj();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        sub_100062150(v9);
      }
    }

    return 0xFFFFFFFFLL;
  }

  v10 = (v8 + 56);
  if ((*(v8 + 56) | 0x100) != 0x19C8)
  {
    if (dword_100090058)
    {
      v25 = ne_log_obj();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        sub_100062378(v10);
      }
    }

    return 0xFFFFFFFFLL;
  }

  v11 = *(*(v8 + 128) + 32);
  if (v11)
  {
    v12 = 0;
    do
    {
      v13 = sub_10002CD40(*(v2 + 3));
      if (v13 == -1)
      {
        if (dword_100090058)
        {
          v26 = ne_log_obj();
          if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
          {
            sub_100062510((v2 + 3));
          }
        }

        return 0xFFFFFFFFLL;
      }

      v14 = v13;
      if (sub_10002CE60(v5) == -1)
      {
        if (dword_100090058)
        {
          v27 = ne_log_obj();
          if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
          {
            sub_1000624A0();
          }
        }

        return 0xFFFFFFFFLL;
      }

      if (*v11 == v14 && *(v11 + 24) == *(v3 + 4))
      {
        *(v11 + 56) = 1;
        if (dword_100090058)
        {
          v15 = ne_log_obj();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
          {
            v20 = sub_10002D834(*(v9 + 8), *v9, *(v2 + 3), *(v3 + 4), v5);
            *buf = 136315138;
            *v35 = v20;
            _os_log_debug_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEBUG, "pfkey UPDATE succeeded: %s\n", buf, 0xCu);
          }

          if (dword_100090058)
          {
            v16 = ne_log_obj();
            if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
            {
              v17 = *(v2 + 3);
              v18 = bswap32(*(v3 + 4));
              *buf = 67109632;
              *v35 = v17;
              *&v35[4] = 1024;
              *&v35[6] = v18;
              v36 = 1024;
              v37 = v5;
              _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "IPsec-SA established (update): satype=%u spi=%#x mode=%u\n", buf, 0x14u);
            }

            if (dword_100090058)
            {
              v19 = ne_log_obj();
              if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
              {
                v21 = sub_10002D834(*(v9 + 8), *v9, *(v2 + 3), *(v3 + 4), v5);
                *buf = 136315138;
                *v35 = v21;
                _os_log_debug_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEBUG, "IPsec-SA established (update): %s\n", buf, 0xCu);
              }
            }
          }
        }
      }

      if (!*(v11 + 56))
      {
        v12 = 1;
      }

      v11 = *(v11 + 72);
    }

    while (v11);
    if (v12)
    {
      return 0;
    }
  }

  v28 = *(v9 + 64);
  if (v28)
  {
    sub_100038740(v28);
    *(v9 + 64) = 0;
  }

  sub_100000A50((v9 + 56), 10240);
  sub_10004A668(v9);
  if (dword_100090058)
  {
    v29 = ne_log_obj();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      if (*(v9 + 60))
      {
        v30 = "peer";
      }

      else
      {
        v30 = "me";
      }

      *buf = 136315138;
      *v35 = v30;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "IPSec Phase 2 established (Initiated by %s).\n", buf, 0xCu);
    }
  }

  v31 = *(v9 + 256);
  if (v31)
  {
    ++*(v31 + 400);
  }

  v32 = *(v9 + 68);
  if (v32)
  {
    sub_100038740(v32);
    *(v9 + 68) = 0;
  }

  sub_100049E14(v9);
  *(v9 + 64) = sub_100038550(*(*(v9 + 128) + 8), sub_100022C18, v9);
  if (!dword_100090058)
  {
    return 0;
  }

  v33 = ne_log_obj();
  result = os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG);
  if (result)
  {
    sub_10005CC48();
    return 0;
  }

  return result;
}

uint64_t sub_10002F90C(uint64_t *a1)
{
  if (dword_100090010)
  {
    return 0;
  }

  v2 = *a1;
  if (!*a1 || (v3 = a1[1]) == 0 || !a1[5] || !a1[6])
  {
    if (dword_100090058)
    {
      v6 = ne_log_obj();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_100062638();
      }
    }

    return 0xFFFFFFFFLL;
  }

  v4 = a1[19];
  if (v4)
  {
    v5 = *(v4 + 4);
  }

  else
  {
    v5 = 0;
  }

  v7 = *(v2 + 12);
  if (v7 != getpid())
  {
    if (dword_100090058)
    {
      v15 = ne_log_obj();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        sub_1000620D0();
      }
    }

    return 0xFFFFFFFFLL;
  }

  v8 = sub_100006160(*(v2 + 8));
  if (!v8)
  {
    if (dword_100090058)
    {
      v16 = ne_log_obj();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        sub_1000625BC((v2 + 8), v2);
      }
    }

    return 0xFFFFFFFFLL;
  }

  v9 = v8;
  if (dword_100090058)
  {
    v10 = ne_log_obj();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(v2 + 3);
      v12 = bswap32(*(v3 + 4));
      v18 = 67109632;
      *v19 = v11;
      *&v19[4] = 1024;
      *&v19[6] = v12;
      v20 = 1024;
      v21 = v5;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "IPsec-SA established (add): satype=%u spi=%#x mode=%u\n", &v18, 0x14u);
    }

    if (dword_100090058)
    {
      v13 = ne_log_obj();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        v17 = sub_10002D834(*v9, *(v9 + 8), *(v2 + 3), *(v3 + 4), v5);
        v18 = 136315138;
        *v19 = v17;
        _os_log_debug_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "IPsec-SA established (add): %s\n", &v18, 0xCu);
      }
    }
  }

  sub_10004AEF0(*(v9 + 272), v9);
  sub_100046F84(0, 0, 0, v9);
  if (!dword_100090058)
  {
    return 0;
  }

  v14 = ne_log_obj();
  result = os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG);
  if (result)
  {
    sub_10005CC48();
    return 0;
  }

  return result;
}

uint64_t sub_10002FBA0(uint64_t *a1)
{
  if (dword_100090010)
  {
    return 0;
  }

  v2 = *a1;
  if (!*a1 || (v3 = a1[5]) == 0 || (v4 = a1[6]) == 0)
  {
    if (dword_100090058)
    {
      v8 = ne_log_obj();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        sub_100062860();
      }
    }

    return 0xFFFFFFFFLL;
  }

  v5 = a1[1];
  v6 = *(v2 + 12);
  if (v6 == getpid())
  {
    if (dword_100090058)
    {
      v7 = ne_log_obj();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        sub_1000627E4(v2);
      }
    }

    return 0xFFFFFFFFLL;
  }

  v10 = *(v2 + 3);
  v9 = (v2 + 3);
  v11 = sub_10002CD40(v10);
  if (v11 == -1)
  {
    if (dword_100090058)
    {
      v21 = ne_log_obj();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        sub_100062510(v9);
      }
    }

    return 0xFFFFFFFFLL;
  }

  v12 = v11;
  if (!dword_100090058)
  {
    goto LABEL_24;
  }

  v13 = ne_log_obj();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    sub_100062674();
  }

  if (!dword_100090058)
  {
    goto LABEL_24;
  }

  v14 = ne_log_obj();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    sub_1000626E4((v3 + 8));
  }

  if (!dword_100090058 || (v15 = ne_log_obj(), !os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG)))
  {
LABEL_24:
    if (v5)
    {
      goto LABEL_25;
    }

LABEL_37:
    sub_100006A74(v3 + 8, v4 + 8, v12);
    sub_100006BFC(v3 + 8, v4 + 8);
    return 0;
  }

  sub_100062764((v4 + 8));
  if (!v5)
  {
    goto LABEL_37;
  }

LABEL_25:
  v16 = sub_100006324(v3 + 8, v4 + 8, v12, *(v5 + 4));
  if (v16)
  {
    if (dword_100090058)
    {
      v17 = v16;
      v18 = ne_log_obj();
      result = os_log_type_enabled(v18, OS_LOG_TYPE_ERROR);
      if (result)
      {
        v19 = sub_10002D834(*v17, v17[1], *v9, *(v5 + 4), 0);
        v23 = 136315138;
        v24 = v19;
        v20 = "pfkey DELETE received: %s\n";
LABEL_35:
        _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, v20, &v23, 0xCu);
        return 0;
      }

      return result;
    }

    return 0;
  }

  if (!dword_100090058)
  {
    return 0;
  }

  v18 = ne_log_obj();
  result = os_log_type_enabled(v18, OS_LOG_TYPE_ERROR);
  if (result)
  {
    v22 = sub_10002D834((v3 + 8), (v4 + 8), *v9, *(v5 + 4), 0);
    v23 = 136315138;
    v24 = v22;
    v20 = "no iph2 found: %s\n";
    goto LABEL_35;
  }

  return result;
}

uint64_t sub_10002FE78(uint64_t *a1)
{
  if (dword_100090010)
  {
    return 0;
  }

  v3 = *a1;
  if (!*a1 || (v4 = a1[5]) == 0 || (v5 = a1[6]) == 0 || (v6 = a1[18]) == 0)
  {
    if (dword_100090058)
    {
      v9 = ne_log_obj();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_100062E60();
      }
    }

    return 0xFFFFFFFFLL;
  }

  if (*(v6 + 4) != 2)
  {
    if (!dword_100090058)
    {
      return 0;
    }

    v10 = ne_log_obj();
    result = os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG);
    if (result)
    {
      sub_10006289C();
      return 0;
    }

    return result;
  }

  v7 = *(v5 + 9);
  if (v7 == 30)
  {
    if (*(v5 + 16) == 255)
    {
      goto LABEL_11;
    }
  }

  else if (v7 == 2 && (*(v5 + 12) & 0xF0) == 0xE0)
  {
LABEL_11:
    if (!dword_100090058)
    {
      return 0;
    }

    v8 = ne_log_obj();
    result = os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG);
    if (result)
    {
      sub_1000628D0((v5 + 8));
      return 0;
    }

    return result;
  }

  v11 = qword_1000900B8 + 120;
  do
  {
    v11 = *v11;
    if (!v11)
    {
      if (!dword_100090058)
      {
        return 0;
      }

      v15 = ne_log_obj();
      result = os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG);
      if (result)
      {
        sub_100062DE0((v4 + 8));
        return 0;
      }

      return result;
    }

    v12 = sub_10003A5E8(*(v11 + 8));
    if (dword_100090058)
    {
      v13 = v12;
      v14 = ne_log_obj();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        LODWORD(buf[0]) = 136315138;
        *(buf + 4) = v13;
        _os_log_debug_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "checking listen addrs: %s", buf, 0xCu);
      }
    }
  }

  while (sub_100039414(*(v11 + 8), v4 + 8));
  v17 = *(v6 + 8);
  v16 = (v6 + 8);
  v18 = sub_1000061EC(v4 + 8, v5 + 8, v17);
  if (v18)
  {
    if ((*(v18 + 57) & 0x20) == 0)
    {
      if (dword_100090058)
      {
        v19 = ne_log_obj();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
        {
          sub_100062950();
        }
      }

      return 0xFFFFFFFFLL;
    }

    v20 = *(v18 + 272);
  }

  else
  {
    v20 = 0;
  }

  v21 = sub_100032CB8(*v16);
  if (!v21)
  {
    if (dword_100090058)
    {
      v32 = ne_log_obj();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        sub_100062D70(v16);
      }
    }

    return 0xFFFFFFFFLL;
  }

  v22 = v21;
  if (dword_100090058)
  {
    v23 = ne_log_obj();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
    {
      sub_100062984(v22);
    }
  }

  memset(&buf[1], 0, 256);
  buf[0] = 0u;
  LOBYTE(buf[0]) = 1;
  *(&buf[7] + 8) = *(v22 + 264);
  *(&buf[6] + 8) = *(v22 + 248);
  *(&buf[5] + 8) = *(v22 + 232);
  *(&buf[3] + 8) = *(v22 + 200);
  *(&buf[2] + 8) = *(v22 + 184);
  *(&buf[1] + 8) = *(v22 + 168);
  *(&buf[4] + 8) = *(v22 + 216);
  *(buf + 8) = *(v22 + 152);
  v24 = *(v22 + 120);
  v25 = *(v22 + 104);
  v26 = *(v22 + 88);
  *(&buf[15] + 8) = *(v22 + 136);
  *(&buf[12] + 8) = v26;
  *(&buf[13] + 8) = v25;
  *(&buf[14] + 8) = v24;
  v27 = *(v22 + 24);
  v28 = *(v22 + 40);
  v29 = *(v22 + 56);
  *(&buf[11] + 8) = *(v22 + 72);
  *(&buf[10] + 8) = v29;
  *(&buf[9] + 8) = v28;
  *(&buf[8] + 8) = v27;
  BYTE8(buf[16]) = *(v22 + 281);
  BYTE9(buf[16]) = *(v22 + 280);
  WORD5(buf[16]) = *(v22 + 282);
  v30 = sub_1000324C4(buf);
  v55 = v20;
  if (v30)
  {
    if (dword_100090058)
    {
      v31 = ne_log_obj();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
      {
        sub_100062A08(v30);
      }
    }
  }

  else if (dword_100090058)
  {
    v33 = ne_log_obj();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      *v56 = 136315138;
      v57 = sub_1000330F8(buf);
      _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "No in-bound policy found: %s\n", v56, 0xCu);
    }
  }

  v34 = sub_100036448((v5 + 8));
  if (!v34)
  {
    if (dword_100090058)
    {
      v49 = ne_log_obj();
      if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
      {
        sub_100062CF0((v5 + 8));
      }
    }

    return 0xFFFFFFFFLL;
  }

  v35 = v34;
  v36 = sub_100006488(v34[73], 0);
  if (!v36)
  {
    if (dword_100090058)
    {
      v50 = ne_log_obj();
      if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
      {
        sub_100062CB4();
      }
    }

    return 0xFFFFFFFFLL;
  }

  v37 = v36;
  if (dword_100090058)
  {
    v38 = ne_log_obj();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
    {
      sub_100062A8C(v37);
    }
  }

  *(v37 + 61) = v35[73];
  *(v37 + 60) = 0;
  *(v37 + 52) = *v16;
  *(v37 + 104) = *(v3 + 3);
  *(v37 + 100) = *(v3 + 8);
  sub_100046964((v37 + 16));
  v39 = sub_10003A790((a1[5] + 8));
  *v37 = v39;
  if (!v39)
  {
    goto LABEL_99;
  }

  v40 = sub_10003A790((a1[6] + 8));
  *(v37 + 8) = v40;
  if (!v40)
  {
    goto LABEL_99;
  }

  if (*(v37 + 61) == 16)
  {
    sub_100000A50((v37 + 56), 6336);
  }

  if (dword_100090058)
  {
    v41 = ne_log_obj();
    if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
    {
      sub_100062B00((v22 + 16));
    }
  }

  v42 = sub_10000E38C(v22 + 24, *(v22 + 280), *(v22 + 282));
  if (!v42)
  {
    if (dword_100090058)
    {
      v51 = ne_log_obj();
      if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
      {
        sub_100062C34((v22 + 16));
      }
    }

    goto LABEL_99;
  }

  v43 = v42;
  v44 = sub_10000E38C(v22 + 152, *(v22 + 281), *(v22 + 282));
  if (!v44)
  {
    if (dword_100090058)
    {
      v52 = ne_log_obj();
      if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
      {
        sub_100062C34((v22 + 16));
      }
    }

    sub_10003D4F0(v43);
    goto LABEL_99;
  }

  v45 = v44;
  *(v37 + 112) = sub_100037CC0(v43, v44, 0, 0);
  sub_10003D4F0(v43);
  sub_10003D4F0(v45);
  v46 = *(v37 + 112);
  if (!v46)
  {
    if (dword_100090058)
    {
      v53 = ne_log_obj();
      if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
      {
        sub_100062BF8();
      }
    }

    goto LABEL_99;
  }

  sub_1000382E8(v46);
  if ((sub_10003557C(v37, v22, v30) & 0x80000000) != 0)
  {
    if (dword_100090058)
    {
      v54 = ne_log_obj();
      if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
      {
        sub_100062BBC();
      }
    }

LABEL_99:
    sub_100006690(v37);
    return 0xFFFFFFFFLL;
  }

  v47 = v55;
  if (!v55)
  {
    v47 = sub_100049000(*v37, *(v37 + 8), 1, 0);
    if (!v47)
    {
      sub_1000393B0();
    }
  }

  if (sub_10004980C(v47, v37))
  {
    sub_1000393B0();
  }

  if ((sub_100022F80(v37) & 0x80000000) != 0)
  {
    if (dword_100090058)
    {
      v48 = ne_log_obj();
      if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
      {
        sub_100062B80();
      }
    }

    sub_100048E58(v37);
    return 0xFFFFFFFFLL;
  }

  return 0;
}

uint64_t sub_1000305C4(uint64_t *a1)
{
  v1 = *a1;
  if (!*a1 || (v2 = a1[1]) == 0 || (v3 = a1[5]) == 0 || (v4 = a1[6]) == 0 || a1[3] && a1[4])
  {
    if (dword_100090058)
    {
      v5 = ne_log_obj();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        sub_100062ED8();
      }
    }

    return 0xFFFFFFFFLL;
  }

  v7 = a1[19];
  if (v7)
  {
    v8 = *(v7 + 4);
  }

  else
  {
    v8 = 0;
  }

  v10 = *(v1 + 3);
  v9 = (v1 + 3);
  v11 = sub_10002CD40(v10);
  if (v11 == -1)
  {
    if (dword_100090058)
    {
      v22 = ne_log_obj();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        sub_100062510(v9);
      }
    }

    return 0xFFFFFFFFLL;
  }

  v12 = v11;
  if (dword_100090058)
  {
    v13 = ne_log_obj();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = *v9;
      v15 = bswap32(*(v2 + 4));
      v28 = 67109632;
      *v29 = v14;
      *&v29[4] = 1024;
      *&v29[6] = v15;
      LOWORD(v30[0]) = 1024;
      *(v30 + 2) = v8;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "IPsec-SA expired: satype=%u spi=%#x mode=%u\n", &v28, 0x14u);
    }

    if (dword_100090058)
    {
      v16 = ne_log_obj();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        v26 = sub_10002D834((v3 + 8), (v4 + 8), *v9, *(v2 + 4), v8);
        v28 = 136315138;
        *v29 = v26;
        _os_log_debug_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEBUG, "IPsec-SA expired: %s\n", &v28, 0xCu);
      }
    }
  }

  v17 = sub_100006324(v3 + 8, v4 + 8, v12, *(v2 + 4));
  if (!v17)
  {
    if (dword_100090058)
    {
      v23 = ne_log_obj();
      result = os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG);
      if (!result)
      {
        return result;
      }

      v24 = sub_10002D834((v3 + 8), (v4 + 8), *v9, *(v2 + 4), v8);
      v28 = 136315138;
      *v29 = v24;
      _os_log_debug_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEBUG, "no such a SA found: %s\n", &v28, 0xCu);
    }

    return 0;
  }

  v18 = v17;
  if ((v17[33] & 2) == 0 && (*(v17 + 57) & 0x20) != 0)
  {
    v25 = *(v17 + 16);
    if (v25)
    {
      sub_100038740(v25);
      *(v18 + 64) = 0;
    }

    sub_100000A50((v18 + 56), 18432);
    if (*(v18 + 60) || sub_10004A310(*(v18 + 272), v18) || sub_10004CA10(*(v18 + 272), 2))
    {
      sub_100048E58(v18);
    }

    else
    {
      sub_100006544(v18);
      if ((sub_100022F80(v18) & 0x80000000) != 0)
      {
        if (dword_100090058)
        {
          v27 = ne_log_obj();
          if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
          {
            sub_100062E9C();
          }
        }

        sub_100048E58(v18);
        return 0xFFFFFFFFLL;
      }
    }

    return 0;
  }

  if (!dword_100090058)
  {
    return 0;
  }

  v19 = ne_log_obj();
  result = os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT);
  if (result)
  {
    v20 = *(v18 + 56);
    if ((*(v18 + 264) & 2) != 0)
    {
      v21 = "is dying";
    }

    else
    {
      v21 = "has not been established";
    }

    v28 = 136315394;
    *v29 = v21;
    *&v29[8] = 1024;
    v30[0] = v20;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "The expire message is received but the handler %s (status = 0x%x).\n", &v28, 0x12u);
    return 0;
  }

  return result;
}

uint64_t sub_100030978(void *a1)
{
  if (*a1)
  {
    sub_1000069A4(0);
    sub_100006050(0);
    return 0;
  }

  else
  {
    if (dword_100090058)
    {
      v2 = ne_log_obj();
      if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
      {
        sub_100062F14();
      }
    }

    return 0xFFFFFFFFLL;
  }
}

uint64_t sub_1000309E8(void *a1)
{
  if (*a1 && (v2 = a1[5]) != 0 && (v3 = a1[6]) != 0 && (v4 = a1[18]) != 0)
  {
    v14 = 0u;
    memset(v13, 0, sizeof(v13));
    LOBYTE(v13[0]) = *(v4 + 6);
    v6 = *(v2 + 8);
    v5 = v2 + 8;
    BYTE8(v14) = *(v5 - 3);
    BYTE9(v14) = *(v3 + 5);
    WORD5(v14) = *(v5 - 4);
    __memcpy_chk();
    v7 = *(v3 + 8);
    __memcpy_chk();
    v8 = sub_1000324C4(v13);
    if (v8)
    {
      v9 = v8;
      sub_100033010(v8);
      sub_100032CF8(v9);
    }

    else if (dword_100090058)
    {
      v12 = ne_log_obj();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_100062F50(v13);
      }
    }

    return (sub_10002EB10(a1) >> 31);
  }

  else
  {
    if (dword_100090058)
    {
      v10 = ne_log_obj();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_100062FD0();
      }
    }

    return 0xFFFFFFFFLL;
  }
}

uint64_t sub_100030B6C(void *a1)
{
  if (*a1 && (v2 = a1[5]) != 0 && (v3 = a1[6]) != 0 && (v4 = a1[18]) != 0)
  {
    v14 = 0u;
    memset(v13, 0, sizeof(v13));
    LOBYTE(v13[0]) = *(v4 + 6);
    v6 = *(v2 + 8);
    v5 = v2 + 8;
    BYTE8(v14) = *(v5 - 3);
    BYTE9(v14) = *(v3 + 5);
    WORD5(v14) = *(v5 - 4);
    __memcpy_chk();
    v7 = *(v3 + 8);
    __memcpy_chk();
    v8 = sub_1000324C4(v13);
    if (v8)
    {
      v9 = v8;
      if (dword_100090058)
      {
        v10 = ne_log_obj();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          sub_10006300C(v13);
        }
      }

      sub_100033010(v9);
      sub_100032CF8(v9);
    }

    return (sub_10002EB10(a1) >> 31);
  }

  else
  {
    if (dword_100090058)
    {
      v12 = ne_log_obj();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_10006308C();
      }
    }

    return 0xFFFFFFFFLL;
  }
}

uint64_t sub_100030CF0(void *a1)
{
  if (*a1 && (v1 = a1[5]) != 0 && (v2 = a1[6]) != 0 && (v3 = a1[18]) != 0)
  {
    v13 = 0u;
    memset(v12, 0, sizeof(v12));
    LOBYTE(v12[0]) = *(v3 + 6);
    v5 = *(v1 + 8);
    v4 = v1 + 8;
    BYTE8(v13) = *(v4 - 3);
    BYTE9(v13) = *(v2 + 5);
    WORD5(v13) = *(v4 - 4);
    __memcpy_chk();
    v6 = *(v2 + 8);
    __memcpy_chk();
    v7 = sub_1000324C4(v12);
    if (v7)
    {
      v8 = v7;
      sub_100007990(*(v3 + 8), 1);
      sub_100033010(v8);
      sub_100032CF8(v8);
      return 0;
    }

    if (dword_100090058)
    {
      v11 = ne_log_obj();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_1000630C8(v12);
      }
    }
  }

  else if (dword_100090058)
  {
    v10 = ne_log_obj();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_100063148();
    }
  }

  return 0xFFFFFFFFLL;
}

uint64_t sub_100030E74(void *a1)
{
  if (*a1)
  {
    return 0;
  }

  if (!dword_100090058)
  {
    return 0xFFFFFFFFLL;
  }

  v2 = ne_log_obj();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    sub_100063184();
  }

  return 0xFFFFFFFFLL;
}

uint64_t sub_100030EE0(void *a1)
{
  if (!*a1)
  {
    if (!dword_100090058)
    {
      return 0xFFFFFFFFLL;
    }

    v8 = ne_log_obj();
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      return 0xFFFFFFFFLL;
    }

LABEL_15:
    sub_1000631C0();
    return 0xFFFFFFFFLL;
  }

  v2 = a1[5];
  v3 = a1[6];
  v4 = a1[18];
  if (v2)
  {
    v5 = v3 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (v5 || v4 == 0)
  {
    if (!dword_100090058)
    {
      return 0xFFFFFFFFLL;
    }

    v7 = ne_log_obj();
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      return 0xFFFFFFFFLL;
    }

    goto LABEL_15;
  }

  v17 = 0u;
  memset(v16, 0, sizeof(v16));
  LOBYTE(v16[0]) = *(v4 + 6);
  v11 = *(v2 + 8);
  v10 = v2 + 8;
  BYTE8(v17) = *(v10 - 3);
  BYTE9(v17) = *(v3 + 5);
  WORD5(v17) = *(v10 - 4);
  __memcpy_chk();
  v12 = *(v3 + 8);
  __memcpy_chk();
  v13 = sub_1000324C4(v16);
  if (v13)
  {
    v14 = v13;
    if (dword_100090058)
    {
      v15 = ne_log_obj();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        sub_10006300C(v16);
      }
    }

    sub_100033010(v14);
    sub_100032CF8(v14);
  }

  return (sub_10002EB10(a1) >> 31);
}

uint64_t sub_100031094(void *a1)
{
  if (*a1)
  {
    sub_1000069A4(0);
    sub_100006050(0);
    sub_100033058();
    return 0;
  }

  else
  {
    if (dword_100090058)
    {
      v2 = ne_log_obj();
      if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
      {
        sub_1000631FC();
      }
    }

    return 0xFFFFFFFFLL;
  }
}

uint64_t sub_100031108(void *a1)
{
  if (*a1 && (v1 = a1[5]) != 0 && (v2 = a1[6]) != 0 && (v3 = a1[18]) != 0)
  {
    v13 = 0u;
    memset(v12, 0, sizeof(v12));
    LOBYTE(v12[0]) = *(v3 + 6);
    v5 = *(v1 + 8);
    v4 = v1 + 8;
    BYTE8(v13) = *(v4 - 3);
    BYTE9(v13) = *(v2 + 5);
    WORD5(v13) = *(v4 - 4);
    __memcpy_chk();
    v6 = *(v2 + 8);
    __memcpy_chk();
    v7 = sub_1000324C4(v12);
    if (v7)
    {
      v8 = v7;
      sub_100007990(*(v3 + 8), 0);
      sub_100033010(v8);
      sub_100032CF8(v8);
      return 0;
    }

    if (dword_100090058)
    {
      v11 = ne_log_obj();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_1000630C8(v12);
      }
    }
  }

  else if (dword_100090058)
  {
    v10 = ne_log_obj();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_100063238();
    }
  }

  return 0xFFFFFFFFLL;
}

uint64_t sub_10003128C(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 && (v2 = a1[20]) != 0 && (v3 = a1[21]) != 0)
  {
    v4 = *(v1 + 12);
    if (v4 == getpid())
    {
      v5 = *(v2 + 8);
      if (v5)
      {
        v6 = *(v3 + 12);
        if (v6)
        {
          sub_10004B6E8(v5, *(v3 + 4), (v3 + 16), v6);
          return 0;
        }

        if (dword_100090058)
        {
          v11 = ne_log_obj();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
          {
            sub_100063274(v1);
          }
        }
      }

      else if (dword_100090058)
      {
        v10 = ne_log_obj();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
        {
          sub_1000632F0(v1);
        }
      }
    }

    else if (dword_100090058)
    {
      v9 = ne_log_obj();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        sub_1000620D0();
      }
    }
  }

  else if (dword_100090058)
  {
    v8 = ne_log_obj();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10006336C();
    }
  }

  return 0xFFFFFFFFLL;
}

char *sub_100031400(uint64_t a1)
{
  v2 = *(a1 + 1);

  return sub_10003C958(v2);
}

char *sub_100031418(unsigned int *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a2 + 1);

  return sub_10003C958(v4);
}

void sub_100031434(__asl_object_s *a1, int a2, const char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  if ((a2 - 3) <= 4)
  {
    asl_set(a1, "Level", off_1000890A0[a2 - 3]);
    v10 = malloc_type_malloc(0x200uLL, 0x293AD326uLL);
    if (v10)
    {
      v11 = v10;
      *v10 = 0;
      vsnprintf(v10, 0x200uLL, a3, &a9);
      free(v11);
    }
  }
}

void sub_1000314C0(int a1, uint64_t a2, unint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v13 = (a3 >> 2) + 2 * a3 + (a3 >> 5) + 3;
  v14 = malloc_type_malloc(v13, 0x29A231CDuLL);
  if (a3)
  {
    v15 = 0;
    v16 = 0;
    while ((v15 & 0x1F) != 0)
    {
      if ((v15 & 3) == 0)
      {
        v17 = 32;
LABEL_7:
        v14[v16++] = v17;
      }

      snprintf(&v14[v16], v13 - v16, "%02x", *(a2 + v15));
      v16 += 2;
      if (a3 == ++v15)
      {
        v18 = v16;
        goto LABEL_11;
      }
    }

    v17 = 10;
    goto LABEL_7;
  }

  v18 = 0;
LABEL_11:
  if (v13 - v18 >= 2)
  {
    *&v14[v18] = 10;
  }

  __str[0] = 10;
  vsnprintf(__str, 0x200uLL, a4, &a9);
  if (dword_100090058)
  {
    if (a1 <= 2)
    {
      v19 = ne_log_obj();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
      {
        sub_100063498();
      }

      goto LABEL_29;
    }

    if (a1 == 3)
    {
      v20 = ne_log_obj();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        sub_100063420();
      }

      goto LABEL_29;
    }

    if (a1 <= 5)
    {
      v21 = ne_log_obj();
      if (!os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_29;
      }

      *buf = 136315394;
      v27 = __str;
      v28 = 2080;
      v29 = v14;
      v22 = v21;
      v23 = OS_LOG_TYPE_DEFAULT;
LABEL_26:
      _os_log_impl(&_mh_execute_header, v22, v23, "%s %s", buf, 0x16u);
      goto LABEL_29;
    }

    v24 = ne_log_obj();
    v25 = v24;
    if (a1 == 6)
    {
      if (!os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
      {
        goto LABEL_29;
      }

      *buf = 136315394;
      v27 = __str;
      v28 = 2080;
      v29 = v14;
      v22 = v25;
      v23 = OS_LOG_TYPE_INFO;
      goto LABEL_26;
    }

    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
    {
      sub_1000633A8();
    }
  }

LABEL_29:
  free(v14);
}

void sub_100031764(uint64_t a1, int a2, int a3, uint64_t a4, uint64_t a5, const char *a6, uint64_t a7, uint64_t a8, char a9)
{
  if (a1)
  {
    v15 = malloc_type_calloc(1uLL, 0x58uLL, 0x10F0040C24C227BuLL);
    if (v15)
    {
      v16 = v15;
      *a1 = a3;
      v31[1] = &a9;
      *(a1 + 32) = vasprintf((a1 + 24), a6, &a9);
      *(a1 + 40) = a4;
      *(a1 + 48) = a5;
      v17 = *(a1 + 56);
      while (v17)
      {
        v18 = v17;
        v17 = *(v17 + 72);
        if (!v17)
        {
          *(v18 + 72) = v16;
          v16[10] = v18 + 72;
          break;
        }
      }

      if (a2 == 2)
      {
        v31[0] = 0;
        v19 = *(a1 + 56);
        if (v19)
        {
          do
          {
            v20 = *(a1 + 24);
            if (v20)
            {
              v21 = v31[0];
              if (v31[0])
              {
                v30 = *(a1 + 24);
                v31[0] = 0;
                asprintf(v31, "%s\n\t\t-> %s", v21, v30);
                free(v21);
              }

              else
              {
                asprintf(v31, "%s", v20);
              }
            }

            v19 = *(v19 + 72);
          }

          while (v19);
          if (v31[0] && dword_100090058 != 0)
          {
            if (a3 <= 2)
            {
              v23 = ne_log_obj();
              if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
              {
                sub_100063604(v31, v23);
              }

              return;
            }

            if (a3 == 3)
            {
              v24 = ne_log_obj();
              if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
              {
                sub_10006358C(v31);
              }

              return;
            }

            if (a3 <= 5)
            {
              v25 = ne_log_obj();
              if (!os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
              {
                return;
              }

              *buf = 136315138;
              v33 = v31[0];
              v26 = v25;
              v27 = OS_LOG_TYPE_DEFAULT;
LABEL_30:
              _os_log_impl(&_mh_execute_header, v26, v27, "%s", buf, 0xCu);
              return;
            }

            v28 = ne_log_obj();
            v29 = v28;
            if (a3 == 6)
            {
              if (!os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
              {
                return;
              }

              *buf = 136315138;
              v33 = v31[0];
              v26 = v29;
              v27 = OS_LOG_TYPE_INFO;
              goto LABEL_30;
            }

            if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
            {
              sub_100063510(v31, v29);
            }
          }
        }
      }
    }
  }
}

void sub_1000319EC(const char *a1)
{
  if (a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = "bad file path";
  }

  syslog(5, "%s: about to add racoon log file: %s\n", "plogsetfile", v2);
  if (qword_100090030)
  {
    free(qword_100090030);
    if (dword_10008C2CC != -1)
    {
      asl_remove_log_file(qword_100090050, dword_10008C2CC);
      asl_close_auxiliary_file(dword_10008C2CC);
      dword_10008C2CC = -1;
    }
  }

  v3 = strdup(a1);
  qword_100090030 = v3;
  if (!v3)
  {
    if (dword_100090058)
    {
      v8 = ne_log_obj();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        sub_100063680();
      }
    }

    exit(1);
  }

  v4 = open(v3, 777, 420);
  dword_10008C2CC = v4;
  if (v4 < 0)
  {
    v7 = __error();
    syslog(5, "%s: failed to add racoon log file: %s. error %d\n", "plogsetfile", v2, *v7);
  }

  else
  {
    v5 = v4;
    v6 = qword_100090050;

    asl_add_log_file(v6, v5);
  }
}

void sub_100031B34(char *__s2)
{
  v1 = qword_100090030;
  if (!(__s2 | qword_100090030))
  {
    return;
  }

  if (!__s2 || !qword_100090030)
  {
LABEL_7:
    if (!v1)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  if (!strcmp(qword_100090030, __s2))
  {
    return;
  }

  if (dword_10008C2CC != -1)
  {
    asl_remove_log_file(qword_100090050, dword_10008C2CC);
    close(dword_10008C2CC);
    dword_10008C2CC = -1;
    v1 = qword_100090030;
    goto LABEL_7;
  }

LABEL_8:
  free(v1);
  qword_100090030 = 0;
LABEL_9:
  if (__s2)
  {

    sub_1000319EC(__s2);
  }
}

uint64_t sub_100031BF8(int a1)
{
  if ((a1 - 1) >= 7)
  {
    v2 = dword_10008C2C8;
  }

  else
  {
    dword_10008C2C8 = a1;
    v2 = a1;
  }

  v3 = ~(-1 << (v2 + 1)) | ((v2 > 5) << 8);
  syslog(7, "%s: about to set racoon's log level %d, mask %x\n", "plogsetlevel", a1, v3);

  return asl_set_filter(0, v3);
}

uint64_t sub_100031C94(uint64_t result)
{
  if (!result)
  {
    return result;
  }

  v1 = result;
  v2 = strncmp(result, "Emergency", 9uLL);
  if (!v2)
  {
    goto LABEL_21;
  }

  if (!strncmp(v1, "Alert", 5uLL))
  {
    dword_10008C2C8 = 1;
    syslog(7, "%s: about to set racoon's log level %d, mask %x\n", "plogsetlevel", 1, 3);
    v3 = 3;
  }

  else if (!strncmp(v1, "Critical", 8uLL))
  {
    dword_10008C2C8 = 2;
    syslog(7, "%s: about to set racoon's log level %d, mask %x\n", "plogsetlevel", 2, 7);
    v3 = 7;
  }

  else if (!strncmp(v1, "Error", 5uLL))
  {
    dword_10008C2C8 = 3;
    syslog(7, "%s: about to set racoon's log level %d, mask %x\n", "plogsetlevel", 3, 15);
    v3 = 15;
  }

  else if (!strncmp(v1, "Warning", 6uLL))
  {
    dword_10008C2C8 = 4;
    syslog(7, "%s: about to set racoon's log level %d, mask %x\n", "plogsetlevel", 4, 31);
    v3 = 31;
  }

  else
  {
    if (strncmp(v1, "Notice", 6uLL))
    {
      if (!strncmp(v1, "Info", 4uLL))
      {
        v2 = 6;
      }

      else
      {
        result = strncmp(v1, "Debug", 5uLL);
        if (result)
        {
          return result;
        }

        v2 = 7;
      }

LABEL_21:

      return sub_100031BF8(v2);
    }

    dword_10008C2C8 = 5;
    syslog(7, "%s: about to set racoon's log level %d, mask %x\n", "plogsetlevel", 5, 63);
    v3 = 63;
  }

  return asl_set_filter(0, v3);
}

void sub_100031EF0(const char *a1)
{
  if (a1)
  {
    v2 = strlen(a1);
    if (v2 >= 3 && *a1 == 34 && a1[v2 - 1] == 34)
    {
      a1[v2 - 1] = 0;

      sub_100031C94((a1 + 1));
    }

    else if (dword_100090058)
    {
      v3 = ne_log_obj();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        sub_1000636C0();
      }
    }
  }

  else if (dword_100090058)
  {
    v4 = ne_log_obj();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_100063730();
    }
  }
}

void sub_100031FBC()
{
  valuePtr = 0;
  buffer[0] = 0;
  SCPreferencesSynchronize(qword_100090098);
  Value = SCPreferencesGetValue(qword_100090098, @"Global");
  if (Value)
  {
    v1 = Value;
    v2 = CFGetTypeID(Value);
    if (v2 == CFDictionaryGetTypeID())
    {
      v3 = CFDictionaryGetValue(v1, @"DebugLevel");
      if (v3 && (v4 = v3, v5 = CFGetTypeID(v3), v5 == CFNumberGetTypeID()))
      {
        CFNumberGetValue(v4, kCFNumberSInt32Type, &valuePtr);
        sub_100031BF8(valuePtr);
      }

      else
      {
        v6 = CFDictionaryGetValue(v1, @"DebugLevelString");
        if (v6)
        {
          v7 = v6;
          v8 = CFGetTypeID(v6);
          if (v8 == CFStringGetTypeID())
          {
            CFStringGetCString(v7, buffer, 16, 0);
            sub_100031C94(buffer);
          }
        }
      }

      v9 = CFDictionaryGetValue(v1, @"DebugLogfile");
      if (v9)
      {
        v10 = v9;
        v11 = CFGetTypeID(v9);
        if (v11 == CFStringGetTypeID())
        {
          CFStringGetCString(v10, &byte_100090800, 1024, 0);
          sub_1000319EC(&byte_100090800);
        }
      }
    }
  }
}

void sub_100032138()
{
  byte_100090800 = 0;
  qword_100090050 = 0;
  dword_10008C2C8 = 5;
  syslog(7, "%s: about to set racoon's log level %d, mask %x\n", "plogsetlevel", 5, 63);
  asl_set_filter(0, 63);

  sub_100031FBC();
}

char *sub_1000321B0(char *__s1, uint64_t a2, const char *a3)
{
  if (qword_100090038)
  {
    free(qword_100090038);
  }

  if (__s1)
  {
    v6 = strdup(__s1);
    qword_100090038 = v6;
    if (v6)
    {
      free(v6);
    }

    if (a2)
    {
      goto LABEL_7;
    }
  }

  else
  {
    qword_100090038 = 0;
    if (a2)
    {
LABEL_7:
      v7 = strdup(__s1);
      goto LABEL_10;
    }
  }

  v7 = 0;
LABEL_10:
  qword_100090040 = v7;
  if (qword_100090048)
  {
    free(qword_100090048);
  }

  if (a3)
  {
    result = strdup(a3);
  }

  else
  {
    result = 0;
  }

  qword_100090048 = result;
  return result;
}

char *sub_100032254(int a1, CFStringRef theString)
{
  Length = CFStringGetLength(theString);
  MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
  Typed = CFAllocatorAllocateTyped();
  CFStringGetCString(theString, Typed, MaximumSizeForEncoding + 1, 0x8000100u);
  return Typed;
}

void sub_1000322D8(int a1, CFStringRef format, ...)
{
  va_start(va, format);
  v3 = CFStringCreateWithFormatAndArguments(kCFAllocatorDefault, 0, format, va);
  v4 = sub_100032254(kCFAllocatorDefault, v3);
  if (!dword_100090058)
  {
    goto LABEL_17;
  }

  if (a1 <= 2)
  {
    v5 = ne_log_obj();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      sub_100063854();
    }

    goto LABEL_17;
  }

  if (a1 == 3)
  {
    v6 = ne_log_obj();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_1000637E4();
    }

    goto LABEL_17;
  }

  if (a1 <= 5)
  {
    v7 = ne_log_obj();
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_17;
    }

    *buf = 136315138;
    v13 = v4;
    v8 = v7;
    v9 = OS_LOG_TYPE_DEFAULT;
LABEL_14:
    _os_log_impl(&_mh_execute_header, v8, v9, "%s", buf, 0xCu);
    goto LABEL_17;
  }

  v10 = ne_log_obj();
  v11 = v10;
  if (a1 == 6)
  {
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      goto LABEL_17;
    }

    *buf = 136315138;
    v13 = v4;
    v8 = v11;
    v9 = OS_LOG_TYPE_INFO;
    goto LABEL_14;
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    sub_100063770();
  }

LABEL_17:
  CFAllocatorDeallocate(kCFAllocatorDefault, v4);
  CFRelease(v3);
}

uint64_t *sub_1000324C4(unsigned __int8 *a1)
{
  v2 = &qword_10008CD18;
  do
  {
    v2 = *v2;
  }

  while (v2 && sub_100032508(a1, v2 + 16));
  return v2;
}

BOOL sub_100032508(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 1;
  }

  if (a1[264] == a2[264] && a1[265] == a2[265] && *(a1 + 133) == *(a2 + 133) && !sub_100039634((a1 + 8), (a2 + 8)))
  {
    return sub_100039634((a1 + 136), (a2 + 136)) != 0;
  }

  return 1;
}

uint64_t sub_1000325A4(unsigned __int8 *a1, unint64_t *a2)
{
  v2 = qword_10008CD18;
  if (!qword_10008CD18)
  {
    return v2;
  }

  v5 = 0;
  while (1)
  {
    if (sub_1000328F4(a1, (v2 + 16)))
    {
      goto LABEL_36;
    }

    if (*a1)
    {
      v6 = *(v2 + 296);
      if (v6)
      {
        break;
      }
    }

LABEL_34:
    if (!v5)
    {
      return v2;
    }

    v5 = 1;
LABEL_36:
    v2 = *v2;
    if (!v2)
    {
      return v2;
    }
  }

  while (1)
  {
    if (*(v6 + 266) != 2)
    {
      if (dword_100090058)
      {
        v8 = ne_log_obj();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
        {
          v9 = *a1;
          v10 = *(v6 + 266);
          *buf = 136315650;
          v21 = "getsp_r";
          v22 = 1024;
          v23 = v9;
          v24 = 1024;
          v25 = v10;
          _os_log_debug_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "%s, skipping policy. dir %d, mode %d\n", buf, 0x18u);
        }
      }

      goto LABEL_33;
    }

    v7 = *a1;
    if (v7 == 2)
    {
      break;
    }

    if (v7 == 1 && !sub_100039414(a2[1], (v6 + 1)) && !sub_100039414(*a2, (v6 + 17)))
    {
      if (dword_100090058)
      {
        v18 = ne_log_obj();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
        {
          sub_10006394C(v18);
        }
      }

      return v2;
    }

LABEL_17:
    if (dword_100090058)
    {
      v11 = ne_log_obj();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        v16 = *a1;
        *buf = 136315394;
        v21 = "getsp_r";
        v22 = 1024;
        v23 = v16;
        _os_log_debug_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "%s, policy outer addresses matched Phase 2 addresses: dir %d\n", buf, 0x12u);
      }

      if (dword_100090058)
      {
        v12 = ne_log_obj();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
        {
          sub_1000639D0();
        }

        if (dword_100090058)
        {
          v13 = ne_log_obj();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
          {
            sub_100063A20();
          }

          if (dword_100090058)
          {
            v14 = ne_log_obj();
            if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
            {
              sub_100063A70();
            }

            if (dword_100090058)
            {
              v15 = ne_log_obj();
              if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
              {
                sub_100063AC0();
              }
            }
          }
        }
      }
    }

    v5 = 1;
LABEL_33:
    v6 = *v6;
    if (!v6)
    {
      goto LABEL_34;
    }
  }

  if (sub_100039414(*a2, (v6 + 1)) || sub_100039414(a2[1], (v6 + 17)))
  {
    goto LABEL_17;
  }

  if (dword_100090058)
  {
    v19 = ne_log_obj();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      sub_1000638C8(v19);
    }
  }

  return v2;
}

BOOL sub_1000328F4(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a2 && *a1 != *a2)
  {
    return 1;
  }

  v4 = *(a1 + 133);
  if (v4 != 255)
  {
    v5 = *(a2 + 133);
    if (v5 != 255 && v4 != v5)
    {
      return 1;
    }
  }

  if (a1[9] != a2[9] || a1[137] != a2[137])
  {
    return 1;
  }

  memset(v28, 0, sizeof(v28));
  memset(v27, 0, sizeof(v27));
  if (a1[8] > 0x80u || a2[8] >= 0x81u)
  {
    if (dword_100090058)
    {
      v7 = ne_log_obj();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        sub_100063B54(a1 + 8, a2 + 8, v7);
      }
    }

    return 1;
  }

  sub_10003AF44(v28, a1 + 8, a2[264]);
  sub_10003AF44(v27, a2 + 8, a2[264]);
  if (dword_100090058)
  {
    v8 = ne_log_obj();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v13 = a2[264];
      v21 = 134218498;
      v22 = a1;
      v23 = 1024;
      v24 = v13;
      v25 = 2080;
      v26 = sub_10003A5E8(v28);
      _os_log_debug_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "%p masked with /%d: %s\n", &v21, 0x1Cu);
    }

    if (dword_100090058)
    {
      v9 = ne_log_obj();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        v14 = a2[264];
        v15 = sub_10003A5E8(v27);
        v21 = 134218498;
        v22 = a2;
        v23 = 1024;
        v24 = v14;
        v25 = 2080;
        v26 = v15;
        _os_log_debug_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "%p masked with /%d: %s\n", &v21, 0x1Cu);
      }
    }
  }

  if (sub_10003957C(v28, v27))
  {
    return 1;
  }

  if (a1[136] > 0x80u || a2[136] >= 0x81u)
  {
    if (dword_100090058)
    {
      v20 = ne_log_obj();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        sub_100063B10(v20);
      }
    }

    exit(1);
  }

  sub_10003AF44(v28, a1 + 136, a2[265]);
  sub_10003AF44(v27, a2 + 136, a2[265]);
  if (dword_100090058)
  {
    v11 = ne_log_obj();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v16 = a2[265];
      v17 = sub_10003A5E8(v28);
      v21 = 134218498;
      v22 = a1;
      v23 = 1024;
      v24 = v16;
      v25 = 2080;
      v26 = v17;
      _os_log_debug_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "%p masked with /%d: %s\n", &v21, 0x1Cu);
    }

    if (dword_100090058)
    {
      v12 = ne_log_obj();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        v18 = a2[265];
        v19 = sub_10003A5E8(v27);
        v21 = 134218498;
        v22 = a2;
        v23 = 1024;
        v24 = v18;
        v25 = 2080;
        v26 = v19;
        _os_log_debug_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "%p masked with /%d: %s\n", &v21, 0x1Cu);
      }
    }
  }

  return sub_10003957C(v28, v27) != 0;
}

uint64_t *sub_100032CB8(int a1)
{
  result = &qword_10008CD18;
  do
  {
    result = *result;
  }

  while (result && *(result + 72) != a1);
  return result;
}

void sub_100032CF8(void *a1)
{
  v2 = a1[37];
  if (v2)
  {
    do
    {
      v3 = *v2;
      free(v2);
      v2 = v3;
    }

    while (v3);
  }

  free(a1);
}

void sub_100032D44(char *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  if (LOBYTE(__dst[0]) == 2)
  {
    v26 = *(__src + 200);
    v27 = *(__src + 216);
    v28 = *(__src + 232);
    v29 = *(__src + 248);
    v22 = *(__src + 136);
    v23 = *(__src + 152);
    v24 = *(__src + 168);
    v25 = *(__src + 184);
    v16 = *(__src + 40);
    v17 = *(__src + 56);
    v14 = *(__src + 8);
    v15 = *(__src + 24);
    v5 = *(__src + 104);
    v20 = v5;
    v21 = *(__src + 120);
    v18 = *(__src + 72);
    v19 = *(__src + 88);
    v3 = BYTE1(__dst[33]);
    v4 = __dst[33];
  }

  else
  {
    if (LOBYTE(__dst[0]) != 1)
    {
      return;
    }

    v26 = *(__src + 72);
    v27 = *(__src + 88);
    v28 = *(__src + 104);
    v29 = *(__src + 120);
    v22 = *(__src + 8);
    v23 = *(__src + 24);
    v24 = *(__src + 40);
    v25 = *(__src + 56);
    v16 = *(__src + 168);
    v17 = *(__src + 184);
    v14 = *(__src + 136);
    v15 = *(__src + 152);
    v2 = *(__src + 232);
    v20 = v2;
    v21 = *(__src + 248);
    v18 = *(__src + 200);
    v19 = *(__src + 216);
    v3 = __dst[33];
    v4 = BYTE1(__dst[33]);
  }

  *&__dst[9] = v26;
  *&__dst[11] = v27;
  *&__dst[13] = v28;
  *&__dst[15] = v29;
  *&__dst[1] = v22;
  *&__dst[3] = v23;
  *&__dst[5] = v24;
  *&__dst[7] = v25;
  *&__dst[23] = v17;
  *&__dst[21] = v16;
  *&__dst[19] = v15;
  *&__dst[17] = v14;
  *&__dst[31] = v21;
  *&__dst[29] = v20;
  *&__dst[27] = v19;
  *&__dst[25] = v18;
  LOBYTE(__dst[33]) = v3;
  LOBYTE(__dst[0]) = 1;
  v6 = &qword_10008CD18;
  BYTE1(__dst[33]) = v4;
  while (1)
  {
    v6 = *v6;
    if (!v6)
    {
      break;
    }

    if (!sub_100032508(__dst, v6 + 16))
    {
      v7 = *v6;
      v8 = v6[1];
      if (*v6)
      {
        v9 = *v6;
      }

      else
      {
        v9 = &qword_10008CD18;
      }

      v9[1] = v8;
      *v8 = v7;
      sub_100038F0C();
      sub_100032CF8(v6);
      break;
    }
  }

  *&__dst[9] = v18;
  *&__dst[11] = v19;
  *&__dst[13] = v20;
  *&__dst[15] = v21;
  *&__dst[1] = v14;
  *&__dst[3] = v15;
  *&__dst[5] = v16;
  *&__dst[7] = v17;
  *&__dst[23] = v25;
  *&__dst[21] = v24;
  *&__dst[19] = v23;
  *&__dst[17] = v22;
  *&__dst[31] = v29;
  *&__dst[29] = v28;
  *&__dst[27] = v27;
  *&__dst[25] = v26;
  LOBYTE(__dst[33]) = v4;
  BYTE1(__dst[33]) = v3;
  v10 = &qword_10008CD18;
  LOBYTE(__dst[0]) = 2;
  while (1)
  {
    v10 = *v10;
    if (!v10)
    {
      break;
    }

    if (!sub_100032508(__dst, v10 + 16))
    {
      v11 = *v10;
      v12 = v10[1];
      if (*v10)
      {
        v13 = *v10;
      }

      else
      {
        v13 = &qword_10008CD18;
      }

      v13[1] = v12;
      *v12 = v11;
      sub_100038F0C();
      sub_100032CF8(v10);
      return;
    }
  }
}

void sub_100033010(uint64_t **a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = &qword_10008CD18;
  if (*a1)
  {
    v3 = *a1;
  }

  v3[1] = v2;
  *v2 = v1;
  sub_100038F0C();
}

void sub_100033030(void *a1)
{
  v1 = qword_10008CD18;
  *a1 = qword_10008CD18;
  if (!v1)
  {
    v1 = &qword_10008CD18;
  }

  v1[1] = a1;
  qword_10008CD18 = a1;
  a1[1] = &qword_10008CD18;
  sub_100038F0C();
}

void sub_100033058()
{
  v0 = qword_10008CD18;
  if (qword_10008CD18)
  {
    do
    {
      v2 = *v0;
      v1 = v0[1];
      if (*v0)
      {
        v3 = *v0;
      }

      else
      {
        v3 = &qword_10008CD18;
      }

      v3[1] = v1;
      *v1 = v2;
      sub_100038F0C();
      sub_100032CF8(v0);
      v0 = v2;
    }

    while (v2);
  }
}

char *sub_1000330F8(unsigned __int8 *a1)
{
  v2 = sub_10003A5E8((a1 + 8));
  for (i = v2; *i; ++i)
  {
    if (*i == 91)
    {
      *i++ = 0;
      break;
    }
  }

  v4 = snprintf(byte_10008CD28, 0xFFuLL, "%s/%d[%s ", v2, a1[264], i);
  if (v4 > 0xFE)
  {
    return 0;
  }

  v6 = &byte_10008CD28[v4];
  v7 = 255 - v4;
  v8 = sub_10003A5E8((a1 + 136));
  for (j = v8; *j; ++j)
  {
    if (*j == 91)
    {
      *j++ = 0;
      break;
    }
  }

  v10 = snprintf(v6, v7, "%s/%d[%s ", v8, a1[265], j);
  result = 0;
  if ((v10 & 0x80000000) == 0 && v7 > v10)
  {
    v11 = v7 - v10;
    v12 = &v6[v10];
    v13 = sub_10003CAC4(*(a1 + 133));
    v14 = sub_10003CA40(*a1);
    snprintf(v12, v11, "proto=%s dir=%s", v13, v14);
    return byte_10008CD28;
  }

  return result;
}

uint64_t *sub_100033264(uint64_t *result, uint64_t a2)
{
  v2 = *result;
  if (*result)
  {
    do
    {
      v3 = v2;
      v2 = *(v2 + 40);
    }

    while (v2);
    result = (v3 + 40);
  }

  *result = a2;
  return result;
}

void *sub_100033284(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  result = (a1 + 32);
  v3 = v4;
  while (v3)
  {
    v5 = v3;
    v3 = *(v3 + 72);
    if (!v3)
    {
      result = (v5 + 72);
      break;
    }
  }

  *result = a2;
  return result;
}

uint64_t sub_1000332A4(uint64_t result, uint64_t a2)
{
  *(a2 + 72) = *(result + 32);
  *(result + 32) = a2;
  return result;
}

void *sub_1000332D0(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 64);
  result = (a1 + 64);
  v3 = v4;
  while (v3)
  {
    v5 = v3;
    v3 = *(v3 + 16);
    if (!v3)
    {
      result = (v5 + 16);
      break;
    }
  }

  *result = a2;
  return result;
}

uint64_t sub_1000332F0(void *a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a1;
    v3 = *a1;
    if (*a1)
    {
      if (v3 == a2)
      {
LABEL_7:
        result = 0;
        *v2 = *(a2 + 16);
        *(a2 + 16) = 0;
        return result;
      }

      while (1)
      {
        v4 = v3;
        v3 = *(v3 + 16);
        if (!v3)
        {
          break;
        }

        if (v3 == a2)
        {
          v2 = (v4 + 16);
          goto LABEL_7;
        }
      }
    }
  }

  return 0xFFFFFFFFLL;
}

void *sub_10003333C(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v8 = malloc_type_calloc(1uLL, 0x30uLL, 0x10200401AD049D5uLL);
  if (!v8)
  {
    if (dword_100090058)
    {
      v13 = ne_log_obj();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        sub_100064098();
      }
    }

    return 0;
  }

  v9 = v8;
  *v8 = *a2;
  v10 = *(*(a1 + 64) + 172);
  if (v10 > 2)
  {
    if (v10 == 3)
    {
      v18 = *(a2 + 8);
      v19 = *(a3 + 8);
      if (v18 <= v19)
      {
        v8[1] = v18;
      }

      else
      {
        v8[1] = v19;
        *(v8 + 6) |= 1u;
        if (dword_100090058)
        {
          v20 = ne_log_obj();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
          {
            v21 = *(a3 + 8);
            v22 = *(a2 + 8);
            *buf = 67109376;
            *v79 = v21;
            *&v79[4] = 1024;
            *&v79[6] = v22;
            _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "use own lifetime: my:%d peer:%d\n", buf, 0xEu);
          }
        }
      }

      v26 = *(a3 + 16);
      if (*(a2 + 16) > v26)
      {
        *(v9 + 4) = v26;
        *(v9 + 6) |= 1u;
        if (dword_100090058)
        {
          v27 = ne_log_obj();
          if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
          {
            v28 = *(a3 + 16);
            v29 = *(a2 + 16);
            *buf = 67109376;
            *v79 = v28;
            *&v79[4] = 1024;
            *&v79[6] = v29;
            _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "use own lifebyte: my:%d peer:%d\n", buf, 0xEu);
          }
        }
      }

      v23 = *(a2 + 16);
      goto LABEL_39;
    }

    if (v10 == 4)
    {
      v14 = *(a2 + 8);
      if (v14 == *(a3 + 8))
      {
        v15 = *(a2 + 16);
        if (v15 == *(a3 + 16))
        {
          v16 = *(a2 + 20);
          if (v16 == *(a3 + 20))
          {
            v8[1] = v14;
            *(v8 + 4) = v15;
            goto LABEL_45;
          }

          if (dword_100090058)
          {
            v68 = ne_log_obj();
            if (os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
            {
              sub_100063CC4((a3 + 20), (a2 + 20));
            }
          }
        }

        else if (dword_100090058)
        {
          v67 = ne_log_obj();
          if (os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
          {
            sub_100063C54((a3 + 16), (a2 + 16));
          }
        }
      }

      else if (dword_100090058)
      {
        v25 = ne_log_obj();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          sub_100063BE4((a3 + 8), (a2 + 8));
        }
      }

LABEL_165:
      sub_100033F8C(v9);
      return 0;
    }

LABEL_18:
    if (dword_100090058)
    {
      v17 = ne_log_obj();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        sub_100064064();
      }
    }

    goto LABEL_165;
  }

  if (v10 == 1)
  {
    v8[1] = *(a2 + 8);
    *(v8 + 4) = *(a2 + 16);
    v16 = *(a2 + 20);
    goto LABEL_45;
  }

  if (v10 != 2)
  {
    goto LABEL_18;
  }

  v11 = *(a2 + 8);
  if (v11 > *(a3 + 8))
  {
    if (dword_100090058)
    {
      v12 = ne_log_obj();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_100063DA4((a3 + 8), (a2 + 8));
      }
    }

    goto LABEL_165;
  }

  v23 = *(a2 + 16);
  if (v23 > *(a3 + 16))
  {
    if (dword_100090058)
    {
      v24 = ne_log_obj();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        sub_100063D34((a3 + 16), (a2 + 16));
      }
    }

    goto LABEL_165;
  }

  v8[1] = v11;
LABEL_39:
  *(v9 + 4) = v23;
  v16 = *(a3 + 20);
  if (v16)
  {
    if (*(a2 + 20) != v16)
    {
      if (dword_100090058)
      {
        v30 = ne_log_obj();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
        {
          sub_100063CC4((a3 + 20), (a2 + 20));
        }
      }

      goto LABEL_165;
    }
  }

  else
  {
    v16 = *(a2 + 20);
  }

LABEL_45:
  *(v9 + 5) = v16;
  i = *(a2 + 32);
  if (i)
  {
    v32 = 0;
    v33 = *(a2 + 32);
    do
    {
      ++v32;
      v33 = *(v33 + 72);
    }

    while (v33);
  }

  else
  {
    v32 = 0;
  }

  v34 = *(a3 + 32);
  if (v34)
  {
    v35 = 0;
    v36 = *(a3 + 32);
    do
    {
      ++v35;
      v36 = *(v36 + 72);
    }

    while (v36);
  }

  else
  {
    v35 = 0;
  }

  if (v32 != v35)
  {
    goto LABEL_165;
  }

  if (!a4)
  {
    goto LABEL_63;
  }

LABEL_57:
  if (a4 != 1)
  {
    while (1)
    {
LABEL_68:
      v37 = i != 0;
      v38 = v34 != 0;
      if (!i || !v34)
      {
        goto LABEL_129;
      }

      if (*i != *v34)
      {
        if (dword_100090058)
        {
          v69 = ne_log_obj();
          if (os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
          {
            sub_100063E14(v34, i);
          }
        }

        goto LABEL_165;
      }

      v39 = *(i + 8);
      v40 = *(v34 + 8);
      if (v39 != v40)
      {
        if (*i != 4)
        {
          goto LABEL_162;
        }

        if (v39 == 2 && v40 == 4)
        {
          if (!dword_100090058)
          {
            goto LABEL_83;
          }

LABEL_80:
          v41 = ne_log_obj();
          if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
          {
            sub_100063F20(&v76, v77, v41);
          }

          goto LABEL_83;
        }

        if (v40 != 2)
        {
LABEL_162:
          v73 = (v34 + 8);
          if (!dword_100090058)
          {
            goto LABEL_165;
          }

LABEL_163:
          v74 = ne_log_obj();
          if (os_log_type_enabled(v74, OS_LOG_TYPE_ERROR))
          {
            sub_100063EB0(v73, (i + 8));
          }

          goto LABEL_165;
        }

        if (v39 == 4 && dword_100090058)
        {
          goto LABEL_80;
        }

        if (v39 != 4)
        {
          v73 = (v34 + 8);
          if (!dword_100090058)
          {
            goto LABEL_165;
          }

          goto LABEL_163;
        }
      }

LABEL_83:
      if ((*(a1 + 96) & 6) == 0)
      {
        goto LABEL_108;
      }

      if (sub_10003D8E8(*(v34 + 16)))
      {
        v42 = *(v34 + 16);
        v43 = 1;
        if (v42 > 61442)
        {
          if (v42 == 61443)
          {
            goto LABEL_92;
          }

          if (v42 == 61444)
          {
            goto LABEL_91;
          }
        }

        else
        {
          if (v42 != 3)
          {
            if (v42 != 4)
            {
              goto LABEL_93;
            }

LABEL_91:
            v43 = 2;
          }

LABEL_92:
          *(v34 + 16) = v43;
          *(v34 + 20) = 1;
        }

LABEL_93:
        if (dword_100090058)
        {
          v44 = ne_log_obj();
          if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
          {
            v45 = sub_10003C210(v42);
            v46 = sub_10003C210(*(v34 + 16));
            v47 = *(v34 + 16);
            *buf = 136315906;
            *v79 = v45;
            *&v79[8] = 1024;
            v80 = v42;
            v81 = 2080;
            v82 = v46;
            v83 = 1024;
            v84 = v47;
            _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "Adjusting my encmode %s(%d)->%s(%d)\n", buf, 0x22u);
          }
        }
      }

      if (!sub_10003D8E8(*(i + 16)))
      {
        goto LABEL_108;
      }

      v48 = *(i + 16);
      v49 = 1;
      if (v48 <= 61442)
      {
        if (v48 != 3)
        {
          if (v48 != 4)
          {
            goto LABEL_105;
          }

LABEL_103:
          v49 = 2;
        }

LABEL_104:
        *(i + 16) = v49;
        *(i + 20) = 1;
        goto LABEL_105;
      }

      if (v48 == 61443)
      {
        goto LABEL_104;
      }

      if (v48 == 61444)
      {
        goto LABEL_103;
      }

LABEL_105:
      if (dword_100090058)
      {
        v50 = ne_log_obj();
        if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
        {
          v51 = sub_10003C210(v48);
          v52 = sub_10003C210(*(i + 16));
          v53 = *(i + 16);
          *buf = 136315906;
          *v79 = v51;
          *&v79[8] = 1024;
          v80 = v48;
          v81 = 2080;
          v82 = v52;
          v83 = 1024;
          v84 = v53;
          _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_DEFAULT, "Adjusting peer's encmode %s(%d)->%s(%d)\n", buf, 0x22u);
        }
      }

LABEL_108:
      if (*(i + 16) != *(v34 + 16))
      {
        if (dword_100090058)
        {
          v70 = ne_log_obj();
          if (os_log_type_enabled(v70, OS_LOG_TYPE_ERROR))
          {
            sub_100063F60((v34 + 16), (i + 16));
          }
        }

        goto LABEL_165;
      }

      v54 = *(i + 64);
      if (!v54)
      {
        goto LABEL_165;
      }

      while (1)
      {
        v55 = *(v34 + 64);
        if (v55)
        {
          break;
        }

LABEL_113:
        v54 = *(v54 + 16);
        if (!v54)
        {
          goto LABEL_165;
        }
      }

      while (sub_100033DBC(*i, v54, v55))
      {
        v55 = *(v55 + 16);
        if (!v55)
        {
          goto LABEL_113;
        }
      }

      v56 = malloc_type_calloc(1uLL, 0x50uLL, 0x1020040BE967AE7uLL);
      if (!v56)
      {
        if (dword_100090058)
        {
          v71 = ne_log_obj();
          if (os_log_type_enabled(v71, OS_LOG_TYPE_ERROR))
          {
            sub_100064030();
          }
        }

        goto LABEL_165;
      }

      v57 = v56;
      *v56 = *i;
      v56[1] = *(i + 8);
      *(v56 + 4) = *(i + 16);
      *(v56 + 6) = *(v34 + 24);
      *(v56 + 7) = *(i + 24);
      v56[6] = *(v34 + 48);
      *(v56 + 5) = *(v34 + 20) | *(i + 20);
      v58 = malloc_type_calloc(1uLL, 0x18uLL, 0x10200403ED2C137uLL);
      if (!v58)
      {
        if (dword_100090058)
        {
          v72 = ne_log_obj();
          if (os_log_type_enabled(v72, OS_LOG_TYPE_ERROR))
          {
            sub_100063FFC();
          }
        }

        free(v57);
        goto LABEL_165;
      }

      *v58 = *v54;
      v59 = v57 + 8;
      v60 = v57[8];
      while (v60)
      {
        v61 = v60;
        v60 = *(v60 + 16);
        if (!v60)
        {
          v59 = (v61 + 16);
          break;
        }
      }

      *v59 = v58;
      v62 = v9[4];
      while (v62)
      {
        v63 = v62;
        v62 = *(v62 + 72);
        if (!v62)
        {
          v64 = (v63 + 72);
          goto LABEL_126;
        }
      }

      v64 = v9 + 4;
LABEL_126:
      *v64 = v57;
      i = *(i + 72);
      v34 = *(v34 + 72);
      if (a4)
      {
        goto LABEL_57;
      }

LABEL_63:
      if (!i)
      {
        goto LABEL_128;
      }

      v34 = *(a3 + 32);
      if (!v34)
      {
        goto LABEL_128;
      }

      while (*v34 != *i)
      {
        v34 = *(v34 + 72);
        if (!v34)
        {
          goto LABEL_128;
        }
      }
    }
  }

  if (v34)
  {
    for (i = *(a2 + 32); i; i = *(i + 72))
    {
      if (*i == *v34)
      {
        goto LABEL_68;
      }
    }
  }

LABEL_128:
  v37 = i != 0;
  v38 = v34 != 0;
LABEL_129:
  if (v37)
  {
    v65 = v34;
  }

  else
  {
    v65 = 0;
  }

  if (v38)
  {
    v66 = i;
  }

  else
  {
    v66 = 0;
  }

  if (a4 != 1)
  {
    v66 = i;
  }

  if (a4)
  {
    v65 = v34;
  }

  else
  {
    v66 = i;
  }

  if (v66 | v65)
  {
    goto LABEL_165;
  }

  return v9;
}

BOOL sub_100033DBC(int a1, unsigned int *a2, unsigned int *a3)
{
  if (a2[1] != a3[1])
  {
    if (dword_100090058)
    {
      v12 = ne_log_obj();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        v13 = sub_10003C080(a1, a3[1]);
        v14 = sub_10003C080(a1, a2[1]);
        v16 = 136315394;
        *v17 = v13;
        *&v17[8] = 2080;
        v18 = v14;
        _os_log_debug_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "trns_id mismatched: my:%s peer:%s\n", &v16, 0x16u);
      }
    }

    return 1;
  }

  v5 = a2 + 3;
  if (a2[3] != a3[3])
  {
    if (dword_100090058)
    {
      v15 = ne_log_obj();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        sub_1000640CC(a3 + 3, v5);
      }
    }

    return 1;
  }

  if (a2[2] > a3[2] && dword_100090058 != 0)
  {
    v7 = ne_log_obj();
    result = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
    if (!result)
    {
      return result;
    }

    v9 = a3[2];
    v10 = a2[2];
    v16 = 67109376;
    *v17 = v9;
    *&v17[4] = 1024;
    *&v17[6] = v10;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "less key length proposed, mine:%d peer:%d.  Use initiaotr's one.\n", &v16, 0xEu);
  }

  return 0;
}

void sub_100033F8C(uint64_t *a1)
{
  if (a1)
  {
    v1 = a1;
    do
    {
      v2 = v1[5];
      sub_100034914(v1[4]);
      free(v1);
      v1 = v2;
    }

    while (v2);
  }
}

uint64_t sub_100033FCC(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 20) != *(a2 + 20) && dword_100090058 != 0)
  {
    v5 = ne_log_obj();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 20);
      v7 = *(a2 + 20);
      v16 = 67109376;
      v17 = v6;
      v18 = 1024;
      v19 = v7;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "pfs_group mismatch. mine:%d peer:%d\n", &v16, 0xEu);
    }
  }

  if (*(a1 + 8) > *(a2 + 8) && dword_100090058 != 0)
  {
    v9 = ne_log_obj();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(a1 + 8);
      v11 = *(a2 + 8);
      v16 = 67109376;
      v17 = v10;
      v18 = 1024;
      v19 = v11;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "less lifetime proposed. mine:%d peer:%d\n", &v16, 0xEu);
    }
  }

  if (*(a1 + 16) > *(a2 + 16))
  {
    if (dword_100090058)
    {
      v12 = ne_log_obj();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = *(a1 + 16);
        v14 = *(a2 + 16);
        v16 = 67109376;
        v17 = v13;
        v18 = 1024;
        v19 = v14;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "less lifebyte proposed. mine:%d peer:%d\n", &v16, 0xEu);
      }
    }
  }

  return 0;
}

uint64_t sub_100034194(uint64_t a1, void *a2, int a3)
{
  v5 = *a1;
  if (*a1 == 4)
  {
    v23 = a2[8];
    if (!v23)
    {
      if (dword_100090058)
      {
        v41 = ne_log_obj();
        if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
        {
          sub_100064174();
        }
      }

      goto LABEL_66;
    }

    v24 = (a1 + 64);
    v25 = 1;
    while (1)
    {
      v26 = malloc_type_calloc(1uLL, 0x18uLL, 0x10200403ED2C137uLL);
      if (!v26)
      {
        break;
      }

      v27 = *v23;
      *v26 = v25;
      v26[1] = v27;
      v26[3] = 254;
      v28 = *v24;
      while (v28)
      {
        v29 = v28;
        v28 = *(v28 + 16);
        if (!v28)
        {
          v30 = (v29 + 16);
          goto LABEL_39;
        }
      }

      v30 = (a1 + 64);
LABEL_39:
      *v30 = v26;
      v23 = *(v23 + 1);
      ++v25;
      if (!v23)
      {
        goto LABEL_40;
      }
    }

    if (!dword_100090058)
    {
      goto LABEL_66;
    }

    v43 = ne_log_obj();
    if (!os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_66;
    }

LABEL_65:
    sub_100063FFC();
    goto LABEL_66;
  }

  if (v5 != 3)
  {
    if (v5 != 2)
    {
      if (dword_100090058)
      {
        v32 = ne_log_obj();
        if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
        {
          sub_100064244(a1, v32, v33, v34, v35, v36, v37, v38);
        }
      }

      goto LABEL_66;
    }

    v6 = a2[7];
    if (!v6)
    {
      if (dword_100090058)
      {
        v42 = ne_log_obj();
        if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
        {
          sub_100064210();
        }
      }

      goto LABEL_66;
    }

    v7 = (a1 + 64);
    v8 = 1;
    while (1)
    {
      if (*v6 != 254)
      {
        v9 = malloc_type_calloc(1uLL, 0x18uLL, 0x10200403ED2C137uLL);
        if (!v9)
        {
          if (dword_100090058)
          {
            v45 = ne_log_obj();
            if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_65;
            }
          }

LABEL_66:
          v46 = *(a1 + 64);
          if (v46)
          {
            do
            {
              v47 = v46[2];
              free(v46);
              v46 = v47;
            }

            while (v47);
          }

          return 0xFFFFFFFFLL;
        }

        v10 = v9;
        *v9 = v8;
        v9[1] = sub_10000F568(*v6);
        v10[3] = *v6;
        v11 = *v7;
        while (v11)
        {
          v12 = v11;
          v11 = *(v11 + 16);
          if (!v11)
          {
            v13 = (v12 + 16);
            goto LABEL_13;
          }
        }

        v13 = (a1 + 64);
LABEL_13:
        *v13 = v10;
        ++v8;
      }

      v6 = *(v6 + 8);
      if (!v6)
      {
        goto LABEL_40;
      }
    }
  }

  v14 = a2[6];
  if (!v14)
  {
    if (dword_100090058)
    {
      v40 = ne_log_obj();
      if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
      {
        sub_1000641A8();
      }
    }

    goto LABEL_66;
  }

  if (a3 == 16)
  {
    v15 = (a1 + 64);
    v16 = 1;
    while (1)
    {
      v17 = a2[7];
      if (v17)
      {
        break;
      }

      v19 = v16;
LABEL_29:
      v14 = v14[1];
      v16 = v19;
      if (!v14)
      {
        goto LABEL_40;
      }
    }

    while (1)
    {
      v18 = malloc_type_calloc(1uLL, 0x18uLL, 0x10200403ED2C137uLL);
      if (!v18)
      {
        break;
      }

      v19 = (v16 + 1);
      *v18 = v16;
      *(v18 + 4) = *v14;
      *(v18 + 3) = *v17;
      v20 = *v15;
      while (v20)
      {
        v21 = v20;
        v20 = *(v20 + 16);
        if (!v20)
        {
          v22 = (v21 + 16);
          goto LABEL_26;
        }
      }

      v22 = (a1 + 64);
LABEL_26:
      *v22 = v18;
      v17 = *(v17 + 8);
      LODWORD(v16) = v16 + 1;
      if (!v17)
      {
        goto LABEL_29;
      }
    }

    if (!dword_100090058)
    {
      goto LABEL_66;
    }

    v44 = ne_log_obj();
    if (!os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_66;
    }

    goto LABEL_65;
  }

LABEL_40:
  if (!*(a1 + 64))
  {
    if (dword_100090058)
    {
      v39 = ne_log_obj();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
      {
        sub_1000641DC();
      }
    }

    return 0xFFFFFFFFLL;
  }

  return 0;
}

void *sub_10003454C(void *result)
{
  if (result)
  {
    do
    {
      v1 = result[2];
      free(result);
      result = v1;
    }

    while (v1);
  }

  return result;
}

uint64_t *sub_100034580(uint64_t *a1)
{
  if (a1)
  {
    v1 = a1;
    v2 = malloc_type_calloc(1uLL, 0x30uLL, 0x10200401AD049D5uLL);
    if (v2)
    {
      v3 = v2;
      *v2 = *(*v1 + 4);
      v4 = v2 + 4;
      while (1)
      {
        v5 = malloc_type_calloc(1uLL, 0x50uLL, 0x1020040BE967AE7uLL);
        if (!v5)
        {
          if (dword_100090058)
          {
            v25 = ne_log_obj();
            if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
            {
              sub_100064030();
            }
          }

          goto LABEL_34;
        }

        v6 = v5;
        v7 = *(*v1 + 6);
        if (v7 >= 5)
        {
          break;
        }

        *v5 = *(*v1 + 5);
        v5[1] = v7;
        *(v5 + 6) = 0;
        memcpy(v5 - *(*v1 + 6) + 28, (*v1 + 8), *(*v1 + 6));
        v6[6] = 0;
        v8 = v1;
        do
        {
          if (dword_100090058)
          {
            v9 = ne_log_obj();
            if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
            {
              v36 = *(*v8 + 4);
              v35 = sub_10003BE54(*(*v8 + 5));
              v15 = v8[1];
              v16 = v4;
              v17 = *(*v8 + 6);
              v33 = *(*v8 + 7);
              v34 = *(v15 + 4);
              v18 = sub_10003C080(*(*v8 + 5), *(v15 + 5));
              *buf = 67110402;
              v38 = v36;
              v39 = 2080;
              v40 = v35;
              v41 = 1024;
              v42 = v17;
              v4 = v16;
              v43 = 1024;
              v44 = v33;
              v45 = 1024;
              v46 = v34;
              v47 = 2080;
              v48 = v18;
              _os_log_debug_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "prop#=%d prot-id=%s spi-size=%d #trns=%d trns#=%d trns-id=%s\n", buf, 0x2Eu);
            }
          }

          v10 = malloc_type_calloc(1uLL, 0x18uLL, 0x10200403ED2C137uLL);
          if (!v10)
          {
            if (dword_100090058)
            {
              v23 = ne_log_obj();
              if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
              {
                sub_100063FFC();
              }
            }

            goto LABEL_33;
          }

          v11 = v10;
          if ((sub_10000EDF8(v8[1], v3, v6, v10) & 0x80000000) != 0)
          {
            sub_100033F8C(v3);
            free(v11);
            free(v6);
            return 0;
          }

          v12 = v6[8];
          while (v12)
          {
            v13 = v12;
            v12 = *(v12 + 16);
            if (!v12)
            {
              v14 = (v13 + 16);
              goto LABEL_17;
            }
          }

          v14 = v6 + 8;
LABEL_17:
          *v14 = v11;
          v8 = v8[3];
        }

        while (v8);
        if (!*(v6 + 4))
        {
          *(v6 + 4) = 2;
        }

        v19 = *v4;
        while (v19)
        {
          v20 = v19;
          v19 = *(v19 + 72);
          if (!v19)
          {
            v21 = (v20 + 72);
            goto LABEL_25;
          }
        }

        v21 = v4;
LABEL_25:
        *v21 = v6;
        v1 = v1[2];
        if (!v1)
        {
          return v3;
        }
      }

      if (dword_100090058)
      {
        v26 = ne_log_obj();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          sub_1000642B4(v1, v26, v27, v28, v29, v30, v31, v32);
        }
      }

LABEL_33:
      free(v6);
LABEL_34:
      sub_100033F8C(v3);
    }

    else if (dword_100090058)
    {
      v22 = ne_log_obj();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        sub_100064098();
      }
    }
  }

  return 0;
}

void sub_100034914(uint64_t a1)
{
  if (a1)
  {
    v1 = a1;
    do
    {
      v2 = *(v1 + 64);
      v3 = *(v1 + 72);
      if (v2)
      {
        do
        {
          v4 = v2[2];
          free(v2);
          v2 = v4;
        }

        while (v4);
      }

      sub_10003D4F0(*(v1 + 32));
      sub_10003D4F0(*(v1 + 40));
      free(v1);
      v1 = v3;
    }

    while (v3);
  }
}

void sub_10003497C(int a1, uint64_t a2)
{
  if (a2)
  {
    v3 = a2;
    do
    {
      for (i = *(v3 + 32); i; i = *(i + 72))
      {
        sub_100034B1C(a1, i);
      }

      v3 = *(v3 + 40);
    }

    while (v3);
    return;
  }

  if (!dword_100090058)
  {
    return;
  }

  if (a1 <= 2)
  {
    v5 = ne_log_obj();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      sub_10006439C();
    }

    return;
  }

  if (a1 == 3)
  {
    v6 = ne_log_obj();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_100064368();
    }

    return;
  }

  if (a1 <= 5)
  {
    v7 = ne_log_obj();
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    v14 = 0;
    v8 = &v14;
    v9 = v7;
    v10 = OS_LOG_TYPE_DEFAULT;
    goto LABEL_20;
  }

  v11 = ne_log_obj();
  v12 = v11;
  if (a1 == 6)
  {
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      return;
    }

    v13 = 0;
    v8 = &v13;
    v9 = v12;
    v10 = OS_LOG_TYPE_INFO;
LABEL_20:
    _os_log_impl(&_mh_execute_header, v9, v10, "(null)", v8, 2u);
    return;
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    sub_100064328();
  }
}

void sub_100034AD8(int a1, uint64_t a2)
{
  if (a2)
  {
    for (i = *(a2 + 32); i; i = *(i + 72))
    {
      sub_100034B1C(a1, i);
    }
  }
}

void sub_100034B1C(int a1, int *a2)
{
  if (!a2)
  {
    return;
  }

  if (dword_100090058)
  {
    if (a1 <= 2)
    {
      v4 = ne_log_obj();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
      {
        sub_100064518();
      }

      goto LABEL_18;
    }

    if (a1 == 3)
    {
      v5 = ne_log_obj();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        sub_10006447C();
      }

      goto LABEL_18;
    }

    if (a1 <= 5)
    {
      v6 = ne_log_obj();
      if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_18;
      }

      v7 = sub_10003BE54(*a2);
      v8 = *(a2 + 1);
      v9 = bswap32(a2[6]);
      v10 = bswap32(a2[7]);
      v11 = sub_10003C2F8(4, a2[4]);
      v13 = a2[12];
      v12 = a2[13];
      v26 = 136316674;
      v27 = v7;
      v28 = 1024;
      v29 = v8;
      v30 = 2048;
      v31 = v9;
      v32 = 2048;
      v33 = v10;
      v34 = 2080;
      v35 = v11;
      v36 = 1024;
      v37 = v12;
      v38 = 1024;
      v39 = v13;
      v14 = v6;
      v15 = OS_LOG_TYPE_DEFAULT;
      goto LABEL_15;
    }

    v16 = ne_log_obj();
    v17 = v16;
    if (a1 != 6)
    {
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        sub_1000643DC();
      }

      goto LABEL_18;
    }

    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v18 = sub_10003BE54(*a2);
      v19 = *(a2 + 1);
      v20 = bswap32(a2[6]);
      v21 = bswap32(a2[7]);
      v22 = sub_10003C2F8(4, a2[4]);
      v24 = a2[12];
      v23 = a2[13];
      v26 = 136316674;
      v27 = v18;
      v28 = 1024;
      v29 = v19;
      v30 = 2048;
      v31 = v20;
      v32 = 2048;
      v33 = v21;
      v34 = 2080;
      v35 = v22;
      v36 = 1024;
      v37 = v23;
      v38 = 1024;
      v39 = v24;
      v14 = v17;
      v15 = OS_LOG_TYPE_INFO;
LABEL_15:
      _os_log_impl(&_mh_execute_header, v14, v15, " (proto_id=%s spisize=%d spi=%08lx spi_p=%08lx encmode=%s reqid=%d:%d)\n", &v26, 0x3Cu);
    }
  }

LABEL_18:
  for (i = *(a2 + 8); i; i = *(i + 16))
  {
    sub_100034DA4(a1, *a2, i);
  }
}

void sub_100034DA4(int a1, uint64_t a2, unsigned int *a3)
{
  if (!a3)
  {
    return;
  }

  if (a2 == 4)
  {
    if (!dword_100090058)
    {
      return;
    }

    if (a1 <= 2)
    {
      v8 = ne_log_obj();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
      {
        sub_1000646CC(a3);
      }

      return;
    }

    if (a1 == 3)
    {
      v11 = ne_log_obj();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_100064644(a3);
      }

      return;
    }

    if (a1 > 5)
    {
      v39 = ne_log_obj();
      v40 = v39;
      if (a1 != 6)
      {
        if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
        {
          sub_1000645B8(a3);
        }

        return;
      }

      if (!os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
      {
        return;
      }

      v41 = sub_10003C080(4, a3[1]);
      v48 = 136315138;
      v49 = v41;
      v24 = "  (trns_id=%s)\n";
      v25 = v40;
      v26 = OS_LOG_TYPE_INFO;
    }

    else
    {
      v27 = ne_log_obj();
      if (!os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        return;
      }

      v28 = sub_10003C080(4, a3[1]);
      v48 = 136315138;
      v49 = v28;
      v24 = "  (trns_id=%s)\n";
      v25 = v27;
      v26 = OS_LOG_TYPE_DEFAULT;
    }

    v38 = 12;
LABEL_61:
    _os_log_impl(&_mh_execute_header, v25, v26, v24, &v48, v38);
    return;
  }

  if (a2 == 3)
  {
    if (!dword_100090058)
    {
      return;
    }

    if (a1 <= 2)
    {
      v7 = ne_log_obj();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
      {
        sub_10006486C();
      }

      return;
    }

    if (a1 == 3)
    {
      v10 = ne_log_obj();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_1000647E4();
      }

      return;
    }

    if (a1 > 5)
    {
      v33 = ne_log_obj();
      v34 = v33;
      if (a1 != 6)
      {
        if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
        {
          sub_100064758();
        }

        return;
      }

      if (!os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
      {
        return;
      }

      v35 = sub_10003C080(3, a3[1]);
      v36 = a3[2];
      v37 = sub_10003C2F8(5, a3[3]);
      v48 = 136315650;
      v49 = v35;
      v50 = 1024;
      LODWORD(v51[0]) = v36;
      WORD2(v51[0]) = 2080;
      *(v51 + 6) = v37;
      v24 = "  (trns_id=%s encklen=%d authtype=%s)\n";
      v25 = v34;
      v26 = OS_LOG_TYPE_INFO;
    }

    else
    {
      v20 = ne_log_obj();
      if (!os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        return;
      }

      v21 = sub_10003C080(3, a3[1]);
      v22 = a3[2];
      v23 = sub_10003C2F8(5, a3[3]);
      v48 = 136315650;
      v49 = v21;
      v50 = 1024;
      LODWORD(v51[0]) = v22;
      WORD2(v51[0]) = 2080;
      *(v51 + 6) = v23;
      v24 = "  (trns_id=%s encklen=%d authtype=%s)\n";
      v25 = v20;
      v26 = OS_LOG_TYPE_DEFAULT;
    }

    v38 = 28;
    goto LABEL_61;
  }

  if (a2 != 2)
  {
    if (!dword_100090058)
    {
      return;
    }

    if (a1 <= 2)
    {
      v9 = ne_log_obj();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
      {
        sub_100064B94(a2, v9);
      }

      return;
    }

    if (a1 == 3)
    {
      v13 = ne_log_obj();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        sub_100064B28(a2, v13, v14, v15, v16, v17, v18, v19);
      }

      return;
    }

    if (a1 > 5)
    {
      v46 = ne_log_obj();
      v47 = v46;
      if (a1 != 6)
      {
        if (os_log_type_enabled(v46, OS_LOG_TYPE_DEBUG))
        {
          sub_100064AB0(a2, v47);
        }

        return;
      }

      if (!os_log_type_enabled(v46, OS_LOG_TYPE_INFO))
      {
        return;
      }

      v48 = 67109120;
      LODWORD(v49) = a2;
      v24 = "(unknown proto_id %d)\n";
      v25 = v47;
      v26 = OS_LOG_TYPE_INFO;
    }

    else
    {
      v32 = ne_log_obj();
      if (!os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
      {
        return;
      }

      v48 = 67109120;
      LODWORD(v49) = a2;
      v24 = "(unknown proto_id %d)\n";
      v25 = v32;
      v26 = OS_LOG_TYPE_DEFAULT;
    }

    v38 = 8;
    goto LABEL_61;
  }

  if (!dword_100090058)
  {
    return;
  }

  if (a1 <= 2)
  {
    v6 = ne_log_obj();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      sub_100064A1C();
    }

    return;
  }

  if (a1 == 3)
  {
    v12 = ne_log_obj();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_10006498C();
    }

    return;
  }

  if (a1 <= 5)
  {
    v29 = ne_log_obj();
    if (!os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    v30 = sub_10003C080(2, a3[1]);
    v31 = sub_10003C2F8(5, a3[3]);
    v48 = 136315394;
    v49 = v30;
    v50 = 2080;
    v51[0] = v31;
    v24 = "  (trns_id=%s authtype=%s)\n";
    v25 = v29;
    v26 = OS_LOG_TYPE_DEFAULT;
LABEL_56:
    v38 = 22;
    goto LABEL_61;
  }

  v42 = ne_log_obj();
  v43 = v42;
  if (a1 == 6)
  {
    if (!os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
    {
      return;
    }

    v44 = sub_10003C080(2, a3[1]);
    v45 = sub_10003C2F8(5, a3[3]);
    v48 = 136315394;
    v49 = v44;
    v50 = 2080;
    v51[0] = v45;
    v24 = "  (trns_id=%s authtype=%s)\n";
    v25 = v43;
    v26 = OS_LOG_TYPE_INFO;
    goto LABEL_56;
  }

  if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
  {
    sub_1000648F8();
  }
}

void sub_100035350(uint64_t a1, uint64_t a2, int a3)
{
  memset(v27, 32, 20);
  if (a3 <= 19)
  {
    *(v27 + a3) = 0;
  }

  if (dword_100090058)
  {
    if (a1 <= 2)
    {
      v6 = ne_log_obj();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
      {
        sub_100064CFC(v27, a2);
      }

      goto LABEL_19;
    }

    if (a1 == 3)
    {
      v7 = ne_log_obj();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        sub_100064C88(v27, a2);
      }

      goto LABEL_19;
    }

    if (a1 <= 5)
    {
      v8 = ne_log_obj();
      if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_19;
      }

      v9 = *(a2 + 16);
      v10 = *(a2 + 24);
      v19 = 136315906;
      v20 = v27;
      v21 = 2048;
      v22 = a2;
      v23 = 2048;
      v24 = v9;
      v25 = 2048;
      v26 = v10;
      v11 = v8;
      v12 = OS_LOG_TYPE_DEFAULT;
LABEL_16:
      _os_log_impl(&_mh_execute_header, v11, v12, "%s%p: next=%p tnext=%p\n", &v19, 0x2Au);
      goto LABEL_19;
    }

    v13 = ne_log_obj();
    v14 = v13;
    if (a1 == 6)
    {
      if (!os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        goto LABEL_19;
      }

      v15 = *(a2 + 16);
      v16 = *(a2 + 24);
      v19 = 136315906;
      v20 = v27;
      v21 = 2048;
      v22 = a2;
      v23 = 2048;
      v24 = v15;
      v25 = 2048;
      v26 = v16;
      v11 = v14;
      v12 = OS_LOG_TYPE_INFO;
      goto LABEL_16;
    }

    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      sub_100064C0C(v27, a2);
    }
  }

LABEL_19:
  v17 = *(a2 + 16);
  if (v17)
  {
    sub_100035350(a1, v17, (a3 + 1));
  }

  v18 = *(a2 + 24);
  if (v18)
  {
    sub_100035350(a1, v18, (a3 + 1));
  }
}

uint64_t sub_10003557C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = 1;
  v7 = malloc_type_calloc(1uLL, 0x30uLL, 0x10200401AD049D5uLL);
  if (!v7)
  {
    if (dword_100090058)
    {
      v13 = ne_log_obj();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        sub_100064098();
      }
    }

    return 0xFFFFFFFFLL;
  }

  v8 = v7;
  *v7 = 1;
  v9 = *(a1 + 112);
  v7[1] = *(v9 + 24);
  v7[2] = *(v9 + 32);
  if (!*(qword_1000900B8 + 312))
  {
    v10 = (a2 + 296);
    do
    {
      v10 = *v10;
      if (!v10)
      {
        v6 = 1;
        goto LABEL_13;
      }
    }

    while (*(v10 + 266) != 2);
    v11 = sub_10002CE60(2u);
    v6 = v11;
    v12 = *(a1 + 256);
    if (v12 && (*(v12 + 96) & 6) != 0)
    {
      v6 = v11 + *(*(v12 + 88) + 12);
    }
  }

LABEL_13:
  v14 = *(a2 + 296);
  if (v14)
  {
    while (1)
    {
      v15 = malloc_type_calloc(1uLL, 0x50uLL, 0x1020040BE967AE7uLL);
      if (!v15)
      {
        break;
      }

      v16 = v15;
      v17 = sub_10000D158(*(v14 + 132));
      *v16 = v17;
      if (v17 == 4)
      {
        v18 = 2;
      }

      else
      {
        v18 = 4;
      }

      v16[1] = v18;
      if (*(qword_1000900B8 + 312))
      {
        v19 = sub_10002CE60(*(v14 + 266));
        v6 = v19;
        *(v16 + 4) = v19;
        v20 = *(a1 + 256);
        if (v20 && (*(v20 + 96) & 6) != 0)
        {
          *(v16 + 4) = v19 + *(*(v20 + 88) + 12);
        }
      }

      else
      {
        *(v16 + 4) = v6;
      }

      v21 = *(v14 + 67);
      if (*(a1 + 60))
      {
        *(v16 + 13) = v21;
      }

      else
      {
        *(v16 + 12) = v21;
      }

      if ((sub_100034194(v16, *(a1 + 112), *(a1 + 61)) & 0x80000000) != 0)
      {
        if (dword_100090058)
        {
          v34 = ne_log_obj();
          if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
          {
            sub_100064D78();
          }
        }

        free(v16);
        goto LABEL_56;
      }

      v16[9] = v8[4];
      v8[4] = v16;
      v14 = *v14;
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    if (dword_100090058)
    {
      v33 = ne_log_obj();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        sub_100064030();
      }
    }

LABEL_56:
    sub_100033F8C(v8);
    return 0xFFFFFFFFLL;
  }

LABEL_28:
  if (a3)
  {
    v22 = v8[4];
    v23 = *(a3 + 296);
    v24 = v23 != 0;
    v25 = v22 != 0;
    if (v23 && v22)
    {
      v26 = *(a1 + 60);
      do
      {
        v27 = *(v23 + 67);
        if (v26)
        {
          *(v22 + 48) = v27;
        }

        else
        {
          *(v22 + 52) = v27;
        }

        v22 = *(v22 + 72);
        v23 = *v23;
        v24 = v23 != 0;
        v25 = v22 != 0;
        if (v23)
        {
          v28 = v22 == 0;
        }

        else
        {
          v28 = 1;
        }
      }

      while (!v28);
    }

    if ((v25 || v24) && dword_100090058 != 0)
    {
      v30 = ne_log_obj();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        *v35 = 0;
        _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "There is a difference between the in/out bound policies in SPD.\n", v35, 2u);
      }
    }
  }

  *(a1 + 120) = v8;
  sub_100049618(a1);
  for (i = v8[4]; i; i = *(i + 72))
  {
    sub_100034B1C(7, i);
  }

  return 0;
}

uint64_t sub_1000358D0(uint64_t a1)
{
  v29 = 0;
  if (*(a1 + 61) != 16)
  {
    return 0xFFFFFFFFLL;
  }

  v2 = sub_1000085B8(*(a1 + 224), 1u);
  if (v2)
  {
    v3 = 0;
    v4 = 0;
    while (1)
    {
      v5 = v2[v3];
      if (v5)
      {
        if (v4)
        {
          sub_100033F8C(v4);
          v5 = v2[v3];
        }

        v4 = sub_100034580(v5);
        if (!v4)
        {
          goto LABEL_41;
        }

        v6 = malloc_type_calloc(1uLL, 0x30uLL, 0x10200401AD049D5uLL);
        if (!v6)
        {
          if (dword_100090058)
          {
            v26 = ne_log_obj();
            if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
            {
              sub_100064098();
            }
          }

          goto LABEL_41;
        }

        v7 = v6;
        *v6 = 1;
        v8 = *(a1 + 112);
        v6[1] = *(v8 + 24);
        v6[2] = *(v8 + 32);
        if (v4[5])
        {
          v9 = dword_100090058 == 0;
        }

        else
        {
          v9 = 1;
        }

        if (!v9)
        {
          v10 = ne_log_obj();
          if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
          {
            sub_100064DAC(&v27, v28, v10);
          }
        }

        v11 = v4[4];
        if (v11)
        {
          while (1)
          {
            v12 = malloc_type_calloc(1uLL, 0x50uLL, 0x1020040BE967AE7uLL);
            if (!v12)
            {
              break;
            }

            v13 = v12;
            *v12 = *v11;
            *(v12 + 1) = *(v11 + 8);
            v12[4] = *(v11 + 16);
            v12[6] = 0;
            v12[7] = *(v11 + 24);
            *(v12 + 6) = 0;
            if ((sub_100034194(v12, *(a1 + 112), *(a1 + 61)) & 0x80000000) != 0)
            {
              if (dword_100090058)
              {
                v21 = ne_log_obj();
                if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
                {
                  sub_100064D78();
                }
              }

              free(v13);
              goto LABEL_40;
            }

            v14 = v7[4];
            while (v14)
            {
              v15 = v14;
              v14 = *(v14 + 72);
              if (!v14)
              {
                v16 = (v15 + 72);
                goto LABEL_23;
              }
            }

            v16 = v7 + 4;
LABEL_23:
            *v16 = v13;
            v11 = *(v11 + 72);
            if (!v11)
            {
              goto LABEL_24;
            }
          }

          if (dword_100090058)
          {
            v20 = ne_log_obj();
            if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
            {
              sub_100064030();
            }
          }

LABEL_40:
          free(v7);
          goto LABEL_41;
        }

LABEL_24:
        v17 = v29;
        if (v29)
        {
          do
          {
            v18 = v17;
            v17 = v17[5];
          }

          while (v17);
          v19 = (v18 + 5);
        }

        else
        {
          v19 = &v29;
        }

        *v19 = v7;
      }

      if (++v3 == 256)
      {
        if (dword_100090058)
        {
          v23 = ne_log_obj();
          if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
          {
            sub_100064DEC();
          }
        }

        v24 = v29;
        if (v29)
        {
          for (i = v29[4]; i; i = *(i + 72))
          {
            sub_100034B1C(7, i);
          }
        }

        *(a1 + 120) = v24;
        sub_100049618(a1);
        if (v4)
        {
          sub_100033F8C(v4);
          v4 = 0;
        }

        goto LABEL_46;
      }
    }
  }

  v4 = 0;
LABEL_41:
  if (v29)
  {
    sub_100033F8C(v29);
  }

  if (v4)
  {
    sub_100033F8C(v4);
  }

  v4 = 0xFFFFFFFFLL;
  if (v2)
  {
LABEL_46:
    sub_100008E2C(v2);
  }

  return v4;
}

uint64_t sub_100035BF4(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (!v1)
  {
    return 0;
  }

  while (*(v1 + 16) != 1)
  {
    v1 = *(v1 + 72);
    if (!v1)
    {
      return 0;
    }
  }

  return 1;
}

__n128 sub_100035C20(__n128 *a1)
{
  v2 = malloc_type_calloc(1uLL, 0x18uLL, 0x10200403ED2C137uLL);
  if (v2)
  {
    result = *a1;
    *v2 = *a1;
  }

  return result;
}

_OWORD *sub_100035C68(_OWORD *result, uint64_t a2)
{
  if (a2)
  {
    v2 = a2;
    v3 = result + 4;
    do
    {
      result = malloc_type_calloc(1uLL, 0x18uLL, 0x10200403ED2C137uLL);
      if (!result)
      {
        break;
      }

      *result = *v2;
      v4 = *v3;
      while (v4)
      {
        v5 = v4;
        v4 = *(v4 + 16);
        if (!v4)
        {
          v6 = (v5 + 16);
          goto LABEL_9;
        }
      }

      v6 = v3;
LABEL_9:
      *v6 = result;
      v2 = *(v2 + 16);
    }

    while (v2);
  }

  return result;
}

void *sub_100035CF4(void *result, uint64_t a2, int a3)
{
  if (a2)
  {
    v4 = a2;
    v5 = result + 4;
    do
    {
      result = malloc_type_calloc(1uLL, 0x50uLL, 0x1020040BE967AE7uLL);
      if (!result)
      {
        break;
      }

      v6 = result;
      *result = *v4;
      result[1] = *(v4 + 8);
      result[2] = *(v4 + 16);
      if (!a3)
      {
        result[3] = *(v4 + 24);
        result[6] = *(v4 + 48);
      }

      result = sub_100035C68(result, *(v4 + 64));
      v7 = *v5;
      while (v7)
      {
        v8 = v7;
        v7 = *(v7 + 72);
        if (!v7)
        {
          v9 = (v8 + 72);
          goto LABEL_11;
        }
      }

      v9 = v5;
LABEL_11:
      *v9 = v6;
      v4 = *(v4 + 72);
    }

    while (v4);
  }

  return result;
}

uint64_t sub_100035DC0(uint64_t result, int a2)
{
  v9 = 0;
  if (result)
  {
    v3 = result;
    do
    {
      v4 = malloc_type_calloc(1uLL, 0x30uLL, 0x10200401AD049D5uLL);
      if (!v4)
      {
        break;
      }

      v5 = v4;
      *v4 = *v3;
      v4[1] = *(v3 + 8);
      v4[2] = *(v3 + 16);
      *(v4 + 6) = *(v3 + 24);
      sub_100035CF4(v4, *(v3 + 32), a2);
      v6 = v9;
      if (v9)
      {
        do
        {
          v7 = v6;
          v6 = *(v6 + 40);
        }

        while (v6);
        v8 = (v7 + 40);
      }

      else
      {
        v8 = &v9;
      }

      *v8 = v5;
      v3 = *(v3 + 40);
    }

    while (v3);
    return v9;
  }

  return result;
}

char *sub_100035F2C()
{
  v2 = *(v0 + 8);
  v3 = bswap32(*(v0 + 24));
  v4 = bswap32(*(v0 + 28));
  v5 = *(v0 + 16);

  return sub_10003C2F8(4, v5);
}

unsigned int *sub_100035F64@<X0>(unsigned int *result@<X0>, unsigned int *a2@<X1>, uint64_t a3@<X8>)
{
  *(v3 - 8) = a3;
  v4 = *result;
  v5 = *a2;
  return result;
}

uint64_t *sub_100035F80@<X0>(uint64_t *result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  *(v3 - 8) = a3;
  v4 = *result;
  v5 = *a2;
  return result;
}

char *sub_100035F90(uint64_t a1)
{
  v2 = *(a1 + 4);

  return sub_10003C080(3, v2);
}

void sub_100035FAC(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 8u);
}

char *sub_100035FC8()
{
  v3 = *(v0 + 8);
  v2 = *(v0 + 12);

  return sub_10003C2F8(5, v2);
}

char *sub_100035FE4()
{
  v2 = *(v0 + 12);

  return sub_10003C2F8(5, v2);
}

_DWORD *sub_100036000(sockaddr *a1, int a2)
{
  p_sa_family = &a1->sa_family;
  sa_family = a1->sa_family;
  if (a1->sa_family)
  {
    if (sa_family != 2 && sa_family != 30)
    {
      if (dword_100090058)
      {
        v12 = ne_log_obj();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          sub_100064F40(p_sa_family, v12);
        }
      }

      return 0;
    }

    v7 = *a1->sa_data;
    v8 = *a1->sa_data == 0;
    if (getnameinfo(a1, a1->sa_len, v34, 0x401u, v33, 0x20u, 10))
    {
      __strlcpy_chk();
      __strlcpy_chk();
    }

    v9 = "[";
    v10 = &unk_100080609;
    if (v7)
    {
      v11 = v33;
    }

    else
    {
      v9 = &unk_100080609;
      v11 = &unk_100080609;
    }

    if (v7)
    {
      v10 = "]";
    }

    snprintf(__str, 0x42BuLL, "%s%s%s%s", v34, v9, v11, v10);
  }

  else
  {
    strcpy(__str, "anonymous");
    v8 = 1;
  }

  v13 = qword_10008CE28;
  if (!qword_10008CE28)
  {
LABEL_75:
    if (dword_100090058)
    {
      v31 = ne_log_obj();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
      {
        sub_100064EFC(v31);
      }
    }

    return 0;
  }

  v14 = 0;
  v15 = 0;
  v16 = 0;
  v17 = 0;
  v18 = 0;
  do
  {
    if (!*p_sa_family && !*(*v13 + 1))
    {
      if (!dword_100090058)
      {
        return v13;
      }

      v26 = ne_log_obj();
      if (!os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
      {
        return v13;
      }

      goto LABEL_55;
    }

    v19 = v13[2];
    v20 = *v13;
    if (!v19)
    {
      if (v8)
      {
        if (!sub_100039414(a1, v20))
        {
          goto LABEL_56;
        }

        goto LABEL_45;
      }

      if (sub_100039634(a1, v20))
      {
        if (!sub_100039414(a1, *v13))
        {
          v14 = v13;
        }

        goto LABEL_45;
      }

LABEL_56:
      if (!dword_100090058)
      {
        return v13;
      }

      v27 = ne_log_obj();
      if (!os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
      {
        return v13;
      }

LABEL_55:
      sub_100064E2C();
      return v13;
    }

    if (v8)
    {
      if (sub_10003949C(a1, v20, v19))
      {
        goto LABEL_45;
      }

LABEL_37:
      v23 = v13[2];
      v24 = v23 < v17;
      if (v23 > v17)
      {
        v17 = v13[2];
      }

      if (!v24)
      {
        v15 = v13;
      }

      goto LABEL_45;
    }

    if (!sub_1000396DC(a1, v20, v19))
    {
      goto LABEL_37;
    }

    if (!sub_10003949C(a1, *v13, v13[2]))
    {
      v21 = v13[2];
      v22 = v21 < v17;
      if (v21 > v17)
      {
        v17 = v13[2];
      }

      if (!v22)
      {
        v16 = v13;
      }
    }

LABEL_45:
    if (!*(*v13 + 1))
    {
      v18 = v13;
    }

    v13 = *(v13 + 38);
  }

  while (v13);
  if (v14)
  {
    if (dword_100090058)
    {
      v25 = ne_log_obj();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
      {
        sub_100064E2C();
      }
    }

    return v14;
  }

  if (v15)
  {
    if (dword_100090058)
    {
      v28 = ne_log_obj();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
      {
        sub_100064E2C();
      }
    }

    return v15;
  }

  if (v16)
  {
    if (dword_100090058)
    {
      v29 = ne_log_obj();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
      {
        sub_100064E2C();
      }
    }

    return v16;
  }

  if (!a2 || !v18)
  {
    goto LABEL_75;
  }

  if (dword_100090058)
  {
    v30 = ne_log_obj();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
    {
      sub_100064E94();
    }
  }

  return v18;
}

uint64_t sub_100036414(uint64_t result)
{
  v1 = qword_10008CE28;
  if (!qword_10008CE28)
  {
    return 1;
  }

  if (result)
  {
    while (!*(*v1 + 1))
    {
      v1 = v1[38];
      if (!v1)
      {
        return 1;
      }
    }

    return 0;
  }

  return result;
}

_DWORD *sub_100036448(sockaddr *a1)
{
  result = sub_100036000(a1, 1);
  if (!result)
  {
    if (a1->sa_family != 30)
    {
      return 0;
    }

    v6 = 0;
    v5 = 0;
    v4 = 528;
    v3 = 0uLL;
    if (!sub_100046964(&v3))
    {
      return 0;
    }

    nw_nat64_extract_v4();
    result = sub_100036448(&v4);
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

_DWORD *sub_1000364F8()
{
  v0 = malloc_type_calloc(1uLL, 0x140uLL, 0x10A004000D84CD7uLL);
  v1 = v0;
  if (v0)
  {
    v0[71] = 0;
    *(v0 + 31) = 0;
    *(v0 + 3) = 0x100000001;
    *(v0 + 36) = 0x1000000001;
    v0[8] = 0;
    v2 = sub_10000433C();
    *(v1 + 34) = xmmword_10006CDE0;
    *(v1 + 26) = xmmword_10006CDF0;
    *(v1 + 7) = v2;
    *(v1 + 15) = 0x100000001;
    *(v1 + 38) = xmmword_10006CE00;
    *(v1 + 25) = *(qword_1000900B8 + 268);
    *(v1 + 42) = xmmword_10006CE10;
    v1[46] = 1;
    *(v1 + 10) = 0u;
    *(v1 + 13) = xmmword_10006CE20;
    *(v1 + 28) = 1;
    v1[60] = 0;
    *(v1 + 34) = 0;
    v1[70] = 1;
  }

  return v1;
}

void *sub_1000365F0(sockaddr *a1)
{
  v2 = sub_100036000(a1, 0);
  if (v2)
  {

    return sub_100036670(v2);
  }

  else
  {
    if (dword_100090058)
    {
      v4 = ne_log_obj();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        sub_100064FBC(a1, v4);
      }
    }

    return 0;
  }
}

void *sub_100036670(void **a1)
{
  v2 = malloc_type_calloc(1uLL, 0x140uLL, 0x10A004000D84CD7uLL);
  v3 = v2;
  if (v2)
  {
    memcpy(v2, a1, 0x140uLL);
    *v3 = 0;
    v3[37] = 0;
    v3[9] = 0;
    v3[31] = 0;
    *(v3 + 284) = &_mh_execute_header;
    v3[11] = 0;
    v3[12] = 0;
    v3[34] = 0;
    v3[5] = 0;
    v3[6] = 0;
    v4 = v3[2];
    if (v4)
    {
      v3[2] = sub_1000367F0(v4);
    }

    v5 = sub_10000433C();
    v3[7] = v5;
    sub_100004420(a1[7], sub_100036724, v5);
  }

  return v3;
}

uint64_t sub_100036724(uint64_t a1, uint64_t a2)
{
  v4 = malloc_type_calloc(1uLL, 0x10uLL, 0x1020040D5A9D86FuLL);
  if (!v4)
  {
    return -1;
  }

  v5 = v4;
  *v4 = 4;
  if (sub_10000DD30(v4 + 1, *a1, *(a1 + 8)))
  {
    free(v5);
    return -1;
  }

  *v5 = *a1;
  sub_1000043CC(a2, v5);
  return 0;
}

_DWORD *sub_1000367B4()
{
  result = malloc_type_calloc(1uLL, 0x10uLL, 0x1020040D5A9D86FuLL);
  if (result)
  {
    *result = 4;
  }

  return result;
}

void *sub_1000367F0(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = malloc_type_malloc(0x10uLL, 0x1020040D5A9D86FuLL);
  v3 = v2;
  if (v2)
  {
    *v2 = *a1;
    v2[1] = 0;
    if (*(a1 + 8))
    {
      v2[1] = sub_1000367F0();
    }
  }

  return v3;
}

void sub_10003685C(void *a1)
{
  v2 = *a1;
  if (v2)
  {
    free(v2);
  }

  v3 = a1[37];
  if (v3)
  {
    free(v3);
  }

  if (a1[34])
  {
    sub_1000456D0(a1 + 34);
  }

  v4 = a1[2];
  if (v4)
  {
    sub_100036988(v4);
    a1[2] = 0;
  }

  v5 = a1[5];
  if (v5)
  {
    sub_10003D4F0(v5);
  }

  v6 = a1[7];
  if (v6)
  {
    sub_1000044AC(v6, sub_1000369C8);
  }

  v7 = a1[24];
  if (v7)
  {
    sub_1000271B4(v7);
  }

  v8 = a1[31];
  if (v8)
  {
    sub_100036A04(v8);
  }

  v9 = a1[33];
  if (v9)
  {
    do
    {
      v10 = v9[2];
      v11 = v9[3];
      if (v10)
      {
        do
        {
          v12 = v10[12];
          v13 = v10[6];
          if (v13)
          {
            free(v13);
          }

          v14 = v10[7];
          if (v14)
          {
            free(v14);
          }

          free(v10);
          v10 = v12;
        }

        while (v12);
      }

      free(v9);
      v9 = v11;
    }

    while (v11);
  }

  v15 = a1[11];
  if (v15)
  {
    sub_10003D4F0(v15);
  }

  v16 = a1[9];
  if (v16)
  {
    sub_10003D4F0(v16);
  }

  v17 = a1[12];
  if (v17)
  {
    sub_10003D4F0(v17);
  }

  free(a1);
}

void sub_100036988(void *a1)
{
  if (a1[1])
  {
    sub_100036988();
  }

  free(a1);
}

void sub_1000369C8(void **a1)
{
  sub_10003D4F0(a1[1]);

  free(a1);
}

void sub_100036A04(void *a1)
{
  v2 = a1[8];
  if (v2)
  {
    sub_1000271B4(v2);
  }

  if (a1[10])
  {
    sub_100036A04();
  }

  free(a1);
}

uint64_t sub_100036A50(uint64_t result)
{
  v1 = qword_10008CE28;
  *(result + 304) = qword_10008CE28;
  qword_10008CE28 = result;
  if (v1)
  {
    v2 = (v1 + 312);
  }

  else
  {
    v2 = &qword_10008CE30;
  }

  *v2 = result + 304;
  *(result + 312) = &qword_10008CE28;
  *(result + 284) = 1;
  return result;
}

uint64_t sub_100036A8C(uint64_t result)
{
  if (*(result + 284))
  {
    v1 = *(result + 304);
    v2 = *(result + 312);
    v3 = (v1 + 312);
    if (!v1)
    {
      v3 = &qword_10008CE30;
    }

    *v3 = v2;
    *v2 = v1;
  }

  *(result + 284) = 0;
  return result;
}

void sub_100036ACC(void *a1)
{
  v1 = *(a1 + 72);
  v2 = __OFSUB__(v1--, 1);
  *(a1 + 72) = v1;
  if ((v1 < 0) ^ v2 | (v1 == 0))
  {
    if (*(a1 + 71))
    {
      v3 = a1[38];
      v4 = a1[39];
      v5 = (v3 + 312);
      if (!v3)
      {
        v5 = &qword_10008CE30;
      }

      *v5 = v4;
      *v4 = v3;
    }

    *(a1 + 71) = 0;
    sub_10003685C(a1);
  }
}

uint64_t sub_100036B10()
{
  result = qword_10008CE28;
  if (qword_10008CE28)
  {
    do
    {
      v1 = *(result + 304);
      if (*(result + 284))
      {
        v2 = *(result + 312);
        v3 = (v1 + 312);
        if (!v1)
        {
          v3 = &qword_10008CE30;
        }

        *v3 = v2;
        *v2 = v1;
      }

      *(result + 284) = 0;
      v4 = *(result + 288);
      v5 = __OFSUB__(v4--, 1);
      *(result + 288) = v4;
      if ((v4 < 0) ^ v5 | (v4 == 0))
      {
        sub_10003685C(result);
      }

      result = v1;
    }

    while (v1);
  }

  return result;
}

uint64_t sub_100036B98(uint64_t a1, int a2)
{
  for (result = *(a1 + 16); result; result = *(result + 8))
  {
    if (*result == a2)
    {
      break;
    }
  }

  return result;
}

_DWORD *sub_100036BB8()
{
  result = malloc_type_calloc(1uLL, 0x60uLL, 0x1020040CE8B1C45uLL);
  if (result)
  {
    result[14] = -1;
    *(result + 10) = 0;
    *(result + 11) = 0;
  }

  return result;
}

uint64_t sub_100036BF8(uint64_t result, uint64_t a2)
{
  *(result + 88) = a2;
  v4 = *(a2 + 248);
  v2 = (a2 + 248);
  v3 = v4;
  if (v4)
  {
    do
    {
      v5 = v3;
      v3 = *(v3 + 80);
    }

    while (v3);
    v2 = (v5 + 80);
  }

  *v2 = result;
  return result;
}

uint64_t sub_100036C1C(uint64_t (*a1)(uint64_t, uint64_t), uint64_t a2)
{
  v2 = **(qword_10008CE30 + 8);
  if (!v2)
  {
    return 0;
  }

  while (1)
  {
    result = a1(v2, a2);
    if (result)
    {
      break;
    }

    v2 = **(*(v2 + 312) + 8);
    if (!v2)
    {
      return 0;
    }
  }

  return result;
}

void sub_100036C80()
{
  for (i = qword_10008CE30; ; i = *(v2 + 312))
  {
    v1 = *(i + 8);
    v2 = *v1;
    if (!*v1 || sub_100036CC4(*v1))
    {
      break;
    }
  }
}

uint64_t sub_100036CC4(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 248);
  v4 = *(a1 + 8);
  v5 = *a1;
  if (v4)
  {
    v6 = sub_10003A820(v5, v4);
  }

  else
  {
    v6 = sub_10003A5E8(v5);
  }

  v7 = snprintf(__str, 0x400uLL, "remote %s", v6);
  v8 = *(a1 + 256);
  if (v8)
  {
    v9 = &__str[v7];
    v10 = 1024 - v7;
    v11 = sub_10003A5E8(*v8);
    snprintf(v9, v10, " inherit %s", v11);
  }

  if (dword_100090058)
  {
    v12 = ne_log_obj();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      *v84 = __str;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%s {\n", buf, 0xCu);
    }
  }

  strcpy(__str, "\texchange_type ");
  if (v2)
  {
    v13 = (__str | 0xF);
    do
    {
      v14 = sub_10003CBD4(*v2);
      if (*(v2 + 8))
      {
        v15 = ", ";
      }

      else
      {
        v15 = ";\n";
      }

      v13 += snprintf(v13, &v88 - v13, "%s%s", v14, v15);
      v2 = *(v2 + 8);
    }

    while (v2);
  }

  if (dword_100090058)
  {
    v16 = ne_log_obj();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      *v84 = __str;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
    }

    if (dword_100090058)
    {
      v17 = ne_log_obj();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v18 = sub_10003CB78(*(a1 + 24));
        *buf = 136315138;
        *v84 = v18;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "\tdoi %s;\n", buf, 0xCu);
      }
    }
  }

  v19 = sub_10003CCE4(*(a1 + 32));
  v20 = snprintf(__str, 0x400uLL, "\tmy_identifier %s", v19);
  if (*(a1 + 32) != 5)
  {
    v27 = *(a1 + 40);
    if (v27)
    {
      snprintf(&__str[v20], 1024 - v20, " %s", *(v27 + 8));
    }

    if (dword_100090058)
    {
      v28 = ne_log_obj();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        *v84 = __str;
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "%s;\n", buf, 0xCu);
      }
    }

    sub_100004420(*(a1 + 56), sub_100037A3C, 0);
    goto LABEL_36;
  }

  if (dword_100090058)
  {
    v21 = ne_log_obj();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      *v84 = __str;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "%s;\n", buf, 0xCu);
    }
  }

  v22 = *(a1 + 108);
  if (v22)
  {
    if (v22 == 1)
    {
      if (!dword_100090058)
      {
        goto LABEL_85;
      }

      v23 = ne_log_obj();
      if (!os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_36;
      }

      *buf = 0;
      v24 = "\t/* peers certificate from payload */\n";
      v25 = v23;
      v26 = 2;
      goto LABEL_55;
    }

    if (!dword_100090058)
    {
      goto LABEL_85;
    }

    v40 = ne_log_obj();
    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
    {
      v41 = *(a1 + 108);
      *buf = 67109120;
      *v84 = v41;
      v24 = "\tpeers_certfile *UNKNOWN* (%d)\n";
      v25 = v40;
      v26 = 8;
LABEL_55:
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, v24, buf, v26);
    }
  }

LABEL_36:
  if (dword_100090058)
  {
    v29 = ne_log_obj();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      v30 = sub_10003CD48(*(a1 + 116));
      *buf = 136315138;
      *v84 = v30;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "\tsend_cert %s;\n", buf, 0xCu);
    }

    if (dword_100090058)
    {
      v31 = ne_log_obj();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        v32 = sub_10003CD48(*(a1 + 120));
        *buf = 136315138;
        *v84 = v32;
        _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "\tsend_cr %s;\n", buf, 0xCu);
      }

      if (dword_100090058)
      {
        v33 = ne_log_obj();
        if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
        {
          v34 = sub_10003CD48(*(a1 + 124));
          *buf = 136315138;
          *v84 = v34;
          _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "\tverify_cert %s;\n", buf, 0xCu);
        }

        if (dword_100090058)
        {
          v35 = ne_log_obj();
          if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
          {
            v36 = sub_10003CD48(*(a1 + 136));
            *buf = 136315138;
            *v84 = v36;
            _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "\tverify_identifier %s;\n", buf, 0xCu);
          }

          if (dword_100090058)
          {
            v37 = ne_log_obj();
            if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
            {
              v38 = *(a1 + 176);
              if (v38 == 2)
              {
                v39 = "force";
              }

              else
              {
                v39 = sub_10003CD48(v38);
              }

              *buf = 136315138;
              *v84 = v39;
              _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "\tnat_traversal %s;\n", buf, 0xCu);
            }

            if (dword_100090058)
            {
              v42 = ne_log_obj();
              if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
              {
                v43 = sub_10003CD48(*(a1 + 180));
                *buf = 136315138;
                *v84 = v43;
                _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "\tnatt_multiple_user %s;\n", buf, 0xCu);
              }

              if (dword_100090058)
              {
                v44 = ne_log_obj();
                if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
                {
                  v45 = *(a1 + 140);
                  *buf = 67109120;
                  *v84 = v45;
                  _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "\tnonce_size %d;\n", buf, 8u);
                }

                if (dword_100090058)
                {
                  v46 = ne_log_obj();
                  if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
                  {
                    v47 = sub_10003CD48(*(a1 + 144));
                    *buf = 136315138;
                    *v84 = v47;
                    _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEFAULT, "\tpassive %s;\n", buf, 0xCu);
                  }

                  if (dword_100090058)
                  {
                    v48 = ne_log_obj();
                    if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
                    {
                      v49 = *(a1 + 148);
                      if (v49 == 2)
                      {
                        v50 = "force";
                      }

                      else
                      {
                        v50 = sub_10003CD48(v49);
                      }

                      *buf = 136315138;
                      *v84 = v50;
                      _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEFAULT, "\tike_frag %s;\n", buf, 0xCu);
                    }

                    if (dword_100090058)
                    {
                      v51 = ne_log_obj();
                      if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
                      {
                        v52 = *(a1 + 152);
                        *buf = 67109120;
                        *v84 = v52;
                        _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_DEFAULT, "\tesp_frag %d;\n", buf, 8u);
                      }

                      if (dword_100090058)
                      {
                        v53 = ne_log_obj();
                        if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
                        {
                          v54 = sub_10003CD48(*(a1 + 168));
                          *buf = 136315138;
                          *v84 = v54;
                          _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_DEFAULT, "\tinitial_contact %s;\n", buf, 0xCu);
                        }

                        if (dword_100090058)
                        {
                          v55 = ne_log_obj();
                          if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
                          {
                            v56 = sub_10003CD48(*(a1 + 164));
                            *buf = 136315138;
                            *v84 = v56;
                            _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_DEFAULT, "\tgenerate_policy %s;\n", buf, 0xCu);
                          }

                          if (dword_100090058)
                          {
                            v57 = ne_log_obj();
                            if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
                            {
                              v58 = sub_10003CD48(*(a1 + 160));
                              *buf = 136315138;
                              *v84 = v58;
                              _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_DEFAULT, "\tsupport_proxy %s;\n", buf, 0xCu);
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

LABEL_85:
  while (v3)
  {
    if (dword_100090058)
    {
      v59 = ne_log_obj();
      if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v59, OS_LOG_TYPE_DEFAULT, "\n", buf, 2u);
      }

      if (dword_100090058)
      {
        v60 = ne_log_obj();
        if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
        {
          v62 = *(v3 + 4);
          v61 = *(v3 + 8);
          v63 = sub_10003A5E8(**(v3 + 88));
          *buf = 67109634;
          *v84 = v62;
          *&v84[4] = 1024;
          *&v84[6] = v61;
          v85 = 2080;
          v86 = v63;
          _os_log_impl(&_mh_execute_header, v60, OS_LOG_TYPE_DEFAULT, "\t/* prop_no=%d, trns_no=%d, rmconf=%s */\n", buf, 0x18u);
        }

        if (dword_100090058)
        {
          v64 = ne_log_obj();
          if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v64, OS_LOG_TYPE_DEFAULT, "\tproposal {\n", buf, 2u);
          }

          if (dword_100090058)
          {
            v65 = ne_log_obj();
            if (os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT))
            {
              v66 = *(v3 + 16);
              *buf = 134217984;
              *v84 = v66;
              _os_log_impl(&_mh_execute_header, v65, OS_LOG_TYPE_DEFAULT, "\t\tlifetime time %lu sec;\n", buf, 0xCu);
            }

            if (dword_100090058)
            {
              v67 = ne_log_obj();
              if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
              {
                v68 = *(v3 + 32);
                *buf = 134217984;
                *v84 = v68;
                _os_log_impl(&_mh_execute_header, v67, OS_LOG_TYPE_DEFAULT, "\t\tlifetime bytes %zd;\n", buf, 0xCu);
              }

              if (dword_100090058)
              {
                v69 = ne_log_obj();
                if (os_log_type_enabled(v69, OS_LOG_TYPE_DEFAULT))
                {
                  v70 = sub_1000019B4(*(v3 + 60));
                  *buf = 136315138;
                  *v84 = v70;
                  _os_log_impl(&_mh_execute_header, v69, OS_LOG_TYPE_DEFAULT, "\t\tdh_group %s;\n", buf, 0xCu);
                }

                if (dword_100090058)
                {
                  v71 = ne_log_obj();
                  if (os_log_type_enabled(v71, OS_LOG_TYPE_DEFAULT))
                  {
                    v72 = sub_1000015F0(*(v3 + 40));
                    *buf = 136315138;
                    *v84 = v72;
                    _os_log_impl(&_mh_execute_header, v71, OS_LOG_TYPE_DEFAULT, "\t\tencryption_algorithm %s;\n", buf, 0xCu);
                  }

                  if (dword_100090058)
                  {
                    v73 = ne_log_obj();
                    if (os_log_type_enabled(v73, OS_LOG_TYPE_DEFAULT))
                    {
                      v74 = sub_100001344(*(v3 + 52));
                      *buf = 136315138;
                      *v84 = v74;
                      _os_log_impl(&_mh_execute_header, v73, OS_LOG_TYPE_DEFAULT, "\t\thash_algorithm %s;\n", buf, 0xCu);
                    }

                    if (dword_100090058)
                    {
                      v75 = ne_log_obj();
                      if (os_log_type_enabled(v75, OS_LOG_TYPE_DEFAULT))
                      {
                        v76 = sub_100001344(*(v3 + 72));
                        *buf = 136315138;
                        *v84 = v76;
                        _os_log_impl(&_mh_execute_header, v75, OS_LOG_TYPE_DEFAULT, "\t\tprf_algorithm %s;\n", buf, 0xCu);
                      }

                      if (dword_100090058)
                      {
                        v77 = ne_log_obj();
                        if (os_log_type_enabled(v77, OS_LOG_TYPE_DEFAULT))
                        {
                          v78 = sub_100001A14(*(v3 + 48));
                          *buf = 136315138;
                          *v84 = v78;
                          _os_log_impl(&_mh_execute_header, v77, OS_LOG_TYPE_DEFAULT, "\t\tauthentication_method %s;\n", buf, 0xCu);
                        }

                        if (dword_100090058)
                        {
                          v79 = ne_log_obj();
                          if (os_log_type_enabled(v79, OS_LOG_TYPE_DEFAULT))
                          {
                            *buf = 0;
                            _os_log_impl(&_mh_execute_header, v79, OS_LOG_TYPE_DEFAULT, "\t}\n", buf, 2u);
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

    v3 = *(v3 + 80);
  }

  if (dword_100090058)
  {
    v80 = ne_log_obj();
    if (os_log_type_enabled(v80, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v80, OS_LOG_TYPE_DEFAULT, "}\n", buf, 2u);
    }

    if (dword_100090058)
    {
      v81 = ne_log_obj();
      if (os_log_type_enabled(v81, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v81, OS_LOG_TYPE_DEFAULT, "\n", buf, 2u);
      }
    }
  }

  return 0;
}

_DWORD *sub_1000379A8(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = malloc_type_calloc(1uLL, 0x60uLL, 0x1020040CE8B1C45uLL);
  v3 = v2;
  if (v2)
  {
    v2[14] = -1;
    *(v2 + 10) = 0;
    *(v2 + 11) = 0;
    v4 = *(a1 + 32);
    v5 = *(a1 + 48);
    v6 = *(a1 + 64);
    *(v2 + 5) = *(a1 + 80);
    v7 = *(a1 + 16);
    *v2 = *a1;
    *(v2 + 1) = v7;
    *(v2 + 3) = v5;
    *(v2 + 4) = v6;
    *(v2 + 2) = v4;
    *(v2 + 10) = 0;
    if (*(a1 + 64))
    {
      sub_100027728(*(a1 + 60), (v2 + 16));
    }
  }

  return v3;
}

uint64_t sub_100037A3C(uint64_t a1)
{
  v2 = sub_10003CCE4(*a1);
  v3 = snprintf(__str, 0x400uLL, "\tpeers_identifier %s", v2);
  v4 = *(a1 + 8);
  if (v4)
  {
    snprintf(&__str[v3], 1024 - v3, " %s", *(v4 + 8));
  }

  if (dword_100090058)
  {
    v5 = ne_log_obj();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v8 = __str;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s;\n", buf, 0xCu);
    }
  }

  return 0;
}

uint64_t sub_100037B48(const char *a1, int a2)
{
  memset(&v10, 0, sizeof(v10));
  v4 = getuid();
  if (v4 != geteuid())
  {
    if (dword_100090058)
    {
      v7 = ne_log_obj();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        sub_100065044(v7);
      }
    }

    return 0xFFFFFFFFLL;
  }

  if (stat(a1, &v10))
  {
    return 0xFFFFFFFFLL;
  }

  if (v10.st_uid != getuid())
  {
    if (dword_100090058)
    {
      v8 = ne_log_obj();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        sub_100065088(a1, v8);
      }
    }

    return 0xFFFFFFFFLL;
  }

  if ((v10.st_mode & 0xF000) != 0x8000)
  {
    if (dword_100090058)
    {
      v9 = ne_log_obj();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_100065100(a1, &v10.st_mode, v9);
      }
    }

    return 0xFFFFFFFFLL;
  }

  result = 0;
  if (a2 && (v10.st_mode & 0x3F) != 0)
  {
    if (dword_100090058)
    {
      v6 = ne_log_obj();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_100065190(a1, v6);
      }
    }

    return 0xFFFFFFFFLL;
  }

  return result;
}

uint64_t sub_100037CC0(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v7 = qword_1000900B8;
  if (a4 && !*(qword_1000900B8 + 296))
  {
    return 0;
  }

  if (a3)
  {
    v8 = 1;
  }

  else
  {
    v8 = 2;
  }

  v9 = qword_10008CE38;
  while (!v9)
  {
LABEL_30:
    v24 = v8 == 1;
    v8 = 2;
    if (!v24)
    {
      return 0;
    }
  }

  v10 = 0;
  v11 = v9;
  while (1)
  {
    v12 = v10;
    v13 = *(v11 + 40);
    if (v13)
    {
      if (v8 == 2 || memcmp(*(a3 + 8), *(v13 + 8), *v13))
      {
        goto LABEL_18;
      }
    }

    else if (v8 == 1)
    {
      goto LABEL_18;
    }

    v14 = *v11;
    v10 = v11;
    if (*v11)
    {
      break;
    }

LABEL_19:
    v11 = *(v11 + 120);
    if (!v11)
    {
      v12 = v10;
      if (!v10)
      {
        goto LABEL_30;
      }

LABEL_32:
      if (dword_100090058)
      {
        v25 = ne_log_obj();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
        {
          sub_100065208(v25, v26, v27, v28, v29, v30, v31, v32);
        }
      }

      return v12;
    }
  }

  if (!a1)
  {
    if (v12)
    {
      goto LABEL_32;
    }

    v10 = 0;
    goto LABEL_19;
  }

  if (*a1 != *v14 || memcmp(*(a1 + 8), *(v14 + 8), *a1))
  {
LABEL_18:
    v10 = v12;
    goto LABEL_19;
  }

  if (!a4)
  {
    v22 = *(v11 + 8);
    if (*a2 == *v22)
    {
      v23 = memcmp(*(a2 + 8), *(v22 + 8), *a2);
      v10 = v12;
      if (!v23)
      {
        return v11;
      }

      goto LABEL_19;
    }

    goto LABEL_18;
  }

  v15 = *(v7 + 296);
  v16 = v15[1];
  v17 = memcmp(v16, *(*(v11 + 8) + 8), **(v11 + 8));
  v10 = v12;
  if (v17)
  {
    goto LABEL_19;
  }

  if (dword_10008C2C8 >= 7)
  {
    sub_1000314C0(7, v16, *v15, "matched external nat address.\n", v18, v19, v20, v21, v34);
  }

  return v11;
}

uint64_t sub_100037EA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!dword_100090058 || (v10 = ne_log_obj(), !os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG)))
  {
    if (a1)
    {
      goto LABEL_4;
    }

    return 0;
  }

  sub_100065240(v10, v11, v12, v13, a5, a6, a7, a8);
  if (!a1)
  {
    return 0;
  }

LABEL_4:
  if (dword_10008C2C8 >= 7)
  {
    sub_1000314C0(7, *(a1 + 8), *a1, "getsainfo_by_dst_id - dst id:\n", a5, a6, a7, a8, v28);
  }

  v14 = qword_10008CE38;
  if (!qword_10008CE38)
  {
    return 0;
  }

  v15 = 0;
  do
  {
    v16 = v15;
    if (*v14)
    {
      if (dword_10008C2C8 >= 7)
      {
        sub_1000314C0(7, *(*v14 + 8), **v14, "getsainfo_by_dst_id - sainfo id - src:\n", a5, a6, a7, a8, v28);
        if (dword_10008C2C8 >= 7)
        {
          sub_1000314C0(7, *(*(v14 + 8) + 8), **(v14 + 8), "getsainfo_by_dst_id - sainfo id - dst:\n", a5, a6, a7, a8, v28);
        }
      }
    }

    else if (dword_100090058)
    {
      v17 = ne_log_obj();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        sub_100065278(&v28, v29, v17);
      }
    }

    v18 = *(v14 + 40);
    if (!v18)
    {
      goto LABEL_21;
    }

    if (dword_10008C2C8 >= 7)
    {
      sub_1000314C0(7, *(v18 + 8), *v18, "getsainfo_by_dst_id - sainfo id_i:\n", a5, a6, a7, a8, v28);
    }

    if (a2 && !memcmp(*(a2 + 8), *(*(v14 + 40) + 8), **(v14 + 40)))
    {
LABEL_21:
      v15 = v14;
      if (*v14)
      {
        v15 = v16;
        if (!memcmp(*(a1 + 8), *(*(v14 + 8) + 8), **(v14 + 8)))
        {
          return v14;
        }
      }
    }

    else
    {
      v15 = v16;
    }

    v14 = *(v14 + 120);
  }

  while (v14);
  if (v15)
  {
    if (dword_100090058)
    {
      v19 = ne_log_obj();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        sub_100065208(v19, v20, v21, v22, v23, v24, v25, v26);
      }
    }
  }

  return v15;
}

double sub_1000380A4()
{
  v0 = malloc_type_calloc(1uLL, 0x88uLL, 0x10A004085B85051uLL);
  if (v0)
  {
    v0[3] = 28800;
    *(v0 + 8) = 0x7FFFFFFF;
    result = COERCE_DOUBLE(&_mh_execute_header);
    *(v0 + 108) = &_mh_execute_header;
  }

  return result;
}

void sub_1000380F4(void *a1)
{
  v2 = 0;
  v3 = (a1 + 6);
  do
  {
    v4 = *&v3[8 * v2];
    if (v4)
    {
      do
      {
        v5 = v4[1];
        free(v4);
        v4 = v5;
      }

      while (v5);
    }

    ++v2;
  }

  while (v2 != 7);
  if (*a1)
  {
    sub_10003D4F0(*a1);
  }

  v6 = a1[1];
  if (v6)
  {
    sub_10003D4F0(v6);
  }

  v7 = a1[2];
  if (v7)
  {
    sub_10003D4F0(v7);
  }

  free(a1);
}

void *sub_100038180(void *result)
{
  if (result)
  {
    do
    {
      v1 = result[1];
      free(result);
      result = v1;
    }

    while (v1);
  }

  return result;
}

uint64_t sub_1000381B4(uint64_t result)
{
  v1 = qword_10008CE38;
  *(result + 120) = qword_10008CE38;
  if (v1)
  {
    *(v1 + 128) = result + 120;
  }

  qword_10008CE38 = result;
  *(result + 128) = &qword_10008CE38;
  *(result + 108) = 1;
  return result;
}

uint64_t sub_1000381E8(uint64_t result)
{
  if (*(result + 108))
  {
    v1 = *(result + 120);
    v2 = *(result + 128);
    if (v1)
    {
      *(v1 + 128) = v2;
    }

    *v2 = v1;
    *(result + 108) = 0;
  }

  return result;
}

void sub_100038208()
{
  v0 = qword_10008CE38;
  while (v0)
  {
    v1 = v0;
    v0 = *(v0 + 120);
    if (!*(v1 + 104))
    {
      if (*(v1 + 108))
      {
        v2 = *(v1 + 128);
        if (v0)
        {
          *(v0 + 128) = v2;
        }

        *v2 = v0;
        *(v1 + 108) = 0;
      }

      v3 = *(v1 + 112);
      v4 = __OFSUB__(v3--, 1);
      *(v1 + 112) = v3;
      if ((v3 < 0) ^ v4 | (v3 == 0))
      {
        sub_1000380F4(v1);
      }
    }
  }
}

void sub_100038274(int a1)
{
  v1 = qword_10008CE38;
  while (v1)
  {
    v3 = v1;
    v1 = *(v1 + 120);
    if (*(v3 + 104) == a1)
    {
      if (*(v3 + 108))
      {
        v4 = *(v3 + 128);
        if (v1)
        {
          *(v1 + 128) = v4;
        }

        *v4 = v1;
        *(v3 + 108) = 0;
      }

      v5 = *(v3 + 112);
      v6 = __OFSUB__(v5--, 1);
      *(v3 + 112) = v5;
      if ((v5 < 0) ^ v6 | (v5 == 0))
      {
        sub_1000380F4(v3);
      }
    }
  }
}

void sub_1000382F8(void *a1)
{
  v1 = *(a1 + 28);
  v2 = __OFSUB__(v1--, 1);
  *(a1 + 28) = v1;
  if ((v1 < 0) ^ v2 | (v1 == 0))
  {
    if (*(a1 + 27))
    {
      v3 = a1[15];
      v4 = a1[16];
      if (v3)
      {
        *(v3 + 128) = v4;
      }

      *v4 = v3;
      *(a1 + 27) = 0;
    }

    sub_1000380F4(a1);
  }
}

uint64_t *sub_100038354(uint64_t *result, uint64_t a2)
{
  v2 = *result;
  while (v2)
  {
    v3 = v2;
    v2 = *(v2 + 8);
    if (!v2)
    {
      result = (v3 + 8);
      break;
    }
  }

  *result = a2;
  return result;
}

uint64_t *sub_100038374(uint64_t *a1)
{
  v2 = *a1;
  if (v2)
  {
    v3 = sub_10000E960(v2);
    if (v3)
    {
      v4 = v3;
      snprintf(&qword_10008CE40, 0x100uLL, "%s", v3);
      free(v4);
    }

    v5 = a1[1];
    if (v5)
    {
      v6 = sub_10000E960(v5);
      if (v6)
      {
        v7 = v6;
        v8 = strlen(&qword_10008CE40);
        snprintf(&qword_10008CE40 + v8, 256 - v8, " %s", v7);
        free(v7);
      }
    }

    else
    {
      v9 = strlen(&qword_10008CE40);
      snprintf(&qword_10008CE40 + v9, 256 - v9, " anonymous");
    }
  }

  else
  {
    strcpy(&qword_10008CE40, "anonymous");
  }

  v10 = a1[5];
  if (v10)
  {
    v11 = sub_10000E960(v10);
    if (v11)
    {
      v12 = v11;
      v13 = strlen(&qword_10008CE40);
      snprintf(&qword_10008CE40 + v13, 256 - v13, " from %s", v12);
      free(v12);
    }
  }

  return &qword_10008CE40;
}

void sub_1000384AC(_DWORD *a1)
{
  if (xmmword_100090080 != 0)
  {
    a1[8] = 1;
  }

  v2 = *(a1 + 5);
  v3 = *(a1 + 6);
  v4 = &qword_10008CF48;
  if (v2)
  {
    v4 = (v2 + 48);
  }

  *v4 = v3;
  *v3 = v2;
  if (!a1[8])
  {
    v5 = *(a1 + 2);
    if (v5)
    {
      if (!dword_10009005C)
      {
        v5(*(a1 + 3));
      }
    }
  }

  free(a1);
}

void *sub_100038550(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!dword_10008C2D0)
  {
    dword_10008C2D0 = 1;
  }

  result = malloc_type_malloc(0x38uLL, 0x10A0040F0AD93B6uLL);
  if (result)
  {
    v7 = result;
    v8 = dword_10008C2D0++;
    *result = v8;
    *(result + 8) = 0;
    result[2] = a2;
    result[3] = a3;
    v12 = 0;
    result[1] = time(&v12) + a1;
    v7[5] = 0;
    v9 = qword_10008CF48;
    v7[6] = qword_10008CF48;
    *v9 = v7;
    qword_10008CF48 = (v7 + 5);
    v10 = dispatch_time(0, 1000000000 * a1);
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 0x40000000;
    v11[2] = sub_1000386A4;
    v11[3] = &unk_1000890C8;
    v11[4] = v7;
    dispatch_after(v10, &_dispatch_main_q, v11);
    return *v7;
  }

  return result;
}

BOOL sub_1000386AC(int a1)
{
  v1 = 1;
  if (a1)
  {
    v2 = qword_10008CF40;
    if (qword_10008CF40)
    {
      while (*v2 != a1)
      {
        v2 = *(v2 + 40);
        if (!v2)
        {
          return 1;
        }
      }

      return *(v2 + 32) != 0;
    }
  }

  return v1;
}

uint64_t sub_1000386F0(int a1, void *a2)
{
  v2 = 0;
  if (a1)
  {
    v3 = qword_10008CF40;
    if (qword_10008CF40)
    {
      while (*v3 != a1)
      {
        v3 = *(v3 + 40);
        if (!v3)
        {
          return 0;
        }
      }

      if (*(v3 + 32))
      {
        return 0;
      }

      *a2 = *(v3 + 8);
      return 1;
    }
  }

  return v2;
}

uint64_t sub_100038740(uint64_t result)
{
  if (result)
  {
    v1 = qword_10008CF40;
    if (qword_10008CF40)
    {
      while (*v1 != result)
      {
        v1 = *(v1 + 40);
        if (!v1)
        {
          return result;
        }
      }

      *(v1 + 32) = 1;
    }
  }

  return result;
}

void sub_100038774()
{
  for (i = qword_10008CF40; i; i = *(i + 40))
  {
    *(i + 32) = 1;
  }
}

uint64_t sub_100038794(uint64_t result)
{
  for (i = qword_10008CF40; i; i = *(i + 40))
  {
    if (*(i + 24) == result)
    {
      *(i + 32) = 1;
    }
  }

  return result;
}

uint64_t sub_1000387D0(unsigned __int8 a1)
{
  if (dword_100090018)
  {
    if (vproc_swap_integer())
    {
      if (dword_100090058)
      {
        v2 = ne_log_obj();
        if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
        {
          sub_1000652B8(a1, v2);
        }
      }
    }
  }

  return qword_10008C2D8;
}

void sub_10003886C()
{
  qword_100090C08 = &_dispatch_main_q;
  sub_1000387C0();
  if ((sub_10004D6CC() & 0x80000000) != 0)
  {
    if (!dword_100090058)
    {
      goto LABEL_59;
    }

    v25 = ne_log_obj();
    if (!os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_59;
    }

    LOWORD(buffer.__sigaction_u.__sa_handler) = 0;
    v26 = "failed to initialize power-mgmt.";
    goto LABEL_58;
  }

  if (*(qword_1000900B8 + 112) == 1 && sub_100005340())
  {
    if (!dword_100090058)
    {
      goto LABEL_59;
    }

    v25 = ne_log_obj();
    if (!os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_59;
    }

    LOWORD(buffer.__sigaction_u.__sa_handler) = 0;
    v26 = "failed to initialize route socket.\n";
    goto LABEL_58;
  }

  qword_10008CFE0 = NEPolicyCreateSession();
  if (!qword_10008CFE0)
  {
    goto LABEL_23;
  }

  v35 = 0;
  memset(&buffer, 0, 48);
  v0 = getpid();
  if (proc_pidinfo(v0, 17, 1uLL, &buffer, 56) != 56)
  {
    goto LABEL_23;
  }

  v1 = CFUUIDCreateFromUUIDBytes(kCFAllocatorDefault, buffer);
  if (!v1)
  {
    goto LABEL_23;
  }

  v2 = v1;
  Mutable = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
  if (!Mutable)
  {
    goto LABEL_11;
  }

  v4 = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  v5 = v4 != 0;
  if (v4)
  {
    v6 = v4;
    CFDictionarySetValue(v4, @"ConditionType", @"Application");
    CFDictionarySetValue(v6, @"ApplicationUUID", v2);
    CFArrayAppendValue(Mutable, v6);
    CFRelease(v6);
  }

  v7 = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (v7)
  {
    v8 = v7;
    CFDictionarySetValue(v7, @"ConditionType", @"AllInterfaces");
    CFArrayAppendValue(Mutable, v8);
    CFRelease(v8);
  }

  else
  {
LABEL_11:
    v5 = 0;
  }

  v9 = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (v9)
  {
    v11 = v9;
    CFDictionaryAddValue(v9, @"Result", @"Pass");
    v10 = v5 && NEPolicyAdd() != 0;
    CFRelease(v11);
    if (!Mutable)
    {
LABEL_21:
      CFRelease(v2);
      if (v10)
      {
        v12 = NEPolicyApply() != 0;
LABEL_24:
        if (!v12)
        {
          if (dword_100090058)
          {
            v13 = ne_log_obj();
            if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
            {
              LOWORD(buffer.__sigaction_u.__sa_handler) = 0;
              _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "failed to initialize NEPolicy session.\n", &buffer, 2u);
            }
          }
        }

        if (sub_100005074())
        {
          if (!dword_100090058)
          {
            goto LABEL_59;
          }

          v25 = ne_log_obj();
          if (!os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_59;
          }

          LOWORD(buffer.__sigaction_u.__sa_handler) = 0;
          v26 = "failed to initialize listening addresses.\n";
        }

        else if (sub_100020D78())
        {
          if (!dword_100090058)
          {
            goto LABEL_59;
          }

          v25 = ne_log_obj();
          if (!os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_59;
          }

          LOWORD(buffer.__sigaction_u.__sa_handler) = 0;
          v26 = "failed to initialize isakmp";
        }

        else
        {
          if (sub_100047570())
          {
            if (dword_100090058)
            {
              v14 = ne_log_obj();
              if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
              {
                LOWORD(buffer.__sigaction_u.__sa_handler) = 0;
                _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "failed to initialize vpn control port", &buffer, 2u);
              }
            }
          }

          v15 = 0;
          while (1)
          {
            v16 = dword_10006CE40[v15];
            buffer.__sigaction_u.__sa_handler = sub_100039338;
            *&buffer.sa_mask = 0x4200000000;
            if (sigaction(v16, &buffer, 0) < 0)
            {
              break;
            }

            if (++v15 == 6)
            {
              for (i = 0; i != 33; ++i)
              {
                dword_10008CF50[i] = 0;
              }

              if (dword_100090028)
              {
                goto LABEL_48;
              }

              dword_100090014 = getpid();
              v18 = *(qword_1000900B8 + 160);
              if (v18 && *v18 != 47)
              {
                __strlcat_chk();
                v19 = *(qword_1000900B8 + 160);
                __strlcat_chk();
              }

              else
              {
                __strlcpy_chk();
              }

              v20 = fopen(&buffer, "w");
              if (v20)
              {
                v27 = v20;
                v28 = fileno(v20);
                if (fchmod(v28, 0x1A4u) != -1)
                {
                  fprintf(v27, "%ld\n", dword_100090014);
                  fclose(v27);
                  goto LABEL_48;
                }

                if (dword_100090058)
                {
                  v29 = ne_log_obj();
                  if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
                  {
                    v30 = __error();
                    v31 = strerror(*v30);
                    *buf = 136315138;
                    p_buffer = v31;
                    _os_log_error_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "%s", buf, 0xCu);
                  }
                }

                fclose(v27);
              }

              else
              {
                if (dword_100090058)
                {
                  v21 = ne_log_obj();
                  if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 136315138;
                    p_buffer = &buffer;
                    _os_log_error_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "cannot open %s", buf, 0xCu);
                  }
                }

LABEL_48:
                if (!qword_10008CFD8)
                {
                  qword_10008CFD8 = os_transaction_create();
                }

                if (!dword_10009005C)
                {
                  dispatch_main();
                }
              }

LABEL_59:
              exit(1);
            }
          }

          if (!dword_100090058)
          {
            goto LABEL_59;
          }

          v22 = ne_log_obj();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            v23 = __error();
            v24 = strerror(*v23);
            LODWORD(buffer.__sigaction_u.__sa_handler) = 136315138;
            *(&buffer.__sigaction_u.__sa_sigaction + 4) = v24;
            _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "failed to set_signal (%s)\n", &buffer, 0xCu);
          }

          if (!dword_100090058)
          {
            goto LABEL_59;
          }

          v25 = ne_log_obj();
          if (!os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_59;
          }

          LOWORD(buffer.__sigaction_u.__sa_handler) = 0;
          v26 = "failed to initialize signals.\n";
        }

LABEL_58:
        _os_log_error_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, v26, &buffer, 2u);
        goto LABEL_59;
      }

LABEL_23:
      v12 = 0;
      goto LABEL_24;
    }
  }

  else
  {
    v10 = 0;
    if (!Mutable)
    {
      goto LABEL_21;
    }
  }

  CFRelease(Mutable);
  goto LABEL_21;
}

void sub_100038F0C()
{
  v0 = *(qword_1000900B8 + 80);
  if (*(qword_1000900B8 + 88))
  {
    if (v0 != 17 || sub_100047A44() || sub_10004DD30() || (v1 = sub_1000330B8()) || !sub_100036414(v1))
    {
      v2 = *(qword_1000900B8 + 88);
      if (v2)
      {
        sub_100038740(v2);
        v3 = 0;
LABEL_8:
        *(qword_1000900B8 + 88) = v3;
      }
    }
  }

  else if (v0 == 17 && !sub_100047A44() && !sub_10004DD30())
  {
    v4 = sub_1000330B8();
    if (!v4)
    {
      if (sub_100036414(v4))
      {
        v5 = *(qword_1000900B8 + 84);
        if (!v5)
        {
          sub_100038FD8();
        }

        v3 = sub_100038550(v5, sub_100038FD8, 0);
        goto LABEL_8;
      }
    }
  }
}

void sub_100038FD8()
{
  if (dword_100090058)
  {
    v0 = ne_log_obj();
    if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
    {
      *v1 = 0;
      _os_log_impl(&_mh_execute_header, v0, OS_LOG_TYPE_DEFAULT, "performing auto exit\n", v1, 2u);
    }
  }

  sub_100039288();
}

void sub_10003903C()
{
  v0 = 0;
  while (1)
  {
    if (!dword_10008CF50[v0])
    {
      goto LABEL_23;
    }

    --dword_10008CF50[v0];
    if (v0 > 1)
    {
      if (v0 != 30)
      {
        if (v0 == 2 || v0 == 15)
        {
          if (dword_100090058)
          {
            v3 = ne_log_obj();
            if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 67109120;
              v6 = v0;
              _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "caught signal %d\n", buf, 8u);
            }
          }

LABEL_31:
          sub_100039288();
        }

        goto LABEL_20;
      }
    }

    else if (v0 != 1)
    {
      if (!v0)
      {
        return;
      }

LABEL_20:
      if (dword_100090058)
      {
        v1 = ne_log_obj();
        if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109120;
          v6 = v0;
          _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "caught signal %d\n", buf, 8u);
        }
      }

      goto LABEL_23;
    }

    if (sub_10004304C(0))
    {
      break;
    }

    if (!dword_10009005C)
    {
      if (v0 == 1)
      {
        sub_1000069A4(1);
        sub_100006050(1);
      }

      if (sub_100051274(v0))
      {
        if (dword_100090058)
        {
          v4 = ne_log_obj();
          if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
          {
            sub_100065378(v4);
          }
        }

        exit(1);
      }

      if (!*(qword_1000900B8 + 128) && !byte_100090800)
      {
        sub_100031B34(*(qword_1000900B8 + 168));
      }

      if (sub_100036414(1))
      {
        goto LABEL_31;
      }
    }

LABEL_23:
    if (++v0 == 33)
    {
      return;
    }
  }

  if (dword_100090058)
  {
    v2 = ne_log_obj();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      sub_100065334(v2);
    }
  }
}

void sub_100039288()
{
  sub_100038774();
  sub_10004D99C();
  if (dword_10009005C)
  {
    sub_1000069A4(0);
  }

  sub_100006050(0);
  sub_100005308();
  sub_1000218F4();
  sub_10002CC88();
  sub_100047998();
  if (qword_10008CFD8)
  {
    os_release(qword_10008CFD8);
    qword_10008CFD8 = 0;
  }

  if (dword_100090058)
  {
    v0 = ne_log_obj();
    if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
    {
      *v1 = 0;
      _os_log_impl(&_mh_execute_header, v0, OS_LOG_TYPE_DEFAULT, "racoon shutdown\n", v1, 2u);
    }
  }

  exit(0);
}

void sub_100039338(int a1)
{
  ++dword_10008CF50[a1];
  if (a1 == 15)
  {
    dword_10009005C = 1;
  }

  dword_100090060 = 1;
  dispatch_async(qword_100090C08, &stru_100089108);
}

void sub_100039380(id a1)
{
  if (dword_100090060)
  {
    sub_10003903C();
    dword_100090060 = 0;
  }
}

void sub_1000393C0()
{
  v0 = qword_1000900B8;
  v1 = *(qword_1000900B8 + 56);
  if (v1)
  {
    dispatch_suspend(v1);
    v0 = qword_1000900B8;
  }

  v2 = *(v0 + 40);
  if (v2)
  {
    dispatch_suspend(v2);
  }

  sub_100021A70();
}

uint64_t sub_100039414(unint64_t a1, unint64_t a2)
{
  v2 = a1 | a2;
  if (a1 | a2)
  {
    v2 = 1;
    if (a1)
    {
      if (a2)
      {
        if (*a1 == *a2)
        {
          v3 = *(a1 + 1);
          if (v3 == *(a2 + 1))
          {
            if (v3 == 30)
            {
              if (*(a1 + 8) == *(a2 + 8) && *(a1 + 16) == *(a2 + 16))
              {
                v4 = *(a1 + 24);
                v5 = *(a2 + 24);
LABEL_15:
                if (v4 == v5)
                {
                  return 0;
                }
              }
            }

            else if (v3 == 2)
            {
              v4 = *(a1 + 4);
              v5 = *(a2 + 4);
              goto LABEL_15;
            }
          }
        }

        return 1;
      }
    }
  }

  return v2;
}

BOOL sub_10003949C(unint64_t a1, unint64_t a2, int a3)
{
  v3 = a1 | a2;
  if (a1 | a2)
  {
    v3 = 1;
    if (a1)
    {
      if (a2)
      {
        if (*a1 != *a2)
        {
          return 1;
        }

        v4 = *(a1 + 1);
        if (v4 != *(a2 + 1))
        {
          return 1;
        }

        if (v4 != 2)
        {
          if (v4 == 30)
          {
            v5 = 0;
            while (1)
            {
              v6 = -1 << -a3;
              if (!a3)
              {
                v6 = 0;
              }

              v7 = a3 < 32;
              if (a3 >= 32)
              {
                a3 -= 32;
              }

              else
              {
                a3 = 0;
              }

              if (!v7)
              {
                v6 = -1;
              }

              if (((*(a1 + 8 + v5) ^ *(a2 + 8 + v5)) & bswap32(v6)) != 0)
              {
                break;
              }

              v5 += 4;
              if (v5 == 16)
              {
                return *(a1 + 24) != *(a2 + 24);
              }
            }
          }

          return 1;
        }

        return ((*(a1 + 4) ^ *(a2 + 4)) & bswap32(-1 << -a3)) != 0;
      }
    }
  }

  return v3;
}