double sub_1000013A4(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = sub_1000014D4(a2);
  v5 = malloc_type_malloc(104 * v4 + 208, 0x109004046C4FC64uLL);
  *(a1 + 16) = v5;
  *v5 = unk_100024450;
  v5[1] = unk_100024460;
  *(v5 + 12) = 0;
  v5[4] = unk_100024490;
  v5[5] = unk_1000244A0;
  v5[2] = xmmword_100024470;
  v5[3] = unk_100024480;
  if (v4)
  {
    v6 = 0;
    v7 = 1;
    while (1)
    {
      v8 = *(a2 + 16);
      if (*(v8 + v6 + 80) != 1)
      {
        goto LABEL_6;
      }

      if (SecIsInternalRelease())
      {
        break;
      }

LABEL_7:
      v6 += 104;
      if (!--v4)
      {
        goto LABEL_10;
      }
    }

    v8 = *(a2 + 16);
LABEL_6:
    v9 = *(a1 + 16) + 104 * v7++;
    v10 = (v8 + v6);
    v11 = *v10;
    v12 = v10[2];
    *(v9 + 16) = v10[1];
    *(v9 + 32) = v12;
    *v9 = v11;
    v13 = v10[3];
    v14 = v10[4];
    v15 = v10[5];
    *(v9 + 96) = *(v10 + 12);
    *(v9 + 64) = v14;
    *(v9 + 80) = v15;
    *(v9 + 48) = v13;
    goto LABEL_7;
  }

  v7 = 1;
LABEL_10:
  v16 = *(a1 + 16) + 104 * v7;
  *(v16 + 96) = 0;
  result = 0.0;
  *(v16 + 64) = 0u;
  *(v16 + 80) = 0u;
  *(v16 + 32) = 0u;
  *(v16 + 48) = 0u;
  *v16 = 0u;
  *(v16 + 16) = 0u;
  return result;
}

uint64_t sub_1000014D4(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = *(a1 + 16);
  v5 = 0;
  memset(v4, 0, sizeof(v4));
  v2 = 0;
  if (v1)
  {
    do
    {
      if (!memcmp(v1, v4, 0x68uLL))
      {
        break;
      }

      ++v2;
      v1 += 104;
    }

    while (v2 != 1024);
  }

  return v2;
}

uint64_t sub_10000154C(uint64_t result)
{
  if (!result)
  {
    return result;
  }

  memset(v39, 170, sizeof(v39));
  sub_1000013A4(v39, result);
  v1 = sub_1000014D4(v39);
  v2 = v39[0];
  if (!v39[0])
  {
    v2 = "command";
  }

  printf("usage: %s", v2);
  if (v1)
  {
    v3 = 0;
    v4 = v1;
    while (!*(v39[2] + v3))
    {
LABEL_17:
      v3 += 104;
      if (!--v4)
      {
        v7 = 0;
        v8 = v1;
        while (2)
        {
          if (!*(v39[2] + v7 + 8) || *(v39[2] + v7))
          {
            goto LABEL_31;
          }

          printf(" [--%s", *(v39[2] + v7 + 8));
          if (v39[2])
          {
            v9 = *(v39[2] + v7 + 48);
            if (*(v39[2] + v7 + 56))
            {
              if (!v9)
              {
                goto LABEL_30;
              }

LABEL_27:
              v10 = *(v39[2] + v7 + 40);
              if (!v10)
              {
                v10 = "arg";
              }

              printf(" %s", v10);
            }

            else if (v9 || *(v39[2] + v7 + 88))
            {
              goto LABEL_27;
            }
          }

LABEL_30:
          putchar(93);
LABEL_31:
          v7 += 104;
          if (!--v8)
          {
            v11 = 16;
            v12 = v1;
            do
            {
              if (*(v39[2] + v11))
              {
                printf(" [%s]", *(v39[2] + v11));
              }

              v11 += 104;
              --v12;
            }

            while (v12);
            v13 = 0;
            v14 = v1;
            do
            {
              if (*(v39[2] + v13 + 24))
              {
                if (*(v39[2] + v13 + 32))
                {
                  printf(" [<%s>]");
                }

                else
                {
                  printf(" <%s>");
                }
              }

              v13 += 104;
              --v14;
            }

            while (v14);
            goto LABEL_42;
          }

          continue;
        }
      }
    }

    printf(" [-%c", *(v39[2] + v3));
    if (v39[2])
    {
      v5 = *(v39[2] + v3 + 48);
      if (*(v39[2] + v3 + 56))
      {
        if (!v5)
        {
          goto LABEL_16;
        }
      }

      else if (!v5 && !*(v39[2] + v3 + 88))
      {
        goto LABEL_16;
      }

      v6 = *(v39[2] + v3 + 40);
      if (!v6)
      {
        v6 = "arg";
      }

      printf(" %s", v6);
    }

LABEL_16:
    putchar(93);
    goto LABEL_17;
  }

LABEL_42:
  putchar(10);
  if (v39[1])
  {
    printf("\n%s\n", v39[1]);
  }

  puts("\npositional arguments:");
  if (!v1)
  {
    puts("\noptional arguments:");
    puts("\noptional commands:");
    return putchar(10);
  }

  v15 = 0;
  v16 = v1;
  do
  {
    if (*(v39[2] + v15 + 24))
    {
      printf("  %-31s %s\n", *(v39[2] + v15 + 24), *(v39[2] + v15 + 72));
    }

    v15 += 104;
    --v16;
  }

  while (v16);
  puts("\noptional arguments:");
  v17 = 88;
  v18 = v1;
  do
  {
    if (!*(v39[2] + v17 - 88))
    {
      goto LABEL_81;
    }

    if (*(v39[2] + v17 - 80))
    {
      printf("  -%c", *(v39[2] + v17 - 88));
      v19 = v39[2];
      if (!v39[2])
      {
        goto LABEL_64;
      }

      v20 = *(v39[2] + v17 - 40);
      if (*(v39[2] + v17 - 32))
      {
        if (!v20)
        {
          goto LABEL_64;
        }
      }

      else if (!v20 && !*(v39[2] + v17))
      {
        goto LABEL_64;
      }

      v22 = *(v39[2] + v17 - 48);
      if (!v22)
      {
        v22 = "arg";
      }

      printf(" %s", v22);
      v19 = v39[2];
LABEL_64:
      v23 = v19 + v17;
      if (*(v19 + v17 - 80))
      {
        v25 = v23 - 40;
        v24 = *(v23 - 40);
        if (*(v25 + 8))
        {
          if (v24)
          {
            goto LABEL_73;
          }
        }

        else if (v24 || *(v19 + v17))
        {
LABEL_73:
          v27 = strlen(*(v19 + v17 - 80));
          if (*(v19 + v17 - 48))
          {
            v28 = *(v19 + v17 - 48);
          }

          else
          {
            v28 = "arg";
          }

          strlen(v28);
          printf(", --%s %-*s");
          goto LABEL_80;
        }

        if (*(v19 + v17 - 48))
        {
          v26 = *(v19 + v17 - 48);
        }

        else
        {
          v26 = "arg";
        }

        strlen(v26);
        printf(", --%-*s");
      }

      goto LABEL_80;
    }

    v21 = *(v39[2] + v17 - 40);
    if (*(v39[2] + v17 - 32))
    {
      if (v21)
      {
        goto LABEL_79;
      }
    }

    else if (v21 || *(v39[2] + v17))
    {
LABEL_79:
      printf("  -%c %-*s");
      goto LABEL_80;
    }

    printf("  -%-30c");
LABEL_80:
    puts(*(v39[2] + v17 - 16));
LABEL_81:
    v17 += 104;
    --v18;
  }

  while (v18);
  v29 = v1;
  while (2)
  {
    v30 = v39[2] + v18;
    if (*(v39[2] + v18 + 8) && !*v30)
    {
      v31 = *(v39[2] + v18 + 48);
      if (*(v39[2] + v18 + 56))
      {
        if (!v31)
        {
          goto LABEL_87;
        }

LABEL_90:
        memset(v49, 170, 22);
        *__str = 0xAAAAAAAAAAAAAAAALL;
        *&v32 = 0xAAAAAAAAAAAAAAAALL;
        *(&v32 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v47 = v32;
        v45 = v32;
        v46 = v32;
        v43 = v32;
        v44 = v32;
        v41 = v32;
        v42 = v32;
        *v40 = v32;
        v33 = *(v39[2] + v18 + 88);
        v34 = *(v30 + 8);
        v35 = *(v39[2] + v18 + 40);
        if (!v35)
        {
          v35 = "arg";
        }

        if (v33)
        {
          v36 = "%s %s...";
        }

        else
        {
          v36 = "%s %s";
        }

        if (v33)
        {
          v37 = "%s [repeatable]";
        }

        else
        {
          v37 = "%s";
        }

        snprintf(__str, 0x1EuLL, v36, v34, v35);
        snprintf(v40, 0x80uLL, v37, *(v39[2] + v18 + 72));
        printf("  --%-28s %s\n", __str, v40);
      }

      else
      {
        if (v31 || *(v39[2] + v18 + 88))
        {
          goto LABEL_90;
        }

LABEL_87:
        printf("  --%-28s %s\n", *(v39[2] + v18 + 8), *(v39[2] + v18 + 72));
      }
    }

    v18 += 104;
    if (--v29)
    {
      continue;
    }

    break;
  }

  puts("\noptional commands:");
  v38 = 0;
  do
  {
    if (*(v39[2] + v38 + 16))
    {
      printf("  %-30s %s\n", *(v39[2] + v38 + 16), *(v39[2] + v38 + 72));
    }

    v38 += 104;
    --v1;
  }

  while (v1);
  return putchar(10);
}

char **sub_100001B1C(uint64_t a1, const char *a2)
{
  v4 = *(a1 + 56);
  if (v4)
  {
    *v4 = *(a1 + 64);
  }

  result = *(a1 + 48);
  if (result)
  {
    result = asprintf(result, "%.1048576s", a2);
  }

  v6 = *(a1 + 88);
  if (v6)
  {
    v7 = **(a1 + 96);
    **(a1 + 88) = malloc_type_realloc(*v6, 8 * (v7 + 1), 0x10040436913F5uLL);
    result = asprintf((**(a1 + 88) + 8 * v7), "%.1048576s", a2);
    **(a1 + 96) = v7 + 1;
  }

  return result;
}

uint64_t start()
{
  v0 = __chkstk_darwin();
  v129 = v1;
  v127 = v0;
  v191 = 0;
  v190 = 0;
  v189 = 0;
  v188 = 0;
  v187 = 0;
  v186 = 0;
  v185 = 0;
  v184 = 0;
  v183 = 0;
  v182 = 0;
  v181 = 0;
  v180 = 0;
  v179 = 0;
  v178 = 0;
  v177 = 0;
  v176 = 0;
  v175 = 0;
  v174 = 0;
  v173 = 0;
  v171 = 0;
  v172 = 0;
  v169 = 0;
  v170 = 0;
  v167 = 0;
  v168 = 0;
  v165 = 0;
  v166 = 0;
  v163 = 0;
  v164 = 0;
  v162 = 0;
  v160 = 0;
  v161 = 0;
  v158 = 0;
  v159 = 0;
  v156 = 0;
  v157 = 0;
  v154 = 0;
  v155 = 0;
  v152 = 0;
  v153 = 0;
  v150 = 0;
  v151 = 0;
  v148 = 0;
  v149 = 0;
  v146 = 0;
  v147 = 0;
  v144 = 0;
  v145 = 0;
  v142 = 0;
  v143 = 0;
  v140 = 0;
  v141 = 0;
  v138 = 0;
  v139 = 0;
  v136 = 0;
  v137 = 0;
  v135 = 0;
  v134 = 0;
  memset(v227, 170, 0x24F8uLL);
  v201[0] = 115;
  v202 = 0u;
  v203 = 0u;
  v204 = 0u;
  v205 = 0;
  v207 = 0u;
  v201[1] = "secret";
  *&v204 = &v159;
  v206 = "escrow secret";
  v209 = 101;
  v213 = 0u;
  v214 = 0;
  v211 = 0u;
  v212 = 0u;
  v216 = 0u;
  v208 = 0;
  v217 = 0;
  v210 = "bottleID";
  *&v213 = &v161;
  v215 = "bottle record id";
  v226 = 0;
  v223 = 0;
  v225 = 0u;
  v221 = 0u;
  v222 = 0u;
  v218 = 114;
  v220 = 0u;
  v219 = "skipRateLimiting";
  *&v222 = &v158;
  v224 = " enter values YES or NO, option defaults to NO, This gives you the opportunity to skip the rate limiting check when performing the cuttlefish health check";
  LOBYTE(v227[0]) = 106;
  *(&v227[0] + 1) = "json";
  memset(&v227[1], 0, 17);
  *(&v227[2] + 8) = 0u;
  *(&v227[3] + 1) = &v152 + 4;
  LODWORD(v227[4]) = 1;
  *(&v227[4] + 1) = "Output in JSON";
  LOBYTE(v227[5]) = 0;
  *(&v227[5] + 8) = 0u;
  BYTE8(v227[6]) = 105;
  *&v227[7] = "recordID";
  BYTE8(v227[8]) = 0;
  *(&v227[7] + 8) = 0u;
  *&v227[9] = 0;
  *(&v227[9] + 1) = &v157;
  *&v227[10] = 0;
  DWORD2(v227[10]) = 1;
  *&v227[11] = "recordID";
  BYTE8(v227[11]) = 0;
  memset(&v227[18], 0, 24);
  *&v227[13] = 111;
  memset(&v227[14], 0, 56);
  v227[12] = 0u;
  *(&v227[13] + 1) = "overrideForAccountScript";
  *&v227[16] = &v156;
  *(&v227[17] + 1) = " enter values YES or NO, option defaults to NO, This flag is only meant for the setup account for icloud cdp signin script";
  *(&v227[25] + 1) = 0;
  *(&v227[23] + 1) = 0;
  *(&v227[24] + 8) = 0u;
  *(&v227[21] + 8) = 0u;
  *(&v227[22] + 8) = 0u;
  *(&v227[19] + 1) = 99;
  *(&v227[20] + 8) = 0u;
  *&v227[20] = "overrideEscrowCache";
  *(&v227[22] + 1) = &v155;
  *&v227[24] = " enter values YES or NO, option defaults to NO, include this if you want to force an escrow record fetch from cuttlefish for the freshest of escrow records";
  LOBYTE(v227[26]) = 69;
  *(&v227[26] + 1) = "enable";
  memset(&v227[27], 0, 17);
  *(&v227[28] + 8) = 0u;
  *(&v227[29] + 1) = &v153 + 4;
  LODWORD(v227[30]) = 1;
  *(&v227[30] + 1) = "Enable something (pair with a modification command)";
  LOBYTE(v227[31]) = 0;
  *(&v227[31] + 8) = 0u;
  BYTE8(v227[32]) = 80;
  *&v227[33] = "pause";
  BYTE8(v227[34]) = 0;
  *(&v227[33] + 8) = 0u;
  v227[35] = 0u;
  *&v227[36] = &v153;
  DWORD2(v227[36]) = 1;
  *&v227[37] = "Pause something (pair with a modification command)";
  BYTE8(v227[37]) = 0;
  memset(&v227[38], 0, 17);
  *(&v227[39] + 1) = "notifyIdMS";
  memset(&v227[40], 0, 17);
  *(&v227[41] + 8) = 0u;
  *(&v227[42] + 1) = &v152;
  LODWORD(v227[43]) = 1;
  *(&v227[43] + 1) = "Notify IdMS on reset";
  LOBYTE(v227[44]) = 1;
  BYTE8(v227[45]) = 0;
  *(&v227[44] + 8) = 0u;
  *&v227[46] = "forceFetch";
  BYTE8(v227[47]) = 0;
  *(&v227[46] + 8) = 0u;
  v227[48] = 0u;
  *&v227[49] = &v151;
  DWORD2(v227[49]) = 1;
  *&v227[50] = "Force fetch from cuttlefish";
  BYTE8(v227[50]) = 0;
  memset(&v227[51], 0, 17);
  *(&v227[52] + 1) = "repair";
  memset(&v227[53], 0, 17);
  *(&v227[54] + 8) = 0u;
  *(&v227[55] + 1) = &v150 + 4;
  LODWORD(v227[56]) = 1;
  *(&v227[56] + 1) = "Perform repair as part of health check";
  LOBYTE(v227[57]) = 0;
  BYTE8(v227[58]) = 0;
  *(&v227[57] + 8) = 0u;
  *&v227[59] = "danglingPeerCleanup";
  BYTE8(v227[60]) = 0;
  *(&v227[59] + 8) = 0u;
  v227[61] = 0u;
  *&v227[62] = &v150;
  DWORD2(v227[62]) = 1;
  *&v227[63] = "Perform dangling peer cleanup as part of health check";
  BYTE8(v227[63]) = 0;
  memset(&v227[64], 0, 17);
  *(&v227[65] + 1) = "caesarPeerCleanup";
  memset(&v227[66], 0, 17);
  *(&v227[67] + 8) = 0u;
  *(&v227[68] + 1) = &v149 + 4;
  LODWORD(v227[69]) = 1;
  *(&v227[69] + 1) = "Perform caesar peer cleanup as part of health check";
  LOBYTE(v227[70]) = 0;
  BYTE8(v227[71]) = 0;
  *(&v227[70] + 8) = 0u;
  *&v227[72] = "updateIdMS";
  BYTE8(v227[73]) = 0;
  *(&v227[72] + 8) = 0u;
  v227[74] = 0u;
  *&v227[75] = &v149;
  DWORD2(v227[75]) = 1;
  *&v227[76] = "Perform IdMS update as part of health check";
  BYTE8(v227[76]) = 0;
  memset(&v227[83], 0, 25);
  *&v227[78] = 97;
  memset(&v227[79], 0, 56);
  v227[77] = 0u;
  *(&v227[78] + 1) = "machineID";
  *&v227[81] = &v154;
  *(&v227[82] + 1) = "machineID override";
  *&v227[85] = "dbrv2";
  BYTE8(v227[86]) = 0;
  *(&v227[85] + 8) = 0u;
  v227[87] = 0u;
  *&v227[88] = &v134;
  DWORD2(v227[88]) = 1;
  *&v227[89] = "Flag to indicate the account is DBRv2";
  BYTE8(v227[89]) = 0;
  memset(&v227[96], 0, 32);
  memset(&v227[92], 0, 56);
  memset(&v227[90], 0, 24);
  *(&v227[91] + 1) = "altDSID";
  *&v227[94] = &v148;
  *(&v227[95] + 1) = "altDSID (for sign-in/out)";
  *(&v227[103] + 1) = 0;
  *(&v227[102] + 8) = 0u;
  *(&v227[101] + 1) = 0;
  *(&v227[100] + 8) = 0u;
  *(&v227[99] + 8) = 0u;
  *(&v227[98] + 8) = 0u;
  *&v227[98] = "entropy";
  *(&v227[100] + 1) = &v159;
  *&v227[102] = "escrowed entropy in JSON";
  memset(&v227[109], 0, 32);
  *&v227[104] = 0;
  memset(&v227[105], 0, 56);
  *(&v227[104] + 1) = "appleID";
  *&v227[107] = &v145;
  *(&v227[108] + 1) = "AppleID";
  *(&v227[116] + 1) = 0;
  *(&v227[115] + 8) = 0u;
  *(&v227[114] + 1) = 0;
  *(&v227[113] + 8) = 0u;
  *(&v227[112] + 8) = 0u;
  *(&v227[111] + 8) = 0u;
  *&v227[111] = "dsid";
  *(&v227[113] + 1) = &v144;
  *&v227[115] = "DSID";
  BYTE8(v227[115]) = 1;
  memset(&v227[122], 0, 32);
  *&v227[117] = 0;
  memset(&v227[118], 0, 56);
  *(&v227[117] + 1) = "container";
  *&v227[120] = &v147;
  *(&v227[121] + 1) = "CloudKit container name";
  *(&v227[129] + 1) = 0;
  *(&v227[128] + 8) = 0u;
  *(&v227[127] + 1) = 0;
  *(&v227[126] + 8) = 0u;
  *(&v227[125] + 8) = 0u;
  *(&v227[124] + 8) = 0u;
  *&v227[124] = "context";
  *(&v227[126] + 1) = &v160;
  *&v227[128] = "Context name";
  memset(&v227[135], 0, 32);
  *&v227[130] = 0;
  memset(&v227[131], 0, 56);
  *(&v227[130] + 1) = "radar";
  *&v227[133] = &v146;
  *(&v227[134] + 1) = "Radar number";
  *(&v227[142] + 1) = 0;
  *(&v227[141] + 8) = 0u;
  *(&v227[140] + 1) = 0;
  *(&v227[139] + 8) = 0u;
  *(&v227[138] + 8) = 0u;
  *(&v227[137] + 8) = 0u;
  *&v227[137] = "wrapping-key";
  *(&v227[139] + 1) = &v143;
  *&v227[141] = "Wrapping key (for joinWithCustodianRecoveryKey)";
  BYTE8(v227[141]) = 1;
  memset(&v227[148], 0, 32);
  *&v227[143] = 0;
  memset(&v227[144], 0, 56);
  *(&v227[143] + 1) = "wrapped-key";
  *&v227[146] = &v142;
  *(&v227[147] + 1) = "Wrapped key (for joinWithCustodianRecoveryKey)";
  LOBYTE(v227[148]) = 1;
  *(&v227[155] + 1) = 0;
  *(&v227[154] + 8) = 0u;
  *(&v227[153] + 1) = 0;
  *(&v227[152] + 8) = 0u;
  *(&v227[151] + 8) = 0u;
  *(&v227[150] + 8) = 0u;
  *&v227[150] = "claim-token";
  *(&v227[152] + 1) = &v141;
  *&v227[154] = "Claim token for inheritance";
  BYTE8(v227[154]) = 1;
  memset(&v227[161], 0, 32);
  *&v227[156] = 0;
  memset(&v227[157], 0, 56);
  *(&v227[156] + 1) = "custodianUUID";
  *&v227[159] = &v140;
  *(&v227[160] + 1) = "UUID for joinWithCustodianRecoveryKey";
  LOBYTE(v227[161]) = 1;
  *(&v227[168] + 1) = 0;
  *(&v227[167] + 8) = 0u;
  *(&v227[166] + 1) = 0;
  *(&v227[165] + 8) = 0u;
  *(&v227[164] + 8) = 0u;
  *(&v227[163] + 8) = 0u;
  *&v227[163] = "inheritanceUUID";
  *(&v227[165] + 1) = &v139;
  *&v227[167] = "UUID for joinWithInheritanceKey";
  BYTE8(v227[167]) = 1;
  memset(&v227[174], 0, 32);
  *&v227[169] = 0;
  memset(&v227[170], 0, 56);
  *(&v227[169] + 1) = "timeout";
  *&v227[172] = &v138;
  *(&v227[173] + 1) = "timeout for command (in s)";
  *(&v227[181] + 1) = 0;
  *(&v227[180] + 8) = 0u;
  *(&v227[179] + 1) = 0;
  *(&v227[178] + 8) = 0u;
  *(&v227[177] + 8) = 0u;
  *(&v227[176] + 8) = 0u;
  *&v227[176] = "idms-target-context";
  *(&v227[178] + 1) = &v136;
  *&v227[180] = "idmsTargetContext";
  BYTE8(v227[180]) = 1;
  memset(&v227[187], 0, 25);
  *&v227[182] = 0;
  memset(&v227[183], 0, 56);
  *(&v227[182] + 1) = "idms-cuttlefish-password";
  *&v227[185] = &v135;
  *(&v227[186] + 1) = "idmsCuttlefishPassword";
  LOBYTE(v227[187]) = 1;
  *&v227[189] = 0;
  *(&v227[189] + 1) = "start";
  *&v227[190] = 0;
  BYTE8(v227[190]) = 0;
  v227[191] = 0u;
  *&v227[192] = &v191 + 4;
  DWORD2(v227[192]) = 1;
  *&v227[193] = "Start Octagon state machine";
  BYTE8(v227[193]) = 1;
  *(&v227[195] + 1) = 0;
  memset(&v227[194], 0, 17);
  *&v227[196] = "sign-in";
  *(&v227[196] + 1) = 0;
  LOBYTE(v227[197]) = 0;
  *(&v227[197] + 8) = 0u;
  *(&v227[198] + 1) = &v191;
  LODWORD(v227[199]) = 1;
  *(&v227[199] + 1) = "Inform Cuttlefish container of sign in";
  LOBYTE(v227[200]) = 1;
  *&v227[202] = 0;
  BYTE8(v227[201]) = 0;
  *(&v227[200] + 8) = 0u;
  *(&v227[202] + 1) = "sign-out";
  *&v227[203] = 0;
  BYTE8(v227[203]) = 0;
  v227[204] = 0u;
  *&v227[205] = &v190 + 4;
  DWORD2(v227[205]) = 1;
  *&v227[206] = "Inform Cuttlefish container of sign out";
  BYTE8(v227[206]) = 1;
  memset(&v227[207], 0, 17);
  *&v227[209] = "status";
  *(&v227[211] + 1) = &v186;
  v227[295] = 0u;
  DWORD2(v227[296]) = 1;
  v227[308] = 0u;
  v227[321] = 0u;
  v227[334] = 0u;
  v227[347] = 0u;
  v227[360] = 0u;
  v227[373] = 0u;
  v227[386] = 0u;
  v227[399] = 0u;
  v227[412] = 0u;
  v227[425] = 0u;
  *(&v227[212] + 1) = "Report Octagon status";
  *(&v227[434] + 8) = 0u;
  *(&v227[433] + 1) = "Remove an inheritance key";
  LOBYTE(v227[434]) = 1;
  *&v227[436] = 0;
  BYTE8(v227[435]) = 0;
  *(&v227[432] + 1) = &v172 + 4;
  *(&v227[431] + 8) = 0u;
  LODWORD(v227[433]) = 1;
  *&v227[430] = "remove-inheritance-key";
  memset(&v227[428], 0, 17);
  *(&v227[430] + 1) = 0;
  LOBYTE(v227[431]) = 0;
  *&v227[427] = "Preflight join with an inheritance key";
  BYTE8(v227[427]) = 1;
  *(&v227[429] + 1) = 0;
  *&v227[426] = &v173;
  BYTE8(v227[424]) = 0;
  DWORD2(v227[426]) = 1;
  *(&v227[208] + 1) = 0;
  *(&v227[423] + 1) = "preflight-join-with-inheritance-key";
  *(&v227[421] + 8) = 0u;
  *&v227[424] = 0;
  *(&v227[420] + 1) = "Join with an inheritance key";
  LOBYTE(v227[421]) = 1;
  *&v227[423] = 0;
  BYTE8(v227[422]) = 0;
  *(&v227[419] + 1) = &v173 + 4;
  *(&v227[418] + 8) = 0u;
  LODWORD(v227[420]) = 1;
  *&v227[417] = "join-with-inheritance-key";
  memset(&v227[415], 0, 17);
  *(&v227[417] + 1) = 0;
  LOBYTE(v227[418]) = 0;
  *&v227[414] = "Store an inheritance key";
  BYTE8(v227[414]) = 1;
  *(&v227[416] + 1) = 0;
  *&v227[413] = &v174;
  BYTE8(v227[411]) = 0;
  DWORD2(v227[413]) = 1;
  *(&v227[410] + 1) = "store-inheritance-key";
  *(&v227[408] + 8) = 0u;
  *&v227[411] = 0;
  *(&v227[407] + 1) = "Generate an inheritance key";
  LOBYTE(v227[408]) = 1;
  *&v227[410] = 0;
  BYTE8(v227[409]) = 0;
  *(&v227[406] + 1) = &v174 + 4;
  *(&v227[405] + 8) = 0u;
  LODWORD(v227[407]) = 1;
  *&v227[404] = "generate-inheritance-key";
  memset(&v227[402], 0, 17);
  *(&v227[404] + 1) = 0;
  LOBYTE(v227[405]) = 0;
  *&v227[401] = "Create an inheritance key";
  BYTE8(v227[401]) = 1;
  *(&v227[403] + 1) = 0;
  *&v227[400] = &v175;
  BYTE8(v227[398]) = 0;
  DWORD2(v227[400]) = 1;
  *(&v227[209] + 1) = 0;
  *(&v227[397] + 1) = "create-inheritance-key";
  *(&v227[395] + 8) = 0u;
  *&v227[398] = 0;
  *(&v227[394] + 1) = "Check a custodian recovery key for existence";
  LOBYTE(v227[395]) = 1;
  *&v227[397] = 0;
  BYTE8(v227[396]) = 0;
  *(&v227[393] + 1) = &v178;
  *(&v227[392] + 8) = 0u;
  LODWORD(v227[394]) = 1;
  *&v227[391] = "check-custodian-recovery-key";
  memset(&v227[389], 0, 17);
  *(&v227[391] + 1) = 0;
  LOBYTE(v227[392]) = 0;
  *&v227[388] = "Remove a custodian recovery key";
  BYTE8(v227[388]) = 1;
  *(&v227[390] + 1) = 0;
  *&v227[387] = &v178 + 4;
  BYTE8(v227[385]) = 0;
  DWORD2(v227[387]) = 1;
  LOBYTE(v227[210]) = 0;
  *(&v227[384] + 1) = "remove-custodian-recovery-key";
  *(&v227[382] + 8) = 0u;
  *&v227[385] = 0;
  *(&v227[381] + 1) = "Preflight join with a custodian recovery key";
  LOBYTE(v227[382]) = 1;
  *&v227[384] = 0;
  BYTE8(v227[383]) = 0;
  *(&v227[380] + 1) = &v179;
  *(&v227[379] + 8) = 0u;
  LODWORD(v227[381]) = 1;
  *&v227[378] = "preflight-join-with-custodian-recovery-key";
  memset(&v227[376], 0, 17);
  *(&v227[378] + 1) = 0;
  LOBYTE(v227[379]) = 0;
  *&v227[375] = "Join with a custodian recovery key";
  BYTE8(v227[375]) = 1;
  *(&v227[377] + 1) = 0;
  *&v227[374] = &v179 + 4;
  BYTE8(v227[372]) = 0;
  DWORD2(v227[374]) = 1;
  *(&v227[210] + 8) = 0u;
  *(&v227[371] + 1) = "join-with-custodian-recovery-key";
  *(&v227[369] + 8) = 0u;
  *&v227[372] = 0;
  *(&v227[368] + 1) = "Create a custodian recovery key";
  LOBYTE(v227[369]) = 1;
  *&v227[371] = 0;
  BYTE8(v227[370]) = 0;
  *(&v227[367] + 1) = &v180;
  *(&v227[366] + 8) = 0u;
  LODWORD(v227[368]) = 1;
  *&v227[365] = "create-custodian-recovery-key";
  memset(&v227[363], 0, 17);
  *(&v227[365] + 1) = 0;
  LOBYTE(v227[366]) = 0;
  *&v227[362] = "Reset an account's CDP contents (escrow records, kvs data, cuttlefish)";
  BYTE8(v227[362]) = 1;
  *(&v227[364] + 1) = 0;
  *&v227[361] = &v180 + 4;
  BYTE8(v227[359]) = 0;
  DWORD2(v227[361]) = 1;
  LODWORD(v227[212]) = 1;
  *(&v227[358] + 1) = "reset-account-cdp-contents";
  *(&v227[356] + 8) = 0u;
  *&v227[359] = 0;
  *(&v227[355] + 1) = "Silent record recovery";
  LOBYTE(v227[356]) = 0;
  *&v227[358] = 0;
  BYTE8(v227[357]) = 0;
  *(&v227[354] + 1) = &v181;
  *(&v227[353] + 8) = 0u;
  LODWORD(v227[355]) = 1;
  *&v227[352] = "recover-record-silent";
  memset(&v227[350], 0, 17);
  *(&v227[352] + 1) = 0;
  LOBYTE(v227[353]) = 0;
  *&v227[349] = "Recover record";
  BYTE8(v227[349]) = 0;
  *(&v227[351] + 1) = 0;
  *&v227[348] = &v181 + 4;
  BYTE8(v227[346]) = 0;
  DWORD2(v227[348]) = 1;
  LOBYTE(v227[213]) = 0;
  *(&v227[345] + 1) = "recover-record";
  *(&v227[343] + 8) = 0u;
  *&v227[346] = 0;
  *(&v227[342] + 1) = "Fetch All Escrow Records";
  LOBYTE(v227[343]) = 0;
  *&v227[345] = 0;
  BYTE8(v227[344]) = 0;
  *(&v227[341] + 1) = &v182;
  *(&v227[340] + 8) = 0u;
  LODWORD(v227[342]) = 1;
  *&v227[339] = "fetchAllEscrowRecords";
  memset(&v227[337], 0, 17);
  *(&v227[339] + 1) = 0;
  LOBYTE(v227[340]) = 0;
  *&v227[336] = "Fetch Escrow Records";
  BYTE8(v227[336]) = 0;
  *(&v227[338] + 1) = 0;
  *&v227[335] = &v182 + 4;
  BYTE8(v227[333]) = 0;
  DWORD2(v227[335]) = 1;
  *&v227[215] = 0;
  *(&v227[332] + 1) = "fetchEscrowRecords";
  *(&v227[330] + 8) = 0u;
  *&v227[333] = 0;
  *(&v227[329] + 1) = "Trigger a TapToRadar";
  LOBYTE(v227[330]) = 1;
  *&v227[332] = 0;
  BYTE8(v227[331]) = 0;
  *(&v227[328] + 1) = &v183;
  *(&v227[327] + 8) = 0u;
  LODWORD(v227[329]) = 1;
  *&v227[326] = "taptoradar";
  memset(&v227[324], 0, 17);
  *(&v227[326] + 1) = 0;
  LOBYTE(v227[327]) = 0;
  *&v227[323] = "Simulates receiving a TDL changed push";
  BYTE8(v227[323]) = 1;
  *(&v227[325] + 1) = 0;
  *&v227[322] = &v162;
  BYTE8(v227[320]) = 0;
  DWORD2(v227[322]) = 1;
  BYTE8(v227[214]) = 0;
  *(&v227[319] + 1) = "simulate-receive-tdl-push";
  *(&v227[317] + 8) = 0u;
  *&v227[320] = 0;
  *(&v227[316] + 1) = "Trigger a refetch of the CKKS policy";
  LOBYTE(v227[317]) = 0;
  *&v227[319] = 0;
  BYTE8(v227[318]) = 0;
  *(&v227[315] + 1) = &v183 + 4;
  *(&v227[314] + 8) = 0u;
  LODWORD(v227[316]) = 1;
  *&v227[313] = "ckks-policy";
  memset(&v227[311], 0, 17);
  *(&v227[313] + 1) = 0;
  LOBYTE(v227[314]) = 0;
  *&v227[310] = "Simulate receiving a Octagon push notification";
  BYTE8(v227[310]) = 1;
  *(&v227[312] + 1) = 0;
  *&v227[309] = &v166;
  BYTE8(v227[307]) = 0;
  DWORD2(v227[309]) = 1;
  *(&v227[213] + 8) = 0u;
  *(&v227[306] + 1) = "simulate-receive-push";
  *(&v227[304] + 8) = 0u;
  *&v227[307] = 0;
  *(&v227[303] + 1) = "Check current peer iCSC validity";
  LOBYTE(v227[304]) = 0;
  *&v227[306] = 0;
  BYTE8(v227[305]) = 0;
  *(&v227[302] + 1) = &v166 + 4;
  *(&v227[301] + 8) = 0u;
  LODWORD(v227[303]) = 1;
  *&v227[300] = "escrowCheck";
  memset(&v227[298], 0, 17);
  *(&v227[300] + 1) = 0;
  LOBYTE(v227[301]) = 0;
  *(&v227[215] + 1) = "resetoctagon";
  BYTE8(v227[297]) = 0;
  *(&v227[299] + 1) = 0;
  BYTE8(v227[294]) = 0;
  *&v227[296] = &v167;
  *&v227[297] = "Check Octagon Health status";
  *(&v227[293] + 1) = "health";
  *(&v227[291] + 8) = 0u;
  *&v227[294] = 0;
  *(&v227[290] + 1) = "Store any pending Escrow Request prerecords";
  LOBYTE(v227[291]) = 0;
  *&v227[293] = 0;
  BYTE8(v227[292]) = 0;
  *(&v227[289] + 1) = &v184;
  *(&v227[288] + 8) = 0u;
  LODWORD(v227[290]) = 1;
  *&v227[287] = "er-store";
  memset(&v227[285], 0, 17);
  *(&v227[287] + 1) = 0;
  LOBYTE(v227[288]) = 0;
  *(&v227[224] + 1) = &v189 + 4;
  BYTE8(v227[284]) = 0;
  *(&v227[286] + 1) = 0;
  *&v227[283] = &v184 + 4;
  DWORD2(v227[283]) = 1;
  *&v227[284] = "Delete all Escrow Request requests";
  *(&v227[280] + 1) = "er-reset";
  *&v227[281] = 0;
  BYTE8(v227[281]) = 0;
  v227[282] = 0u;
  *&v227[280] = 0;
  BYTE8(v227[279]) = 0;
  *(&v227[278] + 8) = 0u;
  *(&v227[276] + 1) = &v185;
  LODWORD(v227[277]) = 1;
  *(&v227[277] + 1) = "Report status on any pending Escrow Request requests";
  LOBYTE(v227[278]) = 0;
  *&v227[274] = "er-status";
  *(&v227[274] + 1) = 0;
  LOBYTE(v227[275]) = 0;
  *(&v227[275] + 8) = 0u;
  *(&v227[273] + 1) = 0;
  memset(&v227[272], 0, 17);
  DWORD2(v227[270]) = 1;
  *&v227[271] = "Trigger an Escrow Request request";
  BYTE8(v227[271]) = 1;
  BYTE8(v227[268]) = 0;
  v227[269] = 0u;
  *&v227[270] = &v185 + 4;
  BYTE8(v227[266]) = 0;
  *(&v227[265] + 8) = 0u;
  *(&v227[267] + 1) = "er-trigger";
  *&v227[268] = 0;
  LODWORD(v227[264]) = 1;
  *(&v227[264] + 1) = "Depart from Octagon Trust";
  LOBYTE(v227[265]) = 1;
  *&v227[267] = 0;
  LOBYTE(v227[262]) = 0;
  *(&v227[262] + 8) = 0u;
  *(&v227[263] + 1) = &v186 + 4;
  memset(&v227[259], 0, 17);
  *&v227[261] = "depart";
  *(&v227[261] + 1) = 0;
  BYTE8(v227[255]) = 0;
  *&v227[258] = "Recover using this bottle";
  BYTE8(v227[258]) = 0;
  *(&v227[260] + 1) = 0;
  v227[256] = 0u;
  *&v227[257] = &v187;
  DWORD2(v227[257]) = 1;
  LODWORD(v227[225]) = 1;
  *(&v227[252] + 8) = 0u;
  *(&v227[254] + 1) = "recover";
  *&v227[255] = 0;
  *(&v227[251] + 1) = "Fetch all viable bottles";
  LOBYTE(v227[252]) = 0;
  *&v227[254] = 0;
  BYTE8(v227[253]) = 0;
  *(&v227[249] + 8) = 0u;
  *(&v227[250] + 1) = &v187 + 4;
  LODWORD(v227[251]) = 1;
  memset(&v227[246], 0, 17);
  *&v227[248] = "allBottles";
  *(&v227[248] + 1) = 0;
  LOBYTE(v227[249]) = 0;
  v227[243] = 0u;
  BYTE8(v227[245]) = 1;
  *(&v227[247] + 1) = 0;
  *&v227[244] = &v188;
  DWORD2(v227[244]) = 1;
  *&v227[245] = "Modify or view user-controllable views status (If one of --enable or --pause is passed, will modify status)";
  *(&v227[239] + 8) = 0u;
  *(&v227[241] + 1) = "user-controllable-views";
  *&v227[242] = 0;
  BYTE8(v227[242]) = 0;
  *(&v227[236] + 8) = 0u;
  LOBYTE(v227[239]) = 1;
  *&v227[241] = 0;
  BYTE8(v227[240]) = 0;
  *(&v227[237] + 1) = &v188 + 4;
  LODWORD(v227[238]) = 1;
  *(&v227[238] + 1) = "Remove Unreadable CK Data";
  *&v227[235] = "performCKServerUnreadableDataRemoval";
  *(&v227[235] + 1) = 0;
  LOBYTE(v227[236]) = 0;
  v227[230] = 0u;
  BYTE8(v227[232]) = 1;
  *(&v227[234] + 1) = 0;
  memset(&v227[233], 0, 17);
  *&v227[231] = &v189;
  DWORD2(v227[231]) = 1;
  *&v227[232] = "Reset Octagon trust";
  *(&v227[226] + 8) = 0u;
  *(&v227[228] + 1) = "reset";
  *&v227[229] = 0;
  BYTE8(v227[229]) = 0;
  *(&v227[225] + 1) = "Reset ProtectedData";
  LOBYTE(v227[226]) = 1;
  *&v227[228] = 0;
  BYTE8(v227[227]) = 0;
  *&v227[216] = 0;
  BYTE8(v227[216]) = 0;
  *(&v227[222] + 1) = 0;
  LOBYTE(v227[223]) = 0;
  *(&v227[223] + 8) = 0u;
  memset(&v227[220], 0, 17);
  *&v227[222] = "resetProtectedData";
  v227[217] = 0u;
  *&v227[219] = "Reset and establish new Octagon trust";
  BYTE8(v227[219]) = 1;
  *(&v227[221] + 1) = 0;
  *&v227[218] = &v190;
  DWORD2(v227[218]) = 1;
  *(&v227[436] + 1) = "check-inheritance-key";
  *&v227[437] = 0;
  BYTE8(v227[437]) = 0;
  v227[438] = 0u;
  *&v227[439] = &v172;
  DWORD2(v227[439]) = 1;
  *&v227[440] = "Check an inheritance key for existence";
  BYTE8(v227[440]) = 1;
  *(&v227[442] + 1) = 0;
  memset(&v227[441], 0, 17);
  *&v227[443] = "recreate-inheritance-key";
  *(&v227[443] + 1) = 0;
  LOBYTE(v227[444]) = 0;
  *(&v227[444] + 8) = 0u;
  *(&v227[445] + 1) = &v171 + 4;
  LODWORD(v227[446]) = 1;
  *(&v227[446] + 1) = "Recreate an inheritance key";
  LOBYTE(v227[447]) = 1;
  *&v227[449] = 0;
  BYTE8(v227[448]) = 0;
  *(&v227[447] + 8) = 0u;
  *(&v227[449] + 1) = "create-inheritance-key-with-claim-wrapping";
  *&v227[450] = 0;
  v227[451] = 0u;
  BYTE8(v227[450]) = 0;
  *&v227[452] = &v171;
  DWORD2(v227[452]) = 1;
  *&v227[453] = "Create an inheritance key given claim+wrapping key";
  BYTE8(v227[453]) = 1;
  *(&v227[455] + 1) = 0;
  memset(&v227[454], 0, 17);
  *&v227[456] = "tlk-recoverability";
  *(&v227[456] + 1) = 0;
  LOBYTE(v227[457]) = 0;
  *(&v227[457] + 8) = 0u;
  *(&v227[458] + 1) = &v165 + 4;
  LODWORD(v227[459]) = 1;
  *(&v227[459] + 1) = "Evaluate tlk recoverability for an account";
  LOBYTE(v227[460]) = 1;
  *&v227[462] = 0;
  BYTE8(v227[461]) = 0;
  *(&v227[460] + 8) = 0u;
  *(&v227[462] + 1) = "set-machine-id-override";
  *&v227[463] = 0;
  BYTE8(v227[463]) = 0;
  v227[464] = 0u;
  *&v227[465] = &v165;
  DWORD2(v227[465]) = 1;
  *&v227[466] = "Set machineID override";
  BYTE8(v227[466]) = 0;
  *(&v227[468] + 1) = 0;
  memset(&v227[467], 0, 17);
  *&v227[469] = "remove-recovery-key";
  *(&v227[469] + 1) = 0;
  LOBYTE(v227[470]) = 0;
  *(&v227[470] + 8) = 0u;
  *(&v227[471] + 1) = &v177;
  LODWORD(v227[472]) = 1;
  *(&v227[472] + 1) = "Remove a recovery key";
  LOBYTE(v227[473]) = 1;
  *&v227[475] = 0;
  BYTE8(v227[474]) = 0;
  *(&v227[473] + 8) = 0u;
  *(&v227[475] + 1) = "set-recovery-key";
  *&v227[476] = 0;
  BYTE8(v227[476]) = 0;
  v227[477] = 0u;
  *&v227[478] = &v177 + 4;
  DWORD2(v227[478]) = 1;
  *&v227[479] = "Set a recovery key";
  BYTE8(v227[479]) = 1;
  *(&v227[481] + 1) = 0;
  memset(&v227[480], 0, 17);
  *&v227[482] = "join-with-recovery-key";
  *(&v227[482] + 1) = 0;
  LOBYTE(v227[483]) = 0;
  *(&v227[483] + 8) = 0u;
  *(&v227[484] + 1) = &v176 + 4;
  LODWORD(v227[485]) = 1;
  *(&v227[485] + 1) = "Join with a recovery key";
  LOBYTE(v227[486]) = 1;
  *&v227[488] = 0;
  BYTE8(v227[487]) = 0;
  *(&v227[486] + 8) = 0u;
  *(&v227[488] + 1) = "check-recovery-key";
  *&v227[489] = 0;
  v227[490] = 0u;
  BYTE8(v227[489]) = 0;
  *&v227[491] = &v176;
  DWORD2(v227[491]) = 1;
  *&v227[492] = "Check a recovery key";
  BYTE8(v227[492]) = 1;
  *(&v227[494] + 1) = 0;
  memset(&v227[493], 0, 17);
  *&v227[495] = "preflight-join-with-recovery-key";
  *(&v227[495] + 1) = 0;
  LOBYTE(v227[496]) = 0;
  *(&v227[496] + 8) = 0u;
  *(&v227[497] + 1) = &v175 + 4;
  LODWORD(v227[498]) = 1;
  *(&v227[498] + 1) = "Preflight join with a recovery key";
  LOBYTE(v227[499]) = 1;
  *(&v227[506] + 1) = 0;
  *(&v227[505] + 8) = 0u;
  *(&v227[504] + 1) = 0;
  *(&v227[503] + 8) = 0u;
  *(&v227[502] + 8) = 0u;
  *(&v227[501] + 8) = 0u;
  *(&v227[500] + 1) = 0;
  *(&v227[499] + 8) = 0u;
  *&v227[501] = "recoveryKey";
  *(&v227[503] + 1) = &v137;
  *&v227[505] = "recovery key";
  LOBYTE(v227[507]) = 0;
  *(&v227[507] + 1) = 0;
  *&v227[508] = "enable-walrus";
  *(&v227[508] + 1) = 0;
  LOBYTE(v227[509]) = 0;
  *(&v227[509] + 8) = 0u;
  *(&v227[510] + 1) = &v169;
  LODWORD(v227[511]) = 1;
  *(&v227[511] + 1) = "Enable Walrus Setting";
  LOBYTE(v227[512]) = 1;
  *&v227[514] = 0;
  BYTE8(v227[513]) = 0;
  *(&v227[512] + 8) = 0u;
  *(&v227[514] + 1) = "disable-walrus";
  *&v227[515] = 0;
  BYTE8(v227[515]) = 0;
  v227[516] = 0u;
  *&v227[517] = &v168 + 4;
  DWORD2(v227[517]) = 1;
  *&v227[518] = "Disable Walrus Setting";
  BYTE8(v227[518]) = 1;
  *(&v227[520] + 1) = 0;
  memset(&v227[519], 0, 17);
  *&v227[521] = "enable-webaccess";
  *(&v227[521] + 1) = 0;
  LOBYTE(v227[522]) = 0;
  *(&v227[522] + 8) = 0u;
  *(&v227[523] + 1) = &v168;
  LODWORD(v227[524]) = 1;
  *(&v227[524] + 1) = "Enable Web Access Setting";
  LOBYTE(v227[525]) = 1;
  *&v227[527] = 0;
  BYTE8(v227[526]) = 0;
  *(&v227[525] + 8) = 0u;
  *(&v227[527] + 1) = "disable-webaccess";
  *&v227[528] = 0;
  BYTE8(v227[528]) = 0;
  v227[529] = 0u;
  *&v227[530] = &v167 + 4;
  DWORD2(v227[530]) = 1;
  *&v227[531] = "Disable Web Access Setting";
  BYTE8(v227[531]) = 1;
  *(&v227[533] + 1) = 0;
  memset(&v227[532], 0, 17);
  *&v227[534] = "fetch-account-state";
  *(&v227[534] + 1) = 0;
  LOBYTE(v227[535]) = 0;
  *(&v227[535] + 8) = 0u;
  *(&v227[536] + 1) = &v170 + 4;
  LODWORD(v227[537]) = 1;
  *(&v227[537] + 1) = "Fetch Account Settings";
  LOBYTE(v227[538]) = 1;
  *&v227[540] = 0;
  BYTE8(v227[539]) = 0;
  *(&v227[538] + 8) = 0u;
  *(&v227[540] + 1) = "fetch-account-wide-state";
  *&v227[541] = 0;
  BYTE8(v227[541]) = 0;
  v227[542] = 0u;
  *&v227[543] = &v170;
  DWORD2(v227[543]) = 1;
  *&v227[544] = "Fetch Account Wide Settings";
  BYTE8(v227[544]) = 1;
  *(&v227[546] + 1) = 0;
  memset(&v227[545], 0, 17);
  *&v227[547] = "fetch-account-wide-state-default";
  *(&v227[547] + 1) = 0;
  LOBYTE(v227[548]) = 0;
  *(&v227[548] + 8) = 0u;
  *(&v227[549] + 1) = &v169 + 4;
  LODWORD(v227[550]) = 1;
  *(&v227[550] + 1) = "Fetch Account Wide Settings with Default";
  LOBYTE(v227[551]) = 1;
  *&v227[553] = 0;
  BYTE8(v227[552]) = 0;
  *(&v227[551] + 8) = 0u;
  *(&v227[553] + 1) = "print-account-metadata";
  *&v227[554] = 0;
  BYTE8(v227[554]) = 0;
  v227[555] = 0u;
  *&v227[556] = &v151 + 4;
  DWORD2(v227[556]) = 1;
  *&v227[557] = "Print Account Metadata";
  BYTE8(v227[557]) = 1;
  *(&v227[559] + 1) = 0;
  memset(&v227[558], 0, 17);
  *&v227[560] = "reroll";
  *(&v227[560] + 1) = 0;
  LOBYTE(v227[561]) = 0;
  *(&v227[561] + 8) = 0u;
  *(&v227[562] + 1) = &v164 + 4;
  LODWORD(v227[563]) = 1;
  *(&v227[563] + 1) = "Reroll PeerID";
  LOBYTE(v227[564]) = 1;
  *&v227[566] = 0;
  BYTE8(v227[565]) = 0;
  *(&v227[564] + 8) = 0u;
  *(&v227[566] + 1) = "icsc-repair-reset";
  *&v227[567] = 0;
  BYTE8(v227[567]) = 0;
  v227[568] = 0u;
  *&v227[569] = &v164;
  DWORD2(v227[569]) = 1;
  *&v227[570] = "Reset icsc repair rate-limiting";
  BYTE8(v227[570]) = 1;
  *(&v227[572] + 1) = 0;
  memset(&v227[571], 0, 17);
  *&v227[573] = "total-trusted-peers";
  *(&v227[573] + 1) = 0;
  LOBYTE(v227[574]) = 0;
  *(&v227[574] + 8) = 0u;
  *(&v227[575] + 1) = &v163 + 4;
  LODWORD(v227[576]) = 1;
  *(&v227[576] + 1) = "Fetch total trusted peers";
  LOBYTE(v227[577]) = 0;
  *&v227[579] = 0;
  BYTE8(v227[578]) = 0;
  *(&v227[577] + 8) = 0u;
  *(&v227[579] + 1) = "trusted-full-peers";
  *&v227[580] = 0;
  BYTE8(v227[580]) = 0;
  v227[581] = 0u;
  *&v227[582] = &v163;
  DWORD2(v227[582]) = 1;
  *&v227[583] = "Fetch trusted full peers";
  BYTE8(v227[583]) = 0;
  memset(&v227[584], 0, 120);
  v133[0] = "otctl";
  v133[1] = "Control and report on Octagon Trust";
  v133[2] = v201;
  memset(v200, 170, sizeof(v200));
  sub_1000013A4(v200, v133);
  v2 = sub_1000014D4(v200);
  v3 = malloc_type_calloc(v2 + 1, 0x20uLL, 0x10500402E37B38AuLL);
  v4 = 2 * v2 + 2;
  v5 = malloc_type_malloc(v4, 0x100004077774924uLL);
  v6 = v5;
  v7 = 0;
  v8 = 0;
  v9 = v200[2];
  v10 = v200[2] + 48;
  do
  {
    if (v7 >= v2)
    {
      goto LABEL_13;
    }

    v11 = *(v10 - 5);
    if (v11)
    {
      v12 = &v3[v7];
      v12->name = v11;
      v14 = *v10;
      v13 = *(v10 + 1);
      if (v13)
      {
        v15 = 2 * (v14 != 0);
      }

      else if (v14)
      {
        v15 = 1;
      }

      else
      {
        v15 = *(v10 + 5) != 0;
      }

      v12->has_arg = v15;
      v12->flag = v13;
      v12->val = *(v10 + 4);
      ++v7;
    }

    ++v8;
    v10 += 104;
  }

  while (v8 <= v2);
  if (v7 < v2)
  {
    v16 = &v3[v7];
    v16->name = 0;
    v16->has_arg = 0;
    v16->flag = 0;
    v16->val = 0;
LABEL_14:
    v17 = 0;
    v18 = v9 + 48;
    v19 = v2;
    while (1)
    {
      if (*(v18 - 48))
      {
        if (v17 >= v4)
        {
          goto LABEL_25;
        }

        v5[v17] = *(v18 - 48);
        v20 = v17 + 1;
        if (!v18[1] && (*v18 || v18[5]))
        {
          if (v20 >= v4)
          {
LABEL_25:
            v125 = 0;
            goto LABEL_28;
          }

          v5[v20] = 58;
          v17 += 2;
        }

        else
        {
          ++v17;
        }
      }

      v18 += 13;
      if (!--v19)
      {
        v125 = 0;
        goto LABEL_27;
      }
    }
  }

LABEL_13:
  if (v2)
  {
    goto LABEL_14;
  }

  v17 = 0;
  v125 = 1;
LABEL_27:
  v5[v17] = 0;
LABEL_28:
  v199 = 0;
  do
  {
    while (1)
    {
      v21 = getopt_long(v127, v129, v6, v3, &v199);
      if (v21)
      {
        break;
      }

      if (!v199)
      {
LABEL_169:
        sub_10000154C(v200);
        exit(1);
      }

      if ((v125 & 1) == 0)
      {
        v23 = 0;
        p_name = &v3[v199].name;
        v25 = v2;
        do
        {
          v26 = v200[2] + v23;
          v27 = *(v200[2] + v23 + 8);
          if (v27)
          {
            if (*p_name)
            {
              v28 = strlen(*(v200[2] + v23 + 8));
              if (!strncmp(*p_name, v27, v28))
              {
                v29 = *(v26 + 5);
                v196 = *(v26 + 4);
                v197 = v29;
                v198 = *(v26 + 12);
                v30 = *(v26 + 1);
                v192 = *v26;
                v193 = v30;
                v31 = *(v26 + 3);
                v194 = *(v26 + 2);
                v195 = v31;
                sub_100001B1C(&v192, optarg);
              }
            }
          }

          v23 += 104;
          --v25;
        }

        while (v25);
      }
    }

    if (v21 == -1)
    {
      v39 = optind;
      if (optind >= v127)
      {
LABEL_71:
        free(v200[2]);
        free(v3);
        free(v6);
      }

      else
      {
        v40 = 0;
        do
        {
          v41 = v40;
          if ((v125 & 1) == 0)
          {
            v42 = v200[2];
            v43 = v2;
            while (1)
            {
              v44 = *(v42 + 2);
              if (v44)
              {
                if (!strcmp(v129[v39], v44))
                {
                  break;
                }
              }

              v42 += 104;
              if (!--v43)
              {
                goto LABEL_60;
              }
            }

            v47 = *(v42 + 5);
            v196 = *(v42 + 4);
            v197 = v47;
            v198 = *(v42 + 12);
            v48 = *(v42 + 1);
            v192 = *v42;
            v193 = v48;
            v49 = *(v42 + 3);
            v194 = *(v42 + 2);
            v195 = v49;
            sub_100001B1C(&v192, 0);
            goto LABEL_71;
          }

LABEL_60:
          v36 = v200[2];
          if (v41 >= v2)
          {
            goto LABEL_50;
          }

          v45 = v200[2] + 104 * v41 + 24;
          v40 = v41;
          while (!*v45)
          {
            ++v40;
            v45 += 13;
            if (v2 == v40)
            {
              goto LABEL_49;
            }
          }

          v46 = *(v200[2] + 13 * v40 + 6);
          if (v46)
          {
            *v46 = v129[v39];
            ++v40;
          }

          ++v39;
        }

        while (v39 != v127);
        free(v200[2]);
        free(v3);
        free(v6);
        if (v41 >= v2)
        {
          goto LABEL_51;
        }
      }

      v50 = objc_autoreleasePoolPush();
      v132 = 0;
      v51 = [OTControl controlObject:1 error:&v132];
      v52 = v132;
      if (v52 || !v51)
      {
        [v52 description];
        [objc_claimAutoreleasedReturnValue() UTF8String];
        errx(1, "no OTControl failed: %s");
      }

      if (v160)
      {
        v53 = [NSString stringWithCString:v160 encoding:4];
      }

      else
      {
        v53 = OTDefaultContext;
      }

      v130 = v53;
      if (v147)
      {
        v128 = [NSString stringWithCString:v147 encoding:4];
      }

      else
      {
        v128 = @"com.apple.security.keychain";
        v54 = @"com.apple.security.keychain";
      }

      if (v148)
      {
        v126 = [NSString stringWithCString:v148 encoding:4];
      }

      else
      {
        v126 = 0;
      }

      if (v144)
      {
        v119 = [NSString stringWithCString:v144 encoding:4];
      }

      else
      {
        v119 = 0;
      }

      if (v145)
      {
        v121 = [NSString stringWithCString:v145 encoding:4];
      }

      else
      {
        v121 = 0;
      }

      if (v158)
      {
        v111 = [NSString stringWithCString:v158 encoding:4];
      }

      else
      {
        v111 = @"NO";
      }

      if (v143)
      {
        v118 = [NSString stringWithCString:v143 encoding:4];
      }

      else
      {
        v118 = 0;
      }

      if (v142)
      {
        v117 = [NSString stringWithCString:v142 encoding:4];
      }

      else
      {
        v117 = 0;
      }

      if (v141)
      {
        v116 = [NSString stringWithCString:v141 encoding:4];
      }

      else
      {
        v116 = 0;
      }

      if (v140)
      {
        v110 = [NSString stringWithCString:v140 encoding:4];
      }

      else
      {
        v110 = 0;
      }

      if (v139)
      {
        v115 = [NSString stringWithCString:v139 encoding:4];
      }

      else
      {
        v115 = 0;
      }

      if (v138)
      {
        v55 = [NSString stringWithCString:v138 encoding:4];
        v56 = [v55 integerValue];
      }

      else
      {
        v56 = 600.0;
      }

      if (v136)
      {
        v57 = [NSString stringWithCString:v136 encoding:4];
      }

      else
      {
        v57 = 0;
      }

      if (v135)
      {
        v58 = [NSString stringWithCString:v135 encoding:4];
      }

      else
      {
        v58 = 0;
      }

      if (v156)
      {
        v114 = [NSString stringWithCString:v156 encoding:4];
      }

      else
      {
        v114 = @"NO";
      }

      if (v155)
      {
        v59 = [NSString stringWithCString:v155 encoding:4];
      }

      else
      {
        v59 = @"NO";
      }

      v60 = [(__CFString *)v59 isEqualToString:@"YES"];
      v123 = v58;
      v124 = v57;
      context = v50;
      v113 = v59;
      if (v137)
      {
        v112 = [NSString stringWithCString:v137 encoding:4];
      }

      else
      {
        v112 = 0;
      }

      v122 = v51;
      v61 = [[OTControlCLI alloc] initWithOTControl:v51];
      v62 = [OTControlArguments alloc];
      v63 = +[NSUUID UUID];
      v64 = [v63 UUIDString];
      v65 = [NSString stringWithFormat:@"otctl-flowID-%@", v64];
      v66 = +[NSUUID UUID];
      v67 = [v66 UUIDString];
      v68 = [NSString stringWithFormat:@"otctl-deviceSessionID-%@", v67];
      v69 = [v62 initWithContainerName:v128 contextID:v130 altDSID:v126 flowID:v65 deviceSessionID:v68];

      v70 = [EscrowRequestCLI alloc];
      v131 = 0;
      v71 = [SecEscrowRequest request:&v131];
      v72 = v131;
      v73 = [(EscrowRequestCLI *)v70 initWithEscrowRequest:v71];

      if (v72)
      {
        [v72 description];
        [objc_claimAutoreleasedReturnValue() UTF8String];
        errx(1, "SecEscrowRequest failed: %s");
      }

      v75 = v123;
      v74 = v124;
      v109 = v73;
      if (v190)
      {
        v76 = v61;
        v77 = [(OTControlCLI *)v61 resetOctagon:v69 idmsTargetContext:v124 idmsCuttlefishPassword:v123 notifyIdMS:v152 != 0 isDBRv2:v134 != 0 timeout:v56];
LABEL_128:
        v37 = v77;
        v78 = v119;
        v79 = v121;
LABEL_136:
        v82 = v110;
        v81 = v111;
LABEL_137:
        v83 = v122;
LABEL_138:

        objc_autoreleasePoolPop(context);
        return v37;
      }

      v76 = v61;
      if (HIDWORD(v189))
      {
        LOBYTE(v107) = v152 != 0;
        v79 = v121;
        v78 = v119;
        v80 = [(OTControlCLI *)v61 resetProtectedData:v69 appleID:v121 dsid:v119 idmsTargetContext:v124 idmsCuttlefishPassword:v123 isGuitarfish:0 notifyIdMS:v107];
LABEL_135:
        v37 = v80;
        goto LABEL_136;
      }

      if (v189)
      {
        v79 = v121;
        v78 = v119;
        v80 = [(OTControlCLI *)v61 reset:v69 appleID:v121 isGuitarfish:0 dsid:v119];
        goto LABEL_135;
      }

      if (HIDWORD(v188))
      {
        v79 = v121;
        v78 = v119;
        v80 = [(OTControlCLI *)v61 performCKServerUnreadableDataRemoval:v69 appleID:v121 isGuitarfish:0 dsid:v119];
        goto LABEL_135;
      }

      if (v188)
      {
        v82 = v110;
        v81 = v111;
        if (!HIDWORD(v153) || !v153)
        {
          v78 = v119;
          v79 = v121;
          v83 = v122;
          if (v153)
          {
            v85 = [(OTControlCLI *)v76 setUserControllableViewsSyncStatus:v69 enabled:HIDWORD(v153) != 0];
          }

          else
          {
            v85 = [(OTControlCLI *)v76 fetchUserControllableViewsSyncStatus:v69];
          }

          v37 = v85;
          goto LABEL_138;
        }

        sub_10000154C(v133);
        v37 = 1;
        v78 = v119;
        v79 = v121;
        goto LABEL_137;
      }

      if (HIDWORD(v187))
      {
        v84 = v61;
        v83 = v122;
        v37 = [(OTControlCLI *)v84 fetchAllBottles:v69 control:v122 overrideEscrowCache:v60];
        v78 = v119;
        v79 = v121;
        v82 = v110;
        v81 = v111;
        goto LABEL_138;
      }

      if (v187)
      {
        if (v159)
        {
          v86 = [NSString stringWithCString:v159 encoding:4];
        }

        else
        {
          v86 = 0;
        }

        v108 = v86;
        if (v161)
        {
          v88 = [NSString stringWithCString:v161 encoding:4];
          v89 = v88;
          if (v86 && v88)
          {
            v90 = [[NSData alloc] initWithBase64EncodedString:v86 options:0];
            if (!v90)
            {
              errx(1, "bad base64 string passed to --entropy");
            }

            v91 = v90;
            v37 = [(OTControlCLI *)v61 recoverUsingBottleID:v89 entropy:v90 arguments:v69 control:v122];

            v78 = v119;
            v79 = v121;
            v82 = v110;
            v81 = v111;
            v75 = v123;
            v74 = v124;
            goto LABEL_163;
          }

          v75 = v123;
          v74 = v124;
        }

        else
        {
          v89 = 0;
        }

        sub_10000154C(v133);
        v37 = 1;
        v78 = v119;
        v79 = v121;
        v82 = v110;
        v81 = v111;
LABEL_163:

LABEL_164:
        v76 = v61;
        goto LABEL_137;
      }

      if (HIDWORD(v186))
      {
        v76 = v61;
        v87 = [(OTControlCLI *)v61 depart:v69];
LABEL_178:
        v37 = v87;
LABEL_179:
        v78 = v119;
        v79 = v121;
        v81 = v111;
LABEL_180:
        v82 = v110;
LABEL_181:
        v75 = v123;
        v74 = v124;
        goto LABEL_137;
      }

      if (HIDWORD(v191))
      {
        v76 = v61;
        v87 = [(OTControlCLI *)v61 startOctagonStateMachine:v69];
        goto LABEL_178;
      }

      if (v191)
      {
        v76 = v61;
        v87 = [(OTControlCLI *)v61 signIn:v69];
        goto LABEL_178;
      }

      if (HIDWORD(v190))
      {
        v76 = v61;
        v87 = [(OTControlCLI *)v61 signOut:v69];
        goto LABEL_178;
      }

      if (v186)
      {
        v76 = v61;
        v87 = [(OTControlCLI *)v61 status:v69 json:HIDWORD(v152) != 0];
        goto LABEL_178;
      }

      if (HIDWORD(v182))
      {
        v76 = v61;
        v87 = [(OTControlCLI *)v61 fetchEscrowRecords:v69 json:HIDWORD(v152) != 0 overrideEscrowCache:v60];
        goto LABEL_178;
      }

      if (v182)
      {
        v76 = v61;
        v87 = [(OTControlCLI *)v61 fetchAllEscrowRecords:v69 json:HIDWORD(v152) != 0 overrideEscrowCache:v60];
        goto LABEL_178;
      }

      if (v165)
      {
        if (v154)
        {
          v92 = [NSString stringWithCString:v154 encoding:4];
          v93 = [v92 description];
          printf("machineID: %s\n", [v93 UTF8String]);
        }

        else
        {
          puts("unsetting machineID");
          v92 = 0;
        }

        v37 = [(OTControlCLI *)v61 setMachineIDOverride:v69 machineID:v92 json:HIDWORD(v152) != 0];

        v76 = v61;
        goto LABEL_179;
      }

      if (HIDWORD(v181))
      {
        if (v157)
        {
          v94 = [NSString stringWithCString:v157 encoding:4];
        }

        else
        {
          v94 = 0;
        }

        if (v159)
        {
          v96 = [NSString stringWithCString:v159 encoding:4];
          v97 = v96;
          if (v94 && v96 && v121)
          {
            v37 = [(OTControlCLI *)v61 performEscrowRecovery:v69 recordID:v94 appleID:v121 secret:v96 overrideForAccountScript:[(__CFString *)v114 isEqualToString:@"YES"] overrideEscrowCache:v60];
LABEL_205:

LABEL_211:
            v78 = v119;
            v79 = v121;
            v82 = v110;
            v81 = v111;
            v75 = v123;
            v74 = v124;
            goto LABEL_164;
          }
        }

        else
        {
          v97 = 0;
        }

        sub_10000154C(v133);
        v37 = 1;
        goto LABEL_205;
      }

      if (v181)
      {
        if (v159)
        {
          v95 = [NSString stringWithCString:v159 encoding:4];
          if (v95 && v121)
          {
            v37 = [(OTControlCLI *)v61 performSilentEscrowRecovery:v69 appleID:v121 secret:v95];
LABEL_210:

            goto LABEL_211;
          }
        }

        else
        {
          v95 = 0;
        }

        sub_10000154C(v133);
        v37 = 1;
        goto LABEL_210;
      }

      if (v167)
      {
        v81 = v111;
        v98 = [(__CFString *)v111 isEqualToString:@"YES"];
        LOBYTE(v107) = HIDWORD(v152) != 0;
        v76 = v61;
        v37 = [(OTControlCLI *)v61 healthCheck:v69 skipRateLimitingCheck:v98 repair:HIDWORD(v150) != 0 danglingPeerCleanup:v150 != 0 caesarPeerCleanup:HIDWORD(v149) != 0 updateIdMS:v149 != 0 json:v107];
        v78 = v119;
        v79 = v121;
        goto LABEL_180;
      }

      if (HIDWORD(v166))
      {
        v76 = v61;
        v87 = [(OTControlCLI *)v61 escrowCheck:v69 json:HIDWORD(v152) != 0];
        goto LABEL_178;
      }

      if (v166)
      {
        v76 = v61;
        v87 = [(OTControlCLI *)v61 simulateReceivePush:v69 json:HIDWORD(v152) != 0];
        goto LABEL_178;
      }

      if (v162)
      {
        v76 = v61;
        v87 = [(OTControlCLI *)v61 simulateReceiveTDLChangePush:v69 json:HIDWORD(v152) != 0];
        goto LABEL_178;
      }

      if (HIDWORD(v165))
      {
        v76 = v61;
        v87 = [(OTControlCLI *)v61 tlkRecoverability:v69];
        goto LABEL_178;
      }

      if (HIDWORD(v183))
      {
        v76 = v61;
        v87 = [(OTControlCLI *)v61 refetchCKKSPolicy:v69];
        goto LABEL_178;
      }

      if (v183)
      {
        if (!v146)
        {
          v146 = "1";
        }

        v99 = [NSString stringWithUTF8String:?];
        v76 = v61;
        v37 = [(OTControlCLI *)v61 tapToRadar:@"action" description:@"description" radar:v99];

        goto LABEL_179;
      }

      if (HIDWORD(v180))
      {
        v76 = v61;
        v75 = v123;
        v74 = v124;
        v77 = [(OTControlCLI *)v61 resetAccountCDPContentsWithArguments:v69 idmsTargetContext:v124 idmsCuttlefishPassword:v123 notifyIdMS:v152 != 0];
        goto LABEL_128;
      }

      if (v180)
      {
        v76 = v61;
        v82 = v110;
        v100 = [(OTControlCLI *)v61 createCustodianRecoveryKeyWithArguments:v69 uuidString:v110 json:HIDWORD(v152) != 0 timeout:v56];
LABEL_231:
        v37 = v100;
        v78 = v119;
        v79 = v121;
        v81 = v111;
        goto LABEL_181;
      }

      if (HIDWORD(v179))
      {
        if (v118 && v117 && v110)
        {
          v76 = v61;
          v82 = v110;
          v100 = [(OTControlCLI *)v61 joinWithCustodianRecoveryKeyWithArguments:v69 wrappingKey:v118 wrappedKey:v117 uuidString:v110 timeout:v56];
          goto LABEL_231;
        }
      }

      else if (v179)
      {
        if (v118 && v117 && v110)
        {
          v76 = v61;
          v82 = v110;
          v100 = [(OTControlCLI *)v61 preflightJoinWithCustodianRecoveryKeyWithArguments:v69 wrappingKey:v118 wrappedKey:v117 uuidString:v110 timeout:v56];
          goto LABEL_231;
        }
      }

      else if (HIDWORD(v178))
      {
        if (v110)
        {
          v76 = v61;
          v82 = v110;
          v100 = [(OTControlCLI *)v61 removeCustodianRecoveryKeyWithArguments:v69 uuidString:v110 timeout:v56];
          goto LABEL_231;
        }
      }

      else
      {
        if (!v178)
        {
          if (v177)
          {
            v76 = v61;
            v87 = [(OTControlCLI *)v61 removeRecoveryKeyWithArguments:v69];
            goto LABEL_178;
          }

          if (HIDWORD(v177))
          {
            v76 = v61;
            v87 = [(OTControlCLI *)v61 setRecoveryKeyWithArguments:v69];
            goto LABEL_178;
          }

          if (HIDWORD(v176))
          {
            if (v112)
            {
              v76 = v61;
              v87 = [(OTControlCLI *)v61 joinWithRecoveryKeyWithArguments:v69 recoveryKey:v112];
              goto LABEL_178;
            }

            goto LABEL_328;
          }

          if (v176)
          {
            v76 = v61;
            v87 = [(OTControlCLI *)v61 checkRecoveryKeyWithArguments:v69];
            goto LABEL_178;
          }

          if (HIDWORD(v175))
          {
            if (v112)
            {
              v76 = v61;
              v87 = [(OTControlCLI *)v61 preflightJoinWithRecoveryKeyWithArguments:v69 recoveryKey:v112];
              goto LABEL_178;
            }

            goto LABEL_328;
          }

          if (v175)
          {
            v76 = v61;
            v87 = [(OTControlCLI *)v61 createInheritanceKeyWithArguments:v69 uuidString:v115 json:HIDWORD(v152) != 0 timeout:v56];
            goto LABEL_178;
          }

          if (HIDWORD(v174))
          {
            v76 = v61;
            v87 = [(OTControlCLI *)v61 generateInheritanceKeyWithArguments:v69 json:HIDWORD(v152) != 0 timeout:v56];
            goto LABEL_178;
          }

          if (v174)
          {
            if (v118 && v117 && v115)
            {
              v76 = v61;
              v87 = [(OTControlCLI *)v61 storeInheritanceKeyWithArguments:v69 wrappingKey:v118 wrappedKey:v117 uuidString:v115 timeout:v56];
              goto LABEL_178;
            }

            goto LABEL_328;
          }

          if (HIDWORD(v173))
          {
            if (v118 && v117 && v115)
            {
              v76 = v61;
              v87 = [(OTControlCLI *)v61 joinWithInheritanceKeyWithArguments:v69 wrappingKey:v118 wrappedKey:v117 uuidString:v115 timeout:v56];
              goto LABEL_178;
            }

            goto LABEL_328;
          }

          if (v173)
          {
            if (v118 && v117 && v115)
            {
              v76 = v61;
              v87 = [(OTControlCLI *)v61 preflightJoinWithInheritanceKeyWithArguments:v69 wrappingKey:v118 wrappedKey:v117 uuidString:v115 timeout:v56];
              goto LABEL_178;
            }

            goto LABEL_328;
          }

          if (HIDWORD(v172))
          {
            if (v115)
            {
              v76 = v61;
              v87 = [(OTControlCLI *)v61 removeInheritanceKeyWithArguments:v69 uuidString:v115 timeout:v56];
              goto LABEL_178;
            }

            goto LABEL_328;
          }

          if (v172)
          {
            if (v115)
            {
              v76 = v61;
              v87 = [(OTControlCLI *)v61 checkInheritanceKeyWithArguments:v69 uuidString:v115 timeout:v56];
              goto LABEL_178;
            }

            goto LABEL_328;
          }

          if (HIDWORD(v171))
          {
            if (v118 && v117 && v116)
            {
              v76 = v61;
              v87 = [(OTControlCLI *)v61 recreateInheritanceKeyWithArguments:v69 uuidString:v115 wrappingKey:v118 wrappedKey:v117 claimToken:v116 json:HIDWORD(v152) != 0 timeout:v56];
              goto LABEL_178;
            }

            goto LABEL_328;
          }

          if (v171)
          {
            if (v118 && v116)
            {
              v76 = v61;
              v87 = [(OTControlCLI *)v61 createInheritanceKeyWithClaimTokenAndWrappingKey:v69 uuidString:v115 claimToken:v116 wrappingKey:v118 json:HIDWORD(v152) != 0 timeout:v56];
              goto LABEL_178;
            }

            goto LABEL_328;
          }

          if (v169)
          {
            v76 = v61;
            v87 = [(OTControlCLI *)v61 enableWalrusWithArguments:v69 timeout:v56];
            goto LABEL_178;
          }

          if (HIDWORD(v168))
          {
            v76 = v61;
            v87 = [(OTControlCLI *)v61 disableWalrusWithArguments:v69 timeout:v56];
            goto LABEL_178;
          }

          if (v168)
          {
            v76 = v61;
            v87 = [(OTControlCLI *)v61 enableWebAccessWithArguments:v69 timeout:v56];
            goto LABEL_178;
          }

          if (HIDWORD(v167))
          {
            v76 = v61;
            v87 = [(OTControlCLI *)v61 disableWebAccessWithArguments:v69 timeout:v56];
            goto LABEL_178;
          }

          if (HIDWORD(v170))
          {
            v76 = v61;
            v87 = [(OTControlCLI *)v61 fetchAccountSettingsWithArguments:v69 json:HIDWORD(v152) != 0];
            goto LABEL_178;
          }

          if (v170)
          {
            v101 = v151 != 0;
            v102 = HIDWORD(v152) != 0;
            v76 = v61;
            v103 = v61;
            v104 = v69;
            v105 = 0;
          }

          else
          {
            if (!HIDWORD(v169))
            {
              if (HIDWORD(v185))
              {
                v106 = [(EscrowRequestCLI *)v73 trigger];
              }

              else if (v185)
              {
                v106 = [(EscrowRequestCLI *)v73 status];
              }

              else if (HIDWORD(v184))
              {
                v106 = [(EscrowRequestCLI *)v73 reset];
              }

              else
              {
                if (!v184)
                {
                  if (HIDWORD(v151))
                  {
                    v76 = v61;
                    v87 = [(OTControlCLI *)v61 printAccountMetadataWithArguments:v69 json:HIDWORD(v152) != 0];
                    goto LABEL_178;
                  }

                  if (HIDWORD(v164))
                  {
                    v76 = v61;
                    v87 = [(OTControlCLI *)v61 rerollWithArguments:v69 json:HIDWORD(v152) != 0];
                    goto LABEL_178;
                  }

                  if (v164)
                  {
                    v76 = v61;
                    v87 = [(OTControlCLI *)v61 icscRepairResetWithArguments:v69 json:HIDWORD(v152) != 0];
                    goto LABEL_178;
                  }

                  if (HIDWORD(v163))
                  {
                    v76 = v61;
                    v87 = [(OTControlCLI *)v61 fetchTotalTrustedPeersWithArguments:v69 json:HIDWORD(v152) != 0];
                    goto LABEL_178;
                  }

                  if (v163)
                  {
                    v76 = v61;
                    v87 = [(OTControlCLI *)v61 fetchTrustedFullPeersWithArguments:v69 json:HIDWORD(v152) != 0];
                    goto LABEL_178;
                  }

                  goto LABEL_328;
                }

                v106 = [(EscrowRequestCLI *)v73 storePrerecordsInEscrow];
              }

              v37 = v106;
              goto LABEL_211;
            }

            v101 = v151 != 0;
            v102 = HIDWORD(v152) != 0;
            v76 = v61;
            v103 = v61;
            v104 = v69;
            v105 = 1;
          }

          v87 = [(OTControlCLI *)v103 fetchAccountWideSettingsWithArguments:v104 useDefault:v105 forceFetch:v101 json:v102];
          goto LABEL_178;
        }

        if (v110)
        {
          v76 = v61;
          v82 = v110;
          v100 = [(OTControlCLI *)v61 checkCustodianRecoveryKeyWithArguments:v69 uuidString:v110 timeout:v56];
          goto LABEL_231;
        }
      }

LABEL_328:
      sub_10000154C(v133);
      v37 = 1;
      goto LABEL_211;
    }

    if (v21 == 104)
    {
      goto LABEL_169;
    }

    if (v125)
    {
      v22 = 0;
    }

    else
    {
      v22 = 0;
      v32 = v200[2];
      while (v21 != *v32)
      {
        ++v22;
        v32 += 104;
        if (v2 == v22)
        {
          goto LABEL_49;
        }
      }

      v33 = *(v32 + 5);
      v196 = *(v32 + 4);
      v197 = v33;
      v198 = *(v32 + 12);
      v34 = *(v32 + 1);
      v192 = *v32;
      v193 = v34;
      v35 = *(v32 + 3);
      v194 = *(v32 + 2);
      v195 = v35;
      sub_100001B1C(&v192, optarg);
    }
  }

  while (v22 != v2);
LABEL_49:
  v36 = v200[2];
LABEL_50:
  free(v36);
  free(v3);
  free(v6);
LABEL_51:
  putchar(10);
  sub_10000154C(v133);
  return 1;
}

id sub_100004E60(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (!(v3 | v4))
  {
    NSLog(@"Must provide either an AppleID or a DSID to fetch a PET");
    exit(1);
  }

  v5 = v4;
  v6 = objc_alloc_init(AKAppleIDAuthenticationContext);
  [v6 setUsername:v3];
  [v6 setAuthenticationType:1];
  [v6 setIsUsernameEditable:0];
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = sub_100005028;
  v19 = sub_100005038;
  v20 = 0;
  v7 = dispatch_semaphore_create(0);
  v8 = objc_alloc_init(AKAppleIDAuthenticationController);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100005040;
  v12[3] = &unk_1000247E8;
  v14 = &v15;
  v9 = v7;
  v13 = v9;
  [v8 authenticateWithContext:v6 completion:v12];
  dispatch_semaphore_wait(v9, 0xFFFFFFFFFFFFFFFFLL);
  v10 = v16[5];

  _Block_object_dispose(&v15, 8);

  return v10;
}

void sub_100005010(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100005028(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100005040(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  if (v5)
  {
    NSLog(@"error fetching PET: %@", v5);
    exit(1);
  }

  v6 = [v9 objectForKeyedSubscript:AKAuthenticationPasswordKey];
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_100005360(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100005378(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  v8 = *(a1 + 40);
  if (v6)
  {
    if (*(a1 + 40))
    {
      v16 = @"error";
      v9 = [v6 description];
      v17 = v9;
      v10 = [NSDictionary dictionaryWithObjects:&v17 forKeys:&v16 count:1];
      sub_1000054EC(v10);
    }

    else
    {
      v12 = __stderrp;
      v13 = [v6 description];
      fprintf(v12, "Error fetching trusted full peer count: %s\n", [v13 UTF8String]);
    }
  }

  else
  {
    if (*(a1 + 40))
    {
      v14 = @"total_trusted_full_peer_count";
      v15 = v5;
      v11 = [NSDictionary dictionaryWithObjects:&v15 forKeys:&v14 count:1];
      sub_1000054EC(v11);
    }

    else
    {
      printf("Total trusted full peers: %d.\n", [v5 intValue]);
    }

    *(*(*(a1 + 32) + 8) + 24) = 0;
  }
}

void sub_1000054EC(void *a1)
{
  v1 = sub_1000055B8(a1);
  v5 = 0;
  v2 = [NSJSONSerialization dataWithJSONObject:v1 options:3 error:&v5];
  v3 = v5;

  if (v2)
  {
    v4 = [[NSString alloc] initWithData:v2 encoding:4];
    puts([v4 UTF8String]);
  }

  else
  {
    v4 = [v3 localizedDescription];
    NSLog(@"error during JSONification: %@", v4);
  }
}

id sub_1000055B8(void *a1)
{
  if (a1)
  {
    v1 = [a1 mutableCopy];
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v2 = [v1 allKeys];
    v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = *v12;
      do
      {
        for (i = 0; i != v4; i = i + 1)
        {
          if (*v12 != v5)
          {
            objc_enumerationMutation(v2);
          }

          v7 = *(*(&v11 + 1) + 8 * i);
          v8 = [v1 objectForKeyedSubscript:v7];
          v9 = sub_100005710(v8);
          [v1 setObject:v9 forKeyedSubscript:v7];
        }

        v4 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v4);
    }
  }

  else
  {
    v1 = 0;
  }

  return v1;
}

id sub_100005710(void *a1)
{
  v1 = a1;
  if (!v1)
  {
    v6 = 0;
    goto LABEL_10;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v23[0] = @"code";
    v2 = v1;
    v3 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v2 code]);
    v23[1] = @"domain";
    v24[0] = v3;
    v4 = [v2 domain];
    v24[1] = v4;
    v5 = [NSDictionary dictionaryWithObjects:v24 forKeys:v23 count:2];
    v6 = [v5 mutableCopy];

    v7 = [v2 userInfo];

    v8 = sub_1000055B8(v7);
    [v6 setObject:v8 forKeyedSubscript:@"userInfo"];
LABEL_4:

    goto LABEL_10;
  }

  if ([NSJSONSerialization isValidJSONObject:v1]|| (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v9 = v1;
LABEL_9:
    v6 = v9;
    goto LABEL_10;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = [v1 base64EncodedStringWithOptions:0];
    goto LABEL_9;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = sub_1000055B8(v1);
    goto LABEL_9;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = v1;
      v7 = objc_alloc_init(NSISO8601DateFormatter);
      v6 = [v7 stringFromDate:v8];
      goto LABEL_4;
    }

    v9 = [v1 description];
    goto LABEL_9;
  }

  v11 = v1;
  v6 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v11 count]);
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v12 = v11;
  v13 = [v12 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v19;
    do
    {
      for (i = 0; i != v14; i = i + 1)
      {
        if (*v19 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = sub_100005710(*(*(&v18 + 1) + 8 * i));
        [v6 addObject:{v17, v18}];
      }

      v14 = [v12 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v14);
  }

LABEL_10:

  return v6;
}

void sub_100005B48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100005B60(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  v8 = *(a1 + 40);
  if (v6)
  {
    if (*(a1 + 40))
    {
      v16 = @"error";
      v9 = [v6 description];
      v17 = v9;
      v10 = [NSDictionary dictionaryWithObjects:&v17 forKeys:&v16 count:1];
      sub_1000054EC(v10);
    }

    else
    {
      v12 = __stderrp;
      v13 = [v6 description];
      fprintf(v12, "Error fetching trusted peer count: %s\n", [v13 UTF8String]);
    }
  }

  else
  {
    if (*(a1 + 40))
    {
      v14 = @"total_trusted_peer_count";
      v15 = v5;
      v11 = [NSDictionary dictionaryWithObjects:&v15 forKeys:&v14 count:1];
      sub_1000054EC(v11);
    }

    else
    {
      printf("Total trusted peers: %d.\n", [v5 intValue]);
    }

    *(*(*(a1 + 32) + 8) + 24) = 0;
  }
}

void sub_100005DB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100005DCC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  v5 = *(a1 + 40);
  if (v3)
  {
    if (*(a1 + 40))
    {
      v10 = @"error";
      v6 = [v3 description];
      v11 = v6;
      v7 = [NSDictionary dictionaryWithObjects:&v11 forKeys:&v10 count:1];
      sub_1000054EC(v7);
    }

    else
    {
      v8 = __stderrp;
      v9 = [v3 description];
      fprintf(v8, "Error resetting icsc repair rate-limiting: %s\n", [v9 UTF8String]);
    }
  }

  else
  {
    if (*(a1 + 40))
    {
      sub_1000054EC(&off_1000257C0);
    }

    else
    {
      puts("Successfully reset icsc repair rate-limiting.");
    }

    *(*(*(a1 + 32) + 8) + 24) = 0;
  }
}

void sub_100005FDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100005FF4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    if (*(a1 + 40) == 1)
    {
      v9 = @"error";
      v5 = [v3 description];
      v10 = v5;
      v6 = [NSDictionary dictionaryWithObjects:&v10 forKeys:&v9 count:1];
      sub_1000054EC(v6);
    }

    else
    {
      v7 = __stderrp;
      v8 = [v3 description];
      fprintf(v7, "Error rerolling: %s\n", [v8 UTF8String]);
    }
  }

  else
  {
    puts("Reroll successful.");
    *(*(*(a1 + 32) + 8) + 24) = 0;
  }
}

void sub_1000061C0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v6)
  {
    v10 = [v5 dictionaryRepresentation];
    v8 = v10;
    if (*(a1 + 32) == 1)
    {
      sub_1000054EC(v10);
LABEL_9:

      goto LABEL_10;
    }

    v9 = [v10 description];
    puts([v9 UTF8String]);
LABEL_8:

    goto LABEL_9;
  }

  if (*(a1 + 32) == 1)
  {
    v13 = @"error";
    v8 = [v6 description];
    v14 = v8;
    v9 = [NSDictionary dictionaryWithObjects:&v14 forKeys:&v13 count:1];
    sub_1000054EC(v9);
    goto LABEL_8;
  }

  v11 = __stderrp;
  v12 = [v6 description];
  fprintf(v11, "Failed to fetch account metadata: %s\n", [v12 UTF8String]);

LABEL_10:
}

void sub_100006410(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100006428(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    if (*(a1 + 40) == 1)
    {
      v9 = @"error";
      v5 = [v3 description];
      v10 = v5;
      v6 = [NSDictionary dictionaryWithObjects:&v10 forKeys:&v9 count:1];
      sub_1000054EC(v6);
    }

    else
    {
      v7 = __stderrp;
      v8 = [v3 description];
      fprintf(v7, "Failed to set machineID override: %s\n", [v8 UTF8String]);
    }
  }

  else
  {
    puts("successfully set machineID override!");
    *(*(*(a1 + 32) + 8) + 24) = 0;
  }
}

void sub_1000068FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100006914(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  v8 = *(a1 + 40);
  if (v6)
  {
    if (*(a1 + 40))
    {
      v24 = @"error";
      v9 = [v6 description];
      v25 = v9;
      v10 = [NSDictionary dictionaryWithObjects:&v25 forKeys:&v24 count:1];
      sub_1000054EC(v10);
    }

    else
    {
      v16 = __stderrp;
      v17 = [v6 description];
      fprintf(v16, "Failed to fetch account settings: %s\n", [v17 UTF8String]);
    }
  }

  else
  {
    if (*(a1 + 40))
    {
      v22[0] = @"walrus";
      v11 = [v5 walrus];
      v12 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v11 enabled]);
      v22[1] = @"webAccess";
      v23[0] = v12;
      v13 = [v5 webAccess];
      v14 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v13 enabled]);
      v23[1] = v14;
      v15 = [NSDictionary dictionaryWithObjects:v23 forKeys:v22 count:2];

      sub_1000054EC(v15);
    }

    else
    {
      puts("successfully fetched account settings!");
      v18 = [v5 walrus];
      if ([v18 enabled])
      {
        v19 = @"YES";
      }

      else
      {
        v19 = @"NO";
      }

      printf("walrus enabled? %s\n", [(__CFString *)v19 UTF8String]);

      v20 = [v5 webAccess];
      if ([v20 enabled])
      {
        v21 = @"YES";
      }

      else
      {
        v21 = @"NO";
      }

      printf("web access enabled? %s\n", [(__CFString *)v21 UTF8String]);
    }

    *(*(*(a1 + 32) + 8) + 24) = 0;
  }
}

void sub_100006D3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va1, a10);
  va_start(va, a10);
  v11 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_100006D68(uint64_t a1, void *a2)
{
  v3 = a2;
  v8 = v3;
  if (v3)
  {
    v4 = __stderrp;
    v5 = [v3 description];
    fprintf(v4, "disabling walrus failed: %s\n", [v5 UTF8String]);

    [*(a1 + 32) timeIntervalSinceNow];
    if (v6 > 0.0 && [v8 isRetryable])
    {
      *(*(*(a1 + 40) + 8) + 24) = 1;
      [v8 retryInterval];
      sleep(v7);
    }
  }

  else
  {
    puts("successfully disabled walrus");
    *(*(*(a1 + 48) + 8) + 24) = 0;
  }
}

void sub_100007000(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va1, a10);
  va_start(va, a10);
  v11 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_10000702C(uint64_t a1, void *a2)
{
  v3 = a2;
  v8 = v3;
  if (v3)
  {
    v4 = __stderrp;
    v5 = [v3 description];
    fprintf(v4, "enabling walrus failed: %s\n", [v5 UTF8String]);

    [*(a1 + 32) timeIntervalSinceNow];
    if (v6 > 0.0 && [v8 isRetryable])
    {
      *(*(*(a1 + 40) + 8) + 24) = 1;
      [v8 retryInterval];
      sleep(v7);
    }
  }

  else
  {
    puts("successfully enabled walrus");
    *(*(*(a1 + 48) + 8) + 24) = 0;
  }
}

void sub_1000072C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va1, a10);
  va_start(va, a10);
  v11 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_1000072F0(uint64_t a1, void *a2)
{
  v3 = a2;
  v8 = v3;
  if (v3)
  {
    v4 = __stderrp;
    v5 = [v3 description];
    fprintf(v4, "enabling web access failed: %s\n", [v5 UTF8String]);

    [*(a1 + 32) timeIntervalSinceNow];
    if (v6 > 0.0 && [v8 isRetryable])
    {
      *(*(*(a1 + 40) + 8) + 24) = 1;
      [v8 retryInterval];
      sleep(v7);
    }
  }

  else
  {
    puts("successfully enabled web access");
    *(*(*(a1 + 48) + 8) + 24) = 0;
  }
}

void sub_100007588(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va1, a10);
  va_start(va, a10);
  v11 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_1000075B4(uint64_t a1, void *a2)
{
  v3 = a2;
  v8 = v3;
  if (v3)
  {
    v4 = __stderrp;
    v5 = [v3 description];
    fprintf(v4, "disabling webAccess failed: %s\n", [v5 UTF8String]);

    [*(a1 + 32) timeIntervalSinceNow];
    if (v6 > 0.0 && [v8 isRetryable])
    {
      *(*(*(a1 + 40) + 8) + 24) = 1;
      [v8 retryInterval];
      sleep(v7);
    }
  }

  else
  {
    puts("successfully disabled webAccess");
    *(*(*(a1 + 48) + 8) + 24) = 0;
  }
}

void sub_10000793C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 136), 8);
  _Unwind_Resume(a1);
}

void sub_100007968(uint64_t a1, void *a2, void *a3)
{
  v13 = a2;
  v5 = a3;
  v6 = v5;
  if (v5)
  {
    v7 = __stderrp;
    v8 = [v5 description];
    fprintf(v7, "createInheritanceKeyWithClaimTokenAndWrappingKey failed: %s\n", [v8 UTF8String]);

    [*(a1 + 32) timeIntervalSinceNow];
    if (v9 > 0.0 && [v6 isRetryable])
    {
      *(*(*(a1 + 40) + 8) + 24) = 1;
      [v6 retryInterval];
      sleep(v10);
    }
  }

  else
  {
    *(*(*(a1 + 48) + 8) + 24) = 0;
    v11 = [v13 dictionary];
    v12 = v11;
    if (*(a1 + 56) == 1)
    {
      sub_1000054EC(v11);
    }

    else
    {
      sub_100007A8C("Created inheritance key with claim+wrappingkey", v11);
    }
  }
}

void sub_100007A8C(const char *a1, void *a2)
{
  v3 = a2;
  v4 = [v3 objectForKeyedSubscript:@"uuid"];
  printf("%s %s\n", a1, [v4 UTF8String]);

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        if (([v10 isEqualToString:@"uuid"] & 1) == 0)
        {
          v11 = [v10 UTF8String];
          v12 = [v5 objectForKeyedSubscript:v10];
          printf("\t%s: %s\n", v11, [v12 UTF8String]);
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }
}

void sub_100007FC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30)
{
  _Block_object_dispose(&a30, 8);
  _Block_object_dispose((v30 - 136), 8);
  _Unwind_Resume(a1);
}

void sub_100008000(uint64_t a1, void *a2, void *a3)
{
  v13 = a2;
  v5 = a3;
  v6 = v5;
  if (v5)
  {
    v7 = __stderrp;
    v8 = [v5 description];
    fprintf(v7, "recreateInheritanceKey failed: %s\n", [v8 UTF8String]);

    [*(a1 + 32) timeIntervalSinceNow];
    if (v9 > 0.0 && [v6 isRetryable])
    {
      *(*(*(a1 + 40) + 8) + 24) = 1;
      [v6 retryInterval];
      sleep(v10);
    }
  }

  else
  {
    *(*(*(a1 + 48) + 8) + 24) = 0;
    v11 = [v13 dictionary];
    v12 = v11;
    if (*(a1 + 56) == 1)
    {
      sub_1000054EC(v11);
    }

    else
    {
      sub_100007A8C("Recreated inheritance key", v11);
    }
  }
}

void sub_1000082F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100008318(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v13 = v5;
  if (v5)
  {
    v6 = __stderrp;
    v7 = [v5 description];
    fprintf(v6, "checking inheritance key failed: %s\n", [v7 UTF8String]);

    [*(a1 + 32) timeIntervalSinceNow];
    if (v8 > 0.0 && [v13 isRetryable])
    {
      *(*(*(a1 + 40) + 8) + 24) = 1;
      [v13 retryInterval];
      sleep(v9);
    }
  }

  else
  {
    v10 = "does not exist";
    if (a2)
    {
      v10 = "exists";
    }

    printf("successful check of inheritance key: %s\n", v10);
    v11 = *(*(a1 + 48) + 8);
    if (a2)
    {
      *(v11 + 24) = 0;
    }

    else
    {
      *(v11 + 24) = 1;
    }
  }

  return _objc_release_x1();
}

void sub_1000085FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_100008624(uint64_t a1, void *a2)
{
  v3 = a2;
  v8 = v3;
  if (v3)
  {
    v4 = __stderrp;
    v5 = [v3 description];
    fprintf(v4, "remove inheritance key failed: %s\n", [v5 UTF8String]);

    [*(a1 + 32) timeIntervalSinceNow];
    if (v6 > 0.0 && [v8 isRetryable])
    {
      *(*(*(a1 + 40) + 8) + 24) = 1;
      [v8 retryInterval];
      sleep(v7);
    }
  }

  else
  {
    puts("successful removal of inheritance key");
    *(*(*(a1 + 48) + 8) + 24) = 0;
  }
}

void sub_100008A20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  _Block_object_dispose(&a26, 8);
  _Block_object_dispose((v26 - 136), 8);
  _Unwind_Resume(a1);
}

void sub_100008A54(uint64_t a1, void *a2)
{
  v3 = a2;
  v8 = v3;
  if (v3)
  {
    v4 = __stderrp;
    v5 = [v3 description];
    fprintf(v4, "preflight joinWithInheritanceKey failed: %s\n", [v5 UTF8String]);

    [*(a1 + 32) timeIntervalSinceNow];
    if (v6 > 0.0 && [v8 isRetryable])
    {
      *(*(*(a1 + 40) + 8) + 24) = 1;
      [v8 retryInterval];
      sleep(v7);
    }
  }

  else
  {
    puts("successful preflight join from inheritance key");
    *(*(*(a1 + 48) + 8) + 24) = 0;
  }
}

void sub_100008E50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  _Block_object_dispose(&a26, 8);
  _Block_object_dispose((v26 - 136), 8);
  _Unwind_Resume(a1);
}

void sub_100008E84(uint64_t a1, void *a2)
{
  v3 = a2;
  v8 = v3;
  if (v3)
  {
    v4 = __stderrp;
    v5 = [v3 description];
    fprintf(v4, "joinWithInheritanceKey failed: %s\n", [v5 UTF8String]);

    [*(a1 + 32) timeIntervalSinceNow];
    if (v6 > 0.0 && [v8 isRetryable])
    {
      *(*(*(a1 + 40) + 8) + 24) = 1;
      [v8 retryInterval];
      sleep(v7);
    }
  }

  else
  {
    puts("successful join from inheritance key");
    *(*(*(a1 + 48) + 8) + 24) = 0;
  }
}

void sub_100009234(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  _Block_object_dispose(&a26, 8);
  _Block_object_dispose((v26 - 136), 8);
  _Unwind_Resume(a1);
}

void sub_100009268(uint64_t a1, void *a2)
{
  v3 = a2;
  v7 = v3;
  if (v3)
  {
    v4 = [v3 description];
    printf("storeInheritanceKey failed: %s\n", [v4 UTF8String]);

    [*(a1 + 32) timeIntervalSinceNow];
    if (v5 > 0.0 && [v7 isRetryable])
    {
      *(*(*(a1 + 40) + 8) + 24) = 1;
      [v7 retryInterval];
      sleep(v6);
    }
  }

  else
  {
    puts("successful store of inheritance key");
    *(*(*(a1 + 48) + 8) + 24) = 0;
  }
}

void sub_1000094A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_1000094C8(uint64_t a1, void *a2, void *a3)
{
  v12 = a2;
  v5 = a3;
  v6 = v5;
  if (v5)
  {
    v7 = [v5 description];
    printf("generateInheritanceKey failed: %s\n", [v7 UTF8String]);

    [*(a1 + 32) timeIntervalSinceNow];
    if (v8 > 0.0 && [v6 isRetryable])
    {
      *(*(*(a1 + 40) + 8) + 24) = 1;
      [v6 retryInterval];
      sleep(v9);
    }
  }

  else
  {
    *(*(*(a1 + 48) + 8) + 24) = 0;
    v10 = [v12 dictionary];
    v11 = v10;
    if (*(a1 + 56) == 1)
    {
      sub_1000054EC(v10);
    }

    else
    {
      sub_100007A8C("Generated inheritance key", v10);
    }
  }
}

void sub_1000097BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va1, a12);
  va_start(va, a12);
  v13 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_1000097E0(uint64_t a1, void *a2, void *a3)
{
  v13 = a2;
  v5 = a3;
  v6 = v5;
  if (v5)
  {
    v7 = __stderrp;
    v8 = [v5 description];
    fprintf(v7, "createInheritanceKey failed: %s\n", [v8 UTF8String]);

    [*(a1 + 32) timeIntervalSinceNow];
    if (v9 > 0.0 && [v6 isRetryable])
    {
      *(*(*(a1 + 40) + 8) + 24) = 1;
      [v6 retryInterval];
      sleep(v10);
    }
  }

  else
  {
    *(*(*(a1 + 48) + 8) + 24) = 0;
    v11 = [v13 dictionary];
    v12 = v11;
    if (*(a1 + 56) == 1)
    {
      sub_1000054EC(v11);
    }

    else
    {
      sub_100007A8C("Created inheritance key", v11);
    }
  }
}

void sub_100009A0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100009A24(uint64_t a1, int a2, void *a3)
{
  if (a3)
  {
    v3 = __stderrp;
    v9 = [a3 description];
    v4 = v9;
    fprintf(v3, "preflight join with recovery key failed: %s\n", [v9 UTF8String]);
  }

  else
  {
    v7 = [*(a1 + 32) UTF8String];
    v8 = "failure";
    if (a2)
    {
      v8 = "success";
    }

    printf("preflight joined using recovery key %s, in octagon: %s\n", v7, v8);
    if (a2)
    {
      *(*(*(a1 + 40) + 8) + 24) = 0;
    }
  }
}

void sub_100009CE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100009CFC(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = __stderrp;
    v5 = [a2 description];
    v3 = v5;
    fprintf(v2, "joining with recovery key failed: %s\n", [v5 UTF8String]);
  }

  else
  {
    printf("successfully joined using recovery key %s, in octagon\n", [*(a1 + 32) UTF8String]);
    *(*(*(a1 + 40) + 8) + 24) = 0;
  }
}

void sub_100009F20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100009F38(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = __stderrp;
    v5 = [a2 description];
    v3 = v5;
    fprintf(v2, "set recovery key failed: %s\n", [v5 UTF8String]);
  }

  else
  {
    printf("successfully registered recovery key %s, in octagon\n", [*(a1 + 32) UTF8String]);
    *(*(*(a1 + 40) + 8) + 24) = 0;
  }
}

void sub_10000A0C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10000A0DC(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = __stderrp;
    v5 = [a2 description];
    v3 = v5;
    fprintf(v2, "remove recovery key failed: %s\n", [v5 UTF8String]);
  }

  else
  {
    puts("successful removal of recovery key");
    *(*(*(a1 + 32) + 8) + 24) = 0;
  }
}

void sub_10000A34C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10000A374(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v13 = v5;
  if (v5)
  {
    v6 = __stderrp;
    v7 = [v5 description];
    fprintf(v6, "checking custodian recovery key failed: %s\n", [v7 UTF8String]);

    [*(a1 + 32) timeIntervalSinceNow];
    if (v8 > 0.0 && [v13 isRetryable])
    {
      *(*(*(a1 + 40) + 8) + 24) = 1;
      [v13 retryInterval];
      sleep(v9);
    }
  }

  else
  {
    v10 = "does not exist";
    if (a2)
    {
      v10 = "exists";
    }

    printf("successful check of custodian recovery key: %s\n", v10);
    v11 = *(*(a1 + 48) + 8);
    if (a2)
    {
      *(v11 + 24) = 0;
    }

    else
    {
      *(v11 + 24) = 1;
    }
  }

  return _objc_release_x1();
}

void sub_10000A658(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_10000A680(uint64_t a1, void *a2)
{
  v3 = a2;
  v8 = v3;
  if (v3)
  {
    v4 = __stderrp;
    v5 = [v3 description];
    fprintf(v4, "remove custodian recovery key failed: %s\n", [v5 UTF8String]);

    [*(a1 + 32) timeIntervalSinceNow];
    if (v6 > 0.0 && [v8 isRetryable])
    {
      *(*(*(a1 + 40) + 8) + 24) = 1;
      [v8 retryInterval];
      sleep(v7);
    }
  }

  else
  {
    puts("successful removal of custodian recovery key");
    *(*(*(a1 + 48) + 8) + 24) = 0;
  }
}

void sub_10000AA7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  _Block_object_dispose(&a26, 8);
  _Block_object_dispose((v26 - 136), 8);
  _Unwind_Resume(a1);
}

void sub_10000AAB0(uint64_t a1, void *a2)
{
  v3 = a2;
  v8 = v3;
  if (v3)
  {
    v4 = __stderrp;
    v5 = [v3 description];
    fprintf(v4, "preflightJoinWithCustodianRecoveryKey failed: %s\n", [v5 UTF8String]);

    [*(a1 + 32) timeIntervalSinceNow];
    if (v6 > 0.0 && [v8 isRetryable])
    {
      *(*(*(a1 + 40) + 8) + 24) = 1;
      [v8 retryInterval];
      sleep(v7);
    }
  }

  else
  {
    puts("successful preflight join from custodian recovery key");
    *(*(*(a1 + 48) + 8) + 24) = 0;
  }
}

void sub_10000AEAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  _Block_object_dispose(&a26, 8);
  _Block_object_dispose((v26 - 136), 8);
  _Unwind_Resume(a1);
}

void sub_10000AEE0(uint64_t a1, void *a2)
{
  v3 = a2;
  v8 = v3;
  if (v3)
  {
    v4 = __stderrp;
    v5 = [v3 description];
    fprintf(v4, "joinWithCustodianRecoveryKey failed: %s\n", [v5 UTF8String]);

    [*(a1 + 32) timeIntervalSinceNow];
    if (v6 > 0.0 && [v8 isRetryable])
    {
      *(*(*(a1 + 40) + 8) + 24) = 1;
      [v8 retryInterval];
      sleep(v7);
    }
  }

  else
  {
    puts("successful join from custodian recovery key");
    *(*(*(a1 + 48) + 8) + 24) = 0;
  }
}

void sub_10000B1A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va1, a12);
  va_start(va, a12);
  v13 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_10000B1C4(uint64_t a1, void *a2, void *a3)
{
  v13 = a2;
  v5 = a3;
  v6 = v5;
  if (v5)
  {
    v7 = __stderrp;
    v8 = [v5 description];
    fprintf(v7, "createCustodianRecoveryKey failed: %s\n", [v8 UTF8String]);

    [*(a1 + 32) timeIntervalSinceNow];
    if (v9 > 0.0 && [v6 isRetryable])
    {
      *(*(*(a1 + 40) + 8) + 24) = 1;
      [v6 retryInterval];
      sleep(v10);
    }
  }

  else
  {
    *(*(*(a1 + 48) + 8) + 24) = 0;
    v11 = [v13 dictionary];
    v12 = v11;
    if (*(a1 + 56) == 1)
    {
      sub_1000054EC(v11);
    }

    else
    {
      sub_100007A8C("Created custodian key", v11);
    }
  }
}

void sub_10000B47C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

intptr_t sub_10000B494(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = __stderrp;
    v4 = [a2 description];
    fprintf(v3, "Error resetting account cdp content: %s\n", [v4 UTF8String]);
  }

  else
  {
    puts("Succeeded resetting account cdp content");
    *(*(*(a1 + 40) + 8) + 24) = 0;
  }

  v5 = *(a1 + 32);

  return dispatch_semaphore_signal(v5);
}

void sub_10000B60C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10000B624(uint64_t a1, int a2, void *a3)
{
  if (a3)
  {
    v3 = __stderrp;
    v7 = [a3 description];
    v4 = v7;
    fprintf(v3, "Error setting user controllable views: %s\n", [v7 UTF8String]);
  }

  else
  {
    if (a2)
    {
      v6 = @"enabled";
    }

    else
    {
      v6 = @"paused";
    }

    printf("User controllable views are currently %s.\n", [(__CFString *)v6 UTF8String]);
    *(*(*(a1 + 32) + 8) + 24) = 0;
  }
}

void sub_10000B7CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10000B7E4(uint64_t a1, int a2, void *a3)
{
  if (a3)
  {
    v3 = __stderrp;
    v7 = [a3 description];
    v4 = v7;
    fprintf(v3, "Error setting user controllable views: %s\n", [v7 UTF8String]);
  }

  else
  {
    if (a2)
    {
      v6 = @"enabled";
    }

    else
    {
      v6 = @"paused";
    }

    printf("User controllable views are now %s.\n", [(__CFString *)v6 UTF8String]);
    *(*(*(a1 + 32) + 8) + 24) = 0;
  }
}

void sub_10000B9B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10000B9CC(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = __stderrp;
    v5 = [a2 description];
    v3 = v5;
    fprintf(v2, "Error trigger TTR: %s\n", [v5 UTF8String]);
  }

  else
  {
    puts("Trigger TTR completed.");
    *(*(*(a1 + 32) + 8) + 24) = 0;
  }
}

void sub_10000BB48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10000BB60(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = __stderrp;
    v5 = [a2 description];
    v3 = v5;
    fprintf(v2, "Error refetching CKKS policy: %s\n", [v5 UTF8String]);
  }

  else
  {
    puts("CKKS refetch completed.");
    *(*(*(a1 + 32) + 8) + 24) = 0;
  }
}

void sub_10000BCE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10000BCFC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  v5 = *(a1 + 40);
  if (v3)
  {
    if (*(a1 + 40))
    {
      v10 = @"error";
      v6 = [v3 description];
      v11 = v6;
      v7 = [NSDictionary dictionaryWithObjects:&v11 forKeys:&v10 count:1];
      sub_1000054EC(v7);
    }

    else
    {
      v8 = __stderrp;
      v9 = [v3 description];
      fprintf(v8, "Error simulating push: %s\n", [v9 UTF8String]);
    }
  }

  else
  {
    if (*(a1 + 40))
    {
      sub_1000054EC(&__NSDictionary0__struct);
    }

    else
    {
      puts("Simulated push sent.");
    }

    *(*(*(a1 + 32) + 8) + 24) = 0;
  }
}

void sub_10000BF0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10000BF24(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  v5 = *(a1 + 40);
  if (v3)
  {
    if (*(a1 + 40))
    {
      v10 = @"error";
      v6 = [v3 description];
      v11 = v6;
      v7 = [NSDictionary dictionaryWithObjects:&v11 forKeys:&v10 count:1];
      sub_1000054EC(v7);
    }

    else
    {
      v8 = __stderrp;
      v9 = [v3 description];
      fprintf(v8, "Error simulating push: %s\n", [v9 UTF8String]);
    }
  }

  else
  {
    if (*(a1 + 40))
    {
      sub_1000054EC(&__NSDictionary0__struct);
    }

    else
    {
      puts("Simulated push sent.");
    }

    *(*(*(a1 + 32) + 8) + 24) = 0;
  }
}

void sub_10000C138(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10000C150(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    if (*(a1 + 40) == 1)
    {
      v15 = @"error";
      v8 = [v6 description];
      v16 = v8;
      v9 = [NSDictionary dictionaryWithObjects:&v16 forKeys:&v15 count:1];
      sub_1000054EC(v9);
    }

    else
    {
      v12 = __stderrp;
      v13 = [v6 description];
      fprintf(v12, "Error checking escrow check: %s\n", [v13 UTF8String]);
    }
  }

  else
  {
    if (v5)
    {
      v10 = [v5 dictionaryRepresentation];
      v11 = v10;
      if (*(a1 + 40) == 1)
      {
        sub_1000054EC(v10);
      }

      else
      {
        puts("Checking Escrow Check completed.");
        v14 = [v11 description];
        puts([v14 UTF8String]);
      }
    }

    *(*(*(a1 + 32) + 8) + 24) = 0;
  }
}

void sub_10000C3F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10000C408(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    if (*(a1 + 40) == 1)
    {
      v15 = @"error";
      v8 = [v6 description];
      v16 = v8;
      v9 = [NSDictionary dictionaryWithObjects:&v16 forKeys:&v15 count:1];
      sub_1000054EC(v9);
    }

    else
    {
      v12 = __stderrp;
      v13 = [v6 description];
      fprintf(v12, "Error checking health: %s\n", [v13 UTF8String]);
    }
  }

  else
  {
    if (v5)
    {
      v10 = [v5 dictionaryRepresentation];
      v11 = v10;
      if (*(a1 + 40) == 1)
      {
        sub_1000054EC(v10);
      }

      else
      {
        puts("Checking Octagon Health completed.");
        v14 = [v11 description];
        puts([v14 UTF8String]);
      }
    }

    *(*(*(a1 + 32) + 8) + 24) = 0;
  }
}

void sub_10000C834(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v13 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v11 - 160), 8);
  _Block_object_dispose((v11 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_10000C874(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = secLogObjForScope();
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
  if (v9)
  {
    if (v11)
    {
      v21 = 138412290;
      v22 = v9;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "findOptimalBottleIDsWithContextData errored: %@\n", &v21, 0xCu);
    }
  }

  else
  {
    if (v11)
    {
      v21 = 138412546;
      v22 = v7;
      v23 = 2112;
      v24 = v8;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "findOptimalBottleIDsWithContextData succeeded: %@, %@\n", &v21, 0x16u);
    }

    *(*(*(a1 + 40) + 8) + 24) = 0;
  }

  v12 = *(*(a1 + 48) + 8);
  v13 = *(v12 + 40);
  *(v12 + 40) = v9;
  v14 = v9;

  v15 = *(*(a1 + 56) + 8);
  v16 = *(v15 + 40);
  *(v15 + 40) = v7;
  v17 = v7;

  v18 = *(*(a1 + 64) + 8);
  v19 = *(v18 + 40);
  *(v18 + 40) = v8;
  v20 = v8;

  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_10000CC04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

intptr_t sub_10000CC1C(uint64_t a1, void *a2)
{
  if (a2)
  {
    *(*(*(a1 + 48) + 8) + 24) = 1;
    v3 = __stderrp;
    v4 = [a2 description];
    fprintf(v3, "Error recovering: %s\n", [v4 UTF8String]);
  }

  else
  {
    v5 = [*(a1 + 32) description];
    printf("Succeeded recovering bottled peer %s\n", [v5 UTF8String]);

    *(*(*(a1 + 48) + 8) + 24) = 0;
  }

  v6 = *(a1 + 40);

  return dispatch_semaphore_signal(v6);
}

void sub_10000CF08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10000CF28(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v8 = a3;
  v9 = v8;
  if (v8)
  {
    if (*(a1 + 56) == 1)
    {
      v85 = @"error";
      v10 = [v8 description];
      v86 = v10;
      v11 = [NSDictionary dictionaryWithObjects:&v86 forKeys:&v85 count:1];
      sub_1000054EC(v11);

      goto LABEL_63;
    }

    v18 = __stderrp;
    v15 = [v8 description];
    fprintf(v18, "Error fetching status: %s\n", [v15 UTF8String]);
LABEL_62:

    goto LABEL_63;
  }

  if (v7)
  {
    v12 = *(a1 + 32);
    v80 = 0;
    v13 = [v12 dictWithError:&v80];
    v14 = v80;
    v15 = v14;
    if (v14)
    {
      if (*(a1 + 56) != 1)
      {
        v20 = __stderrp;
        v16 = [v14 description];
        fprintf(v20, "Error fetching status: %s\n", [v16 UTF8String]);
        goto LABEL_61;
      }

      v83 = @"error";
      v16 = [v14 description];
      v84 = v16;
      v17 = [NSDictionary dictionaryWithObjects:&v84 forKeys:&v83 count:1];
    }

    else
    {
      *(*(*(a1 + 48) + 8) + 24) = 0;
      if (*(a1 + 56) != 1)
      {
        v70 = a1;
        v21 = [v7 objectForKeyedSubscript:@"containerName"];
        v22 = [v21 UTF8String];
        v23 = [v7 objectForKeyedSubscript:@"contextID"];
        printf("Status for %s,%s:\n", v22, [v23 UTF8String]);

        v24 = [v7 objectForKeyedSubscript:@"activeAccount"];
        printf("Active account: %s\n", [v24 UTF8String]);

        putchar(10);
        v25 = [v7 objectForKeyedSubscript:@"state"];
        v26 = [v25 description];
        printf("State: %s\n", [v26 UTF8String]);

        v27 = [v7 objectForKeyedSubscript:@"stateFlags"];
        v28 = [v27 count];
        if (v28)
        {
          v3 = [v7 objectForKeyedSubscript:@"stateFlags"];
          v4 = [v3 description];
          v29 = [v4 UTF8String];
        }

        else
        {
          v29 = "none";
        }

        v30 = [v7 objectForKeyedSubscript:@"statePendingFlags"];
        if ([v30 count])
        {
          v31 = [v7 objectForKeyedSubscript:@"statePendingFlags"];
          v32 = [v31 description];
          printf("Flags: %s; Flags Pending: %s\n\n", v29, [v32 UTF8String]);
        }

        else
        {
          printf("Flags: %s; Flags Pending: %s\n\n", v29, "none");
        }

        if (v28)
        {
        }

        v16 = +[NSMutableDictionary dictionary];
        v33 = +[NSMutableArray array];
        v76 = 0u;
        v77 = 0u;
        v78 = 0u;
        v79 = 0u;
        v71 = v13;
        v34 = [v13 objectForKeyedSubscript:@"peers"];
        v35 = [v34 countByEnumeratingWithState:&v76 objects:v82 count:16];
        if (v35)
        {
          v36 = v35;
          v37 = *v77;
          do
          {
            for (i = 0; i != v36; i = i + 1)
            {
              if (*v77 != v37)
              {
                objc_enumerationMutation(v34);
              }

              v39 = *(*(&v76 + 1) + 8 * i);
              v40 = [v39 objectForKeyedSubscript:@"peerID"];
              if (v40)
              {
                [v16 setObject:v39 forKeyedSubscript:v40];
                [v33 addObject:v40];
              }
            }

            v36 = [v34 countByEnumeratingWithState:&v76 objects:v82 count:16];
          }

          while (v36);
        }

        v68 = v7;

        v41 = +[NSMutableDictionary dictionary];
        v72 = 0u;
        v73 = 0u;
        v74 = 0u;
        v75 = 0u;
        v42 = [v71 objectForKeyedSubscript:@"custodian_recovery_keys"];
        v43 = [v42 countByEnumeratingWithState:&v72 objects:v81 count:16];
        if (v43)
        {
          v44 = v43;
          v45 = *v73;
          do
          {
            for (j = 0; j != v44; j = j + 1)
            {
              if (*v73 != v45)
              {
                objc_enumerationMutation(v42);
              }

              v47 = *(*(&v72 + 1) + 8 * j);
              v48 = [v47 objectForKeyedSubscript:@"peerID"];
              if (v48)
              {
                [v41 setObject:v47 forKeyedSubscript:v48];
              }
            }

            v44 = [v42 countByEnumeratingWithState:&v72 objects:v81 count:16];
          }

          while (v44);
        }

        v13 = v71;
        v49 = [v71 objectForKeyedSubscript:@"self"];
        v50 = [v49 objectForKeyedSubscript:@"peerID"];
        v51 = [v49 objectForKeyedSubscript:@"stableInfo"];
        v52 = [v49 objectForKeyedSubscript:@"dynamicInfo"];
        v69 = v52;
        if (v50)
        {
          v53 = v52;
          v67 = [v33 mutableCopy];
          [*(v70 + 40) printPeer:v49 prefix:@"    Self: "];
          putchar(10);
          v64 = v49;
          [v16 setObject:v49 forKeyedSubscript:v50];
          v54 = [v53 objectForKeyedSubscript:@"included"];
          puts("Trusted peers (by me):");
          v55 = v54;
          v9 = 0;
          v7 = v68;
          v66 = v55;
          if (v55 && [v55 count])
          {
            [*(v70 + 40) printPeers:v66 egoPeerID:v50 informationOnPeers:v16 informationOnCRKs:v41];
            v56 = v67;
            [v67 removeObjectsInArray:v66];
          }

          else
          {
            puts("    No trusted peers.");
            v56 = v67;
          }

          putchar(10);
          v57 = [v69 objectForKeyedSubscript:@"excluded"];
          puts("Excluded peers (by me):");
          v63 = v57;
          if (v57 && [v57 count])
          {
            [*(v70 + 40) printPeers:v57 egoPeerID:v50 informationOnPeers:v16 informationOnCRKs:v41];
            [v56 removeObjectsInArray:v57];
          }

          else
          {
            puts("    No excluded peers.");
          }

          putchar(10);
          puts("Other peers (included/excluded by others):");
          v49 = v64;
          v65 = v50;
          if ([v56 count])
          {
            [*(v70 + 40) printPeers:v56 egoPeerID:v50 informationOnPeers:v16 informationOnCRKs:v41];
          }

          else
          {
            puts("    No other peers.");
          }

          putchar(10);
          v58 = [v51 objectForKeyedSubscript:@"recovery_encryption_public_key"];
          if (v58)
          {
            v59 = v58;
            v60 = [v51 objectForKeyedSubscript:@"recovery_signing_public_key"];

            if (v60)
            {
              puts("Recovery Key:");
              v61 = [v51 objectForKeyedSubscript:@"recovery_signing_public_key"];
              v62 = [v51 objectForKeyedSubscript:@"recovery_encryption_public_key"];
              printf("    Encryption public key: %s\n", [v62 UTF8String]);
              printf("    Signing public key: %s\n", [v61 UTF8String]);
              putchar(10);
            }
          }

          v50 = v65;
        }

        else
        {
          puts("No current identity for this device.\n");
          v9 = 0;
          v7 = v68;
          if ([v33 count])
          {
            puts("All peers currently in this account:");
            [*(v70 + 40) printPeers:v33 egoPeerID:0 informationOnPeers:v16 informationOnCRKs:v41];
          }

          else
          {
            puts("No peers currently exist for this account.");
          }
        }

        putchar(10);

        v15 = 0;
        goto LABEL_61;
      }

      v16 = [NSMutableDictionary dictionaryWithDictionary:v7];
      [v16 setObject:v13 forKeyedSubscript:@"contextDump"];
      v17 = [OTControlCLI annotateStatus:v16];
    }

    v19 = v17;
    sub_1000054EC(v17);

LABEL_61:
    goto LABEL_62;
  }

  if (*(a1 + 56) == 1)
  {
    sub_1000054EC(&off_100025798);
  }

  else
  {
    fwrite("Fetching status had no error and gave no result!\n", 0x31uLL, 1uLL, __stderrp);
  }

LABEL_63:
}

void sub_10000F314(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34)
{
  _Block_object_dispose(&a28, 8);
  _Block_object_dispose(&a34, 8);
  _Block_object_dispose((v34 - 168), 8);
  _Block_object_dispose((v34 - 136), 8);
  _Unwind_Resume(a1);
}

void sub_10000F358(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

void sub_10000F3E0(uint64_t a1, void *a2)
{
  v3 = a2;
  v8 = v3;
  if (v3)
  {
    v4 = __stderrp;
    v5 = [v3 description];
    fprintf(v4, "Error resetting: %s\n", [v5 UTF8String]);

    [*(a1 + 32) timeIntervalSinceNow];
    if (v6 > 0.0 && [v8 isRetryable])
    {
      *(*(*(a1 + 40) + 8) + 24) = 1;
      [v8 retryInterval];
      sleep(v7);
    }
  }

  else
  {
    puts("reset and establish:");
    *(*(*(a1 + 48) + 8) + 24) = 0;
  }
}

void sub_10000F674(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10000F690(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = __stderrp;
    v5 = [a2 description];
    v3 = v5;
    fprintf(v2, "Error departing clique: %s\n", [v5 UTF8String]);
  }

  else
  {
    puts("Departing clique completed.");
    *(*(*(a1 + 32) + 8) + 24) = 0;
  }
}

void sub_10000F80C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10000F824(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = __stderrp;
    v5 = [a2 description];
    v3 = v5;
    fprintf(v2, "Error signing out: %s\n", [v5 UTF8String]);
  }

  else
  {
    puts("Sign out complete.");
    *(*(*(a1 + 32) + 8) + 24) = 0;
  }
}

void sub_10000F9A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10000F9B8(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = __stderrp;
    v5 = [a2 description];
    v3 = v5;
    fprintf(v2, "Error signing in: %s\n", [v5 UTF8String]);
  }

  else
  {
    puts("Sign in complete.");
    *(*(*(a1 + 32) + 8) + 24) = 0;
  }
}

void sub_10000FB34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10000FB4C(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = __stderrp;
    v5 = [a2 description];
    v3 = v5;
    fprintf(v2, "Error starting state machine: %s\n", [v5 UTF8String]);
  }

  else
  {
    puts("state machine started.");
    *(*(*(a1 + 32) + 8) + 24) = 0;
  }
}

void sub_10001023C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100010258(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100010270(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = [a3 userInfo];
  obj = [v4 objectForKeyedSubscript:@"CKRetryAfter"];

  v5 = obj;
  if (obj)
  {
    v6 = *(*(a1 + 32) + 8);
    if (*(v6 + 40))
    {
      [obj doubleValue];
      v8 = v7;
      [*(*(*(a1 + 32) + 8) + 40) doubleValue];
      v5 = obj;
      if (v8 >= v9)
      {
        goto LABEL_6;
      }

      v6 = *(*(a1 + 32) + 8);
    }

    objc_storeStrong((v6 + 40), obj);
    v5 = obj;
  }

LABEL_6:
}