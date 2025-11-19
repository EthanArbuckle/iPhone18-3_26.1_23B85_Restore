void sub_1001300AC(_Unwind_Exception *a1)
{
  if (*(v1 + 87) < 0)
  {
    operator delete(*v3);
  }

  nullsub_76(v2);
  _Unwind_Resume(a1);
}

uint64_t sub_1001300D4(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  sub_10012A358(a1 + 32, a2 + 32);
  std::string::operator=((a1 + 64), (a2 + 64));
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 184) = *(a2 + 184);
  *(a1 + 188) = *(a2 + 188);
  v4 = *(a2 + 192);
  *(a1 + 194) = *(a2 + 194);
  *(a1 + 192) = v4;
  return a1;
}

uint64_t sub_100130174(uint64_t a1)
{
  *a1 = off_10043DC28;
  if (*(a1 + 159) < 0)
  {
    operator delete(*(a1 + 136));
    if ((*(a1 + 135) & 0x80000000) == 0)
    {
LABEL_3:
      if ((*(a1 + 87) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else if ((*(a1 + 135) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*(a1 + 112));
  if ((*(a1 + 87) & 0x80000000) == 0)
  {
LABEL_4:
    if ((*(a1 + 63) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_10:
    operator delete(*(a1 + 40));
    if ((*(a1 + 39) & 0x80000000) == 0)
    {
      return a1;
    }

    goto LABEL_11;
  }

LABEL_9:
  operator delete(*(a1 + 64));
  if (*(a1 + 63) < 0)
  {
    goto LABEL_10;
  }

LABEL_5:
  if ((*(a1 + 39) & 0x80000000) == 0)
  {
    return a1;
  }

LABEL_11:
  operator delete(*(a1 + 16));
  return a1;
}

void sub_100130238(uint64_t a1)
{
  sub_100130174(a1);

  operator delete();
}

std::string *sub_100130278(uint64_t a1, const std::string *a2)
{
  result = std::string::operator=((a1 + 40), a2);
  *(a1 + 160) |= 4u;
  return result;
}

std::string *sub_1001302AC(uint64_t a1, const std::string *a2)
{
  result = std::string::operator=((a1 + 64), a2);
  *(a1 + 160) |= 8u;
  return result;
}

uint64_t sub_100130310(uint64_t a1, uint64_t *a2)
{
  __p[0] = 0;
  __p[1] = 0;
  v15 = 0;
  v13 = 0;
  v12 = 0;
  for (i = (*(*a2 + 200))(a2, __p); ; i = v7 + v5 + (*(*a2 + 224))(a2))
  {
    v5 = (*(*a2 + 216))(a2, __p, &v13, &v12) + i;
    if (!v13)
    {
      break;
    }

    if (v12 > 7u)
    {
      if (v12 > 0xAu)
      {
        switch(v12)
        {
          case 0xBu:
            v6 = *a2;
            if (v13 == 8)
            {
              v7 = (*(v6 + 312))(a2, a1 + 104);
              v8 = 256;
              goto LABEL_42;
            }

            break;
          case 0xCu:
            v6 = *a2;
            if (v13 == 8)
            {
              v7 = (*(v6 + 312))(a2, a1 + 108);
              v8 = 512;
              goto LABEL_42;
            }

            break;
          case 0xDu:
            v6 = *a2;
            if (v13 == 11)
            {
              v7 = (*(v6 + 336))(a2, a1 + 112);
              v8 = 1024;
              goto LABEL_42;
            }

            break;
          default:
LABEL_43:
            v6 = *a2;
            break;
        }
      }

      else
      {
        switch(v12)
        {
          case 8u:
            v6 = *a2;
            if (v13 == 8)
            {
              v7 = (*(v6 + 312))(a2, a1 + 92);
              v8 = 32;
              goto LABEL_42;
            }

            break;
          case 9u:
            v6 = *a2;
            if (v13 == 8)
            {
              v7 = (*(v6 + 312))(a2, a1 + 96);
              v8 = 64;
              goto LABEL_42;
            }

            break;
          case 0xAu:
            v6 = *a2;
            if (v13 == 3)
            {
              v7 = (*(v6 + 296))(a2, a1 + 100);
              v8 = 128;
              goto LABEL_42;
            }

            break;
          default:
            goto LABEL_43;
        }
      }
    }

    else if (v12 > 4u)
    {
      switch(v12)
      {
        case 5u:
          v6 = *a2;
          if (v13 == 11)
          {
            v7 = (*(v6 + 336))(a2, a1 + 40);
            v8 = 4;
            goto LABEL_42;
          }

          break;
        case 6u:
          v6 = *a2;
          if (v13 == 11)
          {
            v7 = (*(v6 + 336))(a2, a1 + 64);
            v8 = 8;
            goto LABEL_42;
          }

          break;
        case 7u:
          v6 = *a2;
          if (v13 == 8)
          {
            v7 = (*(v6 + 312))(a2, a1 + 88);
            v8 = 16;
            goto LABEL_42;
          }

          break;
        default:
          goto LABEL_43;
      }
    }

    else
    {
      switch(v12)
      {
        case 1u:
          v6 = *a2;
          if (v13 == 10)
          {
            v7 = (*(v6 + 320))(a2, a1 + 8);
            v8 = 1;
            goto LABEL_42;
          }

          break;
        case 3u:
          v6 = *a2;
          if (v13 == 11)
          {
            v7 = (*(v6 + 336))(a2, a1 + 136);
            v8 = 2048;
            goto LABEL_42;
          }

          break;
        case 4u:
          v6 = *a2;
          if (v13 == 11)
          {
            v7 = (*(v6 + 336))(a2, a1 + 16);
            v8 = 2;
LABEL_42:
            *(a1 + 160) |= v8;
            continue;
          }

          break;
        default:
          goto LABEL_43;
      }
    }

    v7 = (*(v6 + 352))(a2);
  }

  v9 = (*(*a2 + 208))(a2);
  if ((SHIBYTE(v15) & 0x80000000) == 0)
  {
    return (v9 + v5);
  }

  v11 = v9;
  operator delete(__p[0]);
  return (v11 + v5);
}

void sub_100130910(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100130930(uint64_t a1, _DWORD *a2)
{
  v2 = a2[7];
  v3 = a2[6] + 1;
  a2[6] = v3;
  if (v2 < v3)
  {
    exception = __cxa_allocate_exception(0x28uLL);
    exception[2] = 0;
    exception[3] = 0;
    *exception = &off_100434888;
    exception[1] = 0;
    *(exception + 8) = 6;
  }

  v6 = (*(*a2 + 32))(a2, "BeaconMeasurement");
  v7 = (*(*a2 + 48))(a2, "timestampNanos", 10, 1) + v6;
  v8 = (*(*a2 + 152))(a2, *(a1 + 8));
  v9 = v7 + v8 + (*(*a2 + 56))(a2);
  if ((*(a1 + 160) & 0x800) != 0)
  {
    v10 = (*(*a2 + 48))(a2, "DEPRECATED_name", 11, 3);
    v11 = v10 + (*(*a2 + 168))(a2, a1 + 136);
    v9 += v11 + (*(*a2 + 56))(a2);
  }

  v12 = (*(*a2 + 48))(a2, "uuid", 11, 4);
  v13 = v12 + (*(*a2 + 168))(a2, a1 + 16);
  v14 = v13 + (*(*a2 + 56))(a2) + v9;
  v15 = *(a1 + 160);
  if ((v15 & 4) != 0)
  {
    v16 = (*(*a2 + 48))(a2, "adData", 11, 5);
    v17 = v16 + (*(*a2 + 168))(a2, a1 + 40);
    v14 += v17 + (*(*a2 + 56))(a2);
    v15 = *(a1 + 160);
  }

  if ((v15 & 8) != 0)
  {
    v18 = (*(*a2 + 48))(a2, "mfrData", 11, 6);
    v19 = v18 + (*(*a2 + 168))(a2, a1 + 64);
    v14 += v19 + (*(*a2 + 56))(a2);
  }

  v20 = (*(*a2 + 48))(a2, "transmitPowerLevel", 8, 7);
  v21 = v20 + (*(*a2 + 144))(a2, *(a1 + 88));
  v22 = v21 + (*(*a2 + 56))(a2);
  v23 = v22 + (*(*a2 + 48))(a2, "rssi", 8, 8) + v14;
  v24 = (*(*a2 + 144))(a2, *(a1 + 92));
  v25 = v24 + (*(*a2 + 56))(a2);
  v26 = v25 + (*(*a2 + 48))(a2, "channel", 8, 9);
  v27 = v26 + (*(*a2 + 144))(a2, *(a1 + 96));
  v28 = v23 + v27 + (*(*a2 + 56))(a2);
  v29 = (*(*a2 + 48))(a2, "measuredPower", 3, 10);
  v30 = v29 + (*(*a2 + 128))(a2, *(a1 + 100));
  v31 = v30 + (*(*a2 + 56))(a2);
  v32 = v31 + (*(*a2 + 48))(a2, "minorID", 8, 11);
  v33 = v32 + (*(*a2 + 144))(a2, *(a1 + 104));
  v34 = v28 + v33 + (*(*a2 + 56))(a2);
  v35 = (*(*a2 + 48))(a2, "majorID", 8, 12);
  v36 = v35 + (*(*a2 + 144))(a2, *(a1 + 108));
  v37 = v36 + (*(*a2 + 56))(a2);
  v38 = v37 + (*(*a2 + 48))(a2, "proximityUUID", 11, 13);
  v39 = v38 + (*(*a2 + 168))(a2, a1 + 112);
  v40 = v39 + (*(*a2 + 56))(a2);
  v41 = v34 + v40 + (*(*a2 + 64))(a2);
  v42 = (*(*a2 + 40))(a2);
  --a2[6];
  return (v41 + v42);
}

uint64_t sub_1001311B0(uint64_t a1, uint64_t a2)
{
  *(a1 + 16) = 0u;
  *(a1 + 64) = 0u;
  v4 = (a1 + 64);
  *(a1 + 112) = 0u;
  v5 = (a1 + 112);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 80) = 0;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) &= 0xF000u;
  v6 = *(a2 + 8);
  *a1 = off_10043DC28;
  *(a1 + 8) = v6;
  std::string::operator=((a1 + 16), (a2 + 16));
  std::string::operator=((a1 + 40), (a2 + 40));
  std::string::operator=(v4, (a2 + 64));
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 100) = *(a2 + 100);
  *(a1 + 104) = *(a2 + 104);
  std::string::operator=(v5, (a2 + 112));
  std::string::operator=((a1 + 136), (a2 + 136));
  *(a1 + 160) = *(a2 + 160);
  return a1;
}

void sub_1001312A0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 159) < 0)
  {
    operator delete(*(v1 + 136));
    if ((*(v1 + 135) & 0x80000000) == 0)
    {
LABEL_3:
      if ((*(v1 + 87) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else if ((*(v1 + 135) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*v4);
  if ((*(v1 + 87) & 0x80000000) == 0)
  {
LABEL_4:
    if ((*(v1 + 63) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

LABEL_9:
  operator delete(*v3);
  if ((*(v1 + 63) & 0x80000000) == 0)
  {
LABEL_5:
    if ((*(v1 + 39) & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_11;
  }

LABEL_10:
  operator delete(*(v1 + 40));
  if ((*(v1 + 39) & 0x80000000) == 0)
  {
LABEL_6:
    _Unwind_Resume(exception_object);
  }

LABEL_11:
  operator delete(*v2);
  _Unwind_Resume(exception_object);
}

uint64_t sub_100131328(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = *(a2 + 8);
  std::string::operator=((a1 + 16), (a2 + 16));
  std::string::operator=((a1 + 40), (a2 + 40));
  std::string::operator=((a1 + 64), (a2 + 64));
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 100) = *(a2 + 100);
  *(a1 + 104) = *(a2 + 104);
  std::string::operator=((a1 + 112), (a2 + 112));
  std::string::operator=((a1 + 136), (a2 + 136));
  *(a1 + 160) = *(a2 + 160);
  return a1;
}

uint64_t sub_1001313E4(uint64_t result, int a2)
{
  *(result + 36) = a2;
  *(result + 40) |= 0x20u;
  return result;
}

uint64_t sub_1001313F8(uint64_t a1, uint64_t *a2)
{
  __p[0] = 0;
  __p[1] = 0;
  v15 = 0;
  v13 = 0;
  v12 = 0;
  for (i = (*(*a2 + 200))(a2, __p); ; i = v7 + v5 + (*(*a2 + 224))(a2))
  {
    v5 = (*(*a2 + 216))(a2, __p, &v13, &v12) + i;
    if (!v13)
    {
      break;
    }

    if (v12 > 3u)
    {
      switch(v12)
      {
        case 4u:
          v6 = *a2;
          if (v13 == 10)
          {
            v7 = (*(v6 + 320))(a2, a1 + 24);
            v8 = 8;
            goto LABEL_23;
          }

          break;
        case 5u:
          v6 = *a2;
          if (v13 == 2)
          {
            v7 = (*(v6 + 280))(a2, a1 + 32);
            v8 = 16;
            goto LABEL_23;
          }

          break;
        case 6u:
          v6 = *a2;
          if (v13 == 8)
          {
            v7 = (*(v6 + 312))(a2, a1 + 36);
            v8 = 32;
            goto LABEL_23;
          }

          break;
        default:
LABEL_18:
          v6 = *a2;
          break;
      }
    }

    else
    {
      switch(v12)
      {
        case 1u:
          v6 = *a2;
          if (v13 == 4)
          {
            v7 = (*(v6 + 328))(a2, a1 + 8);
            v8 = 1;
            goto LABEL_23;
          }

          break;
        case 2u:
          v6 = *a2;
          if (v13 == 8)
          {
            v7 = (*(v6 + 312))(a2, a1 + 16);
            v8 = 2;
            goto LABEL_23;
          }

          break;
        case 3u:
          v6 = *a2;
          if (v13 == 2)
          {
            v7 = (*(v6 + 280))(a2, a1 + 20);
            v8 = 4;
LABEL_23:
            *(a1 + 40) |= v8;
            continue;
          }

          break;
        default:
          goto LABEL_18;
      }
    }

    v7 = (*(v6 + 352))(a2);
  }

  v9 = (*(*a2 + 208))(a2);
  if ((SHIBYTE(v15) & 0x80000000) == 0)
  {
    return (v9 + v5);
  }

  v11 = v9;
  operator delete(__p[0]);
  return (v11 + v5);
}

void sub_1001317C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1001317E4(uint64_t a1, _DWORD *a2)
{
  v2 = a2[7];
  v3 = a2[6] + 1;
  a2[6] = v3;
  if (v2 < v3)
  {
    exception = __cxa_allocate_exception(0x28uLL);
    exception[2] = 0;
    exception[3] = 0;
    *exception = &off_100434888;
    exception[1] = 0;
    *(exception + 8) = 6;
  }

  v6 = (*(*a2 + 32))(a2, "WifiRssiValue");
  v7 = (*(*a2 + 48))(a2, "rssi", 4, 1) + v6;
  v8 = (*(*a2 + 160))(a2, *(a1 + 8));
  v9 = v7 + v8 + (*(*a2 + 56))(a2);
  v10 = (*(*a2 + 48))(a2, "freq", 8, 2);
  v11 = v10 + (*(*a2 + 144))(a2, *(a1 + 16));
  v12 = v9 + v11 + (*(*a2 + 56))(a2);
  v13 = (*(*a2 + 48))(a2, "adhoc", 2, 3);
  v14 = v13 + (*(*a2 + 120))(a2, *(a1 + 20));
  v15 = v14 + (*(*a2 + 56))(a2);
  v16 = v12 + v15 + (*(*a2 + 48))(a2, "measurementTimestampNanos", 10, 4);
  v17 = (*(*a2 + 152))(a2, *(a1 + 24));
  v18 = v17 + (*(*a2 + 56))(a2);
  v19 = v18 + (*(*a2 + 48))(a2, "personalHotspot", 2, 5);
  v20 = v19 + (*(*a2 + 120))(a2, *(a1 + 32));
  v21 = v16 + v20 + (*(*a2 + 56))(a2);
  if ((*(a1 + 40) & 0x20) != 0)
  {
    v22 = (*(*a2 + 48))(a2, "channelFlags", 8, 6);
    v23 = v22 + (*(*a2 + 144))(a2, *(a1 + 36));
    v21 += v23 + (*(*a2 + 56))(a2);
  }

  v24 = (*(*a2 + 64))(a2);
  v25 = (*(*a2 + 40))(a2);
  --a2[6];
  return (v24 + v25 + v21);
}

double sub_100131CB8(uint64_t a1, uint64_t a2)
{
  *a1 = off_10043DC58;
  *(a1 + 40) &= 0xC0u;
  result = *(a2 + 8);
  *(a1 + 8) = result;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 20) = *(a2 + 20);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 36) = *(a2 + 36);
  *(a1 + 40) = *(a2 + 40);
  return result;
}

uint64_t sub_100131D1C(uint64_t a1)
{
  *a1 = off_10043DC78;
  v2 = *(a1 + 56);
  if (v2)
  {
    *(a1 + 64) = v2;
    operator delete(v2);
  }

  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  return a1;
}

void sub_100131D8C(uint64_t a1)
{
  *a1 = off_10043DC78;
  v2 = *(a1 + 56);
  if (v2)
  {
    *(a1 + 64) = v2;
    operator delete(v2);
  }

  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  operator delete();
}

uint64_t sub_100131E0C(uint64_t result, int a2)
{
  *(result + 16) = a2;
  *(result + 104) |= 1u;
  return result;
}

std::string *sub_100131E28(std::string *a1, const std::string *a2)
{
  result = std::string::operator=(a1 + 1, a2);
  a1[4].__r_.__value_.__s.__data_[8] |= 2u;
  return result;
}

uint64_t sub_100131E64(uint64_t result, double a2)
{
  *(result + 88) = a2;
  *(result + 104) |= 4u;
  return result;
}

uint64_t sub_100131E78(uint64_t result, char a2)
{
  *(result + 96) = a2;
  *(result + 104) |= 8u;
  return result;
}

uint64_t sub_100131E8C(uint64_t a1, uint64_t *a2)
{
  __p[0] = 0;
  __p[1] = 0;
  v30 = 0;
  v28 = 0;
  v27 = 0;
  v4 = (*(*a2 + 200))(a2, __p);
  v5 = 0;
  v6 = 0;
  v7 = 0;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  while (1)
  {
    v11 = (*(*a2 + 216))(a2, __p, &v28, &v27) + v4;
    if (!v28)
    {
      break;
    }

    switch(v27)
    {
      case 1:
        v12 = *a2;
        if (v28 != 10)
        {
          goto LABEL_42;
        }

        v13 = (*(v12 + 320))(a2, a1 + 8) + v11;
        v5 = 1;
        break;
      case 2:
        v12 = *a2;
        if (v28 != 8)
        {
          goto LABEL_42;
        }

        v13 = (*(v12 + 312))(a2, a1 + 16) + v11;
        *(a1 + 104) |= 1u;
        break;
      case 3:
        v12 = *a2;
        if (v28 != 2)
        {
          goto LABEL_42;
        }

        v13 = (*(v12 + 280))(a2, a1 + 20) + v11;
        v6 = 1;
        break;
      case 4:
        v12 = *a2;
        if (v28 != 2)
        {
          goto LABEL_42;
        }

        v13 = (*(v12 + 280))(a2, a1 + 21) + v11;
        v7 = 1;
        break;
      case 5:
        v12 = *a2;
        if (v28 != 11)
        {
          goto LABEL_42;
        }

        v13 = (*(v12 + 336))(a2, a1 + 24) + v11;
        *(a1 + 104) |= 2u;
        break;
      case 6:
        v12 = *a2;
        if (v28 != 6)
        {
          goto LABEL_42;
        }

        v13 = (*(v12 + 304))(a2, a1 + 48) + v11;
        v8 = 1;
        break;
      case 7:
        if (v28 != 15)
        {
          goto LABEL_24;
        }

        *(a1 + 64) = *(a1 + 56);
        v26 = 0;
        v15 = (*(*a2 + 248))(a2, &v26, &v26 + 4);
        v16 = HIDWORD(v26);
        v17 = *(a1 + 56);
        v18 = (*(a1 + 64) - v17) >> 2;
        if (HIDWORD(v26) <= v18)
        {
          if (HIDWORD(v26) < v18)
          {
            *(a1 + 64) = v17 + 4 * HIDWORD(v26);
          }
        }

        else
        {
          sub_100136ED0(a1 + 56, HIDWORD(v26) - v18);
          v16 = HIDWORD(v26);
        }

        v19 = v15 + v11;
        if (v16)
        {
          v20 = 0;
          v21 = 0;
          do
          {
            v19 += (*(*a2 + 312))(a2, *(a1 + 56) + v20);
            ++v21;
            v20 += 4;
          }

          while (v21 < HIDWORD(v26));
        }

        v13 = (*(*a2 + 256))(a2) + v19;
        v9 = 1;
        break;
      case 8:
        v12 = *a2;
        if (v28 != 2)
        {
          goto LABEL_42;
        }

        v13 = (*(v12 + 280))(a2, a1 + 80) + v11;
        v10 = 1;
        break;
      case 9:
        v12 = *a2;
        if (v28 != 4)
        {
          goto LABEL_42;
        }

        v13 = (*(v12 + 328))(a2, a1 + 88) + v11;
        *(a1 + 104) |= 4u;
        break;
      case 10:
        v12 = *a2;
        if (v28 != 2)
        {
          goto LABEL_42;
        }

        v13 = (*(v12 + 280))(a2, a1 + 96) + v11;
        *(a1 + 104) |= 8u;
        break;
      case 11:
        v12 = *a2;
        if (v28 != 2)
        {
          goto LABEL_42;
        }

        v13 = (*(v12 + 280))(a2, a1 + 97) + v11;
        *(a1 + 104) |= 0x10u;
        break;
      case 12:
        v12 = *a2;
        if (v28 != 2)
        {
          goto LABEL_42;
        }

        v13 = (*(v12 + 280))(a2, a1 + 98) + v11;
        *(a1 + 104) |= 0x20u;
        break;
      case 13:
        v12 = *a2;
        if (v28 != 8)
        {
LABEL_42:
          v14 = (*(v12 + 352))(a2);
          goto LABEL_43;
        }

        v13 = (*(v12 + 312))(a2, a1 + 100) + v11;
        *(a1 + 104) |= 0x40u;
        break;
      default:
LABEL_24:
        v14 = (*(*a2 + 352))(a2);
LABEL_43:
        v13 = v14 + v11;
        break;
    }

    v4 = (*(*a2 + 224))(a2) + v13;
  }

  v22 = (*(*a2 + 208))(a2);
  if ((v5 & v6 & v7 & v8 & v9 & v10 & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x28uLL);
    exception[2] = 0;
    exception[3] = 0;
    *exception = &off_100434888;
    exception[1] = 0;
    *(exception + 8) = 1;
  }

  if (SHIBYTE(v30) < 0)
  {
    v23 = v22;
    operator delete(__p[0]);
    v22 = v23;
  }

  return (v22 + v11);
}

void sub_100132778(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1001327A8(uint64_t a1, _DWORD *a2)
{
  v2 = a2[7];
  v3 = a2[6] + 1;
  a2[6] = v3;
  if (v2 < v3)
  {
    exception = __cxa_allocate_exception(0x28uLL);
    exception[2] = 0;
    exception[3] = 0;
    *exception = &off_100434888;
    exception[1] = 0;
    *(exception + 8) = 6;
  }

  v6 = (*(*a2 + 32))(a2, "WifiScanSettings");
  v7 = (*(*a2 + 48))(a2, "initiatedTimestamp", 10, 1) + v6;
  v8 = (*(*a2 + 152))(a2, *(a1 + 8));
  v9 = v7 + v8 + (*(*a2 + 56))(a2);
  if (*(a1 + 104))
  {
    v10 = (*(*a2 + 48))(a2, "error", 8, 2);
    v11 = v10 + (*(*a2 + 144))(a2, *(a1 + 16));
    v9 += v11 + (*(*a2 + 56))(a2);
  }

  v12 = (*(*a2 + 48))(a2, "cached", 2, 3);
  v13 = v12 + (*(*a2 + 120))(a2, *(a1 + 20));
  v14 = v13 + (*(*a2 + 56))(a2) + v9;
  v15 = (*(*a2 + 48))(a2, "indoorScan", 2, 4);
  v16 = v15 + (*(*a2 + 120))(a2, *(a1 + 21));
  v17 = v14 + v16 + (*(*a2 + 56))(a2);
  if ((*(a1 + 104) & 2) != 0)
  {
    v18 = (*(*a2 + 48))(a2, "initiator", 11, 5);
    v19 = v18 + (*(*a2 + 168))(a2, a1 + 24);
    v17 += v19 + (*(*a2 + 56))(a2);
  }

  v20 = (*(*a2 + 48))(a2, "dwellMs", 6, 6);
  v21 = v20 + (*(*a2 + 136))(a2, *(a1 + 48));
  v22 = v21 + (*(*a2 + 56))(a2);
  v23 = v22 + (*(*a2 + 48))(a2, "frequencies", 15, 7);
  v24 = v23 + (*(*a2 + 88))(a2, 8, (*(a1 + 64) - *(a1 + 56)) >> 2) + v17;
  for (i = *(a1 + 56); i != *(a1 + 64); v24 += (*(*a2 + 144))(a2, v26))
  {
    v26 = *i++;
  }

  v27 = (*(*a2 + 96))(a2);
  v28 = v27 + (*(*a2 + 56))(a2) + v24;
  v29 = (*(*a2 + 48))(a2, "offChannelIncluded", 2, 8);
  v30 = v29 + (*(*a2 + 120))(a2, *(a1 + 80));
  v31 = v28 + v30 + (*(*a2 + 56))(a2);
  v32 = *(a1 + 104);
  if ((v32 & 4) != 0)
  {
    v38 = (*(*a2 + 48))(a2, "dutyCycle", 4, 9);
    v39 = v38 + (*(*a2 + 160))(a2, *(a1 + 88));
    v31 += v39 + (*(*a2 + 56))(a2);
    v32 = *(a1 + 104);
    if ((v32 & 8) == 0)
    {
LABEL_10:
      if ((v32 & 0x10) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_17;
    }
  }

  else if ((*(a1 + 104) & 8) == 0)
  {
    goto LABEL_10;
  }

  v40 = (*(*a2 + 48))(a2, "notPassive", 2, 10);
  v41 = v40 + (*(*a2 + 120))(a2, *(a1 + 96));
  v31 += v41 + (*(*a2 + 56))(a2);
  v32 = *(a1 + 104);
  if ((v32 & 0x10) == 0)
  {
LABEL_11:
    if ((v32 & 0x20) == 0)
    {
      goto LABEL_12;
    }

LABEL_18:
    v44 = (*(*a2 + 48))(a2, "targettedScan", 2, 12);
    v45 = v44 + (*(*a2 + 120))(a2, *(a1 + 98));
    v31 += v45 + (*(*a2 + 56))(a2);
    if ((*(a1 + 104) & 0x40) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

LABEL_17:
  v42 = (*(*a2 + 48))(a2, "merged", 2, 11);
  v43 = v42 + (*(*a2 + 120))(a2, *(a1 + 97));
  v31 += v43 + (*(*a2 + 56))(a2);
  v32 = *(a1 + 104);
  if ((v32 & 0x20) != 0)
  {
    goto LABEL_18;
  }

LABEL_12:
  if ((v32 & 0x40) != 0)
  {
LABEL_13:
    v33 = (*(*a2 + 48))(a2, "rssiThreshold", 8, 13);
    v34 = v33 + (*(*a2 + 144))(a2, *(a1 + 100));
    v31 += v34 + (*(*a2 + 56))(a2);
  }

LABEL_14:
  v35 = (*(*a2 + 64))(a2);
  v36 = (*(*a2 + 40))(a2);
  --a2[6];
  return (v35 + v36 + v31);
}

uint64_t sub_100133188(uint64_t a1)
{
  sub_10003BFA8(&v12);
  v2 = sub_10003C2E4(&v12, "[", 1);
  v3 = *a1;
  v8 = *(a1 + 8);
  v9 = v3;
  sub_100137024(&v9, &v8);
  if ((v11 & 0x80u) == 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  if ((v11 & 0x80u) == 0)
  {
    v5 = v11;
  }

  else
  {
    v5 = __p[1];
  }

  v6 = sub_10003C2E4(v2, v4, v5);
  sub_10003C2E4(v6, "]", 1);
  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  std::stringbuf::str();
  if (v15 < 0)
  {
    operator delete(v14[7].__locale_);
  }

  std::locale::~locale(v14);
  std::ostream::~ostream();
  return std::ios::~ios();
}

void sub_100133340(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_10003C1C4(va);
  _Unwind_Resume(a1);
}

void sub_100133354(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17)
{
  if (a16 < 0)
  {
    operator delete(__p);
    sub_10003C1C4(&a17);
    _Unwind_Resume(a1);
  }

  sub_10003C1C4(&a17);
  _Unwind_Resume(a1);
}

uint64_t sub_10013338C(uint64_t a1)
{
  *a1 = off_10043DC98;
  *(a1 + 40) = off_10043DC78;
  v2 = *(a1 + 96);
  if (v2)
  {
    *(a1 + 104) = v2;
    operator delete(v2);
  }

  if (*(a1 + 87) < 0)
  {
    operator delete(*(a1 + 64));
  }

  sub_100136CF0(a1 + 16, *(a1 + 24));
  return a1;
}

void sub_100133418(uint64_t a1)
{
  *a1 = off_10043DC98;
  *(a1 + 40) = off_10043DC78;
  v2 = *(a1 + 96);
  if (v2)
  {
    *(a1 + 104) = v2;
    operator delete(v2);
  }

  if (*(a1 + 87) < 0)
  {
    operator delete(*(a1 + 64));
  }

  sub_100136CF0(a1 + 16, *(a1 + 24));

  operator delete();
}

uint64_t sub_1001334C4(uint64_t a1, uint64_t *a2)
{
  v24[0] = 0;
  v24[1] = 0;
  v25 = 0;
  v23 = 0;
  v22 = 0;
  for (i = (*(*a2 + 200))(a2, v24); ; i = (*(*a2 + 224))(a2) + v7)
  {
    v5 = (*(*a2 + 216))(a2, v24, &v23, &v22) + i;
    if (!v23)
    {
      break;
    }

    if (v22 == 3)
    {
      if (v23 == 12)
      {
        v7 = sub_100131E8C(a1 + 40, a2) + v5;
        *(a1 + 152) |= 4u;
        continue;
      }

      goto LABEL_16;
    }

    if (v22 != 2)
    {
      if (v22 == 1)
      {
        v6 = *a2;
        if (v23 == 10)
        {
          v7 = (*(v6 + 320))(a2, a1 + 8) + v5;
          *(a1 + 152) |= 1u;
          continue;
        }

        v14 = (*(v6 + 352))(a2);
        goto LABEL_18;
      }

LABEL_16:
      v14 = (*(*a2 + 352))(a2);
LABEL_18:
      v7 = v14 + v5;
      continue;
    }

    if (v23 != 13)
    {
      goto LABEL_16;
    }

    sub_100136CF0(a1 + 16, *(a1 + 24));
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
    *(a1 + 16) = a1 + 24;
    v21 = 0;
    v20 = 0;
    v8 = (*(*a2 + 232))(a2, &v21, &v20, &v21 + 4) + v5;
    if (HIDWORD(v21))
    {
      v9 = 0;
      do
      {
        __p[0] = 0;
        __p[1] = 0;
        v19 = 0;
        v10 = (*(*a2 + 336))(a2, __p);
        v26 = __p;
        v11 = sub_100137868(a1 + 16, __p);
        v12 = sub_1001313F8((v11 + 7), a2);
        if (SHIBYTE(v19) < 0)
        {
          v13 = v12;
          operator delete(__p[0]);
          v12 = v13;
        }

        v8 += v10 + v12;
        ++v9;
      }

      while (v9 < HIDWORD(v21));
    }

    v7 = (*(*a2 + 240))(a2) + v8;
    *(a1 + 152) |= 2u;
  }

  v15 = (*(*a2 + 208))(a2);
  if (SHIBYTE(v25) < 0)
  {
    v16 = v15;
    operator delete(v24[0]);
    v15 = v16;
  }

  return (v15 + v5);
}

void sub_1001338B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if ((a24 & 0x80000000) == 0)
  {
    _Unwind_Resume(exception_object);
  }

  operator delete(__p);
  _Unwind_Resume(exception_object);
}

uint64_t sub_100133914(uint64_t a1, _DWORD *a2)
{
  v2 = a2[7];
  v3 = a2[6] + 1;
  a2[6] = v3;
  if (v2 < v3)
  {
    exception = __cxa_allocate_exception(0x28uLL);
    exception[2] = 0;
    exception[3] = 0;
    *exception = &off_100434888;
    exception[1] = 0;
    *(exception + 8) = 6;
  }

  v6 = (*(*a2 + 32))(a2, "WifiScanEvent");
  v7 = (*(*a2 + 48))(a2, "timestampNanos", 10, 1) + v6;
  v8 = (*(*a2 + 152))(a2, *(a1 + 8));
  v9 = v7 + v8 + (*(*a2 + 56))(a2);
  v10 = (*(*a2 + 48))(a2, "rssiDict", 13, 2);
  v11 = v9 + v10 + (*(*a2 + 72))(a2, 11, 12, *(a1 + 32));
  v12 = *(a1 + 16);
  if (v12 != (a1 + 24))
  {
    do
    {
      v21 = (*(*a2 + 168))(a2, v12 + 4);
      v22 = sub_1001317E4((v12 + 7), a2);
      v23 = v12[1];
      if (v23)
      {
        do
        {
          v24 = v23;
          v23 = *v23;
        }

        while (v23);
      }

      else
      {
        do
        {
          v24 = v12[2];
          v25 = *v24 == v12;
          v12 = v24;
        }

        while (!v25);
      }

      v11 += v21 + v22;
      v12 = v24;
    }

    while (v24 != (a1 + 24));
  }

  v13 = (*(*a2 + 80))(a2) + v11;
  v14 = (*(*a2 + 56))(a2);
  v15 = v13 + v14 + (*(*a2 + 48))(a2, "settings", 12, 3);
  v16 = sub_1001327A8(a1 + 40, a2);
  v17 = v16 + (*(*a2 + 56))(a2);
  v18 = v15 + v17 + (*(*a2 + 64))(a2);
  v19 = (*(*a2 + 40))(a2);
  --a2[6];
  return (v18 + v19);
}

uint64_t sub_100133CBC(uint64_t a1, uint64_t a2)
{
  *a1 = off_10043DC98;
  *(a1 + 24) = 0;
  *(a1 + 16) = a1 + 24;
  *(a1 + 64) = 0;
  v4 = (a1 + 64);
  *(a1 + 96) = 0;
  v5 = (a1 + 96);
  *(a1 + 140) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = off_10043DC78;
  *(a1 + 48) = 0;
  *(a1 + 54) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  *(a1 + 135) = 0;
  *(a1 + 128) = 0;
  *(a1 + 144) &= 0x80u;
  *(a1 + 152) &= 0xF8u;
  *(a1 + 8) = *(a2 + 8);
  if (a1 != a2)
  {
    sub_100137248((a1 + 16), *(a2 + 16), (a2 + 24));
  }

  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 60) = *(a2 + 60);
  std::string::operator=(v4, (a2 + 64));
  *(a1 + 88) = *(a2 + 88);
  if (a1 != a2)
  {
    sub_100136D74(v5, *(a2 + 96), *(a2 + 104), (*(a2 + 104) - *(a2 + 96)) >> 2);
  }

  *(a1 + 120) = *(a2 + 120);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 137) = *(a2 + 137);
  *(a1 + 140) = *(a2 + 140);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 152) = *(a2 + 152);
  return a1;
}

void sub_100133E34(_Unwind_Exception *a1)
{
  sub_100131D1C(v2);
  sub_100136CF0(v1, *v3);
  _Unwind_Resume(a1);
}

uint64_t sub_100133E58(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = *(a2 + 8);
  if (a1 != a2)
  {
    sub_100137248((a1 + 16), *(a2 + 16), (a2 + 24));
  }

  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 60) = *(a2 + 60);
  std::string::operator=((a1 + 64), (a2 + 64));
  *(a1 + 88) = *(a2 + 88);
  if (a1 != a2)
  {
    sub_100136D74((a1 + 96), *(a2 + 96), *(a2 + 104), (*(a2 + 104) - *(a2 + 96)) >> 2);
  }

  *(a1 + 120) = *(a2 + 120);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 137) = *(a2 + 137);
  *(a1 + 140) = *(a2 + 140);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 152) = *(a2 + 152);
  return a1;
}

uint64_t sub_100133F20(uint64_t a1, _DWORD *a2)
{
  v2 = a2[7];
  v3 = a2[6] + 1;
  a2[6] = v3;
  if (v2 < v3)
  {
    exception = __cxa_allocate_exception(0x28uLL);
    exception[2] = 0;
    exception[3] = 0;
    *exception = &off_100434888;
    exception[1] = 0;
    *(exception + 8) = 6;
  }

  v6 = (*(*a2 + 32))(a2, "CascadiaScanOptions");
  v7 = (*(*a2 + 48))(a2, "channelSpec", 8, 1) + v6;
  v8 = (*(*a2 + 144))(a2, *(a1 + 8));
  v9 = v7 + v8 + (*(*a2 + 56))(a2);
  v10 = (*(*a2 + 48))(a2, "triggerSpec", 8, 2);
  v11 = v10 + (*(*a2 + 144))(a2, *(a1 + 12));
  v12 = v9 + v11 + (*(*a2 + 56))(a2);
  v13 = (*(*a2 + 48))(a2, "triggerPollingIntervalNanos", 10, 3);
  v14 = v13 + (*(*a2 + 152))(a2, *(a1 + 16));
  v15 = v14 + (*(*a2 + 56))(a2);
  v16 = v12 + v15 + (*(*a2 + 48))(a2, "triggerCounterMax", 8, 4);
  v17 = (*(*a2 + 144))(a2, *(a1 + 24));
  v18 = v17 + (*(*a2 + 56))(a2);
  v19 = v18 + (*(*a2 + 48))(a2, "errorDelayNanos", 10, 5);
  LODWORD(a1) = v19 + (*(*a2 + 152))(a2, *(a1 + 32));
  v20 = v16 + a1 + (*(*a2 + 56))(a2);
  LODWORD(a1) = (*(*a2 + 64))(a2);
  v21 = (*(*a2 + 40))(a2);
  --a2[6];
  return (v20 + a1 + v21);
}

uint64_t sub_100134350(uint64_t result)
{
  *result = off_10043DCB8;
  if (*(result + 47) < 0)
  {
    v1 = result;
    operator delete(*(result + 24));
    return v1;
  }

  return result;
}

void sub_1001343AC(uint64_t a1)
{
  *a1 = off_10043DCB8;
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  operator delete();
}

uint64_t sub_100134440(uint64_t a1, _DWORD *a2)
{
  v2 = a2[7];
  v3 = a2[6] + 1;
  a2[6] = v3;
  if (v2 < v3)
  {
    exception = __cxa_allocate_exception(0x28uLL);
    exception[2] = 0;
    exception[3] = 0;
    *exception = &off_100434888;
    exception[1] = 0;
    *(exception + 8) = 6;
  }

  v6 = (*(*a2 + 32))(a2, "CascadiaScanSettings");
  v7 = (*(*a2 + 48))(a2, "initiatedTimestampNanos", 10, 1) + v6;
  v8 = (*(*a2 + 152))(a2, *(a1 + 8));
  v9 = v7 + v8 + (*(*a2 + 56))(a2);
  v10 = (*(*a2 + 48))(a2, "delayNanos", 10, 2);
  v11 = v10 + (*(*a2 + 152))(a2, *(a1 + 16));
  v12 = v9 + v11 + (*(*a2 + 56))(a2);
  v13 = *(a1 + 112);
  if (v13)
  {
    v14 = (*(*a2 + 48))(a2, "errorString", 11, 3);
    v15 = v14 + (*(*a2 + 168))(a2, a1 + 24);
    v12 += v15 + (*(*a2 + 56))(a2);
    v13 = *(a1 + 112);
  }

  if ((v13 & 2) != 0)
  {
    v16 = (*(*a2 + 48))(a2, "errorDelayNanos", 10, 4);
    v17 = v16 + (*(*a2 + 152))(a2, *(a1 + 48));
    v12 += v17 + (*(*a2 + 56))(a2);
  }

  v18 = (*(*a2 + 48))(a2, "commandType", 8, 5);
  v19 = v18 + (*(*a2 + 144))(a2, *(a1 + 56));
  v20 = v19 + (*(*a2 + 56))(a2) + v12;
  v21 = *(a1 + 112);
  if ((v21 & 4) != 0)
  {
    v22 = (*(*a2 + 48))(a2, "rssiScanOptions", 12, 6);
    v23 = a2[7];
    v24 = a2[6] + 1;
    a2[6] = v24;
    if (v23 < v24)
    {
      v35 = __cxa_allocate_exception(0x28uLL);
      v35[2] = 0;
      v35[3] = 0;
      *v35 = &off_100434888;
      v35[1] = 0;
      *(v35 + 8) = 6;
    }

    v25 = v22;
    v26 = (*(*a2 + 32))(a2, "RssiScanOptions");
    v27 = (*(*a2 + 64))(a2);
    v28 = (*(*a2 + 40))(a2);
    --a2[6];
    v20 += v25 + v26 + v27 + v28 + (*(*a2 + 56))(a2);
    v21 = *(a1 + 112);
  }

  if ((v21 & 8) != 0)
  {
    v29 = (*(*a2 + 48))(a2, "cascadiaScanOptions", 12, 7);
    v30 = v29 + sub_100133F20(a1 + 72, a2);
    v20 += v30 + (*(*a2 + 56))(a2);
  }

  v31 = (*(*a2 + 64))(a2);
  v32 = (*(*a2 + 40))(a2);
  --a2[6];
  return (v31 + v32 + v20);
}

uint64_t sub_100134A90(uint64_t a1)
{
  *a1 = off_10043DCD8;
  if (*(a1 + 207) < 0)
  {
    operator delete(*(a1 + 184));
  }

  v2 = *(a1 + 160);
  if (v2)
  {
    v3 = *(a1 + 168);
    v4 = *(a1 + 160);
    if (v3 != v2)
    {
      do
      {
        v5 = v3 - 24;
        sub_1000E4A44(v3 - 24, *(v3 - 16));
        v3 = v5;
      }

      while (v5 != v2);
      v4 = *(a1 + 160);
    }

    *(a1 + 168) = v2;
    operator delete(v4);
  }

  if (*(a1 + 159) < 0)
  {
    operator delete(*(a1 + 136));
    *(a1 + 16) = off_10043DCB8;
    if ((*(a1 + 63) & 0x80000000) == 0)
    {
      return a1;
    }
  }

  else
  {
    *(a1 + 16) = off_10043DCB8;
    if ((*(a1 + 63) & 0x80000000) == 0)
    {
      return a1;
    }
  }

  operator delete(*(a1 + 40));
  return a1;
}

void sub_100134BA8(uint64_t a1)
{
  sub_100134A90(a1);

  operator delete();
}

uint64_t sub_100134BE0(uint64_t a1, _DWORD *a2)
{
  v2 = a2[7];
  v3 = a2[6] + 1;
  a2[6] = v3;
  if (v2 < v3)
  {
    exception = __cxa_allocate_exception(0x28uLL);
    exception[2] = 0;
    exception[3] = 0;
    *exception = &off_100434888;
    exception[1] = 0;
    *(exception + 8) = 6;
  }

  v6 = (*(*a2 + 32))(a2, "CascadiaScanEvent");
  v7 = (*(*a2 + 48))(a2, "timestampNanos", 10, 1) + v6;
  v8 = (*(*a2 + 152))(a2, *(a1 + 8));
  v9 = v7 + v8 + (*(*a2 + 56))(a2);
  v10 = (*(*a2 + 48))(a2, "settings", 12, 2);
  v11 = v10 + sub_100134440(a1 + 16, a2);
  v12 = v9 + v11 + (*(*a2 + 56))(a2);
  v13 = *(a1 + 208);
  if ((v13 & 1) == 0)
  {
    if ((*(a1 + 208) & 2) == 0)
    {
      goto LABEL_4;
    }

LABEL_8:
    v21 = (*(*a2 + 48))(a2, "rssiDict", 15, 4);
    v22 = v21 + (*(*a2 + 88))(a2, 13, -1431655765 * ((*(a1 + 168) - *(a1 + 160)) >> 3)) + v12;
    for (i = *(a1 + 160); i != *(a1 + 168); i += 24)
    {
      v24 = (*(*a2 + 72))(a2, 11, 11, *(i + 16)) + v22;
      v25 = *i;
      if (*i != i + 8)
      {
        do
        {
          v26 = (*(*a2 + 168))(a2, v25 + 4);
          v27 = (*(*a2 + 168))(a2, v25 + 7);
          v28 = v25[1];
          if (v28)
          {
            do
            {
              v29 = v28;
              v28 = *v28;
            }

            while (v28);
          }

          else
          {
            do
            {
              v29 = v25[2];
              v30 = *v29 == v25;
              v25 = v29;
            }

            while (!v30);
          }

          v24 += v26 + v27;
          v25 = v29;
        }

        while (v29 != (i + 8));
      }

      v22 = (*(*a2 + 80))(a2) + v24;
    }

    v31 = (*(*a2 + 96))(a2);
    v12 = v31 + (*(*a2 + 56))(a2) + v22;
    if ((*(a1 + 208) & 4) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_6;
  }

  v19 = (*(*a2 + 48))(a2, "versionString", 11, 3);
  v20 = v19 + (*(*a2 + 168))(a2, a1 + 136);
  v12 += v20 + (*(*a2 + 56))(a2);
  v13 = *(a1 + 208);
  if ((v13 & 2) != 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  if ((v13 & 4) != 0)
  {
LABEL_5:
    v14 = (*(*a2 + 48))(a2, "cascadiaData", 11, 5);
    v15 = v14 + (*(*a2 + 168))(a2, a1 + 184);
    v12 += v15 + (*(*a2 + 56))(a2);
  }

LABEL_6:
  v16 = (*(*a2 + 64))(a2);
  v17 = (*(*a2 + 40))(a2);
  --a2[6];
  return (v16 + v17 + v12);
}

__n128 sub_1001351B8(uint64_t a1, uint64_t a2)
{
  *a1 = off_10043DCF8;
  *(a1 + 24) &= 0xFCu;
  result = *(a2 + 8);
  *(a1 + 8) = result;
  *(a1 + 24) = *(a2 + 24);
  return result;
}

uint64_t sub_1001351F4(uint64_t result)
{
  *result = off_10043DD18;
  if (*(result + 39) < 0)
  {
    v1 = result;
    operator delete(*(result + 16));
    return v1;
  }

  return result;
}

void sub_100135250(uint64_t a1)
{
  *a1 = off_10043DD18;
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  operator delete();
}

void *sub_1001352E4(void *a1, uint64_t a2)
{
  sub_10003C2E4(a1, "RadioAddress(", 13);
  v4 = sub_10003C2E4(a1, "addressType=", 12);
  memset(&__p, 0, sizeof(__p));
  if ((sub_100137A60((a2 + 8), &__p) & 1) == 0)
  {
    std::bad_cast::bad_cast(&v13);
    v13.__r_.__value_.__r.__words[0] = &off_100434090;
    sub_100049F88(&v13);
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  sub_10003C2E4(v4, p_p, size);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v7 = sub_10003C2E4(a1, ", ", 2);
  v8 = sub_10003C2E4(v7, "address=", 8);
  memset(&v13, 0, sizeof(v13));
  std::string::operator=(&v13, (a2 + 16));
  if ((v13.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v9 = &v13;
  }

  else
  {
    v9 = v13.__r_.__value_.__r.__words[0];
  }

  if ((v13.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v10 = HIBYTE(v13.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v10 = v13.__r_.__value_.__l.__size_;
  }

  sub_10003C2E4(v8, v9, v10);
  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v13.__r_.__value_.__l.__data_);
  }

  sub_10003C2E4(a1, ")", 1);
  return a1;
}

void sub_10013545C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1001354C8(void *a1, uint64_t a2)
{
  sub_10003C2E4(a1, "CoarseApParams(", 15);
  sub_10003C2E4(a1, "weakWeight=", 11);
  if (*(a2 + 32))
  {
    memset(&__p, 0, sizeof(__p));
    if ((sub_1000DE4DC((a2 + 8), &__p) & 1) == 0)
    {
      std::bad_cast::bad_cast(&v17);
      v17.__r_.__value_.__r.__words[0] = &off_100434090;
      sub_100049F88(&v17);
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = __p.__r_.__value_.__l.__size_;
    }

    sub_10003C2E4(a1, p_p, size);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    sub_10003C2E4(a1, "<null>", 6);
  }

  v6 = sub_10003C2E4(a1, ", ", 2);
  sub_10003C2E4(v6, "strongWeight=", 13);
  if ((*(a2 + 32) & 2) != 0)
  {
    memset(&__p, 0, sizeof(__p));
    if ((sub_1000DE4DC((a2 + 16), &__p) & 1) == 0)
    {
      std::bad_cast::bad_cast(&v17);
      v17.__r_.__value_.__r.__words[0] = &off_100434090;
      sub_100049F88(&v17);
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v7 = &__p;
    }

    else
    {
      v7 = __p.__r_.__value_.__r.__words[0];
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v8 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v8 = __p.__r_.__value_.__l.__size_;
    }

    sub_10003C2E4(a1, v7, v8);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    sub_10003C2E4(a1, "<null>", 6);
  }

  v9 = sub_10003C2E4(a1, ", ", 2);
  sub_10003C2E4(v9, "rssiThreshold=", 14);
  if ((*(a2 + 32) & 4) != 0)
  {
    sub_1000E18F8((a2 + 24), &v17);
    if ((v17.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v10 = &v17;
    }

    else
    {
      v10 = v17.__r_.__value_.__r.__words[0];
    }

    if ((v17.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v11 = HIBYTE(v17.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v11 = v17.__r_.__value_.__l.__size_;
    }

    sub_10003C2E4(a1, v10, v11);
    if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v17.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    sub_10003C2E4(a1, "<null>", 6);
  }

  v12 = sub_10003C2E4(a1, ", ", 2);
  sub_10003C2E4(v12, "rssiSmoothingRange=", 19);
  if ((*(a2 + 32) & 8) != 0)
  {
    sub_1000E18F8((a2 + 28), &v17);
    if ((v17.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v13 = &v17;
    }

    else
    {
      v13 = v17.__r_.__value_.__r.__words[0];
    }

    if ((v17.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v14 = HIBYTE(v17.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v14 = v17.__r_.__value_.__l.__size_;
    }

    sub_10003C2E4(a1, v13, v14);
    if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v17.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    sub_10003C2E4(a1, "<null>", 6);
  }

  sub_10003C2E4(a1, ")", 1);
  return a1;
}

void sub_1001357CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_100135820(void *a1)
{
  *a1 = off_10043DD58;
  v2 = a1[59];
  if (v2)
  {
    a1[60] = v2;
    operator delete(v2);
  }

  v3 = a1[56];
  if (v3)
  {
    a1[57] = v3;
    operator delete(v3);
  }

  nullsub_75(a1 + 52);
  nullsub_75(a1 + 48);
  v4 = a1[43];
  if (v4)
  {
    v5 = a1[44];
    v6 = a1[43];
    if (v5 != v4)
    {
      do
      {
        v7 = *(v5 - 1);
        v5 -= 3;
        if (v7 < 0)
        {
          operator delete(*v5);
        }
      }

      while (v5 != v4);
      v6 = a1[43];
    }

    a1[44] = v4;
    operator delete(v6);
  }

  nullsub_74(a1 + 37);
  nullsub_74(a1 + 31);
  nullsub_78(a1 + 17);
  nullsub_73(a1 + 8);
  v8 = a1[4];
  if (v8)
  {
    v9 = a1[5];
    v10 = a1[4];
    if (v9 != v8)
    {
      v11 = v9 - 5;
      v12 = v9 - 5;
      v13 = v9 - 5;
      do
      {
        v14 = *v13;
        v13 -= 5;
        (*v14)(v12);
        v11 -= 5;
        v15 = v12 == v8;
        v12 = v13;
      }

      while (!v15);
      v10 = a1[4];
    }

    a1[5] = v8;
    operator delete(v10);
  }

  v16 = a1[1];
  if (v16)
  {
    v17 = a1[2];
    v18 = a1[1];
    if (v17 != v16)
    {
      v19 = v17 - 5;
      v20 = v17 - 5;
      v21 = v17 - 5;
      do
      {
        v22 = *v21;
        v21 -= 5;
        (*v22)(v20);
        v19 -= 5;
        v15 = v20 == v16;
        v20 = v21;
      }

      while (!v15);
      v18 = a1[1];
    }

    a1[2] = v16;
    operator delete(v18);
  }

  return a1;
}

void sub_1001359DC(void *a1)
{
  sub_100135820(a1);

  operator delete();
}

uint64_t sub_100135A24(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    sub_100138198((a1 + 8), *(a2 + 8), *(a2 + 16), 0xCCCCCCCCCCCCCCCDLL * ((*(a2 + 16) - *(a2 + 8)) >> 3));
    sub_10013852C((a1 + 32), *(a2 + 32), *(a2 + 40), 0xCCCCCCCCCCCCCCCDLL * ((*(a2 + 40) - *(a2 + 32)) >> 3));
  }

  *(a1 + 56) = *(a2 + 56);
  sub_10012C758(a1 + 64, a2 + 64);
  *(a1 + 128) = *(a2 + 128);
  sub_10012E27C(a1 + 136, a2 + 136);
  *(a1 + 232) = *(a2 + 232);
  sub_10012CCEC(a1 + 248, a2 + 248);
  sub_10012CCEC(a1 + 296, a2 + 296);
  if (a1 == a2)
  {
    *(a1 + 368) = *(a2 + 368);
    sub_10012A358(a1 + 384, a2 + 384);
    sub_10012A358(a1 + 416, a2 + 416);
  }

  else
  {
    sub_1000E5A0C(a1 + 344, *(a2 + 344), *(a2 + 352), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 352) - *(a2 + 344)) >> 3));
    *(a1 + 368) = *(a2 + 368);
    sub_10012A358(a1 + 384, a2 + 384);
    sub_10012A358(a1 + 416, a2 + 416);
    sub_10011DD68((a1 + 448), *(a2 + 448), *(a2 + 456), (*(a2 + 456) - *(a2 + 448)) >> 3);
    sub_100136D74((a1 + 472), *(a2 + 472), *(a2 + 480), (*(a2 + 480) - *(a2 + 472)) >> 2);
  }

  v4 = *(a2 + 496);
  *(a1 + 498) = *(a2 + 498);
  *(a1 + 496) = v4;
  return a1;
}

void *sub_100135B80(void *a1, uint64_t a2)
{
  sub_10003C2E4(a1, "JointRssiMap(", 13);
  v4 = sub_10003C2E4(a1, "radioAddresses=", 15);
  sub_1001368E8((a2 + 8));
  if (SHIBYTE(v62) >= 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  if (SHIBYTE(v62) >= 0)
  {
    v6 = HIBYTE(v62);
  }

  else
  {
    v6 = v61;
  }

  sub_10003C2E4(v4, p_p, v6);
  if (SHIBYTE(v62) < 0)
  {
    operator delete(__p);
  }

  v7 = sub_10003C2E4(a1, ", ", 2);
  sub_10003C2E4(v7, "coarseApParams=", 15);
  if ((*(a2 + 496) & 2) != 0)
  {
    sub_100136AEC((a2 + 32));
    if (SHIBYTE(v62) >= 0)
    {
      v8 = &__p;
    }

    else
    {
      v8 = __p;
    }

    if (SHIBYTE(v62) >= 0)
    {
      v9 = HIBYTE(v62);
    }

    else
    {
      v9 = v61;
    }

    sub_10003C2E4(a1, v8, v9);
    if (SHIBYTE(v62) < 0)
    {
      operator delete(__p);
    }
  }

  else
  {
    sub_10003C2E4(a1, "<null>", 6);
  }

  v10 = sub_10003C2E4(a1, ", ", 2);
  v11 = sub_10003C2E4(v10, "antennaMin=", 11);
  memset(&v59, 0, sizeof(v59));
  if ((sub_1000DE4DC((a2 + 56), &v59) & 1) == 0)
  {
    std::bad_cast::bad_cast(&__p);
    __p = &off_100434090;
    sub_100049F88(&__p);
  }

  if ((v59.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v12 = &v59;
  }

  else
  {
    v12 = v59.__r_.__value_.__r.__words[0];
  }

  if ((v59.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v59.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v59.__r_.__value_.__l.__size_;
  }

  sub_10003C2E4(v11, v12, size);
  if (SHIBYTE(v59.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v59.__r_.__value_.__l.__data_);
  }

  v14 = sub_10003C2E4(a1, ", ", 2);
  v15 = sub_10003C2E4(v14, "globalDbm=", 10);
  memset(&v59, 0, sizeof(v59));
  if ((sub_100138FC8(a2 + 64, &v59) & 1) == 0)
  {
    std::bad_cast::bad_cast(&__p);
    __p = &off_100434090;
    sub_100049F88(&__p);
  }

  if ((v59.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v16 = &v59;
  }

  else
  {
    v16 = v59.__r_.__value_.__r.__words[0];
  }

  if ((v59.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v17 = HIBYTE(v59.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v17 = v59.__r_.__value_.__l.__size_;
  }

  sub_10003C2E4(v15, v16, v17);
  if (SHIBYTE(v59.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v59.__r_.__value_.__l.__data_);
  }

  v18 = sub_10003C2E4(a1, ", ", 2);
  sub_10003C2E4(v18, "mapCellLookupMode=", 18);
  if ((*(a2 + 496) & 0x10) != 0)
  {
    memset(&v59, 0, sizeof(v59));
    if ((sub_100139238((a2 + 128), &v59) & 1) == 0)
    {
      std::bad_cast::bad_cast(&__p);
      __p = &off_100434090;
      sub_100049F88(&__p);
    }

    if ((v59.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v19 = &v59;
    }

    else
    {
      v19 = v59.__r_.__value_.__r.__words[0];
    }

    if ((v59.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v20 = HIBYTE(v59.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v20 = v59.__r_.__value_.__l.__size_;
    }

    sub_10003C2E4(a1, v19, v20);
    if (SHIBYTE(v59.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v59.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    sub_10003C2E4(a1, "<null>", 6);
  }

  v21 = sub_10003C2E4(a1, ", ", 2);
  v22 = sub_10003C2E4(v21, "coordinateFrame=", 16);
  memset(&v59, 0, sizeof(v59));
  if ((sub_100137F28(a2 + 136, &v59) & 1) == 0)
  {
    std::bad_cast::bad_cast(&__p);
    __p = &off_100434090;
    sub_100049F88(&__p);
  }

  if ((v59.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v23 = &v59;
  }

  else
  {
    v23 = v59.__r_.__value_.__r.__words[0];
  }

  if ((v59.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v24 = HIBYTE(v59.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v24 = v59.__r_.__value_.__l.__size_;
  }

  sub_10003C2E4(v22, v23, v24);
  if (SHIBYTE(v59.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v59.__r_.__value_.__l.__data_);
  }

  v25 = sub_10003C2E4(a1, ", ", 2);
  sub_10003C2E4(v25, "wifi2GpsFusionAccuracyThreshold=", 32);
  if ((*(a2 + 496) & 0x40) != 0)
  {
    memset(&v59, 0, sizeof(v59));
    if ((sub_1000DE4DC((a2 + 232), &v59) & 1) == 0)
    {
      std::bad_cast::bad_cast(&__p);
      __p = &off_100434090;
      sub_100049F88(&__p);
    }

    if ((v59.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v26 = &v59;
    }

    else
    {
      v26 = v59.__r_.__value_.__r.__words[0];
    }

    if ((v59.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v27 = HIBYTE(v59.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v27 = v59.__r_.__value_.__l.__size_;
    }

    sub_10003C2E4(a1, v26, v27);
    if (SHIBYTE(v59.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v59.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    sub_10003C2E4(a1, "<null>", 6);
  }

  v28 = sub_10003C2E4(a1, ", ", 2);
  sub_10003C2E4(v28, "wifi2GpsInjectionParticleFraction=", 34);
  if ((*(a2 + 496) & 0x80) != 0)
  {
    memset(&v59, 0, sizeof(v59));
    if ((sub_1000DE4DC((a2 + 240), &v59) & 1) == 0)
    {
      std::bad_cast::bad_cast(&__p);
      __p = &off_100434090;
      sub_100049F88(&__p);
    }

    if ((v59.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v29 = &v59;
    }

    else
    {
      v29 = v59.__r_.__value_.__r.__words[0];
    }

    if ((v59.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v30 = HIBYTE(v59.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v30 = v59.__r_.__value_.__l.__size_;
    }

    sub_10003C2E4(a1, v29, v30);
    if (SHIBYTE(v59.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v59.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    sub_10003C2E4(a1, "<null>", 6);
  }

  v31 = sub_10003C2E4(a1, ", ", 2);
  sub_10003C2E4(v31, "gpsAccuracyTransform=", 21);
  if ((*(a2 + 496) & 0x100) != 0)
  {
    memset(&v59, 0, sizeof(v59));
    if ((sub_1001394A8(a2 + 248, &v59) & 1) == 0)
    {
      std::bad_cast::bad_cast(&__p);
      __p = &off_100434090;
      sub_100049F88(&__p);
    }

    if ((v59.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v32 = &v59;
    }

    else
    {
      v32 = v59.__r_.__value_.__r.__words[0];
    }

    if ((v59.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v33 = HIBYTE(v59.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v33 = v59.__r_.__value_.__l.__size_;
    }

    sub_10003C2E4(a1, v32, v33);
    if (SHIBYTE(v59.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v59.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    sub_10003C2E4(a1, "<null>", 6);
  }

  v34 = sub_10003C2E4(a1, ", ", 2);
  sub_10003C2E4(v34, "gpsAzimuthTransform=", 20);
  if ((*(a2 + 496) & 0x200) != 0)
  {
    memset(&v59, 0, sizeof(v59));
    if ((sub_1001394A8(a2 + 296, &v59) & 1) == 0)
    {
      std::bad_cast::bad_cast(&__p);
      __p = &off_100434090;
      sub_100049F88(&__p);
    }

    if ((v59.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v35 = &v59;
    }

    else
    {
      v35 = v59.__r_.__value_.__r.__words[0];
    }

    if ((v59.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v36 = HIBYTE(v59.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v36 = v59.__r_.__value_.__l.__size_;
    }

    sub_10003C2E4(a1, v35, v36);
    if (SHIBYTE(v59.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v59.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    sub_10003C2E4(a1, "<null>", 6);
  }

  v37 = sub_10003C2E4(a1, ", ", 2);
  sub_10003C2E4(v37, "DEPRECATED_macAddresses=", 24);
  if ((*(a2 + 496) & 0x400) != 0)
  {
    sub_1000E4840(a2 + 344);
    if (SHIBYTE(v62) >= 0)
    {
      v38 = &__p;
    }

    else
    {
      v38 = __p;
    }

    if (SHIBYTE(v62) >= 0)
    {
      v39 = HIBYTE(v62);
    }

    else
    {
      v39 = v61;
    }

    sub_10003C2E4(a1, v38, v39);
    if (SHIBYTE(v62) < 0)
    {
      operator delete(__p);
    }
  }

  else
  {
    sub_10003C2E4(a1, "<null>", 6);
  }

  v40 = sub_10003C2E4(a1, ", ", 2);
  sub_10003C2E4(v40, "DEPRECATED_globalVariance=", 26);
  if ((*(a2 + 496) & 0x800) != 0)
  {
    memset(&v59, 0, sizeof(v59));
    if ((sub_1000DE4DC((a2 + 368), &v59) & 1) == 0)
    {
      std::bad_cast::bad_cast(&__p);
      __p = &off_100434090;
      sub_100049F88(&__p);
    }

    if ((v59.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v41 = &v59;
    }

    else
    {
      v41 = v59.__r_.__value_.__r.__words[0];
    }

    if ((v59.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v42 = HIBYTE(v59.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v42 = v59.__r_.__value_.__l.__size_;
    }

    sub_10003C2E4(a1, v41, v42);
    if (SHIBYTE(v59.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v59.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    sub_10003C2E4(a1, "<null>", 6);
  }

  v43 = sub_10003C2E4(a1, ", ", 2);
  sub_10003C2E4(v43, "DEPRECATED_globalMean=", 22);
  if ((*(a2 + 496) & 0x1000) != 0)
  {
    memset(&v59, 0, sizeof(v59));
    if ((sub_1000DE4DC((a2 + 376), &v59) & 1) == 0)
    {
      std::bad_cast::bad_cast(&__p);
      __p = &off_100434090;
      sub_100049F88(&__p);
    }

    if ((v59.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v44 = &v59;
    }

    else
    {
      v44 = v59.__r_.__value_.__r.__words[0];
    }

    if ((v59.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v45 = HIBYTE(v59.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v45 = v59.__r_.__value_.__l.__size_;
    }

    sub_10003C2E4(a1, v44, v45);
    if (SHIBYTE(v59.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v59.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    sub_10003C2E4(a1, "<null>", 6);
  }

  v46 = sub_10003C2E4(a1, ", ", 2);
  sub_10003C2E4(v46, "DEPRECATED_bottomLeft=", 22);
  if ((*(a2 + 496) & 0x2000) != 0)
  {
    memset(&v59, 0, sizeof(v59));
    if ((sub_100127E40(a2 + 384, &v59) & 1) == 0)
    {
      std::bad_cast::bad_cast(&__p);
      __p = &off_100434090;
      sub_100049F88(&__p);
    }

    if ((v59.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v47 = &v59;
    }

    else
    {
      v47 = v59.__r_.__value_.__r.__words[0];
    }

    if ((v59.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v48 = HIBYTE(v59.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v48 = v59.__r_.__value_.__l.__size_;
    }

    sub_10003C2E4(a1, v47, v48);
    if (SHIBYTE(v59.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v59.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    sub_10003C2E4(a1, "<null>", 6);
  }

  v49 = sub_10003C2E4(a1, ", ", 2);
  sub_10003C2E4(v49, "DEPRECATED_topRight=", 20);
  if ((*(a2 + 496) & 0x4000) != 0)
  {
    memset(&v59, 0, sizeof(v59));
    if ((sub_100127E40(a2 + 416, &v59) & 1) == 0)
    {
      std::bad_cast::bad_cast(&__p);
      __p = &off_100434090;
      sub_100049F88(&__p);
    }

    if ((v59.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v50 = &v59;
    }

    else
    {
      v50 = v59.__r_.__value_.__r.__words[0];
    }

    if ((v59.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v51 = HIBYTE(v59.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v51 = v59.__r_.__value_.__l.__size_;
    }

    sub_10003C2E4(a1, v50, v51);
    if (SHIBYTE(v59.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v59.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    sub_10003C2E4(a1, "<null>", 6);
  }

  v52 = sub_10003C2E4(a1, ", ", 2);
  sub_10003C2E4(v52, "DEPRECATED_normalizedMutualInformation=", 39);
  if (*(a2 + 496) < 0)
  {
    sub_10011A274(a2 + 448);
    if (SHIBYTE(v62) >= 0)
    {
      v53 = &__p;
    }

    else
    {
      v53 = __p;
    }

    if (SHIBYTE(v62) >= 0)
    {
      v54 = HIBYTE(v62);
    }

    else
    {
      v54 = v61;
    }

    sub_10003C2E4(a1, v53, v54);
    if (SHIBYTE(v62) < 0)
    {
      operator delete(__p);
    }
  }

  else
  {
    sub_10003C2E4(a1, "<null>", 6);
  }

  v55 = sub_10003C2E4(a1, ", ", 2);
  sub_10003C2E4(v55, "DEPRECATED_overlappingCellCount=", 32);
  if (*(a2 + 498))
  {
    sub_100133188(a2 + 472);
    if (SHIBYTE(v62) >= 0)
    {
      v56 = &__p;
    }

    else
    {
      v56 = __p;
    }

    if (SHIBYTE(v62) >= 0)
    {
      v57 = HIBYTE(v62);
    }

    else
    {
      v57 = v61;
    }

    sub_10003C2E4(a1, v56, v57);
    if (SHIBYTE(v62) < 0)
    {
      operator delete(__p);
    }
  }

  else
  {
    sub_10003C2E4(a1, "<null>", 6);
  }

  sub_10003C2E4(a1, ")", 1);
  return a1;
}

void sub_100136810(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1001368E8(uint64_t *a1)
{
  sub_10003BFA8(&v12);
  v2 = sub_10003C2E4(&v12, "[", 1);
  v3 = *a1;
  v8 = a1[1];
  v9 = v3;
  sub_100138868(&v9, &v8);
  if ((v11 & 0x80u) == 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  if ((v11 & 0x80u) == 0)
  {
    v5 = v11;
  }

  else
  {
    v5 = __p[1];
  }

  v6 = sub_10003C2E4(v2, v4, v5);
  sub_10003C2E4(v6, "]", 1);
  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  std::stringbuf::str();
  if (v15 < 0)
  {
    operator delete(v14[7].__locale_);
  }

  std::locale::~locale(v14);
  std::ostream::~ostream();
  return std::ios::~ios();
}

void sub_100136AA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_10003C1C4(va);
  _Unwind_Resume(a1);
}

void sub_100136AB4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17)
{
  if (a16 < 0)
  {
    operator delete(__p);
    sub_10003C1C4(&a17);
    _Unwind_Resume(a1);
  }

  sub_10003C1C4(&a17);
  _Unwind_Resume(a1);
}

uint64_t sub_100136AEC(uint64_t *a1)
{
  sub_10003BFA8(&v12);
  v2 = sub_10003C2E4(&v12, "[", 1);
  v3 = *a1;
  v8 = a1[1];
  v9 = v3;
  sub_100138AEC(&v9, &v8);
  if ((v11 & 0x80u) == 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  if ((v11 & 0x80u) == 0)
  {
    v5 = v11;
  }

  else
  {
    v5 = __p[1];
  }

  v6 = sub_10003C2E4(v2, v4, v5);
  sub_10003C2E4(v6, "]", 1);
  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  std::stringbuf::str();
  if (v15 < 0)
  {
    operator delete(v14[7].__locale_);
  }

  std::locale::~locale(v14);
  std::ostream::~ostream();
  return std::ios::~ios();
}

void sub_100136CA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_10003C1C4(va);
  _Unwind_Resume(a1);
}

void sub_100136CB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17)
{
  if (a16 < 0)
  {
    operator delete(__p);
    sub_10003C1C4(&a17);
    _Unwind_Resume(a1);
  }

  sub_10003C1C4(&a17);
  _Unwind_Resume(a1);
}

void sub_100136CF0(uint64_t a1, char *a2)
{
  if (a2)
  {
    sub_100136CF0(a1, *a2);
    sub_100136CF0(a1, *(a2 + 1));
    if (a2[55] < 0)
    {
      operator delete(*(a2 + 4));
      v4 = a2;
    }

    else
    {
      v4 = a2;
    }

    operator delete(v4);
  }
}

char *sub_100136D74(char **a1, char *a2, uint64_t a3, unint64_t a4)
{
  v6 = a1[2];
  result = *a1;
  if (a4 > (v6 - result) >> 2)
  {
    if (result)
    {
      a1[1] = result;
      v8 = a4;
      operator delete(result);
      a4 = v8;
      v6 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    if (!(a4 >> 62))
    {
      v9 = v6 >> 1;
      if (v6 >> 1 <= a4)
      {
        v9 = a4;
      }

      v10 = v6 >= 0x7FFFFFFFFFFFFFFCLL;
      v11 = 0x3FFFFFFFFFFFFFFFLL;
      if (!v10)
      {
        v11 = v9;
      }

      if (!(v11 >> 62))
      {
        operator new();
      }
    }

    sub_10000FC84();
  }

  v12 = a1[1];
  v13 = v12 - result;
  if (a4 <= (v12 - result) >> 2)
  {
    v16 = a3 - a2;
    if (v16)
    {
      v17 = result;
      memmove(result, a2, v16);
      result = v17;
    }

    a1[1] = &result[v16];
  }

  else
  {
    v14 = &a2[v13];
    if (v12 != result)
    {
      result = memmove(result, a2, v13);
      v12 = a1[1];
    }

    v15 = a3 - v14;
    if (v15)
    {
      result = memmove(v12, v14, v15);
    }

    a1[1] = &v12[v15];
  }

  return result;
}

void sub_100136ED0(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (a2 <= (v3 - v4) >> 2)
  {
    if (a2)
    {
      v10 = 4 * a2;
      bzero(*(a1 + 8), 4 * a2);
      v4 += v10;
    }

    *(a1 + 8) = v4;
  }

  else
  {
    v5 = *a1;
    v6 = v4 - *a1;
    v7 = (v6 >> 2) + a2;
    if (v7 >> 62)
    {
      sub_10000FC84();
    }

    v8 = v3 - v5;
    if (v8 >> 1 > v7)
    {
      v7 = v8 >> 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v9 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      if (!(v9 >> 62))
      {
        operator new();
      }

      sub_10000D444();
    }

    v11 = (4 * (v6 >> 2));
    v12 = 4 * a2;
    bzero(v11, 4 * a2);
    memcpy(0, v5, v6);
    *a1 = 0;
    *(a1 + 8) = &v11[v12];
    *(a1 + 16) = 0;
    if (v5)
    {

      operator delete(v5);
    }
  }
}

uint64_t sub_100137024(int **a1, int **a2)
{
  sub_10003BFA8(&v9);
  for (i = *a1; i != *a2; ++i)
  {
    if (i != *a1)
    {
      sub_10003C2E4(&v9, ", ", 2);
    }

    sub_1000E18F8(i, &__p);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = __p.__r_.__value_.__l.__size_;
    }

    sub_10003C2E4(&v9, p_p, size);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  std::stringbuf::str();
  if (v12 < 0)
  {
    operator delete(v11[7].__locale_);
  }

  std::locale::~locale(v11);
  std::ostream::~ostream();
  return std::ios::~ios();
}

void sub_100137208(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_10003C1C4(va);
  _Unwind_Resume(a1);
}

void sub_100137224(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_10003C1C4(&a15);
  _Unwind_Resume(a1);
}

void sub_100137248(void *a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a1;
  if (!a1[2])
  {
    goto LABEL_66;
  }

  v6 = *a1;
  v8 = (a1 + 1);
  v7 = a1[1];
  *a1 = a1 + 1;
  *(v7 + 16) = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (*(v6 + 1))
  {
    v9 = *(v6 + 1);
  }

  else
  {
    v9 = v6;
  }

  v37 = a1;
  v39 = v9;
  if (!v9)
  {
    v13 = 0;
    goto LABEL_65;
  }

  v10 = *(v9 + 2);
  if (v10)
  {
    v11 = *v10;
    if (*v10 == v9)
    {
      *v10 = 0;
      while (1)
      {
        v36 = *(v10 + 1);
        if (!v36)
        {
          break;
        }

        do
        {
          v10 = v36;
          v36 = *v36;
        }

        while (v36);
      }
    }

    else
    {
      for (*(v10 + 1) = 0; v11; v11 = *(v10 + 1))
      {
        do
        {
          v10 = v11;
          v11 = *v11;
        }

        while (v11);
      }
    }
  }

  v38 = v10;
  if (a2 == a3)
  {
    v12 = a1;
    sub_100136CF0(a1, v9);
    if (v10)
    {
      goto LABEL_62;
    }

    goto LABEL_66;
  }

  v14 = a2;
  do
  {
    std::string::operator=((v9 + 32), (v14 + 4));
    *(v9 + 8) = v14[8];
    *(v9 + 18) = *(v14 + 18);
    v9[76] = *(v14 + 76);
    *(v9 + 10) = v14[10];
    v9[88] = *(v14 + 88);
    *(v9 + 23) = *(v14 + 23);
    v9[96] = *(v14 + 96);
    v15 = *v8;
    v16 = (v5 + 1);
    v17 = (v5 + 1);
    if (!*v8)
    {
LABEL_37:
      *v39 = 0;
      *(v39 + 1) = 0;
      *(v39 + 2) = v16;
      *v17 = v39;
      v30 = **v5;
      if (!v30)
      {
        goto LABEL_39;
      }

LABEL_38:
      *v5 = v30;
      goto LABEL_39;
    }

    v18 = v39[55];
    if (v18 >= 0)
    {
      v19 = v39[55];
    }

    else
    {
      v19 = *(v39 + 5);
    }

    if (v18 >= 0)
    {
      v20 = v39 + 32;
    }

    else
    {
      v20 = *(v39 + 4);
    }

    do
    {
      while (1)
      {
        v16 = v15;
        v23 = *(v15 + 4);
        v21 = v15 + 32;
        v22 = v23;
        v24 = *(v21 + 23);
        if (v24 >= 0)
        {
          v25 = *(v21 + 23);
        }

        else
        {
          v25 = v21[1];
        }

        if (v24 >= 0)
        {
          v26 = v21;
        }

        else
        {
          v26 = v22;
        }

        if (v25 >= v19)
        {
          v27 = v19;
        }

        else
        {
          v27 = v25;
        }

        v28 = memcmp(v20, v26, v27);
        v29 = v19 < v25;
        if (v28)
        {
          v29 = v28 < 0;
        }

        if (!v29)
        {
          break;
        }

        v15 = *v16;
        v17 = v16;
        if (!*v16)
        {
          goto LABEL_37;
        }
      }

      v15 = v16[1];
    }

    while (v15);
    *v39 = 0;
    *(v39 + 1) = 0;
    *(v39 + 2) = v16;
    v16[1] = v39;
    v30 = **v5;
    if (v30)
    {
      goto LABEL_38;
    }

LABEL_39:
    sub_10002764C(v5[1], v39);
    ++v5[2];
    v9 = v38;
    v39 = v38;
    if (v38)
    {
      v10 = *(v38 + 2);
      if (v10)
      {
        v31 = *v10;
        if (*v10 == v38)
        {
          *v10 = 0;
          while (1)
          {
            v34 = *(v10 + 1);
            if (!v34)
            {
              break;
            }

            do
            {
              v10 = v34;
              v34 = *v34;
            }

            while (v34);
          }
        }

        else
        {
          for (*(v10 + 1) = 0; v31; v31 = *(v10 + 1))
          {
            do
            {
              v10 = v31;
              v31 = *v31;
            }

            while (v31);
          }
        }
      }

      v38 = v10;
      v32 = v14[1];
      if (!v32)
      {
        do
        {
LABEL_50:
          v4 = v14[2];
          v33 = *v4 == v14;
          v14 = v4;
        }

        while (!v33);
        goto LABEL_52;
      }
    }

    else
    {
      v10 = 0;
      v32 = v14[1];
      if (!v32)
      {
        goto LABEL_50;
      }
    }

    do
    {
      v4 = v32;
      v32 = *v32;
    }

    while (v32);
LABEL_52:
    if (!v9)
    {
      break;
    }

    v14 = v4;
  }

  while (v4 != a3);
  v12 = v37;
  sub_100136CF0(v37, v9);
  if (v10)
  {
LABEL_62:
    for (i = *(v10 + 2); i; i = *(i + 2))
    {
      v10 = i;
    }

    a1 = v12;
    v13 = v10;
LABEL_65:
    sub_100136CF0(a1, v13);
  }

LABEL_66:
  if (v4 != a3)
  {
    sub_100137620();
  }
}

void sub_1001375B4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1001375C8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1001375C8(uint64_t a1)
{
  sub_100136CF0(*a1, *(a1 + 16));
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = *(v2 + 16);
    if (v3)
    {
      do
      {
        v2 = v3;
        v3 = *(v3 + 16);
      }

      while (v3);
      *(a1 + 8) = v2;
    }

    sub_100136CF0(*a1, v2);
  }

  return a1;
}

void sub_1001377EC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100137800(va);
  _Unwind_Resume(a1);
}

void *sub_100137800(void *a1)
{
  v1 = a1;
  v2 = *a1;
  *v1 = 0;
  if (v2)
  {
    v3 = v1;
    if (*(v1 + 16) == 1 && *(v2 + 55) < 0)
    {
      v4 = v2;
      operator delete(*(v2 + 32));
      v2 = v4;
    }

    operator delete(v2);
    return v3;
  }

  return v1;
}

void *sub_100137868(uint64_t a1, const void **a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_25:
    operator new();
  }

  v3 = *(a2 + 23);
  if (v3 >= 0)
  {
    v4 = *(a2 + 23);
  }

  else
  {
    v4 = a2[1];
  }

  if (v3 >= 0)
  {
    v5 = a2;
  }

  else
  {
    v5 = *a2;
  }

  while (1)
  {
    while (1)
    {
      v6 = v2;
      v9 = v2[4];
      v7 = v2 + 4;
      v8 = v9;
      v10 = *(v7 + 23);
      if (v10 >= 0)
      {
        v11 = *(v7 + 23);
      }

      else
      {
        v11 = v7[1];
      }

      if (v10 >= 0)
      {
        v12 = v7;
      }

      else
      {
        v12 = v8;
      }

      if (v11 >= v4)
      {
        v13 = v4;
      }

      else
      {
        v13 = v11;
      }

      v14 = memcmp(v5, v12, v13);
      v15 = v4 < v11;
      if (v14)
      {
        v15 = v14 < 0;
      }

      if (!v15)
      {
        break;
      }

      v2 = *v6;
      if (!*v6)
      {
        goto LABEL_25;
      }
    }

    v16 = memcmp(v12, v5, v13);
    v17 = v11 < v4;
    if (v16)
    {
      v17 = v16 < 0;
    }

    if (!v17)
    {
      return v6;
    }

    v2 = v6[1];
    if (!v2)
    {
      goto LABEL_25;
    }
  }
}

void sub_100137A4C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100137800(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100137A60(unsigned int *a1, std::string *a2)
{
  sub_1000D2150(&v26);
  v4 = (v29 + *(v29[0] - 24));
  v4->__exceptions_ = 1;
  std::ios_base::clear(v4, v4->__rdstate_);
  v5 = *a1;
  v6 = std::ostream::operator<<();
  v7 = *(v6 + *(*v6 - 24) + 32);
  v8 = *(&v29[5] + *(v29[0] - 24));
  v10 = *(v8 + 40);
  v9 = *(v8 + 48);
  v29[21] = v10;
  v29[22] = v9;
  if ((v7 & 5) == 0)
  {
    v12 = &v9[-v10];
    size = SHIBYTE(a2->__r_.__value_.__r.__words[2]);
    if ((size & 0x8000000000000000) != 0)
    {
      v16 = a2->__r_.__value_.__r.__words[2];
      v15 = (v16 & 0x7FFFFFFFFFFFFFFFLL) - 1;
      if (v15 >= v12)
      {
        v17 = HIBYTE(v16);
LABEL_10:
        if ((v17 & 0x80u) == 0)
        {
          v14 = a2;
        }

        else
        {
          v14 = a2->__r_.__value_.__r.__words[0];
        }

LABEL_13:
        if (v10 == v9)
        {
          v18 = v14;
          goto LABEL_23;
        }

        if (v12 < 0x20 || v14 - v10 < 0x20)
        {
          v18 = v14;
          v19 = v10;
        }

        else
        {
          v18 = (v14 + (v12 & 0xFFFFFFFFFFFFFFE0));
          v19 = (v10 + (v12 & 0xFFFFFFFFFFFFFFE0));
          v20 = (v10 + 16);
          v21 = &v14->__r_.__value_.__r.__words[2];
          v22 = v12 & 0xFFFFFFFFFFFFFFE0;
          do
          {
            v23 = *v20;
            *(v21 - 1) = *(v20 - 1);
            *v21 = v23;
            v20 += 2;
            v21 += 4;
            v22 -= 32;
          }

          while (v22);
          if (v12 == (v12 & 0xFFFFFFFFFFFFFFE0))
          {
LABEL_23:
            v18->__r_.__value_.__s.__data_[0] = 0;
            if (SHIBYTE(a2->__r_.__value_.__r.__words[2]) < 0)
            {
              a2->__r_.__value_.__l.__size_ = v12;
            }

            else
            {
              *(&a2->__r_.__value_.__s + 23) = v12 & 0x7F;
            }

            v11 = 1;
            goto LABEL_27;
          }
        }

        do
        {
          v24 = *v19++;
          v18->__r_.__value_.__s.__data_[0] = v24;
          v18 = (v18 + 1);
        }

        while (v19 != v9);
        goto LABEL_23;
      }

      size = a2->__r_.__value_.__l.__size_;
    }

    else
    {
      v14 = a2;
      if (v12 <= 0x16)
      {
        goto LABEL_13;
      }

      v15 = 22;
    }

    std::string::__grow_by(a2, v15, v12 - v15, size, 0, size, 0);
    a2->__r_.__value_.__l.__size_ = 0;
    LOBYTE(v17) = *(&a2->__r_.__value_.__s + 23);
    goto LABEL_10;
  }

  v11 = 0;
LABEL_27:
  std::ostream::~ostream();
  if (v28 < 0)
  {
    operator delete(v27[7].__locale_);
  }

  std::locale::~locale(v27);
  return v11;
}

uint64_t sub_100137CD0(uint64_t a1, std::string *a2)
{
  sub_1000D2150(&v25);
  v4 = (v28 + *(v28[0] - 24));
  v4->__exceptions_ = 1;
  std::ios_base::clear(v4, v4->__rdstate_);
  sub_1001352E4(v28, a1);
  v5 = v28 + *(v28[0] - 24);
  v6 = *(v5 + 8);
  v7 = *(v5 + 5);
  v9 = *(v7 + 40);
  v8 = *(v7 + 48);
  v28[21] = v9;
  v28[22] = v8;
  if ((v6 & 5) == 0)
  {
    v11 = &v8[-v9];
    size = SHIBYTE(a2->__r_.__value_.__r.__words[2]);
    if ((size & 0x8000000000000000) != 0)
    {
      v15 = a2->__r_.__value_.__r.__words[2];
      v14 = (v15 & 0x7FFFFFFFFFFFFFFFLL) - 1;
      if (v14 >= v11)
      {
        v16 = HIBYTE(v15);
LABEL_10:
        if ((v16 & 0x80u) == 0)
        {
          v13 = a2;
        }

        else
        {
          v13 = a2->__r_.__value_.__r.__words[0];
        }

LABEL_13:
        if (v9 == v8)
        {
          v17 = v13;
          goto LABEL_23;
        }

        if (v11 < 0x20 || v13 - v9 < 0x20)
        {
          v17 = v13;
          v18 = v9;
        }

        else
        {
          v17 = (v13 + (v11 & 0xFFFFFFFFFFFFFFE0));
          v18 = (v9 + (v11 & 0xFFFFFFFFFFFFFFE0));
          v19 = (v9 + 16);
          v20 = &v13->__r_.__value_.__r.__words[2];
          v21 = v11 & 0xFFFFFFFFFFFFFFE0;
          do
          {
            v22 = *v19;
            *(v20 - 1) = *(v19 - 1);
            *v20 = v22;
            v19 += 2;
            v20 += 4;
            v21 -= 32;
          }

          while (v21);
          if (v11 == (v11 & 0xFFFFFFFFFFFFFFE0))
          {
LABEL_23:
            v17->__r_.__value_.__s.__data_[0] = 0;
            if (SHIBYTE(a2->__r_.__value_.__r.__words[2]) < 0)
            {
              a2->__r_.__value_.__l.__size_ = v11;
            }

            else
            {
              *(&a2->__r_.__value_.__s + 23) = v11 & 0x7F;
            }

            v10 = 1;
            goto LABEL_27;
          }
        }

        do
        {
          v23 = *v18++;
          v17->__r_.__value_.__s.__data_[0] = v23;
          v17 = (v17 + 1);
        }

        while (v18 != v8);
        goto LABEL_23;
      }

      size = a2->__r_.__value_.__l.__size_;
    }

    else
    {
      v13 = a2;
      if (v11 <= 0x16)
      {
        goto LABEL_13;
      }

      v14 = 22;
    }

    std::string::__grow_by(a2, v14, v11 - v14, size, 0, size, 0);
    a2->__r_.__value_.__l.__size_ = 0;
    LOBYTE(v16) = *(&a2->__r_.__value_.__s + 23);
    goto LABEL_10;
  }

  v10 = 0;
LABEL_27:
  std::ostream::~ostream();
  if (v27 < 0)
  {
    operator delete(v26[7].__locale_);
  }

  std::locale::~locale(v26);
  return v10;
}

uint64_t sub_100137F28(uint64_t a1, std::string *a2)
{
  sub_1000D2150(&v25);
  v4 = (v28 + *(v28[0] - 24));
  v4->__exceptions_ = 1;
  std::ios_base::clear(v4, v4->__rdstate_);
  v5 = sub_10012E2C0(v28, a1);
  v6 = *(v5 + *(*v5 - 24) + 32);
  v7 = *(&v28[5] + *(v28[0] - 24));
  v9 = *(v7 + 40);
  v8 = *(v7 + 48);
  v28[21] = v9;
  v28[22] = v8;
  if ((v6 & 5) == 0)
  {
    v11 = &v8[-v9];
    size = SHIBYTE(a2->__r_.__value_.__r.__words[2]);
    if ((size & 0x8000000000000000) != 0)
    {
      v15 = a2->__r_.__value_.__r.__words[2];
      v14 = (v15 & 0x7FFFFFFFFFFFFFFFLL) - 1;
      if (v14 >= v11)
      {
        v16 = HIBYTE(v15);
LABEL_10:
        if ((v16 & 0x80u) == 0)
        {
          v13 = a2;
        }

        else
        {
          v13 = a2->__r_.__value_.__r.__words[0];
        }

LABEL_13:
        if (v9 == v8)
        {
          v17 = v13;
          goto LABEL_23;
        }

        if (v11 < 0x20 || v13 - v9 < 0x20)
        {
          v17 = v13;
          v18 = v9;
        }

        else
        {
          v17 = (v13 + (v11 & 0xFFFFFFFFFFFFFFE0));
          v18 = (v9 + (v11 & 0xFFFFFFFFFFFFFFE0));
          v19 = (v9 + 16);
          v20 = &v13->__r_.__value_.__r.__words[2];
          v21 = v11 & 0xFFFFFFFFFFFFFFE0;
          do
          {
            v22 = *v19;
            *(v20 - 1) = *(v19 - 1);
            *v20 = v22;
            v19 += 2;
            v20 += 4;
            v21 -= 32;
          }

          while (v21);
          if (v11 == (v11 & 0xFFFFFFFFFFFFFFE0))
          {
LABEL_23:
            v17->__r_.__value_.__s.__data_[0] = 0;
            if (SHIBYTE(a2->__r_.__value_.__r.__words[2]) < 0)
            {
              a2->__r_.__value_.__l.__size_ = v11;
            }

            else
            {
              *(&a2->__r_.__value_.__s + 23) = v11 & 0x7F;
            }

            v10 = 1;
            goto LABEL_27;
          }
        }

        do
        {
          v23 = *v18++;
          v17->__r_.__value_.__s.__data_[0] = v23;
          v17 = (v17 + 1);
        }

        while (v18 != v8);
        goto LABEL_23;
      }

      size = a2->__r_.__value_.__l.__size_;
    }

    else
    {
      v13 = a2;
      if (v11 <= 0x16)
      {
        goto LABEL_13;
      }

      v14 = 22;
    }

    std::string::__grow_by(a2, v14, v11 - v14, size, 0, size, 0);
    a2->__r_.__value_.__l.__size_ = 0;
    LOBYTE(v16) = *(&a2->__r_.__value_.__s + 23);
    goto LABEL_10;
  }

  v10 = 0;
LABEL_27:
  std::ostream::~ostream();
  if (v27 < 0)
  {
    operator delete(v26[7].__locale_);
  }

  std::locale::~locale(v26);
  return v10;
}

std::string *sub_100138198(std::string *result, uint64_t a2, const std::string *a3, unint64_t a4)
{
  v5 = result;
  v6 = result->__r_.__value_.__r.__words[2];
  v7 = result->__r_.__value_.__r.__words[0];
  if (0xCCCCCCCCCCCCCCCDLL * ((v6 - result->__r_.__value_.__r.__words[0]) >> 3) < a4)
  {
    if (v7)
    {
      v8 = a4;
      size = result->__r_.__value_.__l.__size_;
      v10 = result->__r_.__value_.__r.__words[0];
      if (size != v7)
      {
        v11 = size - 40;
        v12 = (size - 40);
        v13 = (size - 40);
        do
        {
          v14 = *v13;
          v13 -= 40;
          (*v14)(v12);
          v11 -= 40;
          v15 = v12 == v7;
          v12 = v13;
        }

        while (!v15);
        v10 = v5->__r_.__value_.__r.__words[0];
      }

      v5->__r_.__value_.__l.__size_ = v7;
      operator delete(v10);
      v6 = 0;
      v5->__r_.__value_.__r.__words[0] = 0;
      v5->__r_.__value_.__l.__size_ = 0;
      v5->__r_.__value_.__r.__words[2] = 0;
      a4 = v8;
    }

    if (a4 <= 0x666666666666666)
    {
      v16 = 0xCCCCCCCCCCCCCCCDLL * (v6 >> 3);
      v17 = 2 * v16;
      if (2 * v16 <= a4)
      {
        v17 = a4;
      }

      if (v16 >= 0x333333333333333)
      {
        v18 = 0x666666666666666;
      }

      else
      {
        v18 = v17;
      }

      if (v18 <= 0x666666666666666)
      {
        operator new();
      }
    }

    sub_10000FC84();
  }

  v19 = result->__r_.__value_.__l.__size_;
  v20 = v19 - v7;
  if (0xCCCCCCCCCCCCCCCDLL * ((v19 - v7) >> 3) >= a4)
  {
    if (a2 != a3)
    {
      v27 = (v7 + 16);
      v28 = (a2 + 16);
      do
      {
        LODWORD(v27[-1].__r_.__value_.__r.__words[2]) = v28[-1].__r_.__value_.__r.__words[2];
        result = std::string::operator=(v27, v28);
        v27 = (v27 + 40);
        v29 = v28 + 1;
        v28 = (v28 + 40);
      }

      while (v29 != a3);
      v19 = v5->__r_.__value_.__l.__size_;
      v7 = &v27[-1].__r_.__value_.__s.__data_[8];
    }

    if (v19 != v7)
    {
      v30 = v19 - 40;
      v31 = (v19 - 40);
      v32 = (v19 - 40);
      do
      {
        v33 = *v32;
        v32 -= 40;
        result = (*v33)(v31);
        v30 -= 40;
        v15 = v31 == v7;
        v31 = v32;
      }

      while (!v15);
    }

    v5->__r_.__value_.__l.__size_ = v7;
  }

  else
  {
    v21 = (a2 + v20);
    if (v19 != v7)
    {
      v22 = (v7 + 16);
      v23 = (a2 + 16);
      do
      {
        LODWORD(v22[-1].__r_.__value_.__r.__words[2]) = v23[-1].__r_.__value_.__r.__words[2];
        result = std::string::operator=(v22, v23);
        v22 = (v22 + 40);
        v23 = (v23 + 40);
        v20 -= 40;
      }

      while (v20);
      v19 = v5->__r_.__value_.__l.__size_;
    }

    v24 = v19;
    if (v21 != a3)
    {
      v25 = 0;
      do
      {
        v26 = v19 + v25;
        *v26 = off_10043DD18;
        *(v26 + 24) = 0;
        *(v26 + 32) = 0;
        *(v19 + v25 + 16) = 0;
        *(v26 + 8) = v21->__r_.__value_.__r.__words[v25 / 8 + 1];
        result = std::string::operator=((v19 + v25 + 16), &v21->__r_.__value_.__r.__words[v25 / 8 + 2]);
        v25 += 40;
      }

      while ((v21 + v25) != a3);
      v24 = v19 + v25;
    }

    v5->__r_.__value_.__l.__size_ = v24;
  }

  return result;
}

void sub_1001384D4(_Unwind_Exception *a1)
{
  if (*(v2 + 39) < 0)
  {
    operator delete(*(v2 + 16));
  }

  sub_100383FE4(v2, v3, (v1 + 8));
  _Unwind_Resume(a1);
}

void sub_100138500(_Unwind_Exception *a1)
{
  if (*(v3 + 39) < 0)
  {
    operator delete(*(v3 + 16));
  }

  sub_100383FE4(v3, v2, (v1 + 8));
  _Unwind_Resume(a1);
}

void **sub_10013852C(void **result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = result;
  v5 = result[2];
  v6 = *result;
  if (0xCCCCCCCCCCCCCCCDLL * ((v5 - *result) >> 3) < a4)
  {
    if (v6)
    {
      v7 = a4;
      v8 = result[1];
      v9 = *result;
      if (v8 != v6)
      {
        v10 = v8 - 40;
        v11 = v8 - 40;
        v12 = v8 - 40;
        do
        {
          v13 = *v12;
          v12 -= 40;
          (*v13)(v11);
          v10 -= 40;
          v14 = v11 == v6;
          v11 = v12;
        }

        while (!v14);
        v9 = *v4;
      }

      v4[1] = v6;
      operator delete(v9);
      v5 = 0;
      *v4 = 0;
      v4[1] = 0;
      v4[2] = 0;
      a4 = v7;
    }

    if (a4 <= 0x666666666666666)
    {
      v15 = 0xCCCCCCCCCCCCCCCDLL * (v5 >> 3);
      v16 = 2 * v15;
      if (2 * v15 <= a4)
      {
        v16 = a4;
      }

      if (v15 >= 0x333333333333333)
      {
        v17 = 0x666666666666666;
      }

      else
      {
        v17 = v16;
      }

      if (v17 <= 0x666666666666666)
      {
        operator new();
      }
    }

    sub_10000FC84();
  }

  v18 = result[1];
  v19 = v18 - v6;
  if (0xCCCCCCCCCCCCCCCDLL * ((v18 - v6) >> 3) >= a4)
  {
    if (a2 != a3)
    {
      v26 = 0;
      do
      {
        v27 = &v6[v26];
        *(v27 + 8) = *(a2 + v26 + 8);
        *(v27 + 3) = *(a2 + v26 + 24);
        v27[32] = *(a2 + v26 + 32);
        v26 += 40;
      }

      while (a2 + v26 != a3);
      v18 = result[1];
      v6 += v26;
    }

    if (v18 != v6)
    {
      v28 = v18 - 40;
      v29 = v18 - 40;
      v30 = v18 - 40;
      do
      {
        v31 = *v30;
        v30 -= 40;
        result = (*v31)(v29);
        v28 -= 40;
        v14 = v29 == v6;
        v29 = v30;
      }

      while (!v14);
    }

    v4[1] = v6;
  }

  else
  {
    v20 = a2 + v19;
    if (v18 != v6)
    {
      v21 = 0;
      do
      {
        v22 = &v6[v21];
        *(v22 + 8) = *(a2 + v21 + 8);
        *(v22 + 3) = *(a2 + v21 + 24);
        v22[32] = *(a2 + v21 + 32);
        v21 += 40;
      }

      while (v19 != v21);
      v18 = result[1];
    }

    v23 = v18;
    if (v20 != a3)
    {
      v24 = 0;
      do
      {
        v25 = &v18[v24];
        *v25 = off_10043DD38;
        v25[32] = v18[v24 + 32] | 0xF;
        *(v25 + 8) = *(v20 + v24 + 8);
        *(v25 + 3) = *(v20 + v24 + 24);
        v25[32] = *(v20 + v24 + 32);
        v24 += 40;
      }

      while (v20 + v24 != a3);
      v23 = &v18[v24];
    }

    result[1] = v23;
  }

  return result;
}

uint64_t sub_100138868(uint64_t *a1, void *a2)
{
  sub_10003BFA8(&v10);
  for (i = *a1; i != *a2; i += 40)
  {
    if (i != *a1)
    {
      sub_10003C2E4(&v10, ", ", 2);
    }

    memset(&__p, 0, sizeof(__p));
    if ((sub_100137CD0(i, &__p) & 1) == 0)
    {
      v8 = std::bad_cast::bad_cast(&v14);
      v14.__vftable = &off_100434090;
      sub_100049F88(v8);
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = __p.__r_.__value_.__l.__size_;
    }

    sub_10003C2E4(&v10, p_p, size);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  std::stringbuf::str();
  if (v13 < 0)
  {
    operator delete(v12[7].__locale_);
  }

  std::locale::~locale(v12);
  std::ostream::~ostream();
  return std::ios::~ios();
}

void sub_100138A9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_10003C1C4(va);
  _Unwind_Resume(a1);
}

void sub_100138AB4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_10003C1C4(&a16);
  _Unwind_Resume(a1);
}

uint64_t sub_100138AEC(uint64_t *a1, void *a2)
{
  sub_10003BFA8(&v10);
  for (i = *a1; i != *a2; i += 40)
  {
    if (i != *a1)
    {
      sub_10003C2E4(&v10, ", ", 2);
    }

    memset(&__p, 0, sizeof(__p));
    if ((sub_100138D70(i, &__p) & 1) == 0)
    {
      v8 = std::bad_cast::bad_cast(&v14);
      v14.__vftable = &off_100434090;
      sub_100049F88(v8);
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = __p.__r_.__value_.__l.__size_;
    }

    sub_10003C2E4(&v10, p_p, size);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  std::stringbuf::str();
  if (v13 < 0)
  {
    operator delete(v12[7].__locale_);
  }

  std::locale::~locale(v12);
  std::ostream::~ostream();
  return std::ios::~ios();
}

void sub_100138D20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_10003C1C4(va);
  _Unwind_Resume(a1);
}

void sub_100138D38(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_10003C1C4(&a16);
  _Unwind_Resume(a1);
}

uint64_t sub_100138D70(uint64_t a1, std::string *a2)
{
  sub_1000D2150(&v25);
  v4 = (v28 + *(v28[0] - 24));
  v4->__exceptions_ = 1;
  std::ios_base::clear(v4, v4->__rdstate_);
  sub_1001354C8(v28, a1);
  v5 = v28 + *(v28[0] - 24);
  v6 = *(v5 + 8);
  v7 = *(v5 + 5);
  v9 = *(v7 + 40);
  v8 = *(v7 + 48);
  v28[21] = v9;
  v28[22] = v8;
  if ((v6 & 5) == 0)
  {
    v11 = &v8[-v9];
    size = SHIBYTE(a2->__r_.__value_.__r.__words[2]);
    if ((size & 0x8000000000000000) != 0)
    {
      v15 = a2->__r_.__value_.__r.__words[2];
      v14 = (v15 & 0x7FFFFFFFFFFFFFFFLL) - 1;
      if (v14 >= v11)
      {
        v16 = HIBYTE(v15);
LABEL_10:
        if ((v16 & 0x80u) == 0)
        {
          v13 = a2;
        }

        else
        {
          v13 = a2->__r_.__value_.__r.__words[0];
        }

LABEL_13:
        if (v9 == v8)
        {
          v17 = v13;
          goto LABEL_23;
        }

        if (v11 < 0x20 || v13 - v9 < 0x20)
        {
          v17 = v13;
          v18 = v9;
        }

        else
        {
          v17 = (v13 + (v11 & 0xFFFFFFFFFFFFFFE0));
          v18 = (v9 + (v11 & 0xFFFFFFFFFFFFFFE0));
          v19 = (v9 + 16);
          v20 = &v13->__r_.__value_.__r.__words[2];
          v21 = v11 & 0xFFFFFFFFFFFFFFE0;
          do
          {
            v22 = *v19;
            *(v20 - 1) = *(v19 - 1);
            *v20 = v22;
            v19 += 2;
            v20 += 4;
            v21 -= 32;
          }

          while (v21);
          if (v11 == (v11 & 0xFFFFFFFFFFFFFFE0))
          {
LABEL_23:
            v17->__r_.__value_.__s.__data_[0] = 0;
            if (SHIBYTE(a2->__r_.__value_.__r.__words[2]) < 0)
            {
              a2->__r_.__value_.__l.__size_ = v11;
            }

            else
            {
              *(&a2->__r_.__value_.__s + 23) = v11 & 0x7F;
            }

            v10 = 1;
            goto LABEL_27;
          }
        }

        do
        {
          v23 = *v18++;
          v17->__r_.__value_.__s.__data_[0] = v23;
          v17 = (v17 + 1);
        }

        while (v18 != v8);
        goto LABEL_23;
      }

      size = a2->__r_.__value_.__l.__size_;
    }

    else
    {
      v13 = a2;
      if (v11 <= 0x16)
      {
        goto LABEL_13;
      }

      v14 = 22;
    }

    std::string::__grow_by(a2, v14, v11 - v14, size, 0, size, 0);
    a2->__r_.__value_.__l.__size_ = 0;
    LOBYTE(v16) = *(&a2->__r_.__value_.__s + 23);
    goto LABEL_10;
  }

  v10 = 0;
LABEL_27:
  std::ostream::~ostream();
  if (v27 < 0)
  {
    operator delete(v26[7].__locale_);
  }

  std::locale::~locale(v26);
  return v10;
}

uint64_t sub_100138FC8(uint64_t a1, std::string *a2)
{
  sub_1000D2150(&v25);
  v4 = (v28 + *(v28[0] - 24));
  v4->__exceptions_ = 1;
  std::ios_base::clear(v4, v4->__rdstate_);
  v5 = sub_10012C77C(v28, a1);
  v6 = *(v5 + *(*v5 - 24) + 32);
  v7 = *(&v28[5] + *(v28[0] - 24));
  v9 = *(v7 + 40);
  v8 = *(v7 + 48);
  v28[21] = v9;
  v28[22] = v8;
  if ((v6 & 5) == 0)
  {
    v11 = &v8[-v9];
    size = SHIBYTE(a2->__r_.__value_.__r.__words[2]);
    if ((size & 0x8000000000000000) != 0)
    {
      v15 = a2->__r_.__value_.__r.__words[2];
      v14 = (v15 & 0x7FFFFFFFFFFFFFFFLL) - 1;
      if (v14 >= v11)
      {
        v16 = HIBYTE(v15);
LABEL_10:
        if ((v16 & 0x80u) == 0)
        {
          v13 = a2;
        }

        else
        {
          v13 = a2->__r_.__value_.__r.__words[0];
        }

LABEL_13:
        if (v9 == v8)
        {
          v17 = v13;
          goto LABEL_23;
        }

        if (v11 < 0x20 || v13 - v9 < 0x20)
        {
          v17 = v13;
          v18 = v9;
        }

        else
        {
          v17 = (v13 + (v11 & 0xFFFFFFFFFFFFFFE0));
          v18 = (v9 + (v11 & 0xFFFFFFFFFFFFFFE0));
          v19 = (v9 + 16);
          v20 = &v13->__r_.__value_.__r.__words[2];
          v21 = v11 & 0xFFFFFFFFFFFFFFE0;
          do
          {
            v22 = *v19;
            *(v20 - 1) = *(v19 - 1);
            *v20 = v22;
            v19 += 2;
            v20 += 4;
            v21 -= 32;
          }

          while (v21);
          if (v11 == (v11 & 0xFFFFFFFFFFFFFFE0))
          {
LABEL_23:
            v17->__r_.__value_.__s.__data_[0] = 0;
            if (SHIBYTE(a2->__r_.__value_.__r.__words[2]) < 0)
            {
              a2->__r_.__value_.__l.__size_ = v11;
            }

            else
            {
              *(&a2->__r_.__value_.__s + 23) = v11 & 0x7F;
            }

            v10 = 1;
            goto LABEL_27;
          }
        }

        do
        {
          v23 = *v18++;
          v17->__r_.__value_.__s.__data_[0] = v23;
          v17 = (v17 + 1);
        }

        while (v18 != v8);
        goto LABEL_23;
      }

      size = a2->__r_.__value_.__l.__size_;
    }

    else
    {
      v13 = a2;
      if (v11 <= 0x16)
      {
        goto LABEL_13;
      }

      v14 = 22;
    }

    std::string::__grow_by(a2, v14, v11 - v14, size, 0, size, 0);
    a2->__r_.__value_.__l.__size_ = 0;
    LOBYTE(v16) = *(&a2->__r_.__value_.__s + 23);
    goto LABEL_10;
  }

  v10 = 0;
LABEL_27:
  std::ostream::~ostream();
  if (v27 < 0)
  {
    operator delete(v26[7].__locale_);
  }

  std::locale::~locale(v26);
  return v10;
}

uint64_t sub_100139238(unsigned int *a1, std::string *a2)
{
  sub_1000D2150(&v26);
  v4 = (v29 + *(v29[0] - 24));
  v4->__exceptions_ = 1;
  std::ios_base::clear(v4, v4->__rdstate_);
  v5 = *a1;
  v6 = std::ostream::operator<<();
  v7 = *(v6 + *(*v6 - 24) + 32);
  v8 = *(&v29[5] + *(v29[0] - 24));
  v10 = *(v8 + 40);
  v9 = *(v8 + 48);
  v29[21] = v10;
  v29[22] = v9;
  if ((v7 & 5) == 0)
  {
    v12 = &v9[-v10];
    size = SHIBYTE(a2->__r_.__value_.__r.__words[2]);
    if ((size & 0x8000000000000000) != 0)
    {
      v16 = a2->__r_.__value_.__r.__words[2];
      v15 = (v16 & 0x7FFFFFFFFFFFFFFFLL) - 1;
      if (v15 >= v12)
      {
        v17 = HIBYTE(v16);
LABEL_10:
        if ((v17 & 0x80u) == 0)
        {
          v14 = a2;
        }

        else
        {
          v14 = a2->__r_.__value_.__r.__words[0];
        }

LABEL_13:
        if (v10 == v9)
        {
          v18 = v14;
          goto LABEL_23;
        }

        if (v12 < 0x20 || v14 - v10 < 0x20)
        {
          v18 = v14;
          v19 = v10;
        }

        else
        {
          v18 = (v14 + (v12 & 0xFFFFFFFFFFFFFFE0));
          v19 = (v10 + (v12 & 0xFFFFFFFFFFFFFFE0));
          v20 = (v10 + 16);
          v21 = &v14->__r_.__value_.__r.__words[2];
          v22 = v12 & 0xFFFFFFFFFFFFFFE0;
          do
          {
            v23 = *v20;
            *(v21 - 1) = *(v20 - 1);
            *v21 = v23;
            v20 += 2;
            v21 += 4;
            v22 -= 32;
          }

          while (v22);
          if (v12 == (v12 & 0xFFFFFFFFFFFFFFE0))
          {
LABEL_23:
            v18->__r_.__value_.__s.__data_[0] = 0;
            if (SHIBYTE(a2->__r_.__value_.__r.__words[2]) < 0)
            {
              a2->__r_.__value_.__l.__size_ = v12;
            }

            else
            {
              *(&a2->__r_.__value_.__s + 23) = v12 & 0x7F;
            }

            v11 = 1;
            goto LABEL_27;
          }
        }

        do
        {
          v24 = *v19++;
          v18->__r_.__value_.__s.__data_[0] = v24;
          v18 = (v18 + 1);
        }

        while (v19 != v9);
        goto LABEL_23;
      }

      size = a2->__r_.__value_.__l.__size_;
    }

    else
    {
      v14 = a2;
      if (v12 <= 0x16)
      {
        goto LABEL_13;
      }

      v15 = 22;
    }

    std::string::__grow_by(a2, v15, v12 - v15, size, 0, size, 0);
    a2->__r_.__value_.__l.__size_ = 0;
    LOBYTE(v17) = *(&a2->__r_.__value_.__s + 23);
    goto LABEL_10;
  }

  v11 = 0;
LABEL_27:
  std::ostream::~ostream();
  if (v28 < 0)
  {
    operator delete(v27[7].__locale_);
  }

  std::locale::~locale(v27);
  return v11;
}

uint64_t sub_1001394A8(uint64_t a1, std::string *a2)
{
  sub_1000D2150(&v25);
  v4 = (v28 + *(v28[0] - 24));
  v4->__exceptions_ = 1;
  std::ios_base::clear(v4, v4->__rdstate_);
  v5 = sub_10012CD08(v28, a1);
  v6 = *(v5 + *(*v5 - 24) + 32);
  v7 = *(&v28[5] + *(v28[0] - 24));
  v9 = *(v7 + 40);
  v8 = *(v7 + 48);
  v28[21] = v9;
  v28[22] = v8;
  if ((v6 & 5) == 0)
  {
    v11 = &v8[-v9];
    size = SHIBYTE(a2->__r_.__value_.__r.__words[2]);
    if ((size & 0x8000000000000000) != 0)
    {
      v15 = a2->__r_.__value_.__r.__words[2];
      v14 = (v15 & 0x7FFFFFFFFFFFFFFFLL) - 1;
      if (v14 >= v11)
      {
        v16 = HIBYTE(v15);
LABEL_10:
        if ((v16 & 0x80u) == 0)
        {
          v13 = a2;
        }

        else
        {
          v13 = a2->__r_.__value_.__r.__words[0];
        }

LABEL_13:
        if (v9 == v8)
        {
          v17 = v13;
          goto LABEL_23;
        }

        if (v11 < 0x20 || v13 - v9 < 0x20)
        {
          v17 = v13;
          v18 = v9;
        }

        else
        {
          v17 = (v13 + (v11 & 0xFFFFFFFFFFFFFFE0));
          v18 = (v9 + (v11 & 0xFFFFFFFFFFFFFFE0));
          v19 = (v9 + 16);
          v20 = &v13->__r_.__value_.__r.__words[2];
          v21 = v11 & 0xFFFFFFFFFFFFFFE0;
          do
          {
            v22 = *v19;
            *(v20 - 1) = *(v19 - 1);
            *v20 = v22;
            v19 += 2;
            v20 += 4;
            v21 -= 32;
          }

          while (v21);
          if (v11 == (v11 & 0xFFFFFFFFFFFFFFE0))
          {
LABEL_23:
            v17->__r_.__value_.__s.__data_[0] = 0;
            if (SHIBYTE(a2->__r_.__value_.__r.__words[2]) < 0)
            {
              a2->__r_.__value_.__l.__size_ = v11;
            }

            else
            {
              *(&a2->__r_.__value_.__s + 23) = v11 & 0x7F;
            }

            v10 = 1;
            goto LABEL_27;
          }
        }

        do
        {
          v23 = *v18++;
          v17->__r_.__value_.__s.__data_[0] = v23;
          v17 = (v17 + 1);
        }

        while (v18 != v8);
        goto LABEL_23;
      }

      size = a2->__r_.__value_.__l.__size_;
    }

    else
    {
      v13 = a2;
      if (v11 <= 0x16)
      {
        goto LABEL_13;
      }

      v14 = 22;
    }

    std::string::__grow_by(a2, v14, v11 - v14, size, 0, size, 0);
    a2->__r_.__value_.__l.__size_ = 0;
    LOBYTE(v16) = *(&a2->__r_.__value_.__s + 23);
    goto LABEL_10;
  }

  v10 = 0;
LABEL_27:
  std::ostream::~ostream();
  if (v27 < 0)
  {
    operator delete(v26[7].__locale_);
  }

  std::locale::~locale(v26);
  return v10;
}

uint64_t sub_100139718()
{
  v1 = &_mh_execute_header;
  v2 = &unk_10045BA50;
  v3 = &off_10045BA58;
  sub_1000E10E0(qword_10045E110, &v1);
  __cxa_atexit(sub_1000E1214, qword_10045E110, &_mh_execute_header);
  v1 = 0x400000000;
  v2 = &unk_10045BA60;
  v3 = off_10045BA70;
  sub_1000E10E0(qword_10045E128, &v1);
  __cxa_atexit(sub_1000E1214, qword_10045E128, &_mh_execute_header);
  v1 = 0x300000000;
  v2 = &unk_10045BA90;
  v3 = off_10045BAA0;
  sub_1000E10E0(qword_10045E140, &v1);
  __cxa_atexit(sub_1000E1214, qword_10045E140, &_mh_execute_header);
  v1 = 0x200000000;
  v2 = &unk_10045BAB8;
  v3 = off_10045BAC0;
  sub_1000E10E0(qword_10045E158, &v1);
  __cxa_atexit(sub_1000E1214, qword_10045E158, &_mh_execute_header);
  v1 = 0x600000000;
  v2 = &unk_10045BAD0;
  v3 = off_10045BAE8;
  sub_1000E10E0(qword_10045E170, &v1);
  __cxa_atexit(sub_1000E1214, qword_10045E170, &_mh_execute_header);
  v1 = 0x400000000;
  v2 = &unk_10045BB18;
  v3 = off_10045BB28;
  sub_1000E10E0(qword_10045E188, &v1);
  __cxa_atexit(sub_1000E1214, qword_10045E188, &_mh_execute_header);
  v1 = 0x300000000;
  v2 = &unk_10045BB48;
  v3 = off_10045BB58;
  sub_1000E10E0(qword_10045E1A0, &v1);
  __cxa_atexit(sub_1000E1214, qword_10045E1A0, &_mh_execute_header);
  v1 = 0x200000000;
  v2 = &unk_10045BB70;
  v3 = off_10045BB78;
  sub_1000E10E0(qword_10045E1B8, &v1);
  return __cxa_atexit(sub_1000E1214, qword_10045E1B8, &_mh_execute_header);
}

uint64_t sub_1001399F8(uint64_t result)
{
  *result = off_10043DE28;
  if (*(result + 39) < 0)
  {
    v1 = result;
    operator delete(*(result + 16));
    return v1;
  }

  return result;
}

void sub_100139A54(uint64_t a1)
{
  *a1 = off_10043DE28;
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  operator delete();
}

uint64_t sub_100139AE8(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = *(a2 + 8);
  std::string::operator=((a1 + 16), (a2 + 16));
  *(a1 + 40) = *(a2 + 40);
  return a1;
}

void *sub_100139B2C(void *a1, uint64_t a2)
{
  sub_10003C2E4(a1, "ImageMetadata(", 14);
  v4 = sub_10003C2E4(a1, "width=", 6);
  sub_1000E18F8((a2 + 8), &__p);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  sub_10003C2E4(v4, p_p, size);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v7 = sub_10003C2E4(a1, ", ", 2);
  v8 = sub_10003C2E4(v7, "height=", 7);
  sub_1000E18F8((a2 + 12), &__p);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v9 = &__p;
  }

  else
  {
    v9 = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v10 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v10 = __p.__r_.__value_.__l.__size_;
  }

  sub_10003C2E4(v8, v9, v10);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v11 = sub_10003C2E4(a1, ", ", 2);
  v12 = sub_10003C2E4(v11, "id=", 3);
  memset(&__p, 0, sizeof(__p));
  std::string::operator=(&__p, (a2 + 16));
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v13 = &__p;
  }

  else
  {
    v13 = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v14 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v14 = __p.__r_.__value_.__l.__size_;
  }

  sub_10003C2E4(v12, v13, v14);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  sub_10003C2E4(a1, ")", 1);
  return a1;
}

void sub_100139CB8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100139CE0(uint64_t a1)
{
  *a1 = off_10043DE48;
  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
  }

  v2 = *(a1 + 8);
  if (v2)
  {
    *(a1 + 16) = v2;
    operator delete(v2);
  }

  return a1;
}

void sub_100139D40(uint64_t a1)
{
  *a1 = off_10043DE48;
  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
  }

  v2 = *(a1 + 8);
  if (v2)
  {
    *(a1 + 16) = v2;
    operator delete(v2);
  }

  operator delete();
}

uint64_t sub_100139DC0(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    sub_10011DD68((a1 + 8), *(a2 + 8), *(a2 + 16), (*(a2 + 16) - *(a2 + 8)) >> 3);
  }

  *(a1 + 32) = *(a2 + 32);
  std::string::operator=((a1 + 48), (a2 + 48));
  *(a1 + 72) = *(a2 + 72);
  return a1;
}

void *sub_100139E20(void *a1, uint64_t a2)
{
  sub_10003C2E4(a1, "TileMetadata(", 13);
  v4 = sub_10003C2E4(a1, "zoomFactor=", 11);
  sub_10011A274(a2 + 8);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  sub_10003C2E4(v4, p_p, size);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v7 = sub_10003C2E4(a1, ", ", 2);
  v8 = sub_10003C2E4(v7, "tileWidth=", 10);
  sub_1000E18F8((a2 + 32), &__p);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v9 = &__p;
  }

  else
  {
    v9 = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v10 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v10 = __p.__r_.__value_.__l.__size_;
  }

  sub_10003C2E4(v8, v9, v10);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v11 = sub_10003C2E4(a1, ", ", 2);
  v12 = sub_10003C2E4(v11, "tileHeight=", 11);
  sub_1000E18F8((a2 + 36), &__p);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v13 = &__p;
  }

  else
  {
    v13 = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v14 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v14 = __p.__r_.__value_.__l.__size_;
  }

  sub_10003C2E4(v12, v13, v14);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v15 = sub_10003C2E4(a1, ", ", 2);
  v16 = sub_10003C2E4(v15, "tiledImageWidth=", 16);
  sub_1000E18F8((a2 + 40), &__p);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v17 = &__p;
  }

  else
  {
    v17 = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v18 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v18 = __p.__r_.__value_.__l.__size_;
  }

  sub_10003C2E4(v16, v17, v18);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v19 = sub_10003C2E4(a1, ", ", 2);
  v20 = sub_10003C2E4(v19, "tiledImageHeight=", 17);
  sub_1000E18F8((a2 + 44), &__p);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v21 = &__p;
  }

  else
  {
    v21 = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v22 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v22 = __p.__r_.__value_.__l.__size_;
  }

  sub_10003C2E4(v20, v21, v22);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v23 = sub_10003C2E4(a1, ", ", 2);
  v24 = sub_10003C2E4(v23, "tileImageFormat=", 16);
  memset(&__p, 0, sizeof(__p));
  std::string::operator=(&__p, (a2 + 48));
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v25 = &__p;
  }

  else
  {
    v25 = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v26 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v26 = __p.__r_.__value_.__l.__size_;
  }

  sub_10003C2E4(v24, v25, v26);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  sub_10003C2E4(a1, ")", 1);
  return a1;
}

void sub_10013A0E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10013A118(uint64_t a1)
{
  *a1 = off_10043DE88;
  if (*(a1 + 375) < 0)
  {
    operator delete(*(a1 + 352));
  }

  sub_1001399F8(a1 + 304);
  nullsub_76(a1 + 272);
  nullsub_76(a1 + 240);
  sub_100139CE0(a1 + 128);
  nullsub_77(a1 + 56);
  sub_1001399F8(a1 + 8);
  return a1;
}

void sub_10013A198(uint64_t a1)
{
  *a1 = off_10043DE88;
  if (*(a1 + 375) < 0)
  {
    operator delete(*(a1 + 352));
  }

  sub_1001399F8(a1 + 304);
  nullsub_76(a1 + 272);
  nullsub_76(a1 + 240);
  sub_100139CE0(a1 + 128);
  nullsub_77(a1 + 56);
  sub_1001399F8(a1 + 8);

  operator delete();
}

uint64_t sub_10013A238(uint64_t a1, uint64_t a2)
{
  sub_100139AE8(a1 + 8, a2 + 8);
  sub_10012DDB8(a1 + 56, a2 + 56);
  sub_100139DC0(a1 + 128, a2 + 128);
  *(a1 + 208) = *(a2 + 208);
  *(a1 + 224) = *(a2 + 224);
  *(a1 + 232) = *(a2 + 232);
  sub_10012A358(a1 + 240, a2 + 240);
  sub_10012A358(a1 + 272, a2 + 272);
  sub_100139AE8(a1 + 304, a2 + 304);
  std::string::operator=((a1 + 352), (a2 + 352));
  *(a1 + 376) = *(a2 + 376);
  return a1;
}

void *sub_10013A2D4(void *a1, uint64_t a2)
{
  sub_10003C2E4(a1, "PlanogramData(", 14);
  v4 = sub_10003C2E4(a1, "DEPRECATED_image=", 17);
  memset(&__p, 0, sizeof(__p));
  if ((sub_10013AF64(a2 + 8, &__p) & 1) == 0)
  {
    std::bad_cast::bad_cast(&v46);
    v46.__r_.__value_.__r.__words[0] = &off_100434090;
    sub_100049F88(&v46);
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  sub_10003C2E4(v4, p_p, size);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v7 = sub_10003C2E4(a1, ", ", 2);
  v8 = sub_10003C2E4(v7, "transform=", 10);
  memset(&__p, 0, sizeof(__p));
  if ((sub_100128394(a2 + 56, &__p) & 1) == 0)
  {
    std::bad_cast::bad_cast(&v46);
    v46.__r_.__value_.__r.__words[0] = &off_100434090;
    sub_100049F88(&v46);
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v9 = &__p;
  }

  else
  {
    v9 = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v10 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v10 = __p.__r_.__value_.__l.__size_;
  }

  sub_10003C2E4(v8, v9, v10);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v11 = sub_10003C2E4(a1, ", ", 2);
  v12 = sub_10003C2E4(v11, "tiles=", 6);
  memset(&__p, 0, sizeof(__p));
  if ((sub_10013B1D4(a2 + 128, &__p) & 1) == 0)
  {
    std::bad_cast::bad_cast(&v46);
    v46.__r_.__value_.__r.__words[0] = &off_100434090;
    sub_100049F88(&v46);
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v13 = &__p;
  }

  else
  {
    v13 = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v14 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v14 = __p.__r_.__value_.__l.__size_;
  }

  sub_10003C2E4(v12, v13, v14);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v15 = sub_10003C2E4(a1, ", ", 2);
  v16 = sub_10003C2E4(v15, "tileOriginPixelOffsetX=", 23);
  memset(&__p, 0, sizeof(__p));
  if ((sub_1000DE4DC((a2 + 208), &__p) & 1) == 0)
  {
    std::bad_cast::bad_cast(&v46);
    v46.__r_.__value_.__r.__words[0] = &off_100434090;
    sub_100049F88(&v46);
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v17 = &__p;
  }

  else
  {
    v17 = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v18 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v18 = __p.__r_.__value_.__l.__size_;
  }

  sub_10003C2E4(v16, v17, v18);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v19 = sub_10003C2E4(a1, ", ", 2);
  v20 = sub_10003C2E4(v19, "tileOriginPixelOffsetY=", 23);
  memset(&__p, 0, sizeof(__p));
  if ((sub_1000DE4DC((a2 + 216), &__p) & 1) == 0)
  {
    std::bad_cast::bad_cast(&v46);
    v46.__r_.__value_.__r.__words[0] = &off_100434090;
    sub_100049F88(&v46);
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v21 = &__p;
  }

  else
  {
    v21 = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v22 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v22 = __p.__r_.__value_.__l.__size_;
  }

  sub_10003C2E4(v20, v21, v22);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v23 = sub_10003C2E4(a1, ", ", 2);
  v24 = sub_10003C2E4(v23, "tileScaleFactor=", 16);
  memset(&__p, 0, sizeof(__p));
  if ((sub_1000DE4DC((a2 + 224), &__p) & 1) == 0)
  {
    std::bad_cast::bad_cast(&v46);
    v46.__r_.__value_.__r.__words[0] = &off_100434090;
    sub_100049F88(&v46);
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v25 = &__p;
  }

  else
  {
    v25 = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v26 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v26 = __p.__r_.__value_.__l.__size_;
  }

  sub_10003C2E4(v24, v25, v26);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v27 = sub_10003C2E4(a1, ", ", 2);
  v28 = sub_10003C2E4(v27, "autoUpdateScale=", 16);
  memset(&v46, 0, sizeof(v46));
  if (*(a2 + 232))
  {
    v29 = 49;
  }

  else
  {
    v29 = 48;
  }

  v46.__r_.__value_.__s.__data_[0] = v29;
  *(&v46.__r_.__value_.__s + 23) = 1;
  sub_10003C2E4(v28, &v46, 1);
  if (SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v46.__r_.__value_.__l.__data_);
  }

  v30 = sub_10003C2E4(a1, ", ", 2);
  v31 = sub_10003C2E4(v30, "topLeftLatLon=", 14);
  memset(&__p, 0, sizeof(__p));
  if ((sub_10011FB6C(a2 + 240, &__p) & 1) == 0)
  {
    std::bad_cast::bad_cast(&v46);
    v46.__r_.__value_.__r.__words[0] = &off_100434090;
    sub_100049F88(&v46);
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v32 = &__p;
  }

  else
  {
    v32 = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v33 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v33 = __p.__r_.__value_.__l.__size_;
  }

  sub_10003C2E4(v31, v32, v33);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v34 = sub_10003C2E4(a1, ", ", 2);
  v35 = sub_10003C2E4(v34, "bottomRightLatLon=", 18);
  memset(&__p, 0, sizeof(__p));
  if ((sub_10011FB6C(a2 + 272, &__p) & 1) == 0)
  {
    std::bad_cast::bad_cast(&v46);
    v46.__r_.__value_.__r.__words[0] = &off_100434090;
    sub_100049F88(&v46);
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v36 = &__p;
  }

  else
  {
    v36 = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v37 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v37 = __p.__r_.__value_.__l.__size_;
  }

  sub_10003C2E4(v35, v36, v37);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v38 = sub_10003C2E4(a1, ", ", 2);
  sub_10003C2E4(v38, "unscaledImage=", 14);
  if ((*(a2 + 376) & 0x200) != 0)
  {
    memset(&__p, 0, sizeof(__p));
    if ((sub_10013AF64(a2 + 304, &__p) & 1) == 0)
    {
      std::bad_cast::bad_cast(&v46);
      v46.__r_.__value_.__r.__words[0] = &off_100434090;
      sub_100049F88(&v46);
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v39 = &__p;
    }

    else
    {
      v39 = __p.__r_.__value_.__r.__words[0];
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v40 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v40 = __p.__r_.__value_.__l.__size_;
    }

    sub_10003C2E4(a1, v39, v40);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    sub_10003C2E4(a1, "<null>", 6);
  }

  v41 = sub_10003C2E4(a1, ", ", 2);
  sub_10003C2E4(v41, "DEPRECATED_id=", 14);
  if ((*(a2 + 376) & 0x400) != 0)
  {
    memset(&v46, 0, sizeof(v46));
    std::string::operator=(&v46, (a2 + 352));
    if ((v46.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v42 = &v46;
    }

    else
    {
      v42 = v46.__r_.__value_.__r.__words[0];
    }

    if ((v46.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v43 = HIBYTE(v46.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v43 = v46.__r_.__value_.__l.__size_;
    }

    sub_10003C2E4(a1, v42, v43);
    if (SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v46.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    sub_10003C2E4(a1, "<null>", 6);
  }

  sub_10003C2E4(a1, ")", 1);
  return a1;
}

void sub_10013AAC8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10013AB80(uint64_t a1)
{
  *a1 = off_10043DEA8;
  if (*(a1 + 151) < 0)
  {
    operator delete(*(a1 + 128));
  }

  nullsub_77(a1 + 56);
  sub_1001399F8(a1 + 8);
  return a1;
}

void sub_10013ABE0(uint64_t a1)
{
  *a1 = off_10043DEA8;
  if (*(a1 + 151) < 0)
  {
    operator delete(*(a1 + 128));
  }

  nullsub_77(a1 + 56);
  sub_1001399F8(a1 + 8);

  operator delete();
}

uint64_t sub_10013AC60(uint64_t a1, uint64_t a2)
{
  sub_100139AE8(a1 + 8, a2 + 8);
  sub_10012DDB8(a1 + 56, a2 + 56);
  std::string::operator=((a1 + 128), (a2 + 128));
  *(a1 + 152) = *(a2 + 152);
  return a1;
}

void *sub_10013ACB4(void *a1, uint64_t a2)
{
  sub_10003C2E4(a1, "OccupancyData(", 14);
  v4 = sub_10003C2E4(a1, "image=", 6);
  memset(&__p, 0, sizeof(__p));
  if ((sub_10013AF64(a2 + 8, &__p) & 1) == 0)
  {
    std::bad_cast::bad_cast(&v16);
    v16.__r_.__value_.__r.__words[0] = &off_100434090;
    sub_100049F88(&v16);
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  sub_10003C2E4(v4, p_p, size);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v7 = sub_10003C2E4(a1, ", ", 2);
  v8 = sub_10003C2E4(v7, "transform=", 10);
  memset(&__p, 0, sizeof(__p));
  if ((sub_100128394(a2 + 56, &__p) & 1) == 0)
  {
    std::bad_cast::bad_cast(&v16);
    v16.__r_.__value_.__r.__words[0] = &off_100434090;
    sub_100049F88(&v16);
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v9 = &__p;
  }

  else
  {
    v9 = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v10 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v10 = __p.__r_.__value_.__l.__size_;
  }

  sub_10003C2E4(v8, v9, v10);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v11 = sub_10003C2E4(a1, ", ", 2);
  sub_10003C2E4(v11, "DEPRECATED_id=", 14);
  if ((*(a2 + 152) & 4) != 0)
  {
    memset(&v16, 0, sizeof(v16));
    std::string::operator=(&v16, (a2 + 128));
    if ((v16.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v12 = &v16;
    }

    else
    {
      v12 = v16.__r_.__value_.__r.__words[0];
    }

    if ((v16.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v13 = HIBYTE(v16.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v13 = v16.__r_.__value_.__l.__size_;
    }

    sub_10003C2E4(a1, v12, v13);
    if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v16.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    sub_10003C2E4(a1, "<null>", 6);
  }

  sub_10003C2E4(a1, ")", 1);
  return a1;
}

void sub_10013AF04(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10013AF64(uint64_t a1, std::string *a2)
{
  sub_1000D2150(&v25);
  v4 = (v28 + *(v28[0] - 24));
  v4->__exceptions_ = 1;
  std::ios_base::clear(v4, v4->__rdstate_);
  v5 = sub_100139B2C(v28, a1);
  v6 = *(v5 + *(*v5 - 24) + 32);
  v7 = *(&v28[5] + *(v28[0] - 24));
  v9 = *(v7 + 40);
  v8 = *(v7 + 48);
  v28[21] = v9;
  v28[22] = v8;
  if ((v6 & 5) == 0)
  {
    v11 = &v8[-v9];
    size = SHIBYTE(a2->__r_.__value_.__r.__words[2]);
    if ((size & 0x8000000000000000) != 0)
    {
      v15 = a2->__r_.__value_.__r.__words[2];
      v14 = (v15 & 0x7FFFFFFFFFFFFFFFLL) - 1;
      if (v14 >= v11)
      {
        v16 = HIBYTE(v15);
LABEL_10:
        if ((v16 & 0x80u) == 0)
        {
          v13 = a2;
        }

        else
        {
          v13 = a2->__r_.__value_.__r.__words[0];
        }

LABEL_13:
        if (v9 == v8)
        {
          v17 = v13;
          goto LABEL_23;
        }

        if (v11 < 0x20 || v13 - v9 < 0x20)
        {
          v17 = v13;
          v18 = v9;
        }

        else
        {
          v17 = (v13 + (v11 & 0xFFFFFFFFFFFFFFE0));
          v18 = (v9 + (v11 & 0xFFFFFFFFFFFFFFE0));
          v19 = (v9 + 16);
          v20 = &v13->__r_.__value_.__r.__words[2];
          v21 = v11 & 0xFFFFFFFFFFFFFFE0;
          do
          {
            v22 = *v19;
            *(v20 - 1) = *(v19 - 1);
            *v20 = v22;
            v19 += 2;
            v20 += 4;
            v21 -= 32;
          }

          while (v21);
          if (v11 == (v11 & 0xFFFFFFFFFFFFFFE0))
          {
LABEL_23:
            v17->__r_.__value_.__s.__data_[0] = 0;
            if (SHIBYTE(a2->__r_.__value_.__r.__words[2]) < 0)
            {
              a2->__r_.__value_.__l.__size_ = v11;
            }

            else
            {
              *(&a2->__r_.__value_.__s + 23) = v11 & 0x7F;
            }

            v10 = 1;
            goto LABEL_27;
          }
        }

        do
        {
          v23 = *v18++;
          v17->__r_.__value_.__s.__data_[0] = v23;
          v17 = (v17 + 1);
        }

        while (v18 != v8);
        goto LABEL_23;
      }

      size = a2->__r_.__value_.__l.__size_;
    }

    else
    {
      v13 = a2;
      if (v11 <= 0x16)
      {
        goto LABEL_13;
      }

      v14 = 22;
    }

    std::string::__grow_by(a2, v14, v11 - v14, size, 0, size, 0);
    a2->__r_.__value_.__l.__size_ = 0;
    LOBYTE(v16) = *(&a2->__r_.__value_.__s + 23);
    goto LABEL_10;
  }

  v10 = 0;
LABEL_27:
  std::ostream::~ostream();
  if (v27 < 0)
  {
    operator delete(v26[7].__locale_);
  }

  std::locale::~locale(v26);
  return v10;
}

uint64_t sub_10013B1D4(uint64_t a1, std::string *a2)
{
  sub_1000D2150(&v25);
  v4 = (v28 + *(v28[0] - 24));
  v4->__exceptions_ = 1;
  std::ios_base::clear(v4, v4->__rdstate_);
  v5 = sub_100139E20(v28, a1);
  v6 = *(v5 + *(*v5 - 24) + 32);
  v7 = *(&v28[5] + *(v28[0] - 24));
  v9 = *(v7 + 40);
  v8 = *(v7 + 48);
  v28[21] = v9;
  v28[22] = v8;
  if ((v6 & 5) == 0)
  {
    v11 = &v8[-v9];
    size = SHIBYTE(a2->__r_.__value_.__r.__words[2]);
    if ((size & 0x8000000000000000) != 0)
    {
      v15 = a2->__r_.__value_.__r.__words[2];
      v14 = (v15 & 0x7FFFFFFFFFFFFFFFLL) - 1;
      if (v14 >= v11)
      {
        v16 = HIBYTE(v15);
LABEL_10:
        if ((v16 & 0x80u) == 0)
        {
          v13 = a2;
        }

        else
        {
          v13 = a2->__r_.__value_.__r.__words[0];
        }

LABEL_13:
        if (v9 == v8)
        {
          v17 = v13;
          goto LABEL_23;
        }

        if (v11 < 0x20 || v13 - v9 < 0x20)
        {
          v17 = v13;
          v18 = v9;
        }

        else
        {
          v17 = (v13 + (v11 & 0xFFFFFFFFFFFFFFE0));
          v18 = (v9 + (v11 & 0xFFFFFFFFFFFFFFE0));
          v19 = (v9 + 16);
          v20 = &v13->__r_.__value_.__r.__words[2];
          v21 = v11 & 0xFFFFFFFFFFFFFFE0;
          do
          {
            v22 = *v19;
            *(v20 - 1) = *(v19 - 1);
            *v20 = v22;
            v19 += 2;
            v20 += 4;
            v21 -= 32;
          }

          while (v21);
          if (v11 == (v11 & 0xFFFFFFFFFFFFFFE0))
          {
LABEL_23:
            v17->__r_.__value_.__s.__data_[0] = 0;
            if (SHIBYTE(a2->__r_.__value_.__r.__words[2]) < 0)
            {
              a2->__r_.__value_.__l.__size_ = v11;
            }

            else
            {
              *(&a2->__r_.__value_.__s + 23) = v11 & 0x7F;
            }

            v10 = 1;
            goto LABEL_27;
          }
        }

        do
        {
          v23 = *v18++;
          v17->__r_.__value_.__s.__data_[0] = v23;
          v17 = (v17 + 1);
        }

        while (v18 != v8);
        goto LABEL_23;
      }

      size = a2->__r_.__value_.__l.__size_;
    }

    else
    {
      v13 = a2;
      if (v11 <= 0x16)
      {
        goto LABEL_13;
      }

      v14 = 22;
    }

    std::string::__grow_by(a2, v14, v11 - v14, size, 0, size, 0);
    a2->__r_.__value_.__l.__size_ = 0;
    LOBYTE(v16) = *(&a2->__r_.__value_.__s + 23);
    goto LABEL_10;
  }

  v10 = 0;
LABEL_27:
  std::ostream::~ostream();
  if (v27 < 0)
  {
    operator delete(v26[7].__locale_);
  }

  std::locale::~locale(v26);
  return v10;
}

uint64_t sub_10013B444(uint64_t a1, _DWORD *a2)
{
  v2 = a2[7];
  v3 = a2[6] + 1;
  a2[6] = v3;
  if (v2 < v3)
  {
    exception = __cxa_allocate_exception(0x28uLL);
    exception[2] = 0;
    exception[3] = 0;
    *exception = &off_100434888;
    exception[1] = 0;
    *(exception + 8) = 6;
  }

  v6 = (*(*a2 + 32))(a2, "CellData");
  v7 = (*(*a2 + 48))(a2, "celltype", 11, 1) + v6;
  v8 = (*(*a2 + 168))(a2, a1 + 8);
  v9 = v7 + v8 + (*(*a2 + 56))(a2);
  v10 = (*(*a2 + 48))(a2, "rat", 11, 2);
  v11 = v10 + (*(*a2 + 168))(a2, a1 + 32);
  v12 = v9 + v11 + (*(*a2 + 56))(a2);
  v13 = (*(*a2 + 48))(a2, "mcc", 8, 3);
  v14 = v13 + (*(*a2 + 144))(a2, *(a1 + 56));
  v15 = v14 + (*(*a2 + 56))(a2);
  v16 = v12 + v15 + (*(*a2 + 48))(a2, "mnc", 8, 4);
  v17 = (*(*a2 + 144))(a2, *(a1 + 60));
  v18 = v17 + (*(*a2 + 56))(a2);
  v19 = v18 + (*(*a2 + 48))(a2, "lac", 8, 5);
  v20 = v19 + (*(*a2 + 144))(a2, *(a1 + 64));
  v21 = v16 + v20 + (*(*a2 + 56))(a2);
  v22 = (*(*a2 + 48))(a2, "ci", 8, 6);
  v23 = v22 + (*(*a2 + 144))(a2, *(a1 + 68));
  v24 = v23 + (*(*a2 + 56))(a2);
  v25 = v24 + (*(*a2 + 48))(a2, "uarfcn", 8, 7);
  v26 = v25 + (*(*a2 + 144))(a2, *(a1 + 72));
  v27 = v21 + v26 + (*(*a2 + 56))(a2);
  v28 = (*(*a2 + 48))(a2, "psc", 8, 8);
  v29 = v28 + (*(*a2 + 144))(a2, *(a1 + 76));
  v30 = v29 + (*(*a2 + 56))(a2);
  v31 = v30 + (*(*a2 + 48))(a2, "rscp", 8, 9);
  v32 = v31 + (*(*a2 + 144))(a2, *(a1 + 80));
  v33 = v32 + (*(*a2 + 56))(a2);
  v34 = v27 + v33 + (*(*a2 + 48))(a2, "ecn0", 8, 10);
  v35 = (*(*a2 + 144))(a2, *(a1 + 84));
  v36 = v35 + (*(*a2 + 56))(a2);
  v37 = v36 + (*(*a2 + 48))(a2, "rssi", 8, 11);
  v38 = v37 + (*(*a2 + 144))(a2, *(a1 + 88));
  v39 = v38 + (*(*a2 + 56))(a2);
  v40 = v39 + (*(*a2 + 48))(a2, "tac", 8, 12);
  v41 = v40 + (*(*a2 + 144))(a2, *(a1 + 92));
  v42 = v34 + v41 + (*(*a2 + 56))(a2);
  v43 = (*(*a2 + 48))(a2, "pid", 8, 13);
  v44 = v43 + (*(*a2 + 144))(a2, *(a1 + 96));
  v45 = v44 + (*(*a2 + 56))(a2);
  v46 = v45 + (*(*a2 + 48))(a2, "band_info", 8, 14);
  v47 = v46 + (*(*a2 + 144))(a2, *(a1 + 100));
  v48 = v47 + (*(*a2 + 56))(a2);
  v49 = v48 + (*(*a2 + 48))(a2, "lat", 4, 15);
  v50 = v49 + (*(*a2 + 160))(a2, *(a1 + 104));
  v51 = v42 + v50 + (*(*a2 + 56))(a2);
  v52 = (*(*a2 + 48))(a2, "lon", 4, 16);
  v53 = v52 + (*(*a2 + 160))(a2, *(a1 + 112));
  v54 = v53 + (*(*a2 + 56))(a2);
  v55 = v54 + (*(*a2 + 48))(a2, "sid", 8, 17);
  v56 = v55 + (*(*a2 + 144))(a2, *(a1 + 120));
  v57 = v56 + (*(*a2 + 56))(a2);
  v58 = v57 + (*(*a2 + 48))(a2, "nid", 8, 18);
  v59 = v58 + (*(*a2 + 144))(a2, *(a1 + 124));
  v60 = v59 + (*(*a2 + 56))(a2);
  v61 = v51 + v60 + (*(*a2 + 48))(a2, "zoneid", 8, 19);
  v62 = (*(*a2 + 144))(a2, *(a1 + 128));
  v63 = v62 + (*(*a2 + 56))(a2);
  v64 = v63 + (*(*a2 + 48))(a2, "bsid", 8, 20);
  v65 = v64 + (*(*a2 + 144))(a2, *(a1 + 132));
  v66 = v65 + (*(*a2 + 56))(a2);
  v67 = v66 + (*(*a2 + 48))(a2, "bandclass", 8, 21);
  v68 = v67 + (*(*a2 + 144))(a2, *(a1 + 136));
  v69 = v68 + (*(*a2 + 56))(a2);
  v70 = v69 + (*(*a2 + 48))(a2, "channel", 8, 22);
  v71 = v70 + (*(*a2 + 144))(a2, *(a1 + 140));
  v72 = v61 + v71 + (*(*a2 + 56))(a2);
  v73 = (*(*a2 + 48))(a2, "pnoffset", 8, 23);
  v74 = v73 + (*(*a2 + 144))(a2, *(a1 + 144));
  v75 = v74 + (*(*a2 + 56))(a2);
  v76 = v75 + (*(*a2 + 48))(a2, "sector_lat", 4, 25);
  v77 = v76 + (*(*a2 + 160))(a2, *(a1 + 176));
  v78 = v77 + (*(*a2 + 56))(a2);
  v79 = v78 + (*(*a2 + 48))(a2, "sector_lon", 4, 26);
  v80 = v79 + (*(*a2 + 160))(a2, *(a1 + 184));
  v81 = v80 + (*(*a2 + 56))(a2);
  v82 = v81 + (*(*a2 + 48))(a2, "ltmOffset", 8, 27);
  v83 = v82 + (*(*a2 + 144))(a2, *(a1 + 192));
  v84 = v72 + v83 + (*(*a2 + 56))(a2);
  v85 = (*(*a2 + 48))(a2, "daylightSaving", 8, 28);
  v86 = v85 + (*(*a2 + 144))(a2, *(a1 + 196));
  v87 = v84 + v86 + (*(*a2 + 56))(a2);
  if ((*(a1 + 239) & 0x10) != 0)
  {
    v88 = (*(*a2 + 48))(a2, "derivedMccs", 15, 29);
    v89 = v88 + (*(*a2 + 88))(a2, 8, (*(a1 + 208) - *(a1 + 200)) >> 2) + v87;
    for (i = *(a1 + 200); i != *(a1 + 208); v89 += (*(*a2 + 144))(a2, v91))
    {
      v91 = *i++;
    }

    v92 = (*(*a2 + 96))(a2);
    v87 = v92 + (*(*a2 + 56))(a2) + v89;
  }

  v93 = (*(*a2 + 48))(a2, "arfcn", 8, 30);
  v94 = v93 + (*(*a2 + 144))(a2, *(a1 + 224));
  v95 = v94 + (*(*a2 + 56))(a2) + v87;
  v96 = *(a1 + 236);
  if ((v96 & 0x40000000) == 0)
  {
    if ((v96 & 0x80000000) == 0)
    {
      goto LABEL_8;
    }

LABEL_12:
    v104 = (*(*a2 + 48))(a2, "rsrq", 8, 32);
    v105 = v104 + (*(*a2 + 144))(a2, *(a1 + 232));
    v95 += v105 + (*(*a2 + 56))(a2);
    if ((*(a1 + 236) & 0x800000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v102 = (*(*a2 + 48))(a2, "rsrp", 8, 31);
  v103 = v102 + (*(*a2 + 144))(a2, *(a1 + 228));
  v95 += v103 + (*(*a2 + 56))(a2);
  v96 = *(a1 + 236);
  if (v96 < 0)
  {
    goto LABEL_12;
  }

LABEL_8:
  if ((v96 & 0x800000) != 0)
  {
LABEL_9:
    v97 = (*(*a2 + 48))(a2, "sectorid", 11, 33);
    v98 = v97 + (*(*a2 + 176))(a2, a1 + 152);
    v95 += v98 + (*(*a2 + 56))(a2);
  }

LABEL_10:
  v99 = (*(*a2 + 64))(a2);
  v100 = (*(*a2 + 40))(a2);
  --a2[6];
  return (v99 + v100 + v95);
}

void *sub_10013C960(void *a1)
{
  *a1 = off_10043DEE8;
  v2 = a1[2];
  if (v2)
  {
    v3 = a1[3];
    v4 = a1[2];
    if (v3 != v2)
    {
      v5 = v3 - 30;
      v6 = v3 - 30;
      v7 = v3 - 30;
      do
      {
        v8 = *v7;
        v7 -= 30;
        (*v8)(v6);
        v5 -= 30;
        v9 = v6 == v2;
        v6 = v7;
      }

      while (!v9);
      v4 = a1[2];
    }

    a1[3] = v2;
    operator delete(v4);
  }

  return a1;
}

void sub_10013CA18(void *a1)
{
  *a1 = off_10043DEE8;
  v2 = a1[2];
  if (v2)
  {
    v3 = a1[3];
    v4 = a1[2];
    if (v3 != v2)
    {
      v5 = v3 - 30;
      v6 = v3 - 30;
      v7 = v3 - 30;
      do
      {
        v8 = *v7;
        v7 -= 30;
        (*v8)(v6);
        v5 -= 30;
        v9 = v6 == v2;
        v6 = v7;
      }

      while (!v9);
      v4 = a1[2];
    }

    a1[3] = v2;
    operator delete(v4);
  }

  operator delete();
}

uint64_t sub_10013CAF0(void *a1, _DWORD *a2)
{
  v2 = a2[7];
  v3 = a2[6] + 1;
  a2[6] = v3;
  if (v2 < v3)
  {
    exception = __cxa_allocate_exception(0x28uLL);
    exception[2] = 0;
    exception[3] = 0;
    *exception = &off_100434888;
    exception[1] = 0;
    *(exception + 8) = 6;
  }

  v6 = (*(*a2 + 32))(a2, "CellScanEvent");
  v7 = (*(*a2 + 48))(a2, "timestampNanos", 10, 1) + v6;
  v8 = (*(*a2 + 152))(a2, a1[1]);
  v9 = v7 + v8 + (*(*a2 + 56))(a2);
  v10 = v9 + (*(*a2 + 48))(a2, "cellVector", 15, 2);
  v11 = v10 + (*(*a2 + 88))(a2, 12, -286331153 * ((a1[3] - a1[2]) >> 4));
  for (i = a1[2]; i != a1[3]; i += 240)
  {
    v11 += sub_10013B444(i, a2);
  }

  v13 = (*(*a2 + 96))(a2) + v11;
  v14 = (*(*a2 + 56))(a2);
  v15 = v13 + v14 + (*(*a2 + 64))(a2);
  v16 = (*(*a2 + 40))(a2);
  --a2[6];
  return (v15 + v16);
}

uint64_t sub_10013CDBC()
{
  v0 = 0;
  qword_10045E1E0 = 0;
  qword_10045E1D8 = 0;
  qword_10045E1D0 = &qword_10045E1D8;
  do
  {
    v1 = dword_10045BB88[v0];
    v2 = (&off_10045BBE0)[v0];
    if (!qword_10045E1D8)
    {
      operator new();
    }

    ++v0;
  }

  while (v0 != 22);

  return __cxa_atexit(sub_1000E1214, &qword_10045E1D0, &_mh_execute_header);
}

uint64_t sub_10013CFA4(uint64_t a1)
{
  *a1 = off_10043DF18;
  if (*(a1 + 87) < 0)
  {
    operator delete(*(a1 + 64));
    nullsub_76(a1 + 32);
  }

  else
  {
    nullsub_76(a1 + 32);
  }

  return a1;
}

void sub_10013D014(uint64_t a1)
{
  *a1 = off_10043DF18;
  if (*(a1 + 87) < 0)
  {
    operator delete(*(a1 + 64));
  }

  nullsub_76(a1 + 32);

  operator delete();
}

std::string *sub_10013D08C(uint64_t a1, const std::string *a2)
{
  result = std::string::operator=((a1 + 64), a2);
  *(a1 + 136) |= 0x10u;
  return result;
}

uint64_t sub_10013D0C0(uint64_t result, double a2)
{
  *(result + 88) = a2;
  *(result + 136) |= 0x20u;
  return result;
}

uint64_t sub_10013D0D4(uint64_t result, double a2)
{
  *(result + 96) = a2;
  *(result + 136) |= 0x40u;
  return result;
}

uint64_t sub_10013D0E8(uint64_t result, double a2)
{
  *(result + 104) = a2;
  *(result + 136) |= 0x80u;
  return result;
}

uint64_t sub_10013D0FC(uint64_t result, double a2)
{
  *(result + 112) = a2;
  *(result + 136) |= 0x100u;
  return result;
}

uint64_t sub_10013D110(uint64_t result, double a2)
{
  *(result + 120) = a2;
  *(result + 136) |= 0x200u;
  return result;
}

uint64_t sub_10013D124(uint64_t result, double a2)
{
  *(result + 128) = a2;
  *(result + 136) |= 0x400u;
  return result;
}

uint64_t sub_10013D138(uint64_t a1, uint64_t *a2)
{
  __p[0] = 0;
  __p[1] = 0;
  v15 = 0;
  v13 = 0;
  v12 = 0;
  for (i = (*(*a2 + 200))(a2, __p); ; i = v7 + v5 + (*(*a2 + 224))(a2))
  {
    v5 = (*(*a2 + 216))(a2, __p, &v13, &v12) + i;
    if (!v13)
    {
      break;
    }

    if (v12 <= 5u)
    {
      if (v12 <= 2u)
      {
        if (v12 != 1)
        {
          if (v12 == 2 && v13 == 12)
          {
            v7 = sub_10012D5CC(a1 + 32, a2);
            v8 = 8;
            goto LABEL_40;
          }

LABEL_25:
          v6 = *a2;
          goto LABEL_41;
        }

        v6 = *a2;
        if (v13 == 10)
        {
          v7 = (*(v6 + 320))(a2, a1 + 8);
          v8 = 1;
          goto LABEL_40;
        }
      }

      else
      {
        switch(v12)
        {
          case 3u:
            v6 = *a2;
            if (v13 == 11)
            {
              v7 = (*(v6 + 336))(a2, a1 + 64);
              v8 = 16;
              goto LABEL_40;
            }

            break;
          case 4u:
            v6 = *a2;
            if (v13 == 4)
            {
              v7 = (*(v6 + 328))(a2, a1 + 88);
              v8 = 32;
              goto LABEL_40;
            }

            break;
          case 5u:
            v6 = *a2;
            if (v13 == 4)
            {
              v7 = (*(v6 + 328))(a2, a1 + 96);
              v8 = 64;
              goto LABEL_40;
            }

            break;
          default:
            goto LABEL_25;
        }
      }
    }

    else if (v12 > 8u)
    {
      switch(v12)
      {
        case 9u:
          v6 = *a2;
          if (v13 == 4)
          {
            v7 = (*(v6 + 328))(a2, a1 + 112);
            v8 = 256;
            goto LABEL_40;
          }

          break;
        case 0xAu:
          v6 = *a2;
          if (v13 == 4)
          {
            v7 = (*(v6 + 328))(a2, a1 + 120);
            v8 = 512;
            goto LABEL_40;
          }

          break;
        case 0xBu:
          v6 = *a2;
          if (v13 == 4)
          {
            v7 = (*(v6 + 328))(a2, a1 + 128);
            v8 = 1024;
            goto LABEL_40;
          }

          break;
        default:
          goto LABEL_25;
      }
    }

    else
    {
      switch(v12)
      {
        case 6u:
          v6 = *a2;
          if (v13 == 4)
          {
            v7 = (*(v6 + 328))(a2, a1 + 104);
            v8 = 128;
            goto LABEL_40;
          }

          break;
        case 7u:
          v6 = *a2;
          if (v13 == 10)
          {
            v7 = (*(v6 + 320))(a2, a1 + 16);
            v8 = 2;
            goto LABEL_40;
          }

          break;
        case 8u:
          v6 = *a2;
          if (v13 == 10)
          {
            v7 = (*(v6 + 320))(a2, a1 + 24);
            v8 = 4;
LABEL_40:
            *(a1 + 136) |= v8;
            continue;
          }

          break;
        default:
          goto LABEL_25;
      }
    }

LABEL_41:
    v7 = (*(v6 + 352))(a2);
  }

  v9 = (*(*a2 + 208))(a2);
  if ((SHIBYTE(v15) & 0x80000000) == 0)
  {
    return (v9 + v5);
  }

  v11 = v9;
  operator delete(__p[0]);
  return (v11 + v5);
}

void sub_10013D6AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10013D6CC(uint64_t a1, _DWORD *a2)
{
  v2 = a2[7];
  v3 = a2[6] + 1;
  a2[6] = v3;
  if (v2 < v3)
  {
    exception = __cxa_allocate_exception(0x28uLL);
    exception[2] = 0;
    exception[3] = 0;
    *exception = &off_100434888;
    exception[1] = 0;
    *(exception + 8) = 6;
  }

  v6 = (*(*a2 + 32))(a2, "CLOutdoorPosition");
  v7 = (*(*a2 + 48))(a2, "timestampNanos", 10, 1) + v6;
  v8 = (*(*a2 + 152))(a2, *(a1 + 8));
  v9 = v7 + v8 + (*(*a2 + 56))(a2);
  v10 = (*(*a2 + 48))(a2, "latlon", 12, 2);
  v11 = v10 + sub_10012D83C(a1 + 32, a2);
  v12 = v9 + v11 + (*(*a2 + 56))(a2);
  v13 = *(a1 + 136);
  if ((v13 & 0x10) != 0)
  {
    v28 = (*(*a2 + 48))(a2, "provider", 11, 3);
    v29 = v28 + (*(*a2 + 168))(a2, a1 + 64);
    v12 += v29 + (*(*a2 + 56))(a2);
    v13 = *(a1 + 136);
    if ((v13 & 0x20) == 0)
    {
LABEL_4:
      if ((v13 & 0x40) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_14;
    }
  }

  else if ((v13 & 0x20) == 0)
  {
    goto LABEL_4;
  }

  v30 = (*(*a2 + 48))(a2, "altitude", 4, 4);
  v31 = v30 + (*(*a2 + 160))(a2, *(a1 + 88));
  v12 += v31 + (*(*a2 + 56))(a2);
  v13 = *(a1 + 136);
  if ((v13 & 0x40) == 0)
  {
LABEL_5:
    if ((v13 & 0x80) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_14:
  v32 = (*(*a2 + 48))(a2, "horizontalAccuracy", 4, 5);
  v33 = v32 + (*(*a2 + 160))(a2, *(a1 + 96));
  v12 += v33 + (*(*a2 + 56))(a2);
  if ((*(a1 + 136) & 0x80) != 0)
  {
LABEL_6:
    v14 = (*(*a2 + 48))(a2, "speed", 4, 6);
    v15 = v14 + (*(*a2 + 160))(a2, *(a1 + 104));
    v12 += v15 + (*(*a2 + 56))(a2);
  }

LABEL_7:
  v16 = (*(*a2 + 48))(a2, "receivedTimestampNanos", 10, 7);
  v17 = v16 + (*(*a2 + 152))(a2, *(a1 + 16));
  v18 = v17 + (*(*a2 + 56))(a2);
  v19 = v18 + (*(*a2 + 48))(a2, "simulationTimestampNanos", 10, 8) + v12;
  v20 = (*(*a2 + 152))(a2, *(a1 + 24));
  v21 = v19 + v20 + (*(*a2 + 56))(a2);
  v22 = *(a1 + 136);
  if ((v22 & 0x100) == 0)
  {
    if ((*(a1 + 136) & 0x200) == 0)
    {
      goto LABEL_9;
    }

LABEL_17:
    v36 = (*(*a2 + 48))(a2, "horzUncSemiMin", 4, 10);
    v37 = v36 + (*(*a2 + 160))(a2, *(a1 + 120));
    v21 += v37 + (*(*a2 + 56))(a2);
    if ((*(a1 + 136) & 0x400) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v34 = (*(*a2 + 48))(a2, "horzUncSemiMaj", 4, 9);
  v35 = v34 + (*(*a2 + 160))(a2, *(a1 + 112));
  v21 += v35 + (*(*a2 + 56))(a2);
  v22 = *(a1 + 136);
  if ((v22 & 0x200) != 0)
  {
    goto LABEL_17;
  }

LABEL_9:
  if ((v22 & 0x400) != 0)
  {
LABEL_10:
    v23 = (*(*a2 + 48))(a2, "horzUncSemiMajAz", 4, 11);
    v24 = v23 + (*(*a2 + 160))(a2, *(a1 + 128));
    v21 += v24 + (*(*a2 + 56))(a2);
  }

LABEL_11:
  v25 = (*(*a2 + 64))(a2);
  v26 = (*(*a2 + 40))(a2);
  --a2[6];
  return (v25 + v26 + v21);
}

uint64_t sub_10013DEDC(uint64_t a1, uint64_t a2)
{
  *a1 = off_10043DF18;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  v4 = *(a1 + 56) & 0xFC;
  *(a1 + 64) = 0;
  v5 = (a1 + 64);
  *(a1 + 56) = v4;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 136) &= 0xF800u;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = off_10043DB28;
  sub_10012A358(a1 + 32, a2 + 32);
  std::string::operator=(v5, (a2 + 64));
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 136) = *(a2 + 136);
  return a1;
}

void sub_10013DFB4(_Unwind_Exception *a1)
{
  if (*(v1 + 87) < 0)
  {
    operator delete(*v3);
  }

  nullsub_76(v2);
  _Unwind_Resume(a1);
}

uint64_t sub_10013DFDC(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  sub_10012A358(a1 + 32, a2 + 32);
  std::string::operator=((a1 + 64), (a2 + 64));
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 136) = *(a2 + 136);
  return a1;
}

void sub_10013E04C(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  sub_10013E214(a1, a2, a3, a4);
  wireless_diagnostics::google::protobuf::DescriptorPool::generated_pool(v4);
  operator new();
}

void sub_10013E1B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_10013E1CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_10013E1E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_10013E214(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  if ((byte_10045CDB8 & 1) == 0)
  {
    byte_10045CDB8 = 1;
    wireless_diagnostics::google::protobuf::internal::VerifyVersion(0x1E9808, 2005000, "/Library/Caches/com.apple.xbs/Sources/purpleslam/protobuf/gen/locationd_parameters.pb.cc", a4);
    wireless_diagnostics::google::protobuf::DescriptorPool::InternalAddGeneratedFile("\n'protobuf/gen/locationd_parameters.proto\x12\x0Fproto.locationd\xB2\x01\n MotionActivityDebounceParameters\x12\n\x1AnonFitnessToCyclingSeconds\x18\x01 \x01(\r\x12\n\x1AnonFitnessToRunningSeconds\x18\x02 \x01(\r\x12\n\x1ArunningToNonFitnessSeconds\x18\x03 \x01(\r\x12\n\x1AcyclingToNonFitnessSeconds\x18\x04 \x01(\rB\n com.apple.indoor.proto.locationd", 0x113, v4);
    wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedFile();
    operator new();
  }
}

uint64_t sub_10013E330()
{
  if (qword_10045E1E8)
  {
    (*(*qword_10045E1E8 + 8))(qword_10045E1E8);
  }

  result = qword_10045CDD0;
  if (qword_10045CDD0)
  {
    v1 = *(*qword_10045CDD0 + 8);

    return v1();
  }

  return result;
}

uint64_t sub_10013E3B8()
{
  v0 = qword_10045CDD8;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v2[1] = sub_10013E04C;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }

  if (!qword_10045E1E8)
  {
    sub_10013E214();
  }

  return wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
}

void sub_10013E478(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

void *sub_10013E48C(void *a1)
{
  *a1 = off_10043DF48;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet((a1 + 1));
  a1[2] = 0;
  a1[3] = 0;
  a1[4] = 0;
  return a1;
}

uint64_t sub_10013E4EC(_DWORD *a1, uint64_t a2)
{
  if (a2 == a1)
  {
    v2 = a1;
    v3 = a2;
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v10);
    a2 = v3;
    a1 = v2;
  }

  LOBYTE(v4) = *(a2 + 36);
  if (!v4)
  {
    return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 2), (a2 + 8));
  }

  if (*(a2 + 36))
  {
    v7 = *(a2 + 16);
    a1[9] |= 1u;
    a1[4] = v7;
    v4 = *(a2 + 36);
    if ((v4 & 2) == 0)
    {
LABEL_6:
      if ((v4 & 4) == 0)
      {
        goto LABEL_7;
      }

LABEL_12:
      v9 = *(a2 + 24);
      a1[9] |= 4u;
      a1[6] = v9;
      if ((*(a2 + 36) & 8) == 0)
      {
        return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 2), (a2 + 8));
      }

      goto LABEL_8;
    }
  }

  else if ((*(a2 + 36) & 2) == 0)
  {
    goto LABEL_6;
  }

  v8 = *(a2 + 20);
  a1[9] |= 2u;
  a1[5] = v8;
  v4 = *(a2 + 36);
  if ((v4 & 4) != 0)
  {
    goto LABEL_12;
  }

LABEL_7:
  if ((v4 & 8) != 0)
  {
LABEL_8:
    v5 = *(a2 + 28);
    a1[9] |= 8u;
    a1[7] = v5;
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 2), (a2 + 8));
}

void sub_10013E5F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_10013E608(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10013E61C(uint64_t a1, uint64_t a2)
{
  *a1 = off_10043DF48;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet((a1 + 8));
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  sub_10013E4EC(a1, a2);
  return a1;
}

void sub_10013E688(_Unwind_Exception *a1)
{
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet(v2);
  wireless_diagnostics::google::protobuf::Message::~Message(v1);
  _Unwind_Resume(a1);
}

void sub_10013E6B8(uint64_t a1)
{
  *a1 = off_10043DF48;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 8));

  wireless_diagnostics::google::protobuf::Message::~Message(a1);
}

void sub_10013E70C(uint64_t a1)
{
  *a1 = off_10043DF48;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 8));
  wireless_diagnostics::google::protobuf::Message::~Message(a1);

  operator delete();
}

uint64_t sub_10013E77C(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  result = qword_10045E1E8;
  if (!qword_10045E1E8)
  {
    sub_10013E214(0, a2, a3, a4);
    return qword_10045E1E8;
  }

  return result;
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_10013E844(uint64_t a1)
{
  if (*(a1 + 36))
  {
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
  }

  v2 = *(a1 + 8);
  result = (a1 + 8);
  *(result + 7) = 0;
  if (v2)
  {
    return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(result);
  }

  return result;
}

uint64_t sub_10013E864(unsigned int *a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
{
  while (1)
  {
    while (1)
    {
      while (1)
      {
        while (1)
        {
          v6 = *(this + 1);
          if (v6 >= *(this + 2) || (TagFallback = *v6, (TagFallback & 0x80000000) != 0))
          {
            TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(this);
            *(this + 8) = TagFallback;
            if (!TagFallback)
            {
              return 1;
            }
          }

          else
          {
            *(this + 8) = TagFallback;
            *(this + 1) = v6 + 1;
            if (!TagFallback)
            {
              return 1;
            }
          }

          v8 = TagFallback >> 3;
          if (TagFallback >> 3 > 2)
          {
            break;
          }

          if (v8 == 1)
          {
            if ((TagFallback & 7) != 0)
            {
              goto LABEL_23;
            }

            v12 = *(this + 1);
            v9 = *(this + 2);
            if (v12 >= v9 || (v13 = *v12, (v13 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, a1 + 4);
              if (!result)
              {
                return result;
              }

              v14 = *(this + 1);
              v9 = *(this + 2);
              a1[9] |= 1u;
              if (v14 < v9)
              {
                goto LABEL_30;
              }
            }

            else
            {
              a1[4] = v13;
              v14 = v12 + 1;
              *(this + 1) = v14;
              a1[9] |= 1u;
              if (v14 < v9)
              {
LABEL_30:
                if (*v14 == 16)
                {
                  v10 = v14 + 1;
                  *(this + 1) = v10;
                  if (v10 < v9)
                  {
                    goto LABEL_32;
                  }

LABEL_35:
                  result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, a1 + 5);
                  if (!result)
                  {
                    return result;
                  }

                  v17 = *(this + 1);
                  v9 = *(this + 2);
                  a1[9] |= 2u;
                  if (v17 < v9)
                  {
                    goto LABEL_37;
                  }
                }
              }
            }
          }

          else
          {
            if (v8 != 2 || (TagFallback & 7) != 0)
            {
              goto LABEL_23;
            }

            v10 = *(this + 1);
            v9 = *(this + 2);
            if (v10 >= v9)
            {
              goto LABEL_35;
            }

LABEL_32:
            v16 = *v10;
            if ((v16 & 0x80000000) != 0)
            {
              goto LABEL_35;
            }

            a1[5] = v16;
            v17 = v10 + 1;
            *(this + 1) = v17;
            a1[9] |= 2u;
            if (v17 < v9)
            {
LABEL_37:
              if (*v17 == 24)
              {
                v15 = v17 + 1;
                *(this + 1) = v15;
                if (v15 < v9)
                {
                  goto LABEL_39;
                }

LABEL_42:
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, a1 + 6);
                if (!result)
                {
                  return result;
                }

                v19 = *(this + 1);
                v9 = *(this + 2);
                a1[9] |= 4u;
                if (v19 < v9)
                {
                  goto LABEL_44;
                }
              }
            }
          }
        }

        if (v8 != 3)
        {
          break;
        }

        if ((TagFallback & 7) != 0)
        {
          goto LABEL_23;
        }

        v15 = *(this + 1);
        v9 = *(this + 2);
        if (v15 >= v9)
        {
          goto LABEL_42;
        }

LABEL_39:
        v18 = *v15;
        if ((v18 & 0x80000000) != 0)
        {
          goto LABEL_42;
        }

        a1[6] = v18;
        v19 = v15 + 1;
        *(this + 1) = v19;
        a1[9] |= 4u;
        if (v19 < v9)
        {
LABEL_44:
          if (*v19 == 32)
          {
            v11 = v19 + 1;
            *(this + 1) = v11;
            if (v11 < v9)
            {
              goto LABEL_46;
            }

LABEL_49:
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, a1 + 7);
            if (!result)
            {
              return result;
            }

            v23 = *(this + 1);
            v22 = *(this + 2);
            a1[9] |= 8u;
            if (v23 == v22)
            {
              goto LABEL_51;
            }
          }
        }
      }

      if (v8 != 4 || (TagFallback & 7) != 0)
      {
        break;
      }

      v11 = *(this + 1);
      v9 = *(this + 2);
      if (v11 >= v9)
      {
        goto LABEL_49;
      }

LABEL_46:
      v20 = *v11;
      if ((v20 & 0x80000000) != 0)
      {
        goto LABEL_49;
      }

      a1[7] = v20;
      v21 = v11 + 1;
      *(this + 1) = v21;
      a1[9] |= 8u;
      if (v21 == v9)
      {
LABEL_51:
        if (*(this + 11) || *(this + 6) == *(this + 10))
        {
          *(this + 8) = 0;
          result = 1;
          *(this + 36) = 1;
          return result;
        }
      }
    }

LABEL_23:
    if ((TagFallback & 7) == 4)
    {
      return 1;
    }

    if ((wireless_diagnostics::google::protobuf::internal::WireFormat::SkipField(this, TagFallback, a1 + 8, a4) & 1) == 0)
    {
      return 0;
    }
  }
}

uint64_t sub_10013EB44(uint64_t result, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 36);
  if (v6)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(1, *(result + 16), a2, a4);
    v6 = *(v5 + 36);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, *(v5 + 20), a2, a4);
  v6 = *(v5 + 36);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

LABEL_9:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(3, *(v5 + 24), a2, a4);
  if ((*(v5 + 36) & 8) == 0)
  {
LABEL_5:
    v9 = *(v5 + 8);
    v8 = (v5 + 8);
    v7 = v9;
    if (!v9)
    {
      return result;
    }

    goto LABEL_11;
  }

LABEL_10:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(4, *(v5 + 28), a2, a4);
  v10 = *(v5 + 8);
  v8 = (v5 + 8);
  v7 = v10;
  if (!v10)
  {
    return result;
  }

LABEL_11:
  if (*v7 != v7[1])
  {

    return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFields(v8, a2, a3);
  }

  return result;
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_10013EC18(wireless_diagnostics::google::protobuf::internal::WireFormat *this, wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, unsigned __int8 *a3)
{
  v3 = a2;
  if ((*(this + 36) & 1) == 0)
  {
    if ((*(this + 36) & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_14:
    v11 = *(this + 5);
    *v3 = 16;
    if (v11 > 0x7F)
    {
      v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v11, v3 + 1, a3);
      if ((*(this + 36) & 4) != 0)
      {
        goto LABEL_18;
      }
    }

    else
    {
      *(v3 + 1) = v11;
      v3 = (v3 + 2);
      if ((*(this + 36) & 4) != 0)
      {
        goto LABEL_18;
      }
    }

LABEL_4:
    if ((*(this + 36) & 8) == 0)
    {
      goto LABEL_5;
    }

LABEL_22:
    v13 = *(this + 7);
    *v3 = 32;
    if (v13 > 0x7F)
    {
      v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v13, v3 + 1, a3);
      v15 = *(this + 1);
      v6 = (this + 8);
      v5 = v15;
      if (!v15)
      {
        return v3;
      }
    }

    else
    {
      *(v3 + 1) = v13;
      v3 = (v3 + 2);
      v14 = *(this + 1);
      v6 = (this + 8);
      v5 = v14;
      if (!v14)
      {
        return v3;
      }
    }

    goto LABEL_6;
  }

  v9 = *(this + 4);
  *a2 = 8;
  v10 = a2 + 1;
  if (v9 > 0x7F)
  {
    v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v9, v10, a3);
    if ((*(this + 36) & 2) != 0)
    {
      goto LABEL_14;
    }
  }

  else
  {
    *(v3 + 1) = v9;
    v3 = (v3 + 2);
    if ((*(this + 36) & 2) != 0)
    {
      goto LABEL_14;
    }
  }

LABEL_3:
  if ((*(this + 36) & 4) == 0)
  {
    goto LABEL_4;
  }

LABEL_18:
  v12 = *(this + 6);
  *v3 = 24;
  if (v12 > 0x7F)
  {
    v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v12, v3 + 1, a3);
    if ((*(this + 36) & 8) != 0)
    {
      goto LABEL_22;
    }
  }

  else
  {
    *(v3 + 1) = v12;
    v3 = (v3 + 2);
    if ((*(this + 36) & 8) != 0)
    {
      goto LABEL_22;
    }
  }

LABEL_5:
  v7 = *(this + 1);
  v6 = (this + 8);
  v5 = v7;
  if (!v7)
  {
    return v3;
  }

LABEL_6:
  if (*v5 == v5[1])
  {
    return v3;
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v6, v3, a3);
}

uint64_t sub_10013ED88(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  LOBYTE(v3) = *(a1 + 36);
  if (!v3)
  {
    v4 = 0;
    v5 = (a1 + 8);
    v6 = *(a1 + 8);
    if (!v6)
    {
      goto LABEL_18;
    }

    goto LABEL_27;
  }

  if (*(a1 + 36))
  {
    v7 = *(a1 + 16);
    if (v7 >= 0x80)
    {
      v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v7, a2) + 1;
      v3 = *(a1 + 36);
      if ((v3 & 2) == 0)
      {
        goto LABEL_15;
      }
    }

    else
    {
      v4 = 2;
      if ((v3 & 2) == 0)
      {
        goto LABEL_15;
      }
    }
  }

  else
  {
    v4 = 0;
    if ((*(a1 + 36) & 2) == 0)
    {
      goto LABEL_15;
    }
  }

  v8 = *(a1 + 20);
  if (v8 >= 0x80)
  {
    v9 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v8, a2) + 1;
    v3 = *(a1 + 36);
  }

  else
  {
    v9 = 2;
  }

  v4 = (v9 + v4);
LABEL_15:
  if ((v3 & 4) == 0)
  {
    if ((v3 & 8) == 0)
    {
      goto LABEL_17;
    }

LABEL_23:
    v12 = *(a1 + 28);
    if (v12 >= 0x80)
    {
      v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v12, a2) + 1 + v4;
      v5 = (a1 + 8);
      v6 = *(a1 + 8);
      if (!v6)
      {
        goto LABEL_18;
      }
    }

    else
    {
      v4 = (v4 + 2);
      v5 = (a1 + 8);
      v6 = *(a1 + 8);
      if (!v6)
      {
        goto LABEL_18;
      }
    }

    goto LABEL_27;
  }

  v11 = *(a1 + 24);
  if (v11 >= 0x80)
  {
    v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v11, a2) + 1 + v4;
    if ((*(a1 + 36) & 8) != 0)
    {
      goto LABEL_23;
    }
  }

  else
  {
    v4 = (v4 + 2);
    if ((v3 & 8) != 0)
    {
      goto LABEL_23;
    }
  }

LABEL_17:
  v5 = (a1 + 8);
  v6 = *(a1 + 8);
  if (!v6)
  {
LABEL_18:
    *(a1 + 32) = v4;
    return v4;
  }

LABEL_27:
  if (*v6 == v6[1])
  {
    goto LABEL_18;
  }

  v13 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize(v5, a2) + v4;
  *(a1 + 32) = v13;
  return v13;
}

uint64_t sub_10013EED0(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
{
  if (lpsrc == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v8);
  }

  v4 = **lpsrc;
  if (v5)
  {
    return sub_10013E4EC(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_10013EFB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_10013EFC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10013EFD8(uint64_t result, uint64_t a2)
{
  if (a2 != result)
  {
    v4 = result;
    (*(*result + 32))();
    v5 = *(*v4 + 112);

    return v5(v4, a2);
  }

  return result;
}

uint64_t sub_10013F064(uint64_t result, uint64_t a2)
{
  if (a2 != result)
  {
    v4 = result;
    (*(*result + 32))();

    return sub_10013E4EC(v4, a2);
  }

  return result;
}

uint64_t sub_10013F0D8()
{
  v0 = qword_10045CDD8;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v2[1] = sub_10013E04C;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }

  return qword_10045CDC8;
}

void sub_10013F168(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

void sub_10013F188(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  sub_1001404F8(a1, a2, a3, a4);
  wireless_diagnostics::google::protobuf::DescriptorPool::generated_pool(v4);
  operator new();
}

void sub_100140408(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_10014041C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_100140430(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_1001404F8(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  if ((byte_10045CDE0 & 1) == 0)
  {
    byte_10045CDE0 = 1;
    wireless_diagnostics::google::protobuf::internal::VerifyVersion(0x1E9808, 2005000, "/Library/Caches/com.apple.xbs/Sources/purpleslam/protobuf/gen/parameters.pb.cc", a4);
    wireless_diagnostics::google::protobuf::DescriptorPool::InternalAddGeneratedFile(&unk_1003D2B08, 0x3104, v4);
    wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedFile();
    operator new();
  }
}

uint64_t sub_100141700()
{
  if (qword_10045E1F0)
  {
    (*(*qword_10045E1F0 + 8))(qword_10045E1F0);
  }

  if (qword_10045CDF8)
  {
    (*(*qword_10045CDF8 + 8))(qword_10045CDF8);
  }

  if (qword_10045E1F8)
  {
    (*(*qword_10045E1F8 + 8))(qword_10045E1F8);
  }

  if (qword_10045CE08)
  {
    (*(*qword_10045CE08 + 8))(qword_10045CE08);
  }

  if (qword_10045E200)
  {
    (*(*qword_10045E200 + 8))(qword_10045E200);
  }

  if (qword_10045CE18)
  {
    (*(*qword_10045CE18 + 8))(qword_10045CE18);
  }

  if (qword_10045E208)
  {
    (*(*qword_10045E208 + 8))(qword_10045E208);
  }

  if (qword_10045CE28)
  {
    (*(*qword_10045CE28 + 8))(qword_10045CE28);
  }

  if (qword_10045E210)
  {
    (*(*qword_10045E210 + 8))(qword_10045E210);
  }

  if (qword_10045CE38)
  {
    (*(*qword_10045CE38 + 8))(qword_10045CE38);
  }

  if (qword_10045E218)
  {
    (*(*qword_10045E218 + 8))(qword_10045E218);
  }

  if (qword_10045CE48)
  {
    (*(*qword_10045CE48 + 8))(qword_10045CE48);
  }

  if (qword_10045E220)
  {
    (*(*qword_10045E220 + 8))(qword_10045E220);
  }

  if (qword_10045CE58)
  {
    (*(*qword_10045CE58 + 8))(qword_10045CE58);
  }

  if (qword_10045E228)
  {
    (*(*qword_10045E228 + 8))(qword_10045E228);
  }

  if (qword_10045CE68)
  {
    (*(*qword_10045CE68 + 8))(qword_10045CE68);
  }

  if (qword_10045E230)
  {
    (*(*qword_10045E230 + 8))(qword_10045E230);
  }

  if (qword_10045CE78)
  {
    (*(*qword_10045CE78 + 8))(qword_10045CE78);
  }

  if (qword_10045E238)
  {
    (*(*qword_10045E238 + 8))(qword_10045E238);
  }

  if (qword_10045CE90)
  {
    (*(*qword_10045CE90 + 8))(qword_10045CE90);
  }

  if (qword_10045E240)
  {
    (*(*qword_10045E240 + 8))(qword_10045E240);
  }

  if (qword_10045CEA0)
  {
    (*(*qword_10045CEA0 + 8))(qword_10045CEA0);
  }

  if (qword_10045E248)
  {
    (*(*qword_10045E248 + 8))(qword_10045E248);
  }

  if (qword_10045CEB0)
  {
    (*(*qword_10045CEB0 + 8))(qword_10045CEB0);
  }

  if (qword_10045E250)
  {
    (*(*qword_10045E250 + 8))(qword_10045E250);
  }

  if (qword_10045CEC0)
  {
    (*(*qword_10045CEC0 + 8))(qword_10045CEC0);
  }

  if (qword_10045E258)
  {
    (*(*qword_10045E258 + 8))(qword_10045E258);
  }

  if (qword_10045CED0)
  {
    (*(*qword_10045CED0 + 8))(qword_10045CED0);
  }

  if (qword_10045E260)
  {
    (*(*qword_10045E260 + 8))(qword_10045E260);
  }

  if (qword_10045CEE0)
  {
    (*(*qword_10045CEE0 + 8))(qword_10045CEE0);
  }

  if (qword_10045E268)
  {
    (*(*qword_10045E268 + 8))(qword_10045E268);
  }

  if (qword_10045CEF0)
  {
    (*(*qword_10045CEF0 + 8))(qword_10045CEF0);
  }

  if (qword_10045E270)
  {
    (*(*qword_10045E270 + 8))(qword_10045E270);
  }

  if (qword_10045CF00)
  {
    (*(*qword_10045CF00 + 8))(qword_10045CF00);
  }

  if (qword_10045E278)
  {
    (*(*qword_10045E278 + 8))(qword_10045E278);
  }

  if (qword_10045CF10)
  {
    (*(*qword_10045CF10 + 8))(qword_10045CF10);
  }

  if (qword_10045E280)
  {
    (*(*qword_10045E280 + 8))(qword_10045E280);
  }

  if (qword_10045CF20)
  {
    (*(*qword_10045CF20 + 8))(qword_10045CF20);
  }

  if (qword_10045E288)
  {
    (*(*qword_10045E288 + 8))(qword_10045E288);
  }

  if (qword_10045CF30)
  {
    (*(*qword_10045CF30 + 8))(qword_10045CF30);
  }

  if (qword_10045E290)
  {
    (*(*qword_10045E290 + 8))(qword_10045E290);
  }

  if (qword_10045CF40)
  {
    (*(*qword_10045CF40 + 8))(qword_10045CF40);
  }

  if (qword_10045E298)
  {
    (*(*qword_10045E298 + 8))(qword_10045E298);
  }

  if (qword_10045CF50)
  {
    (*(*qword_10045CF50 + 8))(qword_10045CF50);
  }

  if (qword_10045E2A0)
  {
    (*(*qword_10045E2A0 + 8))(qword_10045E2A0);
  }

  if (qword_10045CF60)
  {
    (*(*qword_10045CF60 + 8))(qword_10045CF60);
  }

  if (qword_10045E2A8)
  {
    (*(*qword_10045E2A8 + 8))(qword_10045E2A8);
  }

  if (qword_10045CF70)
  {
    (*(*qword_10045CF70 + 8))(qword_10045CF70);
  }

  if (qword_10045E2B0)
  {
    (*(*qword_10045E2B0 + 8))(qword_10045E2B0);
  }

  if (qword_10045CF80)
  {
    (*(*qword_10045CF80 + 8))(qword_10045CF80);
  }

  if (qword_10045E2B8)
  {
    (*(*qword_10045E2B8 + 8))(qword_10045E2B8);
  }

  if (qword_10045CF90)
  {
    (*(*qword_10045CF90 + 8))(qword_10045CF90);
  }

  if (qword_10045E2C0)
  {
    (*(*qword_10045E2C0 + 8))(qword_10045E2C0);
  }

  if (qword_10045CFA0)
  {
    (*(*qword_10045CFA0 + 8))(qword_10045CFA0);
  }

  if (qword_10045E2C8)
  {
    (*(*qword_10045E2C8 + 8))(qword_10045E2C8);
  }

  if (qword_10045CFB0)
  {
    (*(*qword_10045CFB0 + 8))(qword_10045CFB0);
  }

  if (qword_10045E2D0)
  {
    (*(*qword_10045E2D0 + 8))(qword_10045E2D0);
  }

  if (qword_10045CFC0)
  {
    (*(*qword_10045CFC0 + 8))(qword_10045CFC0);
  }

  if (qword_10045E2D8)
  {
    (*(*qword_10045E2D8 + 8))(qword_10045E2D8);
  }

  if (qword_10045CFD0)
  {
    (*(*qword_10045CFD0 + 8))(qword_10045CFD0);
  }

  if (qword_10045E2E0)
  {
    (*(*qword_10045E2E0 + 8))(qword_10045E2E0);
  }

  if (qword_10045CFE0)
  {
    (*(*qword_10045CFE0 + 8))(qword_10045CFE0);
  }

  if (qword_10045E2E8)
  {
    (*(*qword_10045E2E8 + 8))(qword_10045E2E8);
  }

  if (qword_10045CFF0)
  {
    (*(*qword_10045CFF0 + 8))(qword_10045CFF0);
  }

  if (qword_10045E2F0)
  {
    (*(*qword_10045E2F0 + 8))(qword_10045E2F0);
  }

  if (qword_10045D000)
  {
    (*(*qword_10045D000 + 8))(qword_10045D000);
  }

  if (qword_10045E2F8)
  {
    (*(*qword_10045E2F8 + 8))(qword_10045E2F8);
  }

  if (qword_10045D010)
  {
    (*(*qword_10045D010 + 8))(qword_10045D010);
  }

  if (qword_10045E300)
  {
    (*(*qword_10045E300 + 8))(qword_10045E300);
  }

  if (qword_10045D020)
  {
    (*(*qword_10045D020 + 8))(qword_10045D020);
  }

  if (qword_10045E308)
  {
    (*(*qword_10045E308 + 8))(qword_10045E308);
  }

  if (qword_10045D030)
  {
    (*(*qword_10045D030 + 8))(qword_10045D030);
  }

  if (qword_10045E310)
  {
    (*(*qword_10045E310 + 8))(qword_10045E310);
  }

  if (qword_10045D040)
  {
    (*(*qword_10045D040 + 8))(qword_10045D040);
  }

  if (qword_10045E318)
  {
    (*(*qword_10045E318 + 8))(qword_10045E318);
  }

  result = qword_10045D050;
  if (qword_10045D050)
  {
    v1 = *(*qword_10045D050 + 8);

    return v1();
  }

  return result;
}

uint64_t sub_100142568()
{
  v0 = qword_10045D0B0;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v39[1] = sub_10013F188;
    v40 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v39);
  }

  if (!qword_10045E1F0)
  {
    (sub_1001404F8)();
  }

  v1 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_10045E1F8)
  {
    sub_1001404F8(v1);
  }

  v2 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_10045E200)
  {
    sub_1001404F8(v2);
  }

  v3 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_10045E208)
  {
    sub_1001404F8(v3);
  }

  v4 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_10045E210)
  {
    sub_1001404F8(v4);
  }

  v5 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_10045E218)
  {
    sub_1001404F8(v5);
  }

  v6 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_10045E220)
  {
    sub_1001404F8(v6);
  }

  v7 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_10045E228)
  {
    sub_1001404F8(v7);
  }

  v8 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_10045E230)
  {
    sub_1001404F8(v8);
  }

  v9 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_10045E238)
  {
    sub_1001404F8(v9);
  }

  v10 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_10045E240)
  {
    sub_1001404F8(v10);
  }

  v11 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_10045E248)
  {
    sub_1001404F8(v11);
  }

  v12 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_10045E250)
  {
    sub_1001404F8(v12);
  }

  v13 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_10045E258)
  {
    sub_1001404F8(v13);
  }

  v14 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_10045E260)
  {
    sub_1001404F8(v14);
  }

  v15 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_10045E268)
  {
    sub_1001404F8(v15);
  }

  v16 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_10045E270)
  {
    sub_1001404F8(v16);
  }

  v17 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_10045E278)
  {
    sub_1001404F8(v17);
  }

  v18 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_10045E280)
  {
    sub_1001404F8(v18);
  }

  v19 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_10045E288)
  {
    sub_1001404F8(v19);
  }

  v20 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_10045E290)
  {
    sub_1001404F8(v20);
  }

  v21 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_10045E298)
  {
    sub_1001404F8(v21);
  }

  v22 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_10045E2A0)
  {
    sub_1001404F8(v22);
  }

  v23 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_10045E2A8)
  {
    sub_1001404F8(v23);
  }

  v24 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_10045E2B0)
  {
    sub_1001404F8(v24);
  }

  v25 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_10045E2B8)
  {
    sub_1001404F8(v25);
  }

  v26 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_10045E2C0)
  {
    sub_1001404F8(v26);
  }

  v27 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_10045E2C8)
  {
    sub_1001404F8(v27);
  }

  v28 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_10045E2D0)
  {
    sub_1001404F8(v28);
  }

  v29 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_10045E2D8)
  {
    sub_1001404F8(v29);
  }

  v30 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_10045E2E0)
  {
    sub_1001404F8(v30);
  }

  v31 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_10045E2E8)
  {
    sub_1001404F8(v31);
  }

  v32 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_10045E2F0)
  {
    sub_1001404F8(v32);
  }

  v33 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_10045E2F8)
  {
    sub_1001404F8(v33);
  }

  v34 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_10045E300)
  {
    sub_1001404F8(v34);
  }

  v35 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_10045E308)
  {
    sub_1001404F8(v35);
  }

  v36 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_10045E310)
  {
    sub_1001404F8(v36);
  }

  v37 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_10045E318)
  {
    sub_1001404F8(v37);
  }

  return wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
}

void sub_100142B5C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100142B70(uint64_t a1)
{
  *a1 = off_10043E010;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet((a1 + 8));
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 40) = 0;
  *(a1 + 32) = 0;
  return a1;
}

uint64_t sub_100142BD4(uint64_t a1)
{
  *a1 = off_10043E0C0;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet((a1 + 8));
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  return a1;
}

uint64_t sub_100142C34(uint64_t a1)
{
  *a1 = off_10043E170;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet((a1 + 8));
  *(a1 + 48) = 0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  return a1;
}

uint64_t sub_100142C98(uint64_t a1)
{
  *a1 = off_10043E220;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet((a1 + 8));
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  return a1;
}

uint64_t sub_100142CF8(uint64_t a1)
{
  *a1 = off_10043E2D0;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet((a1 + 8));
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  return a1;
}

uint64_t sub_100142D58(uint64_t a1)
{
  *a1 = off_10043E380;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet((a1 + 8));
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  return a1;
}

void *sub_100142DB8(void *a1)
{
  *a1 = off_10043E430;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet((a1 + 1));
  a1[2] = 0;
  a1[3] = 0;
  return a1;
}

void *sub_100142E14(void *a1)
{
  *a1 = off_10043E4E0;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet((a1 + 1));
  a1[5] = 0;
  a1[2] = 0;
  a1[3] = 0;
  *(a1 + 29) = 0;
  return a1;
}

uint64_t sub_100142E78(uint64_t a1)
{
  *a1 = off_10043E590;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet((a1 + 8));
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  return a1;
}

uint64_t sub_100142EDC(uint64_t a1)
{
  *a1 = off_10043E640;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet((a1 + 8));
  *(a1 + 24) = 0;
  *(a1 + 16) = 0;
  return a1;
}

uint64_t sub_100142F3C(uint64_t a1)
{
  *a1 = off_10043E6F0;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet((a1 + 8));
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  return a1;
}

void *sub_100142FA0(void *a1)
{
  *a1 = off_10043E7A0;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet((a1 + 1));
  a1[5] = 0;
  a1[2] = 0;
  a1[3] = 0;
  *(a1 + 29) = 0;
  return a1;
}

uint64_t sub_100143004(uint64_t a1)
{
  *a1 = off_10043E850;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet((a1 + 8));
  *(a1 + 191) = 0;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 212) = 0u;
  *(a1 + 228) = 0u;
  *(a1 + 244) = 0u;
  *(a1 + 196) = 0u;
  *(a1 + 260) = 0u;
  *(a1 + 276) = 0u;
  *(a1 + 292) = 0u;
  return a1;
}

uint64_t sub_100143098(uint64_t a1)
{
  *a1 = off_10043E900;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet((a1 + 8));
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 36) = 0;
  *(a1 + 52) = 0;
  *(a1 + 44) = 0;
  *(a1 + 60) = 0;
  return a1;
}

void *sub_100143108(void *a1)
{
  *a1 = off_10043E9B0;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet((a1 + 1));
  a1[2] = 0;
  a1[3] = 0;
  a1[4] = 0;
  return a1;
}

uint64_t sub_100143168(uint64_t a1)
{
  *a1 = off_10043F560;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet((a1 + 8));
  *(a1 + 52) = 0;
  *(a1 + 56) = 0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0;
  return a1;
}

void *sub_1001431D0(void *a1)
{
  *a1 = off_10043F610;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet((a1 + 1));
  a1[2] = 0;
  a1[3] = 0;
  a1[4] = 0;
  return a1;
}

uint64_t sub_100143230(uint64_t a1)
{
  *a1 = off_10043F6C0;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet((a1 + 8));
  *(a1 + 44) = 0;
  *(a1 + 48) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 16) = 0;
  *(a1 + 40) = 0;
  return a1;
}

uint64_t sub_100143298(uint64_t a1)
{
  *a1 = off_10043F770;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet((a1 + 8));
  *(a1 + 52) = 0;
  *(a1 + 56) = 0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0;
  return a1;
}

uint64_t sub_100143300(uint64_t a1)
{
  *a1 = off_10043F820;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  return a1;
}

void *sub_100143364(void *a1)
{
  *a1 = off_10043F8D0;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet((a1 + 1));
  a1[2] = 0;
  a1[3] = 0;
  a1[4] = 0;
  return a1;
}

uint64_t sub_1001433C4(uint64_t a1)
{
  *a1 = off_10043F980;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet((a1 + 8));
  *(a1 + 40) = 0;
  *(a1 + 36) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 31) = 0;
  return a1;
}

uint64_t sub_10014342C(uint64_t result)
{
  v1 = result;
  if (qword_10045E208)
  {
    *(result + 48) = qword_10045E208;
    v2 = qword_10045E210;
    if (qword_10045E210)
    {
      goto LABEL_3;
    }
  }

  else
  {
    result = sub_1001404F8(result);
    v1[6] = qword_10045E208;
    v2 = qword_10045E210;
    if (qword_10045E210)
    {
LABEL_3:
      v1[7] = v2;
      v3 = qword_10045E218;
      if (qword_10045E218)
      {
        goto LABEL_4;
      }

      goto LABEL_25;
    }
  }

  result = sub_1001404F8(result);
  v1[7] = qword_10045E210;
  v3 = qword_10045E218;
  if (qword_10045E218)
  {
LABEL_4:
    v1[8] = v3;
    v4 = qword_10045E200;
    if (qword_10045E200)
    {
      goto LABEL_5;
    }

    goto LABEL_26;
  }

LABEL_25:
  result = sub_1001404F8(result);
  v1[8] = qword_10045E218;
  v4 = qword_10045E200;
  if (qword_10045E200)
  {
LABEL_5:
    v1[9] = v4;
    v5 = qword_10045E228;
    if (qword_10045E228)
    {
      goto LABEL_6;
    }

    goto LABEL_27;
  }

LABEL_26:
  result = sub_1001404F8(result);
  v1[9] = qword_10045E200;
  v5 = qword_10045E228;
  if (qword_10045E228)
  {
LABEL_6:
    v1[10] = v5;
    v6 = qword_10045E230;
    if (qword_10045E230)
    {
      goto LABEL_7;
    }

    goto LABEL_28;
  }

LABEL_27:
  result = sub_1001404F8(result);
  v1[10] = qword_10045E228;
  v6 = qword_10045E230;
  if (qword_10045E230)
  {
LABEL_7:
    v1[11] = v6;
    v7 = qword_10045E1F0;
    if (qword_10045E1F0)
    {
      goto LABEL_8;
    }

    goto LABEL_29;
  }

LABEL_28:
  result = sub_1001404F8(result);
  v1[11] = qword_10045E230;
  v7 = qword_10045E1F0;
  if (qword_10045E1F0)
  {
LABEL_8:
    v1[13] = v7;
    v8 = qword_10045E238;
    if (qword_10045E238)
    {
      goto LABEL_9;
    }

    goto LABEL_30;
  }

LABEL_29:
  result = sub_1001404F8(result);
  v1[13] = qword_10045E1F0;
  v8 = qword_10045E238;
  if (qword_10045E238)
  {
LABEL_9:
    v1[18] = v8;
    v9 = qword_10045E248;
    if (qword_10045E248)
    {
      goto LABEL_10;
    }

    goto LABEL_31;
  }

LABEL_30:
  result = sub_1001404F8(result);
  v1[18] = qword_10045E238;
  v9 = qword_10045E248;
  if (qword_10045E248)
  {
LABEL_10:
    v1[20] = v9;
    v10 = qword_10045E2E8;
    if (qword_10045E2E8)
    {
      goto LABEL_11;
    }

    goto LABEL_32;
  }

LABEL_31:
  result = sub_1001404F8(result);
  v1[20] = qword_10045E248;
  v10 = qword_10045E2E8;
  if (qword_10045E2E8)
  {
LABEL_11:
    v1[21] = v10;
    v11 = qword_10045E240;
    if (qword_10045E240)
    {
      goto LABEL_12;
    }

    goto LABEL_33;
  }

LABEL_32:
  result = sub_1001404F8(result);
  v1[21] = qword_10045E2E8;
  v11 = qword_10045E240;
  if (qword_10045E240)
  {
LABEL_12:
    v1[22] = v11;
    v12 = qword_10045E1F8;
    if (qword_10045E1F8)
    {
      goto LABEL_13;
    }

    goto LABEL_34;
  }

LABEL_33:
  result = sub_1001404F8(result);
  v1[22] = qword_10045E240;
  v12 = qword_10045E1F8;
  if (qword_10045E1F8)
  {
LABEL_13:
    v1[25] = v12;
    v13 = qword_10045E258;
    if (qword_10045E258)
    {
      goto LABEL_14;
    }

    goto LABEL_35;
  }

LABEL_34:
  result = sub_1001404F8(result);
  v1[25] = qword_10045E1F8;
  v13 = qword_10045E258;
  if (qword_10045E258)
  {
LABEL_14:
    v1[26] = v13;
    v14 = qword_10045E260;
    if (qword_10045E260)
    {
      goto LABEL_15;
    }

    goto LABEL_36;
  }

LABEL_35:
  result = sub_1001404F8(result);
  v1[26] = qword_10045E258;
  v14 = qword_10045E260;
  if (qword_10045E260)
  {
LABEL_15:
    v1[27] = v14;
    v15 = qword_10045E1F8;
    if (qword_10045E1F8)
    {
      goto LABEL_16;
    }

    goto LABEL_37;
  }

LABEL_36:
  result = sub_1001404F8(result);
  v1[27] = qword_10045E260;
  v15 = qword_10045E1F8;
  if (qword_10045E1F8)
  {
LABEL_16:
    v1[29] = v15;
    v16 = qword_10045E218;
    if (qword_10045E218)
    {
      goto LABEL_17;
    }

    goto LABEL_38;
  }

LABEL_37:
  result = sub_1001404F8(result);
  v1[29] = qword_10045E1F8;
  v16 = qword_10045E218;
  if (qword_10045E218)
  {
LABEL_17:
    v1[30] = v16;
    v17 = qword_10045E2F0;
    if (qword_10045E2F0)
    {
      goto LABEL_18;
    }

    goto LABEL_39;
  }

LABEL_38:
  result = sub_1001404F8(result);
  v1[30] = qword_10045E218;
  v17 = qword_10045E2F0;
  if (qword_10045E2F0)
  {
LABEL_18:
    v1[32] = v17;
    v18 = qword_10045E308;
    if (qword_10045E308)
    {
      goto LABEL_19;
    }

    goto LABEL_40;
  }

LABEL_39:
  result = sub_1001404F8(result);
  v1[32] = qword_10045E2F0;
  v18 = qword_10045E308;
  if (qword_10045E308)
  {
LABEL_19:
    v1[33] = v18;
    v19 = qword_10045E318;
    if (qword_10045E318)
    {
      goto LABEL_20;
    }

    goto LABEL_41;
  }

LABEL_40:
  result = sub_1001404F8(result);
  v1[33] = qword_10045E308;
  v19 = qword_10045E318;
  if (qword_10045E318)
  {
LABEL_20:
    v1[34] = v19;
    v20 = qword_10045E2F8;
    if (qword_10045E2F8)
    {
      goto LABEL_21;
    }

LABEL_42:
    result = sub_1001404F8(result);
    v1[35] = qword_10045E2F8;
    v21 = qword_10045E300;
    if (qword_10045E300)
    {
      goto LABEL_22;
    }

    goto LABEL_43;
  }

LABEL_41:
  result = sub_1001404F8(result);
  v1[34] = qword_10045E318;
  v20 = qword_10045E2F8;
  if (!qword_10045E2F8)
  {
    goto LABEL_42;
  }

LABEL_21:
  v1[35] = v20;
  v21 = qword_10045E300;
  if (qword_10045E300)
  {
LABEL_22:
    v1[36] = v21;
    return result;
  }

LABEL_43:
  result = sub_1001404F8(result);
  v1[36] = qword_10045E300;
  return result;
}

uint64_t sub_10014379C(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    v2 = a1;
    v3 = a2;
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v9);
    a2 = v3;
    a1 = v2;
  }

  LOBYTE(v4) = *(a2 + 40);
  if (!v4)
  {
    return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
  }

  if ((*(a2 + 40) & 1) == 0)
  {
    if ((*(a2 + 40) & 2) == 0)
    {
      goto LABEL_6;
    }

LABEL_10:
    v8 = *(a2 + 24);
    *(a1 + 40) |= 2u;
    *(a1 + 24) = v8;
    if ((*(a2 + 40) & 4) == 0)
    {
      return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
    }

    goto LABEL_7;
  }

  v7 = *(a2 + 16);
  *(a1 + 40) |= 1u;
  *(a1 + 16) = v7;
  v4 = *(a2 + 40);
  if ((v4 & 2) != 0)
  {
    goto LABEL_10;
  }

LABEL_6:
  if ((v4 & 4) != 0)
  {
LABEL_7:
    v5 = *(a2 + 32);
    *(a1 + 40) |= 4u;
    *(a1 + 32) = v5;
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
}

void sub_100143884(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_100143898(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_1001438AC(uint64_t a1)
{
  *a1 = off_10043E010;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 8));

  wireless_diagnostics::google::protobuf::Message::~Message(a1);
}

void sub_100143900(uint64_t a1)
{
  *a1 = off_10043E010;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 8));
  wireless_diagnostics::google::protobuf::Message::~Message(a1);

  operator delete();
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_100143A00(uint64_t a1)
{
  if (*(a1 + 40))
  {
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
  }

  v2 = *(a1 + 8);
  result = (a1 + 8);
  *(result + 8) = 0;
  if (v2)
  {
    return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(result);
  }

  return result;
}

uint64_t sub_100143A24(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
{
  do
  {
    while (1)
    {
      v6 = *(this + 1);
      if (v6 >= *(this + 2) || (TagFallback = *v6, (TagFallback & 0x80000000) != 0))
      {
        TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(this);
        *(this + 8) = TagFallback;
        if (!TagFallback)
        {
          return 1;
        }
      }

      else
      {
        *(this + 8) = TagFallback;
        *(this + 1) = v6 + 1;
        if (!TagFallback)
        {
          return 1;
        }
      }

      v8 = TagFallback >> 3;
      v9 = TagFallback & 7;
      if (TagFallback >> 3 == 3)
      {
        break;
      }

      if (v8 == 2)
      {
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_18;
        }

        v14 = *(this + 1);
        v10 = *(this + 2);
        if (v14 >= v10)
        {
          goto LABEL_28;
        }

LABEL_25:
        v16 = *v14;
        if (v16 < 0)
        {
          goto LABEL_28;
        }

        *(a1 + 24) = v16;
        v17 = v14 + 1;
        *(this + 1) = v17;
        *(a1 + 40) |= 2u;
        if (v17 < v10)
        {
LABEL_30:
          if (*v17 == 29)
          {
            *(this + 1) = v17 + 1;
LABEL_32:
            v19 = 0;
            if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, &v19) & 1) == 0)
            {
              return 0;
            }

            *(a1 + 32) = v19;
            *(a1 + 40) |= 4u;
            if (*(this + 1) == *(this + 2) && (*(this + 11) || *(this + 6) == *(this + 10)))
            {
              *(this + 8) = 0;
              result = 1;
              *(this + 36) = 1;
              return result;
            }
          }
        }
      }

      else
      {
        if (v8 != 1 || (TagFallback & 7) != 0)
        {
          goto LABEL_18;
        }

        v11 = *(this + 1);
        v10 = *(this + 2);
        if (v11 >= v10 || (v12 = *v11, v12 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(this, (a1 + 16));
          if (!result)
          {
            return result;
          }

          v13 = *(this + 1);
          v10 = *(this + 2);
          *(a1 + 40) |= 1u;
          if (v13 < v10)
          {
            goto LABEL_23;
          }
        }

        else
        {
          *(a1 + 16) = v12;
          v13 = v11 + 1;
          *(this + 1) = v13;
          *(a1 + 40) |= 1u;
          if (v13 < v10)
          {
LABEL_23:
            if (*v13 == 16)
            {
              v14 = v13 + 1;
              *(this + 1) = v14;
              if (v14 < v10)
              {
                goto LABEL_25;
              }

LABEL_28:
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(this, (a1 + 24));
              if (!result)
              {
                return result;
              }

              v17 = *(this + 1);
              v18 = *(this + 2);
              *(a1 + 40) |= 2u;
              if (v17 < v18)
              {
                goto LABEL_30;
              }
            }
          }
        }
      }
    }

    if (v9 == 5)
    {
      goto LABEL_32;
    }

LABEL_18:
    if (v9 == 4)
    {
      return 1;
    }
  }

  while ((wireless_diagnostics::google::protobuf::internal::WireFormat::SkipField(this, TagFallback, a1 + 8, a4) & 1) != 0);
  return 0;
}

uint64_t sub_100143C4C(uint64_t result, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 40);
  if (v6)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(result + 16), a2, a4);
    v6 = *(v5 + 40);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(2, *(v5 + 24), a2, a4);
  if ((*(v5 + 40) & 4) == 0)
  {
LABEL_4:
    v9 = *(v5 + 8);
    v8 = (v5 + 8);
    v7 = v9;
    if (!v9)
    {
      return result;
    }

    goto LABEL_9;
  }

LABEL_8:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(3, a2, *(v5 + 32), a3);
  v10 = *(v5 + 8);
  v8 = (v5 + 8);
  v7 = v10;
  if (!v10)
  {
    return result;
  }

LABEL_9:
  if (*v7 != v7[1])
  {

    return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFields(v8, a2, a3);
  }

  return result;
}

uint64_t sub_100143D04(wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a2, unsigned __int8 *a3)
{
  v4 = *(this + 10);
  if (v4)
  {
    v8 = *(this + 2);
    *a2 = 8;
    a2 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64ToArray(v8, a2 + 1, a3);
    v4 = *(this + 10);
    if ((v4 & 2) == 0)
    {
LABEL_3:
      if ((v4 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if ((v4 & 2) == 0)
  {
    goto LABEL_3;
  }

  v9 = *(this + 3);
  *a2 = 16;
  a2 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64ToArray(v9, a2 + 1, a3);
  if ((*(this + 10) & 4) == 0)
  {
LABEL_4:
    v7 = *(this + 1);
    v6 = (this + 8);
    v5 = v7;
    if (!v7)
    {
      return a2;
    }

    goto LABEL_9;
  }

LABEL_8:
  v10 = *(this + 8);
  *a2 = 29;
  *(a2 + 1) = v10;
  a2 += 5;
  v11 = *(this + 1);
  v6 = (this + 8);
  v5 = v11;
  if (!v11)
  {
    return a2;
  }

LABEL_9:
  if (*v5 == v5[1])
  {
    return a2;
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v6, a2, a3);
}

uint64_t sub_100143DDC(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  LOBYTE(v3) = *(a1 + 40);
  if (v3)
  {
    if (*(a1 + 40))
    {
      LODWORD(v4) = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(a1 + 16), a2) + 1;
      v3 = *(a1 + 40);
      if ((v3 & 2) == 0)
      {
        goto LABEL_9;
      }
    }

    else
    {
      LODWORD(v4) = 0;
      if ((*(a1 + 40) & 2) == 0)
      {
LABEL_9:
        if ((v3 & 4) != 0)
        {
          v4 = (v4 + 5);
        }

        else
        {
          v4 = v4;
        }

        v5 = (a1 + 8);
        v6 = *(a1 + 8);
        if (!v6)
        {
          goto LABEL_6;
        }

        goto LABEL_13;
      }
    }

    LODWORD(v4) = v4 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(a1 + 24), a2) + 1;
    v3 = *(a1 + 40);
    goto LABEL_9;
  }

  v4 = 0;
  v5 = (a1 + 8);
  v6 = *(a1 + 8);
  if (!v6)
  {
LABEL_6:
    *(a1 + 36) = v4;
    return v4;
  }

LABEL_13:
  if (*v6 == v6[1])
  {
    goto LABEL_6;
  }

  v8 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize(v5, a2) + v4;
  *(a1 + 36) = v8;
  return v8;
}