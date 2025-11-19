void sub_100373948(uint64_t a1)
{
  os_channel_destroy();
  v2 = *(a1 + 40);

  dispatch_group_leave(v2);
}

void sub_1003739A8(uint64_t a1)
{
  v1 = *(a1 + 32);
  context = dispatch_get_context(v1);
  if (context)
  {
    v3 = context;
    sub_1000B5C64(context, 0);
    if (*(v3 + 28))
    {
      v4 = qword_100BCE958;
      if (os_log_type_enabled(qword_100BCE958, OS_LOG_TYPE_INFO))
      {
        v5 = v3[66];
        v7[0] = 67109120;
        v7[1] = v5;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "TIMER: flushing %u held up packets", v7, 8u);
      }

      if (v3[66])
      {
        v6 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
        v3[66] = 0;
        *(v3 + 41) = v6;
        os_channel_sync();
      }
    }
  }

  else
  {

    dispatch_suspend(v1);
  }
}

void sub_100373ADC(uint64_t a1, __int16 a2)
{
  v2 = *(a1 + 8);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100373B54;
  v3[3] = &unk_100AEB940;
  v3[4] = a1;
  v4 = a2;
  dispatch_sync(v2, v3);
}

uint64_t sub_100373B64(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == (a1 + 24))
  {
    return 0;
  }

  while (1)
  {
    v3 = v2[5];
    if (*(v3 + 112) == a2 && *(v3 + 368) == 3)
    {
      break;
    }

    v4 = v2[1];
    if (v4)
    {
      do
      {
        v5 = v4;
        v4 = *v4;
      }

      while (v4);
    }

    else
    {
      do
      {
        v5 = v2[2];
        v6 = *v5 == v2;
        v2 = v5;
      }

      while (!v6);
    }

    v2 = v5;
    if (v5 == (a1 + 24))
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_100373BD8(uint64_t a1, __int128 *a2, const void *a3, unsigned __int8 a4)
{
  v9 = 0;
  sub_1000216B4(&v9);
  v7 = sub_10019789C(a2, a3, a4);
  if (v7)
  {
    if (os_log_type_enabled(qword_100BCE958, OS_LOG_TYPE_ERROR))
    {
      sub_10081FC4C();
    }

    v7 = 1;
  }

  sub_10002249C(&v9);
  return v7;
}

uint64_t sub_100373C84(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v18 = a3;
  v19[0] = a2;
  v3 = a1 + 48;
  v4 = *(a1 + 48);
  v5 = a1 + 40;
  if (v4)
  {
    v6 = v3;
    do
    {
      v7 = *(v4 + 32);
      v8 = v7 >= a2;
      v9 = v7 < a2;
      if (v8)
      {
        v6 = v4;
      }

      v4 = *(v4 + 8 * v9);
    }

    while (v4);
    if (v6 != v3 && *(v6 + 32) <= a2)
    {
      v12 = *(v6 + 48);
      v11 = v6 + 48;
      v10 = v12;
      if (v12)
      {
        v13 = v11;
        do
        {
          v14 = *(v10 + 32);
          v8 = v14 >= a3;
          v15 = v14 < a3;
          if (v8)
          {
            v13 = v10;
          }

          v10 = *(v10 + 8 * v15);
        }

        while (v10);
        if (v13 != v11 && *(v13 + 32) <= a3)
        {
          return 15;
        }
      }
    }
  }

  v19[2] = v19;
  v16 = sub_1003755E8(v5, v19);
  sub_1000452CC((v16 + 5), &v18);
  return 0;
}

uint64_t sub_100373D58(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v5 = *(a1 + 48);
  v3 = a1 + 48;
  v4 = v5;
  if (!v5)
  {
    return 16;
  }

  v6 = v3;
  do
  {
    v7 = *(v4 + 32);
    v8 = v7 >= a2;
    v9 = v7 < a2;
    if (v8)
    {
      v6 = v4;
    }

    v4 = *(v4 + 8 * v9);
  }

  while (v4);
  if (v6 == v3)
  {
    return 16;
  }

  if (*(v6 + 32) > a2)
  {
    return 16;
  }

  v12 = *(v6 + 48);
  v10 = (v6 + 48);
  v11 = v12;
  if (!v12)
  {
    return 16;
  }

  v13 = v10;
  v14 = v11;
  do
  {
    v15 = v14[4];
    v8 = v15 >= a3;
    v16 = v15 < a3;
    if (v8)
    {
      v13 = v14;
    }

    v14 = v14[v16];
  }

  while (v14);
  if (v13 == v10 || v13[4] > a3)
  {
    return 16;
  }

  v18 = v10;
  do
  {
    v19 = v11[4];
    v8 = v19 >= a3;
    v20 = v19 < a3;
    if (v8)
    {
      v18 = v11;
    }

    v11 = v11[v20];
  }

  while (v11);
  if (v18 == v10 || v18[4] > a3)
  {
    v18 = v10;
  }

  sub_10002717C(v10 - 1, v18);
  operator delete(v18);
  return 0;
}

void sub_100373E48(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, char a5)
{
  if (qword_100B6D2F8 != -1)
  {
    sub_10081F1F4();
  }

  v9 = qword_100BCE4D0;

  sub_100373EBC(v9, a1, a2, a3, a5);
}

void sub_100373EBC(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, char a5)
{
  v8 = [NSData dataWithBytes:a3 length:a4];
  v9 = sub_100007EE8();
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100373FAC;
  v11[3] = &unk_100AEDEF0;
  v13 = a1;
  v14 = a2;
  v10 = v8;
  v12 = v10;
  v15 = a5;
  sub_10000CA94(v9, v11);
}

void sub_100373FAC(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(v1 + 40);
  v3 = (v1 + 48);
  if (v2 != (v1 + 48))
  {
    do
    {
      if (v2[4] == *(a1 + 48))
      {
        v8 = v2[5];
        if (v8 != v2 + 6)
        {
          do
          {
            v9 = v8[4];
            memset(uu, 0, sizeof(uu));
            uuid_clear(uu);
            if (qword_100B508B0 != -1)
            {
              sub_10081FCC0();
            }

            if (sub_100748908(off_100B508A8, *(a1 + 48), uu))
            {
              v10 = sub_10004DF60(uu);
              (**v9)(v9, v10, *(a1 + 32), *(a1 + 56));
            }

            v11 = v8[1];
            if (v11)
            {
              do
              {
                v12 = v11;
                v11 = *v11;
              }

              while (v11);
            }

            else
            {
              do
              {
                v12 = v8[2];
                v7 = *v12 == v8;
                v8 = v12;
              }

              while (!v7);
            }

            v8 = v12;
          }

          while (v12 != v2 + 6);
        }
      }

      v5 = v2[1];
      if (v5)
      {
        do
        {
          v6 = v5;
          v5 = *v5;
        }

        while (v5);
      }

      else
      {
        do
        {
          v6 = v2[2];
          v7 = *v6 == v2;
          v2 = v6;
        }

        while (!v7);
      }

      v2 = v6;
    }

    while (v6 != v3);
  }
}

void sub_10037416C(uint64_t a1, int a2, const void *a3, size_t a4, uint64_t a5, char a6)
{
  v11 = malloc_type_malloc(a4 + 24, 0x1000040D79C9B88uLL);
  v12 = qword_100BCE958;
  if (os_log_type_enabled(qword_100BCE958, OS_LOG_TYPE_INFO))
  {
    v13 = 134218240;
    v14 = a4;
    v15 = 1024;
    v16 = a2;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "Received %zu bytes on pipe id:%04X", &v13, 0x12u);
  }

  *v11 = a2;
  v11[1] = a4;
  *(v11 + 18) = a6;
  memcpy(v11 + 19, a3, a4);
  sub_100066F74(21, 0);
  dispatch_async_f(*(a1 + 8), v11, sub_1000B4B10);
}

_BYTE *sub_1003742A4()
{
  v1 = 0;
  sub_1000216B4(&v1);
  sub_100195C2C(sub_100373E48, 0);
  return sub_10002249C(&v1);
}

void sub_100374308()
{
  __chkstk_darwin();
  v1 = v0;
  v3 = v2;
  v23 = v4;
  v6 = v5;
  v8 = v7;
  bzero(v29, 0x3E9FuLL);
  v9 = "ToSocket:";
  if (!v3)
  {
    v9 = "ToStack:";
  }

  v22 = v9;
  v10 = &qword_100BCE958;
  if (v6 <= 4 && v3 == 1 && v1 && os_log_type_enabled(qword_100BCE958, OS_LOG_TYPE_ERROR))
  {
    sub_100820044();
  }

  v28 = 0;
  v21 = v6;
  if (v6)
  {
    v11 = 0;
    v12 = v6 - 1;
    if (v6 - 1 >= 0x3E9F)
    {
      v12 = 16031;
    }

    v13 = v12 + 1;
    v14 = -1;
    v15 = 449;
    do
    {
      sprintf(&v28, "%s%02x", &v28, *v8);
      if (v1)
      {
        v14 = dword_1008A6480[(*v8 ^ v14)] ^ (v14 >> 8);
      }

      if (!(v15 + 450 * (v11 / 0x1C2)))
      {
        v16 = v1;
        v17 = v10;
        v18 = *v10;
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109634;
          *v25 = v23;
          *&v25[4] = 2080;
          *&v25[6] = v22;
          v26 = 2080;
          v27 = &v28;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "SkwData:%05u:=%s %s ", buf, 0x1Cu);
        }

        v28 = 0;
        v10 = v17;
        v1 = v16;
      }

      ++v8;
      --v15;
      ++v11;
      --v13;
    }

    while (v13);
  }

  else
  {
    v14 = -1;
  }

  v19 = *v10;
  if (os_log_type_enabled(*v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109634;
    *v25 = v23;
    *&v25[4] = 2080;
    *&v25[6] = v22;
    v26 = 2080;
    v27 = &v28;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "SkwData:%05u:=%s %s ", buf, 0x1Cu);
    v19 = *v10;
  }

  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *v25 = v21;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Got packet: size=%u  ", buf, 8u);
  }

  if (v1)
  {
    v20 = *v10;
    if (os_log_type_enabled(*v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      *v25 = v22;
      *&v25[8] = 1024;
      *&v25[10] = v23;
      v26 = 1024;
      LODWORD(v27) = v14;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "%s:Seq=%02u CRC value:0x%08x  ", buf, 0x18u);
    }
  }
}

void sub_100374698(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  if (!v3)
  {
    goto LABEL_24;
  }

  v5 = a1 + 24;
  do
  {
    v6 = *(v3 + 32);
    v7 = v6 >= a2;
    v8 = v6 < a2;
    if (v7)
    {
      v5 = v3;
    }

    v3 = *(v3 + 8 * v8);
  }

  while (v3);
  if (v5 != a1 + 24 && *(v5 + 32) <= a2)
  {
    v9 = *(v5 + 40);
    v10 = qword_100BCE958;
    if (os_log_type_enabled(qword_100BCE958, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Stack is ready for more data", buf, 2u);
    }

    if (*(v9 + 8))
    {
      v11 = *(v9 + 24);
      if (v11)
      {
        v12 = *(v11 + 16);
        if (v12)
        {
          v12(*(v11 + 24));
        }
      }
    }

    else if (sub_1000C9DC8(a1, a2, v9))
    {
      v13 = qword_100BCE958;
      if (os_log_type_enabled(qword_100BCE958, OS_LOG_TYPE_INFO))
      {
        *v14 = 0;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "Starting the read source for the pipe", v14, 2u);
      }

      sub_100374D90(v9, 0);
    }
  }

  else
  {
LABEL_24:
    if (os_log_type_enabled(qword_100BCE958, OS_LOG_TYPE_ERROR))
    {
      sub_1008200B8();
    }
  }
}

void sub_100374808(uint64_t a1)
{
  v1 = *(a1 + 8);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10037487C;
  block[3] = &unk_100ADF8F8;
  block[4] = a1;
  dispatch_sync(v1, block);
}

_BYTE *sub_10037487C(_BYTE *result)
{
  v3 = *(result + 4);
  if (*(v3 + 136) == 1)
  {
    v5 = v1;
    v6 = v2;
    *(v3 + 136) = 0;
    if (os_log_type_enabled(qword_100BCE958, OS_LOG_TYPE_ERROR))
    {
      sub_1008203C0();
    }

    v4 = 0;
    sub_1000216B4(&v4);
    return sub_10002249C(&v4);
  }

  return result;
}

uint64_t sub_1003748F8(uint64_t a1, int a2, uint64_t a3)
{
  *(a1 + 128) = 0u;
  *(a1 + 40) = 0;
  *(a1 + 24) = 0u;
  *(a1 + 8) = 0u;
  *(a1 + 112) = a3;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  uuid_clear((a1 + 208));
  *(a1 + 368) = 0;
  *(a1 + 372) = a2;
  *(a1 + 378) = 0;
  *(a1 + 384) = 0;
  *(a1 + 392) = 0;
  uuid_clear((a1 + 400));
  *(a1 + 416) = 0;
  return a1;
}

uint64_t sub_100374984(uint64_t a1, int a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, int a7, int a8)
{
  *(a1 + 128) = 0u;
  *(a1 + 40) = 0;
  *(a1 + 24) = 0u;
  *(a1 + 8) = 0u;
  *(a1 + 112) = a3;
  *(a1 + 120) = 0;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0;
  *(a1 + 184) = a5;
  *(a1 + 192) = a6;
  *(a1 + 200) = a4;
  *(a1 + 204) = a7;
  uuid_clear((a1 + 208));
  *(a1 + 224) = 0;
  *(a1 + 336) = 0;
  *(a1 + 368) = a8;
  *(a1 + 372) = a2;
  *(a1 + 378) = 0;
  *(a1 + 384) = 0;
  *(a1 + 392) = 0;
  uuid_clear((a1 + 400));
  *(a1 + 416) = 0;
  *(a1 + 8) = 0;
  *(a1 + 352) = 0;
  *(a1 + 360) = 0;
  return a1;
}

uint64_t sub_100374A34(uint64_t a1, int a2, uint64_t a3, unsigned __int8 *src, uint64_t a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, int a11, int a12, char a13)
{
  *a1 = a13;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0;
  *(a1 + 112) = a3;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0;
  *(a1 + 184) = a7;
  *(a1 + 192) = a8;
  *(a1 + 200) = a6;
  *(a1 + 204) = a6;
  uuid_copy((a1 + 208), src);
  *(a1 + 224) = a5;
  *(a1 + 248) = a10;
  *(a1 + 252) = a11;
  *(a1 + 264) = 0;
  *(a1 + 276) = 0;
  *(a1 + 288) = 0;
  *(a1 + 304) = 0;
  *(a1 + 328) = 0;
  *(a1 + 336) = a9;
  *(a1 + 344) = 0;
  *(a1 + 368) = a12;
  *(a1 + 372) = a2;
  *(a1 + 378) = 0;
  *(a1 + 384) = 0;
  *(a1 + 392) = 0;
  uuid_clear((a1 + 400));
  *(a1 + 416) = 0;
  if (*(a1 + 368) == 3)
  {
    v16 = 675;
  }

  else
  {
    v16 = 4096;
  }

  dispatch_set_context(*(a1 + 336), a1);
  if (a5)
  {
    os_channel_ring_id();
    *(a1 + 232) = os_channel_tx_ring();
    os_channel_ring_id();
    *(a1 + 240) = os_channel_rx_ring();
  }

  *(a1 + 256) = vshr_n_u32(*(a1 + 248), 1uLL);
  *(a1 + 320) = 250000000;
  *(a1 + 272) = 2496;
  *(a1 + 296) = 20000000;
  *(a1 + 280) = 2;
  *(a1 + 312) = 2;
  *(a1 + 352) = malloc_type_malloc(v16, 0x100004077774924uLL);
  *(a1 + 360) = v16;
  *(a1 + 364) = 0;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 108) = 1;
  *(a1 + 8) = 0;
  return a1;
}

uint64_t sub_100374BE0(uint64_t a1)
{
  if (*(a1 + 372) != 3)
  {
    if (*(a1 + 8))
    {
      NRBluetoothPacketParserResetContext();
      *(a1 + 8) = 0;
    }

    v2 = *(a1 + 184);
    if (v2)
    {
      dispatch_source_cancel(v2);
      if (*(a1 + 120) == 1)
      {
        dispatch_resume(*(a1 + 184));
      }

      dispatch_release(*(a1 + 184));
    }

    v3 = *(a1 + 192);
    if (v3)
    {
      dispatch_source_cancel(v3);
      if (!*(a1 + 168))
      {
        dispatch_resume(*(a1 + 192));
      }

      dispatch_release(*(a1 + 192));
    }

    v4 = *(a1 + 336);
    if (v4)
    {
      dispatch_set_context(v4, 0);
      dispatch_source_cancel(*(a1 + 336));
      if ((*(a1 + 344) & 1) == 0)
      {
        *(a1 + 344) = 1;
        dispatch_resume(*(a1 + 336));
      }

      dispatch_release(*(a1 + 336));
      *(a1 + 344) = 0;
      *(a1 + 336) = 0;
    }

    if (*(a1 + 224))
    {
      *(a1 + 268) = 0u;
      *(a1 + 240) = 0u;
      *(a1 + 256) = 0u;
      *(a1 + 224) = 0u;
      *(a1 + 296) = 0;
      *(a1 + 304) = 0;
      *(a1 + 288) = 0;
      *(a1 + 312) = 0;
      *(a1 + 320) = 0;
      *(a1 + 328) = 0;
    }

    else
    {
      v5 = *(a1 + 204);
      if (v5 != -1)
      {
        close(v5);
        *(a1 + 204) = -1;
      }
    }

    while (*(a1 + 168))
    {
      free(*(*(*(a1 + 136) + ((*(a1 + 160) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (*(a1 + 160) & 0x1FFLL)));
      *(a1 + 160) = vaddq_s64(*(a1 + 160), xmmword_1008A6430);
      sub_100374F94(a1 + 128, 1);
    }

    v6 = *(a1 + 352);
    if (v6)
    {
      free(v6);
      *(a1 + 352) = 0;
    }
  }

  sub_1003617DC((a1 + 128));
  return a1;
}

void sub_100374D90(uint64_t a1, int a2)
{
  v2 = a2;
  if (*(a1 + 120) == a2 && os_log_type_enabled(qword_100BCE958, OS_LOG_TYPE_FAULT))
  {
    sub_1008203FC();
  }

  *(a1 + 120) = v2;
  if (v2)
  {
    v4 = qword_100BCE958;
    if (os_log_type_enabled(qword_100BCE958, OS_LOG_TYPE_INFO))
    {
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Read Source Suspend", v13, 2u);
    }

    dispatch_suspend(*(a1 + 184));
    *v13 = 0;
    sub_100016250(v13);
    v5 = *&v13[4];
    *(a1 + 384) = *v13;
    *(a1 + 392) = v5;
  }

  else
  {
    *v13 = 0;
    sub_100016250(v13);
    v6 = 1000 * (*v13 - *(a1 + 384)) - *(a1 + 392) + *&v13[4];
    v7 = v6 >> 3;
    v8 = v6 / 0x3E8;
    v9 = v6 % 0x3E8;
    dispatch_resume(*(a1 + 184));
    v10 = qword_100BCE958;
    if (v7 < 0x271)
    {
      if (!os_log_type_enabled(qword_100BCE958, OS_LOG_TYPE_INFO))
      {
        return;
      }

      *v13 = 134218240;
      *&v13[4] = v8;
      v14 = 2048;
      v15 = v9;
      v11 = v10;
      v12 = OS_LOG_TYPE_INFO;
    }

    else
    {
      if (!os_log_type_enabled(qword_100BCE958, OS_LOG_TYPE_DEFAULT))
      {
        return;
      }

      *v13 = 134218240;
      *&v13[4] = v8;
      v14 = 2048;
      v15 = v9;
      v11 = v10;
      v12 = OS_LOG_TYPE_DEFAULT;
    }

    _os_log_impl(&_mh_execute_header, v11, v12, "Read Source Resume.  Suspended for %lld.%03lld seconds", v13, 0x16u);
  }
}

uint64_t sub_100374F94(uint64_t a1, int a2)
{
  v2 = *(a1 + 32);
  if (v2 < 0x200)
  {
    a2 = 1;
  }

  if (v2 < 0x400)
  {
    v4 = a2;
  }

  else
  {
    v4 = 0;
  }

  if ((v4 & 1) == 0)
  {
    operator delete(**(a1 + 8));
    *(a1 + 8) += 8;
    *(a1 + 32) -= 512;
  }

  return v4 ^ 1u;
}

void sub_10037505C(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_10037505C(a1, *a2);
    sub_10037505C(a1, a2[1]);
    sub_10000CEDC((a2 + 5), a2[6]);

    operator delete(a2);
  }
}

uint64_t *sub_1003750BC(uint64_t a1, unsigned __int16 *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = *(v2 + 32);
      if (v3 >= v5)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= v3)
    {
      return v4;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

uint64_t *sub_100375190(uint64_t a1, int *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = *(v2 + 28);
      if (v3 >= v5)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= v3)
    {
      return v4;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

uint64_t sub_100375264(uint64_t a1, unsigned __int8 *uu1)
{
  v3 = 0;
  result = *sub_10004A7D0(a1, &v3, uu1);
  if (!result)
  {
    sub_100375308();
  }

  return result;
}

void sub_100375378(_Unwind_Exception *a1)
{
  *v1 = 0;
  operator delete(v2);
  _Unwind_Resume(a1);
}

uint64_t sub_100375564(uint64_t a1, int *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = a1 + 8;
  do
  {
    if (*(v2 + 28) >= v3)
    {
      v4 = v2;
    }

    v2 = *(v2 + 8 * (*(v2 + 28) < v3));
  }

  while (v2);
  if (v4 == a1 + 8 || v3 < *(v4 + 28))
  {
    return 0;
  }

  sub_10002717C(a1, v4);
  operator delete(v4);
  return 1;
}

void *sub_1003755E8(uint64_t a1, unint64_t *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = v2[4];
      if (v3 >= v5)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= v3)
    {
      return v4;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

void *sub_100375774(void *result, void *a2)
{
  v3 = result;
  v4 = result[2];
  v5 = result[1];
  if (v4 == v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = ((v4 - v5) << 6) - 1;
  }

  v7 = result[5];
  v8 = v7 + result[4];
  if (v6 == v8)
  {
    result = sub_1003757FC(result);
    v5 = v3[1];
    v7 = v3[5];
    v8 = v3[4] + v7;
  }

  *(*(v5 + ((v8 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v8 & 0x1FF)) = *a2;
  v3[5] = v7 + 1;
  return result;
}

void *sub_1003757FC(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x200;
  v3 = v1 - 512;
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
    sub_1003138F4(a1, v9);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v10 = *v4;
  a1[1] = v4 + 1;
  return sub_1003613B4(a1, &v10);
}

void sub_100375984(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1003759D0(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0xEu);
}

uint64_t sub_100375A08(uint64_t a1, char *a2)
{
  v3 = sub_100364654(a1, a2, 1);
  *v3 = off_100AEDFB8;
  *(v3 + 96) = 0;
  *(v3 + 104) = 0;
  *(v3 + 113) = 0;
  mach_timebase_info((v3 + 116));
  v4 = 20000000 * *(a1 + 120) / *(a1 + 116);
  *(a1 + 128) = v4;
  *(a1 + 136) = v4;
  return a1;
}

void sub_100375AC4(uint64_t a1)
{
  v2 = qword_100BCE8D0;
  if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "AudioSendThread starting", buf, 2u);
  }

  sub_1003647B8(a1, 63);
  (*(*a1 + 88))(a1);
  v13 = 0;
  v3 = sub_10000E92C();
  sub_100007E30(buf, "A2DP");
  sub_100007E30(__p, "DisableDiagnosingLoop");
  v4 = (*(*v3 + 72))(v3, buf, __p, &v13);
  v5 = v13;
  if (v10 < 0)
  {
    operator delete(__p[0]);
  }

  v6 = v4 & v5;
  if (v12 < 0)
  {
    operator delete(*buf);
    if (!v6)
    {
      goto LABEL_11;
    }
  }

  else if (!v6)
  {
    goto LABEL_11;
  }

  v7 = qword_100BCE8D0;
  if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "DiagnosingAudioLoop for A2DP disabled by defaults write -  No AudioSendThread overwait / overrun reporting", buf, 2u);
  }

LABEL_11:
  sub_100375CBC(a1, 1);
  v8 = qword_100BCE8D0;
  if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "AudioSendThread stopping", buf, 2u);
  }
}

void sub_100375C88(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100375CBC(uint64_t a1, int a2)
{
  v4 = mach_absolute_time();
  result = (*(*a1 + 96))(a1);
  if (result)
  {
    do
    {
      if (a2 && (*(a1 + 112) & 1) == 0)
      {
        v6 = mach_absolute_time();
        if (v6 >= *(a1 + 128) + v4)
        {
          v11 = qword_100BCE8D0;
          if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_ERROR))
          {
            v13 = (v6 - v4) * *(a1 + 116) / *(a1 + 120) / 0xF4240;
            *buf = 67109120;
            v15 = v13;
            _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "AudioSendThread overrun (%u ms)", buf, 8u);
          }

          kdebug_trace();
        }
      }

      else
      {
        v6 = v4;
      }

      v7 = (*(*a1 + 104))(a1);
      if (a2)
      {
        v8 = v7;
        v4 = mach_absolute_time();
        v9 = v4 - v6;
        (*(*a1 + 56))(a1, (v4 - v6) * *(a1 + 116) / *(a1 + 120) / 0xF4240);
        if (v4 >= v8 + v6 + *(a1 + 136))
        {
          v10 = qword_100BCE8D0;
          if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_ERROR))
          {
            v12 = v9 * *(a1 + 116) / *(a1 + 120) / 0xF4240;
            *buf = 67109120;
            v15 = v12;
            _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "AudioSendThread overwait (%u ms)", buf, 8u);
          }

          kdebug_trace();
        }
      }

      else
      {
        v4 = v6;
      }

      result = (*(*a1 + 96))(a1);
    }

    while ((result & 1) != 0);
  }

  return result;
}

uint64_t sub_100375F94(uint64_t a1, char *a2)
{
  result = sub_100375A08(a1, a2);
  *result = off_100AEE038;
  *(result + 160) = 0;
  return result;
}

BOOL sub_100375FCC(uint64_t a1)
{
  *(a1 + 144) = mach_absolute_time();
  v2 = 1000 * (*(*a1 + 80))(a1) * *(a1 + 120) / *(a1 + 116);
  *(a1 + 152) = v2;
  *(a1 + 160) = 1;
  if (HIDWORD(v2))
  {
    v3 = qword_100BCE8D0;
    if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_FAULT))
    {
      v5 = 136446210;
      v6 = "fAudioInterval <= UINT32_MAX";
      _os_log_fault_impl(&_mh_execute_header, v3, OS_LOG_TYPE_FAULT, "Assertion failed: %{public}s", &v5, 0xCu);
      v2 = *(a1 + 152);
    }
  }

  return sub_1003647B0(a1, v2, v2 >> 2, v2 >> 2, 0);
}

uint64_t sub_1003760F8(uint64_t a1)
{
  v2 = *(a1 + 144) + *(a1 + 152);
  *(a1 + 144) = v2;
  mach_wait_until(v2);
  return *(a1 + 152);
}

void sub_100376134(uint64_t a1, char a2)
{
  v4 = qword_100BCE8D0;
  if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "setThreadStarted", v5, 2u);
  }

  *(a1 + 160) = a2;
}

uint64_t sub_1003761B0(uint64_t a1, char *a2, int a3)
{
  v5 = sub_100375A08(a1, a2);
  *v5 = off_100AEE0B8;
  *(v5 + 160) = 0;
  *(v5 + 184) = a3;
  if (a3)
  {
    *(a1 + 168) = dispatch_semaphore_create(0);
  }

  return a1;
}

uint64_t sub_100376218(uint64_t a1)
{
  *a1 = off_100AEE0B8;
  if (*(a1 + 184) == 1)
  {
    dispatch_release(*(a1 + 168));
  }

  return sub_1003646B4(a1);
}

uint64_t sub_100376284(uint64_t a1)
{
  *(a1 + 144) = mach_absolute_time();
  v2 = 1000 * (*(*a1 + 80))(a1) * *(a1 + 120) / *(a1 + 116);
  *(a1 + 152) = v2;
  *(a1 + 160) = 1;
  *(a1 + 113) = 0;
  if (HIDWORD(v2))
  {
    v3 = qword_100BCE8D0;
    if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_FAULT))
    {
      v5 = 136446210;
      v6 = "fAudioInterval <= UINT32_MAX";
      _os_log_fault_impl(&_mh_execute_header, v3, OS_LOG_TYPE_FAULT, "Assertion failed: %{public}s", &v5, 0xCu);
      v2 = *(a1 + 152);
    }
  }

  sub_1003647B0(a1, v2, v2 >> 2, v2 >> 2, 0);
  result = (*(*a1 + 80))(a1);
  *(a1 + 176) = 1000 * result * *(a1 + 120) / *(a1 + 116);
  if (*(a1 + 184) == 1)
  {
    return sub_100376408(a1);
  }

  return result;
}

uint64_t sub_100376408(uint64_t a1)
{
  if (*(a1 + 184) == 1)
  {
    dispatch_semaphore_wait(*(a1 + 168), 0xFFFFFFFFFFFFFFFFLL);
    v2 = a1 + 176;
  }

  else
  {
    v2 = a1 + 152;
    v3 = *(a1 + 144) + *(a1 + 152);
    *(v2 - 8) = v3;
    mach_wait_until(v3);
  }

  return *v2;
}

void sub_100376468(uint64_t a1, char a2)
{
  v4 = qword_100BCE8D0;
  if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "setThreadStarted", v5, 2u);
  }

  *(a1 + 160) = a2;
}

intptr_t sub_1003764E4(intptr_t result)
{
  if (*(result + 184) == 1)
  {
    return dispatch_semaphore_signal(*(result + 168));
  }

  return result;
}

uint64_t sub_100376664(uint64_t a1)
{
  *a1 = off_100AEE138;
  *(a1 + 8) = off_100AEE1D8;
  *(a1 + 16) = &off_100AEE208;
  *(a1 + 24) = off_100AEE220;
  *(a1 + 32) = &off_100AEE268;
  *(a1 + 40) = off_100AEE280;
  *(a1 + 48) = 0;
  *(a1 + 52) = 0;
  *(a1 + 54) = 1;
  *(a1 + 56) = 0;
  *(a1 + 64) = 10;
  *(a1 + 68) = 134742017;
  *(a1 + 72) = 0;
  *(a1 + 104) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 112) = 0;
  *(a1 + 133) = 0;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 141) = 1;
  *(a1 + 142) = 0;
  *(a1 + 148) = 0x800000008;
  *(a1 + 156) = -1;
  *(a1 + 158) = -1;
  *(a1 + 160) = 0;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0;
  *(a1 + 208) = 22;
  *(a1 + 212) = 0;
  *(a1 + 224) = 0;
  v2 = (a1 + 224);
  *(a1 + 216) = a1 + 224;
  v3 = (a1 + 216);
  *(a1 + 232) = 0;
  *(a1 + 243) = 0;
  *(a1 + 240) = 0;
  *(a1 + 247) = xmmword_1008A6890;
  *(a1 + 263) = 1280;
  *(a1 + 268) = 1;
  *(a1 + 272) = 0;
  sub_10000CEDC(a1 + 216, 0);
  *v3 = v2;
  *(a1 + 232) = 0;
  *v2 = 0;
  sub_100376880(a1);
  *(a1 + 80) = *(a1 + 72);
  return a1;
}

void sub_100376844(_Unwind_Exception *a1)
{
  v6 = v3;
  sub_10000CEDC(v2, *v5);
  v8 = *v6;
  if (*v6)
  {
    *(v1 + 120) = v8;
    operator delete(v8);
  }

  v9 = *v4;
  if (*v4)
  {
    *(v1 + 80) = v9;
    operator delete(v9);
  }

  _Unwind_Resume(a1);
}

void sub_100376880(uint64_t a1)
{
  v36 = 0;
  v2 = sub_10000E92C();
  sub_100007E30(buf, "Filippo");
  sub_100007E30(__p, "ForceISM24");
  v3 = (*(*v2 + 72))(v2, buf, __p, &v36);
  v4 = v36;
  if (v35 < 0)
  {
    operator delete(__p[0]);
  }

  v5 = v3 & v4;
  if ((v38 & 0x80000000) == 0)
  {
    if (!v5)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  operator delete(*buf);
  if (v5)
  {
LABEL_5:
    *(a1 + 152) = 0;
  }

LABEL_6:
  v6 = sub_10000E92C();
  sub_100007E30(buf, "Filippo");
  sub_100007E30(__p, "ForceUnii1");
  v7 = (*(*v6 + 72))(v6, buf, __p, &v36);
  v8 = v36;
  if (v35 < 0)
  {
    operator delete(__p[0]);
  }

  v9 = v7 & v8;
  if (v38 < 0)
  {
    operator delete(*buf);
    if (v9)
    {
      goto LABEL_10;
    }
  }

  else if (v9)
  {
LABEL_10:
    v10 = 1;
    goto LABEL_44;
  }

  v11 = sub_10000E92C();
  sub_100007E30(buf, "Filippo");
  sub_100007E30(__p, "ForceUnii3");
  v12 = (*(*v11 + 72))(v11, buf, __p, &v36);
  v13 = v36;
  if (v35 < 0)
  {
    operator delete(__p[0]);
  }

  v14 = v12 & v13;
  if (v38 < 0)
  {
    operator delete(*buf);
    if (v14)
    {
      goto LABEL_18;
    }
  }

  else if (v14)
  {
LABEL_18:
    v10 = 2;
    goto LABEL_44;
  }

  v15 = sub_10000E92C();
  sub_100007E30(buf, "Filippo");
  sub_100007E30(__p, "ForceUnii5a");
  v16 = (*(*v15 + 72))(v15, buf, __p, &v36);
  v17 = v36;
  if (v35 < 0)
  {
    operator delete(__p[0]);
  }

  v18 = v16 & v17;
  if (v38 < 0)
  {
    operator delete(*buf);
    if (v18)
    {
      goto LABEL_24;
    }
  }

  else if (v18)
  {
LABEL_24:
    v10 = 4;
    goto LABEL_44;
  }

  v19 = sub_10000E92C();
  sub_100007E30(buf, "Filippo");
  sub_100007E30(__p, "ForceUnii5b");
  v20 = (*(*v19 + 72))(v19, buf, __p, &v36);
  v21 = v36;
  if (v35 < 0)
  {
    operator delete(__p[0]);
  }

  v22 = v20 & v21;
  if (v38 < 0)
  {
    operator delete(*buf);
    if (v22)
    {
      goto LABEL_30;
    }
  }

  else if (v22)
  {
LABEL_30:
    v10 = 5;
    goto LABEL_44;
  }

  v23 = sub_10000E92C();
  sub_100007E30(buf, "Filippo");
  sub_100007E30(__p, "ForceUnii5c");
  v24 = (*(*v23 + 72))(v23, buf, __p, &v36);
  v25 = v36;
  if (v35 < 0)
  {
    operator delete(__p[0]);
  }

  v26 = v24 & v25;
  if (v38 < 0)
  {
    operator delete(*buf);
  }

  if (v26)
  {
    v10 = 6;
  }

  else
  {
    v27 = sub_10000E92C();
    sub_100007E30(buf, "Filippo");
    sub_100007E30(__p, "ForceUnii5d");
    v28 = (*(*v27 + 72))(v27, buf, __p, &v36);
    v29 = v36;
    if (v35 < 0)
    {
      operator delete(__p[0]);
    }

    v30 = v28 & v29;
    if (v38 < 0)
    {
      operator delete(*buf);
    }

    if (!v30)
    {
      v10 = *(a1 + 152);
      if (v10 == 8)
      {
        return;
      }

      goto LABEL_45;
    }

    v10 = 7;
  }

LABEL_44:
  *(a1 + 152) = v10;
LABEL_45:
  v31 = qword_100BCEA58;
  v32 = os_log_type_enabled(qword_100BCEA58, OS_LOG_TYPE_DEFAULT);
  if (v32)
  {
    v33 = sub_1003778E0(v32, v10);
    *buf = 136315138;
    *&buf[4] = v33;
    _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "Warning: BandSwitchManager: Defaults write ForceUnii is enabled for UNII %s", buf, 0xCu);
  }

  *(a1 + 142) = 1;
}

void sub_100376D70(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

void sub_100376DE0(uint64_t a1, uint64_t a2)
{
  sub_100376E90(a1 + 104, a2);
  v2 = qword_100BCEA58;
  if (os_log_type_enabled(qword_100BCEA58, OS_LOG_TYPE_DEFAULT))
  {
    v3 = 136315138;
    v4 = "void BT::BandSwitchManager::addEventListener(BandSwitchManagerListener *)";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s", &v3, 0xCu);
  }
}

void sub_100376E90(uint64_t a1, uint64_t a2)
{
  os_unfair_lock_lock(a1);
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 != v4)
  {
    while (*v5 != a2)
    {
      v5 += 8;
      if (v5 == v4)
      {
        goto LABEL_6;
      }
    }
  }

  if (v5 == v4)
  {
LABEL_6:
    v6 = a2;
    sub_10037C6AC((a1 + 8), v4, &v6);
    sub_1000C8CF0((a1 + 8));
  }

  os_unfair_lock_unlock(a1);
}

void sub_100376F1C(uint64_t a1, char a2)
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1003770E4;
  v3[3] = &unk_100AEE2A0;
  v4 = a2;
  sub_100377018(a1 + 104, v3);
  v2 = qword_100BCEA58;
  if (os_log_type_enabled(qword_100BCEA58, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v6 = "virtual void BT::BandSwitchManager::notifyHRBEnabled(BOOL)";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }
}

void sub_100377018(uint64_t a1, void *a2)
{
  v3 = a2;
  os_unfair_lock_lock(a1);
  v5 = 0;
  v6 = 0;
  v7 = 0;
  sub_100007F20(&v5, (a1 + 8));
  os_unfair_lock_unlock(a1);
  v4 = v5;
  if (v5 != v6)
  {
    do
    {
      v3[2](v3, *v4++);
    }

    while (v4 != v6);
    v4 = v5;
  }

  if (v4)
  {
    v6 = v4;
    operator delete(v4);
  }
}

void sub_100377114(uint64_t a1, uint64_t a2)
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100377210;
  v3[3] = &unk_100AEE2C0;
  v3[4] = a2;
  sub_100377018(a1 + 104, v3);
  v2 = qword_100BCEA58;
  if (os_log_type_enabled(qword_100BCEA58, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v5 = "virtual void BT::BandSwitchManager::notifyBandSwitched(Device *)";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }
}

void sub_100377240(uint64_t a1, uint64_t a2)
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100377350;
  v5[3] = &unk_100AEE2E0;
  v5[4] = a1;
  v5[5] = a2;
  sub_100377018(a1 + 104, v5);
  v3 = qword_100BCEA58;
  if (os_log_type_enabled(qword_100BCEA58, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 268);
    *buf = 136315394;
    v7 = "void BT::BandSwitchManager::notifyBandSwitchHRBExitVscSent(Device *)";
    v8 = 1024;
    v9 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s exitAoS %d", buf, 0x12u);
  }
}

void sub_100377384(uint64_t a1)
{
  if (sub_1003774D4())
  {
    v2 = sub_1004327A0();
    (*(*v2 + 48))(v2, a1 + 16);
    if (qword_100B508F0 != -1)
    {
      sub_100820484();
    }

    sub_1000F0D9C(off_100B508E8 + 240, a1 + 40);
    if (qword_100B50AA0 != -1)
    {
      sub_100820498();
    }

    sub_100312650(off_100B50A98 + 64, a1 + 8);
    v3 = sub_1000154A8();
    (*(*v3 + 128))(v3, a1 + 24);
    v4 = sub_100017E6C() + 304;

    sub_100312B50(v4, a1 + 32);
  }

  else
  {
    v5 = qword_100BCEA58;
    if (os_log_type_enabled(qword_100BCEA58, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "BandSwitchManager: Did not init as Chipset isn't supported", v6, 2u);
    }
  }
}

uint64_t sub_1003774D4()
{
  v9 = 1;
  v8 = 0;
  v0 = sub_10000E92C();
  sub_100007E30(buf, "Device");
  sub_100007E30(__p, "EnableHRB");
  (*(*v0 + 72))(v0, buf, __p, &v9);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  if (v13 < 0)
  {
    operator delete(*buf);
  }

  v1 = sub_10000E92C();
  sub_100007E30(buf, "Device");
  sub_100007E30(__p, "forceSupportHRB");
  (*(*v1 + 72))(v1, buf, __p, &v8);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  if (v13 < 0)
  {
    operator delete(*buf);
  }

  v2 = qword_100BCEA58;
  if (os_log_type_enabled(qword_100BCEA58, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109376;
    *&buf[4] = v9;
    v11 = 1024;
    v12 = v8;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "EnableHRB %d, forceSupportHRB %d", buf, 0xEu);
  }

  v3 = sub_10000C7D0();
  if (((*(*v3 + 2872))(v3) & 1) != 0 || v8 == 1)
  {
    v4 = v9;
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

void sub_1003776DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

void sub_100377720(uint64_t a1)
{
  sub_1003777A4(a1, 0);
  v2 = sub_100017F4C();
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100377828;
  v3[3] = &unk_100ADF8F8;
  v3[4] = a1;
  sub_10000CA94(v2, v3);
}

void sub_1003777A4(uint64_t a1, int a2)
{
  v4 = sub_100017F4C();
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10037AB60;
  v5[3] = &unk_100ADF940;
  v5[4] = a1;
  v6 = a2;
  sub_10000CA94(v4, v5);
}

void sub_100377828(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = qword_100BCEA58;
  if (os_log_type_enabled(qword_100BCEA58, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "BandSwitchManager: Update Bands after Stack Start", v3, 2u);
  }

  sub_1003777A4(v1, 3);
}

const char *sub_1003778BC(uint64_t a1, unsigned int a2)
{
  if (a2 > 0x16)
  {
    return "BandSwitchManager: Unknown BSM Event";
  }

  else
  {
    return off_100AEE370[a2];
  }
}

const char *sub_1003778E0(uint64_t a1, unsigned int a2)
{
  if (a2 > 8)
  {
    return "Unknown BSM Band Code";
  }

  else
  {
    return off_100AEE428[a2];
  }
}

BOOL sub_100377904(uint64_t a1)
{
  v2 = qword_100BCEA58;
  if (os_log_type_enabled(qword_100BCEA58, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 136315138;
    v18 = "BOOL BT::BandSwitchManager::BSMHRBEnablementConditionsMet()";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "BandSwitchManager: Entering %s", &v17, 0xCu);
  }

  sub_100377D58(a1);
  v3 = *(a1 + 56);
  if (v3 && *(a1 + 52) == 1 && *(a1 + 53) == 1 && *(a1 + 54) != 1)
  {
    if (*(a1 + 142))
    {
      if (*(v3 + 1436))
      {
        v6 = qword_100BCEA58;
        if (os_log_type_enabled(qword_100BCEA58, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v17) = 0;
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Warning: BandSwitchManager: HRB conditions met by overriding, due to defaults rights flag forceHRB being set!", &v17, 2u);
        }

        *(a1 + 69) = *(a1 + 152);
        return 1;
      }
    }

    else if (*(v3 + 1436))
    {
      if (*(v3 + 1438) == 1 && (*(a1 + 136) & 1) == 0 && *(a1 + 68) >= 2u && *(a1 + 69) && *(a1 + 141) == 1 && (*(a1 + 140) & 1) == 0 && (*(a1 + 137) & 1) == 0 && (*(a1 + 138) & 1) == 0 && *(a1 + 143) == 1 && (*(a1 + 139) & 1) == 0)
      {
        v16 = qword_100BCEA58;
        if (os_log_type_enabled(qword_100BCEA58, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v17) = 0;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "BandSwitchManager: HRB conditions met", &v17, 2u);
        }

        return 1;
      }

      v7 = 1;
LABEL_30:
      v8 = qword_100BCEA58;
      if (os_log_type_enabled(qword_100BCEA58, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v17) = 0;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "BandSwitchManager: HRB conditions are not met", &v17, 2u);
        v3 = *(a1 + 56);
        if ((*(v3 + 1436) & 1) == 0)
        {
          return 0;
        }
      }

      else if (!v7)
      {
        return 0;
      }

      if (*(v3 + 1438) == 1 && (*(a1 + 136) & 1) == 0)
      {
        v9 = sub_10000F034();
        (*(*v9 + 752))(v9, 0);
        if (*(a1 + 68) <= 1u)
        {
          v10 = sub_10000F034();
          (*(*v10 + 752))(v10, 7);
        }

        if (*(a1 + 140) == 1)
        {
          v11 = sub_10000F034();
          (*(*v11 + 752))(v11, 2);
        }

        if (*(a1 + 138) == 1)
        {
          v12 = sub_10000F034();
          (*(*v12 + 752))(v12, 4);
        }

        if (*(a1 + 137) == 1)
        {
          v13 = sub_10000F034();
          (*(*v13 + 752))(v13, 5);
        }

        if ((*(a1 + 143) & 1) == 0)
        {
          v14 = sub_10000F034();
          (*(*v14 + 752))(v14, 6);
        }

        if (*(a1 + 139) == 1)
        {
          v15 = sub_10000F034();
          (*(*v15 + 752))(v15, 3);
        }
      }

      return 0;
    }

    v7 = 0;
    goto LABEL_30;
  }

  v4 = qword_100BCEA58;
  result = os_log_type_enabled(qword_100BCEA58, OS_LOG_TYPE_DEFAULT);
  if (!result)
  {
    return result;
  }

  LOWORD(v17) = 0;
  _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "BandSwitchManager: BSM isn't ready to enable HRB yet", &v17, 2u);
  return 0;
}

void sub_100377D58(uint64_t a1)
{
  v2 = qword_100BCEA58;
  if (os_log_type_enabled(qword_100BCEA58, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "---------- BandSwitchManager START DUMP STATE ----------", buf, 2u);
  }

  v3 = *(a1 + 56);
  v4 = qword_100BCEA58;
  v5 = os_log_type_enabled(qword_100BCEA58, OS_LOG_TYPE_DEFAULT);
  if (!v3)
  {
    if (!v5)
    {
      goto LABEL_26;
    }

    *buf = 0;
    v10 = "BandSwitchManager: Device is NULL";
    v11 = v4;
    v12 = 2;
    goto LABEL_25;
  }

  if (v5)
  {
    sub_1000E5A58(v3, buf);
    if (v43 >= 0)
    {
      v6 = buf;
    }

    else
    {
      v6 = *buf;
    }

    *v44 = 136446210;
    v45 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Device                     : %{public}s", v44, 0xCu);
    if (v43 < 0)
    {
      operator delete(*buf);
    }

    v4 = qword_100BCEA58;
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(*(a1 + 56) + 1436);
    *buf = 67109120;
    *&buf[4] = v7;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "AoS State                  : %d", buf, 8u);
    v4 = qword_100BCEA58;
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    if (*(*(a1 + 56) + 1438))
    {
      v8 = "Yes";
    }

    else
    {
      v8 = "No";
    }

    *buf = 136315138;
    *&buf[4] = v8;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "AllowedBandSet             : %s", buf, 0xCu);
    v4 = qword_100BCEA58;
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    if (*(*(a1 + 56) + 1437))
    {
      v9 = "HRB";
    }

    else
    {
      v9 = "2.4Ghz";
    }

    *buf = 136315138;
    *&buf[4] = v9;
    v10 = "CurrentFrequency           : %s";
    v11 = v4;
    v12 = 12;
LABEL_25:
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, v10, buf, v12);
  }

LABEL_26:
  v13 = qword_100BCEA58;
  if (os_log_type_enabled(qword_100BCEA58, OS_LOG_TYPE_DEFAULT))
  {
    v14 = *(a1 + 52);
    *buf = 67109120;
    *&buf[4] = v14;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Stack State                : %d", buf, 8u);
    v13 = qword_100BCEA58;
  }

  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v15 = *(a1 + 53);
    *buf = 67109120;
    *&buf[4] = v15;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Location Update Complete   : %d", buf, 8u);
    v13 = qword_100BCEA58;
  }

  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v16 = *(a1 + 54);
    *buf = 67109120;
    *&buf[4] = v16;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Band Update Pending        : %d", buf, 8u);
    v13 = qword_100BCEA58;
  }

  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v17 = *(a1 + 136);
    *buf = 67109120;
    *&buf[4] = v17;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Debounce Enabled           : %d", buf, 8u);
    v13 = qword_100BCEA58;
  }

  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v18 = *(a1 + 64);
    *buf = 67109120;
    *&buf[4] = v18;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Debounce Retry Value       : %d", buf, 8u);
    v13 = qword_100BCEA58;
  }

  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v19 = *(a1 + 68);
    *buf = 67109120;
    *&buf[4] = v19;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Allowed Band               : 0x%X", buf, 8u);
    v13 = qword_100BCEA58;
  }

  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v20 = *(a1 + 69);
    *buf = 67109120;
    *&buf[4] = v20;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Current Band               : 0x%X", buf, 8u);
    v13 = qword_100BCEA58;
  }

  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v21 = *(a1 + 137);
    *buf = 67109120;
    *&buf[4] = v21;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Low Wi-Fi Rate             : %d", buf, 8u);
    v13 = qword_100BCEA58;
  }

  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v22 = *(a1 + 138);
    *buf = 67109120;
    *&buf[4] = v22;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "AWDL RTG State             : %d", buf, 8u);
    v13 = qword_100BCEA58;
  }

  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v23 = *(a1 + 140);
    *buf = 67109120;
    *&buf[4] = v23;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Host 5GHz AP State         : %d", buf, 8u);
    v13 = qword_100BCEA58;
  }

  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v24 = *(a1 + 139);
    *buf = 67109120;
    *&buf[4] = v24;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "UWB 5Ghz                   : %d", buf, 8u);
    v13 = qword_100BCEA58;
  }

  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v25 = *(a1 + 141);
    *buf = 67109120;
    *&buf[4] = v25;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "HRB Requested              : %d", buf, 8u);
    v13 = qword_100BCEA58;
  }

  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v26 = *(a1 + 143);
    *buf = 67109120;
    *&buf[4] = v26;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Suffucient BW for BT       : %d", buf, 8u);
    v13 = qword_100BCEA58;
  }

  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v27 = *(a1 + 144);
    *buf = 67109120;
    *&buf[4] = v27;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Wi-Fi BW GT Max            : %d", buf, 8u);
    v13 = qword_100BCEA58;
  }

  v28 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
  if (v28)
  {
    v29 = sub_1003778E0(v28, *(a1 + 148));
    *buf = 136315138;
    *&buf[4] = v29;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Wi-Fi Current Band         : %s", buf, 0xCu);
    v13 = qword_100BCEA58;
  }

  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v30 = ((*(a1 + 80) - *(a1 + 72)) >> 2) + 1;
    *buf = 67109120;
    *&buf[4] = v30;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Num Bands Available        : %d", buf, 8u);
    v13 = qword_100BCEA58;
  }

  v31 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
  if (v31)
  {
    v32 = sub_1003778E0(v31, *(a1 + 69));
    *buf = 136315138;
    *&buf[4] = v32;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Current Selected HRB Band  : %s", buf, 0xCu);
    v13 = qword_100BCEA58;
  }

  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v33 = *(a1 + 96);
    *buf = 67109120;
    *&buf[4] = v33;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Current HRB Band Idx       : %d", buf, 8u);
    v13 = qword_100BCEA58;
  }

  v35 = *(a1 + 72);
  v34 = *(a1 + 80);
  if (v34 != v35)
  {
    v36 = 0;
    do
    {
      v37 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
      if (v37)
      {
        v38 = sub_1003778E0(v37, *(v35 + 4 * v36));
        *buf = 136315138;
        *&buf[4] = v38;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "           %s ", buf, 0xCu);
        v13 = qword_100BCEA58;
        v35 = *(a1 + 72);
        v34 = *(a1 + 80);
      }

      ++v36;
    }

    while (v36 < (v34 - v35) >> 2);
  }

  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    *&buf[4] = "BSM_BAND_CODE_ISM24";
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "           %s ", buf, 0xCu);
    v13 = qword_100BCEA58;
  }

  if (*(a1 + 142) == 1 && os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "ForceHRB                   : On", buf, 2u);
    v13 = qword_100BCEA58;
  }

  v39 = *(a1 + 152);
  if (v39 != 8)
  {
    v40 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
    if (v40)
    {
      v41 = sub_1003778E0(v40, v39);
      *buf = 136315138;
      *&buf[4] = v41;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Force UNII for band        : %s", buf, 0xCu);
      v13 = qword_100BCEA58;
    }
  }

  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "---------- BandSwitchManager END DUMP STATE ----------", buf, 2u);
  }
}

uint64_t sub_1003786E4(uint64_t a1)
{
  v2 = qword_100BCEA58;
  if (os_log_type_enabled(qword_100BCEA58, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315138;
    v9 = "BOOL BT::BandSwitchManager::BSMHRBDebounceConditionsMet()";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "BandSwitchManager: Entering %s", &v8, 0xCu);
  }

  sub_100377D58(a1);
  v3 = *(a1 + 56);
  if (v3 && *(v3 + 1436) == 1 && (*(v3 + 1437) & 1) == 0)
  {
    v7 = qword_100BCEA58;
    if (os_log_type_enabled(qword_100BCEA58, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v8) = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "BandSwitchManager: HRB Debounce conditions met", &v8, 2u);
    }

    return 1;
  }

  else
  {
    v4 = qword_100BCEA58;
    v5 = os_log_type_enabled(qword_100BCEA58, OS_LOG_TYPE_DEFAULT);
    result = 0;
    if (v5)
    {
      LOWORD(v8) = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "BandSwitchManager: HRB Debounce conditions are not met", &v8, 2u);
      return 0;
    }
  }

  return result;
}

void sub_100378848(uint64_t a1)
{
  v2 = *(a1 + 168);
  v3 = qword_100BCEA58;
  v4 = os_log_type_enabled(qword_100BCEA58, OS_LOG_TYPE_DEFAULT);
  if (!v2)
  {
    if (!v4)
    {
      return;
    }

    *buf = 0;
    v16 = "BandSwitchManager: No Metrics to display";
    goto LABEL_27;
  }

  if (v4)
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "---------- BandSwitchManager START DUMP LAST SESSION METRICS ----------", buf, 2u);
    v3 = qword_100BCEA58;
  }

  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 160);
    *buf = 67109120;
    LODWORD(v18) = v5;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Session PID                : 0x%X", buf, 8u);
    v3 = qword_100BCEA58;
  }

  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 176);
    *buf = 134217984;
    v18 = v6;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Session Duration           : %llu", buf, 0xCu);
    v3 = qword_100BCEA58;
  }

  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 192);
    *buf = 134217984;
    v18 = v7;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "HRB Duration                : %llu", buf, 0xCu);
    v3 = qword_100BCEA58;
  }

  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 212);
    *buf = 67109120;
    LODWORD(v18) = v8;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Band Code                  : 0x%X", buf, 8u);
    v3 = qword_100BCEA58;
  }

  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Downswitch Reason", buf, 2u);
    v3 = qword_100BCEA58;
  }

  v9 = *(a1 + 216);
  if (v9 != (a1 + 224))
  {
    do
    {
      v10 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
      if (v10)
      {
        v11 = sub_1003778BC(v10, *(v9 + 7));
        v12 = *(v9 + 16);
        *buf = 136315394;
        v18 = v11;
        v19 = 1024;
        v20 = v12;
        _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s                         : %d", buf, 0x12u);
        v3 = qword_100BCEA58;
      }

      v13 = v9[1];
      if (v13)
      {
        do
        {
          v14 = v13;
          v13 = *v13;
        }

        while (v13);
      }

      else
      {
        do
        {
          v14 = v9[2];
          v15 = *v14 == v9;
          v9 = v14;
        }

        while (!v15);
      }

      v9 = v14;
    }

    while (v14 != (a1 + 224));
  }

  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    v16 = "---------- BandSwitchManager END DUMP LAST SESSION METRICS ----------";
LABEL_27:
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, v16, buf, 2u);
  }
}

uint64_t sub_100378B74(uint64_t a1, signed int a2)
{
  if (a2 <= 1)
  {
    if (a2)
    {
      if (a2 != 1)
      {
        goto LABEL_33;
      }

      v4 = *(a1 + 48);
    }

    else
    {
      v4 = *(a1 + 48);
      if (!v4)
      {
        return 0;
      }
    }

    if (v4 <= 4 && ((1 << v4) & 0x19) != 0)
    {
      v6 = qword_100BCEA58;
      if (os_log_type_enabled(qword_100BCEA58, OS_LOG_TYPE_DEFAULT))
      {
        v7 = off_100AEE4A8[v4];
        v8 = "BSM_STATE_IDLE";
        if (!a2)
        {
          v8 = "BSM_STATE_OFF";
        }

        v15 = 136446466;
        v16 = v7;
        v17 = 2082;
        v18 = v8;
        goto LABEL_31;
      }

      goto LABEL_32;
    }

LABEL_20:
    if (v4 == 1)
    {
      v6 = qword_100BCEA58;
      if (!os_log_type_enabled(qword_100BCEA58, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_32;
      }

      v9 = off_100AEE470[a2];
      v15 = 136446466;
      v16 = "BSM_STATE_IDLE";
      v17 = 2082;
      v18 = v9;
      goto LABEL_31;
    }

LABEL_23:
    if (v4 != 2)
    {
LABEL_26:
      if ((v4 & 0xFFFFFFFE) == 2)
      {
        v6 = qword_100BCEA58;
        if (os_log_type_enabled(qword_100BCEA58, OS_LOG_TYPE_DEFAULT))
        {
          v11 = "BSM_STATE_ANALYZE";
          v12 = off_100AEE4A8[a2];
          if (v4 == 3)
          {
            v11 = "BSM_STATE_CONFIGURE";
          }

          v15 = 136446466;
          v16 = v11;
          v17 = 2082;
          v18 = v12;
          goto LABEL_31;
        }

LABEL_32:
        result = 0;
        *(a1 + 48) = a2;
        return result;
      }

      goto LABEL_33;
    }

    v6 = qword_100BCEA58;
    if (!os_log_type_enabled(qword_100BCEA58, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_32;
    }

    v10 = off_100AEE488[a2];
    v15 = 136446466;
    v16 = "BSM_STATE_ANALYZE";
    v17 = 2082;
    v18 = v10;
LABEL_31:
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "BandSwitchManager: %{public}s -> %{public}s", &v15, 0x16u);
    goto LABEL_32;
  }

  switch(a2)
  {
    case 2:
      v4 = *(a1 + 48);
      goto LABEL_20;
    case 3:
      v4 = *(a1 + 48);
      goto LABEL_23;
    case 4:
      v4 = *(a1 + 48);
      goto LABEL_26;
  }

LABEL_33:
  v14 = qword_100BCEA58;
  if (os_log_type_enabled(qword_100BCEA58, OS_LOG_TYPE_FAULT))
  {
    sub_1008204AC(a1, a2, v14);
  }

  return 1;
}

void sub_100378E58(uint64_t a1, char a2, uint64_t a3)
{
  if (a3)
  {
    v6 = sub_100017F4C();
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100378EF0;
    v7[3] = &unk_100AEAF08;
    v7[4] = a1;
    v7[5] = a3;
    v8 = a2;
    sub_10000CA94(v6, v7);
  }
}

void sub_100378EF0(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 56);
  if (v3 && *(v3 + 1436) == 1 && *(a1 + 40) != v3 && *(a1 + 48) == 1)
  {
    if (os_log_type_enabled(qword_100BCEA58, OS_LOG_TYPE_ERROR))
    {
      sub_100820570();
    }

    return;
  }

  v4 = *(a1 + 40);
  if (v4 != v3)
  {
    v5 = qword_100BCEA58;
    if (os_log_type_enabled(qword_100BCEA58, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000E5A58(v4, __p);
      if (v10 >= 0)
      {
        v6 = __p;
      }

      else
      {
        v6 = __p[0];
      }

      *buf = 136446210;
      v12 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "BandSwitchManager: AoS update in BSMUpdateHRBState on new device %{public}s.", buf, 0xCu);
      if (v10 < 0)
      {
        operator delete(__p[0]);
      }

      v4 = *(a1 + 40);
    }

    *(v2 + 56) = v4;
    v3 = v4;
  }

  if (!v3)
  {
    if ((*(a1 + 48) & 1) == 0)
    {
LABEL_22:
      v7 = v2;
      v8 = 6;
LABEL_25:
      sub_1003777A4(v7, v8);
      return;
    }

LABEL_24:
    v7 = v2;
    v8 = 5;
    goto LABEL_25;
  }

  if (*(v3 + 1436) == 1)
  {
    if (*(a1 + 48))
    {
      if (os_log_type_enabled(qword_100BCEA58, OS_LOG_TYPE_ERROR))
      {
        sub_1008205D8();
      }

      return;
    }

    goto LABEL_22;
  }

  if (*(a1 + 48))
  {
    goto LABEL_24;
  }

  if (os_log_type_enabled(qword_100BCEA58, OS_LOG_TYPE_ERROR))
  {
    sub_1008205A4();
  }
}

void sub_1003790D0(uint64_t a1, uint64_t a2, int a3)
{
  if (a2)
  {
    v6 = sub_100017F4C();
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100379168;
    v7[3] = &unk_100AE0880;
    v7[4] = a1;
    v7[5] = a2;
    v8 = a3;
    sub_10000CA94(v6, v7);
  }
}

void sub_100379168(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (v3 == *(v2 + 56))
  {
    v3 = *(v2 + 56);
  }

  else
  {
    v4 = qword_100BCEA58;
    if (os_log_type_enabled(qword_100BCEA58, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000E5A58(v3, __p);
      if (v9 >= 0)
      {
        v5 = __p;
      }

      else
      {
        v5 = __p[0];
      }

      v6 = *(a1 + 48);
      *buf = 136446466;
      v11 = v5;
      v12 = 1024;
      v13 = v6;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "BandSwitchManager: AoS Exit on new device %{public}s. with exit type %d", buf, 0x12u);
      if (v9 < 0)
      {
        operator delete(__p[0]);
      }

      v3 = *(a1 + 40);
    }

    *(v2 + 56) = v3;
  }

  *(v2 + 268) = *(a1 + 48);
  if (v3 && (*(v3 + 1436) & 1) == 0)
  {
    v7 = qword_100BCEA58;
    if (os_log_type_enabled(qword_100BCEA58, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(__p[0]) = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "BandSwitchManager: Received duplicate AoS disablement in BSMExitAOSState for the same device", __p, 2u);
      v3 = *(v2 + 56);
    }

    sub_100377240(v2, v3);
  }

  else
  {
    sub_1003777A4(v2, 4);
  }
}

void sub_1003792F4(uint64_t a1, void *a2, char a3, char a4, char a5, char a6, char a7)
{
  v13 = a2;
  v14 = sub_100017F4C();
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1003793F8;
  v16[3] = &unk_100AE2880;
  v18 = a1;
  v15 = v13;
  v17 = v15;
  v19 = a3;
  v20 = a4;
  v21 = a5;
  v22 = a6;
  v23 = a7;
  sub_10000CA94(v14, v16);
}

void sub_1003793F8(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = qword_100BCEA58;
  if (os_log_type_enabled(qword_100BCEA58, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 32);
    v5 = *(a1 + 48);
    v6 = *(a1 + 49);
    v7 = *(a1 + 50);
    v8 = *(a1 + 51);
    v9 = *(a1 + 52);
    *buf = 138544642;
    v14 = v4;
    v15 = 1024;
    v16 = v5;
    v17 = 1024;
    v18 = v6;
    v19 = 1024;
    v20 = v7;
    v21 = 1024;
    v22 = v8;
    v23 = 1024;
    v24 = v9;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "BandSwitchManager::locationUpdate - country: %{public}@, ISM 2.4 CC: %u, LEFlag: %u, UNII-1 CC: %u, UNII-3 CC: %u, UNII-5 CC: %u", buf, 0x2Au);
  }

  v2[156] = *(a1 + 50);
  v2[157] = *(a1 + 51);
  v2[158] = *(a1 + 52);
  v2[53] = 0;
  sub_1003777A4(v2, 2);
  if ([*(a1 + 32) isEqualToString:@"KR"])
  {
    v10 = 22;
  }

  else
  {
    v10 = 5;
  }

  v2[259] = v10;
  v11 = sub_100017F4C();
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100379590;
  v12[3] = &unk_100ADF8F8;
  v12[4] = v2;
  sub_10008E008(v11, 1000, v12);
}

void sub_100379590(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = qword_100BCEA58;
  if (os_log_type_enabled(qword_100BCEA58, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "BandSwitchManager: Update Bands after Location Update", v3, 2u);
  }

  sub_1003777A4(v1, 3);
}

uint64_t sub_100379610(uint64_t a1)
{
  v1 = *(a1 + 56);
  if (v1)
  {
    LOBYTE(v1) = *(v1 + 1437);
  }

  return v1 & 1;
}

void sub_100379624(uint64_t a1, unsigned int a2)
{
  sub_100378B74(a1, 1);
  if (a2 == 1)
  {

    sub_10037969C(a1);
  }

  else
  {
    if (!a2)
    {
      *(a1 + 52) = 1;
    }

    sub_100379734(a1, a2);
  }
}

void sub_10037969C(uint64_t a1)
{
  *(a1 + 52) = 0;
  *(a1 + 56) = 0;
  *(a1 + 48) = 0;
  *(a1 + 70) = 2056;
  *(a1 + 64) = 10;
  *(a1 + 136) = 0;
  *(a1 + 54) = 1;
  *(a1 + 143) = 1;
  sub_10037A194(a1);
  v1 = qword_100BCEA58;
  if (os_log_type_enabled(qword_100BCEA58, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "BandSwitchManager: ---------- BSM State Machine Shutdown ----------", v2, 2u);
  }
}

void sub_100379734(uint64_t a1, unsigned int a2)
{
  sub_100378B74(a1, 2);
  if (a2 <= 3 && a2 != 1)
  {

    sub_100379B48(a1, a2);
    return;
  }

  v4 = *(a1 + 56);
  if (!v4)
  {
    if (os_log_type_enabled(qword_100BCEA58, OS_LOG_TYPE_ERROR))
    {
      sub_10082060C();
    }

    goto LABEL_26;
  }

  if (a2 != 5)
  {
    if ((a2 & 0xFFFFFFFD) == 4)
    {
      v11 = qword_100BCEA58;
      if ((*(v4 + 1436) & 1) == 0 && os_log_type_enabled(qword_100BCEA58, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&_mh_execute_header, v11, OS_LOG_TYPE_FAULT, "Received AoS End when AoS was already disabled.", buf, 2u);
        v4 = *(a1 + 56);
        v11 = qword_100BCEA58;
      }

      *(v4 + 1436) = 0;
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        LODWORD(v18) = 1;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "BandSwitchManager: Resetting hrbClassificationBands VSC with value 0x%x", buf, 8u);
      }

      v12 = sub_10000C7D0();
      (*(*v12 + 1704))(v12, 1, 1);
      v13 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW) - *(a1 + 168);
      *(a1 + 176) = v13;
      *(a1 + 136) = 0;
      v9 = qword_100BCEA58;
      if (!os_log_type_enabled(qword_100BCEA58, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_30;
      }

      *buf = 134217984;
      v18 = v13;
      v10 = "BandSwitchManager: Ending AoS Session. Duration was 0x%llX nSec";
      goto LABEL_25;
    }

LABEL_26:
    if (a2 == 7)
    {
      v14 = qword_100BCEA58;
      if (os_log_type_enabled(qword_100BCEA58, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "BandSwitchManager: Debounce Expired", buf, 2u);
      }

      *(a1 + 136) = 0;
    }

    goto LABEL_30;
  }

  v5 = qword_100BCEA58;
  if (*(v4 + 1436) == 1 && os_log_type_enabled(qword_100BCEA58, OS_LOG_TYPE_FAULT))
  {
    *buf = 0;
    _os_log_fault_impl(&_mh_execute_header, v5, OS_LOG_TYPE_FAULT, "Received AoS Start when AoS was already enabled.", buf, 2u);
    v4 = *(a1 + 56);
    v5 = qword_100BCEA58;
  }

  *(v4 + 1436) = 1;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 68);
    *buf = 67109120;
    LODWORD(v18) = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "BandSwitchManager: Sending hrbClassificationBands VSC with value 0x%X", buf, 8u);
  }

  v7 = sub_10000C7D0();
  (*(*v7 + 1704))(v7, *(a1 + 68), 1);
  v15 = 0;
  v16 = 0;
  sub_1000C2364(*(a1 + 56), &v16 + 1, &v16, &v15 + 1, &v15);
  sub_10037A194(a1);
  *(a1 + 160) = HIDWORD(v15);
  v8 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
  *(a1 + 168) = v8;
  *(a1 + 70) = 2056;
  v9 = qword_100BCEA58;
  if (!os_log_type_enabled(qword_100BCEA58, OS_LOG_TYPE_DEFAULT))
  {
    goto LABEL_30;
  }

  *buf = 134217984;
  v18 = v8;
  v10 = "BandSwitchManager: Starting AoS Session at 0x%llX nSec";
LABEL_25:
  _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, v10, buf, 0xCu);
LABEL_30:
  if ((sub_10037A230(a1, a2) & 1) == 0)
  {
    sub_10037A404(a1);
  }
}

void sub_100379B48(uint64_t a1, unsigned int a2)
{
  sub_100378B74(a1, 3);
  if (a2 == 3)
  {
    if (*(a1 + 53) == 1 && *(a1 + 54) == 1)
    {
      v20 = qword_100BCEA58;
      if (os_log_type_enabled(qword_100BCEA58, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v34[0]) = 0;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "BandSwitchManager: Sending hrbAllowedBands VSC", v34, 2u);
      }

      v21 = sub_10000C7D0();
      (*(*v21 + 1696))(v21, *(a1 + 68), 1);
      v22 = qword_100BCEA58;
      if (os_log_type_enabled(qword_100BCEA58, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v34[0]) = 0;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "BandSwitchManager: Sending HRB BE blocking VSC", v34, 2u);
      }

      v23 = sub_10000C7D0();
      (*(*v23 + 1808))(v23, 6, a1 + 247, a1 + 253, a1 + 259, 1);
      *(a1 + 54) = 0;
    }

    goto LABEL_56;
  }

  if (a2 != 2)
  {
    if (!a2)
    {
      v4 = qword_100BCEA58;
      if (os_log_type_enabled(qword_100BCEA58, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v34[0]) = 0;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "BandSwitchManager: Configuring Retry delay", v34, 2u);
      }

      sub_10037A474(a1);
      v5 = qword_100BCEA58;
      if (os_log_type_enabled(qword_100BCEA58, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v34[0]) = 0;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "BandSwitchManager: Sending hrbControl VSC", v34, 2u);
      }

      v6 = sub_10000C7D0();
      (*(*v6 + 1688))(v6, 1, 1);
      *(a1 + 54) = 1;
      v7 = qword_100BCEA58;
      if (os_log_type_enabled(qword_100BCEA58, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v34[0]) = 0;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "BandSwitchManager: Sending Initial hrbAllowedBands VSC", v34, 2u);
      }

      v8 = sub_10000C7D0();
      (*(*v8 + 1696))(v8, *(a1 + 68), 1);
      v9 = qword_100BCEA58;
      if (os_log_type_enabled(qword_100BCEA58, OS_LOG_TYPE_DEFAULT))
      {
        v34[0] = 67109120;
        v34[1] = 1;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "BandSwitchManager: Resetting hrbClassificationBands VSC with value 0x%x", v34, 8u);
      }

      v10 = sub_10000C7D0();
      (*(*v10 + 1704))(v10, 1, 1);
      v11 = qword_100BCEA58;
      if (os_log_type_enabled(qword_100BCEA58, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v34[0]) = 0;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "BandSwitchManager: Sending Initial HRB BE blocking VSC", v34, 2u);
      }

      v12 = sub_10000C7D0();
      (*(*v12 + 1808))(v12, 6, a1 + 247, a1 + 253, a1 + 259, 1);
    }

    goto LABEL_56;
  }

  v13 = *(a1 + 72);
  *(a1 + 68) = 1;
  *(a1 + 80) = v13;
  if (*(a1 + 156) != 255)
  {
    *(a1 + 68) = 3;
    *(a1 + 240) = 1;
    v34[0] = 1;
    sub_10036F480((a1 + 72), v34);
  }

  if (*(a1 + 157) != 255)
  {
    *(a1 + 68) |= 4u;
    *(a1 + 241) = 1;
    v14 = *(a1 + 72);
    v34[0] = 2;
    sub_10037A62C((a1 + 72), v14, v34);
  }

  if (*(a1 + 158) != 255)
  {
    *(a1 + 243) = 16843009;
    v34[0] = 4;
    sub_10036F480((a1 + 72), v34);
    v34[0] = 5;
    sub_10036F480((a1 + 72), v34);
    v34[0] = 6;
    sub_10036F480((a1 + 72), v34);
    v34[0] = 7;
    sub_10036F480((a1 + 72), v34);
    *(a1 + 68) |= 0xF0u;
  }

  *(a1 + 96) = 0;
  *(a1 + 69) = 1;
  v15 = *(a1 + 72);
  v16 = *(a1 + 80);
  if (v15 == v16)
  {
    v18 = *(a1 + 152);
  }

  else
  {
    v17 = 0;
    v18 = *(a1 + 152);
    do
    {
      v19 = *v15++;
      if (v19 == v18)
      {
        ++v17;
      }
    }

    while (v15 != v16);
    if (v17)
    {
LABEL_38:
      *(a1 + 69) = v18;
      *(a1 + 142) = 1;
      v24 = qword_100BCEA58;
      if (os_log_type_enabled(qword_100BCEA58, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v34[0]) = 0;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "BandSwitchManager: fDebugForceUNIIBand set to a band to a supported band", v34, 2u);
      }

      goto LABEL_43;
    }
  }

  if (v18 != 8)
  {
    if (v18)
    {
      v25 = qword_100BCEA58;
      if (os_log_type_enabled(qword_100BCEA58, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v34[0]) = 0;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "BandSwitchManager: fDebugForceUNIIBand set to a band that is not supported, ignoring fDebugForceUNIIBand", v34, 2u);
      }

      *(a1 + 142) = 0;
      goto LABEL_43;
    }

    goto LABEL_38;
  }

LABEL_43:
  v26 = *(a1 + 72);
  v27 = *(a1 + 80);
  v28 = *(a1 + 148);
  v29 = v27 - v26;
  if (v27 != v26)
  {
    v30 = 0;
    v31 = 0;
    v32 = v29 >> 2;
    while (1)
    {
      v33 = *(v26 + 4 * v30);
      if (v28 != v33)
      {
        break;
      }

      if ((*(a1 + 144) & 1) == 0)
      {
        v33 = *(a1 + 148);
        break;
      }

      v30 = ++v31;
      if (v32 <= v31)
      {
        goto LABEL_51;
      }
    }

    *(a1 + 69) = v33;
    *(a1 + 96) = v31;
  }

LABEL_51:
  *(a1 + 53) = 257;
  *(a1 + 143) = v28 != *(a1 + 69) || v28 == 1 || (*(a1 + 144) & 1) == 0;
LABEL_56:
  if ((sub_10037A230(a1, a2) & 1) == 0)
  {
    sub_10037A404(a1);
  }
}

void sub_10037A194(uint64_t a1)
{
  v2 = (a1 + 224);
  v1 = *(a1 + 224);
  *(a1 + 160) = 0;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0;
  *(a1 + 212) = 8;
  sub_10000CEDC(a1 + 216, v1);
  *v2 = 0;
  v2[1] = 0;
  *(v2 - 1) = v2;
  v3 = qword_100BCEA58;
  if (os_log_type_enabled(qword_100BCEA58, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "BandSwitchManager: Session Metrics cleared", v4, 2u);
  }
}

uint64_t sub_10037A230(uint64_t a1, unsigned int a2)
{
  v4 = *(a1 + 56);
  if (!v4)
  {
    if (sub_100377904(a1))
    {
LABEL_9:
      v7 = qword_100BCEA58;
      if (os_log_type_enabled(qword_100BCEA58, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v8 = "BandSwitchManager: ---------- Switch from ISM to HRB ----------";
        v9 = buf;
        goto LABEL_11;
      }

LABEL_12:
      v6 = 1;
      sub_10037A7EC(a1, a2, 1);
      return v6;
    }

    goto LABEL_16;
  }

  v5 = *(v4 + 1437);
  if (!sub_100377904(a1))
  {
    if (v5)
    {
      v10 = qword_100BCEA58;
      if (os_log_type_enabled(qword_100BCEA58, OS_LOG_TYPE_DEFAULT))
      {
        v15 = 0;
        v11 = "BandSwitchManager: ---------- Switch from HRB to ISM ----------";
        v12 = &v15;
LABEL_22:
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, v11, v12, 2u);
        goto LABEL_23;
      }

      goto LABEL_23;
    }

LABEL_16:
    if ((*(a1 + 71) | 8) == 8)
    {
      if (a2 == 4)
      {
        sub_100377240(a1, *(a1 + 56));
      }

      return 0;
    }

    v10 = qword_100BCEA58;
    if (os_log_type_enabled(qword_100BCEA58, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 0;
      v11 = "BandSwitchManager: ---------- Switch from HRB in progress to ISM ----------";
      v12 = &v14;
      goto LABEL_22;
    }

LABEL_23:
    sub_10037A7EC(a1, a2, 0);
    return 1;
  }

  if ((v5 & 1) == 0)
  {
    goto LABEL_9;
  }

  v6 = 0;
  if (a2 <= 0x14 && ((1 << a2) & 0x190000) != 0)
  {
    v7 = qword_100BCEA58;
    if (os_log_type_enabled(qword_100BCEA58, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 0;
      v8 = "BandSwitchManager: ---------- Change from HRB to HRB ----------";
      v9 = &v16;
LABEL_11:
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, v8, v9, 2u);
      goto LABEL_12;
    }

    goto LABEL_12;
  }

  return v6;
}

void sub_10037A404(uint64_t a1)
{
  sub_100378B74(a1, 1);
  v1 = qword_100BCEA58;
  if (os_log_type_enabled(qword_100BCEA58, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "BandSwitchManager: ---------- BSM State Machine END ----------", v2, 2u);
  }
}

void sub_10037A474(uint64_t a1)
{
  v11 = 0;
  v2 = sub_10000E92C();
  sub_100007E30(buf, "BSM");
  sub_100007E30(__p, "DebounceOverride");
  (*(*v2 + 128))(v2, buf, __p, &v11);
  if (v10 < 0)
  {
    operator delete(__p[0]);
  }

  if (v13 < 0)
  {
    operator delete(*buf);
  }

  v3 = v11;
  if ((v11 - 1) > 0x77)
  {
    v8 = qword_100BCEA58;
    if (!os_log_type_enabled(qword_100BCEA58, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    *buf = 0;
    v5 = "BandSwitchManager: Overriding Debounce failed. Using default";
    v6 = v8;
    v7 = 2;
  }

  else
  {
    *(a1 + 64) = v11;
    v4 = qword_100BCEA58;
    if (!os_log_type_enabled(qword_100BCEA58, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    *buf = 67109120;
    *&buf[4] = v3;
    v5 = "BandSwitchManager: Overriding Debounce value to %d seconds";
    v6 = v4;
    v7 = 8;
  }

  _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, v5, buf, v7);
}

void sub_10037A5F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

char *sub_10037A62C(void *a1, char *__src, _DWORD *a3)
{
  v4 = __src;
  v6 = a1[1];
  v7 = a1[2];
  if (v6 >= v7)
  {
    v10 = *a1;
    v11 = (&v6[-*a1] >> 2) + 1;
    if (v11 >> 62)
    {
      sub_1000C7698();
    }

    v12 = __src - v10;
    v13 = v7 - v10;
    if (v13 >> 1 > v11)
    {
      v11 = v13 >> 1;
    }

    if (v13 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v14 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v14 = v11;
    }

    v15 = v12 >> 2;
    v27 = a1;
    if (v14)
    {
      sub_10036F560(a1, v14);
    }

    v24 = 0;
    v25 = 4 * v15;
    v26 = (4 * v15);
    sub_10037C950(&v24, a3);
    v16 = v25;
    memcpy(v26, v4, a1[1] - v4);
    v17 = *a1;
    v18 = v25;
    *&v26 = v26 + a1[1] - v4;
    a1[1] = v4;
    v19 = v4 - v17;
    v20 = (v18 - (v4 - v17));
    memcpy(v20, v17, v19);
    v21 = *a1;
    *a1 = v20;
    v22 = a1[2];
    *(a1 + 1) = v26;
    *&v26 = v21;
    *(&v26 + 1) = v22;
    v24 = v21;
    v25 = v21;
    if (v21)
    {
      operator delete(v21);
    }

    return v16;
  }

  else if (__src == v6)
  {
    *v6 = *a3;
    a1[1] = v6 + 4;
  }

  else
  {
    v8 = __src + 4;
    if (v6 < 4)
    {
      v9 = a1[1];
    }

    else
    {
      *v6 = *(v6 - 1);
      v9 = v6 + 4;
    }

    a1[1] = v9;
    if (v6 != v8)
    {
      memmove(__src + 4, __src, v6 - v8);
    }

    *v4 = *a3;
  }

  return v4;
}

void sub_10037A7B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10037A7EC(uint64_t a1, int a2, uint64_t a3)
{
  sub_100378B74(a1, 4);
  v6 = qword_100BCEA58;
  if (os_log_type_enabled(qword_100BCEA58, OS_LOG_TYPE_DEFAULT))
  {
    v7 = "2.4Ghz";
    if (a3 == 1)
    {
      v7 = "HRB";
    }

    v17 = 136315138;
    v18 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "BandSwitchManager: Switching band to %s", &v17, 0xCu);
  }

  if (a3 == 1)
  {
    a3 = *(a1 + 69);
    *(a1 + 212) = a3;
  }

  else
  {
    if (*(a1 + 208) != 7)
    {
      *(a1 + 208) = a2;
    }

    if (a3)
    {
      a3 = *(a1 + 69);
    }
  }

  v8 = qword_100BCEA58;
  v9 = os_log_type_enabled(qword_100BCEA58, OS_LOG_TYPE_DEFAULT);
  if (v9)
  {
    v10 = sub_1003778E0(v9, a3);
    v11 = sub_1003778E0(v10, *(a1 + 71));
    v12 = sub_1003778E0(v11, *(a1 + 70));
    v17 = 136315650;
    v18 = v10;
    v19 = 2080;
    v20 = v11;
    v21 = 2080;
    v22 = v12;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "BandSwitchManager: Band to Switch to %s, Band Switch under progress %s, Band Switch Queued %s", &v17, 0x20u);
  }

  *(a1 + 70) = a3;
  v13 = *(a1 + 71);
  if (v13 != 8)
  {
    if (a3 == v13)
    {
      *(a1 + 70) = 8;
      v15 = qword_100BCEA58;
      if (!os_log_type_enabled(qword_100BCEA58, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_23;
      }

      LOWORD(v17) = 0;
      v16 = "BandSwitchManager: redundant Band Switch to the same band, Ignoring Bandswitch";
    }

    else
    {
      v15 = qword_100BCEA58;
      if (!os_log_type_enabled(qword_100BCEA58, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_23;
      }

      LOWORD(v17) = 0;
      v16 = "BandSwitchManager: Band switch under progress for a different band, will wait for it to complete";
    }

    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, v16, &v17, 2u);
    goto LABEL_23;
  }

  *(a1 + 71) = a3;
  *(a1 + 70) = 8;
  v14 = qword_100BCEA58;
  if (os_log_type_enabled(qword_100BCEA58, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v17) = 0;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "BandSwitchManager: No bandswitch in progress, starting one ASAP", &v17, 2u);
  }

  sub_10037AA5C(a1, *(a1 + 56) + 128, a3);
LABEL_23:
  sub_10037A404(a1);
}

BOOL sub_10037AA5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 48);
  if (v6 != 4 && (*(a1 + 145) & 1) == 0)
  {
    v7 = qword_100BCEA58;
    if (os_log_type_enabled(qword_100BCEA58, OS_LOG_TYPE_FAULT))
    {
      sub_100820640(v6, v7);
    }
  }

  *(a1 + 145) = 0;
  v8 = qword_100BCEA58;
  if (os_log_type_enabled(qword_100BCEA58, OS_LOG_TYPE_DEFAULT))
  {
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "BandSwitchManager: Sending hrbChangeConnectionBand VSC", v11, 2u);
  }

  v9 = sub_10000C7D0();
  return (*(*v9 + 1728))(v9, a2, a3, 1) == 0;
}

void sub_10037AB60(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = qword_100BCEA58;
  v4 = os_log_type_enabled(qword_100BCEA58, OS_LOG_TYPE_DEFAULT);
  if (v4)
  {
    v5 = *(v2 + 48);
    if (v5 > 4)
    {
      v6 = "Unknown BSM State";
    }

    else
    {
      v6 = off_100AEE4A8[v5];
    }

    v7 = sub_1003778BC(v4, *(a1 + 40));
    v8 = 136446466;
    v9 = v6;
    v10 = 2082;
    v11 = v7;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "BandSwitchManager: ---------- BSM State Machine START. Current State: %{public}s, Input Event: %{public}s ----------", &v8, 0x16u);
  }

  sub_100379624(v2, *(a1 + 40));
}

void sub_10037AC54(uint64_t a1, uint64_t a2, char a3)
{
  v6 = sub_100017F4C();
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10037ACE4;
  v7[3] = &unk_100AEAF08;
  v7[4] = a1;
  v7[5] = a2;
  v8 = a3;
  sub_10000CA94(v6, v7);
}

void sub_10037ACE4(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = *(v2 + 2);
  v29 = *v2;
  v30 = v4;
  if (qword_100B508F0 != -1)
  {
    sub_100820484();
  }

  v5 = sub_1000E6554(off_100B508E8, &v29, 1);
  if (v5)
  {
    v6 = v5;
    v7 = *(a1 + 48);
    if (*(v3 + 56) == v5)
    {
      v6 = *(v3 + 56);
    }

    else
    {
      if (os_log_type_enabled(qword_100BCEA58, OS_LOG_TYPE_ERROR))
      {
        sub_1008206EC();
      }

      *(v3 + 56) = v6;
    }

    sub_10054FB14(v6, v7 != 1);
    v8 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
    if (v7 == 1)
    {
      v9 = v8 - *(v3 + 184);
      *(v3 + 184) = 0;
      *(v3 + 192) = v9;
      *buf = v3 + 208;
      v10 = sub_100375190(v3 + 216, (v3 + 208));
      ++*(v10 + 16);
      if ((*(v3 + 208) | 2) == 6)
      {
        sub_100378848(v3);
      }

      *(v3 + 208) = 22;
    }

    else
    {
      *(v3 + 184) = v8;
    }

    if (*(v3 + 200))
    {
      v11 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
      v12 = qword_100BCEA58;
      if (os_log_type_enabled(qword_100BCEA58, OS_LOG_TYPE_DEFAULT))
      {
        v13 = (v11 - *(v3 + 200)) / 0xF4240;
        sub_1000E5A58(*(v3 + 56), __p);
        if (v34 >= 0)
        {
          v14 = __p;
        }

        else
        {
          v14 = *__p;
        }

        v15 = "2.4Ghz";
        *buf = 136446722;
        if (v7 != 1)
        {
          v15 = "HRB";
        }

        *&buf[4] = v14;
        v36 = 2080;
        v37 = v15;
        v38 = 2048;
        v39 = v13;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "BandSwitchManager: ---------- BSM HRB band changed. Device %{public}s Frequency %s ----------(%llu ms)", buf, 0x20u);
        if (v34 < 0)
        {
          operator delete(*__p);
        }
      }

      *(v3 + 200) = 0;
    }

    else
    {
      v16 = qword_100BCEA58;
      if (os_log_type_enabled(qword_100BCEA58, OS_LOG_TYPE_DEFAULT))
      {
        sub_1000E5A58(*(v3 + 56), buf);
        v17 = *buf;
        v18 = "2.4Ghz";
        if (v38 >= 0)
        {
          v17 = buf;
        }

        if (v7 != 1)
        {
          v18 = "HRB";
        }

        *__p = 136446466;
        *&__p[4] = v17;
        v32 = 2080;
        v33 = v18;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "BandSwitchManager: ---------- BSM HRB band changed. Device %{public}s Frequency %s ----------(Not initiated by BSM)", __p, 0x16u);
        if (SHIBYTE(v38) < 0)
        {
          operator delete(*buf);
        }
      }
    }

    sub_10037B21C(v3);
    (**v3)(v3, *(v3 + 56));
    (*(*v3 + 8))(v3, v7 != 1);
    if (v7 == 1)
    {
      v19 = 0;
    }

    else
    {
      v19 = *(v3 + 69);
    }

    v20 = qword_100BCEA58;
    if (os_log_type_enabled(qword_100BCEA58, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      *&buf[4] = v19;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "BandSwitchManager Daily time Updates called with bandCode %d", buf, 8u);
    }

    sub_10037B334(v3, v19);
    v21 = qword_100BCEA58;
    v22 = os_log_type_enabled(qword_100BCEA58, OS_LOG_TYPE_DEFAULT);
    if (v22)
    {
      v23 = sub_1003778E0(v22, *(v3 + 71));
      v24 = sub_1003778E0(v23, *(v3 + 70));
      *buf = 136315394;
      *&buf[4] = v23;
      v36 = 2080;
      v37 = v24;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "BandSwitchManager: Completed BandSwitch to %s and pending %s", buf, 0x16u);
    }

    v25 = *(v3 + 70);
    if (v25 == 8)
    {
      *(v3 + 71) = 8;
      *(v3 + 145) = 0;
    }

    else
    {
      v26 = qword_100BCEA58;
      if (*(v3 + 136) == 1)
      {
        if (os_log_type_enabled(qword_100BCEA58, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "BandSwitchManager: Debounce timer is enabled, will not band switch", buf, 2u);
          v26 = qword_100BCEA58;
        }

        *(v3 + 70) = 2056;
        v25 = 8;
      }

      v27 = os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT);
      if (v27)
      {
        v28 = sub_1003778E0(v27, v25);
        *buf = 136315138;
        *&buf[4] = v28;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "BandSwitchManager: Starting pending BandSwitch to %s", buf, 0xCu);
        v25 = *(v3 + 70);
      }

      *(v3 + 71) = v25;
      *(v3 + 145) = 1;
      sub_10037AA5C(v3, *(v3 + 56) + 128, v25);
      *(v3 + 70) = 8;
    }
  }

  else if (os_log_type_enabled(qword_100BCEA58, OS_LOG_TYPE_FAULT))
  {
    sub_100820720();
  }
}

void sub_10037B21C(uint64_t a1)
{
  if (sub_1003786E4(a1))
  {
    *(a1 + 136) = 1;
    v2 = qword_100BCEA58;
    if (os_log_type_enabled(qword_100BCEA58, OS_LOG_TYPE_DEFAULT))
    {
      v3 = *(a1 + 64);
      *buf = 67109120;
      v8 = v3;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "BandSwitchManager: AoS enabled on 2.4. Debounce for %d seconds", buf, 8u);
    }

    v4 = sub_100017F4C();
    v5 = (1000 * *(a1 + 64));
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_10037BC64;
    v6[3] = &unk_100ADF8F8;
    v6[4] = a1;
    sub_10008E008(v4, v5, v6);
  }
}

void sub_10037B334(uint64_t a1, signed int a2)
{
  v4 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW) / 0x3B9ACA00;
  v5 = *(a1 + 276);
  if (v5)
  {
    v6 = (v4 - v5);
    v7 = sub_10000F034();
    (*(*v7 + 768))(v7, *(a1 + 272), v6);
  }

  if (!*(a1 + 272))
  {
    v8 = *(*sub_10000F034() + 760);
LABEL_7:
    v8();
    goto LABEL_9;
  }

  v8 = *(*sub_10000F034() + 760);
  if (a2 >= 1)
  {
    goto LABEL_7;
  }

  v8();
  LODWORD(v4) = 0;
LABEL_9:
  *(a1 + 276) = v4;
  v9 = qword_100BCEA58;
  v10 = os_log_type_enabled(qword_100BCEA58, OS_LOG_TYPE_DEFAULT);
  if (v10)
  {
    v11 = sub_1003778E0(v10, *(a1 + 272));
    v12 = 136315394;
    v13 = v11;
    v14 = 2080;
    v15 = sub_1003778E0(v11, a2);
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Called Function updateConnectionTimes with old band %s and new band %s", &v12, 0x16u);
  }

  *(a1 + 272) = a2;
}

void sub_10037B4FC(uint64_t a1, uint64_t a2, char a3, char a4)
{
  v8 = sub_100017F4C();
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10037B594;
  v9[3] = &unk_100AE0EF8;
  v9[4] = a1;
  v9[5] = a2;
  v10 = a4;
  v11 = a3;
  sub_10000CA94(v8, v9);
}

void sub_10037B594(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = *(v2 + 2);
  v21 = *v2;
  v22 = v4;
  if (qword_100B508F0 != -1)
  {
    sub_100820484();
  }

  v5 = sub_1000E6554(off_100B508E8, &v21, 1);
  v6 = qword_100BCEA58;
  if (os_log_type_enabled(qword_100BCEA58, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000E5A58(v5, __p);
    v7 = v20 >= 0 ? __p : __p[0];
    v8 = *(a1 + 48);
    v9 = *(a1 + 49) == 1 ? "2.4Ghz" : "HRB";
    *buf = 136446722;
    v24 = v7;
    v25 = 1024;
    v26 = v8;
    v27 = 2080;
    v28 = v9;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "BandSwitchManager: HRB band change for device %{public}s failed status:%d. Current band is still %s", buf, 0x1Cu);
    if (v20 < 0)
    {
      operator delete(__p[0]);
    }
  }

  *(v3 + 70) = 2056;
  if (*(a1 + 49) != 1)
  {
    *(v3 + 143) = 0;
    v10 = *(v3 + 96);
    v11 = *(v3 + 72);
    v12 = *(v3 + 80) - v11;
    v13 = v12 >> 2;
    v14 = v10 + 1;
    if (v12 >> 2 <= (v10 + 1))
    {
      v15 = v10 + 1;
    }

    else
    {
      v15 = v12 >> 2;
    }

    while (1)
    {
      if (v13 <= v14)
      {
        v16 = v15;
        goto LABEL_23;
      }

      v16 = v14;
      v17 = *(v11 + 4 * v14);
      if (*(v3 + 148) != v17)
      {
        break;
      }

      ++v14;
      if ((*(v3 + 144) & 1) == 0)
      {
        v17 = *(v3 + 148);
        break;
      }
    }

    *(v3 + 69) = v17;
    *(v3 + 96) = v16;
    *(v3 + 143) = 1;
    v18 = qword_100BCEA58;
    if (os_log_type_enabled(qword_100BCEA58, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      LODWORD(v24) = v17;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "BandSwitchManager: Sufficient Bandwidth for HRB TDD in band %d", buf, 8u);
      v13 = (*(v3 + 80) - *(v3 + 72)) >> 2;
    }

LABEL_23:
    if (v13 == v16)
    {
      *(v3 + 96) = -1;
    }

    sub_1003777A4(v3, 20);
  }
}

void sub_10037B7E0(uint64_t a1, int a2)
{
  if (a2)
  {
    v4 = sub_100017F4C();
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_10037B8AC;
    v6[3] = &unk_100ADF940;
    v6[4] = a1;
    v7 = a2;
    sub_10000CA94(v4, v6);
  }

  else
  {
    *(a1 + 200) = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
    if (*(a1 + 208) == 4)
    {
      v5 = *(a1 + 56);

      sub_100377240(a1, v5);
    }
  }
}

void sub_10037B8AC(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = qword_100BCEA58;
  if (os_log_type_enabled(qword_100BCEA58, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 40);
    v5[0] = 67109120;
    v5[1] = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "BandSwitchManager: ---------- BSM Change Band VSC Failed status:%d, switching to ISM band----------", v5, 8u);
  }

  *(v2 + 143) = 0;
  *(v2 + 70) = 2056;
  sub_1003777A4(v2, 20);
}

void sub_10037B978(uint64_t a1, int *a2, char a3)
{
  v7 = *a2;
  v8 = *(a2 + 2);
  v5 = sub_100017F4C();
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3321888768;
  v6[2] = sub_10037BA0C;
  v6[3] = &unk_100AEE300;
  v6[4] = a1;
  v9 = a3;
  sub_10000CA94(v5, v6);
}

void sub_10037BA0C(uint64_t a1)
{
  v2 = (a1 + 40);
  v3 = *(a1 + 32);
  if (*(a1 + 40))
  {
LABEL_2:
    if (qword_100B508F0 != -1)
    {
      sub_100820484();
    }

    v4 = sub_1000E6554(off_100B508E8, v2, 1);
    if (v4)
    {
      v5 = v4;
      v6 = qword_100BCEA58;
      if (os_log_type_enabled(qword_100BCEA58, OS_LOG_TYPE_DEFAULT))
      {
        v7 = *(a1 + 46);
        v12[0] = 67110912;
        v12[1] = v7;
        v13 = 1024;
        v14 = v7 & 2;
        v15 = 1024;
        v16 = v7 & 4;
        v17 = 1024;
        v18 = v7 & 8;
        v19 = 1024;
        v20 = v7 & 0x10;
        v21 = 1024;
        v22 = v7 & 0x20;
        v23 = 1024;
        v24 = v7 & 0x40;
        v25 = 1024;
        v26 = v7 & 0x80;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "BandSwitchManager: Allowed channels array -  raw 0x%x unii1 %d, unii3 %d, unii4 %d, unii5a %d, unii5b %d, unii5c %d, unii5d %d", v12, 0x32u);
      }

      v8 = *(v3 + 56);
      if (v8 != v5)
      {
        if (os_log_type_enabled(qword_100BCEA58, OS_LOG_TYPE_ERROR))
        {
          sub_100820760(v5);
        }

        *(v3 + 56) = v5;
        sub_10054FB14(v5, 0);
        v8 = *(v3 + 56);
        v8[89].n128_u8[12] = 0;
      }

      v8[89].n128_u8[14] = *(a1 + 46) > 1u;
      sub_1003777A4(v3, 17);
    }
  }

  else
  {
    v9 = 0;
    while (v9 != 5)
    {
      if (*(a1 + 41 + v9++))
      {
        if ((v9 - 1) < 5)
        {
          goto LABEL_2;
        }

        break;
      }
    }

    v11 = sub_10000F034();
    (*(*v11 + 744))(v11, 1);
    if (os_log_type_enabled(qword_100BCEA58, OS_LOG_TYPE_ERROR))
    {
      sub_1008207F8(v2);
    }
  }
}

uint64_t sub_10037BC50(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(result + 44) = *(a2 + 44);
  *(result + 40) = v2;
  return result;
}

void sub_10037BC70(uint64_t a1, char a2)
{
  v4 = sub_100017F4C();
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10037BCF4;
  v5[3] = &unk_100AE15D8;
  v5[4] = a1;
  v6 = a2;
  sub_10000CA94(v4, v5);
}

void sub_10037BCF4(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (*(v2 + 137) != v3)
  {
    *(v2 + 137) = v3;
    sub_1003777A4(v2, 10);
  }
}

void sub_10037BD24(uint64_t a1, char a2)
{
  v4 = sub_100017F4C();
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10037BDA8;
  v5[3] = &unk_100AE15D8;
  v5[4] = a1;
  v6 = a2;
  sub_10000CA94(v4, v5);
}

void sub_10037BDA8(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (*(v2 + 138) != v3)
  {
    *(v2 + 138) = v3;
    sub_1003777A4(v2, 11);
  }
}

void sub_10037BDD8(uint64_t a1, char a2)
{
  v4 = sub_100017F4C();
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10037BE5C;
  v5[3] = &unk_100AE15D8;
  v5[4] = a1;
  v6 = a2;
  sub_10000CA94(v4, v5);
}

void sub_10037BE5C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (*(v2 + 139) != v3)
  {
    *(v2 + 139) = v3;
    sub_1003777A4(v2, 12);
  }
}

void sub_10037BE8C(uint64_t a1, char a2)
{
  v4 = sub_100017F4C();
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10037BF10;
  v5[3] = &unk_100AE15D8;
  v5[4] = a1;
  v6 = a2;
  sub_10000CA94(v4, v5);
}

void sub_10037BF10(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (*(v2 + 140) != v3)
  {
    *(v2 + 140) = v3;
    sub_1003777A4(v2, 14);
  }
}

void sub_10037BF40(uint64_t a1, uint64_t a2)
{
  v4 = sub_100017F4C();
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10037BFC0;
  v5[3] = &unk_100AE0860;
  v5[4] = a1;
  v5[5] = a2;
  sub_10000CA94(v4, v5);
}

void sub_10037BFC0(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = *(v1 + 3);
  *(v2 + 240) = *v1;
  *(v2 + 243) = v3;
  v4 = qword_100BCEA58;
  if (os_log_type_enabled(qword_100BCEA58, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(v2 + 240);
    v6 = *(v2 + 241);
    v7 = *(v2 + 242);
    v8 = *(v2 + 243);
    v9 = *(v2 + 244);
    v10 = *(v2 + 245);
    v11 = *(v2 + 246);
    v32 = 67110656;
    *v33 = v5;
    *&v33[4] = 1024;
    *&v33[6] = v6;
    LOWORD(v34) = 1024;
    *(&v34 + 2) = v7;
    HIWORD(v34) = 1024;
    v35 = v8;
    v36 = 1024;
    v37 = v9;
    v38 = 1024;
    v39 = v10;
    v40 = 1024;
    v41 = v11;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "BandSwitchManager: Allowed channels array - unii1 %d, unii3 %d, unii4 %d, unii5a %d, unii5b %d, unii5c %d, unii5d %d", &v32, 0x2Cu);
  }

  v12 = *(v2 + 69);
  *(v2 + 80) = *(v2 + 72);
  if (*(v2 + 241) && *(v2 + 157) != 255)
  {
    v32 = 2;
    sub_10036F480((v2 + 72), &v32);
  }

  if (*(v2 + 240) && *(v2 + 156) != 255)
  {
    v32 = 1;
    sub_10036F480((v2 + 72), &v32);
  }

  if (*(v2 + 243) && *(v2 + 158) != 255)
  {
    v32 = 4;
    sub_10036F480((v2 + 72), &v32);
  }

  if (*(v2 + 244) && *(v2 + 158) != 255)
  {
    v32 = 5;
    sub_10036F480((v2 + 72), &v32);
  }

  if (*(v2 + 245) && *(v2 + 158) != 255)
  {
    v32 = 6;
    sub_10036F480((v2 + 72), &v32);
  }

  if (*(v2 + 246) && *(v2 + 158) != 255)
  {
    v32 = 7;
    sub_10036F480((v2 + 72), &v32);
  }

  v13 = *(v2 + 72);
  v14 = *(v2 + 80);
  if (v13 == v14)
  {
    v17 = (v2 + 143);
    v18 = *(v2 + 143);
    *(v2 + 143) = 0;
  }

  else
  {
    v15 = *(v2 + 72);
    v16 = v15;
    while (*v16 != *(v2 + 69))
    {
      v16 += 4;
      v15 += 4;
      if (v16 == v14)
      {
        v15 = *(v2 + 80);
        break;
      }
    }

    if (v14 != v15)
    {
      *(v2 + 96) = (v15 - v13) >> 2;
      return;
    }

    v24 = 0;
    v25 = 0;
    v17 = (v2 + 143);
    v18 = *(v2 + 143);
    *(v2 + 143) = 0;
    v26 = (v14 - v13) >> 2;
    v27 = *(v2 + 148);
    while (1)
    {
      v28 = *&v13[4 * v24];
      if (v28 != v27)
      {
        break;
      }

      if ((*(v2 + 144) & 1) == 0)
      {
        goto LABEL_41;
      }

      v24 = ++v25;
      if (v26 <= v25)
      {
        goto LABEL_29;
      }
    }

    LOBYTE(v27) = v28;
LABEL_41:
    *(v2 + 69) = v27;
    *(v2 + 96) = v25;
    *(v2 + 143) = 1;
    v29 = qword_100BCEA58;
    v30 = os_log_type_enabled(qword_100BCEA58, OS_LOG_TYPE_DEFAULT);
    if (v30)
    {
      v31 = sub_1003778E0(v30, v27);
      v32 = 136315138;
      *v33 = v31;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "BandSwitchManager: Channel map update - Sufficient Bandwidth for HRB TDD in band %s", &v32, 0xCu);
    }
  }

LABEL_29:
  v19 = *(v2 + 69);
  if (v12 != v19 || v18 != *v17)
  {
    v20 = qword_100BCEA58;
    v21 = os_log_type_enabled(qword_100BCEA58, OS_LOG_TYPE_DEFAULT);
    if (v21)
    {
      v22 = sub_1003778E0(v21, v12);
      v23 = sub_1003778E0(v22, v19);
      v32 = 136315394;
      *v33 = v22;
      *&v33[8] = 2080;
      v34 = v23;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "BandSwitchManager change channel map: ---------- Changing HRB Bands from %s to %s ----------", &v32, 0x16u);
    }

    sub_1003777A4(v2, 16);
  }
}

void sub_10037C380(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_100017F4C();
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10037C410;
  v8[3] = &unk_100AEC130;
  v8[4] = a1;
  v8[5] = a4;
  v8[6] = a3;
  sub_10000CA94(v7, v8);
}

void sub_10037C410(void *a1)
{
  v1 = a1[4];
  v2 = a1[5] - 1;
  if (v2 > 9)
  {
    v3 = 8;
  }

  else
  {
    v3 = dword_1008A68A0[v2];
  }

  v4 = *(v1 + 148);
  *(v1 + 148) = v3;
  v5 = a1[6];
  *(v1 + 144) = v5 > 0x28;
  v6 = *(v1 + 143);
  v7 = *(v1 + 69);
  v8 = qword_100BCEA58;
  v9 = os_log_type_enabled(qword_100BCEA58, OS_LOG_TYPE_DEFAULT);
  if (v9)
  {
    v24 = 136315906;
    v25 = sub_1003778E0(v9, v4);
    v26 = 2080;
    v27 = sub_1003778E0(v25, v3);
    v28 = 2048;
    v29 = v5;
    v30 = 2080;
    v31 = sub_1003778E0(v27, v7);
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "BandSwitchManager: Wi-Fi switched from %s to %s and BW %lluMHz with HRB band %s", &v24, 0x2Au);
  }

  *(v1 + 143) = 0;
  if (*(v1 + 142))
  {
    v10 = qword_100BCEA58;
    if (os_log_type_enabled(qword_100BCEA58, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v24) = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "BandSwitchManager: Wi-Fi band change ignored because forced UNII band is set", &v24, 2u);
    }
  }

  else
  {
    v11 = *(v1 + 72);
    v12 = *(v1 + 80);
    v13 = v12 - v11;
    if (v12 == v11)
    {
LABEL_14:
      v19 = 0;
    }

    else
    {
      v14 = 0;
      v15 = 0;
      v16 = v13 >> 2;
      v17 = *(v1 + 148);
      while (1)
      {
        v18 = *(v11 + 4 * v14);
        if (v18 != v17)
        {
          break;
        }

        if ((*(v1 + 144) & 1) == 0)
        {
          goto LABEL_16;
        }

        v14 = ++v15;
        if (v16 <= v15)
        {
          goto LABEL_14;
        }
      }

      LOBYTE(v17) = v18;
LABEL_16:
      *(v1 + 69) = v17;
      *(v1 + 96) = v15;
      v19 = 1;
      *(v1 + 143) = 1;
      v20 = qword_100BCEA58;
      v21 = os_log_type_enabled(qword_100BCEA58, OS_LOG_TYPE_DEFAULT);
      if (v21)
      {
        v22 = sub_1003778E0(v21, v17);
        v23 = sub_1003778E0(v22, v7);
        v24 = 136315394;
        v25 = v22;
        v26 = 2080;
        v27 = v23;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "BandSwitchManager: Sufficient Bandwidth for HRB TDD in band %s and previous HRB %s", &v24, 0x16u);
        v19 = *(v1 + 143);
      }
    }

    if (v6 != v19 || v7 != *(v1 + 69))
    {
      sub_1003777A4(v1, 19);
    }
  }
}

char *sub_10037C6AC(void *a1, char *__src, char *a3)
{
  v4 = __src;
  v6 = a1[1];
  v7 = a1[2];
  if (v6 >= v7)
  {
    v10 = *a1;
    v11 = (&v6[-*a1] >> 3) + 1;
    if (v11 >> 61)
    {
      sub_1000C7698();
    }

    v12 = __src - v10;
    v13 = v7 - v10;
    if (v13 >> 2 > v11)
    {
      v11 = v13 >> 2;
    }

    if (v13 >= 0x7FFFFFFFFFFFFFF8)
    {
      v14 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v14 = v11;
    }

    v15 = v12 >> 3;
    v29 = a1;
    if (v14)
    {
      sub_100008108(a1, v14);
    }

    v26 = 0;
    v27 = 8 * v15;
    v28 = (8 * v15);
    sub_1000DB838(&v26, a3);
    v16 = v27;
    memcpy(v28, v4, a1[1] - v4);
    v17 = *a1;
    v18 = v27;
    *&v28 = v28 + a1[1] - v4;
    a1[1] = v4;
    v19 = v4 - v17;
    v20 = (v18 - (v4 - v17));
    memcpy(v20, v17, v19);
    v21 = *a1;
    *a1 = v20;
    v22 = a1[2];
    *(a1 + 1) = v28;
    *&v28 = v21;
    *(&v28 + 1) = v22;
    v26 = v21;
    v27 = v21;
    if (v21)
    {
      operator delete(v21);
    }

    return v16;
  }

  else if (__src == v6)
  {
    *v6 = *a3;
    a1[1] = v6 + 8;
  }

  else
  {
    v8 = __src + 8;
    if (v6 < 8)
    {
      v9 = a1[1];
    }

    else
    {
      *v6 = *(v6 - 1);
      v9 = v6 + 8;
    }

    a1[1] = v9;
    if (v6 != v8)
    {
      memmove(__src + 8, __src, v6 - v8);
      v9 = a1[1];
    }

    v23 = v9 <= a3 || v4 > a3;
    v24 = 8;
    if (v23)
    {
      v24 = 0;
    }

    *v4 = *&a3[v24];
  }

  return v4;
}

void sub_10037C848(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_10037C950(void *result, _DWORD *a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 == result[3])
  {
    v5 = result[1];
    v6 = &v5[-*result];
    if (v5 <= *result)
    {
      if (v4 == *result)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*result] >> 1;
      }

      sub_10036F560(result[4], v11);
    }

    v7 = ((v6 >> 2) + 1) / -2;
    v8 = ((v6 >> 2) + 1) / 2;
    v9 = &v5[-4 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      result = memmove(&v5[-4 * v8], v5, v4 - v5);
      v5 = v3[1];
    }

    v4 = &v9[v10];
    v3[1] = &v5[4 * v7];
  }

  *v4 = *a2;
  v3[2] = v4 + 4;
  return result;
}

uint64_t sub_10037CA58(void *a1, _BYTE *a2)
{
  if (xpc_get_type(a1) == &_xpc_type_int64)
  {
    value = xpc_int64_get_value(a1);
    result = 0;
    *a2 = value;
  }

  else
  {
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_100820A10(a1);
    }

    return 3;
  }

  return result;
}

uint64_t sub_10037CAD8(void *a1, _WORD *a2)
{
  if (xpc_get_type(a1) == &_xpc_type_int64)
  {
    value = xpc_int64_get_value(a1);
    result = 0;
    *a2 = value;
  }

  else
  {
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_100820A10(a1);
    }

    return 3;
  }

  return result;
}

uint64_t sub_10037CB58(void *a1, void *a2)
{
  v5 = &off_100AE0A78;
  v6 = 0;
  v3 = sub_1000C9980(a1, &v5);
  if (!v3)
  {
    if (sub_10000C5E0(&v5) == 6)
    {
      sub_10004B788(&v5, a2, 6uLL);
      v3 = 0;
    }

    else
    {
      v3 = 3;
    }
  }

  v5 = &off_100AE0A78;
  if (v6)
  {
    sub_10000C808(v6);
  }

  return v3;
}

void sub_10037CBFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, atomic_uint *a10)
{
  if (a10)
  {
    sub_10000C808(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10037CC18(void *a1, uint64_t a2)
{
  if (xpc_get_type(a1) == &_xpc_type_array)
  {
    applier[0] = _NSConcreteStackBlock;
    applier[1] = 3221225472;
    applier[2] = sub_10037CCEC;
    applier[3] = &unk_100AEE500;
    applier[4] = a2;
    if (xpc_array_apply(a1, applier))
    {
      return 0;
    }

    else
    {
      return 3;
    }
  }

  else
  {
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_100820B78(a1);
    }

    return 3;
  }
}

BOOL sub_10037CCEC(uint64_t a1, uint64_t a2, void *a3)
{
  v18 = 0;
  v4 = sub_10037CAD8(a3, &v18);
  if (!v4)
  {
    v5 = *(a1 + 32);
    v7 = v5[1];
    v6 = v5[2];
    if (v7 >= v6)
    {
      v9 = *v5;
      v10 = v7 - *v5;
      v11 = v10 >> 1;
      if (v10 >> 1 <= -2)
      {
        sub_1000C7698();
      }

      v12 = v6 - v9;
      if (v12 <= v11 + 1)
      {
        v13 = v11 + 1;
      }

      else
      {
        v13 = v12;
      }

      v14 = v12 >= 0x7FFFFFFFFFFFFFFELL;
      v15 = 0x7FFFFFFFFFFFFFFFLL;
      if (!v14)
      {
        v15 = v13;
      }

      if (v15)
      {
        sub_1003705C4(v5, v15);
      }

      *(2 * v11) = v18;
      v8 = 2 * v11 + 2;
      memcpy(0, v9, v10);
      v16 = *v5;
      *v5 = 0;
      v5[1] = v8;
      v5[2] = 0;
      if (v16)
      {
        operator delete(v16);
      }
    }

    else
    {
      *v7 = v18;
      v8 = (v7 + 2);
    }

    v5[1] = v8;
  }

  return v4 == 0;
}

id sub_10037CDF8(void *a1, const char *a2)
{
  value = xpc_dictionary_get_value(a1, a2);
  if (value)
  {
    v3 = value;
    if (xpc_get_type(value) == &_xpc_type_uuid)
    {
      value = [[NSUUID alloc] initWithUUIDBytes:xpc_uuid_get_bytes(v3)];
    }

    else
    {
      value = 0;
    }
  }

  return value;
}

id sub_10037CE6C(void *a1, const char *a2)
{
  value = xpc_dictionary_get_value(a1, a2);
  if (value)
  {
    v3 = value;
    if (xpc_get_type(value) == &_xpc_type_data)
    {
      bytes_ptr = xpc_data_get_bytes_ptr(v3);
      value = [NSData dataWithBytes:bytes_ptr length:xpc_data_get_length(v3)];
    }

    else
    {
      value = 0;
    }
  }

  return value;
}

uint64_t sub_10037CEF8(void *a1, const char *a2)
{
  result = xpc_dictionary_get_value(a1, a2);
  if (result)
  {
    v3 = result;
    if (xpc_get_type(result) == &_xpc_type_int64)
    {
      return xpc_int64_get_value(v3) != 0;
    }

    else if (xpc_get_type(v3) == &_xpc_type_BOOL)
    {

      return xpc_BOOL_get_value(v3);
    }

    else
    {
      result = os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR);
      if (result)
      {
        sub_100820CD0();
        return 0;
      }
    }
  }

  return result;
}

id sub_10037CFB0(void *a1, const char *a2)
{
  value = xpc_dictionary_get_value(a1, a2);
  v3 = value;
  if (value)
  {
    if (xpc_get_type(value) == &_xpc_type_array)
    {
      v4 = +[NSMutableArray array];
      for (i = 0; ; ++i)
      {
        if (i >= xpc_array_get_count(v3))
        {
          v3 = v4;
          goto LABEL_16;
        }

        v6 = xpc_array_get_value(v3, i);
        v7 = v6;
        if (!v6)
        {
          break;
        }

        if (xpc_get_type(v6) != &_xpc_type_data)
        {
          break;
        }

        bytes_ptr = xpc_data_get_bytes_ptr(v7);
        v9 = [NSData dataWithBytes:bytes_ptr length:xpc_data_get_length(v7)];
        if (!v9)
        {
          break;
        }

        [v4 addObject:v9];
      }

      if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
      {
        sub_100820DEC();
      }

      v3 = 0;
LABEL_16:
    }

    else
    {
      if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
      {
        sub_100820D40();
      }

      v3 = 0;
    }
  }

  return v3;
}

id sub_10037D154(void *a1, const char *a2)
{
  value = xpc_dictionary_get_value(a1, a2);
  v3 = value;
  if (value)
  {
    if (xpc_get_type(value) == &_xpc_type_array)
    {
      v4 = +[NSMutableArray array];
      for (i = 0; ; ++i)
      {
        if (i >= xpc_array_get_count(v3))
        {
          v3 = v4;
          goto LABEL_18;
        }

        v6 = xpc_array_get_value(v3, i);
        v7 = v6;
        if (v6 && xpc_get_type(v6) == &_xpc_type_data)
        {
          bytes_ptr = xpc_data_get_bytes_ptr(v7);
          v8 = [NSData dataWithBytes:bytes_ptr length:xpc_data_get_length(v7)];
        }

        else
        {
          v8 = 0;
        }

        v10 = [v8 mutableCopy];

        if (!v10)
        {
          break;
        }

        [v4 addObject:v10];
      }

      if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
      {
        sub_100820DEC();
      }

      v3 = 0;
LABEL_18:
    }

    else
    {
      if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
      {
        sub_100820D40();
      }

      v3 = 0;
    }
  }

  return v3;
}

uint64_t sub_10037D384()
{
  v0 = sub_10000E92C();
  if (!(*(*v0 + 16))(v0))
  {
    return 0;
  }

  bzero(__str, 0x400uLL);
  v8 = 1024;
  if (sysctlbyname("kern.bootargs", __str, &v8, 0, 0))
  {
    return 0;
  }

  v3 = strtok(__str, " ");
  if (v3)
  {
    while (!strstr(v3, "srs.dev-sign-fw"))
    {
      v3 = strtok(0, " ");
      if (!v3)
      {
        goto LABEL_8;
      }
    }

    return 1;
  }

  else
  {
LABEL_8:
    v4 = IOServiceNameMatching("bluetooth");
    MatchingService = IOServiceGetMatchingService(kIOMainPortDefault, v4);
    if (!MatchingService)
    {
      return 0;
    }

    v6 = MatchingService;
    v7 = IORegistryEntrySearchCFProperty(MatchingService, "IODeviceTree", @"bt-use-dev-sign-firmware", kCFAllocatorDefault, 1u);
    v1 = v7 != 0;
    if (v7)
    {
      CFRelease(v7);
    }

    IOObjectRelease(v6);
  }

  return v1;
}

void sub_10037D4F4(unsigned __int8 *a1)
{
  v2 = *a1;
  if (v2 > 3)
  {
    if (*a1 > 6u)
    {
      if (v2 == 7)
      {
        if (*(a1 + 1))
        {
          v10 = 0;
          v11 = 0;
          do
          {
            sub_10037D4F4(*(a1 + 1) + v10);
            ++v11;
            v5 = *(a1 + 1);
            v10 += 16;
          }

          while (v11 < v5);
          goto LABEL_23;
        }

LABEL_24:
        v8 = 0;
        goto LABEL_25;
      }

      if (v2 != 8)
      {
        goto LABEL_28;
      }
    }

    else if (v2 != 4)
    {
      if (v2 != 6)
      {
        goto LABEL_28;
      }

      if (*(a1 + 1))
      {
        v3 = 0;
        v4 = 0;
        do
        {
          sub_10037D4F4(*(a1 + 1) + v3);
          ++v4;
          v5 = *(a1 + 1);
          v3 += 16;
        }

        while (v4 < v5);
LABEL_23:
        v8 = 16 * v5;
LABEL_25:
        v7 = (a1 + 8);
        v6 = *(a1 + 1);
        goto LABEL_26;
      }

      goto LABEL_24;
    }

    v7 = (a1 + 8);
    v6 = *(a1 + 1);
    v8 = *(a1 + 1);
LABEL_26:
    bzero(v6, v8);
    goto LABEL_27;
  }

  if (v2 != 1 && v2 != 2)
  {
    if (v2 != 3 || *(a1 + 1) != 16)
    {
      goto LABEL_28;
    }

LABEL_19:
    v7 = (a1 + 8);
LABEL_27:
    free(*v7);
    goto LABEL_28;
  }

  v9 = *(a1 + 1);
  if (v9 == 16 || v9 == 8)
  {
    goto LABEL_19;
  }

LABEL_28:

  bzero(a1, 0x10uLL);
}

uint64_t sub_10037D640(uint64_t *a1, uint64_t a2)
{
  if (*(a1 + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Server/Platforms/Darwin/BT_DataElements.cpp");
    goto LABEL_84;
  }

  v3 = *(a1 + 5);
  v4 = *(a1 + 6);
  if (v3 <= v4)
  {
LABEL_84:
    v40 = "ByteStream_NumReadBytesAvail(*pByteStream) >= 1";
    goto LABEL_86;
  }

  if (*(a1 + 14) != 1)
  {
    v40 = "(*pByteStream).__RWFlag == BYTESTREAM_READ";
LABEL_86:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Server/Platforms/Darwin/BT_DataElements.cpp", 336, v40);
  }

  v6 = *a1;
  *(a1 + 6) = v4 + 1;
  v7 = *(v6 + v4);
  *a2 = v7;
  if ((v3 - (v4 + 1)) <= 1)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Server/Platforms/Darwin/BT_DataElements.cpp", 337, "ByteStream_NumReadBytesAvail(*pByteStream) >= 2");
  }

  v8 = *(v6 + v4 + 1);
  *(a2 + 2) = v8;
  v9 = v4 + 3;
  *(a1 + 6) = v4 + 3;
  if (v7 <= 3)
  {
    if (v7 <= 1)
    {
      if (!v7)
      {
        return 1;
      }

      if (v8 != 16)
      {
        if (v8 == 8)
        {
          v15 = malloc_type_malloc(8uLL, 0x100004000313F17uLL);
          *(a2 + 8) = v15;
          if (*(a1 + 14) != 1)
          {
            v43 = "(*pByteStream).__RWFlag == BYTESTREAM_READ";
            goto LABEL_105;
          }

          if (*(a1 + 15))
          {
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Server/Platforms/Darwin/BT_DataElements.cpp");
LABEL_104:
            v43 = "ByteStream_NumReadBytesAvail(*pByteStream) >= (sizeof(OI_UINT64))";
LABEL_105:
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Server/Platforms/Darwin/BT_DataElements.cpp", 347, v43);
          }

          v16 = *(a1 + 6);
          if (*(a1 + 5) - v16 <= 7)
          {
            goto LABEL_104;
          }

LABEL_35:
          *v15 = *(*a1 + v16);
          v19 = *(a1 + 6) + 8;
LABEL_77:
          *(a1 + 6) = v19;
          return 1;
        }

        if ((v3 - v9) <= 3)
        {
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Server/Platforms/Darwin/BT_DataElements.cpp", 352, "ByteStream_NumReadBytesAvail(*pByteStream) >= 4");
        }

        goto LABEL_76;
      }

      v17 = malloc_type_malloc(0x10uLL, 0x1000040451B5BE8uLL);
      *(a2 + 8) = v17;
      if (*(a1 + 14) != 1)
      {
        v45 = "(*pByteStream).__RWFlag == BYTESTREAM_READ";
        goto LABEL_111;
      }

      if (*(a1 + 15))
      {
        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Server/Platforms/Darwin/BT_DataElements.cpp");
LABEL_110:
        v45 = "ByteStream_NumReadBytesAvail(*pByteStream) >= (sizeof(OI_UINT128))";
LABEL_111:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Server/Platforms/Darwin/BT_DataElements.cpp", 350, v45);
      }

      v18 = *(a1 + 6);
      if (*(a1 + 5) - v18 <= 0xF)
      {
        goto LABEL_110;
      }

LABEL_72:
      *v17 = *(*a1 + v18);
      v19 = *(a1 + 6) + 16;
      goto LABEL_77;
    }

    if (v7 == 2)
    {
      if (v8 != 16)
      {
        if (v8 == 8)
        {
          v15 = malloc_type_malloc(8uLL, 0x100004000313F17uLL);
          *(a2 + 8) = v15;
          if (*(a1 + 14) == 1)
          {
            if (*(a1 + 15))
            {
              sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Server/Platforms/Darwin/BT_DataElements.cpp");
            }

            else
            {
              v16 = *(a1 + 6);
              if (*(a1 + 5) - v16 > 7)
              {
                goto LABEL_35;
              }
            }

            v44 = "ByteStream_NumReadBytesAvail(*pByteStream) >= (sizeof(OI_INT64))";
          }

          else
          {
            v44 = "(*pByteStream).__RWFlag == BYTESTREAM_READ";
          }

          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Server/Platforms/Darwin/BT_DataElements.cpp", 359, v44);
        }

        if ((v3 - v9) <= 3)
        {
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Server/Platforms/Darwin/BT_DataElements.cpp", 364, "ByteStream_NumReadBytesAvail(*pByteStream) >= 4");
        }

LABEL_76:
        *(a2 + 8) = *(v6 + (v4 + 3));
        v19 = *(a1 + 6) + 4;
        goto LABEL_77;
      }

      v17 = malloc_type_malloc(0x10uLL, 0x1000040451B5BE8uLL);
      *(a2 + 8) = v17;
      if (*(a1 + 14) == 1)
      {
        if (*(a1 + 15))
        {
          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Server/Platforms/Darwin/BT_DataElements.cpp");
        }

        else
        {
          v18 = *(a1 + 6);
          if (*(a1 + 5) - v18 > 0xF)
          {
            goto LABEL_72;
          }
        }

        v46 = "ByteStream_NumReadBytesAvail(*pByteStream) >= (sizeof(OI_INT128))";
      }

      else
      {
        v46 = "(*pByteStream).__RWFlag == BYTESTREAM_READ";
      }

      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Server/Platforms/Darwin/BT_DataElements.cpp", 362, v46);
    }

    if (v8 != 16)
    {
      if ((v3 - v9) <= 3)
      {
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Server/Platforms/Darwin/BT_DataElements.cpp", 373, "ByteStream_NumReadBytesAvail(*pByteStream) >= 4");
      }

      goto LABEL_76;
    }

    v17 = malloc_type_malloc(0x10uLL, 0x1000040451B5BE8uLL);
    *(a2 + 8) = v17;
    if (*(a1 + 14) == 1)
    {
      if (*(a1 + 15))
      {
        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Server/Platforms/Darwin/BT_DataElements.cpp");
      }

      else
      {
        v18 = *(a1 + 6);
        if (*(a1 + 5) - v18 > 15)
        {
          goto LABEL_72;
        }
      }

      v42 = "ByteStream_NumReadBytesAvail(*pByteStream) >= (16)";
    }

    else
    {
      v42 = "(*pByteStream).__RWFlag == BYTESTREAM_READ";
    }

    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Server/Platforms/Darwin/BT_DataElements.cpp", 371, v42);
  }

  if (v7 <= 5)
  {
    if (v7 != 4)
    {
      if (v3 <= v9)
      {
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Server/Platforms/Darwin/BT_DataElements.cpp", 383, "ByteStream_NumReadBytesAvail(*pByteStream) >= 1");
      }

      *(a1 + 6) = v4 + 4;
      *(a2 + 8) = *(v6 + (v4 + 3)) != 0;
      return 1;
    }

    v24 = malloc_type_malloc(v8, 0x100004077774924uLL);
    *(a2 + 8) = v24;
    if (*(a1 + 14) == 1)
    {
      v11 = v24;
      v12 = *a1;
      v13 = *(a1 + 6);
      if (*(a1 + 15))
      {
        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Server/Platforms/Darwin/BT_DataElements.cpp");
        v25 = 0;
      }

      else
      {
        v25 = *(a1 + 5) - v13;
      }

      v29 = *(a2 + 2);
      if (v25 >= v29)
      {
        goto LABEL_64;
      }

      v30 = "ByteStream_NumReadBytesAvail(*pByteStream) >= (copy->Size)";
    }

    else
    {
      v30 = "(*pByteStream).__RWFlag == BYTESTREAM_READ";
    }

    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Server/Platforms/Darwin/BT_DataElements.cpp", 379, v30);
  }

  switch(v7)
  {
    case 6:
      result = malloc_type_malloc(16 * v8, 0x10F2040C8FBA5E1uLL);
      *(a2 + 8) = result;
      if (!result)
      {
        return result;
      }

      if (*(a2 + 2))
      {
        v21 = 0;
        v22 = 0;
        do
        {
          if ((sub_10037D640(a1, *(a2 + 8) + v21) & 1) == 0)
          {
            v39 = sub_10000E92C();
            sub_100693F74(v39, 1);
          }

          ++v22;
          v23 = *(a2 + 2);
          v21 += 16;
        }

        while (v22 < v23);
LABEL_50:
        if (v23)
        {
          return 1;
        }
      }

      return 0;
    case 7:
      result = malloc_type_malloc(16 * v8, 0x10F2040C8FBA5E1uLL);
      *(a2 + 8) = result;
      if (!result)
      {
        return result;
      }

      if (*(a2 + 2))
      {
        v26 = 0;
        v27 = 0;
        while ((sub_10037D640(a1, *(a2 + 8) + v26) & 1) != 0)
        {
          ++v27;
          v23 = *(a2 + 2);
          v26 += 16;
          if (v27 >= v23)
          {
            goto LABEL_50;
          }
        }

        v31 = qword_100BCE938;
        result = os_log_type_enabled(qword_100BCE938, OS_LOG_TYPE_ERROR);
        if (result)
        {
          sub_100820E64(v31, v32, v33, v34, v35, v36, v37, v38);
          return 0;
        }

        return result;
      }

      return 0;
    case 8:
      v10 = malloc_type_malloc(v8, 0x100004077774924uLL);
      *(a2 + 8) = v10;
      if (*(a1 + 14) == 1)
      {
        v11 = v10;
        v12 = *a1;
        v13 = *(a1 + 6);
        if (*(a1 + 15))
        {
          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Server/Platforms/Darwin/BT_DataElements.cpp");
          v14 = 0;
        }

        else
        {
          v14 = *(a1 + 5) - v13;
        }

        v29 = *(a2 + 2);
        if (v14 >= v29)
        {
LABEL_64:
          memmove(v11, (v12 + v13), v29);
          v19 = *(a1 + 6) + *(a2 + 2);
          goto LABEL_77;
        }

        v41 = "ByteStream_NumReadBytesAvail(*pByteStream) >= (copy->Size)";
      }

      else
      {
        v41 = "(*pByteStream).__RWFlag == BYTESTREAM_READ";
      }

      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Server/Platforms/Darwin/BT_DataElements.cpp", 424, v41);
  }

  v28 = qword_100BCE938;
  if (os_log_type_enabled(qword_100BCE938, OS_LOG_TYPE_ERROR))
  {
    v47[0] = 67109376;
    v47[1] = v7;
    v48 = 1024;
    v49 = v9;
    _os_log_error_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "SDP data element extraction error with type 0x%x, bytestream pos %d", v47, 0xEu);
    v28 = qword_100BCE938;
  }

  result = os_log_type_enabled(v28, OS_LOG_TYPE_FAULT);
  if (result)
  {
    sub_100820E9C(v28);
    return 0;
  }

  return result;
}

BOOL sub_10037DE4C(uint64_t *a1, unsigned __int8 *a2)
{
  if (*(a1 + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Server/Platforms/Darwin/BT_DataElements.cpp");
    goto LABEL_94;
  }

  v3 = *(a1 + 6);
  if (*(a1 + 5) <= v3)
  {
LABEL_94:
    v49 = "ByteStream_NumReadBytesAvail(*pByteStream) >= 1";
    goto LABEL_96;
  }

  if (*(a1 + 14) != 2)
  {
    v49 = "(*pByteStream).__RWFlag == BYTESTREAM_WRITE";
LABEL_96:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Server/Platforms/Darwin/BT_DataElements.cpp", 439, v49);
  }

  v5 = *a2;
  v6 = *a1;
  *(a1 + 6) = v3 + 1;
  *(v6 + v3) = v5;
  if (*(a1 + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Server/Platforms/Darwin/BT_DataElements.cpp");
    goto LABEL_98;
  }

  if (*(a1 + 5) - *(a1 + 6) <= 1)
  {
LABEL_98:
    v50 = "ByteStream_NumReadBytesAvail(*pByteStream) >= 2";
    goto LABEL_100;
  }

  if (*(a1 + 14) != 2)
  {
    v50 = "(*pByteStream).__RWFlag == BYTESTREAM_WRITE";
LABEL_100:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Server/Platforms/Darwin/BT_DataElements.cpp", 440, v50);
  }

  *(*a1 + *(a1 + 6)) = a2[2];
  *(*a1 + *(a1 + 6) + 1) = a2[3];
  v7 = *(a1 + 6);
  v8 = v7 + 2;
  *(a1 + 6) = v7 + 2;
  v9 = *a2;
  if (v9 <= 3)
  {
    if (*a2 <= 1u)
    {
      if (!*a2)
      {
        return 1;
      }

      v12 = *(a2 + 1);
      if (v12 != 16)
      {
        if (v12 == 8)
        {
          if (*(a1 + 15))
          {
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Server/Platforms/Darwin/BT_DataElements.cpp");
          }

          else
          {
            v13 = v8;
            if (*(a1 + 5) - v8 > 7)
            {
              if (*(a1 + 14) != 2)
              {
                v14 = "(*pByteStream).__RWFlag == BYTESTREAM_WRITE";
                goto LABEL_118;
              }

LABEL_43:
              *(*a1 + v13) = **(a2 + 1);
              v19 = *(a1 + 6) + 8;
LABEL_85:
              *(a1 + 6) = v19;
              return 1;
            }
          }

          v14 = "ByteStream_NumReadBytesAvail(*pByteStream) >= (sizeof(OI_UINT64))";
LABEL_118:
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Server/Platforms/Darwin/BT_DataElements.cpp", 450, v14);
        }

        if (*(a1 + 15))
        {
          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Server/Platforms/Darwin/BT_DataElements.cpp");
        }

        else if (*(a1 + 5) - v8 > 3)
        {
          if (*(a1 + 14) != 2)
          {
            v32 = "(*pByteStream).__RWFlag == BYTESTREAM_WRITE";
            goto LABEL_128;
          }

LABEL_84:
          *(*a1 + v8) = *(a2 + 2);
          *(*a1 + *(a1 + 6) + 1) = BYTE1(*(a2 + 2));
          *(*a1 + *(a1 + 6) + 2) = *(a2 + 5);
          *(*a1 + *(a1 + 6) + 3) = a2[11];
          v19 = *(a1 + 6) + 4;
          goto LABEL_85;
        }

        v32 = "ByteStream_NumReadBytesAvail(*pByteStream) >= 4";
LABEL_128:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Server/Platforms/Darwin/BT_DataElements.cpp", 454, v32);
      }

      if (*(a1 + 15))
      {
        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Server/Platforms/Darwin/BT_DataElements.cpp");
      }

      else if (*(a1 + 5) - v8 > 0xF)
      {
        if (*(a1 + 14) != 2)
        {
          v31 = "(*pByteStream).__RWFlag == BYTESTREAM_WRITE";
          goto LABEL_123;
        }

LABEL_76:
        *(*a1 + v8) = **(a2 + 1);
        v19 = *(a1 + 6) + 16;
        goto LABEL_85;
      }

      v31 = "ByteStream_NumReadBytesAvail(*pByteStream) >= (sizeof(OI_UINT128))";
LABEL_123:
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Server/Platforms/Darwin/BT_DataElements.cpp", 452, v31);
    }

    if (v9 != 2)
    {
      if (v9 != 3)
      {
        goto LABEL_53;
      }

      if (*(a2 + 1) == 16)
      {
        if (*(a1 + 15))
        {
          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Server/Platforms/Darwin/BT_DataElements.cpp");
        }

        else if (*(a1 + 5) - (v7 + 2) > 0xF)
        {
          if (*(a1 + 14) == 2)
          {
            goto LABEL_76;
          }

          v15 = "(*pByteStream).__RWFlag == BYTESTREAM_WRITE";
LABEL_112:
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Server/Platforms/Darwin/BT_DataElements.cpp", 470, v15);
        }

        v15 = "ByteStream_NumReadBytesAvail(*pByteStream) >= (sizeof (OI_UUID128))";
        goto LABEL_112;
      }

      if (*(a1 + 15))
      {
        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Server/Platforms/Darwin/BT_DataElements.cpp");
      }

      else if (*(a1 + 5) - v8 > 3)
      {
        if (*(a1 + 14) == 2)
        {
          goto LABEL_84;
        }

        v28 = "(*pByteStream).__RWFlag == BYTESTREAM_WRITE";
LABEL_115:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Server/Platforms/Darwin/BT_DataElements.cpp", 472, v28);
      }

      v28 = "ByteStream_NumReadBytesAvail(*pByteStream) >= 4";
      goto LABEL_115;
    }

    v18 = *(a2 + 1);
    if (v18 != 16)
    {
      if (v18 == 8)
      {
        if (*(a1 + 15))
        {
          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Server/Platforms/Darwin/BT_DataElements.cpp");
        }

        else
        {
          v13 = v8;
          if (*(a1 + 5) - v8 > 7)
          {
            if (*(a1 + 14) == 2)
            {
              goto LABEL_43;
            }

            v53 = "(*pByteStream).__RWFlag == BYTESTREAM_WRITE";
LABEL_132:
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Server/Platforms/Darwin/BT_DataElements.cpp", 460, v53);
          }
        }

        v53 = "ByteStream_NumReadBytesAvail(*pByteStream) >= (sizeof(OI_INT64))";
        goto LABEL_132;
      }

      if (*(a1 + 15))
      {
        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Server/Platforms/Darwin/BT_DataElements.cpp");
      }

      else if (*(a1 + 5) - v8 > 3)
      {
        if (*(a1 + 14) == 2)
        {
          goto LABEL_84;
        }

        v55 = "(*pByteStream).__RWFlag == BYTESTREAM_WRITE";
LABEL_136:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Server/Platforms/Darwin/BT_DataElements.cpp", 464, v55);
      }

      v55 = "ByteStream_NumReadBytesAvail(*pByteStream) >= 4";
      goto LABEL_136;
    }

    if (*(a1 + 15))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Server/Platforms/Darwin/BT_DataElements.cpp");
    }

    else if (*(a1 + 5) - v8 > 0xF)
    {
      if (*(a1 + 14) == 2)
      {
        goto LABEL_76;
      }

      v54 = "(*pByteStream).__RWFlag == BYTESTREAM_WRITE";
LABEL_134:
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Server/Platforms/Darwin/BT_DataElements.cpp", 462, v54);
    }

    v54 = "ByteStream_NumReadBytesAvail(*pByteStream) >= (sizeof(OI_INT128))";
    goto LABEL_134;
  }

  if (*a2 <= 5u)
  {
    if (v9 == 4)
    {
      v22 = *a1;
      v23 = *(a2 + 1);
      if (*(a1 + 15))
      {
        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Server/Platforms/Darwin/BT_DataElements.cpp");
        v24 = 0;
      }

      else
      {
        v24 = *(a1 + 5) - v8;
      }

      v29 = *(a2 + 1);
      if (v24 < v29)
      {
        v30 = "ByteStream_NumReadBytesAvail(*pByteStream) >= (elem->Size)";
      }

      else
      {
        if (*(a1 + 14) == 2)
        {
LABEL_68:
          memmove((v22 + v8), v23, v29);
          v19 = *(a1 + 6) + *(a2 + 1);
          goto LABEL_85;
        }

        v30 = "(*pByteStream).__RWFlag == BYTESTREAM_WRITE";
      }

      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Server/Platforms/Darwin/BT_DataElements.cpp", 477, v30);
    }

    if (v9 != 5)
    {
      goto LABEL_53;
    }

    if (*(a1 + 15))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Server/Platforms/Darwin/BT_DataElements.cpp");
    }

    else if (*(a1 + 5) > v8)
    {
      if (*(a1 + 14) == 2)
      {
        v16 = a2[8];
        v17 = *a1;
        *(a1 + 6) = v7 + 3;
        *(v17 + (v7 + 2)) = v16;
        return 1;
      }

      v51 = "(*pByteStream).__RWFlag == BYTESTREAM_WRITE";
LABEL_109:
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Server/Platforms/Darwin/BT_DataElements.cpp", 481, v51);
    }

    v51 = "ByteStream_NumReadBytesAvail(*pByteStream) >= 1";
    goto LABEL_109;
  }

  if (v9 == 6)
  {
    if (!*(a2 + 1))
    {
      return 1;
    }

    v20 = 0;
    v21 = 0;
    while ((sub_10037DE4C(a1, *(a2 + 1) + v20) & 1) != 0)
    {
      ++v21;
      v20 += 16;
      if (v21 >= *(a2 + 1))
      {
        return 1;
      }
    }

    v33 = qword_100BCE938;
    result = os_log_type_enabled(qword_100BCE938, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    sub_100820F58(v33, v34, v35, v36, v37, v38, v39, v40);
    return 0;
  }

  if (v9 == 8)
  {
    v22 = *a1;
    v23 = *(a2 + 1);
    if (*(a1 + 15))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Server/Platforms/Darwin/BT_DataElements.cpp");
      v25 = 0;
    }

    else
    {
      v25 = *(a1 + 5) - v8;
    }

    v29 = *(a2 + 1);
    if (v25 < v29)
    {
      v52 = "ByteStream_NumReadBytesAvail(*pByteStream) >= (elem->Size)";
    }

    else
    {
      if (*(a1 + 14) == 2)
      {
        goto LABEL_68;
      }

      v52 = "(*pByteStream).__RWFlag == BYTESTREAM_WRITE";
    }

    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Server/Platforms/Darwin/BT_DataElements.cpp", 506, v52);
  }

  if (v9 != 7)
  {
LABEL_53:
    v26 = qword_100BCE938;
    if (os_log_type_enabled(qword_100BCE938, OS_LOG_TYPE_ERROR))
    {
      v56[0] = 67109376;
      v56[1] = v9;
      v57 = 1024;
      v58 = v8;
      _os_log_error_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "Serialization: invalid SDP element type of 0x%x, bytestream pos %d", v56, 0xEu);
      v26 = qword_100BCE938;
    }

    result = os_log_type_enabled(v26, OS_LOG_TYPE_FAULT);
    if (!result)
    {
      return result;
    }

    sub_100820E9C(v26);
    return 0;
  }

  if (!*(a2 + 1))
  {
    return 1;
  }

  v10 = 0;
  v11 = 0;
  while ((sub_10037DE4C(a1, *(a2 + 1) + v10) & 1) != 0)
  {
    ++v11;
    v10 += 16;
    if (v11 >= *(a2 + 1))
    {
      return 1;
    }
  }

  v41 = qword_100BCE938;
  result = os_log_type_enabled(qword_100BCE938, OS_LOG_TYPE_ERROR);
  if (result)
  {
    sub_100820F20(v41, v42, v43, v44, v45, v46, v47, v48);
    return 0;
  }

  return result;
}

BOOL sub_10037E730(uint64_t a1, uint64_t a2)
{
  if (*a1 != 3 || *a2 != 3)
  {
    return 0;
  }

  v2 = *(a1 + 2);
  if (v2 != 2)
  {
    if (v2 == 16)
    {
      if (*(a2 + 2) == 16)
      {
        v6 = *(a1 + 8);
        v7 = *(a2 + 8);
        v9 = *v6;
        v8 = v6[1];
        v11 = *v7;
        v10 = v7[1];
        return v9 == v11 && v8 == v10;
      }

      v3 = *(a2 + 8);
      v4 = *(a1 + 8);
      goto LABEL_15;
    }

    if (v2 != 4)
    {
      return 0;
    }
  }

  v3 = *(a1 + 8);
  if (*(a2 + 2) == 16)
  {
    v4 = *(a2 + 8);
LABEL_15:
    v15 = v3 | 0x10000000000000;
    v13 = *v4;
    v14 = v4[1];
    return v13 == v15 && v14 == 0xFB349B5F80000080;
  }

  return v3 == *(a2 + 8);
}

uint64_t sub_10037E830(_BYTE *a1, unsigned __int8 *a2)
{
  bzero(a1, 0x10uLL);
  v4 = 0;
  v5 = *(a2 + 1);
  *(a1 + 1) = v5;
  v6 = *a2;
  *a1 = v6;
  if (v6 <= 3)
  {
    if (v6 > 1)
    {
      if (v6 != 2)
      {
        if (v5 != 16)
        {
          goto LABEL_20;
        }

        goto LABEL_19;
      }
    }

    else if (!v6)
    {
      return 1;
    }

    if (v5 != 16)
    {
      if (v5 == 8)
      {
        v7 = malloc_type_malloc(8uLL, 0x100004000313F17uLL);
        *(a1 + 1) = v7;
        *v7 = **(a2 + 1);
        return 1;
      }

LABEL_20:
      *(a1 + 2) = *(a2 + 2);
      return 1;
    }

LABEL_19:
    v9 = malloc_type_malloc(0x10uLL, 0x1000040451B5BE8uLL);
    *(a1 + 1) = v9;
    *v9 = **(a2 + 1);
    return 1;
  }

  if (v6 <= 5)
  {
    if (v6 == 4)
    {
LABEL_18:
      v8 = malloc_type_malloc(v5, 0x100004077774924uLL);
      *(a1 + 1) = v8;
      memcpy(v8, *(a2 + 1), *(a2 + 1));
      return 1;
    }

    a1[8] = a2[8];
    return 1;
  }

  if (v6 != 6)
  {
    if (v6 != 7)
    {
      if (v6 != 8)
      {
        return v4;
      }

      goto LABEL_18;
    }

    v14 = malloc_type_malloc(16 * v5, 0x10F2040C8FBA5E1uLL);
    *(a1 + 1) = v14;
    if (v14)
    {
      if (*(a2 + 1))
      {
        v15 = 0;
        v16 = 0;
        do
        {
          if ((sub_10037E830(*(a1 + 1) + v15, *(a2 + 1) + v15) & 1) == 0)
          {
            --*(a1 + 1);
          }

          ++v16;
          v15 += 16;
        }

        while (v16 < *(a2 + 1));
      }

      goto LABEL_34;
    }

    return 0;
  }

  v10 = malloc_type_malloc(16 * v5, 0x10F2040C8FBA5E1uLL);
  *(a1 + 1) = v10;
  if (!v10)
  {
    return 0;
  }

  if (*(a2 + 1))
  {
    v11 = 0;
    v12 = 0;
    v13 = 0;
    do
    {
      if ((sub_10037E830(*(a1 + 1) + 16 * v13, *(a2 + 1) + v11) & 1) == 0)
      {
        --*(a1 + 1);
        --v13;
      }

      ++v12;
      ++v13;
      v11 += 16;
    }

    while (v12 < *(a2 + 1));
  }

LABEL_34:
  v4 = *(a1 + 1);
  if (*(a1 + 1))
  {
    return 1;
  }

  return v4;
}

os_log_t *sub_10037EA90(os_log_t *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = os_log_create("com.apple.bluetooth", "BTAudio");
  return a1;
}

BOOL sub_10037EAD0(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = a2;
  v3 = off_100B54118;
  *(a1 + 16) = a2 + (strlen(off_100B54118) & 0xFFFFFFFFFFFFFFF8) + 56;
  v4 = strlen(v3);
  return strncmp((a2 + 41), v3, v4) == 0;
}

uint64_t sub_10037EB40(uint64_t result)
{
  *(result + 8) = 0;
  *(result + 16) = 0;
  return result;
}

unint64_t sub_10037EB48(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1)
  {
    if (*(v1 + 40) != 1)
    {
      return atomic_load((v1 + 24));
    }

    *(v1 + 8) = 0;
    *(v1 + 16) = 0;
    v2 = atomic_load((v1 + 24));
    atomic_fetch_add((*(a1 + 8) + 24), -v2);
    v3 = *(a1 + 8);
    *(v3 + 40) = 0;
    atomic_store(0, (v3 + 32));
    v1 = *(a1 + 8);
    if (v1)
    {
      return atomic_load((v1 + 24));
    }
  }

  else if (os_log_type_enabled(*a1, OS_LOG_TYPE_ERROR))
  {
    sub_100820F90();
  }

  return 0;
}

void *sub_10037EBE0(uint64_t a1, char *__dst, size_t a3)
{
  v5 = *(a1 + 8);
  v6 = v5[1];
  v7 = *v5;
  v8 = v6 + a3;
  v9 = *v5 - v6;
  if (a3 - v9 >= v6)
  {
    v10 = v6;
  }

  else
  {
    v10 = a3 - v9;
  }

  if (v8 >= v7)
  {
    v11 = v9;
  }

  else
  {
    v11 = a3;
  }

  result = memcpy(__dst, (v6 + *(a1 + 16)), v11);
  if (v8 >= v7 && v10 != 0)
  {
    result = memcpy(&__dst[v11], *(a1 + 16), v10);
  }

  if (v8 >= v7)
  {
    v14 = v10;
  }

  else
  {
    v14 = v8;
  }

  *(*(a1 + 8) + 8) = v14;
  return result;
}

unint64_t sub_10037EC7C(uint64_t a1, char *a2, size_t *a3, size_t a4)
{
  v6 = a1 + 8;
  v5 = *(a1 + 8);
  if ((v5[1] + 2) > *v5)
  {
    if (os_log_type_enabled(*a1, OS_LOG_TYPE_ERROR))
    {
      sub_100821044();
    }

    return 0;
  }

  v7 = v5[1];
  v8 = *(v7 + *(a1 + 16));
  if (!*(v7 + *(a1 + 16)))
  {
    return 0;
  }

  if (v8 >= a4)
  {
    v8 = a4;
  }

  *a3 = v8;
  v10 = v8 & 1;
  v11 = v8 + v10 + 2;
  v12 = atomic_load(v5 + 3);
  if (v11 > v12)
  {
    if (os_log_type_enabled(*a1, OS_LOG_TYPE_ERROR))
    {
      sub_100820FC4(a3, v6);
    }

    return 0;
  }

  v14 = *(a1 + 8);
  v14[1] += 2;
  v14[1] %= *v14;
  sub_10037EBE0(a1, a2, *a3);
  v15 = *(a1 + 8);
  if (v10)
  {
    v15[1] = (v15[1] + 1) % *v15;
  }

  atomic_fetch_add(v15 + 4, 0xFFFFFFFFFFFFFFFFLL);
  return v11;
}

size_t sub_10037EDB4(uint64_t a1, char *a2, size_t a3)
{
  v6 = sub_10037EB48(a1);
  if (!v6)
  {
    return 0;
  }

  if (v6 < a3)
  {
    a3 = v6;
  }

  sub_10037EBE0(a1, a2, a3);
  atomic_fetch_add((*(a1 + 8) + 24), -a3);
  return a3;
}

unint64_t sub_10037EE20(uint64_t a1, char *a2, size_t a3)
{
  result = sub_10037EB48(a1);
  if (result)
  {
    v7 = 0;
    result = sub_10037EC7C(a1, a2, &v7, a3);
    if (result)
    {
      atomic_fetch_add((*(a1 + 8) + 24), -result);
      return v7;
    }
  }

  return result;
}

BOOL sub_10037EE90(uint64_t a1, char *a2, size_t *a3, size_t a4, char *a5, size_t *a6, size_t a7)
{
  v14 = sub_10037EB48(a1);
  if (v14)
  {
    v15 = sub_10037EC7C(a1, a2, a3, a4);
    atomic_fetch_add((*(a1 + 8) + 24), -(sub_10037EC7C(a1, a5, a6, a7) + v15));
  }

  return v14 != 0;
}

BOOL sub_10037EF34(uint64_t a1, unint64_t a2)
{
  v3 = a1 + 8;
  v2 = *(a1 + 8);
  if (v2)
  {
    if (v2[5])
    {
      return 0;
    }

    v5 = *v2;
    v6 = atomic_load(v2 + 3);
    if (v5 + ~v6 >= a2)
    {
      return 1;
    }

    else
    {
      if (os_log_type_enabled(*a1, OS_LOG_TYPE_ERROR))
      {
        sub_100821078(v3);
      }

      result = 0;
      *(*v3 + 40) = 1;
    }
  }

  else
  {
    result = os_log_type_enabled(*a1, OS_LOG_TYPE_ERROR);
    if (result)
    {
      sub_1008210F8();
      return 0;
    }
  }

  return result;
}

void sub_10037EFF0(uint64_t a1, __int16 a2)
{
  v2 = *(a1 + 8);
  v3 = v2[2];
  v4 = *v2;
  if (v3 + 2 <= *v2)
  {
    *(v3 + *(a1 + 16)) = a2;
    v2[2] = (v3 + 2) % v4;
  }

  else if (os_log_type_enabled(*a1, OS_LOG_TYPE_ERROR))
  {
    sub_10082112C();
  }
}

void *sub_10037F058(uint64_t a1, char *a2, size_t a3)
{
  v6 = *(a1 + 8);
  v7 = v6[2];
  v8 = *v6;
  v9 = v7 + a3;
  v10 = *v6 - v7;
  v11 = a3 - v10;
  if (v7 + a3 >= *v6)
  {
    v12 = *v6 - v7;
  }

  else
  {
    v12 = a3;
  }

  result = memcpy((v7 + *(a1 + 16)), a2, v12);
  if (v9 >= v8 && a3 != v10)
  {
    result = memcpy(*(a1 + 16), &a2[v12], v11);
  }

  if (v9 >= v8)
  {
    v15 = v11;
  }

  else
  {
    v15 = v9;
  }

  *(*(a1 + 8) + 16) = v15;
  return result;
}

void sub_10037F0F0(uint64_t a1, char **a2, size_t *a3, uint64_t a4, __int16 a5, uint64_t a6)
{
  sub_10037EFF0(a1, a5);
  for (; a4; --a4)
  {
    v12 = *a2++;
    v11 = v12;
    v13 = *a3++;
    sub_10037F058(a1, v11, v13);
  }

  v14 = *(a1 + 8);
  if (a6)
  {
    v14[2] += a6;
    v14[2] %= *v14;
  }

  atomic_fetch_add(v14 + 4, 1uLL);
}

size_t sub_10037F188(uint64_t a1, char *a2, unint64_t a3)
{
  v3 = a3;
  if (!sub_10037EF34(a1, a3))
  {
    return 0;
  }

  sub_10037F058(a1, a2, v3);
  atomic_fetch_add((*(a1 + 8) + 24), v3);
  return v3;
}

unint64_t sub_10037F1EC(uint64_t a1, char *a2, size_t a3)
{
  v3 = a3;
  v8 = a3;
  v9 = a2;
  v5 = a3 & 1;
  v6 = a3 + v5 + 2;
  if (!sub_10037EF34(a1, v6))
  {
    return 0;
  }

  sub_10037F0F0(a1, &v9, &v8, 1, v3, v5);
  atomic_fetch_add((*(a1 + 8) + 24), v6);
  return v6;
}

unint64_t sub_10037F270(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1)
  {
    return atomic_load((v1 + 32));
  }

  else
  {
    return 0;
  }
}

void sub_10037F2D0(id a1)
{
  v1 = objc_alloc_init(BTVCConnectionManager);
  v2 = qword_100BCE4D8;
  qword_100BCE4D8 = v1;

  *(qword_100BCE4D8 + 185) = _os_feature_enabled_impl();
  v3 = qword_100BCEA70;
  if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_DEFAULT))
  {
    if (*(qword_100BCE4D8 + 185))
    {
      v4 = "Yes";
    }

    else
    {
      v4 = "No";
    }

    v5 = 136315138;
    v6 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "EnableBTVCLeConnection is %s", &v5, 0xCu);
  }
}

_BYTE *sub_10037F570(uint64_t a1)
{
  result = *(a1 + 32);
  if ((result[8] & 1) == 0)
  {
    return [result _activate];
  }

  return result;
}

void sub_100380DD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  objc_destroyWeak(va);
  objc_destroyWeak((v11 + 32));
  objc_destroyWeak((v10 + 32));
  objc_destroyWeak((v9 + 32));
  objc_destroyWeak((v8 + 32));
  objc_destroyWeak((v7 + 32));
  objc_destroyWeak((v12 - 88));

  _Unwind_Resume(a1);
}

void sub_100380E48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    [WeakRetained _handleHciEvent:a2 parameters:a3 length:a4];
  }
}

void sub_100380ECC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    [WeakRetained _handleLeMetaEvent:a2 parameters:a3 length:a4];
  }
}

void sub_100380F50(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _handleLmpEvent:v5];
  }
}

void sub_100380FCC(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v7 = a2;
  v8 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v10 = qword_100BCEA70;
    if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138412290;
      v12 = v8;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "dataHandler connectionHandle 0%@", &v11, 0xCu);
    }

    [WeakRetained _btvcLinkReceivedData:v7 packetBoundaryFlag:a3 connection:v8];
  }
}

void sub_1003810E8(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = WeakRetained;
  if (WeakRetained)
  {
    v8 = [*(WeakRetained + 8) objectForKeyedSubscript:v5];
    v9 = qword_100BCEA70;
    if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_DEFAULT))
    {
      v10 = v7[8];
      v19 = 138412290;
      v20 = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "connectionCompletedHandler connections %@\n", &v19, 0xCu);
    }

    v11 = qword_100BCEA70;
    v12 = v11;
    if (v8)
    {
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v13 = [v8 peerDevice];
        v14 = [v13 bluetoothAddress];
        v15 = [v14 addressData];
        v16 = [v8 peerDevice];
        v17 = [v16 bluetoothAddress];
        v18 = [v17 addressType];
        v19 = 138412802;
        v20 = v15;
        v21 = 1024;
        v22 = v18;
        v23 = 1024;
        v24 = a3;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Connection complete of device %@, type %d status:0x%x\n", &v19, 0x18u);
      }

      [v7 _handleLeConnectionComplete:v8 status:a3];
    }

    else
    {
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_10082127C(&v19, [v5 intValue], v12);
      }
    }
  }
}

void sub_100381368(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v9 = WeakRetained;
  if (WeakRetained)
  {
    v10 = [WeakRetained[8] objectForKeyedSubscript:v7];
    if (v10)
    {
      v11 = qword_100BCEA70;
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = [v10 peerDevice];
        v13 = [v12 bluetoothAddress];
        v14 = 138412802;
        v15 = v13;
        v16 = 1024;
        v17 = a3;
        v18 = 1024;
        v19 = a4;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "disconnection complete of device %@, status:0x%x, reason:0x%x\n", &v14, 0x18u);
      }

      [v9 _handleDisconnectionComplete:v7 status:a3 reason:a4];
    }

    else if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_ERROR))
    {
      sub_1008212C4();
    }
  }
}

void sub_100382424(_Unwind_Exception *a1)
{
  v6 = v5;

  _Unwind_Resume(a1);
}

void sub_100382BA0(uint64_t a1, void *a2)
{
  v11 = a2;
  v3 = [v11 peerDevice];
  v4 = [v3 identifier];
  v5 = *(a1 + 32);

  if (v4 == v5)
  {
    v7 = *(a1 + 40);
    v8 = [v11 connectionHandle];
    [v7 _setConnectionHandle:objc_msgSend(v8 allocated:{"intValue"), 0}];

    v9 = *(*(a1 + 40) + 64);
    v10 = [v11 connectionHandle];
    [v9 removeObjectForKey:v10];

    [v11 invalidate];
    v6 = 0;
  }

  else
  {
    v6 = v11;
  }
}

void sub_100382ED0(uint64_t a1, uint64_t a2)
{
  v4 = qword_100BCE950;
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT))
  {
    v5 = (a1 + 56);
    if (*(a1 + 79) < 0)
    {
      v5 = *v5;
    }

    *buf = 136315138;
    v13 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "XpcMBFrameworkConnection::handleDisconnection name:%s", buf, 0xCu);
  }

  *(a1 + 160) = 0;
  v6 = *(a1 + 128);
  if (v6 != (a1 + 136))
  {
    do
    {
      (*(*v6[4] + 8))(v6[4], *(a1 + 16), a2);
      if (qword_100B540D0 != -1)
      {
        sub_100821744();
      }

      v11[0] = _NSConcreteStackBlock;
      v11[1] = 3221225472;
      v11[2] = sub_100383104;
      v11[3] = &unk_100ADF8F8;
      v11[4] = v6 + 4;
      sub_100614A70(off_100B540C8, v11);
      v7 = v6[1];
      if (v7)
      {
        do
        {
          v8 = v7;
          v7 = *v7;
        }

        while (v7);
      }

      else
      {
        do
        {
          v8 = v6[2];
          v9 = *v8 == v6;
          v6 = v8;
        }

        while (!v9);
      }

      v6 = v8;
    }

    while (v8 != (a1 + 136));
  }

  if (qword_100B540D0 != -1)
  {
    sub_100821744();
  }

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100383138;
  v10[3] = &unk_100ADF8F8;
  v10[4] = a1;
  sub_100614A70(off_100B540C8, v10);
}

uint64_t sub_100383104(uint64_t a1)
{
  result = **(a1 + 32);
  if (result)
  {
    return (*(*result + 24))();
  }

  return result;
}

void sub_100383144(uint64_t a1, char *string, void *a3, int a4)
{
  *keys = *&off_100AEE6E0;
  object[0] = xpc_string_create(string);
  object[1] = a3;
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
  {
    sub_1008218A4();
  }

  if (a3)
  {
    v8 = 2;
  }

  else
  {
    v8 = 1;
  }

  v9 = xpc_dictionary_create(keys, object, v8);
  sub_100383258(a1, string, v9);
  xpc_connection_send_message(*(a1 + 16), v9);
  xpc_release(v9);
  xpc_release(object[0]);
  if (a3)
  {
    if (a4)
    {
      xpc_release(a3);
    }
  }
}

void sub_100383258(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = sub_10000E92C();
  v7 = (*(*v6 + 456))(v6);
  if (a3 && v7)
  {
    if (xpc_get_type(a3) == &_xpc_type_error)
    {
      v11 = qword_100BCE950;
      if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
      {
        sub_10082192C(v11);
      }
    }

    else
    {
      v8 = xpc_copy_description(a3);
      v9 = qword_100BCEA78;
      if (os_log_type_enabled(qword_100BCEA78, OS_LOG_TYPE_DEFAULT))
      {
        v10 = (a1 + 56);
        if (*(a1 + 79) < 0)
        {
          v10 = *v10;
        }

        v12 = 136446978;
        v13 = a2;
        v14 = 2082;
        v15 = v10;
        v16 = 1024;
        count = xpc_dictionary_get_count(a3);
        v18 = 2080;
        v19 = v8;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Msg:%{public}s, Session:%{public}s, Count:%d, xpc_copy_description(args): %s ", &v12, 0x26u);
      }

      free(v8);
    }
  }
}

uint64_t sub_1003833E0(uint64_t a1)
{
  *a1 = off_100AEE6C0;
  sub_10000CEDC(a1 + 128, *(a1 + 136));

  return sub_10007A588(a1);
}

void sub_10038343C(uint64_t a1)
{
  *a1 = off_100AEE6C0;
  sub_10000CEDC(a1 + 128, *(a1 + 136));
  sub_10007A588(a1);

  operator delete();
}

uint64_t *sub_1003834AC(uint64_t **a1, unint64_t *a2, uint64_t *a3)
{
  v4 = a1 + 1;
  v5 = a1[1];
  v6 = *a2;
  if (v5)
  {
    while (1)
    {
      while (1)
      {
        v7 = v5;
        v8 = v5[4];
        if (v6 >= v8)
        {
          break;
        }

        v5 = *v7;
        v4 = v7;
        if (!*v7)
        {
          goto LABEL_9;
        }
      }

      if (v8 >= v6)
      {
        return v7;
      }

      v5 = v7[1];
      if (!v5)
      {
        v4 = v7 + 1;
        goto LABEL_9;
      }
    }
  }

  else
  {
    v7 = a1 + 1;
LABEL_9:
    a3[4] = v6;
    sub_10000856C(a1, v7, v4, a3);
  }

  return a3;
}

_BYTE *sub_10038360C(_BYTE *a1, char a2, char a3)
{
  v6 = sub_1003039A4(0x101uLL);
  *a1 = v6;
  a1[8] = a2;
  if (v6)
  {
    v7 = *v6;
    if (!*v6 || (v8 = *(v6 + 4)) == 0)
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Server/Platforms/Darwin/VirtualController/BTVirtualHciPacket.mm", 23, "((*fBs).__data != NULL) && ((*fBs).__trueSize > 0)");
    }

    *(v6 + 6) = 0;
    *(v6 + 14) = 2;
    *(v6 + 5) = v8;
    if (*(v6 + 15))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Server/Platforms/Darwin/VirtualController/BTVirtualHciPacket.mm");
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Server/Platforms/Darwin/VirtualController/BTVirtualHciPacket.mm", 24, "ByteStream_NumReadBytesAvail(*fBs) >= 1");
    }

    *(v6 + 6) = 1;
    *v7 = a2;
    v9 = *a1;
    if (*(*a1 + 15))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Server/Platforms/Darwin/VirtualController/BTVirtualHciPacket.mm");
    }

    else
    {
      v10 = *(v9 + 6);
      if (*(v9 + 5) > v10)
      {
        if (*(v9 + 14) == 2)
        {
          v11 = *v9;
          *(v9 + 6) = v10 + 1;
          *(v11 + v10) = a3;
          return a1;
        }

        v13 = "(*fBs).__RWFlag == BYTESTREAM_WRITE";
LABEL_17:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Server/Platforms/Darwin/VirtualController/BTVirtualHciPacket.mm", 25, v13);
      }
    }

    v13 = "ByteStream_NumReadBytesAvail(*fBs) >= 1";
    goto LABEL_17;
  }

  if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_ERROR))
  {
    sub_100821970();
  }

  return a1;
}

uint64_t *sub_1003837AC(uint64_t *a1, __int16 a2, __int16 a3)
{
  v6 = sub_1003039A4((a3 + 4));
  *a1 = v6;
  if (v6)
  {
    v7 = *v6;
    if (!*v6 || (v8 = *(v6 + 4), !*(v6 + 4)))
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Server/Platforms/Darwin/VirtualController/BTVirtualHciPacket.mm", 41, "((*fBs).__data != NULL) && ((*fBs).__trueSize > 0)");
    }

    *(v6 + 6) = 0;
    *(v6 + 14) = 2;
    *(v6 + 5) = v8;
    if (*(v6 + 15))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Server/Platforms/Darwin/VirtualController/BTVirtualHciPacket.mm");
    }

    else if (v8 != 1)
    {
      *v7 = a2;
      *(**a1 + *(*a1 + 12) + 1) = HIBYTE(a2);
      v9 = *a1;
      v10 = *(*a1 + 12) + 2;
      *(v9 + 12) = v10;
      if (*(v9 + 15))
      {
        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Server/Platforms/Darwin/VirtualController/BTVirtualHciPacket.mm");
      }

      else if (*(v9 + 10) - v10 > 1)
      {
        if (*(v9 + 14) == 2)
        {
          *(*v9 + v10) = a3;
          *(**a1 + *(*a1 + 12) + 1) = HIBYTE(a3);
          *(*a1 + 12) += 2;
          return a1;
        }

        v12 = "(*fBs).__RWFlag == BYTESTREAM_WRITE";
LABEL_19:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Server/Platforms/Darwin/VirtualController/BTVirtualHciPacket.mm", 43, v12);
      }

      v12 = "ByteStream_NumReadBytesAvail(*fBs) >= 2";
      goto LABEL_19;
    }

    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Server/Platforms/Darwin/VirtualController/BTVirtualHciPacket.mm", 42, "ByteStream_NumReadBytesAvail(*fBs) >= 2");
  }

  if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_ERROR))
  {
    sub_1008219F8();
  }

  return a1;
}

void *sub_10038396C(void *a1, char a2)
{
  v4 = sub_1003039A4(0x101uLL);
  *a1 = v4;
  if (v4)
  {
    v5 = *v4;
    if (!*v4 || (v6 = *(v4 + 4)) == 0)
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Server/Platforms/Darwin/VirtualController/BTVirtualHciPacket.mm", 59, "((*fBs).__data != NULL) && ((*fBs).__trueSize > 0)");
    }

    *(v4 + 6) = 0;
    *(v4 + 14) = 2;
    *(v4 + 5) = v6;
    if (*(v4 + 15))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Server/Platforms/Darwin/VirtualController/BTVirtualHciPacket.mm");
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Server/Platforms/Darwin/VirtualController/BTVirtualHciPacket.mm", 60, "ByteStream_NumReadBytesAvail(*fBs) >= 1");
    }

    *(v4 + 6) = 1;
    *v5 = a2;
  }

  else if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_ERROR))
  {
    sub_100821A8C();
  }

  return a1;
}

void sub_100383AA0(id a1)
{
  v1 = qword_100BCEA70;
  if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315138;
    v5 = "+[BTVCLinkClient sharedClient]_block_invoke";
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "%s", &v4, 0xCu);
  }

  v2 = objc_alloc_init(BTVCLinkClient);
  v3 = qword_100B6D310;
  qword_100B6D310 = v2;
}

void sub_100383D9C(_Unwind_Exception *a1)
{
  objc_sync_exit(v2);

  _Unwind_Resume(a1);
}

void sub_100383F14(_Unwind_Exception *a1)
{
  objc_sync_exit(v2);

  _Unwind_Resume(a1);
}

void sub_100384184(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  objc_sync_exit(v10);

  _Unwind_Resume(a1);
}

void sub_100384438(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11)
{
  objc_sync_exit(v12);

  _Unwind_Resume(a1);
}

void sub_1003846C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, void *a12)
{
  objc_sync_exit(v12);

  _Unwind_Resume(a1);
}

void sub_10038492C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11)
{
  objc_sync_exit(v12);

  _Unwind_Resume(a1);
}

void sub_100384BB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, void *a12)
{
  objc_sync_exit(v12);

  _Unwind_Resume(a1);
}

void sub_100384E20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11)
{
  objc_sync_exit(v12);

  _Unwind_Resume(a1);
}

void sub_1003850AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, void *a12)
{
  objc_sync_exit(v12);

  _Unwind_Resume(a1);
}

void sub_100385398(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *a11, void *a12, void *a13, id obj)
{
  objc_sync_exit(obj);

  _Unwind_Resume(a1);
}

void sub_100385640(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, void *a12)
{
  objc_sync_exit(v12);

  _Unwind_Resume(a1);
}

void sub_10038597C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, void *a12, void *a13, void *a14)
{
  objc_sync_exit(v14);

  _Unwind_Resume(a1);
}

void sub_100385D70(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, void *a14, void *a15, void *a16, id obj)
{
  objc_sync_exit(obj);

  _Unwind_Resume(a1);
}

void sub_10038605C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, void *a11, void *a12, void *a13)
{
  objc_sync_exit(v13);

  _Unwind_Resume(a1);
}

void sub_1003863D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, void *a14, void *a15, id obj)
{
  objc_sync_exit(obj);

  _Unwind_Resume(a1);
}

uint64_t sub_100386494(uint64_t a1)
{
  *a1 = off_100AEE800;
  *(a1 + 8) = off_100AEE8F8;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  sub_100321440(a1 + 88, a1 + 8, "com.apple.BTServer.cloudpairing", 0);
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  sub_100321480(a1 + 88);
  return a1;
}

void sub_100386520(_Unwind_Exception *a1)
{
  sub_10032147C(v1 + 88);
  v3 = *(v1 + 24);
  if (v3)
  {
    *(v1 + 32) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(a1);
}

void *sub_100386550(void *a1)
{
  *a1 = off_100AEE800;
  a1[1] = off_100AEE8F8;
  a1[4] = a1[3];
  sub_10032147C(a1 + 11);
  v2 = a1[3];
  if (v2)
  {
    a1[4] = v2;
    operator delete(v2);
  }

  return a1;
}

void sub_1003865D4(void *a1)
{
  sub_100386550(a1);

  operator delete();
}

uint64_t sub_10038660C(uint64_t a1)
{
  v2 = qword_100BCE8E8;
  if (os_log_type_enabled(qword_100BCE8E8, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Sending get master key message to cloudkit", v5, 2u);
  }

  v3 = xpc_dictionary_create(0, 0, 0);
  sub_1003216CC(a1 + 88, "getMasterKey", v3, 0);
  return 1;
}

uint64_t sub_1003866A4(uint64_t a1)
{
  v2 = qword_100BCE8E8;
  if (os_log_type_enabled(qword_100BCE8E8, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "launchCloudPairing", v4, 2u);
  }

  sub_1003216CC(a1 + 88, "Start", 0, 0);
  return 1;
}

uint64_t sub_10038672C(uint64_t a1)
{
  v2 = qword_100BCE8E8;
  if (os_log_type_enabled(qword_100BCE8E8, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "getDeviceInfoList", v5, 2u);
  }

  v3 = xpc_dictionary_create(0, 0, 0);
  sub_1003216CC(a1 + 88, "getAccessoryKey", v3, 0);
  return 1;
}

void sub_1003867C4(uint64_t a1, int a2)
{
  v4 = qword_100BCE8E8;
  if (os_log_type_enabled(qword_100BCE8E8, OS_LOG_TYPE_DEFAULT))
  {
    v5 = "logged-out";
    if (a2)
    {
      v5 = "logged-in";
    }

    v7 = 136446210;
    v8 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Account login Status changed %{public}s", &v7, 0xCu);
  }

  v6 = xpc_dictionary_create(0, 0, 0);
  sub_1003216CC(a1 + 88, "getSignInStatus", v6, 0);
}

void sub_1003868B4(uint64_t a1, uint64_t a2, void **a3)
{
  v6 = qword_100BCE8E8;
  if (os_log_type_enabled(qword_100BCE8E8, OS_LOG_TYPE_DEFAULT))
  {
    v7 = a3;
    if (*(a3 + 23) < 0)
    {
      v7 = *a3;
    }

    *buf = 67109635;
    v12 = a2;
    v13 = 2160;
    v14 = 1752392040;
    v15 = 2081;
    v16 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Sign in status changed came from cloudkit, status = %d, loginID = %{private, mask.hash}s", buf, 0x1Cu);
  }

  v8 = *(a1 + 16);
  if (!v8)
  {
    goto LABEL_10;
  }

  if (*(a3 + 23) < 0)
  {
    sub_100008904(__p, *a3, a3[1]);
  }

  else
  {
    *__p = *a3;
    v10 = a3[2];
  }

  (*(*v8 + 16))(v8, a2, __p);
  if (SHIBYTE(v10) < 0)
  {
    operator delete(__p[0]);
    if (a2)
    {
      return;
    }
  }

  else
  {
LABEL_10:
    if (a2)
    {
      return;
    }
  }

  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
}

uint64_t sub_100386A40(uint64_t a1, int a2)
{
  *(a1 + 80) = a2;
  result = *(a1 + 16);
  if (result)
  {
    v3 = a2 == 0;
  }

  else
  {
    v3 = 1;
  }

  if (!v3)
  {
    return (*(*result + 40))();
  }

  return result;
}

uint64_t sub_100386A7C()
{
  v0 = *(*sub_1000E36A0() + 32);

  return v0();
}

void sub_100386AC4(uint64_t a1)
{
  v2 = xpc_dictionary_create(0, 0, 0);

  sub_1003216CC(a1 + 88, "readOldContainer", v2, 0);
}

uint64_t sub_100386B18(uint64_t a1)
{
  v2 = qword_100BCE8E8;
  if (os_log_type_enabled(qword_100BCE8E8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Re-upgradeToManatee, this should be called after Identity is Lost", buf, 2u);
  }

  result = *(a1 + 16);
  if (result)
  {
    if (*(a1 + 48) == 0 || *(a1 + 64) == 0)
    {
      v4 = qword_100BCE8E8;
      if (os_log_type_enabled(qword_100BCE8E8, OS_LOG_TYPE_DEFAULT))
      {
        *v5 = 0;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "No Master or Hint Key Found generate new ones", v5, 2u);
      }

      sub_100386C20(a1);
      result = *(a1 + 16);
    }

    *(a1 + 80) = 1;
    return (*(*result + 40))(result);
  }

  return result;
}

void sub_100386C20(uint64_t a1)
{
  v2 = qword_100BCE8E8;
  if (os_log_type_enabled(qword_100BCE8E8, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "==============Generate New Keys=============", v3, 2u);
  }

  arc4random_buf((a1 + 48), 0x10uLL);
  arc4random_buf((a1 + 64), 0x10uLL);
}

void sub_100386CA4(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  v6 = qword_100BCE8E8;
  if (os_log_type_enabled(qword_100BCE8E8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v20[0] = a3;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Received length %zu", buf, 0xCu);
  }

  v7 = *a2;
  if (v7 != 2)
  {
    v10 = qword_100BCE8E8;
    if (os_log_type_enabled(qword_100BCE8E8, OS_LOG_TYPE_ERROR))
    {
      sub_100821B28(v7, v10);
    }

    v11 = dispatch_time(0, 30000000000);
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_10038704C;
    v18[3] = &unk_100ADF8F8;
    v18[4] = a1;
    v12 = v18;
    goto LABEL_13;
  }

  if (a3 != 33)
  {
    v13 = qword_100BCE8E8;
    if (os_log_type_enabled(qword_100BCE8E8, OS_LOG_TYPE_ERROR))
    {
      sub_100821BA4(a3, v13);
    }

    v11 = dispatch_time(0, 30000000000);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100387108;
    block[3] = &unk_100ADF8F8;
    block[4] = a1;
    v12 = block;
    goto LABEL_13;
  }

  v8 = *(a2 + 1);
  v21 = *(a2 + 17);
  v22 = v8;
  if (v8 == 0)
  {
    v9 = qword_100BCE8E8;
    if (v21 != 0)
    {
      goto LABEL_16;
    }

    if (os_log_type_enabled(qword_100BCE8E8, OS_LOG_TYPE_ERROR))
    {
      sub_100821C1C();
    }

    v11 = dispatch_time(0, 30000000000);
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_100387110;
    v16[3] = &unk_100ADF8F8;
    v16[4] = a1;
    v12 = v16;
LABEL_13:
    dispatch_after(v11, &_dispatch_main_q, v12);
    return;
  }

  v9 = qword_100BCE8E8;
LABEL_16:
  v14 = v21;
  *(a1 + 48) = *(a2 + 1);
  *(a1 + 64) = v14;
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68157954;
    LODWORD(v20[0]) = 16;
    WORD2(v20[0]) = 2096;
    *(v20 + 6) = a1 + 48;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Acc Master Key:%.16P", buf, 0x12u);
    v9 = qword_100BCE8E8;
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68157954;
    LODWORD(v20[0]) = 16;
    WORD2(v20[0]) = 2096;
    *(v20 + 6) = a1 + 64;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Acc Master Hint:%.16P", buf, 0x12u);
  }

  v15 = *(a1 + 16);
  if (v15)
  {
    (**v15)(v15, a1 + 48, a1 + 64);
  }
}

void sub_100387054(uint64_t a1)
{
  v2 = xpc_dictionary_create(0, 0, 0);
  bytes = 2;
  sub_100386C20(a1);
  v3 = *(a1 + 64);
  v5 = *(a1 + 48);
  v6 = v3;
  xpc_dictionary_set_data(v2, "kMasterKeyBlob", &bytes, 0x21uLL);
  sub_1003216CC(a1 + 88, "writeMasterKey", v2, 0);
}

void sub_100387118(uint64_t a1)
{
  if (os_log_type_enabled(qword_100BCE8E8, OS_LOG_TYPE_ERROR))
  {
    sub_100821C50();
  }

  v2 = dispatch_time(0, 30000000000);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1003871D4;
  block[3] = &unk_100ADF8F8;
  block[4] = a1;
  dispatch_after(v2, &_dispatch_main_q, block);
}

void sub_1003871DC(void *a1, unsigned __int8 *a2, unint64_t a3)
{
  if (a2 && a3 > 1)
  {
    v6 = a2[1];
    v7 = v6 | (*a2 << 8);
    v8 = qword_100BCE8E8;
    if (os_log_type_enabled(qword_100BCE8E8, OS_LOG_TYPE_DEFAULT))
    {
      v12[0] = 67109120;
      v12[1] = v7;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Received Device info for %d devices", v12, 8u);
    }

    if (a3 - 2 >= 152 * v7)
    {
      a1[4] = a1[3];
      if (v7)
      {
        v9 = malloc_type_malloc(152 * v7, 0x10000401CC6BE04uLL);
        memcpy(v9, a2 + 2, 152 * v7);
        v10 = a1[2];
        if (v10)
        {
          (*(*v10 + 8))(v10, v9, v6);
        }

        if (v9)
        {
          free(v9);
        }
      }

      else
      {
        v11 = a1[2];
        if (v11)
        {
          (*(*v11 + 8))(v11, 0, 0);
        }
      }
    }

    else if (os_log_type_enabled(qword_100BCE8E8, OS_LOG_TYPE_ERROR))
    {
      sub_100821C84();
    }
  }

  else if (os_log_type_enabled(qword_100BCE8E8, OS_LOG_TYPE_ERROR))
  {
    sub_100821CEC();
  }
}

uint64_t sub_1003873CC(uint64_t a1, uint64_t a2)
{
  v4 = qword_100BCE8E8;
  if (os_log_type_enabled(qword_100BCE8E8, OS_LOG_TYPE_DEFAULT))
  {
    v5 = "not reachable";
    if (a2)
    {
      v5 = "reachable";
    }

    v7 = 136446210;
    v8 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "reachability Status is %{public}s", &v7, 0xCu);
  }

  result = *(a1 + 16);
  if (result)
  {
    return (*(*result + 24))(result, a2);
  }

  return result;
}

uint64_t sub_1003874C4(uint64_t a1, uint64_t a2)
{
  v4 = qword_100BCE8E8;
  if (os_log_type_enabled(qword_100BCE8E8, OS_LOG_TYPE_DEFAULT))
  {
    v5 = "fail";
    if (a2)
    {
      v5 = "success";
    }

    v7 = 136446210;
    v8 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Device info uploaded status from cloudkit with status = %{public}s", &v7, 0xCu);
  }

  result = *(a1 + 16);
  if (result)
  {
    return (*(*result + 32))(result, a2);
  }

  return result;
}

uint64_t sub_1003875BC(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v6 = qword_100BCE8E8;
  if (os_log_type_enabled(qword_100BCE8E8, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(v15[0]) = 67109120;
    DWORD1(v15[0]) = a3;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Upload Magic pairing device info to cloud for %d devices", v15, 8u);
  }

  *(a1 + 32) = *(a1 + 24);
  if (a3)
  {
    v7 = 0;
    v8 = a3;
    do
    {
      v10 = *(a1 + 24);
      v9 = *(a1 + 32);
      if (v10 != v9)
      {
        v11 = a2 + 152 * v7;
        v12 = v9 - v10 - 152;
        while (1)
        {
          v15[6] = *(v10 + 96);
          v15[7] = *(v10 + 112);
          v15[8] = *(v10 + 128);
          v16 = *(v10 + 144);
          v15[2] = *(v10 + 32);
          v15[3] = *(v10 + 48);
          v15[4] = *(v10 + 64);
          v15[5] = *(v10 + 80);
          v15[0] = *v10;
          v15[1] = *(v10 + 16);
          if (LODWORD(v15[0]) == *v11 && WORD2(v15[0]) == *(v11 + 4))
          {
            break;
          }

          v10 += 152;
          v12 -= 152;
          if (v10 == v9)
          {
            goto LABEL_16;
          }
        }

        if (v10 + 152 != v9)
        {
          memmove(v10, (v10 + 152), v12);
        }

        *(a1 + 32) = v10 + v12;
      }

LABEL_16:
      sub_100387778(a1 + 24, a2 + 152 * v7++);
    }

    while (v7 != v8);
  }

  sub_1003878D8(a1);
  return 1;
}

void sub_100387778(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (v4 >= v5)
  {
    v14 = 0x86BCA1AF286BCA1BLL * ((v4 - *a1) >> 3);
    v15 = v14 + 1;
    if (v14 + 1 > 0x1AF286BCA1AF286)
    {
      sub_1000C7698();
    }

    v16 = 0x86BCA1AF286BCA1BLL * ((v5 - *a1) >> 3);
    if (2 * v16 > v15)
    {
      v15 = 2 * v16;
    }

    if (v16 >= 0xD79435E50D7943)
    {
      v17 = 0x1AF286BCA1AF286;
    }

    else
    {
      v17 = v15;
    }

    if (v17)
    {
      sub_100389438(a1, v17);
    }

    v18 = 152 * v14;
    v19 = *(a2 + 16);
    *v18 = *a2;
    *(v18 + 16) = v19;
    v20 = *(a2 + 32);
    v21 = *(a2 + 48);
    v22 = *(a2 + 80);
    *(v18 + 64) = *(a2 + 64);
    *(v18 + 80) = v22;
    *(v18 + 32) = v20;
    *(v18 + 48) = v21;
    v23 = *(a2 + 96);
    v24 = *(a2 + 112);
    v25 = *(a2 + 128);
    *(v18 + 144) = *(a2 + 144);
    *(v18 + 112) = v24;
    *(v18 + 128) = v25;
    *(v18 + 96) = v23;
    v13 = 152 * v14 + 152;
    v26 = *(a1 + 8) - *a1;
    v27 = v18 - v26;
    memcpy((v18 - v26), *a1, v26);
    v28 = *a1;
    *a1 = v27;
    *(a1 + 8) = v13;
    *(a1 + 16) = 0;
    if (v28)
    {
      operator delete(v28);
    }
  }

  else
  {
    v6 = *(a2 + 16);
    *v4 = *a2;
    *(v4 + 16) = v6;
    v7 = *(a2 + 32);
    v8 = *(a2 + 48);
    v9 = *(a2 + 80);
    *(v4 + 64) = *(a2 + 64);
    *(v4 + 80) = v9;
    *(v4 + 32) = v7;
    *(v4 + 48) = v8;
    v10 = *(a2 + 96);
    v11 = *(a2 + 112);
    v12 = *(a2 + 128);
    *(v4 + 144) = *(a2 + 144);
    *(v4 + 112) = v11;
    *(v4 + 128) = v12;
    *(v4 + 96) = v10;
    v13 = v4 + 152;
  }

  *(a1 + 8) = v13;
}

void sub_1003878D8(_DWORD *a1)
{
  v2 = xpc_dictionary_create(0, 0, 0);
  v3 = (a1[8] - a1[6]) & 0xFFFFFFF8;
  v4 = v3 | 2;
  v5 = malloc_type_malloc((*(a1 + 16) - *(a1 + 12)) & 0xFFF8 | 2u, 0x100004077774924uLL);
  *v5 = (-13797 * ((a1[8] - a1[6]) >> 3)) >> 8;
  v5[1] = 27 * ((a1[8] - a1[6]) >> 3);
  (*(*a1 + 128))(a1);
  v6 = qword_100BCE8E8;
  if (os_log_type_enabled(qword_100BCE8E8, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 0x86BCA1AF286BCA1BLL * ((*(a1 + 4) - *(a1 + 3)) >> 3);
    v11[0] = 67109376;
    v11[1] = v3;
    v12 = 2048;
    v13 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Size deviceinfo Blob is %d for %lu of devices", v11, 0x12u);
  }

  v8 = *(a1 + 3);
  if (v8 != *(a1 + 4))
  {
    v9 = 2;
    do
    {
      memmove(&v5[v9], v8, 0x98uLL);
      v9 += 152;
      v8 += 152;
    }

    while (v8 != *(a1 + 4));
  }

  xpc_dictionary_set_data(v2, "kDeviceInfoBlob", v5, v4 & 0xFFFE);
  if (*(a1 + 4) == *(a1 + 3))
  {
    v10 = "deleteAllAccessories";
  }

  else
  {
    v10 = "writeAccessoryKey";
  }

  sub_1003216CC((a1 + 22), v10, v2, 0);
  free(v5);
}

void sub_100387AE4(uint64_t a1, void **a2, void **a3)
{
  v6 = qword_100BCE8E8;
  if (os_log_type_enabled(qword_100BCE8E8, OS_LOG_TYPE_DEFAULT))
  {
    v7 = a2;
    if (*(a2 + 23) < 0)
    {
      v7 = *a2;
    }

    v8 = a3;
    if (*(a3 + 23) < 0)
    {
      v8 = *a3;
    }

    *buf = 136315394;
    v15 = v7;
    v16 = 2080;
    v17 = v8;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Update local device %s with nickname %s", buf, 0x16u);
  }

  v9 = *(a1 + 16);
  if (v9)
  {
    if (*(a2 + 23) < 0)
    {
      sub_100008904(__dst, *a2, a2[1]);
    }

    else
    {
      *__dst = *a2;
      v13 = a2[2];
    }

    if (*(a3 + 23) < 0)
    {
      sub_100008904(__p, *a3, a3[1]);
    }

    else
    {
      *__p = *a3;
      v11 = a3[2];
    }

    (*(*v9 + 48))(v9, __dst, __p);
    if (SHIBYTE(v11) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v13) < 0)
    {
      operator delete(__dst[0]);
    }
  }
}

void sub_100387C6C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100387CA8(uint64_t a1, void **a2)
{
  v4 = qword_100BCE8E8;
  if (os_log_type_enabled(qword_100BCE8E8, OS_LOG_TYPE_DEFAULT))
  {
    v5 = a2;
    if (*(a2 + 23) < 0)
    {
      v5 = *a2;
    }

    *buf = 136315138;
    v10 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Remove nickname for local device %s", buf, 0xCu);
  }

  v6 = *(a1 + 16);
  if (v6)
  {
    if (*(a2 + 23) < 0)
    {
      sub_100008904(__p, *a2, a2[1]);
    }

    else
    {
      *__p = *a2;
      v8 = a2[2];
    }

    (*(*v6 + 56))(v6, __p);
    if (SHIBYTE(v8) < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_100387DF8(uint64_t a1, unsigned __int16 *a2, unint64_t a3)
{
  if (a2 && a3 > 1)
  {
    v4 = __rev16(*a2);
    v5 = (27 * ((*(a1 + 32) - *(a1 + 24)) >> 3)) | ((0x86BCA1AF286BCA1BLL * ((*(a1 + 32) - *(a1 + 24)) >> 3)) >> 8);
    v6 = qword_100BCE8E8;
    if (os_log_type_enabled(qword_100BCE8E8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 67109376;
      v10 = v5;
      v11 = 1024;
      v12 = v4;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "localDevice %d devices cloud numDevices %d", &v9, 0xEu);
    }

    v7 = qword_100BCE8E8;
    v8 = os_log_type_enabled(qword_100BCE8E8, OS_LOG_TYPE_DEFAULT);
    if (v4 == v5)
    {
      if (v8)
      {
        v9 = 67109120;
        v10 = v4;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Received Device info for %d devices matches what we have locally", &v9, 8u);
      }
    }

    else
    {
      if (v8)
      {
        v9 = 67109120;
        v10 = v4;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Received Device info for %d devices does not match what we have so write back to cloud", &v9, 8u);
      }

      sub_1003878D8(a1);
    }
  }

  else if (os_log_type_enabled(qword_100BCE8E8, OS_LOG_TYPE_ERROR))
  {
    sub_100821CEC();
  }
}

uint64_t sub_100387FC4(void *a1, uint64_t a2)
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(DarwinNotifyCenter, a1, sub_100388100, @"com.apple.bluetooth.cloudpairing.fetch", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  if (a2)
  {
    v5 = a1[2] == 0;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  if (v5)
  {
    a1[2] = a2;
    v7 = qword_100BCE8E8;
    if (os_log_type_enabled(qword_100BCE8E8, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 134217984;
      v15 = a2;
      v8 = "Registered listener = %p";
      v9 = v7;
      v10 = 12;
LABEL_13:
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, v8, &v14, v10);
    }
  }

  else
  {
    v11 = qword_100BCE8E8;
    if (os_log_type_enabled(qword_100BCE8E8, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v14) = 0;
      v8 = "failed to registe fListener";
      v9 = v11;
      v10 = 2;
      goto LABEL_13;
    }
  }

  return v6;
}

void sub_100388100(uint64_t a1, uint64_t a2)
{
  v3 = qword_100BCE8E8;
  if (os_log_type_enabled(qword_100BCE8E8, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Received notification for cloudpairing push\n", v5, 2u);
  }

  v4 = xpc_dictionary_create(0, 0, 0);
  sub_1003216CC(a2 + 88, "getAccessoryKey", v4, 0);
}

BOOL sub_100388194(void *a1, uint64_t a2)
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, a1, @"com.apple.bluetooth.cloudpairing.fetch", 0);
  v5 = a1[2];
  if (v5 == a2)
  {
    a1[2] = 0;
  }

  return v5 == a2;
}

void sub_1003881E8(uint64_t a1)
{
  v1[0] = _NSConcreteStackBlock;
  v1[1] = 3221225472;
  v1[2] = sub_100388258;
  v1[3] = &unk_100ADF8F8;
  v1[4] = a1;
  sub_100321530(a1 + 88, v1);
}

uint64_t sub_100388258(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(*result + 216))();
  }

  return result;
}

void sub_100388288(uint64_t a1)
{
  v2 = qword_100BCE8E8;
  if (os_log_type_enabled(qword_100BCE8E8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "==============Start Dump MagicPairing structure in cloud=============", buf, 2u);
    v2 = qword_100BCE8E8;
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = 0x86BCA1AF286BCA1BLL * ((*(a1 + 32) - *(a1 + 24)) >> 3);
    *buf = 134217984;
    *&buf[4] = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Number of devices in list %lu", buf, 0xCu);
  }

  v4 = sub_10000E92C();
  if ((*(*v4 + 8))(v4))
  {
    v5 = *(a1 + 24);
    for (i = qword_100BCE8E8; v5 != *(a1 + 32); v5 += 152)
    {
      v7 = *(v5 + 16);
      *buf = *v5;
      v23 = v7;
      v8 = *(v5 + 32);
      v9 = *(v5 + 48);
      v10 = *(v5 + 80);
      v26[0] = *(v5 + 64);
      v26[1] = v10;
      v24 = v8;
      v25 = v9;
      v11 = *(v5 + 96);
      v12 = *(v5 + 112);
      v13 = *(v5 + 128);
      v28 = *(v5 + 144);
      v26[3] = v12;
      v27 = v13;
      v26[2] = v11;
      if (os_log_type_enabled(i, OS_LOG_TYPE_DEFAULT))
      {
        *v14 = 67110400;
        LODWORD(v15) = buf[0];
        WORD2(v15) = 1024;
        *(&v15 + 6) = buf[1];
        WORD5(v15) = 1024;
        HIDWORD(v15) = buf[2];
        v16 = 1024;
        v17 = buf[3];
        v18 = 1024;
        v19 = buf[4];
        v20 = 1024;
        v21 = buf[5];
        _os_log_impl(&_mh_execute_header, i, OS_LOG_TYPE_DEFAULT, "Device Address: %02x-%02x-%02x-%02x-%02x-%02x", v14, 0x26u);
        i = qword_100BCE8E8;
      }

      if (os_log_type_enabled(i, OS_LOG_TYPE_DEFAULT))
      {
        *v14 = 136315138;
        *&v15 = v26 + 10;
        _os_log_impl(&_mh_execute_header, i, OS_LOG_TYPE_DEFAULT, "Device Name : %s", v14, 0xCu);
        i = qword_100BCE8E8;
      }

      if (os_log_type_enabled(i, OS_LOG_TYPE_DEFAULT))
      {
        *v14 = 67109120;
        LODWORD(v15) = *(&v24 + 6);
        _os_log_impl(&_mh_execute_header, i, OS_LOG_TYPE_DEFAULT, "Device Ratchet %x", v14, 8u);
        i = qword_100BCE8E8;
      }

      if (os_log_type_enabled(i, OS_LOG_TYPE_DEFAULT))
      {
        *v14 = 67109120;
        LODWORD(v15) = *(&v27 + 10);
        _os_log_impl(&_mh_execute_header, i, OS_LOG_TYPE_DEFAULT, "Device supported services %x", v14, 8u);
        i = qword_100BCE8E8;
      }

      if (os_log_type_enabled(i, OS_LOG_TYPE_DEFAULT))
      {
        *v14 = 68157954;
        LODWORD(v15) = 16;
        WORD2(v15) = 2096;
        *(&v15 + 6) = &v24 + 10;
        _os_log_impl(&_mh_execute_header, i, OS_LOG_TYPE_DEFAULT, "Device IRK: %.16P", v14, 0x12u);
        i = qword_100BCE8E8;
      }

      if (os_log_type_enabled(i, OS_LOG_TYPE_DEFAULT))
      {
        *v14 = 68157954;
        LODWORD(v15) = 16;
        WORD2(v15) = 2096;
        *(&v15 + 6) = &v25 + 10;
        _os_log_impl(&_mh_execute_header, i, OS_LOG_TYPE_DEFAULT, "Device EncKey:%.16P", v14, 0x12u);
        i = qword_100BCE8E8;
      }

      if (os_log_type_enabled(i, OS_LOG_TYPE_DEFAULT))
      {
        *v14 = 68157954;
        LODWORD(v15) = 16;
        WORD2(v15) = 2096;
        *(&v15 + 6) = &v23 + 6;
        _os_log_impl(&_mh_execute_header, i, OS_LOG_TYPE_DEFAULT, "Device Hint:%.16P", v14, 0x12u);
        i = qword_100BCE8E8;
      }

      if (os_log_type_enabled(i, OS_LOG_TYPE_DEFAULT))
      {
        *v14 = 68157954;
        LODWORD(v15) = 16;
        WORD2(v15) = 2096;
        *(&v15 + 6) = &buf[6];
        _os_log_impl(&_mh_execute_header, i, OS_LOG_TYPE_DEFAULT, "Device AccKey:%.16P", v14, 0x12u);
        i = qword_100BCE8E8;
      }
    }
  }

  else
  {
    i = qword_100BCE8E8;
  }

  if (os_log_type_enabled(i, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, i, OS_LOG_TYPE_DEFAULT, "==============End Dump MagicPairing structure in cloud=============", buf, 2u);
  }
}

void sub_100388740(uint64_t a1)
{
  v2 = qword_100BCE8E8;
  if (os_log_type_enabled(qword_100BCE8E8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Fetching Account status from Cloud pairing", buf, 2u);
  }

  v3 = dispatch_time(0, 30000000000);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100388818;
  block[3] = &unk_100ADF8F8;
  block[4] = a1;
  dispatch_after(v3, &_dispatch_main_q, block);
}

void sub_100388818(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = xpc_dictionary_create(0, 0, 0);

  sub_1003216CC(v1 + 88, "getSignInStatus", v2, 0);
}

void sub_10038886C(uint64_t a1, uint64_t a2, unsigned int a3, _OWORD *a4, _OWORD *a5)
{
  if (*a4 == 0 || *a5 == 0)
  {
    v24 = qword_100BCE8E8;
    if (os_log_type_enabled(qword_100BCE8E8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "upgradeDeviceToManatee Empty Master or Hint Key", buf, 2u);
      v24 = qword_100BCE8E8;
    }

    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      *buf = 68157954;
      *&buf[4] = 16;
      *&buf[8] = 2096;
      *&buf[10] = a4;
      _os_log_error_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "upgradeDeviceToManatee Acc Master Key:%.16P", buf, 0x12u);
      v24 = qword_100BCE8E8;
    }

    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      sub_100821D20(a5, v24);
    }
  }

  else
  {
    v10 = (a1 + 48);
    *(a1 + 48) = *a4;
    v11 = (a1 + 64);
    *(a1 + 64) = *a5;
    v12 = qword_100BCE8E8;
    if (os_log_type_enabled(qword_100BCE8E8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68157954;
      *&buf[4] = 16;
      *&buf[8] = 2096;
      *&buf[10] = v10;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "upgradeDeviceToManatee Acc Master Key:%.16P", buf, 0x12u);
      v12 = qword_100BCE8E8;
    }

    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68157954;
      *&buf[4] = 16;
      *&buf[8] = 2096;
      *&buf[10] = v11;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "upgradeDeviceToManatee Acc Master Hint:%.16P", buf, 0x12u);
    }

    v13 = xpc_dictionary_create(0, 0, 0);
    v14 = qword_100BCE8E8;
    if (os_log_type_enabled(qword_100BCE8E8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      *&buf[4] = a3;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "upgradeDeviceToManatee Upload Magic pairing device info to cloud for %d devices", buf, 8u);
    }

    v15 = *(a1 + 24);
    *(a1 + 32) = v15;
    if (a3)
    {
      v33 = v13;
      v34 = v11;
      v35 = v10;
      v16 = 0;
      v17 = a3;
      do
      {
        v19 = *(a1 + 24);
        v18 = *(a1 + 32);
        if (v19 != v18)
        {
          v20 = a2 + 152 * v16;
          v21 = v18 - v19 - 152;
          while (1)
          {
            v40 = *(v19 + 96);
            v41 = *(v19 + 112);
            v42 = *(v19 + 128);
            v43 = *(v19 + 144);
            *&buf[32] = *(v19 + 32);
            v37 = *(v19 + 48);
            v38 = *(v19 + 64);
            v39 = *(v19 + 80);
            *buf = *v19;
            *&buf[16] = *(v19 + 16);
            if (*buf == *v20 && *&buf[4] == *(v20 + 4))
            {
              break;
            }

            v19 += 152;
            v21 -= 152;
            if (v19 == v18)
            {
              goto LABEL_22;
            }
          }

          if (v19 + 152 != v18)
          {
            memmove(v19, (v19 + 152), v21);
          }

          *(a1 + 32) = v19 + v21;
        }

LABEL_22:
        sub_100387778(a1 + 24, a2 + 152 * v16++);
      }

      while (v16 != v17);
      v15 = *(a1 + 24);
      v23 = *(a1 + 32);
      v11 = v34;
      v10 = v35;
      v13 = v33;
    }

    else
    {
      LOWORD(v23) = v15;
    }

    v25 = (v23 - v15) & 0xFFF8;
    v26 = v25 | 2;
    v27 = malloc_type_malloc(v25 | 2u, 0x100004077774924uLL);
    *v27 = (-13797 * ((*(a1 + 32) - *(a1 + 24)) >> 3)) >> 8;
    v27[1] = 27 * ((*(a1 + 32) - *(a1 + 24)) >> 3);
    (*(*a1 + 128))(a1);
    v28 = qword_100BCE8E8;
    if (os_log_type_enabled(qword_100BCE8E8, OS_LOG_TYPE_DEFAULT))
    {
      v29 = 0x86BCA1AF286BCA1BLL * ((*(a1 + 32) - *(a1 + 24)) >> 3);
      *buf = 67109376;
      *&buf[4] = v25;
      *&buf[8] = 2048;
      *&buf[10] = v29;
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "upgradeDeviceToManatee Size deviceinfo Blob is %d for %lu of devices", buf, 0x12u);
    }

    v30 = *(a1 + 24);
    if (v30 != *(a1 + 32))
    {
      v31 = 2;
      do
      {
        memmove(&v27[v31], v30, 0x98uLL);
        v31 += 152;
        v30 += 152;
      }

      while (v30 != *(a1 + 32));
    }

    xpc_dictionary_set_data(v13, "kDeviceInfoBlob", v27, v26 & 0xFFFE);
    buf[0] = 2;
    v32 = *a4;
    *v10 = *a4;
    *v11 = *a5;
    *&buf[1] = v32;
    *&buf[17] = *a5;
    xpc_dictionary_set_data(v13, "kMasterKeyBlob", buf, 0x21uLL);
    if (*(a1 + 80) == 1)
    {
      sub_1003216CC(a1 + 88, "upgradeToManatee", v13, 0);
    }

    free(v27);
  }
}

void sub_100388DC8(void *a1, const char *a2, void *a3)
{
  v6 = qword_100BCE8E8;
  if (os_log_type_enabled(qword_100BCE8E8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446210;
    *&buf[4] = a2;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Received %{public}s message from CloudKit", buf, 0xCu);
  }

  if (!strcmp(a2, "MasterKeysAvailable"))
  {
    value = xpc_dictionary_get_value(a3, "kMasterKeyBlob");
    length = xpc_data_get_length(value);
    v13 = qword_100BCE8E8;
    if (os_log_type_enabled(qword_100BCE8E8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      *&buf[4] = length;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Client Received length %zu", buf, 0xCu);
    }

    if (value && length == 33)
    {
      memset(buf, 0, 33);
      if (xpc_data_get_bytes(value, buf, 0, 0x21uLL) == 33)
      {
        (*(*a1 + 88))(a1, buf, 33);
      }

      else if (os_log_type_enabled(qword_100BCE8E8, OS_LOG_TYPE_ERROR))
      {
        sub_100821E10();
      }
    }

    else
    {
      if (os_log_type_enabled(qword_100BCE8E8, OS_LOG_TYPE_ERROR))
      {
        sub_100821E44();
      }

      v22 = dispatch_time(0, 30000000000);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100389420;
      block[3] = &unk_100ADF8F8;
      block[4] = a1;
      dispatch_after(v22, &_dispatch_main_q, block);
    }
  }

  else if (!strcmp(a2, "DeviceInfoAvailable"))
  {
    v14 = xpc_dictionary_get_value(a3, "kDeviceInfoBlob");
    v15 = xpc_data_get_length(v14);
    if (v14 && (v16 = v15, v15 > 1))
    {
      buffer = 0;
      if (xpc_data_get_bytes(v14, &buffer, 0, 2uLL) == 2)
      {
        v17 = HIBYTE(buffer);
        v18 = HIBYTE(buffer) | (buffer << 8);
        v19 = qword_100BCE8E8;
        if (os_log_type_enabled(qword_100BCE8E8, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109120;
          *&buf[4] = v18;
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "XPC Received Device info for %d devices", buf, 8u);
        }

        v20 = v16 - 2;
        v21 = 152 * v18;
        if (v20 >= v21)
        {
          a1[4] = a1[3];
          if (v18)
          {
            v30 = malloc_type_malloc(152 * v18, 0x10000401CC6BE04uLL);
            if (xpc_data_get_bytes(v14, v30, 2uLL, 152 * v18) != v21)
            {
              goto LABEL_50;
            }

            v31 = a1[2];
            if (v31)
            {
              (*(*v31 + 8))(v31, v30, v17);
            }

            if (v30)
            {
LABEL_50:
              free(v30);
            }
          }

          else
          {
            v32 = a1[2];
            if (v32)
            {
              (*(*v32 + 8))(v32, 0, 0);
            }
          }
        }

        else if (os_log_type_enabled(qword_100BCE8E8, OS_LOG_TYPE_ERROR))
        {
          sub_100821DA8();
        }
      }
    }

    else if (os_log_type_enabled(qword_100BCE8E8, OS_LOG_TYPE_ERROR))
    {
      sub_100821CEC();
    }
  }

  else if (!strcmp(a2, "OnlineStatusChanged"))
  {
    v23 = xpc_dictionary_get_BOOL(a3, "kOnlineStatus");
    v24 = a1[2];
    if (v24)
    {
      (*(*v24 + 24))(v24, v23);
    }
  }

  else if (!strcmp(a2, "SignInStatusChanged"))
  {
    v25 = xpc_dictionary_get_BOOL(a3, "kSignInStatus");
    string = xpc_dictionary_get_string(a3, "kSignInAppleID");
    v27 = qword_100BCE8E8;
    if (os_log_type_enabled(qword_100BCE8E8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109635;
      *&buf[4] = v25;
      *&buf[8] = 2160;
      *&buf[10] = 1752392040;
      *&buf[18] = 2081;
      *&buf[20] = string;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "Sign in status changed came from cloudkit, status = %d with loginID: %{private, mask.hash}s", buf, 0x1Cu);
    }

    v28 = a1[2];
    if (v28)
    {
      v29 = string ? string : "";
      sub_100007E30(__p, v29);
      (*(*v28 + 16))(v28, v25, __p);
      if (v34 < 0)
      {
        operator delete(__p[0]);
      }
    }
  }

  else if (!strcmp(a2, "DeviceInfoUploadStatus"))
  {
    v7 = xpc_dictionary_get_BOOL(a3, "kUploadStatus");
    v8 = qword_100BCE8E8;
    if (os_log_type_enabled(qword_100BCE8E8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = "fail";
      if (v7)
      {
        v9 = "success";
      }

      *buf = 136446210;
      *&buf[4] = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Device info uploaded status from cloudkit with status = %{public}s", buf, 0xCu);
    }

    v10 = a1[2];
    if (v10)
    {
      (*(*v10 + 32))(v10, v7);
    }
  }
}

void sub_1003893FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100389438(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x1AF286BCA1AF287)
  {
    operator new();
  }

  sub_1000C7698();
}

uint64_t sub_100389494(uint64_t a1)
{
  v2 = a1 + 8;
  v3 = a1 + 16;
  *a1 = off_100AEE920;
  *(a1 + 8) = &off_100AEE948;
  *(a1 + 16) = &off_100AEE960;
  sub_100044BBC(a1 + 24);
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 88) = a1 + 96;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  v4 = sub_100017E6C();
  sub_10038A34C(v4 + 624, a1);
  v5 = sub_100017E6C();
  sub_10038A5EC(v5 + 664, v2);
  v13 = 0;
  v6 = sub_100017E6C();
  (*(*v6 + 112))(v6, &v13);
  if (v13 == 1)
  {
    v7 = sub_1003896E0();
    *(a1 + 112) = v7;
    v8 = qword_100BCE8F8;
    if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = "disabled";
      if (v7)
      {
        v9 = "enabled";
      }

      *buf = 136315138;
      v15 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Siri VoiceTrigger state is initially %s", buf, 0xCu);
    }
  }

  else
  {
    v10 = qword_100BCE8F8;
    if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Device not unlocked yet, deferring Siri VoiceTrigger read", buf, 2u);
    }

    v11 = sub_100017E6C();
    sub_10038A88C(v11 + 464, v3);
  }

  return a1;
}

void sub_1003896A8(_Unwind_Exception *a1)
{
  v5 = *v3;
  if (*v3)
  {
    *(v1 + 136) = v5;
    operator delete(v5);
  }

  sub_10000CEDC((v2 - 1), *v2);
  sub_10007A068(v1 + 24);
  _Unwind_Resume(a1);
}

id sub_1003896E0()
{
  if (!sub_1005FCA90())
  {
    return 0;
  }

  v0 = +[VTPreferences sharedPreferences];
  v1 = [v0 voiceTriggerEnabled];

  return v1;
}

uint64_t sub_100389744(uint64_t a1, unint64_t a2)
{
  v16 = a2;
  v15 = 0;
  v4 = sub_100017E6C();
  v5 = 0;
  if (!(*(*v4 + 144))(v4, &v15))
  {
    if (v15)
    {
      v5 = 1;
    }

    else
    {
      v5 = 2;
    }

    v14[0] = 0;
    v14[1] = 0;
    sub_100007F88(v14, a1 + 24);
    v8 = *(a1 + 96);
    v7 = a1 + 96;
    v6 = v8;
    if (!v8)
    {
      goto LABEL_13;
    }

    v9 = v7;
    do
    {
      v10 = *(v6 + 32);
      v11 = v10 >= a2;
      v12 = v10 < a2;
      if (v11)
      {
        v9 = v6;
      }

      v6 = *(v6 + 8 * v12);
    }

    while (v6);
    if (v9 == v7 || *(v9 + 32) > a2)
    {
LABEL_13:
      operator new();
    }

    sub_1000088CC(v14);
  }

  return v5;
}

void sub_100389874(uint64_t a1, int a2)
{
  sub_100389998(a1, a2);
  v4 = *(a1 + 116);
  if (v4 != a2)
  {
    v5 = qword_100BCE8F8;
    if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_INFO))
    {
      *buf = 67109376;
      v9 = v4;
      v10 = 1024;
      v11 = a2;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "SiriInfoManager::siriChanged, notifying listeners. currentState = %u and newState = %u", buf, 0xEu);
    }

    *(a1 + 116) = a2;
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100389CD4;
    v6[3] = &unk_100AEE968;
    v7 = a2;
    sub_100389C08(a1 + 120, v6);
  }
}

void sub_100389998(uint64_t a1, int a2)
{
  memset(&v15, 0, sizeof(v15));
  v4 = qword_100BCE8F8;
  if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT))
  {
    v5 = "disabled";
    if (a2)
    {
      v5 = "enabled";
    }

    LODWORD(buf) = 136446210;
    *(&buf + 4) = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "APLSIRI support has changed to %{public}s", &buf, 0xCu);
  }

  if (a2)
  {
    v6 = "\r\n+APLSIRI:1\r\n";
  }

  else
  {
    v6 = "\r\n+APLSIRI:2\r\n";
  }

  std::string::assign(&v15, v6);
  v14[0] = 0;
  v14[1] = 0;
  sub_100007F88(v14, a1 + 24);
  buf = 0uLL;
  v17 = 0;
  sub_10038AC04(&buf, a1 + 88);
  sub_10000801C(v14);
  v7 = buf;
  if (buf != (&buf + 8))
  {
    do
    {
      if (qword_100B50AD0 != -1)
      {
        sub_100821E78();
      }

      v8 = off_100B50AC8;
      v9 = **(v7 + 5);
      if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
      {
        sub_100008904(&__p, v15.__r_.__value_.__l.__data_, v15.__r_.__value_.__l.__size_);
      }

      else
      {
        __p = v15;
      }

      sub_1005E0CD4(v8, v9, &__p);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      v10 = *(v7 + 1);
      if (v10)
      {
        do
        {
          v11 = v10;
          v10 = *v10;
        }

        while (v10);
      }

      else
      {
        do
        {
          v11 = *(v7 + 2);
          v12 = *v11 == v7;
          v7 = v11;
        }

        while (!v12);
      }

      v7 = v11;
    }

    while (v11 != (&buf + 8));
  }

  sub_10000CEDC(&buf, *(&buf + 1));
  sub_1000088CC(v14);
  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v15.__r_.__value_.__l.__data_);
  }
}

void sub_100389C08(uint64_t a1, void *a2)
{
  v3 = a2;
  os_unfair_lock_lock(a1);
  v5 = 0;
  v6 = 0;
  v7 = 0;
  sub_100007F20(&v5, (a1 + 8));
  os_unfair_lock_unlock(a1);
  v4 = v5;
  if (v5 != v6)
  {
    do
    {
      v3[2](v3, *v4++);
    }

    while (v4 != v6);
    v4 = v5;
  }

  if (v4)
  {
    v6 = v4;
    operator delete(v4);
  }
}

void sub_100389D04(uint64_t a1)
{
  v2 = sub_1003896E0();

  sub_100389D40(a1, v2);
}

void sub_100389D40(uint64_t a1, int a2)
{
  if (*(a1 + 112) != a2)
  {
    v4 = qword_100BCE8F8;
    if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT))
    {
      v5 = "disabled";
      if (a2)
      {
        v5 = "enabled";
      }

      *buf = 136315138;
      v9 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "SiriVoiceTrigger status changed to %s", buf, 0xCu);
    }

    *(a1 + 112) = a2;
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100389EA8;
    v6[3] = &unk_100AEE968;
    v7 = a2;
    sub_100389C08(a1 + 120, v6);
  }
}

void sub_100389E6C(uint64_t a1)
{
  v1 = a1 - 8;
  v2 = sub_1003896E0();

  sub_100389D40(v1, v2);
}

uint64_t sub_100389ED8(uint64_t a1, unint64_t a2, int a3)
{
  v14[0] = 0;
  v14[1] = 0;
  sub_100007F88(v14, a1 + 24);
  v8 = *(a1 + 96);
  v7 = a1 + 96;
  v6 = v8;
  if (v8)
  {
    v9 = v7;
    do
    {
      v10 = *(v6 + 32);
      v11 = v10 >= a2;
      v12 = v10 < a2;
      if (v11)
      {
        v9 = v6;
      }

      v6 = *(v6 + 8 * v12);
    }

    while (v6);
    if (v9 != v7 && *(v9 + 32) <= a2)
    {
      *(*(v9 + 40) + 8) = a3;
    }
  }

  return sub_1000088CC(v14);
}

uint64_t sub_100389F68(uint64_t a1, unint64_t a2, int a3)
{
  v14[0] = 0;
  v14[1] = 0;
  sub_100007F88(v14, a1 + 24);
  v8 = *(a1 + 96);
  v7 = a1 + 96;
  v6 = v8;
  if (v8)
  {
    v9 = v7;
    do
    {
      v10 = *(v6 + 32);
      v11 = v10 >= a2;
      v12 = v10 < a2;
      if (v11)
      {
        v9 = v6;
      }

      v6 = *(v6 + 8 * v12);
    }

    while (v6);
    if (v9 != v7 && *(v9 + 32) <= a2)
    {
      *(*(v9 + 40) + 12) = a3;
    }
  }

  return sub_1000088CC(v14);
}

uint64_t sub_100389FF8(uint64_t a1, unint64_t a2)
{
  v13[0] = 0;
  v13[1] = 0;
  sub_100007F88(v13, a1 + 24);
  v6 = *(a1 + 96);
  v5 = a1 + 96;
  v4 = v6;
  if (!v6)
  {
    goto LABEL_9;
  }

  v7 = v5;
  do
  {
    v8 = *(v4 + 32);
    v9 = v8 >= a2;
    v10 = v8 < a2;
    if (v9)
    {
      v7 = v4;
    }

    v4 = *(v4 + 8 * v10);
  }

  while (v4);
  if (v7 != v5 && *(v7 + 32) <= a2)
  {
    v11 = *(*(v7 + 40) + 8);
  }

  else
  {
LABEL_9:
    v11 = 0;
  }

  sub_1000088CC(v13);
  return v11;
}

uint64_t sub_10038A088(uint64_t a1, unint64_t a2)
{
  v13[0] = 0;
  v13[1] = 0;
  sub_100007F88(v13, a1 + 24);
  v6 = *(a1 + 96);
  v5 = a1 + 96;
  v4 = v6;
  if (!v6)
  {
    goto LABEL_9;
  }

  v7 = v5;
  do
  {
    v8 = *(v4 + 32);
    v9 = v8 >= a2;
    v10 = v8 < a2;
    if (v9)
    {
      v7 = v4;
    }

    v4 = *(v4 + 8 * v10);
  }

  while (v4);
  if (v7 != v5 && *(v7 + 32) <= a2)
  {
    v11 = *(*(v7 + 40) + 12);
  }

  else
  {
LABEL_9:
    v11 = 0;
  }

  sub_1000088CC(v13);
  return v11;
}

BOOL sub_10038A118(uint64_t a1, unint64_t a2)
{
  v13[0] = 0;
  v13[1] = 0;
  sub_100007F88(v13, a1 + 24);
  v6 = *(a1 + 96);
  v5 = a1 + 96;
  v4 = v6;
  if (!v6)
  {
    goto LABEL_9;
  }

  v7 = v5;
  do
  {
    v8 = *(v4 + 32);
    v9 = v8 >= a2;
    v10 = v8 < a2;
    if (v9)
    {
      v7 = v4;
    }

    v4 = *(v4 + 8 * v10);
  }

  while (v4);
  if (v7 == v5 || *(v7 + 32) > a2)
  {
LABEL_9:
    v7 = v5;
  }

  v11 = v7 != v5;
  sub_1000088CC(v13);
  return v11;
}