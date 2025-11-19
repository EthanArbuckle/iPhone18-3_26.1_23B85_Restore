char *sub_10001A22C(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(v2 + 552);
  if (!v3)
  {
    return 0;
  }

  v4 = strlen(v3);
  v5 = strlen(v2) + v4;
  v6 = malloc_type_malloc(v5 + 2, 0xBB6D0DDAuLL);
  v7 = v6;
  if (v6)
  {
    snprintf(v6, v5 + 2, "%s/%s", *(*(a1 + 16) + 552), *(a1 + 16));
    v7[v5 + 1] = 0;
  }

  return v7;
}

void sub_10001A2C8(int a1, uint64_t a2)
{
  v37 = 0u;
  memset(v38, 0, 26);
  v35 = 0u;
  v36 = 0u;
  v33 = 0;
  v34 = 0u;
  v32 = 106;
  v4 = recvfrom(a1, v39, 0xFFuLL, 0, &v33, &v32);
  if (v4 < 0)
  {
    perror("recvfrom(ctrl_iface)");
    return;
  }

  v39[v4 & 0x7FFFFFFF] = 0;
  sub_100016B70(1, "RX ctrl_iface", v39, v4 & 0x7FFFFFFF);
  v5 = malloc_type_malloc(0x1000uLL, 0xAC4DA316uLL);
  if (!v5)
  {
    sendto(a1, "FAIL\n", 5uLL, 0, &v33, v32);
    return;
  }

  v12 = v5;
  v5[2] = 10;
  *v5 = 19279;
  if (!(*v39 ^ 0x474E4950 | v39[4]))
  {
    v5[4] = 10;
    v21 = 1196314448;
LABEL_47:
    *v12 = v21;
    v20 = 5;
    goto LABEL_48;
  }

  if (*v39 == 4344141)
  {
    v22 = sub_100008CAC(*(a2 + 2624), v5, 0x1000uLL);
    if (v22 < 0 || (v23 = v22, v24 = sub_100003C4C(), v24 < 0))
    {
LABEL_46:
      v12[4] = 10;
      v21 = 1279869254;
      goto LABEL_47;
    }

    v20 = v24 + v23;
LABEL_45:
    if ((v20 & 0x80000000) == 0)
    {
      goto LABEL_48;
    }

    goto LABEL_46;
  }

  if (*v39 == 0x535249462D415453 && *&v39[8] == 84)
  {
    v20 = sub_100002148(a2, v5, 0x1000uLL);
    goto LABEL_45;
  }

  if (*v39 == 541152339)
  {
    v20 = sub_100002250(a2, &v39[4], v5, 0x1000uLL);
    goto LABEL_45;
  }

  if (*v39 == 0x5458454E2D415453 && v39[8] == 32)
  {
    v20 = sub_1000022E4(a2, &v39[9], v5, 0x1000uLL);
    goto LABEL_45;
  }

  if (*v39 == 1096045633 && *&v39[3] == 4735809)
  {
    v25 = v32;
    v26 = sub_100016754(0x80uLL);
    if (v26)
    {
      v27 = v33;
      v28 = v34;
      *(v26 + 40) = v35;
      *(v26 + 24) = v28;
      *(v26 + 8) = v27;
      v29 = v36;
      v30 = v37;
      v31 = v38[0];
      *(v26 + 98) = *(v38 + 10);
      *(v26 + 88) = v31;
      *(v26 + 72) = v30;
      *(v26 + 56) = v29;
      *(v26 + 29) = v25;
      *(v26 + 30) = 2;
      *v26 = *(a2 + 2672);
      *(a2 + 2672) = v26;
      sub_100016A94(1, "CTRL_IFACE monitor attached", v33.sa_data, v25 - 2);
LABEL_60:
      v20 = 3;
      goto LABEL_48;
    }

    goto LABEL_46;
  }

  if (*v39 == 1096041796 && *&v39[3] == 4735809)
  {
    if (!sub_10001A9A4(a2, &v33, v32))
    {
      goto LABEL_60;
    }

    goto LABEL_46;
  }

  if (*v39 == 1163281740 && *&v39[4] == 8268)
  {
    if (!sub_10001AA68(a2, &v33, v32, &v39[6], v8, v9, v10, v11))
    {
      goto LABEL_60;
    }

    goto LABEL_46;
  }

  if (*v39 == 0x204154535F57454ELL)
  {
    if (!sub_10001AB2C(a2, &v39[8], v6, v7, v8, v9, v10, v11))
    {
      goto LABEL_60;
    }

    goto LABEL_46;
  }

  if (*v39 == 0x4E45485455414544 && *&v39[7] == 0x204554414349544ELL)
  {
    if (!sub_10001ABEC(a2, v40, v6, v7, v8, v9, v10, v11))
    {
      goto LABEL_60;
    }

    goto LABEL_46;
  }

  if (*v39 == 0x434F535341534944 && *&v39[5] == 0x2045544149434F53)
  {
    if (!sub_10001AD34(a2, &v39[13], v6, v7, v8, v9, v10, v11))
    {
      goto LABEL_60;
    }

    goto LABEL_46;
  }

  *v5 = *"UNKNOWN COMMAND\n";
  v20 = 16;
LABEL_48:
  sendto(a1, v12, v20, 0, &v33, v32);
  free(v12);
}

size_t sub_10001A73C(size_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result)
  {
    v4 = result;
    if ((*(result + 2664) & 0x80000000) == 0)
    {
      v5 = *(result + 2672);
      if (v5)
      {
        snprintf(__str, 0xAuLL, "<%d>", a2);
        v23[0] = __str;
        result = strlen(__str);
        v9 = 0;
        v23[1] = result;
        v23[2] = a3;
        v23[3] = a4;
        *&v21.msg_name = 0u;
        memset(&v21.msg_iovlen + 1, 0, 20);
        v21.msg_iov = v23;
        v21.msg_iovlen = 2;
        do
        {
          v10 = v5;
          v5 = *v5;
          if (*(v10 + 30) <= a2)
          {
            sub_100016A94(1, "CTRL_IFACE monitor send", v10 + 10, *(v10 + 29) - 2);
            v21.msg_name = v10 + 1;
            v21.msg_namelen = *(v10 + 29);
            result = sendmsg(*(v4 + 2664), &v21, 0);
            if ((result & 0x8000000000000000) != 0)
            {
              v11 = *__error();
              v12 = *__error();
              v13 = __error();
              strerror(*v13);
              result = sub_100016A20(2, "CTRL_IFACE monitor[%d]: %d - %s", v14, v15, v16, v17, v18, v19, v9);
              v20 = *(v10 + 31);
              *(v10 + 31) = v20 + 1;
              if (v20 > 9 || v11 == 2)
              {
                result = sub_10001A9A4(v4, (v10 + 1), *(v10 + 29));
              }
            }

            else
            {
              *(v10 + 31) = 0;
            }
          }

          v9 = (v9 + 1);
        }

        while (v5);
      }
    }
  }

  return result;
}

void *sub_10001A8EC(uint64_t a1)
{
  if ((*(a1 + 2664) & 0x80000000) == 0)
  {
    sub_100026130();
    close(*(a1 + 2664));
    *(a1 + 2664) = -1;
    v2 = sub_10001A22C(a1);
    v3 = v2;
    if (v2)
    {
      unlink(v2);
    }

    free(v3);
    v4 = *(*(a1 + 16) + 552);
    if (v4 && rmdir(v4) < 0)
    {
      if (*__error() == 66)
      {
        sub_100016A20(1, "Control interface directory not empty - leaving it behind", v5, v6, v7, v8, v9, v10, v13);
      }

      else
      {
        perror("rmdir[ctrl_interface]");
      }
    }
  }

  result = *(a1 + 2672);
  if (result)
  {
    do
    {
      v12 = *result;
      free(result);
      result = v12;
    }

    while (v12);
  }

  return result;
}

uint64_t sub_10001A9A4(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v3 = *(a1 + 2672);
  if (!v3)
  {
    return 0xFFFFFFFFLL;
  }

  v6 = 0;
  v7 = (a1 + 2672);
  v8 = a3 - 2;
  while (1)
  {
    v9 = v3;
    if (*(v3 + 116) == a3 && !memcmp((a2 + 2), (v3 + 10), v8))
    {
      break;
    }

    v3 = *v9;
    v6 = v9;
    if (!*v9)
    {
      return 0xFFFFFFFFLL;
    }
  }

  if (v6)
  {
    v11 = v6;
  }

  else
  {
    v11 = v7;
  }

  *v11 = *v9;
  free(v9);
  sub_100016A94(1, "CTRL_IFACE monitor detached", (a2 + 2), v8);
  return 0;
}

uint64_t sub_10001AA68(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = a3;
  sub_100016A20(1, "CTRL_IFACE LEVEL %s", a3, a4, a5, a6, a7, a8, a4);
  v12 = *(a1 + 2672);
  if (!v12)
  {
    return 0xFFFFFFFFLL;
  }

  while (*(v12 + 29) != v9 || memcmp((a2 + 2), v12 + 10, v9 - 2))
  {
    v12 = *v12;
    if (!v12)
    {
      return 0xFFFFFFFFLL;
    }
  }

  sub_100016A94(1, "CTRL_IFACE changed monitor level", (a2 + 2), v9 - 2);
  v14 = atoi(a4);
  result = 0;
  *(v12 + 30) = v14;
  return result;
}

uint64_t sub_10001AB2C(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_100016A20(1, "CTRL_IFACE NEW_STA %s", a3, a4, a5, a6, a7, a8, a2);
  if (sub_100015CD8(a2, &v18))
  {
    return 0xFFFFFFFFLL;
  }

  if (!sub_100004A40(a1, &v18))
  {
    sub_100016A20(1, "Add new STA %02x:%02x:%02x:%02x:%02x:%02x based on ctrl_iface notification", v11, v12, v13, v14, v15, v16, v18);
    v17 = sub_1000054E8(a1, &v18);
    if (!v17)
    {
      return 0xFFFFFFFFLL;
    }

    sub_10000394C(a1, v17, 0);
  }

  return 0;
}

uint64_t sub_10001ABEC(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_100016A20(1, "CTRL_IFACE DEAUTHENTICATE %s", a3, a4, a5, a6, a7, a8, a2);
  if (sub_100015CD8(a2, &v19))
  {
    return 0xFFFFFFFFLL;
  }

  v11 = strstr(a2, " test=");
  if (v11)
  {
    v12 = *(*(a1 + 2352) + 720);
    if (v12)
    {
      v13 = atoi(v11 + 6);
      memset(v21 + 2, 0, 32);
      v21[4] = 0;
      LOWORD(v21[0]) = 192;
      LOWORD(v21[1]) = v20;
      HIDWORD(v21[0]) = v19;
      HIWORD(v21[1]) = *(a1 + 32);
      *(&v21[1] + 2) = *(a1 + 28);
      LODWORD(v21[2]) = *(&v21[1] + 2);
      WORD2(v21[2]) = HIWORD(v21[1]);
      LOWORD(v21[3]) = 2;
      return (v12(*(a1 + 2360), v21, 26, v13) >> 31);
    }

    return 0xFFFFFFFFLL;
  }

  (*(a1 + 2528))(a1, &v19, 2);
  result = sub_100004A40(a1, &v19);
  if (result)
  {
    sub_100005888(a1, result, 2, v14, v15, v16, v17, v18);
    return 0;
  }

  return result;
}

uint64_t sub_10001AD34(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_100016A20(1, "CTRL_IFACE DISASSOCIATE %s", a3, a4, a5, a6, a7, a8, a2);
  if (sub_100015CD8(a2, &v19))
  {
    return 0xFFFFFFFFLL;
  }

  v11 = strstr(a2, " test=");
  if (v11)
  {
    v12 = *(*(a1 + 2352) + 720);
    if (v12)
    {
      v13 = atoi(v11 + 6);
      memset(v21 + 2, 0, 32);
      v21[4] = 0;
      LOWORD(v21[0]) = 160;
      LOWORD(v21[1]) = v20;
      HIDWORD(v21[0]) = v19;
      HIWORD(v21[1]) = *(a1 + 32);
      *(&v21[1] + 2) = *(a1 + 28);
      LODWORD(v21[2]) = *(&v21[1] + 2);
      WORD2(v21[2]) = HIWORD(v21[1]);
      LOWORD(v21[3]) = 2;
      return (v12(*(a1 + 2360), v21, 26, v13) >> 31);
    }

    return 0xFFFFFFFFLL;
  }

  (*(a1 + 2536))(a1, &v19, 2);
  result = sub_100004A40(a1, &v19);
  if (result)
  {
    sub_1000056D0(a1, result, 2, v14, v15, v16, v17, v18);
    return 0;
  }

  return result;
}

uint64_t sub_10001AE7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a1 + 48))
  {
    v8 = a1;
    for (i = 0; i < *(v8 + 48); ++i)
    {
      v10 = *(*(v8 + 56) + 8 * i);
      if (*(*(v10 + 16) + 56))
      {
        sub_100016A20(1, "Dumping hostapd state to '%s'", a3, a4, a5, a6, a7, a8, *(*(v10 + 16) + 56));
        v11 = fopen(*(*(v10 + 16) + 56), "w");
        if (v11)
        {
          v12 = v11;
          v49 = i;
          v50 = 0;
          time(&v50);
          v13 = ctime(&v50);
          fprintf(v12, "hostapd state dump - %s", v13);
          fprintf(v12, "num_sta=%d num_sta_non_erp=%d num_sta_no_short_slot_time=%d\nnum_sta_no_short_preamble=%d\n", *(v10 + 36), *(*v10 + 2184), *(*v10 + 2188), *(*v10 + 2192));
          for (j = *(v10 + 40); j; j = *j)
          {
            fprintf(v12, "\nSTA=%02x:%02x:%02x:%02x:%02x:%02x\n", *(j + 16), *(j + 17), *(j + 18), *(j + 19), *(j + 20), *(j + 21));
            v15 = *(j + 6);
            v16 = "[AUTH]";
            if ((v15 & 1) == 0)
            {
              v16 = &unk_10002CF03;
            }

            v17 = "[ASSOC]";
            if ((v15 & 2) == 0)
            {
              v17 = &unk_10002CF03;
            }

            v18 = "[PS]";
            if ((v15 & 4) == 0)
            {
              v18 = &unk_10002CF03;
            }

            v19 = "[TIM]";
            if ((v15 & 8) == 0)
            {
              v19 = &unk_10002CF03;
            }

            v20 = "[PERM]";
            if ((v15 & 0x10) == 0)
            {
              v20 = &unk_10002CF03;
            }

            v21 = "[AUTHORIZED]";
            if ((v15 & 0x20) == 0)
            {
              v21 = &unk_10002CF03;
            }

            v22 = "[PENDING_POLL";
            if ((v15 & 0x40) == 0)
            {
              v22 = &unk_10002CF03;
            }

            v23 = "[SHORT_PREAMBLE]";
            if ((v15 & 0x80) == 0)
            {
              v23 = &unk_10002CF03;
            }

            v24 = "[PREAUTH]";
            if ((v15 & 0x100) == 0)
            {
              v24 = &unk_10002CF03;
            }

            v25 = "[WMM]";
            if ((v15 & 0x200) == 0)
            {
              v25 = &unk_10002CF03;
            }

            v26 = "[MFP]";
            if ((v15 & 0x400) == 0)
            {
              v26 = &unk_10002CF03;
            }

            v27 = "[WPS]";
            if ((v15 & 0x1000) == 0)
            {
              v27 = &unk_10002CF03;
            }

            v28 = "[MAYBE_WPS]";
            if ((v15 & 0x2000) == 0)
            {
              v28 = &unk_10002CF03;
            }

            v29 = "[WDS]";
            if ((v15 & 0x4000) == 0)
            {
              v29 = &unk_10002CF03;
            }

            v30 = "[NonERP]";
            if (v15 >= 0)
            {
              v30 = &unk_10002CF03;
            }

            fprintf(v12, "  AID=%d flags=0x%x %s%s%s%s%s%s%s%s%s%s%s%s%s%s%s\n  capability=0x%x listen_interval=%d\n", *(j + 11), v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, *(j + 14), *(j + 15));
            fwrite("  supported_rates=", 0x12uLL, 1uLL, v12);
            if (*(j + 16) >= 1)
            {
              v31 = 0;
              do
              {
                fprintf(v12, "%02x ", *(j + v31++ + 32));
              }

              while (v31 < *(j + 16));
            }

            fputc(10, v12);
            v32 = *(j + 20);
            v33 = "DEAUTH";
            if (v32 == 1)
            {
              v33 = "DISASSOC";
            }

            v34 = v32 == 0;
            v35 = "NULLFUNC POLL";
            if (!v34)
            {
              v35 = v33;
            }

            fprintf(v12, "  timeout_next=%s\n", v35);
            v36 = j[11];
            if (v36)
            {
              fprintf(v12, "%sIEEE 802.1X:\n", "  ");
              if (*(v36 + 264))
              {
                fprintf(v12, "%sidentity=", "  ");
                if (*(v36 + 272))
                {
                  v37 = 0;
                  do
                  {
                    v38 = *(*(v36 + 264) + v37);
                    if ((v38 - 32) > 0x5E)
                    {
                      fprintf(v12, "<%02x>", *(*(v36 + 264) + v37));
                    }

                    else
                    {
                      fputc(v38, v12);
                    }

                    ++v37;
                  }

                  while (v37 < *(v36 + 272));
                }

                fputc(10, v12);
              }

              v39 = *(v36 + 280);
              v40 = sub_10002128C(0, v39);
              v41 = *(v36 + 281);
              v42 = sub_10002128C(0, v41);
              fprintf(v12, "%slast EAP type: Authentication Server: %d (%s) Supplicant: %d (%s)\n", "  ", v39, v40, v41, v42);
              v43 = "[RX RADIUS]";
              if (!*(v36 + 248))
              {
                v43 = &unk_10002CF03;
              }

              fprintf(v12, "%scached_packets=%s\n", "  ", v43);
              sub_100021694(v12, "  ", v36);
            }
          }

          fclose(v12);
          v8 = a1;
          i = v49;
          continue;
        }

        v47 = *(*(v10 + 16) + 56);
        v44 = 3;
        v45 = "Could not open dump file '%s' for writing.";
      }

      else
      {
        v44 = 1;
        v45 = "Dump file not defined - ignoring dump request";
      }

      sub_100016A20(v44, v45, a3, a4, a5, a6, a7, a8, v47);
    }
  }

  return 0;
}

void *sub_10001B308(unint64_t a1)
{
  v2 = malloc_type_malloc(0xD8uLL, 0x1000040582A0BCDuLL);
  v3 = v2;
  if (v2)
  {
    v2[26] = 0;
    *(v2 + 11) = 0u;
    *(v2 + 12) = 0u;
    *(v2 + 9) = 0u;
    *(v2 + 10) = 0u;
    *(v2 + 7) = 0u;
    *(v2 + 8) = 0u;
    *(v2 + 5) = 0u;
    *(v2 + 6) = 0u;
    *(v2 + 3) = 0u;
    *(v2 + 4) = 0u;
    *(v2 + 1) = 0u;
    *(v2 + 2) = 0u;
    *v2 = 0u;
    v4 = socket(1, 2, 0);
    *v3 = v4;
    if ((v4 & 0x80000000) == 0)
    {
      *(v3 + 5) = 1;
      ++dword_100040408;
      v5 = getpid();
      if (snprintf(v3 + 6, 0x68uLL, "/tmp/wpa_ctrl_%d-%d", v5, dword_100040408) > 0x67)
      {
        goto LABEL_10;
      }

      v6 = 1;
      while (bind(*v3, (v3 + 4), 0x6Au) < 0)
      {
        if (*__error() == 48 && (v6 & 1) != 0)
        {
          unlink(v3 + 6);
          v7 = getpid();
          v6 = 0;
          if (snprintf(v3 + 6, 0x68uLL, "/tmp/wpa_ctrl_%d-%d", v7, dword_100040408) <= 0x67)
          {
            continue;
          }
        }

        goto LABEL_10;
      }

      *(v3 + 111) = 1;
      if (sub_100016768(v3 + 112, a1, 104) < 0x68)
      {
        if ((connect(*v3, (v3 + 110), 0x6Au) & 0x80000000) == 0)
        {
          return v3;
        }

        close(*v3);
        unlink(v3 + 6);
      }

      else
      {
LABEL_10:
        close(*v3);
      }
    }

    free(v3);
    return 0;
  }

  return v3;
}

void sub_10001B4A8(uint64_t a1)
{
  unlink((a1 + 6));
  close(*a1);

  free(a1);
}

ssize_t sub_10001B4EC(int *a1, const void *a2, size_t a3, _BYTE *a4, size_t *a5, void (*a6)(_BYTE *, void))
{
  if (send(*a1, a2, a3, 0) < 0)
  {
    return 0xFFFFFFFFLL;
  }

  *&v16.tv_usec = 0;
  while (1)
  {
    v16.tv_sec = 2;
    v16.tv_usec = 0;
    memset(&v15, 0, sizeof(v15));
    v10 = *a1;
    if (__darwin_check_fd_set_overflow(*a1, &v15, 0))
    {
      *(v15.fds_bits + ((v10 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v10;
    }

    select(*a1 + 1, &v15, 0, 0, &v16);
    v11 = *a1;
    if (!__darwin_check_fd_set_overflow(*a1, &v15, 0) || ((*(v15.fds_bits + ((v11 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) >> v11) & 1) == 0)
    {
      return 4294967294;
    }

    result = recv(*a1, a4, *a5, 0);
    if ((result & 0x80000000) != 0)
    {
      return result;
    }

    if (!result || *a4 != 60)
    {
      break;
    }

    if (a6)
    {
      if ((result & 0x7FFFFFFF) == *a5)
      {
        v13 = *a5 - 1;
      }

      else
      {
        v13 = result;
      }

      a4[v13] = 0;
      a6(a4, v13);
    }
  }

  v14 = result & 0x7FFFFFFF;
  result = 0;
  *a5 = v14;
  return result;
}

ssize_t sub_10001B66C(int *a1, int a2)
{
  v5 = 10;
  if (a2)
  {
    v2 = "ATTACH";
  }

  else
  {
    v2 = "DETACH";
  }

  result = sub_10001B4EC(a1, v2, 6uLL, &v6, &v5, 0);
  if ((result & 0x80000000) == 0)
  {
    if (v5 == 3 && (v6 == 19279 ? (v4 = v7 == 10) : (v4 = 0), v4))
    {
      return 0;
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  return result;
}

ssize_t sub_10001B724(int *a1, void *a2, size_t *a3)
{
  result = recv(*a1, a2, *a3, 0);
  if ((result & 0x80000000) == 0)
  {
    v5 = result & 0x7FFFFFFF;
    result = 0;
    *a3 = v5;
  }

  return result;
}

uint64_t sub_10001B764(int *a1)
{
  v6.tv_sec = 0;
  *&v6.tv_usec = 0;
  memset(&v5, 0, sizeof(v5));
  v2 = *a1;
  if (__darwin_check_fd_set_overflow(*a1, &v5, 0))
  {
    *(v5.fds_bits + ((v2 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v2;
  }

  select(*a1 + 1, &v5, 0, 0, &v6);
  v3 = *a1;
  result = __darwin_check_fd_set_overflow(v3, &v5, 0);
  if (result)
  {
    return *(v5.fds_bits + ((v3 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) & (1 << v3);
  }

  return result;
}

void sub_10001B848(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = *(a2 + 16);
  v10 = a2 + 16;
  v11 = v12;
  v13 = *(v10 + 54);
  if (v13 <= 2)
  {
    v14 = off_10003CB50[v13];
  }

  v25 = *(v10 + 5);
  v23 = *(v10 + 3);
  v24 = *(v10 + 4);
  v21 = *(v10 + 1);
  v22 = *(v10 + 2);
  sub_100016EE4(a1, v10, 64, 1, "MLME-AUTHENTICATE.indication(%02x:%02x:%02x:%02x:%02x:%02x, %s)", a6, a7, a8, v11);
  if (*(a2 + 70) != 2 && (*(a2 + 25) & 4) == 0)
  {

    sub_10001B914(a1, a2, v15, v16, v17, v18, v19, v20);
  }
}

uint64_t sub_10001B914(uint64_t a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a2 + 16;
  v20 = a2[20];
  v21 = a2[21];
  v18 = a2[18];
  v19 = a2[19];
  v17 = a2[17];
  sub_100016EE4(a1, a2 + 16, 64, 1, "MLME-DELETEKEYS.request(%02x:%02x:%02x:%02x:%02x:%02x)", a6, a7, a8, a2[16]);
  result = *(v8 + 19);
  if (result)
  {

    return sub_100008910(result, v9, v10, v11, v12, v13, v14, v15);
  }

  return result;
}

uint64_t sub_10001B9A0(uint64_t a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v21 = a2[21];
  v19 = a2[19];
  v20 = a2[20];
  v17 = a2[17];
  v18 = a2[18];
  sub_100016EE4(a1, a2 + 16, 64, 1, "MLME-DEAUTHENTICATE.indication(%02x:%02x:%02x:%02x:%02x:%02x, %d)", a6, a7, a8, a2[16]);

  return sub_10001B914(a1, a2, v10, v11, v12, v13, v14, v15);
}

void sub_10001BA20(uint64_t a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = a2 + 16;
  v20 = a2[20];
  v21 = a2[21];
  v18 = a2[18];
  v19 = a2[19];
  v17 = a2[17];
  sub_100016EE4(a1, a2 + 16, 64, 1, "MLME-ASSOCIATE.indication(%02x:%02x:%02x:%02x:%02x:%02x)", a6, a7, a8, a2[16]);
  if (*(v10 + 27) != 2)
  {

    sub_10001B914(a1, a2, v11, v12, v13, v14, v15, v16);
  }
}

void sub_10001BACC(uint64_t a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = a2 + 16;
  v20 = a2[20];
  v21 = a2[21];
  v18 = a2[18];
  v19 = a2[19];
  v17 = a2[17];
  sub_100016EE4(a1, a2 + 16, 64, 1, "MLME-REASSOCIATE.indication(%02x:%02x:%02x:%02x:%02x:%02x)", a6, a7, a8, a2[16]);
  if (*(v10 + 27) != 2)
  {

    sub_10001B914(a1, a2, v11, v12, v13, v14, v15, v16);
  }
}

uint64_t sub_10001BB78(uint64_t a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v21 = a2[21];
  v19 = a2[19];
  v20 = a2[20];
  v17 = a2[17];
  v18 = a2[18];
  sub_100016EE4(a1, a2 + 16, 64, 1, "MLME-DISASSOCIATE.indication(%02x:%02x:%02x:%02x:%02x:%02x, %d)", a6, a7, a8, a2[16]);

  return sub_10001B914(a1, a2, v10, v11, v12, v13, v14, v15);
}

void sub_10001BBF8(uint64_t a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = a2[4];
  v12 = a2[5];
  v9 = a2[2];
  v10 = a2[3];
  v8 = a2[1];
  sub_100016EE4(a1, a2, 64, 1, "MLME-MichaelMICFailure.indication(%02x:%02x:%02x:%02x:%02x:%02x)", a6, a7, a8, *a2);
}

uint64_t sub_10001BC4C(int *a1, int *a2, int a3, uint64_t a4, uint64_t a5)
{
  if (!a1)
  {
    return 0;
  }

  v10 = sub_100016754(0x170uLL);
  v17 = v10;
  if (v10)
  {
    *(v10 + 60) = -1;
    v18 = *a2;
    *(v10 + 110) = *(a2 + 2);
    *(v10 + 54) = v18;
    *(v10 + 56) = a3;
    *(v10 + 44) = a1;
    *(v10 + 45) = a5;
    *(v10 + 9) = 0;
    *(v10 + 52) = 0x20000003CLL;
    *(v10 + 13) = 0x1E00000006;
    v19 = *a1;
    *(v10 + 33) = 0;
    *(v10 + 34) = v19;
    v10[140] = v19 > 0;
    *(v10 + 18) = 0;
    *(v10 + 39) = 1;
    *(v10 + 7) = 2;
    if (a1[1])
    {
      v20 = 0;
      v21 = 0;
    }

    else
    {
      v20 = *(a1 + 26) || a1[2] >= 1;
      v21 = 1;
    }

    v10[27] = v20;
    v10[32] = v21;
    memset(v53, 0, sizeof(v53));
    DWORD1(v53[0]) = a1[3];
    v51 = *(a1 + 1);
    v52 = *(a1 + 4);
    *(v53 + 8) = *(a1 + 14);
    v22 = *(a1 + 10);
    *(&v53[1] + 1) = *(a1 + 9);
    *&v53[2] = v22;
    *(&v53[2] + 8) = *(a1 + 22);
    DWORD2(v53[3]) = a1[26];
    v54 = *(a1 + 14);
    v55 = a4;
    v56 = a2;
    v23 = sub_10001E598(v10, off_100040018, &v51);
    *(v17 + 336) = v23;
    if (v23)
    {
      *(v17 + 232) = sub_10001E810(v23);
      *(v17 + 344) = 1;
      *(v17 + 24) = 1;
      sub_10001C2F4(v17, v31, v32, v33, v34, v35, v36, v37);
      *(v17 + 24) = 0;
      sub_10001C2F4(v17, v38, v39, v40, v41, v42, v43, v44);
      *(v17 + 344) = 0;
      sub_10002662C(sub_10001BECC, 0, v17, v45, v46, v47, v48, v49);
      sub_100026404(1u, 0, sub_10001BECC, 0, v17);
      return v17;
    }

    sub_10001BE4C(v17, v24, v25, v26, v27, v28, v29, v30);
    return 0;
  }

  sub_100016A20(1, "IEEE 802.1X state machine allocation failed", v11, v12, v13, v14, v15, v16, v51);
  return v17;
}

void sub_10001BE4C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1)
  {
    sub_10002662C(sub_10001BECC, 0, a1, a4, a5, a6, a7, a8);
    sub_10002662C(sub_10001C054, a1, 0, v9, v10, v11, v12, v13);
    v21 = a1[42];
    if (v21)
    {
      sub_10001E6C4(v21, v14, v15, v16, v17, v18, v19, v20);
    }

    free(a1);
  }
}

uint64_t sub_10001BECC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *a2 == 1;
  if (*a2 >= 1)
  {
    --*a2;
    if (v10)
    {
      v32 = *(a2 + 220);
      v36 = *(a2 + 221);
      v24 = *(a2 + 218);
      v28 = *(a2 + 219);
      v20 = *(a2 + 217);
      sub_100016A20(1, "IEEE 802.1X: %02x:%02x:%02x:%02x:%02x:%02x - aWhile --> 0", a3, a4, a5, a6, a7, a8, *(a2 + 216));
    }
  }

  v11 = *(a2 + 4);
  v12 = __OFSUB__(v11, 1);
  v13 = v11 - 1;
  if (v13 < 0 == v12)
  {
    *(a2 + 4) = v13;
    if (!v13)
    {
      v33 = *(a2 + 220);
      v37 = *(a2 + 221);
      v25 = *(a2 + 218);
      v29 = *(a2 + 219);
      v21 = *(a2 + 217);
      sub_100016A20(1, "IEEE 802.1X: %02x:%02x:%02x:%02x:%02x:%02x - quietWhile --> 0", a3, a4, a5, a6, a7, a8, *(a2 + 216));
    }
  }

  v14 = *(a2 + 8);
  v12 = __OFSUB__(v14, 1);
  v15 = v14 - 1;
  if (v15 < 0 == v12)
  {
    *(a2 + 8) = v15;
    if (!v15)
    {
      v34 = *(a2 + 220);
      v38 = *(a2 + 221);
      v26 = *(a2 + 218);
      v30 = *(a2 + 219);
      v22 = *(a2 + 217);
      sub_100016A20(1, "IEEE 802.1X: %02x:%02x:%02x:%02x:%02x:%02x - reAuthWhen --> 0", a3, a4, a5, a6, a7, a8, *(a2 + 216));
    }
  }

  v16 = *(a2 + 232);
  v17 = *(v16 + 20);
  v12 = __OFSUB__(v17, 1);
  v18 = v17 - 1;
  if (v18 < 0 == v12)
  {
    *(v16 + 20) = v18;
    if (!v18)
    {
      v35 = *(a2 + 220);
      v39 = *(a2 + 221);
      v27 = *(a2 + 218);
      v31 = *(a2 + 219);
      v23 = *(a2 + 217);
      sub_100016A20(1, "IEEE 802.1X: %02x:%02x:%02x:%02x:%02x:%02x - (EAP) retransWhile --> 0", a3, a4, a5, a6, a7, a8, *(a2 + 216));
    }
  }

  sub_10001C2F4(a2, a2, a3, a4, a5, a6, a7, a8);

  return sub_100026404(1u, 0, sub_10001BECC, a1, a2);
}

uint64_t sub_10001C07C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  v9 = *(a1 + 336);
  if (v9 != a2)
  {
    return 0xFFFFFFFFLL;
  }

  sub_10001E7A4(v9, a2, a3, a4, a5, a6, a7, a8);
  sub_100026404(0, 0, sub_10001C054, a1, 0);
  return 0;
}

void **sub_10001C0EC(uint64_t a1, _OWORD *a2)
{
  v4 = sub_100016754(0xE0uLL);
  v5 = v4;
  if (v4)
  {
    v4[15] = *(a1 + 120);
    v6 = *(a1 + 16);
    *v4 = *a1;
    *(v4 + 1) = v6;
    v4[4] = *(a1 + 32);
    v7 = v4 + 5;
    free(v4[5]);
    if (*(a1 + 40))
    {
      v8 = malloc_type_malloc(*(a1 + 48), 0xF820D2ADuLL);
      *v7 = v8;
      if (!v8)
      {
LABEL_17:
        free(v5);
        return 0;
      }

      memcpy(v8, *(a1 + 40), *(a1 + 48));
      v5[6] = *(a1 + 48);
    }

    else
    {
      *v7 = 0;
      v5[6] = 0;
    }

    if (*(a1 + 56))
    {
      v9 = malloc_type_malloc(0x10uLL, 0x5A7AECCEuLL);
      v5[7] = v9;
      *v9 = **(a1 + 56);
    }

    else
    {
      v5[7] = 0;
    }

    if (*(a1 + 64))
    {
      v10 = malloc_type_malloc(*(a1 + 72), 0x25F9D446uLL);
      v5[8] = v10;
      if (!v10)
      {
LABEL_16:
        free(*v7);
        goto LABEL_17;
      }

      memcpy(v10, *(a1 + 64), *(a1 + 72));
      v5[9] = *(a1 + 72);
    }

    else
    {
      v5[8] = 0;
    }

    v11 = *(a1 + 80);
    if (v11)
    {
      v12 = strdup(v11);
      v5[10] = v12;
      if (!v12)
      {
        free(v5[5]);
        v7 = v5 + 8;
        goto LABEL_16;
      }
    }

    else
    {
      v5[10] = 0;
    }

    *(v5 + 11) = *(a1 + 88);
    *(v5 + 26) = *(a1 + 104);
    v5[14] = *(a1 + 112);
    if (*(a1 + 8) >= 1)
    {
      *(v5 + 216) = 1;
    }

    *(v5 + 8) = *a2;
    *(v5 + 9) = a2[1];
    *(v5 + 10) = a2[2];
    *(v5 + 11) = a2[3];
    *(v5 + 12) = a2[4];
  }

  return v5;
}

void sub_10001C280(void **a1)
{
  if (a1)
  {
    free(a1[5]);
    a1[5] = 0;
    free(a1[7]);
    a1[7] = 0;
    free(a1[8]);
    a1[8] = 0;
    free(a1[10]);
    a1[10] = 0;
    free(a1[26]);

    free(a1);
  }
}

uint64_t sub_10001C2F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = 100;
  v10 = *(a1 + 352);
  v126 = *(a1 + 216);
  v125 = a1 + 216;
  v127 = *(a1 + 220);
  while (1)
  {
    v11 = *(a1 + 36);
    v12 = *(a1 + 104);
    v13 = *(a1 + 132);
    v15 = *(a1 + 144);
    v14 = *(a1 + 148);
    v16 = *(a1 + 156);
    v17 = *(a1 + 28);
    if (v17 == 2 && *(a1 + 44) != 2 || *(a1 + 24) || (v34 = *(a1 + 232), !v34[16]))
    {
      if (v11)
      {
        *(a1 + 345) = 1;
        v94 = *(a1 + 220);
        v106 = *(a1 + 221);
        v70 = *(a1 + 218);
        v82 = *(a1 + 219);
        v58 = *(a1 + 217);
        sub_100016A20(1, "IEEE 802.1X: %02x:%02x:%02x:%02x:%02x:%02x AUTH_PAE entering state INITIALIZE", a3, a4, a5, a6, a7, a8, *(a1 + 216));
      }

      *(a1 + 36) = 0;
      *(a1 + 44) = 2;
      goto LABEL_8;
    }

    if (v17 == 1)
    {
      if (*(a1 + 44) != 1)
      {
        v41 = a1;
        v42 = 1;
LABEL_125:
        sub_10001CFDC(v41, v42, a3, a4, a5, a6, a7, a8);
        goto LABEL_8;
      }
    }

    else if (v17 == 3 && *(a1 + 44) != 3)
    {
      v35 = a1;
      v36 = 1;
LABEL_82:
      sub_10001CF20(v35, v36, a3, a4, a5, a6, a7, a8);
      goto LABEL_8;
    }

    if (v11 > 4)
    {
      if (v11 <= 6)
      {
        if (v11 == 5)
        {
          v39 = *(a1 + 12);
          if (*(a1 + 40))
          {
            goto LABEL_139;
          }
        }

        else
        {
          v39 = *(a1 + 4);
        }

        if (!v39)
        {
          goto LABEL_142;
        }
      }

      else
      {
        if (v11 == 7)
        {
          if (!*(a1 + 41))
          {
            goto LABEL_8;
          }

          v35 = a1;
          v36 = 0;
          goto LABEL_82;
        }

        if (v11 == 8)
        {
          if (!*(a1 + 41))
          {
            goto LABEL_8;
          }

          v41 = a1;
          v42 = 0;
          goto LABEL_125;
        }

        if (v11 == 9 && !v34[24])
        {
          ++*(a1 + 60);
          *(a1 + 345) = 1;
          v101 = *(a1 + 220);
          v113 = *(a1 + 221);
          v77 = *(a1 + 218);
          v89 = *(a1 + 219);
          v65 = *(a1 + 217);
          sub_100016A20(1, "IEEE 802.1X: %02x:%02x:%02x:%02x:%02x:%02x AUTH_PAE entering state CONNECTING", a3, a4, a5, a6, a7, a8, *(a1 + 216));
          *(a1 + 36) = 2;
          *(a1 + 33) = 0;
          ++*(a1 + 48);
        }
      }
    }

    else
    {
      if (v11 <= 1)
      {
        if (!v11)
        {
          goto LABEL_145;
        }

        if (v11 != 1)
        {
          goto LABEL_8;
        }

LABEL_142:
        sub_10001D1A4(a1, a2, a3, a4, a5, a6, a7, a8);
        goto LABEL_8;
      }

      if (v11 != 2)
      {
        if (v11 != 3)
        {
          if (*(a1 + 41) || *(a1 + 33))
          {
            goto LABEL_142;
          }

          if (*(a1 + 40))
          {
            goto LABEL_145;
          }

          v39 = *(a1 + 32);
LABEL_139:
          if (!v39)
          {
            goto LABEL_145;
          }

          goto LABEL_8;
        }

        if (*(a1 + 22) && *(a1 + 32))
        {
          ++*(a1 + 72);
          *(a1 + 345) = 1;
          v102 = *(a1 + 220);
          v114 = *(a1 + 221);
          v78 = *(a1 + 218);
          v90 = *(a1 + 219);
          v66 = *(a1 + 217);
          sub_100016A20(1, "IEEE 802.1X: %02x:%02x:%02x:%02x:%02x:%02x AUTH_PAE entering state AUTHENTICATED", a3, a4, a5, a6, a7, a8, *(a1 + 216));
          *(a1 + 36) = 4;
          *(a1 + 16) = 1;
          (*(*(a1 + 352) + 176))(*(*(a1 + 352) + 120), *(a1 + 360), 1);
          *(a1 + 48) = 0;
          v43 = *(a1 + 224);
          v44 = " (PMKSA cache)";
          if ((v43 & 8) == 0)
          {
            v44 = &unk_10002CF03;
          }

          if (v43)
          {
            v45 = " (pre-authentication)";
          }

          else
          {
            v45 = v44;
          }

          v119 = v45;
          v122 = *(a1 + 352);
          v118 = *(a1 + 280);
          v46 = sub_10002128C(0, v118);
          sub_10001D308(v122, v125, 1, "authenticated - EAP type: %d (%s)%s", v118, v46, v119);
          (*(*(a1 + 352) + 144))(*(*(a1 + 352) + 120), *(a1 + 360), 1, *(a1 + 224) & 1);
          goto LABEL_8;
        }

        if (*(a1 + 13))
        {
          ++*(a1 + 80);
LABEL_160:
          *(a1 + 345) = 1;
          v103 = *(a1 + 220);
          v115 = *(a1 + 221);
          v79 = *(a1 + 218);
          v91 = *(a1 + 219);
          v67 = *(a1 + 217);
          sub_100016A20(1, "IEEE 802.1X: %02x:%02x:%02x:%02x:%02x:%02x AUTH_PAE entering state HELD", a3, a4, a5, a6, a7, a8, *(a1 + 216));
          *(a1 + 36) = 6;
          *(a1 + 16) = 2;
          (*(*(a1 + 352) + 176))(*(*(a1 + 352) + 120), *(a1 + 360), 0);
          *(a1 + 4) = *(a1 + 52);
          *(a1 + 40) = 0;
          v120 = *(a1 + 280);
          v123 = *(a1 + 352);
          v47 = sub_10002128C(0, v120);
          sub_10001D308(v123, v125, 2, "authentication failed - EAP type: %d (%s)", v120, v47);
          v48 = *(a1 + 281);
          if (*(a1 + 280) != v48)
          {
            v121 = *(a1 + 281);
            v124 = *(a1 + 352);
            v49 = sub_10002128C(0, v48);
            sub_10001D308(v124, v125, 1, "Supplicant used different EAP type: %d (%s)", v121, v49);
          }

          (*(*(a1 + 352) + 144))(*(*(a1 + 352) + 120), *(a1 + 360), 0, *(a1 + 224) & 1);
          goto LABEL_8;
        }

        if (*(a1 + 25) && !*(a1 + 32))
        {
          goto LABEL_160;
        }

        v51 = *(a1 + 41);
        if (*(a1 + 41))
        {
          v52 = *(a1 + 21);
          goto LABEL_180;
        }

        v52 = *(a1 + 21);
        if (*(a1 + 40))
        {
LABEL_180:
          if (v52)
          {
            goto LABEL_181;
          }
        }

        else
        {
          if (!*(a1 + 21))
          {
            goto LABEL_8;
          }

LABEL_181:
          ++*(a1 + 76);
        }

        if (v51)
        {
          ++*(a1 + 84);
        }

        if (*(a1 + 40))
        {
          ++*(a1 + 88);
        }

        *(a1 + 345) = 1;
        v105 = *(a1 + 220);
        v117 = *(a1 + 221);
        v81 = *(a1 + 218);
        v93 = *(a1 + 219);
        v69 = *(a1 + 217);
        sub_100016A20(1, "IEEE 802.1X: %02x:%02x:%02x:%02x:%02x:%02x AUTH_PAE entering state ABORTING", a3, a4, a5, a6, a7, a8, *(a1 + 216));
        *(a1 + 36) = 5;
        *(a1 + 12) = 1;
        goto LABEL_187;
      }

      if (*(a1 + 40) || *(a1 + 48) > *(a1 + 56))
      {
LABEL_145:
        sub_10001D098(a1, a2, a3, a4, a5, a6, a7, a8);
        goto LABEL_8;
      }

      if (v34[36] || v34[38] || v34[39])
      {
        *(a1 + 345) = 1;
        v104 = *(a1 + 220);
        v116 = *(a1 + 221);
        v80 = *(a1 + 218);
        v92 = *(a1 + 219);
        v68 = *(a1 + 217);
        sub_100016A20(1, "IEEE 802.1X: %02x:%02x:%02x:%02x:%02x:%02x AUTH_PAE entering state AUTHENTICATING", a3, a4, a5, a6, a7, a8, *(a1 + 216));
        *(a1 + 36) = 3;
        *(a1 + 41) = 0;
        *(a1 + 22) = 0;
        *(a1 + 13) = 0;
        *(a1 + 20) = 1;
LABEL_187:
        *(a1 + 25) = 0;
      }
    }

LABEL_8:
    if (!*(a1 + 344) && !(*(v10 + 160))(*(v10 + 120), &v126))
    {
      goto LABEL_16;
    }

    if (*(a1 + 28) != 2 || *(a1 + 24) || *(a1 + 12))
    {
      if (*(a1 + 104) != 6)
      {
        *(a1 + 345) = 1;
        v95 = *(a1 + 220);
        v107 = *(a1 + 221);
        v71 = *(a1 + 218);
        v83 = *(a1 + 219);
        v59 = *(a1 + 217);
        sub_100016A20(1, "IEEE 802.1X: %02x:%02x:%02x:%02x:%02x:%02x BE_AUTH entering state INITIALIZE", a3, a4, a5, a6, a7, a8, *(a1 + 216));
      }

      *(a1 + 104) = 6;
      (*(*(a1 + 352) + 184))(*(*(a1 + 352) + 120), *(a1 + 360));
      *(*(a1 + 232) + 37) = 0;
      *(a1 + 12) = 0;
      goto LABEL_16;
    }

    v37 = *(a1 + 104);
    if (v37 > 3)
    {
      if (v37 > 5)
      {
        if (v37 == 7)
        {
          goto LABEL_136;
        }

        if (v37 == 6)
        {
LABEL_135:
          sub_10001D3BC(a1, a2, a3, a4, a5, a6, a7, a8);
        }
      }

      else
      {
        if (v37 == 4)
        {
          goto LABEL_135;
        }

        v40 = *(a1 + 232);
        if (v40[39] && *(a1 + 20))
        {
          goto LABEL_168;
        }

        if (v40[36] && *(a1 + 20))
        {
          goto LABEL_164;
        }

        if (v40[38] && *(a1 + 20))
        {
          goto LABEL_190;
        }
      }
    }

    else
    {
      if (v37 > 1)
      {
        goto LABEL_135;
      }

      if (!v37)
      {
LABEL_136:
        if (*(a1 + 23))
        {
          sub_10001D42C(a1, a2, a3, a4, a5, a6, a7, a8);
        }

        else
        {
          v50 = *(a1 + 232);
          if (*(v50 + 36))
          {
            goto LABEL_164;
          }

          if (*(v50 + 40))
          {
LABEL_178:
            sub_10001D540(a1, a2, a3, a4, a5, a6, a7, a8);
            goto LABEL_16;
          }
        }

        goto LABEL_16;
      }

      if (v37 == 1)
      {
        v38 = *(a1 + 232);
        if (v38[37])
        {
          *(a1 + 345) = 1;
          v100 = *(a1 + 220);
          v112 = *(a1 + 221);
          v76 = *(a1 + 218);
          v88 = *(a1 + 219);
          v64 = *(a1 + 217);
          sub_100016A20(1, "IEEE 802.1X: %02x:%02x:%02x:%02x:%02x:%02x BE_AUTH entering state IGNORE", a3, a4, a5, a6, a7, a8, *(a1 + 216));
          *(a1 + 104) = 7;
          v38 = *(a1 + 232);
          v38[37] = 0;
        }

        if (v38[36])
        {
          ++*(a1 + 116);
LABEL_164:
          sub_10001D4B8(a1, a2, a3, a4, a5, a6, a7, a8);
          goto LABEL_16;
        }

        if (!*a1)
        {
          goto LABEL_178;
        }

        if (v38[39])
        {
          ++*(a1 + 128);
LABEL_168:
          sub_10001D5B0(a1, a2, a3, a4, a5, a6, a7, a8);
          goto LABEL_16;
        }

        if (v38[38])
        {
          ++*(a1 + 124);
LABEL_190:
          sub_10001D628(a1, a2, a3, a4, a5, a6, a7, a8);
        }
      }
    }

LABEL_16:
    if (!*(a1 + 344) && !(*(v10 + 160))(*(v10 + 120), &v126))
    {
      goto LABEL_28;
    }

    if (*(a1 + 28) != 2 || *(a1 + 24) || *(a1 + 16) == 2 || !*(a1 + 140))
    {
      v19 = a1;
      v20 = 1;
LABEL_27:
      sub_10001D7F0(v19, v20, a3, a4, a5, a6, a7, a8);
      goto LABEL_28;
    }

    v18 = *(a1 + 132);
    if (v18 == 1)
    {
      v19 = a1;
      v20 = 0;
      goto LABEL_27;
    }

    if (!v18 && !*(a1 + 8))
    {
      *(a1 + 345) = 1;
      v96 = *(a1 + 220);
      v108 = *(a1 + 221);
      v72 = *(a1 + 218);
      v84 = *(a1 + 219);
      v60 = *(a1 + 217);
      sub_100016A20(1, "IEEE 802.1X: %02x:%02x:%02x:%02x:%02x:%02x REAUTH_TIMER entering state REAUTHENTICATE", a3, a4, a5, a6, a7, a8, *(a1 + 216));
      *(a1 + 132) = 1;
      *(a1 + 33) = 1;
      (*(*(a1 + 352) + 200))(*(*(a1 + 352) + 120), *(a1 + 360), 1);
    }

LABEL_28:
    if (*(a1 + 344) || (*(v10 + 160))(*(v10 + 120), &v126))
    {
      if (*(a1 + 24))
      {
        v21 = *(a1 + 144);
LABEL_40:
        if (v21)
        {
LABEL_41:
          *(a1 + 345) = 1;
          v97 = *(a1 + 220);
          v109 = *(a1 + 221);
          v73 = *(a1 + 218);
          v85 = *(a1 + 219);
          v61 = *(a1 + 217);
          sub_100016A20(1, "IEEE 802.1X: %02x:%02x:%02x:%02x:%02x:%02x AUTH_KEY_TX entering state NO_KEY_TRANSMIT", a3, a4, a5, a6, a7, a8, *(a1 + 216));
        }

        *(a1 + 144) = 0;
        goto LABEL_43;
      }

      v21 = *(a1 + 144);
      if (*(a1 + 28) != 2)
      {
        goto LABEL_40;
      }

      if (v21 == 1)
      {
        if (!*(a1 + 27) || !*(a1 + 26))
        {
          goto LABEL_41;
        }

        if (*(*(a1 + 232) + 72))
        {
          goto LABEL_114;
        }
      }

      else if (!v21 && *(a1 + 27) && *(*(a1 + 232) + 72) && *(a1 + 26) && (*(a1 + 224) & 4) == 0)
      {
LABEL_114:
        sub_10001D86C(a1, a2, a3, a4, a5, a6, a7, a8);
      }
    }

LABEL_43:
    if (!*(a1 + 344) && !(*(v10 + 160))(*(v10 + 120), &v126))
    {
      goto LABEL_50;
    }

    if (*(a1 + 24))
    {
      v22 = *(a1 + 148);
LABEL_47:
      if (v22)
      {
        *(a1 + 345) = 1;
        v98 = *(a1 + 220);
        v110 = *(a1 + 221);
        v74 = *(a1 + 218);
        v86 = *(a1 + 219);
        v62 = *(a1 + 217);
        sub_100016A20(1, "IEEE 802.1X: %02x:%02x:%02x:%02x:%02x:%02x KEY_RX entering state NO_KEY_RECEIVE", a3, a4, a5, a6, a7, a8, *(a1 + 216));
      }

      *(a1 + 148) = 0;
      goto LABEL_50;
    }

    v22 = *(a1 + 148);
    if (!*(*(a1 + 232) + 16))
    {
      goto LABEL_47;
    }

    if (v22 <= 1 && *(a1 + 152))
    {
      sub_10001D8F0(a1, a2, a3, a4, a5, a6, a7, a8);
    }

LABEL_50:
    if (*(a1 + 344) || (*(v10 + 160))(*(v10 + 120), &v126))
    {
      if (*(a1 + 24))
      {
        v23 = a1;
        v24 = 1;
LABEL_54:
        sub_10001D95C(v23, v24, a3, a4, a5, a6, a7, a8);
        goto LABEL_55;
      }

      v33 = *(a1 + 156);
      if (v33 == 1)
      {
        if (*(a1 + 164) != *(a1 + 160))
        {
          sub_10001D95C(a1, 0, a3, a4, a5, a6, a7, a8);
        }

        if (!*(*(a1 + 232) + 16) || !*(a1 + 168))
        {
          *(a1 + 345) = 1;
          v99 = *(a1 + 220);
          v111 = *(a1 + 221);
          v75 = *(a1 + 218);
          v87 = *(a1 + 219);
          v63 = *(a1 + 217);
          sub_100016A20(1, "IEEE 802.1X: %02x:%02x:%02x:%02x:%02x:%02x CTRL_DIR entering state FORCE_BOTH", a3, a4, a5, a6, a7, a8, *(a1 + 216));
          *(a1 + 156) = 0;
          *(a1 + 164) = 0;
        }
      }

      else if (!v33 && *(*(a1 + 232) + 16) && *(a1 + 168))
      {
        v23 = a1;
        v24 = 0;
        goto LABEL_54;
      }
    }

LABEL_55:
    if (v11 == *(a1 + 36) && v12 == *(a1 + 104) && v13 == *(a1 + 132) && v15 == *(a1 + 144) && v14 == *(a1 + 148) && v16 == *(a1 + 156))
    {
      break;
    }

    if (v9 < 2)
    {
      return sub_100026404(0, 0, sub_10001C054, a1, 0);
    }

LABEL_67:
    --v9;
  }

  if (!(*(v10 + 160))(*(v10 + 120), &v126))
  {
    goto LABEL_201;
  }

  v32 = *(a1 + 336);
  if (!v32)
  {
    goto LABEL_201;
  }

  if (sub_10001DC4C(v32, v25, v26, v27, v28, v29, v30, v31))
  {
    if (v9 <= 1)
    {
      return sub_100026404(0, 0, sub_10001C054, a1, 0);
    }

    goto LABEL_67;
  }

  v54 = *(a1 + 232);
  if (*(v54 + 112))
  {
    *(v54 + 112) = 0;
    v55 = *(v54 + 120);
    if (!v55)
    {
      return sub_100016A20(1, "EAPOL: aaaEapResp set, but no aaaEapRespData available", a3, a4, a5, a6, a7, a8, v57);
    }

    if (*(v55 + 16))
    {
      v56 = *(v55 + 16);
    }

    else
    {
      v56 = v55 + 24;
    }

    (*(*(a1 + 352) + 136))(*(*(a1 + 352) + 120), *(a1 + 360), v56, *(v55 + 8));
  }

LABEL_201:
  result = (*(v10 + 160))(*(v10 + 120), &v126);
  if (result)
  {
    return (*(*(a1 + 352) + 200))(*(*(a1 + 352) + 120), *(a1 + 360), 0);
  }

  return result;
}

uint64_t sub_10001CF20(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a2 || *(a1 + 36) != 7)
  {
    *(a1 + 345) = 1;
    v13 = *(a1 + 220);
    v14 = *(a1 + 221);
    v11 = *(a1 + 218);
    v12 = *(a1 + 219);
    v10 = *(a1 + 217);
    sub_100016A20(1, "IEEE 802.1X: %02x:%02x:%02x:%02x:%02x:%02x AUTH_PAE entering state FORCE_AUTH", a3, a4, a5, a6, a7, a8, *(a1 + 216));
  }

  *(a1 + 36) = 7;
  *(a1 + 16) = 1;
  (*(*(a1 + 352) + 176))(*(*(a1 + 352) + 120), *(a1 + 360), 1);
  *(a1 + 44) = 3;
  *(a1 + 41) = 0;

  return sub_10001D260(a1, 1);
}

uint64_t sub_10001CFDC(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a2 || *(a1 + 36) != 8)
  {
    *(a1 + 345) = 1;
    v13 = *(a1 + 220);
    v14 = *(a1 + 221);
    v11 = *(a1 + 218);
    v12 = *(a1 + 219);
    v10 = *(a1 + 217);
    sub_100016A20(1, "IEEE 802.1X: %02x:%02x:%02x:%02x:%02x:%02x AUTH_PAE entering state FORCE_UNAUTH", a3, a4, a5, a6, a7, a8, *(a1 + 216));
  }

  *(a1 + 36) = 8;
  *(a1 + 16) = 2;
  (*(*(a1 + 352) + 176))(*(*(a1 + 352) + 120), *(a1 + 360), 0);
  *(a1 + 44) = 1;
  *(a1 + 41) = 0;

  return sub_10001D260(a1, 0);
}

uint64_t sub_10001D098(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(a1 + 36);
  if (*(a1 + 40))
  {
    if (v9 == 4)
    {
      ++*(a1 + 100);
    }

    else if (v9 == 2)
    {
      ++*(a1 + 64);
    }
  }

  *(a1 + 345) = 1;
  v19 = *(a1 + 220);
  v20 = *(a1 + 221);
  v17 = *(a1 + 218);
  v18 = *(a1 + 219);
  v16 = *(a1 + 217);
  sub_100016A20(1, "IEEE 802.1X: %02x:%02x:%02x:%02x:%02x:%02x AUTH_PAE entering state DISCONNECTED", a3, a4, a5, a6, a7, a8, *(a1 + 216));
  *(a1 + 36) = 1;
  *(a1 + 16) = 2;
  result = (*(*(a1 + 352) + 176))(*(*(a1 + 352) + 120), *(a1 + 360), 0);
  *(a1 + 48) = 0;
  *(a1 + 40) = 0;
  if (v9)
  {
    v12 = *(a1 + 352);
    v11 = *(a1 + 360);
    v13 = *(v12 + 144);
    v14 = *(v12 + 120);
    v15 = *(a1 + 224) & 1;

    return v13(v14, v11, 0, v15);
  }

  return result;
}

uint64_t sub_10001D1A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a1 + 36) == 4)
  {
    if (*(a1 + 33))
    {
      ++*(a1 + 92);
    }

    if (*(a1 + 41))
    {
      ++*(a1 + 96);
    }

    if (*(a1 + 40))
    {
      ++*(a1 + 100);
    }
  }

  *(a1 + 345) = 1;
  v13 = *(a1 + 220);
  v14 = *(a1 + 221);
  v11 = *(a1 + 218);
  v12 = *(a1 + 219);
  v10 = *(a1 + 217);
  result = sub_100016A20(1, "IEEE 802.1X: %02x:%02x:%02x:%02x:%02x:%02x AUTH_PAE entering state RESTART", a3, a4, a5, a6, a7, a8, *(a1 + 216));
  *(a1 + 36) = 9;
  *(*(a1 + 232) + 24) = 1;
  return result;
}

uint64_t sub_10001D260(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = 3;
  }

  else
  {
    v3 = 4;
  }

  v8[0] = v3;
  v4 = *(a1 + 256) + 1;
  *(a1 + 256) = v4;
  v8[1] = v4;
  v9 = 1024;
  v5 = *(a1 + 352);
  v6 = "SUCCESS";
  if (!a2)
  {
    v6 = "FAILURE";
  }

  sub_10001D308(v5, a1 + 216, 0, "Sending canned EAP packet %s (identifier %d)", v6, v4);
  result = (*(*(a1 + 352) + 128))(*(*(a1 + 352) + 120), *(a1 + 360), 0, v8, 4);
  ++*(a1 + 176);
  return result;
}

void sub_10001D308(uint64_t a1, uint64_t a2, uint64_t a3, char *__s, ...)
{
  va_start(va, __s);
  if (*(a1 + 168))
  {
    v8 = (strlen(__s) + 100);
    v9 = malloc_type_malloc(v8, 0x1C78C2C6uLL);
    if (v9)
    {
      v10 = v9;
      vsnprintf(v9, v8, __s, va);
      v11 = *(a1 + 168);
      if (v11)
      {
        v11(*(a1 + 120), a2, a3, v10);
      }

      free(v10);
    }
  }
}

uint64_t sub_10001D3BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(a1 + 345) = 1;
  v13 = *(a1 + 220);
  v14 = *(a1 + 221);
  v11 = *(a1 + 218);
  v12 = *(a1 + 219);
  v10 = *(a1 + 217);
  result = sub_100016A20(1, "IEEE 802.1X: %02x:%02x:%02x:%02x:%02x:%02x BE_AUTH entering state IDLE", a3, a4, a5, a6, a7, a8, *(a1 + 216));
  *(a1 + 104) = 5;
  *(a1 + 20) = 0;
  return result;
}

uint64_t sub_10001D42C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(a1 + 345) = 1;
  v15 = *(a1 + 220);
  v16 = *(a1 + 221);
  v13 = *(a1 + 218);
  v14 = *(a1 + 219);
  v12 = *(a1 + 217);
  result = sub_100016A20(1, "IEEE 802.1X: %02x:%02x:%02x:%02x:%02x:%02x BE_AUTH entering state RESPONSE", a3, a4, a5, a6, a7, a8, *(a1 + 216));
  *(a1 + 104) = 1;
  *(a1 + 21) = 0;
  *(a1 + 23) = 0;
  v10 = *(a1 + 232);
  v10[37] = 0;
  v11 = *(a1 + 112);
  *a1 = *(a1 + 108);
  *v10 = 1;
  *(a1 + 112) = v11 + 1;
  return result;
}

uint64_t sub_10001D4B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(a1 + 345) = 1;
  v20 = *(a1 + 220);
  v21 = *(a1 + 221);
  v18 = *(a1 + 218);
  v19 = *(a1 + 219);
  v17 = *(a1 + 217);
  sub_100016A20(1, "IEEE 802.1X: %02x:%02x:%02x:%02x:%02x:%02x BE_AUTH entering state REQUEST", a3, a4, a5, a6, a7, a8, *(a1 + 216));
  *(a1 + 104) = 0;
  result = sub_10001D6A4(a1, v9, v10, v11, v12, v13, v14, v15);
  *(*(a1 + 232) + 36) = 0;
  ++*(a1 + 120);
  *(a1 + 23) = 0;
  return result;
}

uint64_t sub_10001D540(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(a1 + 345) = 1;
  v13 = *(a1 + 220);
  v14 = *(a1 + 221);
  v11 = *(a1 + 218);
  v12 = *(a1 + 219);
  v10 = *(a1 + 217);
  result = sub_100016A20(1, "IEEE 802.1X: %02x:%02x:%02x:%02x:%02x:%02x BE_AUTH entering state TIMEOUT", a3, a4, a5, a6, a7, a8, *(a1 + 216));
  *(a1 + 104) = 4;
  *(a1 + 21) = 1;
  return result;
}

uint64_t sub_10001D5B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(a1 + 345) = 1;
  v20 = *(a1 + 220);
  v21 = *(a1 + 221);
  v18 = *(a1 + 218);
  v19 = *(a1 + 219);
  v17 = *(a1 + 217);
  sub_100016A20(1, "IEEE 802.1X: %02x:%02x:%02x:%02x:%02x:%02x BE_AUTH entering state FAIL", a3, a4, a5, a6, a7, a8, *(a1 + 216));
  *(a1 + 104) = 3;
  result = sub_10001D6A4(a1, v9, v10, v11, v12, v13, v14, v15);
  *(a1 + 13) = 1;
  return result;
}

uint64_t sub_10001D628(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(a1 + 345) = 1;
  v20 = *(a1 + 220);
  v21 = *(a1 + 221);
  v18 = *(a1 + 218);
  v19 = *(a1 + 219);
  v17 = *(a1 + 217);
  sub_100016A20(1, "IEEE 802.1X: %02x:%02x:%02x:%02x:%02x:%02x BE_AUTH entering state SUCCESS", a3, a4, a5, a6, a7, a8, *(a1 + 216));
  *(a1 + 104) = 2;
  result = sub_10001D6A4(a1, v9, v10, v11, v12, v13, v14, v15);
  *(a1 + 22) = 1;
  *(a1 + 26) = 1;
  return result;
}

uint64_t sub_10001D6A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  result = *(*(a1 + 232) + 48);
  if (result && *(result + 8) > 3uLL)
  {
    if ((*(a1 + 224) & 2) != 0)
    {
      v22 = *(a1 + 220);
      v23 = *(a1 + 221);
      v20 = *(a1 + 218);
      v21 = *(a1 + 219);
      v19 = *(a1 + 217);
      return sub_100016A20(1, "EAPOL: Drop EAPOL TX to %02x:%02x:%02x:%02x:%02x:%02x while waiting for EAPOL-Start", a3, a4, a5, a6, a7, a8, *(a1 + 216));
    }

    else
    {
      v13 = sub_10000F958(result);
      *(a1 + 256) = v13;
      sub_10001D308(*(a1 + 352), a1 + 216, 0, "Sending EAP Packet (identifier %d)", v13);
      v14 = *(a1 + 352);
      v15 = *(v14 + 120);
      v16 = *(v14 + 128);
      v17 = *(*(a1 + 232) + 48);
      if (*(v17 + 16))
      {
        v18 = *(v17 + 16);
      }

      else
      {
        v18 = v17 + 24;
      }

      v16(v15, *(a1 + 360), 0, v18, *(v17 + 8));
      ++*(a1 + 176);
      result = sub_10000F984(*(*(a1 + 232) + 48));
      if (result == 1)
      {
        ++*(a1 + 196);
      }

      else
      {
        ++*(a1 + 200);
      }
    }
  }

  else
  {
    v10 = *(a1 + 352);
    v11 = *(v10 + 168);
    if (v11)
    {
      v12 = *(v10 + 120);

      return v11(v12, a1 + 216, 0, "TxReq called, but there is no EAP request from authentication server");
    }
  }

  return result;
}

uint64_t sub_10001D7F0(uint64_t result, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = result;
  if (!a2 || *(result + 132))
  {
    *(result + 345) = 1;
    v12 = *(result + 220);
    v13 = *(result + 221);
    v10 = *(result + 218);
    v11 = *(result + 219);
    v9 = *(result + 217);
    result = sub_100016A20(1, "IEEE 802.1X: %02x:%02x:%02x:%02x:%02x:%02x REAUTH_TIMER entering state INITIALIZE", a3, a4, a5, a6, a7, a8, *(result + 216));
  }

  v8[33] = 0;
  v8[2] = v8[34];
  return result;
}

uint64_t sub_10001D86C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(a1 + 345) = 1;
  v13 = *(a1 + 220);
  v14 = *(a1 + 221);
  v11 = *(a1 + 218);
  v12 = *(a1 + 219);
  v10 = *(a1 + 217);
  sub_100016A20(1, "IEEE 802.1X: %02x:%02x:%02x:%02x:%02x:%02x AUTH_KEY_TX entering state KEY_TRANSMIT", a3, a4, a5, a6, a7, a8, *(a1 + 216));
  *(a1 + 144) = 1;
  result = (*(*(a1 + 352) + 192))(*(*(a1 + 352) + 120), *(a1 + 360));
  *(*(a1 + 232) + 72) = 0;
  *(a1 + 25) = 1;
  return result;
}

uint64_t sub_10001D8F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(a1 + 345) = 1;
  v13 = *(a1 + 220);
  v14 = *(a1 + 221);
  v11 = *(a1 + 218);
  v12 = *(a1 + 219);
  v10 = *(a1 + 217);
  result = sub_100016A20(1, "IEEE 802.1X: %02x:%02x:%02x:%02x:%02x:%02x KEY_RX entering state KEY_RECEIVE", a3, a4, a5, a6, a7, a8, *(a1 + 216));
  *(a1 + 148) = 1;
  *(a1 + 152) = 0;
  return result;
}

uint64_t sub_10001D95C(uint64_t result, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = result;
  if (!a2 || *(result + 156) != 1)
  {
    *(result + 345) = 1;
    v12 = *(result + 220);
    v13 = *(result + 221);
    v10 = *(result + 218);
    v11 = *(result + 219);
    v9 = *(result + 217);
    result = sub_100016A20(1, "IEEE 802.1X: %02x:%02x:%02x:%02x:%02x:%02x CTRL_DIR entering state IN_OR_BOTH", a3, a4, a5, a6, a7, a8, *(result + 216));
  }

  v8[39] = 1;
  v8[41] = v8[40];
  return result;
}

uint64_t sub_10001D9F0(uint64_t a1, void *a2)
{
  v2 = *(a1 + 352);
  result = *(v2 + 40);
  *a2 = *(v2 + 48);
  return result;
}

uint64_t sub_10001DA00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  v5 = *(a1 + 232);
  if (!v5)
  {
    return 0xFFFFFFFFLL;
  }

  if (!*v5)
  {
    return 0xFFFFFFFFLL;
  }

  sub_10001DABC(*(a1 + 272));
  *(a1 + 272) = 0;
  v9 = sub_100016754(0x60uLL);
  if (!v9)
  {
    return 0xFFFFFFFFLL;
  }

  v10 = v9;
  result = (**(a1 + 232))(*(a1 + 216), a2, a3, a4, v9);
  if (result)
  {
    free(v10[8]);
    free(v10);
    return 0xFFFFFFFFLL;
  }

  *(a1 + 272) = v10;
  *(a1 + 280) = 0;
  return result;
}

void sub_10001DABC(void **a1)
{
  if (a1)
  {
    free(a1[8]);

    free(a1);
  }
}

uint64_t sub_10001DB00(uint64_t result, unsigned __int8 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(result + 272))
  {
    v10 = result;
    sub_100016A20(0, "EAP: processing NAK (current EAP method index %d)", a3, a4, a5, a6, a7, a8, *(result + 280));
    sub_100016A94(0, "EAP: configured methods", *(v10 + 272), 64);
    sub_100016A94(0, "EAP: list of methods supported by the peer", a2, a3);
    v11 = *(v10 + 280);
    if (v11 >= 8)
    {
      v12 = *(v10 + 272);
    }

    else
    {
      v12 = *(v10 + 272);
      v13 = 1;
      do
      {
        v14 = v11 + 1;
        while (1)
        {
          v15 = (v12 + 8 * v11);
          if (!*v15)
          {
            v16 = v15[1];
            if (!v16)
            {
              goto LABEL_17;
            }

            v17 = a2;
            v18 = a3;
            if (a3)
            {
              break;
            }
          }

LABEL_6:
          memmove(v15, (v12 + 8 * v14), (56 - 8 * v11) & 0x7FFFFFFF8);
          v12 = *(v10 + 272);
          *(v12 + 56) = 0;
          if (!v13)
          {
            goto LABEL_17;
          }
        }

        while (1)
        {
          v19 = *v17++;
          if (v16 == v19)
          {
            break;
          }

          if (!--v18)
          {
            goto LABEL_6;
          }
        }

        v13 = v11++ < 7;
      }

      while (v14 != 8);
    }

LABEL_17:

    return sub_100016A94(0, "EAP: new list of configured methods", v12, 64);
  }

  return result;
}

uint64_t sub_10001DC4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = 0;
  v10 = "EAP: EAP entering state PICK_UP_METHOD";
  do
  {
    v11 = v9;
    *(a1 + 208) = 0;
    if (*(a1 + 32))
    {
      if (!*(a1 + 24))
      {
        goto LABEL_11;
      }

      v12 = a1;
      v13 = 1;
LABEL_5:
      sub_10001E818(v12, v13, a3, a4, a5, a6, a7, a8);
    }

    else
    {
      if (!*(a1 + 24))
      {
LABEL_11:
        if (*a1)
        {
          *(a1 + 208) = 1;
          sub_100016A20(1, "EAP: EAP entering state DISABLED", a3, a4, a5, a6, a7, a8, v97);
        }

        *a1 = 0;
        *(a1 + 312) = 0;
        goto LABEL_14;
      }

      v14 = *(a1 + 312);
      if (v14 < 51)
      {
        switch(*a1)
        {
          case 0:
            v12 = a1;
            v13 = 0;
            goto LABEL_5;
          case 1:
            if (!*(a1 + 304) || !*(a1 + 172))
            {
              goto LABEL_57;
            }

            v25 = *(a1 + 180);
            if (v25 == 3 || v25 == 254 && !*(a1 + 184) && *(a1 + 188) == 3)
            {
              goto LABEL_105;
            }

            *(a1 + 208) = 1;
            sub_100016A20(1, v10, a3, a4, a5, a6, a7, a8, v97);
            *a1 = 16;
            if (*(a1 + 180) != 1)
            {
              v90 = *(a1 + 144);
              goto LABEL_131;
            }

            v31 = 1;
            *(a1 + 144) = 1;
            v32 = *(a1 + 200);
            if (v32)
            {
              if (*(a1 + 240))
              {
                (*(v32 + 32))(a1);
                *(a1 + 240) = 0;
                v31 = *(a1 + 144);
              }

              else
              {
                v31 = 1;
              }
            }

            v92 = sub_1000210A4(0, v31);
            *(a1 + 200) = v92;
            if (!v92)
            {
              goto LABEL_130;
            }

            v93 = *(v92 + 24);
            if (!v93)
            {
              goto LABEL_130;
            }

            v94 = v93(a1);
            *(a1 + 240) = v94;
            v90 = *(a1 + 144);
            if (!v94)
            {
              sub_100016A20(1, "EAP: Failed to initialize EAP method %d", v95, v26, v27, v28, v29, v30, *(a1 + 144));
LABEL_130:
              v90 = 0;
              *(a1 + 200) = 0;
              *(a1 + 144) = 0;
            }

LABEL_131:
            sub_100016D3C(*(a1 + 224), 2, "CTRL-EVENT-EAP-PROPOSED-METHOD method=%u", v26, v27, v28, v29, v30, v90);
            break;
          case 2:
            if (!*(a1 + 28))
            {
              *(a1 + 208) = 1;
              sub_100016A20(1, "EAP: EAP entering state RETRANSMIT", a3, a4, a5, a6, a7, a8, v97);
              v63 = 12;
              goto LABEL_93;
            }

            if (*(a1 + 8))
            {
              *(a1 + 208) = 1;
              sub_100016A20(1, "EAP: EAP entering state RECEIVED", a3, a4, a5, a6, a7, a8, v97);
              *a1 = 3;
              sub_10001F24C(a1, *(a1 + 16), v37, v38, v39, v40, v41, v42);
              ++*(a1 + 312);
            }

            break;
          case 3:
            v33 = *(a1 + 180);
            if (*(a1 + 172) && *(a1 + 176) == *(a1 + 148))
            {
              if ((v33 == 3 || v33 == 254 && !*(a1 + 184) && *(a1 + 188) == 3) && !*(a1 + 152))
              {
LABEL_105:
                sub_10001EC5C(a1, a2, a3, a4, a5, a6, a7, a8);
                break;
              }

              v34 = *(a1 + 144);
              if (v33 == v34)
              {
LABEL_40:
                *(a1 + 208) = 1;
                sub_100016A20(1, "EAP: EAP entering state INTEGRITY_CHECK", a3, a4, a5, a6, a7, a8, v97);
                *a1 = 4;
                v35 = *(*(a1 + 200) + 56);
                if (v35)
                {
                  *(a1 + 192) = v35(a1, *(a1 + 240), *(a1 + 16));
                }

                break;
              }

              if (v33 == 254 && !*(a1 + 184))
              {
                v91 = *(a1 + 176);
                if (*(a1 + 188) == v34)
                {
                  goto LABEL_40;
                }
              }

              else
              {
                v89 = *(a1 + 176);
              }
            }

            else
            {
              v56 = *(a1 + 144);
            }

            v102 = *(a1 + 180);
            v99 = *(a1 + 176);
            sub_100016A20(1, "EAP: RECEIVED->DISCARD: rxResp=%d respId=%d currentId=%d respMethod=%d currentMethod=%d", a3, a4, a5, a6, a7, a8, *(a1 + 172));
LABEL_110:
            *(a1 + 208) = 1;
            sub_100016A20(1, "EAP: EAP entering state DISCARD", a3, a4, a5, a6, a7, a8, v97);
            v55 = 10;
LABEL_111:
            *a1 = v55;
            *(a1 + 8) = 0;
            *(a1 + 45) = 1;
            break;
          case 4:
            if (!*(a1 + 192))
            {
              goto LABEL_113;
            }

            goto LABEL_110;
          case 5:
            if (*(a1 + 152) == 2)
            {
              goto LABEL_57;
            }

            v57 = *(a1 + 316);
            if (v57 == 2)
            {
              sub_100016A20(1, "EAP: Method has completed pending processing - reprocess pending EAP message", a3, a4, a5, a6, a7, a8, v97);
              *(a1 + 316) = 0;
LABEL_113:
              sub_10001ED2C(a1, a2, a3, a4, a5, a6, a7, a8);
            }

            else
            {
              if (v57 != 1)
              {
                goto LABEL_81;
              }

              sub_100016A20(1, "EAP: Method has pending processing - wait before proceeding to METHOD_REQUEST state", a3, a4, a5, a6, a7, a8, v97);
            }

            break;
          case 6:
            *(a1 + 208) = 1;
            sub_100016A20(1, "EAP: EAP entering state SEND_REQUEST", a3, a4, a5, a6, a7, a8, v97);
            *a1 = 9;
            *(a1 + 156) = 0;
            v23 = *(a1 + 56);
            if (v23)
            {
              goto LABEL_59;
            }

            v24 = "EAP: SEND_REQUEST - no eapReqData";
            goto LABEL_90;
          case 7:
            v45 = *(a1 + 316);
            if (v45 == 2)
            {
              sub_100016A20(1, "EAP: Method has completed pending processing - reprocess pending EAP message", a3, a4, a5, a6, a7, a8, v97);
              *(a1 + 316) = 0;
              goto LABEL_98;
            }

            if (v45 == 1)
            {
              sub_100016A20(1, "EAP: Method has pending processing - wait before proceeding to METHOD_REQUEST state", a3, a4, a5, a6, a7, a8, v97);
              v46 = *(a1 + 280);
              v47 = __OFSUB__(v46, 1);
              v48 = v46 - 1;
              if (v48 < 0 == v47)
              {
                *(a1 + 280) = v48;
              }
            }

            else
            {
LABEL_81:
              sub_10001EE28(a1, a2, a3, a4, a5, a6, a7, a8, v97);
            }

            break;
          case 8:
            v44 = *(a1 + 196);
            if (v44)
            {
              if (v44 == 3)
              {
                *(a1 + 208) = 1;
                sub_100016A20(1, "EAP: EAP entering state INITIALIZE_PASSTHROUGH", a3, a4, a5, a6, a7, a8, v97);
                *a1 = 17;
                sub_1000171F8(*(a1 + 128));
                *(a1 + 128) = 0;
              }

              else
              {
                if (v44 == 1)
                {
                  v15 = a1;
                  v16 = 0;
                  goto LABEL_10;
                }

LABEL_98:
                sub_10001EF30(a1, a2, a3, a4, a5, a6, a7, a8);
              }
            }

            else
            {
              v67 = v10;
              *(a1 + 208) = 1;
              sub_100016A20(1, "EAP: EAP entering state SUCCESS", a3, a4, a5, a6, a7, a8, v97);
              *a1 = 13;
              sub_1000171F8(*(a1 + 56));
              v68 = *(a1 + 148);
              sub_100016A20(1, "EAP: Building EAP-Success (id=%d)", v69, v70, v71, v72, v73, v74, v68);
              v75 = sub_1000170C4(4);
              v82 = v75;
              if (v75)
              {
                v83 = sub_10001723C(v75, 4, v76, v77, v78, v79, v80, v81);
                *v83 = 3;
                v83[1] = v68;
                *(v83 + 1) = 1024;
              }

              *(a1 + 56) = v82;
              sub_1000171F8(*(a1 + 160));
              *(a1 + 160) = 0;
              v10 = v67;
              if (*(a1 + 64))
              {
                *(a1 + 80) = 1;
              }

              *(a1 + 46) = 1;
              v103 = *(a1 + 413);
              v104 = *(a1 + 414);
              v100 = *(a1 + 411);
              v101 = *(a1 + 412);
              v98 = *(a1 + 410);
              sub_100016D3C(*(a1 + 224), 2, "CTRL-EVENT-EAP-SUCCESS %02x:%02x:%02x:%02x:%02x:%02x", v84, v85, v86, v87, v88, *(a1 + 409));
            }

            break;
          case 9:
          case 0xA:
            goto LABEL_17;
          case 0xB:
            goto LABEL_57;
          case 0xC:
            if (*(a1 + 156) <= *(a1 + 4))
            {
LABEL_17:
              sub_10001EDD8(a1, a2, a3, a4, a5, a6, a7, a8);
              break;
            }

            *(a1 + 208) = 1;
            sub_100016A20(1, "EAP: EAP entering state TIMEOUT_FAILURE", a3, a4, a5, a6, a7, a8, v97);
            v36 = 15;
            goto LABEL_50;
          case 0x10:
            if (*(a1 + 144))
            {
              goto LABEL_113;
            }

LABEL_57:
            sub_10001EA28(a1, a2, a3, a4, a5, a6, a7, a8);
            break;
          case 0x11:
            if (*(a1 + 148) == -1)
            {
              goto LABEL_62;
            }

            goto LABEL_75;
          case 0x12:
            if (*(a1 + 8))
            {
              *(a1 + 208) = 1;
              sub_100016A20(1, "EAP: EAP entering state RECEIVED2", a3, a4, a5, a6, a7, a8, v97);
              *a1 = 20;
              sub_10001F24C(a1, *(a1 + 16), v49, v50, v51, v52, v53, v54);
              break;
            }

            if (*(a1 + 28))
            {
              break;
            }

            *(a1 + 208) = 1;
            sub_100016A20(1, "EAP: EAP entering state RETRANSMIT2", a3, a4, a5, a6, a7, a8, v97);
            v63 = 19;
LABEL_93:
            *a1 = v63;
            v64 = *(a1 + 156);
            *(a1 + 156) = v64 + 1;
            if (v64 >= *(a1 + 4))
            {
              break;
            }

            v65 = *(a1 + 160);
            if (!v65)
            {
              break;
            }

            sub_1000171F8(*(a1 + 56));
            v66 = sub_10001718C(v65);
            *(a1 + 56) = v66;
            if (!v66)
            {
              break;
            }

            goto LABEL_60;
          case 0x13:
            if (*(a1 + 156) > *(a1 + 4))
            {
              goto LABEL_49;
            }

            goto LABEL_51;
          case 0x14:
            if (*(a1 + 172) && *(a1 + 176) == *(a1 + 148))
            {
LABEL_75:
              sub_10001F0D0(a1, a2, a3, a4, a5, a6, a7, a8, v97);
              break;
            }

            *(a1 + 208) = 1;
            sub_100016A20(1, "EAP: EAP entering state DISCARD2", a3, a4, a5, a6, a7, a8, v97);
            v55 = 21;
            goto LABEL_111;
          case 0x15:
          case 0x16:
LABEL_51:
            sub_10001F154(a1, a2, a3, a4, a5, a6, a7, a8);
            break;
          case 0x17:
LABEL_62:
            *(a1 + 208) = 1;
            sub_100016A20(1, "EAP: EAP entering state AAA_IDLE", a3, a4, a5, a6, a7, a8, v97);
            *a1 = 25;
            *(a1 + 81) = 0;
            *(a1 + 120) = 1;
            break;
          case 0x18:
            *(a1 + 208) = 1;
            sub_100016A20(1, "EAP: EAP entering state SEND_REQUEST2", a3, a4, a5, a6, a7, a8, v97);
            *a1 = 22;
            *(a1 + 156) = 0;
            v23 = *(a1 + 56);
            if (v23)
            {
LABEL_59:
              sub_1000171F8(*(a1 + 160));
              v43 = sub_10001718C(v23);
              *(a1 + 160) = v43;
              *(a1 + 8) = 0;
              if (v43)
              {
LABEL_60:
                *(a1 + 44) = 1;
              }

              else
              {
                *(a1 + 44) = 0;
              }
            }

            else
            {
              v24 = "EAP: SEND_REQUEST2 - no eapReqData";
LABEL_90:
              sub_100016A20(2, v24, v17, v18, v19, v20, v21, v22, v97);
              *(a1 + 8) = 0;
              *(a1 + 44) = 256;
            }

            break;
          case 0x19:
            if (*(a1 + 84))
            {
              *(a1 + 208) = 1;
              sub_100016A20(1, "EAP: EAP entering state FAILURE2", a3, a4, a5, a6, a7, a8, v97);
              *a1 = 27;
              sub_10001F3F8((a1 + 56), *(a1 + 88));
              *(a1 + 47) = 1;
            }

            else if (*(a1 + 83))
            {
              v58 = v10;
              *(a1 + 208) = 1;
              sub_100016A20(1, "EAP: EAP entering state SUCCESS2", a3, a4, a5, a6, a7, a8, v97);
              *a1 = 28;
              sub_10001F3F8((a1 + 56), *(a1 + 88));
              v59 = *(a1 + 112);
              *(a1 + 80) = v59;
              if (v59)
              {
                v60 = *(a1 + 96);
                if (v60)
                {
                  v61 = *(a1 + 104);
                  free(*(a1 + 64));
                  v62 = malloc_type_malloc(v61, 0xDC79BE4CuLL);
                  *(a1 + 64) = v62;
                  if (v62)
                  {
                    memcpy(v62, v60, v61);
                  }

                  else
                  {
                    v61 = 0;
                  }

                  *(a1 + 72) = v61;
                }
              }

              else
              {
                free(*(a1 + 64));
                *(a1 + 64) = 0;
                *(a1 + 72) = 0;
              }

              *(a1 + 46) = 1;
              *(a1 + 408) = 1;
              v10 = v58;
            }

            else if (*(a1 + 81))
            {
              sub_10001F1A4(a1, a2, a3, a4, a5, a6, a7, a8);
            }

            else if (*(a1 + 136))
            {
LABEL_49:
              *(a1 + 208) = 1;
              sub_100016A20(1, "EAP: EAP entering state TIMEOUT_FAILURE2", a3, a4, a5, a6, a7, a8, v97);
              v36 = 26;
LABEL_50:
              *a1 = v36;
              *(a1 + 48) = 1;
            }

            break;
          default:
            break;
        }
      }

      else if (v14 == 51)
      {
        sub_100016A20(1, "EAP: more than %d authentication rounds - abort", a3, a4, a5, a6, a7, a8, 50);
        ++*(a1 + 312);
        v15 = a1;
        v16 = 1;
LABEL_10:
        sub_10001E920(v15, v16, a3, a4, a5, a6, a7, a8);
      }
    }

LABEL_14:
    v9 = 1;
  }

  while (*(a1 + 208));
  return v11;
}

void *sub_10001E598(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v6 = sub_100016754(0x1A0uLL);
  v13 = v6;
  if (v6)
  {
    v6[29] = a2;
    *(v6 + 1) = 5;
    v14 = *a3;
    v15 = a3[1];
    v6[27] = a1;
    v6[28] = v15;
    v16 = a3[2];
    v6[36] = v14;
    v6[37] = v16;
    *(v6 + 304) = *(a3 + 24);
    *(v6 + 77) = *(a3 + 7);
    if (a3[4])
    {
      v17 = malloc_type_malloc(0x10uLL, 0x8D834BD9uLL);
      v13[42] = v17;
      if (v17)
      {
        *v17 = *a3[4];
      }
    }

    if (a3[5])
    {
      v18 = malloc_type_malloc(a3[6], 0x2F3D46E8uLL);
      v13[43] = v18;
      if (v18)
      {
        memcpy(v18, a3[5], a3[6]);
        v13[44] = a3[6];
      }
    }

    v19 = a3[7];
    if (v19)
    {
      v13[45] = strdup(v19);
    }

    *(v13 + 23) = *(a3 + 4);
    *(v13 + 96) = *(a3 + 20);
    v20 = a3[12];
    v13[49] = a3[11];
    if (v20)
    {
      v13[50] = sub_10001718C(v20);
    }

    v21 = a3[13];
    if (v21)
    {
      v22 = *v21;
      *(v13 + 413) = *(v21 + 2);
      *(v13 + 409) = v22;
    }

    sub_100016A20(1, "EAP: Server state machine created", v7, v8, v9, v10, v11, v12, v24);
  }

  return v13;
}

void sub_10001E6C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1)
  {
    sub_100016A20(1, "EAP: Server state machine removed", a3, a4, a5, a6, a7, a8, v10);
    v9 = *(a1 + 200);
    if (v9 && *(a1 + 240))
    {
      (*(v9 + 32))(a1);
    }

    sub_1000171F8(*(a1 + 56));
    free(*(a1 + 64));
    sub_1000171F8(*(a1 + 160));
    sub_1000171F8(*(a1 + 16));
    free(*(a1 + 248));
    free(*(a1 + 336));
    free(*(a1 + 344));
    free(*(a1 + 360));
    sub_1000171F8(*(a1 + 88));
    sub_1000171F8(*(a1 + 128));
    free(*(a1 + 96));
    sub_10001DABC(*(a1 + 272));
    sub_1000171F8(*(a1 + 400));

    free(a1);
  }
}

_DWORD *sub_10001E794(_DWORD *result)
{
  if (result)
  {
    *result = 13;
  }

  return result;
}

uint64_t sub_10001E7A4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (result)
  {
    v8 = result;
    result = sub_100016A20(1, "EAP: Callback for pending request received", a3, a4, a5, a6, a7, a8, v9);
    if (*(v8 + 316) == 1)
    {
      *(v8 + 316) = 2;
    }
  }

  return result;
}

BOOL sub_10001E7F0(_BOOL8 result)
{
  if (result)
  {
    return *(result + 316) == 1;
  }

  return result;
}

uint64_t sub_10001E804(uint64_t a1, void *a2)
{
  v3 = a1 + 248;
  result = *(a1 + 248);
  *a2 = *(v3 + 8);
  return result;
}

void sub_10001E818(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a2 || *a1 != 1)
  {
    *(a1 + 208) = 1;
    sub_100016A20(1, "EAP: EAP entering state INITIALIZE", a3, a4, a5, a6, a7, a8, v16);
  }

  *a1 = 1;
  *(a1 + 148) = -1;
  *(a1 + 46) = 0;
  *(a1 + 48) = 0;
  free(*(a1 + 64));
  *(a1 + 32) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  v15 = *(a1 + 200);
  if (v15 && *(a1 + 240))
  {
    (*(v15 + 32))(a1);
    *(a1 + 240) = 0;
  }

  *(a1 + 200) = 0;
  *(a1 + 280) = 0;
  if (*(a1 + 304))
  {
    *(a1 + 144) = 0;
    sub_10001F24C(a1, *(a1 + 16), v9, v10, v11, v12, v13, v14);
    if (*(a1 + 172))
    {
      *(a1 + 148) = *(a1 + 176);
    }
  }

  *(a1 + 312) = 0;
  v20 = *(a1 + 413);
  v21 = *(a1 + 414);
  v18 = *(a1 + 411);
  v19 = *(a1 + 412);
  v17 = *(a1 + 410);
  sub_100016D3C(*(a1 + 224), 2, "CTRL-EVENT-EAP-STARTED %02x:%02x:%02x:%02x:%02x:%02x", v10, v11, v12, v13, v14, *(a1 + 409));
}

void sub_10001E920(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a2 || *a1 != 14)
  {
    *(a1 + 208) = 1;
    sub_100016A20(1, "EAP: EAP entering state FAILURE", a3, a4, a5, a6, a7, a8, v30);
  }

  *a1 = 14;
  sub_1000171F8(*(a1 + 56));
  v9 = *(a1 + 148);
  sub_100016A20(1, "EAP: Building EAP-Failure (id=%d)", v10, v11, v12, v13, v14, v15, v9);
  v16 = sub_1000170C4(4);
  v23 = v16;
  if (v16)
  {
    v24 = sub_10001723C(v16, 4, v17, v18, v19, v20, v21, v22);
    *v24 = 4;
    v24[1] = v9;
    *(v24 + 1) = 1024;
  }

  *(a1 + 56) = v23;
  sub_1000171F8(*(a1 + 160));
  *(a1 + 160) = 0;
  *(a1 + 47) = 1;
  v34 = *(a1 + 413);
  v35 = *(a1 + 414);
  v32 = *(a1 + 411);
  v33 = *(a1 + 412);
  v31 = *(a1 + 410);
  sub_100016D3C(*(a1 + 224), 2, "CTRL-EVENT-EAP-FAILURE %02x:%02x:%02x:%02x:%02x:%02x", v25, v26, v27, v28, v29, *(a1 + 409));
}

uint64_t sub_10001EA28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(a1 + 208) = 1;
  sub_100016A20(1, "EAP: EAP entering state SELECT_ACTION", a3, a4, a5, a6, a7, a8, v27);
  *a1 = 8;
  if (!*(a1 + 308) && *(a1 + 248) && !*(a1 + 408))
  {
    result = sub_100016A20(1, "EAP: getDecision: -> PASSTHROUGH", v9, v10, v11, v12, v13, v14, v28);
    v17 = 3;
    goto LABEL_37;
  }

  v15 = *(a1 + 200);
  if (!v15)
  {
    goto LABEL_14;
  }

  if (*(a1 + 144) != 1)
  {
    if ((*(v15 + 88))(a1, *(a1 + 240)))
    {
      result = sub_100016A20(1, "EAP: getDecision: method succeeded -> SUCCESS", v9, v10, v11, v12, v13, v14, v28);
      v17 = 0;
      *(a1 + 305) = 1;
      goto LABEL_37;
    }

    v15 = *(a1 + 200);
    if (!v15)
    {
      goto LABEL_14;
    }
  }

  if (!(*(v15 + 72))(a1, *(a1 + 240)) || (*(*(a1 + 200) + 88))(a1, *(a1 + 240)))
  {
LABEL_14:
    v19 = *(a1 + 272);
    if (v19 && !*(a1 + 305))
    {
      *(a1 + 408) = 0;
    }

    else
    {
      v20 = *(a1 + 248);
      if (v20 && !*(a1 + 408))
      {
        v25 = !v19 || *(a1 + 144) != 1 || *v19 || v19[1] != 1;
        if (sub_10001DA00(a1, v20, *(a1 + 256), 0))
        {
          v24 = "EAP: getDecision: user not found from database -> FAILURE";
          goto LABEL_36;
        }

        v19 = *(a1 + 272);
        if (v19)
        {
          v26 = v25;
        }

        else
        {
          v26 = 1;
        }

        if ((v26 & 1) == 0 && !*v19 && v19[1] == 1)
        {
          v16 = "EAP: getDecision: stop identity request loop -> FAILURE";
          goto LABEL_7;
        }

        *(a1 + 305) = 0;
      }

      *(a1 + 408) = 0;
      if (!v19)
      {
        goto LABEL_25;
      }
    }

    v21 = *(a1 + 280);
    if (v21 <= 7)
    {
      v22 = &v19[2 * v21];
      if (*v22 || v22[1])
      {
        v23 = "EAP: getDecision: another method available -> CONTINUE";
        goto LABEL_29;
      }
    }

LABEL_25:
    if (*(a1 + 248) && *(a1 + 148) != -1)
    {
      v24 = "EAP: getDecision: no more methods available -> FAILURE";
LABEL_36:
      v17 = 1;
      result = sub_100016A20(1, v24, v9, v10, v11, v12, v13, v14, v28);
      goto LABEL_37;
    }

    v23 = "EAP: getDecision: no identity known yet -> CONTINUE";
LABEL_29:
    result = sub_100016A20(1, v23, v9, v10, v11, v12, v13, v14, v28);
    v17 = 2;
    goto LABEL_37;
  }

  v16 = "EAP: getDecision: method failed -> FAILURE";
LABEL_7:
  v17 = 1;
  result = sub_100016A20(1, v16, v9, v10, v11, v12, v13, v14, v28);
  *(a1 + 305) = 1;
LABEL_37:
  *(a1 + 196) = v17;
  return result;
}

uint64_t sub_10001EC5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(a1 + 208) = 1;
  sub_100016A20(1, "EAP: EAP entering state NAK", a3, a4, a5, a6, a7, a8, v21);
  *a1 = 11;
  if (*(a1 + 240))
  {
    (*(*(a1 + 200) + 32))(a1);
    *(a1 + 240) = 0;
  }

  *(a1 + 200) = 0;
  v14 = *(a1 + 16);
  v15 = *(v14 + 8);
  if (*(v14 + 16))
  {
    v16 = *(v14 + 16);
  }

  else
  {
    v16 = v14 + 24;
  }

  if (v15 < 5)
  {
    v19 = 0;
    v18 = 0;
  }

  else
  {
    v17 = bswap32(*(v16 + 2)) >> 16;
    if (v15 >= v17)
    {
      v15 = v17;
    }

    if (*(v16 + 4) == 3)
    {
      v18 = (v16 + 5);
      v19 = v15 - 5;
    }

    else
    {
      v18 = 0;
      v19 = v15 - 4;
    }
  }

  return sub_10001F388(a1, v18, v19, v9, v10, v11, v12, v13);
}

uint64_t sub_10001ED2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = 1;
  *(a1 + 208) = 1;
  sub_100016A20(1, "EAP: EAP entering state METHOD_RESPONSE", a3, a4, a5, a6, a7, a8, v12);
  *a1 = 5;
  (*(*(a1 + 200) + 64))(a1, *(a1 + 240), *(a1 + 16));
  result = (*(*(a1 + 200) + 72))(a1, *(a1 + 240));
  if (result)
  {
    free(*(a1 + 64));
    v11 = *(*(a1 + 200) + 80);
    if (v11)
    {
      result = v11(a1, *(a1 + 240), a1 + 72);
    }

    else
    {
      result = 0;
      *(a1 + 72) = 0;
    }

    *(a1 + 64) = result;
    v9 = 2;
  }

  *(a1 + 152) = v9;
  return result;
}

uint64_t sub_10001EDD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(a1 + 208) = 1;
  sub_100016A20(1, "EAP: EAP entering state IDLE", a3, a4, a5, a6, a7, a8, v16);
  *a1 = 2;
  result = sub_10001F438(*(a1 + 156), *(a1 + 168), v9, v10, v11, v12, v13, v14);
  *(a1 + 28) = result;
  return result;
}

uint64_t sub_10001EE28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *(a1 + 208) = 1;
  sub_100016A20(1, "EAP: EAP entering state METHOD_REQUEST", a3, a4, a5, a6, a7, a8, v19);
  *a1 = 6;
  if (*(a1 + 200))
  {
    LODWORD(v16) = *(a1 + 148);
    if ((v16 & 0x80000000) == 0 || (v16 = rand(), v16 == *(a1 + 268)))
    {
      v16 = (v16 + 1);
    }

    *(a1 + 148) = v16;
    sub_100016A20(1, "EAP: building EAP-Request: Identifier %d", v10, v11, v12, v13, v14, v15, v16);
    *(a1 + 268) = *(a1 + 148);
    sub_1000171F8(*(a1 + 56));
    result = (*(*(a1 + 200) + 40))(a1, *(a1 + 240), *(a1 + 148));
    *(a1 + 56) = result;
    v18 = *(*(a1 + 200) + 48);
    if (v18)
    {
      result = v18(a1, *(a1 + 240));
      *(a1 + 168) = result;
    }

    else
    {
      *(a1 + 168) = 0;
    }
  }

  else
  {

    return sub_100016A20(1, "EAP: method not initialized", v10, v11, v12, v13, v14, v15, a9);
  }

  return result;
}

void sub_10001EF30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = 1;
  *(a1 + 208) = 1;
  sub_100016A20(1, "EAP: EAP entering state PROPOSE_METHOD", a3, a4, a5, a6, a7, a8, v30);
  *a1 = 7;
  if (!*(a1 + 248) || *(a1 + 148) == -1)
  {
    *(a1 + 305) = 1;
LABEL_8:
    sub_100016A20(1, "EAP: getNextMethod: vendor %d type %d", v10, v11, v12, v13, v14, v15, 0);
    v19 = 0;
    v20 = v9;
    goto LABEL_9;
  }

  v9 = 0;
  v16 = *(a1 + 272);
  if (!v16)
  {
    goto LABEL_8;
  }

  v17 = *(a1 + 280);
  if (v17 > 7)
  {
    goto LABEL_8;
  }

  v18 = (v16 + 8 * v17);
  v19 = *v18;
  if (!v19)
  {
    v20 = v18[1];
    if (v20)
    {
      *(a1 + 280) = v17 + 1;
      sub_100016A20(1, "EAP: getNextMethod: vendor %d type %d", v10, v11, v12, v13, v14, v15, v19);
      v19 = 0;
      v9 = v20;
      goto LABEL_9;
    }

    v9 = 0;
    goto LABEL_8;
  }

  v20 = v18[1];
  *(a1 + 280) = v17 + 1;
  sub_100016A20(1, "EAP: getNextMethod: vendor %d type %d", v10, v11, v12, v13, v14, v15, v19);
  v9 = 254;
LABEL_9:
  *(a1 + 144) = v9;
  v21 = *(a1 + 200);
  if (v21 && *(a1 + 240))
  {
    (*(v21 + 32))(a1);
    *(a1 + 240) = 0;
  }

  v22 = sub_1000210A4(v19, v20);
  *(a1 + 200) = v22;
  if (v22)
  {
    v28 = (*(v22 + 16))(a1);
    *(a1 + 240) = v28;
    if (!v28)
    {
      sub_100016A20(1, "EAP: Failed to initialize EAP method %d", v29, v23, v24, v25, v26, v27, *(a1 + 144));
      *(a1 + 200) = 0;
      *(a1 + 144) = 0;
    }
  }

  *(a1 + 152) = (*(a1 + 144) - 1) < 2;
  sub_100016D3C(*(a1 + 224), 2, "CTRL-EVENT-EAP-PROPOSED-METHOD vendor=%u method=%u", v23, v24, v25, v26, v27, v19);
}

unint64_t *sub_10001F0D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *(a1 + 208) = 1;
  sub_100016A20(1, "EAP: EAP entering state AAA_REQUEST", a3, a4, a5, a6, a7, a8, v18);
  *a1 = 23;
  v16 = *(a1 + 16);
  if (v16)
  {
    sub_1000171F8(*(a1 + 128));
    result = sub_10001718C(v16);
    *(a1 + 128) = result;
  }

  else
  {

    return sub_100016A20(2, "EAP: AAA_REQUEST - no eapRespData", v10, v11, v12, v13, v14, v15, a9);
  }

  return result;
}

uint64_t sub_10001F154(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(a1 + 208) = 1;
  sub_100016A20(1, "EAP: EAP entering state IDLE2", a3, a4, a5, a6, a7, a8, v16);
  *a1 = 18;
  result = sub_10001F438(*(a1 + 156), *(a1 + 168), v9, v10, v11, v12, v13, v14);
  *(a1 + 28) = result;
  return result;
}

uint64_t sub_10001F1A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(a1 + 208) = 1;
  sub_100016A20(1, "EAP: EAP entering state AAA_RESPONSE", a3, a4, a5, a6, a7, a8, v21);
  *a1 = 24;
  result = sub_10001F3F8((a1 + 56), *(a1 + 88));
  v16 = *(a1 + 56);
  if (v16 && *(v16 + 8) >= 4uLL)
  {
    v18 = *(v16 + 16);
    v19 = v16 + 24;
    if (v18)
    {
      v20 = v18;
    }

    else
    {
      v20 = v19;
    }

    result = sub_100016A20(1, "EAP: getId: id=%d", v10, v11, v12, v13, v14, v15, *(v20 + 1));
    v17 = *(v20 + 1);
  }

  else
  {
    v17 = -1;
  }

  *(a1 + 148) = v17;
  *(a1 + 168) = *(a1 + 116);
  return result;
}

uint64_t sub_10001F24C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(a1 + 172) = 0;
  *(a1 + 176) = xmmword_10002BFB0;
  if (!a2)
  {
    return sub_100016A20(1, "EAP: parseEapResp: invalid resp=%p len=%lu", a3, a4, a5, a6, a7, a8, a2);
  }

  v8 = *(a2 + 8);
  if (v8 <= 3)
  {
    return sub_100016A20(1, "EAP: parseEapResp: invalid resp=%p len=%lu", a3, a4, a5, a6, a7, a8, a2);
  }

  v9 = a2 + 24;
  if (*(a2 + 16))
  {
    v9 = *(a2 + 16);
  }

  v10 = bswap32(*(v9 + 2)) >> 16;
  if (v8 < v10)
  {
    return sub_100016A20(1, "EAP: Ignored truncated EAP-Packet (len=%lu plen=%lu)", a3, a4, a5, a6, a7, a8, *(a2 + 8));
  }

  *(a1 + 176) = *(v9 + 1);
  if (*v9 == 2)
  {
    v12 = 1;
    *(a1 + 172) = 1;
  }

  else
  {
    v12 = 0;
  }

  if (v10 >= 5)
  {
    v13 = *(v9 + 4);
    *(a1 + 180) = v13;
    if (v13 == 254)
    {
      if (v10 <= 0xB)
      {
        return sub_100016A20(1, "EAP: Ignored truncated expanded EAP-Packet (plen=%lu)", a3, a4, a5, a6, a7, a8, v10);
      }

      *(a1 + 184) = (*(v9 + 5) << 16) | (*(v9 + 6) << 8) | *(v9 + 7);
      *(a1 + 188) = bswap32(*(v9 + 8));
    }
  }

  return sub_100016A20(1, "EAP: parseEapResp: rxResp=%d respId=%d respMethod=%u respVendor=%u respVendorMethod=%u", a3, a4, a5, a6, a7, a8, v12);
}

uint64_t sub_10001F388(uint64_t result, unsigned __int8 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (result)
  {
    if (a2)
    {
      v8 = result;
      v9 = *(result + 272);
      if (v9)
      {
        if (*(v9 + 84))
        {
          result = sub_100016A20(1, "EAP: EAP-Nak received after Phase2 user info was selected - reject", a3, a4, a5, a6, a7, a8, v10);
          *(v8 + 196) = 1;
        }

        else
        {

          return sub_10001DB00(result, a2, a3, a4, a5, a6, a7, a8);
        }
      }
    }
  }

  return result;
}

unint64_t *sub_10001F3F8(unint64_t *result, uint64_t a2)
{
  if (a2)
  {
    v3 = result;
    sub_1000171F8(*result);
    result = sub_10001718C(a2);
    *v3 = result;
  }

  return result;
}

uint64_t sub_10001F438(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2)
  {
    v8 = a2;
    sub_100016A20(1, "EAP: retransmit timeout %d seconds (from EAP method hint)", a3, a4, a5, a6, a7, a8, a2);
  }

  else
  {
    if (a1 == 2)
    {
      v9 = 12;
    }

    else
    {
      v9 = 20;
    }

    if (a1 == 1)
    {
      v9 = 6;
    }

    if (a1 <= 0)
    {
      v8 = 3;
    }

    else
    {
      v8 = v9;
    }

    sub_100016A20(1, "EAP: retransmit timeout %d seconds (from dynamic back off; retransCount=%d)", a3, a4, a5, a6, a7, a8, v8);
  }

  return v8;
}

unsigned int *sub_10001F4B8(unsigned int *result, unsigned int *a2)
{
  v2 = 0;
  v3 = bswap32(*a2);
  *result = v3;
  result[1] = bswap32(a2[1]);
  result[2] = bswap32(a2[2]);
  result[3] = bswap32(a2[3]);
  v4 = result + 4;
  do
  {
    v6 = *(v4 - 2);
    v5 = *(v4 - 1);
    v3 ^= (HIWORD(*(&unk_10002BFC0 + BYTE2(v5))) << 24) ^ (*(&unk_10002BFC0 + 4 * BYTE1(v5) + 2) << 16) ^ (*(&unk_10002BFC0 + 4 * v5 + 1) << 8) ^ *(&unk_10002BFC0 + ((v5 >> 22) & 0x3FC) + 1) ^ (byte_10002C8C0[v2] << 24);
    v7 = v3 ^ *(v4 - 3);
    *v4 = v3;
    v4[1] = v7;
    v8 = v6 ^ v7;
    v4[2] = v8;
    v4[3] = v8 ^ v5;
    ++v2;
    v4 += 4;
  }

  while (v2 != 10);
  return result;
}

void sub_10001F578(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a2 + 24);
  if ((v8 & 0x100) == 0)
  {
    if (a3)
    {
      if ((v8 & 0x20) == 0)
      {
        v32 = *(a2 + 20);
        v34 = *(a2 + 21);
        v28 = *(a2 + 18);
        v30 = *(a2 + 19);
        v26 = *(a2 + 17);
        sub_100016D3C(*(a1 + 2576), 2, "AP-STA-CONNECTED %02x:%02x:%02x:%02x:%02x:%02x", a4, a5, a6, a7, a8, *(a2 + 16));
        v8 = *(a2 + 24);
      }

      v11 = v8 | 0x20;
      v12 = "authorizing port";
      v13 = 1;
    }

    else
    {
      if ((~v8 & 0x22) == 0)
      {
        v33 = *(a2 + 20);
        v35 = *(a2 + 21);
        v29 = *(a2 + 18);
        v31 = *(a2 + 19);
        v27 = *(a2 + 17);
        sub_100016D3C(*(a1 + 2576), 2, "AP-STA-DISCONNECTED %02x:%02x:%02x:%02x:%02x:%02x", a4, a5, a6, a7, a8, *(a2 + 16));
        v8 = *(a2 + 24);
      }

      v13 = 0;
      v11 = v8 & 0xFFFFFFDF;
      v12 = "unauthorizing port";
    }

    *(a2 + 24) = v11;
    v14 = (*(a1 + 2408))(a1, a2, v13);
    sub_100016EE4(a1, (a2 + 16), 2, 1, v12, v15, v16, v17, v25);
    if (v14)
    {
      if (*__error() != 2)
      {
        v18 = *(a2 + 16);
        v19 = *(a2 + 17);
        v20 = *(a2 + 18);
        v21 = *(a2 + 19);
        v22 = *(a2 + 20);
        v23 = *(a2 + 21);
        v24 = __error();
        printf("Could not set station %02x:%02x:%02x:%02x:%02x:%02x flags for kernel driver (errno=%d).\n", v18, v19, v20, v21, v22, v23, *v24);
      }
    }
  }
}

void sub_10001F6EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a2 + 88);
  if (v8 && *(*(v8 + 232) + 56))
  {
    v11 = *(a1 + 2632);
    v28 = *(a2 + 20);
    v29 = *(a2 + 21);
    v26 = *(a2 + 18);
    v27 = *(a2 + 19);
    v24 = *(a2 + 17);
    sub_100016A20(1, "IEEE 802.1X: Sending EAPOL-Key(s) to %02x:%02x:%02x:%02x:%02x:%02x", a3, a4, a5, a6, a7, a8, *(a2 + 16));
    v12 = *(v11 + 208);
    if (v12)
    {
      sub_10001F880(a1, a2, *(v11 + 216), 1, v12, *(*(a1 + 16) + 392));
    }

    v13 = *(*(a1 + 16) + 400);
    if (v13 >= 1)
    {
      v14 = malloc_type_malloc(v13, 0x25A2230FuLL);
      v21 = v14;
      if (v14 && !sub_1000164A4(v14, *(*(a1 + 16) + 400)))
      {
        sub_100016B64(1, "Individual WEP key", v21, *(*(a1 + 16) + 400));
        sub_10001F880(a1, a2, 0, 0, v21, *(*(a1 + 16) + 400));
        v23 = v21;
        v25 = *(*(a1 + 16) + 400);
        if (!(*(a1 + 2416))())
        {
          goto LABEL_10;
        }

        v22 = "Could not set individual WEP encryption.";
      }

      else
      {
        v22 = "Could not generate random individual WEP key.";
      }

      sub_100016A20(4, v22, v15, v16, v17, v18, v19, v20, v23);
LABEL_10:

      free(v21);
    }
  }
}

void sub_10001F880(uint64_t a1, uint64_t a2, char a3, int a4, const void *a5, size_t a6)
{
  v6 = *(a2 + 88);
  if (!v6)
  {
    return;
  }

  v13 = sub_100016754(a6 + 48);
  if (!v13)
  {
    return;
  }

  v14 = v13;
  v13[4] = 1;
  v15 = v13 + 4;
  *(v13 + 5) = bswap32(a6) >> 16;
  sub_100015F2C(v13 + 7);
  if (sub_1000164A4(v15 + 11, 0x10uLL))
  {
    v22 = "Could not get random numbers";
  }

  else
  {
    v14[31] = a3 | ((a4 == 0) << 7);
    if (*(*(a1 + 16) + 384))
    {
      v14[31] = a3 | 0x80;
    }

    v23 = *(v6 + 232);
    if (*(v23 + 56) && *(v23 + 64) > 0x3FuLL)
    {
      memcpy(v14 + 48, a5, a6);
      v24 = malloc_type_malloc(0x30uLL, 0x4948DE8CuLL);
      if (v24)
      {
        v25 = v24;
        *v24 = *(v15 + 11);
        v26 = *(*(v6 + 232) + 56);
        v27 = v26[1];
        v24[1] = *v26;
        v24[2] = v27;
        sub_100026D64(v24, 0x30uLL, 0, v14 + 48, a6);
        free(v25);
        *v14 = *(*(a1 + 16) + 76);
        v14[1] = 3;
        *(v14 + 1) = bswap32(a6 + 44) >> 16;
        sub_10000DA48((*(*(v6 + 232) + 56) + 32), 0x20uLL, v14, a6 + 48, v14 + 2);
        v39 = *(v6 + 220);
        v40 = *(v6 + 221);
        v37 = *(v6 + 218);
        v38 = *(v6 + 219);
        v36 = *(v6 + 217);
        sub_100016A20(1, "IEEE 802.1X: Sending EAPOL-Key to %02x:%02x:%02x:%02x:%02x:%02x (%s index=%d)", v28, v29, v30, v31, v32, v33, *(v6 + 216));
        sub_100020F64(a1, a2, 3, v15, a6 + 44);
        v34 = *(a2 + 88);
        if (v34)
        {
          ++*(v34 + 176);
        }

        goto LABEL_12;
      }

      v22 = "Could not encrypt key";
    }

    else
    {
      v22 = "No eapKeyData available for encrypting and signing EAPOL-Key";
    }
  }

  sub_100016A20(4, v22, v16, v17, v18, v19, v20, v21, v35);
LABEL_12:

  free(v14);
}

const char *sub_10001FADC(uint64_t a1)
{
  v1 = *(*(*a1 + 40) + 40);
  v2 = "802.11b";
  if (v1 == 1)
  {
    v2 = "802.11g";
  }

  if (v1 == 2)
  {
    return "802.11a";
  }

  else
  {
    return v2;
  }
}

uint64_t sub_10001FB14(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 64);
  if (v2 < 1)
  {
    return 0;
  }

  LOBYTE(result) = 0;
  v4 = (a2 + 32);
  do
  {
    v5 = *v4++;
    v6 = v5 & 0x7F;
    if (v6 <= result)
    {
      result = result;
    }

    else
    {
      result = v6;
    }

    --v2;
  }

  while (v2);
  return result;
}

void sub_10001FB50(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v13 = *(a1 + 16);
  if (!v13[18] && !v13[121] && !v13[187])
  {
    return;
  }

  v59 = a2[4];
  v60 = a2[5];
  v57 = a2[2];
  v58 = a2[3];
  v54 = *a2;
  v56 = a2[1];
  sub_100016A20(1, "IEEE 802.1X: %lu bytes from %02x:%02x:%02x:%02x:%02x:%02x", a3, a4, a5, a6, a7, a8, a4);
  v14 = sub_100004A40(a1, a2);
  if (!v14 || (v21 = v14, (*(v14 + 24) & 2) == 0))
  {

    sub_100016A20(1, "IEEE 802.1X data frame from not associated STA", v15, v16, v17, v18, v19, v20, a9);
    return;
  }

  if (a4 <= 3)
  {

    puts("   too short IEEE 802.1X packet");
    return;
  }

  v22 = bswap32(*(a3 + 1)) >> 16;
  v55 = a3[1];
  sub_100016A20(1, "   IEEE 802.1X: version=%d type=%d length=%d", v15, v16, v17, v18, v19, v20, *a3);
  if (a4 - 4 < v22)
  {
    puts("   frame too short for this IEEE 802.1X packet");
    v29 = *(v21 + 88);
    if (v29)
    {
      ++*(v29 + 208);
    }

    return;
  }

  if (a4 - 4 > v22)
  {
    sub_100016A20(1, "   ignoring %lu extra octets after IEEE 802.1X packet", v23, v24, v25, v26, v27, v28, a4 - 4 - v22);
  }

  v30 = *(v21 + 88);
  if (v30)
  {
    *(v30 + 212) = *a3;
    ++*(v30 + 172);
  }

  if (v22 >= 0x2C && a3[1] == 3)
  {
    v31 = a3[4];
    if (v31 == 254 || v31 == 2)
    {
      v32 = *(a1 + 2624);
      v33 = *(v21 + 168);

      sub_100007BEC(v32, v33, a3, v22 + 4, v25, v26, v27, v28);
      return;
    }
  }

  if (!*(*(a1 + 16) + 72) && (*(v21 + 25) & 0x30) == 0)
  {
    return;
  }

  v34 = sub_1000090C8(*(v21 + 168));
  if (v34 == 2 || v34 == 64 || v34 == 256 || sub_1000090C8(*(v21 + 168)) == 1024)
  {
    return;
  }

  if (!*(v21 + 88))
  {
    v41 = sub_10001FF64(a1, v21);
    *(v21 + 88) = v41;
    if (!v41)
    {
      return;
    }

    *(*(v41 + 232) + 16) = 1;
  }

  v42 = a3[1];
  if (v42 <= 1)
  {
    if (!a3[1])
    {
      sub_10001FFE8(a1, v21, a3 + 4, v22, v37, v38, v39, v40, v52);
      goto LABEL_53;
    }

    if (v42 == 1)
    {
      sub_100016EE4(a1, (v21 + 16), 2, 1, "received EAPOL-Start from STA", v38, v39, v40, v52);
      *(*(v21 + 88) + 224) &= ~2u;
      v44 = sub_100009110(*(v21 + 168));
      if (v44)
      {
        v48 = v44;
        sub_100016EE4(a1, (v21 + 16), 8, 1, "cached PMKSA available - ignore it since STA sent EAPOL-Start", v45, v46, v47, v53);
        sub_1000090E8(*(v21 + 168), v48);
      }

      v49 = *(v21 + 88);
      *(v49 + 41) = 1;
      ++*(v49 + 180);
      sub_1000089A4(*(v21 + 168), 5);
      goto LABEL_53;
    }

    goto LABEL_52;
  }

  switch(v42)
  {
    case 2u:
      sub_100016EE4(a1, (v21 + 16), 2, 1, "received EAPOL-Logoff from STA", v38, v39, v40, v52);
      *(v21 + 124) = 1;
      v50 = *(v21 + 88);
      *(v50 + 40) = 1;
      ++*(v50 + 184);
      break;
    case 3u:
      sub_100016A20(1, "   EAPOL-Key", v35, v36, v37, v38, v39, v40, v52);
      if ((*(v21 + 24) & 0x20) == 0)
      {
        v43 = "   Dropped key data from unauthorized Supplicant";
        goto LABEL_50;
      }

      break;
    case 4u:
      v43 = "   EAPOL-Encapsulated-ASF-Alert";
LABEL_50:
      sub_100016A20(1, v43, v35, v36, v37, v38, v39, v40, v52);
      break;
    default:
LABEL_52:
      sub_100016A20(1, "   unknown IEEE 802.1X packet type", v35, v36, v37, v38, v39, v40, v52);
      ++*(*(v21 + 88) + 204);
      break;
  }

LABEL_53:
  v51 = *(v21 + 88);

  sub_10001C058(v51);
}

uint64_t sub_10001FF64(uint64_t a1, uint64_t a2)
{
  v4 = (*(a2 + 24) >> 8) & 1;
  v5 = *(a2 + 168);
  if (v5)
  {
    if (sub_100009110(v5))
    {
      v4 |= 4u;
    }

    if (sub_100009110(*(a2 + 168)))
    {
      v4 |= 8u;
    }
  }

  v6 = *(a1 + 2632);
  v7 = *(a2 + 248);

  return sub_10001BC4C(v6, (a2 + 16), v4, v7, a2);
}

uint64_t sub_10001FFE8(uint64_t a1, uint64_t a2, unsigned __int8 *a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (a4 <= 3)
  {
    v9 = "   too short EAP packet";
LABEL_3:

    return puts(v9);
  }

  v15 = *(a3 + 1);
  v16 = __rev16(v15);
  v34 = a3[1];
  sub_100016A20(1, "EAP: code=%d identifier=%d length=%d", a3, a4, a5, a6, a7, a8, *a3);
  if (v16 > 3)
  {
    if (a4 >= v16)
    {
      if (a4 > v16)
      {
        sub_100016A20(1, "   Ignoring %lu extra bytes after EAP packet", v17, v18, v19, v20, v21, v22, a4 - v16);
      }

      v24 = *a3;
      if (v24 > 2)
      {
        if (v24 == 3)
        {
          v23 = " (success)";
          goto LABEL_10;
        }

        if (v24 == 4)
        {
          v23 = " (failure)";
          goto LABEL_10;
        }
      }

      else
      {
        if (v24 == 1)
        {
          v23 = " (request)";
          goto LABEL_10;
        }

        if (v24 == 2)
        {
          result = sub_100016A20(1, " (response)", v17, v18, v19, v20, v21, v22, v33);
          v25 = *(a2 + 88);
          if (!v25)
          {
            return result;
          }

          if (v15 != 1024)
          {
            v26 = a3[4];
            *(v25 + 281) = v26;
            v27 = *a3;
            v28 = a3[1];
            v29 = bswap32(*(a3 + 1)) >> 16;
            sub_10002128C(0, v26);
            sub_100016EE4(a1, (v25 + 216), 2, 1, "received EAP packet (code=%d id=%d len=%d) from STA: EAP Response-%s (%d)", v30, v31, v32, v27);
            ++*(v25 + 192);
            sub_1000171F8(*(*(v25 + 232) + 8));
            result = sub_10001712C(a3, v16);
            *(*(v25 + 232) + 8) = result;
            *(v25 + 23) = 1;
            return result;
          }

          v9 = "handle_eap_response: too short response data";
          goto LABEL_3;
        }
      }

      v23 = " (unknown code)";
      goto LABEL_10;
    }

    v23 = "   Too short frame to contain this EAP packet";
  }

  else
  {
    v23 = "   Invalid EAP length";
  }

LABEL_10:

  return sub_100016A20(1, v23, v17, v18, v19, v20, v21, v22, a9);
}

void sub_100020210(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (*(*(a1 + 16) + 72))
  {
    v11 = sub_1000090C8(*(a2 + 168));
    if (v11 != 2 && v11 != 64 && v11 != 256 && sub_1000090C8(*(a2 + 168)) != 1024)
    {
      v15 = *(a2 + 88);
      v16 = v15;
      if (v15 || (sub_100016EE4(a1, (a2 + 16), 2, 1, "start authentication", v12, v13, v14, v35), v16 = sub_10001FF64(a1, a2), (*(a2 + 88) = v16) != 0))
      {
        *(*(v16 + 232) + 16) = 1;
        v20 = sub_100009110(*(a2 + 168));
        if (v20)
        {
          v24 = v20;
          sub_100016EE4(a1, (a2 + 16), 2, 1, "PMK from PMKSA cache - skip IEEE 802.1X/EAP", v21, v22, v23, v35);
          v31 = *(a2 + 88);
          *(v31 + 26) = 1;
          *(*(v31 + 232) + 72) = 1;
          *(v31 + 36) = 3;
          *(v31 + 104) = 2;
          *(v31 + 22) = 1;
          v32 = *(v31 + 336);
          if (v32)
          {
            sub_10001E794(v32);
            v31 = *(a2 + 88);
          }

          v33 = *(a2 + 200);
          sub_100004144(v24, v31, v25, v26, v27, v28, v29, v30);
          if (!*(*(a2 + 184) + 192))
          {
            *(a2 + 200) = 0;
          }

          sub_100003C4C();
        }

        else
        {
          v34 = *(a2 + 88);
          if (v15)
          {
            *(v34 + 33) = 1;
          }

          sub_10001C058(v34);
        }
      }

      else
      {

        sub_100016EE4(a1, (a2 + 16), 2, 2, "failed to allocate state machine", v17, v18, v19, a9);
      }
    }
  }
}

void sub_1000203E4(uint64_t a1)
{
  v1 = *(a1 + 88);
  if (v1)
  {
    *(a1 + 88) = 0;
    free(*(v1 + 264));

    sub_10001BE4C(v1, v2, v3, v4, v5, v6, v7, v8);
  }
}

void sub_100020434(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a2 + 88);
  if (v8)
  {
    sub_100016EE4(a1, (a2 + 16), 2, 1, "aborting authentication", a6, a7, a8, v16);
    v15 = *(v8 + 232);
    if (*(v15 + 40))
    {
      *(v15 + 16) = 0;

      sub_100005AB4(a1, a2, a2 + 16, 2, v11, v12, v13, v14);
    }
  }
}

uint64_t sub_1000204C0(uint64_t a1)
{
  v39 = 0;
  v41 = a1;
  v2 = *(a1 + 16);
  v3 = *(v2 + 484);
  v29[0] = *(v2 + 416);
  v29[1] = v3;
  v4 = *(v2 + 80);
  v29[2] = *(v2 + 400);
  v29[3] = v4;
  v5 = *(a1 + 2576);
  v30 = *(a1 + 2680);
  v31 = v5;
  v6 = *(v2 + 368);
  v7 = *(v2 + 376);
  v32 = *(a1 + 2688);
  v33 = v6;
  v35 = *(v2 + 616);
  v8 = *(v2 + 632);
  v34 = v7;
  v36 = v8;
  v37 = *(v2 + 640);
  v38 = *(v2 + 648);
  LODWORD(v39) = *(v2 + 664);
  v40 = *(a1 + 2720);
  *&v20 = sub_1000206AC;
  *(&v20 + 1) = nullsub_3;
  v21 = sub_1000206B4;
  v22 = sub_100020744;
  v23 = sub_1000207F8;
  v24 = sub_100020820;
  v25 = sub_10002086C;
  v26 = sub_100020870;
  v27 = sub_100020874;
  v28 = sub_100020878;
  v9 = sub_10001C0EC(v29, &v20);
  *(a1 + 2632) = v9;
  if (!v9)
  {
    return 0xFFFFFFFFLL;
  }

  v10 = *(a1 + 16);
  if (*(v10 + 72) || *(v10 + 484))
  {
    if ((*(a1 + 2448))(a1))
    {
      return 0xFFFFFFFFLL;
    }

    v10 = *(a1 + 16);
  }

  if (*(v10 + 392))
  {
    v12 = 0;
    do
    {
      (*(a1 + 2416))(*(a1 + 16), a1, 0, 0, v12, 0, 0, 0, 0, 0);
      v12 = (v12 + 1);
    }

    while (v12 != 4);
    sub_10002089C(a1, v13, v14, v15, v16, v17, v18, v19);
    if (!*(*(a1 + 2632) + 208))
    {
      return 0xFFFFFFFFLL;
    }
  }

  return 0;
}

void sub_1000206B4(uint64_t a1, uint64_t a2, int a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (!a4)
  {
    v10 = *(a2 + 88);
    if (v10)
    {
      if (a3)
      {
        v11 = *(v10 + 232);
        v12 = *(v11 + 56);
        if (v12)
        {
          if (*(v11 + 64) >= 0x20uLL && !sub_100009140(*(a2 + 168), v12, 43200, v10))
          {

            sub_100016EE4(a1, (a2 + 16), 8, 1, "Added PMKSA cache entry (IEEE 802.1X)", v14, v15, v16, a9);
          }
        }
      }
    }
  }
}

uint64_t sub_100020744(uint64_t a1, void *a2, size_t a3, int a4, uint64_t a5)
{
  v7 = sub_1000014F8(*(a1 + 16), a2, a3, a4);
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    *(a5 + 64) = 0u;
    *(a5 + 80) = 0u;
    *(a5 + 32) = 0u;
    *(a5 + 48) = 0u;
    *a5 = 0u;
    *(a5 + 16) = 0u;
    *(a5 + 84) = a4;
    do
    {
      *(a5 + v9 * 8) = v7[v9 + 3];
      ++v9;
    }

    while (v9 != 8);
    if (!v7[11])
    {
      goto LABEL_7;
    }

    v10 = malloc_type_malloc(v7[12], 0x22AD71FDuLL);
    *(a5 + 64) = v10;
    if (v10)
    {
      memcpy(v10, v8[11], v8[12]);
      *(a5 + 72) = v8[12];
LABEL_7:
      result = 0;
      v12 = *(v8 + 29);
      *(a5 + 88) = *(v8 + 27);
      *(a5 + 92) = v12;
      return result;
    }
  }

  return 0xFFFFFFFFLL;
}

uint64_t sub_1000207F8(uint64_t a1, uint64_t a2)
{
  result = sub_100004A40(a1, a2);
  if (result)
  {
    return *(result + 88) != 0;
  }

  return result;
}

void sub_100020820(uint64_t a1, unsigned __int8 *a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a3 == 1)
  {
    LODWORD(v8) = 2;
  }

  else
  {
    LODWORD(v8) = 1;
  }

  if (a3 == 2)
  {
    v8 = 4;
  }

  else
  {
    v8 = v8;
  }

  sub_100016EE4(a1, a2, 2, v8, "%s", a6, a7, a8, a4);
}

uint64_t sub_100020878(uint64_t a1, uint64_t a2, int a3)
{
  if (a3 == 1)
  {
    return sub_1000089A4(*(a2 + 168), 5);
  }

  if (!a3)
  {
    return sub_100008AAC(*(a2 + 168));
  }

  return result;
}

void sub_10002089C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(a1 + 2632);
  v10 = *(v9 + 216);
  if (v10 < 3)
  {
    v11 = v10 + 1;
  }

  else
  {
    v11 = *(*(a1 + 16) + 400) > 0;
  }

  *(v9 + 216) = v11;
  sub_100016A20(1, "IEEE 802.1X: New default WEP key index %d", a3, a4, a5, a6, a7, a8, v11);
  if (*(*(a1 + 16) + 392))
  {
    v12 = *(a1 + 2632);
    free(*(v12 + 208));
    v13 = malloc_type_malloc(*(*(a1 + 16) + 392), 0x29347550uLL);
    *(v12 + 208) = v13;
    if (!v13 || sub_1000164A4(v13, *(*(a1 + 16) + 392)))
    {
      puts("Could not generate random WEP key.");
      free(*(v12 + 208));
      *(v12 + 208) = 0;
      v17 = "failed to generate a new broadcast key";
LABEL_11:
      sub_100016EE4(a1, 0, 2, 4, v17, v14, v15, v16, v21);
      free(*(v9 + 208));
      *(v9 + 208) = 0;
      return;
    }

    sub_100016B64(1, "IEEE 802.1X: New default WEP key", *(v12 + 208), *(*(a1 + 16) + 392));
    v18 = *(*(a1 + 16) + 392);
  }

  v19 = *(v9 + 216);
  v21 = *(v9 + 208);
  if ((*(a1 + 2416))())
  {
    v17 = "failed to configure a new broadcast key";
    goto LABEL_11;
  }

  sub_1000049E4(a1, sub_100021070, 0);
  v20 = *(*(a1 + 16) + 404);
  if (v20 >= 1)
  {

    sub_100026404(v20, 0, sub_10002089C, a1, 0);
  }
}

void sub_100020A60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_10002662C(sub_10002089C, a1, 0, a4, a5, a6, a7, a8);
  if (*(a1 + 2352))
  {
    v9 = *(a1 + 16);
    if (*(v9 + 72) || *(v9 + 484))
    {
      (*(a1 + 2448))(a1);
    }
  }

  sub_10001C280(*(a1 + 2632));
  *(a1 + 2632) = 0;
}

uint64_t sub_100020AD4(uint64_t a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a2)
  {
    return 0xFFFFFFFFLL;
  }

  if (a4 < 0x24 || *(a3 + 24) ^ 0x3AAAA | *(a3 + 28) || bswap32(*(a3 + 30)) >> 16 != 34958)
  {
    return 0;
  }

  v10 = a5;
  v12 = a2 + 16;
  v27 = bswap32(*(a3 + 34)) >> 16;
  v25 = *(a3 + 32);
  v26 = *(a3 + 33);
  v23 = a2[20];
  v24 = a2[21];
  v21 = a2[18];
  v22 = a2[19];
  v13 = 1;
  v19 = a2[17];
  sub_100016A20(1, "IEEE 802.1X: %02x:%02x:%02x:%02x:%02x:%02x TX status - version=%d type=%d length=%d - ack=%d", a3, a4, a5, a6, a7, a8, a2[16]);
  if (a4 >= 80 && !v10 && *(a3 + 33) == 3)
  {
    v17 = "uni";
    if (*(a3 + 63) >= 0)
    {
      v17 = "broad";
    }

    v20 = *(a3 + 63) & 0x7F;
    sub_100016EE4(a1, v12, 2, 1, "did not Ack EAPOL-Key frame (%scast index=%d)", v14, v15, v16, v17);
  }

  return v13;
}

uint64_t sub_100020C1C(uint64_t result, void *a2)
{
  if (result)
  {
    v2 = result;
    result = *(result + 264);
    if (result)
    {
      *a2 = *(v2 + 272);
    }
  }

  return result;
}

uint64_t sub_100020C38(uint64_t result, void *a2, int a3)
{
  if (result)
  {
    v3 = *(result + 288);
    if (v3 && *(result + 296) > a3)
    {
      v4 = (v3 + 16 * a3);
      result = *v4;
      *a2 = v4[1];
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_100020C68(uint64_t result, void *a2)
{
  if (result)
  {
    v2 = *(result + 232);
    result = *(v2 + 56);
    *a2 = *(v2 + 64);
  }

  return result;
}

uint64_t sub_100020C7C(uint64_t a1, int a2)
{
  if (a1)
  {
    *(*(a1 + 232) + 16) = a2 != 0;
    return sub_10001C058(a1);
  }

  return a1;
}

uint64_t sub_100020C98(uint64_t a1, int a2)
{
  if (a1)
  {
    *(a1 + 32) = a2 != 0;
    return sub_10001C058(a1);
  }

  return a1;
}

uint64_t sub_100020CB0(uint64_t result, int a2)
{
  if (result)
  {
    v2 = *(result + 224) & 0xFFFFFFFE;
    if (a2)
    {
      ++v2;
    }

    *(result + 224) = v2;
  }

  return result;
}

uint64_t sub_100020CCC(int a1, uint64_t a2, char *__str, size_t __size)
{
  v4 = *(a2 + 88);
  if (!v4)
  {
    return 0;
  }

  v8 = snprintf(__str, __size, "dot1xPaePortNumber=%d\ndot1xPaePortProtocolVersion=%d\ndot1xPaePortCapabilities=1\ndot1xPaePortInitialize=%d\ndot1xPaePortReauthenticate=FALSE\n", *(a2 + 22), 2, *(v4 + 24));
  if ((v8 & 0x80000000) != 0)
  {
    return 0;
  }

  v9 = v8;
  if (__size <= v8)
  {
    return 0;
  }

  v10 = __size - v8;
  v11 = "TRUE";
  if (*(v4 + 140))
  {
    v12 = "TRUE";
  }

  else
  {
    v12 = "FALSE";
  }

  if (!*(v4 + 27))
  {
    v11 = "FALSE";
  }

  v13 = snprintf(&__str[v8], __size - v8, "dot1xAuthPaeState=%d\ndot1xAuthBackendAuthState=%d\ndot1xAuthAdminControlledDirections=%d\ndot1xAuthOperControlledDirections=%d\ndot1xAuthAuthControlledPortStatus=%d\ndot1xAuthAuthControlledPortControl=%d\ndot1xAuthQuietPeriod=%u\ndot1xAuthServerTimeout=%u\ndot1xAuthReAuthPeriod=%u\ndot1xAuthReAuthEnabled=%s\ndot1xAuthKeyTxEnabled=%s\n", *(v4 + 36) + 1, *(v4 + 104) + 1, *(v4 + 160), *(v4 + 164), *(v4 + 16), *(v4 + 28), *(v4 + 52), *(v4 + 108), *(v4 + 136), v12, v11);
  if ((v13 & 0x80000000) == 0 && v10 > v13)
  {
    v9 = v13 + v9;
    v14 = snprintf(&__str[v9], __size - v9, "dot1xAuthEapolFramesRx=%u\ndot1xAuthEapolFramesTx=%u\ndot1xAuthEapolStartFramesRx=%u\ndot1xAuthEapolLogoffFramesRx=%u\ndot1xAuthEapolRespIdFramesRx=%u\ndot1xAuthEapolRespFramesRx=%u\ndot1xAuthEapolReqIdFramesTx=%u\ndot1xAuthEapolReqFramesTx=%u\ndot1xAuthInvalidEapolFramesRx=%u\ndot1xAuthEapLengthErrorFramesRx=%u\ndot1xAuthLastEapolFrameVersion=%u\ndot1xAuthLastEapolFrameSource=%02x:%02x:%02x:%02x:%02x:%02x\n", *(v4 + 172), *(v4 + 176), *(v4 + 180), *(v4 + 184), *(v4 + 188), *(v4 + 192), *(v4 + 196), *(v4 + 200), *(v4 + 204), *(v4 + 208), *(v4 + 212), *(v4 + 216), *(v4 + 217), *(v4 + 218), *(v4 + 219), *(v4 + 220), *(v4 + 221));
    if ((v14 & 0x80000000) == 0 && __size - v9 > v14)
    {
      v15 = v14 + v9;
      v16 = snprintf(&__str[v15], __size - v15, "dot1xAuthEntersConnecting=%u\ndot1xAuthEapLogoffsWhileConnecting=%u\ndot1xAuthEntersAuthenticating=%u\ndot1xAuthAuthSuccessesWhileAuthenticating=%u\ndot1xAuthAuthTimeoutsWhileAuthenticating=%u\ndot1xAuthAuthFailWhileAuthenticating=%u\ndot1xAuthAuthEapStartsWhileAuthenticating=%u\ndot1xAuthAuthEapLogoffWhileAuthenticating=%u\ndot1xAuthAuthReauthsWhileAuthenticated=%u\ndot1xAuthAuthEapStartsWhileAuthenticated=%u\ndot1xAuthAuthEapLogoffWhileAuthenticated=%u\ndot1xAuthBackendResponses=%u\ndot1xAuthBackendAccessChallenges=%u\ndot1xAuthBackendOtherRequestsToSupplicant=%u\ndot1xAuthBackendAuthSuccesses=%u\ndot1xAuthBackendAuthFails=%u\n", *(v4 + 60), *(v4 + 64), *(v4 + 68), *(v4 + 72), *(v4 + 76), *(v4 + 80), *(v4 + 84), *(v4 + 88), *(v4 + 92), *(v4 + 96), *(v4 + 100), *(v4 + 112), *(v4 + 116), *(v4 + 120), *(v4 + 124), *(v4 + 128));
      if ((v16 & 0x80000000) != 0)
      {
        return v15;
      }

      else
      {
        v9 = v15;
        if (__size - v15 > v16)
        {
          v17 = v16 + v15;
          v18 = __size - v17;
          v19 = *(a2 + 104);
          v20 = *(a2 + 108);
          v21 = sub_1000090C8(*(a2 + 168));
          v22 = 1;
          if (v21 != 1 && v21 != 32)
          {
            if (v21 == 128)
            {
              v22 = 1;
            }

            else
            {
              v22 = 2;
            }
          }

          v23 = time(0);
          v24 = snprintf(&__str[v17], v18, "dot1xAuthSessionId=%08X-%08X\ndot1xAuthSessionAuthenticMethod=%d\ndot1xAuthSessionTime=%u\ndot1xAuthSessionTerminateCause=999\ndot1xAuthSessionUserName=%s\n", v19, v20, v22, v23 - *(a2 + 112), *(v4 + 264));
          if (v18 <= v24 || v24 <= -1)
          {
            v26 = 0;
          }

          else
          {
            v26 = v24;
          }

          return (v26 + v17);
        }
      }
    }
  }

  return v9;
}

void sub_100020F64(uint64_t a1, uint64_t a2, char a3, const void *a4, size_t a5)
{
  v10 = a5 + 4;
  v11 = sub_100016754(a5 + 4);
  if (v11)
  {
    v18 = v11;
    *v11 = *(*(a1 + 16) + 76);
    v11[1] = a3;
    *(v11 + 1) = bswap32(a5) >> 16;
    if (a4 && a5)
    {
      memcpy(v11 + 4, a4, a5);
    }

    v19 = sub_1000090AC(*(a2 + 168));
    if ((*(a2 + 25) & 1) == 0)
    {
      (*(a1 + 2384))(a1, a2 + 16, v18, v10, v19);
    }

    free(v18);
  }

  else
  {
    sub_100016A20(4, "malloc() failed for ieee802_1x_send(len=%lu)", v12, v13, v14, v15, v16, v17, v10);
  }
}

uint64_t sub_100021070(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 88);
  if (v2)
  {
    *(*(v2 + 232) + 72) = 1;
    sub_10001C058(v2);
  }

  return 0;
}

uint64_t sub_1000210A4(int a1, int a2)
{
  for (result = qword_100040410; result; result = *(result + 112))
  {
    if (*result == a1 && *(result + 4) == a2)
    {
      break;
    }
  }

  return result;
}

uint64_t sub_1000210D8(char *__s2, _DWORD *a2)
{
  v3 = qword_100040410;
  if (qword_100040410)
  {
    while (strcmp(*(v3 + 8), __s2))
    {
      v3 = *(v3 + 112);
      if (!v3)
      {
        goto LABEL_4;
      }
    }

    *a2 = *v3;
    return *(v3 + 4);
  }

  else
  {
LABEL_4:
    result = 0;
    *a2 = 0;
  }

  return result;
}

_DWORD *sub_100021140(int a1, int a2, int a3, uint64_t a4)
{
  result = sub_100016754(0x80uLL);
  if (result)
  {
    result[26] = a1;
    *result = a2;
    result[1] = a3;
    *(result + 1) = a4;
  }

  return result;
}

uint64_t sub_100021190(uint64_t a1)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  v2 = *(a1 + 8);
  if (!v2 || *(a1 + 104) != 1)
  {
    return 0xFFFFFFFFLL;
  }

  v3 = &qword_100040410;
  v4 = qword_100040410;
  if (qword_100040410)
  {
    v5 = *a1;
    while (1)
    {
      v6 = v4;
      if (*v4 == v5 && *(v4 + 4) == *(a1 + 4))
      {
        return 4294967294;
      }

      if (!strcmp(*(v4 + 8), v2))
      {
        return 4294967294;
      }

      v4 = *(v6 + 112);
      if (!v4)
      {
        v3 = (v6 + 112);
        goto LABEL_11;
      }
    }
  }

  else
  {
LABEL_11:
    result = 0;
    *v3 = a1;
  }

  return result;
}

void *sub_100021244()
{
  while (1)
  {
    result = qword_100040410;
    if (!qword_100040410)
    {
      break;
    }

    qword_100040410 = *(qword_100040410 + 112);
    v1 = result[12];
    if (v1)
    {
      v1();
    }

    else
    {
      free(result);
    }
  }

  return result;
}

uint64_t sub_10002128C(int a1, int a2)
{
  v2 = qword_100040410;
  if (!qword_100040410)
  {
    return 0;
  }

  while (*v2 != a1 || *(v2 + 4) != a2)
  {
    v2 = *(v2 + 112);
    if (!v2)
    {
      return 0;
    }
  }

  return *(v2 + 8);
}

uint64_t sub_1000212C8()
{
  v0 = sub_100021140(1, 0, 1, "Identity");
  if (!v0)
  {
    return 0xFFFFFFFFLL;
  }

  v1 = v0;
  v0[2] = sub_1000213A4;
  v0[3] = sub_1000213C8;
  v0[4] = sub_1000213F4;
  v0[5] = sub_1000213FC;
  v0[7] = sub_1000214D4;
  v0[8] = sub_100021524;
  v0[9] = sub_100021618;
  v0[11] = sub_100021628;
  v2 = sub_100021190(v0);
  if (v2)
  {
    j__free(v1);
  }

  return v2;
}

_DWORD *sub_1000213A4()
{
  result = sub_100016754(8uLL);
  if (result)
  {
    *result = 0;
  }

  return result;
}

double sub_1000213C8()
{
  v0 = sub_100016754(8uLL);
  if (v0)
  {
    result = COERCE_DOUBLE(&_mh_execute_header);
    *v0 = &_mh_execute_header;
  }

  return result;
}

unint64_t *sub_1000213FC(uint64_t a1, _DWORD *a2, char a3)
{
  v19 = 0;
  v5 = *(*(a1 + 232) + 8);
  if (!v5)
  {
    v14 = sub_10000F850(0, 1u, 0, 1, a3);
    if (v14)
    {
      return v14;
    }

LABEL_6:
    sub_100016A20(4, "EAP-Identity: Failed to allocate memory for request", v8, v9, v10, v11, v12, v13, v18);
    v14 = 0;
    *a2 = 2;
    return v14;
  }

  v6 = v5(*(a1 + 216), &v19);
  v7 = sub_10000F850(0, 1u, v19, 1, a3);
  if (!v7)
  {
    goto LABEL_6;
  }

  v14 = v7;
  if (v6)
  {
    v15 = v19;
    v16 = sub_10001723C(v7, v19, v8, v9, v10, v11, v12, v13);
    memcpy(v16, v6, v15);
  }

  return v14;
}

uint64_t sub_1000214D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v17 = 0;
  v14 = sub_10000F758(0, 1, a3, &v17, a5, a6, a7, a8);
  result = 0;
  if (!v14)
  {
    sub_100016A20(2, "EAP-Identity: Invalid frame", v8, v9, v10, v11, v12, v13, v16);
    return 1;
  }

  return result;
}

unsigned __int8 *sub_100021524(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2[1])
  {
    if (sub_1000214D4(a1, a2, a3, a4, a5, a6, a7, a8))
    {
      result = sub_100016A20(1, "EAP-Identity: failed to pick up already started negotiation", v11, v12, a5, a6, a7, a8, v18);
LABEL_13:
      v17 = 2;
      goto LABEL_14;
    }

    a2[1] = 0;
  }

  __n = 0;
  result = sub_10000F758(0, 1, a3, &__n, a5, a6, a7, a8);
  if (!result)
  {
    return result;
  }

  v14 = result;
  sub_100016B70(1, "EAP-Identity: Peer identity", result, __n);
  v15 = *(a1 + 248);
  if (v15)
  {
    *(a1 + 305) = 1;
  }

  free(v15);
  if (__n <= 1)
  {
    v16 = 1;
  }

  else
  {
    v16 = __n;
  }

  result = malloc_type_malloc(v16, 0x8A2496DDuLL);
  *(a1 + 248) = result;
  if (!result)
  {
    goto LABEL_13;
  }

  result = memcpy(result, v14, __n);
  *(a1 + 256) = __n;
  v17 = 1;
LABEL_14:
  *a2 = v17;
  return result;
}

uint64_t sub_100021638(unsigned int *a1, unsigned int *a2, _DWORD *a3)
{
  v5 = sub_1000271DC(a1, 16);
  if (!v5)
  {
    return 0xFFFFFFFFLL;
  }

  v6 = v5;
  sub_100027234(v5, a2, a3);
  sub_100027238(v6);
  return 0;
}

uint64_t sub_100021694(FILE *a1, const char *a2, uint64_t a3)
{
  fprintf(a1, "%sEAPOL state machine:\n", a2);
  fprintf(a1, "%s  aWhile=%d quietWhile=%d reAuthWhen=%d\n", a2, *a3, *(a3 + 4), *(a3 + 8));
  if (*(a3 + 12))
  {
    v6 = "TRUE";
  }

  else
  {
    v6 = "FALSE";
  }

  if (*(a3 + 13))
  {
    v7 = "TRUE";
  }

  else
  {
    v7 = "FALSE";
  }

  v8 = *(a3 + 16);
  v9 = "Unknown";
  v10 = "Authorized";
  if (v8 != 1)
  {
    v10 = "Unknown";
  }

  if (v8 == 2)
  {
    v11 = "Unauthorized";
  }

  else
  {
    v11 = v10;
  }

  if (*(a3 + 20))
  {
    v12 = "TRUE";
  }

  else
  {
    v12 = "FALSE";
  }

  if (*(a3 + 21))
  {
    v13 = "TRUE";
  }

  else
  {
    v13 = "FALSE";
  }

  if (*(a3 + 22))
  {
    v14 = "TRUE";
  }

  else
  {
    v14 = "FALSE";
  }

  v15 = *(a3 + 232);
  if (v15[39])
  {
    v16 = "TRUE";
  }

  else
  {
    v16 = "FALSE";
  }

  if (*(a3 + 23))
  {
    v17 = "TRUE";
  }

  else
  {
    v17 = "FALSE";
  }

  if (v15[38])
  {
    v18 = "TRUE";
  }

  else
  {
    v18 = "FALSE";
  }

  if (v15[40])
  {
    v19 = "TRUE";
  }

  else
  {
    v19 = "FALSE";
  }

  if (*(a3 + 24))
  {
    v20 = "TRUE";
  }

  else
  {
    v20 = "FALSE";
  }

  if (v15[72])
  {
    v21 = "TRUE";
  }

  else
  {
    v21 = "FALSE";
  }

  if (*(a3 + 25))
  {
    v22 = "TRUE";
  }

  else
  {
    v22 = "FALSE";
  }

  if (*(a3 + 26))
  {
    v23 = "TRUE";
  }

  else
  {
    v23 = "FALSE";
  }

  if (*(a3 + 27))
  {
    v24 = "TRUE";
  }

  else
  {
    v24 = "FALSE";
  }

  v25 = *(a3 + 28) - 1;
  if (v25 <= 2)
  {
    v9 = off_10003CBB8[v25];
  }

  if (v15[16])
  {
    v26 = "TRUE";
  }

  else
  {
    v26 = "FALSE";
  }

  if (*(a3 + 32))
  {
    v27 = "TRUE";
  }

  else
  {
    v27 = "FALSE";
  }

  if (*(a3 + 33))
  {
    v28 = "TRUE";
  }

  else
  {
    v28 = "FALSE";
  }

  fprintf(a1, "%s  authAbort=%s authFail=%s authPortStatus=%s authStart=%s\n%s  authTimeout=%s authSuccess=%s eapFail=%s eapolEap=%s\n%s  eapSuccess=%s eapTimeout=%s initialize=%s keyAvailable=%s\n%s  keyDone=%s keyRun=%s keyTxEnabled=%s portControl=%s\n%s  portEnabled=%s portValid=%s reAuthenticate=%s\n", a2, v6, v7, v11, v12, a2, v13, v14, v16, v17, a2, v18, v19, v20, v21, a2, v22, v23, v24, v9, a2, v26, v27, v28);
  v29 = *(a3 + 36);
  if (v29 > 9)
  {
    v30 = "Unknown";
  }

  else
  {
    v30 = off_10003CB68[v29];
  }

  if (*(a3 + 40))
  {
    v31 = "TRUE";
  }

  else
  {
    v31 = "FALSE";
  }

  if (*(a3 + 41))
  {
    v32 = "TRUE";
  }

  else
  {
    v32 = "FALSE";
  }

  if (*(*(a3 + 232) + 24))
  {
    v33 = "TRUE";
  }

  else
  {
    v33 = "FALSE";
  }

  v34 = *(a3 + 44) - 1;
  if (v34 > 2)
  {
    v35 = "Unknown";
  }

  else
  {
    v35 = off_10003CBB8[v34];
  }

  fprintf(a1, "%s  Authenticator PAE:\n%s    state=%s\n%s    eapolLogoff=%s eapolStart=%s eapRestart=%s\n%s    portMode=%s reAuthCount=%d\n%s    quietPeriod=%d reAuthMax=%d\n%s    authEntersConnecting=%d\n%s    authEapLogoffsWhileConnecting=%d\n%s    authEntersAuthenticating=%d\n%s    authAuthSuccessesWhileAuthenticating=%d\n%s    authAuthTimeoutsWhileAuthenticating=%d\n%s    authAuthFailWhileAuthenticating=%d\n%s    authAuthEapStartsWhileAuthenticating=%d\n%s    authAuthEapLogoffWhileAuthenticating=%d\n%s    authAuthReauthsWhileAuthenticated=%d\n%s    authAuthEapStartsWhileAuthenticated=%d\n%s    authAuthEapLogoffWhileAuthenticated=%d\n", a2, a2, v30, a2, v31, v32, v33, a2, v35, *(a3 + 48), a2, *(a3 + 52), *(a3 + 56), a2, *(a3 + 60), a2, *(a3 + 64), a2, *(a3 + 68), a2, *(a3 + 72), a2, *(a3 + 76), a2, *(a3 + 80), a2, *(a3 + 84), a2, *(a3 + 88), a2, *(a3 + 92), a2, *(a3 + 96), a2, *(a3 + 100));
  v36 = *(a3 + 104);
  v37 = "Unknown";
  if (v36 <= 7)
  {
    v37 = off_10003CBD0[v36];
  }

  v38 = *(a3 + 232);
  if (v38[37])
  {
    v39 = "TRUE";
  }

  else
  {
    v39 = "FALSE";
  }

  if (v38[36])
  {
    v40 = "TRUE";
  }

  else
  {
    v40 = "FALSE";
  }

  if (*v38)
  {
    v41 = "TRUE";
  }

  else
  {
    v41 = "FALSE";
  }

  fprintf(a1, "%s  Backend Authentication:\n%s    state=%s\n%s    eapNoReq=%s eapReq=%s eapResp=%s\n%s    serverTimeout=%d\n%s    backendResponses=%d\n%s    backendAccessChallenges=%d\n%s    backendOtherRequestsToSupplicant=%d\n%s    backendAuthSuccesses=%d\n%s    backendAuthFails=%d\n", a2, a2, v37, a2, v39, v40, v41, a2, *(a3 + 108), a2, *(a3 + 112), a2, *(a3 + 116), a2, *(a3 + 120), a2, *(a3 + 124), a2, *(a3 + 128));
  v42 = "REAUTHENTICATE";
  v43 = *(a3 + 132);
  if (v43 != 1)
  {
    v42 = "Unknown";
  }

  if (!v43)
  {
    v42 = "INITIALIZE";
  }

  if (*(a3 + 140))
  {
    v44 = "TRUE";
  }

  else
  {
    v44 = "FALSE";
  }

  fprintf(a1, "%s  Reauthentication Timer:\n%s    state=%s\n%s    reAuthPeriod=%d reAuthEnabled=%s\n", a2, a2, v42, a2, *(a3 + 136), v44);
  v45 = *(a3 + 144);
  v46 = "KEY_TRANSMIT";
  if (v45 != 1)
  {
    v46 = "Unknown";
  }

  if (v45)
  {
    v47 = v46;
  }

  else
  {
    v47 = "NO_KEY_TRANSMIT";
  }

  fprintf(a1, "%s  Authenticator Key Transmit:\n%s    state=%s\n", a2, a2, v47);
  v48 = *(a3 + 148);
  v49 = "KEY_RECEIVE";
  if (v48 != 1)
  {
    v49 = "Unknown";
  }

  if (v48)
  {
    v50 = v49;
  }

  else
  {
    v50 = "NO_KEY_RECEIVE";
  }

  if (*(a3 + 152))
  {
    v51 = "TRUE";
  }

  else
  {
    v51 = "FALSE";
  }

  fprintf(a1, "%s  Key Receive:\n%s    state=%s\n%s    rxKey=%s\n", a2, a2, v50, a2, v51);
  v52 = "IN_OR_BOTH";
  v53 = *(a3 + 156);
  v54 = *(a3 + 160);
  if (v53 != 1)
  {
    v52 = "Unknown";
  }

  if (!v53)
  {
    v52 = "FORCE_BOTH";
  }

  v55 = "In";
  if (v54 == 1)
  {
    v56 = "In";
  }

  else
  {
    v56 = "Unknown";
  }

  if (v54)
  {
    v57 = v56;
  }

  else
  {
    v57 = "Both";
  }

  v58 = *(a3 + 164);
  if (v58 != 1)
  {
    v55 = "Unknown";
  }

  if (!v58)
  {
    v55 = "Both";
  }

  if (*(a3 + 168))
  {
    v59 = "TRUE";
  }

  else
  {
    v59 = "FALSE";
  }

  return fprintf(a1, "%s  Controlled Directions:\n%s    state=%s\n%s    adminControlledDirections=%s operControlledDirections=%s\n%s    operEdge=%s\n", a2, a2, v52, a2, v57, v55, a2, v59);
}

uint64_t start(int a1, char *const *a2)
{
  if (sub_100003C4C())
  {
    return 0xFFFFFFFFLL;
  }

  v107 = 0;
  v108 = 0;
  atomic_fetch_add_explicit(dword_100040418, 1u, memory_order_relaxed);
  vproc_transaction_begin(0);
  v4 = getopt(a1, a2, "BdhKP:tvl");
  if (v4 < 0)
  {
    v105 = 0;
    v106 = 0;
    v8 = optind;
    v9 = a1 - optind;
    v107 = v9;
    v7 = 1;
    goto LABEL_24;
  }

  v5 = 0;
  v105 = 0;
  v6 = 0;
  v106 = 0;
  do
  {
    if (v4 <= 99)
    {
      switch(v4)
      {
        case 'B':
          ++v6;
          break;
        case 'K':
          ++dword_1000404A8;
          break;
        case 'P':
          free(v105);
          v105 = sub_10001652C(optarg);
          break;
        default:
          goto LABEL_92;
      }
    }

    else if (v4 <= 107)
    {
      if (v4 != 100)
      {
        goto LABEL_92;
      }

      ++v106;
      if (dword_100040010 >= 1)
      {
        --dword_100040010;
      }
    }

    else
    {
      switch(v4)
      {
        case 'l':
          v5 = 1;
          fwrite("started..\n", 0xAuLL, 1uLL, __stderrp);
          break;
        case 't':
          ++dword_100040014;
          break;
        case 'v':
          sub_1000222E4();
          exit(1);
        default:
          goto LABEL_92;
      }
    }

    v4 = getopt(a1, a2, "BdhKP:tvl");
  }

  while ((v4 & 0x80000000) == 0);
  v7 = v6 == 0;
  v8 = optind;
  v9 = a1 - optind;
  v107 = v9;
  if (!v5)
  {
LABEL_24:
    if (v8 != a1)
    {
      v10 = 1;
LABEL_26:
      v108 = malloc_type_malloc(8 * v9, 0x2004093837F09uLL);
      if (!v108)
      {
        v17 = "malloc failed\n";
        goto LABEL_32;
      }

      nullsub_2(sub_10002237C);
      if (sub_100003C4C())
      {
        v17 = "Failed to register EAP methods";
LABEL_32:
        sub_100016A20(4, v17, v11, v12, v13, v14, v15, v16, v102);
        return 0xFFFFFFFFLL;
      }

      if (sub_100025DC4())
      {
        v17 = "Failed to initialize event loop";
        goto LABEL_32;
      }

      v103 = v7;
      sub_1000267AC(1, sub_100022628, &v107, v12, v13, v14, v15, v16);
      sub_1000267AC(30, sub_1000226AC, &v107, v19, v20, v21, v22, v23);
      sub_10002680C(sub_100022700, &v107, v24, v25, v26, v27, v28, v29);
      openlog("hostapd", 0, 24);
      if (!v107)
      {
LABEL_81:
        Current = CFRunLoopGetCurrent();
        v92 = sub_1000066C0(Current);
        if (!v103 && (v92 = sub_1000163C0(v105), v92))
        {
          perror("daemon");
        }

        else
        {
          sub_10002689C(v92, v93, v94, v95, v96, v97, v98, v99, v102);
        }

LABEL_84:
        if (v107)
        {
          for (i = 0; i < v107; ++i)
          {
            v101 = *(v108 + i);
            if (!v101)
            {
              break;
            }

            sub_100022304(v101, v50, v30, v31, v32, v33, v34, v35);
          }
        }

        free(v108);
        sub_100026960();
      }

      v36 = 0;
      v37 = "(null)";
      v38 = "Configuration file: %s";
      v104 = v10;
      while (1)
      {
        v39 = "/var/run/hostapd.conf";
        if (v10)
        {
          v39 = (&a2[v36])[optind];
        }

        v40 = (v39 ? v39 : v37);
        sub_100016A20(1, v38, v30, v31, v32, v33, v34, v35, v40);
        v41 = sub_100016754(0x8D0uLL);
        v48 = v41;
        if (v41)
        {
          break;
        }

        sub_100016A20(4, "%s failed", v42, v43, v44, v45, v46, v47, "hostapd_init");
LABEL_77:
        *(v108 + v36) = v48;
        if (!*(v108 + v36))
        {
          goto LABEL_84;
        }

        if (++v36 >= v107)
        {
          goto LABEL_81;
        }
      }

      v41[2] = sub_100002ABC;
      v41[3] = sub_1000174B8;
      if (v39)
      {
        v49 = strdup(v39);
      }

      else
      {
        v49 = 0;
      }

      *(v48 + 32) = v49;
      *(v48 + 2232) = sub_100019F38;
      *(v48 + 2240) = sub_10001A8EC;
      *(v48 + 2248) = sub_100022740;
      v51 = sub_1000174B8(v49);
      if (v51)
      {
        v58 = v51;
        v59 = v38;
        v60 = v37;
        v61 = *(v51 + 16);
        *(v48 + 40) = v51;
        *(v48 + 48) = v61;
        v62 = sub_100016754(8 * v61);
        *(v48 + 56) = v62;
        if (v62)
        {
          if (v58[2])
          {
            v69 = 0;
            v70 = 0;
            do
            {
              v71 = sub_1000038E0(v48, v58, *v58 + v69);
              *(*(v48 + 56) + 8 * v70) = v71;
              if (!v71)
              {
                goto LABEL_72;
              }

              v71[322] = v71;
              ++v70;
              v69 += 760;
            }

            while (v70 < v58[2]);
            v62 = *(v48 + 56);
          }

          *v48 = &v107;
          v72 = *v62;
          v73 = (*v62)[2];
          v37 = v60;
          v38 = v59;
          v10 = v104;
          if (v106 >= 1)
          {
            v74 = *(v73 + 40);
            v75 = v106;
            do
            {
              if (v74)
              {
                *(v73 + 40) = --v74;
              }

              --v75;
            }

            while (v75);
          }

          v76 = v72[294];
          if (v76 && *(v76 + 320))
          {
            v77 = v73 + 736;
            if (!(*(v73 + 737) | *(v73 + 736) | *(v73 + 738) | *(v73 + 739) | *(v73 + 740) | *(v73 + 741)))
            {
              v77 = 0;
            }

            v110 = 0u;
            v111 = 0u;
            v109[0] = v77;
            v109[1] = v73;
            v78 = *(v73 + 192);
            v109[2] = v73 + 152;
            v109[3] = v78;
            v109[4] = *(v73 + 688);
            LODWORD(v110) = *(v73 + 696);
            *&v111 = *(*v72 + 48);
            v79 = sub_100016754(8 * v111);
            *(&v110 + 1) = v79;
            if (v79)
            {
              v80 = *v72;
              if (*(*v72 + 48))
              {
                v81 = 0;
                do
                {
                  v82 = *(*(*(v80 + 56) + 8 * v81) + 16);
                  v84 = *(v82 + 17);
                  v83 = v82 + 17;
                  if (v84)
                  {
                    v79[v81] = v83;
                    v80 = *v72;
                  }

                  ++v81;
                }

                while (v81 < *(v80 + 48));
              }

              *(&v111 + 1) = v72 + 28;
              v72[295] = (*(v72[294] + 320))(v72, v109);
              free(*(&v110 + 1));
              if (v72[295])
              {
                if (!sub_1000034F8(v48))
                {
                  goto LABEL_77;
                }
              }

              else
              {
                sub_100016A20(4, "%s driver initialization failed.", v85, v86, v87, v88, v89, v90, *v72[294]);
                v72[294] = 0;
              }
            }
          }

          else
          {
            sub_100016A20(4, "No hostapd driver wrapper available", v63, v64, v65, v66, v67, v68, v102);
          }

          sub_100022304(v48, v50, v30, v31, v32, v33, v34, v35);
          goto LABEL_76;
        }

LABEL_72:
        sub_100016A20(4, "%s failed", v63, v64, v65, v66, v67, v68, "hostapd_init");
        sub_1000011A4(v58);
        v37 = v60;
        v38 = v59;
        v10 = v104;
      }

      else
      {
        sub_100016A20(4, "%s failed", v52, v53, v54, v55, v56, v57, "hostapd_init");
      }

      free(*(v48 + 32));
      free(*(v48 + 56));
      free(v48);
LABEL_76:
      v48 = 0;
      goto LABEL_77;
    }

LABEL_92:
    sub_1000222AC();
  }

  v9 = 1;
  v107 = 1;
  if (sub_10000654C())
  {
    v10 = 0;
    goto LABEL_26;
  }

  return 0xFFFFFFFFLL;
}

void sub_1000222AC()
{
  sub_1000222E4();
  fwrite("\nusage: hostapd [-hdBKtv] [-P <PID file>] <configuration file(s)>\n\noptions:\n   -h   show this usage\n   -d   show more debug messages (-dd for even more)\n   -B   run daemon in the background\n   -P   PID file\n   -K   include key data in debug messages\n   -t   include timestamps in some debug messages\n   -v   show hostapd version\n", 0x149uLL, 1uLL, __stderrp);
  exit(1);
}

void sub_100022304(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = **(a1 + 56);
  if (v9)
  {
    v10 = *(v9 + 2352);
    v11 = *(v9 + 2360);
    sub_100003A38(a1, a2, a3, a4, a5, a6, a7, a8);
    if (v10)
    {
      v12 = *(v10 + 328);
      if (v12)
      {
        v12(v11);
      }
    }
  }

  else
  {
    sub_100003A38(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  sub_100003B18(a1);
}

void sub_10002237C(uint64_t a1, unsigned __int8 *a2, int a3, unsigned int a4, uint64_t a5, int a6)
{
  v10 = a6 + 100;
  v11 = malloc_type_malloc(v10, 0xE24CCD1DuLL);
  if (!v11)
  {
    return;
  }

  v12 = v11;
  if (a1 && (v13 = *(a1 + 16)) != 0)
  {
    v14 = v13[10];
    v24 = v13[9];
    v16 = v13[11];
    v15 = v13[12];
  }

  else
  {
    v24 = 0;
    v14 = 0;
    v16 = -1;
    v15 = -1;
  }

  if (a3 <= 7)
  {
    if (a3 != 1 && a3 != 2 && a3 != 4)
    {
      goto LABEL_20;
    }

LABEL_22:
    if (!a1)
    {
      goto LABEL_28;
    }

    goto LABEL_23;
  }

  if (a3 > 31)
  {
    if (a3 != 32 && a3 != 64)
    {
      goto LABEL_20;
    }

    goto LABEL_22;
  }

  if (a3 == 8 || a3 == 16)
  {
    goto LABEL_22;
  }

LABEL_20:
  if (!a1)
  {
    goto LABEL_28;
  }

LABEL_23:
  v17 = *(a1 + 16);
  if (a2 && v17)
  {
    v23 = a2[5];
    v19 = a2[3];
    v21 = a2[4];
    snprintf(v11, v10, "%s: STA %02x:%02x:%02x:%02x:%02x:%02x%s%s: %s", v17, *a2, a2[1], a2[2]);
    goto LABEL_31;
  }

  if (!v17)
  {
LABEL_28:
    if (a2)
    {
      v22 = a2[5];
      v20 = a2[4];
      snprintf(v11, v10, "STA %02x:%02x:%02x:%02x:%02x:%02x%s%s: %s", *a2, a2[1], a2[2], a2[3]);
    }

    else
    {
      snprintf(v11, v10, "%s%s%s");
    }

    goto LABEL_31;
  }

  snprintf(v11, v10, "%s:%s%s %s");
LABEL_31:
  if ((v15 & a3) != 0 && v14 <= a4)
  {
    sub_1000169E8();
    puts(v12);
  }

  if ((v16 & a3) != 0 && v24 <= a4)
  {
    if (a4 > 4)
    {
      v18 = 6;
    }

    else
    {
      v18 = dword_10002C8D8[a4];
    }

    syslog(v18, "%s", v12);
  }

  free(v12);
}

uint64_t sub_100022628(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  result = sub_100016A20(1, "Signal %d received - reloading configuration", a3, a4, a5, a6, a7, a8, a1);
  if (*a2)
  {
    v10 = 0;
    do
    {
      result = sub_100002ABC(*(a2[1] + 8 * v10));
      if ((result & 0x80000000) != 0)
      {
        result = sub_100016A20(3, "Failed to read new configuration file - continuing with old.", v11, v12, v13, v14, v15, v16, v17);
      }

      ++v10;
    }

    while (v10 < *a2);
  }

  return result;
}

void sub_1000226AC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*a2)
  {
    v9 = 0;
    do
    {
      if (sub_10001AE7C(*(a2[1] + 8 * v9), 0, a3, a4, a5, a6, a7, a8))
      {
        break;
      }

      ++v9;
    }

    while (v9 < *a2);
  }
}

void sub_100022700(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_100016A20(1, "Signal %d received - terminating", a3, a4, a5, a6, a7, a8, a1);

  sub_1000268F0();
}

uint64_t sub_100022740(void *a1, uint64_t (*a2)(void, uint64_t), uint64_t a3)
{
  if (!*a1)
  {
    return 0;
  }

  v6 = 0;
  while (1)
  {
    result = a2(*(a1[1] + 8 * v6), a3);
    if (result)
    {
      break;
    }

    if (++v6 >= *a1)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1000227B0(uint64_t a1, uint64_t a2, int a3, const ether_addr *a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unint64_t a10)
{
  memset(v46, 0, sizeof(v46));
  v45 = 0u;
  v44 = 0u;
  v43 = 0u;
  v42 = 0u;
  v41 = 0u;
  v40 = 0u;
  v39 = 0u;
  v38[0] = 1;
  if (a10)
  {
    v14 = *(a2 + 824);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      if (a4)
      {
        v15 = ether_ntoa(a4);
      }

      else
      {
        v15 = "ff:ff:ff:ff:ff:ff";
      }

      v30 = 136446978;
      v31 = v15;
      v32 = 1024;
      v33 = a5;
      v34 = 1024;
      v35 = a10;
      v36 = 1024;
      v37 = a3;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Setting key for %{public}s (idx=%d, len=%u) algo %d", &v30, 0x1Eu);
    }
  }

  if (a3 <= 1)
  {
    if (a3)
    {
      if (a3 == 1)
      {
        if (a10 == 5)
        {
          v16 = 1;
        }

        else
        {
          if (a10 != 13)
          {
            return 0xFFFFFFFFLL;
          }

          v16 = 2;
        }

        LODWORD(v39) = v16;
        goto LABEL_29;
      }

      goto LABEL_21;
    }
  }

  else
  {
    if (a3 != 2)
    {
      if (a3 == 3)
      {
LABEL_12:
        a3 = 5;
        goto LABEL_19;
      }

      if (a3 == 4)
      {
        if ((a5 & 0xFFFFFFFE) == 4)
        {
          goto LABEL_12;
        }

        v17 = *(a2 + 824);
        if (!os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
        {
          return 0xFFFFFFFFLL;
        }

        v30 = 67109120;
        LODWORD(v31) = a5;
        v18 = "Wrong key index (%d) for iGTK";
LABEL_25:
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, v18, &v30, 8u);
        return 0xFFFFFFFFLL;
      }

LABEL_21:
      v17 = *(a2 + 824);
      if (!os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        return 0xFFFFFFFFLL;
      }

      v30 = 67109120;
      LODWORD(v31) = a3;
      v18 = "Unknown key type %d";
      goto LABEL_25;
    }

    a3 = 3;
  }

LABEL_19:
  LODWORD(v39) = a3;
  if (a10 > 0x40)
  {
    return 0xFFFFFFFFLL;
  }

LABEL_29:
  v38[1] = a10;
  WORD2(v39) = 12;
  if (!a4)
  {
    WORD4(v44) = -1;
    DWORD1(v44) = -1;
    WORD3(v39) = a5;
    WORD2(v39) = 28;
    if (!a10)
    {
      goto LABEL_39;
    }

    goto LABEL_38;
  }

  if (!a10 || *(a2 + 840) != 2)
  {
LABEL_37:
    DWORD1(v44) = *a4->octet;
    WORD4(v44) = *&a4->octet[4];
    WORD3(v39) = a5;
    if (!a10)
    {
LABEL_39:
      *(a2 + 792) = 3;
      *(a2 + 800) = 148;
      *(a2 + 808) = v38;
      v29 = *(a2 + 816);
      return Apple80211RawSet();
    }

LABEL_38:
    __memcpy_chk();
    goto LABEL_39;
  }

  v20 = 0;
  v21 = 0;
  v22 = 0;
  v23 = (*(a2 + 728) + 28);
  v24 = a4;
  do
  {
    v25 = *v23++;
    v26 = v25 << v20;
    v27 = v24->octet[0];
    v24 = (v24 + 1);
    v22 |= v26;
    v21 |= v27 << v20;
    v20 += 8;
  }

  while (v20 != 48);
  v28 = *(a2 + 824);
  if (v22 > v21)
  {
    if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
    {
      LOWORD(v30) = 0;
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_INFO, "Using authenticator PTK", &v30, 2u);
    }

    goto LABEL_37;
  }

  result = os_log_type_enabled(v28, OS_LOG_TYPE_ERROR);
  if (result)
  {
    sub_100029A0C();
    return 0;
  }

  return result;
}

uint64_t sub_100022B14(uint64_t a1, uint64_t a2)
{
  *(a1 + 792) = 1;
  *(a1 + 800) = 0;
  *(a1 + 808) = a2;
  v3 = *(a1 + 816);
  if ((Apple80211RawGet() & 0x80000000) == 0 && *(a1 + 800) < 0x21u)
  {
    return 0;
  }

  if (os_log_type_enabled(*(a1 + 824), OS_LOG_TYPE_ERROR))
  {
    sub_100029A48();
  }

  return 0xFFFFFFFFLL;
}

uint64_t sub_100022B8C(uint64_t a1, _OWORD *a2)
{
  if (sub_10002AA08("hostapd", "Daemon"))
  {
    return 0;
  }

  v3 = sub_100016754(0x350uLL);
  if (!v3)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100029C6C();
    }

    return 0;
  }

  v4 = v3;
  v3[192] = -1;
  v5 = os_log_create("com.apple.hostapd", "driver");
  *(v4 + 824) = v5;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 136446210;
    v18 = a2;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Starting darwin init for %{public}s", buf, 0xCu);
  }

  memcpy(v4, &off_100040028, 0x2D8uLL);
  v6 = socket(2, 2, 0);
  *(v4 + 768) = v6;
  if (v6 < 0)
  {
    v7 = *(v4 + 824);
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      if (!v7)
      {
LABEL_14:
        free(v4);
        return 0;
      }

LABEL_13:
      os_release(v7);
      goto LABEL_14;
    }

    sub_100029BE8();
    goto LABEL_24;
  }

  *(v4 + 736) = *a2;
  if (strlen((v4 + 736)) >= 0x10)
  {
    if (os_log_type_enabled(*(v4 + 824), OS_LOG_TYPE_ERROR))
    {
      sub_100029BAC();
    }

    goto LABEL_24;
  }

  __strcpy_chk();
  if ((sub_100024118((v4 + 736), &v16) & 0x80000000) != 0)
  {
    if (os_log_type_enabled(*(v4 + 824), OS_LOG_TYPE_ERROR))
    {
      sub_100029B70();
    }

    goto LABEL_24;
  }

  v9 = sub_10000FACC(v4 + 736, &v16, 34958, sub_1000241D8, v4, 1);
  *(v4 + 760) = v9;
  if (!v9)
  {
    goto LABEL_24;
  }

  *(v4 + 792) = 15;
  *(v4 + 800) = 0;
  v10 = *(v4 + 816);
  if (Apple80211RawGet())
  {
    if (os_log_type_enabled(*(v4 + 824), OS_LOG_TYPE_ERROR))
    {
      sub_100029ACC();
    }

    goto LABEL_24;
  }

  v12 = *(v4 + 796);
  if (v12 != 2)
  {
    if (v12 == 8)
    {
      *(v4 + 840) = 8;
      v13 = *(v4 + 824);
      if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_36;
      }

      *buf = 0;
      v14 = "Operating mode is hostap";
      goto LABEL_35;
    }

    if (os_log_type_enabled(*(v4 + 824), OS_LOG_TYPE_ERROR))
    {
      sub_100029B08();
    }

LABEL_24:
    v11 = *(v4 + 768);
    if ((v11 & 0x80000000) == 0)
    {
      close(v11);
    }

    v7 = *(v4 + 824);
    if (!v7)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  *(v4 + 840) = 2;
  v13 = *(v4 + 824);
  if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    goto LABEL_36;
  }

  *buf = 0;
  v14 = "Operating mode is ibss";
LABEL_35:
  _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, v14, buf, 2u);
LABEL_36:
  if ((sub_100024250(v4) & 0x80000000) != 0)
  {
    perror("Open event sockets");
    goto LABEL_24;
  }

  v15 = *(v4 + 824);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446210;
    v18 = a2;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Darwin init success for %{public}s", buf, 0xCu);
  }

  return v4;
}

void sub_100022F0C(uint64_t a1)
{
  sub_100025640();
  *(*(a1 + 728) + 2352) = 0;
  v9 = *(a1 + 768);
  if ((v9 & 0x80000000) == 0)
  {
    close(v9);
  }

  v10 = *(a1 + 760);
  if (v10)
  {
    sub_10000FDFC(v10, v2, v3, v4, v5, v6, v7, v8);
  }

  v11 = *(a1 + 824);
  if (v11)
  {
    os_release(v11);
  }

  free(a1);
}

uint64_t sub_100022F70(uint64_t a1, uint64_t a2, int a3, void *__src, size_t __n)
{
  v9 = __n + 14;
  v10 = v15;
  if (__n + 14 >= 0x5EB)
  {
    v10 = malloc_type_malloc(__n + 14, 0xB7DB9629uLL);
    if (!v10)
    {
      return 0xFFFFFFFFLL;
    }
  }

  v11 = *a2;
  *(v10 + 2) = *(a2 + 4);
  *v10 = v11;
  v12 = *(a1 + 752);
  *(v10 + 5) = *(a1 + 756);
  *(v10 + 6) = v12;
  *(v10 + 6) = -29048;
  memcpy(v10 + 14, __src, __n);
  v13 = sub_10000F9C8(*(a1 + 760), a2, 0x888Eu, v10, v9);
  if (v10 != v15)
  {
    free(v10);
  }

  return v13;
}

uint64_t sub_100023084(uint64_t a1, uint64_t a2, int a3)
{
  *(a1 + 792) = 1;
  *(a1 + 800) = a3;
  *(a1 + 808) = a2;
  v3 = *(a1 + 816);
  return Apple80211RawSet();
}

uint64_t sub_1000230A4(uint64_t a1, uint64_t a2)
{
  if (sub_10002AA08("hostapd", "Daemon"))
  {
    return 0;
  }

  v4 = sub_100016754(0x350uLL);
  if (!v4)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100029DC4();
    }

    return 0;
  }

  v5 = v4;
  v4[192] = -1;
  v6 = os_log_create("com.apple.hostapd", "driver");
  *(v5 + 824) = v6;
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = *(a2 + 8);
    *buf = 136446210;
    v34 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Starting hostapd init for %{public}s", buf, 0xCu);
  }

  memcpy(v5, &off_100040028, 0x2D8uLL);
  *(v5 + 728) = a1;
  v8 = socket(2, 2, 0);
  *(v5 + 768) = v8;
  if (v8 < 0)
  {
    v19 = "Opening IOCTL socket";
LABEL_27:
    perror(v19);
    goto LABEL_28;
  }

  *(v5 + 736) = **(a1 + 16);
  v9 = *(a1 + 28);
  *(v5 + 756) = *(a1 + 32);
  *(v5 + 752) = v9;
  if ((sub_100024250(v5) & 0x80000000) != 0)
  {
    v19 = "Open event sockets";
    goto LABEL_27;
  }

  if (strlen((v5 + 736)) >= 0x10)
  {
    if (os_log_type_enabled(*(v5 + 824), OS_LOG_TYPE_ERROR))
    {
      sub_100029D88();
    }

    goto LABEL_28;
  }

  sub_100016768((v5 + 776), v5 + 736, 16);
  if ((sub_100024118((v5 + 736), &v31) & 0x80000000) != 0)
  {
    if (os_log_type_enabled(*(v5 + 824), OS_LOG_TYPE_ERROR))
    {
      sub_100029B70();
    }

    goto LABEL_28;
  }

  v10 = v31;
  *(v5 + 752) = v31;
  v11 = v32;
  *(v5 + 756) = v32;
  v12 = *(a1 + 16);
  *(v12 + 736) = v10;
  *(v12 + 740) = v11;
  *(a1 + 32) = v11;
  *(a1 + 28) = v10;
  v13 = sub_10000FACC(v5 + 736, &v31, 34958, sub_1000241D8, v5, 1);
  *(v5 + 760) = v13;
  if (!v13)
  {
LABEL_28:
    v20 = *(v5 + 768);
    if ((v20 & 0x80000000) == 0)
    {
      close(v20);
    }

    v21 = *(v5 + 824);
    if (v21)
    {
      os_release(v21);
    }

    free(v5);
    return 0;
  }

  *(v5 + 792) = 15;
  *(v5 + 800) = 0;
  v14 = *(v5 + 816);
  if (Apple80211RawGet())
  {
    if (os_log_type_enabled(*(v5 + 824), OS_LOG_TYPE_ERROR))
    {
      sub_100029CB0();
    }

    goto LABEL_28;
  }

  v15 = *(v5 + 796);
  if (v15 != 2 && v15 != 8)
  {
    v23 = *(v5 + 824);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      sub_100029D18(v23, v24, v25, v26, v27, v28, v29, v30);
    }

    goto LABEL_28;
  }

  *(v5 + 840) = v15;
  *(a1 + 2352) = v5;
  sub_100025468(v5 + 736, 1);
  v16 = *(v5 + 824);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = *(a2 + 8);
    v18 = "IBSS";
    if (*(v5 + 840) == 8)
    {
      v18 = "AP";
    }

    *buf = 136446466;
    v34 = v17;
    v35 = 2082;
    v36 = v18;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "hostapd started for %{public}s in %{public}s mode", buf, 0x16u);
  }

  return v5;
}

void sub_100023418(uint64_t a1)
{
  sub_100025468(a1 + 736, 0);
  v9 = *(a1 + 728);
  if (v9)
  {
    *(v9 + 2352) = 0;
  }

  v10 = *(a1 + 768);
  if ((v10 & 0x80000000) == 0)
  {
    close(v10);
  }

  sub_10000FDFC(*(a1 + 760), v2, v3, v4, v5, v6, v7, v8);
  if (*(a1 + 816))
  {
    Apple80211Close();
  }

  sub_100025640();

  free(a1);
}

uint64_t sub_100023488(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 728);
  v4 = *(v3 + 16);
  if (a2)
  {
    v5 = *(a2 + 8) == 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = *(a1 + 824);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v10 = "enabled";
    if (v5)
    {
      v10 = "disabled";
    }

    *v38 = 136315138;
    *&v38[4] = v10;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "802.1x: %s.", v38, 0xCu);
  }

  v11 = *(v4 + 484);
  if (v11 || *(v4 + 72))
  {
    v47 = 0u;
    v46 = 0u;
    v45 = 0u;
    v44 = 0u;
    v43 = 0u;
    v42 = 0u;
    v41 = 0u;
    v40 = 0u;
    v39 = 0u;
    *&v38[4] = 0u;
    *v38 = 1;
    if (v5 || *(a1 + 840) != 8)
    {
      return 0;
    }

    if (!v11)
    {
      goto LABEL_81;
    }

    v12 = *(v4 + 508);
    if (v12 <= 3)
    {
      if (v12 == 1)
      {
        v13 = 0;
        goto LABEL_26;
      }

      if (v12 == 2)
      {
        v13 = 1;
        goto LABEL_26;
      }
    }

    else
    {
      switch(v12)
      {
        case 4:
          v13 = 2;
          goto LABEL_26;
        case 16:
          v13 = 5;
          goto LABEL_26;
        case 8:
          v13 = 3;
LABEL_26:
          if (v11)
          {
            *&v38[4] = v13;
          }

          v15 = v11 & 2;
          if ((v11 & 2) != 0)
          {
            LODWORD(v43) = v13;
          }

          v16 = *(v4 + 504);
          if ((v16 & 0x10) != 0)
          {
            if (v11)
            {
              *&v38[8] = 0x500000001;
              v17 = 1;
            }

            else
            {
              v17 = 0;
            }

            if ((v11 & 2) != 0)
            {
              *(&v43 + 4) = 0x500000001;
            }
          }

          else
          {
            v17 = 0;
          }

          if ((v16 & 8) != 0)
          {
            if (v11)
            {
              v18 = &v38[4 * v17++];
              *&v38[8] = v17;
              *(v18 + 3) = 3;
              v15 = *(v4 + 484) & 2;
            }

            if (v15)
            {
              v19 = &v38[4 * DWORD1(v43)];
              ++DWORD1(v43);
              *(v19 + 23) = 3;
            }
          }

          if ((*(v4 + 504) & 4) != 0)
          {
            v20 = *(v4 + 484);
            if (v20)
            {
              v21 = &v38[4 * v17++];
              *&v38[8] = v17;
              *(v21 + 3) = 2;
              v20 = *(v4 + 484);
            }

            if ((v20 & 2) != 0)
            {
              v22 = &v38[4 * DWORD1(v43)];
              ++DWORD1(v43);
              *(v22 + 23) = 2;
            }
          }

          if (*(v4 + 504))
          {
            v23 = *(v4 + 484);
            if (v23)
            {
              v24 = &v38[4 * v17++];
              *&v38[8] = v17;
              *(v24 + 3) = 1;
              v23 = *(v4 + 484);
            }

            if ((v23 & 2) != 0)
            {
              v25 = &v38[4 * DWORD1(v43)];
              ++DWORD1(v43);
              *(v25 + 23) = 1;
            }
          }

          if (!(v17 | DWORD1(v43)))
          {
            if (os_log_type_enabled(*(a1 + 824), OS_LOG_TYPE_ERROR))
            {
              sub_100029F4C((v4 + 504));
            }

            return 0xFFFFFFFFLL;
          }

          v26 = *(v4 + 532);
          if (v26)
          {
            LOWORD(v26) = 1;
            WORD6(v47) = 1;
          }

          v27 = *(v4 + 492);
          if (v27)
          {
            v28 = v27 == 2 ? 192 : 128;
            WORD6(v47) = v26 | v28;
            if (os_log_type_enabled(*(a1 + 824), OS_LOG_TYPE_ERROR))
            {
              sub_100029E08();
            }
          }

          if (*(v4 + 488))
          {
            v29 = *(v4 + 484);
            if (v29)
            {
              v30 = &v38[4 * DWORD2(v40)];
              ++DWORD2(v40);
              *(v30 + 12) = 1;
              v29 = *(v4 + 484);
            }

            if ((v29 & 2) != 0)
            {
              v31 = &v38[4 * DWORD2(v45)];
              ++DWORD2(v45);
              *(v31 + 32) = 4;
            }
          }

          if ((*(v4 + 488) & 2) != 0)
          {
            v32 = *(v4 + 484);
            if (v32)
            {
              v33 = &v38[4 * DWORD2(v40)];
              ++DWORD2(v40);
              *(v33 + 12) = 2;
              v32 = *(v4 + 484);
            }

            if ((v32 & 2) != 0)
            {
              v34 = &v38[4 * DWORD2(v45)];
              ++DWORD2(v45);
              *(v34 + 32) = 8;
            }
          }

          if ((*(v4 + 489) & 4) != 0)
          {
            v35 = &v38[4 * DWORD2(v45)];
            ++DWORD2(v45);
            *(v35 + 32) = 4096;
            v36 = WORD6(v47);
            WORD6(v47) |= 0x80u;
            if ((*(v4 + 488) & 2) == 0)
            {
              WORD6(v47) = v36 | 0xC0;
            }

            if (os_log_type_enabled(*(a1 + 824), OS_LOG_TYPE_ERROR))
            {
              sub_100029E74();
            }
          }

          if (!(DWORD2(v40) | DWORD2(v45)))
          {
            if (os_log_type_enabled(*(a1 + 824), OS_LOG_TYPE_ERROR))
            {
              sub_100029EE0((v4 + 488));
            }

            return 0xFFFFFFFFLL;
          }

LABEL_81:
          *(a1 + 792) = 77;
          *(a1 + 800) = 164;
          *(a1 + 808) = v38;
          v37 = *(a1 + 816);
          return Apple80211RawSet();
      }
    }

    if (os_log_type_enabled(*(a1 + 824), OS_LOG_TYPE_ERROR))
    {
      sub_100029FB8();
    }

    return 0xFFFFFFFFLL;
  }

  sub_100016EE4(v3, 0, 16, 4, "No 802.1X or WPA enabled!", v7, v8, v9, *v38);
  return 0xFFFFFFFFLL;
}

uint64_t sub_100023984(uint64_t a1, uint64_t a2, uint64_t a3, __int16 a4, void *a5)
{
  v18 = 0u;
  v17 = 0u;
  v16 = 0u;
  v15 = 0u;
  v14 = 0u;
  v13 = 0u;
  v12 = 0u;
  v11 = 0u;
  v10 = 0u;
  v9 = 1;
  if (a3)
  {
    DWORD2(v15) = *a3;
    WORD6(v15) = *(a3 + 4);
  }

  else
  {
    WORD6(v15) = -1;
    DWORD2(v15) = -1;
  }

  WORD5(v10) = a4;
  *(a2 + 792) = 78;
  *(a2 + 800) = 148;
  *(a2 + 808) = &v9;
  v7 = *(a2 + 816);
  if ((Apple80211RawGet() & 0x80000000) != 0)
  {
    if (os_log_type_enabled(*(a2 + 824), OS_LOG_TYPE_ERROR))
    {
      sub_10002A020();
    }

    return 0xFFFFFFFFLL;
  }

  else
  {
    result = 0;
    *a5 = v15;
  }

  return result;
}

uint64_t sub_100023AA4(uint64_t a1, uint64_t a2)
{
  *(a2 + 80) = 0;
  *(a2 + 48) = 0u;
  *(a2 + 64) = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  *(a1 + 792) = 79;
  return 0;
}

uint64_t sub_100023AC8(uint64_t a1, uint64_t a2, const void *a3, size_t a4, uint64_t a5, int *a6)
{
  v11 = a4 + 14;
  if (a4 + 14 < 0x5EB)
  {
    v12 = v25;
  }

  else
  {
    v12 = malloc_type_malloc(a4 + 14, 0x38519EA5uLL);
    if (!v12)
    {
      return 0xFFFFFFFFLL;
    }
  }

  v14 = *a2;
  *(v12 + 2) = *(a2 + 4);
  *v12 = v14;
  v15 = *a6;
  *(v12 + 5) = *(a6 + 2);
  *(v12 + 6) = v15;
  *(v12 + 6) = -29048;
  memcpy(v12 + 14, a3, a4);
  sub_100016A94(0, "TX EAPOL", v12, v11);
  sub_100016A20(4, "darwin_hapd_send_eapol", v16, v17, v18, v19, v20, v21, v24);
  v22 = *(a1 + 824);
  if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
  {
    LOWORD(v24) = 0;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "darwin_hapd_send_eapol", &v24, 2u);
  }

  v13 = sub_10000F9C8(*(a1 + 760), a2, 0x888Eu, v12, v11);
  if (v12 != v25)
  {
    free(v12);
  }

  return v13;
}

uint64_t sub_100023C44(uint64_t a1, const ether_addr *a2, unsigned int a3, int a4)
{
  v7 = sub_100004A40(*(a1 + 728), a2);
  if (v7)
  {
    if (a4)
    {
      v14 = *(v7 + 24) | a3;
    }

    else
    {
      v14 = *(v7 + 24) & ~a3;
    }

    *(v7 + 24) = v14;
  }

  else
  {
    if (a2)
    {
      v15 = ether_ntoa(a2);
    }

    else
    {
      v15 = "ff:ff:ff:ff:ff:ff";
    }

    sub_100016A20(4, " Error %s darwin_hapd_get_sta_state is not found", v8, v9, v10, v11, v12, v13, v15);
    return 0xFFFFFFFFLL;
  }

  return v14;
}

uint64_t sub_100023CDC(uint64_t a1, const ether_addr *a2)
{
  v3 = sub_100004A40(*(a1 + 728), a2);
  if (v3)
  {
    return *(v3 + 24);
  }

  if (a2)
  {
    v11 = ether_ntoa(a2);
  }

  else
  {
    v11 = "ff:ff:ff:ff:ff:ff";
  }

  sub_100016A20(4, " Error %s darwin_hapd_get_sta_state is not found", v4, v5, v6, v7, v8, v9, v11);
  return 0xFFFFFFFFLL;
}

uint64_t sub_100023D48(uint64_t a1, uint64_t a2, const ether_addr *a3, unsigned int a4)
{
  v11 = xmmword_10002C960;
  if (*a3->octet != -1 || *&a3->octet[4] != -1)
  {
    v8 = *(a1 + 824);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446466;
      v13 = ether_ntoa(a3);
      v14 = 1024;
      v15 = a4;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "STA %{public}s deauthed, reason_code=%d\n", buf, 0x12u);
    }
  }

  *(&v11 + 4) = __PAIR64__(*a3->octet, a4);
  WORD6(v11) = *&a3->octet[4];
  *(a1 + 792) = 76;
  *(a1 + 800) = 16;
  *(a1 + 808) = &v11;
  v9 = *(a1 + 816);
  return Apple80211RawSet();
}

uint64_t sub_100023E60(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v6 = xmmword_10002C960;
  *(&v6 + 4) = __PAIR64__(*a3, a4);
  WORD6(v6) = *(a3 + 4);
  *(a1 + 792) = 75;
  *(a1 + 800) = 16;
  *(a1 + 808) = &v6;
  v4 = *(a1 + 816);
  return Apple80211RawSet();
}

double sub_100023EC4(uint64_t a1, _OWORD *a2)
{
  v9 = 0;
  v7 = 0u;
  v8 = 0u;
  *(a1 + 792) = 1;
  *(a1 + 800) = 0;
  *(a1 + 808) = &v7;
  v4 = *(a1 + 816);
  if ((Apple80211RawGet() & 0x80000000) != 0 || *(a1 + 800) >= 0x21u)
  {
    if (os_log_type_enabled(*(a1 + 824), OS_LOG_TYPE_ERROR))
    {
      sub_10002A0B8();
    }
  }

  else
  {
    result = *&v7;
    v6 = v8;
    *a2 = v7;
    a2[1] = v6;
  }

  return result;
}

uint64_t sub_100023F88(uint64_t a1, uint64_t a2)
{
  *(a1 + 792) = 1;
  *(a1 + 800) = &vars0 - 4;
  *(a1 + 808) = a2;
  v2 = *(a1 + 816);
  return Apple80211RawSet();
}

uint64_t sub_100023FCC(uint64_t a1, uint64_t a2, uint64_t a3, char a4, char a5)
{
  v16 = xmmword_10002C940;
  v17 = 0;
  v9 = *(a1 + 824);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = ether_ntoa(a2);
    v11 = a4 & 1;
    v12 = "AUTHORIZED";
    if (!v11)
    {
      v12 = "DEAUTHORIZED";
    }

    *buf = 136446466;
    v19 = v10;
    v20 = 2082;
    v21 = v12;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "STA %{public}s %{public}s.", buf, 0x16u);
    if (v11)
    {
      goto LABEL_5;
    }
  }

  else if (a4)
  {
LABEL_5:
    v13 = 1;
LABEL_9:
    DWORD1(v16) = v13;
    goto LABEL_10;
  }

  if ((a5 & 1) == 0)
  {
    v13 = 0;
    goto LABEL_9;
  }

LABEL_10:
  DWORD2(v16) = *a2;
  WORD6(v16) = *(a2 + 4);
  *(a1 + 792) = 74;
  *(a1 + 800) = 20;
  *(a1 + 808) = &v16;
  v14 = *(a1 + 816);
  return Apple80211RawSet();
}

uint64_t sub_100024118(const char *a1, uint64_t a2)
{
  v10 = 0;
  if (getifaddrs(&v10) < 0)
  {
    perror("getifaddrs");
    return 0xFFFFFFFFLL;
  }

  else
  {
    v4 = v10;
    if (v10)
    {
      v5 = v10;
      while (1)
      {
        if (!strcmp(v5->ifa_name, a1))
        {
          ifa_addr = v5->ifa_addr;
          if (ifa_addr->sa_family == 18)
          {
            break;
          }
        }

        v5 = v5->ifa_next;
        v10 = v5;
        if (!v5)
        {
          goto LABEL_9;
        }
      }

      v7 = &ifa_addr->sa_len + ifa_addr->sa_data[3];
      v8 = *(v7 + 2);
      *(a2 + 4) = *(v7 + 6);
      *a2 = v8;
    }

LABEL_9:
    freeifaddrs(v4);
    if (v10)
    {
      return 0;
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }
}

void sub_1000241D8(uint64_t a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v12 = *(a1 + 728);
  v13 = sub_100004A40(v12, a2);
  if (v13 && (*(v13 + 24) & 2) != 0)
  {

    sub_10001FB50(v12, a2, (a3 + 14), a4 - 14, v14, v15, v16, v17, a9);
  }
}

uint64_t sub_100024250(uint64_t a1)
{
  v2 = (a1 + 816);
  if (Apple80211Open())
  {
    if (os_log_type_enabled(*(a1 + 824), OS_LOG_TYPE_ERROR))
    {
      sub_10002A13C();
    }

    goto LABEL_9;
  }

  v3 = CFStringCreateWithCString(kCFAllocatorDefault, (a1 + 736), 0x8000100u);
  if (!v3)
  {
    goto LABEL_9;
  }

  v4 = v3;
  *(a1 + 832) = CFRunLoopGetCurrent();
  v5 = *(a1 + 816);
  v6 = Apple80211BindToInterfaceWithParams();
  if (v6)
  {
    v7 = v6;
    v8 = *(a1 + 824);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10002A1A4(a1 + 736, v7, v8);
    }

    CFRelease(v4);
    goto LABEL_9;
  }

  CFRelease(v4);
  if (!*v2)
  {
    sub_10002A5AC(a1, &v21);
    goto LABEL_9;
  }

  if (Apple80211EventMonitoringInit2())
  {
    if (os_log_type_enabled(*(a1 + 824), OS_LOG_TYPE_ERROR))
    {
      sub_10002A22C();
    }

    goto LABEL_9;
  }

  v10 = *v2;
  if (Apple80211StartMonitoringEvent())
  {
    if (os_log_type_enabled(*(a1 + 824), OS_LOG_TYPE_ERROR))
    {
      goto LABEL_39;
    }

    goto LABEL_9;
  }

  v11 = *v2;
  if (Apple80211StartMonitoringEvent())
  {
    if (os_log_type_enabled(*(a1 + 824), OS_LOG_TYPE_ERROR))
    {
      goto LABEL_39;
    }

    goto LABEL_9;
  }

  v12 = *v2;
  if (Apple80211StartMonitoringEvent())
  {
    if (os_log_type_enabled(*(a1 + 824), OS_LOG_TYPE_ERROR))
    {
LABEL_39:
      sub_10002A294();
    }

LABEL_9:
    if (os_log_type_enabled(*(a1 + 824), OS_LOG_TYPE_ERROR))
    {
      sub_10002A650();
    }

    if (*v2)
    {
      Apple80211Close();
    }

    if (os_log_type_enabled(*(a1 + 824), OS_LOG_TYPE_ERROR))
    {
      sub_10002A6B8();
    }

    return 0xFFFFFFFFLL;
  }

  v13 = *v2;
  if (Apple80211StartMonitoringEvent())
  {
    if (os_log_type_enabled(*(a1 + 824), OS_LOG_TYPE_ERROR))
    {
      sub_10002A2FC();
    }

    goto LABEL_9;
  }

  v14 = *v2;
  if (Apple80211StartMonitoringEvent())
  {
    if (os_log_type_enabled(*(a1 + 824), OS_LOG_TYPE_ERROR))
    {
      sub_10002A364();
    }

    goto LABEL_9;
  }

  v15 = *v2;
  if (Apple80211StartMonitoringEvent())
  {
    if (os_log_type_enabled(*(a1 + 824), OS_LOG_TYPE_ERROR))
    {
      sub_10002A3CC();
    }

    goto LABEL_9;
  }

  v16 = *v2;
  if (Apple80211StartMonitoringEvent())
  {
    if (os_log_type_enabled(*(a1 + 824), OS_LOG_TYPE_ERROR))
    {
      sub_10002A434();
    }

    goto LABEL_9;
  }

  v17 = *v2;
  if (Apple80211StartMonitoringEvent())
  {
    if (os_log_type_enabled(*(a1 + 824), OS_LOG_TYPE_ERROR))
    {
      sub_10002A49C();
    }

    goto LABEL_9;
  }

  v18 = *(a1 + 816);
  started = Apple80211StartMonitoringEvent();
  v20 = *(a1 + 824);
  if (started)
  {
    if (os_log_type_enabled(*(a1 + 824), OS_LOG_TYPE_ERROR))
    {
      sub_10002A504();
    }

    goto LABEL_9;
  }

  result = os_log_type_enabled(*(a1 + 824), OS_LOG_TYPE_DEBUG);
  if (result)
  {
    sub_10002A56C();
    return 0;
  }

  return result;
}

void sub_100024630(int a1, uint64_t a2, int a3, const void *a4, size_t size, uint64_t a6)
{
  v7 = size;
  if (size <= 0x1000)
  {
    if (size)
    {
      v12 = size;
      v13 = malloc_type_malloc(size, 0x8FF3D6CBuLL);
      if (!v13)
      {
        if (os_log_type_enabled(*(a6 + 824), OS_LOG_TYPE_ERROR))
        {
          sub_10002A7A4();
        }

        return;
      }
    }

    else
    {
      v12 = 0;
      v13 = 0;
    }

    memcpy(v13, a4, v12);
    Current = CFRunLoopGetCurrent();
    block[0] = _NSConcreteStackBlock;
    block[1] = 0x40000000;
    block[2] = sub_1000247E4;
    block[3] = &unk_10003CC30;
    v17 = a1;
    v18 = a3;
    block[4] = a2;
    block[5] = v13;
    v19 = v7;
    block[6] = a6;
    CFRunLoopPerformBlock(Current, kCFRunLoopDefaultMode, block);
    v15 = CFRunLoopGetCurrent();
    CFRunLoopWakeUp(v15);
    return;
  }

  if (os_log_type_enabled(*(a6 + 824), OS_LOG_TYPE_ERROR))
  {
    sub_10002A73C();
  }
}

void sub_10002477C(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 824);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "Terminating because DextCrashed", v2, 2u);
  }

  sub_1000268F0();
}

void sub_1000247E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a1 + 60);
  v9 = *(a1 + 64);
  v10 = *(a1 + 40);
  v11 = *(a1 + 48);
  if (v8 > 17)
  {
    if ((v8 - 18) < 2)
    {
      v26 = *(v11 + 824);
      if (v9 <= 0x25)
      {
        if (!os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_70;
        }

        sub_10002A7E0();
        if (!v10)
        {
          return;
        }

        goto LABEL_71;
      }

      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        if (v8 == 18)
        {
          v27 = "arrived";
        }

        else
        {
          v27 = "left";
        }

        v59 = 136446466;
        *v60 = v27;
        *&v60[8] = 2082;
        *&v60[10] = ether_ntoa(v10);
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Received peer %{public}s annoucement (%{public}s)", &v59, 0x16u);
      }

      if (v8 != 18)
      {
        sub_100024ED4(v11, v8, v10, 0, 0, a6, a7, a8);
        if (!v10)
        {
          return;
        }

        goto LABEL_71;
      }

      if (*(v10 + 7))
      {
        if (*(v11 + 840) != 2)
        {
          goto LABEL_71;
        }

        v28 = (v10 + 6);
        v29 = v11;
        v30 = v10;
        v31 = 0;
        goto LABEL_53;
      }

      v49 = *(v11 + 824);
      if (!os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_71;
      }

      v50 = ether_ntoa(v10);
      v59 = 136315138;
      *v60 = v50;
      v51 = "No RSN IE present for %s. Ignoring.";
      v52 = v49;
      v53 = 12;
    }

    else
    {
      if (v8 == 49)
      {
        goto LABEL_22;
      }

      if (v8 != 152)
      {
LABEL_46:
        v32 = *(v11 + 824);
        if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
        {
          v59 = 67109120;
          *v60 = v8;
          v16 = "Unexpected Apple80211 Event %ud \n";
          v17 = v32;
          v18 = OS_LOG_TYPE_DEFAULT;
          goto LABEL_48;
        }

LABEL_70:
        if (!v10)
        {
          return;
        }

        goto LABEL_71;
      }

      if (v9 <= 0x6B)
      {
        v19 = *(v11 + 824);
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          v59 = 67109376;
          *v60 = v9;
          *&v60[4] = 2048;
          *&v60[6] = 108;
          v16 = "AUTH_IND event len (%d) is less than required (%ld)";
          v17 = v19;
          v18 = OS_LOG_TYPE_DEFAULT;
          v20 = 18;
          goto LABEL_49;
        }

        goto LABEL_70;
      }

      if (!v10)
      {
        v54 = *(v11 + 824);
        if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v59) = 0;
          _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_DEFAULT, "AUTH_IND has no payload \n", &v59, 2u);
        }

        return;
      }

      v33 = *(v11 + 728);
      if (v33)
      {
        v34 = *(v33 + 16);
        if (v34)
        {
          v35 = *(v33 + 2624);
          if (v35)
          {
            if (*(v10 + 20) == 32)
            {
              if ((*(v34 + 489) & 4) == 0 || *v10 != 5)
              {
                goto LABEL_71;
              }

              v36 = *(v11 + 824);
              if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
              {
                v38 = *(v10 + 12);
                v39 = *(v10 + 13);
                v40 = *(v10 + 14);
                v41 = *(v10 + 15);
                v42 = *(v10 + 16);
                v43 = *(v10 + 17);
                v44 = *(v10 + 92);
                v45 = *(v10 + 93);
                v46 = *(v10 + 106);
                v47 = *(v10 + 107);
                v59 = 67111424;
                *v60 = v38;
                *&v60[4] = 1024;
                *&v60[6] = v39;
                *&v60[10] = 1024;
                *&v60[12] = v40;
                *&v60[16] = 1024;
                *v61 = v41;
                *&v61[4] = 1024;
                v62 = v42;
                v63 = 1024;
                v64 = v43;
                v65 = 1024;
                v66 = v44;
                v67 = 1024;
                v68 = v45;
                v69 = 1024;
                v70 = v46;
                v71 = 1024;
                v72 = v47;
                _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "AUTH_IND to add PMKSA for %02X:%02X:%02X:%02X:%02X:%02X PMKID %2X%2X-%2X%2X\n", &v59, 0x3Eu);
                v35 = *(*(v11 + 728) + 2624);
                v48 = *(v10 + 20);
              }

              else
              {
                v48 = 32;
              }

              if (!sub_100009308(v35, (v10 + 24), v48, (v10 + 92), v35 + 288, (v10 + 12), 0xFFFFFFFFLL, v37))
              {
                goto LABEL_71;
              }

              v58 = *(v11 + 824);
              if (!os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
              {
                goto LABEL_71;
              }

              LOWORD(v59) = 0;
              v51 = "AUTH_IND failed to add PMKSA \n";
              v52 = v58;
              v53 = 2;
              goto LABEL_85;
            }
          }
        }

        v55 = *(v11 + 824);
        if (!os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_71;
        }

        v56 = *(v33 + 2624);
      }

      else
      {
        v55 = *(v11 + 824);
        if (!os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_71;
        }

        v56 = 0;
      }

      v57 = *(v10 + 20);
      v59 = 134218496;
      *v60 = v33;
      *&v60[8] = 2048;
      *&v60[10] = v56;
      *v61 = 1024;
      *&v61[2] = v57;
      v51 = "AUTH_IND cannot set PMKSA. hapd is %p. wpa_auth is %p PMK length %d \n";
      v52 = v55;
      v53 = 28;
    }

LABEL_85:
    _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_DEFAULT, v51, &v59, v53);
    goto LABEL_71;
  }

  if (v8 > 11)
  {
    if (v8 != 12)
    {
      if (v8 == 13)
      {
        if (v9 > 5)
        {
          if (!v10)
          {
            return;
          }

          sub_100024ED4(*(a1 + 48), 13, v10, 0, 0, a6, a7, a8);
          goto LABEL_71;
        }

        if (!os_log_type_enabled(*(v11 + 824), OS_LOG_TYPE_ERROR))
        {
          goto LABEL_70;
        }

        sub_10002A7E0();
        if (!v10)
        {
          return;
        }

        goto LABEL_71;
      }

      goto LABEL_46;
    }

    if (v9 <= 5)
    {
      if (!os_log_type_enabled(*(v11 + 824), OS_LOG_TYPE_ERROR))
      {
        goto LABEL_70;
      }

      sub_10002A7E0();
      if (!v10)
      {
        return;
      }

      goto LABEL_71;
    }

    if (!v10)
    {
      return;
    }

    v31 = (v10 + 16);
    v29 = *(a1 + 48);
    v30 = v10;
    v28 = 0;
LABEL_53:
    sub_1000250B0(v29, v30, v28, v31, a5, a6, a7, a8);
    goto LABEL_71;
  }

  if (v8 == 1)
  {
LABEL_22:
    v21 = *(v11 + 824);
    if (!os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_27;
    }

    v22 = "APPLE80211_M_RESET_INTERFACE";
    if (v8 == 1)
    {
      v22 = "APPLE80211_M_POWER_CHANGED";
    }

    v59 = 136446210;
    *v60 = v22;
    v23 = "Got %{public}s event, terminating";
    v24 = v21;
    v25 = 12;
    goto LABEL_26;
  }

  if (v8 != 8)
  {
    goto LABEL_46;
  }

  *(v11 + 792) = 15;
  *(v11 + 800) = 0;
  v12 = *(v11 + 816);
  v13 = Apple80211RawGet();
  if (v13 == 82)
  {
    v15 = *(v11 + 824);
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
LABEL_27:
      sub_1000268F0();
      if (!v10)
      {
        return;
      }

      goto LABEL_71;
    }

    LOWORD(v59) = 0;
    v23 = "Terminating because power is off";
    goto LABEL_81;
  }

  if (!v13)
  {
    v14 = *(v11 + 796);
    v15 = *(v11 + 824);
    if ((v14 & 0xA) != 0)
    {
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        v59 = 67109120;
        *v60 = v14;
        v16 = "Mode changed: 0x%x";
        v17 = v15;
        v18 = OS_LOG_TYPE_INFO;
LABEL_48:
        v20 = 8;
LABEL_49:
        _os_log_impl(&_mh_execute_header, v17, v18, v16, &v59, v20);
        if (!v10)
        {
          return;
        }

        goto LABEL_71;
      }

      goto LABEL_70;
    }

    if (!os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_27;
    }

    LOWORD(v59) = 0;
    v23 = "Terminating because operating mode changed";
LABEL_81:
    v24 = v15;
    v25 = 2;
LABEL_26:
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, v23, &v59, v25);
    goto LABEL_27;
  }

  if (!os_log_type_enabled(*(v11 + 824), OS_LOG_TYPE_ERROR))
  {
    goto LABEL_70;
  }

  sub_10002A848();
  if (v10)
  {
LABEL_71:
    free(v10);
  }
}

void sub_100024ED4(uint64_t a1, int a2, ether_addr *a3, unsigned __int8 *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2 > 17)
  {
    if (a2 != 18)
    {
      if (a2 != 19)
      {
        return;
      }

      goto LABEL_7;
    }

    if (*(a1 + 840) != 2)
    {
      return;
    }

    v21 = a3;
    v22 = a4;
    v23 = 0;
  }

  else
  {
    if (a2 != 12)
    {
      if (a2 != 13)
      {
        return;
      }

LABEL_7:
      v10 = *(a1 + 728);
      v11 = *(v10 + 16);
      sub_100016EE4(v10, a3->octet, 1, 2, "disassociated", a6, a7, a8, *v24);
      v12 = *(a1 + 824);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *v24 = 136446210;
        *&v24[4] = ether_ntoa(a3);
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "STA %{public}s disassociated", v24, 0xCu);
      }

      v13 = sub_100004A40(v10, a3);
      if (v13)
      {
        v14 = v13;
        *(v13 + 24) &= 0xFFFFFFFC;
        if (*(v11 + 484))
        {
          sub_1000089A4(*(v13 + 168), 2);
        }

        *(v14 + 124) = 1;
        sub_100020C7C(*(v14 + 88), 0);
        sub_100004A90(v10, v14, v15, v16, v17, v18, v19, v20);
      }

      nullsub_2(v13);
      return;
    }

    v21 = a3;
    v22 = 0;
    v23 = a5;
  }

  sub_1000250B0(a1, v21, v22, v23, a5, a6, a7, a8);
}

void sub_1000250B0(uint64_t a1, uint64_t a2, unsigned __int8 *a3, unsigned __int8 *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = *(a1 + 728);
  v13 = *(v12 + 16);
  sub_100016EE4(v12, a2, 1, 2, "associated", a6, a7, a8, v37);
  v14 = *(a1 + 824);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(v37) = 136446210;
    *(&v37 + 4) = ether_ntoa(a2);
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "STA %{public}s associated", &v37, 0xCu);
  }

  if (a4)
  {
    v15 = *(a1 + 824);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = *a4;
      v17 = a4[1];
      v18 = a4[2];
      LODWORD(v37) = 67109632;
      DWORD1(v37) = v16;
      WORD4(v37) = 1024;
      *(&v37 + 10) = v17;
      HIWORD(v37) = 1024;
      *v38 = v18;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "STA RSNXE: %x ,%x, %x", &v37, 0x14u);
    }
  }

  v19 = sub_1000054E8(v12, a2);
  if (v19)
  {
    v22 = v19;
    if (*(v13 + 484))
    {
      v23 = *(v19 + 21);
      if (!v23)
      {
        v23 = sub_1000072E4(*(v12 + 2624), v19 + 4);
        *(v22 + 168) = v23;
        if (!v23)
        {
          if (os_log_type_enabled(*(a1 + 824), OS_LOG_TYPE_ERROR))
          {
            sub_10002A990();
          }

          goto LABEL_31;
        }
      }

      if (*(a1 + 840) == 8)
      {
        bzero(&v37 + 8, 0x408uLL);
        v24 = *a2;
        LODWORD(v37) = 1;
        DWORD1(v37) = v24;
        WORD4(v37) = *(a2 + 4);
        HIDWORD(v37) = 1024;
        *(a1 + 792) = 73;
        *(a1 + 800) = 1040;
        *(a1 + 808) = &v37;
        v25 = *(a1 + 816);
        if ((Apple80211RawGet() & 0x80000000) != 0)
        {
          if (os_log_type_enabled(*(a1 + 824), OS_LOG_TYPE_ERROR))
          {
            sub_10002A954();
          }

          goto LABEL_31;
        }

        v26 = v38[1];
        if (!v38[1])
        {
          if (os_log_type_enabled(*(a1 + 824), OS_LOG_TYPE_ERROR))
          {
            sub_10002A918();
          }

          goto LABEL_31;
        }

        sub_100016B64(1, "WPA/RSN IE ", v38, v38[1] + 2);
        if (sub_10000B890(*(v12 + 2624), *(v22 + 168), v38, v26 + 2, 0, 0, v27, v28))
        {
          if (!os_log_type_enabled(*(a1 + 824), OS_LOG_TYPE_ERROR))
          {
LABEL_31:
            sub_100004A90(v12, v22, v29, v30, v31, v32, v33, v34);
            return;
          }

LABEL_15:
          sub_10002A8B0();
          goto LABEL_31;
        }
      }

      else if (sub_10000B890(*(v12 + 2624), v23, a3, a3[1] + 2, 0, 0, v20, v21))
      {
        if (!os_log_type_enabled(*(a1 + 824), OS_LOG_TYPE_ERROR))
        {
          goto LABEL_31;
        }

        goto LABEL_15;
      }
    }

    v35 = *(v22 + 24);
    *(v22 + 24) = v35 | 3;
    v36 = *(v22 + 168);
    *(v36 + 600) = 0;
    *(v36 + 568) = 0u;
    *(v36 + 584) = 0u;
    *(v36 + 536) = 0u;
    *(v36 + 552) = 0u;
    *(v36 + 504) = 0u;
    *(v36 + 520) = 0u;
    *(v36 + 472) = 0u;
    *(v36 + 488) = 0u;
    *(v36 + 440) = 0u;
    *(v36 + 456) = 0u;
    *(v36 + 408) = 0u;
    *(v36 + 424) = 0u;
    *(v36 + 376) = 0u;
    *(v36 + 392) = 0u;
    *(v36 + 344) = 0u;
    *(v36 + 360) = 0u;
    if (a4)
    {
      if (*a4)
      {
        memcpy((*(v22 + 168) + 344), a4, a4[1] + 2);
      }
    }

    sub_1000089A4(*(v22 + 168), 1);
    sub_10000394C(v12, v22, (v35 >> 1) & 1);
    sub_100020C7C(*(v22 + 88), 1);
  }

  else if (os_log_type_enabled(*(a1 + 824), OS_LOG_TYPE_ERROR))
  {
    sub_10002A9CC();
  }
}

uint64_t sub_100025468(unint64_t a1, int a2)
{
  v4 = socket(30, 2, 0);
  if (v4 < 0)
  {
    v13 = __error();
    strerror(*v13);
    return sub_100016A20(4, "%s: socket(AF_INET6,SOCK_DGRAM) failed: %s", v14, v15, v16, v17, v18, v19, "set_interface_up");
  }

  else
  {
    v5 = v4;
    v35 = 0u;
    v36 = 0u;
    sub_100016768(&v35, a1, 16);
    if (ioctl(v5, 0xC0206911uLL, &v35))
    {
      v6 = __error();
      strerror(*v6);
      sub_100016A20(4, "%s: ioctl(SIOCGIFFLAGS) failed for interface %s: %s", v7, v8, v9, v10, v11, v12, "set_interface_up");
    }

    else
    {
      if (a2)
      {
        v21 = (v36 & 0xFFFE) + 1;
      }

      else
      {
        v21 = v36 & 0xFFFE;
      }

      LOWORD(v36) = v21;
      if (ioctl(v5, 0x80206910uLL, &v35))
      {
        v28 = __error();
        strerror(*v28);
        sub_100016A20(4, "%s: ioctl(SIOCSIFFLAGS) failed for interface %s: %s", v29, v30, v31, v32, v33, v34, "set_interface_up");
      }

      else
      {
        sub_100016A20(4, "%s: IFF_UP is set to %d for interface %s", v22, v23, v24, v25, v26, v27, "set_interface_up");
      }
    }

    return close(v5);
  }
}

void sub_1000255E4(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 8u);
}

uint64_t sub_100025640()
{
  if (qword_1000404C0)
  {
    asl_free(qword_1000404C0);
  }

  if (qword_1000404C8)
  {
    asl_free(qword_1000404C8);
  }

  if (qword_1000404B0)
  {
    asl_close(qword_1000404B0);
  }

  if (qword_1000404B8)
  {
    asl_close(qword_1000404B8);
  }

  if (qword_1000404D8)
  {
    free(qword_1000404D8);
  }

  result = dword_100040304;
  if ((dword_100040304 & 0x80000000) == 0)
  {
    result = close(dword_100040304);
    dword_100040304 = -1;
  }

  return result;
}

BOOL sub_1000256C4()
{
  if ((dword_100040304 & 0x80000000) == 0)
  {
    return 1;
  }

  dword_100040304 = open("/dev/io8log", 1);
  return dword_100040304 >= 0;
}

uint64_t sub_100025710()
{
  result = dword_100040304;
  if ((dword_100040304 & 0x80000000) == 0)
  {
    result = close(dword_100040304);
    dword_100040304 = -1;
  }

  return result;
}

void sub_100025744(char *cStr, va_list a2)
{
  if (cStr)
  {
    if ((dword_100040304 & 0x80000000) == 0)
    {
      v3 = CFStringCreateWithCString(kCFAllocatorDefault, cStr, 0x8000100u);
      if (v3)
      {
        v4 = v3;
        v5 = CFStringCreateWithFormatAndArguments(kCFAllocatorDefault, 0, v3, a2);
        if (v5)
        {
          sub_10002ACF0(v5, v6, v4);
        }

        else
        {
          CFRelease(v4);
        }
      }
    }
  }
}

uint64_t sub_100025834(uint64_t result, char *value, const char *a3, const char *a4, const char *a5, const char *a6, const char *a7, const char *a8, float a9, float a10, float a11, const char *a12, char a13)
{
  v23 = result;
  if (((result & 1) == 0 || value) && ((result & 2) == 0 || a3) && ((result & 4) == 0 || a4) && ((result & 8) == 0 || a5) && ((result & 0x10) == 0 || a6) && ((result & 0x200) == 0 || a8) && ((result & 0x400) == 0 || a12) && ((result & 0x20) == 0 || a7))
  {
    if (qword_1000404C8)
    {
      if ((result & 1) == 0)
      {
        return result;
      }
    }

    else
    {
      result = sub_10002ADB4();
      if ((v23 & 1) == 0)
      {
        return result;
      }
    }

    result = asl_set(qword_1000404C8, "com.apple.message.domain", value);
    if ((v23 & 2) != 0)
    {
      result = asl_set(qword_1000404C8, "com.apple.message.domain.version", a3);
    }

    if ((v23 & 4) != 0)
    {
      asl_set(qword_1000404C8, "com.apple.message.signature", a4);
      if ((v23 & 8) != 0)
      {
        asl_set(qword_1000404C8, "com.apple.message.signature2", a5);
        if ((v23 & 0x10) == 0)
        {
LABEL_24:
          if ((v23 & 0x20) == 0)
          {
            goto LABEL_25;
          }

          goto LABEL_29;
        }
      }

      else if ((v23 & 0x10) == 0)
      {
        goto LABEL_24;
      }

      asl_set(qword_1000404C8, "com.apple.message.signature3", a6);
      if ((v23 & 0x20) == 0)
      {
LABEL_25:
        if ((v23 & 0x40) == 0)
        {
          goto LABEL_36;
        }

LABEL_30:
        v24 = a9;
        v25 = snprintf(0, 0, "%f", v24);
        if (v25 < 0x102)
        {
          v26 = 256;
          v27 = v44;
        }

        else
        {
          v26 = v25;
          v27 = malloc_type_malloc(v25 + 1, 0x100004077774924uLL);
        }

        snprintf(v27, v26, "%f", v24);
        asl_set(qword_1000404C8, "com.apple.message.value", v27);
        if (v27 && v27 != v44)
        {
          free(v27);
        }

LABEL_36:
        if ((v23 & 0x80) != 0)
        {
          v28 = a10;
          v29 = snprintf(0, 0, "%f", v28);
          if (v29 < 0x102)
          {
            v30 = 256;
            v31 = v44;
          }

          else
          {
            v30 = v29;
            v31 = malloc_type_malloc(v29 + 1, 0x100004077774924uLL);
          }

          snprintf(v31, v30, "%f", v28);
          asl_set(qword_1000404C8, "com.apple.message.value2", v31);
          if (v31)
          {
            if (v31 != v44)
            {
              free(v31);
            }
          }
        }

        if ((v23 & 0x100) != 0)
        {
          v32 = a11;
          v33 = snprintf(0, 0, "%f", v32);
          if (v33 < 0x102)
          {
            v34 = 256;
            v35 = v44;
          }

          else
          {
            v34 = v33;
            v35 = malloc_type_malloc(v33 + 1, 0x100004077774924uLL);
          }

          snprintf(v35, v34, "%f", v32);
          asl_set(qword_1000404C8, "com.apple.message.value3", v35);
          if (v35)
          {
            if (v35 != v44)
            {
              free(v35);
            }
          }
        }

        if ((v23 & 0x200) != 0)
        {
          asl_set(qword_1000404C8, "com.apple.message.uuid", a8);
        }

        if ((v23 & 0x400) == 0)
        {
          asl_log(qword_1000404B8, qword_1000404C8, 7, " ");
LABEL_68:
          asl_unset(qword_1000404C8, "com.apple.message.domain");
          asl_unset(qword_1000404C8, "com.apple.message.domain.version");
          asl_unset(qword_1000404C8, "com.apple.message.uuid");
          asl_unset(qword_1000404C8, "com.apple.message.result");
          asl_unset(qword_1000404C8, "com.apple.message.signature");
          asl_unset(qword_1000404C8, "com.apple.message.signature2");
          asl_unset(qword_1000404C8, "com.apple.message.signature3");
          asl_unset(qword_1000404C8, "com.apple.message.value");
          asl_unset(qword_1000404C8, "com.apple.message.value2");
          return asl_unset(qword_1000404C8, "com.apple.message.value3");
        }

        v36 = CFStringCreateWithCString(kCFAllocatorDefault, a12, 0x8000100u);
        if (!v36)
        {
          goto LABEL_68;
        }

        v37 = v36;
        v38 = CFStringCreateWithFormatAndArguments(kCFAllocatorDefault, 0, v36, &a13);
        if (!v38)
        {
LABEL_67:
          CFRelease(v37);
          goto LABEL_68;
        }

        v39 = v38;
        Length = CFStringGetLength(v38);
        MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
        v42 = MaximumSizeForEncoding + 1;
        if ((MaximumSizeForEncoding + 1) < 0x101)
        {
          v43 = v44;
          v42 = 256;
        }

        else
        {
          v43 = malloc_type_malloc(MaximumSizeForEncoding + 1, 0x100004077774924uLL);
          if (!v43)
          {
LABEL_66:
            CFRelease(v39);
            goto LABEL_67;
          }
        }

        if (CFStringGetCString(v39, v43, v42, 0x8000100u))
        {
          asl_log(qword_1000404B8, qword_1000404C8, 7, "%s", v43);
        }

        if (v43 != v44)
        {
          free(v43);
        }

        goto LABEL_66;
      }

LABEL_29:
      asl_set(qword_1000404C8, "com.apple.message.result", a7);
      if ((v23 & 0x40) == 0)
      {
        goto LABEL_36;
      }

      goto LABEL_30;
    }
  }

  return result;
}

uint64_t sub_100025DA4(const __CFString *a1)
{

  return CFStringGetCString(a1, v1, v2, 0x8000100u);
}

uint64_t sub_100025DC4()
{
  getpid();
  sub_100016A20(1, "%s pid = %u", v0, v1, v2, v3, v4, v5, "eloop_init");
  xmmword_100040480 = 0u;
  unk_100040490 = 0u;
  xmmword_100040450 = 0u;
  *&qword_100040460 = 0u;
  xmmword_100040430 = 0u;
  *&dword_100040440 = 0u;
  xmmword_100040420 = 0u;
  *&xmmword_100040470 = &xmmword_100040470;
  *(&xmmword_100040470 + 1) = &xmmword_100040470;
  return 0;
}

uint64_t sub_100025E44(CFSocketNativeHandle a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v59 = a1;
  CFRunLoopGetCurrent();
  sub_100016A20(1, "%s, Current run loop = %p, sock=%d, type = %d", v10, v11, v12, v13, v14, v15, "eloop_register_sock");
  if (a2 == 1)
  {
    Current = CFAbsoluteTimeGetCurrent();
    v24 = 0;
    valuePtr = Current;
    v23 = &dword_100040440;
    v25 = 8;
  }

  else if (a2)
  {
    sub_100016A20(4, "%s, unsupported socket type (%d)", v16, v17, v18, v19, v20, v21, "eloop_register_sock");
    v32 = CFAbsoluteTimeGetCurrent();
    v25 = 0;
    valuePtr = v32;
    if (a2 != 2)
    {
      v24 = 0;
      goto LABEL_12;
    }

    Current = v32;
    v23 = &xmmword_100040450 + 2;
    v24 = 0;
  }

  else
  {
    Current = CFAbsoluteTimeGetCurrent();
    valuePtr = Current;
    v23 = &xmmword_100040420 + 2;
    v24 = sub_1000261BC;
    v25 = 1;
  }

  v33 = malloc_type_realloc(*(v23 + 1), 40 * *v23 + 40, 0x1080040E6B58E7BuLL);
  if (!v33)
  {
LABEL_12:
    sub_100016A20(4, "%s Error: Failed to add socket", v26, v27, v28, v29, v30, v31, "eloop_register_sock");
    goto LABEL_13;
  }

  v34 = *v23;
  v35 = &v33[40 * *v23];
  v35[4] = Current;
  *v35 = a1;
  *(v35 + 1) = a4;
  *(v35 + 2) = a5;
  *(v35 + 3) = a3;
  *v23 = v34 + 1;
  *(v23 + 1) = v33;
  if (xmmword_100040420 < a1)
  {
    LODWORD(xmmword_100040420) = a1;
  }

  v23[4] = 1;
LABEL_13:
  v36 = CFNumberCreate(kCFAllocatorDefault, kCFNumberDoubleType, &valuePtr);
  context.version = 0;
  context.info = v36;
  context.retain = &CFRetain;
  context.release = &_CFRelease;
  context.copyDescription = 0;
  v37 = CFSocketCreateWithNative(kCFAllocatorDefault, a1, v25, v24, &context);
  CFRelease(v36);
  if (!v37)
  {
    sub_100016A20(4, "%s, CFSocketCreateWithNative failed!\n", v38, v39, v40, v41, v42, v43, "eloop_register_sock");
    return 0xFFFFFFFFLL;
  }

  RunLoopSource = CFSocketCreateRunLoopSource(kCFAllocatorDefault, v37, 0);
  if (!RunLoopSource)
  {
    sub_100016A20(4, "%s, CFSocketCreateRunLoopSource failed!\n", v45, v46, v47, v48, v49, v50, "eloop_register_sock");
    CFRelease(v37);
    return 0xFFFFFFFFLL;
  }

  v51 = RunLoopSource;
  v52 = CFRunLoopGetCurrent();
  CFRunLoopAddSource(v52, v51, kCFRunLoopDefaultMode);
  CFRelease(v51);
  if (qword_1000404A0 || (qword_1000404A0 = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks)) != 0)
  {
    v53 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, &v59);
    if (v53)
    {
      v54 = v53;
      CFDictionaryAddValue(qword_1000404A0, v53, v37);
      CFRelease(v54);
    }
  }

  CFRelease(v37);
  return 0;
}

void sub_100026134(int a1)
{
  valuePtr = a1;
  if (qword_1000404A0)
  {
    v1 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, &valuePtr);
    if (v1)
    {
      v2 = v1;
      Value = CFDictionaryGetValue(qword_1000404A0, v1);
      if (Value)
      {
        v4 = Value;
        CFSocketInvalidate(Value);
        CFDictionaryRemoveValue(qword_1000404A0, v4);
      }

      CFRelease(v2);
    }
  }
}

uint64_t sub_1000261BC(__CFSocket *a1, uint64_t a2, uint64_t a3, uint64_t a4, const __CFNumber *a5)
{
  CFSocketGetNative(a1);
  if (!a5)
  {
    return sub_100016A20(4, "%s: no socket context", v7, v8, v9, v10, v11, v12, "runloopReadSockCallback");
  }

  valuePtr = 0.0;
  if (!CFNumberGetValue(a5, kCFNumberDoubleType, &valuePtr))
  {
    return sub_100016A20(4, "%s: invalid socket context", v13, v14, v15, v16, v17, v18, "runloopReadSockCallback");
  }

  if (a2 != 1)
  {
    if (a2 == 8)
    {
      v20 = &dword_100040440;
      goto LABEL_10;
    }

    sub_100016A20(4, "%s, unsupported socket type (%d)", v13, v14, v15, v16, v17, v18, "runloopReadSockCallback");
  }

  v20 = &xmmword_100040420 + 2;
LABEL_10:
  v22 = *v20;
  if (v22 < 1)
  {
    return sub_100016A20(4, "%s: couldn't find registered socket handler", v13, v14, v15, v16, v17, v18, "runloopReadSockCallback");
  }

  v19.n128_f64[0] = valuePtr;
  for (i = *(v20 + 1) + 16; *(i + 16) != valuePtr; i += 40)
  {
    if (!--v22)
    {
      return sub_100016A20(4, "%s: couldn't find registered socket handler", v13, v14, v15, v16, v17, v18, "runloopReadSockCallback");
    }
  }

  return (*(i + 8))(*(i - 16), *(i - 8), *i, v19);
}

uint64_t sub_1000262D0(int a1, CFNumberRef number, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (xmmword_100040470 == &xmmword_100040470)
  {
    return sub_100016A20(1, "%s ERROR: empty timeout list; nothing to do !!!", a3, a4, a5, a6, a7, a8, "runloopTimerCallback");
  }

  valuePtr = 0;
  if (!number || !CFNumberGetValue(number, kCFNumberDoubleType, &valuePtr))
  {
    return sub_100016A20(1, "%s, unable to get timeout context", a3, a4, a5, a6, a7, a8, "runloopTimerCallback");
  }

  if (xmmword_100040470 == &xmmword_100040470)
  {
    v9 = 0;
  }

  else
  {
    v9 = xmmword_100040470;
  }

  v10 = v9[5];
  v11 = v9[6];
  v12 = v9[4];
  sub_100026388(v9, v8, a3, a4, a5, a6, a7, a8);
  return v11(v12, v10);
}

void sub_100026388(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = a1[7];
  if (v9)
  {
    CFRunLoopTimerInvalidate(v9);
    CFRelease(a1[7]);
  }

  else
  {
    sub_100016A20(1, "%s, removing timer without CFRunLoopTimer !!!", a3, a4, a5, a6, a7, a8, "eloop_remove_timeout");
  }

  v11 = *a1;
  v10 = a1[1];
  *(v11 + 8) = v10;
  *v10 = v11;

  free(a1);
}

uint64_t sub_100026404(unsigned int a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_100016754(0x40uLL);
  if (!v10)
  {
    return 0xFFFFFFFFLL;
  }

  v11 = v10;
  if ((sub_1000162A8(v10 + 2) & 0x80000000) != 0)
  {
    free(v11);
    return 0xFFFFFFFFLL;
  }

  v12 = v11[3];
  v13 = v11[2] + a1;
  v11[2] = v13;
  v14 = v12 + a2;
  if (v14 > 999999)
  {
    v15 = v14 - 1999999;
    if (v14 < 0x1E847F)
    {
      v15 = 0;
    }

    v16 = (v15 + 999999) / 0xF4240uLL;
    v13 += v16 + 1;
    v14 = v14 - 1000000 * v16 - 1000000;
    v11[2] = v13;
  }

  v11[3] = v14;
  v11[4] = a4;
  v11[5] = a5;
  v11[6] = a3;
  valuePtr = v14 / 1000000.0 + v13;
  v17 = CFNumberCreate(kCFAllocatorDefault, kCFNumberDoubleType, &valuePtr);
  v29.version = 0;
  v29.info = v17;
  v29.retain = &CFRetain;
  v29.release = &_CFRelease;
  v29.copyDescription = 0;
  Current = CFAbsoluteTimeGetCurrent();
  v19 = CFRunLoopTimerCreate(kCFAllocatorDefault, a2 / 1000000.0 + Current + a1, 0.0, 0, 0, sub_1000262D0, &v29);
  if (v19)
  {
    v20 = v19;
    v11[7] = v19;
    v22 = &xmmword_100040470 + 1;
    v21 = xmmword_100040470;
    if (xmmword_100040470 != &xmmword_100040470)
    {
      v23 = v11[2];
      while (1)
      {
        v24 = *(v21 + 2);
        if (v23 < v24 || v23 == v24 && v11[3] < *(v21 + 3))
        {
          break;
        }

        v21 = *v21;
        if (v21 == &xmmword_100040470)
        {
          v22 = &xmmword_100040470 + 1;
          goto LABEL_18;
        }
      }

      v22 = v21 + 1;
    }

LABEL_18:
    v26 = *v22;
    v27 = **v22;
    *v11 = v27;
    v11[1] = v26;
    *(v27 + 8) = v11;
    *v26 = v11;
    v28 = CFRunLoopGetCurrent();
    CFRunLoopAddTimer(v28, v20, kCFRunLoopDefaultMode);
  }

  if (v17)
  {
    CFRelease(v17);
  }

  return 0;
}

uint64_t sub_10002662C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = xmmword_100040470;
  if (xmmword_100040470 == &xmmword_100040470)
  {
    return 0;
  }

  v12 = 0;
  do
  {
    v13 = *v9;
    if (v9[6] == a1 && (a2 == -1 || v9[4] == a2) && (a3 == -1 || v9[5] == a3))
    {
      sub_100026388(v9, a2, a3, a4, a5, a6, a7, a8);
      v12 = (v12 + 1);
    }

    v9 = v13;
  }

  while (v13 != &xmmword_100040470);
  return v12;
}

uint64_t sub_1000266D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  for (i = xmmword_100040470; ; i = *i)
  {
    if (i == &xmmword_100040470)
    {
      return 0;
    }

    if (*(i + 6) == a1 && *(i + 4) == a2 && *(i + 5) == a3)
    {
      break;
    }
  }

  return 1;
}

void sub_100026724(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v17 = a1;
  sub_100016A20(1, "%s, signal = %d", a3, a4, a5, a6, a7, a8, "eloop_handle_signals");
  Current = CFRunLoopGetCurrent();
  if (a1 == 1)
  {
    sub_100016A20(1, "%s, stopping the run loop %p", v10, v11, v12, v13, v14, v15, "eloop_handle_signals");
    v16 = CFRunLoopGetCurrent();
    CFRunLoopStop(v16);
    pthread_exit(&v17);
  }

  CFRunLoopStop(Current);
}

uint64_t sub_1000267AC(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_100016A20(1, "%s, signal = %d", a3, a4, a5, a6, a7, a8, "eloop_register_signal");
  signal(a1, sub_100026724);
  return 0;
}

uint64_t sub_10002680C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_100016A20(1, "%s, signal = %d", a3, a4, a5, a6, a7, a8, "eloop_register_signal");
  signal(2, sub_100026724);
  sub_100016A20(1, "%s, signal = %d", v8, v9, v10, v11, v12, v13, "eloop_register_signal");
  signal(15, sub_100026724);
  return 0;
}

uint64_t sub_10002689C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  Current = CFRunLoopGetCurrent();
  sub_100016A20(2, "eloop_run (%p)", v10, v11, v12, v13, v14, v15, Current);
  CFRunLoopRun();

  return sub_100016A20(2, "eloop_run done", v16, v17, v18, v19, v20, v21, a9);
}

void sub_1000268F0()
{
  dword_100040498 = 1;
  getpid();
  CFRunLoopGetCurrent();
  sub_100016A20(2, "%s pid = %u, (%p)", v0, v1, v2, v3, v4, v5, "eloop_terminate");
  Current = CFRunLoopGetCurrent();

  CFRunLoopStop(Current);
}

void sub_100026980(__CFRunLoop *a1)
{
  dword_100040498 = 1;
  getpid();
  sub_100016A20(2, "%s pid = %u, (%p)", v2, v3, v4, v5, v6, v7, "eloop_terminate_loop");

  CFRunLoopStop(a1);
}

FILE *sub_1000269EC(int a1)
{
  v15 = 128;
  if (a1 >= 1)
  {
    v2 = malloc_type_malloc(0x118uLL, 0x10000406FAD1563uLL);
    *(v2 + 4) = 0u;
    v3 = (v2 + 4);
    *(v2 + 20) = 0u;
    *(v2 + 36) = 0u;
    *(v2 + 52) = 0u;
    *(v2 + 68) = 0u;
    *(v2 + 84) = 0u;
    *(v2 + 100) = 0u;
    *(v2 + 116) = 0u;
    *(v2 + 148) = 0u;
    *(v2 + 164) = 0u;
    *(v2 + 180) = 0u;
    *(v2 + 196) = 0u;
    *(v2 + 212) = 0u;
    *(v2 + 228) = 0u;
    *(v2 + 244) = 0u;
    *(v2 + 69) = 0;
    *(v2 + 260) = 0u;
    *(v2 + 132) = 0u;
    v4 = v2 + 132;
    *v2 = a1;
    *(v2 + 132) = 0u;
    *(v2 + 148) = 0u;
    *(v2 + 164) = 0u;
    *(v2 + 180) = 0u;
    *(v2 + 196) = 0u;
    *(v2 + 212) = 0u;
    *(v2 + 228) = 0u;
    *(v2 + 244) = 0u;
    if (__darwin_check_fd_set_overflow(a1, v2 + 132, 0))
    {
      *(v4 + (a1 >> 5)) |= 1 << a1;
    }

    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v16 = 0;
    v17 = 0u;
    *(v2 + 33) = 5;
    *(v2 + 34) = 0;
    v5 = *(v2 + 212);
    *(v2 + 68) = *(v2 + 196);
    *(v2 + 84) = v5;
    v6 = *(v2 + 244);
    *(v2 + 100) = *(v2 + 228);
    *(v2 + 116) = v6;
    v7 = *(v2 + 148);
    *v3->fds_bits = *v4;
    *(v2 + 20) = v7;
    v8 = *(v2 + 180);
    *(v2 + 36) = *(v2 + 164);
    *(v2 + 52) = v8;
    *(v2 + 65) = 0;
    v9 = pselect(*v2 + 1, v3, 0, 0, (v2 + 264), v2 + 65);
    if (v9 < 0)
    {
      v13 = *__error();
      asl_log(0, 0, 3, "pselect error (%d), leaving");
    }

    else if (v9)
    {
      v10 = *v2;
      if (__darwin_check_fd_set_overflow(*v2, v3, 0) && ((*(v3->fds_bits + ((v10 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) >> v10) & 1) != 0)
      {
        v11 = accept(*v2, &v16, &v15);
        if ((v11 & 0x80000000) == 0)
        {
          return fdopen(v11, "r+");
        }

        v14 = *__error();
        asl_log(0, 0, 3, "accept error (%d). Continuing.");
      }
    }

    else
    {
      asl_log(0, 0, 3, "pselect timed out (no more requests); leaving");
    }
  }

  return 0;
}

uint64_t sub_100026C20()
{
  v0 = launch_data_new_string("CheckIn");
  v1 = launch_msg(v0);
  if (!v1)
  {
    sub_10002ADC8();
    fd = 0xFFFFFFFFLL;
    if (!v0)
    {
      return fd;
    }

    goto LABEL_9;
  }

  v2 = v1;
  if (launch_data_get_type(v1) != LAUNCH_DATA_ERRNO)
  {
    v7 = launch_data_dict_lookup(v2, "Sockets");
    if (v7)
    {
      v8 = launch_data_dict_lookup(v7, "Listeners");
      if (v8)
      {
        index = launch_data_array_get_index(v8, 0);
        if (index)
        {
          fd = launch_data_get_fd(index);
          if ((fd & 0x80000000) == 0)
          {
            goto LABEL_8;
          }

          v11 = "Invalid listen file descriptor!";
LABEL_18:
          asl_log(0, 0, 4, "%s", v11);
LABEL_8:
          launch_data_free(v2);
          if (!v0)
          {
            return fd;
          }

LABEL_9:
          launch_data_free(v0);
          return fd;
        }

        v11 = "No listener socket array entry!";
      }

      else
      {
        v11 = "No listener socket found!";
      }
    }

    else
    {
      v11 = "No socket dictionary found!";
    }

    fd = 0xFFFFFFFFLL;
    goto LABEL_18;
  }

  v3 = __error();
  v4 = strerror(*v3);
  errno = launch_data_get_errno(v2);
  asl_log(0, 0, 3, "Check in with launchd returned an error; %s (%d)", v4, errno);
  return 0xFFFFFFFFLL;
}

uint64_t sub_100026D64(uint64_t a1, unint64_t a2, unint64_t a3, _BYTE *a4, unint64_t a5)
{
  v5 = 0;
  v6 = xmmword_10002C980;
  v7.i64[0] = 0x1010101010101010;
  v7.i64[1] = 0x1010101010101010;
  do
  {
    *&v21[v5] = v6;
    v5 += 16;
    v6 = vaddq_s8(v6, v7);
  }

  while (v5 != 256);
  v8 = 0;
  v9 = 0;
  v10 = 0;
  do
  {
    v11 = v21[v8];
    v9 += v11 + *(a1 + v10);
    if (v10 + 1 < a2)
    {
      ++v10;
    }

    else
    {
      v10 = 0;
    }

    v21[v8] = v21[v9];
    v21[v9] = v11;
    ++v8;
  }

  while (v8 != 256);
  if (!a3)
  {
    v13 = 0;
    LOBYTE(v12) = 0;
    if (!a5)
    {
      return 0;
    }

    goto LABEL_14;
  }

  LOBYTE(v12) = 0;
  v13 = 0;
  v14 = 1;
  do
  {
    v12 = (v12 + 1);
    v15 = v21[v12];
    v13 += v15;
    v21[v12] = v21[v13];
    v21[v13] = v15;
    v16 = v14++;
  }

  while (v16 < a3);
  if (a5)
  {
LABEL_14:
    v17 = 1;
    do
    {
      v12 = (v12 + 1);
      v18 = v21[v12];
      v13 += v18;
      v21[v12] = v21[v13];
      v21[v13] = v18;
      *a4++ ^= v21[(v21[v12] + v18)];
      v19 = v17++;
    }

    while (v19 < a5);
  }

  return 0;
}

_DWORD *sub_100026ED4(_DWORD *result, unsigned int *a2, _DWORD *a3)
{
  v3 = 0;
  v4 = bswap32(*a2) ^ *result;
  v5 = bswap32(a2[1]) ^ result[1];
  v6 = a2[3];
  v7 = bswap32(a2[2]) ^ result[2];
  v8 = bswap32(v6);
  v9 = result + 3;
  while (1)
  {
    v10 = &v9[v3];
    v11 = v8 ^ v9[v3];
    v12 = *(&unk_10002BFC0 + HIBYTE(v4)) ^ __ROR4__(*(&unk_10002BFC0 + BYTE2(v5)), 8) ^ __ROR4__(*(&unk_10002BFC0 + BYTE1(v7)), 16) ^ __ROR4__(*(&unk_10002BFC0 + v11), 24) ^ v9[v3 + 1];
    v13 = *(&unk_10002BFC0 + HIBYTE(v5)) ^ __ROR4__(*(&unk_10002BFC0 + BYTE2(v7)), 8) ^ __ROR4__(*(&unk_10002BFC0 + BYTE1(v11)), 16) ^ __ROR4__(*(&unk_10002BFC0 + v4), 24) ^ v9[v3 + 2];
    v14 = *(&unk_10002BFC0 + HIBYTE(v11));
    v15 = *(&unk_10002BFC0 + HIBYTE(v7)) ^ __ROR4__(*(&unk_10002BFC0 + BYTE2(v11)), 8) ^ __ROR4__(*(&unk_10002BFC0 + BYTE1(v4)), 16) ^ __ROR4__(*(&unk_10002BFC0 + v5), 24) ^ v9[v3 + 3];
    v16 = v14 ^ __ROR4__(*(&unk_10002BFC0 + BYTE2(v4)), 8) ^ __ROR4__(*(&unk_10002BFC0 + BYTE1(v5)), 16) ^ __ROR4__(*(&unk_10002BFC0 + v7), 24) ^ v9[v3 + 4];
    v17 = *(&unk_10002BFC0 + HIBYTE(v12));
    v18 = HIBYTE(v13);
    v19 = HIBYTE(v15);
    v20 = BYTE1(v12);
    v21 = HIBYTE(v16);
    v22 = BYTE2(v12);
    if ((v3 * 4) == 128)
    {
      break;
    }

    HIDWORD(v23) = *(&unk_10002BFC0 + BYTE2(v13));
    LODWORD(v23) = HIDWORD(v23);
    v4 = (v23 >> 8) ^ __ROR4__(*(&unk_10002BFC0 + BYTE1(v15)), 16) ^ __ROR4__(*(&unk_10002BFC0 + v16), 24) ^ v10[5] ^ v17;
    v5 = *(&unk_10002BFC0 + v18) ^ __ROR4__(*(&unk_10002BFC0 + BYTE2(v15)), 8) ^ __ROR4__(*(&unk_10002BFC0 + BYTE1(v16)), 16) ^ __ROR4__(*(&unk_10002BFC0 + v12), 24) ^ v10[6];
    v24 = *(&unk_10002BFC0 + v21);
    v7 = *(&unk_10002BFC0 + v19) ^ __ROR4__(*(&unk_10002BFC0 + BYTE2(v16)), 8) ^ __ROR4__(*(&unk_10002BFC0 + v20), 16) ^ __ROR4__(*(&unk_10002BFC0 + v13), 24) ^ v10[7];
    v3 += 8;
    v8 = v24 ^ __ROR4__(*(&unk_10002BFC0 + v22), 8) ^ __ROR4__(*(&unk_10002BFC0 + BYTE1(v13)), 16) ^ __ROR4__(*(&unk_10002BFC0 + v15), 24);
  }

  *a3 = bswap32(((v17 << 8) & 0xFF000000 | (*(&unk_10002BFC0 + 4 * BYTE2(v13) + 2) << 16) | (*(&unk_10002BFC0 + 4 * BYTE1(v15) + 1) << 8) | *(&unk_10002BFC0 + 4 * v16 + 1)) ^ result[40]);
  a3[1] = bswap32(((*(&unk_10002BFC0 + v18) << 8) & 0xFF000000 | (*(&unk_10002BFC0 + 4 * BYTE2(v15) + 2) << 16) | (*(&unk_10002BFC0 + 4 * BYTE1(v16) + 1) << 8) | *(&unk_10002BFC0 + 4 * v12 + 1)) ^ result[41]);
  a3[2] = bswap32(((*(&unk_10002BFC0 + v19) << 8) & 0xFF000000 | (*(&unk_10002BFC0 + 4 * BYTE2(v16) + 2) << 16) | (*(&unk_10002BFC0 + 4 * BYTE1(v12) + 1) << 8) | *(&unk_10002BFC0 + 4 * v13 + 1)) ^ result[42]);
  a3[3] = bswap32(((*(&unk_10002BFC0 + v21) << 8) & 0xFF000000 | (*(&unk_10002BFC0 + 4 * BYTE2(v12) + 2) << 16) | (*(&unk_10002BFC0 + 4 * BYTE1(v13) + 1) << 8) | *(&unk_10002BFC0 + 4 * v15 + 1)) ^ result[43]);
  return result;
}

unsigned int *sub_1000271DC(unsigned int *a1, uint64_t a2)
{
  if (a2 != 16)
  {
    return 0;
  }

  v3 = malloc_type_malloc(0xB0uLL, 0x84FEBC26uLL);
  v4 = v3;
  if (v3)
  {
    sub_10001F4B8(v3, a1);
  }

  return v4;
}

void sub_100027238(void *a1)
{
  *(a1 + 9) = 0u;
  *(a1 + 10) = 0u;
  *(a1 + 7) = 0u;
  *(a1 + 8) = 0u;
  *(a1 + 5) = 0u;
  *(a1 + 6) = 0u;
  *(a1 + 3) = 0u;
  *(a1 + 4) = 0u;
  *(a1 + 1) = 0u;
  *(a1 + 2) = 0u;
  *a1 = 0u;
  free(a1);
}

unsigned int *sub_100027258(unsigned int *a1, unsigned int *a2)
{
  v2 = a1;
  result = sub_10001F4B8(a1, a2);
  v4 = 0;
  v5 = (v2 + 43);
  v6 = (v2 + 2);
  v7 = 36;
  do
  {
    v8 = *(v6 - 2);
    *(v6 - 2) = *(v5 - 3);
    *(v5 - 3) = v8;
    v9 = *(v6 - 1);
    *(v6 - 1) = *(v5 - 2);
    *(v5 - 2) = v9;
    v10 = *v6;
    *v6 = *(v5 - 1);
    *(v5 - 1) = v10;
    v11 = v6[1];
    v6[1] = *v5;
    *v5 = v11;
    v5 -= 4;
    v4 += 4;
    v6 += 4;
    v12 = v4 >= v7;
    v7 -= 4;
  }

  while (!v12);
  for (i = 1; i != 10; ++i)
  {
    for (j = 4; j != 8; ++j)
    {
      v15 = v2[j];
      v2[j] = dword_10002C3C0[byte_10002BFC0[((v15 >> 22) & 0x3FC) + 1]] ^ __ROR4__(dword_10002C3C0[byte_10002BFC0[4 * BYTE2(v15) + 1]], 8) ^ __ROR4__(dword_10002C3C0[byte_10002BFC0[4 * BYTE1(v15) + 1]], 16) ^ __ROR4__(dword_10002C3C0[byte_10002BFC0[4 * v15 + 1]], 24);
    }

    v2 += 4;
  }

  return result;
}

unsigned int *sub_100027370(unsigned int *a1, uint64_t a2)
{
  if (a2 != 16)
  {
    return 0;
  }

  v3 = malloc_type_malloc(0xB0uLL, 0x32E6D5F7uLL);
  v4 = v3;
  if (v3)
  {
    sub_100027258(v3, a1);
  }

  return v4;
}

_DWORD *sub_1000273C8(_DWORD *result, unsigned int *a2, _DWORD *a3)
{
  v3 = 0;
  v4 = bswap32(*a2) ^ *result;
  v5 = bswap32(a2[1]) ^ result[1];
  v6 = a2[3];
  v7 = bswap32(a2[2]) ^ result[2];
  v8 = bswap32(v6);
  v9 = result + 3;
  while (1)
  {
    v10 = &v9[v3];
    v11 = v9[v3] ^ v8;
    v12 = (dword_10002C3C0[HIBYTE(v4)] ^ __ROR4__(dword_10002C3C0[BYTE2(v11)], 8)) ^ __ROR4__(dword_10002C3C0[BYTE1(v7)], 16) ^ __ROR4__(dword_10002C3C0[v5], 24) ^ v9[v3 + 1];
    v13 = (dword_10002C3C0[HIBYTE(v5)] ^ __ROR4__(dword_10002C3C0[BYTE2(v4)], 8)) ^ __ROR4__(dword_10002C3C0[BYTE1(v11)], 16) ^ __ROR4__(dword_10002C3C0[v7], 24) ^ v9[v3 + 2];
    v14 = (dword_10002C3C0[HIBYTE(v7)] ^ __ROR4__(dword_10002C3C0[BYTE2(v5)], 8)) ^ __ROR4__(dword_10002C3C0[BYTE1(v4)], 16) ^ __ROR4__(dword_10002C3C0[v11], 24) ^ v9[v3 + 3];
    v15 = (dword_10002C3C0[HIBYTE(v11)] ^ __ROR4__(dword_10002C3C0[BYTE2(v7)], 8)) ^ __ROR4__(dword_10002C3C0[BYTE1(v5)], 16) ^ __ROR4__(dword_10002C3C0[v4], 24) ^ v9[v3 + 4];
    v16 = v12 >> 24;
    if ((v3 * 4) == 128)
    {
      break;
    }

    v4 = dword_10002C3C0[v16] ^ __ROR4__(dword_10002C3C0[BYTE2(v15)], 8) ^ __ROR4__(dword_10002C3C0[BYTE1(v14)], 16) ^ __ROR4__(dword_10002C3C0[v13], 24) ^ v10[5];
    v5 = dword_10002C3C0[BYTE3(v13)] ^ __ROR4__(dword_10002C3C0[BYTE2(v12)], 8) ^ __ROR4__(dword_10002C3C0[BYTE1(v15)], 16) ^ __ROR4__(dword_10002C3C0[v14], 24) ^ v10[6];
    v7 = dword_10002C3C0[BYTE3(v14)] ^ __ROR4__(dword_10002C3C0[BYTE2(v13)], 8) ^ __ROR4__(dword_10002C3C0[BYTE1(v12)], 16) ^ __ROR4__(dword_10002C3C0[v15], 24) ^ v10[7];
    v3 += 8;
    v8 = dword_10002C3C0[BYTE3(v15)] ^ __ROR4__(dword_10002C3C0[BYTE2(v14)], 8) ^ __ROR4__(dword_10002C3C0[BYTE1(v13)], 16) ^ __ROR4__(dword_10002C3C0[v12], 24);
  }

  *a3 = bswap32(((byte_10002C7C0[v16] << 24) | (byte_10002C7C0[BYTE2(v15)] << 16) | (byte_10002C7C0[BYTE1(v14)] << 8) | byte_10002C7C0[v13]) ^ result[40]);
  a3[1] = bswap32(((byte_10002C7C0[v13 >> 24] << 24) | (byte_10002C7C0[BYTE2(v12)] << 16) | (byte_10002C7C0[BYTE1(v15)] << 8) | byte_10002C7C0[v14]) ^ result[41]);
  a3[2] = bswap32(((byte_10002C7C0[v14 >> 24] << 24) | (byte_10002C7C0[BYTE2(v13)] << 16) | (byte_10002C7C0[BYTE1(v12)] << 8) | byte_10002C7C0[v15]) ^ result[42]);
  a3[3] = bswap32(((byte_10002C7C0[v15 >> 24] << 24) | (byte_10002C7C0[BYTE2(v14)] << 16) | (byte_10002C7C0[BYTE1(v13)] << 8) | byte_10002C7C0[v12]) ^ result[43]);
  return result;
}

uint64_t sub_1000276B4(uint64_t a1, __int128 **a2, _DWORD *a3, _OWORD *a4)
{
  v16 = 0u;
  v15 = 0u;
  v14 = 0u;
  v13 = 0u;
  v11 = xmmword_10002C990;
  v12 = 0;
  if (a1)
  {
    v7 = a1;
    do
    {
      v9 = *a2++;
      v8 = v9;
      LODWORD(v9) = *a3;
      a3 += 2;
      sub_100027780(&v11, v8, v9);
      --v7;
    }

    while (v7);
  }

  sub_100027870(a4, &v11);
  return 0;
}

double sub_10002776C(uint64_t a1)
{
  result = -3.59869635e230;
  *a1 = xmmword_10002C990;
  *(a1 + 16) = 0;
  return result;
}