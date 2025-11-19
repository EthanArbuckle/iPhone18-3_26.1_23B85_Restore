uint64_t sub_10004DEBC(uint64_t a1)
{
  if (sub_100010524(5))
  {
    sub_100010668("MachThread::~MachThread() for tid = 0x%8.8llx (%u)", *(a1 + 8), *(a1 + 20));
  }

  if (*(a1 + 367) < 0)
  {
    operator delete(*(a1 + 344));
  }

  v2 = *(a1 + 184);
  *(a1 + 184) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(a1 + 160);
  if (v3)
  {
    *(a1 + 168) = v3;
    operator delete(v3);
  }

  if (pthread_mutex_destroy((a1 + 32)) && !pthread_mutex_unlock((a1 + 32)))
  {
    pthread_mutex_destroy((a1 + 32));
  }

  return a1;
}

void sub_10004DF80(uint64_t a1)
{
  if (sub_100010524(5))
  {
    sub_100010668("MachThread::%s()", "Suspend");
  }

  v2 = *(a1 + 16);
  if (v2)
  {
    v9[0] = thread_suspend(v2);
    v9[1] = 1;
    v11 = 0;
    v12 = 0;
    __p = 0;
    if (v9[0])
    {
      sub_1000104C8(4);
    }

    else
    {
      ++*(a1 + 136);
      if (!sub_1000104C8(4))
      {
        return;
      }
    }

    sub_1000103F8(v9, "::thread_suspend (%4.4x)", v3, v4, v5, v6, v7, v8, *(a1 + 16));
    if (SHIBYTE(v12) < 0)
    {
      operator delete(__p);
    }
  }
}

BOOL sub_10004E038(_DWORD *a1, int a2)
{
  if (sub_100010524(5))
  {
    sub_100010668("MachThread::%s()", "SetSuspendCountBeforeResume");
  }

  *__p = 0u;
  v16 = 0u;
  v4 = a1[4];
  if (v4)
  {
    if (a2)
    {
      v5 = a1 + 24;
      thread_info_outCnt = 10;
      if (thread_info(v4, 3u, a1 + 24, &thread_info_outCnt))
      {
LABEL_6:
        *(v5 + 4) = 0;
        *v5 = 0u;
        *(v5 + 1) = 0u;
        goto LABEL_22;
      }

      v6 = a1[32];
      a1[34] -= v6;
      if (v6 >= 1)
      {
LABEL_10:
        v5 = a1 + 24;
        do
        {
          __p[0] = (thread_resume(a1[4]) | 0x100000000);
          if (SHIBYTE(v16) < 0)
          {
            *__p[1] = 0;
            *&v16 = 0;
          }

          else
          {
            LOBYTE(__p[1]) = 0;
            HIBYTE(v16) = 0;
          }

          if ((sub_1000104C8(4) || LODWORD(__p[0])) && (sub_1000103F8(__p, "::thread_resume (%4.4x)", v7, v8, v9, v10, v11, v12, a1[4]), LODWORD(__p[0])))
          {
            v13 = a1[4];
            if (!v13)
            {
              goto LABEL_6;
            }

            thread_info_outCnt = 10;
            if (thread_info(v13, 3u, a1 + 24, &thread_info_outCnt))
            {
              goto LABEL_6;
            }

            v6 = a1[32];
          }

          else
          {
            --v6;
          }
        }

        while (v6 > 0);
      }
    }

    else
    {
      v6 = a1[34];
      a1[34] = 0;
      if (v6 >= 1)
      {
        goto LABEL_10;
      }
    }
  }

LABEL_22:
  if (SHIBYTE(v16) < 0)
  {
    operator delete(__p[1]);
  }

  return v4 != 0;
}

uint64_t sub_10004E1D4(uint64_t a1)
{
  if (sub_100010524(5))
  {
    sub_100010668("MachThread::%s()", "RestoreSuspendCountAfterStop");
  }

  *__p = 0u;
  v23 = 0u;
  if (*(a1 + 16))
  {
    v2 = *(a1 + 136);
    if (v2 < 1)
    {
      while (1)
      {
        v11 = 1;
        if ((v2 & 0x80000000) == 0)
        {
          break;
        }

        v12 = thread_suspend(*(a1 + 16));
        __p[0] = (v12 | 0x100000000);
        if (SHIBYTE(v23) < 0)
        {
          *__p[1] = 0;
          *&v23 = 0;
          if (LODWORD(__p[0]))
          {
LABEL_28:
            sub_1000104C8(4);
LABEL_29:
            sub_1000103F8(__p, "::thread_suspend (%4.4x)", v13, v14, v15, v16, v17, v18, *(a1 + 16));
            goto LABEL_30;
          }
        }

        else
        {
          LOBYTE(__p[1]) = 0;
          HIBYTE(v23) = 0;
          if (v12)
          {
            goto LABEL_28;
          }
        }

        ++*(a1 + 136);
        if (sub_1000104C8(4))
        {
          goto LABEL_29;
        }

        v2 = *(a1 + 136);
      }
    }

    else
    {
      while (1)
      {
        __p[0] = (thread_resume(*(a1 + 16)) | 0x100000000);
        if (SHIBYTE(v23) < 0)
        {
          *__p[1] = 0;
          *&v23 = 0;
        }

        else
        {
          LOBYTE(__p[1]) = 0;
          HIBYTE(v23) = 0;
        }

        if (sub_1000104C8(4) || LODWORD(__p[0]))
        {
          sub_1000103F8(__p, "::thread_resume (%4.4x)", v5, v6, v7, v8, v9, v10, *(a1 + 16));
          if (LODWORD(__p[0]))
          {
            break;
          }
        }

        v3 = *(a1 + 136);
        v4 = __OFSUB__(v3--, 1);
        *(a1 + 136) = v3;
        if ((v3 < 0) ^ v4 | (v3 == 0))
        {
          v11 = 1;
          goto LABEL_31;
        }
      }

      v19 = *(a1 + 16);
      if (v19 && (thread_info_outCnt = 10, !thread_info(v19, 3u, (a1 + 96), &thread_info_outCnt)))
      {
        v20 = *(a1 + 128);
      }

      else
      {
        v20 = 0;
        *(a1 + 128) = 0;
        *(a1 + 96) = 0u;
        *(a1 + 112) = 0u;
      }

      v11 = 0;
      *(a1 + 136) = v20;
    }
  }

  else
  {
LABEL_30:
    v11 = 0;
  }

LABEL_31:
  if (SHIBYTE(v23) < 0)
  {
    operator delete(__p[1]);
  }

  return v11;
}

char *sub_10004E3AC(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    return 0;
  }

  thread_info_outCnt = 10;
  if (thread_info(v2, 3u, thread_info_out, &thread_info_outCnt))
  {
    return 0;
  }

  v4 = ((thread_info_out[1] / 1000000.0) + thread_info_out[0]);
  snprintf(byte_10047DB98, 0x400uLL, "Thread 0x%8.8llx: user=%f system=%f cpu=%d sleep_time=%d", *(a1 + 8), v4, v4, thread_info_out[4], thread_info_out[9]);
  return byte_10047DB98;
}

uint64_t sub_10004E45C(uint64_t a1)
{
  v1 = *(a1 + 120);
  if (!v1)
  {
    v4 = *(a1 + 16);
    if (!v4 || (thread_info_outCnt = 10, v5 = a1, v6 = thread_info(v4, 3u, (a1 + 96), &thread_info_outCnt), a1 = v5, v6))
    {
      *(a1 + 128) = 0;
      *(a1 + 96) = 0u;
      *(a1 + 112) = 0u;
      return (*(**(a1 + 184) + 88))(*(a1 + 184), 0) != 0;
    }

    v1 = *(v5 + 120);
  }

  v2 = v1 - 1;
  if (v2 < 5 && ((0x17u >> v2) & 1) != 0)
  {
    return 1;
  }

  return (*(**(a1 + 184) + 88))(*(a1 + 184), 0) != 0;
}

void sub_10004E524(uint64_t a1, int a2)
{
  v4 = *(a1 + 120) - 1;
  if (v4 > 4)
  {
    v5 = "???";
    if (!sub_100010510())
    {
      return;
    }

    goto LABEL_5;
  }

  v5 = off_10006D698[v4];
  if (sub_100010510())
  {
LABEL_5:
    v6 = *(a1 + 8);
    v7 = *(a1 + 20);
    v8 = (*(**(a1 + 184) + 88))(*(a1 + 184), -1);
    v9 = (*(**(a1 + 184) + 104))(*(a1 + 184), -1);
    sub_100010668("[%3u] #%3u tid: 0x%8.8llx, pc: 0x%16.16llx, sp: 0x%16.16llx, user: %d.%6.6d, system: %d.%6.6d, cpu: %2d, policy: %2d, run_state: %2d (%s), flags: %2d, suspend_count: %2d (current %2d), sleep_time: %d", a2, v7, v6, v8, v9, *(a1 + 96), *(a1 + 100), *(a1 + 104), *(a1 + 108), *(a1 + 112), *(a1 + 116), *(a1 + 120), v5, *(a1 + 124), *(a1 + 128), *(a1 + 136), *(a1 + 132));
  }
}

uint64_t sub_10004E644(uint64_t a1, uint64_t a2, int a3)
{
  if (*(a2 + 16) != -1)
  {
    (*(**(a1 + 184) + 96))(*(a1 + 184));
  }

  v6 = *(a2 + 8);
  pthread_mutex_lock((a1 + 32));
  *(a1 + 24) = v6;
  if (sub_100010524(4))
  {
    v7 = sub_10000B3E8(v6);
    sub_100010668("MachThread::SetState(%s) for tid = 0x%8.8llx", v7, *(a1 + 8));
  }

  pthread_mutex_unlock((a1 + 32));
  v8 = *(a2 + 8);
  if ((v8 - 5) < 2)
  {
    if (sub_100010524(5))
    {
      sub_100010668("MachThread::%s()", "Resume");
    }

    if (*(a1 + 16))
    {
      sub_10004E038(a1, a3);
    }
  }

  else if (v8 == 10 || v8 == 4)
  {
    if (a3)
    {
      sub_1000593E8();
    }

    sub_10004DF80(a1);
  }

  result = (*(**(a1 + 184) + 112))(*(a1 + 184));
  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  *(a1 + 168) = *(a1 + 160);
  return result;
}

BOOL sub_10004E794(uint64_t *a1, _BYTE *a2)
{
  v4 = *a1;
  v5 = (*(*a1[23] + 88))(a1[23], -1);
  if (sub_100009344(v4 + 1640, v5))
  {
    return 1;
  }

  if ((*(*a1[23] + 192))(a1[23]))
  {
    result = 0;
    *a2 = 1;
  }

  else
  {
    pthread_mutex_lock((a1 + 4));
    v7 = *(a1 + 6);
    pthread_mutex_unlock((a1 + 4));
    return v7 != 5 && *(a1 + 36) && *(a1 + 37) && *(a1 + 38) != 0;
  }

  return result;
}

uint64_t sub_10004E884(uint64_t a1)
{
  pthread_mutex_lock((a1 + 32));
  v2 = *(a1 + 24);
  pthread_mutex_unlock((a1 + 32));
  return v2;
}

BOOL sub_10004E8BC(uint64_t a1)
{
  pthread_mutex_lock((a1 + 32));
  v2 = *(a1 + 24);
  pthread_mutex_unlock((a1 + 32));
  return v2 == 6;
}

uint64_t sub_10004E8F8(uint64_t a1)
{
  (*(**(a1 + 184) + 120))(*(a1 + 184));
  sub_10004E1D4(a1);
  v2 = *(a1 + 16);
  if (v2 && (thread_info_outCnt = 10, !thread_info(v2, 3u, (a1 + 96), &thread_info_outCnt)))
  {
    if (*(a1 + 128) >= 1)
    {
      v3 = (a1 + 32);
      pthread_mutex_lock((a1 + 32));
      v4 = 10;
      *(a1 + 24) = 10;
      if (!sub_100010524(4))
      {
        goto LABEL_6;
      }

      goto LABEL_5;
    }
  }

  else
  {
    *(a1 + 128) = 0;
    *(a1 + 96) = 0u;
    *(a1 + 112) = 0u;
  }

  v3 = (a1 + 32);
  pthread_mutex_lock((a1 + 32));
  v4 = 4;
  *(a1 + 24) = 4;
  if (sub_100010524(4))
  {
LABEL_5:
    v5 = sub_10000B3E8(v4);
    sub_100010668("MachThread::SetState(%s) for tid = 0x%8.8llx", v5, *(a1 + 8));
  }

LABEL_6:
  pthread_mutex_unlock(v3);
  return 1;
}

uint64_t sub_10004EA00(uint64_t a1, uint64_t *a2)
{
  result = (*(**(a1 + 184) + 128))(*(a1 + 184));
  v5 = (a1 + 144);
  if (!*(a1 + 144) || !*(a1 + 148) || (v6 = *(a1 + 152)) == 0 || v6 == 6 || v6 == 5 && **(a1 + 160) == 1)
  {
    v7 = *a2;
    *(a1 + 152) = *(a2 + 2);
    *v5 = v7;
    if (v5 != a2)
    {
      v8 = a2[2];
      v9 = a2[3];
      v10 = result;
      sub_10004F1E4((a1 + 160), v8, v9, (v9 - v8) >> 3);
      return v10;
    }
  }

  return result;
}

uint64_t sub_10004EABC(uint64_t a1, unint64_t a2, unint64_t a3)
{
  if (*(a1 + 200) <= a2)
  {
    return 0;
  }

  v3 = *(a1 + 192) + 24 * a2;
  if (*(v3 + 16) <= a3)
  {
    return 0;
  }

  else
  {
    return *(v3 + 8) + 72 * a3;
  }
}

uint64_t sub_10004EBE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a2 || (*(a2 + 24) & 4) != 0)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return (*(**(a1 + 184) + 152))(*(a1 + 184), *(a2 + 16), *(a2 + 4), a3);
  }
}

uint64_t sub_10004EC34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 && (v3 = *(a2 + 24), (v3 & 4) != 0))
  {
    return (*(**(a1 + 184) + 160))(*(a1 + 184), *(a2 + 16), *(a2 + 4), (v3 >> 3) & 1, (v3 >> 4) & 1, a3);
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t sub_10004ECD8(uint64_t a1, uint64_t a2)
{
  if (!a2 || *(a2 + 28) == -1)
  {
    return 0;
  }

  else
  {
    return (*(**(a1 + 184) + 168))();
  }
}

uint64_t sub_10004ED18(uint64_t a1, uint64_t a2)
{
  if (!a2 || *(a2 + 28) == -1)
  {
    return 0;
  }

  else
  {
    return (*(**(a1 + 184) + 176))();
  }
}

uint64_t sub_10004ED80(uint64_t a1)
{
  thread_info_outCnt = 6;
  if (!thread_info(*(a1 + 16), 4u, (a1 + 208), &thread_info_outCnt) && proc_pidinfo(**a1, 5, *(a1 + 216), (a1 + 232), 112) && *(a1 + 280))
  {
    return a1 + 280;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10004EDFC(thread_inspect_t a1)
{
  thread_info_outCnt = 6;
  if (thread_info(a1, 4u, thread_info_out, &thread_info_outCnt))
  {
    return a1;
  }

  else
  {
    return *thread_info_out;
  }
}

uint64_t sub_10004EE4C(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    return -1;
  }

  thread_info_outCnt = 6;
  if (thread_info(v2, 4u, &thread_info_out, &thread_info_outCnt))
  {
    return -1;
  }

  if (*(a1 + 368) == 1)
  {
    *v8 = 0;
    v4 = sub_10003D590(*a1, v11, 8uLL, v8);
    v5 = *v8;
    if (*v8)
    {
      v6 = v4 == 8;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    *v8 = 0;
    v7 = sub_10003D590(*a1, v11, 4uLL, v8);
    v5 = *v8;
    if (*v8)
    {
      v6 = v7 == 4;
    }

    else
    {
      v6 = 0;
    }
  }

  if (v6)
  {
    return v5;
  }

  else
  {
    return -1;
  }
}

uint64_t sub_10004EEFC(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_10004EE4C(a1);
  if ((a3 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    return v8 + a3;
  }

  if (a4 != 4)
  {
    return -1;
  }

  v17 = 0;
  v10 = v8;
  v11 = sub_10003D590(*a1, v8 + a2, 4uLL, &v17);
  if (v17)
  {
    v12 = v11 == 4;
  }

  else
  {
    v12 = 0;
  }

  if (v12)
  {
    v13 = v17;
  }

  else
  {
    v13 = -1;
  }

  *v16 = 0;
  v14 = sub_10003D590(*a1, v10 + a2, 8uLL, v16);
  if (*v16)
  {
    v15 = v14 == 8;
  }

  else
  {
    v15 = 0;
  }

  if (v15)
  {
    return *v16;
  }

  else
  {
    return v13;
  }
}

uint64_t sub_10004EFB8(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    return -1;
  }

  thread_info_outCnt = 6;
  if (thread_info(v2, 4u, thread_info_out, &thread_info_outCnt) || v12 - 1 > 0xFFFFFFFFFFFFFFFDLL)
  {
    return -1;
  }

  if (*(a1 + 368) == 1)
  {
    *v9 = 0;
    v5 = sub_10003D590(*a1, v12, 8uLL, v9);
    v6 = *v9;
    if (*v9)
    {
      v7 = v5 == 8;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    *v9 = 0;
    v8 = sub_10003D590(*a1, v12, 4uLL, v9);
    v6 = *v9;
    if (*v9)
    {
      v7 = v8 == 4;
    }

    else
    {
      v7 = 0;
    }
  }

  if (v7)
  {
    return v6;
  }

  else
  {
    return -1;
  }
}

std::string *sub_10004F070@<X0>(std::string *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *(a4 + 16) = 0u;
  *(a4 + 32) = 0u;
  *a4 = 0u;
  *(a4 + 48) = -1;
  if (LODWORD(result->__r_.__value_.__r.__words[2]))
  {
    v5 = result;
    if (result[15].__r_.__value_.__r.__words[2])
    {
      if (result[15].__r_.__value_.__s.__data_[8] == 1)
      {
        v14 = 0;
        v6 = sub_10003D590(result->__r_.__value_.__r.__words[0], a2 + 8 * a3, 8uLL, &v14);
        v7 = v14;
        v8 = v6 == 8;
      }

      else
      {
        v13 = 0;
        v9 = sub_10003D590(result->__r_.__value_.__r.__words[0], a2 + 4 * a3, 4uLL, &v13);
        v7 = v13;
        v8 = v9 == 4;
      }

      if (v8)
      {
        v10 = v7;
      }

      else
      {
        v10 = 0;
      }

      result = (v5[15].__r_.__value_.__r.__words[2])(v10, 0, 0);
      if (result > 20)
      {
        switch(result)
        {
          case 0x15:
            v11 = "Default";
            v12 = "QOS_CLASS_DEFAULT";
            break;
          case 0x21:
            v11 = "User Interactive";
            v12 = "QOS_CLASS_USER_INTERACTIVE";
            break;
          case 0x19:
            v11 = "User Initiated";
            v12 = "QOS_CLASS_USER_INITIATED";
            break;
          default:
            return result;
        }
      }

      else if (result)
      {
        if (result == 9)
        {
          v11 = "Background";
          v12 = "QOS_CLASS_BACKGROUND";
        }

        else
        {
          if (result != 17)
          {
            return result;
          }

          v11 = "Utility";
          v12 = "QOS_CLASS_UTILITY";
        }
      }

      else
      {
        v11 = "Unspecified";
        v12 = "QOS_CLASS_UNSPECIFIED";
      }

      *(a4 + 48) = result;
      std::string::assign(a4, v12);
      return std::string::assign((a4 + 24), v11);
    }
  }

  return result;
}

char *sub_10004F1E4(char **a1, char *a2, uint64_t a3, unint64_t a4)
{
  v6 = a1[2];
  result = *a1;
  if (a4 > (v6 - result) >> 3)
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

    if (!(a4 >> 61))
    {
      v9 = v6 >> 2;
      if (v6 >> 2 <= a4)
      {
        v9 = a4;
      }

      v10 = v6 >= 0x7FFFFFFFFFFFFFF8;
      v11 = 0x1FFFFFFFFFFFFFFFLL;
      if (!v10)
      {
        v11 = v9;
      }

      if (!(v11 >> 61))
      {
        operator new();
      }
    }

    sub_100008888();
  }

  v12 = a1[1];
  v13 = v12 - result;
  if (a4 <= (v12 - result) >> 3)
  {
    v17 = a3 - a2;
    if (v17)
    {
      v18 = result;
      memmove(result, a2, v17);
      result = v18;
    }

    v16 = &result[v17];
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

    v16 = &v12[v15];
  }

  a1[1] = v16;
  return result;
}

uint64_t sub_10004F32C(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  sub_1000108B8((a1 + 24), 2);
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  return a1;
}

char **sub_10004F36C(char **a1)
{
  v2 = a1[12];
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  if (pthread_mutex_destroy((a1 + 3)) && !pthread_mutex_unlock((a1 + 3)))
  {
    pthread_mutex_destroy((a1 + 3));
  }

  v3 = *a1;
  if (*a1)
  {
    v4 = a1[1];
    v5 = *a1;
    if (v4 != v3)
    {
      do
      {
        v6 = *(v4 - 1);
        if (v6 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v6->__on_zero_shared)(v6);
          std::__shared_weak_count::__release_weak(v6);
        }

        v4 -= 16;
      }

      while (v4 != v3);
      v5 = *a1;
    }

    a1[1] = v3;
    operator delete(v5);
  }

  return a1;
}

uint64_t sub_10004F48C(uint64_t a1, uint64_t a2)
{
  pthread_mutex_lock((a1 + 24));
  v4 = *(a1 + 8) - *a1;
  if (v4)
  {
    v5 = v4 >> 4;
    if (v5 <= 1)
    {
      v5 = 1;
    }

    v6 = (*a1 + 8);
    while (1)
    {
      v7 = *(v6 - 1);
      if (*(v7 + 8) == a2)
      {
        break;
      }

      v6 += 2;
      if (!--v5)
      {
        goto LABEL_7;
      }
    }

    v9 = *v6;
    if (*v6)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    pthread_mutex_unlock((a1 + 24));
    result = sub_10004E884(v7);
    if (v9)
    {
      if (!atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v10 = result;
        (v9->__on_zero_shared)(v9);
        std::__shared_weak_count::__release_weak(v9);
        return v10;
      }
    }
  }

  else
  {
LABEL_7:
    pthread_mutex_unlock((a1 + 24));
    return 0;
  }

  return result;
}

uint64_t sub_10004F578@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  pthread_mutex_lock((a1 + 24));
  *a3 = 0;
  a3[1] = 0;
  v6 = *(a1 + 8) - *a1;
  if (v6)
  {
    v7 = v6 >> 4;
    if (v7 <= 1)
    {
      v7 = 1;
    }

    v8 = (*a1 + 8);
    while (1)
    {
      v9 = *(v8 - 1);
      if (*(v9 + 8) == a2)
      {
        break;
      }

      v8 += 2;
      if (!--v7)
      {
        goto LABEL_11;
      }
    }

    v10 = *v8;
    if (v10)
    {
      atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
    }

    *a3 = v9;
    a3[1] = v10;
  }

LABEL_11:

  return pthread_mutex_unlock((a1 + 24));
}

uint64_t sub_10004F61C(uint64_t a1, uint64_t a2)
{
  pthread_mutex_lock((a1 + 24));
  v4 = *(a1 + 8) - *a1;
  if (v4)
  {
    v5 = v4 >> 4;
    if (v5 <= 1)
    {
      v5 = 1;
    }

    v6 = (*a1 + 8);
    while (1)
    {
      v7 = *(v6 - 1);
      if (*(v7 + 8) == a2)
      {
        break;
      }

      v6 += 2;
      if (!--v5)
      {
        goto LABEL_7;
      }
    }

    v9 = *v6;
    if (*v6)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    pthread_mutex_unlock((a1 + 24));
    result = sub_10004ED80(v7);
    if (v9)
    {
      if (!atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v10 = result;
        (v9->__on_zero_shared)(v9);
        std::__shared_weak_count::__release_weak(v9);
        return v10;
      }
    }
  }

  else
  {
LABEL_7:
    pthread_mutex_unlock((a1 + 24));
    return 0;
  }

  return result;
}

void sub_10004F708(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  pthread_mutex_lock((a1 + 24));
  v10 = *(a1 + 8) - *a1;
  if (v10)
  {
    v11 = v10 >> 4;
    if (v11 <= 1)
    {
      v11 = 1;
    }

    v12 = (*a1 + 8);
    while (1)
    {
      v13 = *(v12 - 1);
      if (v13->__r_.__value_.__l.__size_ == a2)
      {
        break;
      }

      v12 += 2;
      if (!--v11)
      {
        goto LABEL_7;
      }
    }

    v14 = *v12;
    if (*v12)
    {
      atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
      pthread_mutex_unlock((a1 + 24));
      sub_10004F070(v13, a3, a4, a5);
      if (!atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v14->__on_zero_shared)(v14);

        std::__shared_weak_count::__release_weak(v14);
      }
    }

    else
    {
      pthread_mutex_unlock((a1 + 24));

      sub_10004F070(v13, a3, a4, a5);
    }
  }

  else
  {
LABEL_7:
    pthread_mutex_unlock((a1 + 24));
    *a5 = 0u;
    *(a5 + 16) = 0u;
    *(a5 + 32) = 0u;
    *(a5 + 48) = -1;
  }
}

uint64_t sub_10004F87C(uint64_t a1, uint64_t a2)
{
  pthread_mutex_lock((a1 + 24));
  v4 = *(a1 + 8) - *a1;
  if (v4)
  {
    v5 = v4 >> 4;
    if (v5 <= 1)
    {
      v5 = 1;
    }

    v6 = (*a1 + 8);
    while (1)
    {
      v7 = *(v6 - 1);
      if (*(v7 + 8) == a2)
      {
        break;
      }

      v6 += 2;
      if (!--v5)
      {
        goto LABEL_7;
      }
    }

    v9 = *v6;
    if (*v6)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    pthread_mutex_unlock((a1 + 24));
    result = sub_10004EE4C(v7);
    if (v9)
    {
      if (!atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v10 = result;
        (v9->__on_zero_shared)(v9);
        std::__shared_weak_count::__release_weak(v9);
        return v10;
      }
    }
  }

  else
  {
LABEL_7:
    pthread_mutex_unlock((a1 + 24));
    return -1;
  }

  return result;
}

uint64_t sub_10004F968(uint64_t a1, uint64_t a2)
{
  pthread_mutex_lock((a1 + 24));
  v4 = *(a1 + 8) - *a1;
  if (v4)
  {
    v5 = v4 >> 4;
    if (v5 <= 1)
    {
      v5 = 1;
    }

    v6 = (*a1 + 8);
    while (1)
    {
      v7 = *(v6 - 1);
      if (*(v7 + 8) == a2)
      {
        break;
      }

      v6 += 2;
      if (!--v5)
      {
        goto LABEL_7;
      }
    }

    v9 = *v6;
    if (*v6)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    pthread_mutex_unlock((a1 + 24));
    result = sub_10004EFB8(v7);
    if (v9)
    {
      if (!atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v10 = result;
        (v9->__on_zero_shared)(v9);
        std::__shared_weak_count::__release_weak(v9);
        return v10;
      }
    }
  }

  else
  {
LABEL_7:
    pthread_mutex_unlock((a1 + 24));
    return -1;
  }

  return result;
}

uint64_t sub_10004FA54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  pthread_mutex_lock((a1 + 24));
  v10 = *(a1 + 8) - *a1;
  if (v10)
  {
    v11 = v10 >> 4;
    if (v11 <= 1)
    {
      v11 = 1;
    }

    v12 = (*a1 + 8);
    while (1)
    {
      v13 = *(v12 - 1);
      if (v13[1] == a2)
      {
        break;
      }

      v12 += 2;
      if (!--v11)
      {
        goto LABEL_7;
      }
    }

    v15 = *v12;
    if (*v12)
    {
      atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    pthread_mutex_unlock((a1 + 24));
    result = sub_10004EEFC(v13, a3, a4, a5);
    if (v15)
    {
      if (!atomic_fetch_add(&v15->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v16 = result;
        (v15->__on_zero_shared)(v15);
        std::__shared_weak_count::__release_weak(v15);
        return v16;
      }
    }
  }

  else
  {
LABEL_7:
    pthread_mutex_unlock((a1 + 24));
    return -1;
  }

  return result;
}

uint64_t sub_10004FB60(uint64_t a1, uint64_t a2)
{
  pthread_mutex_lock((a1 + 24));
  v4 = *(a1 + 8) - *a1;
  if (v4)
  {
    v5 = v4 >> 4;
    if (v5 <= 1)
    {
      v5 = 1;
    }

    v6 = (*a1 + 8);
    while (1)
    {
      v7 = *(v6 - 1);
      if (*(v7 + 8) == a2)
      {
        break;
      }

      v6 += 2;
      if (!--v5)
      {
        goto LABEL_7;
      }
    }

    v9 = *v6;
    if (*v6)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
      pthread_mutex_unlock((a1 + 24));
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    else
    {
      pthread_mutex_unlock((a1 + 24));
    }

    v10 = *(a1 + 96);
    *(a1 + 88) = v7;
    *(a1 + 96) = v9;
    if (v10 && !atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v10->__on_zero_shared)(v10);
      std::__shared_weak_count::__release_weak(v10);
    }

    if (v9 && !atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v9->__on_zero_shared)(v9);
      std::__shared_weak_count::__release_weak(v9);
    }
  }

  else
  {
LABEL_7:
    pthread_mutex_unlock((a1 + 24));
    return 0;
  }

  return a2;
}

uint64_t sub_10004FCA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  pthread_mutex_lock((a1 + 24));
  v6 = *(a1 + 8) - *a1;
  if (v6)
  {
    v7 = v6 >> 4;
    if (v7 <= 1)
    {
      v7 = 1;
    }

    v8 = (*a1 + 8);
    while (1)
    {
      v9 = *(v8 - 1);
      if (*(v9 + 8) == a2)
      {
        break;
      }

      v8 += 2;
      if (!--v7)
      {
        goto LABEL_7;
      }
    }

    v11 = *v8;
    if (*v8)
    {
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    pthread_mutex_unlock((a1 + 24));
    result = sub_10003B9D4(v9 + 144, a3);
    if (v11)
    {
      if (!atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v12 = result;
        (v11->__on_zero_shared)(v11);
        std::__shared_weak_count::__release_weak(v11);
        return v12;
      }
    }
  }

  else
  {
LABEL_7:
    pthread_mutex_unlock((a1 + 24));
    return 0;
  }

  return result;
}

BOOL sub_10004FD98(uint64_t *a1, uint64_t a2, integer_t *a3)
{
  pthread_mutex_lock((a1 + 3));
  v6 = *a1;
  v7 = a1[1] - *a1;
  if (v7)
  {
    v8 = v7 >> 4;
    if (v8 <= 1)
    {
      v8 = 1;
    }

    while (*(*v6 + 8) != a2)
    {
      v6 += 16;
      if (!--v8)
      {
        goto LABEL_6;
      }
    }

    v9 = *(*v6 + 16);
  }

  else
  {
LABEL_6:
    v9 = 0;
  }

  pthread_mutex_unlock((a1 + 3));
  thread_info_outCnt = 6;
  return thread_info(v9, 4u, a3, &thread_info_outCnt) == 0;
}

uint64_t sub_10004FE44(uint64_t *a1, uint64_t a2)
{
  pthread_mutex_lock((a1 + 3));
  v4 = *a1;
  v5 = a1[1] - *a1;
  if (v5)
  {
    v6 = v5 >> 4;
    if (v6 <= 1)
    {
      v6 = 1;
    }

    while (*(*v4 + 8) != a2)
    {
      v4 += 16;
      if (!--v6)
      {
        goto LABEL_6;
      }
    }

    v7 = *(*v4 + 16);
  }

  else
  {
LABEL_6:
    v7 = 0;
  }

  pthread_mutex_unlock((a1 + 3));
  return v7;
}

char *sub_10004FEBC(uint64_t a1, uint64_t a2)
{
  pthread_mutex_lock((a1 + 24));
  v4 = *(a1 + 8) - *a1;
  if (v4)
  {
    v5 = v4 >> 4;
    if (v5 <= 1)
    {
      v5 = 1;
    }

    v6 = (*a1 + 8);
    while (1)
    {
      v7 = *(v6 - 1);
      if (*(v7 + 8) == a2)
      {
        break;
      }

      v6 += 2;
      if (!--v5)
      {
        goto LABEL_7;
      }
    }

    v9 = *v6;
    if (*v6)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    pthread_mutex_unlock((a1 + 24));
    result = sub_10004E3AC(v7);
    if (v9)
    {
      if (!atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v10 = result;
        (v9->__on_zero_shared)(v9);
        std::__shared_weak_count::__release_weak(v9);
        return v10;
      }
    }
  }

  else
  {
LABEL_7:
    pthread_mutex_unlock((a1 + 24));
    return 0;
  }

  return result;
}

uint64_t sub_10004FFA8(uint64_t *a1, int a2)
{
  pthread_mutex_lock((a1 + 3));
  v4 = *a1;
  v5 = a1[1] - *a1;
  if (v5)
  {
    v6 = v5 >> 4;
    if (v6 <= 1)
    {
      v6 = 1;
    }

    while (*(*v4 + 16) != a2)
    {
      v4 += 16;
      if (!--v6)
      {
        goto LABEL_6;
      }
    }

    v7 = *(*v4 + 8);
  }

  else
  {
LABEL_6:
    v7 = 0;
  }

  pthread_mutex_unlock((a1 + 3));
  return v7;
}

uint64_t sub_100050020(uint64_t a1, uint64_t a2)
{
  pthread_mutex_lock((a1 + 24));
  v4 = *(a1 + 8) - *a1;
  if (v4)
  {
    v5 = v4 >> 4;
    if (v5 <= 1)
    {
      v5 = 1;
    }

    v6 = (*a1 + 8);
    while (1)
    {
      v7 = *(v6 - 1);
      if (*(v7 + 8) == a2)
      {
        break;
      }

      v6 += 2;
      if (!--v5)
      {
        goto LABEL_7;
      }
    }

    v9 = *v6;
    if (*v6)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    pthread_mutex_unlock((a1 + 24));
    result = sub_10004EAF8(v7);
    if (v9)
    {
      if (!atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v10 = result;
        (v9->__on_zero_shared)(v9);
        std::__shared_weak_count::__release_weak(v9);
        return v10;
      }
    }
  }

  else
  {
LABEL_7:
    pthread_mutex_unlock((a1 + 24));
    return 0;
  }

  return result;
}

uint64_t sub_10005012C(uint64_t a1, uint64_t a2)
{
  pthread_mutex_lock((a1 + 24));
  v4 = *(a1 + 8) - *a1;
  if (v4)
  {
    v5 = v4 >> 4;
    if (v5 <= 1)
    {
      v5 = 1;
    }

    v6 = (*a1 + 8);
    while (1)
    {
      v7 = *(v6 - 1);
      if (*(v7 + 8) == a2)
      {
        break;
      }

      v6 += 2;
      if (!--v5)
      {
        goto LABEL_7;
      }
    }

    v9 = *v6;
    if (*v6)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    pthread_mutex_unlock((a1 + 24));
    result = sub_10004EB20(v7);
    if (v9)
    {
      if (!atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v10 = result;
        (v9->__on_zero_shared)(v9);
        std::__shared_weak_count::__release_weak(v9);
        return v10;
      }
    }
  }

  else
  {
LABEL_7:
    pthread_mutex_unlock((a1 + 24));
    return 0;
  }

  return result;
}

uint64_t sub_100050238(uint64_t a1, uint64_t a2)
{
  pthread_mutex_lock((a1 + 24));
  v4 = *(a1 + 8) - *a1;
  if (v4)
  {
    v5 = v4 >> 4;
    if (v5 <= 1)
    {
      v5 = 1;
    }

    v6 = (*a1 + 8);
    while (1)
    {
      v7 = *(v6 - 1);
      if (*(v7 + 8) == a2)
      {
        break;
      }

      v6 += 2;
      if (!--v5)
      {
        goto LABEL_7;
      }
    }

    v9 = *v6;
    if (*v6)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    pthread_mutex_unlock((a1 + 24));
    result = sub_10004EB48(v7);
    if (v9)
    {
      if (!atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v10 = result;
        (v9->__on_zero_shared)(v9);
        std::__shared_weak_count::__release_weak(v9);
        return v10;
      }
    }
  }

  else
  {
LABEL_7:
    pthread_mutex_unlock((a1 + 24));
    return 0;
  }

  return result;
}

uint64_t sub_10005033C(uint64_t a1, uint64_t a2)
{
  pthread_mutex_lock((a1 + 24));
  v4 = *(a1 + 8) - *a1;
  if (v4)
  {
    v5 = v4 >> 4;
    if (v5 <= 1)
    {
      v5 = 1;
    }

    v6 = (*a1 + 8);
    while (1)
    {
      v7 = *(v6 - 1);
      if (*(v7 + 8) == a2)
      {
        break;
      }

      v6 += 2;
      if (!--v5)
      {
        goto LABEL_7;
      }
    }

    v9 = *v6;
    if (*v6)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    pthread_mutex_unlock((a1 + 24));
    result = sub_10004EB70(v7);
    if (v9)
    {
      if (!atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v10 = result;
        (v9->__on_zero_shared)(v9);
        std::__shared_weak_count::__release_weak(v9);
        return v10;
      }
    }
  }

  else
  {
LABEL_7:
    pthread_mutex_unlock((a1 + 24));
    return 0;
  }

  return result;
}

uint64_t sub_100050440(uint64_t a1, uint64_t a2)
{
  pthread_mutex_lock((a1 + 24));
  v4 = *(a1 + 8) - *a1;
  if (v4)
  {
    v5 = v4 >> 4;
    if (v5 <= 1)
    {
      v5 = 1;
    }

    v6 = (*a1 + 8);
    while (1)
    {
      v7 = *(v6 - 1);
      if (*(v7 + 8) == a2)
      {
        break;
      }

      v6 += 2;
      if (!--v5)
      {
        goto LABEL_7;
      }
    }

    v9 = *v6;
    if (*v6)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    pthread_mutex_unlock((a1 + 24));
    result = sub_10004EB98(v7);
    if (v9)
    {
      if (!atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v10 = result;
        (v9->__on_zero_shared)(v9);
        std::__shared_weak_count::__release_weak(v9);
        return v10;
      }
    }
  }

  else
  {
LABEL_7:
    pthread_mutex_unlock((a1 + 24));
    return 0;
  }

  return result;
}

uint64_t sub_10005052C(uint64_t a1, uint64_t a2)
{
  pthread_mutex_lock((a1 + 24));
  v4 = *(a1 + 8) - *a1;
  if (v4)
  {
    v5 = v4 >> 4;
    if (v5 <= 1)
    {
      v5 = 1;
    }

    v6 = (*a1 + 8);
    while (1)
    {
      v7 = *(v6 - 1);
      if (*(v7 + 8) == a2)
      {
        break;
      }

      v6 += 2;
      if (!--v5)
      {
        goto LABEL_7;
      }
    }

    v9 = *v6;
    if (*v6)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    pthread_mutex_unlock((a1 + 24));
    result = sub_10004EBC0(v7);
    if (v9)
    {
      if (!atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v10 = result;
        (v9->__on_zero_shared)(v9);
        std::__shared_weak_count::__release_weak(v9);
        return v10;
      }
    }
  }

  else
  {
LABEL_7:
    pthread_mutex_unlock((a1 + 24));
    return 0;
  }

  return result;
}

uint64_t sub_100050620(uint64_t a1)
{
  pthread_mutex_lock((a1 + 24));
  v2 = (*(a1 + 8) - *a1) >> 4;
  pthread_mutex_unlock((a1 + 24));
  return v2;
}

uint64_t sub_100050660(uint64_t a1, unint64_t a2)
{
  pthread_mutex_lock((a1 + 24));
  if (a2 >= (*(a1 + 8) - *a1) >> 4)
  {
    v4 = 0;
  }

  else
  {
    v4 = *(*(*a1 + 16 * a2) + 8);
  }

  pthread_mutex_unlock((a1 + 24));
  return v4;
}

uint64_t sub_1000506BC(uint64_t *a1)
{
  v4 = 0;
  v5 = 0;
  sub_100050758(a1, &v4);
  if (v4)
  {
    result = *(v4 + 8);
    v2 = v5;
    if (!v5)
    {
      return result;
    }
  }

  else
  {
    result = 0;
    v2 = v5;
    if (!v5)
    {
      return result;
    }
  }

  if (!atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v3 = result;
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
    return v3;
  }

  return result;
}

uint64_t sub_100050758(uint64_t *a1, void *a2)
{
  pthread_mutex_lock((a1 + 3));
  if (!a1[11])
  {
    v8 = *a1;
    v9 = a1[1];
    v10 = v9 - *a1;
    if (v9 != *a1)
    {
      v11 = 0;
      v12 = v10 >> 4;
      v13 = 1;
      while (1)
      {
        v14 = *(v8 + 16 * v11);
        if (v14[36])
        {
          if (v14[37] && v14[38])
          {
            break;
          }
        }

        v11 = v13++;
        if (v12 <= v11)
        {
          goto LABEL_2;
        }
      }

      v15 = *(v8 + 16 * v11 + 8);
      if (v15)
      {
        atomic_fetch_add_explicit((v15 + 8), 1uLL, memory_order_relaxed);
      }

      v16 = a1[12];
      a1[11] = v14;
      a1[12] = v15;
      if (v16 && !atomic_fetch_add(&v16->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v16->__on_zero_shared)(v16);
        std::__shared_weak_count::__release_weak(v16);
      }
    }
  }

LABEL_2:
  v5 = a1[11];
  v4 = a1[12];
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  v6 = a2[1];
  *a2 = v5;
  a2[1] = v4;
  if (v6 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v6->__on_zero_shared)(v6);
    std::__shared_weak_count::__release_weak(v6);
  }

  return pthread_mutex_unlock((a1 + 3));
}

uint64_t sub_1000508BC(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 4);
  pthread_mutex_lock((a1 + 24));
  v5 = *(a1 + 8) - *a1;
  if (v5)
  {
    v6 = v5 >> 4;
    if (v6 <= 1)
    {
      v6 = 1;
    }

    v7 = (*a1 + 8);
    while (1)
    {
      v8 = *(v7 - 1);
      if (*(v8 + 16) == v4)
      {
        break;
      }

      v7 += 2;
      if (!--v6)
      {
        goto LABEL_7;
      }
    }

    v10 = *v7;
    if (!*v7)
    {
      pthread_mutex_unlock((a1 + 24));
      sub_10004EA00(v8, a2);
      return 1;
    }

    v9 = 1;
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
    pthread_mutex_unlock((a1 + 24));
    sub_10004EA00(v8, a2);
    if (!atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v10->__on_zero_shared)(v10);
      std::__shared_weak_count::__release_weak(v10);
      return 1;
    }
  }

  else
  {
LABEL_7:
    pthread_mutex_unlock((a1 + 24));
    return 0;
  }

  return v9;
}

uint64_t sub_1000509C8(uint64_t *a1)
{
  pthread_mutex_lock((a1 + 3));
  v2 = *a1;
  v3 = a1[1];
  if (v3 != *a1)
  {
    do
    {
      v4 = *(v3 - 8);
      if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v4->__on_zero_shared)(v4);
        std::__shared_weak_count::__release_weak(v4);
      }

      v3 -= 16;
    }

    while (v3 != v2);
  }

  a1[1] = v2;

  return pthread_mutex_unlock((a1 + 3));
}

unint64_t sub_100050A80(uint64_t *a1, int *a2, int a3)
{
  if (sub_100010524(4))
  {
    sub_100010668("MachThreadList::UpdateThreadList (pid = %4.4x, update = %u) process stop count = %u", *a2, a3, a2[111]);
  }

  pthread_mutex_lock((a1 + 3));
  if (!a2[111])
  {
    __p[0] = 0xE00000001;
    v6 = *a2;
    LODWORD(__p[1]) = 1;
    HIDWORD(__p[1]) = v6;
    v36[0] = 648;
    if (!sysctl(__p, 4u, v41, v36, 0, 0) && v36[0] && (v45 & 4) != 0)
    {
      *(a1 + 104) = 1;
    }

    if (a1[13])
    {
      v7 = 16777228;
    }

    else if (sub_100040AE4(a2) == 33554444)
    {
      v7 = 33554444;
    }

    else
    {
      v7 = 12;
    }

    sub_100008B88(v7, 0);
  }

  v9 = *a1;
  v8 = a1[1];
  if (*a1 == v8 || a3 != 0)
  {
    act_list = 0;
    act_listCnt = 0;
    v11 = a2[30];
    v12 = 1;
    v41[0] = task_threads(v11, &act_list, &act_listCnt);
    v41[1] = 1;
    v43 = 0;
    v44 = 0;
    v42 = 0;
    if (sub_1000104C8(4) || v41[0])
    {
      sub_1000103F8(v41, "::task_threads(task = 0x%4.4x, thread_list => %p, thread_list_count => %u)", v13, v14, v15, v16, v17, v18, v11);
      v12 = v41[0] == 0;
    }

    if (v12 && act_listCnt)
    {
      v19 = 0;
      __p[0] = 0;
      __p[1] = 0;
      v40 = 0;
      do
      {
        v20 = sub_10004EDFC(act_list[v19]);
        pthread_mutex_lock((a1 + 3));
        v36[0] = 0;
        v36[1] = 0;
        v21 = a1[1] - *a1;
        if (v21)
        {
          v22 = v21 >> 4;
          if (v22 <= 1)
          {
            v22 = 1;
          }

          v23 = (*a1 + 8);
          while (1)
          {
            v24 = *(v23 - 1);
            if (*(v24 + 8) == v20)
            {
              break;
            }

            v23 += 2;
            if (!--v22)
            {
              goto LABEL_35;
            }
          }

          v25 = *v23;
          if (*v23)
          {
            atomic_fetch_add_explicit((v25 + 8), 1uLL, memory_order_relaxed);
          }

          v36[0] = v24;
          v36[1] = v25;
        }

LABEL_35:
        pthread_mutex_unlock((a1 + 3));
        if (!v36[0])
        {
          operator new();
        }

        sub_100050F34(__p, v36);
        v26 = v36[1];
        if (v36[1] && !atomic_fetch_add((v36[1] + 8), 0xFFFFFFFFFFFFFFFFLL))
        {
          (v26->__on_zero_shared)(v26);
          std::__shared_weak_count::__release_weak(v26);
        }

        ++v19;
      }

      while (v19 < act_listCnt);
      v27 = v40;
      v28 = *a1;
      *a1 = *__p;
      *__p = v28;
      v29 = a1[2];
      a1[2] = v27;
      v40 = v29;
      v30 = a1[12];
      a1[11] = 0;
      a1[12] = 0;
      if (v30 && !atomic_fetch_add(&v30->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v30->__on_zero_shared)(v30);
        std::__shared_weak_count::__release_weak(v30);
      }

      vm_deallocate(mach_task_self_, act_list, 4 * act_listCnt);
      v31 = __p[0];
      if (__p[0])
      {
        v32 = __p[1];
        v33 = __p[0];
        if (__p[1] != __p[0])
        {
          do
          {
            v34 = *(v32 - 1);
            if (v34 && !atomic_fetch_add(&v34->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              (v34->__on_zero_shared)(v34);
              std::__shared_weak_count::__release_weak(v34);
            }

            v32 -= 16;
          }

          while (v32 != v31);
          v33 = __p[0];
        }

        __p[1] = v31;
        operator delete(v33);
      }
    }

    if (SHIBYTE(v44) < 0)
    {
      operator delete(v42);
    }

    v9 = *a1;
    v8 = a1[1];
  }

  pthread_mutex_unlock((a1 + 3));
  return (v8 - v9) >> 4;
}

void sub_100050F34(uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v3 >= v4)
  {
    v7 = (v3 - *a1) >> 4;
    v8 = v7 + 1;
    if ((v7 + 1) >> 60)
    {
      sub_100008888();
    }

    v9 = v4 - *a1;
    if (v9 >> 3 > v8)
    {
      v8 = v9 >> 3;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF0)
    {
      v10 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      if (!(v10 >> 60))
      {
        operator new();
      }

      sub_100008888();
    }

    v11 = 16 * v7;
    v12 = *a2;
    *(16 * v7) = *a2;
    if (*(&v12 + 1))
    {
      atomic_fetch_add_explicit((*(&v12 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    v6 = (v11 + 16);
    v13 = *a1;
    v14 = *(a1 + 8) - *a1;
    v15 = v11 - v14;
    memcpy((v11 - v14), *a1, v14);
    *a1 = v15;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v13)
    {
      operator delete(v13);
    }
  }

  else
  {
    v5 = *(a2 + 1);
    *v3 = *a2;
    v3[1] = v5;
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
    }

    v6 = v3 + 2;
  }

  *(a1 + 8) = v6;
}

uint64_t sub_10005105C(uint64_t a1)
{
  pthread_mutex_lock((a1 + 24));
  v2 = *(a1 + 8);
  v3 = v2 - *a1;
  if (v2 != *a1)
  {
    v4 = 0;
    v5 = 0;
    v6 = v3 >> 4;
    do
    {
      sub_10004E524(*(*a1 + 16 * v4), v5++);
      v4 = v5;
    }

    while (v6 > v5);
  }

  return pthread_mutex_unlock((a1 + 24));
}

uint64_t sub_1000510DC(uint64_t a1, int *a2, uint64_t *a3)
{
  pthread_mutex_lock((a1 + 24));
  if (a3[1] == *a3 || (v6 = sub_100010F74(a3, 6), sub_100010F74(a3, 5) + v6 != 1))
  {
    sub_100050A80(a1, a2, 1);
    v10 = 0;
  }

  else
  {
    v7 = a3[1] - *a3;
    if (v7)
    {
      v8 = 0xAAAAAAAAAAAAAAABLL * (v7 >> 3);
      if (v8 <= 1)
      {
        v8 = 1;
      }

      v9 = (*a3 + 8);
      while ((*v9 - 5) > 1)
      {
        v9 += 6;
        if (!--v8)
        {
          goto LABEL_9;
        }
      }

      v10 = *(v9 - 1);
    }

    else
    {
LABEL_9:
      v10 = 0;
    }

    sub_100050A80(a1, a2, 1);
  }

  v11 = *(a1 + 8);
  v12 = v11 - *a1;
  if (v11 != *a1)
  {
    v13 = 0;
    v14 = 0;
    v15 = v12 >> 4;
    do
    {
      v16 = *(*a1 + 16 * v13);
      v17 = sub_100010EF4(a3, *(v16 + 8), 1);
      if (!v17)
      {
        sub_100059414();
      }

      sub_10004E644(v16, v17, v10 == *(v16 + 8));
      v13 = ++v14;
    }

    while (v15 > v14);
  }

  return pthread_mutex_unlock((a1 + 24));
}

unint64_t sub_1000513E4(uint64_t a1, int *a2)
{
  pthread_mutex_lock((a1 + 24));
  v4 = sub_100050A80(a1, a2, 1);
  v5 = v4;
  if (v4)
  {
    v6 = 0;
    v7 = 16 * v4;
    do
    {
      sub_10004E8F8(*(*a1 + v6));
      v6 += 16;
    }

    while (v7 != v6);
  }

  pthread_mutex_unlock((a1 + 24));
  return v5;
}

BOOL sub_100051460(uint64_t a1, _BYTE *a2)
{
  pthread_mutex_lock((a1 + 24));
  v4 = *(a1 + 8);
  v5 = v4 - *a1;
  if (v4 == *a1)
  {
    v9 = 0;
  }

  else
  {
    v6 = 0;
    v7 = v5 >> 4;
    v8 = 1;
    do
    {
      v9 = sub_10004E794(*(*a1 + 16 * v6), a2);
      if (v9)
      {
        break;
      }

      v6 = v8++;
    }

    while (v7 > v6);
  }

  pthread_mutex_unlock((a1 + 24));
  return v9;
}

uint64_t sub_1000514F4(uint64_t a1)
{
  pthread_mutex_lock((a1 + 24));

  return pthread_mutex_unlock((a1 + 24));
}

uint64_t sub_100051530(uint64_t a1, uint64_t a2, int a3)
{
  if (!a2)
  {
    return 0xFFFFFFFFLL;
  }

  pthread_mutex_lock((a1 + 24));
  v7 = *a1;
  v6 = *(a1 + 8);
  v8 = (v6 - *a1) >> 4;
  if (v6 == *a1)
  {
    v10 = 0xFFFFFFFFLL;
    goto LABEL_26;
  }

  if (a3 <= 1)
  {
    if (a3)
    {
      v9 = 0xFFFFFFFFLL;
      if (a3 != 1)
      {
        goto LABEL_34;
      }

      v10 = sub_10004ED18(*v7, a2);
      goto LABEL_15;
    }

    v10 = sub_10004EC34(*v7, a2, 1);
LABEL_14:
    if (v10 == -1)
    {
      goto LABEL_33;
    }

    goto LABEL_15;
  }

  if (a3 == 2)
  {
    v10 = sub_10004EBE8(*v7, a2, 1);
    goto LABEL_14;
  }

  v9 = 0xFFFFFFFFLL;
  if (a3 != 3)
  {
    goto LABEL_34;
  }

  v10 = sub_10004ECD8(*v7, a2);
LABEL_15:
  if (v8 < 2)
  {
LABEL_26:
    v9 = v10;
    if (v6 != v7)
    {
      v13 = 0;
      v14 = 1;
      do
      {
        sub_10004ECB0(*(*a1 + 16 * v13));
        v13 = v14++;
      }

      while (v8 > v13);
    }

    goto LABEL_34;
  }

  v12 = 1;
  while (a3 <= 1)
  {
    if (a3)
    {
      v10 = sub_10004ED18(*(*a1 + 16 * v12), a2);
    }

    else
    {
      v10 = sub_10004EC34(*(*a1 + 16 * v12), a2, 0);
      if (v10 == -1)
      {
        goto LABEL_30;
      }
    }

LABEL_25:
    v12 = (v12 + 1);
    if (v8 <= v12)
    {
      goto LABEL_26;
    }
  }

  if (a3 != 2)
  {
    v10 = sub_10004ECD8(*(*a1 + 16 * v12), a2);
    goto LABEL_25;
  }

  v10 = sub_10004EBE8(*(*a1 + 16 * v12), a2, 0);
  if (v10 != -1)
  {
    goto LABEL_25;
  }

LABEL_30:
  if (v12)
  {
    v15 = 0;
    do
    {
      sub_10004EC88(*(*a1 + v15));
      v15 += 16;
    }

    while (16 * v12 != v15);
  }

LABEL_33:
  v9 = 0xFFFFFFFFLL;
LABEL_34:
  pthread_mutex_unlock((a1 + 24));
  return v9;
}

uint64_t sub_1000517A0(uint64_t a1)
{
  pthread_mutex_lock((a1 + 24));
  if (*(a1 + 8) == *a1)
  {
    v2 = 0;
  }

  else
  {
    v2 = sub_10004ED58(**a1);
  }

  pthread_mutex_unlock((a1 + 24));
  return v2;
}

uint64_t sub_1000517F4(uint64_t a1, int a2)
{
  pthread_mutex_lock((a1 + 24));
  v4 = *(a1 + 8) - *a1;
  if (v4)
  {
    v5 = 0;
    v6 = 0;
    v7 = v4 >> 4;
    do
    {
      v8 = *(*a1 + 16 * v5);
      if (*(v8 + 152) == 5 && (v10 = v8 + 160, v9 = *(v8 + 160), *(v10 + 8) - v9 == 16) && *v9 == 65539)
      {
        if (*(v9 + 8) == a2)
        {
          goto LABEL_11;
        }
      }

      else if (!a2)
      {
        goto LABEL_11;
      }

      v5 = (v6 + 1);
      v6 = v5;
    }

    while (v7 > v5);
  }

  v6 = 0xFFFFFFFFLL;
LABEL_11:
  pthread_mutex_unlock((a1 + 24));
  return v6;
}

void sub_1000518D4(std::__shared_weak_count *a1)
{
  a1->__vftable = off_10006D6D0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

double sub_100051934(uint64_t a1)
{
  *a1 = -1;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  return result;
}

uint64_t sub_10005194C(uint64_t result)
{
  if (*(result + 39) < 0)
  {
    v1 = result;
    operator delete(*(result + 16));
    return v1;
  }

  return result;
}

uint64_t sub_10005198C(uint64_t a1, task_name_t target_task)
{
  result = *a1;
  if (result != -1)
  {
    return result;
  }

  if (target_task)
  {
    task_info_outCnt = 93;
    v4 = task_info(target_task, 0x16u, task_info_out, &task_info_outCnt);
    v5 = sub_100010524(0x2000);
    if (!v4)
    {
      if (v5)
      {
        sub_100010668("MachVMMemory::PageSize task_info returned page size of 0x%x", v9);
      }

      result = v9;
      *a1 = v9;
      return result;
    }

    if (v5)
    {
      sub_100010668("MachVMMemory::PageSize task_info call failed to get page size, TASK_VM_INFO %d, TASK_VM_INFO_COUNT %d, kern return %d", 22, 93, v4);
    }
  }

  v6 = mach_host_self();
  v7 = host_page_size(v6, a1);
  *(a1 + 8) = v7;
  *(a1 + 12) = 1;
  if (*(a1 + 39) < 0)
  {
    **(a1 + 16) = 0;
    *(a1 + 24) = 0;
    if (*(a1 + 8))
    {
      goto LABEL_8;
    }
  }

  else
  {
    *(a1 + 16) = 0;
    *(a1 + 39) = 0;
    if (v7)
    {
LABEL_8:
      result = 0;
      *a1 = 0;
      return result;
    }
  }

  return *a1;
}

void sub_100051A88(vm_map_read_t a1@<W0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v19 = a2;
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  __chkstk_darwin();
  v7 = &v19 - v6;
  v9 = v8;
  v10 = v8 + 4095;
  if (v10 >= 0x1000)
  {
    v11 = 0;
    v12 = v5;
    v13 = v10 >> 12;
    do
    {
      v14 = v9 - (v11 << 12);
      if (v14 >= v12)
      {
        v14 = v12;
      }

      dispositions_count = v14;
      v15 = v19 + vm_page_size * (v11 << 12);
      if (mach_vm_page_range_query(a1, v15, vm_page_size * v14, v7, &dispositions_count))
      {
        break;
      }

      v16 = dispositions_count;
      if (dispositions_count)
      {
        v17 = 0;
        v18 = vm_page_size;
        do
        {
          v20 = v15 + v18 * v17;
          if ((*&v7[4 * v17] & 8) != 0)
          {
            sub_10002E30C(a3, &v20);
            v18 = vm_page_size;
            v16 = dispositions_count;
          }

          ++v17;
        }

        while (v17 < v16);
      }

      ++v11;
    }

    while (v11 < v13);
  }
}

uint64_t sub_100051C00(uint64_t a1, vm_map_read_t a2, unint64_t a3, uint64_t a4)
{
  sub_10005233C(v16, a2);
  if (sub_10005273C(v16, a3))
  {
    *a4 = v18;
    *(a4 + 16) = sub_100052934(v16);
    sub_100051A88(a2, v18, &v14);
    v7 = *(a4 + 24);
    if (v7)
    {
      *(a4 + 32) = v7;
      operator delete(v7);
    }

    *(a4 + 24) = v14;
    *(a4 + 40) = v15;
    sub_100052970(v16, &v14);
    v8 = *(a4 + 48);
    if (v8)
    {
      v9 = *(a4 + 56);
      v10 = *(a4 + 48);
      if (v9 != v8)
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

        while (v9 != v8);
        v10 = *(a4 + 48);
      }

      *(a4 + 56) = v8;
      operator delete(v10);
    }

    *(a4 + 48) = v14;
    *(a4 + 64) = v15;
  }

  else
  {
    *a4 = a3;
    if (v17 || (v12 = v18 - a3, v18 <= a3))
    {
      v12 = ~a3;
    }

    *(a4 + 8) = v12;
    *(a4 + 16) = 0;
  }

  sub_10005237C(v16);
  return 1;
}

uint64_t sub_100051D2C(int a1, __int16 a2, task_name_t a3, int a4, int a5, int a6, host_info64_t host_info64_out, void *a8, void *a9, void *a10, void *a11)
{
  if ((a2 & 0x20) != 0)
  {
    if (byte_10047DFA8 != 1)
    {
      v17[0] = 8;
      v13 = host_info64_out;
      v14 = a8;
      sysctlbyname("hw.memsize", &qword_10047DFA0, v17, 0, 0);
      a8 = v14;
      host_info64_out = v13;
      byte_10047DFA8 = 1;
    }

    *a8 = qword_10047DFA0;
  }

  if ((a2 & 0x40) == 0)
  {
    goto LABEL_9;
  }

  if ((atomic_load_explicit(&qword_10047DFB8, memory_order_acquire) & 1) == 0)
  {
    v16 = host_info64_out;
    sub_100059440();
    host_info64_out = v16;
  }

  host_info64_outCnt = 40;
  host_statistics64(dword_10047DFB0, 4, host_info64_out, &host_info64_outCnt);
  task_info_outCnt = 93;
  if (task_info(a3, 0x17u, v17, &task_info_outCnt))
  {
LABEL_9:
    if ((a2 & 0x8000) == 0)
    {
      return 1;
    }

    goto LABEL_10;
  }

  if ((a2 & 0x100) != 0)
  {
    *a9 = v17[15] + v17[6] - v17[12];
  }

  *a10 = v17[18];
  if (a2 < 0)
  {
LABEL_10:
    v17[0] = 0;
    v17[1] = 0;
    if (!memorystatus_control())
    {
      *a11 = SLODWORD(v17[0]);
    }
  }

  return 1;
}

unint64_t sub_100051EAC(uint64_t a1, task_name_t target_task, mach_vm_address_t a3, char *a4, unint64_t a5)
{
  v5 = 0;
  if (a4 && a5)
  {
    v7 = a4;
    v5 = 0;
    v30 = target_task;
    do
    {
      v13 = a5 - v5;
      v14 = sub_10005198C(a1, target_task);
      if (v14 && v14 + a3 / v14 * v14 - a3 < v13)
      {
        v13 = v14 + a3 / v14 * v14 - a3;
      }

      LODWORD(__n) = 0;
      __src = 0;
      *(a1 + 8) = mach_vm_read(target_task, a3, v13, &__src, &__n);
      *(a1 + 12) = 1;
      if (*(a1 + 39) < 0)
      {
        **(a1 + 16) = 0;
        *(a1 + 24) = 0;
      }

      else
      {
        *(a1 + 16) = 0;
        *(a1 + 39) = 0;
      }

      if (sub_1000104C8(32))
      {
        sub_1000103F8((a1 + 8), "::mach_vm_read(task = 0x%4.4x, addr = 0x%8.8llx, size = %llu, data => %8.8p, dataCnt => %i)", v15, v16, v17, v18, v19, v20, target_task);
      }

      if (*(a1 + 8))
      {
        break;
      }

      v21 = __n;
      if (v13 != __n)
      {
        v22 = sub_1000104C8(32);
        v21 = __n;
        if (v22)
        {
          sub_1000103F8((a1 + 8), "::mach_vm_read(task = 0x%4.4x, addr = 0x%8.8llx, size = %llu, data => %8.8p, dataCnt=>%i) only read %u of %llu bytes", v23, v24, v25, v26, v27, v28, v30);
          v21 = __n;
        }
      }

      v11 = __src;
      v12 = v21;
      memcpy(v7, __src, v21);
      vm_deallocate(mach_task_self_, v11, v12);
      v5 += __n;
      a3 += __n;
      v7 += __n;
    }

    while (v5 < a5);
  }

  return v5;
}

unint64_t sub_100052064(uint64_t a1, task_name_t a2, mach_vm_address_t a3, vm_offset_t a4, unint64_t a5)
{
  sub_10005233C(v16, a2);
  v10 = 0;
  if (a5)
  {
    v11 = a3;
    while (sub_10005273C(v16, v11))
    {
      if (v17 > v11)
      {
        goto LABEL_18;
      }

      if (v18 + v17 <= v11)
      {
        goto LABEL_18;
      }

      v12 = v18 + v17 - v11;
      if (!v12)
      {
        goto LABEL_18;
      }

      if (a5 - v10 >= v12)
      {
        v13 = v18 + v17 - v11;
      }

      else
      {
        v13 = a5 - v10;
      }

      if (!sub_10005253C(v16, v11, v13, 3))
      {
        if (sub_100010524(256))
        {
          sub_100010668("Failed to set read/write protections on region for address: [0x%8.8llx-0x%8.8llx)");
        }

        goto LABEL_18;
      }

      v14 = sub_10005219C(a1, a2, v11, a4, v13);
      if (v14)
      {
        v10 += v14;
        v11 += v14;
        a4 += v14;
        if (v10 < a5)
        {
          continue;
        }
      }

      goto LABEL_18;
    }

    if (sub_100010524(256))
    {
      sub_100010668("Failed to get region for address: 0x%8.8llx");
    }
  }

LABEL_18:
  sub_10005237C(v16);
  return v10;
}

unint64_t sub_10005219C(uint64_t a1, task_name_t target_task, mach_vm_address_t a3, vm_offset_t a4, unint64_t a5)
{
  v5 = 0;
  if (a4 && a5)
  {
    v7 = a4;
    v5 = 0;
    v11 = target_task;
    do
    {
      v12 = a5 - v5;
      v13 = sub_10005198C(a1, target_task);
      if (v13 && v13 + a3 / v13 * v13 - a3 < v12)
      {
        v12 = v13 + a3 / v13 * v13 - a3;
      }

      *(a1 + 8) = mach_vm_write(target_task, a3, v7, v12);
      *(a1 + 12) = 1;
      if (*(a1 + 39) < 0)
      {
        **(a1 + 16) = 0;
        *(a1 + 24) = 0;
      }

      else
      {
        *(a1 + 16) = 0;
        *(a1 + 39) = 0;
      }

      if (sub_1000104C8(32) || *(a1 + 8))
      {
        sub_1000103F8((a1 + 8), "::mach_vm_write(task = 0x%4.4x, addr = 0x%8.8llx, data = %8.8p, dataCnt = %u)", v14, v15, v16, v17, v18, v19, target_task);
      }

      value = 6;
      *(a1 + 8) = vm_machine_attribute(target_task, a3, v12, 1u, &value);
      *(a1 + 12) = 1;
      if (*(a1 + 39) < 0)
      {
        **(a1 + 16) = 0;
        *(a1 + 24) = 0;
      }

      else
      {
        *(a1 + 16) = 0;
        *(a1 + 39) = 0;
      }

      if (sub_1000104C8(32) || *(a1 + 8))
      {
        sub_1000103F8((a1 + 8), "::vm_machine_attribute(task = 0x%4.4x, addr = 0x%8.8llx, size = %u, attr = MATTR_CACHE, mattr_value => MATTR_VAL_CACHE_FLUSH)", v20, v21, v22, v23, v24, v25, v11);
        if (*(a1 + 8))
        {
          break;
        }
      }

      v5 += v12;
      a3 += v12;
      v7 += v12;
    }

    while (v5 < a5);
  }

  return v5;
}

double sub_10005233C(uint64_t a1, int a2)
{
  *a1 = a2;
  *(a1 + 8) = -1;
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = xmmword_100067090;
  *(a1 + 64) = -1;
  *(a1 + 116) = 0;
  *(a1 + 120) = xmmword_100067090;
  *(a1 + 68) = 0u;
  *(a1 + 84) = 0u;
  *(a1 + 100) = 0u;
  return result;
}

uint64_t sub_10005237C(uint64_t a1)
{
  sub_100052434(a1);
  *(a1 + 8) = -1;
  *(a1 + 16) = 0;
  if (*(a1 + 47) < 0)
  {
    **(a1 + 24) = 0;
    *(a1 + 32) = 0;
    v2 = *(a1 + 47);
    *(a1 + 48) = xmmword_100067090;
    *(a1 + 64) = -1;
    *(a1 + 68) = 0u;
    *(a1 + 84) = 0u;
    *(a1 + 100) = 0u;
    *(a1 + 116) = 0;
    *(a1 + 120) = xmmword_100067090;
    if (v2 < 0)
    {
      operator delete(*(a1 + 24));
    }
  }

  else
  {
    *(a1 + 24) = 0;
    *(a1 + 47) = 0;
    *(a1 + 48) = xmmword_100067090;
    *(a1 + 64) = -1;
    *(a1 + 68) = 0u;
    *(a1 + 84) = 0u;
    *(a1 + 100) = 0u;
    *(a1 + 116) = 0;
    *(a1 + 120) = xmmword_100067090;
  }

  return a1;
}

uint64_t sub_100052434(uint64_t a1)
{
  v2 = *(a1 + 68);
  if (*(a1 + 116) == v2 || (v3 = *(a1 + 128)) == 0)
  {
    *(a1 + 16) = 0;
    if (*(a1 + 47) < 0)
    {
      **(a1 + 24) = 0;
      *(a1 + 32) = 0;
    }

    else
    {
      *(a1 + 24) = 0;
      *(a1 + 47) = 0;
    }
  }

  else
  {
    *(a1 + 16) = mach_vm_protect(*a1, *(a1 + 120), v3, 0, v2);
    *(a1 + 20) = 1;
    if (*(a1 + 47) < 0)
    {
      **(a1 + 24) = 0;
      *(a1 + 32) = 0;
    }

    else
    {
      *(a1 + 24) = 0;
      *(a1 + 47) = 0;
    }

    if (sub_1000104C8(256) || *(a1 + 16))
    {
      v13 = *(a1 + 68);
      v11 = *(a1 + 120);
      v12 = *(a1 + 128);
      sub_1000103F8((a1 + 16), "::mach_vm_protect(task = 0x%4.4x, addr = 0x%8.8llx, size = %llu, set_max = %i, prot = %u)", v4, v5, v6, v7, v8, v9, *a1);
      if (*(a1 + 16))
      {
        return 0;
      }
    }

    *(a1 + 120) = xmmword_100067090;
    *(a1 + 116) = *(a1 + 68);
  }

  return 1;
}

BOOL sub_10005253C(_DWORD *a1, mach_vm_address_t a2, mach_vm_size_t a3, vm_prot_t new_protection)
{
  v4 = *(a1 + 6);
  if (v4 > a2)
  {
    return 0;
  }

  v7 = *(a1 + 7);
  if (v7 + v4 <= a2)
  {
    return 0;
  }

  if (v4 - a2 + v7 >= a3)
  {
    v8 = a3;
  }

  else
  {
    v8 = v4 - a2 + v7;
  }

  if (!v8)
  {
    result = sub_100010524(257);
    if (!result)
    {
      return result;
    }

    sub_100010668("%s: Zero size for task 0x%4.4x at address 0x%8.8llx) ", "SetProtections", *a1, a2);
    return 0;
  }

  if ((a1[29] & 7) != new_protection)
  {
    a1[4] = mach_vm_protect(*a1, a2, v8, 0, new_protection);
    a1[5] = 1;
    v11 = a1 + 4;
    if (*(a1 + 47) < 0)
    {
      **(a1 + 3) = 0;
      *(a1 + 4) = 0;
    }

    else
    {
      *(a1 + 24) = 0;
      *(a1 + 47) = 0;
    }

    if (sub_1000104C8(256))
    {
      sub_1000103F8(a1 + 4, "::mach_vm_protect(task = 0x%4.4x, addr = 0x%8.8llx, size = %llu, set_max = %i, prot = %u)", v12, v13, v14, v15, v16, v17, *a1);
    }

    v18 = a2;
    if (!*v11)
    {
      goto LABEL_28;
    }

    a1[4] = mach_vm_protect(*a1, a2, v8, 0, new_protection | 0x10);
    a1[5] = 1;
    if (*(a1 + 47) < 0)
    {
      **(a1 + 3) = 0;
      *(a1 + 4) = 0;
    }

    else
    {
      *(a1 + 24) = 0;
      *(a1 + 47) = 0;
    }

    if ((v19 = sub_1000104C8(256), v18 = a2, !v19) && !*v11 || (sub_1000103F8(a1 + 4, "::mach_vm_protect(task = 0x%4.4x, addr = 0x%8.8llx, size = %llu, set_max = %i, prot = %u)", v20, v21, v22, v23, v24, v25, *a1), v18 = a2, !a1[4]))
    {
LABEL_28:
      a1[29] = new_protection;
      result = 1;
      *(a1 + 15) = v18;
      *(a1 + 16) = v8;
      return result;
    }

    return 0;
  }

  if (sub_100010524(257))
  {
    sub_100010668("MachVMRegion::%s: protections (%u) already sufficient for task 0x%4.4x at address 0x%8.8llx) ", "SetProtections", new_protection, *a1, a2);
  }

  return 1;
}

BOOL sub_10005273C(uint64_t a1, unint64_t a2)
{
  sub_100052434(a1);
  *(a1 + 8) = -1;
  if (*(a1 + 47) < 0)
  {
    **(a1 + 24) = 0;
    *(a1 + 32) = 0;
    v4 = *(a1 + 47) < 0;
  }

  else
  {
    v4 = 0;
    *(a1 + 24) = 0;
    *(a1 + 47) = 0;
  }

  *(a1 + 56) = 0;
  *(a1 + 68) = 0u;
  *(a1 + 84) = 0u;
  *(a1 + 100) = 0u;
  *(a1 + 116) = 0;
  *(a1 + 120) = xmmword_100067090;
  *(a1 + 16) = 0;
  if (v4)
  {
    **(a1 + 24) = 0;
    *(a1 + 32) = 0;
  }

  else
  {
    *(a1 + 24) = 0;
    *(a1 + 47) = 0;
  }

  *(a1 + 8) = a2;
  *(a1 + 48) = a2;
  *(a1 + 64) = 1024;
  infoCnt = 12;
  v5 = mach_vm_region_recurse(*a1, (a1 + 48), (a1 + 56), (a1 + 64), (a1 + 68), &infoCnt);
  *(a1 + 16) = v5;
  *(a1 + 20) = 1;
  if (*(a1 + 47) < 0)
  {
    **(a1 + 24) = 0;
    *(a1 + 32) = 0;
    v6 = *(a1 + 16);
  }

  else
  {
    v6 = v5;
    *(a1 + 24) = 0;
    *(a1 + 47) = 0;
  }

  v13 = sub_1000104C8(256);
  if (v13 || v6)
  {
    v18 = *(a1 + 64);
    v16 = *(a1 + 48);
    v17 = *(a1 + 56);
    sub_1000103F8((a1 + 16), "::mach_vm_region_recurse(task = 0x%4.4x, address => 0x%8.8llx, size => %llu, nesting_depth => %d, info => %p, infoCnt => %d) addr = 0x%8.8llx ", v7, v8, v9, v10, v11, v12, *a1);
    if (v6)
    {
      return 0;
    }
  }

  if (v13 && sub_100010510())
  {
    sub_100010668("info = { prot = %u, max_prot = %u, inheritance = 0x%8.8x, offset = 0x%8.8llx, user_tag = 0x%8.8x, ref_count = %u, shadow_depth = %u, ext_pager = %u, share_mode = %u, is_submap = %d, behavior = %d, object_id = 0x%8.8x, user_wired_count = 0x%4.4x }", *(a1 + 68), *(a1 + 72), *(a1 + 76), *(a1 + 80), *(a1 + 88), *(a1 + 92), *(a1 + 96), *(a1 + 98), *(a1 + 99), *(a1 + 100), *(a1 + 104), *(a1 + 108), *(a1 + 112));
  }

  *(a1 + 116) = *(a1 + 68);
  v14 = *(a1 + 48);
  return v14 <= a2 && *(a1 + 56) + v14 > a2;
}

uint64_t sub_100052934(uint64_t a1)
{
  if (*(a1 + 8) == -1 || *(a1 + 48) == -1 || !*(a1 + 56))
  {
    return 0;
  }

  else
  {
    return *(a1 + 68) & 4 | (__rbit32(*(a1 + 68)) >> 30);
  }
}

void sub_100052970(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v4 = *(a1 + 88);
  if (v4 == 30)
  {
    if (*(a1 + 68))
    {
      v10 = 5;
      strcpy(__p, "stack");
    }

    else
    {
      v10 = 11;
      strcpy(__p, "stack-guard");
    }

    sub_100008740(a2, __p);
    if (v10 < 0)
    {
      operator delete(__p[0]);
    }

    v4 = *(a1 + 88);
  }

  if (v4 == 1)
  {
    if (*(a1 + 68))
    {
      v5 = (*(a1 + 99) == 3 ? "malloc-reserved" : "malloc-metadata");
      v10 = 15;
      __p[0] = *v5;
      *(__p + 7) = *(v5 + 7);
      HIBYTE(__p[1]) = 0;
    }

    else
    {
      v10 = 12;
      strcpy(__p, "malloc-guard");
    }

    sub_100008740(a2, __p);
    if (v10 < 0)
    {
      operator delete(__p[0]);
    }
  }

  v6 = *(a1 + 88);
  if ((v6 - 2) < 8 || (v6 != 99 ? (v7 = v6 == 11) : (v7 = 1), v7))
  {
    v10 = 4;
    strcpy(__p, "heap");
    sub_100008740(a2, __p);
    if (v10 < 0)
    {
      operator delete(__p[0]);
    }

    v8 = *(a1 + 88);
    if (v8 == 7)
    {
      v10 = 11;
      strcpy(__p, "malloc-tiny");
      sub_100008740(a2, __p);
      if (v10 < 0)
      {
        operator delete(__p[0]);
      }

      v8 = *(a1 + 88);
      if (v8 != 3)
      {
LABEL_27:
        if (v8 != 2)
        {
          return;
        }

        goto LABEL_35;
      }
    }

    else if (v8 != 3)
    {
      goto LABEL_27;
    }

    v10 = 12;
    strcpy(__p, "malloc-large");
    sub_100008740(a2, __p);
    if (v10 < 0)
    {
      operator delete(__p[0]);
    }

    if (*(a1 + 88) != 2)
    {
      return;
    }

LABEL_35:
    v10 = 12;
    strcpy(__p, "malloc-small");
    sub_100008740(a2, __p);
    if (v10 < 0)
    {
      operator delete(__p[0]);
    }
  }
}

double sub_100052C0C()
{
  v2[0] = unk_10006D6F8;
  v2[1] = *off_10006D708;
  sub_100008C50(v2);
  v1[0] = unk_10006D718;
  v1[1] = *off_10006D728;
  *&result = sub_100008C50(v1).n128_u64[0];
  return result;
}

char *sub_100052C58(uint64_t a1)
{
  v2 = operator new(0x3F00uLL, 0x40uLL);
  *(v2 + 2) = 0;
  *v2 = off_1000700A0;
  *(v2 + 2) = a1;
  sub_1000578FC(v2 + 1196);
  *(v2 + 1935) = -1;
  *&v3 = -1;
  *(&v3 + 1) = -1;
  *(v2 + 15448) = v3;
  *(v2 + 15464) = v3;
  *(v2 + 15432) = v3;
  *(v2 + 16008) = 0u;
  *(v2 + 16024) = 0u;
  *(v2 + 16040) = 0u;
  *(v2 + 4014) = -1;
  *(v2 + 8030) = 0;
  *(v2 + 16072) = 0u;
  *(v2 + 2008) = v2 + 16072;
  sub_100057AC0((v2 + 16008), 0x10uLL);
  v4 = *(v2 + 2004);
  v5 = *(v2 + 2005) - v4;
  if ((v5 >> 4) > 0xF)
  {
    if (v5 != 256)
    {
      *(v2 + 2005) = v4 + 256;
    }
  }

  else
  {
    sub_100057AC0((v2 + 16032), 16 - (v5 >> 4));
  }

  bzero(v2 + 15488, 0x208uLL);
  return v2;
}

uint64_t sub_100052D64(void *a1, char a2)
{
  v4 = a2;
  if (atomic_load_explicit(&qword_10047E0A8, memory_order_acquire) != -1)
  {
    v6 = &v4;
    v5 = &v6;
    std::__call_once(&qword_10047E0A8, &v5, sub_100058940);
  }

  result = qword_10047E090;
  *a1 = 0xAAAAAAAAAAAAAAABLL * ((qword_10047E098 - qword_10047E090) >> 3);
  return result;
}

uint64_t sub_100052E04()
{
  if (atomic_load_explicit(&qword_10047DFE8, memory_order_acquire) != -1)
  {
    v5[1] = v0;
    v5[2] = v1;
    v5[0] = &v3;
    v4 = v5;
    std::__call_once(&qword_10047DFE8, &v4, sub_100057EFC);
  }

  return dword_10047DFE0;
}

uint64_t sub_100052E70(uint64_t a1, uint64_t a2)
{
  if (!sub_100052ED4(a1, 0))
  {
    v4 = *(a1 + 320);
    v7 = 0;
    if (sub_10000F464(&v7))
    {
      v5 = ~(-1 << v7);
    }

    else
    {
      v5 = -1;
    }

    return v5 & v4;
  }

  return a2;
}

uint64_t sub_100052ED4(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0 && !*(a1 + 15432))
  {
    return 0;
  }

  old_stateCnt[0] = 68;
  state = thread_get_state(*(*(a1 + 16) + 16), 6, (a1 + 64), old_stateCnt);
  if (!state)
  {
    out_stateCnt = 68;
    v4 = thread_convert_thread_state(*(*(a1 + 16) + 16), 1, 6, (a1 + 64), old_stateCnt[0], out_state, &out_stateCnt);
    if (sub_100010524(4))
    {
      sub_100010668("converted register values to debugserver's keys, return value %d, old count %d new count %d", v4, old_stateCnt[0], out_stateCnt);
    }

    memcpy((a1 + 64), out_state, 4 * old_stateCnt[0]);
  }

  if (sub_100010524(4))
  {
    if (sub_100010510())
    {
      sub_100010668("thread_get_state signed regs \n   fp=%16.16llx\n   lr=%16.16llx\n   sp=%16.16llx\n   pc=%16.16llx", *(a1 + 296), *(a1 + 304), *(a1 + 312), *(a1 + 320));
    }

    v26 = *(a1 + 296);
    out_state[0] = 0;
    v25 = sub_10000F464(out_state);
    v24 = out_state[0];
    v23 = *(a1 + 304);
    out_state[0] = 0;
    v5 = sub_10000F464(out_state);
    v6 = out_state[0];
    v7 = *(a1 + 312);
    out_state[0] = 0;
    v8 = sub_10000F464(out_state);
    v9 = out_state[0];
    v10 = *(a1 + 320);
    out_state[0] = 0;
    v11 = sub_10000F464(out_state);
    v12 = out_state[0];
    if (sub_100010510())
    {
      v13 = -1;
      if (v11)
      {
        v14 = ~(-1 << v12);
      }

      else
      {
        v14 = -1;
      }

      v15 = v14 & v10;
      if (v8)
      {
        v17 = ~(-1 << v9);
      }

      else
      {
        v17 = -1;
      }

      v18 = v17 & v7;
      if (v5)
      {
        v19 = ~(-1 << v6);
      }

      else
      {
        v19 = -1;
      }

      v20 = v19 & v23;
      if (v25)
      {
        v13 = ~(-1 << v24);
      }

      v21 = *(a1 + 184);
      v16 = *(a1 + 72);
      sub_100010668("thread_get_state(0x%4.4x, %u, &gpr, %u) => 0x%8.8x (count = %u) regs\n   x0=%16.16llx\n   x1=%16.16llx\n   x2=%16.16llx\n   x3=%16.16llx\n   x4=%16.16llx\n   x5=%16.16llx\n   x6=%16.16llx\n   x7=%16.16llx\n   x8=%16.16llx\n   x9=%16.16llx\n  x10=%16.16llx\n  x11=%16.16llx\n  x12=%16.16llx\n  x13=%16.16llx\n  x14=%16.16llx\n  x15=%16.16llx\n  x16=%16.16llx\n  x17=%16.16llx\n  x18=%16.16llx\n  x19=%16.16llx\n  x20=%16.16llx\n  x21=%16.16llx\n  x22=%16.16llx\n  x23=%16.16llx\n  x24=%16.16llx\n  x25=%16.16llx\n  x26=%16.16llx\n  x27=%16.16llx\n  x28=%16.16llx\n   fp=%16.16llx\n   lr=%16.16llx\n   sp=%16.16llx\n   pc=%16.16llx\n cpsr=%8.8x", *(*(a1 + 16) + 16), 1, 68, state, old_stateCnt[0], *(a1 + 64), v16, *(&v16 + 1), *(a1 + 88), *(a1 + 96), *(a1 + 104), *(a1 + 112), *(a1 + 120), *(a1 + 128), *(a1 + 136), *(a1 + 64), *(a1 + 152), *(a1 + 160), *(a1 + 168), *(a1 + 176), *(a1 + 184), *(a1 + 192), *(a1 + 200), *(a1 + 208), *(a1 + 216), *(a1 + 224), *(a1 + 232), *(a1 + 240), *(a1 + 248), *(a1 + 256), *(a1 + 264), *(a1 + 272), *(a1 + 280), *(a1 + 288), v13 & v26, v20, v18, v15, *(a1 + 328));
    }
  }

  *(a1 + 15432) = state;
  return state;
}

BOOL sub_100053158(uint64_t a1, uint64_t a2)
{
  v4 = sub_100052ED4(a1, 0);
  result = 0;
  if (!v4)
  {
    v6 = *(a1 + 332);
    if (a2)
    {
      v7 = a2;
    }

    else
    {
      v7 = 0;
    }

    *(a1 + 320) = v7;
    *(a1 + 332) = v6 & 0xFFFFFFFB;
    out_stateCnt = 68;
    memcpy(__dst, (a1 + 64), 0x110uLL);
    v8 = thread_convert_thread_state(*(*(a1 + 16) + 16), 2, 6, (a1 + 64), 0x44u, __dst, &out_stateCnt);
    if (sub_100010524(4))
    {
      sub_100010668("converted register values to inferior's keys, return value %d, count %d", v8, out_stateCnt);
    }

    v9 = thread_set_state(*(*(a1 + 16) + 16), 6, __dst, 0x44u);
    *(a1 + 15436) = v9;
    *(a1 + 15432) = -1;
    return v9 == 0;
  }

  return result;
}

uint64_t sub_10005329C(uint64_t a1, uint64_t a2)
{
  if (!sub_100052ED4(a1, 0))
  {
    v4 = *(a1 + 312);
    v7 = 0;
    if (sub_10000F464(&v7))
    {
      v5 = ~(-1 << v7);
    }

    else
    {
      v5 = -1;
    }

    return v5 & v4;
  }

  return a2;
}

uint64_t sub_100053300(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0 && !*(a1 + 15440))
  {
    return 0;
  }

  old_stateCnt = 132;
  state = thread_get_state(*(*(a1 + 16) + 16), 17, (a1 + 336), &old_stateCnt);
  if (sub_100010524(4) && sub_100010510())
  {
    v4 = *(a1 + 336);
    v5 = *(a1 + 352);
    v6 = *(a1 + 368);
    v7 = *(a1 + 384);
    v8 = *(a1 + 400);
    v9 = *(a1 + 416);
    v10 = *(a1 + 432);
    v11 = *(a1 + 448);
    v12 = *(a1 + 464);
    v13 = *(a1 + 480);
    v14 = *(a1 + 496);
    v15 = *(a1 + 512);
    v16 = *(a1 + 720);
    v17 = *(a1 + 736);
    v18 = *(a1 + 752);
    v19 = *(a1 + 768);
    v20 = *(a1 + 784);
    v21 = *(a1 + 800);
    v22 = *(a1 + 816);
    sub_100010668("thread_get_state(0x%4.4x, %u, &vfp, %u) => 0x%8.8x (count = %u) regs\n   q0  = 0x%16.16llx%16.16llx\n   q1  = 0x%16.16llx%16.16llx\n   q2  = 0x%16.16llx%16.16llx\n   q3  = 0x%16.16llx%16.16llx\n   q4  = 0x%16.16llx%16.16llx\n   q5  = 0x%16.16llx%16.16llx\n   q6  = 0x%16.16llx%16.16llx\n   q7  = 0x%16.16llx%16.16llx\n   q8  = 0x%16.16llx%16.16llx\n   q9  = 0x%16.16llx%16.16llx\n   q10 = 0x%16.16llx%16.16llx\n   q11 = 0x%16.16llx%16.16llx\n   q12 = 0x%16.16llx%16.16llx\n   q13 = 0x%16.16llx%16.16llx\n   q14 = 0x%16.16llx%16.16llx\n   q15 = 0x%16.16llx%16.16llx\n   q16 = 0x%16.16llx%16.16llx\n   q17 = 0x%16.16llx%16.16llx\n   q18 = 0x%16.16llx%16.16llx\n   q19 = 0x%16.16llx%16.16llx\n   q20 = 0x%16.16llx%16.16llx\n   q21 = 0x%16.16llx%16.16llx\n   q22 = 0x%16.16llx%16.16llx\n   q23 = 0x%16.16llx%16.16llx\n   q24 = 0x%16.16llx%16.16llx\n   q25 = 0x%16.16llx%16.16llx\n   q26 = 0x%16.16llx%16.16llx\n   q27 = 0x%16.16llx%16.16llx\n   q28 = 0x%16.16llx%16.16llx\n   q29 = 0x%16.16llx%16.16llx\n   q30 = 0x%16.16llx%16.16llx\n   q31 = 0x%16.16llx%16.16llx\n  fpsr = 0x%8.8x\n  fpcr = 0x%8.8x\n\n", *(*(a1 + 16) + 16), 2, 132, state, old_stateCnt, v4, *(&v4 + 1), v5, *(&v5 + 1), v6, *(&v6 + 1), v7, *(&v7 + 1), v8, *(&v8 + 1), v9, *(&v9 + 1), v10, *(&v10 + 1), v11, *(&v11 + 1), v12, *(&v12 + 1), v13, *(&v13 + 1), v14, *(&v14 + 1), v15, *(&v15 + 1), *(a1 + 528), *(a1 + 536), *(a1 + 544), *(a1 + 552), *(a1 + 560), *(a1 + 568), *(a1 + 576), *(a1 + 584), *(a1 + 592), *(a1 + 600), *(a1 + 608), *(a1 + 616), *(a1 + 624), *(a1 + 632), *(a1 + 640), *(a1 + 648), *(a1 + 656), *(a1 + 664), *(a1 + 672), *(a1 + 680), *(a1 + 688), *(a1 + 696), *(a1 + 704), *(a1 + 712), v16, *(&v16 + 1), v17, *(&v17 + 1), v18, *(&v18 + 1), v19, *(&v19 + 1), v20, *(&v20 + 1), v21, *(&v21 + 1), v22, *(&v22 + 1), *(a1 + 832), *(a1 + 840), *(a1 + 848), *(a1 + 852));
  }

  *(a1 + 15440) = state;
  return state;
}

uint64_t sub_1000534F0(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0 && !*(a1 + 15448))
  {
    return 0;
  }

  if (atomic_load_explicit(&qword_10047DFC8, memory_order_acquire) != -1)
  {
    *old_stateCnt = &v5;
    v6 = old_stateCnt;
    std::__call_once(&qword_10047DFC8, &v6, sub_100057E3C);
  }

  if (byte_10047DFC0 != 1)
  {
    return 4;
  }

  bzero((a1 + 864), 0x2200uLL);
  old_stateCnt[0] = 1024;
  state = thread_get_state(*(*(a1 + 16) + 16), 29, (a1 + 864), old_stateCnt);
  *(a1 + 15448) = state;
  if (sub_100010524(4))
  {
    sub_100010668("Read SVE registers z0..z15 return value %d", state);
  }

  if (!state)
  {
    old_stateCnt[0] = 1024;
    state = thread_get_state(*(*(a1 + 16) + 16), 30, (a1 + 4960), old_stateCnt);
    *(a1 + 15448) = state;
    if (sub_100010524(4))
    {
      sub_100010668("Read SVE registers z16..z31 return value %d", state);
    }

    if (!state)
    {
      old_stateCnt[0] = 128;
      state = thread_get_state(*(*(a1 + 16) + 16), 31, (a1 + 9056), old_stateCnt);
      *(a1 + 15448) = state;
      if (sub_100010524(4))
      {
        sub_100010668("Read SVE registers p0..p15 return value %d", state);
      }
    }
  }

  return state;
}

uint64_t sub_10005367C()
{
  v0 = __chkstk_darwin();
  v1 = v0;
  if ((v2 & 1) == 0 && !*(v0 + 15456))
  {
    return 0;
  }

  if (atomic_load_explicit(&qword_10047DFC8, memory_order_acquire) != -1)
  {
    *old_state = &old_stateCnt;
    v12 = old_state;
    std::__call_once(&qword_10047DFC8, &v12, sub_100057E3C);
  }

  if (byte_10047DFC0 != 1)
  {
    return 4;
  }

  *(v1 + 9584) = 0;
  *(v1 + 9568) = 0u;
  bzero(*(v1 + 9592), *(v1 + 9600) - *(v1 + 9592));
  if (atomic_load_explicit(&qword_10047DFD8, memory_order_acquire) != -1)
  {
    *old_state = &old_stateCnt;
    v12 = old_state;
    std::__call_once(&qword_10047DFD8, &v12, sub_100057E9C);
  }

  if (byte_10047DFD0 == 1)
  {
    *(v1 + 9664) = 0u;
    *(v1 + 9648) = 0u;
    *(v1 + 9632) = 0u;
    *(v1 + 9616) = 0u;
  }

  old_stateCnt = 6;
  state = thread_get_state(*(*(v1 + 16) + 16), 28, (v1 + 9568), &old_stateCnt);
  *(v1 + 15456) = state;
  if (sub_100010524(4))
  {
    sub_100010668("Read ARM_SME_STATE return value %d", state);
  }

  if (!state)
  {
    v4 = *(v1 + 9584) * *(v1 + 9584);
    if (v4 <= 0x1000)
    {
      v5 = 1;
    }

    else
    {
      v5 = v4 >> 12;
    }

    if (v4 > 0x1000)
    {
      v6 = 4096;
    }

    else
    {
      v6 = v4;
    }

    if (v5)
    {
      v7 = 0;
      v8 = 32;
      do
      {
        old_stateCnt = 1024;
        state = thread_get_state(*(*(v1 + 16) + 16), v8, old_state, &old_stateCnt);
        *(v1 + 15456) = state;
        if (sub_100010524(4))
        {
          sub_100010668("Read ARM_SME_STATE return value %d", state);
        }

        if (state)
        {
          return state;
        }

        memcpy((*(v1 + 9592) + v7), old_state, v6);
        ++v8;
        v7 += v6;
      }

      while (--v5);
    }

    if (atomic_load_explicit(&qword_10047DFD8, memory_order_acquire) != -1)
    {
      *old_state = &v11;
      v12 = old_state;
      std::__call_once(&qword_10047DFD8, &v12, sub_100057E9C);
    }

    if (byte_10047DFD0 == 1)
    {
      old_stateCnt = 16;
      state = thread_get_state(*(*(v1 + 16) + 16), 48, (v1 + 9616), &old_stateCnt);
      *(v1 + 15456) = state;
      if (sub_100010524(4))
      {
        sub_100010668("Read ARM_SME2_STATE return value %d", state);
      }

      if (state)
      {
        return state;
      }
    }

    return 0;
  }

  return state;
}

uint64_t sub_100053984(uint64_t a1)
{
  if (atomic_load_explicit(&qword_10047DFC8, memory_order_acquire) != -1)
  {
    v6 = &v4;
    v5 = &v6;
    std::__call_once(&qword_10047DFC8, &v5, sub_100057E3C);
  }

  if (byte_10047DFC0 != 1)
  {
    return 4;
  }

  v2 = thread_set_state(*(*(a1 + 16) + 16), 29, (a1 + 864), 0x400u);
  *(a1 + 15452) = v2;
  if (sub_100010524(4))
  {
    sub_100010668("Write ARM_SVE_Z_STATE1 return value %d", v2);
  }

  if (!v2)
  {
    v2 = thread_set_state(*(*(a1 + 16) + 16), 30, (a1 + 4960), 0x400u);
    *(a1 + 15452) = v2;
    if (sub_100010524(4))
    {
      sub_100010668("Write ARM_SVE_Z_STATE2 return value %d", v2);
    }

    if (!v2)
    {
      v2 = thread_set_state(*(*(a1 + 16) + 16), 31, (a1 + 9056), 0x80u);
      *(a1 + 15452) = v2;
      if (sub_100010524(4))
      {
        sub_100010668("Write ARM_SVE_P_STATE return value %d", v2);
      }
    }
  }

  return v2;
}

uint64_t sub_100053AD8()
{
  v0 = __chkstk_darwin();
  if (atomic_load_explicit(&qword_10047DFC8, memory_order_acquire) != -1)
  {
    *__dst = &v8;
    v9 = __dst;
    std::__call_once(&qword_10047DFC8, &v9, sub_100057E3C);
  }

  if (byte_10047DFC0 != 1)
  {
    return 4;
  }

  v1 = *(v0 + 9584) * *(v0 + 9584);
  if (v1 <= 0x1000)
  {
    v2 = 1;
  }

  else
  {
    v2 = v1 >> 12;
  }

  if (v1 > 0x1000)
  {
    v3 = 4096;
  }

  else
  {
    v3 = v1;
  }

  if (v2)
  {
    v4 = 0;
    v5 = 32;
    while (1)
    {
      memcpy(__dst, (*(v0 + 9592) + v4), v3);
      v6 = thread_set_state(*(*(v0 + 16) + 16), v5, __dst, 0x400u);
      *(v0 + 15460) = v6;
      if (sub_100010524(4))
      {
        sub_100010668("Write ARM_SME_STATE return value %d", v6);
      }

      if (v6)
      {
        break;
      }

      ++v5;
      v4 += v3;
      if (!--v2)
      {
        goto LABEL_16;
      }
    }
  }

  else
  {
LABEL_16:
    if (atomic_load_explicit(&qword_10047DFD8, memory_order_acquire) != -1)
    {
      *__dst = &v8;
      v9 = __dst;
      std::__call_once(&qword_10047DFD8, &v9, sub_100057E9C);
    }

    if (byte_10047DFD0 != 1)
    {
      return 0;
    }

    v6 = thread_set_state(*(*(v0 + 16) + 16), 48, (v0 + 9616), 0x30u);
    *(v0 + 15460) = v6;
    if (sub_100010524(4))
    {
      sub_100010668("Write ARM_SME2_STATE return value %d", v6);
    }

    if (!v6)
    {
      return 0;
    }
  }

  return v6;
}

void sub_100053CF4(uint64_t a1)
{
  v2 = a1 + 12288;
  if (sub_10004E8BC(*(a1 + 16)))
  {
    sub_100053E38(a1, 1);
  }

  if (*(v2 + 3772) == 1 && (*(a1 + 16056) & 0x80000000) == 0)
  {
    old_stateCnt = 130;
    state = thread_get_state(*(*(a1 + 16) + 16), 15, (a1 + 14912), &old_stateCnt);
    v4 = *(a1 + 16056);
    if (state || (*(a1 + 8 * v4 + 15296) & 1) != 0)
    {
      (*(*a1 + 176))(a1, v4, 0);
      if (sub_100010524(2048))
      {
        sub_100010668("DNBArchMachARM64::ThreadWillResume() DisableHardwareWatchpoint(%d) called", *(a1 + 16056));
      }

      v5 = sub_100053E38(a1, 1);
      *(v2 + 3773) = v5 == 0;
      if (v5)
      {
        *(v2 + 3772) = 0;
        *(a1 + 16056) = -1;
        if (sub_100010524(2048))
        {
          sub_100010668("DNBArchMachARM64::ThreadWillResume() failed to enable single step");
        }
      }

      else if (sub_100010524(2048))
      {
        sub_100010668("DNBArchMachARM64::ThreadWillResume() succeeded to enable single step");
      }
    }

    else
    {
      *(v2 + 3772) = 0;
      *(a1 + 16056) = -1;
    }
  }
}

uint64_t sub_100053E38(uint64_t a1, int a2)
{
  __p = 0;
  v27 = 0;
  v28 = 0;
  if (sub_100010524(4096))
  {
    sub_100010668("%s( enable = %d)", "EnableHardwareSingleStep", a2);
  }

  v24 = sub_100052ED4(a1, 0);
  v25 = 1;
  LOBYTE(__p) = 0;
  HIBYTE(v28) = 0;
  if (v24)
  {
    sub_1000103F8(&v24, "%s: failed to read the GPR registers", v4, v5, v6, v7, v8, v9, "EnableHardwareSingleStep");
    goto LABEL_8;
  }

  old_stateCnt = 130;
  state = thread_get_state(*(*(a1 + 16) + 16), 15, (a1 + 14912), &old_stateCnt);
  v24 = state;
  v25 = 1;
  if (SHIBYTE(v28) < 0)
  {
    *__p = 0;
    v27 = 0;
    if (v24)
    {
      goto LABEL_7;
    }
  }

  else
  {
    LOBYTE(__p) = 0;
    HIBYTE(v28) = 0;
    if (state)
    {
LABEL_7:
      sub_1000103F8(&v24, "%s: failed to read the DBG registers", v11, v12, v13, v14, v15, v16, "EnableHardwareSingleStep");
LABEL_8:
      result = v24;
      if ((SHIBYTE(v28) & 0x80000000) == 0)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  v19 = *(a1 + 320);
  old_stateCnt = 0;
  if (sub_10000F464(&old_stateCnt))
  {
    v20 = ~(-1 << old_stateCnt);
  }

  else
  {
    v20 = -1;
  }

  v21 = v20 & v19;
  v22 = sub_100010524(4096);
  if (a2)
  {
    if (v22)
    {
      sub_100010668("%s: Setting MDSCR_EL1 Single Step bit at pc 0x%llx", "EnableHardwareSingleStep", v21);
    }

    v23 = *(a1 + 15424) | 1;
  }

  else
  {
    if (v22)
    {
      sub_100010668("%s: Clearing MDSCR_EL1 Single Step bit at pc 0x%llx", "EnableHardwareSingleStep", v21);
    }

    v23 = *(a1 + 15424) & 0xFFFFFFFELL;
  }

  *(a1 + 15424) = v23;
  result = thread_set_state(*(*(a1 + 16) + 16), 15, (a1 + 14912), 0x82u);
  if (SHIBYTE(v28) < 0)
  {
LABEL_9:
    v18 = result;
    operator delete(__p);
    return v18;
  }

  return result;
}

uint64_t sub_100053FEC(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 8) != 6)
  {
    return 0;
  }

  v21[11] = v2;
  v21[12] = v3;
  v4 = *(a2 + 16);
  v5 = a2 + 16;
  if (*(a2 + 24) - v4 != 16)
  {
    return 0;
  }

  if (*v4 == 1)
  {
    v18 = (*(*a1 + 88))(a1, -1);
    if (v18 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v19 = v18;
      if (!sub_100009344(**(a1 + 16) + 1640, v18) && sub_10003D590(**(a1 + 16), v19, 4uLL, v21) == 4 && LODWORD(v21[0]) == -734134272)
      {
        (*(*a1 + 96))(a1, v19 + 4);
      }
    }

    return 0;
  }

  if (*v4 != 258)
  {
    return 0;
  }

  v21[0] = v4[1];
  v7 = (*(*a1 + 184))(a1, v21);
  if (sub_100010524(2048))
  {
    sub_100010668("DNBArchMachARM64::NotifyException watchpoint %d was hit on address 0x%llx", v7, v21[0]);
  }

  v8 = (*(*a1 + 144))(a1);
  if (v8)
  {
    v9 = 0;
    v10 = (a1 + 15296);
    v11 = v8;
    v12 = dword_10047DFF0;
    do
    {
      v13 = *v12;
      if (v9 != v13 && v13 != 0 && v13 == v7)
      {
        old_stateCnt[0] = 130;
        if (!thread_get_state(*(*(a1 + 16) + 16), 15, (a1 + 14912), old_stateCnt) && v9 < (*(*a1 + 144))(a1) && (*v10 & 1) != 0 && *(v10 - 16) != -1)
        {
          old_stateCnt[0] = 130;
          if (!thread_get_state(*(*(a1 + 16) + 16), 15, (a1 + 14912), old_stateCnt) && v9 < (*(*a1 + 144))(a1) && (*v10 & 1) != 0)
          {
            v16 = *(v10 - 16);
          }

          else
          {
            v16 = -1;
          }

          v21[0] = v16;
          if (sub_100010524(2048))
          {
            sub_100010668("DNBArchMachARM64::NotifyException It is a linked watchpoint; rewritten to index %d addr 0x%llx", *v12, v21[0]);
          }
        }
      }

      ++v9;
      ++v12;
      v10 += 8;
    }

    while (v11 != v9);
  }

  if (v7 != -1)
  {
    *(a1 + 16060) = 1;
    *(a1 + 16056) = v7;
    *(*v5 + 8) = v21[0];
    *old_stateCnt = v7;
    sub_10002E30C(v5, old_stateCnt);
  }

  return 1;
}

BOOL sub_100054330(uint64_t a1)
{
  v2 = a1 + 12288;
  *(a1 + 15432) = -1;
  *(a1 + 15440) = -1;
  *(a1 + 15448) = -1;
  *(a1 + 15456) = -1;
  *(a1 + 15472) = -1;
  *(a1 + 15464) = -1;
  *(a1 + 15480) = -1;
  if (*(a1 + 16061) == 1)
  {
    if (sub_100053E38(a1, 0))
    {
      if (sub_100010510())
      {
        sub_1000107A0("internal error detected: m_watchpoint_resume_step_enabled is true but unable to disable single step!");
      }
    }

    else if (*(v2 + 3772) != 1 || (*(a1 + 16056) & 0x80000000) != 0)
    {
      if (sub_100010510())
      {
        sub_1000107A0("internal error detected: m_watchpoint_resume_step_enabled is true but (m_watchpoint_did_occur && m_watchpoint_hw_index >= 0) does not hold!");
      }
    }

    else
    {
      (*(*a1 + 224))(a1);
      *(v2 + 3772) = 0;
      *(a1 + 16056) = -1;
    }
  }

  v3 = 1;
  if (!sub_100052ED4(a1, 1) && sub_10004E8BC(*(a1 + 16)))
  {
    return sub_100053E38(a1, 0) == 0;
  }

  return v3;
}

uint64_t sub_10005443C()
{
  result = dword_10007457C;
  if (dword_10007457C == -1)
  {
    dword_10007457C = 0;
    v1 = 0;
    v2 = 4;
    if (!sysctlbyname("hw.optional.watchpoint", &v1, &v2, 0, 0))
    {
      dword_10007457C = v1;
      if (sub_100010524(4))
      {
        sub_100010668("hw.optional.watchpoint=%u", v1);
      }
    }

    return dword_10007457C;
  }

  return result;
}

uint64_t sub_1000544CC()
{
  result = dword_100074580;
  if (dword_100074580 == -1)
  {
    dword_100074580 = 0;
    v1 = 0;
    v2 = 4;
    if (!sysctlbyname("hw.optional.breakpoint", &v1, &v2, 0, 0))
    {
      dword_100074580 = v1;
      if (sub_100010524(4))
      {
        sub_100010668("hw.optional.breakpoint=%u", v1);
      }
    }

    return dword_100074580;
  }

  return result;
}

uint64_t sub_10005455C(uint64_t a1, unint64_t a2, uint64_t a3, int a4)
{
  if (sub_100010524(2048))
  {
    sub_100010668("DNBArchMachARM64::EnableHardwareBreakpoint(addr = 0x%8.8llx, size = %zu)", a2, a3);
  }

  v8 = (*(*a1 + 136))(a1);
  v9 = a2 & 0xFFFFFFFFFFFFFFFELL;
  v10 = 103;
  if (a3 != 2)
  {
    v9 = a2;
    v10 = 0;
  }

  if (a3 == 4)
  {
    v11 = a2 & 0xFFFFFFFFFFFFFFFCLL;
  }

  else
  {
    v11 = v9;
  }

  if (a3 == 4)
  {
    v12 = 487;
  }

  else
  {
    v12 = v10;
  }

  old_stateCnt = 130;
  if (thread_get_state(*(*(a1 + 16) + 16), 15, (a1 + 14912), &old_stateCnt))
  {
    return 0xFFFFFFFFLL;
  }

  if (!v8)
  {
LABEL_18:
    if (sub_100010524(2048))
    {
      sub_100010668("DNBArchMachARM64::EnableHardwareBreakpoint(): All hardware resources (%u) are in use.", v8);
    }

    return 0xFFFFFFFFLL;
  }

  v13 = 0;
  v15 = (a1 + 15040);
  while ((*v15 & 1) != 0)
  {
    ++v13;
    ++v15;
    if (v8 == v13)
    {
      goto LABEL_18;
    }
  }

  *(v15 - 16) = v11;
  *v15 = v12;
  if (sub_100010524(2048))
  {
    v16 = *(v15 - 16);
    sub_100010668("DNBArchMachARM64::EnableHardwareBreakpoint() adding breakpoint on address 0x%llx with control register value 0x%x", v16, *v15);
  }

  v17 = thread_set_state(*(*(a1 + 16) + 16), 15, (a1 + 14912), 0x82u);
  if (a4)
  {
    v18 = task_set_state(*(**(a1 + 16) + 120), 15, (a1 + 14912), 0x82u);
    if (v18)
    {
      v19 = v18;
      if (sub_100010524(2048))
      {
        sub_100010668("DNBArchMachARM64::SetDBGState failed to set debug control register state: 0x%8.8x.", v19);
      }
    }
  }

  if (sub_100010524(2048))
  {
    sub_100010668("DNBArchMachARM64::EnableHardwareBreakpoint() SetDBGState() => 0x%8.8x.", v17);
  }

  if (v17)
  {
    return 0xFFFFFFFFLL;
  }

  return v13;
}

void sub_100054744(uint64_t a1@<X1>, unint64_t a2@<X2>, void *a3@<X8>)
{
  if (a2)
  {
    v4 = 8;
    if (a2 > 8)
    {
      v4 = a2;
    }

    v5 = 1 << -__clz(v4);
    if ((v4 ^ (v4 - 1)) <= v4 - 1)
    {
      v6 = v5;
    }

    else
    {
      v6 = v4;
    }

    if ((-v6 & a1) + v6 >= a2 + a1)
    {
      operator new();
    }

    sub_100054744(v12);
    sub_100054744(__p);
    v7 = v12[0];
    v8 = __p[0];
    if (v12[1] - v12[0] == 32 && (__p[1] - __p[0]) == 32)
    {
      v9 = *(v12[0] + 16);
      v13 = *v12[0];
      v14 = v9;
      v10 = *(__p[0] + 1);
      v15 = *__p[0];
      v16 = v10;
      operator new();
    }

    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    if (v8)
    {
      operator delete(v8);
    }

    if (v7)
    {
      operator delete(v7);
    }
  }

  else
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
  }
}

uint64_t sub_1000548F8(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (sub_100010524(2048))
  {
    sub_100010668("DNBArchMachARM64::EnableHardwareWatchpoint(addr = 0x%8.8llx, size = %zu, read = %u, write = %u)", a2, a3, a4, a5);
  }

  sub_100054744(a2, a3, &v27);
  v12 = sub_100010524(2048);
  v13 = v27;
  v14 = v28;
  if (v12)
  {
    sub_100010668("DNBArchMachARM64::EnableHardwareWatchpoint() using %zu hardware watchpoints", (v28 - v27) >> 5);
  }

  v15 = 0xFFFFFFFFLL;
  if ((a4 | a5) == 1 && v14 != v13)
  {
    v16 = v14 - v13;
    if (v14 - v13 == 32)
    {
      if (*(v13 + 2) > 8uLL)
      {
        v25 = *v13;
        v26 = *(v13 + 1);
        v15 = sub_100054D88(a1, &v25, a4, a5, a6);
      }

      else
      {
        v25 = *v13;
        v26 = *(v13 + 1);
        v15 = sub_100054B48(a1, &v25, a4, a5, a6);
      }

      goto LABEL_26;
    }

    v17 = v16 >> 5;
    v25 = 0uLL;
    *&v26 = 0;
    if ((v16 >> 5) <= 1)
    {
      v18 = 1;
    }

    else
    {
      v18 = v16 >> 5;
    }

    v19 = v13 + 24;
    do
    {
      v24 = (*(*a1 + 160))(a1, *(v19 - 2), *v19, a4, a5, a6);
      if (v24 != -1)
      {
        sub_100013918(&v25, &v24);
      }

      v19 += 4;
      --v18;
    }

    while (v18);
    v21 = *(&v25 + 1);
    v20 = v25;
    if (v17 == (*(&v25 + 1) - v25) >> 2)
    {
      dword_10047DFF0[*v25] = *(v25 + 4);
      v15 = *v20;
LABEL_24:
      *(&v25 + 1) = v20;
      operator delete(v20);
      goto LABEL_25;
    }

    if (v25 != *(&v25 + 1))
    {
      do
      {
        v22 = *v20++;
        (*(*a1 + 176))(a1, v22, a6);
      }

      while (v20 != v21);
      v20 = v25;
    }

    v15 = 0xFFFFFFFFLL;
    if (v20)
    {
      goto LABEL_24;
    }
  }

LABEL_25:
  if (v13)
  {
LABEL_26:
    operator delete(v13);
  }

  return v15;
}

uint64_t sub_100054B48(uint64_t a1, uint64_t *a2, int a3, int a4, int a5)
{
  v10 = (*(*a1 + 144))(a1);
  v12 = *a2;
  v11 = a2[1];
  v13 = a2[3];
  v14 = 0xFFFFFFFFLL;
  old_stateCnt = 130;
  if (!thread_get_state(*(*(a1 + 16) + 16), 15, (a1 + 14912), &old_stateCnt))
  {
    v25 = a5;
    v15 = a1 + 15296;
    if (v10)
    {
      v16 = 0;
      while ((*(v15 + 8 * v16) & 1) != 0)
      {
        if (v10 == ++v16)
        {
          goto LABEL_9;
        }
      }
    }

    else
    {
      LODWORD(v16) = 0;
    }

    if (v16 == v10)
    {
LABEL_9:
      if (sub_100010524(2048))
      {
        sub_100010668("DNBArchMachARM64::SetBASWatchpoint(): All hardware resources (%u) are in use.", v10);
      }

      return 0xFFFFFFFFLL;
    }

    else
    {
      if (sub_100010524(2048))
      {
        sub_100010668("DNBArchMachARM64::SetBASWatchpoint() set hardware register %d to BAS watchpoint aligned start address 0x%llx, watch region start offset %lld, number of bytes %zu", v16, v12, v11 - v12, v13);
      }

      dword_10047DFF0[v16] = 0;
      *(a1 + 15168 + 8 * v16) = v12;
      if (a3)
      {
        v17 = 8;
      }

      else
      {
        v17 = 0;
      }

      v18 = v17 | (32 * (~(-1 << v13) << (v11 - v12)));
      if (a4)
      {
        v19 = 16;
      }

      else
      {
        v19 = 0;
      }

      *(v15 + 8 * v16) = v18 | v19 | 5u;
      if (sub_100010524(2048))
      {
        v20 = *(a1 + 15168 + 8 * v16);
        sub_100010668("DNBArchMachARM64::SetBASWatchpoint() adding watchpoint on address 0x%llx with control register value 0x%x", v20, *(v15 + 8 * v16));
      }

      v21 = thread_set_state(*(*(a1 + 16) + 16), 15, (a1 + 14912), 0x82u);
      if (v25)
      {
        v22 = task_set_state(*(**(a1 + 16) + 120), 15, (a1 + 14912), 0x82u);
        if (v22)
        {
          v23 = v22;
          if (sub_100010524(2048))
          {
            sub_100010668("DNBArchMachARM64::SetDBGState failed to set debug control register state: 0x%8.8x.", v23);
          }
        }
      }

      if (sub_100010524(2048))
      {
        sub_100010668("DNBArchMachARM64::SetBASWatchpoint() SetDBGState() => 0x%8.8x.", v21);
      }

      if (v21)
      {
        return 0xFFFFFFFFLL;
      }

      else
      {
        return v16;
      }
    }
  }

  return v14;
}

uint64_t sub_100054D88(uint64_t a1, void *a2, int a3, int a4, int a5)
{
  v10 = (*(*a1 + 144))(a1);
  old_stateCnt = 130;
  if (thread_get_state(*(*(a1 + 16) + 16), 15, (a1 + 14912), &old_stateCnt))
  {
    return 0xFFFFFFFFLL;
  }

  v12 = a1 + 15296;
  if (v10)
  {
    v13 = 0;
    while ((*(v12 + 8 * v13) & 1) != 0)
    {
      if (v10 == ++v13)
      {
        goto LABEL_11;
      }
    }
  }

  else
  {
    LODWORD(v13) = 0;
  }

  if (v13 == v10)
  {
LABEL_11:
    if (sub_100010524(2048))
    {
      sub_100010668("DNBArchMachARM64::SetMASKWatchpoint(): All hardware resources (%u) are in use.", v10);
    }

    return 0xFFFFFFFFLL;
  }

  if (sub_100010524(2048))
  {
    v14 = *a2;
    sub_100010668("DNBArchMachARM64::SetMASKWatchpoint() set hardware register %d to MASK watchpoint aligned start address 0x%llx, aligned size %zu", v13, *a2, a2[2]);
  }

  dword_10047DFF0[v13] = 0;
  v15 = vcnt_s8((a2[2] - 1));
  v15.i16[0] = vaddlv_u8(v15);
  *(a1 + 15168 + 8 * v13) = *a2;
  v16 = 8;
  if (!a3)
  {
    v16 = 0;
  }

  v17 = v16 | (v15.u32[0] << 24);
  v18 = 16;
  if (!a4)
  {
    v18 = 0;
  }

  *(v12 + 8 * v13) = v17 | v18 | 0x1FE5;
  if (sub_100010524(2048))
  {
    v19 = *(a1 + 15168 + 8 * v13);
    sub_100010668("DNBArchMachARM64::SetMASKWatchpoint() adding watchpoint on address 0x%llx with control register value 0x%llx", v19, *(v12 + 8 * v13));
  }

  v20 = thread_set_state(*(*(a1 + 16) + 16), 15, (a1 + 14912), 0x82u);
  if (a5)
  {
    v21 = task_set_state(*(**(a1 + 16) + 120), 15, (a1 + 14912), 0x82u);
    if (v21)
    {
      v22 = v21;
      if (sub_100010524(2048))
      {
        sub_100010668("DNBArchMachARM64::SetDBGState failed to set debug control register state: 0x%8.8x.", v22);
      }
    }
  }

  if (sub_100010524(2048))
  {
    sub_100010668("DNBArchMachARM64::SetMASKWatchpoint() SetDBGState() => 0x%8.8x.", v20);
  }

  if (v20)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return v13;
  }
}

uint64_t sub_100054FC4(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  if ((*(*a1 + 144))(a1) > a2 && dword_10047DFF0[v2])
  {
    result = (*(*a1 + 232))(a1, v2);
    if (!result)
    {
      return result;
    }

    v2 = dword_10047DFF0[v2];
  }

  v5 = *(*a1 + 232);

  return v5(a1, v2);
}

BOOL sub_1000550A8(uint64_t a1, unsigned int a2)
{
  old_stateCnt = 130;
  if (thread_get_state(*(*(a1 + 16) + 16), 15, (a1 + 14912), &old_stateCnt) || (*(*a1 + 144))(a1) <= a2)
  {
    return 0;
  }

  v4 = *(a1 + 16008) + 16 * a2;
  *(a1 + 15168 + 8 * a2) = *v4;
  *(a1 + 15296 + 8 * a2) = *(v4 + 8);
  if (sub_100010524(2048))
  {
    sub_100010668("DNBArchMachARM64::ReenableHardwareWatchpoint_helper( %u) - WVR%u = 0x%8.8llx  WCR%u = 0x%8.8llx", a2, a2, *(a1 + 15168 + 8 * a2), a2, *(a1 + 15296 + 8 * a2));
  }

  return thread_set_state(*(*(a1 + 16) + 16), 15, (a1 + 14912), 0x82u) == 0;
}

BOOL sub_1000551B8(uint64_t a1, unsigned int a2, int a3)
{
  v4 = a2;
  if ((*(*a1 + 144))(a1) > a2 && dword_10047DFF0[v4])
  {
    result = sub_100055268(a1, v4, a3);
    if (!result)
    {
      return result;
    }

    v4 = dword_10047DFF0[v4];
  }

  return sub_100055268(a1, v4, a3);
}

BOOL sub_100055268(uint64_t a1, unsigned int a2, int a3)
{
  old_stateCnt = 130;
  if (thread_get_state(*(*(a1 + 16) + 16), 15, (a1 + 14912), &old_stateCnt) || (*(*a1 + 144))(a1) <= a2)
  {
    return 0;
  }

  v6 = *(a1 + 16008) + 16 * a2;
  *v6 = *(a1 + 15168 + 8 * a2);
  v7 = *(a1 + 15296 + 8 * a2);
  *(v6 + 8) = v7;
  *(a1 + 15296 + 8 * a2) = v7 & 0xFFFFFFFFFFFFFFFELL;
  if (sub_100010524(2048))
  {
    sub_100010668("DNBArchMachARM64::DisableHardwareWatchpoint( %u) - WVR%u = 0x%8.8llx  WCR%u = 0x%8.8llx", a2, a2, *(a1 + 15168 + 8 * a2), a2, *(a1 + 15296 + 8 * a2));
  }

  v8 = thread_set_state(*(*(a1 + 16) + 16), 15, (a1 + 14912), 0x82u);
  if (a3)
  {
    v9 = task_set_state(*(**(a1 + 16) + 120), 15, (a1 + 14912), 0x82u);
    if (v9)
    {
      v10 = v9;
      if (sub_100010524(2048))
      {
        sub_100010668("DNBArchMachARM64::SetDBGState failed to set debug control register state: 0x%8.8x.", v10);
      }
    }
  }

  return v8 == 0;
}

BOOL sub_1000553CC(uint64_t a1, unsigned int a2, int a3)
{
  old_stateCnt = 130;
  v6 = a1 + 14912;
  if (thread_get_state(*(*(a1 + 16) + 16), 15, (a1 + 14912), &old_stateCnt) || (*(*a1 + 136))(a1) <= a2)
  {
    return 0;
  }

  v7 = *(a1 + 16032) + 16 * a2;
  *v7 = *(v6 + 8 * a2);
  *(v7 + 8) = *(a1 + 15040 + 8 * a2);
  *(a1 + 15040 + 8 * a2) = 0;
  if (sub_100010524(2048))
  {
    sub_100010668("DNBArchMachARM64::DisableHardwareBreakpoint( %u) - WVR%u = 0x%8.8llx  BCR%u = 0x%8.8llx", a2, a2, *(v6 + 8 * a2), a2, *(a1 + 15040 + 8 * a2));
  }

  v8 = thread_set_state(*(*(a1 + 16) + 16), 15, (a1 + 14912), 0x82u);
  if (a3)
  {
    v9 = task_set_state(*(**(a1 + 16) + 120), 15, (a1 + 14912), 0x82u);
    if (v9)
    {
      v10 = v9;
      if (sub_100010524(2048))
      {
        sub_100010668("DNBArchMachARM64::SetDBGState failed to set debug control register state: 0x%8.8x.", v10);
      }
    }
  }

  return v8 == 0;
}

uint64_t sub_100055528(uint64_t a1, void *a2)
{
  old_stateCnt = 130;
  state = thread_get_state(*(*(a1 + 16) + 16), 15, (a1 + 14912), &old_stateCnt);
  if (sub_100010524(2048))
  {
    sub_100010668("DNBArchMachARM64::GetHardwareWatchpointHit() GetDBGState() => 0x%8.8x.", state);
  }

  if (sub_100010524(2048))
  {
    sub_100010668("DNBArchMachARM64::GetHardwareWatchpointHit() addr = 0x%llx", *a2);
  }

  if (state)
  {
    return 0xFFFFFFFFLL;
  }

  v7 = (*(*a1 + 144))(a1);
  if (!v7)
  {
    return 0xFFFFFFFFLL;
  }

  v5 = 0;
  v8 = (a1 + 15296);
  v9 = v7;
  while (1)
  {
    v10 = *(v8 - 16);
    if (sub_100010524(2048))
    {
      sub_100010668("DNBArchImplARM64::GetHardwareWatchpointHit() slot: %u (addr = 0x%llx, WCR = 0x%llx)", v5, v10, *v8);
    }

    v11 = *v8;
    if ((*v8 & 1) == 0)
    {
      goto LABEL_12;
    }

    v12 = BYTE3(v11) & 0x1F;
    if (sub_100010524(2048))
    {
      v13 = "is MASK watchpoint";
      if (!v12)
      {
        v13 = "is BAS watchpoint";
      }

      sub_100010668("DNBArchImplARM64::GetHardwareWatchpointHit() slot: %u %s", v5, v13);
    }

    if (!v12)
    {
      break;
    }

    if ((v10 << 15) >> (v12 + 15) == *a2 << 15 >> (v12 + 15))
    {
      if (sub_100010524(2048))
      {
        sub_100010668("DNBArchImplARM64::GetHardwareWatchpointHit() slot: %u matched MASK ignoring %u low bits", v5, BYTE3(v11) & 0x1F);
      }

      return v5;
    }

LABEL_12:
    ++v8;
    v5 = (v5 + 1);
    if (!--v9)
    {
      return 0xFFFFFFFFLL;
    }
  }

  if (((*a2 ^ v10) & 0x1FFFFFFFFFFF8) != 0)
  {
    goto LABEL_12;
  }

  if ((v11 & 0x20) != 0)
  {
    v14 = 0;
  }

  else if ((v11 & 0x40) != 0)
  {
    v14 = 1;
  }

  else if ((v11 & 0x80) != 0)
  {
    v14 = 2;
  }

  else if ((v11 & 0x100) != 0)
  {
    v14 = 3;
  }

  else if ((v11 & 0x200) != 0)
  {
    v14 = 4;
  }

  else if ((v11 & 0x400) != 0)
  {
    v14 = 5;
  }

  else if ((v11 & 0x800) != 0)
  {
    v14 = 6;
  }

  else
  {
    v14 = 7;
    if ((v11 & 0x1000) == 0)
    {
      v14 = 0xFFFFFFFFLL;
    }
  }

  if (((v11 >> 5 >> (*a2 & 7)) & 1) == 0)
  {
    goto LABEL_12;
  }

  *a2 = v14 + v10;
  if (sub_100010524(2048))
  {
    sub_100010668("DNBArchImplARM64::GetHardwareWatchpointHit() slot: %u matched BAS", v5);
  }

  return v5;
}

uint64_t sub_1000557A4(uint64_t result)
{
  v1 = *result;
  if (*result)
  {
    *(result + 8) = v1;
    v2 = result;
    operator delete(v1);
    return v2;
  }

  return result;
}

uint64_t sub_1000557E0(uint64_t result)
{
  v1 = *result;
  if (*result)
  {
    *(result + 8) = v1;
    v2 = result;
    operator delete(v1);
    return v2;
  }

  return result;
}

void sub_10005581C(int a1)
{
  if (atomic_load_explicit(&qword_10047E060, memory_order_acquire) != -1)
  {
    *&v8 = &v10;
    v11 = &v8;
    std::__call_once(&qword_10047E060, &v11, sub_100057FA8);
  }

  v2 = 0x8E38E38E38E38E39 * ((qword_10047E050 - qword_10047E048) >> 3);
  if (qword_10047E050 == qword_10047E048)
  {
    v3 = 0;
  }

  else
  {
    v3 = qword_10047E048;
  }

  if (atomic_load_explicit(&qword_10047E068, memory_order_acquire) != -1)
  {
    *&v8 = &v10;
    v11 = &v8;
    std::__call_once(&qword_10047E068, &v11, sub_1000584E0);
  }

  v4 = 0x8E38E38E38E38E39 * ((*algn_10047E038 - qword_10047E030) >> 3);
  if (*algn_10047E038 == qword_10047E030)
  {
    v5 = 0;
  }

  else
  {
    v5 = qword_10047E030;
  }

  if (atomic_load_explicit(&qword_10047E088, memory_order_acquire) != -1)
  {
    *&v8 = &v10;
    v11 = &v8;
    std::__call_once(&qword_10047E088, &v11, sub_1000586B4);
  }

  v6 = 0x8E38E38E38E38E39 * ((qword_10047E078 - qword_10047E070) >> 3);
  if (qword_10047E078 == qword_10047E070)
  {
    v7 = 0;
  }

  else
  {
    v7 = qword_10047E070;
  }

  *&v8 = "ARM64 Registers";
  *(&v8 + 1) = 0;
  v9 = v2 + v4 - 0x71C71C71C71C71C7 * ((qword_10047E078 - qword_10047E070) >> 3) + 66;
  sub_100055B48(&qword_10047E090, &v8);
  *&v8 = "General Purpose Registers";
  *(&v8 + 1) = &unk_10006D738;
  v9 = 63;
  sub_100055B48(&qword_10047E090, &v8);
  *&v8 = "Floating Point Registers";
  *(&v8 + 1) = v3;
  v9 = v2;
  sub_100055B48(&qword_10047E090, &v8);
  *&v8 = "Exception State Registers";
  *(&v8 + 1) = &unk_10006E8F0;
  v9 = 3;
  sub_100055B48(&qword_10047E090, &v8);
  if (atomic_load_explicit(&qword_10047DFC8, memory_order_acquire) != -1)
  {
    *&v8 = &v10;
    v11 = &v8;
    std::__call_once(&qword_10047DFC8, &v11, sub_100057E3C);
  }

  if (byte_10047DFC0 == 1)
  {
    *&v8 = "Scalable Vector Extension Registers";
    *(&v8 + 1) = v5;
    v9 = v4;
    sub_100055B48(&qword_10047E090, &v8);
    *&v8 = "Scalable Matrix Extension Registers";
    *(&v8 + 1) = v7;
    v9 = v6;
  }

  else
  {
    *(&v8 + 1) = 0;
    v9 = 0;
    *&v8 = "Scalable Vector Extension Registers";
    sub_100055B48(&qword_10047E090, &v8);
    *(&v8 + 1) = 0;
    v9 = 0;
    *&v8 = "Scalable Matrix Extension Registers";
  }

  sub_100055B48(&qword_10047E090, &v8);
  if (a1)
  {
    if (dword_100074578 == -1)
    {
      dword_100074578 = (_get_cpu_capabilities() & 0x78000000) != 0;
      if (dword_100074578 != 1)
      {
        return;
      }
    }

    else if (dword_100074578 != 1)
    {
      return;
    }

    *&v8 = "AMX Registers";
    *(&v8 + 1) = &unk_10006E9C8;
    v9 = 81;
    sub_100055B48(&qword_10047E090, &v8);
  }
}

void sub_100055B48(uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v3 >= v4)
  {
    v7 = *a1;
    v8 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 3);
    v9 = v8 + 1;
    if (v8 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_100008888();
    }

    v10 = 0xAAAAAAAAAAAAAAABLL * ((v4 - v7) >> 3);
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0x555555555555555)
    {
      v11 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      if (v11 <= 0xAAAAAAAAAAAAAAALL)
      {
        operator new();
      }

      sub_100008888();
    }

    v12 = 8 * ((v3 - *a1) >> 3);
    *v12 = *a2;
    *(v12 + 16) = *(a2 + 2);
    v6 = 24 * v8 + 24;
    v13 = 24 * v8 - (v3 - v7);
    memcpy((v12 - (v3 - v7)), v7, v3 - v7);
    *a1 = v13;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v7)
    {
      operator delete(v7);
    }
  }

  else
  {
    v5 = *a2;
    *(v3 + 16) = *(a2 + 2);
    *v3 = v5;
    v6 = v3 + 24;
  }

  *(a1 + 8) = v6;
}

uint64_t sub_100055C80(uint64_t *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v5 = a3;
  if (a2 == -1)
  {
    if (a3 > 0xA)
    {
      return 0;
    }

    v5 = dword_100067120[a3];
    v7 = 1;
  }

  else
  {
    v7 = a2;
  }

  if ((*(*a1 + 64))(a1, v7, 0))
  {
    return 0;
  }

  result = sub_10004EABC(a1[2], v7, v5);
  if (!result)
  {
    return result;
  }

  v9 = result;
  if (atomic_load_explicit(&qword_10047DFE8, memory_order_acquire) != -1)
  {
    v28 = &v26;
    v27 = &v28;
    std::__call_once(&qword_10047DFE8, &v27, sub_100057EFC);
  }

  result = 0;
  v10 = dword_10047DFE0;
  *a4 = *v9;
  v12 = *(v9 + 32);
  v11 = *(v9 + 48);
  v13 = *(v9 + 16);
  *(a4 + 64) = *(v9 + 64);
  *(a4 + 32) = v12;
  *(a4 + 48) = v11;
  *(a4 + 16) = v13;
  if (v7 > 3)
  {
    switch(v7)
    {
      case 4:
        if ((*(*a1 + 64))(a1, 4, 0))
        {
          return 0;
        }

        if (v5 > 0x1F)
        {
          if (v5 > 0x2F)
          {
            return 0;
          }

          bzero((a4 + 72), v10 >> 3);
          memcpy((a4 + 72), &a1[4 * v5 + 1004], v10 >> 3);
        }

        else
        {
          bzero((a4 + 72), v10);
          memcpy((a4 + 72), &a1[32 * v5 + 108], v10);
        }

        return 1;
      case 5:
        result = (*(*a1 + 64))(a1, 5, 0);
        if (result)
        {
          return 0;
        }

        if (v5 <= 1)
        {
          if (v5)
          {
            if (v5 != 1)
            {
              return result;
            }

            v14 = a1[1197];
          }

          else
          {
            v14 = a1[1196];
          }

LABEL_73:
          *(a4 + 72) = v14;
          return 1;
        }

        if (v5 == 2)
        {
          v14 = *(a1 + 4792);
          goto LABEL_73;
        }

        if (v5 == 3)
        {
          memcpy((a4 + 72), a1[1199], v10 * v10);
          return 1;
        }

        if (v5 != 4)
        {
          return result;
        }

        v16 = *(a1 + 601);
        v17 = *(a1 + 602);
        v18 = *(a1 + 603);
        v19 = *(a1 + 604);
        break;
      case 6:
        if (v5 > 7)
        {
          if (v5 > 0xF)
          {
            if (v5 > 0x4F)
            {
              if (v5 != 80)
              {
                return 0;
              }

              v14 = a1[1856];
              goto LABEL_73;
            }

            v23 = &a1[8 * (v5 - 16)];
            v16 = *(v23 + 672);
            v17 = *(v23 + 673);
            v18 = *(v23 + 674);
            v19 = *(v23 + 675);
          }

          else
          {
            v21 = &a1[8 * (v5 - 8)];
            v16 = *(v21 + 640);
            v17 = *(v21 + 641);
            v18 = *(v21 + 642);
            v19 = *(v21 + 643);
          }
        }

        else
        {
          v15 = &a1[8 * v5];
          v16 = *(v15 + 608);
          v17 = *(v15 + 609);
          v18 = *(v15 + 610);
          v19 = *(v15 + 611);
        }

        break;
      default:
        return result;
    }

    *(a4 + 120) = v19;
    *(a4 + 104) = v18;
    *(a4 + 88) = v17;
    *(a4 + 72) = v16;
    return 1;
  }

  switch(v7)
  {
    case 1:
      if (v5 > 0x20)
      {
        if (v5 != 33)
        {
          return 0;
        }

        *(a4 + 72) = *(a1 + 82);
        return 1;
      }

      if (v5 > 30)
      {
        if (v5 == 31)
        {
          v22 = a1[39];
        }

        else
        {
          v22 = a1[40];
        }
      }

      else
      {
        if (v5 != 29)
        {
          if (v5 == 30)
          {
            v20 = a1[38];
            if (v20)
            {
              if ((*(a1 + 83) & 3) == 0)
              {
                v25 = a1[38];
              }
            }

            *(a4 + 72) = v20;
            return 1;
          }

          v14 = a1[v5 + 8];
          goto LABEL_73;
        }

        v22 = a1[37];
      }

      LODWORD(v28) = 0;
      if (sub_10000F464(&v28))
      {
        v24 = ~(-1 << v28);
      }

      else
      {
        v24 = -1;
      }

      v14 = v24 & v22;
      goto LABEL_73;
    case 2:
      if (v5 <= 0x1F)
      {
        *(a4 + 72) = *&a1[2 * v5 + 42];
        return 1;
      }

      if (v5 == 33)
      {
        *(a4 + 72) = *(a1 + 213);
        return 1;
      }

      if (v5 == 32)
      {
        *(a4 + 72) = *(a1 + 212);
        return 1;
      }

      if (v5 <= 0x41)
      {
        *(a4 + 72) = a1[2 * v5 - 26];
        return 1;
      }

      if (v5 > 0x61)
      {
        return 0;
      }

      v14 = a1[2 * v5 - 90];
      goto LABEL_73;
    case 3:
      if (v5 == 2)
      {
        *(a4 + 72) = *(a1 + 2423);
      }

      else
      {
        if (v5 != 1)
        {
          if (v5)
          {
            return 0;
          }

          v14 = a1[1210];
          goto LABEL_73;
        }

        *(a4 + 72) = *(a1 + 2422);
      }

      return 1;
  }

  return result;
}

uint64_t sub_10005613C(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v5 = a3;
  if (a2 == -1)
  {
    if (a3 > 0xA)
    {
      return 0;
    }

    v5 = dword_100067120[a3];
    v7 = 1;
  }

  else
  {
    v7 = a2;
  }

  if ((*(*a1 + 64))(a1, v7, 0))
  {
    return 0;
  }

  result = sub_10004EABC(*(a1 + 16), v7, v5);
  if (result)
  {
    result = 0;
    if (v7 > 3)
    {
      switch(v7)
      {
        case 4:
          if (v5 > 0x1F)
          {
            if ((v5 & 0xFFFFFFF0) != 0x20)
            {
              return 0;
            }

            v17 = sub_100052E04() >> 3;
            v18 = (a1 + 32 * (v5 - 32) + 9056);
          }

          else
          {
            v17 = sub_100052E04();
            v18 = (a1 + (v5 << 8) + 864);
          }

          memcpy(v18, (a4 + 72), v17);
          return (*(*a1 + 72))(a1, v7) == 0;
        case 5:
          if (v5 < 3)
          {
            return 0;
          }

          if (v5 == 4)
          {
            v29 = *(a4 + 72);
            v30 = *(a4 + 88);
            v31 = *(a4 + 104);
            *(a1 + 9664) = *(a4 + 120);
            *(a1 + 9648) = v31;
            *(a1 + 9632) = v30;
            *(a1 + 9616) = v29;
          }

          else
          {
            if (v5 != 3)
            {
              return 0;
            }

            v19 = sub_100052E04();
            memcpy(*(a1 + 9592), (a4 + 72), v19 * v19);
          }

          return (*(*a1 + 72))(a1, v7) == 0;
        case 6:
          if (v5 <= 7)
          {
            v9 = (a1 + (v5 << 6));
            v10 = *(a4 + 72);
            v11 = *(a4 + 88);
            v12 = *(a4 + 104);
            v9[611] = *(a4 + 120);
            v9[610] = v12;
            v9[609] = v11;
            v9[608] = v10;
            return 1;
          }

          if (v5 <= 0xF)
          {
            v20 = (a1 + ((v5 - 8) << 6));
            v21 = *(a4 + 72);
            v22 = *(a4 + 88);
            v23 = *(a4 + 104);
            v20[643] = *(a4 + 120);
            v20[642] = v23;
            v20[641] = v22;
            v20[640] = v21;
            return 1;
          }

          if (v5 <= 0x4F)
          {
            v25 = (a1 + ((v5 - 16) << 6));
            v26 = *(a4 + 72);
            v27 = *(a4 + 88);
            v28 = *(a4 + 104);
            v25[675] = *(a4 + 120);
            v25[674] = v28;
            v25[673] = v27;
            v25[672] = v26;
            return 1;
          }

          if (v5 == 80)
          {
            *(a1 + 14848) = *(a4 + 72);
            return 1;
          }

          return 0;
      }
    }

    else
    {
      switch(v7)
      {
        case 1:
          if (v5 <= 0x20)
          {
            v13 = *(a4 + 72);
            v14 = v13;
            if (v5 > 30)
            {
              if (v5 == 31)
              {
                if (v13 && (*(a1 + 332) & 1) == 0)
                {
                  v33 = *(a4 + 72);
                }

                *(a1 + 312) = v13;
                return (*(*a1 + 72))(a1, v7) == 0;
              }

              v24 = *(a1 + 332);
              if (v14)
              {
                v35 = *(a4 + 72);
              }

              else
              {
                v35 = 0;
              }

              *(a1 + 320) = v35;
              v34 = v24 & 0xFFFFFFFB;
            }

            else
            {
              if (v5 == 29)
              {
                if (v13 && (*(a1 + 332) & 1) == 0)
                {
                  v32 = *(a4 + 72);
                }

                *(a1 + 296) = v13;
                return (*(*a1 + 72))(a1, v7) == 0;
              }

              if (v5 != 30)
              {
                *(a1 + 8 * v5 + 64) = v13;
                return (*(*a1 + 72))(a1, v7) == 0;
              }

              v15 = *(a1 + 332);
              if (v14)
              {
                if ((v15 & 1) == 0)
                {
                  v15 &= 0xFFFFFFFC;
                }

                v16 = *(a4 + 72);
              }

              else
              {
                v16 = 0;
              }

              *(a1 + 304) = v16;
              v34 = v15 & 0xFFFFFFF7;
            }

            *(a1 + 332) = v34;
            return (*(*a1 + 72))(a1, v7) == 0;
          }

          if (v5 != 33)
          {
            return 0;
          }

          *(a1 + 328) = *(a4 + 72);
          return (*(*a1 + 72))(a1, v7) == 0;
        case 2:
          if (v5 > 0x1F)
          {
            if (v5 == 33)
            {
              *(a1 + 852) = *(a4 + 72);
            }

            else if (v5 == 32)
            {
              *(a1 + 848) = *(a4 + 72);
            }

            else if (v5 > 0x41)
            {
              if (v5 > 0x61)
              {
                return 0;
              }

              *(a1 + 16 * (v5 - 66) + 336) = *(a4 + 72);
            }

            else
            {
              *(a1 + 16 * (v5 - 34) + 336) = *(a4 + 72);
            }
          }

          else
          {
            *(a1 + 16 * v5 + 336) = *(a4 + 72);
          }

          return (*(*a1 + 72))(a1, v7) == 0;
        case 3:
          if (v5 == 2)
          {
            *(a1 + 9692) = *(a4 + 72);
          }

          else if (v5 == 1)
          {
            *(a1 + 9688) = *(a4 + 72);
          }

          else
          {
            if (v5)
            {
              return 0;
            }

            *(a1 + 9680) = *(a4 + 72);
          }

          return (*(*a1 + 72))(a1, v7) == 0;
      }
    }
  }

  return result;
}

uint64_t sub_1000565E8(uint64_t a1, int a2, char a3)
{
  v3 = 4;
  if (a2 > 3)
  {
    if (a2 > 5)
    {
      if (a2 == 6)
      {
        old_stateCnt[0] = 1296;
        v6 = (a1 + 9728);
        v7 = *(*(a1 + 16) + 16);
        v8 = 25;
      }

      else
      {
        if (a2 != 7)
        {
          return v3;
        }

        old_stateCnt[0] = 130;
        v6 = (a1 + 14912);
        v7 = *(*(a1 + 16) + 16);
        v8 = 15;
      }

      return thread_get_state(v7, v8, v6, old_stateCnt);
    }

    if (a2 == 4)
    {

      return sub_1000534F0(a1, a3);
    }

    else
    {

      return sub_10005367C();
    }
  }

  else
  {
    if (a2 <= 1)
    {
      if (a2)
      {
        if (a2 == 1)
        {

          return sub_100052ED4(a1, a3);
        }
      }

      else
      {
        v11 = sub_100052ED4(a1, a3);
        v12 = sub_100053300(a1, a3);
        v13 = a1;
        v14 = v12 | v11;
        v15 = a3;
        if ((a3 & 1) != 0 || *(a1 + 15464))
        {
          old_stateCnt[0] = 4;
          state = thread_get_state(*(*(a1 + 16) + 16), 7, (a1 + 9680), old_stateCnt);
          v13 = a1;
          *(a1 + 15464) = state;
        }

        else
        {
          state = 0;
        }

        v17 = v14 | state;
        old_stateCnt[0] = 130;
        v18 = thread_get_state(*(*(v13 + 16) + 16), 15, (v13 + 14912), old_stateCnt);
        if (atomic_load_explicit(&qword_10047DFC8, memory_order_acquire) != -1)
        {
          v21 = old_stateCnt;
          *old_stateCnt = &v20;
          std::__call_once(&qword_10047DFC8, &v21, sub_100057E3C);
        }

        v19 = v17 | v18;
        if (byte_10047DFC0 == 1)
        {
          sub_1000534F0(a1, v15);
          sub_10005367C();
        }

        old_stateCnt[0] = 1296;
        thread_get_state(*(*(a1 + 16) + 16), 25, (a1 + 9728), old_stateCnt);
        return v19;
      }

      return v3;
    }

    if (a2 != 2)
    {
      if ((a3 & 1) != 0 || (v3 = *(a1 + 15464), v3))
      {
        old_stateCnt[0] = 4;
        v3 = thread_get_state(*(*(a1 + 16) + 16), 7, (a1 + 9680), old_stateCnt);
        *(a1 + 15464) = v3;
      }

      return v3;
    }

    return sub_100053300(a1, a3);
  }
}

uint64_t sub_1000568F0(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  result = (*(*a1 + 64))(a1, a2, 0);
  if (!result)
  {
    result = 4;
    if (v2 > 3)
    {
      if (v2 > 5)
      {
        if (v2 == 6)
        {
          v6 = *(*(a1 + 16) + 16);
          v7 = (a1 + 9728);
          v8 = 25;
          v9 = 1296;
        }

        else
        {
          if (v2 != 7)
          {
            return result;
          }

          v6 = *(*(a1 + 16) + 16);
          v7 = (a1 + 14912);
          v8 = 15;
          v9 = 130;
        }

        return thread_set_state(v6, v8, v7, v9);
      }

      else if (v2 == 4)
      {

        return sub_100053984(a1);
      }

      else
      {

        return sub_100053AD8();
      }
    }

    else if (v2 > 1)
    {
      if (v2 == 2)
      {
        result = thread_set_state(*(*(a1 + 16) + 16), 17, (a1 + 336), 0x84u);
        *(a1 + 15444) = result;
        *(a1 + 15440) = -1;
      }

      else
      {
        result = thread_set_state(*(*(a1 + 16) + 16), 7, (a1 + 9680), 4u);
        *(a1 + 15468) = result;
        *(a1 + 15464) = -1;
      }
    }

    else if (v2)
    {
      if (v2 == 1)
      {
        out_stateCnt = 68;
        memcpy(__dst, (a1 + 64), 0x110uLL);
        v5 = thread_convert_thread_state(*(*(a1 + 16) + 16), 2, 6, (a1 + 64), 0x44u, __dst, &out_stateCnt);
        if (sub_100010524(4))
        {
          sub_100010668("converted register values to inferior's keys, return value %d, count %d", v5, out_stateCnt);
        }

        result = thread_set_state(*(*(a1 + 16) + 16), 6, __dst, 0x44u);
        *(a1 + 15436) = result;
        *(a1 + 15432) = -1;
      }
    }

    else
    {
      out_stateCnt = 68;
      memcpy(__dst, (a1 + 64), 0x110uLL);
      v10 = thread_convert_thread_state(*(*(a1 + 16) + 16), 2, 6, (a1 + 64), 0x44u, __dst, &out_stateCnt);
      if (sub_100010524(4))
      {
        sub_100010668("converted register values to inferior's keys, return value %d, count %d", v10, out_stateCnt);
      }

      v11 = thread_set_state(*(*(a1 + 16) + 16), 6, __dst, 0x44u);
      *(a1 + 15436) = v11;
      *(a1 + 15432) = -1;
      v12 = thread_set_state(*(*(a1 + 16) + 16), 17, (a1 + 336), 0x84u);
      *(a1 + 15444) = v12;
      *(a1 + 15440) = -1;
      v13 = thread_set_state(*(*(a1 + 16) + 16), 7, (a1 + 9680), 4u);
      *(a1 + 15468) = v13;
      *(a1 + 15464) = -1;
      v14 = thread_set_state(*(*(a1 + 16) + 16), 15, (a1 + 14912), 0x82u);
      return v14 | thread_set_state(*(*(a1 + 16) + 16), 25, (a1 + 9728), 0x510u) | v11 | v12 | v13;
    }
  }

  return result;
}

BOOL sub_100056C64(_DWORD *a1, int a2)
{
  v2 = -1;
  if (a2 <= 2)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v2 = a1[3858];
      }

      else if (a2 == 2)
      {
        v2 = a1[3860];
      }
    }

    else
    {
      v2 = a1[3860] | a1[3858] | a1[3866] | a1[3862] | a1[3864] | a1[3868];
    }
  }

  else if (a2 > 4)
  {
    if (a2 == 5)
    {
      v2 = a1[3864];
    }

    else if (a2 == 6)
    {
      v2 = a1[3870];
    }
  }

  else if (a2 == 3)
  {
    v2 = a1[3866];
  }

  else
  {
    v2 = a1[3862];
  }

  return v2 == 0;
}

unint64_t sub_100056D14(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (atomic_load_explicit(&qword_10047DFC8, memory_order_acquire) != -1)
  {
    *old_stateCnt = &v17;
    v18 = old_stateCnt;
    std::__call_once(&qword_10047DFC8, &v18, sub_100057E3C);
  }

  v6 = byte_10047DFC0;
  if (byte_10047DFC0 != 1)
  {
    v7 = 6000;
    if (!a2)
    {
      goto LABEL_22;
    }

LABEL_7:
    if (!a3)
    {
      goto LABEL_22;
    }

    if (v7 >= a3)
    {
      v7 = a3;
    }

    v8 = sub_100052ED4(a1, 0);
    v9 = sub_100053300(a1, 0) | v8;
    if (*(a1 + 15464))
    {
      old_stateCnt[0] = 4;
      state = thread_get_state(*(*(a1 + 16) + 16), 7, (a1 + 9680), old_stateCnt);
      *(a1 + 15464) = state;
      if (v9 | state)
      {
        return 0;
      }
    }

    else if (v9)
    {
      return 0;
    }

    if (v6)
    {
      sub_1000534F0(a1, 0);
      sub_10005367C();
    }

    old_stateCnt[0] = 1296;
    thread_get_state(*(*(a1 + 16) + 16), 25, (a1 + 9728), old_stateCnt);
    memcpy(a2, (a1 + 64), 0x110uLL);
    memcpy((a2 + 272), (a1 + 336), 0x210uLL);
    v11 = (a2 + 800);
    if (v6)
    {
      memcpy((a2 + 800), (a1 + 864), 0x2200uLL);
      v12 = *(a1 + 9568);
      *(a2 + 9520) = *(a1 + 9584);
      *(a2 + 9504) = v12;
      memcpy((a2 + 9528), *(a1 + 9592), *(a1 + 9600) - *(a1 + 9592));
      v11 = (a2 + 9528 + *(a1 + 9600) - *(a1 + 9592));
      if (atomic_load_explicit(&qword_10047DFD8, memory_order_acquire) != -1)
      {
        *old_stateCnt = &v17;
        v18 = old_stateCnt;
        std::__call_once(&qword_10047DFD8, &v18, sub_100057E9C);
      }

      if (byte_10047DFD0 == 1)
      {
        v13 = *(a1 + 9616);
        v14 = *(a1 + 9632);
        v15 = *(a1 + 9664);
        v11[2] = *(a1 + 9648);
        v11[3] = v15;
        *v11 = v13;
        v11[1] = v14;
        v11 += 4;
      }
    }

    *v11 = *(a1 + 9680);
    memcpy(v11 + 1, (a1 + 9728), 0x1440uLL);
    if ((v11 - a2 + 5200) != v7)
    {
      sub_10005947C();
    }

    goto LABEL_22;
  }

  v7 = *(a1 + 9600) - *(a1 + 9592) + 14792;
  if (a2)
  {
    goto LABEL_7;
  }

LABEL_22:
  if (sub_100010524(4))
  {
    sub_100010668("DNBArchMachARM64::GetRegisterContext (buf = %p, len = %zu) => %zu", a2, a3, v7);
  }

  return v7;
}

unint64_t sub_100056FC0(uint64_t a1, char *__src, unint64_t a3)
{
  if (atomic_load_explicit(&qword_10047DFC8, memory_order_acquire) != -1)
  {
    *__dst = &v16;
    *out_stateCnt = __dst;
    std::__call_once(&qword_10047DFC8, out_stateCnt, sub_100057E3C);
  }

  if (byte_10047DFC0 == 1)
  {
    v6 = *(a1 + 9600) - *(a1 + 9592) + 14792;
    v7 = 0;
    if (!__src)
    {
      goto LABEL_27;
    }
  }

  else
  {
    v6 = 6000;
    v7 = 0;
    if (!__src)
    {
      goto LABEL_27;
    }
  }

  if (a3 && v6)
  {
    if (v6 >= a3)
    {
      v7 = a3;
    }

    else
    {
      v7 = v6;
    }

    memcpy((a1 + 64), __src, 0x110uLL);
    memcpy((a1 + 336), __src + 272, 0x210uLL);
    v8 = __src + 800;
    if (atomic_load_explicit(&qword_10047DFC8, memory_order_acquire) != -1)
    {
      *__dst = &v16;
      *out_stateCnt = __dst;
      std::__call_once(&qword_10047DFC8, out_stateCnt, sub_100057E3C);
    }

    if (byte_10047DFC0 == 1)
    {
      memcpy((a1 + 864), __src + 800, 0x2200uLL);
      v9 = *(__src + 1190);
      *(a1 + 9568) = *(__src + 594);
      *(a1 + 9584) = v9;
      memcpy(*(a1 + 9592), __src + 9528, *(a1 + 9600) - *(a1 + 9592));
      v8 = &__src[*(a1 + 9600) - *(a1 + 9592) + 9528];
      if (atomic_load_explicit(&qword_10047DFD8, memory_order_acquire) != -1)
      {
        *__dst = &v16;
        *out_stateCnt = __dst;
        std::__call_once(&qword_10047DFD8, out_stateCnt, sub_100057E9C);
      }

      if (byte_10047DFD0 == 1)
      {
        v10 = *v8;
        v11 = *(v8 + 1);
        v12 = *(v8 + 2);
        *(a1 + 9664) = *(v8 + 3);
        *(a1 + 9648) = v12;
        *(a1 + 9632) = v11;
        *(a1 + 9616) = v10;
        v8 += 64;
      }
    }

    *(a1 + 9680) = *v8;
    memcpy((a1 + 9728), v8 + 16, 0x1440uLL);
    if (v8 - __src + 5200 != v7)
    {
      sub_1000594A8();
    }

    out_stateCnt[0] = 68;
    memcpy(__dst, (a1 + 64), 0x110uLL);
    v13 = thread_convert_thread_state(*(*(a1 + 16) + 16), 2, 6, (a1 + 64), 0x44u, __dst, out_stateCnt);
    if (sub_100010524(4))
    {
      sub_100010668("converted register values to inferior's keys, return value %d, count %d", v13, out_stateCnt[0]);
    }

    *(a1 + 15436) = thread_set_state(*(*(a1 + 16) + 16), 6, __dst, 0x44u);
    *(a1 + 15432) = -1;
    *(a1 + 15444) = thread_set_state(*(*(a1 + 16) + 16), 17, (a1 + 336), 0x84u);
    *(a1 + 15440) = -1;
    if (atomic_load_explicit(&qword_10047DFC8, memory_order_acquire) != -1)
    {
      *__dst = &v16;
      *out_stateCnt = __dst;
      std::__call_once(&qword_10047DFC8, out_stateCnt, sub_100057E3C);
    }

    if (byte_10047DFC0 == 1)
    {
      sub_100053984(a1);
      sub_100053AD8();
    }

    *(a1 + 15468) = thread_set_state(*(*(a1 + 16) + 16), 7, (a1 + 9680), 4u);
    *(a1 + 15464) = -1;
    thread_set_state(*(*(a1 + 16) + 16), 25, (a1 + 9728), 0x510u);
  }

LABEL_27:
  if (sub_100010524(4))
  {
    sub_100010668("DNBArchMachARM64::SetRegisterContext (buf = %p, len = %zu) => %zu", __src, a3, v7);
  }

  return v7;
}

uint64_t sub_10005735C(uint64_t a1)
{
  v2 = thread_abort_safely(*(*(a1 + 16) + 16));
  if (sub_100010524(4))
  {
    sub_100010668("thread = 0x%4.4x calling thread_abort_safely (tid) => %u (SetGPRState() for stop_count = %u)", *(*(a1 + 16) + 16), v2, *(**(a1 + 16) + 444));
  }

  if (sub_100052ED4(a1, 1))
  {
    if (sub_100010524(4))
    {
      sub_100010668("DNBArchMachARM64::SaveRegisterState () error: GPR regs failed to read: %u ");
    }

    return 0xFFFFFFFFLL;
  }

  if (sub_100053300(a1, 1))
  {
    if (sub_100010524(4))
    {
      sub_100010668("DNBArchMachARM64::SaveRegisterState () error: %s regs failed to read: %u");
    }

    return 0xFFFFFFFFLL;
  }

  v4 = (*(a1 + 8) + 1);
  *(a1 + 8) = v4;
  v5 = *(a1 + 16072);
  if (v5)
  {
    while (1)
    {
      while (1)
      {
        v7 = v5;
        v8 = v5[16];
        if (v4 >= v8)
        {
          break;
        }

        v5 = *v7;
        v6 = v7;
        if (!*v7)
        {
          goto LABEL_17;
        }
      }

      if (v8 >= v4)
      {
        break;
      }

      v5 = *(v7 + 1);
      if (!v5)
      {
        v6 = (v7 + 8);
        goto LABEL_17;
      }
    }
  }

  else
  {
    v6 = (a1 + 16072);
    v7 = (a1 + 16072);
LABEL_17:
    v9 = v7;
    v7 = operator new(0x3A80uLL, 0x40uLL);
    *(v7 + 16) = v4;
    bzero(v7 + 128, 0x3A00uLL);
    sub_1000578FC(v7 + 1204);
    *v7 = 0;
    *(v7 + 1) = 0;
    *(v7 + 2) = v9;
    *v6 = v7;
    v10 = **(a1 + 16064);
    v11 = v7;
    if (v10)
    {
      *(a1 + 16064) = v10;
      v11 = *v6;
    }

    sub_100008F28(*(a1 + 16072), v11);
    ++*(a1 + 16080);
  }

  memcpy(v7 + 128, (a1 + 64), 0x2520uLL);
  v12 = *(a1 + 9584);
  *(v7 + 602) = *(a1 + 9568);
  *(v7 + 4824) = v12;
  if (v7 + 128 != (a1 + 64))
  {
    sub_100057C9C(v7 + 1207, *(a1 + 9592), *(a1 + 9600), *(a1 + 9600) - *(a1 + 9592));
  }

  v13 = *(a1 + 9616);
  v14 = *(a1 + 9632);
  v15 = *(a1 + 9648);
  *(v7 + 608) = *(a1 + 9664);
  *(v7 + 607) = v15;
  *(v7 + 606) = v14;
  *(v7 + 605) = v13;
  memcpy(v7 + 9744, (a1 + 9680), 0x1470uLL);
  return v4;
}

uint64_t sub_100057594(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 16072);
  if (!v2)
  {
    return 0;
  }

  v4 = a1 + 16072;
  do
  {
    v5 = *(v2 + 64);
    v6 = v5 >= a2;
    v7 = v5 < a2;
    if (v6)
    {
      v4 = v2;
    }

    v2 = *(v2 + 8 * v7);
  }

  while (v2);
  if (v4 == a1 + 16072 || *(v4 + 64) > a2)
  {
    return 0;
  }

  memcpy((a1 + 64), (v4 + 128), 0x110uLL);
  memcpy((a1 + 336), (v4 + 400), 0x210uLL);
  out_stateCnt = 68;
  memcpy(__dst, (a1 + 64), 0x110uLL);
  v9 = thread_convert_thread_state(*(*(a1 + 16) + 16), 2, 6, (a1 + 64), 0x44u, __dst, &out_stateCnt);
  if (sub_100010524(4))
  {
    sub_100010668("converted register values to inferior's keys, return value %d, count %d", v9, out_stateCnt);
  }

  v10 = thread_set_state(*(*(a1 + 16) + 16), 6, __dst, 0x44u);
  *(a1 + 15436) = v10;
  *(a1 + 15432) = -1;
  if (v10)
  {
    if (sub_100010524(4))
    {
      sub_100010668("DNBArchMachARM64::RestoreRegisterState (save_id = %u) error: GPR regs failed to write: %u");
    }

    goto LABEL_19;
  }

  v11 = thread_set_state(*(*(a1 + 16) + 16), 17, (a1 + 336), 0x84u);
  *(a1 + 15444) = v11;
  *(a1 + 15440) = -1;
  if (v11)
  {
    if (sub_100010524(4))
    {
      sub_100010668("DNBArchMachARM64::RestoreRegisterState (save_id = %u) error: %s regs failed to write: %u");
    }

LABEL_19:
    v12 = 0;
    v13 = *(v4 + 8);
    if (v13)
    {
      goto LABEL_20;
    }

LABEL_23:
    v15 = v4;
    do
    {
      v14 = v15[2];
      v16 = *v14 == v15;
      v15 = v14;
    }

    while (!v16);
    goto LABEL_26;
  }

  v12 = 1;
  v13 = *(v4 + 8);
  if (!v13)
  {
    goto LABEL_23;
  }

  do
  {
LABEL_20:
    v14 = v13;
    v13 = *v13;
  }

  while (v13);
LABEL_26:
  v17 = v12;
  if (*(a1 + 16064) == v4)
  {
    *(a1 + 16064) = v14;
  }

  --*(a1 + 16080);
  sub_100009B98(*(a1 + 16072), v4);
  v18 = *(v4 + 9656);
  if (v18)
  {
    *(v4 + 9664) = v18;
    operator delete(v18);
  }

  operator delete(v4, 0x40uLL);
  return v17;
}

uint64_t sub_1000577C8(uint64_t a1)
{
  *a1 = off_1000700A0;
  sub_100057DD4(a1 + 16064, *(a1 + 16072));
  v2 = *(a1 + 16032);
  if (v2)
  {
    *(a1 + 16040) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 16008);
  if (v3)
  {
    *(a1 + 16016) = v3;
    operator delete(v3);
  }

  v4 = *(a1 + 9592);
  if (v4)
  {
    *(a1 + 9600) = v4;
    operator delete(v4);
  }

  return a1;
}

void sub_100057848(void **a1)
{
  *a1 = off_1000700A0;
  sub_100057DD4((a1 + 2008), a1[2009]);
  v2 = a1[2004];
  if (v2)
  {
    a1[2005] = v2;
    operator delete(v2);
  }

  v3 = a1[2001];
  if (v3)
  {
    a1[2002] = v3;
    operator delete(v3);
  }

  v4 = a1[1199];
  if (v4)
  {
    a1[1200] = v4;
    operator delete(v4);
  }

  operator delete(a1, 0x40uLL);
}

void *sub_1000578FC(void *a1)
{
  a1[3] = 0;
  a1[4] = 0;
  a1[5] = 0;
  if (atomic_load_explicit(&qword_10047DFC8, memory_order_acquire) != -1)
  {
    v10 = &v8;
    v9 = &v10;
    std::__call_once(&qword_10047DFC8, &v9, sub_100057E3C);
  }

  if (byte_10047DFC0 == 1)
  {
    if (atomic_load_explicit(&qword_10047DFE8, memory_order_acquire) != -1)
    {
      v10 = &v8;
      v9 = &v10;
      std::__call_once(&qword_10047DFE8, &v9, sub_100057EFC);
    }

    v2 = (dword_10047DFE0 * dword_10047DFE0);
    v4 = a1[3];
    v3 = a1[4];
    if (v2 <= &v3[-v4])
    {
      if (v2 < &v3[-v4])
      {
        a1[4] = v4 + v2;
      }
    }

    else
    {
      v5 = a1[5];
      if (v5 - v3 < v2 - &v3[-v4])
      {
        operator new();
      }

      v6 = (v2 + v4);
      bzero(v3, v2 - &v3[-v4]);
      a1[4] = v6;
    }
  }

  return a1;
}

void sub_100057AC0(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (a2 > (v3 - v4) >> 4)
  {
    v5 = (v4 - *a1) >> 4;
    v6 = v5 + a2;
    if ((v5 + a2) >> 60)
    {
      sub_100008888();
    }

    v7 = v3 - *a1;
    if (v7 >> 3 > v6)
    {
      v6 = v7 >> 3;
    }

    if (v7 >= 0x7FFFFFFFFFFFFFF0)
    {
      v8 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v8 = v6;
    }

    if (v8)
    {
      if (!(v8 >> 60))
      {
        operator new();
      }

      sub_100008888();
    }

    v14 = 16 * v5;
    v15 = 16 * v5 + 16 * a2;
    v16 = (a2 - 1) & 0xFFFFFFFFFFFFFFFLL;
    if (v16)
    {
      v17 = v16 + 1;
      v18 = (v16 + 1) & 0x1FFFFFFFFFFFFFFELL;
      v19 = v14 + 16 * v18;
      v20 = v14 + 16;
      v21 = v18;
      do
      {
        *(v20 - 16) = 0;
        *v20 = 0;
        *(v20 - 8) = 0;
        *(v20 + 8) = 0;
        v20 += 32;
        v21 -= 2;
      }

      while (v21);
      if (v17 == v18)
      {
LABEL_26:
        v22 = *a1;
        v23 = *(a1 + 8) - *a1;
        v24 = v14 - v23;
        memcpy((v14 - v23), *a1, v23);
        *a1 = v24;
        *(a1 + 8) = v15;
        *(a1 + 16) = 0;
        if (v22)
        {

          operator delete(v22);
        }

        return;
      }
    }

    else
    {
      v19 = 16 * v5;
    }

    do
    {
      *v19 = 0;
      *(v19 + 8) = 0;
      v19 += 16;
    }

    while (v19 != v15);
    goto LABEL_26;
  }

  if (a2)
  {
    v9 = v4 + 16 * a2;
    if (((a2 - 1) & 0xFFFFFFFFFFFFFFFLL) == 0)
    {
      goto LABEL_35;
    }

    v10 = ((a2 - 1) & 0xFFFFFFFFFFFFFFFLL) + 1;
    v11 = v4 + 16 * (v10 & 0x1FFFFFFFFFFFFFFELL);
    v12 = v4 + 16;
    v13 = v10 & 0x1FFFFFFFFFFFFFFELL;
    do
    {
      *(v12 - 16) = 0;
      *v12 = 0;
      *(v12 - 8) = 0;
      *(v12 + 8) = 0;
      v12 += 32;
      v13 -= 2;
    }

    while (v13);
    v4 = v11;
    if (v10 != (v10 & 0x1FFFFFFFFFFFFFFELL))
    {
LABEL_35:
      do
      {
        *v4 = 0;
        *(v4 + 8) = 0;
        v4 += 16;
      }

      while (v4 != v9);
    }

    v4 = v9;
  }

  *(a1 + 8) = v4;
}

char *sub_100057C9C(char **a1, char *a2, uint64_t a3, unint64_t a4)
{
  v6 = a1[2];
  result = *a1;
  if (v6 - result < a4)
  {
    if (result)
    {
      a1[1] = result;
      v8 = a4;
      operator delete(result);
      a4 = v8;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    if ((a4 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_100008888();
  }

  v9 = a1[1];
  v10 = v9 - result;
  if (v9 - result >= a4)
  {
    v14 = a3 - a2;
    if (v14)
    {
      v15 = result;
      memmove(result, a2, v14);
      result = v15;
    }

    v13 = &result[v14];
  }

  else
  {
    v11 = &a2[v10];
    if (v9 != result)
    {
      result = memmove(result, a2, v10);
      v9 = a1[1];
    }

    v12 = a3 - v11;
    if (v12)
    {
      result = memmove(v9, v11, v12);
    }

    v13 = &v9[v12];
  }

  a1[1] = v13;
  return result;
}

void sub_100057DD4(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_100057DD4(a1, *a2);
    sub_100057DD4(a1, a2[1]);
    v4 = a2[1207];
    if (v4)
    {
      a2[1208] = v4;
      operator delete(v4);
    }

    operator delete(a2, 0x40uLL);
  }
}

uint64_t sub_100057E3C()
{
  v2 = 0;
  v1 = 4;
  result = sysctlbyname("hw.optional.arm.FEAT_SME", &v2, &v1, 0, 0);
  if (result != -1)
  {
    byte_10047DFC0 = v2 == 1;
  }

  return result;
}

uint64_t sub_100057E9C()
{
  v2 = 0;
  v1 = 4;
  result = sysctlbyname("hw.optional.arm.FEAT_SME2", &v2, &v1, 0, 0);
  if (result != -1)
  {
    byte_10047DFD0 = v2 == 1;
  }

  return result;
}

void sub_100057EFC()
{
  if (atomic_load_explicit(&qword_10047DFC8, memory_order_acquire) != -1)
  {
    v2 = &v0;
    v1 = &v2;
    std::__call_once(&qword_10047DFC8, &v1, sub_100057E3C);
  }

  if (byte_10047DFC0 == 1)
  {
    LODWORD(v1) = 0;
    v2 = 4;
    if (sysctlbyname("hw.optional.arm.sme_max_svl_b", &v1, &v2, 0, 0) != -1)
    {
      dword_10047DFE0 = v1;
    }
  }
}

void sub_100057FA8()
{
  v0 = 0;
  v1 = off_100074E10;
  v2 = off_100074A10;
  v3 = 272;
  do
  {
    if (atomic_load_explicit(&qword_10047DFC8, memory_order_acquire) != -1)
    {
      v12 = &v20;
      v21 = &v12;
      std::__call_once(&qword_10047DFC8, &v21, sub_100057E3C);
    }

    if (byte_10047DFC0 == 1)
    {
      LODWORD(v12) = 2;
      HIDWORD(v12) = v0;
      v5 = off_100070290[v0];
      v13 = off_100070190[v0];
      v14 = v5;
      *v15 = 0x1000060004;
      *&v15[8] = v3;
      LODWORD(v16) = -1;
      HIDWORD(v16) = v0 | 0x40;
      LODWORD(v17) = -1;
      HIDWORD(v17) = v0 + 34;
      v18 = 0;
      v19 = v1;
    }

    else
    {
      LODWORD(v12) = 2;
      HIDWORD(v12) = v0;
      v4 = off_100070290[v0];
      v13 = off_100070190[v0];
      v14 = v4;
      *v15 = 0x1000060004;
      *&v15[8] = v3;
      LODWORD(v16) = -1;
      HIDWORD(v16) = v0 | 0x40;
      LODWORD(v17) = -1;
      HIDWORD(v17) = v0 + 34;
      v18 = 0;
      v19 = v2;
    }

    sub_100058378(&qword_10047E048, &v12);
    ++v0;
    v1 += 5;
    v2 += 4;
    v3 += 16;
  }

  while (v0 != 32);
  v12 = 0x2000000002;
  v13 = "fpsr";
  v14 = 0;
  *v15 = 196609;
  *&v15[4] = 0x31000000004;
  v16 = -1;
  v17 = -1;
  v18 = 0;
  v19 = 0;
  sub_100058378(&qword_10047E048, &v12);
  v12 = 0x2100000002;
  v13 = "fpcr";
  v14 = 0;
  *v15 = 196609;
  *&v15[4] = 0x31400000004;
  v16 = -1;
  v17 = -1;
  v18 = 0;
  v19 = 0;
  sub_100058378(&qword_10047E048, &v12);
  v6 = 0;
  v7 = off_100074E10;
  v8 = off_100074A10;
  do
  {
    if (atomic_load_explicit(&qword_10047DFC8, memory_order_acquire) != -1)
    {
      v12 = &v20;
      v21 = &v12;
      std::__call_once(&qword_10047DFC8, &v21, sub_100057E3C);
    }

    if (byte_10047DFC0 == 1)
    {
      LODWORD(v12) = 2;
      HIDWORD(v12) = v6 + 66;
      v13 = off_100070390[v6];
      v14 = 0;
      *v15 = 262147;
      *&v15[4] = 8;
      v16 = -1;
      v17 = -1;
      v18 = 0;
      v19 = v7;
    }

    else
    {
      LODWORD(v12) = 2;
      HIDWORD(v12) = v6 + 66;
      v13 = off_100070390[v6];
      v14 = 0;
      *v15 = 262147;
      *&v15[4] = 8;
      v16 = -1;
      v17 = -1;
      v18 = 0;
      v19 = v8;
    }

    sub_100058378(&qword_10047E048, &v12);
    ++v6;
    v7 += 5;
    v8 += 4;
  }

  while (v6 != 32);
  v9 = 0;
  v10 = off_100074E10;
  v11 = off_100074A10;
  do
  {
    if (atomic_load_explicit(&qword_10047DFC8, memory_order_acquire) != -1)
    {
      v12 = &v20;
      v21 = &v12;
      std::__call_once(&qword_10047DFC8, &v21, sub_100057E3C);
    }

    if (byte_10047DFC0 == 1)
    {
      LODWORD(v12) = 2;
      HIDWORD(v12) = v9 + 34;
      v13 = off_100070490[v9];
      v14 = 0;
      *v15 = 262147;
      *&v15[4] = 4;
      v16 = -1;
      v17 = -1;
      v18 = 0;
      v19 = v10;
    }

    else
    {
      LODWORD(v12) = 2;
      HIDWORD(v12) = v9 + 34;
      v13 = off_100070490[v9];
      v14 = 0;
      *v15 = 262147;
      *&v15[4] = 4;
      v16 = -1;
      v17 = -1;
      v18 = 0;
      v19 = v11;
    }

    sub_100058378(&qword_10047E048, &v12);
    ++v9;
    v10 += 5;
    v11 += 4;
  }

  while (v9 != 32);
}

void sub_100058378(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v3 >= v4)
  {
    v9 = *a1;
    v10 = 0x8E38E38E38E38E39 * ((v3 - *a1) >> 3);
    v11 = v10 + 1;
    if (v10 + 1 > 0x38E38E38E38E38ELL)
    {
      sub_100008888();
    }

    v12 = 0x8E38E38E38E38E39 * ((v4 - v9) >> 3);
    if (2 * v12 > v11)
    {
      v11 = 2 * v12;
    }

    if (v12 >= 0x1C71C71C71C71C7)
    {
      v13 = 0x38E38E38E38E38ELL;
    }

    else
    {
      v13 = v11;
    }

    if (v13)
    {
      if (v13 <= 0x38E38E38E38E38ELL)
      {
        operator new();
      }

      sub_100008888();
    }

    v14 = 8 * ((v3 - *a1) >> 3);
    v15 = *(a2 + 48);
    *(v14 + 32) = *(a2 + 32);
    *(v14 + 48) = v15;
    *(v14 + 64) = *(a2 + 64);
    v16 = *(a2 + 16);
    *v14 = *a2;
    *(v14 + 16) = v16;
    v8 = 72 * v10 + 72;
    v17 = 72 * v10 - (v3 - v9);
    memcpy((v14 - (v3 - v9)), v9, v3 - v9);
    *a1 = v17;
    *(a1 + 8) = v8;
    *(a1 + 16) = 0;
    if (v9)
    {
      operator delete(v9);
    }
  }

  else
  {
    *v3 = *a2;
    v5 = *(a2 + 16);
    v6 = *(a2 + 32);
    v7 = *(a2 + 48);
    *(v3 + 64) = *(a2 + 64);
    *(v3 + 32) = v6;
    *(v3 + 48) = v7;
    *(v3 + 16) = v5;
    v8 = v3 + 72;
  }

  *(a1 + 8) = v8;
}

void sub_1000584E0()
{
  if (atomic_load_explicit(&qword_10047DFC8, memory_order_acquire) != -1)
  {
    v9 = &v20;
    v21 = &v9;
    std::__call_once(&qword_10047DFC8, &v21, sub_100057E3C);
  }

  if (byte_10047DFC0 == 1)
  {
    if (atomic_load_explicit(&qword_10047DFE8, memory_order_acquire) != -1)
    {
      v9 = &v20;
      v21 = &v9;
      std::__call_once(&qword_10047DFE8, &v21, sub_100057EFC);
    }

    v0 = 0;
    v1 = dword_10047DFE0;
    v2 = off_100074E10;
    v3 = 800;
    do
    {
      v4 = off_100070590[v0];
      LODWORD(v9) = 4;
      HIDWORD(v9) = v0;
      v10 = v4;
      v11 = 0;
      v12 = 393220;
      v13 = v1;
      v14 = v3;
      v15 = -1;
      v16 = -1;
      v17 = v0 + 68;
      v18 = 0;
      v19 = v2;
      sub_100058378(&qword_10047E030, &v9);
      ++v0;
      v2 += 5;
      v3 += 256;
    }

    while (v0 != 32);
    v5 = 0;
    v6 = v1 >> 3;
    v7 = 8992;
    do
    {
      v8 = off_100070690[v5];
      LODWORD(v9) = 4;
      HIDWORD(v9) = v5 | 0x20;
      v10 = v8;
      v11 = 0;
      v12 = 393220;
      v13 = v6;
      v14 = v7;
      v15 = -1;
      v16 = -1;
      v17 = v5 + 100;
      v18 = 0;
      v19 = 0;
      sub_100058378(&qword_10047E030, &v9);
      ++v5;
      v7 += 32;
    }

    while (v5 != 16);
  }
}

void sub_1000586B4()
{
  if (atomic_load_explicit(&qword_10047DFC8, memory_order_acquire) != -1)
  {
    v1 = &v10;
    v11 = &v1;
    std::__call_once(&qword_10047DFC8, &v11, sub_100057E3C);
  }

  if (byte_10047DFC0 == 1)
  {
    if (atomic_load_explicit(&qword_10047DFE8, memory_order_acquire) != -1)
    {
      v1 = &v10;
      v11 = &v1;
      std::__call_once(&qword_10047DFE8, &v11, sub_100057EFC);
    }

    v0 = dword_10047DFE0;
    v1 = 5;
    v2 = "svcr";
    v3 = 0;
    v4 = 196609;
    v5 = 0x252000000008;
    v6 = -1;
    v7 = -1;
    v8 = 0;
    v9 = 0;
    sub_100058378(&qword_10047E070, &v1);
    v1 = 0x100000005;
    v2 = "tpidr2";
    v3 = 0;
    v4 = 196609;
    v5 = 0x252800000008;
    v6 = -1;
    v7 = -1;
    v8 = 0;
    v9 = 0;
    sub_100058378(&qword_10047E070, &v1);
    v1 = 0x200000005;
    v2 = "svl";
    v3 = 0;
    v4 = 196609;
    v5 = 0x253000000002;
    v6 = -1;
    v7 = -1;
    v8 = 0;
    v9 = 0;
    sub_100058378(&qword_10047E070, &v1);
    v1 = 0x300000005;
    v2 = "za";
    v3 = 0;
    v4 = 393220;
    LODWORD(v5) = v0 * v0;
    HIDWORD(v5) = 9528;
    v6 = -1;
    v7 = -1;
    v8 = 0;
    v9 = 0;
    sub_100058378(&qword_10047E070, &v1);
  }

  if (atomic_load_explicit(&qword_10047DFD8, memory_order_acquire) != -1)
  {
    v1 = &v10;
    v11 = &v1;
    std::__call_once(&qword_10047DFD8, &v11, sub_100057E9C);
  }

  if (byte_10047DFD0 == 1)
  {
    v1 = 0x400000005;
    v2 = "zt0";
    v3 = 0;
    v4 = 393220;
    v5 = 0x255000000040;
    v6 = -1;
    v7 = -1;
    v8 = 0;
    v9 = 0;
    sub_100058378(&qword_10047E070, &v1);
  }
}

uint64_t sub_100058950()
{
  qword_10047E030 = 0;
  *algn_10047E038 = 0;
  qword_10047E040 = 0;
  __cxa_atexit(sub_1000557A4, &qword_10047E030, &dword_100000000);
  qword_10047E050 = 0;
  unk_10047E058 = 0;
  qword_10047E048 = 0;
  __cxa_atexit(sub_1000557A4, &qword_10047E048, &dword_100000000);
  qword_10047E078 = 0;
  unk_10047E080 = 0;
  qword_10047E070 = 0;
  __cxa_atexit(sub_1000557A4, &qword_10047E070, &dword_100000000);
  qword_10047E098 = 0;
  unk_10047E0A0 = 0;
  qword_10047E090 = 0;

  return __cxa_atexit(sub_1000557E0, &qword_10047E090, &dword_100000000);
}

uint64_t sub_100058A0C(uint64_t a1)
{
  v1 = *(a1 + 20);
  if ((v1 - 2411) >= 0xFFFFFFFA)
  {
    return *(&off_100070710 + 5 * (v1 - 2405) + 5);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100058A40(uint64_t a1, uint64_t a2)
{
  if ((*a1 & 0x80000000) == 0)
  {
    goto LABEL_6;
  }

  v2 = *(a1 + 4);
  if (*(a1 + 24) != 2 || (v2 - 85) < 0xFFFFFFEF)
  {
    goto LABEL_6;
  }

  if (*(a1 + 38) << 16 != 1114112 || *(a1 + 50) << 16 != 1114112)
  {
    result = 4294966996;
    goto LABEL_7;
  }

  v5 = *(a1 + 64);
  if (v5 <= 2 && v5 <= (v2 - 68) >> 3 && v2 == ((8 * v5) | 0x44))
  {
    v6 = a2;
    result = sub_10003B544(*(a1 + 12), *(a1 + 28), *(a1 + 40), *(a1 + 60), (a1 + 68), v5);
    a2 = v6;
  }

  else
  {
LABEL_6:
    result = 4294966992;
  }

LABEL_7:
  *(a2 + 32) = result;
  *(a2 + 24) = NDR_record;
  return result;
}

_DWORD *sub_100058B14(_DWORD *result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0)
  {
    goto LABEL_14;
  }

  v2 = result[1];
  if (v2 - 5249 < 0xFFFFEBAF)
  {
    goto LABEL_14;
  }

  v3 = result[9];
  if (v3 > 2)
  {
    goto LABEL_14;
  }

  v4 = 2 * v3;
  v5 = v3 <= (v2 - 48) >> 3 && v2 >= 8 * v3 + 48;
  if (v5 && (v6 = &result[v4], v7 = v6[11], v7 <= 0x510) && ((v8 = v2 - v4 * 4, v7 <= (v8 - 48) >> 2) ? (v9 = v8 == 4 * v7 + 48) : (v9 = 0), v9))
  {
    v10 = v6 - 4;
    *(a2 + 40) = 1296;
    v12 = a2 + 40;
    result = sub_10003B3DC(result[3], result[8], (result + 10), v3);
    *(v12 - 8) = result;
    *(v12 - 16) = NDR_record;
    if (!result)
    {
      *(a2 + 36) = v10[14];
      *(a2 + 4) = 4 * *(a2 + 40) + 44;
    }
  }

  else
  {
LABEL_14:
    *(a2 + 32) = -304;
    *(a2 + 24) = NDR_record;
  }

  return result;
}

uint64_t sub_100058C34(uint64_t result, uint64_t a2)
{
  if ((*result & 0x80000000) == 0)
  {
    goto LABEL_6;
  }

  v2 = *(result + 4);
  if (*(result + 24) != 2 || v2 - 5277 < 0xFFFFEBAF)
  {
    goto LABEL_6;
  }

  if (*(result + 38) << 16 != 1114112 || *(result + 50) << 16 != 1114112)
  {
    v4 = -300;
    goto LABEL_7;
  }

  v5 = *(result + 64);
  if (v5 > 2)
  {
    goto LABEL_6;
  }

  v4 = -304;
  if (v5 > (v2 - 76) >> 3)
  {
    goto LABEL_7;
  }

  v6 = 8 * v5;
  if (v2 < 8 * v5 + 76)
  {
    goto LABEL_7;
  }

  v7 = result + v6;
  v8 = *(v7 + 72);
  if (v8 > 0x510 || (v9 = v2 - v6, v8 > (v9 - 76) >> 2) || v9 != 4 * v8 + 76)
  {
LABEL_6:
    v4 = -304;
LABEL_7:
    *(a2 + 32) = v4;
    *(a2 + 24) = NDR_record;
    return result;
  }

  *(a2 + 40) = 1296;
  v11 = a2 + 40;
  v12 = v7 - 16;
  result = sub_10003B470(*(result + 12), *(result + 28), *(result + 40), *(result + 60), (result + 68), v5);
  *(v11 - 8) = result;
  *(v11 - 16) = NDR_record;
  if (!result)
  {
    *(a2 + 36) = *(v12 + 84);
    *(a2 + 4) = 4 * *(a2 + 40) + 44;
  }

  return result;
}

uint64_t sub_100058D9C(_DWORD *a1, uint64_t a2)
{
  v2 = a1[2];
  *a2 = *a1 & 0x1F;
  *(a2 + 4) = 36;
  v3 = a1[5] + 100;
  *(a2 + 8) = v2;
  *(a2 + 12) = 0;
  *(a2 + 16) = 0;
  *(a2 + 20) = v3;
  v4 = a1[5];
  if ((v4 - 2411) >= 0xFFFFFFFA && (v5 = *(&off_100070710 + 5 * (v4 - 2405) + 5)) != 0)
  {
    v5(a1, a2);
    return 1;
  }

  else
  {
    result = 0;
    *(a2 + 24) = NDR_record;
    *(a2 + 32) = -303;
  }

  return result;
}

void sub_100058F3C(char *a1, char *a2, int a3)
{
  snprintf(a1, 0x10uLL, "--fd=%d", dword_1000740FC);
  snprintf(a2, 0x10uLL, "--attach=%d", a3);
  execl("/Library/Apple/usr/libexec/oah/debugserver", "/Library/Apple/usr/libexec/oah/debugserver", "--native-regs", "--setsid", a1, "--handoff-attach-from-native", a2, 0);
  if (sub_100010524(2))
  {
    v6 = *__error();
    v7 = __error();
    v8 = strerror(*v7);
    sub_100010668("Failed to launch debugserver for translated process: ", v6, v8);
  }

  __break(1u);
}

void sub_100059084()
{
  if (__cxa_guard_acquire(&qword_10007DA50))
  {
    v0 = sub_100010980();
    sub_10001095C(v0, v1, &dword_100000000);
    __cxa_guard_release(&qword_10007DA50);
  }
}

void sub_1000591A8()
{
  if (__cxa_guard_acquire(&qword_10047DB30))
  {
    sub_10002A740(&qword_10047DB38[1], 1);
    v0 = sub_10003662C();
    __cxa_atexit(v0, &qword_10047DB38[1], v1);

    __cxa_guard_release(&qword_10047DB30);
  }
}

void sub_100059218()
{
  if (__cxa_guard_acquire(qword_10047DB38))
  {
    sub_10002A740(&qword_10047DB38[4], 1);
    v0 = sub_10003662C();
    __cxa_atexit(v0, &qword_10047DB38[4], v1);

    __cxa_guard_release(qword_10047DB38);
  }
}

void sub_1000592E0()
{
  if (__cxa_guard_acquire(&qword_10047DB80))
  {
    dword_10047DB78 = 4;

    __cxa_guard_release(&qword_10047DB80);
  }
}

void sub_1000593A8()
{
  if (__cxa_guard_acquire(&qword_10047DB90))
  {
    qword_10047DB88 = vm_kernel_page_size;
    __cxa_guard_release(&qword_10047DB90);
  }
}

void sub_100059440()
{
  if (__cxa_guard_acquire(&qword_10047DFB8))
  {
    dword_10047DFB0 = mach_host_self();
    __cxa_guard_release(&qword_10047DFB8);
  }
}

uint64_t std::ostream::operator<<()
{
  return std::ostream::operator<<();
}

{
  return std::ostream::operator<<();
}

{
  return std::ostream::operator<<();
}

{
  return std::ostream::operator<<();
}

{
  return std::ostream::operator<<();
}

{
  return std::ostream::operator<<();
}

void operator delete(void *__p)
{
    ;
  }
}

void operator delete(void *__p, std::align_val_t a2)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void *__cdecl operator new(size_t __sz, std::align_val_t a2)
{
    ;
  }
}

void operator new()
{
    ;
  }
}