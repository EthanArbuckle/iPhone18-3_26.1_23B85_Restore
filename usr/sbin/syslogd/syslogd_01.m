uint64_t asl_memory_match_restricted_uuid(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, int a7, int a8, int a9, int a10, uint64_t a11)
{
  v20 = 0;
  v21 = &v20;
  v22 = 0x2000000000;
  v23 = 0;
  if (a1)
  {
    if (a3)
    {
      v11 = *(a1 + 56);
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 0x40000000;
      v14[2] = sub_10000E8BC;
      v14[3] = &unk_10001D468;
      v14[4] = &v20;
      v14[5] = a1;
      v14[6] = a2;
      v14[7] = a3;
      v14[8] = a4;
      v14[9] = a5;
      v15 = a6;
      v16 = a7;
      v17 = a8;
      v18 = a9;
      v19 = a10;
      v14[10] = a11;
      dispatch_sync(v11, v14);
      v12 = *(v21 + 6);
    }

    else
    {
      v12 = 1;
    }
  }

  else
  {
    v12 = 2;
  }

  _Block_object_dispose(&v20, 8);
  return v12;
}

uint64_t sub_10000E8BC(uint64_t a1)
{
  result = sub_10000E918(*(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 72), *(a1 + 88), *(a1 + 92), *(a1 + 96), *(a1 + 100), *(a1 + 80));
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t sub_10000E918(uint64_t a1, uint64_t a2, uint64_t *a3, void *a4, unint64_t a5, int a6, unsigned int a7, int a8, uint64_t a9, const char *a10)
{
  *&v142.tv_usec = 0;
  v143 = 0;
  *&v141.tv_usec = 0;
  v142.tv_sec = 0;
  v141.tv_sec = 0;
  v15 = asl_msg_list_count();
  v16 = v15;
  if (v15)
  {
    v17 = malloc_type_calloc(v15, 8uLL, 0x2004093837F09uLL);
    if (!v17)
    {
      return 9;
    }

    v18 = v17;
    v133 = a6;
    v135 = a7;
    v19 = malloc_type_calloc(v16, 4uLL, 0x100004052888210uLL);
    if (!v19)
    {
      free(v18);
      return 9;
    }

    v20 = v19;
    v129 = a8;
    v131 = a3;
    v21 = 0;
    v22 = 0;
    v23 = 0;
    while (1)
    {
      index = asl_msg_list_get_index();
      if (!a1)
      {
LABEL_102:
        v74 = 0x20000000;
        goto LABEL_103;
      }

      v20[v21] = 0x80000000;
      if (!index || !asl_msg_count())
      {
        goto LABEL_101;
      }

      v145 = 0;
      v146 = 0;
      v144 = 0;
      v20[v21] = 0;
      if (asl_msg_fetch() != -1)
      {
        while (v145 == 1)
        {
          if (asl_msg_fetch() == -1)
          {
            goto LABEL_11;
          }
        }

LABEL_101:
        v26 = 0;
        goto LABEL_104;
      }

LABEL_11:
      v25 = malloc_type_calloc(1uLL, 0x80uLL, 0x10A00402869003AuLL);
      if (!v25)
      {
        goto LABEL_102;
      }

      v26 = v25;
      if (asl_msg_fetch() == -1)
      {
        goto LABEL_104;
      }

      while (1)
      {
        if (!v146)
        {
          goto LABEL_99;
        }

        if (!strcmp(v146, "ASLMessageID"))
        {
          v33 = v144;
          if (v144)
          {
            v34 = v20[v21];
            if (v34)
            {
              goto LABEL_109;
            }

            v20[v21] = v34 | 1;
            *v26 = atoll(v33);
          }

          goto LABEL_99;
        }

        if (!strcmp(v146, "Time"))
        {
          if (v144)
          {
            v35 = v20[v21];
            if ((v35 & 2) != 0)
            {
              goto LABEL_109;
            }

            v20[v21] = v35 | 2;
            *(v26 + 8) = asl_core_parse_time();
          }

          goto LABEL_99;
        }

        if (!strcmp(v146, "TimeNanoSec"))
        {
          v36 = v144;
          if (v144)
          {
            v37 = v20[v21];
            if ((v37 & 4) != 0)
            {
              goto LABEL_109;
            }

            v20[v21] = v37 | 4;
            *(v26 + 88) = atoll(v36);
          }

          goto LABEL_99;
        }

        if (!strcmp(v146, "Level"))
        {
          v38 = v144;
          if (v144)
          {
            v39 = v20[v21];
            if ((v39 & 8) != 0)
            {
              goto LABEL_109;
            }

            v20[v21] = v39 | 8;
            *(v26 + 122) = atoi(v38);
          }

          goto LABEL_99;
        }

        if (!strcmp(v146, "PID"))
        {
          v40 = v144;
          if (v144)
          {
            v41 = v20[v21];
            if ((v41 & 0x10) != 0)
            {
              goto LABEL_109;
            }

            v20[v21] = v41 | 0x10;
            *(v26 + 92) = atoi(v40);
          }

          goto LABEL_99;
        }

        if (!strcmp(v146, "UID"))
        {
          v42 = v144;
          if (v144)
          {
            v43 = v20[v21];
            if ((v43 & 0x20) != 0)
            {
              goto LABEL_109;
            }

            v20[v21] = v43 | 0x20;
            *(v26 + 96) = atoi(v42);
          }

          goto LABEL_99;
        }

        if (!strcmp(v146, "GID"))
        {
          v44 = v144;
          if (v144)
          {
            v45 = v20[v21];
            if ((v45 & 0x40) != 0)
            {
              goto LABEL_109;
            }

            v20[v21] = v45 | 0x40;
            *(v26 + 100) = atoi(v44);
          }

          goto LABEL_99;
        }

        if (!strcmp(v146, "ReadUID"))
        {
          v46 = v144;
          if (v144)
          {
            v47 = v20[v21];
            if ((v47 & 0x80) != 0)
            {
              goto LABEL_109;
            }

            v20[v21] = v47 | 0x80;
            *(v26 + 104) = atoi(v46);
          }

          goto LABEL_99;
        }

        if (!strcmp(v146, "ReadGID"))
        {
          v48 = v144;
          if (v144)
          {
            v49 = v20[v21];
            if ((v49 & 0x100) != 0)
            {
              goto LABEL_109;
            }

            v20[v21] = v49 | 0x100;
            *(v26 + 108) = atoi(v48);
          }

          goto LABEL_99;
        }

        if (!strcmp(v146, "RefPID"))
        {
          v50 = v144;
          if (v144)
          {
            v51 = v20[v21];
            if ((v51 & 0x200) != 0)
            {
              goto LABEL_109;
            }

            v20[v21] = v51 | 0x200;
            *(v26 + 112) = atoi(v50);
          }

          goto LABEL_99;
        }

        if (!strcmp(v146, "Host"))
        {
          v52 = v144;
          if (v144)
          {
            v53 = v20[v21];
            if ((v53 & 0x400) != 0)
            {
              goto LABEL_109;
            }

            v20[v21] = v53 | 0x400;
            v54 = sub_10000F728(a1, v52, 0);
            *(v26 + 24) = v54;
            if (!v54)
            {
              goto LABEL_110;
            }
          }

          goto LABEL_99;
        }

        if (!strcmp(v146, "Sender"))
        {
          v55 = v144;
          if (v144)
          {
            v56 = v20[v21];
            if ((v56 & 0x800) != 0)
            {
              goto LABEL_109;
            }

            v20[v21] = v56 | 0x800;
            v57 = sub_10000F728(a1, v55, 0);
            *(v26 + 32) = v57;
            if (!v57)
            {
              goto LABEL_110;
            }
          }

          goto LABEL_99;
        }

        if (!strcmp(v146, "SenderMachUUID"))
        {
          v58 = v144;
          if (v144)
          {
            v59 = v20[v21];
            if ((v59 & 0x1000) != 0)
            {
              goto LABEL_109;
            }

            v20[v21] = v59 | 0x1000;
            *(v26 + 32) = sub_10000F728(a1, v58, 0);
            if (!*(v26 + 40))
            {
              goto LABEL_110;
            }
          }

          goto LABEL_99;
        }

        if (!strcmp(v146, "Facility"))
        {
          v60 = v144;
          if (v144)
          {
            v61 = v20[v21];
            if ((v61 & 0x2000) != 0)
            {
              goto LABEL_109;
            }

            v20[v21] = v61 | 0x2000;
            v62 = sub_10000F728(a1, v60, 0);
            *(v26 + 48) = v62;
            if (!v62)
            {
              goto LABEL_110;
            }
          }

          goto LABEL_99;
        }

        if (!strcmp(v146, "Message"))
        {
          v63 = v144;
          if (v144)
          {
            v64 = v20[v21];
            if ((v64 & 0x4000) != 0)
            {
              goto LABEL_109;
            }

            v20[v21] = v64 | 0x4000;
            v65 = sub_10000F728(a1, v63, 0);
            *(v26 + 56) = v65;
            if (!v65)
            {
              goto LABEL_110;
            }
          }

          goto LABEL_99;
        }

        if (!strcmp(v146, "RefProc"))
        {
          v66 = v144;
          if (v144)
          {
            v67 = v20[v21];
            if ((v67 & 0x8000) != 0)
            {
              goto LABEL_109;
            }

            v20[v21] = v67 | 0x8000;
            v68 = sub_10000F728(a1, v66, 0);
            *(v26 + 64) = v68;
            if (!v68)
            {
              goto LABEL_110;
            }
          }

          goto LABEL_99;
        }

        if (strcmp(v146, "Session"))
        {
          break;
        }

        v69 = v144;
        if (v144)
        {
          v70 = v20[v21];
          if ((v70 & 0x10000) != 0)
          {
            goto LABEL_109;
          }

          v20[v21] = v70 | 0x10000;
          v71 = sub_10000F728(a1, v69, 0);
          *(v26 + 72) = v71;
          if (!v71)
          {
LABEL_110:
            sub_10000E2F4(a1, v26);
            free(v26);
            v74 = 0x40000000;
            goto LABEL_103;
          }
        }

LABEL_99:
        if (asl_msg_fetch() == -1)
        {
          goto LABEL_104;
        }
      }

      v27 = sub_10000F728(a1, v146, 0);
      if (!v27)
      {
        goto LABEL_110;
      }

      v28 = v27;
      v29 = *(v26 + 116);
      if (v29)
      {
        v30 = 0;
        while (*(*(v26 + 80) + 8 * v30) != v27)
        {
          v30 += 2;
          if (v30 >= v29)
          {
            goto LABEL_36;
          }
        }

LABEL_109:
        sub_10000E2F4(a1, v26);
        free(v26);
        v74 = 0;
        goto LABEL_103;
      }

LABEL_36:
      v138 = sub_10000F728(a1, v144, 0);
      v31 = *(v26 + 116);
      if (v31)
      {
        v32 = reallocf(*(v26 + 80), 8 * (v31 + 2));
      }

      else
      {
        v32 = malloc_type_calloc(2uLL, 8uLL, 0x2004093837F09uLL);
      }

      *(v26 + 80) = v32;
      if (v32)
      {
        v72 = *(v26 + 116);
        v32[v72] = v28;
        v73 = *(v26 + 80);
        *(v26 + 116) = v72 + 2;
        *(v73 + 8 * (v72 + 1)) = v138;
        goto LABEL_99;
      }

      sub_10000E2F4(a1, v26);
      free(v26);
      v74 = 0x20000000;
LABEL_103:
      v26 = 0;
      v20[v21] = v74;
LABEL_104:
      *(v18 + v21) = v26;
      v75 = v20[v21];
      if (v75 != 0x80000000)
      {
        if (v75 == 0x20000000)
        {
          if (v23)
          {
            v115 = v23;
            v116 = v18;
            do
            {
              v117 = *v116++;
              sub_10000E2F4(a1, v117);
              free(v117);
              --v115;
            }

            while (v115);
          }

          free(v18);
          free(v20);
          return 9999;
        }

        v22 = 1;
      }

      v21 = ++v23;
      if (v16 <= v23)
      {
        v76 = v22 == 0;
        a3 = v131;
        a8 = v129;
        goto LABEL_113;
      }
    }
  }

  v133 = a6;
  v135 = a7;
  v20 = 0;
  v18 = 0;
  v76 = 1;
LABEL_113:
  v77 = *(a1 + 28);
  if (!v77)
  {
LABEL_124:
    if (v18)
    {
      if (v16)
      {
        v83 = 0;
        v84 = 1;
        do
        {
          v85 = *(v18 + v83);
          sub_10000E2F4(a1, v85);
          free(v85);
          v83 = v84;
          v86 = v16 > v84++;
        }

        while (v86);
      }

      free(v18);
      free(v20);
    }

    return 0;
  }

  v78 = 0;
  v79 = v77 - 1;
  while (1)
  {
    if (a8 < 0)
    {
      v80 = (v79 + *(a1 + 32)) % v77;
      if (**(*(a1 + 8) + 8 * v80) - 1 < a5)
      {
        break;
      }

      goto LABEL_123;
    }

    v80 = (v78 + *(a1 + 32)) % v77;
    v81 = **(*(a1 + 8) + 8 * v80);
    if (v81 && v81 >= a5)
    {
      break;
    }

LABEL_123:
    ++v78;
    if (--v79 == -1)
    {
      goto LABEL_124;
    }
  }

  v141.tv_sec = 0;
  *&v141.tv_usec = 0;
  if (v135 && !gettimeofday(&v141, 0))
  {
    v88 = v141.tv_sec + v135 / 0xF4240uLL;
    v87 = v141.tv_usec + v135 % 0xF4240;
    if (v87 > 0xF4240)
    {
      v87 -= 1000000;
      ++v88;
    }
  }

  else
  {
    v87 = 0;
    v88 = 0;
  }

  if (!*(a1 + 28))
  {
    v140 = 0;
    goto LABEL_227;
  }

  v127 = v87;
  v128 = v76;
  v136 = v88;
  v140 = 0;
  v89 = 0;
  v134 = v133 - 1;
  v90 = v80;
LABEL_134:
  v91 = v90;
  v92 = *(*(a1 + 8) + 8 * v90);
  if (!*v92)
  {
    goto LABEL_210;
  }

  v93 = *(v92 + 104);
  v94 = *(v92 + 108);
  v95 = *(v92 + 120);
  v96 = asl_core_check_access();
  if (!a10 || v96)
  {
    if (v96)
    {
      goto LABEL_210;
    }

    v97 = *(*(a1 + 8) + 8 * v91);
  }

  else
  {
    v97 = *(*(a1 + 8) + 8 * v91);
    v98 = *(v97 + 40);
    if (!v98 || strcmp(*(v98 + 8), a10))
    {
      goto LABEL_210;
    }
  }

  v99 = *(v97 + 120) & 0x7FFF;
  *(v97 + 120) = v99;
  *a4 = *v97;
  if (!v128)
  {
    if (!v16)
    {
      goto LABEL_205;
    }

    v130 = a8;
    v132 = a3;
    v100 = 0;
    v101 = 0;
    while (1)
    {
      v102 = v20[v100];
      if (v102)
      {
        if (v102 != 0x40000000)
        {
          if (v102 == 0x80000000)
          {
            goto LABEL_203;
          }

          v103 = *(*(a1 + 8) + 8 * v91);
          if (v103)
          {
            v104 = *(v18 + v100);
            if (!v104)
            {
              goto LABEL_203;
            }

            if (((v102 & 1) == 0 || *v104 == *v103) && ((v102 & 2) == 0 || *(v104 + 8) == *(v103 + 8)) && ((v102 & 4) == 0 || *(v104 + 88) == *(v103 + 88)) && ((v102 & 8) == 0 || *(v104 + 122) == *(v103 + 122)) && ((v102 & 0x10) == 0 || *(v104 + 92) == *(v103 + 92)) && ((v102 & 0x20) == 0 || *(v104 + 96) == *(v103 + 96)) && ((v102 & 0x40) == 0 || *(v104 + 100) == *(v103 + 100)) && ((v102 & 0x80) == 0 || *(v104 + 104) == *(v103 + 104)) && ((v102 & 0x100) == 0 || *(v104 + 108) == *(v103 + 108)) && ((v102 & 0x200) == 0 || *(v104 + 112) == *(v103 + 112)) && ((v102 & 0x400) == 0 || *(v104 + 24) == *(v103 + 24)) && ((v102 & 0x800) == 0 || *(v104 + 32) == *(v103 + 32)) && ((v102 & 0x1000) == 0 || *(v104 + 40) == *(v103 + 40)) && ((v102 & 0x2000) == 0 || *(v104 + 48) == *(v103 + 48)) && ((v102 & 0x4000) == 0 || *(v104 + 56) == *(v103 + 56)) && ((v102 & 0x8000) == 0 || *(v104 + 64) == *(v103 + 64)) && ((v102 & 0x10000) == 0 || *(v104 + 72) == *(v103 + 72)))
            {
              v105 = *(v104 + 116);
              if (!v105)
              {
                goto LABEL_203;
              }

              v106 = *(v103 + 116);
              if (v106)
              {
                v107 = 0;
                v108 = *(v104 + 80);
                v109 = *(v103 + 80);
                while (1)
                {
                  v110 = 1;
                  while (*(v108 + 8 * v107) != *(v109 + 8 * (v110 - 1)))
                  {
                    v111 = 0;
                    v112 = v110 + 1;
                    v110 += 2;
                    if (v112 >= v106)
                    {
                      goto LABEL_196;
                    }
                  }

                  if (*(v108 + 8 * (v107 | 1)) != *(v109 + 8 * v110))
                  {
                    break;
                  }

                  v107 += 2;
                  if (v107 >= v105)
                  {
                    goto LABEL_203;
                  }
                }
              }
            }
          }
        }
      }

      else
      {
        v113 = *(*(a1 + 8) + 8 * v91);
        asl_msg_list_get_index();
        v146 = 0;
        if (!sub_10000E3C4(a1, v113, &v146))
        {
          v111 = asl_msg_cmp() != 0;
          asl_msg_release();
          goto LABEL_196;
        }
      }

      v111 = 0;
LABEL_196:
      v100 = (v101 + 1);
      v114 = v16 > v100 && !v111;
      ++v101;
      if (!v114)
      {
        if (v111)
        {
LABEL_203:
          v97 = *(*(a1 + 8) + 8 * v91);
          v99 = *(v97 + 120);
          a3 = v132;
          a8 = v130;
          break;
        }

        a3 = v132;
        a8 = v130;
LABEL_205:
        if (v136 && !gettimeofday(&v142, 0) && (v142.tv_sec > v136 || v142.tv_sec == v136 && v142.tv_usec > v127))
        {
          goto LABEL_227;
        }

LABEL_210:
        if (a8 < 0)
        {
          if (v91)
          {
            v90 = v91 - 1;
          }

          else
          {
            v90 = *(a1 + 28) - 1;
          }
        }

        else if ((v91 + 1) < *(a1 + 28))
        {
          v90 = v91 + 1;
        }

        else
        {
          v90 = 0;
        }

        if (v90 == *(a1 + 32))
        {
          goto LABEL_227;
        }

        if (++v89 >= *(a1 + 28))
        {
          goto LABEL_227;
        }

        goto LABEL_134;
      }
    }
  }

  *(v97 + 120) = v99 | 0x8000;
  if (v134 >= ++v140)
  {
    goto LABEL_205;
  }

LABEL_227:
  if (v18)
  {
    if (v16)
    {
      v119 = 0;
      v120 = 1;
      do
      {
        v121 = *(v18 + v119);
        sub_10000E2F4(a1, v121);
        free(v121);
        v119 = v120;
        v86 = v16 > v120++;
      }

      while (v86);
    }

    free(v18);
    free(v20);
  }

  *a3 = 0;
  if (!v140)
  {
    return 0;
  }

  v122 = asl_msg_list_new();
  *a3 = v122;
  if (v122)
  {
    while (1)
    {
      v123 = *(*(a1 + 8) + 8 * v80);
      v124 = *(v123 + 120);
      if (v124 < 0)
      {
        *(v123 + 120) = v124 & 0x7FFF;
        v118 = sub_10000E3C4(a1, v123, &v143);
        v125 = *a3;
        if (v118)
        {
          asl_msg_list_release();
          *a3 = 0;
          return v118;
        }

        asl_msg_list_append();
        asl_msg_release();
        if (v140 == 1)
        {
          return 0;
        }
      }

      if (a8 < 0)
      {
        if (v80)
        {
          --v80;
        }

        else
        {
          v80 = *(a1 + 28) - 1;
        }
      }

      else if (v80 + 1 < *(a1 + 28))
      {
        ++v80;
      }

      else
      {
        v80 = 0;
      }

      if (v80 == *(a1 + 32))
      {
        return 0;
      }
    }
  }

  return 9;
}

uint64_t sub_10000F728(uint64_t a1, char *__s, int a3)
{
  if (!__s)
  {
    return 0;
  }

  v6 = strlen(__s);
  v7 = asl_core_string_hash();
  v8 = sub_10000F8D8(a1, v7);
  if (v8 < *(a1 + 24))
  {
    v9 = *a1;
    while (1)
    {
      v10 = v9[v8];
      if (*v10 != v7)
      {
        break;
      }

      if (!strcmp(__s, *(v10 + 8)))
      {
        ++*(v10 + 4);
        return v10;
      }

      ++v8;
    }
  }

  if (!a3)
  {
    return 0;
  }

  v11 = malloc_type_calloc(1uLL, 0x10uLL, 0x1010040466105CCuLL);
  if (!v11)
  {
    return 0;
  }

  v12 = v11;
  *v11 = v7;
  v11[1] = 1;
  v13 = malloc_type_malloc(v6 + 1, 0xC1BF310BuLL);
  v12[1] = v13;
  if (!v13)
  {
LABEL_17:
    free(v12);
    return 0;
  }

  memcpy(v13, __s, v6);
  *(v12[1] + v6) = 0;
  v14 = reallocf(*a1, 8 * (*(a1 + 24) + 1));
  *a1 = v14;
  if (!v14)
  {
    *(a1 + 24) = 0;
    goto LABEL_17;
  }

  v15 = *(a1 + 24);
  if (v15 <= v8)
  {
    v16 = v8;
  }

  else
  {
    v16 = v8;
    v17 = *(a1 + 24);
    do
    {
      *(*a1 + 8 * v17) = *(*a1 + 8 * v17 - 8);
      --v17;
    }

    while (v17 > v8);
    v14 = *a1;
  }

  v19 = v6 + *(a1 + 48) + 17;
  v14[v16] = v12;
  *(a1 + 48) = v19;
  *(a1 + 24) = v15 + 1;
  return *(*a1 + 8 * v16);
}

uint64_t sub_10000F8D8(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 24);
  if (!v2)
  {
    return *(a1 + 24);
  }

  v3 = v2 - 1;
  if (v2 == 1)
  {
    return ***a1 <= a2;
  }

  v5 = *a1;
  if (v3 < 2)
  {
    result = 0;
    v3 = 1;
LABEL_14:
    if (*v5[result] < a2)
    {
      if (*v5[v3] >= a2)
      {
        return v3;
      }

      else
      {
        return v2;
      }
    }
  }

  else
  {
    LODWORD(result) = 0;
    v6 = v3 >> 1;
    while (1)
    {
      v7 = *v5[v6];
      if (v7 == a2)
      {
        break;
      }

      if (v7 <= a2)
      {
        result = v6;
      }

      else
      {
        v3 = v6;
        result = result;
      }

      v6 = result + ((v3 - result) >> 1);
      if (v3 - result <= 1)
      {
        goto LABEL_14;
      }
    }

    LODWORD(result) = v6 + 1;
    v8 = v5 - 1;
    for (i = v6; i * 8; --i)
    {
      v10 = *v8[i];
      result = (result - 1);
      if (v10 != a2)
      {
        return result;
      }
    }

    return 0;
  }

  return result;
}

void sub_10000F9A8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v4 = *(a2 + 4);
    if (!v4 || (v5 = v4 - 1, (*(a2 + 4) = v5) == 0))
    {
      v6 = *a2;
      v7 = sub_10000F8D8(a1, *a2);
      if (**(*a1 + 8 * v7) == v6)
      {
        v8 = v7 + 1;
        while (1)
        {
          v9 = *(*a1 + 8 * v7);
          if (v9 == a2)
          {
            break;
          }

          if (*v9 == v6)
          {
            ++v7;
            ++v8;
            if (v7 < *(a1 + 24))
            {
              continue;
            }
          }

          return;
        }

        v10 = *(a1 + 24);
        if (v8 < v10)
        {
          do
          {
            *(*a1 + 8 * v7++) = *(*a1 + 8 * v8++);
          }

          while (v8 < v10);
        }

        v11 = *(a2 + 8);
        if (v11)
        {
          v12 = *(a1 + 48) - strlen(*(a2 + 8)) - 17;
        }

        else
        {
          v12 = *(a1 + 48) - 16;
        }

        *(a1 + 48) = v12;
        free(v11);
        free(a2);
        v13 = *a1;
        v14 = *(a1 + 24) - 1;
        *(a1 + 24) = v14;
        if (v14)
        {
          v15 = reallocf(v13, 8 * v14);
          *a1 = v15;
          if (!v15)
          {
            *(a1 + 24) = 0;
          }
        }

        else
        {
          free(v13);
          *a1 = 0;
        }
      }
    }
  }
}

xpc_object_t xpc_object_to_asl_msg(xpc_object_t object)
{
  v1 = object;
  v4 = 0;
  v5 = &v4;
  v6 = 0x2000000000;
  v7 = 0;
  if (object)
  {
    if (xpc_get_type(object) == &_xpc_type_dictionary)
    {
      v5[3] = asl_msg_new();
      applier[0] = _NSConcreteStackBlock;
      applier[1] = 0x40000000;
      applier[2] = sub_10000FBC4;
      applier[3] = &unk_10001D490;
      applier[4] = &v4;
      xpc_dictionary_apply(v1, applier);
      v1 = v5[3];
    }

    else
    {
      v1 = 0;
    }
  }

  _Block_object_dispose(&v4, 8);
  return v1;
}

uint64_t sub_10000FBC4(uint64_t a1, int a2, xpc_object_t object)
{
  if (xpc_get_type(object) == &_xpc_type_null)
  {
    v6 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    if (xpc_get_type(object) != &_xpc_type_BOOL)
    {
      if (xpc_get_type(object) == &_xpc_type_int64)
      {
        xpc_int64_get_value(object);
      }

      else
      {
        if (xpc_get_type(object) == &_xpc_type_uint64)
        {
          xpc_uint64_get_value(object);
          snprintf(__str, 0x40uLL, "%llu");
          goto LABEL_22;
        }

        if (xpc_get_type(object) == &_xpc_type_double)
        {
          xpc_double_get_value(object);
          snprintf(__str, 0x40uLL, "%f");
          goto LABEL_22;
        }

        if (xpc_get_type(object) != &_xpc_type_date)
        {
          if (xpc_get_type(object) == &_xpc_type_data)
          {
            xpc_data_get_length(object);
            xpc_data_get_bytes_ptr(object);
            v10 = asl_core_encode_buffer();
            v11 = *(*(*(a1 + 32) + 8) + 24);
            asl_msg_set_key_val_op();
            free(v10);
            return 1;
          }

          if (xpc_get_type(object) == &_xpc_type_string)
          {
            v12 = *(*(*(a1 + 32) + 8) + 24);
            xpc_string_get_string_ptr(object);
            goto LABEL_23;
          }

          if (xpc_get_type(object) != &_xpc_type_uuid)
          {
            if (xpc_get_type(object) == &_xpc_type_fd)
            {
              v14 = *(*(*(a1 + 32) + 8) + 24);
            }

            else if (xpc_get_type(object) == &_xpc_type_shmem)
            {
              v15 = *(*(*(a1 + 32) + 8) + 24);
            }

            else if (xpc_get_type(object) == &_xpc_type_array)
            {
              v16 = *(*(*(a1 + 32) + 8) + 24);
            }

            else
            {
              if (xpc_get_type(object) != &_xpc_type_dictionary)
              {
                xpc_get_type(object);
              }

              v5 = *(*(*(a1 + 32) + 8) + 24);
            }

            goto LABEL_23;
          }

          *__str = 0u;
          memset(v18, 0, sizeof(v18));
          bytes = xpc_uuid_get_bytes(object);
          uuid_unparse(bytes, __str);
          goto LABEL_22;
        }

        xpc_date_get_value(object);
      }

      snprintf(__str, 0x40uLL, "%lld");
LABEL_22:
      v8 = *(*(*(a1 + 32) + 8) + 24);
      goto LABEL_23;
    }

    xpc_BOOL_get_value(object);
    v7 = *(*(*(a1 + 32) + 8) + 24);
  }

LABEL_23:
  asl_msg_set_key_val_op();
  return 1;
}

xpc_object_t configuration_profile_to_asl_msg()
{
  v0 = configuration_profile_copy_property_list();
  v1 = xpc_object_to_asl_msg(v0);
  if (v0)
  {
    xpc_release(v0);
  }

  return v1;
}

char *explode(char *a1, char *__s)
{
  if (!a1)
  {
    return 0;
  }

  v2 = a1;
  LOBYTE(v3) = *a1;
  if (!*a1)
  {
    return 0;
  }

  v5 = 0;
  v6 = 0;
  do
  {
    v7 = 0;
    while (1)
    {
      if (v5)
      {
        if (v3 == v5)
        {
          v5 = 0;
        }

        goto LABEL_16;
      }

      if (strchr(__s, v3))
      {
        break;
      }

      if (v3 == 34)
      {
        v8 = 34;
      }

      else
      {
        v8 = 0;
      }

      if (v3 == 39)
      {
        v5 = 39;
      }

      else
      {
        v5 = v8;
      }

LABEL_16:
      v9 = v7 + 1;
      v3 = v2[++v7];
      if (!v3)
      {
        v10 = v9;
        v7 = v9;
        goto LABEL_19;
      }
    }

    v5 = 0;
    v10 = v7;
LABEL_19:
    v11 = malloc_type_malloc(v10 + 1, 0x8E23C081uLL);
    if (!v11)
    {
      return 0;
    }

    v12 = v11;
    if (v10)
    {
      v13 = v10;
      v14 = v2;
      v15 = v11;
      do
      {
        v16 = *v14++;
        *v15++ = v16;
        --v13;
      }

      while (v13);
    }

    v11[v7] = 0;
    v6 = sub_1000100E8(v11, v6);
    free(v12);
    v17 = &v2[v10];
    if (!v2[v10])
    {
      break;
    }

    v3 = v2[v10 + 1];
    if (!v2[v10 + 1])
    {
      v6 = sub_1000100E8(&unk_100015555, v6);
      v3 = v17[1];
    }

    v2 = v17 + 1;
  }

  while (v3);
  return v6;
}

void *sub_1000100E8(const char *a1, char *__ptr)
{
  v2 = __ptr;
  if (a1)
  {
    if (!__ptr)
    {
      v2 = malloc_type_malloc(0x10uLL, 0x10040436913F5uLL);
      if (!v2)
      {
        return v2;
      }

      v7 = strdup(a1);
      *v2 = v7;
      if (v7)
      {
        v2[1] = 0;
        return v2;
      }

      goto LABEL_11;
    }

    v4 = 0;
    do
    {
      v5 = *&__ptr[v4 * 8];
      ++v4;
    }

    while (v5);
    v2 = reallocf(__ptr, (v4 * 8 + 8) & 0x7FFFFFFF8);
    if (v2)
    {
      v6 = strdup(a1);
      v2[v4 - 1] = v6;
      if (v6)
      {
        v2[v4] = 0;
        return v2;
      }

LABEL_11:
      free(v2);
      return 0;
    }
  }

  return v2;
}

void free_string_list(void **a1)
{
  if (a1)
  {
    v2 = *a1;
    if (v2)
    {
      v3 = a1 + 1;
      do
      {
        free(v2);
        v4 = *v3++;
        v2 = v4;
      }

      while (v4);
    }

    free(a1);
  }
}

char *get_line_from_file(FILE *a1)
{
  __n = 0;
  v1 = fgetln(a1, &__n);
  if (!v1 || !__n)
  {
    return 0;
  }

  v2 = v1;
  v3 = malloc_type_malloc(__n + 1, 0x5B0D4C84uLL);
  v4 = v3;
  if (v3)
  {
    memcpy(v3, v2, __n);
    v5 = &v4[__n];
    if (v4[__n - 1] != 10)
    {
      ++v5;
    }

    *(v5 - 1) = 0;
  }

  return v4;
}

_BYTE *next_word_from_string(unsigned __int8 **a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = *a1;
  if (!*a1)
  {
    return 0;
  }

  v3 = v1 + 1;
  v2 = *v1;
  v4 = v2 == 39;
  if (v2 != 39)
  {
    v3 = *a1;
  }

  v5 = *v3;
  v6 = v5 == 34;
  v7 = v5 == 34 ? v3 + 1 : v3;
  v8 = v5 == 34 ? v4 + 1 : v2 == 39;
  v9 = -v1 - v8;
  v10 = v7;
  while (1)
  {
    v11 = (~v7 << 32) + (v10 << 32);
    for (i = v9 + v10++; ; i += 2)
    {
      v13 = *(v10 - 1);
      if (v13 != 92)
      {
        break;
      }

      if (!*v10)
      {
        goto LABEL_30;
      }

      v10 += 2;
      v11 += 0x200000000;
    }

    if (!*(v10 - 1))
    {
      break;
    }

    if (v13 == 39)
    {
      v4 = !v4;
    }

    else
    {
      if (v13 == 34)
      {
        v14 = !v6;
      }

      else
      {
        v14 = v6;
      }

      if (v13 == 32)
      {
        v15 = v4 || v6;
        v6 = v14;
        if (!v15)
        {
          goto LABEL_30;
        }
      }

      else
      {
        v6 = v14;
        if (v13 == 9)
        {
          v6 = v14;
          if (!v4)
          {
            v6 = v14;
            if (!v14)
            {
              goto LABEL_30;
            }
          }
        }
      }
    }
  }

  --v10;
LABEL_30:
  *a1 = v10;
  if (v2 == 34 || v2 == 39)
  {
    i -= v2 == v7[v11 >> 32];
  }

  if (!i)
  {
    return 0;
  }

  v16 = malloc_type_malloc(i + 1, 0x2B8FC190uLL);
  v17 = v16;
  if (v16)
  {
    memcpy(v16, v7, i);
    v17[i] = 0;
  }

  return v17;
}

uint64_t asl_out_dest_for_path(uint64_t a1, char *__s2)
{
  v2 = 0;
  if (a1 && __s2)
  {
    v4 = a1;
    while (1)
    {
      v5 = *(v4 + 16);
      if (v5)
      {
        break;
      }

LABEL_10:
      v4 = *(v4 + 24);
      if (!v4)
      {
        return 0;
      }
    }

    while (1)
    {
      if (*(v5 + 8) == 2)
      {
        v2 = *(v5 + 24);
        if (v2)
        {
          v6 = *(v2 + 8);
          if (v6)
          {
            if (!strcmp(v6, __s2))
            {
              break;
            }
          }
        }
      }

      v5 = *(v5 + 40);
      if (!v5)
      {
        goto LABEL_10;
      }
    }
  }

  return v2;
}

uint64_t asl_out_mkpath(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0xFFFFFFFFLL;
  }

  v3 = *(a2 + 24);
  if (!v3)
  {
    return 0xFFFFFFFFLL;
  }

  v4 = *(v3 + 8);
  if (!v4)
  {
    return 0xFFFFFFFFLL;
  }

  snprintf(__str, 0x400uLL, "%s", v4);
  if (*(a2 + 8) != 13)
  {
    v6 = strrchr(__str, 47);
    if (!v6)
    {
      return 0xFFFFFFFFLL;
    }

    *v6 = 0;
  }

  memset(&v22, 0, sizeof(v22));
  if (stat(__str, &v22))
  {
    if (*__error() != 2)
    {
      return 0xFFFFFFFFLL;
    }

    v7 = *(*(a2 + 24) + 72);
    result = explode(__str, "/");
    if (result)
    {
      v9 = result;
      asl_string_new();
      if (v9[__str[0] == 47])
      {
        v10 = &v9[(__str[0] == 47) + 1];
        while (1)
        {
          memset(&v23, 0, sizeof(v23));
          asl_string_append_char_no_encoding();
          v11 = *(v10 - 1);
          asl_string_append_no_encoding();
          v12 = asl_string_bytes();
          memset(&v23, 0, sizeof(v23));
          if (lstat(v12, &v23))
          {
            break;
          }

          v18 = v23.st_mode & 0xF000;
          if (v18 == 40960)
          {
            if (!realpath_DARWIN_EXTSN(v12, v25))
            {
              goto LABEL_39;
            }

            memset(&v23, 0, sizeof(v23));
            if (stat(v25, &v23))
            {
              break;
            }

            v18 = v23.st_mode & 0xF000;
          }

          if (v18 != 0x4000)
          {
            goto LABEL_39;
          }

LABEL_34:
          if (!*v10++)
          {
            goto LABEL_35;
          }
        }

        if (*__error() != 2 || (v13 = asl_out_dest_for_path(a1, v12), v14 = v13, (v7 & 0x20) != 0) && !v13)
        {
LABEL_39:
          asl_string_release();
          free_string_list(v9);
          return 0xFFFFFFFFLL;
        }

        if (v13)
        {
          if (*(v13 + 116) == 4096)
          {
            v15 = 493;
          }

          else
          {
            v15 = *(v13 + 116);
          }

          v16 = umask(0);
          mkdir(v12, v15);
          umask(v16);
          if (*(v14 + 128))
          {
            v17 = **(v14 + 120);
          }

          else
          {
            v17 = 0;
          }

          if (*(v14 + 144))
          {
            v20 = **(v14 + 136);
LABEL_33:
            chown(v12, v17, v20);
            goto LABEL_34;
          }
        }

        else
        {
          v19 = umask(0);
          mkdir(v12, 0x1EDu);
          umask(v19);
          v17 = 0;
        }

        v20 = 80;
        goto LABEL_33;
      }

LABEL_35:
      asl_string_release();
      free_string_list(v9);
      return 0;
    }
  }

  else if ((v22.st_mode & 0xF000) == 0x4000)
  {
    return 0;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }

  return result;
}

time_t asl_make_timestamp(time_t result, char a2, char *__str, size_t __size)
{
  v38 = result;
  if (__str)
  {
    if ((a2 & 4) != 0)
    {
      memset(&v37, 0, sizeof(v37));
      gmtime_r(&v38, &v37);
      return snprintf(__str, __size, "%d-%02d-%02dT%02d:%02d:%02dZ", (v37.tm_year + 1900));
    }

    if ((a2 & 8) != 0)
    {
      memset(&v37, 0, sizeof(v37));
      gmtime_r(&v38, &v37);
      return snprintf(__str, __size, "%d%02d%02dT%02d%02d%02dZ", (v37.tm_year + 1900));
    }

    if ((a2 & 0x10) != 0)
    {
      memset(&v37, 0, sizeof(v37));
      localtime_r(&v38, &v37);
      LODWORD(v6) = v37.tm_gmtoff;
      if (v37.tm_gmtoff < 0)
      {
        v6 = -v37.tm_gmtoff;
        v37.tm_gmtoff = -v37.tm_gmtoff;
        v7 = 45;
      }

      else
      {
        v7 = 43;
      }

      v10 = v6 / 0xE10uLL;
      v11 = v6 % 0xE10;
      v12 = v6 % 0xE10;
      v13 = v12 / 0x3Cu;
      v14 = v12 % 0x3Cu;
      v15 = (v37.tm_year + 1900);
      v16 = (v37.tm_mon + 1);
      tm_hour = v37.tm_hour;
      tm_mday = v37.tm_mday;
      if (v12 % 0x3Cu)
      {
        v32 = v7;
        v34 = v10;
        tm_min = v37.tm_min;
        tm_sec = v37.tm_sec;
        v26 = v37.tm_mday;
        v27 = v37.tm_hour;
        v24 = (v37.tm_year + 1900);
        v25 = (v37.tm_mon + 1);
        v19 = "%d-%02d-%02dT%02d:%02d:%02d%c%u:%02u:%02u";
        return snprintf(__str, __size, v19, v24, v25, v26, v27, tm_min, tm_sec, v32, v34, v13, v14);
      }

      if (v11 >= 0x3C)
      {
        v35 = v10;
        v36 = v12 / 0x3Cu;
        v31 = v37.tm_sec;
        v33 = v7;
        v29 = v37.tm_min;
        v20 = "%d-%02d-%02dT%02d:%02d:%02d%c%u:%02u";
      }

      else
      {
        v33 = v7;
        v35 = v10;
        v29 = v37.tm_min;
        v31 = v37.tm_sec;
        v20 = "%d-%02d-%02dT%02d:%02d:%02d%c%u";
      }
    }

    else
    {
      if ((a2 & 0x20) == 0)
      {
        return snprintf(__str, __size, "%c%llu");
      }

      memset(&v37, 0, sizeof(v37));
      localtime_r(&v38, &v37);
      LODWORD(v8) = v37.tm_gmtoff;
      if (v37.tm_gmtoff < 0)
      {
        v8 = -v37.tm_gmtoff;
        v37.tm_gmtoff = -v37.tm_gmtoff;
        v9 = 45;
      }

      else
      {
        v9 = 43;
      }

      v21 = v8 / 0xE10uLL;
      v22 = v8 % 0xE10;
      v23 = v8 % 0xE10;
      v13 = v23 / 0x3Cu;
      v14 = v23 % 0x3Cu;
      v15 = (v37.tm_year + 1900);
      v16 = (v37.tm_mon + 1);
      tm_hour = v37.tm_hour;
      tm_mday = v37.tm_mday;
      if (v23 % 0x3Cu)
      {
        v32 = v9;
        v34 = v21;
        tm_min = v37.tm_min;
        tm_sec = v37.tm_sec;
        v26 = v37.tm_mday;
        v27 = v37.tm_hour;
        v24 = (v37.tm_year + 1900);
        v25 = (v37.tm_mon + 1);
        v19 = "%d%02d%02dT%02d%02d%02d%c%02u%02u%02u";
        return snprintf(__str, __size, v19, v24, v25, v26, v27, tm_min, tm_sec, v32, v34, v13, v14);
      }

      if (v22 >= 0x3C)
      {
        v35 = v21;
        v36 = v23 / 0x3Cu;
        v31 = v37.tm_sec;
        v33 = v9;
        v29 = v37.tm_min;
        v20 = "%d%02d%02dT%02d%02d%02d%c%02u%02u";
      }

      else
      {
        v33 = v9;
        v35 = v21;
        v29 = v37.tm_min;
        v31 = v37.tm_sec;
        v20 = "%d%02d%02dT%02d%02d%02d%c%02u";
      }
    }

    return snprintf(__str, __size, v20, v15, v16, tm_mday, tm_hour, v29, v31, v33, v35, v36);
  }

  return result;
}

uint64_t asl_dst_make_current_name(uint64_t result, int a2, char *a3, size_t a4)
{
  if (result && a3)
  {
    v6 = result;
    v7 = *(result + 72) | a2;
    v8 = *(result + 176);
    if (!v8)
    {
      v8 = time(0);
      *(v6 + 176) = v8;
    }

    asl_make_timestamp(v8, *(v6 + 64), __str, 0x20uLL);
    if ((v7 & 0x2000) != 0)
    {
      v10 = *(v6 + 16);
    }

    else
    {
      if ((v7 & 0x100) == 0)
      {
        v9 = *(v6 + 8);
        return snprintf(a3, a4, "%s");
      }

      if (*v6 && (*(v6 + 67) & 0x40) != 0)
      {
        v13 = *(v6 + 48);
        v12 = *(v6 + 40);
        return snprintf(a3, a4, "%s/%s.%s.%s");
      }

      v11 = *(v6 + 8);
    }

    return snprintf(a3, a4, "%s.%s");
  }

  return result;
}

uint64_t asl_check_option(uint64_t a1, char *__s)
{
  v2 = 0;
  if (a1 && __s)
  {
    v4 = strlen(__s);
    v5 = v4;
    if (!v4)
    {
      return 0;
    }

    val_for_key = asl_msg_get_val_for_key();
    if (!val_for_key)
    {
      return 0;
    }

    v7 = val_for_key;
    v2 = *val_for_key;
    if (*val_for_key)
    {
      while (1)
      {
LABEL_6:
        if (v2 <= 31)
        {
          if (v2 != 9)
          {
            if (!v2)
            {
              return v2;
            }

LABEL_13:
            if (strncasecmp(v7, __s, v5) || ((v7 += v5, v2 = *v7, v2 <= 0x2C) ? (v9 = ((1 << v2) & 0x100100000201) == 0) : (v9 = 1), v9))
            {
              while (1)
              {
                if (v2 > 31)
                {
                  if (v2 == 32 || v2 == 44)
                  {
                    goto LABEL_6;
                  }
                }

                else
                {
                  if (!v2)
                  {
                    return v2;
                  }

                  if (v2 == 9)
                  {
                    goto LABEL_6;
                  }
                }

                v10 = *++v7;
                v2 = v10;
              }
            }

            return 1;
          }
        }

        else if (v2 != 44 && v2 != 32)
        {
          goto LABEL_13;
        }

        v8 = *++v7;
        v2 = v8;
      }
    }
  }

  return v2;
}

void asl_out_dst_data_release(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 168);
    if (!v2 || (v3 = v2 - 1, (*(a1 + 168) = v3) == 0))
    {
      free(*a1);
      free(*(a1 + 8));
      free(*(a1 + 16));
      free(*(a1 + 40));
      free(*(a1 + 48));
      free(*(a1 + 32));
      free(*(a1 + 24));
      free(*(a1 + 120));
      free(*(a1 + 136));

      free(a1);
    }
  }
}

uint64_t asl_out_dst_data_retain(uint64_t result)
{
  if (result)
  {
    ++*(result + 168);
  }

  return result;
}

uint64_t asl_out_dst_set_access(uint64_t a1, uint64_t a2)
{
  result = 0xFFFFFFFFLL;
  if ((a1 & 0x80000000) == 0 && a2)
  {
    v4 = *(a2 + 128);
    if (v4)
    {
      v4 = **(a2 + 120);
    }

    if (*(a2 + 144))
    {
      v5 = **(a2 + 136);
    }

    else
    {
      v5 = 80;
    }

    fchown(a1, v4, v5);
    return a1;
  }

  return result;
}

uint64_t asl_out_dst_file_create_open(uint64_t a1, char **a2)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  if (!*(a1 + 8))
  {
    return 0xFFFFFFFFLL;
  }

  asl_dst_make_current_name(a1, 0, __s1, 0x400uLL);
  free(*(a1 + 16));
  v4 = strdup(__s1);
  *(a1 + 16) = v4;
  if (!v4)
  {
    return 0xFFFFFFFFLL;
  }

  if (a2)
  {
    *a2 = strdup(__s1);
  }

  memset(&v10, 0, sizeof(v10));
  if (!stat(__s1, &v10))
  {
    if ((v10.st_mode & 0xF000) == 0x8000)
    {
      v7 = open(__s1, 2058, 0);
      if (!*(a1 + 176))
      {
        tv_sec = v10.st_birthtimespec.tv_sec;
        *(a1 + 176) = v10.st_birthtimespec.tv_sec;
        if (!tv_sec)
        {
          *(a1 + 176) = v10.st_mtimespec.tv_sec;
        }
      }

      *(a1 + 184) = v10.st_size;
      if ((~*(a1 + 72) & 0x300) == 0)
      {
        goto LABEL_18;
      }

      return v7;
    }

    return 0xFFFFFFFFLL;
  }

  if (*__error() != 2)
  {
    return 0xFFFFFFFFLL;
  }

  v5 = open(__s1, 2562, *(a1 + 116) & 0x1B6);
  if ((v5 & 0x80000000) != 0)
  {
    return 0xFFFFFFFFLL;
  }

  v6 = v5;
  *(a1 + 176) = time(0);
  v7 = asl_out_dst_set_access(v6, a1);
  if ((v7 & 0x80000000) != 0)
  {
    unlink(__s1);
  }

  if ((~*(a1 + 72) & 0x300) == 0)
  {
    unlink(*(a1 + 8));
LABEL_18:
    symlink(__s1, *(a1 + 8));
  }

  return v7;
}

void asl_out_module_free(uint64_t a1)
{
  if (a1)
  {
    v1 = a1;
    do
    {
      v2 = *(v1 + 24);
      free(*v1);
      v3 = *(v1 + 16);
      if (v3)
      {
        do
        {
          v4 = *(v3 + 5);
          v5 = *(v3 + 3);
          if (v5)
          {
            asl_out_dst_data_release(v5);
          }

          if (*v3)
          {
            asl_msg_release();
          }

          free(*(v3 + 2));
          free(v3);
          v3 = v4;
        }

        while (v4);
      }

      free(v1);
      v1 = v2;
    }

    while (v2);
  }
}

_DWORD *asl_out_module_new(const char *a1)
{
  v2 = malloc_type_calloc(1uLL, 0x20uLL, 0x10300408DF105C4uLL);
  result = 0;
  if (a1 && v2)
  {
    v4 = strdup(a1);
    *v2 = v4;
    if (v4)
    {
      v2[2] = 1;
      return v2;
    }

    else
    {
      free(v2);
      return 0;
    }
  }

  return result;
}

void *asl_out_module_parse_line(uint64_t a1, unsigned __int8 *a2)
{
  while (1)
  {
    v4 = *a2;
    if (v4 > 0x1F)
    {
      break;
    }

    if (v4 != 9)
    {
      return 0;
    }

LABEL_6:
    ++a2;
  }

  if (*a2 <= 0x29u)
  {
    if (v4 != 32)
    {
      return 0;
    }

    goto LABEL_6;
  }

  if (*a2 > 0x3Du)
  {
    if (v4 != 62)
    {
      if (v4 != 63 && v4 != 81)
      {
        return 0;
      }

LABEL_20:
      if (!a1)
      {
        return 0;
      }

      v6 = malloc_type_calloc(1uLL, 0x30uLL, 0x10B0040B8874213uLL);
      if (!v6)
      {
        return v6;
      }

      v9 = sub_100012C1C(a2);
      if (!v9)
      {
        return 0;
      }

      v10 = v9;
      v11 = strchr(v9, 32);
      if (v11)
      {
        v12 = v11;
        goto LABEL_33;
      }

      v12 = strchr(v10, 9);
      if (v12)
      {
LABEL_33:
        v16 = 0;
        *v12 = 0;
      }

      else
      {
        v16 = 1;
      }

      if (!strcasecmp(v10, "ignore"))
      {
        v17 = 3;
      }

      else if (!strcasecmp(v10, "skip"))
      {
        v17 = 4;
      }

      else if (!strcasecmp(v10, "claim"))
      {
        v17 = 5;
      }

      else if (!strcasecmp(v10, "notify"))
      {
        v17 = 6;
      }

      else if (!strcasecmp(v10, "file"))
      {
        v17 = 14;
      }

      else if (!strcasecmp(v10, "asl_file"))
      {
        v17 = 12;
      }

      else if (!strcasecmp(v10, "directory") || !strcasecmp(v10, "dir") || !strcasecmp(v10, "asl_directory") || !strcasecmp(v10, "asl_dir") || !strcasecmp(v10, "store_dir") || !strcasecmp(v10, "store_directory"))
      {
        v17 = 13;
      }

      else if (!strcasecmp(v10, "control"))
      {
        v17 = 16;
      }

      else if (!strcasecmp(v10, "save") || !strcasecmp(v10, "store"))
      {
        v17 = 11;
      }

      else if (!strcasecmp(v10, "access"))
      {
        v17 = 8;
      }

      else if (!strcasecmp(v10, "set"))
      {
        v17 = 9;
      }

      else if (!strcasecmp(v10, "unset"))
      {
        v17 = 10;
      }

      else
      {
        if (strcmp(*a1, "com.apple.asl"))
        {
          goto LABEL_82;
        }

        if (strcasecmp(v10, "broadcast"))
        {
          if (!strcasecmp(v10, "forward"))
          {
            v17 = 15;
            goto LABEL_81;
          }

LABEL_82:
          if (*(v6 + 2))
          {
            if (v16)
            {
              goto LABEL_92;
            }

            for (i = v12 + 1; ; ++i)
            {
              v25 = *(i - 1);
              if (v25 != 32 && v25 != 9)
              {
                break;
              }
            }

            v27 = sub_100012C94(i);
            *(v6 + 2) = v27;
            if (v27)
            {
LABEL_92:
              *(v10 - 1) = 0;
              if (*a2 == 42)
              {
                v28 = asl_msg_new();
              }

              else
              {
                *a2 = 81;
                v28 = asl_msg_from_string();
              }

              *v6 = v28;
              if (v28)
              {
                if (*(v6 + 2) != 11)
                {
                  goto LABEL_109;
                }

                v29 = *(v6 + 2);
                if (v29)
                {
                  if (strncmp(*(v6 + 2), "/var/log/asl", 0xCuLL))
                  {
                    *(v6 + 2) = 12;
                    goto LABEL_109;
                  }

                  v32 = a1;
                  v31 = v29;
                }

                else
                {
                  v31 = "/var/log/asl";
                  v32 = a1;
                }

                v33 = sub_10001171C(v32, v31, 493);
                if (v33)
                {
                  ++v33[42];
                }

                *(v6 + 3) = v33;
LABEL_109:
                v34 = *(v6 + 2);
                if ((v34 - 12) > 2)
                {
                  goto LABEL_134;
                }

                if (v34 == 13)
                {
                  v35 = 493;
                }

                else
                {
                  v35 = 420;
                }

                v36 = sub_10001171C(a1, *(v6 + 2), v35);
                if (!v36)
                {
                  *(v6 + 3) = 0;
                  *(v6 + 2) = 0;
                  return v6;
                }

                v37 = v36;
                ++v36[42];
                *(v6 + 3) = v36;
                if (*(v36 + 58) == 4096)
                {
                  *(v36 + 58) = v35;
                }

                v38 = *(v6 + 2);
                if (v38 == 12)
                {
LABEL_122:
                  v40 = v37[18] | 0x1000;
                }

                else
                {
                  if (v38 == 13)
                  {
                    v41 = v36[18];
                    v42 = v41 & 0xFFFFDFF7 | 0x2000;
                    if (!v36[16] && (v41 & 0x100) != 0)
                    {
                      v36[16] |= 0x20u;
                    }
                  }

                  else
                  {
                    if (v38 == 14)
                    {
                      v39 = *(v36 + 3);
                      if (v39 && !strcasecmp(v39, "asl"))
                      {
                        *(v6 + 2) = 12;
                        goto LABEL_122;
                      }

LABEL_130:
                      if (!v37[32])
                      {
                        sub_100012D3C(v37, "0");
                        v37 = *(v6 + 3);
                      }

                      if (!v37[36])
                      {
                        sub_100012DEC(v37, "80");
                      }

LABEL_134:
                      v43 = *(a1 + 16);
                      if (v43)
                      {
                        do
                        {
                          v23 = v43;
                          v43 = *(v43 + 40);
                        }

                        while (v43);
                        goto LABEL_136;
                      }

LABEL_137:
                      *(a1 + 16) = v6;
                      return v6;
                    }

                    v42 = v36[18];
                  }

                  v40 = v42 & 0xFFFFFFFB;
                }

                v37[18] = v40;
                goto LABEL_130;
              }

LABEL_100:
              free(*(v6 + 2));
            }
          }

LABEL_101:
          free(v6);
          return 0;
        }

        v17 = 7;
      }

LABEL_81:
      *(v6 + 2) = v17;
      goto LABEL_82;
    }

    sub_10001171C(a1, a2 + 1, 4096);
    return 0;
  }

  if (v4 == 42)
  {
    goto LABEL_20;
  }

  if (v4 != 61 || !a1)
  {
    return 0;
  }

  v5 = malloc_type_calloc(1uLL, 0x30uLL, 0x10B0040B8874213uLL);
  v6 = v5;
  if (!v5)
  {
    return v6;
  }

  for (j = (a2 + 1); ; ++j)
  {
    v8 = *j;
    if (v8 != 39 && v8 != 32)
    {
      break;
    }
  }

  *(v5 + 2) = 1;
  if (*j != 91)
  {
    v18 = strchr(a2, 91);
    if (!v18)
    {
      *(v6 + 2) = sub_100012C94(j);
      goto LABEL_77;
    }

    v19 = v18;
    if (!strncmp(v18, "[File ", 6uLL) || !strncmp(v19, "[File\t", 6uLL))
    {
      v20 = 17;
    }

    else if (!strncmp(v19, "[Plist ", 7uLL) || !strncmp(v19, "[Plist\t", 7uLL))
    {
      v20 = 18;
    }

    else
    {
      if (strncmp(v19, "[Profile ", 9uLL) && strncmp(v19, "[Profile\t", 9uLL))
      {
        goto LABEL_75;
      }

      v20 = 19;
    }

    *(v6 + 2) = v20;
LABEL_75:
    *(v19 - 1) = 0;
    *(v6 + 2) = sub_100012C94(j);
    *(v19 - 1) = 8273;
    goto LABEL_76;
  }

  v13 = sub_100012C1C(a2);
  if (!v13)
  {
    goto LABEL_101;
  }

  v14 = v13;
  *(v6 + 2) = sub_100012C94(v13);
  if (*(v14 - 1) == 93)
  {
    v15 = 0;
  }

  else
  {
    v15 = -1;
  }

  v14[v15] = 0;
  *a2 = 81;
LABEL_76:
  v21 = asl_msg_from_string();
  *v6 = v21;
  if (!v21)
  {
    goto LABEL_100;
  }

LABEL_77:
  v22 = *(a1 + 16);
  if (!v22)
  {
    goto LABEL_137;
  }

  do
  {
    v23 = v22;
    v22 = *(v22 + 40);
  }

  while (v22);
LABEL_136:
  *(v23 + 40) = v6;
  return v6;
}

unsigned int *sub_10001171C(uint64_t a1, unsigned __int8 *a2, __int16 a3)
{
  v3 = 0;
  if (!a1 || !a2)
  {
    return v3;
  }

  v5 = a1;
  while (1)
  {
    v6 = *a2;
    if (v6 != 32 && v6 != 9)
    {
      break;
    }

    ++a2;
  }

  __s = 0;
  v57 = a2;
  v8 = next_word_from_string(&v57);
  __s = v8;
  if (!v8)
  {
    return 0;
  }

  v9 = explode(v8, "/");
  v10 = asl_string_new();
  LOBYTE(v11) = 0;
  if (!v9 || !v10)
  {
    v23 = 0;
    goto LABEL_46;
  }

  v54 = a3;
  v55 = v5;
  v12 = 5;
  do
  {
    v13 = *v9;
    if (!*v9)
    {
      free_string_list(v9);
      v9 = 0;
      LOBYTE(v11) = 0;
      goto LABEL_45;
    }

    v14 = 0;
    v11 = 0;
    v15 = 1;
    v16 = v9;
    do
    {
      if (!strncmp(v13, "$ENV(", 5uLL))
      {
        v17 = strchr(v13, 41);
        if (v17)
        {
          *v17 = 0;
          v13 = *v16;
        }

        v18 = getenv(v13 + 5);
        if (v18)
        {
          if (*v18 != 47)
          {
            asl_string_append_char_no_encoding();
          }

          asl_string_append_no_encoding();
          v14 = 1;
        }

LABEL_26:
        if (v11)
        {
          goto LABEL_27;
        }

        goto LABEL_30;
      }

      if (v15 == 1)
      {
        if (!**v9)
        {
          goto LABEL_26;
        }
      }

      else
      {
        asl_string_append_char_no_encoding();
        v19 = *v16;
      }

      asl_string_append_no_encoding();
      if (v11)
      {
LABEL_27:
        v11 = 1;
        goto LABEL_34;
      }

LABEL_30:
      v20 = *v16;
      v11 = **v16 == 46 && v20[1] == 46 && v20[2] == 0;
LABEL_34:
      v16 = &v9[v15];
      v13 = *v16;
      ++v15;
    }

    while (*v16);
    free_string_list(v9);
    if (v14 != 1 || v11)
    {
      v9 = 0;
      v22 = v12;
      break;
    }

    free(__s);
    __s = asl_string_release_return_bytes();
    v21 = asl_string_new();
    v9 = explode(__s, "/");
    v22 = v12 - 1;
    if (!v9)
    {
      break;
    }

    if (v12 < 2)
    {
      break;
    }

    --v12;
  }

  while (v21);
  v12 = v22;
LABEL_45:
  v23 = v12 == 0;
  v5 = v55;
  a3 = v54;
LABEL_46:
  free(__s);
  free_string_list(v9);
  if (v11 || v23)
  {
    asl_string_release();
    return 0;
  }

  v24 = asl_string_release_return_bytes();
  __s = v24;
  for (i = *(v5 + 16); i; i = *(i + 40))
  {
    if (*(i + 8) == 2)
    {
      v3 = *(i + 24);
      if (v3)
      {
        v26 = *(v3 + 1);
        if (v24 && v26)
        {
          if (*v24 != 47)
          {
            v27 = strrchr(*(v3 + 1), 47);
            if (v27)
            {
              v26 = v27 + 1;
            }
          }

          if (!strcmp(v24, v26))
          {
LABEL_184:
            free(v24);
            return v3;
          }
        }

        else if (!(v24 | v26))
        {
          goto LABEL_184;
        }
      }
    }
  }

  if (*v24 == 47)
  {
    v28 = 8;
    if (strncmp(v24, "/var/log/", 9uLL))
    {
      if (!strncmp(v24, "/Library/Logs/", 0xEuLL))
      {
        v28 = 8;
      }

      else
      {
        v28 = 40;
      }
    }
  }

  else
  {
    if (!strcmp(*v5, "com.apple.asl"))
    {
      asprintf(&__s, "%s/%s");
    }

    else
    {
      asprintf(&__s, "%s/module/%s/%s");
    }

    free(v24);
    v28 = 8;
  }

  v29 = malloc_type_calloc(1uLL, 0x30uLL, 0x10B0040B8874213uLL);
  v30 = malloc_type_calloc(1uLL, 0xC8uLL, 0x10D00407E9428A6uLL);
  v3 = v30;
  if (!v29 || !v30)
  {
    free(__s);
    free(v29);
    free(v3);
    return 0;
  }

  v30[42] = 1;
  v31 = __s;
  *(v30 + 1) = __s;
  v32 = strrchr(v31, 47);
  if (v32)
  {
    v33 = v32;
    *v32 = 0;
    *v3 = strdup(*(v3 + 1));
    *v33 = 47;
    v31 = __s;
  }

  *(v3 + 58) = a3;
  v3[28] = 604800;
  v3[18] = v28;
  v34 = strrchr(v31, 47);
  if (v34)
  {
    v35 = v34 + 1;
  }

  else
  {
    v35 = v31;
  }

  v36 = strrchr(v31, 46);
  if (v36)
  {
    v37 = v36;
    *v36 = 0;
    *(v3 + 6) = strdup(v36 + 1);
    *(v3 + 5) = strdup(v35);
    *v37 = 46;
  }

  else
  {
    *(v3 + 5) = strdup(v35);
  }

  v39 = next_word_from_string(&v57);
  if (v39)
  {
    v40 = v39;
    do
    {
      if (!strncasecmp(v40, "mode=", 5uLL))
      {
        *(v3 + 58) = strtol(v40 + 5, 0, 0);
      }

      else if (!strncasecmp(v40, "uid=", 4uLL))
      {
        sub_100012D3C(v3, v40 + 4);
      }

      else if (!strncasecmp(v40, "gid=", 4uLL))
      {
        sub_100012DEC(v3, v40 + 4);
      }

      else
      {
        if (!strncasecmp(v40, "fmt=", 4uLL))
        {
          v42 = v40 + 4;
LABEL_115:
          *(v3 + 3) = sub_100012E9C(v42);
          goto LABEL_129;
        }

        if (!strncasecmp(v40, "format=", 7uLL))
        {
          v42 = v40 + 7;
          goto LABEL_115;
        }

        if (!strncasecmp(v40, "dest=", 5uLL))
        {
          v43 = v40 + 5;
LABEL_118:
          *(v3 + 4) = sub_100012C94(v43);
          goto LABEL_129;
        }

        if (!strncasecmp(v40, "dst=", 4uLL))
        {
          v43 = v40 + 4;
          goto LABEL_118;
        }

        if (!strncasecmp(v40, "coalesce=", 9uLL))
        {
          if (strncasecmp(v40 + 9, "0", 1uLL) && strncasecmp(v40 + 9, "off", 3uLL) && strncasecmp(v40 + 9, "false", 5uLL))
          {
            goto LABEL_129;
          }

          v41 = v3[18] & 0xFFFFFFF7;
          goto LABEL_128;
        }

        if (!strncasecmp(v40, "compress", 8uLL))
        {
          v41 = v3[18] | 0x10;
          goto LABEL_128;
        }

        if (!strncasecmp(v40, "extern", 6uLL))
        {
          v41 = v3[18] | 0x40;
          goto LABEL_128;
        }

        if (!strncasecmp(v40, "truncate", 8uLL))
        {
          v41 = v3[18] | 0x80;
          goto LABEL_128;
        }

        if (!strncasecmp(v40, "dir", 3uLL))
        {
          v41 = v3[18] | 0x2000;
          goto LABEL_128;
        }

        if (!strncasecmp(v40, "soft", 4uLL))
        {
          v41 = v3[18] | 0x800;
          goto LABEL_128;
        }

        if (!strncasecmp(v40, "file_max=", 9uLL))
        {
          *(v3 + 19) = asl_core_str_to_size();
          goto LABEL_129;
        }

        if (!strncasecmp(v40, "all_max=", 8uLL))
        {
          *(v3 + 20) = asl_core_str_to_size();
          goto LABEL_129;
        }

        if (!strncasecmp(v40, "style=", 6uLL) || !strncasecmp(v40, "rotate=", 7uLL))
        {
          v44 = 6;
          if (*v40 == 114)
          {
            v44 = 7;
          }

          if (sub_100012F7C(v3, &v40[v44]))
          {
            goto LABEL_129;
          }

LABEL_141:
          v41 = v3[18] | 4;
LABEL_128:
          v3[18] = v41;
          goto LABEL_129;
        }

        if (!strncasecmp(v40, "rotate", 6uLL))
        {
          if (*(v3 + 6))
          {
            v45 = 536870913;
          }

          else
          {
            v45 = 268435457;
          }

          v3[16] = v45;
          goto LABEL_141;
        }

        if (!strncasecmp(v40, "crashlog", 8uLL))
        {
          v41 = v3[18] & 0xFFFFFAF3 | 0x504;
          goto LABEL_128;
        }

        if (!strncasecmp(v40, "basestamp", 9uLL))
        {
          v41 = v3[18] | 0x100;
          goto LABEL_128;
        }

        if (!strncasecmp(v40, "link", 4uLL) || !strncasecmp(v40, "symlink", 7uLL))
        {
          v41 = v3[18] | 0x200;
          goto LABEL_128;
        }

        if (!strncasecmp(v40, "ttl", 3uLL))
        {
          v46 = v40[3];
          if (v46 == 61)
          {
            v3[28] = asl_core_str_to_time();
          }

          else if ((v46 & 0xF8) == 0x30 && v40[4] == 61)
          {
            v3[(v46 - 48) + 20] = asl_core_str_to_time();
          }

          goto LABEL_129;
        }

        if (!strncasecmp(v40, "size_only", 9uLL))
        {
          v41 = v3[18] | 0x8000;
          goto LABEL_128;
        }
      }

LABEL_129:
      free(v40);
      v40 = next_word_from_string(&v57);
    }

    while (v40);
  }

  v47 = *(v3 + 1);
  if (!strncasecmp(v47, "/Library/Logs/CrashReporter", 0x1BuLL) || !strncasecmp(v47, "/var/mobile/Library/Logs/CrashReporter", 0x26uLL) || !strncasecmp(v47, "/private/var/mobile/Library/Logs/CrashReporter", 0x2EuLL))
  {
    v3[18] = v3[18] & 0xFFFFFAF3 | 0x504;
  }

  v48 = v3[28];
  for (j = 20; j != 28; ++j)
  {
    v50 = v3[j];
    if (v50 > v48)
    {
      v3[28] = v50;
      v48 = v50;
    }
  }

  v51 = *(v3 + 3);
  if (!v51)
  {
    v51 = strdup("std");
    *(v3 + 3) = v51;
  }

  if (strcmp(v51, "std") && strcmp(v51, "bsd"))
  {
    v3[18] &= ~8u;
  }

  if (!strcmp(v51, "std") || !strcmp(v51, "bsd") || !strcmp(v51, "msg"))
  {
    v52 = v3[18] | 0x4000;
    v3[18] = v52;
  }

  else
  {
    v52 = v3[18];
  }

  if ((~v52 & 0x102) == 0)
  {
    v52 = v52 & 0xFFFFFFFC | 1;
    v3[18] = v52;
  }

  if (!strcmp(v51, "raw"))
  {
    *(v3 + 7) = "sec";
  }

  if (!strcmp(v47, "/var/log/asl"))
  {
    v52 = 0x2000;
    v3[18] = 0x2000;
  }

  if (!*(v3 + 19))
  {
    v53 = *(v3 + 20);
    *(v3 + 19) = v53;
    if ((v52 & 0x8000) == 0)
    {
      goto LABEL_181;
    }

    if (!v53)
    {
LABEL_180:
      v52 &= ~0x8000u;
      v3[18] = v52;
      goto LABEL_181;
    }

LABEL_179:
    if (*(v3 + 20))
    {
      goto LABEL_181;
    }

    goto LABEL_180;
  }

  if ((v52 & 0x8000) != 0)
  {
    goto LABEL_179;
  }

LABEL_181:
  if ((~v52 & 0x8400) == 0)
  {
    v3[18] = v52 & 0xFFFF7FFF;
  }

  *(v29 + 2) = 2;
  *(v29 + 3) = v3;
  *(v29 + 5) = *(v5 + 16);
  *(v5 + 16) = v29;
  return v3;
}

_DWORD *asl_out_module_init_from_file(const char *a1, FILE *a2)
{
  if (!a2)
  {
    return 0;
  }

  v3 = asl_out_module_new(a1);
  if (v3)
  {
    line_from_file = get_line_from_file(a2);
    if (line_from_file)
    {
      v5 = line_from_file;
      do
      {
        asl_out_module_parse_line(v3, v5);
        free(v5);
        v5 = get_line_from_file(a2);
      }

      while (v5);
    }
  }

  return v3;
}

_DWORD *asl_out_module_init()
{
  *v5 = 0;
  sub_10001238C(v5, "/usr/local/etc/asl", 2);
  sub_10001238C(v5, "/etc/asl", 0);
  v0 = *v5;
  if (!sub_100012524(*v5, "com.apple.asl"))
  {
    v2 = fopen("/etc/asl.conf", "r");
    if (v2)
    {
      v3 = v2;
      v4 = asl_out_module_init_from_file("com.apple.asl", v2);
      fclose(v3);
      v0 = *v5;
      if (v4)
      {
        *(v4 + 3) = *v5;
        return v4;
      }
    }

    else
    {
      return *v5;
    }
  }

  return v0;
}

DIR *sub_10001238C(DIR *result, char *a2, int a3)
{
  if (result && a2)
  {
    p_dd_fd = &result->__dd_fd;
    v6 = *&result->__dd_fd;
    if (*&result->__dd_fd)
    {
      do
      {
        v7 = v6;
        v6 = *(v6 + 24);
      }

      while (v6);
    }

    else
    {
      v7 = 0;
    }

    result = opendir(a2);
    if (result)
    {
      v8 = result;
      v9 = "%s/%s";
      while (1)
      {
        v10 = readdir(v8);
        if (!v10)
        {
          break;
        }

        d_name = v10->d_name;
        if (v10->d_name[0] != 46 && !sub_100012524(*p_dd_fd, d_name))
        {
          v12 = v9;
          snprintf(__str, 0x400uLL, v9, a2, d_name);
          v13 = fopen(__str, "r");
          if (v13 && (v14 = v13, v15 = asl_out_module_init_from_file(d_name, v13), fclose(v14), v15))
          {
            v15[2] |= a3;
            v16 = strcmp(d_name, "com.apple.asl");
            v17 = *p_dd_fd;
            if (v16)
            {
              if (v17)
              {
                *(v7 + 3) = v15;
              }

              else
              {
                *p_dd_fd = v15;
              }
            }

            else
            {
              *(v15 + 3) = v17;
              *p_dd_fd = v15;
              if (v7)
              {
                v15 = v7;
              }
            }
          }

          else
          {
            v15 = v7;
          }

          v7 = v15;
          v9 = v12;
        }
      }

      return closedir(v8);
    }
  }

  return result;
}

uint64_t sub_100012524(uint64_t a1, char *__s2)
{
  result = 0;
  if (a1 && __s2)
  {
    while (!*a1 || strcmp(*a1, __s2))
    {
      a1 = *(a1 + 24);
      if (!a1)
      {
        return 0;
      }
    }

    return a1;
  }

  return result;
}

void asl_out_module_print(FILE *a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2)
  {
    while (1)
    {
      v4 = *v2;
      v5 = asl_msg_to_string();
      fprintf(a1, "  %s", off_10001D4B0[*(v2 + 2)]);
      if (*v2)
      {
        fprintf(a1, " %s", v5);
      }

      if (v2[2])
      {
        fprintf(a1, " %s", v2[2]);
      }

      if (*(v2 + 2) != 2)
      {
        goto LABEL_68;
      }

      v6 = v2[3];
      if (v6)
      {
        break;
      }

      fwrite("  data: NULL", 0xCuLL, 1uLL, a1);
LABEL_68:
      fputc(10, a1);
      v2 = v2[5];
      free(v5);
      if (!v2)
      {
        return;
      }
    }

    fprintf(a1, "%s\n", *(v6 + 8));
    fprintf(a1, "    rules: %u\n", *(v6 + 168) - 1);
    v7 = *(v6 + 32);
    if (!v7)
    {
      v7 = "(none)";
    }

    fprintf(a1, "    dest: %s\n", v7);
    v8 = *(v6 + 24);
    if (!v8)
    {
      v8 = "std";
    }

    fprintf(a1, "    format: %s\n", v8);
    v9 = *(v6 + 56);
    if (!v9)
    {
      v9 = "lcl";
    }

    fprintf(a1, "    time_format: %s\n", v9);
    fprintf(a1, "    flags: 0x%08x", *(v6 + 72));
    if (!*(v6 + 72))
    {
LABEL_34:
      fputc(10, a1);
      if ((*(v6 + 72) & 4) != 0)
      {
        fwrite("        rotatation style: ", 0x1AuLL, 1uLL, a1);
        v12 = *(v6 + 64);
        if ((v12 & 0x10000000) != 0)
        {
          v13 = *(v6 + 40);
          sub_100012BB0(v12);
          fprintf(a1, "[base=%s].%s\n");
        }

        else if ((v12 & 0x20000000) != 0)
        {
          v14 = *(v6 + 40);
          v15 = *(v6 + 48);
          sub_100012BB0(v12);
          fprintf(a1, "[base=%s].[ext=%s].%s\n");
        }

        else if ((v12 & 0x40000000) != 0)
        {
          v16 = *(v6 + 40);
          sub_100012BB0(v12);
          v17 = *(v6 + 48);
          fprintf(a1, "[base=%s].%s.[ext=%s]\n");
        }

        else
        {
          v26 = *(v6 + 64);
          fprintf(a1, "0x%08x\n");
        }
      }

      v18 = v6 + 80;
      v19 = *(v6 + 112);
      asl_core_time_to_str();
      fprintf(a1, "    ttl: %s\n", v27);
      v20 = 0;
      do
      {
        v21 = *(v18 + 4 * v20);
        if (v20 > 6)
        {
          break;
        }

        ++v20;
      }

      while (!v21);
      if (v21)
      {
        for (i = 0; i != 8; ++i)
        {
          if (!*(v18 + 4 * i))
          {
            v23 = *(v6 + 112);
          }

          asl_core_time_to_str();
          fprintf(a1, " [%d %s]", i, v27);
        }

        fputc(10, a1);
      }

      fprintf(a1, "    mode: 0%o\n", *(v6 + 116));
      fprintf(a1, "    file_max: %lu\n", *(v6 + 152));
      fprintf(a1, "    all_max: %lu\n", *(v6 + 160));
      fwrite("    uid:", 8uLL, 1uLL, a1);
      if (*(v6 + 128))
      {
        v24 = 0;
        do
        {
          fprintf(a1, " %d", *(*(v6 + 120) + 4 * v24++));
        }

        while (v24 < *(v6 + 128));
      }

      fputc(10, a1);
      fwrite("    gid:", 8uLL, 1uLL, a1);
      if (*(v6 + 144))
      {
        v25 = 0;
        do
        {
          fprintf(a1, " %d", *(*(v6 + 136) + 4 * v25++));
        }

        while (v25 < *(v6 + 144));
      }

      goto LABEL_68;
    }

    fputc(32, a1);
    v10 = *(v6 + 72);
    if (v10)
    {
      fprintf(a1, "%cenabled", 40);
      v10 = *(v6 + 72);
      v11 = 32;
      if ((v10 & 0x800) == 0)
      {
        goto LABEL_21;
      }
    }

    else
    {
      v11 = 40;
      if ((v10 & 0x800) == 0)
      {
LABEL_21:
        if ((v10 & 4) != 0)
        {
          fprintf(a1, "%crotate", v11);
          v10 = *(v6 + 72);
          v11 = 32;
          if ((v10 & 8) == 0)
          {
LABEL_23:
            if ((v10 & 0x10) == 0)
            {
              goto LABEL_24;
            }

            goto LABEL_41;
          }
        }

        else if ((v10 & 8) == 0)
        {
          goto LABEL_23;
        }

        fprintf(a1, "%ccoalesce", v11);
        v10 = *(v6 + 72);
        v11 = 32;
        if ((v10 & 0x10) == 0)
        {
LABEL_24:
          if ((v10 & 0x100) == 0)
          {
            goto LABEL_25;
          }

          goto LABEL_42;
        }

LABEL_41:
        fprintf(a1, "%ccompress", v11);
        v10 = *(v6 + 72);
        v11 = 32;
        if ((v10 & 0x100) == 0)
        {
LABEL_25:
          if ((v10 & 0x200) == 0)
          {
            goto LABEL_26;
          }

          goto LABEL_43;
        }

LABEL_42:
        fprintf(a1, "%cbasestamp", v11);
        v10 = *(v6 + 72);
        v11 = 32;
        if ((v10 & 0x200) == 0)
        {
LABEL_26:
          if ((v10 & 0x20) == 0)
          {
            goto LABEL_27;
          }

          goto LABEL_44;
        }

LABEL_43:
        fprintf(a1, "%csymlink", v11);
        v10 = *(v6 + 72);
        v11 = 32;
        if ((v10 & 0x20) == 0)
        {
LABEL_27:
          if ((v10 & 0x40) == 0)
          {
            goto LABEL_28;
          }

          goto LABEL_45;
        }

LABEL_44:
        fprintf(a1, "%cnon-std_dir", v11);
        v10 = *(v6 + 72);
        v11 = 32;
        if ((v10 & 0x40) == 0)
        {
LABEL_28:
          if ((v10 & 0x400) == 0)
          {
            goto LABEL_29;
          }

          goto LABEL_46;
        }

LABEL_45:
        fprintf(a1, "%cexternal", v11);
        v10 = *(v6 + 72);
        v11 = 32;
        if ((v10 & 0x400) == 0)
        {
LABEL_29:
          if ((v10 & 0x1000) == 0)
          {
            goto LABEL_30;
          }

          goto LABEL_47;
        }

LABEL_46:
        fprintf(a1, "%ccrashlog", v11);
        v10 = *(v6 + 72);
        v11 = 32;
        if ((v10 & 0x1000) == 0)
        {
LABEL_30:
          if ((v10 & 0x2000) == 0)
          {
            goto LABEL_31;
          }

          goto LABEL_48;
        }

LABEL_47:
        fprintf(a1, "%casl_file", v11);
        v10 = *(v6 + 72);
        v11 = 32;
        if ((v10 & 0x2000) == 0)
        {
LABEL_31:
          if ((v10 & 0x8000) == 0)
          {
LABEL_33:
            fputc(41, a1);
            goto LABEL_34;
          }

LABEL_32:
          fprintf(a1, "%csize_only", v11);
          goto LABEL_33;
        }

LABEL_48:
        fprintf(a1, "%casl_directory", v11);
        v11 = 32;
        if ((*(v6 + 72) & 0x8000) == 0)
        {
          goto LABEL_33;
        }

        goto LABEL_32;
      }
    }

    fprintf(a1, "%csoft", v11);
    v10 = *(v6 + 72);
    v11 = 32;
    goto LABEL_21;
  }
}

const char *sub_100012BB0(char a1)
{
  v1 = "<sequence>";
  v2 = "<utc>";
  v3 = "<utc-basic>";
  v4 = "<local>";
  v5 = "<local-basic>";
  if ((a1 & 0x20) == 0)
  {
    v5 = "<unknown>";
  }

  if ((a1 & 0x10) == 0)
  {
    v4 = v5;
  }

  if ((a1 & 8) == 0)
  {
    v3 = v4;
  }

  if ((a1 & 4) == 0)
  {
    v2 = v3;
  }

  if ((a1 & 2) == 0)
  {
    v1 = v2;
  }

  if (a1)
  {
    return "<seconds>";
  }

  else
  {
    return v1;
  }
}

uint64_t sub_100012C1C(uint64_t result)
{
  if (result)
  {
    do
    {
      while (1)
      {
        v2 = *++result;
        v1 = v2;
        if (v2 <= 31)
        {
          break;
        }

        if (v1 != 32)
        {
          if (v1 != 91)
          {
            return result;
          }

          do
          {
            v3 = *(result + 1);
            if (v3 == 92)
            {
              v4 = *(result + 2);
              v5 = v4 == 93;
              if (v4 == 93)
              {
                v6 = 3;
              }

              else
              {
                v6 = 2;
              }

              v3 = *(result + v6);
              if (v5)
              {
                result += 3;
              }

              else
              {
                result += 2;
              }
            }

            else
            {
              ++result;
            }
          }

          while (v3 != 93);
        }
      }
    }

    while (v1 == 9);
    if (!v1)
    {
      return 0;
    }
  }

  return result;
}

_BYTE *sub_100012C94(char *__s)
{
  if (!__s)
  {
    return 0;
  }

  for (i = __s; ; ++i)
  {
    v2 = *i;
    if (v2 != 32 && v2 != 9)
    {
      break;
    }
  }

  v4 = strlen(i);
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  while (1)
  {
    v6 = i[v5 - 1];
    if (v6 != 32 && v6 != 9)
    {
      break;
    }

    if (!--v5)
    {
      return 0;
    }
  }

  v10 = malloc_type_malloc(v5 + 1, 0x2AC3AEBBuLL);
  v8 = v10;
  if (v10)
  {
    memcpy(v10, i, v5);
    v8[v5] = 0;
  }

  return v8;
}

_DWORD *sub_100012D3C(_DWORD *result, char *a2)
{
  if (result && a2)
  {
    v2 = result;
    pw_uid = atoi(a2);
    if (pw_uid == 501)
    {
      v4 = getpwnam("mobile");
      if (v4)
      {
        pw_uid = v4->pw_uid;
      }

      else
      {
        pw_uid = 501;
      }
    }

    v5 = v2[32];
    result = *(v2 + 15);
    if (v5)
    {
      v6 = v2[32];
      v7 = *(v2 + 15);
      while (1)
      {
        v8 = *v7++;
        if (v8 == pw_uid)
        {
          break;
        }

        if (!--v6)
        {
          goto LABEL_11;
        }
      }
    }

    else
    {
LABEL_11:
      result = reallocf(result, 4 * (v5 + 1));
      *(v2 + 15) = result;
      if (result)
      {
        v9 = v2[32];
        v2[32] = v9 + 1;
        result[v9] = pw_uid;
      }

      else
      {
        v2[32] = 0;
      }
    }
  }

  return result;
}

_DWORD *sub_100012DEC(_DWORD *result, char *a2)
{
  if (result && a2)
  {
    v2 = result;
    pw_gid = atoi(a2);
    if (pw_gid == 501)
    {
      v4 = getpwnam("mobile");
      if (v4)
      {
        pw_gid = v4->pw_gid;
      }

      else
      {
        pw_gid = 501;
      }
    }

    v5 = v2[36];
    result = *(v2 + 17);
    if (v5)
    {
      v6 = v2[36];
      v7 = *(v2 + 17);
      while (1)
      {
        v8 = *v7++;
        if (v8 == pw_gid)
        {
          break;
        }

        if (!--v6)
        {
          goto LABEL_11;
        }
      }
    }

    else
    {
LABEL_11:
      result = reallocf(result, 4 * (v5 + 1));
      *(v2 + 17) = result;
      if (result)
      {
        v9 = v2[36];
        v2[36] = v9 + 1;
        result[v9] = pw_gid;
      }

      else
      {
        v2[36] = 0;
      }
    }
  }

  return result;
}

const char *sub_100012E9C(const char *result)
{
  if (!result)
  {
    return result;
  }

  v1 = result;
  v2 = strlen(result);
  v3 = v2;
  if (v2 >= 2)
  {
    v4 = *v1;
    if (v4 != 39 && v4 != 34 || v1[v2 - 1] != v4)
    {
LABEL_8:
      v5 = 0;
      v6 = 0;
      do
      {
        if (v1[v6] == 92)
        {
          ++v5;
        }

        ++v6;
      }

      while (v3 != v6);
      v7 = 0;
      goto LABEL_14;
    }

    ++v1;
    v3 = v2 - 2;
  }

  if (v3)
  {
    goto LABEL_8;
  }

  v5 = 0;
  v7 = 1;
LABEL_14:
  result = malloc_type_malloc(v3 - v5 + 1, 0x5C7A3C62uLL);
  if (result)
  {
    v8 = 0;
    if ((v7 & 1) == 0)
    {
      do
      {
        v10 = *v1++;
        v9 = v10;
        if (v10 != 92)
        {
          result[v8++] = v9;
        }

        --v3;
      }

      while (v3);
    }

    result[v8] = 0;
  }

  return result;
}

uint64_t sub_100012F7C(uint64_t a1, const char *a2)
{
  if (!a2)
  {
    return 0xFFFFFFFFLL;
  }

  if (*a2 == 46)
  {
    v4 = a2;
  }

  else
  {
    v10 = *(a1 + 40);
    if (!v10)
    {
      return 0xFFFFFFFFLL;
    }

    v11 = strlen(*(a1 + 40));
    if (strncmp(a2, v10, v11) || (v4 = &a2[v11], a2[v11] != 46))
    {
      v12 = sub_100013128(a2);
      *(a1 + 64) = v12;
      if (v12)
      {
        v13 = v12;
        result = 0;
        if (*(a1 + 48))
        {
          v14 = 0x20000000;
        }

        else
        {
          v14 = 0x10000000;
        }

        v15 = v14 | v13;
        goto LABEL_26;
      }

      return 0xFFFFFFFFLL;
    }
  }

  v5 = v4 + 1;
  for (i = v4 + 2; ; ++i)
  {
    v7 = *(i - 1);
    if (v7 <= 0x1F)
    {
      if (*(i - 1))
      {
        v8 = v7 == 9;
      }

      else
      {
        v8 = 1;
      }

      if (v8)
      {
LABEL_24:
        v16 = sub_100013128(v5);
        *(a1 + 64) = v16;
        if (!v16)
        {
          return 0xFFFFFFFFLL;
        }

        v17 = v16;
        result = 0;
        v15 = v17 | 0x10000000;
        goto LABEL_26;
      }

      continue;
    }

    if (v7 == 32)
    {
      goto LABEL_24;
    }

    if (v7 == 46)
    {
      break;
    }
  }

  v18 = *(a1 + 48);
  if (!v18)
  {
    return 0xFFFFFFFFLL;
  }

  v19 = strlen(*(a1 + 48));
  if (strncmp(v5, v18, v19) || v5[v19] != 46)
  {
    if (!strncmp(i, v18, v19))
    {
      v22 = sub_100013128(v5);
      *(a1 + 64) = v22;
      if (v22)
      {
        v23 = v22;
        result = 0;
        v15 = v23 | 0x40000000;
        goto LABEL_26;
      }
    }

    return 0xFFFFFFFFLL;
  }

  v20 = sub_100013128(i);
  *(a1 + 64) = v20;
  if (!v20)
  {
    return 0xFFFFFFFFLL;
  }

  v21 = v20;
  result = 0;
  v15 = v21 | 0x20000000;
LABEL_26:
  *(a1 + 64) = v15;
  return result;
}

uint64_t sub_100013128(uint64_t result)
{
  if (!result)
  {
    return result;
  }

  for (i = 0; ; ++i)
  {
    v2 = *(result + i);
    if ((v2 - 97) >= 0x1A)
    {
      break;
    }

    if (i > 0xA)
    {
      goto LABEL_9;
    }

LABEL_8:
    *(&v9 + i) = v2;
  }

  if (i <= 0xA && v2 == 45)
  {
    goto LABEL_8;
  }

LABEL_9:
  *(&v9 + i) = 0;
  if (v9 == 6514035 || v9 == 0x73646E6F636573)
  {
    return 1;
  }

  if (!(v9 ^ 0x756C757A | BYTE4(v9)) || v9 == 6517877)
  {
    return 4;
  }

  if (v9 == 761492597 && WORD2(v9) == 98)
  {
    return 8;
  }

  if (v9 == 0x697361622D637475 && v10 == 99)
  {
    return 8;
  }

  v5 = v9 == 1633906540 && WORD2(v9) == 108;
  if (v5 || v9 == 7103340)
  {
    return 16;
  }

  if (v9 == 0x622D6C61636F6CLL)
  {
    return 32;
  }

  if (v9 == 762078060 && WORD2(v9) == 98)
  {
    return 32;
  }

  if (v9 == 0x61622D6C61636F6CLL && v10 == 6515059)
  {
    return 32;
  }

  if (v9 == 0x697361622D6C636CLL && v10 == 99)
  {
    return 32;
  }

  if (v9 == 35 || v9 == 7431539)
  {
    return 2;
  }

  return 2 * ((v9 ^ 0x65636E6575716573 | v10) == 0);
}

uint64_t (*asl_ipc_server_routine(uint64_t a1))()
{
  v1 = *(a1 + 20);
  if ((v1 - 123) >= 0xFFFFFFF7)
  {
    return _asl_ipc_subsystem[5 * (v1 - 114) + 5];
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000133CC(uint64_t result, uint64_t a2)
{
  if ((*result & 0x80000000) == 0 || *(result + 24) != 1 || *(result + 4) != 56)
  {
    v3 = -304;
    goto LABEL_10;
  }

  if (*(result + 39) != 1 || *(result + 40) != *(result + 52))
  {
    v3 = -300;
    goto LABEL_10;
  }

  if (*(result + 56) || *(result + 60) <= 0x1Fu)
  {
    v3 = -309;
LABEL_10:
    *(a2 + 32) = v3;
    goto LABEL_11;
  }

  *(a2 + 32) = 0x11000000000000;
  *(a2 + 48) = 16777473;
  v4 = *(result + 12);
  v5 = *(result + 28);
  v6 = *(result + 40);
  v7 = *(result + 92);
  v8[0] = *(result + 76);
  v8[1] = v7;
  result = sub_100009768(v4, v5, v6, (a2 + 28), (a2 + 40), (a2 + 64), (a2 + 68), v8);
  if (!result)
  {
    *(a2 + 52) = *(a2 + 64);
    *(a2 + 56) = NDR_record;
    *a2 |= 0x80000000;
    *(a2 + 4) = 72;
    *(a2 + 24) = 2;
    return result;
  }

  *(a2 + 32) = result;
LABEL_11:
  *(a2 + 24) = NDR_record;
  return result;
}

uint64_t sub_1000134FC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if ((*result & 0x80000000) != 0 && *(result + 24) == 1 && *(result + 4) == 56)
  {
    if (*(result + 39) == 1 && (v9 = *(result + 40), v9 == *(result + 52)))
    {
      if (!*(result + 56) && *(result + 60) > 0x1Fu)
      {
        v11 = *(result + 12);
        v12 = *(result + 28);
        v13 = *(result + 92);
        v14[0] = *(result + 76);
        v14[1] = v13;
        result = sub_1000093FC(v11, v12, v9, v14, a5, a6, a7, a8);
        *(a2 + 32) = result;
        return result;
      }

      v10 = -309;
    }

    else
    {
      v10 = -300;
    }
  }

  else
  {
    v10 = -304;
  }

  *(a2 + 32) = v10;
  *(a2 + 24) = NDR_record;
  return result;
}

uint64_t sub_1000135C8(uint64_t result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || *(result + 4) != 36)
  {
    v3 = -304;
  }

  else
  {
    if (!*(result + 36) && *(result + 40) > 0x1Fu)
    {
      v4 = *(result + 12);
      v5 = *(result + 32);
      v6 = *(result + 72);
      v7[0] = *(result + 56);
      v7[1] = v6;
      result = sub_100009B88(v4, v5, v7);
      *(a2 + 32) = result;
      return result;
    }

    v3 = -309;
  }

  *(a2 + 32) = v3;
  *(a2 + 24) = NDR_record;
  return result;
}

uint64_t sub_100013664(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if ((*result & 0x80000000) != 0 || *(result + 4) != 36)
  {
    v9 = -304;
  }

  else
  {
    if (!*(result + 36) && *(result + 40) > 0x1Fu)
    {
      v10 = *(result + 12);
      v11 = *(result + 32);
      v12 = *(result + 72);
      v13[0] = *(result + 56);
      v13[1] = v12;
      result = sub_100009EA8(v10, v11, v13, a4, a5, a6, a7, a8);
      *(a2 + 32) = result;
      return result;
    }

    v9 = -309;
  }

  *(a2 + 32) = v9;
  *(a2 + 24) = NDR_record;
  return result;
}

uint64_t sub_100013700(uint64_t result, uint64_t a2)
{
  if ((*result & 0x80000000) == 0 || *(result + 24) != 1 || *(result + 4) != 72)
  {
    v3 = -304;
    goto LABEL_10;
  }

  if (*(result + 39) != 1 || *(result + 40) != *(result + 52))
  {
    v3 = -300;
    goto LABEL_10;
  }

  if (*(result + 72) || *(result + 76) <= 0x1Fu)
  {
    v3 = -309;
LABEL_10:
    *(a2 + 32) = v3;
    goto LABEL_11;
  }

  *(a2 + 36) = 16777473;
  v4 = *(result + 12);
  v5 = *(result + 28);
  v6 = *(result + 40);
  v7 = *(result + 56);
  v8 = *(result + 64);
  v9 = *(result + 68);
  v10 = *(result + 108);
  v11[0] = *(result + 92);
  v11[1] = v10;
  result = sub_1000085C8(v4, v5, v6, v7, v8, v9, (a2 + 28), (a2 + 52), (a2 + 56), (a2 + 64), v11);
  if (!result)
  {
    *(a2 + 40) = *(a2 + 52);
    *(a2 + 44) = NDR_record;
    *a2 |= 0x80000000;
    *(a2 + 4) = 68;
    *(a2 + 24) = 1;
    return result;
  }

  *(a2 + 32) = result;
LABEL_11:
  *(a2 + 24) = NDR_record;
  return result;
}

uint64_t sub_100013834(uint64_t result, uint64_t a2)
{
  if ((*result & 0x80000000) == 0 || *(result + 24) != 1 || *(result + 4) != 80)
  {
    v3 = -304;
    goto LABEL_10;
  }

  if (*(result + 39) != 1 || *(result + 40) != *(result + 52))
  {
    v3 = -300;
    goto LABEL_10;
  }

  if (*(result + 80) || *(result + 84) <= 0x1Fu)
  {
    v3 = -309;
LABEL_10:
    *(a2 + 32) = v3;
    goto LABEL_11;
  }

  *(a2 + 36) = 16777473;
  v4 = *(result + 12);
  v5 = *(result + 28);
  v6 = *(result + 40);
  v7 = *(result + 56);
  v8 = *(result + 64);
  v9 = *(result + 72);
  v10 = *(result + 76);
  v11 = *(result + 116);
  v13[0] = *(result + 100);
  v13[1] = v11;
  *(&v12 + 1) = a2 + 64;
  *&v12 = a2 + 56;
  result = sub_1000093A4(v4, v5, v6, v7, v8, v9, v10, (a2 + 28), (a2 + 52), v12, v13);
  if (!result)
  {
    *(a2 + 40) = *(a2 + 52);
    *(a2 + 44) = NDR_record;
    *a2 |= 0x80000000;
    *(a2 + 4) = 68;
    *(a2 + 24) = 1;
    return result;
  }

  *(a2 + 32) = result;
LABEL_11:
  *(a2 + 24) = NDR_record;
  return result;
}

uint64_t asl_ipc_server(_DWORD *a1, uint64_t a2)
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
  if ((v4 - 123) >= 0xFFFFFFF7 && (v5 = _asl_ipc_subsystem[5 * (v4 - 114) + 5]) != 0)
  {
    (v5)(a1, a2);
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

void sub_100013A98(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a2;
  sub_100005CC8("FATAL ERROR: mach_msg() send failed with status 0x%08x\n", a2, a3, a4, a5, a6, a7, a8, a2);
  snprintf(a1, 0x100uLL, "[Sender syslogd] [Level 1] [PID %u] [Facility syslog] [Message FATAL ERROR: mach_msg() send failed with status 0x%08x]", dword_10002237C, v8);
  sub_100006950(a1);
  sleep(1u);
  abort();
}