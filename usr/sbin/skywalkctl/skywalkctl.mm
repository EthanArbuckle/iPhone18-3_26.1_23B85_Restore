const char *sub_1000006C8(unsigned int a1)
{
  if (a1 > 4)
  {
    return "???";
  }

  else
  {
    return off_100020388[a1];
  }
}

void *sub_1000006EC(uint64_t a1, uint64_t a2)
{
  result = malloc_type_realloc(*(a1 + 48), 8 * *(a1 + 40) + 8, 0x13A376F4uLL);
  *(a1 + 48) = result;
  v5 = *(a1 + 40);
  result[v5] = a2;
  *(a1 + 40) = v5 + 1;
  return result;
}

uint64_t sub_100000740(const unsigned __int8 *a1, const unsigned __int8 *a2)
{
  v3 = a1;
  if (uuid_compare(a1, a2))
  {
    if (*(v3 + 10) < 1)
    {
      return 0;
    }

    else
    {
      v4 = 0;
      while (1)
      {
        v5 = sub_100000740(*(*(v3 + 6) + 8 * v4), a2);
        if (v5)
        {
          break;
        }

        if (++v4 >= *(v3 + 10))
        {
          return 0;
        }
      }

      return v5;
    }
  }

  return v3;
}

void sub_1000007B8(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 48);
    if (v2)
    {
      if (*(a1 + 40) >= 1)
      {
        v3 = 0;
        do
        {
          sub_1000007B8(*(*(a1 + 48) + 8 * v3++));
        }

        while (v3 < *(a1 + 40));
        v2 = *(a1 + 48);
      }

      free(v2);
      v4 = **(a1 + 32);
      if (v4)
      {
        v4(a1);
      }
    }

    free(a1);
  }
}

uint64_t sub_100000844(uint64_t a1, FILE *a2, int a3)
{
  memset(out, 0, 37);
  strcpy(v12, "                     ");
  if (a3 >= 7)
  {
    v5 = 7;
  }

  else
  {
    v5 = a3;
  }

  v12[3 * v5] = 0;
  uuid_unparse_upper(a1, out);
  fprintf(a2, "%s{\n", v12);
  fprintf(a2, "%suuid:%s,\n", v12, out);
  v6 = *(a1 + 16);
  if (v6 > 4)
  {
    v7 = "???";
  }

  else
  {
    v7 = off_100020388[v6];
  }

  fprintf(a2, "%stype:%s,\n", v12, v7);
  v8 = *(*(a1 + 32) + 8);
  if (v8)
  {
    v8(a1, a2, v12);
  }

  if (*(a1 + 48))
  {
    fprintf(a2, "%schildren: [\n", v12);
    if (*(a1 + 40) >= 1)
    {
      v9 = 0;
      do
      {
        sub_100000844(*(*(a1 + 48) + 8 * v9), a2, (v5 + 1));
        if (v9 >= *(a1 + 40) - 1)
        {
          v10 = 32;
        }

        else
        {
          v10 = 44;
        }

        fprintf(a2, "%c\n", v10);
        ++v9;
      }

      while (v9 < *(a1 + 40));
    }

    fprintf(a2, "%s]\n", v12);
  }

  else
  {
    fprintf(a2, "%schildren: []\n");
  }

  return fprintf(a2, "%s}", v12);
}

uint64_t sub_100000A50(uint64_t a1, FILE *a2, const char *a3)
{
  v5 = *(a1 + 24);
  fprintf(a2, "%sname:%.*s,\n", a3, *(v5 + 64), v5);
  v6 = *(v5 + 120);
  v7 = sub_100010858(*(v5 + 68));
  fprintf(a2, "%sprovider_type:%s,\n", a3, v7);
  fprintf(a2, "%sflags:%d,\n", a3, *(v5 + 80));
  if (*(v5 + 80))
  {
    v8 = "true";
  }

  else
  {
    v8 = "false";
  }

  fprintf(a2, "%sanonymous:%s,\n", a3, v8);
  fprintf(a2, "%sformat:%d,\n", a3, *(v5 + 84));
  fprintf(a2, "%stx_rings:%d,\n", a3, *(v5 + 88));
  fprintf(a2, "%srx_rings:%d,\n", a3, *(v5 + 92));
  fprintf(a2, "%stx_slots:%d,\n", a3, *(v5 + 96));
  fprintf(a2, "%srx_slots:%d,\n", a3, *(v5 + 100));
  fprintf(a2, "%sbuf_size:%d,\n", a3, *(v5 + 104));
  fprintf(a2, "%smeta_size:%d,\n", a3, *(v5 + 108));
  fprintf(a2, "%spipes:%d,\n", a3, *(v5 + 116));
  fprintf(a2, "%smhints:%d,\n", a3, *(v5 + 124));
  return fprintf(a2, "%sifindex:%d,\n", a3, *(v5 + 128));
}

uint64_t sub_100000C04(uint64_t a1, FILE *a2, const char *a3)
{
  v5 = *(a1 + 24);
  fprintf(a2, "%sflags:%d,\n", a3, *(v5 + 16));
  fprintf(a2, "%spid:%d,\n", a3, *(v5 + 20));
  v6 = sub_10001087C(*(v5 + 20), v8, 0x20uLL, 0);
  fprintf(a2, "%sproc_name:%s,\n", a3, v6);
  fprintf(a2, "%sfd:%d,\n", a3, *(v5 + 24));
  fprintf(a2, "%sport:%d,\n", a3, *(v5 + 28));
  fprintf(a2, "%sn_tx_rings:%d,\n", a3, *(v5 + 32));
  return fprintf(a2, "%sn_rx_rings:%d,\n", a3, *(v5 + 36));
}

uint64_t sub_100000D48(uint64_t a1, FILE *a2, const char *a3)
{
  v5 = *(a1 + 24);
  v6 = sub_1000107D4(*(v5 + 134));
  v7 = *(v5 + 146);
  if (v7 == 96)
  {
    v12 = inet_ntop(30, (v5 + 152), v18, 0x2Eu);
    fprintf(a2, "%slocal_addr:%s,\n", a3, v12);
    fprintf(a2, "%slocal_port:%d,\n", a3, bswap32(*(v5 + 148)) >> 16);
    v9 = (v5 + 168);
    v10 = 30;
    v11 = 46;
  }

  else
  {
    if (v7 != 4)
    {
      fprintf(__stderrp, "unknown ip version %d\n", *(v5 + 146));
      exit(-1);
    }

    v8 = inet_ntop(2, (v5 + 152), v18, 0x10u);
    fprintf(a2, "%slocal_addr:%s,\n", a3, v8);
    fprintf(a2, "%slocal_port:%d,\n", a3, bswap32(*(v5 + 148)) >> 16);
    v9 = (v5 + 168);
    v10 = 2;
    v11 = 16;
  }

  v13 = inet_ntop(v10, v9, v18, v11);
  fprintf(a2, "%sremote_addr:%s,\n", a3, v13);
  fprintf(a2, "%sremote_port:%d,\n", a3, bswap32(*(v5 + 150)) >> 16);
  fprintf(a2, "%sprotocol:%s,\n", a3, v6);
  fprintf(a2, "%sin_bytes:%llu,\n", a3, *(v5 + 232));
  fprintf(a2, "%sout_bytes:%llu,\n", a3, *(v5 + 192));
  fprintf(a2, "%sin_packets:%llu,\n", a3, *(v5 + 240));
  fprintf(a2, "%sout_packets:%llu,\n", a3, *(v5 + 200));
  fprintf(a2, "%sinterface:%s,\n", a3, (v5 + 32));
  v14 = sub_1000113A8(*(v5 + 128));
  fprintf(a2, "%sflags:%s,\n", a3, v14);
  v15 = sub_100011240(*(v5 + 216));
  fprintf(a2, "%slocal_state:%s,\n", a3, v15);
  v16 = sub_100011240(*(v5 + 256));
  fprintf(a2, "%sremote_state:%s,\n", a3, v16);
  fprintf(a2, "%sprocess:%s,\n", a3, (v5 + 64));
  fprintf(a2, "%spid:%d,\n", a3, *(v5 + 56));
  fprintf(a2, "%seprocess:%s,\n", a3, (v5 + 96));
  return fprintf(a2, "%sepid:%d,\n", a3, *(v5 + 60));
}

uint64_t sub_10000101C(uint64_t *a1)
{
  v36 = 0;
  v37 = 0;
  v2 = sub_100010720(0x38uLL);
  *a1 = v2;
  *v2 = 0u;
  v2[1] = 0u;
  v2[2] = 0u;
  *(v2 + 6) = 0;
  v3 = *a1;
  *(v3 + 16) = 0;
  *(v3 + 32) = &unk_100028480;
  *(*a1 + 48) = 0;
  *(*a1 + 40) = 0;
  v4 = sub_100010BCC("kern.skywalk.nexus_provider_list", &v37, &v36);
  v5 = v4;
  if (!v4 && (v6 = v37) != 0 && (v7 = v36) != 0)
  {
    v8 = *(*a1 + 40);
    do
    {
      v9 = 16 * *(v6 + 64) + 264;
      v6 += v9;
      ++v8;
      v7 -= v9;
    }

    while (v7);
    *(*a1 + 40) = v8;
    *(*a1 + 48) = sub_100010720(8 * v8);
    v10 = v36;
    if (v36)
    {
      v11 = 0;
      v12 = v37;
      v13 = &off_100028000;
      v35 = a1;
      do
      {
        v14 = sub_100010720(0x38uLL);
        *(*(*a1 + 48) + 8 * v11) = v14;
        v14[4] = 1;
        *(v14 + 4) = v13;
        uuid_copy(v14, v12);
        v15 = sub_100010720(0xC0uLL);
        *(v14 + 3) = v15;
        v16 = *(v12 + 7);
        v18 = *(v12 + 4);
        v17 = *(v12 + 5);
        v15[2] = *(v12 + 6);
        v15[3] = v16;
        *v15 = v18;
        v15[1] = v17;
        v19 = *(v12 + 11);
        v21 = *(v12 + 8);
        v20 = *(v12 + 9);
        v15[6] = *(v12 + 10);
        v15[7] = v19;
        v15[4] = v21;
        v15[5] = v20;
        v22 = *(v12 + 15);
        v24 = *(v12 + 12);
        v23 = *(v12 + 13);
        v15[10] = *(v12 + 14);
        v15[11] = v22;
        v15[8] = v24;
        v15[9] = v23;
        v25 = *(v12 + 64);
        v14[10] = v25;
        if (v25)
        {
          v26 = sub_100010720(8 * v25);
          v27 = *(v12 + 64);
          *(v14 + 6) = v26;
          if (v27)
          {
            v28 = v13;
            v29 = 0;
            v30 = v12 + 264;
            do
            {
              v31 = sub_100010720(0x38uLL);
              v31[4] = 2;
              *(v31 + 4) = &unk_100028498;
              uuid_copy(v31, v30);
              v31[10] = 0;
              *(v31 + 6) = 0;
              *(*(v14 + 6) + 8 * v29++) = v31;
              v32 = *(v12 + 64);
              v30 += 16;
            }

            while (v29 < v32);
            v33 = 16 * v32 + 264;
            v13 = v28;
            a1 = v35;
            goto LABEL_15;
          }
        }

        else
        {
          *(v14 + 6) = 0;
        }

        v33 = 264;
LABEL_15:
        v12 += v33;
        ++v11;
        v10 -= v33;
      }

      while (v10);
    }

    qsort(*(*a1 + 48), *(*a1 + 40), 8uLL, sub_100001278);
    return 0;
  }

  else if (v4)
  {
    sub_1000007B8(*a1);
    *a1 = 0;
  }

  return v5;
}

uint64_t sub_100001298(const unsigned __int8 *a1)
{
  v16 = 0;
  if (a1)
  {
    v1 = a1;
    v17 = 0;
    if (!sub_100010BCC("kern.skywalk.nexus_channel_list", &v17, &v16))
    {
      v2 = v17;
      if (v17)
      {
        v3 = v16;
        if (v16)
        {
          v15 = v1;
          do
          {
            if (v3 <= 0x17)
            {
LABEL_18:
              fwrite("Error, mismatching nexus_channel_info_t\n", 0x28uLL, 1uLL, __stderrp);
              exit(71);
            }

            v4 = (v2 + 24);
            v3 -= 24;
            v16 = v3;
            if (*(v2 + 4))
            {
              v5 = sub_100000740(v1, v2);
              if (v5)
              {
                v6 = v5;
                v7 = *(v2 + 4);
                *(v5 + 40) = v7;
                v8 = sub_100010720(8 * v7);
                *(v6 + 48) = v8;
                if (*(v2 + 4))
                {
                  v9 = 0;
                  do
                  {
                    v10 = 144 * (*(v4 + 9) + *(v4 + 8)) + 48;
                    if (v16 < v10)
                    {
                      goto LABEL_18;
                    }

                    v11 = &v4[v10];
                    v16 -= v10;
                    v12 = sub_100010720(0x38uLL);
                    *(*(v6 + 48) + 8 * v9) = v12;
                    v12[10] = 0;
                    *(v12 + 6) = 0;
                    v12[4] = 3;
                    *(v12 + 4) = &off_100028018;
                    uuid_copy(v12, v4);
                    v13 = sub_100010720(v10);
                    *(v12 + 3) = v13;
                    memcpy(v13, v4, v10);
                    ++v9;
                    v4 += v10;
                  }

                  while (v9 < *(v2 + 4));
                  v8 = *(v6 + 48);
                  v4 = v11;
                  v1 = v15;
                }

                qsort(v8, *(v6 + 40), 8uLL, off_100028028[0]);
              }

              v3 = v16;
            }

            v2 = v4;
          }

          while (v3);
        }
      }
    }
  }

  return 0;
}

uint64_t sub_100001448(uint64_t result)
{
  v10 = 0;
  if (result)
  {
    v1 = result;
    v9 = 0;
    result = sub_100010BCC("kern.skywalk.stats.flow", &v9, &v10);
    if (!result)
    {
      v2 = v9;
      if (v9)
      {
        if (v10)
        {
          if (__ROR8__(0x86BCA1AF286BCA1BLL * v10, 4) > 0xD79435E50D7943uLL)
          {
            fwrite("Error, mismatching sk_stats_flow, quit\n", 0x27uLL, 1uLL, __stderrp);
            exit(71);
          }

          if (&v9[v10] > v9)
          {
            do
            {
              v3 = sub_100000740(v1, v2);
              if (v3)
              {
                v4 = *(v3 + 40);
                if (v4 >= 1)
                {
                  v5 = *(v3 + 48);
                  while (1)
                  {
                    v6 = *v5;
                    if (*(*(*v5 + 24) + 28) == *(v2 + 66))
                    {
                      break;
                    }

                    ++v5;
                    if (!--v4)
                    {
                      goto LABEL_15;
                    }
                  }

                  v7 = sub_100010720(0x38uLL);
                  sub_1000006EC(v6, v7);
                  v7[10] = 0;
                  *(v7 + 6) = 0;
                  v7[4] = 4;
                  *(v7 + 4) = off_100028030;
                  v8 = sub_100010720(0x130uLL);
                  *(v7 + 3) = v8;
                  memmove(v8, v2, 0x130uLL);
                }
              }

              else
              {
                fwrite("orphan flow orphan nx_uuid", 0x1AuLL, 1uLL, __stderrp);
              }

LABEL_15:
              v2 += 304;
            }

            while (&v9[v10] > v2);
          }

          return 0;
        }
      }
    }
  }

  return result;
}

unint64_t sub_100001624(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24))
  {
    v2 = a2 | 1;
  }

  else
  {
    v2 = a2;
  }

  *(a1 + 24) = v2;
  return v2 & 0xFFFFFFFFFFFFFFFELL;
}

uint64_t sub_100001640(uint64_t result, unint64_t a2)
{
  v2 = *(a2 + 24);
  while (1)
  {
    v3 = (v2 & 0xFFFFFFFFFFFFFFFELL);
    if ((v2 & 0xFFFFFFFFFFFFFFFELL) == 0)
    {
      break;
    }

    v4 = v3[3];
    if ((v4 & 1) == 0)
    {
      break;
    }

    v5 = (v4 & 0xFFFFFFFFFFFFFFFELL);
    v6 = *((v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
    if (v6 == v3)
    {
      v11 = v5[2];
      if (v11)
      {
        v12 = *(v11 + 24);
        if (v12)
        {
          *(v11 + 24) = v12 & 0xFFFFFFFFFFFFFFFELL;
          goto LABEL_19;
        }
      }

      v13 = v3[2];
      if (v13 == a2)
      {
        v18 = *(v13 + 8);
        v3[2] = v18;
        if (v18)
        {
          v19 = v2 | 1;
          if ((*(v18 + 24) & 1) == 0)
          {
            v19 = v3;
          }

          *(v18 + 24) = v19;
          v20 = v3[3];
        }

        else
        {
          v20 = v4;
        }

        *(v13 + 24) = v20 & 0xFFFFFFFFFFFFFFFELL | *(v13 + 24) & 1;
        if ((v20 & 0xFFFFFFFFFFFFFFFELL) != 0)
        {
          v29 = v3[3];
          v30 = v29 & 0xFFFFFFFFFFFFFFFELL;
          if (*((v29 & 0xFFFFFFFFFFFFFFFELL) + 8) == v3)
          {
            *(v30 + 8) = v13;
          }

          else
          {
            *(v30 + 16) = v13;
          }
        }

        else
        {
          *result = v13;
          v29 = v3[3];
        }

        *(v13 + 8) = v3;
        if (v29)
        {
          v13 = a2 | 1;
        }

        v3[3] = v13;
        v6 = v5[1];
        v14 = *(a2 + 24) & 0xFFFFFFFFFFFFFFFELL;
        v10 = v3;
      }

      else
      {
        v14 = v4 & 0xFFFFFFFFFFFFFFFELL;
        v10 = a2;
        a2 = v3;
      }

      *(a2 + 24) = v14;
      v31 = v5[3] | 1;
      v5[3] = v31;
      v32 = *(v6 + 16);
      v5[1] = v32;
      if (v32)
      {
        if ((*(v32 + 24) & 1) == 0)
        {
          v4 &= ~1uLL;
        }

        *(v32 + 24) = v4;
        v31 = v5[3];
      }

      *(v6 + 24) = v31 & 0xFFFFFFFFFFFFFFFELL | *(v6 + 24) & 1;
      if ((v31 & 0xFFFFFFFFFFFFFFFELL) != 0)
      {
        v33 = v5[3];
        v34 = v33 & 0xFFFFFFFFFFFFFFFELL;
        if (*((v33 & 0xFFFFFFFFFFFFFFFELL) + 8) == v5)
        {
          *(v34 + 8) = v6;
        }

        else
        {
          *(v34 + 16) = v6;
        }
      }

      else
      {
        *result = v6;
        v33 = v5[3];
      }

      *(v6 + 16) = v5;
      if (v33)
      {
        v28 = v6 | 1;
      }

      else
      {
        v28 = v6;
      }
    }

    else
    {
      if (v6)
      {
        v7 = *(v6 + 24);
        if (v7)
        {
          *(v6 + 24) = v7 & 0xFFFFFFFFFFFFFFFELL;
LABEL_19:
          v3[3] &= ~1uLL;
          v5[3] |= 1uLL;
          v10 = v4 & 0xFFFFFFFFFFFFFFFELL;
          goto LABEL_67;
        }
      }

      v8 = v3[1];
      if (v8 == a2)
      {
        v15 = *(v8 + 16);
        v3[1] = v15;
        if (v15)
        {
          v16 = v2 | 1;
          if ((*(v15 + 24) & 1) == 0)
          {
            v16 = v3;
          }

          *(v15 + 24) = v16;
          v17 = v3[3];
        }

        else
        {
          v17 = v4;
        }

        *(v8 + 24) = v17 & 0xFFFFFFFFFFFFFFFELL | *(v8 + 24) & 1;
        if ((v17 & 0xFFFFFFFFFFFFFFFELL) != 0)
        {
          v21 = v3[3];
          v22 = v21 & 0xFFFFFFFFFFFFFFFELL;
          if (*((v21 & 0xFFFFFFFFFFFFFFFELL) + 8) == v3)
          {
            *(v22 + 8) = v8;
          }

          else
          {
            *(v22 + 16) = v8;
          }
        }

        else
        {
          *result = v8;
          v21 = v3[3];
        }

        *(v8 + 16) = v3;
        if (v21)
        {
          v8 = a2 | 1;
        }

        v3[3] = v8;
        v9 = *(a2 + 24) & 0xFFFFFFFFFFFFFFFELL;
        v10 = v3;
      }

      else
      {
        v9 = v4 & 0xFFFFFFFFFFFFFFFELL;
        v10 = a2;
        a2 = v2 & 0xFFFFFFFFFFFFFFFELL;
      }

      *(a2 + 24) = v9;
      v23 = v5[2];
      v24 = v5[3] | 1;
      v25 = *(v23 + 8);
      v5[2] = v25;
      v5[3] = v24;
      if (v25)
      {
        if ((*(v25 + 24) & 1) == 0)
        {
          v4 &= ~1uLL;
        }

        *(v25 + 24) = v4;
        v24 = v5[3];
      }

      *(v23 + 24) = v24 & 0xFFFFFFFFFFFFFFFELL | *(v23 + 24) & 1;
      if ((v24 & 0xFFFFFFFFFFFFFFFELL) != 0)
      {
        v26 = v5[3];
        v27 = v26 & 0xFFFFFFFFFFFFFFFELL;
        if (*((v26 & 0xFFFFFFFFFFFFFFFELL) + 8) == v5)
        {
          *(v27 + 8) = v23;
        }

        else
        {
          *(v27 + 16) = v23;
        }
      }

      else
      {
        *result = v23;
        v26 = v5[3];
      }

      *(v23 + 8) = v5;
      if (v26)
      {
        v28 = v23 | 1;
      }

      else
      {
        v28 = v23;
      }
    }

    v5[3] = v28;
LABEL_67:
    v2 = *(v10 + 24);
    a2 = v10;
  }

  *(*result + 24) &= ~1uLL;
  return result;
}

unint64_t *sub_10000192C(unint64_t *result, unint64_t a2, unint64_t a3)
{
  while (1)
  {
    v3 = a3;
    a3 = a2;
    if (v3)
    {
      v4 = v3[3];
      if (v4)
      {
        break;
      }
    }

    v5 = *result;
    if (v3 == *result)
    {
      goto LABEL_88;
    }

    v6 = *(a2 + 8);
    if (v6 == v3)
    {
      v6 = *(a2 + 16);
      v13 = *(v6 + 24);
      if (v13)
      {
        *(v6 + 24) = v13 & 0xFFFFFFFFFFFFFFFELL;
        v14 = *(a2 + 24) | 1;
        v15 = *(v6 + 8);
        *(a2 + 16) = v15;
        *(a2 + 24) = v14;
        if (v15)
        {
          if (v15[3])
          {
            v16 = a2 | 1;
          }

          else
          {
            v16 = a2;
          }

          v15[3] = v16;
          v14 = *(a2 + 24);
        }

        *(v6 + 24) = v14 & 0xFFFFFFFFFFFFFFFELL | *(v6 + 24) & 1;
        if ((v14 & 0xFFFFFFFFFFFFFFFELL) != 0)
        {
          v17 = *(a2 + 24);
          v18 = v17 & 0xFFFFFFFFFFFFFFFELL;
          if (a2 == *((v17 & 0xFFFFFFFFFFFFFFFELL) + 8))
          {
            *(v18 + 8) = v6;
          }

          else
          {
            *(v18 + 16) = v6;
            v15 = *(a2 + 16);
          }
        }

        else
        {
          *result = v6;
          v17 = *(a2 + 24);
          v5 = v6;
        }

        *(v6 + 8) = a2;
        if (v17)
        {
          v6 |= 1uLL;
        }

        *(a2 + 24) = v6;
        v6 = v15;
      }

      v22 = *(v6 + 8);
      if (v22 && (*(v22 + 24) & 1) != 0)
      {
        v23 = *(v6 + 16);
        if (!v23)
        {
          goto LABEL_59;
        }

LABEL_57:
        if ((*(v23 + 24) & 1) == 0)
        {
          if (v22)
          {
LABEL_59:
            *(v22 + 24) &= ~1uLL;
          }

          v29 = *(v6 + 24) | 1;
          *(v6 + 24) = v29;
          v30 = *(v22 + 16);
          *(v6 + 8) = v30;
          if (v30)
          {
            if (*(v30 + 24))
            {
              v31 = v6 | 1;
            }

            else
            {
              v31 = v6;
            }

            *(v30 + 24) = v31;
            v29 = *(v6 + 24);
          }

          *(v22 + 24) = v29 & 0xFFFFFFFFFFFFFFFELL | *(v22 + 24) & 1;
          if ((v29 & 0xFFFFFFFFFFFFFFFELL) != 0)
          {
            v32 = *(v6 + 24);
            v33 = v32 & 0xFFFFFFFFFFFFFFFELL;
            if (v6 == *((v32 & 0xFFFFFFFFFFFFFFFELL) + 8))
            {
              *(v33 + 8) = v22;
            }

            else
            {
              *(v33 + 16) = v22;
            }
          }

          else
          {
            *result = v22;
            v32 = *(v6 + 24);
            v5 = v22;
          }

          *(v22 + 16) = v6;
          if (v32)
          {
            v22 |= 1uLL;
          }

          *(v6 + 24) = v22;
          v6 = *(a2 + 16);
          v23 = *(v6 + 16);
        }

        *(v6 + 24) = *(v6 + 24) & 0xFFFFFFFFFFFFFFFELL | *(a2 + 24) & 1;
        *(a2 + 24) &= ~1uLL;
        if (v23)
        {
          *(v23 + 24) &= ~1uLL;
        }

        v34 = (v6 + 8);
        v35 = *(v6 + 8);
        *(a2 + 16) = v35;
        if (v35)
        {
          goto LABEL_76;
        }

        goto LABEL_80;
      }

      v23 = *(v6 + 16);
      if (v23 && (*(v23 + 24) & 1) != 0)
      {
        goto LABEL_57;
      }
    }

    else
    {
      v7 = *(v6 + 24);
      if (v7)
      {
        *(v6 + 24) = v7 & 0xFFFFFFFFFFFFFFFELL;
        v8 = *(a2 + 24) | 1;
        *(a2 + 24) = v8;
        v9 = *(v6 + 16);
        *(a2 + 8) = v9;
        if (v9)
        {
          if (v9[3])
          {
            v10 = a2 | 1;
          }

          else
          {
            v10 = a2;
          }

          v9[3] = v10;
          v8 = *(a2 + 24);
        }

        *(v6 + 24) = v8 & 0xFFFFFFFFFFFFFFFELL | *(v6 + 24) & 1;
        if ((v8 & 0xFFFFFFFFFFFFFFFELL) != 0)
        {
          v11 = *(a2 + 24);
          v12 = v11 & 0xFFFFFFFFFFFFFFFELL;
          if (a2 == *((v11 & 0xFFFFFFFFFFFFFFFELL) + 8))
          {
            *(v12 + 8) = v6;
            v9 = *(a2 + 8);
          }

          else
          {
            *(v12 + 16) = v6;
          }
        }

        else
        {
          *result = v6;
          v11 = *(a2 + 24);
          v5 = v6;
        }

        *(v6 + 16) = a2;
        if (v11)
        {
          v6 |= 1uLL;
        }

        *(a2 + 24) = v6;
        v6 = v9;
      }

      v19 = *(v6 + 8);
      if (v19)
      {
        v20 = *(v19 + 24);
        if (v20)
        {
          goto LABEL_45;
        }
      }

      v21 = *(v6 + 16);
      if (v21 && (*(v21 + 24) & 1) != 0)
      {
        if (!v19)
        {
          goto LABEL_47;
        }

        v20 = *(v19 + 24);
LABEL_45:
        if ((v20 & 1) == 0)
        {
          v21 = *(v6 + 16);
          if (v21)
          {
LABEL_47:
            *(v21 + 24) &= ~1uLL;
          }

          v24 = *(v6 + 24) | 1;
          v25 = *(v21 + 8);
          *(v6 + 16) = v25;
          *(v6 + 24) = v24;
          if (v25)
          {
            if (*(v25 + 24))
            {
              v26 = v6 | 1;
            }

            else
            {
              v26 = v6;
            }

            *(v25 + 24) = v26;
            v24 = *(v6 + 24);
          }

          *(v21 + 24) = v24 & 0xFFFFFFFFFFFFFFFELL | *(v21 + 24) & 1;
          if ((v24 & 0xFFFFFFFFFFFFFFFELL) != 0)
          {
            v27 = *(v6 + 24);
            v28 = v27 & 0xFFFFFFFFFFFFFFFELL;
            if (v6 == *((v27 & 0xFFFFFFFFFFFFFFFELL) + 8))
            {
              *(v28 + 8) = v21;
            }

            else
            {
              *(v28 + 16) = v21;
            }
          }

          else
          {
            *result = v21;
            v27 = *(v6 + 24);
            v5 = v21;
          }

          *(v21 + 8) = v6;
          if (v27)
          {
            v21 |= 1uLL;
          }

          *(v6 + 24) = v21;
          v6 = *(a2 + 8);
          v19 = *(v6 + 8);
        }

        *(v6 + 24) = *(v6 + 24) & 0xFFFFFFFFFFFFFFFELL | *(a2 + 24) & 1;
        *(a2 + 24) &= ~1uLL;
        if (v19)
        {
          *(v19 + 24) &= ~1uLL;
        }

        v34 = (v6 + 16);
        v35 = *(v6 + 16);
        *(a2 + 8) = v35;
        if (v35)
        {
LABEL_76:
          if (*(v35 + 24))
          {
            v36 = a2 | 1;
          }

          else
          {
            v36 = a2;
          }

          *(v35 + 24) = v36;
        }

LABEL_80:
        v37 = *(a2 + 24);
        *(v6 + 24) = v37 & 0xFFFFFFFFFFFFFFFELL | *(v6 + 24) & 1;
        if ((v37 & 0xFFFFFFFFFFFFFFFELL) != 0)
        {
          v38 = *(a2 + 24);
          v39 = v38 & 0xFFFFFFFFFFFFFFFELL;
          if (a2 == *((v38 & 0xFFFFFFFFFFFFFFFELL) + 8))
          {
            *(v39 + 8) = v6;
          }

          else
          {
            *(v39 + 16) = v6;
          }
        }

        else
        {
          *result = v6;
          v38 = *(a2 + 24);
          v5 = v6;
        }

        *v34 = a2;
        if (v38)
        {
          v6 |= 1uLL;
        }

        *(a2 + 24) = v6;
        v3 = v5;
LABEL_88:
        if (!v3)
        {
          return result;
        }

        v4 = v3[3];
        break;
      }
    }

    *(v6 + 24) |= 1uLL;
    a2 = *(a2 + 24) & 0xFFFFFFFFFFFFFFFELL;
  }

  v3[3] = v4 & 0xFFFFFFFFFFFFFFFELL;
  return result;
}

void *sub_100001D54(unint64_t *a1, void *a2)
{
  v5 = a2[1];
  v3 = a2[2];
  v4 = a2 + 1;
  if (!v5)
  {
    v11 = a2[3] & 0xFFFFFFFFFFFFFFFELL;
    v23 = a2[3] & 1;
    if (!v3)
    {
      if (!v11)
      {
LABEL_41:
        v24 = a1;
        goto LABEL_42;
      }

LABEL_33:
      v24 = (v11 + 8);
      if (*(v11 + 8) != a2)
      {
        v24 = (v11 + 16);
      }

LABEL_42:
      *v24 = v3;
      if (v23)
      {
        return a2;
      }

LABEL_43:
      sub_10000192C(a1, v11, v3);
      return a2;
    }

LABEL_37:
    if (*(v3 + 24))
    {
      v25 = v11 + 1;
    }

    else
    {
      v25 = v11;
    }

    *(v3 + 24) = v25;
    if (!v11)
    {
      goto LABEL_41;
    }

    goto LABEL_33;
  }

  if (!v3)
  {
    v11 = a2[3] & 0xFFFFFFFFFFFFFFFELL;
    v23 = a2[3] & 1;
    v3 = v5;
    goto LABEL_37;
  }

  do
  {
    v6 = v3;
    v3 = *(v3 + 8);
  }

  while (v3);
  v3 = *(v6 + 16);
  v7 = *(v6 + 24);
  v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
  if (v3)
  {
    if (*(v3 + 24))
    {
      v9 = v7 | 1;
    }

    else
    {
      v9 = v7 & 0xFFFFFFFFFFFFFFFELL;
    }

    *(v3 + 24) = v9;
  }

  v10 = a1;
  if (v8)
  {
    v10 = (v8 + 8);
    if (*(v8 + 8) != v6)
    {
      v10 = (v8 + 16);
    }
  }

  *v10 = v3;
  if ((*(v6 + 24) & 0xFFFFFFFFFFFFFFFELL) == a2)
  {
    v11 = v6;
  }

  else
  {
    v11 = v7 & 0xFFFFFFFFFFFFFFFELL;
  }

  v12 = v4[2];
  *(v6 + 8) = *v4;
  *(v6 + 24) = v12;
  v13 = a1;
  v14 = a2[3] & 0xFFFFFFFFFFFFFFFELL;
  if (v14)
  {
    v16 = *(v14 + 8);
    v15 = (v14 + 8);
    if (v16 == a2)
    {
      v13 = v15;
    }

    else
    {
      v13 = v15 + 1;
    }
  }

  v17 = v7 & 1;
  *v13 = v6;
  v19 = a2[1];
  v18 = a2[2];
  if (*(v19 + 24))
  {
    v20 = v6 | 1;
  }

  else
  {
    v20 = v6;
  }

  *(v19 + 24) = v20;
  if (v18)
  {
    if (*(v18 + 24))
    {
      v6 |= 1uLL;
    }

    *(v18 + 24) = v6;
  }

  if (v11)
  {
    v21 = v11;
    do
    {
      v21 = *(v21 + 24) & 0xFFFFFFFFFFFFFFFELL;
    }

    while (v21);
  }

  if (!v17)
  {
    goto LABEL_43;
  }

  return a2;
}

unint64_t sub_100001EC4(unint64_t *a1, unint64_t a2)
{
  v4 = *a1;
  if (*a1)
  {
    do
    {
      v5 = v4;
      v6 = uuid_compare((a2 + 120), (v4 + 120));
      if ((v6 & 0x80000000) != 0)
      {
        v7 = 8;
      }

      else
      {
        if (!v6)
        {
          return v5;
        }

        v7 = 16;
      }

      v4 = *(v5 + v7);
    }

    while (v4);
    LODWORD(v4) = v6 >> 31;
  }

  else
  {
    v5 = 0;
  }

  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = v5 | 1;
  if (v4)
  {
    v8 = (v5 + 8);
  }

  else
  {
    v8 = (v5 + 16);
  }

  if (!v5)
  {
    v8 = a1;
  }

  *v8 = a2;
  sub_100001640(a1, a2);
  return 0;
}

uint64_t sub_100001F6C(uint64_t *a1, uint64_t a2)
{
  for (i = *a1; i; i = *(i + v5))
  {
    v4 = uuid_compare((a2 + 120), (i + 120));
    if (v4 < 0)
    {
      v5 = 8;
    }

    else
    {
      if (!v4)
      {
        return i;
      }

      v5 = 16;
    }
  }

  return i;
}

uint64_t sub_100001FC0(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  if (*a1)
  {
    v4 = 0;
    while (1)
    {
      v5 = uuid_compare((a2 + 120), (v2 + 120));
      if (v5 < 0)
      {
        v6 = 8;
        v4 = v2;
      }

      else
      {
        if (!v5)
        {
          return v2;
        }

        v6 = 16;
      }

      v2 = *(v2 + v6);
      if (!v2)
      {
        return v4;
      }
    }
  }

  return 0;
}

unint64_t sub_100002034(unint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    do
    {
      result = v1;
      v1 = *(v1 + 8);
    }

    while (v1);
  }

  else
  {
    v3 = a1;
    result = *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL;
    if (!result || *(result + 8) != v3)
    {
      do
      {
        result = *(v3 + 24) & 0xFFFFFFFFFFFFFFFELL;
        if (!result)
        {
          break;
        }

        v4 = v3 == *(result + 16);
        v3 = *(v3 + 24) & 0xFFFFFFFFFFFFFFFELL;
      }

      while (v4);
    }
  }

  return result;
}

uint64_t sub_100002088(uint64_t *a1, int a2)
{
  v2 = *a1;
  if (!*a1)
  {
    return 0;
  }

  v3 = 16;
  if (a2 < 0)
  {
    v3 = 8;
  }

  do
  {
    result = v2;
    v2 = *(v2 + v3);
  }

  while (v2);
  return result;
}

unint64_t sub_1000020B8(unint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1)
  {
    do
    {
      result = v1;
      v1 = *(v1 + 16);
    }

    while (v1);
  }

  else
  {
    v3 = a1;
    result = *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL;
    if (!result || *(result + 16) != v3)
    {
      do
      {
        result = *(v3 + 24) & 0xFFFFFFFFFFFFFFFELL;
        if (!result)
        {
          break;
        }

        v4 = v3 == *(result + 8);
        v3 = *(v3 + 24) & 0xFFFFFFFFFFFFFFFELL;
      }

      while (v4);
    }
  }

  return result;
}

uint64_t start(int a1, uint64_t a2)
{
  qword_1000284B0 = getprogname();
  if (a1 < 2)
  {
    sub_100002388();
    exit(64);
  }

  v4 = 0;
  v5 = a1 - 1;
  do
  {
    dword_1000285C4 = 0;
    dword_1000285C8 = 0;
    dword_1000285CC = 0;
    dword_1000285D0 = 0;
    dword_1000285D4 = 0;
    dword_1000285D8 = 0;
    dword_1000285DC = 0;
    dword_1000285E0 = 0;
    dword_1000285E4 = 0;
    dword_1000285E8 = 0;
    dword_1000285EC = 0;
    dword_1000285F0 = 0;
    dword_1000285F4 = 0;
    dword_1000285F8 = 0;
    qword_100028600 = 0;
    byte_100028608 = 0;
    qword_100028610 = 0;
    byte_100028618 = 0;
    dword_10002861C = 0;
    byte_100028620 = 0;
    uuid_clear(byte_100028621);
    v6 = 0;
    byte_100028631 = 0;
    byte_1000284C1[0] = 0;
    v7 = v4;
    qword_1000284B8 = 0;
    v8 = (a2 + 8 + 8 * v4);
    while (1)
    {
      v9 = v8[v6];
      if (*v9 == 44 && !v9[1])
      {
        break;
      }

      if (qword_1000284B8 <= 0xFF)
      {
        v10 = snprintf(&byte_1000284C1[qword_1000284B8], 256 - qword_1000284B8, "%s ", v8[v6]);
        if (v10 >= 1)
        {
          qword_1000284B8 += v10;
        }
      }

      if (v7 + ++v6 >= v5)
      {
        v16 = 0;
        goto LABEL_12;
      }
    }

    v16 = 1;
LABEL_12:
    if (byte_1000284C0 == 1)
    {
      printf("#\n# %s %s\n#\n", qword_1000284B0, byte_1000284C1);
    }

    optind = 0;
    v11 = *v8;
    v12 = &off_1000203C0;
    v13 = "channel";
    while (strcasecmp(v11, v13))
    {
      v14 = *v12;
      v12 += 2;
      v13 = v14;
      if (!v14)
      {
        fprintf(__stderrp, "%s unknown command\n", v11);
        sub_100002388();
        result = 0xFFFFFFFFLL;
        goto LABEL_19;
      }
    }

    result = (*(v12 - 1))(v6, v8);
LABEL_19:
    if (!v16)
    {
      break;
    }

    v4 = v7 + v6 + 1;
  }

  while (v4 < v5);
  return result;
}

uint64_t sub_100002388()
{
  fprintf(__stderrp, "Usage: %s COMMAND { option | help }\n", qword_1000284B0);
  fwrite("where COMMAND includes:\n", 0x18uLL, 1uLL, __stderrp);
  v0 = "channel";
  v1 = &off_1000203C0;
  do
  {
    result = fprintf(__stderrp, "\t%s\n", v0);
    v3 = *v1;
    v1 += 2;
    v0 = v3;
  }

  while (v3);
  return result;
}

uint64_t sub_100002420(int a1, char *const *a2)
{
  __endptr = 0;
  v22 = unk_1000205A0;
  v23 = xmmword_1000205B0;
  v24 = unk_1000205C0;
  v18 = off_100020550;
  v19 = off_100020570;
  v20 = unk_100020580;
  v21 = off_100020590;
  v4 = getopt_long(a1, a2, "C:hw:", &v18, 0) << 24;
  if (v4 == -16777216)
  {
    goto LABEL_2;
  }

  v5 = 0;
  while (1)
  {
    v6 = v4 >> 24;
    if (v6 != 67)
    {
      break;
    }

    byte_100028608 = 1;
    qword_100028600 = optarg;
LABEL_14:
    v4 = getopt_long(a1, a2, "C:hw:", &v18, 0) << 24;
    if (v4 == -16777216)
    {
      if (!v5)
      {
LABEL_2:
        v15[0] = 0;
        v15[1] = 0;
        v16 = 0;
        sub_1000102B4(v15);
        sub_10000AB64(v15, 0, 0);
        if (v15[0])
        {
          free(v15[0]);
        }

        if (v16)
        {
          free(v16);
        }

        return 0;
      }

      v8 = 0;
      v15[1] = 0;
      v16 = 0;
      v15[0] = 0;
      while (2)
      {
        v13 = 0uLL;
        v14 = 0;
        v9 = sub_1000102B4(&v13);
        if (v9)
        {
          if (v16)
          {
            v10 = v15;
            v11 = v5;
            goto LABEL_22;
          }
        }

        else if ((v8 & 1) == 0)
        {
          v10 = 0;
          v11 = 0;
LABEL_22:
          sub_10000AB64(&v13, v10, v11);
        }

        if (v15[0])
        {
          free(v15[0]);
        }

        if (v16)
        {
          free(v16);
        }

        v8 = v9 ^ 1;
        *v15 = v13;
        v16 = v14;
        sleep(v5);
        continue;
      }
    }
  }

  if (v6 == 119)
  {
    v7 = strtol(optarg, &__endptr, 10);
    if (__endptr == optarg)
    {
      goto LABEL_29;
    }

    if (*__endptr)
    {
      goto LABEL_29;
    }

    v5 = v7;
    if (*__error() == 34)
    {
      goto LABEL_29;
    }

    goto LABEL_14;
  }

  if (v6 == 104)
  {
LABEL_29:
    fflush(__stderrp);
    fputs("Usage: channel [ OPTIONS ] show channel statistics\n   -h, --help         this message\n   -C, --command=CMD  show channels only from CMD\n   -w, --wait=INT     show statistics at intervals of wait seconds\n", __stderrp);
    return 0;
  }

  fprintf(__stderrp, "unknown option %s", optarg);
  fflush(__stderrp);
  fputs("Usage: channel [ OPTIONS ] show channel statistics\n   -h, --help         this message\n   -C, --command=CMD  show channels only from CMD\n   -w, --wait=INT     show statistics at intervals of wait seconds\n", __stderrp);
  return 64;
}

uint64_t sub_1000026C8(int a1, char *const *a2)
{
  __endptr = 0;
  memcpy(__dst, &off_1000205D0, sizeof(__dst));
  v4 = getopt_long(a1, a2, "C:hI:nJp:P:w:v", __dst, 0) << 24;
  v5 = &off_100028000;
  v6 = &off_100028000;
  if (v4 == -16777216)
  {
    v7 = 0;
    v8 = 0;
    v9 = dword_1000285CC;
    goto LABEL_30;
  }

  v10 = 0;
  while (1)
  {
    v11 = v4 >> 24;
    if (v11 > 103)
    {
      if (v11 > 117)
      {
        if (v11 == 118)
        {
          HIDWORD(qword_1000285DC) = 1;
        }

        else
        {
          if (v11 != 119)
          {
            goto LABEL_132;
          }

          v12 = strtol(optarg, &__endptr, 10);
          if (__endptr == optarg)
          {
            goto LABEL_131;
          }

          if (*__endptr)
          {
            goto LABEL_131;
          }

          v10 = v12;
          if (*__error() == 34)
          {
            goto LABEL_131;
          }
        }
      }

      else if (v11 == 110)
      {
        dword_1000285D0 = 1;
      }

      else
      {
        if (v11 != 112)
        {
          if (v11 == 104)
          {
LABEL_131:
            v111 = 0;
          }

          else
          {
LABEL_132:
            fprintf(__stderrp, "unknown option %s\n", optarg);
            v111 = 64;
          }

          fflush(__stderrp);
          fputs("Usage: flow [ OPTIONS ] show skywalk flows\n   -h, --help            this message\n   -C, --command=CMD     show only flows from process matching CMD\n   -I, --interface=IF    show only flows from interface matching IF\n   -n, --numeric         don't resolve service names\n   -J, --json            output in JSON format\n   -p, --protocol=PROTO  show only flows of PROTO\n   -P, --pid=PID         show only flows from process matching PID\n   -w, --wait=INT        show statistics at intervals of wait seconds\n\n Flow flags\n   t:track c:connected l:listener q:qosmarking w:waitclose e:closenotify\n   A:aborted N:nonviable W:withdrawn T:torndown D:destroyed R:lingering\n   L:lowlatency P:parent C:child S:nowakefromsleep\n", __stderrp);
          return v111;
        }

        sub_10000B578(optarg);
      }

      goto LABEL_27;
    }

    if (v11 <= 73)
    {
      if (v11 == 67)
      {
        byte_100028608 = 1;
        qword_100028600 = optarg;
      }

      else
      {
        if (v11 != 73)
        {
          goto LABEL_132;
        }

        byte_100028618 = 1;
        qword_100028610 = optarg;
      }

      goto LABEL_27;
    }

    if (v11 != 74)
    {
      break;
    }

    dword_1000285CC = 1;
LABEL_27:
    v4 = getopt_long(a1, a2, "C:hI:nJp:P:w:v", __dst, 0) << 24;
    if (v4 == -16777216)
    {
      v8 = v10;
      v7 = v10 != 0;
      v9 = dword_1000285CC;
      if (v10 && dword_1000285CC)
      {
        fwrite("can't use wait with JSON output\n", 0x20uLL, 1uLL, __stderrp);
        exit(64);
      }

LABEL_30:
      v118 = v8;
      v117 = v7;
      if (v9)
      {
        goto LABEL_33;
      }

LABEL_34:
      if (HIDWORD(qword_1000285DC))
      {
        printf("%-5s %-45s %-45s %-12s %-12s %-18s %-18s %-3s %-8s %-4s %-3s %-17s %-12s %-12s %-10s %-10s %36s %s\n", "Proto", "Local Address", "Remote Address", "InBytes", "OutBytes", "InPkts/InSPkts", "OutPkts/OutSPkts", "SvC", "NetIf", "Port", "Adv");
      }

      else
      {
        printf("%-5s %-45s %-45s %-12s %-12s %-18s %-18s %-3s %-8s %-4s %-3s %-17s %-12s %-12s %-10s %-10s %s\n", "Proto", "Local Address", "Remote Address", "InBytes", "OutBytes", "InPkts/InSPkts", "OutPkts/OutSPkts", "SvC", "NetIf", "Port");
      }

      while (1)
      {
        __base = 0;
        v121 = 0;
        v22 = sub_100010BCC("kern.skywalk.stats.flow", &__base, &v121);
        v23 = __base;
        v119 = v22;
        if (!v22 && __base && v121)
        {
          break;
        }

LABEL_122:
        if (*(v5 + 371) && qword_100028640)
        {
          fputc(93, *qword_100028640);
          v108 = qword_100028640;
          *(qword_100028640 + 8) = 1;
          fputc(125, *v108);
          v109 = qword_100028640;
          *(qword_100028640 + 8) = 1;
          fclose(*v109);
          free(qword_100028640);
          v23 = __base;
        }

        if (v23)
        {
          free(v23);
        }

        if (!v7)
        {
          return v119;
        }

        sleep(v8);
        v127[0] = time(0);
        v14 = localtime(v127);
        strftime(out, 0x64uLL, "%Y-%m-%d %H:%M:%S", v14);
        v15 = sub_100010A54(out, "\x1B[36m");
        printf("\n%s\n", v15);
        if (!*(v5 + 371))
        {
          goto LABEL_34;
        }

LABEL_33:
        v16 = malloc_type_malloc(0x10uLL, 0x10200405F07FB98uLL);
        v17 = __stdoutp;
        *v16 = __stdoutp;
        v16[8] = 0;
        qword_100028640 = v16;
        fputc(123, v17);
        v18 = qword_100028640;
        *(qword_100028640 + 8) = 0;
        fwrite("version:", 0xAuLL, 1uLL, *v18);
        v19 = qword_100028640;
        *(qword_100028640 + 8) = 0;
        fprintf(*v19, "%.1f", 0.1);
        v20 = qword_100028640;
        *(qword_100028640 + 8) = 1;
        fputc(44, *v20);
        fwrite("flows:", 8uLL, 1uLL, *qword_100028640);
        v21 = qword_100028640;
        *(qword_100028640 + 8) = 0;
        fputc(91, *v21);
        *(qword_100028640 + 8) = 0;
      }

      if (v121 % 0x130uLL)
      {
        fwrite("Error, mismatching sk_stats_flow, quit\n", 0x27uLL, 1uLL, __stderrp);
        exit(71);
      }

      qsort(__base, v121 / 0x130uLL, 0x130uLL, sub_10000B73C);
      v23 = __base;
      if (v121 < 1)
      {
        v5 = &off_100028000;
        goto LABEL_122;
      }

      while (1)
      {
        if (*(v6 + 1544) == 1 && !strcasestr(v23 + 64, qword_100028600))
        {
          goto LABEL_119;
        }

        v24 = byte_100028620 != 1 || dword_10002861C == *(v23 + 14);
        if (!v24 || byte_100028618 == 1 && strcasecmp(v23 + 32, qword_100028610))
        {
          goto LABEL_119;
        }

        if (!dword_1000285CC)
        {
          v36 = sub_1000107D4(v23[134]);
          printf("%4s", v36);
          v37 = v23[146];
          if (v37 == 96)
          {
            printf("%c ", 54);
            v99 = sub_100011108(v23 + 38, *(v23 + 74), v36, dword_1000285D0 != 0);
            v39 = "%-*.*s";
            printf("%-*.*s", 45, 45, v99);
            putchar(32);
            v114 = 45;
            v116 = sub_100011108(v23 + 42, *(v23 + 75), v36, dword_1000285D0 != 0);
LABEL_96:
            v6 = &off_100028000;
            printf(v39, 45, v114, v116);
          }

          else if (v37 == 4)
          {
            printf("%c ", 52);
            v38 = sub_100010DA8(v23 + 38, *(v23 + 74), v36, dword_1000285D0 != 0);
            v39 = "%-*s";
            printf("%-*s", 45, v38);
            putchar(32);
            v114 = sub_100010DA8(v23 + 42, *(v23 + 75), v36, dword_1000285D0 != 0);
            goto LABEL_96;
          }

          v100 = *(v23 + 30);
          snprintf(v127, 0x12uLL, "%llu/%llu", v100, *(v23 + 31));
          v101 = *(v23 + 25);
          snprintf(__str, 0x12uLL, "%llu/%llu", v101, *(v23 + 26));
          printf(" %-12llu %-12llu %-18s %-18s", *(v23 + 29), *(v23 + 24), v127, __str);
          v102 = sub_100011264(*(v23 + 34));
          printf(" %-3s", v102);
          printf(" %-8s", v23 + 32);
          if (*(v23 + 66) == 0xFFFF)
          {
            printf(" %-4s");
          }

          else
          {
            v112 = *(v23 + 66);
            printf(" %-4u");
          }

          if (*(v23 + 35) == -1)
          {
            printf(" %-3s");
          }

          else
          {
            v113 = *(v23 + 35);
            printf(" %-3u");
          }

          v103 = sub_1000113A8(*(v23 + 32));
          printf(" %s", v103);
          if ((v23[128] & 0x10) != 0)
          {
            v104 = sub_100011240(*(v23 + 54));
            v115 = sub_100011240(*(v23 + 64));
            printf(" %-12s %-12s", v104, v115);
          }

          else
          {
            printf(" %-12s %-12s", "", "");
          }

          if (*(v23 + 55))
          {
            v105 = (*(v23 + 55) / 1000.0);
            printf("%7.2f ms");
          }

          else
          {
            printf("          ");
          }

          if (*(v23 + 65))
          {
            v106 = (*(v23 + 65) / 1000.0);
            printf("  %7.2f ms");
          }

          else
          {
            printf("            ");
          }

          if (HIDWORD(qword_1000285DC))
          {
            *out = 0u;
            memset(v124, 0, sizeof(v124));
            uuid_unparse(v23 + 16, out);
            printf(" %s", out);
          }

          printf(" %s.%d", v23 + 64, *(v23 + 14));
          v107 = *(v23 + 15);
          if (v107 == -1 || *(v23 + 14) == v107 && !strcmp(v23 + 64, v23 + 96))
          {
            putchar(10);
          }

          else
          {
            printf("(%s.%d)\n", v23 + 96, v107);
          }

          goto LABEL_119;
        }

        v25 = qword_100028640;
        if (qword_100028640)
        {
          if (*(qword_100028640 + 8) == 1)
          {
            fputc(44, *qword_100028640);
            v25 = qword_100028640;
          }

          fputc(123, *v25);
          v26 = qword_100028640;
          *(qword_100028640 + 8) = 0;
          fwrite("protocol:", 0xBuLL, 1uLL, *v26);
          v27 = qword_100028640;
          *(qword_100028640 + 8) = 0;
          v28 = *v27;
          v29 = sub_1000107D4(v23[134]);
          fprintf(v28, "%s", v29);
          *(qword_100028640 + 8) = 1;
        }

        v30 = v23[146];
        if (v30 == 96)
        {
          inet_ntop(30, v23 + 152, out, 0x2Eu);
          v40 = qword_100028640;
          if (qword_100028640)
          {
            if (*(qword_100028640 + 8) == 1)
            {
              fputc(44, *qword_100028640);
              v40 = qword_100028640;
            }

            fwrite("localAddr:", 0xCuLL, 1uLL, *v40);
            v41 = qword_100028640;
            *(qword_100028640 + 8) = 0;
            fprintf(*v41, "%s", out);
            *(qword_100028640 + 8) = 1;
          }

          v33 = v23 + 168;
          v34 = 30;
          v35 = 46;
        }

        else
        {
          if (v30 != 4)
          {
            fprintf(__stderrp, "unknown ip version %d\n", v23[146]);
            exit(-1);
          }

          inet_ntop(2, v23 + 152, out, 0x10u);
          v31 = qword_100028640;
          if (qword_100028640)
          {
            if (*(qword_100028640 + 8) == 1)
            {
              fputc(44, *qword_100028640);
              v31 = qword_100028640;
            }

            fwrite("localAddr:", 0xCuLL, 1uLL, *v31);
            v32 = qword_100028640;
            *(qword_100028640 + 8) = 0;
            fprintf(*v32, "%s", out);
            *(qword_100028640 + 8) = 1;
          }

          v33 = v23 + 168;
          v34 = 2;
          v35 = 16;
        }

        inet_ntop(v34, v33, out, v35);
        v42 = qword_100028640;
        if (qword_100028640)
        {
          if (*(qword_100028640 + 8))
          {
            fputc(44, *qword_100028640);
            v42 = qword_100028640;
          }

          fwrite("remoteAddr:", 0xDuLL, 1uLL, *v42);
          v43 = qword_100028640;
          *(qword_100028640 + 8) = 0;
          fprintf(*v43, "%s", out);
          v44 = qword_100028640;
          *(qword_100028640 + 8) = 1;
          fputc(44, *v44);
          fwrite("localPort:", 0xCuLL, 1uLL, *qword_100028640);
          v45 = qword_100028640;
          *(qword_100028640 + 8) = 0;
          fprintf(*v45, "%d", bswap32(*(v23 + 74)) >> 16);
          v46 = qword_100028640;
          *(qword_100028640 + 8) = 1;
          fputc(44, *v46);
          fwrite("remotePort:", 0xDuLL, 1uLL, *qword_100028640);
          v47 = qword_100028640;
          *(qword_100028640 + 8) = 0;
          fprintf(*v47, "%d", bswap32(*(v23 + 75)) >> 16);
          v48 = qword_100028640;
          *(qword_100028640 + 8) = 1;
          fputc(44, *v48);
          fwrite("inBytes:", 0xAuLL, 1uLL, *qword_100028640);
          v49 = qword_100028640;
          *(qword_100028640 + 8) = 0;
          fprintf(*v49, "%llu", *(v23 + 29));
          v50 = qword_100028640;
          *(qword_100028640 + 8) = 1;
          fputc(44, *v50);
          fwrite("outBytes:", 0xBuLL, 1uLL, *qword_100028640);
          v51 = qword_100028640;
          *(qword_100028640 + 8) = 0;
          fprintf(*v51, "%llu", *(v23 + 24));
          v52 = qword_100028640;
          *(qword_100028640 + 8) = 1;
          fputc(44, *v52);
          fwrite("inPackets:", 0xCuLL, 1uLL, *qword_100028640);
          v53 = qword_100028640;
          *(qword_100028640 + 8) = 0;
          fprintf(*v53, "%llu", *(v23 + 30));
          v54 = qword_100028640;
          *(qword_100028640 + 8) = 1;
          fputc(44, *v54);
          fwrite("outPackets:", 0xDuLL, 1uLL, *qword_100028640);
          v55 = qword_100028640;
          *(qword_100028640 + 8) = 0;
          fprintf(*v55, "%llu", *(v23 + 25));
          v56 = qword_100028640;
          *(qword_100028640 + 8) = 1;
          fputc(44, *v56);
          fwrite("inSPackets:", 0xDuLL, 1uLL, *qword_100028640);
          v57 = qword_100028640;
          *(qword_100028640 + 8) = 0;
          fprintf(*v57, "%llu", *(v23 + 31));
          v58 = qword_100028640;
          *(qword_100028640 + 8) = 1;
          fputc(44, *v58);
          fwrite("outSPackets:", 0xEuLL, 1uLL, *qword_100028640);
          v59 = qword_100028640;
          *(qword_100028640 + 8) = 0;
          fprintf(*v59, "%llu", *(v23 + 26));
          v60 = qword_100028640;
          *(qword_100028640 + 8) = 1;
          fputc(44, *v60);
          fwrite("serviceClass:", 0xFuLL, 1uLL, *qword_100028640);
          v61 = qword_100028640;
          *(qword_100028640 + 8) = 0;
          v62 = *v61;
          v63 = sub_100011264(*(v23 + 34));
          fprintf(v62, "%s", v63);
          v64 = qword_100028640;
          *(qword_100028640 + 8) = 1;
          fputc(44, *v64);
          fwrite("interfaceName:", 0x10uLL, 1uLL, *qword_100028640);
          v65 = qword_100028640;
          *(qword_100028640 + 8) = 0;
          fprintf(*v65, "%s", v23 + 32);
          v42 = qword_100028640;
          *(qword_100028640 + 8) = 1;
        }

        if (*(v23 + 66) == -1)
        {
          if (!v42)
          {
            goto LABEL_85;
          }

          if (*(v42 + 8) == 1)
          {
            fputc(44, *v42);
            v42 = qword_100028640;
          }

          fwrite("nexusPort:", 0xCuLL, 1uLL, *v42);
          v69 = qword_100028640;
          *(qword_100028640 + 8) = 0;
          fprintf(*v69, "%s");
        }

        else
        {
          if (!v42)
          {
            goto LABEL_85;
          }

          if (*(v42 + 8) == 1)
          {
            fputc(44, *v42);
            v42 = qword_100028640;
          }

          fwrite("nexusPort:", 0xCuLL, 1uLL, *v42);
          v66 = qword_100028640;
          *(qword_100028640 + 8) = 0;
          v67 = *v66;
          v68 = *(v23 + 66);
          fprintf(v67, "%u");
        }

        v42 = qword_100028640;
        *(qword_100028640 + 8) = 1;
LABEL_85:
        if (*(v23 + 35) == -1)
        {
          if (v42)
          {
            if (*(v42 + 8) == 1)
            {
              fputc(44, *v42);
              v42 = qword_100028640;
            }

            fwrite("flowAdvisoryIndex:", 0x14uLL, 1uLL, *v42);
            v73 = qword_100028640;
            *(qword_100028640 + 8) = 0;
            fprintf(*v73, "%s");
            goto LABEL_94;
          }
        }

        else if (v42)
        {
          if (*(v42 + 8) == 1)
          {
            fputc(44, *v42);
            v42 = qword_100028640;
          }

          fwrite("flowAdvisoryIndex:", 0x14uLL, 1uLL, *v42);
          v70 = qword_100028640;
          *(qword_100028640 + 8) = 0;
          v71 = *v70;
          v72 = *(v23 + 35);
          fprintf(v71, "%u");
LABEL_94:
          v74 = qword_100028640;
          *(qword_100028640 + 8) = 1;
          fputc(44, *v74);
          fwrite("flags:", 8uLL, 1uLL, *qword_100028640);
          v75 = qword_100028640;
          *(qword_100028640 + 8) = 0;
          v76 = *v75;
          v77 = sub_1000113A8(*(v23 + 32));
          fprintf(v76, "%s", v77);
          v78 = qword_100028640;
          *(qword_100028640 + 8) = 1;
          fputc(44, *v78);
          fwrite("localTrackState:", 0x12uLL, 1uLL, *qword_100028640);
          v79 = qword_100028640;
          *(qword_100028640 + 8) = 0;
          v80 = *v79;
          v81 = sub_100011240(*(v23 + 54));
          fprintf(v80, "%s", v81);
          v82 = qword_100028640;
          *(qword_100028640 + 8) = 1;
          fputc(44, *v82);
          fwrite("localTrackState:", 0x12uLL, 1uLL, *qword_100028640);
          v83 = qword_100028640;
          *(qword_100028640 + 8) = 0;
          v84 = *v83;
          v85 = sub_100011240(*(v23 + 64));
          fprintf(v84, "%s", v85);
          v86 = qword_100028640;
          *(qword_100028640 + 8) = 1;
          fputc(44, *v86);
          fwrite("localRTT:", 0xBuLL, 1uLL, *qword_100028640);
          v87 = qword_100028640;
          *(qword_100028640 + 8) = 0;
          fprintf(*v87, "%.2fms", (*(v23 + 55) / 1000.0));
          v88 = qword_100028640;
          *(qword_100028640 + 8) = 1;
          fputc(44, *v88);
          fwrite("remoteRTT:", 0xCuLL, 1uLL, *qword_100028640);
          v89 = qword_100028640;
          *(qword_100028640 + 8) = 0;
          fprintf(*v89, "%7.2fms", (*(v23 + 65) / 1000.0));
          v90 = qword_100028640;
          *(qword_100028640 + 8) = 1;
          fputc(44, *v90);
          fwrite("process:", 0xAuLL, 1uLL, *qword_100028640);
          v91 = qword_100028640;
          *(qword_100028640 + 8) = 0;
          fprintf(*v91, "%s", v23 + 64);
          v92 = qword_100028640;
          *(qword_100028640 + 8) = 1;
          fputc(44, *v92);
          fwrite("pid:", 6uLL, 1uLL, *qword_100028640);
          v93 = qword_100028640;
          *(qword_100028640 + 8) = 0;
          fprintf(*v93, "%d", *(v23 + 14));
          v94 = qword_100028640;
          *(qword_100028640 + 8) = 1;
          fputc(44, *v94);
          fwrite("eprocess:", 0xBuLL, 1uLL, *qword_100028640);
          v95 = qword_100028640;
          *(qword_100028640 + 8) = 0;
          fprintf(*v95, "%s", v23 + 96);
          v96 = qword_100028640;
          *(qword_100028640 + 8) = 1;
          fputc(44, *v96);
          fwrite("epid:", 7uLL, 1uLL, *qword_100028640);
          v97 = qword_100028640;
          *(qword_100028640 + 8) = 0;
          fprintf(*v97, "%d", *(v23 + 15));
          v98 = qword_100028640;
          *(qword_100028640 + 8) = 1;
          fputc(125, *v98);
          *(qword_100028640 + 8) = 1;
        }

LABEL_119:
        v23 += 304;
        if (v23 >= (__base + v121))
        {
          v23 = __base;
          v5 = &off_100028000;
          v8 = v118;
          v7 = v117;
          goto LABEL_122;
        }
      }
    }
  }

  if (v11 != 80)
  {
    goto LABEL_132;
  }

  v13 = sub_10000B688(optarg);
  if (!v13)
  {
    goto LABEL_27;
  }

  return v13;
}

uint64_t sub_100003B5C(int a1, char *const *a2)
{
  v17 = 0;
  v18 = 0;
  v24 = off_100020750;
  v25 = unk_100020760;
  v26 = xmmword_100020770;
  v27 = unk_100020780;
  v20 = off_100020710;
  v21 = unk_100020720;
  v22 = off_100020730;
  v23 = unk_100020740;
  v19 = off_1000206F0;
  v4 = getopt_long(a1, a2, "C:hI:P:", &v19, 0) << 24;
  if (v4 == -16777216)
  {
LABEL_12:
    result = sub_100010BCC("kern.skywalk.stats.flow_adv", &v17, &v18);
    if (!result)
    {
      v10 = v17;
      if (v17)
      {
        if (v18)
        {
          if (v18 < 1)
          {
            v16 = v17 + v18;
            v15 = v17;
          }

          else
          {
            do
            {
              memset(out, 0, 37);
              sub_10001087C(*(v10 + 8), __big, 0x100uLL, 1);
              if ((byte_100028608 != 1 || strcasestr(__big, qword_100028600)) && (byte_100028631 != 1 || !uuid_compare(v10, byte_100028621)) && (byte_100028620 != 1 || dword_10002861C == *(v10 + 8)))
              {
                puts(__big);
                uuid_unparse_upper(v10, out);
                printf("\tNexus UUID: %s\n", out);
                printf("\tNetif     : %s\n", v10 + 16);
                puts("\tFlowAdvIdx               Flow UUID                 Flags");
                v12 = *(v10 + 9);
                if (v12 > 0x2AA)
                {
                  sub_100011B7C();
                }

                if (v12)
                {
                  v13 = 0;
                  v14 = v10 + 40;
                  do
                  {
                    uuid_unparse_upper(v14, out);
                    printf("\t    [%3d] : %s ", v13, out);
                    sub_10001096C("flags", *(v14 + 4), "\x10\x01VALID\x02CONTROLLED");
                    putchar(10);
                    ++v13;
                    v14 += 20;
                  }

                  while (v13 < *(v10 + 9));
                }
              }

              v10 += 20 * *(v10 + 9) + 40;
              v15 = v17;
              v16 = v17 + v18;
            }

            while (v10 < v17 + v18);
          }

          if (v10 != v16)
          {
            fwrite("Error, mismatching sk_stats_flow_adv, quit\n", 0x2BuLL, 1uLL, __stderrp);
            exit(71);
          }

          free(v15);
          return 0;
        }
      }
    }

    return result;
  }

  while (1)
  {
    v5 = v4 >> 24;
    if (v5 > 79)
    {
      break;
    }

    if (v5 == 67)
    {
      v6 = &byte_100028608;
      v7 = &qword_100028600;
    }

    else
    {
      if (v5 != 73)
      {
        goto LABEL_38;
      }

      v6 = &byte_100028618;
      v7 = &qword_100028610;
    }

    v9 = optarg;
    *v6 = 1;
    *v7 = v9;
LABEL_11:
    v4 = getopt_long(a1, a2, "C:hI:P:", &v19, 0) << 24;
    if (v4 == -16777216)
    {
      goto LABEL_12;
    }
  }

  if (v5 == 80)
  {
    result = sub_10000B688(optarg);
    if (result)
    {
      return result;
    }

    goto LABEL_11;
  }

  if (v5 == 104)
  {
    fflush(__stderrp);
    fputs("Usage: flow-adv [ OPTIONS ]  show flow advisory information\n   -h, --help           this message\n   -C, --command=CMD    show only flow advisory from process matching CMD\n   -I, --interface=IF   show only flow advisory from interface matching IF\n   -P, --pid=PID        show only flow advisory from process matching PID\n", __stderrp);
    return 0;
  }

LABEL_38:
  fprintf(__stderrp, "unknown option %s\n", optarg);
  fflush(__stderrp);
  fputs("Usage: flow-adv [ OPTIONS ]  show flow advisory information\n   -h, --help           this message\n   -C, --command=CMD    show only flow advisory from process matching CMD\n   -I, --interface=IF   show only flow advisory from interface matching IF\n   -P, --pid=PID        show only flow advisory from process matching PID\n", __stderrp);
  return 64;
}

uint64_t sub_100003F20(int a1, char *const *a2)
{
  v17 = 0;
  v18 = 0;
  v24 = off_100020750;
  v25 = unk_100020760;
  v26 = xmmword_100020770;
  v27 = unk_100020780;
  v20 = off_100020710;
  v21 = unk_100020720;
  v22 = off_100020730;
  v23 = unk_100020740;
  v19 = off_1000206F0;
  v4 = getopt_long(a1, a2, "C:hI:P:", &v19, 0) << 24;
  if (v4 == -16777216)
  {
LABEL_12:
    result = sub_100010BCC("kern.skywalk.stats.flow_owner", &v17, &v18);
    if (!result && v17 && v18)
    {
      printf("%-8s  %-5s  %-9s  %-9s  %-3s  %s\n", "NetIf", "Port", "Property", "", "Bkt", "Process");
      v11 = v17;
      v10 = v18;
      if (&v17[v18] <= v17)
      {
        v16 = v17;
      }

      else
      {
        v12 = v17;
        do
        {
          if ((byte_100028608 != 1 || strcasestr(v11 + 36, qword_100028600)) && (byte_100028618 != 1 || !strcasecmp(v11 + 16, qword_100028610)) && (byte_100028620 != 1 || dword_10002861C == *(v11 + 17)))
          {
            printf("%-8s", v11 + 16);
            printf("  %-5u", *(v11 + 36));
            v14 = "PID-Bound";
            if (!*(v11 + 19))
            {
              v14 = "";
            }

            printf("  %-9s", v14);
            v15 = "Destroyed";
            if (!*(v11 + 20))
            {
              v15 = "";
            }

            printf("  %-9s", v15);
            printf("  %-3u", *(v11 + 8));
            printf("  %s(%d)\n", v11 + 36, *(v11 + 17));
          }

          v11 += 128;
          v16 = v17;
          v10 = v18;
          v12 += 128;
        }

        while (&v17[v18] > v12);
      }

      if (v11 != &v16[v10])
      {
        fwrite("Error, mismatching sk_stats_flow_owner, quit\n", 0x2DuLL, 1uLL, __stderrp);
        exit(71);
      }

      free(v16);
      return 0;
    }

    return result;
  }

  while (1)
  {
    v5 = v4 >> 24;
    if (v5 > 79)
    {
      break;
    }

    if (v5 == 67)
    {
      v6 = &byte_100028608;
      v7 = &qword_100028600;
    }

    else
    {
      if (v5 != 73)
      {
        goto LABEL_40;
      }

      v6 = &byte_100028618;
      v7 = &qword_100028610;
    }

    v9 = optarg;
    *v6 = 1;
    *v7 = v9;
LABEL_11:
    v4 = getopt_long(a1, a2, "C:hI:P:", &v19, 0) << 24;
    if (v4 == -16777216)
    {
      goto LABEL_12;
    }
  }

  if (v5 == 80)
  {
    result = sub_10000B688(optarg);
    if (result)
    {
      return result;
    }

    goto LABEL_11;
  }

  if (v5 == 104)
  {
    fflush(__stderrp);
    fputs("Usage: flow_owner [ OPTIONS ]  show flow owner information\n   -h, --help    this message\n   -C, --command=CMD    show only flow advisory from process matching CMD\n   -I, --interface=IF   show only flow advisory from interface matching IF\n   -P, --pid=PID        show only flow advisory from process matching PID\n", __stderrp);
    return 0;
  }

LABEL_40:
  fprintf(__stderrp, "unknown option %s\n", optarg);
  fflush(__stderrp);
  fputs("Usage: flow_owner [ OPTIONS ]  show flow owner information\n   -h, --help    this message\n   -C, --command=CMD    show only flow advisory from process matching CMD\n   -I, --interface=IF   show only flow advisory from interface matching IF\n   -P, --pid=PID        show only flow advisory from process matching PID\n", __stderrp);
  return 64;
}

uint64_t sub_1000042EC(int a1, char *const *a2)
{
  v35 = 0;
  v36 = 0;
  v38 = off_1000207B0;
  v39 = unk_1000207C0;
  v40 = xmmword_1000207D0;
  v41 = unk_1000207E0;
  v37 = off_100020790;
  v4 = getopt_long(a1, a2, "hn", &v37, 0) << 24;
  if (v4 != -16777216)
  {
    while (1)
    {
      v5 = v4 >> 24;
      if (v5 != 110)
      {
        break;
      }

      dword_1000285D0 = 1;
      v4 = getopt_long(a1, a2, "hn", &v37, 0) << 24;
      if (v4 == -16777216)
      {
        goto LABEL_4;
      }
    }

    if (v5 != 104)
    {
      fprintf(__stderrp, "unknown option %s\n", optarg);
      fflush(__stderrp);
      fputs("Usage: flow-route [ OPTIONS | help ] show flow-route entries\n   -h, --help        this message\n   -n, --numeric     don't resolve service names\n", __stderrp);
      return 64;
    }

    fflush(__stderrp);
    fputs("Usage: flow-route [ OPTIONS | help ] show flow-route entries\n   -h, --help        this message\n   -n, --numeric     don't resolve service names\n", __stderrp);
    return 0;
  }

LABEL_4:
  result = sub_100010BCC("kern.skywalk.stats.flow_route", &v35, &v36);
  if (!result && v35 && v36)
  {
    printf("%-40s %-40s %-40s %-17s %8s %6s %6s %5s %5s %6s\n", "Local Address", "Remote Address", "Gateway Address", "MAC Address", "NetIf", "Refs", "Expire", "bidx", "ibidx", "Flags");
    v8 = v35;
    v7 = v36;
    if (&v35[v36] <= v35)
    {
      v26 = v35;
LABEL_44:
      if (v8 != &v26[v7])
      {
        fwrite("Error, mismatching sk_stats_flow_route, quit\n", 0x2DuLL, 1uLL, __stderrp);
        exit(71);
      }

      free(v26);
      return 0;
    }

    v9 = 0;
    while (byte_100028631 == 1 && uuid_compare(&v8[v9], byte_100028621))
    {
LABEL_38:
      v26 = v35;
      v7 = v36;
      v9 += 256;
      if (&v35[v36] <= &v8[v9])
      {
        v8 += v9;
        goto LABEL_44;
      }
    }

    v10 = v8[v9 + 101];
    if (v10 == 30)
    {
      v14 = sub_100010EA8(&v8[v9 + 80], dword_1000285D0 != 0);
      printf("%-*.*s", 40, 40, v14);
      putchar(32);
      v15 = sub_100010EA8(&v8[v9 + 108], dword_1000285D0 != 0);
      printf("%-*.*s", 40, 40, v15);
      putchar(32);
      if ((v8[v9 + 56] & 0x20) != 0)
      {
        v13 = sub_100010EA8(&v8[v9 + 136], dword_1000285D0 != 0);
        goto LABEL_18;
      }
    }

    else
    {
      if (v10 != 2)
      {
LABEL_19:
        putchar(32);
        v16 = &v8[v9];
        if (v8[v9 + 56] < 0)
        {
          v17 = v16[192];
          v31 = v16[196];
          v33 = v16[197];
          v28 = v16[194];
          v29 = v16[195];
          v27 = v16[193];
          printf("%02x:%02x:%02x:%02x:%02x:%02x");
        }

        else
        {
          printf("-                ");
        }

        putchar(32);
        printf("%8s", &v8[v9 + 32]);
        putchar(32);
        printf("%6u %6lld %5u %5u", *&v8[v9 + 60], *&v8[v9 + 64], *&v8[v9 + 48], *&v8[v9 + 52]);
        putchar(32);
        v18 = *(v16 + 14);
        if ((v18 & 0x400) != 0)
        {
          v19 = 98;
        }

        else
        {
          v19 = 45;
        }

        v20 = 109;
        if ((v18 & 0x200) == 0)
        {
          v20 = 45;
        }

        v21 = 100;
        if ((v18 & 0x100) == 0)
        {
          v21 = 45;
        }

        v34 = v20;
        v32 = v21;
        v22 = 105;
        if ((v18 & 0x80) == 0)
        {
          v22 = 45;
        }

        v23 = 114;
        if ((v18 & 0x40) == 0)
        {
          v23 = 45;
        }

        v30 = v22;
        v24 = 103;
        if ((v18 & 0x20) == 0)
        {
          v24 = 45;
        }

        v25 = 111;
        if ((*(v16 + 14) & 0x10) == 0)
        {
          v25 = 45;
        }

        printf(" %c%c%c%c%c%c%c", v25, v24, v23, v30, v32, v34, v19);
        putchar(10);
        goto LABEL_38;
      }

      v11 = sub_100010CA0(&v8[v9 + 76], dword_1000285D0 != 0);
      printf("%-*s", 40, v11);
      putchar(32);
      v12 = sub_100010CA0(&v8[v9 + 104], dword_1000285D0 != 0);
      printf("%-*s", 40, v12);
      putchar(32);
      if ((v8[v9 + 56] & 0x20) != 0)
      {
        v13 = sub_100010CA0(&v8[v9 + 132], dword_1000285D0 != 0);
LABEL_18:
        printf("%-*s", 40, v13);
        goto LABEL_19;
      }
    }

    printf("%-*s", 40, "-");
    goto LABEL_19;
  }

  return result;
}

uint64_t sub_1000047EC(int a1, char *const *a2)
{
  v22 = off_100020870;
  v23 = unk_100020880;
  v24 = xmmword_100020890;
  v25 = unk_1000208A0;
  v18 = off_100020830;
  v19 = unk_100020840;
  v20 = off_100020850;
  v21 = unk_100020860;
  v15 = off_1000207F0;
  v16 = off_100020810;
  v17 = unk_100020820;
  v4 = getopt_long(a1, a2, "GhI:U:v", &v15, 0) << 24;
  if (v4 == -16777216)
  {
LABEL_12:
    uu1 = 0;
    v13 = 0;
    v6 = sub_100010BCC("kern.skywalk.stats.flow_switch", &uu1, &v13);
    if (!v6 && uu1 && v13)
    {
      if (__ROR8__(0xF0F0F0F0F0F0F0F1 * v13, 6) >= 0x3C3C3C3C3C3C3DuLL)
      {
        fwrite("Error, mismatching sk_stats_flow_switch, quit\n", 0x2EuLL, 1uLL, __stderrp);
        exit(71);
      }

      puts("flowswitch:");
      if (dword_1000285C8)
      {
        bzero(out, 0x3F0uLL);
        if (v13 >= 1)
        {
          v7 = uu1;
          v8 = &uu1[v13];
          do
          {
            for (i = 0; i != 1008; i += 16)
            {
              *&out[i] = vaddq_s64(*&out[i], *&v7[i + 32]);
            }

            v7 += 1088;
          }

          while (v7 < v8);
        }

        sub_10000B7C4(out);
      }

      else
      {
        qsort(uu1, v13 / 0x440uLL, 0x440uLL, sub_10000B888);
        if (v13 >= 1)
        {
          v10 = uu1;
          do
          {
            if ((byte_100028631 != 1 || !uuid_compare(v10, byte_100028621)) && (byte_100028618 != 1 || !strcasecmp(v10 + 16, qword_100028610)))
            {
              memset(out, 0, 37);
              uuid_unparse_upper(v10, out);
              printf("%s\n%s\n", v10 + 16, out);
              sub_10000B7C4((v10 + 32));
            }

            v10 += 1088;
          }

          while (v10 < &uu1[v13]);
        }
      }
    }

    return v6;
  }

  while (1)
  {
    v5 = v4 >> 24;
    if (v5 > 84)
    {
      break;
    }

    if (v5 == 71)
    {
      dword_1000285C8 = 1;
    }

    else
    {
      if (v5 != 73)
      {
        goto LABEL_34;
      }

      byte_100028618 = 1;
      qword_100028610 = optarg;
    }

LABEL_11:
    v4 = getopt_long(a1, a2, "GhI:U:v", &v15, 0) << 24;
    if (v4 == -16777216)
    {
      goto LABEL_12;
    }
  }

  switch(v5)
  {
    case 'U':
      sub_10000B74C(optarg);
      goto LABEL_11;
    case 'v':
      HIDWORD(qword_1000285DC) = 1;
      goto LABEL_11;
    case 'h':
      fflush(__stderrp);
      fputs("Usage flowswitch [ OPTIONS ] show flowswitch statistics\n   -h, --help          this message\n   -G, --global        show folded global stats\n   -I, --interface=IF  match based on interface IF\n   -U, --uuid=UUID     match based on nexus UUID\n   -v, --verbose       verbose output\n", __stderrp);
      return 0;
  }

LABEL_34:
  fprintf(__stderrp, "unknown option %s", optarg);
  fflush(__stderrp);
  fputs("Usage flowswitch [ OPTIONS ] show flowswitch statistics\n   -h, --help          this message\n   -G, --global        show folded global stats\n   -I, --interface=IF  match based on interface IF\n   -U, --uuid=UUID     match based on nexus UUID\n   -v, --verbose       verbose output\n", __stderrp);
  return 64;
}

uint64_t sub_100004BB4(int a1, char *const *a2)
{
  v103 = unk_100021150;
  v104 = xmmword_100021160;
  v105 = unk_100021170;
  v99 = unk_100021110;
  v100 = off_100021120;
  v101 = unk_100021130;
  v102 = off_100021140;
  v94 = off_1000210C0;
  v95 = unk_1000210D0;
  v96 = off_1000210E0;
  __endptr = 0;
  v97 = unk_1000210F0;
  v98 = off_100021100;
  v93 = off_1000210A0;
  v4 = getopt_long(a1, a2, "GhLQI:W:", &v93, 0) << 24;
  v68 = 1;
  if (v4 == -16777216)
  {
    v5 = 0;
    v67 = 1;
LABEL_20:
    v85 = 0;
    v10 = 0;
    v11 = &off_100028000;
    do
    {
      v90 = 0;
      v91 = 0;
      result = sub_100010BCC("kern.skywalk.stats.net_if", &v90, &v91);
      if (result)
      {
        v13 = 1;
      }

      else
      {
        v13 = v90 == 0;
      }

      if (v13 || v91 == 0)
      {
        return result;
      }

      if (__ROR8__(0x8E38E38E38E38E39 * v91, 7) >= 0x38E38E38E38E39uLL)
      {
        v64 = __stderrp;
        v65 = "struct sk_stats_net_if";
        goto LABEL_124;
      }

      v88 = 0;
      v89 = 0;
      result = sub_100010BCC("kern.skywalk.llink_list", &v88, &v89);
      if (result)
      {
        return result;
      }

      v75 = v88;
      if (!v88)
      {
        return result;
      }

      v15 = v89;
      if (!v89)
      {
        return result;
      }

      if (__ROR8__(0x80FE03F80FE03F81 * v89, 5) >= 0xFE03F80FE03F9uLL)
      {
        v64 = __stderrp;
        v65 = "struct nx_llink_info";
        goto LABEL_124;
      }

      v17 = v90;
      v16 = v91;
      puts("\nnetif:");
      v79 = &v17[v16];
      if (dword_1000285C8)
      {
        bzero(out, 0x440uLL);
        if (v16 >= 1)
        {
          do
          {
            for (i = 0; i != 1088; i += 16)
            {
              *&out[i] = vaddq_s64(*&out[i], *&v17[i + 32]);
            }

            v17 += 1152;
          }

          while (v17 < v79);
        }

        sub_10000B894(out);
      }

      else
      {
        qsort(v17, v16 / 0x480uLL, 0x480uLL, sub_10000B958);
        if (v16 >= 1)
        {
          v19 = &v75[v15];
          v20 = v67;
          if (v15 < 1)
          {
            v20 = 1;
          }

          v77 = v20;
          v72 = v10;
          v81 = &v75[v15];
          do
          {
            if ((*(v11 + 1585) != 1 || !uuid_compare(v17, byte_100028621)) && (byte_100028618 != 1 || !strcasecmp(v17 + 16, qword_100028610)))
            {
              memset(out, 0, 37);
              uuid_unparse_upper(v17, out);
              printf("%s\n%s\n", v17 + 16, out);
              sub_10000B894((v17 + 32));
              if ((v77 & 1) == 0)
              {
                v21 = 0;
                v23 = v75 + 43;
                v22 = v75;
                v83 = v17;
                do
                {
                  if (!uuid_compare(v22, v17))
                  {
                    if ((v21 & 1) == 0)
                    {
                      printf("\t%-24s:\n", "llinks");
                    }

                    printf("\t\tlink_id: 0x%llx\n", *(v22 + 2));
                    printf("\t\tlink_id_internal: 0x%x\n", *(v22 + 12));
                    sub_10000B964(dword_100028418, v22[26], "\t\tstates: %s\n");
                    sub_10000B964(dword_1000283F8, v22[27], "\t\tflags: %s\n");
                    printf("\t\tqset_cnt: %d\n", *(v22 + 14));
                    if (*(v22 + 14))
                    {
                      v24 = 0;
                      v25 = v23;
                      do
                      {
                        printf("\t\t\tqset_id: 0x%llx\n", *(v25 - 11));
                        sub_10000B964(dword_1000283A8, *(v25 - 3), "\t\t\tflags: %s\n");
                        printf("\t\t\tnum_rx_queues: %d\n", *(v25 - 1));
                        v26 = *v25;
                        v25 += 16;
                        printf("\t\t\tnum_tx_queues: %d\n", v26);
                        ++v24;
                      }

                      while (v24 < *(v22 + 14));
                      v21 = 1;
                      v10 = v72;
                      v19 = v81;
                      v17 = v83;
                    }

                    else
                    {
                      v21 = 1;
                    }
                  }

                  v22 += 4128;
                  v23 += 4128;
                }

                while (v22 < v19);
              }

              v11 = &off_100028000;
            }

            v17 += 1152;
          }

          while (v17 < v79);
        }
      }

      v27 = 0;
      v86 = 0;
      v87 = 0;
      if (!v68)
      {
        v87 = 0;
        result = sub_100010BCC("kern.skywalk.stats.netif_queue", &v87, &v86);
        if (result)
        {
          return result;
        }

        v78 = v87;
        if (!v87)
        {
          return result;
        }

        v28 = v86;
        if (!v86)
        {
          return result;
        }

        v27 = v86 / 0x48;
        if (v86 % 0x48)
        {
          v64 = __stderrp;
          v65 = "struct netif_qstats_info";
LABEL_124:
          fprintf(v64, "Error, mismatching %s, quit\n", v65);
          exit(71);
        }

        v30 = v90;
        v29 = v91;
        v31 = v88;
        v32 = v89;
        puts("\nnetif queue statistics:");
        if (v29 >= 1)
        {
          v70 = v32;
          v71 = &v30[v29];
          v74 = &v31[v32];
          v80 = v28;
          uu1 = v31;
          do
          {
            if (*(v11 + 1585) != 1 || !uuid_compare(v30, byte_100028621))
            {
              __s = v30 + 16;
              if (byte_100028618 != 1 || !strcasecmp(v30 + 16, qword_100028610))
              {
                memset(out, 0, 37);
                uuid_unparse_upper(v30, out);
                if (v32 >= 1)
                {
                  v33 = uu1;
                  v76 = v30;
                  do
                  {
                    if (!uuid_compare(v33, v30))
                    {
                      v34 = strlen(__s);
                      printf("\n%.*s%s%.*s\n", (122 - v34) / 2, "=============================================================", __s, 122 - v34 - (122 - v34) / 2, "=============================================================");
                      printf("llink_id: 0x%-16llx", *(v33 + 2));
                      sub_10000B964(dword_100028418, v33[26], "\tllink states: %-18s");
                      sub_10000B964(dword_1000283F8, v33[27], "\tllink flags: %s\n");
                      if (*(v33 + 14))
                      {
                        v35 = 0;
                        v82 = v33 + 32;
                        v84 = v33;
                        do
                        {
                          v36 = &v82[16 * v35];
                          printf("\nqset_id: 0x%-17llx", *v36);
                          sub_10000B964(dword_1000283A8, *(v36 + 4), "\tqset flags: %s\n");
                          if (v28 >= 0x48)
                          {
                            v37 = 0;
                            v38 = 1;
                            v39 = v78;
                            do
                            {
                              if (*v39 == *v36)
                              {
                                if (v38)
                                {
                                  sub_10000AE4C(v5 != 0, 1, "bits");
                                }

                                v40 = v39[5];
                                v41 = v39[4];
                                v42 = (v41 & 1) == 0;
                                if (v41)
                                {
                                  v43 = 0;
                                }

                                else
                                {
                                  v43 = v36[10];
                                }

                                v44 = "RX";
                                if (v42)
                                {
                                  v44 = "TX";
                                }

                                v45 = *(v39 + 4);
                                if (v45)
                                {
                                  v46 = *(v39 + 2) / v45;
                                }

                                else
                                {
                                  v46 = 0;
                                }

                                v47 = 0.0;
                                if (v85 && v10)
                                {
                                  v48 = v10;
                                  v49 = v85 + 8;
                                  while (*(v49 - 2) != *v39 || *(v49 - 3) != v40)
                                  {
                                    v49 += 9;
                                    if (!--v48)
                                    {
                                      goto LABEL_99;
                                    }
                                  }

                                  v50 = v45 - v49[2];
                                  v47 = (8 * (*(v39 + 3) - v49[1]));
                                  v51 = (*(v39 + 2) - *v49);
                                }

                                else
                                {
LABEL_99:
                                  v50 = 0;
                                  v51 = 0.0;
                                }

                                snprintf(__str, 0x10uLL, "%s[%d]", v44, (v40 - v43));
                                printf("%-8s", __str);
                                v52 = sub_1000114E4(v107, 32, (8 * *(v39 + 7)));
                                printf(" %12s", v52);
                                v53 = sub_1000114E4(v107, 32, (8 * *(v39 + 8)));
                                printf(" %12s", v53);
                                if (v5)
                                {
                                  sub_1000114E4(v107, 32, v47);
                                  printf(" %12s");
                                }

                                else
                                {
                                  v55 = 8 * *(v39 + 3);
                                  printf(" %12qu");
                                }

                                LODWORD(v54) = *(v39 + 12);
                                v56 = sub_1000114E4(v107, 32, v54);
                                printf(" %12s", v56);
                                LODWORD(v57) = *(v39 + 13);
                                v58 = sub_1000114E4(v107, 32, v57);
                                printf(" %12s", v58);
                                if (v5)
                                {
                                  v59 = sub_1000114E4(v107, 32, v51);
                                  printf(" %12s", v59);
                                  printf(" %4d %4qu %4d", *(v39 + 10), v46, *(v39 + 11));
                                  sub_1000114E4(v107, 32, (v50 / v5));
                                  printf(" %12s");
                                }

                                else
                                {
                                  printf(" %12qu", *(v39 + 2));
                                  v60 = *(v39 + 10);
                                  v66 = *(v39 + 11);
                                  printf(" %4d %4qu %4d");
                                }

                                v61 = sub_100011264(*(v39 + 3));
                                printf(" %8s", v61);
                                putchar(10);
                                v38 = 0;
                              }

                              v39 += 36;
                              ++v37;
                            }

                            while (v37 != v27);
                          }

                          ++v35;
                          v33 = v84;
                          v28 = v80;
                        }

                        while (v35 < *(v84 + 14));
                      }
                    }

                    v33 += 4128;
                    v30 = v76;
                  }

                  while (v33 < v74);
                }

                v11 = &off_100028000;
                v32 = v70;
              }
            }

            v30 += 1152;
          }

          while (v30 < v71);
        }
      }

      free(v90);
      free(v88);
      free(v85);
      v85 = v87;
      sleep(v5);
      v10 = v27;
    }

    while (v5);
    free(v85);
    return 0;
  }

  v6 = 0;
  v7 = 0;
  v5 = 0;
  while (1)
  {
    v8 = v4 >> 24;
    if (v8 <= 80)
    {
      switch(v8)
      {
        case 'G':
          dword_1000285C8 = 1;
          break;
        case 'I':
          byte_100028618 = 1;
          qword_100028610 = optarg;
          break;
        case 'L':
          v6 = 1;
          break;
        default:
          goto LABEL_120;
      }

      goto LABEL_18;
    }

    if (v8 == 81)
    {
      v7 = 1;
      goto LABEL_18;
    }

    if (v8 != 87)
    {
      break;
    }

    v9 = strtol(optarg, &__endptr, 10);
    if (__endptr == optarg || *__endptr || (v5 = v9, *__error() == 34))
    {
      fflush(__stderrp);
      v62 = __stderrp;
      v63 = "Usage: channel [ OPTIONS ] show channel statistics\n   -h, --help         this message\n   -C, --command=CMD  show channels only from CMD\n   -w, --wait=INT     show statistics at intervals of wait seconds\n";
LABEL_117:
      fputs(v63, v62);
      return 0;
    }

LABEL_18:
    v4 = getopt_long(a1, a2, "GhLQI:W:", &v93, 0) << 24;
    if (v4 == -16777216)
    {
      v67 = v6 == 0;
      v68 = v7 == 0;
      goto LABEL_20;
    }
  }

  if (v8 == 104)
  {
    fflush(__stderrp);
    v62 = __stderrp;
    v63 = "Usage: interface [ OPTIONS ] show interface netif statistics\n   -h, --help          this message\n   -G, --global        show folded global stats\n   -I, --interface=IF  match based on interface IF\n   -L, --llink         display information of logical links\n   -Q, --queue         display stats of netif queues\n   -W, --wait=INT      show statistics at intervals of wait seconds\n";
    goto LABEL_117;
  }

LABEL_120:
  fprintf(__stderrp, "unknown option %s\n", optarg);
  fflush(__stderrp);
  fputs("Usage: interface [ OPTIONS ] show interface netif statistics\n   -h, --help          this message\n   -G, --global        show folded global stats\n   -I, --interface=IF  match based on interface IF\n   -L, --llink         display information of logical links\n   -Q, --queue         display stats of netif queues\n   -W, --wait=INT      show statistics at intervals of wait seconds\n", __stderrp);
  return 64;
}

uint64_t sub_10000576C(int a1, char *const *a2)
{
  v257 = 0;
  v258 = &v257;
  v255 = 0;
  v256 = &v255;
  v253 = 0;
  v254 = &v253;
  v266 = off_100021A70;
  v267 = unk_100021A80;
  v268 = xmmword_100021A90;
  v269 = unk_100021AA0;
  v262 = off_100021A30;
  v263 = unk_100021A40;
  v264 = off_100021A50;
  v265 = unk_100021A60;
  v261 = off_100021A10;
  v252 = 0;
  v4 = getopt_long(a1, a2, "aAChgI:JP:Rs", &v261, 0) << 24;
  v5 = &off_100028000;
  if (v4 == -16777216)
  {
    v249 = 0;
    goto LABEL_3;
  }

  v249 = 0;
  v9 = 0;
  v8 = 0;
  v7 = 0;
  v10 = 0;
  while (1)
  {
    v11 = v4 >> 24;
    if (v11 <= 81)
    {
      if (v11 <= 72)
      {
        if (v11 == 65)
        {
          v10 = 1;
        }

        else
        {
          if (v11 != 67)
          {
            goto LABEL_241;
          }

          v8 = 1;
        }
      }

      else
      {
        switch(v11)
        {
          case 'I':
            byte_100028618 = 1;
            qword_100028610 = optarg;
            break;
          case 'J':
            dword_1000285CC = 1;
            break;
          case 'P':
            v12 = sub_10000B688(optarg);
            if (v12)
            {
              return v12;
            }

            break;
          default:
            goto LABEL_241;
        }
      }

      goto LABEL_29;
    }

    if (v11 > 102)
    {
      break;
    }

    if (v11 == 82)
    {
      v7 = 1;
      goto LABEL_29;
    }

    if (v11 != 97)
    {
      goto LABEL_241;
    }

    v10 = 1;
    v7 = 1;
    v8 = 1;
LABEL_20:
    v9 = 1;
LABEL_29:
    v4 = getopt_long(a1, a2, "aAChgI:JP:Rs", &v261, 0) << 24;
    if (v4 == -16777216)
    {
      if (v10)
      {
        v6 = 1;
        goto LABEL_34;
      }

      if ((v8 & 1) == 0)
      {
        v5 = &off_100028000;
        if (v7)
        {
          v6 = 0;
          v8 = 0;
          v7 = 1;
          goto LABEL_35;
        }

        if (v9)
        {
          v6 = 0;
          v7 = 0;
          v8 = 0;
          goto LABEL_4;
        }

LABEL_3:
        v6 = 1;
        v7 = 1;
        v8 = 1;
LABEL_4:
        v9 = 1;
        goto LABEL_35;
      }

      v6 = 0;
      v8 = 1;
LABEL_34:
      v5 = &off_100028000;
LABEL_35:
      if (*(v5 + 371))
      {
        v13 = malloc_type_malloc(0x10uLL, 0x10200405F07FB98uLL);
        v14 = __stdoutp;
        *v13 = __stdoutp;
        v13[8] = 0;
        qword_100028640 = v13;
        fputc(123, v14);
        v15 = qword_100028640;
        *(qword_100028640 + 8) = 0;
        fwrite("version:", 0xAuLL, 1uLL, *v15);
        v16 = qword_100028640;
        *(qword_100028640 + 8) = 0;
        fprintf(*v16, "%.1f", 0.2);
        *(qword_100028640 + 8) = 1;
      }

      *&v270 = 0;
      *__str = 0;
      v166 = sub_100010BCC("kern.skywalk.stats.arena", &v270, __str);
      v17 = v270;
      if (v166 || !v270 || !*__str)
      {
LABEL_46:
        if (v17)
        {
          goto LABEL_47;
        }

        goto LABEL_48;
      }

      if (__ROR8__(0xAF8AF8AF8AF8AF8BLL * *__str, 4) > 0x75075075075075uLL)
      {
        v240 = __stderrp;
        v241 = "Error, mismatching sk_stats_arena, quit\n";
      }

      else
      {
        if (*__str >= 1)
        {
          v245 = v9;
          v18 = v5;
          v19 = v7;
          v20 = v6;
          v21 = 1;
          do
          {
            v22 = malloc_type_calloc(1uLL, 0x240uLL, 0x1020040A36EC23CuLL);
            if (!v22)
            {
              goto LABEL_310;
            }

            v23 = v22;
            *(v22 + 2) = v21;
            memcpy(v22 + 2, v17, 0x230uLL);
            *v23 = 0;
            *v258 = v23;
            v258 = v23;
            v17 += 560;
            ++v21;
          }

          while (v17 < v270 + *__str);
          v17 = v270;
          v6 = v20;
          v7 = v19;
          v5 = v18;
          v9 = v245;
          goto LABEL_46;
        }

LABEL_47:
        free(v17);
LABEL_48:
        if (v166)
        {
LABEL_49:
          if (*(v5 + 371) && qword_100028640)
          {
            fputc(125, *qword_100028640);
            v24 = qword_100028640;
            *(qword_100028640 + 8) = 1;
            fclose(*v24);
            free(qword_100028640);
          }

          if (v8)
          {
            v25 = v253;
            if (v253)
            {
              while (1)
              {
                v26 = v25;
                v25 = *v25;
                v27 = v253;
                if (v253 != v26)
                {
                  break;
                }

                v253 = *v253;
                if (!v253)
                {
                  v28 = &v253;
LABEL_60:
                  v254 = v28;
                }

LABEL_61:
                free(v26);
                if (!v25)
                {
                  goto LABEL_62;
                }
              }

              do
              {
                v28 = v27;
                v27 = *v27;
              }

              while (v27 != v26);
              v29 = *v27;
              *v28 = v29;
              if (v29)
              {
                goto LABEL_61;
              }

              goto LABEL_60;
            }

LABEL_62:
            v30 = v255;
            if (v255)
            {
              goto LABEL_63;
            }

LABEL_80:
            v42 = v257;
            if (!v257)
            {
              return v166;
            }

            while (2)
            {
              v43 = v42;
              v42 = *v42;
              v44 = v257;
              if (v257 == v43)
              {
                v257 = *v257;
                if (!v257)
                {
                  v45 = &v257;
                  goto LABEL_87;
                }
              }

              else
              {
                do
                {
                  v45 = v44;
                  v44 = *v44;
                }

                while (v44 != v43);
                v46 = *v44;
                *v45 = v46;
                if (!v46)
                {
LABEL_87:
                  v258 = v45;
                }
              }

              free(v43);
              if (!v42)
              {
                return v166;
              }

              continue;
            }
          }

          v30 = v255;
          if ((v7 & (v255 != 0)) == 0)
          {
            goto LABEL_80;
          }

LABEL_63:
          while (2)
          {
            v31 = *v30;
            v32 = v255;
            if (v255 == v30)
            {
              v255 = *v255;
              if (!v255)
              {
                v33 = &v255;
                goto LABEL_69;
              }
            }

            else
            {
              do
              {
                v33 = v32;
                v32 = *v32;
              }

              while (v32 != v30);
              v34 = *v32;
              *v33 = v34;
              if (!v34)
              {
LABEL_69:
                v256 = v33;
              }
            }

            sub_100001D54(&v252, v30);
            v35 = (v30 + 4);
            v36 = v30[4];
            if (!v36)
            {
LABEL_79:
              free(v30);
              v30 = v31;
              if (!v31)
              {
                goto LABEL_80;
              }

              continue;
            }

            break;
          }

          while (2)
          {
            v37 = v36;
            v36 = *v36;
            v38 = *v35;
            if (*v35 == v37)
            {
              v41 = *v38;
              *v35 = v41;
              v39 = v30 + 4;
              if (!v41)
              {
                goto LABEL_74;
              }
            }

            else
            {
              do
              {
                v39 = v38;
                v38 = *v38;
              }

              while (v38 != v37);
              v40 = *v38;
              *v39 = v40;
              if (!v40)
              {
LABEL_74:
                v30[5] = v39;
              }
            }

            free(v37);
            if (!v36)
            {
              goto LABEL_79;
            }

            continue;
          }
        }

        if (((v7 | v8) & 1) == 0)
        {
          goto LABEL_105;
        }

        *&v270 = 0;
        *__str = 0;
        v166 = sub_100010BCC("kern.skywalk.stats.region", &v270, __str);
        v48 = v270;
        if (v166 || !v270 || !*__str)
        {
          goto LABEL_102;
        }

        if (__ROR8__(0x34F72C234F72C235 * *__str, 3) > 0x11A7B9611A7B961uLL)
        {
          v240 = __stderrp;
          v241 = "Error, mismatching sk_stats_region, quit\n";
          v242 = 41;
          goto LABEL_311;
        }

        if (*__str < 1)
        {
          goto LABEL_103;
        }

        v49 = 1;
        do
        {
          v50 = malloc_type_calloc(1uLL, 0x120uLL, 0x10A00408F098E8AuLL);
          if (!v50)
          {
            goto LABEL_310;
          }

          *(v50 + 4) = 0;
          *(v50 + 5) = v50 + 32;
          *(v50 + 13) = v49;
          v51 = *v48;
          v52 = v48[1];
          *(v50 + 88) = v48[2];
          *(v50 + 72) = v52;
          *(v50 + 56) = v51;
          v53 = v48[3];
          v54 = v48[4];
          v55 = v48[5];
          *(v50 + 152) = v48[6];
          *(v50 + 136) = v55;
          *(v50 + 120) = v54;
          *(v50 + 104) = v53;
          v56 = v48[7];
          v57 = v48[8];
          v58 = v48[9];
          *(v50 + 216) = v48[10];
          *(v50 + 200) = v58;
          *(v50 + 184) = v57;
          *(v50 + 168) = v56;
          v59 = v48[11];
          v60 = v48[12];
          v61 = v48[13];
          *(v50 + 35) = *(v48 + 28);
          *(v50 + 264) = v61;
          *(v50 + 248) = v60;
          *(v50 + 232) = v59;
          *v50 = 0;
          *v256 = v50;
          v256 = v50;
          sub_100001EC4(&v252, v50);
          v48 = (v48 + 232);
          ++v49;
        }

        while (v48 < v270 + *__str);
        v48 = v270;
LABEL_102:
        if (v48)
        {
LABEL_103:
          free(v48);
        }

        if (v166)
        {
          goto LABEL_49;
        }

LABEL_105:
        if ((v8 & 1) == 0)
        {
          goto LABEL_118;
        }

        *&v270 = 0;
        *__str = 0;
        v166 = sub_100010BCC("kern.skywalk.stats.cache", &v270, __str);
        v62 = v270;
        if (v166 || !v270 || !*__str)
        {
          goto LABEL_115;
        }

        if (__ROR8__(0x6F96F96F96F96F97 * *__str, 3) <= 0xD20D20D20D20D2uLL)
        {
          if (*__str < 1)
          {
            goto LABEL_116;
          }

          v246 = v9;
          v63 = v5;
          v64 = v7;
          v7 = v6;
          v65 = 1;
          do
          {
            v66 = malloc_type_calloc(1uLL, 0x150uLL, 0x10200409E86C814uLL);
            if (!v66)
            {
              goto LABEL_310;
            }

            v67 = v66;
            *(v66 + 4) = v65;
            memcpy(v66 + 3, v62, 0x138uLL);
            *v67 = 0;
            *v254 = v67;
            v254 = v67;
            v62 += 312;
            ++v65;
          }

          while (v62 < v270 + *__str);
          v62 = v270;
          v6 = v7;
          LOBYTE(v7) = v64;
          v5 = v63;
          v9 = v246;
LABEL_115:
          if (v62)
          {
LABEL_116:
            free(v62);
          }

          if (v166)
          {
            goto LABEL_49;
          }

LABEL_118:
          v244 = v7;
          if (v7)
          {
            v247 = v9;
            v68 = v8;
            v286 = 0u;
            v287 = 0u;
            v284 = 0u;
            v285 = 0u;
            v282 = 0u;
            v283 = 0u;
            v280 = 0u;
            v281 = 0u;
            v278 = 0u;
            v279 = 0u;
            v276 = 0u;
            v277 = 0u;
            v274 = 0u;
            v275 = 0u;
            v272 = 0u;
            v273 = 0u;
            v270 = 0u;
            v271 = 0u;
            v69 = v257;
            if (v257)
            {
              do
              {
                v70 = 0;
                v71 = (v69 + 24);
                do
                {
                  if (!uuid_is_null(&v71[16 * v70]))
                  {
                    v69[3] |= 1 << v70;
                    uuid_copy(&v277 + 8, &v71[16 * v70]);
                    for (i = v252; i; i = *(i + v74))
                    {
                      v73 = uuid_compare(&v277 + 8, (i + 120));
                      if (v73 < 0)
                      {
                        v74 = 8;
                      }

                      else
                      {
                        if (!v73)
                        {
                          v75 = malloc_type_calloc(1uLL, 0x10uLL, 0x20040A4A59CD2uLL);
                          *v75 = 0;
                          v75[1] = v69;
                          **(i + 40) = v75;
                          *(i + 40) = v75;
                          break;
                        }

                        v74 = 16;
                      }
                    }
                  }

                  ++v70;
                }

                while (v70 != 28);
                v69 = *v69;
              }

              while (v69);
            }

            LOBYTE(v8) = v68;
            LOBYTE(v7) = v244;
            v9 = v247;
          }

          if (v8)
          {
            v76 = v253;
            if (v253)
            {
              v286 = 0u;
              v287 = 0u;
              v284 = 0u;
              v285 = 0u;
              v282 = 0u;
              v283 = 0u;
              v280 = 0u;
              v281 = 0u;
              v278 = 0u;
              v279 = 0u;
              v276 = 0u;
              v277 = 0u;
              v274 = 0u;
              v275 = 0u;
              v272 = 0u;
              v273 = 0u;
              v270 = 0u;
              v271 = 0u;
              do
              {
                if (!uuid_is_null(v76 + 104))
                {
                  uuid_copy(&v277 + 8, v76 + 104);
                  for (j = v252; j; j = *(j + v79))
                  {
                    v78 = uuid_compare(&v277 + 8, (j + 120));
                    if (v78 < 0)
                    {
                      v79 = 8;
                    }

                    else
                    {
                      if (!v78)
                      {
                        *(v76 + 1) = j;
                        break;
                      }

                      v79 = 16;
                    }
                  }
                }

                v76 = *v76;
              }

              while (v76);
            }
          }

          if (*(v5 + 371))
          {
            if (v6)
            {
              v80 = qword_100028640;
              if (qword_100028640)
              {
                if (*(qword_100028640 + 8) == 1)
                {
                  fputc(44, *qword_100028640);
                  v80 = qword_100028640;
                }

                fwrite("arena:", 8uLL, 1uLL, *v80);
                v81 = qword_100028640;
                *(qword_100028640 + 8) = 0;
                fputc(91, *v81);
                v80 = qword_100028640;
                *(qword_100028640 + 8) = 0;
              }

              v82 = v257;
              if (v257)
              {
                do
                {
                  if (v80)
                  {
                    if (*(v80 + 8) == 1)
                    {
                      fputc(44, *v80);
                      v80 = qword_100028640;
                    }

                    fputc(123, *v80);
                    v83 = qword_100028640;
                    *(qword_100028640 + 8) = 0;
                    fwrite("id:", 5uLL, 1uLL, *v83);
                    v84 = qword_100028640;
                    *(qword_100028640 + 8) = 0;
                    fprintf(*v84, "a%u", *(v82 + 2));
                    v85 = qword_100028640;
                    *(qword_100028640 + 8) = 1;
                    fputc(44, *v85);
                    fwrite("name:", 7uLL, 1uLL, *qword_100028640);
                    v86 = qword_100028640;
                    *(qword_100028640 + 8) = 0;
                    fprintf(*v86, "%s", v82 + 16);
                    v87 = qword_100028640;
                    *(qword_100028640 + 8) = 1;
                    fputc(44, *v87);
                    fwrite("type:", 7uLL, 1uLL, *qword_100028640);
                    v88 = qword_100028640;
                    *(qword_100028640 + 8) = 0;
                    v89 = *v88;
                    v90 = *(v82 + 20);
                    v91 = "?";
                    if (v90 <= 2)
                    {
                      v91 = off_100024570[v90];
                    }

                    fprintf(v89, "%s", v91);
                    v92 = qword_100028640;
                    *(qword_100028640 + 8) = 1;
                    fputc(44, *v92);
                    fwrite("mapSize:", 0xAuLL, 1uLL, *qword_100028640);
                    v93 = qword_100028640;
                    *(qword_100028640 + 8) = 0;
                    fprintf(*v93, "%llu", *(v82 + 11));
                    v94 = qword_100028640;
                    *(qword_100028640 + 8) = 1;
                    fputc(44, *v94);
                    fwrite("regionTypes:", 0xEuLL, 1uLL, *qword_100028640);
                    *(qword_100028640 + 8) = 0;
                  }

                  sub_10000CA34(dword_100028048, *(v82 + 3));
                  v80 = qword_100028640;
                  if (qword_100028640)
                  {
                    if (*(qword_100028640 + 8) == 1)
                    {
                      fputc(44, *qword_100028640);
                      v80 = qword_100028640;
                    }

                    fwrite("clients:", 0xAuLL, 1uLL, *v80);
                    v95 = qword_100028640;
                    *(qword_100028640 + 8) = 0;
                    fputc(91, *v95);
                    v80 = qword_100028640;
                    *(qword_100028640 + 8) = 0;
                  }

                  v96 = *(v82 + 136);
                  if (v96)
                  {
                    v97 = 0;
                    while (1)
                    {
                      sub_10001087C(v96, &v270, 0x100uLL, 1);
                      v80 = qword_100028640;
                      if (qword_100028640)
                      {
                        if (*(qword_100028640 + 8) != 1 || (fputc(44, *qword_100028640), (v80 = qword_100028640) != 0))
                        {
                          fprintf(*v80, "%s", &v270);
                          v80 = qword_100028640;
                          *(qword_100028640 + 8) = 1;
                        }
                      }

                      if (v97 == 28)
                      {
                        break;
                      }

                      v96 = *&v82[v97 + 548];
                      v97 += 4;
                      if (!v96)
                      {
                        v98 = v97 == 0;
                        if (v80)
                        {
                          goto LABEL_176;
                        }

                        break;
                      }
                    }
                  }

                  else
                  {
                    v98 = 1;
                    if (v80)
                    {
LABEL_176:
                      if (v98)
                      {
                        if (*(v80 + 8) == 1)
                        {
                          fputc(44, *v80);
                          v80 = qword_100028640;
                          if (!qword_100028640)
                          {
                            goto LABEL_182;
                          }
                        }

                        fprintf(*v80, "%s", "kernel");
                        v80 = qword_100028640;
                        *(qword_100028640 + 8) = 1;
LABEL_181:
                        fputc(93, *v80);
                        v99 = qword_100028640;
                        *(qword_100028640 + 8) = 1;
                        fputc(125, *v99);
                        v80 = qword_100028640;
                        *(qword_100028640 + 8) = 1;
                        goto LABEL_182;
                      }
                    }
                  }

                  if (v80)
                  {
                    goto LABEL_181;
                  }

LABEL_182:
                  v82 = *v82;
                }

                while (v82);
              }

              LOBYTE(v7) = v244;
              if (v80)
              {
                fputc(93, *v80);
                *(qword_100028640 + 8) = 1;
              }
            }

            if (v7)
            {
              v100 = qword_100028640;
              if (qword_100028640)
              {
                if (*(qword_100028640 + 8) == 1)
                {
                  fputc(44, *qword_100028640);
                  v100 = qword_100028640;
                }

                fwrite("region:", 9uLL, 1uLL, *v100);
                v101 = qword_100028640;
                *(qword_100028640 + 8) = 0;
                fputc(91, *v101);
                v100 = qword_100028640;
                *(qword_100028640 + 8) = 0;
              }

              v102 = v255;
              if (v255)
              {
                v103 = 0;
                v104 = 0;
                do
                {
                  if (v100)
                  {
                    if (*(v100 + 8) == 1)
                    {
                      fputc(44, *v100);
                      v100 = qword_100028640;
                    }

                    fputc(123, *v100);
                    v105 = qword_100028640;
                    *(qword_100028640 + 8) = 0;
                    fwrite("id:", 5uLL, 1uLL, *v105);
                    v106 = qword_100028640;
                    *(qword_100028640 + 8) = 0;
                    fprintf(*v106, "r%u", *(v102 + 13));
                    v107 = qword_100028640;
                    *(qword_100028640 + 8) = 1;
                    fputc(44, *v107);
                    fwrite("name:", 7uLL, 1uLL, *qword_100028640);
                    v108 = qword_100028640;
                    *(qword_100028640 + 8) = 0;
                    fprintf(*v108, "%s", v102 + 56);
                    v109 = qword_100028640;
                    *(qword_100028640 + 8) = 1;
                    fputc(44, *v109);
                    fwrite("segmentRequestedSize:", 0x17uLL, 1uLL, *qword_100028640);
                    v110 = qword_100028640;
                    *(qword_100028640 + 8) = 0;
                    fprintf(*v110, "%llu", v102[18]);
                    v111 = qword_100028640;
                    *(qword_100028640 + 8) = 1;
                    fputc(44, *v111);
                    fwrite("segmentConfiguredSize:", 0x18uLL, 1uLL, *qword_100028640);
                    v112 = qword_100028640;
                    *(qword_100028640 + 8) = 0;
                    fprintf(*v112, "%llu", v102[19]);
                    v113 = qword_100028640;
                    *(qword_100028640 + 8) = 1;
                    fputc(44, *v113);
                    fwrite("objectRequestedSize:", 0x16uLL, 1uLL, *qword_100028640);
                    v114 = qword_100028640;
                    *(qword_100028640 + 8) = 0;
                    fprintf(*v114, "%llu", v102[22]);
                    v115 = qword_100028640;
                    *(qword_100028640 + 8) = 1;
                    fputc(44, *v115);
                    fwrite("objectConfiguredSize:", 0x17uLL, 1uLL, *qword_100028640);
                    v116 = qword_100028640;
                    *(qword_100028640 + 8) = 0;
                    fprintf(*v116, "%llu", v102[24]);
                    v117 = qword_100028640;
                    *(qword_100028640 + 8) = 1;
                    fputc(44, *v117);
                    fwrite("objectRequestedCount:", 0x17uLL, 1uLL, *qword_100028640);
                    v118 = qword_100028640;
                    *(qword_100028640 + 8) = 0;
                    fprintf(*v118, "%llu", v102[23]);
                    v119 = qword_100028640;
                    *(qword_100028640 + 8) = 1;
                    fputc(44, *v119);
                    fwrite("objectConfiguredCount:", 0x18uLL, 1uLL, *qword_100028640);
                    v120 = qword_100028640;
                    *(qword_100028640 + 8) = 0;
                    fprintf(*v120, "%llu", v102[25]);
                    v121 = qword_100028640;
                    *(qword_100028640 + 8) = 1;
                    fputc(44, *v121);
                    fwrite("objectsPerSegment:", 0x14uLL, 1uLL, *qword_100028640);
                    v122 = qword_100028640;
                    *(qword_100028640 + 8) = 0;
                    fprintf(*v122, "%llu", v102[21]);
                    v123 = qword_100028640;
                    *(qword_100028640 + 8) = 1;
                    fputc(44, *v123);
                    fwrite("objectAlign:", 0xEuLL, 1uLL, *qword_100028640);
                    v124 = qword_100028640;
                    *(qword_100028640 + 8) = 0;
                    fprintf(*v124, "%llu", v102[26]);
                    v125 = qword_100028640;
                    *(qword_100028640 + 8) = 1;
                    fputc(44, *v125);
                    fwrite("maxFragments:", 0xFuLL, 1uLL, *qword_100028640);
                    v126 = qword_100028640;
                    *(qword_100028640 + 8) = 0;
                    fprintf(*v126, "%llu", v102[27]);
                    v127 = qword_100028640;
                    *(qword_100028640 + 8) = 1;
                    fputc(44, *v127);
                    fwrite("segmentAlloc:", 0xFuLL, 1uLL, *qword_100028640);
                    v128 = qword_100028640;
                    *(qword_100028640 + 8) = 0;
                    fprintf(*v128, "%llu", v102[34]);
                    v129 = qword_100028640;
                    *(qword_100028640 + 8) = 1;
                    fputc(44, *v129);
                    fwrite("segmentFree:", 0xEuLL, 1uLL, *qword_100028640);
                    v130 = qword_100028640;
                    *(qword_100028640 + 8) = 0;
                    fprintf(*v130, "%llu", v102[35]);
                    v131 = qword_100028640;
                    *(qword_100028640 + 8) = 1;
                    fputc(44, *v131);
                    fwrite("segmentInUse:", 0xFuLL, 1uLL, *qword_100028640);
                    v132 = qword_100028640;
                    *(qword_100028640 + 8) = 0;
                    fprintf(*v132, "%llu", v102[31]);
                    v133 = qword_100028640;
                    *(qword_100028640 + 8) = 1;
                    fputc(44, *v133);
                    fwrite("segmentLimit:", 0xFuLL, 1uLL, *qword_100028640);
                    v134 = qword_100028640;
                    *(qword_100028640 + 8) = 0;
                    fprintf(*v134, "%llu", v102[20]);
                    v135 = qword_100028640;
                    *(qword_100028640 + 8) = 1;
                    fputc(44, *v135);
                    fwrite("memInUse:", 0xBuLL, 1uLL, *qword_100028640);
                    v136 = qword_100028640;
                    *(qword_100028640 + 8) = 0;
                    fprintf(*v136, "%llu", v102[28]);
                    v137 = qword_100028640;
                    *(qword_100028640 + 8) = 1;
                    fputc(44, *v137);
                    fwrite("memInUseWired:", 0x10uLL, 1uLL, *qword_100028640);
                    v138 = qword_100028640;
                    *(qword_100028640 + 8) = 0;
                    fprintf(*v138, "%llu", v102[29]);
                    v139 = qword_100028640;
                    *(qword_100028640 + 8) = 1;
                    fputc(44, *v139);
                    fwrite("memTotal:", 0xBuLL, 1uLL, *qword_100028640);
                    v140 = qword_100028640;
                    *(qword_100028640 + 8) = 0;
                    fprintf(*v140, "%llu", v102[30]);
                    v141 = qword_100028640;
                    *(qword_100028640 + 8) = 1;
                    fputc(44, *v141);
                    fwrite("hashRescale:", 0xEuLL, 1uLL, *qword_100028640);
                    v142 = qword_100028640;
                    *(qword_100028640 + 8) = 0;
                    fprintf(*v142, "%llu", v102[32]);
                    v143 = qword_100028640;
                    *(qword_100028640 + 8) = 1;
                    fputc(44, *v143);
                    fwrite("hashSize:", 0xBuLL, 1uLL, *qword_100028640);
                    v144 = qword_100028640;
                    *(qword_100028640 + 8) = 0;
                    fprintf(*v144, "%llu", v102[33]);
                    v145 = qword_100028640;
                    *(qword_100028640 + 8) = 1;
                    fputc(44, *v145);
                    fwrite("regionModes:", 0xEuLL, 1uLL, *qword_100028640);
                    *(qword_100028640 + 8) = 0;
                  }

                  sub_10000CA34(dword_1000281E8, *(v102 + 35));
                  v100 = qword_100028640;
                  if (qword_100028640)
                  {
                    if (*(qword_100028640 + 8) == 1)
                    {
                      fputc(44, *qword_100028640);
                      v100 = qword_100028640;
                    }

                    fwrite("owningArenas:", 0xFuLL, 1uLL, *v100);
                    v146 = qword_100028640;
                    *(qword_100028640 + 8) = 0;
                    fputc(91, *v146);
                    v100 = qword_100028640;
                    *(qword_100028640 + 8) = 0;
                  }

                  v147 = v102[4];
                  if (v147)
                  {
                    v148 = v100;
                    v149 = v100;
                    do
                    {
                      if (v149)
                      {
                        if (*(v149 + 8) == 1)
                        {
                          fputc(44, *v149);
                          v100 = qword_100028640;
                          v148 = qword_100028640;
                        }

                        if (v148)
                        {
                          fprintf(*v148, "a%u", *(v147[1] + 8));
                          v100 = qword_100028640;
                          *(qword_100028640 + 8) = 1;
                          v148 = v100;
                          v149 = v100;
                        }

                        else
                        {
                          v149 = 0;
                        }
                      }

                      v147 = *v147;
                    }

                    while (v147);
                  }

                  if (v100)
                  {
                    fputc(93, *v100);
                    v150 = qword_100028640;
                    *(qword_100028640 + 8) = 1;
                    fputc(125, *v150);
                    v100 = qword_100028640;
                    *(qword_100028640 + 8) = 1;
                  }

                  v104 += v102[30];
                  v103 += v102[29];
                  v102 = *v102;
                }

                while (v102);
              }

              else
              {
                v104 = 0;
                v103 = 0;
              }

              LOBYTE(v7) = v244;
              if (v100)
              {
                fputc(93, *v100);
                v167 = qword_100028640;
                *(qword_100028640 + 8) = 1;
                fputc(44, *v167);
                fwrite("totalRegionMemory:", 0x14uLL, 1uLL, *qword_100028640);
                v168 = qword_100028640;
                *(qword_100028640 + 8) = 0;
                fprintf(*v168, "%llu", v104);
                v169 = qword_100028640;
                *(qword_100028640 + 8) = 1;
                fputc(44, *v169);
                fwrite("wiredRegionMemory:", 0x14uLL, 1uLL, *qword_100028640);
                v170 = qword_100028640;
                *(qword_100028640 + 8) = 0;
                fprintf(*v170, "%llu", v103);
                *(qword_100028640 + 8) = 1;
              }
            }

            if ((v8 & 1) == 0)
            {
              v166 = 0;
              v5 = &off_100028000;
              goto LABEL_49;
            }

            v171 = qword_100028640;
            if (qword_100028640)
            {
              if (*(qword_100028640 + 8) == 1)
              {
                fputc(44, *qword_100028640);
                v171 = qword_100028640;
              }

              fwrite("cache:", 8uLL, 1uLL, *v171);
              v172 = qword_100028640;
              *(qword_100028640 + 8) = 0;
              fputc(91, *v172);
              v171 = qword_100028640;
              *(qword_100028640 + 8) = 0;
            }

            v173 = v253;
            if (!v253)
            {
LABEL_276:
              if (v171)
              {
                fputc(93, *v171);
                v166 = 0;
                *(qword_100028640 + 8) = 1;
              }

              else
              {
                v166 = 0;
              }

              v5 = &off_100028000;
              LOBYTE(v7) = v244;
              goto LABEL_49;
            }

            while (2)
            {
              v174 = *(v173 + 38) + *(v173 + 37);
              if (v174)
              {
                v175 = (*(v173 + 34) - *(v173 + 35)) / (*(v173 + 19) / *(v173 + 17) * v174) * 100.0;
                if (!v171)
                {
                  goto LABEL_268;
                }

LABEL_263:
                if (*(v171 + 8) == 1)
                {
                  fputc(44, *v171);
                  v171 = qword_100028640;
                }

                fputc(123, *v171);
                v176 = qword_100028640;
                *(qword_100028640 + 8) = 0;
                fwrite("id:", 5uLL, 1uLL, *v176);
                v177 = qword_100028640;
                *(qword_100028640 + 8) = 0;
                fprintf(*v177, "c%u", *(v173 + 4));
                v178 = qword_100028640;
                *(qword_100028640 + 8) = 1;
                fputc(44, *v178);
                fwrite("name:", 7uLL, 1uLL, *qword_100028640);
                v179 = qword_100028640;
                *(qword_100028640 + 8) = 0;
                fprintf(*v179, "%s", v173 + 24);
                v180 = qword_100028640;
                *(qword_100028640 + 8) = 1;
                fputc(44, *v180);
                fwrite("bufferSize:", 0xDuLL, 1uLL, *qword_100028640);
                v181 = qword_100028640;
                *(qword_100028640 + 8) = 0;
                fprintf(*v181, "%llu", *(v173 + 16));
                v182 = qword_100028640;
                *(qword_100028640 + 8) = 1;
                fputc(44, *v182);
                fwrite("objectSize:", 0xDuLL, 1uLL, *qword_100028640);
                v183 = qword_100028640;
                *(qword_100028640 + 8) = 0;
                fprintf(*v183, "%llu", *(v173 + 17));
                v184 = qword_100028640;
                *(qword_100028640 + 8) = 1;
                fputc(44, *v184);
                fwrite("chunkSize:", 0xCuLL, 1uLL, *qword_100028640);
                v185 = qword_100028640;
                *(qword_100028640 + 8) = 0;
                fprintf(*v185, "%llu", *(v173 + 18));
                v186 = qword_100028640;
                *(qword_100028640 + 8) = 1;
                fputc(44, *v186);
                fwrite("slabSize:", 0xBuLL, 1uLL, *qword_100028640);
                v187 = qword_100028640;
                *(qword_100028640 + 8) = 0;
                fprintf(*v187, "%llu", *(v173 + 19));
                v188 = qword_100028640;
                *(qword_100028640 + 8) = 1;
                fputc(44, *v188);
                fwrite("minAlign:", 0xBuLL, 1uLL, *qword_100028640);
                v189 = qword_100028640;
                *(qword_100028640 + 8) = 0;
                v190 = *v189;
                v191 = *(v173 + 20);
                if (v191 <= *(v173 + 21))
                {
                  v191 = *(v173 + 21);
                }

                fprintf(v190, "%llu", v191);
                v192 = qword_100028640;
                *(qword_100028640 + 8) = 1;
                fputc(44, *v192);
                fwrite("magazineSize:", 0xFuLL, 1uLL, *qword_100028640);
                v193 = qword_100028640;
                *(qword_100028640 + 8) = 0;
                fprintf(*v193, "%d", *(v173 + 22));
                v194 = qword_100028640;
                *(qword_100028640 + 8) = 1;
                fputc(44, *v194);
                fwrite("magazineResize:", 0x11uLL, 1uLL, *qword_100028640);
                v195 = qword_100028640;
                *(qword_100028640 + 8) = 0;
                fprintf(*v195, "%llu", *(v173 + 23));
                v196 = qword_100028640;
                *(qword_100028640 + 8) = 1;
                fputc(44, *v196);
                fwrite("magazinePurge:", 0x10uLL, 1uLL, *qword_100028640);
                v197 = qword_100028640;
                *(qword_100028640 + 8) = 0;
                fprintf(*v197, "%llu", *(v173 + 24));
                v198 = qword_100028640;
                *(qword_100028640 + 8) = 1;
                fputc(44, *v198);
                fwrite("magazineReap:", 0xFuLL, 1uLL, *qword_100028640);
                v199 = qword_100028640;
                *(qword_100028640 + 8) = 0;
                fprintf(*v199, "%llu", *(v173 + 25));
                v200 = qword_100028640;
                *(qword_100028640 + 8) = 1;
                fputc(44, *v200);
                fwrite("workingSetFlush:", 0x12uLL, 1uLL, *qword_100028640);
                v201 = qword_100028640;
                *(qword_100028640 + 8) = 0;
                fprintf(*v201, "%llu", *(v173 + 28));
                v202 = qword_100028640;
                *(qword_100028640 + 8) = 1;
                fputc(44, *v202);
                fwrite("depotFull:", 0xCuLL, 1uLL, *qword_100028640);
                v203 = qword_100028640;
                *(qword_100028640 + 8) = 0;
                fprintf(*v203, "%llu", *(v173 + 26));
                v204 = qword_100028640;
                *(qword_100028640 + 8) = 1;
                fputc(44, *v204);
                fwrite("depotEmpty:", 0xDuLL, 1uLL, *qword_100028640);
                v205 = qword_100028640;
                *(qword_100028640 + 8) = 0;
                fprintf(*v205, "%llu", *(v173 + 27));
                v206 = qword_100028640;
                *(qword_100028640 + 8) = 1;
                fputc(44, *v206);
                fwrite("depotContention:", 0x12uLL, 1uLL, *qword_100028640);
                v207 = qword_100028640;
                *(qword_100028640 + 8) = 0;
                fprintf(*v207, "%d", *(v173 + 29));
                v208 = qword_100028640;
                *(qword_100028640 + 8) = 1;
                fputc(44, *v208);
                fwrite("slabCreate:", 0xDuLL, 1uLL, *qword_100028640);
                v209 = qword_100028640;
                *(qword_100028640 + 8) = 0;
                fprintf(*v209, "%llu", *(v173 + 32));
                v210 = qword_100028640;
                *(qword_100028640 + 8) = 1;
                fputc(44, *v210);
                fwrite("slabDestroy:", 0xEuLL, 1uLL, *qword_100028640);
                v211 = qword_100028640;
                *(qword_100028640 + 8) = 0;
                fprintf(*v211, "%llu", *(v173 + 33));
                v212 = qword_100028640;
                *(qword_100028640 + 8) = 1;
                fputc(44, *v212);
                fwrite("slabAlloc:", 0xCuLL, 1uLL, *qword_100028640);
                v213 = qword_100028640;
                *(qword_100028640 + 8) = 0;
                fprintf(*v213, "%llu", *(v173 + 34));
                v214 = qword_100028640;
                *(qword_100028640 + 8) = 1;
                fputc(44, *v214);
                fwrite("slabFree:", 0xBuLL, 1uLL, *qword_100028640);
                v215 = qword_100028640;
                *(qword_100028640 + 8) = 0;
                fprintf(*v215, "%llu", *(v173 + 35));
                v216 = qword_100028640;
                *(qword_100028640 + 8) = 1;
                fputc(44, *v216);
                fwrite("slabAllocFail:", 0x10uLL, 1uLL, *qword_100028640);
                v217 = qword_100028640;
                *(qword_100028640 + 8) = 0;
                fprintf(*v217, "%llu", *(v173 + 36));
                v218 = qword_100028640;
                *(qword_100028640 + 8) = 1;
                fputc(44, *v218);
                fwrite("slabPartial:", 0xEuLL, 1uLL, *qword_100028640);
                v219 = qword_100028640;
                *(qword_100028640 + 8) = 0;
                fprintf(*v219, "%llu", *(v173 + 37));
                v220 = qword_100028640;
                *(qword_100028640 + 8) = 1;
                fputc(44, *v220);
                fwrite("slabFull:", 0xBuLL, 1uLL, *qword_100028640);
                v221 = qword_100028640;
                *(qword_100028640 + 8) = 0;
                fprintf(*v221, "%llu", *(v173 + 38));
                v222 = qword_100028640;
                *(qword_100028640 + 8) = 1;
                fputc(44, *v222);
                fwrite("slabUtilization:", 0x12uLL, 1uLL, *qword_100028640);
                v223 = qword_100028640;
                *(qword_100028640 + 8) = 0;
                fprintf(*v223, "%.2f", v175);
                v224 = qword_100028640;
                *(qword_100028640 + 8) = 1;
                fputc(44, *v224);
                fwrite("bufferInUse:", 0xEuLL, 1uLL, *qword_100028640);
                v225 = qword_100028640;
                *(qword_100028640 + 8) = 0;
                fprintf(*v225, "%llu", *(v173 + 39));
                v226 = qword_100028640;
                *(qword_100028640 + 8) = 1;
                fputc(44, *v226);
                fwrite("slabHashRescale:", 0x12uLL, 1uLL, *qword_100028640);
                v227 = qword_100028640;
                *(qword_100028640 + 8) = 0;
                fprintf(*v227, "%llu", *(v173 + 40));
                v228 = qword_100028640;
                *(qword_100028640 + 8) = 1;
                fputc(44, *v228);
                fwrite("slabHashSize:", 0xFuLL, 1uLL, *qword_100028640);
                v229 = qword_100028640;
                *(qword_100028640 + 8) = 0;
                fprintf(*v229, "%llu", *(v173 + 41));
                v230 = qword_100028640;
                *(qword_100028640 + 8) = 1;
                fputc(44, *v230);
                fwrite("cacheModes:", 0xDuLL, 1uLL, *qword_100028640);
                *(qword_100028640 + 8) = 0;
              }

              else
              {
                v175 = 0.0;
                if (v171)
                {
                  goto LABEL_263;
                }
              }

LABEL_268:
              sub_10000CA34(dword_100028318, *(v173 + 30));
              v171 = qword_100028640;
              if (*(v173 + 1) && qword_100028640)
              {
                if (*(qword_100028640 + 8) == 1)
                {
                  fputc(44, *qword_100028640);
                  v171 = qword_100028640;
                }

                fwrite("backingRegion:", 0x10uLL, 1uLL, *v171);
                v231 = qword_100028640;
                *(qword_100028640 + 8) = 0;
                fprintf(*v231, "r%u", *(*(v173 + 1) + 52));
                v171 = qword_100028640;
                *(qword_100028640 + 8) = 1;
LABEL_274:
                fputc(125, *v171);
                v171 = qword_100028640;
                *(qword_100028640 + 8) = 1;
              }

              else if (qword_100028640)
              {
                goto LABEL_274;
              }

              v173 = *v173;
              if (!v173)
              {
                goto LABEL_276;
              }

              continue;
            }
          }

          if (v249)
          {
            __src = 0;
            p_src = &__src;
            v151 = v255;
            v243 = v8;
            if (!v255)
            {
              v165 = 0;
              v152 = 0;
              v153 = 0;
              v248 = 0;
              v251 = 0;
              goto LABEL_283;
            }

            v152 = 0;
            v153 = 0;
            v154 = 0;
            do
            {
              if (sub_10000C808(v151))
              {
                v250 = v154;
                for (k = v151[2].i64[0]; k; k = *k)
                {
                  v156 = 0;
                  v157 = k[1] + 544;
                  do
                  {
                    v158 = *(v157 + 4 * v156);
                    if (!v158)
                    {
                      break;
                    }

                    v159 = __src;
                    if (__src)
                    {
                      while (*(v159 + 64) != v158)
                      {
                        v159 = *(v159 + 35);
                        if (!v159)
                        {
                          goto LABEL_225;
                        }
                      }
                    }

                    else
                    {
LABEL_225:
                      v160 = malloc_type_calloc(1uLL, 0x120uLL, 0x1020040178BBF40uLL);
                      if (!v160)
                      {
                        goto LABEL_310;
                      }

                      v159 = v160;
                      *(v160 + 64) = v158;
                      sub_10001087C(v158, v160, 0x100uLL, 0);
                      *(v159 + 35) = 0;
                      *p_src = v159;
                      p_src = (v159 + 280);
                      ++v152;
                    }

                    *(v159 + 264) = vaddq_s64(*(v159 + 264), v151[14]);
                    ++v156;
                  }

                  while (v156 != 8);
                }

                v154 = v151[14].i64[0] + v250;
                v153 += v151[14].u64[1];
              }

              v151 = v151->i64[0];
            }

            while (v151);
            v251 = v154;
            if (v152 < 1)
            {
              v165 = 0;
              v248 = 0;
              goto LABEL_283;
            }

            v161 = malloc_type_calloc(v152, 0x120uLL, 0x1020040178BBF40uLL);
            if (v161)
            {
              v162 = v161;
              v163 = __src;
              if (__src)
              {
                v164 = v161;
                do
                {
                  memcpy(v164, v163, 0x120uLL);
                  v163 = v163[35];
                  v164 += 288;
                }

                while (v163);
              }

              v248 = v162;
              qsort(v162, v152, 0x120uLL, sub_10000C870);
              v165 = 1;
LABEL_283:
              puts("Memory Usage By Process:");
              printf("%-32s %10s %20s %20s\n", "Process", "PID", "Memory Size", "Wired Size");
              printf("%-32s %10s %20s %20s\n", "------", "---", "----------", "----------");
              if (v165)
              {
                v232 = v152;
                v233 = v248;
                do
                {
                  if (*(v233 + 33) >> 20)
                  {
                    snprintf(&v270, 0x20uLL, "%.2f MB");
                  }

                  else
                  {
                    snprintf(&v270, 0x20uLL, "%.2f KB");
                  }

                  if (*(v233 + 34) >> 20)
                  {
                    snprintf(__str, 0x20uLL, "%.2f MB");
                  }

                  else
                  {
                    snprintf(__str, 0x20uLL, "%.2f KB");
                  }

                  printf("%-32s %10d %20s %20s\n", v233, *(v233 + 64), &v270, __str);
                  v233 += 288;
                  --v232;
                }

                while (v232);
              }

              printf("%-32s %10s %20s %20s\n", "-------------------------------", "----------", "--------------------", "--------------------");
              if (v251 >> 20)
              {
                snprintf(&v270, 0x20uLL, "%.2f MB");
              }

              else
              {
                snprintf(&v270, 0x20uLL, "%.2f KB");
              }

              if (v153 >> 20)
              {
                snprintf(__str, 0x20uLL, "%.2f MB");
              }

              else
              {
                snprintf(__str, 0x20uLL, "%.2f KB");
              }

              printf("%-32s %10s %20s %20s\n", "TOTAL", "-", &v270, __str);
              if (v248)
              {
                free(v248);
              }

              v234 = __src;
              v5 = &off_100028000;
              LOBYTE(v7) = v244;
              LOBYTE(v8) = v243;
              if (__src)
              {
                while (2)
                {
                  v235 = v234;
                  v234 = v234[35];
                  v236 = __src;
                  if (__src == v235)
                  {
                    __src = *(__src + 35);
                    if (!__src)
                    {
                      v239 = &__src;
LABEL_307:
                      p_src = v239;
                    }
                  }

                  else
                  {
                    do
                    {
                      v237 = v236;
                      v236 = v236[35];
                    }

                    while (v236 != v235);
                    v238 = v236[35];
                    v237[35] = v238;
                    if (!v238)
                    {
                      v239 = (v237 + 35);
                      goto LABEL_307;
                    }
                  }

                  free(v235);
                  if (!v234)
                  {
                    break;
                  }

                  continue;
                }
              }

LABEL_309:
              v166 = 0;
              goto LABEL_49;
            }

LABEL_310:
            v240 = __stderrp;
            v241 = "Out of memory\n";
            v242 = 14;
LABEL_311:
            fwrite(v241, v242, 1uLL, v240);
            exit(71);
          }

          if (v6)
          {
            sub_10000BA88(&v257, v9 & 1);
            if ((v7 & 1) == 0)
            {
LABEL_245:
              if ((v8 & 1) == 0)
              {
                goto LABEL_309;
              }

              goto LABEL_249;
            }
          }

          else if ((v7 & 1) == 0)
          {
            goto LABEL_245;
          }

          putchar(10);
          sub_10000BD40(&v255, v9 & 1);
          if ((v8 & 1) == 0)
          {
            goto LABEL_309;
          }

LABEL_249:
          putchar(10);
          sub_10000C230(&v253, v9 & 1);
          goto LABEL_309;
        }

        v240 = __stderrp;
        v241 = "Error, mismatching sk_stats_cache, quit\n";
      }

      v242 = 40;
      goto LABEL_311;
    }
  }

  switch(v11)
  {
    case 'g':
      v10 = 0;
      v8 = 0;
      v7 = 1;
      v249 = 1;
      goto LABEL_29;
    case 's':
      goto LABEL_20;
    case 'h':
      v166 = 0;
      break;
    default:
LABEL_241:
      fprintf(__stderrp, "unknown option %s\n", optarg);
      v166 = 64;
      break;
  }

  fflush(__stderrp);
  fputs("Usage: memory [ OPTIONS ]   -h, --help          this message\n   -I, --interface=IF  show memory usage matching IF\n   -J, --json          output in JSON format\n   -P, --pid=pid       show memory usage with pid\n   -a, --all           show all available information\n   -A, --arena         show arenas\n   -R, --region        show regions\n   -C, --cache         show caches\n   -g, --group         group memory usage by process\n", __stderrp);
  return v166;
}

uint64_t sub_100007CDC(int a1, char *const *a2)
{
  v32 = 0;
  v31 = 0;
  v35 = 0;
  v33 = 0;
  v34 = 0;
  v39 = off_100021AF0;
  v40 = unk_100021B00;
  v41 = xmmword_100021B10;
  v42 = unk_100021B20;
  v36 = off_100021AB0;
  v37 = off_100021AD0;
  v38 = unk_100021AE0;
  v4 = getopt_long(a1, a2, "ai:p:", &v36, 0) << 24;
  if (v4 == -16777216)
  {
    goto LABEL_2;
  }

  v7 = 0;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  do
  {
    v11 = v4 >> 24;
    if (v11 == 97)
    {
      v10 = 1;
      goto LABEL_28;
    }

    if (v11 == 112)
    {
      v14 = optarg;
      if (optarg)
      {
        if (!strncmp(optarg, "udp", 4uLL))
        {
          v7 = 17;
        }

        else if (!strncmp(v14, "tcp", 4uLL))
        {
          v7 = 6;
        }

        goto LABEL_28;
      }

LABEL_54:
      fflush(__stderrp);
      v24 = __stderrp;
LABEL_63:
      fputs("Usage  netns [ OPTIONS ]   -a, --all             show all statistics\n   -i, --ip=IP           match based on IP\n   -p, --protocol=PROTO  match based on PROTO\n", v24);
      return 64;
    }

    if (v11 != 105)
    {
      fprintf(__stderrp, "unknown option %s\n", optarg);
      fflush(__stderrp);
      v24 = __stderrp;
      goto LABEL_63;
    }

    v12 = optarg;
    if (!optarg)
    {
      goto LABEL_54;
    }

    if (!strncmp(optarg, "global", 7uLL))
    {
      v9 = 1;
    }

    else
    {
      v13 = 0;
      while (1)
      {
        v8 = v12[v13];
        if (!v12[v13])
        {
          break;
        }

        if (v8 == 46)
        {
          v32 = inet_pton(2, v12, &v35);
          v8 = 4 * (v32 == 1);
          break;
        }

        if (v8 == 58)
        {
          v32 = inet_pton(30, v12, &v33);
          if (v32 == 1)
          {
            v8 = 6;
          }

          else
          {
            v8 = 0;
          }

          break;
        }

        if (++v13 == 6)
        {
          v8 = 0;
          break;
        }
      }
    }

LABEL_28:
    v4 = getopt_long(a1, a2, "ai:p:", &v36, 0) << 24;
  }

  while (v4 != -16777216);
  if (!v10)
  {
    if (!(v9 | v8))
    {
LABEL_2:
      v5 = "Specify -a or a valid IP address";
LABEL_3:
      puts(v5);
      return 22;
    }

    if (!v7)
    {
      v5 = "Specify -a or a valid L4 protocol name";
      goto LABEL_3;
    }

    if (v9)
    {
      v25 = sub_1000119B0(v7, &v32);
    }

    else if (v8 == 6)
    {
      v25 = sub_100011B4C(v33, v34, v7, &v32);
    }

    else
    {
      if (v8 != 4)
      {
        v15 = 0;
        goto LABEL_60;
      }

      v25 = sub_100011B18(v35, v7, &v32);
    }

    v15 = v25;
LABEL_60:
    result = v32;
    if (v32)
    {
      return result;
    }

    v31 = 32 * v15[5] + 32;
LABEL_37:
    v16 = v15;
    while (1)
    {
      v17 = *(v16 + 16);
      if (v17 == 4)
      {
        v18 = 2;
      }

      else
      {
        if (v17 != 16)
        {
          strcpy(v44, "global namespace");
          goto LABEL_44;
        }

        v18 = 30;
      }

      inet_ntop(v18, v16, v44, 0x2Eu);
LABEL_44:
      v19 = "udp";
      if (*(v16 + 17) != 17)
      {
        v19 = "tcp";
      }

      printf("%s port reservations for %s\n", v19, v44);
      printf("%11s %10s %10s %10s\n", "PORT(S)", "SKYWALK", "BSD", "LISTENER");
      if (v16[5])
      {
        v20 = 0;
        v21 = v16 + 12;
        do
        {
          if (*(v21 - 7))
          {
            snprintf(__str, 0x10uLL, "%d-%d", *(v21 - 8), *(v21 - 7));
            v22 = *(v21 - 3);
            v27 = *(v21 - 2);
            v29 = *v21;
            printf("%11s %10d %10d %10d\n");
          }

          else
          {
            v23 = *(v21 - 8);
            v28 = *(v21 - 2);
            v30 = *v21;
            v26 = *(v21 - 3);
            printf("%11d %10d %10d %10d\n");
          }

          ++v20;
          v21 += 8;
        }

        while (v20 < v16[5]);
      }

      puts("--------------------------------------------");
      v16 += 8 * v16[5] + 8;
      if (v16 >= (v15 + v31))
      {
        goto LABEL_53;
      }
    }
  }

  if (v9 || v8 || v7)
  {
    puts("WARNING: With -a, any further namespace specifiers are ignored");
  }

  v15 = sub_100011968(&v31, &v32);
  result = v32;
  if (!v32 || v32 == 12)
  {
    v32 = 0;
    if (v31 >= 1)
    {
      goto LABEL_37;
    }

LABEL_53:
    j__free(v15);
    return 0;
  }

  return result;
}

uint64_t sub_1000081CC(int a1, char *const *a2)
{
  memset(&v7, 0, sizeof(v7));
  if (getopt_long(a1, a2, "", &v7, 0) == 0xFF)
  {
    __base = 0;
    v6 = 0;
    v2 = sub_100010BCC("kern.skywalk.stats.protons", &__base, &v6);
    if (!v2 && __base && v6)
    {
      if ((v6 & 0xF) != 0)
      {
        fwrite("Error, mismatching sk_stats_protons_token, quit\n", 0x30uLL, 1uLL, __stderrp);
        exit(71);
      }

      qsort(__base, v6 >> 4, 0x10uLL, sub_10000CB4C);
      printf("%-5s %-6s %-5s %-5s\n", "Proto", "RefCnt", "Pid", "ePid");
      if (v6 >= 1)
      {
        v3 = __base;
        do
        {
          printf("%-5u %-6u %-5u %-5u\n", *v3, *(v3 + 1), *(v3 + 2), *(v3 + 3));
          v3 += 16;
        }

        while (v3 < (__base + v6));
      }
    }
  }

  else
  {
    fprintf(__stderrp, "unknown option %s\n", optarg);
    fflush(__stderrp);
    fputs("Usage  protons [ OPTIONS ]   -a, --all             show all statistics\n   -i, --ip=IP           match based on IP\n   -p, --protocol=PROTO  match based on PROTO\n", __stderrp);
    return 64;
  }

  return v2;
}

uint64_t sub_100008390(int a1, char *const *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, size_t a61)
{
  STACK[0x1E38] = __stack_chk_guard;
  memcpy(&__dst, &off_100021B30, 0x1C0uLL);
  v63 = getopt_long(a1, a2, "aC:GI:nop:P:sU:vz", &__dst, 0) << 24;
  if (v63 == -16777216)
  {
    v64 = 0;
LABEL_34:
    if (byte_100028620 | byte_100028608 | byte_100028618)
    {
      v67 = &off_100028000;
      v68 = &off_100028000;
      if (dword_1000285C8)
      {
        goto LABEL_127;
      }
    }

    else
    {
      v67 = &off_100028000;
      v68 = &off_100028000;
      if (byte_100028631 == 1 && dword_1000285C8)
      {
LABEL_127:
        fwrite("can't have both interface/pid/cmd/uuid filter and global flag\n", 0x3EuLL, 1uLL, __stderrp);
        exit(64);
      }
    }

    if (*(v67 + 376))
    {
      *(v68 + 375) = 1;
    }

    if (dword_1000285C4)
    {
      sub_1000026C8(a1, a2);
    }

    if (!v64)
    {
      goto LABEL_94;
    }

    if (!dword_1000285D8)
    {
      dword_1000285E8 = 1;
      dword_1000285EC = 1;
      dword_1000285F0 = 1;
      dword_1000285F4 = 1;
      dword_1000285F8 = 1;
    }

    if (dword_1000285D4)
    {
      if (!geteuid())
      {
        a61 = 0;
        STACK[0x1DD0] = 0;
        if (!sub_100010BCC("net.aop.protocol_stats", &STACK[0x1DD0], &a61))
        {
          v69 = STACK[0x1DD0];
          if (STACK[0x1DD0])
          {
            if (a61)
            {
              if (dword_1000285E8)
              {
                puts("ip:");
                v70 = 0;
                while (1)
                {
                  v71 = *(v67 + 376);
                  if (!(*(v68 + 375) | v71))
                  {
                    break;
                  }

                  if (!v71)
                  {
                    v73 = *(v69 + v70 * 8);
LABEL_59:
                    v99 = off_100023630[v70];
                    printf("\t%-24s: %llu\n");
                    goto LABEL_60;
                  }

                  v72 = fmtcheck(off_1000236E8[v70], "%llu");
                  printf(v72, *(v69 + v70 * 8), v103);
LABEL_60:
                  if (++v70 == 22)
                  {
                    goto LABEL_61;
                  }
                }

                if (!*(v69 + v70 * 8))
                {
                  goto LABEL_60;
                }

                goto LABEL_59;
              }

LABEL_61:
              if (dword_1000285EC)
              {
                puts("ip6:");
                v74 = 0;
                v75 = v69 + 176;
                while (1)
                {
                  v76 = *(v67 + 376);
                  if (!(*(v68 + 375) | v76))
                  {
                    break;
                  }

                  if (!v76)
                  {
                    v78 = *(v75 + v74 * 8);
LABEL_69:
                    v100 = off_1000237A0[v74];
                    printf("\t%-24s: %llu\n");
                    goto LABEL_70;
                  }

                  v77 = fmtcheck(off_100023840[v74], "%llu");
                  printf(v77, *(v75 + v74 * 8), v103);
LABEL_70:
                  if (++v74 == 19)
                  {
                    goto LABEL_71;
                  }
                }

                if (!*(v75 + v74 * 8))
                {
                  goto LABEL_70;
                }

                goto LABEL_69;
              }

LABEL_71:
              if (dword_1000285F0)
              {
                puts("tcp:");
                v79 = 0;
                v80 = v69 + 336;
                while (1)
                {
                  v81 = *(v67 + 376);
                  if (!(*(v68 + 375) | v81))
                  {
                    break;
                  }

                  if (!v81)
                  {
                    v83 = *(v80 + v79 * 8);
LABEL_79:
                    v101 = off_1000238E0[v79];
                    printf("\t%-24s: %llu\n");
                    goto LABEL_80;
                  }

                  v82 = fmtcheck(off_100023B48[v79], "%llu");
                  printf(v82, *(v80 + v79 * 8), v103);
LABEL_80:
                  if (++v79 == 76)
                  {
                    goto LABEL_81;
                  }
                }

                if (!*(v80 + v79 * 8))
                {
                  goto LABEL_80;
                }

                goto LABEL_79;
              }

LABEL_81:
              if (dword_1000285F4)
              {
                puts("udp:");
                v84 = 0;
                v85 = v69 + 944;
                while (1)
                {
                  v86 = *(v67 + 376);
                  if (!(*(v68 + 375) | v86))
                  {
                    break;
                  }

                  if (!v86)
                  {
                    v88 = *(v85 + v84 * 8);
LABEL_89:
                    v102 = off_100023DB0[v84];
                    printf("\t%-24s: %llu\n");
                    goto LABEL_90;
                  }

                  v87 = fmtcheck((&off_100023DF8)[v84], "%llu");
                  printf(v87, *(v85 + v84 * 8), v103);
LABEL_90:
                  if (++v84 == 8)
                  {
                    goto LABEL_91;
                  }
                }

                if (!*(v85 + v84 * 8))
                {
                  goto LABEL_90;
                }

                goto LABEL_89;
              }

LABEL_91:
              fflush(__stdoutp);
            }
          }
        }

LABEL_94:
        if (!(dword_1000285C4 | v64))
        {
          goto LABEL_117;
        }

        v98 = 0;
        goto LABEL_119;
      }
    }

    else
    {
      *&STACK[0x1DF0] = off_100021D10;
      *&STACK[0x1E00] = unk_100021D20;
      *&STACK[0x1E10] = xmmword_100021D30;
      *&STACK[0x1E20] = unk_100021D40;
      *&STACK[0x1DD0] = off_100021CF0;
      *&STACK[0x1DE0] = unk_100021D00;
      if (!geteuid())
      {
        v89 = getopt_long(a1, a2, "Gh", &STACK[0x1DD0], 0) << 24;
        if (v89 == -16777216)
        {
LABEL_99:
          v104 = 0;
          v105 = 0;
          if (!sub_100010BCC("kern.skywalk.stats.userstack", &v104, &v105))
          {
            v91 = v104;
            if (v104)
            {
              v92 = v105;
              if (v105)
              {
                if (dword_1000285C8)
                {
                  bzero(&a61, 0x958uLL);
                  bzero(&STACK[0x1A80], 0x320uLL);
                  if (v92 >= 1)
                  {
                    v93 = &v91[v92];
                    do
                    {
                      for (i = 48; i != 384; i += 8)
                      {
                        *(&a61 + i) += *&v91[i];
                      }

                      do
                      {
                        *(&a61 + i) += *&v91[i];
                        i += 8;
                      }

                      while (i != 672);
                      do
                      {
                        *(&a61 + i) += *&v91[i];
                        i += 8;
                      }

                      while (i != 2392);
                      for (j = 2400; j != 2576; j += 8)
                      {
                        *(&a61 + j) += *&v91[j];
                      }

                      do
                      {
                        *(&a61 + j) += *&v91[j];
                        j += 8;
                      }

                      while (j != 3200);
                      v91 += 3200;
                    }

                    while (v91 < v93);
                  }

                  sub_10000CB5C(&a61);
                }

                else if (v105 >= 1)
                {
                  do
                  {
                    sub_10000CB5C(v91);
                    v91 += 3200;
                  }

                  while (v91 < &v104[v105]);
                }

                fflush(__stdoutp);
                if (v91 != &v104[v105])
                {
                  fwrite("Error, mismatching sk_stats_userstack, quit\n", 0x2CuLL, 1uLL, __stderrp);
                  exit(71);
                }

                free(v104);
              }
            }
          }
        }

        else
        {
          while (1)
          {
            v90 = v89 >> 24;
            if (v90 != 71)
            {
              break;
            }

            dword_1000285C8 = 1;
            v89 = getopt_long(a1, a2, "Gh", &STACK[0x1DD0], 0) << 24;
            if (v89 == -16777216)
            {
              goto LABEL_99;
            }
          }

          if (v90 != 104)
          {
            fprintf(__stderrp, "unknown option %s\n", optarg);
          }

          fflush(__stderrp);
          fputs("Usage: userstack [ OPTIONS ] show userstack {ip,ip6,tcp,udp,quic} statistics   -h, --help    this message\n   -G, --global  show folded global stats\n", __stderrp);
        }

        goto LABEL_94;
      }
    }

    fprintf(__stderrp, "You must be running as root to run %s %s\n", qword_1000284B0, *a2);
    goto LABEL_94;
  }

  v64 = 0;
  while (1)
  {
    v65 = v63 >> 24;
    if (v65 > 103)
    {
      break;
    }

    if (v65 > 79)
    {
      switch(v65)
      {
        case 'P':
          v66 = sub_10000B688(optarg);
          if (v66)
          {
            v98 = v66;
            goto LABEL_119;
          }

          break;
        case 'U':
          sub_10000B74C(optarg);
          break;
        case 'a':
          dword_1000285C4 = 1;
          break;
        default:
          goto LABEL_116;
      }
    }

    else
    {
      switch(v65)
      {
        case 'C':
          byte_100028608 = 1;
          qword_100028600 = optarg;
          break;
        case 'G':
          dword_1000285C8 = 1;
          break;
        case 'I':
          byte_100028618 = 1;
          qword_100028610 = optarg;
          break;
        default:
          goto LABEL_116;
      }
    }

LABEL_33:
    v63 = getopt_long(a1, a2, "aC:GI:nop:P:sU:vz", &__dst, 0) << 24;
    if (v63 == -16777216)
    {
      goto LABEL_34;
    }
  }

  if (v65 > 114)
  {
    switch(v65)
    {
      case 's':
        v64 = 1;
        break;
      case 'v':
        HIDWORD(qword_1000285DC) = 1;
        break;
      case 'z':
        LODWORD(qword_1000285DC) = 1;
        break;
      default:
        goto LABEL_116;
    }

    goto LABEL_33;
  }

  if (v65 > 110)
  {
    if (v65 == 111)
    {
      dword_1000285D4 = 1;
    }

    else
    {
      if (v65 != 112)
      {
        goto LABEL_116;
      }

      sub_10000B578(optarg);
      dword_1000285D8 = 1;
    }

    goto LABEL_33;
  }

  if (v65 == 110)
  {
    dword_1000285D0 = 1;
    goto LABEL_33;
  }

  if (v65 == 104)
  {
    v98 = 0;
    goto LABEL_118;
  }

LABEL_116:
  fprintf(__stderrp, "unknown option %s\n", optarg);
LABEL_117:
  v98 = 64;
LABEL_118:
  fflush(__stderrp);
  fputs("Usage: netstat [ OPTIONS ]\n   -h, --help            this message\n   -a, --all             show all flows\n   -C, --command=CMD     show memory usage from process matching CMD\n   -G, --global          show folded global stats\n   -I, --interface=IF    show memory usage matching IF\n   -n, --numeric         show network address as number\n   -o, --aop             show AOP stats\n   -P, --pid=PID         match based on PID\n   -p, --protocol=PROTO  match based on PROTO\n   -s, --statistics      show per-protocol statistics\n   -U, --uuid=UUID       match based on nexus uuid\n   -v, --verbose         verbose output\n   -z, --zero            show zero fields in statistics\n", __stderrp);
LABEL_119:
  v96 = STACK[0x1E38];
  return v98;
}

uint64_t sub_100008C64(int a1, char *const *a2)
{
  v22 = off_100023E60;
  v23 = unk_100023E70;
  v24 = xmmword_100023E80;
  v25 = unk_100023E90;
  v21 = off_100023E40;
  v4 = getopt_long(a1, a2, "Dh", &v21, 0);
  v5 = v4 << 24;
  if (v4 << 24 == -16777216)
  {
LABEL_5:
    v19 = 0;
    uu = 0;
    if (sub_100010BCC("kern.skywalk.nexus_provider_list", &uu, &v19))
    {
      v8 = __stderrp;
      v9 = __error();
      v10 = strerror(*v9);
      fprintf(v8, "failed to retrieve nexus provider list, %s\n", v10);
    }

    else
    {
      v11 = uu;
      if (uu && v19)
      {
        do
        {
          memset(out, 0, 37);
          uuid_unparse_upper(v11, out);
          v12 = *(v11 + 46);
          v13 = sub_100010858(*(v11 + 33));
          printf("%s %.*s %s", v13, *(v11 + 32), v11 + 64, out);
          if (v11[144])
          {
            printf(" [anon]");
          }

          putchar(10);
          if (v5 != -16777216)
          {
            printf("\trings: tx %d rx %d slots: tx %d rx %d bufsize %d metasize %d mhints %d\n", *(v11 + 38), *(v11 + 39), *(v11 + 40), *(v11 + 41), *(v11 + 42), *(v11 + 43), *(v11 + 47));
          }

          if (*(v11 + 64))
          {
            v14 = 0;
            v15 = v11 + 264;
            do
            {
              uuid_unparse_upper(v15, out);
              printf("\tinstance %s\n", out);
              ++v14;
              v16 = *(v11 + 64);
              v15 += 16;
            }

            while (v14 < v16);
            v17 = 16 * v16 + 264;
          }

          else
          {
            v17 = 264;
          }

          v11 += v17;
          v19 -= v17;
        }

        while (v19);
        free(uu);
      }

      else
      {
        puts("No providers");
      }
    }
  }

  else
  {
    v6 = v4 << 24;
    while (1)
    {
      v7 = v6 >> 24;
      if (v7 != 68)
      {
        break;
      }

      v6 = getopt_long(a1, a2, "Dh", &v21, 0) << 24;
      if (v6 == -16777216)
      {
        goto LABEL_5;
      }
    }

    if (v7 != 104)
    {
      fprintf(__stderrp, "unknown option %s\n", optarg);
      fflush(__stderrp);
      fputs("Usage: provider [ OPTIONS ]\n   -h, --help    this message\n   -D, --detail  show details\n", __stderrp);
      return 64;
    }

    fflush(__stderrp);
    fputs("Usage: provider [ OPTIONS ]\n   -h, --help    this message\n   -D, --detail  show details\n", __stderrp);
  }

  return 0;
}

uint64_t sub_100008F4C(int a1, char *const *a2)
{
  v16 = 0;
  memset(&v17, 0, sizeof(v17));
  for (i = getopt_long(a1, a2, "vh", &v17, 0) << 24; i != -16777216; i = getopt_long(a1, a2, "vh", &v17, 0) << 24)
  {
    v5 = i >> 24;
    if (v5 != 118)
    {
      if (v5 != 104)
      {
        fprintf(__stderrp, "unknown option %s\n", optarg);
      }

      fflush(__stderrp);
      fputs("Usage: show [ OPTIONS ]\n   -h, --help  this message\n   -v, --verbose verbose output\n", __stderrp);
      return 64;
    }

    HIDWORD(qword_1000285DC) = 1;
  }

  sub_10000CFD8(&v16);
  v6 = v16;
  if (!v16)
  {
    fwrite("error getting Skywalk status\n", 0x1DuLL, 1uLL, __stderrp);
    return 69;
  }

  v7 = *(v16 + 40);
  if (v7 < 1)
  {
    goto LABEL_20;
  }

  for (j = 0; j < v7; ++j)
  {
    v9 = *(*(v6 + 48) + 8 * j);
    if (*(v9 + 16) == 1)
    {
      v10 = *(v9 + 40);
      if (v10 >= 1)
      {
        v11 = 0;
        v12 = *(v9 + 24);
        while (1)
        {
          v13 = *(*(v9 + 48) + 8 * v11);
          if (*(v13 + 16) != 2)
          {
            sub_100011BA8();
          }

          v14 = *(v12 + 68);
          if (!HIDWORD(qword_1000285DC))
          {
            break;
          }

          if (v14 != 2)
          {
            goto LABEL_13;
          }

LABEL_14:
          if (++v11 >= v10)
          {
            v7 = *(v6 + 40);
            goto LABEL_18;
          }
        }

        if (v14 != 3)
        {
          goto LABEL_14;
        }

LABEL_13:
        memset(out, 0, 37);
        uuid_unparse_upper(v13, out);
        printf("%s %s %s\n", (&off_100023EA0)[2 * *(v12 + 68)], out, v12);
        ((&off_100023EA0)[2 * *(v12 + 68) + 1])(v13);
        v10 = *(v9 + 40);
        goto LABEL_14;
      }
    }

LABEL_18:
    ;
  }

  v6 = v16;
LABEL_20:
  sub_1000007B8(v6);
  return 0;
}

uint64_t sub_1000091C4(int a1, char *const *a2)
{
  v11 = off_100023F00;
  v12 = unk_100023F10;
  v13 = xmmword_100023F20;
  v14 = unk_100023F30;
  v10 = off_100023EE0;
  v4 = getopt_long(a1, a2, "hU:", &v10, 0) << 24;
  if (v4 == -16777216)
  {
LABEL_4:
    v8 = 0;
    sub_10000CFD8(&v8);
    v6 = sub_100000740(v8, byte_100028621);
    if (v6)
    {
      sub_100000844(v6, __stdoutp, 0);
      fputc(10, __stdoutp);
      sub_1000007B8(v8);
      return 0;
    }

    memset(out, 0, 37);
    uuid_unparse_upper(byte_100028621, out);
    fprintf(__stderrp, "No skywalk object with UUID %s\n", out);
  }

  else
  {
    while (1)
    {
      v5 = v4 >> 24;
      if (v5 != 85)
      {
        break;
      }

      sub_10000B74C(optarg);
      v4 = getopt_long(a1, a2, "hU:", &v10, 0) << 24;
      if (v4 == -16777216)
      {
        goto LABEL_4;
      }
    }

    if (v5 == 104)
    {
      fflush(__stderrp);
      fputs("Usage: tree [ OPTIONS ]\n   -h, --help       this message\n   -U, --uuid=UUID  start tree from root with UUID\n", __stderrp);
      return 0;
    }

    fprintf(__stderrp, "unknown option %s\n", optarg);
    fflush(__stderrp);
    fputs("Usage: tree [ OPTIONS ]\n   -h, --help       this message\n   -U, --uuid=UUID  start tree from root with UUID\n", __stderrp);
  }

  return 64;
}

uint64_t sub_1000093A8(int a1, uint64_t a2)
{
  v29 = 0;
  v30 = 0;
  v28 = 8;
  if (sysctlbyname("kern.skywalk.verbose", 0, 0, 0, 0))
  {
    v16 = __error();
    v17 = __stderrp;
    if (*v16 == 2)
    {
      fwrite("skywalk verbose sysctl unavailable\n", 0x23uLL, 1uLL, __stderrp);
    }

    else
    {
      v18 = __error();
      v19 = strerror(*v18);
      fprintf(v17, "skywalk verbose sysctl error: %s\n", v19);
    }

    exit(69);
  }

  if (a1 == 2)
  {
    v4 = *(a2 + 8);
    if (strcmp(v4, "help"))
    {
      if (!strcmp(v4, "list"))
      {
        printf("%30s value\n", "flag");
        for (i = 0; i != 64; ++i)
        {
          printf("%30s 0x%016llx\n", (&off_100023F40)[i], 1 << i);
        }
      }

      else
      {
        if (strcmp(v4, "show"))
        {
          if (*v4 == 48 && !v4[1])
          {
            v8 = 0;
            v30 = 0;
          }

          else
          {
            v5 = strlen(v4);
            if (v5)
            {
              v6 = v5;
              v7 = 0;
              v8 = 0;
              while (1)
              {
                v9 = *v4;
                if (v9 < 0)
                {
                  if (__maskrune(*v4, 0x100uLL))
                  {
                    goto LABEL_16;
                  }
                }

                else if ((_DefaultRuneLocale.__runetype[v9] & 0x100) != 0)
                {
                  goto LABEL_16;
                }

                if (v9 != 32 && v9 != 124)
                {
                  fprintf(__stderrp, "unrecognized input %c\n");
LABEL_38:
                  exit(64);
                }

LABEL_16:
                v10 = *v4;
                if (v10 != 32 && v10 != 124)
                {
                  v11 = 0;
                  while (1)
                  {
                    v12 = strlen((&off_100023F40)[v11]);
                    if (!strncmp(v4, (&off_100023F40)[v11], v12))
                    {
                      v13 = v4[v12];
                      if (!v4[v12] || v13 == 32 || v13 == 124)
                      {
                        break;
                      }
                    }

                    if (++v11 == 64)
                    {
                      goto LABEL_37;
                    }
                  }

                  v8 |= 1 << v11;
                  v30 = v8;
                  if ((v12 & 0x80000000) != 0)
                  {
LABEL_37:
                    fprintf(__stderrp, "unrecognized input %s\n");
                    goto LABEL_38;
                  }

                  v7 += v12 & 0x7FFFFFFF;
                  v4 += v12 & 0x7FFFFFFF;
                }

                ++v7;
                ++v4;
                if (v7 >= v6)
                {
                  goto LABEL_34;
                }
              }
            }

            v8 = 0;
          }

LABEL_34:
          fprintf(__stderrp, "Setting sk_verbose to 0x%llx\n", v8);
          if (!sysctlbyname("kern.skywalk.verbose", &v29, &v28, &v30, 8uLL))
          {
            return 0;
          }

          v24 = __stderrp;
          v25 = __error();
          strerror(*v25);
          fprintf(v24, "failed to set verbose sysctl: %s\n");
LABEL_59:
          exit(-1);
        }

        if (sysctlbyname("kern.skywalk.verbose", &v29, &v28, 0, 0))
        {
          v26 = __stderrp;
          v27 = __error();
          strerror(*v27);
          fprintf(v26, "failed to get verbose sysctl: %s\n");
          goto LABEL_59;
        }

        v21 = 0;
        v22 = 1;
        LOBYTE(v23) = v29;
        do
        {
          if (v23)
          {
            if (v22)
            {
              printf("%s");
            }

            else
            {
              printf("|%s");
            }

            v22 = 0;
          }

          v23 = v29 >> 1;
          v29 >>= 1;
          v21 += 8;
        }

        while (v21 != 512);
        putchar(10);
      }

      exit(0);
    }

    v14 = 0;
  }

  else
  {
    v14 = (a1 != 1) << 6;
  }

  fflush(__stderrp);
  fputs("Usage: log show        show current verbose flags\n       log 'SK_VERB_*' set verbose flag'\n       log 0           reset verbose flag\n       log list        list out all verbose flags and values\n", __stderrp);
  return v14;
}

uint64_t sub_1000097D8()
{
  v8 = 0;
  if (sub_100010BF0(off_100028450[0], &v8))
  {
    warn("sysctl enable_netagent failed");
    return 71;
  }

  if (!v8)
  {
    puts("Skywalk is NOT enabled currently");
    v7 = 0;
    if (sub_100010BF0(off_100028460[0], &v7))
    {
      sub_100011BD4();
      return 71;
    }

    if ((v7 & 4) == 0)
    {
      v5 = 0;
      __n = 0;
      if (sub_100010BCC(off_100028458[0], &__n, &v5))
      {
        warn("sysctl bootargs failed");
        return 71;
      }

      v0 = strnstr(__n, off_100028448[0], v5);
      if (v0)
      {
        sscanf(v0, "%30s", __s1);
        v1 = __s1 + strlen(off_100028448[0]);
        LODWORD(v4) = 0;
        if (sub_1000117EC(&v4, v1))
        {
          if ((v4 & 4) == 0)
          {
            puts("\tif_attach_nx:\tdisabled in boot-args");
            v2 = 1;
LABEL_14:
            __s1[0] = 0;
            __n = 0;
            if (!sub_100010BCC(off_100028468[0], __s1, &__n))
            {
              if (strnlen(__s1[0], __n))
              {
                printf("\tfilter active:\t%s\n");
              }

              else if ((v2 & 1) == 0)
              {
                v4 = 0;
                v5 = 0;
                sub_100010BCC(off_100028470, &v5, &v4);
                printf("\tIs it diabled via PE? hw is %s\n");
              }

              return 0;
            }

            warn("sysctl net.filter_state failed");
            return 71;
          }
        }

        else
        {
          fprintf(__stderrp, "\tif_attach_nx: \t%s ??\n", v1);
        }
      }
    }

    v2 = 0;
    goto LABEL_14;
  }

  puts("Skywalk is enabled currently");
  return 0;
}

uint64_t sub_1000099D0(int a1, uint64_t a2)
{
  v28 = "/usr/sbin/nvram";
  v29 = "boot-args";
  v30 = 0;
  if (geteuid())
  {
    fwrite("enable/disable Skywalk requires root\n", 0x25uLL, 1uLL, __stderrp);
    return 64;
  }

  if (a1 != 2)
  {
LABEL_7:
    fflush(__stderrp);
    fputs("Usage: enable 1   enable skywalk via boot-args\n       enable 0   disable skywalk via boot-args\n", __stderrp);
    return 64;
  }

  __endptr = 0;
  v4 = strtol(*(a2 + 8), &__endptr, 10);
  if (__endptr == *(a2 + 8) || *__endptr || (v7 = v4, *__error() == 34) || v7 >= 2)
  {
    fwrite("Invalid value, [enable] only accepts 1/0\n", 0x29uLL, 1uLL, __stderrp);
    goto LABEL_7;
  }

  v20 = 256;
  v8 = sub_100011590(&v28, __s, &v20);
  if (v8)
  {
    v18 = v8;
    fprintf(__stderrp, "ret(%d) setting nvram", v8);
    exit(v18);
  }

  __s[v20] = 0;
  __s[strcspn(__s, "\n")] = 0;
  if (*__s == 0x6772612D746F6F62 && v26 == 2419)
  {
    v10 = 0;
    __stringp = v27;
    v11 = -1;
    v12 = v24;
    memset(v24, 0, sizeof(v24));
    while (1)
    {
      v13 = strsep(&__stringp, " ");
      *v12 = v13;
      if (!v13 || !*v13)
      {
        break;
      }

      if (strstr(v13, off_100028448[0]))
      {
        v11 = v10;
      }

      v12 += 8;
      ++v10;
      if (v12 >= a2 + 256)
      {
        fwrite("boot-args too long\n", 0x13uLL, 1uLL, __stderrp);
        exit(-1);
      }
    }

    memset(v23, 0, sizeof(v23));
    if (v10)
    {
      v14 = v11;
      v15 = v24;
      do
      {
        if (v14)
        {
          v16 = *v15;
          __strcat_chk();
          __strcat_chk();
        }

        --v14;
        v15 += 8;
        --v10;
      }

      while (v10);
    }

    v17 = 2;
    if (v7 == 1)
    {
      v17 = 39;
    }

    snprintf(__str, 0x100uLL, "boot-args=%sif_attach_nx=0x%x", v23, v17);
    printf("Setting boot-args to: %s\n", __str);
    v29 = __str;
    v5 = sub_100011590(&v28, 0, 0);
    if (v5)
    {
      fprintf(__stderrp, "ret(%d) setting nvram\n", v5);
    }

    else
    {
      puts("Done, might need reboot to take effect");
    }
  }

  else
  {
    fprintf(__stderrp, "unknown nvram value: %s\n", __s);
    return 69;
  }

  return v5;
}

uint64_t sub_100009D8C(int a1, const char **a2)
{
  v12 = 0;
  v13 = 0;
  if (a1 != 5)
  {
    v7 = __stderrp;
    v8 = "tcpinfo <local IP> <local port> <remote IP> <remote port>\n";
    v9 = 58;
LABEL_16:
    fwrite(v8, v9, 1uLL, v7);
    return 64;
  }

  v17 = 0u;
  memset(v18, 0, sizeof(v18));
  v15 = 0u;
  v16 = 0u;
  v14[0] = 8;
  v14[1] = 8;
  BYTE4(v17) = 6;
  if (inet_pton(2, a2[1], &v17 + 12))
  {
    v3 = a2[3];
    v4 = 2;
    v5 = &v18[1] + 8;
    v6 = 2;
  }

  else
  {
    if (!inet_pton(30, a2[1], v18))
    {
      v7 = __stderrp;
      v8 = "invalid addrs\n";
      v9 = 14;
      goto LABEL_16;
    }

    v3 = a2[3];
    v4 = 30;
    v5 = &v18[1] + 12;
    v6 = 30;
  }

  if (!inet_pton(v6, v3, v5))
  {
    v7 = __stderrp;
    v8 = "invalid remote addr\n";
    v9 = 20;
    goto LABEL_16;
  }

  WORD5(v17) = bswap32(atoi(a2[2])) >> 16;
  WORD3(v18[1]) = bswap32(atoi(a2[4])) >> 16;
  BYTE9(v17) = v4;
  BYTE5(v18[1]) = v4;
  if (sub_100010AC8("kern.skywalk.stats.flow", &v13, &v12, v14, 0x70uLL))
  {
    fwrite("syctl_buf error", 0xFuLL, 1uLL, __stderrp);
    exit(-1);
  }

  if (!v12 || (v10 = v13) == 0)
  {
    v7 = __stderrp;
    v8 = "flow not found\n";
    v9 = 15;
    goto LABEL_16;
  }

  if (v12 == 304)
  {
    printf("ifindex %d\n", *(v13 + 12));
    printf("seq     %u\n", v10[56]);
    printf("ack     %u\n", v10[66]);
    printf("wnd     %d\n", *(v10 + 114));
    printf("wscale  %d\n", *(v10 + 230));
    free(v13);
    return 0;
  }

  else
  {
    fwrite("Error, mismatching sk_stats_flow, quit\n", 0x27uLL, 1uLL, __stderrp);
    return 71;
  }
}

uint64_t sub_10000A01C(int a1, char *const *a2)
{
  v25 = off_100024180;
  v26 = unk_100024190;
  v27 = xmmword_1000241A0;
  v28 = unk_1000241B0;
  v22 = off_100024140;
  v23 = off_100024160;
  v24 = unk_100024170;
  v4 = getopt_long(a1, a2, "vd:f:", &v22, 0) << 24;
  if (v4 == -16777216)
  {
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v9 = 255;
LABEL_28:
    v19 = 0;
    v20 = 0;
    result = sub_100010BCC("kern.skywalk.stats.flowidns", &v19, &v20);
    if (!result)
    {
      v15 = v19;
      if (v19)
      {
        if (v20)
        {
          if (v20 >= 1)
          {
            do
            {
              if ((v6 & 1) == 0 || *(v15 + 6) == v9)
              {
                if ((v7 & 1) == 0)
                {
                  sub_10000D3FC(v15[24], __dst);
                  printf("Flow ID statistics for %s domain\n", __dst);
                  printf("num allocs:     %llu\n", *v15);
                  printf("num releases:   %llu\n", *(v15 + 1));
                  printf("num collisions: %llu\n", *(v15 + 2));
                  printf("num flowids:    %u\n", *(v15 + 7));
                }

                v16 = *(v15 + 7);
                if (v16 != 0 && ((v7 | (v6 | v8)) & 1) != 0)
                {
                  v17 = 0;
                  v18 = v15 + 68;
                  do
                  {
                    if (v7)
                    {
                      if (*v18 == v5)
                      {
                        sub_10000D3FC(v15[24], __dst);
                        sub_10000D2AC((v18 - 9));
                        printf("\tDomain: %s\n");
                        return 0;
                      }

                      ++v17;
                    }

                    else
                    {
                      printf("*****record: %d *****\n", ++v17);
                      sub_10000D2AC((v18 - 9));
                      v16 = *(v15 + 7);
                    }

                    v18 += 16;
                  }

                  while (v17 < v16);
                }

                if ((v7 & 1) == 0)
                {
                  puts("--------------------------------------------");
                }
              }

              v15 += (*(v15 + 7) << 6) | 0x20u;
            }

            while (v15 < &v19[v20]);
          }

          if (v7)
          {
            printf("FlowID 0x%x not found\n");
          }

          return 0;
        }
      }
    }

    return result;
  }

  v8 = 0;
  v7 = 0;
  v6 = 0;
  v5 = 0;
  v10 = -1;
  while (1)
  {
    v11 = v4 >> 24;
    if (v11 == 118)
    {
      v8 = 1;
      goto LABEL_26;
    }

    if (v11 != 102)
    {
      break;
    }

    if (!optarg)
    {
      goto LABEL_53;
    }

    __endptr = 0;
    v13 = strtoul(optarg, &__endptr, 16);
    if (__endptr == optarg || *__endptr || (v5 = v13, *__error() == 34) || !v5)
    {
      fwrite("invalid -f <flowID> value\n", 0x1AuLL, 1uLL, __stderrp);
      exit(64);
    }

    v7 = 1;
LABEL_26:
    v4 = getopt_long(a1, a2, "vd:f:", &v22, 0) << 24;
    if (v4 == -16777216)
    {
      v9 = v10;
      goto LABEL_28;
    }
  }

  if (v11 != 100)
  {
    fprintf(__stderrp, "unknown option %s\n", optarg);
    goto LABEL_53;
  }

  v12 = optarg;
  if (!optarg)
  {
    goto LABEL_53;
  }

  if (*optarg == 80 && optarg[1] == 70 && !optarg[2])
  {
    v10 = 3;
    goto LABEL_25;
  }

  if (!strncmp(optarg, "IPSec", 6uLL))
  {
    v10 = 0;
    goto LABEL_25;
  }

  if (!strncmp(v12, "flowswitch", 0xBuLL))
  {
    v6 = 1;
    v10 = 1;
    goto LABEL_26;
  }

  if (!strncmp(v12, "inpcb", 6uLL))
  {
    v10 = 2;
LABEL_25:
    v6 = 1;
    goto LABEL_26;
  }

  fwrite("unknown domain\n", 0xFuLL, 1uLL, __stderrp);
LABEL_53:
  fflush(__stderrp);
  fputs("Usage  flowidns [ OPTIONS ]   -v, --verbose   show all statistics\n   -d, --domain    filter for the domain {PF, IPSec, flowswitch, inpcb}\n   -f, --flowID    fliter for the given flowID(in HEX)\n", __stderrp);
  return 64;
}

uint64_t sub_10000A47C(int a1, uint64_t a2)
{
  v2 = (a1 - 1);
  if (a1 == 1)
  {
LABEL_5:
    fwrite("valid subcommands are add, remove, and show\n", 0x2CuLL, 1uLL, __stderrp);
    return 0xFFFFFFFFLL;
  }

  else
  {
    v4 = *(a2 + 8);
    v5 = "add";
    v6 = &off_1000241D0;
    while (strcasecmp(v4, v5))
    {
      v7 = *v6;
      v6 += 2;
      v5 = v7;
      if (!v7)
      {
        goto LABEL_5;
      }
    }

    v9 = *(v6 - 1);

    return v9(v2, a2 + 8);
  }
}

uint64_t sub_10000A524(int a1, uint64_t a2)
{
  v2 = (a1 - 1);
  if (a1 == 1)
  {
LABEL_5:
    fwrite("valid subcommands are create, destroy, and set\n", 0x2FuLL, 1uLL, __stderrp);
    return 0xFFFFFFFFLL;
  }

  else
  {
    v4 = *(a2 + 8);
    v5 = "create";
    v6 = &off_1000243B0;
    while (strcasecmp(v4, v5))
    {
      v7 = *v6;
      v6 += 2;
      v5 = v7;
      if (!v7)
      {
        goto LABEL_5;
      }
    }

    v9 = *(v6 - 1);

    return v9(v2, a2 + 8);
  }
}

uint64_t sub_10000A5CC(int a1, char *const *a2)
{
  v26 = off_1000244A0;
  v27 = unk_1000244B0;
  v28 = xmmword_1000244C0;
  v29 = unk_1000244D0;
  v25 = off_100024480;
  v4 = getopt_long(a1, a2, "bh", &v25, 0) << 24;
  if (v4 != -16777216)
  {
    while (1)
    {
      v5 = v4 >> 24;
      if (v5 != 98)
      {
        break;
      }

      dword_1000285E4 = 1;
      v4 = getopt_long(a1, a2, "bh", &v25, 0) << 24;
      if (v4 == -16777216)
      {
        goto LABEL_4;
      }
    }

    if (v5 != 104)
    {
      fprintf(__stderrp, "unknown option %s", optarg);
      fflush(__stderrp);
      fputs("Usage aop [ OPTIONS ] show AOP statistics\n   -h, --help          this message\n   -b, --bitmap        show AOP activity bitmaps\n", __stderrp);
      return 64;
    }

    fflush(__stderrp);
    fputs("Usage aop [ OPTIONS ] show AOP statistics\n   -h, --help          this message\n   -b, --bitmap        show AOP activity bitmaps\n", __stderrp);
    return 0;
  }

LABEL_4:
  v23 = 0;
  v24 = 0;
  if (!dword_1000285E4)
  {
    result = sub_100010BCC("net.aop.driver_stats", &v23, &v24);
    if (result || !v23 || !v24)
    {
      return result;
    }

    if ((v24 & 0x1F) != 0)
    {
      v18 = __stderrp;
      v19 = "Error, mismatching aop_driver_stats, quit\n";
      v20 = 42;
      goto LABEL_43;
    }

    puts("AOP:");
    v10 = 0;
    v11 = v23;
    while (qword_1000285DC)
    {
      if (!HIDWORD(qword_1000285DC))
      {
        v13 = *&v11[v10 * 8];
LABEL_24:
        v21 = off_1000244E0[v10];
        printf("\t%-24s: %llu\n");
        goto LABEL_25;
      }

      v12 = fmtcheck((&off_100024508)[v10], "%llu");
      printf(v12, *&v11[v10 * 8], v22);
LABEL_25:
      if (++v10 == 4)
      {
        goto LABEL_37;
      }
    }

    if (!*&v11[v10 * 8])
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

  result = sub_100010BCC("net.aop.proc_activity_bitmaps", &v23, &v24);
  if (!result && v23 && v24)
  {
    if (__ROR8__(0x8F5C28F5C28F5C29 * v24, 4) >= 0xA3D70A3D70A3D8uLL)
    {
      v18 = __stderrp;
      v19 = "Error, mismatching activity bitmap stats, quit\n";
      v20 = 47;
    }

    else
    {
      puts("Activity Bitmap:");
      v7 = v23;
      v8 = v24;
      if (v23 + 400 <= &v23[v24])
      {
        v9 = v23;
        do
        {
          if (*v9)
          {
            memset(v59, 0, sizeof(v59));
            v58 = 0u;
            v57 = 0u;
            v56 = 0u;
            v55 = 0u;
            v54 = 0u;
            v53 = 0u;
            v52 = 0u;
            v51 = 0u;
            v50 = 0u;
            v49 = 0u;
            v48 = 0u;
            v47 = 0u;
            v46 = 0u;
            *&v45[3] = 0u;
            strcpy(v45, "0x");
            v14 = 2;
            for (i = 264; i != 328; i += 8)
            {
              v14 += snprintf(&v45[v14], 256 - v14, "%016llx", *&v9[i]);
            }

            memset(v44, 0, sizeof(v44));
            v43 = 0u;
            v42 = 0u;
            v41 = 0u;
            v40 = 0u;
            v39 = 0u;
            v38 = 0u;
            v37 = 0u;
            v36 = 0u;
            v35 = 0u;
            v34 = 0u;
            v33 = 0u;
            v32 = 0u;
            v31 = 0u;
            *&v30[3] = 0u;
            strcpy(v30, "0x");
            v16 = 2;
            for (j = 336; j != 400; j += 8)
            {
              v16 += snprintf(&v30[v16], 256 - v16, "%016llx", *&v9[j]);
            }

            printf("%-20s\n", v9);
            printf("\tWiFi: Start = %llu, Bitmap = %s\n", *(v9 + 32), v45);
            printf("\tCell: Start = %llu, Bitmap = %s\n", *(v9 + 41), v30);
            v7 = v23;
            v8 = v24;
          }

          v9 += 400;
        }

        while (v9 + 400 <= &v7[v8]);
      }

      else
      {
        v9 = v23;
      }

      if (v9 == &v7[v8])
      {
LABEL_37:
        fflush(__stdoutp);
        return 0;
      }

      v18 = __stderrp;
      v19 = "Error, mismatching aop_proc_activity_bitmap, quit\n";
      v20 = 50;
    }

LABEL_43:
    fwrite(v19, v20, 1uLL, v18);
    exit(71);
  }

  return result;
}

uint64_t sub_10000AA80(int a1, char *const *a2)
{
  v4 = off_100024530;
  v5 = xmmword_100024550;
  v6 = unk_100024560;
  v2 = getopt_long(a1, a2, "h", &v4, 0);
  if (v2 == -1)
  {
    result = 0;
    byte_1000284C0 = 1;
  }

  else if (v2 == 104)
  {
    fflush(__stderrp);
    fputs("Usage: [ OPTIONS ]\n   -h, --help    this message\n", __stderrp);
    return 0;
  }

  else
  {
    fflush(__stderrp);
    fputs("Usage: [ OPTIONS ]\n   -h, --help    this message\n", __stderrp);
    return 64;
  }

  return result;
}

uint64_t sub_10000AB64(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (a1 && *(a1 + 8))
  {
    printf("Instances: %d\n", *(a1 + 8));
    if (*(a1 + 12))
    {
      v6 = 0;
      v7 = 0;
      v8 = (*(a1 + 16) + 8);
      v9 = 1;
      v22 = a2;
      do
      {
        v10 = v6;
        v23 = 0;
        v6 = *(v8 - 1);
        v11 = *v8;
        if (v10 != v6)
        {
          ++v9;
        }

        if (v11)
        {
          sub_10001087C(*(v11 + 20), __big, 0x100uLL, 1);
          v12 = byte_100028620 != 1 || dword_10002861C == *(v11 + 20);
          if (v12 && (byte_100028608 != 1 || strcasestr(__big, qword_100028600)))
          {
            memset(out, 0, 37);
            uuid_unparse_upper(v6, out);
            printf("%-4u %s\n", v9, out);
            printf("     Port[%2u] %-22s (fd %d)\t", *(v11 + 28), __big, *(v11 + 24));
            v13 = *(v11 + 16);
            if (v13)
            {
              sub_10001096C(" flags", v13, "\x10\x01MON_TX\x02MON_RX\x03NO_COPY\x04USER_PACKET_POOL\x05DEFUNCT_OK\x06EXCLUSIVE\aFILTER\bEVENT_RING\tIF_ADV\nDEFUNCT_SKIP\vLOW_LATENCY\x1FCLOSING DEFUNCT");
            }

            putchar(10);
            if (!sub_100010688(&v23) && v23)
            {
              if (a2)
              {
                v14 = sub_1000104FC(a2, v11);
                if (v14)
                {
                  a2 = *(v14 + 8);
                }

                else
                {
                  a2 = 0;
                }
              }

              if (*(v11 + 32) || *(v11 + 36))
              {
                sub_10000AE4C(a3 != 0, 0, "Bytes");
                v15 = *(v11 + 32);
                if (v15)
                {
                  if (a2)
                  {
                    v16 = a2 + 48;
                    v17 = *(a2 + 32);
                  }

                  else
                  {
                    v16 = 0;
                    v17 = 0;
                  }

                  sub_10000B0EC("TX", v11 + 48, v15, v16, v17, a3);
                }
              }

              v18 = *(v11 + 36);
              if (v18)
              {
                if (a2)
                {
                  v19 = *(a2 + 36);
                  v20 = a2 + 144 * *(a2 + 32) + 48;
                }

                else
                {
                  v20 = 0;
                  v19 = 0;
                }

                sub_10000B0EC("RX", v11 + 144 * *(v11 + 32) + 48, v18, v20, v19, a3);
              }

              putchar(10);
              a2 = v22;
            }
          }
        }

        ++v7;
        v8 += 2;
      }

      while (v7 < *(a1 + 12));
    }

    return putchar(10);
  }

  else
  {

    return puts("No channels");
  }
}

uint64_t sub_10000AE4C(char a1, int a2, const char *a3)
{
  if (a2)
  {
    v6 = "Pkts";
  }

  else
  {
    v6 = "Slots";
  }

  v7 = "Queue";
  if (!a2)
  {
    v7 = "Ring";
  }

  printf("%-8s", v7);
  printf(" %10s/s %12s", a3, "average");
  if (a1)
  {
    printf(" %12s", "delta");
    printf(" %10s/s %12s", v6, "average");
    printf(" %12s", "delta");
    printf(" %4s %4s %4s", "Min", "Avg", "Max");
    printf(" %12s");
  }

  else
  {
    printf(" %12s", a3);
    printf(" %10s/s %12s", v6, "average");
    printf(" %12s", v6);
    printf(" %4s %4s %4s");
  }

  if (a2 == 1)
  {
    printf(" %8s");
  }

  else
  {
    result = putchar(10);
    if (a2)
    {
      return result;
    }

    printf("%8s", "");
    printf(" %12s %12s", "/sync", "");
    if (a1)
    {
      printf(" %12s", "");
      printf(" %12s %12s", "/sync", "");
      printf(" %12s", "");
      printf(" %4s %4s %4s", "", "", "");
      printf(" %12s");
    }

    else
    {
      printf(" %12s", a3);
      printf(" %12s %12s", "/sync", "");
      printf(" %12s", "");
      printf(" %4s %4s %4s");
    }
  }

  return putchar(10);
}

const char *sub_10000B0EC(const char *result, uint64_t a2, int a3, uint64_t a4, int a5, unsigned int a6)
{
  v45 = result;
  if (a3)
  {
    v9 = 0;
    if (a4)
    {
      v10 = a5 == 0;
    }

    else
    {
      v10 = 1;
    }

    v11 = v10;
    v44 = v11;
    v12 = a6;
    do
    {
      v13 = *(a2 + 24);
      if (v13)
      {
        v14 = *(a2 + 8) / v13;
      }

      else
      {
        v14 = 0;
      }

      v15 = 0.0;
      if (v44)
      {
LABEL_16:
        v18 = 0;
        v19 = 0;
        v20 = 0.0;
        v21 = 0.0;
        v22 = 0.0;
      }

      else
      {
        v16 = a5;
        v17 = a4;
        while (*v17 != *a2)
        {
          v17 += 144;
          if (!--v16)
          {
            goto LABEL_16;
          }
        }

        v19 = v13 - *(v17 + 24);
        v18 = *(a2 + 96) - *(v17 + 96);
        v15 = (*(a2 + 16) - *(v17 + 16));
        v21 = (*(a2 + 8) - *(v17 + 8));
        v20 = (*(a2 + 88) - *(v17 + 88));
        v22 = (*(a2 + 80) - *(v17 + 80));
      }

      snprintf(__str, 0x10uLL, "%s[%d]", v45, *a2);
      printf("%-8s", __str);
      v23 = sub_1000114E4(v46, 32, *(a2 + 56));
      printf(" %12s", v23);
      v24 = sub_1000114E4(v46, 32, *(a2 + 64));
      printf(" %12s", v24);
      if (a6)
      {
        sub_1000114E4(v46, 32, v15);
        printf(" %12s");
      }

      else
      {
        v25 = *(a2 + 16);
        printf(" %12qu");
      }

      v26 = sub_1000114E4(v46, 32, *(a2 + 40));
      printf(" %12s", v26);
      v27 = sub_1000114E4(v46, 32, *(a2 + 48));
      printf(" %12s", v27);
      if (a6)
      {
        v28 = sub_1000114E4(v46, 32, v21);
        printf(" %12s", v28);
        printf(" %4d %4qu %4d", *(a2 + 72), v14, *(a2 + 76));
        sub_1000114E4(v46, 32, (v19 / v12));
        printf(" %12s");
      }

      else
      {
        printf(" %12qu", *(a2 + 8));
        v29 = *(a2 + 72);
        v40 = *(a2 + 76);
        printf(" %4d %4qu %4d");
      }

      putchar(10);
      printf("%8s", "");
      v30 = sub_1000114E4(v46, 32, *(a2 + 104));
      printf(" %12s", v30);
      v31 = sub_1000114E4(v46, 32, *(a2 + 112));
      printf(" %12s", v31);
      if (a6)
      {
        sub_1000114E4(v46, 32, v20);
        printf(" %12s");
      }

      else
      {
        v33 = *(a2 + 88);
        printf(" %12qu");
      }

      LODWORD(v32) = *(a2 + 128);
      v34 = sub_1000114E4(v46, 32, v32);
      printf(" %12s", v34);
      LODWORD(v35) = *(a2 + 132);
      v36 = sub_1000114E4(v46, 32, v35);
      printf(" %12s", v36);
      if (a6)
      {
        v37 = sub_1000114E4(v46, 32, v22);
        printf(" %12s", v37);
        printf(" %4d %4qu %4d", *(a2 + 120), v14, *(a2 + 124));
        sub_1000114E4(v46, 32, (v18 / v12));
        printf(" %12s");
      }

      else
      {
        printf(" %12qu", *(a2 + 80));
        v38 = *(a2 + 120);
        v41 = *(a2 + 124);
        printf(" %4d %4qu %4d");
      }

      result = putchar(10);
      if (*(a2 + 136))
      {
        printf("%12s", "Errors:");
        LODWORD(v39) = *(a2 + 136);
        sub_1000114E4(v48, 32, v39);
        printf(" packet allocation failures: %s", v48);
        result = putchar(10);
      }

      ++v9;
      a2 += 144;
    }

    while (v9 != a3);
  }

  return result;
}

const char *sub_10000B578(const char *result)
{
  v1 = result;
  v2 = optarg;
  if (*optarg == 105 && optarg[1] == 112 && !optarg[2])
  {
    dword_1000285E8 = 1;
  }

  else
  {
    result = strcmp(optarg, "ip6");
    if (result)
    {
      result = strcmp(v2, "tcp");
      if (result)
      {
        result = strcmp(v2, "udp");
        if (result)
        {
          result = strcmp(v2, "quic");
          if (result)
          {
            return fprintf(__stderrp, "Unsupported protocol %s\n", v1);
          }

          else
          {
            dword_1000285F8 = 1;
          }
        }

        else
        {
          dword_1000285F4 = 1;
        }
      }

      else
      {
        dword_1000285F0 = 1;
      }
    }

    else
    {
      dword_1000285EC = 1;
    }
  }

  return result;
}

uint64_t sub_10000B688(uint64_t a1)
{
  if (!a1)
  {
    sub_100011C08();
  }

  __endptr = 0;
  v1 = strtol(optarg, &__endptr, 10);
  if (__endptr == optarg || *__endptr || (v2 = v1, *__error() == 34))
  {
    fwrite("invalid -p <pid> value\n", 0x17uLL, 1uLL, __stderrp);
    return 64;
  }

  else
  {
    result = 0;
    byte_100028620 = 1;
    dword_10002861C = v2;
  }

  return result;
}

size_t sub_10000B74C(uint64_t a1)
{
  if (!a1)
  {
    sub_100011C34();
  }

  result = uuid_parse(optarg, byte_100028621);
  if (result)
  {
    v2 = __stderrp;

    return fwrite("Invalid -u <uuid> value\n", 0x18uLL, 1uLL, v2);
  }

  else
  {
    byte_100028631 = 1;
  }

  return result;
}

uint64_t sub_10000B7C4(uint64_t result)
{
  v1 = result;
  for (i = 0; i != 126; ++i)
  {
    if (qword_1000285DC)
    {
      if (HIDWORD(qword_1000285DC))
      {
        v3 = fmtcheck((&off_100020CA8)[i], "%llu");
        result = printf(v3, *(v1 + i * 8), v6);
        continue;
      }

      v4 = *(v1 + i * 8);
LABEL_8:
      v5 = off_1000208B0[i];
      result = printf("\t%-24s: %llu\n");
      continue;
    }

    if (*(v1 + i * 8))
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10000B894(uint64_t result)
{
  v1 = result;
  for (i = 0; i != 136; ++i)
  {
    if (qword_1000285DC)
    {
      if (HIDWORD(qword_1000285DC))
      {
        v3 = fmtcheck((&off_1000215C8)[i], "%llu");
        result = printf(v3, *(v1 + i * 8), v6);
        continue;
      }

      v4 = *(v1 + i * 8);
LABEL_8:
      v5 = off_100021180[i];
      result = printf("\t%-24s: %llu\n");
      continue;
    }

    if (*(v1 + i * 8))
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10000B964(_DWORD *a1, int a2, const char *a3)
{
  v5 = *a1;
  if (*a1)
  {
    v6 = 0;
    v7 = (a1 + 4);
    do
    {
      if ((v5 & a2) != 0)
      {
        if (v6 >= 1)
        {
          v6 += snprintf(&v12[v6], 55 - v6, ",");
        }

        v6 += snprintf(&v12[v6], 55 - v6, "%s", *(v7 - 1));
      }

      v8 = *v7;
      v7 += 2;
      v5 = v8;
    }

    while (v8);
    v9 = v6;
  }

  else
  {
    v9 = 0;
  }

  snprintf(&v12[v9], 55 - v9, "(0x%x)", a2);
  v10 = fmtcheck(a3, "%s");
  return printf(v10, v12);
}

uint64_t sub_10000BA88(uint64_t **a1, int a2)
{
  printf("ID    : %-55s %6s %13s %-25s %s\n", "arena name", "type", "map size", "region types", "client(s)");
  v3 = 230;
  do
  {
    putchar(45);
    --v3;
  }

  while (v3);
  putchar(10);
  v4 = *a1;
  if (*a1)
  {
    v5 = 0;
    v6 = dword_10002861C;
    v7 = byte_100028620;
    do
    {
      if ((v7 & 1) == 0 || v6 == *(v4 + 136))
      {
LABEL_11:
        bzero(v22, 0x800uLL);
        v10 = *(v4 + 20);
        v11 = "?";
        if (v10 <= 2)
        {
          v11 = off_100024570[v10];
        }

        printf("a%-4u : %-55s %6s %13llu ", *(v4 + 2), v4 + 16, v11, v4[11]);
        sub_10000C888(&unk_100028048, *(v4 + 3), "%-25.25s");
        v12 = 0;
        v13 = 0;
        do
        {
          v14 = *(v4 + v12 + 544);
          if (!v14)
          {
            break;
          }

          sub_10001087C(v14, v21, 0x100uLL, 1);
          v15 = &v22[v13];
          v16 = 2048 - v13;
          v17 = v12 ? snprintf(v15, v16, ",%s") : snprintf(v15, v16, "%s");
          v13 += v17;
          v12 += 4;
        }

        while (v12 != 32);
        if (!v13)
        {
          strcpy(v22, "kernel");
        }

        printf(" %s", v22);
        putchar(10);
        v7 = byte_100028620;
        v6 = dword_10002861C;
        if (a2)
        {
          v5 += v4[11];
        }
      }

      else
      {
        v8 = 0;
        while (v8 != 7)
        {
          v9 = *(v4 + v8++ + 137);
          if (v6 == v9)
          {
            if ((v8 - 1) > 6)
            {
              break;
            }

            goto LABEL_11;
          }
        }
      }

      v4 = *v4;
    }

    while (v4);
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    printf("%-5s : %-55s %6s %13llu %-25.25s %s\n", "sum", "-", "-", v5, "-", "-");
  }

  v18 = 230;
  do
  {
    putchar(45);
    --v18;
  }

  while (v18);
  putchar(10);
  return sub_10000C968(&unk_100028048);
}

void sub_10000BD40(uint64_t *a1, uint64_t a2)
{
  v4 = malloc_type_calloc(1uLL, 0x4000uLL, 0x5F08CE7DuLL);
  printf("        %-55s %9s %9s %9s %9s %9s %9s %9s %6s %4s %9s %9s %9s %9s %13s %13s %13s %4s %4s %-17s %s\n", "", "seg", "seg", "obj", "obj", "obj", "obj", "objs/", "obj", "max", "seg", "seg", "seg", "seg", "mem", "mem", "mem", "hash", "hash", "region", "owning");
  printf("ID    : %-55s %9s %9s %9s %9s %9s %9s %9s %6s %4s %9s %9s %9s %9s %13s %13s %13s %4s %4s %-17s %s\n", "region name", "r_size", "c_size", "r_size", "c_size", "r_cnt", "c_cnt", "seg", "algn", "frag", "alloc", "free", "inuse", "limit", "inuse", "wired", "total", "rscl", "size", "modes", "arena(s)");
  v5 = 230;
  do
  {
    putchar(45);
    --v5;
  }

  while (v5);
  putchar(10);
  v6 = *a1;
  if (!v6)
  {
    v9 = 0;
    v8 = 0;
    v7 = 0;
    v34 = 0;
    v35 = 0;
    v25 = 0;
    v26 = 0;
    v30 = 0;
    v31 = 0;
    v32 = 0;
    v33 = 0;
    v24 = 0;
    v23 = 0;
    v27 = 0;
    v28 = 0;
    v29 = 0;
    if (!a2)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  v28 = 0;
  v29 = 0;
  v27 = 0;
  v23 = 0;
  v24 = 0;
  v25 = 0;
  v31 = 0;
  v32 = 0;
  v33 = 0;
  v34 = 0;
  v30 = 0;
  v26 = 0;
  v35 = 0;
  v7 = 0;
  v8 = 0;
  v9 = 0;
  do
  {
    if (sub_10000C808(v6))
    {
      v10 = *(v6 + 232);
      printf("r%-4u : %-55s %9llu %9llu %9llu %9llu %9llu %9llu %9llu %6llu %4llu %9llu %9llu %9llu %9llu %13llu %13llu %13llu %4llu %4llu ", *(v6 + 52), (v6 + 56), *(v6 + 144), *(v6 + 152), *(v6 + 176), *(v6 + 192), *(v6 + 184), *(v6 + 200), *(v6 + 168), *(v6 + 208), *(v6 + 216), *(v6 + 272), *(v6 + 280), *(v6 + 248), *(v6 + 160), *(v6 + 224), v10, *(v6 + 240), *(v6 + 256), *(v6 + 264));
      sub_10000C888(&unk_1000281E8, *(v6 + 140), "%-17.17s");
      if (v4)
      {
        v11 = *(v6 + 32);
        if (v11)
        {
          v22 = v9;
          v12 = v8;
          v13 = v7;
          v14 = a2;
          v15 = 0;
          do
          {
            v16 = &v4[v15];
            v17 = (0x4000 - v15);
            if (v11 == *(v6 + 32))
            {
              v18 = snprintf(v16, v17, "a%u");
            }

            else
            {
              v18 = snprintf(v16, v17, ",a%u");
            }

            v15 += v18;
            v11 = *v11;
          }

          while (v11);
          printf(" %s", v4);
          a2 = v14;
          v7 = v13;
          v8 = v12;
          v9 = v22;
        }
      }

      putchar(10);
      v20 = *(v6 + 232);
      v19 = *(v6 + 240);
      v9 += v19;
      v8 += v20;
      if (a2)
      {
        v7 += *(v6 + 144);
        v35 += *(v6 + 152);
        v34 += *(v6 + 176);
        v32 += *(v6 + 184);
        v33 += *(v6 + 192);
        v31 += *(v6 + 200);
        v30 += *(v6 + 168);
        v28 += *(v6 + 280);
        v29 += *(v6 + 272);
        v26 += *(v6 + 160);
        v27 += *(v6 + 248);
        v24 += v20;
        v25 += *(v6 + 224);
        v23 += v19;
      }
    }

    v6 = *v6;
  }

  while (v6);
  if (a2)
  {
LABEL_18:
    printf("%-5s : %-55s %9llu %9llu %9llu %9llu %9llu %9llu %9llu %6.6s %4.4s %9llu %9llu %9llu %9llu %13llu %13llu %13llu %4.4s %4.4s %-17.17s %s\n", "sum", "-", v7, v35, v34, v33, v32, v31, v30, "-", "-", v29, v28, v27, v26, v25, v24, v23, "-", "-", "-", "-");
  }

LABEL_19:
  v21 = 230;
  do
  {
    putchar(45);
    --v21;
  }

  while (v21);
  putchar(10);
  sub_10000C968(&unk_1000281E8);
  printf("Total outstanding IOBMD allocation is %llu KB (%llu MB), wired portion is %llu KB (%llu MB)\n", v9 >> 10, v9 >> 20, v8 >> 10, v8 >> 20);

  free(v4);
}

void sub_10000C230(uint64_t **a1, int a2)
{
  v3 = malloc_type_calloc(1uLL, 0x80uLL, 0x8D8CD702uLL);
  printf("        %-55s %9s %9s %9s %9s %4s %7s %7s %7s %7s %7s %7s%7s %7s %7s %4s %9s %9s %11s %11s %7s %7s %7s %6s %11s %4s %4s %-8s %s\n", "", "buf", "obj", "chunk", "slab", "min", "mag", "mag", "mag", "mag", "cpu", "cpu", "wset", "depo", "depo", "depo", "slab", "slab", "slab", "slab", "slab", "slab", "slab", "slab", "buf", "hash", "hash", "cache", "backing");
  printf("ID    : %-55s %9s %9s %9s %9s %4s %7s %7s %7s %7s %7s %7s%7s %7s %7s %4s %9s %9s %11s %11s %7s %7s %7s %6s %11s %4s %4s %-8s %s\n", "cache name", "size", "size", "size", "size", "algn", "size", "resz", "purg", "reap", "rnds", "prnds", "flsh", "full", "empt", "cntn", "create", "dstroy", "alloc", "free", "fail", "part", "empt", "util %", "inuse", "rscl", "size", "modes", "region");
  v4 = 225;
  do
  {
    putchar(45);
    --v4;
  }

  while (v4);
  putchar(10);
  v5 = *a1;
  if (*a1)
  {
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v26 = 0;
    v27 = 0;
    v31 = 0;
    v32 = 0;
    v37 = 0;
    v38 = 0;
    v29 = 0;
    v30 = 0;
    v28 = 0;
    v33 = 0;
    v34 = 0;
    v35 = 0;
    v36 = 0;
    v12 = 0;
    v13 = 0;
    do
    {
      if (sub_10000C808(v5[1]))
      {
        v14 = v5[37];
        v15 = v5[38];
        v16 = v5[17];
        v17 = v5[19];
        v18 = v5[34];
        v19 = v5[35];
        if (v15 + v14)
        {
          v20 = (v18 - v19) / (v17 / v16 * (v15 + v14)) * 100.0;
        }

        else
        {
          v20 = 0.0;
        }

        v21 = v5[20];
        if (v21 <= v5[21])
        {
          v21 = v5[21];
        }

        v22 = v5[29];
        printf("c%-4u : %-55s %9llu %9llu %9llu %9llu %4llu %7d %7llu %7llu %7llu %7llu %7llu %7llu %7llu %7llu %4d %9llu %9llu %11llu %11llu %7llu %7llu %7llu %6.2f %11llu %4llu %4llu ", *(v5 + 4), v5 + 24, v5[16], v16, v5[18], v17, v21, *(v5 + 11), v5[23], v5[24], v5[25], v5[30], v5[31], v5[28], v5[26], v5[27], v22, v5[32], v5[33], v18, v19, v5[36], v14, v15, v20, v5[39], v5[40], v5[41]);
        sub_10000C888(&unk_100028318, *(v5 + 30), "%-8.8s");
        if (v3)
        {
          v23 = v5[1];
          if (v23)
          {
            snprintf(v3, 0x80uLL, "r%u", *(v23 + 52));
            printf(" %s", v3);
          }
        }

        putchar(10);
        if (a2)
        {
          v38 += v5[16];
          v13 += v5[17];
          v37 += v5[18];
          v12 += v5[19];
          v35 += v5[23];
          v36 += v5[22];
          v33 += v5[25];
          v34 += v5[24];
          v31 += v5[31];
          v32 += v5[30];
          v30 += v5[28];
          v28 += v5[27];
          v29 += v5[26];
          v26 += v5[33];
          v27 += v5[32];
          v11 += v5[34];
          v10 += v5[35];
          v9 += v5[36];
          v8 += v5[37];
          v7 += v5[38];
          v6 += v5[39];
        }
      }

      v5 = *v5;
    }

    while (v5);
  }

  else
  {
    v13 = 0;
    v36 = 0;
    v37 = 0;
    v12 = 0;
    v34 = 0;
    v35 = 0;
    v32 = 0;
    v33 = 0;
    v28 = 0;
    v29 = 0;
    v30 = 0;
    v31 = 0;
    v38 = 0;
    v26 = 0;
    v27 = 0;
    v11 = 0;
    v10 = 0;
    v9 = 0;
    v8 = 0;
    v7 = 0;
    v6 = 0;
  }

  if (a2)
  {
    if (v7 + v8)
    {
      v24 = (v11 - v10) / (v12 / v13 * (v7 + v8));
    }

    else
    {
      v24 = 0.0;
    }

    printf("%-5s : %-55s %9llu %9llu %9llu %9llu %4.4s %7llu %7llu %7llu %7llu %7llu %7llu %7llu %7llu %7llu %4.4s %9llu %9llu %11llu %11llu %7llu %7llu %7llu %6.2f %11llu %4.4s %4.4s\n", "sum", "-", v38, v13, v37, v12, "-", v36, v35, v34, v33, v32, v31, v30, v29, v28, "-", v27, v26, v11, v10, v9, v8, v7, v24, v6, "-", "-");
  }

  v25 = 225;
  do
  {
    putchar(45);
    --v25;
  }

  while (v25);
  putchar(10);
  sub_10000C968(&unk_100028318);

  free(v3);
}

BOOL sub_10000C808(uint64_t a1)
{
  v1 = (a1 + 32);
  do
  {
    v1 = *v1;
    if (!v1)
    {
      break;
    }

    if ((byte_100028620 & 1) == 0)
    {
      break;
    }

    v2 = v1[1];
    if (dword_10002861C == *(v2 + 544))
    {
      break;
    }

    v3 = 0;
    v4 = v2 + 548;
    do
    {
      v5 = v3;
      if (v3 == 7)
      {
        break;
      }

      v6 = *(v4 + 4 * v3++);
    }

    while (dword_10002861C != v6);
  }

  while (v5 > 6);
  return v1 != 0;
}

uint64_t sub_10000C870(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 264);
  v3 = *(a2 + 264);
  v4 = v2 >= v3;
  v5 = v2 > v3;
  if (v4)
  {
    return v5;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t sub_10000C888(int *a1, int a2, char *a3)
{
  v4 = *a1;
  if (*a1)
  {
    v6 = 0;
    v7 = a1 + 4;
    do
    {
      if ((v4 & a2) != 0)
      {
        v8 = *(v7 - 12);
      }

      else
      {
        v8 = 46;
      }

      v6 += snprintf(&v12[v6], 33 - v6, "%c", v8);
      v9 = *v7;
      v7 += 4;
      v4 = v9;
    }

    while (v9);
  }

  v10 = fmtcheck(a3, "%s");
  return printf(v10, v12);
}

uint64_t sub_10000C968(_DWORD *a1)
{
  if (*a1)
  {
    v1 = 0;
    v2 = (a1 + 2);
    do
    {
      v1 += snprintf(&v6[v1], 512 - v1, "%c:%s ", *(v2 - 4), *v2);
      v3 = *(v2 + 2);
      v2 += 2;
    }

    while (v3);
  }

  v4 = fmtcheck("{ %s}\n", "%s");
  return printf(v4, v6);
}

_DWORD *sub_10000CA34(_DWORD *result, int a2)
{
  v3 = result;
  v4 = qword_100028640;
  if (qword_100028640)
  {
    if (*(qword_100028640 + 8) == 1)
    {
      fputc(44, *qword_100028640);
      v4 = qword_100028640;
    }

    result = fputc(91, *v4);
    v4 = qword_100028640;
    *(qword_100028640 + 8) = 0;
  }

  v5 = *v3;
  if (*v3)
  {
    v6 = (v3 + 4);
    v7 = v4;
    v8 = v4;
    do
    {
      if ((v5 & a2) != 0 && v8)
      {
        if (*(v8 + 8) == 1)
        {
          result = fputc(44, *v8);
          v4 = qword_100028640;
          v7 = qword_100028640;
        }

        if (v7)
        {
          result = fprintf(*v7, "%s", *(v6 - 1));
          v4 = qword_100028640;
          *(qword_100028640 + 8) = 1;
          v7 = v4;
          v8 = v4;
        }

        else
        {
          v8 = 0;
        }
      }

      v9 = *v6;
      v6 += 2;
      v5 = v9;
    }

    while (v9);
  }

  if (v4)
  {
    result = fputc(93, *v4);
    *(qword_100028640 + 8) = 1;
  }

  return result;
}

char *sub_10000CB5C(uint64_t a1)
{
  memset(out, 0, 37);
  result = sub_10001087C(*(a1 + 32), __big, 0x100uLL, 1);
  if ((byte_100028608 != 1 || (result = strcasestr(__big, qword_100028600)) != 0) && (byte_100028620 != 1 || dword_10002861C == *(a1 + 32)))
  {
    if (byte_100028631 != 1 || (result = uuid_compare(a1, byte_100028621), !result))
    {
      if (byte_100028618 != 1 || (result = strcasecmp((a1 + 16), qword_100028610), !result))
      {
        if (!dword_1000285C8)
        {
          uuid_unparse_upper(a1, out);
          if (*(a1 + 32))
          {
            v4 = __big;
          }

          else
          {
            v4 = "<Closed Port Stats>";
          }

          puts(v4);
          printf("Nexus UUID: %s\n", out);
          result = printf("Netif     : %s\n", (a1 + 16));
        }

        if (dword_1000285E8)
        {
          result = puts("ip:");
          v5 = 0;
          v6 = a1 + 48;
          while (qword_1000285DC)
          {
            if (!HIDWORD(qword_1000285DC))
            {
              v8 = *(v6 + v5 * 8);
LABEL_25:
              v25 = off_100021D50[v5];
              result = printf("\t%-24s: %llu\n");
              goto LABEL_26;
            }

            v7 = fmtcheck(off_100021EA8[v5], "%llu");
            result = printf(v7, *(v6 + v5 * 8), v30, out[0], out[1], out[2], out[3], out[4]);
LABEL_26:
            if (++v5 == 42)
            {
              goto LABEL_27;
            }
          }

          if (!*(v6 + v5 * 8))
          {
            goto LABEL_26;
          }

          goto LABEL_25;
        }

LABEL_27:
        if (dword_1000285EC)
        {
          result = puts("ip6:");
          v9 = 0;
          v10 = a1 + 384;
          while (qword_1000285DC)
          {
            if (!HIDWORD(qword_1000285DC))
            {
              v12 = *(v10 + v9 * 8);
LABEL_35:
              v26 = off_100022000[v9];
              result = printf("\t%-24s: %llu\n");
              goto LABEL_36;
            }

            v11 = fmtcheck(off_100022128[v9], "%llu");
            result = printf(v11, *(v10 + v9 * 8), v30);
LABEL_36:
            if (++v9 == 36)
            {
              goto LABEL_37;
            }
          }

          if (!*(v10 + v9 * 8))
          {
            goto LABEL_36;
          }

          goto LABEL_35;
        }

LABEL_37:
        if (dword_1000285F0)
        {
          result = puts("tcp:");
          v13 = 0;
          v14 = a1 + 672;
          while (qword_1000285DC)
          {
            if (!HIDWORD(qword_1000285DC))
            {
              v16 = *(v14 + v13 * 8);
LABEL_45:
              v27 = off_100022250[v13];
              result = printf("\t%-24s: %llu\n");
              goto LABEL_46;
            }

            v15 = fmtcheck(off_100022910[v13], "%llu");
            result = printf(v15, *(v14 + v13 * 8), v30);
LABEL_46:
            if (++v13 == 215)
            {
              goto LABEL_47;
            }
          }

          if (!*(v14 + v13 * 8))
          {
            goto LABEL_46;
          }

          goto LABEL_45;
        }

LABEL_47:
        if (dword_1000285F4)
        {
          result = puts("udp:");
          v17 = 0;
          v18 = a1 + 2400;
          while (qword_1000285DC)
          {
            if (!HIDWORD(qword_1000285DC))
            {
              v20 = *(v18 + v17 * 8);
LABEL_55:
              v28 = off_100022FD0[v17];
              result = printf("\t%-24s: %llu\n");
              goto LABEL_56;
            }

            v19 = fmtcheck(off_100023088[v17], "%llu");
            result = printf(v19, *(v18 + v17 * 8), v30);
LABEL_56:
            if (++v17 == 22)
            {
              goto LABEL_57;
            }
          }

          if (!*(v18 + v17 * 8))
          {
            goto LABEL_56;
          }

          goto LABEL_55;
        }

LABEL_57:
        if (dword_1000285F8)
        {
          result = puts("quic:");
          v21 = 0;
          v22 = a1 + 2576;
          while (qword_1000285DC)
          {
            if (!HIDWORD(qword_1000285DC))
            {
              v24 = *(v22 + v21 * 8);
LABEL_65:
              v29 = off_100023140[v21];
              result = printf("\t%-24s: %llu\n");
              goto LABEL_66;
            }

            v23 = fmtcheck(off_1000233B8[v21], "%llu");
            result = printf(v23, *(v22 + v21 * 8), v30);
LABEL_66:
            if (++v21 == 78)
            {
              return result;
            }
          }

          if (!*(v22 + v21 * 8))
          {
            goto LABEL_66;
          }

          goto LABEL_65;
        }
      }
    }
  }

  return result;
}

uint64_t sub_10000CFD8(uint64_t *a1)
{
  sub_10000101C(a1);
  sub_100001298(*a1);
  v2 = *a1;

  return sub_100001448(v2);
}

uint64_t sub_10000D018(uint64_t result)
{
  if (*(result + 40) >= 1)
  {
    v1 = result;
    v2 = 0;
    do
    {
      result = sub_10000D1F8(*(*(*(v1 + 48) + 8 * v2++) + 24));
    }

    while (v2 < *(v1 + 40));
  }

  return result;
}

uint64_t sub_10000D06C(uint64_t result)
{
  if (*(result + 40) >= 1)
  {
    v1 = result;
    v2 = 0;
    while (1)
    {
      v3 = *(*(v1 + 48) + 8 * v2);
      result = sub_10000D1F8(*(v3 + 24));
      if (*(v3 + 40) >= 1)
      {
        break;
      }

LABEL_11:
      if (++v2 >= *(v1 + 40))
      {
        return result;
      }
    }

    v4 = 0;
    while (1)
    {
      v5 = *(*(*(v3 + 48) + 8 * v4) + 24);
      if (!*(v5 + 146))
      {
        break;
      }

      if (*(v5 + 146) != 4)
      {
        goto LABEL_9;
      }

      v6 = inet_ntop(2, (v5 + 152), v12, 0x10u);
      printf("\t\t %s.%d", v6, bswap32(*(v5 + 148)) >> 16);
      v7 = (v5 + 168);
      v8 = 2;
      v9 = 16;
LABEL_10:
      v11 = inet_ntop(v8, v7, v12, v9);
      result = printf(" <-> %s.%d\n", v11, bswap32(*(v5 + 150)) >> 16);
      if (++v4 >= *(v3 + 40))
      {
        goto LABEL_11;
      }
    }

    if (*(v5 + 144))
    {
      sub_100011C60();
    }

LABEL_9:
    v10 = inet_ntop(30, (v5 + 152), v12, 0x2Eu);
    printf("\t\t %s.%d", v10, bswap32(*(v5 + 148)) >> 16);
    v7 = (v5 + 168);
    v8 = 30;
    v9 = 46;
    goto LABEL_10;
  }

  return result;
}

uint64_t sub_10000D1F8(uint64_t a1)
{
  sub_10001087C(*(a1 + 20), v5, 0x100uLL, 1);
  v2 = *(a1 + 28);
  if ((*(a1 + 16) & 0x80000000) != 0)
  {
    v3 = sub_100010A54("defunct", "\x1B[31m");
  }

  else
  {
    v3 = "";
  }

  return printf("\t[%2u] %-22s%s\n", v2, v5, v3);
}

uint64_t sub_10000D2AC(uint64_t a1)
{
  printf("flowID: 0x%x\n", *(a1 + 36));
  v2 = *(a1 + 41);
  if (v2 == 2 || v2 == 30)
  {
    inet_ntop(v2, a1, v11, 0x2Eu);
    inet_ntop(*(a1 + 41), (a1 + 16), v10, 0x2Eu);
  }

  else
  {
    strcpy(v11, "unknown address family");
    memset(&v11[23], 0, 23);
    strcpy(v10, "unknown address family");
    memset(&v10[23], 0, 23);
  }

  printf("\tIP addresses: %s <-> %s\n", v11, v10);
  printf("\tIP Protocol: %d\n", *(a1 + 40));
  v4 = *(a1 + 40);
  if ((v4 - 50) < 2)
  {
    v8 = bswap32(*(a1 + 32));
    return printf("\tSPI: 0x%x\n");
  }

  else if (v4 == 17 || v4 == 6)
  {
    v5 = *(a1 + 32);
    v9 = *(a1 + 34);
    return printf("\tPorts: %d <-> %d\n");
  }

  else
  {
    v7 = *(a1 + 32);
    return printf("\tProtocol ID: 0x%x\n");
  }
}

char *sub_10000D3FC(unsigned int a1, char *__dst)
{
  if (a1 > 3)
  {
    v3 = "unknown";
  }

  else
  {
    v3 = off_100024588[a1];
  }

  return strncpy(__dst, v3, 0x10uLL);
}

uint64_t sub_10000D42C(int a1, char *const *a2)
{
  v33 = 0;
  v32 = 0uLL;
  v31 = 0uLL;
  v30 = 0;
  memcpy(__dst, &off_100024200, sizeof(__dst));
  v4 = getopt_long(a1, a2, "t:p:l:r:L:R:q:i:e:m:", __dst, 0) << 24;
  if (v4 == -16777216)
  {
LABEL_2:
    v5 = __stderrp;
    v6 = "rule type not specified\n";
LABEL_3:
    v7 = 24;
    goto LABEL_4;
  }

  v8 = 0;
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v28 = 0;
  do
  {
    v12 = v4 >> 24;
    if (v12 > 108)
    {
      if (v12 <= 112)
      {
        if (v12 == 109)
        {
          v8 = ether_aton(optarg);
          if (!v8)
          {
            fprintf(__stderrp, "invalid remote mac addr: %s\n");
            goto LABEL_75;
          }

          goto LABEL_53;
        }

        if (v12 != 112)
        {
LABEL_67:
          fprintf(__stderrp, "unknown option %s\n");
          goto LABEL_75;
        }

        v15 = optarg;
        if (!strcmp(optarg, "udp"))
        {
          v16 = 17;
        }

        else
        {
          if (strcmp(v15, "tcp"))
          {
            fprintf(__stderrp, "invalid protocol: %s\n");
            goto LABEL_75;
          }

          v16 = 6;
        }

        LODWORD(v28) = v16;
        goto LABEL_53;
      }

      switch(v12)
      {
        case 'q':
          v19 = optarg;
          __endptr[0] = 0;
          v20 = strtoull(optarg, __endptr, 0);
          if (__endptr[0] == v19 || *__endptr[0] || (v11 = v20, *__error() == 34) || !v11)
          {
            fprintf(__stderrp, "invalid qset: %s\n");
            goto LABEL_75;
          }

          break;
        case 'r':
          if (sub_10000DDA0(optarg, &v31, &v33))
          {
            fprintf(__stderrp, "invalid remote address: %s\n");
            goto LABEL_75;
          }

          break;
        case 't':
          v10 = optarg;
          if (!strcmp("inet", optarg))
          {
            if (!v10)
            {
              goto LABEL_68;
            }
          }

          else
          {
            v13 = strcmp("eth", v10);
            if (v10)
            {
              v14 = v13 == 0;
            }

            else
            {
              v14 = 0;
            }

            if (!v14)
            {
LABEL_68:
              fprintf(__stderrp, "invalid rule type: %s\n");
              goto LABEL_75;
            }
          }

          break;
        default:
          goto LABEL_67;
      }
    }

    else
    {
      if (v12 > 100)
      {
        if (v12 != 101)
        {
          if (v12 == 105)
          {
            v9 = optarg;
          }

          else
          {
            if (v12 != 108)
            {
              goto LABEL_67;
            }

            if (sub_10000DDA0(optarg, &v32, &v33 + 1))
            {
              fprintf(__stderrp, "invalid local address: %s\n");
              goto LABEL_75;
            }
          }

          goto LABEL_53;
        }

        v17 = optarg;
        if (!strcmp(optarg, "eap"))
        {
          v18 = 34958;
          goto LABEL_50;
        }

        if (!strcmp(v17, "wai"))
        {
          v18 = 34996;
LABEL_50:
          HIDWORD(v28) = v18;
          goto LABEL_53;
        }

        fprintf(__stderrp, "invalid ether type: %s\n");
LABEL_75:
        fflush(__stderrp);
        fputs("Usage: traffic-rule add [ OPTIONS ]\n\t-t, --type <typename>     Supported rule type: inet, eth\n\tThese options only apply to rule type 'inet':\n\t\t-p, --proto <protocol>    Transport Protocol: tcp, udp\n\t\t-l, --laddr <localaddr>   Local IP address: v4 or v6 address\n\t\t-r, --raddr <remoteaddr>  Remote IP address: v4 or v6 address\n\t\t-L, --lport <localport>   Local port\n\t\t-R, --rport <remoteport>  Remote port\n\tThese options only apply to rule type 'eth':\n\t\t-e, --ethertype <ether type>   Ether type: eap, wai\n\t\t-m, --rmac <remotemac>  Remote mac address\n\tThese options are common for all rules:\n\t\t-q, --qset <qset>         Queue set ID\n\t\t-i, --interface <ifname>  Interface name: e.g. en0\n", __stderrp);
        return 64;
      }

      if (v12 == 76)
      {
        if (sub_10000DE18(optarg, &v30 + 1))
        {
          fprintf(__stderrp, "invalid local port: %s\n");
          goto LABEL_75;
        }
      }

      else
      {
        if (v12 != 82)
        {
          goto LABEL_67;
        }

        if (sub_10000DE18(optarg, &v30))
        {
          fprintf(__stderrp, "invalid remote port: %s\n");
          goto LABEL_75;
        }
      }
    }

LABEL_53:
    v4 = getopt_long(a1, a2, "t:p:l:r:L:R:q:i:e:m:", __dst, 0) << 24;
  }

  while (v4 != -16777216);
  if (!v10)
  {
    goto LABEL_2;
  }

  if (!strcmp(v10, "inet"))
  {
    if (v9)
    {
      memset(__endptr + 1, 0, 47);
      v21 = BYTE4(v33);
      if (!v33)
      {
        v5 = __stderrp;
        v6 = "at least one address is needed\n";
        v7 = 31;
        goto LABEL_4;
      }

      if (HIDWORD(v33) && v33 && HIDWORD(v33) != v33)
      {
        v5 = __stderrp;
        v6 = "local and remote addresses need to be of the same type\n";
        v7 = 55;
      }

      else
      {
        if (HIDWORD(v33))
        {
          v24 = v28;
          if (HIDWORD(v33) == 2)
          {
            v21 = 4;
            BYTE1(__endptr[1]) = 4;
            LODWORD(__endptr[3]) = v32;
          }

          else
          {
            BYTE1(__endptr[1]) = 96;
            *(&__endptr[1] + 4) = v32;
            v21 = 4;
          }
        }

        else
        {
          v24 = v28;
        }

        if (v33)
        {
          if (v33 == 2)
          {
            BYTE1(__endptr[1]) = 4;
            LODWORD(__endptr[5]) = v31;
          }

          else
          {
            BYTE1(__endptr[1]) = 96;
            *(&__endptr[3] + 4) = v31;
          }

          v21 |= 8u;
        }

        if (v24)
        {
          BYTE2(__endptr[1]) = v24;
          v27 = v21 | 3;
          LOBYTE(__endptr[1]) = v21 | 3;
          if (HIWORD(v30))
          {
            WORD2(__endptr[5]) = __rev16(HIWORD(v30));
            v27 = v21 | 0x13;
            LOBYTE(__endptr[1]) = v21 | 0x13;
          }

          if (v30)
          {
            HIWORD(__endptr[5]) = __rev16(v30);
            LOBYTE(__endptr[1]) = v27 | 0x20;
          }

          LOBYTE(__endptr[0]) = 2;
          v26 = 48;
          goto LABEL_98;
        }

        v5 = __stderrp;
        v6 = "proto is required\n";
        v7 = 18;
      }

LABEL_4:
      fwrite(v6, v7, 1uLL, v5);
      goto LABEL_75;
    }

LABEL_66:
    v5 = __stderrp;
    v6 = "ifname is required\n";
    v7 = 19;
    goto LABEL_4;
  }

  if (strcmp(v10, "eth"))
  {
    v5 = __stderrp;
    v6 = "rule type not supported\n";
    goto LABEL_3;
  }

  if (!v9)
  {
    goto LABEL_66;
  }

  memset(__endptr, 0, 17);
  if (!HIDWORD(v28) && !v8)
  {
    v5 = __stderrp;
    v6 = "at least one parameter is needed\n";
    v7 = 33;
    goto LABEL_4;
  }

  if (HIDWORD(v28))
  {
    HIWORD(__endptr[1]) = WORD2(v28);
    LOBYTE(__endptr[2]) = 1;
    v23 = 3;
  }

  else
  {
    v23 = 2;
  }

  if (v8)
  {
    v25 = *v8->octet;
    WORD2(__endptr[1]) = *&v8->octet[4];
    LODWORD(__endptr[1]) = v25;
    LOBYTE(__endptr[2]) = v23;
  }

  LOBYTE(__endptr[0]) = 1;
  v26 = 17;
LABEL_98:
  WORD1(__endptr[0]) = v26;
  HIDWORD(__endptr[0]) = 3;
  if (!v11)
  {
    v5 = __stderrp;
    v6 = "qset is required\n";
    v7 = 17;
    goto LABEL_4;
  }

  return sub_10000DEA8();
}

uint64_t sub_10000DADC(int a1, char **a2)
{
  v10 = off_100024360;
  v11 = xmmword_100024380;
  v12 = unk_100024390;
  memset(uu, 0, sizeof(uu));
  while (1)
  {
    v4 = getopt_long(a1, a2, "u:", &v10, 0);
    if (v4 != 117)
    {
      break;
    }

    if (uuid_parse(optarg, uu))
    {
      fprintf(__stderrp, "invalid uuid: %s\n");
LABEL_9:
      fflush(__stderrp);
      fputs("Usage: traffic-rule remove -u <rule-uuid>\n", __stderrp);
      return 64;
    }
  }

  if (v4 != 255)
  {
    fprintf(__stderrp, "unknown option %s\n");
    goto LABEL_9;
  }

  if (uuid_is_null(uu))
  {
    fwrite("uuid must be specified\n", 0x17uLL, 1uLL, __stderrp);
    goto LABEL_9;
  }

  if (os_nexus_controller_create())
  {
    v6 = os_nexus_controller_remove_traffic_rule();
    if (v6)
    {
      v7 = __stderrp;
      strerror(v6);
      fprintf(v7, "remove traffic rule failed: %s\n");
    }

    else
    {
      os_nexus_controller_destroy();
    }
  }

  else
  {
    v8 = __error();
    v9 = __stderrp;
    strerror(*v8);
    fprintf(v9, "controller create failed: %s\n");
  }

  return 0;
}

uint64_t sub_10000DCB0(int a1)
{
  if (a1 == 1)
  {
    if (os_nexus_controller_create())
    {
      v1 = os_nexus_controller_iterate_traffic_rules();
      if (v1)
      {
        v2 = __stderrp;
        strerror(v1);
        fprintf(v2, "iterate traffic rules failed: %s\n");
      }

      else
      {
        os_nexus_controller_destroy();
      }
    }

    else
    {
      v4 = __error();
      v5 = __stderrp;
      strerror(*v4);
      fprintf(v5, "controller create failed: %s\n");
    }

    return 0;
  }

  else
  {
    fwrite("no option(s) required\n", 0x16uLL, 1uLL, __stderrp);
    fflush(__stderrp);
    fputs("Usage: traffic-rule show\n", __stderrp);
    return 64;
  }
}

uint64_t sub_10000DDA0(char *a1, void *a2, int *a3)
{
  v6 = 2;
  if (inet_pton(2, a1, a2) == 1)
  {
    result = 0;
  }

  else
  {
    v8 = inet_pton(30, a1, a2);
    if (v8 == 1)
    {
      v6 = 30;
    }

    else
    {
      v6 = 0;
    }

    if (v8 == 1)
    {
      result = 0;
    }

    else
    {
      result = 0xFFFFFFFFLL;
    }
  }

  *a3 = v6;
  return result;
}

uint64_t sub_10000DE18(char *a1, _WORD *a2)
{
  __endptr = 0;
  v4 = strtoul(optarg, &__endptr, 0);
  if (__endptr == a1 || *__endptr)
  {
    return 0xFFFFFFFFLL;
  }

  v5 = v4;
  if (*__error() == 34 || v5 == 0)
  {
    return 0xFFFFFFFFLL;
  }

  result = 0;
  *a2 = v5;
  return result;
}

uint64_t sub_10000DEA8()
{
  if (os_nexus_controller_create())
  {
    v0 = os_nexus_controller_add_traffic_rule();
    v1 = v0;
    if (v0)
    {
      v2 = __stderrp;
      strerror(v0);
      fprintf(v2, "add traffic rule failed: %s\n");
    }

    else
    {
      os_nexus_controller_destroy();
    }
  }

  else
  {
    v3 = __error();
    v1 = *v3;
    v4 = __stderrp;
    strerror(*v3);
    fprintf(v4, "controller create failed: %s\n");
  }

  return v1;
}

uint64_t sub_10000DFA0(uint64_t a1, uint64_t a2)
{
  memset(out, 0, 37);
  if (**(a2 + 24) - 1 < 2)
  {
    uuid_unparse(*a2, out);
    printf("uuid: %s\n", out);
    printf("owner process: %s\n", *(a2 + 8));
    printf("interface: %s\n", *(a2 + 16));
    v3 = *(a2 + 24);
    if (*v3 == 2)
    {
      puts("type: inet");
      v4 = *(v3 + 8);
      __str[0] = 0;
      if ((v4 & 1) == 0 || (v4 & 2) == 0)
      {
        goto LABEL_38;
      }

      v5 = *(v3 + 9);
      v6 = *(v3 + 10);
      if (v6 == 6)
      {
        v7 = "tcp";
      }

      else
      {
        if (v6 != 17)
        {
          goto LABEL_38;
        }

        v7 = "udp";
      }

      v14 = snprintf(__str, 0x100uLL, "%s", v7);
      v15 = &__str[v14];
      v16 = 256 - v14;
      if ((v4 & 4) != 0)
      {
        if (v5 == 96)
        {
          v17 = (v3 + 12);
          v18 = 30;
        }

        else
        {
          if (v5 != 4)
          {
            goto LABEL_38;
          }

          v17 = (v3 + 24);
          v18 = 2;
        }

        if (!inet_ntop(v18, v17, v27, 0x40u))
        {
          goto LABEL_38;
        }

        v19 = snprintf(v15, v16, ",%s", v27);
        v15 += v19;
        v16 -= v19;
      }

      if ((v4 & 8) == 0)
      {
LABEL_34:
        if ((v4 & 0x10) != 0)
        {
          v23 = snprintf(v15, v16, ",%d", bswap32(*(v3 + 44)) >> 16);
          v15 += v23;
          v16 -= v23;
        }

        if ((v4 & 0x20) != 0)
        {
          snprintf(v15, v16, ",%d", bswap32(*(v3 + 46)) >> 16);
        }

        goto LABEL_38;
      }

      if (v5 == 96)
      {
        v20 = (v3 + 28);
        v21 = 30;
      }

      else
      {
        if (v5 != 4)
        {
          goto LABEL_38;
        }

        v20 = (v3 + 40);
        v21 = 2;
      }

      if (inet_ntop(v21, v20, v27, 0x40u))
      {
        v22 = snprintf(v15, v16, ",%s", v27);
        v15 += v22;
        v16 -= v22;
        goto LABEL_34;
      }

LABEL_38:
      printf("tuple: %s\n");
      goto LABEL_39;
    }

    puts("type: eth");
    v8 = *(v3 + 16);
    __str[0] = 0;
    if ((v8 & 1) == 0)
    {
      v9 = __str;
      v10 = 256;
      if ((v8 & 2) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_17;
    }

    v11 = *(v3 + 14);
    if (v11 == 34958)
    {
      v12 = snprintf(__str, 0x100uLL, "eap");
    }

    else
    {
      if (v11 != 34996)
      {
        goto LABEL_18;
      }

      v12 = snprintf(__str, 0x100uLL, "wai");
    }

    v9 = &__str[v12];
    v10 = 256 - v12;
    if ((v8 & 2) != 0)
    {
LABEL_17:
      v13 = ether_ntoa((v3 + 8));
      snprintf(v9, v10, "rmacaddr %s", v13);
    }

LABEL_18:
    printf("filter: %s\n");
LABEL_39:
    printf("action: steer, qset 0x%llx\n", *(*(a2 + 32) + 4));
    putchar(10);
    return 1;
  }

  fprintf(__stderrp, "unsupported type %d detected\n", **(a2 + 24));
  return 1;
}