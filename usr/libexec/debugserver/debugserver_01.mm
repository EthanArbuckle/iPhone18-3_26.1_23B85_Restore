unint64_t sub_100011CB8(uint64_t a1, uint64_t a2, unint64_t a3, int __c)
{
  if (a3)
  {
    v8 = 0;
    v9 = *(a1 + 32);
    while (1)
    {
      v10 = *(a1 + 31);
      if ((v10 & 0x8000000000000000) != 0)
      {
        v10 = *(a1 + 16);
      }

      if (v9 >= v10)
      {
        break;
      }

      v11 = sub_1000114F8(a1);
      if (v11 == -1)
      {
        *(a1 + 32) = -1;
        LOBYTE(v11) = __c;
      }

      *(a2 + v8) = v11;
      v9 = *(a1 + 32);
      if (v9 == -1)
      {
        break;
      }

      if (a3 == ++v8)
      {
        return a3;
      }
    }
  }

  else
  {
    v8 = 0;
  }

  if (a3 > v8)
  {
    memset((a2 + v8), __c, a3 - v8);
  }

  return v8;
}

std::string::size_type sub_100011D78(uint64_t a1, std::string *this)
{
  if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
  {
    *this->__r_.__value_.__l.__data_ = 0;
    this->__r_.__value_.__l.__size_ = 0;
  }

  else
  {
    this->__r_.__value_.__s.__data_[0] = 0;
    *(&this->__r_.__value_.__s + 23) = 0;
  }

  v4 = *(a1 + 32);
  v5 = *(a1 + 31);
  if ((v5 & 0x8000000000000000) != 0)
  {
    v5 = *(a1 + 16);
    if (v4 < v5)
    {
      goto LABEL_6;
    }

LABEL_8:
    v6 = 0;
    goto LABEL_9;
  }

  if (v4 >= v5)
  {
    goto LABEL_8;
  }

LABEL_6:
  v6 = (v5 - v4) >> 1;
LABEL_9:
  std::string::reserve(this, v6);
  while (1)
  {
    v7 = sub_1000114F8(a1);
    if (!v7)
    {
      break;
    }

    if (v7 == -1)
    {
      *(a1 + 32) = -1;
      break;
    }

    std::string::append(this, 1uLL, v7);
  }

  if ((this->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    return HIBYTE(this->__r_.__value_.__r.__words[2]);
  }

  else
  {
    return this->__r_.__value_.__l.__size_;
  }
}

uint64_t sub_100011E38(uint64_t a1, std::string *a2, std::string *a3)
{
  v5 = *(a1 + 32);
  v6 = *(a1 + 31);
  if ((v6 & 0x8000000000000000) != 0)
  {
    if (v5 >= *(a1 + 16))
    {
LABEL_8:
      result = 0;
      v12 = -1;
      goto LABEL_9;
    }
  }

  else if (v5 >= v6)
  {
    goto LABEL_8;
  }

  v8 = std::string::find((a1 + 8), 58, v5);
  if (v8 == -1)
  {
    goto LABEL_8;
  }

  v9 = v8;
  v10 = std::string::find((a1 + 8), 59, v8);
  if (v10 == -1)
  {
    goto LABEL_8;
  }

  v11 = v10;
  std::string::assign(a2, (a1 + 8), *(a1 + 32), v9 - *(a1 + 32));
  std::string::assign(a3, (a1 + 8), v9 + 1, v11 - (v9 + 1));
  v12 = v11 + 1;
  result = 1;
LABEL_9:
  *(a1 + 32) = v12;
  return result;
}

double sub_100011F08(_OWORD *a1)
{
  result = 0.0;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

size_t sub_100011F38@<X0>(size_t result@<X0>, _BYTE *a2@<X8>)
{
  memset(v7, 0, 46);
  v3 = *(result + 1);
  if (v3 == 30)
  {
    v4 = (result + 8);
    v5 = 30;
  }

  else
  {
    if (v3 != 2)
    {
LABEL_10:
      a2[23] = 0;
      goto LABEL_14;
    }

    v4 = (result + 4);
    v5 = 2;
  }

  result = inet_ntop(v5, v4, v7, 0x2Eu);
  if (!result)
  {
    goto LABEL_10;
  }

  result = strlen(v7);
  if (result > 0x7FFFFFFFFFFFFFF7)
  {
    sub_100008888();
  }

  v6 = result;
  if (result >= 0x17)
  {
    operator new();
  }

  a2[23] = result;
  if (result)
  {
    result = memcpy(a2, v7, result);
  }

  a2 += v6;
LABEL_14:
  *a2 = 0;
  return result;
}

uint64_t sub_100012068(uint64_t a1)
{
  v1 = *(a1 + 1);
  if (v1 == 30 || v1 == 2)
  {
    return bswap32(*(a1 + 2)) >> 16;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100012090(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 1);
  if (v2 != 30 && v2 != 2)
  {
    return 0;
  }

  *(a1 + 2) = __rev16(a2);
  return 1;
}

void sub_1000120B8(const char *a1@<X0>, const char *a2@<X1>, int a3@<W2>, int a4@<W3>, int a5@<W4>, int a6@<W5>, void *a7@<X8>)
{
  *a7 = 0;
  a7[1] = 0;
  a7[2] = 0;
  memset(&v28.ai_addrlen, 0, 32);
  v28.ai_socktype = a4;
  v28.ai_protocol = a5;
  v28.ai_flags = a6;
  v28.ai_family = a3;
  v27 = 0;
  v8 = getaddrinfo(a1, a2, &v28, &v27);
  v9 = v27;
  if (!v8 && v27)
  {
    v10 = 0;
    do
    {
      v35 = 0u;
      v36 = 0u;
      v34 = 0u;
      v32 = 0u;
      v33 = 0u;
      v30 = 0u;
      v31 = 0u;
      __dst = 0u;
      ai_addr = v9->ai_addr;
      if (ai_addr)
      {
        ai_addrlen = v9->ai_addrlen;
        if ((ai_addrlen - 1) <= 0x7F)
        {
          memcpy(&__dst, ai_addr, ai_addrlen);
        }
      }

      if (((v10 >> 7) + 1) >> 57)
      {
        a7[1] = v10;
        a7[2] = 0;
        *a7 = 0;
        sub_100008888();
      }

      if (v10 >> 7 != -1)
      {
        if (!(((v10 >> 7) + 1) >> 57))
        {
          operator new();
        }

        a7[1] = v10;
        a7[2] = 0;
        *a7 = 0;
        sub_100008888();
      }

      v13 = (v10 >> 7 << 7);
      v14 = v34;
      v15 = v35;
      v13[4] = v33;
      v13[5] = v14;
      v16 = v36;
      v13[6] = v15;
      v13[7] = v16;
      v17 = v30;
      *v13 = __dst;
      v13[1] = v17;
      v18 = v32;
      v13[2] = v31;
      v13[3] = v18;
      if (v10)
      {
        v19 = 0;
        v20 = 0;
        do
        {
          v21 = *v19;
          v22 = v19[1];
          v23 = v19[3];
          v20[2] = v19[2];
          v20[3] = v23;
          *v20 = v21;
          v20[1] = v22;
          v24 = v19[4];
          v25 = v19[5];
          v26 = v19[7];
          v20[6] = v19[6];
          v20[7] = v26;
          v20[4] = v24;
          v20[5] = v25;
          v19 += 8;
          v20 += 8;
        }

        while (v19 != v10);
      }

      v10 = (v13 + 8);
      v9 = v9->ai_next;
    }

    while (v9);
    a7[1] = v10;
    a7[2] = 0;
    *a7 = 0;
    v9 = v27;
  }

  if (v9)
  {
    freeaddrinfo(v9);
  }
}

uint64_t sub_100012300(uint64_t a1, int a2, unsigned int a3)
{
  if (a2 == 30)
  {
    *a1 = 7708;
    *(a1 + 2) = __rev16(a3);
    *(a1 + 8) = in6addr_any;
    return 1;
  }

  else if (a2 == 2)
  {
    *a1 = 528;
    *(a1 + 2) = __rev16(a3);
    *(a1 + 4) = 0;
    return 1;
  }

  else
  {
    *(a1 + 96) = 0u;
    *(a1 + 112) = 0u;
    *(a1 + 64) = 0u;
    *(a1 + 80) = 0u;
    *(a1 + 32) = 0u;
    *(a1 + 48) = 0u;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    return 0;
  }
}

BOOL sub_100012370(uint64_t a1)
{
  if (*(a1 + 1) == 2)
  {
    v1 = *(a1 + 4);
  }

  else
  {
    v2 = bswap64(*(a1 + 8));
    v3 = bswap64(*in6addr_any.__u6_addr8);
    if (v2 == v3 && (v2 = bswap64(*(a1 + 16)), v3 = bswap64(*&in6addr_any.__u6_addr32[2]), v2 == v3))
    {
      v1 = 0;
    }

    else if (v2 < v3)
    {
      v1 = -1;
    }

    else
    {
      v1 = 1;
    }
  }

  return v1 == 0;
}

BOOL sub_1000123DC(uint64_t a1)
{
  if (*(a1 + 1) == 2)
  {
    return *(a1 + 4) == 16777343;
  }

  return *(a1 + 8) == *in6addr_loopback.__u6_addr8 && *(a1 + 16) == *&in6addr_loopback.__u6_addr32[2];
}

BOOL sub_100012420(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = a1[1];
  if (v2 != a2[1] || *a1 != *a2)
  {
    return 0;
  }

  if (v2 != 30)
  {
    if (v2 == 2)
    {
      return *(a1 + 1) == *(a2 + 1);
    }

    return 0;
  }

  return *(a1 + 1) == *(a2 + 1) && *(a1 + 2) == *(a2 + 2);
}

double sub_100012484(void *a1)
{
  result = NAN;
  *a1 = -1;
  return result;
}

int *sub_100012490(int *a1)
{
  v2 = *a1;
  if (v2 >= 1)
  {
    close(v2);
    *a1 = -1;
  }

  v3 = a1[1];
  if (v3 >= 1)
  {
    close(v3);
    a1[1] = -1;
  }

  return a1;
}

uint64_t sub_1000124E4(int *a1, int a2)
{
  v3 = posix_openpt(a2);
  *a1 = v3;
  if (v3 < 0)
  {
    return 4294967294;
  }

  v4 = grantpt(v3);
  v5 = *a1;
  if (v4 < 0)
  {
    result = 4294967293;
    if (v5 <= 0)
    {
      return result;
    }

    goto LABEL_7;
  }

  if ((unlockpt(*a1) & 0x80000000) == 0)
  {
    return 0;
  }

  v5 = *a1;
  result = 4294967292;
  if (*a1 >= 1)
  {
LABEL_7:
    v7 = result;
    close(v5);
    result = v7;
    *a1 = -1;
  }

  return result;
}

char *sub_100012574(int *a1)
{
  v1 = *a1;
  if (v1 < 0)
  {
    return 0;
  }

  else
  {
    return ptsname(v1);
  }
}

uint64_t sub_100012588(int *a1, int *a2)
{
  v4 = posix_openpt(131074);
  *a1 = v4;
  if (v4 < 0)
  {
    result = 0xFFFFFFFFLL;
    v12 = -2;
    goto LABEL_33;
  }

  v5 = grantpt(v4);
  v6 = *a1;
  if (v5 < 0)
  {
    v12 = -3;
    if (v6 <= 0)
    {
LABEL_29:
      result = 0xFFFFFFFFLL;
      goto LABEL_33;
    }

LABEL_27:
    close(v6);
    result = 0xFFFFFFFFLL;
    *a1 = -1;
    goto LABEL_33;
  }

  if (unlockpt(v6) < 0)
  {
    v6 = *a1;
    v12 = -4;
    if (*a1 < 1)
    {
      goto LABEL_29;
    }

    goto LABEL_27;
  }

  *a2 = 0;
  result = fork();
  if ((result & 0x80000000) != 0)
  {
    v12 = -7;
  }

  else
  {
    if (result)
    {
      return result;
    }

    setsid();
    v8 = a1[1];
    if (v8 >= 1)
    {
      close(v8);
      a1[1] = -1;
    }

    if (*a1 < 0)
    {
      result = 0;
    }

    else
    {
      result = ptsname(*a1);
      if (result)
      {
        v9 = open(result, 2);
        a1[1] = v9;
        if (v9 < 0)
        {
          result = 0;
          v12 = -6;
        }

        else
        {
          *a2 = 0;
          if (*a1 >= 1)
          {
            close(*a1);
            *a1 = -1;
            v9 = a1[1];
          }

          if (ioctl(v9, 0x20007461uLL, 0) < 0)
          {
            *a2 = -9;
          }

          if (dup2(a1[1], 0))
          {
            v10 = *a2;
            if (!*a2)
            {
              v10 = -10;
            }

            *a2 = v10;
          }

          if (dup2(a1[1], 1) != 1)
          {
            v11 = *a2;
            if (!*a2)
            {
              v11 = -11;
            }

            *a2 = v11;
          }

          if (dup2(a1[1], 2) == 2)
          {
            return 0;
          }

          result = 0;
          if (*a2)
          {
            v12 = *a2;
          }

          else
          {
            v12 = -12;
          }
        }

        goto LABEL_33;
      }
    }

    v12 = -5;
  }

LABEL_33:
  *a2 = v12;
  return result;
}

uint64_t sub_100012750(uint64_t a1, int a2, int a3)
{
  if (pthread_mutex_init(a1, 0))
  {
    sub_10005917C();
  }

  pthread_cond_init((a1 + 64), 0);
  pthread_cond_init((a1 + 112), 0);
  *(a1 + 160) = a2;
  *(a1 + 164) = a3;
  *(a1 + 168) = 0;
  return a1;
}

uint64_t sub_1000127B4(uint64_t a1)
{
  pthread_cond_destroy((a1 + 112));
  pthread_cond_destroy((a1 + 64));
  if (pthread_mutex_destroy(a1) && !pthread_mutex_unlock(a1))
  {
    pthread_mutex_destroy(a1);
  }

  return a1;
}

uint64_t sub_100012808(uint64_t a1)
{
  pthread_mutex_lock(a1);
  v2 = *(a1 + 160);
  pthread_mutex_unlock(a1);
  return v2;
}

pthread_mutex_t *sub_10001283C(pthread_mutex_t *result, int a2)
{
  if (a2)
  {
    v3 = result;
    pthread_mutex_lock(result);
    v4 = *&v3[2].__opaque[24];
    *&v3[2].__opaque[24] = v4 | a2;
    if (v4 != (v4 | a2))
    {
      pthread_cond_broadcast(&v3[1]);
    }

    return pthread_mutex_unlock(v3);
  }

  return result;
}

pthread_mutex_t *sub_10001289C(pthread_mutex_t *result, int a2)
{
  if (a2)
  {
    v3 = result;
    pthread_mutex_lock(result);
    v4 = *&v3[2].__opaque[24];
    v5 = v4 & ~a2;
    *&v3[2].__opaque[24] = v5;
    if (v4 != v5)
    {
      pthread_cond_broadcast(&v3[1].__opaque[40]);
    }

    return pthread_mutex_unlock(v3);
  }

  return result;
}

uint64_t sub_1000128FC(uint64_t a1, unsigned int a2, const timespec *a3)
{
  pthread_mutex_lock(a1);
  while (1)
  {
    v7 = *(a1 + 160);
    v8 = v7 & a2;
    if ((v7 & a2) != 0)
    {
      break;
    }

    v9 = (a1 + 64);
    if (a3)
    {
      v6 = pthread_cond_timedwait(v9, a1, a3);
      if (v6 == 60)
      {
        v8 = *(a1 + 160) & a2;
        break;
      }
    }

    else
    {
      v6 = pthread_cond_wait(v9, a1);
    }

    if (v6)
    {
      v8 = 0;
      break;
    }
  }

  pthread_mutex_unlock(a1);
  return v8;
}

uint64_t sub_100012980(uint64_t a1, unsigned int a2, const timespec *a3)
{
  pthread_mutex_lock(a1);
  while ((*(a1 + 160) & a2) != 0)
  {
    v6 = (a1 + 112);
    if (a3)
    {
      if (pthread_cond_timedwait(v6, a1, a3))
      {
LABEL_6:
        v7 = *(a1 + 160) & a2;
        goto LABEL_8;
      }
    }

    else if (pthread_cond_wait(v6, a1))
    {
      goto LABEL_6;
    }
  }

  v7 = 0;
LABEL_8:
  pthread_mutex_unlock(a1);
  return v7;
}

uint64_t sub_100012A00(uint64_t a1, int a2, const timespec *a3)
{
  v3 = *(a1 + 168) & a2;
  if (!v3)
  {
    return 0;
  }

  pthread_mutex_lock(a1);
  while ((*(a1 + 160) & v3) != 0)
  {
    v6 = (a1 + 112);
    if (a3)
    {
      if (pthread_cond_timedwait(v6, a1, a3))
      {
LABEL_7:
        v7 = *(a1 + 160) & v3;
        goto LABEL_10;
      }
    }

    else if (pthread_cond_wait(v6, a1))
    {
      goto LABEL_7;
    }
  }

  v7 = 0;
LABEL_10:
  pthread_mutex_unlock(a1);
  return v7;
}

uint64_t sub_100012A90(uint64_t a1)
{
  *a1 = off_10006CD38;
  if (*(a1 + 12))
  {
    sub_1000131D8(a1);
  }

  *(a1 + 12) = 0;
  v2 = *(a1 + 448);
  if (v2)
  {
    *(a1 + 456) = v2;
    operator delete(v2);
  }

  if (*(a1 + 439) < 0)
  {
    operator delete(*(a1 + 416));
    if ((*(a1 + 415) & 0x80000000) == 0)
    {
LABEL_7:
      v3 = *(a1 + 368);
      if (!v3)
      {
        goto LABEL_8;
      }

      goto LABEL_17;
    }
  }

  else if ((*(a1 + 415) & 0x80000000) == 0)
  {
    goto LABEL_7;
  }

  operator delete(*(a1 + 392));
  v3 = *(a1 + 368);
  if (!v3)
  {
LABEL_8:
    v4 = *(a1 + 344);
    if (!v4)
    {
      goto LABEL_9;
    }

    goto LABEL_24;
  }

LABEL_17:
  v6 = *(a1 + 376);
  v7 = v3;
  if (v6 != v3)
  {
    do
    {
      v8 = *(v6 - 1);
      v6 -= 3;
      if (v8 < 0)
      {
        operator delete(*v6);
      }
    }

    while (v6 != v3);
    v7 = *(a1 + 368);
  }

  *(a1 + 376) = v3;
  operator delete(v7);
  v4 = *(a1 + 344);
  if (!v4)
  {
LABEL_9:
    if ((*(a1 + 343) & 0x80000000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_31;
  }

LABEL_24:
  v9 = *(a1 + 352);
  v10 = v4;
  if (v9 != v4)
  {
    do
    {
      v11 = *(v9 - 1);
      v9 -= 3;
      if (v11 < 0)
      {
        operator delete(*v9);
      }
    }

    while (v9 != v4);
    v10 = *(a1 + 344);
  }

  *(a1 + 352) = v4;
  operator delete(v10);
  if (*(a1 + 343) < 0)
  {
LABEL_31:
    operator delete(*(a1 + 320));
  }

LABEL_10:
  sub_1000127B4(a1 + 120);
  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
    if ((*(a1 + 87) & 0x80000000) == 0)
    {
LABEL_12:
      if ((*(a1 + 63) & 0x80000000) == 0)
      {
        goto LABEL_13;
      }

LABEL_34:
      operator delete(*(a1 + 40));
      if ((*(a1 + 39) & 0x80000000) == 0)
      {
        return a1;
      }

LABEL_35:
      operator delete(*(a1 + 16));
      return a1;
    }
  }

  else if ((*(a1 + 87) & 0x80000000) == 0)
  {
    goto LABEL_12;
  }

  operator delete(*(a1 + 64));
  if (*(a1 + 63) < 0)
  {
    goto LABEL_34;
  }

LABEL_13:
  if (*(a1 + 39) < 0)
  {
    goto LABEL_35;
  }

  return a1;
}

void sub_100012C44(uint64_t a1, int a2)
{
  if (*(a1 + 12))
  {
    sub_1000131D8(a1);
  }

  *(a1 + 12) = a2;
  if (a2)
  {

    sub_1000132E0(a1);
  }
}

void sub_100012CA4(uint64_t a1)
{
  sub_100012A90(a1);

  operator delete();
}

char *sub_100012CDC(uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 368);
  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 376) - v2) >> 3) <= a2)
  {
    return 0;
  }

  result = (v2 + 24 * a2);
  if (result[23] < 0)
  {
    return *result;
  }

  return result;
}

void sub_100012D20(uint64_t a1, char *__s)
{
  if (!__s)
  {
    return;
  }

  v4 = strlen(__s);
  if (v4 > 0x7FFFFFFFFFFFFFF7)
  {
    goto LABEL_81;
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  *(&__dst.__r_.__value_.__s + 23) = v4;
  if (v4)
  {
    memcpy(&__dst, __s, v4);
  }

  __dst.__r_.__value_.__s.__data_[v5] = 0;
  v6 = std::string::find(&__dst, 61, 0);
  size = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
  if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_dst = &__dst;
  }

  else
  {
    size = __dst.__r_.__value_.__l.__size_;
    p_dst = __dst.__r_.__value_.__r.__words[0];
  }

  v9 = size >= v6 ? v6 : size;
  if (v9 > 0x7FFFFFFFFFFFFFF7)
  {
LABEL_81:
    sub_100008888();
  }

  if (v9 >= 0x17)
  {
    operator new();
  }

  v33 = v9;
  if (v9)
  {
    memmove(&__p, p_dst, v9);
  }

  *(&__p + v9) = 0;
  if ((v33 & 0x8000000000000000) != 0)
  {
    if (v32)
    {
      p_p = __p;
      if (*(__p + v32 - 1) == 61)
      {
        v10 = --v32;
        goto LABEL_27;
      }
    }
  }

  else if (v33 && *(&__p + v33 - 1) == 61)
  {
    v10 = v33-- - 1;
    p_p = &__p;
LABEL_27:
    p_p[v10] = 0;
  }

  __sa = __s;
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

  v12 = *(a1 + 368);
  v13 = *(a1 + 376);
  while (v12 != v13)
  {
    v14 = std::string::find(v12, 61, 0);
    v15 = *(v12 + 23);
    if ((v15 & 0x8000000000000000) != 0)
    {
      v16 = *v12;
      v15 = *(v12 + 8);
    }

    else
    {
      v16 = v12;
    }

    if (v15 >= v14)
    {
      v17 = v14;
    }

    else
    {
      v17 = v15;
    }

    if (v17 > 0x7FFFFFFFFFFFFFF7)
    {
      goto LABEL_81;
    }

    if (v17 >= 0x17)
    {
      operator new();
    }

    *(&__dst.__r_.__value_.__s + 23) = v17;
    if (v17)
    {
      memmove(&__dst, v16, v17);
    }

    __dst.__r_.__value_.__s.__data_[v17] = 0;
    v18 = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
    if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
    {
      if (!__dst.__r_.__value_.__l.__size_)
      {
        goto LABEL_51;
      }

      v20 = __dst.__r_.__value_.__r.__words[0];
      if (*(__dst.__r_.__value_.__r.__words[0] + __dst.__r_.__value_.__l.__size_ - 1) != 61)
      {
        goto LABEL_51;
      }

      v19 = --__dst.__r_.__value_.__l.__size_;
    }

    else
    {
      if (!*(&__dst.__r_.__value_.__s + 23) || *(&__sa + SHIBYTE(__dst.__r_.__value_.__r.__words[2]) + 7) != 61)
      {
        goto LABEL_51;
      }

      v19 = SHIBYTE(__dst.__r_.__value_.__r.__words[2]) - 1;
      --*(&__dst.__r_.__value_.__s + 23);
      v20 = &__dst;
    }

    v20->__r_.__value_.__s.__data_[v19] = 0;
    v18 = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
LABEL_51:
    v21 = v33;
    if ((v33 & 0x80u) == 0)
    {
      v22 = v33;
    }

    else
    {
      v22 = v32;
    }

    v23 = __dst.__r_.__value_.__l.__size_;
    if ((v18 & 0x80u) == 0)
    {
      v23 = v18;
    }

    if (v22 == v23)
    {
      if ((v33 & 0x80u) == 0)
      {
        v24 = &__p;
      }

      else
      {
        v24 = __p;
      }

      if ((v18 & 0x80u) == 0)
      {
        v25 = &__dst;
      }

      else
      {
        v25 = __dst.__r_.__value_.__r.__words[0];
      }

      v26 = memcmp(v24, v25, v22) == 0;
      if ((v18 & 0x80) == 0)
      {
        goto LABEL_67;
      }

LABEL_66:
      operator delete(__dst.__r_.__value_.__l.__data_);
      goto LABEL_67;
    }

    v26 = 0;
    if ((v18 & 0x80) != 0)
    {
      goto LABEL_66;
    }

LABEL_67:
    if (v26)
    {
      goto LABEL_78;
    }

    v12 += 24;
  }

  v27 = strlen(__sa);
  if (v27 > 0x7FFFFFFFFFFFFFF7)
  {
    goto LABEL_81;
  }

  v28 = v27;
  if (v27 >= 0x17)
  {
    operator new();
  }

  *(&__dst.__r_.__value_.__s + 23) = v27;
  if (v27)
  {
    memcpy(&__dst, __sa, v27);
  }

  __dst.__r_.__value_.__s.__data_[v28] = 0;
  sub_100008740(a1 + 368, &__dst);
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

  v21 = v33;
LABEL_78:
  if ((v21 & 0x80) != 0)
  {
    operator delete(__p);
  }
}

char *sub_100013114(uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 344);
  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 352) - v2) >> 3) <= a2)
  {
    return 0;
  }

  result = (v2 + 24 * a2);
  if (result[23] < 0)
  {
    return *result;
  }

  return result;
}

BOOL sub_100013158(uint64_t a1, char *a2)
{
  v4 = stat(a2, &v6);
  if (v4)
  {
    if (*(a1 + 415) < 0)
    {
      **(a1 + 392) = 0;
      *(a1 + 400) = 0;
    }

    else
    {
      *(a1 + 392) = 0;
      *(a1 + 415) = 0;
    }
  }

  else
  {
    std::string::assign((a1 + 392), a2);
  }

  return v4 == 0;
}

void sub_1000131D8(uint64_t a1)
{
  if (sub_100010524(0x400000))
  {
    sub_100010668("RNBContext::%s called", "StopProcessStatusThread");
  }

  if ((sub_100012808(a1 + 120) & 2) != 0)
  {
    gettimeofday(&v4, 0);
    v3.tv_sec = v4.tv_sec + v4.tv_usec / 1000000 + 2;
    v3.tv_nsec = 1000 * v4.tv_usec % 1000000000;
    v2 = sub_1000128FC(a1 + 120, 4u, &v3);
    if (sub_100010524(0x400000))
    {
      if (v2 == 4)
      {
        sub_100010668("RNBContext::%s thread stopped as requeseted");
      }

      else
      {
        sub_100010668("RNBContext::%s thread did not stop in 2 seconds...");
      }
    }
  }
}

void sub_1000132E0(uint64_t a1)
{
  if (sub_100010524(0x400000))
  {
    sub_100010668("RNBContext::%s called", "StartProcessStatusThread");
  }

  if ((sub_100012808(a1 + 120) & 2) == 0)
  {
    v2 = pthread_create((a1 + 296), 0, sub_1000133EC, a1);
    if (v2)
    {
      v3 = v2;
      if (sub_100010524(0x400000))
      {
        sub_100010668("RNBContext::%s thread failed to start: err = %i", "StartProcessStatusThread", v3);
      }

      sub_10001289C((a1 + 120), 2);

      sub_10001283C((a1 + 120), 4);
    }

    else
    {
      sub_1000128FC(a1 + 120, 2u, 0);
      if (sub_100010524(0x400000))
      {
        sub_100010668("RNBContext::%s thread got started!", "StartProcessStatusThread");
      }
    }
  }
}

uint64_t sub_1000133EC(const void *a1)
{
  v3 = qword_10007D998;
  v2 = qword_10007D9A0;
  if (qword_10007D9A0)
  {
    atomic_fetch_add_explicit((qword_10007D9A0 + 8), 1uLL, memory_order_relaxed);
  }

  if (v3)
  {
    v4 = *(v3 + 12);
    if (sub_100010524(0x400000))
    {
      sub_100010668("RNBContext::%s (arg=%p, pid=%4.4x): thread starting...", "ThreadFunctionProcessStatus", a1, v4);
    }

    sub_10001283C((v3 + 120), 2);
    pthread_setname_np("child process status watcher thread");
    v11 = 0;
    v5 = pthread_self();
    if (!pthread_getschedparam(v5, &v11, &v12))
    {
      v12.sched_priority = 47;
      v6 = pthread_self();
      pthread_setschedparam(v6, v11, &v12);
    }

    while (1)
    {
      if (sub_100010524(0x400000))
      {
        sub_100010668("RNBContext::%s calling DNBProcessWaitForEvent(pid, eEventProcessRunningStateChanged | eEventProcessStoppedStateChanged | eEventStdioAvailable | eEventProfileDataAvailable, true)...", "ThreadFunctionProcessStatus");
      }

      v7 = sub_10000B214(v4, 0x1Bu, 1, 0);
      if (sub_100010524(0x400000))
      {
        sub_100010668("RNBContext::%s calling DNBProcessWaitForEvent(pid, eEventProcessRunningStateChanged | eEventProcessStoppedStateChanged | eEventStdioAvailable | eEventProfileDataAvailable, true) => 0x%8.8x", "ThreadFunctionProcessStatus", v7);
        if (!v7)
        {
          goto LABEL_18;
        }

LABEL_13:
        if ((v7 & 8) != 0)
        {
          if (sub_100010524(0x400000))
          {
            sub_100010668("RNBContext::%s (pid=%4.4x) got stdio available event....", "ThreadFunctionProcessStatus", v4);
          }

          sub_10001283C((v3 + 120), 8);
          sub_100012A00(v3 + 120, 8, 0);
          if ((v7 & 0x10) != 0)
          {
LABEL_23:
            if (sub_100010524(0x400000))
            {
              sub_100010668("RNBContext::%s (pid=%4.4x) got profile data event....", "ThreadFunctionProcessStatus", v4);
            }

            sub_10001283C((v3 + 120), 16);
            sub_100012A00(v3 + 120, 16, 0);
            if ((v7 & 3) == 0)
            {
              goto LABEL_8;
            }

            goto LABEL_26;
          }
        }

        else if ((v7 & 0x10) != 0)
        {
          goto LABEL_23;
        }

        if ((v7 & 3) == 0)
        {
          goto LABEL_8;
        }

LABEL_26:
        v8 = sub_10000B308(v4);
        if (sub_100010524(0x400000))
        {
          v9 = sub_10000B3E8(v8);
          sub_100010668("RNBContext::%s (pid=%4.4x) got process state change: %s", "ThreadFunctionProcessStatus", v4, v9);
        }

        sub_10001283C((v3 + 120), 1);
        sub_100012A00(v3 + 120, 1, 0);
        if (v8 <= 9 && ((1 << v8) & 0x301) != 0)
        {
          sub_10000B40C(v4, v7);
          if (sub_100010524(0x400000))
          {
            sub_100010668("RNBContext::%s (arg=%p, pid=%4.4x): thread exiting...", "ThreadFunctionProcessStatus", a1, v4);
          }

          sub_10001289C((v3 + 120), 2);
          sub_10001283C((v3 + 120), 4);
          break;
        }

LABEL_8:
        sub_10000B40C(v4, v7);
      }

      else
      {
        if (v7)
        {
          goto LABEL_13;
        }

LABEL_18:
        if (sub_100010524(0x400000))
        {
          sub_100010668("RNBContext::%s (pid=%4.4x) got ZERO back from DNBProcessWaitForEvent....", "ThreadFunctionProcessStatus", v4);
        }
      }
    }
  }

  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  return 0;
}

std::string *sub_1000136D0(int a1, char a2, std::string *this)
{
  if ((SHIBYTE(this->__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    this->__r_.__value_.__s.__data_[0] = 0;
    *(&this->__r_.__value_.__s + 23) = 0;
    if ((a2 & 1) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  *this->__r_.__value_.__l.__data_ = 0;
  this->__r_.__value_.__l.__size_ = 0;
  if (a2)
  {
LABEL_3:
    std::string::append(this, "proc_state_changed ");
  }

LABEL_4:
  if ((a2 & 2) != 0)
  {
    std::string::append(this, "proc_thread_running ");
    if ((a2 & 4) == 0)
    {
LABEL_6:
      if ((a2 & 8) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_16;
    }
  }

  else if ((a2 & 4) == 0)
  {
    goto LABEL_6;
  }

  std::string::append(this, "proc_thread_exiting ");
  if ((a2 & 8) == 0)
  {
LABEL_7:
    if ((a2 & 0x10) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_17;
  }

LABEL_16:
  std::string::append(this, "proc_stdio_available ");
  if ((a2 & 0x10) == 0)
  {
LABEL_8:
    if ((a2 & 0x20) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_18;
  }

LABEL_17:
  std::string::append(this, "proc_profile_data ");
  if ((a2 & 0x20) == 0)
  {
LABEL_9:
    if ((a2 & 0x40) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_18:
  std::string::append(this, "read_packet_available ");
  if ((a2 & 0x40) != 0)
  {
LABEL_10:
    std::string::append(this, "read_thread_running ");
    std::string::append(this, "read_thread_running ");
  }

LABEL_11:
  if ((this->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    return this;
  }

  else
  {
    return this->__r_.__value_.__r.__words[0];
  }
}

uint64_t sub_1000137DC(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 23) < 0)
  {
    **a2 = 0;
    *(a2 + 8) = 0;
  }

  else
  {
    *a2 = 0;
    *(a2 + 23) = 0;
  }

  v3 = (a1 + 312);
  v4 = sub_10001026C(a1 + 312);
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    snprintf(__str, 0x40uLL, "%u", *v3);
    v5 = __str;
  }

  std::string::assign(a2, v5);
  if (*(a2 + 23) >= 0)
  {
    return a2;
  }

  else
  {
    return *a2;
  }
}

BOOL sub_1000138C8(uint64_t a1, char *__s1)
{
  v3 = sub_10003C38C(__s1);
  v5 = v3;
  if (v3)
  {
    sub_100013918(a1 + 448, &v5);
  }

  return v3 != 0;
}

void sub_100013918(uint64_t a1, _DWORD *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = *a1;
    v7 = v4 - *a1;
    v8 = v7 >> 2;
    v9 = (v7 >> 2) + 1;
    if (v9 >> 62)
    {
      sub_100008888();
    }

    v10 = v3 - v6;
    if (v10 >> 1 > v9)
    {
      v9 = v10 >> 1;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v11 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      if (!(v11 >> 62))
      {
        operator new();
      }

      sub_100008888();
    }

    *(4 * v8) = *a2;
    v5 = 4 * v8 + 4;
    memcpy(0, v6, v7);
    *a1 = 0;
    *(a1 + 8) = v5;
    *(a1 + 16) = 0;
    if (v6)
    {
      operator delete(v6);
    }
  }

  else
  {
    *v4 = *a2;
    v5 = (v4 + 1);
  }

  *(a1 + 8) = v5;
}

void sub_100013A1C(uint64_t a1)
{
  v4 = 2;
  sub_100013918(a1 + 448, &v4);
  v3 = 4;
  sub_100013918(a1 + 448, &v3);
  v2 = 8;
  sub_100013918(a1 + 448, &v2);
}

_BYTE *sub_100013A80(_BYTE *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_100008888();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  a1[23] = v4;
  if (v4)
  {
    memmove(a1, __s, v4);
  }

  a1[v5] = 0;
  return a1;
}

uint64_t sub_100013B38(uint64_t result, unsigned __int8 *a2, uint64_t a3, char a4)
{
  v4 = a3;
  v5 = a2;
  v6 = result;
  if (a4)
  {
    if (a3 >= 1)
    {
      v7 = a3 & 0x7FFFFFFF;
      v8 = result + 8;
      v9 = a2 - 1;
      do
      {
        v11 = *v6;
        v12 = v6 + *(*v6 - 24);
        if (*(v12 + 36) == -1)
        {
          std::ios_base::getloc((v6 + *(*v6 - 24)));
          v13 = std::locale::use_facet(&v19, &std::ctype<char>::id);
          (v13->__vftable[2].~facet_0)(v13, 32);
          std::locale::~locale(&v19);
          v11 = *v6;
        }

        *(v12 + 36) = 48;
        *(v8 + *(v11 - 24)) = *(v8 + *(v11 - 24)) & 0xFFFFFFB5 | 8;
        *(v8 + *(v11 - 24)) = *(v8 + *(v11 - 24)) & 0xFFFFFF4F | 0x80;
        *(v6 + *(v11 - 24) + 24) = 2;
        v10 = v9[v7];
        result = std::ostream::operator<<();
        --v7;
      }

      while ((v7 + 1) > 1);
    }
  }

  else if (a3)
  {
    v14 = result + 8;
    do
    {
      v16 = *v6;
      v17 = v6 + *(*v6 - 24);
      if (*(v17 + 36) == -1)
      {
        std::ios_base::getloc((v6 + *(*v6 - 24)));
        v18 = std::locale::use_facet(&v19, &std::ctype<char>::id);
        (v18->__vftable[2].~facet_0)(v18, 32);
        std::locale::~locale(&v19);
        v16 = *v6;
      }

      *(v17 + 36) = 48;
      *(v14 + *(v16 - 24)) = *(v14 + *(v16 - 24)) & 0xFFFFFFB5 | 8;
      *(v14 + *(v16 - 24)) = *(v14 + *(v16 - 24)) & 0xFFFFFF4F | 0x80;
      *(v6 + *(v16 - 24) + 24) = 2;
      v15 = *v5++;
      result = std::ostream::operator<<();
      --v4;
    }

    while (v4);
  }

  return result;
}

uint64_t sub_100013DDC(uint64_t result, unsigned __int8 *a2)
{
  v2 = a2[23];
  if (v2 >= 0)
  {
    v3 = a2[23];
  }

  else
  {
    v3 = *(a2 + 1);
  }

  if (v2 >= 0)
  {
    v4 = a2;
  }

  else
  {
    v4 = *a2;
  }

  if (v3)
  {
    v5 = result;
    v6 = result + 24;
    v7 = result + 8;
    do
    {
      v9 = *v5;
      v10 = v5 + *(*v5 - 24);
      if (*(v10 + 36) == -1)
      {
        std::ios_base::getloc((v5 + *(*v5 - 24)));
        v11 = std::locale::use_facet(&v12, &std::ctype<char>::id);
        (v11->__vftable[2].~facet_0)(v11, 32);
        std::locale::~locale(&v12);
        v9 = *v5;
      }

      *(v10 + 36) = 48;
      *(v7 + *(v9 - 24)) = *(v7 + *(v9 - 24)) & 0xFFFFFFB5 | 8;
      *(v7 + *(v9 - 24)) = *(v7 + *(v9 - 24)) & 0xFFFFFF4F | 0x80;
      *(v6 + *(v9 - 24)) = 2;
      v8 = *v4++;
      result = std::ostream::operator<<();
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_100013F58(uint64_t a1)
{
  *(a1 + 248) = 0u;
  *(a1 + 232) = 0u;
  *(a1 + 216) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 8) = 0u;
  *(a1 + 440) = 0u;
  *(a1 + 456) = 0u;
  *(a1 + 408) = 0u;
  *(a1 + 424) = 0u;
  *(a1 + 376) = 0u;
  *(a1 + 392) = 0u;
  *(a1 + 344) = 0u;
  *(a1 + 360) = 0u;
  *(a1 + 312) = 0u;
  *(a1 + 328) = 0u;
  *(a1 + 280) = 0u;
  *(a1 + 296) = 0u;
  *(a1 + 264) = 0u;
  *(a1 + 120) = 0u;
  *a1 = off_10006CD38;
  *(a1 + 12) = 0u;
  *(a1 + 28) = 0u;
  *(a1 + 44) = 0u;
  *(a1 + 60) = 0u;
  *(a1 + 76) = 0u;
  *(a1 + 92) = 0u;
  *(a1 + 104) = 0u;
  sub_100012750(a1 + 120, 0, 255);
  *(a1 + 304) = 0;
  *(a1 + 448) = 0;
  *(a1 + 456) = 0u;
  *(a1 + 312) = 0u;
  *(a1 + 328) = 0u;
  *(a1 + 344) = 0u;
  *(a1 + 360) = 0u;
  *(a1 + 376) = 0u;
  *(a1 + 392) = 0u;
  *(a1 + 408) = 0u;
  *(a1 + 424) = 0u;
  *(a1 + 440) = 0;
  *(a1 + 472) = -1;
  *(a1 + 476) = 0;
  *(a1 + 480) = 0;
  sub_10002A740(a1 + 488, 1);
  *(a1 + 528) = 0;
  *(a1 + 512) = 0u;
  *(a1 + 536) = -1;
  *(a1 + 544) = -1;
  if (pthread_mutex_init((a1 + 552), 0))
  {
    sub_10005917C();
  }

  *(a1 + 648) = -1;
  *&v2 = -1;
  *(&v2 + 1) = -1;
  *(a1 + 616) = v2;
  *(a1 + 632) = v2;
  *(a1 + 656) = -1;
  *(a1 + 664) = -1;
  *(a1 + 668) = 0u;
  *(a1 + 684) = 0u;
  *(a1 + 700) = 0u;
  *(a1 + 716) = 0u;
  *(a1 + 732) = 0u;
  *(a1 + 748) = 0u;
  *(a1 + 760) = 0u;
  *(a1 + 776) = 395;
  *(a1 + 784) = 384;
  *(a1 + 792) = 0;
  *(a1 + 796) = 4;
  *(a1 + 800) = 0;
  if (sub_100010524(0x100000))
  {
    sub_100010668("%s", "RNBRemote::RNBRemote()");
  }

  sub_100014128(a1);
  return a1;
}

void sub_100014128(uint64_t *a1)
{
  sub_100033910(&v640, 1, 0, 0, 0, 0, "+", "ACK");
  v2 = a1 + 85;
  v3 = a1[85];
  if (v3 < a1[86])
  {
    v4 = v640;
    v5 = v641;
    *(v3 + 32) = v642;
    *v3 = v4;
    *(v3 + 16) = v5;
    v6 = *__p;
    *(v3 + 56) = v644;
    *(v3 + 40) = v6;
    __p[0] = 0;
    __p[1] = 0;
    v7 = v646;
    *(v3 + 64) = *v645;
    *(v3 + 80) = v7;
    v644 = 0;
    v645[0] = 0;
    v645[1] = 0;
    v646 = 0;
    *v2 = v3 + 88;
    if ((SHIBYTE(v644) & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v8 = sub_100034FCC(a1 + 84, &v640);
  v9 = SHIBYTE(v646);
  *v2 = v8;
  if ((v9 & 0x80000000) == 0)
  {
    if ((SHIBYTE(v644) & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  operator delete(v645[0]);
  if (SHIBYTE(v644) < 0)
  {
LABEL_6:
    operator delete(__p[0]);
  }

LABEL_7:
  sub_100033910(&v640, 2, 0, 0, 0, 0, "-", "!ACK");
  v10 = a1[85];
  if (v10 < a1[86])
  {
    v11 = v640;
    v12 = v641;
    *(v10 + 32) = v642;
    *v10 = v11;
    *(v10 + 16) = v12;
    v13 = *__p;
    *(v10 + 56) = v644;
    *(v10 + 40) = v13;
    __p[0] = 0;
    __p[1] = 0;
    v14 = v646;
    *(v10 + 64) = *v645;
    *(v10 + 80) = v14;
    v644 = 0;
    v645[0] = 0;
    v645[1] = 0;
    v646 = 0;
    *v2 = v10 + 88;
    if ((SHIBYTE(v644) & 0x80000000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v15 = sub_100034FCC(a1 + 84, &v640);
  v16 = SHIBYTE(v646);
  *v2 = v15;
  if ((v16 & 0x80000000) == 0)
  {
    if ((SHIBYTE(v644) & 0x80000000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  operator delete(v645[0]);
  if (SHIBYTE(v644) < 0)
  {
LABEL_12:
    operator delete(__p[0]);
  }

LABEL_13:
  sub_100033910(&v640, 17, sub_100019250, 0, 0, 0, "m", "Read memory");
  v17 = a1[85];
  if (v17 < a1[86])
  {
    v18 = v640;
    v19 = v641;
    *(v17 + 32) = v642;
    *v17 = v18;
    *(v17 + 16) = v19;
    v20 = *__p;
    *(v17 + 56) = v644;
    *(v17 + 40) = v20;
    __p[0] = 0;
    __p[1] = 0;
    v21 = v646;
    *(v17 + 64) = *v645;
    *(v17 + 80) = v21;
    v644 = 0;
    v645[0] = 0;
    v645[1] = 0;
    v646 = 0;
    *v2 = v17 + 88;
    if ((SHIBYTE(v644) & 0x80000000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  v22 = sub_100034FCC(a1 + 84, &v640);
  v23 = SHIBYTE(v646);
  *v2 = v22;
  if ((v23 & 0x80000000) == 0)
  {
    if ((SHIBYTE(v644) & 0x80000000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  operator delete(v645[0]);
  if (SHIBYTE(v644) < 0)
  {
LABEL_18:
    operator delete(__p[0]);
  }

LABEL_19:
  sub_100033910(&v640, 19, sub_10001965C, 0, 0, 0, "p", "Read one register");
  v24 = a1[85];
  if (v24 < a1[86])
  {
    v25 = v640;
    v26 = v641;
    *(v24 + 32) = v642;
    *v24 = v25;
    *(v24 + 16) = v26;
    v27 = *__p;
    *(v24 + 56) = v644;
    *(v24 + 40) = v27;
    __p[0] = 0;
    __p[1] = 0;
    v28 = v646;
    *(v24 + 64) = *v645;
    *(v24 + 80) = v28;
    v644 = 0;
    v645[0] = 0;
    v645[1] = 0;
    v646 = 0;
    *v2 = v24 + 88;
    if ((SHIBYTE(v644) & 0x80000000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

  v29 = sub_100034FCC(a1 + 84, &v640);
  v30 = SHIBYTE(v646);
  *v2 = v29;
  if ((v30 & 0x80000000) == 0)
  {
    if ((SHIBYTE(v644) & 0x80000000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

  operator delete(v645[0]);
  if (SHIBYTE(v644) < 0)
  {
LABEL_24:
    operator delete(__p[0]);
  }

LABEL_25:
  sub_100033910(&v640, 11, sub_100019BD4, 0, 0, 0, "g", "Read registers");
  v31 = a1[85];
  if (v31 < a1[86])
  {
    v32 = v640;
    v33 = v641;
    *(v31 + 32) = v642;
    *v31 = v32;
    *(v31 + 16) = v33;
    v34 = *__p;
    *(v31 + 56) = v644;
    *(v31 + 40) = v34;
    __p[0] = 0;
    __p[1] = 0;
    v35 = v646;
    *(v31 + 64) = *v645;
    *(v31 + 80) = v35;
    v644 = 0;
    v645[0] = 0;
    v645[1] = 0;
    v646 = 0;
    *v2 = v31 + 88;
    if ((SHIBYTE(v644) & 0x80000000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_30;
  }

  v36 = sub_100034FCC(a1 + 84, &v640);
  v37 = SHIBYTE(v646);
  *v2 = v36;
  if ((v37 & 0x80000000) == 0)
  {
    if ((SHIBYTE(v644) & 0x80000000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_30;
  }

  operator delete(v645[0]);
  if (SHIBYTE(v644) < 0)
  {
LABEL_30:
    operator delete(__p[0]);
  }

LABEL_31:
  sub_100033910(&v640, 18, sub_10001A040, 0, 0, 0, "M", "Write memory");
  v38 = a1[85];
  if (v38 < a1[86])
  {
    v39 = v640;
    v40 = v641;
    *(v38 + 32) = v642;
    *v38 = v39;
    *(v38 + 16) = v40;
    v41 = *__p;
    *(v38 + 56) = v644;
    *(v38 + 40) = v41;
    __p[0] = 0;
    __p[1] = 0;
    v42 = v646;
    *(v38 + 64) = *v645;
    *(v38 + 80) = v42;
    v644 = 0;
    v645[0] = 0;
    v645[1] = 0;
    v646 = 0;
    *v2 = v38 + 88;
    if ((SHIBYTE(v644) & 0x80000000) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_36;
  }

  v43 = sub_100034FCC(a1 + 84, &v640);
  v44 = SHIBYTE(v646);
  *v2 = v43;
  if ((v44 & 0x80000000) == 0)
  {
    if ((SHIBYTE(v644) & 0x80000000) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_36;
  }

  operator delete(v645[0]);
  if (SHIBYTE(v644) < 0)
  {
LABEL_36:
    operator delete(__p[0]);
  }

LABEL_37:
  sub_100033910(&v640, 20, sub_10001A42C, 0, 0, 0, "P", "Write one register");
  v45 = a1[85];
  if (v45 < a1[86])
  {
    v46 = v640;
    v47 = v641;
    *(v45 + 32) = v642;
    *v45 = v46;
    *(v45 + 16) = v47;
    v48 = *__p;
    *(v45 + 56) = v644;
    *(v45 + 40) = v48;
    __p[0] = 0;
    __p[1] = 0;
    v49 = v646;
    *(v45 + 64) = *v645;
    *(v45 + 80) = v49;
    v644 = 0;
    v645[0] = 0;
    v645[1] = 0;
    v646 = 0;
    *v2 = v45 + 88;
    if ((SHIBYTE(v644) & 0x80000000) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_42;
  }

  v50 = sub_100034FCC(a1 + 84, &v640);
  v51 = SHIBYTE(v646);
  *v2 = v50;
  if ((v51 & 0x80000000) == 0)
  {
    if ((SHIBYTE(v644) & 0x80000000) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_42;
  }

  operator delete(v645[0]);
  if (SHIBYTE(v644) < 0)
  {
LABEL_42:
    operator delete(__p[0]);
  }

LABEL_43:
  sub_100033910(&v640, 12, sub_10001A868, 0, 0, 0, "G", "Write registers");
  v52 = a1[85];
  if (v52 < a1[86])
  {
    v53 = v640;
    v54 = v641;
    *(v52 + 32) = v642;
    *v52 = v53;
    *(v52 + 16) = v54;
    v55 = *__p;
    *(v52 + 56) = v644;
    *(v52 + 40) = v55;
    __p[0] = 0;
    __p[1] = 0;
    v56 = v646;
    *(v52 + 64) = *v645;
    *(v52 + 80) = v56;
    v644 = 0;
    v645[0] = 0;
    v645[1] = 0;
    v646 = 0;
    *v2 = v52 + 88;
    if ((SHIBYTE(v644) & 0x80000000) == 0)
    {
      goto LABEL_49;
    }

    goto LABEL_48;
  }

  v57 = sub_100034FCC(a1 + 84, &v640);
  v58 = SHIBYTE(v646);
  *v2 = v57;
  if ((v58 & 0x80000000) == 0)
  {
    if ((SHIBYTE(v644) & 0x80000000) == 0)
    {
      goto LABEL_49;
    }

    goto LABEL_48;
  }

  operator delete(v645[0]);
  if (SHIBYTE(v644) < 0)
  {
LABEL_48:
    operator delete(__p[0]);
  }

LABEL_49:
  sub_100033910(&v640, 34, sub_10001AB84, 0, 0, 0, "Z0", "Insert memory breakpoint");
  v59 = a1[85];
  if (v59 < a1[86])
  {
    v60 = v640;
    v61 = v641;
    *(v59 + 32) = v642;
    *v59 = v60;
    *(v59 + 16) = v61;
    v62 = *__p;
    *(v59 + 56) = v644;
    *(v59 + 40) = v62;
    __p[0] = 0;
    __p[1] = 0;
    v63 = v646;
    *(v59 + 64) = *v645;
    *(v59 + 80) = v63;
    v644 = 0;
    v645[0] = 0;
    v645[1] = 0;
    v646 = 0;
    *v2 = v59 + 88;
    if ((SHIBYTE(v644) & 0x80000000) == 0)
    {
      goto LABEL_55;
    }

    goto LABEL_54;
  }

  v64 = sub_100034FCC(a1 + 84, &v640);
  v65 = SHIBYTE(v646);
  *v2 = v64;
  if ((v65 & 0x80000000) == 0)
  {
    if ((SHIBYTE(v644) & 0x80000000) == 0)
    {
      goto LABEL_55;
    }

    goto LABEL_54;
  }

  operator delete(v645[0]);
  if (SHIBYTE(v644) < 0)
  {
LABEL_54:
    operator delete(__p[0]);
  }

LABEL_55:
  sub_100033910(&v640, 35, sub_10001AB84, 0, 0, 0, "z0", "Remove memory breakpoint");
  v66 = a1[85];
  if (v66 < a1[86])
  {
    v67 = v640;
    v68 = v641;
    *(v66 + 32) = v642;
    *v66 = v67;
    *(v66 + 16) = v68;
    v69 = *__p;
    *(v66 + 56) = v644;
    *(v66 + 40) = v69;
    __p[0] = 0;
    __p[1] = 0;
    v70 = v646;
    *(v66 + 64) = *v645;
    *(v66 + 80) = v70;
    v644 = 0;
    v645[0] = 0;
    v645[1] = 0;
    v646 = 0;
    *v2 = v66 + 88;
    if ((SHIBYTE(v644) & 0x80000000) == 0)
    {
      goto LABEL_61;
    }

    goto LABEL_60;
  }

  v71 = sub_100034FCC(a1 + 84, &v640);
  v72 = SHIBYTE(v646);
  *v2 = v71;
  if ((v72 & 0x80000000) == 0)
  {
    if ((SHIBYTE(v644) & 0x80000000) == 0)
    {
      goto LABEL_61;
    }

    goto LABEL_60;
  }

  operator delete(v645[0]);
  if (SHIBYTE(v644) < 0)
  {
LABEL_60:
    operator delete(__p[0]);
  }

LABEL_61:
  sub_100033910(&v640, 22, sub_10001AF9C, 0, 0, 0, "s", "Single step");
  v73 = a1[85];
  if (v73 < a1[86])
  {
    v74 = v640;
    v75 = v641;
    *(v73 + 32) = v642;
    *v73 = v74;
    *(v73 + 16) = v75;
    v76 = *__p;
    *(v73 + 56) = v644;
    *(v73 + 40) = v76;
    __p[0] = 0;
    __p[1] = 0;
    v77 = v646;
    *(v73 + 64) = *v645;
    *(v73 + 80) = v77;
    v644 = 0;
    v645[0] = 0;
    v645[1] = 0;
    v646 = 0;
    *v2 = v73 + 88;
    if ((SHIBYTE(v644) & 0x80000000) == 0)
    {
      goto LABEL_67;
    }

    goto LABEL_66;
  }

  v78 = sub_100034FCC(a1 + 84, &v640);
  v79 = SHIBYTE(v646);
  *v2 = v78;
  if ((v79 & 0x80000000) == 0)
  {
    if ((SHIBYTE(v644) & 0x80000000) == 0)
    {
      goto LABEL_67;
    }

    goto LABEL_66;
  }

  operator delete(v645[0]);
  if (SHIBYTE(v644) < 0)
  {
LABEL_66:
    operator delete(__p[0]);
  }

LABEL_67:
  sub_100033910(&v640, 8, sub_10001B13C, 0, 0, 0, "c", "continue");
  v80 = a1[85];
  if (v80 < a1[86])
  {
    v81 = v640;
    v82 = v641;
    *(v80 + 32) = v642;
    *v80 = v81;
    *(v80 + 16) = v82;
    v83 = *__p;
    *(v80 + 56) = v644;
    *(v80 + 40) = v83;
    __p[0] = 0;
    __p[1] = 0;
    v84 = v646;
    *(v80 + 64) = *v645;
    *(v80 + 80) = v84;
    v644 = 0;
    v645[0] = 0;
    v645[1] = 0;
    v646 = 0;
    *v2 = v80 + 88;
    if ((SHIBYTE(v644) & 0x80000000) == 0)
    {
      goto LABEL_73;
    }

    goto LABEL_72;
  }

  v85 = sub_100034FCC(a1 + 84, &v640);
  v86 = SHIBYTE(v646);
  *v2 = v85;
  if ((v86 & 0x80000000) == 0)
  {
    if ((SHIBYTE(v644) & 0x80000000) == 0)
    {
      goto LABEL_73;
    }

    goto LABEL_72;
  }

  operator delete(v645[0]);
  if (SHIBYTE(v644) < 0)
  {
LABEL_72:
    operator delete(__p[0]);
  }

LABEL_73:
  sub_100033910(&v640, 23, sub_10001B2E0, 0, 0, 0, "S", "Single step with signal");
  v87 = a1[85];
  if (v87 < a1[86])
  {
    v88 = v640;
    v89 = v641;
    *(v87 + 32) = v642;
    *v87 = v88;
    *(v87 + 16) = v89;
    v90 = *__p;
    *(v87 + 56) = v644;
    *(v87 + 40) = v90;
    __p[0] = 0;
    __p[1] = 0;
    v91 = v646;
    *(v87 + 64) = *v645;
    *(v87 + 80) = v91;
    v644 = 0;
    v645[0] = 0;
    v645[1] = 0;
    v646 = 0;
    *v2 = v87 + 88;
    if ((SHIBYTE(v644) & 0x80000000) == 0)
    {
      goto LABEL_79;
    }

    goto LABEL_78;
  }

  v92 = sub_100034FCC(a1 + 84, &v640);
  v93 = SHIBYTE(v646);
  *v2 = v92;
  if ((v93 & 0x80000000) == 0)
  {
    if ((SHIBYTE(v644) & 0x80000000) == 0)
    {
      goto LABEL_79;
    }

    goto LABEL_78;
  }

  operator delete(v645[0]);
  if (SHIBYTE(v644) < 0)
  {
LABEL_78:
    operator delete(__p[0]);
  }

LABEL_79:
  sub_100033910(&v640, 13, sub_10001B578, 0, 0, 0, "H", "Set thread");
  v94 = a1[85];
  if (v94 < a1[86])
  {
    v95 = v640;
    v96 = v641;
    *(v94 + 32) = v642;
    *v94 = v95;
    *(v94 + 16) = v96;
    v97 = *__p;
    *(v94 + 56) = v644;
    *(v94 + 40) = v97;
    __p[0] = 0;
    __p[1] = 0;
    v98 = v646;
    *(v94 + 64) = *v645;
    *(v94 + 80) = v98;
    v644 = 0;
    v645[0] = 0;
    v645[1] = 0;
    v646 = 0;
    *v2 = v94 + 88;
    if ((SHIBYTE(v644) & 0x80000000) == 0)
    {
      goto LABEL_85;
    }

    goto LABEL_84;
  }

  v99 = sub_100034FCC(a1 + 84, &v640);
  v100 = SHIBYTE(v646);
  *v2 = v99;
  if ((v100 & 0x80000000) == 0)
  {
    if ((SHIBYTE(v644) & 0x80000000) == 0)
    {
      goto LABEL_85;
    }

    goto LABEL_84;
  }

  operator delete(v645[0]);
  if (SHIBYTE(v644) < 0)
  {
LABEL_84:
    operator delete(__p[0]);
  }

LABEL_85:
  sub_100033910(&v640, 3, sub_10001B6A4, 0, sub_10001BE0C, 0, "\x03", "^C");
  v101 = a1[85];
  if (v101 < a1[86])
  {
    v102 = v640;
    v103 = v641;
    *(v101 + 32) = v642;
    *v101 = v102;
    *(v101 + 16) = v103;
    v104 = *__p;
    *(v101 + 56) = v644;
    *(v101 + 40) = v104;
    __p[0] = 0;
    __p[1] = 0;
    v105 = v646;
    *(v101 + 64) = *v645;
    *(v101 + 80) = v105;
    v644 = 0;
    v645[0] = 0;
    v645[1] = 0;
    v646 = 0;
    *v2 = v101 + 88;
    if ((SHIBYTE(v644) & 0x80000000) == 0)
    {
      goto LABEL_91;
    }

    goto LABEL_90;
  }

  v106 = sub_100034FCC(a1 + 84, &v640);
  v107 = SHIBYTE(v646);
  *v2 = v106;
  if ((v107 & 0x80000000) == 0)
  {
    if ((SHIBYTE(v644) & 0x80000000) == 0)
    {
      goto LABEL_91;
    }

    goto LABEL_90;
  }

  operator delete(v645[0]);
  if (SHIBYTE(v644) < 0)
  {
LABEL_90:
    operator delete(__p[0]);
  }

LABEL_91:
  sub_100033910(&v640, 5, sub_10001B6A4, 0, 0, 0, "?", "Why did target halt");
  v108 = a1[85];
  if (v108 < a1[86])
  {
    v109 = v640;
    v110 = v641;
    *(v108 + 32) = v642;
    *v108 = v109;
    *(v108 + 16) = v110;
    v111 = *__p;
    *(v108 + 56) = v644;
    *(v108 + 40) = v111;
    __p[0] = 0;
    __p[1] = 0;
    v112 = v646;
    *(v108 + 64) = *v645;
    *(v108 + 80) = v112;
    v644 = 0;
    v645[0] = 0;
    v645[1] = 0;
    v646 = 0;
    *v2 = v108 + 88;
    if ((SHIBYTE(v644) & 0x80000000) == 0)
    {
      goto LABEL_97;
    }

    goto LABEL_96;
  }

  v113 = sub_100034FCC(a1 + 84, &v640);
  v114 = SHIBYTE(v646);
  *v2 = v113;
  if ((v114 & 0x80000000) == 0)
  {
    if ((SHIBYTE(v644) & 0x80000000) == 0)
    {
      goto LABEL_97;
    }

    goto LABEL_96;
  }

  operator delete(v645[0]);
  if (SHIBYTE(v644) < 0)
  {
LABEL_96:
    operator delete(__p[0]);
  }

LABEL_97:
  sub_100033910(&v640, 6, sub_10001BE58, 0, 0, 0, "A", "Set argv");
  v115 = a1[85];
  if (v115 < a1[86])
  {
    v116 = v640;
    v117 = v641;
    *(v115 + 32) = v642;
    *v115 = v116;
    *(v115 + 16) = v117;
    v118 = *__p;
    *(v115 + 56) = v644;
    *(v115 + 40) = v118;
    __p[0] = 0;
    __p[1] = 0;
    v119 = v646;
    *(v115 + 64) = *v645;
    *(v115 + 80) = v119;
    v644 = 0;
    v645[0] = 0;
    v645[1] = 0;
    v646 = 0;
    *v2 = v115 + 88;
    if ((SHIBYTE(v644) & 0x80000000) == 0)
    {
      goto LABEL_103;
    }

    goto LABEL_102;
  }

  v120 = sub_100034FCC(a1 + 84, &v640);
  v121 = SHIBYTE(v646);
  *v2 = v120;
  if ((v121 & 0x80000000) == 0)
  {
    if ((SHIBYTE(v644) & 0x80000000) == 0)
    {
      goto LABEL_103;
    }

    goto LABEL_102;
  }

  operator delete(v645[0]);
  if (SHIBYTE(v644) < 0)
  {
LABEL_102:
    operator delete(__p[0]);
  }

LABEL_103:
  sub_100033910(&v640, 9, sub_10001C138, 0, 0, 0, "C", "Continue with signal");
  v122 = a1[85];
  if (v122 < a1[86])
  {
    v123 = v640;
    v124 = v641;
    *(v122 + 32) = v642;
    *v122 = v123;
    *(v122 + 16) = v124;
    v125 = *__p;
    *(v122 + 56) = v644;
    *(v122 + 40) = v125;
    __p[0] = 0;
    __p[1] = 0;
    v126 = v646;
    *(v122 + 64) = *v645;
    *(v122 + 80) = v126;
    v644 = 0;
    v645[0] = 0;
    v645[1] = 0;
    v646 = 0;
    *v2 = v122 + 88;
    if ((SHIBYTE(v644) & 0x80000000) == 0)
    {
      goto LABEL_109;
    }

    goto LABEL_108;
  }

  v127 = sub_100034FCC(a1 + 84, &v640);
  v128 = SHIBYTE(v646);
  *v2 = v127;
  if ((v128 & 0x80000000) == 0)
  {
    if ((SHIBYTE(v644) & 0x80000000) == 0)
    {
      goto LABEL_109;
    }

    goto LABEL_108;
  }

  operator delete(v645[0]);
  if (SHIBYTE(v644) < 0)
  {
LABEL_108:
    operator delete(__p[0]);
  }

LABEL_109:
  sub_100033910(&v640, 10, sub_10001C394, 0, 0, 0, "D", "Detach gdb from remote system");
  v129 = a1[85];
  if (v129 < a1[86])
  {
    v130 = v640;
    v131 = v641;
    *(v129 + 32) = v642;
    *v129 = v130;
    *(v129 + 16) = v131;
    v132 = *__p;
    *(v129 + 56) = v644;
    *(v129 + 40) = v132;
    __p[0] = 0;
    __p[1] = 0;
    v133 = v646;
    *(v129 + 64) = *v645;
    *(v129 + 80) = v133;
    v644 = 0;
    v645[0] = 0;
    v645[1] = 0;
    v646 = 0;
    *v2 = v129 + 88;
    if ((SHIBYTE(v644) & 0x80000000) == 0)
    {
      goto LABEL_115;
    }

    goto LABEL_114;
  }

  v134 = sub_100034FCC(a1 + 84, &v640);
  v135 = SHIBYTE(v646);
  *v2 = v134;
  if ((v135 & 0x80000000) == 0)
  {
    if ((SHIBYTE(v644) & 0x80000000) == 0)
    {
      goto LABEL_115;
    }

    goto LABEL_114;
  }

  operator delete(v645[0]);
  if (SHIBYTE(v644) < 0)
  {
LABEL_114:
    operator delete(__p[0]);
  }

LABEL_115:
  sub_100033910(&v640, 16, sub_10001C4BC, 0, 0, 0, "k", "Kill");
  v136 = a1[85];
  if (v136 < a1[86])
  {
    v137 = v640;
    v138 = v641;
    *(v136 + 32) = v642;
    *v136 = v137;
    *(v136 + 16) = v138;
    v139 = *__p;
    *(v136 + 56) = v644;
    *(v136 + 40) = v139;
    __p[0] = 0;
    __p[1] = 0;
    v140 = v646;
    *(v136 + 64) = *v645;
    *(v136 + 80) = v140;
    v644 = 0;
    v645[0] = 0;
    v645[1] = 0;
    v646 = 0;
    *v2 = v136 + 88;
    if ((SHIBYTE(v644) & 0x80000000) == 0)
    {
      goto LABEL_121;
    }

    goto LABEL_120;
  }

  v141 = sub_100034FCC(a1 + 84, &v640);
  v142 = SHIBYTE(v646);
  *v2 = v141;
  if ((v142 & 0x80000000) == 0)
  {
    if ((SHIBYTE(v644) & 0x80000000) == 0)
    {
      goto LABEL_121;
    }

    goto LABEL_120;
  }

  operator delete(v645[0]);
  if (SHIBYTE(v644) < 0)
  {
LABEL_120:
    operator delete(__p[0]);
  }

LABEL_121:
  sub_100033910(&v640, 25, sub_10001C53C, 0, 0, 0, "T", "Is thread alive");
  v143 = a1[85];
  if (v143 < a1[86])
  {
    v144 = v640;
    v145 = v641;
    *(v143 + 32) = v642;
    *v143 = v144;
    *(v143 + 16) = v145;
    v146 = *__p;
    *(v143 + 56) = v644;
    *(v143 + 40) = v146;
    __p[0] = 0;
    __p[1] = 0;
    v147 = v646;
    *(v143 + 64) = *v645;
    *(v143 + 80) = v147;
    v644 = 0;
    v645[0] = 0;
    v645[1] = 0;
    v646 = 0;
    *v2 = v143 + 88;
    if ((SHIBYTE(v644) & 0x80000000) == 0)
    {
      goto LABEL_127;
    }

    goto LABEL_126;
  }

  v148 = sub_100034FCC(a1 + 84, &v640);
  v149 = SHIBYTE(v646);
  *v2 = v148;
  if ((v149 & 0x80000000) == 0)
  {
    if ((SHIBYTE(v644) & 0x80000000) == 0)
    {
      goto LABEL_127;
    }

    goto LABEL_126;
  }

  operator delete(v645[0]);
  if (SHIBYTE(v644) < 0)
  {
LABEL_126:
    operator delete(__p[0]);
  }

LABEL_127:
  sub_100033910(&v640, 58, sub_10001C6CC, 0, 0, 0, "qSupported", "Query about supported features");
  v150 = a1[85];
  if (v150 < a1[86])
  {
    v151 = v640;
    v152 = v641;
    *(v150 + 32) = v642;
    *v150 = v151;
    *(v150 + 16) = v152;
    v153 = *__p;
    *(v150 + 56) = v644;
    *(v150 + 40) = v153;
    __p[0] = 0;
    __p[1] = 0;
    v154 = v646;
    *(v150 + 64) = *v645;
    *(v150 + 80) = v154;
    v644 = 0;
    v645[0] = 0;
    v645[1] = 0;
    v646 = 0;
    *v2 = v150 + 88;
    if ((SHIBYTE(v644) & 0x80000000) == 0)
    {
      goto LABEL_133;
    }

    goto LABEL_132;
  }

  v155 = sub_100034FCC(a1 + 84, &v640);
  v156 = SHIBYTE(v646);
  *v2 = v155;
  if ((v156 & 0x80000000) == 0)
  {
    if ((SHIBYTE(v644) & 0x80000000) == 0)
    {
      goto LABEL_133;
    }

    goto LABEL_132;
  }

  operator delete(v645[0]);
  if (SHIBYTE(v644) < 0)
  {
LABEL_132:
    operator delete(__p[0]);
  }

LABEL_133:
  sub_100033910(&v640, 26, sub_10001CC34, 0, 0, 0, "vAttach", "Attach to a new process");
  v157 = a1[85];
  if (v157 < a1[86])
  {
    v158 = v640;
    v159 = v641;
    *(v157 + 32) = v642;
    *v157 = v158;
    *(v157 + 16) = v159;
    v160 = *__p;
    *(v157 + 56) = v644;
    *(v157 + 40) = v160;
    __p[0] = 0;
    __p[1] = 0;
    v161 = v646;
    *(v157 + 64) = *v645;
    *(v157 + 80) = v161;
    v644 = 0;
    v645[0] = 0;
    v645[1] = 0;
    v646 = 0;
    *v2 = v157 + 88;
    if ((SHIBYTE(v644) & 0x80000000) == 0)
    {
      goto LABEL_139;
    }

    goto LABEL_138;
  }

  v162 = sub_100034FCC(a1 + 84, &v640);
  v163 = SHIBYTE(v646);
  *v2 = v162;
  if ((v163 & 0x80000000) == 0)
  {
    if ((SHIBYTE(v644) & 0x80000000) == 0)
    {
      goto LABEL_139;
    }

    goto LABEL_138;
  }

  operator delete(v645[0]);
  if (SHIBYTE(v644) < 0)
  {
LABEL_138:
    operator delete(__p[0]);
  }

LABEL_139:
  sub_100033910(&v640, 27, sub_10001CC34, 0, 0, 0, "vAttachWait", "Wait for a process to start up then attach to it");
  v164 = a1[85];
  if (v164 < a1[86])
  {
    v165 = v640;
    v166 = v641;
    *(v164 + 32) = v642;
    *v164 = v165;
    *(v164 + 16) = v166;
    v167 = *__p;
    *(v164 + 56) = v644;
    *(v164 + 40) = v167;
    __p[0] = 0;
    __p[1] = 0;
    v168 = v646;
    *(v164 + 64) = *v645;
    *(v164 + 80) = v168;
    v644 = 0;
    v645[0] = 0;
    v645[1] = 0;
    v646 = 0;
    *v2 = v164 + 88;
    if ((SHIBYTE(v644) & 0x80000000) == 0)
    {
      goto LABEL_145;
    }

    goto LABEL_144;
  }

  v169 = sub_100034FCC(a1 + 84, &v640);
  v170 = SHIBYTE(v646);
  *v2 = v169;
  if ((v170 & 0x80000000) == 0)
  {
    if ((SHIBYTE(v644) & 0x80000000) == 0)
    {
      goto LABEL_145;
    }

    goto LABEL_144;
  }

  operator delete(v645[0]);
  if (SHIBYTE(v644) < 0)
  {
LABEL_144:
    operator delete(__p[0]);
  }

LABEL_145:
  sub_100033910(&v640, 28, sub_10001CC34, 0, 0, 0, "vAttachOrWait", "Attach to the process or if it doesn't exist, wait for the process to start up then attach to it");
  v171 = a1[85];
  if (v171 < a1[86])
  {
    v172 = v640;
    v173 = v641;
    *(v171 + 32) = v642;
    *v171 = v172;
    *(v171 + 16) = v173;
    v174 = *__p;
    *(v171 + 56) = v644;
    *(v171 + 40) = v174;
    __p[0] = 0;
    __p[1] = 0;
    v175 = v646;
    *(v171 + 64) = *v645;
    *(v171 + 80) = v175;
    v644 = 0;
    v645[0] = 0;
    v645[1] = 0;
    v646 = 0;
    *v2 = v171 + 88;
    if ((SHIBYTE(v644) & 0x80000000) == 0)
    {
      goto LABEL_151;
    }

    goto LABEL_150;
  }

  v176 = sub_100034FCC(a1 + 84, &v640);
  v177 = SHIBYTE(v646);
  *v2 = v176;
  if ((v177 & 0x80000000) == 0)
  {
    if ((SHIBYTE(v644) & 0x80000000) == 0)
    {
      goto LABEL_151;
    }

    goto LABEL_150;
  }

  operator delete(v645[0]);
  if (SHIBYTE(v644) < 0)
  {
LABEL_150:
    operator delete(__p[0]);
  }

LABEL_151:
  sub_100033910(&v640, 29, sub_10001CC34, 0, 0, 0, "vAttachName", "Attach to an existing process by name");
  v178 = a1[85];
  if (v178 < a1[86])
  {
    v179 = v640;
    v180 = v641;
    *(v178 + 32) = v642;
    *v178 = v179;
    *(v178 + 16) = v180;
    v181 = *__p;
    *(v178 + 56) = v644;
    *(v178 + 40) = v181;
    __p[0] = 0;
    __p[1] = 0;
    v182 = v646;
    *(v178 + 64) = *v645;
    *(v178 + 80) = v182;
    v644 = 0;
    v645[0] = 0;
    v645[1] = 0;
    v646 = 0;
    *v2 = v178 + 88;
    if ((SHIBYTE(v644) & 0x80000000) == 0)
    {
      goto LABEL_157;
    }

    goto LABEL_156;
  }

  v183 = sub_100034FCC(a1 + 84, &v640);
  v184 = SHIBYTE(v646);
  *v2 = v183;
  if ((v184 & 0x80000000) == 0)
  {
    if ((SHIBYTE(v644) & 0x80000000) == 0)
    {
      goto LABEL_157;
    }

    goto LABEL_156;
  }

  operator delete(v645[0]);
  if (SHIBYTE(v644) < 0)
  {
LABEL_156:
    operator delete(__p[0]);
  }

LABEL_157:
  sub_100033910(&v640, 31, sub_10001CC34, 0, 0, 0, "vCont;", "Verbose resume with thread actions");
  v185 = a1[85];
  if (v185 < a1[86])
  {
    v186 = v640;
    v187 = v641;
    *(v185 + 32) = v642;
    *v185 = v186;
    *(v185 + 16) = v187;
    v188 = *__p;
    *(v185 + 56) = v644;
    *(v185 + 40) = v188;
    __p[0] = 0;
    __p[1] = 0;
    v189 = v646;
    *(v185 + 64) = *v645;
    *(v185 + 80) = v189;
    v644 = 0;
    v645[0] = 0;
    v645[1] = 0;
    v646 = 0;
    *v2 = v185 + 88;
    if ((SHIBYTE(v644) & 0x80000000) == 0)
    {
      goto LABEL_163;
    }

    goto LABEL_162;
  }

  v190 = sub_100034FCC(a1 + 84, &v640);
  v191 = SHIBYTE(v646);
  *v2 = v190;
  if ((v191 & 0x80000000) == 0)
  {
    if ((SHIBYTE(v644) & 0x80000000) == 0)
    {
      goto LABEL_163;
    }

    goto LABEL_162;
  }

  operator delete(v645[0]);
  if (SHIBYTE(v644) < 0)
  {
LABEL_162:
    operator delete(__p[0]);
  }

LABEL_163:
  sub_100033910(&v640, 31, sub_10001CC34, 0, 0, 0, "vCont?", "List valid continue-with-thread-actions actions");
  v192 = a1[85];
  if (v192 < a1[86])
  {
    v193 = v640;
    v194 = v641;
    *(v192 + 32) = v642;
    *v192 = v193;
    *(v192 + 16) = v194;
    v195 = *__p;
    *(v192 + 56) = v644;
    *(v192 + 40) = v195;
    __p[0] = 0;
    __p[1] = 0;
    v196 = v646;
    *(v192 + 64) = *v645;
    *(v192 + 80) = v196;
    v644 = 0;
    v645[0] = 0;
    v645[1] = 0;
    v646 = 0;
    *v2 = v192 + 88;
    if ((SHIBYTE(v644) & 0x80000000) == 0)
    {
      goto LABEL_169;
    }

    goto LABEL_168;
  }

  v197 = sub_100034FCC(a1 + 84, &v640);
  v198 = SHIBYTE(v646);
  *v2 = v197;
  if ((v198 & 0x80000000) == 0)
  {
    if ((SHIBYTE(v644) & 0x80000000) == 0)
    {
      goto LABEL_169;
    }

    goto LABEL_168;
  }

  operator delete(v645[0]);
  if (SHIBYTE(v644) < 0)
  {
LABEL_168:
    operator delete(__p[0]);
  }

LABEL_169:
  sub_100033910(&v640, 32, sub_10001DA20, 0, 0, 0, "x", "Read data from memory");
  v199 = a1[85];
  if (v199 < a1[86])
  {
    v200 = v640;
    v201 = v641;
    *(v199 + 32) = v642;
    *v199 = v200;
    *(v199 + 16) = v201;
    v202 = *__p;
    *(v199 + 56) = v644;
    *(v199 + 40) = v202;
    __p[0] = 0;
    __p[1] = 0;
    v203 = v646;
    *(v199 + 64) = *v645;
    *(v199 + 80) = v203;
    v644 = 0;
    v645[0] = 0;
    v645[1] = 0;
    v646 = 0;
    *v2 = v199 + 88;
    if ((SHIBYTE(v644) & 0x80000000) == 0)
    {
      goto LABEL_175;
    }

    goto LABEL_174;
  }

  v204 = sub_100034FCC(a1 + 84, &v640);
  v205 = SHIBYTE(v646);
  *v2 = v204;
  if ((v205 & 0x80000000) == 0)
  {
    if ((SHIBYTE(v644) & 0x80000000) == 0)
    {
      goto LABEL_175;
    }

    goto LABEL_174;
  }

  operator delete(v645[0]);
  if (SHIBYTE(v644) < 0)
  {
LABEL_174:
    operator delete(__p[0]);
  }

LABEL_175:
  sub_100033910(&v640, 33, sub_10001DF14, 0, 0, 0, "X", "Write data to memory");
  v206 = a1[85];
  if (v206 < a1[86])
  {
    v207 = v640;
    v208 = v641;
    *(v206 + 32) = v642;
    *v206 = v207;
    *(v206 + 16) = v208;
    v209 = *__p;
    *(v206 + 56) = v644;
    *(v206 + 40) = v209;
    __p[0] = 0;
    __p[1] = 0;
    v210 = v646;
    *(v206 + 64) = *v645;
    *(v206 + 80) = v210;
    v644 = 0;
    v645[0] = 0;
    v645[1] = 0;
    v646 = 0;
    *v2 = v206 + 88;
    if ((SHIBYTE(v644) & 0x80000000) == 0)
    {
      goto LABEL_181;
    }

    goto LABEL_180;
  }

  v211 = sub_100034FCC(a1 + 84, &v640);
  v212 = SHIBYTE(v646);
  *v2 = v211;
  if ((v212 & 0x80000000) == 0)
  {
    if ((SHIBYTE(v644) & 0x80000000) == 0)
    {
      goto LABEL_181;
    }

    goto LABEL_180;
  }

  operator delete(v645[0]);
  if (SHIBYTE(v644) < 0)
  {
LABEL_180:
    operator delete(__p[0]);
  }

LABEL_181:
  sub_100033910(&v640, 36, sub_10001AB84, 0, 0, 0, "Z1", "Insert hardware breakpoint");
  v213 = a1[85];
  if (v213 < a1[86])
  {
    v214 = v640;
    v215 = v641;
    *(v213 + 32) = v642;
    *v213 = v214;
    *(v213 + 16) = v215;
    v216 = *__p;
    *(v213 + 56) = v644;
    *(v213 + 40) = v216;
    __p[0] = 0;
    __p[1] = 0;
    v217 = v646;
    *(v213 + 64) = *v645;
    *(v213 + 80) = v217;
    v644 = 0;
    v645[0] = 0;
    v645[1] = 0;
    v646 = 0;
    *v2 = v213 + 88;
    if ((SHIBYTE(v644) & 0x80000000) == 0)
    {
      goto LABEL_187;
    }

    goto LABEL_186;
  }

  v218 = sub_100034FCC(a1 + 84, &v640);
  v219 = SHIBYTE(v646);
  *v2 = v218;
  if ((v219 & 0x80000000) == 0)
  {
    if ((SHIBYTE(v644) & 0x80000000) == 0)
    {
      goto LABEL_187;
    }

    goto LABEL_186;
  }

  operator delete(v645[0]);
  if (SHIBYTE(v644) < 0)
  {
LABEL_186:
    operator delete(__p[0]);
  }

LABEL_187:
  sub_100033910(&v640, 37, sub_10001AB84, 0, 0, 0, "z1", "Remove hardware breakpoint");
  v220 = a1[85];
  if (v220 < a1[86])
  {
    v221 = v640;
    v222 = v641;
    *(v220 + 32) = v642;
    *v220 = v221;
    *(v220 + 16) = v222;
    v223 = *__p;
    *(v220 + 56) = v644;
    *(v220 + 40) = v223;
    __p[0] = 0;
    __p[1] = 0;
    v224 = v646;
    *(v220 + 64) = *v645;
    *(v220 + 80) = v224;
    v644 = 0;
    v645[0] = 0;
    v645[1] = 0;
    v646 = 0;
    *v2 = v220 + 88;
    if ((SHIBYTE(v644) & 0x80000000) == 0)
    {
      goto LABEL_193;
    }

    goto LABEL_192;
  }

  v225 = sub_100034FCC(a1 + 84, &v640);
  v226 = SHIBYTE(v646);
  *v2 = v225;
  if ((v226 & 0x80000000) == 0)
  {
    if ((SHIBYTE(v644) & 0x80000000) == 0)
    {
      goto LABEL_193;
    }

    goto LABEL_192;
  }

  operator delete(v645[0]);
  if (SHIBYTE(v644) < 0)
  {
LABEL_192:
    operator delete(__p[0]);
  }

LABEL_193:
  sub_100033910(&v640, 38, sub_10001AB84, 0, 0, 0, "Z2", "Insert write watchpoint");
  v227 = a1[85];
  if (v227 < a1[86])
  {
    v228 = v640;
    v229 = v641;
    *(v227 + 32) = v642;
    *v227 = v228;
    *(v227 + 16) = v229;
    v230 = *__p;
    *(v227 + 56) = v644;
    *(v227 + 40) = v230;
    __p[0] = 0;
    __p[1] = 0;
    v231 = v646;
    *(v227 + 64) = *v645;
    *(v227 + 80) = v231;
    v644 = 0;
    v645[0] = 0;
    v645[1] = 0;
    v646 = 0;
    *v2 = v227 + 88;
    if ((SHIBYTE(v644) & 0x80000000) == 0)
    {
      goto LABEL_199;
    }

    goto LABEL_198;
  }

  v232 = sub_100034FCC(a1 + 84, &v640);
  v233 = SHIBYTE(v646);
  *v2 = v232;
  if ((v233 & 0x80000000) == 0)
  {
    if ((SHIBYTE(v644) & 0x80000000) == 0)
    {
      goto LABEL_199;
    }

    goto LABEL_198;
  }

  operator delete(v645[0]);
  if (SHIBYTE(v644) < 0)
  {
LABEL_198:
    operator delete(__p[0]);
  }

LABEL_199:
  sub_100033910(&v640, 39, sub_10001AB84, 0, 0, 0, "z2", "Remove write watchpoint");
  v234 = a1[85];
  if (v234 < a1[86])
  {
    v235 = v640;
    v236 = v641;
    *(v234 + 32) = v642;
    *v234 = v235;
    *(v234 + 16) = v236;
    v237 = *__p;
    *(v234 + 56) = v644;
    *(v234 + 40) = v237;
    __p[0] = 0;
    __p[1] = 0;
    v238 = v646;
    *(v234 + 64) = *v645;
    *(v234 + 80) = v238;
    v644 = 0;
    v645[0] = 0;
    v645[1] = 0;
    v646 = 0;
    *v2 = v234 + 88;
    if ((SHIBYTE(v644) & 0x80000000) == 0)
    {
      goto LABEL_205;
    }

    goto LABEL_204;
  }

  v239 = sub_100034FCC(a1 + 84, &v640);
  v240 = SHIBYTE(v646);
  *v2 = v239;
  if ((v240 & 0x80000000) == 0)
  {
    if ((SHIBYTE(v644) & 0x80000000) == 0)
    {
      goto LABEL_205;
    }

    goto LABEL_204;
  }

  operator delete(v645[0]);
  if (SHIBYTE(v644) < 0)
  {
LABEL_204:
    operator delete(__p[0]);
  }

LABEL_205:
  sub_100033910(&v640, 40, sub_10001AB84, 0, 0, 0, "Z3", "Insert read watchpoint");
  v241 = a1[85];
  if (v241 < a1[86])
  {
    v242 = v640;
    v243 = v641;
    *(v241 + 32) = v642;
    *v241 = v242;
    *(v241 + 16) = v243;
    v244 = *__p;
    *(v241 + 56) = v644;
    *(v241 + 40) = v244;
    __p[0] = 0;
    __p[1] = 0;
    v245 = v646;
    *(v241 + 64) = *v645;
    *(v241 + 80) = v245;
    v644 = 0;
    v645[0] = 0;
    v645[1] = 0;
    v646 = 0;
    *v2 = v241 + 88;
    if ((SHIBYTE(v644) & 0x80000000) == 0)
    {
      goto LABEL_211;
    }

    goto LABEL_210;
  }

  v246 = sub_100034FCC(a1 + 84, &v640);
  v247 = SHIBYTE(v646);
  *v2 = v246;
  if ((v247 & 0x80000000) == 0)
  {
    if ((SHIBYTE(v644) & 0x80000000) == 0)
    {
      goto LABEL_211;
    }

    goto LABEL_210;
  }

  operator delete(v645[0]);
  if (SHIBYTE(v644) < 0)
  {
LABEL_210:
    operator delete(__p[0]);
  }

LABEL_211:
  sub_100033910(&v640, 41, sub_10001AB84, 0, 0, 0, "z3", "Remove read watchpoint");
  v248 = a1[85];
  if (v248 < a1[86])
  {
    v249 = v640;
    v250 = v641;
    *(v248 + 32) = v642;
    *v248 = v249;
    *(v248 + 16) = v250;
    v251 = *__p;
    *(v248 + 56) = v644;
    *(v248 + 40) = v251;
    __p[0] = 0;
    __p[1] = 0;
    v252 = v646;
    *(v248 + 64) = *v645;
    *(v248 + 80) = v252;
    v644 = 0;
    v645[0] = 0;
    v645[1] = 0;
    v646 = 0;
    *v2 = v248 + 88;
    if ((SHIBYTE(v644) & 0x80000000) == 0)
    {
      goto LABEL_217;
    }

    goto LABEL_216;
  }

  v253 = sub_100034FCC(a1 + 84, &v640);
  v254 = SHIBYTE(v646);
  *v2 = v253;
  if ((v254 & 0x80000000) == 0)
  {
    if ((SHIBYTE(v644) & 0x80000000) == 0)
    {
      goto LABEL_217;
    }

    goto LABEL_216;
  }

  operator delete(v645[0]);
  if (SHIBYTE(v644) < 0)
  {
LABEL_216:
    operator delete(__p[0]);
  }

LABEL_217:
  sub_100033910(&v640, 42, sub_10001AB84, 0, 0, 0, "Z4", "Insert access watchpoint");
  v255 = a1[85];
  if (v255 < a1[86])
  {
    v256 = v640;
    v257 = v641;
    *(v255 + 32) = v642;
    *v255 = v256;
    *(v255 + 16) = v257;
    v258 = *__p;
    *(v255 + 56) = v644;
    *(v255 + 40) = v258;
    __p[0] = 0;
    __p[1] = 0;
    v259 = v646;
    *(v255 + 64) = *v645;
    *(v255 + 80) = v259;
    v644 = 0;
    v645[0] = 0;
    v645[1] = 0;
    v646 = 0;
    *v2 = v255 + 88;
    if ((SHIBYTE(v644) & 0x80000000) == 0)
    {
      goto LABEL_223;
    }

    goto LABEL_222;
  }

  v260 = sub_100034FCC(a1 + 84, &v640);
  v261 = SHIBYTE(v646);
  *v2 = v260;
  if ((v261 & 0x80000000) == 0)
  {
    if ((SHIBYTE(v644) & 0x80000000) == 0)
    {
      goto LABEL_223;
    }

    goto LABEL_222;
  }

  operator delete(v645[0]);
  if (SHIBYTE(v644) < 0)
  {
LABEL_222:
    operator delete(__p[0]);
  }

LABEL_223:
  sub_100033910(&v640, 43, sub_10001AB84, 0, 0, 0, "z4", "Remove access watchpoint");
  v262 = a1[85];
  if (v262 < a1[86])
  {
    v263 = v640;
    v264 = v641;
    *(v262 + 32) = v642;
    *v262 = v263;
    *(v262 + 16) = v264;
    v265 = *__p;
    *(v262 + 56) = v644;
    *(v262 + 40) = v265;
    __p[0] = 0;
    __p[1] = 0;
    v266 = v646;
    *(v262 + 64) = *v645;
    *(v262 + 80) = v266;
    v644 = 0;
    v645[0] = 0;
    v645[1] = 0;
    v646 = 0;
    *v2 = v262 + 88;
    if ((SHIBYTE(v644) & 0x80000000) == 0)
    {
      goto LABEL_229;
    }

    goto LABEL_228;
  }

  v267 = sub_100034FCC(a1 + 84, &v640);
  v268 = SHIBYTE(v646);
  *v2 = v267;
  if ((v268 & 0x80000000) == 0)
  {
    if ((SHIBYTE(v644) & 0x80000000) == 0)
    {
      goto LABEL_229;
    }

    goto LABEL_228;
  }

  operator delete(v645[0]);
  if (SHIBYTE(v644) < 0)
  {
LABEL_228:
    operator delete(__p[0]);
  }

LABEL_229:
  sub_100033910(&v640, 44, sub_10001E2DC, 0, 0, 0, "qRcmd", "Monitor command");
  v269 = a1[85];
  if (v269 < a1[86])
  {
    v270 = v640;
    v271 = v641;
    *(v269 + 32) = v642;
    *v269 = v270;
    *(v269 + 16) = v271;
    v272 = *__p;
    *(v269 + 56) = v644;
    *(v269 + 40) = v272;
    __p[0] = 0;
    __p[1] = 0;
    v273 = v646;
    *(v269 + 64) = *v645;
    *(v269 + 80) = v273;
    v644 = 0;
    v645[0] = 0;
    v645[1] = 0;
    v646 = 0;
    *v2 = v269 + 88;
    if ((SHIBYTE(v644) & 0x80000000) == 0)
    {
      goto LABEL_235;
    }

    goto LABEL_234;
  }

  v274 = sub_100034FCC(a1 + 84, &v640);
  v275 = SHIBYTE(v646);
  *v2 = v274;
  if ((v275 & 0x80000000) == 0)
  {
    if ((SHIBYTE(v644) & 0x80000000) == 0)
    {
      goto LABEL_235;
    }

    goto LABEL_234;
  }

  operator delete(v645[0]);
  if (SHIBYTE(v644) < 0)
  {
LABEL_234:
    operator delete(__p[0]);
  }

LABEL_235:
  sub_100033910(&v640, 45, sub_10001E960, 0, 0, 0, "qC", "Query current thread ID");
  v276 = a1[85];
  if (v276 < a1[86])
  {
    v277 = v640;
    v278 = v641;
    *(v276 + 32) = v642;
    *v276 = v277;
    *(v276 + 16) = v278;
    v279 = *__p;
    *(v276 + 56) = v644;
    *(v276 + 40) = v279;
    __p[0] = 0;
    __p[1] = 0;
    v280 = v646;
    *(v276 + 64) = *v645;
    *(v276 + 80) = v280;
    v644 = 0;
    v645[0] = 0;
    v645[1] = 0;
    v646 = 0;
    *v2 = v276 + 88;
    if ((SHIBYTE(v644) & 0x80000000) == 0)
    {
      goto LABEL_241;
    }

    goto LABEL_240;
  }

  v281 = sub_100034FCC(a1 + 84, &v640);
  v282 = SHIBYTE(v646);
  *v2 = v281;
  if ((v282 & 0x80000000) == 0)
  {
    if ((SHIBYTE(v644) & 0x80000000) == 0)
    {
      goto LABEL_241;
    }

    goto LABEL_240;
  }

  operator delete(v645[0]);
  if (SHIBYTE(v644) < 0)
  {
LABEL_240:
    operator delete(__p[0]);
  }

LABEL_241:
  sub_100033910(&v640, 47, sub_10001EC7C, 0, 0, 0, "qEcho:", "Echo the packet back to allow the debugger to sync up with this server");
  v283 = a1[85];
  if (v283 < a1[86])
  {
    v284 = v640;
    v285 = v641;
    *(v283 + 32) = v642;
    *v283 = v284;
    *(v283 + 16) = v285;
    v286 = *__p;
    *(v283 + 56) = v644;
    *(v283 + 40) = v286;
    __p[0] = 0;
    __p[1] = 0;
    v287 = v646;
    *(v283 + 64) = *v645;
    *(v283 + 80) = v287;
    v644 = 0;
    v645[0] = 0;
    v645[1] = 0;
    v646 = 0;
    *v2 = v283 + 88;
    if ((SHIBYTE(v644) & 0x80000000) == 0)
    {
      goto LABEL_247;
    }

    goto LABEL_246;
  }

  v288 = sub_100034FCC(a1 + 84, &v640);
  v289 = SHIBYTE(v646);
  *v2 = v288;
  if ((v289 & 0x80000000) == 0)
  {
    if ((SHIBYTE(v644) & 0x80000000) == 0)
    {
      goto LABEL_247;
    }

    goto LABEL_246;
  }

  operator delete(v645[0]);
  if (SHIBYTE(v644) < 0)
  {
LABEL_246:
    operator delete(__p[0]);
  }

LABEL_247:
  sub_100033910(&v640, 46, sub_10001ED60, 0, 0, 0, "qGetPid", "Query process id");
  v290 = a1[85];
  if (v290 < a1[86])
  {
    v291 = v640;
    v292 = v641;
    *(v290 + 32) = v642;
    *v290 = v291;
    *(v290 + 16) = v292;
    v293 = *__p;
    *(v290 + 56) = v644;
    *(v290 + 40) = v293;
    __p[0] = 0;
    __p[1] = 0;
    v294 = v646;
    *(v290 + 64) = *v645;
    *(v290 + 80) = v294;
    v644 = 0;
    v645[0] = 0;
    v645[1] = 0;
    v646 = 0;
    *v2 = v290 + 88;
    if ((SHIBYTE(v644) & 0x80000000) == 0)
    {
      goto LABEL_253;
    }

    goto LABEL_252;
  }

  v295 = sub_100034FCC(a1 + 84, &v640);
  v296 = SHIBYTE(v646);
  *v2 = v295;
  if ((v296 & 0x80000000) == 0)
  {
    if ((SHIBYTE(v644) & 0x80000000) == 0)
    {
      goto LABEL_253;
    }

    goto LABEL_252;
  }

  operator delete(v645[0]);
  if (SHIBYTE(v644) < 0)
  {
LABEL_252:
    operator delete(__p[0]);
  }

LABEL_253:
  sub_100033910(&v640, 48, sub_10001F038, 0, 0, 0, "qfThreadInfo", "Get list of active threads (first req)");
  v297 = a1[85];
  if (v297 < a1[86])
  {
    v298 = v640;
    v299 = v641;
    *(v297 + 32) = v642;
    *v297 = v298;
    *(v297 + 16) = v299;
    v300 = *__p;
    *(v297 + 56) = v644;
    *(v297 + 40) = v300;
    __p[0] = 0;
    __p[1] = 0;
    v301 = v646;
    *(v297 + 64) = *v645;
    *(v297 + 80) = v301;
    v644 = 0;
    v645[0] = 0;
    v645[1] = 0;
    v646 = 0;
    *v2 = v297 + 88;
    if ((SHIBYTE(v644) & 0x80000000) == 0)
    {
      goto LABEL_259;
    }

    goto LABEL_258;
  }

  v302 = sub_100034FCC(a1 + 84, &v640);
  v303 = SHIBYTE(v646);
  *v2 = v302;
  if ((v303 & 0x80000000) == 0)
  {
    if ((SHIBYTE(v644) & 0x80000000) == 0)
    {
      goto LABEL_259;
    }

    goto LABEL_258;
  }

  operator delete(v645[0]);
  if (SHIBYTE(v644) < 0)
  {
LABEL_258:
    operator delete(__p[0]);
  }

LABEL_259:
  sub_100033910(&v640, 49, sub_10001F038, 0, 0, 0, "qsThreadInfo", "Get list of active threads (subsequent req)");
  v304 = a1[85];
  if (v304 < a1[86])
  {
    v305 = v640;
    v306 = v641;
    *(v304 + 32) = v642;
    *v304 = v305;
    *(v304 + 16) = v306;
    v307 = *__p;
    *(v304 + 56) = v644;
    *(v304 + 40) = v307;
    __p[0] = 0;
    __p[1] = 0;
    v308 = v646;
    *(v304 + 64) = *v645;
    *(v304 + 80) = v308;
    v644 = 0;
    v645[0] = 0;
    v645[1] = 0;
    v646 = 0;
    *v2 = v304 + 88;
    if ((SHIBYTE(v644) & 0x80000000) == 0)
    {
      goto LABEL_265;
    }

    goto LABEL_264;
  }

  v309 = sub_100034FCC(a1 + 84, &v640);
  v310 = SHIBYTE(v646);
  *v2 = v309;
  if ((v310 & 0x80000000) == 0)
  {
    if ((SHIBYTE(v644) & 0x80000000) == 0)
    {
      goto LABEL_265;
    }

    goto LABEL_264;
  }

  operator delete(v645[0]);
  if (SHIBYTE(v644) < 0)
  {
LABEL_264:
    operator delete(__p[0]);
  }

LABEL_265:
  sub_100033910(&v640, 51, sub_10001F434, 0, 0, 0, "qThreadStopInfo", "Get detailed info on why the specified thread stopped");
  v311 = a1[85];
  if (v311 < a1[86])
  {
    v312 = v640;
    v313 = v641;
    *(v311 + 32) = v642;
    *v311 = v312;
    *(v311 + 16) = v313;
    v314 = *__p;
    *(v311 + 56) = v644;
    *(v311 + 40) = v314;
    __p[0] = 0;
    __p[1] = 0;
    v315 = v646;
    *(v311 + 64) = *v645;
    *(v311 + 80) = v315;
    v644 = 0;
    v645[0] = 0;
    v645[1] = 0;
    v646 = 0;
    *v2 = v311 + 88;
    if ((SHIBYTE(v644) & 0x80000000) == 0)
    {
      goto LABEL_271;
    }

    goto LABEL_270;
  }

  v316 = sub_100034FCC(a1 + 84, &v640);
  v317 = SHIBYTE(v646);
  *v2 = v316;
  if ((v317 & 0x80000000) == 0)
  {
    if ((SHIBYTE(v644) & 0x80000000) == 0)
    {
      goto LABEL_271;
    }

    goto LABEL_270;
  }

  operator delete(v645[0]);
  if (SHIBYTE(v644) < 0)
  {
LABEL_270:
    operator delete(__p[0]);
  }

LABEL_271:
  sub_100033910(&v640, 50, sub_10001F47C, 0, 0, 0, "qThreadExtraInfo", "Get printable status of a thread");
  v318 = a1[85];
  if (v318 < a1[86])
  {
    v319 = v640;
    v320 = v641;
    *(v318 + 32) = v642;
    *v318 = v319;
    *(v318 + 16) = v320;
    v321 = *__p;
    *(v318 + 56) = v644;
    *(v318 + 40) = v321;
    __p[0] = 0;
    __p[1] = 0;
    v322 = v646;
    *(v318 + 64) = *v645;
    *(v318 + 80) = v322;
    v644 = 0;
    v645[0] = 0;
    v645[1] = 0;
    v646 = 0;
    *v2 = v318 + 88;
    if ((SHIBYTE(v644) & 0x80000000) == 0)
    {
      goto LABEL_277;
    }

    goto LABEL_276;
  }

  v323 = sub_100034FCC(a1 + 84, &v640);
  v324 = SHIBYTE(v646);
  *v2 = v323;
  if ((v324 & 0x80000000) == 0)
  {
    if ((SHIBYTE(v644) & 0x80000000) == 0)
    {
      goto LABEL_277;
    }

    goto LABEL_276;
  }

  operator delete(v645[0]);
  if (SHIBYTE(v644) < 0)
  {
LABEL_276:
    operator delete(__p[0]);
  }

LABEL_277:
  sub_100033910(&v640, 54, sub_10001F5F0, 0, 0, 0, "qLaunchSuccess", "Report the success or failure of the launch attempt");
  v325 = a1[85];
  if (v325 < a1[86])
  {
    v326 = v640;
    v327 = v641;
    *(v325 + 32) = v642;
    *v325 = v326;
    *(v325 + 16) = v327;
    v328 = *__p;
    *(v325 + 56) = v644;
    *(v325 + 40) = v328;
    __p[0] = 0;
    __p[1] = 0;
    v329 = v646;
    *(v325 + 64) = *v645;
    *(v325 + 80) = v329;
    v644 = 0;
    v645[0] = 0;
    v645[1] = 0;
    v646 = 0;
    *v2 = v325 + 88;
    if ((SHIBYTE(v644) & 0x80000000) == 0)
    {
      goto LABEL_283;
    }

    goto LABEL_282;
  }

  v330 = sub_100034FCC(a1 + 84, &v640);
  v331 = SHIBYTE(v646);
  *v2 = v330;
  if ((v331 & 0x80000000) == 0)
  {
    if ((SHIBYTE(v644) & 0x80000000) == 0)
    {
      goto LABEL_283;
    }

    goto LABEL_282;
  }

  operator delete(v645[0]);
  if (SHIBYTE(v644) < 0)
  {
LABEL_282:
    operator delete(__p[0]);
  }

LABEL_283:
  sub_100033910(&v640, 55, sub_10001F76C, 0, 0, 0, "qRegisterInfo", "Dynamically discover remote register context information.");
  v332 = a1[85];
  if (v332 < a1[86])
  {
    v333 = v640;
    v334 = v641;
    *(v332 + 32) = v642;
    *v332 = v333;
    *(v332 + 16) = v334;
    v335 = *__p;
    *(v332 + 56) = v644;
    *(v332 + 40) = v335;
    __p[0] = 0;
    __p[1] = 0;
    v336 = v646;
    *(v332 + 64) = *v645;
    *(v332 + 80) = v336;
    v644 = 0;
    v645[0] = 0;
    v645[1] = 0;
    v646 = 0;
    *v2 = v332 + 88;
    if ((SHIBYTE(v644) & 0x80000000) == 0)
    {
      goto LABEL_289;
    }

    goto LABEL_288;
  }

  v337 = sub_100034FCC(a1 + 84, &v640);
  v338 = SHIBYTE(v646);
  *v2 = v337;
  if ((v338 & 0x80000000) == 0)
  {
    if ((SHIBYTE(v644) & 0x80000000) == 0)
    {
      goto LABEL_289;
    }

    goto LABEL_288;
  }

  operator delete(v645[0]);
  if (SHIBYTE(v644) < 0)
  {
LABEL_288:
    operator delete(__p[0]);
  }

LABEL_289:
  sub_100033910(&v640, 56, sub_10002050C, 0, 0, 0, "qShlibInfoAddr", "Returns the address that contains info needed for getting shared library notifications");
  v339 = a1[85];
  if (v339 < a1[86])
  {
    v340 = v640;
    v341 = v641;
    *(v339 + 32) = v642;
    *v339 = v340;
    *(v339 + 16) = v341;
    v342 = *__p;
    *(v339 + 56) = v644;
    *(v339 + 40) = v342;
    __p[0] = 0;
    __p[1] = 0;
    v343 = v646;
    *(v339 + 64) = *v645;
    *(v339 + 80) = v343;
    v644 = 0;
    v645[0] = 0;
    v645[1] = 0;
    v646 = 0;
    *v2 = v339 + 88;
    if ((SHIBYTE(v644) & 0x80000000) == 0)
    {
      goto LABEL_295;
    }

    goto LABEL_294;
  }

  v344 = sub_100034FCC(a1 + 84, &v640);
  v345 = SHIBYTE(v646);
  *v2 = v344;
  if ((v345 & 0x80000000) == 0)
  {
    if ((SHIBYTE(v644) & 0x80000000) == 0)
    {
      goto LABEL_295;
    }

    goto LABEL_294;
  }

  operator delete(v645[0]);
  if (SHIBYTE(v644) < 0)
  {
LABEL_294:
    operator delete(__p[0]);
  }

LABEL_295:
  sub_100033910(&v640, 57, sub_10002090C, 0, 0, 0, "qStepPacketSupported", "Replys with OK if the 's' packet is supported.");
  v346 = a1[85];
  if (v346 < a1[86])
  {
    v347 = v640;
    v348 = v641;
    *(v346 + 32) = v642;
    *v346 = v347;
    *(v346 + 16) = v348;
    v349 = *__p;
    *(v346 + 56) = v644;
    *(v346 + 40) = v349;
    __p[0] = 0;
    __p[1] = 0;
    v350 = v646;
    *(v346 + 64) = *v645;
    *(v346 + 80) = v350;
    v644 = 0;
    v645[0] = 0;
    v645[1] = 0;
    v646 = 0;
    *v2 = v346 + 88;
    if ((SHIBYTE(v644) & 0x80000000) == 0)
    {
      goto LABEL_301;
    }

    goto LABEL_300;
  }

  v351 = sub_100034FCC(a1 + 84, &v640);
  v352 = SHIBYTE(v646);
  *v2 = v351;
  if ((v352 & 0x80000000) == 0)
  {
    if ((SHIBYTE(v644) & 0x80000000) == 0)
    {
      goto LABEL_301;
    }

    goto LABEL_300;
  }

  operator delete(v645[0]);
  if (SHIBYTE(v644) < 0)
  {
LABEL_300:
    operator delete(__p[0]);
  }

LABEL_301:
  sub_100033910(&v640, 59, sub_100020968, 0, 0, 0, "qVAttachOrWaitSupported", "Replys with OK if the 'vAttachOrWait' packet is supported.");
  v353 = a1[85];
  if (v353 < a1[86])
  {
    v354 = v640;
    v355 = v641;
    *(v353 + 32) = v642;
    *v353 = v354;
    *(v353 + 16) = v355;
    v356 = *__p;
    *(v353 + 56) = v644;
    *(v353 + 40) = v356;
    __p[0] = 0;
    __p[1] = 0;
    v357 = v646;
    *(v353 + 64) = *v645;
    *(v353 + 80) = v357;
    v644 = 0;
    v645[0] = 0;
    v645[1] = 0;
    v646 = 0;
    *v2 = v353 + 88;
    if ((SHIBYTE(v644) & 0x80000000) == 0)
    {
      goto LABEL_307;
    }

    goto LABEL_306;
  }

  v358 = sub_100034FCC(a1 + 84, &v640);
  v359 = SHIBYTE(v646);
  *v2 = v358;
  if ((v359 & 0x80000000) == 0)
  {
    if ((SHIBYTE(v644) & 0x80000000) == 0)
    {
      goto LABEL_307;
    }

    goto LABEL_306;
  }

  operator delete(v645[0]);
  if (SHIBYTE(v644) < 0)
  {
LABEL_306:
    operator delete(__p[0]);
  }

LABEL_307:
  sub_100033910(&v640, 60, sub_1000209C4, 0, 0, 0, "qSyncThreadStateSupported", "Replys with OK if the 'QSyncThreadState:' packet is supported.");
  v360 = a1[85];
  if (v360 < a1[86])
  {
    v361 = v640;
    v362 = v641;
    *(v360 + 32) = v642;
    *v360 = v361;
    *(v360 + 16) = v362;
    v363 = *__p;
    *(v360 + 56) = v644;
    *(v360 + 40) = v363;
    __p[0] = 0;
    __p[1] = 0;
    v364 = v646;
    *(v360 + 64) = *v645;
    *(v360 + 80) = v364;
    v644 = 0;
    v645[0] = 0;
    v645[1] = 0;
    v646 = 0;
    *v2 = v360 + 88;
    if ((SHIBYTE(v644) & 0x80000000) == 0)
    {
      goto LABEL_313;
    }

    goto LABEL_312;
  }

  v365 = sub_100034FCC(a1 + 84, &v640);
  v366 = SHIBYTE(v646);
  *v2 = v365;
  if ((v366 & 0x80000000) == 0)
  {
    if ((SHIBYTE(v644) & 0x80000000) == 0)
    {
      goto LABEL_313;
    }

    goto LABEL_312;
  }

  operator delete(v645[0]);
  if (SHIBYTE(v644) < 0)
  {
LABEL_312:
    operator delete(__p[0]);
  }

LABEL_313:
  sub_100033910(&v640, 61, sub_100020A20, 0, 0, 0, "qHostInfo", "Replies with multiple 'key:value;' tuples appended to each other.");
  v367 = a1[85];
  if (v367 < a1[86])
  {
    v368 = v640;
    v369 = v641;
    *(v367 + 32) = v642;
    *v367 = v368;
    *(v367 + 16) = v369;
    v370 = *__p;
    *(v367 + 56) = v644;
    *(v367 + 40) = v370;
    __p[0] = 0;
    __p[1] = 0;
    v371 = v646;
    *(v367 + 64) = *v645;
    *(v367 + 80) = v371;
    v644 = 0;
    v645[0] = 0;
    v645[1] = 0;
    v646 = 0;
    *v2 = v367 + 88;
    if ((SHIBYTE(v644) & 0x80000000) == 0)
    {
      goto LABEL_319;
    }

    goto LABEL_318;
  }

  v372 = sub_100034FCC(a1 + 84, &v640);
  v373 = SHIBYTE(v646);
  *v2 = v372;
  if ((v373 & 0x80000000) == 0)
  {
    if ((SHIBYTE(v644) & 0x80000000) == 0)
    {
      goto LABEL_319;
    }

    goto LABEL_318;
  }

  operator delete(v645[0]);
  if (SHIBYTE(v644) < 0)
  {
LABEL_318:
    operator delete(__p[0]);
  }

LABEL_319:
  sub_100033910(&v640, 62, sub_1000211B0, 0, 0, 0, "qGDBServerVersion", "Replies with multiple 'key:value;' tuples appended to each other.");
  v374 = a1[85];
  if (v374 < a1[86])
  {
    v375 = v640;
    v376 = v641;
    *(v374 + 32) = v642;
    *v374 = v375;
    *(v374 + 16) = v376;
    v377 = *__p;
    *(v374 + 56) = v644;
    *(v374 + 40) = v377;
    __p[0] = 0;
    __p[1] = 0;
    v378 = v646;
    *(v374 + 64) = *v645;
    *(v374 + 80) = v378;
    v644 = 0;
    v645[0] = 0;
    v645[1] = 0;
    v646 = 0;
    *v2 = v374 + 88;
    if ((SHIBYTE(v644) & 0x80000000) == 0)
    {
      goto LABEL_325;
    }

    goto LABEL_324;
  }

  v379 = sub_100034FCC(a1 + 84, &v640);
  v380 = SHIBYTE(v646);
  *v2 = v379;
  if ((v380 & 0x80000000) == 0)
  {
    if ((SHIBYTE(v644) & 0x80000000) == 0)
    {
      goto LABEL_325;
    }

    goto LABEL_324;
  }

  operator delete(v645[0]);
  if (SHIBYTE(v644) < 0)
  {
LABEL_324:
    operator delete(__p[0]);
  }

LABEL_325:
  sub_100033910(&v640, 63, sub_100021498, 0, 0, 0, "qProcessInfo", "Replies with multiple 'key:value;' tuples appended to each other.");
  v381 = a1[85];
  if (v381 < a1[86])
  {
    v382 = v640;
    v383 = v641;
    *(v381 + 32) = v642;
    *v381 = v382;
    *(v381 + 16) = v383;
    v384 = *__p;
    *(v381 + 56) = v644;
    *(v381 + 40) = v384;
    __p[0] = 0;
    __p[1] = 0;
    v385 = v646;
    *(v381 + 64) = *v645;
    *(v381 + 80) = v385;
    v644 = 0;
    v645[0] = 0;
    v645[1] = 0;
    v646 = 0;
    *v2 = v381 + 88;
    if ((SHIBYTE(v644) & 0x80000000) == 0)
    {
      goto LABEL_331;
    }

    goto LABEL_330;
  }

  v386 = sub_100034FCC(a1 + 84, &v640);
  v387 = SHIBYTE(v646);
  *v2 = v386;
  if ((v387 & 0x80000000) == 0)
  {
    if ((SHIBYTE(v644) & 0x80000000) == 0)
    {
      goto LABEL_331;
    }

    goto LABEL_330;
  }

  operator delete(v645[0]);
  if (SHIBYTE(v644) < 0)
  {
LABEL_330:
    operator delete(__p[0]);
  }

LABEL_331:
  sub_100033910(&v640, 53, sub_100021E68, 0, 0, 0, "qSymbol:", "Notify that host debugger is ready to do symbol lookups");
  v388 = a1[85];
  if (v388 < a1[86])
  {
    v389 = v640;
    v390 = v641;
    *(v388 + 32) = v642;
    *v388 = v389;
    *(v388 + 16) = v390;
    v391 = *__p;
    *(v388 + 56) = v644;
    *(v388 + 40) = v391;
    __p[0] = 0;
    __p[1] = 0;
    v392 = v646;
    *(v388 + 64) = *v645;
    *(v388 + 80) = v392;
    v644 = 0;
    v645[0] = 0;
    v645[1] = 0;
    v646 = 0;
    *v2 = v388 + 88;
    if ((SHIBYTE(v644) & 0x80000000) == 0)
    {
      goto LABEL_337;
    }

    goto LABEL_336;
  }

  v393 = sub_100034FCC(a1 + 84, &v640);
  v394 = SHIBYTE(v646);
  *v2 = v393;
  if ((v394 & 0x80000000) == 0)
  {
    if ((SHIBYTE(v644) & 0x80000000) == 0)
    {
      goto LABEL_337;
    }

    goto LABEL_336;
  }

  operator delete(v645[0]);
  if (SHIBYTE(v644) < 0)
  {
LABEL_336:
    operator delete(__p[0]);
  }

LABEL_337:
  sub_100033910(&v640, 99, sub_100022550, 0, 0, 0, "QEnableErrorStrings", "Tell debugserver it can append descriptive error messages in replies.");
  v395 = a1[85];
  if (v395 < a1[86])
  {
    v396 = v640;
    v397 = v641;
    *(v395 + 32) = v642;
    *v395 = v396;
    *(v395 + 16) = v397;
    v398 = *__p;
    *(v395 + 56) = v644;
    *(v395 + 40) = v398;
    __p[0] = 0;
    __p[1] = 0;
    v399 = v646;
    *(v395 + 64) = *v645;
    *(v395 + 80) = v399;
    v644 = 0;
    v645[0] = 0;
    v645[1] = 0;
    v646 = 0;
    *v2 = v395 + 88;
    if ((SHIBYTE(v644) & 0x80000000) == 0)
    {
      goto LABEL_343;
    }

    goto LABEL_342;
  }

  v400 = sub_100034FCC(a1 + 84, &v640);
  v401 = SHIBYTE(v646);
  *v2 = v400;
  if ((v401 & 0x80000000) == 0)
  {
    if ((SHIBYTE(v644) & 0x80000000) == 0)
    {
      goto LABEL_343;
    }

    goto LABEL_342;
  }

  operator delete(v645[0]);
  if (SHIBYTE(v644) < 0)
  {
LABEL_342:
    operator delete(__p[0]);
  }

LABEL_343:
  sub_100033910(&v640, 64, sub_1000225B4, 0, 0, 0, "jThreadExtendedInfo", "Replies with JSON data of thread extended information.");
  v402 = a1[85];
  if (v402 < a1[86])
  {
    v403 = v640;
    v404 = v641;
    *(v402 + 32) = v642;
    *v402 = v403;
    *(v402 + 16) = v404;
    v405 = *__p;
    *(v402 + 56) = v644;
    *(v402 + 40) = v405;
    __p[0] = 0;
    __p[1] = 0;
    v406 = v646;
    *(v402 + 64) = *v645;
    *(v402 + 80) = v406;
    v644 = 0;
    v645[0] = 0;
    v645[1] = 0;
    v646 = 0;
    *v2 = v402 + 88;
    if ((SHIBYTE(v644) & 0x80000000) == 0)
    {
      goto LABEL_349;
    }

    goto LABEL_348;
  }

  v407 = sub_100034FCC(a1 + 84, &v640);
  v408 = SHIBYTE(v646);
  *v2 = v407;
  if ((v408 & 0x80000000) == 0)
  {
    if ((SHIBYTE(v644) & 0x80000000) == 0)
    {
      goto LABEL_349;
    }

    goto LABEL_348;
  }

  operator delete(v645[0]);
  if (SHIBYTE(v644) < 0)
  {
LABEL_348:
    operator delete(__p[0]);
  }

LABEL_349:
  sub_100033910(&v640, 65, sub_100023884, 0, 0, 0, "jGetLoadedDynamicLibrariesInfos", "Replies with JSON data of all the shared libraries loaded in this process.");
  v409 = a1[85];
  if (v409 < a1[86])
  {
    v410 = v640;
    v411 = v641;
    *(v409 + 32) = v642;
    *v409 = v410;
    *(v409 + 16) = v411;
    v412 = *__p;
    *(v409 + 56) = v644;
    *(v409 + 40) = v412;
    __p[0] = 0;
    __p[1] = 0;
    v413 = v646;
    *(v409 + 64) = *v645;
    *(v409 + 80) = v413;
    v644 = 0;
    v645[0] = 0;
    v645[1] = 0;
    v646 = 0;
    *v2 = v409 + 88;
    if ((SHIBYTE(v644) & 0x80000000) == 0)
    {
      goto LABEL_355;
    }

    goto LABEL_354;
  }

  v414 = sub_100034FCC(a1 + 84, &v640);
  v415 = SHIBYTE(v646);
  *v2 = v414;
  if ((v415 & 0x80000000) == 0)
  {
    if ((SHIBYTE(v644) & 0x80000000) == 0)
    {
      goto LABEL_355;
    }

    goto LABEL_354;
  }

  operator delete(v645[0]);
  if (SHIBYTE(v644) < 0)
  {
LABEL_354:
    operator delete(__p[0]);
  }

LABEL_355:
  sub_100033910(&v640, 66, sub_100023DB0, 0, 0, 0, "jThreadsInfo", "Replies with JSON data with information about all threads.");
  v416 = a1[85];
  if (v416 < a1[86])
  {
    v417 = v640;
    v418 = v641;
    *(v416 + 32) = v642;
    *v416 = v417;
    *(v416 + 16) = v418;
    v419 = *__p;
    *(v416 + 56) = v644;
    *(v416 + 40) = v419;
    __p[0] = 0;
    __p[1] = 0;
    v420 = v646;
    *(v416 + 64) = *v645;
    *(v416 + 80) = v420;
    v644 = 0;
    v645[0] = 0;
    v645[1] = 0;
    v646 = 0;
    *v2 = v416 + 88;
    if ((SHIBYTE(v644) & 0x80000000) == 0)
    {
      goto LABEL_361;
    }

    goto LABEL_360;
  }

  v421 = sub_100034FCC(a1 + 84, &v640);
  v422 = SHIBYTE(v646);
  *v2 = v421;
  if ((v422 & 0x80000000) == 0)
  {
    if ((SHIBYTE(v644) & 0x80000000) == 0)
    {
      goto LABEL_361;
    }

    goto LABEL_360;
  }

  operator delete(v645[0]);
  if (SHIBYTE(v644) < 0)
  {
LABEL_360:
    operator delete(__p[0]);
  }

LABEL_361:
  sub_100033910(&v640, 67, sub_100024590, 0, 0, 0, "jGetSharedCacheInfo", "Replies with JSON data about the location and uuid of the shared cache in the inferior process.");
  v423 = a1[85];
  if (v423 < a1[86])
  {
    v424 = v640;
    v425 = v641;
    *(v423 + 32) = v642;
    *v423 = v424;
    *(v423 + 16) = v425;
    v426 = *__p;
    *(v423 + 56) = v644;
    *(v423 + 40) = v426;
    __p[0] = 0;
    __p[1] = 0;
    v427 = v646;
    *(v423 + 64) = *v645;
    *(v423 + 80) = v427;
    v644 = 0;
    v645[0] = 0;
    v645[1] = 0;
    v646 = 0;
    *v2 = v423 + 88;
    if ((SHIBYTE(v644) & 0x80000000) == 0)
    {
      goto LABEL_367;
    }

    goto LABEL_366;
  }

  v428 = sub_100034FCC(a1 + 84, &v640);
  v429 = SHIBYTE(v646);
  *v2 = v428;
  if ((v429 & 0x80000000) == 0)
  {
    if ((SHIBYTE(v644) & 0x80000000) == 0)
    {
      goto LABEL_367;
    }

    goto LABEL_366;
  }

  operator delete(v645[0]);
  if (SHIBYTE(v644) < 0)
  {
LABEL_366:
    operator delete(__p[0]);
  }

LABEL_367:
  sub_100033910(&v640, 69, sub_100024A28, 0, 0, 0, "QStartNoAckMode", "Request that debugserver stop acking remote protocol packets");
  v430 = a1[85];
  if (v430 < a1[86])
  {
    v431 = v640;
    v432 = v641;
    *(v430 + 32) = v642;
    *v430 = v431;
    *(v430 + 16) = v432;
    v433 = *__p;
    *(v430 + 56) = v644;
    *(v430 + 40) = v433;
    __p[0] = 0;
    __p[1] = 0;
    v434 = v646;
    *(v430 + 64) = *v645;
    *(v430 + 80) = v434;
    v644 = 0;
    v645[0] = 0;
    v645[1] = 0;
    v646 = 0;
    *v2 = v430 + 88;
    if ((SHIBYTE(v644) & 0x80000000) == 0)
    {
      goto LABEL_373;
    }

    goto LABEL_372;
  }

  v435 = sub_100034FCC(a1 + 84, &v640);
  v436 = SHIBYTE(v646);
  *v2 = v435;
  if ((v436 & 0x80000000) == 0)
  {
    if ((SHIBYTE(v644) & 0x80000000) == 0)
    {
      goto LABEL_373;
    }

    goto LABEL_372;
  }

  operator delete(v645[0]);
  if (SHIBYTE(v644) < 0)
  {
LABEL_372:
    operator delete(__p[0]);
  }

LABEL_373:
  sub_100033910(&v640, 70, sub_100024A90, 0, 0, 0, "QThreadSuffixSupported", "Check if thread specific packets (register packets 'g', 'G', 'p', and 'P') support having the thread ID appended to the end of the command");
  v437 = a1[85];
  if (v437 < a1[86])
  {
    v438 = v640;
    v439 = v641;
    *(v437 + 32) = v642;
    *v437 = v438;
    *(v437 + 16) = v439;
    v440 = *__p;
    *(v437 + 56) = v644;
    *(v437 + 40) = v440;
    __p[0] = 0;
    __p[1] = 0;
    v441 = v646;
    *(v437 + 64) = *v645;
    *(v437 + 80) = v441;
    v644 = 0;
    v645[0] = 0;
    v645[1] = 0;
    v646 = 0;
    *v2 = v437 + 88;
    if ((SHIBYTE(v644) & 0x80000000) == 0)
    {
      goto LABEL_379;
    }

    goto LABEL_378;
  }

  v442 = sub_100034FCC(a1 + 84, &v640);
  v443 = SHIBYTE(v646);
  *v2 = v442;
  if ((v443 & 0x80000000) == 0)
  {
    if ((SHIBYTE(v644) & 0x80000000) == 0)
    {
      goto LABEL_379;
    }

    goto LABEL_378;
  }

  operator delete(v645[0]);
  if (SHIBYTE(v644) < 0)
  {
LABEL_378:
    operator delete(__p[0]);
  }

LABEL_379:
  sub_100033910(&v640, 71, sub_100024AF4, 0, 0, 0, "QSetLogging:", "Turn on log channels in debugserver");
  v444 = a1[85];
  if (v444 < a1[86])
  {
    v445 = v640;
    v446 = v641;
    *(v444 + 32) = v642;
    *v444 = v445;
    *(v444 + 16) = v446;
    v447 = *__p;
    *(v444 + 56) = v644;
    *(v444 + 40) = v447;
    __p[0] = 0;
    __p[1] = 0;
    v448 = v646;
    *(v444 + 64) = *v645;
    *(v444 + 80) = v448;
    v644 = 0;
    v645[0] = 0;
    v645[1] = 0;
    v646 = 0;
    *v2 = v444 + 88;
    if ((SHIBYTE(v644) & 0x80000000) == 0)
    {
      goto LABEL_385;
    }

    goto LABEL_384;
  }

  v449 = sub_100034FCC(a1 + 84, &v640);
  v450 = SHIBYTE(v646);
  *v2 = v449;
  if ((v450 & 0x80000000) == 0)
  {
    if ((SHIBYTE(v644) & 0x80000000) == 0)
    {
      goto LABEL_385;
    }

    goto LABEL_384;
  }

  operator delete(v645[0]);
  if (SHIBYTE(v644) < 0)
  {
LABEL_384:
    operator delete(__p[0]);
  }

LABEL_385:
  sub_100033910(&v640, 72, sub_100024B60, 0, 0, 0, "QSetIgnoredExceptions:", "Set the exception types debugserver won't wait for, allowing them to be turned into the equivalent BSD signals by the normal means.");
  v451 = a1[85];
  if (v451 < a1[86])
  {
    v452 = v640;
    v453 = v641;
    *(v451 + 32) = v642;
    *v451 = v452;
    *(v451 + 16) = v453;
    v454 = *__p;
    *(v451 + 56) = v644;
    *(v451 + 40) = v454;
    __p[0] = 0;
    __p[1] = 0;
    v455 = v646;
    *(v451 + 64) = *v645;
    *(v451 + 80) = v455;
    v644 = 0;
    v645[0] = 0;
    v645[1] = 0;
    v646 = 0;
    *v2 = v451 + 88;
    if ((SHIBYTE(v644) & 0x80000000) == 0)
    {
      goto LABEL_391;
    }

    goto LABEL_390;
  }

  v456 = sub_100034FCC(a1 + 84, &v640);
  v457 = SHIBYTE(v646);
  *v2 = v456;
  if ((v457 & 0x80000000) == 0)
  {
    if ((SHIBYTE(v644) & 0x80000000) == 0)
    {
      goto LABEL_391;
    }

    goto LABEL_390;
  }

  operator delete(v645[0]);
  if (SHIBYTE(v644) < 0)
  {
LABEL_390:
    operator delete(__p[0]);
  }

LABEL_391:
  sub_100033910(&v640, 73, sub_100024D78, 0, 0, 0, "QSetMaxPacketSize:", "Tell debugserver the max sized packet gdb can handle");
  v458 = a1[85];
  if (v458 < a1[86])
  {
    v459 = v640;
    v460 = v641;
    *(v458 + 32) = v642;
    *v458 = v459;
    *(v458 + 16) = v460;
    v461 = *__p;
    *(v458 + 56) = v644;
    *(v458 + 40) = v461;
    __p[0] = 0;
    __p[1] = 0;
    v462 = v646;
    *(v458 + 64) = *v645;
    *(v458 + 80) = v462;
    v644 = 0;
    v645[0] = 0;
    v645[1] = 0;
    v646 = 0;
    *v2 = v458 + 88;
    if ((SHIBYTE(v644) & 0x80000000) == 0)
    {
      goto LABEL_397;
    }

    goto LABEL_396;
  }

  v463 = sub_100034FCC(a1 + 84, &v640);
  v464 = SHIBYTE(v646);
  *v2 = v463;
  if ((v464 & 0x80000000) == 0)
  {
    if ((SHIBYTE(v644) & 0x80000000) == 0)
    {
      goto LABEL_397;
    }

    goto LABEL_396;
  }

  operator delete(v645[0]);
  if (SHIBYTE(v644) < 0)
  {
LABEL_396:
    operator delete(__p[0]);
  }

LABEL_397:
  sub_100033910(&v640, 74, sub_100024E58, 0, 0, 0, "QSetMaxPayloadSize:", "Tell debugserver the max sized payload gdb can handle");
  v465 = a1[85];
  if (v465 < a1[86])
  {
    v466 = v640;
    v467 = v641;
    *(v465 + 32) = v642;
    *v465 = v466;
    *(v465 + 16) = v467;
    v468 = *__p;
    *(v465 + 56) = v644;
    *(v465 + 40) = v468;
    __p[0] = 0;
    __p[1] = 0;
    v469 = v646;
    *(v465 + 64) = *v645;
    *(v465 + 80) = v469;
    v644 = 0;
    v645[0] = 0;
    v645[1] = 0;
    v646 = 0;
    *v2 = v465 + 88;
    if ((SHIBYTE(v644) & 0x80000000) == 0)
    {
      goto LABEL_403;
    }

    goto LABEL_402;
  }

  v470 = sub_100034FCC(a1 + 84, &v640);
  v471 = SHIBYTE(v646);
  *v2 = v470;
  if ((v471 & 0x80000000) == 0)
  {
    if ((SHIBYTE(v644) & 0x80000000) == 0)
    {
      goto LABEL_403;
    }

    goto LABEL_402;
  }

  operator delete(v645[0]);
  if (SHIBYTE(v644) < 0)
  {
LABEL_402:
    operator delete(__p[0]);
  }

LABEL_403:
  sub_100033910(&v640, 75, sub_100024F34, 0, 0, 0, "QEnvironment:", "Add an environment variable to the inferior's environment");
  v472 = a1[85];
  if (v472 < a1[86])
  {
    v473 = v640;
    v474 = v641;
    *(v472 + 32) = v642;
    *v472 = v473;
    *(v472 + 16) = v474;
    v475 = *__p;
    *(v472 + 56) = v644;
    *(v472 + 40) = v475;
    __p[0] = 0;
    __p[1] = 0;
    v476 = v646;
    *(v472 + 64) = *v645;
    *(v472 + 80) = v476;
    v644 = 0;
    v645[0] = 0;
    v645[1] = 0;
    v646 = 0;
    *v2 = v472 + 88;
    if ((SHIBYTE(v644) & 0x80000000) == 0)
    {
      goto LABEL_409;
    }

    goto LABEL_408;
  }

  v477 = sub_100034FCC(a1 + 84, &v640);
  v478 = SHIBYTE(v646);
  *v2 = v477;
  if ((v478 & 0x80000000) == 0)
  {
    if ((SHIBYTE(v644) & 0x80000000) == 0)
    {
      goto LABEL_409;
    }

    goto LABEL_408;
  }

  operator delete(v645[0]);
  if (SHIBYTE(v644) < 0)
  {
LABEL_408:
    operator delete(__p[0]);
  }

LABEL_409:
  sub_100033910(&v640, 76, sub_10002503C, 0, 0, 0, "QEnvironmentHexEncoded:", "Add an environment variable to the inferior's environment");
  v479 = a1[85];
  if (v479 < a1[86])
  {
    v480 = v640;
    v481 = v641;
    *(v479 + 32) = v642;
    *v479 = v480;
    *(v479 + 16) = v481;
    v482 = *__p;
    *(v479 + 56) = v644;
    *(v479 + 40) = v482;
    __p[0] = 0;
    __p[1] = 0;
    v483 = v646;
    *(v479 + 64) = *v645;
    *(v479 + 80) = v483;
    v644 = 0;
    v645[0] = 0;
    v645[1] = 0;
    v646 = 0;
    *v2 = v479 + 88;
    if ((SHIBYTE(v644) & 0x80000000) == 0)
    {
      goto LABEL_415;
    }

    goto LABEL_414;
  }

  v484 = sub_100034FCC(a1 + 84, &v640);
  v485 = SHIBYTE(v646);
  *v2 = v484;
  if ((v485 & 0x80000000) == 0)
  {
    if ((SHIBYTE(v644) & 0x80000000) == 0)
    {
      goto LABEL_415;
    }

    goto LABEL_414;
  }

  operator delete(v645[0]);
  if (SHIBYTE(v644) < 0)
  {
LABEL_414:
    operator delete(__p[0]);
  }

LABEL_415:
  sub_100033910(&v640, 77, sub_10002523C, 0, 0, 0, "QLaunchArch:", "Set the architecture to use when launching a process for hosts that can run multiple architecture slices from universal files.");
  v486 = a1[85];
  if (v486 < a1[86])
  {
    v487 = v640;
    v488 = v641;
    *(v486 + 32) = v642;
    *v486 = v487;
    *(v486 + 16) = v488;
    v489 = *__p;
    *(v486 + 56) = v644;
    *(v486 + 40) = v489;
    __p[0] = 0;
    __p[1] = 0;
    v490 = v646;
    *(v486 + 64) = *v645;
    *(v486 + 80) = v490;
    v644 = 0;
    v645[0] = 0;
    v645[1] = 0;
    v646 = 0;
    *v2 = v486 + 88;
    if ((SHIBYTE(v644) & 0x80000000) == 0)
    {
      goto LABEL_421;
    }

    goto LABEL_420;
  }

  v491 = sub_100034FCC(a1 + 84, &v640);
  v492 = SHIBYTE(v646);
  *v2 = v491;
  if ((v492 & 0x80000000) == 0)
  {
    if ((SHIBYTE(v644) & 0x80000000) == 0)
    {
      goto LABEL_421;
    }

    goto LABEL_420;
  }

  operator delete(v645[0]);
  if (SHIBYTE(v644) < 0)
  {
LABEL_420:
    operator delete(__p[0]);
  }

LABEL_421:
  sub_100033910(&v640, 78, sub_1000252E8, 0, 0, 0, "QSetDisableASLR:", "Set whether to disable ASLR when launching the process with the set argv ('A') packet");
  v493 = a1[85];
  if (v493 < a1[86])
  {
    v494 = v640;
    v495 = v641;
    *(v493 + 32) = v642;
    *v493 = v494;
    *(v493 + 16) = v495;
    v496 = *__p;
    *(v493 + 56) = v644;
    *(v493 + 40) = v496;
    __p[0] = 0;
    __p[1] = 0;
    v497 = v646;
    *(v493 + 64) = *v645;
    *(v493 + 80) = v497;
    v644 = 0;
    v645[0] = 0;
    v645[1] = 0;
    v646 = 0;
    *v2 = v493 + 88;
    if ((SHIBYTE(v644) & 0x80000000) == 0)
    {
      goto LABEL_427;
    }

    goto LABEL_426;
  }

  v498 = sub_100034FCC(a1 + 84, &v640);
  v499 = SHIBYTE(v646);
  *v2 = v498;
  if ((v499 & 0x80000000) == 0)
  {
    if ((SHIBYTE(v644) & 0x80000000) == 0)
    {
      goto LABEL_427;
    }

    goto LABEL_426;
  }

  operator delete(v645[0]);
  if (SHIBYTE(v644) < 0)
  {
LABEL_426:
    operator delete(__p[0]);
  }

LABEL_427:
  sub_100033910(&v640, 79, sub_1000253A8, 0, 0, 0, "QSetSTDIN:", "Set the standard input for a process to be launched with the 'A' packet");
  v500 = a1[85];
  if (v500 < a1[86])
  {
    v501 = v640;
    v502 = v641;
    *(v500 + 32) = v642;
    *v500 = v501;
    *(v500 + 16) = v502;
    v503 = *__p;
    *(v500 + 56) = v644;
    *(v500 + 40) = v503;
    __p[0] = 0;
    __p[1] = 0;
    v504 = v646;
    *(v500 + 64) = *v645;
    *(v500 + 80) = v504;
    v644 = 0;
    v645[0] = 0;
    v645[1] = 0;
    v646 = 0;
    *v2 = v500 + 88;
    if ((SHIBYTE(v644) & 0x80000000) == 0)
    {
      goto LABEL_433;
    }

    goto LABEL_432;
  }

  v505 = sub_100034FCC(a1 + 84, &v640);
  v506 = SHIBYTE(v646);
  *v2 = v505;
  if ((v506 & 0x80000000) == 0)
  {
    if ((SHIBYTE(v644) & 0x80000000) == 0)
    {
      goto LABEL_433;
    }

    goto LABEL_432;
  }

  operator delete(v645[0]);
  if (SHIBYTE(v644) < 0)
  {
LABEL_432:
    operator delete(__p[0]);
  }

LABEL_433:
  sub_100033910(&v640, 80, sub_1000253A8, 0, 0, 0, "QSetSTDOUT:", "Set the standard output for a process to be launched with the 'A' packet");
  v507 = a1[85];
  if (v507 < a1[86])
  {
    v508 = v640;
    v509 = v641;
    *(v507 + 32) = v642;
    *v507 = v508;
    *(v507 + 16) = v509;
    v510 = *__p;
    *(v507 + 56) = v644;
    *(v507 + 40) = v510;
    __p[0] = 0;
    __p[1] = 0;
    v511 = v646;
    *(v507 + 64) = *v645;
    *(v507 + 80) = v511;
    v644 = 0;
    v645[0] = 0;
    v645[1] = 0;
    v646 = 0;
    *v2 = v507 + 88;
    if ((SHIBYTE(v644) & 0x80000000) == 0)
    {
      goto LABEL_439;
    }

    goto LABEL_438;
  }

  v512 = sub_100034FCC(a1 + 84, &v640);
  v513 = SHIBYTE(v646);
  *v2 = v512;
  if ((v513 & 0x80000000) == 0)
  {
    if ((SHIBYTE(v644) & 0x80000000) == 0)
    {
      goto LABEL_439;
    }

    goto LABEL_438;
  }

  operator delete(v645[0]);
  if (SHIBYTE(v644) < 0)
  {
LABEL_438:
    operator delete(__p[0]);
  }

LABEL_439:
  sub_100033910(&v640, 81, sub_1000253A8, 0, 0, 0, "QSetSTDERR:", "Set the standard error for a process to be launched with the 'A' packet");
  v514 = a1[85];
  if (v514 < a1[86])
  {
    v515 = v640;
    v516 = v641;
    *(v514 + 32) = v642;
    *v514 = v515;
    *(v514 + 16) = v516;
    v517 = *__p;
    *(v514 + 56) = v644;
    *(v514 + 40) = v517;
    __p[0] = 0;
    __p[1] = 0;
    v518 = v646;
    *(v514 + 64) = *v645;
    *(v514 + 80) = v518;
    v644 = 0;
    v645[0] = 0;
    v645[1] = 0;
    v646 = 0;
    *v2 = v514 + 88;
    if ((SHIBYTE(v644) & 0x80000000) == 0)
    {
      goto LABEL_445;
    }

    goto LABEL_444;
  }

  v519 = sub_100034FCC(a1 + 84, &v640);
  v520 = SHIBYTE(v646);
  *v2 = v519;
  if ((v520 & 0x80000000) == 0)
  {
    if ((SHIBYTE(v644) & 0x80000000) == 0)
    {
      goto LABEL_445;
    }

    goto LABEL_444;
  }

  operator delete(v645[0]);
  if (SHIBYTE(v644) < 0)
  {
LABEL_444:
    operator delete(__p[0]);
  }

LABEL_445:
  sub_100033910(&v640, 82, sub_10002554C, 0, 0, 0, "QSetWorkingDir:", "Set the working directory for a process to be launched with the 'A' packet");
  v521 = a1[85];
  if (v521 < a1[86])
  {
    v522 = v640;
    v523 = v641;
    *(v521 + 32) = v642;
    *v521 = v522;
    *(v521 + 16) = v523;
    v524 = *__p;
    *(v521 + 56) = v644;
    *(v521 + 40) = v524;
    __p[0] = 0;
    __p[1] = 0;
    v525 = v646;
    *(v521 + 64) = *v645;
    *(v521 + 80) = v525;
    v644 = 0;
    v645[0] = 0;
    v645[1] = 0;
    v646 = 0;
    *v2 = v521 + 88;
    if ((SHIBYTE(v644) & 0x80000000) == 0)
    {
      goto LABEL_451;
    }

    goto LABEL_450;
  }

  v526 = sub_100034FCC(a1 + 84, &v640);
  v527 = SHIBYTE(v646);
  *v2 = v526;
  if ((v527 & 0x80000000) == 0)
  {
    if ((SHIBYTE(v644) & 0x80000000) == 0)
    {
      goto LABEL_451;
    }

    goto LABEL_450;
  }

  operator delete(v645[0]);
  if (SHIBYTE(v644) < 0)
  {
LABEL_450:
    operator delete(__p[0]);
  }

LABEL_451:
  sub_100033910(&v640, 83, sub_100025764, 0, 0, 0, "QListThreadsInStopReply", "Set if the 'threads' key should be added to the stop reply packets with a list of all thread IDs.");
  v528 = a1[85];
  if (v528 < a1[86])
  {
    v529 = v640;
    v530 = v641;
    *(v528 + 32) = v642;
    *v528 = v529;
    *(v528 + 16) = v530;
    v531 = *__p;
    *(v528 + 56) = v644;
    *(v528 + 40) = v531;
    __p[0] = 0;
    __p[1] = 0;
    v532 = v646;
    *(v528 + 64) = *v645;
    *(v528 + 80) = v532;
    v644 = 0;
    v645[0] = 0;
    v645[1] = 0;
    v646 = 0;
    *v2 = v528 + 88;
    if ((SHIBYTE(v644) & 0x80000000) == 0)
    {
      goto LABEL_457;
    }

    goto LABEL_456;
  }

  v533 = sub_100034FCC(a1 + 84, &v640);
  v534 = SHIBYTE(v646);
  *v2 = v533;
  if ((v534 & 0x80000000) == 0)
  {
    if ((SHIBYTE(v644) & 0x80000000) == 0)
    {
      goto LABEL_457;
    }

    goto LABEL_456;
  }

  operator delete(v645[0]);
  if (SHIBYTE(v644) < 0)
  {
LABEL_456:
    operator delete(__p[0]);
  }

LABEL_457:
  sub_100033910(&v640, 84, sub_1000257CC, 0, 0, 0, "QSyncThreadState:", "Do whatever is necessary to make sure 'thread' is in a safe state to call functions on.");
  v535 = a1[85];
  if (v535 < a1[86])
  {
    v536 = v640;
    v537 = v641;
    *(v535 + 32) = v642;
    *v535 = v536;
    *(v535 + 16) = v537;
    v538 = *__p;
    *(v535 + 56) = v644;
    *(v535 + 40) = v538;
    __p[0] = 0;
    __p[1] = 0;
    v539 = v646;
    *(v535 + 64) = *v645;
    *(v535 + 80) = v539;
    v644 = 0;
    v645[0] = 0;
    v645[1] = 0;
    v646 = 0;
    *v2 = v535 + 88;
    if ((SHIBYTE(v644) & 0x80000000) == 0)
    {
      goto LABEL_463;
    }

    goto LABEL_462;
  }

  v540 = sub_100034FCC(a1 + 84, &v640);
  v541 = SHIBYTE(v646);
  *v2 = v540;
  if ((v541 & 0x80000000) == 0)
  {
    if ((SHIBYTE(v644) & 0x80000000) == 0)
    {
      goto LABEL_463;
    }

    goto LABEL_462;
  }

  operator delete(v645[0]);
  if (SHIBYTE(v644) < 0)
  {
LABEL_462:
    operator delete(__p[0]);
  }

LABEL_463:
  sub_100033910(&v640, 90, sub_1000258FC, 0, 0, 0, "_M", "Allocate memory in the inferior process.");
  v542 = a1[85];
  if (v542 < a1[86])
  {
    v543 = v640;
    v544 = v641;
    *(v542 + 32) = v642;
    *v542 = v543;
    *(v542 + 16) = v544;
    v545 = *__p;
    *(v542 + 56) = v644;
    *(v542 + 40) = v545;
    __p[0] = 0;
    __p[1] = 0;
    v546 = v646;
    *(v542 + 64) = *v645;
    *(v542 + 80) = v546;
    v644 = 0;
    v645[0] = 0;
    v645[1] = 0;
    v646 = 0;
    *v2 = v542 + 88;
    if ((SHIBYTE(v644) & 0x80000000) == 0)
    {
      goto LABEL_469;
    }

    goto LABEL_468;
  }

  v547 = sub_100034FCC(a1 + 84, &v640);
  v548 = SHIBYTE(v646);
  *v2 = v547;
  if ((v548 & 0x80000000) == 0)
  {
    if ((SHIBYTE(v644) & 0x80000000) == 0)
    {
      goto LABEL_469;
    }

    goto LABEL_468;
  }

  operator delete(v645[0]);
  if (SHIBYTE(v644) < 0)
  {
LABEL_468:
    operator delete(__p[0]);
  }

LABEL_469:
  sub_100033910(&v640, 91, sub_100025DA4, 0, 0, 0, "_m", "Deallocate memory in the inferior process.");
  v549 = a1[85];
  if (v549 < a1[86])
  {
    v550 = v640;
    v551 = v641;
    *(v549 + 32) = v642;
    *v549 = v550;
    *(v549 + 16) = v551;
    v552 = *__p;
    *(v549 + 56) = v644;
    *(v549 + 40) = v552;
    __p[0] = 0;
    __p[1] = 0;
    v553 = v646;
    *(v549 + 64) = *v645;
    *(v549 + 80) = v553;
    v644 = 0;
    v645[0] = 0;
    v645[1] = 0;
    v646 = 0;
    *v2 = v549 + 88;
    if ((SHIBYTE(v644) & 0x80000000) == 0)
    {
      goto LABEL_475;
    }

    goto LABEL_474;
  }

  v554 = sub_100034FCC(a1 + 84, &v640);
  v555 = SHIBYTE(v646);
  *v2 = v554;
  if ((v555 & 0x80000000) == 0)
  {
    if ((SHIBYTE(v644) & 0x80000000) == 0)
    {
      goto LABEL_475;
    }

    goto LABEL_474;
  }

  operator delete(v645[0]);
  if (SHIBYTE(v644) < 0)
  {
LABEL_474:
    operator delete(__p[0]);
  }

LABEL_475:
  sub_100033910(&v640, 93, sub_100025E84, 0, 0, 0, "QSaveRegisterState", "Save the register state for the current thread and return a decimal save ID.");
  v556 = a1[85];
  if (v556 < a1[86])
  {
    v557 = v640;
    v558 = v641;
    *(v556 + 32) = v642;
    *v556 = v557;
    *(v556 + 16) = v558;
    v559 = *__p;
    *(v556 + 56) = v644;
    *(v556 + 40) = v559;
    __p[0] = 0;
    __p[1] = 0;
    v560 = v646;
    *(v556 + 64) = *v645;
    *(v556 + 80) = v560;
    v644 = 0;
    v645[0] = 0;
    v645[1] = 0;
    v646 = 0;
    *v2 = v556 + 88;
    if ((SHIBYTE(v644) & 0x80000000) == 0)
    {
      goto LABEL_481;
    }

    goto LABEL_480;
  }

  v561 = sub_100034FCC(a1 + 84, &v640);
  v562 = SHIBYTE(v646);
  *v2 = v561;
  if ((v562 & 0x80000000) == 0)
  {
    if ((SHIBYTE(v644) & 0x80000000) == 0)
    {
      goto LABEL_481;
    }

    goto LABEL_480;
  }

  operator delete(v645[0]);
  if (SHIBYTE(v644) < 0)
  {
LABEL_480:
    operator delete(__p[0]);
  }

LABEL_481:
  sub_100033910(&v640, 94, sub_1000260D4, 0, 0, 0, "QRestoreRegisterState:", "Restore the register state given a save ID previously returned from a call to QSaveRegisterState.");
  v563 = a1[85];
  if (v563 < a1[86])
  {
    v564 = v640;
    v565 = v641;
    *(v563 + 32) = v642;
    *v563 = v564;
    *(v563 + 16) = v565;
    v566 = *__p;
    *(v563 + 56) = v644;
    *(v563 + 40) = v566;
    __p[0] = 0;
    __p[1] = 0;
    v567 = v646;
    *(v563 + 64) = *v645;
    *(v563 + 80) = v567;
    v644 = 0;
    v645[0] = 0;
    v645[1] = 0;
    v646 = 0;
    *v2 = v563 + 88;
    if ((SHIBYTE(v644) & 0x80000000) == 0)
    {
      goto LABEL_487;
    }

    goto LABEL_486;
  }

  v568 = sub_100034FCC(a1 + 84, &v640);
  v569 = SHIBYTE(v646);
  *v2 = v568;
  if ((v569 & 0x80000000) == 0)
  {
    if ((SHIBYTE(v644) & 0x80000000) == 0)
    {
      goto LABEL_487;
    }

    goto LABEL_486;
  }

  operator delete(v645[0]);
  if (SHIBYTE(v644) < 0)
  {
LABEL_486:
    operator delete(__p[0]);
  }

LABEL_487:
  sub_100033910(&v640, 85, sub_1000262BC, 0, 0, 0, "qMemoryRegionInfo", "Return size and attributes of a memory region that contains the given address");
  v570 = a1[85];
  if (v570 < a1[86])
  {
    v571 = v640;
    v572 = v641;
    *(v570 + 32) = v642;
    *v570 = v571;
    *(v570 + 16) = v572;
    v573 = *__p;
    *(v570 + 56) = v644;
    *(v570 + 40) = v573;
    __p[0] = 0;
    __p[1] = 0;
    v574 = v646;
    *(v570 + 64) = *v645;
    *(v570 + 80) = v574;
    v644 = 0;
    v645[0] = 0;
    v645[1] = 0;
    v646 = 0;
    *v2 = v570 + 88;
    if ((SHIBYTE(v644) & 0x80000000) == 0)
    {
      goto LABEL_493;
    }

    goto LABEL_492;
  }

  v575 = sub_100034FCC(a1 + 84, &v640);
  v576 = SHIBYTE(v646);
  *v2 = v575;
  if ((v576 & 0x80000000) == 0)
  {
    if ((SHIBYTE(v644) & 0x80000000) == 0)
    {
      goto LABEL_493;
    }

    goto LABEL_492;
  }

  operator delete(v645[0]);
  if (SHIBYTE(v644) < 0)
  {
LABEL_492:
    operator delete(__p[0]);
  }

LABEL_493:
  sub_100033910(&v640, 86, sub_100026A2C, 0, 0, 0, "qGetProfileData", "Return profiling data of the current target.");
  v577 = a1[85];
  if (v577 < a1[86])
  {
    v578 = v640;
    v579 = v641;
    *(v577 + 32) = v642;
    *v577 = v578;
    *(v577 + 16) = v579;
    v580 = *__p;
    *(v577 + 56) = v644;
    *(v577 + 40) = v580;
    __p[0] = 0;
    __p[1] = 0;
    v581 = v646;
    *(v577 + 64) = *v645;
    *(v577 + 80) = v581;
    v644 = 0;
    v645[0] = 0;
    v645[1] = 0;
    v646 = 0;
    *v2 = v577 + 88;
    if ((SHIBYTE(v644) & 0x80000000) == 0)
    {
      goto LABEL_499;
    }

    goto LABEL_498;
  }

  v582 = sub_100034FCC(a1 + 84, &v640);
  v583 = SHIBYTE(v646);
  *v2 = v582;
  if ((v583 & 0x80000000) == 0)
  {
    if ((SHIBYTE(v644) & 0x80000000) == 0)
    {
      goto LABEL_499;
    }

    goto LABEL_498;
  }

  operator delete(v645[0]);
  if (SHIBYTE(v644) < 0)
  {
LABEL_498:
    operator delete(__p[0]);
  }

LABEL_499:
  sub_100033910(&v640, 87, sub_100026EDC, 0, 0, 0, "QSetEnableAsyncProfiling", "Enable or disable the profiling of current target.");
  v584 = a1[85];
  if (v584 < a1[86])
  {
    v585 = v640;
    v586 = v641;
    *(v584 + 32) = v642;
    *v584 = v585;
    *(v584 + 16) = v586;
    v587 = *__p;
    *(v584 + 56) = v644;
    *(v584 + 40) = v587;
    __p[0] = 0;
    __p[1] = 0;
    v588 = v646;
    *(v584 + 64) = *v645;
    *(v584 + 80) = v588;
    v644 = 0;
    v645[0] = 0;
    v645[1] = 0;
    v646 = 0;
    *v2 = v584 + 88;
    if ((SHIBYTE(v644) & 0x80000000) == 0)
    {
      goto LABEL_505;
    }

    goto LABEL_504;
  }

  v589 = sub_100034FCC(a1 + 84, &v640);
  v590 = SHIBYTE(v646);
  *v2 = v589;
  if ((v590 & 0x80000000) == 0)
  {
    if ((SHIBYTE(v644) & 0x80000000) == 0)
    {
      goto LABEL_505;
    }

    goto LABEL_504;
  }

  operator delete(v645[0]);
  if (SHIBYTE(v644) < 0)
  {
LABEL_504:
    operator delete(__p[0]);
  }

LABEL_505:
  sub_100033910(&v640, 88, sub_1000274B4, 0, 0, 0, "QEnableCompression:", "Enable compression for the remainder of the connection");
  v591 = a1[85];
  if (v591 < a1[86])
  {
    v592 = v640;
    v593 = v641;
    *(v591 + 32) = v642;
    *v591 = v592;
    *(v591 + 16) = v593;
    v594 = *__p;
    *(v591 + 56) = v644;
    *(v591 + 40) = v594;
    __p[0] = 0;
    __p[1] = 0;
    v595 = v646;
    *(v591 + 64) = *v645;
    *(v591 + 80) = v595;
    v644 = 0;
    v645[0] = 0;
    v645[1] = 0;
    v646 = 0;
    *v2 = v591 + 88;
    if ((SHIBYTE(v644) & 0x80000000) == 0)
    {
      goto LABEL_511;
    }

    goto LABEL_510;
  }

  v596 = sub_100034FCC(a1 + 84, &v640);
  v597 = SHIBYTE(v646);
  *v2 = v596;
  if ((v597 & 0x80000000) == 0)
  {
    if ((SHIBYTE(v644) & 0x80000000) == 0)
    {
      goto LABEL_511;
    }

    goto LABEL_510;
  }

  operator delete(v645[0]);
  if (SHIBYTE(v644) < 0)
  {
LABEL_510:
    operator delete(__p[0]);
  }

LABEL_511:
  sub_100033910(&v640, 89, sub_100027600, 0, 0, 0, "qWatchpointSupportInfo", "Return the number of supported hardware watchpoints");
  v598 = a1[85];
  if (v598 < a1[86])
  {
    v599 = v640;
    v600 = v641;
    *(v598 + 32) = v642;
    *v598 = v599;
    *(v598 + 16) = v600;
    v601 = *__p;
    *(v598 + 56) = v644;
    *(v598 + 40) = v601;
    __p[0] = 0;
    __p[1] = 0;
    v602 = v646;
    *(v598 + 64) = *v645;
    *(v598 + 80) = v602;
    v644 = 0;
    v645[0] = 0;
    v645[1] = 0;
    v646 = 0;
    *v2 = v598 + 88;
    if ((SHIBYTE(v644) & 0x80000000) == 0)
    {
      goto LABEL_517;
    }

    goto LABEL_516;
  }

  v603 = sub_100034FCC(a1 + 84, &v640);
  v604 = SHIBYTE(v646);
  *v2 = v603;
  if ((v604 & 0x80000000) == 0)
  {
    if ((SHIBYTE(v644) & 0x80000000) == 0)
    {
      goto LABEL_517;
    }

    goto LABEL_516;
  }

  operator delete(v645[0]);
  if (SHIBYTE(v644) < 0)
  {
LABEL_516:
    operator delete(__p[0]);
  }

LABEL_517:
  sub_100033910(&v640, 92, sub_100027994, 0, 0, 0, "QSetProcessEvent:", "Set a process event, to be passed to the process, can be set before the process is started, or after.");
  v605 = a1[85];
  if (v605 < a1[86])
  {
    v606 = v640;
    v607 = v641;
    *(v605 + 32) = v642;
    *v605 = v606;
    *(v605 + 16) = v607;
    v608 = *__p;
    *(v605 + 56) = v644;
    *(v605 + 40) = v608;
    __p[0] = 0;
    __p[1] = 0;
    v609 = v646;
    *(v605 + 64) = *v645;
    *(v605 + 80) = v609;
    v644 = 0;
    v645[0] = 0;
    v645[1] = 0;
    v646 = 0;
    *v2 = v605 + 88;
    if ((SHIBYTE(v644) & 0x80000000) == 0)
    {
      goto LABEL_523;
    }

    goto LABEL_522;
  }

  v610 = sub_100034FCC(a1 + 84, &v640);
  v611 = SHIBYTE(v646);
  *v2 = v610;
  if ((v611 & 0x80000000) == 0)
  {
    if ((SHIBYTE(v644) & 0x80000000) == 0)
    {
      goto LABEL_523;
    }

    goto LABEL_522;
  }

  operator delete(v645[0]);
  if (SHIBYTE(v644) < 0)
  {
LABEL_522:
    operator delete(__p[0]);
  }

LABEL_523:
  sub_100033910(&v640, 96, sub_100027A54, 0, 0, 0, "QSetDetachOnError:", "Set whether debugserver will detach (1) or kill (0) from the process it is controlling if it loses connection to lldb.");
  v612 = a1[85];
  if (v612 < a1[86])
  {
    v613 = v640;
    v614 = v641;
    *(v612 + 32) = v642;
    *v612 = v613;
    *(v612 + 16) = v614;
    v615 = *__p;
    *(v612 + 56) = v644;
    *(v612 + 40) = v615;
    __p[0] = 0;
    __p[1] = 0;
    v616 = v646;
    *(v612 + 64) = *v645;
    *(v612 + 80) = v616;
    v644 = 0;
    v645[0] = 0;
    v645[1] = 0;
    v646 = 0;
    *v2 = v612 + 88;
    if ((SHIBYTE(v644) & 0x80000000) == 0)
    {
      goto LABEL_529;
    }

    goto LABEL_528;
  }

  v617 = sub_100034FCC(a1 + 84, &v640);
  v618 = SHIBYTE(v646);
  *v2 = v617;
  if ((v618 & 0x80000000) == 0)
  {
    if ((SHIBYTE(v644) & 0x80000000) == 0)
    {
      goto LABEL_529;
    }

    goto LABEL_528;
  }

  operator delete(v645[0]);
  if (SHIBYTE(v644) < 0)
  {
LABEL_528:
    operator delete(__p[0]);
  }

LABEL_529:
  sub_100033910(&v640, 95, sub_100027AF4, 0, 0, 0, "qSpeedTest:", "Test the maximum speed at which packet can be sent/received.");
  v619 = a1[85];
  if (v619 < a1[86])
  {
    v620 = v640;
    v621 = v641;
    *(v619 + 32) = v642;
    *v619 = v620;
    *(v619 + 16) = v621;
    v622 = *__p;
    *(v619 + 56) = v644;
    *(v619 + 40) = v622;
    __p[0] = 0;
    __p[1] = 0;
    v623 = v646;
    *(v619 + 64) = *v645;
    *(v619 + 80) = v623;
    v644 = 0;
    v645[0] = 0;
    v645[1] = 0;
    v646 = 0;
    *v2 = v619 + 88;
    if ((SHIBYTE(v644) & 0x80000000) == 0)
    {
      goto LABEL_535;
    }

    goto LABEL_534;
  }

  v624 = sub_100034FCC(a1 + 84, &v640);
  v625 = SHIBYTE(v646);
  *v2 = v624;
  if ((v625 & 0x80000000) == 0)
  {
    if ((SHIBYTE(v644) & 0x80000000) == 0)
    {
      goto LABEL_535;
    }

    goto LABEL_534;
  }

  operator delete(v645[0]);
  if (SHIBYTE(v644) < 0)
  {
LABEL_534:
    operator delete(__p[0]);
  }

LABEL_535:
  sub_100033910(&v640, 97, sub_100027CB8, 0, 0, 0, "qXfer:", "Support the qXfer packet.");
  v626 = a1[85];
  if (v626 < a1[86])
  {
    v627 = v640;
    v628 = v641;
    *(v626 + 32) = v642;
    *v626 = v627;
    *(v626 + 16) = v628;
    v629 = *__p;
    *(v626 + 56) = v644;
    *(v626 + 40) = v629;
    __p[0] = 0;
    __p[1] = 0;
    v630 = v646;
    *(v626 + 64) = *v645;
    *(v626 + 80) = v630;
    v644 = 0;
    v645[0] = 0;
    v645[1] = 0;
    v646 = 0;
    *v2 = v626 + 88;
    if ((SHIBYTE(v644) & 0x80000000) == 0)
    {
      goto LABEL_541;
    }

    goto LABEL_540;
  }

  v631 = sub_100034FCC(a1 + 84, &v640);
  v632 = SHIBYTE(v646);
  *v2 = v631;
  if ((v632 & 0x80000000) == 0)
  {
    if ((SHIBYTE(v644) & 0x80000000) == 0)
    {
      goto LABEL_541;
    }

    goto LABEL_540;
  }

  operator delete(v645[0]);
  if (SHIBYTE(v644) < 0)
  {
LABEL_540:
    operator delete(__p[0]);
  }

LABEL_541:
  sub_100033910(&v640, 98, sub_1000284A8, 0, 0, 0, "jGetDyldProcessState", "Query the process state from dyld.");
  v633 = a1[85];
  if (v633 < a1[86])
  {
    v634 = v640;
    v635 = v641;
    *(v633 + 32) = v642;
    *v633 = v634;
    *(v633 + 16) = v635;
    v636 = *__p;
    *(v633 + 56) = v644;
    *(v633 + 40) = v636;
    __p[0] = 0;
    __p[1] = 0;
    v637 = v646;
    *(v633 + 64) = *v645;
    *(v633 + 80) = v637;
    v644 = 0;
    v645[0] = 0;
    v645[1] = 0;
    v646 = 0;
    *v2 = v633 + 88;
    if ((SHIBYTE(v644) & 0x80000000) == 0)
    {
      return;
    }

    goto LABEL_546;
  }

  v638 = sub_100034FCC(a1 + 84, &v640);
  v639 = SHIBYTE(v646);
  *v2 = v638;
  if ((v639 & 0x80000000) == 0)
  {
    if ((SHIBYTE(v644) & 0x80000000) == 0)
    {
      return;
    }

    goto LABEL_546;
  }

  operator delete(v645[0]);
  if (SHIBYTE(v644) < 0)
  {
LABEL_546:
    operator delete(__p[0]);
  }
}

uint64_t sub_100018F7C(uint64_t a1)
{
  if (sub_100010524(0x100000))
  {
    sub_100010668("%s", "RNBRemote::~RNBRemote()");
  }

  sub_1000190F4(a1);
  if (*(a1 + 767) < 0)
  {
    operator delete(*(a1 + 744));
  }

  sub_100034E44(a1 + 696);
  v2 = *(a1 + 672);
  if (v2)
  {
    v3 = *(a1 + 680);
    v4 = *(a1 + 672);
    if (v3 == v2)
    {
LABEL_15:
      *(a1 + 680) = v2;
      operator delete(v4);
      goto LABEL_16;
    }

    while (1)
    {
      if (*(v3 - 1) < 0)
      {
        operator delete(*(v3 - 24));
        if (*(v3 - 25) < 0)
        {
LABEL_13:
          operator delete(*(v3 - 48));
        }
      }

      else if (*(v3 - 25) < 0)
      {
        goto LABEL_13;
      }

      v3 -= 88;
      if (v3 == v2)
      {
        v4 = *(a1 + 672);
        goto LABEL_15;
      }
    }
  }

LABEL_16:
  if (!pthread_mutex_destroy((a1 + 552)) || pthread_mutex_unlock((a1 + 552)))
  {
    if ((*(a1 + 535) & 0x80000000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  pthread_mutex_destroy((a1 + 552));
  if (*(a1 + 535) < 0)
  {
LABEL_19:
    operator delete(*(a1 + 512));
  }

LABEL_20:
  sub_100037CA4(a1 + 472);
  v5 = *(a1 + 488);
  *(a1 + 488) = 0;
  if (v5)
  {
    if (pthread_mutex_destroy(v5))
    {
      if (!pthread_mutex_unlock(v5))
      {
        pthread_mutex_destroy(v5);
      }
    }

    operator delete();
  }

  return sub_100012CA0(a1);
}

uint64_t sub_1000190F4(uint64_t a1)
{
  if (sub_100010524(0x100000))
  {
    v2 = *(a1 + 488);
    if (v2)
    {
      pthread_mutex_lock(*(a1 + 488));
    }

    gettimeofday(&v16, 0);
    tv_sec = v16.tv_sec;
    tv_usec = v16.tv_usec;
    v5 = *(a1 + 496);
    v6 = *(a1 + 504);
    *(a1 + 496) = v16;
    if (v2)
    {
      pthread_mutex_unlock(v2);
    }

    sub_100010668("%8u RNBRemote::%s called", tv_usec - v6 + 1000000 * (tv_sec - v5), "StopReadRemoteDataThread");
  }

  result = sub_100012808(a1 + 120);
  if ((result & 0x40) != 0)
  {
    if (sub_100010510())
    {
      sub_100010544(0, "debugserver about to shut down packet communications to lldb.", v8, v9, v10, v11, v12, v13, v14);
    }

    sub_100037CA4(a1 + 472);
    gettimeofday(&v16, 0);
    v15.tv_sec = v16.tv_sec + v16.tv_usec / 1000000 + 2;
    v15.tv_nsec = 1000 * v16.tv_usec % 1000000000;
    return sub_1000128FC(a1 + 120, 0x80u, &v15);
  }

  return result;
}

BOOL sub_100019250(uint64_t a1, char *__s)
{
  if (__s)
  {
    if (*__s)
    {
      v3 = a1;
      v4 = strlen(__s);
      a1 = v3;
      if (v4 > 2)
      {
        __endptr = 0;
        *__error() = 0;
        v8 = strtoull(__s + 1, &__endptr, 16);
        if (*__error() && !v8)
        {
          v6 = __s + 1;
          a1 = v3;
          v5 = 3124;
          goto LABEL_5;
        }

        v9 = __endptr;
        if (*__endptr != 44)
        {
          v6 = __s + 1;
          a1 = v3;
          v5 = 3128;
          goto LABEL_5;
        }

        *__error() = 0;
        v10 = strtoul(v9 + 1, 0, 16);
        if (*__error() && !v10)
        {
          v6 = v9 + 1;
          a1 = v3;
          v5 = 3138;
          goto LABEL_5;
        }

        if (!v10)
        {
          sub_100013A80(__p, &unk_10005B2EA);
          v13 = sub_100029084(v3, __p);
          if (v27 < 0)
          {
            v14 = __p[0];
LABEL_46:
            operator delete(v14);
          }

          return v13;
        }

        sub_100035F50(&__b, v10, 0);
        v11 = v33;
        if ((v33 & 0x8000000000000000) != 0)
        {
          v11 = v32;
          if (v32)
          {
            v12 = __b;
LABEL_24:
            v15 = sub_10000D364(*(v3 + 12), v8, v11, v12);
            if (v15)
            {
              v16 = v15;
              sub_100028EE0(__p);
              for (i = 0; i != v16; ++i)
              {
                v20 = __p[0];
                v21 = __p + *(__p[0] - 3);
                if (*(v21 + 36) == -1)
                {
                  std::ios_base::getloc((__p + *(__p[0] - 3)));
                  v22 = std::locale::use_facet(&v24, &std::ctype<char>::id);
                  (v22->__vftable[2].~facet_0)(v22, 32);
                  std::locale::~locale(&v24);
                  v20 = __p[0];
                }

                *(v21 + 36) = 48;
                *(&__p[1] + *(v20 - 3)) = *(&__p[1] + *(v20 - 3)) & 0xFFFFFFB5 | 8;
                *(&__p[1] + *(v20 - 3)) = *(&__p[1] + *(v20 - 3)) & 0xFFFFFF4F | 0x80;
                *&v28[*(v20 - 3)] = 2;
                if (v33 >= 0)
                {
                  p_b = &__b;
                }

                else
                {
                  p_b = __b;
                }

                v19 = *(p_b + i);
                std::ostream::operator<<();
              }

              std::stringbuf::str();
              v13 = sub_100029084(v3, &v24);
              if (v25 < 0)
              {
                operator delete(v24.__locale_);
              }

              sub_1000294EC(__p);
              goto LABEL_44;
            }

            sub_100013A80(&v29, "E08");
            sub_100013A80(__p, &unk_10005B2EA);
            v13 = sub_100029BE8(v3, &v29, __p);
            if (v27 < 0)
            {
              operator delete(__p[0]);
            }

            if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
            {
              v23 = v29.__r_.__value_.__r.__words[0];
              goto LABEL_43;
            }

            goto LABEL_44;
          }
        }

        else if (v33)
        {
          v12 = &__b;
          goto LABEL_24;
        }

        sub_100013A80(&v30, "E78");
        sub_100013A80(__p, &unk_10005B2EA);
        v13 = sub_100029BE8(v3, &v30, __p);
        if (v27 < 0)
        {
          operator delete(__p[0]);
        }

        if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
        {
          v23 = v30.__r_.__value_.__r.__words[0];
LABEL_43:
          operator delete(v23);
        }

LABEL_44:
        if (v33 < 0)
        {
          v14 = __b;
          goto LABEL_46;
        }

        return v13;
      }
    }
  }

  v5 = 3116;
  v6 = __s;
LABEL_5:

  return sub_10002A394(a1, "/Library/Caches/com.apple.xbs/Sources/lldb/llvm-project/lldb/tools/debugserver/source/RNBRemote.cpp", v5, v6);
}

BOOL sub_10001965C(uint64_t a1, const char *a2)
{
  if (qword_10007DAF0)
  {
    if (!a2)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v3 = a1;
    sub_10002B45C(a1, 0);
    a1 = v3;
    if (!a2)
    {
      goto LABEL_10;
    }
  }

  if (*a2)
  {
    v4 = *(a1 + 12);
    if (!v4)
    {
      *(&v41.__r_.__value_.__s + 23) = 3;
      LODWORD(v41.__r_.__value_.__l.__data_) = 3486021;
      HIBYTE(v31.__locale_) = 0;
      LOBYTE(v29) = 0;
      result = sub_100029BE8(a1, &v41, &v29);
      if ((SHIBYTE(v41.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        return result;
      }

      v10 = result;
      operator delete(v41.__r_.__value_.__l.__data_);
      return v10;
    }

    v5 = a1;
    *__error() = 0;
    __endptr = 0;
    v6 = strtoul(a2 + 1, &__endptr, 16);
    if (*__error() && !v6)
    {
      v7 = v5;
      v8 = 4118;
      return sub_10002A394(v7, "/Library/Caches/com.apple.xbs/Sources/lldb/llvm-project/lldb/tools/debugserver/source/RNBRemote.cpp", v8, a2);
    }

    if (*(v5 + 782) == 1)
    {
      if (!__endptr)
      {
        goto LABEL_30;
      }

      v11 = strstr(__endptr, "thread:");
      if (!v11)
      {
        goto LABEL_30;
      }

      v12 = strtoul(v11 + 7, 0, 16);
    }

    else
    {
      v13 = *(v5 + 544);
      if ((v13 + 1) > 1)
      {
LABEL_22:
        v22 = qword_10007DAE8;
        v23 = qword_10007DAF0;
        v39 = 0;
        *(&v29 + *(v29 - 3)) = v14;
        v15 = (&v29 + *(v29 - 3));
        std::ios_base::init(v15, &v30);
        v15[1].__vftable = 0;
        v15[1].__fmtflags_ = -1;
        std::locale::locale(&v31);
        v34 = 0u;
        v33 = 0u;
        v32 = 0u;
        v35 = 0u;
        v36 = 0u;
        v37 = 16;
        sub_100034D34(&v30);
        if (v6 < v23 && v22)
        {
          v16 = v22 + (v6 << 7);
          if (*(v16 + 12) == -1)
          {
            v21 = *(v16 + 36);
            if (v21)
            {
              v25 = 0;
              sub_100035ED0(&__p, v21);
              sub_100013B38(&v29, __p, v27 - __p, 0);
              if (__p)
              {
                v27 = __p;
                operator delete(__p);
              }
            }
          }

          else if ((sub_10002DECC(&v29, v4, v13, v16) & 1) == 0)
          {
            sub_100013A80(&v24, "E97");
            sub_100013A80(&__p, &unk_10005B2EA);
            v17 = sub_100029BE8(v5, &v24, &__p);
            if (v28 < 0)
            {
              v18 = v17;
              operator delete(__p);
              v17 = v18;
            }

            if ((SHIBYTE(v24.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              goto LABEL_38;
            }

            v19 = v24.__r_.__value_.__r.__words[0];
            goto LABEL_37;
          }
        }

        else
        {
          if (sub_100010510())
          {
            sub_1000107A0("RNBRemote::HandlePacket_p(%s): unknown register number %u requested\n", a2, v6);
          }

          sub_100034978(&v29, "00000000", 8);
        }

        std::stringbuf::str();
        v17 = sub_100029084(v5, &__p);
        if ((v28 & 0x80000000) == 0)
        {
LABEL_38:
          v10 = v17;
          if (SBYTE7(v36) < 0)
          {
            operator delete(v35);
          }

          std::locale::~locale(&v31);
          std::ostream::~ostream();
          std::ios::~ios();
          return v10;
        }

        v19 = __p;
LABEL_37:
        v20 = v17;
        operator delete(v19);
        v17 = v20;
        goto LABEL_38;
      }

      v12 = sub_10000DE24(*(v5 + 12));
    }

    v13 = v12;
    if (v12)
    {
      goto LABEL_22;
    }

LABEL_30:
    v7 = v5;
    v8 = 4123;
    return sub_10002A394(v7, "/Library/Caches/com.apple.xbs/Sources/lldb/llvm-project/lldb/tools/debugserver/source/RNBRemote.cpp", v8, a2);
  }

LABEL_10:

  return sub_10002A394(a1, "/Library/Caches/com.apple.xbs/Sources/lldb/llvm-project/lldb/tools/debugserver/source/RNBRemote.cpp", 4106, a2);
}

BOOL sub_100019BD4(uint64_t a1, uint64_t a2)
{
  v27 = 0;
  *(&v17 + *(v17 - 3)) = v4;
  v5 = (&v17 + *(v17 - 3));
  std::ios_base::init(v5, &v18);
  v5[1].__vftable = 0;
  v5[1].__fmtflags_ = -1;
  std::locale::locale(&v19);
  v22 = 0u;
  v21 = 0u;
  v20 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 16;
  sub_100034D34(&v18);
  v6 = *(a1 + 12);
  if (!v6)
  {
    *(&v16.__r_.__value_.__s + 23) = 3;
    LODWORD(v16.__r_.__value_.__l.__data_) = 3223877;
    v15 = 0;
    __p[0] = 0;
    v9 = sub_100029BE8(a1, &v16, __p);
    if ((SHIBYTE(v16.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_19;
    }

    v10 = v16.__r_.__value_.__r.__words[0];
    goto LABEL_18;
  }

  if (!qword_10007DAF0)
  {
    sub_10002B45C(a1, 0);
    v6 = *(a1 + 12);
  }

  if (*(a1 + 782) == 1)
  {
    v7 = strstr((a2 + 1), "thread:");
    if (!v7 || (v8 = strtoul(v7 + 7, 0, 16)) == 0)
    {
LABEL_15:
      v9 = sub_10002A394(a1, "/Library/Caches/com.apple.xbs/Sources/lldb/llvm-project/lldb/tools/debugserver/source/RNBRemote.cpp", 3311, a2);
      goto LABEL_19;
    }
  }

  else
  {
    v8 = *(a1 + 544);
    if ((v8 + 1) <= 1)
    {
      v8 = sub_10000DE24(v6);
      if (!v8)
      {
        goto LABEL_15;
      }
    }
  }

  v11 = sub_10000E740(v6, v8, 0, 0);
  if (v11)
  {
    if ((v11 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_100008888();
  }

  *(&v13.__r_.__value_.__s + 23) = 3;
  LODWORD(v13.__r_.__value_.__l.__data_) = 3422021;
  v15 = 0;
  __p[0] = 0;
  v9 = sub_100029BE8(a1, &v13, __p);
  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    v10 = v13.__r_.__value_.__r.__words[0];
LABEL_18:
    operator delete(v10);
  }

LABEL_19:
  if (SBYTE7(v24) < 0)
  {
    operator delete(v23);
  }

  std::locale::~locale(&v19);
  std::ostream::~ostream();
  std::ios::~ios();
  return v9;
}

uint64_t sub_10001A040(uint64_t a1, char *__s)
{
  if (!__s || !*__s || (v3 = a1, v4 = strlen(__s), a1 = v3, v4 <= 2))
  {
    v5 = 3043;
    v6 = __s;
LABEL_5:

    return sub_10002A394(a1, "/Library/Caches/com.apple.xbs/Sources/lldb/llvm-project/lldb/tools/debugserver/source/RNBRemote.cpp", v5, v6);
  }

  __endptr = 0;
  *__error() = 0;
  v8 = strtoull(__s + 1, &__endptr, 16);
  if (*__error() && !v8)
  {
    v6 = __s + 1;
    a1 = v3;
    v5 = 3051;
    goto LABEL_5;
  }

  v9 = __endptr;
  if (*__endptr != 44)
  {
    v6 = __s + 1;
    a1 = v3;
    v5 = 3055;
    goto LABEL_5;
  }

  *__error() = 0;
  v10 = strtoul(v9 + 1, &__endptr, 16);
  if (*__error() && !v10)
  {
    v6 = v9 + 1;
    a1 = v3;
    v5 = 3065;
    goto LABEL_5;
  }

  a1 = v3;
  if (!v10)
  {
    goto LABEL_29;
  }

  if (*__endptr != 58)
  {
    v6 = v9 + 1;
    v5 = 3073;
    goto LABEL_5;
  }

  v11 = __endptr + 1;
  v12 = strlen(__endptr + 1);
  if (v12)
  {
    a1 = v3;
    v5 = 3081;
LABEL_35:
    v6 = v11;
    goto LABEL_5;
  }

  if (!v12)
  {
    goto LABEL_29;
  }

  __chkstk_darwin();
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  bzero(v14, v13);
  v15 = *v11;
  if (*v11)
  {
    v16 = v14;
    do
    {
      v17 = v11[1];
      if (!v17)
      {
        break;
      }

      __str[0] = v15;
      __str[1] = v17;
      __str[2] = 0;
      *__error() = 0;
      v18 = strtoul(__str, 0, 16);
      if (*__error())
      {
        v19 = v18 == 0;
      }

      else
      {
        v19 = 0;
      }

      if (v19)
      {
        a1 = v3;
        v5 = 3099;
        goto LABEL_35;
      }

      *v16++ = v18;
      v20 = v11[2];
      v11 += 2;
      v15 = v20;
    }

    while (v20);
  }

  if (sub_10000D7D0(*(v3 + 12), v8, v10, v14) == v10)
  {
LABEL_29:
    sub_100013A80(__str, "OK");
    result = sub_100029084(v3, __str);
    if ((v26 & 0x80000000) == 0)
    {
      return result;
    }

    v21 = *__str;
    goto LABEL_31;
  }

  sub_100013A80(&v24, "E09");
  sub_100013A80(__str, &unk_10005B2EA);
  result = sub_100029BE8(v3, &v24, __str);
  if (v26 < 0)
  {
    v23 = result;
    operator delete(*__str);
    result = v23;
  }

  if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
  {
    v21 = v24.__r_.__value_.__r.__words[0];
LABEL_31:
    v22 = result;
    operator delete(v21);
    return v22;
  }

  return result;
}

BOOL sub_10001A42C(uint64_t a1, const char *a2)
{
  if (qword_10007DAF0)
  {
    if (!a2)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v3 = a1;
    sub_10002B45C(a1, 0);
    a1 = v3;
    if (!a2)
    {
LABEL_14:

      return sub_10002A394(a1, "/Library/Caches/com.apple.xbs/Sources/lldb/llvm-project/lldb/tools/debugserver/source/RNBRemote.cpp", 4161, a2);
    }
  }

  if (!*a2)
  {
    goto LABEL_14;
  }

  if (*(a1 + 12))
  {
    v4 = a1;
    v5 = sub_10001137C(v20, a2);
    v6 = sub_1000114AC(v5, 0);
    v7 = sub_100011718(v20, 0, 0xFFFFFFFFLL);
    v8 = sub_1000114AC(v20, 0);
    if (v6 == 80)
    {
      if (v7 == -1)
      {
        *(&__p.__r_.__value_.__s + 23) = 3;
        LODWORD(__p.__r_.__value_.__l.__data_) = 3748421;
        v18 = 0;
        LOBYTE(v17[0]) = 0;
        v13 = sub_100029BE8(v4, &__p, v17);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }

      else if (v8 == 61)
      {
        if (qword_10007DAF0 <= v7)
        {
          sub_100013A80(&v15, "E47");
          sub_100013A80(v17, &unk_10005B2EA);
          v13 = sub_100029BE8(v4, &v15, v17);
          if (v18 < 0)
          {
            operator delete(v17[0]);
          }

          if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v15.__r_.__value_.__l.__data_);
          }
        }

        else
        {
          v9 = qword_10007DAE8 + (v7 << 7);
          v11 = *(v9 + 8);
          v10 = v9 + 8;
          if (v11 != -1 || *(v10 + 4) != -1)
          {
            operator new();
          }

          if (sub_100010510())
          {
            sub_1000107A0("RNBRemote::HandlePacket_P(%s): unknown register number %u requested\n", a2, v7);
          }

          sub_100013A80(&v14, "E48");
          sub_100013A80(v17, &unk_10005B2EA);
          v13 = sub_100029BE8(v4, &v14, v17);
          if (v18 < 0)
          {
            operator delete(v17[0]);
          }

          if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v14.__r_.__value_.__l.__data_);
          }
        }
      }

      else
      {
        *(&v16.__r_.__value_.__s + 23) = 3;
        LODWORD(v16.__r_.__value_.__l.__data_) = 3158853;
        v18 = 0;
        LOBYTE(v17[0]) = 0;
        v13 = sub_100029BE8(v4, &v16, v17);
        if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v16.__r_.__value_.__l.__data_);
        }
      }
    }

    else
    {
      v13 = sub_10002A394(v4, "/Library/Caches/com.apple.xbs/Sources/lldb/llvm-project/lldb/tools/debugserver/source/RNBRemote.cpp", 4177, a2);
    }

    sub_1000113DC(v20);
  }

  else
  {
    *(&v21.__r_.__value_.__s + 23) = 3;
    LODWORD(v21.__r_.__value_.__l.__data_) = 3682885;
    v20[23] = 0;
    v20[0] = 0;
    v13 = sub_100029BE8(a1, &v21, v20);
    if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v21.__r_.__value_.__l.__data_);
    }
  }

  return v13;
}

BOOL sub_10001A868(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 12);
  if (!v3)
  {
    *(&v17.__r_.__value_.__s + 23) = 3;
    LODWORD(v17.__r_.__value_.__l.__data_) = 3223877;
    v16[23] = 0;
    v16[0] = 0;
    result = sub_100029BE8(a1, &v17, v16);
    if ((SHIBYTE(v17.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return result;
    }

    v9 = result;
    operator delete(v17.__r_.__value_.__l.__data_);
    return v9;
  }

  if (!qword_10007DAF0)
  {
    v4 = a2;
    sub_10002B45C(a1, 0);
    a2 = v4;
    v3 = *(a1 + 12);
  }

  v5 = (a2 + 1);
  if (*(a1 + 782) == 1)
  {
    v6 = strstr(v5, "thread:");
    if (!v6)
    {
      goto LABEL_18;
    }

    v7 = strtoul(v6 + 7, 0, 16);
    if (!v7)
    {
      goto LABEL_18;
    }

    goto LABEL_12;
  }

  v7 = *(a1 + 544);
  if ((v7 + 1) > 1 || (v7 = sub_10000DE24(v3)) != 0)
  {
LABEL_12:
    v10 = strrchr(v5, 59);
    if (v10)
    {
      v11 = v10 + 1;
    }

    else
    {
      v11 = v5;
    }

    sub_10001137C(v16, v11);
    v12 = sub_10000E740(v3, v7, 0, 0);
    if (v12)
    {
      if ((v12 & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_100008888();
    }

    *(&v13.__r_.__value_.__s + 23) = 3;
    LODWORD(v13.__r_.__value_.__l.__data_) = 3487301;
    v15 = 0;
    v14[0] = 0;
    v9 = sub_100029BE8(a1, &v13, v14);
    if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v13.__r_.__value_.__l.__data_);
    }

    sub_1000113DC(v16);
    return v9;
  }

LABEL_18:

  return sub_10002A394(a1, "/Library/Caches/com.apple.xbs/Sources/lldb/llvm-project/lldb/tools/debugserver/source/RNBRemote.cpp", 3348, v5);
}

BOOL sub_10001AB84(uint64_t a1, const char *a2)
{
  if (!a2 || (v3 = *a2, !*a2))
  {
    v11 = 3974;
    v12 = a2;
LABEL_9:

    return sub_10002A394(a1, "/Library/Caches/com.apple.xbs/Sources/lldb/llvm-project/lldb/tools/debugserver/source/RNBRemote.cpp", v11, v12);
  }

  v4 = *(a1 + 12);
  if (!v4)
  {
    *(&v30.__r_.__value_.__s + 23) = 3;
    LODWORD(v30.__r_.__value_.__l.__data_) = 3486021;
    v29 = 0;
    LOBYTE(__p[0]) = 0;
    result = sub_100029BE8(a1, &v30, __p);
    if ((SHIBYTE(v30.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return result;
    }

    v14 = v30.__r_.__value_.__r.__words[0];
LABEL_14:
    v15 = result;
    operator delete(v14);
    return v15;
  }

  if (a2[2] != 44)
  {
    v12 = a2 + 3;
    v11 = 3984;
    goto LABEL_9;
  }

  v6 = *(a2 + 1);
  __endptr = 0;
  *__error() = 0;
  v7 = strtoull(a2 + 3, &__endptr, 16);
  if (*__error() && !v7)
  {
    v8 = a2 + 3;
    v9 = a1;
    v10 = 3992;
    return sub_10002A394(v9, "/Library/Caches/com.apple.xbs/Sources/lldb/llvm-project/lldb/tools/debugserver/source/RNBRemote.cpp", v10, v8);
  }

  v16 = __endptr + 1;
  if (*__endptr != 44)
  {
    v9 = a1;
    v10 = 3996;
    goto LABEL_21;
  }

  *__error() = 0;
  v17 = strtoul(v16, &__endptr, 16);
  if (*__error() && !v17)
  {
    v9 = a1;
    v10 = 4002;
LABEL_21:
    v8 = v16;
    return sub_10002A394(v9, "/Library/Caches/com.apple.xbs/Sources/lldb/llvm-project/lldb/tools/debugserver/source/RNBRemote.cpp", v10, v8);
  }

  if (v3 == 122)
  {
    if ((v6 - 50) >= 3)
    {
      if ((v6 - 48) > 1)
      {
        return sub_10002A294(a1, v16);
      }

      if (!sub_10000CFDC(v4, v7))
      {
        sub_100013A80(&v24, "E08");
        sub_100013A80(__p, &unk_10005B2EA);
        result = sub_100029BE8(a1, &v24, __p);
        if (v29 < 0)
        {
          v20 = result;
          operator delete(__p[0]);
          result = v20;
        }

        if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
        {
          v14 = v24.__r_.__value_.__r.__words[0];
          goto LABEL_14;
        }

        return result;
      }
    }

    else if (!sub_10000D1A4(v4, v7))
    {
      sub_100013A80(&v23, "E08");
      sub_100013A80(__p, &unk_10005B2EA);
      result = sub_100029BE8(a1, &v23, __p);
      if (v29 < 0)
      {
        v19 = result;
        operator delete(__p[0]);
        result = v19;
      }

      if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
      {
        v14 = v23.__r_.__value_.__r.__words[0];
        goto LABEL_14;
      }

      return result;
    }

LABEL_53:
    sub_100013A80(__p, "OK");
    result = sub_100029084(a1, __p);
    if (v29 < 0)
    {
      v14 = __p[0];
      goto LABEL_14;
    }

    return result;
  }

  if (v3 != 90)
  {
    return sub_10002A294(a1, v16);
  }

  if (v6 > 50)
  {
    if (v6 == 51)
    {
      v21 = 1;
LABEL_52:
      if (!sub_10000D0BC(v4, v7, v17, v21, 1))
      {
        sub_100013A80(&v25, "E09");
        sub_100013A80(__p, &unk_10005B2EA);
        result = sub_100029BE8(a1, &v25, __p);
        if (v29 < 0)
        {
          v22 = result;
          operator delete(__p[0]);
          result = v22;
        }

        if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
        {
          v14 = v25.__r_.__value_.__r.__words[0];
          goto LABEL_14;
        }

        return result;
      }

      goto LABEL_53;
    }

    if (v6 == 52)
    {
      v21 = 3;
      goto LABEL_52;
    }

    return sub_10002A294(a1, v16);
  }

  if ((v6 - 48) >= 2)
  {
    if (v6 == 50)
    {
      v21 = 2;
      goto LABEL_52;
    }

    return sub_10002A294(a1, v16);
  }

  if (sub_10000CEF4(v4, v7, v17, v6 == 49))
  {
    goto LABEL_53;
  }

  sub_100013A80(&v26, "E09");
  sub_100013A80(__p, &unk_10005B2EA);
  result = sub_100029BE8(a1, &v26, __p);
  if (v29 < 0)
  {
    v18 = result;
    operator delete(__p[0]);
    result = v18;
  }

  if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
  {
    v14 = v26.__r_.__value_.__r.__words[0];
    goto LABEL_14;
  }

  return result;
}

BOOL sub_10001AF9C(uint64_t a1)
{
  v1 = *(a1 + 12);
  if (v1)
  {
    v2 = *(a1 + 536);
    if ((v2 + 1) <= 1)
    {
      v2 = *(a1 + 544);
      if ((v2 + 1) <= 1)
      {
        v3 = a1;
        v2 = sub_10000DE24(*(a1 + 12));
        a1 = v3;
        if (!v2)
        {
          *(&v14.__r_.__value_.__s + 23) = 3;
          LODWORD(v14.__r_.__value_.__l.__data_) = 3355461;
          v12 = 0;
          LOBYTE(v11[0]) = 0;
          v6 = sub_100029BE8(v3, &v14, v11);
          if ((SHIBYTE(v14.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            return v6;
          }

          v7 = v14.__r_.__value_.__r.__words[0];
          goto LABEL_14;
        }
      }
    }

    v4 = a1;
    sub_100010998(v11);
    sub_100010E48(v11, v2, 6u, 0, -1);
    sub_100010B58(v11, 4u, 0);
    v5 = sub_10000CD88(v1, *v11, 0xAAAAAAAAAAAAAAABLL * ((*&v11[2] - *v11) >> 3));
    v6 = 0;
    if (!v5)
    {
      *(&__p.__r_.__value_.__s + 23) = 3;
      LODWORD(__p.__r_.__value_.__l.__data_) = 3748933;
      v9[23] = 0;
      v9[0] = 0;
      v6 = sub_100029BE8(v4, &__p, v9);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    if (v13)
    {
      operator delete(v13);
    }

    v7 = *v11;
    if (*v11)
    {
      *&v11[2] = *v11;
LABEL_14:
      operator delete(v7);
    }
  }

  else
  {
    *(&v15.__r_.__value_.__s + 23) = 3;
    LODWORD(v15.__r_.__value_.__l.__data_) = 3289925;
    v12 = 0;
    LOBYTE(v11[0]) = 0;
    v6 = sub_100029BE8(a1, &v15, v11);
    if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
    {
      v7 = v15.__r_.__value_.__r.__words[0];
      goto LABEL_14;
    }
  }

  return v6;
}

BOOL sub_10001B13C(uint64_t a1, const char *a2)
{
  v3 = *(a1 + 12);
  if (!v3)
  {
    *(&v18.__r_.__value_.__s + 23) = 3;
    LODWORD(v18.__r_.__value_.__l.__data_) = 3355205;
    v14 = 0;
    LOBYTE(v13) = 0;
    v7 = sub_100029BE8(a1, &v18, &v13);
    if ((SHIBYTE(v18.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return v7;
    }

    v9 = v18.__r_.__value_.__r.__words[0];
LABEL_15:
    operator delete(v9);
    return v7;
  }

  v16 = xmmword_100066ED0;
  v17 = -1;
  v5 = a2 + 1;
  if (a2[1])
  {
    *&v16 = *(a1 + 536);
    *__error() = 0;
    v6 = strtoull(v5, 0, 16);
    v17 = v6;
    if (*__error())
    {
      if (!v6)
      {
        return sub_10002A394(a1, "/Library/Caches/com.apple.xbs/Sources/lldb/llvm-project/lldb/tools/debugserver/source/RNBRemote.cpp", 4236, a2);
      }
    }
  }

  sub_100010998(&v13);
  sub_100010C7C(&v13, &v16);
  sub_100010B58(&v13, 5u, 0);
  v8 = sub_10000CD88(v3, v13, 0xAAAAAAAAAAAAAAABLL * ((*(&v13 + 1) - v13) >> 3));
  v7 = 0;
  if (!v8)
  {
    *(&__p.__r_.__value_.__s + 23) = 3;
    LODWORD(__p.__r_.__value_.__l.__data_) = 3486277;
    v11[23] = 0;
    v11[0] = 0;
    v7 = sub_100029BE8(a1, &__p, v11);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  if (v15)
  {
    operator delete(v15);
  }

  v9 = v13;
  if (v13)
  {
    *(&v13 + 1) = v13;
    goto LABEL_15;
  }

  return v7;
}

BOOL sub_10001B2E0(uint64_t a1, const char *a2)
{
  v2 = *(a1 + 12);
  if (!v2)
  {
    *(&v29.__r_.__value_.__s + 23) = 3;
    LODWORD(v29.__r_.__value_.__l.__data_) = 3552069;
    v23 = 0;
    LOBYTE(__endptr[0]) = 0;
    result = sub_100029BE8(a1, &v29, __endptr);
    if ((SHIBYTE(v29.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return result;
    }

    v8 = v29.__r_.__value_.__r.__words[0];
    goto LABEL_30;
  }

  v27 = xmmword_100066EE8;
  v28 = -1;
  v3 = a2 + 1;
  if (a2[1])
  {
    v5 = a1;
    __endptr[0] = 0;
    *__error() = 0;
    HIDWORD(v27) = strtoul(v3, __endptr, 16);
    if (*__error())
    {
      v6 = 4606;
      return sub_10002A394(v5, "/Library/Caches/com.apple.xbs/Sources/lldb/llvm-project/lldb/tools/debugserver/source/RNBRemote.cpp", v6, a2);
    }

    v9 = __endptr[0];
    if (*__endptr[0] == 59)
    {
      *__error() = 0;
      v10 = strtoull(v9 + 1, 0, 16);
      v28 = v10;
      if (*__error())
      {
        if (!v10)
        {
          v6 = 4612;
          return sub_10002A394(v5, "/Library/Caches/com.apple.xbs/Sources/lldb/llvm-project/lldb/tools/debugserver/source/RNBRemote.cpp", v6, a2);
        }
      }
    }

    a1 = v5;
  }

  v11 = *(a1 + 536);
  *&v27 = v11;
  if ((v11 + 1) <= 1)
  {
    *(&v26.__r_.__value_.__s + 23) = 3;
    LODWORD(v26.__r_.__value_.__l.__data_) = 3159109;
    v23 = 0;
    LOBYTE(__endptr[0]) = 0;
    result = sub_100029BE8(a1, &v26, __endptr);
    if ((SHIBYTE(v26.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return result;
    }

    v8 = v26.__r_.__value_.__r.__words[0];
    goto LABEL_30;
  }

  v12 = a1;
  v13 = sub_10000C35C(v2, v11);
  if (v13 == 9 || v13 == 0)
  {
    *(&v25.__r_.__value_.__s + 23) = 3;
    LODWORD(v25.__r_.__value_.__l.__data_) = 3617605;
    v23 = 0;
    LOBYTE(__endptr[0]) = 0;
    result = sub_100029BE8(v12, &v25, __endptr);
    if ((SHIBYTE(v25.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return result;
    }

    v8 = v25.__r_.__value_.__r.__words[0];
    goto LABEL_30;
  }

  sub_100010998(__endptr);
  sub_100010C7C(__endptr, &v27);
  sub_100010B58(__endptr, 4u, 0);
  v15 = sub_10000CD88(v2, __endptr[0], 0xAAAAAAAAAAAAAAABLL * ((__endptr[1] - __endptr[0]) >> 3));
  v16 = v15;
  result = 0;
  if (!v16)
  {
    *(&__p.__r_.__value_.__s + 23) = 3;
    LODWORD(__p.__r_.__value_.__l.__data_) = 3748677;
    v20[23] = 0;
    v20[0] = 0;
    result = sub_100029BE8(v12, &__p, v20);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      v17 = result;
      operator delete(__p.__r_.__value_.__l.__data_);
      result = v17;
    }
  }

  if (v24)
  {
    v18 = result;
    operator delete(v24);
    result = v18;
  }

  v8 = __endptr[0];
  if (__endptr[0])
  {
    __endptr[1] = __endptr[0];
LABEL_30:
    v19 = result;
    operator delete(v8);
    return v19;
  }

  return result;
}

BOOL sub_10001B578(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  v3 = (a2 + 1);
  if ((*(a2 + 1) | 4) == 0x67)
  {
    *__error() = 0;
    v5 = strtoul((a2 + 2), 0, 16);
    if (*__error())
    {
      v6 = v5 == 0;
    }

    else
    {
      v6 = 0;
    }

    if (!v6)
    {
      v7 = *v3;
      if (v7 == 99)
      {
        *(v2 + 536) = v5;
        v7 = *v3;
      }

      if (v7 == 103)
      {
        sub_10000DFE4(*(v2 + 12), v5);
        *(v2 + 544) = v5;
      }

      v12 = 2;
      strcpy(__p, "OK");
      result = sub_100029084(v2, __p);
      if (v12 < 0)
      {
        v9 = result;
        operator delete(__p[0]);
        return v9;
      }

      return result;
    }

    a1 = v2;
    v10 = 1600;
  }

  else
  {
    v10 = 1587;
  }

  return sub_10002A394(a1, "/Library/Caches/com.apple.xbs/Sources/lldb/llvm-project/lldb/tools/debugserver/source/RNBRemote.cpp", v10, v3);
}

BOOL sub_10001B6A4(uint64_t a1)
{
  v1 = *(a1 + 12);
  if (!v1)
  {
    *(&v37.__r_.__value_.__s + 23) = 3;
    LODWORD(v37.__r_.__value_.__l.__data_) = 3289157;
    HIBYTE(v29.__locale_) = 0;
    LOBYTE(__dst) = 0;
    result = sub_100029BE8(a1, &v37, &__dst);
    if ((SHIBYTE(v37.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return result;
    }

    v6 = v37.__r_.__value_.__r.__words[0];
    goto LABEL_41;
  }

  v2 = sub_10000B308(v1);
  result = 0;
  if (v2 > 0xA)
  {
    return result;
  }

  v4 = 1 << v2;
  if ((v4 & 0x203) == 0)
  {
    if ((v4 & 0x490) != 0)
    {
      v5 = sub_10000DE24(v1);
      sub_10000DFE4(*(a1 + 12), v5);
      *(a1 + 544) = v5;
      sub_10002BACC();
      return 0;
    }

    return result;
  }

  *__str = 0;
  v39 = 0;
  v36 = 0;
  if (sub_10000BFB8(v1, &v36))
  {
    if (v36)
    {
      if ((v36 & 0x7F) == 0x7F)
      {
        if (v36 >> 8 != 19)
        {
          snprintf(__str, 0x10uLL, "S%02x");
        }
      }

      else if ((v36 & 0x7F) != 0)
      {
        snprintf(__str, 0x10uLL, "X%02x");
      }

      else
      {
        snprintf(__str, 0x10uLL, "W%02x");
      }
    }
  }

  else
  {
    v36 = 0;
  }

  if (!__str[0])
  {
    strcpy(__str, "W00");
    HIBYTE(v39) = 0;
  }

  v7 = sub_10000C0B8(v1);
  if (v7)
  {
    v8 = v7;
    if (*v7)
    {
      v35 = 0;
      *(&__dst + *(__dst - 3)) = v9;
      v10 = (&__dst + *(__dst - 3));
      std::ios_base::init(v10, &v28);
      v10[1].__vftable = 0;
      v10[1].__fmtflags_ = -1;
      std::locale::locale(&v29);
      memset(v30, 0, sizeof(v30));
      *__p = 0u;
      v32 = 0u;
      v33 = 16;
      sub_100034D34(&v28);
      v11 = strlen(__str);
      sub_100034978(&__dst, __str, v11);
      LOBYTE(v25.__locale_) = 59;
      sub_100034978(&__dst, &v25, 1);
      v12 = __dst;
      v13 = &__dst + *(__dst - 3);
      if (*(v13 + 36) == -1)
      {
        std::ios_base::getloc((&__dst + *(__dst - 3)));
        v14 = std::locale::use_facet(&v25, &std::ctype<char>::id);
        (v14->__vftable[2].~facet_0)(v14, 32);
        std::locale::~locale(&v25);
        v12 = __dst;
      }

      *(v13 + 36) = 48;
      *(&__dst + *(v12 - 3) + 8) = *(&__dst + *(v12 - 3) + 8) & 0xFFFFFFB5 | 8;
      *(&__dst + *(v12 - 3) + 8) = *(&__dst + *(v12 - 3) + 8) & 0xFFFFFF4F | 0x80;
      sub_100034978(&__dst, "description", 11);
      LOBYTE(v25.__locale_) = 58;
      sub_100034978(&__dst, &v25, 1);
      if (*v8)
      {
        v15 = v8 + 1;
        do
        {
          v18 = __dst;
          v19 = &__dst + *(__dst - 3);
          if (*(v19 + 36) == -1)
          {
            std::ios_base::getloc((&__dst + *(__dst - 3)));
            v20 = std::locale::use_facet(&v25, &std::ctype<char>::id);
            (v20->__vftable[2].~facet_0)(v20, 32);
            std::locale::~locale(&v25);
            v18 = __dst;
          }

          *(v19 + 36) = 48;
          *(&v28 + *(v18 - 3)) = *(&v28 + *(v18 - 3)) & 0xFFFFFFB5 | 8;
          *(&v28 + *(v18 - 3)) = *(&v28 + *(v18 - 3)) & 0xFFFFFF4F | 0x80;
          *(v30 + *(v18 - 3)) = 2;
          v16 = *(v15 - 1);
          std::ostream::operator<<();
        }

        while (*v15++);
      }

      LOBYTE(v25.__locale_) = 59;
      sub_100034978(&__dst, &v25, 1);
      std::stringbuf::str();
      v23 = sub_100029084(a1, &v25);
      if (v26 < 0)
      {
        operator delete(v25.__locale_);
      }

      if (SBYTE7(v32) < 0)
      {
        operator delete(__p[0]);
      }

      std::locale::~locale(&v29);
      std::ostream::~ostream();
      std::ios::~ios();
      return v23;
    }
  }

  v21 = strlen(__str);
  if (v21 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_100008888();
  }

  v22 = v21;
  if (v21 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v29.__locale_) = v21;
  if (v21)
  {
    memcpy(&__dst, __str, v21);
  }

  *(&__dst + v22) = 0;
  result = sub_100029084(a1, &__dst);
  if (SHIBYTE(v29.__locale_) < 0)
  {
    v6 = __dst;
LABEL_41:
    v23 = result;
    operator delete(v6);
    return v23;
  }

  return result;
}

uint64_t sub_10001BE0C(uint64_t a1)
{
  if (!sub_10000BDD8(*(a1 + 12)))
  {
    if (sub_100010510())
    {
      sub_100010668("RNBRemote::HandlePacket_stop_process() sending extra stop reply because DNBProcessInterrupt returned false");
    }

    sub_10001B6A4(a1);
  }

  return 0;
}

BOOL sub_10001BE58(uint64_t a1, const char *a2)
{
  v3 = a2;
  if (!a2 || !*a2)
  {
    v6 = 1507;
    goto LABEL_7;
  }

  v3 = a2 + 1;
  v5 = a2[1];
  if (v5 < 1 || (_DefaultRuneLocale.__runetype[v5] & 0x400) == 0)
  {
    v6 = 1512;
LABEL_7:

    return sub_10002A394(a1, "/Library/Caches/com.apple.xbs/Sources/lldb/llvm-project/lldb/tools/debugserver/source/RNBRemote.cpp", v6, v3);
  }

  v8 = a2 + 1;
  while (*v8)
  {
    memset(&__p, 0, sizeof(__p));
    __endptr = 0;
    *__error() = 0;
    v9 = strtoul(v8, &__endptr, 10);
    if (*__error())
    {
      v10 = v9 == 0;
    }

    else
    {
      v10 = 0;
    }

    if (v10)
    {
      v12 = a1;
      v13 = 1531;
    }

    else if (*__endptr == 44)
    {
      v8 = __endptr + 1;
      *__error() = 0;
      v11 = strtoul(v8, &__endptr, 10);
      if (!*__error() || v11)
      {
        v15 = __endptr;
        if (*__endptr == 44)
        {
          v16 = ++__endptr;
          v17 = &v15[v9];
          v8 = &v15[v9 + 1];
          if (v9 >= 1)
          {
            do
            {
              if (!*v16 || v16 >= v17)
              {
                break;
              }

              v20 = v16[1];
              if (!v20)
              {
                break;
              }

              __str[0] = *v16;
              __str[1] = v20;
              __str[2] = 0;
              *__error() = 0;
              v21 = strtoul(__str, 0, 16);
              if (*__error() && !v21)
              {
                v12 = a1;
                v13 = 1563;
                goto LABEL_23;
              }

              std::string::push_back(&__p, v21);
              v16 += 2;
            }

            while (v16 < v8);
          }

          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            p_p = &__p;
          }

          else
          {
            p_p = __p.__r_.__value_.__r.__words[0];
          }

          sub_100008480(a1, p_p);
          if (*v8 == 44)
          {
            ++v8;
          }

          v14 = 1;
          if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_11;
          }

LABEL_24:
          operator delete(__p.__r_.__value_.__l.__data_);
          goto LABEL_11;
        }

        v12 = a1;
        v13 = 1547;
      }

      else
      {
        v12 = a1;
        v13 = 1543;
      }
    }

    else
    {
      v12 = a1;
      v13 = 1535;
    }

LABEL_23:
    v2 = sub_10002A394(v12, "/Library/Caches/com.apple.xbs/Sources/lldb/llvm-project/lldb/tools/debugserver/source/RNBRemote.cpp", v13, v3);
    v14 = 0;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_24;
    }

LABEL_11:
    if ((v14 & 1) == 0)
    {
      return v2;
    }
  }

  *(&__p.__r_.__value_.__s + 23) = 2;
  strcpy(&__p, "OK");
  sub_100029084(a1, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return 0;
}

BOOL sub_10001C138(uint64_t a1, const char *a2)
{
  v2 = *(a1 + 12);
  if (!v2)
  {
    *(&v25.__r_.__value_.__s + 23) = 3;
    LODWORD(v25.__r_.__value_.__l.__data_) = 3552069;
    v21 = 0;
    LOBYTE(__endptr[0]) = 0;
    result = sub_100029BE8(a1, &v25, __endptr);
    if ((SHIBYTE(v25.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return result;
    }

    v9 = v25.__r_.__value_.__r.__words[0];
    goto LABEL_22;
  }

  v23 = xmmword_100066ED0;
  v24 = -1;
  v3 = a2 + 1;
  if (a2[1])
  {
    v5 = a1;
    *&v23 = *(a1 + 536);
    __endptr[0] = 0;
    *__error() = 0;
    v6 = strtoul(v3, __endptr, 16);
    if (*__error())
    {
      v7 = 4490;
      return sub_10002A394(v5, "/Library/Caches/com.apple.xbs/Sources/lldb/llvm-project/lldb/tools/debugserver/source/RNBRemote.cpp", v7, a2);
    }

    v10 = __endptr[0];
    if (*__endptr[0] == 59)
    {
      *__error() = 0;
      v11 = strtoull(v10 + 1, 0, 16);
      v24 = v11;
      if (*__error())
      {
        if (!v11)
        {
          v7 = 4496;
          return sub_10002A394(v5, "/Library/Caches/com.apple.xbs/Sources/lldb/llvm-project/lldb/tools/debugserver/source/RNBRemote.cpp", v7, a2);
        }
      }
    }
  }

  else
  {
    v5 = a1;
    v6 = -1;
  }

  sub_100010998(__endptr);
  sub_100010C7C(__endptr, &v23);
  sub_100010B58(__endptr, 5u, HIDWORD(v23));
  if (!sub_10000BCF8(v2, v6))
  {
    *(&v19.__r_.__value_.__s + 23) = 3;
    LODWORD(v19.__r_.__value_.__l.__data_) = 3290437;
    v18 = 0;
    v17[0] = 0;
    v12 = &v19;
    result = sub_100029BE8(v5, &v19, v17);
    if ((SHIBYTE(v19.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  if (sub_10000CD88(v2, __endptr[0], 0xAAAAAAAAAAAAAAABLL * ((__endptr[1] - __endptr[0]) >> 3)))
  {
    result = 0;
    goto LABEL_18;
  }

  *(&v16.__r_.__value_.__s + 23) = 3;
  LODWORD(v16.__r_.__value_.__l.__data_) = 3683141;
  v18 = 0;
  v17[0] = 0;
  v12 = &v16;
  result = sub_100029BE8(v5, &v16, v17);
  if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
  {
LABEL_17:
    v13 = result;
    operator delete(v12->__r_.__value_.__l.__data_);
    result = v13;
  }

LABEL_18:
  if (__p)
  {
    v14 = result;
    operator delete(__p);
    result = v14;
  }

  v9 = __endptr[0];
  if (__endptr[0])
  {
    __endptr[1] = __endptr[0];
LABEL_22:
    v15 = result;
    operator delete(v9);
    return v15;
  }

  return result;
}

uint64_t sub_10001C394(uint64_t a1)
{
  if (*(a1 + 12))
  {
    if (sub_100010510())
    {
      sub_100010544(0, "detaching from pid %u due to D packet", v2, v3, v4, v5, v6, v7, *(a1 + 12));
    }

    if (sub_10000BAF8(*(a1 + 12)))
    {
      v19 = 2;
      strcpy(v18, "OK");
      sub_100029084(a1, v18);
      if (v19 < 0)
      {
        v8 = *v18;
LABEL_13:
        operator delete(v8);
      }
    }

    else
    {
      if (sub_100010510())
      {
        sub_100010544(0, "error while detaching from pid %u due to D packet", v9, v10, v11, v12, v13, v14, *(a1 + 12));
      }

      *(&__p.__r_.__value_.__s + 23) = 3;
      LODWORD(__p.__r_.__value_.__l.__data_) = 3223621;
      v19 = 0;
      v18[0] = 0;
      sub_100029BE8(a1, &__p, v18);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        v8 = __p.__r_.__value_.__r.__words[0];
        goto LABEL_13;
      }
    }
  }

  else
  {
    *(&v16.__r_.__value_.__s + 23) = 3;
    LODWORD(v16.__r_.__value_.__l.__data_) = 3420229;
    v19 = 0;
    v18[0] = 0;
    sub_100029BE8(a1, &v16, v18);
    if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
    {
      v8 = v16.__r_.__value_.__r.__words[0];
      goto LABEL_13;
    }
  }

  return 0;
}

uint64_t sub_10001C4BC(uint64_t a1)
{
  if (sub_100010510())
  {
    sub_100010544(0, "Got a 'k' packet, killing the inferior process.", v2, v3, v4, v5, v6, v7, v10);
  }

  v8 = *(a1 + 12);
  if (v8)
  {
    sub_10000BC18(v8);
  }

  v12 = 3;
  LODWORD(__p) = 3747928;
  sub_100029084(a1, &__p);
  if (v12 < 0)
  {
    operator delete(__p);
  }

  return 0;
}

BOOL sub_10001C53C(uint64_t a1, uint64_t a2)
{
  v2 = (a2 + 1);
  if (!*(a2 + 1))
  {
    v5 = 3950;
    goto LABEL_7;
  }

  if (!*(a1 + 12))
  {
    *(&__p.__r_.__value_.__s + 23) = 3;
    LODWORD(__p.__r_.__value_.__l.__data_) = 3486021;
    v12 = 0;
    v11[0] = 0;
    result = sub_100029BE8(a1, &__p, v11);
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return result;
    }

    v7 = __p.__r_.__value_.__r.__words[0];
LABEL_18:
    v9 = result;
    operator delete(v7);
    return v9;
  }

  v3 = a1;
  *__error() = 0;
  v4 = strtoul(v2, 0, 16);
  if (!*__error() || v4)
  {
    v8 = sub_10000C35C(*(v3 + 12), v4);
    if (v8 <= 9 && ((1 << v8) & 0x281) != 0)
    {
      *(&v10.__r_.__value_.__s + 23) = 3;
      LODWORD(v10.__r_.__value_.__l.__data_) = 3551557;
      v12 = 0;
      v11[0] = 0;
      result = sub_100029BE8(v3, &v10, v11);
      if ((SHIBYTE(v10.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        return result;
      }

      v7 = v10.__r_.__value_.__r.__words[0];
    }

    else
    {
      v12 = 2;
      strcpy(v11, "OK");
      result = sub_100029084(v3, v11);
      if ((v12 & 0x80000000) == 0)
      {
        return result;
      }

      v7 = *v11;
    }

    goto LABEL_18;
  }

  a1 = v3;
  v5 = 3959;
LABEL_7:

  return sub_10002A394(a1, "/Library/Caches/com.apple.xbs/Sources/lldb/llvm-project/lldb/tools/debugserver/source/RNBRemote.cpp", v5, v2);
}

BOOL sub_10001C6CC(uint64_t a1, char *__s1)
{
  if (strstr(__s1, "amx+"))
  {
    sub_100008C40();
  }

  v29 = 0;
  *(v18 + *(v18[0] - 24)) = v2;
  v18[1] = 0;
  v3 = (v18 + *(v18[0] - 24));
  std::ios_base::init(v3, &v20);
  v3[1].__vftable = 0;
  v3[1].__fmtflags_ = -1;
  *(&v19 + *(v19 - 3)) = v4;
  std::locale::locale(&v21);
  v24 = 0u;
  v23 = 0u;
  v22 = 0u;
  __p = 0u;
  v26 = 0u;
  v27 = 24;
  sub_100034D34(&v20);
  v5 = sub_100034978(&v19, "qXfer:features:read+;PacketSize=", 32);
  *(v5 + *(*v5 - 24) + 8) = *(v5 + *(*v5 - 24) + 8) & 0xFFFFFFB5 | 8;
  v6 = std::ostream::operator<<();
  sub_100034978(v6, ";", 1);
  sub_100034978(&v19, "qEcho+;native-signals+;", 23);
  sub_100034978(&v19, "SupportedCompressions=lzfse,zlib-deflate,lz4,lzma;", 50);
  sub_100034978(&v19, "SupportedWatchpointTypes=aarch64-mask,aarch64-bas;", 50);
  std::stringbuf::str();
  if (v15 >= 0)
  {
    v7 = &v14;
  }

  else
  {
    v7 = v14;
  }

  v8 = strlen(v7);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_100008888();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  v17 = v8;
  if (v8)
  {
    memmove(&__dst, v7, v8);
  }

  *(&__dst + v9) = 0;
  v10 = sub_100029084(a1, &__dst);
  if (v17 < 0)
  {
    operator delete(__dst);
    if ((v15 & 0x80000000) == 0)
    {
      goto LABEL_14;
    }
  }

  else if ((v15 & 0x80000000) == 0)
  {
    goto LABEL_14;
  }

  operator delete(v14);
LABEL_14:
  v19 = v11;
  if (SBYTE7(v26) < 0)
  {
    operator delete(__p);
  }

  std::locale::~locale(&v21);
  std::iostream::~basic_iostream();
  std::ios::~ios();
  return v10;
}

BOOL sub_10001CC34(uint64_t a1, char *__s1)
{
  if (!strcmp(__s1, "vCont;c"))
  {

    return sub_10001B13C(a1, "c");
  }

  else
  {
    if (strcmp(__s1, "vCont;s"))
    {
      if (strncmp(__s1, "vCont", 5uLL))
      {
        if (strncmp(__s1, "vAttach", 7uLL))
        {

          return sub_10002A294(a1, __s1);
        }

        bzero(__s, 0x400uLL);
        memset(&__p, 0, sizeof(__p));
        if (!strncmp(__s1, "vAttachWait;", 0xCuLL))
        {
          v16 = __s1[12];
          v15 = __s1 + 12;
          v14 = v16;
          v107 = v15;
          if (!v16)
          {
LABEL_54:
            if (sub_100010510())
            {
              v20 = getpid();
              sub_100010544(0, "[LaunchAttach] START %d vAttachWait for process name '%s'", v21, v22, v23, v24, v25, v26, v20);
            }

            if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              p_p = &__p;
            }

            else
            {
              p_p = __p.__r_.__value_.__r.__words[0];
            }

            v28 = sub_10000B780(a1, p_p, 1, 0, 0x3E8u, __s, 0x400uLL, sub_10003054C, 0);
            goto LABEL_73;
          }

          while (1)
          {
            __endptr.__r_.__value_.__s.__data_[0] = v14;
            *(&__endptr.__r_.__value_.__l.__data_ + 1) = v15[1];
            *__error() = 0;
            v17 = strtoul(&__endptr, 0, 16);
            if (*__error() && v17 == 0)
            {
              break;
            }

            std::string::push_back(&__p, v17);
            v19 = v15[2];
            v15 += 2;
            v14 = v19;
            if (!v19)
            {
              v107 = v15;
              goto LABEL_54;
            }
          }

          v59 = a1;
          v60 = 3790;
        }

        else
        {
          if (strncmp(__s1, "vAttachOrWait;", 0xEuLL))
          {
            if (strncmp(__s1, "vAttachName;", 0xCuLL))
            {
              if (strncmp(__s1, "vAttach;", 8uLL))
              {
                v7 = sub_10002A294(a1, __s1);
                goto LABEL_194;
              }

              v61 = __s1 + 8;
              v107 = __s1 + 8;
              v99.__r_.__value_.__r.__words[0] = 0;
              v43 = strtoul(__s1 + 8, &v99.__r_.__value_.__l.__data_, 16);
              if (v61 == v99.__r_.__value_.__l.__data_ || *v99.__r_.__value_.__l.__data_)
              {
                v42 = 0;
              }

              else
              {
                gettimeofday(&__endptr, 0);
                v100.__r_.__value_.__r.__words[0] = __endptr.__r_.__value_.__r.__words[0] + SLODWORD(__endptr.__r_.__value_.__r.__words[1]) / 1000000 + 30;
                v100.__r_.__value_.__l.__size_ = 1000 * LODWORD(__endptr.__r_.__value_.__r.__words[1]) % 1000000000;
                if (sub_100010510())
                {
                  v87 = getpid();
                  sub_100010544(0, "[LaunchAttach] START %d vAttach to pid %d", v88, v89, v90, v91, v92, v93, v87);
                }

                v42 = sub_10000AD08(v43, &v100, a1 + 448, __s, 1024);
              }

LABEL_74:
              if (v42)
              {
                if (v42 == -1)
                {
                  if (sub_100010510())
                  {
                    sub_1000107A0("debugserver is x86_64 binary running in translation, attach failed.");
                  }

                  sub_100013A80(&v105, "E96");
                  sub_100013A80(&__endptr, "debugserver is x86_64 binary running in translation, attach failed.");
                  v7 = sub_100029BE8(a1, &v105, &__endptr);
                  if (SHIBYTE(__endptr.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(__endptr.__r_.__value_.__l.__data_);
                  }

                  if (SHIBYTE(v105.__r_.__value_.__r.__words[2]) < 0)
                  {
                    v44 = v105.__r_.__value_.__r.__words[0];
LABEL_193:
                    operator delete(v44);
                    goto LABEL_194;
                  }
                }

                else
                {
                  if (*(a1 + 12) != v42)
                  {
                    sub_100012C44(a1, v42);
                  }

                  if (sub_100010510())
                  {
                    sub_100010544(0, "Successfully attached to pid %d", v45, v46, v47, v48, v49, v50, v42);
                  }

                  sub_10001B6A4(a1);
                  v7 = 0;
                }

                goto LABEL_194;
              }

              if (sub_100010510())
              {
                sub_1000107A0("Attach failed");
              }

              *(a1 + 312) = 0xFFFFFFFFLL;
              if (*(a1 + 343) < 0)
              {
                **(a1 + 320) = 0;
                *(a1 + 328) = 0;
              }

              else
              {
                *(a1 + 320) = 0;
                *(a1 + 343) = 0;
              }

              if (__s[0])
              {
                v63 = __s;
              }

              else
              {
                v63 = "attach failed";
              }

              sub_1000305EC((a1 + 312), v63);
              if (!v43)
              {
                if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                {
                  if (!__p.__r_.__value_.__l.__size_)
                  {
                    goto LABEL_160;
                  }

                  v64 = __p.__r_.__value_.__r.__words[0];
                }

                else
                {
                  if (!*(&__p.__r_.__value_.__s + 23))
                  {
                    goto LABEL_160;
                  }

                  v64 = &__p;
                }

                v43 = sub_10000A9CC(v64);
                if (!v43)
                {
                  goto LABEL_160;
                }
              }

              if (sub_100030624(v43))
              {
                if (sub_100010510())
                {
                  sub_1000107A0("Tried to attach to pid that doesn't exist");
                }

                sub_100013A80(&v103, "E96");
                sub_100013A80(&__endptr, "no such process");
                v7 = sub_100029BE8(a1, &v103, &__endptr);
                if (SHIBYTE(__endptr.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(__endptr.__r_.__value_.__l.__data_);
                }

                if (SHIBYTE(v103.__r_.__value_.__r.__words[2]) < 0)
                {
                  v44 = v103.__r_.__value_.__r.__words[0];
                  goto LABEL_193;
                }

LABEL_194:
                if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                {
                  v13 = __p.__r_.__value_.__r.__words[0];
                  goto LABEL_196;
                }

                return v7;
              }

              if (sub_1000306E4(v43))
              {
                if (sub_100010510())
                {
                  sub_1000107A0("Tried to attach to process already being debugged");
                }

                sub_100013A80(&v102, "E96");
                sub_100013A80(&__endptr, "tried to attach to process already being debugged");
                v7 = sub_100029BE8(a1, &v102, &__endptr);
                if (SHIBYTE(__endptr.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(__endptr.__r_.__value_.__l.__data_);
                }

                if (SHIBYTE(v102.__r_.__value_.__r.__words[2]) < 0)
                {
                  v44 = v102.__r_.__value_.__r.__words[0];
                  goto LABEL_193;
                }

                goto LABEL_194;
              }

              *__val = 0;
              if (sub_100030730(v43, &__val[1], __val))
              {
                v65 = __val[1];
                std::to_string(&v100, __val[1]);
                v66 = std::string::insert(&v100, 0, "uid ");
                v67 = v66->__r_.__value_.__r.__words[2];
                *&__endptr.__r_.__value_.__l.__data_ = *&v66->__r_.__value_.__l.__data_;
                __endptr.__r_.__value_.__r.__words[2] = v67;
                v66->__r_.__value_.__l.__size_ = 0;
                v66->__r_.__value_.__r.__words[2] = 0;
                v66->__r_.__value_.__r.__words[0] = 0;
                if (SHIBYTE(v100.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v100.__r_.__value_.__l.__data_);
                }

                v68 = __val[0];
                std::to_string(&v99, __val[0]);
                v69 = std::string::insert(&v99, 0, "uid ");
                v70 = v69->__r_.__value_.__r.__words[2];
                *&v100.__r_.__value_.__l.__data_ = *&v69->__r_.__value_.__l.__data_;
                v100.__r_.__value_.__r.__words[2] = v70;
                v69->__r_.__value_.__l.__size_ = 0;
                v69->__r_.__value_.__r.__words[2] = 0;
                v69->__r_.__value_.__r.__words[0] = 0;
                if (SHIBYTE(v99.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v99.__r_.__value_.__l.__data_);
                }

                v71 = getpwuid(v65);
                if (v71 && v71->pw_name)
                {
                  std::string::assign(&__endptr, v71->pw_name);
                }

                v72 = getpwuid(v68);
                if (v72 && v72->pw_name)
                {
                  std::string::assign(&v100, v72->pw_name);
                }

                if (sub_100010510())
                {
                  sub_1000107A0("Tried to attach to process with uid mismatch");
                }

                std::operator+<char>();
                v73 = std::string::append(&v96, "' and process is running as user '");
                v74 = v73->__r_.__value_.__r.__words[2];
                *&v97.__r_.__value_.__l.__data_ = *&v73->__r_.__value_.__l.__data_;
                v97.__r_.__value_.__r.__words[2] = v74;
                v73->__r_.__value_.__l.__size_ = 0;
                v73->__r_.__value_.__r.__words[2] = 0;
                v73->__r_.__value_.__r.__words[0] = 0;
                if ((v100.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  v75 = &v100;
                }

                else
                {
                  v75 = v100.__r_.__value_.__r.__words[0];
                }

                if ((v100.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  size = HIBYTE(v100.__r_.__value_.__r.__words[2]);
                }

                else
                {
                  size = v100.__r_.__value_.__l.__size_;
                }

                v77 = std::string::append(&v97, v75, size);
                v78 = v77->__r_.__value_.__r.__words[2];
                *&v98.__r_.__value_.__l.__data_ = *&v77->__r_.__value_.__l.__data_;
                v98.__r_.__value_.__r.__words[2] = v78;
                v77->__r_.__value_.__l.__size_ = 0;
                v77->__r_.__value_.__r.__words[2] = 0;
                v77->__r_.__value_.__r.__words[0] = 0;
                v79 = std::string::append(&v98, "'");
                v80 = v79->__r_.__value_.__r.__words[2];
                *&v99.__r_.__value_.__l.__data_ = *&v79->__r_.__value_.__l.__data_;
                v99.__r_.__value_.__r.__words[2] = v80;
                v79->__r_.__value_.__l.__size_ = 0;
                v79->__r_.__value_.__r.__words[2] = 0;
                v79->__r_.__value_.__r.__words[0] = 0;
                if (SHIBYTE(v98.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v98.__r_.__value_.__l.__data_);
                  if ((SHIBYTE(v97.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                  {
LABEL_149:
                    if ((SHIBYTE(v96.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                    {
                      goto LABEL_150;
                    }

LABEL_186:
                    operator delete(v96.__r_.__value_.__l.__data_);
LABEL_150:
                    sub_100013A80(&v95, "E96");
                    v7 = sub_100029BE8(a1, &v95, &v99);
                    if (SHIBYTE(v95.__r_.__value_.__r.__words[2]) < 0)
                    {
                      operator delete(v95.__r_.__value_.__l.__data_);
                      if ((SHIBYTE(v99.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                      {
LABEL_152:
                        if (SHIBYTE(v100.__r_.__value_.__r.__words[2]) < 0)
                        {
                          goto LABEL_189;
                        }

                        goto LABEL_191;
                      }
                    }

                    else if ((SHIBYTE(v99.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                    {
                      goto LABEL_152;
                    }

                    operator delete(v99.__r_.__value_.__l.__data_);
                    if (SHIBYTE(v100.__r_.__value_.__r.__words[2]) < 0)
                    {
LABEL_189:
                      v86 = v100.__r_.__value_.__r.__words[0];
LABEL_190:
                      operator delete(v86);
                    }

LABEL_191:
                    if ((SHIBYTE(__endptr.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                    {
                      goto LABEL_194;
                    }

                    v44 = __endptr.__r_.__value_.__r.__words[0];
                    goto LABEL_193;
                  }
                }

                else if ((SHIBYTE(v97.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                {
                  goto LABEL_149;
                }

                operator delete(v97.__r_.__value_.__l.__data_);
                if ((SHIBYTE(v96.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                {
                  goto LABEL_150;
                }

                goto LABEL_186;
              }

LABEL_160:
              sub_100013A80(&__endptr, "attach failed");
              if (__s[0])
              {
                if (*__s == 0x7420656C62616E75 && *&__s[8] == 0x207472617473206FLL && *&__s[16] == 0x6563786520656874 && *&__s[24] == 0x6874206E6F697470 && *&__s[29] == 0x64616572687420)
                {
                  strcpy(__s, "Not allowed to attach to process.  Look in the console messages (Console.app), near the debugserver entries, when the attach failed.  The subsystem that denied the attach permission will likely have logged an informative message about why it was denied.");
                  __s[1023] = 0;
                }

                std::string::append(&__endptr, " (");
                std::string::append(&__endptr, __s);
                std::string::append(&__endptr, ")");
              }

              if (sub_100010510())
              {
                sub_1000107A0("Attach failed: %s.", __s);
              }

              sub_100013A80(&v94, "E96");
              v7 = sub_100029BE8(a1, &v94, &__endptr);
              if ((SHIBYTE(v94.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
              {
                goto LABEL_191;
              }

              v86 = v94.__r_.__value_.__r.__words[0];
              goto LABEL_190;
            }

            v107 = __s1 + 12;
            if (sub_10003049C(&v107, &__p))
            {
              if (sub_100010510())
              {
                v51 = getpid();
                sub_100010544(0, "[LaunchAttach] START %d vAttachName attach to process name '%s'", v52, v53, v54, v55, v56, v57, v51);
              }

              if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v58 = &__p;
              }

              else
              {
                v58 = __p.__r_.__value_.__r.__words[0];
              }

              v28 = sub_10000ABE0(v58, 0, a1 + 448, __s, 1024);
LABEL_73:
              v42 = v28;
              v43 = 0;
              goto LABEL_74;
            }

            v62 = v107;
            v59 = a1;
            v60 = 3817;
LABEL_105:
            v7 = sub_10002A394(v59, "/Library/Caches/com.apple.xbs/Sources/lldb/llvm-project/lldb/tools/debugserver/source/RNBRemote.cpp", v60, v62);
            goto LABEL_194;
          }

          v30 = __s1[14];
          v15 = __s1 + 14;
          v29 = v30;
          v107 = v15;
          if (!v30)
          {
LABEL_67:
            if (sub_100010510())
            {
              v34 = getpid();
              sub_100010544(0, "[LaunchAttach] START %d vAttachWaitOrWait for process name '%s'", v35, v36, v37, v38, v39, v40, v34);
            }

            if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v41 = &__p;
            }

            else
            {
              v41 = __p.__r_.__value_.__r.__words[0];
            }

            v28 = sub_10000B780(a1, v41, 0, 0, 0x3E8u, __s, 0x400uLL, sub_10003054C, 0);
            goto LABEL_73;
          }

          while (1)
          {
            __endptr.__r_.__value_.__s.__data_[0] = v29;
            *(&__endptr.__r_.__value_.__l.__data_ + 1) = v15[1];
            *__error() = 0;
            v31 = strtoul(&__endptr, 0, 16);
            if (*__error() && v31 == 0)
            {
              break;
            }

            std::string::push_back(&__p, v31);
            v33 = v15[2];
            v15 += 2;
            v29 = v33;
            if (!v33)
            {
              v107 = v15;
              goto LABEL_67;
            }
          }

          v59 = a1;
          v60 = 3803;
        }

        v62 = v15;
        goto LABEL_105;
      }

      sub_100010998(__s);
      v5 = __s1 + 5;
      v107 = __s1 + 5;
      __endptr.__r_.__value_.__r.__words[0] = (__s1 + 5);
      v6 = strlen(__s1 + 5);
      if (__s1[5] == 63)
      {
        *(&__p.__r_.__value_.__s + 23) = 13;
        strcpy(&__p, "vCont;c;C;s;S");
        v7 = sub_100029084(a1, &__p);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
          v8 = *&__s[24];
          if (!*&__s[24])
          {
LABEL_45:
            v13 = *__s;
            if (*__s)
            {
              *&__s[8] = *__s;
LABEL_196:
              operator delete(v13);
            }

            return v7;
          }

LABEL_44:
          operator delete(v8);
          goto LABEL_45;
        }

LABEL_43:
        v8 = *&__s[24];
        if (!*&__s[24])
        {
          goto LABEL_45;
        }

        goto LABEL_44;
      }

      if (v6 < 1)
      {
LABEL_42:
        sub_100010B58(__s, 4u, 0);
        sub_10000CD88(*(a1 + 12), *__s, 0xAAAAAAAAAAAAAAABLL * ((*&__s[8] - *__s) >> 3));
        v7 = 0;
        goto LABEL_43;
      }

      v9 = &v5[v6];
      v10 = __s1 + 5;
      while (1)
      {
        if (*v10 != 59)
        {
          goto LABEL_42;
        }

        *&__p.__r_.__value_.__l.__data_ = 0uLL;
        __p.__r_.__value_.__r.__words[2] = -1;
        __endptr.__r_.__value_.__r.__words[0] = (v10 + 2);
        HIDWORD(v12) = v10[1] - 67;
        LODWORD(v12) = HIDWORD(v12);
        v11 = v12 >> 4;
        if (v11 > 1)
        {
          if (v11 != 2)
          {
            if (v11 == 3)
            {
              goto LABEL_35;
            }

LABEL_36:
            sub_10002A394(a1, "/Library/Caches/com.apple.xbs/Sources/lldb/llvm-project/lldb/tools/debugserver/source/RNBRemote.cpp", 3756, v5);
            goto LABEL_39;
          }
        }

        else
        {
          if (v11)
          {
            if (v11 == 1)
            {
              *__error() = 0;
              HIDWORD(__p.__r_.__value_.__r.__words[1]) = strtoul(v10 + 2, &__endptr.__r_.__value_.__l.__data_, 16);
              if (*__error())
              {
                v81 = 3747;
                goto LABEL_155;
              }

LABEL_35:
              LODWORD(__p.__r_.__value_.__r.__words[1]) = 6;
              goto LABEL_39;
            }

            goto LABEL_36;
          }

          *__error() = 0;
          HIDWORD(__p.__r_.__value_.__r.__words[1]) = strtoul(v10 + 2, &__endptr.__r_.__value_.__l.__data_, 16);
          if (*__error())
          {
            v81 = 3734;
LABEL_155:
            v7 = sub_10002A394(a1, "/Library/Caches/com.apple.xbs/Sources/lldb/llvm-project/lldb/tools/debugserver/source/RNBRemote.cpp", v81, v5);
            v8 = *&__s[24];
            if (*&__s[24])
            {
              goto LABEL_44;
            }

            goto LABEL_45;
          }
        }

        LODWORD(__p.__r_.__value_.__r.__words[1]) = 5;
LABEL_39:
        v10 = __endptr.__r_.__value_.__r.__words[0];
        if (*__endptr.__r_.__value_.__l.__data_ == 58)
        {
          *__error() = 0;
          __endptr.__r_.__value_.__r.__words[0] = (v10 + 1);
          __p.__r_.__value_.__r.__words[0] = strtoul(v10 + 1, &__endptr.__r_.__value_.__l.__data_, 16);
          if (*__error())
          {
            v81 = 3765;
            goto LABEL_155;
          }

          v10 = __endptr.__r_.__value_.__r.__words[0];
        }

        sub_100010C7C(__s, &__p);
        if (v10 >= v9)
        {
          goto LABEL_42;
        }
      }
    }

    return sub_10001AF9C(a1);
  }
}

BOOL sub_10001DA20(uint64_t a1, char *__s)
{
  if (__s)
  {
    if (*__s)
    {
      v3 = a1;
      v4 = strlen(__s);
      a1 = v3;
      if (v4 > 2)
      {
        __endptr = 0;
        *__error() = 0;
        v8 = strtoull(__s + 1, &__endptr, 16);
        if (*__error())
        {
          v6 = __s + 1;
          a1 = v3;
          v5 = 3186;
          goto LABEL_5;
        }

        v9 = __endptr;
        if (*__endptr != 44)
        {
          v6 = __s + 1;
          a1 = v3;
          v5 = 3190;
          goto LABEL_5;
        }

        *__error() = 0;
        v10 = strtoul(v9 + 1, 0, 16);
        if (*__error())
        {
          v6 = v9 + 1;
          a1 = v3;
          v5 = 3200;
          goto LABEL_5;
        }

        if (!v10)
        {
          sub_100013A80(__p, "OK");
          v32 = sub_100029084(v3, __p);
          if (v43 < 0)
          {
            v33 = __p[0];
LABEL_73:
            operator delete(v33);
          }

          return v32;
        }

        sub_1000351B8(&v49, v10);
        if (v51 - v49 == v10)
        {
          v11 = sub_10000D364(*(v3 + 12), v8, v50 - v49, v49);
          if (v11)
          {
            v12 = v11;
            v44 = 0;
            v45 = 0;
            v46 = 0;
            sub_100030344(&v44, v11 + 30);
            for (i = 0; i != v12; ++i)
            {
              v15 = v49[i];
              v16 = v15 > 0x2A || ((1 << v15) & 0x41800000000) == 0;
              if (v16 && v15 != 125)
              {
                sub_10003579C(&v44, &v49[i]);
              }

              else
              {
                v17 = v45;
                if (v45 >= v46)
                {
                  v19 = v44;
                  v20 = (v45 - v44);
                  v21 = v45 - v44 + 1;
                  if (v21 < 0)
                  {
                    goto LABEL_75;
                  }

                  v22 = v46 - v44;
                  if (2 * (v46 - v44) > v21)
                  {
                    v21 = 2 * v22;
                  }

                  if (v22 >= 0x3FFFFFFFFFFFFFFFLL)
                  {
                    v23 = 0x7FFFFFFFFFFFFFFFLL;
                  }

                  else
                  {
                    v23 = v21;
                  }

                  if (v23)
                  {
                    operator new();
                  }

                  v24 = v45 - v44;
                  *v20 = 125;
                  v18 = v20 + 1;
                  memcpy(0, v19, v24);
                  v44 = 0;
                  v45 = v20 + 1;
                  v46 = 0;
                  if (v19)
                  {
                    operator delete(v19);
                  }
                }

                else
                {
                  *v45 = 125;
                  v18 = v17 + 1;
                }

                v45 = v18;
                v25 = v49[i] ^ 0x20;
                if (v18 < v46)
                {
                  *v18 = v25;
                  v14 = v18 + 1;
                }

                else
                {
                  v26 = v44;
                  v27 = (v18 - v44);
                  v28 = v18 - v44 + 1;
                  if (v28 < 0)
                  {
LABEL_75:
                    sub_100008888();
                  }

                  v29 = v46 - v44;
                  if (2 * (v46 - v44) > v28)
                  {
                    v28 = 2 * v29;
                  }

                  if (v29 >= 0x3FFFFFFFFFFFFFFFLL)
                  {
                    v30 = 0x7FFFFFFFFFFFFFFFLL;
                  }

                  else
                  {
                    v30 = v28;
                  }

                  if (v30)
                  {
                    operator new();
                  }

                  v31 = v18 - v44;
                  *v27 = v25;
                  v14 = v27 + 1;
                  memcpy(0, v26, v31);
                  v44 = 0;
                  v45 = v27 + 1;
                  v46 = 0;
                  if (v26)
                  {
                    operator delete(v26);
                  }
                }

                v45 = v14;
              }
            }

            v36 = v44;
            v35 = v45;
            sub_100028EE0(__p);
            v37 = v35 - v36;
            if (v35 != v36)
            {
              v38 = 0;
              if (v37 <= 1)
              {
                v39 = 1;
              }

              else
              {
                v39 = v37;
              }

              do
              {
                LOBYTE(v40[0]) = *(v44 + v38);
                sub_100034978(__p, v40, 1);
                ++v38;
              }

              while (v39 != v38);
            }

            std::stringbuf::str();
            v32 = sub_100029084(v3, v40);
            if (v41 < 0)
            {
              operator delete(v40[0]);
            }

            sub_1000294EC(__p);
            v34 = v44;
            if (v44)
            {
              v45 = v44;
              goto LABEL_70;
            }
          }

          else
          {
            sub_100013A80(&v47, "E80");
            sub_100013A80(__p, &unk_10005B2EA);
            v32 = sub_100029BE8(v3, &v47, __p);
            if (v43 < 0)
            {
              operator delete(__p[0]);
            }

            if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
            {
              v34 = v47.__r_.__value_.__r.__words[0];
              goto LABEL_70;
            }
          }
        }

        else
        {
          sub_100013A80(&v48, "E79");
          sub_100013A80(__p, &unk_10005B2EA);
          v32 = sub_100029BE8(v3, &v48, __p);
          if (v43 < 0)
          {
            operator delete(__p[0]);
          }

          if (SHIBYTE(v48.__r_.__value_.__r.__words[2]) < 0)
          {
            v34 = v48.__r_.__value_.__r.__words[0];
LABEL_70:
            operator delete(v34);
          }
        }

        v33 = v49;
        if (v49)
        {
          v50 = v49;
          goto LABEL_73;
        }

        return v32;
      }
    }
  }

  v5 = 3178;
  v6 = __s;
LABEL_5:

  return sub_10002A394(a1, "/Library/Caches/com.apple.xbs/Sources/lldb/llvm-project/lldb/tools/debugserver/source/RNBRemote.cpp", v5, v6);
}