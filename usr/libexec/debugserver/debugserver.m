uint64_t sub_100004E78(uint64_t result)
{
  v1 = *(result + 8);
  if (v1)
  {
    if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v2 = result;
      (v1->__on_zero_shared)(v1);
      std::__shared_weak_count::__release_weak(v1);
      return v2;
    }
  }

  return result;
}

uint64_t sub_100004EE4(uint64_t a1)
{
  if (!a1)
  {
    return 6;
  }

  while (1)
  {
    if (sub_100010524(0x40000))
    {
      sub_100010668("%s ctx.Events().WaitForSetEvents( 0x%08x) ...", "RNBRunLoopGetStartModeFromRemote", 160);
    }

    v2 = sub_1000128FC(a1 + 120, 0xA0u, 0);
    if (sub_100010524(0x40000))
    {
      sub_100010668("%s ctx.Events().WaitForSetEvents( 0x%08x) => 0x%08x", "RNBRunLoopGetStartModeFromRemote", 160, v2);
    }

    if ((v2 & 0x80) != 0)
    {
      if (dword_10007D9AC)
      {
        v14 = __stderrp;
        v15 = "error: packet read thread exited.\n";
        v16 = 34;
        goto LABEL_28;
      }

      v17 = "error: packet read thread exited.\n";
      goto LABEL_36;
    }

    if ((v2 & 0x20) == 0)
    {
      if (sub_100010524(0x10000))
      {
        sub_100010668("%s Connection closed before getting A packet.", "RNBRunLoopGetStartModeFromRemote");
      }

      return 6;
    }

    v19 = 0;
    v9 = sub_10002A838(a1, &v19);
    if ((v19 - 26) <= 2)
    {
      break;
    }

    if (v9)
    {
      if (v9 == 2)
      {
        if (!dword_10007D9AC)
        {
          v17 = "error: connection lost.\n";
          goto LABEL_36;
        }

        v14 = __stderrp;
        v15 = "error: connection lost.\n";
        v16 = 24;
LABEL_28:
        fwrite(v15, v16, 1uLL, v14);
        return 6;
      }

      v10 = sub_100010524(0x10000);
      v11 = "%s Error getting packet.";
      if (v10)
      {
LABEL_3:
        sub_100010668(v11, "RNBRunLoopGetStartModeFromRemote");
      }
    }

    else
    {
      if (v19 == 6)
      {
        return 3;
      }

      v12 = sub_100010524(0x10000);
      v11 = "#### %s";
      if (v12)
      {
        goto LABEL_3;
      }
    }
  }

  if (v9)
  {
    if (dword_10007D9AC)
    {
      v14 = __stderrp;
      v15 = "error: attach failed.\n";
      v16 = 22;
      goto LABEL_28;
    }

    v17 = "error: attach failed.\n";
LABEL_36:
    sub_100010544(0, v17, v3, v4, v5, v6, v7, v8, v18);
    return 6;
  }

  if (dword_10007D9AC)
  {
    fwrite("Attach succeeded, ready to debug.\n", 0x22uLL, 1uLL, __stdoutp);
  }

  else
  {
    sub_100010544(0, "Attach succeeded, ready to debug.\n", v3, v4, v5, v6, v7, v8, v18);
  }

  return 4;
}

uint64_t sub_10000513C(uint64_t a1, const char *a2, const char *a3, const char *a4, unsigned __int8 a5)
{
  if (sub_100010524(0x10000))
  {
    v10 = sub_100013114(a1, 0);
    sub_100010668("%s Launching '%s'...", "RNBRunLoopLaunchInferior", v10);
  }

  v12 = *(a1 + 344);
  v11 = *(a1 + 352);
  v13 = 0xAAAAAAAAAAAAAAABLL * ((v11 - v12) >> 3);
  if (v13 != -1)
  {
    if (!((v13 + 1) >> 61))
    {
      operator new();
    }

LABEL_87:
    sub_100008888();
  }

  if (v11 != v12)
  {
    for (i = 0; i != v13; ++i)
    {
      *(8 * i) = sub_100013114(a1, i);
    }
  }

  v16 = *(a1 + 368);
  v15 = *(a1 + 376);
  v17 = 0xAAAAAAAAAAAAAAABLL * ((v15 - v16) >> 3);
  if (v17 != -1)
  {
    if (!((v17 + 1) >> 61))
    {
      operator new();
    }

    goto LABEL_87;
  }

  if (v15 != v16)
  {
    for (j = 0; j != v17; ++j)
    {
      *(8 * j) = sub_100012CDC(a1, j);
    }
  }

  v19 = dword_10007D9D8;
  v20 = MEMORY[0];
  if (!dword_10007D9D8)
  {
    v21 = strlen(MEMORY[0]);
    if (v21 >= 4 && (v22 = MEMORY[0] + v21, *(MEMORY[0] + v21 - 4) == 46) && *(v22 - 3) == 97 && *(v22 - 2) == 112 && *(v22 - 1) == 112)
    {
      v19 = 5;
    }

    else
    {
      v19 = 1;
    }
  }

  *(a1 + 304) = v19;
  if (!sub_10000EE4C(v20, __dst, 0x400uLL))
  {
    strlcpy(__dst, MEMORY[0], 0x400uLL);
  }

  v35[0] = 0;
  v23 = (a1 + 88);
  if ((*(a1 + 111) & 0x80000000) == 0)
  {
    if (*(a1 + 111))
    {
      goto LABEL_39;
    }

    goto LABEL_32;
  }

  if (!*(a1 + 96) || (v23 = *v23) == 0)
  {
LABEL_32:
    if (*(a1 + 415) < 0)
    {
      if (*(a1 + 400))
      {
        v23 = *(a1 + 392);
      }

      else
      {
        v23 = 0;
      }
    }

    else if (*(a1 + 415))
    {
      v23 = (a1 + 392);
    }

    else
    {
      v23 = 0;
    }
  }

LABEL_39:
  v24 = (a1 + 416);
  if (*(a1 + 439) < 0)
  {
    v24 = *v24;
  }

  v25 = sub_10000A388(a1, __dst, 0, 0, v23, a2, a3, a4, a5, dword_10007D9A8, v24, v35, 0x400uLL);
  v26 = v25;
  dword_10007D990 = v25;
  if (v25 || !v35[0])
  {
    if (!v25)
    {
      if (sub_100010510())
      {
        sub_100010668("%s DNBProcessLaunch() failed to launch process, unknown failure", "RNBRunLoopLaunchInferior");
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

      v28 = "<unknown failure>";
      v27 = (a1 + 320);
      goto LABEL_60;
    }

    *(a1 + 312) = 0;
    if ((*(a1 + 343) & 0x80000000) == 0)
    {
LABEL_57:
      *(a1 + 320) = 0;
      *(a1 + 343) = 0;
      goto LABEL_61;
    }
  }

  else
  {
    if (sub_100010510())
    {
      sub_100010668("%s DNBProcessLaunch() returned error: '%s'", "RNBRunLoopLaunchInferior", v35);
    }

    *(a1 + 312) = 0xFFFFFFFFLL;
    if (*(a1 + 343) < 0)
    {
      **(a1 + 320) = 0;
      *(a1 + 328) = 0;
      if (v35[0])
      {
        goto LABEL_47;
      }
    }

    else
    {
      *(a1 + 320) = 0;
      *(a1 + 343) = 0;
      if (v35[0])
      {
LABEL_47:
        v27 = (a1 + 320);
        v28 = v35;
LABEL_60:
        std::string::assign(v27, v28);
        goto LABEL_61;
      }
    }

    if ((*(a1 + 343) & 0x80000000) == 0)
    {
      goto LABEL_57;
    }
  }

  **(a1 + 320) = 0;
  *(a1 + 328) = 0;
LABEL_61:
  if (*(a1 + 472) != -1 && (sub_1000128FC(a1 + 120, 0x20u, 0) & 0x20) != 0)
  {
    v34 = 0;
    if (sub_10002A838(a1, &v34))
    {
      if (sub_100010524(0x10000))
      {
        sub_100010668("%s Error getting packet.", "RNBRunLoopLaunchInferior");
      }

      goto LABEL_82;
    }

    if (v34 != 54 && sub_100010524(0x10000))
    {
      sub_100010668("%s Didn't get the expected qLaunchSuccess packet.", "RNBRunLoopLaunchInferior");
    }
  }

  if (v26)
  {
    while (1)
    {
      if (sub_100010524(0x200000))
      {
        sub_100010668("%s DNBProcessWaitForEvent (%4.4x, eEventProcessRunningStateChanged | eEventProcessStoppedStateChanged, true, INFINITE)...", "RNBRunLoopLaunchInferior", v26);
      }

      v29 = sub_10000B214(v26, 3u, 1, 0);
      if (sub_100010524(0x200000))
      {
        sub_100010668("%s DNBProcessWaitForEvent (%4.4x, eEventProcessRunningStateChanged | eEventProcessStoppedStateChanged, true, INFINITE) => 0x%8.8x", "RNBRunLoopLaunchInferior", v26, v29);
      }

      if (!v29)
      {
        break;
      }

      if ((v29 & 3) != 0)
      {
        v30 = sub_10000B308(v26);
        if (sub_100010524(0x200000))
        {
          v31 = sub_10000B3E8(v30);
          sub_100010668("%s process %4.4x state changed (eEventProcessStateChanged): %s", "RNBRunLoopLaunchInferior", v26, v31);
        }

        if (v30 - 8 < 2)
        {
          break;
        }

        if (v30 == 7 || v30 == 4)
        {
          sub_100012C44(a1, v26);
          v32 = 4;
          goto LABEL_83;
        }
      }

      sub_10000B40C(v26, v29);
    }

    dword_10007D990 = 0;
  }

LABEL_82:
  v32 = 6;
LABEL_83:
  operator delete(0);
  return v32;
}

uint64_t sub_1000056E4(uint64_t a1, int a2, int *a3)
{
  if (sub_100010524(0x10000))
  {
    sub_100010668("%s Attaching to pid %i...", "RNBRunLoopLaunchAttaching", a2);
  }

  v6 = sub_10000AD08(a2, 0, a1 + 448, __s, 1024);
  *a3 = v6;
  dword_10007D990 = v6;
  if (*a3)
  {
    sub_100012C44(a1, *a3);
    return 4;
  }

  *(a1 + 312) = 0xFFFFFFFFLL;
  if (*(a1 + 343) < 0)
  {
    **(a1 + 320) = 0;
    *(a1 + 328) = 0;
    if (!__s[0])
    {
      return 6;
    }

    goto LABEL_7;
  }

  *(a1 + 320) = 0;
  *(a1 + 343) = 0;
  if (__s[0])
  {
LABEL_7:
    std::string::assign((a1 + 320), __s);
  }

  return 6;
}

void sub_1000057F0(int a1)
{
  if (sub_100010524(0x10000))
  {
    v2 = sub_100038B08(a1);
    sub_100010668("%s (%s)", "signal_handler", v2);
  }

  if (a1 == 13)
  {
    dword_10007D9B4 = 1;
  }

  else if (a1 == 2)
  {
    v3 = dword_10007D9B0++;
    if (!dword_10007D990 || v3 || sub_10000B308(dword_10007D990) - 5 > 1)
    {
      exit(2);
    }

    v4 = dword_10007D990;

    sub_10000BCF8(v4, 17);
  }
}

uint64_t sub_1000058C0(uint64_t a1, int a2)
{
  v2 = *(a1 + 12);
  if (!v2)
  {
    if (sub_100010524(0x10000))
    {
      sub_100010668("#### %s error: pid invalid, exiting...", "HandleProcessStateChange");
    }

    return 6;
  }

  v5 = sub_10000B308(*(a1 + 12));
  if (sub_100010524(0x10000))
  {
    v6 = sub_10000B3E8(v5);
    sub_100010668("%s (&remote, initialize=%i)  pid_state = %s", "HandleProcessStateChange", a2, v6);
  }

  if (v5 > 0xA)
  {
    goto LABEL_12;
  }

  if (((1 << v5) & 0x490) != 0)
  {
    dword_10007D9B0 = 0;
    if ((a2 & 1) == 0)
    {
      v8 = *(a1 + 112);
      v9 = sub_10000ED84(v2);
      if (*(a1 + 112) == v9)
      {
        if (sub_100010524(0x10000))
        {
          v10 = sub_10000B3E8(v5);
          sub_100010668("%s (&remote, initialize=%i)  pid_state = %s pid_stop_count %llu (old %llu)) Notify??? skipping...", "HandleProcessStateChange", 0, v10, *(a1 + 112), v8);
        }
      }

      else
      {
        *(a1 + 112) = v9;
        sub_1000288C8(a1);
        v11 = *(a1 + 112);
        v12 = sub_100010524(0x10000);
        if (v11 == 1)
        {
          if (v12)
          {
            v13 = sub_10000B3E8(v5);
            sub_100010668("%s (&remote, initialize=%i)  pid_state = %s pid_stop_count %llu (old %llu)) Notify??? no, first stop...", "HandleProcessStateChange", 0, v13, *(a1 + 112), v8);
          }
        }

        else
        {
          if (v12)
          {
            v14 = sub_10000B3E8(v5);
            sub_100010668("%s (&remote, initialize=%i)  pid_state = %s pid_stop_count %llu (old %llu)) Notify??? YES!!!", "HandleProcessStateChange", 0, v14, *(a1 + 112), v8);
          }

          sub_10002BAC8(a1);
        }
      }
    }

    return 4;
  }

  if (((1 << v5) & 0x60) != 0)
  {
    return 4;
  }

  if (v5 == 9)
  {
    sub_10001B6A4(a1);
    return 6;
  }

LABEL_12:
  if (v5 - 2 >= 2)
  {
    return 6;
  }

  else
  {
    return 4;
  }
}

uint64_t sub_100005AAC(size_t a1)
{
  if (sub_100010524(0x10000))
  {
    sub_100010668("#### %s", "RNBRunLoopInferiorExecuting");
  }

  v2 = sub_1000058C0(a1, 1);
  while (*(a1 + 12))
  {
    memset(&__p, 0, sizeof(__p));
    if (sub_1000138A0(a1))
    {
      v3 = 189;
    }

    else
    {
      v3 = 165;
    }

    if (sub_100010524(0x200000))
    {
      sub_100010668("%s ctx.Events().WaitForSetEvents(0x%08x) ...", "RNBRunLoopInferiorExecuting", v3);
    }

    v4 = sub_1000128FC(a1 + 120, v3, 0);
    if (sub_100010524(0x200000))
    {
      v5 = sub_1000136D0(a1, v4, &__p);
      sub_100010668("%s ctx.Events().WaitForSetEvents(0x%08x) => 0x%08x (%s)", "RNBRunLoopInferiorExecuting", v3, v4, v5);
    }

    if (!v4)
    {
      v6 = v2;
LABEL_24:
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        goto LABEL_51;
      }

      goto LABEL_4;
    }

    if ((v4 & 0xC) != 0)
    {
      sub_1000288C8(a1);
    }

    if ((v4 & 0x10) != 0)
    {
      sub_1000289C4(a1);
      if ((v4 & 0x20) == 0)
      {
LABEL_18:
        if ((v4 & 1) == 0)
        {
          goto LABEL_19;
        }

        goto LABEL_31;
      }
    }

    else if ((v4 & 0x20) == 0)
    {
      goto LABEL_18;
    }

    v4 &= ~0x20u;
    if (sub_1000138A0(a1))
    {
      sub_10002A4B0(a1, 0);
      if ((v4 & 1) == 0)
      {
        goto LABEL_19;
      }
    }

    else
    {
      sub_10002A838(a1, 0);
      if ((v4 & 1) == 0)
      {
LABEL_19:
        v6 = v2;
        if ((v4 & 4) == 0)
        {
          goto LABEL_20;
        }

        goto LABEL_32;
      }
    }

LABEL_31:
    v7 = sub_1000058C0(a1, 0);
    sub_10001289C((a1 + 120), 1);
    v4 &= ~1u;
    v6 = v7;
    if ((v4 & 4) == 0)
    {
LABEL_20:
      if ((v4 & 0x80) != 0)
      {
        goto LABEL_35;
      }

      goto LABEL_21;
    }

LABEL_32:
    if (sub_100010510())
    {
      sub_100010544(0, "debugserver's process monitoring thread has exited.", v8, v9, v10, v11, v12, v13, v37);
    }

    v6 = 6;
    if ((v4 & 0x80) != 0)
    {
LABEL_35:
      if (sub_100010510())
      {
        sub_100010544(0, "debugserver's packet communication to lldb has been shut down.", v14, v15, v16, v17, v18, v19, v37);
      }

      v20 = *(a1 + 12);
      if (v20)
      {
        v21 = sub_1000138A0(a1);
        v22 = *(a1 + 440);
        if (v21)
        {
          v23 = sub_100010510();
          if (v22)
          {
            if (v23)
            {
              sub_100010544(0, "debugserver has a valid PID %d, it is still running. detaching from the inferior process.", v24, v25, v26, v27, v28, v29, v20);
            }

            goto LABEL_45;
          }

          if (v23)
          {
            sub_100010544(0, "debugserver killing the inferior process, pid %d.", v24, v25, v26, v27, v28, v29, v20);
          }

          sub_10000BC18(v20);
        }

        else if (*(a1 + 440))
        {
          if (sub_100010510())
          {
            sub_100010544(0, "debugserver has a valid PID %d but it may no longer be running, detaching from the inferior process.", v30, v31, v32, v33, v34, v35, v20);
          }

LABEL_45:
          sub_10000BAF8(v20);
        }
      }

      v6 = 6;
      goto LABEL_50;
    }

LABEL_21:
    if (!v4)
    {
      goto LABEL_24;
    }

LABEL_50:
    sub_10001289C((a1 + 120), v4);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
LABEL_51:
      operator delete(__p.__r_.__value_.__l.__data_);
    }

LABEL_4:
    v2 = 4;
    if (v6 != 4)
    {
      return v6;
    }
  }

  return v2;
}

uint64_t sub_100005D60(uint64_t a1)
{
  do
  {
    memset(&__p, 0, sizeof(__p));
    if (sub_100010524(0x200000))
    {
      sub_100010668("%s ctx.Events().WaitForSetEvents(0x%08x) ...", "RNBRunLoopPlatform", 160);
    }

    v2 = sub_1000128FC(a1 + 120, 0xA0u, 0);
    if (sub_100010524(0x200000))
    {
      v3 = sub_1000136D0(a1, v2, &__p);
      sub_100010668("%s ctx.Events().WaitForSetEvents(0x%08x) => 0x%08x (%s)", "RNBRunLoopPlatform", 160, v2, v3);
    }

    if (!v2)
    {
      v5 = 1;
      if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        continue;
      }

LABEL_14:
      operator delete(__p.__r_.__value_.__l.__data_);
      continue;
    }

    v4 = (v2 & 0x20) == 0 || sub_10002A838(a1, 0) != 2;
    sub_10001289C((a1 + 120), v2);
    v5 = (v2 & 0x80) == 0 && v4;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_14;
    }
  }

  while ((v5 & 1) != 0);
  return 6;
}

FILE *sub_100005E88(FILE *result, int a2, char *a3, va_list a4)
{
  if (result && a3)
  {
    v4 = result;
    vfprintf(result, a3, a4);
    fputc(10, v4);

    return fflush(v4);
  }

  return result;
}

void sub_100005EE0(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (dword_10007D9AC)
  {
    fprintf(__stderrp, "Usage:\n  %s host:port [program-name program-arg1 program-arg2 ...]\n", "debugserver");
    if (dword_10007D9AC)
    {
LABEL_3:
      fprintf(__stderrp, "  %s /path/file [program-name program-arg1 program-arg2 ...]\n", "debugserver");
      if (dword_10007D9AC)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else
  {
    sub_100010544(0, "Usage:\n  %s host:port [program-name program-arg1 program-arg2 ...]\n", a3, a4, a5, a6, a7, a8, "debugserver");
    if (dword_10007D9AC)
    {
      goto LABEL_3;
    }
  }

  sub_100010544(0, "  %s /path/file [program-name program-arg1 program-arg2 ...]\n", v9, v10, v11, v12, v13, v14, "debugserver");
  if (dword_10007D9AC)
  {
LABEL_4:
    fprintf(__stderrp, "  %s host:port --attach=<pid>\n", "debugserver");
    if (dword_10007D9AC)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_10:
  sub_100010544(0, "  %s host:port --attach=<pid>\n", v15, v16, v17, v18, v19, v20, "debugserver");
  if (dword_10007D9AC)
  {
LABEL_5:
    fprintf(__stderrp, "  %s /path/file --attach=<pid>\n", "debugserver");
    if (dword_10007D9AC)
    {
      goto LABEL_6;
    }

    goto LABEL_12;
  }

LABEL_11:
  sub_100010544(0, "  %s /path/file --attach=<pid>\n", v21, v22, v23, v24, v25, v26, "debugserver");
  if (dword_10007D9AC)
  {
LABEL_6:
    fprintf(__stderrp, "  %s host:port --attach=<process_name>\n", "debugserver");
    if (dword_10007D9AC)
    {
      goto LABEL_7;
    }

    goto LABEL_13;
  }

LABEL_12:
  sub_100010544(0, "  %s host:port --attach=<process_name>\n", v27, v28, v29, v30, v31, v32, "debugserver");
  if (dword_10007D9AC)
  {
LABEL_7:
    fprintf(__stderrp, "  %s /path/file --attach=<process_name>\n", "debugserver");
    exit(a1);
  }

LABEL_13:
  sub_100010544(0, "  %s /path/file --attach=<process_name>\n", v33, v34, v35, v36, v37, v38, "debugserver");
  exit(a1);
}

uint64_t start(uint64_t a1, uint64_t *a2)
{
  unsetenv("DYLD_INSERT_LIBRARIES");
  v15 = *a2;
  pthread_setname_np("main thread");
  v17 = 0;
  v3 = pthread_self();
  if (!pthread_getschedparam(v3, &v17, &v18))
  {
    v18.sched_priority = 47;
    v4 = pthread_self();
    pthread_setschedparam(v4, v17, &v18);
  }

  getpid();
  proc_set_wakemon_params();
  dword_10007D9AC = isatty(0);
  signal(13, sub_1000057F0);
  signal(1, sub_1000057F0);
  v16 = 0x80000;
  sigprocmask(1, &v16, 0);
  v5 = sub_100044794();
  if (v5)
  {
    sub_1000104F0(v5, 0);
  }

  sub_1000104DC(0);
  LODWORD(__dst) = 0;
  v20[0] = 4;
  v6 = sysctlbyname("security.mac.amfi.developer_mode_status", &__dst, v20, 0, 0);
  if (v6 | __dst)
  {
    operator new();
  }

  if (dword_10007D9AC)
  {
    fwrite("error: Developer mode must be enabled to use debugserver.\n", 0x3AuLL, 1uLL, __stderrp);
  }

  else
  {
    sub_100010544(0, "error: Developer mode must be enabled to use debugserver.\n", v7, v8, v9, v10, v11, v12, v14);
  }

  return 0xFFFFFFFFLL;
}

void sub_1000083A4(uint64_t a1, char *__s)
{
  if (__s)
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

    v7 = v4;
    if (v4)
    {
      memcpy(&__dst, __s, v4);
    }

    *(&__dst + v5) = 0;
    sub_100008740(a1 + 368, &__dst);
    if (v7 < 0)
    {
      operator delete(__dst);
    }
  }
}

void sub_100008480(uint64_t a1, char *__s)
{
  if (__s)
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

    v7 = v4;
    if (v4)
    {
      memcpy(&__dst, __s, v4);
    }

    *(&__dst + v5) = 0;
    sub_100008740(a1 + 344, &__dst);
    if (v7 < 0)
    {
      operator delete(__dst);
    }
  }
}

BOOL sub_10000855C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, _BYTE *a6, uint64_t a7, uint64_t a8)
{
  if (*(a1 + 472) != -1)
  {
    return 1;
  }

  v9 = a3;
  if (a4)
  {
    if (!a3)
    {
      result = sub_100010510();
      if (!result)
      {
        return result;
      }

      sub_100010668("error: invalid port supplied for reverse connection: %i.\n");
      return 0;
    }

    v10 = a1;
    if (sub_100037DB8((a1 + 472), a2, a3))
    {
      result = sub_100010510();
      if (!result)
      {
        return result;
      }

      sub_100010668("Failed to reverse connect to %s:%i.\n");
      return 0;
    }

LABEL_20:
    sub_10002AE78(v10);
    return 1;
  }

  if (a3)
  {
    v11 = a5;
    v12 = a6;
    v13 = a1;
    if (dword_10007D9AC)
    {
      v14 = "127.0.0.1";
      if (a2)
      {
        v14 = a2;
      }

      v15 = a2;
      fprintf(__stdoutp, "Listening to port %i for a connection from %s...\n", a3, v14);
    }

    else
    {
      v15 = a2;
      sub_100010544(0, "Listening to port %i for a connection from %s...\n", a3, a4, a5, a6, a7, a8, a3);
    }

    a2 = v15;
    a1 = v13;
    a6 = v12;
    a5 = v11;
  }

  if (a6 && *a6)
  {
    v10 = a1;
    if (!sub_1000372F8(a1 + 472, a2, v9, sub_100008898, a6))
    {
      goto LABEL_20;
    }
  }

  else
  {
    v10 = a1;
    if (!sub_1000372F8(a1 + 472, a2, v9, sub_1000089FC, a5))
    {
      goto LABEL_20;
    }
  }

  if (dword_10007D9AC)
  {
    fwrite("Failed to get connection from a remote gdb process.\n", 0x34uLL, 1uLL, __stderrp);
  }

  else
  {
    sub_100010544(0, "Failed to get connection from a remote gdb process.\n", v16, v17, v18, v19, v20, v21, v22);
  }

  return 0;
}

void sub_100008740(uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v3 >= v4)
  {
    v7 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 3);
    v8 = v7 + 1;
    if (v7 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_100008888();
    }

    v9 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
    if (2 * v9 > v8)
    {
      v8 = 2 * v9;
    }

    if (v9 >= 0x555555555555555)
    {
      v10 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      if (v10 <= 0xAAAAAAAAAAAAAAALL)
      {
        operator new();
      }

      sub_100008888();
    }

    v11 = 24 * v7;
    *v11 = *a2;
    *(v11 + 16) = *(a2 + 2);
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
    *a2 = 0;
    v6 = 24 * v7 + 24;
    v12 = *a1;
    v13 = *(a1 + 8) - *a1;
    v14 = v11 - v13;
    memcpy((v11 - v13), *a1, v13);
    *a1 = v14;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v12)
    {
      operator delete(v12);
    }
  }

  else
  {
    v5 = *a2;
    *(v3 + 16) = *(a2 + 2);
    *v3 = v5;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
    *a2 = 0;
    v6 = v3 + 24;
  }

  *(a1 + 8) = v6;
}

const char *sub_100008898(const char *result, uint64_t a2)
{
  if (result)
  {
    v2 = result;
    if (*result)
    {
      v4 = socket(1, 1, 0);
      if (v4 < 0)
      {
        sub_100058E6C();
      }

      v5 = v4;
      v15.sa_family = 1;
      strlcpy(v15.sa_data, v2, 0x67uLL);
      v16 = 0;
      v15.sa_len = strlen(v15.sa_data) + 2;
      v6 = strlen(v15.sa_data);
      if (connect(v5, &v15, v6 + 2) < 0)
      {
        sub_100058E4C();
      }

      if (dword_10007D9AC)
      {
        fprintf(__stdoutp, "Listening to port %i...\n", a2);
      }

      else
      {
        sub_100010544(0, "Listening to port %i...\n", v7, v8, v9, v10, v11, v12, a2);
      }

      v13 = snprintf(__str, 0x40uLL, "%u", a2);
      if (send(v5, __str, v13, 0) != v13)
      {
        sub_100058E2C();
      }

      return close(v5);
    }
  }

  return result;
}

const char *sub_1000089FC(const char *result, int a2)
{
  if (result && *result)
  {
    result = open(result, 1);
    if ((result & 0x80000000) == 0)
    {
      v3 = result;
      v4 = snprintf(__str, 0x40uLL, "%u", a2);
      write(v3, __str, v4 + 1);
      return close(v3);
    }
  }

  return result;
}

void sub_100008AC0(std::__shared_weak_count *a1)
{
  a1->__vftable = off_10006CC30;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_100008B88(unsigned int a1, int a2)
{
  dword_10007D9E4 = a1;
  dword_10007D9E8 = a2;
  v4 = qword_10007D9C0;
  if (!qword_10007D9C0)
  {
    goto LABEL_9;
  }

  v5 = &qword_10007D9C0;
  do
  {
    v6 = *(v4 + 32);
    v7 = v6 >= a1;
    v8 = v6 < a1;
    if (v7)
    {
      v5 = v4;
    }

    v4 = *(v4 + 8 * v8);
  }

  while (v4);
  if (v5 != &qword_10007D9C0 && *(v5 + 8) <= a1)
  {
    v9 = 1;
  }

  else
  {
LABEL_9:
    v9 = 0;
  }

  if (sub_100010524(2))
  {
    sub_100010668("DNBArchProtocol::SetDefaultArchitecture (cpu_type=0x%8.8x, cpu_subtype=0x%8.8x) => %i", a1, a2, v9);
  }

  return v9;
}

__n128 sub_100008C50(unsigned int *a1)
{
  v1 = *a1;
  if (*a1)
  {
    v2 = qword_10007D9C0;
    if (!qword_10007D9C0)
    {
LABEL_8:
      operator new();
    }

    while (1)
    {
      while (1)
      {
        v3 = v2;
        v4 = *(v2 + 32);
        if (v1 >= v4)
        {
          break;
        }

        v2 = *v3;
        if (!*v3)
        {
          goto LABEL_8;
        }
      }

      if (v4 >= v1)
      {
        break;
      }

      v2 = *(v3 + 8);
      if (!v2)
      {
        goto LABEL_8;
      }
    }

    result = *a1;
    *(v3 + 56) = *(a1 + 1);
    *(v3 + 40) = result;
  }

  return result;
}

uint64_t sub_100008D54()
{
  v0 = qword_10007D9C0;
  if (!qword_10007D9C0)
  {
    return 0;
  }

  v1 = &qword_10007D9C0;
  do
  {
    v2 = *(v0 + 32);
    v3 = v2 >= dword_10007D9E4;
    v4 = v2 < dword_10007D9E4;
    if (v3)
    {
      v1 = v0;
    }

    v0 = *(v0 + 8 * v4);
  }

  while (v0);
  if (v1 != &qword_10007D9C0 && dword_10007D9E4 >= *(v1 + 8))
  {
    return *(v1 + 10);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100008DB0(void *a1)
{
  v1 = qword_10007D9C0;
  if (qword_10007D9C0)
  {
    v2 = &qword_10007D9C0;
    do
    {
      v3 = *(v1 + 32);
      v4 = v3 >= dword_10007D9E4;
      v5 = v3 < dword_10007D9E4;
      if (v4)
      {
        v2 = v1;
      }

      v1 = *(v1 + 8 * v5);
    }

    while (v1);
    if (v2 != &qword_10007D9C0 && dword_10007D9E4 >= *(v2 + 8))
    {
      return (v2[7])(a1, byte_10007D9EC);
    }
  }

  *a1 = 0;
  return 0;
}

uint64_t sub_100008E18()
{
  v0 = qword_10007D9C0;
  if (!qword_10007D9C0)
  {
    return 0;
  }

  v1 = &qword_10007D9C0;
  do
  {
    v2 = *(v0 + 32);
    v3 = v2 >= dword_10007D9E4;
    v4 = v2 < dword_10007D9E4;
    if (v3)
    {
      v1 = v0;
    }

    v0 = *(v0 + 8 * v4);
  }

  while (v0);
  if (v1 != &qword_10007D9C0 && dword_10007D9E4 >= *(v1 + 8))
  {
    return (v1[6])();
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100008E74()
{
  v0 = qword_10007D9C0;
  if (!qword_10007D9C0)
  {
    return 0;
  }

  v1 = &qword_10007D9C0;
  do
  {
    v2 = *(v0 + 32);
    v3 = v2 >= dword_10007D9E4;
    v4 = v2 < dword_10007D9E4;
    if (v3)
    {
      v1 = v0;
    }

    v0 = *(v0 + 8 * v4);
  }

  while (v0);
  if (v1 != &qword_10007D9C0 && dword_10007D9E4 >= *(v1 + 8))
  {
    return (v1[8])();
  }

  else
  {
    return 0;
  }
}

void sub_100008ED0(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_100008ED0(a1, *a2);
    sub_100008ED0(a1, a2[1]);

    operator delete(a2);
  }
}

uint64_t *sub_100008F28(uint64_t *result, uint64_t *a2)
{
  *(a2 + 24) = a2 == result;
  if (a2 != result)
  {
    do
    {
      v2 = a2[2];
      if (v2[3])
      {
        break;
      }

      v3 = v2[2];
      v4 = *v3;
      if (*v3 == v2)
      {
        v8 = v3[1];
        if (!v8 || (v9 = *(v8 + 24), v7 = (v8 + 24), v9 == 1))
        {
          if (*v2 == a2)
          {
            v10 = a2[2];
          }

          else
          {
            v10 = v2[1];
            v11 = *v10;
            v2[1] = *v10;
            v12 = v2;
            if (v11)
            {
              v11[2] = v2;
              v3 = v2[2];
              v12 = *v3;
            }

            v10[2] = v3;
            v3[v12 != v2] = v10;
            *v10 = v2;
            v2[2] = v10;
            v3 = v10[2];
            v4 = *v3;
          }

          *(v10 + 24) = 1;
          *(v3 + 24) = 0;
          v18 = *(v4 + 8);
          *v3 = v18;
          if (v18)
          {
            *(v18 + 16) = v3;
          }

          v19 = v3[2];
          *(v4 + 16) = v19;
          v19[*v19 != v3] = v4;
          *(v4 + 8) = v3;
          v3[2] = v4;
          return result;
        }
      }

      else
      {
        if (!v4 || (v6 = *(v4 + 24), v5 = (v4 + 24), v6 == 1))
        {
          v13 = *v2;
          if (*v2 == a2)
          {
            v14 = v13[1];
            *v2 = v14;
            if (v14)
            {
              *(v14 + 16) = v2;
              v3 = v2[2];
            }

            v13[2] = v3;
            v3[*v3 != v2] = v13;
            v13[1] = v2;
            v2[2] = v13;
            v3 = v13[2];
          }

          else
          {
            v13 = a2[2];
          }

          *(v13 + 24) = 1;
          *(v3 + 24) = 0;
          v15 = v3[1];
          v16 = *v15;
          v3[1] = *v15;
          if (v16)
          {
            *(v16 + 16) = v3;
          }

          v17 = v3[2];
          v15[2] = v17;
          v17[*v17 != v3] = v15;
          *v15 = v3;
          v3[2] = v15;
          return result;
        }

        v7 = v5;
      }

      *(v2 + 24) = 1;
      a2 = v3;
      *(v3 + 24) = v3 == result;
      *v7 = 1;
    }

    while (v3 != result);
  }

  return result;
}

uint64_t sub_1000090C4()
{
  qword_10007D9C8 = 0;
  qword_10007D9C0 = 0;
  qword_10007D9B8 = &qword_10007D9C0;
  return __cxa_atexit(sub_100008B44, &qword_10007D9B8, &dword_100000000);
}

void *sub_1000090F8(void *result)
{
  result[2] = 0;
  result[1] = 0;
  *result = result + 1;
  return result;
}

uint64_t sub_100009138(uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_7:
    operator new();
  }

  v3 = *(a1 + 8);
  while (1)
  {
    while (1)
    {
      v4 = v3;
      v5 = v3[4];
      if (v5 <= a2)
      {
        break;
      }

      v3 = *v4;
      if (!*v4)
      {
        goto LABEL_7;
      }
    }

    if (v5 >= a2)
    {
      break;
    }

    v3 = v4[1];
    if (!v3)
    {
      goto LABEL_7;
    }
  }

  v6 = a1 + 8;
  do
  {
    v7 = *(v2 + 32);
    v8 = v7 >= a2;
    v9 = v7 < a2;
    if (v8)
    {
      v6 = v2;
    }

    v2 = *(v2 + 8 * v9);
  }

  while (v2);
  if (v6 == a1 + 8 || *(v6 + 32) > a2)
  {
    v6 = a1 + 8;
  }

  return v6 + 40;
}

uint64_t *sub_100009278(uint64_t **a1, unint64_t a2)
{
  v4 = (a1 + 1);
  result = a1[1];
  if (result)
  {
    v5 = v4;
    v6 = result;
    do
    {
      v7 = v6[4];
      v8 = v7 >= a2;
      v9 = v7 < a2;
      if (v8)
      {
        v5 = v6;
      }

      v6 = v6[v9];
    }

    while (v6);
    if (v5 == v4 || v5[4] > a2)
    {
      return 0;
    }

    else
    {
      v10 = v5[1];
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
        v12 = v5;
        do
        {
          v11 = v12[2];
          v13 = *v11 == v12;
          v12 = v11;
        }

        while (!v13);
      }

      if (*a1 == v5)
      {
        *a1 = v11;
      }

      a1[2] = (a1[2] - 1);
      sub_100009B98(result, v5);
      operator delete(v5);
      return 1;
    }
  }

  return result;
}

uint64_t sub_100009344(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 8);
  v2 = a1 + 8;
  v3 = v4;
  if (!v4)
  {
    return 0;
  }

  v5 = v2;
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
  if (v5 == v2)
  {
    return 0;
  }

  v9 = *(v5 + 32);
  v10 = v5 + 40;
  if (v9 <= a2)
  {
    return v10;
  }

  else
  {
    return 0;
  }
}

void *sub_10000938C(void *a1, int a2)
{
  v4 = *a1;
  v2 = a1 + 1;
  v3 = v4;
  if (v4 == v2)
  {
    return 0;
  }

  while (*(v3 + 17) != a2)
  {
    v6 = v3[1];
    if (v6)
    {
      do
      {
        v7 = v6;
        v6 = *v6;
      }

      while (v6);
    }

    else
    {
      do
      {
        v7 = v3[2];
        v8 = *v7 == v3;
        v3 = v7;
      }

      while (!v8);
    }

    v3 = v7;
    if (v7 == v2)
    {
      return 0;
    }
  }

  return v3 + 5;
}

void *sub_1000093F0(void *a1, unint64_t a2)
{
  v4 = *a1;
  v2 = a1 + 1;
  v3 = v4;
  if (v4 == v2)
  {
    return 0;
  }

  v5 = v3;
  do
  {
    if (v5[8])
    {
      v6 = v5[7];
      if (v6 <= a2 && v6 + *(v5 + 11) >= a2)
      {
        return v5 + 5;
      }
    }

    v8 = v5[1];
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
        v9 = v5[2];
        v10 = *v9 == v5;
        v5 = v9;
      }

      while (!v10);
    }

    v5 = v9;
  }

  while (v9 != v2);
  if (v3 == v2)
  {
    return 0;
  }

  v11 = 0;
  v12 = -1;
  do
  {
    if (v3[8])
    {
      v13 = v3[7];
      if (v13 <= a2)
      {
        v14 = a2 - (v13 + *(v3 + 11));
      }

      else
      {
        v14 = v13 - a2;
      }

      v15 = v12 > v14;
      if (v12 >= v14)
      {
        v12 = v14;
      }

      if (v15)
      {
        v11 = v3 + 5;
      }
    }

    v16 = v3[1];
    if (v16)
    {
      do
      {
        v17 = v16;
        v16 = *v16;
      }

      while (v16);
    }

    else
    {
      do
      {
        v17 = v3[2];
        v10 = *v17 == v3;
        v3 = v17;
      }

      while (!v10);
    }

    v3 = v17;
  }

  while (v17 != v2);
  return v11;
}

uint64_t sub_1000094F8(void *a1, unint64_t a2, unint64_t a3, void *a4)
{
  a4[1] = *a4;
  v5 = a1 + 1;
  v4 = a1[1];
  if (v4)
  {
    v6 = a1 + 1;
    do
    {
      v7 = v4[4];
      v8 = v7 >= a2;
      v9 = v7 < a2;
      if (v8)
      {
        v6 = v4;
      }

      v4 = v4[v9];
    }

    while (v4);
    if (v6 != v5)
    {
      if (v6 != *a1)
      {
        v10 = *v6;
        if (*v6)
        {
          do
          {
            v11 = v10;
            v10 = *(v10 + 8);
          }

          while (v10);
        }

        else
        {
          v12 = v6;
          do
          {
            v11 = v12[2];
            v13 = *v11 == v12;
            v12 = v11;
          }

          while (v13);
        }

        if ((*(v11 + 64) & 5) == 1 && *(v11 + 68) == -1)
        {
          v23 = *(v11 + 44);
          if (v23)
          {
            v24 = *(v11 + 56);
            if (a3 + a2 > v24 && v24 + v23 > a2)
            {
              v28 = v6 + 5;
              v25 = a2;
              v26 = a4;
              v27 = a3;
              sub_1000096E8(a4, &v28);
              a2 = v25;
              a3 = v27;
              a4 = v26;
            }
          }
        }
      }

      v14 = a3 + a2;
      do
      {
        v15 = v6[7];
        if (v15 - a2 >= a3)
        {
          break;
        }

        if ((v6[8] & 5) == 1 && *(v6 + 17) == -1 && (v17 = *(v6 + 11), v17) && v14 > v15 && v15 + v17 > a2)
        {
          v28 = v6 + 5;
          v18 = a2;
          v19 = a4;
          v20 = a3;
          sub_1000096E8(a4, &v28);
          a2 = v18;
          a3 = v20;
          a4 = v19;
          v21 = v6[1];
          if (v21)
          {
            do
            {
              v16 = v21;
              v21 = *v21;
            }

            while (v21);
          }

          else
          {
            do
            {
              v16 = v6[2];
              v13 = *v16 == v6;
              v6 = v16;
            }

            while (!v13);
          }
        }

        else
        {
          v16 = v6;
        }

        v6 = v16;
      }

      while (v16 != v5);
    }
  }

  return (a4[1] - *a4) >> 3;
}

void sub_1000096E8(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = *a1;
    v7 = v4 - *a1;
    v8 = v7 >> 3;
    v9 = (v7 >> 3) + 1;
    if (v9 >> 61)
    {
      sub_100008888();
    }

    v10 = v3 - v6;
    if (v10 >> 2 > v9)
    {
      v9 = v10 >> 2;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF8)
    {
      v11 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      if (!(v11 >> 61))
      {
        operator new();
      }

      sub_100008888();
    }

    *(8 * v8) = *a2;
    v5 = 8 * v8 + 8;
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

void *sub_1000097EC(void *a1)
{
  v3 = *a1;
  result = a1 + 1;
  v2 = v3;
  if (v3 != result)
  {
    do
    {
      *(v2 + 17) = -1;
      *(v2 + 64) &= ~1u;
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
    }

    while (v5 != result);
  }

  return result;
}

void *sub_100009850(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 8);
  result = (a1 + 8);
  v5 = v6;
  if (v6)
  {
    v7 = result;
    do
    {
      v8 = v5[4];
      v9 = v8 >= a2;
      v10 = v8 < a2;
      if (v9)
      {
        v7 = v5;
      }

      v5 = v5[v10];
    }

    while (v5);
    if (v7 != result)
    {
      v11 = a3 + a2;
      do
      {
        if (v7[4] >= v11)
        {
          break;
        }

        if ((v7[8] & 5) == 1 && *(v7 + 17) == -1)
        {
          v15 = *(v7 + 11);
          if (v15)
          {
            v16 = v7[7];
            if (v11 > v16)
            {
              v17 = v16 + v15;
              if (v16 + v15 > a2)
              {
                if (v11 >= v17)
                {
                  v18 = v16 + v15;
                }

                else
                {
                  v18 = v11;
                }

                if (v16 <= a2)
                {
                  v19 = a2;
                }

                else
                {
                  v19 = v7[7];
                }

                v9 = a2 >= v16;
                v20 = a2 - v16;
                if (!v9)
                {
                  v20 = 0;
                }

                if (v11 <= a2)
                {
                  sub_100058E8C();
                }

                if (v17 <= a2)
                {
                  sub_100058EB8();
                }

                if (v20 + v18 - v19 > v15)
                {
                  sub_100058EE4();
                }

                v21 = result;
                v22 = a2;
                v23 = a4;
                memcpy((a4 + v19 - a2), v7 + v20 + 48, v18 - v19);
                result = v21;
                a2 = v22;
                a4 = v23;
              }
            }
          }
        }

        v12 = v7[1];
        if (v12)
        {
          do
          {
            v13 = v12;
            v12 = *v12;
          }

          while (v12);
        }

        else
        {
          do
          {
            v13 = v7[2];
            v14 = *v13 == v7;
            v7 = v13;
          }

          while (!v14);
        }

        v7 = v13;
      }

      while (v13 != result);
    }
  }

  return result;
}

void *sub_1000099AC(void *result, uint64_t a2)
{
  v2 = result + 1;
  v3 = *result;
  if (*result != result + 1)
  {
    do
    {
      result = sub_100042E90(a2, v3[7], 0);
      v5 = v3[1];
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
          v6 = v3[2];
          v7 = *v6 == v3;
          v3 = v6;
        }

        while (!v7);
      }

      v3 = v6;
    }

    while (v6 != v2);
  }

  return result;
}

void *sub_100009A34(void *result, uint64_t a2)
{
  v2 = result + 1;
  v3 = *result;
  if (*result != result + 1)
  {
    do
    {
      result = sub_100043274(a2, v3[7], 0);
      v5 = v3[1];
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
          v6 = v3[2];
          v7 = *v6 == v3;
          v3 = v6;
        }

        while (!v7);
      }

      v3 = v6;
    }

    while (v6 != v2);
  }

  return result;
}

void sub_100009ABC(void *a1)
{
  v2 = a1 + 1;
  v1 = *a1;
  if (*a1 != a1 + 1)
  {
    do
    {
      v5 = v1[1];
      if (v1[8])
      {
        if (v5)
        {
          do
          {
            v7 = v5;
            v5 = *v5;
          }

          while (v5);
        }

        else
        {
          do
          {
            v7 = v1[2];
            v8 = *v7 == v1;
            v1 = v7;
          }

          while (!v8);
        }
      }

      else
      {
        v6 = v1;
        if (v5)
        {
          do
          {
            v7 = v5;
            v5 = *v5;
          }

          while (v5);
        }

        else
        {
          do
          {
            v7 = v6[2];
            v8 = *v7 == v6;
            v6 = v7;
          }

          while (!v8);
        }

        if (*a1 == v1)
        {
          *a1 = v7;
        }

        v4 = a1[1];
        --a1[2];
        sub_100009B98(v4, v1);
        operator delete(v1);
      }

      v1 = v7;
    }

    while (v7 != v2);
  }
}

uint64_t *sub_100009B98(uint64_t *result, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2;
  if (*a2)
  {
    v4 = a2[1];
    if (!v4)
    {
      v3 = a2;
      goto LABEL_7;
    }

    do
    {
      v3 = v4;
      v4 = *v4;
    }

    while (v4);
  }

  v2 = v3[1];
  if (v2)
  {
LABEL_7:
    v6 = 0;
    v5 = v3[2];
    *(v2 + 16) = v5;
    goto LABEL_8;
  }

  v5 = v3[2];
  v6 = 1;
LABEL_8:
  v7 = *v5;
  if (*v5 == v3)
  {
    *v5 = v2;
    if (v3 == result)
    {
      v7 = 0;
      result = v2;
    }

    else
    {
      v7 = v5[1];
    }
  }

  else
  {
    v5[1] = v2;
  }

  v8 = *(v3 + 24);
  if (v3 != a2)
  {
    v9 = a2[2];
    v3[2] = v9;
    v9[*v9 != a2] = v3;
    v11 = *a2;
    v10 = a2[1];
    *(v11 + 16) = v3;
    *v3 = v11;
    v3[1] = v10;
    if (v10)
    {
      *(v10 + 16) = v3;
    }

    *(v3 + 24) = *(a2 + 24);
    if (result == a2)
    {
      result = v3;
    }
  }

  if (!result || !v8)
  {
    return result;
  }

  if (!v6)
  {
    *(v2 + 24) = 1;
    return result;
  }

  while (1)
  {
    v14 = v7[2];
    v15 = *v14;
    v16 = *(v7 + 24);
    if (*v14 == v7)
    {
      break;
    }

    if ((v7[3] & 1) == 0)
    {
      *(v7 + 24) = 1;
      *(v14 + 24) = 0;
      v17 = v14[1];
      v18 = *v17;
      v14[1] = *v17;
      if (v18)
      {
        *(v18 + 16) = v14;
      }

      v19 = v14[2];
      v17[2] = v19;
      v19[*v19 != v14] = v17;
      *v17 = v14;
      v14[2] = v17;
      if (result == *v7)
      {
        result = v7;
      }

      v7 = *(*v7 + 8);
    }

    v20 = *v7;
    if (*v7 && *(v20 + 24) != 1)
    {
      v21 = v7[1];
      if (!v21)
      {
        goto LABEL_62;
      }

LABEL_61:
      if (*(v21 + 24) == 1)
      {
LABEL_62:
        *(v20 + 24) = 1;
        *(v7 + 24) = 0;
        v29 = v20[1];
        *v7 = v29;
        if (v29)
        {
          *(v29 + 16) = v7;
        }

        v30 = v7[2];
        v20[2] = v30;
        v30[*v30 != v7] = v20;
        v20[1] = v7;
        v7[2] = v20;
        v21 = v7;
      }

      else
      {
        v20 = v7;
      }

      v31 = v20[2];
      *(v20 + 24) = *(v31 + 24);
      *(v31 + 24) = 1;
      *(v21 + 24) = 1;
      v32 = *(v31 + 8);
      v33 = *v32;
      *(v31 + 8) = *v32;
      if (v33)
      {
        *(v33 + 16) = v31;
      }

      v34 = *(v31 + 16);
      v32[2] = v34;
      v34[*v34 != v31] = v32;
      *v32 = v31;
      *(v31 + 16) = v32;
      return result;
    }

    v21 = v7[1];
    if (v21 && *(v21 + 24) != 1)
    {
      goto LABEL_61;
    }

    *(v7 + 24) = 0;
    v12 = v7[2];
    if (v12 == result || (v12[3] & 1) == 0)
    {
      goto LABEL_59;
    }

LABEL_26:
    v7 = *(v12[2] + 8 * (*v12[2] == v12));
  }

  if ((v7[3] & 1) == 0)
  {
    *(v7 + 24) = 1;
    *(v14 + 24) = 0;
    v22 = v15[1];
    *v14 = v22;
    if (v22)
    {
      *(v22 + 16) = v14;
    }

    v23 = v14[2];
    v15[2] = v23;
    v23[*v23 != v14] = v15;
    v15[1] = v14;
    v14[2] = v15;
    v24 = v7[1];
    if (result == v24)
    {
      result = v7;
    }

    v7 = *v24;
  }

  v25 = *v7;
  if (*v7 && *(v25 + 24) != 1)
  {
    goto LABEL_69;
  }

  v26 = v7[1];
  if (!v26 || *(v26 + 24) == 1)
  {
    *(v7 + 24) = 0;
    v12 = v7[2];
    if (*(v12 + 24) != 1 || v12 == result)
    {
LABEL_59:
      *(v12 + 24) = 1;
      return result;
    }

    goto LABEL_26;
  }

  if (!v25)
  {
    goto LABEL_54;
  }

  if (v25[3])
  {
    v26 = v7[1];
LABEL_54:
    *(v26 + 24) = 1;
    *(v7 + 24) = 0;
    v27 = *v26;
    v7[1] = *v26;
    if (v27)
    {
      *(v27 + 16) = v7;
    }

    v28 = v7[2];
    v26[2] = v28;
    v28[*v28 != v7] = v26;
    *v26 = v7;
    v7[2] = v26;
    v25 = v7;
  }

  else
  {
LABEL_69:
    v26 = v7;
  }

  v35 = v26[2];
  *(v26 + 24) = *(v35 + 24);
  *(v35 + 24) = 1;
  *(v25 + 24) = 1;
  v36 = *v35;
  v37 = *(*v35 + 8);
  *v35 = v37;
  if (v37)
  {
    *(v37 + 16) = v35;
  }

  v38 = v35[2];
  *(v36 + 16) = v38;
  v38[*v38 != v35] = v36;
  *(v36 + 8) = v35;
  v35[2] = v36;
  return result;
}

uint64_t sub_100009F1C(int a1)
{
  pthread_setname_np("kqueue thread");
  v21 = 0;
  v2 = pthread_self();
  if (!pthread_getschedparam(v2, &v21, &v22))
  {
    v22.sched_priority = 47;
    v3 = pthread_self();
    pthread_setschedparam(v3, v21, &v22);
  }

  do
  {
    while (kevent(a1, 0, 0, &eventlist, 1, 0) != -1)
    {
      if ((eventlist.flags & 0x4000) != 0)
      {
        data = eventlist.data;
        v10 = strerror(eventlist.data);
        if (sub_100010510())
        {
          v11 = "Unknown error";
          if (v10)
          {
            v11 = v10;
          }

          sub_1000107A0("Failed to initialize kqueue event: (%d): %s", data, v11);
        }

        return 0;
      }

      v19 = 0;
      ident = eventlist.ident;
      v5 = waitpid(eventlist.ident, &v19, 0);
      v6 = v19 & 0x7F;
      if (v6 == 127)
      {
        v8 = v19 >> 8;
        if (v19 >> 8 != 19 && sub_100010524(2))
        {
          sub_100010668("waitpid (%i) -> STOPPED (signal = %i)", v5, v8);
        }
      }

      else
      {
        if ((v19 & 0x7F) == 0)
        {
          v15 = BYTE1(v19);
          if (sub_100010524(2))
          {
            sub_100010668("waitpid (%i) -> EXITED (status = %i)", v5, v15);
          }

          v16 = eventlist.data;
          if ((eventlist.data & 0x20000) == 0)
          {
            goto LABEL_26;
          }

LABEL_32:
          v17 = "Terminated due to memory issue";
          goto LABEL_34;
        }

        if (ident < 0)
        {
          ident = -ident;
        }

        v7 = sub_100010524(2);
        if (v5 == ident)
        {
          if (v7)
          {
            sub_100010668("waitpid (%i) -> SIGNALED and EXITED (signal = %i)", v5, v6);
          }

          snprintf(__str, 0x40uLL, "Terminated due to signal %i", v6);
          sub_10000A1D0(v5, __str);
          v15 = 127;
          v16 = eventlist.data;
          if ((eventlist.data & 0x20000) != 0)
          {
            goto LABEL_32;
          }

LABEL_26:
          if ((v16 & 0x10000) == 0)
          {
            if ((v16 & 0x40000) != 0)
            {
              v17 = "Terminated due to code signing error";
              goto LABEL_34;
            }

LABEL_35:
            if (sub_100010524(2))
            {
              sub_100010668("waitpid_process_thread (): setting exit status for pid = %i to %i", v5, v15);
            }

            sub_10000A2A4(v5, v19);
            return 0;
          }

          v17 = "Terminated due to decrypt failure";
LABEL_34:
          sub_10000A1D0(v5, v17);
          goto LABEL_35;
        }

        if (v7)
        {
          sub_100010668("waitpid (%i) -> SIGNALED (signal = %i)", v5, v6);
        }
      }
    }
  }

  while (*__error() == 4);
  if (sub_100010510())
  {
    v12 = *__error();
    v13 = __error();
    v14 = strerror(*v13);
    sub_1000107A0("kqueue failed with error: (%d): %s", v12, v14);
  }

  return 0;
}

uint64_t sub_10000A1D0(int a1, const char *a2)
{
  if (qword_10007DA00)
  {
    v2 = *(qword_10007DA00 + 8);
    if (v2)
    {
      v3 = qword_10007DA00 + 8;
      do
      {
        if (*(v2 + 32) >= a1)
        {
          v3 = v2;
        }

        v2 = *(v2 + 8 * (*(v2 + 32) < a1));
      }

      while (v2);
      if (v3 != qword_10007DA00 + 8 && *(v3 + 32) <= a1)
      {
        v6 = *(v3 + 40);
        v7 = *(v3 + 48);
        if (v7)
        {
          v4 = 1;
          atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
          sub_100043AEC(v6, a2);
          if (atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            return v4;
          }

          (v7->__on_zero_shared)(v7);
          std::__shared_weak_count::__release_weak(v7);
        }

        else
        {
          sub_100043AEC(v6, a2);
        }

        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_10000A2A4(int a1, int a2)
{
  if (qword_10007DA00)
  {
    v2 = *(qword_10007DA00 + 8);
    if (v2)
    {
      v3 = qword_10007DA00 + 8;
      do
      {
        if (*(v2 + 32) >= a1)
        {
          v3 = v2;
        }

        v2 = *(v2 + 8 * (*(v2 + 32) < a1));
      }

      while (v2);
      if (v3 != qword_10007DA00 + 8 && *(v3 + 32) <= a1)
      {
        v6 = *(v3 + 40);
        v7 = *(v3 + 48);
        if (v7)
        {
          v4 = 1;
          atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
          *(v6 + 72) = a2;
          sub_100040BE8(v6, 9u);
          if (atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            return v4;
          }

          (v7->__on_zero_shared)(v7);
          std::__shared_weak_count::__release_weak(v7);
        }

        else
        {
          *(v6 + 72) = a2;
          sub_100040BE8(v6, 9u);
        }

        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_10000A388(uint64_t a1, const char *a2, const void *a3, const void *a4, const char *a5, const char *a6, const char *a7, const char *a8, unsigned __int8 a9, int a10, uint64_t a11, char *a12, size_t a13)
{
  if (sub_100010524(2))
  {
    sub_100010668("%s(path='%s', argv = %p, envp = %p, working_dir=%s, stdin=%s, stdout=%s, stderr=%s, no-stdio=%i, launch_flavor = %u, disable_aslr = %d, err = %p, err_len = %llu) called...", "DNBProcessLaunch", a2, a3, a4, a5, a6, a7, a8, a9, *(a1 + 304), a10, a12, a13);
  }

  if (a12)
  {
    v21 = a13 == 0;
  }

  else
  {
    v21 = 1;
  }

  if (!v21)
  {
    *a12 = 0;
  }

  if (stat(a2, &v24) != -1)
  {
    operator new();
  }

  v22 = __error();
  strerror_r(*v22, __p, 0x100uLL);
  snprintf(a12, a13, "%s (%s)", __p, a2);
  return 0;
}

uint64_t sub_10000A71C(int a1)
{
  v2 = kqueue();
  if (v2 == -1)
  {
    if (sub_100010510())
    {
      sub_1000107A0("Could not get kqueue for pid = %i.", a1);
    }

    v4 = a1;
  }

  else
  {
    v3 = v2;
    v10 = 0;
    v4 = a1;
    changelist.ident = a1;
    *&changelist.filter = 0x860000000001FFFBLL;
    changelist.data = 0;
    changelist.udata = 0;
    v5 = kevent(v2, &changelist, 1, 0, 0, 0);
    if (v5)
    {
      v6 = v5;
      if (sub_100010510())
      {
        sub_1000107A0("Failed to register kqueue NOTE_EXIT event for pid %i, error: %d.", a1, v6);
      }
    }

    else if (!pthread_create(&v10, 0, sub_100009F1C, v3))
    {
      ident = v10;
      return pthread_detach(ident);
    }
  }

  changelist.ident = 0;
  result = pthread_create(&changelist, 0, sub_10000F4EC, v4);
  if (result)
  {
    return result;
  }

  ident = changelist.ident;
  return pthread_detach(ident);
}

uint64_t sub_10000A834(int a1, uint64_t *a2)
{
  v4 = qword_10007DA00;
  if (!qword_10007DA00)
  {
    pthread_mutex_lock(&stru_100074520);
    if (!qword_10007DA00)
    {
      operator new();
    }

    pthread_mutex_unlock(&stru_100074520);
    v4 = qword_10007DA00;
    if (!qword_10007DA00)
    {
      return 0;
    }
  }

  v6 = *a2;
  v5 = a2[1];
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v7 = *(v4 + 8);
  if (!v7)
  {
LABEL_13:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v8 = v7;
      v9 = *(v7 + 32);
      if (v9 <= a1)
      {
        break;
      }

      v7 = *v8;
      if (!*v8)
      {
        goto LABEL_13;
      }
    }

    if (v9 >= a1)
    {
      break;
    }

    v7 = v8[1];
    if (!v7)
    {
      goto LABEL_13;
    }
  }

  if (v5)
  {
    if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
    }
  }

  return 1;
}

uint64_t sub_10000A9CC(char *a1)
{
  __p = 0;
  v5 = 0;
  v6 = 0;
  if (sub_10000AA34(a1, &__p) == 1)
  {
    v1 = *(__p + 10);
LABEL_4:
    v5 = __p;
    operator delete(__p);
    return v1;
  }

  v1 = 0;
  v2 = 0;
  if (__p)
  {
    goto LABEL_4;
  }

  return v2;
}

uint64_t sub_10000AA34(char *a1, uint64_t *a2)
{
  v2 = *a2;
  a2[1] = *a2;
  if (a1)
  {
    v3 = v2;
    if (*a1)
    {
      v5 = a1;
      v6 = strrchr(a1, 47);
      if (v6)
      {
        v5 = v6 + 1;
      }

      v7 = strlen(v5);
      __p = 0;
      v20 = 0;
      v21 = 0;
      v8 = sub_10000B4FC(&__p);
      if (v8)
      {
        v9 = v8;
        v10 = 0;
        v11 = 1;
        do
        {
          v14 = __p + 648 * v10;
          if (v14[36])
          {
            v15 = v14[36] == 5;
          }

          else
          {
            v15 = 1;
          }

          if (v15 || strncasecmp(v5, v14 + 243, 0x10uLL))
          {
            goto LABEL_9;
          }

          if (v7 < 0x11)
          {
            v12 = a2;
            v13 = v14;
          }

          else
          {
            if (proc_pidpath(*(v14 + 10), buffer, 0x400u) < 1)
            {
              goto LABEL_9;
            }

            v16 = strrchr(buffer, 47);
            v17 = v16 ? v16 + 1 : buffer;
            if (strncasecmp(v5, v17, 0x400uLL))
            {
              goto LABEL_9;
            }

            v13 = __p + 648 * v10;
            v12 = a2;
          }

          sub_10000F640(v12, v13);
LABEL_9:
          v10 = v11++;
        }

        while (v9 > v10);
      }

      if (__p)
      {
        v20 = __p;
        operator delete(__p);
      }

      v2 = *a2;
      v3 = a2[1];
    }
  }

  else
  {
    v3 = v2;
  }

  return 0x2C3F35BA781948B1 * ((v3 - v2) >> 3);
}

uint64_t sub_10000ABE0(char *a1, uint64_t a2, uint64_t a3, _BYTE *a4, uint64_t a5)
{
  if (a4 && a5)
  {
    *a4 = 0;
  }

  __p = 0;
  v15 = 0;
  v16 = 0;
  v10 = sub_10000AA34(a1, &__p);
  if (v10 == 1)
  {
    v11 = sub_10000AD08(*(__p + 10), a2, a3, a4, a5);
  }

  else
  {
    v11 = v10;
    if (v10)
    {
      if (sub_100010510())
      {
        sub_1000107A0("error: %llu processes match '%s':\n", v11, a1);
      }

      v13 = 0;
      do
      {
        if (sub_100010510())
        {
          sub_1000107A0("%6u - %s\n", *(__p + v13 + 40), __p + v13 + 243);
        }

        v13 += 648;
        --v11;
      }

      while (v11);
    }

    else
    {
      if (sub_100010510())
      {
        sub_1000107A0("error: no processes match '%s'\n", a1);
      }

      v11 = 0;
    }
  }

  if (__p)
  {
    v15 = __p;
    operator delete(__p);
  }

  return v11;
}

uint64_t sub_10000AD08(int a1, uint64_t a2, uint64_t a3, _BYTE *a4, uint64_t a5)
{
  if (a4)
  {
    v6 = a5 == 0;
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    *a4 = 0;
  }

  if (getenv("LLDB_DEBUGSERVER_PATH") || (*v14 = 0xE00000001, v15 = 1, v16 = a1, v9 = 648, sysctl(v14, 4u, &v12, &v9, 0, 0)) || !v9 || (v13 & 2) == 0)
  {
    v8.st_dev = 0;
    v12 = 4;
    if (sysctlbyname("sysctl.proc_translated", &v8, &v12, 0, 0) == -1 || v8.st_dev != 1)
    {
      operator new();
    }
  }

  else if (dword_1000740FC == -1)
  {
    if (sub_100010510())
    {
      sub_1000107A0("Trying to attach to a translated process with the native debugserver, exiting...\n");
    }
  }

  else
  {
    if (!stat("/Library/Apple/usr/libexec/oah/debugserver", &v8))
    {
      sub_100058F3C(v11, v10, a1);
    }

    if (sub_100010510())
    {
      sub_1000107A0("Translated inferior process but Rosetta debugserver not found at %s");
    }
  }

  return 0xFFFFFFFFLL;
}

BOOL sub_10000B1C0()
{
  v3 = 0;
  v2 = 4;
  return sysctlbyname("sysctl.proc_translated", &v3, &v2, 0, 0) != -1 && v3 == 1;
}

uint64_t sub_10000B214(int a1, unsigned int a2, int a3, const timespec *a4)
{
  if (!qword_10007DA00)
  {
    return 0;
  }

  v4 = *(qword_10007DA00 + 8);
  if (!v4)
  {
    return 0;
  }

  v5 = qword_10007DA00 + 8;
  do
  {
    if (*(v4 + 32) >= a1)
    {
      v5 = v4;
    }

    v4 = *(v4 + 8 * (*(v4 + 32) < a1));
  }

  while (v4);
  if (v5 == qword_10007DA00 + 8 || *(v5 + 32) > a1)
  {
    return 0;
  }

  v7 = *(v5 + 40);
  v8 = *(v5 + 48);
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v9 = v7 + 1288;
  if (a3)
  {
    result = sub_1000128FC(v9, a2, a4);
    if (!v8)
    {
      return result;
    }
  }

  else
  {
    result = sub_100012980(v9, a2, a4);
    if (!v8)
    {
      return result;
    }
  }

  if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v10 = result;
    (v8->__on_zero_shared)(v8);
    std::__shared_weak_count::__release_weak(v8);
    return v10;
  }

  return result;
}

uint64_t sub_10000B308(int a1)
{
  if (!qword_10007DA00)
  {
    return 0;
  }

  v1 = *(qword_10007DA00 + 8);
  if (!v1)
  {
    return 0;
  }

  v2 = qword_10007DA00 + 8;
  do
  {
    if (*(v1 + 32) >= a1)
    {
      v2 = v1;
    }

    v1 = *(v1 + 8 * (*(v1 + 32) < a1));
  }

  while (v1);
  if (v2 == qword_10007DA00 + 8 || *(v2 + 32) > a1)
  {
    return 0;
  }

  v4 = *(v2 + 40);
  v5 = *(v2 + 48);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    result = sub_10003CFE8(v4);
    if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v6 = result;
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
      return v6;
    }
  }

  else
  {

    return sub_10003CFE8(v4);
  }

  return result;
}

const char *sub_10000B3E8(unsigned int a1)
{
  if (a1 > 0xA)
  {
    return "nub_state_t ???";
  }

  else
  {
    return off_10006CCB0[a1];
  }
}

void sub_10000B40C(int a1, int a2)
{
  if (qword_10007DA00)
  {
    v2 = *(qword_10007DA00 + 8);
    if (v2)
    {
      v3 = qword_10007DA00 + 8;
      do
      {
        if (*(v2 + 32) >= a1)
        {
          v3 = v2;
        }

        v2 = *(v2 + 8 * (*(v2 + 32) < a1));
      }

      while (v2);
      if (v3 != qword_10007DA00 + 8 && *(v3 + 32) <= a1)
      {
        v4 = *(v3 + 40);
        v5 = *(v3 + 48);
        if (v5)
        {
          atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
          sub_10001289C((v4 + 1288), a2);
          if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v5->__on_zero_shared)(v5);

            std::__shared_weak_count::__release_weak(v5);
          }
        }

        else
        {

          sub_10001289C((v4 + 1288), a2);
        }
      }
    }
  }
}

uint64_t sub_10000B4FC(void *a1)
{
  v12 = 0;
  v10 = 0;
  *v11 = 0xE00000001;
  if (sysctl(v11, 3u, 0, &v10, 0, 0) < 0)
  {
    a1[1] = *a1;
    perror("sysctl (mib, miblen, NULL, &num_processes, NULL, 0)");
    return 0;
  }

  else
  {
    v2 = *a1;
    v3 = a1[1];
    v4 = 0x2C3F35BA781948B1 * ((v3 - *a1) >> 3);
    if (v10 / 0x288 <= v4)
    {
      if (v10 / 0x288 < v4)
      {
        v3 = v2 + 648 * (v10 / 0x288);
        a1[1] = v3;
      }
    }

    else
    {
      sub_10000F80C(a1, v10 / 0x288 - v4);
      v2 = *a1;
      v3 = a1[1];
    }

    v10 = v3 - v2;
    if (sysctl(v11, 3u, v2, &v10, 0, 0) < 0)
    {
      result = 0;
      a1[1] = *a1;
    }

    else
    {
      v5 = v10 / 0x288;
      v6 = *a1;
      v7 = a1[1];
      v8 = 0x2C3F35BA781948B1 * ((v7 - *a1) >> 3);
      if (v10 / 0x288 <= v8)
      {
        if (v5 < v8)
        {
          v7 = v6 + 648 * v5;
          a1[1] = v7;
        }
      }

      else
      {
        sub_10000F80C(a1, v10 / 0x288 - v8);
        v6 = *a1;
        v7 = a1[1];
      }

      return 0x2C3F35BA781948B1 * ((v7 - v6) >> 3);
    }
  }

  return result;
}

uint64_t sub_10000B694@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  if (qword_10007DA00)
  {
    v2 = *(qword_10007DA00 + 8);
    if (v2)
    {
      v3 = qword_10007DA00 + 8;
      do
      {
        if (*(v2 + 32) >= result)
        {
          v3 = v2;
        }

        v2 = *(v2 + 8 * (*(v2 + 32) < result));
      }

      while (v2);
      if (v3 != qword_10007DA00 + 8 && *(v3 + 32) <= result)
      {
        v4 = *(v3 + 40);
        v5 = *(v3 + 48);
        if (v5)
        {
          atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
          sub_100043DA0();
        }

        sub_100043DA0();
      }
    }
  }

  *a2 = 0;
  a2[1] = 0;
  return result;
}

uint64_t sub_10000B780(uint64_t a1, char *a2, int a3, __darwin_time_t *a4, useconds_t a5, char *a6, size_t a7, unsigned int (*a8)(uint64_t), uint64_t a9)
{
  *v41 = 0u;
  v42 = 0u;
  __p = 0;
  v39 = 0;
  v40 = 0;
  v17 = *(a1 + 304);
  v18 = sub_100045278(a2, v17, 1, v41);
  if (LODWORD(v41[0]))
  {
    if (sub_100010510())
    {
      sub_10001026C(v41);
      sub_1000107A0("Error in PrepareForAttach: %s");
    }

LABEL_4:
    v19 = 0;
    v20 = __p;
    if (__p)
    {
LABEL_5:
      v39 = v20;
      operator delete(v20);
    }

    goto LABEL_6;
  }

  v22 = v18;
  v33 = a6;
  v34 = a7;
  if (v18)
  {
    v23 = 1;
  }

  else
  {
    v23 = a3 == 0;
  }

  if (v23)
  {
    v24 = 0;
  }

  else
  {
    v24 = sub_10000AA34(a2, &__p);
  }

  if (sub_100010524(2))
  {
    sub_100010668("Waiting for '%s' to appear...\n", a2);
  }

  while (!v22)
  {
    v36.tv_sec = 0;
    *&v36.tv_usec = 0;
    v37 = 0;
    v26 = sub_10000AA34(a2, &v36.tv_sec);
    if (v26)
    {
      for (i = 0; i != v26; ++i)
      {
        v32 = *(v36.tv_sec + 648 * i + 40);
        v28 = __p + 40;
        v29 = v24;
        if (v24)
        {
          while (v32 != *v28)
          {
            v28 += 162;
            if (!--v29)
            {
              goto LABEL_22;
            }
          }
        }

        else
        {
LABEL_22:
          if (v32)
          {
            goto LABEL_29;
          }
        }
      }
    }

    v32 = 0;
LABEL_29:
    if (v36.tv_sec)
    {
      *&v36.tv_usec = v36.tv_sec;
      operator delete(v36.tv_sec);
    }

    if (v32)
    {
      goto LABEL_51;
    }

LABEL_32:
    if (a4)
    {
      gettimeofday(&v36, 0);
      if (v36.tv_sec > *a4 || v36.tv_sec >= *a4 && a4[1] < 1000 * v36.tv_usec)
      {
        if (v33 && v34)
        {
          snprintf(v33, v34, "operation timed out");
        }

        if (sub_100010510())
        {
          sub_1000107A0("error: waiting for process '%s' timed out.\n");
        }

        goto LABEL_4;
      }
    }

    if (a8 && a8(a9))
    {
      if (sub_100010524(2))
      {
        sub_100010668("DNBProcessAttachWait cancelled by should_cancel callback.");
      }

      goto LABEL_56;
    }

    gettimeofday(&v36, 0);
    v35.tv_sec = v36.tv_sec;
    v35.tv_nsec = 1000 * v36.tv_usec;
    if (a5)
    {
      v30 = 1000 * v36.tv_usec + a5;
      v35.tv_sec = v30 / 1000000000 + v36.tv_sec;
      v35.tv_nsec = v30 % 1000000000;
    }

    v31 = sub_1000128FC(a1 + 120, 0xA0u, &v35);
    if ((v31 & 0x20) != 0)
    {
      if (sub_100010510())
      {
        sub_1000107A0("Interrupted by packet while waiting for '%s' to appear.\n");
      }

      goto LABEL_56;
    }

    if (v31 < 0)
    {
      if (sub_100010510())
      {
        sub_1000107A0("Interrupted by packet thread shutdown while waiting for %s to appear.\n");
      }

LABEL_56:
      v19 = 0;
      goto LABEL_57;
    }
  }

  v25 = sub_100046218(v22, v17);
  if (!v25)
  {
    goto LABEL_32;
  }

  v32 = v25;
LABEL_51:
  if (sub_100010524(2))
  {
    sub_100010668("Attaching to %s with pid %i...\n", a2, v32);
  }

  usleep(a5);
  v19 = sub_10000AD08(v32, a4, a1 + 448, v33, v34);
LABEL_57:
  sub_100046288(v22, v17, v19 != 0, v41);
  v20 = __p;
  if (__p)
  {
    goto LABEL_5;
  }

LABEL_6:
  if (SHIBYTE(v42) < 0)
  {
    operator delete(v41[1]);
  }

  return v19;
}

uint64_t sub_10000BAF8(int a1)
{
  if (!qword_10007DA00)
  {
    return 0;
  }

  v1 = *(qword_10007DA00 + 8);
  if (!v1)
  {
    return 0;
  }

  v3 = qword_10007DA00 + 8;
  do
  {
    if (*(v1 + 32) >= a1)
    {
      v3 = v1;
    }

    v1 = *(v1 + 8 * (*(v1 + 32) < a1));
  }

  while (v1);
  if (v3 == qword_10007DA00 + 8 || *(v3 + 32) > a1)
  {
    return 0;
  }

  v6 = *(v3 + 40);
  v5 = *(v3 + 48);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (sub_100010510())
  {
    sub_100010668("Disabling breakpoints and watchpoints, and detaching from %d.", a1);
  }

  sub_100042300(v6, 1);
  sub_100042384(v6, 1);
  result = sub_100042408(v6);
  if (v5)
  {
    if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v7 = result;
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
      return v7;
    }
  }

  return result;
}

uint64_t sub_10000BC18(int a1)
{
  if (!qword_10007DA00)
  {
    return 0;
  }

  v1 = *(qword_10007DA00 + 8);
  if (!v1)
  {
    return 0;
  }

  v2 = qword_10007DA00 + 8;
  do
  {
    if (*(v1 + 32) >= a1)
    {
      v2 = v1;
    }

    v1 = *(v1 + 8 * (*(v1 + 32) < a1));
  }

  while (v1);
  if (v2 == qword_10007DA00 + 8 || *(v2 + 32) > a1)
  {
    return 0;
  }

  v4 = *(v2 + 40);
  v5 = *(v2 + 48);
  if (!v5)
  {
    return sub_100041604(v4);
  }

  atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  result = sub_100041604(v4);
  if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v6 = result;
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
    return v6;
  }

  return result;
}

BOOL sub_10000BCF8(int a1, int a2)
{
  if (!qword_10007DA00)
  {
    return 0;
  }

  v2 = *(qword_10007DA00 + 8);
  if (!v2)
  {
    return 0;
  }

  v3 = qword_10007DA00 + 8;
  do
  {
    if (*(v2 + 32) >= a1)
    {
      v3 = v2;
    }

    v2 = *(v2 + 8 * (*(v2 + 32) < a1));
  }

  while (v2);
  if (v3 == qword_10007DA00 + 8 || *(v3 + 32) > a1)
  {
    return 0;
  }

  v5 = *(v3 + 40);
  v6 = *(v3 + 48);
  if (!v6)
  {
    return sub_100041D00(v5, a2, 0);
  }

  atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  result = sub_100041D00(v5, a2, 0);
  if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v7 = result;
    (v6->__on_zero_shared)(v6);
    std::__shared_weak_count::__release_weak(v6);
    return v7;
  }

  return result;
}

BOOL sub_10000BDD8(int a1)
{
  if (!qword_10007DA00)
  {
    return 0;
  }

  v1 = *(qword_10007DA00 + 8);
  if (!v1)
  {
    return 0;
  }

  v2 = qword_10007DA00 + 8;
  do
  {
    if (*(v1 + 32) >= a1)
    {
      v2 = v1;
    }

    v1 = *(v1 + 8 * (*(v1 + 32) < a1));
  }

  while (v1);
  if (v2 == qword_10007DA00 + 8 || *(v2 + 32) > a1)
  {
    return 0;
  }

  v4 = *(v2 + 40);
  v5 = *(v2 + 48);
  if (!v5)
  {
    return sub_100041C00(v4);
  }

  atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  result = sub_100041C00(v4);
  if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v6 = result;
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
    return v6;
  }

  return result;
}

BOOL sub_10000BEB0(int a1, char *a2)
{
  if (!qword_10007DA00)
  {
    return 0;
  }

  v2 = *(qword_10007DA00 + 8);
  if (!v2)
  {
    return 0;
  }

  v3 = qword_10007DA00 + 8;
  do
  {
    if (*(v2 + 32) >= a1)
    {
      v3 = v2;
    }

    v2 = *(v2 + 8 * (*(v2 + 32) < a1));
  }

  while (v2);
  if (v3 == qword_10007DA00 + 8 || *(v3 + 32) > a1)
  {
    return 0;
  }

  v5 = *(v3 + 40);
  v6 = *(v3 + 48);
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *__p = 0u;
  v10 = 0u;
  result = sub_100041E8C(v5, a2, __p);
  if (SHIBYTE(v10) < 0)
  {
    v7 = result;
    operator delete(__p[1]);
    result = v7;
  }

  if (v6)
  {
    if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v8 = result;
      (v6->__on_zero_shared)(v6);
      std::__shared_weak_count::__release_weak(v6);
      return v8;
    }
  }

  return result;
}

BOOL sub_10000BFB8(int a1, _DWORD *a2)
{
  if (!qword_10007DA00)
  {
    return 0;
  }

  v2 = *(qword_10007DA00 + 8);
  if (!v2)
  {
    return 0;
  }

  v3 = qword_10007DA00 + 8;
  do
  {
    if (*(v2 + 32) >= a1)
    {
      v3 = v2;
    }

    v2 = *(v2 + 8 * (*(v2 + 32) < a1));
  }

  while (v2);
  if (v3 == qword_10007DA00 + 8 || *(v3 + 32) > a1)
  {
    return 0;
  }

  v7 = *(v3 + 40);
  v6 = *(v3 + 48);
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v8 = sub_10003CFE8(v7) == 9;
  result = v8;
  if (a2 && v8)
  {
    *a2 = *(v7 + 72);
  }

  if (v6)
  {
    if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v9 = v8;
      (v6->__on_zero_shared)(v6);
      std::__shared_weak_count::__release_weak(v6);
      return v9;
    }
  }

  return result;
}

void *sub_10000C0B8(int a1)
{
  if (!qword_10007DA00)
  {
    return 0;
  }

  v1 = *(qword_10007DA00 + 8);
  if (!v1)
  {
    return 0;
  }

  v2 = qword_10007DA00 + 8;
  do
  {
    if (*(v1 + 32) >= a1)
    {
      v2 = v1;
    }

    v1 = *(v1 + 8 * (*(v1 + 32) < a1));
  }

  while (v1);
  if (v2 == qword_10007DA00 + 8 || *(v2 + 32) > a1)
  {
    return 0;
  }

  v4 = *(v2 + 40);
  v5 = *(v2 + 48);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  result = (v4 + 80);
  if (*(v4 + 103) < 0)
  {
    result = *result;
  }

  if (v5)
  {
    if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v6 = result;
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
      return v6;
    }
  }

  return result;
}

uint64_t sub_10000C19C(int a1, uint64_t a2)
{
  if (!qword_10007DA00)
  {
    return 0;
  }

  v2 = *(qword_10007DA00 + 8);
  if (!v2)
  {
    return 0;
  }

  v3 = qword_10007DA00 + 8;
  do
  {
    if (*(v2 + 32) >= a1)
    {
      v3 = v2;
    }

    v2 = *(v2 + 8 * (*(v2 + 32) < a1));
  }

  while (v2);
  if (v3 == qword_10007DA00 + 8 || *(v3 + 32) > a1)
  {
    return 0;
  }

  v5 = *(v3 + 40);
  v6 = *(v3 + 48);
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    result = sub_10003D058(v5, a2);
    if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v7 = result;
      (v6->__on_zero_shared)(v6);
      std::__shared_weak_count::__release_weak(v6);
      return v7;
    }
  }

  else
  {

    return sub_10003D058(v5, a2);
  }

  return result;
}

BOOL sub_10000C27C(int a1, uint64_t a2, integer_t *a3)
{
  if (!qword_10007DA00)
  {
    return 0;
  }

  v3 = *(qword_10007DA00 + 8);
  if (!v3)
  {
    return 0;
  }

  v4 = qword_10007DA00 + 8;
  do
  {
    if (*(v3 + 32) >= a1)
    {
      v4 = v3;
    }

    v3 = *(v3 + 8 * (*(v3 + 32) < a1));
  }

  while (v3);
  if (v4 == qword_10007DA00 + 8 || *(v4 + 32) > a1)
  {
    return 0;
  }

  v6 = *(v4 + 40);
  v7 = *(v4 + 48);
  if (!v7)
  {
    return sub_10004FD98((v6 + 968), a2, a3);
  }

  atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  result = sub_10004FD98((v6 + 968), a2, a3);
  if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v8 = result;
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
    return v8;
  }

  return result;
}

uint64_t sub_10000C35C(int a1, uint64_t a2)
{
  if (!qword_10007DA00)
  {
    return 0;
  }

  v2 = *(qword_10007DA00 + 8);
  if (!v2)
  {
    return 0;
  }

  v3 = qword_10007DA00 + 8;
  do
  {
    if (*(v2 + 32) >= a1)
    {
      v3 = v2;
    }

    v2 = *(v2 + 8 * (*(v2 + 32) < a1));
  }

  while (v2);
  if (v3 == qword_10007DA00 + 8 || *(v3 + 32) > a1)
  {
    return 0;
  }

  v5 = *(v3 + 40);
  v6 = *(v3 + 48);
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    result = sub_10003D060(v5, a2);
    if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v7 = result;
      (v6->__on_zero_shared)(v6);
      std::__shared_weak_count::__release_weak(v6);
      return v7;
    }
  }

  else
  {

    return sub_10003D060(v5, a2);
  }

  return result;
}

double sub_10000C43C@<D0>(int a1@<W0>, unint64_t a2@<X1>, _BYTE *a3@<X2>, void *a4@<X8>)
{
  *a4 = 0;
  a4[1] = 0;
  if (qword_10007DA00)
  {
    v4 = *(qword_10007DA00 + 8);
    if (v4)
    {
      v5 = qword_10007DA00 + 8;
      do
      {
        if (*(v4 + 32) >= a1)
        {
          v5 = v4;
        }

        v4 = *(v4 + 8 * (*(v4 + 32) < a1));
      }

      while (v4);
      if (v5 != qword_10007DA00 + 8 && *(v5 + 32) <= a1)
      {
        v7 = *(v5 + 40);
        v8 = *(v5 + 48);
        if (v8)
        {
          atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
          sub_1000451A8(v7, a2, a3, &v10);
          result = *&v10;
          *a4 = v10;
          if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v8->__on_zero_shared)(v8);
            std::__shared_weak_count::__release_weak(v8);
          }
        }

        else
        {
          sub_1000451A8(v7, a2, a3, &v10);
          result = *&v10;
          *a4 = v10;
        }
      }
    }
  }

  return result;
}

double sub_10000C52C@<D0>(int a1@<W0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  if (qword_10007DA00)
  {
    v3 = *(qword_10007DA00 + 8);
    if (v3)
    {
      v4 = qword_10007DA00 + 8;
      do
      {
        if (*(v3 + 32) >= a1)
        {
          v4 = v3;
        }

        v3 = *(v3 + 8 * (*(v3 + 32) < a1));
      }

      while (v3);
      if (v4 != qword_10007DA00 + 8 && *(v4 + 32) <= a1)
      {
        v6 = *(v4 + 40);
        v7 = *(v4 + 48);
        if (v7)
        {
          atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
          sub_1000451C8(v6, a2, &v9);
          result = *&v9;
          *a3 = v9;
          if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v7->__on_zero_shared)(v7);
            std::__shared_weak_count::__release_weak(v7);
          }
        }

        else
        {
          sub_1000451C8(v6, a2, &v9);
          result = *&v9;
          *a3 = v9;
        }
      }
    }
  }

  return result;
}

void sub_10000C61C(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  if (!qword_10007DA00)
  {
    goto LABEL_9;
  }

  v5 = *(qword_10007DA00 + 8);
  if (!v5)
  {
    goto LABEL_9;
  }

  v6 = qword_10007DA00 + 8;
  do
  {
    if (*(v5 + 32) >= a1)
    {
      v6 = v5;
    }

    v5 = *(v5 + 8 * (*(v5 + 32) < a1));
  }

  while (v5);
  if (v6 != qword_10007DA00 + 8 && *(v6 + 32) <= a1)
  {
    v7 = *(v6 + 40);
    v8 = *(v6 + 48);
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_10003D1D4(v7, a2, a3, a4, a5);
      if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v8->__on_zero_shared)(v8);

        std::__shared_weak_count::__release_weak(v8);
      }
    }

    else
    {

      sub_10003D1D4(v7, a2, a3, a4, a5);
    }
  }

  else
  {
LABEL_9:
    *(a5 + 16) = 0u;
    *(a5 + 32) = 0u;
    *a5 = 0u;
    *(a5 + 48) = -1;
  }
}

uint64_t sub_10000C718(int a1, uint64_t a2)
{
  if (!qword_10007DA00)
  {
    return -1;
  }

  v2 = *(qword_10007DA00 + 8);
  if (!v2)
  {
    return -1;
  }

  v3 = qword_10007DA00 + 8;
  do
  {
    if (*(v2 + 32) >= a1)
    {
      v3 = v2;
    }

    v2 = *(v2 + 8 * (*(v2 + 32) < a1));
  }

  while (v2);
  if (v3 == qword_10007DA00 + 8 || *(v3 + 32) > a1)
  {
    return -1;
  }

  v5 = *(v3 + 40);
  v6 = *(v3 + 48);
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    result = sub_10003D1DC(v5, a2);
    if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v7 = result;
      (v6->__on_zero_shared)(v6);
      std::__shared_weak_count::__release_weak(v6);
      return v7;
    }
  }

  else
  {

    return sub_10003D1DC(v5, a2);
  }

  return result;
}

uint64_t sub_10000C7F8(int a1, uint64_t a2)
{
  if (!qword_10007DA00)
  {
    return -1;
  }

  v2 = *(qword_10007DA00 + 8);
  if (!v2)
  {
    return -1;
  }

  v3 = qword_10007DA00 + 8;
  do
  {
    if (*(v2 + 32) >= a1)
    {
      v3 = v2;
    }

    v2 = *(v2 + 8 * (*(v2 + 32) < a1));
  }

  while (v2);
  if (v3 == qword_10007DA00 + 8 || *(v3 + 32) > a1)
  {
    return -1;
  }

  v5 = *(v3 + 40);
  v6 = *(v3 + 48);
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    result = sub_10003D1E4(v5, a2);
    if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v7 = result;
      (v6->__on_zero_shared)(v6);
      std::__shared_weak_count::__release_weak(v6);
      return v7;
    }
  }

  else
  {

    return sub_10003D1E4(v5, a2);
  }

  return result;
}

uint64_t sub_10000C8D8(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!qword_10007DA00)
  {
    return -1;
  }

  v5 = *(qword_10007DA00 + 8);
  if (!v5)
  {
    return -1;
  }

  v6 = qword_10007DA00 + 8;
  do
  {
    if (*(v5 + 32) >= a1)
    {
      v6 = v5;
    }

    v5 = *(v5 + 8 * (*(v5 + 32) < a1));
  }

  while (v5);
  if (v6 == qword_10007DA00 + 8 || *(v6 + 32) > a1)
  {
    return -1;
  }

  v8 = *(v6 + 40);
  v9 = *(v6 + 48);
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    result = sub_10003D1EC(v8, a2, a3, a4, a5);
    if (!atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v10 = result;
      (v9->__on_zero_shared)(v9);
      std::__shared_weak_count::__release_weak(v9);
      return v10;
    }
  }

  else
  {

    return sub_10003D1EC(v8, a2, a3, a4, a5);
  }

  return result;
}

unint64_t sub_10000C9B8(int a1)
{
  if (!qword_10007DA00)
  {
    goto LABEL_9;
  }

  v1 = *(qword_10007DA00 + 8);
  if (!v1)
  {
    goto LABEL_9;
  }

  v3 = qword_10007DA00 + 8;
  do
  {
    if (*(v1 + 32) >= a1)
    {
      v3 = v1;
    }

    v1 = *(v1 + 8 * (*(v1 + 32) < a1));
  }

  while (v1);
  if (v3 != qword_10007DA00 + 8 && *(v3 + 32) <= a1)
  {
    v7 = *(v3 + 40);
    v8 = *(v3 + 48);
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
      v4 = sub_10003FB58(v7, a1);
      v5 = v4 >> 8;
      if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v9 = v4;
        (v8->__on_zero_shared)(v8);
        std::__shared_weak_count::__release_weak(v8);
        LOBYTE(v4) = v9;
      }
    }

    else
    {
      v4 = sub_10003FB58(v7, a1);
      v5 = v4 >> 8;
    }
  }

  else
  {
LABEL_9:
    LOBYTE(v4) = 0;
    v5 = 0;
  }

  return v4 | (v5 << 8);
}

uint64_t sub_10000CAB0@<X0>(uint64_t result@<X0>, int a2@<W1>, void *a3@<X8>)
{
  if (qword_10007DA00)
  {
    v3 = *(qword_10007DA00 + 8);
    if (v3)
    {
      v5 = result;
      v6 = qword_10007DA00 + 8;
      do
      {
        if (*(v3 + 32) >= result)
        {
          v6 = v3;
        }

        v3 = *(v3 + 8 * (*(v3 + 32) < result));
      }

      while (v3);
      if (v6 != qword_10007DA00 + 8 && *(v6 + 32) <= result)
      {
        v7 = *(v6 + 40);
        v8 = *(v6 + 48);
        if (v8)
        {
          atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
          sub_10003F8C8(v7, v5, a2);
        }

        sub_10003F8C8(v7, v5, a2);
      }
    }
  }

  *a3 = 0;
  a3[1] = 0;
  return result;
}

uint64_t sub_10000CBA4@<X0>(uint64_t result@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  if (qword_10007DA00)
  {
    v3 = *(qword_10007DA00 + 8);
    if (v3)
    {
      v5 = result;
      v6 = qword_10007DA00 + 8;
      do
      {
        if (*(v3 + 32) >= result)
        {
          v6 = v3;
        }

        v3 = *(v3 + 8 * (*(v3 + 32) < result));
      }

      while (v3);
      if (v6 != qword_10007DA00 + 8 && *(v6 + 32) <= result)
      {
        v7 = *(v6 + 40);
        v8 = *(v6 + 48);
        if (v8)
        {
          atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
          sub_10003FD5C(v7, v5, a2);
        }

        sub_10003FD5C(v7, v5, a2);
      }
    }
  }

  *a3 = 0;
  a3[1] = 0;
  return result;
}

uint64_t sub_10000CC98@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  if (qword_10007DA00)
  {
    v2 = *(qword_10007DA00 + 8);
    if (v2)
    {
      v3 = qword_10007DA00 + 8;
      do
      {
        if (*(v2 + 32) >= result)
        {
          v3 = v2;
        }

        v2 = *(v2 + 8 * (*(v2 + 32) < result));
      }

      while (v2);
      if (v3 != qword_10007DA00 + 8 && *(v3 + 32) <= result)
      {
        v4 = *(v3 + 40);
        v5 = *(v3 + 48);
        if (v5)
        {
          atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
          sub_1000401F8();
        }

        sub_1000401F8();
      }
    }
  }

  *a2 = 0;
  a2[1] = 0;
  return result;
}

BOOL sub_10000CD88(int a1, char *a2, unint64_t a3)
{
  if (sub_100010524(2))
  {
    sub_100010668("%s(pid = %4.4x)", "DNBProcessResume", a1);
  }

  if (!qword_10007DA00)
  {
    return 0;
  }

  v6 = *(qword_10007DA00 + 8);
  if (!v6)
  {
    return 0;
  }

  v7 = qword_10007DA00 + 8;
  do
  {
    if (*(v6 + 32) >= a1)
    {
      v7 = v6;
    }

    v6 = *(v6 + 8 * (*(v6 + 32) < a1));
  }

  while (v6);
  if (v7 == qword_10007DA00 + 8 || *(v7 + 32) > a1)
  {
    return 0;
  }

  v10 = *(v7 + 40);
  v9 = *(v7 + 48);
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_100010AE8(&v13, a2, a3);
  if (v13 == v14)
  {
    v11 = 5;
  }

  else
  {
    v11 = 4;
  }

  sub_100010B58(&v13, v11, 0);
  result = sub_100041410(v10, &v13);
  v12 = result;
  if (__p)
  {
    operator delete(__p);
    result = v12;
  }

  if (v13)
  {
    v14 = v13;
    operator delete(v13);
    result = v12;
  }

  if (v9)
  {
    if (!atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v9->__on_zero_shared)(v9);
      std::__shared_weak_count::__release_weak(v9);
      return v12;
    }
  }

  return result;
}

BOOL sub_10000CEF4(int a1, unint64_t a2, uint64_t a3, int a4)
{
  if (!qword_10007DA00)
  {
    return 0;
  }

  v4 = *(qword_10007DA00 + 8);
  if (!v4)
  {
    return 0;
  }

  v5 = qword_10007DA00 + 8;
  do
  {
    if (*(v4 + 32) >= a1)
    {
      v5 = v4;
    }

    v4 = *(v4 + 8 * (*(v4 + 32) < a1));
  }

  while (v4);
  if (v5 == qword_10007DA00 + 8 || *(v5 + 32) > a1)
  {
    return 0;
  }

  v7 = *(v5 + 40);
  v8 = *(v5 + 48);
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  result = sub_1000429F8(v7, a2, a3, a4 != 0) != 0;
  if (v8)
  {
    if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v9 = result;
      (v8->__on_zero_shared)(v8);
      std::__shared_weak_count::__release_weak(v8);
      return v9;
    }
  }

  return result;
}

BOOL sub_10000CFDC(int a1, unint64_t a2)
{
  if (!qword_10007DA00)
  {
    return 0;
  }

  v2 = *(qword_10007DA00 + 8);
  if (!v2)
  {
    return 0;
  }

  v3 = qword_10007DA00 + 8;
  do
  {
    if (*(v2 + 32) >= a1)
    {
      v3 = v2;
    }

    v2 = *(v2 + 8 * (*(v2 + 32) < a1));
  }

  while (v2);
  if (v3 == qword_10007DA00 + 8 || *(v3 + 32) > a1)
  {
    return 0;
  }

  v5 = *(v3 + 40);
  v6 = *(v3 + 48);
  if (!v6)
  {
    return sub_100042E90(v5, a2, 1);
  }

  atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  result = sub_100042E90(v5, a2, 1);
  if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v7 = result;
    (v6->__on_zero_shared)(v6);
    std::__shared_weak_count::__release_weak(v6);
    return v7;
  }

  return result;
}

BOOL sub_10000D0BC(int a1, unint64_t a2, uint64_t a3, int a4, int a5)
{
  if (!qword_10007DA00)
  {
    return 0;
  }

  v5 = *(qword_10007DA00 + 8);
  if (!v5)
  {
    return 0;
  }

  v6 = qword_10007DA00 + 8;
  do
  {
    if (*(v5 + 32) >= a1)
    {
      v6 = v5;
    }

    v5 = *(v5 + 8 * (*(v5 + 32) < a1));
  }

  while (v5);
  if (v6 == qword_10007DA00 + 8 || *(v6 + 32) > a1)
  {
    return 0;
  }

  v8 = *(v6 + 40);
  v9 = *(v6 + 48);
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  result = sub_100042CCC(v8, a2, a3, a4, a5 != 0) != 0;
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

  return result;
}

BOOL sub_10000D1A4(int a1, unint64_t a2)
{
  if (!qword_10007DA00)
  {
    return 0;
  }

  v2 = *(qword_10007DA00 + 8);
  if (!v2)
  {
    return 0;
  }

  v3 = qword_10007DA00 + 8;
  do
  {
    if (*(v2 + 32) >= a1)
    {
      v3 = v2;
    }

    v2 = *(v2 + 8 * (*(v2 + 32) < a1));
  }

  while (v2);
  if (v3 == qword_10007DA00 + 8 || *(v3 + 32) > a1)
  {
    return 0;
  }

  v5 = *(v3 + 40);
  v6 = *(v3 + 48);
  if (!v6)
  {
    return sub_100043274(v5, a2, 1);
  }

  atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  result = sub_100043274(v5, a2, 1);
  if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v7 = result;
    (v6->__on_zero_shared)(v6);
    std::__shared_weak_count::__release_weak(v6);
    return v7;
  }

  return result;
}

uint64_t sub_10000D284(int a1)
{
  if (!qword_10007DA00)
  {
    return 0;
  }

  v1 = *(qword_10007DA00 + 8);
  if (!v1)
  {
    return 0;
  }

  v2 = qword_10007DA00 + 8;
  do
  {
    if (*(v1 + 32) >= a1)
    {
      v2 = v1;
    }

    v1 = *(v1 + 8 * (*(v1 + 32) < a1));
  }

  while (v1);
  if (v2 == qword_10007DA00 + 8 || *(v2 + 32) > a1)
  {
    return 0;
  }

  v4 = *(v2 + 40);
  v5 = *(v2 + 48);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    result = sub_1000433AC(v4);
    if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v6 = result;
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
      return v6;
    }
  }

  else
  {

    return sub_1000433AC(v4);
  }

  return result;
}

unint64_t sub_10000D364(int a1, mach_vm_address_t a2, unint64_t a3, char *a4)
{
  if (!qword_10007DA00)
  {
    return 0;
  }

  v4 = *(qword_10007DA00 + 8);
  if (!v4)
  {
    return 0;
  }

  v5 = qword_10007DA00 + 8;
  do
  {
    if (*(v4 + 32) >= a1)
    {
      v5 = v4;
    }

    v4 = *(v4 + 8 * (*(v4 + 32) < a1));
  }

  while (v4);
  if (v5 == qword_10007DA00 + 8 || *(v5 + 32) > a1)
  {
    return 0;
  }

  v7 = *(v5 + 40);
  v8 = *(v5 + 48);
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    result = sub_10003D590(v7, a2, a3, a4);
    if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v9 = result;
      (v8->__on_zero_shared)(v8);
      std::__shared_weak_count::__release_weak(v8);
      return v9;
    }
  }

  else
  {

    return sub_10003D590(v7, a2, a3, a4);
  }

  return result;
}

uint64_t sub_10000D444(int a1, mach_vm_address_t a2, int64_t a3, uint64_t a4)
{
  if (a3 > 8 || sub_10000D364(a1, a2, a3, &v7) != a3)
  {
    return a4;
  }

  if (a3 > 4)
  {
    if (a3 >= 8)
    {
      return v7;
    }

    return v7;
  }

  if (a3 > 2)
  {
    if (a3 == 3)
    {
      return v7 & 0xFFFFFF;
    }

    return v7;
  }

  if (a3 == 1)
  {
    return v7;
  }

  if (a3 == 2)
  {
    return v7;
  }

  return a4;
}

uint64_t sub_10000D514(int a1, mach_vm_address_t a2)
{
  v4 = sub_10000D598(a1);
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v6 = (v4 & 0x1000000) != 0 ? 8 : 4;
  if (sub_10000D364(a1, a2, v6, &v8) != v6)
  {
    return 0;
  }

  if ((v5 & 0x1000000) != 0)
  {
    return v8;
  }

  return v8;
}

uint64_t sub_10000D598(int a1)
{
  if (!qword_10007DA00)
  {
    return 0;
  }

  v1 = *(qword_10007DA00 + 8);
  if (!v1)
  {
    return 0;
  }

  v2 = qword_10007DA00 + 8;
  do
  {
    if (*(v1 + 32) >= a1)
    {
      v2 = v1;
    }

    v1 = *(v1 + 8 * (*(v1 + 32) < a1));
  }

  while (v1);
  if (v2 == qword_10007DA00 + 8 || *(v2 + 32) > a1)
  {
    return 0;
  }

  v4 = *(v2 + 40);
  v5 = *(v2 + 48);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    result = sub_100040AE4(v4);
    if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v6 = result;
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
      return v6;
    }
  }

  else
  {

    return sub_100040AE4(v4);
  }

  return result;
}

unint64_t sub_10000D678@<X0>(int a1@<W0>, mach_vm_address_t a2@<X1>, std::string *a3@<X8>)
{
  a3->__r_.__value_.__r.__words[0] = 0;
  a3->__r_.__value_.__l.__size_ = 0;
  a3->__r_.__value_.__r.__words[2] = 0;
  __s[255] = 0;
  do
  {
    result = sub_10000D364(a1, a2, 0xFFuLL, __s);
    if (!result)
    {
      break;
    }

    v7 = strlen(__s);
    result = std::string::append(a3, __s, v7);
    a2 += v7;
  }

  while (v7 == 255);
  return result;
}

std::string *sub_10000D730@<X0>(std::string *a1@<X8>)
{
  a1->__r_.__value_.__r.__words[0] = 0;
  a1->__r_.__value_.__l.__size_ = 0;
  a1->__r_.__value_.__r.__words[2] = 0;
  v2 = __chkstk_darwin();
  v4 = &v7 - ((v3 + 16) & 0xFFFFFFFFFFFFFFF0);
  v4[v3] = 0;
  result = sub_10000D364(v2, v5, v3, v4);
  if (result)
  {
    return std::string::assign(a1, v4);
  }

  return result;
}

unint64_t sub_10000D7D0(int a1, unint64_t a2, unint64_t a3, char *a4)
{
  if (!qword_10007DA00)
  {
    return 0;
  }

  v4 = *(qword_10007DA00 + 8);
  if (!v4)
  {
    return 0;
  }

  v5 = qword_10007DA00 + 8;
  do
  {
    if (*(v4 + 32) >= a1)
    {
      v5 = v4;
    }

    v4 = *(v4 + 8 * (*(v4 + 32) < a1));
  }

  while (v4);
  if (v5 == qword_10007DA00 + 8 || *(v5 + 32) > a1)
  {
    return 0;
  }

  v7 = *(v5 + 40);
  v8 = *(v5 + 48);
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    result = sub_1000427C8(v7, a2, a3, a4);
    if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v9 = result;
      (v8->__on_zero_shared)(v8);
      std::__shared_weak_count::__release_weak(v8);
      return v9;
    }
  }

  else
  {

    return sub_1000427C8(v7, a2, a3, a4);
  }

  return result;
}

mach_vm_address_t sub_10000D8B0(int a1, mach_vm_size_t a2, unsigned int a3)
{
  if (!qword_10007DA00)
  {
    return 0;
  }

  v3 = *(qword_10007DA00 + 8);
  if (!v3)
  {
    return 0;
  }

  v4 = qword_10007DA00 + 8;
  do
  {
    if (*(v3 + 32) >= a1)
    {
      v4 = v3;
    }

    v3 = *(v3 + 8 * (*(v3 + 32) < a1));
  }

  while (v3);
  if (v4 == qword_10007DA00 + 8 || *(v4 + 32) > a1)
  {
    return 0;
  }

  v6 = *(v4 + 40);
  v7 = *(v4 + 48);
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    result = sub_10004D8F4(v6 + 104, a2, a3);
    if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v8 = result;
      (v7->__on_zero_shared)(v7);
      std::__shared_weak_count::__release_weak(v7);
      return v8;
    }
  }

  else
  {

    return sub_10004D8F4(v6 + 104, a2, a3);
  }

  return result;
}

BOOL sub_10000D998(int a1, mach_vm_address_t a2)
{
  if (!qword_10007DA00)
  {
    return 0;
  }

  v2 = *(qword_10007DA00 + 8);
  if (!v2)
  {
    return 0;
  }

  v3 = qword_10007DA00 + 8;
  do
  {
    if (*(v2 + 32) >= a1)
    {
      v3 = v2;
    }

    v2 = *(v2 + 8 * (*(v2 + 32) < a1));
  }

  while (v2);
  if (v3 == qword_10007DA00 + 8 || *(v3 + 32) > a1)
  {
    return 0;
  }

  v5 = *(v3 + 40);
  v6 = *(v3 + 48);
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    result = sub_10004DA3C(v5 + 104, a2);
    if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v7 = result;
      (v6->__on_zero_shared)(v6);
      std::__shared_weak_count::__release_weak(v6);
      return v7;
    }
  }

  else
  {

    return sub_10004DA3C(v5 + 104, a2);
  }

  return result;
}

uint64_t sub_10000DA80(int a1, unint64_t a2, uint64_t a3)
{
  if (!qword_10007DA00)
  {
    return 0xFFFFFFFFLL;
  }

  v3 = *(qword_10007DA00 + 8);
  if (!v3)
  {
    return 0xFFFFFFFFLL;
  }

  v4 = qword_10007DA00 + 8;
  do
  {
    if (*(v3 + 32) >= a1)
    {
      v4 = v3;
    }

    v3 = *(v3 + 8 * (*(v3 + 32) < a1));
  }

  while (v3);
  if (v4 == qword_10007DA00 + 8 || *(v4 + 32) > a1)
  {
    return 0xFFFFFFFFLL;
  }

  v6 = *(v4 + 40);
  v7 = *(v4 + 48);
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    result = sub_10004BAFC(v6 + 104, a2, a3);
    if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v8 = result;
      (v7->__on_zero_shared)(v7);
      std::__shared_weak_count::__release_weak(v7);
      return v8;
    }
  }

  else
  {

    return sub_10004BAFC(v6 + 104, a2, a3);
  }

  return result;
}

void sub_10000DB68(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (!qword_10007DA00)
  {
    goto LABEL_9;
  }

  v3 = *(qword_10007DA00 + 8);
  if (!v3)
  {
    goto LABEL_9;
  }

  v4 = qword_10007DA00 + 8;
  do
  {
    if (*(v3 + 32) >= a1)
    {
      v4 = v3;
    }

    v3 = *(v3 + 8 * (*(v3 + 32) < a1));
  }

  while (v3);
  if (v4 != qword_10007DA00 + 8 && *(v4 + 32) <= a1)
  {
    v5 = *(v4 + 40);
    v6 = *(v4 + 48);
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_10004BB84(v5 + 104, a2, a3);
      if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v6->__on_zero_shared)(v6);

        std::__shared_weak_count::__release_weak(v6);
      }
    }

    else
    {

      sub_10004BB84(v5 + 104, a2, a3);
    }
  }

  else
  {
LABEL_9:
    *(a3 + 23) = 0;
    *a3 = 0;
  }
}

uint64_t sub_10000DC60(int a1, int a2, int a3, int a4)
{
  if (qword_10007DA00)
  {
    v4 = *(qword_10007DA00 + 8);
    if (v4)
    {
      v5 = qword_10007DA00 + 8;
      do
      {
        if (*(v4 + 32) >= a1)
        {
          v5 = v4;
        }

        v4 = *(v4 + 8 * (*(v4 + 32) < a1));
      }

      while (v4);
      if (v5 != qword_10007DA00 + 8 && *(v5 + 32) <= a1)
      {
        v8 = *(v5 + 40);
        v9 = *(v5 + 48);
        if (v9)
        {
          v6 = 1;
          atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
          sub_100041174(v8, a2 != 0, a3, a4);
          if (atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            return v6;
          }

          (v9->__on_zero_shared)(v9);
          std::__shared_weak_count::__release_weak(v9);
        }

        else
        {
          sub_100041174(v8, a2 != 0, a3, a4);
        }

        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_10000DD44(int a1)
{
  if (!qword_10007DA00)
  {
    return 0;
  }

  v1 = *(qword_10007DA00 + 8);
  if (!v1)
  {
    return 0;
  }

  v2 = qword_10007DA00 + 8;
  do
  {
    if (*(v1 + 32) >= a1)
    {
      v2 = v1;
    }

    v1 = *(v1 + 8 * (*(v1 + 32) < a1));
  }

  while (v1);
  if (v2 == qword_10007DA00 + 8 || *(v2 + 32) > a1)
  {
    return 0;
  }

  v4 = *(v2 + 40);
  v5 = *(v2 + 48);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    result = sub_10003D068(v4);
    if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v6 = result;
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
      return v6;
    }
  }

  else
  {

    return sub_10003D068(v4);
  }

  return result;
}

uint64_t sub_10000DE24(int a1)
{
  if (!qword_10007DA00)
  {
    return 0;
  }

  v1 = *(qword_10007DA00 + 8);
  if (!v1)
  {
    return 0;
  }

  v2 = qword_10007DA00 + 8;
  do
  {
    if (*(v1 + 32) >= a1)
    {
      v2 = v1;
    }

    v1 = *(v1 + 8 * (*(v1 + 32) < a1));
  }

  while (v1);
  if (v2 == qword_10007DA00 + 8 || *(v2 + 32) > a1)
  {
    return 0;
  }

  v4 = *(v2 + 40);
  v5 = *(v2 + 48);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    result = sub_1000405B4(v4);
    if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v6 = result;
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
      return v6;
    }
  }

  else
  {

    return sub_1000405B4(v4);
  }

  return result;
}

uint64_t sub_10000DF04(int a1)
{
  if (!qword_10007DA00)
  {
    return 0;
  }

  v1 = *(qword_10007DA00 + 8);
  if (!v1)
  {
    return 0;
  }

  v2 = qword_10007DA00 + 8;
  do
  {
    if (*(v1 + 32) >= a1)
    {
      v2 = v1;
    }

    v1 = *(v1 + 8 * (*(v1 + 32) < a1));
  }

  while (v1);
  if (v2 == qword_10007DA00 + 8 || *(v2 + 32) > a1)
  {
    return 0;
  }

  v4 = *(v2 + 40);
  v5 = *(v2 + 48);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    result = sub_1000405BC(v4);
    if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v6 = result;
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
      return v6;
    }
  }

  else
  {

    return sub_1000405BC(v4);
  }

  return result;
}

uint64_t sub_10000DFE4(int a1, uint64_t a2)
{
  if (!qword_10007DA00)
  {
    return 0;
  }

  v2 = *(qword_10007DA00 + 8);
  if (!v2)
  {
    return 0;
  }

  v3 = qword_10007DA00 + 8;
  do
  {
    if (*(v2 + 32) >= a1)
    {
      v3 = v2;
    }

    v2 = *(v2 + 8 * (*(v2 + 32) < a1));
  }

  while (v2);
  if (v3 == qword_10007DA00 + 8 || *(v3 + 32) > a1)
  {
    return 0;
  }

  v5 = *(v3 + 40);
  v6 = *(v3 + 48);
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    result = sub_1000405F4(v5, a2);
    if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v7 = result;
      (v6->__on_zero_shared)(v6);
      std::__shared_weak_count::__release_weak(v6);
      return v7;
    }
  }

  else
  {

    return sub_1000405F4(v5, a2);
  }

  return result;
}

uint64_t sub_10000E0C4(int a1, uint64_t a2, _DWORD *a3)
{
  if (!qword_10007DA00)
  {
    return 0;
  }

  v3 = *(qword_10007DA00 + 8);
  if (!v3)
  {
    return 0;
  }

  v4 = qword_10007DA00 + 8;
  do
  {
    if (*(v3 + 32) >= a1)
    {
      v4 = v3;
    }

    v3 = *(v3 + 8 * (*(v3 + 32) < a1));
  }

  while (v3);
  if (v4 == qword_10007DA00 + 8 || *(v4 + 32) > a1)
  {
    return 0;
  }

  v6 = *(v4 + 40);
  v7 = *(v4 + 48);
  if (!v7)
  {
    return sub_1000405FC(v6, a2, a3);
  }

  atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  result = sub_1000405FC(v6, a2, a3);
  if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v8 = result;
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
    return v8;
  }

  return result;
}

char *sub_10000E19C(int a1, uint64_t a2)
{
  if (!qword_10007DA00)
  {
    return 0;
  }

  v2 = *(qword_10007DA00 + 8);
  if (!v2)
  {
    return 0;
  }

  v3 = qword_10007DA00 + 8;
  do
  {
    if (*(v2 + 32) >= a1)
    {
      v3 = v2;
    }

    v2 = *(v2 + 8 * (*(v2 + 32) < a1));
  }

  while (v2);
  if (v3 == qword_10007DA00 + 8 || *(v3 + 32) > a1)
  {
    return 0;
  }

  v5 = *(v3 + 40);
  v6 = *(v3 + 48);
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    result = sub_100040ADC(v5, a2);
    if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v7 = result;
      (v6->__on_zero_shared)(v6);
      std::__shared_weak_count::__release_weak(v6);
      return v7;
    }
  }

  else
  {

    return sub_100040ADC(v5, a2);
  }

  return result;
}

uint64_t sub_10000E27C(int a1, unint64_t a2)
{
  if (!qword_10007DA00)
  {
    return 0;
  }

  v2 = *(qword_10007DA00 + 8);
  if (!v2)
  {
    return 0;
  }

  v3 = qword_10007DA00 + 8;
  do
  {
    if (*(v2 + 32) >= a1)
    {
      v3 = v2;
    }

    v2 = *(v2 + 8 * (*(v2 + 32) < a1));
  }

  while (v2);
  if (v3 == qword_10007DA00 + 8 || *(v3 + 32) > a1)
  {
    return 0;
  }

  v5 = *(v3 + 40);
  v6 = *(v3 + 48);
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    result = sub_10003D070(v5, a2);
    if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v7 = result;
      (v6->__on_zero_shared)(v6);
      std::__shared_weak_count::__release_weak(v6);
      return v7;
    }
  }

  else
  {

    return sub_10003D070(v5, a2);
  }

  return result;
}

BOOL sub_10000E35C(int a1, uint64_t a2)
{
  if (!qword_10007DA00)
  {
    return 0;
  }

  v2 = *(qword_10007DA00 + 8);
  if (!v2)
  {
    return 0;
  }

  v3 = qword_10007DA00 + 8;
  do
  {
    if (*(v2 + 32) >= a1)
    {
      v3 = v2;
    }

    v2 = *(v2 + 8 * (*(v2 + 32) < a1));
  }

  while (v2);
  if (v3 == qword_10007DA00 + 8 || *(v3 + 32) > a1)
  {
    return 0;
  }

  v5 = *(v3 + 40);
  v6 = *(v3 + 48);
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    result = sub_10003D078(v5, a2);
    if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v7 = result;
      (v6->__on_zero_shared)(v6);
      std::__shared_weak_count::__release_weak(v6);
      return v7;
    }
  }

  else
  {

    return sub_10003D078(v5, a2);
  }

  return result;
}

uint64_t sub_10000E43C(int a1)
{
  *__p = 0u;
  v9 = 0u;
  if (!qword_10007DA00)
  {
    return -1;
  }

  v1 = *(qword_10007DA00 + 8);
  if (!v1)
  {
    return -1;
  }

  v2 = qword_10007DA00 + 8;
  do
  {
    if (*(v1 + 32) >= a1)
    {
      v2 = v1;
    }

    v1 = *(v1 + 8 * (*(v1 + 32) < a1));
  }

  while (v1);
  if (v2 == qword_10007DA00 + 8 || *(v2 + 32) > a1)
  {
    return -1;
  }

  v4 = *(v2 + 40);
  v5 = *(v2 + 48);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  result = sub_10004D838(v4 + 104, __p);
  if (SHIBYTE(v9) < 0)
  {
    v6 = result;
    operator delete(__p[1]);
    result = v6;
  }

  if (v5)
  {
    if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v7 = result;
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
      return v7;
    }
  }

  return result;
}

uint64_t sub_10000E544(int a1, uint64_t a2, int a3, int a4, void *a5)
{
  bzero(a5, 0x10048uLL);
  if (!qword_10007DA00)
  {
    return 0;
  }

  v7 = *(qword_10007DA00 + 8);
  if (!v7)
  {
    return 0;
  }

  v8 = qword_10007DA00 + 8;
  do
  {
    if (*(v7 + 32) >= a1)
    {
      v8 = v7;
    }

    v7 = *(v7 + 8 * (*(v7 + 32) < a1));
  }

  while (v7);
  if (v8 == qword_10007DA00 + 8 || *(v8 + 32) > a1)
  {
    return 0;
  }

  v10 = *(v8 + 40);
  v11 = *(v8 + 48);
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (a2)
  {
    result = sub_100040BD8(v10, a2);
    if (!v11)
    {
      return result;
    }
  }

  else
  {
    result = 0;
    if (!v11)
    {
      return result;
    }
  }

  if (!atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v12 = result;
    (v11->__on_zero_shared)(v11);
    std::__shared_weak_count::__release_weak(v11);
    return v12;
  }

  return result;
}

uint64_t sub_10000E664(int a1, uint64_t a2)
{
  if (!a2 || !qword_10007DA00)
  {
    return 0;
  }

  v2 = *(qword_10007DA00 + 8);
  if (!v2)
  {
    return 0;
  }

  v3 = qword_10007DA00 + 8;
  do
  {
    if (*(v2 + 32) >= a1)
    {
      v3 = v2;
    }

    v2 = *(v2 + 8 * (*(v2 + 32) < a1));
  }

  while (v2);
  if (v3 == qword_10007DA00 + 8 || *(v3 + 32) > a1)
  {
    return 0;
  }

  v5 = *(v3 + 40);
  v6 = *(v3 + 48);
  if (!v6)
  {
    return sub_100040BE0(v5, a2);
  }

  atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  result = sub_100040BE0(v5, a2);
  if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v7 = result;
    (v6->__on_zero_shared)(v6);
    std::__shared_weak_count::__release_weak(v6);
    return v7;
  }

  return result;
}

uint64_t sub_10000E740(int a1, uint64_t a2, void *a3, size_t a4)
{
  if (!qword_10007DA00)
  {
    goto LABEL_9;
  }

  v4 = *(qword_10007DA00 + 8);
  if (!v4)
  {
    goto LABEL_9;
  }

  v5 = qword_10007DA00 + 8;
  do
  {
    if (*(v4 + 32) >= a1)
    {
      v5 = v4;
    }

    v4 = *(v4 + 8 * (*(v4 + 32) < a1));
  }

  while (v4);
  if (v5 == qword_10007DA00 + 8 || *(v5 + 32) > a1)
  {
LABEL_9:
    v6 = 0;
    goto LABEL_10;
  }

  v9 = *(v5 + 40);
  v6 = *(v5 + 48);
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (!a2)
  {
LABEL_10:
    bzero(a3, a4);
    result = 0;
    if (!v6)
    {
      return result;
    }

    goto LABEL_11;
  }

  result = sub_100050238(v9 + 968, a2);
  if (!v6)
  {
    return result;
  }

LABEL_11:
  if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v8 = result;
    (v6->__on_zero_shared)(v6);
    std::__shared_weak_count::__release_weak(v6);
    return v8;
  }

  return result;
}

uint64_t sub_10000E828(int a1, uint64_t a2)
{
  if (!qword_10007DA00)
  {
    return 0;
  }

  v2 = *(qword_10007DA00 + 8);
  if (!v2)
  {
    return 0;
  }

  v3 = qword_10007DA00 + 8;
  do
  {
    if (*(v2 + 32) >= a1)
    {
      v3 = v2;
    }

    v2 = *(v2 + 8 * (*(v2 + 32) < a1));
  }

  while (v2);
  if (v3 == qword_10007DA00 + 8 || *(v3 + 32) > a1)
  {
    return 0;
  }

  v5 = *(v3 + 40);
  v6 = *(v3 + 48);
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (a2)
  {
    result = sub_10005033C(v5 + 968, a2);
    if (!v6)
    {
      return result;
    }
  }

  else
  {
    result = 0;
    if (!v6)
    {
      return result;
    }
  }

  if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v7 = result;
    (v6->__on_zero_shared)(v6);
    std::__shared_weak_count::__release_weak(v6);
    return v7;
  }

  return result;
}

uint64_t sub_10000E914(int a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  if (!qword_10007DA00)
  {
    return 0;
  }

  v2 = *(qword_10007DA00 + 8);
  if (!v2)
  {
    return 0;
  }

  v3 = qword_10007DA00 + 8;
  do
  {
    if (*(v2 + 32) >= a1)
    {
      v3 = v2;
    }

    v2 = *(v2 + 8 * (*(v2 + 32) < a1));
  }

  while (v2);
  if (v3 == qword_10007DA00 + 8 || *(v3 + 32) > a1)
  {
    return 0;
  }

  v5 = *(v3 + 40);
  v6 = *(v3 + 48);
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    result = sub_100050440(v5 + 968, a2);
    if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v7 = result;
      (v6->__on_zero_shared)(v6);
      std::__shared_weak_count::__release_weak(v6);
      return v7;
    }
  }

  else
  {

    return sub_100050440(v5 + 968, a2);
  }

  return result;
}

uint64_t sub_10000EA00(int a1, uint64_t a2)
{
  if (!a2 || !qword_10007DA00)
  {
    return 0;
  }

  v2 = *(qword_10007DA00 + 8);
  if (!v2)
  {
    return 0;
  }

  v3 = qword_10007DA00 + 8;
  do
  {
    if (*(v2 + 32) >= a1)
    {
      v3 = v2;
    }

    v2 = *(v2 + 8 * (*(v2 + 32) < a1));
  }

  while (v2);
  if (v3 == qword_10007DA00 + 8 || *(v3 + 32) > a1)
  {
    return 0;
  }

  v5 = *(v3 + 40);
  v6 = *(v3 + 48);
  if (!v6)
  {
    return sub_10005052C(v5 + 968, a2);
  }

  atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  result = sub_10005052C(v5 + 968, a2);
  if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v7 = result;
    (v6->__on_zero_shared)(v6);
    std::__shared_weak_count::__release_weak(v6);
    return v7;
  }

  return result;
}

size_t sub_10000EAE4(int a1, void *a2, size_t a3)
{
  if (!qword_10007DA00)
  {
    return 0;
  }

  v3 = *(qword_10007DA00 + 8);
  if (!v3)
  {
    return 0;
  }

  v4 = qword_10007DA00 + 8;
  do
  {
    if (*(v3 + 32) >= a1)
    {
      v4 = v3;
    }

    v3 = *(v3 + 8 * (*(v3 + 32) < a1));
  }

  while (v3);
  if (v4 == qword_10007DA00 + 8 || *(v4 + 32) > a1)
  {
    return 0;
  }

  v6 = *(v4 + 40);
  v7 = *(v4 + 48);
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    result = sub_100043C70(v6, a2, a3);
    if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v8 = result;
      (v7->__on_zero_shared)(v7);
      std::__shared_weak_count::__release_weak(v7);
      return v8;
    }
  }

  else
  {

    return sub_100043C70(v6, a2, a3);
  }

  return result;
}

uint64_t sub_10000EBC4(int a1)
{
  if (!qword_10007DA00)
  {
    return 0;
  }

  v1 = *(qword_10007DA00 + 8);
  if (!v1)
  {
    return 0;
  }

  v2 = qword_10007DA00 + 8;
  do
  {
    if (*(v1 + 32) >= a1)
    {
      v2 = v1;
    }

    v1 = *(v1 + 8 * (*(v1 + 32) < a1));
  }

  while (v1);
  if (v2 == qword_10007DA00 + 8 || *(v2 + 32) > a1)
  {
    return 0;
  }

  v4 = *(v2 + 40);
  v5 = *(v2 + 48);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    result = sub_100044794();
    if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v6 = result;
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
      return v6;
    }
  }

  else
  {

    return sub_100044794();
  }

  return result;
}

size_t sub_10000ECA4(int a1, void *a2, size_t a3)
{
  if (!qword_10007DA00)
  {
    return 0;
  }

  v3 = *(qword_10007DA00 + 8);
  if (!v3)
  {
    return 0;
  }

  v4 = qword_10007DA00 + 8;
  do
  {
    if (*(v3 + 32) >= a1)
    {
      v4 = v3;
    }

    v3 = *(v3 + 8 * (*(v3 + 32) < a1));
  }

  while (v3);
  if (v4 == qword_10007DA00 + 8 || *(v4 + 32) > a1)
  {
    return 0;
  }

  v6 = *(v4 + 40);
  v7 = *(v4 + 48);
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    result = sub_100044A4C(v6, a2, a3);
    if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v8 = result;
      (v7->__on_zero_shared)(v7);
      std::__shared_weak_count::__release_weak(v7);
      return v8;
    }
  }

  else
  {

    return sub_100044A4C(v6, a2, a3);
  }

  return result;
}

uint64_t sub_10000ED84(int a1)
{
  if (!qword_10007DA00)
  {
    return 0;
  }

  v1 = *(qword_10007DA00 + 8);
  if (!v1)
  {
    return 0;
  }

  v2 = qword_10007DA00 + 8;
  do
  {
    if (*(v1 + 32) >= a1)
    {
      v2 = v1;
    }

    v1 = *(v1 + 8 * (*(v1 + 32) < a1));
  }

  while (v1);
  if (v2 != qword_10007DA00 + 8 && *(v2 + 32) <= a1)
  {
    v5 = *(v2 + 40);
    v6 = *(v2 + 48);
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      v3 = *(v5 + 444);
      if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v6->__on_zero_shared)(v6);
        std::__shared_weak_count::__release_weak(v6);
      }
    }

    else
    {
      return *(v5 + 444);
    }
  }

  else
  {
    return 0;
  }

  return v3;
}

char *sub_10000EE4C(char *result, UInt8 *a2, size_t a3)
{
  if (result)
  {
    v3 = result;
    if (!*result)
    {
      return 0;
    }

    memset(&v18, 0, sizeof(v18));
    sub_1000390C4(result, &v18);
    size = HIBYTE(v18.__r_.__value_.__r.__words[2]);
    if ((v18.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = v18.__r_.__value_.__l.__size_;
    }

    if (!size)
    {
      std::string::assign(&v18, v3);
    }

    if (!stat(v3, &v17) && (v17.st_mode & 0xF000) == 0x4000)
    {
      sub_100038C28(__source, v3);
      v7 = sub_100038E04(__source);
      *&v16.st_dev = off_10006CCA0;
      v16.st_ino = v7;
      if (v7)
      {
        if (CFURLGetFileSystemRepresentation(v7, 1u, a2, a3))
        {
          *&v16.st_dev = off_10006CCA0;
          if (v16.st_ino)
          {
            CFRelease(v16.st_ino);
          }

          sub_100038C9C(__source);
          result = 1;
          goto LABEL_21;
        }

        *&v16.st_dev = off_10006CCA0;
        if (v16.st_ino)
        {
          CFRelease(v16.st_ino);
        }
      }

      sub_100038C9C(__source);
    }

    if (realpath_DARWIN_EXTSN(v3, __source))
    {
      strlcpy(a2, __source, a3);
      v8 = strlen(a2) + 1;
    }

    else
    {
      result = getenv("PATH");
      if (!result)
      {
LABEL_21:
        if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
        {
          v9 = result;
          operator delete(v18.__r_.__value_.__l.__data_);
          return v9;
        }

        return result;
      }

      v10 = result;
      while (1)
      {
        if (!*v10)
        {
LABEL_36:
          result = 0;
          goto LABEL_21;
        }

        v11 = strchr(v10, 58);
        if (v11)
        {
          v12 = v11;
          if (v11 <= v10)
          {
            goto LABEL_36;
          }

          std::string::assign(&v18, v10, v11 - v10);
          v10 = v12 + 1;
        }

        else
        {
          std::string::assign(&v18, v10);
          v10 = 0;
        }

        std::string::push_back(&v18, 47);
        std::string::append(&v18, v3);
        v13 = (v18.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v18 : v18.__r_.__value_.__r.__words[0];
        if (!stat(v13, &v16))
        {
          break;
        }

        if (!v10)
        {
          goto LABEL_36;
        }
      }

      if ((v18.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v14 = &v18;
      }

      else
      {
        v14 = v18.__r_.__value_.__r.__words[0];
      }

      strlcpy(a2, v14, a3);
      v15 = HIBYTE(v18.__r_.__value_.__r.__words[2]);
      if ((v18.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v15 = v18.__r_.__value_.__l.__size_;
      }

      v8 = v15 + 1;
    }

    result = (v8 < a3);
    goto LABEL_21;
  }

  return result;
}

uint64_t sub_10000F0E0(uint64_t result)
{
  *result = off_10006CCA0;
  if (*(result + 8))
  {
    v1 = result;
    CFRelease(*(result + 8));
    result = v1;
    *(v1 + 8) = 0;
  }

  return result;
}

double sub_10000F140()
{
  if (sub_100010524(2))
  {
    sub_100010668("DNBInitialize ()");
  }

  return sub_100052C0C();
}

const char *sub_10000F17C(const char *result)
{
  if (result)
  {
    v1 = result;
    v2 = *result;
    if (*result)
    {
      if (!strcasecmp(result, "i386"))
      {
        v3 = 7;
        v4 = 0;
        return sub_100008B88(v3, v4);
      }

      if (!strcasecmp(v1, "x86_64"))
      {
        v3 = 16777223;
        v4 = 3;
        return sub_100008B88(v3, v4);
      }

      if (!strcasecmp(v1, "x86_64h"))
      {
        v3 = 16777223;
        v4 = 8;
        return sub_100008B88(v3, v4);
      }

      if (!strncmp(v1, "arm64_32", 8uLL) || !strncmp(v1, "aarch64_32", 0xAuLL))
      {
        v3 = 33554444;
        v4 = 0;
        return sub_100008B88(v3, v4);
      }

      if (!strncmp(v1, "arm64e", 6uLL))
      {
        v3 = 16777228;
        v4 = 2;
        return sub_100008B88(v3, v4);
      }

      if (!strncmp(v1, "arm64", 5uLL) || !strncmp(v1, "aarch64", 7uLL))
      {
        v3 = 16777228;
        v4 = 0;
        return sub_100008B88(v3, v4);
      }

      if (!strncmp(v1, "armv8", 5uLL))
      {
        v3 = 16777228;
        v4 = 1;
        return sub_100008B88(v3, v4);
      }

      if (!strncmp(v1, "armv7em", 7uLL))
      {
        v3 = 12;
        v4 = 16;
        return sub_100008B88(v3, v4);
      }

      if (!strncmp(v1, "armv7m", 6uLL))
      {
        v3 = 12;
        v4 = 15;
        return sub_100008B88(v3, v4);
      }

      if (!strncmp(v1, "armv7k", 6uLL))
      {
        v3 = 12;
        v4 = 12;
        return sub_100008B88(v3, v4);
      }

      if (!strncmp(v1, "armv7s", 6uLL))
      {
        v3 = 12;
        v4 = 11;
        return sub_100008B88(v3, v4);
      }

      if (!strncmp(v1, "armv7", 5uLL))
      {
        v3 = 12;
        v4 = 9;
        return sub_100008B88(v3, v4);
      }

      if (!strncmp(v1, "armv6m", 6uLL))
      {
        v3 = 12;
        v4 = 14;
        return sub_100008B88(v3, v4);
      }

      if (!strncmp(v1, "armv6", 5uLL))
      {
        v3 = 12;
        v4 = 6;
        return sub_100008B88(v3, v4);
      }

      if (!strncmp(v1, "armv5", 5uLL))
      {
        v3 = 12;
        v4 = 7;
        return sub_100008B88(v3, v4);
      }

      if (!strncmp(v1, "armv4t", 6uLL))
      {
        v3 = 12;
        v4 = 5;
        return sub_100008B88(v3, v4);
      }

      if (v2 == 97 && v1[1] == 114 && v1[2] == 109)
      {
        v3 = 12;
        v4 = 0;
        return sub_100008B88(v3, v4);
      }
    }

    return 0;
  }

  return result;
}

BOOL sub_10000F464(_DWORD *a1)
{
  if (atomic_load_explicit(&qword_10007D9F8, memory_order_acquire) != -1)
  {
    v6 = &v4;
    v5 = &v6;
    std::__call_once(&qword_10007D9F8, &v5, sub_10000FA54);
  }

  v2 = dword_10007D9F0;
  *a1 = dword_10007D9F0;
  return v2 != 0;
}

uint64_t sub_10000F4EC(pid_t a1)
{
  v13 = 0;
  pthread_setname_np("waitpid thread");
  v11 = 0;
  v2 = pthread_self();
  if (!pthread_getschedparam(v2, &v11, &v12))
  {
    v12.sched_priority = 47;
    v3 = pthread_self();
    pthread_setschedparam(v3, v11, &v12);
  }

  do
  {
    while (1)
    {
      v4 = waitpid(a1, &v13, 0);
      if (sub_100010524(2))
      {
        v5 = v13;
        v6 = __error();
        sub_100010668("waitpid_thread (): waitpid (pid = %i, &status, 0) => %i, status = %i, errno = %i", a1, v4, v5, *v6);
      }

      if (v4 < 0)
      {
        break;
      }

      if ((~v13 & 0x7F) != 0 || (v13 & 0xFFFFFF00) == 4864)
      {
        if (sub_100010524(2))
        {
          sub_100010668("waitpid_thread (): setting exit status for pid = %i to %i", v4, v13);
        }

        v8 = v13;
        v9 = v4;
        goto LABEL_19;
      }
    }
  }

  while (*__error() == 4);
  if (sub_100010524(2))
  {
    sub_100010668("waitpid_thread (): main loop exited, setting exit status to an invalid value (-1) for pid %i", a1);
  }

  v9 = a1;
  v8 = -1;
LABEL_19:
  sub_10000A2A4(v9, v8);
  return 0;
}

void sub_10000F640(uint64_t a1, const void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = *a1;
    v7 = 0x2C3F35BA781948B1 * ((v4 - *a1) >> 3) + 1;
    if (v7 > 0x6522C3F35BA781)
    {
      sub_100008888();
    }

    v8 = 0x2C3F35BA781948B1 * ((v3 - v6) >> 3);
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0x329161F9ADD3C0)
    {
      v9 = 0x6522C3F35BA781;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      if (v9 <= 0x6522C3F35BA781)
      {
        operator new();
      }

      sub_100008888();
    }

    v10 = (8 * ((v4 - *a1) >> 3));
    memcpy(v10, a2, 0x288uLL);
    v5 = v10 + 648;
    v11 = v4 - v6;
    v12 = &v10[-(v4 - v6)];
    memcpy(v12, v6, v11);
    *a1 = v12;
    *(a1 + 8) = v10 + 648;
    *(a1 + 16) = 0;
    if (v6)
    {
      operator delete(v6);
    }
  }

  else
  {
    memcpy(*(a1 + 8), a2, 0x288uLL);
    v5 = (v4 + 648);
  }

  *(a1 + 8) = v5;
}

void sub_10000F78C(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_10000F7C4(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    sub_10003CFE4();

    operator delete();
  }

  return result;
}

void sub_10000F80C(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (0x2C3F35BA781948B1 * ((v3 - v4) >> 3) >= a2)
  {
    if (a2)
    {
      v10 = 648 * ((648 * a2 - 648) / 0x288) + 648;
      bzero(*(a1 + 8), v10);
      v4 += v10;
    }

    *(a1 + 8) = v4;
  }

  else
  {
    v5 = *a1;
    v6 = 0x2C3F35BA781948B1 * ((v4 - *a1) >> 3);
    if (v6 + a2 > 0x6522C3F35BA781)
    {
      sub_100008888();
    }

    v7 = 0x2C3F35BA781948B1 * ((v3 - v5) >> 3);
    v8 = 2 * v7;
    if (2 * v7 <= v6 + a2)
    {
      v8 = v6 + a2;
    }

    if (v7 >= 0x329161F9ADD3C0)
    {
      v9 = 0x6522C3F35BA781;
    }

    else
    {
      v9 = v8;
    }

    if (v9)
    {
      if (v9 <= 0x6522C3F35BA781)
      {
        operator new();
      }

      sub_100008888();
    }

    v11 = (8 * ((v4 - *a1) >> 3));
    v12 = 648 * ((648 * a2 - 648) / 0x288) + 648;
    bzero(v11, v12);
    v13 = v4 - v5;
    v14 = &v11[-(v4 - v5)];
    memcpy(v14, v5, v13);
    *a1 = v14;
    *(a1 + 8) = &v11[v12];
    *(a1 + 16) = 0;
    if (v5)
    {

      operator delete(v5);
    }
  }
}

void sub_10000F9E0(uint64_t a1)
{
  *a1 = off_10006CCA0;
  if (*(a1 + 8))
  {
    CFRelease(*(a1 + 8));
    *(a1 + 8) = 0;
    v1 = vars8;
  }

  operator delete();
}

uint64_t sub_10000FA54()
{
  v1 = 4;
  result = sysctlbyname("machdep.virtual_address_size", &dword_10007D9F0, &v1, 0, 0);
  if (result)
  {
    dword_10007D9F0 = 0;
  }

  return result;
}

uint64_t sub_10000FAA4(uint64_t result, uint64_t a2, uint64_t a3, char a4)
{
  *result = a2;
  *(result + 8) = a2 + a3;
  *(result + 16) = a4;
  *(result + 17) = 0;
  *(result + 24) = -1;
  *(result + 32) = -1;
  *(result + 40) = -1;
  return result;
}

uint64_t sub_10000FAC8(uint64_t a1, _DWORD *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8) - *a1;
  v4 = v3 >= v2;
  v5 = v3 - v2;
  if (!v4)
  {
    v5 = 0;
  }

  if (v5 < 4)
  {
    return 0;
  }

  v6 = *(*a1 + v2);
  v7 = bswap32(v6);
  if (*(a1 + 16))
  {
    result = v7;
  }

  else
  {
    result = v6;
  }

  *a2 = v2 + 4;
  return result;
}

unint64_t sub_10000FB0C(uint64_t a1, _DWORD *a2, int a3)
{
  if (a3 <= 3)
  {
    if (a3 == 1)
    {
      v14 = *a2;
      if (*(a1 + 8) - *a1 > v14)
      {
        result = *(*a1 + v14);
        *a2 = v14 + 1;
        return result;
      }

      return 0;
    }

    if (a3 == 2)
    {
      v3 = *a2;
      v4 = *(a1 + 8) - *a1;
      v5 = v4 >= v3;
      v6 = v4 - v3;
      if (!v5)
      {
        v6 = 0;
      }

      if (v6 >= 2)
      {
        v7 = *(*a1 + v3);
        v8 = bswap32(v7) >> 16;
        if (*(a1 + 16))
        {
          LOWORD(v7) = v8;
        }

        *a2 = v3 + 2;
        return v7;
      }

      return 0;
    }

LABEL_29:
    sub_10005902C();
  }

  if (a3 == 4)
  {
    v15 = *a2;
    v16 = *(a1 + 8) - *a1;
    v5 = v16 >= v15;
    v17 = v16 - v15;
    if (!v5)
    {
      v17 = 0;
    }

    if (v17 < 4)
    {
      return 0;
    }

    v18 = *(*a1 + v15);
    v19 = bswap32(v18);
    if (*(a1 + 16))
    {
      result = v19;
    }

    else
    {
      result = v18;
    }

    *a2 = v15 + 4;
  }

  else
  {
    if (a3 != 8)
    {
      goto LABEL_29;
    }

    v10 = *a2;
    v11 = *(a1 + 8) - *a1;
    v5 = v11 >= v10;
    v12 = v11 - v10;
    if (!v5)
    {
      v12 = 0;
    }

    if (v12 < 8)
    {
      return 0;
    }

    v13 = bswap64(*(*a1 + v10));
    if (*(a1 + 16))
    {
      result = v13;
    }

    else
    {
      result = *(*a1 + v10);
    }

    *a2 = v10 + 8;
  }

  return result;
}

const char *sub_10000FC2C(uint64_t *a1, _DWORD *a2, int a3)
{
  v3 = *a1;
  if (*a1 >= a1[1])
  {
    return 0;
  }

  v4 = *a2;
  result = (v3 + v4);
  if (a3)
  {
    v6 = v4 + a3;
  }

  else
  {
    v7 = (v3 + v4);
    v8 = a2;
    v9 = strlen(result);
    a2 = v8;
    v10 = v9;
    result = v7;
    v6 = v4 + v10 + 1;
  }

  *a2 = v6;
  return result;
}

uint64_t sub_10000FCA0(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, int a5, unsigned int a6, const char *a7)
{
  v7 = a2;
  __str[0] = 0;
  v91 = a2;
  if (a2 >= a3)
  {
    return a2;
  }

  v9 = a2;
  if (*(a1 + 8) - *a1 <= a2)
  {
    return a2;
  }

  v14 = 0;
  v15 = 0;
  if (a7)
  {
    v16 = a7;
  }

  else
  {
    v16 = " %lld";
  }

  v17 = " 0x%llx";
  if (a7)
  {
    v17 = a7;
  }

  v89 = v16;
  v90 = v17;
  if (a7)
  {
    v18 = a7;
  }

  else
  {
    v18 = " %16.16llx";
  }

  v19 = " %8.8x";
  if (a7)
  {
    v19 = a7;
  }

  v87 = v19;
  __format = v18;
  if (a7)
  {
    v20 = a7;
  }

  else
  {
    v20 = " %4.4x";
  }

  v21 = " %c";
  if (a7)
  {
    v21 = a7;
  }

  v85 = v21;
  v86 = v20;
  v22 = " %2.2x";
  if (a7)
  {
    v22 = a7;
  }

  v84 = v22;
  LODWORD(v23) = a2;
  do
  {
    if (v14 % a6)
    {
      if (v15 < 0x400)
      {
        goto LABEL_41;
      }
    }

    else
    {
      if (__str[0] && sub_100010510())
      {
        sub_100010544(0, "%s", v32, v33, v34, v35, v36, v37, __str);
      }

      v15 = snprintf(__str, 0x400uLL, "0x%8.8llx:", (v23 - v7) + a4);
      if (v15 < 0x400)
      {
LABEL_41:
        if (a5 > 3)
        {
          goto LABEL_33;
        }

        goto LABEL_42;
      }
    }

    if (sub_100010510())
    {
      sub_100010544(0, "%s", v26, v27, v28, v29, v30, v31, __str);
    }

    v15 = 0;
    __str[0] = 0;
    if (a5 > 3)
    {
LABEL_33:
      if (a5 <= 5)
      {
        if (a5 == 4)
        {
          v57 = 0;
          v58 = *(a1 + 8) - *a1;
          v44 = v58 >= v9;
          v59 = v58 - v9;
          if (!v44)
          {
            v59 = 0;
          }

          if (v59 >= 8)
          {
            v57 = *(*a1 + v9);
            v60 = bswap64(v57);
            if (*(a1 + 16))
            {
              v57 = v60;
            }

            v91 = v23 + 8;
          }

          v24 = snprintf(&__str[v15], 1024 - v15, __format, v57);
        }

        else
        {
          if (!*(a1 + 17))
          {
            sub_100059058();
          }

          v83 = sub_10000FB0C(a1, &v91, *(a1 + 17));
          v24 = snprintf(&__str[v15], 1024 - v15, v90, v83);
        }

        goto LABEL_22;
      }

      if (a5 == 6)
      {
        v66 = *(a1 + 8);
        if (*a1 >= v66)
        {
          v68 = 0;
        }

        else
        {
          v67 = 0;
          v68 = 0;
          v69 = 0;
          v70 = (*a1 + v9);
          do
          {
            if (v70 >= v66)
            {
              break;
            }

            ++v69;
            v71 = *v70++;
            v68 |= (v71 & 0x7F) << v67;
            v67 += 7;
          }

          while (v71 < 0);
          v91 = v69 + v23;
        }

        v24 = snprintf(&__str[v15], 1024 - v15, v90, v68);
        goto LABEL_22;
      }

      if (a5 == 7)
      {
        v48 = *a1;
        v49 = *(a1 + 8);
        if (*a1 >= v49)
        {
          v73 = 0;
        }

        else
        {
          v50 = (v48 + v9);
          if (v48 + v9 >= v49)
          {
            v54 = 0;
            v52 = 0;
            v55 = 0;
            v74 = 1;
          }

          else
          {
            v51 = 0;
            v52 = 0;
            v53 = v49 - (v23 + v48);
            v54 = 7 * v53;
            v55 = 1;
            while (1)
            {
              v56 = *v50;
              v52 |= (*v50 & 0x7F) << v51;
              if ((*v50 & 0x80) == 0)
              {
                break;
              }

              ++v50;
              ++v55;
              v51 += 7;
              if (v50 >= v49)
              {
                v55 = v53;
                goto LABEL_100;
              }
            }

            v54 = v51 + 7;
LABEL_100:
            v74 = (v56 & 0x40) == 0;
          }

          if (v54 > 31)
          {
            v74 = 1;
          }

          v75 = -1 << v54;
          if (v74)
          {
            v75 = 0;
          }

          v73 = v75 | v52;
          v91 = v55 + v23;
        }

        v24 = snprintf(&__str[v15], 1024 - v15, v89, v73);
        goto LABEL_22;
      }

      goto LABEL_23;
    }

LABEL_42:
    if (a5 > 1)
    {
      if (a5 == 2)
      {
        v62 = *(a1 + 8) - *a1;
        v44 = v62 >= v9;
        v63 = v62 - v9;
        if (!v44)
        {
          v63 = 0;
        }

        if (v63 < 2)
        {
          v64 = 0;
        }

        else
        {
          LODWORD(v64) = *(*a1 + v9);
          v65 = bswap32(v64) >> 16;
          if (*(a1 + 16))
          {
            LOWORD(v64) = v65;
          }

          v91 = v23 + 2;
          v64 = v64;
        }

        v24 = snprintf(&__str[v15], 1024 - v15, v86, v64);
      }

      else
      {
        v43 = *(a1 + 8) - *a1;
        v44 = v43 >= v9;
        v45 = v43 - v9;
        if (!v44)
        {
          v45 = 0;
        }

        if (v45 < 4)
        {
          v46 = 0;
        }

        else
        {
          LODWORD(v46) = *(*a1 + v9);
          v47 = bswap32(v46);
          if (*(a1 + 16))
          {
            v46 = v47;
          }

          else
          {
            v46 = v46;
          }

          v91 = v23 + 4;
        }

        v24 = snprintf(&__str[v15], 1024 - v15, v87, v46);
      }

      goto LABEL_22;
    }

    if (!a5)
    {
      if (*(a1 + 8) - *a1 <= v9)
      {
        v61 = 0;
      }

      else
      {
        v61 = *(*a1 + v9);
        v91 = v23 + 1;
      }

      v24 = snprintf(&__str[v15], 1024 - v15, v84, v61);
      goto LABEL_22;
    }

    if (a5 == 1)
    {
      if (*(a1 + 8) - *a1 <= v9)
      {
        v38 = 0;
        v39 = &__str[v15];
        v40 = 1024 - v15;
      }

      else
      {
        v38 = *(*a1 + v9);
        v91 = v23 + 1;
        v39 = &__str[v15];
        v40 = 1024 - v15;
        if ((v38 & 0x80000000) != 0)
        {
          v41 = __maskrune(v38, 0x40000uLL);
          v40 = 1024 - v15;
          v42 = v41;
          v39 = &__str[v15];
LABEL_91:
          if (v42)
          {
            v72 = v38;
          }

          else
          {
            v72 = 32;
          }

          v24 = snprintf(v39, v40, v85, v72);
LABEL_22:
          v15 += v24;
          goto LABEL_23;
        }
      }

      v42 = _DefaultRuneLocale.__runetype[v38] & 0x40000;
      goto LABEL_91;
    }

LABEL_23:
    ++v14;
    v23 = v91;
    v25 = v91 < a3 && *(a1 + 8) - *a1 > v91;
    v9 = v91;
  }

  while (v25);
  if (__str[0] && sub_100010510())
  {
    sub_100010544(0, "%s", v76, v77, v78, v79, v80, v81, __str);
  }

  return v23;
}

std::string *sub_10001026C(uint64_t a1)
{
  if (!*a1)
  {
    return 0;
  }

  v1 = (a1 + 8);
  if ((*(a1 + 31) & 0x8000000000000000) != 0)
  {
    if (*(a1 + 16))
    {
      goto LABEL_19;
    }
  }

  else if (*(a1 + 31))
  {
    goto LABEL_19;
  }

  v3 = *(a1 + 4);
  if (v3 > 3)
  {
    if (v3 == 4)
    {
      v6 = "Should have set BackBoard error when making the error string.";
    }

    else
    {
      if (v3 != 5)
      {
        goto LABEL_19;
      }

      v6 = "Should have set FrontBoard error when making the error string.";
    }

    goto LABEL_18;
  }

  if (v3 == 1)
  {
    v4 = a1;
    v5 = mach_error_string(*a1);
  }

  else
  {
    if (v3 != 2)
    {
      goto LABEL_19;
    }

    v4 = a1;
    v5 = strerror(*a1);
  }

  v6 = v5;
  a1 = v4;
  if (v6)
  {
LABEL_18:
    v7 = a1;
    std::string::assign(v1, v6);
    a1 = v7;
  }

LABEL_19:
  if (*(a1 + 31) < 0)
  {
    if (*(a1 + 16))
    {
      return v1->__r_.__value_.__r.__words[0];
    }

    else
    {
      return 0;
    }
  }

  else if (*(a1 + 31))
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

void sub_10001035C(_DWORD *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  if (*a1)
  {
    v12 = 0;
    vasprintf(&v12, a2, &a9);
    if (v12)
    {
      v10 = sub_10001026C(a1);
      if (sub_100010510())
      {
        v11 = "???";
        if (v10)
        {
          v11 = v10;
        }

        sub_100010668("error: %s err = %s (0x%8.8x)", v12, v11, *a1);
      }

      free(v12);
    }
  }
}

void sub_1000103F8(_DWORD *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v12 = 0;
  vasprintf(&v12, a2, &a9);
  if (v12)
  {
    if (*a1)
    {
      sub_10001026C(a1);
      if (sub_100010510())
      {
        v11 = *a1;
        sub_100010668("error: %s err = %s (0x%8.8x)");
      }
    }

    else if (sub_100010510())
    {
      v10 = *a1;
      sub_100010668("%s err = 0x%8.8x");
    }

    free(v12);
  }
}

uint64_t sub_1000104DC(int a1)
{
  v1 = dword_10007D9D0;
  dword_10007D9D0 = a1;
  return v1;
}

void *sub_1000104F0(void *result, uint64_t a2)
{
  off_10007DA10 = result;
  qword_10007DA18 = a2;
  return result;
}

uint64_t sub_100010544(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if ((atomic_load_explicit(&qword_10007DA50, memory_order_acquire) & 1) == 0)
  {
    sub_100059084();
  }

  pthread_mutex_lock(&stru_10007DA58);
  if (off_10007DA10)
  {
    off_10007DA10(qword_10007DA18, a1, a2, &a9);
  }

  return pthread_mutex_unlock(&stru_10007DA58);
}

uint64_t sub_1000105CC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (off_10007DA10)
  {
    v9 = dword_10007DA08 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (!v9)
  {
    v10 = result;
    if ((atomic_load_explicit(&qword_10007DA50, memory_order_acquire) & 1) == 0)
    {
      sub_100059084();
    }

    pthread_mutex_lock(&stru_10007DA58);
    if (off_10007DA10)
    {
      off_10007DA10(qword_10007DA18, 8, v10, &a9);
    }

    return pthread_mutex_unlock(&stru_10007DA58);
  }

  return result;
}

void sub_100010668(char *a1, ...)
{
  va_start(va, a1);
  if (off_10007DA10)
  {
    v10 = 0;
    vasprintf(&v10, a1, va);
    if (v10)
    {
      gettimeofday(&xmmword_10007DA30, 0);
      v1 = xmmword_10007DA20;
      if (xmmword_10007DA20)
      {
        qword_10007DA40 = xmmword_10007DA30 - xmmword_10007DA20;
        dword_10007DA48 = DWORD2(xmmword_10007DA30) - DWORD2(xmmword_10007DA20);
        if (DWORD2(xmmword_10007DA30) - DWORD2(xmmword_10007DA20) >= 0)
        {
LABEL_8:
          xmmword_10007DA20 = xmmword_10007DA30;
          v2 = mach_thread_self();
          v3 = ++dword_10007DA4C;
          getpid();
          sub_100010544(32, "%u +%lu.%06u sec [%4.4x/%4.4x]: %s", v4, v5, v6, v7, v8, v9, v3);
          mach_port_deallocate(mach_task_self_, v2);
          free(v10);
          return;
        }

        qword_10007DA40 = xmmword_10007DA30 - xmmword_10007DA20 - 1;
        v1 = DWORD2(xmmword_10007DA30) - DWORD2(xmmword_10007DA20) + 1000000;
      }

      else
      {
        qword_10007DA40 = 0;
      }

      dword_10007DA48 = v1;
      goto LABEL_8;
    }
  }
}

void sub_1000107A0(char *a1, ...)
{
  va_start(va, a1);
  if (off_10007DA10)
  {
    v7 = 0;
    vasprintf(&v7, a1, va);
    if (v7)
    {
      sub_100010544(2, "error: %s", v1, v2, v3, v4, v5, v6, v7);
      free(v7);
    }
  }
}

void sub_10001080C(char *a1, ...)
{
  va_start(va, a1);
  if (off_10007DA10)
  {
    v7 = 0;
    vasprintf(&v7, a1, va);
    if (v7)
    {
      sub_100010544(4, "warning: %s", v1, v2, v3, v4, v5, v6, v7);
      free(v7);
    }
  }
}

pthread_mutex_t *sub_100010878(pthread_mutex_t *a1)
{
  if (pthread_mutex_destroy(a1) && !pthread_mutex_unlock(a1))
  {
    pthread_mutex_destroy(a1);
  }

  return a1;
}

pthread_mutex_t *sub_1000108B8(pthread_mutex_t *a1, int a2)
{
  if (pthread_mutexattr_init(&v5))
  {
    sub_1000590CC();
  }

  if (pthread_mutexattr_settype(&v5, a2))
  {
    sub_1000590F8();
  }

  if (pthread_mutex_init(a1, &v5))
  {
    sub_100059124();
  }

  if (pthread_mutexattr_destroy(&v5))
  {
    sub_100059150();
  }

  return a1;
}

uint64_t sub_10001095C(uint64_t a1, uint64_t a2, void *a3)
{

  return __cxa_atexit(sub_100010878, (v3 + 8), a3);
}

pthread_mutex_t *sub_100010980()
{

  return sub_1000108B8((v0 + 8), 2);
}

double sub_100010998(_OWORD *a1)
{
  result = 0.0;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

void sub_1000109A8(void *a1, unint64_t a2, _BYTE *a3)
{
  a1[1] = 0;
  if (a2)
  {
    v5 = a1[2];
    v6 = v5 << 6;
    if (v5 << 6 >= a2)
    {
      a1[1] = a2;
    }

    else
    {
      v17 = 0;
      v18 = 0uLL;
      if ((a2 & 0x8000000000000000) != 0)
      {
        sub_100008888();
      }

      v7 = a3;
      v8 = v5 << 7;
      if (v8 <= ((a2 + 63) & 0xFFFFFFFFFFFFFFC0))
      {
        v8 = (a2 + 63) & 0xFFFFFFFFFFFFFFC0;
      }

      if (v6 <= 0x3FFFFFFFFFFFFFFELL)
      {
        v9 = v8;
      }

      else
      {
        v9 = 0x7FFFFFFFFFFFFFFFLL;
      }

      sub_100011250(&v17, v9);
      v11 = v17;
      v12 = *(&v18 + 1);
      v17 = *a1;
      v10 = v17;
      v13 = *(a1 + 1);
      *a1 = v11;
      a1[1] = a2;
      a1[2] = v12;
      v18 = v13;
      if (v10)
      {
        operator delete(v10);
      }

      a3 = v7;
    }

    v14 = *a1;
    v15 = a2 >> 6;
    if (*a3 == 1)
    {
      if (a2 >= 0x40)
      {
        memset(v14, 255, 8 * v15);
      }

      if ((a2 & 0x3F) != 0)
      {
        v16 = *(v14 + v15) | (0xFFFFFFFFFFFFFFFFLL >> -(a2 & 0x3F));
LABEL_22:
        *(v14 + v15) = v16;
      }
    }

    else
    {
      if (a2 >= 0x40)
      {
        bzero(v14, 8 * v15);
      }

      if ((a2 & 0x3F) != 0)
      {
        v16 = *(v14 + v15) & ~(0xFFFFFFFFFFFFFFFFLL >> -(a2 & 0x3F));
        goto LABEL_22;
      }
    }
  }
}

uint64_t sub_100010AE8(uint64_t result, char *a2, unint64_t a3)
{
  *(result + 16) = 0u;
  *(result + 32) = 0u;
  *result = 0u;
  if (a2)
  {
    if (a3)
    {
      v3 = result;
      sub_100011088(result, a2, &a2[24 * a3], a3);
      v5 = 0;
      sub_1000109A8((v3 + 24), a3, &v5);
      return v3;
    }
  }

  return result;
}

uint64_t sub_100010B58(uint64_t **a1, unsigned int a2, unsigned int a3)
{
  v4 = *a1;
  v5 = a1[1] - *a1;
  if (v5)
  {
    v6 = 0xAAAAAAAAAAAAAAABLL * (v5 >> 3);
    if (v6 <= 1)
    {
      v6 = 1;
    }

    while (1)
    {
      v7 = *v4;
      v4 += 3;
      if (!v7)
      {
        return 0;
      }

      if (!--v6)
      {
        goto LABEL_6;
      }
    }
  }

  else
  {
LABEL_6:
    *&v13 = 0;
    *(&v13 + 1) = __PAIR64__(a3, a2);
    v14 = -1;
    sub_100010D10(a1, &v13);
    v8 = a1[4];
    v9 = a1[5];
    if (v8 == v9 << 6)
    {
      if ((v8 + 1) < 0)
      {
        sub_100008888();
      }

      v10 = v9 << 7;
      if (v10 <= (v8 & 0x3FFFFFFFFFFFFFC0) + 64)
      {
        v10 = (v8 & 0x3FFFFFFFFFFFFFC0) + 64;
      }

      if (v8 <= 0x3FFFFFFFFFFFFFFELL)
      {
        v11 = v10;
      }

      else
      {
        v11 = 0x7FFFFFFFFFFFFFFFLL;
      }

      sub_100011250((a1 + 3), v11);
      v8 = a1[4];
    }

    a1[4] = (v8 + 1);
    result = 1;
    *(a1[3] + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= ~(1 << v8);
  }

  return result;
}

uint64_t sub_100010C48(uint64_t a1, unsigned int a2, unsigned int a3)
{
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  sub_100010B58(a1, a2, a3);
  return a1;
}

void sub_100010C7C(void *a1, __int128 *a2)
{
  sub_100010D10(a1, a2);
  v3 = a1[4];
  v4 = a1[5];
  if (v3 == v4 << 6)
  {
    if ((v3 + 1) < 0)
    {
      sub_100008888();
    }

    v5 = v4 << 7;
    if (v5 <= (v3 & 0x3FFFFFFFFFFFFFC0) + 64)
    {
      v5 = (v3 & 0x3FFFFFFFFFFFFFC0) + 64;
    }

    if (v3 <= 0x3FFFFFFFFFFFFFFELL)
    {
      v6 = v5;
    }

    else
    {
      v6 = 0x7FFFFFFFFFFFFFFFLL;
    }

    sub_100011250((a1 + 3), v6);
    v3 = a1[4];
  }

  a1[4] = v3 + 1;
  *(a1[3] + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= ~(1 << v3);
}

void sub_100010D10(uint64_t a1, __int128 *a2)
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

void sub_100010E48(void *a1, uint64_t a2, unsigned int a3, unsigned int a4, uint64_t a5)
{
  *&v10 = a2;
  *(&v10 + 1) = __PAIR64__(a4, a3);
  v11 = a5;
  sub_100010D10(a1, &v10);
  v6 = a1[4];
  v7 = a1[5];
  if (v6 == v7 << 6)
  {
    if ((v6 + 1) < 0)
    {
      sub_100008888();
    }

    v8 = v7 << 7;
    if (v8 <= (v6 & 0x3FFFFFFFFFFFFFC0) + 64)
    {
      v8 = (v6 & 0x3FFFFFFFFFFFFFC0) + 64;
    }

    if (v6 <= 0x3FFFFFFFFFFFFFFELL)
    {
      v9 = v8;
    }

    else
    {
      v9 = 0x7FFFFFFFFFFFFFFFLL;
    }

    sub_100011250((a1 + 3), v9);
    v6 = a1[4];
  }

  a1[4] = v6 + 1;
  *(a1[3] + ((v6 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= ~(1 << v6);
}

void *sub_100010EF4(uint64_t a1, uint64_t a2, int a3)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
  if (v4 == *a1)
  {
LABEL_8:
    result = 0;
    if (a2 && a3 && v4 != v3)
    {
      if (v5 <= 1)
      {
        v8 = 1;
      }

      else
      {
        v8 = v5;
      }

      while (*v3)
      {
        v3 += 3;
        if (!--v8)
        {
          return 0;
        }
      }

      return v3;
    }
  }

  else
  {
    if (v5 <= 1)
    {
      v6 = 1;
    }

    else
    {
      v6 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
    }

    result = *a1;
    while (*result != a2)
    {
      result += 3;
      if (!--v6)
      {
        goto LABEL_8;
      }
    }
  }

  return result;
}

uint64_t sub_100010F74(uint64_t *a1, int a2)
{
  v2 = *a1;
  v3 = a1[1] - *a1;
  if (!v3)
  {
    return 0;
  }

  v4 = v3 >> 3;
  v5 = 0xAAAAAAAAAAAAAAABLL * v4;
  v6 = 0xAAAAAAAAAAAAAAABLL * v4 != 0;
  v7 = 0xAAAAAAAAAAAAAAABLL * v4 == 1;
  if (0xAAAAAAAAAAAAAAABLL * v4 <= 1)
  {
    v8 = 1;
  }

  else
  {
    v8 = 0xAAAAAAAAAAAAAAABLL * v4;
  }

  if (v7 || !v6)
  {
    v9 = 0;
    result = 0;
LABEL_15:
    v18 = v8 - v9;
    v19 = (v2 + 24 * v9 + 8);
    do
    {
      v20 = *v19;
      v19 += 6;
      if (v20 == a2)
      {
        ++result;
      }

      --v18;
    }

    while (v18);
    return result;
  }

  v11 = 0;
  v12 = 0;
  v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
  v13 = (v2 + 32);
  v14 = v8 & 0xFFFFFFFFFFFFFFFELL;
  do
  {
    v15 = *(v13 - 6);
    v17 = *v13;
    v13 += 12;
    v16 = v17;
    if (v15 == a2)
    {
      ++v11;
    }

    if (v16 == a2)
    {
      ++v12;
    }

    v14 -= 2;
  }

  while (v14);
  result = v12 + v11;
  if (v5 != v9)
  {
    goto LABEL_15;
  }

  return result;
}

uint64_t sub_100011018(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    v2 = *result;
    v3 = *(result + 8);
    v4 = v3 - *result;
    if (v3 != *result)
    {
      v5 = 0;
      v6 = 0xAAAAAAAAAAAAAAABLL * (v4 >> 3);
      if (v6 <= 1)
      {
        v6 = 1;
      }

      do
      {
        v7 = *v2;
        v2 += 3;
        if (v7 == a2)
        {
          *(*(result + 24) + ((v5 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v5;
        }

        ++v5;
      }

      while (v6 != v5);
    }
  }

  return result;
}

char *sub_100011088(char **a1, char *a2, char *a3, unint64_t a4)
{
  v6 = a1[2];
  result = *a1;
  if (0xAAAAAAAAAAAAAAABLL * ((v6 - result) >> 3) < a4)
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

    if (a4 <= 0xAAAAAAAAAAAAAAALL)
    {
      v9 = 0xAAAAAAAAAAAAAAABLL * (v6 >> 3);
      v10 = 2 * v9;
      if (2 * v9 <= a4)
      {
        v10 = a4;
      }

      if (v9 >= 0x555555555555555)
      {
        v11 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v11 = v10;
      }

      if (v11 <= 0xAAAAAAAAAAAAAAALL)
      {
        operator new();
      }
    }

    sub_100008888();
  }

  v12 = a1[1];
  v13 = v12 - result;
  if (0xAAAAAAAAAAAAAAABLL * ((v12 - result) >> 3) >= a4)
  {
    v19 = a3 - a2;
    if (v19)
    {
      v20 = result;
      memmove(result, a2, v19);
      result = v20;
    }

    v18 = &result[v19];
  }

  else
  {
    v14 = &a2[v13];
    if (v12 != result)
    {
      result = memmove(result, a2, v13);
      v12 = a1[1];
    }

    v15 = v12;
    if (v14 != a3)
    {
      v15 = v12;
      v16 = v12;
      do
      {
        v17 = *v14;
        *(v16 + 2) = *(v14 + 2);
        *v16 = v17;
        v16 += 24;
        v14 += 24;
        v15 += 24;
      }

      while (v14 != a3);
    }

    v18 = v15;
  }

  a1[1] = v18;
  return result;
}

uint64_t sub_100011250(uint64_t result, unint64_t a2)
{
  if (a2 > *(result + 16) << 6)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_100008888();
  }

  return result;
}

uint64_t sub_10001137C(uint64_t result, const std::string::value_type *a2)
{
  *result = off_10006CD18;
  *(result + 8) = 0u;
  *(result + 24) = 0u;
  if (a2)
  {
    v2 = result;
    std::string::assign((result + 8), a2);
    return v2;
  }

  return result;
}

uint64_t sub_1000113DC(uint64_t result)
{
  *result = off_10006CD18;
  if (*(result + 31) < 0)
  {
    v1 = result;
    operator delete(*(result + 8));
    return v1;
  }

  return result;
}

void sub_100011438(uint64_t a1)
{
  *a1 = off_10006CD18;
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
    v1 = vars8;
  }

  operator delete();
}

uint64_t sub_1000114AC(uint64_t a1, char a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 31);
  if ((v3 & 0x8000000000000000) != 0)
  {
    if (v2 < *(a1 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v6 = -1;
    goto LABEL_8;
  }

  v4 = *(a1 + 31);
  if (v2 >= v3)
  {
    goto LABEL_7;
  }

LABEL_3:
  v5 = (a1 + 8);
  if ((v3 & 0x80000000) != 0)
  {
    v5 = *v5;
  }

  a2 = *(v5 + v2);
  v6 = v2 + 1;
LABEL_8:
  *(a1 + 32) = v6;
  return a2;
}

uint64_t sub_1000114F8(uint64_t a1)
{
  v2 = *(a1 + 31);
  if (v2 < 0)
  {
    v3 = *(a1 + 16);
  }

  else
  {
    v3 = *(a1 + 31);
  }

  v4 = (a1 + 8);
  v5 = *(a1 + 32);
  if (v5 < v3)
  {
    while (1)
    {
      if (*(a1 + 31) < 0)
      {
        v7 = *(*v4 + v5);
        if (v7 < 0)
        {
LABEL_6:
          v6 = __maskrune(v7, 0x4000uLL);
          v5 = *(a1 + 32);
          if (!v6)
          {
            goto LABEL_13;
          }

          goto LABEL_7;
        }
      }

      else
      {
        v7 = *(v4 + v5);
        if (v7 < 0)
        {
          goto LABEL_6;
        }
      }

      if ((_DefaultRuneLocale.__runetype[v7] & 0x4000) == 0)
      {
LABEL_13:
        LOBYTE(v2) = *(a1 + 31);
        break;
      }

LABEL_7:
      *(a1 + 32) = ++v5;
      if (v5 >= v3)
      {
        goto LABEL_13;
      }
    }
  }

  if ((v2 & 0x80) != 0)
  {
    v8 = *(a1 + 16);
    if (v5 >= v8)
    {
      return 0xFFFFFFFFLL;
    }
  }

  else
  {
    v8 = v2;
    if (v5 >= v2)
    {
      return 0xFFFFFFFFLL;
    }
  }

  if (v8 - v5 < 2)
  {
    return 0xFFFFFFFFLL;
  }

  v10 = (a1 + 8);
  if ((v2 & 0x80) != 0)
  {
    v10 = *v4;
  }

  v11 = *(v10 + v5);
  v12 = v11 - 97;
  v13 = v11 - 48;
  if ((v11 - 48) >= 0xA)
  {
    v13 = -1;
  }

  if ((v11 - 65) <= 5)
  {
    v14 = v11 - 55;
  }

  else
  {
    v14 = v13;
  }

  v15 = v11 - 87;
  if (v12 > 5)
  {
    v15 = v14;
  }

  if ((v2 & 0x80) != 0)
  {
    v4 = *v4;
  }

  v16 = *(v4 + v5 + 1);
  v17 = v16 - 97;
  v18 = v16 - 48;
  if ((v16 - 48) >= 0xA)
  {
    v18 = -1;
  }

  if ((v16 - 65) <= 5)
  {
    v19 = v16 - 55;
  }

  else
  {
    v19 = v18;
  }

  v20 = v16 - 87;
  if (v17 > 5)
  {
    v20 = v19;
  }

  result = 0xFFFFFFFFLL;
  if (v15 != -1 && v20 != -1)
  {
    *(a1 + 32) = v5 + 2;
    return (v20 + 16 * v15);
  }

  return result;
}

unint64_t sub_10001167C(uint64_t a1, uint64_t a2, int a3)
{
  v4 = *(a1 + 32);
  v5 = (a1 + 8);
  v6 = *(a1 + 31);
  if ((v6 & 0x8000000000000000) != 0)
  {
    if (v4 >= *(a1 + 16))
    {
      return a2;
    }

    v7 = a1;
    __endptr = 0;
    v5 = *v5;
  }

  else
  {
    if (v4 >= v6)
    {
      return a2;
    }

    v7 = a1;
    __endptr = 0;
  }

  v8 = &v5[v4];
  v9 = strtoul(&v5[v4], &__endptr, a3);
  if (__endptr && __endptr != v8)
  {
    *(v7 + 32) = __endptr - v5;
    return v9;
  }

  return a2;
}

uint64_t sub_100011718(uint64_t a1, char a2, uint64_t a3)
{
  v6 = *(a1 + 31);
  if ((v6 & 0x8000000000000000) != 0)
  {
    v6 = *(a1 + 16);
  }

  v7 = (a1 + 8);
  for (i = *(a1 + 32); i < v6; *(a1 + 32) = i)
  {
    if (*(a1 + 31) < 0)
    {
      v9 = *(*v7 + i);
      if (v9 < 0)
      {
LABEL_5:
        if (!__maskrune(v9, 0x4000uLL))
        {
          break;
        }

        goto LABEL_6;
      }
    }

    else
    {
      v9 = *(v7 + i);
      if (v9 < 0)
      {
        goto LABEL_5;
      }
    }

    if ((_DefaultRuneLocale.__runetype[v9] & 0x4000) == 0)
    {
      break;
    }

LABEL_6:
    i = *(a1 + 32) + 1;
  }

  v10 = *(a1 + 31);
  v11 = *(a1 + 32);
  if (a2)
  {
    v12 = 0;
    v13 = 0;
    v14 = 0;
    while (1)
    {
      v18 = v10;
      if ((v10 & 0x80) != 0)
      {
        v18 = *(a1 + 16);
      }

      if (v11 >= v18)
      {
        return v14;
      }

      v19 = a1 + 8;
      if ((v10 & 0x80) != 0)
      {
        v19 = *v7;
      }

      v20 = *(v19 + v11);
      if (v20 < 0 || (_DefaultRuneLocale.__runetype[v20] & 0x10000) == 0)
      {
        return v14;
      }

      if (v12 > 7)
      {
        goto LABEL_74;
      }

      v21 = a1 + 8;
      if ((v10 & 0x80) != 0)
      {
        v21 = *v7;
      }

      v22 = *(v21 + v11);
      v23 = v22 - 97;
      v24 = v22 - 48;
      if ((v22 - 48) >= 0xA)
      {
        v24 = -1;
      }

      if ((v22 - 65) <= 5)
      {
        v25 = v22 - 55;
      }

      else
      {
        v25 = v24;
      }

      v26 = v22 - 87;
      if (v23 <= 5)
      {
        v27 = v26;
      }

      else
      {
        v27 = v25;
      }

      v28 = v11 + 1;
      *(a1 + 32) = v11 + 1;
      if ((v10 & 0x80) != 0)
      {
        if (v28 >= *(a1 + 16))
        {
          goto LABEL_14;
        }
      }

      else if (v28 >= v10)
      {
        goto LABEL_14;
      }

      if ((v10 & 0x80) != 0)
      {
        v29 = *(*v7 + v28);
        if (v29 < 0)
        {
          goto LABEL_14;
        }
      }

      else
      {
        v29 = *(v7 + v28);
        if (v29 < 0)
        {
          goto LABEL_14;
        }
      }

      if ((_DefaultRuneLocale.__runetype[v29] & 0x10000) == 0)
      {
LABEL_14:
        v15 = v27 << v13;
        v16 = 4;
        v17 = 1;
        goto LABEL_15;
      }

      v30 = a1 + 8;
      if ((v10 & 0x80) != 0)
      {
        v30 = *v7;
      }

      v31 = *(v30 + v28);
      v32 = v31 - 97;
      v33 = v31 - 48;
      if ((v31 - 48) >= 0xA)
      {
        v33 = -1;
      }

      if ((v31 - 65) <= 5)
      {
        v34 = v31 - 55;
      }

      else
      {
        v34 = v33;
      }

      v35 = v31 - 87;
      if (v32 <= 5)
      {
        v36 = v35;
      }

      else
      {
        v36 = v34;
      }

      v28 = v11 + 2;
      *(a1 + 32) = v11 + 2;
      v15 = (v27 << (v13 + 4)) | (v36 << v13);
      v16 = 8;
      v17 = 2;
LABEL_15:
      v12 += v17;
      v13 += v16;
      v14 = v15 | v14;
      v11 = v28;
    }
  }

  v14 = 0;
  for (j = 8; ; --j)
  {
    v43 = v10;
    if ((v10 & 0x80) != 0)
    {
      v43 = *(a1 + 16);
    }

    if (v11 >= v43)
    {
      return v14;
    }

    v44 = a1 + 8;
    if ((v10 & 0x80) != 0)
    {
      v44 = *v7;
    }

    v45 = *(v44 + v11);
    if (v45 < 0 || (_DefaultRuneLocale.__runetype[v45] & 0x10000) == 0)
    {
      return v14;
    }

    if (!j)
    {
      break;
    }

    v46 = a1 + 8;
    if ((v10 & 0x80) != 0)
    {
      v46 = *v7;
    }

    v38 = *(v46 + v11);
    v39 = v38 - 97;
    v40 = v38 - 48;
    if ((v38 - 48) >= 0xA)
    {
      v40 = -1;
    }

    if ((v38 - 65) <= 5)
    {
      v41 = v38 - 55;
    }

    else
    {
      v41 = v40;
    }

    v42 = v38 - 87;
    if (v39 > 5)
    {
      v42 = v41;
    }

    v14 = v42 | (16 * v14);
    *(a1 + 32) = ++v11;
  }

LABEL_74:
  *(a1 + 32) = -1;
  return a3;
}

unint64_t sub_1000119E8(uint64_t a1, char a2, uint64_t a3)
{
  v6 = *(a1 + 31);
  if ((v6 & 0x8000000000000000) != 0)
  {
    v6 = *(a1 + 16);
  }

  v7 = (a1 + 8);
  for (i = *(a1 + 32); i < v6; *(a1 + 32) = i)
  {
    if (*(a1 + 31) < 0)
    {
      v9 = *(*v7 + i);
      if (v9 < 0)
      {
LABEL_5:
        if (!__maskrune(v9, 0x4000uLL))
        {
          break;
        }

        goto LABEL_6;
      }
    }

    else
    {
      v9 = *(v7 + i);
      if (v9 < 0)
      {
        goto LABEL_5;
      }
    }

    if ((_DefaultRuneLocale.__runetype[v9] & 0x4000) == 0)
    {
      break;
    }

LABEL_6:
    i = *(a1 + 32) + 1;
  }

  v10 = *(a1 + 31);
  v11 = *(a1 + 32);
  if (a2)
  {
    v12 = 0;
    v13 = 0;
    v14 = 0;
    while (1)
    {
      v18 = v10;
      if ((v10 & 0x80) != 0)
      {
        v18 = *(a1 + 16);
      }

      if (v11 >= v18)
      {
        return v14;
      }

      v19 = a1 + 8;
      if ((v10 & 0x80) != 0)
      {
        v19 = *v7;
      }

      v20 = *(v19 + v11);
      if (v20 < 0 || (_DefaultRuneLocale.__runetype[v20] & 0x10000) == 0)
      {
        return v14;
      }

      if (v12 > 0xF)
      {
        goto LABEL_74;
      }

      v21 = a1 + 8;
      if ((v10 & 0x80) != 0)
      {
        v21 = *v7;
      }

      v22 = *(v21 + v11);
      v23 = v22 - 97;
      v24 = v22 - 48;
      if ((v22 - 48) >= 0xA)
      {
        v24 = -1;
      }

      if ((v22 - 65) <= 5)
      {
        v25 = v22 - 55;
      }

      else
      {
        v25 = v24;
      }

      v26 = v22 - 87;
      if (v23 <= 5)
      {
        v27 = v26;
      }

      else
      {
        v27 = v25;
      }

      v28 = v11 + 1;
      *(a1 + 32) = v11 + 1;
      if ((v10 & 0x80) != 0)
      {
        if (v28 >= *(a1 + 16))
        {
          goto LABEL_14;
        }
      }

      else if (v28 >= v10)
      {
        goto LABEL_14;
      }

      if ((v10 & 0x80) != 0)
      {
        v29 = *(*v7 + v28);
        if (v29 < 0)
        {
          goto LABEL_14;
        }
      }

      else
      {
        v29 = *(v7 + v28);
        if (v29 < 0)
        {
          goto LABEL_14;
        }
      }

      if ((_DefaultRuneLocale.__runetype[v29] & 0x10000) == 0)
      {
LABEL_14:
        v15 = v27 << v13;
        v16 = 4;
        v17 = 1;
        goto LABEL_15;
      }

      v30 = a1 + 8;
      if ((v10 & 0x80) != 0)
      {
        v30 = *v7;
      }

      v31 = *(v30 + v28);
      v32 = v31 - 97;
      v33 = v31 - 48;
      if ((v31 - 48) >= 0xA)
      {
        v33 = -1;
      }

      if ((v31 - 65) <= 5)
      {
        v34 = v31 - 55;
      }

      else
      {
        v34 = v33;
      }

      v35 = v31 - 87;
      if (v32 <= 5)
      {
        v36 = v35;
      }

      else
      {
        v36 = v34;
      }

      v28 = v11 + 2;
      *(a1 + 32) = v11 + 2;
      v15 = (v27 << (v13 + 4)) | (v36 << v13);
      v16 = 8;
      v17 = 2;
LABEL_15:
      v12 += v17;
      v13 += v16;
      v14 |= v15;
      v11 = v28;
    }
  }

  v14 = 0;
  for (j = 16; ; --j)
  {
    v43 = v10;
    if ((v10 & 0x80) != 0)
    {
      v43 = *(a1 + 16);
    }

    if (v11 >= v43)
    {
      return v14;
    }

    v44 = a1 + 8;
    if ((v10 & 0x80) != 0)
    {
      v44 = *v7;
    }

    v45 = *(v44 + v11);
    if (v45 < 0 || (_DefaultRuneLocale.__runetype[v45] & 0x10000) == 0)
    {
      return v14;
    }

    if (!j)
    {
      break;
    }

    v46 = a1 + 8;
    if ((v10 & 0x80) != 0)
    {
      v46 = *v7;
    }

    v38 = *(v46 + v11);
    v39 = v38 - 97;
    v40 = v38 - 48;
    if ((v38 - 48) >= 0xA)
    {
      v40 = -1;
    }

    if ((v38 - 65) <= 5)
    {
      v41 = v38 - 55;
    }

    else
    {
      v41 = v40;
    }

    v42 = v38 - 87;
    if (v39 > 5)
    {
      v42 = v41;
    }

    v14 = v42 | (16 * v14);
    *(a1 + 32) = ++v11;
  }

LABEL_74:
  *(a1 + 32) = -1;
  return a3;
}